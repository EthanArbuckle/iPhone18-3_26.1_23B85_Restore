uint64_t sub_10001C644@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v61 = a2[1];
  v62 = *a2;
  v8 = *a3;
  v9 = a3[1];

  v64 = v8;

  v63 = v9;

  v59 = a4;

  v60 = sub_100024CA0();
  [a1 size];
  v11 = v10;
  [a1 size];
  v13 = v12;
  if (qword_100035098 != -1)
  {
    swift_once();
  }

  if (byte_100035430)
  {
    v14 = 48.0;
  }

  else
  {
    v14 = 60.0;
  }

  v15 = 90.0;
  if (byte_100035430)
  {
    v15 = 72.0;
  }

  if (v11 == v13)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  v17 = objc_opt_self();
  v18 = [v17 mainScreen];
  [v18 scale];
  v20 = v19;

  v21 = v14 * v20;
  v22 = [v17 mainScreen];
  [v22 scale];
  v24 = v23;

  [a1 size];
  v102.origin.x = 0.0;
  v102.origin.y = 0.0;
  v102.size.width = v21;
  v102.size.height = v16 * v24;
  v101 = AVMakeRectWithAspectRatioInsideRect(v100, v102);
  width = v101.size.width;
  height = v101.size.height;
  v27 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  [v27 setScale:1.0];
  v28 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v27 format:{width, height}];
  v29 = swift_allocObject();
  *(v29 + 2) = a1;
  v29[3] = width;
  v29[4] = height;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_10001DBA0;
  *(v30 + 24) = v29;
  *&v80 = sub_10001DBBC;
  *(&v80 + 1) = v30;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v79 = sub_10001D720;
  *(&v79 + 1) = &unk_100031770;
  v31 = _Block_copy(&aBlock);
  v32 = a1;

  v33 = [v28 imageWithActions:v31];

  _Block_release(v31);
  LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

  if (v27)
  {
    __break(1u);
  }

  else
  {
    sub_100024D80();
    sub_1000248E0();
    v57 = v96;
    v58 = v94;
    v55 = v99;
    v56 = v98;
    v67 = v95;
    v66 = v97;
    sub_100024F10();
    sub_10000269C(&qword_100035810, &qword_100027388);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_100026E20;
    v36 = sub_100024770();
    v38 = v37;
    *(v35 + 56) = &type metadata for String;
    *(v35 + 64) = sub_10001A410();
    *(v35 + 32) = v36;
    *(v35 + 40) = v38;
    v39 = sub_100024EC0();
    v41 = v40;

    v42 = sub_1000246A0();
    v44 = v43;
    v45 = sub_100024A30();
    v46 = sub_100024C90();
    v47 = sub_100024B00();
    *&v68 = v33;
    *(&v68 + 1) = v62;
    *&v69 = v61;
    *(&v69 + 1) = v60;
    *&v70 = v64;
    *(&v70 + 1) = v63;
    *&v71 = sub_10001DB60;
    *(&v71 + 1) = v59;
    v72 = v11 == v13;
    aBlock = v68;
    LOBYTE(v82) = v11 == v13;
    v81 = v71;
    v80 = v70;
    v79 = v69;
    v73 = v45;
    LOBYTE(v74) = 0;
    DWORD1(v74) = *&v65[3];
    *(&v74 + 1) = *v65;
    *(&v74 + 1) = v39;
    *&v75 = v41;
    *(&v75 + 1) = v42;
    *&v76 = v44;
    *(&v76 + 1) = v46;
    v77 = v47;
    v48 = v68;
    v49 = v69;
    v50 = v71;
    v51 = v82;
    *(a5 + 32) = v70;
    *(a5 + 48) = v50;
    *a5 = v48;
    *(a5 + 16) = v49;
    *(a5 + 64) = v51;
    *(a5 + 72) = 0;
    *(a5 + 80) = 1;
    *(a5 + 88) = v58;
    *(a5 + 96) = v67;
    *(a5 + 104) = v57;
    *(a5 + 112) = v66;
    *(a5 + 120) = v56;
    *(a5 + 128) = v55;
    v52 = v74;
    *(a5 + 136) = v73;
    v53 = v75;
    v54 = v76;
    *(a5 + 200) = v77;
    *(a5 + 184) = v54;
    *(a5 + 168) = v53;
    *(a5 + 152) = v52;
    v83[0] = v45;
    v83[1] = 0;
    v84 = 0;
    *&v85[3] = *&v65[3];
    *v85 = *v65;
    v86 = v39;
    v87 = v41;
    v88 = v42;
    v89 = v44;
    v90 = v46;
    v91 = v47;
    sub_10001DBFC(&v68, v92);
    sub_100005934(&v73, v92, &qword_100035AD0, &qword_1000274A0);
    sub_100006270(v83, &qword_100035AD0, &qword_1000274A0);
    v92[0] = v33;
    v92[1] = v62;
    v92[2] = v61;
    v92[3] = v60;
    v92[4] = v64;
    v92[5] = v63;
    v92[6] = sub_10001DB60;
    v92[7] = v59;
    v93 = v11 == v13;
    return sub_10001DC58(v92);
  }

  return result;
}

uint64_t sub_10001CC5C()
{
  v0 = sub_100024550();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1000170F0();
  if ((result & 1) == 0)
  {
    sub_100024580();
    sub_100024570();
    (*(v1 + 104))(v4, enum case for PeopleAnalytics.MessageRequestBubbleSource.askToBuy(_:), v0);
    sub_100024560();

    (*(v1 + 8))(v4, v0);
    return sub_10001E620();
  }

  return result;
}

uint64_t sub_10001CD94(char a1, uint64_t a2)
{
  v4 = sub_10000269C(&qword_100035A98, &qword_100027460);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = v19 - v6;
  v8 = sub_10000269C(&qword_100035AA0, &qword_100027468);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v19 - v10;
  if (a1)
  {
    sub_1000170F0();
    v12 = sub_100024F10();
    v14 = v13;

    sub_10001A5D8(v12, v14, sub_10001D978, a2, v11);

    sub_100005934(v11, v7, &qword_100035AA0, &qword_100027468);
    swift_storeEnumTagMultiPayload();
    sub_10001D86C();
    sub_10001D924();
    sub_100024A70();
    return sub_100006270(v11, &qword_100035AA0, &qword_100027468);
  }

  else
  {
    sub_1000194D8(v19);
    v16 = v20;
    v17 = v19[1];
    v18 = v19[2];
    *v7 = v19[0];
    *(v7 + 1) = v17;
    *(v7 + 2) = v18;
    *(v7 + 6) = v16;
    swift_storeEnumTagMultiPayload();
    sub_10001D86C();
    sub_10001D924();
    return sub_100024A70();
  }
}

uint64_t sub_10001CFEC(uint64_t a1)
{
  v2 = sub_10000269C(&qword_1000351E0, &qword_100026E30);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v11[-v4];
  v6 = *(a1 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy14AskToBuyBubble__buttonTapped + 8);
  v11[16] = *(a1 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy14AskToBuyBubble__buttonTapped);
  v12 = v6;
  v11[15] = 1;
  sub_10000269C(&qword_100035AC8, &qword_100027480);
  sub_100024D40();
  v7 = sub_100025000();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_100024FD0();

  v8 = sub_100024FC0();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = a1;
  sub_100002F74(0, 0, v5, &unk_100027490, v9);
}

uint64_t sub_10001D15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v4[5] = sub_100024FD0();
  v4[6] = sub_100024FC0();
  v6 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer_details;
  v7 = swift_task_alloc();
  v4[7] = v7;
  *v7 = v4;
  v7[1] = sub_10001D234;

  return (sub_10001EDFC)(a4 + v6);
}

uint64_t sub_10001D234()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v6 = *v0;

  v3 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v4 = swift_task_alloc();
  *(v1 + 64) = v4;
  *v4 = v6;
  v4[1] = sub_10001D368;

  return static Task<>.sleep(nanoseconds:)(4000000000);
}

uint64_t sub_10001D368()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;

  v5 = *(v2 + 48);
  v6 = *(v2 + 40);
  if (v0)
  {

    v7 = sub_100024FA0();
    v9 = v8;
    v10 = sub_10001E330;
  }

  else
  {
    v7 = sub_100024FA0();
    v9 = v11;
    v10 = sub_10001D4EC;
  }

  return _swift_task_switch(v10, v7, v9);
}

uint64_t sub_10001D4EC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);

  v3 = *(v2 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy14AskToBuyBubble__buttonTapped + 8);
  *(v0 + 16) = *(v2 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy14AskToBuyBubble__buttonTapped);
  *(v0 + 24) = v3;
  *(v0 + 72) = 0;
  sub_10000269C(&qword_100035AC8, &qword_100027480);
  sub_100024D40();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10001D5AC()
{
  v1 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer_details;
  v2 = sub_1000247B0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy14AskToBuyBubble__buttonTapped + 8);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AskToBuyBubble()
{
  result = qword_100035850;
  if (!qword_100035850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001D720(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

unint64_t sub_10001D76C()
{
  result = qword_100035A20;
  if (!qword_100035A20)
  {
    sub_10001D824(&qword_100035A18, &qword_100027400);
    sub_10001E1F0(&qword_100035A28, &qword_100035A30, &qword_100027408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035A20);
  }

  return result;
}

uint64_t sub_10001D824(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_10001D86C()
{
  result = qword_100035AA8;
  if (!qword_100035AA8)
  {
    sub_10001D824(&qword_100035AA0, &qword_100027468);
    sub_10001E1F0(&qword_100035AB0, &qword_100035AB8, &unk_100027470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035AA8);
  }

  return result;
}

unint64_t sub_10001D924()
{
  result = qword_100035AC0;
  if (!qword_100035AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035AC0);
  }

  return result;
}

uint64_t sub_10001D980()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001D9C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002E80;

  return sub_10001D15C(a1, v4, v5, v6);
}

uint64_t sub_10001DA98(uint64_t a1)
{
  v2 = sub_100024D00();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_100024940();
}

uint64_t sub_10001DB68()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001DBBC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10001DBE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_10001DCAC(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 1;
  return result;
}

uint64_t sub_10001DCCC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001DD04()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_10001DD40()
{
  result = qword_100035AF8;
  if (!qword_100035AF8)
  {
    sub_10001D824(&qword_100035AF0, &qword_1000274C0);
    sub_10001DDF8();
    sub_10001E1F0(&qword_100035BA0, &qword_100035BA8, &qword_100027518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035AF8);
  }

  return result;
}

unint64_t sub_10001DDF8()
{
  result = qword_100035B00;
  if (!qword_100035B00)
  {
    sub_10001D824(&qword_100035B08, &qword_1000274C8);
    sub_10001DEB0();
    sub_10001E1F0(&qword_100035B90, &qword_100035B98, &qword_100027510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035B00);
  }

  return result;
}

unint64_t sub_10001DEB0()
{
  result = qword_100035B10;
  if (!qword_100035B10)
  {
    sub_10001D824(&qword_100035B18, &qword_1000274D0);
    sub_10001DF68();
    sub_10001E1F0(&qword_100035B80, &qword_100035B88, &qword_100027508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035B10);
  }

  return result;
}

unint64_t sub_10001DF68()
{
  result = qword_100035B20;
  if (!qword_100035B20)
  {
    sub_10001D824(&qword_100035B28, &qword_1000274D8);
    sub_10001E020();
    sub_10001E1F0(&qword_100035B70, &qword_100035B78, &qword_100027500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035B20);
  }

  return result;
}

unint64_t sub_10001E020()
{
  result = qword_100035B30;
  if (!qword_100035B30)
  {
    sub_10001D824(&qword_100035B38, &qword_1000274E0);
    sub_10001E0AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035B30);
  }

  return result;
}

unint64_t sub_10001E0AC()
{
  result = qword_100035B40;
  if (!qword_100035B40)
  {
    sub_10001D824(&qword_100035B48, &qword_1000274E8);
    sub_10001E138();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035B40);
  }

  return result;
}

unint64_t sub_10001E138()
{
  result = qword_100035B50;
  if (!qword_100035B50)
  {
    sub_10001D824(&qword_100035B58, &qword_1000274F0);
    sub_10001E1F0(&qword_100035B60, &qword_100035B68, &qword_1000274F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035B50);
  }

  return result;
}

uint64_t sub_10001E1F0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001D824(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001E238(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001E2B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000249B0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10001E334(uint64_t a1, void *a2)
{
  v3 = sub_10000E5A8((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_10000269C(&qword_1000353D8, &qword_100026FD0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

unint64_t sub_10001E3E0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100025210();
  sub_100024EF0();
  v6 = sub_100025230();

  return sub_10001E458(a1, a2, v6);
}

unint64_t sub_10001E458(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1000251B0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10001E510(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000269C(&qword_100035BD8, &qword_1000275A0);
    v3 = sub_100025180();
    v4 = a1 + 32;

    while (1)
    {
      sub_10001F458(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_10001E3E0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10001F4C8(&v15, (v3[7] + 32 * result));
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

uint64_t sub_10001E620()
{
  v0 = sub_1000244D0();
  v1 = *(v0 - 8);
  v69 = v0;
  v70 = v1;
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v64[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __chkstk_darwin(v3);
  v8 = &v64[-v7];
  v9 = __chkstk_darwin(v6);
  v11 = &v64[-v10];
  __chkstk_darwin(v9);
  v68 = &v64[-v12];
  v13 = sub_10000269C(&qword_1000351F0, &qword_100027160);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v64[-v15];
  v17 = sub_1000243D0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v64[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __chkstk_darwin(v20);
  v25 = &v64[-v24];
  __chkstk_darwin(v23);
  v27 = &v64[-v26];
  sub_1000247A0();
  if (!v28)
  {
LABEL_4:
    sub_100024530();
    v29 = sub_1000244C0();
    v30 = sub_100025080();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Storelink URL failure ", v31, 2u);
    }

    return (*(v70 + 8))(v5, v69);
  }

  sub_1000243C0();

  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_10001F398(v16);
    goto LABEL_4;
  }

  (*(v18 + 32))(v27, v16, v17);
  if (sub_1000245B0())
  {
    v33 = v18;
    v34 = [objc_opt_self() defaultWorkspace];
    if (v34)
    {
      v36 = v34;
      sub_100024390(v35);
      v38 = v37;
      sub_10001E510(&_swiftEmptyArrayStorage);
      isa = sub_100024E40().super.isa;

      v40 = [v36 openSensitiveURL:v38 withOptions:isa];

      v41 = v68;
      sub_100024530();
      (*(v33 + 16))(v25, v27, v17);
      v42 = sub_1000244C0();
      v43 = sub_100025070();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v65 = v40;
        v45 = v44;
        v66 = swift_slowAlloc();
        v71 = v66;
        *v45 = 136315394;
        sub_10001F400();
        v46 = sub_1000251A0();
        v67 = v27;
        v48 = v47;
        v49 = *(v33 + 8);
        v49(v25, v17);
        v50 = sub_1000056C8(v46, v48, &v71);

        *(v45 + 4) = v50;
        *(v45 + 12) = 1024;
        *(v45 + 14) = v65;
        _os_log_impl(&_mh_execute_header, v42, v43, "storeLink url: %s opened: %{BOOL}d", v45, 0x12u);
        sub_100005794(v66);

        (*(v70 + 8))(v68, v69);
        return (v49)(v67, v17);
      }

      else
      {

        v63 = *(v33 + 8);
        v63(v25, v17);
        (*(v70 + 8))(v41, v69);
        return (v63)(v27, v17);
      }
    }

    else
    {
      sub_100024530();
      v60 = sub_1000244C0();
      v61 = sub_100025080();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&_mh_execute_header, v60, v61, "Failed to get workspace in bubble action", v62, 2u);
      }

      (*(v70 + 8))(v11, v69);
      return (*(v18 + 8))(v27, v17);
    }
  }

  else
  {
    sub_100024530();
    (*(v18 + 16))(v22, v27, v17);
    v51 = sub_1000244C0();
    v52 = sub_100025080();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v71 = v68;
      *v53 = 136315138;
      sub_10001F400();
      v54 = sub_1000251A0();
      v67 = v27;
      v56 = v55;
      v57 = *(v18 + 8);
      v57(v22, v17);
      v58 = sub_1000056C8(v54, v56, &v71);

      *(v53 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v51, v52, "Storelink not trusted: %s", v53, 0xCu);
      sub_100005794(v68);

      (*(v70 + 8))(v8, v69);
      return (v57)(v67, v17);
    }

    else
    {

      v59 = *(v18 + 8);
      v59(v22, v17);
      (*(v70 + 8))(v8, v69);
      return (v59)(v27, v17);
    }
  }
}

uint64_t sub_10001EDFC(uint64_t a1)
{
  v1[18] = a1;
  v2 = sub_1000244D0();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v5 = sub_100024550();
  v1[22] = v5;
  v6 = *(v5 - 8);
  v1[23] = v6;
  v7 = *(v6 + 64) + 15;
  v1[24] = swift_task_alloc();

  return _swift_task_switch(sub_10001EF18, 0, 0);
}

uint64_t sub_10001EF18()
{
  v1 = v0[18];
  v0[25] = sub_100024580();
  sub_100024540();
  v2 = objc_opt_self();
  sub_100024790();
  v3 = sub_100024E80();
  v0[26] = v3;

  v0[2] = v0;
  v0[3] = sub_10001F0A4;
  v4 = swift_continuation_init();
  v0[17] = sub_10000269C(&qword_100035BD0, &qword_100027598);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10001E334;
  v0[13] = &unk_1000317E8;
  v0[14] = v4;
  [v2 presentApprovalSheetWithRequestIdentifier:v3 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10001F0A4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_10001F294;
  }

  else
  {
    v3 = sub_10001F1B4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001F1B4()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v4 = *(v0 + 176);

  sub_100024570();
  (*(v3 + 104))(v2, enum case for PeopleAnalytics.MessageRequestBubbleSource.askToBuy(_:), v4);
  sub_100024560();

  v5 = *(v0 + 168);
  (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10001F294()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[21];
  swift_willThrow();

  sub_100024530();
  swift_errorRetain();
  sub_1000244B0();

  v4 = v0[24];
  (*(v0[20] + 8))(v0[21], v0[19]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10001F398(uint64_t a1)
{
  v2 = sub_10000269C(&qword_1000351F0, &qword_100027160);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10001F400()
{
  result = qword_100035358;
  if (!qword_100035358)
  {
    sub_1000243D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035358);
  }

  return result;
}

uint64_t sub_10001F458(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000269C(&unk_100035BE0, qword_1000275A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_10001F4C8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10001F4DC()
{
  result = sub_1000245A0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10001F580()
{
  v1 = v0;
  v2 = sub_1000244D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100024530();

  v7 = sub_1000244C0();
  v8 = sub_100025070();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    v11 = sub_100024590();
    v13 = sub_1000056C8(v11, v12, &v19);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "BubbleEventRegistration bye bye for %s", v9, 0xCu);
    sub_100005794(v10);
  }

  (*(v3 + 8))(v6, v2);
  v14 = qword_100035BF0;
  v15 = sub_1000245A0();
  (*(*(v15 - 8) + 8))(v1 + v14, v15);
  v16 = *(v1 + qword_100035BF8);

  sub_100016F88(v1 + qword_100035C00);
  return v1;
}

uint64_t sub_10001F7A4()
{
  v0 = *sub_10001F580();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10001F810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10001F830, 0, 0);
}

uint64_t sub_10001F830()
{
  v2 = v0[2];
  v1 = v0[3];
  ObjectType = swift_getObjectType();
  (*(v1 + 8))(ObjectType, v1);
  v4 = v0[1];

  return v4();
}

uint64_t sub_10001F8AC(uint64_t (*a1)(uint64_t *))
{
  v2 = 0;
  v3 = 0;
  return a1(&v2);
}

uint64_t sub_10001F8EC()
{
  v1 = v0;
  v2 = sub_1000244D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100024530();

  v7 = sub_1000244C0();
  v8 = sub_100025070();

  p_base_prots = (&BubbleContentContainer + 40);
  if (os_log_type_enabled(v7, v8))
  {
    v10 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v10 = 136315394;
    v11 = sub_100024590();
    v13 = sub_1000056C8(v11, v12, &v22);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    v14 = *(v1 + qword_100035C00);
    v15 = *(v1 + qword_100035C00 + 8);

    v16 = sub_1000056C8(v14, v15, &v22);

    *(v10 + 14) = v16;
    p_base_prots = &BubbleContentContainer.base_prots;
    _os_log_impl(&_mh_execute_header, v7, v8, "Shutdown %s for %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  (*(v3 + 8))(v6, v2);
  *(&p_base_prots[384][5].count + v1) = 0;
  swift_unknownObjectWeakAssign();
  v17 = qword_100035BF8;
  if (*(v1 + qword_100035BF8))
  {
    v18 = *(v1 + qword_100035BF8);

    sub_100024840();

    v19 = *(v1 + v17);
  }

  *(v1 + v17) = 0;
}

uint64_t sub_10001FB54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10001FB9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001FC4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v65 = a7;
  v66 = a8;
  v62 = a6;
  v63 = a5;
  v64 = a4;
  v56 = sub_100024D80();
  v57 = v13;
  v55 = 1;
  v54 = 0;
  sub_100024920();
  *&v112[55] = v117;
  *&v112[71] = v118;
  *&v112[87] = v119;
  *&v112[103] = v120;
  *&v112[7] = v114;
  *&v112[23] = v115;
  v113 = 1;
  *&v112[39] = v116;
  *&v89 = a1;
  *(&v89 + 1) = a2;
  sub_10002051C();

  v14 = sub_100024BE0();
  v67 = v15;
  v68 = v14;
  v17 = v16;
  v69 = v18;
  KeyPath = swift_getKeyPath();
  if (qword_1000350A0 != -1)
  {
    swift_once();
  }

  v19 = qword_1000366F0;
  v74 = swift_getKeyPath();
  v72 = v17 & 1;
  LOBYTE(v89) = v17 & 1;
  LOBYTE(v78) = 0;
  v73 = swift_getKeyPath();
  v76 = v19;

  v71 = sub_100024C90();
  v70 = sub_100024B00();
  v57 = v63;
  v56 = v64;
  v55 = 1;
  v54 = 0;
  v20 = sub_100024920();
  *&v111[55] = v124;
  *&v111[71] = v125;
  *&v111[87] = v126;
  *&v111[103] = v127;
  *&v111[7] = v121;
  *&v111[23] = v122;
  *&v111[39] = v123;
  v21 = a3;
  v22 = v66;
  if (v65 && v66)
  {
    v63 = &v58;
    v64 = a3;
    *&v89 = v62;
    *(&v89 + 1) = v65;
    __chkstk_darwin(v20);
    v56 = &v89;

    v23 = sub_1000235C8(sub_1000237A8, &v54, &off_100031348);

    if (v23)
    {
      sub_100024CF0();
    }

    else
    {
      sub_100024CD0();
    }

    v24 = v76;
    v65 = sub_100024BF0();
    v62 = v26;
    v63 = v25;
    v28 = v27;
    v61 = swift_getKeyPath();
    v60 = swift_getKeyPath();
    v29 = v28 & 1;
    LOBYTE(v78) = v28 & 1;
    LOBYTE(v87[0]) = 0;
    v59 = swift_getKeyPath();

    v58 = sub_100024C90();
    v30 = sub_100024B00();
    sub_100024DA0();
    sub_1000248E0();

    *&v77[23] = v129;
    *&v77[7] = v128;
    *&v77[39] = v130;
    *&v95[1] = *v77;
    *&v89 = v65;
    *(&v89 + 1) = v63;
    LOBYTE(v90) = v29;
    *(&v90 + 1) = v62;
    *&v91 = v61;
    *(&v91 + 1) = 1;
    LOBYTE(v92) = 0;
    *(&v92 + 1) = v60;
    *&v93 = v24;
    *(&v93 + 1) = v59;
    *&v94 = v22;
    *(&v94 + 1) = v58;
    v95[0] = v30;
    *&v95[17] = *&v77[16];
    *&v95[33] = *&v77[32];
    *&v95[48] = *(&v130 + 1);
    nullsub_1(&v89);
    v105 = *v95;
    v106 = *&v95[16];
    v107 = *&v95[32];
    v108 = *&v95[48];
    v101 = v91;
    v102 = v92;
    v103 = v93;
    v104 = v94;
    v99 = v89;
    v100 = v90;
    v21 = v64;
  }

  else
  {
    sub_100023788(&v99);
  }

  sub_100024D80();
  sub_100024920();
  *&v97[55] = v134;
  *&v97[71] = v135;
  *&v97[87] = v136;
  *&v97[103] = v137;
  *&v97[7] = v131;
  *&v97[23] = v132;
  *&v97[39] = v133;
  v87[0] = v99;
  v87[1] = v100;
  v31 = v102;
  v32 = v103;
  v87[4] = v103;
  v87[5] = v104;
  v33 = v101;
  v35 = v99;
  v34 = v100;
  v87[2] = v101;
  v87[3] = v102;
  v36 = v106;
  v87[8] = v107;
  v37 = v105;
  v38 = v104;
  v87[6] = v105;
  v87[7] = v106;
  v39 = v67;
  v40 = v68;
  *&v78 = v68;
  *(&v78 + 1) = v67;
  LOBYTE(v79) = v72;
  *(&v79 + 1) = *v110;
  DWORD1(v79) = *&v110[3];
  v41 = v69;
  *(&v79 + 1) = v69;
  *&v80 = KeyPath;
  *(&v80 + 1) = 1;
  LOBYTE(v81) = 0;
  *(&v81 + 1) = *v109;
  DWORD1(v81) = *&v109[3];
  *(&v81 + 1) = v74;
  *&v82 = v76;
  *(&v82 + 1) = v73;
  *&v83 = v21;
  *(&v83 + 1) = v71;
  v84[0] = v70;
  *&v84[65] = *&v111[64];
  *&v84[81] = *&v111[80];
  *&v84[97] = *&v111[96];
  *&v84[1] = *v111;
  *&v84[17] = *&v111[16];
  *&v84[33] = *&v111[32];
  *&v84[49] = *&v111[48];
  v85[1] = v100;
  v85[0] = v99;
  v85[4] = v103;
  v85[5] = v104;
  v85[2] = v101;
  v85[3] = v102;
  v85[7] = v106;
  v85[8] = v107;
  v85[6] = v105;
  *(a9 + 73) = *&v112[64];
  *(a9 + 89) = *&v112[80];
  *(a9 + 105) = *&v112[96];
  *(a9 + 9) = *v112;
  *(a9 + 25) = *&v112[16];
  *(a9 + 41) = *&v112[32];
  *(a9 + 57) = *&v112[48];
  v42 = v79;
  *(a9 + 128) = v78;
  *(a9 + 144) = v42;
  v43 = v83;
  *(a9 + 192) = v82;
  *(a9 + 208) = v43;
  v44 = v81;
  *(a9 + 160) = v80;
  *(a9 + 176) = v44;
  v45 = *&v84[48];
  *(a9 + 256) = *&v84[32];
  *(a9 + 272) = v45;
  v46 = *&v84[16];
  *(a9 + 224) = *v84;
  *(a9 + 240) = v46;
  v47 = *&v84[96];
  v48 = *&v84[64];
  *(a9 + 304) = *&v84[80];
  *(a9 + 320) = v47;
  *(a9 + 288) = v48;
  *(a9 + 440) = v37;
  *(a9 + 456) = v36;
  *(a9 + 472) = v107;
  *(a9 + 376) = v33;
  *(a9 + 392) = v31;
  v98 = 1;
  v88 = v108;
  *&v84[112] = *&v111[111];
  v86 = v108;
  *a9 = 0;
  *(a9 + 8) = 1;
  *(a9 + 120) = *&v112[111];
  *(a9 + 336) = *&v84[112];
  v49 = v108;
  *(a9 + 408) = v32;
  *(a9 + 424) = v38;
  *(a9 + 344) = v35;
  *(a9 + 360) = v34;
  *(a9 + 488) = v49;
  *(a9 + 496) = 0;
  *(a9 + 504) = 1;
  v50 = *&v97[80];
  *(a9 + 569) = *&v97[64];
  *(a9 + 585) = v50;
  *(a9 + 601) = *&v97[96];
  *(a9 + 616) = *&v97[111];
  v51 = *&v97[16];
  *(a9 + 505) = *v97;
  *(a9 + 521) = v51;
  v52 = *&v97[48];
  *(a9 + 537) = *&v97[32];
  *(a9 + 553) = v52;
  sub_100005934(&v78, &v89, &qword_100035D58, &qword_100027750);
  sub_100005934(v85, &v89, &qword_100035D60, &qword_100027758);
  sub_100006270(v87, &qword_100035D60, &qword_100027758);
  *&v95[65] = *&v111[64];
  *&v95[81] = *&v111[80];
  *v96 = *&v111[96];
  *&v95[1] = *v111;
  *&v95[17] = *&v111[16];
  *&v95[33] = *&v111[32];
  *&v89 = v40;
  *(&v89 + 1) = v39;
  LOBYTE(v90) = v72;
  *(&v90 + 1) = *v110;
  DWORD1(v90) = *&v110[3];
  *(&v90 + 1) = v41;
  *&v91 = KeyPath;
  *(&v91 + 1) = 1;
  LOBYTE(v92) = 0;
  *(&v92 + 1) = *v109;
  DWORD1(v92) = *&v109[3];
  *(&v92 + 1) = v74;
  *&v93 = v76;
  *(&v93 + 1) = v73;
  *&v94 = v21;
  *(&v94 + 1) = v71;
  v95[0] = v70;
  *&v96[15] = *&v111[111];
  *&v95[49] = *&v111[48];
  return sub_100006270(&v89, &qword_100035D58, &qword_100027750);
}

unint64_t sub_10002051C()
{
  result = qword_100035D50;
  if (!qword_100035D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035D50);
  }

  return result;
}

uint64_t sub_100020570@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v92 = sub_10000269C(&qword_100035DF8, &qword_100027AB0);
  v91 = *(v92 - 8);
  v4 = *(v91 + 64);
  __chkstk_darwin(v92);
  v83 = (&v81 - v5);
  v6 = sub_10000269C(&qword_100035E00, &qword_100027AB8);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v94 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v93 = &v81 - v10;
  v11 = sub_100024CE0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_10000269C(&qword_100035E08, &qword_100027AC0);
  v16 = *(*(v85 - 8) + 64);
  __chkstk_darwin(v85);
  v18 = &v81 - v17;
  v87 = sub_10000269C(&qword_100035E10, &qword_100027AC8);
  v19 = *(*(v87 - 8) + 64);
  __chkstk_darwin(v87);
  v21 = &v81 - v20;
  v90 = sub_10000269C(&qword_100035E18, &qword_100027AD0);
  v89 = *(v90 - 8);
  v22 = *(v89 + 64);
  v23 = __chkstk_darwin(v90);
  v88 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v86 = &v81 - v25;
  v26 = sub_100024C70();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100035098 != -1)
  {
    swift_once();
  }

  v31 = *(v2 + 64);
  v81 = byte_100035430;
  v32 = 15.0;
  if (byte_100035430)
  {
    v32 = 8.0;
  }

  v82 = v31;
  if (v31)
  {
    v33 = v32;
  }

  else
  {
    v33 = 4.0;
  }

  (*(v27 + 104))(v30, enum case for Color.RGBColorSpace.sRGBLinear(_:), v26);
  v95 = sub_100024CB0();
  sub_10000269C(&qword_100035E20, &qword_100027AD8);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1000272F0;
  v35 = *(v2 + 40);
  *(v34 + 32) = *(v2 + 32);
  *(v34 + 40) = v35;

  sub_100024D60();
  sub_100024DC0();
  sub_100024DB0();
  sub_1000248F0();
  *a1 = sub_100024A00();
  *(a1 + 8) = 0;
  v36 = 1;
  *(a1 + 16) = 1;
  v37 = (a1 + *(sub_10000269C(&qword_100035E28, &unk_100027AE0) + 44));
  *v37 = sub_100024D80();
  v37[1] = v38;
  v84 = v37;
  v39 = *v2;
  sub_100024CC0();
  (*(v12 + 104))(v15, enum case for Image.ResizingMode.stretch(_:), v11);
  v40 = sub_100024D10();

  (*(v12 + 8))(v15, v11);
  *(v2 + 64);
  sub_100024D80();
  sub_1000248E0();
  v98 = 1;
  *&v97[6] = v100;
  *&v97[22] = v101;
  *&v97[38] = v102;
  v41 = &v18[*(v85 + 36)];
  v42 = *(sub_100024910() + 20);
  v43 = enum case for RoundedCornerStyle.continuous(_:);
  v44 = sub_100024A10();
  (*(*(v44 - 8) + 104))(v41 + v42, v43, v44);
  *v41 = v33;
  v41[1] = v33;
  *(v41 + *(sub_10000269C(&qword_100035B88, &qword_100027508) + 36)) = 256;
  v45 = *&v97[16];
  *(v18 + 18) = *v97;
  *v18 = v40;
  *(v18 + 1) = 0;
  *(v18 + 8) = 1;
  *(v18 + 34) = v45;
  *(v18 + 50) = *&v97[32];
  *(v18 + 8) = *&v97[46];
  v46 = sub_100024C90();
  LOBYTE(v43) = sub_100024B00();
  sub_100014DCC(v18, v21, &qword_100035E08, &qword_100027AC0);
  v47 = &v21[*(v87 + 36)];
  *v47 = v46;
  v47[8] = v43;
  v48 = swift_allocObject();
  v49 = *(v2 + 48);
  *(v48 + 48) = *(v2 + 32);
  *(v48 + 64) = v49;
  *(v48 + 80) = *(v2 + 64);
  v50 = *(v2 + 16);
  *(v48 + 16) = *v2;
  *(v48 + 32) = v50;
  sub_10001DBFC(v2, v96);
  sub_1000240C0(&qword_100035E30, &qword_100035E10, &qword_100027AC8, sub_100023C50);
  v51 = v86;
  sub_100024C30();

  sub_100006270(v21, &qword_100035E10, &qword_100027AC8);
  v52 = *(v2 + 8);
  v53 = *(v2 + 16);
  v54 = sub_100024F30();
  if (v55)
  {
    v56 = v54;
    v57 = v55;
    v58 = v51;
    if (v81)
    {
      v59 = 19.0;
    }

    else
    {
      v59 = 25.0;
    }

    v60 = 40.0;
    if (v81)
    {
      v60 = 31.0;
    }

    if (v82)
    {
      v61 = v59;
    }

    else
    {
      v61 = v60;
    }

    v62 = sub_100024D80();
    v63 = v83;
    *v83 = v62;
    *(v63 + 8) = v64;
    v65 = sub_10000269C(&qword_100035E70, &qword_100027B18);
    sub_100020FA8(v56, v57, v99, v95, v2, v63 + *(v65 + 44));

    v66 = v92;
    v67 = (v63 + *(v92 + 36));
    *v67 = v59;
    v67[1] = v61;
    v68 = v93;
    sub_100014DCC(v63, v93, &qword_100035DF8, &qword_100027AB0);
    v36 = 0;
  }

  else
  {
    v58 = v51;
    v68 = v93;
    v66 = v92;
  }

  (*(v91 + 56))(v68, v36, 1, v66);
  v69 = sub_10000269C(&qword_100035E60, &qword_100027B08);
  v70 = v84 + *(v69 + 44);
  v71 = v89;
  v72 = *(v89 + 16);
  v73 = v88;
  v74 = v58;
  v75 = v58;
  v76 = v90;
  v72(v88, v75, v90);
  v77 = v94;
  sub_100005934(v68, v94, &qword_100035E00, &qword_100027AB8);
  v72(v70, v73, v76);
  v78 = sub_10000269C(&qword_100035E68, &qword_100027B10);
  sub_100005934(v77, &v70[*(v78 + 48)], &qword_100035E00, &qword_100027AB8);
  sub_100006270(v68, &qword_100035E00, &qword_100027AB8);
  v79 = *(v71 + 8);
  v79(v74, v76);
  sub_100006270(v77, &qword_100035E00, &qword_100027AB8);
  v79(v73, v76);
  sub_100023E18(v99);
}

uint64_t sub_100020FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v99 = a5;
  v103 = a4;
  *&v97 = a3;
  v109 = a6;
  v108 = sub_10000269C(&qword_100035E78, &qword_100027B20);
  v8 = *(*(v108 - 8) + 64);
  __chkstk_darwin(v108);
  v102 = &v96 - v9;
  v100 = sub_10000269C(&qword_100035E80, &qword_100027B28);
  v10 = *(*(v100 - 8) + 64);
  v11 = __chkstk_darwin(v100);
  v101 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v96 - v13;
  v105 = sub_10000269C(&qword_100035E88, &qword_100027B30);
  v15 = *(*(v105 - 8) + 64);
  __chkstk_darwin(v105);
  v107 = &v96 - v16;
  v106 = sub_10000269C(&qword_100035E90, &qword_100027B38);
  v17 = *(*(v106 - 8) + 64);
  __chkstk_darwin(v106);
  v19 = &v96 - v18;
  v104 = sub_100024CE0();
  v20 = *(v104 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v104);
  v23 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10000269C(&qword_100035E98, &qword_100027B40);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24);
  v98 = &v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v96 - v29;
  v110 = a1;
  if (a1 == v31 && a2 == v28 || (sub_1000251B0() & 1) != 0)
  {
    v32 = sub_100024CA0();
    sub_100024D80();
    sub_1000248E0();
    *&v112[6] = v138;
    *&v112[22] = v139;
    *&v112[38] = v140;
    v33 = &v14[*(sub_10000269C(&qword_100035EC8, &qword_100027B60) + 36)];
    v34 = *(sub_100024910() + 20);
    v35 = enum case for RoundedCornerStyle.continuous(_:);
    v36 = sub_100024A10();
    (*(*(v36 - 8) + 104))(&v33[v34], v35, v36);
    __asm { FMOV            V0.2D, #4.5 }

    *v33 = _Q0;
    *&v33[*(sub_10000269C(&qword_100035B88, &qword_100027508) + 36)] = 256;
    v42 = *v112;
    *(v14 + 26) = *&v112[16];
    *(v14 + 42) = *&v112[32];
    *v14 = v32;
    *(v14 + 4) = 256;
    *(v14 + 7) = *&v112[46];
    *(v14 + 10) = v42;
    v43 = &v14[*(v100 + 36)];
    v44 = v103;
    *v43 = v103;
    *(v43 + 8) = xmmword_1000276B0;
    *(v43 + 3) = 0x4000000000000000;
    *&v129 = v110;
    *(&v129 + 1) = a2;
    __chkstk_darwin(v44);
    *(&v96 - 2) = &v129;

    LOBYTE(v32) = sub_1000235C8(sub_100024280, (&v96 - 2), &off_100031348);

    if (v32)
    {
      sub_100024CF0();
    }

    else
    {
      sub_100024CD0();
    }

    v45 = v104;
    (*(v20 + 104))(v23, enum case for Image.ResizingMode.stretch(_:), v104);
    v46 = sub_100024D10();

    (*(v20 + 8))(v23, v45);
    sub_100024D80();
    sub_1000248E0();
    v136 = 1;
    *&v111[6] = v141;
    *&v111[22] = v142;
    *&v111[38] = v143;
    v47 = sub_100024C80();
    KeyPath = swift_getKeyPath();
    v120 = v46;
    LOWORD(v121[0]) = 1;
    *(v121 + 2) = *v111;
    *(&v121[1] + 2) = *&v111[16];
    *(&v121[2] + 2) = *&v111[32];
    *&v121[3] = *&v111[46];
    *(&v121[3] + 1) = KeyPath;
    v122 = v47;
    v49 = v101;
    sub_100005934(v14, v101, &qword_100035E80, &qword_100027B28);
    v116 = v121[1];
    v117 = v121[2];
    v118 = v121[3];
    v119 = v122;
    v114 = v120;
    v115 = v121[0];
    v50 = v102;
    sub_100005934(v49, v102, &qword_100035E80, &qword_100027B28);
    v51 = v50 + *(sub_10000269C(&qword_100035ED0, &qword_100027B68) + 48);
    v53 = v117;
    v52 = v118;
    v54 = v119;
    v128 = v119;
    v56 = v116;
    v55 = v117;
    v58 = v115;
    v57 = v116;
    v126 = v117;
    v127 = v118;
    *(v51 + 32) = v116;
    *(v51 + 48) = v55;
    *(v51 + 64) = v52;
    v60 = v114;
    v59 = v115;
    v61 = v114;
    v123 = v114;
    v124 = v115;
    v125 = v57;
    *(v51 + 80) = v54;
    *v51 = v60;
    *(v51 + 16) = v59;
    v131 = v56;
    v132 = v53;
    v133 = v118;
    v134 = v119;
    v129 = v61;
    v130 = v58;
    sub_100005934(&v120, v113, &qword_100035EB0, &qword_100027B58);
    sub_100005934(&v123, v113, &qword_100035EB0, &qword_100027B58);
    sub_100006270(&v129, &qword_100035EB0, &qword_100027B58);
    sub_100006270(v49, &qword_100035E80, &qword_100027B28);
    sub_100005934(v50, v107, &qword_100035E78, &qword_100027B20);
    swift_storeEnumTagMultiPayload();
    sub_10001E1F0(&qword_100035EB8, &qword_100035E90, &qword_100027B38);
    sub_10001E1F0(&qword_100035EC0, &qword_100035E78, &qword_100027B20);
    sub_100024A70();
    sub_100006270(&v120, &qword_100035EB0, &qword_100027B58);
    sub_100006270(v50, &qword_100035E78, &qword_100027B20);
    v62 = v14;
    v63 = &qword_100035E80;
    v64 = &qword_100027B28;
  }

  else
  {
    v101 = a2;
    v102 = v19;
    v65 = v97;
    v100 = *v97;

    sub_100024D80();
    sub_1000248E0();
    *&v137[6] = v138;
    *&v137[22] = v139;
    *&v137[38] = v140;
    v66 = &v30[*(sub_10000269C(&qword_100035EA0, &qword_100027B48) + 36)];
    v67 = *(sub_100024910() + 20);
    v68 = enum case for RoundedCornerStyle.continuous(_:);
    v69 = sub_100024A10();
    v70 = *(*(v69 - 8) + 104);
    v71 = *(v65 + 24);
    v96 = *(v65 + 8);
    v97 = v71;
    v72 = v101;
    v70(&v66[v67], v68, v69);
    __asm { FMOV            V0.2D, #4.5 }

    *v66 = _Q0;
    *&v66[*(sub_10000269C(&qword_100035B88, &qword_100027508) + 36)] = 256;
    *v30 = v100;
    v74 = v96;
    *(v30 + 24) = v97;
    *(v30 + 8) = v74;
    *(v30 + 20) = 256;
    *(v30 + 42) = *v137;
    *(v30 + 58) = *&v137[16];
    *(v30 + 74) = *&v137[32];
    *(v30 + 11) = *&v137[46];
    v75 = &v30[*(v24 + 36)];
    v76 = v103;
    *v75 = v103;
    *(v75 + 8) = xmmword_1000276B0;
    *(v75 + 3) = 0x4000000000000000;
    *&v129 = v110;
    *(&v129 + 1) = v72;
    __chkstk_darwin(v76);
    *(&v96 - 2) = &v129;

    v77 = sub_1000235C8(sub_100024280, (&v96 - 2), &off_100031348);

    if (v77)
    {
      sub_100024CF0();
    }

    else
    {
      sub_100024CD0();
    }

    v78 = v102;
    v79 = v104;
    (*(v20 + 104))(v23, enum case for Image.ResizingMode.stretch(_:), v104);
    v80 = sub_100024D10();

    (*(v20 + 8))(v23, v79);
    sub_100024D80();
    sub_1000248E0();
    v136 = 1;
    *&v135[6] = v141;
    *&v135[22] = v142;
    *&v135[38] = v143;
    v81 = *(v99 + 24);
    v82 = swift_getKeyPath();
    v120 = v80;
    LOWORD(v121[0]) = 1;
    *(v121 + 2) = *v135;
    *(&v121[1] + 2) = *&v135[16];
    *(&v121[2] + 2) = *&v135[32];
    *&v121[3] = *&v135[46];
    *(&v121[3] + 1) = v82;
    v122 = v81;
    v83 = v98;
    sub_100005934(v30, v98, &qword_100035E98, &qword_100027B40);
    v116 = v121[1];
    v117 = v121[2];
    v118 = v121[3];
    v119 = v122;
    v114 = v120;
    v115 = v121[0];
    sub_100005934(v83, v78, &qword_100035E98, &qword_100027B40);
    v84 = v78 + *(sub_10000269C(&qword_100035EA8, &qword_100027B50) + 48);
    v86 = v117;
    v85 = v118;
    v87 = v119;
    v128 = v119;
    v89 = v116;
    v88 = v117;
    v91 = v115;
    v90 = v116;
    v126 = v117;
    v127 = v118;
    *(v84 + 32) = v116;
    *(v84 + 48) = v88;
    *(v84 + 64) = v85;
    v93 = v114;
    v92 = v115;
    v94 = v114;
    v123 = v114;
    v124 = v115;
    v125 = v90;
    *(v84 + 80) = v87;
    *v84 = v93;
    *(v84 + 16) = v92;
    v131 = v89;
    v132 = v86;
    v133 = v118;
    v134 = v119;
    v129 = v94;
    v130 = v91;

    sub_100005934(&v120, v113, &qword_100035EB0, &qword_100027B58);
    sub_100005934(&v123, v113, &qword_100035EB0, &qword_100027B58);
    sub_100006270(&v129, &qword_100035EB0, &qword_100027B58);
    sub_100006270(v83, &qword_100035E98, &qword_100027B40);
    sub_100005934(v78, v107, &qword_100035E90, &qword_100027B38);
    swift_storeEnumTagMultiPayload();
    sub_10001E1F0(&qword_100035EB8, &qword_100035E90, &qword_100027B38);
    sub_10001E1F0(&qword_100035EC0, &qword_100035E78, &qword_100027B20);
    sub_100024A70();
    sub_100006270(&v120, &qword_100035EB0, &qword_100027B58);
    sub_100006270(v78, &qword_100035E90, &qword_100027B38);
    v62 = v30;
    v63 = &qword_100035E98;
    v64 = &qword_100027B40;
  }

  return sub_100006270(v62, v63, v64);
}

uint64_t sub_100021C68@<X0>(uint64_t a1@<X8>)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 64);
  v3 = *v1;
  v4 = v1[1];
  return sub_100020570(a1);
}

double sub_100021CAC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100024B80();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v45 = a1;
  *(&v45 + 1) = a2;
  sub_10002051C();

  v11 = sub_100024BE0();
  v40 = v12;
  v41 = v13;
  v15 = v14;
  if (qword_100035098 != -1)
  {
    swift_once();
  }

  if (byte_100035430 == 1)
  {
    sub_100024B60();
  }

  else
  {
    sub_100024B50();
  }

  sub_100024B70();

  (*(v7 + 104))(v10, enum case for Font.Leading.tight(_:), v6);
  sub_100024B90();

  (*(v7 + 8))(v10, v6);
  v16 = v11;
  v17 = v40;
  v18 = sub_100024BD0();
  v20 = v19;
  v22 = v21;
  v39[1] = v23;

  sub_100023AB0(v16, v17, v15 & 1);

  if (qword_1000350B0 != -1)
  {
    swift_once();
  }

  v24 = sub_100024BC0();
  v40 = v25;
  v41 = v24;
  v27 = v26;
  v29 = v28;
  sub_100023AB0(v18, v20, v22 & 1);

  KeyPath = swift_getKeyPath();
  v31 = sub_100024C90();
  v32 = sub_100024B00();
  v43 = v27 & 1;
  v42 = 0;
  v33 = swift_getKeyPath();
  sub_100024D70();
  sub_100024920();
  *&v44[55] = v48;
  *&v44[71] = v49;
  *&v44[87] = v50;
  *&v44[103] = v51;
  *&v44[7] = v45;
  *&v44[23] = v46;
  *&v44[39] = v47;
  v34 = *&v44[80];
  *(a3 + 145) = *&v44[64];
  *(a3 + 161) = v34;
  *(a3 + 177) = *&v44[96];
  v35 = *&v44[16];
  *(a3 + 81) = *v44;
  *(a3 + 97) = v35;
  result = *&v44[32];
  v37 = *&v44[48];
  *(a3 + 113) = *&v44[32];
  v38 = v40;
  *a3 = v41;
  *(a3 + 8) = v38;
  *(a3 + 16) = v27 & 1;
  *(a3 + 24) = v29;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = 2;
  *(a3 + 48) = 0;
  *(a3 + 56) = v31;
  *(a3 + 64) = v32;
  *(a3 + 72) = v33;
  *(a3 + 80) = 1;
  *(a3 + 192) = *&v44[111];
  *(a3 + 129) = v37;
  return result;
}

uint64_t sub_100022078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100024B80();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[2] = a1;
  v31[3] = a2;
  sub_10002051C();

  v11 = sub_100024BE0();
  v13 = v12;
  v15 = v14;
  if (qword_100035098 != -1)
  {
    swift_once();
  }

  if (byte_100035430 == 1)
  {
    sub_100024B60();
  }

  else
  {
    sub_100024BB0();
  }

  (*(v7 + 104))(v10, enum case for Font.Leading.tight(_:), v6);
  sub_100024B90();

  (*(v7 + 8))(v10, v6);
  v16 = sub_100024BD0();
  v18 = v17;
  v20 = v19;

  sub_100023AB0(v11, v13, v15 & 1);

  if (qword_1000350B0 != -1)
  {
    swift_once();
  }

  v21 = sub_100024BC0();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_100023AB0(v16, v18, v20 & 1);

  v28 = sub_100024C90();
  v29 = sub_100024B00();
  result = swift_getKeyPath();
  *a3 = v21;
  *(a3 + 8) = v23;
  *(a3 + 16) = v25 & 1;
  *(a3 + 24) = v27;
  *(a3 + 32) = v28;
  *(a3 + 40) = v29;
  *(a3 + 48) = result;
  *(a3 + 56) = 0;
  *(a3 + 64) = 1;
  return result;
}

double sub_100022318@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100022078(a1, a2, v10);
  sub_100024D70();
  sub_100024920();
  v4 = v18;
  *(a3 + 128) = v17;
  *(a3 + 144) = v4;
  *(a3 + 160) = v19;
  *(a3 + 176) = v20;
  v5 = v14;
  *(a3 + 64) = v13;
  *(a3 + 80) = v5;
  v6 = v16;
  *(a3 + 96) = v15;
  *(a3 + 112) = v6;
  v7 = v10[1];
  *a3 = v10[0];
  *(a3 + 16) = v7;
  result = *&v11;
  v9 = v12;
  *(a3 + 32) = v11;
  *(a3 + 48) = v9;
  return result;
}

double sub_1000223E4@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = sub_100024A00();
  v27 = 1;
  sub_100022318(v3, v4, &v14);
  v36 = v22;
  v37 = v23;
  v38 = v24;
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v35 = v21;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v40[8] = v22;
  v40[9] = v23;
  v40[10] = v24;
  v40[4] = v18;
  v40[5] = v19;
  v40[6] = v20;
  v40[7] = v21;
  v40[0] = v14;
  v40[1] = v15;
  v39 = v25;
  v41 = v25;
  v40[2] = v16;
  v40[3] = v17;
  sub_100005934(&v28, v13, &qword_100035DF0, &qword_100027A78);
  sub_100006270(v40, &qword_100035DF0, &qword_100027A78);
  *(&v26[8] + 7) = v36;
  *(&v26[9] + 7) = v37;
  *(&v26[10] + 7) = v38;
  *(&v26[11] + 7) = v39;
  *(&v26[4] + 7) = v32;
  *(&v26[5] + 7) = v33;
  *(&v26[6] + 7) = v34;
  *(&v26[7] + 7) = v35;
  *(v26 + 7) = v28;
  *(&v26[1] + 7) = v29;
  *(&v26[2] + 7) = v30;
  *(&v26[3] + 7) = v31;
  v6 = v26[9];
  *(a1 + 145) = v26[8];
  *(a1 + 161) = v6;
  *(a1 + 177) = v26[10];
  *(a1 + 192) = *(&v26[10] + 15);
  v7 = v26[5];
  *(a1 + 81) = v26[4];
  *(a1 + 97) = v7;
  v8 = v26[7];
  *(a1 + 113) = v26[6];
  *(a1 + 129) = v8;
  v9 = v26[1];
  *(a1 + 17) = v26[0];
  *(a1 + 33) = v9;
  result = *&v26[2];
  v11 = v26[3];
  *(a1 + 49) = v26[2];
  v12 = v27;
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = v12;
  *(a1 + 65) = v11;
  return result;
}

uint64_t sub_1000225DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = sub_100024D00();
  v88 = *(v12 - 8);
  v89 = v12;
  v13 = *(v88 + 64);
  __chkstk_darwin(v12);
  v82 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000269C(&qword_100035DC8, &qword_100027A18);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v87 = (&v78 - v17);
  v85 = sub_10000269C(&qword_100035DD0, &qword_100027A20);
  v18 = *(*(v85 - 8) + 64);
  __chkstk_darwin(v85);
  v86 = &v78 - v19;
  v95 = sub_10000269C(&qword_100035DD8, &qword_100027A28);
  v92 = *(v95 - 8);
  v20 = *(v92 + 64);
  v21 = __chkstk_darwin(v95);
  v84 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v83 = &v78 - v23;
  v24 = sub_10000269C(&qword_100035DE0, &qword_100027A30);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v93 = &v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v91 = &v78 - v29;
  v94 = a5;
  if (a2)
  {
    v79 = a3;
    v80 = a4;
    v81 = a6;
    v30 = v15;
    v96 = a1;
    v97 = a2;
    sub_10002051C();

    v31 = sub_100024BE0();
    v33 = v32;
    v35 = v34;
    sub_100024BB0();
    v36 = sub_100024BD0();
    v38 = v37;
    v40 = v39;

    sub_100023AB0(v31, v33, v35 & 1);

    if (qword_1000350B0 != -1)
    {
      swift_once();
    }

    v41 = sub_100024BC0();
    v43 = v42;
    v45 = v44;
    v47 = v46;
    sub_100023AB0(v36, v38, v40 & 1);

    v48 = v45 & 1;
    v90 = v41;
    sub_100023B04(v41, v43, v45 & 1);

    a5 = v94;
    v15 = v30;
    a4 = v80;
    a6 = v81;
    a3 = v79;
    v49 = v95;
    if (!v80)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v90 = 0;
    v43 = 0;
    v48 = 0;
    v47 = 0;
    v49 = v95;
    if (!a4)
    {
LABEL_10:
      v52 = 1;
      v53 = v91;
      goto LABEL_18;
    }
  }

  if (!a5)
  {
    goto LABEL_10;
  }

  v81 = &v78;
  v96 = a3;
  v97 = a4;
  __chkstk_darwin(v28);
  *(&v78 - 2) = &v96;

  v50 = sub_1000235C8(sub_100024280, (&v78 - 4), &off_100031348);

  if (v50)
  {
    v51 = sub_100024CF0();
  }

  else
  {
    v51 = sub_100024CD0();
  }

  v81 = v51;
  if (qword_100035098 != -1)
  {
    swift_once();
  }

  v55 = v88;
  v54 = v89;
  if (byte_100035430)
  {
    v56 = &enum case for Image.Scale.medium(_:);
  }

  else
  {
    v56 = &enum case for Image.Scale.small(_:);
  }

  v57 = v82;
  (*(v88 + 104))(v82, *v56, v89);
  KeyPath = swift_getKeyPath();
  v59 = *(v15 + 36);
  v60 = v87;
  v61 = (v87 + v59);
  v62 = sub_10000269C(&qword_100035B98, &qword_100027510);
  (*(v55 + 32))(v61 + *(v62 + 28), v57, v54);
  *v61 = KeyPath;
  *v60 = v81;
  v63 = sub_100024BA0();
  v64 = swift_getKeyPath();
  v65 = v86;
  sub_100014DCC(v60, v86, &qword_100035DC8, &qword_100027A18);
  v66 = (v65 + *(v85 + 36));
  *v66 = v64;
  v66[1] = v63;
  v67 = swift_getKeyPath();
  v68 = v84;
  sub_100014DCC(v65, v84, &qword_100035DD0, &qword_100027A20);
  v69 = v94;
  v49 = v95;
  v70 = (v68 + *(v95 + 36));
  *v70 = v67;
  v70[1] = v69;
  v71 = v68;
  v72 = v83;
  sub_100014DCC(v71, v83, &qword_100035DD8, &qword_100027A28);
  v73 = v72;
  v53 = v91;
  sub_100014DCC(v73, v91, &qword_100035DD8, &qword_100027A28);
  v52 = 0;
LABEL_18:
  (*(v92 + 56))(v53, v52, 1, v49);
  v74 = v93;
  sub_100005934(v53, v93, &qword_100035DE0, &qword_100027A30);
  v75 = v90;
  *a6 = v90;
  a6[1] = v43;
  a6[2] = v48;
  a6[3] = v47;
  v76 = sub_10000269C(&qword_100035DE8, &qword_100027A38);
  sub_100005934(v74, a6 + *(v76 + 48), &qword_100035DE0, &qword_100027A30);
  sub_100023AC0(v75, v43, v48, v47);
  sub_100023B14(v75, v43, v48, v47);
  sub_100006270(v53, &qword_100035DE0, &qword_100027A30);
  sub_100006270(v74, &qword_100035DE0, &qword_100027A30);
  return sub_100023B14(v75, v43, v48, v47);
}

uint64_t sub_100022D0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v3 = sub_10000269C(&qword_100035D70, &qword_1000279C0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v99 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v100 = (&v84 - v7);
  v8 = sub_10000269C(&qword_100035D78, &qword_1000279C8);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v96 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v101 = (&v84 - v12);
  v95 = sub_10000269C(&qword_100035D80, &qword_1000279D0);
  v13 = *(*(v95 - 8) + 64);
  v14 = __chkstk_darwin(v95);
  v98 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v102 = (&v84 - v16);
  if (qword_1000350C0 != -1)
  {
    swift_once();
  }

  v17 = qword_100036710;
  sub_100024D80();
  sub_100024920();
  *&v121[27] = *&v121[83];
  *&v121[35] = *&v121[91];
  *&v121[43] = *&v121[99];
  *&v121[51] = *&v121[107];
  *&v121[3] = *&v121[59];
  *&v121[11] = *&v121[67];
  *&v121[19] = *&v121[75];
  v18 = qword_100035098;
  v97 = v17;

  if (v18 != -1)
  {
    swift_once();
  }

  sub_100024D80();
  sub_1000248E0();
  v93 = v124;
  v94 = v122;
  v91 = v127;
  v92 = v126;
  v120 = 1;
  v119 = v123;
  v118 = v125;
  v19 = sub_100024A00();
  v20 = v102;
  *v102 = v19;
  v20[1] = 0;
  *(v20 + 16) = 1;
  v21 = *a1;
  v22 = a1[1];
  v23 = a1[2];
  v24 = a1[3];
  v26 = a1[4];
  v25 = a1[5];
  v27 = a1[6];
  v28 = sub_100024A30();
  v29 = v101;
  *v101 = v28;
  v29[1] = 0;
  *(v29 + 16) = 0;
  v30 = sub_100024A00();
  v31 = v100;
  *v100 = v30;
  v31[1] = 0x4000000000000000;
  *(v31 + 16) = 0;
  v32 = sub_10000269C(&qword_100035D88, &qword_1000279D8);
  sub_1000225DC(v21, v22, v26, v25, v27, (v31 + *(v32 + 44)));
  if (v24 && (v33 = sub_100024F30(), v34))
  {
    v110 = v33;
    *v111 = v34;
    sub_10002051C();
    v35 = sub_100024BE0();
    v37 = v36;
    v39 = v38;
    sub_100024BA0();
    v87 = sub_100024BD0();
    v41 = v40;
    v43 = v42;
    v89 = v44;

    sub_100023AB0(v35, v37, v39 & 1);

    KeyPath = swift_getKeyPath();
    if (qword_1000350B8 != -1)
    {
      swift_once();
    }

    v45 = qword_100036708;
    v46 = swift_getKeyPath();
    LOBYTE(v110) = v43 & 1;
    LOBYTE(v109[0]) = 0;
    v47 = v43 & 1;
    v85 = v46;
    v86 = 0;

    v48 = 2;
    v49 = v87;
    v50 = v41;
  }

  else
  {
    v49 = 0;
    v50 = 0;
    KeyPath = 0;
    v89 = 0;
    v48 = 0;
    v85 = 0;
    v86 = 0;
    v45 = 0;
    v47 = 0;
  }

  v51 = sub_10000269C(&qword_100035D90, &qword_1000279E0);
  v87 = v102 + *(v51 + 44);
  v52 = sub_10000269C(&qword_100035D98, &qword_1000279E8);
  v53 = v101 + *(v52 + 44);
  v54 = v99;
  sub_100005934(v100, v99, &qword_100035D70, &qword_1000279C0);
  sub_100005934(v54, v53, &qword_100035D70, &qword_1000279C0);
  v55 = v53 + *(sub_10000269C(&qword_100035DA0, &qword_1000279F0) + 48);
  *&v103 = v49;
  *(&v103 + 1) = v50;
  v57 = KeyPath;
  v56 = v89;
  *&v104 = v47;
  *(&v104 + 1) = v89;
  *&v105 = KeyPath;
  *(&v105 + 1) = v48;
  v58 = v85;
  v59 = v86;
  *&v106 = v86;
  *(&v106 + 1) = v85;
  v107 = v45;
  *(v55 + 64) = v45;
  v60 = v104;
  *v55 = v103;
  *(v55 + 16) = v60;
  v61 = v106;
  *(v55 + 32) = v105;
  *(v55 + 48) = v61;
  v62 = v45;
  v63 = v58;
  sub_100005934(&v103, &v110, &qword_100035DA8, &qword_1000279F8);
  sub_100006270(v100, &qword_100035D70, &qword_1000279C0);
  v108[0] = v49;
  v108[1] = v50;
  v108[2] = v47;
  v108[3] = v56;
  v108[4] = v57;
  v108[5] = v48;
  v108[6] = v59;
  v108[7] = v63;
  v108[8] = v62;
  sub_100006270(v108, &qword_100035DA8, &qword_1000279F8);
  sub_100006270(v99, &qword_100035D70, &qword_1000279C0);
  v64 = v101;
  v65 = v96;
  sub_100005934(v101, v96, &qword_100035D78, &qword_1000279C8);
  v66 = v87;
  sub_100005934(v65, v87, &qword_100035D78, &qword_1000279C8);
  v67 = v66 + *(sub_10000269C(&qword_100035DB0, &qword_100027A00) + 48);
  *v67 = 0;
  *(v67 + 8) = 1;
  sub_100006270(v64, &qword_100035D78, &qword_1000279C8);
  sub_100006270(v65, &qword_100035D78, &qword_1000279C8);
  v68 = sub_100024C90();
  v69 = sub_100024B00();
  v70 = v102;
  v71 = v102 + *(v95 + 36);
  *v71 = v68;
  v71[8] = v69;
  LOBYTE(v57) = v120;
  LOBYTE(v59) = v119;
  v72 = v118;
  v73 = v98;
  sub_100005934(v70, v98, &qword_100035D80, &qword_1000279D0);
  v74 = v97;
  *&v109[0] = v97;
  WORD4(v109[0]) = 256;
  *(v109 + 10) = *v121;
  *(&v109[1] + 10) = *&v121[8];
  *(&v109[5] + 10) = *&v121[40];
  *(&v109[4] + 10) = *&v121[32];
  *(&v109[6] + 10) = *&v121[48];
  *(&v109[7] + 1) = *&v121[55];
  *(&v109[2] + 10) = *&v121[16];
  *(&v109[3] + 10) = *&v121[24];
  v75 = v109[5];
  v76 = v90;
  *(v90 + 64) = v109[4];
  *(v76 + 80) = v75;
  v77 = v109[7];
  *(v76 + 96) = v109[6];
  *(v76 + 112) = v77;
  v78 = v109[1];
  *v76 = v109[0];
  *(v76 + 16) = v78;
  v79 = v109[3];
  *(v76 + 32) = v109[2];
  *(v76 + 48) = v79;
  *(v76 + 128) = 0;
  *(v76 + 136) = v57;
  v80 = v93;
  *(v76 + 144) = v94;
  *(v76 + 152) = v59;
  *(v76 + 160) = v80;
  *(v76 + 168) = v72;
  v81 = v91;
  *(v76 + 176) = v92;
  *(v76 + 184) = v81;
  v82 = sub_10000269C(&qword_100035DB8, &qword_100027A08);
  sub_100005934(v73, v76 + *(v82 + 64), &qword_100035D80, &qword_1000279D0);
  sub_100005934(v109, &v110, &qword_100035DC0, &qword_100027A10);
  sub_100006270(v102, &qword_100035D80, &qword_1000279D0);
  sub_100006270(v73, &qword_100035D80, &qword_1000279D0);
  v115 = *&v121[32];
  v116 = *&v121[40];
  *v117 = *&v121[48];
  *&v111[2] = *v121;
  v112 = *&v121[8];
  v113 = *&v121[16];
  v110 = v74;
  *v111 = 256;
  *&v117[14] = *&v121[55];
  v114 = *&v121[24];
  return sub_100006270(&v110, &qword_100035DC0, &qword_100027A10);
}

uint64_t sub_100023558@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v6[2] = *(v1 + 32);
  v7 = *(v1 + 48);
  *a1 = sub_100024A20();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = sub_10000269C(&qword_100035D68, &qword_1000279B8);
  return sub_100022D0C(v6, a1 + *(v4 + 44));
}

uint64_t sub_1000235C8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_100023674@<X0>(uint64_t a1@<X8>)
{
  result = sub_1000249D0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1000236A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1000249E0();
}

uint64_t sub_1000236D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100024990();
  *a1 = result;
  return result;
}

uint64_t sub_100023704(uint64_t *a1)
{
  v1 = *a1;

  return sub_1000249A0();
}

uint64_t sub_100023730@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100024950();
  *a1 = result;
  return result;
}

uint64_t sub_10002375C(uint64_t *a1)
{
  v1 = *a1;

  return sub_100024960();
}

double sub_100023788(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1000237D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100023824(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100023870(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100023888(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000238AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1000238F4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 sub_100023958(uint64_t a1, uint64_t a2)
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

uint64_t sub_100023974(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1000239D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100023AB0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100023AC0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100023B04(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100023B04(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100023B14(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100023AB0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100023B60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100024970();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100023BB8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  if (*(v0 + 64))
  {
    v5 = *(v0 + 72);
  }

  return _swift_deallocObject(v0, 81, 7);
}

uint64_t sub_100023C20()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 72);
    return v1();
  }

  return result;
}

unint64_t sub_100023C50()
{
  result = qword_100035E38;
  if (!qword_100035E38)
  {
    sub_10001D824(&qword_100035E08, &qword_100027AC0);
    sub_100023D08();
    sub_10001E1F0(&qword_100035B80, &qword_100035B88, &qword_100027508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035E38);
  }

  return result;
}

unint64_t sub_100023D08()
{
  result = qword_100035E40;
  if (!qword_100035E40)
  {
    sub_10001D824(&qword_100035E48, &qword_100027AF0);
    sub_100023D94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035E40);
  }

  return result;
}

unint64_t sub_100023D94()
{
  result = qword_100035E50;
  if (!qword_100035E50)
  {
    sub_10001D824(&qword_100035E58, &unk_100027AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035E50);
  }

  return result;
}

uint64_t sub_100023E6C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1000251B0() & 1;
  }
}

unint64_t sub_100023F50()
{
  result = qword_100035EF8;
  if (!qword_100035EF8)
  {
    sub_10001D824(&qword_100035F00, &qword_100027B80);
    sub_100023FDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035EF8);
  }

  return result;
}

unint64_t sub_100023FDC()
{
  result = qword_100035F08;
  if (!qword_100035F08)
  {
    sub_10001D824(&qword_100035F10, &qword_100027B88);
    sub_1000240C0(&qword_100035F18, &qword_100035F20, &qword_100027B90, sub_100024170);
    sub_10001E1F0(&qword_100035F48, &qword_100035F50, &qword_100027BA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035F08);
  }

  return result;
}

uint64_t sub_1000240C0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10001D824(a2, a3);
    a4();
    sub_10001E1F0(&qword_100035B70, &qword_100035B78, &qword_100027500);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100024170()
{
  result = qword_100035F28;
  if (!qword_100035F28)
  {
    sub_10001D824(&qword_100035F30, &qword_100027B98);
    sub_10001E1F0(&qword_100035F38, &qword_100035F40, &qword_100027BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035F28);
  }

  return result;
}