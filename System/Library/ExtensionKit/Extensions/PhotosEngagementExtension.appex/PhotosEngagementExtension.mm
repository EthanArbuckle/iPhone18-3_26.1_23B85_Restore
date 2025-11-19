uint64_t sub_100001148()
{
  v38 = *(v0 + 320);
  sub_100001A94(&qword_100008370, &qword_100002A68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000029D0;
  strcpy((inited + 32), "json-payload");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  sub_100001A94(&qword_100008378, &qword_100002A70);
  v2 = swift_initStackObject();
  sub_100002640(v2, v3, v4, v5, v6, v7, v8, v9, v36, v38, v10);
  *(v11 + 32) = v12;
  *(v11 + 40) = 0xE800000000000000;
  v13 = v12;
  sub_100001A94(&qword_100008380, &qword_100002A78);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1000029E0;
  sub_100002678();
  *(v15 + 32) = v17;
  *(v15 + 40) = v16;
  sub_100001A94(&qword_100008388, &qword_100002A80);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_1000029D0;
  *(v18 + 32) = v13;
  *(v18 + 40) = 0xE800000000000000;
  *(v18 + 48) = sub_1000026C0();
  sub_100001A94(&qword_100008390, &qword_100002A88);
  sub_1000026C0();
  sub_100002678();
  *(v14 + 48) = v19;
  *(v14 + 56) = v20;
  *(v14 + 64) = v21;
  v22 = swift_initStackObject();
  sub_100002640(v22, v23, v24, v25, v26, v27, v28, v29, v37, v39, v30);
  *(v31 + 32) = v32;
  *(v31 + 40) = 0xE800000000000000;
  v22[3].n128_u64[0] = sub_1000026C0();
  *(v14 + 72) = sub_1000026C0();
  sub_100001A94(&qword_100008398, &qword_100002A90);
  v2[3].n128_u64[0] = sub_1000026C0();
  sub_100001A94(&qword_1000083A0, &qword_100002A98);
  *(inited + 48) = sub_1000026C0();
  sub_100001A94(&qword_1000083A8, &qword_100002AA0);
  v33 = sub_1000026C0();
  v40[3] = sub_100001A94(&unk_1000083B0, qword_100002AA8);
  *v40 = v33;
  sub_10000266C();

  return v34();
}

uint64_t sub_1000014AC(int a1, void *aBlock)
{
  *(v2 + 80) = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  sub_100002710();
  swift_unknownObjectRelease();
  v3 = swift_task_alloc();
  *(v2 + 88) = v3;
  *v3 = v2;
  v3[1] = sub_100001568;

  return sub_100001128(v2 + 16);
}

uint64_t sub_100001568()
{
  sub_100002698();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_100002610();
  *v5 = v4;
  v6 = v3[11];
  v7 = *v1;
  *v5 = *v1;

  sub_100002574(v4 + 6);
  v8 = v3[10];
  if (v2)
  {
    v9 = sub_1000026B0();

    (v8)[2](v8, 0, v9);

    _Block_release(v8);
  }

  else
  {
    sub_1000025C0(v4 + 2, v4[5]);
    v10 = sub_100002720();
    v8[2](v8, v10, 0);
    _Block_release(v8);
    swift_unknownObjectRelease();
    sub_100002574(v4 + 2);
  }

  v11 = v7[1];

  return v11();
}

uint64_t sub_100001704(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(sub_100001A94(&qword_100008368, &qword_100002A20) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v11 - v5;
  v7 = sub_100002700();
  sub_100001ADC(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_100002A30;
  v9[5] = v8;
  sub_100001E9C(0, 0, v6, &unk_100002A40, v9);
}

id sub_100001814()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosEngagementExtension();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10000186C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosEngagementExtension();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000018C4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100001904()
{
  sub_100002698();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000019B4;

  return sub_1000014AC(v2, v3);
}

uint64_t sub_1000019B4()
{
  sub_1000026A4();
  sub_10000268C();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100002610();
  *v4 = v3;

  sub_10000266C();

  return v5();
}

uint64_t sub_100001A94(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100001B04(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10000260C;

  return v7();
}

uint64_t sub_100001BEC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000260C;

  return sub_100001B04(v2, v3, v5);
}

uint64_t sub_100001CAC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1000019B4;

  return v8();
}

uint64_t sub_100001D98()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100001DD8(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = sub_10000265C(v7);
  *v8 = v9;
  v8[1] = sub_10000260C;

  return sub_100001CAC(a1, v3, v4, v6);
}

uint64_t sub_100001E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100001A94(&qword_100008368, &qword_100002A20) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v24 - v10;
  sub_100002138(a3, v24 - v10);
  v12 = sub_100002700();
  if (sub_1000021A8(v11, 1, v12) == 1)
  {
    sub_1000021D0(v11);
  }

  else
  {
    sub_1000026F0();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    v13 = *(a5 + 24);
    v14 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v15 = sub_1000026E0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1000026D0() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_1000021D0(a3);

      return v22;
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

  sub_1000021D0(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100002138(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001A94(&qword_100008368, &qword_100002A20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000021D0(uint64_t a1)
{
  v2 = sub_100001A94(&qword_100008368, &qword_100002A20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100002238(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002330;

  return v7(a1);
}

uint64_t sub_100002330()
{
  sub_1000026A4();
  sub_10000268C();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100002610();
  *v4 = v3;

  sub_10000266C();

  return v5();
}

uint64_t sub_100002414()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000244C()
{
  sub_100002698();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_10000265C(v3);
  *v4 = v5;
  v6 = sub_100002620(v4);

  return v7(v6);
}

uint64_t sub_1000024E0()
{
  sub_100002698();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_10000265C(v3);
  *v4 = v5;
  v6 = sub_100002620(v4);

  return v7(v6);
}

uint64_t sub_100002574(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *sub_1000025C0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100002620(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

__n128 sub_100002640(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 a11)
{
  result = a11;
  a1[1] = a11;
  return result;
}

uint64_t sub_10000266C()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}