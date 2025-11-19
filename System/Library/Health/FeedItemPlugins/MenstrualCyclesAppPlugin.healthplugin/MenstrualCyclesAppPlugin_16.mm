uint64_t sub_29E035CD0(uint64_t a1, uint64_t a2)
{
  sub_29E035C6C(0, &unk_2A1A62840, MEMORY[0x29EDB9D18], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29E035D64(void *a1)
{
  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025926SimpleShapeFakeMaskingView_backgroundLayerColor;
  v3 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025926SimpleShapeFakeMaskingView_backgroundLayerColor);
  *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025926SimpleShapeFakeMaskingView_backgroundLayerColor) = a1;
  v4 = a1;

  v5 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025926SimpleShapeFakeMaskingView_backgroundLayer);
  v6 = *(v1 + v2);
  v7 = v5;
  if (v6)
  {
    v8 = [v6 CGColor];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v5 setBackgroundColor_];
}

uint64_t sub_29E035E14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E035E5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CycleDay();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E035EC0(uint64_t a1, uint64_t a2)
{
  sub_29E035C6C(0, &unk_2A1A62840, MEMORY[0x29EDB9D18], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E035F54(_OWORD *a1)
{
  v2 = a1;
  v3 = (v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration);
  v4 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration + 112);
  v5 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration + 80);
  v32 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration + 96);
  v33 = v4;
  v6 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration + 112);
  v7 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration + 144);
  v34 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration + 128);
  v35 = v7;
  v8 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration + 48);
  v9 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration + 16);
  v28 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration + 32);
  v29 = v8;
  v10 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration + 48);
  v11 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration + 80);
  v30 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration + 64);
  v31 = v11;
  v12 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration + 16);
  v27[0] = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration);
  v27[1] = v12;
  v36[6] = v32;
  v36[7] = v6;
  v13 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration + 144);
  v36[8] = v34;
  v36[9] = v13;
  v36[2] = v28;
  v36[3] = v10;
  v36[4] = v30;
  v36[5] = v5;
  v36[0] = v27[0];
  v36[1] = v9;
  v14 = a1[7];
  v3[6] = a1[6];
  v3[7] = v14;
  v15 = a1[9];
  v3[8] = a1[8];
  v3[9] = v15;
  v16 = a1[3];
  v3[2] = a1[2];
  v3[3] = v16;
  v17 = a1[5];
  v3[4] = a1[4];
  v3[5] = v17;
  v18 = a1[1];
  *v3 = *a1;
  v3[1] = v18;
  sub_29DF8944C(v27, v26);
  sub_29DF8944C(v2, v26);
  sub_29DF8950C(v36);
  v19 = v3[7];
  v26[6] = v3[6];
  v26[7] = v19;
  v20 = v3[9];
  v26[8] = v3[8];
  v26[9] = v20;
  v21 = v3[3];
  v26[2] = v3[2];
  v26[3] = v21;
  v22 = v3[5];
  v26[4] = v3[4];
  v26[5] = v22;
  v23 = v3[1];
  v26[0] = *v3;
  v26[1] = v23;
  sub_29DF8944C(v26, &v25);
  LOBYTE(v2) = sub_29E1A9D00(v26, v27);
  sub_29DF8950C(v26);
  if ((v2 & 1) == 0)
  {
    sub_29E032EC8();
  }

  return sub_29DF8950C(v27);
}

uint64_t sub_29E036088(uint64_t a1)
{
  sub_29E035C6C(0, &unk_2A1A62840, MEMORY[0x29EDB9D18], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for SharedProjectionHighlightTileViewModelContextData()
{
  result = qword_2A1A5EF58;
  if (!qword_2A1A5EF58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E0361A4()
{
  sub_29E036268(319, &qword_2A1A5E1F8, sub_29DFF9A48);
  if (v0 <= 0x3F)
  {
    sub_29E036268(319, &qword_2A1A61668, MEMORY[0x29EDC3990]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_29E036268(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E2C4304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E0362BC()
{
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E2C3384();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v15[-v7];
  if ((*(v0 + 8) & 1) == 0)
  {
    sub_29E2C3314();
    (*(v3 + 16))(v5, v8, v2);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v12 = qword_2A1A67F80;
    sub_29E2BCC74();
    v11 = sub_29E2C3414();
    (*(v3 + 8))(v8, v2);
    return v11;
  }

  if (*v0)
  {
    v9 = *v0;
    if ([v9 predictionPrimarySource] == 3 || objc_msgSend(v9, sel_predictionPrimarySource) == 4)
    {
      sub_29E2C3394();
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v10 = qword_2A1A67F80;
      sub_29E2BCC74();
      v11 = sub_29E2C3414();

      return v11;
    }
  }

  sub_29E2C3394();
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v14 = qword_2A1A67F80;
  sub_29E2BCC74();
  return sub_29E2C3414();
}

id sub_29E036628()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32CycleTrackingFinishSetupTileCell_item;
  swift_beginAccess();
  sub_29DEC3518(v1 + v6, &v23);
  if (*(&v24 + 1))
  {
    sub_29DF61DEC();
    type metadata accessor for CycleTrackingFinishSetupItem();
    if (swift_dynamicCast())
    {

      return [v1 setNeedsUpdateConfiguration];
    }
  }

  else
  {
    sub_29DF61E50(&v23);
  }

  sub_29E2C04B4();
  v8 = v1;
  v9 = sub_29E2C0504();
  v10 = sub_29E2C3A14();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v2;
    v22[0] = v12;
    v13 = v12;
    *v11 = 136446466;
    v14 = sub_29E2C4AE4();
    v16 = sub_29DFAA104(v14, v15, v22);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    sub_29DEC3518(v1 + v6, &v23);
    sub_29E0387FC(0, &qword_2A18180D8, sub_29DF61DEC, MEMORY[0x29EDC9C68]);
    v17 = sub_29E2C3464();
    v19 = sub_29DFAA104(v17, v18, v22);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_29DE74000, v9, v10, "[%{public}s] Received unexpected item %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v13, -1, -1);
    MEMORY[0x29ED82140](v11, -1, -1);

    (*(v3 + 8))(v5, v21);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  swift_beginAccess();
  sub_29DEF9180(&v23, v1 + v6);
  return swift_endAccess();
}

uint64_t sub_29E036934(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32CycleTrackingFinishSetupTileCell_item;
  swift_beginAccess();
  sub_29DEC3518(v1 + v3, v5);
  if (v6)
  {
    sub_29DF61DEC();
    type metadata accessor for CycleTrackingFinishSetupItem();
    if (swift_dynamicCast())
    {
    }
  }

  else
  {
    sub_29DF61E50(v5);
  }

  swift_beginAccess();
  sub_29DEC3690(a1, v1 + v3);
  swift_endAccess();
  sub_29E036628();
  return sub_29DF61E50(a1);
}

id sub_29E036A08(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32CycleTrackingFinishSetupTileCell_parentViewController] = 0;
  v10 = &v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32CycleTrackingFinishSetupTileCell_item];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  v13.receiver = v4;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
  [v11 setAutomaticallyUpdatesBackgroundConfiguration_];
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_29E2C3E04();

  return v11;
}

void sub_29E036B10(uint64_t a1, uint64_t a2)
{
  v82 = a2;
  sub_29E038640();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_29E2C0674();
  v77 = *(v78 - 8);
  MEMORY[0x2A1C7C4A8](v78);
  v81 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2BE8B4();
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v76 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x29EDC9C68];
  sub_29E0387FC(0, &unk_2A1A61600, MEMORY[0x29EDC17F0], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v75 = &v61 - v12;
  v13 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v73 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_29E2C3384();
  v72 = *(v74 - 8);
  MEMORY[0x2A1C7C4A8](v74);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v19 = &v61 - v18;
  v20 = sub_29E2BF064();
  *&v71 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20);
  sub_29E0387FC(0, &qword_2A1A61610, MEMORY[0x29EDC17D8], v10);
  MEMORY[0x2A1C7C4A8](v21 - 8);
  v23 = &v61 - v22;
  sub_29E0387FC(0, &qword_2A1A615E0, MEMORY[0x29EDC20F8], v10);
  MEMORY[0x2A1C7C4A8](v24 - 8);
  v26 = &v61 - v25;
  v80 = sub_29E2BE8C4();
  v79 = *(v80 - 8);
  MEMORY[0x2A1C7C4A8](v80);
  v83 = &v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    v70 = v6;
    v30 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32CycleTrackingFinishSetupTileCell_item;
    swift_beginAccess();
    sub_29DEC3518(v29 + v30, &v85);
    if (v86)
    {
      v69 = v4;
      sub_29DF61DEC();
      type metadata accessor for CycleTrackingFinishSetupItem();
      if (swift_dynamicCast())
      {
        v61 = v29;
        v68 = v3;
        v67 = v84[0];
        v31 = sub_29E2BE974();
        (*(*(v31 - 8) + 56))(v26, 1, 1, v31);
        v32 = sub_29E2BDE24();
        (*(*(v32 - 8) + 56))(v23, 1, 1, v32);
        v33 = MEMORY[0x29EDC2550];
        sub_29E0387FC(0, &qword_2A181ADD0, MEMORY[0x29EDC2550], MEMORY[0x29EDC9E90]);
        v34 = swift_allocObject();
        v71 = xmmword_29E2CAB20;
        *(v34 + 16) = xmmword_29E2CAB20;
        sub_29E2BF054();
        v85 = v34;
        sub_29E03832C(&unk_2A181A7D0, 255, MEMORY[0x29EDC2550]);
        sub_29E0387FC(0, &unk_2A181B290, v33, MEMORY[0x29EDC9A40]);
        sub_29DECE044();
        sub_29E2C43F4();
        sub_29E2BEF64();
        swift_allocObject();
        v66 = sub_29E2BEF54();
        sub_29E2C3314();
        v35 = v72;
        v36 = v74;
        v62 = *(v72 + 16);
        v62(v16, v19, v74);
        if (qword_2A1A62788 != -1)
        {
          swift_once();
        }

        v37 = qword_2A1A67F80;
        sub_29E2BCC74();
        v38 = v37;
        v65 = sub_29E2C3414();
        v64 = v39;
        v40 = *(v35 + 8);
        v40(v19, v36);
        sub_29E2C3314();
        v41 = v62;
        v62(v16, v19, v36);
        sub_29E2BCC74();
        v72 = sub_29E2C3414();
        v63 = v42;
        v40(v19, v36);
        sub_29E2C3314();
        v41(v16, v19, v36);
        sub_29E2BCC74();
        sub_29E2C3414();
        v40(v19, v36);
        type metadata accessor for MenstrualCyclesHealthPluginDelegate();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v44 = [objc_opt_self() bundleForClass_];
        v45 = v75;
        sub_29E2BDE34();
        v46 = sub_29E2BDE44();
        (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
        sub_29E2BE894();
        sub_29E0387FC(0, &qword_2A181B2A0, MEMORY[0x29EDC1D90], MEMORY[0x29EDC9E90]);
        v47 = sub_29E2BE2A4();
        v48 = *(v47 - 8);
        v49 = (*(v48 + 80) + 32) & ~*(v48 + 80);
        v50 = swift_allocObject();
        *(v50 + 16) = v71;
        (*(v48 + 104))(v50 + v49, *MEMORY[0x29EDC1D60], v47);
        sub_29E2BE884();
        v51 = v67;
        v52 = *(v67 + 16);
        sub_29DE9DC34(v67 + 24, &v85);
        sub_29DE9DC34(v51 + 64, v84);
        sub_29E2BE914();
        swift_allocObject();
        v53 = v52;
        sub_29E2BE8E4();
        (*(v77 + 16))(v81, v82, v78);
        v54 = v61;
        [v61 bounds];
        CGRectGetWidth(v88);
        sub_29E2BE844();
        swift_allocObject();
        v55 = sub_29E2BE834();
        MEMORY[0x2A1C7C4A8](v55);
        sub_29E2BE364();
        sub_29E03832C(&qword_2A181ADC8, 255, MEMORY[0x29EDC1E50]);
        v56 = v54;
        v57 = v70;
        v58 = sub_29E2C1DE4();
        MEMORY[0x2A1C7C4A8](v58);
        sub_29E038708();
        v86 = v59;
        v87 = sub_29E03832C(&qword_2A181ADE8, 255, sub_29E038708);
        sub_29DEBB7E8(&v85);
        type metadata accessor for CycleLogCellBackgroundView(0);
        sub_29E03832C(&qword_2A181ADE0, 255, type metadata accessor for CycleLogCellBackgroundView);
        v60 = v68;
        sub_29E2C1DC4();
        (*(v69 + 8))(v57, v60);
        MEMORY[0x29ED805A0](&v85);

        (*(v79 + 8))(v83, v80);
      }

      else
      {
      }
    }

    else
    {

      sub_29DF61E50(&v85);
    }
  }
}

uint64_t sub_29E037978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29E2BE8C4();
  v6 = MEMORY[0x2A1C7C4A8](v5);
  (*(v8 + 16))(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a3;

  return sub_29E2BE374();
}

void sub_29E037ACC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32CycleTrackingFinishSetupTileCell_parentViewController;
    swift_beginAccess();
    v7 = *&v5[v6];
    if (v7 && swift_unknownObjectWeakLoadStrong())
    {
      v8 = a2[14];
      ObjectType = swift_getObjectType();
      v13[3] = v3;
      v13[4] = sub_29E03832C(&qword_2A1819BD8, v10, type metadata accessor for CycleTrackingFinishSetupItem);
      v13[0] = a2;
      v11 = *(v8 + 8);
      v12 = v7;

      v11(v13, v12, ObjectType, v8);
      swift_unknownObjectRelease();

      sub_29DE93B3C(v13);
    }

    else
    {
    }
  }
}

uint64_t sub_29E037C3C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_29E0387FC(0, &qword_2A181ADF0, MEMORY[0x29EDC1D90], MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for CycleLogCellBackgroundView(0);
  v3 = (a1 + *(v2 + 20));
  sub_29E2BE914();
  sub_29E03832C(&unk_2A181B1E0, 255, MEMORY[0x29EDC20E0]);

  *v3 = sub_29E2C1654();
  v3[1] = v4;
  v5 = (a1 + *(v2 + 24));
  sub_29E2BE844();
  sub_29E03832C(&qword_2A181ADF8, 255, MEMORY[0x29EDC2090]);

  result = sub_29E2C1654();
  *v5 = result;
  v5[1] = v7;
  return result;
}

uint64_t sub_29E037ECC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32CycleTrackingFinishSetupTileCell_item;
  swift_beginAccess();
  return sub_29DEC3518(v1 + v3, a1);
}

void (*sub_29E037F28(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32CycleTrackingFinishSetupTileCell_item;
  swift_beginAccess();
  sub_29DEC3518(v1 + v5, v4);
  return sub_29E037FC0;
}

void sub_29E037FC0(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_29DEC3518(*a1, v2 + 40);
    sub_29E036934(v2 + 40);
    sub_29DF61E50(v2);
  }

  else
  {
    sub_29E036934(*a1);
  }

  free(v2);
}

void *sub_29E038028()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32CycleTrackingFinishSetupTileCell_parentViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_29E038074(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32CycleTrackingFinishSetupTileCell_parentViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_29E03812C()
{
  sub_29DE93B3C(v0 + 24);
  sub_29DE93B3C(v0 + 64);
  sub_29DEF6CC0(v0 + 104);

  return swift_deallocClassInstance();
}

uint64_t sub_29E0381A8()
{
  type metadata accessor for CycleTrackingFinishSetupTileCell();
  sub_29E03832C(&qword_2A1819BA8, v0, type metadata accessor for CycleTrackingFinishSetupTileCell);
  return sub_29E2BE2B4();
}

uint64_t sub_29E03820C()
{
  v1 = *(*v0 + 120);
  sub_29E2BF404();
  return v1;
}

uint64_t sub_29E038240(uint64_t a1, uint64_t a2)
{
  v3 = sub_29E03832C(&qword_2A181ADB8, a2, type metadata accessor for CycleTrackingFinishSetupItem);

  return MEMORY[0x2A1C60910](a1, v3);
}

uint64_t sub_29E03832C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void *sub_29E038374(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_29E2BCC24();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a5;
  v27 = a6;
  v15 = sub_29DEBB7E8(&v25);
  (*(*(a5 - 8) + 32))(v15, a2, a5);
  v16 = swift_allocObject();
  v16[14] = 0;
  swift_unknownObjectWeakInit();
  sub_29E2BCC14();
  v17 = sub_29E2BCBD4();
  v19 = v18;
  (*(v12 + 8))(v14, v11);
  v23 = 0xD00000000000001CLL;
  v24 = 0x800000029E2D9910;
  MEMORY[0x29ED7FCC0](v17, v19);

  v20 = v24;
  v16[15] = v23;
  v16[16] = v20;
  v16[2] = a1;
  sub_29DE8EE78(&v25, (v16 + 3));
  sub_29DE8EE78(a3, (v16 + 8));
  return v16;
}

uint64_t sub_29E038534(uint64_t a1)
{
  v3 = *v1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = v1[14];
    ObjectType = swift_getObjectType();
    v9[3] = v3;
    v9[4] = sub_29E03832C(&qword_2A1819BD8, v7, type metadata accessor for CycleTrackingFinishSetupItem);
    v9[0] = v1;
    v8 = *(v5 + 8);

    v8(v9, a1, ObjectType, v5);
    swift_unknownObjectRelease();
    return sub_29DE93B3C(v9);
  }

  return result;
}

void sub_29E038640()
{
  if (!qword_2A181ADC0)
  {
    sub_29E2BE364();
    sub_29E03832C(&qword_2A181ADC8, 255, MEMORY[0x29EDC1E50]);
    v0 = sub_29E2C1DF4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181ADC0);
    }
  }
}

void sub_29E038708()
{
  if (!qword_2A181ADD8)
  {
    sub_29E2BE364();
    type metadata accessor for CycleLogCellBackgroundView(255);
    sub_29E03832C(&qword_2A181ADC8, 255, MEMORY[0x29EDC1E50]);
    sub_29E03832C(&qword_2A181ADE0, 255, type metadata accessor for CycleLogCellBackgroundView);
    v0 = sub_29E2C1DF4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181ADD8);
    }
  }
}

void sub_29E0387FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E0388B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E038948()
{
  type metadata accessor for CycleDeviationsItem();
  if (v0 <= 0x3F)
  {
    sub_29E0388B0(319, &qword_2A181AE00, sub_29E03887C, MEMORY[0x29EDBC390]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29E038A18@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29E2C1A64();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E03CC2C(0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DeviationHistoryContentView(0);
  sub_29E03CCC8(v1 + *(v10 + 20), v9, sub_29E03CC2C);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_29E03CC60(v9, a1, sub_29E03887C);
  }

  sub_29E2C3A24();
  v12 = sub_29E2C1F84();
  sub_29E2C03B4();

  sub_29E2C1A54();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_29E038BF8@<X0>(uint64_t a1@<X8>)
{
  v143 = a1;
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v135 = &v119[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v137 = sub_29E2C3384();
  v136 = *(v137 - 8);
  MEMORY[0x2A1C7C4A8](v137);
  v134 = &v119[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v119[-v6];
  sub_29E03CF50(0, &qword_2A181AE20, MEMORY[0x29EDBC7E8]);
  v141 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v142 = &v119[-v9];
  v10 = sub_29E2C1E04();
  v146 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v124 = &v119[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E03A230();
  v13 = v12;
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v119[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v16);
  v128 = &v119[-v17];
  MEMORY[0x2A1C7C4A8](v18);
  v133 = &v119[-v19];
  sub_29E03887C(0);
  MEMORY[0x2A1C7C4A8](v20 - 8);
  v138 = &v119[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v22);
  v24 = &v119[-v23];
  MEMORY[0x2A1C7C4A8](v25);
  v139 = &v119[-v26];
  MEMORY[0x2A1C7C4A8](v27);
  v123 = &v119[-v28];
  MEMORY[0x2A1C7C4A8](v29);
  v126 = &v119[-v30];
  MEMORY[0x2A1C7C4A8](v31);
  v131 = &v119[-v32];
  MEMORY[0x2A1C7C4A8](v33);
  v122 = &v119[-v34];
  MEMORY[0x2A1C7C4A8](v35);
  v37 = &v119[-v36];
  MEMORY[0x2A1C7C4A8](v38);
  v132 = &v119[-v39];
  v40 = type metadata accessor for NoDeviationsView(0);
  MEMORY[0x2A1C7C4A8](v40);
  v42 = &v119[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E03A184(0);
  v125 = v43;
  MEMORY[0x2A1C7C4A8](v43);
  v127 = &v119[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E03A15C(0);
  v129 = v45;
  MEMORY[0x2A1C7C4A8](v45);
  v130 = &v119[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E03A0B4(0);
  v140 = v47;
  MEMORY[0x2A1C7C4A8](v47);
  v49 = &v119[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v144 = v1;
  v50 = *v1;
  v51 = *(*v1 + 16);
  v145 = v13;
  if (v51 >> 62)
  {
    v121 = v49;
    v52 = sub_29E2C4484();
    v49 = v121;
  }

  else
  {
    v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v52)
  {
    v53 = *(v50 + 16);
    LODWORD(v132) = *(v50 + 24);
    LODWORD(v131) = *(v50 + 25);
    v133 = v53;
    sub_29E2BF404();
    sub_29E2C3314();
    v54 = v136;
    v55 = v137;
    (*(v136 + 2))(v134, v7, v137);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v56 = qword_2A1A67F80;
    sub_29E2BCC74();
    v57 = sub_29E2C3414();
    v135 = v58;
    (*(v54 + 1))(v7, v55);
    LODWORD(v137) = sub_29E2C1FD4();
    v59 = v139;
    sub_29E038A18(v139);
    v60 = v146;
    (*(v146 + 104))(v24, *MEMORY[0x29EDBC8A0], v10);
    (*(v60 + 56))(v24, 0, 1, v10);
    v61 = *(v145 + 48);
    sub_29E03CCC8(v59, v15, sub_29E03887C);
    sub_29E03CCC8(v24, &v15[v61], sub_29E03887C);
    v62 = *(v60 + 48);
    v63 = v62(v15, 1, v10);
    v64 = v138;
    if (v63 == 1)
    {
      sub_29E03C8A4(v24, sub_29E03887C);
      sub_29E03C8A4(v59, sub_29E03887C);
      if (v62(&v15[v61], 1, v10) == 1)
      {
        sub_29E03C8A4(v15, sub_29E03887C);
LABEL_19:
        sub_29E2C1424();
        LOBYTE(v149) = 0;
        v80 = v142;
        *v142 = v133;
        *(v80 + 8) = v132;
        *(v80 + 9) = v131;
        v81 = v135;
        v80[2] = v57;
        v80[3] = v81;
        *(v80 + 32) = v137;
        v80[5] = v82;
        v80[6] = v83;
        v80[7] = v84;
        v80[8] = v85;
        *(v80 + 72) = 0;
        swift_storeEnumTagMultiPayload();
        sub_29E03DE74(0, &qword_2A181AE40, &type metadata for DeviationHistoryListView, MEMORY[0x29EDBC498], MEMORY[0x29EDBC558]);
        sub_29E03C904();
        sub_29E03CB2C();
        return sub_29E2C1C74();
      }
    }

    else
    {
      sub_29E03CCC8(v15, v138, sub_29E03887C);
      if (v62(&v15[v61], 1, v10) != 1)
      {
        v76 = v146;
        v77 = &v15[v61];
        v78 = v124;
        (*(v146 + 32))(v124, v77, v10);
        sub_29E03CAE4(&qword_2A181AE80, MEMORY[0x29EDBC8A8]);
        sub_29E2C3304();
        v79 = *(v76 + 8);
        v79(v78, v10);
        sub_29E03C8A4(v24, sub_29E03887C);
        sub_29E03C8A4(v139, sub_29E03887C);
        v79(v64, v10);
        sub_29E03C8A4(v15, sub_29E03887C);
        goto LABEL_19;
      }

      sub_29E03C8A4(v24, sub_29E03887C);
      sub_29E03C8A4(v139, sub_29E03887C);
      (*(v146 + 8))(v64, v10);
    }

    sub_29E03C8A4(v15, sub_29E03A230);
    goto LABEL_19;
  }

  v121 = v49;
  v65 = *(v50 + 24);
  v66 = *(v50 + 25);
  *&v42[*(v40 + 24)] = swift_getKeyPath();
  sub_29E03CC2C(0);
  swift_storeEnumTagMultiPayload();
  *v42 = (v65 & 1) == 0;
  v42[1] = v66;
  v120 = sub_29E2C1FD4();
  v67 = v132;
  sub_29E038A18(v132);
  v68 = v146;
  v69 = *(v146 + 104);
  LODWORD(v138) = *MEMORY[0x29EDBC8A0];
  v137 = v146 + 104;
  v136 = v69;
  v69(v37);
  v70 = *(v68 + 56);
  v135 = (v68 + 56);
  v134 = v70;
  (v70)(v37, 0, 1, v10);
  v71 = *(v145 + 48);
  v72 = v133;
  sub_29E03CCC8(v67, v133, sub_29E03887C);
  sub_29E03CCC8(v37, &v72[v71], sub_29E03887C);
  v73 = *(v68 + 48);
  v74 = (v73)(v72, 1, v10);
  v139 = v73;
  if (v74 == 1)
  {
    sub_29E03C8A4(v37, sub_29E03887C);
    v72 = v133;
    sub_29E03C8A4(v67, sub_29E03887C);
    if ((v73)(&v72[v71], 1, v10) == 1)
    {
      sub_29E03C8A4(v72, sub_29E03887C);
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  v75 = v122;
  sub_29E03CCC8(v72, v122, sub_29E03887C);
  if ((v73)(&v72[v71], 1, v10) == 1)
  {
    sub_29E03C8A4(v37, sub_29E03887C);
    sub_29E03C8A4(v132, sub_29E03887C);
    (*(v146 + 8))(v75, v10);
LABEL_17:
    sub_29E03C8A4(v72, sub_29E03A230);
    goto LABEL_21;
  }

  v87 = v146;
  v88 = &v72[v71];
  v89 = v124;
  (*(v146 + 32))(v124, v88, v10);
  sub_29E03CAE4(&qword_2A181AE80, MEMORY[0x29EDBC8A8]);
  sub_29E2C3304();
  v90 = *(v87 + 8);
  v90(v89, v10);
  sub_29E03C8A4(v37, sub_29E03887C);
  sub_29E03C8A4(v132, sub_29E03887C);
  v90(v75, v10);
  sub_29E03C8A4(v72, sub_29E03887C);
LABEL_21:
  v91 = v128;
  v92 = v127;
  v93 = v126;
  sub_29E2C1424();
  v95 = v94;
  v97 = v96;
  v99 = v98;
  v101 = v100;
  sub_29E03CC60(v42, v92, type metadata accessor for NoDeviationsView);
  v102 = v92 + *(v125 + 36);
  *v102 = v120;
  *(v102 + 8) = v95;
  *(v102 + 16) = v97;
  *(v102 + 24) = v99;
  *(v102 + 32) = v101;
  *(v102 + 40) = 0;
  v103 = v131;
  sub_29E038A18(v131);
  (v136)(v93, v138, v10);
  (v134)(v93, 0, 1, v10);
  v104 = *(v145 + 48);
  sub_29E03CCC8(v103, v91, sub_29E03887C);
  sub_29E03CCC8(v93, v91 + v104, sub_29E03887C);
  v105 = v139;
  if ((v139)(v91, 1, v10) == 1)
  {
    sub_29E03C8A4(v93, sub_29E03887C);
    sub_29E03C8A4(v103, sub_29E03887C);
    if (v105(v91 + v104, 1, v10) == 1)
    {
      v106 = sub_29E03887C;
    }

    else
    {
      v106 = sub_29E03A230;
    }
  }

  else
  {
    v107 = v123;
    sub_29E03CCC8(v91, v123, sub_29E03887C);
    if (v105(v91 + v104, 1, v10) != 1)
    {
      v108 = v146;
      v109 = v93;
      v110 = v124;
      (*(v146 + 32))(v124, v91 + v104, v10);
      sub_29E03CAE4(&qword_2A181AE80, MEMORY[0x29EDBC8A8]);
      sub_29E2C3304();
      v111 = *(v108 + 8);
      v111(v110, v10);
      sub_29E03C8A4(v109, sub_29E03887C);
      sub_29E03C8A4(v131, sub_29E03887C);
      v111(v107, v10);
      sub_29E03C8A4(v91, sub_29E03887C);
      sub_29E2C2AB4();
      goto LABEL_29;
    }

    sub_29E03C8A4(v93, sub_29E03887C);
    sub_29E03C8A4(v103, sub_29E03887C);
    (*(v146 + 8))(v107, v10);
    v106 = sub_29E03A230;
  }

  sub_29E03C8A4(v91, v106);
  sub_29E2C2AB4();
LABEL_29:
  v112 = v130;
  v113 = v129;
  sub_29E2C17D4();
  sub_29E03CC60(v92, v112, sub_29E03A184);
  v114 = (v112 + *(v113 + 36));
  v115 = v154;
  v114[4] = v153;
  v114[5] = v115;
  v114[6] = v155;
  v116 = v150;
  *v114 = v149;
  v114[1] = v116;
  v117 = v152;
  v114[2] = v151;
  v114[3] = v117;
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v147 = qword_2A1A67E58;
  v148 = unk_2A1A67E60;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD00000000000001ALL, 0x800000029E2F6B20);
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0x61697665446F4E2ELL, 0xED0000736E6F6974);

  sub_29E03C9B4();
  v118 = v121;
  sub_29E2C23B4();

  sub_29E03C8A4(v112, sub_29E03A15C);
  sub_29E03CCC8(v118, v142, sub_29E03A0B4);
  swift_storeEnumTagMultiPayload();
  sub_29E03DE74(0, &qword_2A181AE40, &type metadata for DeviationHistoryListView, MEMORY[0x29EDBC498], MEMORY[0x29EDBC558]);
  sub_29E03C904();
  sub_29E03CB2C();
  sub_29E2C1C74();
  return sub_29E03C8A4(v118, sub_29E03A0B4);
}

void sub_29E03A0E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_29E2C1744();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29E03A1AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E2C1744();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E03A230()
{
  if (!qword_2A181AE48)
  {
    sub_29E03887C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181AE48);
    }
  }
}

uint64_t sub_29E03A294@<X0>(unint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v69 = a5;
  sub_29E03D1E8(0);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v67 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E03D53C(0);
  v12 = v11 - 8;
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E03D514(0);
  v16 = v15 - 8;
  MEMORY[0x2A1C7C4A8](v15);
  v70 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v20 = &v64 - v19;
  MEMORY[0x2A1C7C4A8](v21);
  v23 = &v64 - v22;
  *v14 = sub_29E2C1BD4();
  *(v14 + 1) = 0x4030000000000000;
  v14[16] = 0;
  sub_29E03D9E0(0, &qword_2A181AF78, sub_29E03D5F8);
  sub_29E03A864(a1, a2 & 0x101, a3, a4, &v14[*(v24 + 44)]);
  LOBYTE(a1) = sub_29E2C1FE4();
  sub_29E2C1424();
  v25 = &v14[*(v12 + 44)];
  *v25 = a1;
  *(v25 + 1) = v26;
  *(v25 + 2) = v27;
  *(v25 + 3) = v28;
  *(v25 + 4) = v29;
  v25[40] = 0;
  sub_29E2C2AC4();
  sub_29E2C17D4();
  sub_29E03CC60(v14, v20, sub_29E03D53C);
  v30 = &v20[*(v16 + 44)];
  v31 = v83;
  *(v30 + 4) = v82;
  *(v30 + 5) = v31;
  *(v30 + 6) = v84;
  v32 = v79;
  *v30 = v78;
  *(v30 + 1) = v32;
  v33 = v81;
  *(v30 + 2) = v80;
  *(v30 + 3) = v33;
  v34 = v23;
  sub_29E03CC60(v20, v23, sub_29E03D514);
  if ((a2 & 0x100) != 0)
  {
    sub_29E02E288();
    if (!sub_29E05D384())
    {
      v41 = [objc_opt_self() hk_disclosureChevronImage];
    }

    sub_29E2C2704();
    v42 = *MEMORY[0x29EDBCAC0];
    v43 = sub_29E2C2754();
    v44 = *(v43 - 8);
    v45 = v67;
    (*(v44 + 104))(v67, v42, v43);
    (*(v44 + 56))(v45, 0, 1, v43);
    v68 = sub_29E2C2734();

    sub_29E03C8A4(v45, sub_29E03D1E8);
    v46 = sub_29E2C1FE4();
    sub_29E2C1424();
    v37 = v47;
    v38 = v48;
    v39 = v49;
    v40 = v50;
    v67 = sub_29E2C2614();
    KeyPath = swift_getKeyPath();
    LOBYTE(v77[0]) = 0;
    v65 = sub_29E2C2614();
    v66 = swift_getKeyPath();
    v36 = v46;
  }

  else
  {
    v67 = 0;
    v68 = 0;
    KeyPath = 0;
    v65 = 0;
    v66 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
  }

  v64 = KeyPath;
  v51 = v34;
  v52 = v34;
  v53 = v70;
  sub_29E03CCC8(v52, v70, sub_29E03D514);
  v54 = v69;
  sub_29E03CCC8(v53, v69, sub_29E03D514);
  sub_29E03D498(0, &qword_2A181AEF8, sub_29E03D514, sub_29E03D8B8);
  v56 = v54 + *(v55 + 48);
  v57 = v68;
  *&v71 = v68;
  *(&v71 + 1) = v36;
  *&v72 = v37;
  *(&v72 + 1) = v38;
  *&v73 = v39;
  *(&v73 + 1) = v40;
  *&v74 = 0;
  *(&v74 + 1) = KeyPath;
  v58 = v66;
  v59 = v67;
  *&v75 = v67;
  *(&v75 + 1) = v66;
  v60 = v65;
  v76 = v65;
  *(v56 + 80) = v65;
  v61 = v72;
  *v56 = v71;
  *(v56 + 16) = v61;
  v62 = v74;
  *(v56 + 32) = v73;
  *(v56 + 48) = v62;
  *(v56 + 64) = v75;
  sub_29E03CCC8(&v71, v77, sub_29E03D8B8);
  sub_29E03C8A4(v51, sub_29E03D514);
  v77[0] = v57;
  v77[1] = v36;
  v77[2] = v37;
  v77[3] = v38;
  v77[4] = v39;
  v77[5] = v40;
  v77[6] = 0;
  v77[7] = v64;
  v77[8] = v59;
  v77[9] = v58;
  v77[10] = v60;
  sub_29E03C8A4(v77, sub_29E03D8B8);
  return sub_29E03C8A4(v53, sub_29E03D514);
}

uint64_t sub_29E03A864@<X0>(unint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v88 = a3;
  v85 = a5;
  sub_29E03D750();
  v86 = v8;
  v80 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v84 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v83 = &v70 - v11;
  sub_29E03D6B4(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = (&v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_29E2C2984();
  v78 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v77 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v87 = &v70 - v20;
  sub_29E03D680(0);
  MEMORY[0x2A1C7C4A8](v21 - 8);
  v81 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x2A1C7C4A8](v23);
  v26 = &v70 - v24;
  v79 = a2;
  v82 = a4;
  if (a2)
  {
    (*(v14 + 56))(&v70 - v24, 1, 1, v13, v25);
  }

  else
  {
    v89 = v88;
    v90 = a4;
    sub_29DE9DE68();
    v75 = v26;
    sub_29E2BF404();
    v27 = sub_29E2C2294();
    v29 = v28;
    v31 = v30;
    sub_29E2C2054();
    v74 = v14;
    v32 = sub_29E2C2254();
    v72 = v16;
    v73 = v13;
    v33 = v32;
    v76 = a1;
    v35 = v34;
    v37 = v36;
    v71 = v17;

    sub_29DED6478(v27, v29, v31 & 1);

    v38 = sub_29E2C2244();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    sub_29DED6478(v33, v35, v37 & 1);

    v45 = v87;
    sub_29E2C2974();
    LOBYTE(v89) = v42 & 1;
    v47 = v77;
    v46 = v78;
    v48 = *(v78 + 16);
    v49 = v45;
    v50 = v71;
    v48(v77, v49, v71);
    LOBYTE(v35) = v89;
    v51 = v72;
    *v72 = v38;
    *(v51 + 8) = v40;
    *(v51 + 16) = v35;
    *(v51 + 24) = v44;
    sub_29E03D6E8();
    v48((v51 + *(v52 + 48)), v47, v50);
    sub_29DE93208(v38, v40, v35);
    v53 = *(v46 + 8);
    sub_29E2BF404();
    v53(v87, v50);
    v53(v47, v50);
    v26 = v75;
    a1 = v76;
    sub_29DED6478(v38, v40, v89);

    sub_29E03CC60(v51, v26, sub_29E03D6B4);
    (*(v74 + 56))(v26, 0, 1, v73);
  }

  if (a1 >> 62)
  {
    v55 = sub_29E2C4484();
    if (v55 < 0)
    {
      __break(1u);
    }

    v54 = v26;
  }

  else
  {
    v54 = v26;
    v55 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v89 = 0;
  v90 = v55;
  swift_getKeyPath();
  v56 = swift_allocObject();
  *(v56 + 16) = a1;
  v57 = BYTE1(v79);
  *(v56 + 24) = v79 & 1;
  *(v56 + 25) = v57 & 1;
  v58 = v82;
  *(v56 + 32) = v88;
  *(v56 + 40) = v58;
  sub_29E03DE74(0, &qword_2A181DA00, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9BC0], MEMORY[0x29EDC9C30]);
  sub_29E03D80C();
  sub_29E03DA70();
  sub_29E2BF404();
  sub_29E2BF404();
  v59 = v83;
  sub_29E2C29A4();
  v60 = v54;
  v61 = v81;
  sub_29E03CCC8(v54, v81, sub_29E03D680);
  v62 = v80;
  v63 = *(v80 + 16);
  v64 = v84;
  v65 = v86;
  v63(v84, v59, v86);
  v66 = v85;
  sub_29E03CCC8(v61, v85, sub_29E03D680);
  sub_29E03D498(0, &qword_2A181AF20, sub_29E03D680, sub_29E03D750);
  v63((v66 + *(v67 + 48)), v64, v65);
  v68 = *(v62 + 8);
  v68(v59, v65);
  sub_29E03C8A4(v60, sub_29E03D680);
  v68(v64, v65);
  return sub_29E03C8A4(v61, sub_29E03D680);
}

unint64_t *sub_29E03AF44@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v4 = HIBYTE(a3);
  v6 = *result;
  if ((a2 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x29ED80D70](*result);
    goto LABEL_5;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v6 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(a2 + 8 * v6 + 32);
LABEL_5:
    *a4 = result;
    *(a4 + 8) = v6 == 0;
    *(a4 + 9) = v4 & 1;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_29E03AFC8(void *a1)
{
  sub_29DEB2104();
  v3 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v29 - v6;
  sub_29DEB216C();
  v32 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E2BCBB4();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = MEMORY[0x2A1C7C4A8](v15).n128_u64[0];
  v18 = &v29 - v17;
  v19 = [a1 startDate];
  sub_29E2BCB44();

  v20 = [a1 endDate];
  sub_29E2BCB44();

  sub_29E03CAE4(&qword_2A1A616E0, MEMORY[0x29EDB9BC8]);
  result = sub_29E2C32B4();
  if (result)
  {
    v22 = v12[2];
    v30 = v18;
    v22(v7, v18, v11);
    v22(&v7[*(v3 + 48)], v14, v11);
    v23 = v31;
    sub_29E03CCC8(v7, v31, sub_29DEB2104);
    v24 = *(v3 + 48);
    v29 = v14;
    v25 = v3;
    v26 = v12[4];
    v26(v10, v23, v11);
    v27 = v12[1];
    v27(v23 + v24, v11);
    sub_29E03CC60(v7, v23, sub_29DEB2104);
    v26(&v10[*(v32 + 36)], v23 + *(v25 + 48), v11);
    v27(v23, v11);
    v28 = sub_29E1BA23C();
    sub_29E03C8A4(v10, sub_29DEB216C);
    v27(v29, v11);
    v27(v30, v11);
    return v28;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E03B368@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v5 = sub_29E2C1F14();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E03DC18();
  v10 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E03DFD0();
  v28 = *(v13 - 8);
  v29 = v13;
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v12 = sub_29E2C1BD4();
  *(v12 + 1) = 0;
  v12[16] = 0;
  sub_29E03D9E0(0, &qword_2A181B010, sub_29E03DCAC);
  sub_29E03B744(a1, a2 & 1, &v12[*(v16 + 44)]);
  sub_29E2C1F04();
  v17 = sub_29E03CAE4(&qword_2A181B008, sub_29E03DC18);
  sub_29E2C24A4();
  (*(v6 + 8))(v8, v5);
  sub_29E03C8A4(v12, sub_29E03DC18);
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v31 = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD00000000000001ALL, 0x800000029E2F6B20);
  v18 = v31;
  *&v31 = 46;
  *(&v31 + 1) = 0xE100000000000000;
  v19 = [a1 categoryType];
  v20 = [v19 identifier];

  v21 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v23 = v22;

  MEMORY[0x29ED7FCC0](v21, v23);

  v24 = v31;
  v31 = v18;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](v24, *(&v24 + 1));

  *&v31 = v10;
  *(&v31 + 1) = v17;
  swift_getOpaqueTypeConformance2();
  v25 = v29;
  sub_29E2C23B4();

  return (*(v28 + 8))(v15, v25);
}

uint64_t sub_29E03B744@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v100 = a3;
  sub_29DF3F200();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v101 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v107 = &v95 - v8;
  sub_29E03A1AC(0, &qword_2A181AFD8, MEMORY[0x29EDBC2A0]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v95 - v12;
  sub_29E03DD68();
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v108 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v19 = &v95 - v17;
  if (a2)
  {
    (*(v11 + 56))(&v95 - v17, 1, 1, v10, v18);
  }

  else
  {
    sub_29E2C2974();
    v20 = sub_29E2C1FE4();
    sub_29E2C1424();
    v21 = &v13[*(v10 + 36)];
    *v21 = v20;
    *(v21 + 1) = v22;
    *(v21 + 2) = v23;
    *(v21 + 3) = v24;
    *(v21 + 4) = v25;
    v21[40] = 0;
    sub_29E03E084(v13, v19);
    (*(v11 + 56))(v19, 0, 1, v10, v26);
  }

  v99 = sub_29E2C1AA4();
  v137 = 1;
  v27 = [a1 categoryType];
  v28 = [v27 hk_localizedName];

  v105 = a1;
  v106 = v19;
  if (v28)
  {
    v29 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0xE000000000000000;
  }

  v116 = v29;
  v117 = v31;
  v95 = sub_29DE9DE68();
  v32 = sub_29E2C2294();
  v34 = v33;
  v36 = v35;
  sub_29E2C2054();
  v37 = sub_29E2C2254();
  v39 = v38;
  v41 = v40;

  sub_29DED6478(v32, v34, v36 & 1);

  v42 = sub_29E2C2244();
  v96 = v43;
  v97 = v42;
  LOBYTE(v32) = v44;
  v98 = v45;
  sub_29DED6478(v37, v39, v41 & 1);

  v104 = sub_29E2C1FE4();
  sub_29E2C1424();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v103 = v32 & 1;
  v135 = v32 & 1;
  v132 = 0;
  v102 = v137;
  v116 = sub_29E03AFC8(v105);
  v117 = v54;
  v55 = sub_29E2C2294();
  v57 = v56;
  LOBYTE(v32) = v58;
  sub_29E2C2044();
  v59 = sub_29E2C2254();
  v61 = v60;
  v63 = v62;

  sub_29DED6478(v55, v57, v32 & 1);

  sub_29E2C20A4();
  v64 = sub_29E2C2204();
  v66 = v65;
  LOBYTE(v55) = v67;
  v69 = v68;
  sub_29DED6478(v59, v61, v63 & 1);

  v116 = v64;
  v117 = v66;
  v70 = v55 & 1;
  v118 = v55 & 1;
  v95 = v69;
  v120 = v69;
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v109 = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD00000000000001ALL, 0x800000029E2F6B20);
  v71 = v109;
  *&v109 = 46;
  *(&v109 + 1) = 0xE100000000000000;
  v72 = [v105 categoryType];
  v73 = [v72 identifier];

  v74 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v76 = v75;

  MEMORY[0x29ED7FCC0](v74, v76);

  MEMORY[0x29ED7FCC0](0x657461442ELL, 0xE500000000000000);
  v77 = v109;
  v109 = v71;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](v77, *(&v77 + 1));

  v78 = v107;
  sub_29E2C23B4();

  sub_29DED6478(v64, v66, v70);

  v79 = v108;
  sub_29E03CCC8(v106, v108, sub_29E03DD68);
  v80 = v101;
  sub_29E03CCC8(v78, v101, sub_29DF3F200);
  v81 = v79;
  v82 = v100;
  sub_29E03CCC8(v81, v100, sub_29E03DD68);
  sub_29E03DCE0();
  v84 = v82 + *(v83 + 48);
  v85 = v98;
  v86 = v99;
  v109 = v99;
  LOBYTE(v110) = v102;
  *(&v110 + 1) = *v136;
  DWORD1(v110) = *&v136[3];
  v87 = v96;
  v88 = v97;
  *(&v110 + 1) = v97;
  *&v111 = v96;
  BYTE8(v111) = v103;
  HIDWORD(v111) = *&v134[3];
  *(&v111 + 9) = *v134;
  *&v112 = v98;
  BYTE8(v112) = v104;
  HIDWORD(v112) = *&v133[3];
  *(&v112 + 9) = *v133;
  *&v113 = v47;
  *(&v113 + 1) = v49;
  *&v114 = v51;
  *(&v114 + 1) = v53;
  v115 = 0;
  v89 = v113;
  v90 = v114;
  *(v84 + 96) = 0;
  *(v84 + 64) = v89;
  *(v84 + 80) = v90;
  v91 = v109;
  v92 = v110;
  v93 = v112;
  *(v84 + 32) = v111;
  *(v84 + 48) = v93;
  *v84 = v91;
  *(v84 + 16) = v92;
  sub_29E03CCC8(v80, v82 + *(v83 + 64), sub_29DF3F200);
  sub_29E03CCC8(&v109, &v116, sub_29E03DDE4);
  sub_29E03C8A4(v107, sub_29DF3F200);
  sub_29E03C8A4(v106, sub_29E03DD68);
  sub_29E03C8A4(v80, sub_29DF3F200);
  v116 = v86;
  v117 = 0;
  v118 = v102;
  *v119 = *v136;
  *&v119[3] = *&v136[3];
  v120 = v88;
  v121 = v87;
  v122 = v103;
  *v123 = *v134;
  *&v123[3] = *&v134[3];
  v124 = v85;
  v125 = v104;
  *&v126[3] = *&v133[3];
  *v126 = *v133;
  v127 = v47;
  v128 = v49;
  v129 = v51;
  v130 = v53;
  v131 = 0;
  sub_29E03C8A4(&v116, sub_29E03DDE4);
  return sub_29E03C8A4(v108, sub_29E03DD68);
}

uint64_t sub_29E03BF50@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 9);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  *a1 = sub_29E2C1A94();
  *(a1 + 8) = 0x4020000000000000;
  *(a1 + 16) = 0;
  sub_29E03D9E0(0, &qword_2A181AEE8, sub_29E03D410);
  if (v5)
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  return sub_29E03A294(v3, v9 | v4, v7, v6, a1 + *(v8 + 44));
}

uint64_t sub_29E03BFFC()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v11[-v6];
  sub_29E2C3314();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v8 = qword_2A1A67F80;
  sub_29E2BCC74();
  v9 = sub_29E2C3414();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_29E03C21C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v45 = a2;
  sub_29E03D1E8(0);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v40 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_29E03BFFC();
  v65 = v4;
  sub_29DE9DE68();
  v5 = sub_29E2C2294();
  v7 = v6;
  v9 = v8;
  sub_29E2C2054();
  v10 = sub_29E2C2254();
  v12 = v11;
  v14 = v13;

  sub_29DED6478(v5, v7, v9 & 1);

  sub_29E2C2084();
  v15 = sub_29E2C2204();
  v42 = v16;
  v43 = v15;
  v18 = v17;
  v44 = v19;
  sub_29DED6478(v10, v12, v14 & 1);

  sub_29E2C2AC4();
  sub_29E2C17D4();
  v20 = 0;
  KeyPath = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = v18 & 1;
  v84 = v18 & 1;
  if (*(v41 + 1) == 1)
  {
    sub_29E02E288();
    if (!sub_29E05D384())
    {
      v26 = [objc_opt_self() hk_disclosureChevronImage];
    }

    sub_29E2C2704();
    v27 = *MEMORY[0x29EDBCAC0];
    v28 = sub_29E2C2754();
    v29 = *(v28 - 8);
    v30 = v40;
    (*(v29 + 104))(v40, v27, v28);
    (*(v29 + 56))(v30, 0, 1, v28);
    v20 = sub_29E2C2734();

    sub_29E03C8A4(v30, sub_29E03D1E8);
    v22 = sub_29E2C2614();
    KeyPath = swift_getKeyPath();
    v24 = sub_29E2C2614();
    v23 = swift_getKeyPath();
  }

  v31 = v42;
  v32 = v43;
  *&v46 = v43;
  *(&v46 + 1) = v42;
  LOBYTE(v47) = v25;
  *(&v47 + 1) = *v83;
  DWORD1(v47) = *&v83[3];
  LODWORD(v41) = v25;
  v33 = v44;
  *(&v47 + 1) = v44;
  v52 = v80;
  v53 = v81;
  v54 = v82;
  v48 = v76;
  v49 = v77;
  v50 = v78;
  v51 = v79;
  v61 = v80;
  v62 = v81;
  v63 = v82;
  v57 = v76;
  v58 = v77;
  v59 = v78;
  v60 = v79;
  v55 = v46;
  v56 = v47;
  sub_29E03D21C(&v46, &v64);
  sub_29E03D2AC(v20);
  sub_29E03D31C(v20);
  v34 = v62;
  v35 = v45;
  *(v45 + 96) = v61;
  *(v35 + 112) = v34;
  *(v35 + 128) = v63;
  v36 = v58;
  *(v35 + 32) = v57;
  *(v35 + 48) = v36;
  v37 = v60;
  *(v35 + 64) = v59;
  *(v35 + 80) = v37;
  v38 = v56;
  *v35 = v55;
  *(v35 + 16) = v38;
  *(v35 + 144) = v20;
  *(v35 + 152) = KeyPath;
  *(v35 + 160) = v22;
  *(v35 + 168) = v23;
  *(v35 + 176) = v24;
  sub_29E03D31C(v20);
  v64 = v32;
  v65 = v31;
  v66 = v41;
  *v67 = *v83;
  *&v67[3] = *&v83[3];
  v68 = v33;
  v73 = v80;
  v74 = v81;
  v75 = v82;
  v69 = v76;
  v70 = v77;
  v71 = v78;
  v72 = v79;
  return sub_29E03D388(&v64);
}

double sub_29E03C6A8@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_29E2C1AA4();
  v26 = 1;
  sub_29E03C21C(v2, &v13);
  v35 = v21;
  v36 = v22;
  v37 = v23;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v39[8] = v21;
  v39[9] = v22;
  v39[10] = v23;
  v39[4] = v17;
  v39[5] = v18;
  v39[6] = v19;
  v39[7] = v20;
  v39[0] = v13;
  v39[1] = v14;
  v38 = v24;
  v40 = v24;
  v39[2] = v15;
  v39[3] = v16;
  sub_29E03CCC8(&v27, v12, sub_29E03D07C);
  sub_29E03C8A4(v39, sub_29E03D07C);
  *(&v25[8] + 7) = v35;
  *(&v25[9] + 7) = v36;
  *(&v25[10] + 7) = v37;
  *(&v25[11] + 7) = v38;
  *(&v25[4] + 7) = v31;
  *(&v25[5] + 7) = v32;
  *(&v25[6] + 7) = v33;
  *(&v25[7] + 7) = v34;
  *(v25 + 7) = v27;
  *(&v25[1] + 7) = v28;
  *(&v25[2] + 7) = v29;
  *(&v25[3] + 7) = v30;
  v5 = v25[9];
  *(a1 + 145) = v25[8];
  *(a1 + 161) = v5;
  *(a1 + 177) = v25[10];
  *(a1 + 192) = *(&v25[10] + 15);
  v6 = v25[5];
  *(a1 + 81) = v25[4];
  *(a1 + 97) = v6;
  v7 = v25[7];
  *(a1 + 113) = v25[6];
  *(a1 + 129) = v7;
  v8 = v25[1];
  *(a1 + 17) = v25[0];
  *(a1 + 33) = v8;
  result = *&v25[2];
  v10 = v25[3];
  *(a1 + 49) = v25[2];
  v11 = v26;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v11;
  *(a1 + 65) = v10;
  return result;
}

uint64_t sub_29E03C8A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_29E03C904()
{
  result = qword_2A181AE50;
  if (!qword_2A181AE50)
  {
    sub_29E03A0B4(255);
    sub_29E03C9B4();
    sub_29E03CAE4(&qword_2A1819290, MEMORY[0x29EDBC0A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181AE50);
  }

  return result;
}

unint64_t sub_29E03C9B4()
{
  result = qword_2A181AE58;
  if (!qword_2A181AE58)
  {
    sub_29E03A15C(255);
    sub_29E03CA34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181AE58);
  }

  return result;
}

unint64_t sub_29E03CA34()
{
  result = qword_2A181AE60;
  if (!qword_2A181AE60)
  {
    sub_29E03A184(255);
    sub_29E03CAE4(&qword_2A181AE68, type metadata accessor for NoDeviationsView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181AE60);
  }

  return result;
}

uint64_t sub_29E03CAE4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29E03CB2C()
{
  result = qword_2A181AE70;
  if (!qword_2A181AE70)
  {
    sub_29E03DE74(255, &qword_2A181AE40, &type metadata for DeviationHistoryListView, MEMORY[0x29EDBC498], MEMORY[0x29EDBC558]);
    sub_29E03CBD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181AE70);
  }

  return result;
}

unint64_t sub_29E03CBD8()
{
  result = qword_2A181AE78;
  if (!qword_2A181AE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181AE78);
  }

  return result;
}

uint64_t sub_29E03CC60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E03CCC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E03CD30(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_29E03CD78(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_29E03CDF0()
{
  sub_29E0388B0(319, &qword_2A181AE00, sub_29E03887C, MEMORY[0x29EDBC390]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_29E03CEB4()
{
  result = qword_2A181AEA0;
  if (!qword_2A181AEA0)
  {
    sub_29E03CF50(255, &qword_2A181AEA8, MEMORY[0x29EDBC7F0]);
    sub_29E03C904();
    sub_29E03CB2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181AEA0);
  }

  return result;
}

void sub_29E03CF50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29E03A0B4(255);
    v7 = v6;
    sub_29E03DE74(255, &qword_2A181AE40, &type metadata for DeviationHistoryListView, MEMORY[0x29EDBC498], MEMORY[0x29EDBC558]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_29E03CFF0()
{
  result = qword_2A181AEB0;
  if (!qword_2A181AEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181AEB0);
  }

  return result;
}

void sub_29E03D0B0()
{
  if (!qword_2A181AEC0)
  {
    sub_29E03DE74(255, &qword_2A181AEC8, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC5F8], MEMORY[0x29EDBC558]);
    sub_29E03D8E0(255, &qword_2A181AED0, &qword_2A181AED8, sub_29E03D170);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181AEC0);
    }
  }
}

void sub_29E03D198()
{
  if (!qword_2A18184F8)
  {
    v0 = sub_29E2C4304();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18184F8);
    }
  }
}

uint64_t sub_29E03D21C(uint64_t a1, uint64_t a2)
{
  sub_29E03DE74(0, &qword_2A181AEC8, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC5F8], MEMORY[0x29EDBC558]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E03D2AC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_29E03D31C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_29E03D388(uint64_t a1)
{
  sub_29E03DE74(0, &qword_2A181AEC8, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC5F8], MEMORY[0x29EDBC558]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E03D410()
{
  if (!qword_2A181AEF0)
  {
    sub_29E03D498(255, &qword_2A181AEF8, sub_29E03D514, sub_29E03D8B8);
    v0 = sub_29E2C2B14();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181AEF0);
    }
  }
}

void sub_29E03D498(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_29E03D564()
{
  if (!qword_2A181AF10)
  {
    sub_29E03D5F8();
    sub_29E03CAE4(&qword_2A181AF50, sub_29E03D5F8);
    v0 = sub_29E2C28F4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181AF10);
    }
  }
}

void sub_29E03D5F8()
{
  if (!qword_2A181AF18)
  {
    sub_29E03D498(255, &qword_2A181AF20, sub_29E03D680, sub_29E03D750);
    v0 = sub_29E2C2B14();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181AF18);
    }
  }
}

void sub_29E03D6E8()
{
  if (!qword_2A181AF38)
  {
    sub_29E2C2984();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181AF38);
    }
  }
}

void sub_29E03D750()
{
  if (!qword_2A181AF40)
  {
    sub_29E03DE74(255, &qword_2A181DA00, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9BC0], MEMORY[0x29EDC9C30]);
    sub_29E03D80C();
    v0 = sub_29E2C29C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181AF40);
    }
  }
}

unint64_t sub_29E03D80C()
{
  result = qword_2A181AF48;
  if (!qword_2A181AF48)
  {
    sub_29E03DE74(255, &qword_2A181DA00, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9BC0], MEMORY[0x29EDC9C30]);
    sub_29DEDBA20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181AF48);
  }

  return result;
}

void sub_29E03D8E0(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_29E03A0E8(255, a3, a4, sub_29DED9940);
    v5 = sub_29E2C4304();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29E03D94C()
{
  if (!qword_2A181AF68)
  {
    sub_29E03DE74(255, &qword_2A181AF70, MEMORY[0x29EDBCAF8], MEMORY[0x29EDBC498], MEMORY[0x29EDBC558]);
    sub_29DED9940();
    v0 = sub_29E2C1744();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181AF68);
    }
  }
}

void sub_29E03D9E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E2C15D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t *sub_29E03DA4C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 25))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_29E03AF44(a1, *(v2 + 16), v3 | *(v2 + 24), a2);
}

unint64_t sub_29E03DA70()
{
  result = qword_2A181AF80;
  if (!qword_2A181AF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181AF80);
  }

  return result;
}

void sub_29E03DAD4()
{
  if (!qword_2A181AF90)
  {
    sub_29E03D07C(255);
    sub_29E03CAE4(&qword_2A181AF98, sub_29E03D07C);
    v0 = sub_29E2C2884();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181AF90);
    }
  }
}

void sub_29E03DB68()
{
  if (!qword_2A181AFA8)
  {
    sub_29E03D410();
    sub_29E03CAE4(&qword_2A181AFB0, sub_29E03D410);
    v0 = sub_29E2C2884();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181AFA8);
    }
  }
}

void sub_29E03DC18()
{
  if (!qword_2A181AFB8)
  {
    sub_29E03DCAC(255);
    sub_29E03CAE4(&qword_2A181AFF8, sub_29E03DCAC);
    v0 = sub_29E2C28F4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181AFB8);
    }
  }
}

void sub_29E03DCE0()
{
  if (!qword_2A181AFC8)
  {
    sub_29E03DD68();
    sub_29E03DDE4();
    sub_29DF3F200();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A181AFC8);
    }
  }
}

void sub_29E03DD68()
{
  if (!qword_2A181AFD0)
  {
    sub_29E03A1AC(255, &qword_2A181AFD8, MEMORY[0x29EDBC2A0]);
    v0 = sub_29E2C4304();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181AFD0);
    }
  }
}

void sub_29E03DDE4()
{
  if (!qword_2A181AFE0)
  {
    sub_29E03DE74(255, &qword_2A181AFE8, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC498], MEMORY[0x29EDBC558]);
    sub_29E03DEC8();
    v0 = sub_29E2C2884();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181AFE0);
    }
  }
}

void sub_29E03DE74(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_29E03DEC8()
{
  result = qword_2A181AFF0;
  if (!qword_2A181AFF0)
  {
    sub_29E03DE74(255, &qword_2A181AFE8, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC498], MEMORY[0x29EDBC558]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181AFF0);
  }

  return result;
}

void sub_29E03DF6C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E2C1744();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E03DFD0()
{
  if (!qword_2A181B000)
  {
    sub_29E03DC18();
    sub_29E03CAE4(&qword_2A181B008, sub_29E03DC18);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A181B000);
    }
  }
}

uint64_t sub_29E03E084(uint64_t a1, uint64_t a2)
{
  sub_29E03A1AC(0, &qword_2A181AFD8, MEMORY[0x29EDBC2A0]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_29E03E10C()
{
  result = qword_2A181B018;
  if (!qword_2A181B018)
  {
    sub_29E03A0E8(255, &qword_2A181B020, sub_29E03DFD0, MEMORY[0x29EDBC0A8]);
    sub_29E03DC18();
    sub_29E03CAE4(&qword_2A181B008, sub_29E03DC18);
    swift_getOpaqueTypeConformance2();
    sub_29E03CAE4(&qword_2A1819290, MEMORY[0x29EDBC0A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181B018);
  }

  return result;
}

__n128 sub_29E03E24C@<Q0>(uint64_t *a1@<X8>)
{
  sub_29E23F840(v5);
  *a1 = swift_getKeyPath();
  sub_29DF2D614(0, &qword_2A1819020, MEMORY[0x29EDBC518], MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  v2 = a1 + *(type metadata accessor for PregnancySuggestedFeatureAdjustmentTile() + 20);
  v3 = v5[3];
  *(v2 + 2) = v5[2];
  *(v2 + 3) = v3;
  *(v2 + 8) = v6;
  result = v5[1];
  *v2 = v5[0];
  *(v2 + 1) = result;
  return result;
}

id sub_29E03E304()
{
  v1 = v0;
  v2 = sub_29E2C1F74();
  MEMORY[0x2A1C7C4A8](v2);
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin51PregnancyOnboardingReviewMentalHealthViewController____lazy_storage___hostingController;
  v4 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin51PregnancyOnboardingReviewMentalHealthViewController____lazy_storage___hostingController);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin51PregnancyOnboardingReviewMentalHealthViewController____lazy_storage___hostingController);
  }

  else
  {
    sub_29E03F640();
    v7 = objc_allocWithZone(v6);
    v8 = sub_29E2C1C34();
    v9 = MEMORY[0x29EDBC0B8];
    sub_29DF2D614(0, &qword_2A1817F90, MEMORY[0x29EDBC0B8], MEMORY[0x29EDC9E90]);
    *(swift_allocObject() + 16) = xmmword_29E2CAB20;
    sub_29E2C1F64();
    sub_29DF2D700(&qword_2A1817F98, MEMORY[0x29EDBC0B8]);
    sub_29DF2D614(0, &qword_2A1817FA0, v9, MEMORY[0x29EDC9A40]);
    sub_29DF2D678();
    sub_29E2C43F4();
    sub_29E2C1C24();
    v10 = *(v1 + v3);
    *(v1 + v3) = v8;
    v5 = v8;

    v4 = 0;
  }

  v11 = v4;
  return v5;
}

void sub_29E03E514(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v5 = sub_29E2C3384();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v5);
  v9 = &ObjectType - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &ObjectType - v10;
  v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin51PregnancyOnboardingReviewMentalHealthViewController_onboardingStep] = 10;
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin51PregnancyOnboardingReviewMentalHealthViewController_viewLeadingConstraint] = 0;
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin51PregnancyOnboardingReviewMentalHealthViewController_viewTrailingConstraint] = 0;
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin51PregnancyOnboardingReviewMentalHealthViewController____lazy_storage___hostingController] = 0;
  v20 = v2;
  v21 = a1;
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin51PregnancyOnboardingReviewMentalHealthViewController_coordinator] = a1;

  sub_29E2C3314();
  v23 = *(v6 + 16);
  v24 = v6;
  v23(v9, v11, v5);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v12 = qword_2A1A67F80;
  sub_29E2BCC74();
  v25 = v12;
  sub_29E2C3414();
  v22 = "EDING_ALERT_MESSAGE";
  v13 = *(v24 + 8);
  v13(v11, v5);
  v14 = sub_29E2C33A4();

  sub_29E2C3314();
  v23(v9, v11, v5);
  sub_29E2BCC74();
  sub_29E2C3414();
  v13(v11, v5);
  v15 = sub_29E2C33A4();

  v16 = objc_opt_self();
  v17 = sub_29E2C33A4();
  v18 = [v16 imageNamed:v17 inBundle:v25 compatibleWithTraitCollection:0];

  if (v18)
  {
    [v18 setIsAccessibilityElement_];
    v26.receiver = v20;
    v26.super_class = ObjectType;
    objc_msgSendSuper2(&v26, sel_initWithTitle_detailText_icon_contentLayout_, v14, v15, v18, 3);
  }

  else
  {
    __break(1u);
  }
}

void sub_29E03E90C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2C3384();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x2A1C7C4A8](v10).n128_u64[0];
  v13 = &v77 - v12;
  v87.receiver = v1;
  v87.super_class = ObjectType;
  objc_msgSendSuper2(&v87, sel_viewDidLoad, v11);
  [v1 setModalInPresentation_];
  v14 = sub_29E03E304();
  [v1 addChildViewController_];

  v15 = [v1 contentView];
  v16 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin51PregnancyOnboardingReviewMentalHealthViewController____lazy_storage___hostingController;
  v17 = [*&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin51PregnancyOnboardingReviewMentalHealthViewController____lazy_storage___hostingController] view];
  if (!v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v18 = v17;
  [v15 addSubview_];

  [*&v1[v16] didMoveToParentViewController_];
  v19 = [*&v1[v16] view];
  if (!v19)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v20 = v19;
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];

  v21 = [*&v1[v16] view];
  if (!v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22 = v21;
  v83 = v9;
  v84 = v13;
  v85 = v7;
  [v21 hk_onboardingListEdgeInsets];
  v24 = v23;
  v26 = v25;

  v27 = [*&v1[v16] view];
  if (!v27)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v28 = v27;
  v29 = [v27 leadingAnchor];

  v30 = [v1 contentView];
  v31 = v1;
  v32 = [v30 leadingAnchor];

  v82 = [v29 constraintEqualToAnchor:v32 constant:v24];
  v33 = [*&v31[v16] view];
  if (!v33)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v34 = v33;
  v80 = v5;
  v81 = v6;
  v35 = [v33 trailingAnchor];

  v36 = [v31 contentView];
  v37 = [v36 trailingAnchor];

  v38 = [v35 constraintEqualToAnchor:v37 constant:-v26];
  sub_29DE99B54();
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_29E2CE070;
  v40 = [*&v31[v16] view];
  if (!v40)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v41 = v40;
  v42 = [v40 topAnchor];

  v43 = [v31 contentView];
  v44 = [v43 topAnchor];

  v45 = [v42 constraintEqualToAnchor_];
  *(v39 + 32) = v45;
  v46 = [*&v31[v16] view];
  if (!v46)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v47 = v46;
  v48 = objc_opt_self();
  v49 = [v47 bottomAnchor];

  v50 = [v31 contentView];
  v51 = [v50 bottomAnchor];

  v52 = [v49 constraintEqualToAnchor_];
  v53 = v82;
  *(v39 + 40) = v52;
  *(v39 + 48) = v53;
  *(v39 + 56) = v38;
  sub_29DEB8834();
  v54 = v53;
  v55 = v38;
  v56 = sub_29E2C3604();

  [v48 activateConstraints_];

  v57 = *&v31[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin51PregnancyOnboardingReviewMentalHealthViewController_viewLeadingConstraint];
  *&v31[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin51PregnancyOnboardingReviewMentalHealthViewController_viewLeadingConstraint] = v54;
  v82 = v54;

  v58 = *&v31[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin51PregnancyOnboardingReviewMentalHealthViewController_viewTrailingConstraint];
  *&v31[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin51PregnancyOnboardingReviewMentalHealthViewController_viewTrailingConstraint] = v55;
  v79 = v55;

  v78 = v31;
  v59 = v84;
  sub_29E2C3314();
  v60 = v85;
  v61 = v83;
  v62 = v81;
  v77 = *(v85 + 16);
  v77(v83, v59, v81);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v63 = qword_2A1A67F80;
  sub_29E2BCC74();
  v64 = v63;
  sub_29E2C3414();
  v65 = *(v60 + 8);
  v65(v59, v62);
  v66 = sub_29E2C33A4();

  v67 = v78;

  sub_29E2C3314();
  v77(v61, v59, v62);
  sub_29E2BCC74();
  sub_29E2C3414();
  v65(v59, v62);
  v68 = sub_29E2C33A4();

  v69 = v67[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin51PregnancyOnboardingReviewMentalHealthViewController_onboardingStep];
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v70 = xmmword_2A1A67E58;
  v86 = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000014, 0x800000029E2ECF90);
  MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
  v71 = PregnancyOnboardingStep.description.getter(v69);
  MEMORY[0x29ED7FCC0](v71);

  MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](0x7261646E6F636553, 0xEF6E6F7474754279);
  v72 = sub_29E2C33A4();

  v73 = [v67 navigationItem];
  v74 = [v73 rightBarButtonItem];

  if (v74)
  {
    v86 = v70;
    sub_29E2BF404();
    MEMORY[0x29ED7FCC0](0xD000000000000014, 0x800000029E2ECF90);
    MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
    v75 = PregnancyOnboardingStep.description.getter(v69);
    MEMORY[0x29ED7FCC0](v75);

    MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
    MEMORY[0x29ED7FCC0](0x75426C65636E6143, 0xEC0000006E6F7474);
    v76 = sub_29E2C33A4();

    [v74 setAccessibilityIdentifier_];
  }
}

void sub_29E03F300()
{
  ObjectType = swift_getObjectType();
  v2 = sub_29E03E304();
  v3 = [v2 view];

  if (v3)
  {
    [v3 hk_onboardingListEdgeInsets];
    v5 = v4;
    v7 = v6;

    v8 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin51PregnancyOnboardingReviewMentalHealthViewController_viewLeadingConstraint];
    if (v8)
    {
      [v8 setConstant_];
    }

    v9 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin51PregnancyOnboardingReviewMentalHealthViewController_viewTrailingConstraint];
    if (v9)
    {
      [v9 setConstant_];
    }

    v10.receiver = v0;
    v10.super_class = ObjectType;
    objc_msgSendSuper2(&v10, sel_viewDidLayoutSubviews);
  }

  else
  {
    __break(1u);
  }
}

void sub_29E03F430(unsigned __int8 *a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = a1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin51PregnancyOnboardingReviewMentalHealthViewController_onboardingStep];
  v5 = a1;

  sub_29E27EA20(v4, a3);
}

void sub_29E03F640()
{
  if (!qword_2A181B050)
  {
    sub_29E03F69C();
    v0 = sub_29E2C1C44();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181B050);
    }
  }
}

unint64_t sub_29E03F69C()
{
  result = qword_2A181B058;
  if (!qword_2A181B058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181B058);
  }

  return result;
}

uint64_t sub_29E03F758()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x2A1C7C4A8](v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v11[-v6];
  sub_29E2C3314();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v8 = qword_2A1A67F80;
  sub_29E2BCC74();
  v9 = sub_29E2C3414();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_29E03F9C4()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x2A1C7C4A8](v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v11[-v6];
  sub_29E2C3314();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v8 = qword_2A1A67F80;
  sub_29E2BCC74();
  v9 = sub_29E2C3414();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_29E03FC30()
{
  v1 = v0;
  v2 = sub_29E2BCBB4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v24 - v6;
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v24 - v9;
  MEMORY[0x2A1C7C4A8](v11);
  v24 = &v24 - v12;
  swift_getKeyPath();
  v13 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel___observationRegistrar;
  v29 = v1;
  v26 = sub_29E047C30(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
  v27 = v13;
  sub_29E2BCFE4();

  v14 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__pregnancyEndDate;
  swift_beginAccess();
  v15 = *(v3 + 16);
  v15(v10, v1 + v14, v2);
  sub_29E2BCA84();
  LOBYTE(v13) = sub_29E2BCB34();
  v16 = *(v3 + 8);
  v16(v7, v2);
  v16(v10, v2);
  if (v13)
  {
    v17 = v24;
    sub_29E2BCA84();
  }

  else
  {
    swift_getKeyPath();
    v28 = v1;
    sub_29E2BCFE4();

    v15(v10, v1 + v14, v2);
    v17 = v24;
    sub_29E15177C(v24);
    v16(v10, v2);
  }

  swift_getKeyPath();
  v28 = v1;
  sub_29E2BCFE4();

  v18 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__pregnancyStartDate;
  swift_beginAccess();
  v15(v10, v1 + v18, v2);
  v19 = v25;
  sub_29E15177C(v25);
  v16(v10, v2);
  v20 = objc_opt_self();
  v21 = sub_29E2BCB04();
  v22 = sub_29E2BCB04();
  LODWORD(v20) = [v20 isPregnancyDurationPhysiologicallyPossibleForPregnancyStartDate:v21 pregnancyEndDate:v22];

  v16(v19, v2);
  v16(v17, v2);
  return v20 ^ 1;
}

uint64_t sub_29E03FFDC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_29E047C30(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
  sub_29E2BCFE4();

  v6 = *a2;
  swift_beginAccess();
  v7 = sub_29E2BCBB4();
  return (*(*(v7 - 8) + 16))(a3, v5 + v6, v7);
}

uint64_t sub_29E040164(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__isValidPregnancySampleInput) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__isValidPregnancySampleInput) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x2A1C7C4A8](KeyPath);
    sub_29E047C30(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
    sub_29E2BCFD4();
  }

  return result;
}

uint64_t sub_29E04027C()
{
  v1 = v0;
  v2 = sub_29E2BCBB4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = v34 - v7;
  swift_getKeyPath();
  v38 = v0;
  sub_29E047C30(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
  sub_29E2BCFE4();

  v9 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__selectedInputMethod);
  if (v9 <= 1)
  {
    if (*(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__selectedInputMethod))
    {
      v35 = objc_opt_self();
      swift_getKeyPath();
      v25 = v8;
      v38 = v0;
      sub_29E2BCFE4();

      v26 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__estimatedDueDate;
      swift_beginAccess();
      v36 = v6;
      v27 = *(v3 + 16);
      v27(v8, v1 + v26, v2);
      v28 = sub_29E2BCB04();
      v29 = *(v3 + 8);
      v29(v25, v2);
      v30 = [v35 calculatePregnancyStartForEstimatedDueDate_];

      sub_29E2BCB44();
      v31 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__pregnancyStartDate;
      swift_beginAccess();
      v32 = v36;
      v27(v36, v1 + v31, v2);
      swift_beginAccess();
      (*(v3 + 24))(v1 + v31, v25, v2);
      swift_endAccess();
      sub_29E040BF8();
      v29(v32, v2);
      v29(v25, v2);
      return sub_29E0ED658();
    }
  }

  else
  {
    if (v9 == 2)
    {
      v35 = sub_29DE9408C(0, &qword_2A1817D48);
      swift_getKeyPath();
      v36 = v8;
      v38 = v0;
      sub_29E2BCFE4();

      v34[2] = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel___gestationalAgeWeeks);
      swift_getKeyPath();
      v20 = v6;
      v38 = v0;
      sub_29E2BCFE4();

      v34[1] = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel___gestationalAgeDays);
      swift_getKeyPath();
      v38 = v0;
      sub_29E2BCFE4();

      v21 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__gestationalAgeDate;
      swift_beginAccess();
      v22 = *(v3 + 16);
      v22(v6, v1 + v21, v2);
      v23 = v36;
      sub_29E2C3F04();
      v13 = *(v3 + 8);
      v13(v20, v2);
      v24 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__pregnancyStartDate;
      swift_beginAccess();
      v22(v20, v1 + v24, v2);
      swift_beginAccess();
      (*(v3 + 24))(v1 + v24, v23, v2);
      swift_endAccess();
      sub_29E040BF8();
      v13(v20, v2);
      v15 = v23;
      goto LABEL_8;
    }

    if (v9 == 3)
    {
      v35 = sub_29DE9408C(0, &qword_2A1817D48);
      swift_getKeyPath();
      v36 = v8;
      v38 = v0;
      sub_29E2BCFE4();

      v10 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__embryoTransferDate;
      swift_beginAccess();
      v11 = *(v3 + 16);
      v11(v6, v1 + v10, v2);
      swift_getKeyPath();
      v37 = v1;
      sub_29E2BCFE4();

      v12 = v36;
      sub_29E2C3EF4();
      v13 = *(v3 + 8);
      v13(v6, v2);
      v14 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__pregnancyStartDate;
      swift_beginAccess();
      v11(v6, v1 + v14, v2);
      swift_beginAccess();
      (*(v3 + 24))(v1 + v14, v12, v2);
      swift_endAccess();
      sub_29E040BF8();
      v13(v6, v2);
      v15 = v12;
LABEL_8:
      v13(v15, v2);
      return sub_29E0ED658();
    }
  }

  swift_getKeyPath();
  v38 = v0;
  sub_29E2BCFE4();

  v16 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__lastMenstrualPeriodDate;
  swift_beginAccess();
  v17 = *(v3 + 16);
  v17(v8, v1 + v16, v2);
  v18 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__pregnancyStartDate;
  swift_beginAccess();
  v17(v6, v1 + v18, v2);
  swift_beginAccess();
  (*(v3 + 24))(v1 + v18, v8, v2);
  swift_endAccess();
  sub_29E040BF8();
  v19 = *(v3 + 8);
  v19(v6, v2);
  v19(v8, v2);
  return sub_29E0ED658();
}

uint64_t sub_29E040A04()
{
  swift_getKeyPath();
  sub_29E047C30(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
  sub_29E2BCFE4();

  return *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__selectedInputMethod);
}

uint64_t sub_29E040AAC(unsigned __int8 a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__selectedInputMethod);
  if (v2 == 4)
  {
    if (a1 != 4)
    {
LABEL_3:
      KeyPath = swift_getKeyPath();
      MEMORY[0x2A1C7C4A8](KeyPath);
      sub_29E047C30(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
      sub_29E2BCFD4();
    }
  }

  else if (v2 != a1)
  {
    goto LABEL_3;
  }

  *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__selectedInputMethod) = a1;

  return sub_29E04027C();
}

uint64_t sub_29E040BF8()
{
  v1 = v0;
  v70 = sub_29E2BCF04();
  v73 = *(v70 - 8);
  MEMORY[0x2A1C7C4A8](v70);
  v69 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0479F0(0, &qword_2A1817D40, MEMORY[0x29EDB9950]);
  v4 = MEMORY[0x2A1C7C4A8](v3 - 8);
  v64 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v68 = &v57 - v6;
  v7 = sub_29E2BCBB4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v7);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v57 - v12;
  swift_getKeyPath();
  v14 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel___observationRegistrar;
  v80 = v0;
  v75 = sub_29E047C30(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
  sub_29E2BCFE4();

  v15 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__pregnancyStartDate;
  swift_beginAccess();
  v16 = v8 + 16;
  v76 = *(v8 + 16);
  v76(v13, v0 + v15, v7);
  sub_29E047C30(&qword_2A181D9C0, MEMORY[0x29EDB9BC8]);
  v17 = sub_29E2C3304();
  v20 = *(v8 + 8);
  v19 = v8 + 8;
  v18 = v20;
  result = (v20)(v13, v7);
  if (v17)
  {
    return result;
  }

  v22 = sub_29DE9408C(0, &qword_2A1817D48);
  v74 = v18;
  v71 = v22;
  swift_getKeyPath();
  v77 = v13;
  v79 = v1;
  sub_29E2BCFE4();

  v76(v11, v1 + v15, v7);
  sub_29E2C3EC4();
  v74(v11, v7);
  sub_29E0430F4(v77);
  swift_getKeyPath();
  v79 = v1;
  v72 = v11;
  sub_29E2BCFE4();

  v23 = v76;
  v76(v77, v1 + v15, v7);
  sub_29E0439B0(v77);
  swift_getKeyPath();
  v79 = v1;
  sub_29E2BCFE4();

  v63 = v15;
  v23(v77, v1 + v15, v7);
  v24 = v69;
  sub_29E2BCEF4();
  sub_29E2BCED4();
  v25 = *(v73 + 8);
  v73 += 8;
  v61 = v25;
  v25(v24, v70);
  swift_getKeyPath();
  v66 = v14;
  v67 = v19;
  v79 = v1;
  sub_29E2BCFE4();

  v26 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__gestationalAgeDate;
  swift_beginAccess();
  v60 = v26;
  v27 = v1 + v26;
  v28 = v72;
  v65 = v16;
  v23(v72, v27, v7);
  v29 = v77;
  v30 = v68;
  v31 = v28;
  sub_29E2C3F14();

  v32 = v74;
  v74(v31, v7);
  v32(v29, v7);
  v33 = sub_29E2BC5F4();
  v34 = *(v33 - 8);
  v35 = *(v34 + 48);
  v59 = v34 + 48;
  v58 = v35;
  v36 = v35(v30, 1, v33);
  v62 = v33;
  v57 = v34;
  if (v36 == 1)
  {
    sub_29E047A44(v68, &qword_2A1817D40, MEMORY[0x29EDB9950]);
  }

  else
  {
    v37 = v68;
    v38 = sub_29E2BC554();
    v40 = v39;
    (*(v34 + 8))(v37, v33);
    if ((v40 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v38 = 0;
LABEL_6:
  v41 = v63;
  if (*(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel___gestationalAgeDays) == v38)
  {
    v68 = 0;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x2A1C7C4A8](KeyPath);
    *(&v57 - 2) = v1;
    *(&v57 - 1) = v38;
    v78 = v1;
    sub_29E2BCFD4();
    v68 = 0;
  }

  v43 = v69;
  swift_getKeyPath();
  v78 = v1;
  sub_29E2BCFE4();

  v44 = v41;
  v45 = v1 + v41;
  v46 = v76;
  v76(v29, v45, v7);
  sub_29E2BCEF4();
  sub_29E2BCED4();
  v61(v43, v70);
  swift_getKeyPath();
  v78 = v1;
  sub_29E2BCFE4();

  v47 = v72;
  v46(v72, v1 + v60, v7);
  v48 = v77;
  v49 = v64;
  sub_29E2C3F14();

  v50 = v74;
  v74(v47, v7);
  v50(v48, v7);
  v51 = v62;
  if (v58(v49, 1, v62) == 1)
  {
    sub_29E047A44(v49, &qword_2A1817D40, MEMORY[0x29EDB9950]);
LABEL_12:
    v52 = 0;
    goto LABEL_13;
  }

  v52 = sub_29E2BC514();
  v54 = v53;
  (*(v57 + 8))(v49, v51);
  if (v54)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (*(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel___gestationalAgeWeeks) != v52)
  {
    v55 = swift_getKeyPath();
    MEMORY[0x2A1C7C4A8](v55);
    *(&v57 - 2) = v1;
    *(&v57 - 1) = v52;
    v78 = v1;
    sub_29E2BCFD4();
  }

  swift_getKeyPath();
  v78 = v1;
  sub_29E2BCFE4();

  v56 = v72;
  v76(v72, v1 + v44, v7);
  swift_getKeyPath();
  v78 = v1;
  sub_29E2BCFE4();

  sub_29E2C3EE4();
  v74(v56, v7);
  return sub_29E043DA0(v48);
}

uint64_t sub_29E0416A4(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = sub_29E2BCBB4();
  v22 = *(v4 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v19 - v7;
  sub_29DEA8D5C();
  v23 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v24 = v1;
  sub_29E047C30(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
  sub_29E2BCFE4();

  v13 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedPastPregnancyStartDate;
  if (*(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedPastPregnancyStartDate) != v3)
  {
    swift_getKeyPath();
    v24 = v1;
    sub_29E2BCFE4();

    if (*(v1 + v13) == 1)
    {
      if (qword_2A1816FD0 != -1)
      {
        swift_once();
      }

      v20 = sub_29DEA8E9C(v23, qword_2A1840FB0);
      sub_29E047B08(v20, v11);
      swift_getKeyPath();
      v24 = v1;
      sub_29E2BCFE4();

      v14 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__pastPregnancyStartDate;
      swift_beginAccess();
      v15 = v22;
      v16 = *(v22 + 16);
      v16(v8, v2 + v14, v4);
      sub_29E047C30(&qword_2A1A616E0, MEMORY[0x29EDB9BC8]);
      if (sub_29E2C32A4())
      {
        v17 = sub_29E2C32B4();
        (*(v15 + 8))(v8, v4);
        sub_29E047B6C(v11);
        if (v17)
        {
          return sub_29E0ED658();
        }
      }

      else
      {
        (*(v15 + 8))(v8, v4);
        sub_29E047B6C(v11);
      }

      v18 = v21;
      v16(v21, v20 + *(v23 + 36), v4);
      sub_29E041C84(v18);
    }

    return sub_29E0ED658();
  }

  return result;
}

uint64_t sub_29E041A60(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_29E047C30(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
  sub_29E2BCFE4();

  return *(v2 + *a2);
}

uint64_t sub_29E041B3C(uint64_t a1, char a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedPastPregnancyStartDate);
  *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedPastPregnancyStartDate) = a2;
  return sub_29E0416A4(v3);
}

uint64_t sub_29E041B8C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  v8 = v2;
  sub_29E047C30(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
  sub_29E2BCFE4();

  v5 = *a1;
  swift_beginAccess();
  v6 = sub_29E2BCBB4();
  return (*(*(v6 - 8) + 16))(a2, v8 + v5, v6);
}

uint64_t sub_29E041C84(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29E2BCBB4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v18 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v17 - v8;
  v10 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__pastPregnancyStartDate;
  swift_beginAccess();
  v11 = *(v5 + 16);
  v11(v9, v2 + v10, v4);
  sub_29E047C30(&qword_2A181D9C0, MEMORY[0x29EDB9BC8]);
  v19 = a1;
  LOBYTE(a1) = sub_29E2C3304();
  v12 = *(v5 + 8);
  v12(v9, v4);
  if (a1)
  {
    v11(v9, v19, v4);
    swift_beginAccess();
    (*(v5 + 24))(v2 + v10, v9, v4);
    swift_endAccess();
    swift_getKeyPath();
    v20 = v2;
    sub_29E047C30(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
    sub_29E2BCFE4();

    v13 = v18;
    v11(v18, v2 + v10, v4);
    sub_29E041668(v13);
    v12(v9, v4);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x2A1C7C4A8](KeyPath);
    v15 = v19;
    *(&v17 - 2) = v2;
    *(&v17 - 1) = v15;
    v20 = v2;
    sub_29E047C30(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
    sub_29E2BCFD4();
  }

  return (v12)(v19, v4);
}

uint64_t sub_29E041FF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E2BCBB4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = v13 - v9;
  v13[0] = *(v5 + 16);
  (v13[0])(v13 - v9, a2, v4);
  v11 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__pastPregnancyStartDate;
  swift_beginAccess();
  (*(v5 + 24))(a1 + v11, v10, v4);
  swift_endAccess();
  swift_getKeyPath();
  v13[1] = a1;
  sub_29E047C30(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
  sub_29E2BCFE4();

  (v13[0])(v8, a1 + v11, v4);
  sub_29E041668(v8);
  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_29E0421F0(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = sub_29E2BCBB4();
  v26 = *(v4 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v4);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v23 - v7;
  sub_29DEA8D5C();
  v25 = v9;
  v10 = MEMORY[0x2A1C7C4A8](v9);
  v24 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v23 - v12;
  swift_getKeyPath();
  v28 = v1;
  sub_29E047C30(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
  sub_29E2BCFE4();

  v15 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedPregnancyEndDate;
  if (*(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedPregnancyEndDate) != v3)
  {
    swift_getKeyPath();
    v28 = v1;
    sub_29E2BCFE4();

    if (*(v1 + v15) == 1)
    {
      sub_29E04284C(v13);
      swift_getKeyPath();
      v28 = v1;
      sub_29E2BCFE4();

      v16 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__pregnancyEndDate;
      swift_beginAccess();
      v17 = v26;
      v18 = *(v26 + 16);
      v18(v8, v2 + v16, v4);
      sub_29E047C30(&qword_2A1A616E0, MEMORY[0x29EDB9BC8]);
      if (sub_29E2C32A4())
      {
        v19 = v25;
        v20 = sub_29E2C32B4();
        (*(v17 + 8))(v8, v4);
        sub_29E047B6C(v13);
        if (v20)
        {
          return sub_29E0ED658();
        }
      }

      else
      {
        (*(v17 + 8))(v8, v4);
        sub_29E047B6C(v13);
        v19 = v25;
      }

      v22 = v24;
      sub_29E04284C(v24);
      v21 = v27;
      v18(v27, &v22[*(v19 + 36)], v4);
      sub_29E047B6C(v22);
    }

    else
    {
      v21 = v27;
      sub_29E2BCA84();
    }

    sub_29E042A88(v21);
    return sub_29E0ED658();
  }

  return result;
}

uint64_t sub_29E0425CC@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_29E047C30(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
  sub_29E2BCFE4();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_29E0426E4(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (*(v5 + *a2) == (a1 & 1))
  {
    *(v5 + *a2) = a1 & 1;

    return a5();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x2A1C7C4A8](KeyPath);
    sub_29E047C30(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
    sub_29E2BCFD4();
  }
}

uint64_t sub_29E042810(uint64_t a1, char a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedPregnancyEndDate);
  *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedPregnancyEndDate) = a2;
  return sub_29E0421F0(v3);
}

uint64_t sub_29E04284C@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_29E2BCBB4();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v13 = v1;
  sub_29E047C30(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
  sub_29E2BCFE4();

  if (*(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedPastPregnancyStartDate) == 1)
  {
    swift_getKeyPath();
    v13 = v1;
    sub_29E2BCFE4();

    v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__pregnancyStartDate;
    swift_beginAccess();
    (*(v5 + 16))(v7, v2 + v8, v4);
    sub_29E0B12CC(v7, a1);
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    if (qword_2A1816FD0 != -1)
    {
      swift_once();
    }

    sub_29DEA8D5C();
    v11 = sub_29DEA8E9C(v10, qword_2A1840FB0);
    return sub_29E047B08(v11, a1);
  }
}

uint64_t sub_29E042A88(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29E2BCBB4();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__pregnancyEndDate;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_29E047C30(&qword_2A181D9C0, MEMORY[0x29EDB9BC8]);
  v14[0] = a1;
  LOBYTE(a1) = sub_29E2C3304();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x2A1C7C4A8](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_29E047C30(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
    sub_29E2BCFD4();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_29E042D28(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__pregnancyEndDate;
  swift_beginAccess();
  v5 = sub_29E2BCBB4();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_29E042E4C()
{
  v1 = v0;
  v2 = sub_29E2BCBB4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel___observationRegistrar;
  v18 = v1;
  v15 = sub_29E047C30(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
  v16 = v6;
  sub_29E2BCFE4();

  v7 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__estimatedDueDate;
  swift_beginAccess();
  v8 = *(v3 + 16);
  v8(v5, v1 + v7, v2);
  sub_29E047C30(&qword_2A181D9C0, MEMORY[0x29EDB9BC8]);
  LOBYTE(v6) = sub_29E2C3304();
  v9 = *(v3 + 8);
  result = v9(v5, v2);
  if ((v6 & 1) == 0)
  {
    v14 = objc_opt_self();
    swift_getKeyPath();
    v17 = v1;
    sub_29E2BCFE4();

    v8(v5, v1 + v7, v2);
    v11 = sub_29E2BCB04();
    v9(v5, v2);
    v12 = [v14 calculatePregnancyStartForEstimatedDueDate_];

    sub_29E2BCB44();
    return sub_29E041668(v5);
  }

  return result;
}

uint64_t sub_29E043130(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(char *))
{
  v23 = a5;
  v24 = a4;
  v22 = a3;
  v7 = v5;
  v9 = sub_29E2BCBB4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v22 - v14;
  v16 = *a2;
  swift_beginAccess();
  v17 = *(v10 + 16);
  v17(v15, v7 + v16, v9);
  sub_29E047C30(&qword_2A181D9C0, MEMORY[0x29EDB9BC8]);
  v26 = a1;
  LOBYTE(a1) = sub_29E2C3304();
  v25 = *(v10 + 8);
  v25(v15, v9);
  if (a1)
  {
    v17(v15, v26, v9);
    v17(v13, v7 + v16, v9);
    swift_beginAccess();
    (*(v10 + 24))(v7 + v16, v15, v9);
    swift_endAccess();
    v23(v13);
    v18 = v25;
    v25(v13, v9);
    v18(v15, v9);
    return (v18)(v26, v9);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x2A1C7C4A8](KeyPath);
    v21 = v26;
    *(&v22 - 2) = v7;
    *(&v22 - 1) = v21;
    v27 = v7;
    sub_29E047C30(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
    sub_29E2BCFD4();

    return (v25)(v26, v9);
  }
}

uint64_t sub_29E043448()
{
  v1 = sub_29E0ED838() & 1;
  swift_getKeyPath();
  sub_29E047C30(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
  sub_29E2BCFE4();

  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__isValidPregnancySampleInput;
  if (v1 != *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__isValidPregnancySampleInput))
  {
    swift_getKeyPath();
    sub_29E2BCFE4();

    swift_getKeyPath();
    sub_29E2BD004();

    *(v0 + v3) = (*(v0 + v3) & 1) == 0;
    swift_getKeyPath();
    sub_29E2BCFF4();
  }

  return result;
}

uint64_t sub_29E043600(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (*(v5 + *a2) == (a1 & 1))
  {
    *(v5 + *a2) = a1 & 1;

    return a5();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x2A1C7C4A8](KeyPath);
    sub_29E047C30(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
    sub_29E2BCFD4();
  }
}

uint64_t sub_29E043764()
{
  v1 = v0;
  v2 = sub_29E2BCBB4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel___observationRegistrar;
  v10[3] = v1;
  sub_29E047C30(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
  v10[1] = v6;
  sub_29E2BCFE4();

  v7 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__lastMenstrualPeriodDate;
  swift_beginAccess();
  v8 = *(v3 + 16);
  v8(v5, v1 + v7, v2);
  sub_29E047C30(&qword_2A181D9C0, MEMORY[0x29EDB9BC8]);
  LOBYTE(v6) = sub_29E2C3304();
  result = (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    swift_getKeyPath();
    v10[2] = v1;
    sub_29E2BCFE4();

    v8(v5, v1 + v7, v2);
    return sub_29E041668(v5);
  }

  return result;
}

uint64_t sub_29E043A74()
{
  v1 = v0;
  v2 = sub_29E2BCBB4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v20 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v15 - v6;
  swift_getKeyPath();
  v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel___observationRegistrar;
  v22 = v1;
  sub_29E047C30(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
  v19 = v8;
  sub_29E2BCFE4();

  v9 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__embryoTransferDate;
  swift_beginAccess();
  v10 = *(v3 + 16);
  v10(v7, v1 + v9, v2);
  sub_29E047C30(&qword_2A181D9C0, MEMORY[0x29EDB9BC8]);
  LOBYTE(v8) = sub_29E2C3304();
  v11 = *(v3 + 8);
  result = v11(v7, v2);
  if ((v8 & 1) == 0)
  {
    v18 = sub_29DE9408C(0, &qword_2A1817D48);
    swift_getKeyPath();
    v16 = v10;
    v17 = v11;
    v21 = v1;
    sub_29E2BCFE4();

    v13 = v1 + v9;
    v14 = v20;
    v16(v20, v13, v2);
    swift_getKeyPath();
    v21 = v1;
    sub_29E2BCFE4();

    sub_29E2C3EF4();
    v17(v14, v2);
    return sub_29E041668(v7);
  }

  return result;
}

uint64_t sub_29E043E64(uint64_t a1)
{
  v2 = v1;
  v14 = sub_29E2BCBB4();
  v4 = *(v14 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v14);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v13 - v8;
  swift_getKeyPath();
  v16 = v1;
  sub_29E047C30(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
  sub_29E2BCFE4();

  if (*(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__embryonicAgeDays) != a1)
  {
    v13 = sub_29DE9408C(0, &qword_2A1817D48);
    swift_getKeyPath();
    v16 = v1;
    sub_29E2BCFE4();

    v11 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__embryoTransferDate;
    swift_beginAccess();
    v12 = v14;
    (*(v4 + 16))(v7, v2 + v11, v14);
    swift_getKeyPath();
    v15 = v2;
    sub_29E2BCFE4();

    sub_29E2C3EF4();
    (*(v4 + 8))(v7, v12);
    return sub_29E041668(v9);
  }

  return result;
}

uint64_t sub_29E0440D4(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__embryonicAgeDays) == a1)
  {

    return sub_29E043E64(a1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x2A1C7C4A8](KeyPath);
    sub_29E047C30(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
    sub_29E2BCFD4();
  }
}

uint64_t sub_29E044294()
{
  v1 = v0;
  v2 = sub_29E2BCBB4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = v15 - v7;
  swift_getKeyPath();
  v9 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel___observationRegistrar;
  v23 = v1;
  sub_29E047C30(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
  v21 = v9;
  sub_29E2BCFE4();

  v10 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__gestationalAgeDate;
  swift_beginAccess();
  v20 = *(v3 + 16);
  v20(v8, v1 + v10, v2);
  sub_29E047C30(&qword_2A181D9C0, MEMORY[0x29EDB9BC8]);
  LOBYTE(v9) = sub_29E2C3304();
  v13 = *(v3 + 8);
  v11 = v3 + 8;
  v12 = v13;
  result = (v13)(v8, v2);
  if ((v9 & 1) == 0)
  {
    v19 = sub_29DE9408C(0, &qword_2A1817D48);
    swift_getKeyPath();
    v17 = v10;
    v18 = v11;
    v22 = v1;
    sub_29E2BCFE4();

    v15[1] = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel___gestationalAgeWeeks);
    swift_getKeyPath();
    v16 = v12;
    v22 = v1;
    sub_29E2BCFE4();

    swift_getKeyPath();
    v22 = v1;
    sub_29E2BCFE4();

    v20(v6, v1 + v17, v2);
    sub_29E2C3F04();
    v16(v6, v2);
    return sub_29E041668(v8);
  }

  return result;
}

uint64_t sub_29E044614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, a1);
  return a5(v9);
}

uint64_t sub_29E044724(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(char *))
{
  v19 = a4;
  v7 = sub_29E2BCBB4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v18 - v12;
  v14 = *(v8 + 16);
  v14(&v18 - v12, a2, v7);
  v15 = *a3;
  swift_beginAccess();
  v14(v11, a1 + v15, v7);
  swift_beginAccess();
  (*(v8 + 24))(a1 + v15, v13, v7);
  swift_endAccess();
  v19(v11);
  v16 = *(v8 + 8);
  v16(v11, v7);
  return (v16)(v13, v7);
}

uint64_t sub_29E044968(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_29E047C30(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
  sub_29E2BCFE4();

  return *(v2 + *a2);
}

uint64_t sub_29E044A1C@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_29E047C30(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
  sub_29E2BCFE4();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_29E044B34(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29E2BCBB4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v16 - v9;
  swift_getKeyPath();
  v18 = v1;
  sub_29E047C30(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
  sub_29E2BCFE4();

  if (*(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel___gestationalAgeDays) != a1)
  {
    KeyPath = swift_getKeyPath();
    v16 = a1;
    v17 = v4;
    MEMORY[0x2A1C7C4A8](KeyPath);
    *(&v16 - 2) = v1;
    *(&v16 - 1) = v13;
    v18 = v1;
    sub_29E2BCFD4();

    sub_29DE9408C(0, &qword_2A1817D48);
    swift_getKeyPath();
    v18 = v1;
    sub_29E2BCFE4();

    swift_getKeyPath();
    v18 = v1;
    sub_29E2BCFE4();

    v14 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__gestationalAgeDate;
    swift_beginAccess();
    v15 = v17;
    (*(v5 + 16))(v8, v2 + v14, v17);
    sub_29E2C3F04();
    (*(v5 + 8))(v8, v15);
    return sub_29E041668(v10);
  }

  return result;
}

uint64_t sub_29E044E8C(uint64_t result, void *a2)
{
  if (*(v2 + *a2) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x2A1C7C4A8](KeyPath);
    sub_29E047C30(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
    sub_29E2BCFD4();
  }

  return result;
}

uint64_t sub_29E044F98(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29E2BCBB4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v25 = v22 - v9;
  swift_getKeyPath();
  v26 = v1;
  sub_29E047C30(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
  sub_29E2BCFE4();

  v11 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel___gestationalAgeWeeks;
  if (*(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel___gestationalAgeWeeks) != a1)
  {
    v23 = v5;
    v24 = v4;
    if (qword_2A1816FD8 != -1)
    {
      swift_once();
    }

    v12 = qword_2A1840FC8 != a1 && a1 == 0;
    if (qword_2A1840FC8 == a1)
    {
      v13 = 0;
    }

    else
    {
      v13 = 6;
    }

    swift_getKeyPath();
    v26 = v1;
    sub_29E2BCFE4();

    v22[2] = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel___gestationalAgeDays;
    v14 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel___gestationalAgeDays);
    v15 = v13 < v14 || v14 < v12;
    if (v15 && v14 != v12)
    {
      KeyPath = swift_getKeyPath();
      v22[1] = v22;
      MEMORY[0x2A1C7C4A8](KeyPath);
      v22[-2] = v1;
      v22[-1] = v12;
      v26 = v1;
      sub_29E2BCFD4();
    }

    if (*(v1 + v11) != a1)
    {
      v17 = swift_getKeyPath();
      MEMORY[0x2A1C7C4A8](v17);
      v22[-2] = v1;
      v22[-1] = a1;
      v26 = v1;
      sub_29E2BCFD4();
    }

    sub_29DE9408C(0, &qword_2A1817D48);
    swift_getKeyPath();
    v26 = v1;
    sub_29E2BCFE4();

    swift_getKeyPath();
    v26 = v1;
    sub_29E2BCFE4();

    v18 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__gestationalAgeDate;
    swift_beginAccess();
    v20 = v23;
    v19 = v24;
    (*(v23 + 16))(v8, v2 + v18, v24);
    v21 = v25;
    sub_29E2C3F04();
    (*(v20 + 8))(v8, v19);
    return sub_29E041668(v21);
  }

  return result;
}

id sub_29E0453C8()
{
  v1 = v0;
  v67 = sub_29E2BCBB4();
  v2 = *(v67 - 8);
  v3 = MEMORY[0x2A1C7C4A8](v67);
  v69 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v7 = &v55 - v6;
  v8 = MEMORY[0x2A1C7C4A8](v5);
  v10 = &v55 - v9;
  MEMORY[0x2A1C7C4A8](v8);
  v68 = &v55 - v11;
  v12 = sub_29E2BCF04();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29E2BCEA4();
  v61 = *(v16 - 8);
  v62 = v16;
  MEMORY[0x2A1C7C4A8](v16);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCE44();
  v70 = v18;
  sub_29E2BCE64();
  v59 = sub_29E2BCED4();
  v60 = v19;
  (*(v13 + 8))(v15, v12);
  swift_getKeyPath();
  v20 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel___observationRegistrar;
  v73 = v1;
  v21 = sub_29E047C30(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
  v65 = v20;
  v66 = v21;
  sub_29E2BCFE4();

  v22 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__pregnancyEndDate;
  swift_beginAccess();
  v23 = v2 + 16;
  v24 = *(v2 + 16);
  v25 = v67;
  v24(v10, v1 + v22, v67);
  sub_29E2BCA84();
  LOBYTE(v20) = sub_29E2BCB34();
  v28 = *(v2 + 8);
  v26 = v2 + 8;
  v27 = v28;
  v28(v7, v25);
  v28(v10, v25);
  v64 = v28;
  if (v20)
  {
    sub_29E2BCA84();
  }

  else
  {
    swift_getKeyPath();
    v72 = v1;
    sub_29E2BCFE4();

    v24(v10, v1 + v22, v25);
    sub_29E151BE0(v70, v68);
    v27(v10, v25);
  }

  swift_getKeyPath();
  v72 = v1;
  sub_29E2BCFE4();

  v29 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__pregnancyStartDate;
  swift_beginAccess();
  v58 = v24;
  v24(v10, v1 + v29, v25);
  sub_29E151BE0(v70, v69);
  v30 = v25;
  v63 = v26;
  v31 = v64;
  v64(v10, v30);
  swift_getKeyPath();
  v71 = v1;
  sub_29E2BCFE4();

  v32 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__selectedInputMethod);
  v33 = v10;
  v34 = v31;
  if (v32 > 2)
  {
    if (v32 != 3)
    {
      v53 = objc_opt_self();
      v35 = v69;
      v36 = sub_29E2BCB04();
      v37 = sub_29E2C33A4();

      v38 = v68;
      v39 = sub_29E2BCB04();
      v40 = [v53 hkmc:v36 pregnancyCategorySampleWithStartDate:v37 startTimeZoneID:v39 endDate:0 startDateSource:0 embryoAgeInDays:0 detailsRecordedOnDate:?];
      goto LABEL_11;
    }

    v57 = objc_opt_self();
    v56 = sub_29E2BCB04();
    v59 = sub_29E2C33A4();

    v38 = v68;
    v60 = sub_29E2BCB04();
    swift_getKeyPath();
    v71 = v1;
    sub_29E2BCFE4();

    v37 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
    swift_getKeyPath();
    v71 = v1;
    sub_29E2BCFE4();

    v41 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__embryoTransferDate;
    swift_beginAccess();
    v42 = v1 + v41;
    v43 = v67;
    v58(v33, v42, v67);
    v35 = v69;
    v39 = sub_29E2BCB04();
    v44 = v33;
    v36 = v60;
    v64(v44, v43);
    v45 = v56;
    v46 = v59;
    v47 = [v57 hkmc:v56 pregnancyCategorySampleWithStartDate:v59 startTimeZoneID:v36 endDate:3 startDateSource:v37 embryoAgeInDays:v39 detailsRecordedOnDate:?];

    v34 = v64;
  }

  else
  {
    if (v32 < 2)
    {
      v35 = v69;
      v36 = sub_29E2BCB04();
      v37 = sub_29E2C33A4();

      v38 = v68;
      v39 = sub_29E2BCB04();
      v40 = [objc_opt_self() hkmc:v36 pregnancyCategorySampleWithStartDate:v37 startTimeZoneID:v39 endDate:v32 != 0 startDateSource:0 embryoAgeInDays:0 detailsRecordedOnDate:?];
LABEL_11:
      v47 = v40;
      v43 = v67;
      goto LABEL_12;
    }

    v57 = objc_opt_self();
    v48 = v10;
    v55 = v23;
    v49 = v69;
    v56 = sub_29E2BCB04();
    v36 = sub_29E2C33A4();

    v38 = v68;
    v37 = sub_29E2BCB04();
    swift_getKeyPath();
    v71 = v1;
    sub_29E2BCFE4();

    v50 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__gestationalAgeDate;
    swift_beginAccess();
    v51 = v1 + v50;
    v43 = v67;
    v58(v48, v51, v67);
    v35 = v49;
    v39 = sub_29E2BCB04();
    v34(v48, v43);
    v52 = v56;
    v47 = [v57 hkmc:v56 pregnancyCategorySampleWithStartDate:v36 startTimeZoneID:v37 endDate:2 startDateSource:0 embryoAgeInDays:v39 detailsRecordedOnDate:?];
  }

LABEL_12:

  v34(v35, v43);
  v34(v38, v43);
  (*(v61 + 8))(v70, v62);
  return v47;
}

uint64_t sub_29E045CAC()
{
  sub_29E047A44(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__unitTestTodayOverride, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__pregnancyStartDate;
  v2 = sub_29E2BCBB4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__pastPregnancyStartDate, v2);
  v3(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__pregnancyEndDate, v2);
  v3(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__estimatedDueDate, v2);
  v3(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__lastMenstrualPeriodDate, v2);
  v3(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__embryoTransferDate, v2);
  v3(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__gestationalAgeDate, v2);
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel___observationRegistrar;
  v5 = sub_29E2BD024();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PregnancyDatesInputViewModel()
{
  result = qword_2A181B110;
  if (!qword_2A181B110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E045EC4()
{
  sub_29E0479F0(319, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
  if (v0 <= 0x3F)
  {
    sub_29E2BCBB4();
    if (v1 <= 0x3F)
    {
      sub_29E2BD024();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_29E046094()
{
  if (!qword_2A181B128)
  {
    v0 = sub_29E2C3684();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181B128);
    }
  }
}

unint64_t sub_29E0460E8()
{
  result = qword_2A181B130;
  if (!qword_2A181B130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181B130);
  }

  return result;
}

unint64_t sub_29E046140()
{
  result = qword_2A181B138;
  if (!qword_2A181B138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181B138);
  }

  return result;
}

unint64_t sub_29E046198()
{
  result = qword_2A181B140;
  if (!qword_2A181B140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181B140);
  }

  return result;
}

uint64_t sub_29E0461EC(char a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v13[-v8];
  if ((a1 & 1) == 0)
  {
    return 0;
  }

  sub_29E2C3314();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v10 = qword_2A1A67F80;
  sub_29E2BCC74();
  v11 = sub_29E2C3414();
  (*(v4 + 8))(v9, v3);
  return v11;
}

_BYTE *sub_29E0463FC(void *a1, int a2, uint64_t a3)
{
  v198 = a3;
  LODWORD(v200) = a2;
  v169 = sub_29E2BCF04();
  v168 = *(v169 - 8);
  MEMORY[0x2A1C7C4A8](v169);
  v167 = v164 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0479F0(0, &qword_2A1817D40, MEMORY[0x29EDB9950]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v184 = v164 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v183 = v164 - v8;
  v180 = sub_29E2BCE84();
  v179 = *(v180 - 8);
  MEMORY[0x2A1C7C4A8](v180);
  v177 = v164 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_29E2BCEA4();
  v176 = *(v178 - 8);
  MEMORY[0x2A1C7C4A8](v178);
  v175 = v164 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E2BCBB4();
  v205 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v185 = v164 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v166 = v164 - v14;
  MEMORY[0x2A1C7C4A8](v15);
  v17 = v164 - v16;
  MEMORY[0x2A1C7C4A8](v18);
  v197 = v164 - v19;
  MEMORY[0x2A1C7C4A8](v20);
  v204 = v164 - v21;
  MEMORY[0x2A1C7C4A8](v22);
  v203 = v164 - v23;
  MEMORY[0x2A1C7C4A8](v24);
  v26 = v164 - v25;
  MEMORY[0x2A1C7C4A8](v27);
  v29 = v164 - v28;
  sub_29E0479F0(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
  MEMORY[0x2A1C7C4A8](v30 - 8);
  v182 = v164 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v32);
  v34 = v164 - v33;
  MEMORY[0x2A1C7C4A8](v35);
  v188 = v164 - v36;
  MEMORY[0x2A1C7C4A8](v37);
  v39 = v164 - v38;
  MEMORY[0x2A1C7C4A8](v40);
  v196 = v164 - v41;
  MEMORY[0x2A1C7C4A8](v42);
  v44 = v164 - v43;
  MEMORY[0x2A1C7C4A8](v45);
  v47 = v164 - v46;
  v48 = a1;
  v49 = [v48 metadata];
  v201 = v29;
  v189 = v47;
  v202 = v44;
  v165 = v17;
  v174 = v34;
  if (v49)
  {
    v50 = v49;
    v51 = sub_29E2C3214();

    v52 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    if (*(v51 + 16))
    {
      v54 = sub_29DECF000(v52, v53);
      v56 = v55;

      if (v56)
      {
        sub_29DEA6E90(*(v51 + 56) + 32 * v54, &v207);
        sub_29DE9408C(0, &qword_2A1A5E0B0);
        v57 = swift_dynamicCast();
        v58 = v206;
        if (!v57)
        {
          v58 = 0;
        }

        v190 = v58;
      }

      else
      {
        v190 = 0;
      }
    }

    else
    {

      v190 = 0;
    }

    v62 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    if (*(v51 + 16))
    {
      v64 = sub_29DECF000(v62, v63);
      v66 = v65;

      if (v66)
      {
        sub_29DEA6E90(*(v51 + 56) + 32 * v64, &v207);
        sub_29DE9408C(0, &qword_2A1A5E0B0);
        if (swift_dynamicCast())
        {
          v61 = v206;
        }

        else
        {
          v61 = 0;
        }
      }

      else
      {
        v61 = 0;
      }
    }

    else
    {

      v61 = 0;
    }

    v67 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    if (*(v51 + 16))
    {
      v69 = sub_29DECF000(v67, v68);
      v71 = v70;

      if (v71)
      {
        sub_29DEA6E90(*(v51 + 56) + 32 * v69, &v207);

        sub_29DE9408C(0, &qword_2A1A5E0D0);
        v72 = swift_dynamicCast();
        v73 = v206;
        if (!v72)
        {
          v73 = 0;
        }
      }

      else
      {

        v73 = 0;
      }
    }

    else
    {

      v73 = 0;
    }

    v47 = v189;
    v59 = v26;
    v195 = v73;
    if (v190)
    {
      v60 = v39;
      v74 = [v190 integerValue];
      if (v74 >= 4)
      {
        v75 = 0;
      }

      else
      {
        v75 = v74;
      }

      v193 = v75;
    }

    else
    {
      v60 = v39;
      v193 = 0;
      v190 = 0;
    }
  }

  else
  {
    v59 = v26;
    v60 = v39;
    v193 = 0;
    v195 = 0;
    v190 = 0;
    v61 = 0;
  }

  v76 = v48;
  v77 = [v76 startDate];
  sub_29E2BCB44();

  v78 = *(v205 + 56);
  v78(v47, 0, 1, v11);
  v79 = [v76 _timeZoneName];
  v194 = v76;

  if (v79)
  {
    v80 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v191 = v81;
    v192 = v80;
  }

  else
  {
    v191 = 0;
    v192 = 0;
  }

  v82 = v194;
  v83 = [v194 endDate];

  sub_29E2BCB44();
  v181 = v61;
  if (v61)
  {
    v173 = [v61 integerValue];
  }

  else
  {
    v173 = 3;
  }

  v84 = v60;
  v85 = v59;
  if (v195)
  {
    v86 = v195;
    [v86 timeIntervalSinceReferenceDate];
    v87 = v202;
    sub_29E2BC934();

    v88 = 0;
  }

  else
  {
    v88 = 1;
    v87 = v202;
  }

  v78(v87, v88, 1, v11);
  v89 = v196;
  sub_29DEAA194(v198, v196);
  type metadata accessor for PregnancyDatesInputViewModel();
  v90 = swift_allocObject();
  v90[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__isValidPregnancySampleInput] = 0;
  v91 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__selectedInputMethod;
  v90[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__selectedInputMethod] = 4;
  v90[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedPastPregnancyStartDate] = 0;
  v90[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedPregnancyEndDate] = 0;
  v90[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedEstimatedDueDate] = 0;
  v90[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedLastMenstrualPeriodDate] = 0;
  v90[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedEmbryoTransferDate] = 0;
  v90[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedEmbryonicAgeDays] = 0;
  v90[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedGestationalAgeDate] = 0;
  v90[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedGestationalAge] = 0;
  sub_29E2BD014();
  v90[16] = v200 & 1;
  v90[17] = 1;
  sub_29E2BCA84();
  v92 = sub_29E2BCB34();
  v93 = v205;
  v94 = *(v205 + 8);
  v171 = v85;
  v187 = v205 + 8;
  v186 = v94;
  v94(v85, v11);
  v90[18] = v92 & 1;
  sub_29DEAA194(v89, &v90[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__unitTestTodayOverride]);
  sub_29DEAA194(v89, v84);
  v95 = *(v93 + 48);
  v96 = v95(v84, 1, v11);
  v199 = v95;
  v200 = v93 + 48;
  if (v96 == 1)
  {
    v97 = v93;
    v98 = v203;
    sub_29E2BCBA4();
    v99 = v95(v84, 1, v11);
    v100 = v188;
    if (v99 != 1)
    {
      sub_29E047A44(v84, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
    }
  }

  else
  {
    v97 = v93;
    v98 = v203;
    (*(v93 + 32))(v203, v84, v11);
    v100 = v188;
  }

  v90[v91] = v193;
  sub_29DEAA194(v47, v100);
  v101 = v199;
  if (v199(v100, 1, v11) == 1)
  {
    v102 = (v97 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v103 = v204;
    v104 = v98;
    v105 = v11;
    v106 = v11;
    v107 = *(v97 + 16);
    v107(v204, v104, v105);
    v108 = v106;
    if (v101(v100, 1, v106) != 1)
    {
      sub_29E047A44(v100, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
    }

    v109 = v201;
    v110 = v107;
    v11 = v108;
  }

  else
  {
    v103 = v204;
    (*(v97 + 32))(v204, v100, v11);
    v110 = *(v97 + 16);
    v102 = (v97 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v109 = v201;
  }

  v188 = v110;
  (v110)(&v90[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__pregnancyStartDate], v103, v11);
  (v110)(&v90[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__pastPregnancyStartDate], v103, v11);
  (v110)(&v90[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__pregnancyEndDate], v109, v11);
  v111 = sub_29DE9408C(0, &qword_2A1817D48);
  v112 = v171;
  v170 = v111;
  sub_29E2C3EC4();
  v113 = v11;
  v114 = *(v97 + 32);
  v205 = v97 + 32;
  v114(&v90[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__estimatedDueDate], v112, v113);
  (v110)(&v90[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__lastMenstrualPeriodDate], v103, v113);
  v115 = v175;
  sub_29E2BCE44();
  v116 = v179;
  v117 = v177;
  v118 = v180;
  (*(v179 + 104))(v177, *MEMORY[0x29EDB9CA8], v180);
  [objc_opt_self() maximumNumberOfWeeksPregnant];
  v119 = v174;
  sub_29E2BCE04();
  (*(v116 + 8))(v117, v118);
  (*(v176 + 8))(v115, v178);
  v120 = v199(v119, 1, v113);
  v172 = v114;
  if (v120 == 1)
  {
    sub_29E047A44(v119, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
    v121 = v197;
    v122 = v188;
    (v188)(v197, v203, v113);
    v123 = v183;
  }

  else
  {
    v124 = v165;
    v114(v165, v119, v113);
    v125 = v203;
    v126 = sub_29E2BCB24();
    v123 = v183;
    v127 = v114;
    if (v126)
    {
      v186(v124, v113);
      v128 = v166;
      v122 = v188;
      (v188)(v166, v125, v113);
    }

    else
    {
      v128 = v166;
      v114(v166, v124, v113);
      v122 = v188;
    }

    v121 = v197;
    v127(v197, v128, v113);
  }

  v164[1] = v102;
  v183 = v113;
  v122(&v90[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__gestationalAgeDate], v121, v113);
  if (!v191)
  {
    v129 = v167;
    sub_29E2BCEF4();
    sub_29E2BCED4();
    (*(v168 + 8))(v129, v169);
  }

  sub_29E2BF404();
  sub_29E2C3F14();

  v130 = sub_29E2BC5F4();
  v131 = *(v130 - 8);
  v132 = *(v131 + 48);
  if (v132(v123, 1, v130) == 1)
  {
    sub_29E047A44(v123, &qword_2A1817D40, MEMORY[0x29EDB9950]);
  }

  else
  {
    v133 = sub_29E2BC554();
    v135 = v134;
    (*(v131 + 8))(v123, v130);
    if ((v135 & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  v133 = 0;
LABEL_60:
  v136 = v191;
  *&v90[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel___gestationalAgeDays] = v133;
  v137 = v197;
  if (!v136)
  {
    v138 = v167;
    sub_29E2BCEF4();
    v192 = sub_29E2BCED4();
    (*(v168 + 8))(v138, v169);
  }

  v139 = v184;
  sub_29E2C3F14();

  if (v132(v139, 1, v130) == 1)
  {
    sub_29E047A44(v139, &qword_2A1817D40, MEMORY[0x29EDB9950]);
    v140 = v185;
    v141 = v183;
    v142 = &qword_2A181B000;
LABEL_65:
    v146 = v137;
    v143 = 0;
    goto LABEL_67;
  }

  v143 = sub_29E2BC514();
  v145 = v144;
  (*(v131 + 8))(v139, v130);
  v140 = v185;
  v141 = v183;
  v142 = &qword_2A181B000;
  if (v145)
  {
    goto LABEL_65;
  }

  v146 = v137;
LABEL_67:
  v147 = v182;
  v148 = v173;
  *&v90[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel___gestationalAgeWeeks] = v143;
  sub_29DEAA194(v202, v147);
  v149 = v199;
  if (v199(v147, 1, v141) == 1)
  {
    (v188)(v140, v203, v141);
    v150 = v149(v147, 1, v141);
    v151 = v172;
    if (v150 != 1)
    {
      sub_29E047A44(v147, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
    }
  }

  else
  {
    v151 = v172;
    v172(v140, v147, v141);
  }

  v151(&v90[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__embryoTransferDate], v140, v141);
  *&v90[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__embryonicAgeDays] = v148;
  v152 = *(&off_29F362848 + v193);
  v153 = *(v152 + 16);
  if (v153)
  {
    v154 = (v152 + 32);
    do
    {
      v155 = *v154++;
      sub_29E0EDE08(1, v155);
      --v153;
    }

    while (v153);
  }

  v156 = v142[16];
  if (v90[v156] == 1)
  {
    v90[v156] = 1;
    sub_29E0416A4(1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x2A1C7C4A8](KeyPath);
    v164[-2] = v90;
    LOBYTE(v164[-1]) = 1;
    v207 = v90;
    sub_29E047C30(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
    sub_29E2BCFD4();
  }

  v158 = v202;
  v159 = v181;
  if ((v90[18] & 1) == 0)
  {
    if (v90[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedPregnancyEndDate])
    {
      v90[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedPregnancyEndDate] = 1;
      sub_29E0421F0(1);
    }

    else
    {
      v160 = swift_getKeyPath();
      MEMORY[0x2A1C7C4A8](v160);
      v164[-2] = v90;
      LOBYTE(v164[-1]) = 1;
      v207 = v90;
      sub_29E047C30(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
      sub_29E2BCFD4();
      v158 = v202;
    }
  }

  sub_29E0ED658();

  v161 = MEMORY[0x29EDB9BC8];
  sub_29E047A44(v198, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
  v162 = v186;
  v186(v146, v141);
  v162(v204, v141);
  v162(v203, v141);
  sub_29E047A44(v196, &unk_2A1A62850, v161);
  sub_29E047A44(v158, &unk_2A1A62850, v161);
  v162(v201, v141);
  sub_29E047A44(v189, &unk_2A1A62850, v161);
  return v90;
}

void sub_29E0479F0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E2C4304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E047A44(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29E0479F0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E047B08(uint64_t a1, uint64_t a2)
{
  sub_29DEA8D5C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E047B6C(uint64_t a1)
{
  sub_29DEA8D5C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E047C30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E047CF0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__embryonicAgeDays);
  *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__embryonicAgeDays) = *(v0 + 24);
  return sub_29E043E64(v2);
}

uint64_t sub_29E047F10(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(v2 + 16);
  v4 = *a1;
  v5 = *(v3 + *a1);
  *(v3 + v4) = *(v2 + 24);
  return a2(v5);
}

uint64_t sub_29E04804C(void *a1, int a2)
{
  v26 = a2;
  v3 = MEMORY[0x29EDC9E88];
  sub_29E050A90(0, &qword_2A181B268, sub_29E050940, &type metadata for AddPregnancyFeedItemGenerator.FeedItemSubmissionTrigger.NoneCodingKeys, MEMORY[0x29EDC9E88]);
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v23 = &v19 - v5;
  sub_29E050A90(0, &qword_2A181B270, sub_29E050994, &type metadata for AddPregnancyFeedItemGenerator.FeedItemSubmissionTrigger.EligiblePPTCodingKeys, v3);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v19 - v7;
  sub_29E050A90(0, &qword_2A181B278, sub_29E0509E8, &type metadata for AddPregnancyFeedItemGenerator.FeedItemSubmissionTrigger.EligiblePregnancySampleCodingKeys, v3);
  v19 = *(v9 - 8);
  v20 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v19 - v10;
  sub_29E050A90(0, &unk_2A181B280, sub_29E050A3C, &type metadata for AddPregnancyFeedItemGenerator.FeedItemSubmissionTrigger.CodingKeys, v3);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v19 - v15;
  sub_29DE966D4(a1, a1[3]);
  sub_29E050A3C();
  sub_29E2C4AA4();
  if (v26)
  {
    if (v26 == 1)
    {
      v28 = 1;
      sub_29E050994();
      sub_29E2C4864();
      (*(v21 + 8))(v8, v22);
    }

    else
    {
      v29 = 2;
      sub_29E050940();
      v17 = v23;
      sub_29E2C4864();
      (*(v24 + 8))(v17, v25);
    }
  }

  else
  {
    v27 = 0;
    sub_29E0509E8();
    sub_29E2C4864();
    (*(v19 + 8))(v11, v20);
  }

  return (*(v14 + 8))(v16, v13);
}

unint64_t sub_29E048448()
{
  v1 = 0x656C626967696C65;
  if (*v0 != 1)
  {
    v1 = 1701736302;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_29E0484A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29E04FFF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29E0484D0(uint64_t a1)
{
  v2 = sub_29E050A3C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E04850C(uint64_t a1)
{
  v2 = sub_29E050A3C();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E048548(uint64_t a1)
{
  v2 = sub_29E050994();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E048584(uint64_t a1)
{
  v2 = sub_29E050994();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E0485C0(uint64_t a1)
{
  v2 = sub_29E0509E8();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E0485FC(uint64_t a1)
{
  v2 = sub_29E0509E8();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E048638(uint64_t a1)
{
  v2 = sub_29E050940();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E048674(uint64_t a1)
{
  v2 = sub_29E050940();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E0486B0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29E050118(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_29E0486F8()
{
  v1 = v0;
  sub_29E0510C0();
  v3 = *(v2 - 8);
  v29 = v2;
  v30 = v3;
  MEMORY[0x2A1C7C4A8](v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0512AC();
  v7 = *(v6 - 8);
  v31 = v6;
  v32 = v7;
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E051344();
  v11 = *(v10 - 8);
  v33 = v10;
  v34 = v11;
  MEMORY[0x2A1C7C4A8](v10);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29AddPregnancyFeedItemGenerator_cycleTrackingFeatureStatusManager);
  v15 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29AddPregnancyFeedItemGenerator_cycleTrackingFeatureStatusManager + 24);
  v16 = v14[4];
  sub_29DE966D4(v14, v15);
  v17 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29AddPregnancyFeedItemGenerator_context;
  v38 = sub_29DF94C2C(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29AddPregnancyFeedItemGenerator_context, v15, v16);
  v37 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29AddPregnancyFeedItemGenerator_pregnancyModelSubject);

  v36 = sub_29E04CF68(v1 + v17);
  v18 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29AddPregnancyFeedItemGenerator_contentStateManager);
  v19 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v21 = sub_29DEB3180(v19, v20, v18);

  v35 = v21;
  sub_29DF691DC();
  v28[1] = v22;
  sub_29E020A74();
  sub_29E050BB0();
  sub_29DEB3C9C(0);
  sub_29E04F7F0(&qword_2A1A5E728, 255, sub_29DF691DC);
  sub_29E04F7F0(&unk_2A1A5E590, 255, sub_29E020A74);
  sub_29E04F7F0(&qword_2A1A5E648, 255, sub_29E050BB0);
  sub_29E04F7F0(&qword_2A1A5E758, 255, sub_29DEB3C9C);
  sub_29E2C0EB4();
  sub_29E2BD5F4();
  v23 = v29;
  sub_29E2C0E94();
  (*(v30 + 8))(v5, v23);
  type metadata accessor for AddPregnancyFeedItemGenerator.Change(0);
  sub_29E04F7F0(&qword_2A1A5E878, 255, sub_29E0512AC);
  v24 = v31;
  sub_29E2C12A4();
  (*(v32 + 8))(v9, v24);
  sub_29E04F7F0(&qword_2A1A5EA20, 255, sub_29E051344);
  v25 = v33;
  v26 = sub_29E2C1274();
  (*(v34 + 8))(v13, v25);
  return v26;
}

uint64_t sub_29E048BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29E0513F4();
  v5 = *(a1 + v4[12]);
  v6 = *(a1 + v4[16]);
  v7 = v4[20];
  v8 = sub_29E2BFC94();
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = type metadata accessor for AddPregnancyFeedItemGenerator.Change(0);
  sub_29E051058(a1 + v7, a2 + v9[7], sub_29DEB3B00);
  *(a2 + v9[5]) = v5;
  *(a2 + v9[6]) = v6;
  v10 = v5;

  return sub_29E2BF404();
}

uint64_t sub_29E048C88()
{
  [*(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29AddPregnancyFeedItemGenerator_pregnancyModelProvider) unregisterObserver_];
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29AddPregnancyFeedItemGenerator_context;
  v2 = sub_29E2BD624();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  sub_29DE93B3C(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29AddPregnancyFeedItemGenerator_cycleTrackingFeatureStatusManager);

  return swift_deallocClassInstance();
}

uint64_t sub_29E048DB8()
{
  result = sub_29E2BD624();
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

char *sub_29E048E84(uint64_t a1)
{
  v3 = sub_29E2BD4C4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF1D934(0);
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v21 - v12;
  if ((sub_29E2BFC84() & 1) == 0)
  {
    return MEMORY[0x29EDCA190];
  }

  if ((sub_29E049204(a1) & 1) == 0)
  {
    if (sub_29E049C94(a1))
    {
      *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29AddPregnancyFeedItemGenerator_tileTrigger) = 1;
      goto LABEL_6;
    }

    *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29AddPregnancyFeedItemGenerator_tileTrigger) = 2;
    return MEMORY[0x29EDCA190];
  }

  *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29AddPregnancyFeedItemGenerator_tileTrigger) = 0;
LABEL_6:
  sub_29E04F910(0, &qword_2A1A5E030, sub_29DF1D934, MEMORY[0x29EDC9E90]);
  v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v15 = swift_allocObject();
  sub_29E04A7F0(a1, (v15 + v14));
  sub_29E051058(v15 + v14, v13, sub_29DF1D934);
  sub_29DFA34D4(v13, v10);
  if ((*(v4 + 48))(v10, 1, v3) == 1)
  {
    sub_29E050FD8(v10, sub_29DF1D934);
    v16 = MEMORY[0x29EDCA190];
  }

  else
  {
    v17 = *(v4 + 32);
    v17(v6, v10, v3);
    v16 = MEMORY[0x29EDCA190];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_29E143AD8(0, *(v16 + 2) + 1, 1, v16);
    }

    v19 = *(v16 + 2);
    v18 = *(v16 + 3);
    if (v19 >= v18 >> 1)
    {
      v16 = sub_29E143AD8(v18 > 1, v19 + 1, 1, v16);
    }

    *(v16 + 2) = v19 + 1;
    v17(&v16[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v19], v6, v3);
  }

  swift_setDeallocating();
  sub_29E050FD8(v15 + v14, sub_29DF1D934);
  swift_deallocClassInstance();
  return v16;
}

uint64_t sub_29E049204(uint64_t a1)
{
  v85 = *v1;
  v3 = sub_29E2C0514();
  v4 = *(v3 - 8);
  v87 = v3;
  v88 = v4;
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v82 - v8;
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v82 - v11;
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v82 - v14;
  sub_29DEB3B00(0);
  MEMORY[0x2A1C7C4A8](v16 - 8);
  v18 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_29E2BCBB4();
  v19 = *(v86 - 8);
  MEMORY[0x2A1C7C4A8](v86);
  v21 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v22);
  v24 = &v82 - v23;
  MEMORY[0x2A1C7C4A8](v25);
  v27 = &v82 - v26;
  v28 = *(a1 + *(type metadata accessor for AddPregnancyFeedItemGenerator.Change(0) + 20));
  if (!v28)
  {
    goto LABEL_13;
  }

  v29 = v28;
  if ([v29 state] != 1 || (v84 = objc_msgSend(v29, sel_sample)) == 0)
  {

LABEL_13:
    result = HKShowSensitiveLogItems();
    if (!result)
    {
      return result;
    }

    sub_29E2C04B4();
    v46 = sub_29E2C0504();
    v47 = sub_29E2C3A34();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v91 = v49;
      *v48 = 136315394;
      v89 = v85;
      swift_getMetatypeMetadata();
      v50 = sub_29E2C3464();
      v52 = sub_29DFAA104(v50, v51, &v91);

      *(v48 + 4) = v52;
      *(v48 + 12) = 2080;
      v89 = 0xD000000000000029;
      v90 = 0x800000029E2FAD60;
      v53 = sub_29E2C3464();
      v55 = sub_29DFAA104(v53, v54, &v91);

      *(v48 + 14) = v55;
      _os_log_impl(&dword_29DE74000, v46, v47, "[%s] %s not submitting feed item. Note: This feed item could still be submitted for other criteria", v48, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v49, -1, -1);
      MEMORY[0x29ED82140](v48, -1, -1);
    }

    (*(v88 + 8))(v6, v87);
    return 0;
  }

  result = [objc_opt_self() maximumNumberOfWeeksPregnant];
  if ((result * 7) >> 64 != (7 * result) >> 63)
  {
    __break(1u);
    goto LABEL_31;
  }

  if ((7 * result * 86400) >> 64 != (604800 * result) >> 63)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  v31 = [v84 startDate];
  sub_29E2BCB44();

  sub_29E2BCAB4();
  v32 = v24;
  v33 = v86;
  v83 = *(v19 + 8);
  v83(v32, v86);
  sub_29E2BCB54();
  if ((sub_29E2BCB24() & 1) == 0)
  {
    if (HKShowSensitiveLogItems())
    {
      sub_29E2C04B4();
      v56 = sub_29E2C0504();
      v57 = sub_29E2C3A34();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v91 = v82;
        *v58 = 136315394;
        v89 = v85;
        swift_getMetatypeMetadata();
        v59 = sub_29E2C3464();
        v61 = sub_29DFAA104(v59, v60, &v91);

        *(v58 + 4) = v61;
        *(v58 + 12) = 2080;
        v89 = 0xD00000000000002ALL;
        v90 = 0x800000029E2FAD90;
        v62 = sub_29E2C3464();
        v64 = sub_29DFAA104(v62, v63, &v91);

        *(v58 + 14) = v64;
        _os_log_impl(&dword_29DE74000, v56, v57, "[%s] Will not create a feed item, %s", v58, 0x16u);
        v65 = v82;
        swift_arrayDestroy();
        MEMORY[0x29ED82140](v65, -1, -1);
        MEMORY[0x29ED82140](v58, -1, -1);
      }

      (*(v88 + 8))(v9, v87);
      goto LABEL_23;
    }

LABEL_24:

    v68 = v83;
    v83(v21, v33);
    v68(v27, v33);
    return 0;
  }

  v34 = [v29 educationalStepsCompletedDate];
  if (v34)
  {
    v35 = v34;
    sub_29E2BCB44();

    v33 = v86;
    (*(v19 + 56))(v18, 0, 1, v86);
    sub_29E050FD8(v18, sub_29DEB3B00);
    if (HKShowSensitiveLogItems())
    {
      sub_29E2C04B4();
      v36 = sub_29E2C0504();
      v37 = sub_29E2C3A34();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v91 = v82;
        *v38 = 136315394;
        v39 = sub_29DFFF808();
        v41 = sub_29DFAA104(v39, v40, &v91);

        *(v38 + 4) = v41;
        *(v38 + 12) = 2080;
        v89 = 0xD000000000000031;
        v90 = 0x800000029E2FAE00;
        v42 = sub_29E2C3464();
        v44 = sub_29DFAA104(v42, v43, &v91);

        *(v38 + 14) = v44;
        _os_log_impl(&dword_29DE74000, v36, v37, "[%s] %s not submitting feed item. Note: This feed item could still be submitted for other criteria", v38, 0x16u);
        v45 = v82;
        swift_arrayDestroy();
        MEMORY[0x29ED82140](v45, -1, -1);
        MEMORY[0x29ED82140](v38, -1, -1);
      }

      (*(v88 + 8))(v15, v87);
LABEL_23:
      v66 = v86;
      v67 = v83;
      v83(v21, v86);
      v67(v27, v66);
      return 0;
    }

    goto LABEL_24;
  }

  (*(v19 + 56))(v18, 1, 1, v33);
  sub_29E050FD8(v18, sub_29DEB3B00);
  if (HKShowSensitiveLogItems())
  {
    sub_29E2C04B4();
    v69 = sub_29E2C0504();
    v70 = sub_29E2C3A34();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v91 = v82;
      *v71 = 136315394;
      v72 = sub_29DFFF808();
      v74 = sub_29DFAA104(v72, v73, &v91);

      *(v71 + 4) = v74;
      *(v71 + 12) = 2080;
      v89 = 0xD00000000000003BLL;
      v90 = 0x800000029E2FADC0;
      v75 = sub_29E2C3464();
      v77 = sub_29DFAA104(v75, v76, &v91);

      *(v71 + 14) = v77;
      _os_log_impl(&dword_29DE74000, v69, v70, "[%s] %s, submitting feed item", v71, 0x16u);
      v78 = v82;
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v78, -1, -1);
      MEMORY[0x29ED82140](v71, -1, -1);
    }

    (*(v88 + 8))(v12, v87);
    v79 = v86;
    v80 = v83;
    v83(v21, v86);
    v80(v27, v79);
    return 1;
  }

  else
  {

    v81 = v83;
    v83(v21, v33);
    v81(v27, v33);
    return 1;
  }
}

uint64_t sub_29E049C94(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_29E2C0514();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AddPregnancyFeedItemGenerator.Change(0);
  v10 = *(a1 + *(v9 + 20));
  if (v10)
  {
    v10 = [v10 state];
    if (v10 == 1)
    {
      return 0;
    }
  }

  v34 = v4;
  v11 = *(v9 + 24);
  v37 = a1;
  v12 = *(a1 + v11);
  v39 = MEMORY[0x29EDCA190];
  if (v12 >> 62)
  {
LABEL_33:
    v10 = sub_29E2C4484();
    v13 = v10;
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v38 = v8;
  v35 = v6;
  v36 = v5;
  if (v13)
  {
    v6 = 0;
    v5 = v12 & 0xC000000000000001;
    v14 = MEMORY[0x29EDCA190];
    v8 = 0x29EDBA000;
    do
    {
      v15 = v6;
      while (1)
      {
        if (v5)
        {
          v16 = MEMORY[0x29ED80D70](v15, v12);
        }

        else
        {
          if (v15 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v16 = *(v12 + 8 * v15 + 32);
        }

        v17 = v16;
        v6 = (v15 + 1);
        if (__OFADD__(v15, 1))
        {
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        ++v15;
        if (v6 == v13)
        {
          goto LABEL_21;
        }
      }

      MEMORY[0x29ED7FDC0]();
      if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_29E2C3644();
      }

      v10 = sub_29E2C3674();
      v14 = v39;
    }

    while (v6 != v13);
  }

  else
  {
    v14 = MEMORY[0x29EDCA190];
  }

LABEL_21:
  MEMORY[0x2A1C7C4A8](v10);
  v18 = v37;
  *(&v33 - 2) = v2;
  *(&v33 - 1) = v18;
  v19 = sub_29E13C490(sub_29E051038, (&v33 - 4), v14);
  v20 = v38;
  if (v19 >> 62)
  {
    v21 = sub_29E2C4484();
  }

  else
  {
    v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v21 > 0)
  {
    return 1;
  }

  result = HKShowSensitiveLogItems();
  if (result)
  {
    sub_29E2C04B4();
    v23 = sub_29E2C0504();
    v24 = sub_29E2C3A34();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v41[0] = v26;
      *v25 = 136315394;
      v39 = v34;
      swift_getMetatypeMetadata();
      v27 = sub_29E2C3464();
      v29 = sub_29DFAA104(v27, v28, v41);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      v39 = 0xD000000000000033;
      v40 = 0x800000029E2FAD20;
      v30 = sub_29E2C3464();
      v32 = sub_29DFAA104(v30, v31, v41);

      *(v25 + 14) = v32;
      _os_log_impl(&dword_29DE74000, v23, v24, "[%s] %s not submitting feed item. Note: This feed item could still be submitted for other criteria", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v26, -1, -1);
      MEMORY[0x29ED82140](v25, -1, -1);
    }

    v35[1](v20, v36);
    return 0;
  }

  return result;
}

uint64_t sub_29E04A0E0(void **a1, uint64_t a2, uint64_t a3)
{
  v34 = a3;
  sub_29DEB3B00(0);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2BCBB4();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v33 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v32 = &v31 - v11;
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v31 - v13;
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v31 - v16;
  v18 = *a1;
  sub_29DE9408C(0, &qword_2A1A619F0);
  v19 = [v18 sampleType];
  v20 = sub_29E2C40D4();

  if ((v20 & 1) == 0 || [v18 value] != 2)
  {
    goto LABEL_9;
  }

  v21 = [v18 endDate];
  sub_29E2BCB44();

  v22 = type metadata accessor for AddPregnancyFeedItemGenerator.Change(0);
  sub_29E051058(v34 + *(v22 + 28), v6, sub_29DEB3B00);
  v23 = *(v8 + 48);
  if (v23(v6, 1, v7) == 1)
  {
    sub_29E2BCA74();
    if (v23(v6, 1, v7) != 1)
    {
      sub_29E050FD8(v6, sub_29DEB3B00);
    }
  }

  else
  {
    (*(v8 + 32))(v14, v6, v7);
  }

  v24 = sub_29E2BCB14();
  v25 = *(v8 + 8);
  v25(v14, v7);
  v25(v17, v7);
  if (v24)
  {
    v26 = [v18 endDate];
    v27 = v32;
    sub_29E2BCB44();

    v28 = v33;
    sub_29E04A46C(v33);
    v29 = sub_29E2BCB14();
    v25(v28, v7);
    v25(v27, v7);
  }

  else
  {
LABEL_9:
    v29 = 0;
  }

  return v29 & 1;
}

uint64_t sub_29E04A46C@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = sub_29E2BCBB4();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2BCE84();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E2BCEA4();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEB3B00(0);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCE44();
  (*(v6 + 104))(v8, *MEMORY[0x29EDB9CB8], v5);
  sub_29E2BCBA4();
  sub_29E2BCE04();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
  if ((*(v2 + 48))(v15, 1, v1) != 1)
  {
    return (*(v2 + 32))(v18, v15, v1);
  }

  sub_29E050FD8(v15, sub_29DEB3B00);
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_29E2C4584();
  MEMORY[0x29ED7FCC0](91, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](1702125892, 0xE400000000000000);
  MEMORY[0x29ED7FCC0](0xD000000000000032, 0x800000029E2FABE0);
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

uint64_t sub_29E04A7F0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v191 = a1;
  v213 = a2;
  v176 = *v2;
  v189 = sub_29E2BD564();
  v187 = *(v189 - 8);
  MEMORY[0x2A1C7C4A8](v189);
  v188 = &v168 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_29E2BE194();
  v182 = *(v183 - 8);
  MEMORY[0x2A1C7C4A8](v183);
  v181 = &v168 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_29E2BD594();
  v185 = *(v186 - 8);
  MEMORY[0x2A1C7C4A8](v186);
  v184 = &v168 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BD2E4();
  v205 = *(v6 - 8);
  v206 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v194 = &v168 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v180 = &v168 - v9;
  v212 = sub_29E2BD234();
  v207 = *(v212 - 8);
  MEMORY[0x2A1C7C4A8](v212);
  v193 = &v168 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v179 = (&v168 - v12);
  v211 = sub_29E2C0514();
  v214 = *(v211 - 1);
  MEMORY[0x2A1C7C4A8](v211);
  v175 = &v168 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v168 - v15;
  MEMORY[0x2A1C7C4A8](v17);
  v19 = &v168 - v18;
  MEMORY[0x2A1C7C4A8](v20);
  v204 = &v168 - v21;
  sub_29DF1D934(0);
  MEMORY[0x2A1C7C4A8](v22 - 8);
  v192 = &v168 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v24);
  v26 = &v168 - v25;
  v27 = sub_29E2BD4C4();
  v215 = *(v27 - 8);
  MEMORY[0x2A1C7C4A8](v27);
  v177 = &v168 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v29);
  v31 = &v168 - v30;
  v32 = sub_29E2BE8B4();
  MEMORY[0x2A1C7C4A8](v32 - 8);
  v203 = &v168 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x29EDC9C68];
  sub_29E04F910(0, &unk_2A1A61600, MEMORY[0x29EDC17F0], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v35 - 8);
  v209 = &v168 - v36;
  v197 = sub_29E2BF064();
  MEMORY[0x2A1C7C4A8](v197);
  v199 = &v168 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E04F910(0, &qword_2A1A61610, MEMORY[0x29EDC17D8], v34);
  MEMORY[0x2A1C7C4A8](v38 - 8);
  v198 = &v168 - v39;
  sub_29E04F910(0, &qword_2A1A615E0, MEMORY[0x29EDC20F8], v34);
  MEMORY[0x2A1C7C4A8](v40 - 8);
  v196 = &v168 - v41;
  v42 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v42 - 8);
  *&v200 = &v168 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v202 = sub_29E2C3384();
  v201 = *(v202 - 8);
  MEMORY[0x2A1C7C4A8](v202);
  v195 = &v168 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v45);
  v47 = &v168 - v46;
  v208 = sub_29E2BE8C4();
  v48 = *(v208 - 8);
  MEMORY[0x2A1C7C4A8](v208);
  v210 = &v168 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v50);
  v52 = &v168 - v51;
  v53 = type metadata accessor for AddPregnancyHelpTileActionHandler.Model(0);
  MEMORY[0x2A1C7C4A8](v53);
  v57 = MEMORY[0x2A1C7C4A8](v54);
  if (*(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29AddPregnancyFeedItemGenerator_tileTrigger))
  {
    if (*(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29AddPregnancyFeedItemGenerator_tileTrigger) == 1)
    {
      v190 = v2;
      v178 = v48;
      v174 = v27;
      v58 = v56;
      sub_29DE9408C(0, &qword_2A1A61D50);
      sub_29E2C2F94();
      v59 = *(v53 + 20);
      v191 = v58;
      *(v58 + v59) = 1;
      sub_29E2C3314();
      v60 = v201;
      v61 = *(v201 + 16);
      v62 = v195;
      v63 = v202;
      v180 = (v201 + 16);
      v179 = v61;
      v61(v195, v47, v202);
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v64 = qword_2A1A67F80;
      v65 = qword_2A1A67F80;
      v172 = v64;
      v66 = v65;
      sub_29E2BCC74();
      v173 = v66;
      v170 = sub_29E2C3414();
      v169 = v67;
      v171 = *(v60 + 8);
      v171(v47, v63);
      v68 = sub_29E2BE974();
      (*(*(v68 - 8) + 56))(v196, 1, 1, v68);
      v69 = sub_29E2BDE24();
      (*(*(v69 - 8) + 56))(v198, 1, 1, v69);
      v217 = MEMORY[0x29EDCA190];
      sub_29E04F7F0(&unk_2A181A7D0, 255, MEMORY[0x29EDC2550]);
      sub_29DF1DC70(0);
      sub_29E04F7F0(&qword_2A181A7E0, 255, sub_29DF1DC70);
      sub_29E2C43F4();
      sub_29E2BEF64();
      swift_allocObject();
      v201 = sub_29E2BEF54();
      sub_29E2C3314();
      v70 = v179;
      v179(v62, v47, v63);
      sub_29E2BCC74();
      v199 = sub_29E2C3414();
      v198 = v71;
      v72 = v171;
      v171(v47, v63);
      sub_29E2C3314();
      v70(v62, v47, v63);
      sub_29E2BCC74();
      v197 = sub_29E2C3414();
      v196 = v73;
      v72(v47, v63);
      sub_29E2C3314();
      v70(v62, v47, v63);
      sub_29E2BCC74();
      sub_29E2C3414();
      v72(v47, v63);
      *&v202 = 0xD000000000000014;
      v74 = v209;
      sub_29E2BDE34();
      v75 = sub_29E2BDE44();
      (*(*(v75 - 8) + 56))(v74, 0, 1, v75);
      sub_29E2BE894();
      sub_29E04F910(0, &qword_2A181B2A0, MEMORY[0x29EDC1D90], MEMORY[0x29EDC9E90]);
      v76 = sub_29E2BE2A4();
      v77 = *(v76 - 8);
      v78 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v79 = swift_allocObject();
      v200 = xmmword_29E2CAB20;
      *(v79 + 16) = xmmword_29E2CAB20;
      (*(v77 + 104))(v79 + v78, *MEMORY[0x29EDC1D60], v76);
      sub_29E2BE884();
      v209 = type metadata accessor for AddPregnancyHelpTileContentConfigurationProvider();
      type metadata accessor for AddPregnancyHelpTileActionHandler(0);
      sub_29E2BC2E4();
      swift_allocObject();
      sub_29E2BC2D4();
      v80 = v204;
      sub_29E2C04B4();
      v203 = sub_29DF8FAA4();
      v201 = v81;

      v82 = *(v214 + 8);
      v214 += 8;
      v195 = v82;
      (v82)(v80, v211);
      v204 = "AddPregnancyHelpTileDataSource";
      v83 = v207;
      v84 = *(v207 + 104);
      v85 = v193;
      LODWORD(v199) = *MEMORY[0x29EDC3750];
      v198 = v84;
      v197 = v207 + 104;
      (v84)(v193);
      v196 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29AddPregnancyFeedItemGenerator_context;
      v86 = sub_29E2BD5D4();
      v88 = v205;
      v87 = v206;
      v89 = v194;
      (*(v205 + 104))(v194, *MEMORY[0x29EDC1B28], v206);
      sub_29E04F7F0(&qword_2A181B2A8, v90, type metadata accessor for AddPregnancyHelpTileContentConfigurationProvider);
      sub_29E04F7F0(&unk_2A181B2B0, 255, type metadata accessor for AddPregnancyHelpTileActionHandler);
      v91 = v192;
      v92 = v201;
      v93 = v203;
      sub_29E2BD2B4();

      sub_29DF1DD38(v93, v92);
      (*(v88 + 8))(v89, v87);
      v148 = v212;
      (*(v83 + 8))(v85, v212);
      v214 = *(v215 + 56);
      v149 = v174;
      (v214)(v91, 0, 1, v174);
      v211 = *(v215 + 32);
      v215 += 32;
      v150 = v177;
      v211(v177, v91, v149);
      sub_29E2BD5D4();
      sub_29E04F910(0, &qword_2A1A61CE0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
      v151 = (*(v83 + 80) + 32) & ~*(v83 + 80);
      v152 = swift_allocObject();
      *(v152 + 16) = v200;
      (v198)(v152 + v151, v199, v148);
      v153 = v181;
      sub_29E110B7C(v181);
      sub_29E2BE184();
      (*(v182 + 8))(v153, v183);
      (*(v187 + 104))(v188, *MEMORY[0x29EDC3898], v189);
      v154 = v184;
      sub_29E2BD574();
      sub_29E2BD584();
      (*(v185 + 8))(v154, v186);
      sub_29E2BD3A4();
      sub_29E2BD344();
      sub_29E2BD354();
      (*(v178 + 8))(v210, v208);
      sub_29E050FD8(v191, type metadata accessor for AddPregnancyHelpTileActionHandler.Model);
      v155 = v213;
      v211(v213, v150, v149);
      return (v214)(v155, 0, 1, v149);
    }

    else
    {
      v136 = *(v215 + 56);
      v137 = v213;

      return v136(v137, 1, 1, v27, v57);
    }
  }

  else
  {
    v210 = v26;
    v172 = v52;
    v173 = &v168 - v55;
    v194 = v31;
    v193 = v19;
    v190 = v2;
    v178 = v48;
    v94 = *(v191 + *(type metadata accessor for AddPregnancyFeedItemGenerator.Change(0) + 20));
    if (v94 && (v95 = [v94 sample]) != 0)
    {
      v96 = v95;
      v174 = v27;
      sub_29DE9408C(0, &qword_2A1A61D50);
      v192 = v96;
      v97 = v173;
      sub_29E2C2F94();
      v97[*(v53 + 20)] = 0;
      sub_29E2C3314();
      v98 = v201;
      v99 = *(v201 + 16);
      v100 = v195;
      v101 = v202;
      v191 = v201 + 16;
      v177 = v99;
      (v99)(v195, v47, v202);
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v102 = qword_2A1A67F80;
      v103 = qword_2A1A67F80;
      v170 = v102;
      v104 = v103;
      sub_29E2BCC74();
      v175 = v104;
      v171 = sub_29E2C3414();
      v169 = v105;
      v201 = *(v98 + 8);
      (v201)(v47, v101);
      v106 = sub_29E2BE974();
      (*(*(v106 - 8) + 56))(v196, 1, 1, v106);
      v107 = sub_29E2BDE24();
      (*(*(v107 - 8) + 56))(v198, 1, 1, v107);
      v217 = MEMORY[0x29EDCA190];
      sub_29E04F7F0(&unk_2A181A7D0, 255, MEMORY[0x29EDC2550]);
      sub_29DF1DC70(0);
      sub_29E04F7F0(&qword_2A181A7E0, 255, sub_29DF1DC70);
      sub_29E2C43F4();
      sub_29E2BEF64();
      swift_allocObject();
      v199 = sub_29E2BEF54();
      sub_29E2C3314();
      v108 = v177;
      (v177)(v100, v47, v101);
      sub_29E2BCC74();
      v198 = sub_29E2C3414();
      v197 = v109;
      v110 = v201;
      (v201)(v47, v101);
      sub_29E2C3314();
      v108(v100, v47, v101);
      sub_29E2BCC74();
      v196 = sub_29E2C3414();
      v171 = v111;
      v110(v47, v101);
      sub_29E2C3314();
      v108(v100, v47, v101);
      sub_29E2BCC74();
      *&v200 = sub_29E2C3414();
      v195 = v112;
      v110(v47, v101);
      v201 = 0xD000000000000014;
      v113 = v209;
      sub_29E2BDE34();
      v114 = sub_29E2BDE44();
      (*(*(v114 - 8) + 56))(v113, 0, 1, v114);
      sub_29E04F910(0, &qword_2A181B2A0, MEMORY[0x29EDC1D90], MEMORY[0x29EDC9E90]);
      v115 = sub_29E2BE2A4();
      v116 = *(v115 - 8);
      v117 = (*(v116 + 80) + 32) & ~*(v116 + 80);
      v118 = swift_allocObject();
      v202 = xmmword_29E2CAB20;
      *(v118 + 16) = xmmword_29E2CAB20;
      v119 = *MEMORY[0x29EDC1D60];
      v120 = *(v116 + 104);
      v120(v118 + v117, v119, v115);
      sub_29E2BE894();
      v121 = swift_allocObject();
      *(v121 + 16) = v202;
      v120(v121 + v117, v119, v115);
      sub_29E2BE884();
      v209 = type metadata accessor for AddPregnancyHelpTileContentConfigurationProvider();
      v203 = type metadata accessor for AddPregnancyHelpTileActionHandler(0);
      sub_29E2BC2E4();
      swift_allocObject();
      sub_29E2BC2D4();
      v122 = v204;
      sub_29E2C04B4();
      v123 = sub_29DF8FAA4();
      *&v200 = v124;

      v125 = *(v214 + 8);
      v214 += 8;
      v195 = v125;
      (v125)(v122, v211);
      v204 = "AddPregnancyHelpTileDataSource";
      v126 = v207;
      v127 = *(v207 + 104);
      v128 = v179;
      LODWORD(v199) = *MEMORY[0x29EDC3750];
      v198 = v127;
      v197 = v207 + 104;
      (v127)(v179);
      v196 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29AddPregnancyFeedItemGenerator_context;
      v129 = sub_29E2BD5D4();
      v131 = v205;
      v130 = v206;
      v132 = v180;
      (*(v205 + 104))(v180, *MEMORY[0x29EDC1B28], v206);
      sub_29E04F7F0(&qword_2A181B2A8, v133, type metadata accessor for AddPregnancyHelpTileContentConfigurationProvider);
      sub_29E04F7F0(&unk_2A181B2B0, 255, type metadata accessor for AddPregnancyHelpTileActionHandler);
      v134 = v200;
      v135 = v210;
      sub_29E2BD2B4();

      sub_29DF1DD38(v123, v134);
      (*(v131 + 8))(v132, v130);
      v157 = v212;
      (*(v126 + 8))(v128, v212);
      v214 = *(v215 + 56);
      v158 = v135;
      v159 = v135;
      v160 = v174;
      (v214)(v158, 0, 1, v174);
      v161 = *(v215 + 32);
      v215 += 32;
      v162 = v194;
      v161(v194, v159, v160);
      sub_29E2BD5D4();
      sub_29E04F910(0, &qword_2A1A61CE0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
      v163 = (*(v126 + 80) + 32) & ~*(v126 + 80);
      v164 = swift_allocObject();
      *(v164 + 16) = v202;
      (v198)(v164 + v163, v199, v157);
      v165 = v181;
      sub_29E110B7C(v181);
      sub_29E2BE184();
      (*(v182 + 8))(v165, v183);
      (*(v187 + 104))(v188, *MEMORY[0x29EDC3898], v189);
      v166 = v184;
      sub_29E2BD574();
      sub_29E2BD584();
      (*(v185 + 8))(v166, v186);
      sub_29E2BD3A4();
      sub_29E2BD354();

      (*(v178 + 8))(v172, v208);
      sub_29E050FD8(v173, type metadata accessor for AddPregnancyHelpTileActionHandler.Model);
      v167 = v213;
      v161(v213, v162, v160);
      return (v214)(v167, 0, 1, v160);
    }

    else
    {
      if (HKShowSensitiveLogItems())
      {
        v138 = v16;
        sub_29E2C04B4();
        v139 = sub_29E2C0504();
        v140 = sub_29E2C3A34();
        if (os_log_type_enabled(v139, v140))
        {
          v141 = swift_slowAlloc();
          v142 = v27;
          v143 = swift_slowAlloc();
          v216 = v143;
          *v141 = 136315138;
          v217 = v176;
          swift_getMetatypeMetadata();
          v144 = sub_29E2C3464();
          v146 = sub_29DFAA104(v144, v145, &v216);

          *(v141 + 4) = v146;
          _os_log_impl(&dword_29DE74000, v139, v140, "[%s] We don't have a sample, not submitting feed item", v141, 0xCu);
          sub_29DE93B3C(v143);
          v147 = v143;
          v27 = v142;
          MEMORY[0x29ED82140](v147, -1, -1);
          MEMORY[0x29ED82140](v141, -1, -1);
        }

        (*(v214 + 8))(v138, v211);
      }

      return (*(v215 + 56))(v213, 1, 1, v27);
    }
  }
}

uint64_t sub_29E04CF68(uint64_t a1)
{
  v2 = v1;
  v39 = sub_29E2BD624();
  v4 = *(v39 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v39);
  v6 = sub_29E2C3974();
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E050CAC();
  v46 = v8;
  v44 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v41 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E050E60();
  v47 = *(v10 - 8);
  v48 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v45 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E2BCBB4();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_opt_self();
  sub_29E04A46C(v15);
  v17 = sub_29E2BCB04();
  (*(v13 + 8))(v15, v12);
  v18 = [v16 predicateForSamplesWithStartDate:v17 endDate:0 options:0];

  v19 = [objc_allocWithZone(MEMORY[0x29EDBAD40]) initWithSampleType:*(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29AddPregnancyFeedItemGenerator_pregnancyTestResultType) predicate:v18];
  if (sub_29E2BD5B4())
  {
    sub_29E2BD5A4();
    sub_29DE966D4(v49, v49[3]);
    v20 = sub_29E2BD4E4();
    sub_29DE99B54();
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_29E2CE220;
    *(v21 + 32) = v19;
    v22 = v19;
    v23 = v40;
    sub_29E2C39A4();

    sub_29DE93B3C(v49);
    v24 = v39;
    (*(v4 + 16))(&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v39);
    v25 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = v2;
    (*(v4 + 32))(v26 + v25, &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
    *(v26 + ((v5 + v25 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_29E050F18;
    *(v27 + 24) = v26;
    v28 = v22;

    sub_29E2C1004();
    sub_29E050BB0();
    sub_29E04F7F0(&unk_2A1A5E230, 255, MEMORY[0x29EDC2E68]);
    sub_29E04F7F0(&qword_2A1A5E648, 255, sub_29E050BB0);
    v29 = v18;
    v30 = v41;
    v31 = v43;
    sub_29E2C1314();

    (*(v42 + 8))(v23, v31);
    v32 = sub_29E04F7F0(&qword_2A1A5E780, 255, sub_29E050CAC);
    v34 = v45;
    v33 = v46;
    sub_29E2C1254();
    (*(v44 + 8))(v30, v33);
    v49[0] = v33;
    v49[1] = v32;
    swift_getOpaqueTypeConformance2();
    v35 = v48;
    v36 = sub_29E2C1274();

    (*(v47 + 8))(v34, v35);
  }

  else
  {
    v36 = sub_29E04D688(a1, v19);
  }

  return v36;
}

uint64_t sub_29E04D5E0(uint64_t a1, uint64_t a2, void *a3)
{
  sub_29E04D688(a2, a3);
  sub_29E050BB0();
  sub_29E04F7F0(&qword_2A1A5E648, 255, sub_29E050BB0);
  v3 = sub_29E2C1274();

  return v3;
}

uint64_t sub_29E04D688(uint64_t a1, void *a2)
{
  v3 = sub_29E2BD564();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2BE194();
  v34 = *(v5 - 8);
  v35 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2BD594();
  v37 = *(v8 - 8);
  v38 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v32 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E2C3964();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E050AF8();
  v31 = v14;
  v33 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BD5A4();
  sub_29DE966D4(v43, v43[3]);
  v17 = sub_29E2BD4E4();
  sub_29DE99B54();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_29E2CE220;
  *(v18 + 32) = a2;
  v19 = a2;
  sub_29E2C3984();

  sub_29DE93B3C(v43);
  v20 = sub_29E04F7F0(&qword_2A1A5E240, 255, MEMORY[0x29EDC2E58]);
  sub_29E2C1254();
  (*(v11 + 8))(v13, v10);
  sub_29E2BD614();
  sub_29E2BD5D4();
  sub_29E04F910(0, &qword_2A1A61CE0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v21 = sub_29E2BD234();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_29E2CAB20;
  (*(v22 + 104))(v24 + v23, *MEMORY[0x29EDC3750], v21);
  sub_29E110B7C(v7);
  sub_29E2BE184();
  (*(v34 + 8))(v7, v35);
  (*(v39 + 104))(v36, *MEMORY[0x29EDC3898], v40);
  v25 = v32;
  sub_29E2BD574();
  v41 = v10;
  v42 = v20;
  swift_getOpaqueTypeConformance2();
  v26 = v31;
  v27 = sub_29E2C1264();
  (*(v37 + 8))(v25, v38);
  sub_29DE93B3C(v43);
  (*(v33 + 8))(v16, v26);
  v43[0] = v27;
  sub_29E050BB0();
  sub_29E04F7F0(&qword_2A1A5E648, 255, sub_29E050BB0);
  v28 = sub_29E2C1274();

  return v28;
}

uint64_t sub_29E04DCAC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29AddPregnancyFeedItemGenerator_context;
  v5 = sub_29E2BD624();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29E04DD44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29E0486F8();
  *a1 = result;
  return result;
}

uint64_t sub_29E04DD70(uint64_t a1)
{
  v2 = type metadata accessor for AddPregnancyFeedItemGenerator(0);
  v3 = sub_29E04F7F0(&qword_2A1A60830, 255, type metadata accessor for AddPregnancyFeedItemGenerator);

  return MEMORY[0x2A1C65578](a1, v2, v3);
}

uint64_t sub_29E04DE00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C65560](a1, WitnessTable);
}

uint64_t sub_29E04DE54@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v14 = sub_29E2BD564();
  v1 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2BE194();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = sub_29E2BD5D4();
  sub_29E04F910(0, &qword_2A1A61CE0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v8 = sub_29E2BD234();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_29E2CAB20;
  (*(v9 + 104))(v11 + v10, *MEMORY[0x29EDC3750], v8);
  sub_29E110B7C(v7);
  sub_29E2BE184();
  (*(v5 + 8))(v7, v4);
  (*(v1 + 104))(v3, *MEMORY[0x29EDC3898], v14);
  return sub_29E2BD574();
}

uint64_t sub_29E04E14C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a3;
  v31 = a4;
  v28 = a2;
  v29 = a5;
  v6 = MEMORY[0x29EDC2968];
  v7 = MEMORY[0x29EDC9C68];
  sub_29E04F910(0, &qword_2A181B1F0, MEMORY[0x29EDC2968], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v28 - v9;
  sub_29E04F910(0, &qword_2A181B1F8, MEMORY[0x29EDC20D0], MEMORY[0x29EDC1E70]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v28 - v14;
  sub_29E04FB3C();
  v17 = v16;
  v18 = *(v16 - 8);
  v19 = MEMORY[0x2A1C7C4A8](v16);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a1, v12, v19);
  sub_29E051D58(v28, v10, &qword_2A181B1F0, v6, v7);
  sub_29E04F7F0(&unk_2A181B200, 255, sub_29E04FB3C);
  sub_29E2BE144();
  sub_29E04F7F0(&qword_2A181B198, 255, sub_29E04FB3C);
  v22 = v29;
  sub_29E2C22A4();
  (*(v18 + 8))(v21, v17);
  sub_29E2BE844();
  sub_29E04F7F0(&qword_2A181ADF8, 255, MEMORY[0x29EDC2090]);
  v23 = sub_29E2C1074();
  sub_29E051BAC(0, &qword_2A181B178, sub_29E04FA84, sub_29E04FBD4, MEMORY[0x29EDBC558]);
  v25 = (v22 + *(v24 + 36));
  v26 = v31;
  *v25 = v23;
  v25[1] = v26;
}

uint64_t sub_29E04E4CC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_29E04F910(0, &qword_2A181ADF0, MEMORY[0x29EDC1D90], MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for CycleLogCellBackgroundView(0);
  v3 = (a1 + *(v2 + 20));
  sub_29E2BE914();
  sub_29E04F7F0(&unk_2A181B1E0, 255, MEMORY[0x29EDC20E0]);

  *v3 = sub_29E2C1654();
  v3[1] = v4;
  v5 = (a1 + *(v2 + 24));
  sub_29E2BE844();
  sub_29E04F7F0(&qword_2A181ADF8, 255, MEMORY[0x29EDC2090]);

  result = sub_29E2C1654();
  *v5 = result;
  v5[1] = v7;
  return result;
}

uint64_t sub_29E04E640()
{
  sub_29DE8EDC0(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_29E04E700()
{
  type metadata accessor for AddPregnancyHelpTileContentConfigurationProvider();
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t sub_29E04E744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v22 = a5;
  sub_29E04F9C0();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E04FD98();
  v15 = v14;
  v21 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  v26 = a4;
  v27 = a2;
  v28 = a3;
  sub_29E051BAC(0, &qword_2A181B178, sub_29E04FA84, sub_29E04FBD4, MEMORY[0x29EDBC558]);
  sub_29E04FC3C();
  sub_29E2C1DE4();
  v23 = a2;
  v24 = a3;
  type metadata accessor for CycleLogCellBackgroundView(0);
  sub_29E04F7F0(&qword_2A181ADE0, 255, type metadata accessor for CycleLogCellBackgroundView);
  sub_29E2C1DC4();
  (*(v11 + 8))(v13, v10);
  sub_29E2C1FC4();
  sub_29E2BD094();
  v18 = v22;
  v22[3] = v15;
  v18[4] = sub_29E04F7F0(&unk_2A181B1D0, 255, sub_29E04FD98);
  sub_29DEBB7E8(v18);
  sub_29E2C1DD4();
  return (*(v21 + 8))(v17, v15);
}

uint64_t sub_29E04EA3C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29E2C06E4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_29E04EAB4(uint64_t a1)
{
  v2 = type metadata accessor for AddPregnancyHelpTileContentConfigurationProvider();

  return MEMORY[0x2A1C628B8](a1, v2);
}

uint64_t sub_29E04EB00@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_29E2C1A64();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x29EDC1D90];
  v9 = MEMORY[0x29EDBC388];
  sub_29E04F910(0, &qword_2A181ADF0, MEMORY[0x29EDC1D90], MEMORY[0x29EDBC388]);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v16 - v11;
  sub_29E051D58(v2, &v16 - v11, &qword_2A181ADF0, v8, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_29E2BE2A4();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    sub_29E2C3A24();
    v15 = sub_29E2C1F84();
    sub_29E2C03B4();

    sub_29E2C1A54();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_29E04ED68(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_29E04EDC8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_29E04EE5C;
}

void sub_29E04EE5C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_29E04EEE0@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v41 = sub_29E2BF004();
  v37 = *(v41 - 8);
  MEMORY[0x2A1C7C4A8](v41);
  v2 = &v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E051E64(0, &qword_2A181B340, MEMORY[0x29EDBC7E8]);
  v43 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v44 = &v36 - v4;
  v5 = MEMORY[0x29EDC24E0];
  sub_29E051BAC(0, &qword_2A181B358, sub_29DFCFBA8, MEMORY[0x29EDC24E0], MEMORY[0x29EDBC7E8]);
  v38 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v36 - v7;
  sub_29E051BAC(0, &qword_2A181B348, sub_29DFCFBA8, v5, MEMORY[0x29EDBC7F0]);
  v42 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v40 = &v36 - v10;
  v11 = sub_29E2C0674();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DFCFBA8();
  v39 = v15;
  v36 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29E2BE2A4();
  v19 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E04EB00(v21);
  v22 = (*(v19 + 88))(v21, v18);
  if (v22 == *MEMORY[0x29EDC1D20] || v22 == *MEMORY[0x29EDC1D68])
  {
    type metadata accessor for CycleLogCellBackgroundView(0);

    sub_29E2BEFF4();
    v24 = v37;
    v25 = v41;
    (*(v37 + 16))(v8, v2, v41);
    swift_storeEnumTagMultiPayload();
    v46 = MEMORY[0x29EDBCA98];
    v47 = MEMORY[0x29EDBCA90];
    swift_getOpaqueTypeConformance2();
    sub_29E04F7F0(&qword_2A181B368, 255, MEMORY[0x29EDC24E0]);
    v26 = v40;
    sub_29E2C1C74();
    sub_29DE8128C(v26, v44);
    swift_storeEnumTagMultiPayload();
    sub_29E051C30();
    sub_29E2C1C74();
    sub_29DE81334(v26);
    return (*(v24 + 8))(v2, v25);
  }

  else if (v22 == *MEMORY[0x29EDC1D80] || v22 == *MEMORY[0x29EDC1D60])
  {
    type metadata accessor for CycleLogCellBackgroundView(0);
    sub_29E2BE824();
    v27 = sub_29E2C0644();
    (*(v12 + 8))(v14, v11);
    v28 = objc_opt_self();
    v29 = &selRef_tertiarySystemFillColor;
    if ((v27 & 1) == 0)
    {
      v29 = &selRef_hkmc_cycleLogCellBackgroundColor;
    }

    v30 = [v28 *v29];
    v46 = sub_29E2C2654();
    v31 = MEMORY[0x29EDBCA98];
    v32 = MEMORY[0x29EDBCA90];
    sub_29E2C22B4();

    v33 = v36;
    v34 = v39;
    (*(v36 + 16))(v8, v17, v39);
    swift_storeEnumTagMultiPayload();
    v46 = v31;
    v47 = v32;
    swift_getOpaqueTypeConformance2();
    sub_29E04F7F0(&qword_2A181B368, 255, MEMORY[0x29EDC24E0]);
    v35 = v40;
    sub_29E2C1C74();
    sub_29DE8128C(v35, v44);
    swift_storeEnumTagMultiPayload();
    sub_29E051C30();
    sub_29E2C1C74();
    sub_29DE81334(v35);
    return (*(v33 + 8))(v17, v34);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_29E051C30();
    sub_29E2C1C74();
    return (*(v19 + 8))(v21, v18);
  }
}

unint64_t sub_29E04F674()
{
  result = qword_2A181B158;
  if (!qword_2A181B158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181B158);
  }

  return result;
}

uint64_t sub_29E04F7F0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_29E04F910(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E04F9C0()
{
  if (!qword_2A181B170)
  {
    sub_29E051BAC(255, &qword_2A181B178, sub_29E04FA84, sub_29E04FBD4, MEMORY[0x29EDBC558]);
    sub_29E04FC3C();
    v0 = sub_29E2C1DF4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181B170);
    }
  }
}

void sub_29E04FA84()
{
  if (!qword_2A181B180)
  {
    sub_29E04FB3C();
    sub_29E04F7F0(&qword_2A181B198, 255, sub_29E04FB3C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A181B180);
    }
  }
}

void sub_29E04FB3C()
{
  if (!qword_2A181B188)
  {
    type metadata accessor for AddPregnancyHelpTileActionHandler(255);
    sub_29E04F7F0(&qword_2A181B190, 255, type metadata accessor for AddPregnancyHelpTileActionHandler);
    v0 = sub_29E2BE994();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181B188);
    }
  }
}

unint64_t sub_29E04FC3C()
{
  result = qword_2A181B1B0;
  if (!qword_2A181B1B0)
  {
    sub_29E051BAC(255, &qword_2A181B178, sub_29E04FA84, sub_29E04FBD4, MEMORY[0x29EDBC558]);
    sub_29E04FB3C();
    sub_29E04F7F0(&qword_2A181B198, 255, sub_29E04FB3C);
    swift_getOpaqueTypeConformance2();
    sub_29E04F7F0(&qword_2A181B1B8, 255, sub_29E04FBD4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181B1B0);
  }

  return result;
}

void sub_29E04FD98()
{
  if (!qword_2A181B1C0)
  {
    sub_29E051BAC(255, &qword_2A181B178, sub_29E04FA84, sub_29E04FBD4, MEMORY[0x29EDBC558]);
    type metadata accessor for CycleLogCellBackgroundView(255);
    sub_29E04FC3C();
    sub_29E04F7F0(&qword_2A181ADE0, 255, type metadata accessor for CycleLogCellBackgroundView);
    v0 = sub_29E2C1DF4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181B1C0);
    }
  }
}

uint64_t sub_29E04FED0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E04FF28(uint64_t a1)
{
  v2 = sub_29E2BE2A4();
  v3 = MEMORY[0x2A1C7C4A8](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_29E2C1854();
}

uint64_t sub_29E04FFF0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000017 && 0x800000029E2FAE40 == a2 || (sub_29E2C4914() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C626967696C65 && a2 == 0xEB00000000545050 || (sub_29E2C4914() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701736302 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_29E2C4914();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_29E050118(void *a1)
{
  v2 = MEMORY[0x29EDC9E80];
  sub_29E050A90(0, &qword_2A181B218, sub_29E050940, &type metadata for AddPregnancyFeedItemGenerator.FeedItemSubmissionTrigger.NoneCodingKeys, MEMORY[0x29EDC9E80]);
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v42 = &v33 - v4;
  sub_29E050A90(0, &qword_2A181B228, sub_29E050994, &type metadata for AddPregnancyFeedItemGenerator.FeedItemSubmissionTrigger.EligiblePPTCodingKeys, v2);
  v39 = v5;
  v36 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v41 = &v33 - v6;
  sub_29E050A90(0, &qword_2A181B238, sub_29E0509E8, &type metadata for AddPregnancyFeedItemGenerator.FeedItemSubmissionTrigger.EligiblePregnancySampleCodingKeys, v2);
  v8 = v7;
  v40 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v33 - v9;
  sub_29E050A90(0, &qword_2A181B248, sub_29E050A3C, &type metadata for AddPregnancyFeedItemGenerator.FeedItemSubmissionTrigger.CodingKeys, v2);
  v12 = v11;
  v43 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v33 - v13;
  sub_29DE966D4(a1, a1[3]);
  sub_29E050A3C();
  v15 = v44;
  sub_29E2C4A94();
  if (v15)
  {
    goto LABEL_14;
  }

  v34 = v8;
  v35 = v14;
  v17 = v40;
  v16 = v41;
  v18 = v42;
  v44 = a1;
  v19 = sub_29E2C4854();
  v20 = *(v19 + 16);
  if (!v20 || ((v21 = *(v19 + 32), v20 == 1) ? (v22 = v21 == 3) : (v22 = 1), v22))
  {
    v23 = sub_29E2C45E4();
    swift_allocError();
    v24 = v12;
    v26 = v25;
    sub_29DF6BDD8();
    *v26 = &type metadata for AddPregnancyFeedItemGenerator.FeedItemSubmissionTrigger;
    v27 = v35;
    sub_29E2C4804();
    sub_29E2C45C4();
    (*(*(v23 - 8) + 104))(v26, *MEMORY[0x29EDC9DB8], v23);
    swift_willThrow();
    (*(v43 + 8))(v27, v24);
    swift_unknownObjectRelease();
    a1 = v44;
LABEL_14:
    sub_29DE93B3C(a1);
    return 0;
  }

  v45 = *(v19 + 32);
  if (v21)
  {
    v28 = v43;
    if (v21 == 1)
    {
      v47 = 1;
      sub_29E050994();
      v29 = v35;
      sub_29E2C47F4();
      (*(v36 + 8))(v16, v39);
    }

    else
    {
      v48 = 2;
      sub_29E050940();
      v29 = v35;
      sub_29E2C47F4();
      (*(v37 + 8))(v18, v38);
    }

    (*(v28 + 8))(v29, v12);
  }

  else
  {
    v46 = 0;
    sub_29E0509E8();
    v30 = v35;
    sub_29E2C47F4();
    v31 = v43;
    (*(v17 + 8))(v10, v34);
    (*(v31 + 8))(v30, v12);
  }

  swift_unknownObjectRelease();
  sub_29DE93B3C(v44);
  return v45;
}

void *sub_29E0506EC()
{
  v0 = sub_29E2C0AB4();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2C0B44();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x29EDC7848], v0, v6);
  sub_29E2C0AE4();
  v9 = [objc_opt_self() systemBackgroundColor];
  sub_29E2C0B14();
  sub_29DE9408C(0, &qword_2A1819BB0);
  v10 = sub_29E2C3F34();
  [v10 contentInsets];
  [v10 setContentInsets_];
  [v10 contentInsets];
  [v10 setContentInsets_];
  [v10 contentInsets];
  [v10 setContentInsets_];
  [v10 contentInsets];
  [v10 setContentInsets_];
  [v10 setContentInsetsReference_];
  (*(v5 + 8))(v8, v4);
  return v10;
}

unint64_t sub_29E050940()
{
  result = qword_2A181B220;
  if (!qword_2A181B220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181B220);
  }

  return result;
}

unint64_t sub_29E050994()
{
  result = qword_2A181B230;
  if (!qword_2A181B230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181B230);
  }

  return result;
}

unint64_t sub_29E0509E8()
{
  result = qword_2A181B240;
  if (!qword_2A181B240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181B240);
  }

  return result;
}

unint64_t sub_29E050A3C()
{
  result = qword_2A181B250;
  if (!qword_2A181B250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181B250);
  }

  return result;
}

void sub_29E050A90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_29E050AF8()
{
  if (!qword_2A1A5E3A8)
  {
    sub_29E2C3964();
    sub_29E04F7F0(&qword_2A1A5E240, 255, MEMORY[0x29EDC2E58]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1A5E3A8);
    }
  }
}

void sub_29E050BB0()
{
  if (!qword_2A1A5E640)
  {
    sub_29E050C44(255, &unk_2A1A5E308, &qword_2A1A61D20, 0x29EDBAD60, MEMORY[0x29EDC9A40]);
    v0 = sub_29E2C1024();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E640);
    }
  }
}

void sub_29E050C44(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29DE9408C(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29E050CAC()
{
  if (!qword_2A1A5E770)
  {
    sub_29E050DA0();
    sub_29E2C3974();
    sub_29E04F7F0(&qword_2A1A5EAF8, 255, sub_29E050DA0);
    sub_29E04F7F0(&unk_2A1A5E230, 255, MEMORY[0x29EDC2E68]);
    v0 = sub_29E2C0F94();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E770);
    }
  }
}

void sub_29E050DA0()
{
  if (!qword_2A1A5EAE8)
  {
    sub_29E050BB0();
    sub_29DE96670();
    sub_29E04F7F0(&qword_2A1A5E648, 255, sub_29E050BB0);
    v0 = sub_29E2C0EF4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5EAE8);
    }
  }
}

void sub_29E050E60()
{
  if (!qword_2A1A5E3B8)
  {
    sub_29E050CAC();
    sub_29E04F7F0(&qword_2A1A5E780, 255, sub_29E050CAC);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1A5E3B8);
    }
  }
}

uint64_t sub_29E050F18()
{
  v1 = *(sub_29E2BD624() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29E04D5E0(v3, v0 + v2, v4);
}

uint64_t sub_29E050FA8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_29E050FD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E051058(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29E0510C0()
{
  if (!qword_2A1A5EBD8)
  {
    sub_29DF691DC();
    sub_29E020A74();
    sub_29E050BB0();
    sub_29DEB3C9C(255);
    sub_29E04F7F0(&qword_2A1A5E728, 255, sub_29DF691DC);
    sub_29E04F7F0(&unk_2A1A5E590, 255, sub_29E020A74);
    sub_29E04F7F0(&qword_2A1A5E648, 255, sub_29E050BB0);
    sub_29E04F7F0(&qword_2A1A5E758, 255, sub_29DEB3C9C);
    v0 = sub_29E2C0EA4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5EBD8);
    }
  }
}

void sub_29E051248(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E2C1024();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E0512AC()
{
  if (!qword_2A1A5E870)
  {
    sub_29E0510C0();
    sub_29E04F7F0(&qword_2A1A5EBE8, 255, sub_29E0510C0);
    v0 = sub_29E2C0F64();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E870);
    }
  }
}

void sub_29E051344()
{
  if (!qword_2A1A5EA10)
  {
    sub_29E0512AC();
    type metadata accessor for AddPregnancyFeedItemGenerator.Change(255);
    sub_29E04F7F0(&qword_2A1A5E878, 255, sub_29E0512AC);
    v0 = sub_29E2C0F24();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5EA10);
    }
  }
}

void sub_29E0513F4()
{
  if (!qword_2A1A61598)
  {
    sub_29E2BFC94();
    sub_29E050C44(255, &qword_2A1A5E180, &unk_2A1A5E190, 0x29EDBAC30, MEMORY[0x29EDC9C68]);
    sub_29E050C44(255, &unk_2A1A5E308, &qword_2A1A61D20, 0x29EDBAD60, MEMORY[0x29EDC9A40]);
    sub_29DEB3B00(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_2A1A61598);
    }
  }
}

void sub_29E051548()
{
  sub_29E04F910(319, &unk_2A181B2C0, MEMORY[0x29EDC1D90], MEMORY[0x29EDBC390]);
  if (v0 <= 0x3F)
  {
    sub_29E051614();
    if (v1 <= 0x3F)
    {
      sub_29E0516AC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_29E051614()
{
  if (!qword_2A181B2E0)
  {
    sub_29E2BE914();
    sub_29E04F7F0(&unk_2A181B1E0, 255, MEMORY[0x29EDC20E0]);
    v0 = sub_29E2C1684();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181B2E0);
    }
  }
}

void sub_29E0516AC()
{
  if (!qword_2A181B2E8)
  {
    sub_29E2BE844();
    sub_29E04F7F0(&qword_2A181ADF8, 255, MEMORY[0x29EDC2090]);
    v0 = sub_29E2C1684();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181B2E8);
    }
  }
}

void sub_29E05176C()
{
  sub_29E2BFC94();
  if (v0 <= 0x3F)
  {
    sub_29E050C44(319, &qword_2A1A5E180, &unk_2A1A5E190, 0x29EDBAC30, MEMORY[0x29EDC9C68]);
    if (v1 <= 0x3F)
    {
      sub_29E050C44(319, &unk_2A1A5E308, &qword_2A1A61D20, 0x29EDBAD60, MEMORY[0x29EDC9A40]);
      if (v2 <= 0x3F)
      {
        sub_29DEB3B00(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_29E05187C()
{
  result = qword_2A181B2F8;
  if (!qword_2A181B2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181B2F8);
  }

  return result;
}

unint64_t sub_29E0518D4()
{
  result = qword_2A181B300;
  if (!qword_2A181B300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181B300);
  }

  return result;
}

unint64_t sub_29E05192C()
{
  result = qword_2A181B308;
  if (!qword_2A181B308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181B308);
  }

  return result;
}

unint64_t sub_29E051984()
{
  result = qword_2A181B310;
  if (!qword_2A181B310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181B310);
  }

  return result;
}

unint64_t sub_29E0519DC()
{
  result = qword_2A181B318;
  if (!qword_2A181B318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181B318);
  }

  return result;
}

unint64_t sub_29E051A34()
{
  result = qword_2A181B320;
  if (!qword_2A181B320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181B320);
  }

  return result;
}

unint64_t sub_29E051A8C()
{
  result = qword_2A181B328;
  if (!qword_2A181B328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181B328);
  }

  return result;
}

unint64_t sub_29E051AE4()
{
  result = qword_2A181B330;
  if (!qword_2A181B330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181B330);
  }

  return result;
}

unint64_t sub_29E051B3C()
{
  result = qword_2A181B338;
  if (!qword_2A181B338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181B338);
  }

  return result;
}

void sub_29E051BAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_29E051C30()
{
  result = qword_2A181B360;
  if (!qword_2A181B360)
  {
    sub_29E051BAC(255, &qword_2A181B348, sub_29DFCFBA8, MEMORY[0x29EDC24E0], MEMORY[0x29EDBC7F0]);
    swift_getOpaqueTypeConformance2();
    sub_29E04F7F0(&qword_2A181B368, 255, MEMORY[0x29EDC24E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181B360);
  }

  return result;
}

uint64_t sub_29E051D58(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_29E04F910(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

unint64_t sub_29E051DC8()
{
  result = qword_2A181B370;
  if (!qword_2A181B370)
  {
    sub_29E051E64(255, &unk_2A181B378, MEMORY[0x29EDBC7F0]);
    sub_29E051C30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181B370);
  }

  return result;
}

void sub_29E051E64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_29E051BAC(255, &qword_2A181B348, sub_29DFCFBA8, MEMORY[0x29EDC24E0], MEMORY[0x29EDBC7F0]);
    v7 = a3(a1, v6, MEMORY[0x29EDBCBF8]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t _s22CycleArticlesComponentVMa()
{
  result = qword_2A181B388;
  if (!qword_2A181B388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_29E051F98()
{
  result = sub_29E2BF944();
  if (v1 <= 0x3F)
  {
    result = sub_29E052034();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_29E052034()
{
  result = qword_2A181B398;
  if (!qword_2A181B398)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A181B398);
  }

  return result;
}

uint64_t sub_29E052098(uint64_t a1, int a2)
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

uint64_t sub_29E0520E0(uint64_t result, int a2, int a3)
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

uint64_t sub_29E052160(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_29E0521A8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_29E052218(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_29E052260(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29E0522D0(void *a1)
{
  v2 = v1;
  sub_29E055E0C(0, &unk_2A181B470, sub_29E055E70, MEMORY[0x29EDB8AF0]);
  v162 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v161 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v168 = &v127 - v7;
  MEMORY[0x2A1C7C4A8](v8);
  v165 = &v127 - v9;
  MEMORY[0x2A1C7C4A8](v10);
  v164 = &v127 - v11;
  sub_29E055ED0();
  v169 = v12;
  v167 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v163 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E056000();
  v15 = v14;
  v170 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v166 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E056094();
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v21 = &v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_29E2BF334() == 1)
  {
    v22 = *(v2 + 16);
    v23 = *(v2 + 56);
    v24 = a1;
    v176 = *(v2 + 64);
    v174 = *(v2 + 24);
    v25 = v22;
    swift_retain_n();
    v26 = v25;
    swift_retain_n();
    v27 = v26;
    v153 = v19;
    v28 = v27;
    v157 = v24;
    v29 = sub_29E2BF314();
    v151 = v21;
    v30 = v29;
    sub_29E2BF2F4();
    sub_29E2BF324();
    v150 = v15;
    v152 = v18;
    v31 = *(v2 + 32);
    v32 = *(v2 + 40);
    v146 = type metadata accessor for CycleHistoryDataSource();
    v33 = swift_allocObject();
    *(v33 + 10) = 0;
    v34 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CycleHistoryDataSource____lazy_storage___today;
    v144 = sub_29E2C31A4();
    v35 = *(v144 - 8);
    v143 = *(v35 + 56);
    v145 = v35 + 56;
    v143(&v33[v34], 1, 1, v144);
    *&v33[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CycleHistoryDataSource_viewModelProviders] = MEMORY[0x29EDCA198];
    *(v33 + 6) = v28;
    v33[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CycleHistoryDataSource_isOnboardingCompleted] = v174;
    *(v33 + 7) = v30;
    *(v33 + 8) = 0x407F400000000000;
    v33[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CycleHistoryDataSource_shouldShowTileHeader] = 0;
    *(v33 + 9) = v31;
    sub_29DE9DC34(v181, v180);
    sub_29DE9DC34(v182, v179);
    v158 = type metadata accessor for CycleLogNavigationHandler();
    v36 = swift_allocObject();
    *(v36 + 48) = 0;
    *(v36 + 136) = 0;
    *(v36 + 16) = v32;
    v154 = v28;
    v159 = v30;
    v37 = v31;

    v38 = HKLogMenstrualCyclesCategory();
    v39 = *(v32 + 24);
    v149 = v2;
    v40 = v32;
    v128 = v32;
    v129 = v39;
    v41 = v39;
    v42 = [v39 healthStore];
    v43 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v38 healthDataSource:v42];

    *(v36 + 24) = v43;
    *(v36 + 32) = v23;
    *(v36 + 40) = v176;
    *(v36 + 144) = v174;
    sub_29DE9DC34(v180, v36 + 56);
    sub_29DE9DC34(v179, v36 + 96);

    v44 = v23;
    v155 = v23;

    [v41 registerObserver_];
    sub_29DE93B3C(v179);
    sub_29DE93B3C(v180);
    *&v33[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CycleHistoryDataSource_navigationHandler] = v36;
    v45 = *(v40 + 32);
    *&v33[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CycleHistoryDataSource_pregnancyModelProvider] = v45;
    v139 = v45;
    sub_29E055E0C(0, &unk_2A1819BC0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
    v173 = v46;
    v47 = *(sub_29E2BEBB4() - 8);
    v48 = *(v47 + 72);
    v171 = *(v47 + 80);
    v172 = v48;
    v49 = (v171 + 32) & ~v171;
    v50 = swift_allocObject();
    v175 = xmmword_29E2CAB20;
    *(v50 + 16) = xmmword_29E2CAB20;
    v141 = "SetupPregnancyComponent";
    swift_unknownObjectRetain();
    sub_29E2BEBA4();
    v51 = sub_29E0018F0(v50, 1);
    v52 = objc_opt_self();

    v135 = v52;
    v53 = [v52 defaultCenter];
    v138 = *MEMORY[0x29EDC8028];
    v160 = v51;
    v134 = sel_significantTimeChangeDidOccur_;
    [v53 addObserver:v51 selector:sel_significantTimeChangeDidOccur_ name:? object:?];

    v54 = [v52 defaultCenter];
    v137 = *MEMORY[0x29EDB8CA8];
    [v54 &selRef_userData];

    sub_29DE93B3C(v181);
    sub_29DE93B3C(v182);
    v133 = v149[6];
    v55 = v133;
    sub_29E2BF2F4();
    v136 = type metadata accessor for CycleFactorsDataSource();
    v56 = swift_allocObject();
    *(v56 + 88) = 0;
    *(v56 + 144) = 0;
    v57 = v154;
    *(v56 + 56) = v154;
    *(v56 + 64) = 0;
    *(v56 + 72) = v44;
    v58 = v176;
    *(v56 + 80) = v176;
    LOBYTE(v40) = v174;
    *(v56 + 48) = v174;
    sub_29DE9DC34(v182, v56 + 96);
    *(v56 + 136) = v55;
    v59 = swift_allocObject();
    *(v59 + 16) = v175;
    swift_unknownObjectRetain();
    sub_29E2BEB84();
    v159 = sub_29E0018F0(v59, 1);
    [v55 registerObserver:v159 isUserInitiated:1];
    sub_29DE93B3C(v182);
    v142 = type metadata accessor for CycleDeviationsDataSource();
    swift_allocObject();
    v60 = v57;
    v61 = sub_29DFB70F8(v57, v40, v58, 0);
    v62 = [objc_allocWithZone(MEMORY[0x29EDBAA50]) init];
    v132 = type metadata accessor for CycleStatisticsDataSource();
    v63 = swift_allocObject();
    *(v63 + 72) = 0;
    *(v63 + 80) = 0;
    *(v63 + 88) = v40;
    *(v63 + 56) = v60;
    *(v63 + 64) = v62;
    *(v63 + 48) = 0;
    v156 = v49;
    v64 = swift_allocObject();
    *(v64 + 16) = v175;
    v65 = v62;
    sub_29E2BEBA4();
    v66 = sub_29E0018F0(v64, 1);

    sub_29E02061C(0, &qword_2A1818B80, &qword_2A181DB40);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_29E2CFE80;
    v68 = sub_29E0545A8(&qword_2A181B4B0, type metadata accessor for CycleHistoryDataSource);
    *(v67 + 32) = v160;
    *(v67 + 40) = v68;
    v69 = sub_29E0545A8(&qword_2A181B4B8, type metadata accessor for CycleFactorsDataSource);
    *(v67 + 48) = v159;
    *(v67 + 56) = v69;
    v70 = sub_29E0545A8(&qword_2A181B4C0, type metadata accessor for CycleDeviationsDataSource);
    v149 = v61;
    *(v67 + 64) = v61;
    *(v67 + 72) = v70;
    v71 = sub_29E0545A8(&qword_2A181B4C8, type metadata accessor for CycleStatisticsDataSource);
    v148 = v66;
    *(v67 + 80) = v66;
    *(v67 + 88) = v71;
    type metadata accessor for CycleTrackingDataSourceWithLayout(0);
    swift_allocObject();

    v147 = sub_29E2BF154();
    v127 = sub_29E2BF314();
    sub_29E2BF2F4();
    sub_29E2BF324();
    type metadata accessor for HistoricalAnalysisDataSource();
    v72 = swift_allocObject();
    v140 = v72;
    *(v72 + 32) = 0;
    *(v72 + 40) = 0;
    sub_29DE9DC34(v181, v180);
    sub_29DE9DC34(v182, v179);
    v73 = swift_allocObject();
    *(v73 + 48) = 0;
    *(v73 + 136) = 0;
    v74 = v128;
    *(v73 + 16) = v128;

    v75 = HKLogMenstrualCyclesCategory();
    v76 = v129;
    v77 = [v129 healthStore];
    v78 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v75 healthDataSource:v77];

    v79 = v155;
    *(v73 + 24) = v78;
    *(v73 + 32) = v79;
    *(v73 + 40) = v176;
    LOBYTE(v77) = v174;
    *(v73 + 144) = v174;
    sub_29DE9DC34(v180, v73 + 56);
    sub_29DE9DC34(v179, v73 + 96);

    v131 = v73;
    [v76 registerObserver_];
    sub_29DE93B3C(v179);
    sub_29DE93B3C(v180);
    type metadata accessor for HistoricalAnalysisHeaderDataSource();
    swift_allocObject();

    v130 = sub_29E234A7C(v80, 0);

    sub_29DE9DC34(v182, v180);
    sub_29DE9DC34(v181, v179);
    v81 = *(v74 + 40);
    v82 = swift_allocObject();
    *(v82 + 10) = 0;
    v143(&v82[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CycleHistoryDataSource____lazy_storage___today], 1, 1, v144);
    *&v82[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CycleHistoryDataSource_viewModelProviders] = MEMORY[0x29EDCA198];
    v83 = v154;
    *(v82 + 6) = v154;
    v82[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CycleHistoryDataSource_isOnboardingCompleted] = v77;
    LOBYTE(v52) = v77;
    v84 = v127;
    *(v82 + 7) = v127;
    *(v82 + 8) = 0x407F400000000000;
    v82[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CycleHistoryDataSource_shouldShowTileHeader] = 1;
    *(v82 + 9) = v81;
    sub_29DE9DC34(v179, v178);
    sub_29DE9DC34(v180, v177);
    v85 = swift_allocObject();
    *(v85 + 48) = 0;
    *(v85 + 136) = 0;
    *(v85 + 16) = v74;
    v86 = v84;
    v146 = v83;

    v158 = v86;
    v154 = v81;
    v87 = HKLogMenstrualCyclesCategory();
    v88 = [v76 healthStore];
    v89 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v87 healthDataSource:v88];

    *(v85 + 24) = v89;
    *(v85 + 32) = v79;
    *(v85 + 40) = v176;
    *(v85 + 144) = v52;
    sub_29DE9DC34(v178, v85 + 56);
    sub_29DE9DC34(v177, v85 + 96);

    [v76 registerObserver_];
    sub_29DE93B3C(v177);
    sub_29DE93B3C(v178);
    *&v82[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CycleHistoryDataSource_navigationHandler] = v85;
    *&v82[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CycleHistoryDataSource_pregnancyModelProvider] = v139;
    v90 = swift_allocObject();
    *(v90 + 16) = v175;
    swift_unknownObjectRetain();
    sub_29E2BEBA4();
    v91 = sub_29E0018F0(v90, 1);

    v92 = v135;
    v93 = [v135 defaultCenter];
    v94 = v134;
    [v93 addObserver:v91 selector:v134 name:v138 object:0];

    v95 = [v92 defaultCenter];
    v157 = v91;
    [v95 addObserver:v91 selector:v94 name:v137 object:0];

    sub_29DE93B3C(v179);
    sub_29DE93B3C(v180);
    sub_29DE9DC34(v182, v180);
    v96 = swift_allocObject();
    *(v96 + 88) = 0;
    *(v96 + 144) = 0;
    v97 = v146;
    *(v96 + 56) = v146;
    *(v96 + 64) = 0;
    v98 = v176;
    *(v96 + 72) = v155;
    *(v96 + 80) = v98;
    LOBYTE(v94) = v174;
    *(v96 + 48) = v174;
    *(v96 + 49) = 1;
    sub_29DE9DC34(v180, v96 + 96);
    v99 = v133;
    *(v96 + 136) = v133;
    v100 = swift_allocObject();
    *(v100 + 16) = v175;
    v101 = v97;

    swift_unknownObjectRetain();
    sub_29E2BEB84();
    v102 = sub_29E0018F0(v100, 1);
    [v99 registerObserver:v102 isUserInitiated:1];
    sub_29DE93B3C(v180);
    v103 = swift_allocObject();
    *(v103 + 72) = 0;
    *(v103 + 80) = 0;
    LOBYTE(v99) = v94;
    *(v103 + 88) = v94;
    v104 = v154;
    *(v103 + 56) = v101;
    *(v103 + 64) = v104;
    *(v103 + 48) = 1;
    v105 = swift_allocObject();
    *(v105 + 16) = v175;
    v106 = v101;
    v107 = v104;
    sub_29E2BEBA4();
    v108 = sub_29E0018F0(v105, 1);
    swift_allocObject();
    v109 = sub_29DFB70F8(v106, v99, v176, 1);

    sub_29E2BE654();

    v155 = v102;

    sub_29E2BE654();

    *&v175 = v108;

    sub_29E2BE654();

    sub_29E2BE654();

    sub_29E055F78();
    v110 = v163;
    sub_29E2C0EB4();
    sub_29E2BD5F4();
    v111 = v166;
    v112 = v169;
    sub_29E2C0E94();
    (*(v167 + 8))(v110, v112);
    sub_29E0545A8(&qword_2A181B4A8, sub_29E056000);
    v114 = v150;
    v113 = v151;
    sub_29E2C12A4();
    (*(v170 + 8))(v111, v114);
    sub_29E0545A8(&unk_2A181B4D0, sub_29E056094);
    v115 = v130;

    v116 = v152;
    v117 = sub_29E2C1384();
    v118 = v115;

    (*(v153 + 8))(v113, v116);
    v119 = v140;
    *(v140 + 24) = v117;
    sub_29DECE8A4(0, &qword_2A1A619B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29E2D6FB0;
    *(inited + 32) = v118;
    v121 = v155;
    *(inited + 40) = v157;
    *(inited + 48) = v121;
    *(inited + 56) = v109;
    *(inited + 64) = v175;

    sub_29E13DB88(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_29E2BF134();
    swift_allocObject();
    v122 = sub_29E2BF154();

    sub_29DE93B3C(v181);
    sub_29DE93B3C(v182);
    *(v119 + 16) = v122;
    type metadata accessor for CycleTrackingSizeClassResponsiveDataSource(0);
    v123 = swift_allocObject();

    v124 = v147;

    sub_29DF03A4C(v119, v124, v123);
    sub_29E2BE4C4();
    sub_29E2BE494();
    sub_29E2BE3B4();
    sub_29E2BE4A4();
  }

  else
  {
    sub_29E2BE3B4();
    swift_allocObject();
    sub_29E2BE3A4();
    sub_29E2BE4C4();

    sub_29E2BE494();

    type metadata accessor for CycleTrackingSizeClassResponsiveDataSource(0);

    sub_29E2BE4B4();
  }

  sub_29DF04E18();
  sub_29E0545A8(&qword_2A1818B48, sub_29DF04E18);

  v125 = sub_29E2BE494();

  return v125;
}

uint64_t sub_29E05386C()
{
  v1 = v0;
  v23 = sub_29E2BF944();
  v2 = *(v23 - 8);
  MEMORY[0x2A1C7C4A8](v23);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2BF954();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29DECE8A4(0, &qword_2A181CC70);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_29E2CAB20;
  *(v9 + 32) = 0;
  sub_29E2BF334();
  v10 = sub_29E2BE5E4();
  v12 = v11;
  if (v10 == sub_29E2BE5E4() && v12 == v13)
  {
  }

  else
  {
    v22 = v0;
    v14 = sub_29E2C4914();

    if ((v14 & 1) == 0)
    {
      v15 = sub_29E2BF314();
      v16 = [v15 profileIdentifier];

      v18 = *(v9 + 16);
      v17 = *(v9 + 24);
      if (v18 >= v17 >> 1)
      {
        v9 = sub_29E144A08((v17 > 1), v18 + 1, 1, v9);
      }

      *(v9 + 16) = v18 + 1;
      *(v9 + 8 * v18 + 32) = v16;
    }

    v1 = v22;
  }

  sub_29E2BF2F4();
  sub_29DE966D4(v24, v24[3]);
  sub_29E2BD144();
  *v8 = sub_29E054F70();
  (*(v6 + 104))(v8, *MEMORY[0x29EDC2AF8], v5);
  v19 = _s22CycleArticlesComponentVMa();
  (*(v2 + 16))(v4, v1 + *(v19 + 24), v23);
  objc_allocWithZone(sub_29E2BF8C4());
  swift_unknownObjectRetain();
  sub_29E2BF8B4();
  sub_29DE93B3C(v24);
  sub_29E0561AC();
  swift_allocObject();
  return sub_29E2BF534();
}

id sub_29E053BC8(uint64_t a1, char a2)
{
  if (a2)
  {
    goto LABEL_5;
  }

  if (a1 != 2)
  {
    if (a1 == 1)
    {
      v2 = &selRef_pregnancyType;
      return sub_29E0551C0(v2);
    }

LABEL_5:
    v2 = &selRef_menstrualFlowType;
    return sub_29E0551C0(v2);
  }

  return sub_29E054F70();
}

uint64_t sub_29E053C24()
{
  v1 = v0;
  if (sub_29E2BF334() == 1)
  {
    type metadata accessor for MoreDataSource(0);
    v3 = *(v0 + 24);
    v2 = *(v0 + 32);
    swift_getObjectType();
    v5 = *(v0 + 40);
    v4 = *(v0 + 48);
    v10 = *(v0 + 16);
    v6 = v3;
    swift_unknownObjectRetain();

    sub_29E2BF2F4();
    sub_29DE966D4(v12, v12[3]);
    v7 = sub_29E2BD144();
    sub_29DE9DC34(v1 + 56, v11);
    sub_29E0FF0D4(v6, v2, v5, v4, v10, v7, v11);

    sub_29DE93B3C(v12);
    sub_29E0545A8(&qword_2A181B500, type metadata accessor for MoreDataSource);
    sub_29E2BE4C4();

    sub_29E2BE494();

    sub_29E2BE3B4();

    sub_29E2BE4A4();
  }

  else
  {
    sub_29E2BE3B4();
    swift_allocObject();
    sub_29E2BE3A4();
    sub_29E2BE4C4();

    sub_29E2BE494();

    type metadata accessor for MoreDataSource(0);
    sub_29E0545A8(&qword_2A181B500, type metadata accessor for MoreDataSource);

    sub_29E2BE4B4();
  }

  sub_29E056240();
  sub_29E0545A8(&qword_2A181B510, sub_29E056240);

  v8 = sub_29E2BE494();

  return v8;
}

uint64_t sub_29E054044@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_29E056138();
  result = sub_29E176E08(a1, a1 + v4[12], a1 + v4[16], a1 + v4[20]);
  *a2 = result & 1;
  return result;
}

uint64_t sub_29E054098(uint64_t a1, void *a2, char a3)
{
  if (sub_29E2BF334() == 1)
  {
    v5 = sub_29E2BF314();
    sub_29E2BF324();
    type metadata accessor for MenstrualCyclesOnboardingDataSource();
    v6 = swift_allocObject();
    sub_29DE9DC34(v16, v15);
    v7 = type metadata accessor for MenstrualCyclesOnboardingItem();
    swift_allocObject();
    v8 = v5;
    v9 = a2;
    v10 = sub_29DF28C3C(v8, v15, v9);

    *(v6 + 48) = v10;
    sub_29E055E0C(0, &unk_2A1819BC0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
    sub_29E2BEBB4();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_29E2CAB20;
    sub_29E02061C(0, &unk_2A181B3C0, &qword_2A1819BD0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_29E2CAB20;
    *(v12 + 56) = v7;
    *(v12 + 64) = sub_29E0545A8(&qword_2A181B3D0, type metadata accessor for MenstrualCyclesOnboardingItem);
    *(v12 + 32) = v10;

    sub_29E2BEBA4();
    sub_29E0018F0(v11, a3 & 1);

    sub_29DE93B3C(v16);
    sub_29E0545A8(&qword_2A181B3A0, type metadata accessor for MenstrualCyclesOnboardingDataSource);
    sub_29E2BE4C4();

    sub_29E2BE494();

    sub_29E2BE3B4();

    sub_29E2BE4A4();
  }

  else
  {
    sub_29E2BE3B4();
    swift_allocObject();
    sub_29E2BE3A4();
    sub_29E2BE4C4();

    sub_29E2BE494();

    type metadata accessor for MenstrualCyclesOnboardingDataSource();
    sub_29E0545A8(&qword_2A181B3A0, type metadata accessor for MenstrualCyclesOnboardingDataSource);

    sub_29E2BE4B4();
  }

  sub_29E0544EC();
  sub_29E0545A8(&unk_2A181B3B0, sub_29E0544EC);

  v13 = sub_29E2BE494();

  return v13;
}

void sub_29E0544EC()
{
  if (!qword_2A181B3A8)
  {
    type metadata accessor for MenstrualCyclesOnboardingDataSource();
    sub_29E2BE3B4();
    sub_29E0545A8(&qword_2A181B3A0, type metadata accessor for MenstrualCyclesOnboardingDataSource);
    v0 = sub_29E2BEDE4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181B3A8);
    }
  }
}

uint64_t sub_29E0545A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E0545F0(uint64_t a1, void *a2, void *a3, char a4)
{
  if (sub_29E2BF334() == 1)
  {
    v7 = type metadata accessor for CycleTrackingFinishSetupDataSource();
    v8 = a2;
    v9 = sub_29E2BF314();
    sub_29E2BF324();
    v10 = v22;
    v11 = v23;
    v12 = sub_29DE966D4(v21, v22);
    v13 = sub_29E2BF2F4();
    v14 = MEMORY[0x2A1C7C4A8](v13);
    v16 = &v20[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v17 + 16))(v16, v12, v10, v14);
    swift_unknownObjectRetain();
    sub_29DF99270(v8, a4 & 1, v9, v16, v20, a3, v7, v10, v11);

    swift_unknownObjectRelease();
    sub_29DE93B3C(v21);
    sub_29E0545A8(&qword_2A181B3D8, type metadata accessor for CycleTrackingFinishSetupDataSource);
    sub_29E2BE4C4();

    sub_29E2BE494();

    sub_29E2BE3B4();

    sub_29E2BE4A4();
  }

  else
  {
    sub_29E2BE3B4();
    swift_allocObject();
    sub_29E2BE3A4();
    sub_29E2BE4C4();

    sub_29E2BE494();

    type metadata accessor for CycleTrackingFinishSetupDataSource();
    sub_29E0545A8(&qword_2A181B3D8, type metadata accessor for CycleTrackingFinishSetupDataSource);

    sub_29E2BE4B4();
  }

  sub_29E054960();
  sub_29E0545A8(&qword_2A181B3E8, sub_29E054960);

  v18 = sub_29E2BE494();

  return v18;
}

void sub_29E054960()
{
  if (!qword_2A181B3E0)
  {
    type metadata accessor for CycleTrackingFinishSetupDataSource();
    sub_29E2BE3B4();
    sub_29E0545A8(&qword_2A181B3D8, type metadata accessor for CycleTrackingFinishSetupDataSource);
    v0 = sub_29E2BEDE4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181B3E0);
    }
  }
}

uint64_t sub_29E054A1C(uint64_t a1, char a2, void *a3)
{
  if (sub_29E2BF334() == 1)
  {
    v5 = a3;
    sub_29E2BF2F4();
    type metadata accessor for HighlightsWithAlgorithmMismatchDataSource(0);
    swift_allocObject();
    sub_29E226A20(v5, a2 & 1, v8);
    sub_29E0545A8(&qword_2A181B458, type metadata accessor for HighlightsWithAlgorithmMismatchDataSource);
    sub_29E2BE4C4();

    sub_29E2BE494();

    sub_29E2BE3B4();

    sub_29E2BE4A4();
  }

  else
  {
    sub_29E2BE3B4();
    swift_allocObject();
    sub_29E2BE3A4();
    sub_29E2BE4C4();

    sub_29E2BE494();

    type metadata accessor for HighlightsWithAlgorithmMismatchDataSource(0);
    sub_29E0545A8(&qword_2A181B458, type metadata accessor for HighlightsWithAlgorithmMismatchDataSource);

    sub_29E2BE4B4();
  }

  sub_29E055D50();
  sub_29E0545A8(&qword_2A181B468, sub_29E055D50);

  v6 = sub_29E2BE494();

  return v6;
}

uint64_t sub_29E054C98(uint64_t a1, void *a2)
{
  if (sub_29E2BF334() == 1)
  {
    sub_29E2BF2F4();
    sub_29DE966D4(v8, v8[3]);
    v3 = sub_29E2BD144();
    objc_allocWithZone(type metadata accessor for UpdateFetchedResultsController());
    v4 = sub_29DF633CC(v3, 1, 0, a2);
    sub_29DE93B3C(v8);
    sub_29E0557D4();
    swift_allocObject();
    v5 = v4;
    sub_29E2BF534();
    sub_29E0545A8(&qword_2A181B418, sub_29E0557D4);
    sub_29E2BE4C4();

    sub_29E2BE494();

    sub_29E2BE3B4();

    sub_29E2BE4A4();
  }

  else
  {
    sub_29E2BE3B4();
    swift_allocObject();
    sub_29E2BE3A4();
    sub_29E2BE4C4();

    sub_29E2BE494();

    sub_29E0557D4();
    sub_29E0545A8(&qword_2A181B418, sub_29E0557D4);

    sub_29E2BE4B4();
  }

  sub_29E055868();
  sub_29E0545A8(&qword_2A181B428, sub_29E055868);

  v6 = sub_29E2BE494();

  return v6;
}

uint64_t sub_29E054F70()
{
  sub_29E055E0C(0, &qword_2A1A616F0, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v2 = &v11 - v1;
  sub_29E2BDCA4();
  sub_29E055E0C(0, &qword_2A1A61CE0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v3 = sub_29E2BD234();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29E2CAB20;
  (*(v4 + 104))(v6 + v5, *MEMORY[0x29EDC3760], v3);
  sub_29E2BD664();
  v7 = sub_29E2BC3A4();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  sub_29DECE8A4(0, &qword_2A181CC70);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_29E2CD7A0;
  *(v8 + 32) = sub_29E2BD274();
  *(v8 + 40) = 0;
  v9 = sub_29E2BDC24();

  sub_29DF3DEB8(v2);
  return v9;
}

id sub_29E0551C0(SEL *a1)
{
  sub_29E055E0C(0, &qword_2A1A616F0, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v15 - v3;
  sub_29E055E0C(0, &qword_2A1A61CE0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v5 = sub_29E2BD234();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_29E2CAB20;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x29EDC3760], v5);
  sub_29DECE8A4(0, &qword_2A1A619B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_29E2CE220;
  result = [objc_opt_self() *a1];
  if (result)
  {
    v11 = result;
    sub_29E2BDCA4();
    *(v9 + 32) = v11;
    v12 = sub_29E2BC3A4();
    (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
    sub_29DECE8A4(0, &qword_2A181CC70);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_29E2CD7A0;
    *(v13 + 32) = sub_29E2BD274();
    *(v13 + 40) = 0;
    v14 = MEMORY[0x29ED7A3D0](v8, v9, v4, v13);

    sub_29DF3DEB8(v4);
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E05546C()
{
  if (sub_29E2BF334() == 1)
  {
    sub_29E2BF2F4();
    sub_29DE966D4(v9, v9[3]);
    v0 = sub_29E2BD144();
    v1 = objc_allocWithZone(type metadata accessor for AddPregnancyHelpTileDataSource(0));
    v2 = sub_29E0B22A0(v0);

    sub_29DE93B3C(v9);
    sub_29E0545A8(&qword_2A181B3F0, type metadata accessor for AddPregnancyHelpTileDataSource);
    v3 = sub_29E2BE4C4();

    v4 = v3;
    v5 = sub_29E2BE494();

    sub_29E2BE3B4();
    v6 = v5;
    sub_29E2BE4A4();
  }

  else
  {
    sub_29E2BE3B4();
    swift_allocObject();
    sub_29E2BE3A4();
    sub_29E2BE4C4();

    sub_29E2BE494();

    type metadata accessor for AddPregnancyHelpTileDataSource(0);
    sub_29E0545A8(&qword_2A181B3F0, type metadata accessor for AddPregnancyHelpTileDataSource);

    sub_29E2BE4B4();
  }

  sub_29E055718();
  sub_29E0545A8(&qword_2A181B400, sub_29E055718);

  v7 = sub_29E2BE494();

  return v7;
}

void sub_29E055718()
{
  if (!qword_2A181B3F8)
  {
    type metadata accessor for AddPregnancyHelpTileDataSource(255);
    sub_29E2BE3B4();
    sub_29E0545A8(&qword_2A181B3F0, type metadata accessor for AddPregnancyHelpTileDataSource);
    v0 = sub_29E2BEDE4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181B3F8);
    }
  }
}

void sub_29E0557D4()
{
  if (!qword_2A181B408)
  {
    type metadata accessor for UpdateFetchedResultsController();
    sub_29E0545A8(&qword_2A181B410, type metadata accessor for UpdateFetchedResultsController);
    v0 = sub_29E2BF544();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181B408);
    }
  }
}

void sub_29E055868()
{
  if (!qword_2A181B420)
  {
    sub_29E0557D4();
    sub_29E2BE3B4();
    sub_29E0545A8(&qword_2A181B418, sub_29E0557D4);
    v0 = sub_29E2BEDE4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181B420);
    }
  }
}

uint64_t sub_29E055924(uint64_t a1, char a2)
{
  sub_29DF3D9DC();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_29E2BF334() == 1)
  {
    sub_29E2BF2F4();
    sub_29DE966D4(v14, v14[3]);
    v8 = sub_29E2BD144();
    type metadata accessor for PromotionsAfterOnboardingDataSource(0);
    swift_allocObject();
    v9 = objc_allocWithZone(type metadata accessor for PromotionsDataSource(0));
    sub_29DF3DAB8(v8);
    v10 = MEMORY[0x29EDC2000];
    if ((a2 & 1) == 0)
    {
      v10 = MEMORY[0x29EDC1FF8];
    }

    (*(v5 + 104))(v7, *v10, v4);
    sub_29E2BE674();

    sub_29DE93B3C(v14);
    sub_29E0545A8(&qword_2A181B440, type metadata accessor for PromotionsAfterOnboardingDataSource);
    sub_29E2BE4C4();

    sub_29E2BE494();

    sub_29E2BE3B4();

    sub_29E2BE4A4();
  }

  else
  {
    sub_29E2BE3B4();
    swift_allocObject();
    sub_29E2BE3A4();
    sub_29E2BE4C4();

    sub_29E2BE494();

    type metadata accessor for PromotionsAfterOnboardingDataSource(0);
    sub_29E0545A8(&qword_2A181B440, type metadata accessor for PromotionsAfterOnboardingDataSource);

    sub_29E2BE4B4();
  }

  sub_29E055C94();
  sub_29E0545A8(&qword_2A181B450, sub_29E055C94);

  v11 = sub_29E2BE494();

  return v11;
}

void sub_29E055C94()
{
  if (!qword_2A181B448)
  {
    type metadata accessor for PromotionsAfterOnboardingDataSource(255);
    sub_29E2BE3B4();
    sub_29E0545A8(&qword_2A181B440, type metadata accessor for PromotionsAfterOnboardingDataSource);
    v0 = sub_29E2BEDE4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181B448);
    }
  }
}

void sub_29E055D50()
{
  if (!qword_2A181B460)
  {
    type metadata accessor for HighlightsWithAlgorithmMismatchDataSource(255);
    sub_29E2BE3B4();
    sub_29E0545A8(&qword_2A181B458, type metadata accessor for HighlightsWithAlgorithmMismatchDataSource);
    v0 = sub_29E2BEDE4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181B460);
    }
  }
}

void sub_29E055E0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E055E70()
{
  if (!qword_2A181A570)
  {
    sub_29E2BED34();
    v0 = sub_29E2BE624();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181A570);
    }
  }
}

void sub_29E055ED0()
{
  if (!qword_2A181B480)
  {
    sub_29E055E0C(255, &unk_2A181B470, sub_29E055E70, MEMORY[0x29EDB8AF0]);
    sub_29E055F78();
    v0 = sub_29E2C0EA4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181B480);
    }
  }
}

unint64_t sub_29E055F78()
{
  result = qword_2A181B488;
  if (!qword_2A181B488)
  {
    sub_29E055E0C(255, &unk_2A181B470, sub_29E055E70, MEMORY[0x29EDB8AF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181B488);
  }

  return result;
}

void sub_29E056000()
{
  if (!qword_2A181B490)
  {
    sub_29E055ED0();
    sub_29E0545A8(&qword_2A181B498, sub_29E055ED0);
    v0 = sub_29E2C0F64();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181B490);
    }
  }
}

void sub_29E056094()
{
  if (!qword_2A181B4A0)
  {
    sub_29E056000();
    sub_29E0545A8(&qword_2A181B4A8, sub_29E056000);
    v0 = sub_29E2C0F24();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181B4A0);
    }
  }
}

void sub_29E056138()
{
  if (!qword_2A181B4E0)
  {
    sub_29E055E70();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_2A181B4E0);
    }
  }
}

void sub_29E0561AC()
{
  if (!qword_2A181B4F0)
  {
    sub_29E2BF8C4();
    sub_29E0545A8(&qword_2A181B4F8, MEMORY[0x29EDC2A70]);
    v0 = sub_29E2BF544();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181B4F0);
    }
  }
}

void sub_29E056240()
{
  if (!qword_2A181B508)
  {
    type metadata accessor for MoreDataSource(255);
    sub_29E2BE3B4();
    sub_29E0545A8(&qword_2A181B500, type metadata accessor for MoreDataSource);
    v0 = sub_29E2BEDE4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181B508);
    }
  }
}

uint64_t sub_29E0562FC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v202 = a3;
  LODWORD(v195) = a2;
  v186 = a1;
  v200 = a4;
  v4 = MEMORY[0x29EDBC7E8];
  sub_29E058DB8(0, &qword_2A18186A0, type metadata accessor for EmbryoTransferDatePickerRow, type metadata accessor for PastPregnancyStartDatePickerRow, MEMORY[0x29EDBC7E8]);
  v152 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v154 = &v148 - v6;
  sub_29DEE17DC(0);
  v184 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v155 = &v148 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for EmbryoTransferDatePickerRow(0);
  MEMORY[0x2A1C7C4A8](v153);
  v156 = &v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = type metadata accessor for EmbryoAgeAtTransferPickerRow(0);
  MEMORY[0x2A1C7C4A8](v170);
  v151 = &v148 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x29EDBC7E8];
  sub_29E059050(0, &qword_2A181B520, sub_29E058E3C, MEMORY[0x29EDBC7E8]);
  v172 = v12;
  MEMORY[0x2A1C7C4A8](v12);
  v174 = &v148 - v13;
  sub_29E058F40(0);
  v194 = v14;
  MEMORY[0x2A1C7C4A8](v14);
  v175 = &v148 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E058E3C();
  v173 = v16;
  MEMORY[0x2A1C7C4A8](v16);
  v176 = &v148 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E058DB8(0, &qword_2A1818698, sub_29DEE1794, sub_29DEE17DC, v4);
  v182 = v18;
  MEMORY[0x2A1C7C4A8](v18);
  v171 = &v148 - v19;
  sub_29E058DB8(0, &qword_2A181B540, type metadata accessor for GestationalAgeOnDatePickerRow, type metadata accessor for EmbryoAgeAtTransferPickerRow, v4);
  v163 = v20;
  MEMORY[0x2A1C7C4A8](v20);
  v167 = &v148 - v21;
  sub_29DEE1794(0);
  v181 = v22;
  MEMORY[0x2A1C7C4A8](v22);
  v169 = (&v148 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29DEE174C(0);
  v205 = v24;
  MEMORY[0x2A1C7C4A8](v24);
  v183 = &v148 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for GestationalAgeOnDatePickerRow(0);
  MEMORY[0x2A1C7C4A8](v165);
  v150 = &v148 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for GestationalAgeInWeeksAndDaysPickerRow(0);
  MEMORY[0x2A1C7C4A8](v161);
  v149 = &v148 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E058DB8(0, &qword_2A181B548, type metadata accessor for EstimatedDueDatePickerRow, type metadata accessor for GestationalAgeInWeeksAndDaysPickerRow, v4);
  v158 = v28;
  MEMORY[0x2A1C7C4A8](v28);
  v160 = &v148 - v29;
  sub_29DEE1704(0);
  v180 = v30;
  MEMORY[0x2A1C7C4A8](v30);
  v162 = (&v148 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v159 = type metadata accessor for EstimatedDueDatePickerRow();
  MEMORY[0x2A1C7C4A8](v159);
  v157 = (&v148 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E058F74();
  v197 = v33;
  MEMORY[0x2A1C7C4A8](v33);
  v199 = &v148 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E058DB8(0, &qword_2A181B568, sub_29E05901C, sub_29E058F40, v4);
  v190 = v35;
  MEMORY[0x2A1C7C4A8](v35);
  v192 = &v148 - v36;
  sub_29E059050(0, &qword_2A181B570, sub_29E058EF8, v11);
  v164 = v37;
  MEMORY[0x2A1C7C4A8](v37);
  v166 = &v148 - v38;
  sub_29E05901C(0);
  v191 = v39;
  MEMORY[0x2A1C7C4A8](v39);
  v168 = &v148 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E058FD4(0);
  v198 = v41;
  MEMORY[0x2A1C7C4A8](v41);
  v193 = &v148 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E058DB8(0, &qword_2A1818688, sub_29DEE1618, type metadata accessor for EndDatePickerRow, v4);
  v204 = v43;
  MEMORY[0x2A1C7C4A8](v43);
  v188 = &v148 - v44;
  sub_29E058DB8(0, &qword_2A1818690, sub_29DEE1660, sub_29DEE174C, v4);
  v203 = v45;
  MEMORY[0x2A1C7C4A8](v45);
  v185 = &v148 - v46;
  sub_29E058DB8(0, &qword_2A181B578, sub_29DEE16A8, sub_29DEE1704, v4);
  v177 = v47;
  MEMORY[0x2A1C7C4A8](v47);
  v178 = &v148 - v48;
  sub_29E059050(0, &qword_2A181B580, type metadata accessor for LastMenstrualPeriodDatePickerRow, v11);
  v148 = v49;
  MEMORY[0x2A1C7C4A8](v49);
  v51 = &v148 - v50;
  sub_29DEE16A8();
  v53 = v52;
  MEMORY[0x2A1C7C4A8](v52);
  v55 = &v148 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEE1660(0);
  v201 = v56;
  MEMORY[0x2A1C7C4A8](v56);
  v179 = (&v148 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29DEE1618(0);
  v196 = v58;
  MEMORY[0x2A1C7C4A8](v58);
  v187 = &v148 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v60 - 8);
  v62 = &v148 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_29E2C3384();
  v64 = *(v63 - 8);
  MEMORY[0x2A1C7C4A8](v63);
  v66 = &v148 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v67);
  v69 = &v148 - v68;
  MenstrualPeriodDatePickerRow = type metadata accessor for LastMenstrualPeriodDatePickerRow();
  MEMORY[0x2A1C7C4A8](MenstrualPeriodDatePickerRow);
  v72 = &v148 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E058EF8(0);
  MEMORY[0x2A1C7C4A8](v73);
  MEMORY[0x2A1C7C4A8](v74);
  MEMORY[0x2A1C7C4A8](v75);
  MEMORY[0x2A1C7C4A8](v76);
  v82 = v195;
  if (v195 <= 1u)
  {
    v181 = v62;
    v182 = v51;
    v183 = v55;
    v184 = v53;
    v104 = v157;
    v195 = v77;
    v189 = &v148 - v78;
    if (v82)
    {
      v139 = *(v159 + 20);
      v140 = sub_29E2BEFA4();
      v141 = v104;
      (*(*(v140 - 8) + 16))(v104 + v139, v202, v140);
      type metadata accessor for PregnancyDatesInputViewModel();
      sub_29E059358(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);

      sub_29E2C2A44();
      sub_29E0593A0(v104, v160, type metadata accessor for EstimatedDueDatePickerRow);
      swift_storeEnumTagMultiPayload();
      sub_29E059358(&qword_2A18186F8, type metadata accessor for EstimatedDueDatePickerRow);
      sub_29E059358(&qword_2A1818700, type metadata accessor for GestationalAgeInWeeksAndDaysPickerRow);
      v142 = v162;
      sub_29E2C1C74();
      sub_29E0593A0(v142, v178, sub_29DEE1704);
      swift_storeEnumTagMultiPayload();
      sub_29DEE1BD4();
      sub_29DEE1C7C();
      v143 = v179;
      sub_29E2C1C74();
      sub_29E059408(v142, sub_29DEE1704);
      sub_29E0593A0(v143, v185, sub_29DEE1660);
      swift_storeEnumTagMultiPayload();
      sub_29DEE1B8C();
      sub_29DEE1D5C();
      v144 = v187;
      sub_29E2C1C74();
      sub_29E059408(v143, sub_29DEE1660);
      sub_29E0593A0(v144, v188, sub_29DEE1618);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for EndDatePickerRow();
      sub_29E059224(&qword_2A1818710, sub_29DEE1618, sub_29DEE1B8C, sub_29DEE1D5C);
      sub_29E059358(&qword_2A1818718, type metadata accessor for EndDatePickerRow);
      v145 = v189;
      sub_29E2C1C74();
      sub_29E059408(v144, sub_29DEE1618);
      sub_29E059408(v141, type metadata accessor for EstimatedDueDatePickerRow);
      sub_29E0593A0(v145, v166, sub_29E058EF8);
      swift_storeEnumTagMultiPayload();
      sub_29E059130();
      v146 = v168;
      sub_29E2C1C74();
      sub_29E0593A0(v146, v192, sub_29E05901C);
      swift_storeEnumTagMultiPayload();
      sub_29E0590B8();
      sub_29E0592B0();
      v147 = v193;
      sub_29E2C1C74();
      sub_29E059408(v146, sub_29E05901C);
      sub_29E0593A0(v147, v199, sub_29E058FD4);
      swift_storeEnumTagMultiPayload();
      sub_29E059224(&qword_2A181B588, sub_29E058FD4, sub_29E0590B8, sub_29E0592B0);
      sub_29E2C1C74();
      sub_29E059408(v147, sub_29E058FD4);
      v120 = v145;
    }

    else
    {
      v105 = *(MenstrualPeriodDatePickerRow + 20);
      v106 = sub_29E2BEFA4();
      v107 = v72;
      (*(*(v106 - 8) + 16))(&v72[v105], v202, v106);
      sub_29E2C3314();
      v108 = v63;
      (*(v64 + 16))(v66, v69, v63);
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v109 = qword_2A1A67F80;
      sub_29E2BCC74();
      v110 = sub_29E2C3414();
      v112 = v111;
      (*(v64 + 8))(v69, v108);
      type metadata accessor for PregnancyDatesInputViewModel();
      sub_29E059358(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);

      sub_29E2C2A44();
      v113 = (v107 + *(MenstrualPeriodDatePickerRow + 24));
      *v113 = v110;
      v113[1] = v112;
      sub_29E0593A0(v107, v182, type metadata accessor for LastMenstrualPeriodDatePickerRow);
      swift_storeEnumTagMultiPayload();
      sub_29E059358(&qword_2A18186E8, type metadata accessor for LastMenstrualPeriodDatePickerRow);
      v114 = v183;
      sub_29E2C1C74();
      sub_29E0593A0(v114, v178, sub_29DEE16A8);
      swift_storeEnumTagMultiPayload();
      sub_29DEE1BD4();
      sub_29DEE1C7C();
      v115 = v179;
      sub_29E2C1C74();
      sub_29E059408(v114, sub_29DEE16A8);
      sub_29E0593A0(v115, v185, sub_29DEE1660);
      swift_storeEnumTagMultiPayload();
      sub_29DEE1B8C();
      sub_29DEE1D5C();
      v116 = v187;
      sub_29E2C1C74();
      sub_29E059408(v115, sub_29DEE1660);
      sub_29E0593A0(v116, v188, sub_29DEE1618);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for EndDatePickerRow();
      sub_29E059224(&qword_2A1818710, sub_29DEE1618, sub_29DEE1B8C, sub_29DEE1D5C);
      sub_29E059358(&qword_2A1818718, type metadata accessor for EndDatePickerRow);
      v117 = v189;
      sub_29E2C1C74();
      sub_29E059408(v116, sub_29DEE1618);
      sub_29E059408(v107, type metadata accessor for LastMenstrualPeriodDatePickerRow);
      sub_29E0593A0(v117, v166, sub_29E058EF8);
      swift_storeEnumTagMultiPayload();
      sub_29E059130();
      v118 = v168;
      sub_29E2C1C74();
      sub_29E0593A0(v118, v192, sub_29E05901C);
      swift_storeEnumTagMultiPayload();
      sub_29E0590B8();
      sub_29E0592B0();
      v119 = v193;
      sub_29E2C1C74();
      sub_29E059408(v118, sub_29E05901C);
      sub_29E0593A0(v119, v199, sub_29E058FD4);
      swift_storeEnumTagMultiPayload();
      sub_29E059224(&qword_2A181B588, sub_29E058FD4, sub_29E0590B8, sub_29E0592B0);
      sub_29E2C1C74();
      sub_29E059408(v119, sub_29E058FD4);
      v120 = v117;
    }
  }

  else
  {
    if (v195 == 2)
    {
      v121 = *(v161 + 20);
      v189 = &v148 - v78;
      v166 = v79;
      v168 = v80;
      v195 = v81;
      v122 = sub_29E2BEFA4();
      v123 = *(v122 - 8);
      v157 = *(v123 + 16);
      v164 = v123 + 16;
      v124 = v149;
      v157(&v149[v121], v202, v122);
      v156 = type metadata accessor for PregnancyDatesInputViewModel();
      v155 = sub_29E059358(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);

      sub_29E2C2A44();
      sub_29E0593A0(v124, v160, type metadata accessor for GestationalAgeInWeeksAndDaysPickerRow);
      swift_storeEnumTagMultiPayload();
      sub_29E059358(&qword_2A18186F8, type metadata accessor for EstimatedDueDatePickerRow);
      sub_29E059358(&qword_2A1818700, type metadata accessor for GestationalAgeInWeeksAndDaysPickerRow);
      v125 = v162;
      sub_29E2C1C74();
      sub_29E0593A0(v125, v178, sub_29DEE1704);
      swift_storeEnumTagMultiPayload();
      sub_29DEE1BD4();
      sub_29DEE1C7C();
      v126 = v179;
      sub_29E2C1C74();
      sub_29E059408(v125, sub_29DEE1704);
      v127 = v185;
      sub_29E0593A0(v126, v185, sub_29DEE1660);
      swift_storeEnumTagMultiPayload();
      v180 = sub_29DEE1B8C();
      v178 = sub_29DEE1D5C();
      v128 = v187;
      sub_29E2C1C74();
      sub_29E059408(v126, sub_29DEE1660);
      v179 = sub_29DEE1618;
      v129 = v188;
      sub_29E0593A0(v128, v188, sub_29DEE1618);
      swift_storeEnumTagMultiPayload();
      v177 = type metadata accessor for EndDatePickerRow();
      v162 = sub_29E059224(&qword_2A1818710, sub_29DEE1618, sub_29DEE1B8C, sub_29DEE1D5C);
      v161 = sub_29E059358(&qword_2A1818718, type metadata accessor for EndDatePickerRow);
      sub_29E2C1C74();
      sub_29E059408(v128, sub_29DEE1618);
      sub_29E059408(v124, type metadata accessor for GestationalAgeInWeeksAndDaysPickerRow);
      v130 = v150;
      v157(&v150[*(v165 + 20)], v202, v122);

      sub_29E2C2A44();
      sub_29E0593A0(v130, v167, type metadata accessor for GestationalAgeOnDatePickerRow);
      swift_storeEnumTagMultiPayload();
      sub_29E059358(&qword_2A18186C0, type metadata accessor for GestationalAgeOnDatePickerRow);
      sub_29E059358(&qword_2A18186C8, type metadata accessor for EmbryoAgeAtTransferPickerRow);
      v131 = v169;
      sub_29E2C1C74();
      sub_29E0593A0(v131, v171, sub_29DEE1794);
      swift_storeEnumTagMultiPayload();
      sub_29DEE19CC();
      sub_29DEE1AAC();
      v132 = v183;
      sub_29E2C1C74();
      sub_29E059408(v131, sub_29DEE1794);
      sub_29E0593A0(v132, v127, sub_29DEE174C);
      swift_storeEnumTagMultiPayload();
      sub_29E2C1C74();
      sub_29E059408(v132, sub_29DEE174C);
      sub_29E0593A0(v128, v129, v179);
      swift_storeEnumTagMultiPayload();
      v100 = v166;
      sub_29E2C1C74();
      sub_29E059408(v128, sub_29DEE1618);
      sub_29E059408(v130, type metadata accessor for GestationalAgeOnDatePickerRow);
      v97 = v189;
      v133 = v168;
      sub_29E0593A0(v189, v168, sub_29E058EF8);
      v134 = v195;
      sub_29E0593A0(v100, v195, sub_29E058EF8);
      v102 = v176;
      sub_29E0593A0(v133, v176, sub_29E058EF8);
      sub_29E058E94();
      sub_29E0593A0(v134, v102 + *(v135 + 48), sub_29E058EF8);
      sub_29E059408(v134, sub_29E058EF8);
      sub_29E059408(v133, sub_29E058EF8);
      sub_29E0593A0(v102, v174, sub_29E058E3C);
    }

    else
    {
      if (v195 != 3)
      {
        swift_storeEnumTagMultiPayload();
        sub_29E059224(&qword_2A181B588, sub_29E058FD4, sub_29E0590B8, sub_29E0592B0);
        return sub_29E2C1C74();
      }

      v83 = *(v170 + 20);
      v189 = &v148 - v78;
      v166 = v79;
      v168 = v80;
      v195 = v81;
      v84 = sub_29E2BEFA4();
      v85 = *(v84 - 8);
      v179 = *(v85 + 16);
      v180 = v85 + 16;
      v86 = v151;
      (v179)(&v151[v83], v202, v84);
      v178 = type metadata accessor for PregnancyDatesInputViewModel();
      v177 = sub_29E059358(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);

      sub_29E2C2A44();
      sub_29E0593A0(v86, v167, type metadata accessor for EmbryoAgeAtTransferPickerRow);
      swift_storeEnumTagMultiPayload();
      sub_29E059358(&qword_2A18186C0, type metadata accessor for GestationalAgeOnDatePickerRow);
      sub_29E059358(&qword_2A18186C8, type metadata accessor for EmbryoAgeAtTransferPickerRow);
      v87 = v169;
      sub_29E2C1C74();
      v88 = v171;
      sub_29E0593A0(v87, v171, sub_29DEE1794);
      swift_storeEnumTagMultiPayload();
      v170 = sub_29DEE19CC();
      v167 = sub_29DEE1AAC();
      v89 = v183;
      sub_29E2C1C74();
      sub_29E059408(v87, sub_29DEE1794);
      v169 = sub_29DEE174C;
      v90 = v185;
      sub_29E0593A0(v89, v185, sub_29DEE174C);
      swift_storeEnumTagMultiPayload();
      v165 = sub_29DEE1B8C();
      v164 = sub_29DEE1D5C();
      v91 = v187;
      sub_29E2C1C74();
      v163 = sub_29DEE174C;
      sub_29E059408(v89, sub_29DEE174C);
      v162 = sub_29DEE1618;
      v92 = v188;
      sub_29E0593A0(v91, v188, sub_29DEE1618);
      swift_storeEnumTagMultiPayload();
      v161 = type metadata accessor for EndDatePickerRow();
      v160 = sub_29E059224(&qword_2A1818710, sub_29DEE1618, sub_29DEE1B8C, sub_29DEE1D5C);
      v159 = sub_29E059358(&qword_2A1818718, type metadata accessor for EndDatePickerRow);
      sub_29E2C1C74();
      v158 = sub_29DEE1618;
      sub_29E059408(v91, sub_29DEE1618);
      sub_29E059408(v86, type metadata accessor for EmbryoAgeAtTransferPickerRow);
      v93 = v156;
      (v179)(&v156[*(v153 + 20)], v202, v84);

      sub_29E2C2A44();
      sub_29E0593A0(v93, v154, type metadata accessor for EmbryoTransferDatePickerRow);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for PastPregnancyStartDatePickerRow();
      sub_29E059358(&qword_2A18186A8, type metadata accessor for EmbryoTransferDatePickerRow);
      sub_29E059358(&qword_2A18186B0, type metadata accessor for PastPregnancyStartDatePickerRow);
      v94 = v155;
      sub_29E2C1C74();
      sub_29E0593A0(v94, v88, sub_29DEE17DC);
      swift_storeEnumTagMultiPayload();
      v95 = v183;
      sub_29E2C1C74();
      sub_29E059408(v94, sub_29DEE17DC);
      sub_29E0593A0(v95, v90, v169);
      swift_storeEnumTagMultiPayload();
      sub_29E2C1C74();
      sub_29E059408(v95, v163);
      sub_29E0593A0(v91, v92, v162);
      swift_storeEnumTagMultiPayload();
      v96 = v166;
      sub_29E2C1C74();
      sub_29E059408(v91, v158);
      sub_29E059408(v93, type metadata accessor for EmbryoTransferDatePickerRow);
      v97 = v189;
      v98 = v168;
      sub_29E0593A0(v189, v168, sub_29E058EF8);
      v99 = v96;
      v100 = v96;
      v101 = v195;
      sub_29E0593A0(v99, v195, sub_29E058EF8);
      v102 = v176;
      sub_29E0593A0(v98, v176, sub_29E058EF8);
      sub_29E058E94();
      sub_29E0593A0(v101, v102 + *(v103 + 48), sub_29E058EF8);
      sub_29E059408(v101, sub_29E058EF8);
      sub_29E059408(v98, sub_29E058EF8);
      sub_29E0593A0(v102, v174, sub_29E058E3C);
    }

    swift_storeEnumTagMultiPayload();
    sub_29E059358(&qword_2A181B5A8, sub_29E058E3C);
    v136 = v175;
    sub_29E2C1C74();
    sub_29E0593A0(v136, v192, sub_29E058F40);
    swift_storeEnumTagMultiPayload();
    sub_29E0590B8();
    sub_29E0592B0();
    v137 = v193;
    sub_29E2C1C74();
    sub_29E059408(v136, sub_29E058F40);
    sub_29E0593A0(v137, v199, sub_29E058FD4);
    swift_storeEnumTagMultiPayload();
    sub_29E059224(&qword_2A181B588, sub_29E058FD4, sub_29E0590B8, sub_29E0592B0);
    sub_29E2C1C74();
    sub_29E059408(v137, sub_29E058FD4);
    sub_29E059408(v102, sub_29E058E3C);
    sub_29E059408(v100, sub_29E058EF8);
    v120 = v97;
  }

  return sub_29E059408(v120, sub_29E058EF8);
}