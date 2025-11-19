void sub_100406124(unint64_t a1, int a2, char a3, uint64_t a4, unint64_t *a5)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_1007A3644();
      sub_10000A7C4(0, a5);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10000A7C4(0, a5);
    if (sub_1007A3604() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_1007A3614();
    swift_dynamicCast();
    v5 = v16;
    v9 = sub_1007A3174(*(a4 + 40));
    v10 = -1 << *(a4 + 32);
    a1 = v9 & ~v10;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * a1);
        v13 = sub_1007A3184();

        if (v13)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v11;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v14 = *(*(a4 + 48) + 8 * a1);

  v15 = v14;
}

uint64_t sub_10040633C@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_10079A734();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

void *sub_1004063FC(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    v6 = *(*(a5 + 56) + 8 * a2);
    *result = v6;

    v7 = v6;
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_10040648C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1004064E0(uint64_t a1, uint64_t a2)
{
  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
  return _swift_task_switch(sub_100406500, 0, 0);
}

uint64_t sub_100406500()
{
  v1 = swift_task_alloc();
  *(v0 + 256) = v1;
  *(v1 + 16) = *(v0 + 240);
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1001F1160(&qword_100AE2218);
  *v2 = v0;
  v2[1] = sub_100406608;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 232, 0, 0, 0xD000000000000022, 0x80000001008D34C0, sub_100406AA4, v1, v3);
}

uint64_t sub_100406608()
{

  return _swift_task_switch(sub_100406720, 0, 0);
}

uint64_t sub_100406720()
{
  v23 = v0;
  v1 = *(v0 + 232);
  v2 = *(v1 + 16);
  if (!v2)
  {

    v4 = _swiftEmptyArrayStorage;
    v7 = _swiftEmptyArrayStorage[2];
    if (v7)
    {
      goto LABEL_14;
    }

LABEL_21:

    if (_swiftEmptyArrayStorage[2])
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  v3 = v1 + 32;
  v4 = _swiftEmptyArrayStorage;
  do
  {
    sub_100009864(v3, v0 + 72);
    sub_1000077C0((v0 + 72), v0 + 192);
    sub_1001F1160(&qword_100ADA250);
    sub_1001F1160(&qword_100AEF3D0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *(v0 + 184) = 0;
      *(v0 + 168) = 0u;
      *(v0 + 152) = 0u;
LABEL_4:
      sub_100007840(v0 + 152, &qword_100AE0AF0);
      goto LABEL_5;
    }

    if (!*(v0 + 176))
    {
      goto LABEL_4;
    }

    sub_1000077C0((v0 + 152), v0 + 112);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_10066BAB0(0, v4[2] + 1, 1, v4);
    }

    v6 = v4[2];
    v5 = v4[3];
    if (v6 >= v5 >> 1)
    {
      v4 = sub_10066BAB0((v5 > 1), v6 + 1, 1, v4);
    }

    v4[2] = v6 + 1;
    sub_1000077C0((v0 + 112), &v4[5 * v6 + 4]);
LABEL_5:
    v3 += 40;
    --v2;
  }

  while (v2);

  v7 = v4[2];
  if (!v7)
  {
    goto LABEL_21;
  }

LABEL_14:
  v22 = _swiftEmptyArrayStorage;
  sub_1003BD684(0, v7, 0);
  v8 = _swiftEmptyArrayStorage;
  v9 = (v4 + 4);
  do
  {
    sub_100009864(v9, v0 + 32);
    sub_10000E3E8((v0 + 32), *(v0 + 56));
    *(v0 + 16) = sub_100799184();
    *(v0 + 24) = v10;
    v22 = v8;
    v12 = v8[2];
    v11 = v8[3];
    if (v12 >= v11 >> 1)
    {
      sub_1003BD684((v11 > 1), v12 + 1, 1);
      v8 = v22;
    }

    v8[2] = v12 + 1;
    v13 = &v8[7 * v12];
    v14 = *(v0 + 16);
    v15 = *(v0 + 32);
    v16 = *(v0 + 48);
    v13[10] = *(v0 + 64);
    *(v13 + 3) = v15;
    *(v13 + 4) = v16;
    *(v13 + 2) = v14;
    v9 += 40;
    --v7;
  }

  while (v7);

  if (v8[2])
  {
LABEL_19:
    sub_1001F1160(&unk_100ADAD20);
    v17 = sub_1007A3924();
    goto LABEL_23;
  }

LABEL_22:
  v17 = _swiftEmptyDictionarySingleton;
LABEL_23:
  v22 = v17;

  sub_100405D40(v18, 1, &v22);

  v19 = v22;
  v20 = *(v0 + 8);

  return v20(v19);
}

uint64_t sub_100406AAC(uint64_t a1)
{
  v3 = *(sub_1007974F4() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  sub_1001F1160(&qword_100AE2220);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);

  return sub_100403904(a1, v5, v6, v1 + v4);
}

uint64_t sub_100406BD8(uint64_t a1)
{
  v3 = *(sub_1007974F4() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_1001F1160(&qword_100AE2228);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];

  return sub_1004034B4(a1, v5, v6, v7, v1 + v4);
}

uint64_t sub_100406CC0(uint64_t a1)
{
  v3 = *(sub_1007974F4() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_10040311C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100406D38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE2260);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100406DF4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_100406E3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100406E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1001F1160(&unk_100AEEF40);
  __chkstk_darwin(v5 - 8);
  v7 = &v17[-v6 - 8];
  v8 = sub_10079B264();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_100009864(a1, v17);
  sub_1001F1160(&qword_100AE2290);
  v12 = swift_dynamicCast();
  v13 = *(v9 + 56);
  if (v12)
  {
    v13(v7, 0, 1, v8);
    (*(v9 + 32))(v11, v7, v8);
    sub_10040727C(v2, a2);
    v14 = sub_10079B214();
    result = (*(v9 + 8))(v11, v8);
    *(a2 + 16) = v14 & 1;
  }

  else
  {
    v13(v7, 1, 1, v8);
    sub_100407214(v7);
    return sub_10040727C(v2, a2);
  }

  return result;
}

void sub_100407080()
{
  sub_1007A3C14(*v0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1007A3C14(Strong);
    swift_unknownObjectRelease();
  }

  sub_1007A3C24(*(v0 + 16));
}

id sub_1004070DC()
{
  sub_10040727C(v0, v4);
  v1 = objc_allocWithZone(type metadata accessor for SidebarSearchFieldContentView());
  v2 = sub_100602820(v4);
  sub_1004072B4();
  return v2;
}

Swift::Int sub_100407138()
{
  sub_1007A3C04();
  sub_100407080();
  return sub_1007A3C44();
}

Swift::Int sub_10040717C()
{
  sub_1007A3C04();
  sub_100407080();
  return sub_1007A3C44();
}

unint64_t sub_1004071C0()
{
  result = qword_100AE2280;
  if (!qword_100AE2280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2280);
  }

  return result;
}

uint64_t sub_100407214(uint64_t a1)
{
  v2 = sub_1001F1160(&unk_100AEEF40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1004072B4()
{
  result = qword_100AE2298;
  if (!qword_100AE2298)
  {
    type metadata accessor for SidebarSearchFieldContentView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2298);
  }

  return result;
}

uint64_t sub_10040730C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v6)
    {
      v7 = v6;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (Strong == v7)
      {
        goto LABEL_8;
      }

LABEL_10:
      v8 = 0;
      return v8 & 1;
    }

LABEL_9:
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  if (v6)
  {
    goto LABEL_9;
  }

LABEL_8:
  v8 = *(a1 + 16) ^ *(a2 + 16) ^ 1;
  return v8 & 1;
}

id sub_1004073B4()
{
  v2 = [v0 activeStoreAccount];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 ams_DSID];
    if (v4)
    {
      v1 = v4;
    }

    else
    {
      sub_10040748C();
      swift_allocError();
      *v6 = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_10040748C();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
  }

  return v1;
}

unint64_t sub_10040748C()
{
  result = qword_100AE22A0;
  if (!qword_100AE22A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE22A0);
  }

  return result;
}

unint64_t sub_1004074F4()
{
  result = qword_100AE22A8;
  if (!qword_100AE22A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE22A8);
  }

  return result;
}

unint64_t sub_10040754C()
{
  result = qword_100AE22B0;
  if (!qword_100AE22B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE22B0);
  }

  return result;
}

unint64_t sub_1004075A4()
{
  result = qword_100AE22B8;
  if (!qword_100AE22B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE22B8);
  }

  return result;
}

uint64_t sub_100407630()
{
  v0 = sub_1007967F4();
  v25 = *(v0 - 8);
  v26 = v0;
  __chkstk_darwin(v0);
  v2 = (&v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_100796814();
  v27 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100796CF4();
  v5 = *(v23 - 8);
  __chkstk_darwin(v23);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v21 - v16;
  v22 = v3;
  sub_100009A38(v3, qword_100B23320);
  v21 = sub_100008B98(v3, qword_100B23320);
  sub_1007A2154();
  sub_100796C94();
  (*(v12 + 16))(v14, v17, v11);
  v18 = v23;
  (*(v5 + 16))(v7, v10, v23);
  *v2 = type metadata accessor for BundleFinder();
  (*(v25 + 104))(v2, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v26);
  v19 = v24;
  sub_100796834();
  (*(v5 + 8))(v10, v18);
  (*(v12 + 8))(v17, v11);
  return (*(v27 + 32))(v21, v19, v22);
}

uint64_t sub_1004079D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  sub_1007A26F4();
  v4[9] = sub_1007A26E4();
  v6 = sub_1007A2694();

  return _swift_task_switch(sub_100407A70, v6, v5);
}

uint64_t sub_100407A70()
{

  v1 = [objc_opt_self() delegate];
  v2 = [v1 menuController];

  v3 = sub_1005C99B8();
  if (v3)
  {
    sub_100795DF4();
    v4 = &selRef_books_decreaseSize_;
    if (!*(v0 + 16))
    {
      v4 = &selRef_books_increaseSize_;
    }

    v5 = *v4;
    if ([v3 canPerformAction:*v4 withSender:0])
    {
      v7 = *(v0 + 56);
      v6 = *(v0 + 64);
      *(v0 + 16) = *(v0 + 48);
      *(v0 + 24) = v7;
      *(v0 + 32) = v6;

      [v3 performSelector:v5 withObject:sub_1007A3B04()];
      swift_unknownObjectRelease();
      sub_100795D24();

      v8 = *(v0 + 8);
      goto LABEL_9;
    }

    sub_1001FE9A0();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
  }

  else
  {
    sub_1001FE9A0();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
  }

  v8 = *(v0 + 8);
LABEL_9:

  return v8();
}

uint64_t sub_100407C80()
{
  v0 = sub_1001F1160(&qword_100AE2300);
  __chkstk_darwin(v0 - 8);
  v1 = sub_1001F1160(&qword_100AE2308);
  __chkstk_darwin(v1);
  sub_1004080A4();
  sub_1007961D4();
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  sub_1007961C4(v3);
  swift_getKeyPath();
  sub_1001F1160(&qword_100AE2310);
  sub_1007961B4();

  v4._object = 0x80000001008D3650;
  v4._countAndFlagsBits = 0xD000000000000014;
  sub_1007961C4(v4);
  swift_getKeyPath();
  sub_1001F1160(&qword_100AE2318);
  sub_1007961B4();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  sub_1007961C4(v5);
  sub_1007961F4();
  return sub_1007961A4();
}

uint64_t sub_100407E7C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100AD1588 != -1)
  {
    swift_once();
  }

  v2 = sub_100796814();
  v3 = sub_100008B98(v2, qword_100B23320);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100407F28(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002812C;

  return sub_1004079D4(a1, v4, v5, v6);
}

uint64_t sub_100407FDC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100408108();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_100408008(uint64_t a1)
{
  v2 = sub_1004080A4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100408048()
{
  result = qword_100AE22C0;
  if (!qword_100AE22C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE22C0);
  }

  return result;
}

unint64_t sub_1004080A4()
{
  result = qword_100AE22C8;
  if (!qword_100AE22C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE22C8);
  }

  return result;
}

uint64_t sub_100408108()
{
  v86 = sub_1007967F4();
  v92 = *(v86 - 8);
  __chkstk_darwin(v86);
  v89 = (&v54 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = sub_100796CF4();
  v91 = *(v70 - 8);
  __chkstk_darwin(v70);
  v83 = &v54 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v67 = &v54 - v3;
  v68 = sub_1007A21D4();
  v90 = *(v68 - 8);
  __chkstk_darwin(v68);
  v66 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v82 = &v54 - v6;
  v7 = sub_100796814();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v71 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v87 = &v54 - v11;
  v88 = sub_100796274();
  v12 = *(v88 - 8);
  __chkstk_darwin(v88);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1001F1160(&qword_100AD5CB0);
  __chkstk_darwin(v15 - 8);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v54 - v19;
  v21 = sub_1001F1160(&qword_100AD5CC0);
  __chkstk_darwin(v21 - 8);
  v23 = &v54 - v22;
  v79 = sub_1001F1160(&qword_100AE22E0);
  v80 = *(v8 + 56);
  v56 = v7;
  v80(v23, 1, 1, v7);
  v57 = v8 + 56;
  LOBYTE(v93) = 2;
  v24 = sub_100795CE4();
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v27 = v25 + 56;
  v26(v20, 1, 1, v24);
  v26(v17, 1, 1, v24);
  v84 = enum case for InputConnectionBehavior.default(_:);
  v85 = *(v12 + 104);
  v81 = v14;
  v85(v14);
  v64 = v12 + 104;
  sub_100408C54();
  v69 = sub_100795E34();
  sub_1001F1160(&qword_100AE22F0);
  v74 = v23;
  v80(v23, 1, 1, v7);
  v99 = 0;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v58 = v20;
  v61 = v24;
  v62 = v26;
  v63 = v27;
  v26(v20, 1, 1, v24);
  v59 = v17;
  v26(v17, 1, 1, v24);
  (v85)(v81, v84, v88);
  sub_100408CA8();
  v65 = sub_100795E64();
  v60 = sub_1001F1160(&qword_100AD57C8);
  v28 = v82;
  sub_1007A2154();
  v29 = v67;
  sub_100796C94();
  v30 = v90;
  v31 = *(v90 + 16);
  v73 = v90 + 16;
  v75 = v31;
  v32 = v66;
  v33 = v68;
  v31(v66, v28, v68);
  v34 = v91;
  v35 = *(v91 + 16);
  v78 = v91 + 16;
  v79 = v35;
  v36 = v70;
  v35(v83, v29, v70);
  v77 = type metadata accessor for BundleFinder();
  v37 = v89;
  *v89 = v77;
  v76 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v54 = *(v92 + 104);
  v92 += 104;
  v38 = v86;
  v54(v37);
  sub_100796834();
  v39 = *(v34 + 8);
  v91 = v34 + 8;
  v40 = v36;
  v39(v29, v36);
  v55 = v39;
  v41 = *(v30 + 8);
  v90 = v30 + 8;
  v72 = v41;
  v42 = v82;
  v43 = v33;
  v41(v82, v33);
  sub_1007A2154();
  sub_100796C94();
  v75(v32, v42, v33);
  v44 = v83;
  v79(v83, v29, v36);
  v45 = v89;
  *v89 = v77;
  v46 = v38;
  v47 = v54;
  (v54)(v45, v76, v46);
  v48 = v74;
  sub_100796834();
  v39(v29, v40);
  v72(v42, v43);
  v80(v48, 0, 1, v56);
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  sub_1007A2154();
  sub_100796C94();
  v75(v32, v42, v43);
  v79(v44, v29, v40);
  v49 = v89;
  *v89 = v77;
  (v47)(v49, v76, v86);
  sub_100796834();
  v55(v29, v40);
  v72(v42, v43);
  v50 = v58;
  sub_100795CF4();
  v51 = v61;
  v52 = v62;
  v62(v50, 0, 1, v61);
  v52(v59, 1, 1, v51);
  (v85)(v81, v84, v88);
  sub_10020E834();
  sub_100795E74();
  return v69;
}

unint64_t sub_100408C54()
{
  result = qword_100AE22E8;
  if (!qword_100AE22E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE22E8);
  }

  return result;
}

unint64_t sub_100408CA8()
{
  result = qword_100AE22F8;
  if (!qword_100AE22F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE22F8);
  }

  return result;
}

uint64_t sub_100408CFC(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1007A35E4();
    sub_1001F1160(&unk_100AE2450);
    sub_1007A2864();
    result = v23;
    v2 = v24;
    v3 = v25;
    v4 = v26;
    v5 = v27;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v21 = _swiftEmptyArrayStorage;
  v22 = result;
LABEL_8:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (result < 0)
    {
      if (!sub_1007A3654() || (sub_1001F1160(&unk_100AE2450), swift_dynamicCast(), v4 = v9, v5 = v10, !v28))
      {
LABEL_24:
        sub_10004DC54();
        return v21;
      }

      goto LABEL_18;
    }

    v11 = v9;
    v12 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v5 = (v12 - 1) & v12;
    v13 = *(*(result + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v13)
    {
      goto LABEL_24;
    }

LABEL_18:
    v14 = sub_1007A3514();
    v16 = v15;

    v9 = v4;
    v10 = v5;
    result = v22;
    if (v16)
    {
      v17 = v21;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_10000B3D8(0, *(v21 + 2) + 1, 1, v21);
      }

      v19 = *(v17 + 2);
      v18 = *(v17 + 3);
      if (v19 >= v18 >> 1)
      {
        v17 = sub_10000B3D8((v18 > 1), v19 + 1, 1, v17);
      }

      *(v17 + 2) = v19 + 1;
      v21 = v17;
      v20 = &v17[16 * v19];
      *(v20 + 4) = v14;
      *(v20 + 5) = v16;
      result = v22;
      goto LABEL_8;
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100408F6C(uint64_t a1)
{
  result = sub_1007A2854();
  v3 = 0;
  v11 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = sub_1006E64E4(&v10, *(*(a1 + 48) + ((v8 << 9) | (8 * v9)))))
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v11;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100409064(uint64_t a1)
{
  result = sub_1007A2854();
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_1006E6140(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1004091A8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void SeriesListModeManager.init()()
{
  *&v0[OBJC_IVAR____TtC5Books21SeriesListModeManager_monitor] = 0;
  v1 = OBJC_IVAR____TtC5Books21SeriesListModeManager_filterPublishers;
  sub_1001F1160(&unk_100AD1F40);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = _swiftEmptyDictionarySingleton;
  *&v0[v1] = v2;
  v3 = OBJC_IVAR____TtC5Books21SeriesListModeManager_sortPublishers;
  sub_1001F1160(&qword_100AE2340);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = _swiftEmptyDictionarySingleton;
  *&v0[v3] = v4;
  v5 = OBJC_IVAR____TtC5Books21SeriesListModeManager_filterOptions;
  sub_1001F1160(&unk_100AD1F50);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = _swiftEmptyDictionarySingleton;
  *&v0[v5] = v6;
  v7 = OBJC_IVAR____TtC5Books21SeriesListModeManager_sortOrders;
  sub_1001F1160(&qword_100AE2360);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = _swiftEmptyDictionarySingleton;
  *&v0[v7] = v8;
  v9 = OBJC_IVAR____TtC5Books21SeriesListModeManager_previousSortOrders;
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = _swiftEmptyDictionarySingleton;
  *&v0[v9] = v10;
  v30.receiver = v0;
  v30.super_class = type metadata accessor for SeriesListModeManager();
  v11 = objc_msgSendSuper2(&v30, "init");
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 defaultManager];
  v15 = [v14 persistentStoreCoordinator];
  if (v15)
  {
    v16 = v15;
    v17 = [v12 predicateForContainerLibraryAssets];
    sub_1001F1160(&unk_100AD8160);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100811360;
    *(inited + 32) = swift_getKeyPath();
    *(inited + 40) = swift_getKeyPath();
    v19 = sub_10040E230(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v20 = v13;
    v21 = sub_100408CFC(v19);
    sub_10040E374(v21);

    v22 = objc_allocWithZone(BCManagedObjectIDMonitor);
    sub_1002BACBC();
    v23 = v16;
    sub_1001F1160(&qword_100AE2370);
    sub_1007A22E4();
    v24 = sub_1007A2214();

    v25 = v17;
    v26 = sub_1007A2214();
    isa = sub_1007A2824().super.isa;
    v28 = [v22 initWithContext:0 coordinator:v23 entityName:v24 predicate:v25 mapProperty:v26 propertiesOfInterest:isa observer:v20];

    if (v28)
    {

      v29 = *&v20[OBJC_IVAR____TtC5Books21SeriesListModeManager_monitor];
      *&v20[OBJC_IVAR____TtC5Books21SeriesListModeManager_monitor] = v28;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id SeriesListModeManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SeriesListModeManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004096B4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SeriesListModeManager();
  result = sub_10079B8B4();
  *a1 = result;
  return result;
}

uint64_t sub_1004096F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v6[8] = sub_1001F1160(&qword_100AE2380);
  v6[9] = swift_task_alloc();
  v7 = sub_1007991C4();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  v6[13] = sub_1001F1160(&qword_100AE2378);
  v6[14] = swift_task_alloc();
  v8 = sub_1007974A4();
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();
  sub_1007A26F4();
  v6[18] = sub_1007A26E4();
  v10 = sub_1007A2694();
  v6[19] = v10;
  v6[20] = v9;

  return _swift_task_switch(sub_1004098C4, v10, v9);
}

uint64_t sub_1004098C4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 168) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_1004099BC, 0, 0);
  }

  else
  {

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1004099BC()
{
  v1 = *(v0 + 168);
  v7 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  *(v2 + 16) = v7;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 184) = v3;
  *v3 = v0;
  v3[1] = sub_100409ABC;
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);

  return withCheckedContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000013, 0x80000001008D36E0, sub_10040F88C, v2, v5);
}

uint64_t sub_100409ABC()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return _swift_task_switch(sub_100409C00, v3, v2);
}

uint64_t sub_100409C00()
{
  v11 = v0;
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100007840(v3, &qword_100AE2378);
  }

  else
  {
    v4 = v0[21];
    v6 = v0[6];
    v5 = v0[7];
    (*(v2 + 32))(v0[17], v3, v1);
    v7 = *(v4 + OBJC_IVAR____TtC5Books21SeriesListModeManager_filterPublishers);

    os_unfair_lock_lock(v7 + 6);
    sub_10040D328(&v7[4], v6, v5, sub_10040F854, &v10);
    os_unfair_lock_unlock(v7 + 6);
    v8 = v10;

    if (v8)
    {
      sub_10079B8C4();
    }

    (*(v0[16] + 8))(v0[17], v0[15]);
  }

  v0[24] = 0;

  return _swift_task_switch(sub_100409D98, 0, 0);
}

uint64_t sub_100409D98()
{
  v1 = *(v0 + 168);
  v7 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  *(v2 + 16) = v7;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 208) = v3;
  *v3 = v0;
  v3[1] = sub_100409E98;
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);

  return withCheckedContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000010, 0x80000001008D3700, sub_10040F888, v2, v5);
}

uint64_t sub_100409E98()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return _swift_task_switch(sub_100409FDC, v3, v2);
}

void sub_100409FDC()
{
  v17 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 72);

    sub_100007840(v4, &qword_100AE2380);
  }

  else
  {
    v6 = *(v0 + 192);
    v7 = *(v0 + 168);
    v9 = *(v0 + 48);
    v8 = *(v0 + 56);
    (*(*(v0 + 88) + 32))(*(v0 + 96), *(v0 + 72), *(v0 + 80));
    v10 = *(v7 + OBJC_IVAR____TtC5Books21SeriesListModeManager_sortPublishers);

    os_unfair_lock_lock(v10 + 6);
    sub_10040D328(&v10[4], v9, v8, sub_10040F854, &v16);
    os_unfair_lock_unlock(v10 + 6);
    if (v6)
    {
      return;
    }

    v11 = v16;

    v12 = *(v0 + 168);
    v14 = *(v0 + 88);
    v13 = *(v0 + 96);
    v15 = *(v0 + 80);
    if (v11)
    {
      sub_10079B8C4();

      (*(v14 + 8))(v13, v15);
    }

    else
    {
      (*(v14 + 8))(*(v0 + 96), *(v0 + 80));
    }
  }

  v5 = *(v0 + 8);

  v5();
}

uint64_t SeriesListModeManager.filterOption(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_10040A1F4, 0, 0);
}

uint64_t sub_10040A1F4()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = sub_1001F1160(&qword_100AE2378);
  *v4 = v0;
  v4[1] = sub_10040F830;
  v6 = *(v0 + 16);

  return withCheckedContinuation<A>(isolation:function:_:)(v6, 0, 0, 0xD000000000000013, 0x80000001008D36E0, sub_10040EE00, v2, v5);
}

uint64_t SeriesListModeManager.sortOrder(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_10040A328, 0, 0);
}

uint64_t sub_10040A328()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = sub_1001F1160(&qword_100AE2380);
  *v4 = v0;
  v4[1] = sub_10040F830;
  v6 = *(v0 + 16);

  return withCheckedContinuation<A>(isolation:function:_:)(v6, 0, 0, 0xD000000000000010, 0x80000001008D3700, sub_10040EE0C, v2, v5);
}

uint64_t SeriesListModeManager.filterPublisher(for:handle:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Books21SeriesListModeManager_filterPublishers);

  os_unfair_lock_lock((v1 + 24));
  sub_10040EE18((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v4;

  return v2;
}

uint64_t sub_10040A52C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v24 = a4;
  v26 = a5;
  v25 = sub_1001F1160(&qword_100AE2408);
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v24 - v9;
  v11 = *a1;
  if (*(*a1 + 16) && (v12 = sub_10000E53C(a2, a3), (v13 & 1) != 0))
  {
    v14 = *(v11 + 56) + 16 * v12;
    v15 = *(v14 + 8);
    v16 = *v14;
  }

  else
  {
    v16 = [objc_opt_self() hashTableWithOptions:517];
    sub_1001F1160(&qword_100AE2410);
    swift_allocObject();
    v15 = sub_10079B8D4();
  }

  [v16 addObject:{v24, v24}];
  if (!*(v11 + 16) || (sub_10000E53C(a2, a3), (v17 & 1) == 0))
  {

    v18 = v16;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *a1;
    sub_1002F58A0(v18, v15, a2, a3, isUniquelyReferenced_nonNull_native);

    v11 = v27;
  }

  v20 = sub_10040DE18(v11, sub_1002C6A04);

  *a1 = v20;
  v27 = v15;
  sub_1001F1160(&qword_100AE2410);
  sub_100005920(&qword_100AE2418, &qword_100AE2410);
  sub_10040F508(&qword_100AE2420, &type metadata accessor for SeriesListFilterOption);
  sub_10079BAF4();
  sub_100005920(&qword_100AE2428, &qword_100AE2408);
  v21 = v25;
  v22 = sub_10079BA14();

  result = (*(v8 + 8))(v10, v21);
  *v26 = v22;
  return result;
}

uint64_t SeriesListModeManager.sortPublisher(for:handle:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Books21SeriesListModeManager_sortPublishers);

  os_unfair_lock_lock((v1 + 24));
  sub_10040EE38((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v4;

  return v2;
}

uint64_t sub_10040A8DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v24 = a4;
  v26 = a5;
  v25 = sub_1001F1160(&qword_100AE23D0);
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v24 - v9;
  v11 = *a1;
  if (*(*a1 + 16) && (v12 = sub_10000E53C(a2, a3), (v13 & 1) != 0))
  {
    v14 = *(v11 + 56) + 16 * v12;
    v15 = *(v14 + 8);
    v16 = *v14;
  }

  else
  {
    v16 = [objc_opt_self() hashTableWithOptions:517];
    sub_1001F1160(&qword_100AE23D8);
    swift_allocObject();
    v15 = sub_10079B8D4();
  }

  [v16 addObject:{v24, v24}];
  if (!*(v11 + 16) || (sub_10000E53C(a2, a3), (v17 & 1) == 0))
  {

    v18 = v16;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *a1;
    sub_1002F58F8(v18, v15, a2, a3, isUniquelyReferenced_nonNull_native);

    v11 = v27;
  }

  v20 = sub_10040DE18(v11, sub_1002C6A18);

  *a1 = v20;
  v27 = v15;
  sub_1001F1160(&qword_100AE23D8);
  sub_100005920(&qword_100AE23E0, &qword_100AE23D8);
  sub_10040F508(&qword_100AE23E8, &type metadata accessor for SeriesListSortOrder);
  sub_10079BAF4();
  sub_100005920(&qword_100AE23F0, &qword_100AE23D0);
  v21 = v25;
  v22 = sub_10079BA14();

  result = (*(v8 + 8))(v10, v21);
  *v26 = v22;
  return result;
}

void SeriesListModeManager.setPreviousSortOrder(_:for:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Books21SeriesListModeManager_previousSortOrders);
  os_unfair_lock_lock(v1 + 6);
  sub_10040EE58(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_10040AC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1001F1160(&qword_100AE2380);
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - v8;
  sub_1000077D8(a4, &v11 - v8, &qword_100AE2380);

  return sub_1005E9564(v9, a2, a3);
}

void SeriesListModeManager.previousSortOrder(for:)(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC5Books21SeriesListModeManager_previousSortOrders);
  os_unfair_lock_lock((v3 + 24));
  sub_10040EE78((v3 + 16), a1);
  os_unfair_lock_unlock((v3 + 24));
}

void SeriesListModeManager.filterOptionSync(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = [objc_opt_self() defaultManager];
  if (![objc_opt_self() isMainThread])
  {
    v21 = 0;
    v22 = 1;
    v10 = swift_allocObject();
    v10[2] = v6;
    v10[3] = a1;
    v10[4] = a2;
    v10[5] = &v21;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_10040F844;
    *(v11 + 24) = v10;
    aBlock[4] = sub_10040EEA8;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1004091A8;
    aBlock[3] = &unk_100A1B090;
    v12 = _Block_copy(aBlock);
    v13 = v6;

    [v13 performBackgroundReadOnlyBlockAndWait:v12];
    _Block_release(v12);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else if (v22)
    {

      v15 = sub_1007974A4();
      (*(*(v15 - 8) + 56))(a3, 1, 1, v15);
    }

    else
    {
      sub_100797484();
    }

    return;
  }

  v7 = sub_1007A2214();
  v19 = [v6 libraryAssetOnMainQueueWithAssetID:v7];

  if (v19)
  {
    v8 = [v19 seriesFilterMode];
    if (v8)
    {
      v9 = v8;
      [v8 integerValue];

      sub_100797484();

      return;
    }

    v16 = v19;
  }

  else
  {
    v16 = v6;
  }

  v17 = sub_1007974A4();
  v18 = *(*(v17 - 8) + 56);

  v18(a3, 1, 1, v17);
}

uint64_t SeriesListModeManager.sortOrderSync(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = [objc_opt_self() defaultManager];
  if ([objc_opt_self() isMainThread])
  {
    v7 = sub_1007A2214();
    v8 = [v6 libraryAssetOnMainQueueWithAssetID:v7];

    if (v8)
    {
      v9 = [v8 seriesSortMode];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 integerValue];

        if (v11 <= 4)
        {
          v12 = **(&off_100A1B3A0 + v11);
          v13 = sub_1007991C4();
          v28 = *(v13 - 8);
          (*(v28 + 104))(a3, v12, v13);
          v14 = *(v28 + 56);
          v15 = a3;
          v16 = 0;
          v17 = v13;
LABEL_16:

          return v14(v15, v16, 1, v17);
        }

LABEL_15:
        v27 = sub_1007991C4();
        v14 = *(*(v27 - 8) + 56);
        v17 = v27;
        v15 = a3;
        v16 = 1;
        goto LABEL_16;
      }
    }

    else
    {
      v8 = v6;
    }

    goto LABEL_15;
  }

  v30 = 0;
  v31 = 1;
  v18 = swift_allocObject();
  v18[2] = v6;
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = &v30;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_10040EF18;
  *(v19 + 24) = v18;
  aBlock[4] = sub_10040F8D8;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1004091A8;
  aBlock[3] = &unk_100A1B108;
  v20 = _Block_copy(aBlock);
  v21 = v6;

  [v21 performBackgroundReadOnlyBlockAndWait:v20];

  _Block_release(v20);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
  }

  else
  {
    if ((v31 & 1) != 0 || v30 > 4)
    {
      v26 = sub_1007991C4();
      (*(*(v26 - 8) + 56))(a3, 1, 1, v26);
    }

    else
    {
      v23 = **(&off_100A1B3A0 + v30);
      v24 = sub_1007991C4();
      v25 = *(v24 - 8);
      (*(v25 + 104))(a3, v23, v24);
      (*(v25 + 56))(a3, 0, 1, v24);
    }
  }

  return result;
}

void sub_10040B518(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1007A2214();
  v9 = [a2 libraryAssetWithAssetID:v8 inManagedObjectContext:a1];

  if (v9)
  {
    v10 = [v9 seriesFilterMode];
    v11 = v10 == 0;
    if (v10)
    {
      v12 = v10;
      v13 = [v10 integerValue];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
    v11 = 1;
  }

  *a5 = v13;
  *(a5 + 8) = v11;
}

void sub_10040B5E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1001F1160(&qword_100AE2440);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = aBlock - v11;
  v13 = [objc_opt_self() defaultManager];
  (*(v9 + 16))(v12, a1, v8);
  v14 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = v13;
  *(v15 + 3) = a2;
  *(v15 + 4) = a3;
  (*(v9 + 32))(&v15[v14], v12, v8);
  *&v15[(v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8] = a4;
  aBlock[4] = sub_10040F654;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100201C54;
  aBlock[3] = &unk_100A1B300;
  v16 = _Block_copy(aBlock);
  v17 = v13;

  v18 = a4;

  [v17 performBackgroundReadOnlyBlock:v16];
  _Block_release(v16);
}

uint64_t sub_10040B800(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a6;
  v39 = a5;
  v10 = sub_1001F1160(&qword_100AE2378);
  __chkstk_darwin(v10 - 8);
  v38 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v36 = &v35 - v13;
  v14 = sub_1001F1160(&qword_100AE2448);
  __chkstk_darwin(v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v35 - v18;
  __chkstk_darwin(v20);
  v22 = &v35 - v21;
  __chkstk_darwin(v23);
  v25 = &v35 - v24;
  v26 = sub_1007A2214();
  v27 = [a2 libraryAssetWithAssetID:v26 inManagedObjectContext:a1];

  if (v27 && (v28 = [v27 seriesFilterMode]) != 0)
  {
    v29 = v28;
    [v28 integerValue];

    sub_100797484();
    swift_storeEnumTagMultiPayload();
    sub_1000077D8(v25, v22, &qword_100AE2448);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1001F1160(&qword_100AE2440);
      sub_1007A26A4();
    }

    else
    {
      sub_10020B3C8(v22, v36, &qword_100AE2378);
      sub_1001F1160(&qword_100AE2440);
      sub_1007A26B4();
    }

    v32 = &qword_100AE2448;
    v33 = v25;
  }

  else
  {
    v30 = *(v37 + OBJC_IVAR____TtC5Books21SeriesListModeManager_filterOptions);
    __chkstk_darwin(v28);
    *(&v35 - 2) = a3;
    *(&v35 - 1) = a4;
    os_unfair_lock_lock((v30 + 24));
    v31 = v38;
    sub_10040F738((v30 + 16), v38);
    os_unfair_lock_unlock((v30 + 24));
    sub_1000077D8(v31, v19, &qword_100AE2378);
    swift_storeEnumTagMultiPayload();
    sub_1000077D8(v19, v16, &qword_100AE2448);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1001F1160(&qword_100AE2440);
      sub_1007A26A4();

      sub_100007840(v19, &qword_100AE2448);
      v32 = &qword_100AE2378;
      v33 = v31;
    }

    else
    {
      sub_10020B3C8(v16, v36, &qword_100AE2378);
      sub_1001F1160(&qword_100AE2440);
      sub_1007A26B4();

      sub_100007840(v19, &qword_100AE2448);
      v33 = v31;
      v32 = &qword_100AE2378;
    }
  }

  return sub_100007840(v33, v32);
}

void sub_10040BC58(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1001F1160(&qword_100AE2430);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = aBlock - v11;
  v13 = [objc_opt_self() defaultManager];
  (*(v9 + 16))(v12, a1, v8);
  v14 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = v13;
  *(v15 + 3) = a2;
  *(v15 + 4) = a3;
  (*(v9 + 32))(&v15[v14], v12, v8);
  *&v15[(v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8] = a4;
  aBlock[4] = sub_10040F550;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100201C54;
  aBlock[3] = &unk_100A1B2B0;
  v16 = _Block_copy(aBlock);
  v17 = v13;

  v18 = a4;

  [v17 performBackgroundReadOnlyBlock:v16];
  _Block_release(v16);
}

uint64_t sub_10040BE70(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a6;
  v44 = a5;
  v10 = sub_1001F1160(&qword_100AE2380);
  __chkstk_darwin(v10 - 8);
  v43 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v41 = &v40 - v13;
  v14 = sub_1001F1160(&qword_100AE2438);
  __chkstk_darwin(v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v40 - v18;
  __chkstk_darwin(v20);
  v22 = &v40 - v21;
  __chkstk_darwin(v23);
  v25 = &v40 - v24;
  v26 = sub_1007A2214();
  v27 = [a2 libraryAssetWithAssetID:v26 inManagedObjectContext:a1];

  if (v27 && (v28 = [v27 seriesSortMode]) != 0)
  {
    v29 = v28;
    v30 = [v28 integerValue];

    if (v30 >= 5)
    {
      v38 = sub_1007991C4();
      (*(*(v38 - 8) + 56))(v25, 1, 1, v38);
    }

    else
    {
      v31 = **(&off_100A1B3A0 + v30);
      v32 = sub_1007991C4();
      v33 = *(v32 - 8);
      (*(v33 + 104))(v25, v31, v32);
      sub_1007991C4();
      (*(v33 + 56))(v25, 0, 1, v32);
    }

    swift_storeEnumTagMultiPayload();
    sub_1000077D8(v25, v22, &qword_100AE2438);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1001F1160(&qword_100AE2430);
      sub_1007A26A4();
    }

    else
    {
      sub_10020B3C8(v22, v41, &qword_100AE2380);
      sub_1001F1160(&qword_100AE2430);
      sub_1007A26B4();
    }

    v36 = &qword_100AE2438;
    v37 = v25;
  }

  else
  {
    v34 = *(v42 + OBJC_IVAR____TtC5Books21SeriesListModeManager_sortOrders);
    __chkstk_darwin(v28);
    *(&v40 - 2) = a3;
    *(&v40 - 1) = a4;
    os_unfair_lock_lock((v34 + 24));
    v35 = v43;
    sub_10040F8C0((v34 + 16), v43);
    os_unfair_lock_unlock((v34 + 24));
    sub_1000077D8(v35, v19, &qword_100AE2380);
    swift_storeEnumTagMultiPayload();
    sub_1000077D8(v19, v16, &qword_100AE2438);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1001F1160(&qword_100AE2430);
      sub_1007A26A4();

      sub_100007840(v19, &qword_100AE2438);
      v36 = &qword_100AE2380;
      v37 = v35;
    }

    else
    {
      sub_10020B3C8(v16, v41, &qword_100AE2380);
      sub_1001F1160(&qword_100AE2430);
      sub_1007A26B4();

      sub_100007840(v19, &qword_100AE2438);
      v37 = v35;
      v36 = &qword_100AE2380;
    }
  }

  return sub_100007840(v37, v36);
}

uint64_t sub_10040C390@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v7 = *a1;
  if (*(*a1 + 16) && (v8 = sub_10000E53C(a2, a3), (v9 & 1) != 0))
  {
    v10 = v8;
    v11 = *(v7 + 56);
    v12 = a4(0);
    v13 = *(v12 - 8);
    (*(v13 + 16))(a5, v11 + *(v13 + 72) * v10, v12);
    return (*(v13 + 56))(a5, 0, 1, v12);
  }

  else
  {
    v15 = a4(0);
    return (*(*(v15 - 8) + 56))(a5, 1, 1, v15);
  }
}

uint64_t SeriesListModeManager.setFilterOption(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_10040C500, 0, 0);
}

uint64_t sub_10040C500()
{
  v1 = *(v0 + 40);
  v6 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = v6;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_10040C610;

  return withCheckedContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000017, 0x80000001008D3720, sub_10040EF48, v3, &type metadata for () + 8);
}

uint64_t sub_10040C610()
{

  return _swift_task_switch(sub_10040F890, 0, 0);
}

uint64_t sub_10040C728(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1007A2214();
  v12 = [a2 libraryAssetWithAssetID:v11 inManagedObjectContext:a1];

  if (v12)
  {
    sub_100797494();
    isa = sub_1007A2884().super.super.isa;
    [v12 setSeriesFilterMode:isa];
  }

  else
  {
    v15 = *(a6 + OBJC_IVAR____TtC5Books21SeriesListModeManager_filterOptions);
    __chkstk_darwin(v13);
    os_unfair_lock_lock(v15 + 6);
    sub_10040F4B0(&v15[4]);
    os_unfair_lock_unlock(v15 + 6);
    v16 = *(a6 + OBJC_IVAR____TtC5Books21SeriesListModeManager_filterPublishers);

    os_unfair_lock_lock(v16 + 6);
    sub_10040D328(&v16[4], a3, a4, sub_10040F854, &v19);
    os_unfair_lock_unlock(v16 + 6);
    v17 = v19;

    if (v17)
    {
      sub_10079B8C4();
    }
  }

  sub_1001F1160(&unk_100ADA050);
  return sub_1007A26B4();
}

uint64_t SeriesListModeManager.setSortOrder(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_10040C8F8, 0, 0);
}

uint64_t sub_10040C8F8()
{
  v1 = *(v0 + 40);
  v6 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = v6;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_10040C610;

  return withCheckedContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000014, 0x80000001008D3740, sub_10040EFAC, v3, &type metadata for () + 8);
}

void sub_10040CA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void, double), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v38 = a5;
  v39 = a8;
  v35 = a7;
  v36 = a2;
  v33 = a4;
  v34 = a1;
  v37 = a3;
  v40 = a9;
  v10 = sub_1001F1160(&unk_100ADA050);
  v31 = v10;
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v31 - v13;
  v32 = &v31 - v13;
  v15 = a6(0, v12);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v31 - v18;
  v20 = [objc_opt_self() defaultManager];
  (*(v16 + 16))(v19, v33, v15);
  (*(v11 + 16))(v14, v34, v10);
  v21 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v22 = (v17 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v11 + 80) + v22 + 8) & ~*(v11 + 80);
  v24 = swift_allocObject();
  v25 = v36;
  v26 = v37;
  *(v24 + 2) = v20;
  *(v24 + 3) = v25;
  *(v24 + 4) = v26;
  (*(v16 + 32))(&v24[v21], v19, v15);
  v27 = v38;
  *&v24[v22] = v38;
  (*(v11 + 32))(&v24[v23], v32, v31);
  aBlock[4] = v39;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100201C54;
  aBlock[3] = v40;
  v28 = _Block_copy(aBlock);
  v29 = v20;

  v30 = v27;

  [v29 performBlockOnWorkerQueue:v28];
  _Block_release(v28);
}

uint64_t sub_10040CCF0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = a7;
  v45 = a5;
  v41 = a6;
  v11 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v11 - 8);
  v43 = &v40 - v12;
  v13 = sub_1007991C4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v42 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v40 - v17;
  __chkstk_darwin(v19);
  v21 = &v40 - v20;
  v22 = sub_1007A2214();
  v23 = [a2 libraryAssetWithAssetID:v22 inManagedObjectContext:a1];

  if (!v23)
  {
    v27 = v41;
    v28 = *(v41 + OBJC_IVAR____TtC5Books21SeriesListModeManager_sortOrders);
    __chkstk_darwin(v24);
    *(&v40 - 4) = a3;
    *(&v40 - 3) = a4;
    v39 = v45;
    os_unfair_lock_lock(v28 + 6);
    sub_10040F0A4(&v28[4]);
    os_unfair_lock_unlock(v28 + 6);
    v29 = *(v27 + OBJC_IVAR____TtC5Books21SeriesListModeManager_sortPublishers);

    os_unfair_lock_lock(v29 + 6);
    sub_10040D328(&v29[4], a3, a4, sub_10040F854, &v46);
    os_unfair_lock_unlock(v29 + 6);
    v30 = v46;

    v31 = sub_1007A2744();
    v32 = v43;
    (*(*(v31 - 8) + 56))(v43, 1, 1, v31);
    v33 = v42;
    (*(v14 + 16))(v42, v45, v13);
    sub_1007A26F4();

    v34 = sub_1007A26E4();
    v35 = (*(v14 + 80) + 40) & ~*(v14 + 80);
    v36 = swift_allocObject();
    *(v36 + 2) = v34;
    *(v36 + 3) = &protocol witness table for MainActor;
    *(v36 + 4) = v30;
    (*(v14 + 32))(&v36[v35], v33, v13);
    sub_100345AA0(0, 0, v32, &unk_100823E60, v36);

LABEL_10:
    sub_1001F1160(&unk_100ADA050);
    return sub_1007A26B4();
  }

  v25 = *(v14 + 16);
  v25(v21, v45, v13);
  v25(v18, v21, v13);
  v26 = (*(v14 + 88))(v18, v13);
  if (v26 == enum case for SeriesListSortOrder.ascending(_:) || v26 == enum case for SeriesListSortOrder.descending(_:) || v26 == enum case for SeriesListSortOrder.releaseDate(_:) || v26 == enum case for SeriesListSortOrder.popular(_:) || v26 == enum case for SeriesListSortOrder.title(_:))
  {
    (*(v14 + 8))(v21, v13);
    isa = sub_1007A2884().super.super.isa;
    [v23 setSeriesSortMode:isa];

    goto LABEL_10;
  }

  result = sub_1007A38A4();
  __break(1u);
  return result;
}

uint64_t sub_10040D1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void, double), uint64_t (*a8)(char *, uint64_t, uint64_t))
{
  v13 = sub_1001F1160(a5);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v20 - v15;
  v17 = a7(0, v14);
  v18 = *(v17 - 8);
  (*(v18 + 16))(v16, a4, v17);
  (*(v18 + 56))(v16, 0, 1, v17);

  return a8(v16, a2, a3);
}

unint64_t sub_10040D328@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(id, uint64_t)@<X3>, void *a5@<X8>)
{
  v6 = *result;
  if (*(*result + 16))
  {
    result = sub_10000E53C(a2, a3);
    if (v8)
    {
      v9 = *(v6 + 56) + 16 * result;
      v11 = *v9;
      v10 = *(v9 + 8);
      v12 = *v9;
      swift_retain_n();
      result = a4(v11, v10);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  *a5 = v10;
  return result;
}

uint64_t sub_10040D3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_1007A26F4();
  v5[5] = sub_1007A26E4();
  v7 = sub_1007A2694();

  return _swift_task_switch(sub_10040D45C, v7, v6);
}

uint64_t sub_10040D45C()
{
  v1 = *(v0 + 24);

  if (v1)
  {
    sub_10079B8C4();
  }

  **(v0 + 16) = v1 == 0;
  v2 = *(v0 + 8);

  return v2();
}

void sub_10040D4DC()
{
  v1 = *(*v0 + OBJC_IVAR____TtC5Books21SeriesListModeManager_previousSortOrders);
  os_unfair_lock_lock(v1 + 6);
  sub_10040F894(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

void sub_10040D540(uint64_t a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC5Books21SeriesListModeManager_previousSortOrders);
  os_unfair_lock_lock((v3 + 24));
  sub_10040F8C0((v3 + 16), a1);
  os_unfair_lock_unlock((v3 + 24));
}

uint64_t sub_10040D5D8()
{
  v1 = *(*v0 + OBJC_IVAR____TtC5Books21SeriesListModeManager_filterPublishers);

  os_unfair_lock_lock((v1 + 24));
  sub_10040F870((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v4;

  return v2;
}

uint64_t sub_10040D658()
{
  v1 = *(*v0 + OBJC_IVAR____TtC5Books21SeriesListModeManager_sortPublishers);

  os_unfair_lock_lock((v1 + 24));
  sub_10040F858((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v4;

  return v2;
}

uint64_t sub_10040D6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return _swift_task_switch(sub_10040D700, 0, 0);
}

uint64_t sub_10040D700()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = sub_1001F1160(&qword_100AE2378);
  *v4 = v0;
  v4[1] = sub_10040D810;
  v6 = *(v0 + 16);

  return withCheckedContinuation<A>(isolation:function:_:)(v6, 0, 0, 0xD000000000000013, 0x80000001008D36E0, sub_10040F88C, v2, v5);
}

uint64_t sub_10040D810()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10040D920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return _swift_task_switch(sub_10040D948, 0, 0);
}

uint64_t sub_10040D948()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = sub_1001F1160(&qword_100AE2380);
  *v4 = v0;
  v4[1] = sub_10040F830;
  v6 = *(v0 + 16);

  return withCheckedContinuation<A>(isolation:function:_:)(v6, 0, 0, 0xD000000000000010, 0x80000001008D3700, sub_10040F888, v2, v5);
}

uint64_t sub_10040DA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return _swift_task_switch(sub_10040DA80, 0, 0);
}

uint64_t sub_10040DA80()
{
  v1 = *(v0 + 40);
  v6 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = v6;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_10040C610;

  return withCheckedContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000017, 0x80000001008D3720, sub_10040F84C, v3, &type metadata for () + 8);
}

uint64_t sub_10040DB90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return _swift_task_switch(sub_10040DBB8, 0, 0);
}

uint64_t sub_10040DBB8()
{
  v1 = *(v0 + 40);
  v6 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = v6;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_10040DCC8;

  return withCheckedContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000014, 0x80000001008D3740, sub_10040F848, v3, &type metadata for () + 8);
}

uint64_t sub_10040DCC8()
{

  return _swift_task_switch(sub_1002BA298, 0, 0);
}

unint64_t sub_10040DDE0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _sSo14BKLibraryAssetC5BooksE14SeriesSortModeO8rawValueAESgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10040DE18(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v8 = &v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_10040DF84(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_10040E1A8(v10, v6, v4, a2);

  if (!v2)
  {
    return v11;
  }

  return result;
}

uint64_t sub_10040DF84(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v20 = result;
  v21 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v24 = (v8 - 1) & v8;
LABEL_11:
    v22 = v10 | (v4 << 6);
    v13 = *(*(a3 + 56) + 16 * v22);

    v14 = v13;

    v15 = [v14 allObjects];
    sub_1007A25E4();

    sub_1001F1160(&qword_100AE23F8);
    sub_100005920(&qword_100AE2400, &qword_100AE23F8);
    v16 = sub_1007A28A4();

    v8 = v24;
    if (v16)
    {
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
        return a4(v20, a2, v21, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return a4(v20, a2, v21, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v24 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_10040E1A8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_10040DF84(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_10040E230(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_18:
    sub_1007A38D4();
  }

  sub_1001F1160(&unk_100AE2450);
  result = sub_1007A2854();
  v9 = result;
  if (!v2)
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_1007A3784();
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_14:
          __break(1u);
          return v9;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_18;
        }

        v6 = *(a1 + 8 * i + 32);

        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_14;
        }
      }

      sub_1006E6290(&v8, v6);

      if (v7 == v2)
      {
        return v9;
      }
    }
  }

  v4 = result;
  v2 = sub_1007A38D4();
  result = v4;
  if (v2)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_10040E374(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_1007A2854();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1006E6140(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10040E40C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_1007A2854();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1006E6F30(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10040E480(uint64_t a1)
{
  v2 = sub_10079A144();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_10040F508(&qword_100AD36C8, &type metadata accessor for ClusteringOptions.MediaType);
  result = sub_1007A2854();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v5, v14, v2);
      sub_1006E74B4(v8, v5);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_10040E61C(uint64_t a1)
{
  v2 = sub_10079A184();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_10040F508(&unk_100AE23C0, &type metadata accessor for BookHistoryFeature);
  result = sub_1007A2854();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v5, v14, v2);
      sub_1006E71D4(v8, v5);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_10040E7B8(uint64_t a1)
{
  v2 = sub_10079FD44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_10040F508(&qword_100AE23B8, &type metadata accessor for PageLocation);
  result = sub_1007A2854();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v5, v14, v2);
      sub_1006E7A74(v8, v5);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

id sub_10040E954(void *a1)
{
  v2 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v5);
  v49 = &v40 - v7;
  result = [a1 updatedObjects];
  if (result)
  {
    v9 = result;
    v10 = sub_1007A25E4();

    v11 = *(v10 + 16);
    v47 = v4;
    if (v11)
    {
      v12 = v10 + 32;
      v13 = _swiftEmptyArrayStorage;
      do
      {
        sub_100007484(v12, v57);
        sub_1000076D4(v57, &v54);
        if (swift_dynamicCast())
        {
          v15 = v56;
          if (v56)
          {
            v16 = v55;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v13 = sub_10000B3D8(0, *(v13 + 2) + 1, 1, v13);
            }

            v18 = *(v13 + 2);
            v17 = *(v13 + 3);
            v19 = v13;
            if (v18 >= v17 >> 1)
            {
              v19 = sub_10000B3D8((v17 > 1), v18 + 1, 1, v13);
            }

            *(v19 + 2) = v18 + 1;
            v13 = v19;
            v14 = &v19[16 * v18];
            *(v14 + 4) = v16;
            *(v14 + 5) = v15;
          }
        }

        v12 += 32;
        --v11;
      }

      while (v11);
    }

    else
    {

      v13 = _swiftEmptyArrayStorage;
    }

    v40 = v13;
    v20 = *(v13 + 2);
    if (v20)
    {
      v46 = sub_1007A26F4();
      v42 = sub_1007A2744();
      v21 = *(v42 - 8);
      v22 = *(v21 + 56);
      v21 += 56;
      v45 = v22;
      v43 = (v21 - 8);
      v44 = v21;
      v41 = (v21 - 48);
      v23 = (v40 + 40);
      v24 = &qword_100AD67D0;
      do
      {
        v48 = v20;
        v26 = *(v23 - 1);
        v25 = *v23;
        v27 = v24;
        v28 = v49;
        v29 = v42;
        v45(v49, 1, 1, v42);
        v30 = swift_allocObject();
        swift_unknownObjectWeakInit();

        v31 = sub_1007A26E4();
        v32 = swift_allocObject();
        v32[2] = v31;
        v32[3] = &protocol witness table for MainActor;
        v32[4] = v30;
        v32[5] = v26;
        v32[6] = v25;

        v33 = v28;
        v24 = v27;
        v34 = v47;
        sub_1000077D8(v33, v47, v24);
        LODWORD(v25) = (*v43)(v34, 1, v29);

        if (v25 == 1)
        {
          sub_100007840(v34, v24);
        }

        else
        {
          sub_1007A2734();
          (*v41)(v34, v29);
        }

        v35 = v32[2];
        swift_unknownObjectRetain();

        if (v35)
        {
          swift_getObjectType();
          v36 = sub_1007A2694();
          v38 = v37;
          swift_unknownObjectRelease();
        }

        else
        {
          v36 = 0;
          v38 = 0;
        }

        sub_100007840(v49, v24);
        v39 = swift_allocObject();
        *(v39 + 16) = &unk_100823EB8;
        *(v39 + 24) = v32;
        if (v38 | v36)
        {
          v50 = 0;
          v51 = 0;
          v52 = v36;
          v53 = v38;
        }

        swift_task_create();

        v23 += 2;
        v20 = v48 - 1;
      }

      while (v48 != 1);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10040EED8()
{

  return swift_deallocObject();
}

unint64_t _sSo14BKLibraryAssetC5BooksE14SeriesSortModeO8rawValueAESgSi_tcfC_0(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_10040F014()
{
  result = qword_100AE2388;
  if (!qword_100AE2388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2388);
  }

  return result;
}

uint64_t sub_10040F0FC(uint64_t a1)
{
  v4 = *(sub_1007991C4() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002812C;

  return sub_10040D3C0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10040F1F4(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_1001F1160(&unk_100ADA050);
  v7 = *(v6 - 8);
  v8 = (v5 + *(v7 + 80) + 8) & ~*(v7 + 80);

  (*(v3 + 8))(v1 + v4, v2);

  (*(v7 + 8))(v1 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_10040F3A0(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, char *, uint64_t, char *))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_1001F1160(&unk_100ADA050) - 8);
  v9 = *(v3 + 2);
  v10 = *(v3 + 3);
  v11 = *(v3 + 4);
  v12 = *&v3[v7];
  v13 = &v3[(v7 + *(v8 + 80) + 8) & ~*(v8 + 80)];

  return a3(a1, v9, v10, v11, &v3[v6], v12, v13);
}

uint64_t sub_10040F508(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10040F578(uint64_t *a1)
{
  v2 = sub_1001F1160(a1);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_10040F67C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, char *, uint64_t))
{
  v6 = *(sub_1001F1160(a2) - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v8 = *(v4 + 2);
  v9 = *(v4 + 3);
  v10 = *(v4 + 4);
  v11 = *&v4[(*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8];

  return a4(a1, v8, v9, v10, &v4[v7], v11);
}

uint64_t sub_10040F768(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100009A34;

  return sub_1004096F8(a1, v4, v5, v6, v7, v8);
}

id sub_10040F968()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PageFramedContentSnapshotView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10040F9F4()
{
  type metadata accessor for AudiobookNowPlayingSharedStateProvider();
  v0 = swift_allocObject();
  v1 = [objc_opt_self() weakObjectsHashTable];
  sub_1001F1160(&qword_100AE2570);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v1;
  *(v0 + 16) = result;
  qword_100AE2528 = v0;
  return result;
}

id AchievementsNotificationController.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_10040FB80@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_10040FC00(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_10079B9B4();
}

uint64_t sub_10040FC80@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  *a1 = v3;
  return result;
}

uint64_t sub_10040FD00(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_10079B9B4();
}

uint64_t sub_10040FD70(void *a1, uint64_t a2)
{
  v51 = type metadata accessor for AudiobookNowPlayingInteractor();
  v52 = &off_100A139A8;
  v50[0] = a1;
  v4 = *(a2 + 16);
  v5 = (*sub_10000E3E8(v50, v51) + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  v6 = *(*sub_10000E3E8(v5, v5[3]) + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_player);
  v7 = a1;
  [objc_msgSend(v6 "skipController")];
  swift_unknownObjectRelease();
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v4;
  sub_10079B9B4();
  v9 = (*sub_10000E3E8(v50, v51) + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  [objc_msgSend(*(*sub_10000E3E8(v9 v9[3]) + OBJC:"skipController") IVAR:"forwardSkipTime" :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
  swift_unknownObjectRelease();
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = v8;
  sub_10079B9B4();
  v11 = (*sub_10000E3E8(v50, v51) + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  [*(*sub_10000E3E8(v11 v11[3]) + OBJC:"volume" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = v10;
  sub_10079B9B4();
  v13 = (*sub_10000E3E8(v50, v51) + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  [*(*sub_10000E3E8(v13 v13[3]) + OBJC:"playbackRate" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
  v15 = v14;
  sub_10000E3E8(v13, v13[3]);
  swift_endAccess();
  v16 = sub_100462804();
  sub_1002D0650(v16, v15);

  swift_getKeyPath();
  swift_getKeyPath();
  v17 = v12;
  sub_10079B9B4();
  sub_10000E3E8(v50, v51);
  v18 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  sub_1002D08A0(v18);

  swift_getKeyPath();
  swift_getKeyPath();
  v19 = v17;
  sub_10079B9B4();
  v20 = (*sub_10000E3E8(v50, v51) + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  v21 = [*(*sub_10000E3E8(v20 v20[3]) + OBJC:"currentAudiobook" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
  if (v21)
  {
    v22 = [v21 title];
    swift_unknownObjectRelease();
    sub_1007A2254();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v23 = v19;
  sub_10079B9B4();
  v24 = (*sub_10000E3E8(v50, v51) + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  v25 = [*(*sub_10000E3E8(v24 v24[3]) + OBJC:"currentAudiobook" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
  if (v25)
  {
    v26 = [v25 author];
    swift_unknownObjectRelease();
    sub_1007A2254();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v27 = v23;
  sub_10079B9B4();
  v28 = (*sub_10000E3E8(v50, v51) + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  v29 = [*(*sub_10000E3E8(v28 v28[3]) + OBJC:"currentAudiobook" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
  if (v29)
  {
    [v29 isAudiobookPreview];
    swift_unknownObjectRelease();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v30 = v27;
  sub_10079B9B4();
  v31 = (*sub_10000E3E8(v50, v51) + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  v32 = [*(*sub_10000E3E8(v31 v31[3]) + OBJC:"currentAudiobook" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
  if (v32)
  {
    v33 = [v32 assetID];
    swift_unknownObjectRelease();
    sub_1007A2254();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v34 = v30;
  sub_10079B9B4();
  v35 = *(*sub_10000E3E8(v50, v51) + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_cachedArtwork);
  if (v35)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v36 = v35;
    v37 = v34;
    sub_10079B9B4();
  }

  sub_10000E3E8(v50, v51);
  sub_1002D0E58();
  swift_getKeyPath();
  swift_getKeyPath();
  v38 = v34;
  sub_10079B9B4();
  sub_10000E3E8(v50, v51);
  sub_1002D1098();
  swift_getKeyPath();
  swift_getKeyPath();
  v39 = v38;
  sub_10079B9B4();
  v40 = (*sub_10000E3E8(v50, v51) + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  v41 = [*(*sub_10000E3E8(v40 v40[3]) + OBJC:"currentAudiobook" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
  if (v41)
  {
    [v41 isSG];
    swift_unknownObjectRelease();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v42 = v39;
  sub_10079B9B4();
  v43 = (*sub_10000E3E8(v50, v51) + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  sub_10000E3E8(v43, v43[3]);
  sub_100462360();
  swift_endAccess();
  swift_beginAccess();
  v44 = v43[3];
  v45 = v43[4];
  sub_10022569C(v43, v44);
  (*(v45 + 72))(0, v44, v45);
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v46 = v42;
  sub_10079B9B4();
  v47 = (*sub_10000E3E8(v50, v51) + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  v48 = [*(*sub_10000E3E8(v47 v47[3]) + OBJC:"state" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
  sub_1005591B4(v48);
  return sub_1000074E0(v50);
}

uint64_t sub_1004107AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10079ACE4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for AudiobookNowPlayingInteractor();
  v24 = &off_100A139A8;
  v22[0] = a1;
  v21[3] = type metadata accessor for AudiobookNowPlayingRouter();
  v21[4] = &off_100A29C28;
  v21[0] = a2;
  *(a3 + 112) = 0;
  sub_100009864(v22, a3 + 24);
  sub_100009864(v21, a3 + 64);
  *(a3 + 16) = [objc_allocWithZone(type metadata accessor for AudiobookNowPlayingViewModel()) init];
  *(a3 + 104) = [objc_allocWithZone(type metadata accessor for AudiobookNowPlayingPresenterAssetStatus()) init];
  v20[3] = 0;
  v20[4] = 0xE000000000000000;
  sub_1007A3744(31);

  v20[0] = 0xD00000000000001DLL;
  v20[1] = 0x80000001008D3990;
  v10 = (*sub_10000E3E8(v22, v23) + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  v11 = (*sub_10000E3E8(v10, v10[3]) + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_sourceLabel);
  v12 = *v11;
  v13 = v11[1];

  v25._countAndFlagsBits = v12;
  v25._object = v13;
  sub_1007A23D4(v25);

  sub_10079ACD4();
  (*(v7 + 32))(a3 + OBJC_IVAR____TtC5Books28AudiobookNowPlayingPresenter_logger, v9, v6);
  v14 = sub_10000E3E8(v22, v23);
  sub_10040FD70(*v14, a3);
  swift_beginAccess();
  v15 = *(a3 + 48);
  v16 = *(a3 + 56);
  sub_10022569C(a3 + 24, v15);
  v17 = *(v16 + 16);

  v17(v18, &off_100A22E18, v15, v16);
  swift_endAccess();
  sub_1000074E0(v21);
  *(*(a3 + 104) + OBJC_IVAR___BKAudiobookPresenterAssetStatus_delegate + 8) = &off_100A22E08;
  swift_unknownObjectWeakAssign();
  sub_1000074E0(v22);
  return a3;
}

uint64_t sub_100410A98(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v20 = type metadata accessor for AudiobookNowPlayingInteractor();
  v21 = &off_100A139A8;
  v19[0] = a1;
  v17 = v4;
  v18 = &off_100A29C28;
  v16[0] = a2;
  type metadata accessor for AudiobookNowPlayingPresenter();
  v5 = swift_allocObject();
  v6 = sub_10022569C(v19, v20);
  __chkstk_darwin(v6);
  v8 = (v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  v10 = sub_10022569C(v16, v17);
  __chkstk_darwin(v10);
  v12 = (v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = sub_1004107AC(*v8, *v12, v5);
  sub_1000074E0(v16);
  sub_1000074E0(v19);
  return v14;
}

id sub_100410C8C(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = type metadata accessor for AudiobookNowPlayingMiniTouchViewController();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController_cancellables] = &_swiftEmptySetSingleton;
  v12 = &v11[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController_buyButtonProvider];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  *&v11[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController_buyButtonViewController] = 0;
  v13 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController_contextMenuAppearDate;
  v14 = sub_100796BB4();
  (*(*(v14 - 8) + 56))(&v11[v13], 1, 1, v14);
  v27 = v10;
  sub_1001F1160(&qword_100ADF158);
  sub_1007A22E4();
  sub_10079ACD4();
  *&v11[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController____lazy_storage___miniPlayerView] = 0;
  *&v11[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController_springLoadedInteraction] = 0;
  sub_100797C84();
  v15 = a1;
  v16 = sub_100797C74();
  *&v11[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_cancellables] = &_swiftEmptySetSingleton;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v11[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_recommendedTracker] = 0;
  *&v11[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_contentOpenAnimator] = 0;
  *&v11[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_bookPositionProcessor] = 0;
  *&v11[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_amsEngagement] = 0;
  *&v11[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_messageViewControllerProvider] = 0;
  *&v11[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_cachedPointerInteractionViews] = 0;
  *&v11[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_viewModel] = v15;
  *&v11[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler] = a2;
  v17 = &v11[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_helperProvider];
  *v17 = a3;
  *(v17 + 1) = &off_100A2D190;
  v18 = &v11[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_navigationHandler];
  *v18 = a4;
  *(v18 + 1) = &off_100A0F378;
  *&v11[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_analyticsRecorder] = v16;
  v26.receiver = v11;
  v26.super_class = type metadata accessor for AudiobookNowPlayingTouchViewController();
  v19 = v15;

  v20 = a4;
  v21 = v16;
  v22 = objc_msgSendSuper2(&v26, "initWithNibName:bundle:", 0, 0);
  swift_unknownObjectWeakAssign();
  v23 = v22;
  sub_100797C54();
  sub_1004138CC(&qword_100AE2558, type metadata accessor for AudiobookNowPlayingTouchViewController);
  sub_100797C34();
  sub_10026E54C();

  sub_10000A7C4(0, &qword_100AE15B0);
  v24 = v23;
  sub_1007A2E04();
  sub_1007A2C44();

  swift_unknownObjectRelease();

  return v24;
}

char *sub_100411044(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, _BYTE *a6)
{
  *&a6[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView] = 0;
  v12 = &a6[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_buyButtonProvider];
  *(v12 + 4) = 0;
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *&a6[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_buyButtonViewController] = 0;
  *&a6[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_datePicker] = 0;
  *&a6[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_hudAppearanceTime] = 0;
  *&a6[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_hudDisappearTimer] = 0;
  v13 = &a6[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_hudText];
  *v13 = 0;
  v13[1] = 0;
  *&a6[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_scrubberImpactBehavior] = 0;
  a6[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_settingPositionViaScrubber] = 0;
  a6[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_settingPositionViaPlayer] = 0;
  a6[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_settingVolumeViaSlider] = 0;
  *&a6[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_skipCumulativeDelta] = 0;
  a6[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_wasPlaying] = 0;
  v14 = OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_supportedSkipAmounts;
  *&a6[v14] = sub_1001F1048(&off_100A0D050);
  a6[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_downloadState] = 3;
  *&a6[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_cancellables] = &_swiftEmptySetSingleton;
  *&a6[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_attributionView] = 0;
  v15 = &a6[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___languageSuffix];
  *v15 = 0;
  v15[1] = 0;
  v16 = &a6[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_lastAccessibilityAnnouncedScrubbingPosition];
  *v16 = 0;
  v16[1] = 0;
  v17 = &a6[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_lastAccessibilityAnnouncedScrubbingSpeed];
  v18 = type metadata accessor for AudiobookTOCViewController();
  *v17 = 0;
  v17[1] = 0;
  objc_allocWithZone(v18);
  v19 = a1;
  *&a6[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_tocVC] = sub_1003DEDD8(v19);
  *&a6[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_cancellables] = &_swiftEmptySetSingleton;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&a6[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_recommendedTracker] = 0;
  *&a6[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_contentOpenAnimator] = 0;
  *&a6[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_bookPositionProcessor] = 0;
  *&a6[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_amsEngagement] = 0;
  *&a6[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_messageViewControllerProvider] = 0;
  *&a6[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_cachedPointerInteractionViews] = 0;
  *&a6[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_viewModel] = v19;
  *&a6[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler] = a2;
  v20 = &a6[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_helperProvider];
  *v20 = a3;
  v20[1] = &off_100A2D190;
  v21 = &a6[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_navigationHandler];
  *v21 = a4;
  v21[1] = &off_100A0F378;
  *&a6[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_analyticsRecorder] = a5;
  v29.receiver = a6;
  v29.super_class = type metadata accessor for AudiobookNowPlayingTouchViewController();
  v22 = v19;
  v23 = a4;
  v24 = a5;
  v25 = objc_msgSendSuper2(&v29, "initWithNibName:bundle:", 0, 0);
  swift_unknownObjectWeakAssign();
  v26 = v25;

  v27 = v26;
  sub_100797C54();
  sub_1004138CC(&qword_100AE2558, type metadata accessor for AudiobookNowPlayingTouchViewController);
  sub_100797C34();
  sub_10026E54C();

  *(*&v27[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_tocVC] + OBJC_IVAR____TtC5Books26AudiobookTOCViewController_delegate + 8) = &off_100A11820;
  swift_unknownObjectWeakAssign();
  return v27;
}

char *sub_1004113EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AudiobookNowPlayingMediaLibraryService();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC5Books38AudiobookNowPlayingMediaLibraryService_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v7[OBJC_IVAR____TtC5Books38AudiobookNowPlayingMediaLibraryService_audiobook] = 0;
  v8 = &v7[OBJC_IVAR____TtC5Books38AudiobookNowPlayingMediaLibraryService_optionsStoreIDKey];
  *v8 = 0x444965726F7473;
  *(v8 + 1) = 0xE700000000000000;
  *&v7[OBJC_IVAR____TtC5Books38AudiobookNowPlayingMediaLibraryService_helper] = 0;
  v9 = &v7[OBJC_IVAR____TtC5Books38AudiobookNowPlayingMediaLibraryService_helperProvider];
  *v9 = a1;
  *(v9 + 1) = &off_100A2D190;
  *&v7[OBJC_IVAR____TtC5Books38AudiobookNowPlayingMediaLibraryService_audiobookControls] = a2;
  *&v7[OBJC_IVAR____TtC5Books38AudiobookNowPlayingMediaLibraryService_persistenceController] = a3;
  v12.receiver = v7;
  v12.super_class = v6;
  v10 = objc_msgSendSuper2(&v12, "init");
  *(*&v10[OBJC_IVAR____TtC5Books38AudiobookNowPlayingMediaLibraryService_helperProvider] + 24) = &off_100A1A230;
  swift_unknownObjectWeakAssign();
  return v10;
}

uint64_t sub_100411508()
{
  v0 = [objc_opt_self() sceneManager];
  v1 = [v0 primarySceneController];

  v2 = [v1 rootBarCoordinator];
  if (v2)
  {
    v3 = [v2 miniPlayerViewController];
    swift_unknownObjectRelease();
    if (v3)
    {
      type metadata accessor for AudiobookNowPlayingMiniTouchViewController();
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }
    }
  }

  return 0;
}

char *sub_1004115D8(uint64_t a1, void (*a2)(void, void, void, void), uint64_t a3, void *a4)
{
  v71 = a3;
  v70 = a2;
  ObjectType = swift_getObjectType();
  v6 = sub_1001F1160(&qword_100AD7EB0);
  __chkstk_darwin(v6 - 8);
  v76 = &v62 - v7;
  v75 = sub_1007A2E74();
  v80 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001F1160(&qword_100AE2560);
  v77 = *(v9 - 8);
  v78 = v9;
  __chkstk_darwin(v9);
  v74 = &v62 - v10;
  v69 = sub_10079ACE4();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1007A2CF4();
  __chkstk_darwin(v12);
  v65 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1007A1CA4();
  __chkstk_darwin(v14 - 8);
  v15 = sub_1007A2D64();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for AudiobookNowPlayingDataManager();
  v87 = &off_100A1CC10;
  v85[0] = a1;
  *(a4 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v19 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_externalDelegates;
  type metadata accessor for AudiobookPlayerExternalDelegates();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(a4 + v19) = v20;
  swift_unknownObjectWeakInit();
  v64 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_storeManager;
  *(a4 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_storeManager) = 0;
  *(a4 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_transferLockController) = 0;
  *(a4 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_beginPlaybackInBackground) = 1;
  *(a4 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor__activeMode) = 1;
  *(a4 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_cachedArtwork) = 0;
  *(a4 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_finishedOpening) = 0;
  *(a4 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_allowAutoplay) = 0;
  *(a4 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_wantsPlayAfterOpen) = 0;
  v21 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_lastUserProgressChangeTimestamp;
  v22 = sub_100796BB4();
  (*(*(v22 - 8) + 56))(a4 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_routeDetector;
  v24 = [objc_allocWithZone(AVRouteDetector) init];
  v66 = v23;
  *(a4 + v23) = v24;
  if (_swiftEmptyArrayStorage >> 62 && sub_1007A38D4())
  {
    v25 = sub_1001F0DB4(_swiftEmptyArrayStorage);
  }

  else
  {
    v25 = &_swiftEmptySetSingleton;
  }

  *(a4 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_subscribers) = v25;
  v26 = a4 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_buyButtonPresenter;
  *(v26 + 4) = 0;
  *v26 = 0u;
  *(v26 + 1) = 0u;
  *(a4 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_downloadState) = 0;
  *(a4 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_assetState) = 0;
  *(a4 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_hasShownNetworkError) = 0;
  v63 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_networkMonitor;
  v79 = sub_10000A7C4(0, &qword_100AD1E10);
  (*(v16 + 104))(v18, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v15);
  sub_1007A1C74();
  v81 = _swiftEmptyArrayStorage;
  sub_1004138CC(&qword_100AE8220, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1001F1160(&unk_100AD1E20);
  sub_100005920(&qword_100AE8230, &unk_100AD1E20);
  sub_1007A3594();
  v27 = sub_1007A2DA4();
  v28 = [objc_allocWithZone(BUNetworkMonitor) initWithQueue:v27];

  *(a4 + v63) = v28;
  *(a4 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_requestingCloseMinified) = 0;
  swift_unknownObjectWeakInit();
  v29 = a4 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_initialPositionOnOpen;
  *v29 = 0;
  v29[8] = 1;
  *(a4 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor____lazy_storage___playbackRates) = 0;
  *(a4 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_transitionState) = 2;
  sub_100009864(v85, a4 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  v30 = a4 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_navigationHandler;
  v31 = v70;
  *v30 = v70;
  v30[1] = &off_100A0F378;
  *(a4 + v64) = v71;
  v32 = v31;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v81 = 0;
  v82 = 0xE000000000000000;
  sub_1007A3744(32);

  v81 = 0xD00000000000001ELL;
  v82 = 0x80000001008D39F0;
  v33 = (*sub_10000E3E8(v85, v86) + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_sourceLabel);
  v34 = *v33;
  v35 = v33[1];

  v88._countAndFlagsBits = v34;
  v88._object = v35;
  sub_1007A23D4(v88);

  v36 = v67;
  sub_10079ACD4();
  (*(v68 + 32))(a4 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger, v36, v69);
  v37 = v66;
  [*&v66[a4] setRouteDetectionEnabled:1];
  v38 = [*&v37[a4] multipleRoutesDetected];
  *(a4 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_multipleRoutesDetected) = v38;
  v84.receiver = a4;
  v84.super_class = ObjectType;
  v39 = objc_msgSendSuper2(&v84, "init");
  v40 = v39 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager;
  swift_beginAccess();
  v41 = *(v40 + 24);
  v42 = *(v40 + 32);
  sub_10022569C(v40, v41);
  v43 = *(v42 + 16);
  v44 = v39;
  v43(v39, &off_100A138D8, v41, v42);
  swift_endAccess();
  *(*&v44[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_navigationHandler] + OBJC_IVAR____TtC5Books36AudiobookNowPlayingNavigationHandler_delegate + 8) = &off_100A13848;
  swift_unknownObjectWeakAssign();

  sub_100009864(v40, &v81);
  sub_10000E3E8(&v81, v83);
  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v47 = swift_allocObject();
  *(v47 + 16) = v46;
  *(v47 + 24) = sub_1002D7864;
  *(v47 + 32) = v45;
  *(v47 + 40) = vdupq_n_s64(0x4098000000000000uLL);
  v48 = v44;
  swift_retain_n();

  sub_1007A2CD4();

  sub_1000074E0(&v81);
  v67 = objc_opt_self();
  v49 = [v67 defaultCenter];
  v50 = *&v48[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_routeDetector];
  v51 = v73;
  sub_1007A2E84();

  v52 = sub_1007A2D74();
  v81 = v52;
  v71 = sub_1007A2D24();
  v53 = *(v71 - 8);
  v70 = *(v53 + 56);
  ObjectType = (v53 + 56);
  v54 = v76;
  v70(v76, 1, 1, v71);
  v68 = sub_1004138CC(&qword_100AE19E0, &type metadata accessor for NSNotificationCenter.Publisher);
  v69 = sub_100017E1C();
  v56 = v74;
  v55 = v75;
  sub_10079BAB4();
  sub_100201E64(v54);
  v66 = *(v80 + 8);
  v80 += 8;
  v57 = v55;
  (v66)(v51, v55);

  swift_allocObject();
  swift_unknownObjectUnownedInit();
  v65 = sub_100005920(&qword_100AE2568, &qword_100AE2560);
  v58 = v78;
  sub_10079BB04();

  v77 = *(v77 + 8);
  (v77)(v56, v58);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v59 = [v67 defaultCenter];
  sub_1007A2E84();

  v60 = sub_1007A2D74();
  v81 = v60;
  v70(v54, 1, 1, v71);
  sub_10079BAB4();
  sub_100201E64(v54);
  (v66)(v51, v57);

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10079BB04();

  (v77)(v56, v58);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  [*&v48[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_networkMonitor] start];

  sub_1000074E0(v85);
  return v48;
}

unint64_t sub_10041240C()
{
  v0 = sub_10079ACE4();
  v74 = *(v0 - 1);
  v75 = v0;
  __chkstk_darwin(v0);
  v73 = &v68 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AudiobookNowPlayingHelperProvider();
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  v76 = [objc_allocWithZone(type metadata accessor for AudiobookNowPlayingNavigationHandler()) init];
  v3 = [objc_opt_self() sharedInstance];

  v4 = [objc_opt_self() sharedInstance];
  v77 = [objc_opt_self() defaultTimer];
  type metadata accessor for AudiobookNowPlayingRouter();
  v5 = swift_allocObject();
  v6 = v4;

  v7 = v3;
  v69 = v2;
  v8 = sub_1004113EC(v2, v6, v7);
  [v7 registerAEPersistencePlugins];
  v9 = qword_100AD1590;
  v10 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  v78 = v5;
  v11 = qword_100AE2528;
  if (qword_100AD1528 != -1)
  {
    swift_once();
  }

  v12 = static ContextMenuProvider.shared;
  v79 = BSUIGetLibraryItemStateProvider();
  v13 = type metadata accessor for AudiobookNowPlayingSharedStateProvider();
  v87 = v13;
  v88 = &off_100A1E530;
  v86[0] = v11;
  v14 = type metadata accessor for AudiobookNowPlayingDataManager();
  v15 = objc_allocWithZone(v14);
  v70 = v11;
  v16 = v15;
  v17 = sub_10022569C(v86, v13);
  v72 = &v68;
  __chkstk_darwin(v17);
  v19 = (&v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = *v19;
  v84 = v13;
  v85 = &off_100A1E530;
  v83[0] = v21;
  *&v16[OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v16[OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_productProfile] = 0;
  v16[OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_cachedIsPreordered] = 2;
  v22 = &v16[OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_firstLaunchTimestampKey];
  *v22 = 0xD00000000000001ELL;
  v22[1] = 0x80000001008D3950;
  *&v16[OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_scrubberNoGoSeconds] = 0x3FD999999999999ALL;
  *&v16[OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_currentMAsset] = 0;
  v23 = &v16[OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_storeID];
  *v23 = 0;
  v23[1] = 0;
  v16[OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_streaming] = 0;
  v24 = &v16[OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_assetService];
  *v24 = v10;
  v24[1] = &off_100A1A240;
  *&v16[OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_player] = v6;
  sub_100009864(v83, &v16[OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_sharedStateProvider]);
  *&v16[OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_persistenceController] = v7;
  v25 = v77;
  *&v16[OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_sleepTimer] = v77;
  *&v16[OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_contextMenuProvider] = v12;
  v81 = 0;
  v82 = 0xE000000000000000;
  v26 = v6;
  v27 = v7;
  v28 = v25;
  v29 = v26;
  v71 = v27;
  v30 = v10;
  v31 = v12;
  v32 = v28;

  sub_1007A3744(33);

  v81 = 0xD00000000000001FLL;
  v82 = 0x80000001008D3970;
  v89._countAndFlagsBits = 1768843629;
  v89._object = 0xE400000000000000;
  sub_1007A23D4(v89);
  v33 = v73;
  sub_10079ACD4();
  (*(v74 + 32))(&v16[OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_logger], v33, v75);
  v34 = &v16[OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_sourceLabel];
  *v34 = 1768843629;
  v34[1] = 0xE400000000000000;
  *&v16[OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_libraryItemStateProvider] = v79;
  v80.receiver = v16;
  v80.super_class = v14;
  v77 = v14;
  swift_unknownObjectRetain();
  v35 = objc_msgSendSuper2(&v80, "init");
  *(*&v35[OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_assetService] + OBJC_IVAR____TtC5Books38AudiobookNowPlayingMediaLibraryService_delegate + 8) = &off_100A1CBC8;
  swift_unknownObjectWeakAssign();
  v36 = v35;
  [v29 addObserver:v36];
  v37 = sub_10000E3E8(v83, v84);
  v38 = *(*v37 + 16);
  __chkstk_darwin(v37);
  *(&v68 - 2) = v36;
  os_unfair_lock_lock((v38 + 24));
  sub_1004138B0((v38 + 16));
  os_unfair_lock_unlock((v38 + 24));

  v75 = v30;
  v39 = v29;

  [(objc_class *)v32 addObserver:v36];
  [v29 skipController];
  objc_opt_self();
  v40 = swift_dynamicCastObjCClass();
  v68 = v32;
  if (v40)
  {
    [v40 addObserver:{v36, v68}];
    swift_unknownObjectRelease();

    v41 = v71;
    v42 = v78;
    v43 = v41;
  }

  else
  {

    v44 = v71;
    swift_unknownObjectRelease();
    v42 = v78;
    v43 = v44;
  }

  swift_unknownObjectRelease();
  sub_1000074E0(v83);
  sub_1000074E0(v86);
  v45 = objc_opt_self();
  v46 = v36;
  v47 = [v45 storeMgr];
  v87 = v77;
  v88 = &off_100A1CC10;
  v86[0] = v46;
  v48 = objc_allocWithZone(type metadata accessor for AudiobookNowPlayingInteractor());
  v49 = sub_10022569C(v86, v87);
  __chkstk_darwin(v49);
  v51 = (&v68 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v52 + 16))(v51);
  v53 = *v51;
  v54 = v76;
  v55 = sub_1004115D8(v53, v54, v47, v48);

  swift_unknownObjectRelease();
  sub_1000074E0(v86);
  v56 = v55;

  v57 = sub_100410A98(v56, v42);
  v58 = *&v46[OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_player];
  if (![v58 currentAudiobook])
  {

    goto LABEL_14;
  }

  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {

    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v59 = swift_unknownObjectRetain();
  sub_1002D1520(v59);
  swift_unknownObjectRelease();
  v60 = [v58 currentChapter];
  result = [v58 currentChapterIndex];
  if ((result & 0x8000000000000000) == 0)
  {
    sub_1002D257C(v60);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_14:

    v62 = *(v57 + 16);
    sub_100797C84();
    v63 = v69;

    v64 = v54;
    v65 = v62;

    v66 = sub_100797C74();
    v67 = sub_100410C8C(v65, v57, v63, v64, v66);

    return v67;
  }

  __break(1u);
  return result;
}

id _s5Books32AudiobookNowPlayingModuleFactoryC11instantiateAA0bcD29FullscreenTouchViewControllerCyFZ_0()
{
  v0 = sub_10079ACE4();
  v77 = *(v0 - 1);
  v78 = v0;
  __chkstk_darwin(v0);
  v76 = &v71 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AudiobookNowPlayingHelperProvider();
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  v79 = [objc_allocWithZone(type metadata accessor for AudiobookNowPlayingNavigationHandler()) init];
  v3 = [objc_opt_self() sharedInstance];

  v4 = [objc_opt_self() sharedInstance];
  v80 = [objc_opt_self() defaultTimer];
  type metadata accessor for AudiobookNowPlayingRouter();
  v5 = swift_allocObject();
  v6 = v4;

  v7 = v3;
  v72 = v2;
  v8 = sub_1004113EC(v2, v6, v7);
  [v7 registerAEPersistencePlugins];
  v9 = qword_100AD1590;
  v10 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  v81 = v5;
  v11 = qword_100AE2528;
  if (qword_100AD1528 != -1)
  {
    swift_once();
  }

  v12 = static ContextMenuProvider.shared;
  v82 = BSUIGetLibraryItemStateProvider();
  v13 = type metadata accessor for AudiobookNowPlayingSharedStateProvider();
  v90 = v13;
  v91 = &off_100A1E530;
  v89[0] = v11;
  v14 = type metadata accessor for AudiobookNowPlayingDataManager();
  v15 = objc_allocWithZone(v14);
  v73 = v11;
  v16 = v15;
  v17 = sub_10022569C(v89, v13);
  v75 = &v71;
  v18 = __chkstk_darwin(v17);
  v20 = (&v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20, v18);
  v22 = *v20;
  v87 = v13;
  v88 = &off_100A1E530;
  v86[0] = v22;
  *&v16[OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v16[OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_productProfile] = 0;
  v16[OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_cachedIsPreordered] = 2;
  v23 = &v16[OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_firstLaunchTimestampKey];
  *v23 = 0xD00000000000001ELL;
  v23[1] = 0x80000001008D3950;
  *&v16[OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_scrubberNoGoSeconds] = 0x3FD999999999999ALL;
  *&v16[OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_currentMAsset] = 0;
  v24 = &v16[OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_storeID];
  *v24 = 0;
  v24[1] = 0;
  v16[OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_streaming] = 0;
  v25 = &v16[OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_assetService];
  *v25 = v10;
  v25[1] = &off_100A1A240;
  *&v16[OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_player] = v6;
  sub_100009864(v86, &v16[OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_sharedStateProvider]);
  *&v16[OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_persistenceController] = v7;
  v26 = v80;
  *&v16[OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_sleepTimer] = v80;
  *&v16[OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_contextMenuProvider] = v12;
  v84 = 0;
  v85 = 0xE000000000000000;
  v27 = v6;
  v28 = v7;
  v29 = v26;
  v30 = v27;
  v74 = v28;
  v31 = v10;
  v32 = v12;
  v33 = v29;

  sub_1007A3744(33);

  v84 = 0xD00000000000001FLL;
  v85 = 0x80000001008D3970;
  v92._countAndFlagsBits = 0x657263736C6C7566;
  v92._object = 0xEA00000000006E65;
  sub_1007A23D4(v92);
  v34 = v76;
  sub_10079ACD4();
  (*(v77 + 32))(&v16[OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_logger], v34, v78);
  v35 = &v16[OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_sourceLabel];
  *v35 = 0x657263736C6C7566;
  v35[1] = 0xEA00000000006E65;
  *&v16[OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_libraryItemStateProvider] = v82;
  v83.receiver = v16;
  v83.super_class = v14;
  v80 = v14;
  swift_unknownObjectRetain();
  v36 = objc_msgSendSuper2(&v83, "init");
  *(*&v36[OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_assetService] + OBJC_IVAR____TtC5Books38AudiobookNowPlayingMediaLibraryService_delegate + 8) = &off_100A1CBC8;
  swift_unknownObjectWeakAssign();
  v37 = v36;
  [v30 addObserver:v37];
  v38 = sub_10000E3E8(v86, v87);
  v39 = *(*v38 + 16);
  __chkstk_darwin(v38);
  *(&v71 - 2) = v37;
  os_unfair_lock_lock((v39 + 24));
  sub_100413924((v39 + 16));
  os_unfair_lock_unlock((v39 + 24));

  v78 = v31;
  v40 = v30;

  [(objc_class *)v33 addObserver:v37];
  [v30 skipController];
  objc_opt_self();
  v41 = swift_dynamicCastObjCClass();
  v71 = v33;
  if (v41)
  {
    [v41 addObserver:{v37, v71}];
    swift_unknownObjectRelease();

    v42 = v74;
    v43 = v81;
    v44 = v42;
  }

  else
  {

    v45 = v74;
    swift_unknownObjectRelease();
    v43 = v81;
    v44 = v45;
  }

  swift_unknownObjectRelease();
  sub_1000074E0(v86);
  sub_1000074E0(v89);
  v46 = objc_opt_self();
  v47 = v37;
  v48 = [v46 storeMgr];
  v90 = v80;
  v91 = &off_100A1CC10;
  v89[0] = v47;
  v49 = objc_allocWithZone(type metadata accessor for AudiobookNowPlayingInteractor());
  v50 = sub_10022569C(v89, v90);
  v51 = __chkstk_darwin(v50);
  v53 = (&v71 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v54 + 16))(v53, v51);
  v55 = *v53;
  v56 = v79;
  v57 = sub_1004115D8(v55, v56, v48, v49);

  swift_unknownObjectRelease();
  sub_1000074E0(v89);
  v58 = v57;

  v59 = sub_100410A98(v58, v43);
  v60 = *&v47[OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_player];
  if (![v60 currentAudiobook])
  {

    goto LABEL_14;
  }

  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {

    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v61 = swift_unknownObjectRetain();
  sub_1002D1520(v61);
  swift_unknownObjectRelease();
  v62 = [v60 currentChapter];
  result = [v60 currentChapterIndex];
  if ((result & 0x8000000000000000) == 0)
  {
    sub_1002D257C(v62);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_14:

    v64 = *(v59 + 16);
    sub_100797C84();
    v65 = v72;

    v66 = v56;
    v67 = v64;

    v68 = sub_100797C74();
    v69 = objc_allocWithZone(type metadata accessor for AudiobookNowPlayingFullscreenTouchViewController());
    v70 = sub_100411044(v67, v59, v65, v66, v68, v69);

    return v70;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004138CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10041393C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = sub_1001F1160(&qword_100ADA258);
  __chkstk_darwin(v3 - 8);
  v55 = &v54 - v4;
  v54 = sub_100799224();
  v5 = *(v54 - 8);
  __chkstk_darwin(v54);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100798234();
  v68 = *(v8 - 8);
  v69 = v8;
  __chkstk_darwin(v8);
  v67 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100798034();
  v65 = *(v10 - 8);
  v66 = v10;
  __chkstk_darwin(v10);
  v63 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v54 - v13;
  __chkstk_darwin(v15);
  v64 = &v54 - v16;
  v17 = sub_1001F1160(&qword_100AE2578);
  __chkstk_darwin(v17 - 8);
  v62 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v60 = &v54 - v20;
  v21 = sub_100797D94();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v61 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v54 - v25;
  sub_10000E3E8(a1, a1[3]);
  sub_1002C7274(v73);
  sub_10000E3E8(a1, a1[3]);
  sub_1002C7274(&v70);
  v58 = v21;
  v57 = v22;
  v56 = v26;
  if (v71)
  {
    sub_1001FF7E0(&v70, v72);
    sub_1007984D4();
    sub_1007984B4();
    sub_1000074E0(v72);
  }

  else
  {
    sub_100007840(&v70, &unk_100AF1C40);
    (*(v22 + 104))(v26, enum case for ContentType.unknown(_:), v21);
  }

  sub_100798004();
  v27 = sub_100797FF4();
  sub_10000E3E8(a1, a1[3]);
  sub_100797674();
  sub_100797FB4();

  v28 = *(v65 + 104);
  v28(v64, enum case for ProductionType.unknown(_:), v66);
  v29 = *(v68 + 104);
  v29(v67, enum case for ContentAcquisitionType.nonStoreBought(_:), v69);
  sub_1000077D8(v73, &v70, &unk_100AF1C40);
  if (v71)
  {
    sub_1001FF7E0(&v70, v72);
    sub_100009864(v72, &v70);
    sub_1001F1160(&qword_100ADA250);
    v30 = v55;
    v31 = v54;
    v32 = swift_dynamicCast();
    v33 = *(v5 + 56);
    if (v32)
    {
      v33(v30, 0, 1, v31);
      (*(v5 + 32))(v7, v30, v31);
      LODWORD(v55) = sub_100799214();
      (*(v5 + 8))(v7, v31);
      v35 = v64;
      v34 = v65;
      v36 = v66;
      (*(v65 + 8))(v64, v66);
      v37 = &enum case for ProductionType.sgProduction(_:);
      if ((v55 & 1) == 0)
      {
        v37 = &enum case for ProductionType.nonSGProduction(_:);
      }

      v28(v14, *v37, v36);
      (*(v34 + 32))(v35, v14, v36);
    }

    else
    {
      v33(v30, 1, 1, v31);
      sub_100007840(v30, &qword_100ADA258);
    }

    sub_10000E3E8(v72, v72[3]);
    sub_1007991B4();
    if (v39)
    {

      v40 = v67;
      v41 = v69;
      (*(v68 + 8))(v67, v69);
      v29(v40, enum case for ContentAcquisitionType.storeBought(_:), v41);
    }

    v38 = a1;
    sub_1000074E0(v72);
  }

  else
  {
    v38 = a1;
    sub_100007840(&v70, &unk_100AF1C40);
  }

  v42 = v57;
  v43 = v56;
  v44 = v58;
  (*(v57 + 16))(v61, v56, v58);
  v45 = v60;
  sub_1000077D8(v60, v62, &qword_100AE2578);
  v46 = v64;
  v47 = v65;
  v48 = v66;
  (*(v65 + 16))(v63, v64, v66);
  sub_10000E3E8(v38, v38[3]);
  sub_100797634();
  v49 = sub_1007A3434();
  (*(v47 + 8))(v46, v48);
  sub_100007840(v45, &qword_100AE2578);
  (*(v42 + 8))(v43, v44);
  sub_100007840(v73, &unk_100AF1C40);
  if ((v49 & &_mh_execute_header) != 0)
  {
    LODWORD(v49) = 0;
  }

  v50 = v59;
  (*(v42 + 32))(v59, v61, v44);
  v51 = type metadata accessor for MenuAppAnalyticsHelpers.TrackerInfo();
  sub_1004150B4(v62, v50 + v51[5]);
  (*(v47 + 32))(v50 + v51[6], v63, v48);
  v52 = v50 + v51[7];
  *v52 = v49;
  *(v52 + 4) = 0;
  return (*(v68 + 32))(v50 + v51[8], v67, v69);
}

uint64_t sub_100414210(void *a1, uint64_t a2)
{
  v13[4] = a2;
  v3 = type metadata accessor for MenuAppAnalyticsHelpers.TrackerInfo();
  v4 = (v3 - 8);
  __chkstk_darwin(v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10041393C(a1, v6);
  sub_100798004();
  v7 = sub_100797FF4();
  v13[0] = sub_1007A2254();
  sub_10000E3E8(a1, a1[3]);
  sub_100797674();
  v8 = v6[v4[9] + 4];
  v9 = v4[8];
  v10 = &v6[v4[7]];
  v13[1] = v4[10];
  v13[2] = v10;
  v13[3] = &v6[v9];
  v15 = v8;
  sub_100797E84();

  v11 = sub_100797FF4();
  sub_10000E3E8(a1, a1[3]);
  sub_100797674();
  v14 = v8;
  sub_100797E54();

  return sub_100415124(v6);
}

uint64_t sub_1004143F0(void *a1, uint64_t a2)
{
  v10 = a2;
  v3 = type metadata accessor for MenuAppAnalyticsHelpers.TrackerInfo();
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10041393C(a1, v6);
  sub_100798004();
  v7 = sub_100797FF4();
  sub_1007A2254();
  sub_10000E3E8(a1, a1[3]);
  sub_100797674();
  v11 = v6[*(v4 + 36) + 4];
  sub_100797EE4();

  v8 = sub_100797FF4();
  sub_10000E3E8(a1, a1[3]);
  sub_100797674();
  sub_100797EF4();

  return sub_100415124(v6);
}

uint64_t sub_1004145AC(uint64_t a1, void *a2)
{
  sub_100798004();
  v3 = sub_100797FF4();
  sub_10000E3E8(a2, a2[3]);
  sub_100797674();
  sub_10000E3E8(a2, a2[3]);
  result = sub_100797634();
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = result;
  }

  if (v6 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v6 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  sub_100797E64();
}

uint64_t sub_1004146B0(uint64_t a1, id a2, uint64_t a3, uint64_t a4)
{
  v7 = [a2 permanentOrTemporaryAssetID];
  if (!v7)
  {
    sub_1007A2254();
    v7 = sub_1007A2214();
  }

  sub_1007A2254();
  sub_100798004();
  v8 = sub_100797FF4();
  v29 = a3;
  v30 = a4;
  v9 = sub_1007A2214();
  v10 = [a2 storeID];
  if (v10 && (v11 = v10, sub_1007A2254(), v11, sub_1002060B4(), LOBYTE(v11) = sub_1007A28A4(), , (v11 & 1) != 0))
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  v28 = v12;
  sub_1007984D4();
  [a2 contentType];
  v13 = sub_1007984A4();
  v14 = [a2 supplementalContentAssets];
  if (v14)
  {
    sub_1002BACBC();
    sub_1002E4850();
    v15 = sub_1007A2834();

    if ((v15 & 0xC000000000000001) != 0)
    {
      v14 = sub_1007A3624();
    }

    else
    {
      v14 = *(v15 + 16);
    }
  }

  v16 = [objc_allocWithZone(NSNumber) initWithInteger:v14];
  v17 = sub_100797FF4();
  v18 = sub_100797FA4();

  if ([a2 isAudiobook])
  {
    v19 = [a2 hasRACSupport];
    if (v19 && (v20 = v19, v21 = [v19 BOOLValue], v20, (v21 & 1) != 0))
    {
      v22 = 1;
    }

    else
    {
      v22 = 2;
    }
  }

  else
  {
    v22 = 0;
  }

  [v8 emitRemoveFromCollectionEventWithTracker:a1 collectionID:v9 contentID:v7 contentAcquisitionType:v28 contentType:v13 supplementalContentCount:v16 seriesType:v18 productionType:v22];

  if (sub_1007A2254() == v29 && v23 == v30)
  {
  }

  else
  {
    v24 = sub_1007A3AB4();

    if ((v24 & 1) == 0)
    {
      return result;
    }
  }

  v26 = sub_100797FF4();
  v27 = [a2 permanentOrTemporaryAssetID];
  sub_1007A2254();

  sub_100797EF4();
}

uint64_t sub_100414A10(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v47 = a1;
  v48 = a3;
  v5 = sub_1001F1160(&qword_100AE2578);
  __chkstk_darwin(v5 - 8);
  v49 = v43 - v6;
  v50 = sub_100797D94();
  v46 = *(v50 - 8);
  __chkstk_darwin(v50);
  v55 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_100798234();
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v53 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001F1160(&qword_100ADA258);
  __chkstk_darwin(v9 - 8);
  v11 = v43 - v10;
  v12 = sub_100799224();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100798034();
  v57 = *(v16 - 8);
  __chkstk_darwin(v16);
  v52 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v43 - v19;
  sub_10000E3E8(a2, a2[3]);
  v21 = v13;
  v43[0] = sub_100799184();
  v43[1] = v22;
  sub_100009864(a2, v58);
  sub_1001F1160(&qword_100ADA250);
  v23 = swift_dynamicCast();
  v24 = *(v13 + 56);
  v44 = v20;
  v45 = v16;
  if (v23)
  {
    v24(v11, 0, 1, v12);
    (*(v13 + 32))(v15, v11, v12);
    v25 = sub_100799214();
    v26 = v57;
    v27 = &enum case for ProductionType.sgProduction(_:);
    if ((v25 & 1) == 0)
    {
      v27 = &enum case for ProductionType.nonSGProduction(_:);
    }

    v28 = v52;
    (*(v57 + 104))(v52, *v27, v16);
    (*(v26 + 32))(v20, v28, v16);
    v29 = sub_100799204();
    if (v29)
    {
      v52 = *(v29 + 16);
    }

    else
    {
      v52 = 0;
    }

    (*(v21 + 8))(v15, v12);
  }

  else
  {
    v24(v11, 1, 1, v12);
    sub_100007840(v11, &qword_100ADA258);
    (*(v57 + 104))(v20, enum case for ProductionType.unknown(_:), v16);
    v52 = 0;
  }

  sub_100798004();
  v30 = sub_100797FF4();
  sub_10000E3E8(a2, a2[3]);
  v31 = sub_1007991B4();
  v33 = v56;
  if (v32 && (v58[0] = v31, v58[1] = v32, sub_1002060B4(), v34 = sub_1007A28A4(), , (v34 & 1) != 0))
  {
    v35 = &enum case for ContentAcquisitionType.storeBought(_:);
  }

  else
  {
    v35 = &enum case for ContentAcquisitionType.nonStoreBought(_:);
  }

  v36 = v53;
  v37 = v54;
  (*(v54 + 104))(v53, *v35, v33);
  sub_1007984D4();
  v38 = v55;
  result = sub_1007984B4();
  if (v52 >> 31)
  {
    __break(1u);
  }

  else
  {
    v40 = sub_100797FF4();
    v41 = v49;
    sub_100797FB4();

    LOBYTE(v58[0]) = 0;
    v42 = v44;
    sub_100797EE4();

    sub_100007840(v41, &qword_100AE2578);
    (*(v46 + 8))(v38, v50);
    (*(v37 + 8))(v36, v33);
    return (*(v57 + 8))(v42, v45);
  }

  return result;
}

uint64_t type metadata accessor for MenuAppAnalyticsHelpers.TrackerInfo()
{
  result = qword_100AE25D8;
  if (!qword_100AE25D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004150B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE2578);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100415124(uint64_t a1)
{
  v2 = type metadata accessor for MenuAppAnalyticsHelpers.TrackerInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1004151A8()
{
  sub_100797D94();
  if (v0 <= 0x3F)
  {
    sub_100415274();
    if (v1 <= 0x3F)
    {
      sub_100798034();
      if (v2 <= 0x3F)
      {
        sub_1004152CC();
        if (v3 <= 0x3F)
        {
          sub_100798234();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100415274()
{
  if (!qword_100AE25E8)
  {
    sub_100797D14();
    v0 = sub_1007A3454();
    if (!v1)
    {
      atomic_store(v0, &qword_100AE25E8);
    }
  }
}

void sub_1004152CC()
{
  if (!qword_100AE25F0)
  {
    v0 = sub_1007A3454();
    if (!v1)
    {
      atomic_store(v0, &qword_100AE25F0);
    }
  }
}

uint64_t sub_10041531C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a2;
  v32 = a3;
  v4 = sub_1007A0F74();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v30 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v29 = &v29 - v8;
  v9 = sub_1001F1160(&qword_100AE2850);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v29 - v11;
  v13 = sub_1001F1160(&qword_100AD8770);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v29 - v15;
  v17 = *(v10 + 56);
  sub_10020B3C8(a1, v12, &unk_100AEB380);
  sub_10020B3C8(v31, &v12[v17], &unk_100AEB380);
  v18 = *(v5 + 48);
  v19 = v18(v12, 1, v4);
  v20 = v18(&v12[v17], 1, v4);
  if (v19 != 1)
  {
    v23 = *(v5 + 32);
    if (v20 == 1)
    {
      v23(v16, v12, v4);
    }

    else
    {
      v24 = v29;
      v23(v29, v12, v4);
      v25 = &v12[v17];
      v26 = v30;
      v23(v30, v25, v4);
      v27 = *(sub_1001F1160(&qword_100AD8A70) + 48);
      v23(v16, v24, v4);
      v23(&v16[v27], v26, v4);
    }

    goto LABEL_8;
  }

  if (v20 != 1)
  {
    (*(v5 + 32))(v16, &v12[v17], v4);
LABEL_8:
    v22 = v32;
    swift_storeEnumTagMultiPayload();
    sub_10020B3C8(v16, v22, &qword_100AD8770);
    v21 = 0;
    return (*(v14 + 56))(v22, v21, 1, v13);
  }

  v21 = 1;
  v22 = v32;
  return (*(v14 + 56))(v22, v21, 1, v13);
}

uint64_t sub_1004156B0()
{
  type metadata accessor for CounterActor.ActorType();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_100AE2630 = v0;
  return result;
}

uint64_t sub_1004156F0()
{
  v1 = v0;
  v2 = sub_1001F1160(&qword_100AD8A78);
  __chkstk_darwin(v2 - 8);
  v40 = &v36 - v3;
  v4 = _s5StateO4TurnVMa(0);
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin(v4);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PageTurnViewModel.State(0);
  __chkstk_darwin(v6);
  v36 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v36 - v9;
  v11 = _s5StateOMa(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v36 - v15;
  __chkstk_darwin(v17);
  v19 = &v36 - v18;
  swift_getKeyPath();
  swift_getKeyPath();
  v41 = v19;
  sub_10079B9A4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  sub_100422340(v16, _s5StateOMa);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v20 = sub_100287408();
  sub_100422340(v13, _s5StateOMa);
  if (v20)
  {
    v21 = *(v1 + 48);
    *v10 = v20;
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v36 - 2) = v21;
    *(&v36 - 1) = v10;
    v42 = v21;
    sub_10002293C(&qword_100AD9690, type metadata accessor for PageTurnViewModel);
    v23 = v20;
    sub_100797A04();
  }

  else
  {
    v24 = v37;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    v25 = *(v1 + 48);
    v26 = v40;
    sub_100286C10(v25[16], v40, *(v1 + 120));
    sub_100422340(v16, _s5StateOMa);
    if ((*(v38 + 48))(v26, 1, v39) == 1)
    {
      sub_100007840(v26, &qword_100AD8A78);
      swift_storeEnumTagMultiPayload();
      v27 = swift_getKeyPath();
      __chkstk_darwin(v27);
      *(&v36 - 2) = v25;
      *(&v36 - 1) = v10;
      v42 = v25;
      sub_10002293C(&qword_100AD9690, type metadata accessor for PageTurnViewModel);
      sub_100797A04();
    }

    else
    {
      v28 = v24;
      sub_1004223A0(v26, v24, _s5StateO4TurnVMa);
      v29 = *(v1 + 120);
      v30 = *(v1 + 112);
      v31 = type metadata accessor for PageTurnViewModel.State.Active(0);
      sub_100422408(v28, &v10[*(v31 + 24)], _s5StateO4TurnVMa);
      swift_getKeyPath();
      v42 = v25;
      sub_10002293C(&qword_100AD9690, type metadata accessor for PageTurnViewModel);
      sub_100797A14();

      v32 = v36;
      sub_10079B904();
      v33 = sub_1003AD588();
      sub_100422340(v32, type metadata accessor for PageTurnViewModel.State);
      *v10 = v29;
      v10[8] = v30;
      v10[*(v31 + 28)] = v33;
      swift_storeEnumTagMultiPayload();
      v34 = swift_getKeyPath();
      __chkstk_darwin(v34);
      *(&v36 - 2) = v25;
      *(&v36 - 1) = v10;
      v42 = v25;
      sub_100797A04();

      sub_100422340(v28, _s5StateO4TurnVMa);
    }
  }

  sub_100422340(v10, type metadata accessor for PageTurnViewModel.State);
  return sub_100422340(v41, _s5StateOMa);
}

uint64_t sub_100415E78()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    [v1 invalidate];
    v2 = *(v0 + 80);
  }

  else
  {
    v2 = 0;
  }

  *(v0 + 80) = 0;

  swift_unknownObjectRelease();

  sub_100007020(*(v0 + 88));

  v3 = OBJC_IVAR____TtC5Books18PageTurnController__state;
  v4 = sub_1001F1160(&qword_100AE2860);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_100415F54()
{
  sub_100415E78();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PageTurnController()
{
  result = qword_100AE2710;
  if (!qword_100AE2710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100416000(uint64_t a1)
{
  v23 = a1;
  v2 = sub_1001F1160(&qword_100AE2818);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_1001F1160(&qword_100AD8A88);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  v9 = _s5StateOMa(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v22 - v14;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v16 = v23;

  v17 = *(v6 + 56);
  sub_100422408(v16, v8, _s5StateOMa);
  sub_1004223A0(v15, &v8[v17], _s5StateOMa);
  result = swift_getEnumCaseMultiPayload();
  if (result == 5)
  {
    result = swift_getEnumCaseMultiPayload();
    if (result == 5)
    {
LABEL_4:
      sub_100422340(&v8[v17], _s5StateOMa);
      sub_100422340(v8, _s5StateOMa);
LABEL_8:
      sub_1004163EC();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10079B9A4();

      sub_100422340(v12, _s5StateOMa);
      sub_100422408(v16, v4, _s5StateOMa);
      (*(v10 + 56))(v4, 0, 1, v9);
      sub_1004156F0();
      sub_100007840(v4, &qword_100AE2818);
      return sub_100416728(v16);
    }
  }

  else if (result == 4)
  {
    result = swift_getEnumCaseMultiPayload();
    if (result == 4)
    {
      goto LABEL_4;
    }
  }

  v19 = *(v1 + 128);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v1 + 128) = v21;
    sub_100007840(v8, &qword_100AD8A88);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_100416374()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();
}

uint64_t sub_1004163EC()
{
  v1 = sub_10079ACE4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s5StateOMa(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  v11 = *(v0 + 128);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  if (qword_100AD19B8 != -1)
  {
    swift_once();
  }

  v12 = qword_100B23750;
  sub_10079ACF4();
  sub_100422408(v10, v7, _s5StateOMa);
  v13 = sub_10079ACC4();
  v14 = sub_1007A29A4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v28 = v1;
    v29 = v16;
    v17 = v16;
    *v15 = 134218242;
    *(v15 + 4) = v11;
    *(v15 + 12) = 2082;
    v18 = v2;
    v19 = sub_1006108C4();
    v21 = v20;
    v27 = _s5StateOMa;
    sub_100422340(v7, _s5StateOMa);
    v22 = sub_1000070F4(v19, v21, &v29);

    *(v15 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, "[%ld]: state => %{public}s", v15, 0x16u);
    sub_1000074E0(v17);

    (*(v18 + 8))(v4, v28);
    v23 = v10;
    v24 = v27;
  }

  else
  {

    sub_100422340(v7, _s5StateOMa);
    (*(v2 + 8))(v4, v1);
    v23 = v10;
    v24 = _s5StateOMa;
  }

  return sub_100422340(v23, v24);
}

id sub_100416728(uint64_t a1)
{
  v66 = a1;
  v2 = _s5StateO9ResettingVMa(0);
  __chkstk_darwin(v2 - 8);
  v67 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s5StateO8DraggingVMa(0);
  __chkstk_darwin(v4 - 8);
  v64 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v65 = &v60 - v7;
  v8 = _s5StateO21CapturingDragSnapshotVMa(0);
  __chkstk_darwin(v8 - 8);
  v63 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s5StateO7TurningVMa(0);
  __chkstk_darwin(v10 - 8);
  v62 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v61 = &v60 - v13;
  v14 = _s5StateO21CapturingTurnSnapshotVMa(0);
  v60 = *(v14 - 8);
  v15 = *(v60 + 64);
  __chkstk_darwin(v14);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v60 - v18;
  v20 = _s5StateOMa(0);
  __chkstk_darwin(v20);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v60 - v24;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        v35 = v63;
        sub_1004223A0(v25, v63, _s5StateO21CapturingDragSnapshotVMa);
        v55 = *(v1 + OBJC_IVAR____TtC5Books18PageTurnController_testDriverState);
        if (v55 <= 1)
        {
          v56 = 1;
        }

        else
        {
          v56 = *(v1 + OBJC_IVAR____TtC5Books18PageTurnController_testDriverState);
        }

        *(v1 + OBJC_IVAR____TtC5Books18PageTurnController_testDriverState) = v56;
        sub_10041740C(v55);
        v57 = swift_allocObject();
        swift_weakInit();
        sub_1004218D0(v35, v1, v57);
        v39 = _s5StateO21CapturingDragSnapshotVMa;
        goto LABEL_38;
      }

      v35 = v62;
      sub_1004223A0(v25, v62, _s5StateO7TurningVMa);
      v40 = *(v1 + OBJC_IVAR____TtC5Books18PageTurnController_testDriverState);
      if (v40 <= 2)
      {
        v41 = 2;
      }

      else
      {
        v41 = *(v1 + OBJC_IVAR____TtC5Books18PageTurnController_testDriverState);
      }

      *(v1 + OBJC_IVAR____TtC5Books18PageTurnController_testDriverState) = v41;
      sub_10041740C(v40);
      v42 = swift_allocObject();
      swift_weakInit();

      sub_10041D230(v35, sub_100421E94, v42);
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        sub_1004223A0(v25, v19, _s5StateO21CapturingTurnSnapshotVMa);
        v27 = *(v1 + OBJC_IVAR____TtC5Books18PageTurnController_testDriverState);
        if (v27 <= 1)
        {
          v28 = 1;
        }

        else
        {
          v28 = *(v1 + OBJC_IVAR____TtC5Books18PageTurnController_testDriverState);
        }

        *(v1 + OBJC_IVAR____TtC5Books18PageTurnController_testDriverState) = v28;
        sub_10041740C(v27);
        v29 = swift_allocObject();
        swift_weakInit();
        v30 = *&v19[*(v14 + 20)];
        sub_100422408(v19, v16, _s5StateO21CapturingTurnSnapshotVMa);
        v31 = (*(v60 + 80) + 32) & ~*(v60 + 80);
        v32 = swift_allocObject();
        *(v32 + 16) = sub_100421EBC;
        *(v32 + 24) = v29;
        sub_1004223A0(v16, v32 + v31, _s5StateO21CapturingTurnSnapshotVMa);

        sub_10041F908(v30, sub_100421EDC);

        v33 = _s5StateO21CapturingTurnSnapshotVMa;
        v34 = v19;
LABEL_24:
        sub_100422340(v34, v33);
      }

      v35 = v61;
      sub_1004223A0(v25, v61, _s5StateO7TurningVMa);
      v48 = *(v1 + OBJC_IVAR____TtC5Books18PageTurnController_testDriverState);
      if (v48 <= 2)
      {
        v49 = 2;
      }

      else
      {
        v49 = *(v1 + OBJC_IVAR____TtC5Books18PageTurnController_testDriverState);
      }

      *(v1 + OBJC_IVAR____TtC5Books18PageTurnController_testDriverState) = v49;
      sub_10041740C(v48);
      v50 = swift_allocObject();
      swift_weakInit();

      sub_10041FC40(v35, sub_100421E9C, v50);
    }

    v39 = _s5StateO7TurningVMa;
LABEL_38:
    sub_100422340(v35, v39);
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v43 = v67;
      sub_1004223A0(v25, v67, _s5StateO9ResettingVMa);
      v44 = *(v1 + OBJC_IVAR____TtC5Books18PageTurnController_testDriverState);
      if (v44 <= 2)
      {
        v45 = 2;
      }

      else
      {
        v45 = *(v1 + OBJC_IVAR____TtC5Books18PageTurnController_testDriverState);
      }

      *(v1 + OBJC_IVAR____TtC5Books18PageTurnController_testDriverState) = v45;
      v46 = v1;
      sub_10041740C(v44);
      sub_1003AC854(0x6E69747465736572, 0xE900000000000067);
      v47 = swift_allocObject();
      swift_weakInit();
      sub_100420978(v43, v46, v47);
      v33 = _s5StateO9ResettingVMa;
      v34 = v43;
      goto LABEL_24;
    }

    sub_100422408(v66, v22, _s5StateOMa);
    v58 = swift_getEnumCaseMultiPayload();
    sub_100422340(v22, _s5StateOMa);
    if (v58 == 6)
    {
      sub_1003ADD78(4);
    }

    v59 = *(v1 + OBJC_IVAR____TtC5Books18PageTurnController_testDriverState);
    *(v1 + OBJC_IVAR____TtC5Books18PageTurnController_testDriverState) = 0;
    return sub_10041740C(v59);
  }

  else
  {
    if (EnumCaseMultiPayload == 4)
    {
      v35 = v65;
      sub_1004223A0(v25, v65, _s5StateO8DraggingVMa);
      v36 = *(v1 + OBJC_IVAR____TtC5Books18PageTurnController_testDriverState);
      if (v36 <= 2)
      {
        v37 = 2;
      }

      else
      {
        v37 = *(v1 + OBJC_IVAR____TtC5Books18PageTurnController_testDriverState);
      }

      *(v1 + OBJC_IVAR____TtC5Books18PageTurnController_testDriverState) = v37;
      sub_10041740C(v36);
      v38 = swift_allocObject();
      swift_weakInit();
      sub_1004213F0(v35, v1, v38);
      v39 = _s5StateO8DraggingVMa;
      goto LABEL_38;
    }

    v51 = v64;
    sub_1004223A0(v25, v64, _s5StateO8DraggingVMa);
    v52 = *(v1 + OBJC_IVAR____TtC5Books18PageTurnController_testDriverState);
    if (v52 <= 2)
    {
      v53 = 2;
    }

    else
    {
      v53 = *(v1 + OBJC_IVAR____TtC5Books18PageTurnController_testDriverState);
    }

    *(v1 + OBJC_IVAR____TtC5Books18PageTurnController_testDriverState) = v53;
    sub_10041740C(v52);
    sub_10041DDDC(v51);
    return sub_100422340(v51, _s5StateO8DraggingVMa);
  }
}

uint64_t sub_100416F9C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();
}

uint64_t sub_100417018(uint64_t a1)
{
  v2 = _s5StateOMa(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v12 - v6;
  __chkstk_darwin(v8);
  v10 = &v12 - v9;
  sub_100422408(a1, &v12 - v9, _s5StateOMa);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_100422408(v10, v4, _s5StateOMa);

  sub_10079B9B4();
  sub_100416000(v7);
  sub_100422340(v7, _s5StateOMa);
  return sub_100422340(v10, _s5StateOMa);
}

uint64_t sub_1004171D4(uint64_t a1)
{
  v2 = _s5StateOMa(0);
  __chkstk_darwin(v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  swift_storeEnumTagMultiPayload();
  sub_10028A760(a1, v7);
  sub_100422340(v7, _s5StateOMa);
  sub_100422408(a1, v4, _s5StateOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2 || (EnumCaseMultiPayload - 3) < 3 || EnumCaseMultiPayload == 6)
  {
    sub_100422340(v4, _s5StateOMa);
  }

  sub_1007A0614();
  return sub_100422340(a1, _s5StateOMa);
}

uint64_t sub_10041736C(uint64_t a1)
{
  v2 = _s5StateOMa(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100422408(a1, v4, _s5StateOMa);
  return sub_1004171D4(v4);
}

id sub_10041740C(id result)
{
  v2 = OBJC_IVAR____TtC5Books18PageTurnController_testDriverState;
  if (*(v1 + OBJC_IVAR____TtC5Books18PageTurnController_testDriverState) != result)
  {
    v3 = *(v1 + 32);
    [v3 postEvent:**(&off_100A1B7F0 + result) sender:v1];
    v4 = **(&off_100A1B808 + *(v1 + v2));

    return [v3 postEvent:v4 sender:v1];
  }

  return result;
}

uint64_t *sub_1004174B0@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_100417518()
{
  v1 = 0x6574616D696E61;
  if (*v0 == 1)
  {
    v1 = 0x7075746573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701602409;
  }
}

BOOL sub_100417568()
{
  v0 = _s5StateOMa(0);
  __chkstk_darwin(v0);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 6)
    {
      return 0;
    }

    v4 = 0;
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    v4 = EnumCaseMultiPayload == 0;
  }

  else
  {
    v4 = EnumCaseMultiPayload != 2;
  }

  sub_100422340(v2, _s5StateOMa);
  return v4;
}

uint64_t sub_1004176A0()
{
  v0 = _s5StateOMa(0);
  __chkstk_darwin(v0);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v14 - v4;
  v6 = sub_1001F1160(&unk_100AEB380);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  swift_getObjectType();
  sub_1007A09C4();
  v9 = sub_1007A0F74();
  v10 = (*(*(v9 - 8) + 48))(v8, 1, v9);
  sub_100007840(v8, &unk_100AEB380);
  if (v10 != 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    sub_1004223A0(v5, v2, _s5StateOMa);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v11 = 1;
    if (((1 << EnumCaseMultiPayload) & 0x47) == 0)
    {
      if (((1 << EnumCaseMultiPayload) & 0x38) == 0)
      {
        return v11;
      }

      v11 = 0;
    }

    sub_100422340(v2, _s5StateOMa);
    return v11;
  }

  return 0;
}

uint64_t sub_1004178E4(uint64_t a1, int a2)
{
  LODWORD(v34) = a2;
  v4 = sub_1007A0404();
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin(v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10079ACE4();
  v37 = *(v7 - 8);
  v38 = v7;
  __chkstk_darwin(v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001F1160(&unk_100AEB380);
  __chkstk_darwin(v10 - 8);
  v12 = &v30 - v11;
  v13 = sub_1007A0F74();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v33 = v17;
  sub_1007A09C4();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v34 = a1;
    sub_100007840(v12, &unk_100AEB380);
    if (qword_100AD19B8 != -1)
    {
      swift_once();
    }

    v18 = qword_100B23750;
    sub_10079ACF4();
    v19 = v35;
    v20 = v36;
    (*(v35 + 16))(v6, v34, v36);
    v21 = sub_10079ACC4();
    v22 = sub_1007A29B4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39 = v31;
      *v23 = 136315138;
      sub_10002293C(&qword_100AE2858, &type metadata accessor for LocationMovement);
      v24 = sub_1007A3A74();
      v26 = v25;
      (*(v19 + 8))(v6, v20);
      v27 = sub_1000070F4(v24, v26, &v39);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "Unable to get destination for movement %s", v23, 0xCu);
      sub_1000074E0(v31);
    }

    else
    {

      (*(v19 + 8))(v6, v20);
    }

    (*(v37 + 8))(v9, v38);
    sub_1007A03E4();
    result = sub_1007A03D4();
    if (result)
    {
      return sub_1007A0944();
    }
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    v28 = sub_1007A03E4();
    sub_100417DA0(v28 & 1, v16, v34 & 1);
    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_100417DA0(int a1, char *a2, char a3)
{
  v4 = v3;
  v58 = a2;
  v55 = a1;
  v6 = sub_10079ACE4();
  v59 = *(v6 - 8);
  v60 = v6;
  __chkstk_darwin(v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v57 = &v53 - v10;
  v11 = sub_1007A0F74();
  v61 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s5StateOMa(0);
  __chkstk_darwin(v14);
  v53 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v54 = &v53 - v17;
  __chkstk_darwin(v18);
  v56 = &v53 - v19;
  __chkstk_darwin(v20);
  v22 = &v53 - v21;
  __chkstk_darwin(v23);
  v25 = &v53 - v24;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  sub_1004223A0(v25, v22, _s5StateOMa);
  v26 = 1 << swift_getEnumCaseMultiPayload();
  if ((v26 & 0x47) != 0)
  {
    sub_100422340(v22, _s5StateOMa);
  }

  else if ((v26 & 0x38) != 0)
  {
    sub_100422340(v22, _s5StateOMa);
    if (qword_100AD19B8 != -1)
    {
      swift_once();
    }

    v43 = qword_100B23750;
    sub_10079ACF4();

    v44 = sub_10079ACC4();
    v45 = sub_1007A29B4();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v62[0] = v47;
      *v46 = 136315138;
      swift_getKeyPath();
      swift_getKeyPath();
      v48 = v56;
      sub_10079B9A4();

      v49 = sub_1006108C4();
      v51 = v50;
      sub_100422340(v48, _s5StateOMa);
      v52 = sub_1000070F4(v49, v51, v62);

      *(v46 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v44, v45, "Unable to turn during state %s", v46, 0xCu);
      sub_1000074E0(v47);
    }

    v41 = *(v59 + 8);
    v42 = v8;
    return v41(v42, v60);
  }

  if (a3)
  {
    swift_beginAccess();
    if (*(v4 + 56))
    {

      v27 = sub_1007A1034();

      if (v27)
      {
        v28 = [v27 view];

        if (v28)
        {
          swift_getObjectType();
          sub_1007A0964();
          v29 = *(v61 + 16);
          v30 = v56;
          v29(v56, v13, v11);
          v31 = _s5StateO21CapturingTurnSnapshotVMa(0);
          v29((v30 + v31[7]), v58, v11);
          *(v30 + v31[5]) = v28;
          *(v30 + v31[6]) = v55 & 1;
          swift_storeEnumTagMultiPayload();
          swift_getKeyPath();
          swift_getKeyPath();
          v32 = v28;
          v33 = v54;
          sub_10079B9A4();

          swift_getKeyPath();
          swift_getKeyPath();
          sub_100422408(v30, v53, _s5StateOMa);

          sub_10079B9B4();
          sub_100416000(v33);

          sub_100422340(v33, _s5StateOMa);
          sub_100422340(v30, _s5StateOMa);
          return (*(v61 + 8))(v13, v11);
        }
      }
    }
  }

  swift_getObjectType();
  sub_1007A0964();
  sub_10002293C(&qword_100AEB790, &type metadata accessor for SpreadPaginationEntity);
  v35 = sub_1007A2124();
  (*(v61 + 8))(v13, v11);
  if (v35)
  {
    if (qword_100AD19B8 != -1)
    {
      swift_once();
    }

    v36 = qword_100B23750;
    v37 = v57;
    sub_10079ACF4();
    v38 = sub_10079ACC4();
    v39 = sub_1007A2994();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Skipping turn, we are already at destination", v40, 2u);
    }

    v41 = *(v59 + 8);
    v42 = v37;
    return v41(v42, v60);
  }

  return sub_1007A09A4();
}

uint64_t sub_1004185AC(char *a1, char a2)
{
  v4 = sub_1007A0F74();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10079ACE4();
  v25 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v11 = sub_1007A09B4();
  if (v11 == 2)
  {
    if (qword_100AD19B8 != -1)
    {
      swift_once();
    }

    v12 = qword_100B23750;
    sub_10079ACF4();
    (*(v5 + 16))(v7, a1, v4);
    v13 = sub_10079ACC4();
    v14 = sub_1007A29B4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v26 = v16;
      *v15 = 136315138;
      sub_10002293C(&qword_100AE2830, &type metadata accessor for SpreadPaginationEntity);
      v17 = sub_1007A3A74();
      v24 = v8;
      v19 = v18;
      (*(v5 + 8))(v7, v4);
      v20 = sub_1000070F4(v17, v19, &v26);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v13, v14, "Unable to determine movement direction to destination %s", v15, 0xCu);
      sub_1000074E0(v16);

      return (*(v25 + 8))(v10, v24);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
      return (*(v25 + 8))(v10, v8);
    }
  }

  else
  {
    v22 = v11 & 1;

    return sub_100417DA0(v22, a1, a2 & 1);
  }
}

uint64_t sub_100418944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D2>)
{
  v137 = a1;
  v157 = a2;
  v131 = _s5StateO8DraggingVMa(0);
  __chkstk_darwin(v131);
  v130 = v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_10079ACE4();
  v155 = *(v158 - 8);
  __chkstk_darwin(v158);
  v9 = v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v138 = v124 - v11;
  __chkstk_darwin(v12);
  v133 = v124 - v13;
  v147 = _s5StateO21CapturingDragSnapshotVMa(0);
  v145 = *(v147 - 8);
  __chkstk_darwin(v147);
  v129 = v124 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v124 - v16;
  v18 = sub_1001F1160(&qword_100AE2840);
  __chkstk_darwin(v18 - 8);
  v20 = v124 - v19;
  v142 = sub_1001F1160(&qword_100AD8770);
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v134 = v124 - v21;
  v22 = sub_1007A0404();
  v140 = *(v22 - 8);
  __chkstk_darwin(v22);
  v24 = v124 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_1001F1160(&unk_100AEB380);
  __chkstk_darwin(v132);
  v136 = v124 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v139 = v124 - v27;
  __chkstk_darwin(v28);
  v135 = v124 - v29;
  __chkstk_darwin(v30);
  v32 = v124 - v31;
  __chkstk_darwin(v33);
  v148 = v124 - v34;
  __chkstk_darwin(v35);
  v149 = v124 - v36;
  __chkstk_darwin(v37);
  v143 = v124 - v38;
  v39 = sub_1001F1160(&qword_100AE2848);
  __chkstk_darwin(v39 - 8);
  v144 = v124 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v146 = v124 - v42;
  v159 = _s5StateOMa(0);
  v156 = *(v159 - 8);
  __chkstk_darwin(v159);
  v44 = v124 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = _s5StateO9ResettingVMa(0);
  __chkstk_darwin(v45 - 8);
  v47 = v124 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1007A0F74();
  v153 = *(v48 - 8);
  v154 = v48;
  __chkstk_darwin(v48);
  v150 = v124 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v151 = v124 - v51;
  swift_beginAccess();
  v152 = v4;
  if (*(v4 + 56))
  {

    v52 = sub_1007A1034();

    if (v52)
    {
      v53 = [v52 view];

      if (v53)
      {
        v127 = v17;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_10079B9A4();

        if (swift_getEnumCaseMultiPayload() == 6)
        {
          sub_1004223A0(v44, v47, _s5StateO9ResettingVMa);
          v54 = *(v153 + 16);
          v55 = (v153 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v56 = v151;
          v54(v151, v47, v154);
          v126 = *&v47[*(_s5StateO4TurnVMa(0) + 20)];
          sub_100422340(v47, _s5StateO4TurnVMa);
        }

        else
        {
          sub_100422340(v44, _s5StateOMa);
          swift_getObjectType();
          v56 = v151;
          sub_1007A0964();
          v126 = [v53 snapshotViewAfterScreenUpdates:0];
          v54 = *(v153 + 16);
          v55 = (v153 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        }

        v125 = v54;
        v124[1] = v55;
        v54(v150, v56, v154);
        v128 = v53;
        sub_1007A0384();
        swift_getObjectType();
        v65 = v143;
        sub_1007A09C4();
        v66 = *(v140 + 8);
        v66(v24, v22);
        sub_1007A0364();
        v67 = v149;
        sub_1007A09C4();
        v66(v24, v22);
        v68 = v65;
        v69 = v148;
        sub_1000077D8(v65, v148, &unk_100AEB380);
        sub_1000077D8(v67, v32, &unk_100AEB380);
        sub_10041531C(v69, v32, v20);
        if ((*(v141 + 48))(v20, 1, v142) == 1)
        {
          sub_100007840(v20, &qword_100AE2840);
          v70 = v158;
          if (qword_100AD1360 != -1)
          {
            v123 = v158;
            swift_once();
            v70 = v123;
          }

          sub_100008B98(v70, qword_100AD8570);
          v71 = v135;
          sub_1000077D8(v65, v135, &unk_100AEB380);
          v72 = v139;
          sub_1000077D8(v67, v139, &unk_100AEB380);
          v73 = sub_10079ACC4();
          v74 = sub_1007A29B4();
          if (os_log_type_enabled(v73, v74))
          {
            v75 = swift_slowAlloc();
            v142 = swift_slowAlloc();
            v160 = v142;
            *v75 = 136315394;
            v76 = v148;
            sub_1000077D8(v71, v148, &unk_100AEB380);
            v77 = sub_1007A22E4();
            v78 = v71;
            v79 = v77;
            v81 = v80;
            sub_100007840(v78, &unk_100AEB380);
            v82 = sub_1000070F4(v79, v81, &v160);

            *(v75 + 4) = v82;
            *(v75 + 12) = 2080;
            v83 = v139;
            sub_1000077D8(v139, v76, &unk_100AEB380);
            v84 = v68;
            v85 = sub_1007A22E4();
            v87 = v86;
            sub_100007840(v83, &unk_100AEB380);
            v88 = sub_1000070F4(v85, v87, &v160);

            *(v75 + 14) = v88;
            _os_log_impl(&_mh_execute_header, v73, v74, "Cannot produce destination for backwardDestination: %s, forward: %s", v75, 0x16u);
            swift_arrayDestroy();

            sub_100007840(v149, &unk_100AEB380);
            v89 = v84;
          }

          else
          {

            sub_100007840(v72, &unk_100AEB380);
            sub_100007840(v71, &unk_100AEB380);
            sub_100007840(v67, &unk_100AEB380);
            v89 = v68;
          }

          sub_100007840(v89, &unk_100AEB380);
          v91 = v153;
          v92 = v154;
          (*(v153 + 8))(v150, v154);
          v95 = 1;
          v97 = v127;
          v93 = v146;
          v94 = v147;
          v96 = v158;
        }

        else
        {
          sub_100007840(v67, &unk_100AEB380);
          sub_100007840(v65, &unk_100AEB380);
          v90 = v134;
          sub_10020B3C8(v20, v134, &qword_100AD8770);
          v91 = v153;
          v92 = v154;
          v93 = v146;
          (*(v153 + 32))(v146, v150, v154);
          v94 = v147;
          *(v93 + *(v147 + 20)) = v128;
          sub_10020B3C8(v90, v93 + v94[6], &qword_100AD8770);
          v95 = 0;
          *(v93 + v94[7]) = a3;
          *(v93 + v94[8]) = a4;
          v96 = v158;
          v97 = v127;
        }

        v98 = v145;
        (*(v145 + 56))(v93, v95, 1, v94);
        v99 = v144;
        sub_1000077D8(v93, v144, &qword_100AE2848);
        if ((*(v98 + 48))(v99, 1, v94) == 1)
        {
          sub_100007840(v99, &qword_100AE2848);
          if (qword_100AD19B8 != -1)
          {
            swift_once();
          }

          v100 = qword_100B23750;
          v101 = v138;
          sub_10079ACF4();
          v102 = sub_10079ACC4();
          v103 = sub_1007A29B4();
          v104 = os_log_type_enabled(v102, v103);
          v105 = v151;
          if (v104)
          {
            v106 = swift_slowAlloc();
            *v106 = 0;
            _os_log_impl(&_mh_execute_header, v102, v103, "CapturingDragSnapshot values missing, cannot drag", v106, 2u);
            v91 = v153;
          }

          (*(v155 + 8))(v101, v96);
          sub_100007840(v93, &qword_100AE2848);
          (*(v91 + 8))(v105, v92);
          v107 = v157;
        }

        else
        {
          sub_1004223A0(v99, v97, _s5StateO21CapturingDragSnapshotVMa);
          v108 = v136;
          sub_100287648(v136);
          if ((*(v91 + 48))(v108, 1, v92) == 1)
          {

            sub_100007840(v93, &qword_100AE2848);
            (*(v91 + 8))(v151, v92);
            sub_100007840(v108, &unk_100AEB380);
          }

          else
          {
            sub_100007840(v108, &unk_100AEB380);
            if (v126)
            {
              v109 = qword_100AD19B8;
              v110 = v126;
              if (v109 != -1)
              {
                swift_once();
              }

              v111 = qword_100B23750;
              sub_10079ACF4();
              v112 = sub_10079ACC4();
              v113 = sub_1007A2994();
              if (os_log_type_enabled(v112, v113))
              {
                v114 = swift_slowAlloc();
                *v114 = 0;
                _os_log_impl(&_mh_execute_header, v112, v113, "Dragging while already doing something", v114, 2u);
              }

              (*(v155 + 8))(v133, v96);
              sub_1003ADED0();

              sub_100007840(v93, &qword_100AE2848);
              (*(v153 + 8))(v151, v92);
              v115 = v129;
              sub_1004223A0(v97, v129, _s5StateO21CapturingDragSnapshotVMa);
              v116 = v130;
              v125(v130, v115, v92);
              v117 = *(v115 + v94[5]);
              v118 = v131;
              sub_1000077D8(v115 + v94[6], v116 + *(v131 + 28), &qword_100AD8770);
              v119 = *(v115 + v94[7]);
              v120 = *(v115 + v94[8]);
              v121 = v117;
              sub_100422340(v115, _s5StateO21CapturingDragSnapshotVMa);
              *(v116 + v118[5]) = v110;
              *(v116 + v118[6]) = v121;
              *(v116 + v118[8]) = 0;
              *(v116 + v118[9]) = v119;
              *(v116 + v118[10]) = v120;
              v107 = v157;
              sub_1004223A0(v116, v157, _s5StateO8DraggingVMa);
              goto LABEL_36;
            }

            sub_100007840(v93, &qword_100AE2848);
            (*(v91 + 8))(v151, v92);
          }

          v107 = v157;
          sub_1004223A0(v97, v157, _s5StateO21CapturingDragSnapshotVMa);
        }

LABEL_36:
        swift_storeEnumTagMultiPayload();
        v64 = v107;
        v63 = 0;
        return (*(v156 + 56))(v64, v63, 1, v159);
      }
    }
  }

  if (qword_100AD19B8 != -1)
  {
    swift_once();
  }

  v57 = qword_100B23750;
  sub_10079ACF4();
  v58 = sub_10079ACC4();
  v59 = sub_1007A29A4();
  v60 = os_log_type_enabled(v58, v59);
  v61 = v158;
  if (v60)
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&_mh_execute_header, v58, v59, "Abandoning drag, no origin view", v62, 2u);
  }

  (*(v155 + 8))(v9, v61);
  v63 = 1;
  v64 = v157;
  return (*(v156 + 56))(v64, v63, 1, v159);
}

uint64_t sub_100419D0C(void (*a1)(char *, double, double, double, double), double a2, double a3, double a4, double a5)
{
  v27 = a1;
  v9 = sub_1001F1160(&qword_100AE2818);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - v10;
  v12 = _s5StateOMa(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v26 - v17;
  __chkstk_darwin(v19);
  v21 = &v26 - v20;
  __chkstk_darwin(v22);
  v24 = &v26 - v23;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v27(v21, a2, a3, a4, a5);
  sub_100422340(v21, _s5StateOMa);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_100007840(v11, &qword_100AE2818);
  }

  sub_1004223A0(v11, v24, _s5StateOMa);
  sub_100422408(v24, v21, _s5StateOMa);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_100422408(v21, v15, _s5StateOMa);

  sub_10079B9B4();
  sub_100416000(v18);
  sub_100422340(v18, _s5StateOMa);
  sub_100422340(v21, _s5StateOMa);
  return sub_100422340(v24, _s5StateOMa);
}

uint64_t sub_10041A070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D2>)
{
  v54 = a2;
  v7 = sub_10079ACE4();
  v49 = *(v7 - 8);
  v50 = v7;
  __chkstk_darwin(v7);
  v48 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s5StateOMa(0);
  v51 = *(v9 - 8);
  __chkstk_darwin(v9);
  v47 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v46 - v12;
  v14 = sub_1001F1160(&qword_100AD8A80);
  __chkstk_darwin(v14 - 8);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v46 - v18;
  v20 = _s5StateO8DraggingVMa(0);
  v21 = *(v20 - 1);
  __chkstk_darwin(v20);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v46 - v25;
  __chkstk_darwin(v27);
  v29 = &v46 - v28;
  v53 = a1;
  sub_100422408(a1, v13, _s5StateOMa);
  v52 = v9;
  if ((swift_getEnumCaseMultiPayload() & 0xFFFFFFFE) == 4)
  {
    sub_1004223A0(v13, v26, _s5StateO8DraggingVMa);
    sub_1004223A0(v26, v19, _s5StateO8DraggingVMa);
    v30 = *(v21 + 56);
    v30(v19, 0, 1, v20);
  }

  else
  {
    v30 = *(v21 + 56);
    v30(v19, 1, 1, v20);
    sub_100422340(v13, _s5StateOMa);
  }

  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_100007840(v19, &qword_100AD8A80);
    if (qword_100AD19B8 != -1)
    {
      swift_once();
    }

    v31 = qword_100B23750;
    v32 = v48;
    sub_10079ACF4();
    v33 = v47;
    sub_100422408(v53, v47, _s5StateOMa);
    v34 = sub_10079ACC4();
    v35 = sub_1007A29B4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v55 = v37;
      *v36 = 136315138;
      v38 = sub_1006108C4();
      v40 = v39;
      sub_100422340(v33, _s5StateOMa);
      v41 = sub_1000070F4(v38, v40, &v55);

      *(v36 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v34, v35, "Unable to make dragUpdateState from %s", v36, 0xCu);
      sub_1000074E0(v37);
    }

    else
    {

      sub_100422340(v33, _s5StateOMa);
    }

    (*(v49 + 8))(v32, v50);
    v45 = 1;
    v42 = v54;
    return (*(v51 + 56))(v42, v45, 1, v52);
  }

  sub_1004223A0(v19, v29, _s5StateO8DraggingVMa);
  v42 = v54;
  sub_100422408(v53, v54, _s5StateOMa);
  sub_100422408(v29, v23, _s5StateO8DraggingVMa);
  sub_100422408(v23, v16, _s5StateO8DraggingVMa);
  v43 = *&v23[v20[8]];
  result = sub_100422340(v23, _s5StateO8DraggingVMa);
  if (!__OFADD__(v43, 1))
  {
    *&v16[v20[8]] = v43 + 1;
    *&v16[v20[9]] = a3;
    *&v16[v20[10]] = a4;
    v30(v16, 0, 1, v20);
    sub_100287BF8(v16);
    sub_100422340(v29, _s5StateO8DraggingVMa);
    v45 = 0;
    return (*(v51 + 56))(v42, v45, 1, v52);
  }

  __break(1u);
  return result;
}

uint64_t sub_10041A6EC(int a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  LODWORD(v152) = a1;
  v11 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v11 - 8);
  v144 = v127 - v12;
  v13 = _s5StateO7TurningVMa(0);
  v140 = *(v13 - 8);
  __chkstk_darwin(v13 - 8);
  v130 = v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v141 = v17;
  v142 = v127 - v16;
  __chkstk_darwin(v18);
  v143 = (v127 - v19);
  v20 = sub_1001F1160(&unk_100AEB380);
  __chkstk_darwin(v20 - 8);
  v138 = v127 - v21;
  v22 = sub_1007A0F74();
  v139 = *(v22 - 8);
  __chkstk_darwin(v22);
  v24 = v127 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v129 = v127 - v26;
  __chkstk_darwin(v27);
  v133 = v127 - v28;
  v29 = sub_1001F1160(&qword_100AE2818);
  __chkstk_darwin(v29 - 8);
  v151 = v127 - v30;
  v153 = _s5StateOMa(0);
  v150 = *(v153 - 8);
  __chkstk_darwin(v153);
  v137 = v127 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v148 = v127 - v33;
  __chkstk_darwin(v34);
  v149 = v127 - v35;
  __chkstk_darwin(v36);
  v135 = v127 - v37;
  __chkstk_darwin(v38);
  v147 = v127 - v39;
  __chkstk_darwin(v40);
  v42 = v127 - v41;
  __chkstk_darwin(v43);
  v45 = v127 - v44;
  v46 = sub_10079ACE4();
  v47 = *(v46 - 8);
  __chkstk_darwin(v46);
  v134 = v127 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v131 = v127 - v50;
  __chkstk_darwin(v51);
  v53 = v127 - v52;
  if (qword_100AD19B8 != -1)
  {
    swift_once();
  }

  v136 = qword_100B23750;
  sub_10079ACF4();
  v54 = sub_10079ACC4();
  v55 = sub_1007A2994();
  v56 = os_log_type_enabled(v54, v55);
  v128 = v24;
  if (v56)
  {
    v57 = swift_slowAlloc();
    v146 = v45;
    v58 = v57;
    v59 = swift_slowAlloc();
    v132 = v6;
    v127[1] = v59;
    v156[0] = v59;
    *v58 = 136315650;
    v154 = a2;
    v155 = a3;
    type metadata accessor for CGPoint(0);
    v60 = sub_1007A22E4();
    v145 = v46;
    v62 = sub_1000070F4(v60, v61, v156);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2080;
    v154 = a4;
    v155 = a5;
    v63 = sub_1007A22E4();
    v65 = sub_1000070F4(v63, v64, v156);

    *(v58 + 14) = v65;
    v46 = v145;
    *(v58 + 22) = 1024;
    v66 = v152;
    *(v58 + 24) = v152 & 1;
    _os_log_impl(&_mh_execute_header, v54, v55, "Drag end with translation: %s velocity: %s success: %{BOOL}d", v58, 0x1Cu);
    swift_arrayDestroy();
    v6 = v132;

    v45 = v146;

    v67 = *(v47 + 8);
    v67(v53, v46);
  }

  else
  {

    v67 = *(v47 + 8);
    v67(v53, v46);
    v66 = v152;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v68 = v151;
  sub_10041B9F4(v42, v66 & 1, v151, a2, a4);
  sub_100422340(v42, _s5StateOMa);
  if ((*(v150 + 48))(v68, 1, v153) == 1)
  {
    return sub_100007840(v68, &qword_100AE2818);
  }

  sub_1004223A0(v68, v45, _s5StateOMa);
  v70 = v6[6];
  swift_getKeyPath();
  v154 = v70;
  sub_10002293C(&qword_100AD9690, type metadata accessor for PageTurnViewModel);
  sub_100797A14();

  v71 = sub_10079FE94();
  v73 = v72;
  if (v71 == sub_10079FE94() && v73 == v74)
  {
  }

  else
  {
    v75 = sub_1007A3AB4();

    if ((v75 & 1) == 0)
    {
      swift_storeEnumTagMultiPayload();
      swift_getKeyPath();
      swift_getKeyPath();
      v92 = v42;
      v93 = v149;
      sub_10079B9A4();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_100422408(v92, v148, _s5StateOMa);

      sub_10079B9B4();
      sub_100416000(v93);
      sub_100422340(v93, _s5StateOMa);
      sub_100422340(v92, _s5StateOMa);
      v94 = v137;
      sub_100422408(v45, v137, _s5StateOMa);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v95 = v130;
        sub_1004223A0(v94, v130, _s5StateO7TurningVMa);
        v96 = _s5StateO4TurnVMa(0);
        sub_100417DA0(*(v95 + *(v96 + 24)), (v95 + *(v96 + 28)), 1);
        sub_100422340(v95, _s5StateO7TurningVMa);
        v97 = v45;
      }

      else
      {
        sub_100422340(v45, _s5StateOMa);
        v97 = v94;
      }

      return sub_100422340(v97, _s5StateOMa);
    }
  }

  v76 = v147;
  sub_100422408(v45, v147, _s5StateOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v153 = v42;
    v81 = v143;
    sub_1004223A0(v76, v143, _s5StateO7TurningVMa);
    v82 = sub_1007A2744();
    v83 = v144;
    (*(*(v82 - 8) + 56))(v144, 1, 1, v82);
    v84 = swift_allocObject();
    swift_weakInit();
    v85 = v142;
    sub_100422408(v81, v142, _s5StateO7TurningVMa);
    v86 = qword_100AD1598;

    if (v86 != -1)
    {
      swift_once();
    }

    v87 = qword_100AE2630;
    v88 = sub_10002293C(&qword_100AE2828, type metadata accessor for CounterActor.ActorType);
    v89 = (*(v140 + 80) + 40) & ~*(v140 + 80);
    v90 = swift_allocObject();
    v90[2] = v87;
    v90[3] = v88;
    v90[4] = v84;
    sub_1004223A0(v85, v90 + v89, _s5StateO7TurningVMa);

    sub_100345AA0(0, 0, v83, &unk_100824718, v90);

    sub_100422340(v81, _s5StateO7TurningVMa);
    v91 = v149;
    v42 = v153;
    goto LABEL_33;
  }

  if (EnumCaseMultiPayload == 7)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v78 = v135;
    sub_10079B9A4();

    v79 = v138;
    sub_100287648(v138);
    sub_100422340(v78, _s5StateOMa);
    v80 = v139;
    if ((*(v139 + 48))(v79, 1, v22) == 1)
    {
      sub_100007840(v79, &unk_100AEB380);
    }

    else
    {
      v153 = v47;
      v145 = v46;
      v146 = v45;
      v98 = v133;
      (*(v80 + 32))(v133, v79, v22);
      v100 = *(v6 + 2);
      v99 = *(v6 + 3);
      ObjectType = swift_getObjectType();
      v102 = v129;
      v150 = ObjectType;
      v151 = v100;
      v152 = v99;
      sub_1007A0964();
      sub_10002293C(&qword_100AEB790, &type metadata accessor for SpreadPaginationEntity);
      LOBYTE(v99) = sub_1007A2124();
      v103 = v80;
      v104 = *(v80 + 8);
      v104(v102, v22);
      if ((v99 & 1) == 0)
      {
        v110 = v136;
        sub_10079ACF4();
        v111 = v128;
        (*(v103 + 16))(v128, v98, v22);

        v112 = sub_10079ACC4();
        v113 = sub_1007A2994();

        LODWORD(v144) = v113;
        v114 = os_log_type_enabled(v112, v113);
        v132 = v6;
        if (v114)
        {
          v115 = swift_slowAlloc();
          v147 = v22;
          v116 = v115;
          v154 = COERCE_DOUBLE(swift_slowAlloc());
          *v116 = 136315394;
          sub_10002293C(&qword_100AE2830, &type metadata accessor for SpreadPaginationEntity);
          v143 = v112;
          v117 = sub_1007A3A74();
          v118 = v42;
          v120 = v119;
          v104(v111, v147);
          v121 = sub_1000070F4(v117, v120, &v154);

          *(v116 + 4) = v121;
          *(v116 + 12) = 2080;
          swift_getKeyPath();
          swift_getKeyPath();
          sub_10079B9A4();

          v122 = sub_1006108C4();
          v124 = v123;
          sub_100422340(v118, _s5StateOMa);
          v125 = sub_1000070F4(v122, v124, &v154);
          v42 = v118;
          v98 = v133;

          *(v116 + 14) = v125;
          v126 = v143;
          _os_log_impl(&_mh_execute_header, v143, v144, "Aborting, moving back to %s from state %s", v116, 0x16u);
          swift_arrayDestroy();

          v22 = v147;
        }

        else
        {

          v104(v111, v22);
        }

        v67(v131, v145);
        sub_1007A09A4();
        v104(v98, v22);
        v45 = v146;
        goto LABEL_32;
      }

      v104(v98, v22);
      v46 = v145;
      v45 = v146;
    }

    v105 = v136;
    v106 = v134;
    sub_10079ACF4();
    v107 = sub_10079ACC4();
    v108 = sub_1007A2994();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      *v109 = 0;
      _os_log_impl(&_mh_execute_header, v107, v108, "Drag failed, no reset possible.", v109, 2u);
    }

    v67(v106, v46);
  }

  else
  {
    sub_100422340(v76, _s5StateOMa);
  }

LABEL_32:
  v91 = v149;
LABEL_33:
  sub_100422408(v45, v42, _s5StateOMa);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_100422408(v42, v148, _s5StateOMa);

  sub_10079B9B4();
  sub_100416000(v91);
  sub_100422340(v91, _s5StateOMa);
  sub_100422340(v42, _s5StateOMa);
  v97 = v45;
  return sub_100422340(v97, _s5StateOMa);
}

uint64_t sub_10041B9F4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D2>)
{
  v71 = a2;
  v78 = a1;
  v79 = a3;
  v8 = sub_1001F1160(&qword_100AE2838);
  __chkstk_darwin(v8 - 8);
  v73 = &v61 - v9;
  v10 = _s5StateO9ResettingVMa(0);
  v67 = *(v10 - 8);
  v68 = v10;
  __chkstk_darwin(v10);
  v62 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1007A1A14();
  v72 = *(v75 - 8);
  __chkstk_darwin(v75);
  v74 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001F1160(&qword_100AE2820);
  __chkstk_darwin(v13 - 8);
  v65 = &v61 - v14;
  v15 = _s5StateO7TurningVMa(0);
  v63 = *(v15 - 8);
  v64 = v15;
  __chkstk_darwin(v15);
  v61 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _s5StateOMa(0);
  v77 = *(v17 - 8);
  __chkstk_darwin(v17);
  v76 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1001F1160(&qword_100AD8A80);
  __chkstk_darwin(v19 - 8);
  v21 = &v61 - v20;
  v22 = _s5StateO8DraggingVMa(0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v69 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v61 - v26;
  __chkstk_darwin(v28);
  v70 = &v61 - v29;
  v30 = sub_1001F1160(&qword_100AE2818);
  __chkstk_darwin(v30 - 8);
  v32 = &v61 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v61 - v34;
  v36 = v78;
  v78 = v5;
  sub_10041A070(v36, &v61 - v34, a4, a5);
  v37 = v17;
  v38 = v77;
  sub_1000077D8(v35, v32, &qword_100AE2818);
  if ((*(v38 + 48))(v32, 1, v17) == 1)
  {
    sub_100007840(v35, &qword_100AE2818);
    v37 = v17;
    sub_100007840(v32, &qword_100AE2818);
    (*(v23 + 56))(v21, 1, 1, v22);
    v39 = v79;
LABEL_8:
    sub_100007840(v21, &qword_100AD8A80);
    goto LABEL_9;
  }

  v66 = v35;
  v40 = v76;
  sub_100422408(v32, v76, _s5StateOMa);
  if ((swift_getEnumCaseMultiPayload() & 0xFFFFFFFE) == 4)
  {
    sub_1004223A0(v40, v27, _s5StateO8DraggingVMa);
    sub_1004223A0(v27, v21, _s5StateO8DraggingVMa);
    (*(v23 + 56))(v21, 0, 1, v22);
  }

  else
  {
    (*(v23 + 56))(v21, 1, 1, v22);
    sub_100422340(v40, _s5StateOMa);
  }

  v39 = v79;
  sub_100422340(v32, _s5StateOMa);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_100007840(v66, &qword_100AE2818);
    goto LABEL_8;
  }

  v42 = v70;
  sub_1004223A0(v21, v70, _s5StateO8DraggingVMa);
  v43 = v78;
  v44 = v73;
  v45 = v66;
  v46 = v69;
  if (v71)
  {
    sub_100422408(v42, v69, _s5StateO8DraggingVMa);
    v47 = v65;
    sub_100289578(v46, *(*(v43 + 48) + 16), v65, *(v43 + 120));
    if ((*(v63 + 48))(v47, 1, v64) != 1)
    {
      v56 = v61;
      sub_1004223A0(v47, v61, _s5StateO7TurningVMa);
      v57 = v72;
      v58 = v42;
      v60 = v74;
      v59 = v75;
      (*(v72 + 104))(v74, enum case for PageTransitionCompletionState.completed(_:), v75);
      sub_10079B8C4();
      (*(v57 + 8))(v60, v59);
      sub_100422340(v58, _s5StateO8DraggingVMa);
      sub_100007840(v66, &qword_100AE2818);
      sub_1004223A0(v56, v39, _s5StateO7TurningVMa);
      goto LABEL_9;
    }

    sub_100007840(v47, &qword_100AE2820);
  }

  v79 = v37;
  sub_100422408(v42, v46, _s5StateO8DraggingVMa);
  sub_10028A0E4(v46, *(*(v43 + 48) + 16), v44, *(v43 + 120));
  v48 = (*(v67 + 48))(v44, 1, v68);
  v49 = (v72 + 104);
  v50 = (v72 + 8);
  if (v48 == 1)
  {
    sub_100007840(v44, &qword_100AE2838);
    v52 = v74;
    v51 = v75;
    (*v49)(v74, enum case for PageTransitionCompletionState.unknown(_:), v75);
    sub_10079B8C4();
    (*v50)(v52, v51);
    sub_100422340(v42, _s5StateO8DraggingVMa);
    sub_100007840(v45, &qword_100AE2818);
  }

  else
  {
    v53 = v62;
    sub_1004223A0(v44, v62, _s5StateO9ResettingVMa);
    v55 = v74;
    v54 = v75;
    (*v49)(v74, enum case for PageTransitionCompletionState.cancelled(_:), v75);
    sub_10079B8C4();
    (*v50)(v55, v54);
    sub_100422340(v42, _s5StateO8DraggingVMa);
    sub_100007840(v66, &qword_100AE2818);
    sub_1004223A0(v53, v39, _s5StateO9ResettingVMa);
  }

  v37 = v79;
LABEL_9:
  swift_storeEnumTagMultiPayload();
  return (*(v38 + 56))(v39, 0, 1, v37);
}

uint64_t sub_10041C414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  if (qword_100AD1598 != -1)
  {
    swift_once();
  }

  v6 = qword_100AE2630;

  return _swift_task_switch(sub_10041C4B0, v6, 0);
}

uint64_t sub_10041C4B0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    _s5StateO4TurnVMa(0);
    sub_10041C560();
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10041C560()
{
  v1 = sub_1007A1C54();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1007A1CA4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1007A03D4();
  v10 = 1;
  if ((result & 1) == 0)
  {
    v10 = -1;
  }

  v11 = *(v0 + 72);
  v12 = v11 + v10;
  if (__OFADD__(v11, v10))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  *(v0 + 72) = v12;
  v13 = v11 + v10;
  if (v12 < 0)
  {
    v13 = -v12;
    if (__OFSUB__(0, v12))
    {
      goto LABEL_10;
    }
  }

  if (v13 >= 5)
  {
    v14 = *(v0 + 40);
    v22 = v6;
    v15 = *(v14 + OBJC_IVAR___BKEngagementManager_eventController);
    sub_1001F1160(&unk_100ADE550);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10080B690;
    v21 = v5;
    strcpy((inited + 32), "numberOfPage");
    *(inited + 72) = &type metadata for Int;
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    *(inited + 48) = v12;
    v17 = v15;
    sub_100019158(inited);
    swift_setDeallocating();
    sub_100007840(inited + 32, &unk_100ADD560);
    sub_10079E994();

    sub_100017E74();
    v18 = sub_1007A2D74();
    v19 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_100422568;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003323D0;
    aBlock[3] = &unk_100A1B7C8;
    v20 = _Block_copy(aBlock);

    sub_1007A1C74();
    v23 = _swiftEmptyArrayStorage;
    sub_10002293C(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001F1160(&unk_100AD7CA0);
    sub_100234698();
    sub_1007A3594();
    sub_1007A2D94();
    _Block_release(v20);

    (*(v2 + 8))(v4, v1);
    (*(v22 + 8))(v8, v21);
  }

  return result;
}

void sub_10041C958()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + 80);
    if (v2)
    {
      [v2 invalidate];
    }

    v3 = [objc_opt_self() scheduledTimerWithTimeInterval:v1 target:"quicklyTurnedPagesTimerFired:" selector:0 userInfo:0 repeats:2.0];
    v4 = *(v1 + 80);
    *(v1 + 80) = v3;
  }
}

void sub_10041CA0C()
{
  sub_10041CB00();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10041CB00()
{
  if (!qword_100AE2720)
  {
    _s5StateOMa(255);
    v0 = sub_10079B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_100AE2720);
    }
  }
}

unint64_t sub_10041CB68()
{
  result = qword_100AE2810;
  if (!qword_100AE2810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2810);
  }

  return result;
}

uint64_t sub_10041CBBC(uint64_t a1, uint64_t a2, int a3)
{
  v23[1] = a3;
  v4 = _s5StateOMa(0);
  __chkstk_darwin(v4);
  v24 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v25 = v23 - v7;
  __chkstk_darwin(v8);
  v10 = v23 - v9;
  v11 = sub_1001F1160(&qword_100AE2820);
  __chkstk_darwin(v11 - 8);
  v13 = v23 - v12;
  v14 = _s5StateO7TurningVMa(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000077D8(a1, v13, &qword_100AE2820);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_100007840(v13, &qword_100AE2820);
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    swift_getKeyPath();
    v19 = v25;
    sub_10079B9A4();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_100422408(v10, v24, _s5StateOMa);

    sub_10079B9B4();
    sub_100416000(v19);

    sub_100422340(v19, _s5StateOMa);
    v20 = v10;
    v21 = _s5StateOMa;
  }

  else
  {
    sub_1004223A0(v13, v17, _s5StateO7TurningVMa);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_100422408(v17, v10, _s5StateO7TurningVMa);
      swift_storeEnumTagMultiPayload();
      swift_getKeyPath();
      swift_getKeyPath();
      v22 = v25;
      sub_10079B9A4();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_100422408(v10, v24, _s5StateOMa);

      sub_10079B9B4();
      sub_100416000(v22);

      sub_100422340(v22, _s5StateOMa);
      sub_100422340(v10, _s5StateOMa);
    }

    v21 = _s5StateO7TurningVMa;
    v20 = v17;
  }

  return sub_100422340(v20, v21);
}

uint64_t sub_10041D050()
{
  v0 = _s5StateOMa(0);
  __chkstk_darwin(v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v10 - v4;
  __chkstk_darwin(v6);
  v8 = &v10 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_100422408(v8, v2, _s5StateOMa);

    sub_10079B9B4();
    sub_100416000(v5);

    sub_100422340(v5, _s5StateOMa);
    return sub_100422340(v8, _s5StateOMa);
  }

  return result;
}

uint64_t sub_10041D230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v45 = a2;
  v5 = sub_1007A1C54();
  v56 = *(v5 - 8);
  v57 = v5;
  __chkstk_darwin(v5);
  v54 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1007A1CA4();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v52 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1007A1CC4();
  v48 = *(v51 - 8);
  __chkstk_darwin(v51);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v47 = &v41 - v11;
  v43 = sub_10079ACE4();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1007A0F74();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v41 - v19;
  v21 = _s5StateO4TurnVMa(0);
  (*(v15 + 16))(v20, a1 + *(v21 + 28), v14);
  v59 = v3;
  swift_getObjectType();
  sub_1007A0964();
  sub_10002293C(&qword_100AEB790, &type metadata accessor for SpreadPaginationEntity);
  v58 = v20;
  v22 = sub_1007A2124();
  v23 = *(v15 + 8);
  v49 = v14;
  v46 = v15 + 8;
  v44 = v23;
  v23(v17, v14);
  if ((v22 & 1) == 0)
  {
    sub_1007A09A4();
  }

  v24 = v59;
  sub_1003ADD78(0);
  v25 = *(v24 + 128);
  if (qword_100AD19B8 != -1)
  {
    swift_once();
  }

  v26 = qword_100B23750;
  sub_10079ACF4();
  v27 = sub_10079ACC4();
  v28 = sub_1007A29A4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 134217984;
    *(v29 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v27, v28, "Waiting for turn to finish, current stateIndex %ld", v29, 0xCu);
  }

  (*(v42 + 8))(v13, v43);
  sub_100017E74();
  v30 = sub_1007A2D74();
  sub_1007A1CB4();
  sub_1003AC128();
  v31 = v47;
  sub_1007A1D24();
  v48 = *(v48 + 8);
  v32 = v51;
  (v48)(v9, v51);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = v25;
  v35 = v50;
  v34[4] = v45;
  v34[5] = v35;
  aBlock[4] = sub_100422048;
  aBlock[5] = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A1B610;
  v36 = _Block_copy(aBlock);

  v37 = v52;
  sub_1007A1C74();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10002293C(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0);
  sub_100234698();
  v38 = v54;
  v39 = v57;
  sub_1007A3594();
  sub_1007A2D04();
  _Block_release(v36);

  (*(v56 + 8))(v38, v39);
  (*(v53 + 8))(v37, v55);
  (v48)(v31, v32);
  return v44(v58, v49);
}

uint64_t sub_10041D948(uint64_t a1, uint64_t a2, int a3)
{
  v23[1] = a3;
  v4 = _s5StateOMa(0);
  __chkstk_darwin(v4);
  v24 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v25 = v23 - v7;
  __chkstk_darwin(v8);
  v10 = v23 - v9;
  v11 = sub_1001F1160(&qword_100AD8A80);
  __chkstk_darwin(v11 - 8);
  v13 = v23 - v12;
  v14 = _s5StateO8DraggingVMa(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000077D8(a1, v13, &qword_100AD8A80);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_100007840(v13, &qword_100AD8A80);
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    swift_getKeyPath();
    v19 = v25;
    sub_10079B9A4();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_100422408(v10, v24, _s5StateOMa);

    sub_10079B9B4();
    sub_100416000(v19);

    sub_100422340(v19, _s5StateOMa);
    v20 = v10;
    v21 = _s5StateOMa;
  }

  else
  {
    sub_1004223A0(v13, v17, _s5StateO8DraggingVMa);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_100422408(v17, v10, _s5StateO8DraggingVMa);
      swift_storeEnumTagMultiPayload();
      swift_getKeyPath();
      swift_getKeyPath();
      v22 = v25;
      sub_10079B9A4();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_100422408(v10, v24, _s5StateOMa);

      sub_10079B9B4();
      sub_100416000(v22);

      sub_100422340(v22, _s5StateOMa);
      sub_100422340(v10, _s5StateOMa);
    }

    v21 = _s5StateO8DraggingVMa;
    v20 = v17;
  }

  return sub_100422340(v20, v21);
}

uint64_t sub_10041DDDC(uint64_t a1)
{
  v53 = a1;
  v2 = sub_10079ACE4();
  v51 = *(v2 - 8);
  v52 = v2;
  __chkstk_darwin(v2);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v46 - v6;
  v8 = sub_1007A0F74();
  v49 = *(v8 - 8);
  __chkstk_darwin(v8);
  v47 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v46 - v11;
  __chkstk_darwin(v13);
  v48 = &v46 - v14;
  v15 = sub_1001F1160(&qword_100AD8A78);
  __chkstk_darwin(v15 - 8);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v46 - v19;
  v50 = v1;
  v21 = *(v1 + 48);
  swift_getKeyPath();
  v54 = v21;
  sub_10002293C(&qword_100AD9690, type metadata accessor for PageTurnViewModel);
  sub_100797A14();

  v22 = sub_10079FE94();
  v24 = v23;
  if (v22 == sub_10079FE94() && v24 == v25)
  {

    goto LABEL_5;
  }

  v26 = sub_1007A3AB4();

  if (v26)
  {
LABEL_5:
    if (*(v53 + *(_s5StateO8DraggingVMa(0) + 32)))
    {
      if (qword_100AD19B8 != -1)
      {
        swift_once();
      }

      v27 = qword_100B23750;
      sub_10079ACF4();
      v28 = sub_10079ACC4();
      v29 = sub_1007A29A4();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "Ignoring Dragging change because it's just a translation update", v30, 2u);
      }

      return (*(v51 + 8))(v7, v52);
    }

    else
    {
      v32 = v50;
      sub_100286F74(*(v21 + 16), 0, v20, *(v50 + 120));
      v33 = _s5StateO4TurnVMa(0);
      v34 = *(*(v33 - 8) + 48);
      if (v34(v20, 1, v33) == 1 && sub_100289CF0(*(v21 + 16)) != 2 && (sub_1007A03D4() & 1) != 0)
      {
        swift_getObjectType();
        v32 = v50;
        sub_1007A0944();
      }

      sub_1000077D8(v20, v17, &qword_100AD8A78);
      if (v34(v17, 1, v33) == 1)
      {
        sub_100007840(v17, &qword_100AD8A78);
        v36 = v48;
        v35 = v49;
        (*(v49 + 16))(v48, v53, v8);
      }

      else
      {
        v35 = v49;
        (*(v49 + 16))(v12, &v17[*(v33 + 28)], v8);
        sub_100422340(v17, _s5StateO4TurnVMa);
        v36 = v48;
        (*(v35 + 32))(v48, v12, v8);
      }

      swift_getObjectType();
      v42 = v47;
      sub_1007A0964();
      sub_10002293C(&qword_100AEB790, &type metadata accessor for SpreadPaginationEntity);
      v43 = sub_1007A2124();
      v44 = *(v35 + 8);
      v44(v42, v8);
      if ((v43 & 1) == 0)
      {
        v45 = sub_10079E4B4();
        __chkstk_darwin(v45);
        *(&v46 - 2) = v32;
        *(&v46 - 1) = v36;
        sub_10079BF94();
      }

      sub_100007840(v20, &qword_100AD8A78);
      return (v44)(v36, v8);
    }
  }

  if (qword_100AD19B8 != -1)
  {
    swift_once();
  }

  v37 = qword_100B23750;
  sub_10079ACF4();
  v38 = sub_10079ACC4();
  v39 = sub_1007A29A4();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v54 = v41;
    *v40 = 136315138;
    *(v40 + 4) = sub_1000070F4(0x293A5F2867617264, 0xE800000000000000, &v54);
    _os_log_impl(&_mh_execute_header, v38, v39, "%s - slide disabled", v40, 0xCu);
    sub_1000074E0(v41);
  }

  return (*(v51 + 8))(v4, v52);
}

uint64_t sub_10041E584()
{
  v0 = _s5StateOMa(0);
  __chkstk_darwin(v0);
  v2 = &v10[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v5 = &v10[-v4];
  __chkstk_darwin(v6);
  v8 = &v10[-v7];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_1003AC854(0xD000000000000014, 0x80000001008D3BE0);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_100422408(v8, v2, _s5StateOMa);

    sub_10079B9B4();
    sub_100416000(v5);

    sub_100422340(v5, _s5StateOMa);
    return sub_100422340(v8, _s5StateOMa);
  }

  return result;
}

uint64_t sub_10041E7BC(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v8 = _s5StateO21CapturingTurnSnapshotVMa(0);
  __chkstk_darwin(v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001F1160(&qword_100AE2820);
  __chkstk_darwin(v11 - 8);
  v13 = v25 - v12;
  if (a1)
  {
    sub_100422408(a4, v10, _s5StateO21CapturingTurnSnapshotVMa);
    v14 = sub_1007A0F74();
    v15 = *(*(v14 - 8) + 16);
    v15(v13, v10, v14);
    v16 = *(v8 + 24);
    v17 = *(v8 + 28);
    v25[1] = a3;
    v18 = a2;
    v19 = v10[v16];
    v20 = _s5StateO4TurnVMa(0);
    v15(&v13[v20[7]], &v10[v17], v14);
    v21 = a1;
    sub_100422340(v10, _s5StateO21CapturingTurnSnapshotVMa);
    *&v13[v20[5]] = v21;
    v13[v20[6]] = v19;
    a2 = v18;
    *&v13[v20[8]] = 0;
    *&v13[v20[9]] = 0;
    *&v13[v20[10]] = 0;
    v22 = _s5StateO7TurningVMa(0);
    (*(*(v22 - 8) + 56))(v13, 0, 1, v22);
  }

  else
  {
    v23 = _s5StateO7TurningVMa(0);
    (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
  }

  a2(v13);
  return sub_100007840(v13, &qword_100AE2820);
}

uint64_t sub_10041EA30(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_10079ACE4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v10 = *(Strong + 128), , v10 == a2))
  {
    swift_beginAccess();
    v11 = swift_weakLoadStrong();
    if (v11)
    {

      sub_1003ADD78(4);
    }

    return a3(v11);
  }

  else
  {
    if (qword_100AD19B8 != -1)
    {
      swift_once();
    }

    v13 = qword_100B23750;
    sub_10079ACF4();
    v14 = sub_10079ACC4();
    v15 = sub_1007A29A4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Skipping stale completion from turn", v16, 2u);
    }

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_10041EC44(void *a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v7 = _s5StateO21CapturingDragSnapshotVMa(0);
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001F1160(&qword_100AD8A80);
  __chkstk_darwin(v10 - 8);
  v12 = &v23 - v11;
  if (a1)
  {
    sub_100422408(a4, v9, _s5StateO21CapturingDragSnapshotVMa);
    v13 = sub_1007A0F74();
    (*(*(v13 - 8) + 16))(v12, v9, v13);
    v14 = v7[6];
    v15 = *&v9[v7[5]];
    v16 = _s5StateO8DraggingVMa(0);
    sub_1000077D8(&v9[v14], &v12[v16[7]], &qword_100AD8770);
    v17 = *&v9[v7[7]];
    v18 = *&v9[v7[8]];
    v19 = a1;
    v20 = v15;
    sub_100422340(v9, _s5StateO21CapturingDragSnapshotVMa);
    *&v12[v16[5]] = v19;
    *&v12[v16[6]] = v20;
    *&v12[v16[8]] = 0;
    *&v12[v16[9]] = v17;
    *&v12[v16[10]] = v18;
    (*(*(v16 - 1) + 56))(v12, 0, 1, v16);
    a2(v12);
  }

  else
  {
    v21 = _s5StateO8DraggingVMa(0);
    (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
    a2(v12);
  }

  return sub_100007840(v12, &qword_100AD8A80);
}

uint64_t sub_10041EEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27[1] = a4;
  v27[2] = a5;
  v7 = sub_10079ACE4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1007A0F74();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v27 - v16;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v19 = *(Strong + 128), , v19 == a2))
  {
    (*(v12 + 16))(v17, a3, v11);
    swift_getObjectType();
    sub_1007A0964();
    sub_10002293C(&qword_100AEB790, &type metadata accessor for SpreadPaginationEntity);
    v20 = sub_1007A2124();
    v21 = *(v12 + 8);
    v21(v14, v11);
    if ((v20 & 1) == 0)
    {
      sub_1007A09A4();
    }

    return (v21)(v17, v11);
  }

  else
  {
    if (qword_100AD19B8 != -1)
    {
      swift_once();
    }

    v23 = qword_100B23750;
    sub_10079ACF4();
    v24 = sub_10079ACC4();
    v25 = sub_1007A29A4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Skipping stale completion from reset", v26, 2u);
    }

    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_10041F214(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_10079ACE4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + 128);

    if (v10 == a2)
    {
      return a3(v11);
    }
  }

  if (qword_100AD19B8 != -1)
  {
    swift_once();
  }

  v13 = qword_100B23750;
  sub_10079ACF4();
  v14 = sub_10079ACC4();
  v15 = sub_1007A29A4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Skipping stale completion from reset end", v16, 2u);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10041F3E0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t (*a10)(void), uint64_t (*a11)(void))
{
  v47 = a7;
  v48 = a6;
  v49 = a5;
  v50 = a1;
  v14 = sub_1001F1160(a8);
  __chkstk_darwin(v14 - 8);
  v16 = &v43 - v15;
  v17 = sub_10079ACE4();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v43 - v22;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v25 = v17, v26 = *(Strong + 128), , v27 = v26 == a4, v17 = v25, v27))
  {
    v28 = a11;
    v46 = a10;
    if (qword_100AD19B8 != -1)
    {
      swift_once();
    }

    v29 = qword_100B23750;
    sub_10079ACF4();

    v30 = sub_10079ACC4();
    v31 = sub_1007A29A4();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v45 = a11;
      v33 = v32;
      v34 = swift_slowAlloc();
      v44 = v17;
      v35 = v34;
      v51 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_1000070F4(v50, a2, &v51);
      _os_log_impl(&_mh_execute_header, v30, v31, "displaySnapshot completed - %s", v33, 0xCu);
      sub_1000074E0(v35);

      v28 = v45;

      (*(v18 + 8))(v23, v44);
    }

    else
    {

      (*(v18 + 8))(v23, v17);
    }

    sub_100422408(v47, v16, v46);
    v42 = v28(0);
    (*(*(v42 - 8) + 56))(v16, 0, 1, v42);
    v49(v16);
    return sub_100007840(v16, a8);
  }

  else
  {
    if (qword_100AD19B8 != -1)
    {
      swift_once();
    }

    v36 = qword_100B23750;
    sub_10079ACF4();

    v37 = sub_10079ACC4();
    v38 = sub_1007A29A4();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v51 = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_1000070F4(v50, a2, &v51);
      _os_log_impl(&_mh_execute_header, v37, v38, "Skipping stale %s from displaySnapshot", v39, 0xCu);
      sub_1000074E0(v40);
    }

    return (*(v18 + 8))(v20, v17);
  }
}

uint64_t sub_10041F870(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
}

void sub_10041F908(void *a1, void (*a2)(void *))
{
  v4 = sub_10079ACE4();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 snapshotViewAfterScreenUpdates:{0, v6}];
  if (v9)
  {
    v10 = v9;
    v26 = a2;
    v11 = [v9 superview];
    if (!v11)
    {
      v11 = v10;
    }

    v12 = objc_opt_self();
    v13 = [v12 currentTraitCollection];
    [v13 displayCornerRadius];
    v15 = v14;

    [v10 _setContinuousCornerRadius:v15];
    v16 = [v10 layer];
    [v16 setMaskedCorners:12];

    v17 = [v12 currentTraitCollection];
    [v17 displayCornerRadius];
    v19 = v18;

    [v11 _setContinuousCornerRadius:v19];
    v20 = [v11 layer];
    [v20 setMaskedCorners:12];

    v27 = v10;
    v26(v10);

    v21 = v27;
  }

  else
  {
    if (qword_100AD19B8 != -1)
    {
      swift_once();
    }

    v22 = qword_100B23750;
    sub_10079ACF4();
    v23 = sub_10079ACC4();
    v24 = sub_1007A29B4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Couldn't get origin snapshot", v25, 2u);
    }

    (*(v5 + 8))(v8, v4);
    a2(0);
  }
}

uint64_t sub_10041FC40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a1;
  v42 = a2;
  v46 = sub_1007A1C54();
  v50 = *(v46 - 8);
  __chkstk_darwin(v46);
  v48 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1007A1CA4();
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1007A1CC4();
  v44 = *(v52 - 8);
  __chkstk_darwin(v52);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v43 = &v38 - v9;
  v10 = _s5StateO7TurningVMa(0);
  v39 = *(v10 - 8);
  v11 = *(v39 + 64);
  __chkstk_darwin(v10 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10079ACE4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v3;
  v51 = *(v3 + 128);
  if (qword_100AD19B8 != -1)
  {
    swift_once();
  }

  v18 = qword_100B23750;
  sub_10079ACF4();
  v19 = sub_10079ACC4();
  v20 = sub_1007A29A4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    *(v21 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v19, v20, "Waiting for displaySnapshot to finish, current stateIndex %ld", v21, 0xCu);
  }

  (*(v14 + 8))(v16, v13);
  v22 = swift_allocObject();
  v23 = v17;
  swift_weakInit();
  sub_100422408(v41, &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), _s5StateO7TurningVMa);
  v24 = (*(v39 + 80) + 48) & ~*(v39 + 80);
  v25 = swift_allocObject();
  v26 = v51;
  v25[2] = v22;
  v25[3] = v26;
  v25[4] = v42;
  v25[5] = a3;
  sub_1004223A0(v12, v25 + v24, _s5StateO7TurningVMa);
  sub_100017E74();

  v42 = sub_1007A2D74();
  v27 = v40;
  sub_1007A1CB4();
  v28 = v43;
  sub_1007A1D24();
  v51 = *(v44 + 1);
  v51(v27, v52);
  v29 = swift_allocObject();
  v44 = sub_100421F08;
  *(v29 + 16) = sub_100421F08;
  *(v29 + 24) = v25;
  aBlock[4] = sub_100421FC4;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A1B598;
  v30 = _Block_copy(aBlock);

  v31 = v45;
  sub_1007A1C74();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10002293C(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0);
  sub_100234698();
  v32 = v48;
  v33 = v46;
  sub_1007A3594();
  v34 = v42;
  sub_1007A2D04();
  _Block_release(v30);

  (*(v50 + 8))(v32, v33);
  (*(v47 + 8))(v31, v49);
  v51(v28, v52);
  v35 = swift_allocObject();
  *(v35 + 16) = v44;
  *(v35 + 24) = v25;
  v36 = *(v23 + 88);
  *(v23 + 88) = sub_100422008;
  *(v23 + 96) = v35;
  return sub_100007020(v36);
}

uint64_t sub_1004202DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a1;
  v42 = a2;
  v46 = sub_1007A1C54();
  v50 = *(v46 - 8);
  __chkstk_darwin(v46);
  v48 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1007A1CA4();
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1007A1CC4();
  v44 = *(v52 - 8);
  __chkstk_darwin(v52);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v43 = &v38 - v9;
  v10 = _s5StateO8DraggingVMa(0);
  v39 = *(v10 - 8);
  v11 = *(v39 + 64);
  __chkstk_darwin(v10 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10079ACE4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v3;
  v51 = *(v3 + 128);
  if (qword_100AD19B8 != -1)
  {
    swift_once();
  }

  v18 = qword_100B23750;
  sub_10079ACF4();
  v19 = sub_10079ACC4();
  v20 = sub_1007A29A4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    *(v21 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v19, v20, "Waiting for displaySnapshot to finish, current stateIndex %ld", v21, 0xCu);
  }

  (*(v14 + 8))(v16, v13);
  v22 = swift_allocObject();
  v23 = v17;
  swift_weakInit();
  sub_100422408(v41, &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), _s5StateO8DraggingVMa);
  v24 = (*(v39 + 80) + 48) & ~*(v39 + 80);
  v25 = swift_allocObject();
  v26 = v51;
  v25[2] = v22;
  v25[3] = v26;
  v25[4] = v42;
  v25[5] = a3;
  sub_1004223A0(v12, v25 + v24, _s5StateO8DraggingVMa);
  sub_100017E74();

  v42 = sub_1007A2D74();
  v27 = v40;
  sub_1007A1CB4();
  v28 = v43;
  sub_1007A1D24();
  v51 = *(v44 + 1);
  v51(v27, v52);
  v29 = swift_allocObject();
  v44 = sub_10042214C;
  *(v29 + 16) = sub_10042214C;
  *(v29 + 24) = v25;
  aBlock[4] = sub_100422584;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A1B6B0;
  v30 = _Block_copy(aBlock);

  v31 = v45;
  sub_1007A1C74();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10002293C(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0);
  sub_100234698();
  v32 = v48;
  v33 = v46;
  sub_1007A3594();
  v34 = v42;
  sub_1007A2D04();
  _Block_release(v30);

  (*(v50 + 8))(v32, v33);
  (*(v47 + 8))(v31, v49);
  v51(v28, v52);
  v35 = swift_allocObject();
  *(v35 + 16) = v44;
  *(v35 + 24) = v25;
  v36 = *(v23 + 88);
  *(v23 + 88) = sub_100422588;
  *(v23 + 96) = v35;
  return sub_100007020(v36);
}

uint64_t sub_100420978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a1;
  *&v65 = sub_10079ACE4();
  v58 = *(v65 - 8);
  __chkstk_darwin(v65);
  v57 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1007A1C54();
  v72 = *(v68 - 8);
  __chkstk_darwin(v68);
  v64 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1007A1CA4();
  v63 = *(v69 - 8);
  __chkstk_darwin(v69);
  v62 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s5StateO9ResettingVMa(0);
  v60 = *(v8 - 8);
  v9 = *(v60 + 64);
  __chkstk_darwin(v8 - 8);
  v67 = sub_1007A1CC4();
  v71 = *(v67 - 8);
  __chkstk_darwin(v67);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v55 - v13;
  v15 = a2;
  v16 = *(a2 + 48);
  swift_getKeyPath();
  aBlock = v16;
  sub_10002293C(&qword_100AD9690, type metadata accessor for PageTurnViewModel);
  v70 = a3;

  sub_100797A14();

  v17 = sub_10079FE94();
  v19 = v18;
  if (v17 == sub_10079FE94() && v19 == v20)
  {

LABEL_5:
    sub_1003ADD78(2);
    v58 = *(v15 + 128);
    v22 = v58;
    v56 = sub_100017E74();
    v57 = sub_1007A2D74();
    sub_1007A1CB4();
    v66 = v14;
    sub_1007A1D24();
    v55 = *(v71 + 8);
    v71 += 8;
    v23 = v67;
    v55(v11, v67);
    v24 = swift_allocObject();
    v59 = v15;
    swift_weakInit();
    v65 = *(v15 + 16);
    sub_100422408(v61, &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), _s5StateO9ResettingVMa);
    v25 = v68;
    v26 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v24;
    *(v27 + 24) = v22;
    sub_1004223A0(&v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, _s5StateO9ResettingVMa);
    *(v27 + ((v9 + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = v65;
    v77 = sub_100422260;
    v78 = v27;
    aBlock = _NSConcreteStackBlock;
    v74 = 1107296256;
    v75 = sub_1003323D0;
    v76 = &unk_100A1B728;
    v28 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    v29 = v62;
    sub_1007A1C74();
    aBlock = _swiftEmptyArrayStorage;
    v61 = sub_10002293C(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
    v60 = sub_1001F1160(&unk_100AD7CA0);
    *&v65 = sub_100234698();
    v30 = v64;
    sub_1007A3594();
    v31 = v66;
    v32 = v57;
    sub_1007A2D04();
    _Block_release(v28);

    v33 = *(v72 + 8);
    v72 += 8;
    v57 = v33;
    (v33)(v30, v25);
    v63 = *(v63 + 8);
    (v63)(v29, v69);
    v34 = v55;
    v55(v31, v23);
    v56 = sub_1007A2D74();
    sub_1007A1CB4();
    sub_1003AE058();
    v36 = v35;
    v37 = [objc_allocWithZone(CASpringAnimation) init];
    [v37 setMass:1.0];
    [v37 setStiffness:300.0];
    [v37 setDamping:35.0];
    [v37 setInitialVelocity:v36];
    [v37 settlingDuration];

    sub_1007A1D24();
    v38 = v11;
    v39 = v34;
    v34(v38, v23);
    v40 = swift_allocObject();
    swift_weakInit();
    v41 = swift_allocObject();
    v42 = v58;
    v41[2] = v40;
    v41[3] = v42;
    v43 = v70;
    v41[4] = sub_100422258;
    v41[5] = v43;
    v77 = sub_100422334;
    v78 = v41;
    aBlock = _NSConcreteStackBlock;
    v74 = 1107296256;
    v75 = sub_1003323D0;
    v76 = &unk_100A1B778;
    v44 = _Block_copy(&aBlock);

    sub_1007A1C74();
    aBlock = _swiftEmptyArrayStorage;
    v45 = v68;
    sub_1007A3594();
    v46 = v66;
    v47 = v56;
    sub_1007A2D04();
    _Block_release(v44);

    (v57)(v30, v45);
    (v63)(v29, v69);
    v39(v46, v67);
  }

  v21 = sub_1007A3AB4();

  if (v21)
  {
    goto LABEL_5;
  }

  if (qword_100AD19B8 != -1)
  {
    swift_once();
  }

  v48 = qword_100B23750;
  v49 = v57;
  sub_10079ACF4();
  v50 = sub_10079ACC4();
  v51 = sub_1007A29A4();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    aBlock = v53;
    *v52 = 136315138;
    *(v52 + 4) = sub_1000070F4(0x3A5F287465736572, 0xEB00000000293A5FLL, &aBlock);
    _os_log_impl(&_mh_execute_header, v50, v51, "%s - slide disabled", v52, 0xCu);
    sub_1000074E0(v53);
  }

  (*(v58 + 8))(v49, v65);
  sub_10041E584();
}

uint64_t sub_1004213F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v5 = sub_1001F1160(&qword_100AD8A80);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - v6;
  v32 = sub_10079ACE4();
  v8 = *(v32 - 8);
  __chkstk_darwin(v32);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  v14 = *(a2 + 48);
  swift_getKeyPath();
  v34 = v14;
  sub_10002293C(&qword_100AD9690, type metadata accessor for PageTurnViewModel);

  sub_100797A14();

  v15 = sub_10079FE94();
  v17 = v16;
  if (v15 == sub_10079FE94() && v17 == v18)
  {

    goto LABEL_5;
  }

  v19 = sub_1007A3AB4();

  if (v19)
  {
LABEL_5:
    if (*(v33 + *(_s5StateO8DraggingVMa(0) + 32)))
    {
      if (qword_100AD19B8 != -1)
      {
        swift_once();
      }

      v20 = qword_100B23750;
      sub_10079ACF4();
      v21 = sub_10079ACC4();
      v22 = sub_1007A29A4();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Ignoring DisplayingDragSnapshot change because it's just a translation update", v23, 2u);
      }

      (*(v8 + 8))(v13, v32);
    }

    else
    {
      sub_1004202DC(v33, sub_10042212C, a3);
    }
  }

  if (qword_100AD19B8 != -1)
  {
    swift_once();
  }

  v24 = qword_100B23750;
  sub_10079ACF4();
  v25 = sub_10079ACC4();
  v26 = sub_1007A29A4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v34 = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_1000070F4(0xD000000000000022, 0x80000001008D3BB0, &v34);
    _os_log_impl(&_mh_execute_header, v25, v26, "%s - slide disabled", v27, 0xCu);
    sub_1000074E0(v28);
  }

  (*(v8 + 8))(v10, v32);
  sub_100422408(v33, v7, _s5StateO8DraggingVMa);
  v29 = _s5StateO8DraggingVMa(0);
  (*(*(v29 - 8) + 56))(v7, 0, 1, v29);
  sub_10041D948(v7, a3, 5);
  sub_100007840(v7, &qword_100AD8A80);
}

uint64_t sub_1004218D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a1;
  v5 = sub_1001F1160(&qword_100AD8A80);
  __chkstk_darwin(v5 - 8);
  v7 = &v40 - v6;
  v8 = sub_10079ACE4();
  v42 = *(v8 - 8);
  v43 = v8;
  __chkstk_darwin(v8);
  v41 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s5StateO21CapturingDragSnapshotVMa(0);
  v11 = *(v10 - 1);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 48);
  swift_getKeyPath();
  v45 = v14;
  sub_10002293C(&qword_100AD9690, type metadata accessor for PageTurnViewModel);

  sub_100797A14();

  v15 = sub_10079FE94();
  v17 = v16;
  if (v15 == sub_10079FE94() && v17 == v18)
  {

LABEL_5:
    v20 = *(v44 + v10[5]);
    sub_100422408(v44, &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), _s5StateO21CapturingDragSnapshotVMa);
    v21 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = sub_100422054;
    *(v22 + 24) = a3;
    sub_1004223A0(&v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, _s5StateO21CapturingDragSnapshotVMa);

    sub_10041F908(v20, sub_100422074);
  }

  v19 = sub_1007A3AB4();

  if (v19)
  {
    goto LABEL_5;
  }

  if (qword_100AD19B8 != -1)
  {
    swift_once();
  }

  v23 = qword_100B23750;
  v24 = v41;
  sub_10079ACF4();
  v25 = sub_10079ACC4();
  v26 = sub_1007A29A4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v45 = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_1000070F4(0xD000000000000022, 0x80000001008D3B80, &v45);
    _os_log_impl(&_mh_execute_header, v25, v26, "%s - slide disabled", v27, 0xCu);
    sub_1000074E0(v28);
  }

  (*(v42 + 8))(v24, v43);
  v29 = v44;
  sub_100422408(v44, v13, _s5StateO21CapturingDragSnapshotVMa);
  v30 = *(v29 + v10[5]);
  v31 = sub_1007A0F74();
  (*(*(v31 - 8) + 16))(v7, v13, v31);
  v32 = v10[6];
  v33 = *&v13[v10[5]];
  v34 = _s5StateO8DraggingVMa(0);
  sub_1000077D8(&v13[v32], &v7[v34[7]], &qword_100AD8770);
  v35 = *&v13[v10[7]];
  v36 = *&v13[v10[8]];
  v37 = v30;
  v38 = v33;
  sub_100422340(v13, _s5StateO21CapturingDragSnapshotVMa);
  *&v7[v34[5]] = v37;
  *&v7[v34[6]] = v38;
  *&v7[v34[8]] = 0;
  *&v7[v34[9]] = v35;
  *&v7[v34[10]] = v36;
  (*(*(v34 - 1) + 56))(v7, 0, 1, v34);
  sub_10041D948(v7, a3, 4);
  sub_100007840(v7, &qword_100AD8A80);
}

uint64_t sub_1004220A0(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return a3(a1, v6, v7, v8);
}

uint64_t sub_100422260()
{
  v1 = *(_s5StateO9ResettingVMa(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_10041EEDC(v3, v4, v0 + v2, v6, v7);
}

uint64_t sub_1004222F4()
{

  return swift_deallocObject();
}

uint64_t sub_100422340(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1004223A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100422408(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100422470(uint64_t a1)
{
  v4 = *(_s5StateO7TurningVMa(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002812C;

  return sub_10041C414(a1, v6, v7, v8, v1 + v5);
}

__n128 sub_1004225C8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1004225F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_10042263C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for ScrubPageContentView()
{
  result = qword_100AE2958;
  if (!qword_100AE2958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10042271C()
{
  type metadata accessor for ChromeStyle();
  if (v0 <= 0x3F)
  {
    sub_10024BC28();
    if (v1 <= 0x3F)
    {
      sub_1004227D0();
      if (v2 <= 0x3F)
      {
        sub_10079ACE4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1004227D0()
{
  if (!qword_100AE2968)
  {
    type metadata accessor for PageSnapshotLoader();
    sub_1004239FC(&unk_100AE2970, type metadata accessor for PageSnapshotLoader);
    v0 = sub_10079C054();
    if (!v1)
    {
      atomic_store(v0, &qword_100AE2968);
    }
  }
}

__n128 sub_100422880@<Q0>(void *a1@<X8>)
{
  v3 = *v1;
  sub_100009864(v1 + 8, v20);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  v6 = *(v1 + 112);
  v16 = *(v1 + 96);
  v17 = *(v1 + 80);
  sub_100423498(v1, &v18);
  *a1 = v3;
  sub_100009864(v20, (a1 + 1));
  v7 = sub_1001F1160(qword_100AE29A8);
  v8 = (a1 + v7[10]);
  v9 = v18;
  sub_100009864(&v19, (v8 + 1));
  *v8 = v9;
  type metadata accessor for PageSnapshotLoader();
  sub_1004239FC(&unk_100AE2970, type metadata accessor for PageSnapshotLoader);
  v10 = v3;
  v11 = v9;

  v8[6] = sub_10079C024();
  v8[7] = v12;
  type metadata accessor for ScrubPageContentView();
  sub_10001389C();
  sub_1007A33F4();
  sub_1004234D0(&v18);
  sub_1000074E0(v20);
  v13 = (a1 + v7[11]);
  *v13 = v4;
  v13[1] = v5;
  v14 = (a1 + v7[12]);
  result = v17;
  *v14 = v17;
  v14[1] = v16;
  *(a1 + v7[13]) = v6;
  return result;
}

uint64_t sub_100422A24(uint64_t a1)
{
  sub_10000E3E8((v1 + 8), *(v1 + 32));
  if (swift_weakLoadStrong())
  {
    sub_10079F714();
    swift_getObjectType();
    sub_10079F6C4();

    swift_unknownObjectRelease();
  }

  CGRectGetMinY(*(v1 + *(a1 + 48)));
  sub_10000E3E8((v1 + 8), *(v1 + 32));
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_10079F714();
    swift_getObjectType();
    sub_10079F694();

    Strong = swift_unknownObjectRelease();
  }

  __chkstk_darwin(Strong);
  sub_10079E474();
  sub_10079C2A4();
  sub_10079C2A4();
  sub_10079C2A4();
  sub_100423A9C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100423AF0();
  swift_getWitnessTable();
  return sub_10079E194();
}

uint64_t sub_100422C84@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a4;
  v30 = a2;
  v6 = sub_10079C2A4();
  v37 = *(v6 - 8);
  __chkstk_darwin(v6);
  v42 = &v30 - v7;
  v8 = sub_10079C2A4();
  v39 = *(v8 - 8);
  __chkstk_darwin(v8);
  v34 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v35 = &v30 - v11;
  v12 = sub_10079C2A4();
  v40 = *(v12 - 8);
  __chkstk_darwin(v12);
  v36 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v38 = &v30 - v15;
  v31 = type metadata accessor for ScrubFramedOuterPageView();
  v32 = a1;
  v33 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  sub_100666FB0();

  sub_10079E474();
  v16 = sub_100423A9C();
  v49 = a3;
  v50 = v16;
  WitnessTable = swift_getWitnessTable();
  v18 = v34;
  v19 = v42;
  sub_10079DB14();
  (*(v37 + 8))(v19, v6);
  sub_10079DD64();
  v47 = WitnessTable;
  v48 = &protocol witness table for _FrameLayout;
  v20 = swift_getWitnessTable();
  v21 = v35;
  sub_1006DB0A0(v8, v35);

  v22 = *(v39 + 8);
  v22(v18, v8);
  v23 = *(v32 + *(v31 + 52));
  v45 = v33;
  v46 = v23;
  v24 = v36;
  sub_10079DC04();
  v22(v21, v8);
  v25 = sub_100423AF0();
  v43 = v20;
  v44 = v25;
  v26 = swift_getWitnessTable();
  v27 = v38;
  sub_10039232C(v24, v12, v26);
  v28 = *(v40 + 8);
  v28(v24, v12);
  sub_10039232C(v27, v12, v26);
  return (v28)(v27, v12);
}

uint64_t sub_10042316C@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v19 = type metadata accessor for SnapshotImageView();
  __chkstk_darwin(v19);
  v3 = (&v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = *(v1 + 56);
  type metadata accessor for PageSnapshotLoader();
  sub_1004239FC(&unk_100AE2970, type metadata accessor for PageSnapshotLoader);
  sub_10079C034();
  swift_getKeyPath();
  sub_10079C044();

  v5 = v22;
  v6 = v23;
  v7 = v24;
  v8 = *(v4 + 72);
  v9 = *v1;
  sub_10000E3E8((v1 + 8), *(v1 + 32));
  Strong = swift_weakLoadStrong();
  v11 = v9;
  if (Strong)
  {
    sub_10079F714();
    swift_getObjectType();
    sub_10079F694();
    v13 = v12;
    v15 = v14;

    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  *v3 = v5;
  v3[1] = v6;
  v3[2] = v7;
  v3[3] = v8;
  v3[4] = v11;
  v3[5] = v13;
  v3[6] = v15;
  sub_10001389C();
  sub_1007A33F4();
  sub_10079DD94();

  sub_100423500(v3, v20);
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_1007A3744(36);

  v22 = 0xD00000000000001FLL;
  v23 = 0x80000001008D3C70;
  v21 = *(v4 + 72);
  v25._countAndFlagsBits = sub_1007A3A74();
  sub_1007A23D4(v25);

  v26._countAndFlagsBits = 32;
  v26._object = 0xE100000000000000;
  sub_1007A23D4(v26);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  if (v21)
  {

    v16 = 0xE600000000000000;
    v17._countAndFlagsBits = 0x444544414F4CLL;
  }

  else
  {
    v16 = 0xE700000000000000;
    v17._countAndFlagsBits = 0x676E6964616F6CLL;
  }

  v17._object = v16;
  sub_1007A23D4(v17);
}

uint64_t sub_100423500(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnapshotImageView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100423564()
{
  type metadata accessor for ChromeStyle();
  if (v0 <= 0x3F)
  {
    sub_10024BC28();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        type metadata accessor for CGSize(319);
        if (v3 <= 0x3F)
        {
          type metadata accessor for CGRect(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_10042363C(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 48) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 40) & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_10042379C(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 48) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 48) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v19 = *(v5 + 56);
        v20 = (((result + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 40) & ~v8;

        return v19(v20);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = a2 - 1;
        }

        *result = v18;
      }

      return result;
    }
  }

  if (((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 48) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 48) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

unint64_t sub_100423998()
{
  result = qword_100AE2A30;
  if (!qword_100AE2A30)
  {
    sub_1001F1234(qword_100AE29A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2A30);
  }

  return result;
}

uint64_t sub_1004239FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100423A9C()
{
  result = qword_100AE2A40;
  if (!qword_100AE2A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2A40);
  }

  return result;
}

unint64_t sub_100423AF0()
{
  result = qword_100AE2A48;
  if (!qword_100AE2A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2A48);
  }

  return result;
}

UIMenu sub_100423B44()
{
  v0 = sub_100796CF4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v68 - v5;
  v7 = sub_1007A21D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v68 - v12;
  v84 = sub_10000A7C4(0, &qword_100ADA970);
  sub_1007A2154();
  sub_100796C94();
  v14 = *(v8 + 16);
  v88 = v8 + 16;
  v90 = v14;
  v15 = v7;
  v14(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v86 = ObjCClassFromMetadata;
  v80 = objc_opt_self();
  v17 = [v80 bundleForClass:ObjCClassFromMetadata];
  v89 = *(v1 + 16);
  v77 = v1 + 16;
  v87 = v3;
  v79 = v0;
  v89(v3, v6, v0);
  sub_1007A22D4();
  v18 = *(v1 + 8);
  v78 = v1 + 8;
  v83 = v18;
  v18(v6, v0);
  v85 = *(v8 + 8);
  v82 = v8 + 8;
  v85(v13, v15);
  v19 = sub_1007A2214();
  v81 = objc_opt_self();
  v20 = [v81 systemImageNamed:v19];

  v91 = 0u;
  v92 = 0u;
  v75 = sub_1007A2964();
  sub_1007A2154();
  sub_100796C94();
  v76 = v10;
  v21 = v10;
  v22 = v13;
  v23 = v15;
  v90(v21, v13, v15);
  v24 = v86;
  v25 = [v80 bundleForClass:v86];
  v26 = v79;
  v89(v87, v6, v79);
  v74 = sub_1007A22D4();
  v73 = v27;
  v83(v6, v26);
  v28 = v85;
  v85(v22, v23);
  v29 = sub_1007A2214();
  v30 = [v81 systemImageNamed:v29];

  v91 = 0u;
  v92 = 0u;
  v74 = sub_1007A2964();
  sub_1007A2154();
  sub_100796C94();
  v31 = v22;
  v69 = v23;
  v90(v76, v22, v23);
  v32 = [v80 bundleForClass:v24];
  v33 = v6;
  v34 = v79;
  v89(v87, v6, v79);
  sub_1007A22D4();
  v83(v6, v34);
  v28(v31, v23);
  v35 = sub_1007A2214();
  v36 = [v81 systemImageNamed:v35];

  v71 = UIKeyInputRightArrow;
  sub_1007A2254();
  v91 = 0u;
  v92 = 0u;
  v73 = sub_1007A2964();
  [v73 setAllowsAutomaticMirroring:0];
  sub_1007A2154();
  sub_100796C94();
  v68 = v31;
  v37 = v69;
  v90(v76, v31, v69);
  v38 = v80;
  v39 = [v80 bundleForClass:v86];
  v40 = v79;
  v89(v87, v33, v79);
  sub_1007A22D4();
  v72 = v41;
  v42 = v83;
  v83(v33, v40);
  v43 = v31;
  v44 = v37;
  v85(v43, v37);
  v45 = sub_1007A2214();
  v46 = [v81 systemImageNamed:v45];

  v70 = UIKeyInputLeftArrow;
  sub_1007A2254();
  v91 = 0u;
  v92 = 0u;
  v72 = sub_1007A2964();
  [v72 setAllowsAutomaticMirroring:0];
  v47 = v68;
  sub_1007A2154();
  sub_100796C94();
  v48 = v76;
  v49 = v44;
  v90(v76, v47, v44);
  v50 = [v38 bundleForClass:v86];
  v51 = v79;
  v89(v87, v33, v79);
  sub_1007A22D4();
  v42(v33, v51);
  v52 = v49;
  v85(v47, v49);
  v53 = sub_1007A2214();
  v54 = v81;
  v55 = [v81 systemImageNamed:v53];

  sub_1007A2254();
  v91 = 0u;
  v92 = 0u;
  v56 = sub_1007A2964();
  [v56 setAllowsAutomaticMirroring:0];
  sub_1007A2154();
  sub_100796C94();
  v90(v48, v47, v52);
  v57 = [v80 bundleForClass:v86];
  v89(v87, v33, v51);
  sub_1007A22D4();
  v83(v33, v51);
  v85(v47, v52);
  v58 = sub_1007A2214();
  v59 = [v54 systemImageNamed:v58];

  sub_1007A2254();
  v91 = 0u;
  v92 = 0u;
  v60 = sub_1007A2964();
  [v60 setAllowsAutomaticMirroring:0];
  sub_10000A7C4(0, &qword_100AD8170);
  sub_1001F1160(&unk_100AD8160);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_10081F2E0;
  v62 = v74;
  *(v61 + 32) = v75;
  *(v61 + 40) = v62;
  v63 = v72;
  *(v61 + 48) = v73;
  *(v61 + 56) = v63;
  *(v61 + 64) = v56;
  *(v61 + 72) = v60;
  v66 = v61;
  v94._countAndFlagsBits = 0;
  v94._object = 0xE000000000000000;
  v95.value._countAndFlagsBits = 0;
  v95.value._object = 0;
  v93.value.super.isa = 0;
  v93.is_nil = 0;
  v64.value = 1;
  return sub_1007A30C4(v94, v95, v93, v64, 0xFFFFFFFFFFFFFFFFLL, v66, v67);
}

UIMenu sub_100424820()
{
  v0 = sub_100796CF4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v53 - v5;
  v7 = sub_1007A21D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v53 - v12;
  v58 = sub_10000A7C4(0, &qword_100AD8170);
  sub_1007A2154();
  sub_100796C94();
  v14 = *(v8 + 16);
  v70 = v8 + 16;
  v63 = v14;
  v14(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v72 = ObjCClassFromMetadata;
  v65 = objc_opt_self();
  v16 = [v65 bundleForClass:ObjCClassFromMetadata];
  v17 = *(v1 + 16);
  v69 = v1 + 16;
  v73 = v17;
  v62 = v3;
  v17(v3, v6, v0);
  v57 = sub_1007A22D4();
  v56 = v18;
  v19 = *(v1 + 8);
  v67 = v1 + 8;
  v71 = v19;
  v19(v6, v0);
  v20 = *(v8 + 8);
  v68 = v8 + 8;
  v66 = v20;
  v20(v13, v7);
  v21 = sub_1007A2214();
  v55 = [objc_opt_self() systemImageNamed:v21];

  sub_1001F1160(&unk_100AD8160);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_10081F2E0;
  v61 = sub_10000A7C4(0, &qword_100AECAB0);
  sub_1007A2154();
  sub_100796C94();
  v22 = v10;
  v23 = v63;
  v63(v10, v13, v7);
  v24 = [v65 bundleForClass:v72];
  v60 = v0;
  v73(v62, v6, v0);
  sub_1007A22D4();
  v25 = v6;
  v71(v6, v0);
  v26 = v7;
  v66(v13, v7);
  v74 = 0u;
  v75 = 0u;
  *(v64 + 32) = sub_1007A3414();
  sub_1007A2154();
  sub_100796C94();
  v59 = v22;
  v23(v22, v13, v7);
  v27 = [v65 bundleForClass:v72];
  v28 = v60;
  v73(v62, v25, v60);
  sub_1007A22D4();
  v71(v25, v28);
  v29 = v26;
  v66(v13, v26);
  v74 = 0u;
  v75 = 0u;
  *(v64 + 40) = sub_1007A3414();
  v30 = v13;
  sub_1007A2154();
  sub_100796C94();
  v63(v59, v13, v29);
  v31 = [v65 bundleForClass:v72];
  v32 = v62;
  v73(v62, v25, v28);
  sub_1007A22D4();
  v33 = v25;
  v71(v25, v28);
  v34 = v66;
  v66(v30, v29);
  v74 = 0u;
  v75 = 0u;
  *(v64 + 48) = sub_1007A3414();
  v54 = v30;
  sub_1007A2154();
  sub_100796C94();
  v35 = v29;
  v36 = v29;
  v37 = v63;
  v63(v59, v30, v35);
  v38 = v65;
  v39 = [v65 bundleForClass:v72];
  v40 = v60;
  v73(v32, v33, v60);
  sub_1007A22D4();
  v71(v33, v40);
  v41 = v54;
  v42 = v36;
  v34(v54, v36);
  v74 = 0u;
  v75 = 0u;
  v43 = sub_1007A3414();
  v44 = v64;
  *(v64 + 56) = v43;
  sub_1007A2154();
  sub_100796C94();
  v45 = v59;
  v37(v59, v41, v42);
  v46 = [v38 bundleForClass:v72];
  v47 = v62;
  v48 = v60;
  v73(v62, v33, v60);
  sub_1007A22D4();
  v71(v33, v48);
  v66(v41, v42);
  v74 = 0u;
  v75 = 0u;
  *(v44 + 64) = sub_1007A3414();
  sub_1007A2154();
  sub_100796C94();
  v63(v45, v41, v42);
  v49 = [v65 bundleForClass:v72];
  v73(v47, v33, v48);
  sub_1007A22D4();
  v71(v33, v48);
  v66(v41, v42);
  v74 = 0u;
  v75 = 0u;
  *(v44 + 72) = sub_1007A3414();
  v77._countAndFlagsBits = v57;
  v77._object = v56;
  v78.value._countAndFlagsBits = 0;
  v78.value._object = 0;
  v76.value.super.isa = v55;
  v76.is_nil = 0;
  v50.value = 0;
  return sub_1007A30C4(v77, v78, v76, v50, 0xFFFFFFFFFFFFFFFFLL, v44, v52);
}