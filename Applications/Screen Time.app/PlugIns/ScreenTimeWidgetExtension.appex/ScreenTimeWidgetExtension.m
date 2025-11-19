uint64_t sub_100001AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_100049058();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

BOOL sub_100001B5C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_100001BB4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100001C04@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_100049E08();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100001C50(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100049058();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_100048E98();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[9];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[11]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_100001D6C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100049058();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = sub_100048E98();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[11]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[9];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t type metadata accessor for UsageTimelineEntry()
{
  result = qword_10005D748;
  if (!qword_10005D748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100001EBC()
{
  sub_100049058();
  if (v0 <= 0x3F)
  {
    sub_100002220(319, &qword_10005D758, &type metadata for String, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v2 <= 0x3F)
      {
        sub_100048E98();
        if (v3 <= 0x3F)
        {
          sub_1000020F0(319, &qword_10005D760, type metadata accessor for HourlyUsage, &type metadata accessor for Array);
          if (v4 <= 0x3F)
          {
            sub_100002220(319, &qword_10005D768, &type metadata for MostUsedItem, &type metadata accessor for Array);
            if (v5 <= 0x3F)
            {
              sub_100002220(319, &qword_10005D770, &type metadata for UsageItem, &type metadata accessor for Array);
              if (v6 <= 0x3F)
              {
                sub_1000020F0(319, &qword_10005D778, sub_100002154, &type metadata accessor for Optional);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1000020F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_100002154()
{
  result = qword_10005D780;
  if (!qword_10005D780)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005D780);
  }

  return result;
}

__n128 sub_1000021A0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000021B0(uint64_t a1, int a2)
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

uint64_t sub_1000021D0(uint64_t result, int a2, int a3)
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

void sub_100002220(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_100002270(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_100002958();
  v3 = sub_100049DA8();

  v2(v3);
}

void sub_1000022F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() sharedCache];
  isa = sub_100049FD8().super.isa;
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100002270;
  v8[3] = &unk_100059D90;
  v7 = _Block_copy(v8);

  [v5 fetchAppInfoForBundleIdentifiers:isa completionHandler:v7];
  _Block_release(v7);
}

uint64_t sub_10000242C(uint64_t a1, void *a2)
{
  v3 = sub_1000028DC((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_1000024B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return _swift_task_switch(sub_1000024E0, 0, 0);
}

uint64_t sub_1000024E0()
{
  v1 = v0[23];
  v3 = v0[20];
  v2 = v0[21];
  v4 = [objc_opt_self() sharedCache];
  v0[24] = v4;
  v5 = sub_100049DF8();
  v0[25] = v5;
  if (v1)
  {
    v6 = v0[22];
    v7 = v0[23];
    v8 = sub_100049DF8();
  }

  else
  {
    v8 = 0;
  }

  v0[26] = v8;
  v9 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100002678;
  v10 = swift_continuation_init();
  v0[17] = sub_1000027D4(&qword_10005D7F8, &unk_10004B100);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000242C;
  v0[13] = &unk_100059CE8;
  v0[14] = v10;
  [v4 fetchPersonImageWithDSID:v9 fullName:v5 appleID:v8 forceFetch:0 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100002678()
{
  v2 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_100002758, 0, 0);
}

uint64_t sub_100002758()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 144);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1000027D4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000282C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100002890(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *sub_1000028DC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100002940(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100002958()
{
  result = qword_10005D800;
  if (!qword_10005D800)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005D800);
  }

  return result;
}

__n128 sub_1000029A4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000029B8(uint64_t *a1, int a2)
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

uint64_t sub_100002A00(uint64_t result, int a2, int a3)
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

uint64_t sub_100002A50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100002A98(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

double sub_100002B04@<D0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = sub_100049738();
  v24 = 0;
  sub_100002C84(a2, a3, v7, &v15);
  v29 = v19;
  v30 = v20;
  v31 = v21;
  v32 = v22;
  v25 = v15;
  v26 = v16;
  v27 = v17;
  v28 = v18;
  v33[0] = v15;
  v33[1] = v16;
  v33[2] = v17;
  v33[3] = v18;
  v33[4] = v19;
  v33[5] = v20;
  v33[6] = v21;
  v34 = v22;
  sub_1000055FC(&v25, &v14, &qword_10005D838, &qword_10004B2E8);
  sub_100005664(v33, &qword_10005D838, &qword_10004B2E8);
  *(&v23[4] + 7) = v29;
  *(&v23[5] + 7) = v30;
  *(&v23[6] + 7) = v31;
  *(&v23[7] + 7) = v32;
  *(v23 + 7) = v25;
  *(&v23[1] + 7) = v26;
  *(&v23[2] + 7) = v27;
  *(&v23[3] + 7) = v28;
  v9 = v23[5];
  *(a4 + 81) = v23[4];
  *(a4 + 97) = v9;
  *(a4 + 113) = v23[6];
  *(a4 + 122) = *(&v23[6] + 9);
  v10 = v23[1];
  *(a4 + 17) = v23[0];
  *(a4 + 33) = v10;
  result = *&v23[2];
  v12 = v23[3];
  *(a4 + 49) = v23[2];
  v13 = v24;
  *a4 = v8;
  *(a4 + 8) = 0;
  *(a4 + 16) = v13;
  *(a4 + 65) = v12;
  return result;
}

uint64_t sub_100002C84@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = a3;
  if ((result & 1) == 0)
  {
    sub_100049748();
    v7 = sub_100049928();
    v24 = v4;
    v9 = v8;
    v11 = v10;
    sub_1000498F8();
    v12 = sub_100049918();
    v14 = v13;
    v16 = v15;
    v18 = v17;

    sub_1000036D0(v7, v9, v11 & 1);

    sub_100049B78();
    sub_100049528();
    LOBYTE(v37) = v16 & 1;
    LOBYTE(v35[0]) = 0;
    *&v28 = v12;
    *(&v28 + 1) = v14;
    LOBYTE(v29) = v16 & 1;
    v4 = v24;
    *(&v29 + 1) = v18;
    *&v33 = swift_getKeyPath();
    *(&v33 + 1) = 1;
    LOWORD(v34) = 0;
    goto LABEL_6;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > a3)
  {
    v6 = *(a2 + 8 * a3 + 32);
    LOBYTE(v35[0]) = 1;
    *&v28 = v6;
    BYTE1(v34) = 1;

LABEL_6:
    sub_1000027D4(&qword_10005D840, &qword_10004B320);
    sub_100004914();
    sub_100004A50();
    sub_1000497E8();
    v35[4] = v41;
    v35[5] = v42;
    v35[0] = v37;
    v35[1] = v38;
    v35[2] = v39;
    v35[3] = v40;
    v26[0] = v37;
    v26[1] = v38;
    v26[4] = v41;
    v26[5] = v42;
    v26[2] = v39;
    v26[3] = v40;
    v28 = v37;
    v29 = v38;
    v36 = v43;
    v27 = v43;
    LOWORD(v34) = v43;
    v32 = v41;
    v33 = v42;
    v30 = v39;
    v31 = v40;
    v25[103] = v4 == 2;
    v19 = v38;
    *a4 = v37;
    *(a4 + 16) = v19;
    v20 = v30;
    v21 = v31;
    v22 = v33;
    v23 = v34;
    *(a4 + 64) = v32;
    *(a4 + 80) = v22;
    *(a4 + 32) = v20;
    *(a4 + 48) = v21;
    *(a4 + 96) = v23;
    *(a4 + 104) = 0;
    *(a4 + 112) = v4 != 2;
    *(a4 + 113) = v4 == 2;
    sub_1000055FC(v26, v25, &qword_10005D878, &qword_10004B338);
    return sub_100005664(v35, &qword_10005D878, &qword_10004B338);
  }

  __break(1u);
  return result;
}

uint64_t sub_100002F34@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v5 = *(v1 + 1);
  v4 = *(v1 + 2);
  result = sub_100049738();
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = *(sub_1000027D4(&qword_10005D808, &unk_10004B2B0) + 44);
    swift_getKeyPath();
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    *(v8 + 24) = v5;
    *(v8 + 32) = v4;

    sub_1000027D4(&qword_10005D810, &qword_10004BF50);
    sub_1000027D4(&qword_10005D818, &qword_10004B2E0);
    sub_1000035A8();
    sub_100005708(&qword_10005D830, &qword_10005D818, &qword_10004B2E0);
    return sub_100049B28();
  }

  return result;
}

uint64_t sub_100003094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  v7 = (*(*(sub_1000027D4(&qword_10005D880, &qword_10004B340) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = v29 - v8;
  v10 = (sub_1000027D4(&qword_10005D888, &qword_10004B348) - 8);
  v11 = (*(*v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v31 = v29 - v12;
  v13 = sub_1000027D4(&qword_10005D890, &qword_10004B350);
  v14 = *(v13 - 8);
  v32 = v13 - 8;
  v15 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v17 = v29 - v16;
  *v9 = sub_100049738();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v29[2] = *(sub_1000027D4(&qword_10005D898, &qword_10004B358) + 44);
  *&v34 = sub_100004AFC(a1);
  v29[1] = swift_getKeyPath();
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v30 = a1;
  v18[4] = a3;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_100004D3C;
  *(v19 + 24) = v18;

  sub_1000027D4(&qword_10005D8A0, &qword_10004B388);
  sub_1000027D4(&qword_10005D8A8, &qword_10004B390);
  sub_100005708(&qword_10005D8B0, &qword_10005D8A0, &qword_10004B388);
  sub_100005708(&qword_10005D8B8, &qword_10005D8A8, &qword_10004B390);
  sub_100049B28();
  sub_100049B78();
  sub_100049598();
  v20 = v31;
  sub_100004DF8(v9, v31, &qword_10005D880, &qword_10004B340);
  v21 = (v20 + v10[11]);
  v22 = v39;
  v21[4] = v38;
  v21[5] = v22;
  v21[6] = v40;
  v23 = v35;
  *v21 = v34;
  v21[1] = v23;
  v24 = v37;
  v21[2] = v36;
  v21[3] = v24;
  v25 = sub_100049B88();
  sub_100004DF8(v20, v17, &qword_10005D888, &qword_10004B348);
  v26 = v33;
  v27 = &v17[*(v32 + 44)];
  *v27 = v25;
  v27[1] = v30;
  sub_100004DF8(v17, v26, &qword_10005D890, &qword_10004B350);
}

unint64_t sub_100003454@<X0>(unint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = *a2;
  v14 = *(a2 + 3);
  v15 = v10;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a3 + 16) > result)
  {
    v12 = *(a3 + 8 * result + 32);
    v13[16] = 1;
    sub_100004E60(&v15, v13);
    sub_100004E60(&v14, v13);

    *a4 = v4;
    *(a4 + 8) = v5;
    *(a4 + 16) = v6;
    *(a4 + 24) = v7;
    *(a4 + 32) = v8;
    *(a4 + 40) = v9;
    *(a4 + 48) = v12;
    *(a4 + 56) = 0;
    *(a4 + 64) = 1;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_100003564()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_1000035A8()
{
  result = qword_10005D820;
  if (!qword_10005D820)
  {
    sub_100003634(&qword_10005D810, &qword_10004BF50);
    sub_10000367C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D820);
  }

  return result;
}

uint64_t sub_100003634(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_10000367C()
{
  result = qword_10005D828;
  if (!qword_10005D828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D828);
  }

  return result;
}

uint64_t sub_1000036D0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000036E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v3 = sub_100049818();
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = *(v41 + 64);
  __chkstk_darwin();
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000027D4(&qword_10005D960, &qword_10004B558);
  v8 = *(v7 - 8);
  v43 = v7;
  v44 = v8;
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v39 - v10;
  v45 = sub_1000027D4(&qword_10005D968, &qword_10004B560);
  v12 = (*(*(v45 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v47 = &v39 - v13;
  v14 = sub_100049798();
  v51 = 1;
  sub_100003D1C(v2, &v66);
  v62 = v76;
  v63[0] = v77[0];
  *(v63 + 9) = *(v77 + 9);
  v58 = v72;
  v59 = v73;
  v60 = v74;
  v61 = v75;
  v54 = v68;
  v55 = v69;
  v56 = v70;
  v57 = v71;
  v52 = v66;
  v53 = v67;
  v64[9] = v75;
  v64[10] = v76;
  v65[0] = v77[0];
  *(v65 + 9) = *(v77 + 9);
  v64[6] = v72;
  v64[7] = v73;
  v64[8] = v74;
  v64[2] = v68;
  v64[3] = v69;
  v64[4] = v70;
  v64[5] = v71;
  v64[0] = v66;
  v64[1] = v67;
  sub_1000055FC(&v52, &v48, &qword_10005D970, &qword_10004B568);
  sub_100005664(v64, &qword_10005D970, &qword_10004B568);
  *(&v50[9] + 7) = v61;
  *(&v50[10] + 7) = v62;
  *(&v50[11] + 7) = v63[0];
  v50[12] = *(v63 + 9);
  *(&v50[5] + 7) = v57;
  *(&v50[6] + 7) = v58;
  *(&v50[7] + 7) = v59;
  *(&v50[8] + 7) = v60;
  *(&v50[1] + 7) = v53;
  *(&v50[2] + 7) = v54;
  *(&v50[3] + 7) = v55;
  *(&v50[4] + 7) = v56;
  *(v50 + 7) = v52;
  *&v49[145] = v50[9];
  *&v49[161] = v50[10];
  *&v49[177] = v50[11];
  *&v49[193] = *(v63 + 9);
  *&v49[81] = v50[5];
  *&v49[97] = v50[6];
  *&v49[113] = v50[7];
  *&v49[129] = v50[8];
  *&v49[17] = v50[1];
  *&v49[33] = v50[2];
  *&v49[49] = v50[3];
  *&v49[65] = v50[4];
  v48 = v14;
  v49[0] = v51;
  *&v49[1] = v50[0];
  sub_100049808();
  v15 = sub_1000027D4(&qword_10005D978, &qword_10004B570);
  v16 = sub_100005708(&qword_10005D980, &qword_10005D978, &qword_10004B570);
  sub_100049A38();
  (*(v41 + 8))(v6, v42);
  v77[1] = *&v49[176];
  v77[2] = *&v49[192];
  v74 = *&v49[112];
  v75 = *&v49[128];
  v78 = v49[208];
  v76 = *&v49[144];
  v77[0] = *&v49[160];
  v70 = *&v49[48];
  v71 = *&v49[64];
  v72 = *&v49[80];
  v73 = *&v49[96];
  v66 = v48;
  v67 = *v49;
  v68 = *&v49[16];
  v69 = *&v49[32];
  sub_100005664(&v66, &qword_10005D978, &qword_10004B570);
  v17 = *(v40 + 8);
  v18 = *(v40 + 16);
  *&v48 = *v40;
  *(&v48 + 1) = v17;
  sub_100005540();

  v19 = sub_100049938();
  v21 = v20;
  LOBYTE(v6) = v22;
  *&v48 = v15;
  *(&v48 + 1) = v16;
  swift_getOpaqueTypeConformance2();
  v23 = v43;
  sub_1000499D8();
  sub_1000036D0(v19, v21, v6 & 1);

  (*(v44 + 8))(v11, v23);
  if (v18 < 0.0)
  {
    goto LABEL_9;
  }

  if (qword_10005D6E0 != -1)
  {
    swift_once();
  }

  v24 = qword_10005ED10;
  v25 = v18 < 60.0 ? 128 : 96;
  [qword_10005ED10 setAllowedUnits:v25];
  [v24 setUnitsStyle:3];
  v26 = [v24 stringFromTimeInterval:v18];
  if (v26)
  {
    v27 = v26;
    v28 = sub_100049E08();
    v30 = v29;
  }

  else
  {
LABEL_9:
    v28 = 0;
    v30 = 0xE000000000000000;
  }

  if (sub_100049E58())
  {
    *&v48 = v28;
    *(&v48 + 1) = v30;
    v31 = sub_100049938();
  }

  else
  {

    sub_100049748();
    v31 = sub_100049928();
  }

  v34 = v31;
  v35 = v32;
  v36 = v33;
  v37 = v47;
  sub_100049568();
  sub_1000036D0(v34, v35, v36 & 1);

  return sub_100005594(v37);
}

uint64_t sub_100003D1C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v83 = *a1;
  v84 = v3;
  v5 = sub_100005540();

  v45 = v5;
  v6 = sub_100049938();
  v8 = v7;
  v10 = v9;
  sub_1000498F8();
  v11 = sub_100049918();
  v13 = v12;
  v15 = v14;

  sub_1000036D0(v6, v8, v10 & 1);

  v16 = *(a1 + 48);
  v17 = sub_100049908();
  v47 = v18;
  v48 = v17;
  v20 = v19;
  v49 = v21;
  sub_1000036D0(v11, v13, v15 & 1);

  sub_100049B78();
  sub_100049528();
  v22 = v20 & 1;
  LOBYTE(v83) = v22;
  KeyPath = swift_getKeyPath();
  if (v4 >= 0.0)
  {
    if (qword_10005D6E0 != -1)
    {
      swift_once();
    }

    v25 = qword_10005ED10;
    if (v4 < 60.0)
    {
      v26 = 128;
    }

    else
    {
      v26 = 96;
    }

    [qword_10005ED10 setAllowedUnits:{v26, v45}];
    [v25 setUnitsStyle:1];
    v27 = [v25 stringFromTimeInterval:v4];
    if (v27)
    {
      v28 = v27;
      v24 = sub_100049E08();
      v23 = v29;
    }

    else
    {
      v24 = 0;
      v23 = 0xE000000000000000;
    }
  }

  else
  {
    v23 = 0xE200000000000000;
    v24 = 11565;
  }

  v83 = v24;
  v84 = v23;
  v30 = sub_100049938();
  v32 = v31;
  v34 = v33;
  sub_1000498F8();
  v35 = sub_100049918();
  v37 = v36;
  v39 = v38;
  v41 = v40;

  sub_1000036D0(v30, v32, v34 & 1);

  sub_100049B78();
  sub_100049528();
  v95 = v39 & 1;
  v42 = swift_getKeyPath();
  *&v59 = v48;
  *(&v59 + 1) = v47;
  LOBYTE(v60) = v22;
  *(&v60 + 1) = v97[0];
  DWORD1(v60) = *(v97 + 3);
  v61 = v98;
  v62 = v99;
  v63 = v100;
  *(&v60 + 1) = v49;
  *&v64 = KeyPath;
  *(&v64 + 1) = 1;
  v53 = v100;
  v54 = v64;
  v51 = v59;
  v52 = v60;
  *&v66 = v35;
  *(&v66 + 1) = v37;
  LOBYTE(v67) = v39 & 1;
  DWORD1(v67) = *&v94[3];
  *(&v67 + 1) = *v94;
  *(&v67 + 1) = v41;
  v69 = v57;
  v70 = v58;
  v68 = v56;
  *&v71 = v42;
  *(&v71 + 1) = 1;
  *&v55[40] = v56;
  *&v55[24] = v67;
  *&v55[8] = v66;
  *&v55[88] = v71;
  v96 = 0;
  v65 = 0;
  v55[0] = 0;
  v72 = 0;
  v55[104] = 0;
  *&v55[72] = v58;
  *&v55[56] = v57;
  v43 = v99;
  a2[2] = v98;
  a2[3] = v43;
  *a2 = v51;
  a2[1] = v52;
  a2[6] = *v55;
  a2[7] = *&v55[16];
  a2[4] = v53;
  a2[5] = v54;
  *(a2 + 185) = *&v55[89];
  a2[10] = *&v55[64];
  a2[11] = *&v55[80];
  a2[8] = *&v55[32];
  a2[9] = *&v55[48];
  v73[0] = v35;
  v73[1] = v37;
  v74 = v39 & 1;
  *v75 = *v94;
  *&v75[3] = *&v94[3];
  v77 = v56;
  v78 = v57;
  v79 = v58;
  v76 = v41;
  v80 = v42;
  v81 = 1;
  v82 = 0;
  sub_1000055FC(&v59, &v83, &qword_10005D840, &qword_10004B320);
  sub_1000055FC(&v66, &v83, &qword_10005D840, &qword_10004B320);
  sub_100005664(v73, &qword_10005D840, &qword_10004B320);
  v83 = v48;
  v84 = v47;
  v85 = v22;
  *v86 = v97[0];
  *&v86[3] = *(v97 + 3);
  v87 = v49;
  v88 = v98;
  v89 = v99;
  v90 = v100;
  v91 = KeyPath;
  v92 = 1;
  v93 = 0;
  return sub_100005664(&v83, &qword_10005D840, &qword_10004B320);
}

uint64_t sub_1000041DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 6);
  return sub_1000036E0(a1);
}

uint64_t sub_100004220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v3 = (sub_1000027D4(&qword_10005D918, &qword_10004B4E0) - 8);
  v4 = *(*v3 + 64);
  v5 = (__chkstk_darwin)();
  v94 = &v83[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v8 = &v83[-v7];
  v9 = sub_1000027D4(&qword_10005D920, &qword_10004B4E8);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9);
  v93 = &v83[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v15 = &v83[-v14];
  sub_100049748();
  v16 = sub_100049928();
  v18 = v17;
  v20 = v19;
  sub_1000498F8();
  v21 = sub_100049918();
  v85 = v22;
  v86 = v21;
  v84 = v23;
  v87 = v24;

  sub_1000036D0(v16, v18, v20 & 1);

  v25 = &v15[*(v10 + 44)];
  v91 = sub_100049588();
  v26 = *(v91 + 20);
  v27 = enum case for RoundedCornerStyle.continuous(_:);
  v90 = enum case for RoundedCornerStyle.continuous(_:);
  v28 = sub_100049758();
  v89 = *(*(v28 - 8) + 104);
  v89(&v25[v26], v27, v28);
  __asm { FMOV            V0.2D, #4.0 }

  v88 = _Q0;
  *v25 = _Q0;
  KeyPath = swift_getKeyPath();
  v92 = sub_1000027D4(&qword_10005D928, &qword_10004B520);
  v35 = &v25[*(v92 + 36)];
  *v35 = KeyPath;
  v35[1] = a1;
  *&v25[*(sub_1000027D4(&qword_10005D930, &qword_10004B528) + 36)] = 0x3FB47AE147AE147BLL;

  LOBYTE(a1) = sub_100049898();
  sub_1000494E8();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = &v25[*(sub_1000027D4(&qword_10005D938, &qword_10004B530) + 36)];
  *v44 = a1;
  *(v44 + 1) = v37;
  *(v44 + 2) = v39;
  *(v44 + 3) = v41;
  *(v44 + 4) = v43;
  v44[40] = 0;
  v45 = sub_100049B68();
  v47 = v46;
  v48 = &v25[*(sub_1000027D4(&qword_10005D940, &qword_10004B538) + 36)];
  *v48 = v45;
  v48[1] = v47;
  v49 = v85;
  *v15 = v86;
  *(v15 + 1) = v49;
  v15[16] = v84 & 1;
  *(v15 + 3) = v87;
  sub_100049748();
  v50 = sub_100049928();
  v52 = v51;
  v54 = v53;
  sub_1000498F8();
  v55 = sub_100049918();
  v85 = v56;
  v86 = v55;
  v84 = v57;
  v87 = v58;

  sub_1000036D0(v50, v52, v54 & 1);

  v59 = &v8[v3[11]];
  v89(&v59[*(v91 + 20)], v90, v28);
  *v59 = v88;
  v60 = [objc_opt_self() tertiarySystemFillColor];
  v61 = sub_100049AA8();
  v62 = swift_getKeyPath();
  v63 = &v59[*(v92 + 36)];
  *v63 = v62;
  v63[1] = v61;
  LOBYTE(v61) = sub_100049898();
  sub_1000494E8();
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v72 = &v59[*(sub_1000027D4(&qword_10005D948, &qword_10004B540) + 36)];
  *v72 = v61;
  *(v72 + 1) = v65;
  *(v72 + 2) = v67;
  *(v72 + 3) = v69;
  *(v72 + 4) = v71;
  v72[40] = 0;
  v73 = sub_100049B68();
  v75 = v74;
  v76 = &v59[*(sub_1000027D4(&qword_10005D950, &qword_10004B548) + 36)];
  *v76 = v73;
  v76[1] = v75;
  v77 = v85;
  *v8 = v86;
  *(v8 + 1) = v77;
  v8[16] = v84 & 1;
  *(v8 + 3) = v87;
  v78 = v93;
  sub_1000055FC(v15, v93, &qword_10005D920, &qword_10004B4E8);
  v79 = v94;
  sub_1000055FC(v8, v94, &qword_10005D918, &qword_10004B4E0);
  v80 = v95;
  sub_1000055FC(v78, v95, &qword_10005D920, &qword_10004B4E8);
  v81 = sub_1000027D4(&qword_10005D958, &qword_10004B550);
  sub_1000055FC(v79, v80 + *(v81 + 48), &qword_10005D918, &qword_10004B4E0);
  sub_100005664(v8, &qword_10005D918, &qword_10004B4E0);
  sub_100005664(v15, &qword_10005D920, &qword_10004B4E8);
  sub_100005664(v79, &qword_10005D918, &qword_10004B4E0);
  return sub_100005664(v78, &qword_10005D920, &qword_10004B4E8);
}

uint64_t sub_1000047F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = sub_100049798();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = sub_1000027D4(&qword_10005D910, &qword_10004B4D8);
  return sub_100004220(v3, a1 + *(v4 + 44));
}

uint64_t sub_10000484C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1000496D8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100004880@<X0>(uint64_t a1@<X8>)
{
  result = sub_1000496D8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1000048B4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1000496E8();
}

uint64_t sub_1000048E4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1000496E8();
}

unint64_t sub_100004914()
{
  result = qword_10005D848;
  if (!qword_10005D848)
  {
    sub_100003634(&qword_10005D840, &qword_10004B320);
    sub_1000049CC();
    sub_100005708(&qword_10005D860, &qword_10005D868, &qword_10004B330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D848);
  }

  return result;
}

unint64_t sub_1000049CC()
{
  result = qword_10005D850;
  if (!qword_10005D850)
  {
    sub_100003634(&qword_10005D858, &qword_10004B328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D850);
  }

  return result;
}

unint64_t sub_100004A50()
{
  result = qword_10005D870;
  if (!qword_10005D870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D870);
  }

  return result;
}

uint64_t sub_100004AA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000495F8();
  *a1 = result;
  return result;
}

uint64_t sub_100004AD0(uint64_t *a1)
{
  v1 = *a1;

  return sub_100049608();
}

uint64_t sub_100004AFC(uint64_t result)
{
  v1 = *(result + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = (&_swiftEmptyArrayStorage + 32);
    v6 = (result + 72);
    v25 = *(result + 16);
    while (1)
    {
      v8 = *(v6 - 5);
      v7 = *(v6 - 4);
      v9 = *(v6 - 3);
      v11 = *(v6 - 2);
      v10 = *(v6 - 1);
      v26 = *v6;
      if (v4)
      {

        v12 = __OFSUB__(v4--, 1);
        if (v12)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v13 = v2[3];
        if (((v13 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
        }

        v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
        if (v14 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = v14;
        }

        sub_1000027D4(&qword_10005D8C0, &qword_10004B398);
        v16 = swift_allocObject();
        v17 = (j__malloc_size(v16) - 32) / 56;
        v16[2] = v15;
        v16[3] = 2 * v17;
        v18 = v16 + 4;
        v19 = v2[3] >> 1;
        v5 = &v16[7 * v19 + 4];
        v20 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - v19;
        if (v2[2])
        {
          if (v16 != v2 || v18 >= &v2[7 * v19 + 4])
          {
            memmove(v18, v2 + 4, 56 * v19);
          }

          v2[2] = 0;
        }

        else
        {
        }

        v2 = v16;
        v1 = v25;
        v12 = __OFSUB__(v20, 1);
        v4 = v20 - 1;
        if (v12)
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return result;
        }
      }

      v6 += 6;
      *v5 = v3;
      v5[1] = v8;
      v5[2] = v7;
      v5[3] = v9;
      v5[4] = v11;
      v5[5] = v10;
      v5[6] = v26;
      v5 += 7;
      if (v1 == ++v3)
      {
        goto LABEL_24;
      }
    }
  }

  v4 = 0;
LABEL_24:
  v22 = v2[3];
  if (v22 >= 2)
  {
    v23 = v22 >> 1;
    v12 = __OFSUB__(v23, v4);
    v24 = v23 - v4;
    if (v12)
    {
      goto LABEL_30;
    }

    v2[2] = v24;
  }

  return v2;
}

uint64_t sub_100004CFC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100004D3C@<X0>(unint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3[2];
  v5 = v3[3];
  return sub_100003454(a1, a2, v3[4], a3);
}

uint64_t sub_100004D48()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

__n128 sub_100004D80@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *a1;
  v7 = *(a1 + 3);
  v12[0] = *(a1 + 1);
  v12[1] = v7;
  v12[2] = *(a1 + 5);
  v4(v10, v6, v12);
  v8 = v10[3];
  *(a2 + 32) = v10[2];
  *(a2 + 48) = v8;
  *(a2 + 64) = v11;
  result = v10[1];
  *a2 = v10[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_100004DF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000027D4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100004EC0(uint64_t result)
{
  v1 = *(result + 16);
  v2 = &_swiftEmptyArrayStorage;
  v3 = 0;
  if (v1)
  {
    v4 = 0;
    v5 = (&_swiftEmptyArrayStorage + 32);
    v6 = result + 32;
    while (1)
    {
      v7 = *(v6 + 8 * v4);
      if (!v3)
      {
        v8 = v2[3];
        if (((v8 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        sub_1000027D4(&qword_10005D8D0, &qword_10004B3A8);
        v11 = swift_allocObject();
        v12 = j__malloc_size(v11);
        v13 = v12 - 32;
        if (v12 < 32)
        {
          v13 = v12 - 17;
        }

        v14 = v13 >> 4;
        v11[2] = v10;
        v11[3] = 2 * (v13 >> 4);
        v15 = (v11 + 4);
        v16 = v2[3] >> 1;
        if (v2[2])
        {
          if (v11 != v2 || v15 >= &v2[2 * v16 + 4])
          {
            memmove(v11 + 4, v2 + 4, 16 * v16);
          }

          v2[2] = 0;
        }

        v5 = (v15 + 16 * v16);
        v3 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;

        v2 = v11;
      }

      v18 = __OFSUB__(v3--, 1);
      if (v18)
      {
        break;
      }

      *v5 = v4;
      v5[1] = v7;
      v5 += 2;
      if (v1 == ++v4)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_21:
  v19 = v2[3];
  if (v19 < 2)
  {
    return v2;
  }

  v20 = v19 >> 1;
  v18 = __OFSUB__(v20, v3);
  v21 = v20 - v3;
  if (!v18)
  {
    v2[2] = v21;
    return v2;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10000502C(uint64_t result)
{
  v1 = *(result + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = &_swiftEmptyArrayStorage + 32;
    v6 = (result + 80);
    v34 = *(result + 16);
    while (1)
    {
      v7 = *(v6 - 5);
      v8 = *(v6 - 4);
      v9 = *(v6 - 3);
      v10 = *(v6 - 2);
      v11 = *(v6 - 1);
      v12 = *v6;
      v35 = v11;
      v36 = *(v6 - 6);
      if (v4)
      {

        v13 = v8;
        v14 = v9;

        v15 = __OFSUB__(v4--, 1);
        if (v15)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v16 = *(v2 + 3);
        if (((v16 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_28;
        }

        v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
        if (v17 <= 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = v17;
        }

        sub_1000027D4(&qword_10005D8C8, &qword_10004B3A0);
        v19 = swift_allocObject();
        v20 = j__malloc_size(v19);
        v21 = v20 - 32;
        if (v20 < 32)
        {
          v21 = v20 + 31;
        }

        v22 = v21 >> 6;
        *(v19 + 2) = v18;
        *(v19 + 3) = 2 * (v21 >> 6);
        v23 = v19 + 32;
        v24 = *(v2 + 3) >> 1;
        v5 = &v19[64 * v24 + 32];
        v25 = (v22 & 0x7FFFFFFFFFFFFFFFLL) - v24;
        if (*(v2 + 2))
        {
          v26 = v2 + 32;
          if (v19 != v2 || v23 >= &v26[64 * v24])
          {
            memmove(v23, v26, v24 << 6);
          }

          v27 = v8;
          v28 = v9;

          *(v2 + 2) = 0;
        }

        else
        {

          v29 = v8;
          v30 = v9;
        }

        v2 = v19;
        v1 = v34;
        v15 = __OFSUB__(v25, 1);
        v4 = v25 - 1;
        if (v15)
        {
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          return result;
        }
      }

      v6 += 7;
      *v5 = v3;
      *(v5 + 1) = v36;
      *(v5 + 2) = v7;
      *(v5 + 3) = v8;
      *(v5 + 4) = v9;
      *(v5 + 5) = v10;
      *(v5 + 6) = v35;
      *(v5 + 7) = v12;
      v5 += 64;
      if (v1 == ++v3)
      {
        goto LABEL_23;
      }
    }
  }

  v4 = 0;
LABEL_23:
  v31 = *(v2 + 3);
  if (v31 >= 2)
  {
    v32 = v31 >> 1;
    v15 = __OFSUB__(v32, v4);
    v33 = v32 - v4;
    if (v15)
    {
      goto LABEL_29;
    }

    *(v2 + 2) = v33;
  }

  return v2;
}

__n128 sub_100005238(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100005254(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10000529C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100005340()
{
  result = qword_10005D8E8;
  if (!qword_10005D8E8)
  {
    sub_100003634(&qword_10005D890, &qword_10004B350);
    sub_1000053F8();
    sub_100005708(&qword_10005D900, &qword_10005D908, qword_10004B430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D8E8);
  }

  return result;
}

unint64_t sub_1000053F8()
{
  result = qword_10005D8F0;
  if (!qword_10005D8F0)
  {
    sub_100003634(&qword_10005D888, &qword_10004B348);
    sub_100005708(&qword_10005D8F8, &qword_10005D880, &qword_10004B340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D8F0);
  }

  return result;
}

uint64_t sub_1000054E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000495F8();
  *a1 = result;
  return result;
}

uint64_t sub_100005514(uint64_t *a1)
{
  v1 = *a1;

  return sub_100049608();
}

unint64_t sub_100005540()
{
  result = qword_10005D988;
  if (!qword_10005D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D988);
  }

  return result;
}

uint64_t sub_100005594(uint64_t a1)
{
  v2 = sub_1000027D4(&qword_10005D968, &qword_10004B560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000055FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000027D4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100005664(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000027D4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100005708(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003634(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100005754()
{
  result = qword_10005D9A0;
  if (!qword_10005D9A0)
  {
    sub_100003634(&qword_10005D968, &qword_10004B560);
    sub_100003634(&qword_10005D978, &qword_10004B570);
    sub_100005708(&qword_10005D980, &qword_10005D978, &qword_10004B570);
    swift_getOpaqueTypeConformance2();
    sub_100005850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D9A0);
  }

  return result;
}

unint64_t sub_100005850()
{
  result = qword_10005D9A8;
  if (!qword_10005D9A8)
  {
    sub_100049848();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D9A8);
  }

  return result;
}

uint64_t sub_1000058C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000027D4(&qword_10005D9B0, qword_10004B5B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_100048E98();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100005A0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000027D4(&qword_10005D9B0, qword_10004B5B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_100048E98();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for ScreenTimeWidgetGraph()
{
  result = qword_10005DA10;
  if (!qword_10005DA10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100005B88()
{
  sub_100005C84(319, &unk_10005DA20, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100005C84(319, &qword_10005D760, type metadata accessor for HourlyUsage, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_100048E98();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100005C84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100005D04()
{
  sub_1000027D4(&qword_10005DBF8, &qword_10004CE70);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10004B580;
  v1 = objc_opt_self();
  v2 = [v1 systemBlueColor];
  *(v0 + 32) = sub_100049AA8();
  v3 = [v1 systemTealColor];
  *(v0 + 40) = sub_100049AA8();
  v4 = [v1 systemOrangeColor];
  *(v0 + 48) = sub_100049AA8();
  v5 = [v1 systemGray3Color];
  result = sub_100049AA8();
  *(v0 + 56) = result;
  qword_100060280 = v0;
  return result;
}

uint64_t sub_100005DE4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100049708();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000027D4(&qword_10005DA60, &qword_10004B650);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_10000AB54(v2, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_100049C78();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_10004A098();
    v16 = sub_100049858();
    sub_100049298();

    sub_1000496F8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_100005FCC()
{
  v1 = type metadata accessor for HourlyUsage();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  result = type metadata accessor for ScreenTimeWidgetGraph();
  v10 = *(v0 + *(result + 20));
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = *(v1 + 20);
    v13 = v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v14 = *(v2 + 72);
    v15 = 0.0;
    do
    {
      sub_10000A418(v13, v8, type metadata accessor for HourlyUsage);
      v16 = *&v8[v12];
      result = sub_10000A480(v8);
      if (v15 <= v16)
      {
        v15 = v16;
      }

      v13 += v14;
      --v11;
    }

    while (v11);
  }

  v17 = *(v10 + 16);
  if (v17)
  {
    v18 = *(v1 + 20);
    v19 = v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v20 = *(v2 + 72);
    v21 = 0.0;
    do
    {
      sub_10000A418(v19, v6, type metadata accessor for HourlyUsage);
      v22 = *&v6[v18];
      result = sub_10000A480(v6);
      if (v21 <= v22)
      {
        v21 = v22;
      }

      v19 += v20;
      --v17;
    }

    while (v17);
  }

  return result;
}

char *sub_1000061D4(double a1, double a2, double a3)
{
  v6 = sub_10000A3A4(a1, a2, a3);
  result = sub_100023884(0, v6 & ~(v6 >> 63), 0);
  if (v6 < 0)
  {
    goto LABEL_30;
  }

  result = &_swiftEmptyArrayStorage;
  v8 = 0;
  v9 = 0;
  if (!v6)
  {
    v12 = a1;
    goto LABEL_16;
  }

  v10 = a1;
  do
  {
    v11 = v10 <= a2;
    if (a3 > 0.0)
    {
      v11 = v10 >= a2;
    }

    if (v11)
    {
      if (v8 & 1 | (v10 != a2))
      {
        goto LABEL_28;
      }

      v8 = 1;
      v12 = v10;
    }

    else
    {
      v13 = __OFADD__(v9++, 1);
      if (v13)
      {
        goto LABEL_29;
      }

      v12 = a1 + v9 * a3;
    }

    v20 = result;
    v15 = *(result + 2);
    v14 = *(result + 3);
    if (v15 >= v14 >> 1)
    {
      sub_100023884((v14 > 1), v15 + 1, 1);
      result = v20;
    }

    *(result + 2) = v15 + 1;
    *&result[8 * v15 + 32] = v10;
    v10 = v12;
    --v6;
  }

  while (v6);
  while (1)
  {
LABEL_16:
    v16 = v12 <= a2;
    if (a3 > 0.0)
    {
      v16 = v12 >= a2;
    }

    if (!v16)
    {
      break;
    }

    if ((v12 != a2) | v8 & 1)
    {
      return result;
    }

    v8 = 1;
    v17 = v12;
LABEL_23:
    v21 = result;
    v19 = *(result + 2);
    v18 = *(result + 3);
    if (v19 >= v18 >> 1)
    {
      sub_100023884((v18 > 1), v19 + 1, 1);
      result = v21;
    }

    *(result + 2) = v19 + 1;
    *&result[8 * v19 + 32] = v12;
    v12 = v17;
  }

  v13 = __OFADD__(v9++, 1);
  if (!v13)
  {
    v17 = a1 + v9 * a3;
    goto LABEL_23;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

size_t sub_1000063B4(uint64_t a1, uint64_t a2)
{
  v87 = a2;
  v93 = a1;
  v82 = sub_100049088();
  v69 = *(v82 - 8);
  v2 = *(v69 + 64);
  __chkstk_darwin(v82);
  v68 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100049098();
  v80 = *(v4 - 8);
  v81 = v4;
  v5 = *(v80 + 64);
  __chkstk_darwin(v4);
  v78 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_100049078();
  v77 = *(v79 - 8);
  v7 = *(v77 + 64);
  __chkstk_darwin(v79);
  v86 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000027D4(&qword_10005DC00, &qword_10004B7B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v64 = &v62 - v11;
  v12 = sub_1000027D4(&qword_10005DC08, &qword_10004B7B8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v63 = &v62 - v14;
  v67 = sub_100048EB8();
  v66 = *(v67 - 8);
  v15 = *(v66 + 64);
  __chkstk_darwin(v67);
  v83 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000027D4(&qword_10005DC10, &qword_10004B7C0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v84 = &v62 - v19;
  v88 = sub_1000490D8();
  v20 = *(v88 - 1);
  v21 = *(v20 + 64);
  __chkstk_darwin(v88);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100049058();
  v25 = *(v24 - 8);
  v26 = v25;
  v27 = *(v25 + 64);
  v28 = __chkstk_darwin(v24);
  v94 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v32 = &v62 - v31;
  v33 = __chkstk_darwin(v30);
  v65 = &v62 - v34;
  v35 = __chkstk_darwin(v33);
  v37 = &v62 - v36;
  __chkstk_darwin(v35);
  v39 = &v62 - v38;
  sub_100048E88();
  sub_1000027D4(&qword_10005DA58, &qword_10004B648);
  v40 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v92 = *(v25 + 72);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_10004B590;
  v42 = *(v26 + 16);
  v90 = v26 + 16;
  v91 = v40;
  v89 = v42;
  v42((v41 + v40), v39, v24);
  v75 = enum case for Calendar.Component.hour(_:);
  v43 = v20;
  v44 = *(v20 + 104);
  v73 = v20 + 104;
  v74 = v44;
  v45 = v23;
  v44(v23);
  sub_100048E88();
  v76 = sub_1000490E8();
  v85 = v26;
  v46 = *(v26 + 8);
  v46(v37, v24);
  v47 = *(v43 + 8);
  v71 = v43 + 8;
  v72 = v47;
  v48 = v88;
  v47(v45, v88);
  v70 = v45;
  v74(v45, v75, v48);
  sub_100048E68();
  v49 = v76 | sub_1000490E8();
  v46(v37, v24);
  v72(v70, v88);
  if (v49)
  {
    goto LABEL_5;
  }

  sub_100048E88();
  v50 = sub_1000490F8();
  (*(*(v50 - 8) + 56))(v63, 1, 1, v50);
  v51 = sub_100049108();
  (*(*(v51 - 8) + 56))(v64, 1, 1, v51);
  sub_100048EA8();
  (*(v77 + 104))(v86, enum case for Calendar.MatchingPolicy.nextTime(_:), v79);
  (*(v80 + 104))(v78, enum case for Calendar.RepeatedTimePolicy.first(_:), v81);
  v52 = v69;
  v53 = v68;
  (*(v69 + 104))(v68, enum case for Calendar.SearchDirection.forward(_:), v82);
  sub_1000490C8();
  (*(v52 + 8))(v53, v82);
  (*(v80 + 8))(v78, v81);
  (*(v77 + 8))(v86, v79);
  (*(v66 + 8))(v83, v67);
  v46(v37, v24);
  v54 = v85;
  if ((*(v85 + 48))(v84, 1, v24) != 1)
  {
    v88 = *(v85 + 32);
    v55 = v65;
    (v88)(v65, v84, v24);
    v89(v37, v55, v24);
    v41 = sub_1000231CC(1uLL, 2, 1, v41);
    v46(v39, v24);
    *(v41 + 16) = 2;
    v56 = v88;
    (v88)(v41 + v91 + v92, v37, v24);
    v56(v39, v65, v24);
LABEL_5:
    v54 = v85;
    goto LABEL_6;
  }

  sub_100005664(v84, &qword_10005DC10, &qword_10004B7C0);
LABEL_6:
  for (i = (v54 + 32); ; (*i)(v41 + v91 + v60 * v92, v94, v24))
  {
    sub_100048E68();
    sub_100048FE8();
    v46(v32, v24);
    v58 = sub_100048FD8();
    v46(v37, v24);
    if ((v58 & 1) == 0)
    {
      break;
    }

    sub_100049018();
    v89(v94, v39, v24);
    v60 = *(v41 + 16);
    v59 = *(v41 + 24);
    if (v60 >= v59 >> 1)
    {
      v41 = sub_1000231CC(v59 > 1, v60 + 1, 1, v41);
    }

    *(v41 + 16) = v60 + 1;
  }

  v46(v39, v24);
  return v41;
}

double sub_100006EB4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v73 = a6;
  v69 = a5;
  v75 = a1;
  v74 = a7;
  v10 = sub_1000027D4(&qword_10005DA68, &qword_10004B658);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v56 - v12;
  v14 = sub_1000027D4(&qword_10005DA70, &qword_10004B660);
  v61 = *(v14 - 8);
  v15 = *(v61 + 64);
  __chkstk_darwin(v14);
  v17 = &v56 - v16;
  v63 = sub_1000027D4(&qword_10005DA78, &qword_10004B668);
  v64 = *(v63 - 8);
  v18 = *(v64 + 64);
  __chkstk_darwin(v63);
  v59 = &v56 - v19;
  v66 = sub_1000027D4(&qword_10005DA80, &qword_10004B670);
  v67 = *(v66 - 8);
  v20 = *(v67 + 64);
  __chkstk_darwin(v66);
  v60 = &v56 - v21;
  v68 = sub_1000027D4(&qword_10005DA88, &qword_10004B678);
  v70 = *(v68 - 8);
  v22 = *(v70 + 64);
  __chkstk_darwin(v68);
  v62 = &v56 - v23;
  v71 = sub_1000027D4(&qword_10005DA90, &qword_10004B680);
  v72 = *(v71 - 8);
  v24 = *(v72 + 64);
  __chkstk_darwin(v71);
  v65 = &v56 - v25;
  v56 = a2;
  v78 = a2;
  v79 = a3;
  v80 = a4;
  sub_1000027D4(&qword_10005DA98, &qword_10004B688);
  sub_100009D0C();
  sub_100049418();
  sub_1000027D4(&qword_10005DAD8, &qword_10004B6B0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10004B5A0;
  *(v26 + 32) = 0;
  sub_100005FCC();
  *(v26 + 40) = v27;
  *&v82 = v26;
  v28 = sub_1000494D8();
  v29 = *(v28 - 8);
  v57 = *(v29 + 56);
  v58 = v29 + 56;
  v57(v13, 1, 1, v28);
  v30 = sub_1000027D4(&qword_10005DAE0, &qword_10004B6B8);
  v31 = sub_100005708(&qword_10005DAE8, &qword_10005DA70, &qword_10004B660);
  v32 = sub_100009F40(&qword_10005DAF0, &qword_10005DAE0, &qword_10004B6B8);
  v33 = v59;
  sub_100049988();
  sub_100005664(v13, &qword_10005DA68, &qword_10004B658);

  (*(v61 + 8))(v17, v14);
  v77 = v56;
  v34 = sub_1000027D4(&qword_10005DAF8, &qword_10004B6C0);
  *&v82 = v14;
  *(&v82 + 1) = v30;
  *&v83 = v31;
  *(&v83 + 1) = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = sub_100005708(&qword_10005DB00, &qword_10005DAF8, &qword_10004B6C0);
  v37 = v60;
  v38 = v63;
  sub_100049958();
  (*(v64 + 8))(v33, v38);
  v81 = v69;
  v57(v13, 1, 1, v28);
  v39 = sub_1000027D4(&qword_10005DB08, &qword_10004B6C8);
  *&v82 = v38;
  *(&v82 + 1) = v34;
  *&v83 = OpaqueTypeConformance2;
  *(&v83 + 1) = v36;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = sub_100009F40(&qword_10005DB10, &qword_10005DB08, &qword_10004B6C8);
  v42 = v62;
  v43 = v66;
  sub_100049978();
  sub_100005664(v13, &qword_10005DA68, &qword_10004B658);
  (*(v67 + 8))(v37, v43);
  v76 = v73;
  v44 = sub_1000027D4(&qword_10005DB18, &qword_10004B6D0);
  *&v82 = v43;
  *(&v82 + 1) = v39;
  *&v83 = v40;
  *(&v83 + 1) = v41;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = sub_100005708(&qword_10005DB20, &qword_10005DB18, &qword_10004B6D0);
  v47 = v65;
  v48 = v68;
  sub_100049948();
  (*(v70 + 8))(v42, v48);
  *&v82 = v48;
  *(&v82 + 1) = v44;
  *&v83 = v45;
  *(&v83 + 1) = v46;
  swift_getOpaqueTypeConformance2();
  v49 = v74;
  v50 = v71;
  sub_100049968();
  (*(v72 + 8))(v47, v50);
  v51 = (v49 + *(sub_1000027D4(&qword_10005DB28, &qword_10004B6D8) + 36));
  v52 = v51 + *(sub_1000027D4(&qword_10005DB30, &qword_10004B6E0) + 28);
  sub_1000495A8();
  *v51 = swift_getKeyPath();
  sub_100049538();
  sub_100049538();
  sub_100049B68();
  sub_100049528();
  v53 = (v49 + *(sub_1000027D4(&qword_10005DB38, &qword_10004B718) + 36));
  v54 = v83;
  *v53 = v82;
  v53[1] = v54;
  result = *&v84;
  v53[2] = v84;
  return result;
}

uint64_t sub_100007804(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for ScreenTimeWidgetGraph();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v12[1] = *(a1 + *(__chkstk_darwin(v6 - 8) + 28));
  sub_10000A418(a1, v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ScreenTimeWidgetGraph);
  v9 = (*(v7 + 80) + 25) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  sub_10000A924(v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for ScreenTimeWidgetGraph);

  sub_1000027D4(&qword_10005DBA8, &qword_10004B758);
  sub_100048E98();
  sub_1000027D4(&qword_10005DAB0, &qword_10004B690);
  sub_100005708(&qword_10005DBB0, &qword_10005DBA8, &qword_10004B758);
  sub_100009D90();
  sub_10000AB04(&qword_10005DBB8, type metadata accessor for HourlyUsage);
  return sub_100049B08();
}

uint64_t sub_100007A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a3;
  v32 = a5;
  v8 = type metadata accessor for ScreenTimeWidgetGraph();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = type metadata accessor for HourlyUsage();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11 - 8);
  v15 = &v29[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = sub_100004EC0(*(a1 + *(v14 + 36)));
  KeyPath = swift_getKeyPath();
  sub_10000A418(a1, v15, type metadata accessor for HourlyUsage);
  sub_10000A418(a4, &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ScreenTimeWidgetGraph);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (*(v9 + 80) + v17 + 9) & ~*(v9 + 80);
  v19 = swift_allocObject();
  sub_10000A924(v15, v19 + v16, type metadata accessor for HourlyUsage);
  v20 = v19 + v17;
  *v20 = a2;
  *(v20 + 8) = v30;
  sub_10000A924(&v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v19 + v18, type metadata accessor for ScreenTimeWidgetGraph);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10000A98C;
  *(v21 + 24) = v19;
  sub_1000027D4(&qword_10005DBC8, &qword_10004B788);
  sub_1000027D4(&qword_10005DBD0, &qword_10004B790);
  sub_100005708(&qword_10005DBD8, &qword_10005DBC8, &qword_10004B788);
  v22 = sub_100003634(&qword_10005DAB8, &qword_10004B698);
  v23 = sub_100003634(&qword_10005DAC0, &qword_10004B6A0);
  v33 = sub_100049438();
  v34 = &type metadata for Color;
  v35 = &protocol witness table for BarMark;
  v36 = &protocol witness table for Color;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = sub_100003634(&qword_10005DAC8, &qword_10004B6A8);
  v26 = sub_100005708(&qword_10005DAD0, &qword_10005DAC8, &qword_10004B6A8);
  v33 = v25;
  v34 = v26;
  v27 = swift_getOpaqueTypeConformance2();
  v33 = v22;
  v34 = v23;
  v35 = OpaqueTypeConformance2;
  v36 = v27;
  swift_getOpaqueTypeConformance2();
  return sub_100049B18();
}

uint64_t sub_100007E1C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v37 = a5;
  v38 = a6;
  v41 = a4;
  v40 = a3;
  v42 = a1;
  v9 = sub_1000027D4(&qword_10005DBE0, &qword_10004B798);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v39 = &v31 - v11;
  v12 = sub_1000027D4(&qword_10005DBE8, &unk_10004B7A0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_100049438();
  v32 = *(v14 - 8);
  v33 = v14;
  v15 = *(v32 + 64);
  __chkstk_darwin(v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000027D4(&qword_10005DAB8, &qword_10004B698);
  v35 = *(v18 - 8);
  v36 = v18;
  v19 = *(v35 + 64);
  __chkstk_darwin(v18);
  v34 = &v31 - v20;
  sub_100049748();
  v21 = type metadata accessor for HourlyUsage();
  v22 = *(v21 + 24);
  sub_100049058();
  sub_10000AB04(&qword_10005DBF0, &type metadata accessor for Date);
  sub_100049388();

  sub_100049748();
  v43 = *(a2 + *(v21 + 20)) * a7;
  sub_100049398();

  result = sub_100049428();
  if (qword_10005D690 == -1)
  {
    v24 = v42;
    if ((v42 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = swift_once();
  v24 = v42;
  if ((v42 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(qword_100060280 + 16) > v24)
  {
    v43 = *(qword_100060280 + 8 * v24 + 32);
    v25 = *&v33;
    v26 = v34;
    sub_1000492F8();
    v27 = (*(v32 + 8))(v17, COERCE_DOUBLE(*&v25));
    __chkstk_darwin(v27);
    sub_1000027D4(&qword_10005DAC0, &qword_10004B6A0);
    v43 = v25;
    v44 = &type metadata for Color;
    v45 = &protocol witness table for BarMark;
    v46 = &protocol witness table for Color;
    swift_getOpaqueTypeConformance2();
    *&v28 = COERCE_DOUBLE(sub_100003634(&qword_10005DAC8, &qword_10004B6A8));
    v29 = sub_100005708(&qword_10005DAD0, &qword_10005DAC8, &qword_10004B6A8);
    v43 = *&v28;
    v44 = v29;
    swift_getOpaqueTypeConformance2();
    v30 = v36;
    sub_100049308();
    return (*(v35 + 8))(v26, v30);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100008364()
{
  v0 = sub_100049C78();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  sub_100005DE4(&v10 - v6);
  sub_100049C68();
  sub_100049C58();
  v8 = *(v1 + 8);
  v8(v5, v0);
  v8(v7, v0);
  sub_1000027D4(&qword_10005DAC8, &qword_10004B6A8);
  sub_100005708(&qword_10005DAD0, &qword_10005DAC8, &qword_10004B6A8);
  return sub_100049998();
}

uint64_t sub_1000084EC(uint64_t a1)
{
  v2 = sub_1000493B8();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_100049358();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for ScreenTimeWidgetGraph();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  result = sub_100005FCC();
  if (v10 * 0.5 == 0.0)
  {
    __break(1u);
  }

  else
  {
    sub_1000061D4(0.0, v10, v10 * 0.5);
    sub_10000A418(a1, &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ScreenTimeWidgetGraph);
    v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v12 = swift_allocObject();
    sub_10000A924(&v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v11, type metadata accessor for ScreenTimeWidgetGraph);
    sub_100049348();
    sub_1000493A8();
    sub_1000027D4(&qword_10005DB70, &qword_10004B738);
    sub_10000A260();
    return sub_1000494B8();
  }

  return result;
}

uint64_t sub_10000872C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a3;
  v5 = sub_1000027D4(&qword_10005DB90, &qword_10004B748);
  v6 = *(v5 - 8);
  v50 = v5 - 8;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v49 = &v44 - v8;
  v48 = sub_1000492E8();
  v44 = *(v48 - 8);
  v9 = v44;
  v10 = *(v44 + 64);
  v11 = __chkstk_darwin(v48);
  v47 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v44 - v13;
  v15 = sub_1000493D8();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v17 = sub_100049408();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v19 = sub_1000027D4(&qword_10005DB88, &qword_10004B740);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v44 - v25;
  v52 = a1;
  v53 = a2;
  sub_1000493F8();
  sub_1000493C8();
  sub_1000027D4(&qword_10005DB98, &qword_10004B750);
  sub_10000A328();
  v27 = v26;
  v46 = v26;
  sub_100049378();
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  v28 = v14;
  v45 = v14;
  sub_1000492D8();
  v29 = *(v20 + 16);
  v30 = v24;
  v29(v24, v27, v19);
  v31 = *(v9 + 16);
  v32 = v47;
  v33 = v28;
  v34 = v48;
  v31(v47, v33, v48);
  sub_100005708(&qword_10005DB80, &qword_10005DB88, &qword_10004B740);
  v35 = v49;
  v29(v49, v30, v19);
  v36 = v50;
  v37 = *(v50 + 56);
  v31(&v35[v37], v32, v34);
  v38 = v51;
  (*(v20 + 32))(v51, v35, v19);
  v39 = *(v36 + 56);
  v40 = v44;
  (*(v44 + 32))(v38 + v39, &v35[v37], v34);
  v41 = *(v40 + 8);
  v41(v45, v34);
  v42 = *(v20 + 8);
  v42(v46, v19);
  v41(v32, v34);
  return (v42)(v30, v19);
}

uint64_t sub_100008BC0@<X0>(uint64_t *a1@<X8>)
{
  sub_1000494C8();
  if (v15)
  {
    result = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    sub_100005FCC();
    if (v14 != 0.0)
    {
      v7 = v6;
      v8 = [objc_allocWithZone(NSDateComponentsFormatter) init];
      v9 = v8;
      if (v7 > 3600.0)
      {
        v10 = 32;
      }

      else
      {
        v10 = 64;
      }

      [v8 setAllowedUnits:v10];
      [v9 setUnitsStyle:1];
      v11 = [v9 stringFromTimeInterval:v14];
      if (v11)
      {
        v12 = v11;
        sub_100049E08();
      }

      else
      {
      }
    }

    sub_100005540();
    result = sub_100049938();
    v4 = v13 & 1;
  }

  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_100008D2C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000027D4(&qword_10005DB68, &qword_10004B730);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - v7;
  v9 = sub_1000027D4(&qword_10005DB58, &qword_10004B728);
  sub_100005708(&qword_10005DB50, &qword_10005DB58, &qword_10004B728);
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, *a1, v9);
  v11 = sub_1000492E8();
  v12 = *(v5 + 56);
  v20 = v12;
  v13 = *(v11 - 8);
  (*(v13 + 16))(&v8[v12], a1[1], v11);
  v14 = sub_100049478();
  v15 = *(v5 + 72);
  v16 = a1[2];
  v17 = *(v14 - 8);
  (*(v17 + 16))(&v8[v15], v16, v14);
  (*(v10 + 32))(a2, v8, v9);
  (*(v13 + 32))(a2 + *(v5 + 56), &v8[v20], v11);
  return (*(v17 + 32))(a2 + *(v5 + 72), &v8[v15], v14);
}

uint64_t sub_100008F6C()
{
  v0 = sub_1000493B8();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_100049358();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);

  sub_100049348();
  sub_1000493A8();
  sub_1000027D4(&qword_10005DB40, &qword_10004B720);
  sub_100049058();
  sub_100009FB8();
  return sub_1000494B8();
}

uint64_t sub_1000090B4@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v1 = sub_100049458();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v68 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100049478();
  v69 = *(v4 - 8);
  v70 = v4;
  v5 = *(v69 + 64);
  v6 = __chkstk_darwin(v4);
  v74 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v66 = &v56 - v8;
  v67 = sub_1000492E8();
  v64 = *(v67 - 8);
  v9 = *(v64 + 64);
  v10 = __chkstk_darwin(v67);
  v73 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v65 = &v56 - v12;
  v13 = sub_1000493D8();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v63 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100049408();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v62 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_100048F88();
  v19 = *(v60 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v60);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_100048F98();
  v23 = *(v59 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v59);
  v26 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100048FA8();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v27);
  v32 = &v56 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v61 = sub_1000027D4(&qword_10005DB58, &qword_10004B728);
  v72 = *(v61 - 8);
  v33 = v72[8];
  v34 = __chkstk_darwin(v61);
  v36 = &v56 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v38 = &v56 - v37;
  sub_100048E38();
  sub_100048F78();
  sub_100048F68();
  (*(v19 + 8))(v22, v60);
  sub_100048F58();
  (*(v23 + 8))(v26, v59);
  (*(v28 + 8))(v32, v27);
  sub_1000493E8();
  sub_1000493C8();
  sub_10000AB04(&qword_10005DB60, &type metadata accessor for Date.FormatStyle);
  v57 = v38;
  sub_100049368();
  v78 = 0;
  v76 = 0u;
  v77 = 0u;
  v39 = v65;
  sub_1000492D8();
  sub_100049448();
  v40 = v66;
  sub_100049468();
  v41 = v72[2];
  v58 = v36;
  v42 = v61;
  v41(v36, v38, v61);
  v75[0] = v36;
  v43 = v64;
  v44 = v73;
  v45 = v39;
  v46 = v67;
  (*(v64 + 16))(v73, v39, v67);
  v75[1] = v44;
  v48 = v69;
  v47 = v70;
  v49 = v74;
  (*(v69 + 16))(v74, v40, v70);
  v75[2] = v49;
  sub_100008D2C(v75, v71);
  v50 = *(v48 + 8);
  v51 = v40;
  v52 = v47;
  v50(v51, v47);
  v53 = *(v43 + 8);
  v53(v45, v46);
  v54 = v72[1];
  v54(v57, v42);
  v50(v74, v52);
  v53(v73, v46);
  return (v54)(v58, v42);
}

uint64_t sub_1000097F8@<X0>(uint64_t a1@<X0>, double (**a2)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = v2;
  v28 = a2;
  v4 = a1 - 8;
  v27 = *(a1 - 8);
  v5 = *(v27 + 64);
  __chkstk_darwin(a1);
  v26 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000490F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000027D4(&qword_10005DA58, &qword_10004B648);
  v11 = *(sub_100049058() - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10004B5A0;
  v15 = *(v4 + 32);
  sub_100048E88();
  sub_100048E68();
  sub_1000490B8();
  v16 = sub_1000063B4(v2 + v15, v10);
  (*(v7 + 8))(v10, v6);
  v17 = v26;
  sub_10000A418(v3, v26, type metadata accessor for ScreenTimeWidgetGraph);
  v18 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v19 = (v18 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v18 + v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  result = sub_10000A924(v17, v21 + v18, type metadata accessor for ScreenTimeWidgetGraph);
  v23 = v21 + v19;
  *v23 = 0x4018000000000000;
  *(v23 + 8) = 0;
  *(v21 + v20) = v14;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v16;
  v24 = v28;
  *v28 = sub_100009C34;
  v24[1] = v21;
  return result;
}

uint64_t sub_100009AB4()
{
  v1 = type metadata accessor for ScreenTimeWidgetGraph();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  sub_1000027D4(&qword_10005DA60, &qword_10004B650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_100049C78();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = (v4 + v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *&v5[*(v1 + 20)];

  v11 = *(v1 + 24);
  v12 = sub_100048E98();
  (*(*(v12 - 8) + 8))(&v5[v11], v12);
  v13 = *(v0 + v8);

  v14 = *(v0 + v9);

  return _swift_deallocObject(v0, v9 + 8, v2 | 7);
}

double sub_100009C34@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ScreenTimeWidgetGraph() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = v2 + v8;
  v11 = *v10;
  v12 = *(v2 + v9);
  v13 = *(v2 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = *(v10 + 8);

  return sub_100006EB4(a1, v2 + v6, v11, v14, v12, v13, a2);
}

unint64_t sub_100009D0C()
{
  result = qword_10005DAA0;
  if (!qword_10005DAA0)
  {
    sub_100003634(&qword_10005DA98, &qword_10004B688);
    sub_100009D90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DAA0);
  }

  return result;
}

unint64_t sub_100009D90()
{
  result = qword_10005DAA8;
  if (!qword_10005DAA8)
  {
    sub_100003634(&qword_10005DAB0, &qword_10004B690);
    sub_100003634(&qword_10005DAB8, &qword_10004B698);
    sub_100003634(&qword_10005DAC0, &qword_10004B6A0);
    sub_100049438();
    swift_getOpaqueTypeConformance2();
    sub_100003634(&qword_10005DAC8, &qword_10004B6A8);
    sub_100005708(&qword_10005DAD0, &qword_10005DAC8, &qword_10004B6A8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DAA8);
  }

  return result;
}

uint64_t sub_100009F40(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003634(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100009FB8()
{
  result = qword_10005DB48;
  if (!qword_10005DB48)
  {
    sub_100003634(&qword_10005DB40, &qword_10004B720);
    sub_100005708(&qword_10005DB50, &qword_10005DB58, &qword_10004B728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DB48);
  }

  return result;
}

uint64_t sub_10000A084()
{
  v1 = type metadata accessor for ScreenTimeWidgetGraph();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  sub_1000027D4(&qword_10005DA60, &qword_10004B650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_100049C78();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *&v5[*(v1 + 20)];

  v9 = *(v1 + 24);
  v10 = sub_100048E98();
  (*(*(v10 - 8) + 8))(&v5[v9], v10);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000A1E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ScreenTimeWidgetGraph() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10000872C(a1, v6, a2);
}

unint64_t sub_10000A260()
{
  result = qword_10005DB78;
  if (!qword_10005DB78)
  {
    sub_100003634(&qword_10005DB70, &qword_10004B738);
    sub_100005708(&qword_10005DB80, &qword_10005DB88, &qword_10004B740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DB78);
  }

  return result;
}

uint64_t sub_10000A320@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_100008BC0(a1);
}

unint64_t sub_10000A328()
{
  result = qword_10005DBA0;
  if (!qword_10005DBA0)
  {
    sub_100003634(&qword_10005DB98, &qword_10004B750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DBA0);
  }

  return result;
}

uint64_t sub_10000A3A4(double a1, double a2, double a3)
{
  result = 0;
  v4 = 0;
  v5 = 0;
  v6 = a1;
  do
  {
    v8 = v6 <= a2;
    if (a3 > 0.0)
    {
      v8 = v6 >= a2;
    }

    if (v8)
    {
      if ((v6 != a2) | v4 & 1)
      {
        return result;
      }

      v4 = 1;
    }

    else
    {
      v7 = __OFADD__(v5++, 1);
      if (v7)
      {
        goto LABEL_12;
      }

      v6 = a1 + v5 * a3;
    }

    v7 = __OFADD__(result++, 1);
  }

  while (!v7);
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_10000A418(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000A480(uint64_t a1)
{
  v2 = type metadata accessor for HourlyUsage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000A4DC()
{
  v1 = type metadata accessor for ScreenTimeWidgetGraph();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 25) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  sub_1000027D4(&qword_10005DA60, &qword_10004B650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_100049C78();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *&v5[*(v1 + 20)];

  v9 = *(v1 + 24);
  v10 = sub_100048E98();
  (*(*(v10 - 8) + 8))(&v5[v9], v10);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000A638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ScreenTimeWidgetGraph() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 25) & ~*(v5 + 80));

  return sub_100007A28(a1, v6, v7, v8, a2);
}

uint64_t sub_10000A6C0()
{
  v1 = v0;
  v2 = (type metadata accessor for HourlyUsage() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(*v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for ScreenTimeWidgetGraph();
  v7 = *(*(v6 - 8) + 80);
  v8 = (v5 + v7 + 9) & ~v7;
  v21 = *(*(v6 - 8) + 64);
  v9 = v1 + v4;
  v10 = sub_100048E98();
  v11 = (*(v10 - 8) + 8);
  v20 = *v11;
  (*v11)(v9, v10);
  v12 = v2[8];
  v13 = sub_1000027D4(&qword_10005DBC0, &qword_10004B780);
  (*(*(v13 - 8) + 8))(v9 + v12, v13);
  v14 = *(v9 + v2[9]);

  v15 = (v1 + v8);
  sub_1000027D4(&qword_10005DA60, &qword_10004B650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_100049C78();
    (*(*(v16 - 8) + 8))(v1 + v8, v16);
  }

  else
  {
    v17 = *v15;
  }

  v18 = *(v15 + *(v6 + 20));

  v20(v15 + *(v6 + 24), v10);

  return _swift_deallocObject(v1, v8 + v21, v3 | v7 | 7);
}

uint64_t sub_10000A924(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000A98C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v7 = *(type metadata accessor for HourlyUsage() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for ScreenTimeWidgetGraph() - 8);
  v11 = *(v3 + v9);
  v12 = *(v3 + v9 + 8);
  v13 = v3 + ((v9 + *(v10 + 80) + 9) & ~*(v10 + 80));

  return sub_100007E1C(a1, v3 + v8, v11, v12, v13, a2, a3);
}

uint64_t sub_10000AA98()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000AAD0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8));
}

uint64_t sub_10000AB04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000AB54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000027D4(&qword_10005DA60, &qword_10004B650);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10000AC08(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_10000AC70()
{
  v0 = sub_1000492C8();
  sub_1000188D8(v0, qword_10005DC28);
  sub_1000143C0(v0, qword_10005DC28);
  return sub_1000492B8();
}

void sub_10000ACF0(uint64_t a1)
{
  sub_10000AE58(a1);
  v4 = v3 >> 1;
  v5 = (v3 >> 1) - v2;
  if (__OFSUB__(v3 >> 1, v2))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (!v5)
  {
LABEL_12:
    swift_unknownObjectRelease();
    sub_100018840(_swiftEmptyArrayStorage);

    return;
  }

  v6 = v1;
  v7 = v2;
  sub_1000238A4(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v7 <= v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = v7;
    }

    v9 = v8 - v7;
    v10 = (v6 + 8 * v7);
    while (v9)
    {
      v11 = *v10;
      v12 = [v11 identifier];
      v13 = sub_100049E08();
      v15 = v14;

      v17 = _swiftEmptyArrayStorage[2];
      v16 = _swiftEmptyArrayStorage[3];
      if (v17 >= v16 >> 1)
      {
        sub_1000238A4((v16 > 1), v17 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v17 + 1;
      v18 = &_swiftEmptyArrayStorage[2 * v17];
      v18[4] = v13;
      v18[5] = v15;
      --v9;
      ++v10;
      if (!--v5)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_10000AE58(uint64_t a1)
{
  v3 = *v1;
  v21 = _swiftEmptyArrayStorage;
  if (v3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10004A308())
  {
    v20 = a1;
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = sub_10004A1F8();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      a1 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ([v7 type] == 1 || objc_msgSend(v8, "type") == 2)
      {
        sub_10004A218();
        v6 = *(v21 + 16);
        sub_10004A258();
        sub_10004A268();
        sub_10004A228();
      }

      else
      {
      }

      ++v5;
      if (a1 == i)
      {
        v9 = v21;
        a1 = v20;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_19:

  v21 = sub_100016620(v10);
  sub_100015048(&v21);

  if (a1 < 0)
  {
    __break(1u);
LABEL_41:
    v18 = sub_10004A308();
    if (sub_10004A308() < 0)
    {
LABEL_52:
      __break(1u);

      __break(1u);
      return result;
    }

    if (v18 >= a1)
    {
      v19 = a1;
    }

    else
    {
      v19 = v18;
    }

    if (v18 < 0)
    {
      v19 = a1;
    }

    if (a1)
    {
      v13 = v19;
    }

    else
    {
      v13 = 0;
    }

    if (sub_10004A308() >= v13)
    {
      goto LABEL_31;
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v9 = v21;
  LODWORD(i) = v21 < 0 || (v21 & 0x4000000000000000) != 0;
  if (i)
  {
    goto LABEL_41;
  }

  v11 = *(v21 + 16);
  if (v11 >= a1)
  {
    v12 = a1;
  }

  else
  {
    v12 = *(v21 + 16);
  }

  if (a1)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v11 < v13)
  {
    goto LABEL_51;
  }

LABEL_31:
  if ((v9 & 0xC000000000000001) != 0 && v13)
  {
    sub_10001B134(0, &qword_10005DDB8, STUsageDetailItem_ptr);

    v14 = 0;
    do
    {
      v15 = v14 + 1;
      sub_10004A1E8(v14);
      v14 = v15;
    }

    while (v13 != v15);
  }

  else
  {
  }

  if (i)
  {
    v16 = sub_10004A318();

    return v16;
  }

  return v9;
}

uint64_t sub_10000B12C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000055FC(a1, &v9, &qword_10005DD80, &qword_10004B888);
  if (v10)
  {
    sub_10001435C(&v9, &v11);
  }

  else
  {
    v12 = &type metadata for ScreenTimeAppInfoCache;
    v13 = &off_100059D78;
  }

  sub_10001435C(&v11, v3 + 16);
  sub_1000055FC(a2, &v9, &qword_10005DD88, &unk_10004B890);
  if (v10)
  {
    sub_10001435C(&v9, &v11);
  }

  else
  {
    v12 = &type metadata for ScreenTimeIconCache;
    v13 = &off_100059D50;
  }

  sub_10001435C(&v11, v3 + 56);
  sub_1000055FC(a3, &v9, &qword_10005DD90, &unk_10004C8D0);
  if (v10)
  {
    sub_100005664(a3, &qword_10005DD90, &unk_10004C8D0);
    sub_100005664(a2, &qword_10005DD88, &unk_10004B890);
    sub_100005664(a1, &qword_10005DD80, &qword_10004B888);
    sub_10001435C(&v9, &v11);
  }

  else
  {
    if (qword_10005D6C0 != -1)
    {
      swift_once();
    }

    v7 = qword_100060290;
    v12 = type metadata accessor for XPCPersistentStoreManager();
    v13 = &off_10005AA70;
    *&v11 = v7;

    sub_100005664(a3, &qword_10005DD90, &unk_10004C8D0);
    sub_100005664(a2, &qword_10005DD88, &unk_10004B890);
    sub_100005664(a1, &qword_10005DD80, &qword_10004B888);
    if (v10)
    {
      sub_100005664(&v9, &qword_10005DD90, &unk_10004C8D0);
    }
  }

  sub_10001435C(&v11, v3 + 96);
  return v3;
}

uint64_t sub_10000B35C()
{
  v10 = sub_10004A0E8();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10004A0C8();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = sub_100049BE8();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9[1] = sub_10001B134(0, &qword_10005DDC8, OS_dispatch_queue_ptr);
  sub_100049BD8();
  v11 = _swiftEmptyArrayStorage;
  sub_10001B1D0(&qword_10005DF20, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000027D4(&qword_10005DF28, qword_10004B920);
  sub_100005708(&qword_10005DF30, &qword_10005DF28, qword_10004B920);
  sub_10004A178();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  result = sub_10004A118();
  qword_100060288 = result;
  return result;
}

uint64_t sub_10000B5D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t), double a9, double a10)
{
  v27 = a7;
  v28 = a8;
  v26 = a6;
  v17 = sub_1000027D4(&qword_10005DEF0, &unk_10004B910);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v26 - v20;
  sub_10001A938(a2 + 96, v29);
  (*(v18 + 16))(v21, a1, v17);
  v22 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v23 = swift_allocObject();
  (*(v18 + 32))(v23 + v22, v21, v17);
  v24 = sub_1000028DC(v29, v29[3]);
  sub_1000168F0(a3, a4, a5, v26, v27, v28, *v24, sub_10001AA30, a9, a10, v23, a2);

  return sub_100002890(v29);
}

uint64_t sub_10000B78C(uint64_t a1)
{
  v2 = type metadata accessor for UsageTimelineEntry();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_10001B218(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for UsageTimelineEntry);
  sub_1000027D4(&qword_10005DEF0, &unk_10004B910);
  return sub_100049FA8();
}

uint64_t sub_10000B840(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, double a8, double a9)
{
  v98 = a7;
  v91 = a6;
  v96 = a4;
  v99 = a3;
  v100 = a2;
  v13 = sub_100049CB8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000490F8();
  v107 = *(v18 - 8);
  v108 = v18;
  v19 = *(v107 + 64);
  v20 = __chkstk_darwin(v18);
  v106 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v103 = (&v90 - v22);
  v112 = sub_100049058();
  v95 = *(v112 - 8);
  v23 = *(v95 + 64);
  v24 = __chkstk_darwin(v112);
  v26 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v105 = &v90 - v28;
  __chkstk_darwin(v27);
  v102 = (&v90 - v29);
  v30 = sub_100048E98();
  v110 = *(v30 - 8);
  v111 = v30;
  v31 = *(v110 + 64);
  v32 = __chkstk_darwin(v30);
  v34 = &v90 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v109 = &v90 - v35;
  v36 = sub_1000027D4(&qword_10005DE00, &qword_10004B8D8);
  v37 = *(*(v36 - 8) + 64);
  v38 = __chkstk_darwin(v36 - 8);
  v101 = &v90 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v41 = &v90 - v40;
  v42 = sub_1000027D4(&qword_10005DC10, &qword_10004B7C0);
  v43 = *(*(v42 - 8) + 64);
  v44 = __chkstk_darwin(v42 - 8);
  v92 = &v90 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v113 = &v90 - v46;
  v104 = type metadata accessor for UsageTimelineEntry();
  v47 = *(*(v104 - 1) + 64);
  v48 = __chkstk_darwin(v104);
  v50 = &v90 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v94 = &v90 - v51;
  swift_beginAccess();
  *(a1 + 16) = 1;
  if (qword_10005D698 != -1)
  {
    swift_once();
  }

  v52 = sub_1000492C8();
  sub_1000143C0(v52, qword_10005DC28);
  v53 = sub_1000492A8();
  v54 = sub_10004A088();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v90 = v17;
    *v55 = 134349056;
    *(v55 + 4) = 20;
    _os_log_impl(&_mh_execute_header, v53, v54, "Failed to return widget data in %{public}ld seconds. Returning placeholder", v55, 0xCu);
    v17 = v90;
  }

  v56 = v95;
  (*(v95 + 56))(v113, 1, 1, v112);
  (*(v110 + 56))(v41, 1, 1, v111);
  sub_100049038();
  sub_1000490B8();
  (*(v14 + 16))(v17, v91, v13);
  v57 = (*(v14 + 88))(v17, v13);
  v58 = v105;
  v97 = v34;
  v93 = v41;
  if (v57 == enum case for WidgetFamily.systemSmall(_:))
  {
    goto LABEL_6;
  }

  if (v57 == enum case for WidgetFamily.systemMedium(_:))
  {
    v59 = a5;
    v60 = v109;
    v61 = 15;
    goto LABEL_9;
  }

  if (v57 == enum case for WidgetFamily.systemLarge(_:) || v57 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    v59 = a5;
    v63 = v102;
    v62 = v103;
    sub_10001C284(v102, v109);
    goto LABEL_10;
  }

  if (v57 == enum case for WidgetFamily.accessoryCircular(_:) || v57 == enum case for WidgetFamily.accessoryRectangular(_:) || v57 == enum case for WidgetFamily.accessoryInline(_:))
  {
LABEL_6:
    v59 = a5;
    v60 = v109;
    v61 = 9;
LABEL_9:
    v63 = v102;
    v62 = v103;
    sub_100022910(v61, v102, v103, v60);
LABEL_10:
    v103 = *(v107 + 8);
    (v103)(v62, v108);
    v64 = v112;
    v102 = *(v56 + 8);
    (v102)(v63, v112);
    goto LABEL_11;
  }

  v59 = a5;
  v88 = v102;
  v87 = v103;
  sub_10001C284(v102, v109);
  v103 = *(v107 + 8);
  (v103)(v87, v108);
  v89 = v13;
  v64 = v112;
  v102 = *(v56 + 8);
  (v102)(v88, v112);
  (*(v14 + 8))(v17, v89);
LABEL_11:
  sub_100049038();
  sub_1000490B8();
  *v50 = 0;
  v65 = v92;
  sub_1000055FC(v113, v92, &qword_10005DC10, &qword_10004B7C0);
  v66 = *(v56 + 48);
  v67 = v66(v65, 1, v64);
  v68 = v111;
  v69 = v58;
  v70 = v101;
  if (v67 == 1)
  {
    (*(v56 + 16))(v26, v69, v64);
    if (v66(v65, 1, v64) != 1)
    {
      sub_100005664(v65, &qword_10005DC10, &qword_10004B7C0);
    }
  }

  else
  {
    (*(v56 + 32))(v26, v65, v64);
  }

  v71 = v104;
  v72 = &v50[v104[6]];
  v73 = &v50[v104[8]];
  (*(v56 + 32))(&v50[v104[5]], v26, v64);
  *v72 = 0;
  v72[1] = 0;
  v74 = &v50[v71[7]];
  *v74 = a8;
  v74[1] = a9;
  *v73 = v96;
  v73[1] = v59;
  v75 = v93;
  sub_1000055FC(v93, v70, &qword_10005DE00, &qword_10004B8D8);
  v76 = v110;
  v77 = *(v110 + 48);
  if (v77(v70, 1, v68) == 1)
  {

    v78 = v97;
    v79 = v105;
    v80 = v106;
    sub_10001C284(v105, v97);
    (v103)(v80, v108);
    v81 = v101;
    (v102)(v79, v112);
    sub_100005664(v75, &qword_10005DE00, &qword_10004B8D8);
    sub_100005664(v113, &qword_10005DC10, &qword_10004B7C0);
    if (v77(v81, 1, v68) != 1)
    {
      sub_100005664(v81, &qword_10005DE00, &qword_10004B8D8);
    }
  }

  else
  {

    (v103)(v106, v108);
    (v102)(v105, v64);
    sub_100005664(v75, &qword_10005DE00, &qword_10004B8D8);
    sub_100005664(v113, &qword_10005DC10, &qword_10004B7C0);
    v78 = v97;
    (*(v76 + 32))(v97, v70, v68);
  }

  v82 = v104;
  v83 = v104[18];
  v84 = *(v76 + 32);
  v84(&v50[v104[9]], v78, v68);
  v84(&v50[v82[10]], v109, v68);
  *&v50[v82[11]] = _swiftEmptyArrayStorage;
  v50[v82[12]] = v98 & 1;
  *&v50[v82[13]] = _swiftEmptyArrayStorage;
  v50[v82[14]] = 0;
  v50[v82[15]] = 0;
  *&v50[v82[16]] = _swiftEmptyArrayStorage;
  *&v50[v82[17]] = 0;
  *&v50[v83] = 0;
  v85 = v94;
  sub_10001A5E0(v50, v94, type metadata accessor for UsageTimelineEntry);
  v100(v85);
  return sub_10001AAAC(v85, type metadata accessor for UsageTimelineEntry);
}

uint64_t sub_10000C3B4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, uint64_t a11, void (*a12)(void), uint64_t a13)
{
  v279 = a7;
  v277 = a6;
  v268 = a5;
  v278 = a4;
  v272 = a3;
  v270 = a2;
  v276 = a1;
  v271 = a13;
  v273 = a12;
  v16 = sub_1000027D4(&qword_10005DE00, &qword_10004B8D8);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v234 = v223 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v238 = v223 - v21;
  v22 = __chkstk_darwin(v20);
  v233 = v223 - v23;
  __chkstk_darwin(v22);
  v237 = v223 - v24;
  v25 = sub_1000027D4(&qword_10005DC10, &qword_10004B7C0);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v230 = v223 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v253 = v223 - v30;
  v31 = __chkstk_darwin(v29);
  v226 = v223 - v32;
  __chkstk_darwin(v31);
  v252 = v223 - v33;
  v263 = sub_1000490F8();
  v262 = *(v263 - 8);
  v34 = *(v262 + 64);
  v35 = __chkstk_darwin(v263);
  v251 = v223 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v224 = v223 - v38;
  v39 = __chkstk_darwin(v37);
  v247 = v223 - v40;
  __chkstk_darwin(v39);
  v243 = v223 - v41;
  v255 = sub_100049058();
  v254 = *(v255 - 8);
  v42 = *(v254 + 64);
  v43 = __chkstk_darwin(v255);
  v227 = v223 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v43);
  v248 = v223 - v46;
  v47 = __chkstk_darwin(v45);
  v244 = v223 - v48;
  v49 = __chkstk_darwin(v47);
  v225 = v223 - v50;
  v51 = __chkstk_darwin(v49);
  v245 = v223 - v52;
  __chkstk_darwin(v51);
  v242 = v223 - v53;
  v265 = sub_100048E98();
  v264 = *(v265 - 8);
  v54 = *(v264 + 64);
  v55 = __chkstk_darwin(v265);
  v231 = v223 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __chkstk_darwin(v55);
  v250 = v223 - v58;
  v59 = __chkstk_darwin(v57);
  v258 = v223 - v60;
  v61 = __chkstk_darwin(v59);
  v228 = v223 - v62;
  v63 = __chkstk_darwin(v61);
  v246 = v223 - v64;
  __chkstk_darwin(v63);
  v256 = v223 - v65;
  v266 = type metadata accessor for UsageTimelineEntry();
  v66 = *(*(v266 - 1) + 64);
  v67 = __chkstk_darwin(v266);
  v259 = (v223 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = __chkstk_darwin(v67);
  v232 = v223 - v70;
  v71 = __chkstk_darwin(v69);
  v257 = v223 - v72;
  __chkstk_darwin(v71);
  v229 = v223 - v73;
  v261 = type metadata accessor for UsageData();
  v260 = *(v261 - 1);
  v74 = *(v260 + 64);
  __chkstk_darwin(v261);
  v249 = v223 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1000027D4(&qword_10005DD98, &unk_10004B8A0);
  v77 = *(*(v76 - 8) + 64);
  v78 = __chkstk_darwin(v76 - 8);
  v239 = v223 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v78);
  v267 = v223 - v80;
  v81 = sub_100049CB8();
  v82 = *(v81 - 8);
  v83 = *(v82 + 64);
  v84 = __chkstk_darwin(v81);
  v236 = v223 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __chkstk_darwin(v84);
  v235 = v223 - v86;
  v87 = __chkstk_darwin(v85);
  v89 = v223 - v88;
  __chkstk_darwin(v87);
  v91 = v223 - v90;
  v92 = *(v82 + 16);
  v92(v223 - v90, a11, v81);
  v269 = v89;
  v241 = v82 + 16;
  v240 = v92;
  v92(v89, v91, v81);
  v93 = (*(v82 + 80) + 40) & ~*(v82 + 80);
  v94 = v93 + v83;
  v95 = (v93 + v83) & 0xFFFFFFFFFFFFFFF8;
  v96 = (v95 + 31) & 0xFFFFFFFFFFFFFFF8;
  v97 = (v96 + 23) & 0xFFFFFFFFFFFFFFF8;
  v98 = swift_allocObject();
  v98[2] = v279;
  v98[3] = a8;
  v99 = v276;
  v98[4] = v276;
  v274 = v82;
  v275 = v81;
  v100 = v82;
  v101 = v98;
  (*(v100 + 32))(v98 + v93, v91, v81);
  LOBYTE(v81) = v270;
  *(v101 + v94) = v270;
  v102 = (v101 + v95);
  v103 = v271;
  v102[1] = a9;
  v102[2] = a10;
  v104 = (v101 + v96);
  v106 = v272;
  v105 = v273;
  v107 = v278;
  *v104 = v272;
  v104[1] = v107;
  v108 = (v101 + v97);
  *v108 = v105;
  v108[1] = v103;
  sub_10001A938(v99 + 96, v281);
  v109 = sub_1000028DC(v281, v281[3]);
  v110 = swift_allocObject();
  *(v110 + 16) = sub_10001AF4C;
  *(v110 + 24) = v101;
  *(v110 + 32) = v81;
  *(v110 + 40) = v106;
  *(v110 + 48) = v107;
  v111 = v268;
  *(v110 + 56) = v99;
  *(v110 + 64) = v111;
  *(v110 + 72) = v277;
  v112 = *v109;
  v113 = v279;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  sub_1000345C4();
  if (*(v112 + 24) != 1)
  {
LABEL_4:
    v268 = a8;
    if (qword_10005D698 != -1)
    {
      swift_once();
    }

    v118 = sub_1000492C8();
    sub_1000143C0(v118, qword_10005DC28);
    v119 = sub_1000492A8();
    v120 = sub_10004A088();
    v121 = os_log_type_enabled(v119, v120);
    v122 = v267;
    v123 = v260;
    if (v121)
    {
      v124 = swift_slowAlloc();
      *v124 = 0;
      _os_log_impl(&_mh_execute_header, v119, v120, "Since persistence stores can't be loaded, no usage data can be retrieved.", v124, 2u);
    }

    v125 = v261;
    (*(v123 + 56))(v122, 1, 1, v261);
    swift_beginAccess();
    if (*(v113 + 16))
    {
      goto LABEL_47;
    }

    v270 &= 1u;
    sub_100049C28();
    v126 = v239;
    sub_1000055FC(v122, v239, &qword_10005DD98, &unk_10004B8A0);
    v127 = (*(v123 + 48))(v126, 1, v125);
    v223[1] = v101;
    if (v127 == 1)
    {
      sub_100005664(v126, &qword_10005DD98, &unk_10004B8A0);
      sub_100049038();
      sub_1000490B8();
      v128 = v235;
      v129 = v275;
      v240(v235, v269, v275);
      v130 = (*(v274 + 88))(v128, v129);
      v131 = v255;
      v132 = v254;
      v133 = v245;
      v134 = v225;
      if (v130 != enum case for WidgetFamily.systemSmall(_:))
      {
        if (v130 == enum case for WidgetFamily.systemMedium(_:))
        {
          v135 = v256;
          v136 = 15;
          goto LABEL_18;
        }

        if (v130 == enum case for WidgetFamily.systemLarge(_:) || v130 == enum case for WidgetFamily.systemExtraLarge(_:))
        {
          v151 = v242;
          v152 = v243;
          sub_10001C284(v242, v256);
          goto LABEL_19;
        }

        if (v130 != enum case for WidgetFamily.accessoryCircular(_:) && v130 != enum case for WidgetFamily.accessoryRectangular(_:) && v130 != enum case for WidgetFamily.accessoryInline(_:))
        {
          v220 = v242;
          v221 = v243;
          sub_10001C284(v242, v256);
          v261 = *(v262 + 8);
          (v261)(v221, v263);
          v260 = *(v132 + 8);
          (v260)(v220, v131);
          (*(v274 + 8))(v235, v275);
          goto LABEL_20;
        }
      }

      v135 = v256;
      v136 = 9;
LABEL_18:
      v151 = v242;
      v152 = v243;
      sub_100022910(v136, v242, v243, v135);
LABEL_19:
      v261 = *(v262 + 8);
      (v261)(v152, v263);
      v260 = *(v132 + 8);
      (v260)(v151, v131);
LABEL_20:
      v153 = sub_1000492A8();
      v154 = sub_10004A0A8();
      v155 = os_log_type_enabled(v153, v154);
      v156 = v237;
      if (v155)
      {
        v157 = swift_slowAlloc();
        *v157 = 0;
        _os_log_impl(&_mh_execute_header, v153, v154, "getCoreDataEntry returning placeholder", v157, 2u);
      }

      v158 = v252;
      (*(v132 + 56))(v252, 1, 1, v131);
      v159 = v264;
      v160 = v265;
      (*(v264 + 56))(v156, 1, 1, v265);
      (*(v159 + 16))(v246, v256, v160);
      sub_100049038();
      sub_1000490B8();
      *v257 = 0;
      v161 = v158;
      v162 = v226;
      sub_1000055FC(v161, v226, &qword_10005DC10, &qword_10004B7C0);
      v163 = *(v132 + 48);
      if (v163(v162, 1, v131) == 1)
      {
        (*(v132 + 16))(v134, v133, v131);
        if (v163(v162, 1, v131) != 1)
        {
          sub_100005664(v162, &qword_10005DC10, &qword_10004B7C0);
        }
      }

      else
      {
        (*(v132 + 32))(v134, v162, v131);
      }

      v176 = v266;
      v177 = v257;
      v178 = &v257[v266[6]];
      v179 = &v257[v266[8]];
      (*(v132 + 32))(&v257[v266[5]], v134, v131);
      *v178 = 0;
      *(v178 + 1) = 0;
      v180 = &v177[v176[7]];
      *v180 = a9;
      v180[1] = a10;
      *v179 = 0;
      *(v179 + 1) = 0;
      v181 = v233;
      sub_1000055FC(v156, v233, &qword_10005DE00, &qword_10004B8D8);
      v182 = v131;
      v183 = v264;
      v184 = *(v264 + 48);
      v185 = v265;
      if (v184(v181, 1, v265) == 1)
      {
        v186 = v228;
        v259 = v184;
        v187 = v245;
        v188 = v247;
        sub_10001C284(v245, v228);
        (v261)(v188, v263);
        (v260)(v187, v182);
        sub_100005664(v237, &qword_10005DE00, &qword_10004B8D8);
        sub_100005664(v252, &qword_10005DC10, &qword_10004B7C0);
        (*(v183 + 8))(v256, v185);
        v189 = v185;
        if (v259(v181, 1, v185) != 1)
        {
          sub_100005664(v181, &qword_10005DE00, &qword_10004B8D8);
        }
      }

      else
      {
        (v261)(v247, v263);
        (v260)(v245, v182);
        sub_100005664(v156, &qword_10005DE00, &qword_10004B8D8);
        sub_100005664(v252, &qword_10005DC10, &qword_10004B7C0);
        (*(v183 + 8))(v256, v185);
        v186 = v228;
        (*(v183 + 32))(v228, v181, v185);
        v189 = v185;
      }

      v204 = v266;
      v205 = v266[18];
      v206 = *(v183 + 32);
      v207 = v257;
      v206(&v257[v266[9]], v186, v189);
      v206((v207 + v204[10]), v246, v189);
      *(v207 + v204[11]) = _swiftEmptyArrayStorage;
      *(v207 + v204[12]) = v270;
      *(v207 + v204[13]) = _swiftEmptyArrayStorage;
      *(v207 + v204[14]) = 0;
      *(v207 + v204[15]) = 0;
      *(v207 + v204[16]) = _swiftEmptyArrayStorage;
      *(v207 + v204[17]) = 0;
      *(v207 + v205) = 0;
      v208 = v229;
      sub_10001A5E0(v207, v229, type metadata accessor for UsageTimelineEntry);
      v209 = (v208 + v204[8]);
      v210 = v209[1];
      v211 = v278;

      *v209 = v272;
      v209[1] = v211;
      v273(v208);
LABEL_46:
      sub_10001AAAC(v208, type metadata accessor for UsageTimelineEntry);
      v122 = v267;
LABEL_47:
      sub_100005664(v122, &qword_10005DD98, &unk_10004B8A0);

      goto LABEL_48;
    }

    sub_10001A5E0(v126, v249, type metadata accessor for UsageData);
    v137 = sub_1000492A8();
    v138 = sub_10004A0A8();
    v139 = os_log_type_enabled(v137, v138);
    v140 = v255;
    v141 = v254;
    if (v139)
    {
      v142 = swift_slowAlloc();
      *v142 = 0;
      _os_log_impl(&_mh_execute_header, v137, v138, "getCoreDataEntry returning entry", v142, 2u);
    }

    sub_100049038();
    v143 = v224;
    sub_1000490B8();
    v144 = v236;
    v145 = v275;
    v240(v236, v269, v275);
    v146 = (*(v274 + 88))(v144, v145);
    v147 = v248;
    v148 = v227;
    if (v146 != enum case for WidgetFamily.systemSmall(_:))
    {
      if (v146 == enum case for WidgetFamily.systemMedium(_:))
      {
        v149 = v258;
        v150 = 15;
        goto LABEL_27;
      }

      if (v146 == enum case for WidgetFamily.systemLarge(_:) || v146 == enum case for WidgetFamily.systemExtraLarge(_:))
      {
        v164 = v244;
        sub_10001C284(v244, v258);
        goto LABEL_28;
      }

      if (v146 != enum case for WidgetFamily.accessoryCircular(_:) && v146 != enum case for WidgetFamily.accessoryRectangular(_:) && v146 != enum case for WidgetFamily.accessoryInline(_:))
      {
        v222 = v244;
        sub_10001C284(v244, v258);
        v261 = *(v262 + 8);
        (v261)(v143, v263);
        v260 = *(v141 + 8);
        (v260)(v222, v140);
        (*(v274 + 8))(v236, v275);
        goto LABEL_29;
      }
    }

    v149 = v258;
    v150 = 9;
LABEL_27:
    v164 = v244;
    sub_100022910(v150, v244, v143, v149);
LABEL_28:
    v261 = *(v262 + 8);
    (v261)(v143, v263);
    v260 = *(v141 + 8);
    (v260)(v164, v140);
LABEL_29:
    v165 = sub_1000492A8();
    v166 = sub_10004A0A8();
    v167 = os_log_type_enabled(v165, v166);
    v168 = v238;
    if (v167)
    {
      v169 = swift_slowAlloc();
      *v169 = 0;
      _os_log_impl(&_mh_execute_header, v165, v166, "getCoreDataEntry returning placeholder", v169, 2u);
    }

    v170 = v253;
    (*(v141 + 56))(v253, 1, 1, v140);
    v171 = v264;
    v172 = v265;
    (*(v264 + 56))(v168, 1, 1, v265);
    (*(v171 + 16))(v250, v258, v172);
    sub_100049038();
    sub_1000490B8();
    *v259 = 0;
    v173 = v170;
    v174 = v230;
    sub_1000055FC(v173, v230, &qword_10005DC10, &qword_10004B7C0);
    v175 = *(v141 + 48);
    if (v175(v174, 1, v140) == 1)
    {
      (*(v141 + 16))(v148, v147, v140);
      if (v175(v174, 1, v140) != 1)
      {
        sub_100005664(v174, &qword_10005DC10, &qword_10004B7C0);
      }
    }

    else
    {
      (*(v141 + 32))(v148, v174, v140);
    }

    v190 = v266;
    v191 = v259;
    v192 = v259 + v266[6];
    v193 = v259 + v266[8];
    (*(v141 + 32))(v259 + v266[5], v148, v140);
    *v192 = 0;
    *(v192 + 1) = 0;
    v194 = (v191 + v190[7]);
    *v194 = a9;
    v194[1] = a10;
    *v193 = 0;
    *(v193 + 1) = 0;
    v195 = v234;
    sub_1000055FC(v168, v234, &qword_10005DE00, &qword_10004B8D8);
    v196 = v140;
    v197 = v264;
    v198 = *(v264 + 48);
    v199 = v265;
    if ((v198)(v195, 1, v265) == 1)
    {
      v200 = v231;
      v257 = v198;
      v201 = v248;
      v202 = v251;
      sub_10001C284(v248, v231);
      (v261)(v202, v263);
      (v260)(v201, v196);
      sub_100005664(v238, &qword_10005DE00, &qword_10004B8D8);
      sub_100005664(v253, &qword_10005DC10, &qword_10004B7C0);
      (*(v197 + 8))(v258, v199);
      v203 = v199;
      if ((v257)(v195, 1, v199) != 1)
      {
        sub_100005664(v195, &qword_10005DE00, &qword_10004B8D8);
      }
    }

    else
    {
      (v261)(v251, v263);
      (v260)(v248, v196);
      sub_100005664(v168, &qword_10005DE00, &qword_10004B8D8);
      sub_100005664(v253, &qword_10005DC10, &qword_10004B7C0);
      (*(v197 + 8))(v258, v199);
      v200 = v231;
      (*(v197 + 32))(v231, v195, v199);
      v203 = v199;
    }

    v212 = v266;
    v213 = v266[18];
    v214 = *(v197 + 32);
    v215 = v259;
    v214(v259 + v266[9], v200, v203);
    v214((v215 + v212[10]), v250, v203);
    *(v215 + v212[11]) = _swiftEmptyArrayStorage;
    *(v215 + v212[12]) = v270;
    *(v215 + v212[13]) = _swiftEmptyArrayStorage;
    *(v215 + v212[14]) = 0;
    *(v215 + v212[15]) = 0;
    *(v215 + v212[16]) = _swiftEmptyArrayStorage;
    *(v215 + v212[17]) = 0;
    *(v215 + v213) = 0;
    v208 = v232;
    sub_10001A5E0(v215, v232, type metadata accessor for UsageTimelineEntry);
    v216 = (v208 + v212[8]);
    v217 = v216[1];
    v218 = v278;

    *v216 = v272;
    v216[1] = v218;
    v273(v208);
    sub_10001AAAC(v249, type metadata accessor for UsageData);
    goto LABEL_46;
  }

  v114 = [*(v112 + 16) newBackgroundContext];
  [v114 setAutomaticallyMergesChangesFromParent:1];
  [v114 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  v101 = swift_allocObject();
  v101[2] = sub_10001B098;
  v101[3] = v110;
  v101[4] = v114;
  v115 = swift_allocObject();
  *(v115 + 16) = sub_10001B110;
  *(v115 + 24) = v101;
  aBlock[4] = sub_10001B12C;
  aBlock[5] = v115;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003BBCC;
  aBlock[3] = &unk_10005A3E0;
  v116 = _Block_copy(aBlock);

  v117 = v114;

  [v117 performBlockAndWait:v116];

  _Block_release(v116);
  LOBYTE(v117) = swift_isEscapingClosureAtFileLocation();

  if (v117)
  {
    __break(1u);
    goto LABEL_4;
  }

LABEL_48:

  (*(v274 + 8))(v269, v275);

  swift_bridgeObjectRelease_n();
  return sub_100002890(v281);
}

uint64_t sub_10000E290(uint64_t a1, void *a2, int a3, int a4, uint64_t a5, double a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, void (*a14)(_BYTE *), uint64_t a15)
{
  v67 = a10;
  v65 = a4;
  v66 = a3;
  v69 = a2;
  v68 = type metadata accessor for UsageTimelineEntry();
  v19 = *(*(v68 - 8) + 64);
  v20 = __chkstk_darwin(v68);
  v64 = &v58[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v23 = &v58[-v22];
  v24 = sub_1000027D4(&qword_10005DD98, &unk_10004B8A0);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v28 = &v58[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v26);
  v30 = &v58[-v29];
  v31 = type metadata accessor for UsageData();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = &v58[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = swift_beginAccess();
  if ((*(a5 + 16) & 1) == 0)
  {
    v62 = a15;
    v63 = a14;
    v61 = a12;
    sub_100049C28();
    sub_1000055FC(a1, v30, &qword_10005DD98, &unk_10004B8A0);
    v60 = v32;
    if ((*(v32 + 48))(v30, 1, v31) == 1)
    {
      sub_100005664(v30, &qword_10005DD98, &unk_10004B8A0);
      sub_10000E7B8(v65 & 0x101, v67, v66 & 1, a1, a11 & 1, v23, a6, a7);
      v37 = v68;
      v38 = &v23[*(v68 + 32)];
      v39 = v38[1];

      *v38 = v61;
      v38[1] = a13;
      v40 = v69;
      if (v69)
      {
        v41 = *(v37 + 72);
        v42 = *&v23[v41];
        v43 = v69;

        *&v23[v41] = v40;
      }

      v63(v23);
      v44 = v23;
    }

    else
    {
      v59 = a11;
      v45 = v61;
      v46 = v35;
      sub_10001A5E0(v30, v35, type metadata accessor for UsageData);
      if (qword_10005D698 != -1)
      {
        swift_once();
      }

      v47 = sub_1000492C8();
      sub_1000143C0(v47, qword_10005DC28);
      v48 = sub_1000492A8();
      v49 = sub_10004A0A8();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&_mh_execute_header, v48, v49, "getCoreDataEntry returning entry", v50, 2u);
      }

      sub_10001B218(v35, v28, type metadata accessor for UsageData);
      (*(v60 + 56))(v28, 0, 1, v31);
      v44 = v64;
      sub_10000E7B8(v65 & 0x101, v67, v66 & 1, v28, v59 & 1, v64, a6, a7);
      sub_100005664(v28, &qword_10005DD98, &unk_10004B8A0);
      v51 = v68;
      v52 = &v44[*(v68 + 32)];
      v53 = v52[1];

      *v52 = v45;
      v52[1] = a13;
      v54 = v69;
      if (v69)
      {
        v55 = *(v51 + 72);
        v56 = *&v44[v55];
        v57 = v69;

        *&v44[v55] = v54;
      }

      v63(v44);
      sub_10001AAAC(v46, type metadata accessor for UsageData);
    }

    return sub_10001AAAC(v44, type metadata accessor for UsageTimelineEntry);
  }

  return result;
}

uint64_t sub_10000E774(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_10000E7B8@<X0>(__int16 a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  v302 = a5;
  v275 = a4;
  v296 = a3;
  v303 = a6;
  v12 = sub_1000027D4(&qword_10005DD98, &unk_10004B8A0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v277 = &v256 - v14;
  v274 = type metadata accessor for UsageData();
  v273 = *(v274 - 8);
  v15 = *(v273 + 64);
  __chkstk_darwin(v274);
  v288 = &v256 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v307 = type metadata accessor for UsageTimelineEntry();
  v17 = *(*(v307 - 1) + 64);
  v18 = __chkstk_darwin(v307);
  v263 = &v256 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v287 = &v256 - v21;
  v22 = __chkstk_darwin(v20);
  v286 = &v256 - v23;
  __chkstk_darwin(v22);
  v305 = (&v256 - v24);
  v25 = sub_1000027D4(&qword_10005DE00, &qword_10004B8D8);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v265 = &v256 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v285 = &v256 - v30;
  v31 = __chkstk_darwin(v29);
  v264 = &v256 - v32;
  v33 = __chkstk_darwin(v31);
  v283 = &v256 - v34;
  v35 = __chkstk_darwin(v33);
  v282 = &v256 - v36;
  v37 = __chkstk_darwin(v35);
  v295 = (&v256 - v38);
  v39 = __chkstk_darwin(v37);
  v294 = &v256 - v40;
  __chkstk_darwin(v39);
  v292 = &v256 - v41;
  v42 = sub_1000027D4(&qword_10005DC10, &qword_10004B7C0);
  v43 = *(*(v42 - 8) + 64);
  v44 = __chkstk_darwin(v42 - 8);
  v259 = &v256 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v44);
  v278 = &v256 - v47;
  v48 = __chkstk_darwin(v46);
  v262 = &v256 - v49;
  v50 = __chkstk_darwin(v48);
  v281 = &v256 - v51;
  v52 = __chkstk_darwin(v50);
  v272 = &v256 - v53;
  v54 = __chkstk_darwin(v52);
  v293 = &v256 - v55;
  v56 = __chkstk_darwin(v54);
  v291 = &v256 - v57;
  __chkstk_darwin(v56);
  v300 = (&v256 - v58);
  v59 = sub_100049CB8();
  v60 = *(v59 - 8);
  v61 = *(v60 + 64);
  v62 = __chkstk_darwin(v59);
  v269 = &v256 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v62);
  v65 = &v256 - v64;
  v310 = sub_1000490F8();
  v308 = *(v310 - 8);
  v66 = *(v308 + 64);
  v67 = __chkstk_darwin(v310);
  v271 = &v256 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __chkstk_darwin(v67);
  v279 = &v256 - v70;
  v71 = __chkstk_darwin(v69);
  v290 = &v256 - v72;
  v73 = __chkstk_darwin(v71);
  v299 = &v256 - v74;
  __chkstk_darwin(v73);
  v76 = &v256 - v75;
  v309 = sub_100049058();
  v311 = *(v309 - 8);
  v77 = *(v311 + 64);
  v78 = __chkstk_darwin(v309);
  v256 = &v256 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __chkstk_darwin(v78);
  v257 = &v256 - v81;
  v82 = __chkstk_darwin(v80);
  v260 = &v256 - v83;
  v84 = __chkstk_darwin(v82);
  v284 = &v256 - v85;
  v86 = __chkstk_darwin(v84);
  v266 = &v256 - v87;
  v88 = __chkstk_darwin(v86);
  v268 = &v256 - v89;
  v90 = __chkstk_darwin(v88);
  v92 = &v256 - v91;
  v93 = __chkstk_darwin(v90);
  v297 = &v256 - v94;
  __chkstk_darwin(v93);
  v96 = &v256 - v95;
  v306 = sub_100048E98();
  v304 = *(v306 - 8);
  v97 = *(v304 + 64);
  v98 = __chkstk_darwin(v306);
  v258 = &v256 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __chkstk_darwin(v98);
  v267 = &v256 - v101;
  v102 = __chkstk_darwin(v100);
  v261 = &v256 - v103;
  v104 = __chkstk_darwin(v102);
  v276 = &v256 - v105;
  v106 = __chkstk_darwin(v104);
  v270 = &v256 - v107;
  v108 = __chkstk_darwin(v106);
  v110 = &v256 - v109;
  v111 = __chkstk_darwin(v108);
  v289 = &v256 - v112;
  v113 = __chkstk_darwin(v111);
  v298 = &v256 - v114;
  __chkstk_darwin(v113);
  v312 = &v256 - v115;
  sub_100049038();
  sub_1000490B8();
  v116 = *(v60 + 16);
  v280 = a2;
  v116(v65, a2, v59);
  v117 = (*(v60 + 88))(v65, v59);
  if (v117 == enum case for WidgetFamily.systemSmall(_:))
  {
    goto LABEL_2;
  }

  if (v117 == enum case for WidgetFamily.systemMedium(_:))
  {
    v118 = v312;
    v119 = 15;
    goto LABEL_5;
  }

  if (v117 == enum case for WidgetFamily.systemLarge(_:) || v117 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    sub_10001C284(v96, v312);
LABEL_6:
    v301 = *(v308 + 8);
    v301(v76, v310);
    v120 = *(v311 + 8);
    (v120)(v96, v309);
    if (a1)
    {
      goto LABEL_7;
    }

LABEL_21:
    v295 = v120;
    v137 = v292;
    if (qword_10005D698 != -1)
    {
      swift_once();
    }

    v138 = sub_1000492C8();
    sub_1000143C0(v138, qword_10005DC28);
    v139 = sub_1000492A8();
    v140 = sub_10004A0A8();
    v141 = os_log_type_enabled(v139, v140);
    v142 = v304;
    v143 = v309;
    v144 = v291;
    v145 = v297;
    if (v141)
    {
      v146 = swift_slowAlloc();
      *v146 = 0;
      _os_log_impl(&_mh_execute_header, v139, v140, "getCoreDataEntry returning placeholder", v146, 2u);
    }

    v147 = v311;
    v148 = v300;
    (*(v311 + 56))(v300, 1, 1, v143);
    v149 = v306;
    (*(v142 + 56))(v137, 1, 1, v306);
    (*(v142 + 16))(v298, v312, v149);
    sub_100049038();
    sub_1000490B8();
    *v305 = 0;
    sub_1000055FC(v148, v144, &qword_10005DC10, &qword_10004B7C0);
    v150 = *(v147 + 48);
    if (v150(v144, 1, v143) == 1)
    {
      (*(v147 + 16))(v92, v145, v143);
      if (v150(v144, 1, v143) != 1)
      {
        sub_100005664(v144, &qword_10005DC10, &qword_10004B7C0);
      }
    }

    else
    {
      (*(v147 + 32))(v92, v144, v143);
    }

    v164 = v307;
    v165 = v305;
    v166 = (v305 + v307[6]);
    v167 = (v305 + v307[8]);
    (*(v147 + 32))(v305 + v307[5], v92, v143);
    *v166 = 0;
    v166[1] = 0;
    v168 = (v165 + v164[7]);
    *v168 = a7;
    v168[1] = a8;
    *v167 = 0;
    v167[1] = 0;
    v169 = v137;
    v170 = v137;
    v171 = v294;
    sub_1000055FC(v169, v294, &qword_10005DE00, &qword_10004B8D8);
    v172 = *(v142 + 48);
    v173 = v306;
    if (v172(v171, 1, v306) == 1)
    {
      v174 = v289;
      v175 = v145;
      v176 = v170;
      v177 = v299;
      sub_10001C284(v175, v289);
      v301(v177, v310);
      (v295)(v297, v143);
      sub_100005664(v176, &qword_10005DE00, &qword_10004B8D8);
      sub_100005664(v300, &qword_10005DC10, &qword_10004B7C0);
      (*(v142 + 8))(v312, v173);
      if (v172(v171, 1, v173) != 1)
      {
        sub_100005664(v171, &qword_10005DE00, &qword_10004B8D8);
      }
    }

    else
    {
      v301(v299, v310);
      (v295)(v145, v143);
      sub_100005664(v170, &qword_10005DE00, &qword_10004B8D8);
      sub_100005664(v300, &qword_10005DC10, &qword_10004B7C0);
      (*(v142 + 8))(v312, v173);
      v174 = v289;
      (*(v142 + 32))(v289, v171, v173);
    }

    v178 = v307;
    v179 = v307[18];
    v180 = *(v142 + 32);
    v181 = v305;
    v180(v305 + v307[9], v174, v173);
    v180(&v181[v178[10]], v298, v173);
    *&v181[v178[11]] = _swiftEmptyArrayStorage;
    v181[v178[12]] = v302 & 1;
    *&v181[v178[13]] = _swiftEmptyArrayStorage;
    v181[v178[14]] = 0;
    v181[v178[15]] = 0;
    *&v181[v178[16]] = _swiftEmptyArrayStorage;
    *&v181[v178[17]] = 0;
    *&v181[v179] = 0;
    v182 = v181;
    return sub_10001A5E0(v182, v303, type metadata accessor for UsageTimelineEntry);
  }

  if (v117 == enum case for WidgetFamily.accessoryCircular(_:) || v117 == enum case for WidgetFamily.accessoryRectangular(_:) || v117 == enum case for WidgetFamily.accessoryInline(_:))
  {
LABEL_2:
    v118 = v312;
    v119 = 9;
LABEL_5:
    sub_100022910(v119, v96, v76, v118);
    goto LABEL_6;
  }

  sub_10001C284(v96, v312);
  v301 = *(v308 + 8);
  v301(v76, v310);
  v120 = *(v311 + 8);
  (v120)(v96, v309);
  (*(v60 + 8))(v65, v59);
  if ((a1 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_7:
  if ((a1 & 0x100) == 0)
  {
    v121 = v311;
    if (qword_10005D698 != -1)
    {
      swift_once();
    }

    v305 = v110;
    v122 = sub_1000492C8();
    sub_1000143C0(v122, qword_10005DC28);
    v123 = sub_1000492A8();
    v124 = sub_10004A0A8();
    v125 = os_log_type_enabled(v123, v124);
    v126 = v306;
    v127 = v304;
    v128 = v272;
    v129 = v286;
    if (v125)
    {
      v130 = swift_slowAlloc();
      *v130 = 0;
      _os_log_impl(&_mh_execute_header, v123, v124, "getCoreDataEntry returning ask to sign into iCloud view", v130, 2u);
    }

    v131 = v293;
    v132 = v309;
    (*(v121 + 56))(v293, 1, 1, v309);
    (*(v127 + 56))(v295, 1, 1, v126);
    (*(v127 + 16))(v305, v312, v126);
    v133 = v268;
    sub_100049038();
    sub_1000490B8();
    *v129 = 1;
    sub_1000055FC(v131, v128, &qword_10005DC10, &qword_10004B7C0);
    v134 = *(v121 + 48);
    v135 = v126;
    if (v134(v128, 1, v132) == 1)
    {
      v136 = v266;
      (*(v311 + 16))(v266, v133, v132);
      if (v134(v128, 1, v132) != 1)
      {
        sub_100005664(v128, &qword_10005DC10, &qword_10004B7C0);
      }
    }

    else
    {
      v136 = v266;
      (*(v311 + 32))(v266, v128, v132);
    }

    v183 = v307;
    v184 = &v129[v307[6]];
    v185 = &v129[v307[8]];
    (*(v311 + 32))(&v129[v307[5]], v136, v132);
    *v184 = 0;
    v184[1] = 0;
    v186 = &v129[v183[7]];
    *v186 = a7;
    v186[1] = a8;
    *v185 = 0;
    v185[1] = 0;
    v187 = v295;
    v188 = v282;
    sub_1000055FC(v295, v282, &qword_10005DE00, &qword_10004B8D8);
    v189 = v304;
    v190 = v135;
    v300 = *(v304 + 48);
    if ((v300)(v188, 1, v135) == 1)
    {
      v191 = v270;
      v192 = v290;
      sub_10001C284(v133, v270);
      v193 = v192;
      v129 = v286;
      v301(v193, v310);
      v194 = v133;
      v195 = v191;
      (v120)(v194, v132);
      sub_100005664(v187, &qword_10005DE00, &qword_10004B8D8);
      sub_100005664(v293, &qword_10005DC10, &qword_10004B7C0);
      (*(v189 + 8))(v312, v190);
      v135 = v190;
      if ((v300)(v188, 1, v190) != 1)
      {
        sub_100005664(v188, &qword_10005DE00, &qword_10004B8D8);
      }
    }

    else
    {
      v301(v290, v310);
      (v120)(v133, v132);
      sub_100005664(v187, &qword_10005DE00, &qword_10004B8D8);
      sub_100005664(v293, &qword_10005DC10, &qword_10004B7C0);
      (*(v189 + 8))(v312, v135);
      v195 = v270;
      (*(v189 + 32))(v270, v188, v135);
    }

    v203 = v307;
    v204 = v307[18];
    v205 = *(v189 + 32);
    v205(&v129[v307[9]], v195, v135);
    v205(&v129[v203[10]], v305, v135);
    *&v129[v203[11]] = _swiftEmptyArrayStorage;
    v129[v203[12]] = v302 & 1;
    *&v129[v203[13]] = _swiftEmptyArrayStorage;
    v129[v203[14]] = 0;
    v129[v203[15]] = v296 & 1;
    *&v129[v203[16]] = _swiftEmptyArrayStorage;
    v206 = v203[17];
LABEL_56:
    *&v129[v206] = 0;
    *&v129[v204] = 0;
    v182 = v129;
    return sub_10001A5E0(v182, v303, type metadata accessor for UsageTimelineEntry);
  }

  v295 = v120;
  v151 = v277;
  sub_1000055FC(v275, v277, &qword_10005DD98, &unk_10004B8A0);
  if ((*(v273 + 48))(v151, 1, v274) == 1)
  {
    sub_100005664(v151, &qword_10005DD98, &unk_10004B8A0);
    v152 = v311;
    v153 = v278;
    v154 = v309;
    (*(v311 + 56))(v278, 1, 1, v309);
    v155 = v304;
    v156 = v306;
    (*(v304 + 56))(v285, 1, 1, v306);
    (*(v155 + 16))(v267, v312, v156);
    v157 = v257;
    sub_100049038();
    sub_1000490B8();
    v129 = v263;
    *v263 = 0;
    v158 = v259;
    sub_1000055FC(v153, v259, &qword_10005DC10, &qword_10004B7C0);
    v159 = *(v152 + 48);
    if (v159(v158, 1, v154) == 1)
    {
      v160 = v256;
      (*(v152 + 16))(v256, v157, v154);
      v161 = v159(v158, 1, v154) == 1;
      v162 = v158;
      v163 = v265;
      if (!v161)
      {
        sub_100005664(v162, &qword_10005DC10, &qword_10004B7C0);
      }
    }

    else
    {
      v160 = v256;
      (*(v152 + 32))(v256, v158, v154);
      v163 = v265;
    }

    v207 = v307;
    v208 = &v129[v307[6]];
    v209 = &v129[v307[8]];
    (*(v152 + 32))(&v129[v307[5]], v160, v154);
    *v208 = 0;
    v208[1] = 0;
    v210 = &v129[v207[7]];
    *v210 = a7;
    v210[1] = a8;
    *v209 = 0;
    v209[1] = 0;
    v211 = v285;
    sub_1000055FC(v285, v163, &qword_10005DE00, &qword_10004B8D8);
    v212 = *(v155 + 48);
    v213 = v306;
    if (v212(v163, 1, v306) == 1)
    {
      v214 = v258;
      v215 = v157;
      v216 = v157;
      v217 = v271;
      sub_10001C284(v215, v258);
      v301(v217, v310);
      v218 = v265;
      (v295)(v216, v154);
      sub_100005664(v285, &qword_10005DE00, &qword_10004B8D8);
      sub_100005664(v278, &qword_10005DC10, &qword_10004B7C0);
      (*(v155 + 8))(v312, v213);
      if (v212(v218, 1, v213) != 1)
      {
        sub_100005664(v218, &qword_10005DE00, &qword_10004B8D8);
      }
    }

    else
    {
      v301(v271, v310);
      (v295)(v157, v154);
      sub_100005664(v211, &qword_10005DE00, &qword_10004B8D8);
      sub_100005664(v278, &qword_10005DC10, &qword_10004B7C0);
      (*(v155 + 8))(v312, v213);
      v214 = v258;
      (*(v155 + 32))(v258, v163, v213);
    }

    v226 = v307;
    v204 = v307[18];
    v227 = *(v155 + 32);
    v227(&v129[v307[9]], v214, v213);
    v227(&v129[v226[10]], v267, v213);
    *&v129[v226[11]] = _swiftEmptyArrayStorage;
    v129[v226[12]] = v302 & 1;
    *&v129[v226[13]] = _swiftEmptyArrayStorage;
    v129[v226[14]] = 0;
    v129[v226[15]] = v296 & 1;
    *&v129[v226[16]] = _swiftEmptyArrayStorage;
    v206 = v226[17];
    goto LABEL_56;
  }

  v196 = v288;
  sub_10001A5E0(v151, v288, type metadata accessor for UsageData);
  v197 = *(v60 + 104);
  v198 = v269;
  v197(v269, enum case for WidgetFamily.systemLarge(_:), v59);
  sub_10001B1D0(&qword_10005DE08, &type metadata accessor for WidgetFamily);
  sub_100049F38();
  sub_100049F38();
  v199 = *(v60 + 8);
  v199(v198, v59);
  if (v314 == v313)
  {
    v200 = *(v196 + 16);
    v305 = sub_10001893C();
    sub_100018C4C(v196, 6);
    v202 = v201;
  }

  else
  {
    v202 = _swiftEmptyArrayStorage;
    v305 = _swiftEmptyArrayStorage;
  }

  v219 = v283;
  v220 = v269;
  v197(v269, enum case for WidgetFamily.systemMedium(_:), v59);
  sub_100049F38();
  sub_100049F38();
  v199(v220, v59);
  if (v314 == v313)
  {

    v221 = v288;
    sub_100018C4C(v288, 4);
    v202 = v222;
    v223 = v306;
    v224 = v304;
    v225 = v309;
  }

  else
  {
    v223 = v306;
    v224 = v304;
    v225 = v309;
    v221 = v288;
  }

  v229 = v311;
  v230 = v281;
  (*(v311 + 56))(v281, 1, 1, v225);
  (*(v224 + 56))(v219, 1, 1, v223);
  v231 = v312;
  (*(v224 + 16))(v276, v312, v223);
  v300 = sub_100019170(*(v221 + 24), *(v221 + 8), v231);
  v232 = *(v221 + 32);
  v233 = v284;
  sub_100049038();
  sub_1000490B8();
  *v287 = 0;
  v234 = v262;
  sub_1000055FC(v230, v262, &qword_10005DC10, &qword_10004B7C0);
  v235 = *(v229 + 48);
  v236 = v235(v234, 1, v225);
  v309 = v202;
  if (v236 == 1)
  {
    v237 = v260;
    (*(v229 + 16))(v260, v233, v225);
    if (v235(v234, 1, v225) != 1)
    {
      sub_100005664(v234, &qword_10005DC10, &qword_10004B7C0);
    }
  }

  else
  {
    v237 = v260;
    (*(v229 + 32))(v260, v234, v225);
  }

  v238 = v307;
  v239 = v287;
  v240 = &v287[v307[6]];
  v241 = &v287[v307[8]];
  (*(v229 + 32))(&v287[v307[5]], v237, v225);
  *v240 = 0;
  v240[1] = 0;
  v242 = &v239[v238[7]];
  *v242 = a7;
  v242[1] = a8;
  *v241 = 0;
  v241[1] = 0;
  v243 = v283;
  v244 = v264;
  sub_1000055FC(v283, v264, &qword_10005DE00, &qword_10004B8D8);
  v245 = *(v224 + 48);
  if (v245(v244, 1, v223) == 1)
  {
    v246 = v261;
    v247 = v223;
    v248 = v279;
    sub_10001C284(v284, v261);
    v249 = v248;
    v223 = v247;
    v301(v249, v310);
    (v295)(v284, v225);
    sub_100005664(v243, &qword_10005DE00, &qword_10004B8D8);
    sub_100005664(v281, &qword_10005DC10, &qword_10004B7C0);
    (*(v224 + 8))(v312, v247);
    v250 = v245(v244, 1, v247);
    v251 = v309;
    if (v250 != 1)
    {
      sub_100005664(v244, &qword_10005DE00, &qword_10004B8D8);
    }
  }

  else
  {
    v301(v279, v310);
    (v295)(v284, v225);
    sub_100005664(v243, &qword_10005DE00, &qword_10004B8D8);
    sub_100005664(v281, &qword_10005DC10, &qword_10004B7C0);
    (*(v224 + 8))(v312, v223);
    v246 = v261;
    (*(v224 + 32))(v261, v244, v223);
    v251 = v309;
  }

  v252 = v307;
  v253 = v307[18];
  v254 = *(v224 + 32);
  v255 = v287;
  v254(&v287[v307[9]], v246, v223);
  v254((v255 + v252[10]), v276, v223);
  *(v255 + v252[11]) = v300;
  *(v255 + v252[12]) = v302 & 1;
  *(v255 + v252[13]) = v251;
  *(v255 + v252[14]) = 0;
  *(v255 + v252[15]) = v296 & 1;
  *(v255 + v252[16]) = v305;
  *(v255 + v252[17]) = v232;
  *(v255 + v253) = 0;
  sub_10001A5E0(v255, v303, type metadata accessor for UsageTimelineEntry);
  return sub_10001AAAC(v288, type metadata accessor for UsageData);
}

void sub_1000109B0(void *a1, void (*a2)(uint64_t, void, uint64_t, uint64_t), NSObject *a3, int a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  LODWORD(v13) = a4;
  v275 = a2;
  v16 = sub_1000027D4(&qword_10005DD98, &unk_10004B8A0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v245 - v18;
  v273 = sub_100049058();
  v20 = *(*(v273 - 8) + 64);
  v21 = __chkstk_darwin(*(v273 - 8));
  v22 = __chkstk_darwin(v21);
  v23 = __chkstk_darwin(v22);
  v24 = __chkstk_darwin(v23);
  v26 = (&v245 - v25);
  v27 = __chkstk_darwin(v24);
  v32 = &v245 - v31;
  if (!a1)
  {
    if (qword_10005D698 != -1)
    {
      swift_once();
    }

    v40 = sub_1000492C8();
    sub_1000143C0(v40, qword_10005DC28);
    v41 = sub_1000492A8();
    v42 = sub_10004A088();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Since persistence stores can't be loaded, no usage data can be retrieved.", v43, 2u);
    }

    v44 = type metadata accessor for UsageData();
    (*(*(v44 - 8) + 56))(v19, 1, 1, v44);
    v275(v19, 0, 0, 0);
    goto LABEL_140;
  }

  v266 = v29;
  v267 = v27;
  v262 = v28;
  v263 = v30;
  v264 = a8;
  v265 = a7;
  v33 = qword_10005D698;
  v274 = a1;
  v272 = a6;
  v269 = a5;
  LODWORD(v271) = v13;
  if (v13)
  {
    v270 = a3;
    v268 = v19;
    if (v33 != -1)
    {
      swift_once();
    }

    v34 = sub_1000492C8();
    sub_1000143C0(v34, qword_10005DC28);

    v35 = sub_1000492A8();
    v36 = sub_10004A0A8();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v278 = v38;
      *v37 = 136446210;
      v39 = v269;
      *(v37 + 4) = sub_10003C4F8(v269, v272, &v278);
      _os_log_impl(&_mh_execute_header, v35, v36, "Fetching information for user with dsid: %{public}s.", v37, 0xCu);
      sub_100002890(v38);

      a6 = v272;
    }

    else
    {

      v39 = v269;
    }

    v50 = [objc_opt_self() fetchRequest];
    sub_10001B134(0, &qword_10005DF08, NSPredicate_ptr);
    sub_1000027D4(&qword_10005DF10, &qword_10004C8E0);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_10004B5A0;
    *(v54 + 56) = &type metadata for String;
    v55 = sub_10001B17C();
    *(v54 + 32) = 1684632420;
    *(v54 + 40) = 0xE400000000000000;
    *(v54 + 96) = &type metadata for String;
    *(v54 + 104) = v55;
    *(v54 + 64) = v55;
    *(v54 + 72) = v39;
    *(v54 + 80) = a6;

    v56 = sub_10004A068();
    [v50 setPredicate:v56];

    v278 = 0;
    v57 = [v50 execute:&v278];
    v58 = v278;
    if (!v57)
    {
      v95 = v278;
      sub_100048F28();

      swift_willThrow();

      v96 = sub_1000492A8();
      v97 = sub_10004A088();
      if (!os_log_type_enabled(v96, v97))
      {
        v99 = 0;
        v19 = v268;
LABEL_138:

        v240 = 0;
        goto LABEL_139;
      }

      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&_mh_execute_header, v96, v97, "Fetching user information returned nil results", v98, 2u);
      v99 = 0;
      v19 = v268;
LABEL_136:

      goto LABEL_138;
    }

    v13 = v57;
    sub_10001B134(0, &qword_10005DEF8, STCoreUser_ptr);
    v52 = sub_100049F58();
    v59 = v58;

    v19 = v268;
    a3 = v270;
    a6 = v272;
    LOBYTE(v13) = v271;
  }

  else
  {
    if (v33 != -1)
    {
      swift_once();
    }

    v45 = sub_1000492C8();
    sub_1000143C0(v45, qword_10005DC28);
    v46 = sub_1000492A8();
    v47 = sub_10004A0A8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "Fetching local user information", v48, 2u);
      LOBYTE(v13) = v271;
      a6 = v272;
    }

    v49 = [objc_opt_self() fetchRequestMatchingLocalUser];
    v278 = 0;
    v50 = [v49 execute:&v278];

    v51 = v278;
    if (!v50)
    {
      v270 = a3;
      v93 = v278;
      v94 = sub_100048F28();

      swift_willThrow();
      LODWORD(a3) = 0;
      v61 = 0;
      goto LABEL_51;
    }

    sub_10001B134(0, &qword_10005DEF8, STCoreUser_ptr);
    v52 = sub_100049F58();
    v53 = v51;
  }

  if (v52 >> 62)
  {
    v61 = sub_10004A308() > 0;
    if (sub_10004A308())
    {
      goto LABEL_23;
    }

    goto LABEL_130;
  }

  v60 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v61 = v60 != 0;
  if (!v60)
  {
LABEL_130:

    if (v61)
    {
      v240 = 256;
      v99 = 1;
LABEL_139:
      v244 = type metadata accessor for UsageData();
      (*(*(v244 - 8) + 56))(v19, 1, 1, v244);
      v275(v19, 0, 0, v240 | v99);

LABEL_140:
      sub_100005664(v19, &qword_10005DD98, &unk_10004B8A0);
      return;
    }

    if (qword_10005D698 != -1)
    {
      swift_once();
    }

    v241 = sub_1000492C8();
    sub_1000143C0(v241, qword_10005DC28);
    v96 = sub_1000492A8();
    v242 = sub_10004A088();
    if (!os_log_type_enabled(v96, v242))
    {
      v99 = 1;
      goto LABEL_138;
    }

    v243 = swift_slowAlloc();
    *v243 = 0;
    _os_log_impl(&_mh_execute_header, v96, v242, "Fetching user information returned empty results", v243, 2u);
    v99 = 1;
    goto LABEL_136;
  }

LABEL_23:
  v260 = v61;
  if ((v52 & 0xC000000000000001) != 0)
  {
    goto LABEL_142;
  }

  if (!*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_144;
  }

  v62 = *(v52 + 32);
LABEL_26:
  v63 = v62;

  if (![v63 screenTimeEnabled])
  {
    if (qword_10005D698 != -1)
    {
      swift_once();
    }

    v87 = sub_1000492C8();
    sub_1000143C0(v87, qword_10005DC28);
    v88 = sub_1000492A8();
    v89 = sub_10004A0A8();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&_mh_execute_header, v88, v89, "ScreenTime is disabled.", v90, 2u);
    }

    v91 = type metadata accessor for UsageData();
    (*(*(v91 - 8) + 56))(v19, 1, 1, v91);
    if (v260)
    {
      v92 = 257;
    }

    else
    {
      v92 = 1;
    }

    v275(v19, 0, 0, v92);

    goto LABEL_140;
  }

  if (qword_10005D698 != -1)
  {
LABEL_146:
    swift_once();
  }

  v64 = sub_1000492C8();
  v261 = sub_1000143C0(v64, qword_10005DC28);
  v65 = sub_1000492A8();
  v66 = sub_10004A0A8();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&_mh_execute_header, v65, v66, "ScreenTime is enabled.", v67, 2u);
    LOBYTE(v13) = v271;
    a6 = v272;
  }

  v68 = objc_opt_self();
  v278 = 0;
  v69 = [v68 fetchOrCreateUsageRequestForUser:v63 inContext:v274 error:&v278];
  v270 = a3;
  if (!v69)
  {
    v100 = v278;
    v94 = sub_100048F28();

    swift_willThrow();
    goto LABEL_50;
  }

  v70 = v69;
  v71 = v278;
  sub_100049048();
  isa = sub_100048FB8().super.isa;
  [v70 setRequestedDate:isa];

  v252 = v70;
  [v70 setIsBackgroundTask:1];
  v73 = [objc_allocWithZone(NSDateFormatter) init];
  v74 = v267[2].isa;
  v250 = v267 + 2;
  v249 = v74;
  v74(v26, v32, v273);
  v75 = v73;
  v76 = sub_1000492A8();
  LODWORD(v70) = sub_10004A0A8();

  LODWORD(v254) = v70;
  v256 = v76;
  v77 = os_log_type_enabled(v76, v70);
  v257 = v63;
  v268 = v19;
  v258 = v75;
  if (v77)
  {
    v13 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v278 = v78;
    *v13 = 136446210;
    v79 = sub_100048FB8().super.isa;
    v80 = [v75 stringFromDate:v79];

    v81 = sub_100049E08();
    v82 = v32;
    v84 = v83;

    v63 = v257;
    v259 = v267[1].isa;
    v259(v26, v273);
    v85 = sub_10003C4F8(v81, v84, &v278);
    v32 = v82;

    *(v13 + 4) = v85;
    v86 = v256;
    _os_log_impl(&_mh_execute_header, v256, v254, "Creating usage request with timestamp %{public}s", v13, 0xCu);
    sub_100002890(v78);
    v19 = v268;

    LOBYTE(v13) = v271;
    a6 = v272;
  }

  else
  {

    v259 = v267[1].isa;
    v259(v26, v273);
  }

  v278 = 0;
  if (![v274 save:&v278])
  {
    v105 = v278;
    v94 = sub_100048F28();

    swift_willThrow();
    v259(v32, v273);
LABEL_50:
    LODWORD(a3) = 1;
    v61 = v260;
LABEL_51:
    v278 = v94;
    sub_1000027D4(&qword_10005DDA0, &qword_10004CBF0);
    sub_10001B134(0, &qword_10005DDA8, NSError_ptr);
    swift_dynamicCast();
    v52 = v276;
    if (qword_10005D698 == -1)
    {
LABEL_52:
      v106 = sub_1000492C8();
      sub_1000143C0(v106, qword_10005DC28);
      v107 = v52;
      v108 = sub_1000492A8();
      v109 = sub_10004A088();

      if (os_log_type_enabled(v108, v109))
      {
        v110 = v61;
        v111 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        *v111 = 138543362;
        *(v111 + 4) = v107;
        *v112 = v107;
        v113 = v107;
        _os_log_impl(&_mh_execute_header, v108, v109, "Failed to fetch local user: %{public}@", v111, 0xCu);
        sub_100005664(v112, &qword_10005DDB0, &qword_10004B8B0);

        v61 = v110;
      }

      v114 = type metadata accessor for UsageData();
      (*(*(v114 - 8) + 56))(v19, 1, 1, v114);
      if (v61)
      {
        v115 = 256;
      }

      else
      {
        v115 = 0;
      }

      v275(v19, 0, 0, v115 | a3);

      sub_100005664(v19, &qword_10005DD98, &unk_10004B8A0);

      return;
    }

LABEL_144:
    swift_once();
    goto LABEL_52;
  }

  v246 = a9;
  a3 = v267 + 1;
  v101 = v278;
  v102 = 1;
  v103 = &CoreDataUsageProvider;
  *&v104 = 136380931;
  v248 = v104;
  *&v104 = 138543362;
  v247 = v104;
  *&v104 = 134349314;
  v251 = v104;
  v256 = a3;
  v255 = v32;
  while (1)
  {
    sleep(2u);
    v118 = [v63 v103[53].base_meths];
    v267 = v102;
    if (!v118)
    {
      break;
    }

    v119 = [v63 v103[53].base_meths];
    if (!v119 || (v120 = v119, v121 = [v119 device], v120, !v121))
    {
      v160 = sub_1000492A8();
      v161 = sub_10004A088();
      if (os_log_type_enabled(v160, v161))
      {
        v162 = swift_slowAlloc();
        *v162 = 0;
        _os_log_impl(&_mh_execute_header, v160, v161, "The user local device state did not contain device information.", v162, 2u);
      }

      v163 = type metadata accessor for UsageData();
      (*(*(v163 - 8) + 56))(v19, 1, 1, v163);
      if (v260)
      {
        v164 = 257;
      }

      else
      {
        v164 = 1;
      }

      v275(v19, 0, 1, v164);

      goto LABEL_115;
    }

    v122 = [objc_opt_self() fetchRequestMatchingUser:v63 device:v121];
    v278 = 0;
    v123 = [v122 execute:&v278];

    v26 = v278;
    if (v123)
    {
      sub_10001B134(0, &qword_10005DF00, STUsage_ptr);
      v124 = sub_100049F58();
      v125 = v26;

      goto LABEL_68;
    }

    v148 = v278;
    v94 = sub_100048F28();

    v26 = v94;
    swift_willThrow();

LABEL_81:
    v278 = v94;
    swift_errorRetain();
    sub_1000027D4(&qword_10005DDA0, &qword_10004CBF0);
    sub_10001B134(0, &qword_10005DDA8, NSError_ptr);
    if (!swift_dynamicCast())
    {
      v259(v32, v273);

      goto LABEL_50;
    }

    v150 = v276;
    if (v13)
    {

      v151 = v150;
      v152 = sub_1000492A8();
      v153 = sub_10004A088();

      if (os_log_type_enabled(v152, v153))
      {
        v26 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        v155 = swift_slowAlloc();
        v277 = v155;
        *v26 = v248;
        *(v26 + 4) = sub_10003C4F8(v269, a6, &v277);
        *(v26 + 6) = 2114;
        *(v26 + 14) = v151;
        *v154 = v151;
        v156 = v151;
        _os_log_impl(&_mh_execute_header, v152, v153, "Failed to fetch usage for user with dsid %{private}s: %{public}@", v26, 0x16u);
        sub_100005664(v154, &qword_10005DDB0, &qword_10004B8B0);
        v63 = v257;

        sub_100002890(v155);
      }

      else
      {
      }

      LOBYTE(v13) = v271;
    }

    else
    {
      v26 = v276;
      v157 = sub_1000492A8();
      v158 = sub_10004A088();

      if (os_log_type_enabled(v157, v158))
      {
        v159 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v159 = v247;
        *(v159 + 4) = v26;
        *v13 = v26;
        v26 = v26;
        _os_log_impl(&_mh_execute_header, v157, v158, "Failed to fetch usage for local user: %{public}@", v159, 0xCu);
        sub_100005664(v13, &qword_10005DDB0, &qword_10004B8B0);
        LOBYTE(v13) = v271;
        a6 = v272;

        v63 = v257;
      }

      else
      {
      }
    }

    v116 = v267;
    v103 = &CoreDataUsageProvider;
    if (v267 == 5)
    {
      v259(v32, v273);

      return;
    }

LABEL_60:
    v117 = __OFADD__(v116, 1);
    v102 = &v116->isa + 1;
    if (v117)
    {
      __break(1u);
LABEL_142:
      v62 = sub_10004A1F8();
      goto LABEL_26;
    }
  }

  v126 = [objc_opt_self() fetchRequestMatchingUser:v63 device:0];
  v278 = 0;
  v121 = [v126 execute:&v278];

  v127 = v278;
  if (!v121)
  {
    v149 = v278;
    v94 = sub_100048F28();

    v26 = v94;
    swift_willThrow();
    goto LABEL_81;
  }

  sub_10001B134(0, &qword_10005DF00, STUsage_ptr);
  v124 = sub_100049F58();
  v128 = v127;
LABEL_68:

  if (v124 >> 62)
  {
    if (!sub_10004A308())
    {
LABEL_98:

      if (v13)
      {

        v165 = sub_1000492A8();
        v166 = sub_10004A088();

        v167 = os_log_type_enabled(v165, v166);
        v168 = v274;
        if (v167)
        {
          v169 = swift_slowAlloc();
          v170 = swift_slowAlloc();
          v278 = v170;
          *v169 = 136380675;
          *(v169 + 4) = sub_10003C4F8(v269, a6, &v278);
          _os_log_impl(&_mh_execute_header, v165, v166, "Fetching usage for user with dsid %{private}s returned empty results", v169, 0xCu);
          sub_100002890(v170);
          v63 = v257;
        }

        v171 = v258;
      }

      else
      {
        v217 = sub_1000492A8();
        v218 = sub_10004A088();
        v219 = os_log_type_enabled(v217, v218);
        v168 = v274;
        v171 = v258;
        if (v219)
        {
          v220 = swift_slowAlloc();
          *v220 = 0;
          _os_log_impl(&_mh_execute_header, v217, v218, "Fetching usage for local user returned empty results.", v220, 2u);
        }

        v63 = v257;
      }

      v221 = type metadata accessor for UsageData();
      (*(*(v221 - 8) + 56))(v19, 1, 1, v221);
      if (v260)
      {
        v222 = 257;
      }

      else
      {
        v222 = 1;
      }

      v275(v19, 0, 1, v222);

LABEL_115:
      sub_100005664(v19, &qword_10005DD98, &unk_10004B8A0);
      v259(v32, v273);
      return;
    }
  }

  else if (!*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_98;
  }

  if ((v124 & 0xC000000000000001) != 0)
  {
    v129 = sub_10004A1F8();
    v13 = 0x10005C000;
  }

  else
  {
    v13 = &CoreDataUsageProvider;
    if (!*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_146;
    }

    v129 = *(v124 + 32);
  }

  [v274 refreshObject:v129 mergeChanges:1];
  v130 = v258;
  v26 = v129;
  v131 = sub_1000492A8();
  v132 = sub_10004A0A8();

  v133 = os_log_type_enabled(v131, v132);
  v254 = v130;
  if (v133)
  {
    v134 = v130;
    v135 = swift_slowAlloc();
    v253 = swift_slowAlloc();
    v278 = v253;
    *v135 = v251;
    *(v135 + 4) = v267;
    *(v135 + 12) = 2082;
    v136 = [v26 *(v13 + 3680)];
    v137 = v266;
    sub_100049028();

    v138 = sub_100048FB8().super.isa;
    a3 = v256;
    v259(v137, v273);
    v139 = [v134 stringFromDate:v138];

    v140 = sub_100049E08();
    v142 = v141;

    v143 = sub_10003C4F8(v140, v142, &v278);
    v63 = v257;

    *(v135 + 14) = v143;
    _os_log_impl(&_mh_execute_header, v131, v132, "Attempt %{public}ld: Usage retrieved as of %{public}s", v135, 0x16u);
    sub_100002890(v253);
    a6 = v272;

    v144 = v259;
  }

  else
  {

    v144 = v259;
    v137 = v266;
    a3 = v256;
  }

  v145 = [v26 *(v13 + 3680)];
  sub_100049028();

  sub_10001B1D0(&qword_10005DBF0, &type metadata accessor for Date);
  v32 = v255;
  v146 = v273;
  LOBYTE(v145) = sub_100049DC8();
  v144(v137, v146);
  v147 = v26;
  if (v145)
  {
    v116 = v267;
    if (v267 != 5)
    {

      v19 = v268;
      LOBYTE(v13) = v271;
      v103 = &CoreDataUsageProvider;
      goto LABEL_60;
    }

    v195 = v262;
    v249(v262, v32, v273);
    v196 = v254;
    v197 = v147;
    v198 = sub_1000492A8();
    v199 = sub_10004A088();

    if (os_log_type_enabled(v198, v199))
    {
      v200 = swift_slowAlloc();
      v268 = swift_slowAlloc();
      v278 = v268;
      *v200 = 136446466;
      v201 = [v197 lastUpdatedDate];
      LODWORD(v267) = v199;
      v202 = v201;
      v203 = v266;
      sub_100049028();

      v204 = sub_100048FB8().super.isa;
      v205 = v273;
      v271 = v197;
      v259(v203, v273);
      v206 = [v196 stringFromDate:v204];

      v207 = sub_100049E08();
      v209 = v208;

      v210 = sub_10003C4F8(v207, v209, &v278);

      *(v200 + 4) = v210;
      *(v200 + 12) = 2082;
      v211 = sub_100048FB8().super.isa;
      v212 = [v196 stringFromDate:v211];

      v213 = sub_100049E08();
      v215 = v214;

      v193 = v259;
      v259(v195, v205);
      v197 = v271;
      v216 = sub_10003C4F8(v213, v215, &v278);
      v63 = v257;

      *(v200 + 14) = v216;
      _os_log_impl(&_mh_execute_header, v198, v267, "Returning the usage updated at %{public}s but requested at %{public}s", v200, 0x16u);
      swift_arrayDestroy();

      v32 = v255;
    }

    else
    {

      v193 = v259;
      v259(v195, v273);
    }

    v231 = v272;

    v232 = sub_100012D08(v269, v231);
    if ((v233 & 1) == 0)
    {
      v234 = [objc_allocWithZone(NSNumber) initWithInteger:v232];
      v235 = [v63 appleID];
      if (v235)
      {
        v236 = v235;
        v237 = sub_100049E08();
        v239 = v238;
      }

      else
      {
        v237 = 0;
        v239 = 0;
      }

      sub_100013008(v197, v234, v264, v246, v237, v239, v275, v270);

      goto LABEL_128;
    }

LABEL_148:
    __break(1u);
    return;
  }

  v172 = v263;
  v249(v263, v32, v273);
  v173 = v254;
  v174 = v147;
  v175 = sub_1000492A8();
  v176 = sub_10004A0A8();

  if (os_log_type_enabled(v175, v176))
  {
    v177 = swift_slowAlloc();
    v268 = swift_slowAlloc();
    v278 = v268;
    *v177 = 136446466;
    v178 = [v174 lastUpdatedDate];
    LODWORD(v267) = v176;
    v179 = v178;
    v180 = v266;
    sub_100049028();

    v181 = sub_100048FB8().super.isa;
    v182 = v273;
    v271 = v174;
    v259(v180, v273);
    v183 = [v173 stringFromDate:v181];

    v184 = sub_100049E08();
    v186 = v185;

    v187 = sub_10003C4F8(v184, v186, &v278);

    *(v177 + 4) = v187;
    *(v177 + 12) = 2082;
    v188 = sub_100048FB8().super.isa;
    v189 = [v173 stringFromDate:v188];

    v190 = sub_100049E08();
    v192 = v191;

    v193 = v259;
    v259(v172, v182);
    v174 = v271;
    v194 = sub_10003C4F8(v190, v192, &v278);
    a6 = v272;

    *(v177 + 14) = v194;
    _os_log_impl(&_mh_execute_header, v175, v267, "Returning the usage updated at %{public}s requested at %{public}s", v177, 0x16u);
    swift_arrayDestroy();

    v32 = v255;
  }

  else
  {

    v193 = v259;
    v259(v172, v273);
  }

  v223 = sub_100012D08(v269, a6);
  if (v224)
  {
    __break(1u);
    goto LABEL_148;
  }

  v225 = [objc_allocWithZone(NSNumber) initWithInteger:v223];
  v226 = [v257 appleID];
  if (v226)
  {
    v227 = v226;
    v228 = sub_100049E08();
    v230 = v229;
  }

  else
  {
    v228 = 0;
    v230 = 0;
  }

  sub_100013008(v174, v225, v264, v246, v228, v230, v275, v270);

LABEL_128:

  v193(v32, v273);
}

uint64_t sub_100012D08(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_10004A208();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_100015C0C(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_100013008(uint64_t (*a1)(), void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, void, void, uint64_t), uint64_t a8)
{
  v136 = a8;
  v132 = a7;
  v110 = a6;
  v109[1] = a5;
  v115 = a4;
  v109[2] = a3;
  v114 = a2;
  v124 = a1;
  v8 = sub_1000027D4(&qword_10005DD98, &unk_10004B8A0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v112 = v109 - v10;
  v123 = sub_100049BB8();
  v122 = *(v123 - 8);
  v11 = *(v122 + 64);
  __chkstk_darwin(v123);
  v120 = v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_100049BE8();
  v119 = *(v121 - 8);
  v13 = *(v119 + 64);
  __chkstk_darwin(v121);
  v118 = v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for UsageData();
  isa = v125[-1].isa;
  v15 = *(isa + 8);
  v16 = __chkstk_darwin(v125);
  v117 = v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = v17;
  __chkstk_darwin(v16);
  v111 = (v109 - v18);
  v19 = sub_100048E98();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = v109 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100049058();
  v25 = *(v24 - 8);
  v26 = v25[8];
  v27 = __chkstk_darwin(v24);
  v29 = v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v27);
  v32 = v109 - v31;
  v33 = __chkstk_darwin(v30);
  v35 = v109 - v34;
  __chkstk_darwin(v33);
  v37 = v109 - v36;
  v135 = sub_1000490F8();
  v133 = *(v135 - 8);
  v38 = *(v133 + 64);
  __chkstk_darwin(v135);
  v40 = v109 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000490B8();
  sub_100049048();
  v130 = v40;
  sub_100049068();
  v128 = v25[1];
  v129 = v25 + 1;
  v128(v35, v24);
  sub_100049048();
  v41 = v25[2];
  v131 = v37;
  v42 = v37;
  v43 = v124;
  v41(v35, v42, v24);
  v134 = v32;
  v126 = v24;
  v41(v29, v32, v24);
  sub_100048E78();
  v44 = objc_allocWithZone(STUsageReporter);
  v45 = sub_100048E48().super.isa;
  v46 = [v44 initWithUsage:v43 dateInterval:v45];

  (*(v20 + 8))(v23, v19);
  aBlock = 0;
  if ([v46 generateReport:&aBlock])
  {
    v47 = aBlock;
    v48 = [v46 applicationAndWebUsage];
    sub_10001B134(0, &qword_10005DDB8, STUsageDetailItem_ptr);
    v49 = sub_100049F58();

    v50 = [v46 categoryRatiosPerCalendarUnit:32 numberOfCategories:3];
    sub_1000027D4(&qword_10005DDC0, &qword_10004B8B8);
    v51 = sub_100049F58();

    v52 = [v46 categoryUsage];
    v53 = sub_100049F58();

    v54 = [v46 screenTimeUsagePerCalendarUnit:32];
    v55 = sub_100049F58();

    v112 = v46;
    [v46 totalScreenTime];
    v57 = v56;
    v58 = [v43 lastUpdatedDate];
    v59 = v111;
    v60 = v111 + SHIDWORD(v125[4].isa);
    sub_100049028();

    *v59 = v49;
    v59[1] = v51;
    v59[2] = v53;
    v59[3] = v55;
    v59[4] = v57;
    sub_10000ACF0(6);
    v62 = v61;
    v63 = dispatch_group_create();
    dispatch_group_enter(v63);
    v64 = v113;
    sub_10001A938(v113 + 16, &aBlock);
    sub_1000028DC(&aBlock, v141);
    v65 = swift_allocObject();
    v65[2] = v62;
    v65[3] = v63;
    v65[4] = v64;

    v125 = v63;

    sub_1000022F4(v62, sub_1000144C8, v65);

    sub_100002890(&aBlock);
    v66 = swift_allocObject();
    *(v66 + 16) = 0;
    v67 = v114;
    v68 = v59;
    if ([v114 integerValue] >= 1 && v115)
    {
      v69 = v125;
      dispatch_group_enter(v125);
      v70 = swift_allocObject();
      *(v70 + 16) = v66;
      *(v70 + 24) = v69;
      v71 = objc_opt_self();
      v72 = v69;

      v73 = [v71 sharedCache];
      v74 = sub_100049DF8();
      if (v110)
      {
        v75 = sub_100049DF8();
      }

      else
      {
        v75 = 0;
      }

      v91 = swift_allocObject();
      *(v91 + 16) = sub_10001472C;
      *(v91 + 24) = v70;
      v142 = sub_10001476C;
      v143 = v91;
      aBlock = _NSConcreteStackBlock;
      v139 = 1107296256;
      v140 = sub_10000AC08;
      v141 = &unk_10005A1B0;
      v92 = _Block_copy(&aBlock);

      [v73 fetchPersonImageWithDSID:v67 fullName:v74 appleID:v75 forceFetch:0 completionHandler:v92];
      _Block_release(v92);
    }

    sub_10001B134(0, &qword_10005DDC8, OS_dispatch_queue_ptr);
    v93 = sub_10004A0F8();
    v124 = type metadata accessor for UsageData;
    v94 = v117;
    sub_10001B218(v68, v117, type metadata accessor for UsageData);
    v95 = (*(isa + 80) + 32) & ~*(isa + 80);
    v96 = v66;
    v97 = (v116 + v95 + 7) & 0xFFFFFFFFFFFFFFF8;
    v98 = swift_allocObject();
    v99 = v136;
    *(v98 + 16) = v132;
    *(v98 + 24) = v99;
    sub_10001A5E0(v94, v98 + v95, type metadata accessor for UsageData);
    v100 = v98 + v97;
    *v100 = v96;
    *(v100 + 8) = 257;
    v142 = sub_100014628;
    v143 = v98;
    aBlock = _NSConcreteStackBlock;
    v139 = 1107296256;
    v140 = sub_10001B29C;
    v141 = &unk_10005A138;
    v101 = _Block_copy(&aBlock);

    v102 = v68;
    v103 = v118;
    sub_100049BC8();
    v137 = _swiftEmptyArrayStorage;
    sub_10001B1D0(&qword_10005DDD0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000027D4(&qword_10005DDD8, &qword_10004B8C0);
    sub_100005708(&qword_10005DDE0, &qword_10005DDD8, &qword_10004B8C0);
    v104 = v120;
    v105 = v123;
    sub_10004A178();
    v106 = v125;
    sub_10004A0B8();
    _Block_release(v101);

    (*(v122 + 8))(v104, v105);
    (*(v119 + 8))(v103, v121);
    sub_10001AAAC(v102, v124);
    v107 = v126;
    v108 = v128;
    v128(v134, v126);
    v108(v131, v107);
    (*(v133 + 8))(v130, v135);
  }

  else
  {
    v76 = v125;
    v77 = aBlock;
    v78 = sub_100048F28();

    swift_willThrow();
    aBlock = v78;
    sub_1000027D4(&qword_10005DDA0, &qword_10004CBF0);
    sub_10001B134(0, &qword_10005DDA8, NSError_ptr);
    swift_dynamicCast();
    v79 = v137;
    if (qword_10005D698 != -1)
    {
      swift_once();
    }

    v80 = sub_1000492C8();
    sub_1000143C0(v80, qword_10005DC28);
    v81 = v79;
    v82 = sub_1000492A8();
    v83 = sub_10004A088();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      *v84 = 138543362;
      *(v84 + 4) = v81;
      *v85 = v81;
      v86 = v81;
      _os_log_impl(&_mh_execute_header, v82, v83, "Failed to generate usage report: %{public}@", v84, 0xCu);
      sub_100005664(v85, &qword_10005DDB0, &qword_10004B8B0);
    }

    v87 = v112;
    (*(isa + 7))(v112, 1, 1, v76);
    v132(v87, 0, 0, 257);

    sub_100005664(v87, &qword_10005DD98, &unk_10004B8A0);
    v88 = v126;
    v89 = v128;
    v128(v134, v126);
    v89(v131, v88);
    (*(v133 + 8))(v130, v135);
  }
}

void sub_100013F04(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;
  v21 = v24;

  v9 = 0;
  while (v7)
  {
    v10 = v9;
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = (*(a2 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];

    dispatch_group_enter(a3);
    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    v16 = objc_opt_self();
    v17 = a3;
    v18 = sub_100049DF8();

    v19 = swift_allocObject();
    *(v19 + 16) = sub_100014774;
    *(v19 + 24) = v15;
    v24[2] = sub_10001477C;
    v24[3] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    v24[0] = sub_10000AC08;
    v24[1] = &unk_10005A228;
    v20 = _Block_copy(aBlock);

    [v16 iconImageForBundleIdentifier:v18 completionHandler:{v20, v21}];
    _Block_release(v20);
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      dispatch_group_leave(a3);
      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_100014130(void *a1, uint64_t a2, NSObject *a3)
{
  swift_beginAccess();
  v6 = *(a2 + 16);
  *(a2 + 16) = a1;

  v7 = a1;
  dispatch_group_leave(a3);
}

uint64_t sub_100014194(void (*a1)(char *, void *, uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v9 = sub_1000027D4(&qword_10005DD98, &unk_10004B8A0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v17 - v11;
  sub_10001B218(a3, &v17 - v11, type metadata accessor for UsageData);
  v13 = type metadata accessor for UsageData();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  swift_beginAccess();
  v14 = *(a4 + 16);
  v15 = v14;
  a1(v12, v14, 1, a5 & 0x101);

  return sub_100005664(v12, &qword_10005DD98, &unk_10004B8A0);
}

uint64_t sub_1000142F0()
{
  sub_100002890(v0 + 2);
  sub_100002890(v0 + 7);
  sub_100002890(v0 + 12);

  return _swift_deallocClassInstance(v0, 136, 7);
}

uint64_t sub_10001435C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t type metadata accessor for UsageData()
{
  result = qword_10005DE98;
  if (!qword_10005DE98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000143C0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *sub_1000143F8(uint64_t a1, uint64_t a2)
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

  sub_1000027D4(&qword_10005DDF8, &qword_10004B8D0);
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

uint64_t sub_100014480()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000144D4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001450C()
{
  v1 = (type metadata accessor for UsageData() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 24);

  v6 = (v0 + v3);
  v7 = *v6;

  v8 = *(v6 + 1);

  v9 = *(v6 + 2);

  v10 = *(v6 + 3);

  v11 = v1[11];
  v12 = sub_100049058();
  (*(*(v12 - 8) + 8))(&v6[v11], v12);
  v13 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 10, v2 | 7);
}

uint64_t sub_100014628()
{
  v1 = *(type metadata accessor for UsageData() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);
  if (*(v5 + 9))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  return sub_100014194(v3, v4, v0 + v2, v6, v8 | v7);
}

uint64_t sub_1000146D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000146EC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100014734()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100014784(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_10004A418();
  sub_100049E48();
  v9 = sub_10004A448();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_10004A398() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_100014B34(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1000148D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000027D4(&qword_10005DDE8, &qword_10004B8C8);
  result = sub_10004A1B8();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_10004A418();
      sub_100049E48();
      result = sub_10004A448();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_100014B34(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_1000148D4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100014CB4();
      goto LABEL_16;
    }

    sub_100014E10(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_10004A418();
  sub_100049E48();
  result = sub_10004A448();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_10004A398();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_10004A3B8();
  __break(1u);
  return result;
}

void *sub_100014CB4()
{
  v1 = v0;
  sub_1000027D4(&qword_10005DDE8, &qword_10004B8C8);
  v2 = *v0;
  v3 = sub_10004A1A8();
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

uint64_t sub_100014E10(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000027D4(&qword_10005DDE8, &qword_10004B8C8);
  result = sub_10004A1B8();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_10004A418();

      sub_100049E48();
      result = sub_10004A448();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_100015048(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1000260E4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1000150C4(v6);
  return sub_10004A228();
}

void sub_1000150C4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_10004A368(v2);
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
        sub_10001B134(0, &qword_10005DDB8, STUsageDetailItem_ptr);
        v6 = sub_100049F68();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1000152D4(v8, v9, a1, v4);
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
    sub_1000151D8(0, v2, 1, a1);
  }
}

void sub_1000151D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      v12 = v8;
      v13 = v11;
      [v12 quantity];
      v15 = v14;
      [v13 quantity];
      v17 = v16;

      if (v17 >= v15)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v18 = *v10;
      v8 = *(v10 + 8);
      *v10 = v8;
      *(v10 + 8) = v18;
      v10 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1000152D4(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v8 = sub_10002432C(v8);
    }

    v99 = v5;
    v100 = *(v8 + 2);
    if (v100 >= 2)
    {
      while (*a3)
      {
        v5 = v100 - 1;
        v101 = *&v8[16 * v100];
        v102 = *&v8[16 * v100 + 24];
        sub_10001594C((*a3 + 8 * v101), (*a3 + 8 * *&v8[16 * v100 + 16]), (*a3 + 8 * v102), v9);
        if (v99)
        {
          goto LABEL_98;
        }

        if (v102 < v101)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10002432C(v8);
        }

        if (v100 - 2 >= *(v8 + 2))
        {
          goto LABEL_115;
        }

        v103 = &v8[16 * v100];
        *v103 = v101;
        *(v103 + 1) = v102;
        sub_1000242A0(v100 - 1);
        v100 = *(v8 + 2);
        if (v100 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_125;
    }

LABEL_98:

    return;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v105 = v5;
      v11 = *(*a3 + 8 * v10);
      v5 = 8 * v7;
      v12 = v7;
      v13 = (*a3 + 8 * v7);
      v15 = *v13;
      v14 = v13 + 2;
      v16 = v11;
      v17 = v15;
      [v16 quantity];
      v19 = v18;
      [v17 quantity];
      v21 = v20;

      v22 = v12 + 2;
      while (v6 != v22)
      {
        v23 = *(v14 - 1);
        v24 = *v14;
        v25 = v23;
        [v24 quantity];
        v27 = v26;
        [v25 quantity];
        v29 = v28;

        ++v22;
        ++v14;
        if (v21 < v19 == v29 >= v27)
        {
          v6 = (v22 - 1);
          break;
        }
      }

      v9 = v12;
      if (v21 < v19)
      {
        if (v6 < v12)
        {
          goto LABEL_118;
        }

        if (v12 < v6)
        {
          v30 = 8 * v6 - 8;
          v31 = v6;
          v32 = v12;
          do
          {
            if (v32 != --v31)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v33 = *(v34 + v5);
              *(v34 + v5) = *(v34 + v30);
              *(v34 + v30) = v33;
            }

            v32 = (v32 + 1);
            v30 -= 8;
            v5 += 8;
          }

          while (v32 < v31);
        }
      }

      v10 = v6;
      v5 = v105;
    }

    v35 = a3[1];
    if (v10 < v35)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_117;
      }

      if (v10 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_119;
        }

        if (v9 + a4 >= v35)
        {
          v36 = a3[1];
        }

        else
        {
          v36 = (v9 + a4);
        }

        if (v36 < v9)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v10 != v36)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v10 < v9)
    {
      goto LABEL_116;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1000231F4(0, *(v8 + 2) + 1, 1, v8);
    }

    v54 = *(v8 + 2);
    v53 = *(v8 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v8 = sub_1000231F4((v53 > 1), v54 + 1, 1, v8);
    }

    *(v8 + 2) = v55;
    v56 = &v8[16 * v54];
    *(v56 + 4) = v9;
    *(v56 + 5) = v10;
    v57 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v111 = v10;
    if (v54)
    {
      while (1)
      {
        v58 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v59 = *(v8 + 4);
          v60 = *(v8 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_57:
          if (v62)
          {
            goto LABEL_105;
          }

          v75 = &v8[16 * v55];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_108;
          }

          v81 = &v8[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_112;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v55 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v85 = &v8[16 * v55];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_71:
        if (v80)
        {
          goto LABEL_107;
        }

        v88 = &v8[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_110;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_78:
        v96 = v58 - 1;
        if (v58 - 1 >= v55)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v97 = *&v8[16 * v96 + 32];
        v9 = *&v8[16 * v58 + 40];
        sub_10001594C((*a3 + 8 * v97), (*a3 + 8 * *&v8[16 * v58 + 32]), (*a3 + 8 * v9), v57);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v9 < v97)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10002432C(v8);
        }

        if (v96 >= *(v8 + 2))
        {
          goto LABEL_102;
        }

        v98 = &v8[16 * v96];
        *(v98 + 4) = v97;
        *(v98 + 5) = v9;
        sub_1000242A0(v58);
        v55 = *(v8 + 2);
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v8[16 * v55 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_103;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_104;
      }

      v70 = &v8[16 * v55];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_106;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_109;
      }

      if (v74 >= v66)
      {
        v92 = &v8[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_113;
        }

        if (v61 < v95)
        {
          v58 = v55 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = v111;
    v6 = a3[1];
    if (v111 >= v6)
    {
      goto LABEL_88;
    }
  }

  v106 = v5;
  v37 = v9;
  v38 = *a3;
  v39 = *a3 + 8 * v10 - 8;
  v107 = v37;
  v40 = v37 - v10;
  v109 = v36;
LABEL_30:
  v110 = v10;
  v41 = *(v38 + 8 * v10);
  v42 = v40;
  v43 = v39;
  while (1)
  {
    v44 = *v43;
    v45 = v41;
    v46 = v44;
    [v45 quantity];
    v48 = v47;
    [v46 quantity];
    v50 = v49;

    if (v50 >= v48)
    {
LABEL_29:
      v10 = v110 + 1;
      v39 += 8;
      --v40;
      if ((v110 + 1) != v109)
      {
        goto LABEL_30;
      }

      v10 = v109;
      v5 = v106;
      v9 = v107;
      goto LABEL_37;
    }

    if (!v38)
    {
      break;
    }

    v51 = *v43;
    v41 = *(v43 + 8);
    *v43 = v41;
    *(v43 + 8) = v51;
    v43 -= 8;
    if (__CFADD__(v42++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t sub_10001594C(void **__src, void **a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != a2 || &a2[v12] <= a4)
    {
      v25 = a2;
      memmove(a4, a2, 8 * v12);
      a2 = v25;
    }

    v24 = a2;
    v14 = &v4[v12];
    if (v10 >= 8 && a2 > v6)
    {
      v41 = v4;
LABEL_26:
      __dst = v24;
      v26 = v24 - 1;
      --v5;
      v27 = v14;
      do
      {
        v28 = v5 + 1;
        v29 = *--v27;
        v30 = v26;
        v31 = *v26;
        v32 = v29;
        v33 = v31;
        [v32 quantity];
        v35 = v34;
        [v33 quantity];
        v37 = v36;

        if (v37 < v35)
        {
          v38 = v30;
          if (v28 != __dst)
          {
            *v5 = *v30;
          }

          v4 = v41;
          if (v14 <= v41 || (v24 = v38, v38 <= v6))
          {
            v24 = v38;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        if (v28 != v14)
        {
          *v5 = *v27;
        }

        --v5;
        v14 = v27;
        v26 = v30;
      }

      while (v27 > v41);
      v14 = v27;
      v24 = __dst;
      v4 = v41;
    }
  }

  else
  {
    v13 = a2;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 >= 8 && v13 < v5)
    {
      while (1)
      {
        v15 = *v4;
        v16 = *v13;
        v17 = v15;
        [v16 quantity];
        v19 = v18;
        [v17 quantity];
        v21 = v20;

        if (v21 >= v19)
        {
          break;
        }

        v22 = v13;
        v23 = v6 == v13++;
        if (!v23)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++v6;
        if (v4 >= v14 || v13 >= v5)
        {
          goto LABEL_19;
        }
      }

      v22 = v4;
      v23 = v6 == v4++;
      if (v23)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v6 = *v22;
      goto LABEL_17;
    }

LABEL_19:
    v24 = v6;
  }

LABEL_37:
  if (v24 != v4 || v24 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v24, v4, 8 * (v14 - v4));
  }

  return 1;
}

unsigned __int8 *sub_100015C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_100049EC8();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100016198();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_10004A208();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100016198()
{
  v0 = sub_100049ED8();
  v4 = sub_100016218(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_100016218(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_100049E38();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_10004A158();
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_10003C938(v9, 0);
  v12 = sub_100016370(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_100049E38();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_10004A208();
LABEL_4:

  return sub_100049E38();
}

unint64_t sub_100016370(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_100016590(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_100049EA8();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_10004A208();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_100016590(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_100049E88();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_100016590(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_100049EB8();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_100049E98();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void *sub_100016620(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_10004A308();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_1000143F8(v3, 0);
  sub_1000166B4((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1000166B4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_10004A308();
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
      result = sub_10004A308();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100005708(&qword_10005DDF0, &qword_10005DDC0, &qword_10004B8B8);
          for (i = 0; i != v6; ++i)
          {
            sub_1000027D4(&qword_10005DDC0, &qword_10004B8B8);
            v9 = sub_100016868(v13, i, a3);
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
        sub_10001B134(0, &qword_10005DDB8, STUsageDetailItem_ptr);
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

void (*sub_100016868(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_10004A1F8();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1000168E8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000168F0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t), uint64_t a7, void (*a8)(void), double a9, double a10, uint64_t a11, uint64_t a12)
{
  v266 = a6;
  v267 = a8;
  v236 = a5;
  v235 = a4;
  v259 = a2;
  LODWORD(v258) = a1;
  v268 = a11;
  v265 = sub_1000490F8();
  v264 = *(v265 - 8);
  v16 = *(v264 + 64);
  v17 = __chkstk_darwin(v265);
  v257 = &v216 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v241 = &v216 - v20;
  v21 = __chkstk_darwin(v19);
  v238 = &v216 - v22;
  __chkstk_darwin(v21);
  v219 = &v216 - v23;
  v261 = sub_100049058();
  v251 = *(v261 - 8);
  v24 = *(v251 + 64);
  v25 = __chkstk_darwin(v261);
  v243 = &v216 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v244 = &v216 - v28;
  v29 = __chkstk_darwin(v27);
  v240 = &v216 - v30;
  v31 = __chkstk_darwin(v29);
  v220 = &v216 - v32;
  v33 = __chkstk_darwin(v31);
  v223 = &v216 - v34;
  __chkstk_darwin(v33);
  v218 = &v216 - v35;
  v262 = sub_100048E98();
  v270 = *(v262 - 8);
  v36 = *(v270 + 64);
  v37 = __chkstk_darwin(v262);
  v245 = &v216 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v256 = &v216 - v40;
  v41 = __chkstk_darwin(v39);
  v224 = &v216 - v42;
  __chkstk_darwin(v41);
  v237 = &v216 - v43;
  v44 = sub_1000027D4(&qword_10005DE00, &qword_10004B8D8);
  v45 = *(*(v44 - 8) + 64);
  v46 = __chkstk_darwin(v44 - 8);
  v250 = (&v216 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = __chkstk_darwin(v46);
  v255 = (&v216 - v49);
  v50 = __chkstk_darwin(v48);
  v222 = &v216 - v51;
  __chkstk_darwin(v50);
  v53 = &v216 - v52;
  v54 = sub_1000027D4(&qword_10005DC10, &qword_10004B7C0);
  v55 = *(*(v54 - 8) + 64);
  v56 = __chkstk_darwin(v54 - 8);
  v239 = &v216 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __chkstk_darwin(v56);
  v60 = &v216 - v59;
  v61 = __chkstk_darwin(v58);
  v217 = &v216 - v62;
  __chkstk_darwin(v61);
  v247 = &v216 - v63;
  v64 = type metadata accessor for UsageTimelineEntry();
  v65 = *(*(v64 - 1) + 64);
  v66 = __chkstk_darwin(v64);
  v68 = &v216 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __chkstk_darwin(v66);
  v242 = (&v216 - v70);
  v71 = __chkstk_darwin(v69);
  v248 = &v216 - v72;
  __chkstk_darwin(v71);
  v221 = &v216 - v73;
  v74 = sub_100049BE8();
  v234 = *(v74 - 8);
  v75 = *(v234 + 64);
  __chkstk_darwin(v74);
  v233 = &v216 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = sub_100049BA8();
  v229 = *(v231 - 8);
  v77 = *(v229 + 64);
  __chkstk_darwin(v231);
  v227 = (&v216 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0));
  v230 = sub_100049C08();
  v228 = *(v230 - 8);
  v79 = *(v228 + 64);
  v80 = __chkstk_darwin(v230);
  v225 = &v216 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v80);
  v226 = &v216 - v82;
  v254 = sub_100049BB8();
  v232 = *(v254 - 1);
  v83 = *(v232 + 64);
  __chkstk_darwin(v254);
  v253 = &v216 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = sub_100049CB8();
  v263 = *(v269 - 8);
  v85 = *(v263 + 64);
  v86 = __chkstk_darwin(v269);
  v87 = &v216 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __chkstk_darwin(v86);
  v216 = &v216 - v89;
  __chkstk_darwin(v88);
  v252 = &v216 - v90;
  v91 = type metadata accessor for XPCPersistentStoreManager();
  v278[3] = v91;
  v278[4] = &off_10005AA70;
  v278[0] = a7;

  v260 = objc_autoreleasePoolPush();
  v92 = *(*sub_1000028DC(v278, v91) + 24) == 1;
  v249 = v64;
  if (v92)
  {
    if (qword_10005D698 != -1)
    {
      swift_once();
    }

    v246 = a3;
    v244 = v74;
    v245 = v53;
    v93 = sub_1000492C8();
    v241 = sub_1000143C0(v93, qword_10005DC28);
    v94 = sub_1000492A8();
    v95 = sub_10004A0A8();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&_mh_execute_header, v94, v95, "Successfully loaded persistent store.", v96, 2u);
    }

    v97 = swift_allocObject();
    *(v97 + 16) = 0;
    v98 = v263;
    v99 = *(v263 + 16);
    v100 = v252;
    v101 = v269;
    v255 = (v263 + 16);
    v250 = v99;
    v99(v252, v266, v269);
    v102 = (*(v98 + 80) + 72) & ~*(v98 + 80);
    v257 = *(v98 + 80);
    v103 = swift_allocObject();
    v104 = v267;
    v105 = v268;
    *(v103 + 16) = v97;
    *(v103 + 24) = v104;
    *(v103 + 32) = v105;
    *(v103 + 40) = a9;
    *(v103 + 48) = a10;
    v106 = v246;
    *(v103 + 56) = v259;
    *(v103 + 64) = v106;
    v107 = *(v98 + 32);
    v243 = (v98 + 32);
    v242 = v107;
    (v107)(v103 + v102, v100, v101);
    LODWORD(v256) = v258 & 1;
    *(v103 + v102 + v85) = v258 & 1;
    v276 = sub_10001ABF4;
    v277 = v103;
    aBlock = _NSConcreteStackBlock;
    v273 = 1107296256;
    v274 = sub_10001B29C;
    v275 = &unk_10005A2C8;
    _Block_copy(&aBlock);
    v271 = _swiftEmptyArrayStorage;
    v108 = sub_10001B1D0(&qword_10005DDD0, &type metadata accessor for DispatchWorkItemFlags);
    v258 = v97;

    v109 = sub_1000027D4(&qword_10005DDD8, &qword_10004B8C0);
    v110 = sub_100005708(&qword_10005DDE0, &qword_10005DDD8, &qword_10004B8C0);
    sub_10004A178();
    v111 = sub_100049C38();
    v112 = *(v111 + 48);
    v113 = *(v111 + 52);
    swift_allocObject();
    v114 = sub_100049C18();

    if (v106)
    {
      v264 = v110;
      v265 = v109;
      v270 = v108;
      v263 = a12;
      v115 = ~v257;
      sub_10001B134(0, &qword_10005DDC8, OS_dispatch_queue_ptr);

      v116 = sub_10004A0F8();
      v117 = v225;
      sub_100049BF8();
      v118 = v227;
      *v227 = 20;
      v119 = v229;
      v120 = v231;
      (*(v229 + 104))(v118, enum case for DispatchTimeInterval.seconds(_:), v231);
      v121 = v226;
      sub_100049C48();
      (*(v119 + 8))(v118, v120);
      v122 = *(v228 + 8);
      v123 = v230;
      v122(v117, v230);
      sub_10004A0D8();

      v122(v121, v123);
      if (qword_10005D6A0 != -1)
      {
        swift_once();
      }

      v262 = qword_100060288;
      v124 = v252;
      v125 = v269;
      v250(v252, v266, v269);
      v126 = (v257 + 80) & v115;
      v127 = (v85 + v126 + 7) & 0xFFFFFFFFFFFFFFF8;
      v128 = swift_allocObject();
      *(v128 + 16) = v263;
      *(v128 + 24) = v256;
      v129 = v246;
      *(v128 + 32) = v259;
      *(v128 + 40) = v129;
      v130 = v236;
      *(v128 + 48) = v235;
      *(v128 + 56) = v130;
      *(v128 + 64) = v258;
      *(v128 + 72) = v114;
      (v242)(v128 + v126, v124, v125);
      v131 = (v128 + v127);
      *v131 = a9;
      v131[1] = a10;
      v132 = (v128 + ((v127 + 23) & 0xFFFFFFFFFFFFFFF8));
      v133 = v268;
      *v132 = v267;
      v132[1] = v133;
      v276 = sub_10001AD88;
      v277 = v128;
      aBlock = _NSConcreteStackBlock;
      v273 = 1107296256;
      v274 = sub_10001B29C;
      v275 = &unk_10005A318;
      v134 = _Block_copy(&aBlock);

      v135 = v233;
      sub_100049BC8();
      v271 = _swiftEmptyArrayStorage;
      v136 = v253;
      v137 = v254;
      sub_10004A178();
      sub_10004A108();
      _Block_release(v134);

      (*(v232 + 8))(v136, v137);
      (*(v234 + 8))(v135, v244);

LABEL_53:

      goto LABEL_54;
    }

    v257 = v114;
    v180 = sub_1000492A8();
    v181 = sub_10004A088();
    if (os_log_type_enabled(v180, v181))
    {
      v182 = swift_slowAlloc();
      *v182 = 0;
      _os_log_impl(&_mh_execute_header, v180, v181, "Failed to provide non-null dsid. Returning placeholder.", v182, 2u);
    }

    v183 = v251;
    v184 = v261;
    (*(v251 + 56))(v247, 1, 1);
    v185 = v262;
    (*(v270 + 56))(v245, 1, 1);
    v186 = v218;
    sub_100049038();
    v187 = v219;
    sub_1000490B8();
    v188 = v216;
    v189 = v269;
    v250(v216, v266, v269);
    v190 = (*(v263 + 88))(v188, v189);
    v191 = v223;
    v192 = v222;
    v193 = v220;
    v194 = v249;
    if (v190 != enum case for WidgetFamily.systemSmall(_:))
    {
      if (v190 == enum case for WidgetFamily.systemMedium(_:))
      {
        v195 = v237;
        v196 = 15;
        goto LABEL_42;
      }

      if (v190 == enum case for WidgetFamily.systemLarge(_:) || v190 == enum case for WidgetFamily.systemExtraLarge(_:))
      {
        sub_10001C284(v186, v237);
        goto LABEL_43;
      }

      if (v190 != enum case for WidgetFamily.accessoryCircular(_:) && v190 != enum case for WidgetFamily.accessoryRectangular(_:) && v190 != enum case for WidgetFamily.accessoryInline(_:))
      {
        sub_10001C284(v186, v237);
        v266 = *(v264 + 8);
        v266(v187, v265);
        v255 = *(v183 + 8);
        (v255)(v186, v184);
        (*(v263 + 8))(v188, v269);
        goto LABEL_44;
      }
    }

    v195 = v237;
    v196 = 9;
LABEL_42:
    sub_100022910(v196, v186, v187, v195);
LABEL_43:
    v266 = *(v264 + 8);
    v266(v187, v265);
    v255 = *(v183 + 8);
    (v255)(v186, v184);
LABEL_44:
    sub_100049038();
    sub_1000490B8();
    *v248 = 0;
    v197 = v217;
    sub_1000055FC(v247, v217, &qword_10005DC10, &qword_10004B7C0);
    v198 = v183;
    v199 = *(v183 + 48);
    if (v199(v197, 1, v184) == 1)
    {
      (*(v198 + 16))(v193, v191, v184);
      if (v199(v197, 1, v184) != 1)
      {
        sub_100005664(v197, &qword_10005DC10, &qword_10004B7C0);
      }
    }

    else
    {
      (*(v198 + 32))(v193, v197, v184);
    }

    v200 = v248;
    v201 = &v248[v194[6]];
    v202 = &v248[v194[8]];
    (*(v198 + 32))(&v248[v194[5]], v193, v184);
    *v201 = 0;
    v201[1] = 0;
    v203 = &v200[v194[7]];
    *v203 = a9;
    v203[1] = a10;
    *v202 = v259;
    v202[1] = 0;
    v204 = v245;
    sub_1000055FC(v245, v192, &qword_10005DE00, &qword_10004B8D8);
    v205 = v270;
    v206 = *(v270 + 48);
    if (v206(v192, 1, v185) == 1)
    {

      v207 = v204;
      v208 = v238;
      sub_10001C284(v191, v224);
      v266(v208, v265);
      (v255)(v191, v184);
      sub_100005664(v207, &qword_10005DE00, &qword_10004B8D8);
      v205 = v270;
      sub_100005664(v247, &qword_10005DC10, &qword_10004B7C0);
      v209 = v206(v192, 1, v185);
      v210 = v224;
      if (v209 != 1)
      {
        sub_100005664(v192, &qword_10005DE00, &qword_10004B8D8);
      }
    }

    else
    {

      v266(v238, v265);
      (v255)(v191, v184);
      sub_100005664(v204, &qword_10005DE00, &qword_10004B8D8);
      sub_100005664(v247, &qword_10005DC10, &qword_10004B7C0);
      v210 = v224;
      (*(v205 + 32))(v224, v192, v185);
    }

    v211 = v194[18];
    v212 = *(v205 + 32);
    v213 = v248;
    v212(&v248[v194[9]], v210, v185);
    v212((v213 + v194[10]), v237, v185);
    *(v213 + v194[11]) = _swiftEmptyArrayStorage;
    *(v213 + v194[12]) = v256;
    *(v213 + v194[13]) = _swiftEmptyArrayStorage;
    *(v213 + v194[14]) = 0;
    *(v213 + v194[15]) = 0;
    *(v213 + v194[16]) = _swiftEmptyArrayStorage;
    *(v213 + v194[17]) = 0;
    *(v213 + v211) = 0;
    v214 = v221;
    sub_10001A5E0(v213, v221, type metadata accessor for UsageTimelineEntry);
    v267(v214);

    sub_10001AAAC(v214, type metadata accessor for UsageTimelineEntry);
    goto LABEL_53;
  }

  if (qword_10005D698 != -1)
  {
    swift_once();
  }

  v138 = sub_1000492C8();
  sub_1000143C0(v138, qword_10005DC28);
  v139 = sub_1000492A8();
  v140 = sub_10004A088();
  v141 = os_log_type_enabled(v139, v140);
  v142 = v262;
  v143 = v270;
  v259 = v60;
  if (v141)
  {
    v144 = swift_slowAlloc();
    *v144 = 0;
    _os_log_impl(&_mh_execute_header, v139, v140, "Failed to initialize persistent store. Returning placeholder timeline entry", v144, 2u);
  }

  v145 = v251;
  (*(v251 + 56))(v259, 1, 1, v261);
  (*(v143 + 56))(v255, 1, 1, v142);
  v146 = v240;
  sub_100049038();
  v147 = v241;
  sub_1000490B8();
  v148 = v263;
  v149 = v269;
  (*(v263 + 16))(v87, v266, v269);
  v150 = (*(v148 + 88))(v87, v149);
  v151 = v244;
  if (v150 != enum case for WidgetFamily.systemSmall(_:))
  {
    if (v150 == enum case for WidgetFamily.systemMedium(_:))
    {
      v152 = v256;
      v153 = 15;
      goto LABEL_19;
    }

    if (v150 == enum case for WidgetFamily.systemLarge(_:) || v150 == enum case for WidgetFamily.systemExtraLarge(_:))
    {
      sub_10001C284(v146, v256);
      goto LABEL_20;
    }

    if (v150 != enum case for WidgetFamily.accessoryCircular(_:) && v150 != enum case for WidgetFamily.accessoryRectangular(_:) && v150 != enum case for WidgetFamily.accessoryInline(_:))
    {
      sub_10001C284(v146, v256);
      v266 = *(v264 + 8);
      v266(v147, v265);
      v154 = v261;
      v254 = *(v251 + 8);
      (v254)(v146, v261);
      v145 = v251;
      (*(v148 + 8))(v87, v269);
      goto LABEL_21;
    }
  }

  v152 = v256;
  v153 = 9;
LABEL_19:
  sub_100022910(v153, v146, v147, v152);
LABEL_20:
  v266 = *(v264 + 8);
  v266(v147, v265);
  v154 = v261;
  v254 = *(v145 + 8);
  (v254)(v146, v261);
LABEL_21:
  sub_100049038();
  sub_1000490B8();
  *v68 = 0;
  v155 = v239;
  sub_1000055FC(v259, v239, &qword_10005DC10, &qword_10004B7C0);
  v156 = *(v145 + 48);
  v157 = v156(v155, 1, v154);
  v158 = v250;
  v159 = v243;
  if (v157 == 1)
  {
    (*(v145 + 16))(v243, v151, v154);
    if (v156(v155, 1, v154) != 1)
    {
      sub_100005664(v155, &qword_10005DC10, &qword_10004B7C0);
    }
  }

  else
  {
    (*(v145 + 32))(v243, v155, v154);
  }

  v160 = &v68[v64[6]];
  v161 = &v68[v64[8]];
  (*(v145 + 32))(&v68[v64[5]], v159, v154);
  *v160 = 0;
  v160[1] = 0;
  v162 = &v68[v64[7]];
  *v162 = a9;
  v162[1] = a10;
  *v161 = 0;
  v161[1] = 0;
  v163 = v255;
  sub_1000055FC(v255, v158, &qword_10005DE00, &qword_10004B8D8);
  v164 = v270;
  v165 = *(v270 + 48);
  v166 = v262;
  if (v165(v158, 1, v262) == 1)
  {
    v167 = v245;
    v168 = v151;
    v169 = v163;
    v170 = v151;
    v171 = v257;
    sub_10001C284(v168, v245);
    v266(v171, v265);
    v172 = v250;
    (v254)(v170, v154);
    v173 = v169;
    v164 = v270;
    sub_100005664(v173, &qword_10005DE00, &qword_10004B8D8);
    sub_100005664(v259, &qword_10005DC10, &qword_10004B7C0);
    v174 = v167;
    if (v165(v172, 1, v166) != 1)
    {
      sub_100005664(v172, &qword_10005DE00, &qword_10004B8D8);
    }
  }

  else
  {
    v266(v257, v265);
    (v254)(v151, v154);
    sub_100005664(v163, &qword_10005DE00, &qword_10004B8D8);
    sub_100005664(v259, &qword_10005DC10, &qword_10004B7C0);
    v174 = v245;
    (*(v164 + 32))(v245, v158, v166);
  }

  v175 = v249;
  v176 = v249[18];
  v177 = *(v164 + 32);
  v177(&v68[v249[9]], v174, v166);
  v177(&v68[v175[10]], v256, v166);
  *&v68[v175[11]] = _swiftEmptyArrayStorage;
  v68[v175[12]] = v258 & 1;
  *&v68[v175[13]] = _swiftEmptyArrayStorage;
  v68[v175[14]] = 0;
  v68[v175[15]] = 0;
  *&v68[v175[16]] = _swiftEmptyArrayStorage;
  *&v68[v175[17]] = 0;
  *&v68[v176] = 0;
  v178 = v68;
  v179 = v242;
  sub_10001A5E0(v178, v242, type metadata accessor for UsageTimelineEntry);
  v267(v179);
  sub_10001AAAC(v179, type metadata accessor for UsageTimelineEntry);
LABEL_54:
  objc_autoreleasePoolPop(v260);
  return sub_100002890(v278);
}