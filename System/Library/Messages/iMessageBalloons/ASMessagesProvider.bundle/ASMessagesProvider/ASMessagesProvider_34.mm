id sub_3DD084(uint64_t a1, NSString a2)
{
  v5 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_offerLabel];
  result = [v5 text];
  if (!result)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  v7 = result;
  v8 = sub_769240();
  v10 = v9;

  if (!a2)
  {

    goto LABEL_12;
  }

  if (v8 != a1 || v10 != a2)
  {
    v12 = sub_76A950();

    if (v12)
    {
      return result;
    }

LABEL_10:
    a2 = sub_769210();
LABEL_12:
    [v5 setText:a2];

    v13 = [v5 text];
    if (v13)
    {
      v14 = v13;
      sub_769240();
    }

    v15 = sub_7692D0();

    [v5 setHidden:v15 & 1];

    return [v2 setNeedsLayout];
  }
}

uint64_t sub_3DD250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_767510();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_27A378(a5, v9);
  sub_7674D0();
  (*(v7 + 8))(v9, v6);
  PageTraitEnvironment.pageColumnWidth.getter();
  sub_27BC08(a5);
  v10 = objc_opt_self();
  PageTraitEnvironment.pageColumnWidth.getter();
  v11 = [v10 absoluteDimension:?];
  v12 = sub_75F970();

  return v12;
}

uint64_t sub_3DD470(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_3DD4B8(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = a2;
  v4 = sub_76A920();
  v20 = *(v4 - 8);
  v21 = v4;
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_75FA00();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_767510();
  v11 = *(v23 - 8);
  __chkstk_darwin(v23);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_27A378(a3, v13);
  sub_75F9B0();
  sub_3DD470(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions);
  v14 = sub_76A520();
  (*(v8 + 8))(v10, v7);
  v15 = sub_27BC08(a3);
  if (v14)
  {
    v16 = v15;
    sub_7674A0();
    sub_B170(v24, v24[3]);
    sub_33964();
    sub_766700();
    (*(v20 + 8))(v6, v21);
    (*(v11 + 8))(v13, v23);
    sub_BEB8(v24);
  }

  else
  {
    sub_769DD0();
    v16 = v17;
    (*(v11 + 8))(v13, v23);
  }

  return v16;
}

id sub_3DD7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v7 = v6;
  v45 = a2;
  v47 = a1;
  v46 = sub_75E550();
  v48 = *(v46 - 8);
  __chkstk_darwin(v46);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(ASReportAConcernConfiguration) init];
  v55._countAndFlagsBits = 0xD000000000000014;
  v55._object = 0x80000000007DFB80;
  v64._countAndFlagsBits = 0;
  v64._object = 0xE000000000000000;
  sub_75B750(v55, v64);
  v15 = sub_769210();

  [v14 setTitle:v15];

  v56._countAndFlagsBits = 0xD000000000000013;
  v56._object = 0x80000000007DFBA0;
  v65._countAndFlagsBits = 0;
  v65._object = 0xE000000000000000;
  sub_75B750(v56, v65);
  v16 = sub_769210();

  [v14 setBackTitle:v16];

  v57._object = 0x80000000007DFBC0;
  v57._countAndFlagsBits = 0xD000000000000015;
  v66._countAndFlagsBits = 0;
  v66._object = 0xE000000000000000;
  sub_75B750(v57, v66);
  v17 = sub_769210();

  [v14 setCancelTitle:v17];

  v58._object = 0x80000000007DFBE0;
  v58._countAndFlagsBits = 0xD000000000000015;
  v67._countAndFlagsBits = 0;
  v67._object = 0xE000000000000000;
  sub_75B750(v58, v67);
  v18 = sub_769210();

  [v14 setSubmitTitle:v18];

  if (a5)
  {
    v59._countAndFlagsBits = 0xD00000000000002ALL;
    v59._object = 0x80000000007DFCA0;
    v68._countAndFlagsBits = 0;
    v68._object = 0xE000000000000000;
    sub_75B750(v59, v68);
    v19 = sub_769210();

    [v14 setSelectReasonTitle:v19];

    if (a3)
    {
      v20 = sub_769210();
    }

    else
    {
      v20 = 0;
    }

    v26 = v47;
    [v14 setReportConcernExplanation:v20];

    v63._countAndFlagsBits = 0xD000000000000025;
    v63._object = 0x80000000007DFCD0;
    v72._countAndFlagsBits = 0;
    v72._object = 0xE000000000000000;
    sub_75B750(v63, v72);
    v27 = sub_769210();

    [v14 setPrivacyNote:v27];

    v28 = swift_allocObject();
    *(v28 + 16) = a4;
    *(v28 + 24) = a6;
    v53 = sub_3DF2F0;
    v54 = v28;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v51 = sub_3DEACC;
    v52 = &unk_8905D0;
    v25 = _Block_copy(&aBlock);
  }

  else
  {

    v60._countAndFlagsBits = 0xD00000000000001BLL;
    v60._object = 0x80000000007DFC00;
    v69._countAndFlagsBits = 0;
    v69._object = 0xE000000000000000;
    sub_75B750(v60, v69);
    v21 = sub_769210();

    [v14 setSelectReasonTitle:v21];

    v61._countAndFlagsBits = 0xD00000000000001ELL;
    v61._object = 0x80000000007DFC20;
    v70._countAndFlagsBits = 0;
    v70._object = 0xE000000000000000;
    sub_75B750(v61, v70);
    v22 = sub_769210();

    [v14 setSelectReasonSubtitle:v22];

    v62._countAndFlagsBits = 0xD000000000000016;
    v62._object = 0x80000000007DFC40;
    v71._countAndFlagsBits = 0;
    v71._object = 0xE000000000000000;
    sub_75B750(v62, v71);
    v23 = sub_769210();

    [v14 setPrivacyNote:v23];

    v24 = swift_allocObject();
    *(v24 + 16) = a4;
    *(v24 + 24) = a6;
    v53 = sub_3DF284;
    v54 = v24;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v51 = sub_3DEACC;
    v52 = &unk_890580;
    v25 = _Block_copy(&aBlock);

    v26 = v47;
  }

  [v14 setCompletion:v25];
  _Block_release(v25);
  v29 = *(v26 + 16);
  if (v29)
  {
    v42 = v14;
    v43 = v7;
    v44 = a4;
    v45 = a6;
    aBlock = _swiftEmptyArrayStorage;
    sub_76A7C0();
    v30 = v48 + 16;
    v48 = *(v48 + 16);
    v31 = v26 + ((*(v30 + 64) + 32) & ~*(v30 + 64));
    v32 = *(v30 + 56);
    v33 = v46;
    do
    {
      (v48)(v13, v31, v33);
      v34 = [objc_allocWithZone(ASReportAConcernReason) init];
      sub_75E530();
      v35 = sub_769210();

      [v34 setReasonID:v35];

      sub_75E540();
      v36 = sub_769210();

      [v34 setName:v36];

      sub_75E520();
      v37 = sub_769210();

      [v34 setUppercaseName:v37];

      (*(v30 - 8))(v13, v33);
      sub_76A7A0();
      sub_76A7D0();
      sub_76A7E0();
      sub_76A7B0();
      v31 += v32;
      --v29;
    }

    while (v29);

    v14 = v42;
  }

  else
  {
  }

  sub_3DF2A4();
  isa = sub_769450().super.isa;

  [v14 setReasons:isa];

  v39 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration:v14];
  [v39 setModalPresentationStyle:2];

  return v39;
}

uint64_t sub_3DDF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v49 = a7;
  *&v51 = a4;
  v52 = a2;
  v53 = a3;
  v9 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v9 - 8);
  v50 = &v49 - v10;
  v11 = sub_7687B0();
  v55 = *(v11 - 8);
  v56 = v11;
  __chkstk_darwin(v11);
  v54 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_769290();
  __chkstk_darwin(v13 - 8);
  v14 = sub_7614C0();
  v58 = *(v14 - 8);
  v59 = v14;
  __chkstk_darwin(v14);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10DD04(_swiftEmptyArrayStorage);
  sub_10DD04(_swiftEmptyArrayStorage);
  sub_3DF774(_swiftEmptyArrayStorage);
  sub_10DD04(_swiftEmptyArrayStorage);
  v17 = v16;
  sub_7614B0();
  v57 = a6;
  v18 = sub_75D5B0();
  v63 = v18;
  if (a5)
  {
    if (v18)
    {
      v19 = sub_3DE9F8(v62, 0x74726F706572, 0xE600000000000000);
      if (*v20)
      {
        sub_BD88(&qword_9535F8);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_77B6D0;
        sub_BD88(&unk_9562A0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_77E280;
        *(inited + 32) = 1684957547;
        v23 = v52;
        *(inited + 40) = 0xE400000000000000;
        *(inited + 48) = v23;
        *(inited + 56) = v53;
        *(inited + 64) = 0x746E656D6D6F63;
        v24 = v51;
        *(inited + 72) = 0xE700000000000000;
        *(inited + 80) = v24;
        *(inited + 88) = a5;

        v25 = sub_10DD04(inited);
        swift_setDeallocating();
        sub_BD88(&qword_95DC30);
        swift_arrayDestroy();
        *(v21 + 32) = v25;
        v61 = sub_BD88(&qword_953600);
        v60[0] = v21;
        sub_452258(v60, 0x736E7265636E6F63, 0xE800000000000000);
      }

      (v19)(v62, 0);
    }
  }

  else if (v18)
  {
    v26 = sub_3DE9F8(v62, 0x74726F706572, 0xE600000000000000);
    if (*v27)
    {
      sub_BD88(&qword_9535F8);
      v28 = swift_allocObject();
      v51 = xmmword_77B6D0;
      *(v28 + 16) = xmmword_77B6D0;
      sub_BD88(&unk_9562A0);
      v29 = swift_initStackObject();
      *(v29 + 16) = v51;
      *(v29 + 32) = 1684957547;
      v30 = v52;
      *(v29 + 40) = 0xE400000000000000;
      *(v29 + 48) = v30;
      *(v29 + 56) = v53;

      v31 = sub_10DD04(v29);
      swift_setDeallocating();
      sub_10A2C(v29 + 32, &qword_95DC30);
      *(v28 + 32) = v31;
      v61 = sub_BD88(&qword_953600);
      v60[0] = v28;
      sub_452258(v60, 0x736E7265636E6F63, 0xE800000000000000);
    }

    (v26)(v62, 0);
  }

  v32 = objc_opt_self();
  v62[0] = v63;
  sub_BD88(&qword_953608);
  v33 = sub_76A470();
  v62[0] = 0;
  v34 = [v32 dataWithJSONObject:v33 options:0 error:v62];
  swift_unknownObjectRelease();
  v35 = v62[0];
  if (v34)
  {
    v36 = sub_7570C0();
    v38 = v37;

    sub_769280();
    sub_769260();
    if (v39)
    {
      v40 = v54;
      sub_768790();
      v44 = sub_75D580();
      (*(v55 + 8))(v40, v56);

      v45 = sub_BD88(&unk_93F630);
      v46 = v49;
      v47 = v50;
      sub_768860();
      v48 = *(v45 - 8);
      if ((*(v48 + 48))(v47, 1, v45) == 1)
      {
        (*(v58 + 8))(v17, v59);
        sub_30CC30(v36, v38);

        sub_10A2C(v47, &unk_93F980);
      }

      else
      {
        sub_32AE1C(v44, 1, v46, v47);

        sub_30CC30(v36, v38);

        (*(v58 + 8))(v17, v59);
        (*(v48 + 8))(v47, v45);
      }
    }

    sub_30CC30(v36, v38);
  }

  else
  {
    v41 = v35;
    sub_756F70();

    swift_willThrow();
  }

  if (qword_93DF00 != -1)
  {
    swift_once();
  }

  v42 = sub_768FF0();
  sub_BE38(v42, qword_9A0430);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77B6D0;
  sub_768540();
  sub_768EA0();

  (*(v58 + 8))(v17, v59);
}

void (*sub_3DE9F8(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_3DF428(v6, a2, a3);
  return sub_3DEA80;
}

void sub_3DEA80(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_3DEACC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  sub_769240();
  if (a4)
  {
    sub_769240();
  }

  v7 = a2;
  v6();
}

uint64_t sub_3DEB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v48 = a4;
  v49 = a5;
  v50 = a2;
  v51 = a3;
  v9 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v9 - 8);
  v45 = &v39 - v10;
  v11 = sub_7687B0();
  v42 = *(v11 - 8);
  v43 = v11;
  __chkstk_darwin(v11);
  v41 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_75F450();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_7614C0();
  v46 = *(v17 - 8);
  v47 = v17;
  __chkstk_darwin(v17);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10DD04(_swiftEmptyArrayStorage);
  sub_10DD04(_swiftEmptyArrayStorage);
  sub_3DF774(_swiftEmptyArrayStorage);
  sub_10DD04(_swiftEmptyArrayStorage);
  v52 = v19;
  sub_7614B0();
  v44 = a6;
  v20 = sub_75D5A0();
  v21 = *(v20 + 16);
  if (v21)
  {
    v40 = a7;
    v24 = *(v14 + 16);
    v23 = v14 + 16;
    v22 = v24;
    v25 = (*(v23 + 64) + 32) & ~*(v23 + 64);
    v39 = v20;
    v26 = v20 + v25;
    v27 = *(v23 + 56);
    v24(v16, v20 + v25, v13);
    while (sub_75F410() != 0x64657463656C6573 || v28 != 0xEE006E6F73616552)
    {
      v29 = sub_76A950();

      if (v29)
      {
        goto LABEL_4;
      }

      if (v49)
      {
        if (sub_75F410() == 0x74616E616C707865 && v30 == 0xEB000000006E6F69)
        {
          break;
        }

        v31 = sub_76A950();

        if (v31)
        {
          goto LABEL_4;
        }
      }

LABEL_5:
      (*(v23 - 8))(v16, v13);
      v26 += v27;
      if (!--v21)
      {

        a7 = v40;
        goto LABEL_17;
      }

      v22(v16, v26, v13);
    }

LABEL_4:
    sub_7614A0();
    goto LABEL_5;
  }

LABEL_17:
  v32 = v41;
  sub_768790();
  v33 = sub_75D580();
  v34 = v45;
  v35 = v33;
  (*(v42 + 8))(v32, v43);
  v36 = sub_BD88(&unk_93F630);
  sub_768860();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v34, 1, v36) == 1)
  {

    sub_10A2C(v34, &unk_93F980);
  }

  else
  {
    sub_32AE1C(v35, 1, a7, v34);

    (*(v37 + 8))(v34, v36);
  }

  return (*(v46 + 8))(v52, v47);
}

uint64_t sub_3DF28C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_3DF2A4()
{
  result = qword_9535F0;
  if (!qword_9535F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_9535F0);
  }

  return result;
}

unint64_t sub_3DF2F8(uint64_t a1, uint64_t a2)
{
  sub_76AA30();
  sub_769330();
  v4 = sub_76AA80();

  return sub_3DF370(a1, a2, v4);
}

unint64_t sub_3DF370(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_76A950())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void (*sub_3DF428(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_3DF740(v7);
  v7[9] = sub_3DF534(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_3DF4D4;
}

void sub_3DF4D4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_3DF534(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_3DF2F8(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_45C960();
      v13 = v21;
      goto LABEL_11;
    }

    sub_456F8C(v18, a4 & 1);
    v13 = sub_3DF2F8(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_76A9B0();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_3DF68C;
}

void sub_3DF68C(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_45AB80(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    v6 = v1[4];
    v7 = *v1[3];
    sub_B2FFC(*(v7 + 48) + 16 * v6);
    sub_4587D8(v6, v7);
  }

  free(v1);
}

uint64_t (*sub_3DF740(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_3DF768;
}

unint64_t sub_3DF774(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_BD88(&qword_955910);
    v3 = sub_76A8B0();
    v4 = a1 + 32;

    while (1)
    {
      sub_3DF884(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_3DF2F8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_13310(&v15, (v3[7] + 32 * result));
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

uint64_t sub_3DF884(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_9453B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_3DF900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  sub_320474(a1, a3, a4, a5, a6);
  sub_757B90();
  v8 = sub_764EF0();
  v10 = v9;

  if (v10)
  {
    v26._countAndFlagsBits = 0x465F4E4F5F444441;
    v26._object = 0xEE005050415F524FLL;
    v27._object = 0x80000000007CF0F0;
    v27._countAndFlagsBits = 0xD000000000000031;
    sub_75B750(v26, v27);
    sub_BD88(&unk_944E30);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_77B6D0;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_FA4CC();
    *(v11 + 32) = v8;
    *(v11 + 40) = v10;

    sub_769270();

    v12 = objc_allocWithZone(NSMutableAttributedString);
    v13 = sub_769210();
    v14 = [v12 initWithString:v13];

    v15 = objc_allocWithZone(NSString);
    v16 = sub_769210();

    v17 = [v15 initWithString:v16];

    v18 = sub_769210();

    v19 = [v17 rangeOfString:v18 options:4];
    v21 = v20;

    v25 = [v7 tintColor];
    sub_BD88(&unk_944E40);
    v22 = sub_76A470();

    [v14 addAttribute:NSForegroundColorAttributeName value:v22 range:{v19, v21}];
    swift_unknownObjectRelease();
    v23 = *(*&v7[OBJC_IVAR____TtC18ASMessagesProvider37InAppPurchaseLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_subtitleLabel);
    if (v23)
    {
      v24 = v23;
      [v24 setAttributedText:v14];
    }
  }
}

double sub_3DFC64(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_76A920();
  v20 = *(v4 - 8);
  v21 = v4;
  __chkstk_darwin(v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_767510();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_75FA00();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75F9B0();
  sub_3E02CC(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions);
  v15 = sub_76A520();
  (*(v12 + 8))(v14, v11);
  swift_getObjectType();
  sub_321BC4(a3, v10);
  type metadata accessor for InAppPurchaseLockupView();
  v16 = sub_1F1030(a3);
  if (v15)
  {
    v17 = v16;
    sub_7674A0();
    sub_B170(v22, v22[3]);
    sub_33964();
    sub_766700();
    (*(v20 + 8))(v6, v21);
    (*(v8 + 8))(v10, v7);
    sub_BEB8(v22);
  }

  else
  {
    sub_769DD0();
    v17 = v18;
    (*(v8 + 8))(v10, v7);
  }

  return v17;
}

uint64_t sub_3DFFB0(uint64_t a1, double a2, uint64_t a3, void *a4)
{
  v24[1] = a1;
  v6 = sub_767510();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_764A60();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  type metadata accessor for InAppPurchaseLockupView();
  sub_1F1030(a4);
  sub_764A30();
  sub_3E02CC(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints);
  sub_76A520();
  (*(v11 + 8))(v13, v10);
  sub_321BC4(a4, v9);
  sub_7674D0();
  (*(v7 + 8))(v9, v6);
  [a4 pageMarginInsets];
  v14 = [a4 traitCollection];
  LOBYTE(v6) = sub_7699E0();

  if ((v6 & 1) != 0 || (JUScreenClassGetPortraitWidth(), v15 >= a2))
  {
    PageTraitEnvironment.pageColumnWidth.getter();
    v19 = v20;
  }

  else
  {
    PageTraitEnvironment.pageColumnWidth.getter();
    v17 = v16;
    PageTraitEnvironment.pageColumnMargin.getter();
    v19 = v17 - (v18 + v18);
  }

  v21 = [objc_opt_self() absoluteDimension:v19];
  v22 = sub_75F970();

  return v22;
}

uint64_t sub_3E02CC(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_3E0384(uint64_t a1, uint64_t a2)
{
  v88 = a2;
  v87 = sub_75EE00();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v85 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_766690();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_7643C0();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v89 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_764A60();
  v94 = *(v6 - 8);
  v95 = v6;
  __chkstk_darwin(v6);
  v93 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v92 = &v81 - v9;
  v10 = sub_759270();
  v97 = *(v10 - 8);
  v98 = v10;
  __chkstk_darwin(v10);
  v96 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_75DAB0();
  v100 = *(v12 - 8);
  v101 = v12;
  __chkstk_darwin(v12);
  v99 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_75D6B0();
  v103 = *(v14 - 8);
  v104 = v14;
  __chkstk_darwin(v14);
  v102 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_7656C0();
  v17 = *(v16 - 8);
  v106 = v16;
  v107 = v17;
  __chkstk_darwin(v16);
  v105 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_BD88(&qword_951BE0);
  __chkstk_darwin(v19 - 8);
  v21 = &v81 - v20;
  v22 = sub_BD88(&unk_94F1F0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v81 - v24;
  v26 = sub_764930();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v81 - v31;
  swift_getKeyPath();
  v108 = a1;
  sub_75C7B0();

  swift_getKeyPath();
  sub_768750();

  v33 = v25;
  v34 = v27;
  (*(v23 + 8))(v33, v22);
  if ((*(v27 + 48))(v21, 1, v26) != 1)
  {
    (*(v27 + 32))(v32, v21, v26);
    (*(v27 + 16))(v29, v32, v26);
    v36 = (*(v27 + 88))(v29, v26);
    v37 = v32;
    if (v36 == enum case for Shelf.ContentType.smallLockup(_:))
    {
      swift_getKeyPath();
      v38 = v105;
      sub_75C7B0();

      sub_765630();
      (*(v107 + 8))(v38, v106);
      if (qword_93C668 != -1)
      {
        swift_once();
      }

      v39 = sub_75CF00();
      sub_BE38(v39, qword_99B898);
      sub_527DE4();
      sub_75CF20();
      v40 = &unk_953660;
      v41 = &type metadata accessor for SmallLockupLayout;
LABEL_8:
      sub_3E15B0(v40, v41);
      sub_766ED0();
      v35 = v42;
      swift_unknownObjectRelease();
LABEL_22:
      (*(v34 + 8))(v37, v26);
      return v35;
    }

    if (v36 == enum case for Shelf.ContentType.mediumLockup(_:))
    {
      swift_getKeyPath();
      v43 = v105;
      sub_75C7B0();

      sub_765630();
      (*(v107 + 8))(v43, v106);
      type metadata accessor for MediumLockupCollectionViewCell();
      swift_getKeyPath();
      sub_75C7B0();

      v44 = v109;
      v45 = v102;
      sub_278FB0(v102);

      sub_527DE4();
      sub_75D6D0();
      sub_3E15B0(&qword_94C3F8, &type metadata accessor for MediumLockupLayout);
      sub_766ED0();
      v35 = v46;
      swift_unknownObjectRelease();
      (*(v103 + 8))(v45, v104);
      goto LABEL_22;
    }

    if (v36 == enum case for Shelf.ContentType.largeLockup(_:))
    {
      swift_getKeyPath();
      v47 = v105;
      sub_75C7B0();

      sub_765630();
      (*(v107 + 8))(v47, v106);
      if (qword_93C8B0 != -1)
      {
        swift_once();
      }

      v48 = sub_75C8F0();
      sub_BE38(v48, qword_99C5C0);
      sub_527DE4();
      sub_75C910();
      v40 = &unk_94CF70;
      v41 = &type metadata accessor for LargeLockupLayout;
      goto LABEL_8;
    }

    if (v36 == enum case for Shelf.ContentType.ribbonBar(_:) || v36 == enum case for Shelf.ContentType.ribbonFlow(_:))
    {
      v53 = v99;
      sub_75C720();
      v35 = sub_273AA8(v53);
      (*(v100 + 8))(v53, v101);
      goto LABEL_22;
    }

    if (v36 == enum case for Shelf.ContentType.videoCard(_:))
    {
      swift_getKeyPath();
      v49 = v105;
      sub_75C7B0();

      sub_765630();
      v51 = v50;
      (*(v107 + 8))(v49, v106);
      if (qword_93E0E0 != -1)
      {
        swift_once();
      }

      sub_527DE4();
      swift_getObjectType();
      type metadata accessor for VideoCardView();
      sub_6B2178(v51);
      v35 = v52;
      swift_unknownObjectRelease();
      goto LABEL_22;
    }

    if (v36 == enum case for Shelf.ContentType.brick(_:))
    {
      swift_getKeyPath();
      v55 = v92;
      sub_75C7B0();

      v56 = v93;
      sub_764A20();
      sub_3E15B0(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints);
      v57 = v95;
      v58 = sub_76A520();
      v59 = *(v94 + 8);
      v59(v56, v57);
      v59(v55, v57);
      if (v58)
      {
        if (qword_93CD68 != -1)
        {
          swift_once();
        }

        v60 = qword_99D350;
      }

      else
      {
        if (qword_93CD70 != -1)
        {
          swift_once();
        }

        v60 = qword_99D368;
      }

      v64 = v98;
      v65 = sub_BE38(v98, v60);
      v67 = v96;
      v66 = v97;
      (*(v97 + 16))(v96, v65, v64);
      swift_getKeyPath();
      v68 = v105;
      sub_75C7B0();

      sub_765630();
      (*(v107 + 8))(v68, v106);
      sub_527DE4();
      sub_759290();
      sub_3E15B0(&qword_94AD50, &type metadata accessor for BrickLayout);
      sub_766ED0();
      v35 = v69;
      swift_unknownObjectRelease();
      (*(v66 + 8))(v67, v64);
      goto LABEL_22;
    }

    if (v36 == enum case for Shelf.ContentType.categoryBrick(_:))
    {
LABEL_30:
      swift_getKeyPath();
      v61 = v105;
      sub_75C7B0();

      sub_765630();
      (*(v107 + 8))(v61, v106);
      v62 = v89;
      sub_761260();
      sub_527DE4();
      sub_7643E0();
      sub_3E15B0(&qword_953658, &type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout);
      sub_766ED0();
      v35 = v63;
      swift_unknownObjectRelease();
      (*(v90 + 8))(v62, v91);
      goto LABEL_22;
    }

    if (v36 == enum case for Shelf.ContentType.miniTodayCard(_:))
    {
      type metadata accessor for BaseTodayCardCollectionViewCell();
      v70 = sub_2822A4();
      goto LABEL_37;
    }

    if (v36 == enum case for Shelf.ContentType.appTrailerLockup(_:))
    {
      type metadata accessor for AppTrailerLockupCollectionViewCell();
    }

    else
    {
      if (v36 != enum case for Shelf.ContentType.screenshotsLockup(_:))
      {
        if (v36 == enum case for Shelf.ContentType.smallStoryCard(_:))
        {
          swift_getKeyPath();
          v72 = v105;
          sub_75C7B0();

          sub_765630();
          (*(v107 + 8))(v72, v106);
          swift_getKeyPath();
          sub_75C7B0();

          v73 = v109;
          v74 = v85;
          sub_593770(v109, v85);
          sub_75EDD0();
          v35 = v75;

          (*(v86 + 8))(v74, v87);
          goto LABEL_22;
        }

        if (v36 == enum case for Shelf.ContentType.posterLockup(_:))
        {
          v76 = v99;
          sub_75C720();
          v77 = v82;
          sub_75D870();
          v78 = v105;
          sub_75DA20();
          sub_765640();
          (*(v107 + 8))(v78, v106);
          sub_766660();
          v35 = v79;
          (*(v83 + 8))(v77, v84);
          (*(v100 + 8))(v76, v101);
          goto LABEL_22;
        }

        if (v36 != enum case for Shelf.ContentType.appPromotion(_:))
        {
          if (v36 != enum case for Shelf.ContentType.tagBrick(_:))
          {
            v80 = *(v27 + 8);
            v80(v32, v26);
            v80(v29, v26);
            return 0.0;
          }

          goto LABEL_30;
        }

        v70 = sub_4D3760(v108, 1);
LABEL_37:
        v35 = v70;
        goto LABEL_22;
      }

      type metadata accessor for ScreenshotsLockupCollectionViewCell();
    }

    v71 = v99;
    sub_75C720();
    v35 = sub_73459C(v71);
    (*(v100 + 8))(v71, v101);
    goto LABEL_22;
  }

  sub_3E153C(v21);
  return 0.0;
}

uint64_t sub_3E153C(uint64_t a1)
{
  v2 = sub_BD88(&qword_951BE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3E15B0(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_3E1630(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_76A920();
  v20 = *(v4 - 8);
  v21 = v4;
  __chkstk_darwin(v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_767510();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_75FA00();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75F9B0();
  sub_3E02CC(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions);
  v15 = sub_76A520();
  (*(v12 + 8))(v14, v11);
  swift_getObjectType();
  sub_321BC4(a3, v10);
  type metadata accessor for InAppPurchaseLockupView();
  v16 = sub_1F1030(a3);
  if (v15)
  {
    v17 = v16;
    sub_7674A0();
    sub_B170(v22, v22[3]);
    sub_33964();
    sub_766700();
    (*(v20 + 8))(v6, v21);
    (*(v8 + 8))(v10, v7);
    sub_BEB8(v22);
  }

  else
  {
    sub_769DD0();
    v17 = v18;
    (*(v8 + 8))(v10, v7);
  }

  return v17;
}

uint64_t sub_3E197C(uint64_t a1, double a2, uint64_t a3, void *a4)
{
  v24[1] = a1;
  v6 = sub_767510();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_764A60();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  type metadata accessor for InAppPurchaseLockupView();
  sub_1F1030(a4);
  sub_764A30();
  sub_3E02CC(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints);
  sub_76A520();
  (*(v11 + 8))(v13, v10);
  sub_321BC4(a4, v9);
  sub_7674D0();
  (*(v7 + 8))(v9, v6);
  [a4 pageMarginInsets];
  v14 = [a4 traitCollection];
  LOBYTE(v6) = sub_7699E0();

  if ((v6 & 1) != 0 || (JUScreenClassGetPortraitWidth(), v15 >= a2))
  {
    PageTraitEnvironment.pageColumnWidth.getter();
    v19 = v20;
  }

  else
  {
    PageTraitEnvironment.pageColumnWidth.getter();
    v17 = v16;
    PageTraitEnvironment.pageColumnMargin.getter();
    v19 = v17 - (v18 + v18);
  }

  v21 = [objc_opt_self() absoluteDimension:v19];
  v22 = sub_75F970();

  return v22;
}

uint64_t sub_3E1C98()
{
  v1 = sub_7572E0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BD88(&unk_93F5C0);
  v5 = swift_allocObject();
  v28 = xmmword_77D9F0;
  *(v5 + 16) = xmmword_77D9F0;
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  type metadata accessor for ActionDebugSetting();
  v7 = swift_allocObject();
  *(v7 + 56) = 0xD000000000000016;
  *(v7 + 64) = 0x80000000007DFD60;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = sub_3E265C;
  *(v7 + 112) = v6;
  v8 = v0;

  sub_7572D0();
  v9 = sub_7572B0();
  v11 = v10;
  v12 = *(v2 + 8);
  v29 = v2 + 8;
  v30 = v12;
  v12(v4, v1);
  v31 = v9;
  v32 = v11;
  sub_76A6E0();

  *(v5 + 32) = v7;
  v13 = swift_allocObject();
  *(v13 + 16) = v28;
  v14 = v13;
  v27 = v13;
  type metadata accessor for PromptActionDebugSetting();
  swift_allocObject();
  *(v14 + 32) = sub_5BEF20(0xD000000000000018, 0x80000000007DFD80, 0, 0, sub_3E1FEC, 0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_77B6C0;
  type metadata accessor for DebugSection();
  v16 = swift_allocObject();
  sub_7572D0();
  v17 = sub_7572B0();
  v19 = v18;
  v20 = v30;
  v30(v4, v1);
  v16[2] = v17;
  v16[3] = v19;
  v16[4] = 0x42206F54206B7341;
  v16[5] = 0xEA00000000007975;
  v16[6] = v5;
  *(v15 + 32) = v16;
  v21 = swift_allocObject();
  sub_7572D0();
  v22 = sub_7572B0();
  v24 = v23;
  v20(v4, v1);
  v21[2] = v22;
  v21[3] = v24;
  v21[4] = 0xD000000000000015;
  v21[5] = 0x80000000007DFDA0;
  v21[6] = v27;
  *(v15 + 40) = v21;
  return v15;
}

void sub_3E1FEC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v4 = HIBYTE(a3) & 0xF;
    v5 = a2 & 0xFFFFFFFFFFFFLL;
    if ((a3 & 0x2000000000000000) != 0 ? HIBYTE(a3) & 0xF : v5)
    {
      if ((a3 & 0x1000000000000000) != 0)
      {

        v9 = sub_6A8C20(a2, a3, 10);
        v38 = v37;

        if (v38)
        {
          return;
        }

        goto LABEL_64;
      }

      if ((a3 & 0x2000000000000000) != 0)
      {
        v39 = a2;
        v40 = a3 & 0xFFFFFFFFFFFFFFLL;
        if (a2 == 43)
        {
          if (v4)
          {
            if (--v4)
            {
              v9 = 0;
              v19 = &v39 + 1;
              while (1)
              {
                v20 = *v19 - 48;
                if (v20 > 9)
                {
                  break;
                }

                v21 = 10 * v9;
                if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                {
                  break;
                }

                v9 = v21 + v20;
                if (__OFADD__(v21, v20))
                {
                  break;
                }

                ++v19;
                if (!--v4)
                {
                  goto LABEL_63;
                }
              }
            }

            goto LABEL_62;
          }

LABEL_75:
          __break(1u);
          return;
        }

        if (a2 != 45)
        {
          if (v4)
          {
            v9 = 0;
            v24 = &v39;
            while (1)
            {
              v25 = *v24 - 48;
              if (v25 > 9)
              {
                break;
              }

              v26 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                break;
              }

              v9 = v26 + v25;
              if (__OFADD__(v26, v25))
              {
                break;
              }

              v24 = (v24 + 1);
              if (!--v4)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }

        if (v4)
        {
          if (--v4)
          {
            v9 = 0;
            v13 = &v39 + 1;
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                break;
              }

              v15 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                break;
              }

              v9 = v15 - v14;
              if (__OFSUB__(v15, v14))
              {
                break;
              }

              ++v13;
              if (!--v4)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v7 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v7 = sub_76A790();
        }

        v8 = *v7;
        if (v8 == 43)
        {
          if (v5 >= 1)
          {
            v4 = v5 - 1;
            if (v5 != 1)
            {
              v9 = 0;
              if (v7)
              {
                v16 = v7 + 1;
                while (1)
                {
                  v17 = *v16 - 48;
                  if (v17 > 9)
                  {
                    goto LABEL_62;
                  }

                  v18 = 10 * v9;
                  if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                  {
                    goto LABEL_62;
                  }

                  v9 = v18 + v17;
                  if (__OFADD__(v18, v17))
                  {
                    goto LABEL_62;
                  }

                  ++v16;
                  if (!--v4)
                  {
                    goto LABEL_63;
                  }
                }
              }

              goto LABEL_54;
            }

            goto LABEL_62;
          }

          goto LABEL_74;
        }

        if (v8 != 45)
        {
          if (v5)
          {
            v9 = 0;
            if (v7)
            {
              while (1)
              {
                v22 = *v7 - 48;
                if (v22 > 9)
                {
                  goto LABEL_62;
                }

                v23 = 10 * v9;
                if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                {
                  goto LABEL_62;
                }

                v9 = v23 + v22;
                if (__OFADD__(v23, v22))
                {
                  goto LABEL_62;
                }

                ++v7;
                if (!--v5)
                {
                  goto LABEL_54;
                }
              }
            }

            goto LABEL_54;
          }

LABEL_62:
          v9 = 0;
          LOBYTE(v4) = 1;
LABEL_63:
          v41 = v4;
          if (v4)
          {
            return;
          }

LABEL_64:
          v27 = objc_opt_self();
          v28 = [v27 treatmentOverrides];
          if (v28)
          {
            v29 = v28;
            v30 = sub_7690F0();
          }

          else
          {
            v30 = sub_10DD04(_swiftEmptyArrayStorage);
          }

          v39 = 0x62734435625378;
          v40 = 0xE700000000000000;
          sub_BD88(&unk_944E30);
          v31 = swift_allocObject();
          *(v31 + 16) = xmmword_77B6D0;
          *(v31 + 56) = &type metadata for Int;
          *(v31 + 64) = &protocol witness table for Int;
          *(v31 + 32) = v9;
          v42._countAndFlagsBits = sub_769270();
          sub_769370(v42);

          v32 = v39;
          v33 = v40;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v39 = v30;
          sub_4595D4(v32, v33, 0x6D4B3562504E66, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
          isa = sub_7690E0().super.isa;

          [v27 setTreatmentOverrides:isa];

          return;
        }

        if (v5 >= 1)
        {
          v4 = v5 - 1;
          if (v5 != 1)
          {
            v9 = 0;
            if (v7)
            {
              v10 = v7 + 1;
              while (1)
              {
                v11 = *v10 - 48;
                if (v11 > 9)
                {
                  goto LABEL_62;
                }

                v12 = 10 * v9;
                if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                {
                  goto LABEL_62;
                }

                v9 = v12 - v11;
                if (__OFSUB__(v12, v11))
                {
                  goto LABEL_62;
                }

                ++v10;
                if (!--v4)
                {
                  goto LABEL_63;
                }
              }
            }

LABEL_54:
            LOBYTE(v4) = 0;
            goto LABEL_63;
          }

          goto LABEL_62;
        }

        __break(1u);
      }

      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }
  }
}

void sub_3E244C(uint64_t a1)
{
  v2 = [objc_opt_self() defaultCenter];
  v3 = sub_763780();
  sub_BD88(&unk_9498B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77B6D0;
  sub_763790();
  sub_76A6E0();
  v5 = sub_764CF0();
  *(inited + 96) = v5;
  v6 = sub_B1B4((inited + 72));
  (*(*(v5 - 8) + 16))(v6, a1, v5);
  sub_10E1F8(inited);
  swift_setDeallocating();
  sub_10A2C(inited + 32, &qword_940758);
  isa = sub_7690E0().super.isa;

  [v2 postNotificationName:v3 object:0 userInfo:isa];
}

id sub_3E25CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductPageSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_3E2624()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_3E2680()
{
  v0 = sub_BD88(&unk_940200);
  __chkstk_darwin(v0 - 8);
  v2 = &v27 - v1;
  v3 = sub_764CF0();
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  __chkstk_darwin(v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v27 - v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = [Strong presentingViewController];

    if (v11)
    {
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (!v12)
      {
LABEL_6:

        goto LABEL_7;
      }

      v13 = [v12 selectedViewController];

      if (v13)
      {
        objc_opt_self();
        v14 = swift_dynamicCastObjCClass();
        v11 = v13;
        if (v14)
        {
          goto LABEL_10;
        }

        goto LABEL_6;
      }
    }
  }

LABEL_7:
  v15 = swift_unknownObjectWeakLoadStrong();
  if (!v15)
  {
    return;
  }

  v16 = v15;
  v30 = [v15 presentingViewController];

  if (!v30)
  {
    return;
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {
    goto LABEL_14;
  }

LABEL_10:
  v30 = v14;
  v17 = [v14 topViewController];
  if (!v17)
  {
LABEL_14:
    v19 = v30;
LABEL_16:

    return;
  }

  v28 = v17;
  type metadata accessor for ProductDiffablePageViewController();
  if (!swift_dynamicCastClass())
  {

    v19 = v28;
    goto LABEL_16;
  }

  sub_762950();

  v18 = v29;
  if ((*(v29 + 48))(v2, 1, v3) == 1)
  {

    sub_10A2C(v2, &unk_940200);
    return;
  }

  v27 = *(v18 + 32);
  v27(v8, v2, v3);
  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    v22 = [v20 presentingViewController];

    if (v22)
    {
      v23 = v29;
      (*(v29 + 16))(v5, v8, v3);
      v24 = (*(v23 + 80) + 16) & ~*(v23 + 80);
      v25 = swift_allocObject();
      v27((v25 + v24), v5, v3);
      aBlock[4] = sub_3E2BD0;
      aBlock[5] = v25;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23F0CC;
      aBlock[3] = &unk_890718;
      v26 = _Block_copy(aBlock);

      [v22 dismissViewControllerAnimated:1 completion:v26];
      _Block_release(v26);

      (*(v23 + 8))(v8, v3);
      return;
    }

    (*(v29 + 8))(v8, v3);
  }

  else
  {
    (*(v18 + 8))(v8, v3);
  }
}

uint64_t sub_3E2B48()
{
  v1 = sub_764CF0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_3E2BD0()
{
  v1 = *(sub_764CF0() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_3E244C(v2);
}

uint64_t sub_3E2C30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_3E2C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_BD88(&qword_951BE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_BD88(&unk_94F1F0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = sub_764930();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v23 - v15;
  swift_getKeyPath();
  v23 = a1;
  sub_75C7B0();

  swift_getKeyPath();
  sub_768750();

  (*(v7 + 8))(v9, v6);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    sub_3E153C(v5);
    v17 = sub_75D400();
    return (*(*(v17 - 8) + 56))(v24, 1, 1, v17);
  }

  v19 = v24;
  (*(v11 + 32))(v16, v5, v10);
  (*(v11 + 16))(v13, v16, v10);
  v20 = (*(v11 + 88))(v13, v10);
  if (v20 == enum case for Shelf.ContentType.smallLockup(_:))
  {
    type metadata accessor for SmallLockupCollectionViewCell();
    sub_225E74(v19);
    return (*(v11 + 8))(v16, v10);
  }

  if (v20 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    type metadata accessor for MediumLockupCollectionViewCell();
    sub_305B20(v19);
    return (*(v11 + 8))(v16, v10);
  }

  v21 = *(v11 + 8);
  v21(v16, v10);
  v22 = sub_75D400();
  (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  return (v21)(v13, v10);
}

uint64_t sub_3E304C(uint64_t result, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_title);
  v4 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_title);
  v5 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_title + 8);
  *v3 = result;
  v3[1] = a2;
  if (a2)
  {
    if (v5)
    {
      v6 = v4 == result && v5 == a2;
      if (v6 || (sub_76A950() & 1) != 0)
      {
        goto LABEL_11;
      }
    }
  }

  else if (!v5)
  {
    return result;
  }

  sub_3E31BC();
LABEL_11:
}

void sub_3E30CC(id a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleTextColor);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleTextColor) = a1;
  if (!a1)
  {
    if (!v3)
    {
      return;
    }

    v7 = v3;
    goto LABEL_8;
  }

  v7 = v3;
  if (!v3)
  {
    a1 = a1;
    goto LABEL_8;
  }

  sub_BE70(0, &qword_93E540);
  a1 = a1;
  v4 = v7;
  v5 = sub_76A1C0();

  if ((v5 & 1) == 0)
  {
LABEL_8:
    sub_3E31BC();

    v6 = v7;
    goto LABEL_9;
  }

  v6 = v4;
LABEL_9:
}

id sub_3E31BC()
{
  if (*&v0[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_title + 8])
  {
    if (v0[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_isBetaApp] == 1)
    {

      v1 = sub_3E33FC();
      v2 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v1];

      v3 = objc_allocWithZone(NSMutableAttributedString);
      v4 = sub_769210();

      v5 = [v3 initWithString:v4];

      v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleTextColor];
      if (v6)
      {
        v7 = v6;
        [v5 addAttribute:NSForegroundColorAttributeName value:v7 range:{0, objc_msgSend(v5, "length")}];
      }

      [v2 appendAttributedString:v5];
      [*&v0[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel] setAttributedText:v2];
    }

    else
    {
      v13 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel];

      [v13 setAttributedText:0];
      v14 = sub_769210();

      [v13 setText:v14];

      [v13 setTextColor:*&v0[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleTextColor]];
    }

    v10 = "setNeedsLayout";
    v11 = v0;
  }

  else
  {
    v9 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel];
    [v9 setAttributedText:0];
    v10 = "setText:";
    v11 = v9;
    v8 = 0;
  }

  return [v11 v10];
}

id sub_3E33FC()
{
  v1 = sub_76A920();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(NSMutableAttributedString) init];
  v6 = sub_56E958(0xD000000000000014, 0x80000000007DFEC0, 0);
  if (qword_93CFB0 != -1)
  {
    swift_once();
  }

  v7 = sub_766CA0();
  sub_BE38(v7, qword_9536D8);
  sub_766470();
  sub_766700();
  v9 = v8;
  v10 = *(v2 + 8);
  v30 = v1;
  v10(v4, v1);
  sub_BE70(0, &qword_93F900);
  if (qword_93D4F8 != -1)
  {
    swift_once();
  }

  v11 = sub_7666D0();
  sub_BE38(v11, qword_99E6F8);
  v12 = [v0 traitCollection];
  v13 = sub_769E10();

  v29 = v13;
  [v13 capHeight];
  v15 = floor((v14 - v9) * 0.5);
  v16 = [objc_allocWithZone(NSTextAttachment) init];
  v17 = [objc_opt_self() systemYellowColor];
  v18 = [v6 imageWithTintColor:v17];
  v28 = v6;
  v19 = v18;

  [v16 setImage:v19];
  [v16 setBounds:{0.0, v15, v9, v9}];
  sub_BE70(0, &qword_958080);
  v20 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment:v16];
  [v5 appendAttributedString:v20];
  if (qword_93CFB8 != -1)
  {
    swift_once();
  }

  sub_BE38(v7, qword_9536F0);
  sub_766470();
  sub_766700();
  v22 = v21;
  v10(v4, v30);
  v23 = [objc_allocWithZone(NSTextAttachment) init];
  [v23 setBounds:{0.0, 0.0, v22, 0.0}];
  v24 = [objc_allocWithZone(UIImage) init];
  [v23 setImage:v24];

  v25 = [objc_opt_self() attributedStringWithAttachment:v23];
  [v5 appendAttributedString:v25];

  return v5;
}

id sub_3E3874(char a1, uint64_t a2)
{
  v5 = sub_760AD0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_93E530);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v21 - v11;
  v13 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel;
  result = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel);
  if (a1)
  {
    if (result)
    {
      goto LABEL_6;
    }

    v15 = v2;
    if (qword_93D4F0 != -1)
    {
      swift_once();
    }

    v16 = sub_7666D0();
    v17 = sub_BE38(v16, qword_99E6E0);
    v18 = *(v16 - 8);
    (*(v18 + 16))(v12, v17, v16);
    (*(v18 + 56))(v12, 0, 1, v16);
    (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
    v19 = objc_allocWithZone(sub_75BB20());
    v20 = sub_75BB10();
    v2 = v15;
    sub_3E3034(v20);
    result = *(v15 + v13);
    if (result)
    {
LABEL_6:
      [result setTextColor:{a2, v10}];
      result = *(v2 + v13);
      if (result)
      {
        return [result setHidden:0];
      }
    }
  }

  else if (result)
  {
    [result setHidden:{1, v10}];
    result = *(v2 + v13);
    if (result)
    {

      return [result setText:0];
    }
  }

  return result;
}

void sub_3E3B34()
{
  v1 = v0;
  v2 = sub_760AD0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel;
  v10 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel);
  if (v10)
  {
    goto LABEL_5;
  }

  if (qword_93D540 != -1)
  {
    swift_once();
  }

  v11 = sub_7666D0();
  v12 = sub_BE38(v11, qword_99E7D0);
  v13 = *(v11 - 8);
  (*(v13 + 16))(v8, v12, v11);
  (*(v13 + 56))(v8, 0, 1, v11);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v14 = objc_allocWithZone(sub_75BB20());
  v15 = sub_75BB10();
  sub_3E3040(v15);
  v10 = *(v1 + v9);
  if (v10)
  {
LABEL_5:
    v16 = v10;
    sub_75BAD0();

    v17 = *(v1 + v9);
    if (v17)
    {
      sub_BE70(0, &qword_93E540);
      v18 = v17;
      v19 = sub_769FE0();
      [v18 setTextColor:v19];

      v20 = *(v1 + v9);
      if (v20)
      {
        [v20 setHidden:0];
      }
    }
  }
}

uint64_t sub_3E3DFC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_7664A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_766CA0();
  sub_161DC(v7, a2);
  sub_BE38(v7, a2);
  if (qword_93D4F8 != -1)
  {
    swift_once();
  }

  v8 = sub_7666D0();
  v9 = sub_BE38(v8, qword_99E6F8);
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v13[3] = v3;
  v13[4] = &protocol witness table for FontSource;
  v10 = sub_B1B4(v13);
  (*(v4 + 16))(v10, v6, v3);
  sub_766CB0();
  return (*(v4 + 8))(v6, v3);
}

void sub_3E3FD8()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_stateMachine);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_stateMachine + 8);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v3 = sub_7581E0();
    v4 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_isBetaApp);
    *(v0 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_isBetaApp) = v3 & 1;
    if ((v3 & 1) != v4)
    {
      sub_3E31BC();
    }

    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    v6[2] = v5;
    v6[3] = v1;
    v6[4] = v2;
    swift_unknownObjectRetain();

    sub_7581F0();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_isBetaApp);
    *(v0 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_isBetaApp) = 0;
    if (v7 == 1)
    {

      sub_3E31BC();
    }
  }
}

void sub_3E416C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getObjectType();
    v2 = sub_7581E0();
    v3 = v1[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_isBetaApp];
    v1[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_isBetaApp] = v2 & 1;
    if ((v2 & 1) != v3)
    {
      sub_3E31BC();
    }
  }
}

char *sub_3E4200(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v74 = sub_768C60();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v72 = v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_760AD0();
  v11 = *(v78 - 8);
  __chkstk_darwin(v78);
  v13 = v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v14 - 8);
  v16 = v67 - v15;
  v17 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
  sub_759210();
  *&v4[v17] = sub_759020();
  v18 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_ordinalLabel;
  if (qword_93D558 != -1)
  {
    swift_once();
  }

  v19 = sub_7666D0();
  v20 = sub_BE38(v19, qword_99E818);
  v21 = *(v19 - 8);
  v22 = v21 + 16;
  v79 = *(v21 + 16);
  v79(v16, v20, v19);
  v24 = *(v21 + 56);
  v23 = v21 + 56;
  v77 = v24;
  v24(v16, 0, 1, v19);
  v25 = *(v11 + 104);
  v75 = v11 + 104;
  v76 = enum case for DirectionalTextAlignment.none(_:);
  v25(v13);
  v26 = sub_75BB20();
  v27 = objc_allocWithZone(v26);
  *&v4[v18] = sub_75BB10();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel] = 0;
  v28 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel;
  if (qword_93D4F8 != -1)
  {
    swift_once();
  }

  v29 = sub_BE38(v19, qword_99E6F8);
  v79(v16, v29, v19);
  v77(v16, 0, 1, v19);
  (v25)(v13, v76, v78);
  v30 = objc_allocWithZone(v26);
  *&v4[v28] = sub_75BB10();
  v70 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel;
  v31 = v13;
  v71 = v25;
  if (qword_93D518 != -1)
  {
    swift_once();
  }

  v69 = sub_BE38(v19, qword_99E758);
  v79(v16, v69, v19);
  v32 = v77;
  v77(v16, 0, 1, v19);
  v33 = v76;
  v67[1] = v23;
  v34 = v78;
  v67[0] = v22;
  v35 = v71;
  (v71)(v31, v76, v78);
  v36 = objc_allocWithZone(v26);
  v68 = v26;
  *&v4[v70] = sub_75BB10();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel] = 0;
  v37 = v34;
  v38 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel;
  v79(v16, v69, v19);
  v32(v16, 0, 1, v19);
  v35(v31, v33, v37);
  v39 = objc_allocWithZone(v68);
  *&v5[v38] = sub_75BB10();
  v40 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton;
  v41 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[v40] = sub_1DD00C(0);
  v42 = &v5[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabelPresenter];
  *v42 = 0u;
  v42[1] = 0u;
  v43 = &v5[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_title];
  *v43 = 0;
  v43[1] = 0;
  v44 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleTextColor;
  sub_BE70(0, &qword_93E540);
  *&v5[v44] = sub_769FD0();
  v45 = &v5[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_stateMachine];
  *v45 = 0;
  v45[1] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_isBetaApp] = 0;
  v46 = type metadata accessor for BaseLockupView();
  v82.receiver = v5;
  v82.super_class = v46;
  v47 = objc_msgSendSuper2(&v82, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v51 = v47;
  [v51 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v51 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  v52 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
  [v51 addSubview:*&v51[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView]];
  v53 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_ordinalLabel;
  v54 = *&v51[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_ordinalLabel];
  sub_75BAD0();

  [v51 addSubview:*&v51[v53]];
  v55 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel;
  v56 = *&v51[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel];
  sub_75BAD0();

  [v51 addSubview:*&v51[v55]];
  v57 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel;
  v58 = *&v51[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel];
  v59 = sub_769FF0();
  [v58 setTextColor:v59];

  v60 = *&v51[v57];
  sub_75BAD0();

  [v51 addSubview:*&v51[v57]];
  v61 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel;
  [*&v51[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel] _setTextColorFollowsTintColor:1];
  v62 = *&v51[v61];
  sub_75BAD0();

  [*&v51[v61] setText:0];
  [*&v51[v61] setHidden:1];
  [v51 addSubview:*&v51[v61]];
  [v51 addSubview:*&v51[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton]];
  v63 = *&v51[v52];
  memset(v81, 0, sizeof(v81));
  memset(v80, 0, sizeof(v80));
  v64 = v63;
  v65 = v72;
  sub_768C10();
  sub_BDD0(v80);
  sub_BDD0(v81);
  sub_769E70();

  (*(v73 + 8))(v65, v74);
  return v51;
}

id sub_3E4AF0()
{
  if (*&v0[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_stateMachine])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v1 = v0;
    sub_758210();

    swift_unknownObjectRelease();
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for BaseLockupView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_3E4CA4(id a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for BaseLockupView();
  objc_msgSendSuper2(&v11, "traitCollectionDidChange:", a1);
  if (a1)
  {
    a1 = [a1 preferredContentSizeCategory];
  }

  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_11:
    if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_isBetaApp) == 1)
    {
      sub_3E31BC();
    }

    return;
  }

  v5 = sub_769240();
  v7 = v6;
  if (v5 == sub_769240() && v7 == v8)
  {

    return;
  }

  v10 = sub_76A950();

  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }
}

uint64_t sub_3E4EEC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3E4F24()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

void sub_3E4F70()
{
  v49 = sub_760AD0();
  v1 = *(v49 - 8);
  __chkstk_darwin(v49);
  v3 = v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v4 - 8);
  v6 = v40 - v5;
  v7 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
  sub_759210();
  *(v0 + v7) = sub_759020();
  v8 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_ordinalLabel;
  if (qword_93D558 != -1)
  {
    swift_once();
  }

  v9 = sub_7666D0();
  v10 = sub_BE38(v9, qword_99E818);
  v11 = *(v9 - 8);
  v12 = v11 + 16;
  v50 = *(v11 + 16);
  v50(v6, v10, v9);
  v15 = *(v11 + 56);
  v13 = v11 + 56;
  v14 = v15;
  v15(v6, 0, 1, v9);
  v16 = *(v1 + 104);
  v45 = enum case for DirectionalTextAlignment.none(_:);
  v47 = v1 + 104;
  v44 = v16;
  (v16)(v3);
  v48 = sub_75BB20();
  v17 = objc_allocWithZone(v48);
  *(v0 + v8) = sub_75BB10();
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel) = 0;
  v18 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel;
  if (qword_93D4F8 != -1)
  {
    swift_once();
  }

  v19 = sub_BE38(v9, qword_99E6F8);
  v20 = v12;
  v50(v6, v19, v9);
  v46 = v13;
  v42 = v14;
  v14(v6, 0, 1, v9);
  v44(v3, v45, v49);
  v21 = objc_allocWithZone(v48);
  v22 = v3;
  v23 = sub_75BB10();
  v43 = v0;
  *(v0 + v18) = v23;
  v41 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel;
  if (qword_93D518 != -1)
  {
    swift_once();
  }

  v40[0] = sub_BE38(v9, qword_99E758);
  v40[1] = v20;
  v50(v6, v40[0], v9);
  v24 = v42;
  v42(v6, 0, 1, v9);
  v25 = v45;
  v26 = v49;
  v27 = v44;
  v44(v22, v45, v49);
  v28 = objc_allocWithZone(v48);
  v29 = sub_75BB10();
  v30 = v43;
  *(v43 + v41) = v29;
  *(v30 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel) = 0;
  v31 = v26;
  v32 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel;
  v50(v6, v40[0], v9);
  v24(v6, 0, 1, v9);
  v27(v22, v25, v31);
  v33 = objc_allocWithZone(v48);
  *(v30 + v32) = sub_75BB10();
  v34 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton;
  v35 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v30 + v34) = sub_1DD00C(0);
  v36 = (v30 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabelPresenter);
  *v36 = 0u;
  v36[1] = 0u;
  v37 = (v30 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_title);
  *v37 = 0;
  v37[1] = 0;
  v38 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleTextColor;
  sub_BE70(0, &qword_93E540);
  *(v30 + v38) = sub_769FD0();
  v39 = (v30 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_stateMachine);
  *v39 = 0;
  v39[1] = 0;
  *(v30 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_isBetaApp) = 0;
  sub_76A840();
  __break(1u);
}

uint64_t sub_3E5520(uint64_t a1, uint64_t *a2)
{
  v3 = sub_7664A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_766CA0();
  sub_161DC(v7, a2);
  sub_BE38(v7, a2);
  if (qword_93D9D8 != -1)
  {
    swift_once();
  }

  v8 = sub_7666D0();
  v9 = sub_BE38(v8, qword_99F580);
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v13[3] = v3;
  v13[4] = &protocol witness table for FontSource;
  v10 = sub_B1B4(v13);
  (*(v4 + 16))(v10, v6, v3);
  sub_766CB0();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_3E56FC()
{
  v0 = sub_BD88(&unk_93F8F0);
  sub_161DC(v0, qword_9537D0);
  sub_BE38(v0, qword_9537D0);
  sub_BD88(&qword_93FBE0);
  type metadata accessor for NSTextAlignment(0);
  return sub_7592C0();
}

void sub_3E5798(void *a1)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider26TodayCardActionOverlayView_accessoryView;
  v6 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider26TodayCardActionOverlayView_accessoryView];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider26TodayCardActionOverlayView_accessoryView] = a1;
  v3 = a1;
  [v6 removeFromSuperview];
  v4 = *&v1[v2];
  if (v4)
  {
    v5 = v4;
    [v1 addSubview:v5];
    [v1 setNeedsLayout];
  }
}

char *sub_3E5840(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_768C60();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_760AD0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v18 - 8);
  v20 = &v33 - v19;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider26TodayCardActionOverlayView_accessoryView] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider26TodayCardActionOverlayView_isExpanded] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider26TodayCardActionOverlayView_sizeCategory] = 7;
  if (qword_93D9D8 != -1)
  {
    swift_once();
  }

  v21 = sub_7666D0();
  v22 = sub_BE38(v21, qword_99F580);
  v23 = *(v21 - 8);
  (*(v23 + 16))(v20, v22, v21);
  (*(v23 + 56))(v20, 0, 1, v21);
  (*(v15 + 104))(v17, enum case for DirectionalTextAlignment.none(_:), v14);
  v24 = objc_allocWithZone(sub_75BB20());
  v25 = sub_75BB10();
  v26 = OBJC_IVAR____TtC18ASMessagesProvider26TodayCardActionOverlayView_label;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider26TodayCardActionOverlayView_label] = v25;
  memset(v37, 0, sizeof(v37));
  memset(v36, 0, sizeof(v36));
  v27 = v25;
  sub_768C10();
  sub_BDD0(v36);
  sub_BDD0(v37);
  sub_769E70();

  (*(v11 + 8))(v13, v10);
  v28 = *&v5[v26];
  sub_396E8();
  v29 = v28;
  v30 = sub_769FF0();
  [v29 setTextColor:v30];

  type metadata accessor for Accessory();
  swift_storeEnumTagMultiPayload();
  v35.receiver = v5;
  v35.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v35, "initWithFrame:", a1, a2, a3, a4);
  [v31 addSubview:*&v31[OBJC_IVAR____TtC18ASMessagesProvider26TodayCardActionOverlayView_label]];
  return v31;
}

double sub_3E5CE0(double a1)
{
  swift_getObjectType();
  v3 = sub_76A920();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75D650();
  v11 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider26TodayCardActionOverlayView_accessoryView);
  if (v11)
  {
    v12 = v7;
    v13 = v8;
    v14 = v9;
    v15 = v10;
    [v11 sizeThatFits:{v9, v10}];
    v10 = v15;
    v9 = v14;
    v8 = v13;
    v17 = v16;
    v7 = v12;
  }

  else
  {
    v17 = 0.0;
  }

  Width = CGRectGetWidth(*&v7);
  v19 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider26TodayCardActionOverlayView_label);
  [v19 sizeThatFits:{Width + -16.0 - v17, 1.79769313e308}];
  if (qword_93CFC0 != -1)
  {
    swift_once();
  }

  v20 = sub_766CA0();
  sub_BE38(v20, qword_9537A0);
  sub_766470();
  sub_766700();
  v21 = *(v4 + 8);
  v21(v6, v3);
  [v19 firstBaselineFromTop];
  if (qword_93CFC8 != -1)
  {
    swift_once();
  }

  sub_BE38(v20, qword_9537B8);
  sub_766470();
  sub_766700();
  v21(v6, v3);
  [v19 lastBaselineFromBottom];
  return a1;
}

id sub_3E5FD8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_76A920();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32.receiver = v1;
  v32.super_class = ObjectType;
  objc_msgSendSuper2(&v32, "layoutSubviews", v5);
  sub_75D650();
  v11 = v10;
  v13 = v12;
  v14 = v8;
  v15 = v9;
  v16 = OBJC_IVAR____TtC18ASMessagesProvider26TodayCardActionOverlayView_accessoryView;
  v17 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider26TodayCardActionOverlayView_accessoryView];
  if (v17)
  {
    [v17 sizeThatFits:{v8, v9}];
    v19 = v18;
    v21 = v20;
  }

  else
  {
    v19 = 0.0;
    v21 = 0.0;
  }

  v33.origin.x = v11;
  v33.origin.y = v13;
  v33.size.width = v14;
  v33.size.height = v15;
  v22 = CGRectGetMaxX(v33) - v19;
  v34.origin.x = v11;
  v34.origin.y = v13;
  v34.size.width = v14;
  v34.size.height = v15;
  v35.origin.y = CGRectGetMidY(v34) + v21 * -0.5;
  v35.origin.x = v22;
  v31 = v19;
  v35.size.width = v19;
  v35.size.height = v21;
  CGRectIntegral(v35);
  v23 = *&v1[v16];
  if (v23)
  {
    v24 = v23;
    sub_769D20();
    [v24 setFrame:?];
  }

  v36.origin.x = v11;
  v36.origin.y = v13;
  v36.size.width = v14;
  v36.size.height = v15;
  v25 = CGRectGetWidth(v36) + -16.0 - v31;
  v37.origin.x = v11;
  v37.origin.y = v13;
  v37.size.width = v14;
  v37.size.height = v15;
  Height = CGRectGetHeight(v37);
  v27 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider26TodayCardActionOverlayView_label];
  [v27 sizeThatFits:{v25, Height}];
  if (qword_93CFC0 != -1)
  {
    swift_once();
  }

  v28 = sub_766CA0();
  sub_BE38(v28, qword_9537A0);
  sub_766470();
  sub_766700();
  (*(v4 + 8))(v7, v3);
  [v27 firstBaselineFromTop];
  v38.origin.x = v11;
  v38.origin.y = v13;
  v38.size.width = v14;
  v38.size.height = v15;
  CGRectGetMinX(v38);
  v39.origin.x = v11;
  v39.origin.y = v13;
  v39.size.width = v14;
  v39.size.height = v15;
  CGRectGetMinY(v39);
  sub_769D20();
  return [v27 setFrame:?];
}

id sub_3E6374(void *a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_93CFD0 != -1)
    {
      swift_once();
    }

    v6 = sub_BD88(&unk_93F8F0);
    sub_BE38(v6, qword_9537D0);
    v7 = v1;
    sub_7592B0();

    return sub_76A150();
  }

  return result;
}

uint64_t type metadata accessor for TodayCardActionOverlayView()
{
  result = qword_953828;
  if (!qword_953828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3E65C4()
{
  result = type metadata accessor for Accessory();
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

unint64_t sub_3E66A8()
{
  result = qword_953838;
  if (!qword_953838)
  {
    sub_7600A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_953838);
  }

  return result;
}

void sub_3E6700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v6 = v5;
  v8 = a5;
  v5[OBJC_IVAR____TtC18ASMessagesProvider26TodayCardActionOverlayView_sizeCategory] = a5;
  [v5 setNeedsLayout];
  sub_4E0248(a2);
  sub_3E5798(v9);
  v10 = sub_765AE0();
  [v6 setBackgroundColor:v10];

  v11 = [v6 traitCollection];
  if (v8 != 4)
  {
    sub_765650();
    sub_765650();
  }

  [v11 layoutDirection];
  sub_769BB0();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [v6 setLayoutMargins:{v13, v15, v17, 15.0}];
  v18 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider26TodayCardActionOverlayView_label];
  sub_760090();
  sub_764C60();
  v20 = v19;

  if (v20)
  {
    v21 = sub_769210();
  }

  else
  {
    v21 = 0;
  }

  [v18 setText:v21];
}

uint64_t type metadata accessor for ArcadeSeeAllGamesButton()
{
  result = qword_9538F8;
  if (!qword_9538F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_3E6980(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_7664A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &v1[qword_9538F0];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 1;
  *&v1[qword_9538E8] = a1;
  v31.receiver = v1;
  v31.super_class = ObjectType;

  v9 = objc_msgSendSuper2(&v31, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = objc_allocWithZone(UIColor);
  v11 = v9;
  v12 = [v10 initWithRed:0.6 green:0.6 blue:0.6 alpha:1.0];
  [v11 setTintColor:v12];

  v13 = objc_opt_self();
  v14 = v11;
  v15 = [v13 whiteColor];
  [v14 setBackgroundColor:v15];

  [v14 addTarget:v14 action:"navigateToSeeAllGames" forControlEvents:64];
  v16 = sub_769210();
  v17 = [objc_opt_self() systemImageNamed:v16];

  [v14 setImage:v17 forState:0];
  if (qword_93D468 != -1)
  {
    swift_once();
  }

  v18 = sub_7666D0();
  v19 = sub_BE38(v18, qword_99E548);
  v20 = [v14 traitCollection];
  (*(*(v18 - 8) + 16))(v7, v19, v18);
  (*(v5 + 104))(v7, enum case for FontSource.useCase(_:), v4);
  v30[3] = v4;
  v30[4] = &protocol witness table for FontSource;
  v21 = sub_B1B4(v30);
  (*(v5 + 16))(v21, v7, v4);
  sub_765C10();
  v23 = v22;
  (*(v5 + 8))(v7, v4);
  sub_BEB8(v30);
  v24 = floor(v23);
  Main = JUScreenClassGetMain();

  if (Main == 1)
  {
    v24 = v24 + -5.0;
  }

  v26 = [objc_opt_self() configurationWithPointSize:v24];
  [v14 setPreferredSymbolConfiguration:v26 forImageInState:0];

  sub_75D600();
  sub_BD88(&qword_9477F0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_77B6D0;
  *(v27 + 32) = sub_767B80();
  *(v27 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_769F20();

  swift_unknownObjectRelease();

  return v14;
}

void sub_3E6DFC()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "layoutSubviews");
  [v0 bounds];
  Width = CGRectGetWidth(v9);
  [v0 bounds];
  Height = CGRectGetHeight(v10);
  if (Height >= Width)
  {
    Height = Width;
  }

  v3 = floor(Height * 0.5);
  v4 = [v0 layer];
  [v4 cornerRadius];
  v6 = v5;

  if (vabdd_f64(v6, v3) > COERCE_DOUBLE(1))
  {
    v7 = [v0 layer];
    [v7 setCornerRadius:v3];
  }
}

void sub_3E6EF8(void *a1)
{
  v1 = a1;
  sub_3E6DFC();
}

void sub_3E6F40(char *a1)
{
  v1 = &a1[qword_9538F0];
  if (a1[qword_9538F0 + 16])
  {
    v2 = qword_93D468;
    v3 = a1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = sub_7666D0();
    v5 = sub_BE38(v4, qword_99E548);
    v6 = [v3 traitCollection];
    sub_1A37FC(v5);
    v8 = v7;

    *v1 = v8;
    *(v1 + 1) = v8;
    v1[16] = 0;
  }
}

void sub_3E7024(char *a1)
{
  v1 = &a1[qword_9538F0];
  if (a1[qword_9538F0 + 16])
  {
    v2 = qword_93D468;
    v3 = a1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = sub_7666D0();
    v5 = sub_BE38(v4, qword_99E548);
    v6 = [v3 traitCollection];
    sub_1A37FC(v5);
    v8 = v7;

    *v1 = v8;
    *(v1 + 1) = v8;
    v1[16] = 0;
  }
}

id sub_3E7108()
{
  ObjectType = swift_getObjectType();
  v2 = sub_7664A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &v0[qword_9538F0];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  if (qword_93D468 != -1)
  {
    swift_once();
  }

  v7 = sub_7666D0();
  v8 = sub_BE38(v7, qword_99E548);
  v9 = [v0 traitCollection];
  (*(*(v7 - 8) + 16))(v5, v8, v7);
  (*(v3 + 104))(v5, enum case for FontSource.useCase(_:), v2);
  v19[3] = v2;
  v19[4] = &protocol witness table for FontSource;
  v10 = sub_B1B4(v19);
  (*(v3 + 16))(v10, v5, v2);
  sub_765C10();
  v12 = v11;
  (*(v3 + 8))(v5, v2);
  sub_BEB8(v19);
  v13 = floor(v12);
  Main = JUScreenClassGetMain();

  if (Main == 1)
  {
    v13 = v13 + -5.0;
  }

  v15 = [objc_opt_self() configurationWithPointSize:v13];
  [v0 setPreferredSymbolConfiguration:v15 forImageInState:0];

  v18.receiver = v0;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, "invalidateIntrinsicContentSize");
}

void sub_3E7388(void *a1)
{
  v1 = a1;
  sub_3E7108();
}

uint64_t sub_3E73D0()
{
  v1 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v1 - 8);
  v49 = v37 - v2;
  v3 = sub_758B40();
  v46 = *(v3 - 8);
  v47 = v3;
  __chkstk_darwin(v3);
  v48 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_75F340();
  v42 = *(v5 - 8);
  v43 = v5;
  __chkstk_darwin(v5);
  v45 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_760280();
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin(v7);
  v44 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_7687B0();
  __chkstk_darwin(v9 - 8);
  v41 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&unk_944FF0);
  __chkstk_darwin(v11 - 8);
  v40 = v37 - v12;
  v13 = sub_765490();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v17 - 8);
  v19 = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v37 - v21;
  __chkstk_darwin(v23);
  v25 = v37 - v24;
  v26 = *(v0 + qword_9538E8);
  sub_75A920();
  v37[0] = v26;
  sub_768880();
  v37[1] = v52;
  sub_75A710();
  v27 = sub_7570A0();
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  if (v29(v22, 1, v27) == 1)
  {
    sub_757090();
    if (v29(v22, 1, v27) != 1)
    {
      sub_10A2C(v22, &unk_93FD30);
    }
  }

  else
  {
    (*(v28 + 32))(v25, v22, v27);
    (*(v28 + 56))(v25, 0, 1, v27);
  }

  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  (*(v14 + 104))(v16, enum case for FlowPage.arcadeSeeAllGames(_:), v13);
  sub_50690(v25, v19);
  v30 = sub_759E30();
  (*(*(v30 - 8) + 56))(v40, 1, 1, v30);
  v50 = 0u;
  v51 = 0u;
  sub_768790();
  (*(v38 + 104))(v44, enum case for FlowPresentationContext.infer(_:), v39);
  (*(v42 + 104))(v45, enum case for FlowAnimationBehavior.infer(_:), v43);
  (*(v46 + 104))(v48, enum case for FlowOrigin.inapp(_:), v47);
  sub_768CE0();
  sub_758B20();
  swift_allocObject();
  v31 = sub_758AD0();
  v32 = sub_BD88(&unk_93F630);
  v33 = v49;
  v34 = v37[0];
  sub_768860();
  v35 = *(v32 - 8);
  if ((*(v35 + 48))(v33, 1, v32) == 1)
  {
    sub_10A2C(v25, &unk_93FD30);

    return sub_10A2C(v33, &unk_93F980);
  }

  else
  {
    sub_32AC14(v31, 1, v34, v33);

    sub_10A2C(v25, &unk_93FD30);
    return (*(v35 + 8))(v33, v32);
  }
}

void sub_3E7B40(void *a1)
{
  v1 = a1;
  sub_3E73D0();
}

unint64_t sub_3E7BF4()
{
  result = qword_953948;
  if (!qword_953948)
  {
    sub_75E990();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_953948);
  }

  return result;
}

uint64_t sub_3E7C4C(uint64_t a1, uint64_t a2)
{
  v12[1] = a2;
  v3 = sub_7687C0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7685A0();
  __chkstk_darwin(v7 - 8);
  if (qword_93DF00 != -1)
  {
    swift_once();
  }

  v8 = sub_768FF0();
  sub_BE38(v8, qword_9A0430);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77B6D0;
  sub_768590();
  v14._object = 0x80000000007E0050;
  v14._countAndFlagsBits = 0xD000000000000018;
  sub_768580(v14);
  v9 = sub_75AD70();
  v13[3] = v9;
  v10 = sub_B1B4(v13);
  (*(*(v9 - 8) + 16))(v10, a1, v9);
  sub_768560();
  sub_BDD0(v13);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_768580(v15);
  sub_7685B0();
  sub_768E80();

  (*(v4 + 104))(v6, enum case for ActionOutcome.performed(_:), v3);
  sub_768F60();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_3E7F34()
{
  v0 = sub_7685A0();
  __chkstk_darwin(v0 - 8);
  if (qword_93DF00 != -1)
  {
    swift_once();
  }

  v1 = sub_768FF0();
  sub_BE38(v1, qword_9A0430);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77B6D0;
  sub_768590();
  v6._object = 0x80000000007E0030;
  v6._countAndFlagsBits = 0xD00000000000001BLL;
  sub_768580(v6);
  swift_getErrorValue();
  v5[3] = v4;
  v2 = sub_B1B4(v5);
  (*(*(v4 - 8) + 16))(v2);
  sub_768560();
  sub_BDD0(v5);
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  sub_768580(v7);
  sub_7685B0();
  sub_768EA0();

  swift_getObjectType();
  sub_758360();
  return sub_768F50();
}

uint64_t sub_3E8198()
{
  v0 = sub_764CF0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v14 - v5;
  sub_BD88(&qword_94DDC0);
  v7 = sub_768F90();
  sub_75E970();
  sub_75E980();
  sub_765460();
  sub_768900();
  sub_768ED0();
  sub_BD88(&unk_944300);
  sub_768ED0();
  v14 = v15;
  sub_765440();
  (*(v1 + 16))(v3, v6, v0);
  v8 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v9 = (v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v10 + 16) = v14;
  (*(v1 + 32))(v10 + v8, v3, v0);
  *(v10 + v9) = v7;
  v11 = sub_12EA98();
  swift_retain_n();
  swift_unknownObjectRetain();
  v12 = sub_769970();
  v16 = v11;
  v17 = &protocol witness table for OS_dispatch_queue;
  *&v15 = v12;
  sub_768F10();
  swift_unknownObjectRelease();

  (*(v1 + 8))(v6, v0);
  sub_BEB8(&v15);
  return v7;
}

uint64_t sub_3E8470()
{
  v1 = sub_764CF0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_3E8548()
{
  sub_764CF0();

  return sub_3E7F34();
}

double sub_3E8634()
{
  v0 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v0 - 8);
  v2 = &v79 - v1;
  v89 = sub_76A920();
  v3 = *(v89 - 8);
  __chkstk_darwin(v89);
  v83 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_766690();
  v87 = *(v5 - 8);
  v88 = v5;
  __chkstk_darwin(v5);
  v86 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7656A0();
  v85 = *(v7 - 8);
  __chkstk_darwin(v7);
  v84 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v79 - v10;
  v12 = sub_7656C0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v79 - v17;
  sub_75A2D0();
  sub_3E95E4(&qword_953960, &type metadata accessor for FramedArtwork);
  sub_75C750();
  if (!aBlock[0])
  {
    return 0.0;
  }

  v81 = v3;
  v82 = v2;

  v19 = sub_759430();
  swift_getKeyPath();
  sub_75C7B0();

  v20 = (v13 + 8);
  if (v19)
  {
    sub_765630();
    v22 = v21;
    (*v20)(v18, v12);
  }

  else
  {
    sub_765580();
    v24 = *v20;
    (*v20)(v18, v12);
    v80 = v24;
    swift_getKeyPath();
    sub_75C7B0();

    sub_7655A0();
    v24(v15, v12);
    v25 = v85;
    (*(v85 + 104))(v11, enum case for PageGrid.Direction.vertical(_:), v7);
    swift_getKeyPath();
    sub_75C7B0();

    sub_765590();
    v26 = v80;
    v80(v15, v12);
    (*(v25 + 16))(v84, v11, v7);
    sub_40DC7C(0.0);
    sub_765670();
    (*(v25 + 8))(v11, v7);
    sub_765630();
    v22 = v27;
    v26(v18, v12);
  }

  v28 = sub_75A2C0();
  v29 = v89;
  if (v28)
  {
    sub_765260();
    v30 = v86;
    sub_7666A0();
    sub_766660();
    v32 = v31;
    (*(v87 + 8))(v30, v88);
    v33 = sub_759430();

    if (v22 >= v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = v22;
    }

    if (v33)
    {
      v34 = v32;
    }

    v23 = v34 + 0.0;
  }

  else
  {
    v23 = 0.0;
  }

  v35 = sub_759450();
  v36 = [v35 length];

  if (v36 < 1)
  {

    return v23;
  }

  v37 = 0.0;
  sub_769DA0();
  sub_759460();
  v38 = &qword_93E000;
  if (v39)
  {
    if (qword_93DA18 != -1)
    {
      swift_once();
    }

    v40 = sub_7666D0();
    sub_BE38(v40, qword_99F640);
    swift_getKeyPath();
    sub_75C7B0();

    v41 = sub_7653B0();
    v92 = v41;
    v93 = sub_3E95E4(&qword_93F9B0, &type metadata accessor for Feature);
    v42 = sub_B1B4(aBlock);
    (*(*(v41 - 8) + 104))(v42, enum case for Feature.measurement_with_labelplaceholder(_:), v41);
    sub_765C30();
    sub_BEB8(aBlock);
    sub_762CB0();
    swift_unknownObjectRelease();

    v43 = v83;
    if (qword_93E250 != -1)
    {
      swift_once();
    }

    v44 = sub_766CA0();
    sub_BE38(v44, qword_9A09B8);
    swift_getKeyPath();
    sub_75C7B0();

    sub_766470();
    sub_766700();
    v46 = v45;
    swift_unknownObjectRelease();
    v47 = *(v81 + 8);
    v47(v43, v29);
    if (qword_93E260 != -1)
    {
      swift_once();
    }

    sub_BE38(v44, qword_9A09E8);
    swift_getKeyPath();
    sub_75C7B0();

    sub_766470();
    sub_766700();
    v49 = v48;
    swift_unknownObjectRelease();
    v47(v43, v29);
    v50 = v46 + v49;
    if (qword_93E258 != -1)
    {
      swift_once();
    }

    sub_BE38(v44, qword_9A09D0);
    swift_getKeyPath();
    sub_75C7B0();

    sub_766470();
    sub_766700();
    v52 = v51;
    swift_unknownObjectRelease();
    v47(v43, v29);
    v37 = v50 + v52;
    v38 = &qword_93E000;
  }

  v53 = sub_759450();

  swift_getKeyPath();
  sub_75C7B0();

  v54 = v95;
  v55 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v53];
  v56 = [v53 length];
  v57 = swift_allocObject();
  *(v57 + 16) = 0;
  *(v57 + 24) = v54;
  *(v57 + 32) = v55;
  *(v57 + 40) = 1;
  v58 = swift_allocObject();
  v58[2] = sub_119AC;
  v58[3] = v57;
  v93 = sub_2636C;
  v94 = v58;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10C1C;
  v92 = &unk_8908C0;
  v59 = _Block_copy(aBlock);
  v60 = v54;
  v61 = v55;

  [v53 enumerateAttributesInRange:0 options:v56 usingBlock:{0x100000, v59}];

  _Block_release(v59);
  LOBYTE(v53) = swift_isEscapingClosureAtFileLocation();

  if (v53)
  {
    __break(1u);
    goto LABEL_37;
  }

  v62 = qword_93DA10;
  v58 = v61;
  if (v62 != -1)
  {
LABEL_37:
    swift_once();
  }

  v63 = sub_7666D0();
  v64 = sub_BE38(v63, qword_99F628);
  v65 = *(v63 - 8);
  v66 = v82;
  (*(v65 + 16))(v82, v64, v63);
  (*(v65 + 56))(v66, 0, 1, v63);
  swift_getKeyPath();
  sub_75C7B0();

  v67 = sub_7653B0();
  v92 = v67;
  v93 = sub_3E95E4(&qword_93F9B0, &type metadata accessor for Feature);
  v68 = sub_B1B4(aBlock);
  (*(*(v67 - 8) + 104))(v68, enum case for Feature.measurement_with_labelplaceholder(_:), v67);
  sub_765C30();
  sub_BEB8(aBlock);
  sub_762CA0();
  v70 = v69;

  swift_unknownObjectRelease();
  sub_11A38(v66);
  if (qword_93E250 != -1)
  {
    swift_once();
  }

  v71 = sub_766CA0();
  sub_BE38(v71, qword_9A09B8);
  swift_getKeyPath();
  sub_75C7B0();

  sub_766720();
  v73 = v72;
  swift_unknownObjectRelease();
  v74 = v70 + v73;
  if (v38[75] != -1)
  {
    swift_once();
  }

  sub_BE38(v71, qword_9A09D0);
  swift_getKeyPath();
  sub_75C7B0();

  sub_7666F0();
  v76 = v75;
  swift_unknownObjectRelease();

  v77 = v74 + v76;
  if (v37 > v74 + v76)
  {
    v77 = v37;
  }

  return v23 + v77;
}

uint64_t sub_3E9570()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_3E95C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_3E95E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_3E9694(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  v7 = sub_7664A0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93CFF8 != -1)
  {
    swift_once();
  }

  v11 = sub_7666D0();
  v12 = sub_BE38(v11, qword_953A10);
  (*(*(v11 - 8) + 16))(v10, v12, v11);
  (*(v8 + 104))(v10, enum case for FontSource.useCase(_:), v7);
  *a2 = sub_766CA0();
  *a3 = &protocol witness table for StaticDimension;
  sub_B1B4(a4);
  v16[3] = v7;
  v16[4] = &protocol witness table for FontSource;
  v13 = sub_B1B4(v16);
  (*(v8 + 16))(v13, v10, v7);
  sub_766CB0();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_3E9880()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_953A10);
  v1 = sub_BE38(v0, qword_953A10);
  if (qword_93DAC0 != -1)
  {
    swift_once();
  }

  v2 = sub_BE38(v0, qword_99F838);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_3E99B0()
{
  v1 = v0;
  v20.receiver = v0;
  v20.super_class = type metadata accessor for GenericAccountPageViewController();
  objc_msgSendSuper2(&v20, "viewDidLoad");
  v2 = [v0 navigationItem];
  [v2 setLargeTitleDisplayMode:2];

  v3 = [v1 navigationItem];
  sub_762270();
  if (v4)
  {
    v5 = sub_769210();
  }

  else
  {
    v5 = 0;
  }

  [v3 setTitle:v5];

  sub_3EECE0(&qword_953B08, v6, type metadata accessor for GenericAccountPageViewController);
  swift_unknownObjectRetain();
  sub_762250();
  [v1 setViewRespectsSystemMinimumLayoutMargins:0];
  result = [v1 tableView];
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v8 = result;
  [result setLayoutMargins:{0.0, 16.0, 0.0, 16.0}];

  result = [v1 tableView];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = result;
  [result setAlwaysBounceVertical:1];

  result = [v1 tableView];
  if (!result)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v10 = result;
  sub_BE70(0, &unk_953B10);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v12)
  {
    sub_769240();
    v12 = sub_769210();
  }

  [v10 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v12];

  result = [v1 tableView];
  if (!result)
  {
    goto LABEL_20;
  }

  v13 = result;
  type metadata accessor for LinkableFooterView();
  v14 = swift_getObjCClassFromMetadata();
  v15 = NSStringFromClass(v14);
  if (!v15)
  {
    sub_769240();
    v15 = sub_769210();
  }

  [v13 registerClass:v14 forHeaderFooterViewReuseIdentifier:v15];

  result = [v1 tableView];
  if (!result)
  {
    goto LABEL_21;
  }

  v16 = result;
  _s18ASMessagesProvider10HeaderViewCMa_0();
  v17 = swift_getObjCClassFromMetadata();
  v18 = NSStringFromClass(v17);
  if (!v18)
  {
    sub_769240();
    v18 = sub_769210();
  }

  [v16 registerClass:v17 forHeaderFooterViewReuseIdentifier:v18];

  result = [v1 tableView];
  if (result)
  {
    v19 = result;
    [result setRowHeight:UITableViewAutomaticDimension];

    return sub_75A160();
  }

LABEL_22:
  __break(1u);
  return result;
}

void sub_3E9F30()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for GenericAccountPageViewController();
  objc_msgSendSuper2(&v15, "viewWillLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider32GenericAccountPageViewController_overlayViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v2 view];
    if (v3)
    {
      v4 = v3;
      v5 = [v0 view];
      if (v5)
      {
        v6 = v5;
        [v5 bounds];
        v8 = v7;
        v10 = v9;
        v12 = v11;
        v14 = v13;

        [v4 setFrame:{v8, v10, v12, v14}];
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_3EA0D8(void *a1)
{
  v2 = v1;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for GenericAccountPageViewController();
  objc_msgSendSuper2(&v16, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = sub_7699F0();

  if (!a1 || ((sub_7699F0() ^ v5) & 1) != 0)
  {
    goto LABEL_3;
  }

  v8 = [v2 traitCollection];
  v9 = [v8 preferredContentSizeCategory];

  v10 = [a1 preferredContentSizeCategory];
  v11 = sub_769240();
  v13 = v12;
  if (v11 == sub_769240() && v13 == v14)
  {

    return;
  }

  v15 = sub_76A950();

  if ((v15 & 1) == 0)
  {
LABEL_3:
    v6 = [v2 tableView];
    if (v6)
    {
      v7 = v6;
      [v6 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_3EA384(void *a1)
{
  v3 = sub_75D130();
  v116 = *(v3 - 8);
  v117 = v3;
  __chkstk_darwin(v3);
  v114 = v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v115 = v111 - v6;
  v7 = sub_75D160();
  v119 = *(v7 - 1);
  v120 = v7;
  __chkstk_darwin(v7);
  v118 = v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_76A920();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v10 = v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&qword_953AF0);
  __chkstk_darwin(v11 - 8);
  v13 = v111 - v12;
  v14 = sub_75A990();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v111 - v19;
  v111[1] = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32GenericAccountPageViewController_presenter];
  sub_7621F0();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    goto LABEL_74;
  }

  v121 = v15;
  v122 = v14;
  (*(v15 + 32))(v20, v13, v14);
  v126 = v20;
  v21 = sub_3EB724(v20);
  sub_BE70(0, &qword_93F900);
  if (qword_93CFF8 != -1)
  {
    swift_once();
  }

  v123 = v1;
  v22 = sub_7666D0();
  sub_BE38(v22, qword_953A10);
  v124 = a1;
  v23 = [a1 traitCollection];
  v24 = sub_769E10();

  v25 = [v21 textLabel];
  if (v25)
  {
    v26 = v25;
    [v25 setFont:v24];
  }

  v125 = v24;
  v27 = [v21 textLabel];
  if (v27)
  {
    v28 = v27;
    [v27 setNumberOfLines:0];
  }

  v29 = [v21 textLabel];
  if (v29)
  {
    v30 = v29;
    [v29 setLineBreakMode:0];
  }

  v31 = [v21 textLabel];
  if (v31)
  {
    v32 = v31;
    v33 = [objc_opt_self() labelColor];
    [v32 setTextColor:v33];
  }

  v34 = [v21 detailTextLabel];
  if (v34)
  {
    v35 = v34;
    [v34 setFont:v125];
  }

  v36 = [v21 detailTextLabel];
  if (v36)
  {
    v37 = v36;
    [v36 setNumberOfLines:0];
  }

  v38 = [v21 detailTextLabel];
  if (v38)
  {
    v39 = v38;
    [v38 setLineBreakMode:0];
  }

  v40 = [v21 detailTextLabel];
  v41 = v123;
  if (v40)
  {
    v42 = v40;
    v43 = [objc_opt_self() labelColor];
    [v42 setTextColor:v43];
  }

  [v21 setAccessoryType:0];
  [v21 setAccessoryView:0];
  v13 = v21;
  [v13 setUserInteractionEnabled:0];
  if (qword_93CFE0 != -1)
  {
    swift_once();
  }

  sub_B170(qword_953998, qword_9539B0);
  sub_33964();
  sub_766700();
  v45 = v44;
  (*(v112 + 8))(v10, v113);
  v46 = v124;
  [v124 layoutMargins];
  v48 = v47;
  [v46 layoutMargins];
  [v13 setLayoutMargins:{v45, v48, v45}];
  v50 = v121;
  v49 = v122;
  (*(v121 + 16))(v17, v126, v122);
  v51 = (*(v50 + 88))(v17, v49);
  if (v51 == enum case for AccountSection.ContentItem.link(_:))
  {
    (*(v50 + 96))(v17, v49);
    (*(v119 + 32))(v118, v17, v120);
    v52 = [v13 textLabel];
    if (v52)
    {
      v53 = v52;
      sub_75D150();
      v54 = sub_769210();

      [v53 setText:v54];
    }

    sub_75D140();
    (*(v116 + 104))(v114, enum case for AccountSectionLink.LinkDisplayType.navigation(_:), v117);
    sub_3EECE0(&qword_953AF8, 255, &type metadata accessor for AccountSectionLink.LinkDisplayType);
    sub_769430();
    sub_769430();
    v55 = &selRef_setTextAlignment_;
    if (aBlock == v133 && v128 == v134)
    {
      v56 = v117;
      v57 = *(v116 + 8);
      v57(v114, v117);
      v57(v115, v56);
    }

    else
    {
      v68 = sub_76A950();
      v69 = *(v116 + 8);
      v70 = v49;
      v71 = v41;
      v72 = v117;
      v69(v114, v117);
      v73 = v72;
      v41 = v71;
      v49 = v70;
      v55 = &selRef_setTextAlignment_;
      v69(v115, v73);

      if ((v68 & 1) == 0)
      {
        v88 = [v13 textLabel];
        v74 = &selRef_setTextAlignment_;
        if (v88)
        {
          v89 = v88;
          v90 = [v124 tintColor];
          [v89 setTextColor:v90];
        }

        goto LABEL_37;
      }
    }

    [v13 setAccessoryType:1];
    v74 = &selRef_setTextAlignment_;
LABEL_37:
    [v13 v74[6]];

    (*(v119 + 8))(v118, v120);
LABEL_60:
    v64 = &selRef_setInterGroupSpacing_;
    goto LABEL_61;
  }

  if (v51 != enum case for AccountSection.ContentItem.infoListItem(_:))
  {
    if (v51 != enum case for AccountSection.ContentItem.text(_:))
    {
      if (v51 == enum case for AccountSection.ContentItem.personalizedRecommendationsToggle(_:))
      {
        (*(v50 + 96))(v17, v49);
        v91 = *(v17 + 1);
        v92 = v17[16];
        sub_BE70(0, &qword_955FA0);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        v93 = sub_76A1F0();
        v94 = [objc_allocWithZone(UISwitch) initWithFrame:v93 primaryAction:{0.0, 0.0, 0.0, 0.0}];

        v95 = sub_762230();
        if (v95 == 2)
        {
          v96 = v92;
        }

        else
        {
          v96 = v95;
        }

        [v94 setOn:v96 & 1];
        [v13 setAccessoryView:v94];
        v97 = [v13 textLabel];
        if (v97)
        {
          v98 = v97;
          v55 = &selRef_setTextAlignment_;
          if (v91)
          {
            v99 = sub_769210();
          }

          else
          {
            v99 = 0;
          }

          [v98 setText:v99];
        }

        else
        {

          v55 = &selRef_setTextAlignment_;
        }

        [v13 setUserInteractionEnabled:1];

        goto LABEL_60;
      }

      (*(v50 + 8))(v17, v49);
      goto LABEL_55;
    }

    (*(v50 + 96))(v17, v49);
    v75 = [v13 textLabel];
    v64 = &selRef_setInterGroupSpacing_;
    if (v75)
    {
      v76 = v75;
      v77 = [objc_opt_self() secondaryLabelColor];
      [v76 setTextColor:v77];
    }

    v78 = [v13 textLabel];
    v55 = &selRef_setTextAlignment_;
    if (!v78)
    {
      goto LABEL_44;
    }

    v120 = v78;
    sub_75D170();
    v79 = sub_7658D0();

    v80 = [v124 traitCollection];
    v81 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v79];
    v124 = [v79 length];
    v82 = swift_allocObject();
    *(v82 + 16) = 0;
    *(v82 + 24) = v80;
    *(v82 + 32) = v81;
    *(v82 + 40) = 1;
    v83 = swift_allocObject();
    *(v83 + 16) = sub_119AC;
    *(v83 + 24) = v82;
    v131 = sub_2636C;
    v132 = v83;
    aBlock = _NSConcreteStackBlock;
    v128 = 1107296256;
    v129 = sub_10C1C;
    v130 = &unk_890960;
    v84 = _Block_copy(&aBlock);
    v85 = v80;
    v86 = v81;

    [v79 enumerateAttributesInRange:0 options:v124 usingBlock:{0x100000, v84}];

    _Block_release(v84);
    LOBYTE(v84) = swift_isEscapingClosureAtFileLocation();

    if ((v84 & 1) == 0)
    {
      v87 = v120;
      [v120 setAttributedText:v86];

      v49 = v122;
      v41 = v123;
      v50 = v121;
LABEL_55:
      v55 = &selRef_setTextAlignment_;
      goto LABEL_60;
    }

    __break(1u);
LABEL_74:
    sub_10A2C(v13, &qword_953AF0);
    result = sub_76A840();
    __break(1u);
    return result;
  }

  (*(v50 + 96))(v17, v49);
  v58 = [v13 textLabel];
  if (v58)
  {
    v59 = v58;
    sub_761950();
    v60 = sub_769210();

    [v59 setText:v60];
  }

  v61 = [v13 textLabel];
  v55 = &selRef_setTextAlignment_;
  if (v61)
  {
    v62 = v61;
    sub_BE70(0, &qword_93E540);
    v63 = sub_769FF0();
    [v62 setTextColor:v63];
  }

  v64 = &selRef_setInterGroupSpacing_;
  v65 = [v13 detailTextLabel];
  if (v65)
  {
    v66 = v65;
    sub_761960();
    v67 = sub_769210();

    [v66 setText:v67];

    v64 = &selRef_setInterGroupSpacing_;
  }

LABEL_44:

LABEL_61:
  v100 = [v13 textLabel];
  if (v100)
  {
    v101 = v100;
    v102 = [v41 v55[23]];
    v103 = sub_7699F0();

    if (v103)
    {
      v104 = 2;
    }

    else
    {
      v104 = 0;
    }

    [v101 setTextAlignment:v104];
  }

  v105 = [v13 v64[155]];
  if (v105)
  {
    v106 = v105;
    v107 = [v41 v55[23]];
    v108 = sub_7699F0();

    if (v108)
    {
      v109 = 2;
    }

    else
    {
      v109 = 0;
    }

    [v106 setTextAlignment:v109];

    (*(v50 + 8))(v126, v49);
  }

  else
  {
    (*(v50 + 8))(v126, v49);
  }

  return v13;
}

void sub_3EB4E0(void *a1)
{
  if ([a1 sender])
  {
    sub_76A510();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    sub_BE70(0, &qword_953B00);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v2 = Strong;

        [v3 isOn];
        sub_762240();
      }
    }
  }

  else
  {
    sub_10A2C(v6, &unk_93FBD0);
  }
}

id sub_3EB724(uint64_t a1)
{
  v2 = v1;
  v4 = sub_75A990();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  if ((*(v5 + 88))(v8, v4) == enum case for AccountSection.ContentItem.infoListItem(_:))
  {
    (*(v5 + 8))(v8, v4);
    result = [v2 tableView];
    if (result)
    {
      v10 = result;
      v11 = sub_769210();
      v12 = [v10 dequeueReusableCellWithIdentifier:v11];

      if (!v12)
      {
        v13 = objc_allocWithZone(UITableViewCell);
        v14 = sub_769210();
        v12 = [v13 initWithStyle:1 reuseIdentifier:v14];
      }

      return v12;
    }

    __break(1u);
  }

  else
  {
    result = [v2 tableView];
    if (result)
    {
      v15 = result;
      v16 = sub_769210();
      v12 = [v15 dequeueReusableCellWithIdentifier:v16];

      if (!v12)
      {
        v17 = objc_allocWithZone(UITableViewCell);
        v18 = sub_769210();
        v12 = [v17 initWithStyle:0 reuseIdentifier:v18];
      }

      (*(v5 + 8))(v8, v4);
      return v12;
    }
  }

  __break(1u);
  return result;
}

id sub_3EB9E4(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  a5(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = a3;
  v9 = a1;
  v10 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v10)
  {
    sub_769240();
    v10 = sub_769210();
  }

  v11 = [v8 dequeueReusableHeaderFooterViewWithIdentifier:v10];

  return v11;
}

void sub_3EBAA4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_76A920();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10 = sub_762260();
    if (v11)
    {
      v12 = v10;
      v13 = v11;
      if (qword_93CFF0 != -1)
      {
        swift_once();
      }

      sub_B170(qword_9539E8, qword_953A00);
      sub_33964();
      sub_766700();
      (*(v7 + 8))(v9, v6);
      [a1 layoutMargins];
      [a1 layoutMargins];
      v14 = [v2 tableView];
      if (v14)
      {
        v15 = v14;
        [v14 layoutMargins];

        v16 = [v3 tableView];
        if (v16)
        {
          v17 = v16;
          [v16 layoutMargins];

          [a1 frame];
          CGRectGetWidth(v19);
          sub_3EE524(v12, v13, a1);

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }
}

void sub_3EBD68(void *a1, void *a2)
{
  v5 = sub_76A920();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s18ASMessagesProvider10HeaderViewCMa_0();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    v32 = a2;
    v11 = sub_762260();
    if (v12)
    {
      v30[1] = v11;
      v31 = v2;
      v13 = qword_93CFF0;
      v14 = v32;
      if (v13 != -1)
      {
        swift_once();
      }

      sub_B170(qword_9539E8, qword_953A00);
      sub_33964();
      sub_766700();
      v16 = v15;
      (*(v6 + 8))(v8, v5);
      [a1 layoutMargins];
      v18 = v17;
      [a1 layoutMargins];
      [v10 setLayoutMargins:{0.0, v18, v16}];

      v19 = v14;
      v20 = [v10 textLabel];
      if (v20)
      {
        v21 = v20;
        v22 = sub_769210();

        [v21 setText:v22];
      }

      else
      {
      }

      v26 = [v10 textLabel];

      if (v26)
      {
        v27 = [v31 traitCollection];
        v28 = sub_7699F0();

        if (v28)
        {
          v29 = 2;
        }

        else
        {
          v29 = 0;
        }

        [v26 setTextAlignment:v29];
      }
    }

    else
    {
      v23 = [v10 textLabel];
      if (v23)
      {
        v24 = v23;
        [v23 setText:0];
      }

      v25 = v32;
    }
  }
}

uint64_t sub_3EC124(void *a1, uint64_t a2)
{
  v5 = sub_75D130();
  v70 = *(v5 - 8);
  v71 = v5;
  __chkstk_darwin(v5);
  v68 = v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v69 = v66 - v8;
  v9 = sub_75D160();
  v73 = *(v9 - 8);
  v74 = v9;
  __chkstk_darwin(v9);
  v72 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&qword_953AF0);
  __chkstk_darwin(v11 - 8);
  v13 = v66 - v12;
  v14 = sub_75A990();
  v15 = *(v14 - 8);
  v79 = v14;
  v80 = v15;
  __chkstk_darwin(v14);
  v67 = v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v75 = v66 - v18;
  v19 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v19 - 8);
  v21 = v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v66 - v23;
  v25 = sub_768430();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = (v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = v2;
  v78 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider32GenericAccountPageViewController_presenter);
  result = sub_762280();
  if (result)
  {
    v76 = result;
    v66[1] = a2;
    v30.super.isa = sub_757550().super.isa;
    v31 = a1;
    isa = v30.super.isa;
    v66[0] = v31;
    v33 = [v31 cellForRowAtIndexPath:v30.super.isa];

    if (v33)
    {
      v34 = v33;
      [v34 bounds];
      LOBYTE(v101[0]) = 1;
      *&v83 = v33;
      *(&v83 + 1) = v35;
      *&v84 = v36;
      *(&v84 + 1) = v37;
      *&v85 = v38;
      BYTE8(v85) = 1;
      __asm { FMOV            V0.2D, #10.0 }

      v86 = _Q0;
      v87 = _Q0;
      v88 = 15;
      sub_BE70(0, &qword_940340);
      *v28 = sub_769970();
      (*(v26 + 104))(v28, enum case for DispatchPredicate.onQueue(_:), v25);
      v44 = sub_768460();
      result = (*(v26 + 8))(v28, v25);
      if ((v44 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v91 = xmmword_94DD18;
      v92 = xmmword_94DD28;
      v93 = xmmword_94DD38;
      v89 = xmmword_94DCF8;
      v90 = xmmword_94DD08;
      v97 = v85;
      v98 = v86;
      v99 = v87;
      v95 = v83;
      v96 = v84;
      v101[0] = xmmword_94DCF8;
      v101[1] = xmmword_94DD08;
      v101[3] = xmmword_94DD28;
      v101[4] = xmmword_94DD38;
      v94 = qword_94DD48;
      v100 = v88;
      v102 = qword_94DD48;
      v101[2] = xmmword_94DD18;
      sub_1781E4(&v89, v81);
      xmmword_94DD18 = v97;
      xmmword_94DD28 = v98;
      xmmword_94DD38 = v99;
      qword_94DD48 = v100;
      xmmword_94DCF8 = v95;
      xmmword_94DD08 = v96;
      sub_10A2C(v101, &unk_93FEF0);
      v45 = *(v77 + OBJC_IVAR____TtC18ASMessagesProvider32GenericAccountPageViewController_objectGraph);
      v46 = sub_BD88(&unk_93F630);
      sub_45C2C(&v83, v81);
      sub_768860();
      v47 = *(v46 - 8);
      if ((*(v47 + 48))(v24, 1, v46) == 1)
      {
        sub_10A2C(v24, &unk_93F980);
      }

      else
      {

        sub_32A6C0(v53, 1, v45, v24);

        (*(v47 + 8))(v24, v46);
      }

      v81[2] = xmmword_94DD18;
      v81[3] = xmmword_94DD28;
      v81[4] = xmmword_94DD38;
      v82 = qword_94DD48;
      v81[0] = xmmword_94DCF8;
      v81[1] = xmmword_94DD08;
      xmmword_94DCF8 = v89;
      xmmword_94DD08 = v90;
      xmmword_94DD18 = v91;
      xmmword_94DD28 = v92;
      xmmword_94DD38 = v93;
      qword_94DD48 = v94;
      sub_10A2C(v81, &unk_93FEF0);
      sub_45C88(&v83);

      v54 = v79;
      v52 = v80;
    }

    else
    {
      v48 = *(v77 + OBJC_IVAR____TtC18ASMessagesProvider32GenericAccountPageViewController_objectGraph);
      v49 = sub_BD88(&unk_93F630);
      sub_768860();
      v50 = *(v49 - 8);
      v51 = (*(v50 + 48))(v21, 1, v49);
      v52 = v80;
      if (v51 == 1)
      {
        sub_10A2C(v21, &unk_93F980);
      }

      else
      {

        sub_32A6C0(v55, 1, v48, v21);

        (*(v50 + 8))(v21, v49);
      }

      v54 = v79;
    }

    sub_7621F0();
    if ((*(v52 + 48))(v13, 1, v54) == 1)
    {

      return sub_10A2C(v13, &qword_953AF0);
    }

    v56 = v75;
    (*(v52 + 32))();
    v57 = v67;
    (*(v52 + 16))(v67, v56, v54);
    if ((*(v52 + 88))(v57, v54) != enum case for AccountSection.ContentItem.link(_:))
    {
      v61 = *(v52 + 8);
      v61(v56, v54);

      return (v61)(v57, v54);
    }

    (*(v52 + 96))(v57, v54);
    (*(v73 + 32))(v72, v57, v74);
    sub_75D140();
    (*(v70 + 104))(v68, enum case for AccountSectionLink.LinkDisplayType.action(_:), v71);
    sub_3EECE0(&qword_953AF8, 255, &type metadata accessor for AccountSectionLink.LinkDisplayType);
    sub_769430();
    sub_769430();
    if (v101[0] == v95)
    {
      v58 = v71;
      v59 = *(v70 + 8);
      v59(v68, v71);
      v59(v69, v58);
      v56 = v75;

      v60 = v66[0];
    }

    else
    {
      v62 = sub_76A950();
      v63 = v71;
      v64 = *(v70 + 8);
      v64(v68, v71);
      v64(v69, v63);
      v52 = v80;

      v60 = v66[0];
      if ((v62 & 1) == 0)
      {

        goto LABEL_21;
      }
    }

    v65 = sub_757550().super.isa;
    [v60 deselectRowAtIndexPath:v65 animated:1];

LABEL_21:
    (*(v73 + 8))(v72, v74);
    return (*(v52 + 8))(v56, v54);
  }

  return result;
}

id sub_3ECC98(void *a1, uint64_t a2)
{
  sub_3ED0C4(a1, a2);
  result = [v2 tableView];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  [result layoutMargins];

  result = [v2 tableView];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  [result layoutMargins];

  result = sub_762290();
  if (result)
  {
    [a1 frame];
    CGRectGetWidth(v9);
    v7 = sub_759CD0();
    sub_3EE848(v7, v8, a1);
  }

  return result;
}

void sub_3ECE40(void *a1, void *a2, uint64_t a3)
{
  type metadata accessor for LinkableFooterView();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v9 = a2;
    if (sub_762290())
    {
      v10 = v9;
      [v8 setLayoutMargins:{sub_3ED0C4(a1, a3)}];

      v11 = OBJC_IVAR____TtC18ASMessagesProviderP33_325AD3F8116EAD3DD531EDE1E760761818LinkableFooterView_linkedLabel;
      v12 = *&v8[OBJC_IVAR____TtC18ASMessagesProviderP33_325AD3F8116EAD3DD531EDE1E760761818LinkableFooterView_linkedLabel];
      v13 = sub_759CF0();
      v14 = sub_22A974(v13, sub_30AE4);

      v15 = sub_759CE0();
      sub_4ED3B8(v15, 0, v14);

      v18 = *&v8[v11];
      v16 = [v3 traitCollection];
      LOBYTE(v14) = sub_7699F0();

      if (v14)
      {
        v17 = 2;
      }

      else
      {
        v17 = 0;
      }

      [v18 setTextAlignment:v17];
    }

    else
    {
      v18 = *&v8[OBJC_IVAR____TtC18ASMessagesProviderP33_325AD3F8116EAD3DD531EDE1E760761818LinkableFooterView_linkedLabel];
      sub_4ED68C();
    }
  }
}

double sub_3ED0C4(void *a1, uint64_t a2)
{
  v5 = sub_76A920();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_762220();
  if (__OFSUB__(v9, 1))
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_8;
  }

  if (v9 - 1 == a2)
  {
    v13[1] = 0x4041800000000000;
    sub_766470();
  }

  else
  {
    if (qword_93CFD8 != -1)
    {
      swift_once();
    }

    sub_B170(qword_953970, qword_953988);
    sub_33964();
  }

  sub_766700();
  v2 = *(v6 + 8);
  v2(v8, v5);
  if (qword_93CFE8 != -1)
  {
    goto LABEL_10;
  }

LABEL_8:
  sub_B170(qword_9539C0, qword_9539D8);
  sub_33964();
  sub_766700();
  v11 = v10;
  v2(v8, v5);
  [a1 layoutMargins];
  [a1 layoutMargins];
  return v11;
}

void sub_3ED33C()
{
  v1 = v0;
  v2 = [v0 navigationItem];
  sub_762270();
  if (v3)
  {
    v4 = sub_769210();
  }

  else
  {
    v4 = 0;
  }

  [v2 setTitle:v4];

  v5 = [v1 tableView];
  if (v5)
  {
    v6 = v5;
    [v5 reloadData];
  }

  else
  {
    __break(1u);
  }
}

void sub_3ED418()
{
  v1 = v0;
  v2 = sub_767140();
  __chkstk_darwin(v2 - 8);
  if (sub_762220())
  {
    v3 = OBJC_IVAR____TtC18ASMessagesProvider32GenericAccountPageViewController_overlayViewController;
    v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider32GenericAccountPageViewController_overlayViewController];
    sub_761930();

    v5 = *&v0[v3];
    *&v0[v3] = 0;

    v6 = [v0 view];
    if (v6)
    {
      v7 = v6;
      [v6 bounds];

      sub_761920();
      return;
    }

    __break(1u);
  }

  else
  {
    sub_767130();
    v8 = objc_allocWithZone(sub_767160());
    v9 = sub_767150();
    v10 = OBJC_IVAR____TtC18ASMessagesProvider32GenericAccountPageViewController_overlayViewController;
    v11 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32GenericAccountPageViewController_overlayViewController];
    sub_761930();

    v12 = *&v1[v10];
    *&v1[v10] = v9;
    v13 = v9;

    v14 = [v1 view];
    if (v14)
    {
      v15 = v14;
      [v14 bounds];

      sub_761920();
      return;
    }
  }

  __break(1u);
}

id sub_3ED610()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider32GenericAccountPageViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider32GenericAccountPageViewController_overlayViewController];
  sub_761930();

  v3 = *&v0[v1];
  *&v0[v1] = 0;

  result = [v0 view];
  if (result)
  {
    v5 = result;
    [result bounds];

    return sub_761920();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_3ED7DC()
{
  v0 = sub_BD88(&unk_93F8F0);
  sub_161DC(v0, qword_953A28);
  sub_BE38(v0, qword_953A28);
  sub_BD88(&qword_93FBE0);
  type metadata accessor for NSTextAlignment(0);
  return sub_7592C0();
}

char *sub_3ED878(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_7666D0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC18ASMessagesProviderP33_325AD3F8116EAD3DD531EDE1E760761818LinkableFooterView_linkedLabel;
  if (qword_93DA88 != -1)
  {
    swift_once();
  }

  v10 = sub_BE38(v5, qword_99F790);
  (*(v6 + 16))(v8, v10, v5);
  v11 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel());
  *&v3[v9] = sub_4ECF40(v8, 0, 0);
  if (a2)
  {
    v12 = sub_769210();
  }

  else
  {
    v12 = 0;
  }

  v13 = type metadata accessor for LinkableFooterView();
  v29.receiver = v3;
  v29.super_class = v13;
  v14 = objc_msgSendSuper2(&v29, "initWithReuseIdentifier:", v12);

  v15 = OBJC_IVAR____TtC18ASMessagesProviderP33_325AD3F8116EAD3DD531EDE1E760761818LinkableFooterView_linkedLabel;
  v16 = *&v14[OBJC_IVAR____TtC18ASMessagesProviderP33_325AD3F8116EAD3DD531EDE1E760761818LinkableFooterView_linkedLabel];
  v17 = qword_93D000;
  v18 = v14;
  v19 = v16;
  if (v17 != -1)
  {
    swift_once();
  }

  v20 = sub_BD88(&unk_93F8F0);
  sub_BE38(v20, qword_953A28);
  v28[0] = v18;
  v21 = v18;
  sub_7592B0();

  [v19 setTextAlignment:v28[1]];
  v22 = *&v14[v15];
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 secondaryLabelColor];
  [v24 setTextColor:v25];

  v26 = [v21 contentView];
  [v26 addSubview:*&v14[v15]];

  return v21;
}

id sub_3EDD00()
{
  v1 = v0;
  v2 = sub_76A920();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LinkableFooterView();
  v15.receiver = v0;
  v15.super_class = v6;
  objc_msgSendSuper2(&v15, "layoutSubviews");
  v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProviderP33_325AD3F8116EAD3DD531EDE1E760761818LinkableFooterView_linkedLabel];
  v8 = [v0 contentView];
  sub_BE70(0, &qword_93E550);
  sub_75D650();
  v10 = v9;
  v12 = v11;

  [v7 measurementsWithFitting:v1 in:{v10, v12}];
  (*(v3 + 104))(v5, enum case for FloatingPointRoundingRule.up(_:), v2);
  sub_769D80();
  (*(v3 + 8))(v5, v2);
  sub_75D650();
  v13 = [v1 contentView];
  sub_75D650();

  sub_769D20();
  return [v7 setFrame:?];
}

uint64_t sub_3EDF98(uint64_t a1)
{
  v2 = v1;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for LinkableFooterView();
  objc_msgSendSuper2(&v12, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = sub_7699F0();

  if (!a1 || (result = sub_7699F0(), (result & 1) != (v5 & 1)))
  {
    v7 = *&v2[OBJC_IVAR____TtC18ASMessagesProviderP33_325AD3F8116EAD3DD531EDE1E760761818LinkableFooterView_linkedLabel];
    if (qword_93D000 != -1)
    {
      swift_once();
    }

    v8 = sub_BD88(&unk_93F8F0);
    sub_BE38(v8, qword_953A28);
    v10 = v2;
    v9 = v2;
    sub_7592B0();

    return [v7 setTextAlignment:{v11, v10}];
  }

  return result;
}

void sub_3EE188()
{
  v5.receiver = v0;
  v5.super_class = _s18ASMessagesProvider10HeaderViewCMa_0();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = [v0 textLabel];
  if (v1)
  {
    v2 = v1;
    sub_75D650();
    v3 = v2;
    [v3 frame];
    v4 = [v0 contentView];
    sub_BE70(0, &qword_93E550);
    sub_75D650();

    sub_769D20();
    [v3 setFrame:?];
  }
}

id sub_3EE438(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

double sub_3EE524(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_762D10();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BE70(0, &qword_93F900);
  if (qword_93DAC8 != -1)
  {
    swift_once();
  }

  v8 = sub_7666D0();
  sub_BE38(v8, qword_99F850);
  v9 = [a3 traitCollection];
  sub_769E10();

  v10 = sub_7653B0();
  v16[3] = v10;
  v16[4] = sub_3EECE0(&qword_93F9B0, 255, &type metadata accessor for Feature);
  v11 = sub_B1B4(v16);
  (*(*(v10 - 8) + 104))(v11, enum case for Feature.measurement_with_labelplaceholder(_:), v10);
  sub_765C30();
  sub_BEB8(v16);

  sub_762D00();
  sub_769DA0();
  sub_3EECE0(&unk_94E600, 255, &type metadata accessor for LabelPlaceholderCompatibility);
  sub_7665A0();
  sub_769DC0();
  v13 = v12;
  (*(v5 + 8))(v7, v4);
  return v13;
}

double sub_3EE848(uint64_t a1, uint64_t a2, void *a3)
{
  v19[1] = a1;
  v19[2] = a2;
  v4 = sub_76A920();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_762D10();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_769DA0();
  sub_BE70(0, &qword_93F900);
  if (qword_93DA88 != -1)
  {
    swift_once();
  }

  v12 = sub_7666D0();
  sub_BE38(v12, qword_99F790);
  v13 = [a3 traitCollection];
  sub_769E10();

  v14 = sub_7653B0();
  v21 = v14;
  v22 = sub_3EECE0(&qword_93F9B0, 255, &type metadata accessor for Feature);
  v15 = sub_B1B4(v20);
  (*(*(v14 - 8) + 104))(v15, enum case for Feature.measurement_with_labelplaceholder(_:), v14);
  sub_765C30();
  sub_BEB8(v20);

  sub_762D00();
  sub_762CE0();
  (*(v9 + 8))(v11, v8);
  sub_B170(v20, v21);
  sub_7665B0();
  sub_769DC0();
  (*(v5 + 104))(v7, enum case for FloatingPointRoundingRule.up(_:), v4);
  sub_769D80();
  v17 = v16;
  (*(v5 + 8))(v7, v4);
  sub_BEB8(v20);
  return v17;
}

uint64_t sub_3EEC30()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3EEC70()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_3EECC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_3EECE0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_3EED28()
{
  v0 = sub_BD88(&qword_953BC0);
  sub_161DC(v0, qword_953B20);
  sub_BE38(v0, qword_953B20);
  sub_BD88(&qword_93FBE0);
  type metadata accessor for ContentMode(0);
  return sub_7592C0();
}

uint64_t sub_3EEDCC()
{
  v0 = sub_BD88(&qword_953BB8);
  sub_161DC(v0, qword_953B38);
  sub_BE38(v0, qword_953B38);
  swift_getKeyPath();
  sub_56E958(0xD00000000000001ELL, 0x80000000007E0350, 0);
  sub_56E958(0xD000000000000017, 0x80000000007E0370, 0);
  sub_BE70(0, &qword_947630);
  return sub_759300();
}

uint64_t sub_3EEEE0()
{
  v0 = sub_BD88(&qword_953BB0);
  sub_161DC(v0, qword_953B50);
  sub_BE38(v0, qword_953B50);
  swift_getKeyPath();
  sub_BE70(0, &qword_93E540);
  v1 = sub_76A0B0();
  v2.super.isa = sub_76A0B0();
  v3.super.isa = v1;
  sub_76A0C0(v3, v2);
  v4 = sub_76A0B0();
  v5.super.isa = sub_76A0B0();
  v6.super.isa = v4;
  sub_76A0C0(v6, v5);
  return sub_759300();
}

char *sub_3EF010(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_imageView;
  *&v4[v10] = [objc_allocWithZone(UIImageView) init];
  v11 = OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_topOpaqueLayer;
  *&v4[v11] = [objc_allocWithZone(CALayer) init];
  v12 = OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_gradientLayer;
  *&v4[v12] = [objc_allocWithZone(CAGradientLayer) init];
  v13 = OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_compositeMaskLayer;
  *&v4[v13] = [objc_allocWithZone(CALayer) init];
  v55.receiver = v4;
  v55.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v55, "initWithFrame:", a1, a2, a3, a4);
  [v14 setClipsToBounds:1];
  v15 = qword_93D018;
  v16 = v14;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = sub_BD88(&qword_953BB0);
  sub_BE38(v17, qword_953B50);
  v18 = v16;
  sub_7592B0();

  [v18 setBackgroundColor:v54];
  v19 = OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_imageView;
  v20 = qword_93D010;
  v21 = *&v18[OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_imageView];
  if (v20 != -1)
  {
    swift_once();
  }

  v53 = ObjectType;
  v22 = sub_BD88(&qword_953BB8);
  sub_BE38(v22, qword_953B38);
  v23 = v18;
  sub_7592B0();

  [v21 setImage:v54];
  v24 = qword_93D008;
  v25 = *&v18[v19];
  if (v24 != -1)
  {
    swift_once();
  }

  v26 = sub_BD88(&qword_953BC0);
  sub_BE38(v26, qword_953B20);
  sub_7592B0();

  [v25 setContentMode:v54];
  [v23 addSubview:*&v18[v19]];
  v27 = OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_topOpaqueLayer;
  v28 = *&v23[OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_topOpaqueLayer];
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 blackColor];
  v32 = [v31 CGColor];

  [v30 setBackgroundColor:v32];
  v33 = OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_gradientLayer;
  v34 = *&v23[OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_gradientLayer];
  sub_BD88(&qword_941C10);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_77E280;
  v36 = v34;
  v37 = [v29 blackColor];
  v38 = [v37 CGColor];

  type metadata accessor for CGColor(0);
  v40 = v39;
  *(v35 + 56) = v39;
  *(v35 + 32) = v38;
  v41 = [v29 clearColor];
  v42 = [v41 CGColor];

  *(v35 + 88) = v40;
  *(v35 + 64) = v42;
  isa = sub_769450().super.isa;

  [v36 setColors:isa];

  v44 = OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_compositeMaskLayer;
  [*&v23[OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_compositeMaskLayer] addSublayer:*&v23[v27]];
  [*&v23[v44] addSublayer:*&v23[v33]];
  sub_BD88(&qword_9477F0);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_77B6D0;
  *(v45 + 32) = sub_7677B0();
  *(v45 + 40) = &protocol witness table for UITraitUserInterfaceLevel;
  *(swift_allocObject() + 16) = v53;
  sub_769F40();
  swift_unknownObjectRelease();

  v46 = [v23 traitCollection];

  LOBYTE(v45) = sub_7699D0();
  if (v45 & 1) != 0 || (v47 = [v23 traitCollection], v48 = sub_769A00(), v47, (v48))
  {
    v49 = [*&v18[v19] layer];
    [v49 setMask:*&v23[v44]];
  }

  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_77E280;
  *(v50 + 32) = sub_767890();
  *(v50 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  *(v50 + 48) = sub_767B80();
  *(v50 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_769F40();
  swift_unknownObjectRelease();

  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_77B6D0;
  *(v51 + 32) = sub_7676E0();
  *(v51 + 40) = &protocol witness table for UITraitLayoutDirection;
  *(swift_allocObject() + 16) = v53;
  sub_769F40();

  swift_unknownObjectRelease();

  return v23;
}

void sub_3EF724(void *a1)
{
  if (qword_93D018 != -1)
  {
    swift_once();
  }

  v2 = sub_BD88(&qword_953BB0);
  sub_BE38(v2, qword_953B50);
  v7 = a1;
  v3 = a1;
  sub_7592B0();

  [v3 setBackgroundColor:{v9, v7}];
  v4 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_imageView];
  if (qword_93D010 != -1)
  {
    swift_once();
  }

  v5 = sub_BD88(&qword_953BB8);
  sub_BE38(v5, qword_953B38);
  v8 = v3;
  v6 = v3;
  sub_7592B0();

  [v4 setImage:{v9, v8}];
}

id sub_3EF890(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_imageView];
  if (qword_93D008 != -1)
  {
    swift_once();
  }

  v3 = sub_BD88(&qword_953BC0);
  sub_BE38(v3, qword_953B20);
  v4 = a1;
  sub_7592B0();

  return [v2 setContentMode:{v6, a1}];
}

void sub_3EF9B0()
{
  v1 = v0;
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_imageView];
  [v0 bounds];
  [v2 setFrame:?];
  v3 = [v0 traitCollection];
  v4 = sub_7699F0();

  v5 = [v1 traitCollection];
  v6 = sub_7699E0();

  v7 = 100.0;
  if ((v6 & 1) == 0)
  {
    v7 = 20.0;
  }

  if (v4)
  {
    v8 = -v7;
  }

  else
  {
    v8 = v7;
  }

  [v2 frame];
  [v2 setFrame:v8 + v9];
  v10 = [v1 traitCollection];
  v11 = sub_7699D0();

  if (v11 & 1) != 0 || (v12 = [v1 traitCollection], v13 = sub_769A00(), v12, (v13))
  {
    [v2 setClipsToBounds:1];
    if (v4)
    {
      v14 = -100.0;
    }

    else
    {
      v14 = 100.0;
    }

    [v2 frame];
    [v2 setFrame:v14 + v15];
    v16 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_topOpaqueLayer];
    [v1 bounds];
    [v16 setFrame:{0.0, 0.0, CGRectGetWidth(v20), 68.0}];
    v17 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_gradientLayer];
    [v16 frame];
    MaxY = CGRectGetMaxY(v21);
    [v1 bounds];
    [v17 setFrame:{0.0, MaxY, CGRectGetWidth(v22), 110.0}];
  }
}

void sub_3EFCD8(char *a1)
{
  v2 = [a1 traitCollection];
  v3 = sub_7699D0();

  if (v3 & 1) != 0 || (v4 = [a1 traitCollection], v5 = sub_769A00(), v4, (v5))
  {
    v6 = [*&a1[OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_imageView] layer];
    [v6 setMask:*&a1[OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_compositeMaskLayer]];
  }

  else
  {
    v6 = [*&a1[OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_imageView] layer];
    [v6 setMask:0];
  }
}

void sub_3EFDDC()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_imageView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  v2 = OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_topOpaqueLayer;
  *(v0 + v2) = [objc_allocWithZone(CALayer) init];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_gradientLayer;
  *(v0 + v3) = [objc_allocWithZone(CAGradientLayer) init];
  v4 = OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_compositeMaskLayer;
  *(v0 + v4) = [objc_allocWithZone(CALayer) init];
  sub_76A840();
  __break(1u);
}

id sub_3EFEEC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 traitCollection];
  *a2 = result;
  return result;
}

char *sub_3EFF28@<X0>(id *a1@<X0>, BOOL *a2@<X8>)
{
  result = [*a1 userInterfaceLevel];
  *a2 = result == &dword_0 + 1;
  return result;
}

uint64_t sub_3EFFC8@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  PageTraitEnvironment.pageColumnMargin.getter();
  sub_7601D0();
  v2 = sub_7601F0();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

id sub_3F0090()
{
  v1 = v0;
  v2 = sub_BD88(&unk_9535C0);
  __chkstk_darwin(v2 - 8);
  v62 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v61 - v5;
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v8 = v7;
  PageTraitEnvironment.pageColumnMargin.getter();
  v10 = (v8 - v9) * 0.5;
  v11 = &v0[OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_preferredArtworkSize];
  *v11 = v10;
  v11[1] = v10;
  [v0 setNeedsLayout];
  v12 = sub_764F30();
  if (v13)
  {
    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      sub_BE70(0, &qword_93E540);
      v15 = sub_769FD0();
      sub_29E314(1, v15);

      v16 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_headingLabel];
      if (v16)
      {
        v17 = v16;
        v18 = sub_769210();

        [v17 setText:v18];
      }

      else
      {
      }

      goto LABEL_11;
    }
  }

  v19 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_headingLabel];
  if (v19)
  {
    [v19 setHidden:1];
  }

LABEL_11:
  v20 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_titleLabel];
  sub_764EF0();
  if (v21)
  {
    v22 = sub_769210();
  }

  else
  {
    v22 = 0;
  }

  [v20 setText:v22];

  sub_764DD0();
  if (v23)
  {
    sub_29E5C4();
    v24 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_tertiaryTitleLabel];
    if (v24)
    {
      v25 = v24;
      v26 = sub_769210();

      [v25 setText:v26];
    }

    else
    {
    }
  }

  else
  {
    v27 = OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_tertiaryTitleLabel;
    v28 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_tertiaryTitleLabel];
    if (v28)
    {
      [v28 setHidden:1];
      v29 = *&v1[v27];
      if (v29)
      {
        [v29 setText:0];
      }
    }
  }

  v30 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_subtitleLabel];
  sub_764F70();
  if (v31)
  {
    v32 = sub_769210();
  }

  else
  {
    v32 = 0;
  }

  [v30 setText:v32];

  v33 = OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_headingLabel;
  v34 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_headingLabel];
  if (v34 && ([v34 isHidden] & 1) == 0 && (v35 = *&v1[v33]) != 0)
  {
    v36 = [v35 hasContent];
  }

  else
  {
    v36 = 0;
  }

  v37 = OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_tertiaryTitleLabel;
  v38 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_tertiaryTitleLabel];
  if (v38 && ([v38 isHidden] & 1) == 0 && (v39 = *&v1[v37]) != 0)
  {
    v40 = [v39 hasContent];
  }

  else
  {
    v40 = 0;
  }

  if ([v30 hasContent])
  {
    v41 = v40 & v36;
  }

  else
  {
    v41 = 1;
  }

  [v30 setHidden:v41];
  v42 = sub_764E60();
  if (!v42)
  {
    sub_BE70(0, &qword_93E540);
    v42 = sub_769FF0();
  }

  v43 = v42;
  [v30 setTextColor:v42];

  v44 = &selRef_absoluteDimension_;
  v45 = [v30 layer];
  sub_764E70();
  v46 = sub_75F760();
  v47 = *(v46 - 8);
  v48 = *(v47 + 48);
  if (v48(v6, 1, v46) == 1)
  {
    sub_3F06F8(v6);
LABEL_43:
    v55 = 0;
    goto LABEL_44;
  }

  sub_75F750();
  (*(v47 + 8))(v6, v46);
  v49 = v64;
  if (!v64)
  {
    goto LABEL_43;
  }

  v50 = sub_B170(v63, v64);
  v61 = &v61;
  v51 = *(v49 - 8);
  v52 = __chkstk_darwin(v50);
  v54 = &v61 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v51 + 16))(v54, v52);
  v55 = sub_76A930();
  (*(v51 + 8))(v54, v49);
  v44 = &selRef_absoluteDimension_;
  sub_BEB8(v63);
LABEL_44:
  [v45 setCompositingFilter:{v55, v61}];

  swift_unknownObjectRelease();
  v56 = [v1 contentView];
  v57 = [v56 v44[1]];

  v58 = v62;
  sub_764E70();
  v59 = v48(v58, 1, v46) == 1;
  sub_3F06F8(v58);
  [v57 setAllowsGroupBlending:v59];

  return [v1 setNeedsLayout];
}

uint64_t sub_3F06F8(uint64_t a1)
{
  v2 = sub_BD88(&unk_9535C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_3F0760()
{
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  PageTraitEnvironment.pageColumnMargin.getter();
  sub_29EC80();
  v1 = v0;
  v3 = v2;
  v4 = objc_opt_self();
  v5 = [v4 absoluteDimension:v1];
  v6 = [v4 absoluteDimension:v3];
  v7 = objc_opt_self();
  v8 = [v7 sizeWithWidthDimension:v5 heightDimension:v6];

  v9 = [objc_opt_self() itemWithLayoutSize:v8];
  v10 = [v8 widthDimension];
  v11 = [v8 heightDimension];
  v12 = [v7 sizeWithWidthDimension:v10 heightDimension:v11];

  v13 = objc_opt_self();
  sub_BD88(&unk_93F5C0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_77D9F0;
  *(v14 + 32) = v9;
  sub_BE70(0, &qword_957F90);
  v15 = v9;
  isa = sub_769450().super.isa;

  v17 = [v13 verticalGroupWithLayoutSize:v12 subitems:isa];

  return v17;
}

double sub_3F09F0()
{
  v0 = sub_7656C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75A270();
  sub_3F0C30(&qword_953C10, &type metadata accessor for EditorialLink);
  sub_75C750();
  v4 = v14;
  if (!v14)
  {
    return 0.0;
  }

  sub_BD88(&unk_943590);
  sub_768900();
  sub_768ED0();
  v13[1] = v4;
  sub_758C30();

  v5 = v14;
  if ((~v14 & 0xF000000000000007) != 0)
  {
    v6 = v15;
  }

  else
  {

    v6 = 0;
    v5 = v4;
  }

  swift_getKeyPath();
  sub_75C7B0();

  sub_765630();
  v9 = v8;
  (*(v1 + 8))(v3, v0);
  v10 = sub_527DE4();
  sub_440B18(v5, v6, v10, v9);
  v7 = v11;
  swift_unknownObjectRelease();

  sub_B3204(v5, v6);
  return v7;
}

uint64_t sub_3F0C30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_3F0CD0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_7664A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_766CA0();
  sub_161DC(v7, a2);
  sub_BE38(v7, a2);
  if (qword_93D020 != -1)
  {
    swift_once();
  }

  v8 = sub_7666D0();
  v9 = sub_BE38(v8, qword_953C18);
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v13[3] = v3;
  v13[4] = &protocol witness table for FontSource;
  v10 = sub_B1B4(v13);
  (*(v4 + 16))(v10, v6, v3);
  sub_766CB0();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_3F0ED8()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  sub_161DC(v4, qword_953C78);
  sub_BE38(v4, qword_953C78);
  if (qword_93D038 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_953C60);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_B1B4(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_3F10AC()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_766CA0();
  sub_161DC(v4, qword_953C90);
  sub_BE38(v4, qword_953C90);
  *v3 = UIFontTextStyleSubheadline;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_B1B4(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleSubheadline;
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

id sub_3F1244(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for AccountDetailCollectionViewCell();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_3F129C(void *a1, uint64_t a2, uint64_t a3, SEL *a4, SEL *a5)
{
  v8 = a1;
  sub_3F130C(a3);
  v9.receiver = v8;
  v9.super_class = type metadata accessor for AccountDetailCollectionViewCell();
  objc_msgSendSuper2(&v9, *a4, a3);
  sub_3F13D8(a5);
}

id sub_3F130C(char a1)
{
  v2 = v1;
  v4 = [v2 contentView];
  if (a1)
  {
    v5 = [objc_opt_self() clearColor];
  }

  else
  {
    sub_BE70(0, &qword_93E540);
    v5 = sub_76A050();
  }

  v6 = v5;
  [v4 setBackgroundColor:v5];

  return [v2 setNeedsDisplay];
}

id sub_3F13D8(SEL *a1)
{
  v2 = v1;
  v3 = [v1 *a1];
  v4 = [v2 contentView];
  if (v3)
  {
    v5 = [objc_opt_self() clearColor];
  }

  else
  {
    sub_BE70(0, &qword_93E540);
    v5 = sub_76A050();
  }

  v6 = v5;
  [v4 setBackgroundColor:v5];

  return [v2 setNeedsDisplay];
}

char *sub_3F14B0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_760AD0();
  v98 = *(v10 - 8);
  __chkstk_darwin(v10);
  *&v97 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v12 - 8);
  v14 = &v89 - v13;
  v4[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_shouldShowFullTitle] = 1;
  v15 = &v4[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_imageMarginRight];
  *v15 = 0;
  v15[8] = 1;
  v4[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_shouldResizeImage] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessoryView] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_secondaryAccessoryView] = 0;
  v16 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessory;
  v17 = type metadata accessor for Accessory();
  v18 = *(*(v17 - 8) + 56);
  v18(&v5[v16], 1, 1, v17);
  v18(&v5[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_secondaryAccessory], 1, 1, v17);
  v19 = &v5[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessoryMargin];
  *v19 = 0;
  v19[8] = 1;
  v20 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_topSeparatorView;
  v21 = type metadata accessor for SeparatorView();
  *&v5[v20] = [objc_allocWithZone(v21) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v22 = &v5[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_topSeparatorViewInsets];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  v22[32] = 1;
  v5[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_showTopSeparatorView] = 0;
  v23 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_bottomSeparatorView;
  *&v5[v23] = [objc_allocWithZone(v21) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v24 = &v5[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_bottomSeparatorViewInsets];
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v24[32] = 1;
  v5[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_showBottomSeparatorView] = 0;
  v25 = &v5[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessoryAction];
  *v25 = 0;
  v25[1] = 0;
  v26 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_backgroundSelectionView;
  *&v5[v26] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_isSelectable] = 1;
  v5[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_disabled] = 0;
  v27 = &v5[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_selectionHandler];
  *v27 = 0;
  v27[1] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_tapGestureRecognizer] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_imageView] = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_93D020 != -1)
  {
    swift_once();
  }

  v28 = sub_7666D0();
  v29 = sub_BE38(v28, qword_953C18);
  v30 = *(v28 - 8);
  v31 = *(v30 + 16);
  v94 = v29;
  v96 = v31;
  v32 = v30 + 16;
  (v31)(v14);
  v34 = *(v30 + 56);
  v33 = v30 + 56;
  v93 = v34;
  v34(v14, 0, 1, v28);
  v35 = *(v98 + 13);
  v36 = enum case for DirectionalTextAlignment.none(_:);
  v98 = (v98 + 104);
  v92 = v35;
  (v35)(v97);
  v37 = sub_75BB20();
  v38 = objc_allocWithZone(v37);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_titleLabel] = sub_75BB10();
  if (qword_93D038 != -1)
  {
    swift_once();
  }

  v39 = sub_BE38(v28, qword_953C60);
  v91 = v32;
  v96(v14, v39, v28);
  v40 = v93;
  v93(v14, 0, 1, v28);
  v41 = v97;
  v42 = v10;
  v89 = v33;
  v90 = v10;
  v43 = v92;
  v92(v97, v36, v42);
  v44 = objc_allocWithZone(v37);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_subtitleLabel] = sub_75BB10();
  v96(v14, v94, v28);
  v40(v14, 0, 1, v28);
  v43(v41, v36, v90);
  v45 = objc_allocWithZone(v37);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_detailLabel] = sub_75BB10();
  v46 = type metadata accessor for AccountDetailCollectionViewCell();
  v100.receiver = v5;
  v100.super_class = v46;
  v98 = v46;
  v47 = objc_msgSendSuper2(&v100, "initWithFrame:", a1, a2, a3, a4);
  sub_3F4218();
  [v47 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v48 = [v47 contentView];
  v49 = sub_BE70(0, &qword_93E540);
  v50 = sub_76A050();
  [v48 setBackgroundColor:v50];

  v51 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_imageView;
  v52 = *&v47[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_imageView];
  sub_769FC0();
  sub_75CD00();

  v53 = *&v47[v51];
  v54 = [v47 traitCollection];
  sub_767500();

  sub_75CD10();
  v55 = *&v47[v51];
  v56 = [v47 backgroundColor];

  sub_759070();
  [*&v47[v51] setContentMode:1];
  v57 = [v47 contentView];
  [v57 addSubview:*&v47[v51]];

  v58 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_titleLabel;
  [*&v47[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_titleLabel] setLineBreakMode:4];
  v59 = [v47 contentView];
  [v59 addSubview:*&v47[v58]];

  v60 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_subtitleLabel;
  v61 = *&v47[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_subtitleLabel];
  *&v97 = v49;
  v62 = sub_769FF0();
  [v61 setTextColor:v62];

  v63 = [v47 contentView];
  [v63 addSubview:*&v47[v60]];

  v64 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_detailLabel;
  v65 = *&v47[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_detailLabel];
  v66 = sub_769FF0();
  [v65 setTextColor:v66];

  v67 = [v47 contentView];
  [v67 addSubview:*&v47[v64]];

  v68 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_topSeparatorView;
  v69 = *&v47[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_topSeparatorView];
  v70 = objc_opt_self();
  v71 = v69;
  v72 = [v70 separatorColor];
  v73 = *&v71[OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_lineColor];
  *&v71[OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_lineColor] = v72;
  v74 = v72;

  [*&v71[OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_lineView] setBackgroundColor:v74];
  [*&v47[v68] setHidden:1];
  v75 = [v47 contentView];
  [v75 addSubview:*&v47[v68]];

  v76 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_bottomSeparatorView;
  v77 = *&v47[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_bottomSeparatorView];
  v78 = [v70 separatorColor];
  v79 = *&v77[OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_lineColor];
  *&v77[OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_lineColor] = v78;
  v80 = v78;

  [*&v77[OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_lineView] setBackgroundColor:v80];
  [*&v47[v76] setHidden:1];
  v81 = [v47 contentView];
  [v81 addSubview:*&v47[v76]];

  v82 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_backgroundSelectionView;
  v83 = *&v47[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_backgroundSelectionView];
  v84 = sub_76A0A0();
  [v83 setBackgroundColor:v84];

  [*&v47[v82] setOpaque:0];
  [*&v47[v82] setUserInteractionEnabled:0];
  if (v47[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_isSelectable] == 1)
  {
    [v47 setSelectedBackgroundView:*&v47[v82]];
  }

  sub_BD88(&qword_9477F0);
  v85 = swift_allocObject();
  v97 = xmmword_77B6D0;
  *(v85 + 16) = xmmword_77B6D0;
  *(v85 + 32) = sub_767B80();
  *(v85 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v99[3] = v98;
  v99[0] = v47;
  v86 = v47;
  sub_769F30();
  swift_unknownObjectRelease();

  sub_BEB8(v99);
  v87 = swift_allocObject();
  *(v87 + 16) = v97;
  *(v87 + 32) = sub_7676F0();
  *(v87 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_769F40();
  swift_unknownObjectRelease();

  return v86;
}

void sub_3F2128()
{
  v1 = v0;
  v179 = type metadata accessor for Accessory();
  v2 = *(v179 - 8);
  __chkstk_darwin(v179);
  v169 = (&v166 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v170 = sub_BD88(&qword_947FE8);
  __chkstk_darwin(v170);
  *&v171 = &v166 - v4;
  v5 = sub_BD88(&qword_93FF90);
  __chkstk_darwin(v5 - 8);
  *&v172 = &v166 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v166 - v8;
  __chkstk_darwin(v10);
  v12 = &v166 - v11;
  *&v13 = COERCE_DOUBLE(sub_76A920());
  v186 = *(v13 - 8);
  v187 = *&v13;
  __chkstk_darwin(v13);
  v15 = &v166 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AccountDetailCollectionViewCell();
  v188.receiver = v0;
  v188.super_class = v16;
  objc_msgSendSuper2(&v188, "layoutSubviews");
  sub_75D650();
  Width = CGRectGetWidth(v189);
  v18 = [v0 traitCollection];
  LODWORD(v19) = sub_769A00();

  v20 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessoryView;
  v21 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessoryView];
  if (v21)
  {
    LODWORD(v182) = [v21 isHidden] ^ 1;
  }

  else
  {
    LODWORD(v182) = 0;
  }

  v173 = *&v12;
  v22 = sub_759180();
  v23 = v22;
  if (v22)
  {
  }

  v180 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_subtitleLabel];
  v24 = [*&v180 text];
  v25 = v24;
  if (v24)
  {
  }

  v181 = v25;
  v26 = v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_imageMarginRight + 8];
  v184 = v19;
  v185 = v23;
  if (v26)
  {
    v27 = 8.0;
    if (v23)
    {
      goto LABEL_10;
    }

LABEL_16:
    v30 = 0.0;
    goto LABEL_17;
  }

  v27 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_imageMarginRight];
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_10:
  v28 = COERCE_DOUBLE(sub_3F4418());
  v30 = 0.0;
  if (v31)
  {
LABEL_17:
    v40 = 0.0;
    v32 = 0.0;
    v33 = 0.0;
    goto LABEL_18;
  }

  v32 = v28;
  v33 = v29;
  if (v19)
  {
    if (qword_93D028 != -1)
    {
      swift_once();
    }

    v34 = sub_766CA0();
    sub_BE38(v34, qword_953C30);
    v19 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_titleLabel];
    sub_766470();
    v35 = [v19 traitCollection];
    sub_766C70();
    v37 = v36;

    [v19 firstBaselineFromTop];
    v39 = v38;
    (*(*&v186 + 8))(v15, COERCE_DOUBLE(*&v187));
    v40 = v37 - v39;
    LOBYTE(v19) = v184;
  }

  else
  {
    sub_75D650();
    v40 = CGRectGetMidY(v191) + v33 * -0.5;
  }

  sub_75D650();
  MinX = CGRectGetMinX(v192);
  v30 = MinX;
  if ((v19 & 1) == 0)
  {
    v77 = v40;
    v78 = v32;
    v79 = v33;
    Width = Width - (v27 + CGRectGetWidth(*&MinX));
  }

LABEL_18:
  sub_75D650();
  sub_769D20();
  sub_759170();
  v177 = v32;
  v175 = v40;
  v174 = v30;
  if (v19)
  {
    sub_759160();
    MaxY = CGRectGetMaxY(v190);
    if (qword_93D028 != -1)
    {
      swift_once();
    }

    v42 = sub_766CA0();
    sub_BE38(v42, qword_953C30);
    v43 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_titleLabel];
    sub_766470();
    v44 = [v43 traitCollection];
    sub_766C70();
    v46 = v45;

    [v43 firstBaselineFromTop];
    v48 = v47;
    v49 = *(*&v186 + 8);
    v49(v15, *&v187);
    v50 = MaxY + v46 - v48;
  }

  else
  {
    if (qword_93D028 != -1)
    {
      swift_once();
    }

    v51 = sub_766CA0();
    sub_BE38(v51, qword_953C30);
    v43 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_titleLabel];
    sub_766470();
    v52 = [v43 traitCollection];
    sub_766C70();
    v54 = v53;

    [v43 firstBaselineFromTop];
    v56 = v55;
    v49 = *(*&v186 + 8);
    v49(v15, *&v187);
    v50 = v54 - v56;
  }

  v183 = v50;
  v57 = &selRef_setTextAlignment_;
  v58 = v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessoryMargin + 8] == 1;
  v176 = v33;
  if (v58)
  {
    v59 = 16.0;
    if (LOBYTE(v182))
    {
      goto LABEL_30;
    }

    v182 = 16.0;
LABEL_35:
    LODWORD(v179) = 1;
    v75 = 0.0;
    v172 = 0.0;
    v171 = 0.0;
    v67 = 0.0;
    v74 = v180;
    goto LABEL_60;
  }

  v59 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessoryMargin];
  if (!LODWORD(v182))
  {
    v182 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessoryMargin];
    goto LABEL_35;
  }

LABEL_30:
  v168 = v43;
  v60 = *&v1[v20];
  v182 = v59;
  if (!v60)
  {
    LODWORD(v179) = 1;
    v75 = 0.0;
    v172 = 0.0;
    v171 = 0.0;
    v67 = 0.0;
    v43 = v168;
    v74 = v180;
    goto LABEL_60;
  }

  v166 = v49;
  v61 = v60;
  sub_75D650();
  v167 = v61;
  [v61 sizeThatFits:{v62, v63}];
  v65 = v64;
  v67 = v66;
  v68 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessory;
  swift_beginAccess();
  v69 = *&v173;
  v70 = v179;
  swift_storeEnumTagMultiPayload();
  (*(v2 + 56))(v69, 0, 1, v70);
  v71 = *(v170 + 48);
  v170 = v68;
  v72 = *&v171;
  sub_3F552C(&v1[v68], *&v171);
  sub_3F552C(v69, v72 + v71);
  v73 = *(v2 + 48);
  if (v73(v72, 1, v70) == 1)
  {
    sub_10A2C(v69, &qword_93FF90);
    if (v73(v72 + v71, 1, v70) == 1)
    {
      sub_10A2C(v72, &qword_93FF90);
      v43 = v168;
      v74 = v180;
LABEL_44:
      v83 = [v1 traitCollection];
      _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();

      sub_769D60();
      v65 = v84;
      v67 = v85;
      goto LABEL_45;
    }

LABEL_42:
    sub_10A2C(v72, &qword_947FE8);
    v80 = &selRef_setSpeed_;
    v43 = v168;
    v74 = v180;
    goto LABEL_46;
  }

  sub_3F552C(v72, v9);
  if (v73(v72 + v71, 1, v70) == 1)
  {
    sub_10A2C(*&v173, &qword_93FF90);
    sub_30984(v9);
    goto LABEL_42;
  }

  v81 = v169;
  sub_30920(v72 + v71, v169);
  v82 = sub_4E32FC(v9, v81);
  sub_30984(v81);
  sub_10A2C(*&v173, &qword_93FF90);
  sub_30984(v9);
  sub_10A2C(v72, &qword_93FF90);
  v43 = v168;
  v74 = v180;
  if (v82)
  {
    goto LABEL_44;
  }

LABEL_45:
  v80 = &selRef_setSpeed_;
LABEL_46:
  sub_75D650();
  v75 = CGRectGetMaxX(v193) - v65;
  v86 = *&v172;
  sub_3F552C(&v1[v170], *&v172);
  v87 = v73(v86, 1, v179);
  v180 = v65;
  if (v87 == 1)
  {
    sub_10A2C(v86, &qword_93FF90);
    v49 = v166;
LABEL_50:
    [v1 v80[366]];
    x = v195.origin.x;
    y = v195.origin.y;
    v92 = v195.size.width;
    v93 = v27;
    v94 = v75;
    v95 = Width;
    height = v195.size.height;
    CGRectGetMidX(v195);
    v196.origin.x = x;
    v196.origin.y = y;
    v59 = v182;
    v196.size.width = v92;
    v196.size.height = height;
    Width = v95;
    v75 = v94;
    v27 = v93;
    v89 = round(CGRectGetMidY(v196) + v67 * -0.5);
    goto LABEL_51;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_30984(v86);
  v49 = v166;
  if (EnumCaseMultiPayload != 5)
  {
    goto LABEL_50;
  }

  sub_75D650();
  v89 = v183 + CGRectGetMinY(v194);
LABEL_51:
  sub_75D650();
  v97 = CGRectGetWidth(v197);
  if (v180 >= v97)
  {
    v98 = v97;
  }

  else
  {
    v98 = v180;
  }

  sub_75D650();
  sub_769D20();
  v99 = v167;
  [v167 setFrame:?];
  v198.origin.x = v75;
  v198.origin.y = v89;
  v198.size.width = v98;
  v198.size.height = v67;
  Width = Width - (v59 + CGRectGetWidth(v198));
  v100 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_secondaryAccessoryView];
  if (v100)
  {
    v101 = v100;
    sub_75D650();
    [v101 sizeThatFits:{v102, v103}];
    v105 = v104;
    v107 = v106;
    v199.origin.x = v75;
    v199.origin.y = v89;
    v199.size.width = v98;
    v199.size.height = v67;
    v180 = CGRectGetMinX(v199);
    [v1 v80[366]];
    v108 = v200.origin.x;
    v109 = v27;
    v110 = Width;
    v111 = v200.origin.y;
    v112 = v200.size.width;
    v113 = v200.size.height;
    CGRectGetMidX(v200);
    v201.origin.x = v108;
    v201.origin.y = v111;
    v114 = v110;
    v27 = v109;
    v201.size.width = v112;
    v201.size.height = v113;
    v115 = round(CGRectGetMidY(v201) + v107 * -0.5);
    sub_75D650();
    v116 = CGRectGetWidth(v202);
    if (v105 >= v116)
    {
      v117 = v116;
    }

    else
    {
      v117 = v105;
    }

    v118 = v182;
    v75 = v180 - v105 - v182;
    sub_75D650();
    sub_769D20();
    v57 = &selRef_setTextAlignment_;
    [v101 setFrame:?];
    v203.origin.x = v75;
    v172 = v115;
    v203.origin.y = v115;
    v171 = v117;
    v203.size.width = v117;
    v203.size.height = v107;
    v119 = CGRectGetWidth(v203);

    LODWORD(v179) = 0;
    Width = v114 - (v118 + v119);
    v67 = v107;
  }

  else
  {
    v171 = v98;
    v172 = v89;

    LODWORD(v179) = 0;
    v57 = &selRef_setTextAlignment_;
  }

LABEL_60:
  v173 = v75;
  v180 = v67;
  sub_75D650();
  [v43 v57[10]];
  v121 = v120;
  v123 = v122;
  v124 = v57;
  if (qword_93D040 != -1)
  {
    swift_once();
  }

  v125 = v185 == 0;
  v126 = sub_766CA0();
  sub_BE38(v126, qword_953C78);
  sub_766470();
  v127 = [*&v74 traitCollection];
  sub_766C70();
  v129 = v128;

  [*&v74 firstBaselineFromTop];
  v131 = v130;
  v49(v15, *&v187);
  v132 = v129 - v131;
  sub_75D650();
  [*&v74 v124[10]];
  v135 = v134;
  v136 = v133;
  v186 = v132;
  v137 = v181;
  if (v181)
  {
    v138 = v123 + v132 + v133;
  }

  else
  {
    v138 = v123;
  }

  sub_75D650();
  v139 = (CGRectGetHeight(v206) - v138) * 0.5;
  v140 = v184;
  if (v184 & 1 | (v139 <= v183))
  {
    v141 = v183;
  }

  else
  {
    v141 = v139;
  }

  if (Width >= v121)
  {
    v142 = v121;
  }

  else
  {
    v142 = Width;
  }

  v187 = Width;
  v178 = v27;
  if ((v125 | v184))
  {
    sub_75D650();
    v143 = CGRectGetMinX(v207);
  }

  else
  {
    v208.origin.x = v174;
    v208.origin.y = v175;
    v208.size.width = v177;
    v208.size.height = v176;
    v143 = v27 + CGRectGetMaxX(v208);
  }

  sub_75D650();
  MinY = CGRectGetMinY(v209);
  v183 = v141;
  v145 = v141 + MinY;
  sub_75D650();
  sub_769D20();
  [v43 setFrame:?];
  if (v137)
  {
    [*&v74 setHidden:0];
    if (v187 < v135)
    {
      v135 = v187;
    }

    v210.origin.x = v143;
    v210.origin.y = v145;
    v146 = v142;
    v210.size.width = v142;
    v210.size.height = v123;
    v147 = CGRectGetMinX(v210);
    [v43 lastBaselineMaxY];
    v149 = v186 + v148;
  }

  else
  {
    v146 = v142;
    [*&v74 setHidden:1];
    v147 = 0.0;
    v149 = 0.0;
    v135 = 0.0;
    v136 = 0.0;
  }

  sub_75D650();
  sub_769D20();
  [*&v74 setFrame:?];
  if (v140)
  {
    v150 = v146;
  }

  else
  {
    v211.origin.x = v147;
    v211.origin.y = v149;
    v211.size.width = v135;
    v211.size.height = v136;
    v151 = CGRectGetWidth(v211);
    v212.origin.x = v143;
    v212.origin.y = v145;
    v150 = v146;
    v212.size.width = v146;
    v212.size.height = v123;
    v152 = CGRectGetWidth(v212);
    if (v151 > v152)
    {
      v152 = v151;
    }

    if (v185)
    {
      v152 = v178 + v152;
    }

    v187 = v187 - v152;
  }

  v153 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_detailLabel];
  v154 = [v153 text];
  if (v154)
  {
    v155 = v154;
    v156 = sub_769240();
    v158 = v157;

    v159 = HIBYTE(v158) & 0xF;
    if ((v158 & 0x2000000000000000) == 0)
    {
      v159 = v156 & 0xFFFFFFFFFFFFLL;
    }

    if (v159)
    {
      if (v140)
      {
        v160 = v187;
      }

      else
      {
        v160 = v187 - v182;
      }

      sub_75D650();
      [v153 measurementsWithFitting:v1 in:{v160, CGRectGetHeight(v213)}];
      if (v140)
      {
        v214.origin.x = v143;
        v214.origin.y = v145;
        v214.size.width = v150;
        v214.size.height = v123;
        CGRectGetMinX(v214);
        [v43 lastBaselineMaxY];
      }

      else
      {
        if (v179)
        {
          sub_75D650();
          CGRectGetMaxX(v215);
        }

        else
        {
          v216.origin.x = v173;
          v216.origin.y = v172;
          v216.size.width = v171;
          v216.size.height = v180;
          CGRectGetMinX(v216);
        }

        sub_75D650();
        CGRectGetMinY(v217);
      }

      sub_75D650();
      sub_769D20();
      [v153 setFrame:?];
    }
  }

  if (v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_showTopSeparatorView] == 1)
  {
    sub_75D650();
    CGRectGetMinX(v218);
    [v1 bounds];
    CGRectGetMinY(v219);
    sub_75D650();
    CGRectGetWidth(v220);
    v161 = [v1 traitCollection];
    sub_767500();

    if ((v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_topSeparatorViewInsets + 32] & 1) == 0)
    {
      [v1 bounds];
    }

    v162 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_topSeparatorView];
    sub_75D650();
    sub_769D20();
    [v162 setFrame:?];
  }

  if (v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_showBottomSeparatorView] == 1)
  {
    sub_75D650();
    CGRectGetMinX(v221);
    [v1 bounds];
    CGRectGetMaxY(v222);
    v163 = [v1 traitCollection];
    sub_767500();

    sub_75D650();
    CGRectGetWidth(v223);
    v164 = [v1 traitCollection];
    sub_767500();

    if ((v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_bottomSeparatorViewInsets + 32] & 1) == 0)
    {
      [v1 bounds];
    }

    v165 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_bottomSeparatorView];
    sub_75D650();
    sub_769D20();
    [v165 setFrame:?];
  }
}

double sub_3F34E8(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for Accessory();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v60 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = (&v60 - v8);
  __chkstk_darwin(v10);
  v12 = &v60 - v11;
  v13 = sub_BD88(&qword_93FF90);
  __chkstk_darwin(v13 - 8);
  v61 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v60 - v16;
  __chkstk_darwin(v18);
  v74 = &v60 - v19;
  __chkstk_darwin(v20);
  v76 = &v60 - v21;
  v71 = sub_759180();
  v22 = v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_shouldResizeImage];
  if (v22 == 1)
  {
    sub_7591E0();
  }

  v23 = [*&v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_titleLabel] text];
  if (v23)
  {
    v24 = v23;
    v63 = sub_769240();
    v72 = v25;
  }

  else
  {
    v63 = 0;
    v72 = 0;
  }

  LODWORD(v65) = v2[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_shouldShowFullTitle];
  v26 = [*&v2[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_subtitleLabel] text];
  if (v26)
  {
    v27 = v26;
    v62 = sub_769240();
    v75 = v28;
  }

  else
  {
    v62 = 0;
    v75 = 0;
  }

  v29 = [*&v2[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_detailLabel] text];
  if (v29)
  {
    v30 = v29;
    v64 = sub_769240();
    v68 = v31;
  }

  else
  {
    v64 = 0;
    v68 = 0;
  }

  v32 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessory;
  swift_beginAccess();
  sub_3F552C(&v2[v32], v76);
  v33 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_secondaryAccessory;
  swift_beginAccess();
  sub_3F552C(&v2[v33], v74);
  v66 = v2[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_showTopSeparatorView];
  v67 = v2[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_showBottomSeparatorView];
  [v2 layoutMargins];
  v69 = v34;
  v35 = [v2 traitCollection];
  v36 = sub_769A00();

  v73 = v36;
  v70 = a1;
  if ((v22 & 1) == 0 && v71)
  {
    [v71 size];
  }

  v37 = [v2 traitCollection];
  sub_3F552C(v76, v17);
  v38 = *(v5 + 48);
  if (v38(v17, 1, v4) == 1)
  {
    v39 = v17;
  }

  else
  {
    sub_30920(v17, v12);
    sub_4E1514(v37);
    swift_storeEnumTagMultiPayload();
    v40 = sub_4E32FC(v12, v9);
    sub_30984(v9);
    if (v40)
    {
      _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();
    }

    v41 = v61;
    sub_3F552C(v74, v61);
    if (v38(v41, 1, v4) != 1)
    {
      v42 = v41;
      v43 = v60;
      sub_30920(v42, v60);
      sub_4E1514(v37);
      sub_30984(v43);
      sub_30984(v12);
      goto LABEL_23;
    }

    sub_30984(v12);
    v39 = v41;
  }

  sub_10A2C(v39, &qword_93FF90);
LABEL_23:
  if ((v65 & 1) == 0 && (sub_769A00() & 1) == 0)
  {
    sub_76A460();
  }

  v65 = v37;
  if (qword_93D020 != -1)
  {
    swift_once();
  }

  v44 = sub_7666D0();
  v45 = sub_BE38(v44, qword_953C18);
  v46 = sub_7653B0();
  v78 = v46;
  v47 = sub_9BA34();
  v79 = v47;
  v48 = sub_B1B4(v77);
  v49 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v50 = *(*(v46 - 8) + 104);
  v50(v48, enum case for Feature.measurement_with_labelplaceholder(_:), v46);
  sub_765C30();
  sub_BEB8(v77);
  v63 = v45;
  sub_762CB0();
  if (qword_93D028 != -1)
  {
    swift_once();
  }

  v51 = sub_766CA0();
  sub_BE38(v51, qword_953C30);
  sub_766720();
  if (v75)
  {
    if (qword_93D038 != -1)
    {
      swift_once();
    }

    sub_BE38(v44, qword_953C60);
    v78 = v46;
    v79 = v47;
    v52 = sub_B1B4(v77);
    v50(v52, v49, v46);
    sub_765C30();
    sub_BEB8(v77);
    sub_762CB0();
    if (qword_93D040 != -1)
    {
      swift_once();
    }

    sub_BE38(v51, qword_953C78);
    sub_766720();
    v53 = v68;
    if (qword_93D048 != -1)
    {
      swift_once();
    }

    sub_BE38(v51, qword_953C90);
    sub_7666F0();
  }

  else
  {
    if (qword_93D030 != -1)
    {
      swift_once();
    }

    sub_BE38(v51, qword_953C48);
    sub_7666F0();
    v53 = v68;
  }

  if ((v73 & (v53 != 0)) != 1)
  {
    goto LABEL_50;
  }

  v54 = HIBYTE(v53) & 0xF;
  if ((v53 & 0x2000000000000000) == 0)
  {
    v54 = v64 & 0xFFFFFFFFFFFFLL;
  }

  if (v54)
  {
    v78 = v46;
    v79 = v47;
    v55 = sub_B1B4(v77);
    v50(v55, v49, v46);
    sub_765C30();
    sub_BEB8(v77);
    sub_762CB0();
    if (qword_93D040 != -1)
    {
      swift_once();
    }

    sub_BE38(v51, qword_953C78);
    sub_766720();
    v56 = v65;
    if (qword_93D048 != -1)
    {
      swift_once();
    }

    sub_BE38(v51, qword_953C90);
    sub_7666F0();
  }

  else
  {
LABEL_50:
    v56 = v65;
  }

  if (v66)
  {
    v57 = [v2 traitCollection];
    sub_767500();
  }

  if (v67)
  {
    v58 = [v2 traitCollection];
    sub_767500();
  }

  else
  {
  }

  sub_10A2C(v74, &qword_93FF90);
  sub_10A2C(v76, &qword_93FF90);
  return v70;
}

BOOL sub_3F4218()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_769A00();

  if (v3)
  {
    v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_titleLabel];
    v5 = [v4 numberOfLines] != 0;
    [v4 setNumberOfLines:0];
    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_subtitleLabel] setNumberOfLines:0];
    v6 = 0;
LABEL_16:
    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_detailLabel] setNumberOfLines:v6];
    return v5;
  }

  v7 = v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_shouldShowFullTitle];
  v8 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_subtitleLabel];
  v9 = [v8 text];
  if (v9)
  {
    v10 = v9;
    sub_769240();
  }

  v11 = [v1 traitCollection];
  v12 = v11;
  if (v7)
  {

    v13 = 0;
  }

  else if (sub_769A00())
  {

    v13 = 3;
  }

  else
  {
    v14 = sub_76A460();

    if (v14)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  v15 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_titleLabel];
  v16 = [v15 numberOfLines];
  v5 = v13 != v16;
  if (v13 != v16)
  {
    [v15 setNumberOfLines:v13];
  }

  if ([v8 numberOfLines] != &dword_0 + 1)
  {
    [v8 setNumberOfLines:1];
    v6 = 1;
    v5 = 1;
    goto LABEL_16;
  }

  return v5;
}

void *sub_3F4418()
{
  result = sub_759180();
  v2 = result;
  if (result)
  {
    [result size];
    v4 = v3;

    if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_shouldResizeImage) == 1)
    {
      v5 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
      sub_7591E0();
      [v5 scaledValueForValue:?];
      v7 = v6;

      v8 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
      sub_7591E0();
      [v8 scaledValueForValue:v9];

      if (v7 <= 56.0)
      {
        v10 = v7;
      }

      else
      {
        v10 = 56.0;
      }

      return *&v10;
    }

    else
    {
      return v4;
    }
  }

  return result;
}

void sub_3F45F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v36 = a2;
  v5 = type metadata accessor for Accessory();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v35 = (&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_BD88(&qword_93FF90);
  __chkstk_darwin(v8 - 8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v37 = &v35 - v12;
  __chkstk_darwin(v13);
  v15 = &v35 - v14;
  v16 = sub_BD88(&qword_947FE8);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v19 = &v35 - v18;
  v20 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessory;
  swift_beginAccess();
  v21 = *(v17 + 56);
  v38 = a1;
  sub_3F552C(a1, v19);
  sub_3F552C(&v3[v20], &v19[v21]);
  v22 = *(v6 + 48);
  if (v22(v19, 1, v5) == 1)
  {
    if (v22(&v19[v21], 1, v5) == 1)
    {
      sub_10A2C(v19, &qword_93FF90);
      return;
    }
  }

  else
  {
    sub_3F552C(v19, v15);
    if (v22(&v19[v21], 1, v5) != 1)
    {
      v30 = &v19[v21];
      v31 = v35;
      sub_30920(v30, v35);
      v32 = sub_4E32FC(v15, v31);
      sub_30984(v31);
      sub_30984(v15);
      sub_10A2C(v19, &qword_93FF90);
      if (v32)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_30984(v15);
  }

  sub_10A2C(v19, &qword_947FE8);
LABEL_7:
  v24 = v37;
  v23 = v38;
  sub_3F552C(v38, v37);
  swift_beginAccess();
  sub_19CD50(v24, &v3[v20]);
  swift_endAccess();
  sub_3F552C(v23, v10);
  if (v22(v10, 1, v5) == 1)
  {
    sub_10A2C(v10, &qword_93FF90);
    v25 = 0;
  }

  else
  {
    sub_4E0248(v36);
    v25 = v26;
    sub_30984(v10);
  }

  v27 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessoryView;
  v28 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessoryView];
  if (v28)
  {
    [v28 removeFromSuperview];
    v29 = *&v3[v27];
  }

  else
  {
    v29 = 0;
  }

  *&v3[v27] = v25;
  v33 = v25;

  if (v25)
  {
    [v3 addSubview:v33];
  }

  if (*&v3[v27])
  {
    objc_opt_self();
    v34 = swift_dynamicCastObjCClass();
    if (v34)
    {
      [v34 addTarget:v3 action:"didTapWithAccessoryView:" forControlEvents:64];
    }
  }

  [v3 setNeedsLayout];
}

void sub_3F4A20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v35 = a2;
  v5 = type metadata accessor for Accessory();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v34 = (&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_BD88(&qword_93FF90);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v36 = &v34 - v12;
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  v16 = sub_BD88(&qword_947FE8);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v19 = &v34 - v18;
  v20 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_secondaryAccessory;
  swift_beginAccess();
  v21 = *(v17 + 56);
  v37 = a1;
  sub_3F552C(a1, v19);
  sub_3F552C(&v3[v20], &v19[v21]);
  v22 = *(v6 + 48);
  if (v22(v19, 1, v5) == 1)
  {
    if (v22(&v19[v21], 1, v5) == 1)
    {
      sub_10A2C(v19, &qword_93FF90);
      return;
    }
  }

  else
  {
    sub_3F552C(v19, v15);
    if (v22(&v19[v21], 1, v5) != 1)
    {
      v30 = &v19[v21];
      v31 = v34;
      sub_30920(v30, v34);
      v32 = sub_4E32FC(v15, v31);
      sub_30984(v31);
      sub_30984(v15);
      sub_10A2C(v19, &qword_93FF90);
      if (v32)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_30984(v15);
  }

  sub_10A2C(v19, &qword_947FE8);
LABEL_7:
  v24 = v36;
  v23 = v37;
  sub_3F552C(v37, v36);
  swift_beginAccess();
  sub_19CD50(v24, &v3[v20]);
  swift_endAccess();
  sub_3F552C(v23, v10);
  if (v22(v10, 1, v5) == 1)
  {
    sub_10A2C(v10, &qword_93FF90);
    v25 = 0;
  }

  else
  {
    sub_4E0248(v35);
    v25 = v26;
    sub_30984(v10);
  }

  v27 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_secondaryAccessoryView;
  v28 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_secondaryAccessoryView];
  if (v28)
  {
    [v28 removeFromSuperview];
    v29 = *&v3[v27];
  }

  else
  {
    v29 = 0;
  }

  *&v3[v27] = v25;
  v33 = v25;

  if (v25)
  {
    [v3 addSubview:v33];
  }

  [v3 setNeedsLayout];
}

double sub_3F4EE0()
{
  v1 = v0;
  v2 = sub_BD88(&qword_93FF90);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = type metadata accessor for AccountDetailCollectionViewCell();
  v21.receiver = v0;
  v21.super_class = v5;
  objc_msgSendSuper2(&v21, "prepareForReuse");
  sub_759190();
  [v0 setNeedsLayout];
  v6 = &v0[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_imageMarginRight];
  *v6 = 0;
  v6[8] = 1;
  v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_titleLabel];
  [v7 setText:0];
  [v0 setNeedsLayout];
  v8 = v0[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_shouldShowFullTitle];
  v0[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_shouldShowFullTitle] = 1;
  if ((v8 & 1) == 0)
  {
    [v0 setNeedsLayout];
  }

  v9 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_subtitleLabel];
  [v9 setText:0];
  if (sub_3F4218())
  {
    [v0 setNeedsLayout];
  }

  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_detailLabel] setText:0];
  v10 = type metadata accessor for Accessory();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessory;
  swift_beginAccess();
  sub_19CD50(v4, &v1[v11]);
  swift_endAccess();
  sub_3F559C(0);
  v12 = &v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessoryMargin];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessoryAction];
  v14 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessoryAction];
  *v13 = 0;
  *(v13 + 1) = 0;
  sub_F704(v14);
  sub_BE70(0, &qword_93E540);
  v15 = sub_769FD0();
  [v7 setTextColor:v15];

  v16 = sub_769FF0();
  [v9 setTextColor:v16];

  v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_showTopSeparatorView] = 0;
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_topSeparatorView] setHidden:1];
  v17 = &v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_topSeparatorViewInsets];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v17[32] = 1;
  v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_showBottomSeparatorView] = 0;
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_bottomSeparatorView] setHidden:1];
  v18 = &v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_bottomSeparatorViewInsets];
  result = 0.0;
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v18[32] = 1;
  return result;
}

id sub_3F5264()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountDetailCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AccountDetailCollectionViewCell()
{
  result = qword_953D38;
  if (!qword_953D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3F542C()
{
  sub_341D08();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_3F552C(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_93FF90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_3F559C(void *a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessoryView;
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessoryView];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    [v1 addSubview:v6];
  }

  if (*&v1[v3])
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      [v7 addTarget:v1 action:"didTapWithAccessoryView:" forControlEvents:64];
    }
  }

  return [v1 setNeedsLayout];
}

void sub_3F5680()
{
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_shouldShowFullTitle) = 1;
  v1 = v0 + OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_imageMarginRight;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_shouldResizeImage) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessoryView) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_secondaryAccessoryView) = 0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessory;
  v3 = type metadata accessor for Accessory();
  v4 = *(*(v3 - 8) + 56);
  v4(v0 + v2, 1, 1, v3);
  v4(v0 + OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_secondaryAccessory, 1, 1, v3);
  v5 = v0 + OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessoryMargin;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_topSeparatorView;
  v7 = type metadata accessor for SeparatorView();
  *(v0 + v6) = [objc_allocWithZone(v7) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v8 = v0 + OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_topSeparatorViewInsets;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_showTopSeparatorView) = 0;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_bottomSeparatorView;
  *(v0 + v9) = [objc_allocWithZone(v7) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = v0 + OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_bottomSeparatorViewInsets;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_showBottomSeparatorView) = 0;
  v11 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessoryAction);
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_backgroundSelectionView;
  *(v0 + v12) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_isSelectable) = 1;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_disabled) = 0;
  v13 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_selectionHandler);
  *v13 = 0;
  v13[1] = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_tapGestureRecognizer) = 0;
  sub_76A840();
  __break(1u);
}

uint64_t LinkPresentationProvider.presentation(for:)(uint64_t a1)
{
  v2 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v2 - 8);
  v4 = aBlock - v3;
  v5 = sub_7570A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BD88(&qword_953D48);
  v9 = sub_768F90();
  sub_75A260();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_3F5C44(v4);
    sub_3F5CAC();
    swift_allocError();
    *v10 = 0;
    sub_768F50();
LABEL_6:

    return v9;
  }

  (*(v6 + 32))(v8, v4, v5);
  if ((sub_75A250() & 1) == 0)
  {
    sub_3F5CAC();
    swift_allocError();
    *v19 = 1;
    sub_768F50();
    (*(v6 + 8))(v8, v5);
    goto LABEL_6;
  }

  v11 = objc_opt_self();
  sub_757040(v12);
  v14 = v13;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v9;
  v16[3] = v15;
  v16[4] = a1;
  aBlock[4] = sub_3F60BC;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_151A34;
  aBlock[3] = &unk_890AA0;
  v17 = _Block_copy(aBlock);

  v18 = [v11 requestMetadataForURL:v14 completionHandler:v17];
  _Block_release(v17);

  (*(v6 + 8))(v8, v5);
  return v9;
}

uint64_t sub_3F5C44(uint64_t a1)
{
  v2 = sub_BD88(&unk_93FD30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_3F5CAC()
{
  result = qword_953D50;
  if (!qword_953D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_953D50);
  }

  return result;
}

uint64_t sub_3F5D00()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3F5D38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_768380();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_7683C0();
  __chkstk_darwin(v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    sub_768F50();
  }

  else
  {
    v26 = v15;
    sub_12EA98();
    v25 = v11;
    v24 = sub_769970();
    v19 = swift_allocObject();
    v19[2] = a1;
    v19[3] = a4;
    v19[4] = a5;
    v19[5] = a3;
    aBlock[4] = sub_3F641C;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23F0CC;
    aBlock[3] = &unk_890C10;
    v20 = _Block_copy(aBlock);
    v21 = a1;

    sub_7683A0();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_3F6428(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags);
    sub_BD88(&qword_940350);
    sub_4C874();
    sub_76A5A0();
    v22 = v24;
    sub_769980();
    _Block_release(v20);

    (*(v25 + 8))(v13, v10);
    return (*(v26 + 8))(v17, v14);
  }
}

uint64_t sub_3F6074()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_3F60C8(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = a1;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_6;
  }

  v5 = v4;
  v6 = sub_3F6470(a3, v5);

  if ((v6 & 1) == 0)
  {

LABEL_6:
    v4 = 0;
    v7 = a3;
    goto LABEL_7;
  }

  v7 = a3 | 0x8000000000000000;
  v8 = v5;
LABEL_7:
  swift_retain_n();
  sub_768F60();
  sub_B3204(v7, v4);
  sub_B3204(v7, v4);
}

uint64_t sub_3F61A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_3F6260(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 16))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_3F62BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
    }
  }

  return result;
}

unint64_t sub_3F6378()
{
  result = qword_953E10;
  if (!qword_953E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_953E10);
  }

  return result;
}

uint64_t sub_3F63CC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_3F6428(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_3F6470(uint64_t a1, void *a2)
{
  v3 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v30 - v7;
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  v12 = sub_7570A0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75A260();
  v16 = *(v13 + 48);
  if (v16(v11, 1, v12) == 1)
  {
    sub_3F5C44(v11);
    return 0;
  }

  (*(v13 + 32))(v15, v11, v12);
  if ((sub_75A250() & 1) == 0)
  {
LABEL_8:
    (*(v13 + 8))(v15, v12);
    return 0;
  }

  v17 = [objc_allocWithZone(LPLinkMetadataPresentationTransformer) init];
  v31 = a2;
  [v17 setMetadata:a2];
  sub_757040(v18);
  v20 = v19;
  [v17 setURL:v19];

  v21 = [v17 presentationProperties];
  if (([v21 respondsToSelector:"style"] & 1) == 0)
  {
    swift_unknownObjectRelease();

    goto LABEL_8;
  }

  v22 = [v21 style];
  swift_unknownObjectRelease();
  v23 = vdupq_n_s64(v22);
  if (vmaxvq_u8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_87F018, v23), vceqq_s64(unk_87F028, v23)), vuzp1q_s32(vceqq_s64(xmmword_87F038, v23), vceqq_s64(unk_87F048, v23))), vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_87F058, v23), vceqq_s64(unk_87F068, v23)), vuzp1q_s32(vceqq_s64(xmmword_87F078, v23), vceqq_s64(unk_87F088, v23))))))
  {
    (*(v13 + 8))(v15, v12);

    return 1;
  }

  v25 = [v31 video];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 youTubeURL];

    if (v27)
    {
      sub_757060();

      (*(v13 + 8))(v15, v12);
      v28 = 0;
    }

    else
    {
      (*(v13 + 8))(v15, v12);

      v28 = 1;
    }

    v29 = 1;
    (*(v13 + 56))(v5, v28, 1, v12);
    sub_50774(v5, v8);
    if (v16(v8, 1, v12) != 1)
    {
      goto LABEL_17;
    }
  }

  else
  {

    (*(v13 + 8))(v15, v12);
    (*(v13 + 56))(v8, 1, 1, v12);
  }

  v29 = 0;
LABEL_17:
  sub_3F5C44(v8);
  return v29;
}

uint64_t CondensedInAppPurchaseContentView.applyData(from:asPartOf:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v91 = a2;
  v4 = sub_757CA0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_757AA0();
  v94 = *(v8 - 8);
  __chkstk_darwin(v8);
  v92 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v93 = &v77 - v11;
  v12 = sub_BD88(&unk_944DF0);
  __chkstk_darwin(v12 - 8);
  v90 = &v77 - v13;
  v89 = sub_7623A0();
  v84 = *(v89 - 1);
  __chkstk_darwin(v89);
  v85 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&unk_9457F0);
  v87 = *(v15 - 8);
  v88 = v15;
  __chkstk_darwin(v15);
  v86 = &v77 - v16;
  v17 = sub_BD88(&unk_948730);
  __chkstk_darwin(v17 - 8);
  v83 = &v77 - v18;
  v19 = sub_BD88(&unk_95F4E0);
  __chkstk_darwin(v19 - 8);
  v82 = &v77 - v20;
  v21 = sub_BD88(&unk_9457D0);
  __chkstk_darwin(v21 - 8);
  v23 = &v77 - v22;
  v24 = sub_BD88(&unk_9457E0);
  __chkstk_darwin(v24 - 8);
  v26 = &v77 - v25;
  v27 = sub_BD88(&unk_94A780);
  __chkstk_darwin(v27 - 8);
  v29 = &v77 - v28;
  sub_757D20();
  sub_3FAA54(&qword_945208, &type metadata accessor for InAppPurchaseSearchResult);
  result = sub_75C750();
  if (*&v95[0])
  {
    v78 = v8;
    v79 = v7;
    v80 = v5;
    v81 = v4;
    v31 = sub_757D10();

    v32 = sub_757B60();
    v33 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_headerLabel];
    v34 = "inAppDescription";
    if (v32)
    {
      v34 = "ultType.Heading.InAppPurchase";
      v35._countAndFlagsBits = 0xD00000000000003ALL;
    }

    else
    {
      v35._countAndFlagsBits = 0xD00000000000002DLL;
    }

    v35._object = (v34 | 0x8000000000000000);
    v98._countAndFlagsBits = 0;
    v98._object = 0xE000000000000000;
    sub_75B750(v35, v98);
    v36 = sub_769210();

    [v33 setText:v36];

    v37 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_titleLabel];

    sub_764EF0();
    if (v38)
    {
      v39 = sub_769210();
    }

    else
    {
      v39 = 0;
    }

    [v37 setText:v39];

    v40 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_subtitleLabel];
    sub_757B70();
    if (v41)
    {
      v42 = sub_769210();
    }

    else
    {
      v42 = 0;
    }

    [v40 setText:v42];

    v43 = v3;
    sub_10777C();
    if (sub_764EC0())
    {
      v44 = enum case for OfferStyle.white(_:);
      v45 = sub_758C70();
      v46 = *(v45 - 8);
      (*(v46 + 104))(v29, v44, v45);
      (*(v46 + 56))(v29, 0, 1, v45);
      v43 = v3;
      v47 = sub_75BD30();
      (*(*(v47 - 8) + 56))(v26, 1, 1, v47);
      v48 = sub_765870();
      (*(*(v48 - 8) + 56))(v23, 1, 1, v48);
      v49 = sub_75B490();
      v50 = v82;
      (*(*(v49 - 8) + 56))(v82, 1, 1, v49);
      memset(v95, 0, 32);
      v51 = sub_75FE10();

      sub_10A2C(v95, &unk_93FBD0);
      sub_10A2C(v50, &unk_95F4E0);
      sub_10A2C(v23, &unk_9457D0);
      sub_10A2C(v26, &unk_9457E0);
      sub_10A2C(v29, &unk_94A780);
    }

    else
    {
      v51 = 0;
    }

    v82 = v51;
    v77 = v43;
    v52 = *&v43[OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_offerButton];
    v53 = sub_764DB0();

    v54 = sub_BD88(&unk_948740);
    v55 = v83;
    (*(*(v54 - 8) + 56))(v83, 1, 1, v54);
    v56 = v84;
    v57 = v89;
    (*(v84 + 104))(v85, enum case for OfferButtonSubtitlePosition.right(_:), v89);
    (*(v56 + 56))(v90, 1, 1, v57);
    sub_3FAA54(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition);
    v58 = v86;
    sub_760940();
    sub_1DFEBC(v51, v53, 0, v55, v58, v91, 0, 0);

    (*(v87 + 8))(v58, v88);
    sub_10A2C(v55, &unk_948730);
    [v52 setHidden:0];
    sub_75A110();
    sub_768900();
    sub_768ED0();
    v59 = *&v43[OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_inAppPurchaseView];
    v60 = *&v95[0];
    v96.value.super.isa = 0;
    v96.is_nil = 0;
    sub_7591D0(v96, v61);
    v97.value.super.isa = 0;
    v97.is_nil = 0;
    sub_7591D0(v97, v62);
    sub_759210();
    sub_3FAA54(&qword_945810, &type metadata accessor for ArtworkView);
    sub_75A0C0();
    v91 = v60;
    sub_75A0C0();
    if (qword_93C360 != -1)
    {
      swift_once();
    }

    v90 = qword_99AF48;
    v63 = v93;
    sub_757B80();
    v64 = OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_theme;
    swift_beginAccess();
    v65 = v94;
    v66 = v78;
    (*(v94 + 24))(&v59[v64], v63, v78);
    swift_endAccess();
    v89 = *(v65 + 16);
    v67 = v92;
    (v89)(v92, &v59[v64], v66);
    sub_244454(v67);
    v68 = *(v65 + 8);
    v68(v67, v66);
    v68(v63, v66);
    [v59 setBackgroundColor:v90];
    sub_6A9BFC(v31, v59, v91);
    (v89)(v63, &v59[v64], v66);
    sub_244454(v63);
    v68(v63, v66);
    [v59 setNeedsLayout];
    [v59 setHidden:0];
    v69 = v80;
    v70 = &v59[OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_metrics];
    v71 = v79;
    v72 = v81;
    (*(v80 + 16))(v79, v70, v81);
    sub_757C50();
    v74 = v73;
    sub_757C90();
    v76 = v77;
    *&v77[OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_tileOffset] = v74 + v75;
    [v76 setNeedsLayout];

    return (*(v69 + 8))(v71, v72);
  }

  return result;
}

uint64_t CondensedInAppPurchaseContentView.fetch(for:in:on:asPartOf:)(uint64_t a1, uint64_t a2)
{
  sub_134D8(a1, v6);
  sub_BD88(&unk_93F520);
  sub_757D20();
  result = swift_dynamicCast();
  if (result)
  {
    v5 = sub_757D10();

    sub_6A9BFC(v5, *(v2 + OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_inAppPurchaseView), a2);
  }

  return result;
}

uint64_t CondensedInAppPurchaseContentView.cancelArtworkFetches(on:asPartOf:deprioritizingFetches:)(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v5.value.super.isa = 0;
  v5.is_nil = 0;
  sub_7591D0(v5, a3);
  v6.value.super.isa = 0;
  v6.is_nil = 0;
  sub_7591D0(v6, v3);
  sub_759210();
  sub_3FAA54(&qword_945810, &type metadata accessor for ArtworkView);
  sub_75A0C0();
  return sub_75A0C0();
}

uint64_t static CondensedInAppPurchaseContentView.prefetchArtwork(for:with:asPartOf:)()
{
  sub_757D20();
  sub_3FAA54(&qword_945208, &type metadata accessor for InAppPurchaseSearchResult);
  result = sub_75C750();
  if (v3)
  {
    sub_757D10();
    v1 = sub_6AA1DC();

    v2._rawValue = v1;
    sub_75A070(v2);
  }

  return result;
}

double sub_3F787C(uint64_t a1, uint64_t a2, objc_class *a3)
{
  v137 = a3;
  v152 = a1;
  v136 = sub_766E60();
  v156 = *(v136 - 8);
  __chkstk_darwin(v136);
  v122 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_766E50();
  v155 = *(v121 - 8);
  __chkstk_darwin(v121);
  v120 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_766E00();
  v154 = *(v135 - 8);
  __chkstk_darwin(v135);
  v119 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_766EA0();
  v124 = *(v7 - 8);
  v125 = v7;
  __chkstk_darwin(v7);
  v123 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_75D850();
  v130 = *(v9 - 8);
  v131 = v9;
  __chkstk_darwin(v9);
  v138 = (&v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v129 = &v110 - v12;
  v151 = sub_762D10();
  v153 = *(v151 - 8);
  __chkstk_darwin(v151);
  v144 = (&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_7664A0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_757CA0();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757C20();
  sub_757C60();
  (*(v19 + 8))(v21, v18);
  v134 = sub_7670D0();
  swift_allocObject();
  v128 = sub_7670B0();
  v157 = a2;
  sub_7578F0();
  LODWORD(v150) = enum case for FontSource.useCase(_:);
  v22 = *(v15 + 104);
  v148 = v15 + 104;
  v149 = v22;
  v140 = v14;
  v22(v17);
  v23 = v137;
  v24.super.isa = v137;
  v25.super.isa = sub_766490(v24).super.isa;
  v26 = *(v15 + 8);
  v146 = v15 + 8;
  v147 = v26;
  v26(v17, v14);
  v27 = sub_757B60();
  v28 = "inAppDescription";
  if (v27)
  {
    v28 = "ultType.Heading.InAppPurchase";
    v29._countAndFlagsBits = 0xD00000000000003ALL;
  }

  else
  {
    v29._countAndFlagsBits = 0xD00000000000002DLL;
  }

  v29._object = (v28 | 0x8000000000000000);
  v178._countAndFlagsBits = 0;
  v178._object = 0xE000000000000000;
  sub_75B750(v29, v178);
  v139 = v30;
  v31 = v25.super.isa;
  sub_757970();
  v32 = sub_7653B0();
  v176 = v32;
  v145 = sub_3FAA54(&qword_93F9B0, &type metadata accessor for Feature);
  v177 = v145;
  v33 = sub_B1B4(v175);
  LODWORD(v142) = enum case for Feature.measurement_with_labelplaceholder(_:);
  v34 = *(v32 - 8);
  v141 = *(v34 + 104);
  v143 = (v34 + 104);
  v141(v33);
  sub_765C30();
  sub_BEB8(v175);
  v35 = v144;
  v118 = v31;
  sub_762D00();
  sub_762CE0();
  v139 = *(v153 + 8);
  v153 += 8;
  v36 = v35;
  v37 = v151;
  (v139)(v36, v151);
  sub_7579D0();
  v38 = v140;
  v149(v17, v150, v140);
  v39.super.isa = v23;
  isa = sub_766490(v39).super.isa;
  v147(v17, v38);
  sub_764EF0();
  v41 = isa;
  sub_757960();
  v173 = v32;
  v174 = v145;
  v42 = sub_B1B4(v172);
  (v141)(v42, v142, v32);
  sub_765C30();
  sub_BEB8(v172);
  v43 = v144;
  v117 = v41;
  sub_762D00();
  sub_762CE0();
  (v139)(v43, v37);
  sub_757910();
  v44 = v140;
  v149(v17, v150, v140);
  v45 = v137;
  v46.super.isa = v137;
  v47 = sub_766490(v46).super.isa;
  v147(v17, v44);
  sub_757B70();
  v48 = v47;
  v49.super.isa = v45;
  sub_7579C0(v49);
  v170 = v32;
  v171 = v145;
  v50 = sub_B1B4(v169);
  (v141)(v50, v142, v32);
  sub_765C30();
  sub_BEB8(v169);
  v116 = v48;
  sub_762D00();
  sub_762CE0();
  (v139)(v43, v151);
  if (sub_769A00())
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v51 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v51 = qword_946938;
  }

  v52 = v131;
  v53 = sub_BE38(v131, v51);
  v54 = v130;
  v55 = v138;
  (*(v130 + 16))(v138, v53, v52);
  (*(v54 + 32))(v129, v55, v52);
  sub_75D800();
  sub_75D830();
  v56 = v134;
  swift_allocObject();
  v57 = sub_7670B0();
  v168[4] = &protocol witness table for LayoutViewPlaceholder;
  v168[3] = v56;
  v168[0] = v128;
  v167[4] = &protocol witness table for LayoutViewPlaceholder;
  v167[3] = v56;
  v167[0] = v57;
  v115 = v57;
  sub_BD88(&qword_93F458);
  v58 = *(sub_766E90() - 8);
  v127 = *(v58 + 72);
  v59 = (*(v58 + 80) + 32) & ~*(v58 + 80);
  v113 = 4 * v127;
  v60 = swift_allocObject();
  v114 = v60;
  *(v60 + 16) = xmmword_784250;
  v61 = v60 + v59;

  sub_7578E0();
  v165 = &type metadata for CGFloat;
  v166 = &protocol witness table for CGFloat;
  v164[0] = v62;
  sub_7579A0();
  v112 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v63 = v154;
  v64 = *(v154 + 104);
  v134 = v154 + 104;
  v138 = v64;
  v65 = v119;
  v64();
  v66 = sub_BD88(&unk_960ED0);
  v67 = *(v155 + 72);
  v139 = *(v155 + 80);
  v140 = v66;
  v68 = v155;
  v132 = (v139 + 32) & ~v139;
  v152 = 2 * v67;
  v153 = 3 * v67;
  v151 = v67;
  v69 = swift_allocObject();
  v150 = xmmword_77DC20;
  *(v69 + 16) = xmmword_77DC20;
  sub_766E40();
  sub_766E20();
  sub_766E30();
  *&v159 = v69;
  v148 = sub_3FAA54(&qword_93F448, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
  v147 = sub_BD88(&unk_960EE0);
  v149 = sub_1EDC8();
  v71 = v120;
  v70 = v121;
  sub_76A5A0();
  LODWORD(v146) = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v72 = v156;
  v144 = *(v156 + 104);
  v145 = v156 + 104;
  v73 = v122;
  v74 = v136;
  v144(v122);
  v133 = v61;
  sub_766E80();
  v75 = *(v72 + 8);
  v156 = v72 + 8;
  v143 = v75;
  v75(v73, v74);
  v76 = *(v68 + 8);
  v155 = v68 + 8;
  v142 = v76;
  v76(v71, v70);
  v77 = *(v63 + 8);
  v154 = v63 + 8;
  v141 = v77;
  (v77)(v65, v135);
  sub_10A2C(v162, &unk_93F9C0);
  sub_BEB8(v164);
  v78 = v176;
  v79 = v177;
  v80 = sub_B170(v175, v176);
  v165 = v78;
  v166 = *(v79 + 8);
  v81 = sub_B1B4(v164);
  (*(*(v78 - 8) + 16))(v81, v80, v78);
  sub_757940();
  v161 = 0;
  v159 = 0u;
  v160 = 0u;
  v126 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
  (v138)(v65);
  v82 = swift_allocObject();
  *(v82 + 16) = v150;
  sub_766E40();
  sub_766E20();
  sub_766E30();
  v158 = v82;
  sub_76A5A0();
  v83 = v136;
  (v144)(v73, v146, v136);
  v84 = v127;
  sub_766E80();
  v85 = v83;
  v143(v73, v83);
  v142(v71, v70);
  v86 = v135;
  (v141)(v65, v135);
  sub_10A2C(&v159, &unk_93F9C0);
  sub_BEB8(v162);
  sub_BEB8(v164);
  v111 = 2 * v84;
  v87 = v173;
  v88 = v174;
  v89 = sub_B170(v172, v173);
  v165 = v87;
  v166 = *(v88 + 8);
  v90 = sub_B1B4(v164);
  (*(*(v87 - 8) + 16))(v90, v89, v87);
  sub_757930();
  v161 = 0;
  v159 = 0u;
  v160 = 0u;
  (v138)(v65, v126, v86);
  v91 = swift_allocObject();
  *(v91 + 16) = v150;
  sub_766E40();
  sub_766E20();
  sub_766E30();
  v158 = v91;
  sub_76A5A0();
  (v144)(v73, v146, v85);
  v92 = v111;
  sub_766E80();
  v143(v73, v85);
  v142(v71, v70);
  v93 = v86;
  (v141)(v65, v86);
  sub_10A2C(&v159, &unk_93F9C0);
  sub_BEB8(v162);
  sub_BEB8(v164);
  v127 += v92;
  v94 = v170;
  v95 = v171;
  v96 = sub_B170(v169, v170);
  v165 = v94;
  v166 = *(v95 + 8);
  v97 = sub_B1B4(v164);
  (*(*(v94 - 8) + 16))(v97, v96, v94);
  sub_757950();
  v161 = 0;
  v159 = 0u;
  v160 = 0u;
  (v138)(v65, v126, v86);
  v98 = swift_allocObject();
  *(v98 + 16) = v150;
  sub_766E40();
  sub_766E20();
  sub_766E30();
  v158 = v98;
  sub_76A5A0();
  v99 = v136;
  (v144)(v73, v146, v136);
  sub_766E80();
  v143(v73, v99);
  v142(v71, v70);
  (v141)(v65, v93);
  sub_10A2C(&v159, &unk_93F9C0);
  sub_BEB8(v162);
  sub_BEB8(v164);
  sub_7579A0();
  v163 = 0;
  memset(v162, 0, sizeof(v162));
  (v138)(v65, v112, v93);
  v100 = swift_allocObject();
  *(v100 + 16) = v150;
  sub_766E40();
  sub_766E20();
  sub_766E30();
  *&v159 = v100;
  sub_76A5A0();
  (v144)(v73, v146, v99);
  sub_766E80();
  v143(v73, v99);
  v142(v71, v70);
  (v141)(v65, v93);
  sub_10A2C(v162, &unk_93F9C0);
  sub_BEB8(v164);
  v101 = v123;
  sub_766E70();
  sub_BEB8(v167);
  sub_BEB8(v168);
  sub_7671D0();
  sub_BD88(&unk_93F5C0);
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_77D9F0;
  v103 = v137;
  *(v102 + 32) = v137;
  v104 = v103;
  v105 = sub_7671E0();
  v106 = v125;
  sub_7665A0();
  v108 = v107;

  (*(v124 + 8))(v101, v106);
  (*(v130 + 8))(v129, v131);
  sub_BEB8(v169);
  sub_BEB8(v172);
  sub_BEB8(v175);
  return v108;
}

double sub_3F8DA4(uint64_t a1, uint64_t a2, objc_class *a3)
{
  v170 = a3;
  v174 = a1;
  v146 = sub_7670F0();
  v144 = *(v146 - 8);
  __chkstk_darwin(v146);
  v145 = &v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v142 = &v126 - v7;
  v143 = sub_766EA0();
  v141 = *(v143 - 8);
  __chkstk_darwin(v143);
  v158 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_766E60();
  v181 = *(v179 - 8);
  __chkstk_darwin(v179);
  v136 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_766E50();
  v182 = *(v135 - 8);
  __chkstk_darwin(v135);
  v134 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_766E00();
  v180 = *(v176 - 8);
  __chkstk_darwin(v176);
  v133 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_767120();
  v139 = *(v12 - 8);
  v140 = v12;
  __chkstk_darwin(v12);
  v138 = &v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_75D850();
  v156 = *(v14 - 8);
  v157 = v14;
  __chkstk_darwin(v14);
  v161 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v155 = &v126 - v17;
  v175 = sub_762D10();
  *&v178 = *(v175 - 8);
  __chkstk_darwin(v175);
  v19 = &v126 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_7664A0();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v126 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_757CA0();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v126 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757C20();
  sub_757C60();
  (*(v25 + 8))(v27, v24);
  v153 = sub_7670D0();
  swift_allocObject();
  v154 = sub_7670B0();
  sub_7578F0();
  LODWORD(v173) = enum case for FontSource.useCase(_:);
  v28 = *(v21 + 104);
  v171 = v21 + 104;
  *&v172 = v28;
  v162 = v20;
  v28(v23);
  v29.super.isa = a3;
  v30.super.isa = sub_766490(v29).super.isa;
  v31 = *(v21 + 8);
  v168 = v21 + 8;
  v169 = v31;
  v31(v23, v20);
  v32 = sub_757B60();
  v33 = "inAppDescription";
  if (v32)
  {
    v33 = "ultType.Heading.InAppPurchase";
    v34._countAndFlagsBits = 0xD00000000000003ALL;
  }

  else
  {
    v34._countAndFlagsBits = 0xD00000000000002DLL;
  }

  v34._object = (v33 | 0x8000000000000000);
  v209._countAndFlagsBits = 0;
  v209._object = 0xE000000000000000;
  v163 = sub_75B750(v34, v209);
  v35 = v30.super.isa;
  sub_757970();
  v36 = sub_7653B0();
  v207 = v36;
  v167 = sub_3FAA54(&qword_93F9B0, &type metadata accessor for Feature);
  v208 = v167;
  v37 = sub_B1B4(v206);
  LODWORD(v165) = enum case for Feature.measurement_with_labelplaceholder(_:);
  v38 = *(v36 - 8);
  v164 = *(v38 + 104);
  v166 = v38 + 104;
  v164(v37);
  sub_765C30();
  sub_BEB8(v206);
  v160 = v19;
  v137 = v35;
  sub_762D00();
  sub_762CE0();
  v39 = *(v178 + 8);
  *&v178 = v178 + 8;
  v163 = v39;
  v40 = v19;
  v41 = v175;
  v39(v40, v175);
  v177 = a2;
  sub_7579D0();
  v42 = v162;
  (v172)(v23, v173, v162);
  v43.super.isa = v170;
  isa = sub_766490(v43).super.isa;
  v169(v23, v42);
  sub_764EF0();
  v45 = isa;
  sub_757960();
  v204 = v36;
  v205 = v167;
  v46 = sub_B1B4(v203);
  (v164)(v46, v165, v36);
  sub_765C30();
  sub_BEB8(v203);
  v47 = v160;
  v132 = v45;
  sub_762D00();
  sub_762CE0();
  v163(v47, v41);
  sub_757910();
  v48 = v162;
  (v172)(v23, v173, v162);
  v49 = v170;
  v50.super.isa = v170;
  v51 = sub_766490(v50).super.isa;
  v169(v23, v48);
  sub_757B70();
  v52 = v51;
  v53.super.isa = v49;
  sub_7579C0(v53);
  v201 = v36;
  v202 = v167;
  v54 = sub_B1B4(v200);
  (v164)(v54, v165, v36);
  sub_765C30();
  sub_BEB8(v200);
  v131 = v52;
  sub_762D00();
  sub_762CE0();
  v163(v47, v175);
  if (sub_769A00())
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v55 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v55 = qword_946938;
  }

  v56 = v157;
  v57 = sub_BE38(v157, v55);
  v58 = v156;
  v59 = v161;
  (*(v156 + 16))(v161, v57, v56);
  (*(v58 + 32))(v155, v59, v56);
  sub_75D800();
  sub_75D830();
  v60 = v153;
  swift_allocObject();
  v130 = sub_7670B0();
  v199[5] = v154;
  v199[4] = &protocol witness table for LayoutViewPlaceholder;
  v199[3] = v60;
  v199[0] = v130;

  sub_757920();
  sub_B170(v196, v197);
  sub_766710();
  sub_7578E0();
  v151 = sub_7671D0();
  v152 = sub_BD88(&unk_93F5C0);
  v61 = swift_allocObject();
  v178 = xmmword_77D9F0;
  *(v61 + 16) = xmmword_77D9F0;
  *(v61 + 32) = v49;
  v129 = v49;
  v62 = sub_7671E0();
  sub_765C20();

  sub_BEB8(v196);
  sub_BD88(&qword_93F458);
  v63 = *(sub_766E90() - 8);
  v149 = *(v63 + 72);
  v64 = (*(v63 + 80) + 32) & ~*(v63 + 80);
  v65 = swift_allocObject();
  v128 = v65;
  *(v65 + 16) = xmmword_782440;
  v164 = (v65 + v64);
  sub_B170(v206, v207);
  sub_766560();
  sub_757940();
  v192 = 0;
  v191 = 0u;
  v190 = 0u;
  LODWORD(v150) = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
  v66 = v180;
  v67 = *(v180 + 104);
  v148 = v180 + 104;
  v159 = v67;
  v68 = v133;
  v67(v133);
  v69 = sub_BD88(&unk_960ED0);
  v70 = *(v182 + 72);
  v160 = *(v182 + 80);
  v161 = v69;
  v147 = (v160 + 32) & ~v160;
  v174 = 2 * v70;
  v175 = 3 * v70;
  v173 = v70;
  v71 = swift_allocObject();
  v172 = xmmword_77DC20;
  *(v71 + 16) = xmmword_77DC20;
  sub_766E40();
  sub_766E20();
  sub_766E30();
  v187 = v71;
  v170 = sub_3FAA54(&qword_93F448, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
  v169 = sub_BD88(&unk_960EE0);
  v171 = sub_1EDC8();
  v72 = v134;
  v73 = v135;
  sub_76A5A0();
  LODWORD(v168) = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v74 = v181;
  v75 = *(v181 + 104);
  v166 = v181 + 104;
  v167 = v75;
  v76 = v136;
  v77 = v179;
  v75(v136);
  sub_766E80();
  v78 = *(v74 + 8);
  v181 = v74 + 8;
  v165 = v78;
  v78(v76, v77);
  v79 = *(v182 + 8);
  v182 += 8;
  v163 = v79;
  v79(v72, v73);
  v80 = *(v66 + 8);
  v180 = v66 + 8;
  v162 = v80;
  v81 = v176;
  v80(v68, v176);
  sub_10A2C(&v190, &unk_93F9C0);
  sub_BEB8(v193);
  sub_BEB8(v196);
  v82 = v204;
  v83 = v205;
  v84 = sub_B170(v203, v204);
  v197 = v82;
  v198 = v83[1];
  v85 = sub_B1B4(v196);
  (*(*(v82 - 8) + 16))(v85, v84, v82);
  sub_757930();
  v192 = 0;
  v191 = 0u;
  v190 = 0u;
  v159(v68, v150, v81);
  v86 = swift_allocObject();
  *(v86 + 16) = v172;
  sub_766E40();
  sub_766E20();
  sub_766E30();
  v187 = v86;
  sub_76A5A0();
  v87 = v179;
  v167(v76, v168, v179);
  v88 = v149;
  sub_766E80();
  v165(v76, v87);
  v163(v72, v73);
  v89 = v68;
  v162(v68, v81);
  sub_10A2C(&v190, &unk_93F9C0);
  sub_BEB8(v193);
  sub_BEB8(v196);
  v127 = 2 * v88;
  v90 = v201;
  v91 = v202;
  v92 = sub_B170(v200, v201);
  v197 = v90;
  v198 = v91[1];
  v93 = sub_B1B4(v196);
  (*(*(v90 - 8) + 16))(v93, v92, v90);
  sub_757950();
  v192 = 0;
  v191 = 0u;
  v190 = 0u;
  v159(v68, v150, v81);
  v94 = swift_allocObject();
  *(v94 + 16) = v172;
  sub_766E40();
  sub_766E20();
  sub_766E30();
  v187 = v94;
  sub_76A5A0();
  v95 = v179;
  v167(v76, v168, v179);
  v96 = v127;
  sub_766E80();
  v165(v76, v95);
  v163(v72, v73);
  v97 = v176;
  v162(v89, v176);
  sub_10A2C(&v190, &unk_93F9C0);
  sub_BEB8(v193);
  sub_BEB8(v196);
  v150 = v96 + v149;
  sub_757980();
  sub_7578E0();
  v194 = &type metadata for CGFloat;
  v195 = &protocol witness table for CGFloat;
  v193[0] = v98;
  v159(v89, enum case for VerticalFlowLayout.VerticalPlacement.top(_:), v97);
  v99 = swift_allocObject();
  *(v99 + 16) = v172;
  sub_766E40();
  sub_766E20();
  sub_766E30();
  *&v190 = v99;
  sub_76A5A0();
  v100 = v179;
  v167(v76, v168, v179);
  sub_766E80();
  v165(v76, v100);
  v163(v72, v73);
  v162(v89, v97);
  sub_BEB8(v196);
  sub_10A2C(v193, &unk_93F9C0);
  v101 = v158;
  sub_766E70();
  sub_7578E0();
  v102 = swift_allocObject();
  *(v102 + 16) = v178;
  v103 = v129;
  *(v102 + 32) = v129;
  v104 = v103;
  v105 = sub_7671E0();
  sub_765C20();

  sub_7578E0();
  v106 = swift_allocObject();
  *(v106 + 16) = v178;
  *(v106 + 32) = v104;
  v107 = v104;
  v108 = sub_7671E0();
  sub_765C20();

  sub_7578E0();
  v109 = swift_allocObject();
  *(v109 + 16) = v178;
  *(v109 + 32) = v107;
  v110 = v107;
  v111 = sub_7671E0();
  sub_765C20();

  sub_7579B0();
  sub_B170(v196, v197);
  sub_766710();
  sub_BEB8(v196);
  sub_766560();
  v112 = v143;
  v194 = v143;
  v195 = &protocol witness table for VerticalFlowLayout;
  v113 = sub_B1B4(v193);
  v114 = v141;
  (*(v141 + 16))(v113, v101, v112);
  sub_134D8(v196, &v190);
  v189 = &protocol witness table for Double;
  v188 = &type metadata for Double;
  v187 = 0;
  v186 = 0;
  v184 = 0u;
  v185 = 0u;
  v115 = enum case for FlankedHorizontalLayout.ViewAlignment.center(_:);
  v116 = *(v144 + 104);
  v117 = v146;
  v116(v142, enum case for FlankedHorizontalLayout.ViewAlignment.center(_:), v146);
  v183[3] = sub_766970();
  v183[4] = &protocol witness table for ZeroDimension;
  sub_B1B4(v183);
  sub_766960();
  v116(v145, v115, v117);
  v118 = v138;
  sub_767110();
  sub_BEB8(v196);
  (*(v114 + 8))(v158, v112);

  sub_BEB8(v199);
  v119 = swift_allocObject();
  *(v119 + 16) = v178;
  *(v119 + 32) = v110;
  v120 = v110;
  v121 = sub_7671E0();
  sub_3FAA54(&qword_953E18, &type metadata accessor for FlankedHorizontalLayout);
  v122 = v140;
  sub_7665A0();
  v124 = v123;

  (*(v139 + 8))(v118, v122);
  (*(v156 + 8))(v155, v157);
  sub_BEB8(v200);
  sub_BEB8(v203);
  sub_BEB8(v206);
  return v124;
}

double _s18ASMessagesProvider33CondensedInAppPurchaseContentViewC6height2in8asPartOf12CoreGraphics7CGFloatV0E8StoreKit17ItemLayoutContextV_9JetEngine15BaseObjectGraphCtFZ_0()
{
  v0 = sub_757CA0();
  v22 = *(v0 - 8);
  v23 = v0;
  __chkstk_darwin(v0);
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_7579E0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  v10 = sub_75DAB0();
  __chkstk_darwin(v10 - 8);
  v24 = sub_7656C0();
  v11 = *(v24 - 8);
  __chkstk_darwin(v24);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757D20();
  sub_3FAA54(&qword_945208, &type metadata accessor for InAppPurchaseSearchResult);
  sub_75C750();
  if (!v25)
  {
    return 0.0;
  }

  v21 = v3;
  v14 = sub_757D10();

  sub_75C720();
  if (qword_93D050 != -1)
  {
    swift_once();
  }

  sub_765660();
  _s18ASMessagesProvider33CondensedInAppPurchaseContentViewC7metrics0E8StoreKit0c6SearchdeF10CardLayoutV7MetricsVvpfi_0();
  swift_getKeyPath();
  sub_75C7B0();

  v15 = v25;
  sub_765630();
  if (sub_769A00())
  {
    sub_757C20();
    sub_757C50();
    sub_757C90();
    sub_757990();
    v16 = sub_3F787C(v14, v6, v15);

    v17 = *(v4 + 8);
    v18 = v21;
    v17(v6, v21);
    (*(v22 + 8))(v2, v23);
    v17(v9, v18);
  }

  else
  {
    v16 = sub_3F8DA4(v14, v9, v15);

    (*(v4 + 8))(v9, v21);
  }

  (*(v11 + 8))(v13, v24);
  return v16;
}

uint64_t sub_3FAA54(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_3FAA9C()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider33PrivacyCategoryCollectionViewCell_privacyCategoryView];
  v2 = OBJC_IVAR____TtC18ASMessagesProvider19PrivacyCategoryView_category;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider19PrivacyCategoryView_category) = 0;

  sub_4DA5B8();
  v6.value.super.isa = 0;
  v6.is_nil = 0;
  sub_7591D0(v6, v3);
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider33PrivacyCategoryCollectionViewCell_privacyCategory] = 0;

  *(v1 + v2) = 0;

  sub_4DA5B8();
  return [v0 setNeedsLayout];
}

uint64_t type metadata accessor for PrivacyCategoryCollectionViewCell()
{
  result = qword_953E50;
  if (!qword_953E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3FAE4C()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

char *sub_3FAEF4()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC18ASMessagesProvider33PrivacyCategoryCollectionViewCell_privacyCategoryView;
  *&v0[v2] = [objc_allocWithZone(type metadata accessor for PrivacyCategoryView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider33PrivacyCategoryCollectionViewCell_itemLayoutContext;
  v4 = sub_75C840();
  (*(*(v4 - 8) + 56))(&v0[v3], 1, 1, v4);
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider33PrivacyCategoryCollectionViewCell_privacyCategory] = 0;
  v12.receiver = v0;
  v12.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v6 = [v5 contentView];
  [v6 setClipsToBounds:0];

  v7 = [v5 contentView];
  [v7 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v8 = [v5 contentView];
  sub_396E8();
  v9 = sub_76A000();
  [v8 setBackgroundColor:v9];

  v10 = [v5 contentView];
  [v10 addSubview:*&v5[OBJC_IVAR____TtC18ASMessagesProvider33PrivacyCategoryCollectionViewCell_privacyCategoryView]];

  return v5;
}

uint64_t sub_3FB0FC()
{
  v1 = sub_BD88(&unk_944D90);
  __chkstk_darwin(v1 - 8);
  v2 = sub_BD88(&qword_953E80);
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v10 - v5;
  if ([*(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider38ProductEditorsChoiceCollectionViewCell_editorsChoiceView) + qword_963BB0) isHidden])
  {
    sub_BD88(&qword_943A50);
    sub_763CD0();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_77E280;
    sub_763CC0();
    sub_763CB0();
    v10 = v7;
    sub_3FC280(&qword_943A58, &type metadata accessor for SelectableShelfComponentViewReaction);
    sub_BD88(&qword_943A60);
    sub_273628();
    return sub_76A5A0();
  }

  else
  {
    sub_75C790();
    sub_768B30();
    sub_3FC1FC();
    sub_768AF0();
    sub_BD88(&qword_943A50);
    sub_763CD0();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_77DC20;
    sub_763CC0();
    sub_763CB0();
    sub_763CA0();
    v10 = v9;
    sub_3FC280(&qword_943A58, &type metadata accessor for SelectableShelfComponentViewReaction);
    sub_BD88(&qword_943A60);
    sub_273628();
    sub_76A5A0();
    return (*(v3 + 8))(v6, v2);
  }
}