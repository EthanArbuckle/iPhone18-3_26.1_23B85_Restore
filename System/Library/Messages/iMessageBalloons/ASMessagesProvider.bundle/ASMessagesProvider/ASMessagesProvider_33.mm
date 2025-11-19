id sub_3C25D4@<X0>(void *a1@<X8>)
{
  sub_759210();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

uint64_t sub_3C2614(unint64_t a1, uint64_t a2)
{
  v30 = a2;
  v4 = sub_7652D0();
  __chkstk_darwin(v4 - 8);
  v29 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_765240();
  v6 = *(v28 - 8);
  __chkstk_darwin(v28);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC18ASMessagesProvider32CarouselItemLockupCollectionView_artworkViews;
  swift_beginAccess();
  v31 = *(v2 + v9);
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  v10 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
LABEL_3:

  if (v10)
  {
    v26 = a1 & 0xFFFFFFFFFFFFFF8;
    v27 = a1 & 0xC000000000000001;
    v11 = v31 & 0xFFFFFFFFFFFFFF8;
    if (v31 < 0)
    {
      v12 = v31;
    }

    else
    {
      v12 = v31 & 0xFFFFFFFFFFFFFF8;
    }

    v20[1] = v12;
    v21 = (v6 + 8);
    v13 = 4;
    v24 = v31 & 0xC000000000000001;
    v25 = v31 >> 62;
    v22 = v10;
    v23 = a1;
    do
    {
      v6 = v13 - 4;
      if (v27)
      {
        sub_76A770();
        a1 = v13 - 3;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v6 >= *(v26 + 16))
        {
          goto LABEL_28;
        }

        a1 = v13 - 3;
        if (__OFADD__(v6, 1))
        {
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          v10 = sub_76A860();
          goto LABEL_3;
        }
      }

      if (v25)
      {
        if (v6 == sub_76A860())
        {
LABEL_25:
        }
      }

      else if (v6 == *(v11 + 16))
      {
        goto LABEL_25;
      }

      if (v24)
      {
        v15 = sub_76A770();
      }

      else
      {
        if (v6 >= *(v11 + 16))
        {
          goto LABEL_29;
        }

        v15 = *(v31 + 8 * v13);
      }

      v16 = v15;
      sub_765250();
      v17 = sub_765210();
      (*v21)(v8, v28);
      sub_765330();
      sub_7652E0();
      sub_7591B0();
      v18 = v16;
      [v18 setContentMode:sub_765140()];
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_396E8();
        sub_76A030();
      }

      sub_759070();
      [v18 setContentMode:v17];

      sub_759210();
      sub_14FA38();
      sub_75A050();

      ++v13;
      v14 = a1 == v22;
      a1 = v23;
    }

    while (!v14);
  }
}

uint64_t type metadata accessor for CarouselItemLockupCollectionView()
{
  result = qword_9525B0;
  if (!qword_9525B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3C2A74()
{
  sub_3C2B24();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_3C2B24()
{
  if (!qword_9525C0)
  {
    sub_133D8(&qword_94F910);
    v0 = sub_76A480();
    if (!v1)
    {
      atomic_store(v0, &qword_9525C0);
    }
  }
}

double sub_3C2B88()
{
  sub_3C1FEC(v3);
  sub_B170(v3, v3[3]);
  sub_7673F0();
  v1 = v0;
  sub_BEB8(v3);
  return v1;
}

uint64_t sub_3C2C40()
{
  if (*(v0 + 16) >= 1)
  {
    return sub_766B60();
  }

  return result;
}

uint64_t sub_3C2C9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_9525C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_3C2D0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_9525C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3C2D7C(uint64_t a1)
{
  v2 = sub_BD88(&qword_9525C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3C2DE4()
{
  v0 = sub_BD88(&qword_9526A8);
  sub_161DC(v0, qword_9525D0);
  sub_BE38(v0, qword_9525D0);
  sub_BD88(&qword_9526C0);
  return sub_768800();
}

uint64_t sub_3C2E70()
{
  v0 = sub_BD88(&qword_9526A0);
  sub_161DC(v0, qword_9525E8);
  sub_BE38(v0, qword_9525E8);
  return sub_768800();
}

uint64_t sub_3C2EE8()
{
  v0 = sub_BD88(&unk_945000);
  sub_161DC(v0, qword_952600);
  sub_BE38(v0, qword_952600);
  return sub_768800();
}

uint64_t sub_3C2F68()
{
  v0 = sub_BD88(&unk_945000);
  sub_161DC(v0, qword_952618);
  sub_BE38(v0, qword_952618);
  return sub_768800();
}

uint64_t sub_3C2FE0()
{
  v0 = sub_BD88(&unk_945000);
  sub_161DC(v0, qword_952630);
  sub_BE38(v0, qword_952630);
  return sub_768800();
}

uint64_t sub_3C3058()
{
  v0 = sub_BD88(&qword_9526A0);
  sub_161DC(v0, qword_952648);
  sub_BE38(v0, qword_952648);
  return sub_768800();
}

uint64_t sub_3C30D0()
{
  v0 = sub_BD88(&qword_9526A0);
  sub_161DC(v0, qword_952660);
  sub_BE38(v0, qword_952660);
  return sub_768800();
}

uint64_t sub_3C3148()
{
  ObjectType = swift_getObjectType();
  v0 = sub_7572E0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v89 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&qword_9526A0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v89 - v6;
  sub_7689F0();
  sub_7689E0();
  if (qword_93CF00 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v8 = sub_BD88(&qword_9526A8);
    sub_BE38(v8, qword_9525D0);
    v9 = sub_7686B0();
    v11 = v10;

    v12 = swift_getObjectType();
    if (qword_93CF30 != -1)
    {
      swift_once();
    }

    v94 = v3;
    v98 = v1;
    v13 = sub_BE38(v4, qword_952660);
    v14 = *(v5 + 16);
    v93 = v4;
    v14(v7, v13, v4);
    v102 = xmmword_79ACA0;
    v97 = v12;
    sub_7686E0();
    *&v102 = sub_757380();

    sub_3C4864(&v102);
    v89[3] = v13;
    v1 = 0xED00006449656C61;

    v15 = sub_1413F8(v102);

    *&v102 = &off_87DB10;
    sub_10A720(v15);
    v5 = v102;
    v4 = *(v102 + 16);
    v96 = v0;
    if (!v4)
    {
      break;
    }

    v100 = _swiftEmptyArrayStorage;
    sub_76A7C0();
    v3 = 0;
    while (v3 < *(v5 + 16))
    {
      v102 = *(v5 + 16 * v3 + 32);

      v7 = 0xED00006449656C61;
      sub_3C4160(&v102, v9, v11, ObjectType, v105);

      ++v3;
      v0 = v105[0];
      sub_76A7A0();
      sub_76A7D0();
      sub_76A7E0();
      sub_76A7B0();
      if (v4 == v3)
      {

        v16 = v100;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

  v16 = _swiftEmptyArrayStorage;
LABEL_10:
  v92 = sub_BD88(&unk_93F5C0);
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_79ACB0;
  v17 = swift_allocObject();
  *(v17 + 16) = v9;
  *(v17 + 24) = v11;
  strcpy((v17 + 32), "unsetLocaleId");
  *(v17 + 46) = -4864;
  *(v17 + 48) = ObjectType;
  v89[2] = type metadata accessor for MenuDebugSetting();
  v18 = swift_allocObject();
  v18[7] = 0xD000000000000011;
  v18[8] = 0x80000000007DF360;
  v18[9] = v16;
  v18[10] = sub_3C4910;
  v18[11] = v17;
  swift_unknownObjectRetain();

  v19 = v94;
  sub_7572D0();
  v20 = sub_7572B0();
  v21 = v11;
  v23 = v22;
  v24 = *(v98 + 8);
  v98 += 8;
  v95 = v24;
  v24(v19, v96);
  *&v102 = v20;
  *(&v102 + 1) = v23;
  sub_76A6E0();
  if (qword_93CF08 != -1)
  {
    swift_once();
  }

  sub_BE38(v93, qword_9525E8);
  sub_7686D0();
  v26 = *(&v102 + 1);
  v25 = v102;
  if (!*(&v102 + 1))
  {
    v25 = 0x636F4C7465736E75;
    v26 = 0xED00006449656C61;
  }

  v100 = v25;
  v101 = v26;
  v27 = sub_76A6E0();
  __chkstk_darwin(v27);
  v88 = &v102;

  sub_615E1C(sub_23D8AC, &v89[-4], v16);
  v89[1] = 0;

  sub_160090(&v102);
  v28 = v91;
  *(v91 + 32) = v18;
  v29 = type metadata accessor for DebugSetting();
  if (qword_93CF10 != -1)
  {
    swift_once();
  }

  v30 = sub_BD88(&unk_945000);
  v31 = sub_BE38(v30, qword_952600);
  swift_unknownObjectRetain();
  v32 = sub_334524(0x72656D6165726353, 0xED000065646F4D20, 0xD000000000000025, 0x80000000007DF380, v31, v9, 0, v29, v97, v21);
  swift_unknownObjectRelease();
  v28[5] = v32;
  v90 = v29;
  v33 = v96;
  v34 = v21;
  v35 = v94;
  if (qword_93CF18 != -1)
  {
    swift_once();
  }

  v36 = sub_BE38(v30, qword_952618);
  swift_unknownObjectRetain();
  v37 = sub_334524(0xD000000000000011, 0x80000000007DF3B0, 0xD00000000000002CLL, 0x80000000007DF3D0, v36, v9, 1, v90, v97, v34);
  swift_unknownObjectRelease();
  v28[6] = v37;
  v89[0] = type metadata accessor for InfoDebugSetting();
  v38 = swift_allocObject();
  v38[7] = 0xD000000000000013;
  v38[8] = 0x80000000007DF400;
  v38[9] = 0xD00000000000001CLL;
  v38[10] = 0x80000000007DF420;
  sub_7572D0();
  v39 = sub_7572B0();
  v41 = v40;
  v95(v35, v33);
  *&v102 = v39;
  *(&v102 + 1) = v41;
  sub_76A6E0();
  v28[7] = v38;
  v42 = v28;
  if (qword_93CF20 != -1)
  {
    swift_once();
  }

  v43 = sub_BE38(v30, qword_952630);
  swift_unknownObjectRetain();
  v44 = sub_334524(0xD000000000000012, 0x80000000007DF440, 0xD000000000000030, 0x80000000007DF460, v43, v9, 0, v90, v97, v34);
  swift_unknownObjectRelease();
  v42[8] = v44;
  v45 = v34;
  v90 = 0x80000000007DF4A0;
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_78D690;
  v100 = 1701736302;
  v101 = 0xE400000000000000;
  sub_76A6E0();
  v47 = swift_allocObject();
  v47[2] = v9;
  v47[3] = v34;
  v48 = ObjectType;
  v47[4] = ObjectType;
  type metadata accessor for MenuItemDebugSetting();
  v49 = swift_allocObject();
  *(v49 + 72) = 0;
  *(v49 + 56) = 1701736270;
  *(v49 + 64) = 0xE400000000000000;
  *(v49 + 80) = sub_3C52EC;
  *(v49 + 88) = v47;
  v50 = v103;
  *(v49 + 16) = v102;
  *(v49 + 32) = v50;
  *(v49 + 48) = v104;
  *(v46 + 32) = v49;
  v100 = 0x646E616D65446E6FLL;
  v101 = 0xE800000000000000;
  swift_unknownObjectRetain();
  sub_76A6E0();
  v51 = swift_allocObject();
  v51[2] = v9;
  v51[3] = v45;
  v51[4] = v48;
  v52 = swift_allocObject();
  *(v52 + 72) = 0;
  *(v52 + 56) = 0x6E616D6544206E4FLL;
  *(v52 + 64) = 0xE900000000000064;
  *(v52 + 80) = sub_3C5314;
  *(v52 + 88) = v51;
  v53 = v103;
  *(v52 + 16) = v102;
  *(v52 + 32) = v53;
  *(v52 + 48) = v104;
  *(v46 + 40) = v52;
  v100 = 0x74726174536E6FLL;
  v101 = 0xE700000000000000;
  swift_unknownObjectRetain();
  sub_76A6E0();
  v54 = swift_allocObject();
  v54[2] = v9;
  v54[3] = v45;
  v54[4] = v48;
  v55 = swift_allocObject();
  *(v55 + 72) = 0;
  *(v55 + 56) = 0x7472617453206E4FLL;
  *(v55 + 64) = 0xE800000000000000;
  *(v55 + 80) = sub_3C5374;
  *(v55 + 88) = v54;
  v56 = v103;
  *(v55 + 16) = v102;
  *(v55 + 32) = v56;
  *(v55 + 48) = v104;
  *(v46 + 48) = v55;
  v57 = swift_allocObject();
  v57[2] = v9;
  v57[3] = v45;
  v57[4] = v48;
  v58 = swift_allocObject();
  v59 = v90;
  v58[7] = 0xD00000000000001ALL;
  v58[8] = v59;
  v58[9] = v46;
  v58[10] = sub_3C539C;
  v58[11] = v57;
  swift_unknownObjectRetain_n();

  sub_7572D0();
  v60 = sub_7572B0();
  v62 = v61;
  v95(v35, v96);
  *&v102 = v60;
  *(&v102 + 1) = v62;
  sub_76A6E0();
  if (qword_93CF28 != -1)
  {
    swift_once();
  }

  sub_BE38(v93, qword_952648);
  sub_7686D0();
  v64 = *(&v102 + 1);
  v63 = v102;
  if (!*(&v102 + 1))
  {
    v63 = 0x74726174536E6FLL;
    v64 = 0xE700000000000000;
  }

  v100 = v63;
  v101 = v64;
  v65 = sub_76A6E0();
  __chkstk_darwin(v65);
  v88 = &v102;

  sub_615E1C(sub_23F0B4, &v89[-4], v46);

  sub_160090(&v102);
  v66 = v91;
  *(v91 + 72) = v58;
  sub_7686D0();
  v67 = v102;
  v68 = swift_allocObject();
  *(v68 + 56) = 0xD000000000000016;
  *(v68 + 64) = 0x80000000007DF4C0;
  *(v68 + 72) = v67;

  sub_7572D0();
  v69 = sub_7572B0();
  v71 = v70;
  v73 = v95;
  v72 = v96;
  v95(v35, v96);
  v100 = v69;
  v101 = v71;
  sub_76A6E0();

  v66[10] = v68;
  type metadata accessor for ActionDebugSetting();
  v74 = swift_allocObject();
  strcpy((v74 + 56), "Apply Settings");
  *(v74 + 71) = -18;
  *(v74 + 72) = 0u;
  *(v74 + 88) = 0u;
  *(v74 + 104) = sub_3C47DC;
  *(v74 + 112) = 0;
  sub_7572D0();
  v75 = sub_7572B0();
  v77 = v76;
  v73(v35, v72);
  *&v102 = v75;
  *(&v102 + 1) = v77;
  sub_76A6E0();
  v66[11] = v74;
  v78 = swift_allocObject();
  strcpy((v78 + 56), "Reset Settings");
  *(v78 + 71) = -18;
  *(v78 + 72) = 0u;
  *(v78 + 88) = 0u;
  *(v78 + 104) = sub_3C53A8;
  *(v78 + 112) = 0;
  sub_7572D0();
  v79 = sub_7572B0();
  v81 = v80;
  v73(v35, v72);
  *&v102 = v79;
  *(&v102 + 1) = v81;
  sub_76A6E0();
  v66[12] = v78;
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_77D9F0;
  type metadata accessor for DebugSection();
  v83 = swift_allocObject();
  sub_7572D0();
  v84 = sub_7572B0();
  v86 = v85;
  v73(v35, v72);
  v83[2] = v84;
  v83[3] = v86;
  v83[4] = 0;
  v83[5] = 0xE000000000000000;
  v83[6] = v66;
  *(v82 + 32) = v83;
  swift_unknownObjectRelease();
  return v82;
}

uint64_t sub_3C4160@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  if (v9)
  {
    v10 = a1[1];
    v11 = *a1;
  }

  else
  {

    v11 = 0x74655320746F4ELL;
    v10 = 0xE700000000000000;
  }

  sub_76A6E0();
  v12 = swift_allocObject();
  v12[2] = v8;
  v12[3] = v9;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = a4;
  type metadata accessor for MenuItemDebugSetting();
  v13 = swift_allocObject();
  *(v13 + 72) = 0;
  *(v13 + 56) = v11;
  *(v13 + 64) = v10;
  *(v13 + 80) = sub_3C5530;
  *(v13 + 88) = v12;
  *(v13 + 16) = v16;
  *(v13 + 32) = v17;
  *(v13 + 48) = v18;
  *a5 = v13;
  swift_bridgeObjectRetain_n();
  return swift_unknownObjectRetain();
}

uint64_t sub_3C42A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_9526A0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13[-1] - v6;
  swift_getObjectType();
  if (a2)
  {
    if (qword_93CF08 != -1)
    {
      swift_once();
    }

    v8 = sub_BE38(v4, qword_9525E8);
    (*(v5 + 16))(v7, v8, v4);
    v13[0] = a1;
    v13[1] = a2;

    return sub_7686E0();
  }

  else
  {
    if (qword_93CF08 != -1)
    {
      swift_once();
    }

    v10 = sub_BE38(v4, qword_9525E8);
    v13[3] = v4;
    v13[4] = sub_3C5540(&qword_9526B8, &qword_9526A0);
    v11 = sub_B1B4(v13);
    (*(v5 + 16))(v11, v10, v4);
    sub_7686A0();
    return sub_BEB8(v13);
  }
}

uint64_t sub_3C44A8()
{
  swift_getObjectType();
  if (qword_93CF08 != -1)
  {
    swift_once();
  }

  v0 = sub_BD88(&qword_9526A0);
  sub_BE38(v0, qword_9525E8);
  sub_7686D0();
  if (!v2)
  {
  }

  return sub_76A6E0();
}

uint64_t sub_3C459C(__n128 a1)
{
  v7[0] = a1;
  v1 = sub_BD88(&qword_9526A0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v7 - v3;
  swift_getObjectType();
  if (qword_93CF28 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v1, qword_952648);
  (*(v2 + 16))(v4, v5, v1);
  v7[1] = v7[0];
  return sub_7686E0();
}

uint64_t sub_3C46E8()
{
  swift_getObjectType();
  if (qword_93CF28 != -1)
  {
    swift_once();
  }

  v0 = sub_BD88(&qword_9526A0);
  sub_BE38(v0, qword_952648);
  sub_7686D0();
  return sub_76A6E0();
}

void sub_3C47DC()
{
  v0 = [objc_opt_self() sharedCoordinator];
  [v0 notify];
}

Swift::Int sub_3C4864(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2050E4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_3C4920(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_3C48D0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

Swift::Int sub_3C4920(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_76A900(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_7694E0();
        *(v5 + 2) = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_3C4AE8(v7, v8, a1, v4);
      v6[2] = 0.0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_3C4A18(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_3C4A18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_76A950(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_3C4AE8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_204F10(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_3C50C4((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_76A950();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_76A950();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_7BFD4(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_7BFD4((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
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
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_3C50C4((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_204F10(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_204E84(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_76A950(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_3C50C4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_76A950() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_76A950() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_3C533C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

void sub_3C53A8()
{
  sub_7689F0();
  sub_7689E0();
  if (qword_93CF00 != -1)
  {
    swift_once();
  }

  v0 = sub_BD88(&qword_9526A8);
  v1 = sub_BE38(v0, qword_9525D0);
  v4[3] = v0;
  v4[4] = sub_3C5540(&qword_9526B0, &qword_9526A8);
  v2 = sub_B1B4(v4);
  (*(*(v0 - 8) + 16))(v2, v1, v0);
  sub_7689D0();

  sub_BEB8(v4);
  v3 = [objc_opt_self() sharedCoordinator];
  [v3 notify];
}

uint64_t sub_3C54F0()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_3C5540(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_133D8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void ShelfHeaderLayout.Metrics.eyebrowVerticalMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[5] = a1;
  v4[6] = a2;
  v4[7] = a3;
  v4[8] = a4;
}

uint64_t ShelfHeaderLayout.Metrics.eyebrowArtworkMaxWidth.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 28);
  v4 = sub_766CA0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShelfHeaderLayout.Metrics.eyebrowArtworkMaxWidth.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 28);
  v4 = sub_766CA0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ShelfHeaderLayout.Metrics.eyebrowArtworkMaxHeight.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 32);
  v4 = sub_766CA0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShelfHeaderLayout.Metrics.eyebrowArtworkMaxHeight.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 32);
  v4 = sub_766CA0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ShelfHeaderLayout.Metrics.eyebrowArtworkTrailingMargin.setter(double a1)
{
  result = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t ShelfHeaderLayout.Metrics.eyebrowArtworkAspectRatio.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 40);

  return sub_3C5990(a1, v3);
}

uint64_t sub_3C5990(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_948720);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ShelfHeaderLayout.Metrics.titleLineHeight.setter(double a1)
{
  result = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t ShelfHeaderLayout.Metrics.titleVerticalMargins.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  v10 = (v4 + *(result + 48));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t ShelfHeaderLayout.Metrics.titleArtworkMaxWidth.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 52);
  v4 = sub_766CA0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShelfHeaderLayout.Metrics.titleArtworkMaxWidth.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 52);
  v4 = sub_766CA0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ShelfHeaderLayout.Metrics.titleArtworkMaxHeight.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 56);
  v4 = sub_766CA0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShelfHeaderLayout.Metrics.titleArtworkMaxHeight.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 56);
  v4 = sub_766CA0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ShelfHeaderLayout.Metrics.titleArtworkAspectRatio.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 60);

  return sub_3C5990(a1, v3);
}

uint64_t ShelfHeaderLayout.Metrics.titleArtworkTrailingMargin.setter(double a1)
{
  result = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t ShelfHeaderLayout.Metrics.accessoryMargins.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  v10 = (v4 + *(result + 68));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

double ShelfHeaderLayout.init(metrics:separatorView:eyebrowButton:eyebrowImage:titleLabel:titleImage:subtitleLabel:accessoryView:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v57 = a7;
  v58 = a6;
  v59 = a5;
  v60 = a4;
  v61 = a3;
  v56 = a1;
  sub_3CA0AC(a1, a9, type metadata accessor for ShelfHeaderLayout.Metrics);
  v55 = a2;
  sub_1ED18(a2, v62, &unk_943B10);
  v12 = v63;
  if (v63)
  {
    v13 = v64;
    sub_B170(v62, v63);
    v14 = sub_76A480();
    v15 = *(v14 - 8);
    __chkstk_darwin(v14);
    v17 = &v55 - v16;
    sub_766510();
    v18 = *(v12 - 8);
    if ((*(v18 + 48))(v17, 1, v12) == 1)
    {
      (*(v15 + 8))(v17, v14);
      v67 = 0;
      v65 = 0u;
      v66 = 0u;
    }

    else
    {
      *(&v66 + 1) = v12;
      v67 = v13;
      v19 = sub_B1B4(&v65);
      (*(v18 + 32))(v19, v17, v12);
    }

    sub_BEB8(v62);
  }

  else
  {
    sub_10A2C(v62, &unk_943B10);
    v65 = 0u;
    v66 = 0u;
    v67 = 0;
  }

  v20 = type metadata accessor for ShelfHeaderLayout(0);
  v21 = a9 + v20[5];
  v22 = v66;
  *v21 = v65;
  *(v21 + 16) = v22;
  *(v21 + 32) = v67;
  sub_1ED18(v61, a9 + v20[6], &unk_941EB0);
  sub_1ED18(v60, v62, &unk_943B10);
  v23 = v63;
  if (v63)
  {
    v24 = v64;
    sub_B170(v62, v63);
    v25 = sub_76A480();
    v26 = *(v25 - 8);
    __chkstk_darwin(v25);
    v28 = &v55 - v27;
    sub_766510();
    v29 = *(v23 - 8);
    if ((*(v29 + 48))(v28, 1, v23) == 1)
    {
      (*(v26 + 8))(v28, v25);
      v67 = 0;
      v65 = 0u;
      v66 = 0u;
    }

    else
    {
      *(&v66 + 1) = v23;
      v67 = v24;
      v30 = sub_B1B4(&v65);
      (*(v29 + 32))(v30, v28, v23);
    }

    sub_BEB8(v62);
  }

  else
  {
    sub_10A2C(v62, &unk_943B10);
    v65 = 0u;
    v66 = 0u;
    v67 = 0;
  }

  v31 = a9 + v20[7];
  v32 = v66;
  *v31 = v65;
  *(v31 + 16) = v32;
  *(v31 + 32) = v67;
  sub_134D8(v59, a9 + v20[8]);
  sub_1ED18(v58, v62, &unk_943B10);
  v33 = v63;
  if (v63)
  {
    v34 = v64;
    sub_B170(v62, v63);
    v35 = sub_76A480();
    v36 = *(v35 - 8);
    __chkstk_darwin(v35);
    v38 = &v55 - v37;
    sub_766510();
    v39 = *(v33 - 8);
    if ((*(v39 + 48))(v38, 1, v33) == 1)
    {
      (*(v36 + 8))(v38, v35);
      v67 = 0;
      v65 = 0u;
      v66 = 0u;
    }

    else
    {
      *(&v66 + 1) = v33;
      v67 = v34;
      v41 = sub_B1B4(&v65);
      (*(v39 + 32))(v41, v38, v33);
    }

    v40 = v57;
    sub_BEB8(v62);
  }

  else
  {
    sub_10A2C(v62, &unk_943B10);
    v65 = 0u;
    v66 = 0u;
    v67 = 0;
    v40 = v57;
  }

  v42 = a9 + v20[9];
  v43 = v66;
  *v42 = v65;
  *(v42 + 16) = v43;
  *(v42 + 32) = v67;
  sub_1ED18(v40, a9 + v20[10], &unk_941EB0);
  sub_1ED18(a8, v62, &unk_943B10);
  v44 = v63;
  if (v63)
  {
    v45 = v64;
    sub_B170(v62, v63);
    v46 = sub_76A480();
    v47 = *(v46 - 8);
    __chkstk_darwin(v46);
    v49 = &v55 - v48;
    sub_766510();
    v50 = *(v44 - 8);
    if ((*(v50 + 48))(v49, 1, v44) == 1)
    {
      sub_10A2C(a8, &unk_943B10);
      sub_10A2C(v57, &unk_941EB0);
      sub_10A2C(v58, &unk_943B10);
      sub_BEB8(v59);
      sub_10A2C(v60, &unk_943B10);
      sub_10A2C(v61, &unk_941EB0);
      sub_10A2C(v55, &unk_943B10);
      sub_3C69C0(v56);
      (*(v47 + 8))(v49, v46);
      v67 = 0;
      v65 = 0u;
      v66 = 0u;
    }

    else
    {
      *(&v66 + 1) = v44;
      v67 = v45;
      v51 = sub_B1B4(&v65);
      (*(v50 + 32))(v51, v49, v44);
      sub_10A2C(a8, &unk_943B10);
      sub_10A2C(v57, &unk_941EB0);
      sub_10A2C(v58, &unk_943B10);
      sub_BEB8(v59);
      sub_10A2C(v60, &unk_943B10);
      sub_10A2C(v61, &unk_941EB0);
      sub_10A2C(v55, &unk_943B10);
      sub_3C69C0(v56);
    }

    sub_BEB8(v62);
  }

  else
  {
    sub_10A2C(a8, &unk_943B10);
    sub_10A2C(v40, &unk_941EB0);
    sub_10A2C(v58, &unk_943B10);
    sub_BEB8(v59);
    sub_10A2C(v60, &unk_943B10);
    sub_10A2C(v61, &unk_941EB0);
    sub_10A2C(v55, &unk_943B10);
    sub_3C69C0(v56);
    sub_10A2C(v62, &unk_943B10);
    v65 = 0u;
    v66 = 0u;
    v67 = 0;
  }

  v52 = a9 + v20[11];
  result = *&v65;
  v54 = v66;
  *v52 = v65;
  *(v52 + 16) = v54;
  *(v52 + 32) = v67;
  return result;
}

uint64_t sub_3C69C0(uint64_t a1)
{
  v2 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ShelfHeaderLayout.titleLabel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ShelfHeaderLayout(0) + 32);

  return sub_134D8(v3, a1);
}

double ShelfHeaderLayout.measure(toFit:with:)(void *a1)
{
  v2 = [a1 preferredContentSizeCategory];
  v3 = sub_769B30();

  v9 = sub_767340();
  v10 = &protocol witness table for Margins;
  sub_B1B4(&v8);
  if (v3)
  {
    v4 = sub_3C8C58;
  }

  else
  {
    v4 = sub_3C713C;
  }

  sub_3C6EDC(a1, sub_139800, v4);
  sub_10914(&v8, v11);
  sub_B170(v11, v11[3]);
  sub_7673F0();
  v6 = v5;
  sub_BEB8(v11);
  return v6;
}

uint64_t ShelfHeaderLayout.place(at:with:)(void *a1)
{
  v2 = [a1 preferredContentSizeCategory];
  v3 = sub_769B30();

  v7 = sub_767340();
  v8 = &protocol witness table for Margins;
  sub_B1B4(&v6);
  if (v3)
  {
    v4 = sub_3C8C58;
  }

  else
  {
    v4 = sub_3C713C;
  }

  sub_3C6EDC(a1, sub_139800, v4);
  sub_10914(&v6, v9);
  sub_B170(v9, v9[3]);
  sub_7673E0();
  return sub_BEB8(v9);
}

uint64_t sub_3C6EDC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v6 = sub_766950();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_766930();
  v10 = type metadata accessor for ShelfHeaderLayout(0);
  sub_1ED18(v3 + *(v10 + 20), &v13, &unk_943B10);
  if (v14)
  {
    sub_10914(&v13, v15);
    sub_B170(v15, v16);
    sub_7665D0();
    sub_7668F0();
    sub_BEB8(&v13);
    sub_BEB8(v15);
  }

  else
  {
    sub_10A2C(&v13, &unk_943B10);
  }

  v16 = sub_767340();
  v17 = &protocol witness table for Margins;
  sub_B1B4(v15);
  a3(a1);
  sub_7668F0();
  sub_BEB8(v15);
  sub_7697A0();
  v16 = v6;
  v17 = &protocol witness table for VerticalStack;
  v11 = sub_B1B4(v15);
  (*(v7 + 16))(v11, v9, v6);
  sub_767330();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_3C713C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v20 = a2;
  v5 = type metadata accessor for ShelfHeaderLayout(0);
  v6 = v5 - 8;
  v19 = *(v5 - 8);
  v7 = *(v19 + 64);
  __chkstk_darwin(v5);
  v8 = sub_766950();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_766930();
  sub_1ED18(v3 + *(v6 + 32), v21, &unk_941EB0);
  v12 = v22;
  sub_10A2C(v21, &unk_941EB0);
  if (v12)
  {
    v22 = sub_766BD0();
    v23 = &protocol witness table for HorizontalStack;
    v13 = sub_B1B4(v21);
    sub_3C7448(a1, v13);
    sub_3CA0AC(v3, &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShelfHeaderLayout);
    v14 = (*(v19 + 80) + 16) & ~*(v19 + 80);
    v15 = swift_allocObject();
    sub_3CA118(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
    sub_7668F0();

    sub_BEB8(v21);
  }

  sub_3C7D1C(a1, v21);
  sub_7668F0();
  sub_BEB8(v21);
  sub_7697D0();
  v22 = v8;
  v23 = &protocol witness table for VerticalStack;
  v16 = sub_B1B4(v21);
  (*(v9 + 16))(v16, v11, v8);
  sub_767330();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_3C7448@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a1;
  v4 = type metadata accessor for ShelfHeaderLayout(0);
  v67 = *(v4 - 8);
  __chkstk_darwin(v4);
  v68 = v5;
  v69 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7672E0();
  v62 = *(v6 - 8);
  v63 = v6;
  __chkstk_darwin(v6);
  v61 = (&v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v60 = (&v53 - v9);
  __chkstk_darwin(v10);
  v59 = (&v53 - v11);
  __chkstk_darwin(v12);
  v58 = (&v53 - v13);
  v14 = sub_7672F0();
  v65 = *(v14 - 8);
  v66 = v14;
  __chkstk_darwin(v14);
  v64 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_76A920();
  v57 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_BD88(&unk_948720);
  __chkstk_darwin(v19 - 8);
  v21 = &v53 - v20;
  v22 = sub_766690();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a2;
  sub_766BA0();
  v72 = v4;
  sub_1ED18(v2 + *(v4 + 28), &v77, &unk_943B10);
  if (v78)
  {
    sub_10914(&v77, v80);
    v26 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
    sub_1ED18(v2 + *(v26 + 40), v21, &unk_948720);
    if ((*(v23 + 48))(v21, 1, v22) == 1)
    {
      sub_10A2C(v21, &unk_948720);
      sub_BEB8(v80);
    }

    else
    {
      v55 = v22;
      v56 = v23;
      v27 = *(v23 + 32);
      v54 = v25;
      v27(v25, v21, v22);
      sub_766470();
      sub_766C70();
      v28 = *(v57 + 8);
      v28(v18, v16);
      sub_766470();
      sub_766C70();
      v28(v18, v16);
      sub_766610();
      v30 = v29;
      v32 = v31;
      v33 = (*(v2 + 32) - v31) * 0.5;
      sub_B170(v80, v80[3]);
      sub_7665D0();
      v57 = v2;
      v34 = v58;
      *(v58 + 3) = &type metadata for CGFloat;
      *(v34 + 4) = &protocol witness table for CGFloat;
      *v34 = v30;
      v35 = enum case for Resize.Rule.replaced(_:);
      v36 = v63;
      v37 = *(v62 + 104);
      v37(v34, enum case for Resize.Rule.replaced(_:), v63);
      v38 = v59;
      *(v59 + 3) = &type metadata for CGFloat;
      *(v38 + 4) = &protocol witness table for CGFloat;
      *v38 = v32;
      v37(v38, v35, v36);
      v39 = enum case for Resize.Rule.unchanged(_:);
      v37(v60, enum case for Resize.Rule.unchanged(_:), v36);
      v37(v61, v39, v36);
      v40 = v64;
      sub_767300();
      v41 = v66;
      v76[3] = v66;
      v76[4] = &protocol witness table for Resize;
      v42 = sub_B1B4(v76);
      v43 = v65;
      (*(v65 + 16))(v42, v40, v41);
      v75[8] = &type metadata for CGFloat;
      v75[9] = &protocol witness table for CGFloat;
      *&v75[5] = v33;
      v44 = sub_766970();
      v75[3] = v44;
      v75[4] = &protocol witness table for ZeroDimension;
      sub_B1B4(v75);
      sub_766960();
      v74[3] = v44;
      v74[4] = &protocol witness table for ZeroDimension;
      sub_B1B4(v74);
      sub_766960();
      v73[3] = v44;
      v73[4] = &protocol witness table for ZeroDimension;
      sub_B1B4(v73);
      sub_766960();
      v78 = sub_767340();
      v79 = &protocol witness table for Margins;
      sub_B1B4(&v77);
      sub_767350();
      v45 = v57;
      v46 = v69;
      sub_3CA0AC(v57, v69, type metadata accessor for ShelfHeaderLayout);
      v47 = (*(v67 + 80) + 16) & ~*(v67 + 80);
      v48 = (v68 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
      v49 = swift_allocObject();
      sub_3CA118(v46, v49 + v47);
      v50 = v70;
      *(v49 + v48) = v70;
      v51 = v50;
      sub_766B90();

      (*(v43 + 8))(v40, v41);
      (*(v56 + 8))(v54, v55);
      sub_BEB8(&v77);
      sub_BEB8(v80);
      v2 = v45;
    }
  }

  else
  {
    sub_10A2C(&v77, &unk_943B10);
  }

  sub_1ED18(v2 + *(v72 + 24), &v77, &unk_941EB0);
  if (!v78)
  {
    return sub_10A2C(&v77, &unk_941EB0);
  }

  sub_10914(&v77, v80);
  sub_766B90();
  return sub_BEB8(v80);
}

uint64_t sub_3C7D1C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v97 = a2;
  v3 = sub_767240();
  v90 = *(v3 - 8);
  v91 = v3;
  __chkstk_darwin(v3);
  v92 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_766950();
  v95 = *(v110 - 8);
  __chkstk_darwin(v110);
  v94 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v96 = &v83 - v7;
  v8 = type metadata accessor for ShelfHeaderLayout(0);
  v105 = *(v8 - 8);
  __chkstk_darwin(v8);
  v106 = v9;
  v107 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_7672E0();
  v99 = *(v10 - 8);
  v100 = v10;
  __chkstk_darwin(v10);
  v104 = (&v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v103 = (&v83 - v13);
  __chkstk_darwin(v14);
  v102 = (&v83 - v15);
  __chkstk_darwin(v16);
  v18 = (&v83 - v17);
  v101 = sub_7672F0();
  v19 = *(v101 - 8);
  __chkstk_darwin(v101);
  v89 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_76A920();
  v88 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_BD88(&unk_948720);
  __chkstk_darwin(v24 - 8);
  v26 = &v83 - v25;
  v27 = sub_766690();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v93 = &v83 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_766BD0();
  v108 = *(v30 - 8);
  v109 = v30;
  __chkstk_darwin(v30);
  v111 = &v83 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_766BA0();
  v112 = v8;
  v32 = *(v8 + 36);
  v33 = v98;
  sub_1ED18(v98 + v32, &v119, &unk_943B10);
  if (v120)
  {
    v87 = v19;
    v34 = a1;
    sub_10914(&v119, v122);
    v35 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
    sub_1ED18(v33 + *(v35 + 60), v26, &unk_948720);
    if ((*(v28 + 48))(v26, 1, v27) == 1)
    {
      sub_10A2C(v26, &unk_948720);
      sub_BEB8(v122);
      v36 = v33;
    }

    else
    {
      v85 = v27;
      v86 = v28;
      (*(v28 + 32))(v93, v26, v27);
      sub_766470();
      v84 = v34;
      sub_766C70();
      v37 = v33;
      v38 = *(v88 + 8);
      v38(v23, v21);
      sub_766470();
      sub_766C70();
      v38(v23, v21);
      sub_766610();
      v40 = v39;
      v42 = v41;
      v43 = (*(v37 + *(v35 + 44)) - v41) * 0.5;
      sub_B170(v122, v123);
      sub_7665D0();
      v45 = v99;
      v44 = v100;
      v18[3] = &type metadata for CGFloat;
      v18[4] = &protocol witness table for CGFloat;
      *v18 = v40;
      v46 = enum case for Resize.Rule.replaced(_:);
      v47 = *(v45 + 104);
      v47(v18, enum case for Resize.Rule.replaced(_:), v44);
      v48 = v102;
      *(v102 + 3) = &type metadata for CGFloat;
      *(v48 + 4) = &protocol witness table for CGFloat;
      *v48 = v42;
      v47(v48, v46, v44);
      v49 = enum case for Resize.Rule.unchanged(_:);
      v47(v103, enum case for Resize.Rule.unchanged(_:), v44);
      v47(v104, v49, v44);
      v50 = v89;
      sub_767300();
      v51 = v101;
      v117 = v101;
      v118 = &protocol witness table for Resize;
      v52 = sub_B1B4(v116);
      v53 = v87;
      (*(v87 + 16))(v52, v50, v51);
      v115[8] = &type metadata for CGFloat;
      v115[9] = &protocol witness table for CGFloat;
      *&v115[5] = v43;
      v54 = sub_766970();
      v115[3] = v54;
      v115[4] = &protocol witness table for ZeroDimension;
      sub_B1B4(v115);
      sub_766960();
      v114[3] = v54;
      v114[4] = &protocol witness table for ZeroDimension;
      sub_B1B4(v114);
      sub_766960();
      v113[3] = v54;
      v113[4] = &protocol witness table for ZeroDimension;
      sub_B1B4(v113);
      sub_766960();
      v120 = sub_767340();
      v121 = &protocol witness table for Margins;
      sub_B1B4(&v119);
      sub_767350();
      v55 = v98;
      v56 = v107;
      sub_3CA0AC(v98, v107, type metadata accessor for ShelfHeaderLayout);
      v57 = (*(v105 + 80) + 16) & ~*(v105 + 80);
      v58 = (v106 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
      v59 = swift_allocObject();
      sub_3CA118(v56, v59 + v57);
      v60 = v84;
      *(v59 + v58) = v84;
      v61 = v60;
      sub_766B90();

      (*(v53 + 8))(v50, v51);
      (*(v86 + 8))(v93, v85);
      sub_BEB8(&v119);
      sub_BEB8(v122);
      v36 = v55;
    }
  }

  else
  {
    sub_10A2C(&v119, &unk_943B10);
    v36 = v33;
  }

  sub_134D8(v36 + v112[8], &v119);
  *v18 = sub_E69A4;
  v18[1] = 0;
  v62 = v100;
  v63 = *(v99 + 104);
  v63(v18, enum case for Resize.Rule.recalculated(_:), v100);
  v64 = enum case for Resize.Rule.unchanged(_:);
  v63(v102, enum case for Resize.Rule.unchanged(_:), v62);
  v63(v103, v64, v62);
  v63(v104, v64, v62);
  v123 = v101;
  v124 = &protocol witness table for Resize;
  sub_B1B4(v122);
  sub_767300();
  v65 = v111;
  sub_766B90();
  sub_BEB8(v122);
  v66 = v94;
  sub_766930();
  v67 = v109;
  v123 = v109;
  v124 = &protocol witness table for HorizontalStack;
  v68 = sub_B1B4(v122);
  (*(v108 + 16))(v68, v65, v67);
  v69 = v107;
  sub_3CA0AC(v36, v107, type metadata accessor for ShelfHeaderLayout);
  v70 = (*(v105 + 80) + 16) & ~*(v105 + 80);
  v71 = swift_allocObject();
  sub_3CA118(v69, v71 + v70);
  v72 = v96;
  sub_766940();

  v73 = v95;
  v74 = *(v95 + 8);
  v74(v66, v110);
  sub_BEB8(v122);
  sub_1ED18(v36 + v112[10], &v119, &unk_941EB0);
  if (v120)
  {
    sub_10914(&v119, v122);
    sub_7668F0();
    sub_BEB8(v122);
  }

  else
  {
    sub_10A2C(&v119, &unk_941EB0);
  }

  sub_1ED18(v36 + v112[11], &v119, &unk_943B10);
  if (v120)
  {
    sub_10914(&v119, v122);
    type metadata accessor for ShelfHeaderLayout.Metrics(0);
    sub_B170(v122, v123);
    sub_7665D0();
    v120 = sub_767340();
    v121 = &protocol witness table for Margins;
    sub_B1B4(&v119);
    sub_767330();
    (*(v90 + 104))(v92, enum case for Pin.Edge.trailingEdge(_:), v91);
    v75 = v110;
    v117 = v110;
    v118 = &protocol witness table for VerticalStack;
    v76 = sub_B1B4(v116);
    (*(v73 + 16))(v76, v72, v75);
    v77 = sub_767250();
    v78 = v97;
    v97[3] = v77;
    v78[4] = &protocol witness table for Pin;
    sub_B1B4(v78);
    sub_767260();
    v74(v72, v75);
    (*(v108 + 8))(v111, v109);
    return sub_BEB8(v122);
  }

  else
  {
    sub_10A2C(&v119, &unk_943B10);
    v80 = v97;
    v81 = v110;
    v97[3] = v110;
    v80[4] = &protocol witness table for VerticalStack;
    v82 = sub_B1B4(v80);
    (*(v73 + 32))(v82, v72, v81);
    return (*(v108 + 8))(v111, v109);
  }
}

uint64_t sub_3C8B04(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for ShelfHeaderLayout.Metrics(0);
  sub_7671D0();
  sub_BD88(&unk_93F5C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_77D9F0;
  *(v4 + 32) = a3;
  v5 = a3;
  v6 = sub_7671E0();
  sub_765C20();

  return sub_766B70();
}

uint64_t sub_3C8BDC()
{
  type metadata accessor for ShelfHeaderLayout.Metrics(0);
  sub_7668B0();
  return sub_7668C0();
}

uint64_t sub_3C8C58@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v97 = a1;
  v96 = a2;
  v4 = type metadata accessor for ShelfHeaderLayout(0);
  v81 = *(v4 - 8);
  __chkstk_darwin(v4);
  v82 = v5;
  v83 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_7672E0();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v88 = &v75 - v9;
  __chkstk_darwin(v10);
  v90 = &v75 - v11;
  __chkstk_darwin(v12);
  v85 = &v75 - v13;
  v87 = sub_76A920();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v84 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&unk_948720);
  __chkstk_darwin(v15 - 8);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v75 - v19;
  v21 = sub_766690();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v89 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v75 - v25;
  v95 = sub_766950();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v28 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_766930();
  v98 = v4;
  sub_1ED18(v3 + *(v4 + 28), &v99, &unk_943B10);
  v93 = v7;
  if (v100)
  {
    sub_10914(&v99, &v102);
    v29 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
    sub_1ED18(v3 + *(v29 + 40), v20, &unk_948720);
    if ((*(v22 + 48))(v20, 1, v21) == 1)
    {
      sub_10A2C(v20, &unk_948720);
      sub_BEB8(&v102);
      v30 = v22;
    }

    else
    {
      v78 = v22;
      v31 = *(v22 + 32);
      v76 = v26;
      v79 = v21;
      v31(v26, v20, v21);
      v32 = v84;
      sub_766470();
      sub_766C70();
      v80 = v28;
      v33 = *(v86 + 8);
      v34 = v87;
      v33(v32, v87);
      sub_766470();
      sub_766C70();
      v33(v32, v34);
      sub_766610();
      v36 = v35;
      v38 = v37;
      sub_B170(&v102, v103);
      sub_7665D0();
      v77 = v17;
      v39 = v85;
      *(v85 + 3) = &type metadata for CGFloat;
      *(v39 + 4) = &protocol witness table for CGFloat;
      *v39 = v36;
      v40 = enum case for Resize.Rule.replaced(_:);
      v41 = *(v91 + 104);
      v42 = v88;
      v43 = v92;
      v41(v39, enum case for Resize.Rule.replaced(_:), v92);
      v44 = v90;
      *(v90 + 3) = &type metadata for CGFloat;
      *(v44 + 4) = &protocol witness table for CGFloat;
      v28 = v80;
      v45 = v93;
      *v44 = v38;
      v41(v44, v40, v43);
      v46 = enum case for Resize.Rule.unchanged(_:);
      v41(v42, enum case for Resize.Rule.unchanged(_:), v43);
      v41(v45, v46, v43);
      v100 = sub_7672F0();
      v101 = &protocol witness table for Resize;
      sub_B1B4(&v99);
      v17 = v77;
      v47 = v79;
      sub_767300();
      sub_7668F0();
      v30 = v78;
      v21 = v47;
      (*(v78 + 8))(v76, v47);
      sub_BEB8(&v99);
      sub_BEB8(&v102);
    }
  }

  else
  {
    sub_10A2C(&v99, &unk_943B10);
    v30 = v22;
  }

  sub_1ED18(v3 + v98[6], &v99, &unk_941EB0);
  if (v100)
  {
    sub_10914(&v99, &v102);
    sub_7668F0();
    sub_BEB8(&v102);
  }

  else
  {
    sub_10A2C(&v99, &unk_941EB0);
  }

  sub_1ED18(v3 + v98[9], &v99, &unk_943B10);
  if (v100)
  {
    sub_10914(&v99, &v102);
    v48 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
    sub_1ED18(v3 + *(v48 + 60), v17, &unk_948720);
    if ((*(v30 + 48))(v17, 1, v21) == 1)
    {
      sub_10A2C(v17, &unk_948720);
    }

    else
    {
      v49 = *(v30 + 32);
      v79 = v21;
      v49(v89, v17, v21);
      v50 = v84;
      sub_766470();
      sub_766C70();
      v51 = *(v86 + 8);
      v78 = v30;
      v52 = v87;
      v51(v50, v87);
      sub_766470();
      sub_766C70();
      v51(v50, v52);
      sub_766610();
      v54 = v53;
      v56 = v55;
      sub_B170(&v102, v103);
      sub_7665D0();
      v57 = v85;
      *(v85 + 3) = &type metadata for CGFloat;
      *(v57 + 4) = &protocol witness table for CGFloat;
      *v57 = v54;
      v58 = enum case for Resize.Rule.replaced(_:);
      v59 = v88;
      v80 = v28;
      v60 = *(v91 + 104);
      v61 = v92;
      v60(v57, enum case for Resize.Rule.replaced(_:), v92);
      v62 = v90;
      *(v90 + 3) = &type metadata for CGFloat;
      *(v62 + 4) = &protocol witness table for CGFloat;
      *v62 = v56;
      v60(v62, v58, v61);
      v63 = enum case for Resize.Rule.unchanged(_:);
      v60(v59, enum case for Resize.Rule.unchanged(_:), v61);
      v60(v93, v63, v61);
      v28 = v80;
      v100 = sub_7672F0();
      v101 = &protocol witness table for Resize;
      sub_B1B4(&v99);
      sub_767300();
      v64 = v83;
      sub_3CA0AC(v3, v83, type metadata accessor for ShelfHeaderLayout);
      v65 = (*(v81 + 80) + 16) & ~*(v81 + 80);
      v66 = (v82 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
      v67 = swift_allocObject();
      sub_3CA118(v64, v67 + v65);
      v68 = v97;
      *(v67 + v66) = v97;
      v69 = v68;
      sub_7668F0();

      (*(v78 + 8))(v89, v79);
      sub_BEB8(&v99);
    }

    sub_BEB8(&v102);
  }

  else
  {
    sub_10A2C(&v99, &unk_943B10);
  }

  v70 = v98;
  sub_7668F0();
  sub_1ED18(v3 + v70[10], &v99, &unk_941EB0);
  if (v100)
  {
    sub_10914(&v99, &v102);
    sub_7668F0();
    sub_BEB8(&v102);
  }

  else
  {
    sub_10A2C(&v99, &unk_941EB0);
  }

  sub_1ED18(v3 + v98[11], &v99, &unk_943B10);
  if (v100)
  {
    sub_10914(&v99, &v102);
    sub_B170(&v102, v103);
    sub_7665D0();
    sub_7668F0();
    sub_BEB8(&v99);
    sub_BEB8(&v102);
  }

  else
  {
    sub_10A2C(&v99, &unk_943B10);
  }

  sub_7697D0();
  v71 = v95;
  v103 = v95;
  v104 = &protocol witness table for VerticalStack;
  v72 = sub_B1B4(&v102);
  v73 = v94;
  (*(v94 + 16))(v72, v28, v71);
  sub_767330();
  return (*(v73 + 8))(v28, v71);
}

uint64_t sub_3C99A8(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void *))
{
  type metadata accessor for ShelfHeaderLayout.Metrics(0);
  sub_7671D0();
  sub_BD88(&unk_93F5C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_77D9F0;
  *(v6 + 32) = a3;
  v7 = a3;
  v8 = sub_7671E0();
  sub_765C20();
  v10 = v9;

  v12[3] = &type metadata for CGFloat;
  v12[4] = &protocol witness table for CGFloat;
  v12[0] = v10;
  return a4(v12);
}

uint64_t sub_3C9AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_3C9B80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 24) = (a2 - 1);
  }

  return result;
}

void sub_3C9C3C()
{
  type metadata accessor for ShelfHeaderLayout.Metrics(319);
  if (v0 <= 0x3F)
  {
    sub_7E0B0(319, &qword_94E850, &unk_9418A0);
    if (v1 <= 0x3F)
    {
      sub_7E0B0(319, &unk_952730, &qword_941B00);
      if (v2 <= 0x3F)
      {
        sub_3C9D34();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_3C9D34()
{
  result = qword_940E18;
  if (!qword_940E18)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_940E18);
  }

  return result;
}

uint64_t sub_3C9DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_766CA0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = sub_BD88(&unk_948720);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 40);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_3C9EC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_766CA0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = sub_BD88(&unk_948720);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 40);

    return v15(v16, a2, a2, v14);
  }
}

void sub_3C9FCC()
{
  type metadata accessor for UIEdgeInsets(319);
  if (v0 <= 0x3F)
  {
    sub_766CA0();
    if (v1 <= 0x3F)
    {
      sub_3A5BC4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_3CA0AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_3CA118(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfHeaderLayout(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_3CA1B0()
{
  v19 = type metadata accessor for ShelfHeaderLayout(0);
  v22 = *(*(v19 - 1) + 80);
  v20 = *(*(v19 - 1) + 64);
  v21 = (v22 + 16) & ~v22;
  v23 = v0;
  v1 = v0 + v21;
  v2 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  v3 = v2[7];
  v4 = sub_766CA0();
  v5 = *(*(v4 - 8) + 8);
  v5(v1 + v3, v4);
  v5(v1 + v2[8], v4);
  v6 = v2[10];
  v7 = sub_766690();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v1 + v6, 1, v7))
  {
    (*(v8 + 8))(v1 + v6, v7);
  }

  v5(v1 + v2[13], v4);
  v5(v1 + v2[14], v4);
  v10 = v2[15];
  if (!v9(v1 + v10, 1, v7))
  {
    (*(v8 + 8))(v1 + v10, v7);
  }

  v11 = v1 + v19[5];
  if (*(v11 + 24))
  {
    sub_BEB8(v11);
  }

  v12 = v1 + v19[6];
  if (*(v12 + 24))
  {
    sub_BEB8(v12);
  }

  v13 = v1 + v19[7];
  if (*(v13 + 24))
  {
    sub_BEB8(v13);
  }

  sub_BEB8(v1 + v19[8]);
  v14 = v1 + v19[9];
  if (*(v14 + 24))
  {
    sub_BEB8(v14);
  }

  v15 = v1 + v19[10];
  if (*(v15 + 24))
  {
    sub_BEB8(v15);
  }

  v16 = v1 + v19[11];
  if (*(v16 + 24))
  {
    sub_BEB8(v16);
  }

  v17 = (v20 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v23, v17 + 8, v22 | 7);
}

uint64_t sub_3CA470(uint64_t a1)
{
  v3 = *(type metadata accessor for ShelfHeaderLayout(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_3C8B04(a1, v1 + v4, v5);
}

uint64_t sub_3CA50C()
{
  v18 = type metadata accessor for ShelfHeaderLayout(0);
  v21 = *(*(v18 - 1) + 80);
  v19 = *(*(v18 - 1) + 64);
  v20 = (v21 + 16) & ~v21;
  v22 = v0;
  v1 = v0 + v20;
  v2 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  v3 = v2[7];
  v4 = sub_766CA0();
  v5 = *(*(v4 - 8) + 8);
  v5(v1 + v3, v4);
  v5(v1 + v2[8], v4);
  v6 = v2[10];
  v7 = sub_766690();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v1 + v6, 1, v7))
  {
    (*(v8 + 8))(v1 + v6, v7);
  }

  v5(v1 + v2[13], v4);
  v5(v1 + v2[14], v4);
  v10 = v2[15];
  if (!v9(v1 + v10, 1, v7))
  {
    (*(v8 + 8))(v1 + v10, v7);
  }

  v11 = v1 + v18[5];
  if (*(v11 + 24))
  {
    sub_BEB8(v11);
  }

  v12 = v1 + v18[6];
  if (*(v12 + 24))
  {
    sub_BEB8(v12);
  }

  v13 = v1 + v18[7];
  if (*(v13 + 24))
  {
    sub_BEB8(v13);
  }

  sub_BEB8(v1 + v18[8]);
  v14 = v1 + v18[9];
  if (*(v14 + 24))
  {
    sub_BEB8(v14);
  }

  v15 = v1 + v18[10];
  if (*(v15 + 24))
  {
    sub_BEB8(v15);
  }

  v16 = v1 + v18[11];
  if (*(v16 + 24))
  {
    sub_BEB8(v16);
  }

  return _swift_deallocObject(v22, v20 + v19, v21 | 7);
}

uint64_t sub_3CA7C8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ShelfHeaderLayout(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_3CA864(uint64_t a1, uint64_t (*a2)(void *))
{
  v5 = *(type metadata accessor for ShelfHeaderLayout(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_3C99A8(a1, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

id sub_3CA914()
{
  result = [objc_opt_self() systemGray6Color];
  qword_99D828 = result;
  return result;
}

void sub_3CA950()
{
  v0 = [objc_opt_self() systemBlackColor];
  v1 = [v0 colorWithAlphaComponent:0.05];

  qword_99D830 = v1;
}

id sub_3CA9BC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC18ASMessagesProvider38CondensedSearchEditorialBackgroundView_isBorderHidden] = 0;
  v20.receiver = v4;
  v20.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v11 = qword_93CF38;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  [v12 setBackgroundColor:qword_99D828];
  v13 = [v12 layer];
  if (qword_93CF40 != -1)
  {
    swift_once();
  }

  v14 = [qword_99D830 CGColor];
  [v13 setBorderColor:v14];

  v15 = [v12 layer];
  v16 = [objc_opt_self() mainScreen];
  [v16 scale];
  v18 = v17;

  [v15 setBorderWidth:1.0 / v18];
  [v12 _setContinuousCornerRadius:16.0];

  return v12;
}

void sub_3CAC34(void *a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v3 = [a1 userInterfaceStyle];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v1 traitCollection];
  v5 = [v4 userInterfaceStyle];

  if ((!a1 || v3 != v5) && (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider38CondensedSearchEditorialBackgroundView_isBorderHidden) & 1) == 0)
  {
    v6 = [v1 layer];
    if (qword_93CF40 != -1)
    {
      swift_once();
    }

    v7 = [qword_99D830 CGColor];
    [v6 setBorderColor:v7];
  }
}

CGFloat sub_3CAE40(CGFloat a1, uint64_t a2, _OWORD *a3, _OWORD *a4, _OWORD *a5)
{
  CGAffineTransformMakeTranslation(&v11, 0.0, a1);
  result = v11.a;
  v9 = *&v11.c;
  v10 = *&v11.tx;
  *a3 = *&v11.a;
  *a4 = v9;
  *a5 = v10;
  return result;
}

uint64_t sub_3CAE9C(char a1)
{
  v2 = v1;
  v4 = *v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = v2[5];
    ObjectType = swift_getObjectType();
    (*(*(v7 + 8) + 16))(*(v2 + 16), ObjectType);
  }

  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    v11 = v2[7];
    v12 = swift_getObjectType();
    (*(*(v11 + 8) + 16))(*(v2 + 16), v12);
  }

  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    v15 = [v13 traitCollection];

    if (v15)
    {
      v16 = v15;
      if (sub_7699D0())
      {
        v17 = sub_769A00();

        if (v17)
        {
          v18 = swift_unknownObjectWeakLoadStrong();
          if (v18)
          {
            v19 = v18;
            [v18 setUserInteractionEnabled:0];
          }

          v20 = swift_unknownObjectWeakLoadStrong();
          if (v20)
          {
            v21 = v20;
            v22 = 1;
            [v20 setUserInteractionEnabled:1];
LABEL_18:

            goto LABEL_20;
          }

          v22 = 1;
          goto LABEL_20;
        }
      }

      else
      {
      }
    }
  }

  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23)
  {
    v24 = v23;
    [v23 setUserInteractionEnabled:*(v2 + 16)];
  }

  v25 = swift_unknownObjectWeakLoadStrong();
  if (v25)
  {
    v21 = v25;
    [v25 setUserInteractionEnabled:(v2[2] & 1) == 0];
    v22 = 0;
    goto LABEL_18;
  }

  v22 = 0;
LABEL_20:
  v53 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v54 = 0;
  v26 = *(v2 + 16);
  if (v22)
  {
    v27 = swift_allocObject();
    v28 = 0;
    *(v27 + 16) = v2;
    *(v27 + 24) = v26;
    *(v27 + 32) = v4;
    v29 = sub_3CC3FC;
    v55 = sub_3CC3FC;
    v56 = v27;
    v30 = sub_3CC40C;
    v51 = sub_3CC40C;
    v52 = v2;
    v31 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  }

  else
  {
    if (v2[2])
    {
      v32 = swift_unknownObjectWeakLoadStrong();
      if (v32)
      {
        v33 = v32;
        [*(v32 + OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_contentView) _scrollToTopIfPossible:0];
      }

      v27 = swift_allocObject();
      *(v27 + 16) = v2;
      *(v27 + 24) = v4;
      v29 = sub_3CC33C;
      v55 = sub_3CC33C;
      v56 = v27;
      v31 = sub_3CC344;
      v53 = sub_3CC344;
      v54 = v2;
      v34 = sub_3CC34C;
    }

    else
    {
      v27 = swift_allocObject();
      *(v27 + 16) = v2;
      *(v27 + 24) = v4;
      v29 = sub_3CC3B4;
      v55 = sub_3CC3B4;
      v56 = v27;
      v31 = sub_3CC3BC;
      v53 = sub_3CC3BC;
      v54 = v2;
      v34 = sub_3CC44C;
    }

    v30 = v34;
    v51 = v34;
    v52 = v2;

    v28 = v2;
  }

  swift_retain_n();
  v35 = objc_opt_self();
  if (a1)
  {
    v49 = v29;
    v50 = v27;
    v45 = _NSConcreteStackBlock;
    v46 = 1107296256;
    v47 = sub_23F0CC;
    v48 = &unk_890068;
    v36 = _Block_copy(&v45);

    v49 = v30;
    v50 = v2;
    v45 = _NSConcreteStackBlock;
    v46 = 1107296256;
    v47 = sub_3D6D80;
    v48 = &unk_890090;
    v37 = _Block_copy(&v45);

    [v35 animateWithDuration:4 delay:v36 options:v37 animations:0.4 completion:0.0];
    _Block_release(v37);
    _Block_release(v36);
    v49 = v31;
    v50 = v28;
    v45 = _NSConcreteStackBlock;
    v46 = 1107296256;
    v47 = sub_23F0CC;
    v48 = &unk_8900B8;
    v38 = _Block_copy(&v45);

    [v35 animateWithDuration:4 delay:v38 options:0 animations:0.2 completion:0.2];
    _Block_release(v38);
    v39 = 0;
LABEL_32:

    return sub_F704(v39);
  }

  v40 = swift_allocObject();
  v40[2] = &v55;
  v40[3] = &v53;
  v40[4] = &v51;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_3CC380;
  *(v41 + 24) = v40;
  v49 = sub_2EC28;
  v50 = v41;
  v45 = _NSConcreteStackBlock;
  v46 = 1107296256;
  v47 = sub_1EB578;
  v48 = &unk_890040;
  v42 = _Block_copy(&v45);

  [v35 performWithoutAnimation:v42];
  _Block_release(v42);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v39 = sub_3CC380;
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

void sub_3CB534(uint64_t a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(a1 + 56);
    v6 = Strong;
    ObjectType = swift_getObjectType();
    v8 = (*(*(v5 + 8) + 32))(ObjectType);

    v9 = *(v8 + 16);
    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        if (i >= *(v8 + 16))
        {
          __break(1u);
          goto LABEL_52;
        }

        v11 = *(v8 + 32 + 8 * i);
        if (v11)
        {
          [v11 setAlpha:0.0];
        }
      }
    }
  }

  v12 = swift_unknownObjectWeakLoadStrong();
  if (!v12)
  {
    goto LABEL_16;
  }

  v13 = *(a1 + 56);
  v14 = v12;
  v15 = swift_getObjectType();
  v8 = (*(*(v13 + 8) + 40))(v15);

  if (qword_93CF48 != -1)
  {
    goto LABEL_56;
  }

  v16 = *(v8 + 16);
  if (v16)
  {
    goto LABEL_12;
  }

  while (1)
  {
LABEL_15:

LABEL_16:
    v20 = swift_unknownObjectWeakLoadStrong();
    if (v20)
    {
      v21 = *(a1 + 56);
      v22 = v20;
      v23 = swift_getObjectType();
      v8 = (*(*(v21 + 8) + 48))(v23);

      v24 = *(v8 + 16);
      if (v24)
      {
        v25 = 0;
        while (v25 < *(v8 + 16))
        {
          v26 = *(v8 + 32 + 8 * v25);
          if (v26)
          {
            [v26 setAlpha:0.0];
          }

          if (v24 == ++v25)
          {
            goto LABEL_23;
          }
        }

        goto LABEL_53;
      }

LABEL_23:
    }

    v27 = swift_unknownObjectWeakLoadStrong();
    if (v27)
    {
      v28 = *(a1 + 40);
      v29 = v27;
      v30 = swift_getObjectType();
      v8 = (*(*(v28 + 8) + 32))(v30);

      v31 = *(v8 + 16);
      if (v31)
      {
        v32 = 0;
        while (v32 < *(v8 + 16))
        {
          v33 = *(v8 + 32 + 8 * v32);
          if (v33)
          {
            [v33 setAlpha:1.0];
          }

          if (v31 == ++v32)
          {
            goto LABEL_31;
          }
        }

        goto LABEL_54;
      }

LABEL_31:
    }

    v34 = swift_unknownObjectWeakLoadStrong();
    if (!v34)
    {
      break;
    }

    v35 = *(a1 + 40);
    v36 = v34;
    v37 = swift_getObjectType();
    v8 = (*(*(v35 + 8) + 40))(v37);

    v38 = *(v8 + 16);
    if (!v38)
    {
LABEL_37:

      break;
    }

    v39 = 0;
    while (v39 < *(v8 + 16))
    {
      v40 = v39 + 1;
      v41 = *(v8 + 32 + 8 * v39);
      *&v58 = 0;
      v57 = 0x3FF0000000000000uLL;
      *(&v58 + 1) = 0x3FF0000000000000;
      v59 = 0uLL;
      [v41 setTransform:&v57];
      v39 = v40;
      if (v38 == v40)
      {
        goto LABEL_37;
      }
    }

    while (1)
    {
      __break(1u);
LABEL_56:
      swift_once();
      v16 = *(v8 + 16);
      if (!v16)
      {
        break;
      }

LABEL_12:
      v17 = 0;
      v55 = xmmword_952878;
      v56 = xmmword_952868;
      v54 = xmmword_952888;
      while (v17 < *(v8 + 16))
      {
        v18 = v17 + 1;
        v19 = *(v8 + 32 + 8 * v17);
        v57 = v56;
        v58 = v55;
        v59 = v54;
        [v19 setTransform:&v57];
        v17 = v18;
        if (v16 == v18)
        {
          goto LABEL_15;
        }
      }

LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
    }
  }

  v42 = swift_unknownObjectWeakLoadStrong();
  if (v42)
  {
    v43 = v42;
    v44 = *(v42 + OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_learnMoreButton);

    v45 = 1.0;
    if (a2)
    {
      v45 = 0.0;
    }

    [v44 setAlpha:{v45, v54, v55, v56}];
  }

  v46 = swift_unknownObjectWeakLoadStrong();
  if (v46)
  {
    v47 = v46;
    v48 = *(v46 + OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_inlineLearnMoreLabel);

    v49 = 0.0;
    if (a2)
    {
      v49 = 1.0;
    }

    [v48 setAlpha:{v49, v54, v55, v56}];
  }

  v50 = swift_unknownObjectWeakLoadStrong();
  if (v50)
  {
    v51 = v50;
    [v50 setNeedsLayout];
  }

  v52 = swift_unknownObjectWeakLoadStrong();
  if (v52)
  {
    v53 = v52;
    sub_426BA8();
  }
}

uint64_t sub_3CB990(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = a1[7];
    v4 = Strong;
    ObjectType = swift_getObjectType();
    v6 = (*(*(v3 + 8) + 32))(ObjectType);

    v7 = *(v6 + 16);
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        if (i >= *(v6 + 16))
        {
          __break(1u);
          goto LABEL_26;
        }

        v9 = *(v6 + 32 + 8 * i);
        if (v9)
        {
          [v9 setAlpha:0.0];
        }
      }
    }
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = a1[7];
  v12 = v10;
  v13 = swift_getObjectType();
  v6 = (*(*(v11 + 8) + 40))(v13);

  if (qword_93CF48 != -1)
  {
    goto LABEL_28;
  }

  v14 = *(v6 + 16);
  if (v14)
  {
    goto LABEL_12;
  }

LABEL_15:
  while (1)
  {

LABEL_16:
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v19 = result;
    v20 = a1[5];
    v21 = swift_getObjectType();
    a1 = (*(*(v20 + 8) + 48))(v21);

    v6 = a1[2];
    if (!v6)
    {
    }

    v22 = 0;
    while (v22 < a1[2])
    {
      v23 = a1[v22 + 4];
      if (v23)
      {
        [v23 setAlpha:1.0];
      }

      if (v6 == ++v22)
      {
      }
    }

    while (1)
    {
      __break(1u);
LABEL_28:
      swift_once();
      v14 = *(v6 + 16);
      if (!v14)
      {
        break;
      }

LABEL_12:
      v15 = 0;
      v25 = xmmword_952878;
      v26 = xmmword_952868;
      v24 = xmmword_952888;
      while (v15 < *(v6 + 16))
      {
        v16 = v15 + 1;
        v17 = *(v6 + 32 + 8 * v15);
        v27[0] = v26;
        v27[1] = v25;
        v27[2] = v24;
        [v17 setTransform:v27];
        v15 = v16;
        if (v14 == v16)
        {
          goto LABEL_15;
        }
      }

LABEL_26:
      __break(1u);
    }
  }
}

void sub_3CBBCC(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(a1 + 40);
    v4 = Strong;
    ObjectType = swift_getObjectType();
    v6 = (*(*(v3 + 8) + 32))(ObjectType);

    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = 0;
      while (v8 < *(v6 + 16))
      {
        v9 = *(v6 + 32 + 8 * v8);
        if (v9)
        {
          [v9 setAlpha:1.0];
        }

        if (v7 == ++v8)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

LABEL_8:
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = *(a1 + 40);
    v12 = v10;
    v13 = swift_getObjectType();
    v14 = (*(*(v11 + 8) + 40))(v13);

    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = 0;
      while (v16 < *(v14 + 16))
      {
        v17 = v16 + 1;
        v18 = *(v14 + 32 + 8 * v16);
        v27[1] = 0;
        v27[2] = 0;
        v27[0] = 0x3FF0000000000000;
        v27[3] = 0x3FF0000000000000;
        v27[4] = 0;
        v27[5] = 0;
        [v18 setTransform:v27];
        v16 = v17;
        if (v15 == v17)
        {
          goto LABEL_14;
        }
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

LABEL_14:
  }

  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    v21 = *(a1 + 56);
    v22 = swift_getObjectType();
    v23 = (*(*(v21 + 8) + 48))(v22);

    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = 0;
      while (v25 < *(v23 + 16))
      {
        v26 = *(v23 + 32 + 8 * v25);
        if (v26)
        {
          [v26 setAlpha:0.0];
        }

        if (v24 == ++v25)
        {
          goto LABEL_22;
        }
      }

      goto LABEL_26;
    }

LABEL_22:
  }
}

uint64_t sub_3CBDC8(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = a1[5];
    v4 = Strong;
    ObjectType = swift_getObjectType();
    v6 = (*(*(v3 + 8) + 32))(ObjectType);

    v7 = *(v6 + 16);
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        if (i >= *(v6 + 16))
        {
          __break(1u);
          goto LABEL_26;
        }

        v9 = *(v6 + 32 + 8 * i);
        if (v9)
        {
          [v9 setAlpha:0.0];
        }
      }
    }
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = a1[5];
  v12 = v10;
  v13 = swift_getObjectType();
  v6 = (*(*(v11 + 8) + 40))(v13);

  if (qword_93CF50 != -1)
  {
    goto LABEL_28;
  }

  v14 = *(v6 + 16);
  if (v14)
  {
    goto LABEL_12;
  }

LABEL_15:
  while (1)
  {

LABEL_16:
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v19 = result;
    v20 = a1[7];
    v21 = swift_getObjectType();
    a1 = (*(*(v20 + 8) + 48))(v21);

    v6 = a1[2];
    if (!v6)
    {
    }

    v22 = 0;
    while (v22 < a1[2])
    {
      v23 = a1[v22 + 4];
      if (v23)
      {
        [v23 setAlpha:1.0];
      }

      if (v6 == ++v22)
      {
      }
    }

    while (1)
    {
      __break(1u);
LABEL_28:
      swift_once();
      v14 = *(v6 + 16);
      if (!v14)
      {
        break;
      }

LABEL_12:
      v15 = 0;
      v25 = xmmword_9528A8;
      v26 = xmmword_952898;
      v24 = xmmword_9528B8;
      while (v15 < *(v6 + 16))
      {
        v16 = v15 + 1;
        v17 = *(v6 + 32 + 8 * v15);
        v27[0] = v26;
        v27[1] = v25;
        v27[2] = v24;
        [v17 setTransform:v27];
        v15 = v16;
        if (v14 == v16)
        {
          goto LABEL_15;
        }
      }

LABEL_26:
      __break(1u);
    }
  }
}

void sub_3CC004(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(a1 + 56);
    v4 = Strong;
    ObjectType = swift_getObjectType();
    v6 = (*(*(v3 + 8) + 32))(ObjectType);

    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = 0;
      while (v8 < *(v6 + 16))
      {
        v9 = *(v6 + 32 + 8 * v8);
        if (v9)
        {
          [v9 setAlpha:1.0];
        }

        if (v7 == ++v8)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

LABEL_8:
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = *(a1 + 56);
    v12 = v10;
    v13 = swift_getObjectType();
    v14 = (*(*(v11 + 8) + 40))(v13);

    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = 0;
      while (v16 < *(v14 + 16))
      {
        v17 = v16 + 1;
        v18 = *(v14 + 32 + 8 * v16);
        v27[1] = 0;
        v27[2] = 0;
        v27[0] = 0x3FF0000000000000;
        v27[3] = 0x3FF0000000000000;
        v27[4] = 0;
        v27[5] = 0;
        [v18 setTransform:v27];
        v16 = v17;
        if (v15 == v17)
        {
          goto LABEL_14;
        }
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

LABEL_14:
  }

  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    v21 = *(a1 + 40);
    v22 = swift_getObjectType();
    v23 = (*(*(v21 + 8) + 48))(v22);

    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = 0;
      while (v25 < *(v23 + 16))
      {
        v26 = *(v23 + 32 + 8 * v25);
        if (v26)
        {
          [v26 setAlpha:0.0];
        }

        if (v24 == ++v25)
        {
          goto LABEL_22;
        }
      }

      goto LABEL_26;
    }

LABEL_22:
  }
}

uint64_t sub_3CC200(void (**a1)(uint64_t), void (**a2)(uint64_t), void (**a3)(uint64_t))
{
  v5 = *a1;

  v5(v6);

  v7 = *a2;

  v7(v8);

  v9 = *a3;

  v9(1);
}

uint64_t sub_3CC290()
{
  swift_unknownObjectWeakDestroy();
  sub_13238(v0 + 32);
  sub_13238(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_3CC304()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3CC39C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_3CC3C4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_3CC450(uint64_t a1)
{
  v2 = sub_BD88(&qword_940A60);
  __chkstk_darwin(v2 - 8);
  v4 = &v47 - v3;
  v5 = sub_765610();
  v6 = *(v5 - 8);
  v62 = v5;
  v63 = v6;
  __chkstk_darwin(v5);
  v8 = (&v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_BD88(&qword_940A68);
  __chkstk_darwin(v9 - 8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v47 - v13;
  __chkstk_darwin(v15);
  v17 = &v47 - v16;
  __chkstk_darwin(v18);
  v20 = &v47 - v19;
  sub_BD88(&qword_940A70);
  v21 = *(sub_765540() - 8);
  v56 = *(v21 + 72);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  v53 = v23;
  *(v23 + 16) = xmmword_780120;
  v60 = v23 + v22;
  v24 = a1;
  v64 = a1;
  sub_62634();
  v57 = v20;
  sub_7655D0();
  v64 = 11.0;
  v25 = v17;
  sub_7655D0();
  v64 = 12.0;
  v26 = v14;
  sub_7655D0();
  __asm { FMOV            V0.2D, #16.0 }

  *v8 = _Q0;
  v61 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v32 = v62;
  v33 = *(v63 + 104);
  v63 += 104;
  v55 = v33;
  (v33)(v8);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  LOBYTE(v64) = 0;
  v36 = v4;
  sub_7655D0();
  v64 = 0.0;
  v58 = v11;
  sub_7655D0();
  v59 = v25;
  sub_765500();
  v64 = v24;
  sub_7655D0();
  v64 = 10.0;
  sub_7655D0();
  v64 = 10.0;
  sub_7655D0();
  __asm { FMOV            V0.2D, #20.0 }

  *v8 = _Q0;
  v38 = v55;
  v55(v8, v61, v32);
  LOBYTE(v64) = 0;
  sub_7655D0();
  v64 = 0.0;
  sub_7655D0();
  v39 = v56;
  top = UIEdgeInsetsZero.top;
  v51 = left;
  v52 = bottom;
  sub_765500();
  v48 = 2 * v39;
  v64 = v24;
  sub_7655D0();
  v64 = 10.0;
  sub_7655D0();
  v64 = 10.0;
  sub_7655D0();
  v49 = vdupq_n_s64(0x4041000000000000uLL);
  *v8 = v49;
  v40 = v61;
  v41 = v62;
  v42 = v38;
  v38(v8, v61, v62);
  LOBYTE(v64) = 0;
  v54 = v36;
  sub_7655D0();
  v64 = 0.0;
  sub_7655D0();
  v43 = v48;
  sub_765500();
  v44 = v56;
  v48 = v43 + v56;
  v64 = v24;
  sub_7655D0();
  v64 = 10.0;
  sub_7655D0();
  v64 = 10.0;
  sub_7655D0();
  *v8 = v49;
  v42(v8, v40, v41);
  sub_7697A0();
  LOBYTE(v64) = 0;
  sub_7655D0();
  v64 = 0.0;
  sub_7655D0();
  v47 = v26;
  sub_765500();
  v64 = v24;
  sub_7655D0();
  v64 = 10.0;
  sub_7655D0();
  v64 = 10.0;
  sub_7655D0();
  v49 = vdupq_n_s64(0x404A000000000000uLL);
  *v8 = v49;
  v45 = v55;
  v55(v8, v61, v62);
  LOBYTE(v64) = 0;
  sub_7655D0();
  v64 = 0.0;
  sub_7655D0();
  sub_765500();
  v56 += 4 * v44;
  v64 = v24;
  sub_7655D0();
  v64 = 10.0;
  sub_7655D0();
  v64 = 10.0;
  sub_7655D0();
  *v8 = v49;
  v45(v8, v61, v62);
  LOBYTE(v64) = 0;
  sub_7655D0();
  v64 = 0.0;
  sub_7655D0();
  sub_765500();
  return v53;
}

uint64_t sub_3CCE28()
{
  v0 = sub_BD88(&qword_940A60);
  __chkstk_darwin(v0 - 8);
  v1 = sub_765610();
  __chkstk_darwin(v1 - 8);
  v2 = sub_BD88(&qword_940A68);
  __chkstk_darwin(v2 - 8);
  __chkstk_darwin(v3);
  __chkstk_darwin(v4);
  __chkstk_darwin(v5);
  sub_BD88(&qword_940A70);
  sub_765540();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_77B6D0;
  sub_62634();
  sub_7655D0();
  sub_7655C0();
  sub_7655D0();
  sub_765600();
  sub_7655D0();
  sub_7655D0();
  result = sub_765500();
  qword_952988 = v6;
  return result;
}

uint64_t sub_3CD12C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v9[0] = a1;
  v9[1] = &type metadata for EmptyView;
  v9[2] = a2;
  v9[3] = &protocol witness table for EmptyView;
  v4 = sub_767FA0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_767F90();
  sub_767FF0();
  a3[3] = v4;
  a3[4] = swift_getWitnessTable();
  sub_B1B4(a3);
  sub_767F80();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_3CD288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a4;
  v15 = a5;
  v16 = a2;
  v17 = a3;
  v18 = a1;
  v12 = *&stru_68.segname[(swift_isaMask & *v5) + 8];
  swift_getOpaqueTypeMetadata2();
  sub_768900();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v23[2] = OpaqueTypeConformance2;
  v8 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_133D8(&qword_943AC8);
  sub_767D70();
  sub_133D8(&qword_943AD0);
  v9 = sub_767D70();
  v23[0] = OpaqueTypeMetadata2;
  v23[1] = v8;
  v21 = swift_getOpaqueTypeConformance2();
  v22 = sub_16194(&unk_951350, &qword_943AC8);
  WitnessTable = swift_getWitnessTable();
  v20 = sub_16194(&qword_951360, &qword_943AD0);
  v10 = swift_getWitnessTable();
  v12(v23, sub_3CF51C, v13, v9, v10);
  return sub_769AE0();
}

uint64_t sub_3CD514(uint64_t a1, uint64_t a2)
{
  v7[2] = a1;
  v8 = a2;
  ObjectType = swift_getObjectType();
  v3 = *&stru_68.segname[(swift_isaMask & *v2) + 16];
  v4 = sub_BD88(&qword_9529C8);
  v5 = sub_16194(&qword_9529D0, &qword_9529C8);
  return v3(v8, sub_3CF508, v7, v4, v5);
}

uint64_t sub_3CD608()
{
  v0 = sub_764930();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&unk_94F1F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  v10 = 0;
  v11 = 0xE000000000000000;
  v12._countAndFlagsBits = sub_769BD0();
  sub_769370(v12);

  v13._countAndFlagsBits = 95;
  v13._object = 0xE100000000000000;
  sub_769370(v13);
  swift_getKeyPath();
  sub_75C7B0();

  sub_768760();
  (*(v5 + 8))(v7, v4);
  sub_764940();

  sub_76A7F0();
  (*(v1 + 8))(v3, v0);
  return v10;
}

uint64_t sub_3CD810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a3;
  v45 = a2;
  v49 = a4;
  v44 = sub_75DAB0();
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_767D60();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_BD88(&unk_959540);
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v9 = &v35 - v8;
  v42 = sub_7656C0();
  v51 = *(v42 - 8);
  __chkstk_darwin(v42);
  v40 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v50 = &v35 - v12;
  v13 = sub_BD88(&qword_9438F8);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v35 - v15;
  v17 = sub_BD88(&unk_94F1F0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v35 - v19;
  swift_getKeyPath();
  sub_75C7B0();

  sub_768760();
  (*(v18 + 8))(v20, v17);
  v37 = v55;
  swift_getKeyPath();
  sub_75C7B0();

  v36 = *(v14 + 56);
  swift_getKeyPath();
  sub_75C7B0();

  v54 = 0;
  memset(v53, 0, sizeof(v53));
  sub_75C7E0();
  v21 = v38;
  sub_768760();
  (*(v39 + 8))(v9, v21);
  v39 = sub_75C7F0();
  v35 = a1;
  sub_75C720();
  v22 = sub_75DA30();
  v23 = [v22 preferredContentSizeCategory];

  v24 = v41;
  sub_767D50();
  v25 = *(v43 + 8);
  v26 = v44;
  v25(v6, v44);
  swift_getKeyPath();
  v27 = v40;
  sub_75C7B0();

  sub_765630();
  v28 = *(v51 + 8);
  v51 += 8;
  v29 = v27;
  v30 = v42;
  v28(v29, v42);
  sub_75C720();
  sub_3CDE94();
  v25(v6, v26);
  v31 = v36;
  v32 = v24;
  v33 = v50;
  sub_75B9F0();

  (*(v46 + 8))(v32, v48);
  sub_BEB8(v52);
  sub_10A2C(v53, &qword_9529D8);
  v28(v33, v30);
  sub_10A2C(&v16[v31], &qword_963790);
  sub_10A2C(v16, &qword_963790);
  sub_BD88(&qword_9529C8);
  return sub_75C7D0();
}

double sub_3CDE94()
{
  v0 = sub_764930();
  v26 = *(v0 - 8);
  v27 = v0;
  __chkstk_darwin(v0);
  v25 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_BD88(&unk_94F1F0);
  v23 = *(v2 - 8);
  v24 = v2;
  __chkstk_darwin(v2);
  v4 = &v23 - v3;
  v5 = sub_7656C0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_75F940();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3CEED8(v12);
  sub_75DA20();
  v13 = sub_75F930();
  v15 = v14;
  (*(v6 + 8))(v8, v5);
  if (v15)
  {
    sub_75DAA0();
    v16 = v24;
    sub_768760();
    (*(v23 + 8))(v4, v16);
    v17 = v25;
    sub_764940();

    v18 = COERCE_DOUBLE(sub_75F920());
    v20 = v19;
    (*(v26 + 8))(v17, v27);
    (*(v10 + 8))(v12, v9);
    if (v20)
    {
      return 0.0;
    }

    else
    {
      return v18;
    }
  }

  else
  {
    v21 = *&v13;
    (*(v10 + 8))(v12, v9);
  }

  return v21;
}

uint64_t sub_3CE1E0@<X0>(void (*a1)(__n128)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v62 = a3;
  v63 = a5;
  v57 = a2;
  v59 = a1;
  v61 = *(a4 - 8);
  __chkstk_darwin(a1);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v8;
  v69 = v9;
  v10 = v9;
  v51 = v9;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v56 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v13 = &v43 - v12;
  v14 = sub_768900();
  v68 = a4;
  v69 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v68 = OpaqueTypeMetadata2;
  v69 = v14;
  v16 = v14;
  v45 = v14;
  v70 = OpaqueTypeConformance2;
  v17 = OpaqueTypeConformance2;
  v46 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeMetadata2();
  v52 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v43 - v19;
  v68 = OpaqueTypeMetadata2;
  v69 = v16;
  v70 = v17;
  v47 = swift_getOpaqueTypeConformance2();
  v68 = v18;
  v69 = v47;
  v50 = &opaque type descriptor for <<opaque return type of View.intentDispatcher(from:)>>;
  v48 = swift_getOpaqueTypeMetadata2();
  v54 = *(v48 - 8);
  __chkstk_darwin(v48);
  v22 = &v43 - v21;
  sub_133D8(&qword_943AC8);
  v53 = sub_767D70();
  v60 = *(v53 - 8);
  __chkstk_darwin(v53);
  v44 = &v43 - v23;
  sub_133D8(&qword_943AD0);
  v24 = sub_767D70();
  v58 = *(v24 - 8);
  __chkstk_darwin(v24);
  v49 = &v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v26);
  v55 = &v43 - v28;
  v59(v27);
  sub_768100();
  (*(v61 + 8))(v7, a4);
  swift_checkMetadataState();
  sub_7680D0();
  (*(v56 + 8))(v13, OpaqueTypeMetadata2);
  v29 = v47;
  sub_7680E0();
  (*(v52 + 8))(v20, v18);
  sub_75A110();
  sub_768ED0();
  v68 = v18;
  v69 = v29;
  v30 = swift_getOpaqueTypeConformance2();
  sub_3CF52C(&unk_9440F0, &type metadata accessor for ArtworkLoader);
  v31 = v44;
  v32 = v48;
  sub_7681B0();

  (*(v54 + 8))(v22, v32);
  swift_getKeyPath();
  v68 = *(v62 + OBJC_IVAR____TtC18ASMessagesProvider22SwiftUIViewHostingCell_flowPreview);
  v33 = sub_16194(&unk_951350, &qword_943AC8);
  v66 = v30;
  v67 = v33;

  v34 = v53;
  WitnessTable = swift_getWitnessTable();
  v36 = v49;
  sub_768140();

  (*(v60 + 8))(v31, v34);
  v37 = sub_16194(&qword_951360, &qword_943AD0);
  v64 = WitnessTable;
  v65 = v37;
  swift_getWitnessTable();
  v38 = v58;
  v39 = *(v58 + 16);
  v40 = v55;
  v39(v55, v36, v24);
  v41 = *(v38 + 8);
  v41(v36, v24);
  v39(v63, v40, v24);
  return (v41)(v40, v24);
}

id sub_3CEB3C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwiftUIViewHostingCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SwiftUIViewHostingCell()
{
  result = qword_9529B8;
  if (!qword_9529B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3CEC24()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_3CED2C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v5 = sub_75FB40();
  v6 = __chkstk_darwin(v5);
  (*(v8 + 104))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *a4, v6);
  return sub_75FB50();
}

uint64_t sub_3CEE08(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v4 = sub_75FB40();
  v5 = __chkstk_darwin(v4);
  (*(v7 + 104))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *a3, v5);
  return sub_75FB50();
}

uint64_t sub_3CEED8@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = sub_767D60();
  v36 = *(v1 - 8);
  v37 = v1;
  __chkstk_darwin(v1);
  v32 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_BD88(&qword_963790);
  __chkstk_darwin(v3 - 8);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v8 = sub_764930();
  v33 = *(v8 - 8);
  v34 = v8;
  __chkstk_darwin(v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&unk_94F1F0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v28 - v16;
  v18 = sub_7656C0();
  v30 = *(v18 - 8);
  v31 = v18;
  __chkstk_darwin(v18);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75DA20();
  sub_75DAA0();
  sub_768760();
  v21 = *(v12 + 8);
  v21(v17, v11);
  sub_75DAA0();
  sub_768760();
  v21(v14, v11);
  sub_764940();

  v22 = v29;
  sub_75DA50();
  sub_765580();
  sub_7655A0();
  v23 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
  [v23 scaledValueForValue:1.0];

  v24 = sub_75DA30();
  v25 = [v24 preferredContentSizeCategory];

  v26 = v32;
  sub_767D50();
  sub_75F910();

  (*(v36 + 8))(v26, v37);
  sub_10A2C(v22, &qword_963790);
  sub_10A2C(v7, &qword_963790);
  (*(v33 + 8))(v10, v34);
  return (*(v30 + 8))(v20, v31);
}

uint64_t sub_3CF384()
{
  v0 = sub_75F940();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  sub_3CEED8(&v10 - v5);
  (*(v1 + 32))(v3, v6, v0);
  v7 = (*(v1 + 88))(v3, v0);
  if (v7 == enum case for ComponentHeightFactory.ComponentHeight.constant(_:))
  {
    return 0;
  }

  if (v7 == enum case for ComponentHeightFactory.ComponentHeight.aspectRatio(_:) || v7 != enum case for ComponentHeightFactory.ComponentHeight.auto(_:))
  {
    (*(v1 + 8))(v3, v0);
    return 0;
  }

  return 1;
}

uint64_t sub_3CF52C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_3CF6FC()
{
  if (*(v0 + 24) == 1 && (v1 = *(v0 + 16)) != 0 && ([v1 _manualScrollEdgeAppearanceProgress], v2 >= 1.0))
  {
    v3 = (v0 + 25);
    v13 = *(v0 + 25);
    *(v0 + 25) = 1;
    if (v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v3 = (v0 + 25);
    v4 = *(v0 + 25);
    *(v0 + 25) = 0;
    if ((v4 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v5 = *(v0 + 16);
  if (!v5 || (v6 = [v5 rightBarButtonItems]) == 0)
  {
LABEL_16:
    v14 = *(v0 + 16);
    if (v14)
    {
      goto LABEL_17;
    }

    return;
  }

  v7 = v6;
  sub_3929E4();
  v8 = sub_769460();

  if (v8 >> 62)
  {
    goto LABEL_31;
  }

  v9 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
  if (v9)
  {
LABEL_9:
    if (v9 >= 1)
    {
      for (i = 0; i != v9; ++i)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = sub_76A770();
        }

        else
        {
          v11 = *(v8 + 8 * i + 32);
        }

        v12 = v11;
        [v11 setHidden:*v3];
      }

      goto LABEL_32;
    }

    __break(1u);
  }

  else
  {
LABEL_32:
    while (1)
    {

      v14 = *(v0 + 16);
      if (!v14)
      {
        break;
      }

LABEL_17:
      v15 = [v14 rightBarButtonItems];
      if (!v15)
      {
        return;
      }

      v16 = v15;
      sub_3929E4();
      v8 = sub_769460();

      if (v8 >> 62)
      {
        v0 = sub_76A860();
        if (!v0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v0 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
        if (!v0)
        {
          goto LABEL_27;
        }
      }

      if (v0 >= 1)
      {
        for (j = 0; j != v0; ++j)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v18 = sub_76A770();
          }

          else
          {
            v18 = *(v8 + 8 * j + 32);
          }

          v19 = v18;
          [v18 setHidden:*v3];
        }

LABEL_27:

        return;
      }

      __break(1u);
LABEL_31:
      v9 = sub_76A860();
      if (v9)
      {
        goto LABEL_9;
      }
    }
  }
}

uint64_t sub_3CF94C()
{

  return swift_deallocClassInstance();
}

void sub_3CF9AC()
{
  if (*(v0 + 24) == 1)
  {
    v1 = *(v0 + 16);
    if (v1 && ([v1 _manualScrollEdgeAppearanceProgress], v2 >= 1.0))
    {
      v4 = *(v0 + 25);
      *(v0 + 25) = 1;
      if (v4)
      {
        return;
      }
    }

    else
    {
      v3 = *(v0 + 25);
      *(v0 + 25) = 0;
      if ((v3 & 1) == 0)
      {
        return;
      }
    }

    v5 = (v0 + 25);
    v6 = *(v0 + 16);
    if (v6)
    {
      v7 = [v6 rightBarButtonItems];
      if (v7)
      {
        v8 = v7;
        sub_3929E4();
        v9 = sub_769460();

        if (v9 >> 62)
        {
          v10 = sub_76A860();
          if (v10)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v10 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
          if (v10)
          {
LABEL_11:
            if (v10 < 1)
            {
              __break(1u);
              return;
            }

            for (i = 0; i != v10; ++i)
            {
              if ((v9 & 0xC000000000000001) != 0)
              {
                v12 = sub_76A770();
              }

              else
              {
                v12 = *(v9 + 8 * i + 32);
              }

              v13 = v12;
              [v12 setHidden:*v5];
            }
          }
        }
      }
    }
  }
}

uint64_t sub_3CFB24(uint64_t a1)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v27 = a1 + 32;
  v3 = &unk_945390;
  while (1)
  {
    v5 = *(v27 + 8 * v1);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      v7 = sub_76A860();
    }

    else
    {
      v7 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v25 = sub_76A860();
      v10 = v25 + v7;
      if (__OFADD__(v25, v7))
      {
LABEL_32:
        __break(1u);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v9 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v32 = v7;
    if (result)
    {
      if (!v8)
      {
        v11 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *(&dword_18 + (v2 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_76A860();
      goto LABEL_15;
    }

    if (v8)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_76A780();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v14 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v13 >> 1) - v12) < v32)
    {
      goto LABEL_36;
    }

    v29 = v1;
    v30 = v2;
    v16 = v11 + 8 * v12 + 32;
    v26 = v11;
    if (v6)
    {
      if (v14 < 1)
      {
        goto LABEL_38;
      }

      sub_3D6628();
      for (i = 0; i != v14; ++i)
      {
        sub_BD88(v3);
        v18 = v3;
        v19 = sub_10B534(v31, i, v5);
        v21 = *v20;
        (v19)(v31, 0);
        v3 = v18;
        *(v16 + 8 * i) = v21;
      }
    }

    else
    {
      sub_BE70(0, &qword_93E550);
      swift_arrayInitWithCopy();
    }

    v1 = v29;
    v2 = v30;
    if (v32 >= 1)
    {
      v22 = *(v26 + 16);
      v23 = __OFADD__(v22, v32);
      v24 = v22 + v32;
      if (v23)
      {
        goto LABEL_37;
      }

      *(v26 + 16) = v24;
    }

LABEL_4:
    if (++v1 == v28)
    {
      return v2;
    }
  }

  v15 = v11;
  result = sub_76A860();
  v11 = v15;
  v14 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v32 <= 0)
  {
    goto LABEL_4;
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

uint64_t sub_3CFDF8()
{
  v0 = sub_766690();
  sub_161DC(v0, qword_99D848);
  sub_BE38(v0, qword_99D848);
  return sub_7666A0();
}

uint64_t sub_3CFE4C()
{
  sub_BD88(&qword_9477F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_77DC20;
  *(v0 + 32) = sub_7677C0();
  *(v0 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  *(v0 + 48) = sub_767B80();
  *(v0 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
  result = sub_767890();
  *(v0 + 64) = result;
  *(v0 + 72) = &protocol witness table for UITraitHorizontalSizeClass;
  qword_952AB8 = v0;
  return result;
}

double sub_3CFEDC()
{
  qword_952B00 = &type metadata for Double;
  unk_952B08 = &protocol witness table for Double;
  qword_952B28 = &type metadata for Double;
  unk_952B30 = &protocol witness table for Double;
  qword_952B10 = 0;
  qword_952B50 = &type metadata for Double;
  unk_952B58 = &protocol witness table for Double;
  qword_952B38 = 0;
  qword_952B78 = &type metadata for Double;
  unk_952B80 = &protocol witness table for Double;
  qword_952B60 = 0x4000000000000000;
  qword_952BA0 = &type metadata for Double;
  unk_952BA8 = &protocol witness table for Double;
  qword_952B88 = 0;
  qword_952BC8 = &type metadata for Double;
  unk_952BD0 = &protocol witness table for Double;
  qword_952BB0 = 0x4026000000000000;
  qword_952BF0 = &type metadata for Double;
  unk_952BF8 = &protocol witness table for Double;
  qword_952BD8 = 0x4026000000000000;
  qword_952C18 = &type metadata for Double;
  unk_952C20 = &protocol witness table for Double;
  qword_952C00 = 0x4026000000000000;
  qword_952C40 = &type metadata for Double;
  unk_952C48 = &protocol witness table for Double;
  qword_952C28 = 0x4026000000000000;
  qword_952C68 = &type metadata for Double;
  unk_952C70 = &protocol witness table for Double;
  qword_952C50 = 0x4042000000000000;
  qword_952C90 = &type metadata for Double;
  unk_952C98 = &protocol witness table for Double;
  qword_952C78 = 0x4044000000000000;
  qword_952CB8 = &type metadata for Double;
  unk_952CC0 = &protocol witness table for Double;
  qword_952CA0 = 0x4032000000000000;
  result = 0.0;
  __asm { FMOV            V1.2D, #16.0 }

  xmmword_952AC0 = xmmword_79B230;
  *algn_952AD0 = _Q1;
  xmmword_952AE0 = _Q1;
  return result;
}

double sub_3CFF7C()
{
  qword_952D08 = &type metadata for Double;
  unk_952D10 = &protocol witness table for Double;
  qword_952D30 = &type metadata for Double;
  unk_952D38 = &protocol witness table for Double;
  qword_952D18 = 0;
  qword_952D58 = &type metadata for Double;
  unk_952D60 = &protocol witness table for Double;
  qword_952D40 = 0;
  qword_952D80 = &type metadata for Double;
  unk_952D88 = &protocol witness table for Double;
  qword_952D68 = 0x4018000000000000;
  qword_952DA8 = &type metadata for Double;
  unk_952DB0 = &protocol witness table for Double;
  qword_952D90 = 0;
  qword_952DD0 = &type metadata for Double;
  unk_952DD8 = &protocol witness table for Double;
  qword_952DB8 = 0x4026000000000000;
  qword_952DF8 = &type metadata for Double;
  unk_952E00 = &protocol witness table for Double;
  qword_952DE0 = 0x4026000000000000;
  qword_952E20 = &type metadata for Double;
  unk_952E28 = &protocol witness table for Double;
  qword_952E08 = 0x4026000000000000;
  qword_952E48 = &type metadata for Double;
  unk_952E50 = &protocol witness table for Double;
  qword_952E30 = 0x4026000000000000;
  qword_952E70 = &type metadata for Double;
  unk_952E78 = &protocol witness table for Double;
  qword_952E58 = 0x4042000000000000;
  qword_952E98 = &type metadata for Double;
  unk_952EA0 = &protocol witness table for Double;
  qword_952E80 = 0x4044000000000000;
  qword_952EC0 = &type metadata for Double;
  unk_952EC8 = &protocol witness table for Double;
  qword_952EA8 = 0x4032000000000000;
  __asm { FMOV            V1.2D, #16.0 }

  xmmword_952CC8 = xmmword_79B230;
  unk_952CD8 = _Q1;
  result = 16.0;
  xmmword_952CE8 = xmmword_79B240;
  return result;
}

double sub_3D0024()
{
  qword_952F10 = &type metadata for Double;
  unk_952F18 = &protocol witness table for Double;
  qword_952F38 = &type metadata for Double;
  unk_952F40 = &protocol witness table for Double;
  qword_952F20 = 0;
  qword_952F60 = &type metadata for Double;
  unk_952F68 = &protocol witness table for Double;
  qword_952F48 = 0;
  qword_952F88 = &type metadata for Double;
  unk_952F90 = &protocol witness table for Double;
  qword_952F70 = 0x4010000000000000;
  qword_952FB0 = &type metadata for Double;
  unk_952FB8 = &protocol witness table for Double;
  qword_952F98 = 0;
  qword_952FD8 = &type metadata for Double;
  unk_952FE0 = &protocol witness table for Double;
  qword_952FC0 = 0x4030000000000000;
  qword_953000 = &type metadata for Double;
  unk_953008 = &protocol witness table for Double;
  qword_952FE8 = 0x4030000000000000;
  qword_953028 = &type metadata for Double;
  unk_953030 = &protocol witness table for Double;
  qword_953010 = 0x4030000000000000;
  qword_953050 = &type metadata for Double;
  unk_953058 = &protocol witness table for Double;
  qword_953038 = 0x4030000000000000;
  qword_953078 = &type metadata for Double;
  unk_953080 = &protocol witness table for Double;
  qword_953060 = 0x4042000000000000;
  qword_9530A0 = &type metadata for Double;
  unk_9530A8 = &protocol witness table for Double;
  qword_953088 = 0x4044000000000000;
  qword_9530C8 = &type metadata for Double;
  unk_9530D0 = &protocol witness table for Double;
  qword_9530B0 = 0x4032000000000000;
  __asm { FMOV            V1.2D, #20.0 }

  xmmword_952ED0 = xmmword_79B250;
  unk_952EE0 = _Q1;
  result = 20.0;
  xmmword_952EF0 = xmmword_79B260;
  return result;
}

double sub_3D00CC()
{
  qword_953118 = &type metadata for Double;
  unk_953120 = &protocol witness table for Double;
  qword_953140 = &type metadata for Double;
  unk_953148 = &protocol witness table for Double;
  qword_953128 = 0;
  qword_953168 = &type metadata for Double;
  unk_953170 = &protocol witness table for Double;
  qword_953150 = 0;
  qword_953190 = &type metadata for Double;
  unk_953198 = &protocol witness table for Double;
  qword_953178 = 0x4018000000000000;
  qword_9531B8 = &type metadata for Double;
  unk_9531C0 = &protocol witness table for Double;
  qword_9531A0 = 0;
  qword_9531E0 = &type metadata for Double;
  unk_9531E8 = &protocol witness table for Double;
  qword_9531C8 = 0x4026000000000000;
  qword_953208 = &type metadata for Double;
  unk_953210 = &protocol witness table for Double;
  qword_9531F0 = 0x4026000000000000;
  qword_953230 = &type metadata for Double;
  unk_953238 = &protocol witness table for Double;
  qword_953218 = 0x4026000000000000;
  qword_953258 = &type metadata for Double;
  unk_953260 = &protocol witness table for Double;
  qword_953240 = 0x4026000000000000;
  qword_953280 = &type metadata for Double;
  unk_953288 = &protocol witness table for Double;
  qword_953268 = 0x4042000000000000;
  qword_9532A8 = &type metadata for Double;
  unk_9532B0 = &protocol witness table for Double;
  qword_953290 = 0x4044000000000000;
  qword_9532D0 = &type metadata for Double;
  unk_9532D8 = &protocol witness table for Double;
  qword_9532B8 = 0x4032000000000000;
  xmmword_9530D8 = xmmword_79B250;
  unk_9530E8 = xmmword_79B270;
  result = 20.0;
  xmmword_9530F8 = xmmword_79B280;
  return result;
}

uint64_t sub_3D0178()
{
  v0 = sub_75CF00();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_161DC(v4, qword_9532E0);
  sub_BE38(v0, qword_9532E0);
  if (qword_93C668 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v0, qword_99B898);
  (*(v1 + 16))(v3, v5, v0);
  sub_765470();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_3D02DC(uint64_t a1)
{
  v2 = sub_7664A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75CDE0();
  v36 = a1;
  sub_75CE20();
  if (qword_93D5A0 != -1)
  {
    swift_once();
  }

  v6 = sub_7666D0();
  v7 = sub_BE38(v6, qword_99E8F0);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v35 = v8 + 16;
  v9(v5, v7, v6);
  v10 = v3[13];
  v33 = enum case for FontSource.useCase(_:);
  v10(v5);
  v11 = sub_766CA0();
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_B1B4(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v12 = sub_B1B4(v38);
  v13 = v3[2];
  v37 = v3 + 2;
  v34 = v13;
  v13(v12, v5, v2);
  sub_766CB0();
  v14 = v3[1];
  v14(v5, v2);
  sub_75CEE0();
  if (qword_93D598 != -1)
  {
    swift_once();
  }

  v30 = sub_BE38(v6, qword_99E8D8);
  (v9)(v5);
  (v10)(v5, v33, v2);
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_B1B4(v41);
  v31 = v9;
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v15 = sub_B1B4(v38);
  v34(v15, v5, v2);
  sub_766CB0();
  v14(v5, v2);
  sub_75CE60();
  v32 = v14;
  if (qword_93D588 != -1)
  {
    swift_once();
  }

  v16 = sub_BE38(v6, qword_99E8A8);
  v31(v5, v16, v6);
  v17 = v33;
  (v10)(v5, v33, v2);
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_B1B4(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v18 = sub_B1B4(v38);
  v34(v18, v5, v2);
  sub_766CB0();
  v32(v5, v2);
  sub_75CE00();
  v19 = v11;
  if (qword_93D590 != -1)
  {
    swift_once();
  }

  v20 = sub_BE38(v6, qword_99E8C0);
  v21 = v31;
  v31(v5, v20, v6);
  (v10)(v5, v17, v2);
  v42 = v19;
  v43 = &protocol witness table for StaticDimension;
  sub_B1B4(v41);
  v29 = v19;
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v22 = sub_B1B4(v38);
  v28 = v10;
  v23 = v34;
  v34(v22, v5, v2);
  sub_766CB0();
  v24 = v32;
  v32(v5, v2);
  sub_75CEF0();
  sub_75CE40();
  v21(v5, v30, v6);
  (v28)(v5, v33, v2);
  v42 = v29;
  v43 = &protocol witness table for StaticDimension;
  sub_B1B4(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v25 = sub_B1B4(v38);
  v23(v25, v5, v2);
  sub_766CB0();
  v24(v5, v2);
  return sub_75CE50();
}

uint64_t sub_3D08C4()
{
  v0 = sub_75CF00();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_161DC(v4, qword_9532F8);
  sub_BE38(v0, qword_9532F8);
  if (qword_93CF90 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v0, qword_9532E0);
  (*(v1 + 16))(v3, v5, v0);
  sub_765470();
  return (*(v1 + 8))(v3, v0);
}

void sub_3D0A28()
{
  v0 = sub_76A3F0();
  sub_161DC(v0, qword_953310);
  sub_BE38(v0, qword_953310);
  sub_3D0A74();
}

void sub_3D0A74()
{
  v0 = sub_BD88(&unk_95A870);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  sub_76A3A0();
  v3 = sub_769210();
  v4 = [objc_opt_self() systemImageNamed:v3];

  sub_76A390();
  sub_76A290();
  sub_76A2D0();
  sub_76A2C0();
  v5 = [objc_opt_self() labelColor];
  sub_76A320();
  v6 = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleFootnote weight:UIFontWeightBold];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_opt_self() configurationWithFont:v6 scale:1];
    sub_76A220();
    sub_767BA0();
    v9 = sub_767B90();
    (*(*(v9 - 8) + 56))(v2, 0, 1, v9);
    sub_76A340();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_3D0C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_756F10();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote];
  v6 = [v5 fontDescriptorWithSymbolicTraits:2];
  v7 = objc_opt_self();
  if (v6)
  {
    [v7 fontWithDescriptor:v6 size:0.0];

    v5 = v6;
  }

  else
  {
    [v7 fontWithDescriptor:v5 size:0.0];
  }

  sub_1EABC();
  return sub_756F20();
}

char *sub_3D0DA8(int a1)
{
  v2 = v1;
  v80 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_BD88(&unk_954ED0);
  __chkstk_darwin(v3 - 8);
  v81 = v73 - v4;
  v5 = sub_760AD0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v9 - 8);
  v11 = v73 - v10;
  v12 = OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_primaryContent;
  *(v2 + v12) = [objc_allocWithZone(type metadata accessor for AppPromotionScrollableContentContainerView()) init];
  v13 = OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_secondaryContent;
  *(v2 + v13) = [objc_allocWithZone(UIView) init];
  v14 = OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_availabilityLabelView;
  type metadata accessor for AppPromotionFormattedDateView();
  *(v2 + v14) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v78 = OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_promotionKindLabel;
  v84 = sub_7666D0();
  v15 = *(v84 - 8);
  v83 = *(v15 + 56);
  v16 = v15 + 56;
  v83(v11, 1, 1, v84);
  v77 = v16;
  v17 = enum case for DirectionalTextAlignment.none(_:);
  v18 = v6 + 104;
  v82 = *(v6 + 104);
  v74 = enum case for DirectionalTextAlignment.none(_:);
  v75 = v5;
  v82(v8, enum case for DirectionalTextAlignment.none(_:), v5);
  v19 = sub_75BB20();
  v76 = v19;
  v20 = objc_allocWithZone(v19);
  *(v2 + v78) = sub_75BB10();
  v78 = OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_titleLabel;
  v21 = v83;
  v83(v11, 1, 1, v84);
  v22 = v17;
  v23 = v82;
  v73[1] = v18;
  v82(v8, v22, v5);
  v24 = objc_allocWithZone(v19);
  v25 = sub_75BB10();
  v73[0] = v2;
  *(v2 + v78) = v25;
  v26 = OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_subtitleView;
  v27 = objc_allocWithZone(type metadata accessor for AppPromotionSubtitleView());
  *(v2 + v26) = sub_6E5048(1);
  v78 = OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_detailLabel;
  v28 = v84;
  v21(v11, 1, 1, v84);
  v29 = v74;
  v30 = v75;
  v23(v8, v74, v75);
  v31 = v76;
  v32 = objc_allocWithZone(v76);
  v33 = sub_75BB10();
  v34 = v73[0];
  *(v73[0] + v78) = v33;
  v35 = OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_inlineLearnMoreLabel;
  v36 = v28;
  v37 = ObjectType;
  v83(v11, 1, 1, v36);
  v82(v8, v29, v30);
  v38 = objc_allocWithZone(v31);
  v39 = v34;
  *&v34[v35] = sub_75BB10();
  v40 = OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_learnMoreButton;
  *&v39[v40] = [objc_allocWithZone(UIButton) init];
  v41 = OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_separatorView;
  type metadata accessor for SeparatorView();
  *&v39[v41] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v42 = OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_lockupView;
  type metadata accessor for SubscriptionLockupView();
  *&v39[v42] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v39[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_haveFlashedScrollIndicators] = 0;
  *&v39[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_learnMoreButtonAction] = 0;
  v43 = OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_mediaOverlayStyle;
  v44 = enum case for MediaOverlayStyle.matchSystem(_:);
  v45 = sub_75CA40();
  (*(*(v45 - 8) + 104))(&v39[v43], v44, v45);
  v39[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_displayMode] = v80 & 1;
  v85.receiver = v39;
  v85.super_class = v37;
  v46 = objc_msgSendSuper2(&v85, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v50 = v46;
  [v50 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v50 setClipsToBounds:1];
  v51 = OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_secondaryContent;
  v52 = *&v50[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_secondaryContent];
  v53 = objc_opt_self();
  v54 = v52;
  v55 = [v53 systemBackgroundColor];
  [v54 setBackgroundColor:v55];

  [v50 addSubview:*&v50[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_primaryContent]];
  [v50 addSubview:*&v50[v51]];
  v56 = *&v50[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_availabilityLabelView];
  LOBYTE(v54) = v56[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_style];
  v56[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_style] = 1;
  v57 = v56;
  sub_26B40C(v54);

  v58 = *&v50[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_promotionKindLabel];
  v59 = [v53 secondaryLabelColor];
  [v58 setTextColor:v59];

  v60 = *&v50[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_separatorView];
  v61 = [v53 labelColor];
  v62 = [v61 colorWithAlphaComponent:0.5];

  v63 = *&v60[OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_lineColor];
  *&v60[OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_lineColor] = v62;
  v64 = v62;

  [*&v60[OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_lineView] setBackgroundColor:v64];
  v65 = OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_learnMoreButton;
  v66 = qword_93CFA0;
  v67 = *&v50[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_learnMoreButton];
  if (v66 != -1)
  {
    swift_once();
  }

  v68 = sub_76A3F0();
  v69 = sub_BE38(v68, qword_953310);
  v70 = *(v68 - 8);
  v71 = v81;
  (*(v70 + 16))(v81, v69, v68);
  (*(v70 + 56))(v71, 0, 1, v68);
  sub_76A420();

  if (qword_93CF68 != -1)
  {
    swift_once();
  }

  sub_769F40();
  swift_unknownObjectRelease();
  [*&v50[v65] setNeedsUpdateConfiguration];
  sub_3D2AC4();
  sub_3D1780();
  sub_3D3018();
  sub_3D320C();
  [v50 setNeedsLayout];

  return v50;
}

void sub_3D16AC(void *a1)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_learnMoreButtonAction;
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_learnMoreButtonAction);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_learnMoreButtonAction) = a1;
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_learnMoreButton);
    v5 = a1;
    [v4 removeAction:v3 forControlEvents:64];
    v6 = *(v1 + v2);
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = a1;
  v6 = a1;
  if (a1)
  {
LABEL_3:
    v7 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_learnMoreButton);
    v8 = v6;
    [v7 addAction:v8 forControlEvents:64];
  }

LABEL_4:
}

void sub_3D1780()
{
  v1 = v0;
  v2 = sub_75CA40();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v50 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v48 - v6;
  v48 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_availabilityLabelView];
  v8 = OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_mediaOverlayStyle;
  swift_beginAccess();
  v9 = *(v3 + 16);
  v9(v7, &v1[v8], v2);
  v10 = v9;
  v49 = v9;
  v11 = sub_75CA30();
  v12 = *(v3 + 8);
  v12(v7, v2);
  [v48 setOverrideUserInterfaceStyle:v11];
  v13 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_primaryContent];
  v10(v7, &v1[v8], v2);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_mediaOverlayStyle;
  swift_beginAccess();
  (*(v3 + 24))(v13 + v14, v7, v2);
  swift_endAccess();
  sub_2172D4();
  v12(v7, v2);
  v15 = v50;
  v49(v50, &v1[v8], v2);
  sub_75CA20();
  v12(v15, v2);
  sub_769240();
  v16 = sub_769210();

  v17 = [*&v1[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_promotionKindLabel] layer];
  [v17 setCompositingFilter:v16];

  v18 = v1;
  v19 = [v1 traitCollection];
  v48 = v16;
  if (v19)
  {
    v20 = v19;
    if (sub_7699D0())
    {
      v21 = sub_769A00();

      if (v21)
      {
        v22 = 0;
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v23 = v16;
  v22 = v16;
LABEL_7:
  v50 = *&v18[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_detailLabel];
  v24 = [v50 layer];
  v25 = v22;
  [v24 setCompositingFilter:v25];

  v49 = *&v18[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_inlineLearnMoreLabel];
  v26 = [v49 layer];
  [v26 setCompositingFilter:v25];

  if (v22)
  {
    v27 = sub_BE70(0, &qword_954EE0);
    v28 = v25;
  }

  else
  {
    v28 = 0;
    v27 = 0;
    v52 = 0;
    v53 = 0;
  }

  v51 = v28;
  v54 = v27;
  v29 = v25;
  sub_6E46A8(&v51);
  if (v22)
  {
    v30 = sub_BE70(0, &qword_954EE0);
    v31 = v29;
  }

  else
  {
    v31 = 0;
    v30 = 0;
    v52 = 0;
    v53 = 0;
  }

  v51 = v31;
  v54 = v30;
  v32 = v29;
  sub_61D394(&v51);
  v33 = *&v18[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_lockupView];
  v34 = OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_iapLockupView;
  v35 = [*(v33 + OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_iapLockupView) isHidden];
  v36 = OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_appLockupView;
  if (!v35)
  {
    v36 = v34;
  }

  v37 = [*(*(v33 + v36) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel) layer];
  [v37 setCompositingFilter:v32];

  v38 = [*(v33 + v34) isHidden];
  v39 = OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_appLockupView;
  if (!v38)
  {
    v39 = v34;
  }

  v40 = [*(*(*(v33 + v39) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton) + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_subtitleLabel) layer];
  [v40 setCompositingFilter:v32];

  v41 = [v18 traitCollection];
  if (!v41)
  {
    goto LABEL_22;
  }

  v42 = v41;
  if ((sub_7699D0() & 1) == 0)
  {

    goto LABEL_22;
  }

  v43 = sub_769A00();

  if ((v43 & 1) == 0)
  {
LABEL_22:
    v44 = &selRef_secondaryLabelColor;
    goto LABEL_23;
  }

  v44 = &selRef_labelColor;
LABEL_23:
  v45 = objc_opt_self();
  v46 = [v45 *v44];
  [v50 setTextColor:v46];

  v47 = [v45 *v44];
  [v49 setTextColor:v47];

  sub_3D346C();
}

uint64_t sub_3D1D40@<X0>(double *a1@<X8>, double a2@<D1>)
{
  v3 = v2;
  v6 = [v2 traitCollection];
  v7 = sub_7699D0();

  v8 = [v3 traitCollection];
  v9 = sub_769A00();

  if (v7)
  {
    if (v9)
    {
      if (qword_93CF70 != -1)
      {
        swift_once();
      }

      v10 = &xmmword_952AC0;
    }

    else
    {
      if (qword_93CF78 != -1)
      {
        swift_once();
      }

      v10 = &xmmword_952CC8;
    }

    sub_3D668C(v10, __src);
    memcpy(a1, __src, 0x208uLL);
    *&__src[24] = &type metadata for Double;
    *&__src[32] = &protocol witness table for Double;
    *__src = 0x404E000000000000;
    sub_BEB8((a1 + 10));
    sub_34698(__src, (a1 + 10));
    if (qword_93CF60 != -1)
    {
      swift_once();
    }

    v12 = sub_766690();
    sub_BE38(v12, qword_99D848);
    result = sub_766660();
    a2 = trunc(v14);
  }

  else
  {
    if (v9)
    {
      if (qword_93CF80 != -1)
      {
        swift_once();
      }

      v11 = &xmmword_952ED0;
    }

    else
    {
      if (qword_93CF88 != -1)
      {
        swift_once();
      }

      v11 = &xmmword_9530D8;
    }

    sub_3D668C(v11, __src);
    result = memcpy(a1, __src, 0x208uLL);
  }

  *a1 = a2;
  return result;
}

uint64_t sub_3D1F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = [v2 traitCollection];
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = v6;
  if ((sub_7699D0() & 1) == 0)
  {

    goto LABEL_6;
  }

  v8 = sub_769A00();

  if ((v8 & 1) == 0)
  {
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v9 = v3[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_displayMode];
LABEL_7:
  sub_3D668C(a1, a2);
  v22[6] = *&v3[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_primaryContent];
  type metadata accessor for AppPromotionScrollableContentContainerView();
  sub_7665D0();
  v22[5] = *&v3[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_secondaryContent];
  sub_BE70(0, &qword_93E550);
  sub_7665D0();
  v10 = sub_75E960();
  *(a2 + 624) = v10;
  v11 = sub_3D6D04(&qword_9533D0, &type metadata accessor for BoundsBasedPlaceable);
  *(a2 + 632) = v11;
  sub_B1B4((a2 + 600));
  sub_769E40();
  *(a2 + 664) = v10;
  *(a2 + 672) = v11;
  sub_B1B4((a2 + 640));
  sub_769E40();
  *(a2 + 704) = v10;
  *(a2 + 712) = v11;
  sub_B1B4((a2 + 680));
  sub_769E40();
  v12 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_subtitleView];
  *(a2 + 744) = v10;
  *(a2 + 752) = v11;
  sub_B1B4((a2 + 720));
  sub_769E40();
  v22[3] = v10;
  v22[4] = v11;
  sub_B1B4(v22);
  sub_769E40();
  *(a2 + 784) = v10;
  *(a2 + 792) = v11;
  sub_B1B4((a2 + 760));
  sub_769E40();
  v13 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_inlineLearnMoreLabel];
  v21[3] = sub_75BB20();
  v21[4] = &protocol witness table for UILabel;
  v21[0] = v13;
  v14 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_separatorView];
  *(a2 + 904) = type metadata accessor for SeparatorView();
  *(a2 + 912) = sub_3D6D04(&qword_9533D8, type metadata accessor for SeparatorView);
  *(a2 + 880) = v14;
  v15 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_lockupView];
  *(a2 + 944) = type metadata accessor for SubscriptionLockupView();
  *(a2 + 952) = sub_3D6D04(&qword_9533E0, type metadata accessor for SubscriptionLockupView);
  *(a2 + 920) = v15;
  v16 = *(v12 + qword_962AD8);
  v17 = v13;
  v18 = v14;
  v19 = v15;
  LOBYTE(v16) = [v16 hasContent];
  *(a2 + 800) = 0u;
  *(a2 + 816) = 0u;
  *(a2 + 832) = 0u;
  *(a2 + 848) = 0u;
  *(a2 + 864) = 0u;
  sub_3D66E8(v22, a2 + 840);
  result = sub_3D66E8(v21, a2 + 800);
  *(a2 + 960) = v9;
  *(a2 + 961) = v16;
  return result;
}

uint64_t sub_3D23A8()
{
  v1 = v0;
  v45.receiver = v0;
  v45.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v45, "layoutSubviews");
  [v0 bounds];
  sub_3D1D40(v44, v2);
  sub_3D1F8C(v44, v41);
  [v0 bounds];
  Width = v3;
  v6 = v5;
  v7 = [v0 traitCollection];
  if (sub_7699D0())
  {
    v8 = sub_769A00();

    if (v8)
    {
      v9 = *v41;
      sub_577F7C(v7, v43, v39);
      sub_B170(v39, v40);
      sub_7673F0();
      v11 = v9 + v10;
      goto LABEL_9;
    }
  }

  else
  {
  }

  if (sub_7699D0())
  {
    sub_576290(v7, v39, 0.0, 0.0, Width, v6);
  }

  else
  {
    sub_576C98(v7, v39, 0.0, 0.0, Width, v6);
  }

  sub_B170(v39, v40);
  sub_7673F0();
  Width = v12;
  v11 = v13;
LABEL_9:
  sub_BEB8(v39);

  [v1 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [v1 traitCollection];
  if (sub_7699D0())
  {
    v23 = sub_769A00();

    if (v23)
    {
      sub_577C38(v22, v15, v17, v19, v21);
      goto LABEL_17;
    }
  }

  else
  {
  }

  v24 = sub_7699D0();
  sub_B170(v42, v42[3]);
  sub_7673E0();
  if (v24)
  {
    sub_576290(v22, v39, v15, v17, v19, v21);
  }

  else
  {
    sub_576C98(v22, v39, v15, v17, v19, v21);
    v46.origin.x = v15;
    v46.origin.y = v17;
    v46.size.width = v19;
    v46.size.height = v21;
    CGRectGetMinX(v46);
    v47.origin.x = v15;
    v47.origin.y = v17;
    v47.size.width = v19;
    v47.size.height = v21;
    CGRectGetMinY(v47);
    v48.origin.x = v15;
    v48.origin.y = v17;
    v48.size.width = v19;
    v48.size.height = v21;
    CGRectGetWidth(v48);
  }

  sub_B170(v39, v40);
  sub_7673E0();
  sub_BEB8(v39);
LABEL_17:

  v25 = [v1 traitCollection];
  if (v25)
  {
    v26 = v25;
    if (sub_7699D0())
    {
      v27 = sub_769A00();

      if (v27)
      {
        v28 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_primaryContent];
        [v1 bounds];
        Width = CGRectGetWidth(v49);
        v11 = v44[0];
        goto LABEL_24;
      }
    }

    else
    {
    }
  }

  [v1 bounds];
  Height = CGRectGetHeight(v50);
  v28 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_primaryContent];
  if (vabdd_f64(Height, v11) <= 1.0)
  {
    [v1 bounds];
    Width = v30;
    v11 = v31;
  }

LABEL_24:
  [v28 setContentSize:{Width, v11}];
  sub_3D28C8();
  v1[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_haveFlashedScrollIndicators] = 0;
  [v28 contentSize];
  v33 = v32;
  [v28 bounds];
  v34 = 0;
  if (CGRectGetHeight(v51) >= v33)
  {
    v35 = [v1 traitCollection];
    if (v35)
    {
      v36 = v35;
      if (sub_7699D0())
      {
        v37 = sub_769A00();

        v34 = v37 ^ 1;
        goto LABEL_30;
      }
    }

    v34 = 1;
  }

LABEL_30:
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_separatorView] setHidden:v34 & 1];
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_lockupView] setHidden:v34 & 1];
  sub_3D6758(v41);
  return sub_3D67AC(v44);
}

void sub_3D28C8()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_769A00();

  v4 = &OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_availabilityLabelView;
  if ((v3 & 1) == 0)
  {
    v4 = &OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_promotionKindLabel;
  }

  v14 = *&v1[*v4];
  v5 = [v1 traitCollection];
  v6 = sub_7699D0();

  v7 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_primaryContent];
  if (v6)
  {
    v8 = *(v7 + OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_protectionMode);
    *(v7 + OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_protectionMode) = v14;
    if ((v8 - 1) > 1)
    {
      if (v8)
      {
        sub_BE70(0, &qword_93E550);
        v11 = v14;
        sub_2180C8(v8);
        v12 = sub_76A1C0();
        sub_2180B4(v8);
        if (v12)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v13 = v14;
        sub_2180C8(0);
      }
    }

    else
    {
      v9 = v14;
    }

    sub_217140();
LABEL_14:
    sub_2175DC();
    sub_2180B4(v8);

    goto LABEL_15;
  }

  v10 = *(v7 + OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_protectionMode);
  *(v7 + OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_protectionMode) = 2;
  if (v10 != &dword_0 + 2)
  {
    sub_217140();
  }

  sub_2175DC();
  sub_2180B4(v10);
LABEL_15:
}

uint64_t sub_3D2AC4()
{
  v1 = v0;
  sub_BD88(&unk_93F5C0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_77B6C0;
  v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_availabilityLabelView);
  v4 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_promotionKindLabel);
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  v44 = v2;
  v5 = v3;
  v6 = v4;
  v7 = [v1 traitCollection];
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  if ((sub_7699D0() & 1) == 0)
  {

    goto LABEL_10;
  }

  v9 = sub_769A00();

  if ((v9 & 1) == 0)
  {
LABEL_10:
    v14 = &OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_detailLabel;
    v15 = &OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_subtitleView;
    v16 = &OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_titleLabel;
    goto LABEL_11;
  }

  v10 = [v1 traitCollection];
  v11 = [v10 preferredContentSizeCategory];
  if (qword_93DC88 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v12 = sub_769B50();

    v13 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_titleLabel);
    if (v12)
    {
      sub_769440();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }
    }

    else
    {
      sub_769440();
      if (*(&dword_10 + (v44 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v44 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }
    }

    sub_769500();
    v14 = &OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_inlineLearnMoreLabel;
    v15 = &OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_detailLabel;
    v16 = &OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_subtitleView;
LABEL_11:
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_79B290;
    v18 = *(v1 + *v16);
    *(inited + 32) = v18;
    v19 = *(v1 + *v15);
    *(inited + 40) = v19;
    v20 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_learnMoreButton);
    *(inited + 48) = v20;
    v21 = *(v1 + *v14);
    *(inited + 56) = v21;
    v22 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_separatorView);
    *(inited + 64) = v22;
    v23 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_lockupView);
    *(inited + 72) = v23;
    v24 = v18;
    v25 = v19;
    v26 = v20;
    v27 = v21;
    v28 = v22;
    v29 = v23;
    sub_10A0A0(inited);
    v11 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_primaryContent);
    v10 = v44;
    sub_BD88(&qword_94DC60);
    v30 = swift_initStackObject();
    *(v30 + 16) = xmmword_77B6D0;
    *(v30 + 32) = v44;

    v31 = sub_3CFB24(v30);
    swift_setDeallocating();
    sub_10A2C(v30 + 32, &unk_945390);
    if (v31 >> 62)
    {
      v32 = sub_76A860();
      if (!v32)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v32 = *(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8));
      if (!v32)
      {
        goto LABEL_23;
      }
    }

    if (v32 < 1)
    {
      __break(1u);
      goto LABEL_37;
    }

    v33 = 0;
    v10 = (v31 & 0xC000000000000001);
    do
    {
      if (v10)
      {
        v34 = sub_76A770();
      }

      else
      {
        v34 = *(v31 + 8 * v33 + 32);
      }

      v35 = v34;
      ++v33;
      [v11 addSubview:v34];
    }

    while (v32 != v33);
LABEL_23:

    v11 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_secondaryContent);
    v1 = _swiftEmptyArrayStorage;
    v36 = swift_initStackObject();
    *(v36 + 16) = xmmword_77B6D0;
    *(v36 + 32) = _swiftEmptyArrayStorage;

    v37 = sub_3CFB24(v36);
    swift_setDeallocating();
    sub_10A2C(v36 + 32, &unk_945390);
    if (v37 >> 62)
    {
      v38 = sub_76A860();
      if (!v38)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v38 = *(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8));
      if (!v38)
      {
        goto LABEL_32;
      }
    }

    if (v38 >= 1)
    {
      break;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
  }

  for (i = 0; i != v38; ++i)
  {
    if ((v37 & 0xC000000000000001) != 0)
    {
      v40 = sub_76A770();
    }

    else
    {
      v40 = *(v37 + 8 * i + 32);
    }

    v41 = v40;
    [v11 addSubview:v40];
  }

LABEL_32:

  if (_swiftEmptyArrayStorage >> 62)
  {
    v42 = sub_76A860();
  }

  else
  {
    v42 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
  }

  [v11 setHidden:v42 == 0];
}

id sub_3D3018()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_promotionKindLabel];
  if (qword_93DF28 != -1)
  {
    swift_once();
  }

  v3 = qword_9A04A8;
  v4 = unk_9A04B0;
  v5 = qword_9A04B8;
  v6 = [v0 traitCollection];
  if (sub_769A00())
  {
  }

  else
  {
    v7 = sub_7699D0();

    if (v7)
    {
      v5 = v3;
    }

    else
    {
      v5 = v4;
    }
  }

  [v2 setFont:v5];
  v8 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_detailLabel];
  if (qword_93DF40 != -1)
  {
    swift_once();
  }

  v9 = qword_9A04F0;
  v10 = *algn_9A04F8;
  v11 = qword_9A0500;
  v12 = [v1 traitCollection];
  if (sub_769A00())
  {

    v13 = v11;
  }

  else
  {
    v14 = sub_7699D0();

    if (v14)
    {
      v13 = v9;
    }

    else
    {
      v13 = v10;
    }
  }

  [v8 setFont:v13];
  v15 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_inlineLearnMoreLabel];
  v16 = [v1 traitCollection];
  if (sub_769A00())
  {
  }

  else
  {
    v17 = sub_7699D0();

    if (v17)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }
  }

  [v15 setFont:v11];
  v18 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_learnMoreButton];

  return [v18 setNeedsUpdateConfiguration];
}

uint64_t sub_3D320C()
{
  v1 = v0;
  v2 = sub_75CF00();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v20 - v8;
  v10 = [v0 traitCollection];
  v11 = sub_769A00();

  v12 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_lockupView];
  if (v11)
  {
    if (qword_93CF98 != -1)
    {
      swift_once();
    }

    v13 = qword_9532F8;
  }

  else
  {
    if (qword_93CF90 != -1)
    {
      swift_once();
    }

    v13 = qword_9532E0;
  }

  v14 = sub_BE38(v2, v13);
  v15 = *(v3 + 16);
  v15(v9, v14, v2);
  v16 = *&v12[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_iapLockupView];
  v15(v5, v9, v2);
  v17 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v3 + 24))(&v16[v17], v5, v2);
  swift_endAccess();
  [v16 setNeedsLayout];
  v18 = *(v3 + 8);
  v18(v5, v2);
  [v12 setNeedsLayout];
  return (v18)(v9, v2);
}

void sub_3D346C()
{
  v1 = v0;
  v2 = sub_75CA40();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_mediaOverlayStyle;
  swift_beginAccess();
  (*(v3 + 16))(v5, &v1[v6], v2);
  v7 = sub_75CA20();
  (*(v3 + 8))(v5, v2);
  if (v7 != 2)
  {
    goto LABEL_5;
  }

  v8 = [v1 traitCollection];
  if (v8)
  {
    v9 = v8;
    if (sub_7699D0())
    {
      v10 = sub_769A00();

      if (v10)
      {
LABEL_5:
        v11 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_lockupView];
        v12 = OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_iapLockupView;
        v13 = [*(v11 + OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_iapLockupView) isHidden];
        v14 = OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_appLockupView;
        if (!v13)
        {
          v14 = v12;
        }

        v15 = *(*(v11 + v14) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton);
        sub_BE70(0, &qword_93E540);
        v16 = v15;
        v17 = sub_76A0F0();
        goto LABEL_12;
      }
    }

    else
    {
    }
  }

  v18 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_lockupView];
  v19 = OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_iapLockupView;
  v20 = [*(v18 + OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_iapLockupView) isHidden];
  v21 = OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_appLockupView;
  if (!v20)
  {
    v21 = v19;
  }

  v22 = *(*(v18 + v21) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton);
  v23 = objc_opt_self();
  v16 = v22;
  v17 = [v23 whiteColor];
LABEL_12:
  v24 = v17;
  [v16 setTintColor:v17];
}

uint64_t sub_3D36D4()
{
  sub_BD88(&unk_94E620);
  v1 = swift_allocObject();
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_availabilityLabelView);
  v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_promotionKindLabel);
  v4 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_titleLabel);
  *(v1 + 16) = xmmword_77DCF0;
  v5 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_subtitleView);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v6 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_detailLabel);
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  v7 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_inlineLearnMoreLabel);
  *(v1 + 64) = v6;
  *(v1 + 72) = v7;
  v8 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_learnMoreButton);
  *(v1 + 80) = v8;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  return v1;
}

uint64_t sub_3D37BC()
{
  sub_BD88(&unk_94E620);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_780120;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_promotionKindLabel);
  v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_titleLabel);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v4 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_subtitleView);
  v5 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_detailLabel);
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  v6 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_inlineLearnMoreLabel);
  v7 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_learnMoreButton);
  *(v1 + 64) = v6;
  *(v1 + 72) = v7;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v13 = v7;
  return v1;
}

uint64_t sub_3D3888()
{
  sub_BD88(&unk_94E620);
  v1 = swift_allocObject();
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_primaryContent);
  v3 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_contentBasedProtectionView);
  *(v1 + 16) = xmmword_77E280;
  v4 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_fullProtectionView);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  v5 = v4;
  v6 = v3;
  return v1;
}

void sub_3D3910()
{
  sub_759210();
  sub_3D6D04(&qword_945810, &type metadata accessor for ArtworkView);
  sub_75A0C0();
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_lockupView);
  v2 = OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_iapLockupView;
  v3 = *(*(v1 + OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_iapLockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  sub_75A0C0();

  v4 = *(*(v1 + OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_appLockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  sub_75A0C0();

  v5 = *(*(v1 + v2) + OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_inAppPurchaseIcon);
  if (v5)
  {
    v6 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_tileIconArtworkView];
    v7 = v5;
    v8 = v6;
    sub_75A0C0();

    v9 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_artworkView];
    sub_75A0C0();
  }
}

uint64_t type metadata accessor for AppPromotionDetailPageContentView()
{
  result = qword_9533B8;
  if (!qword_9533B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3D3D80()
{
  result = sub_75CA40();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

id sub_3D3E44(id result)
{
  v2 = v1[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_displayMode];
  v1[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_displayMode] = result & 1;
  if (v2 != (result & 1))
  {
    sub_3D2AC4();

    return [v1 setNeedsLayout];
  }

  return result;
}

id sub_3D3EA8(char *a1)
{
  [*&a1[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_learnMoreButton] setNeedsUpdateConfiguration];
  sub_3D2AC4();
  sub_3D1780();
  sub_3D3018();
  sub_3D320C();

  return [a1 setNeedsLayout];
}

uint64_t sub_3D3F0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v146 = a2;
  v5 = sub_BD88(&unk_944DF0);
  __chkstk_darwin(v5 - 8);
  v132 = &v117 - v6;
  v131 = sub_7623A0();
  v128 = *(v131 - 8);
  __chkstk_darwin(v131);
  v129 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_BD88(&unk_9457F0);
  v141 = *(v144 - 8);
  __chkstk_darwin(v144);
  v130 = &v117 - v8;
  v9 = sub_BD88(&unk_9457D0);
  __chkstk_darwin(v9 - 8);
  v135 = &v117 - v10;
  v11 = sub_BD88(&unk_94AC40);
  __chkstk_darwin(v11 - 8);
  v137 = &v117 - v12;
  v13 = sub_BD88(&unk_9457E0);
  __chkstk_darwin(v13 - 8);
  v136 = &v117 - v14;
  v15 = sub_BD88(&qword_9533C8);
  __chkstk_darwin(v15 - 8);
  v142 = &v117 - v16;
  v17 = sub_BD88(&unk_948730);
  __chkstk_darwin(v17 - 8);
  v127 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v145 = &v117 - v20;
  v21 = sub_BD88(&unk_94A780);
  __chkstk_darwin(v21 - 8);
  v147 = &v117 - v22;
  v23 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_promotionKindLabel];
  sub_75B330();
  v24 = sub_769210();

  [v23 setText:v24];

  v25 = sub_75B340();
  sub_268CFC(v25, v26);
  if (qword_93DF38 != -1)
  {
    swift_once();
  }

  v27 = qword_9A04D8;
  v28 = unk_9A04E0;
  v29 = qword_9A04E8;
  v30 = [v2 traitCollection];
  if (sub_769A00())
  {
  }

  else
  {
    v31 = sub_7699D0();

    if (v31)
    {
      v29 = v27;
    }

    else
    {
      v29 = v28;
    }
  }

  v134 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_titleLabel];
  v139 = v29;
  v143 = a1;
  sub_75B350();
  v32 = sub_7658D0();

  v33 = [objc_opt_self() secondaryLabelColor];
  v34 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v32];
  v35 = [v32 length];
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v33;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_2158B8;
  *(v37 + 24) = v36;
  v152 = sub_12944C;
  v153 = v37;
  aBlock = _NSConcreteStackBlock;
  v149 = 1107296256;
  v138 = &v150;
  v150 = sub_2157DC;
  v151 = &unk_890208;
  v38 = v3;
  v39 = _Block_copy(&aBlock);
  v40 = v34;
  v41 = v33;

  [v32 enumerateAttribute:NSStrikethroughStyleAttributeName inRange:0 options:v35 usingBlock:{0, v39}];

  _Block_release(v39);
  v42 = &dword_0 + 1;
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_33;
  }

  v140 = v38;
  v44 = [v38 traitCollection];
  v45 = objc_allocWithZone(NSMutableAttributedString);
  v46 = v139;
  v47 = v139;
  v48 = [v45 initWithAttributedString:v40];
  v49 = [v40 length];
  v50 = swift_allocObject();
  *(v50 + 16) = v46;
  *(v50 + 24) = v44;
  *(v50 + 32) = v48;
  *(v50 + 40) = 1;
  v51 = swift_allocObject();
  *(v51 + 16) = sub_119AC;
  *(v51 + 24) = v50;
  v152 = sub_2636C;
  v153 = v51;
  aBlock = _NSConcreteStackBlock;
  v149 = 1107296256;
  v150 = sub_10C1C;
  v151 = &unk_890280;
  v42 = _Block_copy(&aBlock);
  v38 = v153;
  v52 = v47;
  isEscapingClosureAtFileLocation = v48;

  v53 = v44;

  [v40 enumerateAttributesInRange:0 options:v49 usingBlock:{0x100000, v42}];

  _Block_release(v42);
  v54 = swift_isEscapingClosureAtFileLocation();

  v55 = v140;
  if (v54)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
    goto LABEL_29;
  }

  v133 = v52;
  [v134 setAttributedText:isEscapingClosureAtFileLocation];

  v56 = *&v55[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_detailLabel];
  sub_75B2D0();
  if (v57)
  {
    v58 = sub_769210();
  }

  else
  {
    v58 = 0;
  }

  [v56 setText:v58];

  v59 = *&v55[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_learnMoreButton];
  sub_75B300();
  v60 = sub_769210();

  [v59 setTitle:v60 forState:0];

  v61 = *&v55[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_inlineLearnMoreLabel];
  if (sub_75B2F0())
  {
    v62 = sub_7658D0();
  }

  else
  {
    v62 = 0;
  }

  [v61 setAttributedText:v62];

  v63 = sub_75B360();
  v65 = v64;
  v66 = sub_75B2C0();
  sub_6E4840(v63, v65, v66);

  v67 = [v55 traitCollection];
  v68 = v147;
  v69 = v145;
  if (v67)
  {
    v70 = v67;
    if (sub_7699D0())
    {
      v71 = sub_769A00();

      if (v71)
      {
        v72 = enum case for OfferStyle.infer(_:);
        v73 = sub_758C70();
        v74 = *(v73 - 8);
        (*(v74 + 104))(v68, v72, v73);
        (*(v74 + 56))(v68, 0, 1, v73);
        v69 = v145;
        goto LABEL_22;
      }
    }

    else
    {
    }
  }

  v75 = sub_758C70();
  (*(*(v75 - 8) + 56))(v68, 1, 1, v75);
LABEL_22:
  v76 = *&v55[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_lockupView];
  v77 = sub_75B2E0();
  v78 = sub_BD88(&unk_948740);
  v79 = *(v78 - 8);
  v134 = *(v79 + 56);
  v126 = v79 + 56;
  (v134)(v69, 1, 1, v78);
  v80 = v142;
  sub_75B320();
  v81 = sub_75CA40();
  (*(*(v81 - 8) + 56))(v80, 0, 1, v81);
  sub_757BA0();
  v138 = v77;
  v82 = swift_dynamicCastClass();
  v83 = *&v76[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_iapLockupView];
  v139 = v76;
  if (v82)
  {
    v84 = v82;
    v125 = v78;
    v120 = sub_75BD30();
    v85 = *(v120 - 8);
    v122 = *(v85 + 56);
    v123 = v85 + 56;
    v86 = v136;
    v122(v136, 1, 1, v120);
    v121 = *(v141 + 56);
    v87 = v137;
    v121(v137, 1, 1, v144);
    v88 = v69;
    v89 = sub_765870();
    v90 = *(v89 - 8);
    v118 = *(v90 + 56);
    v119 = v90 + 56;
    v91 = v135;
    v118(v135, 1, 1, v89);
    swift_retain_n();
    sub_4A18A4(v84, v83, v88, v146, 1, 0, v147, v86, v91, v87);
    sub_10A2C(v91, &unk_9457D0);
    v83[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1FD89C();
    [v83 setNeedsLayout];
    sub_10A2C(v87, &unk_94AC40);
    sub_10A2C(v86, &unk_9457E0);
    v92 = *&v139[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_appLockupView];
    v124 = v84;
    v93 = sub_757B90();
    v94 = v146;
    v122(v86, 1, 1, v120);
    v121(v87, 1, 1, v144);
    v118(v91, 1, 1, v89);
    sub_4A18A4(v93, v92, v145, v94, 0, 0, v147, v86, v91, v87);
    sub_10A2C(v91, &unk_9457D0);
    v92[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1FD89C();
    [v92 setNeedsLayout];

    sub_10A2C(v87, &unk_94AC40);
    sub_10A2C(v86, &unk_9457E0);
    v95 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton;
    [*&v92[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton] setAlpha:0.0];
    [*&v92[v95] setUserInteractionEnabled:0];
    [v92 setHidden:1];
    v96 = v138;
    v97 = sub_764EE0();
    if (v97)
    {
    }

    sub_1FC9E8(v97 != 0);
    v98 = *&v92[v95];
    v99 = sub_764EC0();

    v100 = sub_764DB0();

    v101 = v127;
    (v134)(v127, 1, 1, v125);
    v102 = v128;
    v103 = v131;
    (*(v128 + 104))(v129, enum case for OfferButtonSubtitlePosition.below(_:), v131);
    (*(v102 + 56))(v132, 1, 1, v103);
    sub_3D6D04(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition);
    v104 = v130;
    sub_760940();
    sub_1DFEBC(v99, v100, 0, v101, v104, v94, 0, 0);

    (*(v141 + 8))(v104, v144);
    sub_10A2C(v101, &unk_948730);
    v105 = v139;
    sub_59D3B4(v96, v139);

    v80 = v142;
    sub_3D9820(v105, v142);
    v69 = v145;
  }

  else
  {
    [v83 setHidden:1];
    v106 = *&v76[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_appLockupView];
    v107 = sub_75BD30();
    v108 = v136;
    (*(*(v107 - 8) + 56))(v136, 1, 1, v107);
    v109 = v137;
    (*(v141 + 56))(v137, 1, 1, v144);
    v110 = sub_765870();
    v111 = v135;
    (*(*(v110 - 8) + 56))(v135, 1, 1, v110);
    sub_4A18A4(v138, v106, v69, v146, 0, 0, v68, v108, v111, v109);
    sub_10A2C(v111, &unk_9457D0);
    v106[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1FD89C();
    [v106 setNeedsLayout];
    sub_10A2C(v109, &unk_94AC40);
    v112 = v108;
    v113 = v139;
    sub_10A2C(v112, &unk_9457E0);
    sub_3D9820(v113, v80);
  }

  sub_10A2C(v80, &qword_9533C8);
  sub_10A2C(v69, &unk_948730);
  sub_75A110();
  sub_768860();
  isEscapingClosureAtFileLocation = aBlock;
  if (!aBlock)
  {
    v42 = v133;
    v38 = v147;
    goto LABEL_31;
  }

  v42 = v133;
  v38 = v147;
  if (qword_93CFA8 != -1)
  {
    goto LABEL_34;
  }

LABEL_29:
  v114 = sub_75CF00();
  sub_BE38(v114, qword_99D870);
  sub_75CDD0();
  v115 = sub_75B2E0();
  sub_3D70A4(v115, isEscapingClosureAtFileLocation);

LABEL_31:
  sub_3D3018();

  return sub_10A2C(v38, &unk_94A780);
}

uint64_t sub_3D5290()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3D52D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_3D52FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v123 = a3;
  v134 = a2;
  v6 = sub_BD88(&unk_944DF0);
  __chkstk_darwin(v6 - 8);
  v129 = v114 - v7;
  v128 = sub_7623A0();
  v125 = *(v128 - 8);
  __chkstk_darwin(v128);
  v126 = v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_BD88(&unk_9457F0);
  v138 = *(v141 - 8);
  __chkstk_darwin(v141);
  v127 = v114 - v9;
  v10 = sub_BD88(&unk_9457D0);
  __chkstk_darwin(v10 - 8);
  v131 = v114 - v11;
  v12 = sub_BD88(&unk_94AC40);
  __chkstk_darwin(v12 - 8);
  v133 = v114 - v13;
  v14 = sub_BD88(&unk_9457E0);
  __chkstk_darwin(v14 - 8);
  v132 = v114 - v15;
  v16 = sub_BD88(&qword_9533C8);
  __chkstk_darwin(v16 - 8);
  v139 = v114 - v17;
  v18 = sub_BD88(&unk_948730);
  __chkstk_darwin(v18 - 8);
  v124 = v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v114 - v21;
  v23 = sub_BD88(&unk_94A780);
  __chkstk_darwin(v23 - 8);
  v25 = v114 - v24;
  v26 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_promotionKindLabel];
  sub_765830();
  v27 = sub_769210();

  [v26 setText:v27];

  v28 = sub_765820();
  sub_268CFC(v28, v29);
  if (qword_93DF38 != -1)
  {
    swift_once();
  }

  v30 = qword_9A04D8;
  v31 = unk_9A04E0;
  v32 = qword_9A04E8;
  v33 = [v3 traitCollection];
  v34 = sub_769A00();
  v142 = v25;
  v143 = v22;
  if (v34)
  {
  }

  else
  {
    v35 = sub_7699D0();

    if (v35)
    {
      v32 = v30;
    }

    else
    {
      v32 = v31;
    }
  }

  v130 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_titleLabel];
  v136 = v32;
  v140 = a1;
  sub_765840();
  v36 = sub_7658D0();

  v37 = [objc_opt_self() secondaryLabelColor];
  v38 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v36];
  v39 = [v36 length];
  v40 = swift_allocObject();
  *(v40 + 16) = v38;
  *(v40 + 24) = v37;
  v41 = swift_allocObject();
  v41[2] = sub_3D6D58;
  v41[3] = v40;
  v148 = sub_3D6D5C;
  v149 = v41;
  aBlock = _NSConcreteStackBlock;
  v145 = 1107296256;
  v135 = &v146;
  v146 = sub_2157DC;
  v147 = &unk_8902F8;
  v42 = v4;
  v43 = _Block_copy(&aBlock);
  v44 = v38;
  v45 = v37;

  [v36 enumerateAttribute:NSStrikethroughStyleAttributeName inRange:0 options:v39 usingBlock:{0, v43}];

  _Block_release(v43);
  v46 = &dword_0 + 1;
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_32;
  }

  v137 = v42;
  v48 = [v42 traitCollection];
  v49 = objc_allocWithZone(NSMutableAttributedString);
  v50 = v136;
  v51 = v136;
  v52 = [v49 initWithAttributedString:v44];
  v41 = [v44 length];
  v53 = swift_allocObject();
  *(v53 + 16) = v50;
  *(v53 + 24) = v48;
  *(v53 + 32) = v52;
  *(v53 + 40) = 1;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_266A8;
  *(v54 + 24) = v53;
  v148 = sub_26694;
  v149 = v54;
  aBlock = _NSConcreteStackBlock;
  v145 = 1107296256;
  v146 = sub_10C1C;
  v147 = &unk_890370;
  v46 = _Block_copy(&aBlock);
  v55 = v51;
  isEscapingClosureAtFileLocation = v52;

  v56 = v48;

  [v44 enumerateAttributesInRange:0 options:v41 usingBlock:{0x100000, v46}];

  v135 = v55;
  _Block_release(v46);
  v57 = swift_isEscapingClosureAtFileLocation();

  v58 = v137;
  if (v57)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  [v130 setAttributedText:isEscapingClosureAtFileLocation];

  v59 = *&v58[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_detailLabel];
  sub_7657E0();
  if (v60)
  {
    v61 = sub_769210();
  }

  else
  {
    v61 = 0;
  }

  v62 = v142;
  [v59 setText:v61];

  v63 = [v58 traitCollection];
  if (v63)
  {
    v64 = v63;
    if (sub_7699D0())
    {
      v65 = sub_769A00();

      if (v65)
      {
        v66 = enum case for OfferStyle.infer(_:);
        v67 = sub_758C70();
        v68 = *(v67 - 8);
        (*(v68 + 104))(v62, v66, v67);
        v69 = 1;
        (*(v68 + 56))(v62, 0, 1, v67);
        goto LABEL_19;
      }
    }

    else
    {
    }
  }

  v70 = sub_758C70();
  (*(*(v70 - 8) + 56))(v62, 1, 1, v70);
  v69 = 0;
LABEL_19:
  v71 = *&v58[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_lockupView];
  v72 = sub_7657F0();
  v73 = sub_BD88(&unk_948740);
  v74 = *(v73 - 8);
  v75 = *(v74 + 56);
  v130 = (v74 + 56);
  v75(v143, 1, 1, v73);
  if (v69)
  {
    v76 = sub_75CA40();
    v77 = v139;
    (*(*(v76 - 8) + 56))(v139, 1, 1, v76);
  }

  else
  {
    v77 = v139;
    sub_3D65B8(v123, v139);
  }

  sub_757BA0();
  v78 = swift_dynamicCastClass();
  v79 = *&v71[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_iapLockupView];
  v136 = v71;
  if (v78)
  {
    v122 = v75;
    v123 = v73;
    v80 = v78;
    v117 = sub_75BD30();
    v81 = *(v117 - 8);
    v116 = *(v81 + 56);
    v118 = v81 + 56;
    v82 = v143;
    v83 = v132;
    v116(v132, 1, 1, v117);
    v115 = *(v138 + 56);
    v84 = v133;
    v115(v133, 1, 1, v141);
    v85 = sub_765870();
    v86 = *(v85 - 8);
    v114[0] = *(v86 + 56);
    v114[1] = v86 + 56;
    v87 = v131;
    (v114[0])(v131, 1, 1, v85);
    swift_retain_n();
    v88 = v134;
    sub_4A18A4(v80, v79, v82, v134, 1, 0, v142, v83, v87, v84);
    sub_10A2C(v87, &unk_9457D0);
    v79[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    v119 = v72;
    sub_1FD89C();
    v120 = v79;
    [v79 setNeedsLayout];
    sub_10A2C(v84, &unk_94AC40);
    sub_10A2C(v83, &unk_9457E0);
    v89 = *&v136[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_appLockupView];
    v121 = v80;
    v90 = sub_757B90();
    v116(v83, 1, 1, v117);
    v115(v84, 1, 1, v141);
    v91 = v88;
    (v114[0])(v87, 1, 1, v85);
    sub_4A18A4(v90, v89, v82, v88, 0, 0, v142, v83, v87, v84);
    sub_10A2C(v87, &unk_9457D0);
    v89[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1FD89C();
    [v89 setNeedsLayout];

    sub_10A2C(v84, &unk_94AC40);
    sub_10A2C(v83, &unk_9457E0);
    v92 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton;
    [*&v89[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton] setAlpha:0.0];
    [*&v89[v92] setUserInteractionEnabled:0];
    [v89 setHidden:1];
    v93 = v119;
    v94 = sub_764EE0();
    if (v94)
    {
    }

    sub_1FC9E8(v94 != 0);
    v95 = *&v89[v92];
    v96 = sub_764EC0();

    v97 = sub_764DB0();

    v98 = v124;
    v122(v124, 1, 1, v123);
    v99 = v125;
    v100 = v128;
    (*(v125 + 104))(v126, enum case for OfferButtonSubtitlePosition.below(_:), v128);
    (*(v99 + 56))(v129, 1, 1, v100);
    sub_3D6D04(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition);
    v101 = v127;
    sub_760940();
    sub_1DFEBC(v96, v97, 0, v98, v101, v91, 0, 0);

    (*(v138 + 8))(v101, v141);
    sub_10A2C(v98, &unk_948730);
    v102 = v136;
    sub_59D3B4(v93, v136);

    v77 = v139;
    sub_3D9820(v102, v139);
    v41 = v142;
  }

  else
  {
    [v79 setHidden:1];
    v103 = *&v71[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_appLockupView];
    v104 = sub_75BD30();
    v41 = v62;
    v105 = v132;
    (*(*(v104 - 8) + 56))(v132, 1, 1, v104);
    v106 = v133;
    (*(v138 + 56))(v133, 1, 1, v141);
    v107 = sub_765870();
    v108 = v131;
    (*(*(v107 - 8) + 56))(v131, 1, 1, v107);
    sub_4A18A4(v72, v103, v143, v134, 0, 0, v62, v105, v108, v106);
    sub_10A2C(v108, &unk_9457D0);
    v103[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1FD89C();
    [v103 setNeedsLayout];
    sub_10A2C(v106, &unk_94AC40);
    v109 = v105;
    v110 = v136;
    sub_10A2C(v109, &unk_9457E0);
    sub_3D9820(v110, v77);
  }

  sub_10A2C(v77, &qword_9533C8);
  sub_10A2C(v143, &unk_948730);
  sub_75A110();
  sub_768860();
  isEscapingClosureAtFileLocation = aBlock;
  v46 = v135;
  if (aBlock)
  {
    if (qword_93CFA8 == -1)
    {
LABEL_29:
      v111 = sub_75CF00();
      sub_BE38(v111, qword_99D870);
      sub_75CDD0();
      v112 = sub_7657F0();
      sub_3D70A4(v112, isEscapingClosureAtFileLocation);

      goto LABEL_30;
    }

LABEL_33:
    swift_once();
    goto LABEL_29;
  }

LABEL_30:
  sub_3D3018();

  return sub_10A2C(v41, &unk_94A780);
}

uint64_t sub_3D65B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_9533C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_3D6628()
{
  result = qword_94DC50;
  if (!qword_94DC50)
  {
    sub_133D8(&unk_945390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94DC50);
  }

  return result;
}

uint64_t sub_3D66E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_941EB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_3D6800()
{
  v1 = sub_760AD0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v5 - 8);
  v7 = v39 - v6;
  v8 = OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_primaryContent;
  v9 = v0;
  *(v0 + v8) = [objc_allocWithZone(type metadata accessor for AppPromotionScrollableContentContainerView()) init];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_secondaryContent;
  *(v9 + v10) = [objc_allocWithZone(UIView) init];
  v11 = v9;
  v12 = OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_availabilityLabelView;
  type metadata accessor for AppPromotionFormattedDateView();
  *(v9 + v12) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v45 = OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_promotionKindLabel;
  v13 = sub_7666D0();
  v14 = *(v13 - 8);
  v46 = *(v14 + 56);
  v15 = v14 + 56;
  v44 = v13;
  v46(v7, 1, 1, v13);
  v43 = v15;
  v16 = enum case for DirectionalTextAlignment.none(_:);
  v40 = *(v2 + 104);
  v17 = v4;
  v41 = enum case for DirectionalTextAlignment.none(_:);
  v47 = v1;
  v40(v4, enum case for DirectionalTextAlignment.none(_:), v1);
  v18 = sub_75BB20();
  v42 = v18;
  v19 = objc_allocWithZone(v18);
  *(v11 + v45) = sub_75BB10();
  v45 = OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_titleLabel;
  v20 = v13;
  v21 = v46;
  v46(v7, 1, 1, v20);
  v22 = v16;
  v23 = v40;
  v39[1] = v2 + 104;
  v40(v17, v22, v1);
  v24 = objc_allocWithZone(v18);
  *(v11 + v45) = sub_75BB10();
  v25 = OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_subtitleView;
  v26 = objc_allocWithZone(type metadata accessor for AppPromotionSubtitleView());
  *(v11 + v25) = sub_6E5048(1);
  v45 = OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_detailLabel;
  v27 = v44;
  v21(v7, 1, 1, v44);
  v28 = v41;
  v23(v17, v41, v47);
  v29 = v42;
  v30 = objc_allocWithZone(v42);
  *(v11 + v45) = sub_75BB10();
  v31 = OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_inlineLearnMoreLabel;
  v46(v7, 1, 1, v27);
  v23(v17, v28, v47);
  v32 = objc_allocWithZone(v29);
  *(v11 + v31) = sub_75BB10();
  v33 = OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_learnMoreButton;
  *(v11 + v33) = [objc_allocWithZone(UIButton) init];
  v34 = OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_separatorView;
  type metadata accessor for SeparatorView();
  *(v11 + v34) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v35 = OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_lockupView;
  type metadata accessor for SubscriptionLockupView();
  *(v11 + v35) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v11 + OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_haveFlashedScrollIndicators) = 0;
  *(v11 + OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_learnMoreButtonAction) = 0;
  v36 = OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_mediaOverlayStyle;
  v37 = enum case for MediaOverlayStyle.matchSystem(_:);
  v38 = sub_75CA40();
  (*(*(v38 - 8) + 104))(v11 + v36, v37, v38);
  sub_76A840();
  __break(1u);
}

uint64_t sub_3D6D04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_3D6D80(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_3D6DD4()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_iapLockupView);
  [v1 setHidden:0];
  v20 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_appLockupView);
  [v2 setHidden:0];
  v3 = [v1 subviews];
  sub_BE70(0, &qword_93E550);
  v4 = sub_769460();

  v21 = v2;
  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = sub_76A770();
      }

      else
      {
        if (v6 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_12;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      [v7 setHidden:0];
      [v8 setAlpha:1.0];

      ++v6;
      if (v9 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v10 = [v2 subviews];
  v11 = sub_769460();

  if (v11 >> 62)
  {
    goto LABEL_26;
  }

  for (j = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)); j; j = sub_76A860())
  {
    v13 = 0;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = sub_76A770();
      }

      else
      {
        if (v13 >= *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_25;
        }

        v14 = *(v11 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      [v14 setHidden:0];
      [v15 setAlpha:1.0];

      ++v13;
      if (v16 == j)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:

  v17 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton;
  [*&v21[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton] setHidden:0];
  [*&v21[v17] setUserInteractionEnabled:1];
  v18 = OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_subscriptionLockupPresenter;
  swift_beginAccess();
  *(v20 + v18) = 0;
}

void sub_3D70A4(void (*a1)(char *, uint64_t), uint64_t a2)
{
  v5 = sub_7652D0();
  __chkstk_darwin(v5 - 8);
  v72 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_765240();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_75CF00();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757BA0();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = v15;
    v68 = v2;
    v69 = v8;
    v73 = v7;
    v17 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_iapLockupView);
    v18 = *(v17 + OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_inAppPurchaseIcon);
    v70 = a1;
    if (v18)
    {
      v19 = v18;

      sub_6A9BFC(v16, v18, a2);
    }

    else
    {
      v38 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_inAppPurchaseIcon;

      sub_757B90();
      v39 = sub_764EE0();

      if (v39)
      {
        v71 = a2;
        v40 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
        swift_beginAccess();
        (*(v12 + 16))(v14, v17 + v40, v11);
        sub_75CDD0();
        (*(v12 + 8))(v14, v11);
        sub_765250();
        sub_765210();
        v65 = *(v69 + 8);
        v66 = v69 + 8;
        v65(v10, v73);
        v67 = sub_765330();
        v64 = v38;
        v41 = *(v17 + v38);
        if (v41)
        {
          v42 = (v41 + OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_artworkView);
        }

        else
        {
          v42 = (v17 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
        }

        v43 = *v42;
        sub_7652E0();
        sub_7591B0();
        [v43 setContentMode:sub_765140()];
        sub_75DEF0();
        sub_7591F0();
        if (!sub_7651A0())
        {
          sub_BE70(0, &qword_93E540);
          sub_76A030();
        }

        sub_759070();

        v44 = *(v17 + v64);
        if (v44)
        {
          v45 = (v44 + OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_artworkView);
        }

        else
        {
          v45 = (v17 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
        }

        v46 = *v45;
        sub_765250();
        v47 = sub_765210();
        v65(v10, v73);
        [v46 setContentMode:v47];

        v48 = *(v17 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
        sub_759210();
        sub_3DA240(&qword_945810, &type metadata accessor for ArtworkView);
        v49 = v48;
        a2 = v71;
        sub_75A050();
      }
    }

    sub_757B90();
    v50 = sub_764EE0();

    if (v50)
    {
      v71 = a2;
      v51 = *(v68 + OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_appLockupView);
      v52 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
      swift_beginAccess();
      (*(v12 + 16))(v14, v51 + v52, v11);
      sub_75CDD0();
      (*(v12 + 8))(v14, v11);
      sub_765250();
      sub_765210();
      v53 = v73;
      v69 = *(v69 + 8);
      (v69)(v10, v73);
      sub_765330();
      v54 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_inAppPurchaseIcon;
      v55 = *(v51 + OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_inAppPurchaseIcon);
      if (v55)
      {
        v56 = (v55 + OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_artworkView);
      }

      else
      {
        v56 = (v51 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
      }

      v57 = *v56;
      sub_7652E0();
      sub_7591B0();
      [v57 setContentMode:sub_765140()];
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_BE70(0, &qword_93E540);
        sub_76A030();
      }

      sub_759070();

      v58 = *(v51 + v54);
      if (v58)
      {
        v59 = (v58 + OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_artworkView);
      }

      else
      {
        v59 = (v51 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
      }

      v60 = *v59;
      sub_765250();
      v61 = sub_765210();
      (v69)(v10, v53);
      [v60 setContentMode:v61];

      v62 = *(v51 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
      sub_759210();
      sub_3DA240(&qword_945810, &type metadata accessor for ArtworkView);
      v63 = v62;
      sub_75A050();
    }
  }

  else if (sub_764EE0())
  {
    v71 = a2;
    v20 = v8;
    v21 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_appLockupView);
    v22 = v20;
    v23 = v7;
    v24 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
    swift_beginAccess();
    (*(v12 + 16))(v14, v21 + v24, v11);
    sub_75CDD0();
    (*(v12 + 8))(v14, v11);
    sub_765250();
    sub_765210();
    v25 = *(v22 + 8);
    v73 = v23;
    v70 = v25;
    v25(v10, v23);
    sub_765330();
    v26 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_inAppPurchaseIcon;
    v27 = *(v21 + OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_inAppPurchaseIcon);
    if (v27)
    {
      v28 = (v27 + OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_artworkView);
    }

    else
    {
      v28 = (v21 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
    }

    v29 = *v28;
    sub_7652E0();
    sub_7591B0();
    [v29 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_BE70(0, &qword_93E540);
      sub_76A030();
    }

    sub_759070();

    v30 = *(v21 + v26);
    if (v30)
    {
      v31 = (v30 + OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_artworkView);
    }

    else
    {
      v31 = (v21 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
    }

    v32 = *v31;
    sub_765250();
    v33 = sub_765210();
    v70(v10, v73);
    [v32 setContentMode:v33];

    v34 = *(v21 + v26);
    if (v34)
    {
      v35 = (v34 + OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_artworkView);
    }

    else
    {
      v35 = (v21 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
    }

    v36 = *v35;
    sub_759210();
    sub_3DA240(&qword_945810, &type metadata accessor for ArtworkView);
    v37 = v36;
    sub_75A050();
  }
}

uint64_t sub_3D7AEC()
{
  v0 = sub_75CF00();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_161DC(v4, qword_99D870);
  sub_BE38(v0, qword_99D870);
  if (qword_93C668 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v0, qword_99B898);
  (*(v1 + 16))(v3, v5, v0);
  sub_765470();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_3D7C50(uint64_t a1)
{
  v2 = sub_7664A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75CDE0();
  v46 = a1;
  sub_75CE20();
  if (qword_93D588 != -1)
  {
    swift_once();
  }

  v6 = sub_7666D0();
  v7 = sub_BE38(v6, qword_99E8A8);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v9(v5, v7, v6);
  v11 = enum case for FontSource.useCase(_:);
  v12 = v3[13];
  v51 = v3 + 13;
  v53 = v12;
  v12(v5, enum case for FontSource.useCase(_:), v2);
  v50 = sub_766CA0();
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_B1B4(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v13 = sub_B1B4(v54);
  v14 = v3 + 2;
  v44 = v3[2];
  v44(v13, v5, v2);
  sub_766CB0();
  v15 = v3[1];
  v47 = v3 + 1;
  v49 = v15;
  v15(v5, v2);
  sub_75CE00();
  if (qword_93D590 != -1)
  {
    swift_once();
  }

  v42 = sub_BE38(v6, qword_99E8C0);
  v9(v5, v42, v6);
  v53(v5, v11, v2);
  v45 = v6;
  v16 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_B1B4(v57);
  v52 = v10;
  v48 = v9;
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v17 = sub_B1B4(v54);
  v44(v17, v5, v2);
  sub_766CB0();
  v49(v5, v2);
  sub_75CED0();
  v18 = v42;
  v48(v5, v42, v6);
  HIDWORD(v41) = v11;
  v43 = v14;
  v19 = v53;
  v53(v5, v11, v2);
  v58 = v16;
  v59 = &protocol witness table for StaticDimension;
  sub_B1B4(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v20 = sub_B1B4(v54);
  v21 = v44;
  v44(v20, v5, v2);
  sub_766CB0();
  v22 = v49;
  v49(v5, v2);
  sub_75CEA0();
  v23 = v18;
  v24 = v45;
  v48(v5, v23, v45);
  v19(v5, v11, v2);
  v25 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_B1B4(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v26 = sub_B1B4(v54);
  v21(v26, v5, v2);
  sub_766CB0();
  v22(v5, v2);
  sub_75CE90();
  v48(v5, v42, v24);
  v27 = HIDWORD(v41);
  v53(v5, HIDWORD(v41), v2);
  v58 = v25;
  v59 = &protocol witness table for StaticDimension;
  sub_B1B4(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v28 = sub_B1B4(v54);
  v21(v28, v5, v2);
  sub_766CB0();
  v22(v5, v2);
  sub_75CEF0();
  if (qword_93D5A0 != -1)
  {
    swift_once();
  }

  v29 = v45;
  v30 = sub_BE38(v45, qword_99E8F0);
  v31 = v48;
  v48(v5, v30, v29);
  v53(v5, v27, v2);
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_B1B4(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v32 = sub_B1B4(v54);
  v21(v32, v5, v2);
  sub_766CB0();
  v49(v5, v2);
  sub_75CEE0();
  if (qword_93D598 != -1)
  {
    swift_once();
  }

  v33 = sub_BE38(v29, qword_99E8D8);
  v31(v5, v33, v29);
  v53(v5, v27, v2);
  v34 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_B1B4(v57);
  v35 = v31;
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v36 = sub_B1B4(v54);
  v37 = v44;
  v44(v36, v5, v2);
  sub_766CB0();
  v38 = v49;
  v49(v5, v2);
  sub_75CE60();
  sub_75CE40();
  v35(v5, v33, v45);
  v53(v5, HIDWORD(v41), v2);
  v58 = v34;
  v59 = &protocol witness table for StaticDimension;
  sub_B1B4(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v39 = sub_B1B4(v54);
  v37(v39, v5, v2);
  sub_766CB0();
  v38(v5, v2);
  return sub_75CE50();
}

uint64_t sub_3D85CC()
{
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_lockupTapBlock);
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_lockupTapBlock);
  v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_lockupTapBlock + 8);
  v4 = (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_iapLockupView) + OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_lockupTapBlock);
  v5 = *v4;
  *v4 = v2;
  v4[1] = v3;
  sub_F714(v2);
  sub_F714(v2);
  sub_F704(v5);
  sub_1FDD68();
  sub_F704(v2);
  v6 = *v1;
  v7 = v1[1];
  v8 = (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_appLockupView) + OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_lockupTapBlock);
  v9 = *v8;
  *v8 = *v1;
  v8[1] = v7;
  sub_F714(v6);
  sub_F714(v6);
  sub_F704(v9);
  sub_1FDD68();

  return sub_F704(v6);
}

char *sub_3D86CC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v11 - 8);
  v13 = &v46 - v12;
  v14 = &v5[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_lockupTapBlock];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_subscriptionLockupPresenter] = 0;
  type metadata accessor for SmallLockupView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_iapLockupView] = v16;
  v17 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_appLockupView] = v17;
  v53.receiver = v5;
  v53.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v53, "initWithFrame:", a1, a2, a3, a4);
  v19 = OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_iapLockupView;
  swift_unknownObjectWeakAssign();
  v20 = OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_appLockupView;
  swift_unknownObjectWeakAssign();
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v52.receiver = v18;
  v52.super_class = ObjectType;
  v24 = v18;
  objc_msgSendSuper2(&v52, "setLayoutMargins:", UIEdgeInsetsZero.top, left, bottom, right);
  v25 = *&v18[v19];
  v51.receiver = v24;
  v51.super_class = ObjectType;
  objc_msgSendSuper2(&v51, "layoutMargins");
  [v25 setLayoutMargins:?];
  v26 = *&v18[v20];
  v50.receiver = v24;
  v50.super_class = ObjectType;
  objc_msgSendSuper2(&v50, "layoutMargins");
  [v26 setLayoutMargins:?];
  [v24 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  [*&v18[v19] setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [*(*&v18[v19] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView) setHidden:1];
  v27 = *&v18[v19];
  sub_1FC9E8(1);

  [v24 addSubview:*&v18[v20]];
  v49 = v19;
  [v24 addSubview:*&v18[v19]];
  [*&v18[v20] setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v48 = v24;
  sub_3D8BEC();
  v28 = qword_93D590;
  v29 = *(*&v18[v20] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel);
  if (v28 != -1)
  {
    swift_once();
  }

  v30 = sub_7666D0();
  v31 = sub_BE38(v30, qword_99E8C0);
  v32 = *(v30 - 8);
  v33 = *(v32 + 16);
  v47 = v31;
  v33(v13);
  v34 = *(v32 + 56);
  v34(v13, 0, 1, v30);
  sub_75BA40();

  v35 = *(*&v18[v20] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel);
  v36 = qword_93D598;
  v37 = v35;
  if (v36 != -1)
  {
    swift_once();
  }

  v38 = sub_BE38(v30, qword_99E8D8);
  (v33)(v13, v38, v30);
  v34(v13, 0, 1, v30);
  sub_75BA40();

  v39 = v49;
  v40 = *(*&v18[v49] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel);
  (v33)(v13, v47, v30);
  v34(v13, 0, 1, v30);
  v41 = v40;
  sub_75BA40();

  v42 = *(*&v18[v39] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel);
  (v33)(v13, v38, v30);
  v34(v13, 0, 1, v30);
  v43 = v42;
  sub_75BA40();
  v44 = v48;

  return v44;
}

id sub_3D8BEC()
{
  v1 = v0;
  v2 = sub_75CF00();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 traitCollection];
  v8 = [v7 preferredContentSizeCategory];
  v9 = sub_769B50();

  v10 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_iapLockupView];
  if (v9)
  {
    if (qword_93C4E8 != -1)
    {
      swift_once();
    }

    v11 = sub_BE38(v2, qword_99B3D0);
    v24 = v3[2];
    v24(v6, v11, v2);
    v12 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
    swift_beginAccess();
    v13 = v3[3];
    v13(&v10[v12], v6, v2);
    swift_endAccess();
    [v10 setNeedsLayout];
    v14 = v3[1];
    v14(v6, v2);
    [v10 setLayoutMargins:{16.0, 0.0, 16.0, 0.0}];
    v15 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_appLockupView];
    v24(v6, v11, v2);
    v16 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
    swift_beginAccess();
    v13(&v15[v16], v6, v2);
    swift_endAccess();
    [v15 setNeedsLayout];
    v14(v6, v2);
    return [v15 setLayoutMargins:{16.0, 0.0, 16.0, 0.0}];
  }

  else
  {
    if (qword_93C4E0 != -1)
    {
      swift_once();
    }

    v18 = sub_BE38(v2, qword_99B3B8);
    v24 = v3[2];
    v24(v6, v18, v2);
    v19 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
    swift_beginAccess();
    v20 = v3[3];
    v20(&v10[v19], v6, v2);
    swift_endAccess();
    [v10 setNeedsLayout];
    v21 = v3[1];
    v21(v6, v2);
    [v10 setLayoutMargins:{4.0, 0.0, 4.0, 0.0}];
    v22 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_appLockupView];
    v24(v6, v18, v2);
    v23 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
    swift_beginAccess();
    v20(&v22[v23], v6, v2);
    swift_endAccess();
    [v22 setNeedsLayout];
    v21(v6, v2);
    return [v22 setLayoutMargins:{4.0, 0.0, 4.0, 0.0}];
  }
}

void sub_3D928C(char a1, char a2)
{
  if ((a1 & 1) == 0)
  {
    v3 = v2;
    LOBYTE(v4) = a2;
    v5 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_iapLockupView);
    if (([v5 isHidden] & 1) == 0)
    {
      v6 = [v5 subviews];
      sub_BE70(0, &qword_93E550);
      v7 = sub_769460();

      aBlock = _swiftEmptyArrayStorage;
      if (v7 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
      {
        v32 = v4;
        v9 = 0;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v10 = sub_76A770();
          }

          else
          {
            if (v9 >= *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_17;
            }

            v10 = *(v7 + 8 * v9 + 32);
          }

          v11 = v10;
          v4 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          type metadata accessor for OfferButton();
          if (swift_dynamicCastClass())
          {
          }

          else
          {
            sub_76A7A0();
            sub_76A7D0();
            sub_76A7E0();
            sub_76A7B0();
          }

          ++v9;
          if (v4 == i)
          {
            v12 = aBlock;
            LOBYTE(v4) = v32;
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

      v12 = _swiftEmptyArrayStorage;
LABEL_20:

      sub_BD88(&unk_93F5C0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_77D9F0;
      v14 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_appLockupView);
      *(v13 + 32) = v14;
      if (v4)
      {
        v15 = v14;
        if ((v13 & 0xC000000000000001) == 0)
        {
          if (!*(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            return;
          }

          v16 = v15;
          goto LABEL_24;
        }

LABEL_52:
        v16 = sub_76A770();
LABEL_24:
        v17 = v16;
        [v16 setHidden:0];

        v18 = objc_opt_self();
        v19 = swift_allocObject();
        *(v19 + 16) = v12;
        *(v19 + 24) = v13;
        v37 = sub_11FA9C;
        v38 = v19;
        aBlock = _NSConcreteStackBlock;
        v34 = 1107296256;
        v35 = sub_23F0CC;
        v36 = &unk_8903E8;
        v20 = _Block_copy(&aBlock);

        v21 = swift_allocObject();
        *(v21 + 16) = v12;
        v37 = sub_11FAF4;
        v38 = v21;
        aBlock = _NSConcreteStackBlock;
        v34 = 1107296256;
        v35 = sub_3D6D80;
        v36 = &unk_890438;
        v22 = _Block_copy(&aBlock);

        [v18 animateWithDuration:4 delay:v20 options:v22 animations:0.33 completion:0.0];
        _Block_release(v22);
        _Block_release(v20);
        return;
      }

      if ((v12 & 0x8000000000000000) != 0 || (v12 & 0x4000000000000000) != 0)
      {
        v23 = sub_76A860();
      }

      else
      {
        v23 = v12[2];
      }

      v24 = v14;
      if (v23)
      {
        v25 = 0;
        while (1)
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v26 = sub_76A770();
          }

          else
          {
            if (v25 >= v12[2])
            {
              goto LABEL_50;
            }

            v26 = v12[v25 + 4];
          }

          v27 = v26;
          v28 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          [v26 setAlpha:0.0];
          [v27 setHidden:1];

          ++v25;
          if (v28 == v23)
          {
            goto LABEL_38;
          }
        }

        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

LABEL_38:

      v29 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
      if (v29)
      {
        v12 = 0;
        do
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            v30 = sub_76A770();
          }

          else
          {
            if (v12 >= *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_51;
            }

            v30 = *(v13 + 8 * v12 + 32);
          }

          v31 = v30;
          v12 = (v12 + 1);
          [v30 setAlpha:1.0];
          [v31 setHidden:0];
        }

        while (v29 != v12);
      }
    }
  }
}

void sub_3D9820(uint64_t a1, uint64_t a2)
{
  v4 = sub_75CA40();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v55 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&qword_953430);
  __chkstk_darwin(v7);
  v67 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v52 - v10;
  v12 = sub_BD88(&qword_9533C8);
  __chkstk_darwin(v12 - 8);
  v66 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v65 = &v52 - v15;
  __chkstk_darwin(v16);
  v18 = &v52 - v17;
  v20 = __chkstk_darwin(v19);
  v22 = &v52 - v21;
  v63 = a1;
  v23 = *(*(a1 + OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_appLockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton);
  v24 = v5[13];
  v61 = enum case for MediaOverlayStyle.dark(_:);
  v60 = v24;
  v58 = v5 + 13;
  v24(&v52 - v21, v20);
  v59 = v5[7];
  v57 = v5 + 7;
  v59(v22, 0, 1, v4);
  v62 = v7;
  v25 = *(v7 + 48);
  v64 = a2;
  sub_3D65B8(a2, v11);
  sub_3D65B8(v22, &v11[v25]);
  v26 = v5[6];
  v27 = v26(v11, 1, v4);
  v56 = v5;
  if (v27 != 1)
  {
    sub_3D65B8(v11, v18);
    if (v26(&v11[v25], 1, v4) != 1)
    {
      v32 = v5[4];
      v54 = v26;
      v33 = v55;
      v32(v55, &v11[v25], v4);
      v53 = sub_3DA240(&qword_953438, &type metadata accessor for MediaOverlayStyle);
      v34 = v23;
      v35 = v23;
      LODWORD(v53) = sub_7691C0();
      v36 = v5[1];
      v37 = v33;
      v26 = v54;
      v36(v37, v4);
      sub_10A2C(v22, &qword_9533C8);
      v36(v18, v4);
      v23 = v34;
      sub_10A2C(v11, &qword_9533C8);
      v29 = v65;
      if (v53)
      {
        goto LABEL_9;
      }

LABEL_7:
      sub_BE70(0, &qword_93E540);
      v31 = sub_76A0F0();
      goto LABEL_10;
    }

    v30 = v23;
    sub_10A2C(v22, &qword_9533C8);
    (v5[1])(v18, v4);
LABEL_6:
    sub_10A2C(v11, &qword_953430);
    v29 = v65;
    goto LABEL_7;
  }

  v28 = v23;
  sub_10A2C(v22, &qword_9533C8);
  if (v26(&v11[v25], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_10A2C(v11, &qword_9533C8);
  v29 = v65;
LABEL_9:
  v31 = [objc_opt_self() whiteColor];
LABEL_10:
  v38 = v31;
  [v23 setTintColor:v31];

  v39 = *(*(v63 + OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_iapLockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton);
  v60(v29, v61, v4);
  v59(v29, 0, 1, v4);
  v40 = *(v62 + 48);
  v41 = v67;
  sub_3D65B8(v64, v67);
  sub_3D65B8(v29, v41 + v40);
  if (v26(v41, 1, v4) == 1)
  {
    v42 = v39;
    sub_10A2C(v29, &qword_9533C8);
    if (v26((v41 + v40), 1, v4) == 1)
    {
      sub_10A2C(v41, &qword_9533C8);
LABEL_18:
      v44 = [objc_opt_self() whiteColor];
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  sub_3D65B8(v41, v66);
  if (v26((v41 + v40), 1, v4) == 1)
  {
    v43 = v39;
    sub_10A2C(v29, &qword_9533C8);
    (v56[1])(v66, v4);
LABEL_15:
    sub_10A2C(v41, &qword_953430);
    goto LABEL_16;
  }

  v45 = v66;
  v46 = v55;
  v47 = v56;
  (v56[4])(v55, v41 + v40, v4);
  sub_3DA240(&qword_953438, &type metadata accessor for MediaOverlayStyle);
  v48 = v39;
  v49 = sub_7691C0();
  v50 = v47[1];
  v50(v46, v4);
  sub_10A2C(v29, &qword_9533C8);
  v50(v45, v4);
  sub_10A2C(v41, &qword_9533C8);
  if (v49)
  {
    goto LABEL_18;
  }

LABEL_16:
  sub_BE70(0, &qword_93E540);
  v44 = sub_76A0F0();
LABEL_19:
  v51 = v44;
  [v39 setTintColor:v44];
}

void sub_3D9FE0(double a1, double a2, uint64_t a3, objc_class *a4)
{
  v8 = *v4;
  if (qword_93C668 != -1)
  {
    swift_once();
  }

  v9 = sub_75CF00();
  v10 = sub_BE38(v9, qword_99B898);
  v13.receiver = v8;
  v13.super_class = a4;
  objc_msgSendSuper2(&v13, "layoutMargins");
  sub_1FE8E8(v10, v8, a1, a2, v11, v12);
}

uint64_t sub_3DA0F4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_subscriptionLockupPresenter;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_3DA1B0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3DA1F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_3DA208()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3DA240(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ButtonPlaceholder.__allocating_init(configuration:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider17ButtonPlaceholder____lazy_storage___button) = 0;
  v3 = OBJC_IVAR____TtC18ASMessagesProvider17ButtonPlaceholder_configuration;
  v4 = sub_76A3F0();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

uint64_t ButtonPlaceholder.init(configuration:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider17ButtonPlaceholder____lazy_storage___button) = 0;
  v3 = OBJC_IVAR____TtC18ASMessagesProvider17ButtonPlaceholder_configuration;
  v4 = sub_76A3F0();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t ButtonPlaceholder.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider17ButtonPlaceholder_configuration;
  v4 = sub_76A3F0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id sub_3DA414()
{
  v1 = sub_76A3F0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC18ASMessagesProvider17ButtonPlaceholder____lazy_storage___button;
  v6 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider17ButtonPlaceholder____lazy_storage___button);
  if (v6)
  {
    v7 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider17ButtonPlaceholder____lazy_storage___button);
  }

  else
  {
    sub_3DA82C();
    (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC18ASMessagesProvider17ButtonPlaceholder_configuration, v1);
    v8 = v0;
    v9 = sub_76A400();
    v10 = *(v0 + v5);
    *(v8 + v5) = v9;
    v7 = v9;

    v6 = 0;
  }

  v11 = v6;
  return v7;
}

double ButtonPlaceholder.measure(toFit:with:)()
{
  v0 = sub_3DA414();
  sub_76A200();
  v2 = v1;

  return v2;
}

uint64_t ButtonPlaceholder.deinit()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider17ButtonPlaceholder_configuration;
  v2 = sub_76A3F0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ButtonPlaceholder.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider17ButtonPlaceholder_configuration;
  v2 = sub_76A3F0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double sub_3DA6C8()
{
  v0 = sub_3DA414();
  sub_76A200();
  v2 = v1;

  return v2;
}

uint64_t type metadata accessor for ButtonPlaceholder()
{
  result = qword_953470;
  if (!qword_953470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3DA794()
{
  result = sub_76A3F0();
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

unint64_t sub_3DA82C()
{
  result = qword_960F00;
  if (!qword_960F00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_960F00);
  }

  return result;
}

id sub_3DA878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v45 = a6;
  v41 = a3;
  v8 = sub_BD88(&qword_93FF90);
  __chkstk_darwin(v8 - 8);
  v10 = &v40 - v9;
  v11 = sub_75FA00();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_textLabel];
  sub_764C60();
  sub_75BA70();

  v42 = v6;
  v16 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_separatorView];
  sub_75F9B0();
  sub_3DB28C(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions);
  v43 = a4;
  v17 = sub_76A520();
  v44 = *(v12 + 8);
  v44(v14, v11);
  [v16 setHidden:v17 & 1];
  if ((sub_764C30() & 2) != 0)
  {
    [v15 _setTextColorFollowsTintColor:1];
  }

  else
  {
    [v15 _setTextColorFollowsTintColor:0];
    sub_BE70(0, &qword_93E540);
    v18 = sub_769FD0();
    [v15 setTextColor:v18];
  }

  v19 = v45;
  swift_getObjectType();
  v20 = sub_3DB210(v19);
  v21 = type metadata accessor for Accessory();
  v22 = v42;
  if (v20)
  {
    swift_storeEnumTagMultiPayload();
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  (*(*(v21 - 8) + 56))(v10, v23, 1, v21);
  sub_2512A8(v10, v41);
  sub_10A2C(v10, &qword_93FF90);
  v24 = [v45 traitCollection];
  v25 = [v24 horizontalSizeClass];

  if (v25 == &dword_0 + 1 || (sub_75F9C0(), v26 = sub_76A520(), v44(v14, v11), (v26 & 1) != 0))
  {
    v27 = [v22 contentView];
    [v45 pageMarginInsets];
  }

  else
  {
    v27 = [v22 contentView];
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  [v27 setLayoutMargins:{top, left, bottom, right}];

  v32 = sub_764C70();
  if (v32)
  {

    v33 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_lazilyCreatedArtworkView];
    if (v33 && ([v33 isHidden] & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v34 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_lazilyCreatedArtworkView];
    if (!v34 || [v34 isHidden])
    {
      goto LABEL_18;
    }
  }

  v35 = v32 == 0;
  v36 = sub_24F274();
  [v36 setHidden:v35];

LABEL_18:
  sub_75F9C0();
  v37 = sub_76A520();
  v44(v14, v11);
  v22[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_isVertical] = (v37 & 1) == 0;
  if (v37)
  {
    v38 = 1;
  }

  else
  {
    v38 = 3;
  }

  [v15 setNumberOfLines:v38];
  [v22 setNeedsLayout];
  return [v22 setNeedsLayout];
}

void sub_3DAD70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = objc_allocWithZone(type metadata accessor for SearchAdTransparencyButton());

    sub_24F4AC([v6 init]);
    v7 = OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_searchAdTransparencyButton;
    v8 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_searchAdTransparencyButton];
    if (v8)
    {
      v9 = v8;
      sub_765730();
      sub_764C60();
      v11 = v10;

      if (v11)
      {
        v12 = sub_769210();
      }

      else
      {
        v12 = 0;
      }

      [v9 setTitle:v12 forState:0];

      v15 = *&v3[v7];
      if (v15)
      {
        v16 = swift_allocObject();
        *(v16 + 16) = a2;
        *(v16 + 24) = a1;
        v17 = &v15[qword_95CDB8];
        v18 = *&v15[qword_95CDB8];
        *v17 = sub_3DB578;
        v17[1] = v16;

        v19 = v15;

        sub_F704(v18);
      }
    }

    v3[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_isDisplayingSearchAd] = 1;
    [v3 setNeedsLayout];
  }

  else
  {
    v2[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_isDisplayingSearchAd] = 0;
    v13 = OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_searchAdTransparencyButton;
    v14 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_searchAdTransparencyButton];
    if (v14)
    {
      [v14 removeFromSuperview];
      v14 = *&v3[v13];
    }

    *&v3[v13] = 0;
  }
}

uint64_t sub_3DAF70(uint64_t a1)
{
  v2 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_BD88(&unk_93F630);
  sub_768860();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10A2C(v4, &unk_93F980);
  }

  v8 = sub_765730();
  sub_32A6C0(v8, 1, a1, v4);

  return (*(v6 + 8))(v4, v5);
}

void sub_3DB104(int a1, id a2)
{
  v2 = [a2 traitCollection];
  [v2 horizontalSizeClass];
}

BOOL sub_3DB210(void *a1)
{
  if ((sub_764C30() & 4) != 0)
  {
    return 1;
  }

  if ((sub_764C30() & 8) == 0)
  {
    return 0;
  }

  v3 = [a1 traitCollection];
  v4 = [v3 horizontalSizeClass];

  return v4 == &dword_0 + 1;
}

uint64_t sub_3DB28C(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_3DB2D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_getObjectType();
  v5 = [a4 traitCollection];
  v6 = [v5 horizontalSizeClass];

  if (v6 == &dword_0 + 1)
  {
    [a4 pageMarginInsets];
  }

  sub_764C80();

  sub_BD88(&unk_952540);
  if (swift_dynamicCast())
  {
    sub_B170(&v17, *(&v18 + 1));
    v7 = sub_762A20();
    sub_BEB8(&v17);
  }

  else
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    sub_10A2C(&v17, &unk_9513E0);
    v7 = 0;
  }

  v8 = sub_764C60();
  v10 = v9;
  v11 = sub_764C70();
  if (v11)
  {
  }

  v12 = sub_3DB210(a4);
  if (qword_93C768 != -1)
  {
    swift_once();
  }

  v13 = sub_759B00();
  v14 = sub_BE38(v13, qword_99BBB0);
  v15 = sub_251BC4(v14, a4, v8, v10, v11 != 0, v12, v7 & 1);

  return v15;
}

uint64_t sub_3DB538()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_3DB580(uint64_t a1, uint64_t a2, void *a3)
{
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  if (qword_93C768 != -1)
  {
    swift_once();
  }

  v5 = sub_759B00();
  v6 = sub_BE38(v5, qword_99BBB0);
  v7 = sub_2524B8(v6, a3);
  v9 = v8;
  v10 = objc_opt_self();
  v11 = [v10 absoluteDimension:v7];
  v12 = [v10 absoluteDimension:v9];
  v13 = objc_opt_self();
  v14 = [v13 sizeWithWidthDimension:v11 heightDimension:v12];

  v15 = [objc_opt_self() itemWithLayoutSize:v14];
  v16 = v9 * a1;
  v17 = [v10 absoluteDimension:v7];
  v18 = [v10 absoluteDimension:v16];
  v19 = [v13 sizeWithWidthDimension:v17 heightDimension:v18];

  v20 = objc_opt_self();
  sub_BD88(&unk_93F5C0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_77D9F0;
  *(v21 + 32) = v15;
  sub_BE70(0, &qword_957F90);
  v22 = v15;
  isa = sub_769450().super.isa;

  v24 = [v20 verticalGroupWithLayoutSize:v19 subitems:isa];

  [v24 setContentInsets:{0.0, 0.0, 0.0, 0.0}];
  v25 = [objc_opt_self() fixedSpacing:0.0];
  [v24 setInterItemSpacing:v25];

  return v24;
}

uint64_t sub_3DB86C@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_BD88(&qword_944E50);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - v6;
  v8 = sub_75D6B0();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 traitCollection];
  sub_278FB0(v12);

  sub_75D680();
  (*(v9 + 8))(v12, v8);
  v16[1] = a1;
  sub_7592B0();
  (*(v5 + 8))(v7, v4);
  sub_7601D0();
  v14 = sub_7601F0();
  return (*(*(v14 - 8) + 56))(a2, 0, 1, v14);
}

uint64_t sub_3DBA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v165 = a6;
  v160 = a3;
  ObjectType = swift_getObjectType();
  v10 = sub_BD88(&unk_9535C0);
  __chkstk_darwin(v10 - 8);
  v162 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v139 - v13;
  v15 = sub_764CF0();
  __chkstk_darwin(v15 - 8);
  v143 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_75B490();
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v145 = &v139 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v144 = &v139 - v19;
  v20 = sub_BD88(&unk_944DF0);
  __chkstk_darwin(v20 - 8);
  v159 = &v139 - v21;
  v157 = sub_7623A0();
  v153 = *(v157 - 8);
  __chkstk_darwin(v157);
  v154 = &v139 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_BD88(&unk_9457F0);
  v156 = *(v158 - 8);
  __chkstk_darwin(v158);
  v155 = &v139 - v23;
  v24 = sub_BD88(&unk_944E00);
  __chkstk_darwin(v24 - 8);
  v151 = &v139 - v25;
  v150 = sub_763750();
  v148 = *(v150 - 8);
  __chkstk_darwin(v150);
  v149 = &v139 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_BD88(&unk_948730);
  __chkstk_darwin(v27 - 8);
  v152 = &v139 - v28;
  v142 = sub_76A920();
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v140 = &v139 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_BD88(&qword_94C3F0);
  __chkstk_darwin(v30 - 8);
  v32 = &v139 - v31;
  v33 = sub_75FA00();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v139 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_767510();
  v163 = *(v37 - 8);
  v164 = v37;
  __chkstk_darwin(v37);
  v166 = &v139 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = a1;
  v39 = sub_764F30();
  v161 = v14;
  if (v40)
  {
    v41 = HIBYTE(v40) & 0xF;
    if ((v40 & 0x2000000000000000) == 0)
    {
      v41 = v39 & 0xFFFFFFFFFFFFLL;
    }

    if (v41)
    {
      v139 = a4;
      sub_396E8();
      v42 = sub_769FD0();
      sub_27B2DC(1, v42);

      v43 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_headingLabel];
      if (v43)
      {
        v44 = v43;
        v45 = sub_769210();

        [v44 setText:v45];
      }

      else
      {
      }

      v47 = v166;
      goto LABEL_12;
    }
  }

  v46 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_headingLabel];
  v47 = v166;
  if (v46)
  {
    [v46 setHidden:1];
  }

LABEL_12:
  sub_27A378(v165, v47);
  sub_75F9B0();
  sub_3DD470(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions);
  v48 = sub_76A520();
  v49 = *(v34 + 8);
  v49(v36, v33);
  ObjectType = v7;
  if (v48)
  {
    (*(v163 + 56))(v32, 1, 1, v164);
    v50 = OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_separator;
    swift_beginAccess();
    sub_84734(v32, &v7[v50]);
    swift_endAccess();
    sub_27A7C4();
    sub_10A2C(v32, &qword_94C3F0);
    sub_75F9C0();
    LOBYTE(v50) = sub_76A520();
    v49(v36, v33);
    v51 = [v7 contentView];
    v52 = v51;
    if (v50)
    {
      [v51 layoutMargins];
      [v52 setLayoutMargins:?];
    }

    else
    {
      sub_7674A0();
      sub_B170(&v169, *(&v170 + 1));
      v59 = v140;
      sub_33964();
      sub_766700();
      (*(v141 + 8))(v59, v142);
      [v52 layoutMargins];
      [v52 setLayoutMargins:?];

      sub_BEB8(&v169);
    }

    v58 = v160;
    v57 = ObjectType;
  }

  else
  {
    v54 = v163;
    v53 = v164;
    (*(v163 + 16))(v32, v47, v164);
    (*(v54 + 56))(v32, 0, 1, v53);
    v55 = OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_separator;
    swift_beginAccess();
    sub_84734(v32, &v7[v55]);
    swift_endAccess();
    sub_27A7C4();
    sub_10A2C(v32, &qword_94C3F0);
    v56 = [v7 contentView];
    [v56 layoutMargins];
    [v56 setLayoutMargins:?];

    v57 = v7;
    v58 = v160;
  }

  v60 = *&v57[OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_titleLabel];
  sub_764EF0();
  if (v61)
  {
    v62 = sub_769210();
  }

  else
  {
    v62 = 0;
  }

  [v60 setText:v62];

  v63 = sub_764EC0();
  v64 = sub_764DB0();
  v65 = v148;
  v66 = v150;
  (*(v148 + 104))(v149, enum case for OfferButtonPresenterViewAlignment.left(_:), v150);
  (*(v65 + 56))(v151, 1, 1, v66);
  sub_3DD470(&unk_944E10, &type metadata accessor for OfferButtonPresenterViewAlignment);
  v67 = v152;
  sub_760940();
  v68 = sub_BD88(&unk_948740);
  (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
  v69 = v153;
  v70 = v157;
  (*(v153 + 104))(v154, enum case for OfferButtonSubtitlePosition.right(_:), v157);
  (*(v69 + 56))(v159, 1, 1, v70);
  sub_3DD470(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition);
  v71 = v155;
  sub_760940();
  sub_1DFEBC(v63, v64, 0, v67, v71, v58, 0, 0);

  (*(v156 + 8))(v71, v158);
  sub_10A2C(v67, &unk_948730);
  if (sub_764EC0())
  {
    v72 = v144;
    sub_75FE40();
    v73 = v146;
    v74 = v145;
    v75 = v147;
    (*(v146 + 104))(v145, enum case for OfferLabelStyle.none(_:), v147);
    sub_3DD470(&unk_9535D0, &type metadata accessor for OfferLabelStyle);
    v76 = sub_7691C0();
    v77 = *(v73 + 8);
    v77(v74, v75);
    v77(v72, v75);
    if ((v76 & 1) == 0)
    {

      sub_75FE80();
      sub_BD88(&unk_944300);
      sub_768900();
      sub_768ED0();
      sub_75A920();
      sub_768ED0();
      sub_75A7D0();

      v80 = sub_75E260();
      swift_allocObject();
      v81 = sub_75E240();
      *(&v170 + 1) = v80;
      *&v169 = v81;
      v82 = OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_offerLabelPresenter;
      v79 = ObjectType;
      swift_beginAccess();

      sub_12C2F8(&v169, &v79[v82]);
      swift_endAccess();
      [*&v79[OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_offerLabel] frame];
      v172.origin.x = 0.0;
      v172.origin.y = 0.0;
      v172.size.width = 0.0;
      v172.size.height = 0.0;
      if (CGRectEqualToRect(v171, v172))
      {
        v83 = objc_opt_self();
        v84 = [v83 areAnimationsEnabled];
        [v83 setAnimationsEnabled:0];
        sub_3DD470(&unk_9535E0, type metadata accessor for MediumLockupCollectionViewCell);
        swift_unknownObjectRetain();
        sub_75E250();
        [v79 layoutIfNeeded];
        [v83 setAnimationsEnabled:v84];
      }

      else
      {
        sub_3DD470(&unk_9535E0, type metadata accessor for MediumLockupCollectionViewCell);
        swift_unknownObjectRetain();
        sub_75E250();
      }

      goto LABEL_29;
    }
  }

  v169 = 0u;
  v170 = 0u;
  v78 = OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_offerLabelPresenter;
  v79 = ObjectType;
  swift_beginAccess();
  sub_12C2F8(&v169, &v79[v78]);
  swift_endAccess();
  sub_3DD084(0, 0);
LABEL_29:
  v85 = v165;
  v86 = OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_headingLabel;
  v87 = *&v79[OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_headingLabel];
  if (v87 && ([v87 isHidden] & 1) == 0 && (v88 = *&v79[v86]) != 0)
  {
    v89 = [v88 hasContent];
  }

  else
  {
    v89 = 0;
  }

  v90 = OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_offerLabelPresenter;
  swift_beginAccess();
  sub_38EE0(&v79[v90], &v169);
  v91 = *(&v170 + 1);
  sub_10A2C(&v169, &unk_93FBD0);
  v92 = [v85 traitCollection];
  v93 = sub_7699D0();

  if (v93)
  {
    v94 = [v85 traitCollection];
    v95 = sub_769A00();

    sub_764DD0();
    if (!v96)
    {
      v98 = v95 ^ 1;
      goto LABEL_51;
    }

    if ((v95 & 1) == 0)
    {
      if (v91)
      {
        v97 = 1;
      }

      else
      {
        v97 = v89;
      }

      v98 = 1;
      if ((v97 & 1) == 0)
      {
LABEL_41:
        sub_27B58C();
        v99 = *&v79[OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_tertiaryTitleLabel];
        if (v99)
        {
          v100 = v99;
          v101 = sub_769210();

          [v100 setText:v101];
        }

        else
        {
        }

        goto LABEL_55;
      }

      goto LABEL_48;
    }
  }

  else
  {
    sub_764DD0();
    if (!v102)
    {
      v98 = 0;
      goto LABEL_51;
    }
  }

  v98 = 0;
  if (v91)
  {
    v103 = v89;
  }

  else
  {
    v103 = 0;
  }

  if ((v103 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_48:

LABEL_51:
  v104 = OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_tertiaryTitleLabel;
  v105 = *&v79[OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_tertiaryTitleLabel];
  if (v105)
  {
    [v105 setHidden:1];
    v106 = *&v79[v104];
    if (v106)
    {
      [v106 setText:0];
    }
  }

LABEL_55:
  v107 = *&v79[OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_subtitleLabel];
  sub_764F70();
  if (v108)
  {
    v109 = sub_769210();
  }

  else
  {
    v109 = 0;
  }

  [v107 setText:v109];

  v110 = OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_tertiaryTitleLabel;
  v111 = *&v79[OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_tertiaryTitleLabel];
  if (!v111 || ([v111 isHidden] & 1) != 0 || (v112 = *&v79[v110]) == 0)
  {
    if (v89)
    {
      if (v91)
      {
        goto LABEL_67;
      }
    }

    else if (!v91)
    {
      v114 = 0;
      goto LABEL_71;
    }

    goto LABEL_69;
  }

  v113 = [v112 hasContent];
  if ((v89 & 1) == 0)
  {
    if (!v91)
    {
      v114 = 0;
      if (v113)
      {
        goto LABEL_92;
      }

LABEL_71:
      v115 = 0;
      goto LABEL_72;
    }

    if (v113)
    {
      v115 = 1;
      v114 = 1;
      goto LABEL_72;
    }

LABEL_69:
    v114 = 1;
    goto LABEL_71;
  }

  if (!v91)
  {
    v114 = 1;
    v115 = 1;
    if (v113)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  if ((v113 & 1) == 0)
  {
LABEL_67:
    v114 = 2;
    goto LABEL_71;
  }

  v114 = 2;
LABEL_92:
  v115 = 1;
LABEL_72:
  v116 = [v107 hasContent];
  v117 = v161;
  if (!v116)
  {
LABEL_75:
    v119 = 1;
    goto LABEL_81;
  }

  v118 = v114 + v115;
  if (v98)
  {
    if (v118)
    {
      goto LABEL_75;
    }

    v119 = 0;
  }

  else
  {
    v119 = v118 > 1;
  }

LABEL_81:
  [v107 setHidden:v119];
  v120 = sub_764E60();
  if (!v120)
  {
    sub_396E8();
    v120 = sub_769FF0();
  }

  v121 = v120;
  [v107 setTextColor:v120];

  v122 = &selRef_absoluteDimension_;
  v123 = [v107 layer];
  sub_764E70();
  v124 = sub_75F760();
  v125 = *(v124 - 8);
  v126 = *(v125 + 48);
  if (v126(v117, 1, v124) == 1)
  {
    sub_10A2C(v117, &unk_9535C0);
LABEL_87:
    v133 = 0;
    goto LABEL_88;
  }

  sub_75F750();
  (*(v125 + 8))(v117, v124);
  v127 = *(&v170 + 1);
  if (!*(&v170 + 1))
  {
    goto LABEL_87;
  }

  v128 = sub_B170(&v169, *(&v170 + 1));
  v129 = *(v127 - 8);
  v130 = __chkstk_darwin(v128);
  v132 = &v139 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v129 + 16))(v132, v130);
  v133 = sub_76A930();
  (*(v129 + 8))(v132, v127);
  v122 = &selRef_absoluteDimension_;
  sub_BEB8(&v169);
LABEL_88:
  [v123 setCompositingFilter:v133];

  swift_unknownObjectRelease();
  v134 = [v79 contentView];
  v135 = [v134 v122[1]];

  v136 = v162;
  sub_764E70();
  v137 = v126(v136, 1, v124) == 1;
  sub_10A2C(v136, &unk_9535C0);
  [v135 setAllowsGroupBlending:v137];

  [v79 setNeedsLayout];
  return (*(v163 + 8))(v166, v164);
}