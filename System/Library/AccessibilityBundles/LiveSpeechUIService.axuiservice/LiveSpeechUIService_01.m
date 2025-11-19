uint64_t sub_2252C()
{
  v1 = *(type metadata accessor for LiveSpeechHUDView_iOS(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_B9D40();

  return sub_1226C(v0 + v2);
}

unint64_t sub_225F8()
{
  result = qword_F8F58;
  if (!qword_F8F58)
  {
    sub_5520(&qword_F8E98);
    sub_5520(&qword_F83C0);
    sub_226C0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F8F58);
  }

  return result;
}

unint64_t sub_226C0()
{
  result = qword_F8F60;
  if (!qword_F8F60)
  {
    sub_5520(&qword_F83C0);
    sub_2274C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F8F60);
  }

  return result;
}

unint64_t sub_2274C()
{
  result = qword_F8F68;
  if (!qword_F8F68)
  {
    sub_5520(&qword_F8EA8);
    sub_227D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F8F68);
  }

  return result;
}

unint64_t sub_227D8()
{
  result = qword_F8F70;
  if (!qword_F8F70)
  {
    sub_5520(&qword_F8EB0);
    sub_5520(&qword_F8EC0);
    sub_5520(&qword_F8EE0);
    sub_5520(&qword_F8EE8);
    sub_21BB0();
    sub_21DD8();
    swift_getOpaqueTypeConformance2();
    sub_21E2C();
    swift_getOpaqueTypeConformance2();
    sub_D150(&qword_F8F78, &qword_F8F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F8F70);
  }

  return result;
}

unint64_t sub_2298C()
{
  result = qword_F9028;
  if (!qword_F9028)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_F9028);
  }

  return result;
}

uint64_t sub_229D8()
{
  v1 = type metadata accessor for LiveSpeechCaptionsPipView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 64);
  sub_2E50(&qword_F8AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_B9E70();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_22B60()
{
  type metadata accessor for LiveSpeechCaptionsPipView();

  return sub_39244();
}

unint64_t sub_22BD0()
{
  result = qword_F9048;
  if (!qword_F9048)
  {
    sub_5520(&qword_F9010);
    sub_22C5C();
    sub_23158();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F9048);
  }

  return result;
}

unint64_t sub_22C5C()
{
  result = qword_F9050;
  if (!qword_F9050)
  {
    sub_5520(&qword_F9008);
    sub_22CE8();
    sub_22F44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F9050);
  }

  return result;
}

unint64_t sub_22CE8()
{
  result = qword_F9058;
  if (!qword_F9058)
  {
    sub_5520(&qword_F9000);
    sub_22D74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F9058);
  }

  return result;
}

unint64_t sub_22D74()
{
  result = qword_F9060;
  if (!qword_F9060)
  {
    sub_5520(&qword_F8FF8);
    sub_22FFC(&qword_F9068, &qword_F9070, &unk_BEA10, sub_22E58);
    sub_D150(&qword_F90A8, &qword_F90B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F9060);
  }

  return result;
}

unint64_t sub_22E58()
{
  result = qword_F9078;
  if (!qword_F9078)
  {
    sub_5520(&qword_F9080);
    sub_D150(&qword_F9088, &qword_F9090);
    sub_D150(&qword_F9098, &qword_F90A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F9078);
  }

  return result;
}

unint64_t sub_22F44()
{
  result = qword_F90B8;
  if (!qword_F90B8)
  {
    sub_5520(&qword_F8FE8);
    sub_22FFC(&qword_F90C0, &qword_F8FE0, &unk_BE9C0, sub_23078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F90B8);
  }

  return result;
}

uint64_t sub_22FFC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_5520(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23078()
{
  result = qword_F90C8;
  if (!qword_F90C8)
  {
    sub_5520(&qword_F90D0);
    sub_D150(&qword_F90D8, &qword_F90E0);
    sub_D150(&qword_F90E8, &qword_F90F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F90C8);
  }

  return result;
}

unint64_t sub_23158()
{
  result = qword_F90F8;
  if (!qword_F90F8)
  {
    sub_5520(&qword_F8FD0);
    sub_22D74();
    sub_22FFC(&qword_F90C0, &qword_F8FE0, &unk_BE9C0, sub_23078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F90F8);
  }

  return result;
}

unint64_t sub_23210()
{
  result = qword_F9100;
  if (!qword_F9100)
  {
    sub_5520(&qword_F8FB8);
    sub_2090C(&qword_F9108, type metadata accessor for LiveSpeechCaptionsPipView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F9100);
  }

  return result;
}

uint64_t sub_232E0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LiveSpeechHUDView_iOS(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_16728(v4, a1);
}

unint64_t sub_23358()
{
  result = qword_F9168;
  if (!qword_F9168)
  {
    sub_5520(&qword_F9160);
    sub_D150(&qword_F9170, &qword_F9178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F9168);
  }

  return result;
}

uint64_t sub_23428(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for LiveSpeechHUDView_iOS(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_2349C@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LiveSpeechHUDView_iOS(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1D128(a1, v6, a2);
}

unint64_t sub_2351C()
{
  result = qword_F91A8;
  if (!qword_F91A8)
  {
    sub_5520(&qword_F9198);
    sub_2090C(&qword_F8A58, type metadata accessor for HUDButton);
    sub_D150(&qword_F91B0, &qword_F91B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F91A8);
  }

  return result;
}

uint64_t sub_23620()
{
  v1 = type metadata accessor for LiveSpeechHUDView_iOS(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[6];
  sub_2E50(&qword_FA6E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_BA500();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  v9 = v1[7];
  sub_2E50(&qword_F8398);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_B9E30();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  v11 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_E528(*(v5 + v1[8]), *(v5 + v1[8] + 8), *(v5 + v1[8] + 16));
  sub_E538(*(v5 + v1[9]), *(v5 + v1[9] + 8), *(v5 + v1[9] + 9));

  return _swift_deallocObject(v0, v11 + 8, v2 | 7);
}

uint64_t sub_23898()
{
  v1 = *(type metadata accessor for LiveSpeechHUDView_iOS(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D750(v0 + v2, v3);
}

uint64_t sub_23924@<X0>(_BYTE *a1@<X8>)
{
  result = sub_BA130();
  *a1 = result & 1;
  return result;
}

id sub_239B4(id result)
{
  if (result != &dword_0 + 1)
  {
    return result;
  }

  return result;
}

void sub_239C4(id a1)
{
  if (a1 != &dword_0 + 1)
  {
  }
}

unint64_t sub_239DC()
{
  result = qword_F9230;
  if (!qword_F9230)
  {
    sub_5520(&qword_F9210);
    sub_2090C(&qword_F8A58, type metadata accessor for HUDButton);
    sub_D150(&qword_F9238, &qword_F91F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F9230);
  }

  return result;
}

unint64_t sub_23AC4()
{
  result = qword_F9240;
  if (!qword_F9240)
  {
    sub_5520(&qword_F8A50);
    sub_2090C(&qword_F8A58, type metadata accessor for HUDButton);
    sub_2090C(&qword_F8940, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F9240);
  }

  return result;
}

uint64_t sub_23C44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24B84;

  return sub_768B8(a1, v4, v5, v6);
}

uint64_t sub_23D30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24B84;

  return sub_76BEC(a1, v4, v5, v6);
}

uint64_t sub_23DFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23E74()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_23F04()
{
  result = qword_F92B8;
  if (!qword_F92B8)
  {
    sub_5520(&qword_F92A8);
    sub_D150(&qword_F92C0, &qword_F92B0);
    sub_23FBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F92B8);
  }

  return result;
}

unint64_t sub_23FBC()
{
  result = qword_F92C8;
  if (!qword_F92C8)
  {
    sub_5520(&qword_F9290);
    sub_D150(&qword_F92D0, &qword_F9288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F92C8);
  }

  return result;
}

void *sub_24074(void *result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6)
{
  if (a5)
  {
    v9 = result;
    sub_240D8(a3, a4 & 1);
    v10 = a6;
  }

  return result;
}

uint64_t sub_240D8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

void sub_240E4(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6)
{
  if (a5)
  {

    sub_24154(a3, a4 & 1);
  }
}

uint64_t sub_24154(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_24178()
{
  result = qword_F9350;
  if (!qword_F9350)
  {
    sub_5520(&qword_F9330);
    sub_D150(&qword_F9358, &qword_F9338);
    sub_D150(&qword_F9360, &qword_F9318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F9350);
  }

  return result;
}

unint64_t sub_2425C()
{
  result = qword_F93D8;
  if (!qword_F93D8)
  {
    sub_5520(&qword_F93B8);
    sub_242E8();
    sub_2433C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F93D8);
  }

  return result;
}

unint64_t sub_242E8()
{
  result = qword_F93E0;
  if (!qword_F93E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F93E0);
  }

  return result;
}

unint64_t sub_2433C()
{
  result = qword_F93E8;
  if (!qword_F93E8)
  {
    sub_5520(&qword_F9280);
    sub_243C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F93E8);
  }

  return result;
}

unint64_t sub_243C8()
{
  result = qword_F93F0;
  if (!qword_F93F0)
  {
    sub_5520(&qword_F9278);
    sub_D150(&qword_F93F8, &qword_F9400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F93F0);
  }

  return result;
}

__n128 sub_244C4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_244D8(uint64_t a1, int a2)
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

uint64_t sub_24520(uint64_t result, int a2, int a3)
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

unint64_t sub_24574()
{
  result = qword_F9418;
  if (!qword_F9418)
  {
    sub_5520(&qword_F8D78);
    sub_2462C();
    sub_D150(&qword_F9428, &qword_F9430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F9418);
  }

  return result;
}

unint64_t sub_2462C()
{
  result = qword_F9420;
  if (!qword_F9420)
  {
    sub_5520(&qword_F8D70);
    sub_5520(&qword_F8D60);
    sub_D150(&qword_F8D68, &qword_F8D60);
    swift_getOpaqueTypeConformance2();
    sub_D150(&qword_F8A10, &qword_F8A18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F9420);
  }

  return result;
}

uint64_t sub_24754()
{
  type metadata accessor for TopPocketModifier();
  swift_getWitnessTable();
  sub_BA4D0();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_248C0()
{
  sub_5520(&qword_F8DA0);
  sub_B9F40();
  sub_215B4();
  sub_2090C(&qword_F8E00, &type metadata accessor for PlainButtonStyle);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24990()
{
  result = qword_F9450;
  if (!qword_F9450)
  {
    sub_5520(&qword_F9440);
    sub_D150(&qword_F9458, &qword_F9448);
    sub_D150(&qword_F9460, &qword_F9468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F9450);
  }

  return result;
}

unint64_t sub_24A78()
{
  result = qword_F9470;
  if (!qword_F9470)
  {
    sub_5520(&qword_F9478);
    sub_24990();
    sub_D150(&qword_F9458, &qword_F9448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F9470);
  }

  return result;
}

uint64_t sub_24C2C()
{
  v1 = qword_F9490;
  if (*(v0 + qword_F9490))
  {
    v2 = *(v0 + qword_F9490);
  }

  else
  {
    type metadata accessor for LiveSpeechScreenLockManager();
    v2 = swift_allocObject();
    *(v2 + 16) = -1;
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_24C98(uint64_t a1)
{
  *(a1 + qword_F9490) = 0;
  sub_BB640();
  __break(1u);
}

void sub_24D00(int a1, id a2)
{
  [a2 isViewLoaded];
  v3 = [a2 view];
  if (v3)
  {
    v4 = v3;
    [v3 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24D7C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

void sub_24DDC(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  aBlock[4] = sub_263B0;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24D7C;
  aBlock[3] = &unk_F0398;
  v10 = _Block_copy(aBlock);
  v11 = a1;
  swift_unknownObjectRetain();

  [a5 animateAlongsideTransition:v10 completion:0];
  _Block_release(v10);
  v12.receiver = v11;
  v12.super_class = type metadata accessor for LiveSpeechRootViewController_iOS(0);
  objc_msgSendSuper2(&v12, "viewWillTransitionToSize:withTransitionCoordinator:", a5, a2, a3);
  swift_unknownObjectRelease();
}

id sub_24F10()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for LiveSpeechRootViewController_iOS(0);
  objc_msgSendSuper2(&v10, "viewDidLoad");
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = [objc_opt_self() clearColor];
    [v2 setBackgroundColor:v3];

    v4 = *&v0[qword_F9480];
    type metadata accessor for LiveSpeechStore(0);
    sub_26328(&qword_F8390, type metadata accessor for LiveSpeechStore);
    v5 = v4;
    sub_B9DC0();
    sub_BA380();
    if (qword_F8258 != -1)
    {
      swift_once();
    }

    v6 = static LiveSpeechCaptionsViewsCoordinator.shared;
    v7 = swift_allocObject();
    *(v7 + 16) = v0;
    v8 = (v6 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveSpeechViewToFront);
    *v8 = sub_263A8;
    v8[1] = v7;
    v9 = v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_250B0(void *a1)
{
  v2 = [a1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v2;
  v4 = [v2 superview];

  if (!v4)
  {
    return;
  }

  v5 = [a1 view];
  if (!v5)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v6 = v5;
  [v4 bringSubviewToFront:?];
}

void sub_25180(void *a1)
{
  v1 = a1;
  sub_24F10();
}

void sub_251C8(void *a1, uint64_t a2, uint64_t a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for LiveSpeechRootViewController_iOS(0);
  v4 = v7.receiver;
  objc_msgSendSuper2(&v7, "viewDidAppear:", a3);
  [v4 isViewLoaded];
  v5 = *&v4[qword_F9480];
  v6 = sub_6E7A8();
  sub_80E8C(v5, v6);
}

void sub_25260(void *a1)
{
  v1 = a1;
  sub_26244();
}

uint64_t sub_252B8(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v3 = sub_BAEC0();
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BAEF0();
  v30 = *(v5 - 8);
  v31 = v5;
  __chkstk_darwin(v5);
  v29 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2E50(&qword_F9538);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - v9;
  v11 = sub_BAF10();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v27 - v16;
  sub_24C2C();
  LiveSpeechScreenLockManager.unregisterForScreenEvents()();

  v18 = *(a2 + qword_F9480);
  sub_BAE20();
  v35 = v18;
  v36 = 0;
  sub_B9D80();

  if (qword_F8258 != -1)
  {
    swift_once();
  }

  LiveSpeechCaptionsViewsCoordinator.updateLiveSpeechWindowState(_:)(LiveSpeechUIService_LiveSpeechCaptionsWindowState_compact);
  LiveSpeechCaptionsViewsCoordinator.updateLiveSpeechFrame(_:)(0.0, 0.0, 0.0, 0.0);
  sub_5470();
  v19 = sub_BB390();
  sub_BAF00();
  sub_BAF20();
  v27 = *(v12 + 8);
  v27(v14, v11);
  (*(v8 + 16))(v10, v28, v7);
  v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v21 = swift_allocObject();
  (*(v8 + 32))(v21 + v20, v10, v7);
  aBlock[4] = sub_2615C;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257F4;
  aBlock[3] = &unk_F0320;
  v22 = _Block_copy(aBlock);
  v23 = v29;
  sub_BAED0();
  v37 = &_swiftEmptyArrayStorage;
  sub_26328(&unk_FA520, &type metadata accessor for DispatchWorkItemFlags);
  sub_2E50(&qword_F9540);
  sub_261E0();
  v24 = v32;
  v25 = v34;
  sub_BB510();
  sub_BB370();
  _Block_release(v22);

  (*(v33 + 8))(v24, v25);
  (*(v30 + 8))(v23, v31);
  v27(v17, v11);
}

uint64_t sub_257F4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_25868()
{
}

uint64_t sub_258D4(uint64_t a1)
{
}

uint64_t sub_259FC()
{
  sub_24C2C();
  LiveSpeechScreenLockManager.registerForScreenEvents()();

  sub_BAE20();
  sub_B9D80();
}

uint64_t sub_25AA0()
{
  v1[2] = v0;
  v1[3] = sub_BB170();
  v1[4] = sub_BB160();
  v3 = sub_BB140();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_25B3C, v3, v2);
}

uint64_t sub_25B3C()
{
  v1 = v0[2];
  v0[7] = sub_BB160();
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_25C40;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_25C40()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_25DA0, v3, v2);
}

uint64_t sub_25DA0()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_25E00(uint64_t a1, CGFloat a2, CGFloat a3)
{
  if (qword_F8258 != -1)
  {
    swift_once();
  }

  v7 = static LiveSpeechCaptionsViewsCoordinator.shared;
  if (!CGRectIsEmpty(*(static LiveSpeechCaptionsViewsCoordinator.shared + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame)))
  {
    v10.x = a2;
    v10.y = a3;
    if (!CGRectContainsPoint(*(v7 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveSpeechFrame), v10))
    {
      return 0;
    }
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for PassThroughView(0);
  return objc_msgSendSuper2(&v9, "hitTest:withEvent:", a1, a2, a3);
}

id sub_25EFC(void *a1, CGFloat a2, CGFloat a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = a1;
  v11 = sub_25E00(a5, a2, a3);

  return v11;
}

id sub_25F78(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for PassThroughView(0);
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", v4);

  if (v5)
  {
  }

  return v5;
}

id sub_2600C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_260C8()
{
  v1 = sub_2E50(&qword_F9538);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_261C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_261E0()
{
  result = qword_FA530;
  if (!qword_FA530)
  {
    sub_5520(&qword_F9540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FA530);
  }

  return result;
}

uint64_t sub_26244()
{
  v1 = *(v0 + qword_F9480);
  v2 = sub_6E7A8();
  v3 = OBJC_IVAR____TtC19LiveSpeechUIService29LiveSpeechCaptionsCallManager_observers;
  [*&v2[OBJC_IVAR____TtC19LiveSpeechUIService29LiveSpeechCaptionsCallManager_observers] removeObject:v1];
  [*&v2[OBJC_IVAR____TtC19LiveSpeechUIService29LiveSpeechCaptionsCallManager_newObservers] removeObject:v1];
  if (![*&v2[v3] count])
  {
    sub_B6CE8();
  }

  if (qword_F8258 != -1)
  {
    swift_once();
  }

  LiveSpeechCaptionsViewsCoordinator.updateLiveSpeechWindowState(_:)(LiveSpeechUIService_LiveSpeechCaptionsWindowState_compact);
  return LiveSpeechCaptionsViewsCoordinator.updateLiveSpeechFrame(_:)(0.0, 0.0, 0.0, 0.0);
}

uint64_t sub_26328(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26370()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t LiveSpeechRootView_iOS.init(store:)()
{
  type metadata accessor for LiveSpeechStore(0);
  sub_26470();

  return sub_B9DC0();
}

uint64_t property wrapper backing initializer of LiveSpeechRootView_iOS.store()
{
  swift_getObjectType();
  sub_26470();

  return sub_B9DC0();
}

unint64_t sub_26470()
{
  result = qword_F8390;
  if (!qword_F8390)
  {
    type metadata accessor for LiveSpeechStore(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F8390);
  }

  return result;
}

uint64_t LiveSpeechRootView_iOS.$store.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveSpeechStore(0);
  v5 = sub_26470();

  return ObservedObject.projectedValue.getter(a1, a2, v4, v5);
}

uint64_t LiveSpeechRootView_iOS.body.getter@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  if ([objc_opt_self() isInHardwareKeyboardMode])
  {
    v4 = sub_BADC0();
  }

  else
  {
    v4 = sub_BADD0();
  }

  *a2 = v4;
  a2[1] = v5;
  v6 = sub_2E50(&qword_F9548);
  return sub_265F8(a1, (a2 + *(v6 + 44)));
}

uint64_t sub_265F8@<X0>(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = sub_2E50(&qword_F9560);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v11 = sub_BAAE0();
  sub_BADE0();
  sub_B9F70();
  LiveSpeechHUDView_iOS.init()(v10);
  type metadata accessor for LiveSpeechStore(0);
  sub_26470();
  v12 = sub_B9A90();
  v13 = &v10[*(sub_2E50(&qword_F9568) + 36)];
  *v13 = v12;
  v13[1] = a1;
  v14 = &v10[*(v5 + 44)];
  *v14 = 0;
  *(v14 + 1) = 0;
  sub_57A0(v10, v7, &qword_F9560);
  *(&v29[4] + 8) = v26;
  *(&v29[3] + 8) = v25;
  *(&v29[6] + 8) = v28;
  *&v29[0] = v11;
  *(&v29[5] + 8) = v27;
  *(&v29[2] + 8) = v24;
  *(&v29[1] + 8) = v23;
  *(v29 + 8) = v22;
  BYTE8(v29[7]) = 0;
  v15 = v29[5];
  a2[4] = v29[4];
  a2[5] = v15;
  a2[6] = v29[6];
  *(a2 + 105) = *(&v29[6] + 9);
  v16 = v29[1];
  *a2 = v29[0];
  a2[1] = v16;
  v17 = v29[3];
  a2[2] = v29[2];
  a2[3] = v17;
  v18 = a2 + *(sub_2E50(&qword_F9570) + 48);
  sub_57A0(v7, v18, &qword_F9560);
  v19 = a1;
  sub_57A0(v29, &v30, &qword_F9578);
  sub_C5E8(v10, &qword_F9560);
  sub_C5E8(v7, &qword_F9560);
  v34 = v25;
  v35 = v26;
  v36 = v27;
  v37 = v28;
  v31 = v22;
  v32 = v23;
  v30 = v11;
  v33 = v24;
  v38 = 0;
  return sub_C5E8(&v30, &qword_F9578);
}

uint64_t sub_268E4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 8);
  if ([objc_opt_self() isInHardwareKeyboardMode])
  {
    v4 = sub_BADC0();
  }

  else
  {
    v4 = sub_BADD0();
  }

  *a1 = v4;
  a1[1] = v5;
  v6 = sub_2E50(&qword_F9548);
  return sub_265F8(v3, (a1 + *(v6 + 44)));
}

uint64_t sub_26964(uint64_t a1, int a2)
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

uint64_t sub_269AC(uint64_t result, int a2, int a3)
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

unint64_t sub_269FC()
{
  result = qword_F9550;
  if (!qword_F9550)
  {
    sub_5520(&qword_F9558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F9550);
  }

  return result;
}

uint64_t sub_26A74(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2E50(&qword_F9580);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_26B44(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2E50(&qword_F9580);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for LiveCaptionsTopBarMenu()
{
  result = qword_F95E0;
  if (!qword_F95E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26C40()
{
  sub_21020();
  if (v0 <= 0x3F)
  {
    sub_26CC4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26CC4()
{
  if (!qword_F95F0)
  {
    v0 = sub_BA540();
    if (!v1)
    {
      atomic_store(v0, &qword_F95F0);
    }
  }
}

uint64_t sub_26D38@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v3 = sub_BA5B0();
  v4 = *(v3 - 8);
  v42 = v3;
  v43 = v4;
  __chkstk_darwin(v3);
  v41 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BAE50();
  v39 = *(v6 - 8);
  v40 = v6;
  __chkstk_darwin(v6);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LiveCaptionsTopBarMenu();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = sub_2E50(&qword_F9620);
  v34 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = sub_2E50(&qword_F9628);
  v35 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v33 - v15;
  v17 = sub_2E50(&qword_F9630);
  v18 = *(v17 - 8);
  v37 = v17;
  v38 = v18;
  __chkstk_darwin(v17);
  v20 = &v33 - v19;
  sub_27C28(v2, &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v22 = swift_allocObject();
  sub_27C90(&v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  v45 = v2;
  v33 = sub_2E50(&qword_F9638);
  sub_2E50(&qword_F9640);
  v23 = sub_5520(&qword_F9648);
  v24 = sub_27D6C();
  v46 = &type metadata for LiveCaptionsCaptionTitle;
  v47 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = v23;
  v47 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_D150(&qword_F9658, &qword_F9640);
  sub_BA740();
  v26 = v36;
  sub_BAE40();
  v27 = sub_D150(&qword_F9660, &qword_F9620);
  sub_BAA40();
  (*(v39 + 8))(v26, v40);
  (*(v34 + 8))(v13, v11);
  v46 = v11;
  v47 = v27;
  v28 = swift_getOpaqueTypeConformance2();
  sub_BA9C0();
  (*(v35 + 8))(v16, v14);
  v29 = v41;
  sub_BA5A0();
  v46 = v14;
  v47 = v28;
  swift_getOpaqueTypeConformance2();
  sub_27FD8(&qword_F9668, &type metadata accessor for BorderlessButtonMenuStyle);
  v30 = v37;
  v31 = v42;
  sub_BAA50();
  (*(v43 + 8))(v29, v31);
  return (*(v38 + 8))(v20, v30);
}

void sub_2737C(char a1, uint64_t a2)
{
  v39 = a2;
  v3 = sub_BAEC0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BAEF0();
  v42 = *(v7 - 8);
  __chkstk_darwin(v7);
  v41 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LiveCaptionsTopBarMenu();
  v37 = *(v9 - 8);
  v10 = *(v37 + 64);
  __chkstk_darwin(v9 - 8);
  v43 = sub_BAF10();
  v40 = *(v43 - 8);
  __chkstk_darwin(v43);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v38 = &v32 - v14;
  v15 = sub_BB2F0();
  v16 = AXLogLiveTranscription();
  if (v16)
  {
    v17 = v16;
    v18 = os_log_type_enabled(v16, v15);
    v35 = v4;
    v36 = v3;
    v33 = v6;
    v34 = v7;
    if (v18)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      aBlock[0] = v20;
      *v19 = 136315138;
      if (a1)
      {
        v21 = 1702195828;
      }

      else
      {
        v21 = 0x65736C6166;
      }

      if (a1)
      {
        v22 = 0xE400000000000000;
      }

      else
      {
        v22 = 0xE500000000000000;
      }

      v23 = sub_7A1D8(v21, v22, aBlock);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_0, v17, v15, "Menu for input isVisible: %s", v19, 0xCu);
      sub_28020(v20);
    }

    if ((a1 & 1) == 0)
    {
      sub_5470();
      v24 = sub_BB390();
      sub_BAF00();
      v25 = v38;
      sub_BAF20();
      v40 = *(v40 + 8);
      (v40)(v12, v43);
      sub_27C28(v39, &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      v26 = (*(v37 + 80) + 16) & ~*(v37 + 80);
      v27 = swift_allocObject();
      sub_27C90(&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
      aBlock[4] = sub_27F60;
      aBlock[5] = v27;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_257F4;
      aBlock[3] = &unk_F0490;
      v28 = _Block_copy(aBlock);

      v29 = v41;
      sub_BAED0();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_27FD8(&unk_FA520, &type metadata accessor for DispatchWorkItemFlags);
      sub_2E50(&qword_F9540);
      sub_D150(&qword_FA530, &qword_F9540);
      v30 = v33;
      v31 = v36;
      sub_BB510();
      sub_BB370();
      _Block_release(v28);

      (*(v35 + 8))(v30, v31);
      (*(v42 + 8))(v29, v34);
      (v40)(v25, v43);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_278F4()
{
  type metadata accessor for LiveCaptionsTopBarMenu();
  sub_2E50(&qword_F9580);
  return sub_BA510();
}

uint64_t sub_27954@<X0>(uint64_t a1@<X8>)
{
  sub_BABC0();
  result = sub_8D51C();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = result & 1;
  *(a1 + 24) = v3;
  return result;
}

uint64_t sub_279BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12[0] = a1;
  v12[1] = a2;
  v2 = sub_BA5E0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2E50(&qword_F9648);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v12 - v8;
  sub_B181C(v13);
  sub_BA5D0();
  v10 = sub_27D6C();
  sub_BA950();
  (*(v3 + 8))(v5, v2);
  v14[6] = v13[6];
  v14[7] = v13[7];
  v14[8] = v13[8];
  v14[2] = v13[2];
  v14[3] = v13[3];
  v14[4] = v13[4];
  v14[5] = v13[5];
  v14[0] = v13[0];
  v14[1] = v13[1];
  sub_27DC0(v14);
  type metadata accessor for LiveCaptionsTopBarMenu();
  sub_2E50(&qword_F9580);
  sub_BA520();
  *&v13[0] = &type metadata for LiveCaptionsCaptionTitle;
  *(&v13[0] + 1) = v10;
  swift_getOpaqueTypeConformance2();
  sub_BA960();

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_27C28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveCaptionsTopBarMenu();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27C90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveCaptionsTopBarMenu();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_27CF4(char a1)
{
  v3 = *(type metadata accessor for LiveCaptionsTopBarMenu() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_2737C(a1, v4);
}

unint64_t sub_27D6C()
{
  result = qword_F9650;
  if (!qword_F9650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F9650);
  }

  return result;
}

uint64_t sub_27E14()
{
  v1 = (type metadata accessor for LiveCaptionsTopBarMenu() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[7];
  v6 = sub_BA590();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v5, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  sub_2E50(&qword_F9580);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_27F60()
{
  type metadata accessor for LiveCaptionsTopBarMenu();

  return sub_278F4();
}

uint64_t sub_27FC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_27FD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_28020(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_2806C()
{
  sub_5520(&qword_F9630);
  sub_BA5B0();
  sub_5520(&qword_F9628);
  sub_5520(&qword_F9620);
  sub_D150(&qword_F9660, &qword_F9620);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_27FD8(&qword_F9668, &type metadata accessor for BorderlessButtonMenuStyle);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_281D0@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v57 = sub_BA5B0();
  v58 = *(v57 - 8);
  __chkstk_darwin(v57);
  v54 = v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_BAE50();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v4 = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_2E50(&qword_F9670);
  v46 = *(v45 - 8);
  __chkstk_darwin(v45);
  v6 = v44 - v5;
  v47 = sub_2E50(&qword_F9678);
  v48 = *(v47 - 8);
  __chkstk_darwin(v47);
  v8 = v44 - v7;
  v50 = sub_2E50(&qword_F9680);
  v52 = *(v50 - 8);
  __chkstk_darwin(v50);
  v44[0] = v44 - v9;
  v55 = sub_2E50(&qword_F9688);
  v56 = *(v55 - 8);
  __chkstk_darwin(v55);
  v63 = v44 - v10;
  v60 = sub_2E50(&qword_F9690);
  __chkstk_darwin(v60);
  v53 = v44 - v11;
  v61 = sub_2E50(&qword_F9698);
  __chkstk_darwin(v61);
  v59 = v44 - v12;
  v64 = v1;
  v66 = v1;
  v65 = v1;
  sub_2E50(&qword_F96A0);
  sub_2E50(&qword_F96A8);
  sub_D150(&qword_F96B0, &qword_F96A0);
  v44[1] = &protocol conformance descriptor for TupleView<A>;
  sub_D150(&qword_F96B8, &qword_F96A8);
  sub_BA750();
  sub_BAE40();
  v13 = sub_D150(&qword_F96C0, &qword_F9670);
  v14 = v45;
  sub_BAA40();
  (*(v49 + 8))(v4, v51);
  (*(v46 + 8))(v6, v14);
  v67._countAndFlagsBits = v14;
  v67._object = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = v44[0];
  v17 = v47;
  sub_BA9C0();
  (*(v48 + 8))(v8, v17);
  v18 = v54;
  sub_BA5A0();
  v67._countAndFlagsBits = v17;
  v67._object = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeConformance2();
  v20 = sub_2B6DC(&qword_F9668, &type metadata accessor for BorderlessButtonMenuStyle);
  v21 = v50;
  v22 = v57;
  sub_BAA50();
  (*(v58 + 8))(v18, v22);
  (*(v52 + 8))(v16, v21);
  v23._countAndFlagsBits = 0xD000000000000024;
  v23._object = 0x80000000000C45E0;
  v71 = LiveSpeechCaptionsLocString(_:)(v23);
  v70 = v64[4];
  sub_2E50(&qword_F96C8);
  sub_BABF0();
  LODWORD(v58) = v68;
  sub_2E50(&qword_F96D0);
  v67._countAndFlagsBits = v21;
  v67._object = v22;
  v68 = v19;
  v69 = v20;
  swift_getOpaqueTypeConformance2();
  sub_B320();
  sub_D150(&qword_F96D8, &qword_F96D0);
  v24 = v53;
  v25 = v55;
  v26 = v63;
  sub_BA910();

  (*(v56 + 8))(v26, v25);
  v27 = objc_opt_self();
  v28 = [v27 defaultCenter];
  if (qword_F82E0 != -1)
  {
    swift_once();
  }

  v29 = sub_2E50(&qword_F96E0);
  sub_BB400();

  v30 = swift_allocObject();
  v31 = v64;
  v32 = v64[3];
  *(v30 + 3) = v64[2];
  *(v30 + 4) = v32;
  *(v30 + 5) = v31[4];
  v33 = v31[1];
  *(v30 + 1) = *v31;
  *(v30 + 2) = v33;
  v34 = (v24 + *(v29 + 56));
  *v34 = sub_2B358;
  v34[1] = v30;
  sub_2B388(v31, &v67);
  v35 = [v27 defaultCenter];
  if (qword_F82E8 != -1)
  {
    swift_once();
  }

  v36 = v60;
  sub_BB400();

  v37 = swift_allocObject();
  v38 = v31[3];
  *(v37 + 3) = v31[2];
  *(v37 + 4) = v38;
  *(v37 + 5) = v31[4];
  v39 = v31[1];
  *(v37 + 1) = *v31;
  *(v37 + 2) = v39;
  v40 = (v24 + *(v36 + 56));
  *v40 = sub_2B3C0;
  v40[1] = v37;
  sub_2B388(v31, &v67);
  v41._countAndFlagsBits = 0xD000000000000017;
  v41._object = 0x80000000000C4610;
  v67 = LiveSpeechCaptionsLocString(_:)(v41);
  sub_D150(&qword_F96E8, &qword_F9690);
  v42 = v59;
  sub_BA900();

  sub_C5E8(v24, &qword_F9690);
  sub_B9EC0();
  return sub_C5E8(v42, &qword_F9698);
}

uint64_t sub_28D1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v9 = *(a1 + 4);

  sub_2E50(&qword_F96C8);
  sub_BABF0();
  sub_BABD0();
  KeyPath = swift_getKeyPath();
  result = swift_allocObject();
  *(result + 16) = (v9 & 1) == 0;
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = KeyPath;
  *(a2 + 48) = sub_2B51C;
  *(a2 + 56) = result;
  return result;
}

uint64_t sub_28E18@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_2E50(&qword_F9700);
  __chkstk_darwin(v3 - 8);
  v5 = &v40 - v4;
  v6 = type metadata accessor for HUDButton(0);
  __chkstk_darwin(v6);
  v8 = (&v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = sub_2E50(&qword_F9708);
  __chkstk_darwin(v42);
  v44 = &v40 - v9;
  v43 = sub_2E50(&qword_F96A0);
  __chkstk_darwin(v43);
  v11 = &v40 - v10;
  if (qword_F8320 != -1)
  {
    swift_once();
  }

  v12 = static AXLTSettingsManager.shared;
  v13 = AXLTSettingsManager.buttonScaledHeight.getter();
  v46[0] = a1[1];
  sub_2E50(&qword_F9710);
  sub_BABD0();
  v41 = v47;
  *v8 = swift_getKeyPath();
  sub_2E50(&qword_F8398);
  swift_storeEnumTagMultiPayload();
  v14 = v6[13];
  sub_BA710();
  *(v8 + v6[15]) = 0x4020000000000000;
  *(v8 + v6[16]) = 0x4000000000000000;
  *(v8 + v6[17]) = 0x4040000000000000;
  *(v8 + v6[18]) = 0x402E000000000000;
  *(v8 + v6[19]) = 0x4024000000000000;
  v15 = v6[20];
  if (qword_F8378 != -1)
  {
    swift_once();
  }

  v16 = sub_B9E30();
  v17 = sub_3CB8(v16, qword_100DA8);
  (*(*(v16 - 8) + 16))(v8 + v15, v17, v16);

  *(v8 + v6[5]) = xmmword_BF270;
  v18 = (v8 + v6[6]);
  *v18 = 0;
  v18[1] = 0;
  *(v8 + v6[7]) = 0;
  *(v8 + v6[8]) = 0;
  *(v8 + v6[9]) = 0;
  *(v8 + v6[10]) = 0;
  *(v8 + v6[11]) = 0;
  v19 = (v8 + v6[12]);
  *v19 = v13;
  *(v19 + 8) = 0;
  v20 = (v8 + v6[14]);
  *v20 = LiveSpeechStore.SpeechContext.init(text:highlightRange:);
  v20[1] = 0;
  *(v8 + v14) = v41;
  KeyPath = swift_getKeyPath();
  v22 = OBJC_IVAR___AXLTSettingsManager__boldText;
  v23 = *(v12 + OBJC_IVAR___AXLTSettingsManager__boldText);
  if (v23 == 2)
  {
    v24 = _AXSLiveCaptionsBoldTextEnabled();
    if (v24 == -1)
    {
      v39 = _AXSEnhanceTextLegibilityEnabled();
      *(v12 + v22) = v39 != 0;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    else
    {
      *(v12 + v22) = v24 == 1;
      if (v24 != 1)
      {
LABEL_8:
        v25 = &enum case for LegibilityWeight.regular(_:);
        goto LABEL_11;
      }
    }
  }

  else if ((v23 & 1) == 0)
  {
    goto LABEL_8;
  }

  v25 = &enum case for LegibilityWeight.bold(_:);
LABEL_11:
  v26 = *v25;
  v27 = sub_B9F20();
  v28 = *(v27 - 8);
  (*(v28 + 104))(v5, v26, v27);
  (*(v28 + 56))(v5, 0, 1, v27);
  v29 = v44;
  v30 = &v44[*(v42 + 36)];
  v31 = sub_2E50(&qword_F9718);
  sub_66B8(v5, v30 + *(v31 + 28), &qword_F9700);
  *v30 = KeyPath;
  sub_2B438(v8, v29);
  v32 = [objc_opt_self() defaultCenter];
  if (qword_F82D0 != -1)
  {
    swift_once();
  }

  v33 = v43;
  sub_BB400();

  v34 = swift_allocObject();
  v35 = a1[3];
  *(v34 + 3) = a1[2];
  *(v34 + 4) = v35;
  *(v34 + 5) = a1[4];
  v36 = a1[1];
  *(v34 + 1) = *a1;
  *(v34 + 2) = v36;
  sub_66B8(v29, v11, &qword_F9708);
  v37 = &v11[*(v33 + 56)];
  *v37 = sub_2B4FC;
  v37[1] = v34;
  sub_66B8(v11, v45, &qword_F96A0);
  return sub_2B388(a1, v46);
}

uint64_t sub_29400()
{
  if (qword_F8320 != -1)
  {
    swift_once();
  }

  v0 = AXLTSettingsManager.contentCategory.getter();
  v1 = qword_F8378;
  v2 = v0;
  if (v1 != -1)
  {
    swift_once();
  }

  v3 = sub_B9E30();
  sub_3CB8(v3, qword_100DA8);
  v4 = sub_1F22C();
  v5 = sub_BB420();

  if (v5)
  {
    v6 = sub_1F22C();

    v2 = v6;
  }

  if (qword_F8318 != -1)
  {
    swift_once();
  }

  sub_64E70(buttonFontStyle, UIFontWeightBold);

  sub_BA720();
  sub_2E50(&qword_F9710);
  return sub_BABE0();
}

uint64_t sub_29594@<X0>(char *a1@<X8>)
{
  v26 = a1;
  v1 = sub_2E50(&qword_F8A90);
  __chkstk_darwin(v1 - 8);
  v3 = &v25 - v2;
  v4 = sub_2E50(&qword_F96F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  __chkstk_darwin(v14);
  v16 = &v25 - v15;
  sub_B9B60();
  v17 = sub_B9B80();
  v18 = *(*(v17 - 8) + 56);
  v18(v3, 0, 1, v17);
  sub_BAC10();
  v19._object = 0x80000000000C4650;
  v19._countAndFlagsBits = 0xD000000000000012;
  v27 = LiveSpeechCaptionsLocString(_:)(v19);
  sub_B9B70();
  v18(v3, 0, 1, v17);
  sub_B320();
  sub_BAC30();
  v20 = *(v5 + 16);
  v20(v10, v16, v4);
  v20(v7, v13, v4);
  v21 = v26;
  v20(v26, v10, v4);
  v22 = sub_2E50(&qword_F96F8);
  v20(&v21[*(v22 + 48)], v7, v4);
  v23 = *(v5 + 8);
  v23(v13, v4);
  v23(v16, v4);
  v23(v7, v4);
  return (v23)(v10, v4);
}

uint64_t sub_29910@<X0>(uint64_t a1@<X8>)
{
  v2._object = 0x80000000000C4670;
  v2._countAndFlagsBits = 0xD000000000000013;
  LiveSpeechCaptionsLocString(_:)(v2);
  sub_B320();
  result = sub_BA800();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_29980()
{
  if (qword_F82A0 != -1)
  {
    swift_once();
  }

  AXLTCaptionsProvider.canClearCaptions.getter();
  sub_2E50(&qword_F96C8);
  return sub_BABE0();
}

uint64_t sub_29A2C()
{
  sub_BAE30();
  sub_B9D80();
}

uint64_t sub_29A8C()
{
  if (qword_F82A0 != -1)
  {
    goto LABEL_29;
  }

  while ((*(static AXLTCaptionsProvider.shared + OBJC_IVAR___AXLTCaptionsProvider_isDeviceLocked) & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_B9B10();

    if (v18 >> 62)
    {
      v0 = sub_BB650();
      if (!v0)
      {
LABEL_31:

        break;
      }
    }

    else
    {
      v0 = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8));
      if (!v0)
      {
        goto LABEL_31;
      }
    }

    v1 = 0;
    while (1)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v2 = sub_BB590();
      }

      else
      {
        if (v1 >= *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_28;
        }

        v2 = *(v18 + 8 * v1 + 32);
      }

      v3 = v2;
      v4 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      v5 = sub_B9700();
      v7 = v6;
      if (v5 == sub_B97B0() && v7 == v8)
      {
      }

      else
      {
        v9 = sub_BB700();

        if (v9)
        {
        }

        else
        {
          v10 = sub_B9700();
          v12 = v11;
          if (v10 == sub_BAFD0() && v12 == v13)
          {
          }

          else
          {
            v14 = sub_BB700();

            if ((v14 & 1) == 0)
            {

              goto LABEL_31;
            }
          }

          if (qword_F8320 != -1)
          {
            swift_once();
          }

          v15 = static AXLTSettingsManager.shared;

          v16 = OBJC_IVAR___AXLTSettingsManager_transcribeCalls;
          swift_beginAccess();
          if (*(v15 + v16))
          {
            goto LABEL_31;
          }
        }
      }

      ++v1;
      if (v4 == v0)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

  sub_2E50(&qword_F96C8);
  return sub_BABE0();
}

uint64_t sub_29E1C(uint64_t (*a1)(void))
{
  if (qword_F82A0 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  return a1();
}

uint64_t sub_29E88@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_BAB70();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6._object = 0x80000000000C46F0;
  v6._countAndFlagsBits = 0xD000000000000017;
  v27 = LiveSpeechCaptionsLocString(_:)(v6);
  sub_B320();
  v7 = sub_BA800();
  v9 = v8;
  HIDWORD(v17) = v10;
  v18 = v11;
  sub_BAB60();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v12 = sub_BABA0();

  (*(v3 + 8))(v5, v2);
  sub_BADE0();
  sub_B9CF0();
  v25[0] = v12;
  v25[1] = 0;
  *&v23[11] = *&v23[35];
  *&v23[19] = v24;
  *&v23[3] = *&v23[27];
  LOBYTE(v3) = BYTE4(v17) & 1;
  v22 = BYTE4(v17) & 1;
  v21 = 1;
  *v26 = 1;
  *&v26[48] = *(&v24 + 1);
  *&v26[34] = *&v23[16];
  *&v26[18] = *&v23[8];
  *&v26[2] = *v23;
  *(v20 + 7) = v12;
  *(&v20[4] + 7) = *&v26[48];
  *(&v20[3] + 7) = *&v26[32];
  *(&v20[2] + 7) = *&v26[16];
  *(&v20[1] + 7) = *v26;
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v3;
  *(a1 + 24) = v18;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v13 = v20[1];
  *(a1 + 41) = v20[0];
  v14 = v20[2];
  v15 = v20[3];
  *(a1 + 104) = *(&v20[3] + 15);
  *(a1 + 89) = v15;
  *(a1 + 73) = v14;
  *(a1 + 57) = v13;
  v27._countAndFlagsBits = v12;
  v27._object = 0;
  v28 = 1;
  *&v31[14] = *&v23[23];
  *v31 = *&v23[16];
  v30 = *&v23[8];
  v29 = *v23;
  sub_21808(v7, v9, v3);

  sub_2B7C4(v25, &v19);
  sub_2B834(&v27);
  sub_C004(v7, v9, v3);
}

uint64_t sub_2A16C()
{
  v0 = sub_2E50(&qword_F9728);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  sub_2E50(&qword_F9730);
  sub_D150(&qword_F9738, &qword_F9730);
  sub_BAC20();
  sub_D150(&qword_F9740, &qword_F9728);
  sub_BA9A0();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_2A384@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_BAB70();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6._object = 0x80000000000C46B0;
  v6._countAndFlagsBits = 0xD000000000000018;
  v27 = LiveSpeechCaptionsLocString(_:)(v6);
  sub_B320();
  v7 = sub_BA800();
  v9 = v8;
  HIDWORD(v17) = v10;
  v18 = v11;
  sub_BAB60();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v12 = sub_BABA0();

  (*(v3 + 8))(v5, v2);
  sub_BADE0();
  sub_B9CF0();
  v25[0] = v12;
  v25[1] = 0;
  *&v23[11] = *&v23[35];
  *&v23[19] = v24;
  *&v23[3] = *&v23[27];
  LOBYTE(v3) = BYTE4(v17) & 1;
  v22 = BYTE4(v17) & 1;
  v21 = 1;
  *v26 = 1;
  *&v26[48] = *(&v24 + 1);
  *&v26[34] = *&v23[16];
  *&v26[18] = *&v23[8];
  *&v26[2] = *v23;
  *(v20 + 7) = v12;
  *(&v20[4] + 7) = *&v26[48];
  *(&v20[3] + 7) = *&v26[32];
  *(&v20[2] + 7) = *&v26[16];
  *(&v20[1] + 7) = *v26;
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v3;
  *(a1 + 24) = v18;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v13 = v20[1];
  *(a1 + 41) = v20[0];
  v14 = v20[2];
  v15 = v20[3];
  *(a1 + 104) = *(&v20[3] + 15);
  *(a1 + 89) = v15;
  *(a1 + 73) = v14;
  *(a1 + 57) = v13;
  v27._countAndFlagsBits = v12;
  v27._object = 0;
  v28 = 1;
  *&v31[14] = *&v23[23];
  *v31 = *&v23[16];
  v30 = *&v23[8];
  v29 = *v23;
  sub_21808(v7, v9, v3);

  sub_2B7C4(v25, &v19);
  sub_2B834(&v27);
  sub_C004(v7, v9, v3);
}

uint64_t sub_2A65C()
{
  v1 = sub_2E50(&qword_F8A90);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  v4 = sub_2E50(&qword_F9728);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - v6;
  v8 = *v0;
  v9 = v0[1];
  v10 = *(v0 + 16);
  sub_B9B60();
  v11 = sub_B9B80();
  (*(*(v11 - 8) + 56))(v3, 0, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  *(v12 + 24) = v9;
  *(v12 + 32) = v10;

  sub_2E50(&qword_F9730);
  sub_D150(&qword_F9738, &qword_F9730);
  sub_BAC10();
  sub_D150(&qword_F9740, &qword_F9728);
  sub_BA9A0();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2A8EC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_BAB70();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6._object = 0x80000000000C4750;
  v6._countAndFlagsBits = 0xD000000000000014;
  v27 = LiveSpeechCaptionsLocString(_:)(v6);
  sub_B320();
  v7 = sub_BA800();
  v9 = v8;
  HIDWORD(v17) = v10;
  v18 = v11;
  sub_BAB60();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v12 = sub_BABA0();

  (*(v3 + 8))(v5, v2);
  sub_BADE0();
  sub_B9CF0();
  v25[0] = v12;
  v25[1] = 0;
  *&v23[11] = *&v23[35];
  *&v23[19] = v24;
  *&v23[3] = *&v23[27];
  LOBYTE(v3) = BYTE4(v17) & 1;
  v22 = BYTE4(v17) & 1;
  v21 = 1;
  *v26 = 1;
  *&v26[48] = *(&v24 + 1);
  *&v26[34] = *&v23[16];
  *&v26[18] = *&v23[8];
  *&v26[2] = *v23;
  *(v20 + 7) = v12;
  *(&v20[4] + 7) = *&v26[48];
  *(&v20[3] + 7) = *&v26[32];
  *(&v20[2] + 7) = *&v26[16];
  *(&v20[1] + 7) = *v26;
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v3;
  *(a1 + 24) = v18;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v13 = v20[1];
  *(a1 + 41) = v20[0];
  v14 = v20[2];
  v15 = v20[3];
  *(a1 + 104) = *(&v20[3] + 15);
  *(a1 + 89) = v15;
  *(a1 + 73) = v14;
  *(a1 + 57) = v13;
  v27._countAndFlagsBits = v12;
  v27._object = 0;
  v28 = 1;
  *&v31[14] = *&v23[23];
  *v31 = *&v23[16];
  v30 = *&v23[8];
  v29 = *v23;
  sub_21808(v7, v9, v3);

  sub_2B7C4(v25, &v19);
  sub_2B834(&v27);
  sub_C004(v7, v9, v3);
}

uint64_t sub_2ABD0()
{
  v1 = sub_2E50(&qword_F9728);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - v3;
  v6 = *v0;
  v5 = v0[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  sub_2E50(&qword_F9730);
  sub_D150(&qword_F9738, &qword_F9730);
  sub_BAC20();
  sub_D150(&qword_F9740, &qword_F9728);
  sub_BA9A0();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_2ADB8@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_F8320 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v33 = static AXLTSettingsManager.shared;
    v6 = AXLTSettingsManager.contentCategory.getter();
    v7 = qword_F8378;
    v8 = v6;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = sub_B9E30();
    sub_3CB8(v9, qword_100DA8);
    v10 = sub_1F22C();
    v11 = sub_BB420();

    if (v11)
    {
      v12 = sub_1F22C();

      v8 = v12;
    }

    if (qword_F8318 != -1)
    {
      swift_once();
    }

    sub_64E70(buttonFontStyle, UIFontWeightBold);

    sub_BA720();
    sub_BABC0();
    v13 = v37;
    if (qword_F82A0 != -1)
    {
      swift_once();
    }

    v14 = static AXLTCaptionsProvider.shared;
    v34 = AXLTCaptionsProvider.canClearCaptions.getter() & 1;
    sub_BABC0();
    v15 = v36;
    if (*(v14 + OBJC_IVAR___AXLTCaptionsProvider_isDeviceLocked))
    {
      break;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_B9B10();

    if (v36 >> 62)
    {
      v16 = sub_BB650();
      if (!v16)
      {
LABEL_35:

        v13 = v37;
        v15 = v36;
        break;
      }
    }

    else
    {
      v16 = *(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8));
      if (!v16)
      {
        goto LABEL_35;
      }
    }

    v30 = a1;
    v31 = a2;
    v32 = OBJC_IVAR___AXLTSettingsManager_transcribeCalls;
    swift_beginAccess();
    a1 = 0;
    while (1)
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        v17 = sub_BB590();
      }

      else
      {
        if (a1 >= *(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_32;
        }

        v17 = *(v36 + 8 * a1 + 32);
      }

      v18 = v17;
      a2 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        break;
      }

      v19 = sub_B9700();
      v21 = v20;
      if (v19 == sub_B97B0() && v21 == v22)
      {
      }

      else
      {
        v23 = sub_BB700();

        if (v23)
        {
        }

        else
        {
          v24 = sub_B9700();
          v26 = v25;
          if (v24 == sub_BAFD0() && v26 == v27)
          {
          }

          else
          {
            v28 = sub_BB700();

            if ((v28 & 1) == 0)
            {
              goto LABEL_30;
            }
          }

          if (*(v33 + v32))
          {
LABEL_30:
            a1 = v30;
            a2 = v31;
            goto LABEL_35;
          }
        }
      }

      ++a1;
      if (a2 == v16)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    swift_once();
  }

  sub_BABC0();
  result = sub_BABC0();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = v36;
  *(a3 + 24) = v13;
  *(a3 + 32) = v15;
  *(a3 + 40) = v37;
  *(a3 + 48) = v34;
  *(a3 + 56) = v35;
  *(a3 + 64) = v34;
  *(a3 + 72) = v35;
  return result;
}

uint64_t sub_2B27C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_2B2C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2B438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HUDButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2B49C()
{

  return _swift_deallocObject(v0, 96, 7);
}

__n128 sub_2B524(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2B538(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_2B580(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_2B5F4()
{
  result = qword_F9720;
  if (!qword_F9720)
  {
    sub_5520(&qword_F9698);
    sub_D150(&qword_F96E8, &qword_F9690);
    sub_2B6DC(&qword_F8940, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F9720);
  }

  return result;
}

uint64_t sub_2B6DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2B778()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_2B7C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2E50(&qword_F9748);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2B834(uint64_t a1)
{
  v2 = sub_2E50(&qword_F9748);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2B89C()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_2B900()
{
  result = qword_F9758;
  if (!qword_F9758)
  {
    sub_5520(&unk_F9760);
    sub_D150(&qword_F9740, &qword_F9728);
    sub_2B6DC(&qword_F8940, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F9758);
  }

  return result;
}

id sub_2B9F0()
{
  result = [objc_allocWithZone(type metadata accessor for LiveCaptionsCallDisclosureProvider()) init];
  static LiveCaptionsCallDisclosureProvider.shared = result;
  return result;
}

id AXLTAudioHistogramViewGenerator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t *LiveCaptionsCallDisclosureProvider.shared.unsafeMutableAddressor()
{
  if (qword_F8230 != -1)
  {
    swift_once();
  }

  return &static LiveCaptionsCallDisclosureProvider.shared;
}

id static LiveCaptionsCallDisclosureProvider.shared.getter()
{
  if (qword_F8230 != -1)
  {
    swift_once();
  }

  v1 = static LiveCaptionsCallDisclosureProvider.shared;

  return v1;
}

NSObject *sub_2BB00()
{
  v1 = OBJC_IVAR____TtC19LiveSpeechUIService34LiveCaptionsCallDisclosureProvider____lazy_storage___synth;
  v2 = *(v0 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveCaptionsCallDisclosureProvider____lazy_storage___synth);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveCaptionsCallDisclosureProvider____lazy_storage___synth);
  }

  else
  {
    v4 = sub_2BB60();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

NSObject *sub_2BB60()
{
  sub_B9520();
  v0 = sub_B9510();
  v1 = [objc_opt_self() auxiliarySession];
  v19 = 0;
  v2 = [v1 setCategory:AVAudioSessionCategoryVoiceOver error:&v19];
  v3 = v19;
  if (v2)
  {
    v19 = 0;
    v4 = v3;
    v5 = [v1 setCategoryOptions:3 error:&v19];
    v3 = v19;
    if (v5)
    {
      v19 = 0;
      v6 = v3;
      v7 = [v1 setParticipatesInNowPlayingAppPolicy:0 error:&v19];
      v3 = v19;
      if (v7)
      {
        v19 = 0;
        v8 = v3;
        v9 = [v1 setPreferredMicrophoneInjectionMode:1 error:&v19];
        v3 = v19;
        if (v9)
        {
          v10 = v19;
LABEL_10:
          v18 = v1;
          sub_B93D0();
          sub_B93F0();

          return v0;
        }
      }
    }
  }

  v11 = v3;
  sub_B9170();

  swift_willThrow();
  v12 = sub_BB300();
  result = AXLogLiveTranscription();
  if (result)
  {
    v14 = result;
    if (os_log_type_enabled(result, v12))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&dword_0, v14, v12, "LiveCaptionsCallDisclosureProvider: Failed to set audio session properties to synth: %@", v15, 0xCu);
      sub_C5E8(v16, &qword_FA570);
    }

    else
    {
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t LiveCaptionsCallDisclosureProvider.playCallRecordingStartDiscloser(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_2E50(&qword_F9770);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_BB1A0();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;
  v10 = v2;
  sub_2DDF0(a1);
  sub_2DB84(0, 0, v7, &unk_BF680, v9);

  return sub_C5E8(v7, &qword_F9770);
}

uint64_t sub_2BF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[13] = a4;
  sub_2E50(&qword_F9770);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v7 = sub_BB600();
  v6[18] = v7;
  v6[19] = *(v7 - 8);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v8 = sub_B9400();
  v6[22] = v8;
  v6[23] = *(v8 - 8);
  v6[24] = swift_task_alloc();
  sub_2E50(&qword_F9878);
  v6[25] = swift_task_alloc();
  v9 = sub_2E50(&unk_F9880);
  v6[26] = v9;
  v6[27] = *(v9 - 8);
  v6[28] = swift_task_alloc();
  v10 = sub_2E50(&qword_F9838);
  v6[29] = v10;
  v6[30] = *(v10 - 8);
  v6[31] = swift_task_alloc();
  v11 = sub_B94E0();
  v6[32] = v11;
  v6[33] = *(v11 - 8);
  v6[34] = swift_task_alloc();
  v12 = sub_B93A0();
  v6[35] = v12;
  v6[36] = *(v12 - 8);
  v6[37] = swift_task_alloc();
  v13 = sub_B9390();
  v6[38] = v13;
  v6[39] = *(v13 - 8);
  v6[40] = swift_task_alloc();
  sub_2E50(&qword_F9840);
  v6[41] = swift_task_alloc();
  v14 = sub_B9500();
  v6[42] = v14;
  v6[43] = *(v14 - 8);
  v6[44] = swift_task_alloc();
  v15 = sub_BB610();
  v6[45] = v15;
  v6[46] = *(v15 - 8);
  v6[47] = swift_task_alloc();
  v6[48] = swift_task_alloc();

  return _swift_task_switch(sub_2C398, 0, 0);
}

uint64_t sub_2C398()
{
  v1 = sub_BB7E0();
  v3 = v2;
  sub_BB760();
  v4 = swift_task_alloc();
  *(v0 + 392) = v4;
  *v4 = v0;
  v4[1] = sub_2C474;

  return sub_2F7E8(v1, v3, 0, 0, 1);
}

uint64_t sub_2C474()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v4 = *(*v1 + 368);
  v5 = *(*v1 + 360);
  v2[50] = v0;

  v6 = *(v4 + 8);
  v2[51] = v6;
  v2[52] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  if (v0)
  {
    v7 = sub_2C930;
  }

  else
  {
    v7 = sub_2C5F8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_2C5F8()
{
  sub_BB320();
  v1 = AXLogLiveTranscription();
  if (v1)
  {
    v6 = v1;
    v8 = *(v0 + 320);
    v7 = *(v0 + 328);
    v9 = *(v0 + 304);
    v10 = *(v0 + 312);
    v12 = *(v0 + 288);
    v11 = *(v0 + 296);
    v18 = *(v0 + 280);
    sub_B99F0();

    v13 = sub_B9480();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    (*(v10 + 104))(v8, enum case for TTSSpeechQueue.QueuingBehavior.stop(_:), v9);
    (*(v12 + 104))(v11, enum case for TTSSpeechQueue.IsoPrioritizedBehavior.replace(_:), v18);
    sub_2E50(&qword_F9848);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_BE370;
    sub_B94D0();
    sub_B94C0();
    sub_B94B0();
    *(v0 + 88) = v14;
    sub_30024(&qword_F9850, &type metadata accessor for CoreSynthesizer.Utterance.ReplacementOptions);
    sub_2E50(&qword_F9858);
    sub_2FF5C();
    sub_BB510();
    sub_B94F0();
    v15 = sub_2BB00();
    sub_B9490();

    sub_BB1B0();
    *(v0 + 68) = enum case for CoreSynthesizer.Event.finished(_:);
    v16 = swift_task_alloc();
    *(v0 + 424) = v16;
    *v16 = v0;
    v16[1] = sub_2CA54;
    v1 = *(v0 + 200);
    v4 = *(v0 + 208);
    v5 = v0 + 96;
    v2 = 0;
    v3 = 0;
  }

  else
  {
    __break(1u);
  }

  return _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v1, v2, v3, v4, v5);
}

uint64_t sub_2C930()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2CA54()
{

  if (v0)
  {
    v1 = sub_2D660;
  }

  else
  {
    v1 = sub_2CB64;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_2CB64()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = *(v0 + 240);
    v4 = *(v0 + 248);
    v6 = *(v0 + 232);
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
    (*(v5 + 8))(v4, v6);
    (*(*(v0 + 344) + 8))(*(v0 + 352), *(v0 + 336));

    v7 = *(v0 + 8);

    return v7();
  }

  v9 = *(v0 + 68);
  v10 = *(v0 + 192);
  (*(v3 + 32))(v10, v1, v2);
  v11 = (*(v3 + 88))(v10, v2);
  v12 = *(v0 + 184);
  v13 = *(v0 + 192);
  v14 = *(v0 + 176);
  if (v11 == v9)
  {
    (*(v12 + 96))(*(v0 + 192), v14);
    if (*v13 == 1)
    {
      v15 = *(v0 + 160);
      v16 = *(v0 + 144);
      v17 = *(v0 + 152);
      v18 = sub_BB7E0();
      v20 = v19;
      sub_BB760();
      *(v0 + 72) = v18;
      *(v0 + 80) = v20;
      *(v0 + 56) = 0;
      *(v0 + 48) = 0;
      *(v0 + 64) = 1;
      v21 = sub_30024(&qword_F9868, &type metadata accessor for ContinuousClock);
      sub_BB740();
      sub_30024(&qword_F9870, &type metadata accessor for ContinuousClock.Instant);
      sub_BB620();
      v22 = *(v17 + 8);
      *(v0 + 432) = v22;
      *(v0 + 440) = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v22(v15, v16);
      v23 = swift_task_alloc();
      *(v0 + 448) = v23;
      *v23 = v0;
      v23[1] = sub_2CFAC;
      v24 = *(v0 + 360);
      v25 = *(v0 + 168);

      return dispatch thunk of Clock.sleep(until:tolerance:)(v25, v0 + 48, v24, v21);
    }
  }

  else
  {
    (*(v12 + 8))(*(v0 + 192), v14);
  }

  v26 = swift_task_alloc();
  *(v0 + 424) = v26;
  *v26 = v0;
  v26[1] = sub_2CA54;
  v27 = *(v0 + 200);
  v28 = *(v0 + 208);

  return _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v27, 0, 0, v28, v0 + 96);
}

uint64_t sub_2CFAC()
{
  v2 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    (*(v2 + 432))(*(v2 + 168), *(v2 + 144));
    v3 = sub_2D3E8;
  }

  else
  {
    v4 = *(v2 + 408);
    v5 = *(v2 + 376);
    v6 = *(v2 + 360);
    (*(v2 + 432))(*(v2 + 168), *(v2 + 144));
    v4(v5, v6);
    v3 = sub_2D108;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_2D108()
{
  v1 = v0[14];
  sub_2E9D8();
  if (v1)
  {
    v2 = v0[16];
    v3 = v0[17];
    v5 = v0[14];
    v4 = v0[15];
    v6 = sub_BB1A0();
    v7 = *(v6 - 8);
    (*(v7 + 56))(v3, 1, 1, v6);
    sub_BB170();

    v8 = sub_BB160();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = &protocol witness table for MainActor;
    v9[4] = v5;
    v9[5] = v4;
    sub_57A0(v3, v2, &qword_F9770);
    LODWORD(v2) = (*(v7 + 48))(v2, 1, v6);

    v10 = v0[16];
    if (v2 == 1)
    {
      sub_C5E8(v0[16], &qword_F9770);
    }

    else
    {
      sub_BB190();
      (*(v7 + 8))(v10, v6);
    }

    v11 = v9[2];
    swift_unknownObjectRetain();

    if (v11)
    {
      swift_getObjectType();
      v12 = sub_BB140();
      v14 = v13;
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    sub_C5E8(v0[17], &qword_F9770);
    v15 = swift_allocObject();
    *(v15 + 16) = &unk_BF748;
    *(v15 + 24) = v9;
    if (v14 | v12)
    {
      v0[2] = 0;
      v0[3] = 0;
      v0[4] = v12;
      v0[5] = v14;
    }

    swift_task_create();
  }

  v16 = swift_task_alloc();
  v0[53] = v16;
  *v16 = v0;
  v16[1] = sub_2CA54;
  v17 = v0[25];
  v18 = v0[26];

  return _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v17, 0, 0, v18, v0 + 12);
}

NSObject *sub_2D3E8()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);
  v5 = *(v0 + 208);
  v6 = *(v0 + 216);
  (*(v0 + 408))(*(v0 + 376), *(v0 + 360));
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = sub_BB300();
  result = AXLogLiveTranscription();
  if (result)
  {
    v9 = result;
    if (os_log_type_enabled(result, v7))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&dword_0, v9, v7, "LiveCaptionsCallDisclosureProvider: Playing call recording start disclosure error: %@", v10, 0xCu);
      sub_C5E8(v11, &qword_FA570);
    }

    else
    {
    }

    (*(*(v0 + 344) + 8))(*(v0 + 352), *(v0 + 336));

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    __break(1u);
  }

  return result;
}

NSObject *sub_2D660()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  (*(v0[27] + 8))(v0[28], v0[26]);
  (*(v2 + 8))(v1, v3);
  v4 = sub_BB300();
  result = AXLogLiveTranscription();
  if (result)
  {
    v6 = result;
    if (os_log_type_enabled(result, v4))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&dword_0, v6, v4, "LiveCaptionsCallDisclosureProvider: Playing call recording start disclosure error: %@", v7, 0xCu);
      sub_C5E8(v8, &qword_FA570);
    }

    else
    {
    }

    (*(v0[43] + 8))(v0[44], v0[42]);

    v10 = v0[1];

    return v10();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2D8C0()
{
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_2D910(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24B84;

  return sub_2BF10(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2D9D8()
{
  v0._object = 0x80000000000C49E0;
  v0._countAndFlagsBits = 0xD00000000000001FLL;
  LiveSpeechCaptionsLocString(_:)(v0);
  v2[3] = sub_B9560();
  v2[4] = &protocol witness table for TTSMarkup.SpeechText;
  sub_2FFC0(v2);
  sub_B9570();
  sub_B9540();
  sub_28020(v2);
  sub_B9530();
  return sub_28020(v3);
}

uint64_t sub_2DA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_BB170();
  v5[4] = sub_BB160();
  v7 = sub_BB140();

  return _swift_task_switch(sub_2DB18, v7, v6);
}

uint64_t sub_2DB18()
{
  v1 = *(v0 + 16);

  v1(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2DB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_2E50(&qword_F9770);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_57A0(a3, v22 - v9, &qword_F9770);
  v11 = sub_BB1A0();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_C5E8(v10, &qword_F9770);
  }

  else
  {
    sub_BB190();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_BB140();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_BB010() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
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

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_2DDF0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

Swift::Void __swiftcall LiveCaptionsCallDisclosureProvider.playCallRecordingEnded()()
{
  v1 = sub_2E50(&qword_F9770);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  v4 = sub_BB1A0();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = v0;
  sub_2DB84(0, 0, v3, &unk_BF690, v5);

  sub_C5E8(v3, &qword_F9770);
}

uint64_t sub_2DF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_2E50(&qword_F9838);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v6 = sub_B94E0();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v7 = sub_B93A0();
  v4[10] = v7;
  v4[11] = *(v7 - 8);
  v4[12] = swift_task_alloc();
  v8 = sub_B9390();
  v4[13] = v8;
  v4[14] = *(v8 - 8);
  v4[15] = swift_task_alloc();
  sub_2E50(&qword_F9840);
  v4[16] = swift_task_alloc();
  v9 = sub_B9500();
  v4[17] = v9;
  v4[18] = *(v9 - 8);
  v4[19] = swift_task_alloc();
  v10 = sub_BB610();
  v4[20] = v10;
  v4[21] = *(v10 - 8);
  v4[22] = swift_task_alloc();

  return _swift_task_switch(sub_2E1F4, 0, 0);
}

uint64_t sub_2E1F4()
{
  sub_BB760();
  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  *v1 = v0;
  v1[1] = sub_2E2C0;

  return sub_2F7E8(1000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_2E2C0()
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 160);
  *(*v1 + 192) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_2E784;
  }

  else
  {
    v5 = sub_2E430;
  }

  return _swift_task_switch(v5, 0, 0);
}

id sub_2E430()
{
  sub_BB320();
  result = AXLogLiveTranscription();
  if (result)
  {
    v2 = result;
    v14 = v0[19];
    v3 = v0[16];
    v18 = v0[18];
    v19 = v0[17];
    v4 = v0[14];
    v5 = v0[15];
    v7 = v0[12];
    v6 = v0[13];
    v8 = v0[11];
    v13 = v0[10];
    v15 = v0[5];
    v16 = v0[6];
    v17 = v0[4];
    sub_B99F0();

    v9 = sub_B9480();
    (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
    (*(v4 + 104))(v5, enum case for TTSSpeechQueue.QueuingBehavior.stop(_:), v6);
    (*(v8 + 104))(v7, enum case for TTSSpeechQueue.IsoPrioritizedBehavior.replace(_:), v13);
    sub_2E50(&qword_F9848);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_BE370;
    sub_B94D0();
    sub_B94C0();
    sub_B94B0();
    v0[2] = v10;
    sub_30024(&qword_F9850, &type metadata accessor for CoreSynthesizer.Utterance.ReplacementOptions);
    sub_2E50(&qword_F9858);
    sub_2FF5C();
    sub_BB510();
    sub_B94F0();
    v11 = sub_2BB00();
    sub_B9490();

    (*(v15 + 8))(v16, v17);
    (*(v18 + 8))(v14, v19);

    v12 = v0[1];

    return v12();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2E784()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2E83C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_2E87C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_CA7C;

  return sub_2DF24(a1, v4, v5, v6);
}

uint64_t sub_2E930()
{
  v0._object = 0x80000000000C4970;
  v0._countAndFlagsBits = 0xD00000000000001DLL;
  LiveSpeechCaptionsLocString(_:)(v0);
  v2[3] = sub_B9560();
  v2[4] = &protocol witness table for TTSMarkup.SpeechText;
  sub_2FFC0(v2);
  sub_B9570();
  sub_B9540();
  sub_28020(v2);
  sub_B9530();
  return sub_28020(v3);
}

void sub_2E9D8()
{
  v1 = sub_B91B0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v70 - v6;
  v8 = sub_2E50(&qword_F8388);
  __chkstk_darwin(v8 - 8);
  v10 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v70 - v12;
  v14 = OBJC_IVAR____TtC19LiveSpeechUIService34LiveCaptionsCallDisclosureProvider_session;
  if (*(v0 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveCaptionsCallDisclosureProvider_session))
  {
    sub_BB320();
    v15 = AXLogLiveTranscription();
    if (v15)
    {
      v74 = v15;
      sub_B99F0();
      v16 = v74;

      return;
    }

    __break(1u);
    goto LABEL_32;
  }

  LiveSpeechCaptionsResourceURL(for:fileExtension:)(v70 - v12);
  sub_57A0(v13, v10, &qword_F8388);
  if ((*(v2 + 48))(v10, 1, v1) == 1)
  {
    sub_C5E8(v10, &qword_F8388);
    sub_BB300();
    v17 = AXLogLiveTranscription();
    if (!v17)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v18 = v17;
    sub_B99F0();

LABEL_21:
    sub_C5E8(v13, &qword_F8388);
    return;
  }

  (*(v2 + 32))(v7, v10, v1);
  v19 = [objc_opt_self() auxiliarySession];
  v20 = *(v0 + v14);
  *(v0 + v14) = v19;
  v21 = v19;

  if (!v21)
  {
    sub_BB300();
    v42 = AXLogLiveTranscription();
    if (!v42)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v43 = v42;
    sub_B99F0();
    goto LABEL_20;
  }

  v76 = 0;
  v22 = [v21 setCategory:AVAudioSessionCategoryVoiceOver error:&v76];
  v23 = v76;
  v24 = &qword_F9000;
  if (v22 && (v76 = 0, v25 = v23, v26 = [v21 setCategoryOptions:3 error:&v76], v23 = v76, v26) && (v76 = 0, v27 = v23, v28 = objc_msgSend(v21, "setParticipatesInNowPlayingAppPolicy:error:", 0, &v76), v23 = v76, v28))
  {
    (*(v2 + 16))(v4, v7, v1);
    v29 = objc_allocWithZone(AVAudioPlayer);
    v30 = v23;
    v31 = sub_2F4AC(v4);
    v73 = v21;
    v47 = v31;
    [v31 setNumberOfLoops:0];
    LODWORD(v48) = 1120403456;
    [v47 setVolume:v48];
    [v47 setDelegate:v0];
    v49 = *(v0 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveCaptionsCallDisclosureProvider_player);
    *(v0 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveCaptionsCallDisclosureProvider_player) = v47;
    v50 = v47;

    v51 = [v50 audioSession];
    v76 = 0;
    v52 = [v51 setPreferredMicrophoneInjectionMode:1 error:&v76];

    if (v52)
    {
      v53 = v76;
      v54 = sub_BB320();
      v55 = AXLogLiveTranscription();
      if (!v55)
      {
LABEL_35:
        __break(1u);
        return;
      }

      v56 = v55;
      if (os_log_type_enabled(v55, v54))
      {
        v57 = swift_slowAlloc();
        v72 = v57;
        v74 = swift_slowAlloc();
        v76 = v74;
        *v57 = 136315138;
        v58 = v50;
        v59 = [v58 description];
        LODWORD(v71) = v54;
        v60 = v59;
        v61 = v2;
        v62 = sub_BAFD0();
        v64 = v63;

        v65 = v62;
        v2 = v61;
        v66 = sub_7A1D8(v65, v64, &v76);

        v67 = v72;
        *(v72 + 1) = v66;
        _os_log_impl(&dword_0, v56, v71, "LiveCaptionsCallDisclosureProvider: Starting to play call recording sound %s", v67, 0xCu);
        sub_28020(v74);
      }

      v43 = v73;
      [v50 play];

LABEL_20:
      (*(v2 + 8))(v7, v1);
      goto LABEL_21;
    }

    v68 = v76;
    v69 = sub_B9170();

    swift_willThrow();
    v33 = v69;
    v21 = v73;
    v24 = &qword_F9000;
  }

  else
  {
    v32 = v23;
    v33 = sub_B9170();

    swift_willThrow();
  }

  LODWORD(v74) = sub_BB320();
  v34 = AXLogLiveTranscription();
  if (!v34)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v35 = v34;
  if (os_log_type_enabled(v34, v74))
  {
    v36 = swift_slowAlloc();
    v72 = v2;
    v37 = v36;
    v71 = swift_slowAlloc();
    v76 = v71;
    *v37 = 136315138;
    v75 = v33;
    swift_errorRetain();
    sub_2E50(&unk_F9820);
    v38 = sub_BAFF0();
    v70[1] = v33;
    v40 = sub_7A1D8(v38, v39, &v76);
    v73 = v21;
    v41 = v40;

    *(v37 + 4) = v41;
    _os_log_impl(&dword_0, v35, v74, "LiveCaptionsCallDisclosureProvider: Can't play call recording sound, error %s", v37, 0xCu);
    sub_28020(v71);

    (*(v72 + 1))(v7, v1);
  }

  else
  {

    (*(v2 + 8))(v7, v1);
  }

  sub_C5E8(v13, &qword_F8388);
  v44 = *(v0 + v14);
  *(v0 + v14) = 0;

  v45 = v24[241];
  v46 = *(v0 + v45);
  *(v0 + v45) = 0;
}

id LiveCaptionsCallDisclosureProvider.init()()
{
  *&v0[OBJC_IVAR____TtC19LiveSpeechUIService34LiveCaptionsCallDisclosureProvider____lazy_storage___synth] = 0;
  *&v0[OBJC_IVAR____TtC19LiveSpeechUIService34LiveCaptionsCallDisclosureProvider_session] = 0;
  *&v0[OBJC_IVAR____TtC19LiveSpeechUIService34LiveCaptionsCallDisclosureProvider_player] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LiveCaptionsCallDisclosureProvider();
  return objc_msgSendSuper2(&v2, "init");
}

id LiveCaptionsCallDisclosureProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LiveCaptionsCallDisclosureProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_2F4AC(uint64_t a1)
{
  v2 = v1;
  sub_B9180(__stack_chk_guard);
  v5 = v4;
  v14 = 0;
  v6 = [v2 initWithContentsOfURL:v4 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = sub_B91B0();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    sub_B9170();

    swift_willThrow();
    v12 = sub_B91B0();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

uint64_t sub_2F5F8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2F6F0;

  return v6(a1);
}

uint64_t sub_2F6F0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2F7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_BB600();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_2F8E8, 0, 0);
}

uint64_t sub_2F8E8()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_BB610();
  v5 = sub_30024(&qword_F9868, &type metadata accessor for ContinuousClock);
  sub_BB740();
  sub_30024(&qword_F9870, &type metadata accessor for ContinuousClock.Instant);
  sub_BB620();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_2FA78;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_2FA78()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_2FC34, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_2FC34()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_2FCA0(char a1)
{
  v3 = sub_BB320();
  v4 = AXLogLiveTranscription();
  if (v4)
  {
    v5 = v4;
    if (os_log_type_enabled(v4, v3))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v13 = v7;
      *v6 = 136315138;
      if (a1)
      {
        v8 = 1702195828;
      }

      else
      {
        v8 = 0x65736C6166;
      }

      if (a1)
      {
        v9 = 0xE400000000000000;
      }

      else
      {
        v9 = 0xE500000000000000;
      }

      v10 = sub_7A1D8(v8, v9, &v13);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_0, v5, v3, "LiveCaptionsCallDisclosureProvider: Call recording sound finished playing: %s", v6, 0xCu);
      sub_28020(v7);
    }

    v11 = *(v1 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveCaptionsCallDisclosureProvider_session);
    *(v1 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveCaptionsCallDisclosureProvider_session) = 0;

    v12 = *(v1 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveCaptionsCallDisclosureProvider_player);
    *(v1 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveCaptionsCallDisclosureProvider_player) = 0;
  }

  else
  {
    __break(1u);
  }
}

void sub_2FE04()
{
  v1 = sub_BB300();
  v2 = AXLogLiveTranscription();
  if (v2)
  {
    v3 = v2;
    if (os_log_type_enabled(v2, v1))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v11 = v5;
      *v4 = 136315138;
      swift_errorRetain();
      sub_2E50(&qword_F9830);
      v6 = sub_BAFF0();
      v8 = sub_7A1D8(v6, v7, &v11);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_0, v3, v1, "LiveCaptionsCallDisclosureProvider: Call recording sound error playing: %s", v4, 0xCu);
      sub_28020(v5);
    }

    v9 = *(v0 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveCaptionsCallDisclosureProvider_session);
    *(v0 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveCaptionsCallDisclosureProvider_session) = 0;

    v10 = *(v0 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveCaptionsCallDisclosureProvider_player);
    *(v0 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveCaptionsCallDisclosureProvider_player) = 0;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_2FF5C()
{
  result = qword_F9860;
  if (!qword_F9860)
  {
    sub_5520(&qword_F9858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F9860);
  }

  return result;
}

uint64_t *sub_2FFC0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_30024(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_3006C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_300AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_CA7C;

  return sub_2DA80(a1, v4, v5, v7, v6);
}

uint64_t sub_3016C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_301A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24B84;

  return sub_2F5F8(a1, v4);
}

void sub_3025C()
{
  v0 = sub_BAFA0();
  v1 = [objc_opt_self() bundleWithIdentifier:v0];

  qword_F9890 = v1;
}

uint64_t sub_302CC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x796C6E4F64616572;
  }

  else
  {
    v3 = 0x75706E4972657375;
  }

  if (v2)
  {
    v4 = 0xE900000000000074;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x796C6E4F64616572;
  }

  else
  {
    v5 = 0x75706E4972657375;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE900000000000074;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_BB700();
  }

  return v8 & 1;
}

Swift::Int sub_30378()
{
  sub_BB790();
  sub_BB030();

  return sub_BB7D0();
}

uint64_t sub_30400()
{
  sub_BB030();
}

Swift::Int sub_30474()
{
  sub_BB790();
  sub_BB030();

  return sub_BB7D0();
}

uint64_t sub_304F8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_EF658;
  v8._object = v3;
  v5 = sub_BB6B0(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_30558(uint64_t *a1@<X8>)
{
  v2 = 0x75706E4972657375;
  if (*v1)
  {
    v2 = 0x796C6E4F64616572;
  }

  v3 = 0xE900000000000074;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_3059C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v8 = sub_BA180();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    v12 = objc_allocWithZone(type metadata accessor for _LiveSpeechTextView());
    v13 = sub_311C4(3, (a5 >> 8) & 1, a2, 400.0);
    LODWORD(v14) = 1132068864;
    [v13 setContentCompressionResistancePriority:0 forAxis:v14];
    v15 = v13;
    sub_2E50(&qword_F9A00);
    sub_BA5F0();
    v16 = v21;
    [v15 setDelegate:v21];

    if ((a5 & 1) == 0)
    {

      sub_BB310();
      v17 = sub_BA610();
      sub_B99F0();

      sub_BA170();
      swift_getAtKeyPath();
      sub_24154(a4, 0);
      (*(v9 + 8))(v11, v8);
      LOBYTE(a4) = v20[7];
    }

    if (a4)
    {
      v18 = 0;
    }

    else
    {
      v18 = 2;
    }

    v15[OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView_mode] = v18;
    sub_32D7C();
    return v15;
  }

  else
  {
    type metadata accessor for LiveSpeechStore(0);
    sub_34AB0(&qword_F8390, type metadata accessor for LiveSpeechStore);
    result = sub_B9FA0();
    __break(1u);
  }

  return result;
}

void sub_30808(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  v10 = sub_BA180();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a6 & 0x100) != 0)
  {
    if (a3)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v19 = a3;
      sub_B9B10();

      sub_33664(v20, v28);

      return;
    }
  }

  else
  {
    v26 = v12;
    if (a3)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v15 = a3;
      sub_B9B10();

      v17 = v27;
      v16 = v28;

      v18 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v18 = v17 & 0xFFFFFFFFFFFFLL;
      }

      if (v18)
      {

        *(a1 + OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView_mode) = 1;
        sub_32D7C();
        if (a6)
        {
          goto LABEL_29;
        }

        goto LABEL_24;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_B9B10();

      if (v27 > 1u || v27)
      {
        v21 = sub_BB700();

        if ((v21 & 1) == 0)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_B9B10();

          if (v27 <= 1u && v27)
          {
          }

          else
          {
            v22 = sub_BB700();

            if (v22)
            {

              if (a6)
              {
                goto LABEL_29;
              }

              goto LABEL_24;
            }

            swift_getKeyPath();
            swift_getKeyPath();
            sub_B9B10();

            sub_33664(v24, v28);
          }

          if (a6)
          {
            goto LABEL_29;
          }

LABEL_24:

          sub_BB310();
          v23 = sub_BA610();
          sub_B99F0();

          sub_BA170();
          swift_getAtKeyPath();
          sub_24154(a5, 0);
          (*(v11 + 8))(v14, v26);
          if (v27)
          {
LABEL_26:
            sub_33428();
            return;
          }

LABEL_25:
          *(a1 + OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView_mode) = 2;
          sub_32D7C();
          goto LABEL_26;
        }
      }

      else
      {
      }

      *(a1 + OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView_mode) = 0;
      sub_32D7C();
      if (a6)
      {
LABEL_29:
        if (a5)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  type metadata accessor for LiveSpeechStore(0);
  sub_34AB0(&qword_F8390, type metadata accessor for LiveSpeechStore);
  sub_B9FA0();
  __break(1u);
}

uint64_t sub_30D3C(uint64_t a1)
{
  if (*(v1 + 25))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_3059C(a1, *v1, *(v1 + 8), *(v1 + 16), v2 | *(v1 + 24));
}

void sub_30D68(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 25))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  sub_30808(a1, a2, *v2, *(v2 + 8), *(v2 + 16), v3 | *(v2 + 24));
}

uint64_t sub_30D9C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (*v1)
  {
    v4 = type metadata accessor for LiveSpeechTextView.Coordinator();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR____TtCV19LiveSpeechUIService18LiveSpeechTextView11Coordinator_store] = v2;
    v8.receiver = v5;
    v8.super_class = v4;
    v6 = v2;
    result = objc_msgSendSuper2(&v8, "init");
    *a1 = result;
  }

  else
  {
    type metadata accessor for LiveSpeechStore(0);
    sub_34AB0(&qword_F8390, type metadata accessor for LiveSpeechStore);
    result = sub_B9FA0();
    __break(1u);
  }

  return result;
}

uint64_t sub_30E6C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_3383C();
  if (a2)
  {
    [a5 bounds];
    return v8;
  }

  return a1;
}

uint64_t sub_30EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_344F0();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_30F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_344F0();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_30FA8()
{
  sub_344F0();
  sub_BA410();
  __break(1u);
}

id sub_31010(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

void sub_31074(uint64_t a1)
{
  v2 = [objc_allocWithZone(UILabel) init];
  v3 = objc_opt_self();
  if (qword_F8368 != -1)
  {
    v7 = v3;
    swift_once();
    v3 = v7;
  }

  v4 = [v3 preferredFontDescriptorWithTextStyle:qword_100D98];
  v5 = [v4 fontDescriptorWithSymbolicTraits:2];

  if (v5)
  {
    v6 = [objc_opt_self() fontWithDescriptor:v5 size:0.0];

    [v2 setFont:v6];
    [v2 setAttributedText:*(a1 + OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView_placeholderText)];
    [v2 setUserInteractionEnabled:0];
  }

  else
  {
    __break(1u);
  }
}

char *sub_311C4(uint64_t a1, int a2, void *a3, double a4)
{
  v5 = v4;
  v10 = sub_BB3F0();
  v71 = *(v10 - 8);
  v72 = v10;
  __chkstk_darwin(v10);
  v70 = &v59[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_2E50(&qword_F9A08);
  v68 = *(v12 - 8);
  v69 = v12;
  __chkstk_darwin(v12);
  v66 = &v59[-v13];
  v14 = sub_B99C0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v64 = &v59[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v63 = &v59[-v18];
  __chkstk_darwin(v19);
  v61 = &v59[-v20];
  __chkstk_darwin(v21);
  v73 = &v59[-v22];
  __chkstk_darwin(v23);
  v25 = &v59[-v24];
  __chkstk_darwin(v26);
  v28 = &v59[-v27];
  *&v5[OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView_lastReplayCancellable] = 0;
  *&v5[OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView_cancellables] = &_swiftEmptySetSingleton;
  *&v5[OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView_gradientLayer] = 0;
  *&v5[OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView____lazy_storage___textViewForSizing] = 0;
  *&v5[OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView____lazy_storage___placeholderOverlayLabel] = 0;
  v5[OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView_mode] = 0;
  *&v5[OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView_maxNumberOfLines] = a1;
  *&v5[OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView_maxHeight] = a4;
  v60 = a2;
  v62 = a2 & 1;
  v5[OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView_behavior] = a2 & 1;
  *&v5[OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView_store] = a3;
  swift_getKeyPath();
  swift_getKeyPath();
  v67 = a3;
  sub_B9B10();

  v29 = *(v15 + 104);
  v76 = enum case for LiveSpeechInputMode.keyboard(_:);
  v77 = v15 + 104;
  v75 = v29;
  v29(v25);
  sub_34AB0(&qword_F99E0, &type metadata accessor for LiveSpeechInputMode);
  sub_BB0C0();
  sub_BB0C0();
  if (v78 == v81 && v79 == v82)
  {
    v30 = 1;
  }

  else
  {
    v30 = sub_BB700();
  }

  v31 = *(v15 + 8);
  v31(v25, v14);
  v65 = v15 + 8;
  v74 = v31;
  v31(v28, v14);

  v32 = "AXLiveSpeechAddPhrasePlaceholder";
  if (v30)
  {
    v32 = "AXLiveSpeechTextInputPlaceholder";
  }

  v33._object = ((v32 - 32) | 0x8000000000000000);
  v33._countAndFlagsBits = 0xD000000000000020;
  v34 = LiveSpeechLocString(_:)(v33);
  countAndFlagsBits = v34._countAndFlagsBits;
  object = v34._object;
  if (v60)
  {
    v37 = sub_BB700();

    v38 = v67;
    v39 = v64;
    if ((v37 & 1) == 0)
    {

      countAndFlagsBits = 0;
      object = 0xE000000000000000;
    }
  }

  else
  {

    v38 = v67;
    v39 = v64;
  }

  sub_35DD4(0, &qword_F99D8);
  if (qword_F8380 != -1)
  {
    swift_once();
  }

  sub_31C44(countAndFlagsBits, object, qword_100DC0);
  *&v5[OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView_placeholderText] = v40;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  v41 = v61;
  v75(v61, v76, v14);
  sub_BB0C0();
  sub_BB0C0();
  if (v78 != v81 || (v42 = 0.0, v79 != v82))
  {
    if (sub_BB700())
    {
      v42 = 0.0;
    }

    else
    {
      v42 = 4.0;
    }
  }

  v43 = v74;
  v74(v41, v14);
  v43(v73, v14);

  *&v5[OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView_textViewPadding] = v42;
  v44 = type metadata accessor for _LiveSpeechTextView();
  v80.receiver = v5;
  v80.super_class = v44;
  v45 = objc_msgSendSuper2(&v80, "initWithFrame:textContainer:", 0, 0.0, 0.0, 0.0, 0.0);
  swift_getKeyPath();
  swift_getKeyPath();
  v46 = v45;
  v47 = v63;
  sub_B9B10();

  v75(v39, v76, v14);
  sub_BB0C0();
  sub_BB0C0();
  if (v78 == v81 && v79 == v82)
  {
    v48 = 1;
  }

  else
  {
    v48 = sub_BB700();
  }

  v49 = v39;
  v50 = v74;
  v74(v49, v14);
  v50(v47, v14);

  sub_3469C(v46, v62, v48 & 1);
  v51 = sub_30FF0();
  [v46 addSubview:v51];
  swift_beginAccess();
  sub_2E50(&qword_F9A10);
  v52 = v66;
  sub_B9AE0();
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_D150(&qword_F9A18, &qword_F9A08);
  v53 = v69;
  v54 = sub_B9B50();

  (*(v68 + 8))(v52, v53);
  *&v46[OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView_lastReplayCancellable] = v54;

  v55 = [objc_opt_self() defaultCenter];
  v56 = v70;
  sub_BB400();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_34AB0(&qword_F9A20, &type metadata accessor for NSNotificationCenter.Publisher);
  v57 = v72;
  sub_B9B50();

  (*(v71 + 8))(v56, v57);
  swift_beginAccess();
  sub_B9A80();
  swift_endAccess();

  return v46;
}

void sub_31C44(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_BAFA0();

  sub_2E50(&qword_F99E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_BDB40;
  *(inited + 32) = NSForegroundColorAttributeName;
  v6 = sub_35DD4(0, &qword_F99F0);
  *(inited + 40) = a3;
  *(inited + 64) = v6;
  *(inited + 72) = NSFontAttributeName;
  v7 = objc_opt_self();
  v8 = qword_F8368;
  v9 = NSForegroundColorAttributeName;
  v10 = a3;
  v11 = NSFontAttributeName;
  if (v8 != -1)
  {
    swift_once();
  }

  v12 = [v7 preferredFontDescriptorWithTextStyle:qword_100D98];
  v13 = [v12 fontDescriptorWithSymbolicTraits:2];

  if (v13)
  {
    v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v15 = [objc_opt_self() fontWithDescriptor:v13 size:0.0];

    *(inited + 104) = sub_35DD4(0, &qword_F99F8);
    *(inited + 80) = v15;
    sub_4B74(inited);
    swift_setDeallocating();
    sub_2E50(&qword_F84D0);
    swift_arrayDestroy();
    type metadata accessor for Key(0);
    sub_34AB0(&qword_F8640, type metadata accessor for Key);
    isa = sub_BAF30().super.isa;

    [v14 initWithString:v4 attributes:isa];
  }

  else
  {
    __break(1u);
  }
}

void sub_31ED4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    *(Strong + OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView_mode) = 1;
    sub_32D7C();
  }
}

void sub_31F38()
{
  v0 = sub_B9A10();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B95E0();
  v4 = sub_B9A00();
  v5 = sub_BB320();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "Did receive currentInputModeDidChange. Will update supported locales for current input", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_327D8();
  }
}

void sub_320DC()
{
  v1 = v0;
  v2 = sub_B99C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v18 - v7;
  v9 = type metadata accessor for _LiveSpeechTextView();
  v19.receiver = v0;
  v19.super_class = v9;
  objc_msgSendSuper2(&v19, "layoutSubviews");
  sub_3383C();
  [v0 setScrollEnabled:v10 >= *&v0[OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView_maxNumberOfLines]];
  v11 = *&v0[OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView_store];
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = v11;
  sub_B9B10();

  (*(v3 + 104))(v5, enum case for LiveSpeechInputMode.keyboard(_:), v2);
  sub_34AB0(&qword_F99E0, &type metadata accessor for LiveSpeechInputMode);
  sub_BB0C0();
  sub_BB0C0();
  if (v18[2] == v18[0] && v18[3] == v18[1])
  {
    v13 = *(v3 + 8);
    v13(v5, v2);
    v13(v8, v2);
  }

  else
  {
    sub_BB700();
    v14 = *(v3 + 8);
    v14(v5, v2);
    v14(v8, v2);
  }

  v15 = sub_30FF0();
  [v1 frame];
  [v1 frame];
  sub_35E1C();
  [v15 setFrame:?];

  if ([v1 isScrollEnabled])
  {
    sub_3249C();
  }

  else
  {
    v16 = [v1 layer];
    [v16 setMask:0];

    v17 = *&v1[OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView_gradientLayer];
    *&v1[OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView_gradientLayer] = 0;
  }
}

void sub_3249C()
{
  v1 = OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView_gradientLayer;
  v2 = *&v0[OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView_gradientLayer];
  if (v2 || (v3 = [objc_allocWithZone(CAGradientLayer) init], v4 = *&v0[v1], *&v0[v1] = v3, v4, v5 = objc_msgSend(v0, "layer"), objc_msgSend(v5, "setMask:", *&v0[v1]), v5, (v2 = *&v0[v1]) != 0))
  {
    v19 = v2;
    [v0 bounds];
    [v19 setFrame:?];
    sub_2E50(&unk_F9A40);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_BE370;
    v7 = objc_opt_self();
    v8 = [v7 blackColor];
    v9 = [v8 CGColor];

    type metadata accessor for CGColor(0);
    v11 = v10;
    *(v6 + 56) = v10;
    *(v6 + 32) = v9;
    v12 = [v7 blackColor];
    v13 = [v12 CGColor];

    *(v6 + 88) = v11;
    *(v6 + 64) = v13;
    v14 = [v7 clearColor];
    v15 = [v14 CGColor];

    *(v6 + 120) = v11;
    *(v6 + 96) = v15;
    isa = sub_BB0E0().super.isa;

    [v19 setColors:isa];

    [v0 bounds];
    CGRectGetHeight(v21);
    sub_2E50(&unk_FA5C0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_BF760;
    sub_35DD4(0, &unk_F9A50);
    *(v17 + 32) = sub_BB450(0.0);
    *(v17 + 40) = sub_B9310();
    *(v17 + 48) = sub_BB450(1.0);
    v18 = sub_BB0E0().super.isa;

    [v19 setLocations:v18];

    [v19 setStartPoint:{0.5, 0.0}];
    [v19 setEndPoint:{0.5, 1.0}];
  }
}

uint64_t sub_327D8()
{
  v1 = v0;
  v2 = sub_B92F0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LiveSpeechTextInputSupportedLocales(0);
  __chkstk_darwin(v6);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v43 - v10;
  __chkstk_darwin(v12);
  v14 = v43 - v13;
  swift_storeEnumTagMultiPayload();
  v15 = [v0 textInputMode];
  if (!v15)
  {
    goto LABEL_6;
  }

  v16 = v15;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {

LABEL_6:
    v21 = 0;
    v23 = 0;
    goto LABEL_23;
  }

  v18 = v17;
  v47 = v8;
  v48 = v11;
  v49 = v16;
  v19 = [v17 identifier];
  v50 = v1;
  if (v19)
  {
    v20 = v19;
    v21 = sub_BAFD0();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v24 = [v18 multilingualLanguages];
  if (v24)
  {
    v25 = v24;
    v26 = sub_BB0F0();

    v27 = *(v26 + 16);
    if (v27 >= 2)
    {
      v44 = v21;
      v45 = v23;
      v46 = v6;
      v47 = v14;
      v51 = _swiftEmptyArrayStorage;
      v28 = v26;
      sub_7D448(0, v27, 0);
      v29 = v51;
      v43[1] = v28;
      v30 = v28 + 40;
      do
      {

        sub_B9220();
        v51 = v29;
        v32 = v29[2];
        v31 = v29[3];
        if (v32 >= v31 >> 1)
        {
          sub_7D448(v31 > 1, v32 + 1, 1);
          v29 = v51;
        }

        v29[2] = v32 + 1;
        (*(v3 + 32))(v29 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v32, v5, v2);
        v30 += 16;
        --v27;
      }

      while (v27);
      v14 = v47;
      sub_35D14(v47);

      v39 = v48;
      *v48 = v29;
      swift_storeEnumTagMultiPayload();
      sub_35D70(v39, v14);
      v1 = v50;
      v21 = v44;
      v23 = v45;
      goto LABEL_23;
    }
  }

  v33 = [v18 languageWithRegion];
  if (v33)
  {
    v34 = v21;
    v35 = v33;
    v36 = sub_BAFD0();
    v38 = v37;

    if (v36 == 7107949 && v38 == 0xE300000000000000 || (sub_BB700() & 1) != 0)
    {

      v21 = v34;
      v1 = v50;
    }

    else
    {
      v21 = v34;
      v1 = v50;
      if ((v36 != 0x696A6F6D65 || v38 != 0xE500000000000000) && (sub_BB700() & 1) == 0)
      {
        v42 = v47;
        sub_B9220();

        sub_35D14(v14);
        swift_storeEnumTagMultiPayload();
        sub_35D70(v42, v14);
        goto LABEL_23;
      }
    }

    sub_35D14(v14);
    swift_storeEnumTagMultiPayload();
  }

  else
  {

    v1 = v50;
  }

LABEL_23:
  v40 = *&v1[OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView_store];
  LiveSpeechStore.updateCurrentTextInputMode(identifier:supportedLocales:)(v21, v23, v14);

  return sub_35D14(v14);
}

Swift::Int sub_32CC4()
{
  v1 = *v0;
  sub_BB790();
  sub_BB7A0(v1);
  return sub_BB7D0();
}

Swift::Int sub_32D38()
{
  v1 = *v0;
  sub_BB790();
  sub_BB7A0(v1);
  return sub_BB7D0();
}

id sub_32D7C()
{
  v1 = v0;
  v2 = sub_B99C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v43 - v7;
  if (v0[OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView_behavior])
  {
    v9 = sub_BB700();

    if ((v9 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
  }

  v11 = v1[OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView_mode];
  v12 = sub_30FF0();
  v13 = v12;
  if (!v11)
  {
    [v12 setAlpha:1.0];

    v17 = *&v1[OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView____lazy_storage___placeholderOverlayLabel];
    v18 = *&v1[OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView_store];
    swift_getKeyPath();
    swift_getKeyPath();
    v19 = v17;
    v20 = v18;
    sub_B9B10();

    (*(v3 + 104))(v5, enum case for LiveSpeechInputMode.keyboard(_:), v2);
    sub_34AB0(&qword_F99E0, &type metadata accessor for LiveSpeechInputMode);
    sub_BB0C0();
    sub_BB0C0();
    if (v43[2] == v43[0] && v43[3] == v43[1])
    {
      v21 = *(v3 + 8);
      v21(v5, v2);
      v21(v8, v2);
    }

    else
    {
      v28 = sub_BB700();
      v29 = *(v3 + 8);
      v29(v5, v2);
      v29(v8, v2);

      if ((v28 & 1) == 0)
      {
        v39._object = 0x80000000000C4BF0;
        v39._countAndFlagsBits = 0xD000000000000020;
        LiveSpeechLocString(_:)(v39);
        goto LABEL_25;
      }
    }

    v30 = sub_BAFA0();
    v31._object = 0x80000000000C4C20;
    v31._countAndFlagsBits = 0xD000000000000020;
    LiveSpeechLocString(_:)(v31);
    v32 = sub_BAFA0();

    v33 = sub_BAFA0();
    if (qword_F8238 != -1)
    {
      swift_once();
    }

    v34 = [v1 textInputMode];
    if (!v34 || (v35 = v34, v36 = [v34 primaryLanguage], v35, !v36))
    {
      v36 = 0;
    }

    v37 = AXNSLocalizedStringForLocale();

    if (!v37)
    {
      v38 = 0;
LABEL_26:
      [v19 setText:v38];

      sub_35DD4(0, &qword_F99D8);
      v40 = [objc_opt_self() whiteColor];
      sub_31C44(0, 0xE000000000000000, v40);
      v42 = v41;
      [v1 setAttributedText:v41];

      return [v1 setEditable:1];
    }

    sub_BAFD0();

LABEL_25:
    v38 = sub_BAFA0();

    goto LABEL_26;
  }

  if (v11 == 1)
  {
    [v12 setAlpha:0.0];

    v14 = [objc_opt_self() whiteColor];
    [v1 setTextColor:v14];

    v15 = v1;
    v16 = 1;
  }

  else
  {
    [v12 setAlpha:1.0];

    v22 = *&v1[OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView____lazy_storage___placeholderOverlayLabel];
    v23._countAndFlagsBits = 0xD000000000000023;
    v23._object = 0x80000000000C4BC0;
    LiveSpeechLocString(_:)(v23);
    v24 = sub_BAFA0();

    [v22 setText:v24];

    sub_35DD4(0, &qword_F99D8);
    v25 = [objc_opt_self() whiteColor];
    sub_31C44(0, 0xE000000000000000, v25);
    v27 = v26;
    [v1 setAttributedText:v26];

    v15 = v1;
    v16 = 0;
  }

  return [v15 setEditable:v16];
}

void sub_33428()
{
  v1 = v0[OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView_mode];
  v2 = [v0 text];
  if (v2)
  {
    v3 = v2;
    v4 = sub_BAFD0();
    v6 = v5;

    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v9 = *&v0[OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView_store];
      swift_getKeyPath();
      swift_getKeyPath();
      v10 = v9;
      sub_B9B10();

      v11 = HIBYTE(v17) & 0xF;
      if ((v17 & 0x2000000000000000) == 0)
      {
        v11 = *v16 & 0xFFFFFFFFFFFFLL;
      }

      v8 = v11 == 0;
    }

    v12 = *&v0[OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView_store];
    swift_getKeyPath();
    swift_getKeyPath();
    v13 = v12;
    sub_B9B10();

    if (v16[0] > 1u || v16[0])
    {
      v14 = sub_BB700();
    }

    else
    {
      v14 = 1;
    }

    v15 = [objc_opt_self() activeKeyboard];
    [v15 setReturnKeyEnabled:(v1 == 1) & !v8 & v14];
  }

  else
  {
    __break(1u);
  }
}

void sub_33664(uint64_t a1, uint64_t a2)
{
  v4 = sub_30FF0();
  [v4 setAlpha:0.0];

  v5 = *&v2[OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView_store];
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v5;
  sub_B9B10();

  v7 = sub_34AF8(v16, v17, v18, v19);

  [v2 setAttributedText:v7];

  if (a2)
  {
    v8 = [v2 attributedText];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 string];

      v11 = sub_BAFD0();
      v13 = v12;

      sub_2E50(&qword_F9A28);
      sub_D150(&unk_F9A30, &qword_F9A28);
      sub_B320();
      v14 = sub_BB4A0();
      [v2 scrollRangeToVisible:{v14, v15, v11, v13}];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_3383C()
{
  v1 = v0;
  v2 = sub_30FD0();
  v3 = [v0 text];
  if (!v3 || (v4 = v3, v5 = sub_BAFD0(), v7 = v6, v4, v8 = sub_5FA30(v5, v7), v10 = v9, , !v10))
  {

    v10 = 0xE100000000000000;
    v8 = 65;
  }

  sub_35DD4(0, &qword_F99D8);
  v11 = [objc_opt_self() tertiaryLabelColor];
  sub_31C44(v8, v10, v11);
  v13 = v12;
  [v2 setAttributedText:v12];

  [v1 bounds];
  [v2 sizeThatFits:{v14, INFINITY}];
  v15 = OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView_textViewPadding;
  v17 = v16 - *&v1[OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView_textViewPadding];
  v18 = [v1 attributedText];
  [v2 setAttributedText:v18];

  [v1 bounds];
  [v2 sizeThatFits:{v19, INFINITY}];
  v21 = v20 - *&v1[v15];
  v22 = *&v1[OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView_maxHeight];

  if (v22 >= v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  v24 = ceil(v23 / v17);
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v24 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
  }
}

id sub_33AA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _LiveSpeechTextView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_33BA0(void *a1)
{
  v3 = OBJC_IVAR____TtCV19LiveSpeechUIService18LiveSpeechTextView11Coordinator_store;
  v4 = *(v1 + OBJC_IVAR____TtCV19LiveSpeechUIService18LiveSpeechTextView11Coordinator_store);
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v4;
  sub_B9B10();

  v6 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v6 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    sub_35DD4(0, &qword_F99D8);
    v7 = *(v1 + v3);
    swift_getKeyPath();
    swift_getKeyPath();
    v8 = v7;
    sub_B9B10();

    v9 = [objc_opt_self() whiteColor];
    sub_31C44(v13, v14, v9);
    v11 = v10;
    [a1 setAttributedText:v10];
  }

  type metadata accessor for _LiveSpeechTextView();
  result = swift_dynamicCastClass();
  if (result)
  {
    sub_33428();
    return sub_327D8();
  }

  return result;
}

id sub_33E18(void *a1)
{
  v3 = [objc_opt_self() sharedInstance];
  [v3 userEventOccurred];

  v4 = *(v1 + OBJC_IVAR____TtCV19LiveSpeechUIService18LiveSpeechTextView11Coordinator_store);
  result = [a1 attributedText];
  if (result)
  {
    v6 = result;
    v7 = [result string];

    sub_BAFD0();
    if (sub_BB040() >= 2001)
    {
      sub_6814C(2000);

      sub_BB020();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    return sub_B9B20();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id LiveSpeechStore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for LiveSpeechCaptionsWindowState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LiveSpeechCaptionsWindowState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LiveSpeechCaptionsCallManager.Event(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

uint64_t storeEnumTagSinglePayload for LiveSpeechCaptionsCallManager.Event(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_34358(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_3436C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 26))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_343C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_34438()
{
  result = qword_F99B8;
  if (!qword_F99B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F99B8);
  }

  return result;
}

unint64_t sub_34490()
{
  result = qword_F99C0;
  if (!qword_F99C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F99C0);
  }

  return result;
}

unint64_t sub_344F0()
{
  result = qword_F99C8;
  if (!qword_F99C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F99C8);
  }

  return result;
}

uint64_t sub_34580@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  *a1 = v3;
  return result;
}

uint64_t sub_34610(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_B9B20();
}

void sub_3469C(void *a1, char a2, char a3)
{
  v6 = objc_opt_self();
  v7 = [v6 whiteColor];
  [a1 setTintColor:v7];

  if (_UISolariumEnabled())
  {
    v24 = [v6 secondarySystemFillColor];
    if ((a3 & 1) == 0)
    {
LABEL_3:
      v8 = v24;
      goto LABEL_6;
    }
  }

  else
  {
    v9 = [v6 whiteColor];
    v24 = [v9 colorWithAlphaComponent:0.12];

    if ((a3 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v8 = [v6 clearColor];
LABEL_6:
  v10 = v8;
  [a1 setBackgroundColor:v8];

  [a1 setScrollEnabled:0];
  v11 = objc_opt_self();
  if (qword_F8368 != -1)
  {
    v23 = v11;
    swift_once();
    v11 = v23;
  }

  v12 = [v11 preferredFontDescriptorWithTextStyle:qword_100D98];
  v13 = [v12 fontDescriptorWithSymbolicTraits:2];

  if (!v13)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = 0.0;
  v15 = [objc_opt_self() fontWithDescriptor:v13 size:0.0];

  [a1 setFont:v15];
  [a1 setEditable:(a2 & 1) == 0];
  [a1 setSelectable:(a2 & 1) == 0];
  [a1 setUserInteractionEnabled:(a2 & 1) == 0];
  if (a3)
  {
    [a1 setTextContainerInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    v16 = 124;
  }

  else
  {
    v17 = [a1 layer];
    [v17 setCornerRadius:8.0];

    [a1 setTextContainerInset:{8.0, 0.0, 8.0, 0.0}];
    v14 = 12.0;
    v16 = 9;
  }

  [a1 setReturnKeyType:v16];
  v18 = [a1 textContainer];
  [v18 setLineFragmentPadding:v14];

  [a1 setAutocapitalizationType:2];
  v19 = [a1 textInputTraits];
  if (!v19)
  {
    goto LABEL_18;
  }

  v20 = v19;
  [v19 setInlineCompletionType:1];

  v21 = [a1 textInputTraits];
  if (!v21)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v22 = v21;
  [v21 setForceDisableDictation:1];

  [a1 setEnablesReturnKeyAutomatically:0];
}

uint64_t sub_34A68()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_34AB0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_34AF8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2;
  if (!a2)
  {
    return v4;
  }

  sub_BB0A0();
  sub_BB0A0();
  v7 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v8 = 7;
  if (((v4 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v8 = 11;
  }

  v9 = v8 | (v7 << 16);
  v10 = 4 * v7;
  if (v10 <= a4 >> 14)
  {
    result = v9;
  }

  else
  {
    result = a4;
  }

  if (v10 >= result >> 14)
  {
    sub_BB0A0();
    v4 = [objc_allocWithZone(NSMutableAttributedString) init];
    sub_35DD4(0, &qword_F99D8);
    v12 = sub_BB020();
    v14 = v13;

    v15 = objc_opt_self();
    sub_31C44(v12, v14, [v15 tertiaryLabelColor]);
    v17 = v16;
    [v4 appendAttributedString:v16];

    v18 = sub_BB020();
    v20 = v19;

    sub_31C44(v18, v20, [v15 whiteColor]);
    v22 = v21;
    [v4 appendAttributedString:v21];

    v23 = sub_BB020();
    v25 = v24;

    sub_31C44(v23, v25, [v15 tertiaryLabelColor]);
    v27 = v26;
    [v4 appendAttributedString:v26];

    return v4;
  }

  __break(1u);
  return result;
}

id sub_34D6C(uint64_t a1)
{
  v2 = sub_B99C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v16 - v7;
  v9 = [objc_allocWithZone(UITextView) initWithFrame:0 textContainer:{0.0, 0.0, 0.0, 0.0}];
  v10 = *(a1 + OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView_store);
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = v10;
  sub_B9B10();

  (*(v3 + 104))(v5, enum case for LiveSpeechInputMode.keyboard(_:), v2);
  sub_34AB0(&qword_F99E0, &type metadata accessor for LiveSpeechInputMode);
  sub_BB0C0();
  sub_BB0C0();
  if (v16[2] == v16[0] && v16[3] == v16[1])
  {
    v12 = *(v3 + 8);
    v12(v5, v2);
    v12(v8, v2);

    v13 = 1;
  }

  else
  {
    v13 = sub_BB700();
    v14 = *(v3 + 8);
    v14(v5, v2);
    v14(v8, v2);
  }

  sub_3469C(v9, *(a1 + OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView_behavior), v13 & 1);
  return v9;
}

void sub_35024()
{
  *(v0 + OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView_lastReplayCancellable) = 0;
  *(v0 + OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView_cancellables) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView_gradientLayer) = 0;
  *(v0 + OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView____lazy_storage___textViewForSizing) = 0;
  *(v0 + OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView____lazy_storage___placeholderOverlayLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView_mode) = 0;
  sub_BB640();
  __break(1u);
}

void sub_350D0(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_B9250();
  v95 = *(v6 - 8);
  v96 = v6;
  __chkstk_darwin(v6);
  v8 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_B95B0();
  v97 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_B99C0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v98 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v89 - v16;
  __chkstk_darwin(v18);
  v20 = &v89 - v19;
  type metadata accessor for _LiveSpeechTextView();
  v21 = swift_dynamicCastClass();
  if (v21)
  {
    v99 = v13;
    v22 = v21;
    v100 = a1;
    v102 = v22;
    v23 = [v22 attributedText];
    if (v23)
    {
      v24 = v23;

      if ((a2 != 10 || a3 != 0xE100000000000000) && (sub_BB700() & 1) == 0)
      {
        v37 = OBJC_IVAR____TtCV19LiveSpeechUIService18LiveSpeechTextView11Coordinator_store;
        v38 = v101;
        v39 = *(v101 + OBJC_IVAR____TtCV19LiveSpeechUIService18LiveSpeechTextView11Coordinator_store);
        swift_getKeyPath();
        swift_getKeyPath();
        v40 = v39;
        sub_B9B10();

        v25 = v100;
        if (v105 || v106 != 0xE000000000000000)
        {
          v41 = sub_BB700();

          if ((v41 & 1) == 0)
          {

            v102[OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView_mode] = 1;
            sub_32D7C();
LABEL_42:
            sub_33428();

            return;
          }
        }

        else
        {
        }

        v102[OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView_mode] = 1;
        sub_32D7C();
        v42 = *(v38 + v37);
        v43 = sub_BB040();

        if (v43 >= 2001)
        {
          sub_6814C(2000);

          a2 = sub_BB020();
          a3 = v44;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        v105 = a2;
        v106 = a3;
        sub_B9B20();
        sub_35DD4(0, &qword_F99D8);
        v45 = [objc_opt_self() whiteColor];
        sub_31C44(0, 0xE000000000000000, v45);
        v47 = v46;
        [v102 setAttributedText:v46];

        goto LABEL_42;
      }

      v25 = v100;

      if (v102[OBJC_IVAR____TtC19LiveSpeechUIService19_LiveSpeechTextView_mode] != 1)
      {
        goto LABEL_42;
      }

      v26 = v101;
      v94 = OBJC_IVAR____TtCV19LiveSpeechUIService18LiveSpeechTextView11Coordinator_store;
      v27 = *(v101 + OBJC_IVAR____TtCV19LiveSpeechUIService18LiveSpeechTextView11Coordinator_store);
      swift_getKeyPath();
      swift_getKeyPath();
      v28 = v27;
      sub_B9B10();

      v30 = v105;
      v29 = v106;

      v31 = HIBYTE(v29) & 0xF;
      if ((v29 & 0x2000000000000000) == 0)
      {
        v31 = v30 & 0xFFFFFFFFFFFFLL;
      }

      if (!v31)
      {
LABEL_41:
        v25 = v100;
        goto LABEL_42;
      }

      v32 = *(v26 + v94);
      swift_getKeyPath();
      swift_getKeyPath();
      v33 = v32;
      sub_B9B10();

      v35 = v99 + 104;
      v34 = *(v99 + 104);
      v92 = enum case for LiveSpeechInputMode.keyboard(_:);
      v91 = v34;
      v34(v17);
      sub_34AB0(&qword_F99E0, &type metadata accessor for LiveSpeechInputMode);
      sub_BB0C0();
      sub_BB0C0();
      v93 = v35;
      v89 = v8;
      if (v105 == v103 && v106 == v104)
      {
        v36 = 1;
      }

      else
      {
        v36 = sub_BB700();
      }

      v48 = v99 + 8;
      v49 = *(v99 + 8);
      v49(v17, v12);
      v99 = v48;
      v90 = v49;
      v49(v20, v12);

      if ((v36 & 1) == 0)
      {
        v53 = v101;
        v52 = v94;
        v59 = *(v101 + v94);
        swift_getKeyPath();
        swift_getKeyPath();
        v60 = v59;
        sub_B9B10();

        v61 = *(v53 + v52);
        if (v105 == 1)
        {
          v62 = v61;
          sub_6BA08();

          v63 = *(v53 + v52);
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v105) = 0;
          v64 = v63;
          sub_B9B20();
        }

        else
        {
          swift_getKeyPath();
          swift_getKeyPath();
          v69 = v61;
          sub_B9B10();

          v70 = [v102 textInputMode];
          if (!v70)
          {
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

          v71 = v70;
          v72 = [v70 primaryLanguage];

          if (!v72)
          {
LABEL_47:
            __break(1u);
            return;
          }

          sub_BAFD0();

          sub_6BE38();
        }

        v73 = *(v53 + v52);
        swift_getKeyPath();
LABEL_40:
        swift_getKeyPath();
        LOBYTE(v105) = 0;
        v86 = v73;
        sub_B9B20();
        v87 = *(v53 + v52);
        swift_getKeyPath();
        swift_getKeyPath();
        v105 = 0;
        v106 = 0xE000000000000000;
        v88 = v87;
        sub_B9B20();
        goto LABEL_41;
      }

      v50 = v97;
      (*(v97 + 104))(v11, enum case for AccessibilityFeatureFlags.LiveSpeechLanguageAwareness(_:), v9);
      v51 = sub_B95A0();
      (*(v50 + 8))(v11, v9);
      v52 = v94;
      if (v51)
      {
        v53 = v101;
        v54 = *(v101 + v94);
        v55 = v89;
        sub_6B144(v89);

        v56 = sub_B9240();
        v58 = v57;
        (*(v95 + 8))(v55, v96);
      }

      else
      {
        v65 = [v102 textInputMode];
        v53 = v101;
        if (v65 && (v66 = v65, v67 = [v65 primaryLanguage], v66, v67))
        {
          v56 = sub_BAFD0();
          v58 = v68;
        }

        else
        {
          v56 = 0;
          v58 = 0;
        }
      }

      v74 = *(v53 + v52);
      swift_getKeyPath();
      swift_getKeyPath();
      v75 = v74;
      sub_B9B10();

      v76 = v105;
      v77 = v106;
      v78 = v98;
      v91(v98, v92, v12);
      LiveSpeechStore.commitTextToSpeechQueue(_:mode:preferredSpeechLanguage:interruptCurrentQueue:)(v76, v77, v78, v56, v58, 0);

      v90(v78, v12);
      v79 = *(v53 + v52);
      swift_getKeyPath();
      swift_getKeyPath();
      v80 = v79;
      sub_B9B10();

      v82 = v105;
      v81 = v106;
      v83 = [v102 textInputMode];
      if (v83)
      {
        v84 = v83;
        v85 = [v83 primaryLanguage];

        if (v85)
        {
          sub_BAFD0();

          sub_6B6D8(v82, v81);

          v73 = *(v53 + v52);
          swift_getKeyPath();
          goto LABEL_40;
        }

        goto LABEL_45;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }
}

uint64_t sub_35D14(uint64_t a1)
{
  v2 = type metadata accessor for LiveSpeechTextInputSupportedLocales(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_35D70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveSpeechTextInputSupportedLocales(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_35DD4(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_35E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2E50(&qword_F9AC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 64);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_35F10(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_2E50(&qword_F9AC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 64);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for LiveSpeechCaptionsPipView()
{
  result = qword_F9B20;
  if (!qword_F9B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3600C()
{
  sub_36284(319, &qword_F9B30, &type metadata for CGFloat, &type metadata accessor for Binding);
  if (v0 <= 0x3F)
  {
    sub_36338(319, &qword_F9B38, type metadata accessor for CGSize, &type metadata accessor for Binding);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGRect(319);
      if (v2 <= 0x3F)
      {
        sub_21020();
        if (v3 <= 0x3F)
        {
          sub_36338(319, &unk_F8B98, type metadata accessor for CGSize, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            sub_36284(319, &qword_F88B0, &type metadata for Bool, &type metadata accessor for State);
            if (v5 <= 0x3F)
            {
              sub_362D4();
              if (v6 <= 0x3F)
              {
                sub_36338(319, &qword_F9B48, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for ForeheadWindow();
                  if (v8 <= 0x3F)
                  {
                    sub_36338(319, &unk_F9B50, &type metadata accessor for AnyCancellable, &type metadata accessor for Optional);
                    if (v9 <= 0x3F)
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
  }
}

void sub_36284(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_362D4()
{
  if (!qword_F9B40)
  {
    sub_5520(&qword_F9020);
    v0 = sub_BAC00();
    if (!v1)
    {
      atomic_store(v0, &qword_F9B40);
    }
  }
}

void sub_36338(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_363B8(uint64_t result, double a2, double a3, double a4)
{
  if (qword_F8240 != -1)
  {
    v5 = result;
    v6 = a4;
    v7 = a2;
    swift_once();
    result = v5;
    a2 = v7;
    a4 = v6;
  }

  if (result != 3)
  {
    if (result == 2)
    {
      return result;
    }

    if (result)
    {
      goto LABEL_12;
    }
  }

  if (a4 * 0.5 >= a2 && result != 2)
  {
LABEL_12:
    if (qword_F8250 != -1)
    {
      return swift_once();
    }
  }

  return result;
}

uint64_t sub_364F0()
{
  result = AXDeviceIsPad();
  v1 = 52.0;
  if (result)
  {
    v1 = 64.0;
  }

  v2 = 78.0;
  if (result)
  {
    v2 = 96.0;
  }

  qword_100BF0 = *&v1;
  qword_100BF8 = *&v2;
  return result;
}

double sub_36544()
{
  if (qword_F8240 != -1)
  {
    swift_once();
  }

  result = *&qword_100BF0 / 3.0;
  *&qword_100C00 = *&qword_100BF0 / 3.0;
  return result;
}

double sub_365A4()
{
  if (qword_F8248 != -1)
  {
    swift_once();
  }

  result = *&qword_100C00;
  qword_100C08 = qword_100C00;
  return result;
}

uint64_t sub_365FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v90 = a1;
  v3 = type metadata accessor for LiveSpeechCaptionsPipView();
  v74 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v92 = v4;
  v5 = (&v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_BA480();
  __chkstk_darwin(v6);
  v76 = sub_B9C60();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_2E50(&qword_F9BB8);
  v77 = *(v79 - 8);
  __chkstk_darwin(v79);
  v10 = &v73 - v9;
  v85 = sub_2E50(&qword_F9BC0);
  v81 = *(v85 - 8);
  __chkstk_darwin(v85);
  v78 = &v73 - v11;
  v12 = sub_2E50(&qword_F9BC8);
  __chkstk_darwin(v12);
  v14 = (&v73 - v13);
  v84 = sub_2E50(&qword_F9BD0);
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v80 = &v73 - v15;
  v86 = sub_2E50(&qword_F9BD8);
  __chkstk_darwin(v86);
  v82 = &v73 - v16;
  v89 = sub_2E50(&qword_F9BE0);
  __chkstk_darwin(v89);
  v87 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v88 = &v73 - v19;
  *v14 = sub_BADE0();
  v14[1] = v20;
  v21 = sub_2E50(&qword_F9BE8);
  sub_37404(v2, v14 + *(v21 + 44));
  if (qword_F8240 != -1)
  {
    swift_once();
  }

  sub_BADE0();
  sub_B9CF0();
  v22 = (v14 + *(sub_2E50(&qword_F9BF0) + 36));
  v23 = v98;
  *v22 = v97;
  v22[1] = v23;
  v22[2] = v99;
  *(v14 + *(v12 + 36)) = 0;
  sub_BA570();
  sub_B9C20();
  sub_3A51C(v2, v5);
  v24 = v2;
  v91 = v2;
  v73 = v14;
  v25 = (*(v74 + 80) + 16) & ~*(v74 + 80);
  v74 = v12;
  v26 = swift_allocObject();
  sub_3A584(v5, v26 + v25);
  sub_3B268(&qword_F9BF8, &type metadata accessor for DragGesture);
  sub_3B268(&qword_F9C00, &type metadata accessor for DragGesture.Value);
  v27 = v76;
  sub_BAD00();

  (*(v75 + 8))(v8, v27);
  sub_3A51C(v24, v5);
  v28 = swift_allocObject();
  sub_3A584(v5, v28 + v25);
  sub_D150(&qword_F9C08, &qword_F9BB8);
  v29 = v78;
  v30 = v79;
  sub_BACF0();

  (*(v77 + 8))(v10, v30);
  sub_B9C80();
  v31 = sub_3A664();
  v32 = sub_D150(&qword_F9C40, &qword_F9BC0);
  v33 = v80;
  v34 = v74;
  v35 = v85;
  v36 = v73;
  sub_BA9F0();
  v81[1](v29, v35);
  sub_C5E8(v36, &qword_F9BC8);
  sub_3A51C(v91, v5);
  v37 = swift_allocObject();
  v79 = v25;
  v81 = v5;
  sub_3A584(v5, v37 + v25);
  v93 = v34;
  v94 = v35;
  v95 = v31;
  v96 = v32;
  swift_getOpaqueTypeConformance2();
  v38 = v82;
  v39 = v84;
  sub_BA860();

  (*(v83 + 8))(v33, v39);
  v40 = objc_opt_self();
  v41 = [v40 defaultCenter];
  if (qword_F82B8 != -1)
  {
    swift_once();
  }

  v42 = sub_2E50(&qword_F9C48);
  sub_BB400();

  v43 = v91;
  v44 = v81;
  sub_3A51C(v91, v81);
  v45 = v79;
  v46 = swift_allocObject();
  sub_3A584(v44, v46 + v45);
  v47 = (v38 + *(v42 + 56));
  *v47 = sub_3A83C;
  v47[1] = v46;
  v48 = [v40 defaultCenter];
  if (qword_F8348 != -1)
  {
    swift_once();
  }

  v49 = sub_2E50(&qword_F9C50);
  sub_BB400();

  sub_3A51C(v43, v44);
  v50 = swift_allocObject();
  sub_3A584(v44, v50 + v45);
  v51 = (v38 + *(v49 + 56));
  *v51 = sub_3B2EC;
  v51[1] = v50;
  v52 = [v40 defaultCenter];
  v53 = sub_2E50(&qword_F9C58);
  sub_BB400();

  sub_3A51C(v43, v44);
  v54 = swift_allocObject();
  sub_3A584(v44, v54 + v45);
  v55 = (v38 + *(v53 + 56));
  *v55 = sub_3A8A4;
  v55[1] = v54;
  v56 = [v40 defaultCenter];
  if (qword_F82D8 != -1)
  {
    swift_once();
  }

  v57 = sub_2E50(&qword_F9C60);
  sub_BB400();

  sub_3A51C(v43, v44);
  v58 = swift_allocObject();
  sub_3A584(v44, v58 + v45);
  v59 = (v38 + *(v57 + 56));
  *v59 = sub_3A940;
  v59[1] = v58;
  sub_3A51C(v43, v44);
  v60 = swift_allocObject();
  sub_3A584(v44, v60 + v45);
  v61 = (v38 + *(sub_2E50(&qword_F9C68) + 36));
  *v61 = sub_3A958;
  v61[1] = v60;
  v61[2] = 0;
  v61[3] = 0;
  sub_3A51C(v43, v44);
  v62 = swift_allocObject();
  sub_3A584(v44, v62 + v45);
  v63 = (v38 + *(v86 + 36));
  *v63 = 0;
  v63[1] = 0;
  v63[2] = sub_3A9B4;
  v63[3] = v62;
  v93 = sub_B9760();
  v94 = v64;
  sub_B320();
  v65 = sub_BA800();
  v67 = v66;
  v69 = v68;
  sub_3AA14();
  v70 = v87;
  sub_BA8A0();
  sub_C004(v65, v67, v69 & 1);

  sub_C5E8(v38, &qword_F9BD8);
  v71 = v88;
  sub_B9E80();
  sub_C5E8(v70, &qword_F9BE0);
  sub_B9ED0();
  return sub_C5E8(v71, &qword_F9BE0);
}

uint64_t sub_37404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  v23 = sub_BA2D0();
  v22[0] = *(v23 - 8);
  __chkstk_darwin(v23);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2E50(&qword_F9C98);
  __chkstk_darwin(v5 - 8);
  v7 = v22 - v6;
  v8 = sub_BAB70();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v12 = *(a1 + 160);
    LOBYTE(v28[0]) = *(a1 + 152);
    *(&v28[0] + 1) = v12;
    sub_2E50(&qword_F96C8);
    sub_BABD0();
  }

  sub_BAB80();
  (*(v9 + 104))(v11, enum case for Image.ResizingMode.stretch(_:), v8);
  sub_BABA0();

  (*(v9 + 8))(v11, v8);
  v13 = *(a1 + 160);
  LOBYTE(v28[0]) = *(a1 + 152);
  *(&v28[0] + 1) = v13;
  sub_2E50(&qword_F96C8);
  sub_BABD0();
  v14 = 1;
  if ((v24 & 1) == 0)
  {
    sub_BA340();
    v14 = 0;
  }

  v15 = sub_BA350();
  (*(*(v15 - 8) + 56))(v7, v14, 1, v15);
  v16 = sub_BAB90();

  sub_C5E8(v7, &qword_F9C98);
  sub_378B0();
  sub_378B0();
  sub_BADE0();
  sub_B9CF0();
  v31 = 1;
  *&v30[6] = v32;
  *&v30[22] = v33;
  *&v30[38] = v34;
  v17 = sub_37974();
  v18 = sub_378B0() / 10.0;
  v19 = sub_BAAF0();
  KeyPath = swift_getKeyPath();
  v24 = v16;
  LOWORD(v25[0]) = 1;
  *(v25 + 2) = *v30;
  *(&v25[1] + 2) = *&v30[16];
  *(&v25[2] + 2) = *&v30[32];
  *&v25[3] = *&v30[46];
  *(&v25[3] + 1) = v17;
  *&v26 = v18;
  *(&v26 + 1) = KeyPath;
  v27 = v19;
  sub_BA2B0();
  sub_2E50(&qword_F9CA0);
  sub_3AF54();
  sub_BA890();
  (*(v22[0] + 8))(v4, v23);
  v28[4] = v25[3];
  v28[5] = v26;
  v29 = v27;
  v28[0] = v24;
  v28[1] = v25[0];
  v28[2] = v25[1];
  v28[3] = v25[2];
  return sub_C5E8(v28, &qword_F9CA0);
}

double sub_378B0()
{
  if ((*v0 & 1) == 0)
  {
    v1 = qword_F8240;
LABEL_6:
    v2 = 1.5;
    if (v1 == -1)
    {
      return *&qword_100BF0 / v2;
    }

    goto LABEL_4;
  }

  sub_2E50(&qword_F96C8);
  sub_BABD0();
  v1 = qword_F8240;
  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

  v2 = 1.8;
  if (qword_F8240 != -1)
  {
LABEL_4:
    swift_once();
  }

  return *&qword_100BF0 / v2;
}

double sub_37974()
{
  v1 = 0.0;
  if (*v0 == 1)
  {
    sub_2E50(&qword_F96C8);
    sub_BABD0();
    if (v4)
    {
      sub_BABD0();
      if (v4)
      {
        v2 = 1.8;
      }

      else
      {
        v2 = 1.5;
      }

      if (qword_F8240 != -1)
      {
        swift_once();
      }

      return *&qword_100BF0 / v2 / -15.0;
    }
  }

  return v1;
}

uint64_t sub_37A6C(uint64_t a1)
{
  v2 = v1;
  *&v4 = COERCE_DOUBLE(sub_B9E70());
  v111 = *(v4 - 8);
  height = *&v4;
  __chkstk_darwin(v4);
  v110 = &v92[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v109 = &v92[-v7];
  v8 = sub_B9C50();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v92[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_B9A10();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v105 = &v92[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v92[-v16];
  sub_B95F0();
  v18 = *(v9 + 16);
  v108 = a1;
  v18(v11, a1, v8);
  v19 = sub_B9A00();
  v20 = sub_BB2F0();
  v21 = os_log_type_enabled(v19, v20);
  v107 = v12;
  v106 = v13;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v104 = v2;
    v24 = v23;
    v118[0] = v23;
    *v22 = 136315138;
    sub_B9C30();
    v113 = v25;
    v114 = v26;
    type metadata accessor for CGSize(0);
    v27 = sub_BAFF0();
    v29 = v28;
    (*(v9 + 8))(v11, v8);
    v30 = sub_7A1D8(v27, v29, v118);

    *(v22 + 4) = v30;
    _os_log_impl(&dword_0, v19, v20, "Pip drag.translation: %s", v22, 0xCu);
    sub_28020(v24);
    v2 = v104;

    v31 = *(v106 + 8);
    (v31)(v17, v107);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
    v31 = *(v13 + 8);
    (v31)(v17, v12);
  }

  v32 = v2[2];
  v33 = *(v2 + 3);
  v113 = v2[1];
  v114 = v32;
  v115 = v33;
  sub_2E50(&qword_F9C90);
  v34 = sub_BAC80();
  if (*v118 < 1.0)
  {
    __chkstk_darwin(v34);
    *&v92[-16] = v2;
    sub_BAE30();
    sub_B9D80();
  }

  sub_B9C30();
  v36 = *&v35;
  v38 = *&v37;
  v118[0] = v35;
  v118[1] = v37;
  type metadata accessor for LiveSpeechCaptionsPipView();
  v39 = v109;
  sub_B5C08(v109);
  v41 = v110;
  v40 = v111;
  v42 = height;
  (*(*&v111 + 104))(v110, enum case for LayoutDirection.rightToLeft(_:), COERCE_DOUBLE(*&height));
  v43 = sub_B9E60();
  v44 = *(*&v40 + 8);
  v44(v41, *&v42);
  v44(v39, *&v42);
  if (v43)
  {
    v36 = -v36;
    *v118 = v36;
  }

  v45 = v2[16];
  v46 = v2[17];
  v47 = *(v2 + 18);
  v113 = v45;
  v114 = v46;
  v115 = v47;
  sub_2E50(&qword_F8AE0);
  sub_BABD0();
  v119.width = 0.0;
  v119.height = 0.0;
  if (CGSizeEqualToSize(v117, v119) || (v113 = v45, v114 = v46, v115 = v47, sub_BABD0(), vabdd_f64(v117.width, v36) >= 2.0) || (v113 = v45, v114 = v46, v115 = v47, result = sub_BABD0(), vabdd_f64(v117.height, v38) >= 2.0))
  {
    v113 = v45;
    v114 = v46;
    v115 = v47;
    sub_BABD0();
    v120.width = 0.0;
    v120.height = 0.0;
    if (CGSizeEqualToSize(v117, v120))
    {
      v104 = v31;
      v108 = 0;
      v50 = v2[4];
      v49 = v2[5];
      v51 = *(v2 + 6);
      v52 = *(v2 + 7);
      v113 = v50;
      v114 = v49;
      v101 = v49;
      v103 = v51;
      v115 = v51;
      v116 = v52;
      v102 = v52;
      v100 = sub_2E50(&qword_F9110);
      sub_BAC80();
      height = v117.height;
      width = v117.width;
      v54 = v2[9];
      v97 = v2[8];
      v98 = v54;
      v55 = v2[11];
      v99 = v2[10];
      if (qword_F8258 != -1)
      {
        swift_once();
      }

      v56 = static LiveSpeechCaptionsViewsCoordinator.shared;
      v57 = *v2;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_B9B10();
      v58 = v57;

      v59 = v114;
      v110 = v115;
      v111 = v113;
      v109 = v116;
      v60 = &OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame;
      if (!v57)
      {
        v60 = &OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveSpeechFrame;
      }

      v61 = v56 + *v60;
      v63 = *(v61 + 16);
      v62 = *(v61 + 24);
      v64 = v105;
      sub_B95F0();
      v65 = sub_B9A00();
      v66 = sub_BB2F0();
      v67 = os_log_type_enabled(v65, v66);
      v96 = v62;
      if (v67)
      {
        v68 = swift_slowAlloc();
        v93 = v58;
        v69 = v68;
        v70 = swift_slowAlloc();
        v94 = v56;
        *&v117.width = v70;
        *v69 = 136315394;
        v113 = width;
        v114 = height;
        type metadata accessor for CGSize(0);
        v71 = sub_BAFF0();
        v95 = v50;
        v72 = v2;
        v74 = sub_7A1D8(v71, v73, &v117);

        *(v69 + 4) = v74;
        *(v69 + 12) = 2080;
        v113 = v63;
        v114 = v62;
        v75 = sub_BAFF0();
        v77 = sub_7A1D8(v75, v76, &v117);

        *(v69 + 14) = v77;
        v2 = v72;
        v50 = v95;
        _os_log_impl(&dword_0, v65, v66, "Calculate safeOffset offset: %s size: %s", v69, 0x16u);
        swift_arrayDestroy();
        v56 = v94;

        v58 = v93;

        v78 = v105;
      }

      else
      {

        v78 = v64;
      }

      (v104)(v78, v107);
      v79 = width;
      if (qword_F8250 != -1)
      {
        swift_once();
      }

      v80 = *&qword_100C08;
      if ((v58 & AXDeviceIsPad()) == 1 && *(v56 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsWindowState) != 1)
      {
        v80 = 0.0;
      }

      HasJindo = AXDeviceHasJindo();
      *&v121.size.width = v110;
      v121.origin.x = v111;
      v121.origin.y = v59;
      *&v121.size.height = v109;
      v82 = CGRectGetHeight(v121);
      v83 = height;
      if (height < v59 + v82 + -37.3333333 && HasJindo)
      {
        *&v122.size.width = v110;
        v122.origin.x = v111;
        v122.origin.y = v59;
        *&v122.size.height = v109;
        v83 = v59 + CGRectGetHeight(v122) + -37.3333333;
      }

      v84 = v99 - v63 + v80;
      if (v84 >= v79)
      {
        v84 = v79;
      }

      v85 = v96;
      if (v58)
      {
        v86 = sub_3C824(v84, v83, v63, v96, v97, v98, v99);
      }

      else
      {
        v86 = sub_3C588(v84, v83, v63, v96, v97, v98, v99);
      }

      if (v55 - v85 + -4.0 < v87)
      {
        v87 = v55 - v85 + -4.0;
      }

      if (v86 < -v80)
      {
        v86 = -v80;
      }

      v88 = v101;
      v113 = v50;
      v114 = v101;
      v89 = v103;
      v90 = v102;
      v115 = v103;
      v116 = v102;
      if (v87 < 0.0)
      {
        v87 = 0.0;
      }

      v117.width = v86;
      v117.height = v87;
      sub_BAC90();
      v113 = v50;
      v114 = v88;
      v115 = v89;
      v116 = v90;
      sub_BAC80();
      v113 = v45;
      v114 = v46;
      v115 = v47;
      sub_BABE0();
    }

    sub_BAE20();
    sub_BAE10();

    sub_BAE00();

    __chkstk_darwin(v91);
    *&v92[-16] = v2;
    *&v92[-8] = v118;
    sub_B9D80();
  }

  return result;
}

uint64_t sub_385D8(uint64_t a1, uint64_t a2)
{
  sub_BAE20();
  sub_BAE10();

  sub_BAE00();

  sub_B9D80();

  sub_2E50(&qword_F8AE0);
  sub_BABE0();
  v3 = sub_38B90();
  return (*(a2 + 112))(v3);
}

uint64_t sub_386D0(uint64_t a1)
{
  sub_2E50(&qword_F9110);
  sub_BAC80();
  v2 = *(a1 + 80);
  if (qword_F8240 != -1)
  {
    swift_once();
  }

  if (v2 * 0.5 >= v4 && qword_F8250 != -1)
  {
    swift_once();
  }

  sub_BAC90();
  return sub_3883C();
}

uint64_t sub_3883C()
{
  v1 = v0;
  v2 = type metadata accessor for LiveSpeechCaptionsPipView();
  __chkstk_darwin(v2 - 8);
  v4 = (&v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_B9A10();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() standardUserDefaults];
  v10 = *(v0 + 40);
  v27.width = *(v0 + 32);
  v27.height = v10;
  v28 = *(v0 + 48);
  sub_2E50(&qword_F9110);
  sub_BAC80();
  v11 = NSStringFromCGSize(v26);
  if (!v11)
  {
    sub_BAFD0();
    v11 = sub_BAFA0();
  }

  v12 = sub_BAFA0();
  [v9 setObject:v11 forKey:v12];

  [v9 synchronize];
  sub_B95F0();
  sub_3A51C(v1, v4);
  v13 = sub_B9A00();
  v14 = sub_BB2F0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24 = v5;
    v16 = v15;
    v17 = swift_slowAlloc();
    v25 = v17;
    *v16 = 136315138;
    v18 = v4[5];
    v27.width = v4[4];
    v27.height = v18;
    v28 = *(v4 + 3);
    sub_BAC80();
    v27 = v26;
    type metadata accessor for CGSize(0);
    v19 = sub_BAFF0();
    v21 = v20;
    sub_3AE50(v4);
    v22 = sub_7A1D8(v19, v21, &v25);

    *(v16 + 4) = v22;
    _os_log_impl(&dword_0, v13, v14, "Pip save offset: %s", v16, 0xCu);
    sub_28020(v17);

    return (*(v6 + 8))(v8, v24);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
    return sub_3AE50(v4);
  }
}

uint64_t sub_38B90()
{
  v1 = v0;
  v2 = type metadata accessor for LiveSpeechCaptionsPipView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v0[2];
  v6 = v0[3];
  aBlock = v0[1];
  v20 = v5;
  v21 = v6;
  sub_2E50(&qword_F9C90);
  v7 = sub_BAC80();
  if (v25 < 1.0)
  {
    __chkstk_darwin(v7);
    *(&v18 - 2) = v0;
    sub_BAE30();
    sub_B9D80();
  }

  v9 = v0[23];
  aBlock = v0[22];
  v8 = aBlock;
  v20 = v9;
  sub_2E50(&qword_F9C88);
  sub_BABD0();
  v10 = v25;
  [*&v25 invalidate];

  v11 = objc_opt_self();
  v12 = *(v1 + 168);
  sub_3A51C(v1, &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  sub_3A584(&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v23 = sub_3ACE0;
  v24 = v14;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_4E790;
  v22 = &unk_F0B58;
  v15 = _Block_copy(&aBlock);

  v16 = COERCE_DOUBLE([v11 scheduledTimerWithTimeInterval:0 repeats:v15 block:v12]);
  _Block_release(v15);
  aBlock = v8;
  v20 = v9;
  v25 = v16;
  return sub_BABE0();
}

uint64_t sub_38E40(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    if (qword_F82A0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_2E50(&qword_F96C8);
    return sub_BABE0();
  }

  return result;
}

uint64_t sub_38F18(uint64_t a1, uint64_t a2)
{
  sub_2E50(&qword_F9110);
  sub_BAC80();
  v3 = *(a2 + 80);
  if (qword_F8240 != -1)
  {
    swift_once();
  }

  if (v3 * 0.5 >= v5 && qword_F8250 != -1)
  {
    swift_once();
  }

  sub_BAC90();
  sub_3883C();
  sub_2E50(&qword_F8AE0);
  return sub_BABE0();
}

uint64_t sub_390B4(uint64_t a1, void *a2)
{
  result = sub_B8FE0();
  if (result)
  {
    v4 = result;
    v9 = sub_B9840();
    sub_BB550();
    if (*(v4 + 16) && (v5 = sub_7D058(v10), (v6 & 1) != 0))
    {
      sub_3ADF4(*(v4 + 56) + 32 * v5, v11);
      sub_3ADA0(v10);

      result = swift_dynamicCast();
      if (result)
      {
        v7 = a2[2];
        v8 = a2[3];
        v10[0] = a2[1];
        v10[1] = v7;
        v10[2] = v8;
        v11[0] = v9;
        sub_2E50(&qword_F9C90);
        return sub_BAC90();
      }
    }

    else
    {

      return sub_3ADA0(v10);
    }
  }

  return result;
}

uint64_t sub_391BC()
{
  sub_2E50(&qword_F9C88);
  sub_BABD0();
  [v1 invalidate];

  return sub_BABE0();
}

uint64_t sub_39268()
{
  v1 = sub_B9A10();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v45 = v0[4];
  v56 = v45;
  v57 = v5;
  v44 = v5;
  v50 = v7;
  v51 = v6;
  v58 = v6;
  v59 = v7;
  sub_2E50(&qword_F9110);
  sub_BAC80();
  v8 = v54;
  v9 = v55;
  v10 = v0[9];
  v46 = v0[8];
  v12 = v0[10];
  v11 = v0[11];
  v47 = v10;
  v48 = v12;
  v49 = v11;
  if (qword_F8258 != -1)
  {
    swift_once();
  }

  v13 = static LiveSpeechCaptionsViewsCoordinator.shared;
  v14 = *v0;
  type metadata accessor for LiveSpeechCaptionsPipView();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  v15 = v56;
  v16 = v57;
  v52 = v59;
  v53 = v58;
  v17 = &OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame;
  if (!v14)
  {
    v17 = &OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveSpeechFrame;
  }

  v18 = v13 + *v17;
  v20 = *(v18 + 16);
  v19 = *(v18 + 24);
  sub_B95F0();
  v21 = sub_B9A00();
  v22 = sub_BB2F0();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v42 = v4;
    v24 = v23;
    v54 = COERCE_DOUBLE(swift_slowAlloc());
    *v24 = 136315394;
    v56 = v8;
    v57 = v9;
    type metadata accessor for CGSize(0);
    v41 = v1;
    v25 = sub_BAFF0();
    v40 = v2;
    v27 = sub_7A1D8(v25, v26, &v54);
    v43 = v14;
    v28 = v27;

    *(v24 + 4) = v28;
    *(v24 + 12) = 2080;
    v56 = v20;
    v57 = v19;
    v29 = sub_BAFF0();
    v31 = sub_7A1D8(v29, v30, &v54);
    v14 = v43;

    *(v24 + 14) = v31;
    _os_log_impl(&dword_0, v21, v22, "Calculate safeOffset offset: %s size: %s", v24, 0x16u);
    swift_arrayDestroy();

    (*(v40 + 8))(v42, v41);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  if (qword_F8250 != -1)
  {
    swift_once();
  }

  v32 = *&qword_100C08;
  if ((v14 & AXDeviceIsPad()) == 1 && *(v13 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsWindowState) != 1)
  {
    v32 = 0.0;
  }

  HasJindo = AXDeviceHasJindo();
  v60.origin.x = v15;
  v60.origin.y = v16;
  v60.size.height = v52;
  v60.size.width = v53;
  if (v9 < v16 + CGRectGetHeight(v60) + -37.3333333 && HasJindo)
  {
    v61.origin.x = v15;
    v61.origin.y = v16;
    v61.size.height = v52;
    v61.size.width = v53;
    v9 = v16 + CGRectGetHeight(v61) + -37.3333333;
  }

  v34 = v48 - v20 + v32;
  if (v34 >= v8)
  {
    v34 = v8;
  }

  v35 = v49;
  if (v14)
  {
    v36 = sub_3C824(v34, v9, v20, v19, v46, v47, v48);
  }

  else
  {
    v36 = sub_3C588(v34, v9, v20, v19, v46, v47, v48);
  }

  if (v35 - v19 + -4.0 < v37)
  {
    v37 = v35 - v19 + -4.0;
  }

  if (v36 < -v32)
  {
    v36 = -v32;
  }

  v56 = v45;
  v57 = v44;
  v58 = v51;
  v59 = v50;
  if (v37 < 0.0)
  {
    v37 = 0.0;
  }

  v54 = v36;
  v55 = v37;
  return sub_BAC90();
}

uint64_t sub_39774(double a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for LiveSpeechCaptionsPipView();
  __chkstk_darwin(v6);
  v81 = &v70[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v86 = sub_B9A10();
  v87 = *(v86 - 8);
  __chkstk_darwin(v86);
  v85 = &v70[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v70[-v10];
  v13 = *(v2 + 17);
  v14 = *(v2 + 18);
  *&v93 = *(v2 + 16);
  v12 = v93;
  *(&v93 + 1) = v13;
  *&v94 = v14;
  sub_2E50(&qword_F8AE0);
  sub_BABD0();
  *&v15 = *&v90 + a1;
  v17 = *(v2 + 5);
  v18 = *(v2 + 6);
  v19 = *(v2 + 7);
  *&v93 = *(v2 + 4);
  v16 = v93;
  *(&v93 + 1) = v17;
  *&v94 = v18;
  *(&v94 + 1) = v19;
  swift_retain_n();
  swift_retain_n();
  v20 = sub_2E50(&qword_F9110);
  sub_BAC80();
  *&v90 = v16;
  *(&v90 + 1) = v17;
  v91 = v18;
  v92 = v19;
  v88 = v15;
  v89 = v96;
  sub_BAC90();
  *&v93 = v12;
  *(&v93 + 1) = v13;
  *&v94 = v14;
  sub_BABD0();
  v21 = *(&v90 + 1) + a2;
  *&v93 = v16;
  *(&v93 + 1) = v17;
  *&v94 = v18;
  *(&v94 + 1) = v19;

  sub_BAC80();
  *&v90 = v16;
  *(&v90 + 1) = v17;
  v91 = v18;
  v92 = v19;
  v88 = v95;
  v89 = v21;
  sub_BAC90();

  *&v93 = v12;
  *(&v93 + 1) = v13;
  *&v94 = v14;
  sub_BABD0();
  v22 = *&v90 + a1;
  *&v93 = v16;
  *(&v93 + 1) = v17;
  *&v94 = v18;
  *(&v94 + 1) = v19;

  sub_BAC80();
  *&v90 = v16;
  *(&v90 + 1) = v17;
  v91 = v18;
  v92 = v19;
  v88 = *&v22;
  v89 = v96;
  sub_BAC90();

  *&v93 = v12;
  *(&v93 + 1) = v13;
  *&v94 = v14;
  v23 = v2;
  sub_BABD0();
  v24 = *(&v90 + 1) + a2;
  *&v93 = v16;
  *(&v93 + 1) = v17;
  *&v94 = v18;
  *(&v94 + 1) = v19;
  sub_BAC80();
  *&v90 = v16;
  *(&v90 + 1) = v17;
  v91 = v18;
  v92 = v19;
  v88 = v95;
  v89 = v24;
  v80 = v20;
  sub_BAC90();

  v25 = *(v2 + 9);
  v76 = *(v2 + 8);
  v77 = v25;
  v26 = *(v2 + 11);
  v78 = *(v2 + 10);
  v79 = v26;
  if (qword_F8258 != -1)
  {
    swift_once();
  }

  v27 = static LiveSpeechCaptionsViewsCoordinator.shared;
  v28 = *v2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  v29 = *(&v93 + 1);
  v84 = *&v93;
  v82 = *(&v94 + 1);
  v83 = *&v94;
  v30 = &OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame;
  if (!v28)
  {
    v30 = &OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveSpeechFrame;
  }

  v31 = v27 + *v30;
  v32 = *(v31 + 16);
  v33 = *(v31 + 24);
  sub_B95F0();
  v34 = sub_B9A00();
  v35 = sub_BB2F0();
  v36 = os_log_type_enabled(v34, v35);
  v75 = v32;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v71 = v35;
    v38 = v37;
    v72 = swift_slowAlloc();
    *&v90 = v72;
    *v38 = 136315394;
    *&v93 = v22;
    *(&v93 + 1) = v24;
    type metadata accessor for CGSize(0);
    v74 = v3;
    v39 = sub_BAFF0();
    v73 = v28;
    v40 = v11;
    v42 = sub_7A1D8(v39, v41, &v90);
    v43 = v86;
    v44 = v27;
    v45 = v87;

    *(v38 + 4) = v42;
    *(v38 + 12) = 2080;
    *&v93 = v32;
    *(&v93 + 1) = v33;
    v46 = sub_BAFF0();
    v48 = sub_7A1D8(v46, v47, &v90);
    v23 = v74;

    *(v38 + 14) = v48;
    _os_log_impl(&dword_0, v34, v71, "Calculate safeOffset offset: %s size: %s", v38, 0x16u);
    swift_arrayDestroy();

    v49 = v45;
    v27 = v44;
    v50 = *(v49 + 8);
    v51 = v40;
    v28 = v73;
    v50(v51, v43);
  }

  else
  {

    v50 = *(v87 + 8);
    v50(v11, v86);
  }

  if (qword_F8250 != -1)
  {
    swift_once();
  }

  v52 = *&qword_100C08;
  if ((v28 & AXDeviceIsPad()) == 1 && *(v27 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsWindowState) != 1)
  {
    v52 = 0.0;
  }

  HasJindo = AXDeviceHasJindo();
  v97.origin.x = v84;
  v97.origin.y = v29;
  v97.size.width = v83;
  v97.size.height = v82;
  if (v24 < v29 + CGRectGetHeight(v97) + -37.3333333 && HasJindo)
  {
    v98.origin.x = v84;
    v98.origin.y = v29;
    v98.size.width = v83;
    v98.size.height = v82;
    v24 = v29 + CGRectGetHeight(v98) + -37.3333333;
  }

  v54 = v78 - v75 + v52;
  if (v54 >= v22)
  {
    v54 = v22;
  }

  v55 = v24;
  v56 = v79;
  if (v28)
  {
    v57 = sub_3C824(v54, v55, v75, v33, v76, v77, v78);
  }

  else
  {
    v57 = sub_3C588(v54, v55, v75, v33, v76, v77, v78);
  }

  if (v56 - v33 + -4.0 < v58)
  {
    v58 = v56 - v33 + -4.0;
  }

  if (v57 < -v52)
  {
    v57 = -v52;
  }

  *&v93 = v16;
  *(&v93 + 1) = v17;
  *&v94 = v18;
  *(&v94 + 1) = v19;
  if (v58 < 0.0)
  {
    v58 = 0.0;
  }

  *&v90 = v57;
  *(&v90 + 1) = v58;
  sub_BAC90();

  sub_B95F0();
  v59 = v81;
  sub_3A51C(v23, v81);
  v60 = sub_B9A00();
  v61 = sub_BB2F0();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v95 = v63;
    *v62 = 136315138;
    v64 = *(v59 + 5);
    *&v93 = *(v59 + 4);
    *(&v93 + 1) = v64;
    v94 = *(v59 + 3);
    sub_BAC80();
    v93 = v90;
    type metadata accessor for CGSize(0);
    v65 = sub_BAFF0();
    v67 = v66;
    sub_3AE50(v59);
    v68 = sub_7A1D8(v65, v67, &v95);

    *(v62 + 4) = v68;
    _os_log_impl(&dword_0, v60, v61, "Pip change offset: %s", v62, 0xCu);
    sub_28020(v63);

    return (v50)(v85, v86);
  }

  else
  {

    v50(v85, v86);
    return sub_3AE50(v59);
  }
}

uint64_t sub_3A13C(uint64_t a1, uint64_t a2)
{
  v3 = sub_B9A10();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_B95F0();
  v7 = sub_B9A00();
  v8 = sub_BB2F0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "Opacity Timer fired, pip is semi-transparent now", v9, 2u);
  }

  v10 = (*(v4 + 8))(v6, v3);
  __chkstk_darwin(v10);
  *&v12[-16] = a2;
  sub_BAE30();
  sub_B9D80();
}

uint64_t sub_3A2E8()
{
  if (qword_F8320 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_2E50(&qword_F9C90);
  return sub_BAC90();
}

uint64_t sub_3A3BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_B9FE0();
  *a1 = result;
  return result;
}

uint64_t sub_3A414(double a1)
{
  if (qword_F8250 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  if (a1 >= 0.0 && qword_F8240 != -1)
  {
    return swift_once();
  }

  return result;
}

uint64_t sub_3A51C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveSpeechCaptionsPipView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3A584(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveSpeechCaptionsPipView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_3A664()
{
  result = qword_F9C10;
  if (!qword_F9C10)
  {
    sub_5520(&qword_F9BC8);
    sub_3A71C();
    sub_D150(&qword_F9C30, &qword_F9C38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F9C10);
  }

  return result;
}

unint64_t sub_3A71C()
{
  result = qword_F9C18;
  if (!qword_F9C18)
  {
    sub_5520(&qword_F9BF0);
    sub_D150(&qword_F9C20, &qword_F9C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F9C18);
  }

  return result;
}

uint64_t sub_3A7D4()
{
  v1 = *(type metadata accessor for LiveSpeechCaptionsPipView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = sub_38B90();
  return (*(v2 + 96))(v3);
}

uint64_t sub_3A8BC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for LiveSpeechCaptionsPipView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_3A9B4()
{
  type metadata accessor for LiveSpeechCaptionsPipView();

  return sub_391BC();
}

unint64_t sub_3AA14()
{
  result = qword_F9C70;
  if (!qword_F9C70)
  {
    sub_5520(&qword_F9BD8);
    sub_3AAA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F9C70);
  }

  return result;
}

unint64_t sub_3AAA0()
{
  result = qword_F9C78;
  if (!qword_F9C78)
  {
    sub_5520(&qword_F9C68);
    sub_D150(&qword_F9C80, &qword_F9C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F9C78);
  }

  return result;
}

uint64_t sub_3AB58()
{
  v1 = type metadata accessor for LiveSpeechCaptionsPipView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 64);
  sub_2E50(&qword_F8AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_B9E70();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_3ACE0(uint64_t a1)
{
  v3 = *(type metadata accessor for LiveSpeechCaptionsPipView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_3A13C(a1, v4);
}

uint64_t sub_3AD50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_3ADF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_3AE50(uint64_t a1)
{
  v2 = type metadata accessor for LiveSpeechCaptionsPipView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3AEFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_B9FE0();
  *a1 = result;
  return result;
}

unint64_t sub_3AF54()
{
  result = qword_F9CA8;
  if (!qword_F9CA8)
  {
    sub_5520(&qword_F9CA0);
    sub_3B00C();
    sub_D150(&qword_F8DF0, &qword_F8DF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F9CA8);
  }

  return result;
}

unint64_t sub_3B00C()
{
  result = qword_F9CB0;
  if (!qword_F9CB0)
  {
    sub_5520(&qword_F9CB8);
    sub_3B098();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F9CB0);
  }

  return result;
}

unint64_t sub_3B098()
{
  result = qword_F9CC0;
  if (!qword_F9CC0)
  {
    sub_5520(&qword_F9748);
    sub_3B124();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F9CC0);
  }

  return result;
}

unint64_t sub_3B124()
{
  result = qword_F9CC8;
  if (!qword_F9CC8)
  {
    sub_5520(&qword_F9CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F9CC8);
  }

  return result;
}

unint64_t sub_3B1AC()
{
  result = qword_F9CD8;
  if (!qword_F9CD8)
  {
    sub_5520(&qword_F9BE0);
    sub_3AA14();
    sub_3B268(&qword_F8940, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F9CD8);
  }

  return result;
}

uint64_t sub_3B268(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *LiveSpeechCaptionsViewsCoordinator.shared.unsafeMutableAddressor()
{
  if (qword_F8258 != -1)
  {
    swift_once();
  }

  return &static LiveSpeechCaptionsViewsCoordinator.shared;
}

LiveSpeechUIService::LiveSpeechCaptionsFeatureKey_optional __swiftcall LiveSpeechCaptionsFeatureKey.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v1.value = LiveSpeechUIService_LiveSpeechCaptionsFeatureKey_liveCaptions;
  }

  else
  {
    v1.value = LiveSpeechUIService_LiveSpeechCaptionsFeatureKey_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void *sub_3B378@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

id sub_3B3C0()
{
  result = [objc_allocWithZone(type metadata accessor for LiveSpeechCaptionsViewsCoordinator()) init];
  static LiveSpeechCaptionsViewsCoordinator.shared = result;
  return result;
}

id static LiveSpeechCaptionsViewsCoordinator.shared.getter()
{
  if (qword_F8258 != -1)
  {
    swift_once();
  }

  v1 = static LiveSpeechCaptionsViewsCoordinator.shared;

  return v1;
}

id LiveSpeechCaptionsViewsCoordinator.init()()
{
  v1 = &v0[OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveSpeechFrame];
  *v1 = 0u;
  v1[1] = 0u;
  v2 = &v0[OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame];
  *v2 = 0u;
  v2[1] = 0u;
  v3 = &v0[OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveSpeechViewToFront];
  *v3 = LiveSpeechStore.SpeechContext.init(text:highlightRange:);
  v3[1] = 0;
  v4 = &v0[OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsAdjustFrame];
  *v4 = LiveSpeechStore.SpeechContext.init(text:highlightRange:);
  v4[1] = 0;
  v0[OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveSpeechWindowState] = 0;
  v0[OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsWindowState] = 0;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for LiveSpeechCaptionsViewsCoordinator();
  return objc_msgSendSuper2(&v6, "init");
}

Swift::Void __swiftcall LiveSpeechCaptionsViewsCoordinator.cleanupLiveSpeech()()
{
  LiveSpeechCaptionsViewsCoordinator.updateLiveSpeechWindowState(_:)(LiveSpeechUIService_LiveSpeechCaptionsWindowState_compact);

  LiveSpeechCaptionsViewsCoordinator.updateLiveSpeechFrame(_:)(0.0, 0.0, 0.0, 0.0);
}

uint64_t LiveSpeechCaptionsViewsCoordinator.updateLiveSpeechFrame(_:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = sub_B9A10();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &v4[OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveSpeechFrame];
  v28.origin.x = a1;
  v28.origin.y = a2;
  v28.size.width = a3;
  v28.size.height = a4;
  result = CGRectEqualToRect(*&v4[OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveSpeechFrame], v28);
  if ((result & 1) == 0)
  {
    *v13 = a1;
    v13[1] = a2;
    v13[2] = a3;
    v13[3] = a4;
    sub_B95F0();
    v15 = v4;
    v16 = sub_B9A00();
    v17 = sub_BB2F0();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v27 = v19;
      *v18 = 136315138;
      v20 = *(v13 + 1);
      v26[0] = *v13;
      v26[1] = v20;
      type metadata accessor for CGRect(0);
      v21 = sub_BAFF0();
      v23 = sub_7A1D8(v21, v22, &v27);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_0, v16, v17, "updateLiveSpeechFrame: %s", v18, 0xCu);
      sub_28020(v19);
    }

    (*(v10 + 8))(v12, v9);
    v24 = *&v15[OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsAdjustFrame];

    v24(v25);
  }

  return result;
}

Swift::Void __swiftcall LiveSpeechCaptionsViewsCoordinator.updateLiveSpeechWindowState(_:)(LiveSpeechUIService::LiveSpeechCaptionsWindowState a1)
{
  v2 = v1;
  v4 = sub_B9A10();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveSpeechWindowState;
  if (v2[OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveSpeechWindowState] != a1)
  {
    v2[OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveSpeechWindowState] = a1;
    sub_B95F0();
    v9 = v2;
    v10 = sub_B9A00();
    v11 = sub_BB2F0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136315138;
      v17[7] = v2[v8];
      v14 = sub_BAFF0();
      v16 = sub_7A1D8(v14, v15, &v18);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_0, v10, v11, "updateLiveSpeechWindowState: %s", v12, 0xCu);
      sub_28020(v13);
    }

    (*(v5 + 8))(v7, v4);
  }
}

Swift::Void __swiftcall LiveSpeechCaptionsViewsCoordinator.cleanupLiveCaptions()()
{
  v1 = (v0 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame);
  *v1 = 0u;
  v1[1] = 0u;
  *(v0 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsWindowState) = 0;
}

uint64_t LiveSpeechCaptionsViewsCoordinator.updateLiveCaptionsFrame(_:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = sub_B9A10();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &v4[OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame];
  v29.origin.x = a1;
  v29.origin.y = a2;
  v29.size.width = a3;
  v29.size.height = a4;
  result = CGRectEqualToRect(*&v4[OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame], v29);
  if ((result & 1) == 0)
  {
    if (CGRectIsEmpty(*v13))
    {
      v28.origin.x = a1;
      v28.origin.y = a2;
      v28.size.width = a3;
      v28.size.height = a4;
      if (!CGRectIsEmpty(v28))
      {
        v15 = *&v4[OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveSpeechViewToFront];

        v15(v16);
      }
    }

    v13->origin.x = a1;
    v13->origin.y = a2;
    v13->size.width = a3;
    v13->size.height = a4;
    sub_B95F0();
    v17 = v4;
    v18 = sub_B9A00();
    v19 = sub_BB2F0();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27 = v21;
      *v20 = 136315138;
      size = v13->size;
      v26[0] = v13->origin;
      v26[1] = size;
      type metadata accessor for CGRect(0);
      v23 = sub_BAFF0();
      v25 = sub_7A1D8(v23, v24, &v27);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_0, v18, v19, "updateLiveCaptionsFrame: %s", v20, 0xCu);
      sub_28020(v21);
    }

    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

Swift::Void __swiftcall LiveSpeechCaptionsViewsCoordinator.updateLiveCaptionsWindowState(_:)(LiveSpeechUIService::LiveSpeechCaptionsWindowState a1)
{
  v2 = v1;
  v4 = sub_B9A10();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsWindowState;
  if (v2[OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsWindowState] != a1)
  {
    v2[OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsWindowState] = a1;
    sub_B95F0();
    v9 = v2;
    v10 = sub_B9A00();
    v11 = sub_BB2F0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136315138;
      v19[7] = v2[v8];
      v14 = sub_BAFF0();
      v16 = sub_7A1D8(v14, v15, &v20);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_0, v10, v11, "updateLiveCaptionsWindowState: %s", v12, 0xCu);
      sub_28020(v13);
    }

    (*(v5 + 8))(v7, v4);
    if (!CGRectIsEmpty(*&v9[OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveSpeechFrame]))
    {
      v17 = *&v9[OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsAdjustFrame];

      v17(v18);
    }
  }
}

uint64_t sub_3BF04(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (v3 + *a3);
  *v4 = a1;
  v4[1] = a2;
}

CGFloat LiveSpeechCaptionsViewsCoordinator.safeHeightInset()()
{
  v1 = sub_B9A10();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B95F0();
  v5 = v0;
  v6 = sub_B9A00();
  v7 = sub_BB2F0();

  v8 = &qword_F9000;
  if (os_log_type_enabled(v6, v7))
  {
    v9 = swift_slowAlloc();
    v21 = v1;
    v10 = v9;
    v24 = swift_slowAlloc();
    *v10 = 136315394;
    v22 = *&v5[OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveSpeechFrame];
    v23 = *&v5[OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveSpeechFrame + 16];
    type metadata accessor for CGRect(0);
    v11 = sub_BAFF0();
    v13 = sub_7A1D8(v11, v12, &v24);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    LOBYTE(v22) = v5[OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveSpeechWindowState];
    v14 = sub_BAFF0();
    v16 = sub_7A1D8(v14, v15, &v24);
    v8 = &qword_F9000;

    *(v10 + 14) = v16;
    _os_log_impl(&dword_0, v6, v7, "safeHeightInset %s %s", v10, 0x16u);
    swift_arrayDestroy();

    (*(v2 + 8))(v4, v21);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  v17 = &v5[v8[412]];
  IsEmpty = CGRectIsEmpty(*v17);
  result = 0.0;
  if (!IsEmpty && v5[OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveSpeechWindowState] != 1)
  {
    return CGRectGetMinY(*v17) + -10.0;
  }

  return result;
}

void LiveSpeechCaptionsViewsCoordinator.safeOffset(feature:offset:size:containerRect:foreheadWindowRect:)(int a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, CGFloat a10, double a11, CGFloat a12, CGFloat a13)
{
  v21 = v20;
  v54 = a8;
  v55 = a9;
  v53 = a7;
  v56 = a3;
  v26 = sub_B9A10();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v51 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4 == 0.0 && a5 == 0.0)
  {
    v30 = &OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveSpeechFrame;
    if (a1)
    {
      v30 = &OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame;
    }

    v31 = *&v21 + *v30;
    a4 = *(v31 + 16);
    a5 = *(v31 + 24);
  }

  sub_B95F0();
  v32 = sub_B9A00();
  v33 = sub_BB2F0();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v52 = v21;
    v35 = v34;
    v36 = swift_slowAlloc();
    HIDWORD(v51) = a1;
    v59[0] = v36;
    *v35 = 136315394;
    v57 = a2;
    v58 = v56;
    type metadata accessor for CGSize(0);
    v37 = sub_BAFF0();
    v39 = sub_7A1D8(v37, v38, v59);

    *(v35 + 4) = v39;
    *(v35 + 12) = 2080;
    v57 = a4;
    v58 = a5;
    v40 = sub_BAFF0();
    v42 = sub_7A1D8(v40, v41, v59);

    *(v35 + 14) = v42;
    _os_log_impl(&dword_0, v32, v33, "Calculate safeOffset offset: %s size: %s", v35, 0x16u);
    swift_arrayDestroy();
    LOBYTE(a1) = BYTE4(v51);

    v21 = v52;
  }

  (*(v27 + 8))(v29, v26);
  v52 = a5;
  if (qword_F8250 != -1)
  {
    swift_once();
  }

  v43 = *&qword_100C08;
  if (AXDeviceIsPad() && (a1 & 1) != 0 && *(*&v21 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsWindowState) != 1)
  {
    v43 = 0.0;
  }

  HasJindo = AXDeviceHasJindo();
  v60.origin.x = a10;
  v60.origin.y = a11;
  v60.size.width = a12;
  v60.size.height = a13;
  Height = CGRectGetHeight(v60);
  v48 = v56;
  if (Height + a11 + -37.3333333 > v56 && HasJindo != 0)
  {
    v61.origin.x = a10;
    v61.origin.y = a11;
    v61.size.width = a12;
    v61.size.height = a13;
    v48 = CGRectGetHeight(v61) + a11 + -37.3333333;
  }

  v50 = v54 - a4 + v43;
  if (v50 >= a2)
  {
    v50 = a2;
  }

  if (a1)
  {
    sub_3C824(v50, v48, a4, v52, v47, v53, v54);
  }

  else
  {
    sub_3C588(v50, v48, a4, v46, v47, v53, v54);
  }
}

double sub_3C588(double a1, CGFloat a2, double a3, double a4, double a5, double a6, double a7)
{
  v13 = sub_B9A10();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v7 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame;
  v19 = *(v7 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 16);
  if (v19 > 0.0)
  {
    v20 = *(v18 + 24);
    if (v20 > 0.0)
    {
      if (*(v7 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveSpeechWindowState) == 1)
      {
        v21 = *v18;
        if (*(v7 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsWindowState) == 1)
        {
          v22 = *(v7 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveSpeechFrame);
          if (v21 == 0.0)
          {
            if (v22 != 0.0)
            {
              return a1;
            }
          }

          else if (v22 != a7 - a3)
          {
            return a1;
          }
        }
      }

      else
      {
        v21 = *v18;
      }

      v23 = v15;
      v24 = *(v18 + 8);
      if (CGRectGetMaxY(*(&v19 - 2)) + 10.0 - a6 > a2)
      {
        v25 = CGRectGetMaxY(*v18) + 10.0 - a6;
        sub_B95F0();
        v26 = sub_B9A00();
        v27 = sub_BB2F0();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v35 = v29;
          *v28 = 136315138;
          *&v34[1] = a1;
          *&v34[2] = v25;
          type metadata accessor for CGSize(0);
          v30 = sub_BAFF0();
          v32 = sub_7A1D8(v30, v31, &v35);

          *(v28 + 4) = v32;
          _os_log_impl(&dword_0, v26, v27, "LiveSpeech adjusted offset: %s", v28, 0xCu);
          sub_28020(v29);
        }

        (*(v14 + 8))(v17, v23);
      }
    }
  }

  return a1;
}

double sub_3C824(double a1, CGFloat a2, double a3, double a4, double a5, double a6, double a7)
{
  v14 = sub_B9A10();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v7 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveSpeechFrame;
  v20 = *(v7 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveSpeechFrame + 16);
  if (v20 > 0.0)
  {
    v21 = *(v19 + 24);
    if (v21 > 0.0)
    {
      if (*(v7 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveSpeechWindowState) == 1)
      {
        v22 = *v19;
        if (*(v7 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsWindowState) == 1)
        {
          v23 = *(v7 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame);
          if (v22 == 0.0)
          {
            if (v23 != 0.0)
            {
              return a1;
            }
          }

          else if (v23 != a7 - a3)
          {
            return a1;
          }
        }
      }

      else
      {
        v22 = *v19;
      }

      v24 = v16;
      v25 = *(v19 + 8);
      if (CGRectGetMinY(*(&v20 - 2)) - a4 + -10.0 - a6 < a2)
      {
        v26 = CGRectGetMinY(*v19) - a4 + -10.0 - a6;
        sub_B95F0();
        v27 = sub_B9A00();
        v28 = sub_BB2F0();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v36 = v30;
          *v29 = 136315138;
          *&v35[1] = a1;
          *&v35[2] = v26;
          type metadata accessor for CGSize(0);
          v31 = sub_BAFF0();
          v33 = sub_7A1D8(v31, v32, &v36);

          *(v29 + 4) = v33;
          _os_log_impl(&dword_0, v27, v28, "LiveCaptions adjusted offset: %s", v29, 0xCu);
          sub_28020(v30);
        }

        (*(v15 + 8))(v18, v24);
      }
    }
  }

  return a1;
}

id LiveSpeechCaptionsViewsCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LiveSpeechCaptionsViewsCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_3CB54@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LiveSpeechCaptionsViewsCoordinator();
  result = sub_B9AA0();
  *a1 = result;
  return result;
}

unint64_t sub_3CB94()
{
  result = qword_F9D10;
  if (!qword_F9D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F9D10);
  }

  return result;
}

NSString *sub_3CC04()
{
  result = sub_BAFA0();
  transitionToHomeOrAppSwitcherNotification = result;
  return result;
}

NSNotificationName *transitionToHomeOrAppSwitcherNotification.unsafeMutableAddressor()
{
  if (qword_F8260 != -1)
  {
    swift_once();
  }

  return &transitionToHomeOrAppSwitcherNotification;
}

NSString *sub_3CC8C()
{
  result = sub_BAFA0();
  rttCallUIVisibleNotification = result;
  return result;
}

NSNotificationName *rttCallUIVisibleNotification.unsafeMutableAddressor()
{
  if (qword_F8268 != -1)
  {
    swift_once();
  }

  return &rttCallUIVisibleNotification;
}

id sub_3CD14()
{
  result = [objc_allocWithZone(type metadata accessor for LiveCaptionsSystemObserver()) init];
  static LiveCaptionsSystemObserver.shared = result;
  return result;
}

uint64_t *LiveCaptionsSystemObserver.shared.unsafeMutableAddressor()
{
  if (qword_F8270 != -1)
  {
    swift_once();
  }

  return &static LiveCaptionsSystemObserver.shared;
}

id static LiveCaptionsSystemObserver.shared.getter()
{
  if (qword_F8270 != -1)
  {
    swift_once();
  }

  v1 = static LiveCaptionsSystemObserver.shared;

  return v1;
}

void sub_3CDF0()
{
  *&v0[OBJC_IVAR____TtC19LiveSpeechUIService26LiveCaptionsSystemObserver_continuityDisplayStateChanged] = sub_3D044;
  *&v0[OBJC_IVAR____TtC19LiveSpeechUIService26LiveCaptionsSystemObserver_rttCallUIVisibleChanged] = sub_3D05C;
  *&v0[OBJC_IVAR____TtC19LiveSpeechUIService26LiveCaptionsSystemObserver_transitionToHomeOrAppSwitcher] = sub_3D0DC;
  v14.receiver = v0;
  v14.super_class = type metadata accessor for LiveCaptionsSystemObserver();
  v1 = objc_msgSendSuper2(&v14, "init");
  v2 = CFNotificationCenterGetDarwinNotifyCenter();
  if (kAXSContinuityDisplayStateChangedNotification)
  {
    v3 = v2;
    v4 = *&v1[OBJC_IVAR____TtC19LiveSpeechUIService26LiveCaptionsSystemObserver_continuityDisplayStateChanged];
    v5 = kAXSContinuityDisplayStateChangedNotification;
    CFNotificationCenterAddObserver(v3, 0, v4, v5, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    v6 = CFNotificationCenterGetDarwinNotifyCenter();
    v7 = *&v1[OBJC_IVAR____TtC19LiveSpeechUIService26LiveCaptionsSystemObserver_transitionToHomeOrAppSwitcher];
    v8 = [objc_opt_self() sharedInstance];
    v9 = [v8 liveCaptionsTransitionToHomeOrAppSwitcherNotification];

    if (v9)
    {
      CFNotificationCenterAddObserver(v6, 0, v7, v9, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

      v10 = CFNotificationCenterGetDarwinNotifyCenter();
      v11 = *&v1[OBJC_IVAR____TtC19LiveSpeechUIService26LiveCaptionsSystemObserver_rttCallUIVisibleChanged];
      v12 = sub_BAFA0();
      CFNotificationCenterAddObserver(v10, 0, v11, v12, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

      v13 = [objc_opt_self() defaultCenter];
      [v13 addObserver:v1 selector:"guidedAccessStatusChanged:" name:GAXClearLiveCaptionsNotification object:0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_3D074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  if (qword_F82A0 != -1)
  {
    v7 = a6;
    swift_once();
    a6 = v7;
  }

  return a6();
}

void sub_3D0DC()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = v0;
  if (qword_F8260 != -1)
  {
    swift_once();
    v0 = v1;
  }

  [v0 postNotificationName:transitionToHomeOrAppSwitcherNotification object:0 userInfo:0];
}

id LiveCaptionsSystemObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LiveCaptionsSystemObserver();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_3D33C()
{
  sub_3D3DC();
  result = sub_BB4C0();
  qword_100C30 = result;
  return result;
}

unint64_t sub_3D3DC()
{
  result = qword_F9E20;
  if (!qword_F9E20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_F9E20);
  }

  return result;
}

uint64_t sub_3D428()
{
  v1 = OBJC_IVAR___LiveSpeechAXUIServiceInstance____lazy_storage___coordinator;
  if (*&v0[OBJC_IVAR___LiveSpeechAXUIServiceInstance____lazy_storage___coordinator])
  {
    v2 = *&v0[OBJC_IVAR___LiveSpeechAXUIServiceInstance____lazy_storage___coordinator];
  }

  else
  {
    type metadata accessor for LiveSpeechCoordinator();
    v3 = swift_allocObject();
    v4 = v0;
    v2 = sub_3EDD0(v4, v3);

    *&v0[v1] = v2;
  }

  return v2;
}

id sub_3D4B4()
{
  result = [objc_allocWithZone(type metadata accessor for LiveSpeechAXUIServiceInstance()) init];
  qword_F9E30 = result;
  return result;
}

id sub_3D4E4()
{
  if (qword_F8280 != -1)
  {
    swift_once();
  }

  v0 = swift_dynamicCastClassUnconditional();

  return v0;
}

unint64_t sub_3D58C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = sub_2E50(&qword_F9770);
  __chkstk_darwin(v9 - 8);
  v35 = v31 - v10;
  v33 = sub_B9A10();
  v11 = *(v33 - 8);
  __chkstk_darwin(v33);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a2;
  if (!a1)
  {
    sub_5108(_swiftEmptyArrayStorage);
  }

  v37 = a3;

  v14 = sub_BAF50();
  v16 = v15;

  sub_B95F0();

  v17 = sub_B9A00();
  v18 = sub_BB320();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v31[1] = v4;
    v38 = v20;
    *v19 = 134218498;
    v21 = v37;
    *(v19 + 4) = v36;
    v32 = a4;
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_7A1D8(v21, v32, &v38);
    *(v19 + 22) = 2080;
    *(v19 + 24) = sub_7A1D8(v14, v16, &v38);
    _os_log_impl(&dword_0, v17, v18, "Service got a message: %ld from client: %s. Payload: %s", v19, 0x20u);
    swift_arrayDestroy();

    v22 = v14;
    a4 = v32;

    v23 = v37;
    (*(v11 + 8))(v13, v33);
    v24 = v36;
  }

  else
  {

    (*(v11 + 8))(v13, v33);
    v24 = v36;
    v23 = v37;
    v22 = v14;
  }

  v25 = sub_BB1A0();
  v26 = v35;
  (*(*(v25 - 8) + 56))(v35, 1, 1, v25);
  sub_BB170();

  v27 = v34;
  v28 = sub_BB160();
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = &protocol witness table for MainActor;
  v29[4] = v24;
  v29[5] = v27;
  v29[6] = v23;
  v29[7] = a4;
  v29[8] = v22;
  v29[9] = v16;
  sub_6A2B8(0, 0, v26, &unk_C0008, v29);

  return sub_5108(_swiftEmptyArrayStorage);
}

uint64_t sub_3D954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v14;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v9 = sub_B9A10();
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();
  sub_2E50(qword_F9ED0);
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();
  sub_BB170();
  v8[13] = sub_BB160();
  v11 = sub_BB140();
  v8[14] = v11;
  v8[15] = v10;

  return _swift_task_switch(sub_3DA9C, v11, v10);
}

uint64_t sub_3DA9C()
{
  v27 = v0;
  v1 = v0[12];
  sub_B99D0();
  v2 = sub_B99E0();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {

LABEL_3:
    sub_B95F0();

    v4 = sub_B9A00();
    v5 = sub_BB300();

    v6 = os_log_type_enabled(v4, v5);
    v8 = v0[9];
    v7 = v0[10];
    v9 = v0[8];
    if (v6)
    {
      v23 = v0[6];
      v24 = v0[7];
      v11 = v0[4];
      v10 = v0[5];
      v25 = v0[10];
      v12 = v0[2];
      v13 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v13 = 134218498;
      *(v13 + 4) = v12;
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_7A1D8(v11, v10, &v26);
      *(v13 + 22) = 2080;
      *(v13 + 24) = sub_7A1D8(v23, v24, &v26);
      _os_log_impl(&dword_0, v4, v5, "Unhandled service message: %ld from client: %s. Payload: %s", v13, 0x20u);
      swift_arrayDestroy();

      (*(v8 + 8))(v25, v9);
    }

    else
    {

      (*(v8 + 8))(v7, v9);
    }

    sub_3F084(v0[12]);

    v18 = v0[1];

    return v18();
  }

  v14 = v0[11];
  sub_3F0EC(v0[12], v14);
  v15 = (*(v3 + 88))(v14, v2);
  if (v15 == enum case for LiveSpeechLiveCaptionsUIServiceMessageID.startLiveSpeech(_:))
  {
    v0[16] = sub_3D428();
    v16 = swift_task_alloc();
    v0[17] = v16;
    *v16 = v0;
    v16[1] = sub_3DFCC;

    return LiveSpeechCoordinator.startLiveSpeech()();
  }

  else if (v15 == enum case for LiveSpeechLiveCaptionsUIServiceMessageID.stopLiveSpeech(_:))
  {
    v0[18] = sub_3D428();
    v19 = swift_task_alloc();
    v0[19] = v19;
    *v19 = v0;
    v19[1] = sub_3E1A0;

    return LiveSpeechCoordinator.stopLiveSpeech()();
  }

  else if (v15 == enum case for LiveSpeechLiveCaptionsUIServiceMessageID.startLiveCaptions(_:))
  {
    v0[20] = sub_3D428();
    v20 = swift_task_alloc();
    v0[21] = v20;
    *v20 = v0;
    v20[1] = sub_3E2E4;

    return LiveSpeechCoordinator.startLiveCaptions()();
  }

  else
  {
    if (v15 != enum case for LiveSpeechLiveCaptionsUIServiceMessageID.stopLiveCaptions(_:))
    {
      v22 = v0[11];

      (*(v3 + 8))(v22, v2);
      goto LABEL_3;
    }

    v0[22] = sub_3D428();
    v21 = swift_task_alloc();
    v0[23] = v21;
    *v21 = v0;
    v21[1] = sub_3E428;

    return LiveSpeechCoordinator.stopLiveCaptions()();
  }
}