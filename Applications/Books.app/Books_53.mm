uint64_t sub_100683458(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1006834F0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100796814();
  __chkstk_darwin(v4 - 8);
  sub_1001F1160(&qword_100AF1390);
  sub_1007967E4();
  sub_100005920(&qword_100AF1560, &qword_100AF1568);
  sub_10043F41C();
  v12 = sub_1007963A4();
  sub_1001F1160(&qword_100AF13B8);
  sub_1007967E4();
  sub_100005920(&qword_100AF1540, &qword_100AF1548);
  sub_100677EBC();
  v5 = sub_1007963A4();
  sub_1001F1160(&qword_100AF13E0);
  sub_1007967E4();
  sub_100005920(&qword_100AE3820, &qword_100AE3828);
  sub_10021F600();
  v6 = sub_1007963A4();
  sub_1001F1160(&qword_100AF1408);
  sub_1007967E4();
  sub_100005920(&qword_100AE3810, &qword_100AE3818);
  sub_1003FCD84();
  v7 = sub_1007963A4();
  sub_1001F1160(&qword_100AF1430);
  sub_1007967E4();
  sub_100005920(&qword_100AE3800, &qword_100AE3808);
  v8 = sub_1007963B4();
  sub_1001F1160(&qword_100AF1458);
  sub_1007967E4();
  v9 = sub_1007963B4();
  result = *a1;
  v11 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v11;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = 0xD000000000000012;
  *(a2 + 48) = 0x800000010083C470;
  *(a2 + 56) = v12;
  *(a2 + 64) = v5;
  *(a2 + 72) = v6;
  *(a2 + 80) = v7;
  *(a2 + 88) = v8;
  *(a2 + 96) = v9;
  return result;
}

uint64_t sub_1006839B0()
{
  sub_1001F1160(&qword_100AD57D0);
  sub_100795B74();
  sub_100795B64();
  sub_100795AA4();
  sub_100795A94();
  sub_1006834F0(v0 + 464, v0 + 152);

  v1 = *(v0 + 152);
  v2 = *(v0 + 200);
  v3 = *(v0 + 232);
  *(v0 + 112) = *(v0 + 216);
  *(v0 + 128) = v3;
  *(v0 + 144) = *(v0 + 248);
  v4 = *(v0 + 168);
  *(v0 + 48) = v1;
  *(v0 + 64) = v4;
  *(v0 + 80) = *(v0 + 184);
  *(v0 + 96) = v2;
  v5 = *(v0 + 48);
  if (v5)
  {
    *(v0 + 256) = v5;
    v6 = *(v0 + 208);
    *(v0 + 296) = *(v0 + 192);
    *(v0 + 312) = v6;
    v7 = *(v0 + 240);
    *(v0 + 328) = *(v0 + 224);
    *(v0 + 344) = v7;
    v8 = *(v0 + 176);
    *(v0 + 264) = *(v0 + 160);
    *(v0 + 280) = v8;
    sub_100685554(v0 + 256, v0 + 360);
    v9 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_10066C874(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_10066C874((v10 > 1), v11 + 1, 1, v9);
    }

    *(v9 + 2) = v11 + 1;
    v12 = &v9[104 * v11];
    v13 = *(v0 + 256);
    v14 = *(v0 + 288);
    *(v12 + 3) = *(v0 + 272);
    *(v12 + 4) = v14;
    *(v12 + 2) = v13;
    v15 = *(v0 + 304);
    v16 = *(v0 + 320);
    v17 = *(v0 + 336);
    *(v12 + 16) = *(v0 + 352);
    *(v12 + 6) = v16;
    *(v12 + 7) = v17;
    *(v12 + 5) = v15;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  sub_100007840(v0 + 48, &qword_100AF1570);
  v18 = *(v0 + 8);

  return v18(v9);
}

uint64_t sub_100683B98()
{
  v29 = sub_100796274();
  v0 = *(v29 - 8);
  __chkstk_darwin(v29);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1001F1160(&qword_100AD5CB0);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v22 - v7;
  v9 = sub_1001F1160(&qword_100AD5CC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  v12 = sub_100796814();
  v27 = v12;
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v25 = sub_1001F1160(&qword_100AE22F0);
  sub_1007967E4();
  v14 = *(v13 + 56);
  v26 = v13 + 56;
  v28 = v14;
  v14(v11, 1, 1, v12);
  v15 = sub_100795CE4();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0;
  v16 = *(*(v15 - 8) + 56);
  v16(v8, 1, 1, v15);
  v16(v5, 1, 1, v15);
  v24 = enum case for InputConnectionBehavior.default(_:);
  v17 = *(v0 + 104);
  v22 = v0 + 104;
  v23 = v17;
  v18 = v2;
  v19 = v2;
  v20 = v29;
  v17(v19);
  sub_100408CA8();
  v25 = sub_100795E74();
  sub_1001F1160(&qword_100AF1550);
  sub_1007967E4();
  v28(v11, 1, 1, v27);
  LOBYTE(v30) = 1;
  v16(v8, 1, 1, v15);
  v16(v5, 1, 1, v15);
  v23(v18, v24, v20);
  sub_10043F41C();
  sub_100795E54();
  return v25;
}

uint64_t sub_100683FB4()
{
  v27 = sub_100796274();
  v0 = *(v27 - 8);
  __chkstk_darwin(v27);
  v22 = v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1001F1160(&qword_100AD5CB0);
  __chkstk_darwin(v2 - 8);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v19 - v6;
  v8 = sub_1001F1160(&qword_100AD5CC0);
  __chkstk_darwin(v8 - 8);
  v10 = v19 - v9;
  v11 = sub_100796814();
  v25 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v23 = sub_1001F1160(&qword_100AE22F0);
  sub_1007967E4();
  v13 = *(v12 + 56);
  v24 = v12 + 56;
  v26 = v13;
  v13(v10, 1, 1, v11);
  v14 = sub_100795CE4();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0;
  v15 = *(*(v14 - 8) + 56);
  v15(v7, 1, 1, v14);
  v15(v4, 1, 1, v14);
  v21 = enum case for InputConnectionBehavior.default(_:);
  v16 = *(v0 + 104);
  v19[1] = v0 + 104;
  v20 = v16;
  v17 = v22;
  v16(v22);
  sub_100408CA8();
  v23 = sub_100795E74();
  sub_1001F1160(&qword_100AF1530);
  sub_1007967E4();
  v26(v10, 1, 1, v25);
  LOBYTE(v28) = 1;
  v15(v7, 1, 1, v14);
  v15(v4, 1, 1, v14);
  v20(v17, v21, v27);
  sub_100677EBC();
  sub_100795E54();
  return v23;
}

uint64_t sub_1006843DC()
{
  v27 = sub_100796274();
  v0 = *(v27 - 8);
  __chkstk_darwin(v27);
  v22 = v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1001F1160(&qword_100AD5CB0);
  __chkstk_darwin(v2 - 8);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v19 - v6;
  v8 = sub_1001F1160(&qword_100AD5CC0);
  __chkstk_darwin(v8 - 8);
  v10 = v19 - v9;
  v11 = sub_100796814();
  v25 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v23 = sub_1001F1160(&qword_100AE22F0);
  sub_1007967E4();
  v13 = *(v12 + 56);
  v24 = v12 + 56;
  v26 = v13;
  v13(v10, 1, 1, v11);
  v14 = sub_100795CE4();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0;
  v15 = *(*(v14 - 8) + 56);
  v15(v7, 1, 1, v14);
  v15(v4, 1, 1, v14);
  v21 = enum case for InputConnectionBehavior.default(_:);
  v16 = *(v0 + 104);
  v19[1] = v0 + 104;
  v20 = v16;
  v17 = v22;
  v16(v22);
  sub_100408CA8();
  v23 = sub_100795E74();
  sub_1001F1160(&qword_100AD5CE0);
  sub_1007967E4();
  v26(v10, 1, 1, v25);
  LOBYTE(v28) = 8;
  v15(v7, 1, 1, v14);
  v15(v4, 1, 1, v14);
  v20(v17, v21, v27);
  sub_10021F600();
  sub_100795E54();
  return v23;
}

uint64_t sub_100684804()
{
  v27 = sub_100796274();
  v0 = *(v27 - 8);
  __chkstk_darwin(v27);
  v22 = v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1001F1160(&qword_100AD5CB0);
  __chkstk_darwin(v2 - 8);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v19 - v6;
  v8 = sub_1001F1160(&qword_100AD5CC0);
  __chkstk_darwin(v8 - 8);
  v10 = v19 - v9;
  v11 = sub_100796814();
  v25 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v23 = sub_1001F1160(&qword_100AE22F0);
  sub_1007967E4();
  v13 = *(v12 + 56);
  v24 = v12 + 56;
  v26 = v13;
  v13(v10, 1, 1, v11);
  v14 = sub_100795CE4();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0;
  v15 = *(*(v14 - 8) + 56);
  v15(v7, 1, 1, v14);
  v15(v4, 1, 1, v14);
  v21 = enum case for InputConnectionBehavior.default(_:);
  v16 = *(v0 + 104);
  v19[1] = v0 + 104;
  v20 = v16;
  v17 = v22;
  v16(v22);
  sub_100408CA8();
  v23 = sub_100795E74();
  sub_1001F1160(&qword_100AE20E8);
  sub_1007967E4();
  v26(v10, 1, 1, v25);
  LOBYTE(v28) = 2;
  v15(v7, 1, 1, v14);
  v15(v4, 1, 1, v14);
  v20(v17, v21, v27);
  sub_1003FCD84();
  sub_100795E54();
  return v23;
}

uint64_t sub_100684C2C()
{
  v0 = sub_1001F1160(&qword_100AE37D0);
  __chkstk_darwin(v0 - 8);
  v30 = &v22 - v1;
  v31 = sub_100796274();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001F1160(&qword_100AD5CB0);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v11 = sub_1001F1160(&qword_100AD5CC0);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v23 = &v22 - v12;
  v14 = sub_100796814();
  v29 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v27 = sub_1001F1160(&qword_100AE22F0);
  sub_1007967E4();
  v28 = *(v15 + 56);
  v28(v13, 1, 1, v14);
  v16 = sub_100795CE4();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0;
  v17 = *(*(v16 - 8) + 56);
  v22 = v10;
  v17(v10, 1, 1, v16);
  v17(v7, 1, 1, v16);
  v26 = enum case for InputConnectionBehavior.default(_:);
  v18 = *(v2 + 104);
  v24 = v2 + 104;
  v25 = v18;
  v18(v4);
  sub_100408CA8();
  v19 = v23;
  v27 = sub_100795E74();
  sub_1001F1160(&qword_100AF14D8);
  sub_1007967E4();
  v28(v19, 1, 1, v29);
  LOBYTE(v32) = 2;
  v20 = sub_1007A2674();
  (*(*(v20 - 8) + 56))(v30, 1, 1, v20);
  v17(v22, 1, 1, v16);
  v25(v4, v26, v31);
  sub_100795EC4();
  return v27;
}

uint64_t sub_1006850C0()
{
  v0 = sub_1001F1160(&qword_100AE37D0);
  __chkstk_darwin(v0 - 8);
  v30 = &v22 - v1;
  v31 = sub_100796274();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001F1160(&qword_100AD5CB0);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v11 = sub_1001F1160(&qword_100AD5CC0);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v23 = &v22 - v12;
  v14 = sub_100796814();
  v29 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v27 = sub_1001F1160(&qword_100AE22F0);
  sub_1007967E4();
  v28 = *(v15 + 56);
  v28(v13, 1, 1, v14);
  v16 = sub_100795CE4();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0;
  v17 = *(*(v16 - 8) + 56);
  v22 = v10;
  v17(v10, 1, 1, v16);
  v17(v7, 1, 1, v16);
  v26 = enum case for InputConnectionBehavior.default(_:);
  v18 = *(v2 + 104);
  v24 = v2 + 104;
  v25 = v18;
  v18(v4);
  sub_100408CA8();
  v19 = v23;
  v27 = sub_100795E74();
  sub_1001F1160(&qword_100AF14D8);
  sub_1007967E4();
  v28(v19, 1, 1, v29);
  LOBYTE(v32) = 2;
  v20 = sub_1007A2674();
  (*(*(v20 - 8) + 56))(v30, 1, 1, v20);
  v17(v22, 1, 1, v16);
  v25(v4, v26, v31);
  sub_100795EC4();
  return v27;
}

uint64_t sub_10068558C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002812C;

  return sub_1004E4DEC(a1, v4, v5, v6, (v1 + 5));
}

void sub_1006856EC(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, SEL *a6)
{
  v16.receiver = a1;
  v16.super_class = type metadata accessor for ContextMenuButton();
  v10 = *a6;
  v11 = a3;
  v12 = a4;
  v13 = v16.receiver;
  swift_unknownObjectRetain();
  objc_msgSendSuper2(&v16, v10, v11, v12, a5);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    if ([Strong respondsToSelector:{*a6, v16.receiver, v16.super_class}])
    {
      [v15 *a6];
    }

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
}

id sub_1006858EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContextMenuButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100685998(uint64_t a1, unint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v6 = a1;
  v7 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_1007A3624())
    {
      goto LABEL_3;
    }

LABEL_6:
    v8 = &_swiftEmptySetSingleton;
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_7:
    v13 = -1 << *(v6 + 32);
    v10 = v6 + 56;
    v11 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(v6 + 56);

    v31 = 0;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1001F1160(&qword_100AF1648);
  v8 = sub_1007A36F4();
  if (!v7)
  {
    goto LABEL_7;
  }

LABEL_4:

  sub_1007A35E4();
  sub_10000A7C4(0, a2);
  sub_100402738(a4, a2);
  result = sub_1007A2864();
  v6 = v35;
  v10 = v36;
  v11 = v37;
  v31 = v38;
  v12 = v39;
LABEL_11:
  v16 = (v8 + 7);
  while (v6 < 0)
  {
    v20 = sub_1007A3654();
    if (!v20)
    {
LABEL_34:
      sub_10004DC54();

      return v8;
    }

    *&v32 = v20;
    sub_10000A7C4(0, a2);
    swift_dynamicCast();
LABEL_25:
    sub_10000A7C4(0, a2);
    swift_dynamicCast();
    result = sub_1007A3694(v8[5]);
    v24 = -1 << *(v8 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*&v16[8 * (v25 >> 6)]) != 0)
    {
      v17 = __clz(__rbit64((-1 << v25) & ~*&v16[8 * (v25 >> 6)])) | v25 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = 0;
      v28 = (63 - v24) >> 6;
      do
      {
        if (++v26 == v28 && (v27 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v29 = v26 == v28;
        if (v26 == v28)
        {
          v26 = 0;
        }

        v27 |= v29;
        v30 = *&v16[8 * v26];
      }

      while (v30 == -1);
      v17 = __clz(__rbit64(~v30)) + (v26 << 6);
    }

    *&v16[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
    v18 = v8[6] + 40 * v17;
    *(v18 + 32) = v34;
    *v18 = v32;
    *(v18 + 16) = v33;
    ++v8[2];
  }

  if (v12)
  {
    v19 = v31;
LABEL_24:
    v22 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v23 = *(*(v6 + 48) + ((v19 << 9) | (8 * v22)));
    goto LABEL_25;
  }

  v21 = v31;
  while (1)
  {
    v19 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v19 >= ((v11 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v12 = *(v10 + 8 * v19);
    ++v21;
    if (v12)
    {
      v31 = v19;
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_100685CF8()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AF15C0);
  sub_100008B98(v0, qword_100AF15C0);
  sub_10000A7C4(0, &qword_100AD20A0);
  return sub_1007A33F4();
}

uint64_t sub_100685D84()
{
  sub_1001F1160(&qword_100AD7FB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10083C7A0;
  v1 = type metadata accessor for BKLRUCache();
  *(v0 + 56) = sub_1001F1160(&qword_100AF1650);
  *(v0 + 32) = v1;
  v2 = sub_10000A7C4(0, &qword_100AE9058);
  *(v0 + 88) = sub_1001F1160(&qword_100AF1658);
  *(v0 + 64) = v2;
  v3 = sub_10000A7C4(0, &qword_100AF1660);
  *(v0 + 120) = sub_1001F1160(&qword_100AF1668);
  *(v0 + 96) = v3;
  v4 = sub_10000A7C4(0, &qword_100AF1670);
  *(v0 + 152) = sub_1001F1160(&qword_100AF1678);
  *(v0 + 128) = v4;
  v5 = sub_10000A7C4(0, &qword_100AF1680);
  *(v0 + 184) = sub_1001F1160(&qword_100AF1688);
  *(v0 + 160) = v5;
  v6 = sub_10000A7C4(0, &unk_100AEB920);
  *(v0 + 216) = sub_1001F1160(&qword_100AF1690);
  *(v0 + 192) = v6;
  v7 = sub_10000A7C4(0, &qword_100AD6750);
  *(v0 + 248) = sub_1001F1160(&qword_100AF1698);
  *(v0 + 224) = v7;
  v8 = sub_10000A7C4(0, &qword_100AF16A0);
  *(v0 + 280) = sub_1001F1160(&qword_100AF16A8);
  *(v0 + 256) = v8;
  v9 = sub_10000A7C4(0, &qword_100AF16B0);
  *(v0 + 312) = sub_1001F1160(&qword_100AF16B8);
  *(v0 + 288) = v9;
  v10 = sub_10000A7C4(0, &qword_100AF16C0);
  *(v0 + 344) = sub_1001F1160(&qword_100AF16C8);
  *(v0 + 320) = v10;
  sub_10000A7C4(0, &qword_100AF16D0);
  result = sub_1007A3014();
  qword_100AF15D8 = result;
  return result;
}

id BKLRUCache.init(capacity:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1007A2D64();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007A1CA4();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1007A2CF4();
  __chkstk_darwin(v9 - 8);
  v10 = OBJC_IVAR____TtC5Books10BKLRUCache_queue;
  sub_10000A7C4(0, &qword_100AD1E10);
  sub_1007A2CE4();
  sub_1007A1C74();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v4);
  *&v2[v10] = sub_1007A2DA4();
  v11 = OBJC_IVAR____TtC5Books10BKLRUCache_cache;
  result = sub_1001EFFC8(_swiftEmptyArrayStorage);
  *&v2[v11] = result;
  *&v2[OBJC_IVAR____TtC5Books10BKLRUCache_keys] = _swiftEmptyArrayStorage;
  if (a1 < 1)
  {
    __break(1u);
  }

  else
  {
    *&v2[OBJC_IVAR____TtC5Books10BKLRUCache_capacity] = a1;
    v13 = type metadata accessor for BKLRUCache();
    v14.receiver = v2;
    v14.super_class = v13;
    return objc_msgSendSuper2(&v14, "init");
  }

  return result;
}

uint64_t BKLRUCache.setObject(_:forKey:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_1007A1CA4();
  v22 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1007A1C54();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1006889F4(a2, a3);
  if (v15)
  {
    v16 = v15;
    if (a1)
    {
      v21 = *(v3 + OBJC_IVAR____TtC5Books10BKLRUCache_queue);
      v17 = result;
      swift_unknownObjectRetain();
      sub_1007A1C44();
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v19 = swift_allocObject();
      v19[2] = v18;
      v19[3] = a1;
      v19[4] = v17;
      v19[5] = v16;
      aBlock[4] = sub_100688BB4;
      aBlock[5] = v19;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1003323D0;
      aBlock[3] = &unk_100A2AD88;
      v20 = _Block_copy(aBlock);
      swift_unknownObjectRetain();

      sub_1007A1C74();
      sub_1007A2D94();
      _Block_release(v20);
      swift_unknownObjectRelease();
      (*(v22 + 8))(v9, v7);
      (*(v11 + 8))(v13, v10);
    }

    else
    {
      BKLRUCache.removeObject(forKey:)(*&result);
    }
  }

  return result;
}

void sub_100686600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_100687554(a2, a3, a4);
  }
}

uint64_t BKLRUCache.object(forKey:)(uint64_t a1, unint64_t a2)
{
  sub_1006889F4(a1, a2);
  if (!v2)
  {
    return 0;
  }

  swift_allocObject();
  v3 = swift_unknownObjectWeakInit();
  __chkstk_darwin(v3);
  sub_1001F1160(&qword_100AF1600);
  sub_1007A2D84();

  return v5;
}

void sub_100686804(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v7 = Strong;
  v8 = OBJC_IVAR____TtC5Books10BKLRUCache_cache;
  swift_beginAccess();
  v9 = *&v7[v8];
  if (!*(v9 + 16))
  {

LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  v10 = sub_10000E53C(a1, a2);
  if ((v11 & 1) == 0)
  {

    goto LABEL_8;
  }

  v12 = *(*(v9 + 56) + 8 * v10);
  swift_unknownObjectRetain();

  v13 = OBJC_IVAR____TtC5Books10BKLRUCache_keys;
  swift_beginAccess();

  v14 = sub_100688C3C(&v7[v13], a1, a2);

  v15 = *(*&v7[v13] + 16);
  if (v15 >= v14)
  {
    sub_1002F9180(v14, v15);

    sub_1002F99AC(0, 0, a1, a2);
    swift_endAccess();

LABEL_9:
    *a3 = v12;
    return;
  }

  __break(1u);
}

Swift::Void __swiftcall BKLRUCache.removeObject(forKey:)(Swift::String_optional forKey)
{
  object = forKey.value._object;
  countAndFlagsBits = forKey.value._countAndFlagsBits;
  v18 = sub_1007A1CA4();
  v3 = *(v18 - 8);
  __chkstk_darwin(v18);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007A1C54();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1006889F4(countAndFlagsBits, object);
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    sub_1007A1C44();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = v12;
    v15[4] = v13;
    aBlock[4] = sub_100688BE8;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003323D0;
    aBlock[3] = &unk_100A2ADD8;
    v16 = _Block_copy(aBlock);

    sub_1007A1C74();
    sub_1007A2D94();
    _Block_release(v16);
    (*(v3 + 8))(v5, v18);
    (*(v7 + 8))(v9, v6);
  }
}

void sub_100686C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    sub_1002EF5CC(a2, a3);
    swift_endAccess();
    swift_unknownObjectRelease();
    v7 = OBJC_IVAR____TtC5Books10BKLRUCache_keys;
    swift_beginAccess();

    v8 = sub_100688C3C(&v6[v7], a2, a3);

    v9 = *(*&v6[v7] + 16);
    if (v9 < v8)
    {
      __break(1u);
    }

    else
    {
      sub_1002F9180(v8, v9);
      swift_endAccess();
    }
  }
}

Swift::Void __swiftcall BKLRUCache.removeAllObjects()()
{
  v0 = sub_1007A1CA4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007A1C54();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007A1C44();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100688BF4;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A2AE00;
  v9 = _Block_copy(aBlock);

  sub_1007A1C74();
  sub_1007A2D94();
  _Block_release(v9);
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
}

uint64_t sub_10068705C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = OBJC_IVAR____TtC5Books10BKLRUCache_cache;
    v2 = Strong;
    swift_beginAccess();
    *&v2[v1] = _swiftEmptyDictionarySingleton;
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = OBJC_IVAR____TtC5Books10BKLRUCache_keys;
    v5 = result;
    swift_beginAccess();
    *&v5[v4] = _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t BKLRUCache.count.getter()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1007A2D84();

  return v1;
}

uint64_t sub_1006872C8@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = OBJC_IVAR____TtC5Books10BKLRUCache_keys;
    v4 = result;
    swift_beginAccess();
    v5 = *&v4[v3];

    v6 = *(v5 + 16);
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return result;
}

uint64_t BKLRUCache.isEmpty.getter()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1007A2D84();

  return v1;
}

uint64_t sub_1006874A8@<X0>(BOOL *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = OBJC_IVAR____TtC5Books10BKLRUCache_keys;
    v4 = result;
    swift_beginAccess();
    v5 = *&v4[v3];

    v6 = *(v5 + 16);

    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  *a1 = v7;
  return result;
}

uint64_t sub_100687554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC5Books10BKLRUCache_cache;
  swift_beginAccess();
  if (*(*(v3 + v8) + 16))
  {

    sub_10000E53C(a2, a3);
    v10 = v9;

    if (v10)
    {
      v11 = OBJC_IVAR____TtC5Books10BKLRUCache_keys;
      swift_beginAccess();

      v12 = sub_100688C3C((v3 + v11), a2, a3);

      v14 = *(*(v4 + v11) + 16);
      if (v14 < v12)
      {
        goto LABEL_22;
      }

      sub_1002F9180(v12, v14);
      swift_endAccess();
    }
  }

  swift_beginAccess();

  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v4 + v8);
  *(v4 + v8) = 0x8000000000000000;
  sub_1002F70D0(a1, a2, a3, isUniquelyReferenced_nonNull_native);

  *(v4 + v8) = v30;
  swift_endAccess();
  v16 = OBJC_IVAR____TtC5Books10BKLRUCache_keys;
  swift_beginAccess();

  sub_1002F99AC(0, 0, a2, a3);
  swift_endAccess();

  v17 = *(v4 + OBJC_IVAR____TtC5Books10BKLRUCache_capacity);
  while (2)
  {
    v18 = *(v4 + v16);
    do
    {
      v19 = *(v18 + 16);
      if (v17 >= v19)
      {
        return result;
      }
    }

    while (!v19);
    v20 = v18 + 16 * v19;
    v22 = *(v20 + 16);
    v21 = *(v20 + 24);
    swift_beginAccess();

    v23 = sub_10000E53C(v22, v21);
    if (v24)
    {
      v25 = v23;
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v27 = *(v4 + v8);
      *(v4 + v8) = 0x8000000000000000;
      if (!v26)
      {
        sub_1002F31EC();
      }

      swift_unknownObjectRelease();
      sub_1002EFE50(v25, v27);
      *(v4 + v8) = v27;
    }

    swift_endAccess();

    result = swift_beginAccess();
    v28 = *(v4 + v16);
    if (*(v28 + 16))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + v16) = v28;
      if (result)
      {
        v29 = *(v28 + 16);
        if (v29)
        {
LABEL_16:
          *(v28 + 16) = v29 - 1;
          *(v4 + v16) = v28;
          swift_endAccess();

          continue;
        }
      }

      else
      {
        result = sub_1002F4988(v28);
        v28 = result;
        v29 = *(result + 16);
        if (v29)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      __break(1u);
    }

    break;
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

Swift::Void __swiftcall BKLRUCache.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC5Books10BKLRUCache_queue);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  v5[2].super.isa = v4;
  v5[3].super.isa = with.super.isa;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100688C34;
  *(v6 + 24) = v5;
  v9[4] = sub_10025D774;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100685954;
  v9[3] = &unk_100A2AE78;
  v7 = _Block_copy(v9);
  v8 = with.super.isa;

  dispatch_sync(v3, v7);
  _Block_release(v7);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

void sub_1006879D0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();

    sub_1001F1160(&qword_100AF1638);
    isa = sub_1007A2024().super.isa;

    v6 = sub_1007A2214();
    [a2 encodeObject:isa forKey:v6];

    swift_beginAccess();

    v7 = sub_1007A25D4().super.isa;

    v8 = sub_1007A2214();
    [a2 encodeObject:v7 forKey:v8];

    v9 = *&v4[OBJC_IVAR____TtC5Books10BKLRUCache_capacity];
    v10 = sub_1007A2214();
    [a2 encodeInteger:v9 forKey:v10];
  }
}

uint64_t BKLRUCache.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = sub_1007A2D64();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007A1CA4();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1007A2CF4();
  __chkstk_darwin(v9 - 8);
  v10 = OBJC_IVAR____TtC5Books10BKLRUCache_queue;
  sub_10000A7C4(0, &qword_100AD1E10);
  sub_1007A2CE4();
  sub_1007A1C74();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v4);
  *&v2[v10] = sub_1007A2DA4();
  v11 = OBJC_IVAR____TtC5Books10BKLRUCache_cache;
  *&v2[v11] = sub_1001EFFC8(_swiftEmptyArrayStorage);
  *&v2[OBJC_IVAR____TtC5Books10BKLRUCache_keys] = _swiftEmptyArrayStorage;
  v12 = sub_1007A2214();
  v13 = [a1 decodeIntegerForKey:v12];

  v14 = 2;
  if (v13 > 0)
  {
    v14 = v13;
  }

  v15 = &off_100AF1000;
  *&v2[OBJC_IVAR____TtC5Books10BKLRUCache_capacity] = v14;
  v16 = type metadata accessor for BKLRUCache();
  v68.receiver = v2;
  v68.super_class = v16;
  v17 = objc_msgSendSuper2(&v68, "init");
  if ([a1 allowsKeyedCoding])
  {
    v18 = sub_1007A2214();
    v19 = [a1 decodeObjectForKey:v18];

    if (v19)
    {
      sub_1007A3504();
      swift_unknownObjectRelease();
    }

    else
    {
      v62 = 0u;
      v63 = 0u;
    }

    v64 = v62;
    v65 = v63;
    if (*(&v63 + 1))
    {
      sub_1001F1160(&qword_100AF1608);
      if (swift_dynamicCast())
      {
        v20 = v67;
        v21 = OBJC_IVAR____TtC5Books10BKLRUCache_cache;
        swift_beginAccess();
        *(v17 + v21) = v20;
      }
    }

    else
    {
      sub_1000230BC(&v64);
    }

    v22 = sub_1007A2214();
    v23 = [a1 decodeObjectForKey:v22];

    if (v23)
    {
      sub_1007A3504();
      swift_unknownObjectRelease();
    }

    else
    {
      v62 = 0u;
      v63 = 0u;
    }

    v64 = v62;
    v65 = v63;
    if (*(&v63 + 1))
    {
      sub_1001F1160(&unk_100AD61F0);
      if (swift_dynamicCast())
      {
        v24 = v67;
        v25 = OBJC_IVAR____TtC5Books10BKLRUCache_keys;
        swift_beginAccess();
        *(v17 + v25) = v24;
      }
    }

    else
    {
      sub_1000230BC(&v64);
    }
  }

  v60 = a1;
  v26 = OBJC_IVAR____TtC5Books10BKLRUCache_keys;
  swift_beginAccess();
  v27 = *(v17 + v26);
  v28 = *(v27 + 16);
  v29 = OBJC_IVAR____TtC5Books10BKLRUCache_cache;

  result = swift_beginAccess();
  if (v28)
  {
    v31 = 0;
    v32 = v27 + 40;
    v58 = v28 - 1;
    v61 = _swiftEmptyArrayStorage;
    v59 = v27 + 40;
LABEL_20:
    v33 = (v32 + 16 * v31);
    v34 = v31;
    while (v34 < *(v27 + 16))
    {
      if (*(*(v17 + v29) + 16))
      {
        v36 = *(v33 - 1);
        v35 = *v33;

        sub_10000E53C(v36, v35);
        if (v37)
        {

          v38 = v61;
          result = swift_isUniquelyReferenced_nonNull_native();
          v67 = v38;
          if ((result & 1) == 0)
          {
            result = sub_1003BD0CC(0, v38[2] + 1, 1);
            v38 = v67;
          }

          v40 = v38[2];
          v39 = v38[3];
          v41 = (v40 + 1);
          if (v40 >= v39 >> 1)
          {
            v61 = (v40 + 1);
            result = sub_1003BD0CC((v39 > 1), v40 + 1, 1);
            v41 = v61;
            v38 = v67;
          }

          v31 = v34 + 1;
          v38[2] = v41;
          v61 = v38;
          v42 = &v38[2 * v40];
          v42[4] = v36;
          v42[5] = v35;
          v43 = v58 == v34;
          v15 = &off_100AF1000;
          v32 = v59;
          if (v43)
          {
            goto LABEL_35;
          }

          goto LABEL_20;
        }
      }

      ++v34;
      v33 += 2;
      if (v28 == v34)
      {
        v15 = &off_100AF1000;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
  }

  else
  {
    v61 = _swiftEmptyArrayStorage;
LABEL_35:

    *(v17 + v26) = v61;

    v44 = v15[191];
    v45 = *(v17 + v26);
    v46 = *(v45 + 16);
    for (i = *&v44[v17]; i < v46; v46 = *(v45 + 16))
    {
      if (v46)
      {
        v48 = v45 + 16 * v46;
        v50 = *(v48 + 16);
        v49 = *(v48 + 24);
        swift_beginAccess();

        v51 = sub_10000E53C(v50, v49);
        if (v52)
        {
          v53 = v51;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v55 = *(v17 + v29);
          v66 = v55;
          *(v17 + v29) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1002F31EC();
            v55 = v66;
          }

          swift_unknownObjectRelease();
          sub_1002EFE50(v53, v55);
          *(v17 + v29) = v55;
        }

        swift_endAccess();

        result = swift_beginAccess();
        v56 = *(v17 + v26);
        if (!*(v56 + 16))
        {
          goto LABEL_51;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        *(v17 + v26) = v56;
        if (result)
        {
          v57 = *(v56 + 16);
          if (!v57)
          {
            goto LABEL_52;
          }
        }

        else
        {
          result = sub_1002F4988(v56);
          v56 = result;
          v57 = *(result + 16);
          if (!v57)
          {
            goto LABEL_52;
          }
        }

        *(v56 + 16) = v57 - 1;
        *(v17 + v26) = v56;
        swift_endAccess();

        v45 = *(v17 + v26);
        i = *&v44[v17];
      }
    }

    return v17;
  }

  return result;
}

id BKLRUCache.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BKLRUCache();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1006884A4(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1007A3174(*(*v1 + 40));
  v5 = v3 + 56;
  v6 = -1 << *(v3 + 32);
  v7 = v4 & ~v6;
  v8 = v7 >> 6;
  v9 = *(v3 + 56 + 8 * (v7 >> 6));
  v10 = 1 << v7;
  if (((1 << v7) & v9) != 0)
  {
    v11 = ~v6;
    sub_10000A7C4(0, &qword_100AECD40);
    while (1)
    {
      v12 = *(*(v3 + 48) + 8 * v7);
      v13 = sub_1007A3184();

      if (v13)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
      v8 = v7 >> 6;
      v9 = *(v5 + 8 * (v7 >> 6));
      v10 = 1 << v7;
      if (((1 << v7) & v9) == 0)
      {
        goto LABEL_5;
      }
    }

    v15 = *(v3 + 48);
    v16 = *(v15 + 8 * v7);
    *(v15 + 8 * v7) = a1;
  }

  else
  {
LABEL_5:
    v14 = *(v3 + 16);
    if (v14 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v5 + 8 * v8) = v10 | v9;
      *(*(v3 + 48) + 8 * v7) = a1;
      *(v3 + 16) = v14 + 1;
    }
  }
}

uint64_t sub_100688608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    v8 = *(i - 1) == a2 && *i == a3;
    if (v8 || (sub_1007A3AB4() & 1) != 0)
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t _s5Books10BKLRUCacheC9unarchive4fromACSg10Foundation4DataV_tFZ_0()
{
  v0 = objc_opt_self();
  if (qword_100AD1AB8 != -1)
  {
    swift_once();
  }

  sub_10000A7C4(0, &qword_100ADAF70);
  sub_100402738(&qword_100AF1640, &qword_100ADAF70);
  v1 = sub_1007A2834();
  sub_100685998(v1, &qword_100ADAF70, NSObject_ptr, &qword_100AF1640);

  isa = sub_1007A2824().super.isa;

  v3 = sub_1007969C4().super.isa;
  v17[0] = 0;
  v4 = [v0 unarchivedObjectOfClasses:isa fromData:v3 error:v17];

  if (v4)
  {
    v5 = v17[0];
    sub_1007A3504();
    swift_unknownObjectRelease();
    type metadata accessor for BKLRUCache();
    if (swift_dynamicCast())
    {
      return v16;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7 = v17[0];
    sub_1007967D4();

    swift_willThrow();
    if (qword_100AD1AB0 != -1)
    {
      swift_once();
    }

    v8 = sub_10079ACE4();
    sub_100008B98(v8, qword_100AF15C0);
    swift_errorRetain();
    v9 = sub_10079ACC4();
    v10 = sub_1007A29B4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17[0] = v12;
      *v11 = 136446210;
      swift_getErrorValue();
      v13 = sub_1007A3B84();
      v15 = sub_1000070F4(v13, v14, v17);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to unarchive BKLRUCache: %{public}s", v11, 0xCu);
      sub_1000074E0(v12);
    }

    else
    {
    }

    return 0;
  }
}

uint64_t sub_1006889F4(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    if (qword_100AD1AB0 != -1)
    {
      swift_once();
    }

    v4 = sub_10079ACE4();
    sub_100008B98(v4, qword_100AF15C0);
    v5 = sub_10079ACC4();
    v6 = sub_1007A29B4();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_15;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "Invalid key passed to BKLRUCache - key is nil";
    goto LABEL_14;
  }

  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {

    return sub_1007A24A4();
  }

  if (qword_100AD1AB0 != -1)
  {
    swift_once();
  }

  v9 = sub_10079ACE4();
  sub_100008B98(v9, qword_100AF15C0);
  v5 = sub_10079ACC4();
  v6 = sub_1007A29B4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "Invalid key passed to BKLRUCache - key is empty";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v5, v6, v8, v7, 2u);
  }

LABEL_15:

  return 0;
}

uint64_t sub_100688C3C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  result = sub_100688608(*a1, a2, a3);
  v9 = result;
  if (v3)
  {
    return v9;
  }

  if (v8)
  {
    return *(v6 + 16);
  }

  v10 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v11 = *(v6 + 16);
    if (v10 == v11)
    {
      return v9;
    }

    v12 = 16 * result;
    while (v10 < v11)
    {
      v14 = *(v6 + v12 + 48);
      v15 = *(v6 + v12 + 56);
      if (v14 != a2 || v15 != a3)
      {
        result = sub_1007A3AB4();
        if ((result & 1) == 0)
        {
          if (v10 != v9)
          {
            if (v9 >= v11)
            {
              goto LABEL_24;
            }

            v17 = (v6 + 32 + 16 * v9);
            v18 = v17[1];
            v20 = *v17;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_1002F4988(v6);
            }

            v19 = v6 + 16 * v9;
            *(v19 + 32) = v14;
            *(v19 + 40) = v15;

            if (v10 >= *(v6 + 16))
            {
              goto LABEL_25;
            }

            v13 = v6 + v12;
            *(v13 + 48) = v20;
            *(v13 + 56) = v18;

            *a1 = v6;
          }

          ++v9;
        }
      }

      ++v10;
      v11 = *(v6 + 16);
      v12 += 16;
      if (v10 == v11)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100688DFC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  return v1;
}

uint64_t sub_100688E98()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  return v1;
}

uint64_t sub_100688F0C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();
}

uint64_t sub_100688F84()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  return v1;
}

uint64_t sub_100688FF8(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v24 = a1;
  v2 = sub_1001F1160(&qword_100AF1958);
  v3 = *(v2 - 8);
  v27 = v2;
  v28 = v3;
  __chkstk_darwin(v2);
  v26 = v19 - v4;
  v5 = sub_1001F1160(&qword_100AD7EB0);
  __chkstk_darwin(v5 - 8);
  v7 = v19 - v6;
  v20 = sub_1001F1160(&qword_100AF1960);
  v8 = *(v20 - 8);
  __chkstk_darwin(v20);
  v10 = v19 - v9;
  ObjectType = swift_getObjectType();
  v29 = sub_1007A0554();
  sub_100017E74();
  v11 = sub_1007A2D74();
  v30 = v11;
  v12 = sub_1007A2D24();
  v13 = *(v12 - 8);
  v21 = *(v13 + 56);
  v22 = v13 + 56;
  v21(v7, 1, 1, v12);
  sub_1001F1160(&qword_100AE6460);
  v19[3] = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_100005920(&unk_100AEB880, &qword_100AE6460);
  v19[2] = sub_100017E1C();
  sub_10079BAB4();
  sub_100007840(v7, &qword_100AD7EB0);

  swift_allocObject();
  swift_weakInit();
  v19[1] = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_100005920(&qword_100AF1968, &qword_100AF1960);
  v14 = v20;
  sub_10079BB04();

  (*(v8 + 8))(v10, v14);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v29 = sub_1007A05C4();
  v15 = sub_1007A2D74();
  v30 = v15;
  v21(v7, 1, 1, v12);
  sub_1001F1160(&unk_100AEA1E0);
  sub_100005920(&qword_100AF2590, &unk_100AEA1E0);
  v16 = v26;
  sub_10079BAB4();
  sub_100007840(v7, &qword_100AD7EB0);

  swift_allocObject();
  swift_weakInit();
  sub_100005920(&qword_100AF25A0, &qword_100AF1958);
  v17 = v27;
  sub_10079BB04();

  (*(v28 + 8))(v16, v17);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();
}

uint64_t sub_100689524()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_10079B9B4();
  }

  return result;
}

void (*sub_1006895A4())(_BYTE *, void)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    result = sub_10079B994();
    if (__OFADD__(*v1, 1))
    {
      __break(1u);
    }

    else
    {
      ++*v1;
      result(v2, 0);
    }
  }

  return result;
}

uint64_t sub_100689674()
{
  v1 = OBJC_IVAR____TtC5Books21SampleHeaderViewModel__coverImage;
  v2 = sub_1001F1160(&qword_100AF1970);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC5Books21SampleHeaderViewModel__title;
  v4 = sub_1001F1160(&unk_100ADF120);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC5Books21SampleHeaderViewModel__author, v4);
  v6 = OBJC_IVAR____TtC5Books21SampleHeaderViewModel__disabled;
  v7 = sub_1001F1160(&qword_100AD50E0);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC5Books21SampleHeaderViewModel__buyButtonProvider;
  v9 = sub_1001F1160(&qword_100AD50C0);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC5Books21SampleHeaderViewModel__navigationAttemptsPastEnd;
  v11 = sub_1001F1160(&unk_100AE1570);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SampleHeaderViewModel()
{
  result = qword_100AF1738;
  if (!qword_100AF1738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006898F0()
{
  sub_100689AB4();
  if (v0 <= 0x3F)
  {
    sub_100205C6C(319, &qword_100AD4F38);
    if (v1 <= 0x3F)
    {
      sub_100205C6C(319, &qword_100AEB4D0);
      if (v2 <= 0x3F)
      {
        sub_100689B0C();
        if (v3 <= 0x3F)
        {
          sub_100205C6C(319, &qword_100AD4F50);
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_100689AB4()
{
  if (!qword_100AF1748)
  {
    type metadata accessor for CGImage(255);
    v0 = sub_10079B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_100AF1748);
    }
  }
}

void sub_100689B0C()
{
  if (!qword_100AD4F98)
  {
    sub_1001F1234(&qword_100AD4FA0);
    v0 = sub_10079B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_100AD4F98);
    }
  }
}

uint64_t sub_100689B70@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SampleHeaderViewModel();
  result = sub_10079B8B4();
  *a1 = result;
  return result;
}

uint64_t sub_100689BC0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  *a1 = v3;
  return result;
}

uint64_t sub_100689C40(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v2 = v1;
  return sub_10079B9B4();
}

uint64_t sub_100689D08@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  *a1 = v3;
  return result;
}

uint64_t sub_100689D88()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10079B9B4();
}

uint64_t sub_100689DFC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();
}

uint64_t sub_100689E78(uint64_t a1)
{
  sub_100206108(a1, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100206108(v3, &v2);

  sub_10079B9B4();
  return sub_100007840(v3, &qword_100AD4FA0);
}

uint64_t sub_100689F14@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  *a1 = v3;
  return result;
}

uint64_t sub_100689F94()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10079B9B4();
}

uint64_t sub_10068A008(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&unk_100AE1570);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = sub_1001F1160(&qword_100AD50C0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v12 = CGColorSpaceCreateWithName(kCGColorSpaceGenericRGBLinear);
  v13.super.isa = sub_1007969C4().super.isa;
  v14 = CGDataProviderCreateWithCFData(v13.super.isa);
  v29 = v12;
  if (!v12)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (!v14)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
  }

  v25 = v4;
  isa = v13.super.isa;
  v24 = a2;
  v28 = a1;
  v26 = v14;
  v15 = CGImageCreate(1uLL, 1uLL, 8uLL, 0x20uLL, 4uLL, v29, 0x2002u, v14, 0, 1, kCGRenderingIntentDefault);
  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = v15;
  type metadata accessor for SampleHeaderViewModel();
  memset(v34, 0, sizeof(v34));
  v35 = 0;
  v17 = swift_allocObject();
  v18 = OBJC_IVAR____TtC5Books21SampleHeaderViewModel__buyButtonProvider;
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  sub_100206108(v32, &v30);
  v19 = v16;
  sub_1001F1160(&qword_100AD4FA0);
  sub_10079B964();
  sub_100007840(v32, &qword_100AD4FA0);
  (*(v9 + 32))(v17 + v18, v11, v8);
  v20 = OBJC_IVAR____TtC5Books21SampleHeaderViewModel__navigationAttemptsPastEnd;
  *&v32[0] = 0;
  sub_10079B964();
  (*(v5 + 32))(v17 + v20, v7, v25);
  swift_weakInit();
  *(v17 + OBJC_IVAR____TtC5Books21SampleHeaderViewModel_cancellables) = &_swiftEmptySetSingleton;
  swift_beginAccess();
  v30 = v19;
  type metadata accessor for CGImage(0);
  v21 = v19;
  sub_10079B964();
  swift_endAccess();
  swift_beginAccess();
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_10079B964();
  swift_endAccess();
  swift_beginAccess();
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_10079B964();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v30) = 0;
  sub_10079B964();
  swift_endAccess();
  sub_100206108(v34, v32);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100206108(v32, &v30);

  sub_10079B9B4();
  sub_100007840(v32, &qword_100AD4FA0);
  if (v28)
  {
    sub_100688FF8(v28, v24);

    swift_unknownObjectRelease();
    sub_100007840(v34, &qword_100AD4FA0);
  }

  else
  {
    sub_100007840(v34, &qword_100AD4FA0);
  }

  return v17;
}

void PriceTrackingService.setupService<A>(priceTracker:addToWTRManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() sharedInstance];
  sub_10068D5DC(a1, a3, v5);
}

void sub_10068A5C4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, v6);
}

void sub_10068A63C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = *&v3[OBJC_IVAR___BKPriceTrackingService__bridge + 16];
  *&v3[OBJC_IVAR___BKPriceTrackingService__bridge + 16] = a1;
  v10 = a1;

  *&v3[OBJC_IVAR___BKPriceTrackingService__priceTracker + 16] = a2;

  v11 = type metadata accessor for AppAddToWTRDelegate();
  v12 = objc_allocWithZone(v11);
  v13 = [objc_opt_self() sharedInstance];
  v14 = objc_allocWithZone(v11);
  swift_weakInit();
  swift_weakAssign();
  *&v14[OBJC_IVAR___BKAppAddToWTRDelegate_notifications] = v13;
  v24.receiver = v14;
  v24.super_class = v11;
  v15 = objc_msgSendSuper2(&v24, "init");
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  swift_beginAccess();
  sub_10068DCB4(v15);
  swift_endAccess();
  v16 = objc_allocWithZone(BSUIDynamicValue);
  isa = sub_1007A2884().super.super.isa;
  sub_100013740(_swiftEmptyArrayStorage);
  v18 = sub_1007A2024().super.isa;

  v19 = [v16 initWithValue:isa options:v18];

  if (v19)
  {
    swift_beginAccess();
    sub_10068DCB4(v19);
    swift_endAccess();
    v20 = sub_1007A2744();
    (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = a2;
    v21[5] = v3;

    v22 = v3;
    sub_1003457A0(0, 0, v8, &unk_10083CB00, v21);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10068A930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10068A950, 0, 0);
}

uint64_t sub_10068A950()
{
  *(v0 + 32) = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1007A1D64();
  sub_10068DF68();

  v2 = sub_1007A2694();

  return _swift_task_switch(sub_10068AA14, v2, v1);
}

uint64_t sub_10068AA14()
{
  sub_1007A1D54();

  v1 = *(v0 + 8);

  return v1();
}

id sub_10068AABC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = (Strong + OBJC_IVAR___BKPriceTrackingService__stateChanges);
    swift_beginAccess();
    v4 = *v3;
    v5 = v3[1];
    v6 = v3[2];
    v7 = v6;

    v8 = sub_1006288C0(v4, v5, v6);
    v9 = v8;

    if (v8)
    {
      result = [v9 getValue];
      if (result)
      {
        sub_1007A3504();
        swift_unknownObjectRelease();
        sub_1000076D4((v0 + 48), (v0 + 16));
        sub_10023A724();
        swift_dynamicCast();
        v11 = *(v0 + 128);
        v12 = [v11 integerValue];

        result = v12 + 1;
        if (!__OFADD__(v12, 1))
        {
          isa = sub_1007A2884().super.super.isa;
          [v9 updateValue:isa];

          goto LABEL_6;
        }

        __break(1u);
      }

      __break(1u);
      return result;
    }

LABEL_6:
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10068AD08(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = v13;
  v8[6] = v14;
  v8[3] = a7;
  v8[4] = a8;
  v8[2] = a6;
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  v8[7] = v9;
  *v9 = v8;
  v9[1] = sub_10068AE0C;

  return v11(v8 + 8);
}

uint64_t sub_10068AE0C()
{

  return _swift_task_switch(sub_10068AF08, 0, 0);
}

uint64_t sub_10068AF08()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_1001F1160(&qword_100AD7FB0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10080B690;
  *(v5 + 56) = &type metadata for Bool;
  *(v5 + 32) = *(v0 + 64);
  v6.super.isa = v4;
  v11.value._rawValue = v5;
  v11.is_nil = v3;
  v12._countAndFlagsBits = v1;
  v12._object = v2;
  sub_1007A32F4(v6, v11, v12, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10068AFE0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v13;
  v8[8] = v14;
  v8[5] = a7;
  v8[6] = a8;
  v8[4] = a6;
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  v8[9] = v9;
  *v9 = v8;
  v9[1] = sub_10068B0E4;

  return v11(v8 + 2);
}

uint64_t sub_10068B0E4()
{

  return _swift_task_switch(sub_10068B1E0, 0, 0);
}

uint64_t sub_10068B1E0()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  sub_1001F1160(&qword_100AD7FB0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10080B690;
  *(v5 + 56) = &type metadata for String;
  v6 = v0[3];
  *(v5 + 32) = v0[2];
  *(v5 + 40) = v6;

  v7.super.isa = v4;
  v12.value._rawValue = v5;
  v12.is_nil = v3;
  v13._countAndFlagsBits = v1;
  v13._object = v2;
  sub_1007A32F4(v7, v12, v13, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10068B2D0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = v13;
  v8[6] = v14;
  v8[3] = a7;
  v8[4] = a8;
  v8[2] = a6;
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  v8[7] = v9;
  *v9 = v8;
  v9[1] = sub_10068B3D4;

  return v11(v8 + 8);
}

uint64_t sub_10068B3D4()
{

  return _swift_task_switch(sub_10068B4D0, 0, 0);
}

uint64_t sub_10068B4D0()
{
  v1 = sub_1001F1160(&qword_100ADD528);
  if (v1 == &type metadata for () + 8)
  {
    v4 = _swiftEmptyArrayStorage;
  }

  else
  {
    v3 = v1;
    sub_1001F1160(&qword_100AD7FB0);
    v4 = swift_allocObject();
    *(v4 + 1) = xmmword_10080B690;
    v4[7] = v3;
    *(v4 + 32) = *(v0 + 64);
  }

  v5.super.isa = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = v4;
  sub_1007A32F4(v5, *(&v6 - 1), *(v0 + 40), v2);

  v8 = *(v0 + 8);

  return v8();
}

void (*PriceTrackingService.js_featureEnabled.getter())(void *a1)
{
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  return sub_10068D6F4;
}

void sub_10068B640(void *a1, char *a2)
{
  v4 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  v7 = &a2[OBJC_IVAR___BKPriceTrackingService__bridge];
  v8 = *&a2[OBJC_IVAR___BKPriceTrackingService__bridge + 16];
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    v10 = sub_1007A2744();
    v11 = *(*(v10 - 8) + 56);
    v12 = v8;
    v11(v6, 1, 1, v10);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = &unk_10083CB80;
    v13[5] = v9;
    v13[6] = v12;
    v13[7] = a1;
    v13[8] = 0xD000000000000061;
    v13[9] = 0x80000001008E5C70;
    v13[10] = 120;
    v14 = a2;
    v15 = a1;
    sub_1003457A0(0, 0, v6, &unk_10083CB88, v13);
  }

  else
  {
    v17 = *v7;
    v16 = v7[1];
    v18 = qword_100AD13A0;

    if (v18 != -1)
    {
      swift_once();
    }

    v19 = sub_10079ACE4();
    sub_100008B98(v19, qword_100B22FB0);

    v24 = sub_10079ACC4();
    v20 = sub_1007A29B4();

    if (os_log_type_enabled(v24, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v25 = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_1000070F4(v17, v16, &v25);
      _os_log_impl(&_mh_execute_header, v24, v20, "[get] Missing value for %{public}s! Did you forget to call setupService()?", v21, 0xCu);
      sub_1000074E0(v22);
    }

    else
    {

      v23 = v24;
    }
  }
}

void (*PriceTrackingService.js_addWeakStateChangeObserver.getter())(uint64_t a1)
{
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  return sub_10068D6FC;
}

void (*PriceTrackingService.js_removeWeakStateChangeObserver.getter())(uint64_t a1)
{
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  return sub_10068D720;
}

void sub_10068BA54(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = (a2 + OBJC_IVAR___BKPriceTrackingService__stateChanges);
  swift_beginAccess();
  v6 = v5[2];
  if (v6)
  {
    [v6 *a3];
  }

  else
  {
    v8 = *v5;
    v7 = v5[1];
    v9 = qword_100AD13A0;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = sub_10079ACE4();
    sub_100008B98(v10, qword_100B22FB0);

    v11 = sub_10079ACC4();
    v12 = sub_1007A29B4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_1000070F4(v8, v7, &v15);
      _os_log_impl(&_mh_execute_header, v11, v12, "[get] Missing value for %{public}s! Did you forget to call setupService()?", v13, 0xCu);
      sub_1000074E0(v14);
    }
  }
}

void (*PriceTrackingService.js_cardListString.getter())(void *a1)
{
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  return sub_10068D744;
}

void sub_10068BC70(void *a1, char *a2)
{
  v4 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  v7 = &a2[OBJC_IVAR___BKPriceTrackingService__bridge];
  v8 = *&a2[OBJC_IVAR___BKPriceTrackingService__bridge + 16];
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    v10 = sub_1007A2744();
    v11 = *(*(v10 - 8) + 56);
    v12 = v8;
    v11(v6, 1, 1, v10);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = &unk_10083CB60;
    v13[5] = v9;
    v13[6] = v12;
    v13[7] = a1;
    v13[8] = 0xD000000000000061;
    v13[9] = 0x80000001008E5C70;
    v13[10] = 134;
    v14 = a2;
    v15 = a1;
    sub_1003457A0(0, 0, v6, &unk_10083CB70, v13);
  }

  else
  {
    v17 = *v7;
    v16 = v7[1];
    v18 = qword_100AD13A0;

    if (v18 != -1)
    {
      swift_once();
    }

    v19 = sub_10079ACE4();
    sub_100008B98(v19, qword_100B22FB0);

    v24 = sub_10079ACC4();
    v20 = sub_1007A29B4();

    if (os_log_type_enabled(v24, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v25 = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_1000070F4(v17, v16, &v25);
      _os_log_impl(&_mh_execute_header, v24, v20, "[get] Missing value for %{public}s! Did you forget to call setupService()?", v21, 0xCu);
      sub_1000074E0(v22);
    }

    else
    {

      v23 = v24;
    }
  }
}

void (*PriceTrackingService.js_notificationsEnabled.getter())(void *a1)
{
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  return sub_10068D74C;
}

void sub_10068BFFC(void *a1, char *a2)
{
  v4 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  v7 = &a2[OBJC_IVAR___BKPriceTrackingService__bridge];
  v8 = *&a2[OBJC_IVAR___BKPriceTrackingService__bridge + 16];
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    v10 = sub_1007A2744();
    v11 = *(*(v10 - 8) + 56);
    v12 = v8;
    v11(v6, 1, 1, v10);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = &unk_10083CB40;
    v13[5] = v9;
    v13[6] = v12;
    v13[7] = a1;
    v13[8] = 0xD000000000000061;
    v13[9] = 0x80000001008E5C70;
    v13[10] = 140;
    v14 = a2;
    v15 = a1;
    sub_1003457A0(0, 0, v6, &unk_10083CB50, v13);
  }

  else
  {
    v17 = *v7;
    v16 = v7[1];
    v18 = qword_100AD13A0;

    if (v18 != -1)
    {
      swift_once();
    }

    v19 = sub_10079ACE4();
    sub_100008B98(v19, qword_100B22FB0);

    v24 = sub_10079ACC4();
    v20 = sub_1007A29B4();

    if (os_log_type_enabled(v24, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v25 = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_1000070F4(v17, v16, &v25);
      _os_log_impl(&_mh_execute_header, v24, v20, "[get] Missing value for %{public}s! Did you forget to call setupService()?", v21, 0xCu);
      sub_1000074E0(v22);
    }

    else
    {

      v23 = v24;
    }
  }
}

void (*PriceTrackingService.js_setNotificationsEnabled.getter())(char a1, void *a2)
{
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  return sub_10068D754;
}

void sub_10068C430(char a1, void *a2, char *a3)
{
  v6 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = &a3[OBJC_IVAR___BKPriceTrackingService__bridge];
  v10 = *&a3[OBJC_IVAR___BKPriceTrackingService__bridge + 16];
  if (v10)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = a3;
    *(v11 + 24) = a1 & 1;
    v12 = sub_1007A2744();
    v13 = *(*(v12 - 8) + 56);
    v14 = v10;
    v13(v8, 1, 1, v12);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = &unk_10083CB20;
    v15[5] = v11;
    v15[6] = v14;
    v15[7] = a2;
    v15[8] = 0xD000000000000061;
    v15[9] = 0x80000001008E5C70;
    v15[10] = 146;
    v16 = a3;
    v17 = a2;
    sub_1003457A0(0, 0, v8, &unk_10083CB30, v15);
  }

  else
  {
    v19 = *v9;
    v18 = v9[1];
    v20 = qword_100AD13A0;

    if (v20 != -1)
    {
      swift_once();
    }

    v21 = sub_10079ACE4();
    sub_100008B98(v21, qword_100B22FB0);

    v26 = sub_10079ACC4();
    v22 = sub_1007A29B4();

    if (os_log_type_enabled(v26, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v27 = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_1000070F4(v19, v18, &v27);
      _os_log_impl(&_mh_execute_header, v26, v22, "[get] Missing value for %{public}s! Did you forget to call setupService()?", v23, 0xCu);
      sub_1000074E0(v24);
    }

    else
    {

      v25 = v26;
    }
  }
}

uint64_t sub_10068C740(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10068C760, 0, 0);
}

uint64_t sub_10068C760()
{
  v16 = v0;
  v1 = (*(v0 + 24) + OBJC_IVAR___BKPriceTrackingService__priceTracker);
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  *(v0 + 32) = v4;
  if (v4)
  {
    v14 = (&async function pointer to dispatch thunk of PriceTracker.featureEnabled.getter + async function pointer to dispatch thunk of PriceTracker.featureEnabled.getter);

    v5 = swift_task_alloc();
    *(v0 + 40) = v5;
    *v5 = v0;
    v5[1] = sub_10068C9A4;

    return v14();
  }

  else
  {
    v7 = qword_100AD13A0;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = sub_10079ACE4();
    sub_100008B98(v8, qword_100B22FB0);

    v9 = sub_10079ACC4();
    v10 = sub_1007A29B4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_1000070F4(v3, v2, &v15);
      _os_log_impl(&_mh_execute_header, v9, v10, "[get] Missing value for %{public}s! Did you forget to call setupService()?", v11, 0xCu);
      sub_1000074E0(v12);
    }

    **(v0 + 16) = 0;
    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_10068C9A4(char a1)
{
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_10068CAC4, 0, 0);
}

uint64_t sub_10068CAE4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10068CB04, 0, 0);
}

uint64_t sub_10068CB04()
{
  v17 = v0;
  v1 = (v0[3] + OBJC_IVAR___BKPriceTrackingService__priceTracker);
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v0[4] = v4;
  if (v4)
  {
    v15 = (&async function pointer to dispatch thunk of PriceTracker.cardListString.getter + async function pointer to dispatch thunk of PriceTracker.cardListString.getter);

    v5 = swift_task_alloc();
    v0[5] = v5;
    *v5 = v0;
    v5[1] = sub_10068CD4C;

    return v15();
  }

  else
  {
    v7 = qword_100AD13A0;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = sub_10079ACE4();
    sub_100008B98(v8, qword_100B22FB0);

    v9 = sub_10079ACC4();
    v10 = sub_1007A29B4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_1000070F4(v3, v2, &v16);
      _os_log_impl(&_mh_execute_header, v9, v10, "[get] Missing value for %{public}s! Did you forget to call setupService()?", v11, 0xCu);
      sub_1000074E0(v12);
    }

    v13 = v0[2];
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_10068CD4C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;

  return _swift_task_switch(sub_10068CE6C, 0, 0);
}

uint64_t sub_10068CE6C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 48);
  v2[1] = v1;
  return (*(v0 + 8))();
}

uint64_t sub_10068CE8C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10068CEAC, 0, 0);
}

uint64_t sub_10068CEAC()
{
  v16 = v0;
  v1 = (*(v0 + 24) + OBJC_IVAR___BKPriceTrackingService__priceTracker);
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  *(v0 + 32) = v4;
  if (v4)
  {
    v14 = (&async function pointer to dispatch thunk of PriceTracker.notificationsEnabled.getter + async function pointer to dispatch thunk of PriceTracker.notificationsEnabled.getter);

    v5 = swift_task_alloc();
    *(v0 + 40) = v5;
    *v5 = v0;
    v5[1] = sub_10068D0F0;

    return v14();
  }

  else
  {
    v7 = qword_100AD13A0;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = sub_10079ACE4();
    sub_100008B98(v8, qword_100B22FB0);

    v9 = sub_10079ACC4();
    v10 = sub_1007A29B4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_1000070F4(v3, v2, &v15);
      _os_log_impl(&_mh_execute_header, v9, v10, "[get] Missing value for %{public}s! Did you forget to call setupService()?", v11, 0xCu);
      sub_1000074E0(v12);
    }

    **(v0 + 16) = 0;
    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_10068D0F0(char a1)
{
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_10068E5A0, 0, 0);
}

uint64_t sub_10068D210(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 48) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return _swift_task_switch(sub_10068D234, 0, 0);
}

uint64_t sub_10068D234()
{
  v17 = v0;
  v1 = (*(v0 + 24) + OBJC_IVAR___BKPriceTrackingService__priceTracker);
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  *(v0 + 32) = v4;
  if (v4)
  {
    v15 = (&async function pointer to dispatch thunk of PriceTracker.setNotificationsEnabled(_:) + async function pointer to dispatch thunk of PriceTracker.setNotificationsEnabled(_:));

    v5 = swift_task_alloc();
    *(v0 + 40) = v5;
    *v5 = v0;
    v5[1] = sub_10068D48C;
    v6 = *(v0 + 48);

    return v15(v6);
  }

  else
  {
    v8 = qword_100AD13A0;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = sub_10079ACE4();
    sub_100008B98(v9, qword_100B22FB0);

    v10 = sub_10079ACC4();
    v11 = sub_1007A29B4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_1000070F4(v3, v2, &v16);
      _os_log_impl(&_mh_execute_header, v10, v11, "[get] Missing value for %{public}s! Did you forget to call setupService()?", v12, 0xCu);
      sub_1000074E0(v13);
    }

    **(v0 + 16) = *(v0 + 32) == 0;
    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_10068D48C()
{

  return _swift_task_switch(sub_10068D5A4, 0, 0);
}

uint64_t sub_10068D5DC(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100798B74();
  sub_10068A63C(a3, a1);
  v6 = (v3 + OBJC_IVAR___BKPriceTrackingService__addToWTRDelegate);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = v9;

  v11 = sub_1006288C0(v7, v8, v9);

  [swift_getObjCClassFromMetadata() setAddToWTRDelegate:v11];

  return sub_100798B74();
}

uint64_t sub_10068D770()
{
  result = sub_1007A3454();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10068D7F0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 16) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = (*(v4 + 48))((a1 + v8 + 16) & ~v8);
        if (v18 >= 2)
        {
          return v18 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *(a1 + 1);
        if (v17 >= 0xFFFFFFFF)
        {
          LODWORD(v17) = -1;
        }

        return (v17 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void sub_10068D9A8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 16) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_62:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if ((v9 & 0x80000000) != 0)
  {
    v21 = (&a1[v11 + 16] & ~v11);
    if (v9 >= a2)
    {
      v25 = *(v7 + 56);
      v26 = a2 + 1;
      v27 = &a1[v11 + 16] & ~v11;

      v25(v27, v26);
    }

    else
    {
      if (v12 <= 3)
      {
        v22 = ~(-1 << (8 * v12));
      }

      else
      {
        v22 = -1;
      }

      if (v12)
      {
        v23 = v22 & (~v9 + a2);
        if (v12 <= 3)
        {
          v24 = v12;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v12);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

void sub_10068DCB4(uint64_t a1)
{
  v2 = v1;
  if (!a1)
  {
    v5 = *v1;
    v4 = v1[1];
    if (qword_100AD13A0 != -1)
    {
      swift_once();
    }

    v6 = sub_10079ACE4();
    sub_100008B98(v6, qword_100B22FB0);

    v7 = sub_10079ACC4();
    v8 = sub_1007A29B4();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_1000070F4(v5, v4, &v11);
      _os_log_impl(&_mh_execute_header, v7, v8, "[set] Missing new value for %{public}s", v9, 0xCu);
      sub_1000074E0(v10);
    }
  }

  v2[2] = a1;
}

uint64_t sub_10068DE18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002812C;

  return sub_10068A930(a1, v4, v5, v7, v6);
}

uint64_t sub_10068DED8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100009A34;

  return sub_10068AA9C(v0);
}

unint64_t sub_10068DF68()
{
  result = qword_100AF1A48;
  if (!qword_100AF1A48)
  {
    sub_1007A1D64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1A48);
  }

  return result;
}

uint64_t sub_10068DFC8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100009A34;

  return sub_10068D210(a1, v4, v5);
}

uint64_t sub_10068E078(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100009A34;

  return sub_10068B2D0(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_10068E16C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100009A34;

  return sub_10068CE8C(a1, v4);
}

uint64_t sub_10068E20C(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100009A34;

  return sub_10068AD08(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_10068E300(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100009A34;

  return sub_10068CAE4(a1, v4);
}

uint64_t sub_10068E3A0(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100009A34;

  return sub_10068AFE0(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_10068E494(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100009A34;

  return sub_10068C740(a1, v4);
}

uint64_t sub_10068E534()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_10068E5D0()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = swift_allocObject();
    swift_weakInit();
    v3 = v1;

    v1 = sub_10068E8AC(sub_10068F1D0, v2);
  }

  *(v0 + OBJC_IVAR____TtC5Books42WindowAppIntentsAssetViewControllerTracker_viewControllerTask) = v1;

  sub_10068E764();
}

uint64_t sub_10068E690()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  return v1;
}

uint64_t sub_10068E704(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

void sub_10068E764()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = v1;
    v3 = sub_10068E9E8();
  }

  else
  {
    v3 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  if (v3)
  {
    if (v7)
    {
      sub_10000A7C4(0, &unk_100ADF430);
      v4 = v3;
      v5 = v7;
      v6 = sub_1007A3184();

      if (v6)
      {

        return;
      }
    }
  }

  else
  {
    if (!v7)
    {
      return;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10079B9B4();
}

uint64_t sub_10068E8AC(uint64_t a1, uint64_t a2)
{
  v5 = [objc_opt_self() defaultCenter];
  v9[3] = sub_10000A7C4(0, &qword_100AED9C8);
  v9[0] = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = v2;

  sub_10001811C(@"BKPresentedAssetVCDidChangeNotificationName", v9, sub_10025D774, v6);

  sub_100007840(v9, &unk_100AD5B40);
  sub_10079B884();
  swift_allocObject();
  return sub_10079B894();
}

uint64_t sub_10068E9E8()
{
  if ([v0 assetState] != 2)
  {
    if (qword_100AD1AC0 != -1)
    {
      swift_once();
    }

    v18 = sub_10079ACE4();
    sub_100008B98(v18, qword_100AF1A50);
    v19 = v0;
    v4 = sub_10079ACC4();
    v20 = sub_1007A29A4();
    if (!os_log_type_enabled(v4, v20))
    {
      goto LABEL_29;
    }

    v21 = swift_slowAlloc();
    *v21 = 134217984;
    *(v21 + 4) = [v19 assetState];

    _os_log_impl(&_mh_execute_header, v4, v20, "incorrect asset state: %ld", v21, 0xCu);
    goto LABEL_36;
  }

  v1 = [v0 childViewControllers];
  sub_10000A7C4(0, &qword_100AD7CB0);
  v2 = sub_1007A25E4();

  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_32:

LABEL_33:
    if (qword_100AD1AC0 == -1)
    {
LABEL_34:
      v32 = sub_10079ACE4();
      sub_100008B98(v32, qword_100AF1A50);
      v4 = sub_10079ACC4();
      v33 = sub_1007A29A4();
      if (!os_log_type_enabled(v4, v33))
      {
        goto LABEL_37;
      }

      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v4, v33, "no transitioning VC", v34, 2u);
LABEL_36:

      goto LABEL_37;
    }

LABEL_41:
    swift_once();
    goto LABEL_34;
  }

  if (!sub_1007A38D4())
  {
    goto LABEL_32;
  }

LABEL_4:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = sub_1007A3784();
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_41;
    }

    v3 = *(v2 + 32);
  }

  v4 = v3;

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {

    goto LABEL_33;
  }

  v6 = [v5 contentViewController];
  if (!v6)
  {
    if (qword_100AD1AC0 != -1)
    {
      swift_once();
    }

    v22 = sub_10079ACE4();
    sub_100008B98(v22, qword_100AF1A50);
    v23 = sub_10079ACC4();
    v24 = sub_1007A29A4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "no content VC", v25, 2u);
    }

    goto LABEL_37;
  }

  v7 = v6;
  v8 = swift_dynamicCastObjCProtocolConditional();
  if (!v8)
  {
    if (qword_100AD1AC0 != -1)
    {
      swift_once();
    }

    v26 = sub_10079ACE4();
    sub_100008B98(v26, qword_100AF1A50);
    v27 = v7;
    v28 = sub_10079ACC4();
    v29 = sub_1007A29A4();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      *(v30 + 4) = v27;
      *v31 = v7;
      v19 = v27;
      _os_log_impl(&_mh_execute_header, v28, v29, "content VC %@ is not a AppIntentsAssetVC", v30, 0xCu);
      sub_100007840(v31, &unk_100AD9480);

LABEL_29:
      return 0;
    }

LABEL_37:
    return 0;
  }

  v9 = v8;
  if (qword_100AD1AC0 != -1)
  {
    swift_once();
  }

  v10 = sub_10079ACE4();
  sub_100008B98(v10, qword_100AF1A50);
  v11 = v7;
  v12 = sub_10079ACC4();
  v13 = sub_1007A29A4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v9;
    *v15 = v9;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "found AppIntentsAssetVC: %@", v14, 0xCu);
    sub_100007840(v15, &unk_100AD9480);
  }

  return v9;
}

uint64_t sub_10068EFC8()
{
  v1 = OBJC_IVAR____TtC5Books42WindowAppIntentsAssetViewControllerTracker__viewController;
  v2 = sub_1001F1160(&qword_100AE8320);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10068F0A8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  *a1 = v3;
  return result;
}

uint64_t sub_10068F128(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  return sub_10079B9B4();
}

uint64_t sub_10068F204(uint64_t a1)
{
  v2 = _swiftEmptyDictionarySingleton;
  v42 = _swiftEmptyDictionarySingleton;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = *(*(a1 + 48) + 8 * v12);
    sub_100007484(*(a1 + 56) + 32 * v12, v40 + 8);
    *&v40[0] = v13;
    v37 = v40[0];
    v38 = v40[1];
    v39 = v41;
    sub_100007484(&v37 + 8, v35);
    v14 = v13;
    if (swift_dynamicCast())
    {
      if (!*(&v30 + 1))
      {
        goto LABEL_17;
      }

      v32 = v29;
      v33 = v30;
      v34 = v31;
      v36 = v39;
      v35[0] = v37;
      v35[1] = v38;
      v15 = v2[2];
      if (v2[3] <= v15)
      {
        sub_1003D823C(v15 + 1, 1);
      }

      v2 = v42;
      v28 = *&v35[0];
      sub_1007A2254();
      sub_1007A3C04();
      _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      v16 = sub_1007A3C44();

      v17 = v2 + 8;
      v18 = -1 << *(v2 + 32);
      v19 = v16 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~v2[(v19 >> 6) + 8]) == 0)
      {
        v22 = 0;
        v23 = (63 - v18) >> 6;
        while (++v20 != v23 || (v22 & 1) == 0)
        {
          v24 = v20 == v23;
          if (v20 == v23)
          {
            v20 = 0;
          }

          v22 |= v24;
          v25 = v17[v20];
          if (v25 != -1)
          {
            v21 = __clz(__rbit64(~v25)) + (v20 << 6);
            goto LABEL_26;
          }
        }

        goto LABEL_29;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~v2[(v19 >> 6) + 8])) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
      *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(v2[6] + 8 * v21) = v28;
      v26 = v2[7] + 40 * v21;
      v27 = v33;
      *v26 = v32;
      *(v26 + 16) = v27;
      *(v26 + 32) = v34;
      ++v2[2];
      result = sub_1000074E0(v35 + 8);
    }

    else
    {
      v31 = 0;
      v29 = 0u;
      v30 = 0u;
LABEL_17:
      sub_100007840(&v37, &qword_100AF1C70);
      result = sub_100007840(&v29, &unk_100AEEF50);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void sub_10068F51C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC5Books23BooksFinishedDataSource_onChange];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC5Books23BooksFinishedDataSource_monitor] = 0;
  v5 = [a1 readOnlyChildContext];
  *&v1[OBJC_IVAR____TtC5Books23BooksFinishedDataSource_moc] = v5;
  v6 = [a1 sortDescriptorsForMode:6 collectionID:kBKCollectionDefaultIDFinished];
  sub_10000A7C4(0, &unk_100AE9A50);
  v7 = sub_1007A25E4();

  *&v1[OBJC_IVAR____TtC5Books23BooksFinishedDataSource_sortDescriptors] = v7;
  v27.receiver = v1;
  v27.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v27, "init");
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 predicateFor_All_Marked_As_Finished_LibraryAssets];
  v12 = [a1 persistentStoreCoordinator];
  if (v12)
  {
    v13 = v12;
    sub_1001F1160(&unk_100AD8160);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100811370;
    *(inited + 32) = swift_getKeyPath();
    *(inited + 40) = swift_getKeyPath();
    *(inited + 48) = swift_getKeyPath();
    v15 = sub_10040E230(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v16 = v10;
    v17 = sub_100408CFC(v15);
    sub_10040E374(v17);

    v18 = objc_allocWithZone(BCManagedObjectIDMonitor);
    v26 = sub_10000A7C4(0, &qword_100ADA990);
    v19 = v13;
    sub_1001F1160(&qword_100AE2370);
    sub_1007A22E4();
    v20 = sub_1007A2214();

    v21 = v11;
    v22 = sub_1007A2214();
    isa = sub_1007A2824().super.isa;
    v24 = [v18 initWithContext:0 coordinator:v19 entityName:v20 predicate:v21 mapProperty:v22 propertiesOfInterest:isa observer:{v16, v26}];

    if (v24)
    {

      v25 = *&v16[OBJC_IVAR____TtC5Books23BooksFinishedDataSource_monitor];
      *&v16[OBJC_IVAR____TtC5Books23BooksFinishedDataSource_monitor] = v24;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t BooksFinishedDataSource.fetchFinishedAssets(year:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v14 - v8;
  v10 = sub_1007A2744();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = v3;
  v11[7] = a1;

  v12 = v3;
  sub_1003457A0(0, 0, v9, &unk_10083CC50, v11);
}

uint64_t sub_10068F98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a4;
  v7[7] = a5;
  v9 = swift_task_alloc();
  v7[8] = v9;
  *v9 = v7;
  v9[1] = sub_10068FA48;

  return sub_100690868(a7, 0, sub_10068FE20, 0);
}

uint64_t sub_10068FA48(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_10068FBF0;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_10068FB70;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10068FB70()
{
  (*(v0 + 48))(*(v0 + 80), 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10068FBF0()
{
  v1 = *(v0 + 72);
  sub_1007A29B4();
  sub_10000A7C4(0, &qword_100AD20A0);
  v2 = sub_1007A33C4();
  sub_1001F1160(&unk_100AD5090);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10080B690;
  swift_getErrorValue();
  v4 = sub_1007A3B84();
  v6 = v5;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_10000E4C4();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  sub_10079AB44();

  (*(v0 + 48))(0, v1);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10068FD4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100009A34;

  return sub_10068F98C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10068FE20@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = [objc_allocWithZone(BSUIAsset) initWithLibraryAsset:a1];
  v3 = [v2 toDictionary];

  type metadata accessor for BSUIAssetKey(0);
  sub_1006929F4(&qword_100AD3FB8, type metadata accessor for BSUIAssetKey);
  v4 = sub_1007A2044();

  v5 = sub_10068F204(v4);

  v6 = *(v5 + 16);
  if (v6)
  {
    v50 = _swiftEmptyArrayStorage;
    sub_1003BD99C(0, v6, 0);
    v7 = _swiftEmptyArrayStorage;
    v8 = v5 + 64;
    v9 = sub_1007A35A4();
    v10 = 0;
    v37 = *(v5 + 36);
    v35 = v6;
    do
    {
      if (v9 < 0 || v9 >= 1 << *(v5 + 32))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v12 = v9 >> 6;
      if ((*(v8 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_26;
      }

      if (v37 != *(v5 + 36))
      {
        goto LABEL_27;
      }

      v13 = *(*(v5 + 48) + 8 * v9);
      sub_100028940(*(v5 + 56) + 40 * v9, v45);
      v40 = v13;
      v41 = v45[0];
      v42 = v45[1];
      v43 = v46;
      sub_1000077D8(&v40, &v38, &unk_100AF1C50);
      v14 = v38;
      v15 = sub_1007A2254();
      v36 = v16;
      v17 = v13;

      v47 = v41;
      v48 = v42;
      v49 = v43;

      sub_10002899C(&v39);
      v50 = v7;
      v19 = v7[2];
      v18 = v7[3];
      v20 = v7;
      if (v19 >= v18 >> 1)
      {
        sub_1003BD99C((v18 > 1), v19 + 1, 1);
        v20 = v50;
      }

      v20[2] = v19 + 1;
      v21 = &v20[7 * v19];
      v21[4] = v15;
      v21[5] = v36;
      v22 = v47;
      v23 = v48;
      v21[10] = v49;
      *(v21 + 3) = v22;
      *(v21 + 4) = v23;
      v11 = 1 << *(v5 + 32);
      if (v9 >= v11)
      {
        goto LABEL_28;
      }

      v8 = v5 + 64;
      v24 = *(v5 + 64 + 8 * v12);
      if ((v24 & (1 << v9)) == 0)
      {
        goto LABEL_29;
      }

      v7 = v20;
      if (v37 != *(v5 + 36))
      {
        goto LABEL_30;
      }

      v25 = v24 & (-2 << (v9 & 0x3F));
      if (v25)
      {
        v11 = __clz(__rbit64(v25)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = v12 << 6;
        v27 = v12 + 1;
        v28 = (v5 + 72 + 8 * v12);
        while (v27 < (v11 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            sub_100343CEC(v9, v37, 0);
            v11 = __clz(__rbit64(v29)) + v26;
            goto LABEL_4;
          }
        }

        sub_100343CEC(v9, v37, 0);
      }

LABEL_4:
      ++v10;
      v9 = v11;
    }

    while (v10 != v35);

    if (!v7[2])
    {
      goto LABEL_23;
    }
  }

  else
  {

    if (!_swiftEmptyArrayStorage[2])
    {
LABEL_23:
      v31 = _swiftEmptyDictionarySingleton;
      goto LABEL_24;
    }
  }

  sub_1001F1160(&unk_100ADAE50);
  v31 = sub_1007A3924();
LABEL_24:
  v44 = v31;

  sub_100692408(v32, 1, &v44);

  *a2 = v44;
  return result;
}

uint64_t sub_100690268(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = v4;
  *(v5 + 128) = a2;
  *(v5 + 32) = a1;
  *(v5 + 40) = a3;
  v6 = sub_1007A2F14();
  *(v5 + 64) = v6;
  *(v5 + 72) = *(v6 - 8);
  *(v5 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_100690330, 0, 0);
}

uint64_t sub_100690330()
{
  v1 = *(v0 + 128);
  v2 = [objc_opt_self() predicateFor_All_Marked_As_Finished_LibraryAssets_In_Year:*(v0 + 32)];
  *(v0 + 88) = v2;
  *(v0 + 16) = sub_10000A7C4(0, &qword_100ADA990);
  sub_1001F1160(&qword_100AE2370);
  sub_1007A22E4();
  v3 = objc_allocWithZone(NSFetchRequest);
  v4 = sub_1007A2214();

  v5 = [v3 initWithEntityName:v4];
  *(v0 + 96) = v5;

  [v5 setPredicate:v2];
  sub_10000A7C4(0, &unk_100AE9A50);
  isa = sub_1007A25D4().super.isa;
  [v5 setSortDescriptors:isa];

  if (v1 == 1)
  {
    v7 = sub_1007A25D4().super.isa;
    [v5 setRelationshipKeyPathsForPrefetching:v7];
  }

  v9 = *(v0 + 72);
  v8 = *(v0 + 80);
  v10 = *(v0 + 64);
  v12 = *(v0 + 40);
  v11 = *(v0 + 48);
  v13 = swift_allocObject();
  *(v0 + 104) = v13;
  v13[2] = v5;
  v13[3] = v12;
  v13[4] = v11;
  (*(v9 + 104))(v8, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v10);
  v14 = v5;

  v15 = swift_task_alloc();
  *(v0 + 112) = v15;
  v16 = sub_1001F1160(&unk_100AF1B60);
  *v15 = v0;
  v15[1] = sub_1006905E4;
  v17 = *(v0 + 80);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 24, v17, sub_100692920, v13, v16);
}

uint64_t sub_1006905E4()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  *(*v1 + 120) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1006907F4;
  }

  else
  {
    v5 = sub_100690778;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100690778()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 24);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1006907F4()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100690868(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = v4;
  *(v5 + 128) = a2;
  *(v5 + 32) = a1;
  *(v5 + 40) = a3;
  v6 = sub_1007A2F14();
  *(v5 + 64) = v6;
  *(v5 + 72) = *(v6 - 8);
  *(v5 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_100690930, 0, 0);
}

uint64_t sub_100690930()
{
  v1 = *(v0 + 128);
  v2 = [objc_opt_self() predicateFor_All_Marked_As_Finished_LibraryAssets_In_Year:*(v0 + 32)];
  *(v0 + 88) = v2;
  *(v0 + 16) = sub_10000A7C4(0, &qword_100ADA990);
  sub_1001F1160(&qword_100AE2370);
  sub_1007A22E4();
  v3 = objc_allocWithZone(NSFetchRequest);
  v4 = sub_1007A2214();

  v5 = [v3 initWithEntityName:v4];
  *(v0 + 96) = v5;

  [v5 setPredicate:v2];
  sub_10000A7C4(0, &unk_100AE9A50);
  isa = sub_1007A25D4().super.isa;
  [v5 setSortDescriptors:isa];

  if (v1 == 1)
  {
    v7 = sub_1007A25D4().super.isa;
    [v5 setRelationshipKeyPathsForPrefetching:v7];
  }

  v9 = *(v0 + 72);
  v8 = *(v0 + 80);
  v10 = *(v0 + 64);
  v12 = *(v0 + 40);
  v11 = *(v0 + 48);
  v13 = swift_allocObject();
  *(v0 + 104) = v13;
  v13[2] = v5;
  v13[3] = v12;
  v13[4] = v11;
  (*(v9 + 104))(v8, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v10);
  v14 = v5;

  v15 = swift_task_alloc();
  *(v0 + 112) = v15;
  v16 = sub_1001F1160(&qword_100AEF370);
  *v15 = v0;
  v15[1] = sub_100690BE4;
  v17 = *(v0 + 80);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 24, v17, sub_10069298C, v13, v16);
}

uint64_t sub_100690BE4()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  *(*v1 + 120) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_100692A50;
  }

  else
  {
    v5 = sub_100692A44;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t BooksFinishedDataSource.fetchFinishedAssets(in:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v1;
  v3[1] = sub_100690E28;

  return sub_100690268(a1, 1, sub_10069117C, 0);
}

uint64_t sub_100690E28(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_100691034;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_100690F50;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100690F50()
{
  v0[6] = v0[9];
  sub_1001F1160(&unk_100AF1B60);
  sub_1001F1160(&qword_100AEF3D0);
  sub_100609AA4(&qword_100AF1B70, &unk_100AF1B60);
  v1 = sub_1007A24D4();

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_100691034()
{
  sub_1007A29B4();
  sub_10000A7C4(0, &qword_100AD20A0);
  v1 = sub_1007A33C4();
  sub_1001F1160(&unk_100AD5090);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10080B690;
  swift_getErrorValue();
  v3 = sub_1007A3B84();
  v5 = v4;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 64) = sub_10000E4C4();
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  sub_10079AB44();

  swift_willThrow();
  v6 = *(v0 + 8);

  return v6();
}

double sub_10069117C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1007974F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001F1160(&unk_100AF1C20);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10080EFF0;
  sub_1007974B4();
  sub_1007974C4();
  v8 = v6;
  sub_1006929F4(&qword_100ADA290, &type metadata accessor for ContentInfoBuildOptions);
  sub_1001F1160(&unk_100AF1C30);
  sub_100609AA4(&qword_100ADA298, &unk_100AF1C30);
  sub_1007A3594();
  BKLibraryAsset.contentInfo(options:)(v5, v9);
  (*(v3 + 8))(v5, v2);
  if (!v9[3])
  {
    sub_100007840(v9, &unk_100AF1C40);
    goto LABEL_5;
  }

  sub_1001F1160(&qword_100ADA250);
  sub_1001F1160(&qword_100AEF3D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void BooksFinishedDataSource.fetchFinishedAssetCount(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [objc_opt_self() predicateFor_All_Finished_LibraryAssets];
  v15[0] = sub_10000A7C4(0, &qword_100ADA990);
  sub_1001F1160(&qword_100AE2370);
  sub_1007A22E4();
  v7 = objc_allocWithZone(NSFetchRequest);
  v8 = sub_1007A2214();

  v9 = [v7 initWithEntityName:{v8, v15[0]}];

  [v9 setPredicate:v6];
  v10 = *(v3 + OBJC_IVAR____TtC5Books23BooksFinishedDataSource_moc);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = v9;
  v15[4] = sub_1006915D4;
  v15[5] = v12;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_1003323D0;
  v15[3] = &unk_100A2B4D8;
  v13 = _Block_copy(v15);

  v14 = v9;

  [v10 performBlock:v13];
  _Block_release(v13);
}

void sub_100691638(uint64_t a1, void (*a2)(uint64_t, void, void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC5Books23BooksFinishedDataSource_moc);
    sub_10000A7C4(0, &qword_100ADA990);
    v6 = v5;
    v7 = sub_1007A2F24();

    a2(v7, 0, 0);
  }
}

void sub_100691878(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v11 = [objc_opt_self() *a4];
  aBlock[0] = sub_10000A7C4(0, &qword_100ADA990);
  sub_1001F1160(&qword_100AE2370);
  sub_1007A22E4();
  v12 = objc_allocWithZone(NSFetchRequest);
  v13 = sub_1007A2214();

  v14 = [v12 initWithEntityName:v13];

  [v14 setPredicate:v11];
  v15 = *(v8 + OBJC_IVAR____TtC5Books23BooksFinishedDataSource_moc);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = v14;
  aBlock[4] = a6;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = a7;
  v18 = _Block_copy(aBlock);

  v19 = v14;

  [v15 performBlock:v18];
  _Block_release(v18);
}

uint64_t sub_100691A74()
{

  return swift_deallocObject();
}

uint64_t BooksFinishedDataSource.setOnChange(_:)(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC5Books23BooksFinishedDataSource_onChange);
  v4 = *(v2 + OBJC_IVAR____TtC5Books23BooksFinishedDataSource_onChange);
  *v3 = a1;
  v3[1] = a2;
  sub_100007020(v4);
}

void *sub_100691B38(void *a1, void (*a2)(_OWORD *__return_ptr))
{
  *&v20[0] = 0;
  v4 = [a1 execute:v20];
  v5 = *&v20[0];
  if (v4)
  {
    v6 = v4;
    sub_10000A7C4(0, &qword_100ADA990);
    v7 = sub_1007A25E4();
    v8 = v5;

    if (v7 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1007A38D4())
    {
      sub_1003BD91C(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
      }

      v10 = 0;
      v2 = _swiftEmptyArrayStorage;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v11 = sub_1007A3784();
          goto LABEL_11;
        }

        if ((v10 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v11 = *(v7 + 8 * v10 + 32);
LABEL_11:
        v12 = v11;
        a2(v20);

        v14 = _swiftEmptyArrayStorage[2];
        v13 = _swiftEmptyArrayStorage[3];
        if (v14 >= v13 >> 1)
        {
          sub_1003BD91C((v13 > 1), v14 + 1, 1);
        }

        ++v10;
        _swiftEmptyArrayStorage[2] = v14 + 1;
        v15 = &_swiftEmptyArrayStorage[5 * v14];
        v16 = v20[0];
        v17 = v20[1];
        v15[8] = v21;
        *(v15 + 2) = v16;
        *(v15 + 3) = v17;
        if (i == v10)
        {

          return v2;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

    return _swiftEmptyArrayStorage;
  }

  else
  {
    v18 = *&v20[0];
    sub_1007967D4();

    swift_willThrow();
  }

  return v2;
}

void *sub_100691D78(void *a1, void (*a2)(uint64_t *__return_ptr))
{
  v19 = 0;
  v3 = [a1 execute:&v19];
  v4 = v19;
  if (v3)
  {
    v5 = v3;
    sub_10000A7C4(0, &qword_100ADA990);
    v6 = sub_1007A25E4();
    v7 = v4;

    if (v6 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1007A38D4())
    {
      v19 = _swiftEmptyArrayStorage;
      sub_1003BD95C(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
      }

      v9 = 0;
      v2 = v19;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v10 = sub_1007A3784();
          goto LABEL_11;
        }

        if ((v9 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(v6 + 8 * v9 + 32);
LABEL_11:
        v11 = v10;
        a2(&v18);

        v12 = v18;
        v19 = v2;
        v14 = v2[2];
        v13 = v2[3];
        if (v14 >= v13 >> 1)
        {
          sub_1003BD95C((v13 > 1), v14 + 1, 1);
          v2 = v19;
        }

        ++v9;
        v2[2] = v14 + 1;
        v2[v14 + 4] = v12;
        if (i == v9)
        {

          return v2;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

    return _swiftEmptyArrayStorage;
  }

  else
  {
    v15 = v19;
    sub_1007967D4();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_100692078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = *v3;
  v11 = sub_1007A2744();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = v10;
  v12[7] = a1;

  v13 = v10;
  sub_1003457A0(0, 0, v9, &unk_10083CDA0, v12);
}

uint64_t sub_1006921A0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1002104D8;

  return BooksFinishedDataSource.fetchFinishedAssets(in:)(a1);
}

uint64_t sub_1006922A4(uint64_t a1, uint64_t a2)
{
  v3 = (*v2 + OBJC_IVAR____TtC5Books23BooksFinishedDataSource_onChange);
  v4 = *v3;
  *v3 = a1;
  v3[1] = a2;
  sub_100007020(v4);
}

void BooksFinishedDataSource.managedObjectBackgroundMonitor(_:didSaveNotify:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Books23BooksFinishedDataSource_onChange);
  if (v1)
  {

    v1(v2);

    sub_100007020(v1);
  }
}

uint64_t sub_100692408(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
  }

  sub_1000077D8(a1 + 32, &v52, &unk_100AF1C60);
  v8 = v52;
  v7 = v53;
  v50 = v52;
  v51 = v53;
  v47 = v54;
  v48 = v55;
  v49 = v56;
  v9 = *a3;
  v10 = sub_10000E53C(v52, v53);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1003D7F6C(v15, a2 & 1);
    v10 = sub_10000E53C(v8, v7);
    if ((v16 & 1) != (v17 & 1))
    {
LABEL_5:
      sub_1007A3B24();
      __break(1u);
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v20 = v10;
  sub_1002F3360();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();
    v57 = v18;
    swift_errorRetain();
    sub_1001F1160(&unk_100AD67F0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_10002899C(&v47);
    }

    goto LABEL_26;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v7;
  v23 = v21[7] + 40 * v10;
  v24 = v47;
  v25 = v48;
  *(v23 + 32) = v49;
  *v23 = v24;
  *(v23 + 16) = v25;
  v26 = v21[2];
  v14 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (!v14)
  {
    v21[2] = v27;
    if (v4 == 1)
    {
    }

    v28 = a1 + 88;
    v29 = 1;
    while (v29 < *(a1 + 16))
    {
      sub_1000077D8(v28, &v52, &unk_100AF1C60);
      v31 = v52;
      v30 = v53;
      v50 = v52;
      v51 = v53;
      v47 = v54;
      v48 = v55;
      v49 = v56;
      v32 = *a3;
      v33 = sub_10000E53C(v52, v53);
      v35 = v32[2];
      v36 = (v34 & 1) == 0;
      v14 = __OFADD__(v35, v36);
      v37 = v35 + v36;
      if (v14)
      {
        goto LABEL_23;
      }

      v38 = v34;
      if (v32[3] < v37)
      {
        sub_1003D7F6C(v37, 1);
        v33 = sub_10000E53C(v31, v30);
        if ((v38 & 1) != (v39 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v38)
      {
        goto LABEL_9;
      }

      v40 = *a3;
      *(*a3 + 8 * (v33 >> 6) + 64) |= 1 << v33;
      v41 = (v40[6] + 16 * v33);
      *v41 = v31;
      v41[1] = v30;
      v42 = v40[7] + 40 * v33;
      v43 = v47;
      v44 = v48;
      *(v42 + 32) = v49;
      *v42 = v43;
      *(v42 + 16) = v44;
      v45 = v40[2];
      v14 = __OFADD__(v45, 1);
      v46 = v45 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v29;
      v40[2] = v46;
      v28 += 56;
      if (v4 == v29)
      {
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_1007A3744(30);
  v58._object = 0x80000001008D1C40;
  v58._countAndFlagsBits = 0xD00000000000001BLL;
  sub_1007A23D4(v58);
  sub_1007A3894();
  v59._countAndFlagsBits = 39;
  v59._object = 0xE100000000000000;
  sub_1007A23D4(v59);
  result = sub_1007A38A4();
  __break(1u);
  return result;
}

uint64_t sub_100692804()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10069284C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002812C;

  return sub_10068F98C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10069294C()
{

  return swift_deallocObject();
}

uint64_t sub_1006929B8@<X0>(uint64_t (*a1)(void, void, void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1(v2[2], v2[3], v2[4]);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1006929F4(unint64_t *a1, void (*a2)(uint64_t))
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

id static OS_os_log.toc.getter()
{
  if (qword_100AD1AC8 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF1C78;

  return v1;
}

uint64_t sub_100692AB0()
{
  sub_10001389C();
  result = sub_1007A33B4();
  qword_100AF1C78 = result;
  return result;
}

uint64_t type metadata accessor for DislikeActionItem()
{
  result = qword_100AF1CD8;
  if (!qword_100AF1CD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100692B7C()
{
  sub_1001FEBC8(319, &unk_100AE9C00);
  if (v0 <= 0x3F)
  {
    sub_1001FEBC8(319, &qword_100AD4AF0);
    if (v1 <= 0x3F)
    {
      sub_1001FEB70();
      if (v2 <= 0x3F)
      {
        sub_1001FEBC8(319, &qword_100AE9C10);
        if (v3 <= 0x3F)
        {
          sub_1001FEBC8(319, &unk_100AE6678);
          if (v4 <= 0x3F)
          {
            sub_100797144();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

id sub_100692CA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_100009864(a1, v19);
  sub_100009864(a2, v18);
  sub_100009864(a4, v17);
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    sub_1004B2000();
    sub_10079AE34();
    sub_10079AE04();
    v15 = sub_100797524();
    v16 = &protocol witness table for MenuLikeStateController;
    sub_1002256EC(&v14);
    sub_100797514();
    sub_1000074E0(a4);
    sub_1000074E0(a2);
    sub_1000074E0(a1);
    v11 = *(type metadata accessor for DislikeActionItem() + 36);
    v12 = enum case for ContextActionType.dislike(_:);
    v13 = sub_100797144();
    (*(*(v13 - 8) + 104))(a5 + v11, v12, v13);
    sub_1000077C0(v19, a5);
    sub_1000077C0(v18, a5 + 40);
    *(a5 + 80) = a3;
    sub_1000077C0(v17, a5 + 88);
    return sub_1000077C0(&v14, a5 + 128);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100692E40()
{
  v1 = v0;
  sub_10000E3E8(v0, v0[3]);
  if (sub_1007976D4())
  {
    goto LABEL_12;
  }

  sub_10000E3E8(v0, v0[3]);
  sub_1007977A4();
  if (v10 == 1)
  {
    sub_1001FF70C(v9);
LABEL_12:
    v7 = 0;
    return v7 & 1;
  }

  sub_1000077C0(v9, v11);
  sub_10000E3E8(v11, v12);
  sub_1007976B4();
  if (sub_1007972D4())
  {
    goto LABEL_11;
  }

  sub_10000E3E8(v11, v12);
  sub_1007976B4();
  if (sub_1007972D4())
  {
    goto LABEL_11;
  }

  sub_10000E3E8(v11, v12);
  v2 = sub_1007976A4();
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = v2;
  v5 = v3;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
LABEL_11:
    sub_1000074E0(v11);
    goto LABEL_12;
  }

  sub_10000E3E8(v1, v1[3]);
  v7 = sub_100797794();
  sub_1000074E0(v11);
  return v7 & 1;
}

uint64_t sub_100692FBC()
{
  v1[17] = v0;
  v2 = sub_10079ACE4();
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();
  v3 = sub_1007971A4();
  v1[21] = v3;
  v1[22] = *(v3 - 8);
  v1[23] = swift_task_alloc();
  sub_1007A26F4();
  v1[24] = sub_1007A26E4();
  v5 = sub_1007A2694();
  v1[25] = v5;
  v1[26] = v4;

  return _swift_task_switch(sub_10069310C, v5, v4);
}

uint64_t sub_10069310C()
{
  sub_10000E3E8(*(v0 + 136), *(*(v0 + 136) + 24));
  sub_1007977A4();
  if (*(v0 + 56))
  {

    sub_1001FF70C(v0 + 16);

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 136);
    sub_1000077C0((v0 + 16), v0 + 64);
    v4 = v3[19];
    v5 = v3[20];
    sub_10000E3E8(v3 + 16, v4);
    v6 = v3[10];
    v7 = swift_task_alloc();
    *(v0 + 216) = v7;
    *v7 = v0;
    v7[1] = sub_10069327C;
    v8 = *(v0 + 136);

    return dispatch thunk of LikeStateController.authAndsubmitLikeState(liked:context:data:assetInfo:tracker:)(0, v3 + 5, v8, v0 + 64, v6, v4, v5);
  }
}

uint64_t sub_10069327C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v5 = v4[25];
    v6 = v4[26];
    v7 = sub_100693678;
  }

  else
  {
    v4[29] = a1;
    v5 = v4[25];
    v6 = v4[26];
    v7 = sub_1006933A4;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1006933A4()
{
  v1 = *(v0 + 232);

  if (v1)
  {
    v3 = *(v0 + 176);
    v2 = *(v0 + 184);
    v4 = *(v0 + 168);
    sub_10000E3E8(*(v0 + 136), *(*(v0 + 136) + 24));
    sub_100797784();
    v5 = (*(v3 + 88))(v2, v4);
    v6 = *(v0 + 176);
    v7 = *(v0 + 184);
    v8 = *(v0 + 168);
    if (v5 == enum case for ContextActionSource.library(_:))
    {
      (*(v6 + 96))(*(v0 + 184), v8);
      v10 = *v7;
      v9 = v7[1];
      sub_1000074E0((v7 + 2));
      if (v10 == sub_1007A2254() && v9 == v11)
      {

LABEL_12:
        v17 = [objc_opt_self() defaultManager];
        sub_10000E3E8((v0 + 64), *(v0 + 88));
        sub_100797674();
        v18 = sub_1007A2214();

        v16.super.isa = [v17 libraryAssetOnMainQueueWithAssetID:v18];

        if (!v16.super.isa)
        {
          goto LABEL_15;
        }

        v19 = *(v0 + 136);
        v20 = sub_10069386C(v16.super.isa);
        sub_10000E3E8((v19 + 40), *(v19 + 64));
        sub_100796EC4();

        goto LABEL_14;
      }

      v13 = sub_1007A3AB4();

      if (v13)
      {
        goto LABEL_12;
      }
    }

    else
    {
      (*(v6 + 8))(*(v0 + 184), v8);
    }

    v14 = *(v0 + 136);
    v15 = objc_opt_self();
    sub_10000E3E8((v14 + 40), *(v14 + 64));
    sub_100796EF4();
    v16.super.isa = sub_1007A2024().super.isa;

    [v15 presentNoticeForBookLoved:0 options:v16.super.isa];
LABEL_14:
  }

LABEL_15:
  sub_1000074E0(v0 + 64);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100693678()
{
  v17 = v0;

  sub_10079AC44();
  swift_errorRetain();
  v1 = sub_10079ACC4();
  v2 = sub_1007A29B4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[19];
    v15 = v0[20];
    v4 = v0[18];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_1007A3B84();
    v9 = sub_1000070F4(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error while submitting like dislike preference with error: %s", v5, 0xCu);
    sub_1000074E0(v6);

    (*(v3 + 8))(v15, v4);
  }

  else
  {
    v11 = v0[19];
    v10 = v0[20];
    v12 = v0[18];

    (*(v11 + 8))(v10, v12);
  }

  sub_1000074E0((v0 + 8));

  v13 = v0[1];

  return v13();
}

id sub_10069386C(void *a1)
{
  v56 = a1;
  v1 = type metadata accessor for DislikeActionItem();
  v54 = *(v1 - 8);
  v53 = *(v54 + 64);
  __chkstk_darwin(v1 - 8);
  v52 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100796CF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v47 - v8;
  v10 = sub_1007A21D4();
  v48 = v10;
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v47 - v15;
  sub_1007A2154();
  sub_100796C94();
  v17 = *(v11 + 16);
  v68 = v11 + 16;
  v65 = v17;
  v17(v13, v16, v10);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v64 = ObjCClassFromMetadata;
  v63 = objc_opt_self();
  v19 = [v63 bundleForClass:ObjCClassFromMetadata];
  v66 = *(v4 + 16);
  v67 = v4 + 16;
  v57 = v6;
  v66(v6, v9, v3);
  v62 = sub_1007A22D4();
  v49 = v20;
  v21 = *(v4 + 8);
  v58 = v4 + 8;
  v22 = v3;
  v21(v9, v3);
  v61 = v21;
  v23 = *(v11 + 8);
  v24 = v48;
  v23(v16, v48);
  v59 = v23;
  v60 = v11 + 8;
  sub_1007A2154();
  sub_100796C94();
  v50 = v13;
  v65(v13, v16, v24);
  v25 = [v63 bundleForClass:v64];
  v51 = v22;
  v66(v57, v9, v22);
  sub_1007A22D4();
  v21(v9, v22);
  v23(v16, v24);
  v26 = sub_1007A2214();

  v27 = sub_1007A2214();

  v62 = [objc_opt_self() alertControllerWithTitle:v26 message:v27 preferredStyle:1];

  sub_1007A2154();
  sub_100796C94();
  v28 = v50;
  v29 = v24;
  v65(v50, v16, v24);
  v30 = [v63 bundleForClass:v64];
  v31 = v57;
  v32 = v51;
  v66(v57, v9, v51);
  sub_1007A22D4();
  v61(v9, v32);
  v59(v16, v29);
  v33 = sub_1007A2214();

  v34 = objc_opt_self();
  v35 = [v34 actionWithTitle:v33 style:1 handler:0];

  [v62 addAction:v35];
  sub_1007A2154();
  sub_100796C94();
  v65(v28, v16, v29);
  v36 = [v63 bundleForClass:v64];
  v66(v31, v9, v32);
  sub_1007A22D4();
  v61(v9, v32);
  v59(v16, v29);
  v37 = v52;
  sub_100694788(v55, v52);
  v38 = (*(v54 + 80) + 24) & ~*(v54 + 80);
  v39 = swift_allocObject();
  v40 = v56;
  *(v39 + 16) = v56;
  sub_1006947EC(v37, v39 + v38);
  v41 = v40;
  v42 = sub_1007A2214();

  aBlock[4] = sub_100694850;
  aBlock[5] = v39;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100201C54;
  aBlock[3] = &unk_100A2B640;
  v43 = _Block_copy(aBlock);

  v44 = [v34 actionWithTitle:v42 style:2 handler:v43];
  _Block_release(v43);

  v45 = v62;
  [v62 addAction:v44];

  return v45;
}

uint64_t sub_100694080()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002812C;

  return sub_100692FBC();
}

uint64_t sub_100694110(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for DislikeActionItem();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = sub_1007A2744();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_100694788(a3, v8);
  sub_1007A26F4();
  v13 = a2;
  v14 = sub_1007A26E4();
  v15 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v13;
  sub_1006947EC(v8, v16 + v15);
  sub_1003457A0(0, 0, v11, &unk_10083CEC0, v16);
}

uint64_t sub_1006942E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_1007A26F4();
  v5[5] = sub_1007A26E4();
  v7 = sub_1007A2694();
  v5[6] = v7;
  v5[7] = v6;

  return _swift_task_switch(sub_100694380, v7, v6);
}

uint64_t sub_100694380()
{
  v1 = v0[3];
  v2 = v0[2];
  sub_1001F1160(&unk_100AD8160);
  v3 = swift_allocObject();
  v0[8] = v3;
  *(v3 + 16) = xmmword_100811390;
  *(v3 + 32) = v2;
  v0[9] = *(v1 + 80);
  v4 = v2;
  v0[10] = sub_1007A26E4();
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_10069446C;

  return sub_1005EB650(v3);
}

uint64_t sub_10069446C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[12] = v3;
  *v3 = v2;
  v3[1] = sub_1006945C4;
  v4 = v1[9];
  v5 = v1[8];

  return sub_1005EFC90(v5, v4);
}

uint64_t sub_1006945C4()
{

  v1 = sub_1007A2694();

  return _swift_task_switch(sub_100694724, v1, v0);
}

uint64_t sub_100694724()
{

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return _swift_task_switch(sub_10022C3F4, v1, v2);
}

uint64_t sub_100694788(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DislikeActionItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006947EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DislikeActionItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100694850(uint64_t a1)
{
  v3 = *(type metadata accessor for DislikeActionItem() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100694110(a1, v4, v5);
}

uint64_t sub_1006948CC(uint64_t a1)
{
  v4 = *(type metadata accessor for DislikeActionItem() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002812C;

  return sub_1006942E4(a1, v6, v7, v8, v1 + v5);
}

id SeriesAssetHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SeriesAssetHelper();
  return objc_msgSendSuper2(&v2, "init");
}

id SeriesAssetHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SeriesAssetHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t _s5Books17SeriesAssetHelperC06mappedC11ContentType4fromSo07BKAssetfG0VSo8NSNumberC_tFZ_0(void *a1)
{
  v2 = sub_1001F1160(&qword_100AF1D48);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_1007A2924();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v18 - v11;
  [a1 shortValue];
  sub_1007A2914();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100694CFC(v4);
    return 0;
  }

  v14 = *(v6 + 32);
  v14(v12, v4, v5);
  v14(v8, v12, v5);
  v15 = (*(v6 + 88))(v8, v5);
  if (v15 == enum case for BKSeriesItem.ItemType.audiobooks(_:) || v15 == enum case for BKSeriesItem.ItemType.audiobookSeries(_:))
  {
    return 6;
  }

  if (v15 != enum case for BKSeriesItem.ItemType.books(_:) && v15 != enum case for BKSeriesItem.ItemType.bookSeries(_:))
  {
    (*(v6 + 8))(v8, v5);
    return 0;
  }

  return 1;
}

uint64_t sub_100694CFC(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AF1D48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ListenSampleActionItem()
{
  result = qword_100AF1DA8;
  if (!qword_100AF1DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100694DD8()
{
  sub_1001FEBC8(319, &unk_100AE9C00);
  if (v0 <= 0x3F)
  {
    sub_1001FEBC8(319, &qword_100AD4AF0);
    if (v1 <= 0x3F)
    {
      sub_1001FEB70();
      if (v2 <= 0x3F)
      {
        sub_1001FEBC8(319, &qword_100AE9C10);
        if (v3 <= 0x3F)
        {
          sub_100797144();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_100694EDC()
{
  v1 = v0;
  v2 = sub_1001F1160(&unk_100AD5AC0);
  __chkstk_darwin(v2 - 8);
  v4 = &v41 - v3;
  v5 = sub_1007971A4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v41 - v10;
  sub_10025FCD8(&v43);
  if (!v44)
  {
    sub_100007840(&v43, &qword_100AD4B40);
LABEL_22:
    v28 = 0;
    return v28 & 1;
  }

  sub_1001FF7C8(&v43, &v45);
  sub_10000E3E8(&v45, v46);
  sub_1007976B4();
  if (sub_1007972D4() & 1) == 0 || (*(v0 + *(type metadata accessor for ListenSampleActionItem() + 36)) & 1) == 0 && ((sub_10000E3E8(&v45, v46), v12 = *(sub_1007975C4() + 16), , v12 >= 2) && ((sub_10000E3E8(v1, v1[3]), sub_100797784(), v13 = *(v6 + 104), v13(v8, enum case for ContextActionSource.productPage(_:), v5), v14 = sub_100797184(), v15 = *(v6 + 8), v15(v8, v5), v15(v11, v5), (v14) || (v42 = v13, v16 = v1[3], v41 = v1[4], sub_10000E3E8(v1, v16), sub_100797784(), v42(v8, enum case for ContextActionSource.unifiedProductItem(_:), v5), v17 = sub_100797184(), v15(v8, v5), v15(v11, v5), (v17)) || (sub_10000E3E8(&v45, v46), (sub_100797564()) && (v18 = [objc_msgSend(objc_opt_self() "sharedInstance")], swift_unknownObjectRelease(), (v18 & 1) == 0)))
  {
LABEL_21:
    sub_1000074E0(&v45);
    goto LABEL_22;
  }

  v19 = [objc_opt_self() sharedInstance];
  v20 = [v19 currentAudiobook];
  if (v20)
  {
    v21 = [v20 assetID];
    swift_unknownObjectRelease();
    v22 = sub_1007A2254();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  sub_10000E3E8(&v45, v46);
  v25 = sub_100797674();
  if (v24)
  {
    if (v22 == v25 && v24 == v26)
    {

      goto LABEL_21;
    }

    v27 = sub_1007A3AB4();

    if (v27)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  sub_10000E3E8(v1, v1[3]);
  if (sub_1007976E4())
  {
    goto LABEL_20;
  }

  sub_10000E3E8(&v45, v46);
  v30 = sub_1002BF76C();
  if (v30 != 2 && (v30 & 1) != 0)
  {
    goto LABEL_20;
  }

  sub_10000E3E8(&v45, v46);
  if ((sub_1002C58D0() & 1) != 0 && ((sub_10000E3E8(&v45, v46), v31 = sub_100797694(), v31 == 2) || (v31 & 1) == 0))
  {
    sub_10000E3E8(&v45, v46);
    v32 = sub_100797684();
  }

  else
  {
    v32 = 0;
  }

  sub_10000E3E8(&v45, v46);
  sub_1007976A4();
  if (v33)
  {

    sub_10000E3E8(&v45, v46);
    v34 = sub_1002C56FC();
  }

  else
  {
    v34 = 1;
  }

  sub_10000E3E8(&v45, v46);
  v35 = sub_100797694();
  if (v35 != 2 && (v35 & 1) != 0 || (sub_10000E3E8(&v45, v46), v36 = sub_100797684(), v36 != 2) && (v36 & 1) != 0 || (sub_10000E3E8(&v45, v46), (sub_1007975A4() & 1) != 0))
  {
    v37 = 1;
  }

  else
  {
    sub_10000E3E8(&v45, v46);
    v37 = sub_100797584();
  }

  sub_10000E3E8(&v45, v46);
  sub_1007975E4();
  v38 = sub_1007969B4();
  v39 = (*(*(v38 - 8) + 48))(v4, 1, v38);
  sub_100007840(v4, &unk_100AD5AC0);
  if (v39 == 1)
  {
    if (v32)
    {
      goto LABEL_45;
    }

LABEL_20:

    goto LABEL_21;
  }

  if (!(v32 & 1 | (((v34 | v37) & 1) == 0)))
  {
    goto LABEL_20;
  }

LABEL_45:
  sub_10000E3E8(v1, v1[3]);
  if (sub_100797794())
  {
    sub_10000E3E8(v1, v1[3]);
    v40 = sub_1007976F4();
  }

  else
  {
    v40 = 0;
  }

  v28 = v32 | v40;
  sub_1000074E0(&v45);
  return v28 & 1;
}

uint64_t sub_100695600()
{
  sub_10025FCD8(&v3);
  if (v4)
  {
    sub_1001FF7C8(&v3, &v5);
    v0 = [objc_msgSend(objc_opt_self() "sharedInstance")];
    swift_unknownObjectRelease();
    if ((v0 & 1) != 0 || (sub_10000E3E8(&v5, v6), (sub_100797564() & 1) == 0))
    {
      sub_10000E3E8(&v5, v6);
      v1 = sub_100797584() & 1;
    }

    else
    {
      v1 = 1;
    }

    sub_1000074E0(&v5);
  }

  else
  {
    sub_100007840(&v3, &qword_100AD4B40);
    return 0;
  }

  return v1;
}

uint64_t sub_100695704()
{
  v36 = sub_1007971A4();
  v0 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v33 = &v32 - v3;
  v4 = sub_100796CF4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  sub_1007A2154();
  sub_100796C94();
  (*(v12 + 16))(v14, v17, v11);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v5 + 16))(v7, v10, v4);
  v20 = sub_1007A22D4();
  (*(v5 + 8))(v10, v4);
  v21 = v34;
  (*(v12 + 8))(v17, v11);
  sub_10000E3E8(v21, v21[3]);
  v22 = v33;
  sub_100797784();
  v24 = v35;
  v23 = v36;
  (*(v0 + 104))(v35, enum case for ContextActionSource.getSampleActionItem(_:), v36);
  LOBYTE(ObjCClassFromMetadata) = sub_100797184();
  v25 = *(v0 + 8);
  v25(v24, v23);
  v25(v22, v23);
  if (ObjCClassFromMetadata)
  {
    sub_10025FCD8(&v37);
    if (v38)
    {

      sub_1001FF7C8(&v37, &v40);
      sub_10000E3E8(v21, v21[3]);
      v26 = sub_100797774();
      v27 = v41;
      v28 = v42;
      v29 = sub_10000E3E8(&v40, v41);
      if (v26)
      {
        v38 = v27;
        v39 = v28;
        v30 = sub_1002256EC(&v37);
        (*(*(v27 - 8) + 16))(v30, v29, v27);
        v20 = sub_100797804();
        sub_1000074E0(&v37);
      }

      else
      {
        v20 = sub_100797574();
      }

      sub_1000074E0(&v40);
    }

    else
    {
      sub_100007840(&v37, &qword_100AD4B40);
    }
  }

  return v20;
}

uint64_t sub_100695BAC()
{
  v1 = sub_1007971A4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  sub_10000E3E8(v0, v0[3]);
  if (sub_100797774())
  {
    sub_10000E3E8(v0, v0[3]);
    sub_100797784();
    (*(v2 + 104))(v4, enum case for ContextActionSource.getSampleActionItem(_:), v1);
    v8 = sub_100797184();
    v9 = *(v2 + 8);
    v9(v4, v1);
    v9(v7, v1);
    if (v8)
    {
      sub_10025FCD8(&v16);
      if (v17)
      {
        sub_1001FF7C8(&v16, &v18);
        v15 = v19;
        v10 = v19;
        v11 = sub_10000E3E8(&v18, v19);
        v17 = v15;
        v12 = sub_1002256EC(&v16);
        (*(*(v10 - 8) + 16))(v12, v11, v10);
        v13 = sub_1007977E4();
        sub_1000074E0(&v16);
        sub_1000074E0(&v18);
        return v13;
      }

      sub_100007840(&v16, &qword_100AD4B40);
    }
  }

  return 0;
}

uint64_t sub_100695DFC()
{
  v1[36] = v0;
  v2 = sub_10079ACE4();
  v1[37] = v2;
  v1[38] = *(v2 - 8);
  v1[39] = swift_task_alloc();
  sub_1001F1160(&unk_100AD5AC0);
  v1[40] = swift_task_alloc();
  sub_1007A26F4();
  v1[41] = sub_1007A26E4();
  v4 = sub_1007A2694();
  v1[42] = v4;
  v1[43] = v3;

  return _swift_task_switch(sub_100695F28, v4, v3);
}

uint64_t sub_100695F28()
{
  sub_10025FCD8((v0 + 64));
  if (!*(v0 + 88))
  {

    sub_100007840(v0 + 64, &qword_100AD4B40);
LABEL_10:
    sub_10079AC44();
    v6 = sub_10079ACC4();
    v7 = sub_1007A29B4();
    v8 = os_log_type_enabled(v6, v7);
    v10 = *(v0 + 304);
    v9 = *(v0 + 312);
    v11 = *(v0 + 296);
    if (v8)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Action doesn't confirm to ContextMenuAssetPresenting", v12, 2u);
    }

    (*(v10 + 8))(v9, v11);
    goto LABEL_13;
  }

  v1 = *(v0 + 288);
  sub_1001FF7C8((v0 + 64), (v0 + 16));
  sub_100009864(v1 + 40, v0 + 240);
  sub_1001F1160(&qword_100AD5ED0);
  sub_1001F1160(&qword_100AD5ED8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 232) = 0;
    *(v0 + 216) = 0u;
    *(v0 + 200) = 0u;
    goto LABEL_9;
  }

  if (!*(v0 + 224))
  {
LABEL_9:

    sub_100007840(v0 + 200, qword_100AD5EE0);
    sub_1000074E0(v0 + 16);
    goto LABEL_10;
  }

  v2 = *(v0 + 288);
  sub_1000077C0((v0 + 200), v0 + 160);
  sub_10000E3E8(v2, v2[3]);
  if ((sub_100797794() & 1) == 0)
  {

    sub_10000E3E8((v0 + 160), *(v0 + 184));
    sub_1004C46BC();
LABEL_25:
    sub_1000074E0(v0 + 160);
    sub_1000074E0(v0 + 16);
LABEL_13:

    v13 = *(v0 + 8);

    return v13();
  }

  v3 = *(v0 + 320);
  sub_10000E3E8((v0 + 16), *(v0 + 40));
  sub_1007975E4();
  v4 = sub_1007969B4();
  if ((*(*(v4 - 8) + 48))(v3, 1, v4) == 1)
  {
    v5 = *(v0 + 320);

    sub_100007840(v5, &unk_100AD5AC0);
LABEL_24:
    sub_10000E3E8((v0 + 160), *(v0 + 184));
    sub_1004C67EC(1);
    goto LABEL_25;
  }

  sub_100007840(*(v0 + 320), &unk_100AD5AC0);
  sub_1002B0670(v0 + 16, v0 + 112);
  sub_1001F1160(qword_100AD4B50);
  type metadata accessor for ContextAssetInfo();
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_24;
  }

  v15 = *(v0 + 280);
  *(v0 + 352) = v15;
  v16 = sub_1002C3680();
  *(v0 + 360) = v16;
  if (!v16)
  {

    goto LABEL_24;
  }

  v17 = v16;
  sub_10000E3E8((v0 + 160), *(v0 + 184));
  v18 = swift_task_alloc();
  *(v0 + 368) = v18;
  *v18 = v0;
  v18[1] = sub_100696354;

  return sub_1004C36E0(v17);
}

uint64_t sub_100696354()
{
  v1 = *v0;

  v2 = *(v1 + 344);
  v3 = *(v1 + 336);

  return _swift_task_switch(sub_100696474, v3, v2);
}

uint64_t sub_100696474()
{
  v1 = v0[44];
  v2 = v0[45];

  sub_1000074E0((v0 + 20));
  sub_1000074E0((v0 + 2));

  v3 = v0[1];

  return v3();
}

uint64_t sub_100696510()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002812C;

  return sub_100695DFC();
}

uint64_t sub_10069659C@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(a5 + 32);
  v13 = enum case for ContextActionType.audioSample(_:);
  v14 = sub_100797144();
  (*(*(v14 - 8) + 104))(a6 + v12, v13, v14);
  sub_1000077C0(a1, a6);
  sub_1000077C0(a2, a6 + 40);
  *(a6 + 80) = a3;
  result = sub_1000077C0(a4, a6 + 88);
  *(a6 + *(a5 + 36)) = 0;
  return result;
}

uint64_t sub_100696664@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = *(a6 + 32);
  v15 = enum case for ContextActionType.audioSample(_:);
  v16 = sub_100797144();
  (*(*(v16 - 8) + 104))(a7 + v14, v15, v16);
  sub_1000077C0(a1, a7);
  sub_1000077C0(a2, a7 + 40);
  *(a7 + 80) = a3;
  result = sub_1000077C0(a4, a7 + 88);
  *(a7 + *(a6 + 36)) = a5;
  return result;
}

uint64_t sub_100696738()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AF1DF0);
  sub_100008B98(v0, qword_100AF1DF0);
  return sub_10079ACD4();
}

uint64_t sub_1006967B8(uint64_t a1, unint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = Strong;
  v6 = objc_allocWithZone(NSFetchRequest);
  v7 = sub_1007A2214();
  v8 = [v6 initWithEntityName:v7];

  v9 = objc_opt_self();
  v10 = sub_1007A2214();
  v11 = [v9 predicateForAnnotationWithUUID:v10];

  [v8 setPredicate:v11];
  sub_1001F1160(&unk_100AD8160);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100811390;
  v13 = objc_allocWithZone(NSSortDescriptor);
  v14 = sub_1007A2214();
  v15 = [v13 initWithKey:v14 ascending:1];

  *(v12 + 32) = v15;
  sub_10000A7C4(0, &unk_100AE9A50);
  isa = sub_1007A25D4().super.isa;

  [v8 setSortDescriptors:isa];

  result = [v5 uiManagedObjectContext];
  if (result)
  {
    v18 = result;
    sub_10000A7C4(0, &qword_100AECB40);
    v20 = sub_1007A2F34();

    v32 = v20;
    sub_1001F1160(&qword_100AF1ED0);
    sub_100698174();
    result = sub_1007A28A4();
    if ((result & 1) == 0)
    {
      v19 = 0;
      goto LABEL_11;
    }

    if ((v20 & 0xC000000000000001) != 0)
    {
      v21 = sub_1007A3784();
      goto LABEL_9;
    }

    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v21 = *(v20 + 32);
LABEL_9:
      v19 = v21;
LABEL_11:
      if (v20 >> 62)
      {
        v22 = sub_1007A38D4();
      }

      else
      {
        v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v22 >= 2)
      {
        if (qword_100AD1AD0 != -1)
        {
          swift_once();
        }

        v23 = sub_10079ACE4();
        sub_100008B98(v23, qword_100AF1DF0);

        v24 = sub_10079ACC4();
        v25 = sub_1007A29B4();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v32 = v27;
          *v26 = 136315138;
          *(v26 + 4) = sub_1000070F4(a1, a2, &v32);
          _os_log_impl(&_mh_execute_header, v24, v25, "More than one global annotation provided while fetching annotation:%s", v26, 0xCu);
          sub_1000074E0(v27);
        }
      }

      if (!v19)
      {
        if (qword_100AD1AD0 != -1)
        {
          swift_once();
        }

        v28 = sub_10079ACE4();
        sub_100008B98(v28, qword_100AF1DF0);
        v29 = sub_10079ACC4();
        v30 = sub_1007A29B4();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&_mh_execute_header, v29, v30, "Error: Unable to find selected annotation for highlight.  Unable to present color editor.", v31, 2u);
        }

        v19 = 0;
      }

      return v19;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100696E20(uint64_t a1, unint64_t a2)
{
  v5 = sub_1001F1160(&qword_100AD95B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  v8 = sub_1006967B8(a1, a2);
  if (v8)
  {
    v9 = v8;
    v10 = [objc_allocWithZone(AENoteFullscreenEditorController) init];
    [v10 setAnnotation:v9];
    [v10 setDelegate:v2];
    v11 = [v9 annotationNote];
    if (v11)
    {
      v12 = v11;
      v13 = sub_1007A2254();
      v15 = v14;

      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = v13 & 0xFFFFFFFFFFFFLL;
      }

      v17 = v16 == 0;
    }

    else
    {
      v17 = 1;
    }

    [v10 setEditsOnLaunch:v17];
    v22 = *(v2 + OBJC_IVAR____TtC5Books35BookReaderHighlightEditorController_noteEditor);
    *(v2 + OBJC_IVAR____TtC5Books35BookReaderHighlightEditorController_noteEditor) = v10;
    v23 = v10;

    v24 = OBJC_IVAR____TtC5Books35BookReaderHighlightEditorController_currentTheme;
    swift_beginAccess();
    sub_10069809C(v2 + v24, v7);
    sub_1006979AC(v7);

    sub_10069810C(v7);
  }

  else
  {
    if (qword_100AD1AD0 != -1)
    {
      swift_once();
    }

    v18 = sub_10079ACE4();
    sub_100008B98(v18, qword_100AF1DF0);
    v19 = sub_10079ACC4();
    v20 = sub_1007A29B4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Unable to present note editor - no annotation", v21, 2u);
    }

    return 0;
  }

  return v10;
}

uint64_t sub_100697090(uint64_t a1)
{
  v3 = sub_1001F1160(&qword_100AD95B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = sub_10079EF54();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC5Books35BookReaderHighlightEditorController_currentTheme;
  swift_beginAccess();
  sub_10069802C(v5, v1 + v8);
  result = swift_endAccess();
  v10 = *(v1 + OBJC_IVAR____TtC5Books35BookReaderHighlightEditorController_noteEditor);
  if (v10)
  {
    sub_10069809C(v1 + v8, v5);
    v11 = v10;
    sub_1006979AC(v5);

    return sub_10069810C(v5);
  }

  return result;
}

id sub_100697220()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BookReaderHighlightEditorController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BookReaderHighlightEditorController()
{
  result = qword_100AF1E50;
  if (!qword_100AF1E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100697318()
{
  sub_1006973C4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1006973C4()
{
  if (!qword_100AF1E60)
  {
    sub_10079EF54();
    v0 = sub_1007A3454();
    if (!v1)
    {
      atomic_store(v0, &qword_100AF1E60);
    }
  }
}

void sub_1006974B8(void *a1)
{
  if ([a1 annotation])
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (!v3)
    {
      goto LABEL_15;
    }

    v4 = v3;
    if (![v3 isInserted])
    {
      goto LABEL_8;
    }

    v5 = [v4 annotationNote];
    if (v5)
    {
      v6 = v5;
      v7 = sub_1007A2254();
      v9 = v8;

      v10 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v10 = v7 & 0xFFFFFFFFFFFFLL;
      }

      if (v10)
      {
LABEL_8:
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v12 = Strong;
          v13 = [Strong uiManagedObjectContext];

          if (v13)
          {
            v39 = 0;
            v14 = [v13 save:&v39];

            if (v14)
            {
              v15 = v39;
              goto LABEL_15;
            }

            v25 = v1;
            v26 = v39;
            sub_1007967D4();

            swift_willThrow();
            if (qword_100AD1AD0 != -1)
            {
              swift_once();
            }

            v27 = sub_10079ACE4();
            sub_100008B98(v27, qword_100AF1DF0);
            swift_errorRetain();
            swift_unknownObjectRetain();
            v28 = sub_10079ACC4();
            v29 = sub_1007A29B4();

            if (!os_log_type_enabled(v28, v29))
            {

              swift_unknownObjectRelease_n();
              v1 = v25;
              goto LABEL_16;
            }

            v30 = swift_slowAlloc();
            v39 = swift_slowAlloc();
            *v30 = 136315394;
            swift_errorRetain();
            sub_1001F1160(&unk_100AD67F0);
            v31 = sub_1007A22E4();
            v33 = sub_1000070F4(v31, v32, &v39);

            *(v30 + 4) = v33;
            *(v30 + 12) = 2080;
            v34 = [v4 annotationUuid];
            swift_unknownObjectRelease();
            if (v34)
            {
              v1 = v25;
              v35 = sub_1007A2254();
              v37 = v36;

              v38 = sub_1000070F4(v35, v37, &v39);

              *(v30 + 14) = v38;
              _os_log_impl(&_mh_execute_header, v28, v29, "Error: %s saving annotation:%s", v30, 0x16u);
              swift_arrayDestroy();

              swift_unknownObjectRelease();

              goto LABEL_16;
            }

LABEL_30:
            __break(1u);
            return;
          }

          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

LABEL_15:
        swift_unknownObjectRelease();
        goto LABEL_16;
      }
    }

    if (!swift_unknownObjectWeakLoadStrong())
    {
      goto LABEL_15;
    }

    v16 = v1;
    sub_1001F1160(&unk_100AE0B30);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_10080B690;
    v18 = [v4 annotationUuid];
    if (!v18)
    {
      goto LABEL_29;
    }

    v19 = v18;
    swift_getObjectType();
    v20 = sub_1007A2254();
    v22 = v21;

    *(v17 + 32) = v20;
    *(v17 + 40) = v22;
    sub_1007A08E4();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v1 = v16;
  }

LABEL_16:
  v23 = *(v1 + OBJC_IVAR____TtC5Books35BookReaderHighlightEditorController_noteEditor);
  if (v23)
  {
    v24 = v23 == a1;
  }

  else
  {
    v24 = 0;
  }

  if (v24)
  {
    *(v1 + OBJC_IVAR____TtC5Books35BookReaderHighlightEditorController_noteEditor) = 0;
  }
}

void sub_1006979AC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1001F1160(&qword_100AD95B0);
  __chkstk_darwin(v4 - 8);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v22 - v8;
  sub_10069809C(a1, v22 - v8);
  v10 = sub_10079EF54();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v9, 1, v10) == 1)
  {
    sub_10069810C(v9);
  }

  else
  {
    v13 = sub_10079ED34();
    v15 = v14;
    (*(v11 + 8))(v9, v10);
    v22[0] = v13;
    v22[1] = v15;
    sub_1002060B4();
    if (sub_1007A28A4())
    {
      v16 = sub_1007A2214();

      v17 = [objc_opt_self() fontWithName:v16 size:16.0];

      if (v17)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v17 = [objc_opt_self() systemFontOfSize:12.0];
LABEL_8:
  [v2 setHighlightedTextFont:v17];

  sub_10069809C(a1, v6);
  if (v12(v6, 1, v10) == 1)
  {
    sub_10069810C(v6);
LABEL_12:
    v20 = 0;
    v19 = &kIMThemeIdentifierWhitePageTheme;
    goto LABEL_13;
  }

  v18 = sub_10079EE44();
  (*(v11 + 8))(v6, v10);
  if ((v18 & 1) == 0)
  {
    goto LABEL_12;
  }

  v19 = &kIMThemeIdentifierNightPageTheme;
  v20 = 1;
LABEL_13:
  [v2 setShouldDim:v20];
  v21 = [objc_opt_self() themeWithIdentifier:*v19];
  [v2 setTheme:v21];
}

void sub_100697C90()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    v1 = v0;
    swift_unknownObjectRetain();
    v2 = sub_1007A2214();
    [v1 setAnnotationNote:v2];

    v3 = [v1 managedObjectContext];
    if (v3)
    {
      v4 = v3;
      v20 = 0;
      v5 = [v3 save:&v20];

      if (v5)
      {
        v6 = v20;
        swift_unknownObjectRelease();
      }

      else
      {
        v10 = v20;
        sub_1007967D4();

        swift_willThrow();
        if (qword_100AD1AD0 != -1)
        {
          swift_once();
        }

        v11 = sub_10079ACE4();
        sub_100008B98(v11, qword_100AF1DF0);
        swift_errorRetain();
        v12 = sub_10079ACC4();
        v13 = sub_1007A29B4();

        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          v20 = v15;
          *v14 = 136315138;
          swift_errorRetain();
          sub_1001F1160(&unk_100AD67F0);
          v16 = sub_1007A22E4();
          v18 = sub_1000070F4(v16, v17, &v20);

          *(v14 + 4) = v18;
          _os_log_impl(&_mh_execute_header, v12, v13, "Error saving note changes %s", v14, 0xCu);
          sub_1000074E0(v15);

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_100AD1AD0 != -1)
    {
      swift_once();
    }

    v7 = sub_10079ACE4();
    sub_100008B98(v7, qword_100AF1DF0);
    oslog = sub_10079ACC4();
    v8 = sub_1007A29B4();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v8, "Error: highlightEditorController passing a non AEAnnotation class", v9, 2u);
    }
  }
}

uint64_t sub_10069802C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AD95B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10069809C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AD95B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10069810C(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AD95B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100698174()
{
  result = qword_100AF1ED8;
  if (!qword_100AF1ED8)
  {
    sub_1001F1234(&qword_100AF1ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1ED8);
  }

  return result;
}

id sub_10069845C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneControllerUtilities();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1006984B8(void *a1)
{
  v1 = [a1 sceneType];
  if (v1 <= 1)
  {
    if (!v1)
    {
      return 0x54656E6563534B42;
    }

    if (v1 == 1)
    {
      return 0xD000000000000012;
    }

    goto LABEL_11;
  }

  if (v1 == 2)
  {
    return 0xD000000000000016;
  }

  if (v1 != 3)
  {
LABEL_11:
    type metadata accessor for BKSceneType(0);
    result = sub_1007A3AF4();
    __break(1u);
    return result;
  }

  return 0xD000000000000014;
}

uint64_t sub_1006985B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x54656E6563534B42 && a2 == 0xEF6B6F6F42657079)
  {
    return 0;
  }

  if (sub_1007A3AB4())
  {
    return 0;
  }

  if (a1 == 0xD000000000000016 && 0x80000001008E6160 == a2 || (sub_1007A3AB4() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0xD000000000000014 && 0x80000001008E6180 == a2)
  {
    return 3;
  }

  if (sub_1007A3AB4())
  {
    return 3;
  }

  return 1;
}

void sub_1006986C0()
{
  v25.receiver = v0;
  v25.super_class = type metadata accessor for SupplementalContentButton();
  objc_msgSendSuper2(&v25, "layoutSubviews");
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 userInterfaceLayoutDirection];

  [v0 bounds];
  v4 = v3;
  v6 = v5;
  v7 = [v0 titleLabel];
  if (v7)
  {
    v8 = v7;
    v9 = [v0 imageView];
    if (v9)
    {
      v10 = v9;
      [v8 setNumberOfLines:1];
      [v8 setLineBreakMode:4];
      v11 = v8;
      [v11 sizeThatFits:{v4, v6}];
      v13 = v12;
      v15 = v14;
      v8 = v10;
      [v8 sizeThatFits:{v4, v6}];
      v17 = v16;
      v19 = v18;
      v20 = floor((v6 - v15) * 0.5);
      v21 = floor((v6 - v18) * 0.5);
      v22 = v4 + -16.0;
      if (v4 + -16.0 + -20.0 + -10.0 - v17 < v13)
      {
        v13 = v4 + -16.0 + -20.0 + -10.0 - v17;
      }

      if (*(v0 + OBJC_IVAR____TtC5Books25SupplementalContentButton_compactMode) == 1)
      {
        v23 = v22 - v13;
        if (v2 == 1)
        {
          v24 = 20.0;
        }

        else
        {
          v24 = v4 + -20.0 - v17;
        }

        if (v2 != 1)
        {
          v23 = 16.0;
        }
      }

      else if (v2 == 1)
      {
        v24 = v22 - v17;
        v26.origin.x = v22 - v17;
        v26.origin.y = v21;
        v26.size.width = v17;
        v26.size.height = v19;
        v23 = CGRectGetMinX(v26) + -10.0 - v13;
      }

      else
      {
        v24 = 16.0;
        v27.origin.x = 16.0;
        v27.origin.y = v21;
        v27.size.width = v17;
        v27.size.height = v19;
        v23 = CGRectGetMaxX(v27) + 10.0;
      }

      [v11 setFrame:{v23, v20, v13, v15}];

      [v8 setFrame:{v24, v21, v17, v19}];
    }
  }
}

double sub_1006989D0()
{
  v1 = [v0 titleLabel];
  if (v1)
  {
    v2 = v1;
    [v1 intrinsicContentSize];
    v4 = v3;

    v5 = v4 + 16.0 + 10.0;
  }

  else
  {
    v5 = 26.0;
  }

  v6 = [v0 imageView];
  if (v6)
  {
    v7 = v6;
    [v6 intrinsicContentSize];
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  return ceil(v5 + v9 + 20.0);
}

id sub_100698BB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SupplementalContentButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100698C08@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  *a1 = v3;
  return result;
}

uint64_t sub_100698C88(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  return sub_10079B9B4();
}

uint64_t sub_100698D50()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  return v1;
}

uint64_t PageSnapshotLoader.deinit()
{
  v1 = v0;
  v2 = *(v0 + 64);
  if (v2)
  {
    v3 = v2;

    v4 = sub_10079ACC4();
    v5 = sub_1007A29A4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = *(v1 + 72);

      _os_log_impl(&_mh_execute_header, v4, v5, "Cancelling operation for index %ld", v6, 0xCu);
    }

    else
    {
    }

    [v3 cancel];
  }

  sub_1000074E0(v1 + 16);

  v7 = OBJC_IVAR____TtC5Books18PageSnapshotLoader__image;
  v8 = sub_1001F1160(&unk_100AD8260);
  (*(*(v8 - 8) + 8))(v1 + v7, v8);

  v9 = OBJC_IVAR____TtC5Books18PageSnapshotLoader_logger;
  v10 = sub_10079ACE4();
  (*(*(v10 - 8) + 8))(v1 + v9, v10);
  return v1;
}

uint64_t PageSnapshotLoader.__deallocating_deinit()
{
  v1 = v0;
  v2 = *(v0 + 64);
  if (v2)
  {
    v3 = v2;

    v4 = sub_10079ACC4();
    v5 = sub_1007A29A4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = *(v1 + 72);

      _os_log_impl(&_mh_execute_header, v4, v5, "Cancelling operation for index %ld", v6, 0xCu);
    }

    else
    {
    }

    [v3 cancel];
  }

  sub_1000074E0(v1 + 16);

  v7 = OBJC_IVAR____TtC5Books18PageSnapshotLoader__image;
  v8 = sub_1001F1160(&unk_100AD8260);
  (*(*(v8 - 8) + 8))(v1 + v7, v8);

  v9 = OBJC_IVAR____TtC5Books18PageSnapshotLoader_logger;
  v10 = sub_10079ACE4();
  (*(*(v10 - 8) + 8))(v1 + v9, v10);

  return swift_deallocClassInstance();
}

uint64_t sub_100699174(uint64_t a1)
{
  v2 = v1;
  v16 = a1;
  v3 = sub_10079ACE4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC5Books18PageSnapshotLoader_logger;
  sub_10000E3E8((v2 + 16), *(v2 + 40));
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  swift_weakInit();
  (*(v4 + 16))(v6, v2 + v7, v3);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = (v5 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  (*(v4 + 32))(v12 + v10, v6, v3);
  v13 = v16;
  *(v12 + v11) = v16;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v9;

  BookActionMenuDataSource.snapshotImage(forPage:onOperationCreation:completion:)(v13, sub_100699DB0, v8, sub_100699DB8, v12);
}

void sub_100699380(void *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 64);
    *(Strong + 64) = a1;
    v4 = a1;
  }
}

void sub_1006993F0(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_1007A1C54();
  v44 = *(v6 - 8);
  __chkstk_darwin(v6);
  v49 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007A1CA4();
  v48 = *(v8 - 8);
  __chkstk_darwin(v8);
  v47 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10079ACE4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v45 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1;
  if (!a1)
  {
    v14 = sub_10079ACC4();
    v19 = sub_1007A29A4();
    if (os_log_type_enabled(v14, v19))
    {
      v20 = swift_slowAlloc();
      v40 = v10;
      *v20 = 134217984;
      *(v20 + 4) = a3;
      _os_log_impl(&_mh_execute_header, v14, v19, "Got no image for page %ld", v20, 0xCu);
      v10 = v40;
    }

    goto LABEL_13;
  }

  v13 = a1;
  v43 = a2;
  v14 = sub_10079ACC4();
  v15 = sub_1007A29A4();
  if (os_log_type_enabled(v14, v15))
  {
    v40 = v10;
    v41 = v8;
    v42 = v6;
    v16 = swift_slowAlloc();
    *v16 = 134218496;
    [v13 size];
    if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v17 > -9.22337204e18)
    {
      if (v17 < 9.22337204e18)
      {
        *(v16 + 4) = v17;
        *(v16 + 12) = 2048;
        [v13 size];
        if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v18 > -9.22337204e18)
          {
            if (v18 < 9.22337204e18)
            {
              *(v16 + 14) = v18;

              *(v16 + 22) = 2048;
              *(v16 + 24) = a3;
              _os_log_impl(&_mh_execute_header, v14, v15, "Got %ldx%ld image for page %ld", v16, 0x20u);

              v8 = v41;
              v6 = v42;
              a2 = v43;
              v10 = v40;
              goto LABEL_13;
            }

LABEL_25:
            __break(1u);
            return;
          }

LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_22;
  }

  v14 = v13;
  a2 = v43;
LABEL_13:

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    if (*(Strong + 72) == a3)
    {
      sub_100017E74();
      v23 = sub_1007A2D74();
      v42 = v6;
      v43 = v23;
      v24 = v45;
      (*(v11 + 16))(v45, a2, v10);
      v25 = (*(v11 + 80) + 16) & ~*(v11 + 80);
      v26 = (v12 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
      v41 = v8;
      v27 = v10;
      v28 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
      v29 = swift_allocObject();
      (*(v11 + 32))(v29 + v25, v24, v27);
      *(v29 + v26) = a3;
      *(v29 + v28) = v22;
      v30 = v46;
      *(v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8)) = v46;
      aBlock[4] = sub_100699E60;
      aBlock[5] = v29;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1003323D0;
      aBlock[3] = &unk_100A2B708;
      v31 = _Block_copy(aBlock);
      v32 = v30;

      v33 = v47;
      sub_1007A1C74();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100265BDC();
      sub_1001F1160(&unk_100AD7CA0);
      sub_100234698();
      v34 = v49;
      v35 = v42;
      sub_1007A3594();
      v36 = v43;
      sub_1007A2D94();
      _Block_release(v31);

      (*(v44 + 8))(v34, v35);
      (*(v48 + 8))(v33, v41);
    }

    else
    {

      v37 = sub_10079ACC4();
      v38 = sub_1007A29A4();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 134218240;
        *(v39 + 4) = a3;
        *(v39 + 12) = 2048;
        *(v39 + 14) = *(v22 + 72);

        _os_log_impl(&_mh_execute_header, v37, v38, "Ignoring, my index has changed: %ld -> %ld ", v39, 0x16u);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_100699A98(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_10079ACC4();
  v7 = sub_1007A29A4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = a2;
    _os_log_impl(&_mh_execute_header, v6, v7, "Notifying about image for %ld", v8, 0xCu);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v9 = a4;

  return sub_10079B9B4();
}

uint64_t sub_100699B98@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PageSnapshotLoader();
  result = sub_10079B8B4();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for PageSnapshotLoader()
{
  result = qword_100AF1F78;
  if (!qword_100AF1F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100699C48()
{
  sub_100699D4C();
  if (v0 <= 0x3F)
  {
    sub_10079ACE4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100699D4C()
{
  if (!qword_100AD4F18)
  {
    sub_1001F1234(&qword_100AD4F20);
    v0 = sub_10079B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_100AD4F18);
    }
  }
}

void sub_100699DB8(void *a1)
{
  v3 = *(sub_10079ACE4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1006993F0(a1, (v1 + v4), v5);
}

uint64_t sub_100699E60()
{
  v1 = *(sub_10079ACE4() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100699A98(v0 + v2, v5, v6, v7);
}

uint64_t sub_100699F0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_10000AE20(a2, &v27);
  v6 = v28;
  if (v28)
  {
    v7 = sub_10000E3E8(&v27, v28);
    v8 = *(v6 - 8);
    v9 = __chkstk_darwin(v7);
    v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = sub_1007A3AA4();
    (*(v8 + 8))(v11, v6);
    sub_1000074E0(&v27);
  }

  else
  {
    v12 = 0;
  }

  v13 = [v3 targetForAction:a1 withSender:v12];
  swift_unknownObjectRelease();
  if (!v13)
  {
    return 0;
  }

  sub_1007A3504();
  swift_unknownObjectRelease();
  sub_1000076D4(&v25, &v27);
  sub_100007484(&v27, &v25);
  sub_100009818();
  if (!swift_dynamicCast())
  {
    sub_1000074E0(&v27);
    return 0;
  }

  v14 = v24[1];
  sub_10000AE20(a2, &v25);
  v15 = v26;
  if (v26)
  {
    v16 = sub_10000E3E8(&v25, v26);
    v17 = *(v15 - 8);
    v18 = __chkstk_darwin(v16);
    v20 = v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v20, v18);
    v21 = sub_1007A3AA4();
    (*(v17 + 8))(v20, v15);
    sub_1000074E0(&v25);
  }

  else
  {
    v21 = 0;
  }

  [v14 performSelector:a1 withObject:v21];
  swift_unknownObjectRelease();
  sub_1000074E0(&v27);
  v23 = v14;
  return 1;
}

uint64_t sub_10069A1FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_10069A244(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_10069A2C0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1001F1160(&qword_100AF20B8);
  __chkstk_darwin(v2 - 8);
  v4 = (&v12 - v3);
  v5 = sub_1001F1160(&qword_100AF20C0);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_10069A4B4(v4);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  if (v13)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.0;
  }

  sub_10020B3C8(v4, v8, &qword_100AF20B8);
  *&v8[*(v6 + 44)] = v9;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v10 = v12;
  sub_10020B3C8(v8, a1, &qword_100AF20C0);
  result = sub_1001F1160(&qword_100AF20C8);
  *(a1 + *(result + 52)) = v10;
  return result;
}

uint64_t sub_10069A4B4@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  if (*v1)
  {
    v3 = qword_100AD17D0;
    v4 = *v1;
    if (v3 != -1)
    {
      v14 = v4;
      swift_once();
      v4 = v14;
    }

    *a1 = sub_10079E474();
    a1[1] = v5;
    v6 = sub_1001F1160(&qword_100AF20D0);
    sub_10069A78C(v1, v16, a1 + *(v6 + 44), v15 * 0.0174532925, 44.0, 44.0);
    sub_10079E4C4();
    v7 = sub_10079E4D4();

    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v9 = (a1 + *(sub_1001F1160(&qword_100AF20D8) + 36));
    *v9 = sub_10047DA08;
    v9[1] = v8;
    sub_10079E4A4();
    v10 = sub_10079E4D4();

    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    result = sub_1001F1160(&qword_100AF20B8);
    v13 = (a1 + *(result + 36));
    *v13 = sub_10047DC18;
    v13[1] = v11;
  }

  else
  {
    type metadata accessor for ChromeStyle();
    sub_1002B3600();
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_10069A78C@<X0>(id *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v231 = a2;
  v230 = a1;
  v209 = a3;
  v9 = sub_10079CA64();
  v206 = *(v9 - 8);
  v207 = v9;
  __chkstk_darwin(v9);
  v205 = &v187 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100796CF4();
  v228 = *(v11 - 8);
  v229 = v11;
  __chkstk_darwin(v11);
  v225 = &v187 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v226 = &v187 - v14;
  v223 = sub_1007A21D4();
  v227 = *(v223 - 8);
  __chkstk_darwin(v223);
  v224 = &v187 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v222 = &v187 - v17;
  v18 = sub_10079BC44();
  v193 = *(v18 - 8);
  v194 = v18;
  __chkstk_darwin(v18);
  v192 = &v187 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v191 = &v187 - v21;
  v22 = sub_10079DF34();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v187 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1001F1160(&qword_100AD8DD8);
  __chkstk_darwin(v26 - 8);
  v28 = &v187 - v27;
  v210 = sub_1001F1160(&qword_100AF20E0);
  v200 = *(v210 - 1);
  __chkstk_darwin(v210);
  v197 = &v187 - v29;
  v195 = sub_1001F1160(&qword_100AF20E8);
  __chkstk_darwin(v195);
  v198 = &v187 - v30;
  v196 = sub_1001F1160(&qword_100AF20F0);
  __chkstk_darwin(v196);
  v201 = &v187 - v31;
  v199 = sub_1001F1160(&qword_100AF20F8);
  __chkstk_darwin(v199);
  v212 = &v187 - v32;
  v211 = sub_1001F1160(&qword_100AF2100);
  __chkstk_darwin(v211);
  v214 = &v187 - v33;
  v213 = sub_1001F1160(&qword_100AF2108);
  __chkstk_darwin(v213);
  v215 = &v187 - v34;
  v217 = sub_1001F1160(&qword_100AF2110);
  __chkstk_darwin(v217);
  v216 = &v187 - v35;
  v232 = sub_1001F1160(&qword_100AF2118);
  __chkstk_darwin(v232);
  v218 = &v187 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v219 = &v187 - v38;
  __chkstk_darwin(v39);
  v220 = &v187 - v40;
  __chkstk_darwin(v41);
  v203 = &v187 - v42;
  __chkstk_darwin(v43);
  v204 = &v187 - v44;
  __chkstk_darwin(v45);
  v47 = &v187 - v46;
  sub_10079DFA4();
  v48 = enum case for Image.TemplateRenderingMode.template(_:);
  v49 = sub_10079DF74();
  v50 = *(v49 - 8);
  (*(v50 + 104))(v28, v48, v49);
  (*(v50 + 56))(v28, 0, 1, v49);
  sub_10079DF44();

  sub_100007840(v28, &qword_100AD8DD8);
  (*(v23 + 104))(v25, enum case for Image.ResizingMode.stretch(_:), v22);
  v51 = sub_10079DF94();

  (*(v23 + 8))(v25, v22);
  if (*v230)
  {
    v52 = *v230;
    v53 = v231;
    v54 = ChromeStyle.orientationLockHintForegroundColor(locked:)(v231 & 1);
    KeyPath = swift_getKeyPath();
    if (qword_100AD17D0 != -1)
    {
      swift_once();
    }

    v221 = v47;
    sub_10079E474();
    sub_10079BE54();
    v266 = 1;
    v208 = a5;
    v202 = a6;
    if (v53)
    {
      v188 = KeyPath;
      v189 = v54;
      v190 = v51;
      swift_getKeyPath();
      swift_getKeyPath();
      v56 = v191;
      sub_10079B9A4();

      v57 = v192;
      v58 = v193;
      v59 = v194;
      (*(v193 + 104))(v192, enum case for ColorScheme.light(_:), v194);
      sub_10079BC34();
      v60 = *(v58 + 8);
      v60(v57, v59);
      v60(v56, v59);
      v61 = sub_10079DE54();

      v54 = v189;
      v51 = v190;
      KeyPath = v188;
    }

    else
    {

      v61 = sub_10079DDC4();
    }

    v62 = sub_10079D294();
    *(v255 + 8) = v263;
    v253 = v51;
    LOWORD(v254) = 1;
    *(&v254 + 1) = KeyPath;
    *&v255[0] = v54;
    *(&v255[1] + 8) = v264;
    *(&v255[2] + 8) = v265;
    *(&v255[3] + 1) = v61;
    LOBYTE(v256) = v62;
    v63 = sub_10079E414();
    v194 = &v187;
    __chkstk_darwin(v63);
    v64 = sub_1001F1160(&qword_100AF2120);
    sub_1001F1160(&qword_100AF2128);
    sub_1001F1160(&qword_100AF2130);
    v65 = sub_10069C458();
    v66 = sub_1001F1234(&qword_100AF2160);
    v67 = sub_10069C654();
    *&v243 = v64;
    *(&v243 + 1) = &type metadata for Solarium;
    *&v244 = v66;
    *(&v244 + 1) = v64;
    *&v245 = v65;
    *(&v245 + 1) = &protocol witness table for Solarium;
    *&v246 = v67;
    *(&v246 + 1) = v65;
    swift_getOpaqueTypeConformance2();
    sub_10069C70C();
    v68 = v197;
    sub_10079DC54();
    v261[4] = v255[2];
    v261[5] = v255[3];
    v262 = v256;
    v261[0] = v253;
    v261[1] = v254;
    v261[2] = v255[0];
    v261[3] = v255[1];
    sub_100007840(v261, &qword_100AF2120);
    v69 = v198;
    (*(v200 + 32))(v198, v68, v210);
    *&v69[*(v195 + 36)] = 256;
    v70 = sub_10079D2A4();
    sub_10079BBA4();
    v72 = v71;
    v74 = v73;
    v76 = v75;
    v78 = v77;
    v79 = v69;
    v80 = v201;
    sub_10020B3C8(v79, v201, &qword_100AF20E8);
    v81 = v80 + *(v196 + 36);
    *v81 = v70;
    *(v81 + 8) = v72;
    *(v81 + 16) = v74;
    *(v81 + 24) = v76;
    *(v81 + 32) = v78;
    *(v81 + 40) = 0;
    v82 = sub_10079D2C4();
    sub_10079BBA4();
    v84 = v83;
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v91 = v80;
    v92 = v212;
    sub_10020B3C8(v91, v212, &qword_100AF20F0);
    v93 = &v92[*(v199 + 36)];
    *v93 = v82;
    *(v93 + 1) = v84;
    *(v93 + 2) = v86;
    *(v93 + 3) = v88;
    *(v93 + 4) = v90;
    v93[40] = 0;
    v94 = sub_10079D2E4();
    sub_10079BBA4();
    v96 = v95;
    v98 = v97;
    v100 = v99;
    v102 = v101;
    v103 = v92;
    v104 = v214;
    sub_10020B3C8(v103, v214, &qword_100AF20F8);
    v105 = &v104[*(v211 + 36)];
    *v105 = v94;
    *(v105 + 1) = v96;
    *(v105 + 2) = v98;
    *(v105 + 3) = v100;
    *(v105 + 4) = v102;
    v105[40] = 0;
    v106 = sub_10079D2B4();
    sub_10079BBA4();
    v108 = v107;
    v110 = v109;
    v112 = v111;
    v114 = v113;
    v115 = v104;
    v116 = v215;
    sub_10020B3C8(v115, v215, &qword_100AF2100);
    v117 = v116 + *(v213 + 36);
    *v117 = v106;
    *(v117 + 8) = v108;
    *(v117 + 16) = v110;
    *(v117 + 24) = v112;
    *(v117 + 32) = v114;
    *(v117 + 40) = 0;
    sub_10079E634();
    v119 = v118;
    v121 = v120;
    v122 = v116;
    v123 = v216;
    sub_10020B3C8(v122, v216, &qword_100AF2108);
    v124 = &v123[*(v217 + 36)];
    *v124 = a4;
    *(v124 + 1) = v119;
    *(v124 + 2) = v121;
    sub_10069C798();
    sub_10079D944();
    sub_100007840(v123, &qword_100AF2110);
    v125 = v222;
    sub_1007A2154();
    v126 = v226;
    sub_100796C94();
    v127 = v227;
    v128 = v223;
    v214 = *(v227 + 16);
    v215 = v227 + 16;
    (v214)(v224, v125, v223);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v210 = objc_opt_self();
    v211 = ObjCClassFromMetadata;
    v130 = [v210 bundleForClass:ObjCClassFromMetadata];
    v131 = v228;
    v132 = v229;
    v212 = *(v228 + 16);
    v213 = v228 + 16;
    (v212)(v225, v126, v229);
    v133 = sub_1007A22D4();
    v135 = v134;
    v136 = *(v131 + 8);
    v228 = v131 + 8;
    v216 = v136;
    (v136)(v126, v132);
    v137 = *(v127 + 8);
    v227 = v127 + 8;
    v217 = v137;
    v137(v125, v128);
    *&v253 = v133;
    *(&v253 + 1) = v135;
    v138 = sub_100206ECC();
    v139 = sub_10079D5D4();
    v141 = v140;
    LOBYTE(v127) = v142;
    v143 = v218;
    sub_10079C1B4();
    sub_10020B430(v139, v141, v127 & 1);

    sub_100007840(v143, &qword_100AF2118);
    v201 = v138;
    v144 = v222;
    sub_1007A2154();
    v145 = v226;
    sub_100796C94();
    v146 = v223;
    (v214)(v224, v144);
    [v210 bundleForClass:v211];
    v147 = v229;
    (v212)(v225, v145, v229);
    v148 = sub_1007A22D4();
    v150 = v149;
    (v216)(v145, v147);
    (v217)(v144, v146);
    *&v253 = v148;
    *(&v253 + 1) = v150;
    v151 = sub_10079D5D4();
    LOBYTE(v127) = v152;
    v153 = v202;
    v154 = v208;
    v155 = v146;
    v156 = v144;
    v157 = v219;
    v159 = v158;
    sub_10079C1D4();
    sub_10020B430(v151, v159, v127 & 1);

    sub_100007840(v157, &qword_100AF2118);
    sub_1007A2154();
    v160 = v226;
    sub_100796C94();
    (v214)(v224, v156, v155);
    [v210 bundleForClass:v211];
    v161 = v156;
    v162 = v229;
    (v212)(v225, v160, v229);
    v163 = sub_1007A22D4();
    v165 = v164;
    (v216)(v160, v162);
    (v217)(v161, v155);
    *&v253 = v163;
    *(&v253 + 1) = v165;
    v166 = sub_10079D5D4();
    v168 = v167;
    LOBYTE(v147) = v169;
    v170 = v203;
    v171 = v220;
    sub_10079C194();
    sub_10020B430(v166, v168, v147 & 1);

    sub_100007840(v171, &qword_100AF2118);
    v172 = v205;
    sub_10079CA24();
    v173 = v204;
    sub_10079C274();
    v174 = v207;
    v175 = *(v206 + 8);
    v175(v172, v207);
    sub_100007840(v170, &qword_100AF2118);
    sub_10079CA44();
    sub_10079C234();
    v175(v172, v174);
    sub_100007840(v173, &qword_100AF2118);
    v176 = sub_10079E474();
    v178 = v177;
    sub_10069BF4C(v230, &v234, v154, v153);
    v248 = v239;
    v249 = v240;
    v250 = v241;
    v251 = v242;
    v245 = v236;
    v246 = v237;
    v247 = v238;
    v243 = v234;
    v244 = v235;
    *&v252 = v176;
    *(&v252 + 1) = v178;
    v179 = v209;
    sub_10020B3C8(v221, v209, &qword_100AF2118);
    v180 = (v179 + *(sub_1001F1160(&qword_100AF21A8) + 36));
    v181 = v250;
    v180[6] = v249;
    v180[7] = v181;
    v182 = v252;
    v180[8] = v251;
    v180[9] = v182;
    v183 = v246;
    v180[2] = v245;
    v180[3] = v183;
    v184 = v248;
    v180[4] = v247;
    v180[5] = v184;
    v185 = v244;
    *v180 = v243;
    v180[1] = v185;
    v256 = v240;
    v257 = v241;
    v258 = v242;
    v255[0] = v236;
    v255[1] = v237;
    v255[2] = v238;
    v255[3] = v239;
    v253 = v234;
    v254 = v235;
    v259 = v176;
    v260 = v178;
    sub_1000077D8(&v243, &v233, &qword_100AF21B0);
    return sub_100007840(&v253, &qword_100AF21B0);
  }

  else
  {
    type metadata accessor for ChromeStyle();
    sub_1002B3600();
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_10069BD7C()
{
  sub_10079E414();
  sub_1001F1160(&qword_100AF2120);
  sub_1001F1160(&qword_100AF2160);
  sub_10069C458();
  sub_10069C654();
  return sub_10079DC54();
}

uint64_t sub_10069BE6C@<X0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = a1[5];
  v28 = a1[4];
  v29 = v4;
  v30 = *(a1 + 96);
  v5 = a1[1];
  v24 = *a1;
  v25 = v5;
  if (a2)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  v7 = a1[3];
  v26 = a1[2];
  v27 = v7;
  type metadata accessor for ChromeStyle();
  sub_1002B3600();
  v8 = sub_10079C484();
  LOBYTE(v23) = v30;
  v9 = v29;
  v21 = v28;
  v22 = v29;
  v11 = v26;
  v10 = v27;
  v19 = v26;
  v20 = v27;
  v12 = v25;
  v17 = v24;
  v13 = v24;
  v18 = v25;
  *(a3 + 64) = v28;
  *(a3 + 80) = v9;
  *a3 = v13;
  *(a3 + 16) = v12;
  *(a3 + 32) = v11;
  *(a3 + 48) = v10;
  *(a3 + 96) = v23;
  *(a3 + 104) = v6;
  *(a3 + 112) = v8;
  *(a3 + 120) = v14;
  return sub_1000077D8(&v24, v16, &qword_100AF2120);
}

__n128 sub_10069BF4C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = sub_100796CF4();
  v41 = *(v8 - 8);
  v42 = v8;
  __chkstk_darwin(v8);
  v40 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  v44 = sub_1007A21D4();
  v13 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v35 - v16;
  v18 = *(a1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  if (v52 == 1)
  {
    v19 = v18 + OBJC_IVAR____TtC5Books28OrientationLockHintViewModel_tapActionViewListener;
    Strong = swift_unknownObjectWeakLoadStrong();
    v38 = *(v19 + 8);
    v39 = Strong;
    v21 = swift_allocObject();
    v37 = v21;
    v22 = *(a1 + 16);
    v21[1] = *a1;
    v21[2] = v22;
    v23 = *(a1 + 48);
    v21[3] = *(a1 + 32);
    v21[4] = v23;
    sub_10069CC08(a1, &v52);
    v36 = v17;
    sub_1007A2154();
    sub_100796C94();
    (*(v13 + 16))(v43, v17, v44);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v25 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v26 = v41;
    v27 = v42;
    (*(v41 + 16))(v40, v12, v42);
    v28 = sub_1007A22D4();
    v30 = v29;
    (*(v26 + 8))(v12, v27);
    (*(v13 + 8))(v36, v44);
    v45 = 0;
    sub_10079E474();
    sub_10079BE54();
    *&v46 = a3;
    *(&v46 + 1) = a4;
    v47.n128_u8[0] = v45;
    v47.n128_u64[1] = v39;
    *&v48 = v38;
    *(&v48 + 1) = sub_10069CC00;
    *&v49 = v37;
    *(&v49 + 1) = v28;
    *&v50[0] = v30;
    *(v50 + 8) = xmmword_10083D200;
    *(&v51 + 1) = 0xBFF0000000000000;
    BKAppDelegate.enableMetricsInspectorOnDebugMode()();
    v58 = v50[2];
    v59 = v50[3];
    v60 = v51;
    v54 = v48;
    v55 = v49;
    v56 = v50[0];
    v57 = v50[1];
    v52 = v46;
    v53 = v47;
  }

  else
  {
    sub_1002AAFA8(&v52);
  }

  v31 = v59;
  *(a2 + 96) = v58;
  *(a2 + 112) = v31;
  *(a2 + 128) = v60;
  v32 = v55;
  *(a2 + 32) = v54;
  *(a2 + 48) = v32;
  v33 = v57;
  *(a2 + 64) = v56;
  *(a2 + 80) = v33;
  result = v53;
  *a2 = v52;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_10069C390(uint64_t a1)
{
  v1 = *(a1 + 24) + OBJC_IVAR____TtC5Books28OrientationLockHintViewModel_orientationLockHandler;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_10069C458()
{
  result = qword_100AF2138;
  if (!qword_100AF2138)
  {
    sub_1001F1234(&qword_100AF2120);
    sub_10069C510();
    sub_100005920(&qword_100AF64C0, &unk_100AE40B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2138);
  }

  return result;
}

unint64_t sub_10069C510()
{
  result = qword_100AF2140;
  if (!qword_100AF2140)
  {
    sub_1001F1234(&qword_100AF2148);
    sub_10069C59C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2140);
  }

  return result;
}

unint64_t sub_10069C59C()
{
  result = qword_100AF2150;
  if (!qword_100AF2150)
  {
    sub_1001F1234(&qword_100AF2158);
    sub_10032A544();
    sub_100005920(&unk_100AD1D10, &qword_100ADB490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2150);
  }

  return result;
}

unint64_t sub_10069C654()
{
  result = qword_100AF2168;
  if (!qword_100AF2168)
  {
    sub_1001F1234(&qword_100AF2160);
    sub_10069C458();
    sub_100005920(&qword_100AD1D28, &qword_100AD1D30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2168);
  }

  return result;
}

unint64_t sub_10069C70C()
{
  result = qword_100AF2170;
  if (!qword_100AF2170)
  {
    sub_1001F1234(&qword_100AF2130);
    sub_10069C458();
    sub_10020AEE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2170);
  }

  return result;
}

unint64_t sub_10069C798()
{
  result = qword_100AF2178;
  if (!qword_100AF2178)
  {
    sub_1001F1234(&qword_100AF2110);
    sub_10069C824();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2178);
  }

  return result;
}

unint64_t sub_10069C824()
{
  result = qword_100AF2180;
  if (!qword_100AF2180)
  {
    sub_1001F1234(&qword_100AF2108);
    sub_10069C8B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2180);
  }

  return result;
}

unint64_t sub_10069C8B0()
{
  result = qword_100AF2188;
  if (!qword_100AF2188)
  {
    sub_1001F1234(&qword_100AF2100);
    sub_10069C93C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2188);
  }

  return result;
}

unint64_t sub_10069C93C()
{
  result = qword_100AF2190;
  if (!qword_100AF2190)
  {
    sub_1001F1234(&qword_100AF20F8);
    sub_10069C9C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2190);
  }

  return result;
}

unint64_t sub_10069C9C8()
{
  result = qword_100AF2198;
  if (!qword_100AF2198)
  {
    sub_1001F1234(&qword_100AF20F0);
    sub_10069CA54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2198);
  }

  return result;
}

unint64_t sub_10069CA54()
{
  result = qword_100AF21A0;
  if (!qword_100AF21A0)
  {
    sub_1001F1234(&qword_100AF20E8);
    sub_1001F1234(&qword_100AF2120);
    sub_1001F1234(&qword_100AF2128);
    sub_1001F1234(&qword_100AF2130);
    sub_10069C458();
    sub_1001F1234(&qword_100AF2160);
    sub_10069C654();
    swift_getOpaqueTypeConformance2();
    sub_10069C70C();
    swift_getOpaqueTypeConformance2();
    sub_100005920(&qword_100AD1D38, &qword_100AD1D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF21A0);
  }

  return result;
}

uint64_t sub_10069CC40@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10079E3B4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = a1[5];
  v22 = a1[4];
  v23 = v8;
  v24 = *(a1 + 96);
  v9 = a1[1];
  v18 = *a1;
  v19 = v9;
  v10 = a1[3];
  v20 = a1[2];
  v21 = v10;
  sub_10079E3A4();
  v11 = a2 + *(sub_1001F1160(&qword_100AF2160) + 36);
  sub_10079E3D4();
  (*(v5 + 8))(v7, v4);
  *(v11 + *(sub_1001F1160(&qword_100AD1D30) + 56)) = 256;
  v12 = v23;
  *(a2 + 64) = v22;
  *(a2 + 80) = v12;
  *(a2 + 96) = v24;
  v13 = v19;
  *a2 = v18;
  *(a2 + 16) = v13;
  v14 = v21;
  *(a2 + 32) = v20;
  *(a2 + 48) = v14;
  return sub_1000077D8(&v18, v17, &qword_100AF2120);
}

uint64_t sub_10069CDCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 80);
  v13 = *(a1 + 64);
  v2 = v13;
  v14 = v3;
  v15 = *(a1 + 96);
  v4 = v15;
  v5 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v5;
  v6 = *(a1 + 48);
  v11 = *(a1 + 32);
  v7 = v11;
  v12 = v6;
  *a2 = v10[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  *(a2 + 48) = v6;
  *(a2 + 64) = v2;
  *(a2 + 80) = v3;
  *(a2 + 96) = v4;
  return sub_1000077D8(v10, v9, &qword_100AF2120);
}

uint64_t sub_10069CE38()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AF21C0);
  sub_100008B98(v0, qword_100AF21C0);
  return sub_10079ACD4();
}

void sub_10069CEB8()
{
  v1 = [v0 numberOfTouches];
  v2 = *&v0[OBJC_IVAR____TtC5Books22PressGestureRecognizer_numberOfTouchesRequired];
  if (qword_100AD1AD8 != -1)
  {
    swift_once();
  }

  v3 = sub_10079ACE4();
  sub_100008B98(v3, qword_100AF21C0);
  v4 = v0;
  v5 = sub_10079ACC4();
  v6 = sub_1007A29A4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109376;
    *(v7 + 4) = v1 == v2;
    *(v7 + 8) = 2048;
    *(v7 + 10) = [v4 state];

    _os_log_impl(&_mh_execute_header, v5, v6, "isPressed => %{BOOL}d; state: %ld", v7, 0x12u);
  }

  else
  {

    v5 = v4;
  }

  v8 = [v4 state];
  if ((v8 - 3) >= 3)
  {
    if ((v8 - 1) < 2)
    {
      if (v1 == v2)
      {
        v9 = 2;
      }

      else
      {
        v9 = 4;
      }

      goto LABEL_17;
    }

    if (!v8)
    {
      if (v1 == v2)
      {
        v9 = 1;
      }

      else
      {
        v9 = 5;
      }

LABEL_17:

      [v4 setState:v9];
      return;
    }

    v16 = v4;
    oslog = sub_10079ACC4();
    v13 = sub_1007A29B4();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = [v16 state];

      _os_log_impl(&_mh_execute_header, oslog, v13, "Unknown gesture recognizer state: %ld", v14, 0xCu);
      goto LABEL_22;
    }

LABEL_23:

    v15 = v16;
    goto LABEL_24;
  }

  v16 = v4;
  oslog = sub_10079ACC4();
  v10 = sub_1007A29B4();
  if (!os_log_type_enabled(oslog, v10))
  {
    goto LABEL_23;
  }

  v11 = v1 == v2;
  v12 = swift_slowAlloc();
  *v12 = 67109376;
  *(v12 + 4) = v11;
  *(v12 + 8) = 2048;
  *(v12 + 10) = [v16 state];

  _os_log_impl(&_mh_execute_header, oslog, v10, "isPressed => %{BOOL}d but state is %ld", v12, 0x12u);
LABEL_22:

  v15 = oslog;
LABEL_24:
}

void sub_10069D220(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  ObjectType = swift_getObjectType();
  sub_10069D36C();
  sub_10053B0B4();
  sub_1007A2834();
  v9 = a4;
  v10 = a1;
  isa = sub_1007A2824().super.isa;

  v12.receiver = v10;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, *a5, isa, v9);

  sub_10069CEB8();
}

unint64_t sub_10069D36C()
{
  result = qword_100AE2248;
  if (!qword_100AE2248)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AE2248);
  }

  return result;
}

id sub_10069D3B8(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:a1];
  v5 = [objc_opt_self() preferredFontDescriptorWithTextStyle:a1];
  v6 = objc_opt_self();
  [v5 pointSize];
  v7 = [v6 systemFontOfSize:? weight:?];
  v8 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:a2];
  v9 = [v6 preferredFontForTextStyle:a1 compatibleWithTraitCollection:v8];

  [v9 pointSize];
  v10 = [v4 scaledFontForFont:v7 maximumPointSize:?];

  return v10;
}

uint64_t sub_10069D628()
{
  v1 = *(v0[19] + OBJC_IVAR___BKAppAddToWTRDelegate_notifications);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10069D750;
  v2 = swift_continuation_init();
  v0[17] = sub_1001F1160(&unk_100AF22A0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10069E414;
  v0[13] = &unk_100A2BA10;
  v0[14] = v2;
  [v1 getAuthorizationStatusWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10069D750()
{

  return _swift_task_switch(sub_10069D830, 0, 0);
}

uint64_t sub_10069D830()
{
  v1 = *(v0 + 144);
  if (v1 >= 5)
  {
    return (*(v0 + 8))(0);
  }

  else
  {
    return (*(v0 + 8))((0x101010002uLL >> (8 * v1)));
  }
}

uint64_t sub_10069D9E8(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_10069DAAC;

  return sub_10069EC28();
}

uint64_t sub_10069DAAC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v4)
  {
    v7 = *(v3 + 24);
    v7[2](v7, a1);
    _Block_release(v7);
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_10069DD8C(int a1, void *aBlock, void *a3)
{
  *(v3 + 16) = a3;
  *(v3 + 24) = _Block_copy(aBlock);
  v5 = a3;

  return _swift_task_switch(sub_10069DE08, 0, 0);
}

uint64_t sub_10069DE08()
{
  Strong = swift_weakLoadStrong();
  *(v0 + 32) = Strong;
  if (Strong)
  {
    v7 = (&async function pointer to dispatch thunk of PriceTracker.didShowOptInAlert() + async function pointer to dispatch thunk of PriceTracker.didShowOptInAlert());
    v2 = swift_task_alloc();
    *(v0 + 40) = v2;
    *v2 = v0;
    v2[1] = sub_10069DF20;

    return v7();
  }

  else
  {
    v4 = *(v0 + 24);

    if (v4)
    {
      v5 = *(v0 + 24);
      v5[2](v5);
      _Block_release(v5);
    }

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_10069DF20()
{
  v2 = *v0;
  v1 = *v0;
  v3 = *v0;

  v4 = *(v1 + 24);

  if (v4)
  {
    v5 = *(v2 + 24);
    v5[2](v5);
    _Block_release(v5);
  }

  v6 = *(v3 + 8);

  return v6();
}

uint64_t sub_10069E208(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_10069E2CC;

  return sub_10069F47C();
}

uint64_t sub_10069E2CC()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v4 = *v0;

  if (v2)
  {
    v5 = *(v1 + 24);
    v5[2](v5);
    _Block_release(v5);
  }

  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_10069E414(uint64_t a1, uint64_t a2)
{
  **(*(*sub_10000E3E8((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return swift_continuation_resume();
}

uint64_t sub_10069E510()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100009A34;

  return sub_10069E208(v2, v3, v4);
}

uint64_t sub_10069E5C4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100009A34;

  return v6();
}

uint64_t sub_10069E6AC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10002812C;

  return v7();
}

uint64_t sub_10069E794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_1005D85B8(a3, v23 - v10);
  v12 = sub_1007A2744();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10069EA50(v11);
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

  sub_1007A2734();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1007A2694();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1007A2304() + 32;
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

    sub_10069EA50(a3);

    return v21;
  }

LABEL_8:
  sub_10069EA50(a3);
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

uint64_t sub_10069EA50(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AD67D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10069EAB8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100009A34;

  return sub_1000085FC(a1, v4);
}

uint64_t sub_10069EB70(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002812C;

  return sub_1000085FC(a1, v4);
}

uint64_t sub_10069EC48()
{
  Strong = swift_weakLoadStrong();
  v0[3] = Strong;
  if (Strong)
  {
    v9 = (&async function pointer to dispatch thunk of PriceTracker.featureEnabled.getter + async function pointer to dispatch thunk of PriceTracker.featureEnabled.getter);
    v2 = swift_task_alloc();
    v0[4] = v2;
    *v2 = v0;
    v2[1] = sub_10069EDFC;

    return v9();
  }

  else
  {
    if (qword_100AD13A0 != -1)
    {
      swift_once();
    }

    v4 = sub_10079ACE4();
    sub_100008B98(v4, qword_100B22FB0);
    v5 = sub_10079ACC4();
    v6 = sub_1007A29B4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "[OptInAlert] Missing price tracker", v7, 2u);
    }

    v8 = v0[1];

    return v8(0);
  }
}

uint64_t sub_10069EDFC(char a1)
{
  *(*v1 + 56) = a1;

  return _swift_task_switch(sub_10069EEFC, 0, 0);
}

uint64_t sub_10069EEFC()
{
  if (*(v0 + 56) == 1)
  {
    sub_1007A1D64();
    sub_10068DF68();
    v2 = sub_1007A2694();

    return _swift_task_switch(sub_10069EFCC, v2, v1);
  }

  else
  {

    v3 = *(v0 + 8);

    return v3(0);
  }
}

uint64_t sub_10069EFCC()
{
  *(v0 + 57) = sub_1007A1D44() & 1;

  return _swift_task_switch(sub_10069F03C, 0, 0);
}

uint64_t sub_10069F03C()
{
  if (*(v0 + 57) == 1)
  {

    v1 = *(v0 + 8);

    return v1(0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 40) = v3;
    *v3 = v0;
    v3[1] = sub_10069F114;

    return sub_10069D608();
  }
}

uint64_t sub_10069F114(char a1)
{
  *(*v1 + 58) = a1;

  return _swift_task_switch(sub_10069F214, 0, 0);
}

uint64_t sub_10069F214()
{
  v1 = *(v0 + 58);
  if (v1 == 2)
  {
    v2 = 1;
LABEL_8:

    v5 = *(v0 + 8);

    return v5(v2);
  }

  if ((v1 & 1) == 0)
  {
    v2 = 2;
    goto LABEL_8;
  }

  v6 = (&async function pointer to dispatch thunk of PriceTracker.notificationsEnabled.getter + async function pointer to dispatch thunk of PriceTracker.notificationsEnabled.getter);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_10069F310;

  return v6();
}

uint64_t sub_10069F310(char a1)
{
  *(*v1 + 59) = a1;

  return _swift_task_switch(sub_10069F410, 0, 0);
}

uint64_t sub_10069F410()
{
  v1 = *(v0 + 59);

  v2 = *(v0 + 8);

  return v2(~v1 & 1);
}

uint64_t sub_10069F49C()
{
  Strong = swift_weakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    v2 = *(v0[18] + OBJC_IVAR___BKAppAddToWTRDelegate_notifications);
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_10069F6C4;
    v3 = swift_continuation_init();
    v0[17] = sub_1001F1160(&unk_100AD67E0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100298E88;
    v0[13] = &unk_100A2B8F8;
    v0[14] = v3;
    [v2 requestReauthorizationWithCompletion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    if (qword_100AD13A0 != -1)
    {
      swift_once();
    }

    v4 = sub_10079ACE4();
    sub_100008B98(v4, qword_100B22FB0);
    v5 = sub_10079ACC4();
    v6 = sub_1007A29B4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "[OptInAlert] Missing price tracker. How did we get here?", v7, 2u);
    }

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10069F6C4()
{

  return _swift_task_switch(sub_10069F7A4, 0, 0);
}

uint64_t sub_10069F7A4()
{
  if (*(v0 + 168) == 1)
  {
    v4 = (&async function pointer to dispatch thunk of PriceTracker.setNotificationsEnabled(_:) + async function pointer to dispatch thunk of PriceTracker.setNotificationsEnabled(_:));
    v1 = swift_task_alloc();
    *(v0 + 160) = v1;
    *v1 = v0;
    v1[1] = sub_10069F890;

    return v4(1);
  }

  else
  {

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_10069F890()
{

  return _swift_task_switch(sub_10069F98C, 0, 0);
}

uint64_t sub_10069F98C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10069F9F4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100009A34;

  return sub_10069DD8C(v2, v3, v4);
}

uint64_t sub_10069FAA8()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_10069FAE8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10002812C;

  return sub_10069D9E8(v2, v3, v4);
}

uint64_t sub_10069FD14(uint64_t a1)
{
  v2[39] = a1;
  v2[40] = v1;
  v3 = sub_10079A7A4();
  v2[41] = v3;
  v2[42] = *(v3 - 8);
  v2[43] = swift_task_alloc();
  v4 = sub_100799B14();
  v2[44] = v4;
  v2[45] = *(v4 - 8);
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();

  return _swift_task_switch(sub_10069FE48, 0, 0);
}

uint64_t sub_10069FE48()
{
  v1 = v0[39];
  v2 = *(v1 + 16);
  v0[49] = v2;
  if (v2)
  {
    v3 = v0[45];
    v4 = v0[42];
    sub_1003BD8A8(0, v2, 0);
    v5 = *(v3 + 16);
    v3 += 16;
    v6 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v21 = *(v3 + 56);
    v22 = v5;
    v23 = v0;
    v19 = (v3 - 8);
    v20 = (v4 + 8);
    do
    {
      v7 = v0[48];
      v9 = v0[43];
      v8 = v0[44];
      v10 = v0[41];
      v22(v7, v6, v8);
      sub_100799AE4();
      v11 = sub_10079A5F4();
      (*v20)(v9, v10);
      (*v19)(v7, v8);
      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        sub_1003BD8A8((v12 > 1), v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      _swiftEmptyArrayStorage[v13 + 4] = v11;
      v6 += v21;
      --v2;
      v0 = v23;
    }

    while (v2);
  }

  swift_getObjectType();
  v14 = sub_1004073B4();
  v15 = objc_allocWithZone(type metadata accessor for AMDBookScorer.Event());
  v16 = sub_1006A09D4(v14, _swiftEmptyArrayStorage);
  v0[50] = v16;

  v17 = swift_task_alloc();
  v0[51] = v17;
  *v17 = v0;
  v17[1] = sub_1006A00FC;

  return sub_100372DAC((v0 + 2), v16);
}