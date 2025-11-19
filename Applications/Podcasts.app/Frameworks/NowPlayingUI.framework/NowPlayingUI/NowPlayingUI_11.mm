uint64_t sub_11B6B4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_11B7F0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_116E84(v1);
}

void sub_11B820()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 112);
  *(v1 + 112) = v2;
  v4 = v2;
}

unint64_t sub_11B858()
{
  result = qword_1C9FF8;
  if (!qword_1C9FF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1C9FF8);
  }

  return result;
}

uint64_t sub_11B8A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_116B84(v1, v2);
}

uint64_t sub_11B8E8()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 96) = v0[3];
  *(v1 + 104) = v2;
}

uint64_t sub_11BB7C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 40);
  *(v1 + 40) = *(v0 + 24);
  return sub_114CBC(v2);
}

uint64_t sub_11BC4C()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
}

void sub_11BCBC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v1 + 20) = *(v0 + 28);
  *(v1 + 16) = v2;
}

uint64_t sub_11BD54(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_11BD98(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (a2 && *(a2 + 16) && (v5 = sub_F931C(NSKeyValueChangeNewKey), (v6 & 1) != 0))
  {
    sub_7828(*(a2 + 56) + 32 * v5, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2F30);
  v7 = sub_1450BC();
  sub_15340(v9, &qword_1C2F30);
  a3(v7);
  return swift_unknownObjectRelease();
}

uint64_t sub_11BE64()
{
  v0 = sub_144D7C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_143FDC();
  __chkstk_darwin(v4 - 8);
  v5 = sub_144D1C();
  __chkstk_darwin(v5 - 8);
  type metadata accessor for BindingsManager();
  v6 = swift_allocObject();
  sub_20FCC();
  sub_144D0C();
  sub_143FCC();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  result = sub_144DBC();
  *(v6 + 16) = result;
  *(v6 + 24) = _swiftEmptyArrayStorage;
  qword_1CA000 = v6;
  return result;
}

uint64_t sub_11C038(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  v5 = *(v4 + 16);
  if (!v5)
  {
LABEL_13:
    sub_11CC88(a2, v15);
    swift_beginAccess();
    a2 = *(a1 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 24) = a2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v6 = v4 + 32;

  v7 = 0;
  while (v7 < *(v4 + 16))
  {
    sub_11CC88(v6, v14);
    Strong = swift_weakLoadStrong();
    v9 = swift_weakLoadStrong();
    sub_15340(v14, &qword_1CA258);
    if (!Strong)
    {
      if (!v9)
      {
      }

LABEL_4:

      goto LABEL_5;
    }

    if (!v9)
    {
      goto LABEL_4;
    }

    if (Strong == v9)
    {
    }

LABEL_5:
    ++v7;
    v6 += 8;
    if (v5 == v7)
    {

      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_19:
  a2 = sub_1352EC(0, a2[2] + 1, 1, a2);
  *(a1 + 24) = a2;
LABEL_14:
  v12 = a2[2];
  v11 = a2[3];
  if (v12 >= v11 >> 1)
  {
    a2 = sub_1352EC((v11 > 1), v12 + 1, 1, a2);
  }

  a2[2] = v12 + 1;
  sub_11CD38(v15, &a2[v12 + 4]);
  *(a1 + 24) = a2;
  return swift_endAccess();
}

uint64_t sub_11C210()
{
  v1 = v0;
  v2 = sub_143FDC();
  v20 = v2;
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_143FBC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_weakInit();
  swift_weakAssign();
  v10 = *(v0 + 16);
  sub_143FAC();
  sub_11CC88(v28, v27);
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  sub_11CD38(v27, v11 + 24);
  v25 = sub_11CDA8;
  v26 = v11;
  aBlock = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_11D5C0;
  v24 = &block_descriptor_20;
  v12 = _Block_copy(&aBlock);

  sub_143FCC();
  sub_144DAC();
  _Block_release(v12);

  v13 = v3 + 8;
  v14 = *(v3 + 8);
  v19 = v13;
  v14(v5, v2);
  v15 = *(v7 + 8);
  v15(v9, v6);
  sub_15340(v28, &qword_1CA258);

  sub_20FCC();
  v16 = sub_144D8C();
  v25 = sub_11CDCC;
  v26 = v1;
  aBlock = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_11D5C0;
  v24 = &block_descriptor_23;
  v17 = _Block_copy(&aBlock);

  sub_143FCC();
  aBlock = _swiftEmptyArrayStorage;
  sub_11CDD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C13A8);
  sub_11CE2C();
  sub_14515C();
  sub_144DAC();
  _Block_release(v17);

  v15(v9, v6);
  return (v14)(v5, v20);
}

uint64_t sub_11C5C4(uint64_t a1)
{
  v2 = sub_143FBC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = _swiftEmptyArrayStorage;
  v6 = *(a1 + 16);
  sub_143FAC();
  v15 = &v17;
  v16 = a1;
  sub_144D9C();

  result = (*(v3 + 8))(v5, v2);
  v8 = v17;
  if (!(v17 >> 62))
  {
    v9 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
    if (v9)
    {
      goto LABEL_3;
    }
  }

  result = sub_14531C();
  v9 = result;
  if (!result)
  {
  }

LABEL_3:
  if (v9 >= 1)
  {
    v10 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = sub_1451FC();
      }

      else
      {
        v11 = *(v8 + 8 * v10 + 32);
      }

      ++v10;
      v12 = *(v11 + 24);

      v12(v13);
    }

    while (v9 != v10);
  }

  __break(1u);
  return result;
}

uint64_t sub_11C79C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 24);
  v12 = _swiftEmptyArrayStorage;
  v5 = *(v4 + 16);
  if (v5)
  {
    v10 = a1;
    v6 = v4 + 32;

    v7 = _swiftEmptyArrayStorage;
    do
    {
      sub_11CC88(v6, v11);
      Strong = swift_weakLoadStrong();
      sub_15340(v11, &qword_1CA258);
      if (Strong)
      {
        sub_1449BC();
        if (*(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v12 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_1449FC();
        }

        sub_144A2C();
        v7 = v12;
      }

      v6 += 8;
      --v5;
    }

    while (v5);

    a1 = v10;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  *a1 = v7;

  *(a2 + 24) = _swiftEmptyArrayStorage;
}

uint64_t sub_11C900()
{

  return swift_deallocClassInstance();
}

uint64_t sub_11C964()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_1C00B0 != -1)
    {
      swift_once();
    }

    sub_11C210();
  }

  return result;
}

uint64_t sub_11CA00()
{
  sub_1451EC(21);
  v4._countAndFlagsBits = 60;
  v4._object = 0xE100000000000000;
  sub_14494C(v4);
  v5._countAndFlagsBits = sub_1454BC();
  sub_14494C(v5);

  v6._countAndFlagsBits = 8250;
  v6._object = 0xE200000000000000;
  sub_14494C(v6);
  sub_1452AC();
  v7._countAndFlagsBits = 0x6576726573626F20;
  v7._object = 0xEB000000003D7372;
  sub_14494C(v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5148);
  v0 = sub_1449EC();
  v2 = v1;

  v8._countAndFlagsBits = v0;
  v8._object = v2;
  sub_14494C(v8);

  v9._countAndFlagsBits = 62;
  v9._object = 0xE100000000000000;
  sub_14494C(v9);
  return 0;
}

uint64_t sub_11CB64()
{

  return swift_deallocClassInstance();
}

uint64_t sub_11CBC8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_11CC04(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_11CC24(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_11CC88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA258);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_11CCF8()
{

  swift_weakDestroy();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_11CD38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA258);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_11CDD4()
{
  result = qword_1C81A0;
  if (!qword_1C81A0)
  {
    sub_143FBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C81A0);
  }

  return result;
}

unint64_t sub_11CE2C()
{
  result = qword_1C81B0;
  if (!qword_1C81B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C13A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C81B0);
  }

  return result;
}

uint64_t sub_11CEAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = _swiftEmptyArrayStorage;
  v3[3] = a2;
  v3[4] = a3;
  v5 = *(a1 + 16);
  if (!v5)
  {

    v40 = _swiftEmptyArrayStorage;
    goto LABEL_14;
  }

  v45 = _swiftEmptyArrayStorage;

  sub_92CAC(0, v5, 0);
  v40 = _swiftEmptyArrayStorage;
  v6 = (a1 + 56);
  v7 = &qword_1C2000;
  do
  {
    v38 = v5;
    v9 = *(v6 - 3);
    v8 = *(v6 - 2);
    v10 = *(v6 - 1);
    v11 = *v6;
    v12 = swift_allocObject();
    swift_weakInit();
    v39 = v10;
    if (v11)
    {
      v13 = swift_allocObject();
      *(v13 + 16) = sub_11D41C;
      *(v13 + 24) = v12;
      v35 = type metadata accessor for NotificationObserver();
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      *(v14 + 16) = v9;
      swift_unknownObjectWeakAssign();
      *(v14 + 32) = 1;
      *(v14 + 40) = sub_11D45C;
      *(v14 + 48) = v13;
      v15 = objc_opt_self();
      swift_retain_n();
      sub_11D488(v9, v8, v10, 1);
      v16 = v9;

      v17 = [v15 defaultCenter];
      v18 = *(v14 + 16);
      Strong = swift_unknownObjectWeakLoadStrong();

      v20 = v18;
      [v17 addObserver:v14 selector:"handleNotification:" name:v20 object:Strong];

      swift_unknownObjectRelease();
      v43 = v35;
      v44 = &off_1A5488;

      sub_11D4FC(v9, v8, v39, 1);

      *&v42 = v14;
    }

    else
    {
      v21 = swift_allocObject();
      *(v21 + 16) = sub_11D41C;
      *(v21 + 24) = v12;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA260);
      v23 = objc_allocWithZone(v22);
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      v24 = &v23[v7[385]];
      *v24 = v8;
      v24[1] = v10;
      v25 = &v23[qword_1C2C10];
      *v25 = sub_11D594;
      v25[1] = v21;
      swift_retain_n();

      v26 = v9;

      v36 = v8;
      sub_11D488(v9, v8, v10, 0);
      v41.receiver = v23;
      v41.super_class = v22;
      v27 = objc_msgSendSuper2(&v41, "init");
      v28 = swift_unknownObjectWeakLoadStrong();
      if (v28)
      {
        v29 = v28;
        v30 = v27;

        v31 = sub_14489C();

        [v29 addObserver:v30 forKeyPath:v31 options:1 context:0];

        swift_unknownObjectRelease();
        v43 = v22;
        v44 = &off_1A54E8;

        sub_11D4FC(v9, v36, v10, 0);

        *&v42 = v30;
        v45 = v40;
        goto LABEL_9;
      }

      v43 = v22;
      v44 = &off_1A54E8;

      sub_11D4FC(v9, v36, v10, 0);

      *&v42 = v27;
    }

    v45 = v40;
LABEL_9:
    v33 = v40[2];
    v32 = v40[3];
    if (v33 >= v32 >> 1)
    {
      sub_92CAC((v32 > 1), v33 + 1, 1);
      v40 = v45;
    }

    v40[2] = v33 + 1;
    sub_2B5CC(&v42, &v40[5 * v33 + 4]);
    v6 += 32;
    v5 = v38 - 1;
    v7 = &qword_1C2000;
  }

  while (v38 != 1);

LABEL_14:
  *(v37 + 16) = v40;

  sub_140D7C();

  return v37;
}

uint64_t sub_11D3E4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_11D424()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_11D488(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    swift_unknownObjectRetain();

    return a1;
  }

  else
  {
    v5 = a1;
  }
}

uint64_t sub_11D4FC(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_11D5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_94574(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_15340(v13, &qword_1C2F30);
}

id sub_11D69C(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtCVV12NowPlayingUI14DeprecatedText7Drawing4View_isDisabled] = 0;
  v9 = &v4[OBJC_IVAR____TtCVV12NowPlayingUI14DeprecatedText7Drawing4View__textDrawingContext];
  sub_42908(v20);
  v10 = v20[5];
  v9[4] = v20[4];
  v9[5] = v10;
  v11 = v20[7];
  v9[6] = v20[6];
  v9[7] = v11;
  v12 = v20[1];
  *v9 = v20[0];
  v9[1] = v12;
  v13 = v20[3];
  v9[2] = v20[2];
  v9[3] = v13;
  v19.receiver = v4;
  v19.super_class = _s4ViewCMa();
  v14 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 clearColor];
  [v16 setBackgroundColor:v17];

  [v16 setOpaque:0];
  [v16 setUserInteractionEnabled:0];

  return v16;
}

uint64_t sub_11D894(__int128 *a1)
{
  v3 = a1[3];
  v4 = a1[5];
  v133 = a1[4];
  v134 = v4;
  v5 = a1[5];
  v6 = a1[7];
  v135 = a1[6];
  v136 = v6;
  v7 = a1[1];
  v129 = *a1;
  v130 = v7;
  v8 = a1[3];
  v10 = *a1;
  v9 = a1[1];
  v131 = a1[2];
  v132 = v8;
  v11 = &v1[OBJC_IVAR____TtCVV12NowPlayingUI14DeprecatedText7Drawing4View__textDrawingContext];
  v12 = *&v1[OBJC_IVAR____TtCVV12NowPlayingUI14DeprecatedText7Drawing4View__textDrawingContext + 32];
  v139 = *&v1[OBJC_IVAR____TtCVV12NowPlayingUI14DeprecatedText7Drawing4View__textDrawingContext + 48];
  *&v138[16] = v12;
  v13 = *&v1[OBJC_IVAR____TtCVV12NowPlayingUI14DeprecatedText7Drawing4View__textDrawingContext];
  *v138 = *&v1[OBJC_IVAR____TtCVV12NowPlayingUI14DeprecatedText7Drawing4View__textDrawingContext + 16];
  v137 = v13;
  v14 = *&v1[OBJC_IVAR____TtCVV12NowPlayingUI14DeprecatedText7Drawing4View__textDrawingContext + 96];
  v143 = *&v1[OBJC_IVAR____TtCVV12NowPlayingUI14DeprecatedText7Drawing4View__textDrawingContext + 112];
  v142 = v14;
  v15 = *&v1[OBJC_IVAR____TtCVV12NowPlayingUI14DeprecatedText7Drawing4View__textDrawingContext + 64];
  v141 = *&v1[OBJC_IVAR____TtCVV12NowPlayingUI14DeprecatedText7Drawing4View__textDrawingContext + 80];
  v140 = v15;
  v128[3] = v3;
  v128[2] = v131;
  v128[1] = v9;
  v128[0] = v10;
  v128[7] = a1[7];
  v128[6] = v135;
  v128[5] = v5;
  v128[4] = v133;
  if (sub_55948(v128) != 1)
  {
    v124 = v140;
    v125 = v141;
    v126 = v142;
    v127 = v143;
    v120 = v137;
    v121 = *v138;
    v122 = *&v138[16];
    v123 = v139;
    if (sub_55948(&v120) == 1)
    {
      v28 = *(v11 + 5);
      v116 = *(v11 + 4);
      v117 = v28;
      v29 = *(v11 + 7);
      v118 = *(v11 + 6);
      v119 = v29;
      v30 = *(v11 + 1);
      v113 = *v11;
      *v114 = v30;
      v31 = *(v11 + 3);
      *&v114[16] = *(v11 + 2);
      v115 = v31;
      v32 = *a1;
      v33 = a1[1];
      v34 = a1[3];
      *(v11 + 2) = a1[2];
      *(v11 + 3) = v34;
      *v11 = v32;
      *(v11 + 1) = v33;
      v35 = a1[4];
      v36 = a1[5];
      v37 = a1[7];
      *(v11 + 6) = a1[6];
      *(v11 + 7) = v37;
      *(v11 + 4) = v35;
      *(v11 + 5) = v36;
      *&v88[16] = v131;
      v89 = v132;
      v87 = v129;
      *v88 = v130;
      v92 = v135;
      v93 = v136;
      v90 = v133;
      v91 = v134;
      sub_9AD8(&v87, &v102);
      sub_15340(&v113, &qword_1C3158);
      [v1 setNeedsDisplay];
LABEL_22:
      v27 = a1;
      return sub_15340(v27, &qword_1C3158);
    }

    v38 = v137;
    v39 = *v138;
    v40 = v138[8];
    v112[0] = *&v138[9];
    v41 = *&v138[24];
    *(v112 + 7) = *&v138[16];
    v42 = v139;
    v110 = v140;
    v111 = v141;
    v43 = v142;
    v44 = *(&v143 + 1);
    v45 = a1[3];
    v104 = a1[2];
    v105 = v45;
    v46 = a1[1];
    v102 = *a1;
    v103 = v46;
    v47 = a1[7];
    v108 = a1[6];
    v109 = v47;
    v48 = a1[5];
    v106 = a1[4];
    v107 = v48;
    *&v114[16] = *&v138[16];
    *&v114[9] = *&v138[9];
    v116 = v140;
    v117 = v141;
    v113 = v137;
    *v114 = *v138;
    v114[8] = v138[8];
    *&v114[24] = *&v138[24];
    v115 = v139;
    v118 = v142;
    v68 = v143;
    v119 = v143;
    if (sub_55948(&v113) == 1)
    {
      v90 = v106;
      v91 = v107;
      v92 = v108;
      v93 = v109;
      v87 = v102;
      *v88 = v103;
      *&v88[16] = v104;
      v89 = v105;
      if (sub_55948(&v87) == 1)
      {
        v80 = v38;
        *v81 = v39;
        v81[8] = v40;
        *&v81[9] = v112[0];
        *&v81[16] = *(v112 + 7);
        *&v81[24] = v41;
        v82 = v42;
        v83 = v110;
        v84 = v111;
        v85 = v43;
        *&v86 = v68;
        *(&v86 + 1) = v44;
        sub_1D19C(&v137, &v69, &qword_1C3158);
        v27 = &v80;
        return sub_15340(v27, &qword_1C3158);
      }
    }

    else
    {
      v90 = v106;
      v91 = v107;
      v92 = v108;
      v93 = v109;
      v87 = v102;
      *v88 = v103;
      *&v88[16] = v104;
      v89 = v105;
      if (sub_55948(&v87) != 1)
      {
        v80 = v102;
        *v81 = v103;
        *&v81[16] = v104;
        v82 = v105;
        v85 = v108;
        v86 = v109;
        v83 = v106;
        v84 = v107;
        v66 = *(&v102 + 1);
        v67 = v102;
        v65 = v103;
        v64 = BYTE8(v103);
        v63 = *(&v104 + 1);
        v51 = v109;
        sub_1D19C(&v137, &v69, &qword_1C3158);
        sub_1D19C(a1, &v69, &qword_1C3158);
        sub_1D19C(&v137, &v69, &qword_1C3158);
        sub_1D19C(a1, &v69, &qword_1C3158);
        if ((sub_95694(v38, *(&v38 + 1), v39, v40 & 1, v67, v66, v65, v64 & 1) & 1) != 0 && v41 == v63 && (sub_144F5C() & 1) != 0 && (sub_141AFC() & 1) != 0 && (sub_141AFC() & 1) != 0 && v68 == v51)
        {
          v52 = sub_141AFC();
          sub_15340(&v80, &qword_1C3158);
          v69 = v38;
          v70 = v39;
          v71 = v40;
          *v72 = v112[0];
          *&v72[7] = *(v112 + 7);
          v73 = v41;
          v74 = v42;
          v75 = v110;
          v76 = v111;
          v77 = v43;
          v78 = v68;
          v79 = v44;
          sub_15340(&v69, &qword_1C3158);
          if (v52)
          {
            sub_15340(&v137, &qword_1C3158);
            sub_15340(a1, &qword_1C3158);
            v27 = a1;
            return sub_15340(v27, &qword_1C3158);
          }

          goto LABEL_21;
        }

        sub_15340(&v80, &qword_1C3158);
        v69 = v38;
        v70 = v39;
        v71 = v40;
        *v72 = v112[0];
        *&v72[7] = *(v112 + 7);
        v73 = v41;
        v74 = v42;
        v75 = v110;
        v76 = v111;
        v77 = v43;
        v78 = v68;
        v79 = v44;
        v50 = &v69;
        v49 = &qword_1C3158;
LABEL_20:
        sub_15340(v50, v49);
LABEL_21:
        v53 = *(v11 + 5);
        v106 = *(v11 + 4);
        v107 = v53;
        v54 = *(v11 + 7);
        v108 = *(v11 + 6);
        v109 = v54;
        v55 = *(v11 + 1);
        v102 = *v11;
        v103 = v55;
        v56 = *(v11 + 3);
        v104 = *(v11 + 2);
        v105 = v56;
        v57 = *a1;
        v58 = a1[1];
        v59 = a1[3];
        *(v11 + 2) = a1[2];
        *(v11 + 3) = v59;
        *v11 = v57;
        *(v11 + 1) = v58;
        v60 = a1[4];
        v61 = a1[5];
        v62 = a1[7];
        *(v11 + 6) = a1[6];
        *(v11 + 7) = v62;
        *(v11 + 4) = v60;
        *(v11 + 5) = v61;
        *&v88[16] = v131;
        v89 = v132;
        v87 = v129;
        *v88 = v130;
        v92 = v135;
        v93 = v136;
        v90 = v133;
        v91 = v134;
        sub_9AD8(&v87, &v80);
        sub_15340(&v102, &qword_1C3158);
        [v1 setNeedsDisplay];
        sub_15340(a1, &qword_1C3158);
        sub_15340(&v137, &qword_1C3158);
        goto LABEL_22;
      }
    }

    v87 = v38;
    *v88 = v39;
    v88[8] = v40;
    *&v88[9] = v112[0];
    *&v88[16] = *(v112 + 7);
    *&v88[24] = v41;
    v89 = v42;
    v90 = v110;
    v91 = v111;
    v92 = v43;
    *&v93 = v68;
    *(&v93 + 1) = v44;
    v100 = v108;
    v101 = v109;
    v98 = v106;
    v99 = v107;
    v96 = v104;
    v97 = v105;
    v94 = v102;
    v95 = v103;
    sub_1D19C(&v137, &v80, &qword_1C3158);
    sub_1D19C(a1, &v80, &qword_1C3158);
    sub_1D19C(&v137, &v80, &qword_1C3158);
    sub_1D19C(a1, &v80, &qword_1C3158);
    v49 = &unk_1CA2A0;
    v50 = &v87;
    goto LABEL_20;
  }

  v90 = v140;
  v91 = v141;
  v92 = v142;
  v93 = v143;
  v87 = v137;
  *v88 = *v138;
  *&v88[16] = *&v138[16];
  v89 = v139;
  result = sub_55948(&v87);
  if (result == 1)
  {
    return result;
  }

  sub_42908(&v102);
  v17 = *(v11 + 5);
  v116 = *(v11 + 4);
  v117 = v17;
  v18 = *(v11 + 7);
  v118 = *(v11 + 6);
  v119 = v18;
  v19 = *(v11 + 1);
  v113 = *v11;
  *v114 = v19;
  v20 = *(v11 + 3);
  *&v114[16] = *(v11 + 2);
  v115 = v20;
  v21 = v102;
  v22 = v103;
  v23 = v105;
  *(v11 + 2) = v104;
  *(v11 + 3) = v23;
  *v11 = v21;
  *(v11 + 1) = v22;
  v24 = v106;
  v25 = v107;
  v26 = v109;
  *(v11 + 6) = v108;
  *(v11 + 7) = v26;
  *(v11 + 4) = v24;
  *(v11 + 5) = v25;
  v122 = *&v138[16];
  v123 = v139;
  v120 = v137;
  v121 = *v138;
  v126 = v142;
  v127 = v143;
  v124 = v140;
  v125 = v141;
  sub_9AD8(&v120, &v80);
  sub_15340(&v113, &qword_1C3158);
  [v1 setNeedsDisplay];
  v27 = &v137;
  return sub_15340(v27, &qword_1C3158);
}

uint64_t sub_11E25C(uint64_t a1)
{
  v3 = sub_144EDC();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = *(a1 + 120);
  v48 = 0;
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  v45 = v17;
  v46 = v14;
  if ((v16 & 1) == 0)
  {
    v30 = *(v15 + 16);

    if (v30 && (sub_F931C(NSParagraphStyleAttributeName), (v31 & 1) != 0))
    {
      swift_unknownObjectRetain();

      objc_opt_self();
      v28 = swift_dynamicCastObjCClass();
      v25 = v9;
      if (v28)
      {
        goto LABEL_11;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v25 = v9;
    }

    v28 = 0;
LABEL_11:
    v26 = v11;
    v27 = 0;
    v48 = v28;
    v29 = v13;
    if (!v28)
    {
      goto LABEL_19;
    }

LABEL_12:
    v32 = [v28 alignment];
    if (v32 > 2)
    {
      if ((v32 - 3) >= 2)
      {
LABEL_21:
        sub_141A9C();

        return sub_55DC8(v27);
      }
    }

    else if (v32)
    {
      if (v32 != &dword_0 + 1)
      {
        if (v32 == &dword_0 + 2)
        {
          sub_144ECC();
          v33 = v45;
          sub_144EEC();
          v44 = v34;
          v36 = v35;
          v38 = v37;
          v40 = v39;
          (*(v4 + 8))(v7, v3);
          v49.origin.x = v33;
          v49.origin.y = v25;
          v49.size.width = v26;
          v49.size.height = v29;
          CGRectGetMaxX(v49);
          v50.origin.x = v44;
          v50.origin.y = v36;
          v50.size.width = v38;
          v50.size.height = v40;
          CGRectGetWidth(v50);
        }

        goto LABEL_21;
      }

      sub_144EBC();
      goto LABEL_20;
    }

LABEL_19:
    sub_144ECC();
LABEL_20:
    sub_144EEC();
    (*(v4 + 8))(v7, v3);
    goto LABEL_21;
  }

  v42 = v4;
  v43 = v3;
  v18 = *a1;
  v44 = *(a1 + 8);
  v19 = v18;
  v20 = [v19 length];
  v21 = swift_allocObject();
  *(v21 + 16) = &v48;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_11E8BC;
  *(v22 + 24) = v21;
  v41 = v21;
  aBlock[4] = sub_11E8D4;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_11D5F0;
  aBlock[3] = &block_descriptor_21;
  v23 = _Block_copy(aBlock);

  [v19 enumerateAttribute:NSParagraphStyleAttributeName inRange:0 options:v20 usingBlock:{0, v23}];
  sub_9B34(v18, *&v44, v15, 1);
  _Block_release(v23);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if ((v23 & 1) == 0)
  {
    v25 = v9;
    v26 = v11;
    v27 = sub_11E8BC;
    v28 = v48;
    v4 = v42;
    v3 = v43;
    v29 = v13;
    if (!v48)
    {
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_11E74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  sub_1D19C(a1, v10, &qword_1C2F30);
  if (v11)
  {
    sub_55A48();
    v6 = swift_dynamicCast();
    v7 = v9;
    if (!v6)
    {
      v7 = 0;
    }
  }

  else
  {
    sub_15340(v10, &qword_1C2F30);
    v7 = 0;
  }

  v8 = *a5;
  *a5 = v7;
}

id sub_11E7F4()
{
  v2.receiver = v0;
  v2.super_class = _s4ViewCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_11E914()
{
  v1 = *(v0 + OBJC_IVAR____TtCVV12NowPlayingUI14DeprecatedText7Drawing4View__textDrawingContext + 80);
  v28 = *(v0 + OBJC_IVAR____TtCVV12NowPlayingUI14DeprecatedText7Drawing4View__textDrawingContext + 64);
  v29 = v1;
  v2 = *(v0 + OBJC_IVAR____TtCVV12NowPlayingUI14DeprecatedText7Drawing4View__textDrawingContext + 112);
  v30 = *(v0 + OBJC_IVAR____TtCVV12NowPlayingUI14DeprecatedText7Drawing4View__textDrawingContext + 96);
  v31 = v2;
  v3 = *(v0 + OBJC_IVAR____TtCVV12NowPlayingUI14DeprecatedText7Drawing4View__textDrawingContext + 16);
  v24 = *(v0 + OBJC_IVAR____TtCVV12NowPlayingUI14DeprecatedText7Drawing4View__textDrawingContext);
  v25 = v3;
  v4 = *(v0 + OBJC_IVAR____TtCVV12NowPlayingUI14DeprecatedText7Drawing4View__textDrawingContext + 48);
  v26 = *(v0 + OBJC_IVAR____TtCVV12NowPlayingUI14DeprecatedText7Drawing4View__textDrawingContext + 32);
  v27 = v4;
  v34 = v26;
  v35 = v4;
  v32 = v24;
  v33 = v3;
  v38 = v30;
  v39 = v2;
  v36 = v28;
  v37 = v1;
  result = sub_55948(&v32);
  if (result != 1)
  {
    v23[4] = v36;
    v23[5] = v37;
    v23[6] = v38;
    v23[7] = v39;
    v23[0] = v32;
    v23[1] = v33;
    v23[2] = v34;
    v23[3] = v35;
    v22[4] = v28;
    v22[5] = v29;
    v22[6] = v30;
    v22[7] = v31;
    v22[0] = v24;
    v22[1] = v25;
    v22[2] = v26;
    v22[3] = v27;
    sub_9AD8(v22, &v21);
    sub_11E25C(v23);
    v10 = *(&v34 + 1);
    v11 = v32;
    if (BYTE8(v33))
    {
      [v32 drawWithRect:*(&v34 + 1) options:v34 context:?];
    }

    else
    {
      v13 = *(&v32 + 1);
      v12 = v33;
      v14 = v9;
      v15 = v8;
      v16 = v7;
      v17 = v6;
      v18 = v34;
      sub_55B9C(v11, v13, v12, 0);
      v19 = sub_14489C();

      sub_94D00(v12);

      type metadata accessor for Key(0);
      sub_957E8();
      isa = sub_1447EC().super.isa;

      [v19 drawWithRect:v10 options:isa attributes:v18 context:{v17, v16, v15, v14}];
    }

    return sub_15340(&v24, &qword_1C3158);
  }

  return result;
}

void sub_11EB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v10 = objc_getAssociatedObject(v5, &unk_1C63A8);
  swift_endAccess();
  if (v10)
  {
    sub_14514C();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25[0] = v23;
  v25[1] = v24;
  if (!*(&v24 + 1))
  {
    sub_15340(v25, &qword_1C2F30);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA3A8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v11 = sub_13A93C(_swiftEmptyArrayStorage);
    goto LABEL_9;
  }

  v11 = v22;
LABEL_9:
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  type metadata accessor for ControlEventHandler();
  swift_allocObject();

  v13 = v5;
  v14 = sub_B7700(v13, a1, a5, v12);
  if (v11[2] && (v15 = sub_F7FAC(a1), (v16 & 1) != 0))
  {
    v17 = *(v11[7] + 8 * v15);
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4880);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_14F0E0;
  *(inited + 32) = v14;
  *&v25[0] = v17;

  sub_A71F0(inited);
  v19 = *&v25[0];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v25[0] = v11;
  sub_1382FC(v19, a1, isUniquelyReferenced_nonNull_native);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5DF0);
  isa = sub_1447EC().super.isa;
  swift_beginAccess();
  objc_setAssociatedObject(v13, &unk_1C63A8, isa, &dword_0 + 1);
  swift_endAccess();
}

uint64_t sub_11EE48()
{
  sub_140E1C();
  swift_allocObject();
  result = sub_140E0C();
  qword_1D1970 = result;
  return result;
}

char *sub_11EE88(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC12NowPlayingUI8SongCell_title];
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = &v4[OBJC_IVAR____TtC12NowPlayingUI8SongCell_artistName];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = &v4[OBJC_IVAR____TtC12NowPlayingUI8SongCell_albumTitle];
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI8SongCell_duration] = 0;
  v4[OBJC_IVAR____TtC12NowPlayingUI8SongCell_forceDurationHidden] = 0;
  v4[OBJC_IVAR____TtC12NowPlayingUI8SongCell_isProminentItem] = 0;
  v4[OBJC_IVAR____TtC12NowPlayingUI8SongCell_isExplicit] = 0;
  v12 = &v4[OBJC_IVAR____TtC12NowPlayingUI8SongCell_popularity];
  *v12 = 0;
  v12[8] = 1;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI8SongCell_badgeArtworkCatalog] = 0;
  v4[OBJC_IVAR____TtC12NowPlayingUI8SongCell_supportsLibraryAddKeepLocalButton] = 1;
  v4[OBJC_IVAR____TtC12NowPlayingUI8SongCell_requiresLibraryAddKeepLocalButtonSpacing] = 0;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI8SongCell_layoutStyle] = 24576;
  v13 = &v4[OBJC_IVAR____TtC12NowPlayingUI8SongCell_trackNumber];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v4[OBJC_IVAR____TtC12NowPlayingUI8SongCell_maximumTrackNumberForSizing];
  *v14 = 0;
  v14[8] = 1;
  v4[OBJC_IVAR____TtC12NowPlayingUI8SongCell_wantsNowPlayingIndicator] = 0;
  v4[OBJC_IVAR____TtC12NowPlayingUI8SongCell_wantsAddButton] = 0;
  v4[OBJC_IVAR____TtC12NowPlayingUI8SongCell_isAddButtonSelected] = 0;
  v15 = &v4[OBJC_IVAR____TtC12NowPlayingUI8SongCell_addButtonHandler];
  *v15 = 0;
  v15[1] = 0;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI8SongCell_playbackState] = 0;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI8SongCell____lazy_storage___badgeArtworkBackgroundView] = 0;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI8SongCell____lazy_storage___badgeArtworkComponent] = 0;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI8SongCell_trackNumberTextDrawingView] = 0;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI8SongCell_titleTextDrawingView] = 0;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI8SongCell_explicitBadgeTextDrawingView] = 0;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI8SongCell_popularityBadgeTextDrawingView] = 0;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI8SongCell_artistTextDrawingView] = 0;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI8SongCell_albumTextDrawingView] = 0;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI8SongCell_durationTextDrawingView] = 0;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI8SongCell_trackNumberTextStackView] = 0;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI8SongCell_explicitBadgeTextStackView] = 0;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI8SongCell_popularityBadgeTextStackView] = 0;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI8SongCell_nowPlayingIndicatorView] = 0;
  v16 = &v4[OBJC_IVAR____TtC12NowPlayingUI8SongCell_textComponents];
  sub_127018(v53);
  v17 = v53[1];
  *v16 = v53[0];
  *(v16 + 1) = v17;
  *(v16 + 2) = v53[2];
  *(v16 + 6) = v54;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI8SongCell_darkerSystemColorsNotificationObserver] = 0;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI8SongCell____lazy_storage___addButton] = 0;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI8SongCell_chevronImageView] = 0;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI8SongCell_musicVideoGlyphImageView] = 0;
  v52.receiver = v4;
  v52.super_class = type metadata accessor for SongCell();
  v18 = objc_msgSendSuper2(&v52, "initWithFrame:", a1, a2, a3, a4);
  v19 = [v18 layer];
  [v19 setAllowsGroupOpacity:0];

  v20 = [v18 layer];
  [v20 setAllowsGroupBlending:0];

  sub_14114C();
  sub_1410EC();
  v21 = &v18[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkTreatment];
  *v21 = v22;
  v21[8] = 0;
  v23 = *&v18[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkComponent];
  LOBYTE(v21) = *(v23 + 152);
  *(v23 + 144) = v22;
  *(v23 + 152) = 0;
  if ((v21 & 1) != 0 || (sub_141AFC() & 1) == 0)
  {
    v24 = *(v23 + 184);
    if (v24)
    {

      v24(v25);
      sub_2173C(v24);
    }
  }

  v26 = &v18[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkPlaceholder];
  v27 = *&v18[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkPlaceholder];
  v28 = *&v18[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkPlaceholder + 8];
  *v26 = xmmword_150210;
  v29 = v26[16];
  v26[16] = 0x80;
  sub_990A0(v27, v28, v29);
  sub_CD7D8(&dword_4, 0, 0x80u);
  v30 = v18[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment];
  v18[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment] = 1;
  if ((v30 & 1) == 0)
  {
    [v18 setNeedsLayout];
  }

  v31 = v18[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_wantsCustomHandlingOfSeparatorInset];
  v18[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_wantsCustomHandlingOfSeparatorInset] = 0;
  if (v31 == 1)
  {
    [v18 setNeedsLayout];
  }

  v32 = *&v18[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_textStackView];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4880);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_14D1E0;
  v34 = &v18[OBJC_IVAR____TtC12NowPlayingUI8SongCell_textComponents];
  v35 = *&v18[OBJC_IVAR____TtC12NowPlayingUI8SongCell_textComponents + 8];
  *(inited + 32) = v35;
  *(inited + 40) = *(v34 + 4);

  if ((inited & 0xC000000000000001) != 0)
  {
    v35 = sub_1451FC();
  }

  else
  {
  }

  sub_51528(v35);

  if ((inited & 0xC000000000000001) != 0)
  {
    v36 = sub_1451FC();
  }

  else
  {
    v36 = *(inited + 40);
  }

  sub_51528(v36);

  v37 = *(v34 + 2);
  v38 = qword_1C00B8;

  if (v38 != -1)
  {
    swift_once();
  }

  v39 = sub_140DFC();
  v41 = v40;

  v55._countAndFlagsBits = v39;
  v55._object = v41;
  sub_14494C(v55);

  *(v37 + 128) = 32;
  *(v37 + 136) = 0xE100000000000000;

  sub_54980();

  v42 = *(v34 + 3);
  *(v42 + 128) = 8755426;
  *(v42 + 136) = 0xA300000000000000;

  sub_54980();

  sub_124518();
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for NotificationObserver();
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v44 + 16) = UIAccessibilityDarkerSystemColorsStatusDidChangeNotification;
  swift_unknownObjectWeakAssign();
  *(v44 + 32) = 1;
  *(v44 + 40) = sub_128898;
  *(v44 + 48) = v43;
  v45 = objc_opt_self();
  swift_retain_n();
  v46 = UIAccessibilityDarkerSystemColorsStatusDidChangeNotification;
  v47 = [v45 defaultCenter];
  v48 = *(v44 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();

  v50 = v48;
  [v47 addObserver:v44 selector:"handleNotification:" name:v50 object:Strong];

  swift_unknownObjectRelease();
  *&v18[OBJC_IVAR____TtC12NowPlayingUI8SongCell_darkerSystemColorsNotificationObserver] = v44;

  return v18;
}

void sub_11F5B4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_125AB4();
  }
}

void sub_11F680(uint64_t a1)
{
  v3 = sub_14095C();
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_title];
  v8 = *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_title + 8];
  v11 = v9 == v10 && v8 == v5;
  if (!v11 && (sub_1453BC() & 1) == 0)
  {
    v12 = *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_textComponents + 8];
    v19[0] = v9;
    v19[1] = v8;
    v13 = objc_opt_self();

    v14 = [v13 whitespaceAndNewlineCharacterSet];
    sub_14094C();

    sub_9CCC();
    v15 = v1;
    v16 = sub_14512C();
    v18 = v17;
    (*(v4 + 8))(v7, v3);

    *(v12 + 128) = v16;
    *(v12 + 136) = v18;

    sub_54980();
    [v15 setNeedsLayout];
  }
}

void sub_11F860(uint64_t a1)
{
  v3 = sub_14095C();
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_artistName];
  v8 = *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_artistName + 8];
  v11 = v9 == v10 && v8 == v5;
  if (!v11 && (sub_1453BC() & 1) == 0)
  {
    v12 = *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_textComponents + 32];
    v19[0] = v9;
    v19[1] = v8;
    v13 = objc_opt_self();

    v14 = [v13 whitespaceAndNewlineCharacterSet];
    sub_14094C();

    sub_9CCC();
    v15 = v1;
    v16 = sub_14512C();
    v18 = v17;
    (*(v4 + 8))(v7, v3);

    *(v12 + 128) = v16;
    *(v12 + 136) = v18;

    sub_54980();
    [v15 setNeedsLayout];
  }
}

void sub_11FA40(char *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, uint64_t))
{
  v8 = sub_1448DC();
  v9 = &a1[*a4];
  v10 = *v9;
  v11 = v9[1];
  *v9 = v8;
  v9[1] = v12;
  v13 = a1;
  a5(v10, v11);
}

void sub_11FACC(uint64_t a1)
{
  v3 = sub_14095C();
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_albumTitle];
  v8 = *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_albumTitle + 8];
  v11 = v9 == v10 && v8 == v5;
  if (!v11 && (sub_1453BC() & 1) == 0)
  {
    v12 = *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_textComponents + 40];
    v19[0] = v9;
    v19[1] = v8;
    v13 = objc_opt_self();

    v14 = [v13 whitespaceAndNewlineCharacterSet];
    sub_14094C();

    sub_9CCC();
    v15 = v1;
    v16 = sub_14512C();
    v18 = v17;
    (*(v4 + 8))(v7, v3);

    *(v12 + 128) = v16;
    *(v12 + 136) = v18;

    sub_54980();
    [v15 setNeedsLayout];
  }
}

void sub_11FCD8(double a1)
{
  v2 = OBJC_IVAR____TtC12NowPlayingUI8SongCell_duration;
  v3 = *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_duration];
  *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_duration] = a1;
  if (v3 != a1)
  {
    v4 = v1;
    v5 = *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_textComponents + 48];
    if (a1 <= 0.00000011920929)
    {
      v8 = 0;
      v10 = 0xE000000000000000;
    }

    else
    {
      sub_14114C();
      v6 = sub_14107C();
      v7 = [v6 stringFromSeconds:*&v4[v2]];

      v8 = sub_1448DC();
      v10 = v9;
    }

    *(v5 + 128) = v8;
    *(v5 + 136) = v10;

    sub_54980();

    [v4 setNeedsLayout];
  }
}

id sub_11FE48(id result)
{
  if (v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_isProminentItem] == (result & 1))
  {
    return result;
  }

  if (!v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_isProminentItem])
  {
    [v1 setSelectedBackgroundView:0];
    [v1 setBackgroundView:0];
    goto LABEL_8;
  }

  type metadata accessor for TintColorObservingView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  result = [v3 tintColor];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = result;
  v5 = [result colorWithAlphaComponent:0.28];

  [v3 setBackgroundColor:v5];
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = &v3[OBJC_IVAR____TtC12NowPlayingUI22TintColorObservingView_tintColorDidChangeCallback];
  v8 = *&v3[OBJC_IVAR____TtC12NowPlayingUI22TintColorObservingView_tintColorDidChangeCallback];
  *v7 = sub_128850;
  v7[1] = v6;

  sub_2173C(v8);

  [v1 setSelectedBackgroundView:v3];

  v9 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  result = [v9 tintColor];
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v10 = result;
  v11 = [result colorWithAlphaComponent:0.16];

  [v9 setBackgroundColor:v11];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = &v9[OBJC_IVAR____TtC12NowPlayingUI22TintColorObservingView_tintColorDidChangeCallback];
  v14 = *&v9[OBJC_IVAR____TtC12NowPlayingUI22TintColorObservingView_tintColorDidChangeCallback];
  *v13 = sub_128874;
  v13[1] = v12;

  sub_2173C(v14);

  [v1 setBackgroundView:v9];

LABEL_8:

  return [v1 setNeedsLayout];
}

void sub_1200FC(void *a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [a1 colorWithAlphaComponent:a2];
    [v5 setBackgroundColor:v6];
  }
}

id sub_1201F8(id result)
{
  v2 = OBJC_IVAR____TtC12NowPlayingUI8SongCell_isExplicit;
  v3 = v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_isExplicit];
  v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_isExplicit] = result;
  if (v3 != (result & 1))
  {
    if (*&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_explicitBadgeTextStackView])
    {
      [*&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_explicitBadgeTextStackView] setHidden:(result & 1) == 0];
    }

    v4 = *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_explicitBadgeTextDrawingView];
    if (v4)
    {
      [v4 setHidden:(v1[v2] & 1) == 0];
    }

    return [v1 setNeedsLayout];
  }

  return result;
}

id sub_1202B0(id result)
{
  v2 = *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_layoutStyle];
  v3 = result >> 13;
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      if (v3 != 4)
      {
        if (result > 0x60FFu)
        {
          v4 = 24832;
          if (result == 24832)
          {
            goto LABEL_24;
          }

          v5 = 24833;
        }

        else
        {
          if (result == 24576)
          {
            if (v2 == 24576)
            {
              return result;
            }

            goto LABEL_25;
          }

          v5 = 24577;
        }

LABEL_37:
        if (v2 == v5)
        {
          return result;
        }

        goto LABEL_25;
      }

      if (result != 0x8000)
      {
        v4 = 32769;
        if (result != 32769)
        {
          v5 = 33024;
          goto LABEL_37;
        }

LABEL_24:
        if (v2 == v4)
        {
          return result;
        }

        goto LABEL_25;
      }

      if (v2 == 0x8000)
      {
        return result;
      }

LABEL_25:
      if ((v2 & 0xE100) != 0x2100)
      {
        goto LABEL_30;
      }

      goto LABEL_26;
    }

    if ((v2 & 0xE000) != 0x4000)
    {
      goto LABEL_25;
    }

LABEL_11:
    if (((v2 ^ result) & 1) == 0)
    {
      return result;
    }

    goto LABEL_25;
  }

  if (!(result >> 13))
  {
    if ((v2 & 0xE000) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_11;
  }

  if ((v2 & 0xE000) != 0x2000)
  {
    goto LABEL_25;
  }

  if ((v2 ^ result) & 1) == 0 && ((((v2 & 0x100) == 0) ^ ((result & 0x100) >> 8)))
  {
    return result;
  }

  if ((result & 0x100) == 0)
  {
    goto LABEL_25;
  }

  if ((v2 & 0x100) == 0)
  {
    v6 = sub_124244();
    [v6 setHidden:1];

    v7 = *(sub_1242FC() + 104);

    [v7 setHidden:1];
LABEL_29:

    goto LABEL_30;
  }

LABEL_26:
  v8 = sub_124244();
  [v8 setHidden:0];

  v9 = *(sub_1242FC() + 104);

  [v9 setHidden:0];

  v10 = OBJC_IVAR____TtC12NowPlayingUI8SongCell____lazy_storage___badgeArtworkComponent;
  v11 = [*(*&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell____lazy_storage___badgeArtworkComponent] + 104) superview];
  v12 = [v1 contentView];

  if (!v11 || (v11, v11 != v12))
  {
    v13 = [v1 contentView];
    [v13 addSubview:*&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell____lazy_storage___badgeArtworkBackgroundView]];

    v7 = [v1 contentView];
    [v7 addSubview:*(*&v1[v10] + 104)];
    goto LABEL_29;
  }

LABEL_30:
  sub_124518();

  return [v1 setNeedsLayout];
}

void sub_1205F8(char a1)
{
  v2 = OBJC_IVAR____TtC12NowPlayingUI8SongCell_isAddButtonSelected;
  v3 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_isAddButtonSelected);
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_isAddButtonSelected) = a1;
  if (v3 != (a1 & 1))
  {
    v4 = v1;
    v5 = sub_1249D8();
    if (*(v1 + v2))
    {
      isa = 0;
    }

    else
    {
      sub_AC71C();
      v14._object = 0x8000000000168600;
      v14._countAndFlagsBits = 0xD000000000000012;
      isa = sub_144FDC(v14).super.isa;
    }

    [v5 setRegularImage:isa];

    v7 = *(v4 + OBJC_IVAR____TtC12NowPlayingUI8SongCell____lazy_storage___addButton);
    v8 = *(v4 + v2);
    sub_AC71C();
    v9 = v7;
    v10 = "UniversalAddCircle";
    if (v8)
    {
      v10 = "Search-Suggestion-Episodes";
      v11._countAndFlagsBits = 0xD000000000000012;
    }

    else
    {
      v11._countAndFlagsBits = 0xD000000000000010;
    }

    v11._object = (v10 | 0x8000000000000000);
    v12 = sub_144FDC(v11).super.isa;
    [v9 setTintedImage:v12];
  }
}

void sub_120890(char a1, SEL *a2, SEL *a3)
{
  v7 = type metadata accessor for SongCell();
  v12.receiver = v3;
  v12.super_class = v7;
  v8 = objc_msgSendSuper2(&v12, *a2);
  v11.receiver = v3;
  v11.super_class = v7;
  objc_msgSendSuper2(&v11, *a3, a1 & 1);
  if (v8 != [v3 *a2] && (*(v3 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_layoutStyle) & 0xE100) == 0x2100)
  {
    v9 = sub_124244();
    sub_14114C();
    v10 = sub_14108C();
    [v9 setBackgroundColor:v10];
  }
}

id sub_1209E4(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for SongCell();
  return objc_msgSendSuper2(&v5, *a3);
}

BOOL sub_120BA4()
{
  if (v0[OBJC_IVAR____TtC12NowPlayingUI8SongCell_forceDurationHidden])
  {
    return 0;
  }

  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if (v2 != &dword_0 + 2)
  {
    return 0;
  }

  v3 = *&v0[OBJC_IVAR____TtC12NowPlayingUI8SongCell_textComponents + 48];
  v5 = *(v3 + 128);
  v4 = *(v3 + 136);
  v6 = v5 & 0xFFFFFFFFFFFFLL;
  if (!((v4 & 0x2000000000000000) != 0 ? HIBYTE(v4) & 0xF : v6))
  {
    return 0;
  }

  if (v0[OBJC_IVAR____TtC12NowPlayingUI8SongCell_trackNumber + 8])
  {
    return 1;
  }

  v8 = *&v0[OBJC_IVAR____TtC12NowPlayingUI8SongCell_layoutStyle];
  if (v8 >> 13 < 3)
  {
    return 1;
  }

  if (v8 >> 13 != 3)
  {
    return 0;
  }

  return v8 == 24577 || v8 == 24832;
}

void sub_120C8C()
{
  v1 = v0;
  v2 = sub_144EDC();
  v3 = *(v2 - 8);
  v442 = v2;
  v443 = v3;
  __chkstk_darwin(v2);
  v441 = &v427 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SongCell();
  v491.receiver = v0;
  v491.super_class = v5;
  objc_msgSendSuper2(&v491, "layoutSubviews");
  v456 = [v0 contentView];
  [v456 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v455 = v10;
  v13 = v12;
  v14 = [v0 traitCollection];
  v15 = [v0 effectiveUserInterfaceLayoutDirection];
  sub_128488(v14);
  sub_144DCC();
  v447 = v16;
  [v0 music_inheritedLayoutInsets];
  v19 = UIEdgeInsetsInsetRect_0(v7, v9, v11, v13, v17, v18);
  v21 = v20;
  v490.origin.x = v19;
  v452 = v22;
  v490.origin.y = v22;
  v490.size.width = v20;
  v457 = v23;
  v490.size.height = v23;
  v24 = OBJC_IVAR____TtC12NowPlayingUI8SongCell_layoutStyle;
  v25 = *&v0[OBJC_IVAR____TtC12NowPlayingUI8SongCell_layoutStyle];
  v454 = v14;
  sub_126C10(v25, &v469);
  v437 = *(&v469 + 1);
  v433 = *&v469;
  [v0 separatorInset];
  v438 = v26;
  v445 = v27;
  v434 = v29;
  v435 = v28;
  v444 = *&v0[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkComponent];
  v30 = *(v444 + 104);
  [v30 frame];
  v458 = v15;
  v459 = v13;
  sub_144F0C();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = [v30 isHidden];
  v449 = v30;
  v460 = v7;
  v450 = v9;
  v448 = v19;
  v436 = v21;
  if (v39)
  {
    v453 = v19;
    goto LABEL_18;
  }

  v40 = 12.0;
  if (v0[OBJC_IVAR____TtC12NowPlayingUI8SongCell_trackNumber + 8] == 1)
  {
    v40 = *&v0[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkEdgeInsets + 24];
  }

  *&v451 = v32;
  v505.origin.x = v32;
  v505.origin.y = v34;
  v446 = v36;
  v505.size.width = v36;
  v505.size.height = v38;
  MinX = CGRectGetMinX(v505);
  v42 = v448;
  v506.origin.x = v448;
  v506.origin.y = v452;
  v43 = v436;
  v506.size.width = v436;
  v506.size.height = v457;
  v44 = CGRectGetMinX(v506);
  v45 = objc_opt_self();
  v46 = [v45 sharedApplication];
  v47 = [v46 preferredContentSizeCategory];

  v48 = _UIContentSizeCategoryCompareToContentSizeCategory();
  if (v48 != 1 || (v49 = [v454 horizontalSizeClass], v50 = v43, v453 = v42, v49 == &dword_0 + 2))
  {
    v51 = v40 + v433 + MinX - v44;
    v453 = v42 + v51;
    v490.origin.x = v42 + v51;
    v50 = v43 - v51;
    v490.size.width = v43 - v51;
  }

  if ((*&v0[v24] & 0xE100) == 0x2100)
  {
    v52 = v452;
    v53 = v453;
    v507.origin.x = v453;
    v507.origin.y = v452;
    v21 = v50;
    v507.size.width = v50;
    v54 = v457;
    v507.size.height = v457;
    CGRectGetMinY(v507);
    v508.origin.x = v53;
    v508.origin.y = v52;
    v508.size.width = v50;
    v508.size.height = v54;
    CGRectGetHeight(v508);
    v30 = v449;
    v9 = v450;
    v19 = v448;
    if (qword_1C00D0 != -1)
    {
      v426 = v448;
      swift_once();
      v19 = v426;
    }

    sub_141AAC();
    v34 = v55;
    v32 = *&v451;
  }

  else
  {
    v56 = [v45 sharedApplication];
    v57 = [v56 preferredContentSizeCategory];

    v58 = _UIContentSizeCategoryCompareToContentSizeCategory();
    v30 = v449;
    v9 = v450;
    v32 = *&v451;
    v19 = v448;
    v21 = v50;
    if (v58 == 1)
    {
      v59 = [v454 horizontalSizeClass];
      v36 = v446;
      if (v59 == &dword_0 + 1)
      {
        v509.origin.y = v452;
        v509.origin.x = v453;
        v509.size.width = v21;
        v509.size.height = v457;
        v34 = CGRectGetMinY(v509) + 24.0;
      }

      goto LABEL_16;
    }
  }

  v36 = v446;
LABEL_16:
  [v30 frame];
  if ((sub_144F1C() & 1) == 0)
  {
    sub_144EFC();
    sub_CDC60(v60, v61, v62, v63);
  }

LABEL_18:
  v64 = *&v1[v24];
  if ((v64 & 0xE100) == 0x2100)
  {
    v65 = v34;
    v66 = v38;
    *&v451 = v21;
    if (qword_1C00D0 != -1)
    {
      swift_once();
    }

    v67 = *(&xmmword_1CA2B8 + 1);
    v446 = *&xmmword_1CA2B8;
    v510.origin.x = v32;
    v510.origin.y = v65;
    v510.size.width = v36;
    v510.size.height = v66;
    MaxX = CGRectGetMaxX(v510);
    sub_141AAC();
    v439 = MaxX - v69;
    v511.origin.x = v32;
    v511.origin.y = v65;
    v511.size.width = v36;
    v511.size.height = v66;
    MaxY = CGRectGetMaxY(v511);
    sub_141AAC();
    v72 = MaxY - v71;
    sub_1242FC();
    v73 = v450;
    v74 = v446;
    sub_144EFC();
    sub_CDC60(v75, v76, v77, v78);

    v79 = v74;
    v80 = v73;
    v81 = UIEdgeInsetsInsetRect_0(v439, v72, v79, v67, -1.0, -1.0);
    v83 = v82;
    v85 = v84;
    v87 = v86;
    v88 = sub_124244();
    sub_144EFC();
    [v88 setFrame:?];

    v89 = OBJC_IVAR____TtC12NowPlayingUI8SongCell____lazy_storage___badgeArtworkBackgroundView;
    v90 = [*&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell____lazy_storage___badgeArtworkBackgroundView] layer];
    [v90 setCornerCurve:kCACornerCurveCircular];

    v91 = [*&v1[v89] layer];
    v512.origin.x = v81;
    v512.origin.y = v83;
    v512.size.width = v85;
    v512.size.height = v87;
    Width = CGRectGetWidth(v512);
    v513.origin.x = v81;
    v513.origin.y = v83;
    v513.size.width = v85;
    v513.size.height = v87;
    v9 = v80;
    Height = CGRectGetHeight(v513);
    if (Height >= Width)
    {
      Height = Width;
    }

    v94 = Height * 0.5;
    if (v94 < 0.0)
    {
      v94 = 0.0;
    }

    [v91 setCornerRadius:v94];

    v95 = [v1 contentView];
    [v95 bringSubviewToFront:*&v1[v89]];

    v96 = [v1 contentView];
    [v96 bringSubviewToFront:*(*&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell____lazy_storage___badgeArtworkComponent] + 104)];

    v64 = *&v1[v24];
    v19 = v448;
    v21 = *&v451;
  }

  v97 = v64 == 24576 && [v454 horizontalSizeClass] == &dword_0 + 2 && sub_120BA4();
  v98 = *&v1[v24];
  v440 = v24;
  if (v98 == 24833)
  {
    v99 = *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_chevronImageView];
    if (v99)
    {
      v100 = v99;
      [v100 frame];
      v102 = v101;
      v104 = v103;
      [v100 sizeThatFits:{0.0, 0.0}];
      v106 = v105;
      v108 = v107;
      *&v451 = v21;
      v514.origin.x = v453;
      v514.origin.y = v452;
      v514.size.width = v21;
      v514.size.height = v457;
      CGRectGetMaxX(v514);
      v515.origin.x = v102;
      v515.origin.y = v104;
      v515.size.width = v106;
      v515.size.height = v108;
      CGRectGetWidth(v515);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6D58);
      v109 = v443;
      v110 = swift_allocObject();
      *(v110 + 16) = xmmword_14A710;
      sub_144ECC();
      *&v469 = v110;
      sub_C872C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6D68);
      sub_C8784();
      v111 = v441;
      v112 = v442;
      v30 = v449;
      sub_14515C();
      v9 = v450;
      v113 = *&v451;
      v114 = v448;
      sub_144EEC();
      v116 = v115;
      v118 = v117;
      v120 = v119;
      v122 = v121;
      (*(v109 + 8))(v111, v112);
      sub_144EFC();
      [v100 setFrame:?];
      v516.origin.x = v116;
      v516.origin.y = v118;
      v516.size.width = v120;
      v516.size.height = v122;
      v19 = v114;
      v123 = CGRectGetWidth(v516);

      v21 = v113 - (v123 + 12.0);
      v490.size.width = v21;
    }
  }

  if (v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_wantsAddButton] == 1)
  {
    v124 = sub_1249D8();
    [v124 frame];
    v126 = v125;
    v128 = v127;

    v129 = OBJC_IVAR____TtC12NowPlayingUI8SongCell____lazy_storage___addButton;
    [*&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell____lazy_storage___addButton] sizeThatFits:{0.0, 0.0}];
    v131 = v130;
    v133 = v132;
    *&v451 = v21;
    v517.origin.x = v453;
    v517.origin.y = v452;
    v517.size.width = v21;
    v517.size.height = v457;
    CGRectGetMaxX(v517);
    v518.origin.x = v126;
    v518.origin.y = v128;
    v518.size.width = v131;
    v518.size.height = v133;
    CGRectGetWidth(v518);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6D58);
    v134 = v443;
    v135 = swift_allocObject();
    *(v135 + 16) = xmmword_14A710;
    sub_144ECC();
    *&v469 = v135;
    sub_C872C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6D68);
    sub_C8784();
    v136 = v441;
    v137 = v442;
    sub_14515C();
    v9 = v450;
    v138 = *&v451;
    v139 = v448;
    sub_144EEC();
    v141 = v140;
    v143 = v142;
    v145 = v144;
    v147 = v146;
    (*(v134 + 8))(v136, v137);
    v148 = *&v1[v129];
    sub_144EFC();
    [v148 setFrame:?];

    v519.origin.x = v141;
    v519.origin.y = v143;
    v519.size.width = v145;
    v519.size.height = v147;
    v21 = v138 - (CGRectGetWidth(v519) + 12.0);
    v490.size.width = v21;
  }

  else
  {
    v139 = v19;
  }

  if (!sub_120BA4())
  {
    v153 = *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_durationTextDrawingView];
    v154 = v139;
    if (v153)
    {
      [v153 removeFromSuperview];
    }

    goto LABEL_43;
  }

  if (!*&v1[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_textDrawingCache])
  {
    v154 = v139;
    v30 = v449;
LABEL_43:
    v151 = v440;
    goto LABEL_44;
  }

  v149 = OBJC_IVAR____TtC12NowPlayingUI8SongCell_durationTextDrawingView;
  v150 = *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_durationTextDrawingView];
  v151 = v440;
  if (v150)
  {

    v152 = v150;
  }

  else
  {
    _s4ViewCMa();
    v358 = objc_allocWithZone(swift_getObjCClassFromMetadata());

    v359 = [v358 init];
    v360 = v1[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_isDisabled];
    v361 = v359;
    v362 = 1.0;
    if (v360 == 1)
    {
      UIInterfaceGetContentDisabledAlpha();
    }

    [v361 setAlpha:v362];

    v363 = *&v1[v149];
    *&v1[v149] = v361;
    v152 = v361;

    v150 = 0;
  }

  v364 = v150;
  v365 = v152;
  [v456 addSubview:v365];
  v366 = *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_textComponents + 48];
  v367 = *(v366 + 64);
  v368 = *(v366 + 80);
  v369 = *(v366 + 112);
  v504[4] = *(v366 + 96);
  v504[5] = v369;
  v504[2] = v367;
  v504[3] = v368;
  v370 = *(v366 + 48);
  v504[0] = *(v366 + 32);
  v504[1] = v370;
  sub_9724(v504, v502);
  sub_7B60(0x30303A30303A34, 0xE700000000000000, v504, v492, 0.0, 0.0);
  v371 = v492[6];
  v372 = *(v366 + 64);
  v373 = *(v366 + 80);
  v374 = *(v366 + 112);
  v503[4] = *(v366 + 96);
  v503[5] = v374;
  v503[2] = v372;
  v503[3] = v373;
  v375 = *(v366 + 48);
  v503[0] = *(v366 + 32);
  v503[1] = v375;
  v376 = *(v366 + 128);
  v377 = *(v366 + 136);
  sub_9724(v503, v502);

  v379 = v452;
  v378 = v453;
  v543.origin.x = v453;
  v543.origin.y = v452;
  v543.size.width = v21;
  v380 = v457;
  v543.size.height = v457;
  v381 = CGRectGetHeight(v543);
  sub_7B60(v376, v377, v503, v493, *&v371, v381);
  v465 = v495;
  v466 = v496;
  v467 = v497;
  v468 = v498;
  v461 = v493[0];
  v462 = v493[1];
  v463 = v493[2];
  v464 = v494;

  v473 = v465;
  v474 = v466;
  v475 = v467;
  v476 = v468;
  v469 = v461;
  v470 = v462;
  v471 = v463;
  v472 = v464;
  UIScreen.Dimensions.size.getter(&v469);
  v502[4] = v473;
  v502[5] = v474;
  v502[6] = v475;
  v502[7] = v476;
  v502[0] = v469;
  v502[1] = v470;
  v502[2] = v471;
  v502[3] = v472;
  sub_9AD8(v493, &v482);
  sub_11D894(v502);
  [v365 setBounds:{0.0, 0.0, *&v371, *(&v494 + 1)}];
  [v365 bounds];
  v544.origin.x = v378;
  v544.origin.y = v379;
  v544.size.width = v21;
  v544.size.height = v380;
  CGRectGetMaxX(v544);
  v446 = *&v371;
  v382 = v441;
  sub_144ECC();
  *&v451 = v21;
  sub_144EEC();

  (*(v443 + 8))(v382, v442);
  sub_144EFC();
  sub_144F2C();
  [v365 setCenter:?];

  sub_9A84(v493);
  sub_9780(v503);
  sub_9A84(v492);

  sub_9780(v504);

  if (v97)
  {
    v30 = v449;
    v154 = v448;
    v21 = *&v451;
  }

  else
  {
    v21 = *&v451 - (v446 + 12.0);
    v490.size.width = v21;
    v30 = v449;
    v154 = v448;
  }

LABEL_44:
  if (*&v1[v151] == 24832 && v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_requiresLibraryAddKeepLocalButtonSpacing])
  {
    [v454 horizontalSizeClass];
  }

  if (v97)
  {
    v21 = v21 + -126.0;
    v490.size.width = v21;
  }

  v439 = *&OBJC_IVAR____TtC12NowPlayingUI8SongCell_isExplicit;
  v155 = 0.0;
  if (v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_isExplicit] == 1)
  {
    v156 = OBJC_IVAR____TtC12NowPlayingUI8SongCell_explicitBadgeTextStackView;
    v157 = *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_explicitBadgeTextStackView];
    if (v157)
    {
      v158 = *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_explicitBadgeTextStackView];
    }

    else
    {
      _s9StackViewCMa();
      v159 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v160 = *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_textComponents + 16];
      v158 = v159;
      sub_51528(v160);
      v161 = *&v1[v156];
      *&v1[v156] = v158;
    }

    v162 = *&v158[OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_textDrawingCache];
    *&v158[OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_textDrawingCache] = *&v1[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_textDrawingCache];
    swift_retain_n();
    v163 = v157;
    sub_51280(v162);

    v164 = [v158 isDescendantOfView:v456];

    if ((v164 & 1) == 0)
    {
      [v456 addSubview:v158];
    }

    [v158 sizeThatFits:{v455, v459}];
    v155 = v165;
    v431 = v166;

    v21 = v21 - v155;
    v490.size.width = v21;
  }

  else
  {
    v431 = 0.0;
  }

  v446 = COERCE_DOUBLE(objc_opt_self());
  v167 = [*&v446 sharedApplication];
  v168 = [v167 preferredContentSizeCategory];

  v451 = UIContentSizeCategoryAccessibilityLarge;
  v169 = _UIContentSizeCategoryCompareToContentSizeCategory();

  v170 = v169 == 1 && ([v30 isHidden] & 1) == 0 && objc_msgSend(v454, "horizontalSizeClass") == &dword_0 + 1;
  v171 = v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_trackNumber + 8];
  v432 = v155;
  if (v171)
  {

    v172 = OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_textStackView;
    [*&v1[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_textStackView] sizeThatFits:{v21, v457}];
    v174 = v173;
    if (v170)
    {
      v175 = v452 + v437 * 0.5 + 4.0;
    }

    else
    {
      v175 = v452;
    }

    v176 = *&v1[v172];
    v177 = v455;
    sub_144EFC();
    [v176 setFrame:?];

    v178 = [*&v446 sharedApplication];
    v179 = [v178 preferredContentSizeCategory];

    v180 = _UIContentSizeCategoryCompareToContentSizeCategory();
    if (v180 == 1)
    {
      v181 = [v454 horizontalSizeClass];
      v182 = v444;
      if (v181 == &dword_0 + 1)
      {
        v520.origin.x = v453;
        v520.origin.y = v175;
        v520.size.width = v174;
        v183 = v457;
        v520.size.height = v457;
        v184 = 0;
        v490.size.height = v183 - CGRectGetMaxY(v520);
      }

      else
      {
        v184 = 0;
      }
    }

    else
    {
      v184 = 0;
      v182 = v444;
    }

    goto LABEL_110;
  }

  v429 = v170;
  v185 = OBJC_IVAR____TtC12NowPlayingUI8SongCell_trackNumberTextStackView;
  v186 = *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_trackNumberTextStackView];
  if (v186)
  {
    v187 = *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_trackNumberTextStackView];
  }

  else
  {
    _s9StackViewCMa();
    v188 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v189 = *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_textComponents];
    v187 = v188;
    sub_51528(v189);
    v190 = *&v1[v185];
    *&v1[v185] = v187;

    v186 = 0;
  }

  v191 = *&v187[OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_textDrawingCache];
  *&v187[OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_textDrawingCache] = *&v1[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_textDrawingCache];
  swift_retain_n();
  v192 = v186;
  v193 = v187;
  v194 = v192;
  sub_51280(v191);

  [v193 setHidden:0];

  v195 = [v193 isDescendantOfView:v456];
  if ((v195 & 1) == 0)
  {
    [v456 addSubview:v193];
  }

  v196 = *&v1[v151];
  if (v196 == 24832 || v196 == 24577)
  {
    v198 = 24.0;
  }

  else
  {
    v198 = 36.0;
  }

  sub_123964(v1, &v490, v198, v460, v9, v455, v459);
  v428 = v199;
  v201 = v200;
  [v193 sizeThatFits:{v21, v457}];
  v203 = v202;
  v204 = *&v1[v151];
  v205 = v204 >> 13;
  if (!(v204 >> 13) || v205 == 2)
  {
    if ([v454 horizontalSizeClass] == &dword_0 + 2)
    {
      v213 = v453;
      v524.origin.x = v453;
      v427 = v203;
      v214 = v452;
      v524.origin.y = v452;
      v524.size.width = v21;
      v215 = v457;
      v524.size.height = v457;
      x = CGRectGetMinX(v524);
      if (v201 + 12.0 > 24.0)
      {
        v216 = v201 + 12.0;
      }

      else
      {
        v216 = 24.0;
      }

      v184 = 1;
      swift_beginAccess();
      v21 = v21 - v216;
      v490.size.width = v21;
      v453 = v213 + v216;
      v490.origin.x = v213 + v216;
      [v456 frame];
      [v1 bounds];
      sub_144F0C();
      v217 = CGRectGetMinX(v525);
      v526.origin.x = v448;
      v526.origin.y = v214;
      v203 = v427;
      v526.size.width = v436;
      v526.size.height = v215;
      v445 = v217 + CGRectGetMinX(v526);
      v433 = 0.0;
    }

    else
    {
      v530.size.height = v459;
      v530.origin.x = v460;
      v530.origin.y = v450;
      v530.size.width = v455;
      v220 = CGRectGetMinX(v530);
      v531.origin.x = 0.0;
      v433 = 0.0;
      v531.origin.y = 0.0;
      v531.size.width = v201;
      v531.size.height = v203;
      CGRectGetWidth(v531);
      sub_141ABC();
      v532.origin.x = v220 - v221 + 30.0;
      v222 = v428 + 8.0 + 8.0;
      v532.origin.y = 0.0;
      x = v532.origin.x;
      v532.size.width = v201;
      v532.size.height = v203;
      v223 = v222 - CGRectGetMinX(v532);
      swift_beginAccess();
      v184 = 0;
      v21 = v21 - v223;
      v490.size.width = v21;
      v453 = v222;
      v490.origin.x = v222;
    }
  }

  else
  {
    if (v205 == 3 && (v204 == 24577 || v204 == 24832))
    {
      [v456 frame];
      v206 = CGRectGetMinX(v521);
      v522.origin.x = v154;
      v207 = v452;
      v522.origin.y = v452;
      v522.size.width = v436;
      v208 = v457;
      v522.size.height = v457;
      v445 = v206 + CGRectGetMinX(v522);
      v523.origin.x = v453;
      v523.origin.y = v207;
      v523.size.width = v21;
      v523.size.height = v208;
      x = CGRectGetMinX(v523);
      v209 = [*&v446 sharedApplication];
      v210 = [v209 preferredContentSizeCategory];

      v211 = _UIContentSizeCategoryCompareToContentSizeCategory();
      if (v211 == 1 && [v454 horizontalSizeClass] == &dword_0 + 1)
      {
        x = v433 + 16.0 + x;
        [v449 frame];
        v433 = v212;
        v184 = 1;
      }

      else
      {
        if (v201 + 12.0 > v198)
        {
          v383 = v201 + 12.0;
        }

        else
        {
          v383 = v198;
        }

        v184 = 1;
        swift_beginAccess();
        v21 = v21 - v383;
        v490.size.width = v21;
        v545.origin.y = v452;
        v545.origin.x = v453;
        v545.size.width = v21;
        v545.size.height = v457;
        v453 = v383 + CGRectGetMinX(v545);
        v490.origin.x = v453;
        v433 = 0.0;
      }

      v203 = v427;
      v224 = v428;
      goto LABEL_96;
    }

    v527.origin.y = v452;
    v527.origin.x = v453;
    v527.size.width = v21;
    v527.size.height = v457;
    v528.origin.x = CGRectGetMinX(v527);
    v218 = v528.origin.x;
    v433 = 0.0;
    v528.origin.y = 0.0;
    v528.size.width = v201;
    v528.size.height = v203;
    v219 = CGRectGetWidth(v528);
    swift_beginAccess();
    v21 = v21 - v219;
    v490.size.width = v21;
    v529.origin.y = 0.0;
    x = v218;
    v529.origin.x = v218;
    v529.size.width = v201;
    v529.size.height = v203;
    v184 = 0;
    v453 = CGRectGetMaxX(v529);
    v490.origin.x = v453;
  }

  v224 = v201;
LABEL_96:
  [v193 setBounds:{0.0, 0.0, v224, v203}];
  v225 = *&v1[v151];
  if (v225 >> 13 == 2 || !(v225 >> 13)) && (v225)
  {
    v226 = *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_musicVideoGlyphImageView];
    if (v226)
    {
      v427 = v203;
      v428 = v224;
      v227 = v226;
      [v227 frame];
      [v227 sizeThatFits:{0.0, 0.0}];
      v228 = v453;
      v533.origin.x = v453;
      v533.origin.y = v452;
      v533.size.width = v21;
      v533.size.height = v457;
      CGRectGetMinX(v533);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6D58);
      v229 = v443;
      v230 = swift_allocObject();
      *(v230 + 16) = xmmword_14A710;
      sub_144ECC();
      *&v469 = v230;
      sub_C872C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6D68);
      sub_C8784();
      v231 = v441;
      v232 = v442;
      sub_14515C();
      sub_144EEC();
      v234 = v233;
      v236 = v235;
      v238 = v237;
      v240 = v239;
      (*(v229 + 8))(v231, v232);
      sub_144EFC();
      [v227 setFrame:?];
      v534.origin.x = v234;
      v534.origin.y = v236;
      v534.size.width = v238;
      v534.size.height = v240;
      v241 = CGRectGetWidth(v534) + 12.0;
      swift_beginAccess();
      v21 = v21 - v241;
      v490.size.width = v21;
      v453 = v228 + v241;
      v490.origin.x = v228 + v241;
      if (v1[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment] == 1)
      {
        v535.origin.x = v234;
        v535.origin.y = v236;
        v535.size.width = v238;
        v535.size.height = v240;
        v445 = CGRectGetMinX(v535);
        v184 = 1;
      }

      v151 = v440;
    }
  }

  v242 = OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_textStackView;
  [*&v1[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_textStackView] sizeThatFits:{v21, v457}];
  v243 = [*&v446 sharedApplication];
  v244 = [v243 preferredContentSizeCategory];

  v245 = _UIContentSizeCategoryCompareToContentSizeCategory();
  if (v245 == 1)
  {
    v246 = v449;
    v247 = [v449 isHidden];

    v177 = v455;
    if ((v247 & 1) == 0)
    {
      [v454 horizontalSizeClass];
    }
  }

  else
  {

    v177 = v455;
  }

  v248 = *&v1[v242];
  v249 = v450;
  sub_144EFC();
  [v248 setFrame:?];

  v250 = [*&v446 sharedApplication];
  v251 = [v250 preferredContentSizeCategory];

  v252 = _UIContentSizeCategoryCompareToContentSizeCategory();
  if (v252 != 1 || !v429)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6D58);
    v253 = v443;
    v254 = swift_allocObject();
    *(v254 + 16) = xmmword_14A710;
    sub_144ECC();
    *&v469 = v254;
    sub_C872C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6D68);
    sub_C8784();
    v255 = v441;
    v256 = v442;
    sub_14515C();
    sub_144EEC();
    (*(v253 + 8))(v255, v256);
  }

  v182 = v444;
  sub_144EFC();
  sub_144F2C();
  [v193 setCenter:?];

  v9 = v249;
LABEL_110:
  if (v1[*&v439] == 1)
  {
    v257 = *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_explicitBadgeTextStackView];
    if (v257)
    {
      v258 = OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_textStackView;
      v259 = *&v1[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_textStackView];
      v260 = v257;
      [v259 frame];
      sub_144F0C();
      y = v536.origin.y;
      v262 = v536.size.width;
      v263 = v536.size.height;
      v447 = v536.origin.x;
      v453 = CGRectGetMaxX(v536);
      v264 = *&v1[v258];
      [v264 bounds];
      v266 = v265;
      v268 = v267;
      v270 = v269;
      v272 = v271;
      v273 = [v264 traitCollection];
      sub_144DCC();
      v275 = v274;

      sub_529D4(v499, v266, v268, v270, v272, v275);
      v276 = v499[0];
      v277 = v1;
      v278 = sub_1267E0(v276, v277);
      v280 = v279;

      if (v280)
      {
        sub_55B6C(v499);
LABEL_117:
        v294 = v260;
        [v294 setBounds:{0.0, 0.0, v432, v431}];
        [*&v1[v258] frame];
        CGRectGetMinY(v539);
        v295 = *&v1[v258];
        [v295 bounds];
        v297 = v296;
        v299 = v298;
        v301 = v300;
        v303 = v302;
        v304 = [v295 traitCollection];
        sub_144DCC();
        v306 = v305;

        sub_529D4(v500, v297, v299, v301, v303, v306);
        sub_55B6C(v500);
        [v294 bounds];
        v308 = v307;
        v310 = v309;
        v312 = v311;
        v314 = v313;
        v315 = [v294 traitCollection];
        sub_144DCC();
        v317 = v316;

        sub_529D4(v501, v308, v310, v312, v314, v317);
        sub_55B6C(v501);
        v318 = v450;
        v177 = v455;
        sub_144EFC();
        sub_144F2C();
        [v294 setCenter:?];

        v9 = v318;
        v182 = v444;
        goto LABEL_118;
      }

      if ((v278 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v278 < *(v276 + 16))
      {
        v281 = (v276 + 176 * v278);
        v282 = v281[2];
        v283 = v281[4];
        v470 = v281[3];
        v471 = v283;
        v469 = v282;
        v284 = v281[5];
        v285 = v281[6];
        v286 = v281[8];
        v474 = v281[7];
        v475 = v286;
        v472 = v284;
        v473 = v285;
        v287 = v281[9];
        v288 = v281[10];
        v289 = v281[12];
        v478 = v281[11];
        v479 = v289;
        v476 = v287;
        v477 = v288;
        sub_55960(&v469, &v461);
        sub_55B6C(v499);
        v290 = v478;
        v291 = v479;
        v537.origin.x = v447;
        v537.origin.y = y;
        v537.size.width = v262;
        v537.size.height = v263;
        v292 = CGRectGetMinX(v537);
        v538.origin = v290;
        v538.size = v291;
        v293 = CGRectGetMaxX(v538);
        sub_55998(&v469);
        v453 = v292 + v293;
        goto LABEL_117;
      }

      __break(1u);
      return;
    }
  }

LABEL_118:
  if (v184)
  {
LABEL_121:
    v320 = 1;
    goto LABEL_123;
  }

  if (v1[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment] == 1)
  {
    [v456 frame];
    [v1 bounds];
    sub_144F0C();
    v319 = CGRectGetMinX(v540);
    [*&v1[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_textStackView] frame];
    sub_144F0C();
    v445 = v319 + CGRectGetMinX(v541);
    goto LABEL_121;
  }

  v320 = 0;
LABEL_123:
  if (v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_wantsNowPlayingIndicator] != 1)
  {
    v324 = [objc_opt_self() clearColor];
    v325 = *(v182 + 224);
    *(v182 + 224) = v324;
    v326 = v324;
    sub_CE434();

    v327 = OBJC_IVAR____TtC12NowPlayingUI8SongCell_nowPlayingIndicatorView;
    v328 = *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_nowPlayingIndicatorView];
    if (v328)
    {
      [v328 removeFromSuperview];
      v329 = *&v1[v327];
    }

    else
    {
      v329 = 0;
    }

    *&v1[v327] = 0;

    if (v320)
    {
      goto LABEL_148;
    }

    goto LABEL_147;
  }

  v321 = OBJC_IVAR____TtC12NowPlayingUI8SongCell_nowPlayingIndicatorView;
  v322 = *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_nowPlayingIndicatorView];
  if (v322)
  {
    v323 = *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_nowPlayingIndicatorView];
  }

  else
  {
    v323 = [objc_allocWithZone(MTNowPlayingIndicatorView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v323 setNumberOfLevels:4];
    v330 = *&v1[v321];
    *&v1[v321] = v323;

    v322 = 0;
  }

  v331 = *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_playbackState];
  v332 = v322;
  [v323 setPlaybackState:v331];

  if ([*(v182 + 104) isHidden])
  {
    v333 = v323;
    [v456 addSubview:v333];
  }

  else
  {
    v334 = *(v182 + 104);
    v335 = v323;
    [v456 insertSubview:v335 aboveSubview:v334];
  }

  [v323 sizeToFit];

  v336 = *(v182 + 104);
  if (([v336 isHidden] & 1) == 0)
  {
    sub_14114C();
    v342 = sub_14111C();
    v343 = *(v182 + 224);
    *(v182 + 224) = v342;
    v344 = v342;
    sub_CE434();

    v345 = [objc_opt_self() whiteColor];
    [v323 setLevelGuttersColor:v345];

    [v336 center];
    v347 = v346;
    v349 = v348;

    [v323 setCenter:{v347, v349}];
LABEL_143:

    if (v320)
    {
      goto LABEL_148;
    }

LABEL_147:
    [v456 frame];
    [v1 bounds];
    sub_144F0C();
    v445 = CGRectGetMinX(v542) + *&v1[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_proposedHorizontalLockupSeparatorInset + 8];
    goto LABEL_148;
  }

  v337 = *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_trackNumberTextDrawingView];
  if (v337)
  {
    v338 = v337;
    v339 = [v338 superview];
    if (v339)
    {

      if (([v338 isHidden] & 1) == 0)
      {
        sub_14114C();
        v384 = sub_14113C();
        [v323 setLevelGuttersColor:v384];

        [v338 center];
        v386 = v385;
        [v323 center];
        [v323 setCenter:v386];
        [v338 frame];
        CGRectGetMinY(v546);
        v387 = *&v338[OBJC_IVAR____TtCVV12NowPlayingUI14DeprecatedText7Drawing4View__textDrawingContext + 48];
        v389 = *&v338[OBJC_IVAR____TtCVV12NowPlayingUI14DeprecatedText7Drawing4View__textDrawingContext];
        v388 = *&v338[OBJC_IVAR____TtCVV12NowPlayingUI14DeprecatedText7Drawing4View__textDrawingContext + 16];
        v484 = *&v338[OBJC_IVAR____TtCVV12NowPlayingUI14DeprecatedText7Drawing4View__textDrawingContext + 32];
        v485 = v387;
        v482 = v389;
        v483 = v388;
        v390 = *&v338[OBJC_IVAR____TtCVV12NowPlayingUI14DeprecatedText7Drawing4View__textDrawingContext + 96];
        v392 = *&v338[OBJC_IVAR____TtCVV12NowPlayingUI14DeprecatedText7Drawing4View__textDrawingContext + 64];
        v391 = *&v338[OBJC_IVAR____TtCVV12NowPlayingUI14DeprecatedText7Drawing4View__textDrawingContext + 80];
        v489 = *&v338[OBJC_IVAR____TtCVV12NowPlayingUI14DeprecatedText7Drawing4View__textDrawingContext + 112];
        v488 = v390;
        v486 = v392;
        v487 = v391;
        memmove(&v461, &v338[OBJC_IVAR____TtCVV12NowPlayingUI14DeprecatedText7Drawing4View__textDrawingContext], 0x80uLL);
        if (sub_55948(&v461) != 1)
        {
          v473 = v465;
          v474 = v466;
          v475 = v467;
          v476 = v468;
          v469 = v461;
          v470 = v462;
          v471 = v463;
          v472 = v464;
          v481[2] = v484;
          v481[3] = v485;
          v481[0] = v482;
          v481[1] = v483;
          v481[6] = v488;
          v481[7] = v489;
          v481[4] = v486;
          v481[5] = v487;
          sub_9AD8(v481, &v480);
          sub_11E25C(&v469);
          CGRectGetMinY(v547);
          sub_15340(&v482, &qword_1C3158);
        }

        [v323 bounds];
        CGRectGetHeight(v548);
        [v323 frame];
        goto LABEL_191;
      }
    }
  }

  v340 = *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_trackNumberTextStackView];
  if (!v340)
  {
LABEL_141:
    [v323 removeFromSuperview];
    goto LABEL_143;
  }

  v338 = v340;
  v341 = [v338 superview];
  if (!v341 || (v341, ([v338 isHidden] & 1) != 0))
  {

    goto LABEL_141;
  }

  sub_14114C();
  v412 = sub_14113C();
  [v323 setLevelGuttersColor:v412];

  [v338 center];
  v414 = v413;
  [v323 center];
  [v323 setCenter:v414];
  [v338 frame];
  CGRectGetMinY(v552);
  [v338 bounds];
  v416 = v415;
  v418 = v417;
  v420 = v419;
  v422 = v421;
  v423 = [v338 traitCollection];
  sub_144DCC();
  v425 = v424;

  v9 = v450;
  sub_529D4(&v469, v416, v418, v420, v422, v425);
  sub_55B6C(&v469);
  [v323 bounds];
  CGRectGetHeight(v553);
  [v323 frame];
LABEL_191:
  [v323 setFrame:?];
  [v338 setHidden:1];

  if ((v320 & 1) == 0)
  {
    goto LABEL_147;
  }

LABEL_148:
  v350 = v449;
  if ((*&v1[v151] & 0xE000) == 0 && (v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_popularity + 8] & 1) == 0)
  {
    v351 = *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_popularity];
    v352 = [objc_opt_self() standardUserDefaults];
    sub_C5C9C();
    v354 = v353;

    if (v351 >= v354)
    {
      v355 = OBJC_IVAR____TtC12NowPlayingUI8SongCell_popularityBadgeTextStackView;
      v356 = *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_popularityBadgeTextStackView];
      if (v356)
      {
        v357 = *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_popularityBadgeTextStackView];
      }

      else
      {
        _s9StackViewCMa();
        v393 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v394 = *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_textComponents + 24];
        v357 = v393;
        sub_51528(v394);
        v395 = *&v1[v355];
        *&v1[v355] = v357;
      }

      v396 = *&v357[OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_textDrawingCache];
      *&v357[OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_textDrawingCache] = *&v1[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_textDrawingCache];
      swift_retain_n();
      v397 = v356;
      sub_51280(v396);

      v398 = [v357 isDescendantOfView:v456];

      if ((v398 & 1) == 0)
      {
        [v456 addSubview:v357];
      }

      v399 = 4.0;
      if ([v454 horizontalSizeClass] == &dword_0 + 2)
      {
        v400 = [*&v446 sharedApplication];
        v401 = [v400 preferredContentSizeCategory];

        v402 = _UIContentSizeCategoryCompareToContentSizeCategory();
        v399 = 0.0;
        if (v402 == 1)
        {
          v549.origin.x = v448;
          v549.origin.y = v452;
          v549.size.width = v436;
          v549.size.height = v457;
          v399 = CGRectGetMinX(v549) + 8.0;
        }
      }

      v403 = [*&v446 sharedApplication];
      v404 = [v403 preferredContentSizeCategory];

      v405 = _UIContentSizeCategoryCompareToContentSizeCategory();
      v406 = 0.5;
      if (v405 == 1)
      {
        v406 = 0.25;
      }

      v407 = v459;
      v408 = v459 * v406;
      if (v458 == &dword_0 + 1)
      {
        v409 = v460;
        v550.origin.x = v460;
        v550.origin.y = v9;
        v550.size.width = v177;
        v550.size.height = v459;
        v410 = CGRectGetMaxX(v550);
        v551.origin.x = v409;
        v551.origin.y = v9;
        v551.size.width = v177;
        v551.size.height = v407;
        v399 = v410 - (v399 - CGRectGetMinX(v551));
      }

      [v357 setCenter:{v399, v408}];
    }
  }

  if ((v1[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_allowsCustomBottomSeparator] & 1) == 0)
  {
    [v1 separatorInset];
    if ((sub_141AFC() & 1) == 0 || (sub_141AFC() & 1) == 0 || (sub_141AFC() & 1) == 0 || (sub_141AFC() & 1) == 0)
    {
      [v1 setSeparatorInset:{v438, v445, v435, v434}];
    }
  }

  if ((*&v1[v151] & 0x80000000) == 0 || *&v1[v151] == 0x8000)
  {
    v411 = v350;
    v350 = v456;
  }

  else
  {
    [v1 separatorInset];
    [v1 setSeparatorInset:?];
    v411 = v454;
    v454 = v456;
  }
}

uint64_t sub_123964(uint64_t result, CGRect *a2, double a3, CGFloat a4, CGFloat a5, double a6, double a7)
{
  v9 = *(result + OBJC_IVAR____TtC12NowPlayingUI8SongCell_textComponents);
  v11 = v9[4];
  v10 = v9[5];
  v12 = v9[7];
  v34[4] = v9[6];
  v34[5] = v12;
  v34[2] = v11;
  v34[3] = v10;
  v13 = v9[3];
  v34[0] = v9[2];
  v34[1] = v13;
  if ((*(result + OBJC_IVAR____TtC12NowPlayingUI8SongCell_maximumTrackNumberForSizing + 8) & 1) == 0 && *(result + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_textDrawingCache))
  {
    v32[0] = *(result + OBJC_IVAR____TtC12NowPlayingUI8SongCell_maximumTrackNumberForSizing);
    v17 = result;
    sub_9724(v34, v33);

    sub_14538C();
    v18 = sub_14493C();

    v35._countAndFlagsBits = 57;
    v35._object = 0xE100000000000000;
    sub_14498C(v35, v18);
    v19 = sub_14489C();

    v20 = [v19 intValue];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C9410);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_14A710;
    *(v21 + 56) = &type metadata for Int32;
    *(v21 + 64) = &protocol witness table for Int32;
    *(v21 + 32) = v20;
    v22 = sub_1448AC();
    v24 = v23;

    sub_7B60(v22, v24, v34, v32, a6, a7);

    sub_9A84(v32);
    if (*(v17 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_trackNumber + 8))
    {

      return sub_9780(v34);
    }

    else
    {
      v25 = *(v17 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_trackNumber);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_14A710;
      *(v26 + 56) = &type metadata for Int;
      *(v26 + 64) = &protocol witness table for Int;
      *(v26 + 32) = v25;
      v27 = sub_1448AC();
      v29 = v28;

      v36.origin.x = a4;
      v36.origin.y = a5;
      v36.size.width = a6;
      v36.size.height = a7;
      Width = CGRectGetWidth(v36);
      swift_beginAccess();
      Height = CGRectGetHeight(*a2);
      sub_7B60(v27, v29, v34, v33, Width, Height);
      sub_9780(v34);

      return sub_9A84(v33);
    }
  }

  return result;
}

void sub_123D20()
{
  v0 = objc_opt_self();
  v1 = UIContentSizeCategoryAccessibilityLarge;
  v2 = [v0 sharedApplication];
  v3 = [v2 preferredContentSizeCategory];

  v4 = _UIContentSizeCategoryCompareToContentSizeCategory();
  if (v4 == 1)
  {
    v5 = UIContentSizeCategoryAccessibilityMedium;
    v6 = UIFontTextStyleBody;
    v7 = sub_13EA2C(v5, v6, 48.0);
  }

  else
  {
    v7 = 48.0;
  }

  v8 = v1;
  v9 = [v0 sharedApplication];
  v10 = [v9 preferredContentSizeCategory];

  v11 = _UIContentSizeCategoryCompareToContentSizeCategory();
  if (v11 == 1)
  {
    v12 = UIContentSizeCategoryAccessibilityMedium;
    v13 = UIFontTextStyleBody;
    v14 = sub_13EA2C(v12, v13, 48.0);
  }

  else
  {
    v14 = 48.0;
  }

  qword_1D1978 = *&v7;
  qword_1D1980 = *&v14;
}

void sub_123ED4()
{
  v0 = objc_opt_self();
  v1 = UIContentSizeCategoryAccessibilityLarge;
  v2 = [v0 sharedApplication];
  v3 = [v2 preferredContentSizeCategory];

  v4 = _UIContentSizeCategoryCompareToContentSizeCategory();
  if (v4 == 1)
  {
    v5 = UIContentSizeCategoryAccessibilityMedium;
    v6 = UIFontTextStyleBody;
    v7 = sub_13EA2C(v5, v6, 85.0);
  }

  else
  {
    v7 = 85.0;
  }

  v8 = v1;
  v9 = [v0 sharedApplication];
  v10 = [v9 preferredContentSizeCategory];

  v11 = _UIContentSizeCategoryCompareToContentSizeCategory();
  if (v11 == 1)
  {
    v12 = UIContentSizeCategoryAccessibilityMedium;
    v13 = UIFontTextStyleBody;
    v14 = sub_13EA2C(v12, v13, 48.0);
  }

  else
  {
    v14 = 48.0;
  }

  qword_1CA2A8 = *&v7;
  unk_1CA2B0 = *&v14;
}

void sub_124090()
{
  v0 = objc_opt_self();
  v1 = UIContentSizeCategoryAccessibilityLarge;
  v2 = [v0 sharedApplication];
  v3 = [v2 preferredContentSizeCategory];

  v4 = _UIContentSizeCategoryCompareToContentSizeCategory();
  if (v4 == 1)
  {
    v5 = UIContentSizeCategoryAccessibilityMedium;
    v6 = UIFontTextStyleBody;
    v7 = sub_13EA2C(v5, v6, 32.0);
  }

  else
  {
    v7 = 32.0;
  }

  v8 = v1;
  v9 = [v0 sharedApplication];
  v10 = [v9 preferredContentSizeCategory];

  v11 = _UIContentSizeCategoryCompareToContentSizeCategory();
  if (v11 == 1)
  {
    v12 = UIContentSizeCategoryAccessibilityMedium;
    v13 = UIFontTextStyleBody;
    v14 = sub_13EA2C(v12, v13, 32.0);
  }

  else
  {
    v14 = 32.0;
  }

  *&xmmword_1CA2B8 = v7;
  *(&xmmword_1CA2B8 + 1) = v14;
}

id sub_124244()
{
  v1 = OBJC_IVAR____TtC12NowPlayingUI8SongCell____lazy_storage___badgeArtworkBackgroundView;
  v2 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell____lazy_storage___badgeArtworkBackgroundView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell____lazy_storage___badgeArtworkBackgroundView);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    sub_14114C();
    v6 = sub_14108C();
    [v5 setBackgroundColor:v6];

    v7 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_1242FC()
{
  v1 = OBJC_IVAR____TtC12NowPlayingUI8SongCell____lazy_storage___badgeArtworkComponent;
  if (*(v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell____lazy_storage___badgeArtworkComponent))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell____lazy_storage___badgeArtworkComponent);
  }

  else
  {
    v2 = sub_124364(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_124364(uint64_t a1)
{
  type metadata accessor for ArtworkComponentImageView();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa();
  swift_allocObject();
  v3 = sub_CFCE0(v2);

  sub_14114C();
  *(v3 + 24) = sub_1410BC();
  *(v3 + 32) = v4;

  if (qword_1C00D0 != -1)
  {
    swift_once();
  }

  *(v3 + 88) = xmmword_1CA2B8;
  sub_CD754();
  v5 = *(a1 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkComponent);
  v6 = *(v5 + 184);
  v7 = *(v5 + 192);
  v8 = *(v3 + 184);
  *(v3 + 184) = v6;
  *(v3 + 192) = v7;
  sub_2172C(v6);
  sub_2173C(v8);
  v9 = *(v3 + 144);
  v10 = *(v3 + 152);
  *(v3 + 144) = 1;
  *(v3 + 152) = 1;
  if (v10 != 1 || !v9)
  {
    v11 = *(v3 + 184);
    if (v11)
    {

      v11(v12);
      sub_2173C(v11);
    }
  }

  sub_CD93C([objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.16], 0x3FE0000000000000);
  v13 = *(a1 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_badgeArtworkCatalog);
  v14 = *(v3 + 80);
  *(v3 + 80) = v13;
  v15 = v13;
  sub_CD5A8(v14);

  return v3;
}

void sub_124518()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = OBJC_IVAR____TtC12NowPlayingUI8SongCell_layoutStyle;
  sub_126C10(*&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_layoutStyle], v44);
  v4 = v44[0];
  v5 = v44[1];
  v7 = v44[2];
  v6 = v44[3];
  v9 = v44[4];
  v8 = v44[5];

  v10 = &v1[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkSize];
  *v10 = v4;
  *(v10 + 1) = v5;
  v11 = *&v1[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkComponent];
  *(v11 + 88) = v4;
  *(v11 + 96) = v5;
  sub_CD754();
  v12 = &v1[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkEdgeInsets];
  *v12 = v7;
  *(v12 + 1) = v6;
  *(v12 + 2) = v9;
  *(v12 + 3) = v8;
  if ((sub_141AFC() & 1) == 0 || (sub_141AFC() & 1) == 0 || (sub_141AFC() & 1) == 0 || (sub_141AFC() & 1) == 0)
  {
    [v1 setNeedsLayout];
  }

  v13 = *&v1[v3];
  if ((v13 & 0xE000) != 0x2000 || (v13 & 1) == 0)
  {
    v15 = *(v11 + 112);
    *(v11 + 112) = 1;
    if (v15 == 1)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v14 = *(v11 + 112);
  *(v11 + 112) = 2;
  if (v14 != 2)
  {
LABEL_11:
    v16 = [*(v11 + 104) image];
    sub_CE8C4(v16);
  }

LABEL_12:
  if ((*&v1[v3] & 0xE100) == 0x2100)
  {
    v17 = &v1[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkTreatment];
    *v17 = 0x4010000000000000;
    v17[8] = 0;
    LOBYTE(v17) = *(v11 + 152);
    *(v11 + 144) = 0x4010000000000000;
    *(v11 + 152) = 0;
    if ((v17 & 1) != 0 || (sub_141AFC() & 1) == 0)
    {
      v18 = *(v11 + 184);
      if (v18)
      {

        v18(v19);
        sub_2173C(v18);
      }
    }

    v20 = sub_1242FC();
    v21 = *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_badgeArtworkCatalog];
    v22 = *(v20 + 80);
    *(v20 + 80) = v21;
    v23 = v21;
    sub_CD5A8(v22);
  }

  else
  {
    sub_14114C();
    sub_1410EC();
    v24 = &v1[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkTreatment];
    *v24 = v25;
    v24[8] = 0;
    LOBYTE(v24) = *(v11 + 152);
    *(v11 + 144) = v25;
    *(v11 + 152) = 0;
    if ((v24 & 1) != 0 || (sub_141AFC() & 1) == 0)
    {
      v26 = *(v11 + 184);
      if (v26)
      {

        v26(v27);
        sub_2173C(v26);
      }
    }
  }

  v28 = OBJC_IVAR____TtC12NowPlayingUI8SongCell_chevronImageView;
  v29 = *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_chevronImageView];
  if (*&v1[v3] == 24833)
  {
    if (v29)
    {
      v30 = *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_chevronImageView];
      v31 = v30;
    }

    else
    {
      v32 = UITableViewCellDisclosureChevronImage();
      v31 = [objc_allocWithZone(UIImageView) initWithImage:v32];

      v30 = 0;
      v29 = *&v1[v28];
    }

    *&v1[v28] = v31;
    v33 = v30;
    v34 = v31;

    [v1 addSubview:v34];
  }

  else if (v29)
  {
    [*&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_chevronImageView] removeFromSuperview];
  }

  v35 = *&v1[v3];
  if (v35 >> 13 == 2 || !(v35 >> 13)) && (v35)
  {
    v36 = OBJC_IVAR____TtC12NowPlayingUI8SongCell_musicVideoGlyphImageView;
    v37 = *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_musicVideoGlyphImageView];
    if (v37)
    {
      v38 = *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_musicVideoGlyphImageView];
      v39 = v38;
    }

    else
    {
      sub_AC71C();
      v46._object = 0x8000000000168640;
      v46._countAndFlagsBits = 0xD00000000000001ALL;
      isa = sub_144FDC(v46).super.isa;
      v39 = [objc_allocWithZone(UIImageView) initWithImage:isa];

      v38 = 0;
      v37 = *&v1[v36];
    }

    *&v1[v36] = v39;
    v42 = v38;
    v43 = v39;

    [v1 addSubview:v43];
  }

  else
  {
    v40 = *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_musicVideoGlyphImageView];
    if (v40)
    {

      [v40 removeFromSuperview];
    }
  }
}

id sub_1249D8()
{
  v1 = OBJC_IVAR____TtC12NowPlayingUI8SongCell____lazy_storage___addButton;
  v2 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell____lazy_storage___addButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell____lazy_storage___addButton);
  }

  else
  {
    v4 = sub_124A38();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_124A38()
{
  v0 = [objc_allocWithZone(MTMPUHalfTintedTransportButton) init];
  v1 = [objc_allocWithZone(UIColor) initWithWhite:0.8 alpha:1.0];
  [v0 setRegularImageColor:v1];

  sub_AC71C();
  v6._countAndFlagsBits = 0xD000000000000012;
  v6._object = 0x8000000000168600;
  isa = sub_144FDC(v6).super.isa;
  [v0 setRegularImage:isa];

  v7._object = 0x8000000000168620;
  v7._countAndFlagsBits = 0xD000000000000010;
  v3 = sub_144FDC(v7).super.isa;
  [v0 setTintedImage:v3];

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_11EB44(64, sub_126FD0, v4, &unk_1A5878, sub_127010);

  return v0;
}

void sub_124BB8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC12NowPlayingUI8SongCell_addButtonHandler);
    if (v2)
    {

      v2(v1);
      sub_2173C(v2);
    }
  }
}

id sub_124C48(void *a1, char a2, char a3, unsigned __int16 a4)
{
  if (a3)
  {
    v6 = 0;
    v7 = 0;
    v137 = 0;
    if (!UIAccessibilityDarkerSystemColorsEnabled())
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_14114C();
    v6 = sub_14104C();
    if (!UIAccessibilityDarkerSystemColorsEnabled())
    {
      v8 = sub_14106C();
      goto LABEL_7;
    }
  }

  v8 = [objc_opt_self() labelColor];
LABEL_7:
  v137 = v8;
  v7 = v6;
LABEL_8:
  v9 = a4 >> 13;
  if (v9 == 1 || v9 == 3 && (a4 - 24576 < 2 || a4 == 24832))
  {
    v10 = qword_1C00E0;
    v11 = v7;
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = &qword_1CA2D0;
    v13 = v7;
  }

  else
  {
    v14 = qword_1C00D8;
    v15 = v137;
    if (v14 != -1)
    {
      swift_once();
    }

    v12 = &qword_1CA2C8;
    v13 = v137;
  }

  v16 = *v12;
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 clearColor];
  v115 = v18;
  v20 = [v18 typeSafeCopy];
  if ((v9 | 2) == 2)
  {
    if ([a1 horizontalSizeClass] == &dword_0 + 1)
    {
      v21 = 3;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  v280[0] = v20;
  v280[1] = v13;
  v136 = v13;
  v280[2] = v19;
  v116 = v21;
  LOBYTE(v281) = v21;
  v282 = 4;
  v283 = 0;
  LOBYTE(v284) = 0;
  *(&v284 + 4) = 0x3F00000000000000;
  HIDWORD(v284) = 1065353216;
  v138 = v284;
  v132 = v281;
  v133 = *(&v284 + 1);
  v22 = objc_opt_self();
  if (v9 == 4 && a4 == 32769)
  {
    sub_9674(v280, v235);
    v23 = [v22 fontDescriptorWithSystemFontSize:5 weight:14.0];
  }

  else
  {
    sub_9674(v280, v235);
    v23 = [v22 fontDescriptorWithTextStyle:0 leadingAdjustment:1];
  }

  v105 = a4;
  v134 = v20;
  v135 = v19;
  result = v23;
  if (result)
  {
    v25 = result;
    v114 = v7;
    v26 = v25;
    v27 = [v17 clearColor];
    v28 = [v26 typeSafeCopy];

    v129 = v28;
    v130 = v27;
    v275[0] = v28;
    v131 = v7;
    v275[1] = v7;
    v275[2] = v27;
    LOBYTE(v276) = 0;
    v277 = 4;
    v278 = 0;
    LOBYTE(v279) = 0;
    *(&v279 + 4) = 0x3F00000000000000;
    HIDWORD(v279) = 1065353216;
    v108 = v279;
    v127 = v276;
    v128 = *(&v279 + 1);
    v29 = objc_opt_self();
    sub_9674(v275, v235);
    v30 = [v29 sharedApplication];
    v31 = [v30 preferredContentSizeCategory];

    _UIContentSizeCategoryIsAccessibilityContentSizeCategory();
    v32 = objc_opt_self();
    v33 = [v32 fontDescriptorWithTextStyle:0 leadingAdjustment:1];
    v34 = v137;
    v35 = [v17 clearColor];
    v119 = v34;
    v36 = [v33 typeSafeCopy];

    v125 = v36;
    v126 = v35;
    v265[0] = v36;
    v265[1] = v137;
    v265[2] = v35;
    LOBYTE(v266) = 0;
    v267 = 4;
    v268 = 0;
    LOBYTE(v269) = 0;
    *(&v269 + 4) = 0x3F00000000000000;
    HIDWORD(v269) = 1065353216;
    v107 = v269;
    v123 = v266;
    v124 = *(&v269 + 1);
    sub_9674(v265, v235);
    v37 = [v32 fontDescriptorWithTextStyle:0 leadingAdjustment:1];
    v38 = [v17 clearColor];
    v39 = [v37 typeSafeCopy];

    v122 = v39;
    v270[0] = v39;
    v270[1] = v137;
    v270[2] = v38;
    LOBYTE(v271) = 0;
    v272 = 4;
    v273 = 0;
    LOBYTE(v274) = 0;
    *(&v274 + 4) = 0x3F00000000000000;
    HIDWORD(v274) = 1065353216;
    v104 = v274;
    if (a2)
    {
      v40 = 3;
    }

    else
    {
      v40 = 0;
    }

    v120 = *(&v274 + 1);
    v121 = v271;
    sub_9674(v270, v235);
    v41 = [v32 fontDescriptorWithTextStyle:v40 leadingAdjustment:1];
    v42 = [v17 clearColor];
    v43 = v119;
    v44 = [v41 typeSafeCopy];

    v255[0] = v44;
    v255[1] = v137;
    v255[2] = v42;
    LOBYTE(v256) = 0;
    v257 = 4;
    v258 = 0;
    LOBYTE(v259) = 0;
    *(&v259 + 4) = 0x3F00000000000000;
    HIDWORD(v259) = 1065353216;
    v118 = v256;
    v45 = v259;
    sub_9674(v255, v235);
    if (qword_1C00E8 != -1)
    {
      swift_once();
    }

    v46 = qword_1CA2D8;
    v47 = [v17 clearColor];
    v111 = v43;
    v112 = [v46 typeSafeCopy];
    v113 = v47;
    v260[0] = v112;
    v260[1] = v137;
    v260[2] = v47;
    LOBYTE(v261) = 1;
    v262 = 4;
    v263 = 0;
    LOBYTE(v264) = 0;
    *(&v264 + 4) = 0x3F00000000000000;
    HIDWORD(v264) = 1065353216;
    v109 = v261;
    v110 = *(&v264 + 1);
    if (v9 <= 1)
    {
      v48 = a2;
      if (v9)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v48 = a2;
      if (v9 != 2)
      {
        if (v9 != 3)
        {
          if (a2)
          {
            v49 = 20.0;
          }

          else
          {
            v49 = 35.0;
          }

          if (v105 == 32769)
          {
            if (a2)
            {
              v50 = 18.0;
            }

            else
            {
              v50 = 35.0;
            }

            if (a2)
            {
              v51 = 24.0;
            }

            else
            {
              v51 = 35.0;
            }

LABEL_59:
            v55 = *v117;
            v106 = v264 & 0xFFFFFFFF00000003;
            *&v140 = v134;
            *(&v140 + 1) = v136;
            *&v141 = v135;
            *(&v141 + 1) = v132;
            v142 = xmmword_150210;
            *&v143 = v138 & 0xFFFFFFFF00000003;
            *(&v143 + 1) = v133;
            v144 = xmmword_14A340;
            v145 = *&v51;
            v56 = v55[4];
            v57 = v55[5];
            v58 = v55[7];
            v146[4] = v55[6];
            v146[5] = v58;
            v146[2] = v56;
            v146[3] = v57;
            v59 = v55[3];
            v146[0] = v55[2];
            v146[1] = v59;
            v55[6] = xmmword_14A340;
            v55[7] = *&v51;
            v60 = v143;
            v55[4] = v142;
            v55[5] = v60;
            v61 = v141;
            v55[2] = v140;
            v55[3] = v61;
            sub_9674(v260, v235);
            sub_9724(&v140, v235);
            sub_9780(v146);
            sub_54768();
            v62 = v117[1];
            *&v147 = v129;
            *(&v147 + 1) = v131;
            *&v148 = v130;
            *(&v148 + 1) = v127;
            v149 = xmmword_150210;
            *&v150 = v108 & 0xFFFFFFFF00000003;
            *(&v150 + 1) = v128;
            v151 = v45;
            v152 = *&v50;
            v63 = v62[4];
            v64 = v62[5];
            v65 = v62[7];
            v153[4] = v62[6];
            v153[5] = v65;
            v153[2] = v63;
            v153[3] = v64;
            v66 = v62[3];
            v153[0] = v62[2];
            v153[1] = v66;
            v62[6] = v45;
            v62[7] = *&v50;
            v67 = v150;
            v62[4] = v149;
            v62[5] = v67;
            v68 = v148;
            v62[2] = v147;
            v62[3] = v68;
            sub_9724(&v147, v235);
            sub_9780(v153);
            sub_54768();
            v69 = v117[2];
            *&v154 = v125;
            *(&v154 + 1) = v137;
            *&v155 = v126;
            *(&v155 + 1) = v123;
            v156 = xmmword_150210;
            *&v157 = v107 & 0xFFFFFFFF00000003;
            *(&v157 + 1) = v124;
            v158 = xmmword_14A340;
            v159 = *&v51;
            v70 = v69[4];
            v71 = v69[5];
            v72 = v69[7];
            v160[4] = v69[6];
            v160[5] = v72;
            v160[2] = v70;
            v160[3] = v71;
            v73 = v69[3];
            v160[0] = v69[2];
            v160[1] = v73;
            v69[6] = xmmword_14A340;
            v69[7] = *&v51;
            v74 = v157;
            v69[4] = v156;
            v69[5] = v74;
            v75 = v155;
            v69[2] = v154;
            v69[3] = v75;
            sub_9724(&v154, v235);
            sub_9780(v160);
            sub_54768();
            v76 = v117[3];
            *&v161 = v122;
            *(&v161 + 1) = v137;
            *&v162 = v38;
            *(&v162 + 1) = v121;
            v163 = xmmword_150210;
            *&v164 = v104 & 0xFFFFFFFF00000003;
            *(&v164 + 1) = v120;
            v165 = xmmword_14A340;
            v166 = *&v51;
            v77 = v76[4];
            v78 = v76[5];
            v79 = v76[6];
            v167[5] = v76[7];
            v167[4] = v79;
            v167[3] = v78;
            v167[2] = v77;
            v80 = v76[3];
            v167[0] = v76[2];
            v167[1] = v80;
            v76[6] = xmmword_14A340;
            v76[7] = *&v51;
            v81 = v164;
            v76[4] = v163;
            v76[5] = v81;
            v82 = v162;
            v76[2] = v161;
            v76[3] = v82;
            sub_9724(&v161, v235);
            sub_9780(v167);
            sub_54768();
            v83 = v117[4];
            *&v168 = v44;
            *(&v168 + 1) = v137;
            *&v169 = v42;
            *(&v169 + 1) = v118;
            v170 = xmmword_150210;
            *&v171 = v45 & 0xFFFFFFFF00000003;
            *(&v171 + 1) = *(&v45 + 1);
            v172 = xmmword_14A340;
            v173 = *&v49;
            v84 = v83[4];
            v85 = v83[5];
            v86 = v83[6];
            v174[5] = v83[7];
            v174[4] = v86;
            v174[3] = v85;
            v174[2] = v84;
            v87 = v83[3];
            v174[0] = v83[2];
            v174[1] = v87;
            v83[6] = xmmword_14A340;
            v83[7] = *&v49;
            v88 = v171;
            v83[4] = v170;
            v83[5] = v88;
            v89 = v169;
            v83[2] = v168;
            v83[3] = v89;
            sub_9724(&v168, v235);
            sub_9780(v174);
            sub_54768();
            v90 = v117[5];
            *&v175 = v44;
            *(&v175 + 1) = v137;
            *&v176 = v42;
            *(&v176 + 1) = v118;
            v177 = xmmword_150210;
            *&v178 = v45 & 0xFFFFFFFF00000003;
            *(&v178 + 1) = *(&v45 + 1);
            v179 = xmmword_14A340;
            v180 = *&v49;
            v91 = v90[4];
            v92 = v90[5];
            v93 = v90[6];
            v181[5] = v90[7];
            v181[4] = v93;
            v181[3] = v92;
            v181[2] = v91;
            v94 = v90[3];
            v181[0] = v90[2];
            v181[1] = v94;
            v90[6] = xmmword_14A340;
            v90[7] = *&v49;
            v95 = v178;
            v90[4] = v177;
            v90[5] = v95;
            v96 = v176;
            v90[2] = v175;
            v90[3] = v96;
            sub_9724(&v175, v235);
            sub_9780(v181);
            sub_54768();
            v97 = v117[6];
            *&v182 = v112;
            *(&v182 + 1) = v137;
            *&v183 = v113;
            *(&v183 + 1) = v109;
            v184 = xmmword_150210;
            *&v185 = v106;
            *(&v185 + 1) = v110;
            v186 = xmmword_14A340;
            v187 = *&v51;
            v98 = v97[4];
            v99 = v97[5];
            v100 = v97[6];
            v188[5] = v97[7];
            v188[4] = v100;
            v188[3] = v99;
            v188[2] = v98;
            v101 = v97[3];
            v188[0] = v97[2];
            v188[1] = v101;
            v97[6] = xmmword_14A340;
            v97[7] = *&v51;
            v102 = v185;
            v97[4] = v184;
            v97[5] = v102;
            v103 = v183;
            v97[2] = v182;
            v97[3] = v103;
            sub_9724(&v182, v235);
            sub_9780(v188);
            sub_54768();

            sub_96D0(v255);
            sub_96D0(v270);
            sub_96D0(v265);
            sub_96D0(v275);

            v189[0] = v112;
            v189[1] = v137;
            v189[2] = v113;
            v189[3] = v109;
            v190 = xmmword_150210;
            v191 = v106;
            v192 = v110;
            v193 = xmmword_14A340;
            v194 = v51;
            v195 = 0;
            sub_9780(v189);
            v196[0] = v112;
            v196[1] = v137;
            v196[2] = v113;
            v197 = 1;
            *v198 = v254[0];
            *&v198[3] = *(v254 + 3);
            v199 = 4;
            v200 = 0;
            v201 = 0;
            v202 = v252;
            v203 = v253;
            v204 = 0x3F00000000000000;
            v205 = 1065353216;
            sub_96D0(v196);
            v206[0] = v44;
            v206[1] = v137;
            v206[2] = v42;
            v206[3] = v118;
            v207 = xmmword_150210;
            v208 = v45 & 0xFFFFFFFF00000003;
            v209 = *(&v45 + 1);
            v210 = xmmword_14A340;
            v211 = v49;
            v212 = 0;
            sub_9780(v206);
            v213[0] = v122;
            v213[1] = v137;
            v213[2] = v38;
            v213[3] = v121;
            v214 = xmmword_150210;
            v215 = v104 & 0xFFFFFFFF00000003;
            v216 = v120;
            v217 = xmmword_14A340;
            v218 = v51;
            v219 = 0;
            sub_9780(v213);
            v220[0] = v125;
            v220[1] = v137;
            v220[2] = v126;
            v220[3] = v123;
            v221 = xmmword_150210;
            v222 = v107 & 0xFFFFFFFF00000003;
            v223 = v124;
            v224 = xmmword_14A340;
            v225 = v51;
            v226 = 0;
            sub_9780(v220);
            v227[0] = v129;
            v227[1] = v131;
            v227[2] = v130;
            v227[3] = v127;
            v228 = xmmword_150210;
            v229 = v108 & 0xFFFFFFFF00000003;
            v230 = v128;
            v231 = v45;
            v232 = 0;
            v233 = v50;
            v234 = 0;
            sub_9780(v227);
            v235[0] = v134;
            v235[1] = v136;
            v235[2] = v135;
            v235[3] = v132;
            v236 = xmmword_150210;
            v237 = v138 & 0xFFFFFFFF00000003;
            v238 = v133;
            v239 = xmmword_14A340;
            v240 = v51;
            v241 = 0;
            sub_9780(v235);
            v242[0] = v134;
            v242[1] = v136;
            v242[2] = v135;
            v243 = v116;
            *v244 = v287[0];
            *&v244[3] = *(v287 + 3);
            v245 = 4;
            v246 = 0;
            v247 = 0;
            v248 = v285;
            v249 = v286;
            v250 = 0x3F00000000000000;
            v251 = 1065353216;
            return sub_96D0(v242);
          }

          v52 = (a2 & 1) == 0;
          v53 = 35.0;
          goto LABEL_54;
        }

LABEL_51:
        v52 = (v48 & 1) == 0;
        v53 = 35.0;
        if (v48)
        {
          v49 = 20.0;
        }

        else
        {
          v49 = 35.0;
        }

LABEL_54:
        v54 = 24.0;
LABEL_55:
        if (v52)
        {
          v50 = v53;
        }

        else
        {
          v50 = v54;
        }

        v51 = v50;
        goto LABEL_59;
      }
    }

    v52 = (v48 & 1) == 0;
    v53 = 30.0;
    if (v48)
    {
      v49 = 18.0;
    }

    else
    {
      v49 = 30.0;
    }

    v54 = 20.0;
    goto LABEL_55;
  }

  __break(1u);
  return result;
}

uint64_t sub_125AB4()
{
  sub_126E28(&v30);
  v1 = v30;
  v2 = v31;
  v3 = *v32;
  v5 = *&v32[16];
  v4 = *&v32[32];
  v6 = v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_textComponents;
  v7 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_textComponents + 32);
  v8 = *&v32[24] & 0xFFFFFFFF00000003;
  v10 = *(v7 + 32);
  v9 = *(v7 + 48);
  v11 = *(v7 + 80);
  v33[2] = *(v7 + 64);
  v33[3] = v11;
  v33[0] = v10;
  v33[1] = v9;
  *(v7 + 32) = v30;
  *(v7 + 48) = v2;
  *(v7 + 56) = v3;
  *(v7 + 72) = v5;
  *(v7 + 80) = v8;
  *(v7 + 88) = v4;
  sub_9674(&v30, &v38);
  sub_9674(&v30, &v38);
  sub_126F44(v33);
  sub_54768();
  v12 = *(v6 + 40);
  v14 = *(v12 + 32);
  v13 = *(v12 + 48);
  v15 = *(v12 + 80);
  v34[2] = *(v12 + 64);
  v34[3] = v15;
  v34[0] = v14;
  v34[1] = v13;
  *(v12 + 32) = v1;
  *(v12 + 48) = v2;
  *(v12 + 56) = v3;
  *(v12 + 72) = v5;
  *(v12 + 80) = v8;
  *(v12 + 88) = v4;
  sub_126F44(v34);
  sub_54768();
  v28 = v30;
  v29 = v31;
  v26 = *&v32[1];
  *v27 = *&v32[17];
  *&v27[15] = *&v32[32];
  v16 = *(v6 + 48);
  v35 = v30;
  *v36 = v31;
  v36[8] = 1;
  *&v36[40] = *&v32[32];
  *&v36[9] = *&v32[1];
  *&v36[25] = *&v32[17];
  v17 = *&v36[40];
  v18 = (*&v32[17] >> 56) & 0xFFFFFFFF00000003;
  v20 = *(v16 + 32);
  v19 = *(v16 + 48);
  v21 = *(v16 + 80);
  v37[2] = *(v16 + 64);
  v37[3] = v21;
  v37[0] = v20;
  v37[1] = v19;
  v23 = *v36;
  v22 = *&v36[16];
  *(v16 + 32) = v30;
  *(v16 + 48) = v23;
  *(v16 + 64) = v22;
  *(v16 + 80) = v18;
  *(v16 + 88) = v17;
  sub_9674(&v30, &v38);
  sub_9674(&v35, &v38);
  sub_126F44(v37);
  sub_54768();
  [v25 setNeedsLayout];
  sub_96D0(&v30);
  v38 = v28;
  v39 = v29;
  v40 = 1;
  v41 = v26;
  *v42 = *v27;
  *&v42[15] = *&v27[15];
  return sub_96D0(&v38);
}

void sub_125CC8(uint64_t a1, SEL *a2, uint64_t a3, void *a4)
{
  v5 = [objc_opt_self() *a2];
  [v5 setWantsMonospaceNumbers:1];
  v6 = [v5 typeSafeCopy];

  *a4 = v6;
}

BOOL sub_125E04(_BYTE *a1)
{
  if (a1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_popularity + 8])
  {
    return 0;
  }

  v3 = *&a1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_popularity];
  v4 = objc_opt_self();
  v5 = a1;
  v6 = [v4 standardUserDefaults];
  sub_C5C9C();
  v8 = v7;

  return v3 >= v8;
}

void sub_125EB0()
{

  sub_2173C(*(v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_addButtonHandler));

  v1 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_musicVideoGlyphImageView);
}

id sub_1260B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SongCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SongCell()
{
  result = qword_1CA398;
  if (!qword_1CA398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_126410(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_126458(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for SongCell.LayoutStyle(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >> 2 < 0xFFF)
  {
    goto LABEL_17;
  }

  if (a2 + 49156 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 49156 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 49156;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 49156;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 49156;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 13) | (8 * ((*a1 >> 2) & 0x780 | (*a1 >> 1)))) ^ 0x3FFF;
  if (v6 >= 0x3FFB)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *storeEnumTagSinglePayload for SongCell.LayoutStyle(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 49156 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 49156 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >> 2 >= 0xFFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 >> 2 > 0xFFE)
  {
    v6 = ((a2 - 16380) >> 16) + 1;
    *result = a2 - 16380;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_21;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_21:
    v7 = ((-a2 >> 3) & 0x7FF) - (a2 << 11);
    *result = (4 * v7) & 0xFE00 | (2 * (v7 & 0x7F));
    return result;
  }

  if (a2)
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_126638(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = v1 >> 13;
  v3 = (v1 & 1 | (4 * (v1 >> 13)) | (v1 >> 7) & 2) - 9;
  if (v2 <= 2)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

_WORD *sub_126674(_WORD *result, unsigned int a2)
{
  if (a2 < 3)
  {
    *result = *result & 0x101 | (a2 << 13);
  }

  else
  {
    *result = (((a2 - 3) << 7) & 0x100 | (a2 - 3) & 1 | (((a2 - 3) >> 2) << 13)) + 24576;
  }

  return result;
}

BOOL sub_1266C0(int a1, int a2)
{
  v2 = a1 >> 13;
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      if (v2 == 4)
      {
        if (a1 == 0x8000)
        {
          return a2 == 0x8000;
        }

        v3 = 32769;
        if (a1 != 32769)
        {
          return a2 == 33024;
        }
      }

      else
      {
        if (a1 <= 0x60FFu)
        {
          if (a1 != 24576)
          {
            return a2 == 24577;
          }

          return a2 == 24576;
        }

        v3 = 24832;
        if (a1 != 24832)
        {
          return a2 == 24833;
        }
      }

      return v3 == a2;
    }

    if ((a2 & 0xE000) != 0x4000)
    {
      return 0;
    }

    return (a2 ^ a1 ^ 1) & 1;
  }

  if (!(a1 >> 13))
  {
    if (a2 >= 0x2000u)
    {
      return 0;
    }

    return (a2 ^ a1 ^ 1) & 1;
  }

  if ((a2 & 0xE000) != 0x2000)
  {
    return 0;
  }

  if ((a2 ^ a1))
  {
    v5 = 0;
  }

  else
  {
    v5 = ((a2 & 0x100) == 0) ^ ((a1 & 0x100) >> 8);
  }

  return v5 & 1;
}

uint64_t sub_1267E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = a2 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_textComponents;
    v5 = (a1 + 32);
    v37 = a2 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_textComponents;
    v38 = *(a1 + 16);
    while (1)
    {
      v6 = v5[9];
      v52[8] = v5[8];
      v52[9] = v6;
      v52[10] = v5[10];
      v7 = v5[5];
      v52[4] = v5[4];
      v52[5] = v7;
      v8 = v5[7];
      v52[6] = v5[6];
      v52[7] = v8;
      v9 = v5[1];
      v52[0] = *v5;
      v52[1] = v9;
      v10 = v5[3];
      v52[2] = v5[2];
      v52[3] = v10;
      v11 = *&v52[0];
      v12 = *(v4 + 8);
      if (*&v52[0] == v12)
      {
        return v3;
      }

      if ((*(*&v52[0] + 16) != *(v12 + 16) || *(*&v52[0] + 24) != *(v12 + 24)) && (sub_1453BC() & 1) == 0)
      {
        goto LABEL_13;
      }

      v13 = *(v11 + 64);
      v14 = *(v11 + 80);
      v15 = *(v11 + 112);
      v43 = *(v11 + 96);
      v44 = v15;
      v41 = v13;
      v42 = v14;
      v16 = *(v11 + 48);
      v39 = *(v11 + 32);
      v40 = v16;
      v17 = *(v12 + 64);
      v18 = *(v12 + 80);
      v19 = *(v12 + 112);
      v49 = *(v12 + 96);
      v50 = v19;
      v48 = v18;
      v20 = *(v12 + 48);
      v45 = *(v12 + 32);
      v46 = v20;
      v47 = v17;
      v21 = v39;
      v22 = v42;
      if ((v42 & 0x80000000) != 0)
      {
        if ((BYTE3(v48) & 0x80) != 0)
        {
          if (v39 == v45)
          {
            sub_55960(v52, v51);
            sub_9724(&v45, v51);
            sub_9724(&v39, v51);
          }

          else
          {
            v28 = sub_1453BC();
            sub_55960(v52, v51);
            sub_9724(&v45, v51);
            sub_9724(&v39, v51);
            if ((v28 & 1) == 0)
            {
              goto LABEL_41;
            }
          }

          goto LABEL_29;
        }

LABEL_13:
        sub_55960(v52, v51);
LABEL_42:
        v27 = 0;
        goto LABEL_43;
      }

      if ((v48 & 0x80000000) != 0)
      {
        goto LABEL_13;
      }

      v33 = v48;
      v35 = v41;
      v23 = *(&v42 + 1);
      v53 = v40;
      v34 = v47;
      v24 = *(&v48 + 1);
      v25 = v46;
      v36 = BYTE8(v40);
      v26 = v45;
      if (v39 == v45)
      {
        sub_55960(v52, v51);
        sub_9724(&v45, v51);
        sub_9724(&v39, v51);
        v4 = v37;
      }

      else
      {
        sub_55960(v52, v51);
        sub_9724(&v45, v51);
        sub_9724(&v39, v51);
        v4 = v37;
        if (![v21 isEqual:v26])
        {
          goto LABEL_27;
        }
      }

      if (*(&v21 + 1))
      {
        if (*(&v26 + 1) && (*(&v21 + 1) == *(&v26 + 1) || [*(&v21 + 1) isEqual:*(&v26 + 1)]))
        {
LABEL_19:
          if (v53)
          {
            v2 = v38;
            if (!v25 || v53 != v25 && ![v53 isEqual:?])
            {
LABEL_41:
              sub_9780(&v45);
              sub_9780(&v39);
              goto LABEL_42;
            }
          }

          else
          {
            v2 = v38;
            if (v25)
            {
              goto LABEL_41;
            }
          }

          if (BYTE8(v25) != v36 || v35 != v34 || (sub_141AFC() & 1) == 0 || v23 != v24 || v33 != v22)
          {
            goto LABEL_41;
          }

LABEL_29:
          if (v43 != v49 || (sub_141AFC() & 1) == 0)
          {
            goto LABEL_41;
          }

          v29 = sub_141AFC();
          sub_9780(&v45);
          sub_9780(&v39);
          if (v29)
          {
            if (*(v11 + 128) == *(v12 + 128) && *(v11 + 136) == *(v12 + 136))
            {
              v27 = 1;
            }

            else
            {
              v27 = sub_1453BC();
            }

            goto LABEL_43;
          }

          goto LABEL_42;
        }
      }

      else if (!*(&v26 + 1))
      {
        goto LABEL_19;
      }

LABEL_27:
      sub_9780(&v45);
      sub_9780(&v39);
      v27 = 0;
      v2 = v38;
LABEL_43:
      v30 = *(v11 + 272);
      v31 = *(v12 + 272);
      sub_55998(v52);
      if (v31)
      {
        if (((v30 != 0) & v27) == 1 && v30 == v31)
        {
          return v3;
        }
      }

      else if (!v30 && ((v27 ^ 1) & 1) == 0)
      {
        return v3;
      }

      ++v3;
      v5 += 11;
      if (v2 == v3)
      {
        return 0;
      }
    }
  }

  return 0;
}

uint64_t sub_126C10@<X0>(unsigned __int16 a1@<W1>, uint64_t a2@<X8>)
{
  if ((a1 >> 13) > 2u)
  {
    if (qword_1C00C0 != -1)
    {
      v12 = a2;
      result = swift_once();
      a2 = v12;
    }

    v3 = xmmword_151750;
    v7 = *&qword_1D1978;
    v6 = *&qword_1D1980;
    bottom = 4.0;
    right = 16.0;
  }

  else if (a1 >> 13 == 1)
  {
    if (a1)
    {
      if (qword_1C00C8 != -1)
      {
        v16 = a1;
        v13 = a2;
        result = swift_once();
        a1 = v16;
        a2 = v13;
      }

      v2 = &qword_1CA2A8;
    }

    else
    {
      if (qword_1C00C0 != -1)
      {
        v17 = a1;
        v15 = a2;
        result = swift_once();
        a1 = v17;
        a2 = v15;
      }

      v2 = &qword_1D1978;
    }

    v3 = xmmword_151750;
    v7 = *v2;
    v6 = *(v2 + 1);
    bottom = 4.0;
    right = 16.0;
    if ((a1 & 0x100) != 0)
    {
      v8 = a2;
      if (qword_1C00D0 != -1)
      {
        swift_once();
      }

      sub_144DCC();
      sub_141AAC();
      v10 = v9;
      sub_144DCC();
      result = sub_141AAC();
      right = v10 + 16.0;
      v7 = v7 - v10;
      v6 = v6 - v11;
      a2 = v8;
      v3 = xmmword_151750;
    }
  }

  else
  {
    v3 = *&UIEdgeInsetsZero.top;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v6 = 0.0;
    v7 = 0.0;
  }

  *a2 = v7;
  *(a2 + 8) = v6;
  *(a2 + 16) = v3;
  *(a2 + 32) = bottom;
  *(a2 + 40) = right;
  return result;
}

double sub_126E28@<D0>(uint64_t a1@<X8>)
{
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    v2 = [objc_opt_self() labelColor];
  }

  else
  {
    sub_14114C();
    v2 = sub_14106C();
  }

  v3 = v2;
  v4 = [objc_opt_self() fontDescriptorWithTextStyle:3 leadingAdjustment:1];
  v5 = objc_opt_self();
  v6 = v3;
  v7 = [v5 clearColor];
  v8 = [v4 typeSafeCopy];

  *a1 = v8;
  *(a1 + 8) = v3;
  *(a1 + 16) = v7;
  *(a1 + 24) = 0;
  *(a1 + 32) = 4;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  result = 0.0000305175781;
  *(a1 + 52) = 0x3F00000000000000;
  *(a1 + 60) = 1065353216;
  return result;
}

uint64_t sub_126F98()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_126FD8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_127018@<X0>(uint64_t *a1@<X8>)
{
  v134 = objc_opt_self();
  v1 = [v134 fontDescriptorWithTextStyle:0 leadingAdjustment:1 weight:2];
  sub_14114C();
  v2 = sub_14104C();
  v133 = objc_opt_self();
  v3 = [v133 clearColor];
  v4 = [v1 typeSafeCopy];

  v233[0] = v4;
  v128 = v4;
  v129 = v3;
  v130 = v2;
  v233[1] = v2;
  v233[2] = v3;
  LOBYTE(v234) = 0;
  v235 = 4;
  v236 = 0;
  LOBYTE(v237) = 0;
  *(&v237 + 4) = 0x3F00000000000000;
  HIDWORD(v237) = 1065353216;
  v126 = *(&v237 + 1);
  v127 = v234;
  v125 = v237 & 0xFFFFFFFF00000003;
  *&v238 = v4;
  *(&v238 + 1) = v2;
  v239 = __PAIR128__(v234, v3);
  v240 = xmmword_150210;
  *&v241 = v237 & 0xFFFFFFFF00000003;
  *(&v241 + 1) = *(&v237 + 1);
  v242 = xmmword_14A340;
  v243 = xmmword_1558A0;
  _s9StackViewC9ComponentCMa();
  v124 = swift_allocObject();
  v5 = v241;
  v6 = v241;
  *(v124 + 64) = xmmword_150210;
  *(v124 + 80) = v5;
  v7 = v242;
  v8 = v243;
  v9 = v243;
  *(v124 + 96) = v242;
  *(v124 + 112) = v8;
  v10 = v238;
  v11 = v239;
  v12 = v239;
  *(v124 + 32) = v238;
  *(v124 + 48) = v11;
  *(v124 + 176) = xmmword_150210;
  *(v124 + 192) = v6;
  *(v124 + 208) = v7;
  *(v124 + 224) = v9;
  *(v124 + 128) = 0;
  *(v124 + 136) = 0xE000000000000000;
  *(v124 + 240) = 0;
  *(v124 + 248) = 0xE000000000000000;
  *(v124 + 264) = 0;
  *(v124 + 272) = 0;
  *(v124 + 256) = 0;
  *(v124 + 16) = 0x6D754E6B63617274;
  *(v124 + 24) = 0xEB00000000726562;
  *(v124 + 144) = v10;
  *(v124 + 160) = v12;
  sub_9724(&v238, v225);
  sub_9724(&v238, v225);
  sub_9674(v233, v225);
  v13 = [v134 fontDescriptorWithTextStyle:0 leadingAdjustment:1];
  v14 = sub_14104C();
  v15 = [v133 clearColor];
  v16 = [v13 typeSafeCopy];

  v244[0] = v16;
  v244[1] = v14;
  v120 = v15;
  v17 = v14;
  v244[2] = v15;
  LOBYTE(v245) = 0;
  v246 = 4;
  v247 = 0;
  LOBYTE(v248) = 0;
  *(&v248 + 4) = 0x3F00000000000000;
  HIDWORD(v248) = 1065353216;
  v18 = v245;
  v121 = v14;
  v122 = v245;
  v19 = *(&v248 + 1);
  v20 = v248 & 0xFFFFFFFF00000003;
  v118 = v248 & 0xFFFFFFFF00000003;
  v119 = *(&v248 + 1);
  v21 = objc_opt_self();
  sub_9674(v244, v225);
  v22 = [v21 sharedApplication];
  v23 = [v22 preferredContentSizeCategory];

  LODWORD(v22) = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();
  v24 = 3;
  if (!v22)
  {
    v24 = 1;
  }

  v117 = v24;
  *&v139 = v16;
  *(&v139 + 1) = v17;
  *&v140 = v15;
  *(&v140 + 1) = v18;
  v141 = xmmword_150210;
  *&v142 = v20;
  *(&v142 + 1) = v19;
  v143 = v24;
  v144 = xmmword_1558A0;
  v123 = swift_allocObject();
  v25 = v142;
  v26 = v142;
  *(v123 + 64) = xmmword_150210;
  *(v123 + 80) = v25;
  v27 = v144;
  v28 = v143;
  v29 = v144;
  *(v123 + 96) = v143;
  *(v123 + 112) = v27;
  v30 = v140;
  v31 = v139;
  v32 = v140;
  *(v123 + 32) = v139;
  *(v123 + 48) = v30;
  *(v123 + 176) = xmmword_150210;
  *(v123 + 192) = v26;
  *(v123 + 208) = v28;
  *(v123 + 224) = v29;
  *(v123 + 128) = 0;
  *(v123 + 136) = 0xE000000000000000;
  *(v123 + 240) = 0;
  *(v123 + 248) = 0xE000000000000000;
  *(v123 + 264) = 0;
  *(v123 + 272) = 0;
  *(v123 + 256) = 0;
  *(v123 + 16) = 0x656C746974;
  *(v123 + 24) = 0xE500000000000000;
  *(v123 + 144) = v31;
  *(v123 + 160) = v32;
  sub_9724(&v139, v225);
  sub_9724(&v139, v225);
  v33 = [v134 fontDescriptorWithTextStyle:0 leadingAdjustment:1];
  v34 = sub_14106C();
  v35 = [v133 clearColor];
  v36 = [v33 typeSafeCopy];

  v112 = v36;
  v113 = v35;
  v145[0] = v36;
  v145[1] = v34;
  v145[2] = v35;
  LOBYTE(v146) = 0;
  v147 = 4;
  v148 = 0;
  LOBYTE(v149) = 0;
  *(&v149 + 4) = 0x3F00000000000000;
  HIDWORD(v149) = 1065353216;
  v114 = v34;
  v115 = v146;
  v116 = *(&v149 + 1);
  v111 = v149 & 0xFFFFFFFF00000003;
  *&v150 = v36;
  *(&v150 + 1) = v34;
  v151 = __PAIR128__(v146, v35);
  v152 = xmmword_150210;
  *&v153 = v149 & 0xFFFFFFFF00000003;
  *(&v153 + 1) = *(&v149 + 1);
  v154 = xmmword_14A340;
  v155 = xmmword_1558A0;
  v37 = swift_allocObject();
  v38 = v153;
  v39 = v152;
  v40 = v153;
  *(v37 + 64) = v152;
  *(v37 + 80) = v38;
  v41 = v155;
  v42 = v154;
  v43 = v155;
  *(v37 + 96) = v154;
  *(v37 + 112) = v41;
  v44 = v151;
  v45 = v150;
  v46 = v151;
  *(v37 + 32) = v150;
  *(v37 + 48) = v44;
  *(v37 + 176) = v39;
  *(v37 + 192) = v40;
  *(v37 + 208) = v42;
  *(v37 + 224) = v43;
  *(v37 + 128) = 0;
  *(v37 + 136) = 0xE000000000000000;
  *(v37 + 240) = 0;
  *(v37 + 248) = 0xE000000000000000;
  *(v37 + 264) = 0;
  *(v37 + 272) = 0;
  *(v37 + 256) = 0;
  *(v37 + 16) = 0x746963696C707865;
  *(v37 + 24) = 0xE800000000000000;
  *(v37 + 144) = v45;
  *(v37 + 160) = v46;
  sub_9724(&v150, v225);
  sub_9724(&v150, v225);
  sub_9674(v145, v225);
  v47 = [v134 fontDescriptorWithTextStyle:0 leadingAdjustment:1];
  v48 = sub_14106C();
  v49 = [v133 clearColor];
  v50 = [v47 typeSafeCopy];

  v107 = v49;
  v156[0] = v50;
  v156[1] = v48;
  v156[2] = v49;
  LOBYTE(v157) = 0;
  v158 = 4;
  v159 = 0;
  LOBYTE(v160) = 0;
  *(&v160 + 4) = 0x3F00000000000000;
  HIDWORD(v160) = 1065353216;
  v108 = v48;
  v109 = v157;
  v110 = *(&v160 + 1);
  v106 = v160 & 0xFFFFFFFF00000003;
  *&v161 = v50;
  *(&v161 + 1) = v48;
  v162 = __PAIR128__(v157, v49);
  v163 = xmmword_150210;
  *&v164 = v160 & 0xFFFFFFFF00000003;
  *(&v164 + 1) = *(&v160 + 1);
  v165 = xmmword_14A340;
  v166 = xmmword_1558A0;
  v51 = swift_allocObject();
  v52 = v164;
  v53 = v163;
  v54 = v164;
  *(v51 + 64) = v163;
  *(v51 + 80) = v52;
  v55 = v166;
  v56 = v165;
  v57 = v166;
  *(v51 + 96) = v165;
  *(v51 + 112) = v55;
  v58 = v162;
  v59 = v161;
  v60 = v162;
  *(v51 + 32) = v161;
  *(v51 + 48) = v58;
  *(v51 + 176) = v53;
  *(v51 + 192) = v54;
  *(v51 + 208) = v56;
  *(v51 + 224) = v57;
  *(v51 + 128) = 0;
  *(v51 + 136) = 0xE000000000000000;
  *(v51 + 240) = 0;
  *(v51 + 248) = 0xE000000000000000;
  *(v51 + 264) = 0;
  *(v51 + 272) = 0;
  *(v51 + 256) = 0;
  *(v51 + 16) = 0x6972616C75706F70;
  *(v51 + 24) = 0xEA00000000007974;
  *(v51 + 144) = v59;
  *(v51 + 160) = v60;
  sub_9724(&v161, v225);
  sub_9724(&v161, v225);
  sub_9674(v156, v225);
  sub_126E28(&v231);
  v61 = *&v232[16];
  *&v132 = *&v232[32] & 0xFFFFFFFF00000003;
  *(&v132 + 1) = *&v232[40];
  v167 = v231;
  v62 = *(&v231 + 1);
  v63 = v231;
  v168 = *v232;
  v64 = *&v232[8];
  v65 = *v232;
  v169 = *&v232[16];
  v104 = *&v232[24];
  v105 = *&v232[16];
  *&v170 = *&v232[32] & 0xFFFFFFFF00000003;
  *(&v170 + 1) = *&v232[40];
  v171 = xmmword_14A340;
  v172 = xmmword_1558B0;
  v66 = swift_allocObject();
  v67 = v170;
  v68 = v169;
  v69 = v170;
  *(v66 + 64) = v169;
  *(v66 + 80) = v67;
  v70 = v172;
  v71 = v171;
  v72 = v172;
  *(v66 + 96) = v171;
  *(v66 + 112) = v70;
  v73 = v168;
  v74 = v167;
  v75 = v168;
  *(v66 + 32) = v167;
  *(v66 + 48) = v73;
  *(v66 + 176) = v68;
  *(v66 + 192) = v69;
  *(v66 + 208) = v71;
  *(v66 + 224) = v72;
  *(v66 + 128) = 0;
  *(v66 + 136) = 0xE000000000000000;
  *(v66 + 240) = 0;
  *(v66 + 248) = 0xE000000000000000;
  *(v66 + 256) = 0;
  *(v66 + 264) = 0;
  *(v66 + 272) = 0;
  *(v66 + 16) = 0x614E747369747261;
  *(v66 + 24) = 0xEA0000000000656DLL;
  *(v66 + 144) = v74;
  *(v66 + 160) = v75;
  v173 = v63;
  v174 = v65;
  v175 = v61;
  v176 = v132;
  v177 = xmmword_14A340;
  v178 = xmmword_1558B0;
  v76 = swift_allocObject();
  v77 = v175;
  v78 = v176;
  v79 = v176;
  *(v76 + 64) = v175;
  *(v76 + 80) = v78;
  v80 = v177;
  v81 = v178;
  v82 = v178;
  *(v76 + 96) = v177;
  *(v76 + 112) = v81;
  v83 = v173;
  v84 = v174;
  v85 = v174;
  *(v76 + 32) = v173;
  *(v76 + 48) = v84;
  *(v76 + 176) = v77;
  *(v76 + 192) = v79;
  *(v76 + 128) = 0;
  *(v76 + 136) = 0xE000000000000000;
  *(v76 + 240) = 0;
  *(v76 + 248) = 0xE000000000000000;
  *(v76 + 256) = 0;
  *(v76 + 264) = 0;
  *(v76 + 272) = 0;
  *(v76 + 16) = 0x7469546D75626C61;
  *(v76 + 24) = 0xEA0000000000656CLL;
  *(v76 + 208) = v80;
  *(v76 + 224) = v82;
  *(v76 + 144) = v83;
  *(v76 + 160) = v85;
  v137 = v231;
  v138 = *v232;
  v135 = *&v232[9];
  v136[0] = *&v232[25];
  *(v136 + 15) = *&v232[40];
  v180 = *v232;
  v179 = v231;
  v181[0] = 1;
  *&v181[32] = *&v232[40];
  *&v181[17] = *&v232[25];
  *&v181[1] = *&v232[9];
  v86 = v231;
  v87 = *v181;
  v88 = *&v232[9] >> 56;
  v101 = *&v181[16];
  v102 = *v232;
  v103 = *&v181[32];
  v89 = (*&v232[25] >> 56) & 0xFFFFFFFF00000003;
  v182 = v231;
  v183 = __PAIR128__(*v181, *v232);
  v184 = *&v181[8];
  *&v185 = v89;
  *(&v185 + 1) = *&v181[32];
  v186 = xmmword_14A340;
  v187 = xmmword_1558B0;
  sub_9724(&v167, v225);
  sub_9724(&v173, v225);
  sub_9724(&v167, v225);
  sub_9724(&v173, v225);
  sub_9674(&v231, v225);
  sub_9674(&v179, v225);
  sub_9724(&v182, v225);
  sub_96D0(v156);
  sub_96D0(v145);
  sub_96D0(v244);
  sub_96D0(v233);
  v90 = swift_allocObject();
  *(v90 + 128) = 0;
  *(v90 + 136) = 0xE000000000000000;
  v188 = v86;
  v189 = v102;
  v190 = v87;
  v191 = v88;
  v192 = v101;
  v193 = v89;
  v194 = v103;
  v195 = xmmword_14A340;
  v196 = xmmword_1558B0;
  sub_9780(&v188);
  v197 = v137;
  v198 = v138;
  v199 = 1;
  v200 = v135;
  *v201 = v136[0];
  *&v201[15] = *(v136 + 15);
  sub_96D0(&v197);
  v202[0] = v63;
  v202[1] = v62;
  v202[2] = v65;
  v202[3] = v64;
  v202[4] = v105;
  v202[5] = v104;
  v203 = v132;
  v204 = xmmword_14A340;
  v205 = xmmword_1558B0;
  sub_9780(v202);
  v206[0] = v50;
  v206[1] = v108;
  v206[2] = v107;
  v206[3] = v109;
  v207 = xmmword_150210;
  v208 = v106;
  v209 = v110;
  v210 = xmmword_14A340;
  v211 = xmmword_1558A0;
  sub_9780(v206);
  v212[0] = v112;
  v212[1] = v114;
  v212[2] = v113;
  v212[3] = v115;
  v213 = xmmword_150210;
  v214 = v111;
  v215 = v116;
  v216 = xmmword_14A340;
  v217 = xmmword_1558A0;
  sub_9780(v212);
  v218[0] = v16;
  v218[1] = v121;
  v218[2] = v120;
  v218[3] = v122;
  v219 = xmmword_150210;
  v220 = v118;
  v221 = v119;
  v222 = v117;
  v223 = 0;
  v224 = xmmword_1558A0;
  sub_9780(v218);
  v225[0] = v128;
  v225[1] = v130;
  v225[2] = v129;
  v225[3] = v127;
  v226 = xmmword_150210;
  v227 = v125;
  v228 = v126;
  v229 = xmmword_14A340;
  v230 = xmmword_1558A0;
  sub_9780(v225);
  v91 = v184;
  v92 = v185;
  v93 = v185;
  *(v90 + 64) = v184;
  *(v90 + 80) = v92;
  v94 = v186;
  v95 = v187;
  v96 = v187;
  *(v90 + 96) = v186;
  *(v90 + 112) = v95;
  v97 = v182;
  v98 = v183;
  v99 = v183;
  *(v90 + 32) = v182;
  *(v90 + 48) = v98;
  *(v90 + 176) = v91;
  *(v90 + 192) = v93;
  *(v90 + 208) = v94;
  *(v90 + 224) = v96;
  *(v90 + 240) = 0;
  *(v90 + 248) = 0xE000000000000000;
  *(v90 + 256) = 0;
  *(v90 + 264) = 0;
  *(v90 + 272) = 0;
  strcpy((v90 + 16), "durationText");
  *(v90 + 29) = 0;
  *(v90 + 30) = -5120;
  *(v90 + 144) = v97;
  *(v90 + 160) = v99;
  result = sub_9724(&v182, &v135);
  *a1 = v124;
  a1[1] = v123;
  a1[2] = v37;
  a1[3] = v51;
  a1[4] = v66;
  a1[5] = v76;
  a1[6] = v90;
  return result;
}

double sub_127C98(uint64_t a1, unsigned __int16 a2)
{
  v2 = a2 >> 13;
  if (v2 > 2)
  {
    if (qword_1C00C0 != -1)
    {
      v13 = a2;
      swift_once();
      a2 = v13;
    }

    v6 = *&qword_1D1980;
    bottom = 4.0;
    top = 4.0;
  }

  else
  {
    if (v2 == 1)
    {
      if (a2)
      {
        if (qword_1C00C8 != -1)
        {
          v14 = a2;
          swift_once();
          a2 = v14;
        }

        v3 = &qword_1CA2A8;
      }

      else
      {
        if (qword_1C00C0 != -1)
        {
          v15 = a2;
          swift_once();
          a2 = v15;
        }

        v3 = &qword_1D1978;
      }

      v6 = *(v3 + 1);
      bottom = 4.0;
      v7 = 0.0;
      if ((a2 & 0x100) != 0)
      {
        if (qword_1C00D0 != -1)
        {
          swift_once();
        }

        sub_144DCC();
        sub_141AAC();
        sub_144DCC();
        sub_141AAC();
        v6 = v6 - v8;
      }

      top = 4.0;
      goto LABEL_28;
    }

    top = UIEdgeInsetsZero.top;
    bottom = UIEdgeInsetsZero.bottom;
    v6 = 0.0;
  }

  v7 = 0.0;
  if (v2 <= 2)
  {
    if (qword_1C00C0 != -1)
    {
      swift_once();
    }

    v7 = *&qword_1D1980;
  }

  else if (v2 != 3 && a2 != 0x8000)
  {
    if (a2 == 32769)
    {
      return 55.0;
    }

    else
    {
      return 68.0;
    }
  }

LABEL_28:
  v9 = [objc_opt_self() sharedApplication];
  v10 = [v9 preferredContentSizeCategory];

  v11 = _UIContentSizeCategoryCompareToContentSizeCategory();
  if (v11 != 1 && ((sub_144F5C() & 1) == 0 || (sub_141AFC() & 1) == 0 || (sub_141AFC() & 1) == 0 || (sub_141AFC() & 1) == 0 || (sub_141AFC() & 1) == 0) && v7 <= bottom + top + v6)
  {
    return bottom + top + v6;
  }

  return v7;
}

double sub_127FEC(void *a1, unsigned __int16 a2, double a3)
{
  sub_127018(v15);
  sub_127C98(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4880);
  inited = swift_initStackObject();
  *(inited + 32) = v15[1];
  *(inited + 16) = xmmword_14D1E0;
  *(inited + 40) = v15[4];

  sub_555F8(inited, a1, 0xD000000000000019, 0x80000000001686A0);
  swift_setDeallocating();
  swift_arrayDestroy();
  v7 = objc_opt_self();
  v8 = [v7 sharedApplication];
  v9 = [v8 preferredContentSizeCategory];

  LODWORD(v8) = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();
  if (v8 && ((a2 >> 13) > 2u || a2 >> 13 == 1) && (v10 = [v7 sharedApplication], v11 = objc_msgSend(v10, "preferredContentSizeCategory"), v10, v12 = _UIContentSizeCategoryCompareToContentSizeCategory(), v11, v12 == 1) && objc_msgSend(a1, "horizontalSizeClass") == &dword_0 + 1)
  {
    sub_126C10(a2, v14);
    sub_1288A0(v15);
  }

  else
  {
    sub_1288A0(v15);
  }

  return a3;
}

void sub_128214()
{
  v1 = (v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_title);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_artistName);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_albumTitle);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_duration) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_forceDurationHidden) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_isProminentItem) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_isExplicit) = 0;
  v4 = v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_popularity;
  *v4 = 0;
  *(v4 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_badgeArtworkCatalog) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_supportsLibraryAddKeepLocalButton) = 1;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_requiresLibraryAddKeepLocalButtonSpacing) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_layoutStyle) = 24576;
  v5 = v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_trackNumber;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_maximumTrackNumberForSizing;
  *v6 = 0;
  *(v6 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_wantsNowPlayingIndicator) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_wantsAddButton) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_isAddButtonSelected) = 0;
  v7 = (v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_addButtonHandler);
  *v7 = 0;
  v7[1] = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_playbackState) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell____lazy_storage___badgeArtworkBackgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell____lazy_storage___badgeArtworkComponent) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_trackNumberTextDrawingView) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_titleTextDrawingView) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_explicitBadgeTextDrawingView) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_popularityBadgeTextDrawingView) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_artistTextDrawingView) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_albumTextDrawingView) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_durationTextDrawingView) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_trackNumberTextStackView) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_explicitBadgeTextStackView) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_popularityBadgeTextStackView) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_nowPlayingIndicatorView) = 0;
  v8 = v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_textComponents;
  sub_127018(v10);
  v9 = v10[1];
  *v8 = v10[0];
  *(v8 + 16) = v9;
  *(v8 + 32) = v10[2];
  *(v8 + 48) = v11;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_darkerSystemColorsNotificationObserver) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell____lazy_storage___addButton) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_chevronImageView) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_musicVideoGlyphImageView) = 0;
  sub_1452FC();
  __break(1u);
}

id sub_128488(void *a1)
{
  v2 = v1;
  result = [a1 horizontalSizeClass];
  if (result)
  {
    v11 = *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_textComponents];
    v12 = *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_textComponents + 16];
    v13 = *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_textComponents + 32];
    v14 = *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_textComponents + 48];
    sub_124C48(a1, 1, v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_isProminentItem], *&v1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_layoutStyle]);
    v5 = [v1 contentView];
    [v5 addSubview:*&v2[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_textStackView]];

    v6 = *&v2[OBJC_IVAR____TtC12NowPlayingUI8SongCell_trackNumberTextDrawingView];
    if (v6)
    {
      [v6 removeFromSuperview];
    }

    v7 = *&v2[OBJC_IVAR____TtC12NowPlayingUI8SongCell_titleTextDrawingView];
    if (v7)
    {
      [v7 removeFromSuperview];
    }

    v8 = *&v2[OBJC_IVAR____TtC12NowPlayingUI8SongCell_artistTextDrawingView];
    if (v8)
    {
      [v8 removeFromSuperview];
    }

    v9 = *&v2[OBJC_IVAR____TtC12NowPlayingUI8SongCell_albumTextDrawingView];
    if (v9)
    {
      [v9 removeFromSuperview];
    }

    v10 = *&v2[OBJC_IVAR____TtC12NowPlayingUI8SongCell_explicitBadgeTextDrawingView];
    if (v10)
    {
      [v10 removeFromSuperview];
    }

    result = *&v2[OBJC_IVAR____TtC12NowPlayingUI8SongCell_popularityBadgeTextDrawingView];
    if (result)
    {

      return [result removeFromSuperview];
    }
  }

  return result;
}

void sub_128608()
{
  [v0 setNeedsLayout];
  v1 = *&v0[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_layoutInvalidationHandler];
  if (v1)
  {

    v1(v0);
    sub_2173C(v1);
  }

  v2 = *&v0[OBJC_IVAR____TtC12NowPlayingUI8SongCell_textComponents + 8];
  v3 = objc_opt_self();
  v4 = [v3 sharedApplication];
  v5 = [v4 preferredContentSizeCategory];

  LODWORD(v4) = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();
  v6 = 3;
  if (!v4)
  {
    v6 = 1;
  }

  *(v2 + 96) = v6;
  sub_54768();
  if (qword_1C00C0 != -1)
  {
    swift_once();
  }

  v7 = [v3 sharedApplication];
  v8 = [v7 preferredContentSizeCategory];

  v9 = _UIContentSizeCategoryCompareToContentSizeCategory();
  if (v9 == 1)
  {
    v10 = sub_13EA2C(UIContentSizeCategoryAccessibilityMedium, UIFontTextStyleBody, 48.0);
  }

  else
  {
    v10 = 48.0;
  }

  v11 = [v3 sharedApplication];
  v12 = [v11 preferredContentSizeCategory];

  v13 = _UIContentSizeCategoryCompareToContentSizeCategory();
  if (v13 == 1)
  {
    v14 = sub_13EA2C(UIContentSizeCategoryAccessibilityMedium, UIFontTextStyleBody, 48.0);
  }

  else
  {
    v14 = 48.0;
  }

  qword_1D1978 = *&v10;
  qword_1D1980 = *&v14;

  sub_124518();
}

uint64_t sub_128958@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_140D5C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NowPlayingPlaybackControlsWrapper(0);
  __chkstk_darwin(v7);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 40);
  (*(v4 + 104))(v6, enum case for NowPlayingPlayerStyle.fullScreen(_:), v3);
  if (qword_1BFFD8 != -1)
  {
    swift_once();
  }

  v11 = sub_14138C();
  v12 = __swift_project_value_buffer(v11, qword_1D1800);
  (*(*(v11 - 8) + 16))(v9, v12, v11);
  v9[*(v7 + 24)] = 1;
  v13 = &v9[*(v7 + 20)];
  v14 = type metadata accessor for NowPlayingPlaybackControlsWrapper.ContentView(0);
  (*(v4 + 16))(&v13[v14[6]], v6, v3);
  sub_1421BC();
  sub_1446DC();
  (*(v4 + 8))(v6, v3);
  v15 = v22;
  *v13 = v10;
  *(v13 + 1) = *(v10 + 16);
  v13[v14[7]] = 0;
  *&v13[v14[8]] = v15;
  sub_12AFD4(v13, a1, type metadata accessor for NowPlayingPlaybackControlsWrapper.ContentView);

  sub_12AF74(v9, type metadata accessor for NowPlayingPlaybackControlsWrapper);
  type metadata accessor for CGSize(0);
  v21[1] = 0;
  v21[2] = 0;
  sub_143CAC();
  v16 = v22;
  v17 = v23;
  v18 = v24;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2640);
  v20 = (a1 + *(result + 36));
  *v20 = v16;
  v20[1] = v17;
  v20[2] = v18;
  return result;
}

uint64_t sub_128C38@<X0>(uint64_t a1@<X8>)
{
  v22[1] = a1;
  v23 = sub_1432AC();
  v2 = *(v23 - 8);
  __chkstk_darwin(v23);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NowPlayingSleepTimer(0);
  __chkstk_darwin(v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2658);
  __chkstk_darwin(v8);
  v10 = v22 - v9;
  v11 = *(v1 + 32);
  v12 = *(v5 + 20);
  if (qword_1BFF28 != -1)
  {
    swift_once();
  }

  v13 = sub_14138C();
  v14 = __swift_project_value_buffer(v13, qword_1D17A0);
  (*(*(v13 - 8) + 16))(&v7[v12], v14, v13);
  v7[*(v5 + 24)] = 1;
  sub_1421BC();
  sub_1446DC();
  v15 = v24;
  type metadata accessor for NowPlayingSleepTimer.ViewModel(0);
  sub_12AE74(&qword_1C5AA0, type metadata accessor for NowPlayingSleepTimer.ViewModel);

  v16 = sub_142B9C();
  v18 = v17;
  *v7 = v15;
  *(v7 + 1) = v11;
  *(v7 + 2) = v16;
  *(v7 + 3) = v17;
  *(v7 + 16) = 0;

  sub_12AF74(v7, type metadata accessor for NowPlayingSleepTimer);
  v19 = &v10[*(v8 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2678);
  sub_142D5C();
  *v19 = xmmword_155A60;
  v19[16] = 0;
  *v10 = v15;
  *(v10 + 1) = v11;
  *(v10 + 2) = v16;
  *(v10 + 3) = v18;
  *(v10 + 16) = 0;
  sub_142D9C();
  sub_4352C();
  sub_12AE74(&unk_1C2680, &type metadata accessor for AutomaticHoverEffect);
  v20 = v23;
  sub_1438CC();
  (*(v2 + 8))(v4, v20);
  return sub_15340(v10, &qword_1C2658);
}

uint64_t sub_128FCC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12NowPlayingUI29NowPlayingTransportController_preferredJumpInterval;
  swift_beginAccess();
  return sub_1D19C(v1 + v3, a1, &qword_1C22F0);
}

__n128 sub_129034@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 72);
  *a1 = *(v1 + 56);
  *(a1 + 16) = v3;
  result = *(v1 + 88);
  *(a1 + 32) = result;
  *(a1 + 48) = v2;
  return result;
}

uint64_t sub_129054(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6840);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_14151C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_140ABC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 48);
  if (v13 == 2)
  {
    sub_14159C();
    (*(v6 + 56))(v4, 1, 1, v5);
    sub_14156C();
  }

  else
  {
    sub_140AAC();
    sub_140A4C();
    (*(v10 + 8))(v12, v9);
    if ((v13 & 0x100) == 0)
    {
      sub_1421EC();
    }

    sub_1414FC();
    sub_14159C();
    (*(v6 + 16))(v4, v8, v5);
    (*(v6 + 56))(v4, 0, 1, v5);
    sub_14156C();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_12934C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA4F0);
  v3 = __chkstk_darwin(v2 - 8);
  v53 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v50 = &v44 - v5;
  v52 = sub_14167C();
  v45 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_141CEC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C22F0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v44 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA4F8);
  v18 = __chkstk_darwin(v17 - 8);
  v49 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v44 - v20;
  v22 = sub_14164C();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v54 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  v25 = a1;
  v26 = v8;
  sub_1D19C(v25, v16, &qword_1C22F0);
  v27 = *(v8 + 48);
  v28 = v27(v16, 1, v7);
  v46 = v10;
  v47 = v26;
  if (v28 == 1)
  {
    (*(v23 + 56))(v21, 1, 1, v22);
  }

  else
  {
    (*(v26 + 32))(v10, v16, v7);
    sub_141CDC();
    sub_14162C();
    (*(v26 + 8))(v10, v7);
  }

  v29 = *(v23 + 48);
  v30 = v29(v21, 1, v22);
  v31 = v45;
  if (v30 == 1)
  {
    sub_14163C();
    v32 = v29(v21, 1, v22);
    v33 = v50;
    if (v32 != 1)
    {
      sub_15340(v21, &qword_1CA4F8);
    }
  }

  else
  {
    (*(v23 + 32))(v54, v21, v22);
    v33 = v50;
  }

  sub_1D19C(v48, v14, &qword_1C22F0);
  v34 = v27(v14, 1, v7);
  v36 = v46;
  v35 = v47;
  if (v34 == 1)
  {
    v37 = v52;
    (*(v31 + 56))(v33, 1, 1, v52);
  }

  else
  {
    (*(v47 + 32))(v46, v14, v7);
    sub_141CCC();
    sub_14165C();
    (*(v35 + 8))(v36, v7);
    v37 = v52;
  }

  v38 = v51;
  v39 = *(v31 + 48);
  if (v39(v33, 1, v37) == 1)
  {
    sub_14166C();
    if (v39(v33, 1, v37) != 1)
    {
      sub_15340(v33, &qword_1CA4F0);
    }
  }

  else
  {
    (*(v31 + 32))(v38, v33, v37);
  }

  v40 = v49;
  v41 = v54;
  (*(v23 + 16))(v49, v54, v22);
  (*(v23 + 56))(v40, 0, 1, v22);
  sub_1415FC();
  v42 = v53;
  (*(v31 + 16))(v53, v38, v37);
  (*(v31 + 56))(v42, 0, 1, v37);
  sub_14161C();
  (*(v31 + 8))(v38, v37);
  return (*(v23 + 8))(v41, v22);
}

uint64_t sub_1299E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C16E0);
  __chkstk_darwin(v0 - 8);
  v2 = v14 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7860);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA4E0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - v9;
  sub_1421FC();
  sub_20FCC();
  v11 = sub_144D8C();
  v14[1] = v11;
  v12 = sub_144D3C();
  (*(*(v12 - 8) + 56))(v2, 1, 1, v12);
  sub_1D4A4(&qword_1C78A8, &qword_1C7860);
  sub_12AE74(&qword_1C1740, sub_20FCC);
  sub_14283C();
  sub_15340(v2, &qword_1C16E0);

  (*(v4 + 8))(v6, v3);
  swift_allocObject();
  swift_weakInit();
  sub_1D4A4(&qword_1CA4E8, &qword_1CA4E0);
  sub_14289C();

  (*(v8 + 8))(v10, v7);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1910);
  sub_1D4A4(&qword_1C1918, &qword_1C1910);
  sub_14258C();
  swift_endAccess();
}

uint64_t sub_129DD0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 72);
    v2[0] = *(result + 56);
    v2[1] = v1;
    v2[2] = *(result + 88);
    v3 = *(result + 104);
    sub_129054(v2);
  }

  return result;
}

uint64_t sub_129E48()
{

  sub_15340(v0 + OBJC_IVAR____TtC12NowPlayingUI29NowPlayingTransportController_preferredJumpInterval, &qword_1C22F0);

  return v0;
}

uint64_t sub_129EC8()
{
  sub_129E48();

  return swift_deallocClassInstance();
}

void sub_129F48()
{
  sub_12B1F4(319, &unk_1CA3F8, &type metadata accessor for PlaybackController.PreferredJumpInterval, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_12A05C()
{
  result = qword_1CA4B8;
  if (!qword_1CA4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA4B8);
  }

  return result;
}

uint64_t sub_12A0B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA4C0);
  __chkstk_darwin(v0);
  v2 = (&v12 - v1);
  v3 = type metadata accessor for SyncingLabelView(0);
  __chkstk_darwin(v3);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_1421EC())
  {
    *v5 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F70);
    swift_storeEnumTagMultiPayload();
    sub_12AFD4(v5, v2, type metadata accessor for SyncingLabelView);
    swift_storeEnumTagMultiPayload();
    sub_12AE74(&qword_1CA4D0, type metadata accessor for SyncingLabelView);
    sub_12AEBC();
    sub_14329C();
    return sub_12AF74(v5, type metadata accessor for SyncingLabelView);
  }

  else
  {

    sub_14159C();
    type metadata accessor for NowPlayingSleepTimerRemaining.ViewModel();
    sub_12AE74(&qword_1CA4C8, type metadata accessor for NowPlayingSleepTimerRemaining.ViewModel);
    v7 = sub_142B9C();
    v9 = v8;
    sub_14157C();
    sub_12AE74(&qword_1C0E90, &type metadata accessor for NowPlayingViewModel.PlaybackPosition);
    v10 = sub_142B9C();
    *v2 = v7;
    v2[1] = v9;
    v2[2] = v10;
    v2[3] = v11;
    swift_storeEnumTagMultiPayload();
    sub_12AE74(&qword_1CA4D0, type metadata accessor for SyncingLabelView);
    sub_12AEBC();
    return sub_14329C();
  }
}

uint64_t sub_12A3C0@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v1 = sub_142BEC();
  v62 = *(v1 - 8);
  v63 = v1;
  __chkstk_darwin(v1);
  v61 = v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0EE8);
  __chkstk_darwin(v54);
  v53[1] = v53 - v3;
  v57 = sub_14317C();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v55 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v53 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6868);
  v59 = *(v8 - 8);
  v60 = v8;
  __chkstk_darwin(v8);
  v58 = v53 - v9;
  sub_1430EC();
  v10 = sub_1437DC();
  v12 = v11;
  v14 = v13;
  sub_14371C();
  sub_14369C();

  v15 = sub_1437CC();
  v17 = v16;
  v19 = v18;

  sub_1B4AC(v10, v12, v14 & 1);

  sub_1436DC();
  v20 = sub_14376C();
  v22 = v21;
  v24 = v23;
  sub_1B4AC(v15, v17, v19 & 1);

  sub_FA518(v7);
  v25 = v56;
  v26 = v55;
  v27 = v57;
  (*(v56 + 104))(v55, enum case for ColorSchemeContrast.standard(_:), v57);
  v28 = v26;
  LOBYTE(v26) = sub_14316C();
  v29 = *(v25 + 8);
  v29(v28, v27);
  v29(v7, v27);
  if (v26)
  {
    sub_14295C();
    swift_getOpaqueTypeConformance2();
  }

  else
  {
    v65 = sub_143C0C();
  }

  v65 = sub_142AAC();
  v30 = sub_14378C();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_1B4AC(v20, v22, v24 & 1);

  v65 = v30;
  v66 = v32;
  v37 = v34 & 1;
  v67 = v34 & 1;
  v68 = v36;
  v39 = v61;
  v38 = v62;
  v40 = v63;
  (*(v62 + 104))(v61, enum case for DynamicTypeSize.large(_:), v63);
  v41 = v58;
  sub_14398C();
  (*(v38 + 8))(v39, v40);
  sub_1B4AC(v30, v32, v37);

  LOBYTE(v36) = sub_14364C();
  sub_14290C();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = v64;
  (*(v59 + 32))(v64, v41, v60);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6870);
  v52 = v50 + *(result + 36);
  *v52 = v36;
  *(v52 + 8) = v43;
  *(v52 + 16) = v45;
  *(v52 + 24) = v47;
  *(v52 + 32) = v49;
  *(v52 + 40) = 0;
  return result;
}

uint64_t sub_12A964@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v29 = a1;
  v32 = a3;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA5A8);
  __chkstk_darwin(v30);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v27 - v7;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA5B0);
  __chkstk_darwin(v31);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA5B8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA5C0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v27 - v17;
  if (a2)
  {
    v19 = v29;
    v20 = v30;
    v28 = v15;
    if ((a2 & 0x100) != 0)
    {
      v33 = sub_143B9C();
    }

    else
    {
      LODWORD(v33) = sub_14338C();
    }

    v24 = sub_142AAC();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA5C8);
    (*(*(v25 - 8) + 16))(v5, v19, v25);
    *&v5[*(v20 + 36)] = v24;
    sub_12B4B4(v5, v8);
    sub_1D19C(v8, v10, &qword_1CA5A8);
    swift_storeEnumTagMultiPayload();
    v26 = sub_1D4A4(&qword_1CA5D0, &qword_1CA5C8);
    v33 = v25;
    v34 = v26;
    swift_getOpaqueTypeConformance2();
    sub_12B524();
    sub_14329C();
    return sub_15340(v8, &qword_1CA5A8);
  }

  else
  {
    LODWORD(v28) = (a2 >> 8) & 1;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA5C8);
    v22 = sub_1D4A4(&qword_1CA5D0, &qword_1CA5C8);
    sub_14381C();
    sub_1412AC();
    (*(v12 + 8))(v14, v11);
    (*(v16 + 16))(v10, v18, v15);
    swift_storeEnumTagMultiPayload();
    v33 = v21;
    v34 = v22;
    swift_getOpaqueTypeConformance2();
    sub_12B524();
    sub_14329C();
    return (*(v16 + 8))(v18, v15);
  }
}

uint64_t sub_12AE1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (v2[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_12A964(a1, v3 | *v2, a2);
}

uint64_t sub_12AE74(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_12AEBC()
{
  result = qword_1CA4D8;
  if (!qword_1CA4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA4D8);
  }

  return result;
}

uint64_t sub_12AF34()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_12AF74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_12AFD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_12B050(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F78);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_12B0DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F78);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_12B158()
{
  sub_12B1F4(319, &unk_1C0FF0, &type metadata accessor for ColorSchemeContrast, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_12B1F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_12B25C()
{
  result = qword_1CA590;
  if (!qword_1CA590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1CA598);
    sub_12AE74(&qword_1CA4D0, type metadata accessor for SyncingLabelView);
    sub_12AEBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA590);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NowPlayingTransportController.ActiveAccessoryIndicator.Modifier(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

unint64_t sub_12B3DC()
{
  result = qword_1CA5A0;
  if (!qword_1CA5A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C6870);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA5A0);
  }

  return result;
}

uint64_t sub_12B4B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA5A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_12B524()
{
  result = qword_1CA5D8;
  if (!qword_1CA5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1CA5A8);
    sub_1D4A4(&qword_1CA5D0, &qword_1CA5C8);
    sub_1D4A4(&unk_1C2730, &qword_1C12B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA5D8);
  }

  return result;
}

unint64_t sub_12B60C()
{
  result = qword_1CA5E0;
  if (!qword_1CA5E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1CA5E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1CA5C8);
    sub_1D4A4(&qword_1CA5D0, &qword_1CA5C8);
    swift_getOpaqueTypeConformance2();
    sub_12B524();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA5E0);
  }

  return result;
}

unint64_t sub_12B708(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_138448(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = sub_F7FAC(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_139718();
        v11 = v13;
      }

      result = sub_13780C(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

uint64_t sub_12B7C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_138AA4(a1, a2, isUniquelyReferenced_nonNull_native);
    result = sub_13CA60(a2);
    *v2 = v14;
  }

  else
  {
    v8 = sub_F8108(a2);
    v10 = v9;
    result = sub_13CA60(a2);
    if (v10)
    {
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v3;
      v15 = *v3;
      if (!v11)
      {
        sub_139E14();
        v12 = v15;
      }

      v13 = *(v12 + 48) + 40 * v8;
      sub_13CA90(*v13, *(v13 + 8), *(v13 + 16), *(v13 + 24), *(v13 + 32));
      result = sub_13797C(v8, v12);
      *v3 = v12;
    }
  }

  return result;
}

uint64_t sub_12B8AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v5 = *(a5 + 16);
  if (v5)
  {
    v8 = 0;
    v9 = (a5 + 56);
    do
    {
      if (*(v9 - 3) == a1)
      {
        if (*v9)
        {
          if (a4)
          {
            return v8;
          }
        }

        else if (a4 & 1) == 0 && (sub_141AFC())
        {
          return v8;
        }
      }

      ++v8;
      v9 += 32;
    }

    while (v5 != v8);
  }

  return 0;
}

unint64_t sub_12B950(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_14531C();
  }

  else
  {
    v4 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = sub_1451FC();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_2B860(0, &qword_1C47C0);
    v8 = sub_144FFC();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

void sub_12BAAC()
{
  [v0 setContentInset:{*&v0[OBJC_IVAR____TtC12NowPlayingUI32CompositeComponentCollectionView__contentInset], *&v0[OBJC_IVAR____TtC12NowPlayingUI32CompositeComponentCollectionView__contentInset + 8], *&v0[OBJC_IVAR____TtC12NowPlayingUI32CompositeComponentCollectionView__contentInset + 16], *&v0[OBJC_IVAR____TtC12NowPlayingUI32CompositeComponentCollectionView__contentInset + 24]}];
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = &v0[OBJC_IVAR____TtC12NowPlayingUI32CompositeComponentCollectionView_componentReuseIdentifierAddition];
  if (Strong)
  {
    v26 = &v0[OBJC_IVAR____TtC12NowPlayingUI32CompositeComponentCollectionView_componentReuseIdentifierAddition];
    if (!*&v0[OBJC_IVAR____TtC12NowPlayingUI32CompositeComponentCollectionView_componentReuseIdentifierAddition + 8])
    {
      v3 = [objc_allocWithZone(NSUUID) init];
      v4 = [v3 UUIDString];

      v5 = sub_1448DC();
      v7 = v6;

      *v26 = v5;
      v26[1] = v7;
    }

    v8 = OBJC_IVAR____TtC12NowPlayingUI32CompositeComponentCollectionView_registeredReusableViewClasses;
    swift_beginAccess();
    v9 = *&v0[v8];
    v10 = v9 + 64;
    v11 = 1 << *(v9 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v9 + 64);
    v14 = (v11 + 63) >> 6;
    v27 = v9;

    v15 = 0;
    v25 = Strong;
    while (v13)
    {
LABEL_15:
      v19 = *(v27 + 48) + 40 * (__clz(__rbit64(v13)) | (v15 << 6));
      v21 = *v19;
      v20 = *(v19 + 8);
      v22 = *(v19 + 24);
      v28 = *(v19 + 16);
      if (*(v19 + 32))
      {

        v23 = sub_14489C();
        if (v26[1])
        {

          v30._countAndFlagsBits = 45;
          v30._object = 0xE100000000000000;
          sub_14494C(v30);

          v31._countAndFlagsBits = v21;
          v31._object = v20;
          sub_14494C(v31);
        }

        else
        {
        }

        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v17 = sub_14489C();

        [v25 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v23 withReuseIdentifier:v17];
        sub_13CA90(v21, v20, v28, v22, 1);

        Strong = v25;
      }

      else
      {
        if (v26[1])
        {
          sub_13CAE0(v21, v20, *(v19 + 16), v22, 0);

          v32._countAndFlagsBits = 45;
          v32._object = 0xE100000000000000;
          sub_14494C(v32);

          v33._countAndFlagsBits = v21;
          v33._object = v20;
          sub_14494C(v33);
        }

        else
        {
          swift_bridgeObjectRetain_n();
        }

        v24 = swift_getObjCClassFromMetadata();
        v17 = sub_14489C();

        Strong = v25;
        [v25 registerClass:v24 forCellWithReuseIdentifier:v17];
        sub_13CA90(v21, v20, v28, v22, 0);
      }

      v13 &= v13 - 1;
    }

    while (1)
    {
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v18 >= v14)
      {

        return;
      }

      v13 = *(v10 + 8 * v18);
      ++v15;
      if (v13)
      {
        v15 = v18;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    *v2 = 0;
    *(v2 + 1) = 0;
  }
}

void sub_12C080(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [Strong *a4];
  }

  else
  {
    v9.receiver = a1;
    v9.super_class = type metadata accessor for CompositeComponentCollectionView();
    objc_msgSendSuper2(&v9, *a4, a3);
  }
}

void sub_12C128(void *a1, SEL *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v8 = Strong;
  v6 = [a1 superview];
  if (!v6 || (v7 = v6, v6, v7 != v8))
  {

LABEL_5:
    v9.receiver = v2;
    v9.super_class = type metadata accessor for CompositeComponentCollectionView();
    objc_msgSendSuper2(&v9, *a2, a1);
    return;
  }

  [v8 *a2];
}

void sub_12C270(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = a1;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v9 = sub_14489C();
  v13.receiver = v4;
  v13.super_class = type metadata accessor for CompositeComponentCollectionView();
  objc_msgSendSuper2(&v13, "registerClass:forCellWithReuseIdentifier:", ObjCClassFromMetadata, v9);

  v14[0] = a2;
  v14[1] = a3;
  v14[2] = 0;
  v14[3] = 0;
  v15 = 0;
  swift_beginAccess();

  sub_12B7C8(v7, v14);
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (v7)
    {
      v7 = swift_getObjCClassFromMetadata();
    }

    if (*&v4[OBJC_IVAR____TtC12NowPlayingUI32CompositeComponentCollectionView_componentReuseIdentifierAddition + 8])
    {

      v16._countAndFlagsBits = 45;
      v16._object = 0xE100000000000000;
      sub_14494C(v16);

      v17._countAndFlagsBits = a2;
      v17._object = a3;
      sub_14494C(v17);
    }

    else
    {
    }

    v12 = sub_14489C();

    [v11 registerClass:v7 forCellWithReuseIdentifier:v12];
  }
}

void sub_12C4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v11 = a1;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v13 = sub_14489C();
  v14 = sub_14489C();
  v19.receiver = v6;
  v19.super_class = type metadata accessor for CompositeComponentCollectionView();
  objc_msgSendSuper2(&v19, "registerClass:forSupplementaryViewOfKind:withReuseIdentifier:", ObjCClassFromMetadata, v13, v14);

  v20[0] = a4;
  v20[1] = a5;
  v20[2] = a2;
  v20[3] = a3;
  v21 = 1;
  swift_beginAccess();

  sub_12B7C8(v11, v20);
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if (v11)
    {
      v11 = swift_getObjCClassFromMetadata();
    }

    v17 = sub_14489C();
    if (*&v6[OBJC_IVAR____TtC12NowPlayingUI32CompositeComponentCollectionView_componentReuseIdentifierAddition + 8])
    {

      v22._countAndFlagsBits = 45;
      v22._object = 0xE100000000000000;
      sub_14494C(v22);

      v23._countAndFlagsBits = a4;
      v23._object = a5;
      sub_14494C(v23);
    }

    else
    {
    }

    v18 = sub_14489C();

    [v16 registerClass:v11 forSupplementaryViewOfKind:v17 withReuseIdentifier:v18];
  }
}

uint64_t sub_12C748(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_140C2C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v13 = Strong;
  if ((*(Strong + OBJC_IVAR____TtC12NowPlayingUI23CompositeCollectionView_isPerformingBatchUpdates) & 1) != 0 || (v14 = type metadata accessor for CompositeCollectionView(), v44.receiver = v13, v44.super_class = v14, (v15 = objc_msgSendSuper2(&v44, "dataSource")) == 0))
  {

LABEL_10:
    v24 = sub_14489C();
    isa = sub_140B9C().super.isa;
    v26 = type metadata accessor for CompositeComponentCollectionView();
    v45.receiver = v4;
    v45.super_class = v26;
    v27 = objc_msgSendSuper2(&v45, "dequeueReusableCellWithReuseIdentifier:forIndexPath:", v24, isa);

    return v27;
  }

  v16 = v15;
  type metadata accessor for CompositeCollectionViewController();
  v17 = swift_dynamicCastClass();
  if (!v17 || (v18 = v17, (v41 = sub_FE54(v4)) == 0))
  {

    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v37 = v21;
  v38 = v19;
  v39 = v20;
  v40 = *(v18 + OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_countData);

  v22 = sub_140C0C();
  v36 = v16;
  if (v22 == 2)
  {
    v23 = sub_140BFC();
  }

  else if (v22 <= 0)
  {
    v23 = sub_14093C();
  }

  else
  {
    v23 = sub_140C3C();
  }

  v29 = v23;
  result = sub_9EA88(v41, v38, v39, v37 & 1);
  v39 = v29 + result;
  if (!__OFADD__(v29, result))
  {
    v30 = sub_140C0C();
    if (v30 == 2)
    {
      v31 = sub_140BFC();
    }

    else if (v30 <= 0)
    {
      v31 = sub_14093C();
    }

    else
    {
      v31 = sub_140C3C();
    }

    if (v39 == v31)
    {

      (*(v9 + 16))(v11, a3, v8);
    }

    else
    {
      if (sub_140C0C() >= 2)
      {
        v32 = sub_140C0C();
        if (v32 == 2)
        {
          sub_140BEC();
        }

        else if (v32 <= 2)
        {
          sub_14093C();
        }

        else
        {
          sub_140C3C();
        }

        sub_140BDC();
      }

      else
      {
        sub_140C1C();
      }
    }

    v33 = *&v4[OBJC_IVAR____TtC12NowPlayingUI32CompositeComponentCollectionView_componentReuseIdentifierAddition + 8];
    if (v33)
    {
      v42 = *&v4[OBJC_IVAR____TtC12NowPlayingUI32CompositeComponentCollectionView_componentReuseIdentifierAddition];
      v43 = v33;

      v46._countAndFlagsBits = 45;
      v46._object = 0xE100000000000000;
      sub_14494C(v46);

      v47._countAndFlagsBits = a1;
      v47._object = a2;
      sub_14494C(v47);
    }

    else
    {
    }

    v34 = sub_14489C();

    v35 = sub_140B9C().super.isa;
    v27 = [v13 dequeueReusableCellWithReuseIdentifier:v34 forIndexPath:{v35, v36}];
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    (*(v9 + 8))(v11, v8);
    return v27;
  }

  __break(1u);
  return result;
}

uint64_t sub_12CC78(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_140C2C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v17 = Strong;
  if ((*(Strong + OBJC_IVAR____TtC12NowPlayingUI23CompositeCollectionView_isPerformingBatchUpdates) & 1) != 0 || (v18 = type metadata accessor for CompositeCollectionView(), v58.receiver = v17, v58.super_class = v18, (v19 = objc_msgSendSuper2(&v58, "dataSource")) == 0))
  {

LABEL_9:
    v29 = sub_14489C();
    v30 = sub_14489C();
    isa = sub_140B9C().super.isa;
    v32 = type metadata accessor for CompositeComponentCollectionView();
    v59.receiver = v6;
    v59.super_class = v32;
    v33 = objc_msgSendSuper2(&v59, "dequeueReusableSupplementaryViewOfKind:withReuseIdentifier:forIndexPath:", v29, v30, isa);

    return v33;
  }

  v54 = v12;
  v55 = v13;
  v20 = v19;
  type metadata accessor for CompositeCollectionViewController();
  v21 = swift_dynamicCastClass();
  if (!v21 || (v22 = v21, v52 = v20, (v53 = sub_FE54(v6)) == 0))
  {

    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v26 = v25;
  v49 = v23;
  v50 = v24;
  v51 = *(v22 + OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_countData);

  v27 = sub_140C0C();
  if (v27 == 2)
  {
    v28 = sub_140BFC();
  }

  else if (v27 <= 0)
  {
    v28 = sub_14093C();
  }

  else
  {
    v28 = sub_140C3C();
  }

  v48 = v28;
  if (sub_1448DC() == a1 && v35 == a2)
  {

    goto LABEL_19;
  }

  v47 = sub_1453BC();

  if (v47)
  {
LABEL_19:
    v36 = sub_9E1E0();
    v37 = sub_12B8AC(v53, v49, v50, v26 & 1, v36);
    LODWORD(v50) = v38;

    if (v50)
    {
      v37 = 0;
    }

    goto LABEL_23;
  }

  result = sub_9EA88(v53, v49, v50, v26 & 1);
  v37 = v48 + result;
  if (__OFADD__(v48, result))
  {
    __break(1u);
    return result;
  }

LABEL_23:
  v39 = sub_140C0C();
  if (v39 != 2)
  {
    if (v39 <= 0)
    {
      if (v37 == sub_14093C())
      {
        goto LABEL_28;
      }
    }

    else if (v37 == sub_140C3C())
    {
      goto LABEL_28;
    }

LABEL_30:
    if (sub_140C0C() >= 2)
    {
      v40 = sub_140C0C();
      if (v40 == 2)
      {
        sub_140BEC();
      }

      else if (v40 <= 2)
      {
        sub_14093C();
      }

      else
      {
        sub_140C3C();
      }

      sub_140BDC();
    }

    else
    {
      sub_140C1C();
    }

    goto LABEL_39;
  }

  if (v37 != sub_140BFC())
  {
    goto LABEL_30;
  }

LABEL_28:

  (*(v55 + 16))(v15, a5, v54);
LABEL_39:
  v41 = sub_14489C();
  v42 = *&v6[OBJC_IVAR____TtC12NowPlayingUI32CompositeComponentCollectionView_componentReuseIdentifierAddition + 8];
  if (v42)
  {
    v56 = *&v6[OBJC_IVAR____TtC12NowPlayingUI32CompositeComponentCollectionView_componentReuseIdentifierAddition];
    v57 = v42;

    v60._countAndFlagsBits = 45;
    v60._object = 0xE100000000000000;
    sub_14494C(v60);

    v61._countAndFlagsBits = a3;
    v61._object = a4;
    sub_14494C(v61);
  }

  else
  {
  }

  v43 = sub_14489C();

  v44 = sub_140B9C().super.isa;
  v45 = [v17 dequeueReusableSupplementaryViewOfKind:v41 withReuseIdentifier:v43 forIndexPath:v44];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  (*(v55 + 8))(v15, v54);
  return v45;
}

void *sub_12D320()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D50);
  __chkstk_darwin(v1 - 8);
  v3 = v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v87 = v70 - v5;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D58);
  v6 = *(v94 - 8);
  __chkstk_darwin(v94);
  v74 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v77 = v70 - v9;
  __chkstk_darwin(v10);
  v76 = v70 - v11;
  v12 = sub_140C2C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v79 = v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v92 = v70 - v16;
  v81 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_35;
  }

  v18 = Strong;
  v78 = v3;
  v19 = type metadata accessor for CompositeCollectionView();
  v95.receiver = v18;
  v95.super_class = v19;
  v20 = v18;
  v21 = objc_msgSendSuper2(&v95, "dataSource");
  if (!v21)
  {

LABEL_35:
    v68 = type metadata accessor for CompositeComponentCollectionView();
    v96.receiver = v81;
    v96.super_class = v68;
    v20 = objc_msgSendSuper2(&v96, "indexPathsForVisibleItems");
    v67 = sub_1449DC();
    goto LABEL_36;
  }

  v22 = v21;
  type metadata accessor for CompositeCollectionViewController();
  if (!swift_dynamicCastClass())
  {

    swift_unknownObjectRelease();
    goto LABEL_35;
  }

  v23 = [v20 indexPathsForVisibleItems];

  v24 = sub_1449DC();
  v25 = *(v24 + 16);
  if (v25)
  {
    v70[1] = v22;
    v71 = v20;
    v27 = *(v13 + 16);
    v26 = v13 + 16;
    v84 = OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_countData;
    v85 = v27;
    v28 = (*(v26 + 64) + 32) & ~*(v26 + 64);
    v70[0] = v24;
    v72 = v28;
    v29 = v24 + v28;
    v93 = (v6 + 56);
    v80 = (v26 + 16);
    v83 = (v6 + 48);
    v75 = _swiftEmptyArrayStorage;
    v30 = (v26 - 8);
    v86 = v26;
    v89 = *(v26 + 56);
    v31 = v78;
    v32 = v87;
    v33 = v94;
    v34 = v92;
    v35 = v12;
    v91 = v12;
    v82 = v30;
    do
    {
      v85(v34, v29, v35);
      v36 = *v93;
      (*v93)(v31, 1, 1, v33);

      v37 = sub_140C0C();
      if (v37 == 2)
      {
        v38 = sub_140BFC();
      }

      else if (v37 <= 0)
      {
        v38 = sub_14093C();
      }

      else
      {
        v38 = sub_140C3C();
      }

      sub_9E3E8(v38, 0, 0, 0, v97);
      v39 = v97[0];
      if (v97[0])
      {
        v90 = v97[1];
        v40 = v97[2];
        v41 = v98;
        if (sub_140C0C() >= 2)
        {
          v43 = sub_140C0C();
          if (v43 == 2)
          {
            sub_140BEC();
          }

          else if (v43 <= 2)
          {
            sub_14093C();
          }

          else
          {
            sub_140C3C();
          }

          v42 = v79;
          sub_140BDC();
        }

        else
        {
          v42 = v79;
          sub_140C1C();
        }

        v31 = v78;
        sub_15340(v78, &qword_1C0D50);
        v44 = v94;
        v45 = *(v94 + 48);
        *v31 = v39;
        v33 = v44;
        *(v31 + 8) = v90;
        *(v31 + 16) = v40;
        *(v31 + 24) = v41 & 1;
        v46 = v42;
        v35 = v91;
        (*v80)(v31 + v45, v46, v91);
        v36(v31, 0, 1, v33);
        v32 = v87;
        v34 = v92;
      }

      else
      {

        v33 = v94;
      }

      sub_10358(v31, v32, &qword_1C0D50);
      if ((*v83)(v32, 1, v33) == 1)
      {
        (*v82)(v34, v35);
        sub_15340(v32, &qword_1C0D50);
      }

      else
      {
        v90 = v25;
        v47 = v76;
        sub_10358(v32, v76, &qword_1C0D58);
        v48 = v47;
        v49 = v33;
        v50 = v47;
        v51 = v77;
        sub_1D19C(v48, v77, &qword_1C0D58);
        v52 = *(v51 + 8);
        v53 = *(v49 + 48);
        ObjectType = swift_getObjectType();
        v55 = (*(v52 + 8))(ObjectType, v52);

        v35 = v91;
        swift_unknownObjectRelease();
        v56 = *v82;
        (*v82)((v51 + v53), v35);
        if (v55 == v81)
        {
          v73 = v56;
          sub_1D19C(v50, v74, &qword_1C0D58);
          swift_unknownObjectRelease();
          v57 = v75;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v57 = sub_135110(0, v57[2] + 1, 1, v57, &qword_1C6A70, &unk_152488, &type metadata accessor for IndexPath);
          }

          v58 = v94;
          v25 = v90;
          v59 = v57;
          v60 = v57[2];
          v75 = v59;
          v61 = v59[3];
          if (v60 >= v61 >> 1)
          {
            v75 = sub_135110(v61 > 1, v60 + 1, 1, v75, &qword_1C6A70, &unk_152488, &type metadata accessor for IndexPath);
          }

          v62 = *(v58 + 48);
          sub_15340(v50, &qword_1C0D58);
          v64 = v91;
          v63 = v92;
          v73(v92, v91);
          v65 = v75;
          v75[2] = v60 + 1;
          v35 = v64;
          v66 = v65 + v72 + v60 * v89;
          v34 = v63;
          v33 = v94;
          (*v80)(v66, v74 + v62, v64);
          v32 = v87;
        }

        else
        {
          sub_15340(v50, &qword_1C0D58);
          v34 = v92;
          v56(v92, v35);
          v33 = v94;
          v25 = v90;
        }
      }

      v29 += v89;
      --v25;
    }

    while (v25);
    swift_unknownObjectRelease();

    v20 = v71;
    v67 = v75;
  }

  else
  {
    swift_unknownObjectRelease();

    v67 = _swiftEmptyArrayStorage;
  }

LABEL_36:

  return v67;
}

void sub_12DCE8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D50);
  __chkstk_darwin(v1 - 8);
  v3 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v60 - v5;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D58);
  v7 = *(v82 - 8);
  __chkstk_darwin(v82);
  v63 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v60 - v10;
  v78 = sub_140C2C();
  v12 = *(v78 - 8);
  __chkstk_darwin(v78);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v77 = &v60 - v16;
  __chkstk_darwin(v17);
  v84 = &v60 - v18;
  v87 = _swiftEmptyArrayStorage;
  v72 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_41;
  }

  v20 = Strong;
  v64 = v14;
  v65 = v11;
  v21 = type metadata accessor for CompositeCollectionView();
  v85.receiver = v20;
  v85.super_class = v21;
  v22 = v20;
  v23 = objc_msgSendSuper2(&v85, "dataSource");
  if (!v23)
  {

LABEL_41:
    v58 = type metadata accessor for CompositeComponentCollectionView();
    v86.receiver = v72;
    v86.super_class = v58;
    v59 = objc_msgSendSuper2(&v86, "visibleCells");
    sub_2B860(0, &qword_1CA670);
    sub_1449DC();

    return;
  }

  v24 = v23;
  type metadata accessor for CompositeCollectionViewController();
  if (!swift_dynamicCastClass())
  {

    swift_unknownObjectRelease();
    goto LABEL_41;
  }

  v25 = [v22 visibleCells];

  sub_2B860(0, &qword_1CA670);
  v26 = sub_1449DC();

  if (v26 >> 62)
  {
    v27 = sub_14531C();
  }

  else
  {
    v27 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
  }

  v28 = v78;
  v29 = v84;
  if (!v27)
  {
LABEL_39:

    swift_unknownObjectRelease();

    return;
  }

  v60 = v24;
  if (v27 >= 1)
  {
    v30 = 0;
    v67 = OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_countData;
    v81 = (v12 + 32);
    v79 = v26 & 0xC000000000000001;
    v80 = (v7 + 56);
    v66 = (v7 + 48);
    v74 = (v12 + 8);
    v61 = _swiftEmptyArrayStorage;
    v31 = v82;
    v71 = v6;
    v70 = v22;
    v69 = v26;
    v68 = v27;
    v62 = v3;
    do
    {
      if (v79)
      {
        v32 = sub_1451FC();
      }

      else
      {
        v32 = *(v26 + 8 * v30 + 32);
      }

      v33 = v32;
      v34 = [v22 indexPathForCell:{v32, v60}];
      if (v34)
      {
        v83 = v33;
        v35 = v31;
        v36 = v77;
        v37 = v34;
        sub_140BAC();

        v38 = *v81;
        v39 = v28;
        (*v81)(v29, v36, v28);
        v40 = *v80;
        (*v80)(v3, 1, 1, v35);

        v41 = sub_140C0C();
        if (v41 == 2)
        {
          v42 = sub_140BFC();
        }

        else if (v41 <= 0)
        {
          v42 = sub_14093C();
        }

        else
        {
          v42 = sub_140C3C();
        }

        sub_9E3E8(v42, 0, 0, 0, v88);
        v43 = v88[0];
        if (v88[0])
        {
          v44 = v88[1];
          v75 = v88[2];
          v76 = v89;
          if (sub_140C0C() >= 2)
          {
            v46 = sub_140C0C();
            if (v46 == 2)
            {
              sub_140BEC();
            }

            else if (v46 <= 2)
            {
              sub_14093C();
            }

            else
            {
              sub_140C3C();
            }

            v45 = v64;
            sub_140BDC();
          }

          else
          {
            v45 = v64;
            sub_140C1C();
          }

          sub_15340(v3, &qword_1C0D50);
          v31 = v82;
          v47 = *(v82 + 48);
          *v3 = v43;
          *(v3 + 1) = v44;
          *(v3 + 2) = v75;
          v3[24] = v76 & 1;
          v39 = v78;
          v38(&v3[v47], v45);
          v40(v3, 0, 1, v31);
        }

        else
        {

          v31 = v82;
        }

        v48 = v71;
        sub_10358(v3, v71, &qword_1C0D50);
        if ((*v66)(v48, 1, v31) == 1)
        {
          v29 = v84;
          (*v74)(v84, v39);

          v28 = v39;
          sub_15340(v48, &qword_1C0D50);
          v22 = v70;
          v26 = v69;
          v27 = v68;
        }

        else
        {
          v49 = v65;
          sub_10358(v48, v65, &qword_1C0D58);
          v50 = v63;
          sub_1D19C(v49, v63, &qword_1C0D58);
          v51 = *(v50 + 8);
          v52 = *(v31 + 48);
          ObjectType = swift_getObjectType();
          v54 = (*(v51 + 8))(ObjectType, v51);

          swift_unknownObjectRelease();
          v55 = *v74;
          v56 = v78;
          (*v74)((v50 + v52), v78);
          if (v54 == v72)
          {
            v57 = v83;
            sub_1449BC();
            v26 = v69;
            if (*(&dword_10 + (v87 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v87 & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              sub_1449FC();
              v56 = v78;
            }

            sub_144A2C();

            sub_15340(v65, &qword_1C0D58);
            v29 = v84;
            v28 = v56;
            v55(v84, v56);
            v61 = v87;
            v22 = v70;
            v31 = v82;
            v27 = v68;
            v3 = v62;
          }

          else
          {

            sub_15340(v49, &qword_1C0D58);
            v29 = v84;
            v55(v84, v56);
            v22 = v70;
            v26 = v69;
            v31 = v82;
            v27 = v68;
            v3 = v62;
            v28 = v56;
          }
        }
      }

      else
      {
      }

      ++v30;
    }

    while (v27 != v30);
    goto LABEL_39;
  }

  __break(1u);
}

void sub_12E680(uint64_t a1, SEL *a2)
{
  v5 = sub_140C2C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v64 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v63 = &v50 - v9;
  __chkstk_darwin(v10);
  v12 = &v50 - v11;
  isa = sub_1449CC().super.isa;
  v14 = type metadata accessor for CompositeComponentCollectionView();
  v66.receiver = v2;
  v66.super_class = v14;
  objc_msgSendSuper2(&v66, *a2, isa);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = type metadata accessor for CompositeCollectionView();
    v65.receiver = v16;
    v65.super_class = v17;
    v18 = objc_msgSendSuper2(&v65, "dataSource");
    if (v18)
    {
      v19 = v18;
      type metadata accessor for CompositeCollectionViewController();
      v20 = swift_dynamicCastClass();
      if (!v20 || (v21 = v20, v22 = sub_FE54(v2), v59 = v24, v60 = v25, (v61 = v22) == 0))
      {

        swift_unknownObjectRelease();
        return;
      }

      v26 = *(a1 + 16);
      if (v26)
      {
        v58 = v21;
        v50 = v19;
        v51 = v16;
        v52 = a2;
        v28 = *(v6 + 16);
        v27 = v6 + 16;
        v62 = v28;
        v55 = (*(v27 + 64) + 32) & ~*(v27 + 64);
        v56 = OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_countData;
        v29 = a1 + v55;
        v30 = *(v27 + 56);
        v57 = v23 & 1;
        v31 = (v27 - 8);
        v53 = (v27 + 16);
        v54 = v30;
        v32 = _swiftEmptyArrayStorage;
        while (1)
        {
          v33 = v27;
          v62(v12, v29, v5);

          v34 = sub_140C0C();
          if (v34 == 2)
          {
            v35 = sub_140BFC();
          }

          else if (v34 <= 0)
          {
            v35 = sub_14093C();
          }

          else
          {
            v35 = sub_140C3C();
          }

          v36 = v35;
          v37 = sub_9EA88(v61, v59, v60, v57);
          v38 = __OFADD__(v36, v37);
          v39 = v36 + v37;
          if (v38)
          {
            __break(1u);
            return;
          }

          v40 = sub_140C0C();
          if (v40 == 2)
          {
            if (v39 == sub_140BFC())
            {
              goto LABEL_18;
            }
          }

          else if (v40 <= 0)
          {
            if (v39 == sub_14093C())
            {
LABEL_18:

              v42 = v62;
              v41 = v63;
              v62(v63, v12, v5);
              goto LABEL_29;
            }
          }

          else if (v39 == sub_140C3C())
          {
            goto LABEL_18;
          }

          if (sub_140C0C() >= 2)
          {
            v43 = sub_140C0C();
            if (v43 == 2)
            {
              sub_140BEC();
            }

            else if (v43 <= 2)
            {
              sub_14093C();
            }

            else
            {
              sub_140C3C();
            }

            v41 = v63;
            sub_140BDC();
          }

          else
          {
            v41 = v63;
            sub_140C1C();
          }

          v42 = v62;
LABEL_29:
          v42(v64, v41, v5);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v32 = sub_135110(0, *(v32 + 2) + 1, 1, v32, &qword_1C6A70, &unk_152488, &type metadata accessor for IndexPath);
          }

          v45 = *(v32 + 2);
          v44 = *(v32 + 3);
          if (v45 >= v44 >> 1)
          {
            v32 = sub_135110(v44 > 1, v45 + 1, 1, v32, &qword_1C6A70, &unk_152488, &type metadata accessor for IndexPath);
          }

          v46 = *v31;
          (*v31)(v63, v5);
          v46(v12, v5);
          *(v32 + 2) = v45 + 1;
          v47 = v54;
          (*v53)(&v32[v55 + v45 * v54], v64, v5);
          v29 += v47;
          --v26;
          v27 = v33;
          if (!v26)
          {
            v16 = v51;
            a2 = v52;
            v48 = v57;
            goto LABEL_37;
          }
        }
      }

      v48 = v23 & 1;
LABEL_37:

      sub_9E2D0(v61, v59, v60, v48);

      v49 = sub_1449CC().super.isa;

      [v16 *a2];

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }
}

void sub_12EBE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_140C2C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v45 - v11;
  isa = sub_140B9C().super.isa;
  v14 = sub_140B9C().super.isa;
  v15 = type metadata accessor for CompositeComponentCollectionView();
  v52.receiver = v3;
  v52.super_class = v15;
  objc_msgSendSuper2(&v52, "moveItemAtIndexPath:toIndexPath:", isa, v14);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = type metadata accessor for CompositeCollectionView();
    v51.receiver = v17;
    v51.super_class = v18;
    if (!objc_msgSendSuper2(&v51, "dataSource"))
    {

      return;
    }

    v46 = v7;
    type metadata accessor for CompositeCollectionViewController();
    v19 = swift_dynamicCastClass();
    if (!v19 || (v20 = v19, v21 = sub_FE54(v3), v48 = v22, v49 = v23, v47 = v24, (v50 = v21) == 0))
    {

      swift_unknownObjectRelease();
      return;
    }

    v25 = *(v20 + OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_countData);
    v45[1] = OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_countData;
    v45[2] = v25;

    v26 = sub_140C0C();
    if (v26 == 2)
    {
      v27 = sub_140BFC();
    }

    else if (v26 <= 0)
    {
      v27 = sub_14093C();
    }

    else
    {
      v27 = sub_140C3C();
    }

    v28 = v27;
    v29 = sub_9EA88(v50, v48, v49, v47 & 1);
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      __break(1u);
      goto LABEL_54;
    }

    v32 = sub_140C0C();
    if (v32 == 2)
    {
      if (v31 != sub_140BFC())
      {
        goto LABEL_20;
      }

LABEL_18:

      (*(v46 + 16))(v12, a1, v6);
      goto LABEL_29;
    }

    if (v32 <= 0)
    {
      if (v31 == sub_14093C())
      {
        goto LABEL_18;
      }
    }

    else if (v31 == sub_140C3C())
    {
      goto LABEL_18;
    }

LABEL_20:
    if (sub_140C0C() >= 2)
    {
      v33 = sub_140C0C();
      if (v33 == 2)
      {
        sub_140BEC();
      }

      else if (v33 <= 2)
      {
        sub_14093C();
      }

      else
      {
        sub_140C3C();
      }

      sub_140BDC();
    }

    else
    {
      sub_140C1C();
    }

LABEL_29:

    v34 = sub_140C0C();
    if (v34 == 2)
    {
      v35 = sub_140BFC();
    }

    else if (v34 <= 0)
    {
      v35 = sub_14093C();
    }

    else
    {
      v35 = sub_140C3C();
    }

    v36 = v35;
    v37 = sub_9EA88(v50, v48, v49, v47 & 1);
    v30 = __OFADD__(v36, v37);
    v38 = v36 + v37;
    if (!v30)
    {
      v39 = sub_140C0C();
      if (v39 == 2)
      {
        if (v38 != sub_140BFC())
        {
          goto LABEL_42;
        }

LABEL_40:

        v40 = v46;
        (*(v46 + 16))(v9, a2, v6);
LABEL_51:

        sub_9E2D0(v50, v48, v49, v47 & 1);

        v42 = sub_140B9C().super.isa;
        v43 = sub_140B9C().super.isa;
        [v17 moveItemAtIndexPath:v42 toIndexPath:v43];
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        v44 = *(v40 + 8);
        v44(v9, v6);
        v44(v12, v6);
        return;
      }

      if (v39 <= 0)
      {
        if (v38 == sub_14093C())
        {
          goto LABEL_40;
        }
      }

      else if (v38 == sub_140C3C())
      {
        goto LABEL_40;
      }

LABEL_42:
      if (sub_140C0C() >= 2)
      {
        v41 = sub_140C0C();
        if (v41 == 2)
        {
          sub_140BEC();
        }

        else if (v41 <= 2)
        {
          sub_14093C();
        }

        else
        {
          sub_140C3C();
        }

        sub_140BDC();
      }

      else
      {
        sub_140C1C();
      }

      v40 = v46;
      goto LABEL_51;
    }

LABEL_54:
    __break(1u);
  }
}

uint64_t sub_12F254(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  sub_140C2C();
  v6 = sub_1449DC();
  v7 = a1;
  sub_12E680(v6, a4);
}

void sub_12F2C8(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_140C2C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = sub_140B9C().super.isa;
  v11 = type metadata accessor for CompositeComponentCollectionView();
  v36.receiver = v3;
  v36.super_class = v11;
  objc_msgSendSuper2(&v36, "deselectItemAtIndexPath:animated:", isa, a2 & 1);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = type metadata accessor for CompositeCollectionView();
    v35.receiver = v13;
    v35.super_class = v14;
    if (!objc_msgSendSuper2(&v35, "dataSource"))
    {

      return;
    }

    type metadata accessor for CompositeCollectionViewController();
    v15 = swift_dynamicCastClass();
    if (!v15 || (v16 = v15, (v34 = sub_FE54(v3)) == 0))
    {

      swift_unknownObjectRelease();
      return;
    }

    v20 = v18;
    v21 = v19;
    v32 = v17;
    v33 = *(v16 + OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_countData);

    v22 = sub_140C0C();
    v31 = v7;
    if (v22 == 2)
    {
      v23 = sub_140BFC();
    }

    else if (v22 <= 0)
    {
      v23 = sub_14093C();
    }

    else
    {
      v23 = sub_140C3C();
    }

    v24 = v23;
    v25 = sub_9EA88(v34, v32, v20, v21 & 1);
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      __break(1u);
      return;
    }

    v27 = sub_140C0C();
    v28 = v31;
    if (v27 == 2)
    {
      if (v26 != sub_140BFC())
      {
        goto LABEL_20;
      }

LABEL_18:

      (*(v28 + 16))(v9, a1, v6);
LABEL_29:
      v30 = sub_140B9C().super.isa;
      [v13 deselectItemAtIndexPath:v30 animated:a2 & 1];
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      (*(v28 + 8))(v9, v6);
      return;
    }

    if (v27 <= 0)
    {
      if (v26 == sub_14093C())
      {
        goto LABEL_18;
      }
    }

    else if (v26 == sub_140C3C())
    {
      goto LABEL_18;
    }

LABEL_20:
    if (sub_140C0C() >= 2)
    {
      v29 = sub_140C0C();
      if (v29 == 2)
      {
        sub_140BEC();
      }

      else if (v29 <= 2)
      {
        sub_14093C();
      }

      else
      {
        sub_140C3C();
      }

      sub_140BDC();
    }

    else
    {
      sub_140C1C();
    }

    goto LABEL_29;
  }
}

void sub_12F6F8(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v60 = a3;
  v59 = a2;
  v6 = sub_140C2C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4A80);
  __chkstk_darwin(v10 - 8);
  v57 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v56 = &v47 - v13;
  __chkstk_darwin(v14);
  v16 = &v47 - v15;
  __chkstk_darwin(v17);
  v58 = &v47 - v18;
  __chkstk_darwin(v19);
  v21 = &v47 - v20;
  sub_1D19C(a1, &v47 - v20, &unk_1C4A80);
  v22 = *(v7 + 48);
  isa = 0;
  if (v22(v21, 1, v6) != 1)
  {
    isa = sub_140B9C().super.isa;
    (*(v7 + 8))(v21, v6);
  }

  v24 = type metadata accessor for CompositeComponentCollectionView();
  v62.receiver = v4;
  v62.super_class = v24;
  objc_msgSendSuper2(&v62, "selectItemAtIndexPath:animated:scrollPosition:", isa, v59 & 1, v60);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    v27 = type metadata accessor for CompositeCollectionView();
    v61.receiver = v26;
    v61.super_class = v27;
    v28 = objc_msgSendSuper2(&v61, "dataSource");
    if (!v28)
    {

      return;
    }

    v29 = v28;
    v55 = v22;
    type metadata accessor for CompositeCollectionViewController();
    if (!swift_dynamicCastClass() || (v54 = v29, (v30 = sub_FE54(v4)) == 0))
    {

      swift_unknownObjectRelease();
      return;
    }

    v34 = v33;
    v52 = v32;
    v53 = v30;
    v51 = v31;
    v50 = *(v7 + 56);
    v50(v58, 1, 1, v6);
    sub_1D19C(a1, v16, &unk_1C4A80);
    if (v55(v16, 1, v6) == 1)
    {
      sub_15340(v16, &unk_1C4A80);
      v35 = v57;
      v36 = v58;
      v37 = v55;
LABEL_34:
      sub_1D19C(v36, v35, &unk_1C4A80);
      if (v37(v35, 1, v6) == 1)
      {
        v46 = 0;
      }

      else
      {
        v46 = sub_140B9C().super.isa;
        (*(v7 + 8))(v35, v6);
      }

      [v26 selectItemAtIndexPath:v46 animated:v59 & 1 scrollPosition:v60];
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      sub_15340(v36, &unk_1C4A80);
      return;
    }

    v48 = *(v7 + 32);
    v49 = v7 + 56;
    v48(v9, v16, v6);

    v38 = sub_140C0C();
    if (v38 == 2)
    {
      v39 = sub_140BFC();
    }

    else if (v38 <= 0)
    {
      v39 = sub_14093C();
    }

    else
    {
      v39 = sub_140C3C();
    }

    v40 = v39;
    v41 = sub_9EA88(v53, v51, v52, v34 & 1);
    v42 = v40 + v41;
    if (__OFADD__(v40, v41))
    {
      __break(1u);
      return;
    }

    v43 = sub_140C0C();
    if (v43 == 2)
    {
      if (v42 != sub_140BFC())
      {
LABEL_25:
        if (sub_140C0C() >= 2)
        {
          v45 = sub_140C0C();
          if (v45 == 2)
          {
            sub_140BEC();
          }

          else if (v45 <= 2)
          {
            sub_14093C();
          }

          else
          {
            sub_140C3C();
          }

          v37 = v55;
          v44 = v56;
          sub_140BDC();

          (*(v7 + 8))(v9, v6);
          v36 = v58;
          sub_15340(v58, &unk_1C4A80);
        }

        else
        {
          v44 = v56;
          sub_140C1C();

          (*(v7 + 8))(v9, v6);
          v36 = v58;
          sub_15340(v58, &unk_1C4A80);
          v37 = v55;
        }

        goto LABEL_33;
      }
    }

    else if (v43 <= 0)
    {
      if (v42 != sub_14093C())
      {
        goto LABEL_25;
      }
    }

    else if (v42 != sub_140C3C())
    {
      goto LABEL_25;
    }

    v36 = v58;
    sub_15340(v58, &unk_1C4A80);
    v44 = v56;
    v48(v56, v9, v6);
    v37 = v55;
LABEL_33:
    v50(v44, 0, 1, v6);
    sub_10358(v44, v36, &unk_1C4A80);
    v35 = v57;
    goto LABEL_34;
  }
}

void sub_12FED0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_140C2C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v13 = Strong;
  v14 = type metadata accessor for CompositeCollectionView();
  v39.receiver = v13;
  v39.super_class = v14;
  if (!objc_msgSendSuper2(&v39, "dataSource"))
  {

    goto LABEL_9;
  }

  type metadata accessor for CompositeCollectionViewController();
  v15 = swift_dynamicCastClass();
  if (!v15 || (v16 = v15, v36 = v9, (v38 = sub_FE54(v4)) == 0))
  {

    swift_unknownObjectRelease();
LABEL_9:
    isa = sub_140B9C().super.isa;
    v24 = type metadata accessor for CompositeComponentCollectionView();
    v40.receiver = v4;
    v40.super_class = v24;
    objc_msgSendSuper2(&v40, "scrollToItemAtIndexPath:atScrollPosition:animated:", isa, a2, a3 & 1);

    return;
  }

  v20 = v19;
  v34 = v17;
  v35 = v18;
  v37 = *(v16 + OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_countData);

  v21 = sub_140C0C();
  if (v21 == 2)
  {
    v22 = sub_140BFC();
  }

  else if (v21 <= 0)
  {
    v22 = sub_14093C();
  }

  else
  {
    v22 = sub_140C3C();
  }

  v25 = v22;
  v26 = sub_9EA88(v38, v34, v35, v20 & 1);
  v27 = __OFADD__(v25, v26);
  v28 = v25 + v26;
  if (!v27)
  {
    v29 = sub_140C0C();
    v30 = v36;
    if (v29 == 2)
    {
      if (v28 != sub_140BFC())
      {
        goto LABEL_22;
      }

LABEL_20:

      (*(v30 + 16))(v11, a1, v8);
LABEL_31:
      v32 = sub_140B9C().super.isa;
      [v13 scrollToItemAtIndexPath:v32 atScrollPosition:a2 animated:a3 & 1];
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      (*(v30 + 8))(v11, v8);
      return;
    }

    if (v29 <= 0)
    {
      if (v28 == sub_14093C())
      {
        goto LABEL_20;
      }
    }

    else if (v28 == sub_140C3C())
    {
      goto LABEL_20;
    }

LABEL_22:
    if (sub_140C0C() >= 2)
    {
      v31 = sub_140C0C();
      if (v31 == 2)
      {
        sub_140BEC();
      }

      else if (v31 <= 2)
      {
        sub_14093C();
      }

      else
      {
        sub_140C3C();
      }

      sub_140BDC();
    }

    else
    {
      sub_140C1C();
    }

    goto LABEL_31;
  }

  __break(1u);
}

uint64_t sub_130318@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4A80);
  __chkstk_darwin(v7 - 8);
  v9 = v55 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D50);
  __chkstk_darwin(v10 - 8);
  v12 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v55 - v14;
  v16 = sub_140C2C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v67 = v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v55 - v20;
  __chkstk_darwin(v22);
  v24 = v55 - v23;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    v65 = v15;
    v27 = type metadata accessor for CompositeCollectionView();
    v68.receiver = v26;
    v68.super_class = v27;
    if (objc_msgSendSuper2(&v68, "dataSource"))
    {
      v66 = a1;
      type metadata accessor for CompositeCollectionViewController();
      v28 = swift_dynamicCastClass();
      if (v28)
      {
        v29 = v28;
        v30 = [v26 indexPathForItemAtPoint:{a2, a3}];
        if (v30)
        {
          v31 = v30;
          sub_140BAC();

          v63 = *(v17 + 32);
          v64 = v17 + 32;
          v63(v24, v21, v16);
          v32 = *(v29 + OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_countData);
          v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D58);
          v34 = *(v33 - 8);
          v61 = *(v34 + 56);
          v62 = v34;
          v61(v12, 1, 1, v33);

          v35 = sub_140C0C();
          if (v35 == 2)
          {
            v36 = sub_140BFC();
          }

          else if (v35 <= 0)
          {
            v36 = sub_14093C();
          }

          else
          {
            v36 = sub_140C3C();
          }

          sub_9E3E8(v36, 0, 0, 0, v70);
          if (v70[0])
          {
            v56 = v70[0];
            v59 = v70[1];
            v60 = v32;
            v58 = v70[2];
            v57 = v71;
            v44 = v72;
            if (sub_140C0C() >= 2)
            {
              v55[1] = v44;
              v47 = sub_140C0C();
              if (v47 == 2)
              {
                sub_140BEC();
              }

              else if (v47 <= 2)
              {
                sub_14093C();
              }

              else
              {
                sub_140C3C();
              }

              v45 = v67;
              sub_140BDC();
            }

            else
            {
              v45 = v67;
              sub_140C1C();
            }

            swift_unknownObjectRelease();

            sub_15340(v12, &qword_1C0D50);
            (*(v17 + 8))(v24, v16);
            v48 = *(v33 + 48);
            v49 = v58;
            v50 = v59;
            *v12 = v56;
            *(v12 + 1) = v50;
            *(v12 + 2) = v49;
            v12[24] = v57 & 1;
            v46 = v63;
            v63(&v12[v48], v45, v16);
            v61(v12, 0, 1, v33);
          }

          else
          {

            swift_unknownObjectRelease();

            (*(v17 + 8))(v24, v16);
            v46 = v63;
          }

          v51 = v65;
          sub_10358(v12, v65, &qword_1C0D50);
          v52 = (*(v62 + 48))(v51, 1, v33);
          v53 = v66;
          if (v52 != 1)
          {
            swift_unknownObjectRelease();
            v46(v53, v51 + *(v33 + 48), v16);
            v42 = *(v17 + 56);
            v43 = v53;
            v54 = 0;
            return v42(v43, v54, 1, v16);
          }

          sub_15340(v51, &qword_1C0D50);
          v42 = *(v17 + 56);
          v43 = v53;
        }

        else
        {

          swift_unknownObjectRelease();
          v42 = *(v17 + 56);
          v43 = v66;
        }

        v54 = 1;
        return v42(v43, v54, 1, v16);
      }

      swift_unknownObjectRelease();
      a1 = v66;
    }

    else
    {
    }
  }

  v37 = type metadata accessor for CompositeComponentCollectionView();
  v69.receiver = v3;
  v69.super_class = v37;
  v38 = objc_msgSendSuper2(&v69, "indexPathForItemAtPoint:", a2, a3);
  if (v38)
  {
    v39 = v38;
    sub_140BAC();

    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  (*(v17 + 56))(v9, v40, 1, v16);
  return sub_10358(v9, a1, &unk_1C4A80);
}

uint64_t sub_130AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4A80);
  __chkstk_darwin(v6 - 8);
  v8 = &v52 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D50);
  __chkstk_darwin(v9 - 8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v64 = &v52 - v13;
  v14 = sub_140C2C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v63 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v52 - v18;
  __chkstk_darwin(v20);
  v22 = &v52 - v21;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_10:
    v35 = type metadata accessor for CompositeComponentCollectionView();
    v67.receiver = v3;
    v67.super_class = v35;
    v36 = objc_msgSendSuper2(&v67, "indexPathForCell:", a1);
    if (v36)
    {
      v37 = v36;
      sub_140BAC();

      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    (*(v15 + 56))(v8, v38, 1, v14);
    return sub_10358(v8, a2, &unk_1C4A80);
  }

  v24 = Strong;
  v65 = v14;
  v25 = type metadata accessor for CompositeCollectionView();
  v66.receiver = v24;
  v66.super_class = v25;
  if (!objc_msgSendSuper2(&v66, "dataSource"))
  {

LABEL_9:
    v14 = v65;
    goto LABEL_10;
  }

  v62 = a2;
  type metadata accessor for CompositeCollectionViewController();
  v26 = swift_dynamicCastClass();
  if (!v26)
  {

    swift_unknownObjectRelease();
    a2 = v62;
    goto LABEL_9;
  }

  v27 = v26;
  v28 = [v24 indexPathForCell:a1];
  if (v28)
  {
    v29 = v28;
    sub_140BAC();

    v60 = *(v15 + 32);
    v61 = v15 + 32;
    v60(v22, v19, v65);
    v30 = *(v27 + OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_countData);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D58);
    v59 = *(v31 - 8);
    v32 = *(v59 + 56);
    v32(v11, 1, 1, v31);

    v33 = sub_140C0C();
    if (v33 == 2)
    {
      v34 = sub_140BFC();
    }

    else if (v33 <= 0)
    {
      v34 = sub_14093C();
    }

    else
    {
      v34 = sub_140C3C();
    }

    sub_9E3E8(v34, 0, 0, 0, v68);
    if (v68[0])
    {
      v53 = v68[0];
      v56 = v68[1];
      v57 = v30;
      v55 = v68[2];
      v54 = v69;
      v40 = sub_140C0C();
      v58 = v32;
      if (v40 >= 2)
      {
        v44 = sub_140C0C();
        if (v44 == 2)
        {
          sub_140BEC();
        }

        else if (v44 <= 2)
        {
          sub_14093C();
        }

        else
        {
          sub_140C3C();
        }

        v41 = v63;
        sub_140BDC();
      }

      else
      {
        v41 = v63;
        sub_140C1C();
      }

      swift_unknownObjectRelease();

      sub_15340(v11, &qword_1C0D50);
      v42 = v65;
      (*(v15 + 8))(v22, v65);
      v45 = *(v31 + 48);
      v46 = v55;
      v47 = v56;
      *v11 = v53;
      *(v11 + 1) = v47;
      *(v11 + 2) = v46;
      v11[24] = v54 & 1;
      v43 = v60;
      v60(&v11[v45], v41, v42);
      v58(v11, 0, 1, v31);
    }

    else
    {

      swift_unknownObjectRelease();

      v42 = v65;
      (*(v15 + 8))(v22, v65);
      v43 = v60;
    }

    v48 = v11;
    v49 = v64;
    sub_10358(v48, v64, &qword_1C0D50);
    v50 = (*(v59 + 48))(v49, 1, v31);
    v51 = v62;
    if (v50 == 1)
    {
      sub_15340(v49, &qword_1C0D50);
      return (*(v15 + 56))(v51, 1, 1, v42);
    }

    else
    {
      swift_unknownObjectRelease();
      v43(v51, v49 + *(v31 + 48), v42);
      return (*(v15 + 56))(v51, 0, 1, v42);
    }
  }

  else
  {

    swift_unknownObjectRelease();
    return (*(v15 + 56))(v62, 1, 1, v65);
  }
}

uint64_t sub_131248(uint64_t a1, SEL *a2)
{
  v4 = v2;
  v6 = sub_140C2C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v11 = Strong;
  v12 = type metadata accessor for CompositeCollectionView();
  v34.receiver = v11;
  v34.super_class = v12;
  if (!objc_msgSendSuper2(&v34, "dataSource"))
  {

    goto LABEL_9;
  }

  type metadata accessor for CompositeCollectionViewController();
  v13 = swift_dynamicCastClass();
  if (!v13 || (v14 = v13, (v33 = sub_FE54(v4)) == 0))
  {

    swift_unknownObjectRelease();
LABEL_9:
    isa = sub_140B9C().super.isa;
    v22 = type metadata accessor for CompositeComponentCollectionView();
    v35.receiver = v4;
    v35.super_class = v22;
    v23 = objc_msgSendSuper2(&v35, *a2, isa);

    return v23;
  }

  v18 = v17;
  v30 = v15;
  v31 = v16;
  v32 = *(v14 + OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_countData);

  v19 = sub_140C0C();
  if (v19 == 2)
  {
    v20 = sub_140BFC();
  }

  else if (v19 <= 0)
  {
    v20 = sub_14093C();
  }

  else
  {
    v20 = sub_140C3C();
  }

  v25 = v20;
  result = sub_9EA88(v33, v30, v31, v18 & 1);
  v26 = v25 + result;
  if (!__OFADD__(v25, result))
  {
    v27 = sub_140C0C();
    if (v27 == 2)
    {
      if (v26 != sub_140BFC())
      {
        goto LABEL_22;
      }

LABEL_20:

      (*(v7 + 16))(v9, a1, v6);
LABEL_31:
      v29 = sub_140B9C().super.isa;
      v23 = [v11 *a2];
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      (*(v7 + 8))(v9, v6);
      return v23;
    }

    if (v27 <= 0)
    {
      if (v26 == sub_14093C())
      {
        goto LABEL_20;
      }
    }

    else if (v26 == sub_140C3C())
    {
      goto LABEL_20;
    }

LABEL_22:
    if (sub_140C0C() >= 2)
    {
      v28 = sub_140C0C();
      if (v28 == 2)
      {
        sub_140BEC();
      }

      else if (v28 <= 2)
      {
        sub_14093C();
      }

      else
      {
        sub_140C3C();
      }

      sub_140BDC();
    }

    else
    {
      sub_140C1C();
    }

    goto LABEL_31;
  }

  __break(1u);
  return result;
}

id sub_131590(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = sub_140C2C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_140BAC();
  v10 = a1;
  v11 = sub_131248(v9, a4);

  (*(v7 + 8))(v9, v6);

  return v11;
}

void sub_1316BC(uint64_t a1, SEL *a2)
{
  v4 = v2;
  v6 = sub_140B0C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D70);
  __chkstk_darwin(v44);
  v11 = &v39 - v10;
  v12 = sub_140B7C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v51 = (&v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = a1;
  sub_140B3C(v51);
  v16 = v15;
  v17 = type metadata accessor for CompositeComponentCollectionView();
  v54.receiver = v4;
  v54.super_class = v17;
  objc_msgSendSuper2(&v54, *a2, v16);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v43 = v7;
    v20 = type metadata accessor for CompositeCollectionView();
    v53.receiver = v19;
    v53.super_class = v20;
    v21 = objc_msgSendSuper2(&v53, "dataSource");
    if (v21)
    {
      v22 = v21;
      type metadata accessor for CompositeCollectionViewController();
      v23 = swift_dynamicCastClass();
      if (v23 && (v49 = v23, v24 = sub_FE54(v4), v47 = v25, v48 = v26, v46 = v27, (v50 = v24) != 0))
      {
        v39 = v22;
        v40 = v19;
        v41 = v13;
        v42 = a2;
        sub_140B6C();
        sub_140B2C();
        v45 = OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_countData;
        sub_13CB20(&qword_1C0D78, &type metadata accessor for IndexSet);
        v28 = (v43 + 8);
        while (1)
        {
          sub_144B9C();
          sub_13CB20(&qword_1C0D80, &type metadata accessor for IndexSet.Index);
          v29 = sub_14486C();
          (*v28)(v9, v6);
          if (v29)
          {
            sub_15340(v11, &qword_1C0D70);

            sub_9E2D0(v50, v47, v48, v46 & 1);

            v34 = v51;
            sub_140B3C(v35);
            v37 = v36;
            v38 = v40;
            [v40 *v42];
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            (*(v41 + 8))(v34, v12);
            return;
          }

          v30 = sub_144BCC();
          v32 = *v31;
          v30(v52, 0);
          sub_144BAC();

          v33 = sub_9EA88(v50, v47, v48, v46 & 1);

          if (__OFADD__(v32, v33))
          {
            break;
          }

          sub_140B5C(v32 + v33);
        }

        __break(1u);
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }
}

void sub_131B54(uint64_t a1, uint64_t a2)
{
  v22.receiver = v2;
  v22.super_class = type metadata accessor for CompositeComponentCollectionView();
  objc_msgSendSuper2(&v22, "moveSection:toSection:", a1, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v21.receiver = Strong;
    v21.super_class = type metadata accessor for CompositeCollectionView();
    if (objc_msgSendSuper2(&v21, "dataSource"))
    {
      type metadata accessor for CompositeCollectionViewController();
      if (swift_dynamicCastClass() && (v7 = sub_FE54(v2), v20 = v10, v7))
      {
        v11 = v7;
        v12 = v8;
        v13 = v9;

        v19 = v12;
        v14 = sub_9EA88(v11, v12, v20, v13 & 1);

        v15 = __OFADD__(a1, v14);
        v16 = a1 + v14;
        if (v15)
        {
          __break(1u);
        }

        else
        {

          v17 = sub_9EA88(v11, v19, v20, v13 & 1);

          v15 = __OFADD__(a2, v17);
          v18 = a2 + v17;
          if (!v15)
          {

            sub_9E2D0(v11, v19, v20, v13 & 1);

            [v6 moveSection:v16 toSection:v18];

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            return;
          }
        }

        __break(1u);
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }
}

uint64_t sub_131D9C(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = sub_140B7C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_140B4C();
  v10 = a1;
  sub_1316BC(v9, a4);

  return (*(v7 + 8))(v9, v6);
}

void sub_131E8C(void *a1)
{
  v3 = OBJC_IVAR____TtC12NowPlayingUI32CompositeComponentCollectionView_isInvalidatingLayout;
  v4 = v1[OBJC_IVAR____TtC12NowPlayingUI32CompositeComponentCollectionView_isInvalidatingLayout];
  v1[OBJC_IVAR____TtC12NowPlayingUI32CompositeComponentCollectionView_isInvalidatingLayout] = 1;
  v34.receiver = v1;
  v34.super_class = type metadata accessor for CompositeComponentCollectionView();
  objc_msgSendSuper2(&v34, "_invalidateLayoutWithContext:", a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v6 = Strong;
  v7 = type metadata accessor for CompositeCollectionView();
  v33.receiver = v6;
  v33.super_class = v7;
  v8 = objc_msgSendSuper2(&v33, "collectionViewLayout");
  type metadata accessor for CompositeCollectionViewLayout();
  v9 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_isInvalidatingLayout);

  if ((v9 & 1) != 0 || (*(v6 + OBJC_IVAR____TtC12NowPlayingUI23CompositeCollectionView_isPerformingBatchUpdates) & 1) != 0 || (v32.receiver = v6, v32.super_class = v7, !objc_msgSendSuper2(&v32, "dataSource")))
  {

    goto LABEL_10;
  }

  type metadata accessor for CompositeCollectionViewController();
  v10 = swift_dynamicCastClass();
  if (!v10 || (v11 = v10, v26 = v1, v12 = sub_FE54(v1), v28 = v14, v29 = v13, v27 = v15, !v12))
  {

    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v16 = v12;
  v25 = v11;
  v31.receiver = v6;
  v31.super_class = v7;
  v17 = objc_msgSendSuper2(&v31, "collectionViewLayout");
  ObjCClassFromObject = swift_getObjCClassFromObject();

  [ObjCClassFromObject invalidationContextClass];
  swift_getObjCClassMetadata();
  sub_2B860(0, &qword_1C6A58);
  swift_dynamicCastMetatypeUnconditional();
  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  type metadata accessor for CompositeCollectionViewLayout.InvalidationContext();
  v24 = v19;
  v20 = swift_dynamicCastClassUnconditional();
  v21 = &v20[OBJC_IVAR____TtCC12NowPlayingUI29CompositeCollectionViewLayout19InvalidationContext_sourceComponentItem];
  *v21 = v16;
  *(v21 + 1) = v29;
  *(v21 + 2) = v28;
  v21[24] = v27;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (a1)
  {
    v22 = *(v25 + OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_countData);

    sub_13B1EC(a1, v20, v22, v16, v29, v28, v27 & 1, 1);

    v30.receiver = v6;
    v30.super_class = v7;
    v23 = objc_msgSendSuper2(&v30, "collectionViewLayout");
    [v23 invalidateLayoutWithContext:v20];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v1 = v26;
LABEL_10:
    v1[v3] = v4;
    return;
  }

  __break(1u);
}

id sub_132220(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4A80);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_140C2C();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v6, a1, v9);
    (*(v10 + 56))(v6, 0, 1, v9);
    v11 = OBJC_IVAR____TtC12NowPlayingUI32CompositeComponentCollectionView_reorderingItemGlobalIndexPath;
    swift_beginAccess();
    sub_CC9E0(v6, v2 + v11);
    swift_endAccess();
    isa = sub_140B9C().super.isa;
    v13 = [(objc_class *)v8 beginInteractiveMovementForItemAtIndexPath:isa];
  }

  else
  {
    v8 = sub_140B9C().super.isa;
    v14 = type metadata accessor for CompositeComponentCollectionView();
    v17.receiver = v2;
    v17.super_class = v14;
    v13 = objc_msgSendSuper2(&v17, "beginInteractiveMovementForItemAtIndexPath:", v8);
  }

  return v13;
}

void sub_1324C8(double a1, double a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4A80);
  __chkstk_darwin(v5 - 8);
  v7 = &v38[-v6];
  v8 = sub_140C2C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v38[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v25 = type metadata accessor for CompositeComponentCollectionView();
    v45.receiver = v2;
    v45.super_class = v25;
    objc_msgSendSuper2(&v45, "updateInteractiveMovementTargetPosition:", a1, a2);
    return;
  }

  v13 = Strong;
  v14 = type metadata accessor for CompositeCollectionView();
  v44.receiver = v13;
  v44.super_class = v14;
  if (!objc_msgSendSuper2(&v44, "dataSource"))
  {
    goto LABEL_10;
  }

  type metadata accessor for CompositeCollectionViewController();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_9;
  }

  v15 = v2;
  v16 = sub_FE54(v2);
  if (!v16)
  {
    goto LABEL_9;
  }

  v20 = v16;
  v39 = v19;
  v41 = v18;
  v40 = v17;
  v43.receiver = v13;
  v43.super_class = v14;
  v21 = objc_msgSendSuper2(&v43, "collectionViewLayout");
  type metadata accessor for CompositeCollectionViewLayout();
  v22 = swift_dynamicCastClass();
  if (!v22)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_10;
  }

  v23 = v22;
  v42 = v20;
  v24 = OBJC_IVAR____TtC12NowPlayingUI32CompositeComponentCollectionView_reorderingItemGlobalIndexPath;
  swift_beginAccess();
  sub_1D19C(v15 + v24, v7, &unk_1C4A80);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    sub_15340(v7, &unk_1C4A80);
LABEL_10:
    [v13 updateInteractiveMovementTargetPosition:{a1, a2}];

    return;
  }

  (*(v9 + 32))(v11, v7, v8);
  isa = sub_140B9C().super.isa;
  v27 = [v23 layoutAttributesForItemAtIndexPath:isa];

  if (!v27)
  {
    (*(v9 + 8))(v11, v8);
    swift_unknownObjectRelease();

LABEL_9:
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  if (*&v23[OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_layoutData])
  {

    sub_B7DBC(v42, v40, v41, v39 & 1, &v46);

    x = v46.origin.x;
    y = v46.origin.y;
    width = v46.size.width;
    height = v46.size.height;
    MaxY = CGRectGetMaxY(v46);
    [v27 size];
    if (MaxY - v33 * 0.5 >= a2)
    {
      v34 = a2;
    }

    else
    {
      v34 = MaxY - v33 * 0.5;
    }

    v47.origin.x = x;
    v47.origin.y = y;
    v47.size.width = width;
    v47.size.height = height;
    MinY = CGRectGetMinY(v47);
    [v27 size];
    v37 = v36;

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v9 + 8))(v11, v8);
    if (v34 > MinY + v37 * 0.5)
    {
      a2 = v34;
    }

    else
    {
      a2 = MinY + v37 * 0.5;
    }

    goto LABEL_10;
  }

  __break(1u);
}

void sub_1329BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4A80);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = sub_140C2C();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC12NowPlayingUI32CompositeComponentCollectionView_reorderingItemGlobalIndexPath;
  swift_beginAccess();
  sub_CC9E0(v3, v0 + v5);
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    [Strong endInteractiveMovement];
  }

  else
  {
    v8 = type metadata accessor for CompositeComponentCollectionView();
    v10.receiver = v0;
    v10.super_class = v8;
    objc_msgSendSuper2(&v10, "endInteractiveMovement");
  }
}

void sub_132B30(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_4:
    if (a1)
    {
      v10 = swift_allocObject();
      *(v10 + 16) = a1;
      *(v10 + 24) = a2;
      v20 = sub_77B4;
      v21 = v10;
      v16 = _NSConcreteStackBlock;
      v17 = 1107296256;
      v18 = sub_D78F4;
      v19 = &block_descriptor_30;
      v11 = _Block_copy(&v16);

      if (!a3)
      {
LABEL_7:
        v12 = type metadata accessor for CompositeComponentCollectionView();
        v22.receiver = v4;
        v22.super_class = v12;
        objc_msgSendSuper2(&v22, "performBatchUpdates:completion:", v11, a3);
        _Block_release(a3);
        _Block_release(v11);
        return;
      }
    }

    else
    {
      v11 = 0;
      if (!a3)
      {
        goto LABEL_7;
      }
    }

    v20 = a3;
    v21 = a4;
    v16 = _NSConcreteStackBlock;
    v17 = 1107296256;
    v18 = sub_4D7D0;
    v19 = &block_descriptor_22;
    a3 = _Block_copy(&v16);

    goto LABEL_7;
  }

  if (*(Strong + OBJC_IVAR____TtC12NowPlayingUI23CompositeCollectionView_isPerformingBatchUpdates))
  {

    goto LABEL_4;
  }

  v13 = Strong;
  v14 = swift_allocObject();
  v14[2] = v4;
  v14[3] = a1;
  v14[4] = a2;
  v15 = v4;
  sub_2172C(a1);
  sub_BC770(sub_13B1E0, v14, a3, a4);
}

void sub_132D6C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 24) = a3;
    v9[4] = sub_13CBD4;
    v9[5] = v6;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_D78F4;
    v9[3] = &block_descriptor_40_0;
    v7 = _Block_copy(v9);
  }

  else
  {
    v7 = 0;
  }

  v8 = type metadata accessor for CompositeComponentCollectionView();
  v10.receiver = a1;
  v10.super_class = v8;
  objc_msgSendSuper2(&v10, "performBatchUpdates:completion:", v7, 0);
  _Block_release(v7);
}

void sub_13303C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = &v4[OBJC_IVAR____TtC12NowPlayingUI32CompositeComponentCollectionView__contentInset];
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v25.receiver = Strong;
    v25.super_class = type metadata accessor for CompositeCollectionView();
    v13 = objc_msgSendSuper2(&v25, "collectionViewLayout");
    type metadata accessor for CompositeCollectionViewLayout();
    swift_dynamicCastClassUnconditional();

    v14 = sub_9E1E0();

    v15 = *(v14 + 16);
    if (v15)
    {
      v23 = v12;
      v16 = 0;
      v17 = (v14 + 40);
      while (1)
      {
        if (v16 >= *(v14 + 16))
        {
          __break(1u);
          return;
        }

        v18 = *v17;
        ObjectType = swift_getObjectType();
        v20 = *(v18 + 8);
        swift_unknownObjectRetain();
        v21 = v20(ObjectType, v18);

        swift_unknownObjectRelease();
        if (v21 == v5)
        {
          break;
        }

        ++v16;
        v17 += 4;
        if (v15 == v16)
        {

          goto LABEL_9;
        }
      }

      if (v16)
      {
        v24.receiver = v5;
        v24.super_class = type metadata accessor for CompositeComponentCollectionView();
        objc_msgSendSuper2(&v24, "setContentInset:", 0.0, a2, 0.0, a4);

        return;
      }
    }

    else
    {

LABEL_9:
    }
  }

  v22 = type metadata accessor for CompositeComponentCollectionView();
  v26.receiver = v5;
  v26.super_class = v22;
  objc_msgSendSuper2(&v26, "setContentInset:", a1, a2, a3, a4);
}

void sub_133390()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for CompositeComponentCollectionView();
  objc_msgSendSuper2(&v12, "reloadData");
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v11.receiver = Strong;
    v11.super_class = type metadata accessor for CompositeCollectionView();
    if (objc_msgSendSuper2(&v11, "dataSource"))
    {
      type metadata accessor for CompositeCollectionViewController();
      if (swift_dynamicCastClass() && (v3 = sub_FE54(v0)) != 0)
      {
        v7 = v3;
        v8 = v4;
        v9 = v5;
        v10 = v6;

        sub_9E2D0(v7, v8, v9, v10 & 1);

        [v2 reloadData];

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }
}

void sub_133538(void *a1, double a2, double a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = *a6;
    v13 = Strong;
    [Strong v12];
  }

  else
  {
    v14.receiver = a1;
    v14.super_class = type metadata accessor for CompositeComponentCollectionView();
    objc_msgSendSuper2(&v14, *a6, a5, a2, a3);
  }
}

Swift::Int sub_1336A4()
{
  v1 = *(v0 + 32);
  sub_14545C();
  if (v1)
  {
    sub_14492C();
  }

  sub_14492C();
  return sub_1454AC();
}

uint64_t sub_13371C()
{
  if (*(v0 + 32))
  {
    sub_14492C();
  }

  return sub_14492C();
}

Swift::Int sub_133774()
{
  v1 = *(v0 + 32);
  sub_14545C();
  if (v1)
  {
    sub_14492C();
  }

  sub_14492C();
  return sub_1454AC();
}

uint64_t sub_1337E8(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if ((a1[4] & 1) == 0)
  {
    if ((a2[4] & 1) == 0)
    {
      if (v4 != v6 || v5 != v7)
      {
        goto LABEL_19;
      }

      return 1;
    }

    return 0;
  }

  if ((a2[4] & 1) == 0)
  {
    return 0;
  }

  v8 = a1[2];
  v9 = a1[3];
  v10 = a2[2];
  v11 = a2[3];
  v12 = v4 == v6 && v5 == v7;
  if (!v12 && (sub_1453BC() & 1) == 0)
  {
    return 0;
  }

  if (v8 == v10 && v9 == v11)
  {
    return 1;
  }

LABEL_19:

  return sub_1453BC();
}

id sub_1339F4(void *a1)
{
  v1[OBJC_IVAR____TtC12NowPlayingUI32CompositeComponentCollectionView_isInvalidatingLayout] = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC12NowPlayingUI32CompositeComponentCollectionView_registeredReusableViewClasses;
  *&v1[v3] = sub_13AFB4(_swiftEmptyArrayStorage);
  v4 = OBJC_IVAR____TtC12NowPlayingUI32CompositeComponentCollectionView_reorderingItemGlobalIndexPath;
  v5 = sub_140C2C();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v6 = &v1[OBJC_IVAR____TtC12NowPlayingUI32CompositeComponentCollectionView__contentInset];
  v7 = *&UIEdgeInsetsZero.bottom;
  *v6 = *&UIEdgeInsetsZero.top;
  v6[1] = v7;
  v8 = &v1[OBJC_IVAR____TtC12NowPlayingUI32CompositeComponentCollectionView_componentReuseIdentifierAddition];
  v9 = type metadata accessor for CompositeComponentCollectionView();
  *v8 = 0;
  v8[1] = 0;
  v12.receiver = v1;
  v12.super_class = v9;
  v10 = objc_msgSendSuper2(&v12, "initWithCoder:", a1);

  if (v10)
  {
  }

  return v10;
}

id sub_133B34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CompositeComponentCollectionView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CompositeComponentCollectionView()
{
  result = qword_1CA648;
  if (!qword_1CA648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_133C40()
{
  sub_CC988();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_133D28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_133D70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_133DD8()
{
  result = qword_1CA658;
  if (!qword_1CA658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA658);
  }

  return result;
}

char *sub_133E50(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA758);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_133F70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA6F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_13407C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA728);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

void *sub_134180(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA738);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D88);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_134314(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

size_t sub_134470(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA720);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D58) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D58) - 8);
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

char *sub_134688(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA700);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 176);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[176 * v8])
    {
      memmove(v12, v13, 176 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_134844(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5118);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

void *sub_13495C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_134AF0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_134C4C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6068);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_134D9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA6E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_134EBC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA6A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_134FDC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5178);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

size_t sub_135110(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
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

void *sub_1352EC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA680);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[v8 + 4])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA258);
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA258);
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA258);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_13546C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C06C0);
  result = sub_14533C();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_144FEC(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
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
        goto LABEL_35;
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

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1356DC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA748);
  v35 = a2;
  result = sub_14533C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
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
      v36 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v35 & 1) == 0)
      {
        v23 = v21;
        swift_unknownObjectRetain();
      }

      sub_1448DC();
      sub_14545C();
      sub_14492C();
      v24 = sub_1454AC();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v34;
      v12 = v36;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        v36 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1359A4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA6B8);
  v34 = a2;
  result = sub_14533C();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 32 * v20;
      v35 = *v21;
      v22 = *(v21 + 16);
      v23 = *(v21 + 24);
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      sub_14545C();
      if (v23)
      {
        v25 = 0;
      }

      else
      {
        v25 = sub_141ADC();
      }

      sub_14546C(v25);
      sub_14546C([v35 hash]);
      result = sub_1454AC();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 32 * v15;
      *v16 = v35;
      *(v16 + 16) = v22;
      *(v16 + 24) = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v34)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_135C88(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA708);
  result = sub_14533C();
  v7 = result;
  if (*(v5 + 16))
  {
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
    while (1)
    {
      if (v12)
      {
        v20 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v21 = v20 | (v8 << 6);
        if (a2)
        {
LABEL_10:
          v22 = *(v5 + 48) + 40 * v21;
          v41 = *v22;
          v42 = *(v22 + 16);
          v23 = *(v22 + 32);
          v24 = (*(v5 + 56) + (v21 << 6));
          v47 = *v24;
          v48 = v24[1];
          v49 = v24[2];
          v50 = v24[3];
          goto LABEL_17;
        }
      }

      else
      {
        v25 = v8;
        do
        {
          v8 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            __break(1u);
            goto LABEL_38;
          }

          if (v8 >= v13)
          {
            if (a2)
            {
              v40 = 1 << *(v5 + 32);
              if (v40 >= 64)
              {
                bzero((v5 + 64), ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
              }

              else
              {
                *v9 = -1 << v40;
              }

              *(v5 + 16) = 0;
            }

            v3 = v2;
            goto LABEL_36;
          }

          v26 = v9[v8];
          ++v25;
        }

        while (!v26);
        v12 = (v26 - 1) & v26;
        v21 = __clz(__rbit64(v26)) | (v8 << 6);
        if (a2)
        {
          goto LABEL_10;
        }
      }

      v27 = *(v5 + 48) + 40 * v21;
      v41 = *v27;
      v42 = *(v27 + 16);
      v23 = *(v27 + 32);
      v28 = (*(v5 + 56) + (v21 << 6));
      v30 = v28[2];
      v29 = v28[3];
      v31 = v28[1];
      v43 = *v28;
      v44 = v31;
      v45 = v30;
      v46 = v29;
      sub_55A10(&v43, &v47);
      v47 = v43;
      v48 = v44;
      v49 = v45;
      v50 = v46;
LABEL_17:
      sub_14545C();
      sub_55398(*&v41, *(&v41 + 1), *&v42, *(&v42 + 1));
      if (v23 == 0.0)
      {
        v32 = 0.0;
      }

      else
      {
        v32 = v23;
      }

      sub_14549C(*&v32);
      result = sub_1454AC();
      v33 = -1 << *(v7 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v14 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v17 = v41;
        v16 = v42;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v14 + 8 * v35);
          if (v39 != -1)
          {
            v15 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v34) & ~*(v14 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v17 = v41;
      v16 = v42;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v18 = *(v7 + 48) + 40 * v15;
      *v18 = v17;
      *(v18 + 16) = v16;
      *(v18 + 32) = v23;
      v19 = (*(v7 + 56) + (v15 << 6));
      *v19 = v47;
      v19[1] = v48;
      v19[2] = v49;
      v19[3] = v50;
      ++*(v7 + 16);
    }
  }

LABEL_36:
  *v3 = v7;
  return result;
}

uint64_t sub_135FD4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA710);
  v34 = a2;
  result = sub_14533C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_14545C();
      sub_14492C();
      result = sub_1454AC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_13627C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA698);
  result = sub_14533C();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v29 = *(*(v5 + 56) + 16 * v19);
      if ((a2 & 1) == 0)
      {
      }

      sub_14545C();
      sub_14546C(v20);
      result = sub_1454AC();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v29;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_13650C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA678);
  result = sub_14533C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
      }

      result = sub_14544C();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
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
        goto LABEL_35;
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

    if ((a2 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_13677C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA6E8);
  result = sub_14533C();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v21;
      }

      result = sub_14544C();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
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
        goto LABEL_35;
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

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1369E4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA6C0);
  result = sub_14533C();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 48) + 32 * v21;
      v35 = *v22;
      v23 = *(v22 + 16);
      v24 = *(v22 + 24);
      v25 = *(v5 + 56) + 72 * v21;
      v38 = *(v25 + 32);
      v39 = *(v25 + 48);
      v40 = *(v25 + 64);
      v36 = *v25;
      v37 = *(v25 + 16);
      if ((a2 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      sub_14545C();
      if (v24)
      {
        v26 = 0;
      }

      else
      {
        v26 = sub_141ADC();
      }

      sub_14546C(v26);
      sub_14546C([v35 hash]);
      result = sub_1454AC();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 32 * v15;
      *v16 = v35;
      *(v16 + 16) = v23;
      *(v16 + 24) = v24;
      v17 = *(v7 + 56) + 72 * v15;
      *(v17 + 32) = v38;
      *(v17 + 48) = v39;
      *(v17 + 64) = v40;
      *v17 = v36;
      *(v17 + 16) = v37;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_136CF4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA6A8);
  v34 = a2;
  result = sub_14533C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_14545C();
      sub_14492C();
      result = sub_1454AC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_136F9C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_140C2C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA6D0);
  v39 = a2;
  result = sub_14533C();
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

      sub_13CB20(&qword_1C89C0, &type metadata accessor for IndexPath);
      result = sub_14481C();
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

uint64_t sub_137378(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA660);
  v37 = a2;
  result = sub_14533C();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
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
      v17 = __clz(__rbit64(v12));
      v38 = (v12 - 1) & v12;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 40 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      v26 = *(v22 + 32);
      v39 = *(v21 + 8 * v20);
      v40 = *(v22 + 24);
      if ((v37 & 1) == 0)
      {
        sub_13CAE0(v23, v24, v25, v40, v26);
      }

      sub_14545C();
      if (v26)
      {
        sub_14492C();
      }

      sub_14492C();
      result = sub_1454AC();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v25;
      *(v16 + 24) = v40;
      *(v16 + 32) = v26;
      *(*(v7 + 56) + 8 * v15) = v39;
      ++*(v7 + 16);
      v5 = v36;
      v12 = v38;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v7;
  return result;
}

void sub_137680(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_14516C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_144FEC(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

uint64_t sub_13780C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_14516C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_14544C();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_13797C(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v31 = a2 + 64;
    v29 = (sub_14516C() + 1) & ~v5;
    do
    {
      v8 = v7;
      v9 = 40 * v6;
      v10 = *(v2 + 48) + 40 * v6;
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      v14 = *(v10 + 24);
      v15 = *(v10 + 32);
      sub_14545C();

      if (v15)
      {

        sub_14492C();
      }

      sub_14492C();
      v16 = sub_1454AC();
      result = sub_13CA90(v11, v12, v13, v14, v15);
      v7 = v8;
      v17 = v16 & v8;
      if (v3 >= v29)
      {
        v2 = a2;
        v4 = v31;
        if (v17 < v29)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v2 = a2;
        v4 = v31;
        if (v17 >= v29)
        {
          goto LABEL_12;
        }
      }

      if (v3 >= v17)
      {
LABEL_12:
        v18 = *(v2 + 48);
        v19 = v18 + 40 * v3;
        v20 = (v18 + v9);
        if (40 * v3 < v9 || v19 >= v20 + 40 || v3 != v6)
        {
          v21 = *v20;
          v22 = v20[1];
          *(v19 + 32) = *(v20 + 4);
          *v19 = v21;
          *(v19 + 16) = v22;
        }

        v23 = *(v2 + 56);
        v24 = (v23 + 8 * v3);
        v25 = (v23 + 8 * v6);
        if (v3 != v6 || v24 >= v25 + 1)
        {
          *v24 = *v25;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v8;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v26 = *(v2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v28;
    ++*(v2 + 36);
  }

  return result;
}

id sub_137BB4(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_F931C(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1356DC(v13, a3 & 1);
      v8 = sub_F931C(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for Key(0);
        result = sub_1453EC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_138E60();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return swift_unknownObjectRelease();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

unint64_t sub_137D20(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_F7DD8(a2, a3, a4, a5 & 1);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_1359A4(v20, a6 & 1);
      result = sub_F7DD8(a2, a3, a4, a5 & 1);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_16:
        result = sub_1453EC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = result;
      sub_138FC4();
      result = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    *(v25[7] + 8 * result) = a1;
    return result;
  }

  v25[(result >> 6) + 8] |= 1 << result;
  v26 = v25[6] + 32 * result;
  *v26 = a2;
  *(v26 + 8) = a3;
  *(v26 + 16) = a4;
  *(v26 + 24) = a5 & 1;
  *(v25[7] + 8 * result) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v25[2] = v28;

  return swift_unknownObjectRetain();
}

unint64_t sub_137EB4(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_F7E8C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_135C88(v14, a3 & 1);
      result = sub_F7E8C(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1453EC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_139140();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    v21 = v19[6] + 40 * result;
    v22 = *(a2 + 16);
    *v21 = *a2;
    *(v21 + 16) = v22;
    *(v21 + 32) = *(a2 + 32);
    v23 = (v19[7] + (result << 6));
    v24 = a1[1];
    v25 = a1[2];
    v26 = a1[3];
    *v23 = *a1;
    v23[1] = v24;
    v23[2] = v25;
    v23[3] = v26;
    v27 = v19[2];
    v13 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v13)
    {
      v19[2] = v28;
      return result;
    }

    goto LABEL_15;
  }

  v20 = v19[7] + (result << 6);

  return sub_13CB68(a1, v20);
}

uint64_t sub_138020(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_F7CB0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_135FD4(v16, a4 & 1);
      v11 = sub_F7CB0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1453EC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1392E8();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

unint64_t sub_13819C(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_F7F40(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_13627C(v16, a4 & 1);
      result = sub_F7F40(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1453EC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_139458();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

unint64_t sub_1382FC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_F7FAC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_13650C(v14, a3 & 1);
      result = sub_F7FAC(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1453EC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1395BC();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

unint64_t sub_138448(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_F7FAC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;

      return _objc_release_x1();
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_139718();
    result = v17;
    goto LABEL_8;
  }

  sub_13677C(v14, a3 & 1);
  result = sub_F7FAC(a2);
  if ((v15 & 1) == (v18 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_1453EC();
  __break(1u);
  return _objc_release_x1();
}

unint64_t sub_138590(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_F7DD8(a2, a3, a4, a5 & 1);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_1369E4(v20, a6 & 1);
      result = sub_F7DD8(a2, a3, a4, a5 & 1);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_16:
        result = sub_1453EC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = result;
      sub_139874();
      result = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    v26 = v25[7] + 72 * result;
    v27 = *(a1 + 48);
    *(v26 + 32) = *(a1 + 32);
    *(v26 + 48) = v27;
    *(v26 + 64) = *(a1 + 64);
    v28 = *(a1 + 16);
    *v26 = *a1;
    *(v26 + 16) = v28;
    return result;
  }

  v25[(result >> 6) + 8] |= 1 << result;
  v29 = v25[6] + 32 * result;
  *v29 = a2;
  *(v29 + 8) = a3;
  *(v29 + 16) = a4;
  *(v29 + 24) = a5 & 1;
  v30 = v25[7] + 72 * result;
  *(v30 + 64) = *(a1 + 64);
  v31 = *(a1 + 48);
  *(v30 + 32) = *(a1 + 32);
  *(v30 + 48) = v31;
  v32 = *(a1 + 16);
  *v30 = *a1;
  *(v30 + 16) = v32;
  v33 = v25[2];
  v19 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (v19)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v25[2] = v34;

  return swift_unknownObjectRetain();
}

uint64_t sub_13875C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_F7CB0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_136CF4(v16, a4 & 1);
      v11 = sub_F7CB0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1453EC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_139A30();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

void sub_1388D8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_140C2C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_F7FF0(a2);
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
      sub_139BA0();
      goto LABEL_7;
    }

    sub_136F9C(v17, a3 & 1);
    v23 = sub_F7FF0(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_138C44(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_1453EC();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

unint64_t sub_138AA4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_F8108(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_137378(v14, a3 & 1);
      result = sub_F8108(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_15:
        result = sub_1453EC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_139E14();
      result = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a1;
    return result;
  }

  v19[(result >> 6) + 8] |= 1 << result;
  v20 = v19[6] + 40 * result;
  v21 = *a2;
  v22 = *(a2 + 16);
  *(v20 + 32) = *(a2 + 32);
  *v20 = v21;
  *(v20 + 16) = v22;
  *(v19[7] + 8 * result) = a1;
  v23 = v19[2];
  v13 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v19[2] = v24;
  return sub_13B0D8(a2, v25);
}

unint64_t sub_138BF0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = a7[6] + 32 * result;
  *v7 = a2;
  *(v7 + 8) = a3;
  *(v7 + 16) = a4;
  *(v7 + 24) = a5 & 1;
  *(a7[7] + 8 * result) = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

uint64_t sub_138C44(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_140C2C();
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

void *sub_138CFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C06C0);
  v2 = *v0;
  v3 = sub_14532C();
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
    v10 = *(v2 + 64);
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_138E60()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA748);
  v2 = *v0;
  v3 = sub_14532C();
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
    v10 = *(v2 + 64);
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = swift_unknownObjectRetain();
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_138FC4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA6B8);
  v2 = *v0;
  v3 = sub_14532C();
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
    v10 = *(v2 + 64);
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
        v18 = *(v2 + 48) + 32 * v17;
        v19 = *(v18 + 16);
        v20 = *(v18 + 24);
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = *(v4 + 48) + 32 * v17;
        *v22 = *v18;
        *(v22 + 16) = v19;
        *(v22 + 24) = v20;
        *(*(v4 + 56) + 8 * v17) = v21;
        result = swift_unknownObjectRetain();
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_139140()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA708);
  v2 = *v0;
  v3 = sub_14532C();
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
    v10 = *(v2 + 64);
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
        v18 = 40 * v17;
        v19 = *(v2 + 48) + 40 * v17;
        v20 = *(v19 + 32);
        v17 <<= 6;
        v21 = (*(v2 + 56) + v17);
        v22 = *v19;
        v23 = *(v19 + 16);
        v25 = *v21;
        v24 = v21[1];
        v26 = v21[3];
        v35 = v21[2];
        v36 = v26;
        v33 = v25;
        v34 = v24;
        v27 = *(v4 + 48) + v18;
        *v27 = v22;
        *(v27 + 16) = v23;
        *(v27 + 32) = v20;
        v28 = (*(v4 + 56) + v17);
        v29 = v33;
        v30 = v34;
        v31 = v36;
        v28[2] = v35;
        v28[3] = v31;
        *v28 = v29;
        v28[1] = v30;
        result = sub_55A10(&v33, &v32);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1392E8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA710);
  v2 = *v0;
  v3 = sub_14532C();
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
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_139458()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA698);
  v2 = *v0;
  v3 = sub_14532C();
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
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1395BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA678);
  v2 = *v0;
  v3 = sub_14532C();
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
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_139718()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA6E8);
  v2 = *v0;
  v3 = sub_14532C();
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
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_139874()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA6C0);
  v2 = *v0;
  v3 = sub_14532C();
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
    v10 = *(v2 + 64);
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
        v18 = 32 * v17;
        v19 = *(v2 + 48) + 32 * v17;
        v20 = *(v19 + 16);
        v21 = *(v19 + 24);
        v17 *= 72;
        v22 = *(v2 + 56) + v17;
        v27 = *(v22 + 32);
        v28 = *(v22 + 48);
        v29 = *(v22 + 64);
        v25 = *v22;
        v26 = *(v22 + 16);
        v23 = *(v4 + 48) + v18;
        *v23 = *v19;
        *(v23 + 16) = v20;
        *(v23 + 24) = v21;
        v24 = *(v4 + 56) + v17;
        *(v24 + 64) = v29;
        *(v24 + 32) = v27;
        *(v24 + 48) = v28;
        *v24 = v25;
        *(v24 + 16) = v26;
        result = swift_unknownObjectRetain();
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_139A30()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA6A8);
  v2 = *v0;
  v3 = sub_14532C();
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
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

char *sub_139BA0()
{
  v1 = v0;
  v31 = sub_140C2C();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA6D0);
  v3 = *v0;
  v4 = sub_14532C();
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
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
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

void *sub_139E14()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA660);
  v2 = *v0;
  v3 = sub_14532C();
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
    v10 = *(v2 + 64);
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
        v18 = *(v2 + 48) + 40 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v18 + 32);
        v24 = *(*(v2 + 56) + 8 * v17);
        v25 = *(v4 + 48) + 40 * v17;
        *v25 = v19;
        *(v25 + 8) = v20;
        *(v25 + 16) = v21;
        *(v25 + 24) = v22;
        *(v25 + 32) = v23;
        *(*(v4 + 56) + 8 * v17) = v24;
        result = sub_13CAE0(v19, v20, v21, v22, v23);
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

      v16 = *(v2 + 64 + 8 * v8);
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

unint64_t sub_139F90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C06C0);
    v3 = sub_14535C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_F7D28(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_13A088(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA748);
    v3 = sub_14535C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
      result = sub_F931C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_13A180(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA6B8);
    v3 = sub_14535C();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 8);
      v9 = *i;
      v10 = swift_unknownObjectRetain();
      result = sub_F7DD8(v10, v6, v7, v8);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v3[6] + 32 * result;
      *v13 = v5;
      *(v13 + 8) = v6;
      *(v13 + 16) = v7;
      *(v13 + 24) = v8;
      *(v3[7] + 8 * result) = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

unint64_t sub_13A298(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA6B0);
    v3 = sub_14535C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;

      result = sub_F7D6C(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_13A384(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA710);
    v3 = sub_14535C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_F7CB0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_13A488(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA708);
    v3 = sub_14535C();
    v4 = (a1 + 32);

    for (i = v1 - 1; ; --i)
    {
      v6 = v4[1];
      v21 = *v4;
      v22 = v6;
      v7 = v4[3];
      *v23 = v4[2];
      *&v23[16] = v7;
      v8 = v4[5];
      *&v23[32] = v4[4];
      *&v23[48] = v8;
      *&v23[64] = *(v4 + 12);
      v24 = v21;
      v25 = v22;
      v26 = *v23;
      sub_1D19C(&v21, v20, &qword_1CA718);
      result = sub_F7E8C(&v24);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 40 * result;
      v12 = v25;
      *v11 = v24;
      *(v11 + 16) = v12;
      *(v11 + 32) = v26;
      v13 = (v3[7] + (result << 6));
      v14 = *&v23[40];
      v15 = *&v23[24];
      v16 = *&v23[56];
      *v13 = *&v23[8];
      v13[1] = v15;
      v13[2] = v14;
      v13[3] = v16;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_11;
      }

      v3[2] = v19;
      if (!i)
      {

        return v3;
      }

      v4 = (v4 + 104);
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_13A608(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA6F8);
    v3 = sub_14535C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_F7CB0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_13A704(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA698);
  v3 = sub_14535C();
  v4 = *(a1 + 32);
  v13 = *(a1 + 40);
  result = sub_F7F40(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    *(v3[7] + 16 * result) = v13;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v11 = (v7 + 24);
    v4 = *(v7 - 8);
    v13 = *v7;

    result = sub_F7F40(v4);
    v7 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_13A814(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C51C0);
    v3 = sub_14535C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D19C(v4, &v11, &unk_1C8200);
      v5 = v11;
      result = sub_F931C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_94574(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

void *sub_13A93C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA678);
  v3 = sub_14535C();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_F7FAC(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 7);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_F7FAC(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_13AA44(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA6E8);
  v3 = sub_14535C();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_F7FAC(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_F7FAC(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_13AB40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA6C0);
    v3 = sub_14535C();
    v4 = (a1 + 32);

    for (i = v1 - 1; ; --i)
    {
      v6 = v4[1];
      v23 = *v4;
      v24 = v6;
      v7 = v4[5];
      v27 = v4[4];
      v28 = v7;
      v29 = *(v4 + 96);
      v8 = v4[3];
      v25 = v4[2];
      v26 = v8;
      v9 = v23;
      v10 = v24;
      v11 = BYTE8(v24);
      sub_1D19C(&v23, v22, &qword_1CA6C8);
      result = sub_F7DD8(v9, *(&v9 + 1), v10, v11);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v3[6] + 32 * result;
      *v14 = v9;
      *(v14 + 16) = v10;
      *(v14 + 24) = v11;
      v15 = v3[7] + 72 * result;
      *v15 = v25;
      v16 = v26;
      v17 = v27;
      v18 = v28;
      *(v15 + 64) = v29;
      *(v15 + 32) = v17;
      *(v15 + 48) = v18;
      *(v15 + 16) = v16;
      v19 = v3[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_11;
      }

      v3[2] = v21;
      if (!i)
      {

        return v3;
      }

      v4 = (v4 + 104);
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_13ACC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA6D8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA6D0);
    v7 = sub_14535C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D19C(v9, v5, &qword_1CA6D8);
      result = sub_F7FF0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_140C2C();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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

unint64_t sub_13AEB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA6A8);
    v3 = sub_14535C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_F7CB0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_13AFB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA660);
    v3 = sub_14535C();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 3);
      v16 = *(i - 5);
      v17 = v5;
      v18 = *(i - 8);
      v6 = *i;
      sub_13B0D8(&v16, v15);
      result = sub_F8108(&v16);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = v3[6] + 40 * result;
      v10 = v16;
      v11 = v17;
      *(v9 + 32) = v18;
      *v9 = v10;
      *(v9 + 16) = v11;
      *(v3[7] + 8 * result) = v6;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_13B110()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_13B198()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

void sub_13B1EC(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, int a7, char a8)
{
  v238 = a7;
  v233 = a5;
  v234 = a6;
  v236 = a3;
  v237 = a4;
  v235 = sub_140C2C();
  v229 = *(v235 - 8);
  __chkstk_darwin(v235);
  v220 = &v206 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v221 = &v206 - v13;
  __chkstk_darwin(v14);
  v230 = &v206 - v15;
  __chkstk_darwin(v16);
  v223 = &v206 - v17;
  __chkstk_darwin(v18);
  v222 = &v206 - v19;
  __chkstk_darwin(v20);
  v217 = &v206 - v21;
  __chkstk_darwin(v22);
  v216 = &v206 - v23;
  __chkstk_darwin(v24);
  v219 = &v206 - v25;
  __chkstk_darwin(v26);
  v228 = (&v206 - v27);
  __chkstk_darwin(v28);
  v231 = &v206 - v29;
  __chkstk_darwin(v30);
  v232 = &v206 - v31;
  __chkstk_darwin(v32);
  v34 = &v206 - v33;
  __chkstk_darwin(v35);
  v37 = (&v206 - v36);
  __chkstk_darwin(v38);
  v227 = &v206 - v39;
  *&v41 = __chkstk_darwin(v40).n128_u64[0];
  v43 = &v206 - v42;
  v215 = a2;
  v44 = [a2 invalidateEverything];
  v211 = a1;
  if (v44)
  {
    v45 = &dword_0 + 1;
  }

  else
  {
    v45 = [a1 invalidateEverything];
  }

  v46 = v215;
  [v215 _setInvalidateEverything:v45];
  if ([v46 invalidateDataSourceCounts])
  {
    v47 = &dword_0 + 1;
  }

  else
  {
    v47 = [v211 invalidateDataSourceCounts];
  }

  v48 = v235;
  [v215 _setInvalidateDataSourceCounts:v47];
  if ((a8 & 1) == 0)
  {
    goto LABEL_146;
  }

  v49 = [v211 invalidatedItemIndexPaths];
  if (!v49)
  {
    goto LABEL_42;
  }

  v50 = v49;
  v51 = sub_1449DC();

  v52 = *(v51 + 16);
  if (v52)
  {
    v53 = *(v229 + 16);
    v54 = (*(v229 + 80) + 32) & ~*(v229 + 80);
    v210 = v51;
    v218 = v54;
    v55 = v51 + v54;
    v214 = *(v229 + 72);
    v213 = (v229 + 8);
    v212 = (v229 + 32);
    v56 = _swiftEmptyArrayStorage;
    v224 = v37;
    v225 = v53;
    v226 = v229 + 16;
    while (1)
    {
      (v53)(v43, v55, v48);
      v57 = sub_140C0C();
      if (v57 == 2)
      {
        v58 = sub_140BFC();
      }

      else if (v57 <= 0)
      {
        v58 = sub_14093C();
      }

      else
      {
        v58 = sub_140C3C();
      }

      v59 = v58;
      v60 = sub_9EA88(v237, v233, v234, v238 & 1);
      v61 = __OFADD__(v59, v60);
      v62 = v59 + v60;
      if (v61)
      {
        goto LABEL_223;
      }

      v63 = sub_140C0C();
      if (v63 == 2)
      {
        if (v62 != sub_140BFC())
        {
          goto LABEL_22;
        }
      }

      else if (v63 <= 0)
      {
        if (v62 != sub_14093C())
        {
LABEL_22:
          if (sub_140C0C() >= 2)
          {
            v66 = sub_140C0C();
            if (v66 == 2)
            {
              sub_140BEC();
            }

            else if (v66 <= 2)
            {
              sub_14093C();
            }

            else
            {
              sub_140C3C();
            }

            v64 = v227;
            sub_140BDC();
          }

          else
          {
            v64 = v227;
            sub_140C1C();
          }

          v65 = v225;
          goto LABEL_33;
        }
      }

      else if (v62 != sub_140C3C())
      {
        goto LABEL_22;
      }

      v64 = v227;
      v65 = v225;
      (v225)(v227, v43, v48);
LABEL_33:
      v65(v37, v64, v48);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_135110(0, *(v56 + 2) + 1, 1, v56, &qword_1C6A70, &unk_152488, &type metadata accessor for IndexPath);
      }

      v68 = *(v56 + 2);
      v67 = *(v56 + 3);
      if (v68 >= v67 >> 1)
      {
        v56 = sub_135110(v67 > 1, v68 + 1, 1, v56, &qword_1C6A70, &unk_152488, &type metadata accessor for IndexPath);
      }

      v69 = *v213;
      (*v213)(v227, v48);
      v69(v43, v48);
      *(v56 + 2) = v68 + 1;
      v70 = v214;
      v37 = v224;
      (*v212)(&v56[v218 + v68 * v214], v224, v48);
      v55 += v70;
      --v52;
      v53 = v225;
      if (!v52)
      {

        if (*(v56 + 2))
        {
          goto LABEL_39;
        }

LABEL_41:

        goto LABEL_42;
      }
    }
  }

  if (!_swiftEmptyArrayStorage[2])
  {
    goto LABEL_41;
  }

LABEL_39:
  isa = sub_1449CC().super.isa;

  [v215 invalidateItemsAtIndexPaths:isa];

LABEL_42:
  v72 = [v211 invalidatedSupplementaryIndexPaths];
  if (v72)
  {
    v73 = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA668);
    v74 = sub_14480C();

    v75 = 0;
    v76 = v74 + 64;
    v77 = 1 << *(v74 + 32);
    v78 = -1;
    if (v77 < 64)
    {
      v78 = ~(-1 << v77);
    }

    v79 = v78 & *(v74 + 64);
    v80 = (v77 + 63) >> 6;
    v81 = (v229 + 8);
    v224 = (v229 + 32);
    v225 = (v229 + 16);
    v209 = v74;
    v208 = v74 + 64;
    v207 = v80;
    while (v79)
    {
      v84 = v75;
LABEL_53:
      v218 = v79;
      v214 = v84;
      v85 = __clz(__rbit64(v79)) | (v84 << 6);
      v86 = *(v74 + 48) + 16 * v85;
      v87 = *(v86 + 8);
      v88 = *(*(v74 + 56) + 8 * v85);
      v89 = *(v88 + 16);
      if (v89)
      {
        v212 = *v86;
        v227 = ((*(v229 + 80) + 32) & ~*(v229 + 80));
        v90 = &v227[v88];
        v226 = *(v229 + 72);
        v91 = *(v229 + 16);
        v213 = v87;

        v210 = v88;

        v92 = _swiftEmptyArrayStorage;
        while (1)
        {
          v91(v34, v90, v48);
          v93 = sub_140C0C();
          if (v93 == 2)
          {
            v94 = sub_140BFC();
          }

          else if (v93 <= 0)
          {
            v94 = sub_14093C();
          }

          else
          {
            v94 = sub_140C3C();
          }

          v95 = v94;
          v96 = sub_9EA88(v237, v233, v234, v238 & 1);
          v61 = __OFADD__(v95, v96);
          v97 = v95 + v96;
          if (v61)
          {
            goto LABEL_216;
          }

          v98 = sub_140C0C();
          if (v98 == 2)
          {
            if (v97 != sub_140BFC())
            {
              goto LABEL_66;
            }
          }

          else if (v98 <= 0)
          {
            if (v97 != sub_14093C())
            {
LABEL_66:
              if (sub_140C0C() >= 2)
              {
                v100 = sub_140C0C();
                if (v100 == 2)
                {
                  sub_140BEC();
                }

                else if (v100 <= 2)
                {
                  sub_14093C();
                }

                else
                {
                  sub_140C3C();
                }

                v99 = v232;
                sub_140BDC();
              }

              else
              {
                v99 = v232;
                sub_140C1C();
              }

              goto LABEL_76;
            }
          }

          else if (v97 != sub_140C3C())
          {
            goto LABEL_66;
          }

          v99 = v232;
          v91(v232, v34, v48);
LABEL_76:
          v91(v231, v99, v48);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v92 = sub_135110(0, *(v92 + 16) + 1, 1, v92, &qword_1C6A70, &unk_152488, &type metadata accessor for IndexPath);
          }

          v102 = *(v92 + 16);
          v101 = *(v92 + 24);
          if (v102 >= v101 >> 1)
          {
            v92 = sub_135110(v101 > 1, v102 + 1, 1, v92, &qword_1C6A70, &unk_152488, &type metadata accessor for IndexPath);
          }

          v103 = *v81;
          v48 = v235;
          (*v81)(v232, v235);
          v103(v34, v48);
          *(v92 + 16) = v102 + 1;
          v104 = v226;
          (*v224)(&v227[v92 + v102 * v226], v231, v48);
          v90 += v104;
          if (!--v89)
          {

            v74 = v209;
            v76 = v208;
            v80 = v207;
            goto LABEL_83;
          }
        }
      }

      v92 = _swiftEmptyArrayStorage;
LABEL_83:
      v79 = (v218 - 1) & v218;
      if (*(v92 + 16))
      {
        v82 = sub_14489C();

        v83 = sub_1449CC().super.isa;

        [v215 invalidateSupplementaryElementsOfKind:v82 atIndexPaths:v83];
      }

      else
      {
      }

      v75 = v214;
    }

    while (1)
    {
      v84 = v75 + 1;
      if (__OFADD__(v75, 1))
      {
        goto LABEL_222;
      }

      if (v84 >= v80)
      {
        break;
      }

      v79 = *(v76 + 8 * v84);
      ++v75;
      if (v79)
      {
        goto LABEL_53;
      }
    }
  }

  v105 = [v211 invalidatedDecorationIndexPaths];
  if (!v105)
  {
    goto LABEL_146;
  }

  v106 = v105;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA668);
  v107 = sub_14480C();

  v108 = 0;
  v109 = *(v107 + 64);
  v208 = v107 + 64;
  v110 = 1 << *(v107 + 32);
  v111 = -1;
  if (v110 < 64)
  {
    v111 = ~(-1 << v110);
  }

  v112 = v111 & v109;
  v207 = (v110 + 63) >> 6;
  v113 = v229;
  v232 = (v229 + 16);
  v224 = (v229 + 8);
  v218 = v229 + 32;
  v114 = v216;
  v115 = v219;
  v116 = v228;
  v209 = v107;
  if (!v112)
  {
    while (1)
    {
LABEL_91:
      v117 = v108 + 1;
      if (__OFADD__(v108, 1))
      {
        goto LABEL_224;
      }

      if (v117 >= v207)
      {
        break;
      }

      v112 = *(v208 + 8 * v117);
      ++v108;
      if (v112)
      {
        v113 = v229;
        goto LABEL_95;
      }
    }

LABEL_146:
    v154 = v211;
    v155 = [v211 previousIndexPathsForInteractivelyMovingItems];
    if (v155)
    {
      v156 = v155;
      v157 = sub_1449DC();

      v158 = [v215 previousIndexPathsForInteractivelyMovingItems];
      if (v158)
      {
        v159 = v158;
        v160 = sub_1449DC();
      }

      else
      {
        v160 = _swiftEmptyArrayStorage;
      }

      v161 = v217;
      v162 = *(v157 + 16);
      if (v162)
      {
        v163 = *(v229 + 16);
        v231 = (*(v229 + 80) + 32) & ~*(v229 + 80);
        v232 = v163;
        v164 = v157 + v231;
        v228 = *(v229 + 72);
        v165 = (v229 + 8);
        v226 = v157;
        v227 = (v229 + 32);
        while (1)
        {
          v166 = v232;
          (v232)(v161, v164, v48);
          v167 = sub_140C0C();
          if (v167 == 2)
          {
            v168 = sub_140BFC();
          }

          else if (v167 <= 0)
          {
            v168 = sub_14093C();
          }

          else
          {
            v168 = sub_140C3C();
          }

          v169 = v168;
          v170 = sub_9EA88(v237, v233, v234, v238 & 1);
          v61 = __OFADD__(v169, v170);
          v171 = v169 + v170;
          if (v61)
          {
            goto LABEL_220;
          }

          v172 = sub_140C0C();
          if (v172 == 2)
          {
            if (v171 != sub_140BFC())
            {
              goto LABEL_163;
            }
          }

          else if (v172 <= 0)
          {
            if (v171 != sub_14093C())
            {
LABEL_163:
              if (sub_140C0C() >= 2)
              {
                v175 = sub_140C0C();
                if (v175 == 2)
                {
                  sub_140BEC();
                }

                else if (v175 <= 2)
                {
                  sub_14093C();
                }

                else
                {
                  sub_140C3C();
                }

                v174 = v222;
                sub_140BDC();
              }

              else
              {
                v174 = v222;
                sub_140C1C();
              }

              goto LABEL_173;
            }
          }

          else if (v171 != sub_140C3C())
          {
            goto LABEL_163;
          }

          v173 = v161;
          v174 = v222;
          (v166)(v222, v173, v48);
LABEL_173:
          (v166)(v223, v174, v48);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v160 = sub_135110(0, *(v160 + 2) + 1, 1, v160, &qword_1C6A70, &unk_152488, &type metadata accessor for IndexPath);
          }

          v177 = *(v160 + 2);
          v176 = *(v160 + 3);
          if (v177 >= v176 >> 1)
          {
            v160 = sub_135110(v176 > 1, v177 + 1, 1, v160, &qword_1C6A70, &unk_152488, &type metadata accessor for IndexPath);
          }

          v178 = *v165;
          v48 = v235;
          (*v165)(v222, v235);
          v161 = v217;
          v178(v217, v48);
          *(v160 + 2) = v177 + 1;
          v179 = v228;
          (*v227)(&v160[v231 + v177 * v228], v223, v48);
          v164 += v179;
          if (!--v162)
          {

            v154 = v211;
            goto LABEL_180;
          }
        }
      }

LABEL_180:
      v180 = sub_1449CC().super.isa;

      [v215 _setPreviousIndexPathsForInteractivelyMovingItems:v180];
    }

    v181 = [v154 targetIndexPathsForInteractivelyMovingItems];
    if (!v181)
    {
      return;
    }

    v182 = v181;
    v183 = sub_1449DC();

    v184 = [v215 targetIndexPathsForInteractivelyMovingItems];
    if (v184)
    {
      v185 = v184;
      v186 = sub_1449DC();
    }

    else
    {
      v186 = _swiftEmptyArrayStorage;
    }

    v187 = v230;
    v188 = *(v183 + 16);
    if (!v188)
    {
LABEL_213:

      v205 = sub_1449CC().super.isa;

      [v215 _setTargetIndexPathsForInteractivelyMovingItems:v205];

      return;
    }

    v189 = *(v229 + 16);
    v190 = *(v229 + 80);
    v227 = v183;
    v232 = ((v190 + 32) & ~v190);
    v191 = &v232[v183];
    v231 = *(v229 + 72);
    v192 = (v229 + 8);
    v228 = (v229 + 32);
    v229 += 16;
    while (1)
    {
      v189(v187, v191, v48);
      v193 = sub_140C0C();
      if (v193 == 2)
      {
        v194 = sub_140BFC();
      }

      else if (v193 <= 0)
      {
        v194 = sub_14093C();
      }

      else
      {
        v194 = sub_140C3C();
      }

      v195 = v194;
      v196 = sub_9EA88(v237, v233, v234, v238 & 1);
      v61 = __OFADD__(v195, v196);
      v197 = v195 + v196;
      if (v61)
      {
        goto LABEL_221;
      }

      v198 = sub_140C0C();
      if (v198 == 2)
      {
        if (v197 != sub_140BFC())
        {
          goto LABEL_198;
        }
      }

      else if (v198 <= 0)
      {
        if (v197 != sub_14093C())
        {
LABEL_198:
          if (sub_140C0C() >= 2)
          {
            v200 = sub_140C0C();
            if (v200 == 2)
            {
              sub_140BEC();
            }

            else if (v200 <= 2)
            {
              sub_14093C();
            }

            else
            {
              sub_140C3C();
            }

            v199 = v221;
            sub_140BDC();
          }

          else
          {
            v199 = v221;
            sub_140C1C();
          }

          goto LABEL_208;
        }
      }

      else if (v197 != sub_140C3C())
      {
        goto LABEL_198;
      }

      v199 = v221;
      v189(v221, v230, v48);
LABEL_208:
      v189(v220, v199, v48);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v186 = sub_135110(0, *(v186 + 16) + 1, 1, v186, &qword_1C6A70, &unk_152488, &type metadata accessor for IndexPath);
      }

      v202 = *(v186 + 16);
      v201 = *(v186 + 24);
      if (v202 >= v201 >> 1)
      {
        v186 = sub_135110(v201 > 1, v202 + 1, 1, v186, &qword_1C6A70, &unk_152488, &type metadata accessor for IndexPath);
      }

      v203 = *v192;
      v48 = v235;
      (*v192)(v221, v235);
      v187 = v230;
      v203(v230, v48);
      *(v186 + 16) = v202 + 1;
      v204 = v231;
      (*v228)(&v232[v186 + v202 * v231], v220, v48);
      v191 += v204;
      if (!--v188)
      {
        goto LABEL_213;
      }
    }
  }

  while (1)
  {
    v117 = v108;
LABEL_95:
    v118 = __clz(__rbit64(v112)) | (v117 << 6);
    v119 = *(v107 + 56);
    v120 = (*(v107 + 48) + 16 * v118);
    v121 = v120[1];
    v213 = *v120;
    v122 = *(v119 + 8 * v118);
    v231 = *(v122 + 16);
    v214 = v121;
    if (v231)
    {
      break;
    }

    v124 = _swiftEmptyArrayStorage;
LABEL_140:
    v112 &= v112 - 1;
    if (*(v124 + 16))
    {
      v151 = sub_14489C();

      v152 = v115;
      v153 = sub_1449CC().super.isa;

      [v215 invalidateDecorationElementsOfKind:v151 atIndexPaths:v153];

      v115 = v152;
    }

    else
    {
    }

    v108 = v117;
    v113 = v229;
    if (!v112)
    {
      goto LABEL_91;
    }
  }

  v210 = v117;
  v212 = v112;
  v225 = ((*(v113 + 80) + 32) & ~*(v113 + 80));
  v227 = &v225[v122];

  v123 = 0;
  v124 = _swiftEmptyArrayStorage;
  v125 = v114;
  v226 = v122;
  while (v123 < *(v122 + 16))
  {
    v126 = *(v229 + 72);
    v127 = *(v229 + 16);
    v127(v116, &v227[v126 * v123], v48);
    v128 = sub_140C0C();
    if (v128 == 2)
    {
      v129 = sub_140BFC();
    }

    else if (v128 <= 0)
    {
      v129 = sub_14093C();
    }

    else
    {
      v129 = sub_140C3C();
    }

    v130 = v129;
    v131 = sub_9E1E0();
    v132 = v131;
    v133 = *(v131 + 16);
    if (v133)
    {
      v134 = 0;
      v135 = (v131 + 56);
      v136 = v237;
      while (v134 < *(v132 + 16))
      {
        if (*(v135 - 3) == v136)
        {
          if (*v135)
          {
            if (v238)
            {
              goto LABEL_114;
            }
          }

          else if ((v238 & 1) == 0)
          {
            v137 = sub_141AFC();
            v136 = v237;
            if (v137)
            {
              goto LABEL_114;
            }
          }
        }

        ++v134;
        v135 += 32;
        if (v133 == v134)
        {
          v134 = 0;
LABEL_114:
          v138 = v134 + 1;
          v125 = v216;
          goto LABEL_116;
        }
      }

      __break(1u);
LABEL_216:
      __break(1u);
      break;
    }

    v138 = 1;
LABEL_116:

    v139 = 1000000 * v138;
    if ((v138 * 1000000) >> 64 != (1000000 * v138) >> 63)
    {
      goto LABEL_218;
    }

    v61 = __OFADD__(v130, v139);
    v140 = v130 + v139;
    if (v61)
    {
      goto LABEL_219;
    }

    v141 = v228;
    v142 = sub_140C0C();
    if (v142 == 2)
    {
      if (v140 != sub_140BFC())
      {
        goto LABEL_123;
      }
    }

    else if (v142 <= 0)
    {
      if (v140 != sub_14093C())
      {
LABEL_123:
        if (sub_140C0C() >= 2)
        {
          v144 = sub_140C0C();
          if (v144 == 2)
          {
            sub_140BEC();
          }

          else if (v144 <= 2)
          {
            sub_14093C();
          }

          else
          {
            sub_140C3C();
          }

          v143 = v219;
          sub_140BDC();
        }

        else
        {
          v143 = v219;
          sub_140C1C();
        }

        goto LABEL_133;
      }
    }

    else if (v140 != sub_140C3C())
    {
      goto LABEL_123;
    }

    v143 = v219;
    v127(v219, v141, v48);
LABEL_133:
    v127(v125, v143, v48);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v124 = sub_135110(0, *(v124 + 16) + 1, 1, v124, &qword_1C6A70, &unk_152488, &type metadata accessor for IndexPath);
    }

    v146 = *(v124 + 16);
    v145 = *(v124 + 24);
    v114 = v125;
    if (v146 >= v145 >> 1)
    {
      v124 = sub_135110(v145 > 1, v146 + 1, 1, v124, &qword_1C6A70, &unk_152488, &type metadata accessor for IndexPath);
    }

    ++v123;
    v147 = *v224;
    v148 = v143;
    v149 = v235;
    (*v224)(v148, v235);
    v150 = v228;
    (v147)(v228, v149);
    v48 = v149;
    *(v124 + 16) = v146 + 1;
    v116 = v150;
    (*v218)(&v225[v124 + v146 * v126], v125, v149);
    v122 = v226;
    if (v123 == v231)
    {

      v107 = v209;
      v112 = v212;
      v117 = v210;
      v115 = v219;
      goto LABEL_140;
    }
  }

  __break(1u);
LABEL_218:
  __break(1u);
LABEL_219:
  __break(1u);
LABEL_220:
  __break(1u);
LABEL_221:
  __break(1u);
LABEL_222:
  __break(1u);
LABEL_223:
  __break(1u);
LABEL_224:
  __break(1u);
}

uint64_t sub_13CA90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if (a5)
  {
  }

  return result;
}

uint64_t sub_13CAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    v5 = vars8;
  }
}

uint64_t sub_13CB20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_13CBF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C32A0);
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

uint64_t sub_13CCD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C32A0);
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

uint64_t type metadata accessor for NowPlayingAdvancedSpeedControls()
{
  result = qword_1CA7C0;
  if (!qword_1CA7C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_13CDE0()
{
  sub_13CE94();
  if (v0 <= 0x3F)
  {
    type metadata accessor for NowPlayingPlaybackControlsViewModel(319);
    if (v1 <= 0x3F)
    {
      sub_13CEEC();
      if (v2 <= 0x3F)
      {
        sub_13CF3C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_13CE94()
{
  if (!qword_1C3318)
  {
    sub_142BEC();
    v0 = sub_142A0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1C3318);
    }
  }
}

void sub_13CEEC()
{
  if (!qword_1C3E48)
  {
    v0 = sub_143DDC();
    if (!v1)
    {
      atomic_store(v0, &qword_1C3E48);
    }
  }
}

void sub_13CF3C()
{
  if (!qword_1CA7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3B98);
    v0 = sub_143CEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1CA7D0);
    }
  }
}

uint64_t sub_13CFBC()
{
  sub_14302C();
  type metadata accessor for NowPlayingAdvancedSpeedControls();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA878);
  return sub_143CCC();
}

uint64_t sub_13D050(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + *(type metadata accessor for NowPlayingAdvancedSpeedControls() + 20));
  swift_getKeyPath();
  sub_13E548(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v3 = *(v2 + 128);
  swift_getKeyPath();
  sub_13E548(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);

  sub_141A4C();

  swift_beginAccess();
  v4 = *(v3 + 16);

  if (v4 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1408);
    sub_143DAC();
    swift_getKeyPath();
    sub_141A4C();

    NowPlayingSpeedControlsAnimationViewModel.showSlider()();
  }

  return result;
}

uint64_t sub_13D24C@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA810);
  __chkstk_darwin(v62);
  v63 = (&v45 - v2);
  v3 = sub_142CFC();
  v58 = *(v3 - 8);
  v59 = v3;
  __chkstk_darwin(v3);
  v57 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for NowPlayingAdvancedSpeedControls();
  v50 = *(v47 - 8);
  __chkstk_darwin(v47);
  v53 = v5;
  v54 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1432BC();
  __chkstk_darwin(v48);
  v49 = sub_14304C();
  v51 = *(v49 - 8);
  __chkstk_darwin(v49);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA818);
  __chkstk_darwin(v60);
  v52 = &v45 - v8;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA820);
  __chkstk_darwin(v65);
  v10 = (&v45 - v9);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA828);
  v56 = *(v61 - 8);
  __chkstk_darwin(v61);
  v55 = &v45 - v11;
  v12 = sub_142BEC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v45 - v17;
  v19 = v1;
  sub_FA98C(&v45 - v17);
  (*(v13 + 104))(v15, enum case for DynamicTypeSize.xxxLarge(_:), v12);
  sub_13E548(&qword_1C3920, &type metadata accessor for DynamicTypeSize);
  v20 = sub_14484C();
  v21 = *(v13 + 8);
  v21(v15, v12);
  v21(v18, v12);
  if (v20)
  {
    *v10 = sub_143EAC();
    v10[1] = v22;
    v46 = v10;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA868);
    sub_13DB90(v19, v10 + *(v23 + 44));
    v24 = v10 + *(v65 + 36);
    strcpy(v24, "speed_controls");
    v24[15] = -18;
    sub_14341C();
    v25 = v7;
    sub_14303C();
    v26 = v54;
    sub_13E590(v19, v54, type metadata accessor for NowPlayingAdvancedSpeedControls);
    v27 = (*(v50 + 80) + 16) & ~*(v50 + 80);
    v28 = swift_allocObject();
    sub_13E28C(v26, v28 + v27);
    sub_13E548(&qword_1CA870, &type metadata accessor for SpatialTapGesture);
    v29 = v52;
    v30 = v49;
    sub_143E0C();

    (*(v51 + 8))(v25, v30);
    v31 = v57;
    sub_142CEC();
    sub_13E590(v19, v26, type metadata accessor for NowPlayingAdvancedSpeedControls);
    v32 = swift_allocObject();
    sub_13E28C(v26, v32 + v27);
    v33 = v60;
    sub_13E548(&qword_1C37E8, &type metadata accessor for LongPressGesture);
    v34 = v59;
    sub_143E0C();

    (*(v58 + 8))(v31, v34);
    sub_142A1C();
    v35 = sub_13E150();
    v36 = sub_1D4A4(&qword_1CA858, &qword_1CA818);
    v37 = v55;
    v38 = v65;
    v39 = v46;
    sub_143A6C();
    sub_15340(v29, &qword_1CA818);
    sub_15340(v39, &qword_1CA820);
    v40 = v56;
    v41 = v61;
    (*(v56 + 16))(v63, v37, v61);
    swift_storeEnumTagMultiPayload();
    v66 = v38;
    v67 = v33;
    v68 = v35;
    v69 = v36;
    swift_getOpaqueTypeConformance2();
    sub_13E234();
    sub_14329C();
    return (*(v40 + 8))(v37, v41);
  }

  else
  {
    *v63 = *(v19 + *(v47 + 20));
    swift_storeEnumTagMultiPayload();
    v43 = sub_13E150();
    v44 = sub_1D4A4(&qword_1CA858, &qword_1CA818);

    v66 = v65;
    v67 = v60;
    v68 = v43;
    v69 = v44;
    swift_getOpaqueTypeConformance2();
    sub_13E234();
    return sub_14329C();
  }
}

uint64_t sub_13DB90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NowPlayingPreciseControlSlider();
  __chkstk_darwin(v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v41 - v8;
  v10 = type metadata accessor for NowPlayingAdvancedSpeedControls();
  v11 = *(a1 + v10[5]);
  v12 = type metadata accessor for NowPlayingPlaybackControlsViewModel(0);
  sub_13E548(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  swift_retain_n();
  sub_143E4C();
  v13 = v4[5];
  if (qword_1C00A0 != -1)
  {
    swift_once();
  }

  if (vmvn_s8(vcge_f32(vdup_lane_s32(qword_1D1960, 1), qword_1D1960)).u8[0])
  {
    __break(1u);
    goto LABEL_7;
  }

  v48 = a2;
  v49 = v11;
  v11 = v6;
  v12 = v63;
  *&v9[v13] = vcvtq_f64_f32(qword_1D1960);
  v13 = v4[6];
  if (qword_1C00A8 != -1)
  {
LABEL_7:
    swift_once();
  }

  *&v9[v13] = *&dword_1D1968;
  v14 = &v9[v4[7]];
  LODWORD(v57) = 0;
  BYTE4(v57) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3770);
  sub_143CAC();
  v15 = v63[4];
  v16 = *(v12 + 1);
  *v14 = *v12;
  v14[4] = v15;
  *(v14 + 1) = v16;
  v17 = (a1 + v10[7]);
  v18 = *v17;
  v19 = v17[1];
  LOBYTE(v17) = *(v17 + 16);
  *v12 = v18;
  *(v12 + 1) = v19;
  v65 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1408);
  sub_143DBC();
  v51 = *(&v57 + 1);
  v46 = v57;
  v50 = v58;
  v20 = (a1 + v10[8]);
  v21 = *(v20 + 16);
  v22 = *(v20 + 3);
  v57 = *v20;
  LOBYTE(v58) = v21;
  *(&v58 + 1) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA878);
  sub_143CDC();
  v42 = *v12;
  v23 = v42;
  v24 = *(v12 + 2);
  v44 = *(v12 + 1);
  v45 = v24;
  v43 = *(v12 + 3);
  v25 = v67;
  *&v57 = 0;
  BYTE8(v57) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8670);
  sub_143CAC();
  v26 = *v12;
  v27 = v64;
  v28 = *(v12 + 2);
  v55 = v25;
  v53 = v64;
  v47 = v11;
  sub_13E590(v9, v11, type metadata accessor for NowPlayingPreciseControlSlider);
  v29 = v48;
  sub_13E590(v11, v48, type metadata accessor for NowPlayingPreciseControlSlider);
  v30 = (v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA880) + 48));
  v31 = v49;
  *&v57 = v49;
  v32 = v46;
  *(&v57 + 1) = v46;
  *&v58 = v51;
  BYTE8(v58) = v50;
  *(&v58 + 9) = *v56;
  HIDWORD(v58) = *&v56[3];
  *&v59 = v23;
  v48 = v9;
  v33 = v44;
  *(&v59 + 1) = v44;
  v34 = v45;
  *&v60 = v45;
  v35 = v43;
  *(&v60 + 1) = v43;
  LOBYTE(v61) = v25;
  *(&v61 + 1) = *v54;
  DWORD1(v61) = *&v54[3];
  *(&v61 + 1) = v26;
  v62[0] = v27;
  *&v62[4] = *&v52[3];
  *&v62[1] = *v52;
  *&v62[8] = v28;
  *&v62[16] = 0x4000000000000000;
  v62[24] = 0;
  v36 = v58;
  *v30 = v57;
  v30[1] = v36;
  v37 = v59;
  v38 = v60;
  *(v30 + 89) = *&v62[9];
  v39 = *v62;
  v30[4] = v61;
  v30[5] = v39;
  v30[2] = v37;
  v30[3] = v38;
  sub_13E5F8(&v57, v63);
  sub_13E668(v48);
  *v12 = v31;
  *(v12 + 1) = v32;
  *(v12 + 2) = v51;
  v66 = v50;
  *(v12 + 25) = *v56;
  *(v12 + 7) = *&v56[3];
  *(v12 + 4) = v42;
  *(v12 + 5) = v33;
  *(v12 + 6) = v34;
  *(v12 + 7) = v35;
  v68 = v25;
  *(v12 + 65) = *v54;
  *(v12 + 17) = *&v54[3];
  *(v12 + 9) = v26;
  v69 = v27;
  *(v12 + 21) = *&v52[3];
  *(v12 + 81) = *v52;
  *(v12 + 11) = v28;
  *(v12 + 12) = 0x4000000000000000;
  v70 = 0;
  sub_15340(v63, &qword_1CA888);
  return sub_13E668(v47);
}

unint64_t sub_13E150()
{
  result = qword_1CA830;
  if (!qword_1CA830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1CA820);
    sub_1D4A4(&qword_1CA838, &qword_1CA840);
    sub_1D4A4(&qword_1CA848, &qword_1CA850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA830);
  }

  return result;
}

unint64_t sub_13E234()
{
  result = qword_1CA860;
  if (!qword_1CA860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA860);
  }

  return result;
}

uint64_t sub_13E28C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlayingAdvancedSpeedControls();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_13E2F0()
{
  type metadata accessor for NowPlayingAdvancedSpeedControls();

  return sub_13CFBC();
}

uint64_t objectdestroyTm_11()
{
  v1 = *(type metadata accessor for NowPlayingAdvancedSpeedControls() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3250);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_142BEC();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_13E4C8(uint64_t a1)
{
  v3 = *(type metadata accessor for NowPlayingAdvancedSpeedControls() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_13D050(a1, v4);
}

uint64_t sub_13E548(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_13E590(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_13E5F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1CA888);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_13E668(uint64_t a1)
{
  v2 = type metadata accessor for NowPlayingPreciseControlSlider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_13E6C8()
{
  result = qword_1CA890;
  if (!qword_1CA890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1CA898);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1CA820);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1CA818);
    sub_13E150();
    sub_1D4A4(&qword_1CA858, &qword_1CA818);
    swift_getOpaqueTypeConformance2();
    sub_13E234();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA890);
  }

  return result;
}

uint64_t sub_13E818()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedApplication];
  v2 = [v1 preferredContentSizeCategory];

  v3 = sub_1448DC();
  v5 = v4;
  if (v3 == sub_1448DC() && v5 == v6)
  {
    goto LABEL_14;
  }

  v8 = sub_1453BC();

  if (v8)
  {
LABEL_6:

    return 1;
  }

  v9 = sub_1448DC();
  v11 = v10;
  if (v9 == sub_1448DC() && v11 == v12)
  {
    goto LABEL_14;
  }

  v14 = sub_1453BC();

  if (v14)
  {
    goto LABEL_6;
  }

  v15 = sub_1448DC();
  v17 = v16;
  if (v15 == sub_1448DC() && v17 == v18)
  {
LABEL_14:

    return 1;
  }

  v20 = sub_1453BC();

  if (v20)
  {
    goto LABEL_6;
  }

  v21 = [v0 sharedApplication];
  v22 = [v21 preferredContentSizeCategory];

  IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();
  return IsAccessibilityContentSizeCategory;
}

double sub_13EA2C(uint64_t a1, uint64_t a2, double a3)
{
  v6 = objc_opt_self();
  v7 = [v6 preferredFontForTextStyle:a2];
  v8 = [objc_opt_self() sharedApplication];
  v9 = [v8 preferredContentSizeCategory];

  v10 = _UIContentSizeCategoryCompareToContentSizeCategory();
  if (v10 != -1)
  {
    v11 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:a1];
    v12 = [v6 preferredFontForTextStyle:a2 compatibleWithTraitCollection:v11];

    v7 = v12;
  }

  [v7 _scaledValueForValue:a3];
  v14 = v13;

  return v14;
}

char *sub_13EB6C(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_title];
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = &v4[OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_duration];
  *v10 = 0;
  v10[8] = 1;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_playbackState] = 2;
  v4[OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_wantsNowPlayingIndicator] = 0;
  v11 = &v4[OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_textComponents];
  *v11 = sub_13FDEC();
  v11[1] = v12;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_nowPlayingIndicatorView] = 0;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_durationTextDrawingView] = 0;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_titleTextDrawingView] = 0;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_accessibilityDuration] = 0;
  v22.receiver = v4;
  v22.super_class = type metadata accessor for DeprecatedChapterCell();
  v13 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  v14 = &v13[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkEdgeInsets];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v15 = v13;
  if ((sub_141AFC() & 1) == 0 || (sub_141AFC() & 1) == 0 || (sub_141AFC() & 1) == 0 || (sub_141AFC() & 1) == 0)
  {
    [v15 setNeedsLayout];
  }

  v16 = &v15[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkSize];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = *&v15[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkComponent];
  *(v17 + 88) = 0;
  *(v17 + 96) = 0;
  sub_CD754();
  v18 = v15[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment];
  v15[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment] = 1;
  if ((v18 & 1) == 0)
  {
    [v15 setNeedsLayout];
  }

  v19 = &v15[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_trailingSeparatorAlignment];
  v20 = v15[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_trailingSeparatorAlignment + 8];
  *v19 = 0;
  v19[8] = 0;
  if (v20 || (sub_141AFC() & 1) == 0)
  {
    [v15 setNeedsLayout];
  }

  return v15;
}

uint64_t sub_13EE40()
{
  v1 = sub_14095C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_textComponents);
  v6 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_title + 8);
  v13[0] = *(v0 + OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_title);
  v13[1] = v6;
  v7 = objc_opt_self();

  v8 = [v7 whitespaceAndNewlineCharacterSet];
  sub_14094C();

  sub_9CCC();
  v9 = sub_14512C();
  v11 = v10;
  (*(v2 + 8))(v4, v1);

  *(v5 + 128) = v9;
  *(v5 + 136) = v11;

  sub_54980();
}

void *sub_13EFBC(void *result, char a2)
{
  v3 = v2;
  v4 = &v2[OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_duration];
  if (a2)
  {
    if (v2[OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_duration + 8])
    {
      return result;
    }

    v5 = *&v2[OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_duration];
  }

  else
  {
    if (v2[OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_duration + 8])
    {
      __break(1u);
      goto LABEL_16;
    }

    v5 = *&v2[OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_duration];
    if (*&result == v5)
    {
      return result;
    }
  }

  v6 = *&v2[OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_textComponents + 8];
  if (v5 >= 0.0)
  {
    sub_14114C();

    *&result = COERCE_DOUBLE(sub_14107C());
    if (v4[1])
    {
LABEL_17:
      __break(1u);
      return result;
    }

    v9 = result;
    v10 = [result stringFromSeconds:*v4];

    v7 = sub_1448DC();
    v8 = v11;
  }

  else
  {

    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v6 + 128) = v7;
  *(v6 + 136) = v8;

  sub_54980();
  *&result = COERCE_DOUBLE();
  if (v4[1])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *&v3[OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_accessibilityDuration] = *v4;

  *&result = COERCE_DOUBLE([v3 setNeedsLayout]);
  return result;
}

id sub_13F140()
{
  v1 = v0;
  v94.receiver = v0;
  v94.super_class = type metadata accessor for DeprecatedChapterCell();
  objc_msgSendSuper2(&v94, "layoutSubviews");
  v2 = [v0 contentView];
  v3 = &selRef_addSublayer_;
  [v2 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v0 music_inheritedLayoutInsets];
  v14 = UIEdgeInsetsInsetRect_0(v5, v7, v9, v11, v12, v13);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  result = [v0 effectiveUserInterfaceLayoutDirection];
  if (*&v0[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_textDrawingCache])
  {
    v22 = &v0[OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_textComponents];
    v23 = *&v0[OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_textComponents + 8];
    v25 = v23[4];
    v24 = v23[5];
    v26 = v23[7];
    v120[4] = v23[6];
    v120[5] = v26;
    v120[2] = v25;
    v120[3] = v24;
    v27 = v23[3];
    v120[0] = v23[2];
    v120[1] = v27;
    sub_9724(v120, v119);

    sub_7B60(0x30303A30303A30, 0xE700000000000000, v120, v95, 0.0, 0.0);
    v28 = *&v95[6];
    if (v0[OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_wantsNowPlayingIndicator] == 1)
    {
      v29 = OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_durationTextDrawingView;
      v30 = *&v1[OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_durationTextDrawingView];
      if (v30)
      {
        [v30 removeFromSuperview];
        v31 = *&v1[v29];
      }

      else
      {
        v31 = 0;
      }

      *&v1[v29] = 0;

      v35 = OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_nowPlayingIndicatorView;
      v36 = *&v1[OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_nowPlayingIndicatorView];
      if (v36)
      {
        v37 = *&v1[OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_nowPlayingIndicatorView];
      }

      else
      {
        v41 = [objc_allocWithZone(MTNowPlayingIndicatorView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
        [v41 setNumberOfLevels:4];
        sub_14114C();
        v37 = v41;
        v42 = sub_14113C();
        [v37 setLevelGuttersColor:v42];

        v43 = *&v1[v35];
        *&v1[v35] = v37;

        v36 = 0;
      }

      v44 = *&v1[OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_playbackState];
      v45 = v36;
      v46 = v37;
      [v46 setPlaybackState:v44];
      v47 = [v1 contentView];
      [v47 addSubview:v46];

      [v46 sizeToFit];
      [v46 frame];
      v121.origin.x = v14;
      v121.origin.y = v16;
      v121.size.width = v18;
      v121.size.height = v20;
      CGRectGetMaxX(v121);
      [v46 frame];
      v48 = [v1 contentView];
      [v48 frame];

      sub_144EFC();
      sub_144F2C();
      [v46 setCenter:?];

      v3 = &selRef_addSublayer_;
    }

    else
    {
      v32 = OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_nowPlayingIndicatorView;
      v33 = *&v1[OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_nowPlayingIndicatorView];
      if (v33)
      {
        [v33 removeFromSuperview];
        v34 = *&v1[v32];
      }

      else
      {
        v34 = 0;
      }

      *&v1[v32] = 0;

      v38 = OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_durationTextDrawingView;
      v39 = *&v1[OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_durationTextDrawingView];
      if (v39)
      {
        v40 = *&v1[OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_durationTextDrawingView];
      }

      else
      {
        _s4ViewCMa();
        v49 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v50 = *&v1[v38];
        *&v1[v38] = v49;
        v40 = v49;

        v39 = 0;
      }

      v51 = v39;
      v52 = [v1 contentView];
      v53 = v40;
      [v52 addSubview:v53];

      v54 = *(v22 + 1);
      v55 = *(v54 + 128);
      v56 = *(v54 + 136);

      v122.origin.x = v14;
      v122.origin.y = v16;
      v122.size.width = v18;
      v122.size.height = v20;
      Height = CGRectGetHeight(v122);
      sub_7B60(v55, v56, v120, v96, v28, Height);
      v106 = v98;
      v107 = v99;
      v108 = v100;
      v109 = v101;
      v102 = v96[0];
      v103 = v96[1];
      v104 = v96[2];
      v105 = v97;

      v114 = v106;
      v115 = v107;
      v116 = v108;
      v117 = v109;
      v110 = v102;
      v111 = v103;
      v112 = v104;
      v113 = v105;
      UIScreen.Dimensions.size.getter(&v110);
      v119[4] = v114;
      v119[5] = v115;
      v119[6] = v116;
      v119[7] = v117;
      v119[0] = v110;
      v119[1] = v111;
      v119[2] = v112;
      v119[3] = v113;
      sub_9AD8(v96, &v86);
      sub_11D894(v119);
      [v53 setBounds:{0.0, 0.0, v28, *(&v97 + 1)}];
      [v53 bounds];
      v123.origin.x = v14;
      v123.origin.y = v16;
      v123.size.width = v18;
      v123.size.height = v20;
      CGRectGetMaxX(v123);
      v58 = [v1 contentView];
      [v58 frame];

      sub_144EFC();
      sub_144F2C();
      [v53 setCenter:?];

      sub_9A84(v96);
    }

    v59 = OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_titleTextDrawingView;
    v60 = *&v1[OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_titleTextDrawingView];
    if (v60)
    {
      v61 = *&v1[OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_titleTextDrawingView];
    }

    else
    {
      _s4ViewCMa();
      v62 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v63 = *&v1[v59];
      *&v1[v59] = v62;
      v61 = v62;

      v60 = 0;
    }

    v64 = v60;
    v65 = [v1 contentView];
    v66 = v61;
    [v65 addSubview:v66];

    v67 = *v22;
    v68 = *(*v22 + 128);
    v69 = *(*v22 + 136);
    v70 = *(*v22 + 64);
    v71 = *(*v22 + 96);
    v72 = *(*v22 + 112);
    v118[3] = *(*v22 + 80);
    v118[4] = v71;
    v118[5] = v72;
    v118[2] = v70;
    v73 = *(v67 + 48);
    v118[0] = *(v67 + 32);
    v118[1] = v73;

    sub_9724(v118, &v110);
    v124.origin.x = v14;
    v124.origin.y = v16;
    v124.size.width = v18 - (v28 + 6.0);
    v124.size.height = v20;
    Width = CGRectGetWidth(v124);
    v125.origin.x = v14;
    v125.origin.y = v16;
    v125.size.width = v18 - (v28 + 6.0);
    v125.size.height = v20;
    v75 = CGRectGetHeight(v125);
    sub_7B60(v68, v69, v118, &v102, Width, v75);
    v82 = v106;
    v83 = v107;
    v84 = v108;
    v85 = v109;
    v78 = v102;
    v79 = v103;
    v80 = v104;
    v81 = v105;

    v90 = v82;
    v91 = v83;
    v92 = v84;
    v93 = v85;
    v86 = v78;
    v87 = v79;
    v88 = v80;
    v89 = v81;
    UIScreen.Dimensions.size.getter(&v86);
    v114 = v90;
    v115 = v91;
    v116 = v92;
    v117 = v93;
    v110 = v86;
    v111 = v87;
    v112 = v88;
    v113 = v89;
    sub_9AD8(&v102, v77);
    sub_11D894(&v110);
    [v66 setBounds:{0.0, 0.0, v105}];
    [v66 v3[181]];
    v126.origin.x = v14;
    v126.origin.y = v16;
    v126.size.width = v18 - (v28 + 6.0);
    v126.size.height = v20;
    CGRectGetHeight(v126);
    v76 = [v1 contentView];
    [v76 frame];

    v127.origin.x = v14;
    v127.origin.y = v16;
    v127.size.width = v18 - (v28 + 6.0);
    v127.size.height = v20;
    CGRectGetMinX(v127);

    sub_144EFC();
    [v66 setFrame:?];

    sub_9A84(&v102);
    sub_9780(v118);
    sub_9A84(v95);

    return sub_9780(v120);
  }

  return result;
}

id sub_13FA9C()
{

  v0 = sub_14489C();

  return v0;
}

void sub_13FB1C()
{

  v1 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_titleTextDrawingView);
}

id sub_13FBA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeprecatedChapterCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DeprecatedChapterCell()
{
  result = qword_1CA980;
  if (!qword_1CA980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_13FD44@<D0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = [objc_opt_self() clearColor];
  v7 = a2;
  *a3 = [a1 typeSafeCopy];
  *(a3 + 8) = a2;
  *(a3 + 16) = v6;
  *(a3 + 24) = xmmword_150220;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0x3F8000003F000000;
  *&result = 1;
  *(a3 + 64) = xmmword_14A340;
  *(a3 + 80) = xmmword_156280;
  return result;
}

uint64_t sub_13FDEC()
{
  v0 = objc_opt_self();
  v1 = [v0 fontDescriptorWithTextStyle:0 leadingAdjustment:1];
  sub_14114C();
  v2 = sub_14104C();
  sub_13FD44(v1, v2, &v32);

  _s9StackViewC9ComponentCMa();
  v3 = swift_allocObject();
  v4 = v34;
  v5 = v35;
  v6 = v35;
  *(v3 + 64) = v34;
  *(v3 + 80) = v5;
  v7 = v36;
  v8 = v37;
  v9 = v37;
  *(v3 + 96) = v36;
  *(v3 + 112) = v8;
  v10 = v32;
  v11 = v33;
  v12 = v33;
  *(v3 + 32) = v32;
  *(v3 + 48) = v11;
  *(v3 + 176) = v4;
  *(v3 + 192) = v6;
  *(v3 + 208) = v7;
  *(v3 + 224) = v9;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0xE000000000000000;
  *(v3 + 240) = 0;
  *(v3 + 248) = 0xE000000000000000;
  *(v3 + 264) = 0;
  *(v3 + 272) = 0;
  *(v3 + 256) = 0;
  *(v3 + 16) = 0x656C746974;
  *(v3 + 24) = 0xE500000000000000;
  *(v3 + 144) = v10;
  *(v3 + 160) = v12;
  sub_9724(&v32, v52);
  sub_9724(&v32, v52);
  v13 = [v0 fontDescriptorWithTextStyle:3 leadingAdjustment:1];
  v14 = sub_14106C();
  v15 = [objc_opt_self() clearColor];
  v16 = [v13 typeSafeCopy];

  v41[0] = v16;
  v41[1] = v14;
  v41[2] = v15;
  LOBYTE(v42) = 1;
  *(&v42 + 1) = v40[0];
  HIDWORD(v42) = *(v40 + 3);
  v43 = 4;
  v44 = 0;
  LOBYTE(v45) = 0;
  *(&v45 + 1) = v38;
  BYTE3(v45) = v39;
  *(&v45 + 4) = 0x3F00000000000000;
  HIDWORD(v45) = 1065353216;
  v17 = v42;
  v18 = *(&v45 + 1);
  v19 = v45 & 0xFFFFFFFF00000003;
  *&v46 = v16;
  *(&v46 + 1) = v14;
  v47 = __PAIR128__(v42, v15);
  v48 = xmmword_150210;
  *&v49 = v45 & 0xFFFFFFFF00000003;
  *(&v49 + 1) = *(&v45 + 1);
  v50 = 1uLL;
  v51 = 0uLL;
  sub_9674(v41, v52);
  sub_9724(&v46, v52);
  sub_9780(&v32);
  v20 = swift_allocObject();
  *(v20 + 128) = 0;
  *(v20 + 136) = 0xE000000000000000;
  v52[0] = v16;
  v52[1] = v14;
  v52[2] = v15;
  v52[3] = v17;
  v53 = xmmword_150210;
  v54 = v19;
  v55 = v18;
  v56 = 1;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  sub_9780(v52);
  v60[0] = v16;
  v60[1] = v14;
  v60[2] = v15;
  v61 = 1;
  *v62 = v40[0];
  *&v62[3] = *(v40 + 3);
  v63 = 4;
  v64 = 0;
  v65 = 0;
  v66 = v38;
  v67 = v39;
  v68 = 0x3F00000000000000;
  v69 = 1065353216;
  sub_96D0(v60);
  v21 = v48;
  v22 = v49;
  v23 = v49;
  *(v20 + 64) = v48;
  *(v20 + 80) = v22;
  v24 = v50;
  v25 = v51;
  v26 = v51;
  *(v20 + 96) = v50;
  *(v20 + 112) = v25;
  v27 = v46;
  v28 = v47;
  v29 = v47;
  *(v20 + 32) = v46;
  *(v20 + 48) = v28;
  *(v20 + 176) = v21;
  *(v20 + 192) = v23;
  *(v20 + 208) = v24;
  *(v20 + 224) = v26;
  *(v20 + 240) = 0;
  *(v20 + 248) = 0xE000000000000000;
  *(v20 + 264) = 0;
  *(v20 + 272) = 0;
  *(v20 + 256) = 0;
  strcpy((v20 + 16), "durationText");
  *(v20 + 29) = 0;
  *(v20 + 30) = -5120;
  *(v20 + 144) = v27;
  *(v20 + 160) = v29;
  sub_9724(&v46, v31);
  return v3;
}

void sub_1401A0()
{
  v1 = (v0 + OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_title);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = v0 + OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_duration;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_playbackState) = 2;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_wantsNowPlayingIndicator) = 0;
  v3 = (v0 + OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_textComponents);
  *v3 = sub_13FDEC();
  v3[1] = v4;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_nowPlayingIndicatorView) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_durationTextDrawingView) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_titleTextDrawingView) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_accessibilityDuration) = 0;
  sub_1452FC();
  __break(1u);
}

BOOL __isOSVersionAtLeast(int a1, int a2, int a3)
{
  if (qword_1D1710 == -1)
  {
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    __isOSVersionAtLeast_cold_1();
    a2 = v6;
    a3 = v5;
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_1D1704 > a2)
  {
    return 1;
  }

  if (dword_1D1704 < a2)
  {
    return 0;
  }

  return dword_1D1708 >= a3;
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_1D1718 == -1)
  {
    if (qword_1D1720)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1D1720)
    {
      return _availability_version_check();
    }
  }

  if (qword_1D1710 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isOSVersionAtLeast_cold_1();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1D1704 > a3)
      {
        return 1;
      }

      if (dword_1D1704 >= a3)
      {
        return dword_1D1708 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v1 = qword_1D1720;
  if (qword_1D1720)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_1D1720 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_1D1704, &dword_1D1708);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}