uint64_t sub_100044448()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10004457C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10004457C()
{
  if (qword_100080788 != -1)
  {
    swift_once();
  }

  v1 = sub_100067318();
  sub_1000026A8(v1, qword_100085CA0);
  swift_errorRetain();
  v2 = sub_1000672F8();
  v3 = sub_100067DE8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "results() Failed to get entities: %{public}@", v4, 0xCu);
    sub_1000096A0(v5, &qword_100080CA0);
  }

  else
  {
  }

  type metadata accessor for SecurityIntentAccessoryAppEntity();
  sub_100049598(&qword_100081750, type metadata accessor for SecurityIntentAccessoryAppEntity);
  sub_100066D08();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100044778(uint64_t a1)
{
  v1[2] = a1;
  sub_1000024F4(&qword_100081860);
  v1[3] = swift_task_alloc();
  sub_1000024F4(&qword_100081648);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v2 = sub_100066FE8();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000448B4, 0, 0);
}

uint64_t sub_1000448B4()
{
  v0[9] = sub_100067048();
  v0[10] = sub_1000670E8();
  v0[11] = sub_1000670D8();
  v0[12] = sub_100049598(&qword_100081658, &type metadata accessor for WidgetActor);
  v2 = sub_100067CF8();

  return _swift_task_switch(sub_10004498C, v2, v1);
}

uint64_t sub_10004498C()
{

  *(v0 + 104) = sub_100067038();

  return _swift_task_switch(sub_100044A00, 0, 0);
}

uint64_t sub_100044A00()
{
  v1 = v0[5];
  v2 = sub_100066F88();
  v0[14] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 56);
  v0[15] = v4;
  v0[16] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v1, 1, 1, v2);
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_100044AF4;
  v6 = v0[8];
  v7 = v0[5];

  return WidgetDataModel.home(_:)(v6, v7);
}

uint64_t sub_100044AF4()
{
  v2 = *(*v1 + 40);
  *(*v1 + 144) = v0;

  sub_1000096A0(v2, &qword_100081648);

  if (v0)
  {
    v3 = sub_100045190;
  }

  else
  {
    v3 = sub_100044C58;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100044C58()
{
  *(v0 + 152) = sub_1000670D8();
  v2 = sub_100067CF8();

  return _swift_task_switch(sub_100044CEC, v2, v1);
}

uint64_t sub_100044CEC()
{

  *(v0 + 160) = sub_100067038();

  return _swift_task_switch(sub_100044D60, 0, 0);
}

uint64_t sub_100044D60()
{
  v1 = v0[15];
  v2 = v0[14];
  v3 = v0[4];
  sub_100066FC8();
  v1(v3, 0, 1, v2);
  if (qword_100080808 != -1)
  {
    swift_once();
  }

  v4 = qword_100085E20;
  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = sub_100044E78;
  v6 = v0[3];
  v7 = v0[4];

  return sub_100040AF0(v6, v7, 0, 0xE000000000000000, v4);
}

uint64_t sub_100044E78(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  *(*v1 + 176) = a1;

  sub_1000096A0(v2, &qword_100081648);
  sub_1000096A0(v3, &qword_100081860);

  return _swift_task_switch(sub_100044FF8, 0, 0);
}

uint64_t sub_100044FF8()
{
  v1 = v0[22];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  if (*(v1 + 16))
  {
    v5 = v0[2];
    v6 = type metadata accessor for SecurityIntentAccessoryAppEntity();
    v7 = *(v6 - 8);
    sub_10001826C(v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v5);

    (*(v3 + 8))(v2, v4);
    v8 = 0;
  }

  else
  {
    (*(v3 + 8))(v0[8], v0[6]);

    v6 = type metadata accessor for SecurityIntentAccessoryAppEntity();
    v7 = *(v6 - 8);
    v8 = 1;
  }

  (*(v7 + 56))(v0[2], v8, 1, v6);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100045190()
{
  if (qword_100080788 != -1)
  {
    swift_once();
  }

  v1 = sub_100067318();
  sub_1000026A8(v1, qword_100085CA0);
  swift_errorRetain();
  v2 = sub_1000672F8();
  v3 = sub_100067DE8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "defaultResult() Failed to get current home: %{public}@", v4, 0xCu);
    sub_1000096A0(v5, &qword_100080CA0);
  }

  else
  {
  }

  v7 = type metadata accessor for SecurityIntentAccessoryAppEntity();
  (*(*(v7 - 8) + 56))(*(v0 + 16), 1, 1, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10004539C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100004474;

  return sub_1000426E4(a1, a2, a3);
}

unint64_t sub_100045450()
{
  result = qword_100081778;
  if (!qword_100081778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081778);
  }

  return result;
}

unint64_t sub_1000454A8()
{
  result = qword_100081780;
  if (!qword_100081780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081780);
  }

  return result;
}

uint64_t sub_100045544(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10003D560;

  return sub_1000477C4(a1);
}

uint64_t sub_1000455EC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100005B50;

  return sub_1000443A4(a1);
}

unint64_t sub_100045688()
{
  result = qword_100081788;
  if (!qword_100081788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081788);
  }

  return result;
}

uint64_t sub_100045720(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100005B50;

  return sub_100044778(a1);
}

uint64_t sub_1000457DC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100066F88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10004589C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100066F88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100045940()
{
  sub_1000459DC();
  if (v0 <= 0x3F)
  {
    sub_100066F88();
    if (v1 <= 0x3F)
    {
      sub_100045B24();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000459DC()
{
  if (!qword_100081808)
  {
    sub_10000253C(&qword_100081810);
    sub_100045A4C();
    v0 = sub_100066CA8();
    if (!v1)
    {
      atomic_store(v0, &qword_100081808);
    }
  }
}

unint64_t sub_100045A4C()
{
  result = qword_100081818;
  if (!qword_100081818)
  {
    sub_10000253C(&qword_100081810);
    sub_100045AD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081818);
  }

  return result;
}

unint64_t sub_100045AD0()
{
  result = qword_100081820;
  if (!qword_100081820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081820);
  }

  return result;
}

unint64_t sub_100045B24()
{
  result = qword_100081828;
  if (!qword_100081828)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100081828);
  }

  return result;
}

unint64_t sub_100045B88(uint64_t a1)
{
  v2 = sub_1000681F8();

  return sub_100045BCC(a1, v2);
}

unint64_t sub_100045BCC(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100045C38(unsigned __int8 a1)
{
  sub_100068208();
  sub_100068218(a1);
  v2 = sub_100068238();

  return sub_100046AF0(a1, v2);
}

unint64_t sub_100045CA4(uint64_t a1)
{
  sub_1000670C8();
  sub_100049598(&qword_100080AE8, &type metadata accessor for ServiceKind);
  v2 = sub_100067B08();
  return sub_100046B60(a1, v2, &type metadata accessor for ServiceKind, &qword_100080AF0, &type metadata accessor for ServiceKind, &protocol conformance descriptor for ServiceKind);
}

unint64_t sub_100045D78(uint64_t a1)
{
  sub_100066F88();
  sub_100049598(&qword_100080B20, &type metadata accessor for UUID);
  v2 = sub_100067B08();
  return sub_100046B60(a1, v2, &type metadata accessor for UUID, &qword_100080B28, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_100045E4C(uint64_t a1)
{
  sub_100066FE8();
  sub_100049598(&qword_100081898, &type metadata accessor for StaticHome);
  v2 = sub_100067B08();
  return sub_100046B60(a1, v2, &type metadata accessor for StaticHome, &qword_1000818A0, &type metadata accessor for StaticHome, &protocol conformance descriptor for StaticHome);
}

uint64_t sub_100045F20(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000024F4(&qword_1000818B8);
  result = sub_1000680E8();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_100068208();
      sub_100068218(v20);
      result = sub_100068238();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1000461A0(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_100066FE8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1000024F4(&qword_100081890);
  v39 = a2;
  result = sub_1000680E8();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_100049598(&qword_100081898, &type metadata accessor for StaticHome);
      result = sub_100067B08();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_10004657C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1000670C8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1000024F4(&qword_1000818C0);
  v40 = a2;
  result = sub_1000680E8();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_100049598(&qword_100080AE8, &type metadata accessor for ServiceKind);
      result = sub_100067B08();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

unint64_t sub_10004693C(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_100046980(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_100066FE8();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_100046A38(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1000670C8();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_100046AF0(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100046B60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_100049598(v23, v24);
      v19 = sub_100067B28();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

void *sub_100046D00()
{
  v1 = v0;
  sub_1000024F4(&qword_1000818B8);
  v2 = *v0;
  v3 = sub_1000680D8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

char *sub_100046E4C()
{
  v1 = v0;
  v33 = sub_100066FE8();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000024F4(&qword_100081890);
  v3 = *v0;
  v4 = sub_1000680D8();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
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

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_1000470CC()
{
  v1 = v0;
  v31 = sub_1000670C8();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000024F4(&qword_1000818C0);
  v3 = *v0;
  v4 = sub_1000680D8();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        v13 = v34;
      }

      while (v34);
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

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_10004733C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_100066FE8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100045E4C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_100046E4C();
      goto LABEL_7;
    }

    sub_1000461A0(v17, a3 & 1);
    v22 = sub_100045E4C(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_100046980(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_100068198();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

unint64_t sub_100047508(uint64_t a1)
{
  v2 = sub_1000024F4(&qword_100081870);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000024F4(&qword_100081878);
    v7 = sub_1000680F8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_1000095D4(v9, v5, &qword_100081870);
      v11 = *v5;
      result = sub_100045B88(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = sub_100067258();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000476E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100047748(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100047760(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecurityIntentAccessoryAppEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000477C4(uint64_t a1)
{
  v1[21] = a1;
  v2 = sub_1000670C8();
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();
  v3 = sub_100067198();
  v1[25] = v3;
  v1[26] = *(v3 - 8);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v4 = sub_100067218();
  v1[29] = v4;
  v1[30] = *(v4 - 8);
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  sub_100066E58();
  v1[33] = swift_task_alloc();
  v5 = type metadata accessor for SecurityIntentAccessoryAppEntity();
  v1[34] = v5;
  v1[35] = *(v5 - 8);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  sub_1000024F4(&qword_100081648);
  v1[40] = swift_task_alloc();
  sub_1000024F4(&qword_1000818A8);
  v1[41] = swift_task_alloc();
  v6 = sub_100067158();
  v1[42] = v6;
  v1[43] = *(v6 - 8);
  v1[44] = swift_task_alloc();
  v7 = sub_100066FE8();
  v1[45] = v7;
  v1[46] = *(v7 - 8);
  v1[47] = swift_task_alloc();

  return _swift_task_switch(sub_100047B28, 0, 0);
}

uint64_t sub_100047B28()
{
  v13 = v0;
  if (qword_100080788 != -1)
  {
    swift_once();
  }

  v1 = sub_100067318();
  v0[48] = sub_1000026A8(v1, qword_100085CA0);

  v2 = sub_1000672F8();
  v3 = sub_100067E08();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    sub_100066F88();
    v6 = sub_100067CB8();
    v8 = sub_10000D4F0(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "entities(for:) request for IDs: %s", v4, 0xCu);
    sub_1000026F0(v5);
  }

  v0[49] = sub_100067048();
  v0[50] = sub_1000670E8();
  v0[51] = sub_1000670D8();
  v0[52] = sub_100049598(&qword_100081658, &type metadata accessor for WidgetActor);
  v10 = sub_100067CF8();

  return _swift_task_switch(sub_100047D4C, v10, v9);
}

uint64_t sub_100047D4C()
{

  *(v0 + 424) = sub_100067038();
  v1 = swift_task_alloc();
  *(v0 + 432) = v1;
  *v1 = v0;
  v1[1] = sub_100047DF4;

  return WidgetDataModel.orderedHomes.getter();
}

uint64_t sub_100047DF4(uint64_t a1)
{
  *(*v2 + 440) = a1;

  if (v1)
  {

    v3 = sub_100048F18;
  }

  else
  {
    v3 = sub_100047F1C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100047F1C()
{
  v1 = *(v0 + 440);

  *(v0 + 152) = _swiftEmptyArrayStorage;
  v4 = *(v1 + 16);
  *(v0 + 448) = v4;
  v5 = *(v0 + 440);
  if (v4)
  {
    v6 = *(v0 + 368);
    v7 = *(v6 + 80);
    *(v0 + 496) = v7;
    *(v0 + 456) = 0;
    if (*(v5 + 16))
    {
      (*(v6 + 16))(*(v0 + 376), v5 + ((v7 + 32) & ~v7), *(v0 + 360));
      *(v0 + 464) = sub_1000670D8();
      v8 = sub_100067CF8();
      v10 = v9;
      v5 = sub_1000483B8;
      v2 = v8;
      v3 = v10;

      return _swift_task_switch(v5, v2, v3);
    }

LABEL_27:
    __break(1u);
    return _swift_task_switch(v5, v2, v3);
  }

  v26 = _swiftEmptyArrayStorage[2];
  if (v26 != 0.0)
  {
    v11 = 0;
    v25 = *(v0 + 280);
    v27 = _swiftEmptyArrayStorage;
    v24 = *(v0 + 168);
    while (v11 < *&_swiftEmptyArrayStorage[2])
    {
      v12 = v11 + 1;
      v28 = *(v25 + 72);
      v29 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      sub_10001826C(_swiftEmptyArrayStorage + v29 + v28 * v11, *(v0 + 296));
      v13 = 0;
      v14 = *(v24 + 16);
      do
      {
        if (v14 == v13)
        {
          v5 = sub_1000182D0(*(v0 + 296));
          goto LABEL_9;
        }

        sub_100066F88();
        sub_100049598(&qword_100080B28, &type metadata accessor for UUID);
        ++v13;
      }

      while ((sub_100067B28() & 1) == 0);
      sub_100047760(*(v0 + 296), *(v0 + 288));
      v15 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10000DBE0(0, *(v27 + 2) + 1, 1);
        v15 = v27;
      }

      v17 = *(v15 + 2);
      v16 = *(v15 + 3);
      if (v17 >= v16 >> 1)
      {
        sub_10000DBE0(v16 > 1, v17 + 1, 1);
        v15 = v27;
      }

      v18 = *(v0 + 288);
      *(v15 + 2) = v17 + 1;
      v27 = v15;
      v5 = sub_100047760(v18, v15 + v29 + v17 * v28);
LABEL_9:
      v11 = v12;
      if (v12 == *&v26)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

  v27 = _swiftEmptyArrayStorage;
LABEL_20:

  v19 = sub_1000672F8();
  v20 = sub_100067E08();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    *(v21 + 4) = v27[2];

    _os_log_impl(&_mh_execute_header, v19, v20, "entities(for:) found %ld matching entities", v21, 0xCu);
  }

  else
  {
  }

  v22 = *(v0 + 8);

  return v22(v27);
}

uint64_t sub_1000483B8()
{

  *(v0 + 472) = sub_100067038();

  return _swift_task_switch(sub_10004842C, 0, 0);
}

uint64_t sub_10004842C()
{
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[45];
  v4 = v0[40];
  sub_100066FC8();
  (*(v2 + 8))(v1, v3);
  v5 = sub_100066F88();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = swift_task_alloc();
  v0[60] = v6;
  *v6 = v0;
  v6[1] = sub_100048538;
  v8 = v0[40];
  v7 = v0[41];

  return sub_10003FEA4(v7, v8);
}

uint64_t sub_100048538()
{
  v2 = *v1;
  *(*v1 + 488) = v0;

  v3 = *(v2 + 320);
  if (v0)
  {

    sub_1000096A0(v3, &qword_100081648);
    v4 = sub_1000490A4;
  }

  else
  {
    sub_1000096A0(v3, &qword_100081648);

    v4 = sub_1000486C4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000486C4()
{
  v2 = *(v0 + 344);
  v1 = *(v0 + 352);
  v4 = *(v0 + 328);
  v3 = *(v0 + 336);
  v5 = *(v0 + 168);
  (*(v2 + 56))(v4, 0, 1, v3);
  (*(v2 + 32))(v1, v4, v3);
  v6 = swift_task_alloc();
  *(v6 + 16) = v1;
  v7 = sub_10003F1C8(sub_10004956C, v6, v5);

  v8 = *(v7 + 2);
  if (v8)
  {
    *(v0 + 160) = _swiftEmptyArrayStorage;
    sub_10000DBE0(0, v8, 0);
    v9 = *(v0 + 160);
    v10 = (v7 + 4);
    sub_1000024F4(&qword_100081650);
    do
    {
      v60 = v9;
      v11 = *(v0 + 304);
      sub_1000476E4(v10, v0 + 16);
      sub_1000476E4(v0 + 16, v0 + 56);
      sub_100066E28();
      *v11 = sub_100066C98();
      sub_1000476E4(v0 + 56, v0 + 96);
      sub_1000024F4(&qword_100080AD8);
      v62 = v8;
      if (swift_dynamicCast())
      {
        v12 = *(v0 + 248);
        v14 = *(v0 + 232);
        v13 = *(v0 + 240);
        (*(v13 + 32))(v12, *(v0 + 256), v14);
        sub_100067208();
        (*(v13 + 8))(v12, v14);
      }

      else if (swift_dynamicCast())
      {
        v15 = *(v0 + 216);
        v16 = *(v0 + 200);
        v17 = *(v0 + 208);
        (*(v17 + 32))(v15, *(v0 + 224), v16);
        sub_100067178();
        (*(v17 + 8))(v15, v16);
      }

      else
      {
        sub_10002F780((v0 + 56), *(v0 + 80));
        sub_100068048();
      }

      v19 = *(v0 + 304);
      v18 = *(v0 + 312);
      v20 = *(v0 + 272);
      v22 = *(v0 + 184);
      v21 = *(v0 + 192);
      v23 = *(v0 + 176);
      sub_1000026F0(v0 + 96);
      sub_1000476E4(v0 + 56, v19 + *(v20 + 24));
      sub_10002F780((v0 + 56), *(v0 + 80));
      sub_1000671C8();
      v24 = sub_1000670B8();
      v26 = v25;
      (*(v22 + 8))(v21, v23);
      *(v0 + 136) = v24;
      *(v0 + 144) = v26;
      sub_100066C88();
      sub_100047760(v19, v18);
      sub_1000026F0(v0 + 56);
      sub_1000026F0(v0 + 16);
      v9 = v60;
      *(v0 + 160) = v60;
      v28 = *(v60 + 2);
      v27 = *(v60 + 3);
      if (v28 >= v27 >> 1)
      {
        sub_10000DBE0(v27 > 1, v28 + 1, 1);
        v9 = *(v0 + 160);
      }

      v29 = *(v0 + 312);
      v30 = *(v0 + 280);
      *(v9 + 2) = v28 + 1;
      sub_100047760(v29, v9 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v28);
      v10 += 40;
      --v8;
    }

    while (v62 != 1);
  }

  else
  {

    v9 = _swiftEmptyArrayStorage;
  }

  v32 = *(v0 + 344);
  v31 = *(v0 + 352);
  v33 = *(v0 + 336);
  sub_10003F9E0(v9);
  v34 = (*(v32 + 8))(v31, v33);
  v37 = *(v0 + 456) + 1;
  if (v37 != *(v0 + 448))
  {
    *(v0 + 456) = v37;
    v46 = *(v0 + 440);
    if (v37 < *(v46 + 16))
    {
      (*(*(v0 + 368) + 16))(*(v0 + 376), v46 + ((*(v0 + 496) + 32) & ~*(v0 + 496)) + *(*(v0 + 368) + 72) * v37, *(v0 + 360));
      *(v0 + 464) = sub_1000670D8();
      v47 = sub_100067CF8();
      v49 = v48;
      v34 = sub_1000483B8;
      v35 = v47;
      v36 = v49;

      return _swift_task_switch(v34, v35, v36);
    }

LABEL_39:
    __break(1u);
    return _swift_task_switch(v34, v35, v36);
  }

  v34 = *(v0 + 152);
  v58 = *(v34 + 2);
  if (v58)
  {
    v38 = 0;
    v56 = *(v0 + 280);
    v55 = *(v0 + 168);
    v59 = _swiftEmptyArrayStorage;
    v57 = *(v0 + 152);
    while (v38 < *(v34 + 2))
    {
      v39 = v38 + 1;
      v61 = *(v56 + 72);
      v63 = (*(v56 + 80) + 32) & ~*(v56 + 80);
      sub_10001826C(v34 + v63 + v61 * v38, *(v0 + 296));
      v40 = 0;
      v41 = *(v55 + 16);
      do
      {
        if (v41 == v40)
        {
          sub_1000182D0(*(v0 + 296));
          goto LABEL_17;
        }

        sub_100066F88();
        sub_100049598(&qword_100080B28, &type metadata accessor for UUID);
        ++v40;
      }

      while ((sub_100067B28() & 1) == 0);
      sub_100047760(*(v0 + 296), *(v0 + 288));
      v42 = v59;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10000DBE0(0, *(v59 + 2) + 1, 1);
        v42 = v59;
      }

      v44 = *(v42 + 2);
      v43 = *(v42 + 3);
      if (v44 >= v43 >> 1)
      {
        sub_10000DBE0(v43 > 1, v44 + 1, 1);
        v42 = v59;
      }

      v45 = *(v0 + 288);
      *(v42 + 2) = v44 + 1;
      v59 = v42;
      sub_100047760(v45, v42 + v63 + v44 * v61);
LABEL_17:
      v38 = v39;
      v34 = v57;
      if (v39 == v58)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
    goto LABEL_39;
  }

  v59 = _swiftEmptyArrayStorage;
LABEL_32:

  v50 = sub_1000672F8();
  v51 = sub_100067E08();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 134217984;
    *(v52 + 4) = v59[2];

    _os_log_impl(&_mh_execute_header, v50, v51, "entities(for:) found %ld matching entities", v52, 0xCu);
  }

  else
  {
  }

  v53 = *(v0 + 8);

  return v53(v59);
}

uint64_t sub_100048F18()
{
  v1 = sub_1000672F8();
  v2 = sub_100067DE8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "entities(for:) Failed to get all homes", v3, 2u);
  }

  v4 = *(v0 + 8);

  return v4(_swiftEmptyArrayStorage);
}

uint64_t sub_1000490A4()
{
  v1 = *(v0 + 328);
  (*(*(v0 + 344) + 56))(v1, 1, 1, *(v0 + 336));
  v2 = sub_1000096A0(v1, &qword_1000818A8);
  v5 = *(v0 + 456) + 1;
  if (v5 != *(v0 + 448))
  {
    *(v0 + 456) = v5;
    v14 = *(v0 + 440);
    if (v5 < *(v14 + 16))
    {
      (*(*(v0 + 368) + 16))(*(v0 + 376), v14 + ((*(v0 + 496) + 32) & ~*(v0 + 496)) + *(*(v0 + 368) + 72) * v5, *(v0 + 360));
      *(v0 + 464) = sub_1000670D8();
      v15 = sub_100067CF8();
      v17 = v16;
      v2 = sub_1000483B8;
      v3 = v15;
      v4 = v17;

      return _swift_task_switch(v2, v3, v4);
    }

LABEL_27:
    __break(1u);
    return _swift_task_switch(v2, v3, v4);
  }

  v2 = *(v0 + 152);
  v26 = *(v2 + 2);
  if (v26)
  {
    v6 = 0;
    v24 = *(v0 + 280);
    v23 = *(v0 + 168);
    v27 = _swiftEmptyArrayStorage;
    v25 = *(v0 + 152);
    while (v6 < *(v2 + 2))
    {
      v7 = v6 + 1;
      v28 = *(v24 + 72);
      v29 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      sub_10001826C(v2 + v29 + v28 * v6, *(v0 + 296));
      v8 = 0;
      v9 = *(v23 + 16);
      do
      {
        if (v9 == v8)
        {
          sub_1000182D0(*(v0 + 296));
          goto LABEL_5;
        }

        sub_100066F88();
        sub_100049598(&qword_100080B28, &type metadata accessor for UUID);
        ++v8;
      }

      while ((sub_100067B28() & 1) == 0);
      sub_100047760(*(v0 + 296), *(v0 + 288));
      v10 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10000DBE0(0, *(v27 + 2) + 1, 1);
        v10 = v27;
      }

      v12 = *(v10 + 2);
      v11 = *(v10 + 3);
      if (v12 >= v11 >> 1)
      {
        sub_10000DBE0(v11 > 1, v12 + 1, 1);
        v10 = v27;
      }

      v13 = *(v0 + 288);
      *(v10 + 2) = v12 + 1;
      v27 = v10;
      sub_100047760(v13, v10 + v29 + v12 * v28);
LABEL_5:
      v6 = v7;
      v2 = v25;
      if (v7 == v26)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

  v27 = _swiftEmptyArrayStorage;
LABEL_20:

  v18 = sub_1000672F8();
  v19 = sub_100067E08();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    *(v20 + 4) = v27[2];

    _os_log_impl(&_mh_execute_header, v18, v19, "entities(for:) found %ld matching entities", v20, 0xCu);
  }

  else
  {
  }

  v21 = *(v0 + 8);

  return v21(v27);
}

uint64_t sub_100049598(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100049600(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SingleGaugeEntry(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000496A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SingleGaugeEntry(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100049730()
{
  result = type metadata accessor for SingleGaugeEntry(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000497B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100066F38();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 40);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100049884(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100066F38();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 40) = (a2 - 1);
  }

  return result;
}

void sub_100049940()
{
  sub_100066F38();
  if (v0 <= 0x3F)
  {
    sub_10002F2B0();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__n128 sub_1000499E4(uint64_t a1, uint64_t a2)
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

uint64_t sub_100049A08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100049A50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100049AB4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000670C8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &unk_100085000;
  if (__OFADD__(qword_100085E40, 1))
  {
    __break(1u);
  }

  else
  {
    ++qword_100085E40;
    *&v31 = 0;
    *(&v31 + 1) = 0xE000000000000000;
    sub_100068038(23);

    *&v31 = 0xD000000000000015;
    *(&v31 + 1) = 0x800000010006D540;
    v30[0] = qword_100085E40;
    v36._countAndFlagsBits = sub_100068148();
    sub_100067C48(v36);

    v9 = *(&v31 + 1);
    v2 = v31;
    if (qword_100080788 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v10 = sub_100067318();
  sub_1000026A8(v10, qword_100085CA0);

  v11 = sub_1000672F8();
  v12 = sub_100067E08();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v29 = a1;
    v14 = v13;
    *&v31 = swift_slowAlloc();
    *v14 = 136315394;
    v15 = sub_10000D4F0(v2, v9, &v31);

    *(v14 + 4) = v15;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_10000D4F0(0xD000000000000010, 0x800000010006C430, &v31);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_100066F28();
  if (qword_100080820 != -1)
  {
    swift_once();
  }

  v33 = xmmword_100085EC0;
  v34 = *&qword_100085ED0;
  v35 = byte_100085EE0;
  v31 = xmmword_100085EA0;
  v32 = *&qword_100085EB0;
  (*(v6 + 104))(v8, enum case for ServiceKind.airQualitySensor(_:), v5);
  sub_10004D700(&v31, v30);
  v16 = sub_1000670B8();
  v18 = v17;
  (*(v6 + 8))(v8, v5);
  sub_100067A58();
  v20 = v19;
  v22 = v21;
  v23 = type metadata accessor for SingleGaugeEntry(0);
  v24 = a2 + v23[5];
  v25 = v34;
  *(v24 + 32) = v33;
  *(v24 + 48) = v25;
  *(v24 + 64) = v35;
  result = v32;
  *v24 = v31;
  *(v24 + 16) = result;
  v27 = (a2 + v23[6]);
  *v27 = v16;
  v27[1] = v18;
  v28 = (a2 + v23[7]);
  *v28 = v20;
  v28[1] = v22;
  return result;
}

uint64_t sub_100049E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_100049EA0, 0, 0);
}

uint64_t sub_100049EA0()
{
  v14 = v1;
  v2 = &unk_100085000;
  if (__OFADD__(qword_100085E40, 1))
  {
    __break(1u);
  }

  else
  {
    ++qword_100085E40;
    sub_100068038(23);

    v12 = 0xD000000000000015;
    v13 = 0x800000010006D540;
    v1[2] = qword_100085E40;
    v16._countAndFlagsBits = sub_100068148();
    sub_100067C48(v16);

    v0 = v12;
    v2 = v13;
    v1[6] = v13;
    if (qword_100080788 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v3 = sub_100067318();
  sub_1000026A8(v3, qword_100085CA0);

  v4 = sub_1000672F8();
  v5 = sub_100067E08();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_10000D4F0(v0, v2, &v12);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_10000D4F0(0xD000000000000011, 0x800000010006D110, &v12);
    swift_arrayDestroy();
  }

  v7 = swift_task_alloc();
  v1[7] = v7;
  *v7 = v1;
  v7[1] = sub_10004A134;
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[3];

  return sub_10004A244(v10, v8, v9, v0, v2);
}

uint64_t sub_10004A134()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10004A244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[32] = a4;
  v5[33] = a5;
  v5[30] = a2;
  v5[31] = a3;
  v5[29] = a1;
  v6 = sub_100066F38();
  v5[34] = v6;
  v5[35] = *(v6 - 8);
  v5[36] = swift_task_alloc();

  return _swift_task_switch(sub_10004A30C, 0, 0);
}

uint64_t sub_10004A30C()
{
  v21 = v0;
  if (qword_100080788 != -1)
  {
    swift_once();
  }

  v1 = sub_100067318();
  v0[37] = sub_1000026A8(v1, qword_100085CA0);

  v2 = sub_1000672F8();
  v3 = sub_100067E08();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[32];
    v4 = v0[33];
    v6 = v0[30];
    v7 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v7 = 136315650;
    *(v7 + 4) = sub_10000D4F0(v5, v4, &v20);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_10000D4F0(0xD00000000000001ELL, 0x800000010006C9D0, &v20);
    *(v7 + 22) = 2080;
    v0[28] = v6;

    v8 = sub_100067BF8();
    v10 = sub_10000D4F0(v8, v9, &v20);

    *(v7 + 24) = v10;
    swift_arrayDestroy();
  }

  if (qword_100080778 != -1)
  {
    swift_once();
  }

  v11 = qword_100085C80;
  v12 = OBJC_IVAR____TtC20HomeWidgetLockScreen19LockScreenDataModel_currentHome;
  swift_beginAccess();
  v13 = *(v11 + v12);
  v0[38] = v13;
  v14 = v13;
  v15 = swift_task_alloc();
  v0[39] = v15;
  *v15 = v0;
  v15[1] = sub_10004A5D4;
  v16 = v0[32];
  v17 = v0[33];
  v18 = v0[30];

  return sub_10004AFA0((v0 + 2), v18, v13, v16, v17);
}

uint64_t sub_10004A5D4()
{

  return _swift_task_switch(sub_10004A6D0, 0, 0);
}

uint64_t sub_10004A6D0()
{
  v29 = v0;

  sub_10004D700(v0 + 16, v0 + 88);
  v1 = sub_1000672F8();
  v2 = sub_100067E08();

  sub_10004D738(v0 + 16);
  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 256);
    v3 = *(v0 + 264);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v28 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_10000D4F0(v4, v3, &v28);
    *(v5 + 12) = 2048;
    v7 = *(v0 + 32);
    if (*(v0 + 40))
    {
      v7 = -1.0;
    }

    *(v5 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "...{%s} has currentValue: '%f'", v5, 0x16u);
    sub_1000026F0(v6);
  }

  sub_100066F28();
  sub_100066CB8();
  v8 = *(v0 + 168);
  if (v8)
  {
    v9 = *(v0 + 160);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v0 + 304);
  v12 = *(v0 + 280);
  v11 = *(v0 + 288);
  v13 = *(v0 + 272);
  v14 = *(v0 + 232);
  sub_100067A58();
  v16 = v15;
  v18 = v17;

  (*(v12 + 32))(v14, v11, v13);
  v19 = type metadata accessor for SingleGaugeEntry(0);
  v20 = v14 + v19[5];
  *v20 = *(v0 + 16);
  v21 = *(v0 + 32);
  v22 = *(v0 + 48);
  v23 = *(v0 + 64);
  *(v20 + 64) = *(v0 + 80);
  *(v20 + 32) = v22;
  *(v20 + 48) = v23;
  *(v20 + 16) = v21;
  v24 = (v14 + v19[6]);
  *v24 = v9;
  v24[1] = v8;
  v25 = (v14 + v19[7]);
  *v25 = v16;
  v25[1] = v18;

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_10004A91C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_100066F38();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  sub_100067A28();
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_10004AA18, 0, 0);
}

uint64_t sub_10004AA18()
{
  v16 = v1;
  v2 = &unk_100085000;
  if (__OFADD__(qword_100085E40, 1))
  {
    __break(1u);
  }

  else
  {
    ++qword_100085E40;
    sub_100068038(23);

    v14 = 0xD000000000000015;
    v15 = 0x800000010006D540;
    v1[2] = qword_100085E40;
    v18._countAndFlagsBits = sub_100068148();
    sub_100067C48(v18);

    v0 = v14;
    v2 = v15;
    v1[11] = v15;
    if (qword_100080788 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v3 = sub_100067318();
  sub_1000026A8(v3, qword_100085CA0);

  v4 = sub_1000672F8();
  v5 = sub_100067E08();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_10000D4F0(v0, v2, &v14);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_10000D4F0(0xD000000000000011, 0x800000010006D020, &v14);
    swift_arrayDestroy();
  }

  sub_1000024F4(&qword_100081A58);
  v7 = type metadata accessor for SingleGaugeEntry(0);
  v1[12] = v7;
  v8 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
  v9 = swift_allocObject();
  v1[13] = v9;
  *(v9 + 16) = xmmword_100068BF0;
  v10 = swift_task_alloc();
  v1[14] = v10;
  *v10 = v1;
  v10[1] = sub_10004AD40;
  v11 = v1[4];
  v12 = v1[5];

  return sub_10004A244(v9 + v8, v11, v12, v0, v2);
}

uint64_t sub_10004AD40()
{

  return _swift_task_switch(sub_10004AE58, 0, 0);
}

uint64_t sub_10004AE58()
{
  v1 = v0[9];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  sub_100066F18();
  sub_100066F08();
  v5 = *(v3 + 8);
  v5(v2, v4);
  sub_100067A18();
  v5(v1, v4);
  sub_10004D2A0(&qword_100081A50, type metadata accessor for SingleGaugeEntry);
  sub_100067AE8();

  v6 = v0[1];

  return v6();
}

uint64_t sub_10004AFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[55] = a4;
  v5[56] = a5;
  v5[53] = a2;
  v5[54] = a3;
  v5[52] = a1;
  sub_1000024F4(&qword_100080B68);
  v5[57] = swift_task_alloc();
  v5[58] = swift_task_alloc();

  return _swift_task_switch(sub_10004B050, 0, 0);
}

uint64_t sub_10004B050()
{
  v36 = v0;
  sub_100066CB8();
  if (*(v0 + 384))
  {
  }

  v1 = *(v0 + 464);
  sub_1000670A8();
  v2 = sub_1000670C8();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    goto LABEL_4;
  }

  v24 = *(v0 + 456);
  sub_10002F710(*(v0 + 464), v24);
  v25 = (*(v3 + 88))(v24, v2);
  if (v25 == enum case for ServiceKind.airQualitySensor(_:))
  {
    v34 = sub_100001C48;
    v26 = swift_task_alloc();
    *(v0 + 488) = v26;
    *v26 = v0;
    v26[1] = sub_10004B910;
    v27 = *(v0 + 440);
    v28 = *(v0 + 448);
    v29 = *(v0 + 432);
    v30 = v0 + 16;
  }

  else if (v25 == enum case for ServiceKind.humiditySensor(_:))
  {
    v34 = sub_1000205C4;
    v31 = swift_task_alloc();
    *(v0 + 472) = v31;
    *v31 = v0;
    v31[1] = sub_10004B548;
    v27 = *(v0 + 440);
    v28 = *(v0 + 448);
    v29 = *(v0 + 432);
    v30 = v0 + 160;
  }

  else
  {
    if (v25 != enum case for ServiceKind.temperatureSensor(_:))
    {
      (*(v3 + 8))(*(v0 + 456), v2);
LABEL_4:
      if (qword_100080788 != -1)
      {
        swift_once();
      }

      v4 = sub_100067318();
      sub_1000026A8(v4, qword_100085CA0);

      v5 = sub_1000672F8();
      v6 = sub_100067E08();

      if (os_log_type_enabled(v5, v6))
      {
        v8 = *(v0 + 440);
        v7 = *(v0 + 448);
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v35 = v10;
        *v9 = 136315138;
        *(v9 + 4) = sub_10000D4F0(v8, v7, &v35);
        _os_log_impl(&_mh_execute_header, v5, v6, "...{%s} ERROR: didn't recognize sensor accessory type", v9, 0xCu);
        sub_1000026F0(v10);
      }

      v11 = v0 + 232;
      if (qword_100080818 != -1)
      {
        swift_once();
        v11 = v0 + 232;
      }

      *(v11 + 64) = byte_100085E90;
      v12 = *&qword_100085E80;
      *(v11 + 32) = xmmword_100085E70;
      *(v11 + 48) = v12;
      v13 = *&qword_100085E60;
      *v11 = xmmword_100085E50;
      *(v11 + 16) = v13;
      v14 = *(v0 + 296);
      v15 = *(v0 + 280);
      v16 = *(v0 + 288);
      v33 = *(v0 + 264);
      v17 = *(v0 + 248);
      v18 = *(v0 + 256);
      v20 = *(v0 + 232);
      v19 = *(v0 + 240);
      sub_10004D700(v11, v0 + 304);
      v21 = *(v0 + 416);
      sub_1000096A0(*(v0 + 464), &qword_100080B68);
      *v21 = v20;
      *(v21 + 8) = v19;
      *(v21 + 16) = v17;
      *(v21 + 24) = v18;
      *(v21 + 32) = v33;
      *(v21 + 48) = v15;
      *(v21 + 56) = v16;
      *(v21 + 64) = v14;

      v22 = *(v0 + 8);

      return v22();
    }

    v34 = sub_10005FD90;
    v32 = swift_task_alloc();
    *(v0 + 480) = v32;
    *v32 = v0;
    v32[1] = sub_10004B72C;
    v27 = *(v0 + 440);
    v28 = *(v0 + 448);
    v29 = *(v0 + 432);
    v30 = v0 + 88;
  }

  return v34(v30, v29, v27, v28);
}

uint64_t sub_10004B548()
{

  return _swift_task_switch(sub_10004B644, 0, 0);
}

uint64_t sub_10004B644()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);
  v10 = *(v0 + 192);
  v4 = *(v0 + 176);
  v6 = *(v0 + 160);
  v5 = *(v0 + 168);
  v7 = *(v0 + 416);
  v11 = *(v0 + 184);
  sub_1000096A0(*(v0 + 464), &qword_100080B68);
  *v7 = v6;
  *(v7 + 8) = v5;
  *(v7 + 16) = v4;
  *(v7 + 24) = v11;
  *(v7 + 32) = v10;
  *(v7 + 48) = v2;
  *(v7 + 56) = v3;
  *(v7 + 64) = v1;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10004B72C()
{

  return _swift_task_switch(sub_10004B828, 0, 0);
}

uint64_t sub_10004B828()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  v10 = *(v0 + 120);
  v4 = *(v0 + 104);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v7 = *(v0 + 416);
  v11 = *(v0 + 112);
  sub_1000096A0(*(v0 + 464), &qword_100080B68);
  *v7 = v6;
  *(v7 + 8) = v5;
  *(v7 + 16) = v4;
  *(v7 + 24) = v11;
  *(v7 + 32) = v10;
  *(v7 + 48) = v2;
  *(v7 + 56) = v3;
  *(v7 + 64) = v1;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10004B910()
{

  return _swift_task_switch(sub_10004BA0C, 0, 0);
}

uint64_t sub_10004BA0C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v10 = *(v0 + 48);
  v4 = *(v0 + 32);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = *(v0 + 416);
  v11 = *(v0 + 40);
  sub_1000096A0(*(v0 + 464), &qword_100080B68);
  *v7 = v6;
  *(v7 + 8) = v5;
  *(v7 + 16) = v4;
  *(v7 + 24) = v11;
  *(v7 + 32) = v10;
  *(v7 + 48) = v2;
  *(v7 + 56) = v3;
  *(v7 + 64) = v1;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10004BAF4()
{
  v0 = sub_100066FB8();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100067B88();
  __chkstk_darwin(v1 - 8);
  sub_100067B38();
  sub_100066FA8();
  result = sub_100067BE8();
  qword_100085E30 = result;
  *algn_100085E38 = v3;
  return result;
}

uint64_t sub_10004BC14(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005B50;

  return sub_100049E7C(a1, v6, a3);
}

uint64_t sub_10004BCC4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005B50;

  return sub_10004A91C(a1, v6, a3);
}

double sub_10004BD90()
{
  result = 0.0;
  xmmword_100085E50 = xmmword_100069580;
  qword_100085E60 = 0x4049000000000000;
  byte_100085E68 = 0;
  *&xmmword_100085E70 = 0x9380E29380E2;
  *(&xmmword_100085E70 + 1) = 0xA600000000000000;
  qword_100085E80 = 0xD00000000000001DLL;
  unk_100085E88 = 0x800000010006D560;
  byte_100085E90 = 0;
  return result;
}

void sub_10004BDF0()
{
  xmmword_100085EA0 = xmmword_100069580;
  qword_100085EB0 = 0x404E000000000000;
  byte_100085EB8 = 0;
  *&xmmword_100085EC0 = 12342;
  *(&xmmword_100085EC0 + 1) = 0xE200000000000000;
  strcpy(&qword_100085ED0, "humidity.fill");
  unk_100085EDE = -4864;
  byte_100085EE0 = 1;
}

uint64_t sub_10004BE54()
{
  v1 = sub_100066FB8();
  __chkstk_darwin(v1 - 8);
  v2 = sub_100067B88();
  __chkstk_darwin(v2 - 8);
  v3 = v0 + *(type metadata accessor for SingleGaugeEntry(0) + 20);
  sub_1000025E8();
  if (sub_100067EC8() & 1) != 0 || (sub_100067EC8() & 1) != 0 || (sub_100067EC8())
  {
    goto LABEL_4;
  }

  if (sub_100067EC8())
  {
    goto LABEL_10;
  }

  if (qword_100080778 != -1)
  {
    swift_once();
  }

  if (!sub_100014FA4())
  {
LABEL_4:
    sub_100067B98();
    sub_100066FA8();
    sub_100067BE8();
    sub_1000024F4(&qword_1000811F0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100068BF0;
    v6 = *(v3 + 32);
    v5 = *(v3 + 40);
    *(v4 + 56) = &type metadata for String;
    *(v4 + 64) = sub_10004D0D8();
    *(v4 + 32) = v6;
    *(v4 + 40) = v5;

    sub_100067BB8();
  }

  else
  {
LABEL_10:
    sub_100067B38();
    sub_100066FA8();
    sub_100067BE8();
  }

  return sub_1000677B8();
}

uint64_t sub_10004C250@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v3 = sub_100067698();
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin(v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000024F4(&qword_1000809B8);
  __chkstk_darwin(v6 - 8);
  v8 = &v28 - v7;
  v9 = type metadata accessor for SingleClimateGaugeView(0);
  __chkstk_darwin(v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000024F4(&qword_1000819F0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - v14;
  v29 = sub_1000024F4(&qword_1000819F8);
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v17 = &v28 - v16;
  v30 = sub_1000024F4(&qword_100081A00);
  __chkstk_darwin(v30);
  v19 = &v28 - v18;
  sub_10004D468(v2, v11, type metadata accessor for SingleGaugeEntry);
  *&v11[*(v9 + 20)] = swift_getKeyPath();
  sub_1000024F4(&qword_1000809C0);
  swift_storeEnumTagMultiPayload();
  sub_100066ED8();
  v20 = sub_10004D2A0(&qword_100081A08, type metadata accessor for SingleClimateGaugeView);
  sub_1000677C8();
  sub_1000096A0(v8, &qword_1000809B8);
  sub_10004D4D0(v11, type metadata accessor for SingleClimateGaugeView);
  sub_100067678();
  v35 = v9;
  v36 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100067848();
  (*(v32 + 8))(v5, v33);
  (*(v13 + 8))(v15, v12);
  v22 = sub_10004BE54();
  v24 = v23;
  LOBYTE(v5) = v25;
  v35 = v12;
  v36 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v26 = v29;
  sub_100067828();
  sub_10004D060(v22, v24, v5 & 1);

  (*(v31 + 8))(v17, v26);
  sub_100067428();
  return sub_10004D070(v19);
}

uint64_t sub_10004C740@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = sub_100066FB8();
  __chkstk_darwin(v1 - 8);
  v30 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100067B88();
  __chkstk_darwin(v3 - 8);
  v28[1] = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000024F4(&qword_1000808B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v28 - v7;
  v9 = sub_1000024F4(&qword_1000808A8);
  v29 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v28 - v10;
  v34 = sub_1000024F4(&qword_1000808A0);
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v13 = v28 - v12;
  v33 = sub_1000024F4(&qword_100080898);
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v15 = v28 - v14;
  sub_1000024F4(&qword_100081A20);
  sub_10004D304();
  sub_10004D414();
  sub_100067A38();
  if (qword_100080810 != -1)
  {
    swift_once();
  }

  v36 = qword_100085E30;
  v37 = *algn_100085E38;
  v16 = sub_100002584();
  v17 = sub_1000025E8();
  sub_100067628();
  (*(v6 + 8))(v8, v5);
  sub_100067B38();
  sub_100066FA8();
  v40 = sub_100067BE8();
  v41 = v18;
  v36 = v5;
  v37 = &type metadata for String;
  v38 = v16;
  v39 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100067608();

  (*(v29 + 8))(v11, v9);
  sub_1000024F4(&qword_100080910);
  v20 = sub_1000679B8();
  v21 = *(v20 - 8);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100068BF0;
  (*(v21 + 104))(v23 + v22, enum case for WidgetFamily.accessoryCircular(_:), v20);
  v36 = v9;
  v37 = &type metadata for String;
  v38 = OpaqueTypeConformance2;
  v39 = v17;
  v24 = swift_getOpaqueTypeConformance2();
  v25 = v34;
  sub_100067618();

  (*(v32 + 8))(v13, v25);
  v36 = v25;
  v37 = v24;
  swift_getOpaqueTypeConformance2();
  v26 = v33;
  sub_100067638();
  return (*(v31 + 8))(v15, v26);
}

uint64_t sub_10004CDA0(uint64_t a1)
{
  v2 = type metadata accessor for SingleClimateGaugeWidgetView(0);
  __chkstk_darwin(v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000024F4(&qword_100081A48);
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  if (qword_100080778 != -1)
  {
    swift_once();
  }

  if (sub_100014FA4())
  {
    v8 = *(type metadata accessor for SingleGaugeEntry(0) + 28);
    *v7 = 2;
    *(v7 + 8) = *(a1 + v8);
    swift_storeEnumTagMultiPayload();
    sub_10004D3C0();
    sub_10004D2A0(&qword_100081A38, type metadata accessor for SingleClimateGaugeWidgetView);
    return sub_100067648();
  }

  else
  {
    sub_10004D468(a1, v4, type metadata accessor for SingleGaugeEntry);
    sub_10004D468(v4, v7, type metadata accessor for SingleClimateGaugeWidgetView);
    swift_storeEnumTagMultiPayload();
    sub_10004D3C0();
    sub_10004D2A0(&qword_100081A38, type metadata accessor for SingleClimateGaugeWidgetView);
    sub_100067648();
    return sub_10004D4D0(v4, type metadata accessor for SingleClimateGaugeWidgetView);
  }
}

uint64_t sub_10004D060(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10004D070(uint64_t a1)
{
  v2 = sub_1000024F4(&qword_100081A00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10004D0D8()
{
  result = qword_100081A10;
  if (!qword_100081A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081A10);
  }

  return result;
}

unint64_t sub_10004D140()
{
  result = qword_100081A18;
  if (!qword_100081A18)
  {
    sub_10000253C(&qword_100081A00);
    sub_10000253C(&qword_1000819F0);
    type metadata accessor for SingleClimateGaugeView(255);
    sub_10004D2A0(&qword_100081A08, type metadata accessor for SingleClimateGaugeView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10004D2A0(&qword_100080A08, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081A18);
  }

  return result;
}

uint64_t sub_10004D2A0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10004D304()
{
  result = qword_100081A28;
  if (!qword_100081A28)
  {
    sub_10000253C(&qword_100081A20);
    sub_10004D3C0();
    sub_10004D2A0(&qword_100081A38, type metadata accessor for SingleClimateGaugeWidgetView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081A28);
  }

  return result;
}

unint64_t sub_10004D3C0()
{
  result = qword_100081A30;
  if (!qword_100081A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081A30);
  }

  return result;
}

unint64_t sub_10004D414()
{
  result = qword_100081A40;
  if (!qword_100081A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081A40);
  }

  return result;
}

uint64_t sub_10004D468(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004D4D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10004D540()
{
  sub_10000253C(&qword_100080898);
  sub_10000253C(&qword_1000808A0);
  sub_10000253C(&qword_1000808A8);
  sub_10000253C(&qword_1000808B0);
  sub_100002584();
  sub_1000025E8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10004D68C(uint64_t a1)
{
  result = sub_10004D414();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10004D774(NSObject *a1)
{
  v2 = sub_100066F88();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v78 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v80 = &v77 - v6;
  v7 = sub_1000024F4(&qword_100081648);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v77 - v11;
  v13 = [a1 homes];
  sub_100018220();
  sub_100067CA8();

  v81 = sub_10004F530(v14);
  sub_10004F310(&v81);

  v15 = v81;
  if ((sub_10004F758() & 1) != 0 || (sub_10004E298(v12), v16 = *(v3 + 48), v17 = v16(v12, 1, v2), v79 = v2, v18 = v17, sub_1000096A0(v12, &qword_100081648), v19 = v18 == 1, v2 = v79, v19))
  {
    v20 = [a1 currentHome];
    if (v20)
    {
      v21 = v20;

      if (qword_100080788 != -1)
      {
        swift_once();
      }

      v22 = sub_100067318();
      sub_1000026A8(v22, qword_100085CA0);
      v23 = v21;
      v24 = sub_1000672F8();
      v25 = sub_100067E08();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138412290;
        *(v26 + 4) = v23;
        *v27 = v21;
        v28 = v23;
        _os_log_impl(&_mh_execute_header, v24, v25, "Using Home Sensing, home is %@", v26, 0xCu);
        sub_1000096A0(v27, &qword_100080CA0);
      }

      return v21;
    }

    if (qword_100080788 != -1)
    {
      swift_once();
    }

    v29 = sub_100067318();
    sub_1000026A8(v29, qword_100085CA0);

    a1 = sub_1000672F8();
    v21 = sub_100067E08();

    if (!os_log_type_enabled(a1, v21))
    {
      goto LABEL_27;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v81 = v31;
    *v30 = 136315138;
    v32 = v15 & 0x4000000000000000;
    if (v15 < 0 || v32)
    {
      if (sub_1000680C8())
      {
        goto LABEL_16;
      }
    }

    else if (*(v15 + 16))
    {
LABEL_16:
      if ((v15 & 0xC000000000000001) != 0)
      {
        v33 = sub_100068058();
      }

      else
      {
        if (!*(v15 + 16))
        {
          __break(1u);
          goto LABEL_62;
        }

        v33 = *(v15 + 32);
      }

      v34 = v33;
      v35 = [v33 name];

      v36 = sub_100067BC8();
      v38 = v37;

LABEL_46:
      v71 = sub_10000D4F0(v36, v38, &v81);

      *(v30 + 4) = v71;
      _os_log_impl(&_mh_execute_header, a1, v21, "Using Home Sensing, no 'currentHome' was found from HomeKit, falling back to %s)", v30, 0xCu);
      sub_1000026F0(v31);

      goto LABEL_47;
    }

    v36 = 1701736302;
    v38 = 0xE400000000000000;
    goto LABEL_46;
  }

  sub_10004E298(v10);
  if (v16(v10, 1, v2) == 1)
  {
    sub_1000096A0(v10, &qword_100081648);
    if (v15 < 0 || (v15 & 0x4000000000000000) != 0)
    {
      goto LABEL_58;
    }

    if (*(v15 + 16))
    {
      while ((v15 & 0xC000000000000001) == 0)
      {
        if (*(v15 + 16))
        {
          goto LABEL_52;
        }

        __break(1u);
LABEL_27:

        v32 = v15 & 0x4000000000000000;
LABEL_47:
        if (v15 < 0 || v32)
        {
          if (!sub_1000680C8())
          {
            goto LABEL_59;
          }
        }

        else if (!*(v15 + 16))
        {
          goto LABEL_59;
        }

        if ((v15 & 0xC000000000000001) != 0)
        {
          break;
        }

        if (*(v15 + 16))
        {
LABEL_52:
          v72 = *(v15 + 32);
          goto LABEL_53;
        }

        __break(1u);
LABEL_58:
        if (!sub_1000680C8())
        {
          goto LABEL_59;
        }
      }

      v72 = sub_100068058();
LABEL_53:
      v21 = v72;
    }

    else
    {
LABEL_59:

      return 0;
    }

    return v21;
  }

  v30 = v3;
  v39 = *(v3 + 32);
  v31 = v80;
  v39(v80, v10, v2);
  v40 = [a1 homes];
  v41 = sub_100067CA8();

  __chkstk_darwin(v42);
  *(&v77 - 2) = v31;
  v21 = sub_100020590(sub_10004F818, (&v77 - 4), v41);

  if (v21)
  {

    if (qword_100080788 == -1)
    {
LABEL_30:
      v43 = sub_100067318();
      sub_1000026A8(v43, qword_100085CA0);
      v44 = v21;
      v45 = sub_1000672F8();
      v46 = sub_100067E08();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v81 = v48;
        *v47 = 136315138;
        v49 = [v44 name];
        v50 = sub_100067BC8();
        v52 = v51;

        v53 = sub_10000D4F0(v50, v52, &v81);
        v2 = v79;

        *(v47 + 4) = v53;
        _os_log_impl(&_mh_execute_header, v45, v46, "Home.app has locked home to '%s', using that one.", v47, 0xCu);
        sub_1000026F0(v48);
      }

      (*(v30 + 8))(v31, v2);
      return v21;
    }

LABEL_62:
    swift_once();
    goto LABEL_30;
  }

  if (qword_100080788 != -1)
  {
    swift_once();
  }

  v54 = sub_100067318();
  sub_1000026A8(v54, qword_100085CA0);
  v55 = v78;
  (*(v30 + 16))(v78, v31, v2);

  v56 = sub_1000672F8();
  v57 = sub_100067E08();

  if (!os_log_type_enabled(v56, v57))
  {

    v70 = *(v30 + 8);
    (v70)(v55, v2);
    v63 = v15 & 0x4000000000000000;
    goto LABEL_66;
  }

  v41 = swift_slowAlloc();
  v77 = swift_slowAlloc();
  v81 = v77;
  *v41 = 136315394;
  v58 = sub_100066F58();
  v59 = v2;
  v61 = v60;
  v78 = *(v30 + 8);
  (v78)(v55, v59);
  v62 = sub_10000D4F0(v58, v61, &v81);

  *(v41 + 4) = v62;
  *(v41 + 12) = 2080;
  v63 = v15 & 0x4000000000000000;
  if (v15 < 0 || v63)
  {
    v73 = sub_1000680C8();
    v2 = v79;
    if (v73)
    {
      goto LABEL_39;
    }

LABEL_64:
    v67 = 1701736302;
    v69 = 0xE400000000000000;
    goto LABEL_65;
  }

  v2 = v79;
  if (!*(v15 + 16))
  {
    goto LABEL_64;
  }

LABEL_39:
  if ((v15 & 0xC000000000000001) != 0)
  {
    goto LABEL_79;
  }

  if (!*(v15 + 16))
  {
    __break(1u);

    __break(1u);
    return result;
  }

  for (i = *(v15 + 32); ; i = sub_100068058())
  {
    v65 = i;
    v66 = [i name];

    v67 = sub_100067BC8();
    v69 = v68;

    v2 = v79;
LABEL_65:
    v74 = sub_10000D4F0(v67, v69, &v81);

    *(v41 + 14) = v74;
    _os_log_impl(&_mh_execute_header, v56, v57, "Home.app has locked home to uuid '%s' but it wasn't found, falling back to %s)", v41, 0x16u);
    swift_arrayDestroy();

    v70 = v78;
LABEL_66:
    if (v15 < 0 || v63)
    {
      break;
    }

    if (!*(v15 + 16))
    {
      goto LABEL_74;
    }

LABEL_69:
    if ((v15 & 0xC000000000000001) != 0)
    {
      v75 = sub_100068058();
      goto LABEL_72;
    }

    if (*(v15 + 16))
    {
      v75 = *(v15 + 32);
LABEL_72:
      v21 = v75;

      goto LABEL_75;
    }

    __break(1u);
LABEL_79:
    ;
  }

  if (sub_1000680C8())
  {
    goto LABEL_69;
  }

LABEL_74:

  v21 = 0;
LABEL_75:
  (v70)(v31, v2);
  return v21;
}

uint64_t sub_10004E298@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_allocWithZone(NSUserDefaults);
  v3 = sub_100067BA8();
  v4 = [v2 initWithSuiteName:v3];

  if (v4 && (v5 = sub_100067BA8(), v6 = [v4 stringForKey:v5], v4, v5, v6))
  {
    sub_100067BC8();

    sub_100066F48();
  }

  else
  {
    v8 = sub_100066F88();
    v9 = *(*(v8 - 8) + 56);

    return v9(a1, 1, 1, v8);
  }
}

uint64_t sub_10004E40C(id *a1)
{
  v2 = sub_100066F88();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*a1 uniqueIdentifier];
  sub_100066F78();

  v7 = sub_100066F68();
  (*(v3 + 8))(v5, v2);
  return v7 & 1;
}

char *sub_10004E5D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000024F4(&qword_100081A78);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

double *sub_10004E6D4(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000024F4(&qword_1000809F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_10004E7F8(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000024F4(&qword_100080A38);
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
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10004E8FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000024F4(&qword_100080A98);
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

double *sub_10004EA28(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000024F4(&qword_100080AE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_10004EBBC(size_t result, int64_t a2, char a3, unint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 24);
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

  v12 = *(a4 + 16);
  if (v11 <= v12)
  {
    v13 = *(a4 + 16);
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000024F4(a5);
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

  *(v17 + 2) = v12;
  *(v17 + 3) = 2 * ((result - v16) / v15);
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

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

double *sub_10004ED98(double *result, int64_t a2, char a3, double *a4)
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
    sub_1000024F4(&qword_100080AD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_1000024F4(&qword_100080AD8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_10004EF04(size_t result, int64_t a2, char a3, unint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 24);
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

  v12 = *(a4 + 16);
  if (v11 <= v12)
  {
    v13 = *(a4 + 16);
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000024F4(a5);
  v14 = *(sub_1000024F4(a7) - 8);
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

  *(v17 + 2) = v12;
  *(v17 + 3) = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(sub_1000024F4(a7) - 8);
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

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

double *sub_10004F0EC(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000024F4(&qword_100080BB8);
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
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_10004F1F0(uint64_t a1, uint64_t a2)
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

  sub_1000024F4(&qword_100081A70);
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

double *sub_10004F278(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1000024F4(&qword_1000809F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4924924924924925) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

uint64_t sub_10004F310(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10004F744(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_10004F38C(v6);
  return sub_100068098();
}

void sub_10004F38C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_100068138(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100018220();
        v6 = sub_100067CD8();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1000156A0(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1000154D4(0, v2, 1, a1);
  }
}

uint64_t sub_10004F490(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10004F51C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_10004F530(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_1000680C8();
  if (!v3)
  {
LABEL_7:

    return &_swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_10004F1F0(v3, 0);
  sub_10004F5C4(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10004F5C4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1000680C8();
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
      result = sub_1000680C8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10004F838();
          for (i = 0; i != v6; ++i)
          {
            sub_1000024F4(&qword_100081A60);
            v9 = sub_100011FEC(v13, i, a3);
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
        sub_100018220();
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

uint64_t sub_10004F758()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_100067BA8();
  v2 = [v0 initWithSuiteName:v1];

  if (!v2)
  {
    return 1;
  }

  v3 = sub_100067BA8();
  v4 = [v2 BOOLForKey:v3];

  return v4;
}

unint64_t sub_10004F838()
{
  result = qword_100081A68;
  if (!qword_100081A68)
  {
    sub_10000253C(&qword_100081A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081A68);
  }

  return result;
}

uint64_t sub_10004F8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SingleGaugeEntry(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1000024F4(&qword_100080EA8);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10004F9C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SingleGaugeEntry(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1000024F4(&qword_100080EA8);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_10004FAE8()
{
  type metadata accessor for SingleGaugeEntry(319);
  if (v0 <= 0x3F)
  {
    sub_100021104();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10004FB88@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100067528();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000024F4(&qword_1000809C0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_1000095D4(v2, &v14 - v9, &qword_1000809C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000679B8();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_100067DF8();
    v13 = sub_1000676D8();
    sub_1000672E8();

    sub_100067518();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10004FD88@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v20 = type metadata accessor for SingleClimateGaugeViewAccessoryCircular(0);
  __chkstk_darwin(v20);
  v19 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000024F4(&qword_100081B28);
  __chkstk_darwin(v24);
  v4 = &v19 - v3;
  v21 = sub_1000024F4(&qword_100081B30);
  __chkstk_darwin(v21);
  v6 = (&v19 - v5);
  v23 = sub_1000024F4(&qword_100081B38);
  __chkstk_darwin(v23);
  v8 = &v19 - v7;
  v22 = type metadata accessor for SingleClimateGaugeViewSystemSmall(0);
  __chkstk_darwin(v22);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000679B8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100080778 != -1)
  {
    swift_once();
  }

  v15 = sub_100014FA4();
  sub_100050378(v14);
  v16 = (*(v12 + 88))(v14, v11);
  if (v16 == enum case for WidgetFamily.systemSmall(_:))
  {
    sub_1000506C8(v1, v10, type metadata accessor for SingleGaugeEntry);
    sub_1000506C8(v10, v6, type metadata accessor for SingleClimateGaugeViewSystemSmall);
    swift_storeEnumTagMultiPayload();
    sub_100050680(&qword_100081B48, type metadata accessor for SingleClimateGaugeViewSystemSmall);
    sub_100067648();
    sub_1000095D4(v8, v4, &qword_100081B38);
    swift_storeEnumTagMultiPayload();
    sub_1000505C4();
    sub_100067648();
    sub_1000096A0(v8, &qword_100081B38);
    return sub_100050730(v10);
  }

  else if (v16 == enum case for WidgetFamily.accessoryCircular(_:))
  {
    if (v15)
    {
      v18 = *(type metadata accessor for SingleGaugeEntry(0) + 28);
      v26 = 2;
      v27 = *(v1 + v18);
      sub_10004D3C0();
    }

    else
    {
      sub_1000506C8(v1, v19, type metadata accessor for SingleGaugeEntry);
      sub_100050680(&qword_100081B50, type metadata accessor for SingleClimateGaugeViewAccessoryCircular);
    }

    *v6 = sub_100067908();
    swift_storeEnumTagMultiPayload();
    sub_100050680(&qword_100081B48, type metadata accessor for SingleClimateGaugeViewSystemSmall);

    sub_100067648();
    sub_1000095D4(v8, v4, &qword_100081B38);
    swift_storeEnumTagMultiPayload();
    sub_1000505C4();
    sub_100067648();

    return sub_1000096A0(v8, &qword_100081B38);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1000505C4();
    sub_100067648();
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_100050378@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100067528();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000024F4(&qword_1000809C0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SingleClimateGaugeView(0);
  sub_1000095D4(v1 + *(v10 + 20), v9, &qword_1000809C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000679B8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_100067DF8();
    v13 = sub_1000676D8();
    sub_1000672E8();

    sub_100067518();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

unint64_t sub_1000505C4()
{
  result = qword_100081B40;
  if (!qword_100081B40)
  {
    sub_10000253C(&qword_100081B38);
    sub_100050680(&qword_100081B48, type metadata accessor for SingleClimateGaugeViewSystemSmall);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081B40);
  }

  return result;
}

uint64_t sub_100050680(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000506C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100050730(uint64_t a1)
{
  v2 = type metadata accessor for SingleClimateGaugeViewSystemSmall(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000507CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SingleGaugeEntry(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100050850(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SingleGaugeEntry(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_1000508C8()
{
  result = qword_100081C78;
  if (!qword_100081C78)
  {
    sub_10000253C(&qword_100081C80);
    sub_1000505C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081C78);
  }

  return result;
}

uint64_t sub_100050970@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = sub_1000676B8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v43 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1000024F4(&qword_100081C88);
  v40 = *(v44 - 8);
  __chkstk_darwin(v44);
  v38 = &v34 - v5;
  v45 = sub_1000024F4(&qword_100081C90);
  v42 = *(v45 - 8);
  __chkstk_darwin(v45);
  v39 = &v34 - v6;
  v7 = sub_1000024F4(&qword_100081C98);
  v46 = *(v7 - 8);
  __chkstk_darwin(v7);
  v41 = &v34 - v8;
  v9 = sub_1000024F4(&qword_1000810E8);
  __chkstk_darwin(v9 - 8);
  v11 = &v34 - v10;
  v12 = type metadata accessor for SingleGaugeEntry(0);
  v13 = (v1 + *(v12 + 20));
  v14 = v13[3];
  v53 = v13[2];
  v54 = v14;
  v55 = *(v13 + 64);
  v15 = v13[1];
  v51 = *v13;
  v52 = v15;
  v37 = v1 + *(v12 + 28);
  sub_100067738();
  v16 = enum case for Font.Design.default(_:);
  v17 = sub_100067718();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v11, v16, v17);
  (*(v18 + 56))(v11, 0, 1, v17);
  v19 = sub_100067748();
  result = sub_1000096A0(v11, &qword_1000810E8);
  v21 = *&v52;
  if (BYTE8(v52))
  {
    v21 = -1.0;
  }

  v47 = v21;
  if (*&v51 > *(&v51 + 1))
  {
    __break(1u);
  }

  else
  {
    v35 = v7;
    v48 = v51;
    v22 = __chkstk_darwin(result);
    __chkstk_darwin(v22);
    sub_1000024F4(&qword_100081CA0);
    sub_1000024F4(&qword_100081CA8);
    sub_100051B68();
    sub_100051C20();
    sub_100009748();
    v34 = v19;
    v23 = v38;
    sub_100067878();
    v24 = v43;
    sub_1000676A8();
    v25 = sub_1000141C4(&qword_100081CD0, &qword_100081C88);
    v26 = sub_100050680(&qword_100081CD8, &type metadata accessor for AccessoryCircularGaugeStyle);
    v27 = v39;
    v28 = v44;
    sub_1000677F8();
    (*(v3 + 8))(v24, v2);
    (*(v40 + 8))(v23, v28);
    *&v48 = v28;
    *(&v48 + 1) = v2;
    *&v49 = v25;
    *(&v49 + 1) = v26;
    swift_getOpaqueTypeConformance2();
    v29 = v41;
    v30 = v45;
    sub_100067838();
    (*(v42 + 8))(v27, v30);
    sub_100067958();
    sub_100067398();

    v31 = v36;
    (*(v46 + 32))(v36, v29, v35);
    result = sub_1000024F4(&qword_100081CE0);
    v32 = (v31 + *(result + 36));
    v33 = v49;
    *v32 = v48;
    v32[1] = v33;
    v32[2] = v50;
  }

  return result;
}

uint64_t sub_100051060@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = sub_1000676B8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v46 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1000024F4(&qword_100081C88);
  v43 = *(v47 - 8);
  __chkstk_darwin(v47);
  v41 = v36 - v5;
  v6 = sub_1000024F4(&qword_100081C90);
  v45 = *(v6 - 8);
  __chkstk_darwin(v6);
  v42 = v36 - v7;
  v8 = sub_1000024F4(&qword_100081C98);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v44 = v36 - v10;
  v11 = sub_1000024F4(&qword_1000810E8);
  __chkstk_darwin(v11 - 8);
  v13 = v36 - v12;
  v14 = type metadata accessor for SingleGaugeEntry(0);
  v15 = (v1 + *(v14 + 20));
  v16 = v15[3];
  v54 = v15[2];
  v55 = v16;
  v56 = *(v15 + 64);
  v17 = v15[1];
  v52 = *v15;
  v53 = v17;
  v18 = v1 + *(v14 + 28);
  v19 = sub_100067718();
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  v20 = sub_100067748();
  result = sub_1000096A0(v13, &qword_1000810E8);
  v22 = *&v53;
  if (BYTE8(v53))
  {
    v22 = -1.0;
  }

  v48 = v22;
  if (*&v52 > *(&v52 + 1))
  {
    __break(1u);
  }

  else
  {
    v39 = v8;
    v36[0] = v36;
    v49 = v52;
    v23 = __chkstk_darwin(result);
    v38 = v20;
    __chkstk_darwin(v23);
    sub_1000024F4(&qword_100081CA0);
    sub_1000024F4(&qword_100081CA8);
    sub_100051B68();
    sub_100051C20();
    v37 = v6;
    v24 = v2;
    sub_100009748();
    v36[1] = v18;
    v25 = v41;
    sub_100067878();
    v26 = v46;
    sub_1000676A8();
    v27 = sub_1000141C4(&qword_100081CD0, &qword_100081C88);
    v28 = sub_100050680(&qword_100081CD8, &type metadata accessor for AccessoryCircularGaugeStyle);
    v29 = v42;
    v30 = v47;
    sub_1000677F8();
    (*(v3 + 8))(v26, v24);
    (*(v43 + 8))(v25, v30);
    *&v49 = v30;
    *(&v49 + 1) = v24;
    *&v50 = v27;
    *(&v50 + 1) = v28;
    swift_getOpaqueTypeConformance2();
    v31 = v44;
    v32 = v37;
    sub_100067838();
    (*(v45 + 8))(v29, v32);
    sub_100067958();
    sub_100067398();

    v33 = v40;
    (*(v9 + 32))(v40, v31, v39);
    result = sub_1000024F4(&qword_100081CE0);
    v34 = (v33 + *(result + 36));
    v35 = v50;
    *v34 = v49;
    v34[1] = v35;
    v34[2] = v51;
  }

  return result;
}

uint64_t sub_100051700@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{

  v4 = sub_100067888();
  KeyPath = swift_getKeyPath();
  *a2 = v4;
  a2[1] = KeyPath;
  a2[2] = a1;
}

double sub_100051770@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 24))
  {
    *&v35 = 0x9380E29380E2;
    *(&v35 + 1) = 0xA600000000000000;
    sub_1000025E8();
    v3 = sub_1000677B8();
    v5 = v4;
    v7 = v6;
    sub_100067798();
    sub_10004D060(v3, v5, v7 & 1);
  }

  else
  {
    v35 = *(a1 + 32);
    if (*(a1 + 64))
    {
      sub_1000025E8();

      v8 = sub_1000677B8();
      v10 = v9;
      v12 = v11;
      v13 = sub_100067798();
      v33 = v14;
      v34 = v13;
      v32 = v15;
      sub_10004D060(v8, v10, v12 & 1);

      sub_1000675A8();
      v16 = sub_1000677A8();
      v18 = v17;
      v20 = v19;
      sub_100067768();
      v21 = sub_100067798();
      v23 = v22;
      v25 = v24;

      sub_10004D060(v16, v18, v20 & 1);

      sub_100067788();
      sub_10004D060(v21, v23, v25 & 1);

      sub_10004D060(v34, v33, v32 & 1);
    }

    else
    {
      sub_1000025E8();

      v26 = sub_1000677B8();
      v28 = v27;
      v30 = v29;
      sub_100067798();
      sub_10004D060(v26, v28, v30 & 1);
    }

    sub_100067648();
  }

  sub_1000024F4(&qword_100081CC8);
  sub_100051CAC();
  sub_100067648();
  result = *&v35;
  *a2 = v35;
  *(a2 + 16) = v36;
  *(a2 + 32) = v37;
  *(a2 + 33) = v38;
  return result;
}

unint64_t sub_100051B68()
{
  result = qword_100081CB0;
  if (!qword_100081CB0)
  {
    sub_10000253C(&qword_100081CA0);
    sub_1000141C4(&qword_1000811C0, &qword_1000811C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081CB0);
  }

  return result;
}

unint64_t sub_100051C20()
{
  result = qword_100081CB8;
  if (!qword_100081CB8)
  {
    sub_10000253C(&qword_100081CA8);
    sub_100051CAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081CB8);
  }

  return result;
}

unint64_t sub_100051CAC()
{
  result = qword_100081CC0;
  if (!qword_100081CC0)
  {
    sub_10000253C(&qword_100081CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081CC0);
  }

  return result;
}

unint64_t sub_100051D34()
{
  result = qword_100081CE8;
  if (!qword_100081CE8)
  {
    sub_10000253C(&qword_100081CE0);
    sub_10000253C(&qword_100081C90);
    sub_10000253C(&qword_100081C88);
    sub_1000676B8();
    sub_1000141C4(&qword_100081CD0, &qword_100081C88);
    sub_100050680(&qword_100081CD8, &type metadata accessor for AccessoryCircularGaugeStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081CE8);
  }

  return result;
}

uint64_t sub_100051EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SecurityAccessoryEntry();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1000024F4(&qword_100080EA8);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100051FF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SecurityAccessoryEntry();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1000024F4(&qword_100080EA8);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_10005211C()
{
  type metadata accessor for SecurityAccessoryEntry();
  if (v0 <= 0x3F)
  {
    sub_100021104();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000521BC@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v22 = type metadata accessor for SecurityAccessoryViewAccessoryCircular(0);
  __chkstk_darwin(v22);
  v21 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000024F4(&qword_100081D80);
  __chkstk_darwin(v24);
  v4 = &v20 - v3;
  v5 = sub_1000024F4(&qword_100081D88);
  __chkstk_darwin(v5);
  v7 = &v20 - v6;
  v23 = sub_1000024F4(&qword_100081D90);
  __chkstk_darwin(v23);
  v9 = &v20 - v8;
  v10 = type metadata accessor for SecurityAccessoryViewSystemSmall(0);
  __chkstk_darwin(v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000679B8();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100052780(v16);
  v17 = (*(v14 + 88))(v16, v13);
  if (v17 == enum case for WidgetFamily.systemSmall(_:))
  {
    sub_100052B00(v1, v12, type metadata accessor for SecurityAccessoryEntry);
    sub_100052B00(v12, v7, type metadata accessor for SecurityAccessoryViewSystemSmall);
    swift_storeEnumTagMultiPayload();
    sub_100052AB8(&qword_100081DA0, type metadata accessor for SecurityAccessoryViewSystemSmall);
    sub_100052AB8(&qword_100081DA8, type metadata accessor for SecurityAccessoryViewAccessoryCircular);
    sub_100067648();
    sub_1000095D4(v9, v4, &qword_100081D90);
    swift_storeEnumTagMultiPayload();
    sub_1000529CC();
    sub_100067648();
    sub_1000096A0(v9, &qword_100081D90);
    return sub_100052B68(v12, type metadata accessor for SecurityAccessoryViewSystemSmall);
  }

  else if (v17 == enum case for WidgetFamily.accessoryCircular(_:))
  {
    v19 = v21;
    sub_100052B00(v1, v21, type metadata accessor for SecurityAccessoryEntry);
    sub_100052B00(v19, v7, type metadata accessor for SecurityAccessoryViewAccessoryCircular);
    swift_storeEnumTagMultiPayload();
    sub_100052AB8(&qword_100081DA0, type metadata accessor for SecurityAccessoryViewSystemSmall);
    sub_100052AB8(&qword_100081DA8, type metadata accessor for SecurityAccessoryViewAccessoryCircular);
    sub_100067648();
    sub_1000095D4(v9, v4, &qword_100081D90);
    swift_storeEnumTagMultiPayload();
    sub_1000529CC();
    sub_100067648();
    sub_1000096A0(v9, &qword_100081D90);
    return sub_100052B68(v19, type metadata accessor for SecurityAccessoryViewAccessoryCircular);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1000529CC();
    sub_100067648();
    return (*(v14 + 8))(v16, v13);
  }
}

uint64_t sub_100052780@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100067528();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000024F4(&qword_1000809C0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SecurityAccessoryView(0);
  sub_1000095D4(v1 + *(v10 + 20), v9, &qword_1000809C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000679B8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_100067DF8();
    v13 = sub_1000676D8();
    sub_1000672E8();

    sub_100067518();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

unint64_t sub_1000529CC()
{
  result = qword_100081D98;
  if (!qword_100081D98)
  {
    sub_10000253C(&qword_100081D90);
    sub_100052AB8(&qword_100081DA0, type metadata accessor for SecurityAccessoryViewSystemSmall);
    sub_100052AB8(&qword_100081DA8, type metadata accessor for SecurityAccessoryViewAccessoryCircular);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081D98);
  }

  return result;
}

uint64_t sub_100052AB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100052B00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100052B68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100052C0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecurityAccessoryEntry();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100052C90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecurityAccessoryEntry();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100052D00()
{
  result = type metadata accessor for SecurityAccessoryEntry();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100052D70()
{
  result = qword_100081ED0;
  if (!qword_100081ED0)
  {
    sub_10000253C(&qword_100081ED8);
    sub_1000529CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081ED0);
  }

  return result;
}

uint64_t sub_100052E18()
{
  v1 = (v0 + *(type metadata accessor for SecurityAccessoryEntry() + 20));
  v2 = *v1;
  v11[1] = v1[1];
  v11[2] = v1[2];
  v12 = *(v1 + 48);
  v11[0] = v2;
  v3 = sub_100067548();
  v8 = 1;
  sub_100053038(v11, __src);
  memcpy(__dst, __src, 0x141uLL);
  memcpy(v14, __src, 0x141uLL);
  sub_1000095D4(__dst, v6, &qword_100081EE0);
  sub_1000096A0(v14, &qword_100081EE0);
  memcpy(&v7[7], __dst, 0x141uLL);
  v4 = v8;
  sub_100067958();
  sub_100067398();
  *(v9 + 7) = *&v9[7];
  *(&v9[2] + 7) = *&v9[9];
  *(&v9[4] + 7) = v10;
  v6[0] = v3;
  v6[1] = 0;
  LOBYTE(v6[2]) = v4;
  memcpy(&v6[2] + 1, v7, 0x148uLL);
  *(&v6[43] + 1) = *v9;
  *(&v6[45] + 1) = *&v9[2];
  *(&v6[47] + 1) = *&v9[4];
  v6[49] = *(&v10 + 1);
  sub_1000024F4(&qword_100081EE8);
  sub_100054DDC();
  sub_100067808();
  memcpy(__src, v6, sizeof(__src));
  return sub_1000096A0(__src, &qword_100081EE8);
}

uint64_t sub_100053038@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000675D8();
  LOBYTE(__src[0]) = 1;
  sub_10005342C(a1, __dst);
  v30 = *&__dst[192];
  v31[0] = *&__dst[208];
  *(v31 + 9) = *&__dst[217];
  v26 = *&__dst[128];
  v27 = *&__dst[144];
  v28 = *&__dst[160];
  v29 = *&__dst[176];
  v22 = *&__dst[64];
  v23 = *&__dst[80];
  v24 = *&__dst[96];
  v25 = *&__dst[112];
  v18 = *__dst;
  v19 = *&__dst[16];
  v20 = *&__dst[32];
  v21 = *&__dst[48];
  v32[11] = *&__dst[176];
  v32[12] = *&__dst[192];
  v33[0] = *&__dst[208];
  *(v33 + 9) = *&__dst[217];
  v32[8] = *&__dst[128];
  v32[9] = *&__dst[144];
  v32[10] = *&__dst[160];
  v32[4] = *&__dst[64];
  v32[5] = *&__dst[80];
  v32[6] = *&__dst[96];
  v32[7] = *&__dst[112];
  v32[0] = *__dst;
  v32[1] = *&__dst[16];
  v32[2] = *&__dst[32];
  v32[3] = *&__dst[48];
  sub_1000095D4(&v18, v36, &qword_100081F08);
  sub_1000096A0(v32, &qword_100081F08);
  *(&v17[11] + 7) = v29;
  *(&v17[12] + 7) = v30;
  *(&v17[13] + 7) = v31[0];
  v17[14] = *(v31 + 9);
  *(&v17[7] + 7) = v25;
  *(&v17[8] + 7) = v26;
  *(&v17[9] + 7) = v27;
  *(&v17[10] + 7) = v28;
  *(&v17[3] + 7) = v21;
  *(&v17[4] + 7) = v22;
  *(&v17[5] + 7) = v23;
  *(&v17[6] + 7) = v24;
  *(v17 + 7) = v18;
  *(&v17[1] + 7) = v19;
  *(&v17[2] + 7) = v20;
  v5 = __src[0];
  LOBYTE(a1) = sub_1000676E8();
  sub_100067348();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  *(&__src[24] + 1) = v17[11];
  *(&__src[26] + 1) = v17[12];
  *(&__src[28] + 1) = v17[13];
  *(&__src[30] + 1) = v17[14];
  *(&__src[16] + 1) = v17[7];
  *(&__src[18] + 1) = v17[8];
  *(&__src[20] + 1) = v17[9];
  *(&__src[22] + 1) = v17[10];
  *(&__src[8] + 1) = v17[3];
  *(&__src[10] + 1) = v17[4];
  *(&__src[12] + 1) = v17[5];
  *(&__src[14] + 1) = v17[6];
  *(&__src[2] + 1) = v17[0];
  *(&__src[4] + 1) = v17[1];
  __src[0] = v4;
  __src[1] = 0;
  LOBYTE(__src[2]) = v5;
  *(&__src[6] + 1) = v17[2];
  LOBYTE(__src[33]) = a1;
  __src[34] = v6;
  __src[35] = v8;
  __src[36] = v10;
  __src[37] = v12;
  LOBYTE(__src[38]) = 0;
  memcpy(__dst, __src, 0x131uLL);
  v16[312] = 0;
  memcpy(a2, __dst, 0x138uLL);
  v49 = v17[11];
  v50 = v17[12];
  v51 = v17[13];
  v52 = v17[14];
  v45 = v17[7];
  v46 = v17[8];
  v47 = v17[9];
  v48 = v17[10];
  v14 = v17[2];
  v41 = v17[3];
  v42 = v17[4];
  v43 = v17[5];
  v44 = v17[6];
  v38 = v17[0];
  v39 = v17[1];
  *(a2 + 312) = 0;
  *(a2 + 320) = 0;
  v36[0] = v4;
  v36[1] = 0;
  v37 = v5;
  v40 = v14;
  v53 = a1;
  v54 = v7;
  v55 = v9;
  v56 = v11;
  v57 = v13;
  v58 = 0;
  sub_1000095D4(__src, v16, &qword_100081F10);
  return sub_1000096A0(v36, &qword_100081F10);
}

uint64_t sub_10005342C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000024F4(&qword_1000810E8);
  __chkstk_darwin(v4 - 8);
  v6 = v57 - v5;
  v76 = sub_100067548();
  LOBYTE(v94) = 1;
  sub_100053BD0(&v103);
  v74 = v103;
  v79 = v106;
  v80 = v105;
  v77 = v108;
  v78 = v107;
  v75 = v109;
  LOBYTE(v103) = v104;
  LOBYTE(v99) = v109;
  v72 = v94;
  v73 = v104;
  v64 = a1;
  v7 = *a1;
  v8 = a1[1];
  v103 = v7;
  v104 = v8;
  v63 = sub_1000025E8();

  v9 = sub_1000677B8();
  v71 = v10;
  LOBYTE(v8) = v11;
  sub_100067728();
  v12 = enum case for Font.Design.default(_:);
  LODWORD(v61) = enum case for Font.Design.default(_:);
  v13 = sub_100067718();
  v58 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 104);
  v60 = v14 + 104;
  v62 = v15;
  v15(v6, v12, v13);
  v16 = *(v14 + 56);
  v57[1] = v14 + 56;
  v59 = v16;
  v16(v6, 0, 1, v13);
  v57[0] = v6;
  sub_100067748();
  sub_1000096A0(v6, &qword_1000810E8);
  LOBYTE(v13) = v8;
  v17 = v71;
  v18 = sub_100067798();
  v20 = v19;
  LOBYTE(v12) = v21;
  KeyPath = v22;

  sub_10004D060(v9, v17, v13 & 1);

  sub_100067868();
  v65 = sub_100067778();
  v66 = v23;
  v71 = v24;
  v26 = v25;

  sub_10004D060(v18, v20, v12 & 1);

  KeyPath = swift_getKeyPath();
  v69 = swift_getKeyPath();
  v67 = v26 & 1;
  LOBYTE(v103) = v26 & 1;
  v68 = swift_getKeyPath();
  v27 = v64[5];
  v103 = v64[4];
  v104 = v27;

  v28 = sub_1000677B8();
  v30 = v29;
  v32 = v31;
  sub_100067738();
  v33 = v57[0];
  v34 = v58;
  v62(v57[0], v61, v58);
  v59(v33, 0, 1, v34);
  sub_100067748();
  sub_1000096A0(v33, &qword_1000810E8);
  v35 = sub_100067798();
  v61 = v36;
  LOBYTE(v9) = v37;

  sub_10004D060(v28, v30, v32 & 1);

  sub_100067868();
  v38 = v61;
  v39 = sub_100067778();
  v62 = v40;
  v63 = v41;
  LODWORD(v64) = v42;

  sub_10004D060(v35, v38, v9 & 1);

  v43 = swift_getKeyPath();
  v90[0] = v76;
  v90[1] = 0;
  LOBYTE(v91) = v72;
  *(&v91 + 1) = *v89;
  DWORD1(v91) = *&v89[3];
  *(&v91 + 1) = v74;
  LOBYTE(v92) = v73;
  *(&v92 + 1) = *v88;
  DWORD1(v92) = *&v88[3];
  *(&v92 + 1) = v80;
  *&v93[0] = v79;
  *(&v93[0] + 1) = v78;
  *&v93[1] = v77;
  BYTE8(v93[1]) = v75;
  *(v102 + 9) = *(v93 + 9);
  v101 = v92;
  v102[0] = v93[0];
  v99 = v76;
  v100 = v91;
  v84 = 0;
  v45 = v65;
  v44 = v66;
  *&v94 = v65;
  *(&v94 + 1) = v71;
  LOBYTE(v95) = v67;
  DWORD1(v95) = *(v86 + 3);
  *(&v95 + 1) = v86[0];
  *(&v95 + 1) = v66;
  *&v96 = KeyPath;
  BYTE8(v96) = 1;
  HIDWORD(v96) = *&v85[3];
  *(&v96 + 9) = *v85;
  *&v97 = v69;
  BYTE8(v97) = 0;
  HIDWORD(v97) = *&v87[3];
  *(&v97 + 9) = *v87;
  *v98 = v68;
  *&v98[8] = 2;
  v98[16] = 0;
  *&v98[17] = 256;
  *(&v83[1] + 7) = v95;
  *(v83 + 7) = v94;
  *(&v83[5] + 6) = *&v98[15];
  *(&v83[4] + 7) = *v98;
  *(&v83[3] + 7) = v97;
  *(&v83[2] + 7) = v96;
  LOBYTE(v20) = v64 & 1;
  v82 = v64 & 1;
  v81 = 0;
  v46 = v76;
  v47 = v91;
  v48 = v102[1];
  *(a2 + 48) = v93[0];
  *(a2 + 64) = v48;
  v49 = v101;
  *(a2 + 16) = v47;
  *(a2 + 32) = v49;
  *a2 = v46;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v50 = v83[0];
  *(a2 + 105) = v83[1];
  *(a2 + 89) = v50;
  v51 = v83[2];
  v52 = v83[3];
  v53 = v83[4];
  *(a2 + 163) = *(&v83[4] + 10);
  *(a2 + 153) = v53;
  *(a2 + 137) = v52;
  *(a2 + 121) = v51;
  v54 = v62;
  v55 = v63;
  *(a2 + 184) = v39;
  *(a2 + 192) = v54;
  *(a2 + 200) = v20;
  *(a2 + 208) = v55;
  *(a2 + 216) = v43;
  *(a2 + 224) = 1;
  *(a2 + 232) = 0;
  sub_1000095D4(v90, &v103, &qword_100081F18);
  sub_1000095D4(&v94, &v103, &qword_100081F20);
  sub_100055008(v39, v54, v20);

  sub_10004D060(v39, v54, v20);

  v103 = v45;
  v104 = v71;
  LOBYTE(v105) = v67;
  *(&v105 + 1) = v86[0];
  HIDWORD(v105) = *(v86 + 3);
  v106 = v44;
  v107 = KeyPath;
  LOBYTE(v108) = 1;
  *(&v108 + 1) = *v85;
  HIDWORD(v108) = *&v85[3];
  v109 = v69;
  v110 = 0;
  *v111 = *v87;
  *&v111[3] = *&v87[3];
  v112 = v68;
  v113 = 2;
  v114 = 0;
  v115 = 256;
  sub_1000096A0(&v103, &qword_100081F20);
  v116[0] = v76;
  v116[1] = 0;
  v117 = v72;
  *v118 = *v89;
  *&v118[3] = *&v89[3];
  v119 = v74;
  v120 = v73;
  *v121 = *v88;
  *&v121[3] = *&v88[3];
  v122 = v80;
  v123 = v79;
  v124 = v78;
  v125 = v77;
  v126 = v75;
  return sub_1000096A0(v116, &qword_100081F18);
}

uint64_t sub_100053BD0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000024F4(&qword_1000810E8);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_1000024F4(&qword_100081F28);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;

  sub_100067898();
  sub_1000675E8();
  v8 = sub_1000675F8();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = sub_1000678A8();

  sub_1000096A0(v7, &qword_100081F28);
  v10 = sub_100067718();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = sub_100067748();
  sub_1000096A0(v4, &qword_1000810E8);
  result = swift_getKeyPath();
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 24) = result;
  *(a1 + 32) = v11;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_100053DE4()
{
  v1 = sub_100066FB8();
  __chkstk_darwin(v1 - 8);
  v2 = sub_100067B88();
  __chkstk_darwin(v2 - 8);
  v3 = v0 + *(type metadata accessor for SecurityAccessoryEntry() + 20);
  sub_1000025E8();
  if ((sub_100067EC8() & 1) != 0 || (sub_100067EC8() & 1) != 0 || (sub_100067EC8() & 1) != 0 || (sub_100067EC8() & 1) != 0 || (sub_100067EC8() & 1) != 0 || (sub_100067EC8() & 1) == 0)
  {
    v5 = *(v3 + 32);
    v4 = *(v3 + 40);
    v6 = v5 == 0x9380E29380E2 && v4 == 0xA600000000000000;
    if (v6 || (sub_100068168() & 1) != 0)
    {
      sub_100067B98();
      sub_100066FA8();
      sub_100067BE8();
      sub_1000024F4(&qword_1000811F0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_100068BF0;
      sub_100067B38();
      sub_100066FA8();
      v8 = sub_100067BE8();
      v10 = v9;
      *(v7 + 56) = &type metadata for String;
      *(v7 + 64) = sub_10004D0D8();
      *(v7 + 32) = v8;
      *(v7 + 40) = v10;
      sub_100067BB8();
    }

    else
    {
      sub_100067B98();
      sub_100066FA8();
      sub_100067BE8();
      sub_1000024F4(&qword_1000811F0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_100068BF0;
      *(v11 + 56) = &type metadata for String;
      *(v11 + 64) = sub_10004D0D8();
      *(v11 + 32) = v5;
      *(v11 + 40) = v4;

      sub_100067BB8();
    }
  }

  else
  {
    sub_100067B38();
    sub_100066FA8();
    sub_100067BE8();
  }

  return sub_1000677B8();
}

uint64_t sub_10005435C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v37 = sub_100067698();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v30 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1000024F4(&qword_100081F30);
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = v29 - v4;
  v38 = sub_1000024F4(&qword_100081F38);
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v7 = v29 - v6;
  v34 = sub_1000024F4(&qword_100081F40);
  __chkstk_darwin(v34);
  v32 = v29 - v8;
  v9 = sub_1000024F4(&qword_1000809B8);
  __chkstk_darwin(v9 - 8);
  v11 = v29 - v10;
  v12 = v1 + *(type metadata accessor for SecurityAccessoryEntry() + 20);
  v75 = *(v12 + 48);
  v13 = *(v12 + 32);
  v74[1] = *(v12 + 16);
  v74[2] = v13;
  v74[0] = *v12;
  if (qword_100080778 != -1)
  {
    swift_once();
  }

  sub_100014FA4();
  sub_100066ED8();
  v14 = sub_100067958();
  v16 = v15;
  sub_1000549C8(v74, &v63);
  v57 = v69;
  v58 = v70;
  v59 = v71;
  v53 = v65;
  v54 = v66;
  v55 = v67;
  v56 = v68;
  v51 = v63;
  v52 = v64;
  v61[6] = v69;
  v61[7] = v70;
  v61[8] = v71;
  v61[2] = v65;
  v61[3] = v66;
  v61[4] = v67;
  v61[5] = v68;
  v60 = v72;
  v62 = v72;
  v61[0] = v63;
  v61[1] = v64;
  v29[1] = v2;
  sub_1000095D4(&v51, &v40, &qword_100081F48);
  sub_1000096A0(v61, &qword_100081F48);
  v47 = v57;
  v48 = v58;
  v49 = v59;
  v50 = v60;
  v43 = v53;
  v44 = v54;
  v45 = v55;
  v46 = v56;
  v41 = v51;
  v42 = v52;
  *&v40 = v14;
  *(&v40 + 1) = v16;
  v17 = sub_1000024F4(&qword_100081F50);
  v18 = sub_1000141C4(&qword_100081F58, &qword_100081F50);
  sub_1000677C8();
  v71 = v48;
  v72 = v49;
  v73 = v50;
  v67 = v44;
  v68 = v45;
  v69 = v46;
  v70 = v47;
  v63 = v40;
  v64 = v41;
  v65 = v42;
  v66 = v43;
  sub_1000096A0(&v63, &qword_100081F50);
  v19 = v30;
  sub_100067678();
  *&v40 = v17;
  *(&v40 + 1) = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v33;
  sub_100067848();
  (*(v35 + 8))(v19, v37);
  (*(v31 + 8))(v5, v21);
  v22 = sub_100053DE4();
  v24 = v23;
  LOBYTE(v18) = v25;
  *&v40 = v21;
  *(&v40 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v26 = v32;
  v27 = v38;
  sub_100067828();
  sub_10004D060(v22, v24, v18 & 1);

  (*(v36 + 8))(v7, v27);
  sub_100067428();
  sub_1000096A0(v26, &qword_100081F40);
  return sub_1000096A0(v11, &qword_1000809B8);
}

uint64_t sub_1000549C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000024F4(&qword_1000810E8);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - v5;
  v7 = sub_1000024F4(&qword_100081F28);
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - v8;
  v40 = sub_100067668();
  if (*(a1 + 48))
  {
    v10 = 0.2;
  }

  else
  {
    v10 = 1.0;
  }

  sub_100067368();
  v11 = v70;
  v12 = v71;
  v37 = v72;
  v13 = v73;
  v36 = v74;
  v14 = v75;
  v15 = sub_100067958();
  v38 = v16;
  v39 = v15;
  type metadata accessor for SecurityAccessoryEntry();
  sub_100067958();
  sub_100067398();

  sub_100067898();
  sub_1000675E8();
  v17 = sub_1000675F8();
  (*(*(v17 - 8) + 56))(v9, 0, 1, v17);
  v35 = sub_1000678A8();

  sub_1000096A0(v9, &qword_100081F28);
  sub_100067738();
  v18 = sub_100067718();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  v19 = sub_100067748();
  sub_1000096A0(v6, &qword_1000810E8);
  KeyPath = swift_getKeyPath();
  *&v46 = v11 * 0.5;
  *(&v46 + 1) = v11;
  v21 = v12;
  v22 = v37;
  *&v47 = __PAIR64__(v37, v12);
  *(&v47 + 1) = v13;
  v23 = v36;
  *&v48 = v36;
  *(&v48 + 1) = v14;
  v24 = v40;
  *&v49 = __PAIR64__(LODWORD(v10), v40);
  WORD4(v49) = 256;
  HIWORD(v49) = v45;
  *(&v49 + 10) = v44;
  v25 = v38;
  v26 = v39;
  *&v50 = v39;
  *(&v50 + 1) = v38;
  v52 = v42;
  v53 = v43;
  v51 = v41;
  v27 = v46;
  v28 = v47;
  v29 = v49;
  *(a2 + 32) = v48;
  *(a2 + 48) = v29;
  *a2 = v27;
  *(a2 + 16) = v28;
  v30 = v50;
  v31 = v51;
  v32 = v53;
  *(a2 + 96) = v52;
  *(a2 + 112) = v32;
  *(a2 + 64) = v30;
  *(a2 + 80) = v31;
  *(a2 + 128) = v35;
  *(a2 + 136) = KeyPath;
  *(a2 + 144) = v19;
  sub_1000095D4(&v46, v54, &qword_100081F60);
  v54[0] = v11 * 0.5;
  v54[1] = v11;
  v55 = v21;
  v56 = v22;
  v57 = v13;
  v58 = v23;
  v59 = v14;
  v60 = v24;
  v61 = v10;
  v62 = 256;
  v63 = v44;
  v64 = v45;
  v65 = v26;
  v66 = v25;
  v67 = v41;
  v68 = v42;
  v69 = v43;
  return sub_1000096A0(v54, &qword_100081F60);
}

unint64_t sub_100054DDC()
{
  result = qword_100081EF0;
  if (!qword_100081EF0)
  {
    sub_10000253C(&qword_100081EE8);
    sub_1000141C4(&qword_100081EF8, &qword_100081F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081EF0);
  }

  return result;
}

uint64_t sub_100054E94@<X0>(uint64_t a1@<X8>)
{
  result = sub_1000674F8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100054EF8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100067468();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100054F50@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000674A8();
  *a1 = result;
  return result;
}

uint64_t sub_100054FA4@<X0>(uint64_t a1@<X8>)
{
  result = sub_1000674F8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100055008(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_100055024()
{
  result = qword_100081F68;
  if (!qword_100081F68)
  {
    sub_10000253C(&qword_100081F70);
    sub_100054DDC();
    sub_100052AB8(&qword_100080A08, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081F68);
  }

  return result;
}

unint64_t sub_1000550E4()
{
  result = qword_100081F78;
  if (!qword_100081F78)
  {
    sub_10000253C(&qword_100081F40);
    sub_10000253C(&qword_100081F30);
    sub_10000253C(&qword_100081F50);
    sub_1000141C4(&qword_100081F58, &qword_100081F50);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100052AB8(&qword_100080A08, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081F78);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for BlockoutCirculeView(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BlockoutCirculeView(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[24])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for BlockoutCirculeView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_100055328@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v23 = a1;
  v26 = a2;
  v3 = sub_100067698();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1000024F4(&qword_100081F80);
  v24 = *(v7 - 8);
  v25 = v7;
  __chkstk_darwin(v7);
  v9 = &v22[-v8];
  v10 = sub_100067548();
  v31 = 1;
  sub_1000556E8(v2, &v40);
  v34 = v42;
  v35 = v43;
  v36 = v44;
  v37 = v45;
  v32 = v40;
  v33 = v41;
  v39 = v45;
  v38[2] = v42;
  v38[3] = v43;
  v38[4] = v44;
  v38[0] = v40;
  v38[1] = v41;
  sub_100056988(&v32, &v27);
  sub_1000096A0(v38, &qword_100081F88);
  *&v30[39] = v34;
  *&v30[55] = v35;
  *&v30[71] = v36;
  v30[87] = v37;
  *&v30[7] = v32;
  *&v30[23] = v33;
  v11 = v31;
  v12 = sub_100067868();
  KeyPath = swift_getKeyPath();
  *(&v28[2] + 1) = *&v30[32];
  *(&v28[3] + 1) = *&v30[48];
  *(&v28[4] + 1) = *&v30[64];
  *(v28 + 1) = *v30;
  v27 = v10;
  LOBYTE(v28[0]) = v11;
  *(&v28[5] + 1) = *&v30[80];
  *(&v28[1] + 1) = *&v30[16];
  *&v29 = KeyPath;
  *(&v29 + 1) = v12;
  sub_100067688();
  v14 = sub_1000024F4(&qword_100081F90);
  v15 = sub_100056A00();
  sub_100067848();
  (*(v4 + 8))(v6, v3);
  v44 = v28[3];
  v45 = v28[4];
  v46 = v28[5];
  v47 = v29;
  v40 = v27;
  v41 = v28[0];
  v42 = v28[1];
  v43 = v28[2];
  sub_1000096A0(&v40, &qword_100081F90);
  *&v27 = 0;
  *(&v27 + 1) = 0xE000000000000000;
  sub_100068038(36);

  v16._countAndFlagsBits = 0xD00000000000001CLL;
  *&v27 = 0xD000000000000022;
  *(&v27 + 1) = 0x800000010006D8E0;
  if (!v23)
  {
    v16._countAndFlagsBits = 0xD00000000000002BLL;
    v18 = "NoAccessOutsideOfScheduleForRestrictedGuest";
LABEL_6:
    v17 = v18 - 32;
    goto LABEL_7;
  }

  if (v23 != 1)
  {
    v18 = "AppleHomeUpdateToHH2Required";
    goto LABEL_6;
  }

  v17 = "AppleHomeUpdateToHH2Required";
  v16._countAndFlagsBits = 0xD000000000000026;
LABEL_7:
  v19 = v25;
  v20 = v24;
  v16._object = (v17 | 0x8000000000000000);
  sub_100067C48(v16);

  *&v27 = v14;
  *(&v27 + 1) = v15;
  swift_getOpaqueTypeConformance2();
  sub_100067858();

  return (*(v20 + 8))(v9, v19);
}

uint64_t sub_1000556E8@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1000675D8();
  sub_1000557B4(a1, v12);
  v5 = v12[0];
  v6 = v12[1];
  v7 = v13;
  v9 = v14;
  v8 = v15;
  v10 = v16;
  LOBYTE(v12[0]) = 0;
  v18 = v13;
  v17 = v16;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 48) = v9;
  *(a2 + 56) = v8;
  *(a2 + 64) = v10;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  sub_100055008(v5, v6, v7);

  sub_10004D060(v5, v6, v7);
}

uint64_t sub_1000557B4@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_100067598();
  __chkstk_darwin(v4 - 8);
  sub_100067588();
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_100067578(v12);
  sub_100067888();
  sub_100067558();

  v13._countAndFlagsBits = 32;
  v13._object = 0xE100000000000000;
  sub_100067578(v13);
  v14._countAndFlagsBits = sub_100055924(a1);
  sub_100067568(v14);

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_100067578(v15);
  sub_1000675B8();
  v5 = sub_1000677A8();
  v7 = v6;
  *a2 = v5;
  *(a2 + 8) = v6;
  v9 = v8 & 1;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v10;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  sub_100055008(v5, v6, v8 & 1);

  sub_10004D060(v5, v7, v9);
}

uint64_t sub_100055924(unsigned __int8 a1)
{
  v1 = a1;
  v2 = sub_100066FB8();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100067B88();
  __chkstk_darwin(v3 - 8);
  if (v1 != 2)
  {
    return 0;
  }

  sub_100067B38();
  v4 = sub_100067BA8();
  v5 = [objc_opt_self() bundleWithIdentifier:v4];

  sub_100066FA8();
  return sub_100067BE8();
}

uint64_t sub_100055AAC()
{
  v0 = sub_100066FB8();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100067B88();
  __chkstk_darwin(v1 - 8);
  sub_1000025E8();
  if (sub_100067EC8() & 1) != 0 || (sub_100067EC8())
  {
  }

  else
  {
    v2 = sub_100067EC8();

    if ((v2 & 1) == 0)
    {
      return sub_1000677B8();
    }
  }

  sub_100067B38();
  sub_100066FA8();
  sub_100067BE8();
  return sub_1000677B8();
}

uint64_t sub_100055D50@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v30[1] = a1;
  v2 = sub_100067698();
  v38 = *(v2 - 8);
  v39 = v2;
  __chkstk_darwin(v2);
  v34 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000024F4(&qword_1000809B8);
  __chkstk_darwin(v4 - 8);
  v6 = v30 - v5;
  v7 = sub_1000024F4(&qword_100081F30);
  v8 = *(v7 - 8);
  v32 = v7;
  v33 = v8;
  __chkstk_darwin(v7);
  v10 = v30 - v9;
  v35 = sub_1000024F4(&qword_100081F38);
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v31 = v30 - v11;
  v36 = sub_1000024F4(&qword_100081F40);
  __chkstk_darwin(v36);
  v13 = v30 - v12;
  v14 = sub_100067958();
  v16 = v15;
  sub_100056418(&v45);
  v62 = v51;
  v63 = v52;
  v64 = v53;
  v58 = v47;
  v59 = v48;
  v60 = v49;
  v61 = v50;
  v56 = v45;
  v57 = v46;
  v66[6] = v51;
  v66[7] = v52;
  v66[8] = v53;
  v66[2] = v47;
  v66[3] = v48;
  v66[4] = v49;
  v66[5] = v50;
  v65 = v54;
  v67 = v54;
  v66[0] = v45;
  v66[1] = v46;
  sub_1000095D4(&v56, v43, &qword_100081F48);
  sub_1000096A0(v66, &qword_100081F48);
  v52 = v62;
  v53 = v63;
  v54 = v64;
  v55 = v65;
  v48 = v58;
  v49 = v59;
  v50 = v60;
  v51 = v61;
  v46 = v56;
  v47 = v57;
  *&v45 = v14;
  *(&v45 + 1) = v16;
  sub_100066ED8();

  v17 = sub_1000024F4(&qword_100081F50);
  v18 = sub_1000141C4(&qword_100081F58, &qword_100081F50);
  sub_1000677C8();
  sub_1000096A0(v6, &qword_1000809B8);
  v43[7] = v52;
  v43[8] = v53;
  v43[9] = v54;
  v44 = v55;
  v43[4] = v49;
  v43[5] = v50;
  v43[6] = v51;
  v43[0] = v45;
  v43[1] = v46;
  v43[2] = v47;
  v43[3] = v48;
  sub_1000096A0(v43, &qword_100081F50);
  v19 = v34;
  sub_100067678();
  v41 = v17;
  v42 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v31;
  v21 = v32;
  sub_100067848();
  (*(v38 + 8))(v19, v39);
  v23 = v21;
  (*(v33 + 8))(v10, v21);
  v24 = sub_100055AAC();
  v26 = v25;
  LOBYTE(v21) = v27;
  v41 = v23;
  v42 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v28 = v35;
  sub_100067828();
  sub_10004D060(v24, v26, v21 & 1);

  (*(v37 + 8))(v22, v28);
  sub_100067428();
  return sub_1000096A0(v13, &qword_100081F40);
}

uint64_t sub_100056418@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000024F4(&qword_1000810E8);
  __chkstk_darwin(v2 - 8);
  v4 = &v32 - v3;
  v5 = sub_1000024F4(&qword_100081F28);
  __chkstk_darwin(v5 - 8);
  v7 = &v32 - v6;
  v36 = sub_100067668();
  sub_100067368();
  v8 = v61;
  v9 = v62;
  v10 = v63;
  v11 = v64;
  v33 = v65;
  v12 = v66;
  v13 = sub_100067958();
  v34 = v14;
  v35 = v13;
  sub_100067958();
  sub_100067398();
  sub_100067898();
  sub_1000675E8();
  v15 = sub_1000675F8();
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v32 = sub_1000678A8();

  sub_1000096A0(v7, &qword_100081F28);
  sub_100067738();
  v16 = sub_100067718();
  (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
  v17 = sub_100067748();
  sub_1000096A0(v4, &qword_1000810E8);
  KeyPath = swift_getKeyPath();
  *&v37 = v8 * 0.5;
  *(&v37 + 1) = v8;
  *&v38 = __PAIR64__(v10, v9);
  *(&v38 + 1) = v11;
  v20 = v33;
  v19 = v34;
  *&v39 = v33;
  *(&v39 + 1) = v12;
  v21 = v9;
  v22 = v36;
  *&v40 = v36 | 0x3F80000000000000;
  WORD4(v40) = 256;
  HIWORD(v40) = v71;
  *(&v40 + 10) = v70;
  v23 = v10;
  v24 = v35;
  *&v41 = v35;
  *(&v41 + 1) = v34;
  v44 = v69;
  v43 = v68;
  v42 = v67;
  v25 = v37;
  v26 = v38;
  v27 = v40;
  *(a1 + 32) = v39;
  *(a1 + 48) = v27;
  *a1 = v25;
  *(a1 + 16) = v26;
  v28 = v41;
  v29 = v42;
  v30 = v44;
  *(a1 + 96) = v43;
  *(a1 + 112) = v30;
  *(a1 + 64) = v28;
  *(a1 + 80) = v29;
  *(a1 + 128) = v32;
  *(a1 + 136) = KeyPath;
  *(a1 + 144) = v17;
  sub_1000095D4(&v37, v45, &qword_100081F60);
  v45[0] = v8 * 0.5;
  v45[1] = v8;
  v46 = v21;
  v47 = v23;
  v48 = v11;
  v49 = v20;
  v50 = v12;
  v51 = v22;
  v52 = 1065353216;
  v53 = 256;
  v54 = v70;
  v55 = v71;
  v56 = v24;
  v57 = v19;
  v60 = v69;
  v59 = v68;
  v58 = v67;
  return sub_1000096A0(v45, &qword_100081F60);
}

uint64_t sub_100056850@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000674C8();
  *a1 = result;
  return result;
}

uint64_t sub_10005687C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000674C8();
  *a1 = result;
  return result;
}

unint64_t sub_100056904()
{
  result = qword_100080A08;
  if (!qword_100080A08)
  {
    sub_1000676C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100080A08);
  }

  return result;
}

uint64_t sub_100056988(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024F4(&qword_100081F88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100056A00()
{
  result = qword_100081F98;
  if (!qword_100081F98)
  {
    sub_10000253C(&qword_100081F90);
    sub_1000141C4(&qword_100081FA0, &qword_100081FA8);
    sub_1000141C4(&qword_100081158, &qword_100081160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081F98);
  }

  return result;
}

unint64_t sub_100056AE8()
{
  result = qword_100081FB0;
  if (!qword_100081FB0)
  {
    sub_10000253C(&qword_100081FB8);
    sub_10000253C(&qword_100081F90);
    sub_100056A00();
    swift_getOpaqueTypeConformance2();
    sub_100056904();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081FB0);
  }

  return result;
}

uint64_t sub_100056BB0(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_100056BE8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = 0;
  v7 = *(a2 + 16);
  do
  {
    if (v7 == v6)
    {
      return a1;
    }

    v11 = *(sub_1000670C8() - 8);
    v12 = *(v11 + 80);
    v13 = *(v11 + 72);
    swift_beginAccess();
    v14 = *a3;
    if (*(*a3 + 16) && (v15 = sub_100045CA4(a2 + ((v12 + 32) & ~v12) + v13 * v6), (v16 & 1) != 0))
    {
      v8 = *(*(v14 + 56) + 8 * v15);
    }

    else
    {
      v8 = 0;
    }

    result = swift_endAccess();
    ++v6;
    v10 = __OFADD__(a1, v8);
    a1 += v8;
  }

  while (!v10);
  __break(1u);
  return result;
}

uint64_t sub_100056D00(uint64_t result, uint64_t *a2)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = result;
  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  do
  {
    for (i = v6; ; ++i)
    {
      if (i >= v3)
      {
        __break(1u);
LABEL_21:
        __break(1u);
        return result;
      }

      v9 = sub_1000670C8();
      v11 = *(v9 - 8);
      result = v9 - 8;
      v10 = v11;
      v6 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_21;
      }

      sub_10005BC58(v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * i, a2, &v28);
      if (v2)
      {

        return v7;
      }

      v12 = v29;
      if (v29)
      {
        break;
      }

      result = sub_10001A41C(v28, 0);
      if (v6 == v3)
      {
        return v7;
      }
    }

    v35 = v28;
    v26 = v31;
    v27 = v30;
    v25 = v32;
    v13 = v33;
    v24 = v34;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10004E6D4(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v15 = *(v7 + 2);
    v14 = *(v7 + 3);
    v16 = v15 + 1;
    v17 = v24;
    v18 = v25;
    v19 = v26;
    v20 = v27;
    v21 = v35;
    if (v15 >= v14 >> 1)
    {
      result = sub_10004E6D4((v14 > 1), v15 + 1, 1, v7);
      v16 = v15 + 1;
      v19 = v26;
      v20 = v27;
      v18 = v25;
      v22 = v13;
      v17 = v24;
      v7 = result;
      v21 = v35;
    }

    else
    {
      v22 = v13;
    }

    *(v7 + 2) = v16;
    v23 = &v7[7 * v15];
    *(v23 + 4) = v21;
    *(v23 + 5) = v12;
    *(v23 + 6) = v20;
    *(v23 + 7) = v19;
    *(v23 + 8) = v18;
    *(v23 + 9) = v22;
    *(v23 + 80) = v17 & 1;
  }

  while (v6 != v3);
  return v7;
}

uint64_t sub_100056EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[109] = v4;
  v5[108] = a4;
  v5[107] = a3;
  v5[106] = a2;
  v5[105] = a1;
  return _swift_task_switch(sub_100056F20, 0, 0);
}

uint64_t sub_100056F20()
{
  v27 = v0;
  if (qword_100080798 != -1)
  {
    swift_once();
  }

  v1 = v0[105];
  v2 = sub_100067318();
  sub_1000026A8(v2, qword_100085CD0);
  v3 = v1;

  v4 = sub_1000672F8();
  v5 = sub_100067E08();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[107];
    v7 = v0[106];
    v8 = v0[105];
    v9 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v9 = 136315650;
    *(v9 + 4) = sub_10000D4F0(v7, v6, &v26);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_10000D4F0(0xD000000000000029, 0x800000010006DC50, &v26);
    *(v9 + 22) = 2080;
    if (v8)
    {
      v10 = [v3 name];
      v11 = sub_100067BC8();
      v13 = v12;
    }

    else
    {
      v13 = 0xE900000000000065;
      v11 = 0x6D6F68206C6C756ELL;
    }

    v14 = sub_10000D4F0(v11, v13, &v26);

    *(v9 + 24) = v14;
    swift_arrayDestroy();
  }

  if (v0[105])
  {
    v15 = qword_100080850;
    v16 = v3;
    if (v15 != -1)
    {
      v25 = v16;
      swift_once();
      v16 = v25;
    }

    v17 = qword_100085EE8;
    v18 = v16;
    v19 = swift_task_alloc();
    v0[110] = v19;
    *v19 = v0;
    v19[1] = sub_10005725C;
    v20 = v0[107];
    v21 = v0[106];
    v22 = v0[105];

    return LockScreenDataModel.reloadCharacteristics(matching:for:fetchId:)(v17, v22, v21, v20);
  }

  else
  {
    v24 = v0[1];

    return v24(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_10005725C(uint64_t a1)
{
  *(*v1 + 888) = a1;

  return _swift_task_switch(sub_10005735C, 0, 0);
}

uint64_t sub_10005735C()
{
  v187 = v0;
  v184 = sub_10005EBA4(_swiftEmptyArrayStorage);
  *(v0 + 664) = sub_10005EC84(_swiftEmptyArrayStorage);
  if (qword_100080858 != -1)
  {
    goto LABEL_59;
  }

  while (1)
  {
    v1 = *(v0 + 840);
    v2 = qword_100085F20;
    v4 = xmmword_100085F00;
    v3 = *&qword_100085F10;
    *(v0 + 16) = xmmword_100085EF0;
    *(v0 + 32) = v4;
    *(v0 + 48) = v3;
    *(v0 + 64) = v2;
    v5 = [v1 accessories];
    sub_100009700(0, &qword_100080A10);
    v6 = sub_100067CA8();

    *(v0 + 432) = *(v0 + 16);
    v7 = *(v0 + 40);
    *(v0 + 832) = *(v0 + 32);
    *(v0 + 608) = v7;
    v8 = *(v0 + 56);
    *(v0 + 640) = *(v0 + 48);
    sub_100009578(v0 + 432, v0 + 528);
    sub_1000095D4(v0 + 832, v0 + 680, &qword_100080A18);
    sub_1000095D4(v0 + 608, v0 + 688, &qword_100080A18);
    sub_1000095D4(v0 + 640, v0 + 696, &qword_100080A20);
    sub_1000026E0(v8);
    v9 = 0;
    v10 = sub_1000126F8(v6, v0 + 16);
    sub_10000963C(v0 + 432);
    sub_1000096A0(v0 + 832, &qword_100080A18);
    sub_1000096A0(v0 + 608, &qword_100080A18);
    sub_1000096A0(v0 + 640, &qword_100080A20);
    sub_100009690(v8);

    if (v10 >> 62)
    {
      v11 = sub_1000680C8();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v0 + 664;

    if (v11)
    {
      v13 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v14 = sub_100068058();
        }

        else
        {
          if (v13 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_52;
          }

          v14 = *(v10 + 8 * v13 + 32);
        }

        v15 = v14;
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        v17 = *(v0 + 888);
        v18 = *(v0 + 856);
        v19 = *(v0 + 848);
        v186[0] = v14;
        sub_1000589A0(v186, v19, v18, v17, (v0 + 664), &v184);

        ++v13;
        if (v16 == v11)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

LABEL_13:

    if (qword_100080860 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 840);
    v21 = *&qword_100085F38;
    *(v0 + 240) = xmmword_100085F28;
    *(v0 + 256) = v21;
    *(v0 + 272) = xmmword_100085F48;
    *(v0 + 288) = qword_100085F58;
    v22 = [v20 accessories];
    v23 = sub_100067CA8();

    *(v0 + 544) = *(v0 + 240);
    v24 = *(v0 + 264);
    *(v0 + 672) = *(v0 + 256);
    *(v0 + 704) = v24;
    v25 = *(v0 + 280);
    *(v0 + 736) = *(v0 + 272);
    sub_100009578(v0 + 544, v0 + 512);
    sub_1000095D4(v0 + 672, v0 + 712, &qword_100080A18);
    sub_1000095D4(v0 + 704, v0 + 720, &qword_100080A18);
    sub_1000095D4(v0 + 736, v0 + 728, &qword_100080A20);
    sub_1000026E0(v25);
    v26 = sub_1000126F8(v23, v0 + 240);
    sub_10000963C(v0 + 544);
    sub_1000096A0(v0 + 672, &qword_100080A18);
    sub_1000096A0(v0 + 704, &qword_100080A18);
    sub_1000096A0(v0 + 736, &qword_100080A20);
    sub_100009690(v25);

    if (v26 >> 62)
    {
      v27 = sub_1000680C8();
    }

    else
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v27)
    {
      v28 = 0;
      do
      {
        if ((v26 & 0xC000000000000001) != 0)
        {
          v29 = sub_100068058();
        }

        else
        {
          if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_54;
          }

          v29 = *(v26 + 8 * v28 + 32);
        }

        v30 = v29;
        v31 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_53;
        }

        v32 = *(v0 + 888);
        v33 = *(v0 + 856);
        v34 = *(v0 + 848);
        v186[0] = v29;
        sub_1000591E4(v186, v34, v33, v32, (v0 + 664), &v184);

        ++v28;
      }

      while (v31 != v27);
    }

    if (qword_100080868 != -1)
    {
      swift_once();
    }

    v35 = *(v0 + 840);
    v36 = *&qword_100085F70;
    *(v0 + 184) = xmmword_100085F60;
    *(v0 + 200) = v36;
    *(v0 + 216) = xmmword_100085F80;
    *(v0 + 232) = qword_100085F90;
    v37 = [v35 accessories];
    v38 = sub_100067CA8();

    *(v0 + 480) = *(v0 + 184);
    v39 = *(v0 + 208);
    *(v0 + 768) = *(v0 + 200);
    *(v0 + 800) = v39;
    v40 = *(v0 + 224);
    *(v0 + 592) = *(v0 + 216);
    sub_100009578(v0 + 480, v0 + 496);
    sub_1000095D4(v0 + 768, v0 + 744, &qword_100080A18);
    sub_1000095D4(v0 + 800, v0 + 752, &qword_100080A18);
    sub_1000095D4(v0 + 592, v0 + 760, &qword_100080A20);
    sub_1000026E0(v40);
    v41 = sub_1000126F8(v38, v0 + 184);
    sub_10000963C(v0 + 480);
    sub_1000096A0(v0 + 768, &qword_100080A18);
    sub_1000096A0(v0 + 800, &qword_100080A18);
    sub_1000096A0(v0 + 592, &qword_100080A20);
    sub_100009690(v40);

    if (v41 >> 62)
    {
      v42 = sub_1000680C8();
    }

    else
    {
      v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v42)
    {
      v43 = 0;
      do
      {
        if ((v41 & 0xC000000000000001) != 0)
        {
          v44 = sub_100068058();
        }

        else
        {
          if (v43 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_56;
          }

          v44 = *(v41 + 8 * v43 + 32);
        }

        v45 = v44;
        v46 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          goto LABEL_55;
        }

        v47 = *(v0 + 888);
        v48 = *(v0 + 856);
        v49 = *(v0 + 848);
        v186[0] = v44;
        sub_10005A020(v186, v49, v48, v47, (v0 + 664), &v184);

        ++v43;
      }

      while (v46 != v42);
    }

    if (qword_100080870 != -1)
    {
      swift_once();
    }

    v50 = *(v0 + 840);
    v51 = *&qword_100085FA8;
    *(v0 + 128) = xmmword_100085F98;
    *(v0 + 144) = v51;
    *(v0 + 160) = xmmword_100085FB8;
    *(v0 + 176) = qword_100085FC8;
    v52 = [v50 accessories];
    v53 = sub_100067CA8();

    v54 = *(v0 + 144);
    *(v0 + 576) = *(v0 + 128);
    *(v0 + 616) = v54;
    v55 = *(v0 + 168);
    *(v0 + 632) = *(v0 + 160);
    v56 = *(v0 + 176);
    sub_100009578(v0 + 576, v0 + 464);
    sub_1000095D4(v0 + 616, v0 + 776, &qword_100080A18);
    sub_1000095D4(v0 + 624, v0 + 784, &qword_100080A18);
    sub_1000095D4(v0 + 632, v0 + 792, &qword_100080A20);
    sub_1000026E0(v55);
    v57 = sub_1000126F8(v53, v0 + 128);
    sub_10000963C(v0 + 576);
    sub_1000096A0(v0 + 616, &qword_100080A18);
    sub_1000096A0(v0 + 624, &qword_100080A18);
    sub_1000096A0(v0 + 632, &qword_100080A20);
    sub_100009690(v55);

    v185 = 0;
    if (!(v57 >> 62))
    {
      v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v58)
      {
        break;
      }

      goto LABEL_43;
    }

    v58 = sub_1000680C8();
    if (!v58)
    {
      break;
    }

LABEL_43:
    v59 = 0;
    while (1)
    {
      if ((v57 & 0xC000000000000001) != 0)
      {
        v60 = sub_100068058();
      }

      else
      {
        if (v59 >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v60 = *(v57 + 8 * v59 + 32);
      }

      v61 = v60;
      v56 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        break;
      }

      v62 = *(v0 + 888);
      v63 = *(v0 + 856);
      v64 = *(v0 + 848);
      v186[0] = v60;
      sub_10005AD2C(&v185, v186, v64, v63, v62, (v0 + 664));

      ++v59;
      if (v56 == v58)
      {
        v65 = v185;
        goto LABEL_65;
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
  }

  v65 = 0;
LABEL_65:

  v66 = v184;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v186[0] = v66;
  v68 = sub_100045C38(3u);
  v70 = v66[2];
  v71 = (v69 & 1) == 0;
  v72 = __OFADD__(v70, v71);
  v73 = v70 + v71;
  if (v72)
  {
    goto LABEL_94;
  }

  LOBYTE(v74) = v69;
  if (v66[3] >= v73)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_70;
    }

LABEL_184:
    v167 = v68;
    sub_100046D00();
    v68 = v167;
    v66 = v186[0];
    v184 = v186[0];
    if ((v74 & 1) == 0)
    {
LABEL_71:
      v76 = v68;
      sub_10004693C(v68, 3, 0, v66);
      v68 = v76;
    }
  }

  else
  {
    sub_100045F20(v73, isUniquelyReferenced_nonNull_native);
    v66 = v186[0];
    v68 = sub_100045C38(3u);
    if ((v74 & 1) != (v75 & 1))
    {
LABEL_131:

      return sub_100068198();
    }

LABEL_70:
    v184 = v66;
    if ((v74 & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  v56 = v0 + 648;
  v175 = v66;
  *(v66[7] + 8 * v68) = v65;
  if (qword_100080878 != -1)
  {
    goto LABEL_95;
  }

  while (2)
  {
    v77 = *(v0 + 840);
    v178 = v77;
    v78 = *&qword_100085FE0;
    *(v0 + 72) = xmmword_100085FD0;
    *(v0 + 88) = v78;
    *(v0 + 104) = xmmword_100085FF0;
    *(v0 + 120) = qword_100086000;
    v79 = [v77 accessories];
    v181 = sub_100067CA8();

    *(v0 + 560) = *(v0 + 72);
    *v56 = *(v0 + 88);
    v80 = *(v0 + 112);
    *(v0 + 600) = *(v0 + 104);
    sub_100009578(v0 + 560, v0 + 448);
    sub_1000095D4(v56, v0 + 808, &qword_100080A18);
    sub_1000095D4(v0 + 656, v0 + 816, &qword_100080A18);
    sub_1000095D4(v0 + 600, v0 + 824, &qword_100080A20);
    sub_1000026E0(v80);
    v81 = sub_1000126F8(v181, v0 + 72);
    sub_10000963C(v0 + 560);
    sub_1000096A0(v56, &qword_100080A18);
    sub_1000096A0(v0 + 656, &qword_100080A18);
    sub_1000096A0(v0 + 600, &qword_100080A20);
    sub_100009690(v80);
    v82 = v81;

    v185 = _swiftEmptyArrayStorage;
    if (!(v81 >> 62))
    {
      v83 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v84 = v175;
      if (!v83)
      {
        goto LABEL_97;
      }

LABEL_75:
      v182 = v81 & 0xC000000000000001;
      if ((v81 & 0xC000000000000001) != 0)
      {
        v85 = sub_100068058();
LABEL_78:
        v86 = v85;
        v87 = *(v0 + 888);
        v88 = *(v0 + 856);
        v89 = *(v0 + 848);
        v186[0] = v85;
        sub_10005B498(&v185, v186, v89, v88, v87, (v0 + 664));
        if (v9)
        {
        }

        if (v83 == 1)
        {
LABEL_83:
          v170 = 0;
          v183 = 0;
          v74 = v185;
          goto LABEL_98;
        }

        v56 = 5;
        while (1)
        {
          v9 = v56 - 4;
          if (v182)
          {
            v91 = sub_100068058();
          }

          else
          {
            if (v9 >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_92;
            }

            v91 = *(v82 + 8 * v56);
          }

          v92 = v91;
          v93 = v56 - 3;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          v94 = *(v0 + 888);
          v95 = *(v0 + 856);
          v96 = *(v0 + 848);
          v186[0] = v91;
          sub_10005B498(&v185, v186, v96, v95, v94, (v0 + 664));

          ++v56;
          if (v93 == v83)
          {
            goto LABEL_83;
          }
        }
      }

      else
      {
        if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v85 = *(v81 + 32);
          goto LABEL_78;
        }

LABEL_92:
        __break(1u);
      }

      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      swift_once();
      continue;
    }

    break;
  }

  v83 = sub_1000680C8();
  v84 = v175;
  if (v83)
  {
    goto LABEL_75;
  }

LABEL_97:
  v74 = _swiftEmptyArrayStorage;
  v170 = v9;
  v183 = v9;
LABEL_98:

  v97 = *(v74 + 16);
  if (v97)
  {
    v98 = (v74 + 32);
    v99 = _swiftEmptyArrayStorage;
    v100 = *(v74 + 16);
    do
    {
      v103 = *v98++;
      if (v103 == 4)
      {
        v104 = swift_isUniquelyReferenced_nonNull_native();
        v186[0] = v99;
        if ((v104 & 1) == 0)
        {
          sub_10000DAF8(0, *(v99 + 2) + 1, 1);
          v99 = v186[0];
        }

        v102 = *(v99 + 2);
        v101 = *(v99 + 3);
        if (v102 >= v101 >> 1)
        {
          sub_10000DAF8((v101 > 1), v102 + 1, 1);
          v99 = v186[0];
        }

        *(v99 + 2) = v102 + 1;
        *&v99[v102 + 4] = 4;
      }

      --v100;
    }

    while (v100);
    v84 = v184;
  }

  else
  {
    v99 = _swiftEmptyArrayStorage;
  }

  v105 = *(v99 + 2);

  v106 = swift_isUniquelyReferenced_nonNull_native();
  v186[0] = v84;
  v107 = v84;
  v108 = sub_100045C38(0);
  v110 = v84[2];
  v111 = (v109 & 1) == 0;
  v72 = __OFADD__(v110, v111);
  v112 = v110 + v111;
  if (v72)
  {
    __break(1u);
LABEL_188:
    __break(1u);
LABEL_189:
    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);
LABEL_192:
    swift_unknownObjectRelease();
    sub_10005DFE0(v74, v74 + 32, 0, v107);
    v147 = v168;
    goto LABEL_165;
  }

  v113 = v109;
  if (v84[3] >= v112)
  {
    if (v106)
    {
      goto LABEL_114;
    }

    v107 = v186;
    v169 = v108;
    sub_100046D00();
    v108 = v169;
    v84 = v186[0];
    v184 = v186[0];
    if ((v113 & 1) == 0)
    {
LABEL_115:
      v107 = v108;
      sub_10004693C(v108, 0, 0, v84);
      v108 = v107;
    }
  }

  else
  {
    sub_100045F20(v112, v106);
    v84 = v186[0];
    v107 = v186[0];
    v108 = sub_100045C38(0);
    if ((v113 & 1) != (v114 & 1))
    {
      goto LABEL_131;
    }

LABEL_114:
    v184 = v84;
    if ((v113 & 1) == 0)
    {
      goto LABEL_115;
    }
  }

  v115 = v84[7];
  v116 = *(v115 + 8 * v108);
  v72 = __OFADD__(v116, v105);
  v117 = v116 + v105;
  if (v72)
  {
    goto LABEL_188;
  }

  *(v115 + 8 * v108) = v117;
  if (v97)
  {
    v118 = (v74 + 32);
    v119 = _swiftEmptyArrayStorage;
    do
    {
      v122 = *v118++;
      if (v122 == 3)
      {
        v123 = swift_isUniquelyReferenced_nonNull_native();
        v186[0] = v119;
        if ((v123 & 1) == 0)
        {
          sub_10000DAF8(0, *(v119 + 2) + 1, 1);
          v119 = v186[0];
        }

        v121 = *(v119 + 2);
        v120 = *(v119 + 3);
        if (v121 >= v120 >> 1)
        {
          sub_10000DAF8((v120 > 1), v121 + 1, 1);
          v119 = v186[0];
        }

        *(v119 + 2) = v121 + 1;
        *&v119[v121 + 4] = 3;
      }

      --v97;
    }

    while (v97);
    v84 = v184;
  }

  else
  {
    v119 = _swiftEmptyArrayStorage;
  }

  v124 = *(v119 + 2);

  v65 = swift_isUniquelyReferenced_nonNull_native();
  v186[0] = v84;
  v107 = v84;
  v68 = sub_100045C38(5u);
  v126 = v84[2];
  v127 = (v125 & 1) == 0;
  v72 = __OFADD__(v126, v127);
  v128 = v126 + v127;
  if (v72)
  {
    goto LABEL_189;
  }

  v74 = v125;
  if (v84[3] >= v128)
  {
    if (v65)
    {
      goto LABEL_135;
    }

    v107 = v186;
    v65 = v68;
    sub_100046D00();
    v68 = v65;
    v84 = v186[0];
    v184 = v186[0];
    if ((v74 & 1) == 0)
    {
LABEL_136:
      v107 = v68;
      sub_10004693C(v68, 5, 0, v84);
      v68 = v107;
    }
  }

  else
  {
    sub_100045F20(v128, v65);
    v84 = v186[0];
    v107 = v186[0];
    v68 = sub_100045C38(5u);
    if ((v74 & 1) != (v129 & 1))
    {
      goto LABEL_131;
    }

LABEL_135:
    v184 = v84;
    if ((v74 & 1) == 0)
    {
      goto LABEL_136;
    }
  }

  v130 = v84[7];
  v131 = *(v130 + 8 * v68);
  v72 = __OFADD__(v131, v124);
  v132 = v131 + v124;
  if (v72)
  {
    goto LABEL_190;
  }

  v133 = 0;
  *(v130 + 8 * v68) = v132;
  v74 = _swiftEmptyArrayStorage;
LABEL_139:
  if (v133 <= 7)
  {
    v9 = 7;
  }

  else
  {
    v9 = v133;
  }

  while (v133 != 7)
  {
    if (v9 == v133)
    {
      __break(1u);
      goto LABEL_184;
    }

    v135 = *(&off_10007E1B0 + v133 + 32);
    if (v84[2] && (v107 = v84, v136 = sub_100045C38(*(&off_10007E1B0 + v133 + 32)), (v137 & 1) != 0))
    {
      v134 = *(v84[7] + 8 * v136);
    }

    else
    {
      v134 = 0;
    }

    v68 = sub_10005E1E4(v135, v134, v0 + 296);
    v65 = *(v0 + 304);
    ++v133;
    if (v65)
    {
      v138 = *(v0 + 296);
      v176 = *(v0 + 320);
      v179 = *(v0 + 312);
      v172 = *(v0 + 336);
      v174 = *(v0 + 328);
      v171 = *(v0 + 344);
      v68 = swift_isUniquelyReferenced_nonNull_native();
      if ((v68 & 1) == 0)
      {
        v68 = sub_10004E6D4(0, *(v74 + 16) + 1, 1, v74);
        v74 = v68;
      }

      v140 = *(v74 + 16);
      v139 = *(v74 + 24);
      v107 = v140 + 1;
      if (v140 >= v139 >> 1)
      {
        v68 = sub_10004E6D4((v139 > 1), v140 + 1, 1, v74);
        v74 = v68;
      }

      *(v74 + 16) = v107;
      v141 = v74 + 56 * v140;
      *(v141 + 32) = v138;
      *(v141 + 40) = v65;
      *(v141 + 48) = v179;
      *(v141 + 56) = v176;
      *(v141 + 64) = v174;
      *(v141 + 72) = v172;
      *(v141 + 80) = v171 & 1;
      goto LABEL_139;
    }
  }

  v142 = *(v0 + 864);
  if ((v142 & 0x8000000000000000) != 0)
  {
    goto LABEL_191;
  }

  v143 = *(v74 + 16);
  if (v143 >= v142)
  {
    v143 = *(v0 + 864);
  }

  v144 = 2 * v143;
  if (v142)
  {
    v107 = v144 + 1;
  }

  else
  {
    v107 = 1;
  }

  sub_100068178();
  swift_unknownObjectRetain_n();
  v145 = swift_dynamicCastClass();
  if (!v145)
  {
    swift_unknownObjectRelease();
    v145 = _swiftEmptyArrayStorage;
  }

  v146 = *(v145 + 2);

  if (v146 != v107 >> 1)
  {
    goto LABEL_192;
  }

  v147 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v147)
  {
    goto LABEL_166;
  }

  v147 = _swiftEmptyArrayStorage;
LABEL_165:
  swift_unknownObjectRelease();
LABEL_166:
  v148 = *(v0 + 864) - *(v147 + 2);
  if (v148 < 1 || (swift_beginAccess(), !*(*v12 + 16)))
  {

LABEL_173:

    goto LABEL_174;
  }

  v173 = v147;
  v177 = *(*v12 + 16);
  sub_1000024F4(&qword_100080A48);
  v149 = sub_1000670C8();
  v150 = *(v149 - 8);
  v151 = *(v150 + 72);
  v152 = (*(v150 + 80) + 32) & ~*(v150 + 80);
  v153 = swift_allocObject();
  *(v153 + 16) = xmmword_10006B830;
  v180 = v153;
  v154 = v153 + v152;
  v155 = *(v150 + 104);
  v155(v154, enum case for ServiceKind.securitySystem(_:), v149);
  v155(v154 + v151, enum case for ServiceKind.garageDoorOpener(_:), v149);
  v155(v154 + 2 * v151, enum case for ServiceKind.door(_:), v149);
  v155(v154 + 3 * v151, enum case for ServiceKind.lockMechanism(_:), v149);
  v155(v154 + 4 * v151, enum case for ServiceKind.window(_:), v149);
  if (v148 >= v177)
  {
    v164 = sub_100056D00(v180, (v0 + 664));
    if (!v183)
    {
      v165 = *(v0 + 840);
      v166 = v164;
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v186[0] = v173;
      sub_10003F4CC(v166);

      v147 = v186[0];
      goto LABEL_174;
    }

    goto LABEL_178;
  }

  v156 = sub_100056BE8(0, v180, (v0 + 664));
  if (v183)
  {
LABEL_178:
  }

  v157 = v156;
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_10005E1E4(6uLL, v157, v0 + 352);
  v158 = *(v0 + 360);
  v159 = *(v0 + 840);
  if (v158)
  {
    v160 = *(v0 + 352);
    sub_1000024F4(&qword_1000809F0);
    v161 = swift_allocObject();
    *(v161 + 16) = xmmword_100068BF0;
    *(v161 + 32) = v160;
    *(v161 + 40) = v158;
    v162 = *(v0 + 384);
    *(v161 + 48) = *(v0 + 368);
    *(v161 + 64) = v162;
    *(v161 + 80) = *(v0 + 400);
    v186[0] = v173;
    sub_10003F4CC(v161);

    v147 = v186[0];
    goto LABEL_173;
  }

  v147 = v173;
LABEL_174:
  v163 = *(v0 + 8);

  return v163(v147);
}

void sub_1000589A0(void **a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, void **a6)
{
  v85 = a4;
  v88 = a5;
  v84 = a2;
  v87 = sub_1000670C8();
  v9 = *(v87 - 8);
  v10 = __chkstk_darwin(v87);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v82 = &v79 - v14;
  __chkstk_darwin(v13);
  v16 = &v79 - v15;
  v17 = *a1;
  if (qword_100080798 != -1)
  {
    swift_once();
  }

  v18 = sub_100067318();
  v19 = sub_1000026A8(v18, qword_100085CD0);
  v20 = v17;

  v83 = v19;
  v21 = sub_1000672F8();
  v22 = sub_100067E08();

  v23 = os_log_type_enabled(v21, v22);
  v24 = &LockScreenDataModel;
  v81 = v12;
  if (!v23)
  {

    goto LABEL_14;
  }

  v79 = a6;
  v86 = v9;
  v25 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  v94 = swift_slowAlloc();
  *v25 = 136315906;
  v80 = a3;
  *(v25 + 4) = sub_10000D4F0(v84, a3, &v94);
  *(v25 + 12) = 2080;
  v27 = sub_100067E38();
  v29 = sub_10000D4F0(v27, v28, &v94);

  *(v25 + 14) = v29;
  *(v25 + 22) = 2112;
  *(v25 + 24) = v20;
  *v26 = v20;
  *(v25 + 32) = 2112;
  if ([v20 value])
  {
    sub_100067ED8();
    swift_unknownObjectRelease();
  }

  else
  {
    v90 = 0u;
    v91 = 0u;
  }

  v92 = v90;
  v93 = v91;
  if (!*(&v91 + 1))
  {
    sub_1000096A0(&v92, &qword_100080A28);
    v24 = &LockScreenDataModel;
    goto LABEL_12;
  }

  sub_100009700(0, &qword_100080A40);
  v24 = &LockScreenDataModel;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v30 = sub_100067BA8();
    goto LABEL_13;
  }

  v30 = v89;
LABEL_13:
  *(v25 + 34) = v30;
  v26[1] = v30;
  _os_log_impl(&_mh_execute_header, v21, v22, "{%s} garage door opener '%s' %@ cached value is %@", v25, 0x2Au);
  sub_1000024F4(&qword_100080CA0);
  swift_arrayDestroy();

  swift_arrayDestroy();

  v9 = v86;
  a6 = v79;
  a3 = v80;
LABEL_14:
  v31 = sub_100028364(v20, v85);
  v32 = v87;
  if ((v31 & 1) == 0)
  {
    if ([v20 v24[13].ivar_lyt])
    {
      sub_100067ED8();
      swift_unknownObjectRelease();
    }

    else
    {
      v90 = 0u;
      v91 = 0u;
    }

    v92 = v90;
    v93 = v91;
    if (*(&v91 + 1))
    {
      sub_100009700(0, &qword_100080A30);
      if (swift_dynamicCast())
      {
        v33 = v94;
        v34 = [v94 integerValue];

        if (v34 == 1)
        {
          return;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v92 = *a6;
        v36 = v92;
        *a6 = 0x8000000000000000;
        v38 = sub_100045C38(1u);
        v39 = v36[2];
        v40 = (v37 & 1) == 0;
        v41 = v39 + v40;
        if (__OFADD__(v39, v40))
        {
          __break(1u);
          goto LABEL_51;
        }

        LOBYTE(a3) = v37;
        if (v36[3] >= v41)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            goto LABEL_52;
          }

          goto LABEL_43;
        }

        sub_100045F20(v41, isUniquelyReferenced_nonNull_native);
        v36 = v92;
        v42 = sub_100045C38(1u);
        if ((a3 & 1) == (v43 & 1))
        {
          v38 = v42;
          while (1)
          {
LABEL_43:
            *a6 = v36;

            v75 = *a6;
            if ((a3 & 1) == 0)
            {
              sub_10004693C(v38, 1, 0, *a6);
            }

            v76 = v75[7];
            v77 = *(v76 + 8 * v38);
            v59 = __OFADD__(v77, 1);
            v78 = v77 + 1;
            if (!v59)
            {
              break;
            }

LABEL_51:
            __break(1u);
LABEL_52:
            sub_100046D00();
            v36 = v92;
          }

          *(v76 + 8 * v38) = v78;
          return;
        }

LABEL_54:
        sub_100068198();
        __break(1u);
        return;
      }
    }

    else
    {
      sub_1000096A0(&v92, &qword_100080A28);
    }
  }

  v44 = a3;
  v45 = *(v9 + 104);
  LODWORD(v85) = enum case for ServiceKind.garageDoorOpener(_:);
  v80 = v45;
  v45(v16);
  v46 = v88;
  swift_beginAccess();
  v47 = swift_isUniquelyReferenced_nonNull_native();
  *&v90 = *v46;
  v48 = v90;
  *v46 = 0x8000000000000000;
  v50 = sub_100045CA4(v16);
  v51 = v48[2];
  v52 = (v49 & 1) == 0;
  v53 = v51 + v52;
  if (__OFADD__(v51, v52))
  {
    __break(1u);
    goto LABEL_48;
  }

  LOBYTE(v20) = v49;
  if (v48[3] >= v53)
  {
    if ((v47 & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  else
  {
    sub_10004657C(v53, v47);
    v48 = v90;
    v54 = sub_100045CA4(v16);
    if ((v20 & 1) != (v55 & 1))
    {
      sub_100068198();
      __break(1u);
      goto LABEL_54;
    }

    v50 = v54;
  }

  while (1)
  {
    v56 = v44;
    *v88 = v48;
    if ((v20 & 1) == 0)
    {
      v44 = v82;
      (*(v9 + 16))(v82, v16, v32);
      sub_100046A38(v50, v44, 0, v48);
    }

    v57 = v48[7];
    v58 = *(v57 + 8 * v50);
    v59 = __OFADD__(v58, 1);
    v60 = v58 + 1;
    if (!v59)
    {
      break;
    }

LABEL_48:
    __break(1u);
LABEL_49:
    sub_1000470CC();
    v48 = v90;
  }

  *(v57 + 8 * v50) = v60;
  swift_endAccess();
  v61 = v9 + 8;
  v62 = *(v9 + 8);
  v86 = v61;
  v62(v16, v32);

  v63 = sub_1000672F8();
  v64 = sub_100067E08();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = v56;
    v66 = swift_slowAlloc();
    v67 = v32;
    v68 = swift_slowAlloc();
    *&v90 = v68;
    *v66 = 136315394;
    *(v66 + 4) = sub_10000D4F0(v84, v65, &v90);
    *(v66 + 12) = 2048;
    v69 = v81;
    v80(v81, v85, v67);
    v70 = v88;
    swift_beginAccess();
    v71 = *v70;
    if (*(*v70 + 16) && (v72 = sub_100045CA4(v69), (v73 & 1) != 0))
    {
      v74 = *(*(v71 + 56) + 8 * v72);
    }

    else
    {
      v74 = 0;
    }

    swift_endAccess();
    v62(v69, v87);
    *(v66 + 14) = v74;
    _os_log_impl(&_mh_execute_header, v63, v64, "{%s} non-responsive garage door opener count: %ld", v66, 0x16u);
    sub_1000026F0(v68);
  }
}

uint64_t sub_1000591E4(void **a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t *a5, void **a6)
{
  v128 = a6;
  v140 = a5;
  v134 = a4;
  v135 = a2;
  v9 = sub_1000024F4(&qword_100080B68);
  v10 = __chkstk_darwin(v9 - 8);
  v133 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v139 = &v124 - v13;
  __chkstk_darwin(v12);
  v15 = &v124 - v14;
  v16 = sub_1000670C8();
  v142 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v127 = &v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v138 = &v124 - v20;
  v21 = __chkstk_darwin(v19);
  v129 = &v124 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v124 - v24;
  __chkstk_darwin(v23);
  v27 = &v124 - v26;
  v28 = *a1;
  if (qword_100080798 != -1)
  {
    swift_once();
  }

  v29 = sub_100067318();
  v30 = sub_1000026A8(v29, qword_100085CD0);
  v31 = v28;

  v131 = v30;
  v32 = v31;
  v33 = sub_1000672F8();
  v34 = sub_100067E08();

  v130 = v34;
  v35 = os_log_type_enabled(v33, v34);
  v141 = v32;
  v136 = v25;
  v137 = v6;
  v132 = a3;
  if (!v35)
  {

    v45 = v139;
    v46 = v140;
    v41 = v16;
    goto LABEL_21;
  }

  v126 = v33;
  v36 = a3;
  v37 = swift_slowAlloc();
  v124 = swift_slowAlloc();
  v125 = swift_slowAlloc();
  v148 = v125;
  *v37 = 136315906;
  *(v37 + 4) = sub_10000D4F0(v135, v36, &v148);
  *(v37 + 12) = 2080;
  v38 = [v32 service];
  if (v38)
  {
    v39 = v38;
    v40 = [v38 serviceType];
    sub_100067BC8();

    v41 = v16;
    v42 = v142;
    sub_100067C18();

    v43 = *(v42 + 48);
    if (v43(v15, 1, v16) == 1)
    {
      (*(v142 + 104))(v27, enum case for ServiceKind.null(_:), v16);
      v44 = v43(v15, 1, v16);
      v45 = v139;
      if (v44 != 1)
      {
        sub_1000096A0(v15, &qword_100080B68);
      }
    }

    else
    {
      (*(v142 + 32))(v27, v15, v16);
      v45 = v139;
    }

    v48 = sub_100067068();
    v47 = v49;
    (*(v142 + 8))(v27, v16);
  }

  else
  {
    v47 = 0xE300000000000000;
    v48 = 7104878;
    v45 = v139;
    v41 = v16;
  }

  v50 = sub_10000D4F0(v48, v47, &v148);

  *(v37 + 14) = v50;
  *(v37 + 22) = 2080;
  v51 = v141;
  v52 = sub_100067E38();
  v54 = sub_10000D4F0(v52, v53, &v148);

  *(v37 + 24) = v54;
  *(v37 + 32) = 2112;
  if ([v51 value])
  {
    sub_100067ED8();
    swift_unknownObjectRelease();
  }

  else
  {
    v144 = 0u;
    v145 = 0u;
  }

  v46 = v140;
  v146 = v144;
  v147 = v145;
  if (!*(&v145 + 1))
  {
    sub_1000096A0(&v146, &qword_100080A28);
    v32 = v141;
    goto LABEL_19;
  }

  sub_100009700(0, &qword_100080A40);
  v55 = swift_dynamicCast();
  v32 = v141;
  if ((v55 & 1) == 0)
  {
LABEL_19:
    v56 = sub_100067BA8();
    goto LABEL_20;
  }

  v56 = v143;
LABEL_20:
  *(v37 + 34) = v56;
  v57 = v124;
  *v124 = v56;
  v58 = v126;
  _os_log_impl(&_mh_execute_header, v126, v130, "{%s} %s '%s' cached value is %@", v37, 0x2Au);
  sub_1000096A0(v57, &qword_100080CA0);

  swift_arrayDestroy();

LABEL_21:
  v59 = [v32 service];
  if (!v59)
  {
    (*(v142 + 56))(v45, 1, 1, v41);
    return sub_1000096A0(v45, &qword_100080B68);
  }

  v60 = v59;
  v61 = [v59 serviceType];
  sub_100067BC8();

  v62 = v133;
  sub_100067C18();

  v63 = *(v142 + 48);
  if ((v63)(v62, 1, v41) == 1)
  {
    (*(v142 + 104))(v45, enum case for ServiceKind.null(_:), v41);
    v64 = (v63)(v62, 1, v41);
    v65 = v136;
    if (v64 != 1)
    {
      sub_1000096A0(v62, &qword_100080B68);
    }
  }

  else
  {
    (*(v142 + 32))(v45, v62, v41);
    v65 = v136;
  }

  v67 = v142;
  (*(v142 + 56))(v45, 0, 1, v41);
  (*(v67 + 32))(v65, v45, v41);
  v68 = v141;
  if ((sub_100028364(v141, v134) & 1) == 0)
  {
    if ([v68 value])
    {
      sub_100067ED8();
      swift_unknownObjectRelease();
    }

    else
    {
      v144 = 0u;
      v145 = 0u;
    }

    v146 = v144;
    v147 = v145;
    if (*(&v145 + 1))
    {
      sub_100009700(0, &qword_100080A30);
      if (swift_dynamicCast())
      {
        v69 = v148;
        v70 = [v148 integerValue];

        if (v70 <= 0)
        {
          return (*(v142 + 8))(v65, v41);
        }

        v71 = v142;
        v72 = v127;
        (*(v142 + 16))(v127, v65, v41);
        v73 = (*(v71 + 88))(v72, v41);
        if (v73 == enum case for ServiceKind.door(_:))
        {
          v74 = v128;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v146 = *v74;
          v76 = v146;
          *v74 = 0x8000000000000000;
          v78 = sub_100045C38(2u);
          v79 = v76[2];
          v80 = (v77 & 1) == 0;
          v81 = v79 + v80;
          if (!__OFADD__(v79, v80))
          {
            LOBYTE(v63) = v77;
            if (v76[3] < v81)
            {
              sub_100045F20(v81, isUniquelyReferenced_nonNull_native);
              v76 = v146;
              v82 = sub_100045C38(2u);
              if ((v63 & 1) == (v83 & 1))
              {
                v78 = v82;
LABEL_62:
                *v74 = v76;

                v111 = *v74;
                if ((v63 & 1) == 0)
                {
                  sub_10004693C(v78, 2, 0, *v74);
                }

                v119 = v111[7];
                v120 = *(v119 + 8 * v78);
                v96 = __OFADD__(v120, 1);
                v121 = v120 + 1;
                if (!v96)
                {
LABEL_71:
                  *(v119 + 8 * v78) = v121;
                  return (*(v142 + 8))(v65, v41);
                }

                __break(1u);
                goto LABEL_67;
              }

              goto LABEL_82;
            }

            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_62;
            }

LABEL_78:
            sub_100046D00();
            v76 = v146;
            goto LABEL_62;
          }

          __break(1u);
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

        v74 = v128;
        if (v73 != enum case for ServiceKind.window(_:))
        {
          v118 = *(v142 + 8);
          v118(v65, v41);
          return (v118)(v72, v41);
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v146 = *v74;
        v111 = v146;
        *v74 = 0x8000000000000000;
        v78 = sub_100045C38(4u);
        v113 = v111[2];
        v114 = (v112 & 1) == 0;
        v115 = v113 + v114;
        if (__OFADD__(v113, v114))
        {
          goto LABEL_77;
        }

        LOBYTE(v63) = v112;
        if (v111[3] >= v115)
        {
LABEL_67:
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            goto LABEL_80;
          }

          while (1)
          {
LABEL_68:
            *v74 = v111;

            v122 = *v74;
            if ((v63 & 1) == 0)
            {
              sub_10004693C(v78, 4, 0, *v74);
            }

            v119 = *(v122 + 56);
            v123 = *(v119 + 8 * v78);
            v96 = __OFADD__(v123, 1);
            v121 = v123 + 1;
            if (!v96)
            {
              break;
            }

            __break(1u);
LABEL_80:
            sub_100046D00();
            v111 = v146;
          }

          goto LABEL_71;
        }

        sub_100045F20(v115, isUniquelyReferenced_nonNull_native);
        v111 = v146;
        v116 = sub_100045C38(4u);
        if ((v63 & 1) == (v117 & 1))
        {
          v78 = v116;
          goto LABEL_68;
        }

LABEL_82:
        result = sub_100068198();
        __break(1u);
        return result;
      }
    }

    else
    {
      sub_1000096A0(&v146, &qword_100080A28);
    }
  }

  swift_beginAccess();
  v84 = swift_isUniquelyReferenced_nonNull_native();
  *&v144 = *v46;
  v85 = v144;
  *v46 = 0x8000000000000000;
  v87 = sub_100045CA4(v65);
  v88 = v85[2];
  v89 = (v86 & 1) == 0;
  v90 = v88 + v89;
  if (__OFADD__(v88, v89))
  {
    __break(1u);
    goto LABEL_74;
  }

  LOBYTE(v63) = v86;
  if (v85[3] >= v90)
  {
    if ((v84 & 1) == 0)
    {
      goto LABEL_75;
    }
  }

  else
  {
    sub_10004657C(v90, v84);
    v85 = v144;
    v91 = sub_100045CA4(v65);
    if ((v63 & 1) != (v92 & 1))
    {
      sub_100068198();
      __break(1u);
      goto LABEL_82;
    }

    v87 = v91;
  }

  while (1)
  {
    v93 = v132;
    *v46 = v85;
    if ((v63 & 1) == 0)
    {
      v63 = v129;
      (*(v142 + 16))(v129, v65, v41);
      sub_100046A38(v87, v63, 0, v85);
    }

    v94 = v85[7];
    v95 = *(v94 + 8 * v87);
    v96 = __OFADD__(v95, 1);
    v97 = v95 + 1;
    if (!v96)
    {
      break;
    }

LABEL_74:
    __break(1u);
LABEL_75:
    sub_1000470CC();
    v85 = v144;
  }

  *(v94 + 8 * v87) = v97;
  swift_endAccess();
  v98 = v138;
  (*(v142 + 16))(v138, v65, v41);

  v99 = sub_1000672F8();
  v100 = sub_100067E08();

  if (os_log_type_enabled(v99, v100))
  {
    v101 = v93;
    v102 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    *&v144 = v103;
    *v102 = 136315394;
    *(v102 + 4) = sub_10000D4F0(v135, v101, &v144);
    *(v102 + 12) = 2048;
    swift_beginAccess();
    v104 = *v46;
    if (*(*v46 + 16) && (v105 = sub_100045CA4(v138), (v106 & 1) != 0))
    {
      v107 = v41;
      v108 = *(*(v104 + 56) + 8 * v105);
    }

    else
    {
      v107 = v41;
      v108 = 0;
    }

    swift_endAccess();
    v110 = *(v142 + 8);
    v110(v138, v107);
    *(v102 + 14) = v108;
    _os_log_impl(&_mh_execute_header, v99, v100, "{%s} non-responsive motorized doors & windows count: %ld", v102, 0x16u);
    sub_1000026F0(v103);

    return (v110)(v136, v107);
  }

  else
  {
    v109 = *(v142 + 8);
    v109(v98, v41);

    return (v109)(v65, v41);
  }
}

uint64_t sub_10005A020(void **a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v7 = v6;
  v123 = a6;
  v130 = a5;
  v131 = a4;
  v135 = a2;
  v10 = sub_1000024F4(&qword_100080B68);
  __chkstk_darwin(v10 - 8);
  v12 = &v121 - v11;
  v13 = sub_1000670C8();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v122 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v133 = &v121 - v18;
  v19 = __chkstk_darwin(v17);
  v129 = &v121 - v20;
  v21 = __chkstk_darwin(v19);
  v124 = &v121 - v22;
  __chkstk_darwin(v21);
  v132 = &v121 - v23;
  v24 = *a1;
  if (qword_100080798 != -1)
  {
    swift_once();
  }

  v25 = sub_100067318();
  v26 = sub_1000026A8(v25, qword_100085CD0);
  v27 = v24;

  v127 = v26;
  v28 = a3;
  v29 = sub_1000672F8();
  v30 = sub_100067E08();

  v31 = os_log_type_enabled(v29, v30);
  v128 = v28;
  if (!v31)
  {

    goto LABEL_14;
  }

  v125 = v14;
  v126 = v13;
  v134 = v6;
  v32 = swift_slowAlloc();
  v33 = swift_slowAlloc();
  v141 = swift_slowAlloc();
  *v32 = 136315650;
  *(v32 + 4) = sub_10000D4F0(v135, v28, &v141);
  *(v32 + 12) = 2080;
  v34 = sub_100067E38();
  v36 = sub_10000D4F0(v34, v35, &v141);

  *(v32 + 14) = v36;
  *(v32 + 22) = 2112;
  if ([v27 value])
  {
    sub_100067ED8();
    swift_unknownObjectRelease();
  }

  else
  {
    v137 = 0u;
    v138 = 0u;
  }

  v139 = v137;
  v140 = v138;
  v7 = v134;
  if (!*(&v138 + 1))
  {
    sub_1000096A0(&v139, &qword_100080A28);
    goto LABEL_12;
  }

  sub_100009700(0, &qword_100080A40);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v37 = sub_100067BA8();
    goto LABEL_13;
  }

  v37 = v136;
LABEL_13:
  *(v32 + 24) = v37;
  *v33 = v37;
  _os_log_impl(&_mh_execute_header, v29, v30, "{%s} contact sensor '%s' cached value is: %@", v32, 0x20u);
  sub_1000096A0(v33, &qword_100080CA0);

  swift_arrayDestroy();

  v14 = v125;
  v13 = v126;
LABEL_14:
  v38 = [v27 service];
  if (!v38)
  {
LABEL_21:
    (*(v14 + 56))(v12, 1, 1, v13);
    return sub_1000096A0(v12, &qword_100080B68);
  }

  v39 = v38;
  v40 = [v38 associatedServiceType];
  if (!v40)
  {

    goto LABEL_21;
  }

  v41 = v40;
  LOBYTE(v42) = sub_100067BC8();

  sub_100067C18();

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_1000096A0(v12, &qword_100080B68);
  }

  v43 = v132;
  (*(v14 + 32))(v132, v12, v13);
  if ((sub_100028364(v27, v131) & 1) == 0)
  {
    if ([v27 value])
    {
      sub_100067ED8();
      swift_unknownObjectRelease();
    }

    else
    {
      v137 = 0u;
      v138 = 0u;
    }

    v139 = v137;
    v140 = v138;
    if (*(&v138 + 1))
    {
      sub_100009700(0, &qword_100080A30);
      if (swift_dynamicCast())
      {
        v45 = v141;
        v46 = [v141 BOOLValue];

        if ((v46 & 1) == 0)
        {
          return (*(v14 + 8))(v43, v13);
        }

        v47 = v122;
        (*(v14 + 16))(v122, v43, v13);
        v48 = (*(v14 + 88))(v47, v13);
        if (v48 == enum case for ServiceKind.door(_:))
        {
          v49 = v123;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v139 = *v49;
          v51 = v139;
          *v49 = 0x8000000000000000;
          v53 = sub_100045C38(2u);
          v54 = *(v51 + 16);
          v55 = (v52 & 1) == 0;
          v56 = v54 + v55;
          if (!__OFADD__(v54, v55))
          {
            LOBYTE(v42) = v52;
            if (*(v51 + 24) < v56)
            {
              sub_100045F20(v56, isUniquelyReferenced_nonNull_native);
              v51 = v139;
              v57 = sub_100045C38(2u);
              if ((v42 & 1) == (v58 & 1))
              {
                v53 = v57;
LABEL_61:
                v112 = v123;
                *v123 = v51;

                v47 = *v112;
                if ((v42 & 1) == 0)
                {
                  sub_10004693C(v53, 2, 0, *v112);
                }

                v113 = *(v47 + 7);
                v114 = *(v113 + 8 * v53);
                v73 = __OFADD__(v114, 1);
                v115 = v114 + 1;
                if (!v73)
                {
LABEL_77:
                  *(v113 + 8 * v53) = v115;
                  return (*(v14 + 8))(v43, v13);
                }

                __break(1u);
LABEL_66:
                v116 = *(v14 + 8);
                v116(v43, v13);
                return (v116)(v47, v13);
              }

              goto LABEL_90;
            }

            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_61;
            }

LABEL_84:
            sub_100046D00();
            v51 = v139;
            goto LABEL_61;
          }

          __break(1u);
LABEL_83:
          __break(1u);
          goto LABEL_84;
        }

        if (v48 == enum case for ServiceKind.garageDoorOpener(_:))
        {
          v94 = v123;
          v95 = swift_isUniquelyReferenced_nonNull_native();
          *&v139 = *v94;
          v96 = v139;
          *v94 = 0x8000000000000000;
          v53 = sub_100045C38(1u);
          v98 = *(v96 + 16);
          v99 = (v97 & 1) == 0;
          v100 = v98 + v99;
          if (__OFADD__(v98, v99))
          {
            goto LABEL_83;
          }

          LOBYTE(v42) = v97;
          if (*(v96 + 24) < v100)
          {
            sub_100045F20(v100, v95);
            v96 = v139;
            v101 = sub_100045C38(1u);
            if ((v42 & 1) == (v102 & 1))
            {
              v53 = v101;
LABEL_68:
              v104 = v123;
              *v123 = v96;

              v105 = *v104;
              if ((v42 & 1) == 0)
              {
                sub_10004693C(v53, 1, 0, *v104);
              }

              v113 = v105[7];
              v117 = *(v113 + 8 * v53);
              v73 = __OFADD__(v117, 1);
              v115 = v117 + 1;
              if (!v73)
              {
                goto LABEL_77;
              }

              __break(1u);
              goto LABEL_73;
            }

LABEL_90:
            result = sub_100068198();
            __break(1u);
            return result;
          }

          if (v95)
          {
            goto LABEL_68;
          }
        }

        else
        {
          if (v48 != enum case for ServiceKind.window(_:))
          {
            goto LABEL_66;
          }

          v103 = v123;
          LOBYTE(v104) = swift_isUniquelyReferenced_nonNull_native();
          *&v139 = *v103;
          v105 = v139;
          *v103 = 0x8000000000000000;
          v53 = sub_100045C38(4u);
          v107 = v105[2];
          v108 = (v106 & 1) == 0;
          v109 = v107 + v108;
          if (!__OFADD__(v107, v108))
          {
            LOBYTE(v42) = v106;
            if (v105[3] >= v109)
            {
LABEL_73:
              if ((v104 & 1) == 0)
              {
                goto LABEL_88;
              }

              while (1)
              {
LABEL_74:
                v118 = v123;
                *v123 = v105;

                v119 = *v118;
                if ((v42 & 1) == 0)
                {
                  sub_10004693C(v53, 4, 0, *v118);
                }

                v113 = *(v119 + 56);
                v120 = *(v113 + 8 * v53);
                v73 = __OFADD__(v120, 1);
                v115 = v120 + 1;
                if (!v73)
                {
                  break;
                }

                __break(1u);
LABEL_88:
                sub_100046D00();
                v105 = v139;
              }

              goto LABEL_77;
            }

            sub_100045F20(v109, v104);
            v105 = v139;
            v110 = sub_100045C38(4u);
            if ((v42 & 1) == (v111 & 1))
            {
              v53 = v110;
              goto LABEL_74;
            }

            goto LABEL_90;
          }

          __break(1u);
        }

        sub_100046D00();
        v96 = v139;
        goto LABEL_68;
      }
    }

    else
    {
      sub_1000096A0(&v139, &qword_100080A28);
    }
  }

  v59 = v130;
  swift_beginAccess();
  v60 = swift_isUniquelyReferenced_nonNull_native();
  *&v137 = *v59;
  v61 = v137;
  *v59 = 0x8000000000000000;
  v63 = sub_100045CA4(v43);
  v64 = v61[2];
  v65 = (v62 & 1) == 0;
  v66 = v64 + v65;
  if (__OFADD__(v64, v65))
  {
    __break(1u);
    goto LABEL_80;
  }

  LOBYTE(v42) = v62;
  v67 = v61[3];
  v134 = v7;
  if (v67 >= v66)
  {
    if ((v60 & 1) == 0)
    {
      goto LABEL_81;
    }
  }

  else
  {
    sub_10004657C(v66, v60);
    v61 = v137;
    v68 = sub_100045CA4(v43);
    if ((v42 & 1) != (v69 & 1))
    {
      sub_100068198();
      __break(1u);
      goto LABEL_90;
    }

    v63 = v68;
  }

  while (1)
  {
    v70 = v129;
    *v59 = v61;
    if ((v42 & 1) == 0)
    {
      v42 = v124;
      (*(v14 + 16))(v124, v43, v13);
      sub_100046A38(v63, v42, 0, v61);
    }

    v71 = v61[7];
    v72 = *(v71 + 8 * v63);
    v73 = __OFADD__(v72, 1);
    v74 = v72 + 1;
    if (!v73)
    {
      break;
    }

LABEL_80:
    __break(1u);
LABEL_81:
    sub_1000470CC();
    v61 = v137;
  }

  *(v71 + 8 * v63) = v74;
  swift_endAccess();
  v75 = *(v14 + 16);
  v75(v70, v43, v13);
  v76 = v133;
  v75(v133, v43, v13);
  v77 = v43;
  v78 = v128;

  v79 = sub_1000672F8();
  v80 = sub_100067E08();

  if (os_log_type_enabled(v79, v80))
  {
    LODWORD(v131) = v80;
    v81 = swift_slowAlloc();
    *&v137 = swift_slowAlloc();
    *v81 = 136315650;
    *(v81 + 4) = sub_10000D4F0(v135, v78, &v137);
    *(v81 + 12) = 2080;
    v82 = sub_100067068();
    v83 = v13;
    v85 = v84;
    v86 = *(v14 + 8);
    v125 = v14 + 8;
    v126 = v83;
    v86(v70, v83);
    v87 = sub_10000D4F0(v82, v85, &v137);

    *(v81 + 14) = v87;
    *(v81 + 22) = 2048;
    swift_beginAccess();
    v88 = *v59;
    if (*(*v59 + 16))
    {
      v89 = sub_100045CA4(v133);
      if (v90)
      {
        v91 = *(*(v88 + 56) + 8 * v89);
      }

      else
      {
        v91 = 0;
      }

      v93 = v126;
    }

    else
    {
      v91 = 0;
      v93 = v126;
    }

    swift_endAccess();
    v86(v133, v93);
    *(v81 + 24) = v91;
    _os_log_impl(&_mh_execute_header, v79, v131, "{%s} non-responsive doors & windows & garage doors contact sensors (associatedService '%s') count: %ld", v81, 0x20u);
    swift_arrayDestroy();

    return (v86)(v132, v93);
  }

  else
  {
    v92 = *(v14 + 8);
    v92(v76, v13);

    v92(v70, v13);
    return (v92)(v77, v13);
  }
}

void sub_10005AD2C(void *a1, void **a2, uint64_t a3, unint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t), void *a6)
{
  v72 = a5;
  v74 = a6;
  v71 = a3;
  v73 = sub_1000670C8();
  v9 = *(v73 - 8);
  v10 = __chkstk_darwin(v73);
  v66 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v67 = &v63 - v13;
  __chkstk_darwin(v12);
  v15 = &v63 - v14;
  v16 = *a2;
  if (qword_100080798 != -1)
  {
    swift_once();
  }

  v17 = sub_100067318();
  v18 = sub_1000026A8(v17, qword_100085CD0);
  v19 = v16;

  v68 = v18;
  v20 = sub_1000672F8();
  v21 = sub_100067E08();

  v22 = os_log_type_enabled(v20, v21);
  v23 = &LockScreenDataModel;
  v69 = a4;
  if (!v22)
  {

    v29 = v15;
    goto LABEL_14;
  }

  v65 = a1;
  v70 = v9;
  v24 = swift_slowAlloc();
  v25 = swift_slowAlloc();
  v64 = swift_slowAlloc();
  v80 = v64;
  *v24 = 136315650;
  *(v24 + 4) = sub_10000D4F0(v71, a4, &v80);
  *(v24 + 12) = 2080;
  v26 = sub_100067E38();
  v28 = sub_10000D4F0(v26, v27, &v80);

  *(v24 + 14) = v28;
  *(v24 + 22) = 2112;
  if ([v19 value])
  {
    sub_100067ED8();
    swift_unknownObjectRelease();
  }

  else
  {
    v76 = 0u;
    v77 = 0u;
  }

  v29 = v15;
  v78 = v76;
  v79 = v77;
  if (!*(&v77 + 1))
  {
    sub_1000096A0(&v78, &qword_100080A28);
    goto LABEL_12;
  }

  sub_100009700(0, &qword_100080A40);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v30 = sub_100067BA8();
    goto LABEL_13;
  }

  v30 = v75;
LABEL_13:
  *(v24 + 24) = v30;
  *v25 = v30;
  _os_log_impl(&_mh_execute_header, v20, v21, "{%s} locks '%s' cached value is: %@", v24, 0x20u);
  sub_1000096A0(v25, &qword_100080CA0);

  swift_arrayDestroy();

  v9 = v70;
  a1 = v65;
  v23 = &LockScreenDataModel;
LABEL_14:
  v31 = sub_100028364(v19, v72);
  v32 = v73;
  if ((v31 & 1) == 0)
  {
    if ([v19 v23[13].ivar_lyt])
    {
      sub_100067ED8();
      swift_unknownObjectRelease();
    }

    else
    {
      v76 = 0u;
      v77 = 0u;
    }

    v78 = v76;
    v79 = v77;
    if (*(&v77 + 1))
    {
      sub_100009700(0, &qword_100080A30);
      if (swift_dynamicCast())
      {
        v33 = v80;
        v34 = [v80 integerValue];

        if (v34 != 1)
        {
          if (!__OFADD__(*a1, 1))
          {
            ++*a1;
            return;
          }

          __break(1u);
          goto LABEL_44;
        }

        return;
      }
    }

    else
    {
      sub_1000096A0(&v78, &qword_100080A28);
    }
  }

  v35 = enum case for ServiceKind.lockMechanism(_:);
  v72 = *(v9 + 104);
  v72(v29, enum case for ServiceKind.lockMechanism(_:), v32);
  v36 = v74;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v76 = *v36;
  v38 = v76;
  *v36 = 0x8000000000000000;
  v40 = sub_100045CA4(v29);
  v41 = v38[2];
  v42 = (v39 & 1) == 0;
  v43 = v41 + v42;
  if (__OFADD__(v41, v42))
  {
    __break(1u);
    goto LABEL_41;
  }

  LOBYTE(v15) = v39;
  if (v38[3] >= v43)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
    sub_10004657C(v43, isUniquelyReferenced_nonNull_native);
    v38 = v76;
    v44 = sub_100045CA4(v29);
    if ((v15 & 1) != (v45 & 1))
    {
LABEL_44:
      sub_100068198();
      __break(1u);
      return;
    }

    v40 = v44;
  }

  while (1)
  {
    *v74 = v38;
    if ((v15 & 1) == 0)
    {
      v15 = v67;
      (*(v9 + 16))(v67, v29, v32);
      sub_100046A38(v40, v15, 0, v38);
    }

    v46 = v38[7];
    v47 = *(v46 + 8 * v40);
    v48 = __OFADD__(v47, 1);
    v49 = v47 + 1;
    if (!v48)
    {
      break;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    sub_1000470CC();
    v38 = v76;
  }

  *(v46 + 8 * v40) = v49;
  swift_endAccess();
  v50 = *(v9 + 8);
  v50(v29, v32);
  v51 = v69;

  v52 = sub_1000672F8();
  v53 = sub_100067E08();

  if (os_log_type_enabled(v52, v53))
  {
    v70 = v9 + 8;
    v54 = swift_slowAlloc();
    v55 = v32;
    v56 = swift_slowAlloc();
    *&v76 = v56;
    *v54 = 136315394;
    *(v54 + 4) = sub_10000D4F0(v71, v51, &v76);
    *(v54 + 12) = 2048;
    v57 = v66;
    v72(v66, v35, v55);
    v58 = v74;
    swift_beginAccess();
    v59 = *v58;
    if (*(v59 + 16) && (v60 = sub_100045CA4(v57), (v61 & 1) != 0))
    {
      v62 = *(*(v59 + 56) + 8 * v60);
    }

    else
    {
      v62 = 0;
    }

    swift_endAccess();
    v50(v57, v73);
    *(v54 + 14) = v62;
    _os_log_impl(&_mh_execute_header, v52, v53, "{%s} non-responsive locks count: %ld", v54, 0x16u);
    sub_1000026F0(v56);
  }
}

void sub_10005B498(uint64_t a1, void **a2, uint64_t a3, unint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t), void *a6)
{
  v71 = a5;
  v73 = a6;
  v70 = a3;
  v72 = sub_1000670C8();
  v9 = *(v72 - 8);
  v10 = __chkstk_darwin(v72);
  v65 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v66 = v64 - v13;
  __chkstk_darwin(v12);
  v15 = v64 - v14;
  v16 = *a2;
  if (qword_100080798 != -1)
  {
    swift_once();
  }

  v17 = sub_100067318();
  v18 = sub_1000026A8(v17, qword_100085CD0);
  v19 = v16;

  v67 = v18;
  v20 = sub_1000672F8();
  v21 = sub_100067E08();

  v22 = os_log_type_enabled(v20, v21);
  v23 = &LockScreenDataModel;
  v68 = a4;
  if (!v22)
  {

    v29 = v15;
    goto LABEL_14;
  }

  v64[1] = a1;
  v69 = v9;
  v24 = swift_slowAlloc();
  v25 = swift_slowAlloc();
  v64[0] = swift_slowAlloc();
  v79 = v64[0];
  *v24 = 136315650;
  *(v24 + 4) = sub_10000D4F0(v70, a4, &v79);
  *(v24 + 12) = 2080;
  v26 = sub_100067E38();
  v28 = sub_10000D4F0(v26, v27, &v79);

  *(v24 + 14) = v28;
  *(v24 + 22) = 2112;
  if ([v19 value])
  {
    sub_100067ED8();
    swift_unknownObjectRelease();
  }

  else
  {
    v75 = 0u;
    v76 = 0u;
  }

  v29 = v15;
  v77 = v75;
  v78 = v76;
  if (!*(&v76 + 1))
  {
    sub_1000096A0(&v77, &qword_100080A28);
    goto LABEL_12;
  }

  sub_100009700(0, &qword_100080A40);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v30 = sub_100067BA8();
    goto LABEL_13;
  }

  v30 = v74;
LABEL_13:
  *(v24 + 24) = v30;
  *v25 = v30;
  _os_log_impl(&_mh_execute_header, v20, v21, "{%s} security system '%s' cached value is: %@", v24, 0x20u);
  sub_1000096A0(v25, &qword_100080CA0);

  swift_arrayDestroy();

  v9 = v69;
  v23 = &LockScreenDataModel;
LABEL_14:
  v31 = sub_100028364(v19, v71);
  v32 = v72;
  if ((v31 & 1) == 0)
  {
    if ([v19 v23[13].ivar_lyt])
    {
      sub_100067ED8();
      swift_unknownObjectRelease();
    }

    else
    {
      v75 = 0u;
      v76 = 0u;
    }

    v77 = v75;
    v78 = v76;
    if (*(&v76 + 1))
    {
      sub_100009700(0, &qword_100080A30);
      if (swift_dynamicCast())
      {
        v33 = v79;
        v34 = [v79 integerValue];

        sub_1000024F4(&qword_100080BB8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100068BF0;
        *(inited + 32) = v34;
        sub_10003FB0C(inited);
        return;
      }
    }

    else
    {
      sub_1000096A0(&v77, &qword_100080A28);
    }
  }

  v36 = enum case for ServiceKind.securitySystem(_:);
  v71 = *(v9 + 104);
  v71(v29, enum case for ServiceKind.securitySystem(_:), v32);
  v37 = v73;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v75 = *v37;
  v39 = v75;
  *v37 = 0x8000000000000000;
  v41 = sub_100045CA4(v29);
  v42 = v39[2];
  v43 = (v40 & 1) == 0;
  v44 = v42 + v43;
  if (__OFADD__(v42, v43))
  {
    __break(1u);
    goto LABEL_38;
  }

  LOBYTE(v15) = v40;
  if (v39[3] >= v44)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    sub_10004657C(v44, isUniquelyReferenced_nonNull_native);
    v39 = v75;
    v45 = sub_100045CA4(v29);
    if ((v15 & 1) != (v46 & 1))
    {
      sub_100068198();
      __break(1u);
      return;
    }

    v41 = v45;
  }

  while (1)
  {
    *v73 = v39;
    if ((v15 & 1) == 0)
    {
      v15 = v66;
      (*(v9 + 16))(v66, v29, v32);
      sub_100046A38(v41, v15, 0, v39);
    }

    v47 = v39[7];
    v48 = *(v47 + 8 * v41);
    v49 = __OFADD__(v48, 1);
    v50 = v48 + 1;
    if (!v49)
    {
      break;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    sub_1000470CC();
    v39 = v75;
  }

  *(v47 + 8 * v41) = v50;
  swift_endAccess();
  v51 = *(v9 + 8);
  v51(v29, v32);
  v52 = v68;

  v53 = sub_1000672F8();
  v54 = sub_100067E08();

  if (os_log_type_enabled(v53, v54))
  {
    v69 = v9 + 8;
    v55 = swift_slowAlloc();
    v56 = v32;
    v57 = swift_slowAlloc();
    *&v75 = v57;
    *v55 = 136315394;
    *(v55 + 4) = sub_10000D4F0(v70, v52, &v75);
    *(v55 + 12) = 2048;
    v58 = v65;
    v71(v65, v36, v56);
    v59 = v73;
    swift_beginAccess();
    v60 = *v59;
    if (*(v60 + 16) && (v61 = sub_100045CA4(v58), (v62 & 1) != 0))
    {
      v63 = *(*(v60 + 56) + 8 * v61);
    }

    else
    {
      v63 = 0;
    }

    swift_endAccess();
    v51(v58, v72);
    *(v55 + 14) = v63;
    _os_log_impl(&_mh_execute_header, v53, v54, "{%s} non-responsive securiy systems count: %ld", v55, 0x16u);
    sub_1000026F0(v57);
  }

  else
  {
  }
}