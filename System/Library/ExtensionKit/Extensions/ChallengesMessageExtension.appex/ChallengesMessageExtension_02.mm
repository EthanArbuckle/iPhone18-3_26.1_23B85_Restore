uint64_t sub_100033BC4()
{
  v2 = *(type metadata accessor for ChallengeInviteCardView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10001ECD8;

  return sub_10002B438(v4, v5, v0 + v3);
}

uint64_t sub_100033CA0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100033CE8()
{
  result = qword_100055B58;
  if (!qword_100055B58)
  {
    sub_10000A440(&qword_1000546A8);
    sub_100033DA0();
    sub_10000A5A4(&qword_100054E38, &qword_100054E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055B58);
  }

  return result;
}

unint64_t sub_100033DA0()
{
  result = qword_100055B60;
  if (!qword_100055B60)
  {
    sub_10000A440(&qword_100055B30);
    sub_10000A5A4(&qword_100055B68, &qword_100055B38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055B60);
  }

  return result;
}

uint64_t sub_100033E58()
{
  v1 = type metadata accessor for ChallengeInviteCardView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_1000028DC(&qword_1000555D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1000403FC();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  sub_100006AC8(v0 + v3 + *(v1 + 20));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100033FA8()
{
  v1 = type metadata accessor for ChallengeInviteCardView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  sub_1000028DC(&qword_1000555D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1000403FC();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  sub_100006AC8(v0 + v3 + *(v1 + 20));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000340D0(uint64_t a1)
{
  v4 = *(type metadata accessor for ChallengeInviteCardView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001C3DC;

  return sub_10002AC9C(a1, v6, v7, v1 + v5);
}

uint64_t sub_1000341C0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000341F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001ECD8;

  return sub_100033878(a1, v4);
}

uint64_t sub_1000342B0(uint64_t a1)
{
  v4 = *(type metadata accessor for ChallengeInviteCardView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001ECD8;

  return sub_10002AF48(a1, v6, v7, v1 + v5);
}

unint64_t sub_1000343A8()
{
  result = qword_100055BE0;
  if (!qword_100055BE0)
  {
    sub_10000A440(&qword_100055BC8);
    sub_10000A5A4(&qword_100055BE8, &qword_100055BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055BE0);
  }

  return result;
}

unint64_t sub_100034460()
{
  result = qword_100055BF8;
  if (!qword_100055BF8)
  {
    sub_10000A440(&qword_100055BD0);
    sub_1000343A8();
    sub_10000A5A4(&qword_100054FB8, &qword_100054FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055BF8);
  }

  return result;
}

unint64_t sub_100034518()
{
  result = qword_100055C08;
  if (!qword_100055C08)
  {
    sub_10000A440(&qword_100055BB0);
    sub_1000345D4();
    sub_100033CA0(&qword_100055C20, type metadata accessor for ChallengeInviteContentCard);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055C08);
  }

  return result;
}

unint64_t sub_1000345D4()
{
  result = qword_100055C10;
  if (!qword_100055C10)
  {
    sub_10000A440(&qword_100055BC0);
    sub_10000A5A4(&qword_100055C18, &qword_100055BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055C10);
  }

  return result;
}

unint64_t sub_10003468C()
{
  result = qword_100055C28;
  if (!qword_100055C28)
  {
    sub_10000A440(&qword_100055B98);
    sub_10000A5A4(&qword_100055C30, &qword_100055B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055C28);
  }

  return result;
}

uint64_t sub_100034744()
{
  v1 = *(type metadata accessor for ChallengeInviteCardView.ContentView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for ChallengeInviteContentCardModel(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 2, v6))
  {
    type metadata accessor for ChallengeInviteContentCardHeaderKind(0);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v7 = sub_100040D0C();
      (*(*(v7 - 8) + 8))(v0 + v3, v7);
      sub_1000028DC(&qword_100055B00);
    }

    v8 = *(v6 + 28);
    v9 = sub_10003FE2C();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100034990(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_100034A0C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10004062C();
  *a1 = result;
  return result;
}

uint64_t sub_100034A74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengeInviteCardState(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100034AF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengeInviteCardState(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100034B84()
{
  result = type metadata accessor for ChallengeInviteCardState(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100034BF0()
{
  sub_10000A440(&qword_100055B28);
  sub_10000A440(&qword_100055B48);
  sub_10000A440(&qword_1000546A8);
  sub_100033CE8();
  swift_getOpaqueTypeConformance2();
  sub_10000A5A4(&qword_100055B70, &qword_100055B48);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100034CF4()
{
  result = qword_100055CC8;
  if (!qword_100055CC8)
  {
    sub_10000A440(&qword_100055CD0);
    sub_100034518();
    sub_10003468C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055CC8);
  }

  return result;
}

uint64_t sub_100034DB8(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for PlayerAvatar(0);
    return a2;
  }

  return result;
}

uint64_t sub_100034E4C()
{
  if (qword_100054658 != -1)
  {
    swift_once();
  }

  v4 = static ShadowStyle.none;
  v0 = qword_100058F80;
  v1 = qword_100058F88;
  v2 = sub_100002DB8(&_swiftEmptyArrayStorage);
  static GameIconAndPlayerAvatarsView.LayoutMetrics.xSmall = 0x403C000000000000;
  unk_100058E60 = v4;
  qword_100058E70 = v0;
  qword_100058E78 = v1;
  unk_100058E80 = v2;
  qword_100058E88 = 0;
}

uint64_t *GameIconAndPlayerAvatarsView.LayoutMetrics.xSmall.unsafeMutableAddressor()
{
  if (qword_100054630 != -1)
  {
    swift_once();
  }

  return &static GameIconAndPlayerAvatarsView.LayoutMetrics.xSmall;
}

__n128 sub_100034FB0()
{
  if (qword_100054658 != -1)
  {
    swift_once();
  }

  v4 = static ShadowStyle.none;
  v0 = qword_100058F80;
  v1 = qword_100058F88;
  v2 = sub_100002DB8(&off_100051FC0);

  sub_1000028DC(&qword_100055CD8);
  swift_arrayDestroy();
  static GameIconAndPlayerAvatarsView.LayoutMetrics.small = 0x4049000000000000;
  result = v4;
  unk_100058E98 = v4;
  qword_100058EA8 = v0;
  qword_100058EB0 = v1;
  unk_100058EB8 = v2;
  qword_100058EC0 = 3;
  return result;
}

uint64_t *GameIconAndPlayerAvatarsView.LayoutMetrics.small.unsafeMutableAddressor()
{
  if (qword_100054638 != -1)
  {
    swift_once();
  }

  return &static GameIconAndPlayerAvatarsView.LayoutMetrics.small;
}

__n128 sub_100035108()
{
  if (qword_100054658 != -1)
  {
    swift_once();
  }

  v4 = static ShadowStyle.none;
  v0 = qword_100058F80;
  v1 = qword_100058F88;
  v2 = sub_100002DB8(&off_100052180);

  sub_1000028DC(&qword_100055CD8);
  swift_arrayDestroy();
  *&static GameIconAndPlayerAvatarsView.LayoutMetrics.medium = 0x4054000000000000;
  result = v4;
  *(&static GameIconAndPlayerAvatarsView.LayoutMetrics.medium + 8) = v4;
  qword_100058EE0 = v0;
  qword_100058EE8 = v1;
  unk_100058EF0 = v2;
  qword_100058EF8 = 4;
  return result;
}

__int128 *GameIconAndPlayerAvatarsView.LayoutMetrics.medium.unsafeMutableAddressor()
{
  if (qword_100054640 != -1)
  {
    swift_once();
  }

  return &static GameIconAndPlayerAvatarsView.LayoutMetrics.medium;
}

uint64_t static GameIconAndPlayerAvatarsView.LayoutMetrics.large(shadowStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v10 = sub_100002DB8(&off_1000523E8);
  sub_1000028DC(&qword_100055CD8);
  swift_arrayDestroy();
  *a2 = 0x4060400000000000;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a1;
  *(a2 + 40) = v10;
  *(a2 + 48) = 5;
}

__n128 sub_10003531C()
{
  if (qword_100054668 != -1)
  {
    swift_once();
  }

  v4 = static ShadowStyle.xLarge;
  v0 = qword_100058FC0;
  v1 = qword_100058FC8;
  v2 = sub_100002DB8(&off_100052660);

  sub_1000028DC(&qword_100055CD8);
  swift_arrayDestroy();
  static GameIconAndPlayerAvatarsView.LayoutMetrics.xLarge = 0x4062C00000000000;
  result = v4;
  unk_100058F08 = v4;
  qword_100058F18 = v0;
  qword_100058F20 = v1;
  unk_100058F28 = v2;
  qword_100058F30 = 5;
  return result;
}

uint64_t *GameIconAndPlayerAvatarsView.LayoutMetrics.xLarge.unsafeMutableAddressor()
{
  if (qword_100054648 != -1)
  {
    swift_once();
  }

  return &static GameIconAndPlayerAvatarsView.LayoutMetrics.xLarge;
}

__n128 sub_100035478()
{
  if (qword_100054668 != -1)
  {
    swift_once();
  }

  v4 = static ShadowStyle.xLarge;
  v0 = qword_100058FC0;
  v1 = qword_100058FC8;
  v2 = sub_100002DB8(&off_1000528D8);

  sub_1000028DC(&qword_100055CD8);
  swift_arrayDestroy();
  static GameIconAndPlayerAvatarsView.LayoutMetrics.xxLarge = 0x4065400000000000;
  result = v4;
  unk_100058F40 = v4;
  qword_100058F50 = v0;
  qword_100058F58 = v1;
  unk_100058F60 = v2;
  qword_100058F68 = 5;
  return result;
}

uint64_t *GameIconAndPlayerAvatarsView.LayoutMetrics.xxLarge.unsafeMutableAddressor()
{
  if (qword_100054650 != -1)
  {
    swift_once();
  }

  return &static GameIconAndPlayerAvatarsView.LayoutMetrics.xxLarge;
}

uint64_t sub_1000355D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a3;
  if (*a1 != -1)
  {
    swift_once();
    v4 = a3;
  }

  return sub_100034F78(a2, v4);
}

__n128 GameIconAndPlayerAvatarsView.init(playerAvatarTemplates:gameIconArtwork:layoutMetrics:gameIconRotationAngle:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, double a5@<D0>)
{
  v10 = sub_1000028DC(&qword_1000547F0);
  __chkstk_darwin(v10 - 8);
  v60 = v50 - v11;
  v12 = type metadata accessor for PlayerAvatar(0);
  v58 = *(v12 - 8);
  v59 = v12;
  __chkstk_darwin(v12);
  v14 = (v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_1000028DC(&qword_100055CE0);
  __chkstk_darwin(v15 - 8);
  v54 = v50 - v16;
  v17 = *(a1 + 16);
  if (v17)
  {
    v51 = a2;
    v52 = a3;
    v53 = a4;
    v62 = &_swiftEmptyArrayStorage;
    sub_1000366CC(0, v17, 0);
    v18 = v62;
    v57 = type metadata accessor for PlayerAvatar.Overlay(0);
    v19 = *(v57 - 8);
    v20 = *(v19 + 56);
    v55 = v19 + 56;
    v56 = v20;
    v50[1] = a1;
    v21 = (a1 + 40);
    do
    {
      v61 = v17;
      v23 = *(v21 - 1);
      v22 = *v21;
      v24 = v60;
      v25 = v18;
      v26 = v14;
      v28 = v56;
      v27 = v57;
      v56(v60, 1, 1, v57);
      v29 = *(v59 + 20);
      v30 = v26 + v29;
      v31 = v27;
      v14 = v26;
      v18 = v25;
      v28(v30, 1, 1, v31);
      *v14 = v23;
      v14[1] = v22;

      sub_100006CEC(v24, v14 + v29);
      v62 = v25;
      v33 = v25[2];
      v32 = v25[3];
      if (v33 >= v32 >> 1)
      {
        sub_1000366CC(v32 > 1, v33 + 1, 1);
        v18 = v62;
      }

      v18[2] = v33 + 1;
      sub_100036F74(v14, v18 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v33);
      v21 += 2;
      v17 = v61 - 1;
    }

    while (v61 != 1);

    a3 = v52;
    a4 = v53;
    a2 = v51;
  }

  else
  {

    v18 = &_swiftEmptyArrayStorage;
  }

  v34 = v54;
  sub_10000E06C(a2, v54, &qword_100055CE0);
  v38 = sub_100034DB8(*(a3 + 48), v18);
  if ((v37 & 1) == 0)
  {
    goto LABEL_9;
  }

  v41 = v37;
  v42 = v36;
  v43 = v35;
  sub_10004134C();
  swift_unknownObjectRetain_n();
  v44 = swift_dynamicCastClass();
  if (!v44)
  {
    swift_unknownObjectRelease();
    v44 = &_swiftEmptyArrayStorage;
  }

  v45 = v44[2];

  if (__OFSUB__(v41 >> 1, v42))
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v45 != (v41 >> 1) - v42)
  {
LABEL_19:
    swift_unknownObjectRelease();
    v37 = v41;
    v36 = v42;
    v35 = v43;
LABEL_9:
    sub_1000364A8(v38, v35, v36, v37);
    v40 = v39;
    swift_unknownObjectRelease();
    sub_10000A798(a2, &qword_100055CE0);
    goto LABEL_17;
  }

  v40 = swift_dynamicCastClass();
  if (!v40)
  {
    swift_unknownObjectRelease();
    v40 = &_swiftEmptyArrayStorage;
  }

  sub_10000A798(a2, &qword_100055CE0);
  swift_unknownObjectRelease();
LABEL_17:
  *a4 = v40;
  v46 = type metadata accessor for GameIconAndPlayerAvatarsView();
  sub_10001772C(v34, a4 + v46[5], &qword_100055CE0);
  v47 = a4 + v46[7];
  v48 = *(a3 + 16);
  *v47 = *a3;
  *(v47 + 1) = v48;
  result = *(a3 + 32);
  *(v47 + 2) = result;
  *(v47 + 6) = *(a3 + 48);
  *(a4 + v46[6]) = a5;
  return result;
}

uint64_t GameIconAndPlayerAvatarsView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_100040C7C();
  a1[1] = v3;
  v4 = sub_1000028DC(&qword_100055CE8);
  return sub_100035AD4(v1, a1 + *(v4 + 44));
}

uint64_t sub_100035AD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v3 = sub_1000028DC(&qword_100055DB0);
  v75 = *(v3 - 8);
  v76 = v3;
  __chkstk_darwin(v3);
  v70 = &v70 - v4;
  v5 = sub_1000028DC(&qword_100055DB8);
  __chkstk_darwin(v5 - 8);
  v78 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v77 = &v70 - v8;
  v9 = sub_1000028DC(&qword_100055DC0);
  v10 = *(v9 - 8);
  v72 = v9;
  v73 = v10;
  __chkstk_darwin(v9);
  v12 = &v70 - v11;
  v13 = sub_1000028DC(&qword_100055CE0);
  __chkstk_darwin(v13 - 8);
  v15 = &v70 - v14;
  v16 = sub_100040D0C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000028DC(&qword_100055DC8);
  __chkstk_darwin(v20 - 8);
  v74 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v71 = &v70 - v23;
  v24 = type metadata accessor for GameIconAndPlayerAvatarsView();
  v25 = a1;
  sub_10000E06C(a1 + v24[5], v15, &qword_100055CE0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10000A798(v15, &qword_100055CE0);
    v26 = 1;
    v28 = v71;
    v27 = v72;
    v29 = a1;
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    (*(v17 + 16))(v12, v19, v16);
    (*(v17 + 56))(v12, 0, 1, v16);
    v30 = type metadata accessor for GameIcon();
    v31 = *(v30 + 24);
    *&v12[v31] = swift_getKeyPath();
    sub_1000028DC(&qword_1000546C0);
    swift_storeEnumTagMultiPayload();
    v12[*(v30 + 20)] = 0;
    v29 = v25;
    v32 = (v25 + v24[7]);
    v33 = v32[1];
    v34 = v32[2];
    v35 = v32[3];
    v36 = v32[4];
    v37 = sub_100040C7C();
    v39 = v38;
    v40 = &v12[*(sub_1000028DC(&qword_100055E10) + 36)];
    *v40 = 0;
    *(v40 + 1) = v36;
    *(v40 + 2) = v35;
    *(v40 + 3) = v33;
    *(v40 + 4) = v34;
    *(v40 + 5) = v37;
    *(v40 + 6) = v39;

    sub_100040C7C();
    sub_10004045C();
    v41 = &v12[*(sub_1000028DC(&qword_100055E18) + 36)];
    v42 = v82;
    *v41 = v81;
    *(v41 + 1) = v42;
    *(v41 + 2) = v83;
    v43 = *(v29 + v24[6]);
    sub_100040C9C();
    v45 = v44;
    v47 = v46;
    (*(v17 + 8))(v19, v16);
    v28 = v71;
    v48 = v72;
    v49 = &v12[*(v72 + 36)];
    *v49 = v43;
    *(v49 + 1) = v45;
    *(v49 + 2) = v47;
    sub_10001772C(v12, v28, &qword_100055DC0);
    v26 = 0;
    v27 = v48;
  }

  v50 = 1;
  (*(v73 + 56))(v28, v26, 1, v27);
  v51 = *(v29 + v24[7] + 40);
  if (!*(v51 + 16))
  {
    v55 = v77;
    goto LABEL_10;
  }

  v52 = *v29;
  v53 = *(*v29 + 16);
  v54 = sub_100024B3C(v53);
  v55 = v77;
  if ((v56 & 1) == 0 || (v57 = *(*(v51 + 56) + 8 * v54), *(v57 + 16) != v53))
  {
    v50 = 1;
LABEL_10:
    v63 = v75;
    v64 = v76;
    goto LABEL_11;
  }

  sub_100036C28(v52);
  v80 = v58;
  swift_getKeyPath();
  v59 = swift_allocObject();
  *(v59 + 16) = v57;
  v60 = swift_allocObject();
  *(v60 + 16) = sub_100037480;
  *(v60 + 24) = v59;
  sub_1000028DC(&qword_100055DD8);
  sub_1000028DC(&qword_100055DE0);
  sub_10000A5A4(&qword_100055DE8, &qword_100055DD8);
  sub_100037528();
  v61 = v70;
  sub_100040C2C();
  v63 = v75;
  v62 = v76;
  (*(v75 + 32))(v55, v61, v76);
  v64 = v62;
  v50 = 0;
LABEL_11:
  (*(v63 + 56))(v55, v50, 1, v64);
  v65 = v74;
  sub_10000E06C(v28, v74, &qword_100055DC8);
  v66 = v78;
  sub_10000E06C(v55, v78, &qword_100055DB8);
  v67 = v79;
  sub_10000E06C(v65, v79, &qword_100055DC8);
  v68 = sub_1000028DC(&qword_100055DD0);
  sub_10000E06C(v66, v67 + *(v68 + 48), &qword_100055DB8);
  sub_10000A798(v55, &qword_100055DB8);
  sub_10000A798(v28, &qword_100055DC8);
  sub_10000A798(v66, &qword_100055DB8);
  return sub_10000A798(v65, &qword_100055DC8);
}

void sub_1000362D0(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for PlayerAvatar(0);
  __chkstk_darwin(v8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a3 + 16) > a1)
  {
    v11 = a3 + 24 * a1;
    v12 = *(v11 + 32);
    v13 = *(v11 + 40);
    sub_1000376A0(a2, v10);

    sub_100002CC0(&_swiftEmptyArrayStorage);
    sub_100040CDC();
    type metadata accessor for PlayerAvatarView.AvatarType(0);
    swift_storeEnumTagMultiPayload();
    v14 = *(v8 + 20);
    v15 = type metadata accessor for PlayerAvatarView(0);
    sub_10000E06C(&v10[v14], a4 + *(v15 + 20), &qword_1000547F0);
    sub_100007528(v10);
    v16 = a4 + *(v15 + 24);
    *(v16 + 32) = 0;
    *v16 = 0u;
    *(v16 + 16) = 0u;
    v17 = (a4 + *(sub_1000028DC(&qword_100055E00) + 36));
    *v17 = v12;
    v17[1] = v13;
    sub_100040C7C();
    sub_10004045C();
    v18 = (a4 + *(sub_1000028DC(&qword_100055DE0) + 36));
    v19 = v20[1];
    *v18 = v20[0];
    v18[1] = v19;
    v18[2] = v20[2];
    return;
  }

  __break(1u);
}

void sub_1000364A8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_1000028DC(&qword_100055E30);
      v7 = *(type metadata accessor for PlayerAvatar(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for PlayerAvatar(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

size_t sub_100036648(size_t a1, int64_t a2, char a3)
{
  result = sub_100036710(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100036668(size_t a1, int64_t a2, char a3)
{
  result = sub_100036A4C(a1, a2, a3, *v3, &qword_100055B10, &unk_100048B40, type metadata accessor for ChallengesSlashHeaderView.SlashHeaderItemType);
  *v3 = result;
  return result;
}

char *sub_1000366AC(char *a1, int64_t a2, char a3)
{
  result = sub_100036928(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000366CC(size_t a1, int64_t a2, char a3)
{
  result = sub_100036A4C(a1, a2, a3, *v3, &qword_100055E30, &unk_100048EA8, type metadata accessor for PlayerAvatar);
  *v3 = result;
  return result;
}

size_t sub_100036710(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000028DC(&qword_100055600);
  v10 = *(sub_1000028DC(&qword_1000555F8) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(sub_1000028DC(&qword_1000555F8) - 8);
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

char *sub_100036928(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000028DC(&qword_100055B20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100036A4C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

  sub_1000028DC(a5);
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

void sub_100036C28(uint64_t a1)
{
  v45 = sub_1000028DC(&qword_100055E20);
  __chkstk_darwin(v45);
  v44 = (&v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v6 = &v38 - v5;
  v7 = &_swiftEmptyArrayStorage;
  v43 = *(a1 + 16);
  if (v43)
  {
    v8 = v4;
    v9 = *(v4 + 80);
    v40 = v9;
    v41 = (v9 + 32) & ~v9;
    v10 = &_swiftEmptyArrayStorage + v41;
    v11 = 0;
    v12 = 0;
    v13 = *(type metadata accessor for PlayerAvatar(0) - 8);
    v14 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v42 = *(v13 + 72);
    v15 = &_swiftEmptyArrayStorage;
    v39 = v8;
    while (1)
    {
      v18 = v44;
      v19 = *(v45 + 48);
      *v44 = v11;
      sub_1000376A0(v14, v18 + v19);
      sub_10001772C(v18, v6, &qword_100055E20);
      if (v12)
      {
        v7 = v15;
        v16 = v8;
        v17 = __OFSUB__(v12--, 1);
        if (v17)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v20 = v15[3];
        if (((v20 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return;
        }

        v21 = v6;
        v22 = v20 & 0xFFFFFFFFFFFFFFFELL;
        if (v22 <= 1)
        {
          v23 = 1;
        }

        else
        {
          v23 = v22;
        }

        sub_1000028DC(&qword_100055E28);
        v24 = *(v8 + 72);
        v25 = v41;
        v7 = swift_allocObject();
        v26 = j__malloc_size(v7);
        if (!v24)
        {
          goto LABEL_34;
        }

        v27 = v26 - v25;
        if (v26 - v25 == 0x8000000000000000 && v24 == -1)
        {
          goto LABEL_35;
        }

        v29 = v27 / v24;
        v7[2] = v23;
        v7[3] = 2 * (v27 / v24);
        v30 = v7 + v25;
        v31 = v15[3] >> 1;
        v32 = v31 * v24;
        if (v15[2])
        {
          if (v7 < v15 || v30 >= v15 + v41 + v32)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v7 != v15)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v15[2] = 0;
        }

        v10 = &v30[v32];
        v34 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - v31;

        v16 = v39;
        v6 = v21;
        v17 = __OFSUB__(v34, 1);
        v12 = v34 - 1;
        if (v17)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v11;
      sub_10001772C(v6, v10, &qword_100055E20);
      v8 = v16;
      v10 += *(v16 + 72);
      v14 += v42;
      v15 = v7;
      if (v43 == v11)
      {
        goto LABEL_29;
      }
    }
  }

  v12 = 0;
LABEL_29:
  v35 = v7[3];
  if (v35 >= 2)
  {
    v36 = v35 >> 1;
    v17 = __OFSUB__(v36, v12);
    v37 = v36 - v12;
    if (v17)
    {
      goto LABEL_36;
    }

    v7[2] = v37;
  }
}

uint64_t sub_100036F74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayerAvatar(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for GameIconAndPlayerAvatarsView()
{
  result = qword_100055D48;
  if (!qword_100055D48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100037054(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000028DC(&qword_100055CE0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100037124(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000028DC(&qword_100055CE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000371D4()
{
  sub_1000372D0(319, &qword_100055D58, type metadata accessor for PlayerAvatar, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_1000372D0(319, &unk_100055D60, &type metadata accessor for MediaArtwork, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000372D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

__n128 sub_100037334(uint64_t a1, uint64_t a2)
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

uint64_t sub_100037350(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100037398(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_100037448()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100037488()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000374C0(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = sub_1000028DC(&qword_100055E20);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t sub_100037528()
{
  result = qword_100055DF0;
  if (!qword_100055DF0)
  {
    sub_10000A440(&qword_100055DE0);
    sub_1000375B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055DF0);
  }

  return result;
}

unint64_t sub_1000375B4()
{
  result = qword_100055DF8;
  if (!qword_100055DF8)
  {
    sub_10000A440(&qword_100055E00);
    sub_100037640();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055DF8);
  }

  return result;
}

unint64_t sub_100037640()
{
  result = qword_100055E08;
  if (!qword_100055E08)
  {
    type metadata accessor for PlayerAvatarView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055E08);
  }

  return result;
}

uint64_t sub_1000376A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayerAvatar(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t GameIcon.init(icon:focusable:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for GameIcon();
  v7 = *(v6 + 24);
  *(a3 + v7) = swift_getKeyPath();
  sub_1000028DC(&qword_1000546C0);
  swift_storeEnumTagMultiPayload();
  result = sub_1000378F4(a1, a3);
  *(a3 + *(v6 + 20)) = a2;
  return result;
}

uint64_t type metadata accessor for GameIcon()
{
  result = qword_100055EB8;
  if (!qword_100055EB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100037828(uint64_t a1)
{
  v2 = sub_10004052C();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1000405FC();
}

uint64_t sub_1000378F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000028DC(&qword_100055CE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__int128 *ShadowStyle.none.unsafeMutableAddressor()
{
  if (qword_100054658 != -1)
  {
    swift_once();
  }

  return &static ShadowStyle.none;
}

__int128 *ShadowStyle.xLarge.unsafeMutableAddressor()
{
  if (qword_100054668 != -1)
  {
    swift_once();
  }

  return &static ShadowStyle.xLarge;
}

uint64_t sub_100037A04()
{
  result = sub_100040ACC();
  static ShadowStyle.none = 0uLL;
  qword_100058F80 = 0;
  qword_100058F88 = result;
  return result;
}

double static ShadowStyle.none.getter()
{
  if (qword_100054658 != -1)
  {
    swift_once();
  }

  v0 = *&static ShadowStyle.none;

  return v0;
}

double sub_100037AA4()
{
  sub_100040ABC();
  v0 = sub_100040AEC();

  result = 0.0;
  static ShadowStyle.large = xmmword_100048EC0;
  qword_100058FA0 = 0x4032000000000000;
  qword_100058FA8 = v0;
  return result;
}

__int128 *ShadowStyle.large.unsafeMutableAddressor()
{
  if (qword_100054660 != -1)
  {
    swift_once();
  }

  return &static ShadowStyle.large;
}

double static ShadowStyle.large.getter()
{
  if (qword_100054660 != -1)
  {
    swift_once();
  }

  v0 = *&static ShadowStyle.large;

  return v0;
}

__n128 sub_100037BC4()
{
  sub_100040ABC();
  v0 = sub_100040AEC();

  __asm { FMOV            V0.2D, #18.0 }

  static ShadowStyle.xLarge = result;
  qword_100058FC0 = 0x4032000000000000;
  qword_100058FC8 = v0;
  return result;
}

double static ShadowStyle.xLarge.getter()
{
  if (qword_100054668 != -1)
  {
    swift_once();
  }

  v0 = *&static ShadowStyle.xLarge;

  return v0;
}

double sub_100037C8C()
{
  sub_100040ABC();
  v0 = sub_100040AEC();

  result = 0.0;
  static ShadowStyle.small = xmmword_100048ED0;
  qword_100058FE0 = 0x4032000000000000;
  qword_100058FE8 = v0;
  return result;
}

__int128 *ShadowStyle.small.unsafeMutableAddressor()
{
  if (qword_100054670 != -1)
  {
    swift_once();
  }

  return &static ShadowStyle.small;
}

double static ShadowStyle.small.getter()
{
  if (qword_100054670 != -1)
  {
    swift_once();
  }

  v0 = *&static ShadowStyle.small;

  return v0;
}

double sub_100037DAC()
{
  sub_100040ABC();
  v0 = sub_100040AEC();

  result = 0.0;
  static ShadowStyle.arcadeBadge = xmmword_100048EE0;
  qword_100059000 = 0x4018000000000000;
  qword_100059008 = v0;
  return result;
}

__int128 *ShadowStyle.arcadeBadge.unsafeMutableAddressor()
{
  if (qword_100054678 != -1)
  {
    swift_once();
  }

  return &static ShadowStyle.arcadeBadge;
}

double static ShadowStyle.arcadeBadge.getter()
{
  if (qword_100054678 != -1)
  {
    swift_once();
  }

  v0 = *&static ShadowStyle.arcadeBadge;

  return v0;
}

double sub_100037ECC()
{
  sub_100040ABC();
  v0 = sub_100040AEC();

  result = 0.0;
  static ShadowStyle.icon = xmmword_100048EF0;
  qword_100059020 = 0x4020000000000000;
  qword_100059028 = v0;
  return result;
}

__int128 *ShadowStyle.icon.unsafeMutableAddressor()
{
  if (qword_100054680 != -1)
  {
    swift_once();
  }

  return &static ShadowStyle.icon;
}

double static ShadowStyle.icon.getter()
{
  if (qword_100054680 != -1)
  {
    swift_once();
  }

  v0 = *&static ShadowStyle.icon;

  return v0;
}

double sub_100037FEC()
{
  sub_100040ABC();
  v0 = sub_100040AEC();

  result = 0.0;
  static ShadowStyle.liveIndicator = xmmword_100048F00;
  qword_100059040 = 0x4010000000000000;
  qword_100059048 = v0;
  return result;
}

__int128 *ShadowStyle.liveIndicator.unsafeMutableAddressor()
{
  if (qword_100054688 != -1)
  {
    swift_once();
  }

  return &static ShadowStyle.liveIndicator;
}

double static ShadowStyle.liveIndicator.getter()
{
  if (qword_100054688 != -1)
  {
    swift_once();
  }

  v0 = *&static ShadowStyle.liveIndicator;

  return v0;
}

double GameIcon.body.getter@<D0>(_OWORD *a1@<X8>)
{
  v36 = a1;
  v2 = sub_100040A8C();
  v33 = *(v2 - 8);
  v34 = v2;
  __chkstk_darwin(v2);
  v32 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10004052C();
  v31 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v28 - v8;
  v10 = sub_1000028DC(&qword_100055CE0);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - v11;
  v13 = sub_100040D0C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v30 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v35 = &v28 - v17;
  sub_10000E06C(v1, v12, &qword_100055CE0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1000386AC(v12);
  }

  else
  {
    v29 = *(v14 + 32);
    v29(v35, v12, v13);
    type metadata accessor for GameIcon();
    sub_100039C1C(&qword_1000546C0, &type metadata accessor for RedactionReasons, v9);
    sub_10004051C();
    sub_100039F4C(&qword_100054ED8, &type metadata accessor for RedactionReasons);
    v18 = sub_10004114C();
    v19 = *(v31 + 8);
    v19(v6, v4);
    v19(v9, v4);
    if ((v18 & 1) == 0)
    {
      v21 = v30;
      v22 = v35;
      (*(v14 + 16))(v30, v35, v13);
      v23 = (*(v14 + 80) + 16) & ~*(v14 + 80);
      v24 = swift_allocObject();
      v29((v24 + v23), v21, v13);
      v37 = sub_100039184;
      v38 = v24;
      v39 = 0;
      sub_1000028DC(&qword_100055E38);
      sub_1000028DC(&qword_100055E40);
      sub_10000A5A4(&qword_100055E48, &qword_100055E38);
      sub_100038714();
      sub_10004076C();
      (*(v14 + 8))(v22, v13);
      goto LABEL_7;
    }

    (*(v14 + 8))(v35, v13);
  }

  (*(v33 + 104))(v32, enum case for Color.RGBColorSpace.sRGB(_:), v34);
  v20 = sub_100040AFC();
  v37 = 0;
  v38 = v20;
  v39 = 1;
  sub_1000028DC(&qword_100055E38);
  sub_1000028DC(&qword_100055E40);
  sub_10000A5A4(&qword_100055E48, &qword_100055E38);
  sub_100038714();
  sub_10004076C();
LABEL_7:
  result = *&v40;
  v26 = v41;
  v27 = v36;
  *v36 = v40;
  *(v27 + 16) = v26;
  return result;
}

uint64_t sub_1000386AC(uint64_t a1)
{
  v2 = sub_1000028DC(&qword_100055CE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100038714()
{
  result = qword_100055E50;
  if (!qword_100055E50)
  {
    sub_10000A440(&qword_100055E40);
    sub_1000387CC();
    sub_10000A5A4(&qword_100054F08, &qword_100054F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055E50);
  }

  return result;
}

unint64_t sub_1000387CC()
{
  result = qword_100055E58;
  if (!qword_100055E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055E58);
  }

  return result;
}

uint64_t sub_100038820@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100040D0C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004046C();
  sub_10004046C();
  sub_100040CEC();
  v8[1] = 0;
  sub_100039F4C(&qword_100054F18, &type metadata accessor for MediaArtwork);
  sub_100039F94();
  sub_1000409CC();
  (*(v3 + 8))(v5, v2);
  result = sub_1000028DC(&qword_100055F80);
  v7 = a1 + *(result + 36);
  *v7 = 0x3FF0000000000000;
  *(v7 + 8) = 0;
  return result;
}

__n128 sub_1000389AC@<Q0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = sub_100040B2C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10004035C())
  {
    (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
    v8 = sub_100040B5C();
    (*(v5 + 8))(v7, v4);
    *v23 = v8;
    *&v23[8] = xmmword_100048F10;
    *&v23[24] = a2;
    LOBYTE(v24) = 0;
    swift_retain_n();
    sub_1000028DC(&qword_100055F48);
    sub_1000028DC(&qword_100055F68);
    sub_100039948();
    sub_100039A84();
    sub_10004076C();
    v9 = v25;
    v22 = a1;
    *v23 = v25;
    v11 = v26.n128_i64[1];
    v10 = v26.n128_u64[0];
    v12 = v27;
    *&v23[16] = v26;
    v24 = v27;
    sub_100039ECC(v25, *(&v25 + 1), v26.n128_i64[0], v26.n128_i64[1], v27);
    sub_1000028DC(&qword_100055F28);
    sub_1000028DC(&qword_100055F30);
    sub_1000398BC();
    sub_100039B3C();
    sub_10004076C();

    v13 = v10;
    a1 = v22;
    sub_100039F0C(v9, *(&v9 + 1), v13, v11, v12);
  }

  else
  {
    v14 = sub_10004034C();
    if (v14)
    {
      v15 = v14;
      KeyPath = swift_getKeyPath();
      *v23 = a2;
      *&v23[8] = KeyPath;
      *&v23[16] = v15;
      LOBYTE(v24) = 1;

      sub_1000028DC(&qword_100055F48);
      sub_1000028DC(&qword_100055F68);
      sub_100039948();
      sub_100039A84();
      sub_10004076C();
      *v23 = v25;
      *&v23[16] = v26;
      v24 = v27;
      sub_1000028DC(&qword_100055F28);
      sub_1000028DC(&qword_100055F30);
      sub_1000398BC();
      sub_100039B3C();
      sub_10004076C();
    }

    else
    {
      v17 = sub_10004079C();
      *v23 = a2;
      *&v23[16] = 0uLL;
      *&v23[8] = v17;
      v24 = 256;
      sub_1000028DC(&qword_100055F28);
      sub_1000028DC(&qword_100055F30);
      sub_1000398BC();
      sub_100039B3C();
      sub_10004076C();
    }
  }

  result = v26;
  v19 = v27;
  v20 = v28;
  *a1 = v25;
  *(a1 + 16) = result;
  *(a1 + 32) = v19;
  *(a1 + 33) = v20;
  return result;
}

double sub_100038DE4@<D0>(double *a1@<X8>, double a2@<D0>)
{
  result = *v2 + a2;
  *a1 = result;
  return result;
}

double sub_100038DF4@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v10 = sub_10004072C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  CGRectGetHeight(v20);
  (*(v11 + 104))(v13, enum case for RoundedCornerStyle.continuous(_:), v10);
  sub_10004092C();
  result = *&v17;
  v15 = v18;
  *a1 = v17;
  *(a1 + 16) = v15;
  *(a1 + 32) = v19;
  return result;
}

void (*sub_100038F38(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000403AC();
  return sub_1000156B8;
}

uint64_t sub_100038FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000397EC();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100039024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000397EC();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100039088(uint64_t a1)
{
  v2 = sub_1000397EC();

  return Shape.body.getter(a1, v2);
}

uint64_t sub_1000390FC()
{
  v1 = sub_100040D0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100039184@<X0>(uint64_t a1@<X8>)
{
  sub_100040D0C();

  return sub_100038820(a1);
}

uint64_t sub_100039220(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100039268(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000392CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000028DC(&qword_100055CE0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_1000028DC(&qword_100054C48);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100039428(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000028DC(&qword_100055CE0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    v11 = sub_1000028DC(&qword_100054C48);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_100039560()
{
  sub_10003964C(319, &unk_100055D60, &type metadata accessor for MediaArtwork, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10003964C(319, &qword_100054CB8, &type metadata accessor for RedactionReasons, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10003964C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1000396B4()
{
  result = qword_100055EF8;
  if (!qword_100055EF8)
  {
    sub_10000A440(&qword_100055F00);
    sub_10000A5A4(&qword_100055E48, &qword_100055E38);
    sub_100038714();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055EF8);
  }

  return result;
}

unint64_t sub_100039790()
{
  result = qword_100055F08;
  if (!qword_100055F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055F08);
  }

  return result;
}

unint64_t sub_1000397EC()
{
  result = qword_100055F10;
  if (!qword_100055F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055F10);
  }

  return result;
}

unint64_t sub_1000398BC()
{
  result = qword_100055F38;
  if (!qword_100055F38)
  {
    sub_10000A440(&qword_100055F28);
    sub_100039948();
    sub_100039A84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055F38);
  }

  return result;
}

unint64_t sub_100039948()
{
  result = qword_100055F40;
  if (!qword_100055F40)
  {
    sub_10000A440(&qword_100055F48);
    sub_100039A00();
    sub_10000A5A4(&qword_100055F50, &qword_100055F58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055F40);
  }

  return result;
}

unint64_t sub_100039A00()
{
  result = qword_100054E70;
  if (!qword_100054E70)
  {
    sub_10000A440(&qword_100054E78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054E70);
  }

  return result;
}

unint64_t sub_100039A84()
{
  result = qword_100055F60;
  if (!qword_100055F60)
  {
    sub_10000A440(&qword_100055F68);
    sub_1000387CC();
    sub_10000A5A4(&qword_100054E28, &qword_100054E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055F60);
  }

  return result;
}

unint64_t sub_100039B3C()
{
  result = qword_100055F70;
  if (!qword_100055F70)
  {
    sub_10000A440(&qword_100055F30);
    sub_1000387CC();
    sub_10000A5A4(&qword_100054FB8, &qword_100054FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055F70);
  }

  return result;
}

uint64_t sub_100039C1C@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_10004069C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000028DC(a1);
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  sub_10000E06C(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    sub_1000410CC();
    v17 = sub_10004080C();
    sub_10004036C();

    sub_10004068C();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_100039E1C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000405AC();
  *a1 = result;
  return result;
}

uint64_t sub_100039E48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000405AC();
  *a1 = result;
  return result;
}

uint64_t sub_100039ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    v5 = vars8;
  }
}

uint64_t sub_100039F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    v5 = vars8;
  }
}

uint64_t sub_100039F4C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100039F94()
{
  result = qword_100055F78;
  if (!qword_100055F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055F78);
  }

  return result;
}

unint64_t sub_100039FEC()
{
  result = qword_100055F88;
  if (!qword_100055F88)
  {
    sub_10000A440(&qword_100055F90);
    sub_1000398BC();
    sub_100039B3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055F88);
  }

  return result;
}

unint64_t sub_10003A07C()
{
  result = qword_100055F98;
  if (!qword_100055F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055F98);
  }

  return result;
}

uint64_t sub_10003A0E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ChallengeInviteContentCardHeaderKind(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1000028DC(&qword_100054A38);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10003A24C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ChallengeInviteContentCardHeaderKind(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_1000028DC(&qword_100054A38);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_10003A3A0()
{
  type metadata accessor for ChallengeInviteContentCardHeaderKind(319);
  if (v0 <= 0x3F)
  {
    sub_10003A434();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10003A434()
{
  if (!qword_100056008)
  {
    sub_10003FE2C();
    v0 = sub_1000410EC();
    if (!v1)
    {
      atomic_store(v0, &qword_100056008);
    }
  }
}

void sub_10003A48C()
{
  sub_10003A500();
  if (v0 <= 0x3F)
  {
    sub_10003A580();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10003A500()
{
  if (!qword_1000560C0)
  {
    sub_100040D0C();
    sub_10000A440(&qword_1000560C8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000560C0);
    }
  }
}

void sub_10003A580()
{
  if (!qword_1000560D0)
  {
    sub_10000A440(&qword_100055468);
    sub_10000A440(&unk_100055190);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1000560D0);
    }
  }
}

uint64_t sub_10003A6C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = sub_1000407FC();
  v66 = *(v3 - 8);
  v67 = v3;
  __chkstk_darwin(v3);
  v65 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1000028DC(&qword_1000557B0);
  __chkstk_darwin(v63);
  v64 = &v61 - v5;
  v68 = sub_1000028DC(&qword_1000557B8);
  v70 = *(v68 - 8);
  __chkstk_darwin(v68);
  v62 = &v61 - v6;
  v7 = sub_1000028DC(&qword_100054A38);
  __chkstk_darwin(v7 - 8);
  v9 = &v61 - v8;
  v10 = sub_10003FE2C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v61 = &v61 - v15;
  v16 = sub_1000028DC(&qword_1000557C0);
  __chkstk_darwin(v16 - 8);
  v72 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v61 - v19;
  v21 = type metadata accessor for ChallengeInviteContentHeaderView(0);
  v22 = v21 - 8;
  __chkstk_darwin(v21);
  v76 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v61 - v25;
  v27 = *(a1 + *(type metadata accessor for ChallengeInviteContentCard(0) + 20));
  sub_10003B51C(a1, v26, type metadata accessor for ChallengeInviteContentCardHeaderKind);
  v28 = *(v22 + 28);
  v75 = v26;
  v29 = &v26[v28];
  *v29 = v27;
  *(v29 + 2) = 0;
  *(v29 + 3) = 0;
  *(v29 + 1) = 0;
  v71 = sub_10004073C();
  v90 = 0;
  sub_10003AF94(&v80);
  v93 = *&v81[16];
  v94 = *&v81[32];
  v95[0] = *&v81[48];
  *(v95 + 15) = *&v81[63];
  v91 = v80;
  v92 = *v81;
  *&v97[15] = *&v81[63];
  v96[2] = *&v81[16];
  v96[3] = *&v81[32];
  *v97 = *&v81[48];
  v96[0] = v80;
  v96[1] = *v81;
  sub_10000E06C(&v91, &v77, &qword_1000561B8);
  sub_10000A798(v96, &qword_1000561B8);
  *(&v89[2] + 7) = v93;
  *(&v89[3] + 7) = v94;
  *(&v89[4] + 7) = v95[0];
  *(&v89[5] + 6) = *(v95 + 15);
  *(v89 + 7) = v91;
  *(&v89[1] + 7) = v92;
  v74 = v90;
  v69 = sub_10004081C();
  v30 = type metadata accessor for ChallengeInviteContentCardModel(0);
  sub_10000E06C(a1 + *(v30 + 28), v9, &qword_100054A38);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10000A798(v9, &qword_100054A38);
    v31 = 1;
    v32 = v20;
    v33 = v68;
    v34 = v70;
  }

  else
  {
    v35 = v61;
    (*(v11 + 32))(v61, v9, v10);
    (*(v11 + 16))(v13, v35, v10);
    sub_1000028DC(&qword_1000557D0);
    sub_10002909C();
    v36 = v64;
    sub_10004090C();
    v37 = sub_10004087C();
    sub_1000403DC();
    v38 = v36 + *(v63 + 36);
    *v38 = v37;
    *(v38 + 8) = v39;
    *(v38 + 16) = v40;
    *(v38 + 24) = v41;
    *(v38 + 32) = v42;
    *(v38 + 40) = 0;
    v43 = v65;
    sub_1000407EC();
    sub_100029120();
    sub_10003C928(&qword_1000557F8, &type metadata accessor for BorderedProminentButtonStyle);
    v44 = v62;
    v45 = v67;
    sub_100040A2C();
    (*(v66 + 8))(v43, v45);
    sub_10000A798(v36, &qword_1000557B0);
    (*(v11 + 8))(v35, v10);
    v46 = v70;
    v47 = v68;
    (*(v70 + 32))(v20, v44, v68);
    v31 = 0;
    v32 = v20;
    v33 = v47;
    v34 = v46;
  }

  (*(v34 + 56))(v32, v31, 1, v33);
  v48 = v76;
  sub_10003B51C(v75, v76, type metadata accessor for ChallengeInviteContentHeaderView);
  v49 = v72;
  sub_100028FA4(v32, v72);
  v50 = v48;
  v51 = v73;
  sub_10003B51C(v50, v73, type metadata accessor for ChallengeInviteContentHeaderView);
  v52 = sub_1000028DC(&qword_1000561C0);
  v53 = (v51 + *(v52 + 48));
  v54 = v71;
  *&v77 = v71;
  *(&v77 + 1) = 0x4020000000000000;
  LOBYTE(v78[0]) = v74;
  *(&v78[2] + 1) = v89[2];
  *(&v78[3] + 1) = v89[3];
  *(&v78[4] + 1) = v89[4];
  *(&v78[4] + 11) = *(&v89[4] + 10);
  *(&v78[1] + 1) = v89[1];
  *(v78 + 1) = v89[0];
  *(&v78[5] + 11) = v99;
  HIBYTE(v78[5]) = v100;
  v55 = v69;
  LOBYTE(v79[0]) = v69;
  *(v79 + 1) = *v98;
  DWORD1(v79[0]) = *&v98[3];
  *(&v79[1] + 8) = 0u;
  *(v79 + 8) = 0u;
  BYTE8(v79[2]) = 1;
  v56 = v78[2];
  v53[2] = v78[1];
  v53[3] = v56;
  v57 = v78[4];
  v53[4] = v78[3];
  v53[5] = v57;
  v58 = v78[0];
  *v53 = v77;
  v53[1] = v58;
  v59 = v79[1];
  v53[7] = v79[0];
  v53[8] = v59;
  *(v53 + 137) = *(&v79[1] + 9);
  v53[6] = v78[5];
  sub_100028FA4(v49, v51 + *(v52 + 64));
  sub_10000E06C(&v77, &v80, &qword_1000561C8);
  sub_10000A798(v32, &qword_1000557C0);
  sub_10003B584(v75);
  sub_10000A798(v49, &qword_1000557C0);
  *&v81[33] = v89[2];
  *&v81[49] = v89[3];
  *&v81[65] = v89[4];
  *&v81[75] = *(&v89[4] + 10);
  *&v81[1] = v89[0];
  *&v80 = v54;
  *(&v80 + 1) = 0x4020000000000000;
  v81[0] = v74;
  *&v81[17] = v89[1];
  v83 = v100;
  v82 = v99;
  v84 = v55;
  *v85 = *v98;
  *&v85[3] = *&v98[3];
  v86 = 0u;
  v87 = 0u;
  v88 = 1;
  sub_10000A798(&v80, &qword_1000561C8);
  return sub_10003B584(v76);
}

uint64_t sub_10003AF94@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ChallengeInviteContentCardModel(0);
  sub_10000A550();

  v2 = sub_1000409BC();
  v4 = v3;
  v6 = v5;
  sub_1000408EC();
  v7 = sub_10004099C();
  v9 = v8;
  v11 = v10;

  sub_10002908C(v2, v4, v6 & 1);

  v12 = sub_10004098C();
  v34 = v13;
  v35 = v12;
  v15 = v14;
  v33 = v16;
  sub_10002908C(v7, v9, v11 & 1);

  v17 = sub_1000409BC();
  v19 = v18;
  LOBYTE(v2) = v20;
  sub_1000407AC();
  v21 = sub_10004097C();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_10002908C(v17, v19, v2 & 1);

  KeyPath = swift_getKeyPath();
  v38 = v15 & 1;
  *&v40 = v21;
  *(&v40 + 1) = v23;
  v41[0] = v25 & 1;
  v29 = v39[0];
  *&v41[1] = v39[0];
  *&v41[4] = *(v39 + 3);
  *&v41[8] = v27;
  *&v41[16] = KeyPath;
  *&v41[24] = 1;
  v41[26] = 1;
  *&v37[33] = *&v41[11];
  *(a1 + 16) = v15 & 1;
  *(a1 + 32) = 256;
  *(a1 + 82) = v37[48];
  *&v37[22] = *v41;
  *&v37[6] = v40;
  *a1 = v35;
  *(a1 + 8) = v34;
  *(a1 + 24) = v33;
  v30 = *v37;
  v31 = *&v37[16];
  *(a1 + 66) = *&v37[32];
  *(a1 + 50) = v31;
  *(a1 + 34) = v30;
  v42[0] = v21;
  v42[1] = v23;
  v43 = v25 & 1;
  *&v44[3] = *(v39 + 3);
  *v44 = v29;
  v45 = v27;
  v46 = KeyPath;
  v47 = 1;
  v48 = 1;
  sub_100029014(v35, v34, v15 & 1);

  sub_10000E06C(&v40, v36, &qword_1000561D0);
  sub_10000A798(v42, &qword_1000561D0);
  sub_10002908C(v35, v34, v15 & 1);
}

double sub_10003B27C@<D0>(uint64_t a1@<X8>)
{
  if (qword_100054598 != -1)
  {
    swift_once();
  }

  v3 = qword_100058D60;
  v2 = *algn_100058D68;

  v4 = sub_10004081C();
  *a1 = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  *(a1 + 32) = v4;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1;
  return result;
}

uint64_t sub_10003B328@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000028DC(&qword_100056190);
  __chkstk_darwin(v3);
  v5 = &v18 - v4;
  *v5 = sub_10004073C();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = sub_1000028DC(&qword_100056198);
  sub_10003A6C0(v1, &v5[*(v6 + 44)]);
  sub_10000A5A4(&qword_1000561A0, &qword_100056190);
  sub_10003B4A8();
  sub_1000409EC();
  sub_10000A798(v5, &qword_100056190);
  v7 = sub_10004087C();
  sub_1000403DC();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  result = sub_1000028DC(&qword_1000561B0);
  v17 = a1 + *(result + 36);
  *v17 = v7;
  *(v17 + 8) = v9;
  *(v17 + 16) = v11;
  *(v17 + 24) = v13;
  *(v17 + 32) = v15;
  *(v17 + 40) = 0;
  return result;
}

unint64_t sub_10003B4A8()
{
  result = qword_1000561A8;
  if (!qword_1000561A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000561A8);
  }

  return result;
}

uint64_t sub_10003B51C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003B584(uint64_t a1)
{
  v2 = type metadata accessor for ChallengeInviteContentHeaderView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003B5E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v132 = a1;
  v3 = sub_100040B2C();
  v134 = *(v3 - 8);
  v135 = v3;
  __chkstk_darwin(v3);
  v133 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_1000028DC(&qword_100056270);
  __chkstk_darwin(v131);
  v6 = &v110 - v5;
  v130 = sub_1000028DC(&qword_100056278);
  __chkstk_darwin(v130);
  v8 = &v110 - v7;
  v9 = sub_1000028DC(&qword_1000547F0);
  __chkstk_darwin(v9 - 8);
  *&v138 = &v110 - v10;
  v11 = type metadata accessor for PlayerAvatar(0);
  v136 = *(v11 - 8);
  v137 = v11;
  __chkstk_darwin(v11);
  *&v139 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000028DC(&qword_100055CE0);
  __chkstk_darwin(v13 - 8);
  v128 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v110 - v16;
  v122 = type metadata accessor for GameIconAndPlayerAvatarsView();
  __chkstk_darwin(v122);
  v124 = (&v110 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v123 = sub_1000028DC(&qword_100056280);
  __chkstk_darwin(v123);
  v126 = &v110 - v19;
  v129 = sub_1000028DC(&qword_100056288);
  __chkstk_darwin(v129);
  v125 = &v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v110 - v22;
  v24 = sub_100040D0C();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v110 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for ChallengeInviteContentCardHeaderKind(0);
  __chkstk_darwin(v28);
  v30 = &v110 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003B51C(v2, v30, type metadata accessor for ChallengeInviteContentCardHeaderKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v52 = *&v30[*(sub_1000028DC(&qword_100055B00) + 48)];
    (*(v25 + 32))(v27, v30, v24);
    (*(v25 + 16))(v17, v27, v24);
    v53 = *(v25 + 56);
    v120 = v17;
    v53(v17, 0, 1, v24);
    if (qword_100054640 != -1)
    {
      swift_once();
    }

    v116 = v27;
    v117 = v25;
    v118 = v24;
    v119 = v2;
    v114 = *algn_100058ED8;
    v115 = static GameIconAndPlayerAvatarsView.LayoutMetrics.medium;
    v121 = qword_100058EF8;
    v54 = *(v52 + 16);
    v113 = qword_100058EE8;
    v112 = unk_100058EF0;
    if (v54)
    {
      v111 = v23;
      v127 = v8;
      *&v143 = &_swiftEmptyArrayStorage;

      sub_1000366CC(0, v54, 0);
      v55 = v143;
      v135 = type metadata accessor for PlayerAvatar.Overlay(0);
      v56 = *(v135 - 8);
      v134 = *(v56 + 56);
      v133 = (v56 + 56);
      v110 = v52;
      v57 = (v52 + 40);
      v58 = v139;
      v59 = v138;
      do
      {
        *&v139 = v54;
        v60 = *(v57 - 1);
        v61 = *v57;
        v62 = v134;
        v63 = v135;
        (v134)(v59, 1, 1, v135);
        v64 = *(v137 + 20);
        v62(&v58[v64], 1, 1, v63);
        *v58 = v60;
        *(v58 + 1) = v61;

        sub_100006CEC(v59, &v58[v64]);
        *&v143 = v55;
        v66 = v55[2];
        v65 = v55[3];
        if (v66 >= v65 >> 1)
        {
          sub_1000366CC(v65 > 1, v66 + 1, 1);
          v55 = v143;
        }

        v55[2] = v66 + 1;
        sub_10003C970(v58, v55 + ((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v66, type metadata accessor for PlayerAvatar);
        v57 += 2;
        v54 = v139 - 1;
      }

      while (v139 != 1);

      v67 = v127;
      v23 = v111;
    }

    else
    {

      v55 = &_swiftEmptyArrayStorage;
      v67 = v8;
    }

    v71 = v120;
    sub_10000E06C(v120, v128, &qword_100055CE0);
    v75 = sub_100034DB8(v121, v55);
    if (v74)
    {
      v79 = v23;
      v80 = v74;
      v81 = v73;
      v82 = v72;
      sub_10004134C();
      swift_unknownObjectRetain_n();
      v83 = swift_dynamicCastClass();
      if (!v83)
      {
        swift_unknownObjectRelease();
        v83 = &_swiftEmptyArrayStorage;
      }

      v84 = v83[2];

      if (__OFSUB__(v80 >> 1, v81))
      {
        __break(1u);
      }

      else if (v84 == (v80 >> 1) - v81)
      {
        v77 = swift_dynamicCastClass();
        v78 = v129;
        v23 = v79;
        if (!v77)
        {
          swift_unknownObjectRelease();
          v77 = &_swiftEmptyArrayStorage;
        }

        sub_10000A798(v71, &qword_100055CE0);
        swift_unknownObjectRelease();
        goto LABEL_24;
      }

      swift_unknownObjectRelease();
      v74 = v80;
      v73 = v81;
      v72 = v82;
      v23 = v79;
    }

    sub_1000364A8(v75, v72, v73, v74);
    v77 = v76;
    swift_unknownObjectRelease();
    sub_10000A798(v71, &qword_100055CE0);
    v78 = v129;
LABEL_24:
    v85 = v126;
    v86 = v125;
    v87 = v124;
    *v124 = v77;
    v88 = v122;
    sub_10001772C(v128, v87 + *(v122 + 20), &qword_100055CE0);
    v89 = v87 + *(v88 + 28);
    v90 = v114;
    *v89 = v115;
    *(v89 + 16) = v90;
    v91 = v112;
    *(v89 + 32) = v113;
    *(v89 + 40) = v91;
    *(v89 + 48) = v121;
    *(v87 + *(v88 + 24)) = 0xBFC657184AE74487;
    LOBYTE(v88) = sub_10004083C();
    type metadata accessor for ChallengeInviteContentHeaderView(0);
    sub_1000403DC();
    v93 = v92;
    v95 = v94;
    v97 = v96;
    v99 = v98;
    sub_10003C970(v87, v85, type metadata accessor for GameIconAndPlayerAvatarsView);
    v100 = v85 + *(v123 + 36);
    *v100 = v88;
    *(v100 + 8) = v93;
    *(v100 + 16) = v95;
    *(v100 + 24) = v97;
    *(v100 + 32) = v99;
    *(v100 + 40) = 0;
    LOBYTE(v88) = sub_10004084C();
    sub_1000403DC();
    v102 = v101;
    v104 = v103;
    v106 = v105;
    v108 = v107;
    sub_10001772C(v85, v86, &qword_100056280);
    v109 = v86 + *(v78 + 36);
    *v109 = v88;
    *(v109 + 8) = v102;
    *(v109 + 16) = v104;
    *(v109 + 24) = v106;
    *(v109 + 32) = v108;
    *(v109 + 40) = 0;
    sub_10001772C(v86, v23, &qword_100056288);
    sub_10000E06C(v23, v67, &qword_100056288);
    swift_storeEnumTagMultiPayload();
    sub_10003C6F8();
    sub_10003C840();
    sub_10004076C();
    sub_10000A798(v23, &qword_100056288);
    return (*(v117 + 8))(v116, v118);
  }

  v127 = v8;
  v32 = *v30;
  v31 = *(v30 + 1);
  v33 = v30[16];
  v34 = v30[17];
  v35 = (v2 + *(type metadata accessor for ChallengeInviteContentHeaderView(0) + 20));
  v36 = *v35;
  v138 = v35[1];
  v139 = v36;
  v140 = sub_1000027F0(&_swiftEmptyArrayStorage);
  sub_1000028DC(&qword_100054FF8);
  sub_100040BDC();
  v37 = *(&v143 + 1);
  *(v6 + 11) = v143;
  *(v6 + 12) = v37;
  v140 = 0;
  v141 = 0;
  v142 = 1;
  sub_1000028DC(&qword_100055000);
  sub_100040BDC();
  v38 = v144;
  v39 = v145;
  *(v6 + 104) = v143;
  v6[120] = v38;
  *(v6 + 16) = v39;
  v40 = type metadata accessor for ChallengesSlashHeaderView(0);
  v41 = v40[10];
  *&v6[v41] = swift_getKeyPath();
  sub_1000028DC(&qword_100054690);
  swift_storeEnumTagMultiPayload();
  *&v6[v40[11]] = 0x4031000000000000;
  *&v6[v40[12]] = 0x4020000000000000;
  v42 = &v6[v40[13]];
  *v42 = 0xD000000000000017;
  *(v42 + 1) = 0x8000000100041D40;
  *v6 = v32;
  *(v6 + 1) = 2;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  v6[32] = 1;
  *(v6 + 5) = v31;
  v6[48] = v33;
  v43 = v139;
  *(v6 + 72) = v138;
  *(v6 + 56) = v43;
  v44 = sub_100040C7C();
  v46 = v45;
  if (v34 == 1)
  {
    sub_100040B6C();
    v48 = v134;
    v47 = v135;
    v49 = v133;
    (*(v134 + 104))(v133, enum case for Image.ResizingMode.stretch(_:), v135);
    v50 = sub_100040B5C();

    (*(v48 + 8))(v49, v47);
    v51 = 257;
  }

  else
  {
    v50 = 0;
    v51 = 0;
  }

  v68 = v127;
  v69 = &v6[*(v131 + 36)];
  *v69 = v50;
  *(v69 + 1) = 0;
  *(v69 + 8) = v51;
  *(v69 + 3) = v44;
  *(v69 + 4) = v46;
  sub_10000E06C(v6, v68, &qword_100056270);
  swift_storeEnumTagMultiPayload();
  sub_10003C6F8();
  sub_10003C840();
  sub_10004076C();
  return sub_10000A798(v6, &qword_100056270);
}

uint64_t sub_10003C420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_10003C4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_10003C548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10003C5C4()
{
  result = qword_100056268;
  if (!qword_100056268)
  {
    sub_10000A440(&qword_1000561B0);
    sub_10000A440(&qword_100056190);
    sub_10000A5A4(&qword_1000561A0, &qword_100056190);
    sub_10003B4A8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056268);
  }

  return result;
}

unint64_t sub_10003C6F8()
{
  result = qword_100056290;
  if (!qword_100056290)
  {
    sub_10000A440(&qword_100056288);
    sub_10003C784();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056290);
  }

  return result;
}

unint64_t sub_10003C784()
{
  result = qword_100056298;
  if (!qword_100056298)
  {
    sub_10000A440(&qword_100056280);
    sub_10003C928(&qword_1000562A0, type metadata accessor for GameIconAndPlayerAvatarsView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056298);
  }

  return result;
}

unint64_t sub_10003C840()
{
  result = qword_1000562A8;
  if (!qword_1000562A8)
  {
    sub_10000A440(&qword_100056270);
    sub_10003C928(&qword_1000562B0, type metadata accessor for ChallengesSlashHeaderView);
    sub_10000A5A4(&qword_1000562B8, &qword_1000562C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000562A8);
  }

  return result;
}

uint64_t sub_10003C928(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003C970(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10003C9DC()
{
  result = qword_1000562C8;
  if (!qword_1000562C8)
  {
    sub_10000A440(&qword_1000562D0);
    sub_10003C6F8();
    sub_10003C840();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000562C8);
  }

  return result;
}

uint64_t sub_10003CA68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000028DC(&qword_1000562D8);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  v7 = sub_1000028DC(&qword_100055CE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v28 - v8;
  v10 = sub_100040D0C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10003FF1C();
  v16 = v15;
  *a2 = v14;
  a2[1] = v15;

  sub_100040CFC();
  sub_10003FF0C();
  sub_10003CFD4(v6, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10000A798(v9, &qword_100055CE0);
    if (qword_100054610 != -1)
    {
      swift_once();
    }

    v17 = sub_10004039C();
    sub_10000A760(v17, qword_100058E28);

    v18 = sub_10004037C();
    v19 = sub_1000410BC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29 = v13;
      v30 = v21;
      v22 = v21;
      *v20 = 136315138;
      v23 = sub_100032E34(v14, v16, &v30);

      *(v20 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v18, v19, "GameDescription.icon for is nil for %s", v20, 0xCu);
      sub_100006AC8(v22);
      v13 = v29;
    }

    else
    {
    }

    v25 = sub_10003FF2C();
    (*(*(v25 - 8) + 8))(a1, v25);
  }

  else
  {

    v24 = sub_10003FF2C();
    (*(*(v24 - 8) + 8))(a1, v24);
    (*(v11 + 8))(v13, v10);
    (*(v11 + 32))(v13, v9, v10);
  }

  v26 = type metadata accessor for GameInfo();
  return (*(v11 + 32))(a2 + *(v26 + 20), v13, v10);
}

uint64_t sub_10003CFD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v4 = sub_10004021C();
  v72 = *(v4 - 8);
  v73 = v4;
  __chkstk_darwin(v4);
  v71 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v70 = v69 - v7;
  v8 = sub_1000028DC(&qword_100055790);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v69 - v10;
  v12 = sub_1000028DC(&qword_1000562D8);
  __chkstk_darwin(v12 - 8);
  v14 = v69 - v13;
  v15 = sub_10004022C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003D7B4(a1, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10000A798(a1, &qword_1000562D8);
    sub_10000A798(v14, &qword_1000562D8);
    v19 = 1;
    v20 = v74;
LABEL_3:
    v21 = sub_100040D0C();
    return (*(*(v21 - 8) + 56))(v20, v19, 1, v21);
  }

  (*(v16 + 32))(v18, v14, v15);
  sub_1000401EC();
  v23 = sub_10004013C();
  if (!v2)
  {
    v69[1] = v23;
    v69[2] = v24;
    (*(v9 + 8))(v11, v8);
    v25 = sub_100002CC0(&_swiftEmptyArrayStorage);
    v26 = sub_1000401CC();
    if (v27)
    {
      v28 = v26;
      v29 = v27;
      sub_10003DC60();
      v76._countAndFlagsBits = v28;
      v76._object = v29;
      isa = sub_1000410DC(v76).super.isa;
      v31 = [(objc_class *)isa CGColor];

      v32 = AMSMediaArtworkColorKindBackground;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = v25;
      sub_10003DAF8(v31, v32, isUniquelyReferenced_nonNull_native);

      v25 = v75;
    }

    v34 = sub_10004018C();
    if (v35)
    {
      v36 = v34;
      v37 = v35;
      sub_10003DC60();
      v77._countAndFlagsBits = v36;
      v77._object = v37;
      v38 = sub_1000410DC(v77).super.isa;
      v39 = [(objc_class *)v38 CGColor];

      v40 = AMSMediaArtworkColorKindText1;
      v41 = swift_isUniquelyReferenced_nonNull_native();
      v75 = v25;
      sub_10003DAF8(v39, v40, v41);

      v25 = v75;
    }

    v42 = sub_10004019C();
    if (v43)
    {
      v44 = v42;
      v45 = v43;
      sub_10003DC60();
      v78._countAndFlagsBits = v44;
      v78._object = v45;
      v46 = sub_1000410DC(v78).super.isa;
      v47 = [(objc_class *)v46 CGColor];

      v48 = AMSMediaArtworkColorKindText2;
      v49 = swift_isUniquelyReferenced_nonNull_native();
      v75 = v25;
      sub_10003DAF8(v47, v48, v49);

      v25 = v75;
    }

    v50 = sub_1000401AC();
    if (v51)
    {
      v52 = v50;
      v53 = v51;
      sub_10003DC60();
      v79._countAndFlagsBits = v52;
      v79._object = v53;
      v54 = sub_1000410DC(v79).super.isa;
      v55 = [(objc_class *)v54 CGColor];

      v56 = AMSMediaArtworkColorKindText3;
      v57 = swift_isUniquelyReferenced_nonNull_native();
      v75 = v25;
      sub_10003DAF8(v55, v56, v57);

      v25 = v75;
    }

    v58 = sub_1000401BC();
    if (v59)
    {
      v60 = v58;
      v61 = v59;
      sub_10003DC60();
      v80._countAndFlagsBits = v60;
      v80._object = v61;
      v62 = sub_1000410DC(v80).super.isa;
      v63 = [(objc_class *)v62 CGColor];

      v64 = AMSMediaArtworkColorKindText4;
      v65 = swift_isUniquelyReferenced_nonNull_native();
      v75 = v25;
      sub_10003DAF8(v63, v64, v65);

      v69[0] = v75;
    }

    else
    {
      v69[0] = v25;
    }

    v66 = v70;
    sub_1000401DC();
    sub_1000401FC();
    v67 = v73;
    v72 = *(v72 + 8);
    (v72)(v66, v73);
    v68 = v71;
    sub_1000401DC();
    sub_10004020C();
    (v72)(v68, v67);
    v20 = v74;
    sub_100040CDC();
    sub_10000A798(a1, &qword_1000562D8);
    (*(v16 + 8))(v18, v15);
    v19 = 0;
    goto LABEL_3;
  }

  sub_10000A798(a1, &qword_1000562D8);
  (*(v9 + 8))(v11, v8);
  return (*(v16 + 8))(v18, v15);
}

uint64_t type metadata accessor for GameInfo()
{
  result = qword_100056340;
  if (!qword_100056340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003D7B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000028DC(&qword_1000562D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10003D824(uint64_t a1, char a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_100024B3C(a1);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 >= v20 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v22 >= v20 && (a2 & 1) == 0)
  {
    v23 = result;
    sub_100025898();
    result = v23;
    goto LABEL_8;
  }

  sub_100024DB0(v20, a2 & 1);
  result = sub_100024B3C(a1);
  if ((v21 & 1) == (v24 & 1))
  {
LABEL_8:
    v25 = *v7;
    if (v21)
    {
      v26 = (v25[7] + 32 * result);
      *v26 = a3;
      v26[1] = a4;
      v26[2] = a5;
      v26[3] = a6;
      return result;
    }

    v25[(result >> 6) + 8] |= 1 << result;
    *(v25[6] + 8 * result) = a1;
    v27 = (v25[7] + 32 * result);
    *v27 = a3;
    v27[1] = a4;
    v27[2] = a5;
    v27[3] = a6;
    v28 = v25[2];
    v19 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v19)
    {
      v25[2] = v29;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_10004136C();
  __break(1u);
  return result;
}

uint64_t sub_10003D970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100024AC4(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_10002501C(v18, a5 & 1);
      v13 = sub_100024AC4(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_10004136C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1000259F0();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

uint64_t sub_10003DAF8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100015818(a2);
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
      sub_1000252DC(v13, a3 & 1);
      v8 = sub_100015818(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for AMSMediaArtworkColorKind(0);
        sub_10004136C();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v16 = v8;
      sub_100025B68();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return _objc_release_x1();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v20;

  return _objc_retain_x1();
}

unint64_t sub_10003DC60()
{
  result = qword_1000562E0;
  if (!qword_1000562E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000562E0);
  }

  return result;
}

uint64_t sub_10003DCC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100040D0C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10003DD80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100040D0C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003DE24()
{
  result = sub_100040D0C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

BOOL sub_10003DEA0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + *(type metadata accessor for ChallengeDetail() + 24));
  v6 = (v5 + 48);
  v7 = *(v5 + 16) + 1;
  do
  {
    if (!--v7)
    {
      break;
    }

    if (*(v6 - 1) == a1 && *v6 == a2)
    {
      break;
    }

    v6 += 9;
  }

  while ((sub_10004133C() & 1) == 0);
  return v7 != 0;
}

uint64_t type metadata accessor for ChallengeDetail()
{
  result = qword_1000563D0;
  if (!qword_1000563D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_10003DF6C(uint64_t a1, uint64_t a2)
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

uint64_t sub_10003DF90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_10003DFD8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_10003E050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GameInfo();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10003E124(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GameInfo();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_10003E1E0()
{
  type metadata accessor for GameInfo();
  if (v0 <= 0x3F)
  {
    sub_10003E26C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10003E26C()
{
  if (!qword_1000563E0)
  {
    v0 = sub_100040FCC();
    if (!v1)
    {
      atomic_store(v0, &qword_1000563E0);
    }
  }
}

uint64_t sub_10003E2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_10003D970(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_100024AC4(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_1000259F0();
        v16 = v18;
      }

      result = sub_10003ECEC(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

id sub_10003E3C4(__int128 *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v36 = a4;
  v11 = sub_1000028DC(&qword_100054A38);
  __chkstk_darwin(v11 - 8);
  v13 = &v35 - v12;
  v14 = sub_10003FE2C();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a6 selectedMessage];
  v20 = [v19 session];

  if (!v20)
  {
    v20 = [objc_allocWithZone(MSSession) init];
  }

  sub_10003E7FC(a1, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {

    sub_10000A798(v13, &qword_100054A38);
    return 0;
  }

  else
  {
    v22 = *(v15 + 32);
    v35 = v14;
    v22(v18, v13, v14);
    v21 = [objc_allocWithZone(MSMessage) initWithSession:v20];
    v23 = [objc_allocWithZone(MSMessageTemplateLayout) init];
    if (qword_1000545C0 != -1)
    {
      swift_once();
    }

    v24 = sub_100040E6C();
    [v23 setCaption:v24];

    if (a3)
    {
      sub_100004B60(a2, a3);
      v25 = sub_100040E6C();

      [v23 setSubcaption:v25];

      if (a5)
      {
        sub_100004D14(v36, a5);
        v26 = sub_100040E6C();

        [v21 setSummaryText:v26];
      }
    }

    v27 = sub_100040E6C();
    v28 = [objc_opt_self() imageNamed:v27];

    [v23 setImage:v28];
    v29 = [objc_allocWithZone(MSMessageLiveLayout) initWithAlternateLayout:v23];
    [v21 setLayout:v29];
    sub_10003FDFC(v30);
    v32 = v31;
    [v21 setURL:v31];

    [v21 setRequiresValidation:1];
    v33 = [objc_allocWithZone(NSNumber) initWithInteger:0x192005D23];
    [v21 setOverriddenAdamID:v33];

    (*(v15 + 8))(v18, v35);
  }

  return v21;
}

uint64_t sub_10003E7FC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000028DC(&qword_100054FD8);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = sub_10003FD9C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000028DC(&qword_100056418);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000488F0;
  *(inited + 32) = 0x676E656C6C616863;
  *(inited + 40) = 0xEB00000000444965;
  v29 = *a1;
  *(inited + 48) = v29;
  *(inited + 64) = 0x4972657469766E69;
  *(inited + 72) = 0xE900000000000044;
  v28 = a1[2];
  *(inited + 80) = v28;
  sub_10001E7D4(&v29, v27);
  sub_10001E7D4(&v28, v27);
  v12 = sub_100002BAC(inited);
  swift_setDeallocating();
  sub_1000028DC(&qword_100056420);
  swift_arrayDestroy();
  v27[0] = v12;
  v13 = *(a1 + 3);
  if (v13)
  {
    v14 = *(a1 + 2);

    sub_10003E2BC(v14, v13, 0x6F43657469766E69, 0xEA00000000006564);
  }

  sub_10003FD7C();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {

    sub_10000A798(v6, &qword_100054FD8);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v15 = objc_opt_self();
    isa = sub_100040DBC().super.isa;

    v26 = 0;
    v17 = [v15 dataWithJSONObject:isa options:0 error:&v26];

    v18 = v26;
    if (v17)
    {
      v19 = sub_10003FE6C();
      v21 = v20;

      sub_10003FE5C(0);
      sub_1000028DC(&qword_100054A40);
      sub_10003FD0C();
      *(swift_allocObject() + 16) = xmmword_1000475D0;
      sub_10003FCDC();

      sub_10003FD2C();
      sub_10003FD4C();
      sub_100011020(v19, v21);
      return (*(v8 + 8))(v10, v7);
    }

    v23 = v18;
    sub_10003FDDC();

    swift_willThrow();
    (*(v8 + 8))(v10, v7);
  }

  v24 = sub_10003FE2C();
  return (*(*(v24 - 8) + 56))(a2, 1, 1, v24);
}

uint64_t sub_10003ECEC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10004115C() + 1) & ~v5;
    do
    {
      sub_1000413CC();

      sub_100040EDC();
      v9 = sub_1000413EC();

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
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
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

uint64_t sub_10003EE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_10003FF8C();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v6 = sub_1000028DC(&qword_1000556E0);
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  v7 = sub_1000028DC(&qword_1000555F8);
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();
  v8 = sub_10003FFAC();
  v4[20] = v8;
  v4[21] = *(v8 - 8);
  v4[22] = swift_task_alloc();
  v9 = sub_1000402EC();
  v4[23] = v9;
  v4[24] = *(v9 - 8);
  v4[25] = swift_task_alloc();

  return _swift_task_switch(sub_10003F0E8, 0, 0);
}

uint64_t sub_10003F0E8()
{
  v1 = [objc_opt_self() daemonProxy];
  sub_1000402AC();
  sub_10004028C();
  v2 = v0[5];
  v3 = v0[6];
  sub_100005DE4(v0 + 2, v2);

  sub_10004014C();

  sub_10004017C();
  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_10003F2C0;
  v5 = v0[22];
  v6 = v0[19];
  v7 = v0[16];

  return dispatch thunk of ChallengeServiceProtocol.createInvite(player:challenge:)(v5, v6, v7, v2, v3);
}

uint64_t sub_10003F2C0()
{
  v2 = *v1;
  v2[27] = v0;

  v3 = v2[19];
  v4 = v2[18];
  v5 = v2[17];
  (*(v2[15] + 8))(v2[16], v2[14]);
  v8 = *(v4 + 8);
  v7 = v4 + 8;
  v6 = v8;
  if (v0)
  {
    v6(v3, v5);
    v9 = sub_10003F6B4;
  }

  else
  {
    v2[28] = v6;
    v2[29] = v7 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v6(v3, v5);
    v9 = sub_10003F4AC;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10003F4AC()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[20];
  v6 = v0[21];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[11];
  sub_10003FF9C();
  (*(v6 + 8))(v3, v5);
  (*(v2 + 8))(v1, v4);
  v10 = (*(v8 + 88))(v7, v9);
  if (v10 == enum case for ChallengeInvite.Details.player(_:))
  {
    v11 = v0[28];
    v12 = v0[17];
    v13 = v0[13];
    (*(v0[12] + 96))(v13, v0[11]);
    v14 = sub_1000028DC(&qword_100056428);
    v15 = *(v14 + 48);
    sub_10000A798(v13 + *(v14 + 64), &qword_100056430);
    v11(v13 + v15, v12);
    v11(v13, v12);
  }

  else
  {
    v16 = v0[12];
    v17 = v0[13];
    v18 = v0[11];
    if (v10 == enum case for ChallengeInvite.Details.code(_:))
    {
      (*(v16 + 96))(v0[13], v18);
      v20 = *v17;
      v19 = v17[1];
      goto LABEL_7;
    }

    (*(v16 + 8))(v0[13], v18);
  }

  v20 = 0;
  v19 = 0;
LABEL_7:
  sub_100006AC8((v0 + 2));

  v21 = v0[1];

  return v21(v20, v19);
}

uint64_t sub_10003F6B4()
{
  (*(v0[24] + 8))(v0[25], v0[23]);
  sub_100006AC8((v0 + 2));

  v1 = v0[1];

  return v1();
}

uint64_t sub_10003F7B4(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_100058D50 == -1)
  {
    if (qword_100058D58)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_10003FC7C();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100058D58)
    {
      return _availability_version_check();
    }
  }

  if (qword_100058D48 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_10003FC94();
    a3 = v10;
    a4 = v9;
    v8 = dword_100058D38 < v11;
    if (dword_100058D38 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_100058D3C > a3)
      {
        return 1;
      }

      if (dword_100058D3C >= a3)
      {
        return dword_100058D40 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_100058D38 < a2;
  if (dword_100058D38 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_10003F948(uint64_t result)
{
  v1 = qword_100058D58;
  if (qword_100058D58)
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
      qword_100058D58 = &__availability_version_check;
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
                                          sscanf(v28, "%d.%d.%d", &dword_100058D38, &dword_100058D3C, &dword_100058D40);
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