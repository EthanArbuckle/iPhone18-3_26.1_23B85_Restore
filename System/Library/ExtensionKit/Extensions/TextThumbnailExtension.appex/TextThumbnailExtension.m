uint64_t sub_100001EC8()
{
  v0 = *(*(sub_100004798() - 8) + 64);
  (__chkstk_darwin)();
  v1 = sub_1000046E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = (__chkstk_darwin)();
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  sub_100004728();
  sub_1000046D8();
  sub_100004768();
  sub_1000046D8();
  sub_1000036D4(&qword_10000C290, &qword_100004FE8);
  v9 = *(v2 + 72);
  v10 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100004F40;
  v12 = v11 + v10;
  v13 = *(v2 + 16);
  v13(v12, v8, v1);
  v13(v12 + v9, v6, v1);
  sub_100004708();

  v14 = *(v2 + 8);
  v14(v6, v1);
  return (v14)(v8, v1);
}

uint64_t sub_10000210C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1000046A8();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = sub_100004798();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = async function pointer to ThumbnailRequest.data.getter[1];
  v10 = swift_task_alloc();
  v2[11] = v10;
  *v10 = v2;
  v10[1] = sub_100002268;

  return ThumbnailRequest.data.getter();
}

uint64_t sub_100002268(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 88);
  v5 = *v3;
  v5[12] = a1;
  v5[13] = a2;
  v5[14] = v2;

  if (v2)
  {
    v6 = v5[10];
    v7 = v5[6];
    v8 = v5[7];

    v9 = v5[1];

    return v9();
  }

  else
  {

    return _swift_task_switch(sub_1000023C8, 0, 0);
  }
}

uint64_t sub_1000023C8()
{
  v1 = v0[14];
  v2 = sub_10000399C(v0[12], v0[13]);
  if (v1)
  {
    sub_1000042D8(v0[12], v0[13]);
    v4 = v0[10];
    v5 = v0[6];
    v6 = v0[7];
  }

  else
  {
    v8 = v0[10];
    v9 = v0[7];
    v29 = v0[9];
    v30 = v0[8];
    v11 = v0[5];
    v10 = v0[6];
    v12 = v0[4];
    v31 = v12;
    v32 = v0[2];
    v33 = v2;
    v13 = v2;
    v14 = v3;
    v28 = v3;
    sub_1000042D8(v0[12], v0[13]);
    sub_100004398(v13, v14);
    v15 = v8;
    sub_100004738();
    sub_1000046C8();
    sub_100004698();
    v17 = v16;
    v19 = v18;
    v20 = *(v11 + 8);
    v20(v9, v12);
    sub_1000046C8();
    LODWORD(v8) = sub_100004688();
    v20(v10, v12);
    v21 = v8 != 0;
    v22 = objc_allocWithZone(QLTextThumbnailRenderer);
    isa = sub_1000045E8().super.isa;
    v24 = sub_100004748().super.isa;
    v25 = [v22 initWithData:isa contentType:v24 stringEncoding:4 maxSize:v21 iconMode:{v17, v19}];

    sub_1000042D8(v33, v28);
    (*(v29 + 8))(v15, v30);
    sub_1000046C8();
    [v25 contextSize];
    *(swift_allocObject() + 16) = v25;
    v26 = v25;
    sub_100004648();

    sub_100004638();

    sub_1000042D8(v33, v28);
    v20(v9, v31);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000026B8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1000046A8();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = sub_100004798();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = *(*(sub_1000036D4(&qword_10000C298, &qword_100004FF0) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v10 = sub_1000045D8();
  v2[12] = v10;
  v11 = *(v10 - 8);
  v2[13] = v11;
  v12 = *(v11 + 64) + 15;
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100002874, 0, 0);
}

uint64_t sub_100002874()
{
  v1 = v0[3];
  if (sub_100004668())
  {
    v2 = async function pointer to ThumbnailRequest.fileURL.getter[1];
    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = sub_100002988;
    v4 = v0[14];
    v5 = v0[3];

    return ThumbnailRequest.fileURL.getter(v4);
  }

  else
  {
    v6 = async function pointer to ThumbnailRequest.data.getter[1];
    v7 = swift_task_alloc();
    v0[17] = v7;
    *v7 = v0;
    v7[1] = sub_100002DB8;
    v8 = v0[3];

    return ThumbnailRequest.data.getter();
  }
}

uint64_t sub_100002988()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_100003224;
  }

  else
  {
    v3 = sub_100002A9C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100002A9C()
{
  v1 = v0[13];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v35 = v7;
  v8 = v0[6];
  v38 = v0[5];
  v9 = v0[3];
  v32 = v0[4];
  v33 = v0[14];
  (*(v1 + 16))(v3);
  (*(v1 + 56))(v3, 0, 1, v2);
  sub_100004658();
  sub_100003E30(v3);
  v34 = *(v5 + 8);
  v34(v4, v7);
  sub_100004270(v3);
  sub_100004658();
  sub_1000046C8();
  sub_100004698();
  v11 = v10;
  v13 = v12;
  v14 = *(v38 + 8);
  v14(v6, v32);
  v37 = v14;
  sub_1000046C8();
  LODWORD(v2) = sub_100004688();
  v14(v8, v32);
  v15 = v2 != 0;
  v16 = objc_allocWithZone(QLTextThumbnailRenderer);
  sub_1000045C8(v17);
  v19 = v18;
  isa = sub_100004748().super.isa;
  v21 = [v16 initWithURL:v19 contentType:isa stringEncoding:0 maxSize:v15 iconMode:{v11, v13}];

  v34(v4, v35);
  v22 = v0[11];
  v23 = v0[10];
  v24 = v0[7];
  v36 = v0[6];
  v25 = v0[3];
  v26 = v0[4];
  v27 = v0[2];
  (*(v1 + 8))(v0[14], v0[12]);
  v28 = v21;
  sub_1000046C8();
  [v28 contextSize];
  *(swift_allocObject() + 16) = v28;
  v29 = v28;
  sub_100004648();

  sub_100004638();

  v37(v24, v26);

  v30 = v0[1];

  return v30();
}

uint64_t sub_100002DB8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 136);
  v8 = *v3;

  if (v2)
  {
    v9 = v6[14];
    v11 = v6[10];
    v10 = v6[11];
    v14 = v6 + 6;
    v12 = v6[6];
    v13 = v14[1];

    v15 = *(v8 + 8);

    return v15();
  }

  else
  {
    v6[18] = a2;
    v6[19] = a1;

    return _swift_task_switch(sub_100002F3C, 0, 0);
  }
}

uint64_t sub_100002F3C()
{
  v31 = v0[18];
  v32 = v0[19];
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];
  v30 = v0[4];
  v8 = v0[3];
  (*(v0[13] + 56))(v1, 1, 1, v0[12]);
  sub_100004658();
  sub_100003E30(v1);
  v34 = *(v3 + 8);
  v34(v2, v4);
  sub_100004270(v1);
  sub_100004658();
  sub_1000046C8();
  sub_100004698();
  v10 = v9;
  v12 = v11;
  v13 = *(v7 + 8);
  v13(v5, v30);
  sub_1000046C8();
  v14 = sub_100004688();
  v13(v6, v30);
  v15 = v14 != 0;
  v16 = objc_allocWithZone(QLTextThumbnailRenderer);
  isa = sub_1000045E8().super.isa;
  v18 = sub_100004748().super.isa;
  v19 = [v16 initWithData:isa contentType:v18 stringEncoding:0 maxSize:v15 iconMode:{v10, v12}];

  sub_1000042D8(v32, v31);
  v20 = v0[7];
  v21 = v0[14];
  v22 = v0[11];
  v33 = v0[6];
  v23 = v0[3];
  v24 = v0[4];
  v25 = v0[2];
  v34(v0[10], v0[8]);
  v26 = v19;
  sub_1000046C8();
  [v26 contextSize];
  *(swift_allocObject() + 16) = v26;
  v27 = v26;
  sub_100004648();

  sub_100004638();

  v13(v20, v24);

  v28 = v0[1];

  return v28();
}

uint64_t sub_100003224()
{
  v1 = v0[16];
  v2 = v0[14];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[6];
  v5 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000032C0()
{
  v0 = sub_100003D08(&off_100008500);
  sub_1000036D4(&qword_10000C2A0, &qword_100004FF8);
  result = swift_arrayDestroy();
  qword_10000C3E0 = v0;
  return result;
}

uint64_t sub_10000331C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_100004608();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a3 >> 62 == 2)
  {
    v11 = *(a2 + 16);
  }

  sub_100004398(a2, a3);
  sub_100004618();
  sub_1000044F4(&qword_10000C2C8, &type metadata accessor for Data.Iterator);
  v12 = 0;
  while (1)
  {
    result = sub_1000047E8();
    if (v17[15])
    {
      result = (*(v7 + 8))(v10, v6);
      v16 = *(a1 + 16);
      if (v16 != v12)
      {
        if (v12 < v16)
        {
          return 0;
        }

        goto LABEL_15;
      }

      return 1;
    }

    v14 = *(a1 + 16);
    if (v12 == v14)
    {
      (*(v7 + 8))(v10, v6);
      return 1;
    }

    if (v12 >= v14)
    {
      break;
    }

    v15 = *(a1 + 32 + v12++);
    if (v17[14] != v15)
    {
      (*(v7 + 8))(v10, v6);
      return 0;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_10000351C(uint64_t a1)
{
  v2 = sub_100003680();

  return ThumbnailExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000035C8();
  sub_100004628();
  return 0;
}

unint64_t sub_1000035C8()
{
  result = qword_10000C280;
  if (!qword_10000C280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C280);
  }

  return result;
}

unint64_t sub_100003680()
{
  result = qword_10000C288;
  if (!qword_10000C288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C288);
  }

  return result;
}

uint64_t sub_1000036D4(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_10000371C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_100004828())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1000037D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, Swift::Int))
{
  v6 = *(v3 + 40);
  sub_100004838();
  sub_1000047B8();
  v7 = sub_100004848();

  return a3(a1, a2, v7);
}

unint64_t sub_100003858(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000036D4(&qword_10000C2B8, &qword_100005008);
    v3 = sub_100004808();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000447C(v4, &v13, &qword_10000C2C0, &qword_100005010);
      v5 = v13;
      v6 = v14;
      result = sub_1000037D4(v13, v14, sub_10000371C);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000044E4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
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

void *sub_10000399C(void *a1, unint64_t a2)
{
  v4 = sub_100004578();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_100004588();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v25[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_10000331C(&off_1000084D8, a1, a2) & 1) == 0)
  {
    sub_100004398(a1, a2);
    return a1;
  }

  v11 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v11)
    {
      goto LABEL_10;
    }

    LODWORD(v12) = HIDWORD(a1) - a1;
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      v12 = v12;
      goto LABEL_9;
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  if (v11 != 2)
  {
    goto LABEL_10;
  }

  v14 = a1[2];
  v13 = a1[3];
  v15 = __OFSUB__(v13, v14);
  v12 = v13 - v14;
  if (v15)
  {
    goto LABEL_20;
  }

LABEL_9:
  if (v12 >= 5242880)
  {
    sub_100004568();
    sub_100003858(&_swiftEmptyArrayStorage);
    sub_1000044F4(&qword_10000C2B0, &type metadata accessor for CocoaError);
    sub_100004598();
    a1 = v10;
    sub_100004558();
    (*(v7 + 8))(v10, v6);
    goto LABEL_16;
  }

LABEL_10:
  v16 = objc_opt_self();
  isa = sub_1000045E8().super.isa;
  v24 = 0;
  v18 = [v16 propertyListWithData:isa options:0 format:0 error:&v24];

  v19 = v24;
  if (!v18)
  {
    a1 = v19;
    sub_1000045A8();

LABEL_16:
    swift_willThrow();
    return a1;
  }

  sub_1000047F8();
  swift_unknownObjectRelease();
  sub_1000043EC(v25, v25[3]);
  v20 = sub_100004818();
  v24 = 0;
  v21 = [v16 dataWithPropertyList:v20 format:100 options:0 error:&v24];
  swift_unknownObjectRelease();
  v22 = v24;
  if (v21)
  {
    a1 = sub_1000045F8();
  }

  else
  {
    a1 = v22;
    sub_1000045A8();

    swift_willThrow();
  }

  sub_100004430(v25);
  return a1;
}

unint64_t sub_100003D08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000036D4(&qword_10000C2A8, &qword_100005000);
    v3 = sub_100004808();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1000037D4(v5, v6, sub_10000371C);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
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

uint64_t sub_100003E30(uint64_t a1)
{
  v2 = sub_100004798();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000036D4(&qword_10000C298, &qword_100004FF0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v38 - v9;
  sub_10000447C(a1, &v38 - v9, &qword_10000C298, &qword_100004FF0);
  v11 = sub_1000045D8();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100004270(v10);
LABEL_7:
    v13 = sub_100004758();
    v15 = v17;
    goto LABEL_8;
  }

  v13 = sub_1000045B8();
  v15 = v14;
  (*(v12 + 8))(v10, v11);
  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    goto LABEL_7;
  }

LABEL_8:
  sub_100004718();
  v18 = sub_100004788();
  v19 = *(v3 + 8);
  v19(v6, v2);
  if (v18 & 1) == 0 || (sub_100004778(), v20 = sub_100004788(), v19(v6, v2), (v20))
  {
    if (qword_10000C2D0 != -1)
    {
      swift_once();
    }

    v21 = sub_1000047A8();
    v23 = v22;

    swift_beginAccess();
    v24 = qword_10000C3E0;
    if (*(qword_10000C3E0 + 16))
    {
      v25 = sub_1000037D4(v21, v23, sub_10000371C);
      v27 = v26;

      if (v27)
      {
        v28 = (*(v24 + 56) + 16 * v25);
        v29 = *v28;
        v30 = v28[1];

LABEL_17:
        swift_endAccess();
        return v29;
      }
    }

    else
    {
    }

    v29 = 0;
    goto LABEL_17;
  }

  if (!v15)
  {
    return 0;
  }

  if (sub_1000047C8() > 4)
  {

    return 0;
  }

  v39 = 46;
  v40 = 0xE100000000000000;
  v41._countAndFlagsBits = v13;
  v41._object = v15;
  sub_1000047D8(v41);

  v29 = v39;
  v32 = v40;
  if (qword_10000C2D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v33 = qword_10000C3E0;
  if (*(qword_10000C3E0 + 16))
  {
    v34 = sub_1000037D4(v29, v32, sub_10000371C);
    if (v35)
    {
      v36 = (*(v33 + 56) + 16 * v34);
      v29 = *v36;
      v37 = v36[1];
    }
  }

  swift_endAccess();

  return v29;
}

uint64_t sub_100004270(uint64_t a1)
{
  v2 = sub_1000036D4(&qword_10000C298, &qword_100004FF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000042D8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000432C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004398(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void *sub_1000043EC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100004430(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000447C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000036D4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_1000044E4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000044F4(unint64_t *a1, void (*a2)(uint64_t))
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