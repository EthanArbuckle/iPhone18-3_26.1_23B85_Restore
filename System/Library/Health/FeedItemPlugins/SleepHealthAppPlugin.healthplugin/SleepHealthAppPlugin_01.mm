uint64_t sub_29E60AC64@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v60 = a2;
  v2 = sub_29E751908();
  v58 = *(v2 - 8);
  v59 = v2;
  v3 = *(v58 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v57 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E750DC8();
  v54 = *(v5 - 8);
  v55 = v5;
  v6 = *(v54 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v56 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x29EDC9C68];
  sub_29E60B66C(0, &qword_2A1856A90, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v52 = &v45 - v11;
  sub_29E60B66C(0, &qword_2A1856A98, MEMORY[0x29EDC7770], v8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v48 = &v45 - v14;
  v49 = sub_29E752108();
  v47 = *(v49 - 8);
  v15 = *(v47 + 64);
  MEMORY[0x2A1C7C4A8](v49);
  v46 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_29E7520C8();
  v17 = *(v45 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x2A1C7C4A8](v45);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_29E74F8B8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x2A1C7C4A8](v21);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_29E752258();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x2A1C7C4A8](v26);
  v30 = &v45 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752248();
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v22 + 8))(v25, v21);
  sub_29E752228();
  v31 = swift_allocObject();
  v32 = v53;
  *(v31 + 16) = v53;
  v61[3] = v26;
  v61[4] = MEMORY[0x29EDC7800];
  v33 = sub_29E5FEBF4(v61);
  v50 = v27;
  v51 = v26;
  (*(v27 + 16))(v33, v30, v26);
  sub_29E60B66C(0, &qword_2A1856AA0, MEMORY[0x29EDC7780], MEMORY[0x29EDC9E90]);
  v34 = *(sub_29E752128() - 8);
  v35 = *(v34 + 72);
  v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  *(swift_allocObject() + 16) = xmmword_29E762F30;
  v37 = v45;
  (*(v17 + 104))(v20, *MEMORY[0x29EDC7768], v45);
  v38 = sub_29E7520D8();
  (*(*(v38 - 8) + 56))(v48, 1, 1, v38);
  v39 = v32;
  v40 = v46;
  sub_29E7520F8();
  sub_29E7520E8();
  (*(v47 + 8))(v40, v49);
  (*(v17 + 8))(v20, v37);
  v41 = sub_29E752178();
  (*(*(v41 - 8) + 56))(v52, 1, 1, v41);
  v42 = sub_29E7543D8();
  v43 = HKUIJoinStringsForAutomationIdentifier();

  if (v43)
  {
    sub_29E7541D8();
  }

  (*(v54 + 104))(v56, *MEMORY[0x29EDC22C8], v55);
  (*(v58 + 104))(v57, *MEMORY[0x29EDC2A38], v59);
  sub_29E750ED8();
  return (*(v50 + 8))(v30, v51);
}

void sub_29E60B434(void *a1, void *a2)
{
  v4 = sub_29E752098();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  sub_29E60B66C(0, &qword_2A1856AA8, MEMORY[0x29EDC4378], MEMORY[0x29EDC9C68]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v9 = v23 - v8;
  v10 = sub_29E753F08();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = *MEMORY[0x29EDBA748];
  v13 = type metadata accessor for SleepApneaFeatureRegulatoryInfoTransformProvider();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = a2;
  v17 = v12;
  v18 = sub_29E753F68();
  v23[4] = v13;
  v23[5] = MEMORY[0x29EDC43B8];
  v23[1] = v18;
  v19 = sub_29E753EB8();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  sub_29E752068();
  sub_29E753EF8();
  sub_29E60B6D0();
  v21 = objc_allocWithZone(v20);
  v22 = sub_29E753E58();
  [a1 showAdaptively:v22 sender:0];
}

void sub_29E60B66C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E60B6D0()
{
  if (!qword_2A1856AB0)
  {
    sub_29E753F08();
    sub_29E60B734();
    v0 = sub_29E753E68();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1856AB0);
    }
  }
}

unint64_t sub_29E60B734()
{
  result = qword_2A1856AB8;
  if (!qword_2A1856AB8)
  {
    sub_29E753F08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856AB8);
  }

  return result;
}

uint64_t type metadata accessor for LinkCollectionViewCell()
{
  result = qword_2A1856AC0;
  if (!qword_2A1856AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E60B818()
{
  sub_29E7514A8();
  v1 = sub_29E751678();
  v1();
  v2 = sub_29E751668();
  v3 = [v0 tintColor];
  [v2 setTextColor_];

  return MEMORY[0x2A1C62D38](0);
}

uint64_t sub_29E60B8B8(uint64_t a1)
{
  sub_29E60BC20(a1, v7);
  if (v8)
  {
    sub_29E609CF8(0, &qword_2A1858310);
    sub_29E609CF8(0, &qword_2A1856AE0);
    if (swift_dynamicCast())
    {
      if (*(&v5 + 1))
      {
        sub_29E5FAEE4(&v4, v7);
        v1 = sub_29E751668();
        sub_29E601938(v7, v8);
        sub_29E751938();
        v2 = sub_29E754198();

        [v1 setText_];

        return sub_29E5FECBC(v7);
      }
    }

    else
    {
      v6 = 0;
      v4 = 0u;
      v5 = 0u;
    }
  }

  else
  {
    sub_29E60BC9C(v7, &qword_2A1856AD0, &qword_2A1858310);
    v4 = 0u;
    v5 = 0u;
    v6 = 0;
  }

  return sub_29E60BC9C(&v4, &qword_2A1856AD8, &qword_2A1856AE0);
}

id sub_29E60BA18(void *a1, double a2, double a3, double a4, double a5)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12.receiver = a1;
  v12.super_class = type metadata accessor for LinkCollectionViewCell();
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a2, a3, a4, a5);

  return v10;
}

id sub_29E60BAFC(void *a1, uint64_t a2, void *a3)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8.receiver = a1;
  v8.super_class = type metadata accessor for LinkCollectionViewCell();
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, v5);

  if (v6)
  {
  }

  return v6;
}

id sub_29E60BBE0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LinkCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E60BC20(uint64_t a1, uint64_t a2)
{
  sub_29E60BCF8(0, &qword_2A1856AD0, &qword_2A1858310);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E60BC9C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_29E60BCF8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29E60BCF8(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_29E609CF8(255, a3);
    v4 = sub_29E754BD8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for FullScreenSleepScoreCard()
{
  result = qword_2A1856AF8;
  if (!qword_2A1856AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E60BDC4()
{
  sub_29E754048();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SleepScoreGalleryModelProvider();
    if (v1 <= 0x3F)
    {
      sub_29E60DC24(319, &qword_2A1A7BEF8, MEMORY[0x29EDB9D18], MEMORY[0x29EDBC390]);
      if (v2 <= 0x3F)
      {
        sub_29E60DC24(319, &qword_2A1856AE8, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC390]);
        if (v3 <= 0x3F)
        {
          sub_29E60DC24(319, &qword_2A1856AF0, MEMORY[0x29EDBC370], MEMORY[0x29EDBC390]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_29E60BF3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v48 = sub_29E752EC8();
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x2A1C7C4A8](v48);
  v44 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E60D498();
  v6 = v5;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E60D414();
  v42 = *(v10 - 8);
  v43 = v10;
  v11 = *(v42 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E60D358();
  v49 = *(v14 - 8);
  v50 = v14;
  v15 = *(v49 + 64);
  MEMORY[0x2A1C7C4A8](v14);
  v47 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v45 = sub_29E7544B8();
  sub_29E754468();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x2A1C7C4A8](isCurrentExecutor);
  *(&v42 - 2) = a1;
  sub_29E753388();
  sub_29E60D588();
  sub_29E60D5E8();
  sub_29E752A08();
  v18 = sub_29E753C48();
  v20 = v19;
  sub_29E60C584(a1, &v52);
  v21 = v53;
  v22 = v54;
  v23 = &v9[*(v6 + 36)];
  *v23 = v52;
  *(v23 + 1) = v21;
  v23[16] = v22;
  *(v23 + 3) = v18;
  *(v23 + 4) = v20;
  v24 = sub_29E60C798();
  v26 = v25;
  v28 = v27;
  v29 = sub_29E60D7E8();
  sub_29E7537B8();
  sub_29E60DB44(v24, v26, v28 & 1);

  sub_29E60DB54(v9);
  v30 = v46;
  v31 = v44;
  v32 = v48;
  (*(v46 + 104))(v44, *MEMORY[0x29EDBBF98], v48);
  v52 = v6;
  v53 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v47;
  v35 = v43;
  sub_29E753858();
  (*(v30 + 8))(v31, v32);
  v36 = (*(v42 + 8))(v13, v35);
  MEMORY[0x2A1C7C4A8](v36);
  *(&v42 - 2) = a1;
  sub_29E60D9A0();
  v52 = v35;
  v53 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_29E60DA54();
  v38 = v37;
  v39 = sub_29E60DAF4(&qword_2A1856B90, sub_29E60DA54);
  v52 = v38;
  v53 = v39;
  swift_getOpaqueTypeConformance2();
  v40 = v50;
  sub_29E753898();
  (*(v49 + 8))(v34, v40);
}

double sub_29E60C470@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a1 + *(type metadata accessor for FullScreenSleepScoreCard() + 20));
  v5 = type metadata accessor for SleepScoreCard(0);
  sub_29E67EB70(a1, a2 + *(v5 + 20));
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  v6 = (a2 + *(v5 + 24));
  *v6 = 0;
  v6[1] = 0;
  LOBYTE(v4) = sub_29E7533A8();

  sub_29E60D588();
  v8 = a2 + *(v7 + 36);
  *v8 = v4;
  result = 0.0;
  *(v8 + 8) = 0u;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 1;
  return result;
}

uint64_t sub_29E60C584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29E752A38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v4);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v21 - v10;
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = a1 + *(type metadata accessor for FullScreenSleepScoreCard() + 32);
  sub_29E658ACC(v11);
  (*(v5 + 104))(v9, *MEMORY[0x29EDBC360], v4);
  LOBYTE(v12) = sub_29E752A28();
  v13 = *(v5 + 8);
  v13(v9, v4);
  v13(v11, v4);
  v14 = objc_opt_self();
  v15 = &selRef_systemBackgroundColor;
  if ((v12 & 1) == 0)
  {
    v15 = &selRef_secondarySystemBackgroundColor;
  }

  v16 = [v14 *v15];
  v17 = sub_29E7538E8();
  v18 = sub_29E752C58();
  v19 = sub_29E7533A8();

  *a2 = v17;
  *(a2 + 8) = v18;
  *(a2 + 16) = v19;
  return result;
}

uint64_t sub_29E60C798()
{
  v1 = sub_29E74EE78();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E74ED28();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v6);
  v11 = (v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v9);
  v13 = v23 - v12;
  v14 = type metadata accessor for FullScreenSleepScoreCard();
  (*(v2 + 16))(v5, *(v0 + *(v14 + 20)) + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_gregorianCalendar, v1);
  v23[0] = v13;
  sub_29E754038();
  v15 = *(v2 + 8);
  v15(v5, v1);
  v16 = v0 + *(v14 + 24);
  sub_29E658A98(v5);
  sub_29E74ECE8();
  v17 = sub_29E66B0E8(v13, v11);
  v19 = v18;
  v20 = *(v7 + 8);
  v20(v11, v6);
  v15(v5, v1);
  v23[2] = v17;
  v23[3] = v19;
  sub_29E60DE10();
  v21 = sub_29E753608();
  v20(v23[0], v6);
  return v21;
}

uint64_t sub_29E60CA00(uint64_t a1)
{
  v2 = sub_29E753178();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  sub_29E60DA54();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = sub_29E753158();
  MEMORY[0x2A1C7C4A8](v10);
  *(&v13 - 2) = a1;
  sub_29E753DC8();
  sub_29E60DAF4(&qword_2A1856B88, MEMORY[0x29EDC4308]);
  sub_29E752A68();
  v11 = sub_29E60DAF4(&qword_2A1856B90, sub_29E60DA54);
  MEMORY[0x29ED95AD0](v9, v5, v11);
  (*(v6 + 8))(v9, v5);
}

uint64_t sub_29E60CC64(uint64_t a1)
{
  v2 = type metadata accessor for FullScreenSleepScoreCard();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E60DBC0(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_29E60DC88(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_29E753DB8();
}

uint64_t sub_29E60CDD0(uint64_t a1)
{
  v2 = sub_29E752EB8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E60DC24(0, &qword_2A1856978, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC388]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = (&v20 - v9);
  v11 = sub_29E752AD8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FullScreenSleepScoreCard();
  sub_29E60DD7C(a1 + *(v16 + 28), v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v15, v10, v11);
  }

  else
  {
    v17 = *v10;
    sub_29E7546B8();
    v18 = sub_29E753358();
    sub_29E751F78();

    sub_29E752EA8();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
  }

  sub_29E752AC8();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_29E60D068()
{
  sub_29E60D1EC();
  sub_29E60D358();
  sub_29E60D9A0();
  sub_29E60D414();
  sub_29E60D498();
  sub_29E60D7E8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_29E60DA54();
  sub_29E60DAF4(&qword_2A1856B90, sub_29E60DA54);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_29E752C38();
}

void sub_29E60D1EC()
{
  if (!qword_2A1856B08)
  {
    sub_29E60D358();
    sub_29E60D9A0();
    sub_29E60D414();
    sub_29E60D498();
    sub_29E60D7E8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29E60DA54();
    sub_29E60DAF4(&qword_2A1856B90, sub_29E60DA54);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1856B08);
    }
  }
}

void sub_29E60D358()
{
  if (!qword_2A1856B10)
  {
    sub_29E60D414();
    sub_29E60D498();
    sub_29E60D7E8();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1856B10);
    }
  }
}

void sub_29E60D414()
{
  if (!qword_2A1856B18)
  {
    sub_29E60D498();
    sub_29E60D7E8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1856B18);
    }
  }
}

void sub_29E60D498()
{
  if (!qword_2A1856B20)
  {
    sub_29E60D698(255, &qword_2A1856B28, sub_29E60D588, sub_29E60D5E8, MEMORY[0x29EDBBEA0]);
    sub_29E60D698(255, &qword_2A1856B48, sub_29E60D718, sub_29E60D770, MEMORY[0x29EDBC7D8]);
    v0 = sub_29E752C28();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1856B20);
    }
  }
}

void sub_29E60D588()
{
  if (!qword_2A1856B30)
  {
    type metadata accessor for SleepScoreCard(255);
    v0 = sub_29E752C28();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1856B30);
    }
  }
}

unint64_t sub_29E60D5E8()
{
  result = qword_2A1856B38;
  if (!qword_2A1856B38)
  {
    sub_29E60D588();
    sub_29E60DAF4(&qword_2A1856B40, type metadata accessor for SleepScoreCard);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856B38);
  }

  return result;
}

void sub_29E60D698(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_29E60D718()
{
  if (!qword_2A1856B50)
  {
    v0 = sub_29E752C28();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1856B50);
    }
  }
}

unint64_t sub_29E60D770()
{
  result = qword_2A1856B58;
  if (!qword_2A1856B58)
  {
    sub_29E60D718();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856B58);
  }

  return result;
}

unint64_t sub_29E60D7E8()
{
  result = qword_2A1856B60;
  if (!qword_2A1856B60)
  {
    sub_29E60D498();
    sub_29E60D868();
    sub_29E60D904();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856B60);
  }

  return result;
}

unint64_t sub_29E60D868()
{
  result = qword_2A1856B68;
  if (!qword_2A1856B68)
  {
    sub_29E60D698(255, &qword_2A1856B28, sub_29E60D588, sub_29E60D5E8, MEMORY[0x29EDBBEA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856B68);
  }

  return result;
}

unint64_t sub_29E60D904()
{
  result = qword_2A1856B70;
  if (!qword_2A1856B70)
  {
    sub_29E60D698(255, &qword_2A1856B48, sub_29E60D718, sub_29E60D770, MEMORY[0x29EDBC7D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856B70);
  }

  return result;
}

void sub_29E60D9A0()
{
  if (!qword_2A1856B78)
  {
    sub_29E60DA54();
    sub_29E60DAF4(&qword_2A1856B90, sub_29E60DA54);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1856B78);
    }
  }
}

void sub_29E60DA54()
{
  if (!qword_2A1856B80)
  {
    sub_29E753DC8();
    sub_29E60DAF4(&qword_2A1856B88, MEMORY[0x29EDC4308]);
    v0 = sub_29E752A78();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1856B80);
    }
  }
}

uint64_t sub_29E60DAF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E60DB44(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_29E60DB54(uint64_t a1)
{
  sub_29E60D498();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E60DBC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FullScreenSleepScoreCard();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29E60DC24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E60DC88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FullScreenSleepScoreCard();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E60DCEC()
{
  v1 = *(type metadata accessor for FullScreenSleepScoreCard() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_29E60CDD0(v2);
}

uint64_t sub_29E60DD4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_29E752E28();
  *a1 = result & 1;
  return result;
}

uint64_t sub_29E60DD7C(uint64_t a1, uint64_t a2)
{
  sub_29E60DC24(0, &qword_2A1856978, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC388]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_29E60DE10()
{
  result = qword_2A1A7BE18;
  if (!qword_2A1A7BE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7BE18);
  }

  return result;
}

void sub_29E60DE64()
{
  if (!qword_2A1856BA0)
  {
    sub_29E752B78();
    sub_29E60D1EC();
    sub_29E60D358();
    sub_29E60D9A0();
    sub_29E60D414();
    sub_29E60D498();
    sub_29E60D7E8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29E60DA54();
    sub_29E60DAF4(&qword_2A1856B90, sub_29E60DA54);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v0 = sub_29E752C48();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1856BA0);
    }
  }
}

id sub_29E60E000()
{
  v31[1] = *MEMORY[0x29EDCA608];
  v1 = *v0;
  v2 = sub_29E752098();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0[2];
  v8 = sub_29E74EC98();
  v31[0] = 0;
  v9 = [v7 ageWithCurrentDate:v8 error:v31];

  v10 = v31[0];
  if (!v9)
  {
    v11 = v10;
    v12 = sub_29E74EA48();

    swift_willThrow();
    sub_29E752068();
    v13 = v12;
    v14 = sub_29E752088();
    v15 = sub_29E7546A8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v30[0] = swift_slowAlloc();
      v31[0] = v30[0];
      *v16 = 136446466;
      v17 = sub_29E755178();
      v19 = sub_29E6B9C90(v17, v18, v31);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2080;
      ErrorValue = swift_getErrorValue();
      v21 = *(*(v30[2] - 8) + 64);
      MEMORY[0x2A1C7C4A8](ErrorValue);
      (*(v23 + 16))(v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
      v24 = sub_29E7541F8();
      v26 = sub_29E6B9C90(v24, v25, v31);

      *(v16 + 14) = v26;
      _os_log_impl(&dword_29E5ED000, v14, v15, "[%{public}s] Could not fetch age from data source with error %s", v16, 0x16u);
      v27 = v30[0];
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v27, -1, -1);
      MEMORY[0x29ED98410](v16, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v6, v2);
    v9 = 0;
  }

  v28 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t sub_29E60E374()
{
  v1 = v0;
  v34[1] = *MEMORY[0x29EDCA608];
  v2 = *v0;
  v3 = sub_29E752098();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[2];
  v34[0] = 0;
  v9 = [v8 biologicalSexWithError_];
  if (v9)
  {
    v10 = v9;
    v11 = v34[0];
    v12 = HKAnalyticsPropertyValueForBiologicalSex();
    v13 = sub_29E7541D8();
  }

  else
  {
    v14 = v34[0];
    v15 = sub_29E74EA48();

    swift_willThrow();
    sub_29E752068();
    v16 = v15;
    v17 = sub_29E752088();
    v18 = sub_29E7546A8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v33[0] = swift_slowAlloc();
      v34[0] = v33[0];
      *v19 = 136446466;
      v20 = sub_29E755178();
      v22 = sub_29E6B9C90(v20, v21, v34);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2080;
      ErrorValue = swift_getErrorValue();
      v24 = *(*(v33[2] - 8) + 64);
      MEMORY[0x2A1C7C4A8](ErrorValue);
      (*(v26 + 16))(v33 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
      v27 = sub_29E7541F8();
      v29 = sub_29E6B9C90(v27, v28, v34);

      *(v19 + 14) = v29;
      _os_log_impl(&dword_29E5ED000, v17, v18, "[%{public}s] Could not fetch biological sex from data source with error %s", v19, 0x16u);
      v30 = v33[0];
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v30, -1, -1);
      MEMORY[0x29ED98410](v19, -1, -1);
    }

    else
    {
    }

    (*(v4 + 8))(v7, v3);
    v13 = 0;
  }

  v31 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t sub_29E60E708()
{
  v1 = *(v0 + 16);
  sub_29E751758();

  return swift_deallocClassInstance();
}

uint64_t sub_29E60E764()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 getActivePairedDevice];
  if (!v1)
  {

    v6 = 0u;
    v7 = 0u;
LABEL_11:
    sub_29E60E88C(&v6);
    return 0;
  }

  v2 = v1;
  if ([v1 valueForProperty_])
  {
    sub_29E754C38();
    sub_29E751758();
  }

  else
  {

    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29E60E88C(uint64_t a1)
{
  sub_29E60E8E8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E60E8E8()
{
  if (!qword_2A1856C10)
  {
    v0 = sub_29E754BD8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1856C10);
    }
  }
}

uint64_t sub_29E60E93C()
{
  sub_29E610314();
  v1 = v0;
  sub_29E6103B4(v0, qword_2A1869100);
  sub_29E61037C(v1, qword_2A1869100);
  type metadata accessor for SleepStageWidgetCell(0);
  type metadata accessor for SleepStageWidgetItem(0);
  return sub_29E754808();
}

uint64_t sub_29E60E9C0(void *a1, uint64_t a2, uint64_t a3)
{
  sub_29E6101C0(0, qword_2A1A7CDE8, type metadata accessor for SleepStageWidgetItem, MEMORY[0x29EDC9C68]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v8 = &v12 - v7;
  sub_29E610418(a3, &v12 - v7);
  v9 = type metadata accessor for SleepStageWidgetItem(0);
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = OBJC_IVAR____TtC20SleepHealthAppPlugin20SleepStageWidgetCell_item;
  swift_beginAccess();
  sub_29E61047C(v8, a1 + v10);
  swift_endAccess();
  [a1 setNeedsUpdateConfiguration];
  return sub_29E610954(v8, qword_2A1A7CDE8, type metadata accessor for SleepStageWidgetItem);
}

uint64_t sub_29E60EB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0x29ED92410]())
  {
    v6 = *(a3 + 20);
    v7 = *(a1 + v6);
    v8 = *(a2 + v6);
    v9 = sub_29E7508E8();
    v11 = v10;
    if (v9 == sub_29E7508E8() && v11 == v12)
    {
      v14 = 1;
    }

    else
    {
      v14 = sub_29E755028();
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_29E60EBD4()
{
  sub_29E610314();
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1856198 != -1)
  {
    swift_once();
  }

  v6 = sub_29E61037C(v1, qword_2A1869100);
  (*(v2 + 16))(v5, v6, v1);
  type metadata accessor for SleepStageWidgetCell(0);
  sub_29E7503A8();
  sub_29E750398();
  return swift_storeEnumTagMultiPayload();
}

void sub_29E60ED1C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29E74F698();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E610510();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v14 = &v17[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = v2;
  v19 = a1;
  sub_29E610590();
  sub_29E610688();
  sub_29E753218();
  sub_29E610850();
  v20[3] = v15;
  v20[4] = sub_29E61090C(&qword_2A1856C80, sub_29E610850);
  sub_29E5FEBF4(v20);
  sub_29E751088();
  sub_29E61090C(&qword_2A1856C78, MEMORY[0x29EDC24E0]);
  sub_29E753208();
  (*(v11 + 8))(v14, v10);
  MEMORY[0x29ED972D0](v20);
  (*(v5 + 104))(v8, *MEMORY[0x29EDC6AB0], v4);
  sub_29E754258();
  (*(v5 + 8))(v8, v4);
  v16 = sub_29E754198();

  [v2 setAccessibilityIdentifier_];
}

uint64_t sub_29E60F000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v66 = a2;
  v2 = MEMORY[0x29EDC9C68];
  sub_29E6101C0(0, &qword_2A1856C88, MEMORY[0x29EDC6C50], MEMORY[0x29EDC9C68]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v58 = &v56 - v5;
  sub_29E6101C0(0, &qword_2A1856C90, MEMORY[0x29EDC6C38], v2);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v57 = &v56 - v8;
  v9 = type metadata accessor for SleepStageWidgetItem(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v56 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6101C0(0, qword_2A1856C98, MEMORY[0x29EDC6C58], v2);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v16 = &v56 - v15;
  v17 = sub_29E74FB08();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x2A1C7C4A8](v17);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_29E74FAC8();
  v64 = *(v22 - 8);
  v65 = v22;
  v23 = *(v64 + 64);
  MEMORY[0x2A1C7C4A8](v22);
  v63 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6105F0();
  v59 = v25;
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v25);
  v28 = &v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E610590();
  v62 = v29;
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v29);
  v32 = &v56 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v61 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v33 = OBJC_IVAR____TtC20SleepHealthAppPlugin20SleepStageWidgetCell_item;
  v34 = v60;
  swift_beginAccess();
  if ((*(v10 + 48))(v34 + v33, 1, v9))
  {
    (*(v18 + 56))(v16, 1, 1, v17);
    v35 = sub_29E74FAA8();
    (*(*(v35 - 8) + 56))(v57, 1, 1, v35);
    v36 = sub_29E74FAD8();
    (*(*(v36 - 8) + 56))(v58, 1, 1, v36);
    sub_29E74FAE8();
    if ((*(v18 + 48))(v16, 1, v17) != 1)
    {
      sub_29E610954(v16, qword_2A1856C98, MEMORY[0x29EDC6C58]);
    }
  }

  else
  {
    v37 = v56;
    sub_29E610418(v34 + v33, v56);
    v38 = *(v18 + 32);
    v38(v16, v37, v17);
    (*(v18 + 56))(v16, 0, 1, v17);
    v38(v21, v16, v17);
  }

  v39 = v63;
  sub_29E74FAB8();
  KeyPath = swift_getKeyPath();
  v41 = &v28[*(v59 + 36)];
  sub_29E6101C0(0, &qword_2A1856C48, MEMORY[0x29EDBD230], MEMORY[0x29EDBC938]);
  v43 = *(v42 + 28);
  v44 = *MEMORY[0x29EDBD228];
  v45 = sub_29E754058();
  (*(*(v45 - 8) + 104))(v41 + v43, v44, v45);
  *v41 = KeyPath;
  (*(v64 + 32))(v28, v39, v65);
  LOBYTE(KeyPath) = sub_29E7533A8();
  sub_29E7529C8();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  sub_29E6109C4(v28, v32, sub_29E6105F0);
  v54 = &v32[*(v62 + 36)];
  *v54 = KeyPath;
  *(v54 + 1) = v47;
  *(v54 + 2) = v49;
  *(v54 + 3) = v51;
  *(v54 + 4) = v53;
  v54[40] = 0;
  sub_29E6109C4(v32, v66, sub_29E610590);
}

uint64_t sub_29E60F6FC(uint64_t a1)
{
  v2 = sub_29E754058();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_29E752D38();
}

uint64_t sub_29E60F7C4()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E751078();
}

id sub_29E60FB1C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29E60FBBC()
{
  sub_29E6101C0(319, qword_2A1A7CDE8, type metadata accessor for SleepStageWidgetItem, MEMORY[0x29EDC9C68]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_29E60FCC4()
{
  result = sub_29E74FB08();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_29E60FD64(void *a1)
{
  v36 = a1;
  v2 = MEMORY[0x29EDC9C68];
  sub_29E6101C0(0, &qword_2A1856C20, MEMORY[0x29EDC26F8], MEMORY[0x29EDC9C68]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v6 = &v34 - v5;
  v7 = sub_29E7513C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x2A1C7C4A8](v7);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v35 = &v34 - v13;
  sub_29E6101C0(0, qword_2A1A7CDE8, type metadata accessor for SleepStageWidgetItem, v2);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v17 = &v34 - v16;
  v18 = type metadata accessor for SleepStageWidgetItem(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x2A1C7C4A8](v18);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC20SleepHealthAppPlugin20SleepStageWidgetCell_item;
  swift_beginAccess();
  sub_29E610224(v1 + v23, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    return sub_29E610954(v17, qword_2A1A7CDE8, type metadata accessor for SleepStageWidgetItem);
  }

  sub_29E6109C4(v17, v22, type metadata accessor for SleepStageWidgetItem);
  v25 = v22[*(v18 + 20)];
  v26 = v36;
  sub_29E73D71C(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_29E6102B8(v22);
    return sub_29E610954(v6, &qword_2A1856C20, MEMORY[0x29EDC26F8]);
  }

  else
  {
    v27 = v35;
    (*(v8 + 32))(v35, v6, v7);
    v28 = [v26 resolvedHealthToolbox];
    (*(v8 + 16))(v12, v27, v7);
    v29 = [objc_allocWithZone(MEMORY[0x29EDC68A0]) initWithSource:*MEMORY[0x29EDC67F8] presentation:*MEMORY[0x29EDC6798]];
    v30 = objc_allocWithZone(type metadata accessor for SleepRoomViewController());
    v31 = sub_29E69F6AC(v28, v12, v29);

    v32 = [v26 navigationController];
    if (v32)
    {
      v33 = v32;
      [v32 pushViewController:v31 animated:1];

      v31 = v33;
    }

    (*(v8 + 8))(v27, v7);
    return sub_29E6102B8(v22);
  }
}

void sub_29E6101C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E610224(uint64_t a1, uint64_t a2)
{
  sub_29E6101C0(0, qword_2A1A7CDE8, type metadata accessor for SleepStageWidgetItem, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E6102B8(uint64_t a1)
{
  v2 = type metadata accessor for SleepStageWidgetItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E610314()
{
  if (!qword_2A1856C28)
  {
    type metadata accessor for SleepStageWidgetCell(255);
    type metadata accessor for SleepStageWidgetItem(255);
    v0 = sub_29E754818();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1856C28);
    }
  }
}

uint64_t sub_29E61037C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_29E6103B4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_29E610418(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepStageWidgetItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E61047C(uint64_t a1, uint64_t a2)
{
  sub_29E6101C0(0, qword_2A1A7CDE8, type metadata accessor for SleepStageWidgetItem, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_29E610510()
{
  if (!qword_2A1856C30)
  {
    sub_29E610590();
    sub_29E610688();
    v0 = sub_29E753228();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1856C30);
    }
  }
}

void sub_29E610590()
{
  if (!qword_2A1856C38)
  {
    sub_29E6105F0();
    v0 = sub_29E752C28();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1856C38);
    }
  }
}

void sub_29E6105F0()
{
  if (!qword_2A1856C40)
  {
    sub_29E74FAC8();
    sub_29E6101C0(255, &qword_2A1856C48, MEMORY[0x29EDBD230], MEMORY[0x29EDBC938]);
    v0 = sub_29E752C28();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1856C40);
    }
  }
}

unint64_t sub_29E610688()
{
  result = qword_2A1856C50;
  if (!qword_2A1856C50)
  {
    sub_29E610590();
    sub_29E610708();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856C50);
  }

  return result;
}

unint64_t sub_29E610708()
{
  result = qword_2A1856C58;
  if (!qword_2A1856C58)
  {
    sub_29E6105F0();
    sub_29E61090C(&qword_2A1856C60, MEMORY[0x29EDC6C48]);
    sub_29E6107B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856C58);
  }

  return result;
}

unint64_t sub_29E6107B8()
{
  result = qword_2A1856C68;
  if (!qword_2A1856C68)
  {
    sub_29E6101C0(255, &qword_2A1856C48, MEMORY[0x29EDBD230], MEMORY[0x29EDBC938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856C68);
  }

  return result;
}

void sub_29E610850()
{
  if (!qword_2A1856C70)
  {
    sub_29E610590();
    sub_29E751088();
    sub_29E610688();
    sub_29E61090C(&qword_2A1856C78, MEMORY[0x29EDC24E0]);
    v0 = sub_29E753228();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1856C70);
    }
  }
}

uint64_t sub_29E61090C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E610954(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E6101C0(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E6109C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E610A30(uint64_t a1)
{
  v1 = *(a1 + qword_2A1869118);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_29E610B18()
{
  (*(*(*(*v0 + qword_2A1869118) - 8) + 8))(&v0[*(*v0 + qword_2A1869118 + 16)]);
  v1 = *&v0[*(*v0 + qword_2A1869118 + 24)];

  v2 = &v0[*(*v0 + qword_2A1869118 + 32)];

  return sub_29E5F0140(v2);
}

char *sub_29E610C14()
{
  v1 = *v0;
  v2 = sub_29E750D58();
  (*(*(*(v1 + qword_2A1869118) - 8) + 8))(&v2[*(*v2 + qword_2A1869118 + 16)]);
  v3 = *&v2[*(*v2 + qword_2A1869118 + 24)];

  sub_29E5F0140(&v2[*(*v2 + qword_2A1869118 + 32)]);
  return v2;
}

uint64_t sub_29E610D40()
{
  v0 = *sub_29E610C14();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_29E610EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *v3;
  v8 = sub_29E74ED88();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E613590(0, &qword_2A1856D78, MEMORY[0x29EDC23D8]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v16 = &v33 - v15;
  v17 = *MEMORY[0x29EDC8048];
  if (sub_29E7541D8() == a1 && v18 == a2)
  {

    goto LABEL_13;
  }

  v34 = v9;
  v20 = sub_29E755028();

  if (v20)
  {
LABEL_13:
    v27 = v3 + *(*v3 + qword_2A1869118 + 16);
    (*(*(v7 + qword_2A1869118 + 8) + 56))(*(v7 + qword_2A1869118));
    v28 = sub_29E750E98();
    (*(*(v28 - 8) + 56))(v16, 1, 1, v28);
    a3[3] = sub_29E750EB8();
    a3[4] = sub_29E61327C(&qword_2A1856D90, MEMORY[0x29EDC23E0]);
    sub_29E5FEBF4(a3);
    return sub_29E750EA8();
  }

  v21 = *MEMORY[0x29EDC8040];
  if (sub_29E7541D8() == a1 && v22 == a2)
  {

    v25 = v34;
  }

  else
  {
    v24 = sub_29E755028();

    v25 = v34;
    if ((v24 & 1) == 0)
    {
      a3[3] = sub_29E750788();
      a3[4] = sub_29E61327C(&qword_2A1856D80, MEMORY[0x29EDC1EC0]);
      sub_29E5FEBF4(a3);
      return sub_29E750778();
    }
  }

  v29 = v3 + *(*v3 + qword_2A1869118 + 16);
  (*(*(v7 + qword_2A1869118 + 8) + 64))(*(v7 + qword_2A1869118));
  v35 = 0x74497265746F6F46;
  v36 = 0xEB000000005F6D65;
  sub_29E74ED78();
  v30 = sub_29E74ED48();
  v32 = v31;
  (*(v25 + 8))(v12, v8);
  MEMORY[0x29ED96C20](v30, v32);

  a3[3] = sub_29E751628();
  a3[4] = sub_29E61327C(&qword_2A1856D88, MEMORY[0x29EDC28B0]);
  sub_29E5FEBF4(a3);
  return sub_29E751618();
}

uint64_t sub_29E611360()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E752238();
}

uint64_t sub_29E611420()
{
  v1 = *v0;
  sub_29E750FF8();
  sub_29E7547D8();
  v2 = *(*v0 + qword_2A1869118 + 16);
  v3 = v1 + qword_2A1869118;
  v4 = *(v1 + qword_2A1869118);
  v5 = *(v3 + 8);
  (*(v5 + 56))(v4, v5);
  if (v6)
  {

    sub_29E750E88();
    sub_29E7547F8();
  }

  result = (*(v5 + 64))(v4, v5);
  if (v8)
  {

    sub_29E7515F8();
    return sub_29E7547E8();
  }

  return result;
}

uint64_t sub_29E6115B8()
{
  sub_29E5FECBC((v0 + qword_2A1856D20));
  sub_29E5F0140(v0 + qword_2A1856D28);
  v1 = *(v0 + qword_2A1856D30);
}

uint64_t sub_29E611608()
{
  v0 = sub_29E751018();
  v1 = qword_2A1856D20;

  sub_29E5FECBC((v2 + v1));
  sub_29E5F0140(v0 + qword_2A1856D28);
  v3 = *(v0 + qword_2A1856D30);

  return swift_deallocClassInstance();
}

void sub_29E6116C4()
{
  if (!qword_2A1856D50)
  {
    sub_29E611764();
    sub_29E61327C(&qword_2A1856D60, sub_29E611764);
    v0 = sub_29E752668();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1856D50);
    }
  }
}

void sub_29E611764()
{
  if (!qword_2A1856D58)
  {
    v0 = sub_29E7526F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1856D58);
    }
  }
}

void sub_29E6117FC()
{
  sub_29E74F418();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AccountStatusModel();
    if (v1 <= 0x3F)
    {
      sub_29E613590(319, &qword_2A1856D48, sub_29E6116C4);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_29E6118DC()
{
  v1 = (v0 + qword_2A1856D20);
  swift_beginAccess();
  sub_29E602E20(v1, v16);
  v2 = v17;
  v3 = v18;
  sub_29E601938(v16, v17);
  v4 = (*(v3 + 24))(v2, v3);
  sub_29E5FECBC(v16);
  if (v4)
  {
    v5 = v1[3];
    v6 = v1[4];
    v7 = sub_29E601938(v1, v5);
    v8 = *(v5 - 8);
    v9 = *(v8 + 64);
    MEMORY[0x2A1C7C4A8](v7);
    v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v8 + 16))(v11);
    v12 = (*(v6 + 48))(v5, v6);
    (*(v8 + 8))(v11, v5);
    v13 = v12 ^ 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_29E611A68(uint64_t result)
{
  if (result)
  {
    v2 = v1;
    v3 = *v1;
    v4 = (v1 + qword_2A1856D20);
    swift_beginAccess();
    v6 = v4[3];
    v5 = v4[4];
    v7 = sub_29E601938(v4, v6);
    v8 = *(v6 - 8);
    v9 = *(v8 + 64);
    MEMORY[0x2A1C7C4A8](v7);
    v11 = &v16 - v10;
    (*(v8 + 16))(&v16 - v10);
    v12 = (*(v5 + 56))(v6, v5);
    v14 = v13;
    result = (*(v8 + 8))(v11, v6);
    if (v14)
    {
      if (*(v2 + qword_2A1856D30))
      {
        v15 = swift_allocObject();
        v15[2] = v2;
        v15[3] = v12;
        v15[4] = v14;
        *(swift_allocObject() + 16) = v3;

        sub_29E74F638();
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_29E611CA0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_29E754198();
    sub_29E754288();
    v4 = sub_29E754198();

    v5 = [v2 notificationsWontFireAlertControllerWithLocalizedTitle:v3 localizedDismiss:v4 completion:0];

    [v1 presentViewController:v5 animated:1 completion:0];

    return sub_29E751758();
  }

  return result;
}

uint64_t sub_29E611D9C()
{
  v0 = sub_29E752098();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v5 = sub_29E752088();
  v6 = sub_29E7546B8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136446210;
    v9 = sub_29E755178();
    v11 = sub_29E6B9C90(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_29E5ED000, v5, v6, "[%{public}s] Sleep should not be requesting notification permissions in Sleep Settings.", v7, 0xCu);
    sub_29E5FECBC(v8);
    MEMORY[0x29ED98410](v8, -1, -1);
    MEMORY[0x29ED98410](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_29E611F48(char a1)
{
  v3 = (v1 + qword_2A1856D20);
  swift_beginAccess();
  v4 = v3[3];
  v5 = v3[4];
  v6 = sub_29E601938(v3, v4);
  v7 = *(v4 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v14[-v9];
  (*(v7 + 16))(&v14[-v9]);
  LOBYTE(v5) = (*(v5 + 48))(v4, v5);
  result = (*(v7 + 8))(v10, v4);
  if ((v5 & 1) == 0)
  {
    swift_beginAccess();
    v12 = v3[3];
    v13 = v3[4];
    sub_29E613218(v3, v12);
    (*(v13 + 32))(a1 & 1, v12, v13);
    swift_endAccess();
    return sub_29E611A68(a1 & 1);
  }

  return result;
}

uint64_t sub_29E6120E8()
{
  v1 = *v0;
  sub_29E74F3C8();
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v2 = sub_29E74E9D8();

  return v2;
}

uint64_t sub_29E612220@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  sub_29E74F418();
  sub_29E61327C(&qword_2A18568C0, MEMORY[0x29EDC6A30]);
  result = sub_29E752758();
  *a1 = result;
  return result;
}

uint64_t sub_29E61229C()
{
  v1 = *v0;
  sub_29E74F3A8();
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v2 = sub_29E74E9D8();

  return v2;
}

void sub_29E6123CC(void *a1)
{
  v2 = objc_opt_self();
  a1;
  v3 = sub_29E754198();
  v4 = [v2 modelSpecificLocalizedStringKeyForKey_];

  if (v4)
  {
    sub_29E7541D8();

    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    sub_29E74E9D8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29E61254C()
{
  sub_29E613590(0, &qword_2A1856D98, MEMORY[0x29EDC1AE8]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v4 = &v17 - v3;
  v5 = sub_29E754968();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x2A1C7C4A8](v5);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v17 - v11;
  v13 = *(v0 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E752888();

  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    (*(v6 + 32))(v12, v4, v5);
    (*(v6 + 16))(v10, v12, v5);
    v15 = (*(v6 + 88))(v10, v5);
    if (v15 == *MEMORY[0x29EDC1AD0])
    {
      if (qword_2A1A7D6F0 == -1)
      {
        goto LABEL_13;
      }
    }

    else if (v15 == *MEMORY[0x29EDC1AE0])
    {
      if (qword_2A1A7D6F0 == -1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v15 != *MEMORY[0x29EDC1AD8])
      {
        result = sub_29E754E48();
        __break(1u);
        return result;
      }

      if (qword_2A1A7D6F0 == -1)
      {
LABEL_13:
        v16 = sub_29E74E9D8();
        (*(v6 + 8))(v12, v5);
        return v16;
      }
    }

    swift_once();
    goto LABEL_13;
  }

  sub_29E6135E4(v4);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  return sub_29E74E9D8();
}

uint64_t sub_29E6129A0(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_29E754968();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v6);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v28 - v12;
  sub_29E613590(0, &qword_2A1856D98, MEMORY[0x29EDC1AE8]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v17 = &v28 - v16;
  v28 = a1;
  v29 = a2;
  v18 = a1;
  v19 = a2;
  v28 = sub_29E7541F8();
  v29 = v20;
  MEMORY[0x29ED96C20](91, 0xE100000000000000);
  v21 = *(v3 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E752888();

  if ((*(v7 + 48))(v17, 1, v6))
  {
    sub_29E6135E4(v17);
  }

  else
  {
    v24 = *(v7 + 16);
    v24(v13, v17, v6);
    sub_29E6135E4(v17);
    v24(v11, v13, v6);
    v25 = (*(v7 + 88))(v11, v6);
    if (v25 == *MEMORY[0x29EDC1AD0])
    {
      (*(v7 + 8))(v13, v6);
      v23 = 0xEB000000006E4964;
      v22 = 0x656E676953746F6ELL;
      goto LABEL_10;
    }

    if (v25 == *MEMORY[0x29EDC1AE0])
    {
      (*(v7 + 8))(v13, v6);
      v23 = 0xE800000000000000;
      v22 = 0x6E4964656E676973;
      goto LABEL_10;
    }

    if (v25 == *MEMORY[0x29EDC1AD8])
    {
      v23 = 0x800000029E758890;
      (*(v7 + 8))(v13, v6);
      v22 = 0xD000000000000022;
      goto LABEL_10;
    }

    v27 = *(v7 + 8);
    v27(v13, v6);
    v27(v11, v6);
  }

  v22 = 0;
  v23 = 0xE000000000000000;
LABEL_10:
  MEMORY[0x29ED96C20](v22, v23);

  MEMORY[0x29ED96C20](93, 0xE100000000000000);
  return v28;
}

uint64_t sub_29E612D50(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E752888();
}

uint64_t sub_29E612DCC(uint64_t a1, void **a2)
{
  sub_29E613590(0, &qword_2A1856D98, MEMORY[0x29EDC1AE8]);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x2A1C7C4A8](v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v14 - v9;
  sub_29E61365C(a1, &v14 - v9);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E61365C(v10, v8);
  v12 = v11;
  sub_29E752898();
  return sub_29E6135E4(v10);
}

void sub_29E612EE0()
{
  v0 = objc_opt_self();
  v1 = sub_29E754198();
  v2 = [v0 modelSpecificLocalizedStringKeyForKey_];

  if (v2)
  {
    sub_29E7541D8();

    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    sub_29E74E9D8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29E612FF4()
{
  v1 = *v0;
  v2 = sub_29E750E78();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v17 - v8;
  v10 = *(v1 + qword_2A1869118 + 8);
  v11 = *(v1 + qword_2A1869118);
  (*(v10 + 56))(v11, v10);
  if (v12)
  {

    sub_29E750E28();
  }

  else
  {
    sub_29E750E38();
  }

  (*(v10 + 64))(v11, v10);
  if (v13)
  {

    sub_29E750E18();
    (*(v3 + 8))(v9, v2);
    (*(v3 + 32))(v9, v7, v2);
  }

  else
  {
    v14 = *(v3 + 32);
    v14(v7, v9, v2);
    v14(v9, v7, v2);
  }

  v15 = sub_29E750E68();
  (*(v3 + 8))(v9, v2);
  return v15;
}

uint64_t sub_29E613218(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_29E613268()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_29E611CA0();
}

uint64_t sub_29E61327C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E6132C4()
{
  sub_29E613590(0, &qword_2A1856D98, MEMORY[0x29EDC1AE8]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v3 = &v15 - v2;
  v4 = sub_29E754968();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v15 - v10;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E752888();

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_29E6135E4(v3);
    return 1;
  }

  (*(v5 + 32))(v11, v3, v4);
  (*(v5 + 16))(v9, v11, v4);
  v12 = (*(v5 + 88))(v9, v4);
  if (v12 == *MEMORY[0x29EDC1AD0] || v12 == *MEMORY[0x29EDC1AE0])
  {
    (*(v5 + 8))(v11, v4);
    return 1;
  }

  if (v12 == *MEMORY[0x29EDC1AD8])
  {
    (*(v5 + 8))(v11, v4);
    return 0;
  }

  else
  {
    result = sub_29E754E48();
    __break(1u);
  }

  return result;
}

void sub_29E613590(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E754BD8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E6135E4(uint64_t a1)
{
  sub_29E613590(0, &qword_2A1856D98, MEMORY[0x29EDC1AE8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E61365C(uint64_t a1, uint64_t a2)
{
  sub_29E613590(0, &qword_2A1856D98, MEMORY[0x29EDC1AE8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E61372C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_29E613774(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 sub_29E6137C0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_29E6137D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_29E61381C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_29E613FB4(void *a1)
{
  v2 = v1;
  v157 = a1;
  v156 = type metadata accessor for SleepScoreComponentOverlayContext();
  v3 = *(*(v156 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v156);
  v155 = &v132 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_29E74EFE8();
  v133 = *(v159 - 8);
  v5 = *(v133 + 64);
  MEMORY[0x2A1C7C4A8](v159);
  v169 = &v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_29E754188();
  v7 = *(v134 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v134);
  v137 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for SleepScoreLevelOverlayContext();
  v10 = *(*(v154 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v154);
  v153 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E74EF88();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x2A1C7C4A8](v12);
  *&v161 = &v132 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v168 = &v132 - v17;
  v18 = sub_29E74F098();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x2A1C7C4A8](v18);
  v152 = &v132 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21);
  v158 = &v132 - v23;
  v24 = MEMORY[0x29EDCA190];
  v173 = MEMORY[0x29EDCA190];
  v25 = sub_29E74F078();
  v26 = *(v25 + 16);
  v135 = v2;
  if (v26)
  {
    v136 = v7;
    v172 = v24;
    v27 = v25;
    v167 = v26;
    sub_29E754E08();
    v148 = sub_29E7544C8();
    v147 = sub_29E753F58();
    v146 = objc_opt_self();
    v145 = objc_opt_self();
    v144 = *&v2[OBJC_IVAR____TtC20SleepHealthAppPlugin35SleepScoreOverlayRoomViewController_sleepScoreDisplayType];
    v29 = *(v19 + 16);
    v28 = v19 + 16;
    v166 = v29;
    v30 = (*(v28 + 64) + 32) & ~*(v28 + 64);
    v132 = v27;
    v31 = v27 + v30;
    v32 = (v28 - 8);
    v142 = (v13 + 16);
    v141 = (v13 + 88);
    v140 = *(v28 + 56);
    v139 = *MEMORY[0x29EDC68D8];
    v138 = *MEMORY[0x29EDC68E0];
    v160 = (v13 + 8);
    v165 = xmmword_29E764160;
    v151 = v12;
    v150 = v18;
    v149 = v28;
    v33 = v158;
    v143 = (v28 - 8);
    v29(v158, v31, v18);
    while (1)
    {
      v164 = sub_29E7544B8();
      sub_29E754468();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v57 = v152;
      v166(v152, v33, v18);
      v58 = v144;
      sub_29E74F058();
      v59 = sub_29E753F48();
      v163 = *v32;
      v163(v57, v18);
      v60 = v58;
      v61 = v168;
      sub_29E74F088();
      v62 = objc_allocWithZone(MEMORY[0x29EDC4660]);
      v162 = v59;
      v63 = [v62 initWithSourceDelegate_];
      v64 = v161;
      (*v142)(v161, v61, v12);
      v65 = (*v141)(v64, v12);
      if (v65 == v139)
      {
        v34 = 1;
      }

      else if (v65 == v138)
      {
        v34 = 2;
      }

      else
      {
        (*v160)(v161, v12);
        v34 = 3;
      }

      v35 = [objc_allocWithZone(MEMORY[0x29EDC4720]) initWithDisplayType:v60 dataSource:v63 options:v34];
      v36 = [v145 hk_sleepKeyColor];
      v37 = [v146 presentationStyleWithColor:v36 options:0];

      [v37 setAxisAnnotationStyle_];
      sub_29E6163F8();
      v38 = swift_allocObject();
      *(v38 + 16) = v165;
      *(v38 + 32) = v37;
      sub_29E609B5C(0, &qword_2A1856E88, 0x29EDC4728);
      v39 = v35;
      v40 = v37;
      v41 = sub_29E7543D8();

      [v39 setUnhighlightedPresentationStyles_];

      v42 = swift_allocObject();
      *(v42 + 16) = v165;
      *(v42 + 32) = v40;
      v43 = v40;
      v44 = sub_29E7543D8();

      [v39 setHighlightedPresentationStyles_];

      [v39 setInactivePresentationStyle_];
      v45 = [objc_allocWithZone(type metadata accessor for SleepScoreChartTapOutFormatter()) init];
      v46 = [objc_allocWithZone(MEMORY[0x29EDC4700]) initWithGraphSeries:v39 baseDisplayType:v60 valueFormatter:v45 dataTypeCode:341];

      v12 = v151;
      (*v160)(v168, v151);
      v47 = v153;
      v48 = v158;
      sub_29E74F088();
      v49 = type metadata accessor for SleepScoreOverlayContext();
      v50 = objc_allocWithZone(v49);
      *&v50[OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_currentContextItem] = 0;
      *&v50[OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_baseDisplayType] = v60;
      *&v50[OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_overlayDisplayType] = v46;
      v51 = &v50[OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_itemProvider];
      v51[3] = v154;
      v51[4] = &off_2A24FE128;
      v52 = sub_29E5FEBF4(v51);
      sub_29E616D8C(v47, v52, type metadata accessor for SleepScoreLevelOverlayContext);
      v171.receiver = v50;
      v171.super_class = v49;
      v53 = v60;
      v54 = v46;
      objc_msgSendSuper2(&v171, sel_init);

      v33 = v48;
      sub_29E616DF4(v47, type metadata accessor for SleepScoreLevelOverlayContext);
      v55 = v48;
      v18 = v150;
      v32 = v143;
      v163(v55, v150);

      sub_29E754DE8();
      v56 = *(v172 + 16);
      sub_29E754E18();
      sub_29E754E28();
      sub_29E754DF8();
      v31 += v140;
      if (!--v167)
      {
        break;
      }

      v166(v33, v31, v18);
    }

    v66 = v172;
    v7 = v136;
  }

  else
  {

    v66 = MEMORY[0x29EDCA190];
  }

  v67 = v137;
  sub_29E754118();
  sub_29E65B0B4(v67);
  v69 = *(v7 + 8);
  v68 = v7 + 8;
  v70 = v134;
  v163 = v69;
  v69(v67, v134);
  sub_29E6163F8();
  v162 = v71;
  v72 = swift_allocObject();
  v161 = xmmword_29E764160;
  *(v72 + 16) = xmmword_29E764160;
  if (v66 >> 62)
  {
    v73 = sub_29E61644C();

    sub_29E754E68();
  }

  else
  {

    sub_29E755038();
    v73 = sub_29E61644C();
  }

  v74 = objc_allocWithZone(MEMORY[0x29EDC47A8]);
  sub_29E61644C();
  v75 = sub_29E7543D8();

  v76 = [v74 initWithSectionTitle:0 overlayContextItems:v75];

  *(v72 + 32) = v76;
  v77 = objc_allocWithZone(MEMORY[0x29EDC47B0]);
  v78 = sub_29E754198();

  v164 = sub_29E609B5C(0, &qword_2A1856E98, 0x29EDC47A8);
  v79 = sub_29E7543D8();

  v80 = [v77 initWithContainerTitle:v78 overlayContextSections:v79];

  v81 = v80;
  MEMORY[0x29ED96CE0]();
  if (*((v173 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v173 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v129 = *((v173 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_29E754418();
  }

  v160 = v81;
  sub_29E754438();
  v82 = sub_29E74EFC8();
  v83 = *(v82 + 16);
  v136 = v68;
  if (v83)
  {
    v158 = v73;
    v172 = MEMORY[0x29EDCA190];
    sub_29E754E08();
    v168 = sub_29E7544C8();
    v167 = *&v135[OBJC_IVAR____TtC20SleepHealthAppPlugin35SleepScoreOverlayRoomViewController_sleepScoreDisplayType];
    v84 = v133 + 16;
    v85 = *(v133 + 16);
    v86 = (*(v133 + 80) + 32) & ~*(v133 + 80);
    v154 = v82;
    v87 = v82 + v86;
    v166 = *(v133 + 72);
    *&v165 = v133 + 8;
    v88 = v159;
    v89 = v169;
    do
    {
      v99 = v84;
      v85(v89, v87, v88);
      sub_29E7544B8();
      sub_29E754468();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      sub_29E70509C(v157, v167, v89);
      v91 = v90;
      v92 = v155;
      v88 = v159;
      v85(v155, v169, v159);
      v93 = type metadata accessor for SleepScoreOverlayContext();
      v94 = objc_allocWithZone(v93);
      *&v94[OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_currentContextItem] = 0;
      *&v94[OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_baseDisplayType] = v91;
      *&v94[OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_overlayDisplayType] = 0;
      v95 = &v94[OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_itemProvider];
      v95[3] = v156;
      v95[4] = &off_2A2502AC8;
      v96 = sub_29E5FEBF4(v95);
      sub_29E616D8C(v92, v96, type metadata accessor for SleepScoreComponentOverlayContext);
      v170.receiver = v94;
      v170.super_class = v93;
      objc_msgSendSuper2(&v170, sel_init);
      v97 = v92;
      v89 = v169;
      sub_29E616DF4(v97, type metadata accessor for SleepScoreComponentOverlayContext);
      (*v165)(v89, v88);

      sub_29E754DE8();
      v98 = *(v172 + 16);
      sub_29E754E18();
      sub_29E754E28();
      sub_29E754DF8();
      v84 = v99;
      v87 += v166;
      --v83;
    }

    while (v83);

    v100 = v172;
    v70 = v134;
  }

  else
  {

    v100 = MEMORY[0x29EDCA190];
  }

  v101 = v137;
  sub_29E754118();
  sub_29E65B0B4(v101);
  v163(v101, v70);
  v102 = swift_allocObject();
  *(v102 + 16) = v161;

  if (v100 >> 62)
  {
    sub_29E754E68();
  }

  else
  {
    sub_29E755038();
  }

  v103 = objc_allocWithZone(MEMORY[0x29EDC47A8]);
  v104 = sub_29E7543D8();

  v105 = [v103 initWithSectionTitle:0 overlayContextItems:v104];

  *(v102 + 32) = v105;
  v106 = objc_allocWithZone(MEMORY[0x29EDC47B0]);
  v107 = sub_29E754198();

  v108 = sub_29E7543D8();

  v109 = [v106 initWithContainerTitle:v107 overlayContextSections:v108];

  v110 = v109;
  MEMORY[0x29ED96CE0]();
  if (*((v173 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v173 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v130 = *((v173 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_29E754418();
  }

  sub_29E754438();
  v111 = v173;
  v112 = [v135 buildFactorContextsAllowingDeselection_];
  if (v112)
  {
    v113 = v112;
    v114 = v137;
    sub_29E754118();
    sub_29E65B0B4(v114);
    v163(v114, v70);
    v115 = swift_allocObject();
    *(v115 + 16) = v161;
    v116 = [v113 activeFactorContexts];
    sub_29E609B5C(0, &qword_2A1856EA0, 0x29EDC47C8);
    v117 = sub_29E7543F8();

    v118 = [v113 inactiveFactorContexts];
    v119 = sub_29E7543F8();

    v172 = v117;
    sub_29E6DA74C(v119);
    if (v172 >> 62)
    {

      sub_29E754E68();
    }

    else
    {

      sub_29E755038();
    }

    v120 = objc_allocWithZone(MEMORY[0x29EDC47A8]);
    v121 = sub_29E7543D8();

    v122 = [v120 initWithSectionTitle:0 overlayContextItems:v121];

    *(v115 + 32) = v122;
    v123 = objc_allocWithZone(MEMORY[0x29EDC47B0]);
    v124 = sub_29E754198();

    v125 = sub_29E7543D8();

    v126 = [v123 initWithContainerTitle:v124 overlayContextSections:v125];

    v127 = v126;
    MEMORY[0x29ED96CE0]();
    if (*((v173 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v173 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v131 = *((v173 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_29E754418();
    }

    sub_29E754438();

    return v173;
  }

  else
  {
  }

  return v111;
}

id sub_29E6152DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  sub_29E617334(0, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v9 = &v40 - v8;
  v10 = sub_29E752098();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752068();
  v15 = sub_29E752088();
  v16 = sub_29E7546C8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v42 = a2;
    v18 = v17;
    v19 = swift_slowAlloc();
    v43 = a3;
    v20 = v19;
    v45 = v19;
    *v18 = 136446466;
    v21 = sub_29E755178();
    v23 = sub_29E6B9C90(v21, v22, &v45);
    v41 = v10;
    v24 = a1;
    v25 = v23;

    *(v18 + 4) = v25;
    *(v18 + 12) = 2048;
    *(v18 + 14) = v24;
    _os_log_impl(&dword_29E5ED000, v15, v16, "[%{public}s] creating view controller for mode: %ld", v18, 0x16u);
    sub_29E5FECBC(v20);
    v26 = v20;
    a3 = v43;
    MEMORY[0x29ED98410](v26, -1, -1);
    v27 = v18;
    a2 = v42;
    MEMORY[0x29ED98410](v27, -1, -1);

    (*(v11 + 8))(v14, v41);
    v28 = v24;
  }

  else
  {

    (*(v11 + 8))(v14, v10);
    v28 = a1;
  }

  sub_29E6172A0(a2, v9);
  v29 = v44;
  v30 = [v44 factorDisplayTypes];
  if (v30)
  {
    v31 = v30;
    sub_29E609B5C(0, &qword_2A1856EA8, 0x29EDC4678);
    v32 = sub_29E7543F8();
  }

  else
  {
    v32 = 0;
  }

  v33 = sub_29E74ED28();
  v34 = *(v33 - 8);
  v35 = 0;
  if ((*(v34 + 48))(v9, 1, v33) != 1)
  {
    v35 = sub_29E74EC98();
    (*(v34 + 8))(v9, v33);
  }

  if (v32)
  {
    sub_29E609B5C(0, &qword_2A1856EA8, 0x29EDC4678);
    v36 = sub_29E7543D8();
  }

  else
  {
    v36 = 0;
  }

  v37 = [objc_allocWithZone(type metadata accessor for SleepScoreOverlayRoomViewController()) initWithDisplayDate:v35 applicationItems:a3 factorDisplayTypes:v36 mode:v28];

  v38 = v37;
  [v38 setAdditionalChartOptions_];

  return v38;
}

id sub_29E6158E8()
{
  v1 = v0;
  v2 = MEMORY[0x29EDC9C68];
  sub_29E617334(0, &qword_2A1A7D368, MEMORY[0x29EDB9D18], MEMORY[0x29EDC9C68]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v6 = &v46 - v5;
  sub_29E617334(0, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8], v2);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v10 = &v46 - v9;
  v11 = *&v1[OBJC_IVAR____TtC20SleepHealthAppPlugin35SleepScoreOverlayRoomViewController_sleepScoreDisplayType];
  v12 = [v11 baseDisplayType];
  if (!v12)
  {
    v14 = 0;
    goto LABEL_5;
  }

  v13 = v12;
  v14 = [v12 hk_interactiveChartOptions];

  if ((v14 & 0x2000) == 0)
  {
LABEL_5:
    v14 |= 0x2000uLL;
  }

  v52 = [v1 additionalChartOptions];
  v15 = [v1 applicationItems];
  v53 = [v15 healthStore];

  v51 = v11;
  v16 = [v1 applicationItems];
  v50 = [v16 unitController];

  v17 = [v1 applicationItems];
  v49 = [v17 dateCache];

  v18 = [v1 applicationItems];
  v48 = [v18 chartDataCacheController];

  v19 = [v1 applicationItems];
  v47 = [v19 timeScopeController];

  v20 = [v1 applicationItems];
  v21 = [v20 sampleDateRangeController];

  v22 = [v1 displayDate];
  if (v22)
  {
    v23 = v22;
    sub_29E74ECD8();

    v24 = sub_29E74ED28();
    (*(*(v24 - 8) + 56))(v10, 0, 1, v24);
  }

  else
  {
    v24 = sub_29E74ED28();
    (*(*(v24 - 8) + 56))(v10, 1, 1, v24);
  }

  v25 = sub_29E74EE78();
  v26 = *(v25 - 8);
  (*(v26 + 56))(v6, 1, 1, v25);
  sub_29E74ED28();
  v27 = *(v24 - 8);
  v28 = 0;
  if ((*(v27 + 48))(v10, 1, v24) != 1)
  {
    v28 = sub_29E74EC98();
    (*(v27 + 8))(v10, v24);
  }

  v29 = (*(v26 + 48))(v6, 1, v25);
  v46 = v1;
  if (v29 == 1)
  {
    v30 = 0;
  }

  else
  {
    v30 = sub_29E74EE08();
    (*(v26 + 8))(v6, v25);
  }

  v31 = v52;
  if ((v52 & ~v14) == 0)
  {
    v31 = 0;
  }

  v32 = v31 | v14;
  v33 = objc_allocWithZone(MEMORY[0x29EDC4710]);
  v45 = v21;
  v34 = v53;
  v36 = v50;
  v35 = v51;
  v38 = v48;
  v37 = v49;
  v39 = v21;
  v40 = v47;
  v41 = [v33 initWithHealthStore:v53 primaryDisplayType:v51 unitPreferenceController:v50 dateCache:v49 chartDataCacheController:v48 selectedTimeScopeController:v47 sampleTypeDateRangeController:v45 initialXValue:v28 currentCalendarOverride:v30 options:v32];

  v42 = v41;
  v43 = v46;
  [v42 setCurrentValueViewDataSourceDelegate_];
  [v42 setCurrentOverlayLocationProvider_];

  return v42;
}

id sub_29E616250()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepScoreOverlayRoomViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SleepScoreOverlayRoomViewController()
{
  result = qword_2A1856E70;
  if (!qword_2A1856E70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E616358()
{
  result = sub_29E74F0D8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_29E6163F8()
{
  if (!qword_2A1A7BCE0)
  {
    v0 = sub_29E754FE8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7BCE0);
    }
  }
}

unint64_t sub_29E61644C()
{
  result = qword_2A1856E90;
  if (!qword_2A1856E90)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1856E90);
  }

  return result;
}

id sub_29E6164B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  sub_29E617334(0, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v13 = &v20 - v12;
  sub_29E6172A0(a2, &v20 - v12);
  v14 = sub_29E74ED28();
  v15 = *(v14 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    v16 = sub_29E74EC98();
    (*(v15 + 8))(v13, v14);
  }

  if (a4)
  {
    sub_29E609B5C(0, &qword_2A1856EA8, 0x29EDC4678);
    a4 = sub_29E7543D8();
  }

  v17 = [objc_allocWithZone(type metadata accessor for SleepScoreOverlayRoomViewController()) initWithDisplayDate:v16 applicationItems:a1 factorDisplayTypes:a4 mode:1];

  v18 = v17;
  [v18 setRestorationUserActivity_];
  [v18 setAdditionalChartOptions_];

  return v18;
}

uint64_t sub_29E616694(void *a1, uint64_t a2)
{
  v4 = sub_29E74F0D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = [a1 displayTypeController];
  v10 = [objc_opt_self() appleSleepScoreType];
  v11 = [v9 displayTypeForObjectType_];

  if (v11)
  {
    v12 = [v11 displayCategory];
    v13 = [a1 unitController];
    v14 = [a1 chartDataCacheController];
    v15 = [v11 hk:5 standardSeriesForTimeScope:v12 displayCategory:v13 unitController:v14 dataCacheController:?];

    if (v15)
    {
      (*(v5 + 16))(v8, a2, v4);
      v16 = objc_allocWithZone(sub_29E753DE8());
      v17 = sub_29E753DD8();
      [v15 setYAxis_];

      v18 = [objc_allocWithZone(type metadata accessor for SleepScoreChartTapOutFormatter()) init];
      sub_29E617334(0, &qword_2A1856EB8, sub_29E617398, MEMORY[0x29EDC9E90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_29E764170;
      *(inited + 32) = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
      *(inited + 40) = v15;
      v20 = objc_allocWithZone(MEMORY[0x29EDBA070]);
      v21 = v15;
      *(inited + 48) = [v20 initWithInteger_];
      *(inited + 56) = v21;
      v22 = objc_allocWithZone(MEMORY[0x29EDBA070]);
      v23 = v21;
      *(inited + 64) = [v22 initWithInteger_];
      *(inited + 72) = v23;
      v24 = v23;
      sub_29E68B114(inited);
      swift_setDeallocating();
      sub_29E617398();
      swift_arrayDestroy();
      v25 = objc_allocWithZone(MEMORY[0x29EDC4700]);
      sub_29E609B5C(0, &qword_2A1856EC8, 0x29EDBA070);
      sub_29E609B5C(0, &qword_2A1856ED0, 0x29EDC46A0);
      sub_29E617428();
      v26 = sub_29E754068();

      v27 = [v25 initWithBaseDisplayType:v11 valueFormatter:v18 dataTypeCode:341 seriesForTimeScopeMapping:v26];

      return v27;
    }
  }

  result = sub_29E754E48();
  __break(1u);
  return result;
}

id sub_29E616AB8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a4;
  sub_29E617334(0, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v12 = &v26 - v11;
  v13 = sub_29E74F0D8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E74F148();
  sub_29E74F138();
  sub_29E74F128();

  (*(v14 + 16))(&v4[OBJC_IVAR____TtC20SleepHealthAppPlugin35SleepScoreOverlayRoomViewController_algorithmVersion], v17, v13);
  v18 = a2;
  *&v4[OBJC_IVAR____TtC20SleepHealthAppPlugin35SleepScoreOverlayRoomViewController_sleepScoreDisplayType] = sub_29E616694(a2, v17);
  v26 = a1;
  sub_29E6172A0(a1, v12);
  v19 = sub_29E74ED28();
  v20 = *(v19 - 8);
  v21 = 0;
  if ((*(v20 + 48))(v12, 1, v19) != 1)
  {
    v21 = sub_29E74EC98();
    (*(v20 + 8))(v12, v19);
  }

  if (a3)
  {
    sub_29E609B5C(0, &qword_2A1856EA8, 0x29EDC4678);
    v22 = sub_29E7543D8();
  }

  else
  {
    v22 = 0;
  }

  v23 = type metadata accessor for SleepScoreOverlayRoomViewController();
  v28.receiver = v5;
  v28.super_class = v23;
  v24 = objc_msgSendSuper2(&v28, sel_initWithDisplayDate_applicationItems_factorDisplayTypes_mode_, v21, v18, v22, v27);

  sub_29E617214(v26);
  (*(v14 + 8))(v17, v13);
  return v24;
}

uint64_t sub_29E616D8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E616DF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E616E54(uint64_t a1, void *a2)
{
  swift_getObjectType();
  v4 = sub_29E752098();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752068();
  v9 = sub_29E752088();
  v10 = sub_29E7546C8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v21 = a1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136446466;
    v14 = sub_29E755178();
    v16 = sub_29E6B9C90(v14, v15, &v23);
    v22 = v4;
    v17 = a2;
    v18 = v16;

    *(v12 + 4) = v18;
    a2 = v17;
    *(v12 + 12) = 2048;
    *(v12 + 14) = v21;
    _os_log_impl(&dword_29E5ED000, v9, v10, "[%{public}s] building containers for mode: %ld", v12, 0x16u);
    sub_29E5FECBC(v13);
    MEMORY[0x29ED98410](v13, -1, -1);
    MEMORY[0x29ED98410](v12, -1, -1);

    (*(v5 + 8))(v8, v22);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  return sub_29E613FB4(a2);
}

id sub_29E617058(uint64_t a1)
{
  swift_getObjectType();
  v2 = sub_29E752098();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752068();
  v7 = sub_29E752088();
  v8 = sub_29E7546C8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    v11 = sub_29E755178();
    v13 = sub_29E6B9C90(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_29E5ED000, v7, v8, "[%{public}s] opening info from current value view", v9, 0xCu);
    sub_29E5FECBC(v10);
    MEMORY[0x29ED98410](v10, -1, -1);
    MEMORY[0x29ED98410](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return sub_29E660120(a1);
}

uint64_t sub_29E617214(uint64_t a1)
{
  sub_29E617334(0, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E6172A0(uint64_t a1, uint64_t a2)
{
  sub_29E617334(0, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29E617334(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E617398()
{
  if (!qword_2A1856EC0)
  {
    sub_29E609B5C(255, &qword_2A1856EC8, 0x29EDBA070);
    sub_29E609B5C(255, &qword_2A1856ED0, 0x29EDC46A0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1856EC0);
    }
  }
}

unint64_t sub_29E617428()
{
  result = qword_2A1856ED8;
  if (!qword_2A1856ED8)
  {
    sub_29E609B5C(255, &qword_2A1856EC8, 0x29EDBA070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856ED8);
  }

  return result;
}

uint64_t type metadata accessor for SleepScoreLevelOverlayContext()
{
  result = qword_2A1856EE0;
  if (!qword_2A1856EE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E617504()
{
  result = sub_29E74EF88();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

BOOL sub_29E617570()
{
  v0 = sub_29E74EF88();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E74F098();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E753E78();
  sub_29E74F088();
  (*(v6 + 8))(v9, v5);
  sub_29E617E68();
  sub_29E7543B8();
  sub_29E7543B8();
  (*(v1 + 8))(v4, v0);
  return v11[3] == v11[1];
}

uint64_t sub_29E617738(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = 0;
  v8 = 0;
  v9 = *(a3 + 16);
  while (1)
  {
    if (v9 == v8)
    {
      return v7;
    }

    v10 = *(sub_29E753EA8() - 8);
    result = a1(a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8);
    if (v4)
    {
      break;
    }

    v4 = 0;
    ++v8;
    v12 = __OFADD__(v7, result & 1);
    v7 += result & 1;
    if (v12)
    {
      __break(1u);
      return v7;
    }
  }

  __break(1u);
  return result;
}

void sub_29E617820(uint64_t a1, uint64_t a2, char a3)
{
  if (a1 < 1)
  {
    v10 = sub_29E754198();
    v11 = HKUILocalizedString();

    if (!v11)
    {
      __break(1u);
      return;
    }

    sub_29E7541D8();

    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_29E617A74(a1, a2, 0);
    v9 = v12;
    goto LABEL_7;
  }

  sub_29E617DAC();
  v6 = swift_allocObject();
  v7 = MEMORY[0x29EDC9BA8];
  *(v6 + 16) = xmmword_29E762F30;
  v8 = MEMORY[0x29EDC9C10];
  *(v6 + 56) = v7;
  *(v6 + 64) = v8;
  *(v6 + 32) = a1;
  sub_29E7541A8();

  if ((a3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = 0;
LABEL_7:
  v13 = [objc_allocWithZone(MEMORY[0x29EDC4680]) init];
  sub_29E74EF58();
  v14 = sub_29E754198();

  [v13 setTitle_];

  v15 = [objc_opt_self() defaultMetricColorsForOverlayMode_];
  [v13 setMetricColors_];

  v16 = [objc_opt_self() sleepColors];
  [v13 setSelectedMetricColors_];

  v17 = sub_29E754198();

  [v13 setValue_];

  if (v9)
  {
    v18 = sub_29E754198();
  }

  else
  {
    v18 = 0;
  }

  [v13 setUnit_];
}

uint64_t sub_29E617A74(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_29E754168();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = sub_29E754188();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v18 - v14;
  if ((a3 & 1) != 0 || a2 != 3)
  {
    if (a1 < 1)
    {
      sub_29E754118();
    }

    else
    {
      sub_29E754158();
      sub_29E754148();
      v19 = a1;
      sub_29E754128();
      sub_29E754148();
      sub_29E754178();
    }

    v15 = v13;
  }

  else if (a1 < 1)
  {
    sub_29E754118();
  }

  else
  {
    sub_29E754158();
    sub_29E754148();
    v19 = a1;
    sub_29E754128();
    sub_29E754148();
    sub_29E754178();
  }

  v16 = sub_29E65B0B4(v15);
  (*(v9 + 8))(v15, v8);
  return v16;
}

void sub_29E617DAC()
{
  if (!qword_2A1A7D3D8)
  {
    sub_29E617E04();
    v0 = sub_29E754FE8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7D3D8);
    }
  }
}

unint64_t sub_29E617E04()
{
  result = qword_2A1A7D3D0;
  if (!qword_2A1A7D3D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A7D3D0);
  }

  return result;
}

unint64_t sub_29E617E68()
{
  result = qword_2A1856EF0;
  if (!qword_2A1856EF0)
  {
    sub_29E74EF88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856EF0);
  }

  return result;
}

uint64_t sub_29E617EC0()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29E752098();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v2);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v43 - v8;
  v10 = OBJC_IVAR____TtC20SleepHealthAppPlugin22ScheduleOccurrenceCell_item;
  swift_beginAccess();
  sub_29E60BC20(v1 + v10, v45);
  if (!v45[3])
  {
    sub_29E60BC9C(v45, &qword_2A1856AD0, &qword_2A1858310);
    v46 = 0u;
    v47 = 0u;
    v48 = 0;
    goto LABEL_8;
  }

  sub_29E609CF8(0, &qword_2A1858310);
  sub_29E609CF8(0, &qword_2A1856F08);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
LABEL_8:
    sub_29E60BC9C(&v46, &qword_2A1856F00, &qword_2A1856F08);
    sub_29E752048();
    v27 = v1;
    v28 = sub_29E752088();
    v29 = sub_29E7546A8();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v46 = v31;
      *v30 = 136446467;
      v32 = sub_29E755178();
      v34 = sub_29E6B9C90(v32, v33, &v46);
      v44 = v2;
      v35 = v34;

      *(v30 + 4) = v35;
      *(v30 + 12) = 2081;
      sub_29E60BC20(v1 + v10, v49);
      sub_29E60BCF8(0, &qword_2A1856AD0, &qword_2A1858310);
      v36 = sub_29E7541F8();
      v38 = sub_29E6B9C90(v36, v37, &v46);

      *(v30 + 14) = v38;
      _os_log_impl(&dword_29E5ED000, v28, v29, "[%{public}s] Received invalid item: %{private}s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v31, -1, -1);
      MEMORY[0x29ED98410](v30, -1, -1);

      return (*(v3 + 8))(v7, v44);
    }

    else
    {

      return (*(v3 + 8))(v7, v2);
    }
  }

  if (!*(&v47 + 1))
  {
    goto LABEL_8;
  }

  sub_29E5FAEE4(&v46, v49);
  sub_29E752048();
  sub_29E602E20(v49, &v46);
  v11 = sub_29E752088();
  v12 = sub_29E7546C8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v45[0] = v43;
    *v13 = 136446467;
    v14 = sub_29E755178();
    v16 = sub_29E6B9C90(v14, v15, v45);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2081;
    v17 = *(&v47 + 1);
    v18 = sub_29E601938(&v46, *(&v47 + 1));
    v44 = v2;
    v19 = *(*(v17 - 8) + 64);
    MEMORY[0x2A1C7C4A8](v18);
    (*(v21 + 16))(&v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    v22 = sub_29E7541F8();
    v24 = v23;
    sub_29E5FECBC(&v46);
    v25 = sub_29E6B9C90(v22, v24, v45);

    *(v13 + 14) = v25;
    _os_log_impl(&dword_29E5ED000, v11, v12, "[%{public}s] Received item: %{private}s", v13, 0x16u);
    v26 = v43;
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v26, -1, -1);
    MEMORY[0x29ED98410](v13, -1, -1);

    (*(v3 + 8))(v9, v44);
  }

  else
  {

    (*(v3 + 8))(v9, v2);
    sub_29E5FECBC(&v46);
  }

  sub_29E619138();
  [v1 setNeedsUpdateConfiguration];
  sub_29E602E20(v49, v45);
  sub_29E609CF8(0, &qword_2A1856F10);
  if (swift_dynamicCast())
  {
    sub_29E601938(&v46, *(&v47 + 1));
    sub_29E751868();
    v41 = v40;
    sub_29E5FECBC(&v46);
    if (v41)
    {
      v42 = sub_29E754198();
    }

    else
    {
      v42 = 0;
    }
  }

  else
  {
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    sub_29E60BC9C(&v46, &qword_2A1856F18, &qword_2A1856F10);
    v42 = 0;
  }

  [v1 setAccessibilityIdentifier_];

  return sub_29E5FECBC(v49);
}

uint64_t sub_29E618600()
{
  v1 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) init];
  [v0 setBackgroundView_];

  v2 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) init];
  [v0 setSelectedBackgroundView_];

  [v0 setAutomaticallyUpdatesBackgroundConfiguration_];
  *(swift_allocObject() + 16) = v0;
  v3 = v0;
  return sub_29E7549C8();
}

uint64_t sub_29E6186D8()
{
  sub_29E6197C8();
  v2[3] = v0;
  v2[4] = sub_29E619C24(&qword_2A1856F78, sub_29E6197C8);
  sub_29E5FEBF4(v2);
  sub_29E619C6C(0, &qword_2A1856F28, MEMORY[0x29EDBC7F0]);
  sub_29E619B58();
  sub_29E753218();
  return MEMORY[0x29ED972D0](v2);
}

uint64_t sub_29E6187B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29E619864();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E619C6C(0, &qword_2A1856F80, MEMORY[0x29EDBC7E8]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v19[-v10];
  sub_29E619C6C(0, &qword_2A1856F28, MEMORY[0x29EDBC7F0]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v15 = &v19[-v14];
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = OBJC_IVAR____TtC20SleepHealthAppPlugin22ScheduleOccurrenceCell_item;
  swift_beginAccess();
  sub_29E60BC20(a1 + v16, v20);
  if (!v21)
  {
    sub_29E60BC9C(v20, &qword_2A1856AD0, &qword_2A1858310);
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
    goto LABEL_9;
  }

  sub_29E609CF8(0, &qword_2A1858310);
  sub_29E609CF8(0, &qword_2A1856F08);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    goto LABEL_9;
  }

  if (!*(&v23 + 1))
  {
LABEL_9:
    sub_29E60BC9C(&v22, &qword_2A1856F00, &qword_2A1856F08);
    swift_storeEnumTagMultiPayload();
    sub_29E619C24(&qword_2A1856F70, sub_29E619864);
    sub_29E753118();
    goto LABEL_10;
  }

  sub_29E5FAEE4(&v22, v25);
  *v7 = sub_29E752FF8();
  *(v7 + 1) = 0x4014000000000000;
  v7[16] = 0;
  sub_29E619CD4();
  sub_29E618B84(v25, &v7[*(v17 + 44)]);
  sub_29E5F1414(v7, v11);
  swift_storeEnumTagMultiPayload();
  sub_29E619C24(&qword_2A1856F70, sub_29E619864);
  sub_29E753118();
  sub_29E5F1478(v7);
  sub_29E5FECBC(v25);
LABEL_10:
  sub_29E5F1394(v15, a2);
}

uint64_t sub_29E618B84@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_29E74F9E8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v41 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E74F8F8();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x2A1C7C4A8](v6);
  v42 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v38 - v11;
  sub_29E6199FC();
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v39 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6198F8(0, &qword_2A1856F48, sub_29E6199FC, MEMORY[0x29EDC9C68]);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x2A1C7C4A8](v18 - 8);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20);
  v24 = &v38 - v23;
  sub_29E7544C8();
  v40 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E602E20(a1, v52);
  sub_29E609CF8(0, &qword_2A1856F08);
  sub_29E609CF8(0, &qword_2A1856F90);
  if (swift_dynamicCast())
  {
    v38 = v14;
    sub_29E5FAEE4(v51, v48);
    v26 = v49;
    v25 = v50;
    sub_29E601938(v48, v49);
    (*(v25 + 8))(v51, v26, v25);
    v44 = *v51;
    v45 = v51[16];
    v46 = *&v51[24];
    v47 = *&v51[32];
    v27 = v49;
    v28 = v50;
    sub_29E601938(v48, v49);
    (*(v28 + 8))(v52, v27, v28);
    v55 = *&v52[3];
    v56 = *v52;
    sub_29E619D6C(&v55);
    if (*(&v56 + 1))
    {
      sub_29E619DC0(&v56);
    }

    v53 = *v51;
    v54 = *&v51[24];
    sub_29E619A7C();
    v29 = v39;
    sub_29E753648();
    sub_29E619DC0(&v53);
    sub_29E619D6C(&v54);
    v30 = v38;
    (*(v15 + 32))(v24, v29, v38);
    (*(v15 + 56))(v24, 0, 1, v30);
    sub_29E5FECBC(v48);
  }

  else
  {
    memset(v51, 0, sizeof(v51));
    sub_29E60BC9C(v51, &qword_2A1856F98, &qword_2A1856F90);
    (*(v15 + 56))(v24, 1, 1, v14);
  }

  v31 = a1[4];
  sub_29E601938(a1, a1[3]);
  sub_29E74FA48();
  sub_29E74F8E8();
  sub_29E5F14D4(v24, v22);
  v32 = v7[2];
  v33 = v42;
  v32(v42, v12, v6);
  v34 = v43;
  sub_29E5F14D4(v22, v43);
  sub_29E61995C();
  v32((v34 + *(v35 + 48)), v33, v6);
  v36 = v7[1];
  v36(v12, v6);
  sub_29E5F1568(v24);
  v36(v33, v6);
  sub_29E5F1568(v22);
}

id sub_29E619138()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20SleepHealthAppPlugin22ScheduleOccurrenceCell_item;
  swift_beginAccess();
  sub_29E60BC20(v1 + v2, v7);
  if (!v8)
  {
    sub_29E60BC9C(v7, &qword_2A1856AD0, &qword_2A1858310);
    v9 = 0u;
    v10 = 0u;
    v11 = 0;
    goto LABEL_7;
  }

  sub_29E609CF8(0, &qword_2A1858310);
  sub_29E609CF8(0, &qword_2A1856FA8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    goto LABEL_7;
  }

  v3 = *(&v10 + 1);
  if (!*(&v10 + 1))
  {
LABEL_7:
    sub_29E60BC9C(&v9, &qword_2A1856FA0, &qword_2A1856FA8);
    v5 = 1;
    return [v1 setUserInteractionEnabled_];
  }

  v4 = v11;
  sub_29E601938(&v9, *(&v10 + 1));
  v5 = (*(v4 + 8))(v3, v4);
  sub_29E5FECBC(&v9);
  return [v1 setUserInteractionEnabled_];
}

id sub_29E6194CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScheduleOccurrenceCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E619560@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20SleepHealthAppPlugin22ScheduleOccurrenceCell_item;
  swift_beginAccess();
  return sub_29E60BC20(v1 + v3, a1);
}

uint64_t sub_29E6195B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20SleepHealthAppPlugin22ScheduleOccurrenceCell_item;
  swift_beginAccess();
  sub_29E61973C(a1, v1 + v3);
  swift_endAccess();
  sub_29E617EC0();
  return sub_29E60BC9C(a1, &qword_2A1856AD0, &qword_2A1858310);
}

uint64_t (*sub_29E61963C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_29E6196A0;
}

uint64_t sub_29E6196A0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_29E617EC0();
  }

  return result;
}

void sub_29E6196D8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (a2)
  {
    v4 = sub_29E754198();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v3 setAccessibilityIdentifier_];
}

uint64_t sub_29E61973C(uint64_t a1, uint64_t a2)
{
  sub_29E60BCF8(0, &qword_2A1856AD0, &qword_2A1858310);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_29E6197C8()
{
  if (!qword_2A1856F20)
  {
    sub_29E619C6C(255, &qword_2A1856F28, MEMORY[0x29EDBC7F0]);
    sub_29E619B58();
    v0 = sub_29E753228();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1856F20);
    }
  }
}

void sub_29E619864()
{
  if (!qword_2A1856F30)
  {
    sub_29E6198F8(255, &qword_2A1856F38, sub_29E61995C, MEMORY[0x29EDBCC28]);
    sub_29E619AD0();
    v0 = sub_29E753AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1856F30);
    }
  }
}

void sub_29E6198F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E61995C()
{
  if (!qword_2A1856F40)
  {
    sub_29E6198F8(255, &qword_2A1856F48, sub_29E6199FC, MEMORY[0x29EDC9C68]);
    sub_29E74F8F8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1856F40);
    }
  }
}

void sub_29E6199FC()
{
  if (!qword_2A1856F50)
  {
    sub_29E619A7C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1856F50);
    }
  }
}

unint64_t sub_29E619A7C()
{
  result = qword_2A1856F58;
  if (!qword_2A1856F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856F58);
  }

  return result;
}

unint64_t sub_29E619AD0()
{
  result = qword_2A1856F60;
  if (!qword_2A1856F60)
  {
    sub_29E6198F8(255, &qword_2A1856F38, sub_29E61995C, MEMORY[0x29EDBCC28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856F60);
  }

  return result;
}

unint64_t sub_29E619B58()
{
  result = qword_2A1856F68;
  if (!qword_2A1856F68)
  {
    sub_29E619C6C(255, &qword_2A1856F28, MEMORY[0x29EDBC7F0]);
    sub_29E619C24(&qword_2A1856F70, sub_29E619864);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856F68);
  }

  return result;
}

uint64_t sub_29E619C24(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E619C6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_29E619864();
    v7 = a3(a1, v6, MEMORY[0x29EDBCBF8]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29E619CD4()
{
  if (!qword_2A1856F88)
  {
    sub_29E6198F8(255, &qword_2A1856F38, sub_29E61995C, MEMORY[0x29EDBCC28]);
    v0 = sub_29E752B08();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1856F88);
    }
  }
}

uint64_t sub_29E619DC0(uint64_t a1)
{
  sub_29E619E1C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E619E1C()
{
  if (!qword_2A1A7D0C8)
  {
    v0 = sub_29E754BD8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7D0C8);
    }
  }
}

uint64_t sub_29E619EF0(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_29E74ED88();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_2A1856FC0) = 0;
  sub_29E602E20(a1, v2 + qword_2A1856FB0);
  *(v2 + qword_2A1856FB8) = a2;
  v20[0] = 0;
  v20[1] = 0xE000000000000000;

  sub_29E754D78();

  strcpy(v20, "MutableArray<");
  HIWORD(v20[1]) = -4864;
  sub_29E74ED78();
  v11 = sub_29E74ED48();
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  MEMORY[0x29ED96C20](v11, v13);

  MEMORY[0x29ED96C20](62, 0xE100000000000000);
  v14 = sub_29E750D08();
  v20[0] = a2;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v5;
  sub_29E60990C();
  sub_29E61BF24(&qword_2A18569F0, sub_29E60990C);

  v17 = sub_29E7529A8();

  sub_29E5FECBC(a1);

  v18 = *(v14 + qword_2A1856FC0);
  *(v14 + qword_2A1856FC0) = v17;

  return v14;
}

uint64_t sub_29E61A1B8()
{
  v19 = sub_29E752098();
  v0 = *(v19 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x2A1C7C4A8](v19);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E753D78();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
  }

  sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
  *v8 = sub_29E754908();
  (*(v5 + 104))(v8, *MEMORY[0x29EDCA278], v4);
  v9 = sub_29E753DA8();
  result = (*(v5 + 8))(v8, v4);
  if (v9)
  {
    sub_29E752048();
    v11 = sub_29E752088();
    v12 = sub_29E7546C8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v13 = 136446210;
      v15 = sub_29E755178();
      v17 = sub_29E6B9C90(v15, v16, &v20);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_29E5ED000, v11, v12, "[%{public}s] Responding to sleep schedule change", v13, 0xCu);
      sub_29E5FECBC(v14);
      MEMORY[0x29ED98410](v14, -1, -1);
      MEMORY[0x29ED98410](v13, -1, -1);
    }

    (*(v0 + 8))(v3, v19);
    sub_29E61A4F8();
  }

  __break(1u);
  return result;
}

uint64_t sub_29E61A4F8()
{
  v0 = sub_29E74F9B8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v103 = &v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_29E74F698();
  v93 = *(v102 - 8);
  v3 = *(v93 + 64);
  MEMORY[0x2A1C7C4A8](v102);
  v101 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SleepOnboardingScheduleItem(0);
  v99 = *(v5 - 8);
  v100 = v5;
  v6 = *(v99 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v104 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E74ED88();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E750CA8();
  v92 = *(v13 - 8);
  v14 = *(v92 + 64);
  v15 = MEMORY[0x2A1C7C4A8](v13);
  v86 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v87 = &v76 - v18;
  v19 = MEMORY[0x2A1C7C4A8](v17);
  v21 = &v76 - v20;
  MEMORY[0x2A1C7C4A8](v19);
  v23 = &v76 - v22;
  sub_29E61BF94();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_29E762F30;
  v25 = qword_2A1856FB0;
  *(v24 + 56) = &type metadata for SleepOnboardingItem;
  *(v24 + 64) = sub_29E61C050();
  v26 = swift_allocObject();
  *(v24 + 32) = v26;
  type metadata accessor for SleepOnboardingItemCell();
  sub_29E61BF24(&qword_2A1856FE8, type metadata accessor for SleepOnboardingItemCell);
  v26[2] = sub_29E7506A8();
  v26[3] = v27;
  v26[4] = 0xD000000000000013;
  v26[5] = 0x800000029E764390;
  sub_29E602E20(v91 + v25, (v26 + 6));
  sub_29E74ED78();
  sub_29E74ED48();
  v28 = *(v9 + 8);
  v83 = v12;
  v85 = v8;
  v84 = v9 + 8;
  v81 = v28;
  v28(v12, v8);
  sub_29E750C98();
  v29 = *(v92 + 16);
  v88 = v23;
  v90 = v13;
  v82 = v92 + 16;
  v80 = v29;
  v29(v21, v23, v13);
  v30 = MEMORY[0x29EDCA190];
  v31 = sub_29E6DAEB0(0, 1, 1, MEMORY[0x29EDCA190]);
  v33 = *(v31 + 2);
  v32 = *(v31 + 3);
  v34 = (v33 + 1);
  if (v33 >= v32 >> 1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    *(v31 + 2) = v34;
    v35 = *(v92 + 32);
    v36 = (*(v92 + 80) + 32) & ~*(v92 + 80);
    v89 = v31;
    v77 = v36;
    v76 = *(v92 + 72);
    v37 = &v31[v36 + v76 * v33];
    v38 = v90;
    v79 = v92 + 32;
    v78 = v35;
    v35(v37, v21, v90);
    v39 = *(v91 + qword_2A1856FB8);
    sub_29E7527B8();
    v40 = v106;
    if (!v106)
    {
      v48 = v92;
      goto LABEL_42;
    }

    v41 = [v106 occurrences];

    sub_29E609B5C(0, &qword_2A1856A10, 0x29EDC68C0);
    v21 = sub_29E7543F8();

    v105 = v30;
    v30 = v21 >> 62 ? sub_29E754C98() : *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v34 = MEMORY[0x29EDCA190];
    if (!v30)
    {
      break;
    }

    v33 = 0;
    while (1)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v43 = MEMORY[0x29ED976A0](v33, v21);
      }

      else
      {
        v32 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v33 >= v32)
        {
          goto LABEL_37;
        }

        v43 = *(v21 + 8 * v33 + 32);
      }

      v44 = v43;
      v45 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      sub_29E7544C8();
      v34 = sub_29E7544B8();
      sub_29E754468();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v46 = [v44 isSingleDayOverride];

      if (v46)
      {
      }

      else
      {
        v34 = &v105;
        sub_29E754DE8();
        v42 = *(v105 + 16);
        sub_29E754E18();
        sub_29E754E28();
        sub_29E754DF8();
      }

      ++v33;
      if (v45 == v30)
      {
        v47 = v105;
        v38 = v90;
        v34 = MEMORY[0x29EDCA190];
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    v31 = sub_29E6DAEB0(v32 > 1, v34, 1, v31);
  }

  v47 = MEMORY[0x29EDCA190];
LABEL_21:

  v48 = v92;
  if ((v47 & 0x8000000000000000) == 0 && (v47 & 0x4000000000000000) == 0)
  {
    v49 = *(v47 + 16);
    if (v49 > 0)
    {
      goto LABEL_24;
    }

LABEL_41:

    goto LABEL_42;
  }

  v49 = sub_29E754C98();
  if (v49 <= 0)
  {
    goto LABEL_41;
  }

LABEL_24:
  v106 = v34;
  sub_29E6DBBAC(0, v49, 0);
  v50 = v106;
  v51 = sub_29E7544C8();
  v52 = 0;
  v96 = v47 & 0xC000000000000001;
  v97 = v51;
  v95 = *MEMORY[0x29EDC6AD0];
  v53 = (v93 + 104);
  v93 += 8;
  v94 = v53;
  v54 = v104;
  v98 = v49;
  v55 = v102;
  do
  {
    if (v96)
    {
      v56 = MEMORY[0x29ED976A0](v52, v47);
    }

    else
    {
      v56 = *(v47 + 8 * v52 + 32);
    }

    v57 = v56;
    v58 = v47;
    sub_29E7544B8();
    sub_29E754468();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v59 = (v54 + *(v100 + 20));
    v60 = v101;
    (*v94)(v101, v95, v55);
    v61 = sub_29E754258();
    v63 = v62;
    v64 = v60;
    v54 = v104;
    (*v93)(v64, v55);
    *v59 = v61;
    v59[1] = v63;
    v65 = v57;
    sub_29E74F988();
    sub_29E74F968();

    v106 = v50;
    v67 = v50[2];
    v66 = v50[3];
    if (v67 >= v66 >> 1)
    {
      sub_29E6DBBAC(v66 > 1, v67 + 1, 1);
      v50 = v106;
    }

    ++v52;
    v50[2] = v67 + 1;
    sub_29E61C0A4(v54, v50 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v67);
    v47 = v58;
  }

  while (v98 != v52);

  sub_29E6CC508(v50);

  v68 = v83;
  sub_29E74ED78();
  sub_29E74ED48();
  v81(v68, v85);
  v69 = v87;
  sub_29E750C98();
  v70 = v86;
  v71 = v69;
  v38 = v90;
  v80(v86, v71, v90);
  v73 = *(v89 + 2);
  v72 = *(v89 + 3);
  if (v73 >= v72 >> 1)
  {
    v89 = sub_29E6DAEB0(v72 > 1, v73 + 1, 1, v89);
  }

  v48 = v92;
  (*(v92 + 8))(v87, v38);
  v74 = v89;
  *(v89 + 2) = v73 + 1;
  v78(&v74[v77 + v73 * v76], v70, v38);
LABEL_42:
  sub_29E750D18();

  return (*(v48 + 8))(v88, v38);
}

uint64_t sub_29E61AFA0()
{
  sub_29E5FECBC((v0 + qword_2A1856FB0));
  v1 = *(v0 + qword_2A1856FB8);

  v2 = *(v0 + qword_2A1856FC0);
}

uint64_t sub_29E61AFF0()
{
  v0 = sub_29E750D58();
  v1 = qword_2A1856FB0;

  sub_29E5FECBC((v2 + v1));
  v3 = *(v0 + qword_2A1856FB8);

  v4 = *(v0 + qword_2A1856FC0);

  return swift_deallocClassInstance();
}

uint64_t sub_29E61B0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_29E74ED88();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E752258();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = *MEMORY[0x29EDC8048];
  if (sub_29E7541D8() == a1 && v14 == a2)
  {
  }

  else
  {
    v16 = sub_29E755028();

    if ((v16 & 1) == 0)
    {
      if (qword_2A1A7D6F0 != -1)
      {
        swift_once();
      }

      sub_29E74E9D8();
      v25[0] = 0x74497265746F6F46;
      v25[1] = 0xEB000000005F6D65;
      sub_29E74ED78();
      v17 = sub_29E74ED48();
      v19 = v18;
      (*(v7 + 8))(v10, v6);
      MEMORY[0x29ED96C20](v17, v19);

      a3[3] = sub_29E751628();
      a3[4] = sub_29E61BF24(&qword_2A1856D88, MEMORY[0x29EDC28B0]);
      sub_29E5FEBF4(a3);
      return sub_29E751618();
    }
  }

  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  sub_29E7521F8();
  v21 = sub_29E750458();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = sub_29E750438();
  a3[3] = v21;
  result = sub_29E61BF24(&qword_2A1856FE0, MEMORY[0x29EDC1C30]);
  a3[4] = result;
  *a3 = v24;
  return result;
}

uint64_t sub_29E61B4B0()
{
  type metadata accessor for SleepOnboardingItemCell();
  sub_29E61BF24(&qword_2A1856FE8, type metadata accessor for SleepOnboardingItemCell);
  sub_29E7547D8();
  type metadata accessor for ScheduleOccurrenceCell();
  sub_29E61BF24(&qword_2A18569D0, type metadata accessor for ScheduleOccurrenceCell);
  sub_29E7547D8();
  sub_29E7515F8();
  return sub_29E7547E8();
}

uint64_t sub_29E61B588()
{
  type metadata accessor for ScheduleOccurrenceCell();
  sub_29E61BF24(&qword_2A18569D0, type metadata accessor for ScheduleOccurrenceCell);
  return sub_29E7506A8();
}

uint64_t sub_29E61B5F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29E74F9E8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_29E61B658(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_29E61B690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 20));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*sub_29E61B6D0(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_29E61B6F4(uint64_t a1)
{
  sub_29E7550C8();
  sub_29E74F9E8();
  sub_29E61BF24(&qword_2A18569D8, MEMORY[0x29EDC6B70]);
  sub_29E7540B8();
  v3 = (v1 + *(a1 + 20));
  if (v3[1])
  {
    v4 = *v3;
    sub_29E7550E8();
    sub_29E7542D8();
  }

  else
  {
    sub_29E7550E8();
  }

  return sub_29E755108();
}

uint64_t sub_29E61B7C8(uint64_t a1, uint64_t a2)
{
  sub_29E74F9E8();
  sub_29E61BF24(&qword_2A18569D8, MEMORY[0x29EDC6B70]);
  sub_29E7540B8();
  v4 = (v2 + *(a2 + 20));
  if (!v4[1])
  {
    return sub_29E7550E8();
  }

  v5 = *v4;
  sub_29E7550E8();

  return sub_29E7542D8();
}

uint64_t sub_29E61B89C(uint64_t a1, uint64_t a2)
{
  sub_29E7550C8();
  sub_29E74F9E8();
  sub_29E61BF24(&qword_2A18569D8, MEMORY[0x29EDC6B70]);
  sub_29E7540B8();
  v4 = (v2 + *(a2 + 20));
  if (v4[1])
  {
    v5 = *v4;
    sub_29E7550E8();
    sub_29E7542D8();
  }

  else
  {
    sub_29E7550E8();
  }

  return sub_29E755108();
}

uint64_t sub_29E61B96C()
{
  sub_29E61C368();
  v2 = sub_29E7541F8();
  MEMORY[0x29ED96C20](45, 0xE100000000000000);
  sub_29E74F9E8();
  sub_29E61BF24(&qword_2A1856A58, MEMORY[0x29EDC6B70]);
  v0 = sub_29E754FD8();
  MEMORY[0x29ED96C20](v0);

  return v2;
}

uint64_t sub_29E61BA30(uint64_t a1)
{
  v2 = sub_29E61BF24(&qword_2A1857028, type metadata accessor for SleepOnboardingScheduleItem);

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29E61BAAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0x29ED922E0]())
  {
    v6 = *(a3 + 20);
    v7 = (a1 + v6);
    v8 = *(a1 + v6 + 8);
    v9 = (a2 + v6);
    v10 = v9[1];
    if (v8)
    {
      if (v10)
      {
        v11 = *v7 == *v9 && v8 == v10;
        if (v11 || (sub_29E755028() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v10)
    {
      return 1;
    }
  }

  return 0;
}

id sub_29E61BB78()
{
  v16 = sub_29E750698();
  v1 = *(v16 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E74FDC8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7508C8();
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = v0[8];
  sub_29E601938(v0 + 4, v0[7]);
  sub_29E74F5B8();
  v11 = sub_29E74FF48();
  v12 = v0[8];
  sub_29E601938(v0 + 4, v0[7]);
  sub_29E74F5B8();
  v13 = sub_29E74FF38();
  v18 = v11;
  v19 = MEMORY[0x29EDC3970];
  v17 = v13;
  sub_29E714F88(v8);
  (*(v1 + 104))(v4, *MEMORY[0x29EDC1D60], v16);
  v20[3] = sub_29E751788();
  v20[4] = MEMORY[0x29EDC2958];
  sub_29E5FEBF4(v20);
  sub_29E751778();
  sub_29E7508B8();
  return v9;
}

uint64_t sub_29E61BD78(uint64_t a1)
{
  v2 = sub_29E61C314();

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29E61BDC4(uint64_t a1)
{
  v2 = sub_29E750E78();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v2);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x2A1C7C4A8](v5);
  v10 = &v13 - v9;
  if (!a1)
  {
    sub_29E750E38();
    v11 = sub_29E750E68();
    (*(v3 + 8))(v10, v2);
    return v11;
  }

  if (a1 == 1)
  {
    sub_29E750E28();
    sub_29E750E18();
    v12 = *(v3 + 8);
    v12(v10, v2);
    v11 = sub_29E750E68();
    v12(v7, v2);
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_29E61BF24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E61BF6C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_29E61A1B8();
}

void sub_29E61BF94()
{
  if (!qword_2A185A510)
  {
    sub_29E61BFEC();
    v0 = sub_29E754FE8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A185A510);
    }
  }
}

unint64_t sub_29E61BFEC()
{
  result = qword_2A1856FF0;
  if (!qword_2A1856FF0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1856FF0);
  }

  return result;
}

unint64_t sub_29E61C050()
{
  result = qword_2A1856FF8;
  if (!qword_2A1856FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856FF8);
  }

  return result;
}

uint64_t sub_29E61C0A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepOnboardingScheduleItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_29E61C108(uint64_t a1, uint64_t a2)
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

uint64_t sub_29E61C12C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_29E61C174(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_29E61C1FC()
{
  sub_29E74F9E8();
  if (v0 <= 0x3F)
  {
    sub_29E619E1C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_29E61C314()
{
  result = qword_2A1857020;
  if (!qword_2A1857020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857020);
  }

  return result;
}

unint64_t sub_29E61C368()
{
  result = qword_2A1857030;
  if (!qword_2A1857030)
  {
    type metadata accessor for SleepOnboardingScheduleItem(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A1857030);
  }

  return result;
}

uint64_t type metadata accessor for SleepApneaEventPDFAlertsChartPoint()
{
  result = qword_2A1857038;
  if (!qword_2A1857038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E61C424()
{
  result = sub_29E74ED28();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_29E61C498@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29E74ED28();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_29E61C500(uint64_t a1)
{
  v3 = v1;
  sub_29E7550C8();
  sub_29E74ED28();
  sub_29E61C86C(&qword_2A1A7CFD0, MEMORY[0x29EDB9BC8]);
  sub_29E7540B8();
  v4 = v1 + *(a1 + 20);
  sub_29E7540B8();
  v5 = v3 + *(a1 + 24);
  sub_29E7540B8();
  return sub_29E755108();
}

uint64_t sub_29E61C5D4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_29E74ED28();
  sub_29E61C86C(&qword_2A1A7CFD0, MEMORY[0x29EDB9BC8]);
  sub_29E7540B8();
  v5 = v2 + *(a2 + 20);
  sub_29E7540B8();
  v6 = v4 + *(a2 + 24);
  return sub_29E7540B8();
}

uint64_t sub_29E61C690(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_29E7550C8();
  sub_29E74ED28();
  sub_29E61C86C(&qword_2A1A7CFD0, MEMORY[0x29EDB9BC8]);
  sub_29E7540B8();
  v5 = v2 + *(a2 + 20);
  sub_29E7540B8();
  v6 = v4 + *(a2 + 24);
  sub_29E7540B8();
  return sub_29E755108();
}

uint64_t sub_29E61C760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_29E74ECC8() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  if ((sub_29E74ECC8() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 24);

  return sub_29E74ECC8();
}

uint64_t sub_29E61C86C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E61C8E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_29E61D37C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E61D70C(0, &qword_2A1857080, sub_29E61D37C, MEMORY[0x29EDBC5F8], MEMORY[0x29EDBC558]);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = v24 - v13;
  *v9 = sub_29E752FE8();
  *(v9 + 1) = 0;
  v9[16] = 0;
  sub_29E61D568();
  sub_29E61CB14(a1, a2, &v9[*(v15 + 44)]);
  sub_29E753C48();
  sub_29E752CA8();
  sub_29E61D5D0(v9, v14);
  v16 = &v14[*(v11 + 44)];
  v17 = v24[5];
  *(v16 + 4) = v24[4];
  *(v16 + 5) = v17;
  *(v16 + 6) = v24[6];
  v18 = v24[1];
  *v16 = v24[0];
  *(v16 + 1) = v18;
  v19 = v24[3];
  *(v16 + 2) = v24[2];
  *(v16 + 3) = v19;
  sub_29E61D634();
  v21 = a3 + *(v20 + 36);
  sub_29E753BF8();
  LOBYTE(a2) = sub_29E7533A8();
  sub_29E61D70C(0, &qword_2A1857098, MEMORY[0x29EDBCBB8], MEMORY[0x29EDBCBB0], MEMORY[0x29EDBC8D8]);
  *(v21 + *(v22 + 36)) = a2;
  return sub_29E61D778(v14, a3, &qword_2A1857080, sub_29E61D37C);
}

uint64_t sub_29E61CB14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v35 = a1;
  v36 = a2;
  v41 = a3;
  sub_29E61D510();
  v39 = *(v3 - 8);
  v40 = v3;
  v4 = *(v39 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E61D70C(0, &qword_2A1857068, sub_29E61D510, MEMORY[0x29EDBC5F8], MEMORY[0x29EDBC558]);
  v37 = v7;
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x2A1C7C4A8](v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x2A1C7C4A8](v9);
  v14 = &v35 - v13;
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v35 - v15;
  v17 = sub_29E753B08();
  v18 = *(v17 - 8);
  v19 = v18[8];
  v20 = MEMORY[0x2A1C7C4A8](v17);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20);
  v24 = &v35 - v23;
  sub_29E7544C8();
  v38 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E753AF8();
  v25 = swift_allocObject();
  *(v25 + 16) = v35;
  *(v25 + 24) = v36;

  sub_29E753A28();
  sub_29E753C48();
  sub_29E752CA8();
  (*(v39 + 32))(v14, v6, v40);
  v26 = &v14[*(v37 + 36)];
  v27 = v47;
  *(v26 + 4) = v46;
  *(v26 + 5) = v27;
  *(v26 + 6) = v48;
  v28 = v43;
  *v26 = v42;
  *(v26 + 1) = v28;
  v29 = v45;
  *(v26 + 2) = v44;
  *(v26 + 3) = v29;
  sub_29E61D778(v14, v16, &qword_2A1857068, sub_29E61D510);
  v30 = v18[2];
  v30(v22, v24, v17);
  sub_29E61D80C(v16, v11);
  v31 = v41;
  v30(v41, v22, v17);
  sub_29E61D468();
  sub_29E61D80C(v11, &v31[*(v32 + 48)]);
  sub_29E61D8A8(v16);
  v33 = v18[1];
  v33(v24, v17);
  sub_29E61D8A8(v11);
  v33(v22, v17);
}

uint64_t sub_29E61CF74(void (*a1)(uint64_t))
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a1(isCurrentExecutor);
}

uint64_t sub_29E61D024@<X0>(uint64_t *a1@<X8>)
{
  v34 = a1;
  v1 = sub_29E7534D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E754188();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v33 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E754118();
  v11 = sub_29E65B0B4(v10);
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  v35 = v11;
  v36 = v13;
  sub_29E60DE10();
  v14 = sub_29E753608();
  v16 = v15;
  v18 = v17;
  sub_29E753418();
  (*(v2 + 104))(v5, *MEMORY[0x29EDBC9B0], v1);
  sub_29E7534E8();

  (*(v2 + 8))(v5, v1);
  v19 = sub_29E7535D8();
  v21 = v20;
  v23 = v22;

  sub_29E60DB44(v14, v16, v18 & 1);

  v24 = [objc_opt_self() secondaryLabelColor];
  v35 = sub_29E7538E8();
  v25 = sub_29E7535B8();
  v27 = v26;
  LOBYTE(v16) = v28;
  v30 = v29;
  sub_29E60DB44(v19, v21, v23 & 1);

  v32 = v34;
  *v34 = v25;
  v32[1] = v27;
  *(v32 + 16) = v16 & 1;
  v32[3] = v30;
  return result;
}

void sub_29E61D37C()
{
  if (!qword_2A1857050)
  {
    sub_29E61D410();
    sub_29E61DAA4(&qword_2A1857078, sub_29E61D410);
    v0 = sub_29E753AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857050);
    }
  }
}

void sub_29E61D410()
{
  if (!qword_2A1857058)
  {
    sub_29E61D468();
    v0 = sub_29E753C78();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857058);
    }
  }
}

void sub_29E61D468()
{
  if (!qword_2A1857060)
  {
    sub_29E753B08();
    sub_29E61D70C(255, &qword_2A1857068, sub_29E61D510, MEMORY[0x29EDBC5F8], MEMORY[0x29EDBC558]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1857060);
    }
  }
}

void sub_29E61D510()
{
  if (!qword_2A1857070)
  {
    v0 = sub_29E753A58();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857070);
    }
  }
}

void sub_29E61D568()
{
  if (!qword_2A1857088)
  {
    sub_29E61D410();
    v0 = sub_29E752B08();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857088);
    }
  }
}

uint64_t sub_29E61D5D0(uint64_t a1, uint64_t a2)
{
  sub_29E61D37C();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29E61D634()
{
  if (!qword_2A1857090)
  {
    sub_29E61D70C(255, &qword_2A1857080, sub_29E61D37C, MEMORY[0x29EDBC5F8], MEMORY[0x29EDBC558]);
    sub_29E61D70C(255, &qword_2A1857098, MEMORY[0x29EDBCBB8], MEMORY[0x29EDBCBB0], MEMORY[0x29EDBC8D8]);
    v0 = sub_29E752C28();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857090);
    }
  }
}

void sub_29E61D70C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_29E61D778(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29E61D70C(0, a3, a4, MEMORY[0x29EDBC5F8], MEMORY[0x29EDBC558]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_29E61D80C(uint64_t a1, uint64_t a2)
{
  sub_29E61D70C(0, &qword_2A1857068, sub_29E61D510, MEMORY[0x29EDBC5F8], MEMORY[0x29EDBC558]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E61D8A8(uint64_t a1)
{
  sub_29E61D70C(0, &qword_2A1857068, sub_29E61D510, MEMORY[0x29EDBC5F8], MEMORY[0x29EDBC558]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29E61D93C()
{
  result = qword_2A18570A0;
  if (!qword_2A18570A0)
  {
    sub_29E61D634();
    sub_29E61D9BC();
    sub_29E61DAEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18570A0);
  }

  return result;
}

unint64_t sub_29E61D9BC()
{
  result = qword_2A18570A8;
  if (!qword_2A18570A8)
  {
    sub_29E61D70C(255, &qword_2A1857080, sub_29E61D37C, MEMORY[0x29EDBC5F8], MEMORY[0x29EDBC558]);
    sub_29E61DAA4(&qword_2A18570B0, sub_29E61D37C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18570A8);
  }

  return result;
}

uint64_t sub_29E61DAA4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29E61DAEC()
{
  result = qword_2A18570B8;
  if (!qword_2A18570B8)
  {
    sub_29E61D70C(255, &qword_2A1857098, MEMORY[0x29EDBCBB8], MEMORY[0x29EDBCBB0], MEMORY[0x29EDBC8D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18570B8);
  }

  return result;
}

id sub_29E61DB7C()
{
  sub_29E61FED0();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29E764170;
  v1 = *MEMORY[0x29EDBA740];
  v2 = *MEMORY[0x29EDBA750];
  *(v0 + 32) = *MEMORY[0x29EDBA740];
  *(v0 + 40) = v2;
  v6 = *MEMORY[0x29EDBA758];
  *(v0 + 48) = *MEMORY[0x29EDBA758];
  off_2A1A7D620 = v0;
  v3 = v1;
  v4 = v2;

  return v6;
}

void sub_29E61DC14(uint64_t a1, void **a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v9 = *a2;
  v11 = a6[3];
  v10 = a6[4];
  sub_29E601938(a6, v11);
  v12 = *(v10 + 16);
  v13 = v9;
  v14 = v12(v11, v10);
  v15 = sub_29E61F9BC(v13, a3, a4, a5, v14 & 1);
  sub_29E61DCC8(v15, v13);
}

void sub_29E61DCC8(char a1, void *a2)
{
  v3 = v2;
  if (a1 == 2)
  {
    v4 = *v2;
    v5 = sub_29E68AA8C(a2);
    if (v6)
    {
      v7 = v5;
      v8 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v3;
      v15 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_29E6A7724();
        v10 = v15;
      }

      sub_29E61F32C(v7, v10);
      *v3 = v10;
    }

    else
    {
    }
  }

  else
  {
    v12 = *v3;
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    sub_29E61F6A4(a1 & 1, a2, v13);

    *v3 = v16;
  }
}

uint64_t sub_29E61DDC8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29E752098();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    v31 = v10;
    sub_29E752068();
    v13 = sub_29E752088();
    v14 = sub_29E7546C8();
    v15 = os_log_type_enabled(v13, v14);
    v30[1] = a3;
    if (v15)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v32[0] = v17;
      *v16 = 136446210;
      v18 = sub_29E755178();
      v20 = sub_29E6B9C90(v18, v19, v32);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_29E5ED000, v13, v14, "[%{public}s]: Responding to age gating change", v16, 0xCu);
      sub_29E5FECBC(v17);
      MEMORY[0x29ED98410](v17, -1, -1);
      MEMORY[0x29ED98410](v16, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    v21 = *&v12[OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_onboardingCapability];
    v22 = *MEMORY[0x29EDBA758];
    v23 = *&v12[OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_watchFeatureAvailability];
    v24 = *&v12[OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_sleepEventRecord];
    v25 = *&v12[OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_sleepSettings];
    swift_getObjectType();
    v26 = v25;

    v27 = v22;
    swift_unknownObjectRetain();
    v28 = v24;
    LOBYTE(v22) = sub_29E61FC3C(v27, v23, v24, v25, v31);
    sub_29E751758();

    v29 = sub_29E7527A8();
    sub_29E61DCC8(v22, v27);
    v29(v32, 0);
  }

  return result;
}

id sub_29E61E090()
{
  [*&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_watchFeatureAvailability] unregisterObserver_];
  [*&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_sleepStore] removeObserver_];
  if (*&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_ageGatingDidChange])
  {

    sub_29E752728();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepOnboardingChangeDetector();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E61E1F0()
{
  v1 = v0;
  v31[1] = *MEMORY[0x29EDCA608];
  v2 = sub_29E752098();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[0] = 0;
  v7 = [v1 isFeatureCapabilitySupportedOnActivePairedDeviceWithError_];
  if (v7)
  {
    v8 = v7;
    v9 = v31[0];
    v10 = [v8 BOOLValue];
  }

  else
  {
    v11 = v31[0];
    v12 = sub_29E74EA48();

    swift_willThrow();
    sub_29E752068();
    v13 = v12;
    v14 = sub_29E752088();
    v15 = sub_29E7546A8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v30[0] = swift_slowAlloc();
      v31[0] = v30[0];
      *v16 = 136446466;
      sub_29E609B5C(0, &qword_2A1857168, 0x29EDC6890);
      v17 = sub_29E755178();
      v19 = sub_29E6B9C90(v17, v18, v31);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      v21 = *(*(v30[2] - 8) + 64);
      MEMORY[0x2A1C7C4A8](ErrorValue);
      (*(v23 + 16))(v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
      v24 = sub_29E7541F8();
      v26 = sub_29E6B9C90(v24, v25, v31);

      *(v16 + 14) = v26;
      _os_log_impl(&dword_29E5ED000, v14, v15, "[%{public}s]: Error reading paired device capability: %{public}s", v16, 0x16u);
      v10 = 2;
      v27 = v30[0];
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v27, -1, -1);
      MEMORY[0x29ED98410](v16, -1, -1);

      (*(v3 + 8))(v6, v2);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
      v10 = 2;
    }
  }

  v28 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t sub_29E61E574()
{
  v1 = v0;
  v31[1] = *MEMORY[0x29EDCA608];
  v2 = sub_29E752098();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[0] = 0;
  v7 = [v1 isFeatureCapabilitySupportedOnActivePairedDeviceWithError_];
  if (v7)
  {
    v8 = v7;
    v9 = v31[0];
    v10 = [v8 BOOLValue];
  }

  else
  {
    v11 = v31[0];
    v12 = sub_29E74EA48();

    swift_willThrow();
    sub_29E752068();
    v13 = v12;
    v14 = sub_29E752088();
    v15 = sub_29E7546A8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v30[0] = swift_slowAlloc();
      v31[0] = v30[0];
      *v16 = 136446466;
      v17 = sub_29E755178();
      v19 = sub_29E6B9C90(v17, v18, v31);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      v21 = *(*(v30[2] - 8) + 64);
      MEMORY[0x2A1C7C4A8](ErrorValue);
      (*(v23 + 16))(v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
      v24 = sub_29E7541F8();
      v26 = sub_29E6B9C90(v24, v25, v31);

      *(v16 + 14) = v26;
      _os_log_impl(&dword_29E5ED000, v14, v15, "[%{public}s]: Error reading paired device capability: %{public}s", v16, 0x16u);
      v10 = 2;
      v27 = v30[0];
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v27, -1, -1);
      MEMORY[0x29ED98410](v16, -1, -1);

      (*(v3 + 8))(v6, v2);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
      v10 = 2;
    }
  }

  v28 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t sub_29E61E8E8()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29E752098();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752068();
  v7 = sub_29E752088();
  v8 = sub_29E7546C8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v22 = v2;
    v10 = v9;
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136446210;
    v12 = sub_29E755178();
    v14 = sub_29E6B9C90(v12, v13, &v24);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_29E5ED000, v7, v8, "[%{public}s]: Updating onboarding capability for all sleep features", v10, 0xCu);
    sub_29E5FECBC(v11);
    MEMORY[0x29ED98410](v11, -1, -1);
    MEMORY[0x29ED98410](v10, -1, -1);

    (*(v3 + 8))(v6, v22);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  if (qword_2A1A7D610 != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v15 = off_2A1A7D620;
    v16 = sub_29E68B34C(MEMORY[0x29EDCA190]);
    v24 = v16;
    v17 = v15[2];
    if (!v17)
    {
      break;
    }

    v18 = 0;
    while (v18 < v15[2])
    {
      v23 = v15[v18 + 4];
      v19 = v23;
      sub_29E61EB9C(&v24, &v23, v1);

      if (v17 == ++v18)
      {
        v16 = v24;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    swift_once();
  }

LABEL_10:
  v20 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_onboardingCapability);
  v24 = v16;

  sub_29E7527C8();
}

void sub_29E61EB9C(uint64_t a1, void **a2, uint64_t a3)
{
  v3 = *(a3 + OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_watchFeatureAvailability);
  v4 = *(a3 + OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_sleepEventRecord);
  v5 = *(a3 + OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_sleepSettings);
  v6 = *a2;
  v8 = *(a3 + OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_isAgeGatedObserver + 24);
  v7 = *(a3 + OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_isAgeGatedObserver + 32);
  sub_29E601938((a3 + OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_isAgeGatedObserver), v8);
  v9 = *(v7 + 16);
  v14 = v5;
  v10 = v6;
  v13 = v4;
  v11 = v9(v8, v7);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v12 = sub_29E61FC3C(v10, v3, v4, v5, v11 & 1);

  sub_29E751758();
  sub_29E61DCC8(v12, v10);
}

uint64_t sub_29E61EE28(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_29E752098();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E753D78();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = (&v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
  *v14 = sub_29E754908();
  (*(v11 + 104))(v14, *MEMORY[0x29EDCA278], v10);
  v15 = sub_29E753DA8();
  result = (*(v11 + 8))(v14, v10);
  if (v15)
  {
    sub_29E752068();
    swift_unknownObjectRetain();
    v17 = sub_29E752088();
    v18 = sub_29E7546C8();
    sub_29E751758();
    v19 = os_log_type_enabled(v17, v18);
    v20 = &off_29F370000;
    v46 = ObjectType;
    if (v19)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v45 = v5;
      v23 = v22;
      v47[0] = v22;
      *v21 = 136446466;
      v24 = sub_29E755178();
      v44 = v6;
      v26 = sub_29E6B9C90(v24, v25, v47);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2082;
      v27 = [a1 featureIdentifier];
      v28 = sub_29E7541D8();
      v30 = v29;

      v31 = sub_29E6B9C90(v28, v30, v47);

      *(v21 + 14) = v31;
      v20 = &off_29F370000;
      _os_log_impl(&dword_29E5ED000, v17, v18, "[%{public}s]: Responding to sleep paired capability change for feature %{public}s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v23, -1, -1);
      MEMORY[0x29ED98410](v21, -1, -1);

      v44[1](v9, v45);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }

    v45 = *(v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_onboardingCapability);

    v44 = [a1 v20[260]];
    v32 = [a1 v20[260]];
    v33 = *(v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_watchFeatureAvailability);
    v34 = *(v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_sleepEventRecord);
    v35 = *(v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_sleepSettings);
    v36 = (v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_isAgeGatedObserver);
    v37 = *(v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_isAgeGatedObserver + 24);
    v38 = v36[4];
    sub_29E601938(v36, v37);
    v39 = *(v38 + 16);
    v43 = v35;
    v40 = v34;
    v41 = v39(v37, v38);
    swift_getObjectType();
    swift_unknownObjectRetain();
    LOBYTE(v34) = sub_29E61FC3C(v32, v33, v34, v35, v41 & 1);

    sub_29E751758();
    v42 = sub_29E7527A8();
    sub_29E61DCC8(v34, v44);
    v42(v47, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29E61F32C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_29E754C68() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_29E7541D8();
      sub_29E7550C8();
      v11 = v10;
      sub_29E7542D8();
      v12 = sub_29E755108();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + v3);
        v19 = (v17 + v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

uint64_t sub_29E61F4F4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_29E754C68() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_29E7550C8();

      sub_29E7542D8();
      v14 = sub_29E755108();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_29E61F6A4(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_29E68AA8C(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 >= v13 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    v16 = result;
    sub_29E6A7724();
    result = v16;
    goto LABEL_8;
  }

  sub_29E6A6D2C(v13, a3 & 1);
  v17 = *v4;
  result = sub_29E68AA8C(a2);
  if ((v14 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v14)
    {
      *(v19[7] + result) = a1 & 1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + result) = a1 & 1;
    v20 = v19[2];
    v12 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v12)
    {
      v19[2] = v21;

      return MEMORY[0x2A1C710E0]();
    }

    goto LABEL_15;
  }

LABEL_16:
  type metadata accessor for HKFeatureIdentifier(0);
  sub_29E755078();
  __break(1u);
  return MEMORY[0x2A1C710E0]();
}

_OWORD *sub_29E61F800(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_29E68A9D0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_29E6A7874();
      v11 = v19;
      goto LABEL_8;
    }

    sub_29E6A6FDC(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_29E68A9D0(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_29E755078();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_29E5FECBC(v23);

    return sub_29E61FF28(a1, v23);
  }

  else
  {
    sub_29E61F950(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_29E61F950(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_29E61FF28(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_29E61F9BC(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5)
{
  v8 = *MEMORY[0x29EDBA750];
  v9 = sub_29E7541D8();
  v11 = v10;
  if (v9 == sub_29E7541D8() && v11 == v12)
  {

LABEL_16:
    if (a3)
    {
      return [a3 isCurrentSleepCoachingOnboardingCompleted] ^ 1;
    }

    return 2;
  }

  v14 = sub_29E755028();

  if (v14)
  {
    goto LABEL_16;
  }

  v15 = *MEMORY[0x29EDBA740];
  v16 = sub_29E7541D8();
  v18 = v17;
  if (v16 == sub_29E7541D8() && v18 == v19)
  {

LABEL_19:
    if (!a3 || !a4)
    {
      return 2;
    }

    v28 = a3;
    v29 = a4;
    if ([v28 isCurrentSleepWindDownShortcutsOnboardingCompleted])
    {

      return 0;
    }

    else
    {
      v30 = [v29 sleepModeOptions];

      return (v30 >> 14) & 1;
    }
  }

  v21 = sub_29E755028();

  if (v21)
  {
    goto LABEL_19;
  }

  v22 = *MEMORY[0x29EDBA758];
  v23 = sub_29E7541D8();
  v25 = v24;
  if (v23 == sub_29E7541D8() && v25 == v26)
  {

    if (!a3)
    {
      return 2;
    }
  }

  else
  {
    v31 = sub_29E755028();

    result = 2;
    if ((v31 & 1) == 0 || !a3)
    {
      return result;
    }
  }

  v32 = a3;
  v33 = sub_29E61E1F0();
  if (v33 == 2)
  {

    return 2;
  }

  v34 = v33;
  v35 = [v32 isCurrentSleepTrackingOnboardingCompleted];

  if (v35)
  {
    return 0;
  }

  else
  {
    return v34 & (a5 ^ 1) & 1;
  }
}

uint64_t sub_29E61FC3C(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5)
{
  v8 = *MEMORY[0x29EDBA750];
  v9 = sub_29E7541D8();
  v11 = v10;
  if (v9 == sub_29E7541D8() && v11 == v12)
  {

LABEL_16:
    if (a3)
    {
      return [a3 isCurrentSleepCoachingOnboardingCompleted] ^ 1;
    }

    return 2;
  }

  v14 = sub_29E755028();

  if (v14)
  {
    goto LABEL_16;
  }

  v15 = *MEMORY[0x29EDBA740];
  v16 = sub_29E7541D8();
  v18 = v17;
  if (v16 == sub_29E7541D8() && v18 == v19)
  {

LABEL_19:
    if (!a3 || !a4)
    {
      return 2;
    }

    v28 = a3;
    v29 = a4;
    if ([v28 isCurrentSleepWindDownShortcutsOnboardingCompleted])
    {

      return 0;
    }

    else
    {
      v30 = [v29 sleepModeOptions];

      return (v30 >> 14) & 1;
    }
  }

  v21 = sub_29E755028();

  if (v21)
  {
    goto LABEL_19;
  }

  v22 = *MEMORY[0x29EDBA758];
  v23 = sub_29E7541D8();
  v25 = v24;
  if (v23 == sub_29E7541D8() && v25 == v26)
  {

    if (!a3)
    {
      return 2;
    }
  }

  else
  {
    v31 = sub_29E755028();

    result = 2;
    if ((v31 & 1) == 0 || !a3)
    {
      return result;
    }
  }

  v32 = a3;
  v33 = sub_29E61E574();
  if (v33 == 2)
  {

    return 2;
  }

  v34 = v33;
  v35 = [v32 isCurrentSleepTrackingOnboardingCompleted];

  if (v35)
  {
    return 0;
  }

  else
  {
    return v34 & (a5 ^ 1) & 1;
  }
}

void sub_29E61FED0()
{
  if (!qword_2A1A7D3E0)
  {
    type metadata accessor for HKFeatureIdentifier(255);
    v0 = sub_29E754FE8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7D3E0);
    }
  }
}

_OWORD *sub_29E61FF28(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_29E61FF38(void *a1, const char *a2, void *a3)
{
  v39 = a2;
  v5 = v3;
  swift_getObjectType();
  v7 = sub_29E752098();
  v41 = *(v7 - 8);
  v8 = *(v41 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E753D78();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = (&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
  *v15 = sub_29E754908();
  (*(v12 + 104))(v15, *MEMORY[0x29EDCA278], v11);
  v16 = sub_29E753DA8();
  result = (*(v12 + 8))(v15, v11);
  if (v16)
  {
    v40 = v7;
    sub_29E752068();
    v18 = a1;
    v19 = sub_29E752088();
    v20 = sub_29E7546C8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v42 = v37;
      *v21 = 136446466;
      v22 = sub_29E755178();
      v24 = sub_29E6B9C90(v22, v23, &v42);
      v38 = v5;
      v25 = v24;

      *(v21 + 4) = v25;
      *(v21 + 12) = 2082;
      v26 = v18;
      v27 = [v26 description];
      v28 = a3;
      v29 = sub_29E7541D8();
      v31 = v30;

      v32 = v29;
      a3 = v28;
      v33 = sub_29E6B9C90(v32, v31, &v42);

      *(v21 + 14) = v33;
      v5 = v38;
      _os_log_impl(&dword_29E5ED000, v19, v20, v39, v21, 0x16u);
      v34 = v37;
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v34, -1, -1);
      MEMORY[0x29ED98410](v21, -1, -1);
    }

    (*(v41 + 8))(v10, v40);
    v35 = *(v5 + *a3);
    *(v5 + *a3) = v18;
    v36 = v18;

    return sub_29E61E8E8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for FocusPromotionDataSource()
{
  result = qword_2A1857258;
  if (!qword_2A1857258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E620344()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for FocusPromotionDataSource();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = v2;

  sub_29E6208C0(v6, v1);

  sub_29E62129C(&qword_2A1857268, type metadata accessor for FocusPromotionDataSource);
  sub_29E750828();

  v7 = sub_29E750818();

  return v7;
}

uint64_t sub_29E620430()
{
  sub_29E621488();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_29E620678(v3);
    sub_29E750908();
  }
}

uint64_t sub_29E620554()
{
  sub_29E621488();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_29E620678(v3);
    sub_29E750908();
  }
}

uint64_t sub_29E620678@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + qword_2A1857238);
  sub_29E7527B8();
  v6 = v12 != 1 || v14 == 0 || v13 == 0;
  if (!v6 && *(v2 + qword_2A1857230) && (swift_getKeyPath(), swift_getKeyPath(), sub_29E752888(), , , (v11 & 1) != 0))
  {
    v7 = MEMORY[0x29EDC2000];
  }

  else
  {
    v7 = MEMORY[0x29EDC1FF8];
  }

  v8 = *v7;
  sub_29E621488();
  return (*(*(v9 - 8) + 104))(a1, v8, v9);
}

uint64_t sub_29E6207BC()
{
  v1 = *(v0 + qword_2A1857238);

  v2 = *(v0 + qword_2A1857240);
}

uint64_t sub_29E62080C()
{
  v0 = sub_29E750938();
  v1 = *(v0 + qword_2A1857230);

  v2 = *(v0 + qword_2A1857238);

  v3 = *(v0 + qword_2A1857240);

  return swift_deallocClassInstance();
}

uint64_t sub_29E6208C0(void *a1, void *a2)
{
  v3 = v2;
  sub_29E62154C(0, &qword_2A1857270, MEMORY[0x29EDB8AF0]);
  v7 = *(v6 - 8);
  v62 = v6;
  v63 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v60 = v52 - v9;
  sub_29E6210BC();
  v11 = *(v10 - 8);
  v64 = v10;
  v65 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v58 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6211B0();
  v15 = *(v14 - 8);
  v66 = v14;
  v67 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14);
  v61 = v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6212E4();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v18 - 8);
  v21 = v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E62133C();
  v23 = *(v22 - 8);
  v55 = v22;
  v56 = v23;
  v24 = *(v23 + 64);
  MEMORY[0x2A1C7C4A8](v22);
  v26 = v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E621488();
  v28 = v27;
  v29 = *(v27 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x2A1C7C4A8](v27);
  v32 = v52 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + qword_2A1857240) = MEMORY[0x29EDCA1A0];
  *(v3 + qword_2A1857230) = a1;
  *(v3 + qword_2A1857238) = a2;
  v33 = type metadata accessor for SleepFocusPromotionSection(0);
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v36 = a1;

  v59 = sub_29E70ED30(v36);
  v37 = *MEMORY[0x29EDC1FF8];
  v38 = *(v29 + 104);
  v57 = v32;
  v38(v32, v37, v28);

  v39 = sub_29E750918();
  v68 = a2;
  sub_29E602DD4();
  swift_retain_n();
  v40 = sub_29E754908();
  v69 = v40;
  v41 = sub_29E7548D8();
  v42 = *(v41 - 8);
  v53 = *(v42 + 56);
  v54 = v42 + 56;
  v53(v21, 1, 1, v41);
  sub_29E621428();
  sub_29E62129C(&qword_2A18572A8, sub_29E621428);
  v52[1] = sub_29E62129C(&qword_2A18568B8, sub_29E602DD4);
  sub_29E752968();
  sub_29E6214E8(v21);

  swift_allocObject();
  swift_weakInit();
  sub_29E62129C(&qword_2A18572B8, sub_29E62133C);
  v43 = v55;
  sub_29E7529A8();

  (*(v56 + 8))(v26, v43);
  swift_beginAccess();
  sub_29E752708();
  swift_endAccess();

  swift_beginAccess();
  sub_29E62154C(0, &qword_2A185A450, MEMORY[0x29EDB8B00]);
  v44 = v60;
  sub_29E752878();
  swift_endAccess();
  sub_29E62113C();
  v45 = v58;
  v46 = v62;
  sub_29E752988();
  (*(v63 + 8))(v44, v46);
  v47 = sub_29E754908();
  v68 = v47;
  v53(v21, 1, 1, v41);
  sub_29E62129C(&qword_2A1857290, sub_29E6210BC);
  v48 = v61;
  v49 = v64;
  sub_29E752968();
  sub_29E6214E8(v21);

  (*(v65 + 8))(v45, v49);
  swift_allocObject();
  swift_weakInit();

  sub_29E62129C(&qword_2A18572C0, sub_29E6211B0);
  v50 = v66;
  sub_29E7529A8();

  (*(v67 + 8))(v48, v50);
  swift_beginAccess();
  sub_29E752708();
  swift_endAccess();

  sub_29E620678(v57);
  sub_29E750908();

  return v39;
}

void sub_29E6210BC()
{
  if (!qword_2A1857278)
  {
    sub_29E62154C(255, &qword_2A1857270, MEMORY[0x29EDB8AF0]);
    sub_29E62113C();
    v0 = sub_29E752648();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857278);
    }
  }
}

unint64_t sub_29E62113C()
{
  result = qword_2A1857280;
  if (!qword_2A1857280)
  {
    sub_29E62154C(255, &qword_2A1857270, MEMORY[0x29EDB8AF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857280);
  }

  return result;
}

void sub_29E6211B0()
{
  if (!qword_2A1857288)
  {
    sub_29E6210BC();
    sub_29E602DD4();
    sub_29E62129C(&qword_2A1857290, sub_29E6210BC);
    sub_29E62129C(&qword_2A18568B8, sub_29E602DD4);
    v0 = sub_29E7526C8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857288);
    }
  }
}

uint64_t sub_29E62129C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E6212E4()
{
  if (!qword_2A1856860)
  {
    sub_29E7548D8();
    v0 = sub_29E754BD8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1856860);
    }
  }
}

void sub_29E62133C()
{
  if (!qword_2A1857298)
  {
    sub_29E621428();
    sub_29E602DD4();
    sub_29E62129C(&qword_2A18572A8, sub_29E621428);
    sub_29E62129C(&qword_2A18568B8, sub_29E602DD4);
    v0 = sub_29E7526C8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857298);
    }
  }
}

void sub_29E621428()
{
  if (!qword_2A18572A0)
  {
    v0 = sub_29E7527D8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18572A0);
    }
  }
}

void sub_29E621488()
{
  if (!qword_2A18572B0)
  {
    type metadata accessor for SleepFocusPromotionSection(255);
    v0 = sub_29E7508F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18572B0);
    }
  }
}

uint64_t sub_29E6214E8(uint64_t a1)
{
  sub_29E6212E4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E62154C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x29EDC9A98]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E6215D4()
{
  v0 = sub_29E7509D8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E7509C8();
  v5 = sub_29E750988();
  (*(v1 + 8))(v4, v0);

  return v5;
}

uint64_t sub_29E621724@<X0>(void *a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a2;
  v7 = a1;
  v8 = sub_29E754A58();
  v9 = [v7 identifier];
  v10 = sub_29E7541D8();
  v12 = v11;

  MEMORY[0x29ED96C20](v10, v12);

  a3[3] = &type metadata for ChartItem;
  a3[4] = sub_29E621E84();
  v13 = swift_allocObject();
  *a3 = v13;

  v13[2] = v7;
  v13[3] = a2;
  v13[4] = v8;
  v13[5] = 0x6574497472616843;
  v13[6] = 0xEA00000000005F6DLL;
  return result;
}

uint64_t sub_29E62188C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_29E6218FC(uint64_t a1, void *a2)
{
  v40 = a1;
  v3 = sub_29E7511A8();
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = *(v45 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v44 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_29E74ED88();
  v6 = *(v42 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v42);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_29E750CA8();
  v41 = *(v43 - 8);
  v10 = v41;
  v11 = *(v41 + 64);
  MEMORY[0x2A1C7C4A8](v43);
  v47 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E621E28(0, &qword_2A185A510, sub_29E61BFEC);
  v13 = swift_allocObject();
  v39 = xmmword_29E762F30;
  *(v13 + 16) = xmmword_29E762F30;
  v14 = a2;
  v15 = sub_29E7513A8();
  v48 = 0x6574497472616843;
  v49 = 0xEA00000000005F6DLL;
  v16 = [v14 identifier];
  v17 = sub_29E7541D8();
  v19 = v18;

  MEMORY[0x29ED96C20](v17, v19);

  v20 = v48;
  v21 = v49;
  *(v13 + 56) = &type metadata for ChartItem;
  *(v13 + 64) = sub_29E621DD4();
  v22 = swift_allocObject();
  *(v13 + 32) = v22;
  v22[2] = v14;
  v22[3] = v15;
  v22[4] = 0;
  v22[5] = v20;
  v22[6] = v21;
  sub_29E74ED78();
  sub_29E74ED48();
  (*(v6 + 8))(v9, v42);
  v23 = v47;
  sub_29E750C98();
  sub_29E621E28(0, &qword_2A1856858, MEMORY[0x29EDC2240]);
  v24 = *(v10 + 72);
  v25 = v41;
  v26 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v39;
  v28 = v43;
  (*(v25 + 16))(v27 + v26, v23, v43);
  v29 = sub_29E7516E8();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  sub_29E7516D8();
  v32 = sub_29E7513A8();
  v33 = v44;
  sub_29E751198();
  *(swift_allocObject() + 16) = v32;
  v34 = v32;

  v35 = sub_29E751178();
  v37 = v36;

  (*(v45 + 8))(v33, v46);
  (*(v25 + 8))(v47, v28);

  return v35;
}

unint64_t sub_29E621DD4()
{
  result = qword_2A18572C8;
  if (!qword_2A18572C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18572C8);
  }

  return result;
}

void sub_29E621E28(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E754FE8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_29E621E84()
{
  result = qword_2A18572D0;
  if (!qword_2A18572D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18572D0);
  }

  return result;
}

id sub_29E621ED8()
{
  v1 = *&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_key];
  v2 = *&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_key + 8];
  v3 = *&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_defaults];
  v4 = v0;

  v5 = sub_29E754198();

  [v3 removeObserver:v4 forKeyPath:v5 context:&v4[OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_observerContext]];

  v7.receiver = v4;
  v7.super_class = type metadata accessor for UserDefaultsBooleanObserver();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_29E6220BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5)
{
  if (a5 && &v5[OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_observerContext] == a5)
  {
    v8 = *&v5[OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_objectWillChange];
    v9 = *&v5[OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_defaults];
    v10 = *&v5[OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_key];
    v11 = *&v5[OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_key + 8];
    v12 = sub_29E754198();
    LOBYTE(v9) = [v9 BOOLForKey_];

    LOBYTE(v25[0]) = v9;
    sub_29E752768();
    return;
  }

  if (a2)
  {
    v13 = a3;
    v14 = sub_29E754198();
    a3 = v13;
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  sub_29E6226E8(a3, v25);
  v16 = v26;
  if (!v26)
  {
    v22 = 0;
    if (!a4)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v17 = sub_29E601938(v25, v26);
  v18 = *(v16 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x2A1C7C4A8](v17);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21);
  v22 = sub_29E755018();
  (*(v18 + 8))(v21, v16);
  sub_29E5FECBC(v25);
  if (a4)
  {
LABEL_9:
    type metadata accessor for NSKeyValueChangeKey(0);
    sub_29E6226A0(&qword_2A1856610, type metadata accessor for NSKeyValueChangeKey);
    a4 = sub_29E754068();
  }

LABEL_10:
  v23 = type metadata accessor for UserDefaultsBooleanObserver();
  v24.receiver = v5;
  v24.super_class = v23;
  objc_msgSendSuper2(&v24, sel_observeValueForKeyPath_ofObject_change_context_, v15, v22, a4, a5);

  sub_29E751758();
}

id sub_29E6224E8()
{
  v1 = *(*v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_defaults);
  v2 = (*v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_key);
  v3 = *v2;
  v4 = v2[1];
  v5 = sub_29E754198();
  v6 = [v1 BOOLForKey_];

  return v6;
}

uint64_t sub_29E62254C()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_29E6225D8@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for BooleanObserver();
  v4 = swift_allocObject();
  sub_29E622640();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  result = sub_29E752778();
  *(v4 + 16) = result;
  *(v4 + 24) = v3;
  *a2 = v4;
  return result;
}

void sub_29E622640()
{
  if (!qword_2A1A7D4E8)
  {
    v0 = sub_29E752788();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7D4E8);
    }
  }
}

uint64_t sub_29E6226A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E6226E8(uint64_t a1, uint64_t a2)
{
  sub_29E60E8E8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E622760(void *a1)
{
  sub_29E623808(0, &qword_2A1859CD0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v5 = &v12 - v4;
  v6 = sub_29E7544F8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_29E7544C8();
  v7 = a1;
  v8 = sub_29E7544B8();
  v9 = swift_allocObject();
  v10 = MEMORY[0x29EDCA390];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  sub_29E6E4804(0, 0, v5, &unk_29E764B18, v9);
}

uint64_t sub_29E6228AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_29E7544C8();
  *(v4 + 24) = sub_29E7544B8();
  v6 = sub_29E754468();

  return MEMORY[0x2A1C73D48](sub_29E622944, v6, v5);
}

uint64_t sub_29E622944()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_29E623920(v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_29E6229B0()
{
  v0 = sub_29E74F7F8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x29EDC6B10], v0);
  v5 = sub_29E74F7E8();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_29E622AEC()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  return sub_29E74E9D8();
}

uint64_t sub_29E622B94()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  return sub_29E74E9D8();
}

void sub_29E622C34()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A7FA18;
  v1 = sub_29E754198();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (!v2)
  {
    __break(1u);
  }
}

uint64_t sub_29E622D00()
{
  v0 = sub_29E750528();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E693FB8(v4);
  v5 = sub_29E750518();
  (*(v1 + 8))(v4, v0);
  v6 = sub_29E6D5A34(v5);

  return v6;
}

void sub_29E622DEC()
{
  sub_29E623808(0, &qword_2A18572F8, MEMORY[0x29EDC1638], MEMORY[0x29EDC9E90]);
  v0 = sub_29E750108();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 72);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29E764A50;
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v5 = qword_2A1A7FA18;
  v6 = sub_29E754198();
  v7 = [objc_opt_self() imageNamed:v6 inBundle:v5];

  if (v7)
  {
    v8 = v4 + v2;
    *v8 = v7;
    *(v8 + 8) = 0;
    v9 = *(v1 + 104);
    (v9)(v4 + v2, *MEMORY[0x29EDC1608], v0);
    v10 = (v4 + v2 + v3);
    *v10 = sub_29E74E9D8();
    v10[1] = v11;
    (v9)(v10, *MEMORY[0x29EDC1610], v0);
    v12 = v0;
    v13 = (v4 + v2 + 2 * v3);
    *v13 = sub_29E74E9D8();
    v13[1] = v14;
    v13[2] = 0;
    v51 = *MEMORY[0x29EDC15D0];
    v9(v13);
    v15 = v4 + v2 + 3 * v3;
    *v15 = sub_29E74E9D8();
    *(v15 + 8) = v16;
    *(v15 + 16) = 0;
    v17 = *MEMORY[0x29EDC1630];
    (v9)(v15, v17, v12);
    v18 = v3;
    v19 = 4 * v3;
    v20 = v4 + v2 + v19;
    *v20 = sub_29E74E9D8();
    *(v20 + 8) = v21;
    *(v20 + 16) = 0;
    (v9)(v20, v17, v12);
    v22 = v4 + v2 + v19 + v18;
    *v22 = sub_29E74E9D8();
    *(v22 + 8) = v23;
    *(v22 + 16) = 0;
    (v9)(v22, v17, v12);
    v24 = (v4 + v2 + 6 * v18);
    *v24 = sub_29E74E9D8();
    v24[1] = v25;
    v24[2] = 0;
    (v9)(v24, v51, v12);
    v52 = v18;
    v26 = 7 * v18;
    v18 *= 8;
    v27 = v4 + v2 + v26;
    *v27 = sub_29E74E9D8();
    *(v27 + 8) = v28;
    *(v27 + 16) = 0;
    (v9)(v27, v17, v12);
    v29 = v4 + v2 + v18;
    *v29 = sub_29E74E9D8();
    *(v29 + 8) = v30;
    *(v29 + 16) = 0;
    (v9)(v29, v17, v12);
    v31 = v4 + v2 + v18 + v52;
    *v31 = sub_29E74E9D8();
    *(v31 + 8) = v32;
    *(v31 + 16) = 0;
    (v9)(v31, v17, v12);
    v33 = v4 + v2 + 10 * v52;
    *v33 = sub_29E74E9D8();
    *(v33 + 8) = v34;
    *(v33 + 16) = 0;
    (v9)(v33, v17, v12);
    v35 = v4 + v2 + 11 * v52;
    *v35 = sub_29E74E9D8();
    *(v35 + 8) = v36;
    *(v35 + 16) = 0;
    (v9)(v35, v17, v12);
    v37 = (v4 + v2 + 12 * v52);
    *v37 = sub_29E74E9D8();
    v37[1] = v38;
    v37[2] = 0;
    (v9)(v37, v51, v12);
    v39 = v4 + v2 + 13 * v52;
    *v39 = sub_29E74E9D8();
    *(v39 + 8) = v40;
    *(v39 + 16) = 0;
    (v9)(v39, v17, v12);
    v41 = v4 + v2 + 14 * v52;
    *v41 = sub_29E74E9D8();
    *(v41 + 8) = v42;
    *(v41 + 16) = 0;
    (v9)(v41, v17, v12);
    v43 = v4 + v2 + 15 * v52;
    *v43 = sub_29E74E9D8();
    *(v43 + 8) = v44;
    *(v43 + 16) = 0;
    (v9)(v43, v17, v12);
    v45 = (v4 + v2 + 16 * v52);
    sub_29E62379C();
    v47 = (v45 + *(v46 + 48));
    *v45 = sub_29E74E9D8();
    v45[1] = v48;
    *v47 = sub_29E622760;
    v47[1] = 0;
    v49 = *MEMORY[0x29EDC15B8];
    v50 = sub_29E7500F8();
    (*(*(v50 - 8) + 104))(v47, v49, v50);
    (v9)(v45, *MEMORY[0x29EDC1600], v12);
  }

  else
  {
    __break(1u);
  }
}

void sub_29E62379C()
{
  if (!qword_2A1857300)
  {
    sub_29E7500F8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1857300);
    }
  }
}

void sub_29E623808(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E62386C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29E605728;

  return sub_29E6228AC(a1, v4, v5, v6);
}

uint64_t sub_29E623920(void *a1)
{
  v2 = sub_29E74F7F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x29EDC6B20], v2);
  sub_29E746094(v11);
  (*(v3 + 8))(v6, v2);
  sub_29E601938(v11, v12);
  sub_29E750148();
  sub_29E601938(v11, v12);
  sub_29E750138();
  v7 = objc_allocWithZone(sub_29E750128());
  v8 = sub_29E750118();
  v9 = [objc_allocWithZone(MEMORY[0x29EDC4750]) initWithRootViewController_];
  [a1 presentViewController:v9 animated:1 completion:0];

  return sub_29E5FECBC(v11);
}

void sub_29E623AE8(unint64_t *a1@<X8>)
{
  v2 = 0xEE00737265646E69;
  v3 = 0x6D65527065656C73;
  v4 = 0x800000029E759300;
  v5 = 0xD000000000000017;
  if (*v1 != 2)
  {
    v5 = 0x746157656C707061;
    v4 = 0xEA00000000006863;
  }

  if (*v1)
  {
    v3 = 0x7365527065656C73;
    v2 = 0xEC00000073746C75;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

double sub_29E623B84@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      sub_29E628268(&v39);
      v34 = v39;
      LOBYTE(v35) = v40;
      v46[0] = *(&v40 + 1);
      v44 = v41;
      v45 = v42;
      v43 = *(&v42 + 1);
      v26 = 1;
      v28 = v39;
      v29 = v40;
      v30 = v41;
      v31 = v42;
      LOBYTE(v32) = 1;
      sub_29E6283CC(&v34, v24);
      v11 = MEMORY[0x29EDBCA08];
      v12 = MEMORY[0x29EDC9A40];
      sub_29E628F88(v46, v24, &qword_2A1857308, MEMORY[0x29EDBCA08], MEMORY[0x29EDC9A40]);
      sub_29E6283CC(&v44, v24);
      sub_29E628F88(&v43, v24, &qword_2A1857308, v11, v12);
      sub_29E628428();
      sub_29E62847C();
      sub_29E753118();
      v30 = v20;
      v31 = v21;
      LOBYTE(v32) = v22;
      v28 = v18;
      v29 = v19;
      v27 = 1;
      HIBYTE(v33) = 1;
      v13 = MEMORY[0x29EDBC7F0];
      sub_29E629400(0, &qword_2A1857320, &type metadata for SleepRemindersRow, &type metadata for SleepResultsRow, MEMORY[0x29EDBC7F0]);
      sub_29E629400(0, &qword_2A1857328, &type metadata for SleepScoreNotificationsRow, &type metadata for AppleWatchSettingsRow, v13);
      sub_29E6284D0();
      sub_29E628624();
      sub_29E753118();
      sub_29E6286D0(&v34);
      sub_29E628724(v46);
      sub_29E6286D0(&v44);
      sub_29E628724(&v43);
      goto LABEL_12;
    }

    sub_29E74F418();
    sub_29E62A828(&qword_2A18568C0, MEMORY[0x29EDC6A30]);
    v5 = sub_29E752CE8();
    LOBYTE(v44) = 0;
    sub_29E628428();
    sub_29E62847C();
    v6 = v5;
    sub_29E753118();
    v30 = v20;
    v31 = v21;
    LOBYTE(v32) = v22;
    v28 = v18;
    v29 = v19;
    LOBYTE(v34) = 1;
    HIBYTE(v33) = 1;
    v7 = MEMORY[0x29EDBC7F0];
    sub_29E629400(0, &qword_2A1857320, &type metadata for SleepRemindersRow, &type metadata for SleepResultsRow, MEMORY[0x29EDBC7F0]);
    sub_29E629400(0, &qword_2A1857328, &type metadata for SleepScoreNotificationsRow, &type metadata for AppleWatchSettingsRow, v7);
    sub_29E6284D0();
    sub_29E628624();
    sub_29E753118();
  }

  else
  {
    if (!a1)
    {
      sub_29E6280A8(&v34);
      v30 = v36;
      v31 = v37;
      v32 = v38;
      v28 = v34;
      v29 = v35;
      LOBYTE(v46[0]) = 0;
      LOBYTE(v33) = 0;
      sub_29E6287A4(&v34, v24);
      sub_29E62857C();
      sub_29E6285D0();
      sub_29E753118();
      v30 = v20;
      v31 = v21;
      v32 = v22;
      v33 = v23;
      v28 = v18;
      v29 = v19;
      LOBYTE(v44) = 0;
      v4 = MEMORY[0x29EDBC7F0];
      sub_29E629400(0, &qword_2A1857320, &type metadata for SleepRemindersRow, &type metadata for SleepResultsRow, MEMORY[0x29EDBC7F0]);
      sub_29E629400(0, &qword_2A1857328, &type metadata for SleepScoreNotificationsRow, &type metadata for AppleWatchSettingsRow, v4);
      sub_29E6284D0();
      sub_29E628624();
      sub_29E753118();
      sub_29E6287DC(&v34);
LABEL_12:

      goto LABEL_13;
    }

    sub_29E74F418();
    sub_29E62A828(&qword_2A18568C0, MEMORY[0x29EDC6A30]);
    v8 = sub_29E752CE8();
    LOBYTE(v24[0]) = 0;
    sub_29E7539F8();
    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    sub_29E74E9D8();
    LOBYTE(v44) = 1;
    sub_29E62857C();
    sub_29E6285D0();
    v9 = v8;

    sub_29E753118();
    v30 = v20;
    v31 = v21;
    v32 = v22;
    v33 = v23;
    v28 = v18;
    v29 = v19;
    LOBYTE(v34) = 0;
    v10 = MEMORY[0x29EDBC7F0];
    sub_29E629400(0, &qword_2A1857320, &type metadata for SleepRemindersRow, &type metadata for SleepResultsRow, MEMORY[0x29EDBC7F0]);
    sub_29E629400(0, &qword_2A1857328, &type metadata for SleepScoreNotificationsRow, &type metadata for AppleWatchSettingsRow, v10);
    sub_29E6284D0();
    sub_29E628624();
    sub_29E753118();
  }

LABEL_13:
  v32 = v24[4];
  v14 = v25;
  v28 = v24[0];
  v29 = v24[1];
  v15 = v24[3];
  *(a2 + 32) = v24[2];
  *(a2 + 48) = v15;
  *(a2 + 64) = v32;
  *(a2 + 80) = v14;
  result = *&v28;
  v17 = v29;
  *a2 = v28;
  *(a2 + 16) = v17;
  return result;
}

void sub_29E624308(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = *a1;
  aBlock = a4;
  v16 = a5;
  LOBYTE(v17) = a6;
  v21 = v11;
  sub_29E6294D0(0, &qword_2A1857380, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB78]);
  sub_29E753AD8();
  if (v11 == 1)
  {
    v12 = [objc_opt_self() currentNotificationCenter];
    v13 = swift_allocObject();
    *(v13 + 16) = a7;
    *(v13 + 24) = a8;
    *(v13 + 32) = a9 & 1;
    v19 = sub_29E628CB8;
    v20 = v13;
    aBlock = MEMORY[0x29EDCA5F8];
    v16 = 1107296256;
    v17 = sub_29E62452C;
    v18 = &unk_2A24FE890;
    v14 = _Block_copy(&aBlock);

    [v12 getNotificationSettingsWithCompletionHandler_];
    _Block_release(v14);
  }
}

unint64_t sub_29E624480(void *a1)
{
  result = [a1 authorizationStatus];
  if (result <= 4 && ((1 << result) & 0x13) != 0)
  {
    sub_29E6294D0(0, &qword_2A1857380, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB78]);
    return sub_29E753AD8();
  }

  return result;
}

void sub_29E62452C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_29E624594()
{
  if (*v0)
  {
    v1 = *v0;
    v2 = sub_29E74F3C8();

    if (v2)
    {
      if (qword_2A1A7D6F0 == -1)
      {
        goto LABEL_6;
      }
    }

    else if (qword_2A1A7D6F0 == -1)
    {
LABEL_6:
      sub_29E74E9D8();
      sub_29E60DE10();
      return sub_29E753608();
    }

    swift_once();
    goto LABEL_6;
  }

  v4 = *(v0 + 8);
  sub_29E74F418();
  sub_29E62A828(&qword_2A18568C0, MEMORY[0x29EDC6A30]);
  result = sub_29E752CD8();
  __break(1u);
  return result;
}

uint64_t sub_29E624724@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v2 = MEMORY[0x29EDBCA18];
  sub_29E628CDC(0, &qword_2A1857358);
  v16[0] = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = v16 - v6;
  v21 = *(v1 + 32);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v25 = v21;
  v26 = *(v1 + 48);
  v24 = v9;
  v22 = v8;
  v23 = v9;
  sub_29E6283CC(&v25, &v18);
  sub_29E628F88(&v24, &v18, &qword_2A1857308, MEMORY[0x29EDBCA08], MEMORY[0x29EDC9A40]);
  *&v18 = sub_29E624594();
  *(&v18 + 1) = v10;
  v19 = v11 & 1;
  v20 = v12;
  v17 = v1;
  v13 = MEMORY[0x29EDBC288];
  sub_29E629400(0, &qword_2A1857360, v2, MEMORY[0x29EDBCA10], MEMORY[0x29EDBC288]);
  sub_29E628BDC(&qword_2A1857368, &qword_2A1857360, v13);
  sub_29E753B88();
  v18 = *(v1 + 16);
  sub_29E6294D0(0, &qword_2A1857370, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);
  sub_29E753A18();
  sub_29E754278();
  sub_29E754288();
  sub_29E628D78(&qword_2A1857378, &qword_2A1857358);
  v14 = v16[0];
  sub_29E753628();

  return (*(v4 + 8))(v7, v14);
}

uint64_t sub_29E624A08(uint64_t a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  v2 = MEMORY[0x29EDCA390];
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(a1 + 72);
  v25 = *(a1 + 64);
  v26 = v3;
  v21 = *(a1 + 16);
  sub_29E6294D0(0, &qword_2A1857370, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);

  sub_29E753A18();
  v4 = v22;
  v5 = v23;
  v6 = v24;
  sub_29E6287A4(a1, &v22);
  v7 = sub_29E7544B8();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v2;
  v9 = *(a1 + 48);
  *(v8 + 64) = *(a1 + 32);
  *(v8 + 80) = v9;
  *(v8 + 96) = *(a1 + 64);
  v10 = *(a1 + 16);
  *(v8 + 32) = *a1;
  *(v8 + 48) = v10;
  sub_29E6287A4(a1, &v22);
  v11 = sub_29E7544B8();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v2;
  v13 = *(a1 + 48);
  *(v12 + 64) = *(a1 + 32);
  *(v12 + 80) = v13;
  *(v12 + 96) = *(a1 + 64);
  v14 = *(a1 + 16);
  *(v12 + 32) = *a1;
  *(v12 + 48) = v14;
  sub_29E753AE8();
  v15 = v22;
  v16 = v23;
  v17 = v24;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v15;
  *(v18 + 40) = v16;
  *(v18 + 48) = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = v15;
  *(v19 + 40) = v16;
  *(v19 + 48) = v17;
  *(v19 + 56) = v4;
  *(v19 + 64) = v5;
  *(v19 + 72) = v6;

  sub_29E753AE8();
  sub_29E60DE10();
  sub_29E753A88();
}

void sub_29E624CC4(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*a1)
  {
    v4 = *a1;
    v5 = sub_29E74F3C8();

    *a2 = v5 & 1;
  }

  else
  {
    v6 = *(a1 + 8);
    sub_29E74F418();
    sub_29E62A828(&qword_2A18568C0, MEMORY[0x29EDC6A30]);
    sub_29E752CD8();
    __break(1u);
  }
}

void sub_29E624DDC(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*a4)
  {
    v7 = *a4;
    sub_29E74F3D8();
  }

  else
  {
    v6 = *(a4 + 8);
    sub_29E74F418();
    sub_29E62A828(&qword_2A18568C0, MEMORY[0x29EDC6A30]);
    sub_29E752CD8();
    __break(1u);
  }
}

uint64_t sub_29E624F0C@<X0>(uint64_t a1@<X8>)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = *v1;
  v4 = v1[1];
  return sub_29E624724(a1);
}

uint64_t sub_29E624F50@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_29E628CDC(0, &qword_2A1857388);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v9 = &v20 - v8;
  if (*v1)
  {
    v10 = *v1;
    v11 = sub_29E74F3A8();

    v20 = a1;
    v21 = v5;
    if (v11)
    {
      if (qword_2A1A7D6F0 == -1)
      {
        goto LABEL_6;
      }
    }

    else if (qword_2A1A7D6F0 == -1)
    {
LABEL_6:
      v23 = sub_29E74E9D8();
      v24 = v12;
      sub_29E60DE10();
      v23 = sub_29E753608();
      v24 = v13;
      v25 = v14 & 1;
      v26 = v15;
      MEMORY[0x2A1C7C4A8](v23);
      v16 = MEMORY[0x29EDBC288];
      sub_29E629400(0, &qword_2A1857360, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA10], MEMORY[0x29EDBC288]);
      sub_29E628BDC(&qword_2A1857368, &qword_2A1857360, v16);
      sub_29E753B98();
      v22 = *(v2 + 16);
      sub_29E6294D0(0, &qword_2A1857370, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);
      sub_29E753A18();
      sub_29E754268();
      sub_29E754288();
      sub_29E628D78(&qword_2A1857390, &qword_2A1857388);
      v17 = v21;
      sub_29E753628();

      return (*(v6 + 8))(v9, v17);
    }

    swift_once();
    goto LABEL_6;
  }

  v19 = *(v1 + 8);
  sub_29E74F418();
  sub_29E62A828(&qword_2A18568C0, MEMORY[0x29EDC6A30]);
  result = sub_29E752CD8();
  __break(1u);
  return result;
}

uint64_t sub_29E625364(__int128 *a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  v2 = MEMORY[0x29EDCA390];
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = a1[1];
  v28 = a1[2];
  v4 = a1[1];
  v25 = a1[2];
  v27 = v4;
  v5 = MEMORY[0x29EDC9A98];
  v6 = MEMORY[0x29EDBCB00];
  sub_29E6294D0(0, &qword_2A1857370, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);

  sub_29E753A18();
  v7 = v22;
  v21 = v23;
  v20 = v24;
  v26 = *a1;
  sub_29E628E30(&v28, &v22);
  sub_29E628E8C(&v26, &v22, sub_29E628EF4);
  sub_29E628F88(&v27, &v22, &qword_2A1857370, v5, v6);
  v8 = sub_29E7544B8();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v2;
  v10 = a1[1];
  *(v9 + 32) = *a1;
  *(v9 + 48) = v10;
  *(v9 + 64) = a1[2];
  sub_29E628E30(&v28, &v22);
  sub_29E628E8C(&v26, &v22, sub_29E628EF4);
  sub_29E628F88(&v27, &v22, &qword_2A1857370, v5, v6);
  v11 = sub_29E7544B8();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v2;
  v13 = a1[1];
  *(v12 + 32) = *a1;
  *(v12 + 48) = v13;
  *(v12 + 64) = a1[2];
  sub_29E753AE8();
  v14 = v22;
  v15 = v23;
  v16 = v24;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = v14;
  *(v17 + 40) = v15;
  *(v17 + 48) = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v14;
  *(v18 + 40) = v15;
  *(v18 + 48) = v16;
  *(v18 + 56) = v7;
  *(v18 + 64) = v21;
  *(v18 + 72) = v20;

  sub_29E753AE8();
  sub_29E60DE10();
  sub_29E753A88();
}

void sub_29E6256A0(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*a1)
  {
    v4 = *a1;
    v5 = sub_29E74F3A8();

    *a2 = v5 & 1;
  }

  else
  {
    v6 = *(a1 + 8);
    sub_29E74F418();
    sub_29E62A828(&qword_2A18568C0, MEMORY[0x29EDC6A30]);
    sub_29E752CD8();
    __break(1u);
  }
}

void sub_29E6257B8(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*a4)
  {
    v7 = *a4;
    sub_29E74F3B8();
  }

  else
  {
    v6 = *(a4 + 8);
    sub_29E74F418();
    sub_29E62A828(&qword_2A18568C0, MEMORY[0x29EDC6A30]);
    sub_29E752CD8();
    __break(1u);
  }
}

uint64_t sub_29E6258E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return sub_29E624F50(a1);
}

uint64_t sub_29E625924(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = sub_29E74F388();

    v3 = *(v2 + 16);

    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    sub_29E74E9D8();

    sub_29E60DE10();
    return sub_29E753608();
  }

  else
  {
    sub_29E74F418();
    sub_29E62A828(&qword_2A18568C0, MEMORY[0x29EDC6A30]);
    result = sub_29E752CD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_29E625A84(void *a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E74F418();
  sub_29E62A828(&qword_2A18568C0, MEMORY[0x29EDC6A30]);
  if (a1)
  {
    v2 = a1;
    sub_29E752BA8();
    v3 = sub_29E7539F8();
    MEMORY[0x2A1C7C4A8](v3);
    sub_29E629400(0, &qword_2A18573A8, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA18], MEMORY[0x29EDBBEF8]);
    sub_29E629260();
    sub_29E6292F8();
    sub_29E752B48();
  }

  else
  {
    result = sub_29E752CD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_29E625CB0()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x2A1C7C4A8](isCurrentExecutor);
  sub_29E752B28();
}

uint64_t sub_29E625DBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    v4 = a1;
    v5 = sub_29E74F388();

    v6 = *(v5 + 16);

    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    sub_29E74E9D8();

    sub_29E60DE10();
    v7 = sub_29E753608();
    v9 = v8;
    v11 = v10;
    v13 = v12;

    *a2 = v7;
    *(a2 + 8) = v9;
    *(a2 + 16) = v11 & 1;
    *(a2 + 24) = v13;
  }

  else
  {
    sub_29E74F418();
    sub_29E62A828(&qword_2A18568C0, MEMORY[0x29EDC6A30]);
    result = sub_29E752CD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_29E625FB0@<X0>(uint64_t a1@<X8>)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  sub_29E60DE10();
  v2 = sub_29E753608();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_29E6260F4()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  sub_29E625924(v2);
  sub_29E6291B0();
  sub_29E62A828(&qword_2A18573C0, sub_29E6291B0);
  return sub_29E753B98();
}

uint64_t sub_29E6261C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a2;
  v36 = a1;
  v42 = a5;
  v7 = sub_29E753198();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6298B0();
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v12);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E629CE8();
  v37 = *(v18 - 8);
  v38 = v18;
  v19 = *(v37 + 64);
  MEMORY[0x2A1C7C4A8](v18);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E629DBC();
  v41 = v22;
  v39 = *(v22 - 8);
  v23 = *(v39 + 64);
  MEMORY[0x2A1C7C4A8](v22);
  v25 = &v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v36;
  v44 = v40;
  LODWORD(v36) = a3 & 1;
  v45 = a3;
  v40 = a4;
  v46 = a4;
  sub_29E629780(0, &qword_2A1857420, sub_29E629954);
  sub_29E629B90();
  sub_29E753568();
  sub_29E753188();
  v26 = sub_29E62A828(&qword_2A1857468, sub_29E6298B0);
  v27 = MEMORY[0x29EDBC010];
  sub_29E7538B8();
  (*(v8 + 8))(v11, v7);
  (*(v14 + 8))(v17, v13);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v51 = sub_29E74E9D8();
  v52 = v28;
  v47 = v13;
  v48 = v7;
  v49 = v26;
  v50 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = sub_29E60DE10();
  v35 = v25;
  v31 = v38;
  sub_29E7537C8();

  (*(v37 + 8))(v21, v31);
  LOBYTE(v51) = v36;
  v52 = v40;
  sub_29E6294D0(0, &qword_2A1857370, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);
  sub_29E753A18();
  sub_29E7542A8();
  sub_29E754288();
  v47 = v31;
  v48 = MEMORY[0x29EDC99B0];
  v49 = OpaqueTypeConformance2;
  v50 = v30;
  swift_getOpaqueTypeConformance2();
  v32 = v41;
  v33 = v35;
  sub_29E753628();

  return (*(v39 + 8))(v33, v32);
}

uint64_t sub_29E626724()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  sub_29E60DE10();
  v1 = sub_29E753608();
  MEMORY[0x2A1C7C4A8](v1);
  sub_29E629954();
  sub_29E629C40();
  sub_29E753B98();
}

uint64_t sub_29E6268F8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18[0] = a5;
  v9 = sub_29E74F0D8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E74F408();
  v14 = sub_29E74F078();
  (*(v10 + 8))(v13, v9);
  v18[1] = v14;
  swift_getKeyPath();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3 & 1;
  *(v15 + 40) = a4;
  sub_29E629A58(0, &qword_2A1857430, MEMORY[0x29EDC6938], MEMORY[0x29EDC9A40]);
  type metadata accessor for SleepScoreLevelSelection.SleepScoreLevelItem();
  sub_29E629B08();
  sub_29E62A828(&qword_2A1857440, MEMORY[0x29EDC6938]);
  sub_29E62A828(&qword_2A1857458, type metadata accessor for SleepScoreLevelSelection.SleepScoreLevelItem);
  v16 = a2;

  sub_29E753B38();
}

uint64_t sub_29E626BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v39 = a4;
  v37 = a3;
  v38 = a1;
  v43 = a2;
  v8 = sub_29E74F098();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v42 = v11;
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E7544C8();
  v40 = sub_29E7544B8();
  v14 = v13;
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = *(v9 + 16);
  v34 = v15;
  v36 = a6;
  v16 = v38;
  v15(a6, v38, v8);
  v15(v12, v16, v8);

  v17 = v37;
  v35 = v14;
  v18 = sub_29E7544B8();
  v41 = v8;
  v33 = a5;
  v19 = (*(v9 + 80) + 64) & ~*(v9 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  v21 = v43;
  *(v20 + 24) = MEMORY[0x29EDCA390];
  *(v20 + 32) = v21;
  *(v20 + 40) = v17;
  v39 &= 1u;
  *(v20 + 48) = v39;
  *(v20 + 56) = a5;
  v37 = *(v9 + 32);
  v22 = v41;
  (v37)(v20 + v19, v12, v41);
  v34(v12, v16, v22);
  v23 = v17;
  v24 = v33;

  v25 = sub_29E7544B8();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  v27 = v43;
  *(v26 + 24) = MEMORY[0x29EDCA390];
  *(v26 + 32) = v27;
  *(v26 + 40) = v23;
  *(v26 + 48) = v39;
  *(v26 + 56) = v24;
  (v37)(v26 + v19, v12, v41);
  sub_29E753AE8();

  v28 = v44;
  v29 = v45;
  v30 = v46;
  result = type metadata accessor for SleepScoreLevelSelection.SleepScoreLevelItem();
  v32 = &v36[*(result + 20)];
  *v32 = v28;
  *(v32 + 1) = v29;
  v32[16] = v30;
  return result;
}

uint64_t sub_29E626ECC@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_29E74EF88();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E74F088();
  v7 = sub_29E74F358();
  (*(v3 + 8))(v6, v2);

  *a1 = v7 & 1;
  return result;
}

uint64_t sub_29E627030(unsigned __int8 *a1)
{
  v2 = sub_29E74EF88();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E74F088();
  v8 = sub_29E74F358() & 1;
  v9 = *(v3 + 8);
  v9(v6, v2);
  if (v7 != v8)
  {
    sub_29E74F088();
    sub_29E74F348();
    v9(v6, v2);
  }
}

uint64_t sub_29E6271C4(uint64_t a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_29E7539B8();
  v3 = sub_29E7538F8();
  v12 = v2;
  KeyPath = swift_getKeyPath();
  v14 = v3;
  v4 = (a1 + *(type metadata accessor for SleepScoreLevelSelection.SleepScoreLevelItem() + 20));
  v5 = *v4;
  v6 = v4[1];
  LOBYTE(v4) = *(v4 + 16);
  v9 = v5;
  v10 = v6;
  v11 = v4;
  sub_29E6294D0(0, &qword_2A1857380, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB78]);
  MEMORY[0x29ED963E0](&v8);
  sub_29E62A3A4();
  sub_29E62A404();
  sub_29E753638();
}

uint64_t sub_29E62734C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29E74EF88();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E74F088();
  v7 = sub_29E74EF58();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v26 = v7;
  v27 = v9;
  sub_29E60DE10();
  v10 = sub_29E753608();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v26 = sub_29E74F068();
  v27 = v17;
  v18 = sub_29E753608();
  v20 = v19;
  v25[0] = v14 & 1;
  LOBYTE(v26) = v14 & 1;
  v22 = v21 & 1;
  v28 = v21 & 1;
  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v16;
  *(a1 + 32) = v18;
  *(a1 + 40) = v19;
  *(a1 + 48) = v21 & 1;
  *(a1 + 56) = v23;
  sub_29E62935C(v10, v12, v14 & 1);

  sub_29E62935C(v18, v20, v22);

  sub_29E60DB44(v18, v20, v22);

  sub_29E60DB44(v10, v12, v25[0]);
}

uint64_t sub_29E627590(uint64_t a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (a1 + *(type metadata accessor for SleepScoreLevelSelection.SleepScoreLevelItem() + 20));
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  sub_29E6294D0(0, &qword_2A1857380, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB78]);
  v7 = v6;

  MEMORY[0x29ED963E0](&v9, v7);
  sub_29E753AD8();
}

uint64_t sub_29E6276D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v17[1] = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](a1 - 8);
  sub_29E62A1C4();
  v7 = v6;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[8] = v3;
  v17[4] = v3;
  sub_29E629A58(0, &qword_2A1857498, sub_29E62A2C4, MEMORY[0x29EDBCC28]);
  sub_29E62A320();
  sub_29E62A574();
  sub_29E62A3A4();
  v12 = v11;
  v13 = sub_29E62A404();
  v17[10] = v12;
  v17[11] = v13;
  swift_getOpaqueTypeConformance2();
  sub_29E752B28();
  v10[*(v7 + 36)] = 0;
  sub_29E628E8C(v3, v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SleepScoreLevelSelection.SleepScoreLevelItem);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  sub_29E62A5FC(v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  sub_29E62A6C0();
  sub_29E753738();

  return sub_29E5F1FB8(v10);
}

void sub_29E627954(uint64_t a1@<X8>)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  sub_29E60DE10();
  sub_29E753A48();
  v2 = [objc_opt_self() hk_appTintColor];
  v3 = sub_29E7538E8();
  KeyPath = swift_getKeyPath();

  sub_29E62936C();
  v6 = (a1 + *(v5 + 36));
  *v6 = KeyPath;
  v6[1] = v3;
}

uint64_t sub_29E627AD8()
{
  v0 = sub_29E752098();
  v22 = *(v0 - 8);
  v1 = *(v22 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E74F7B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E74EAF8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v23 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = HKSPSleepWatchAppURL();
  if (v14)
  {
    v15 = v14;
    sub_29E74EAD8();

    sub_29E74F7A8();
    sub_29E74F798();
    (*(v5 + 8))(v8, v4);
    (*(v10 + 8))(v13, v9);
  }

  else
  {
    sub_29E752048();
    v16 = sub_29E752088();
    v17 = sub_29E7546A8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_29E6B9C90(0xD000000000000015, 0x800000029E764C40, &v24);
      _os_log_impl(&dword_29E5ED000, v16, v17, "[%{public}s] Error trying to open Nano Bedtime Bridge Settings from Sleep Options View", v18, 0xCu);
      sub_29E5FECBC(v19);
      MEMORY[0x29ED98410](v19, -1, -1);
      MEMORY[0x29ED98410](v18, -1, -1);
    }

    (*(v22 + 8))(v3, v0);
  }
}

uint64_t sub_29E627E44()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 56);
  sub_29E62935C(*v0, *(v0 + 8), *(v0 + 16));

  sub_29E62935C(v1, v2, v3);
  sub_29E62936C();
  sub_29E629520();

  return sub_29E753B88();
}

void sub_29E627F28(char a1)
{
  v2 = sub_29E6DAEE4(0, 1, 1, MEMORY[0x29EDCA190]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_29E6DAEE4((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v2[v4 + 32] = 0;
  v5 = [objc_opt_self() sharedBehavior];
  if (!v5)
  {
    __break(1u);
    goto LABEL_16;
  }

  v6 = v5;
  v7 = [v5 features];

  if (!v7)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v8 = [v7 sleepResultsNotificationsOnWatch];

  v10 = *(v2 + 2);
  v9 = *(v2 + 3);
  v11 = v10 + 1;
  if (v8)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  if (v10 >= v9 >> 1)
  {
    v2 = sub_29E6DAEE4((v9 > 1), v10 + 1, 1, v2);
  }

  *(v2 + 2) = v11;
  v2[v10 + 32] = v12;
  if (a1)
  {
    v13 = *(v2 + 3);
    if (v11 >= v13 >> 1)
    {
      v2 = sub_29E6DAEE4((v13 > 1), v10 + 2, 1, v2);
    }

    *(v2 + 2) = v10 + 2;
    v2[v11 + 32] = 3;
  }
}

uint64_t sub_29E6280A8@<X0>(uint64_t a1@<X8>)
{
  sub_29E74F418();
  sub_29E62A828(&qword_2A18568C0, MEMORY[0x29EDC6A30]);
  v2 = sub_29E752CE8();
  v4 = v3;
  sub_29E7539F8();
  v5 = v14;
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  sub_29E60DE10();
  v6 = sub_29E753608();
  v8 = v7;
  v10 = v9;
  v15 = v11 & 1;
  result = sub_29E74E9D8();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v16;
  *(a1 + 32) = v6;
  *(a1 + 40) = v8;
  *(a1 + 48) = v15;
  *(a1 + 56) = v10;
  *(a1 + 64) = result;
  *(a1 + 72) = v13;
  return result;
}

uint64_t sub_29E628268@<X0>(uint64_t a1@<X8>)
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  sub_29E60DE10();
  v2 = sub_29E753608();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_29E74E9D8();
  result = sub_29E753608();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = result;
  *(a1 + 40) = v11;
  *(a1 + 48) = v10 & 1;
  *(a1 + 56) = v12;
  return result;
}

unint64_t sub_29E628428()
{
  result = qword_2A1857310;
  if (!qword_2A1857310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857310);
  }

  return result;
}

unint64_t sub_29E62847C()
{
  result = qword_2A1857318;
  if (!qword_2A1857318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857318);
  }

  return result;
}

unint64_t sub_29E6284D0()
{
  result = qword_2A1857330;
  if (!qword_2A1857330)
  {
    sub_29E629400(255, &qword_2A1857320, &type metadata for SleepRemindersRow, &type metadata for SleepResultsRow, MEMORY[0x29EDBC7F0]);
    sub_29E62857C();
    sub_29E6285D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857330);
  }

  return result;
}

unint64_t sub_29E62857C()
{
  result = qword_2A1857338;
  if (!qword_2A1857338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857338);
  }

  return result;
}

unint64_t sub_29E6285D0()
{
  result = qword_2A1857340;
  if (!qword_2A1857340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857340);
  }

  return result;
}

unint64_t sub_29E628624()
{
  result = qword_2A1857348;
  if (!qword_2A1857348)
  {
    sub_29E629400(255, &qword_2A1857328, &type metadata for SleepScoreNotificationsRow, &type metadata for AppleWatchSettingsRow, MEMORY[0x29EDBC7F0]);
    sub_29E628428();
    sub_29E62847C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857348);
  }

  return result;
}

uint64_t sub_29E628724(uint64_t a1)
{
  sub_29E6294D0(0, &qword_2A1857308, MEMORY[0x29EDBCA08], MEMORY[0x29EDC9A40]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_29E628818(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_29E62882C(uint64_t a1, int a2)
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

uint64_t sub_29E628874(uint64_t result, int a2, int a3)
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

uint64_t sub_29E6288D4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_29E628930(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_29E628990(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29E6289D8(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

__n128 sub_29E628A34(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_29E628A50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29E628A98(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

unint64_t sub_29E628B10()
{
  result = qword_2A1857350;
  if (!qword_2A1857350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857350);
  }

  return result;
}

uint64_t sub_29E628BDC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29E629400(255, a2, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA10], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E628C34(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_29E624CC4(v1 + 32, a1);
}

uint64_t sub_29E628C40()
{
  v1 = *(v0 + 16);
  sub_29E751758();

  v2 = *(v0 + 56);

  sub_29E60DB44(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  v3 = *(v0 + 88);

  v4 = *(v0 + 104);

  return MEMORY[0x2A1C733A0](v0, 112, 7);
}