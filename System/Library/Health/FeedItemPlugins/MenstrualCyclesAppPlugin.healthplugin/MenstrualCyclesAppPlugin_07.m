void sub_29DF373E8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v5 = sub_29E2C3384();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v6 = sub_29E2C3364();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  if (__OFADD__(a1, 1))
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_29E2C3354();
  sub_29E2C3344();
  sub_29DEA68FC();
  sub_29E2C43C4();
  sub_29E2C3334();

  sub_29E2C3344();
  sub_29E2C43C4();
  sub_29E2C3334();

  sub_29E2C3344();
  sub_29E2C3374();
  if (qword_2A1A62788 != -1)
  {
LABEL_5:
    swift_once();
  }

  v7 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  v8 = sub_29E2C33A4();

  [v2 setTitle_];
}

id sub_29DF37670()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v6 = sub_29E2C0504();
  v7 = sub_29E2C3A34();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    v10 = sub_29E2C4AE4();
    v12 = sub_29DFAA104(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_29DE74000, v6, v7, "[%{public}s] Exiting confirmation flow", v8, 0xCu);
    sub_29DE93B3C(v9);
    MEMORY[0x29ED82140](v9, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_29DEE8CC8();
    swift_unknownObjectRelease();
  }

  return [v1 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_29DF378A8()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v6 = v1;
  v7 = sub_29E2C0504();
  v8 = sub_29E2C3A34();

  v9 = &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin59PregnancyOnboardingSuggestedFeatureAdjustmentViewController_onboardingStep;
  if (os_log_type_enabled(v7, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28 = v11;
    *v10 = 136446466;
    v12 = sub_29E2C4AE4();
    v14 = sub_29DFAA104(v12, v13, &v28);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v15 = *&v6[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35DeviationCustomDetailViewController_viewModel];
    v16 = *(v15 + 16);
    LODWORD(v15) = *(v15 + 32);
    v17 = v15 == 1;
    v18 = v15 != 1;
    if (!v17)
    {
      v16 = 0;
    }

    v26[1] = v16;
    v27 = v18;
    sub_29DEB523C();
    v19 = sub_29E2C3424();
    v21 = sub_29DFAA104(v19, v20, &v28);

    *(v10 + 14) = v21;
    _os_log_impl(&dword_29DE74000, v7, v8, "[%{public}s] Presenting next result page after current page index: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v11, -1, -1);
    v22 = v10;
    v9 = &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin59PregnancyOnboardingSuggestedFeatureAdjustmentViewController_onboardingStep;
    MEMORY[0x29ED82140](v22, -1, -1);
  }

  result = (*(v3 + 8))(v5, v2);
  v24 = *&v6[v9[38]];
  if (*(v24 + 32) == 1)
  {
    v25 = *(v24 + 16);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_29DEE8E94(v25);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_29DF37BC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviationCustomDetailViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29DF37CAC()
{
  v1 = v0;
  swift_getObjectType();
  sub_29DF38348(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v24 - v3;
  v5 = sub_29E2C0514();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v9 = sub_29E2C0504();
  v10 = sub_29E2C3A34();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v24 = v1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136446210;
    v14 = sub_29E2C4AE4();
    v16 = sub_29DFAA104(v14, v15, &v25);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_29DE74000, v9, v10, "[%{public}s] Presenting Cycle History PDF", v12, 0xCu);
    sub_29DE93B3C(v13);
    MEMORY[0x29ED82140](v13, -1, -1);
    v17 = v12;
    v1 = v24;
    MEMORY[0x29ED82140](v17, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v18 = sub_29E2C3734();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  sub_29E2C3714();
  v19 = v1;
  v20 = sub_29E2C3704();
  v21 = swift_allocObject();
  v22 = MEMORY[0x29EDCA390];
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = v19;
  sub_29E13C984(0, 0, v4, &unk_29E2D2730, v21);
}

uint64_t sub_29DF37F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_29E2C3714();
  v4[4] = sub_29E2C3704();
  v6 = sub_29E2C36A4();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2A1C73D48](sub_29DF3801C, v6, v5);
}

uint64_t sub_29DF3801C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_29DF3811C;
    v3 = *(v0 + 24);

    return sub_29DEE5C58(v3);
  }

  else
  {

    **(v0 + 16) = *(v0 + 56) == 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_29DF3811C()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2A1C73D48](sub_29DF38260, v3, v2);
}

uint64_t sub_29DF38260()
{

  **(v0 + 16) = *(v0 + 56) == 0;
  v1 = *(v0 + 8);

  return v1();
}

void sub_29DF38348(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29DF383AC()
{
  if (!qword_2A1819160)
  {
    type metadata accessor for AttributeName(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1819160);
    }
  }
}

void sub_29DF38418()
{
  if (!qword_2A1819170)
  {
    type metadata accessor for TraitKey(255);
    type metadata accessor for Weight(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1819170);
    }
  }
}

void sub_29DF38488()
{
  if (!qword_2A1819178)
  {
    type metadata accessor for TraitKey(255);
    type metadata accessor for Weight(255);
    sub_29DF38594(&qword_2A18177D0, type metadata accessor for TraitKey);
    v0 = sub_29E2C3234();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1819178);
    }
  }
}

uint64_t sub_29DF38534(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29DF38594(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29DF385DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29DE9657C;

  return sub_29DF37F84(a1, v4, v5, v6);
}

void sub_29DF38700()
{
  if (!qword_2A1819180)
  {
    sub_29DF386CC(255);
    sub_29DEB1E60();
    sub_29DF38594(&qword_2A1819188, sub_29DF386CC);
    sub_29DF38594(&qword_2A1A61D38, sub_29DEB1E60);
    v0 = sub_29E2C0FF4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1819180);
    }
  }
}

uint64_t sub_29DF387F4(uint64_t a1, uint64_t a2)
{
  sub_29DEB0F38(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DF38858(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v296 = a8;
  v308 = a7;
  v300 = a6;
  v319 = a5;
  v320 = a9;
  v13 = sub_29E2BCFB4();
  v325 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v324 = &v295 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v295 - v16;
  v18 = sub_29E2C0514();
  v322 = *(v18 - 1);
  v323 = v18;
  MEMORY[0x2A1C7C4A8](v18);
  v326 = &v295 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20);
  v305 = &v295 - v21;
  MEMORY[0x2A1C7C4A8](v22);
  v307 = &v295 - v23;
  sub_29DF3C814(0, &qword_2A18191A0, type metadata accessor for OnboardingEndDateRow);
  MEMORY[0x2A1C7C4A8](v24 - 8);
  v298 = &v295 - v25;
  v313 = type metadata accessor for OnboardingEndDateRow(0);
  v297 = *(v313 - 8);
  MEMORY[0x2A1C7C4A8](v313);
  v295 = &v295 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v27);
  v317 = &v295 - v28;
  v29 = sub_29E2BCA54();
  v310 = *(v29 - 8);
  v311 = v29;
  MEMORY[0x2A1C7C4A8](v29);
  v309 = &v295 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_29E2BCBB4();
  v315 = *(v31 - 8);
  v316 = v31;
  MEMORY[0x2A1C7C4A8](v31);
  v299 = &v295 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v33);
  v312 = &v295 - v34;
  MEMORY[0x2A1C7C4A8](v35);
  v314 = &v295 - v36;
  started = type metadata accessor for OnboardingStartDateRow(0);
  MEMORY[0x2A1C7C4A8](started);
  v39 = &v295 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v40 - 8);
  v303 = &v295 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v306 = sub_29E2C3384();
  v304 = *(v306 - 8);
  MEMORY[0x2A1C7C4A8](v306);
  v301 = &v295 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v43);
  v302 = &v295 - v44;
  v45 = a3[1];
  v321 = *a3;
  v318 = a4;
  sub_29E2BF114();
  if (!*(&v330 + 1))
  {
    sub_29DEF95F0(&v329, &qword_2A181F8C0, &qword_2A1819BD0);
    sub_29E2C0474();
    v60 = v325[2];
    v60(v17, a2, v13);
    v60(v324, a2, v13);
    sub_29E2BF404();
    v61 = sub_29E2C0504();
    v62 = sub_29E2C3A14();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v319 = swift_slowAlloc();
      *&v329 = v319;
      *v63 = 136446978;
      v64 = sub_29E2C4AE4();
      v66 = sub_29DFAA104(v64, v65, &v329);

      *(v63 + 4) = v66;
      *(v63 + 12) = 2082;
      *(v63 + 14) = sub_29DFAA104(v321, v45, &v329);
      *(v63 + 22) = 2048;
      v67 = sub_29E2BCFA4();
      v68 = v325[1];
      v68(v17, v13);
      *(v63 + 24) = v67;
      *(v63 + 32) = 2048;
      v69 = v324;
      v70 = sub_29E2BCF64();
      v68(v69, v13);
      *(v63 + 34) = v70;
      _os_log_impl(&dword_29DE74000, v61, v62, "[%{public}s] The CellProvider block called us back with an item that no longer exists. Item Identifier: %{public}s, Section: %ld, Row: %ld", v63, 0x2Au);
      v71 = v319;
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v71, -1, -1);
      MEMORY[0x29ED82140](v63, -1, -1);
    }

    else
    {
      v82 = v325[1];
      v82(v324, v13);
      v82(v17, v13);
    }

    (*(v322 + 8))(v326, v323);
    return 0;
  }

  v46 = &v329;
  sub_29DE8EE78(&v329, v344);
  sub_29DE9DC34(v344, &v329);
  sub_29DEB1BC4(0, &qword_2A1819BD0);
  sub_29DEB1BC4(0, &qword_2A181CC80);
  if (swift_dynamicCast())
  {
    sub_29DE8EE78(&v333, v343);
    sub_29DE9DC34(v343, &v329);
    v326 = sub_29DEB1BC4(0, &unk_2A181DFD0);
    swift_dynamicCast();
    v47 = v341;
    v48 = v342;
    sub_29DE966D4(v340, v341);
    v49 = (*(v48 + 24))(v47, v48);
    if (v49 > 3)
    {
      if (v49 > 5)
      {
        if (v49 != 6)
        {
          if (v49 == 7)
          {
            v50 = sub_29E2C33A4();
            v51 = [a1 dequeueReusableCellWithIdentifier_];

            if (!v51)
            {
              v52 = objc_allocWithZone(MEMORY[0x29EDC7D10]);
              v53 = sub_29E2C33A4();
              v51 = [v52 initWithStyle:0 reuseIdentifier:v53];
            }

            v54 = [v51 textLabel];
            if (v54)
            {
              v55 = v54;
              v56 = v341;
              v57 = v342;
              sub_29DE966D4(v340, v341);
              (*(v57 + 32))(v56, v57);
              if (v58)
              {
                v59 = sub_29E2C33A4();
              }

              else
              {
                v59 = 0;
              }

              [v55 setText_];
            }

            v228 = [v51 textLabel];
            if (v228)
            {
              v229 = v228;
              v230 = [objc_opt_self() systemBlueColor];
              [v229 setTextColor_];
            }

            v231 = objc_opt_self();
            v94 = v51;
            v232 = [v231 hkmc_cycleLogCellBackgroundColor];
            [v94 setBackgroundColor_];

            v233 = [v94 textLabel];
            if (!v233)
            {
              goto LABEL_173;
            }

            v234 = v233;
            [v233 setNumberOfLines_];
          }

          else
          {
            v124 = sub_29E2C33A4();
            v125 = [a1 dequeueReusableCellWithIdentifier_];

            if (!v125)
            {
              v126 = objc_allocWithZone(MEMORY[0x29EDC7D10]);
              v127 = sub_29E2C33A4();
              v125 = [v126 initWithStyle:0 reuseIdentifier:v127];
            }

            v128 = objc_opt_self();
            v94 = v125;
            v129 = [v128 hkmc_cycleLogCellBackgroundColor];
            [v94 setBackgroundColor_];

            v130 = [v94 textLabel];
            if (v130)
            {
              v131 = v130;
              v132 = v341;
              v133 = v342;
              sub_29DE966D4(v340, v341);
              (*(v133 + 32))(v132, v133);
              if (v134)
              {
                v135 = sub_29E2C33A4();
              }

              else
              {
                v135 = 0;
              }

              [v131 setText_];
            }

            v235 = [v94 textLabel];
            if (v235)
            {
              v236 = v235;
              v237 = [v128 systemRedColor];
              [v236 setTextColor_];
            }

            v238 = [v94 textLabel];
            if (!v238)
            {
              goto LABEL_173;
            }

            v234 = v238;
            [v238 setTextAlignment_];
          }

          goto LABEL_172;
        }

        v105 = sub_29E2C33A4();
        v106 = sub_29E2BCF24();
        v107 = [a1 dequeueReusableCellWithIdentifier:v105 forIndexPath:v106];

        type metadata accessor for PickerSelectLoggingCell();
        v325 = v107;
        v94 = swift_dynamicCastClassUnconditional();
        sub_29DE9DC34(v340, &v329);
        swift_dynamicCast();
        sub_29E2BF0E4();

        sub_29E2BF104();

        if (*(&v338 + 1))
        {
          if (swift_dynamicCast())
          {
            v333 = v329;
            v334 = v330;
            v335 = v331;
            v336 = v332;
            v108 = v331;
            if (v319)
            {
              *(v335 + 24) = v296;
              swift_unknownObjectWeakAssign();
            }

            v248 = v325;
            v249 = *(&v335 + 1);
            *(*(&v335 + 1) + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15ManualEntryItem_dataSource + 8) = &off_2A24B4B38;
            swift_unknownObjectWeakAssign();
            v250 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23PickerSelectLoggingCell_picker;
            [*&v94[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23PickerSelectLoggingCell_picker] setDataSource_];
            [*&v94[v250] setDelegate_];
            [*&v94[v250] selectRow:*(v108 + 48) inComponent:0 animated:0];
            v251 = *&v94[v250];
            v252 = objc_opt_self();
            v253 = v251;
            v254 = [v252 hkmc_cycleLogCellBackgroundColor];
            [v253 setBackgroundColor_];

            v255 = qword_2A1A60ED8;
            v256 = v248;
            if (v255 != -1)
            {
              swift_once();
            }

            v327 = xmmword_2A1A67E58;
            sub_29E2BF404();
            MEMORY[0x29ED7FCC0](0xD000000000000023, 0x800000029E2F1FE0);
            v257 = sub_29E2C33A4();

            [v94 setAccessibilityIdentifier_];

            sub_29DF3BBA8(&v333);
            goto LABEL_173;
          }
        }

        else
        {
          sub_29DEF95F0(&v337, &qword_2A181F8C0, &qword_2A1819BD0);
        }

        v146 = v305;
        sub_29E2C0474();
        sub_29E2BF404();
        v147 = sub_29E2C0504();
        v148 = sub_29E2C3A14();

        if (os_log_type_enabled(v147, v148))
        {
          v149 = swift_slowAlloc();
          v150 = swift_slowAlloc();
          *&v329 = v150;
          *v149 = 136315138;
          *(v149 + 4) = sub_29DFAA104(v321, v45, &v329);
          _os_log_impl(&dword_29DE74000, v147, v148, "The CellProvider block called us back with a row that no longer exists. Row Identifier: %s", v149, 0xCu);
          sub_29DE93B3C(v150);
          MEMORY[0x29ED82140](v150, -1, -1);
          MEMORY[0x29ED82140](v149, -1, -1);
        }

        (*(v322 + 8))(v146, v323);
        sub_29DE93B3C(v343);
        goto LABEL_105;
      }

      if (v49 != 4)
      {
        v136 = sub_29E2C33A4();
        v137 = [a1 dequeueReusableCellWithIdentifier_];

        if (!v137)
        {
          v138 = objc_allocWithZone(MEMORY[0x29EDC7D10]);
          v139 = sub_29E2C33A4();
          v137 = [v138 initWithStyle:1 reuseIdentifier:v139];
        }

        v140 = [v137 textLabel];
        if (v140)
        {
          v141 = v140;
          v142 = v341;
          v143 = v342;
          sub_29DE966D4(v340, v341);
          (*(v143 + 32))(v142, v143);
          if (v144)
          {
            v145 = sub_29E2C33A4();
          }

          else
          {
            v145 = 0;
          }

          [v141 setText_];
        }

        sub_29DE9DC34(v340, &v333);
        swift_dynamicCast();
        v239 = objc_opt_self();
        v94 = v137;
        v240 = [v239 hkmc_cycleLogCellBackgroundColor];
        [v94 setBackgroundColor_];

        v241 = [v94 detailTextLabel];
        if (v241)
        {
          v242 = v241;
          sub_29E08C870(*(&v330 + 1));
          v243 = sub_29E2C33A4();

          [v242 setText_];
        }

        v244 = [v94 detailTextLabel];
        if (!v244)
        {
          sub_29DE93B3C(v343);
          sub_29DF3BBA8(&v329);
LABEL_174:
          sub_29DE93B3C(v340);
          sub_29DE93B3C(v344);
          return v94;
        }

        v245 = v244;
        v246 = &selRef_systemBlueColor;
        if (!v329)
        {
          v246 = &selRef_labelColor;
        }

        v247 = [v239 *v246];
        [v245 setTextColor_];

        sub_29DF3BBA8(&v329);
LABEL_173:
        sub_29DE93B3C(v343);
        goto LABEL_174;
      }

      v46 = sub_29E2C33A4();
      v93 = [a1 dequeueReusableCellWithIdentifier_];

      if (v93)
      {
        type metadata accessor for DatePickerTableViewCell();
        v94 = swift_dynamicCastClassUnconditional();
        sub_29DE9DC34(v340, &v333);
        swift_dynamicCast();
        v95 = qword_2A1A60ED8;
        v326 = v93;
        if (v95 != -1)
        {
          swift_once();
        }

        v333 = xmmword_2A1A67E58;
        sub_29E2BF404();
        MEMORY[0x29ED7FCC0](0xD000000000000018, 0x800000029E2F2010);
        v96 = sub_29E2C33A4();

        [v94 setAccessibilityIdentifier_];

        sub_29DE9DC34(v343, &v333);
        v97 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23DatePickerTableViewCell_item;
        swift_beginAccess();
        sub_29DF3BD6C(&v333, &v94[v97], &qword_2A18180D8, &qword_2A181CC80);
        swift_endAccess();
        sub_29E2BF0E4();

        sub_29E2BF404();
        sub_29E2BF104();

        if (v328)
        {
          sub_29DEB1BC4(0, &qword_2A18191B0);
          if (swift_dynamicCast())
          {
            if (*(&v338 + 1))
            {
              sub_29DE8EE78(&v337, &v333);
              sub_29DE9DC34(&v333, &v337);
              v98 = v298;
              v99 = v313;
              v100 = swift_dynamicCast();
              v101 = *(v297 + 56);
              if (v100)
              {
                v101(v98, 0, 1, v99);
                v102 = v295;
                sub_29DF3BC50(v98, v295);
                v103 = *&v94[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23DatePickerTableViewCell_datePicker];
                v104 = sub_29E2BCB04();
                [v103 setMinimumDate_];

                sub_29DF3BD0C(v102, type metadata accessor for OnboardingEndDateRow);
              }

              else
              {
                v101(v98, 1, 1, v99);
                sub_29DF3C868(v98, &qword_2A18191A0, type metadata accessor for OnboardingEndDateRow);
              }

              v325 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23DatePickerTableViewCell_datePicker;
              v258 = *&v94[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23DatePickerTableViewCell_datePicker];
              v259 = v314;
              sub_29E2BCB54();
              v260 = sub_29E2BCB04();
              v261 = v316;
              v262 = *(v315 + 8);
              v262(v259, v316);
              [v258 setMaximumDate_];

              v263 = *(&v334 + 1);
              v264 = v335;
              sub_29DE966D4(&v333, *(&v334 + 1));
              v265 = *(v264 + 16);
              v266 = v264;
              v267 = v261;
              v265(v263, v266);
              v268 = v312;
              sub_29E2BCA84();
              LOBYTE(v260) = sub_29E2BCB34();
              v262(v268, v261);
              v262(v259, v261);
              if (v260)
              {
                v269 = v299;
                sub_29E2BCB54();
              }

              else
              {
                v270 = *(&v334 + 1);
                v271 = v335;
                sub_29DE966D4(&v333, *(&v334 + 1));
                v272 = *(v271 + 16);
                v269 = v299;
                v273 = v271;
                v267 = v316;
                v272(v270, v273);
              }

              v274 = *(v325 + v94);
              v275 = sub_29E2BCB04();
              [v274 setDate_];

              v262(v269, v267);
              v276 = v300;
              if (!v319)
              {
                v276 = 0;
              }

              *&v94[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23DatePickerTableViewCell_delegate + 8] = v276;
              swift_unknownObjectWeakAssign();
              v277 = [objc_opt_self() hkmc_cycleLogCellBackgroundColor];
              [v94 setBackgroundColor_];

              sub_29DE93B3C(v343);
              sub_29DE93B3C(&v333);
              sub_29DF3BBFC(&v329);
              goto LABEL_174;
            }
          }

          else
          {
            v339 = 0;
            v337 = 0u;
            v338 = 0u;
          }

          v197 = v326;
        }

        else
        {
          v197 = v326;

          sub_29DEF95F0(&v327, &qword_2A181F8C0, &qword_2A1819BD0);
          v337 = 0u;
          v338 = 0u;
          v339 = 0;
        }

        sub_29DEF95F0(&v337, &qword_2A18191A8, &qword_2A18191B0);
        v198 = v307;
        sub_29E2C0474();
        sub_29E2BF404();
        v199 = sub_29E2C0504();
        v200 = sub_29E2C3A14();

        if (os_log_type_enabled(v199, v200))
        {
          v201 = swift_slowAlloc();
          v202 = swift_slowAlloc();
          *&v333 = v202;
          *v201 = 136315138;
          *(v201 + 4) = sub_29DFAA104(v321, v45, &v333);
          _os_log_impl(&dword_29DE74000, v199, v200, "The CellProvider block called us back with a row that no longer exists. Row Identifier: %s", v201, 0xCu);
          sub_29DE93B3C(v202);
          MEMORY[0x29ED82140](v202, -1, -1);
          MEMORY[0x29ED82140](v201, -1, -1);
        }

        (*(v322 + 8))(v198, v323);
        sub_29DE93B3C(v343);
        sub_29DF3BBFC(&v329);
LABEL_105:
        sub_29DE93B3C(v340);
        sub_29DE93B3C(v344);
        return 0;
      }

      __break(1u);
      goto LABEL_177;
    }

    if (v49 <= 1)
    {
      if (!v49)
      {
        v72 = sub_29E2C33A4();
        v73 = [a1 dequeueReusableCellWithIdentifier_];

        if (!v73)
        {
          v74 = objc_allocWithZone(MEMORY[0x29EDC7D10]);
          v75 = sub_29E2C33A4();
          v73 = [v74 initWithStyle:0 reuseIdentifier:v75];
        }

        v76 = [v73 textLabel];
        if (v76)
        {
          v77 = v76;
          v78 = v341;
          v79 = v342;
          sub_29DE966D4(v340, v341);
          (*(v79 + 32))(v78, v79);
          if (v80)
          {
            v81 = sub_29E2C33A4();
          }

          else
          {
            v81 = 0;
          }

          [v77 setText_];
        }

        v203 = objc_opt_self();
        v94 = v73;
        v204 = [v203 hkmc_cycleLogCellBackgroundColor];
        [v94 setBackgroundColor_];

        v205 = [v94 textLabel];
        if (v205)
        {
          v206 = v205;
          v207 = [objc_opt_self() _preferredFontForTextStyle_variant_];
          [v206 setFont_];
        }

        [v94 setUserInteractionEnabled_];

        goto LABEL_173;
      }

      v46 = sub_29E2C33A4();
      v109 = [a1 dequeueReusableCellWithIdentifier_];

      if (!v109)
      {
LABEL_177:
        __break(1u);
        goto LABEL_178;
      }

      type metadata accessor for OnboardingDataTypeLoggingCell();
      v110 = swift_dynamicCastClassUnconditional();
      v111 = [a1 window];
      v325 = v110;
      if (v111)
      {
        v112 = v111;
        v113 = v319;
      }

      else
      {
        v113 = v319;
        v111 = [objc_opt_self() mainScreen];
        v112 = v111;
      }

      [v111 bounds];
      v152 = v151;
      v154 = v153;

      v155 = v154 > 640.0 || v152 > 380.0;
      v156 = MEMORY[0x29EDC8080];
      if (v155)
      {
        v156 = MEMORY[0x29EDC8068];
      }

      v157 = *v156;
      sub_29DE9DC34(v340, &v329);
      swift_dynamicCast();
      v158 = *(&v333 + 1);
      v159 = *(&v334 + 1);
      v160 = v335;
      v161 = BYTE1(v335);
      v162 = BYTE2(v335);
      if (v113)
      {
        type metadata accessor for AddOngoingCycleFactorsViewController();
        v163 = swift_dynamicCastClass();
        if (v163)
        {
          if (v161 == 2)
          {
            v164 = *(*(v163 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_userInfo) + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_reviewOngoingCycleFactors);
            if (v164 >> 62)
            {
              if (sub_29E2C4484())
              {
LABEL_78:
                swift_unknownObjectRetain();
                v165 = [v325 textLabel];
                if (v165)
                {
                  v323 = v165;
                  v324 = v159;
                  v326 = v158;
                  v166 = v302;
                  sub_29E2C3314();
                  v167 = v304;
                  (*(v304 + 16))(v301, v166, v306);
                  if (qword_2A1A62788 != -1)
                  {
                    swift_once();
                  }

                  v168 = qword_2A1A67F80;
                  sub_29E2BCC74();
                  sub_29E2C3414();
                  (*(v167 + 8))(v166, v306);
                  v169 = sub_29E2C33A4();

                  v170 = v323;
                  [v323 setText_];

                  swift_unknownObjectRelease();
                }

                else
                {
                  swift_unknownObjectRelease();
                }

                goto LABEL_169;
              }
            }

            else if (*((v164 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_78;
            }
          }
        }
      }

      v278 = [v325 textLabel];
      if (!v278)
      {
LABEL_169:
        v281 = v325;
        *(v325 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19DataTypeLoggingCell_isChecked) = v160;
        v94 = v281;
        v282 = v109;
        sub_29E02D998();

        v283 = objc_opt_self();
        v284 = v282;
        v285 = [v283 hkmc_cycleLogCellBackgroundColor];
        [v281 setBackgroundColor_];

        *(&v330 + 1) = &type metadata for ScaleFactorConfiguration;
        *&v331 = &off_2A24BA1E0;
        *&v329 = v157;
        sub_29DE9DC34(&v329, &v333);
        v286 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19DataTypeLoggingCell_configuration;
        swift_beginAccess();
        v287 = v157;
        sub_29DF3BD6C(&v333, &v281[v286], &qword_2A181EFA0, &qword_2A18179F0);
        swift_endAccess();
        sub_29E08FC58();
        sub_29DE93B3C(&v329);
        v234 = v284;
        v288 = [v281 textLabel];
        if (v288)
        {
          v289 = v288;
          v290 = [objc_opt_self() _preferredFontForTextStyle_variant_];
          [v289 setFont_];
        }

        sub_29E104A80(6, v161);

        v291 = sub_29E2C33A4();

        [v281 setAccessibilityIdentifier_];

LABEL_172:
        goto LABEL_173;
      }

      v279 = v278;
      if (v161 == 2)
      {
        if ((v160 & 1) != 0 || v162)
        {
          goto LABEL_166;
        }
      }

      else if (v162)
      {
LABEL_166:
        sub_29DF058C8();
LABEL_168:
        v280 = sub_29E2C33A4();

        [v279 setText_];

        goto LABEL_169;
      }

      sub_29DF05B18();
      goto LABEL_168;
    }

    if (v49 == 2)
    {
      sub_29DE9DC34(v340, &v329);
      swift_dynamicCast();
      v83 = sub_29E2C33A4();
      v84 = [a1 dequeueReusableCellWithIdentifier_];

      if (!v84)
      {
        v85 = objc_allocWithZone(MEMORY[0x29EDC7D10]);
        v86 = sub_29E2C33A4();
        v84 = [v85 initWithStyle:1 reuseIdentifier:v86];
      }

      v87 = [v84 textLabel];
      if (v87)
      {
        v88 = v87;
        v89 = v341;
        v90 = v342;
        sub_29DE966D4(v340, v341);
        (*(v90 + 32))(v89, v90);
        if (v91)
        {
          v92 = sub_29E2C33A4();
        }

        else
        {
          v92 = 0;
        }

        [v88 setText_];
      }

      v208 = objc_opt_self();
      v209 = v84;
      v210 = [v208 hkmc_cycleLogCellBackgroundColor];
      [v209 setBackgroundColor_];

      v325 = v209;
      v211 = [v209 detailTextLabel];
      if (v211)
      {
        v212 = v211;
        v213 = v314;
        v214 = v315;
        v215 = v316;
        (*(v315 + 16))(v314, &v39[*(started + 28)], v316);
        v216 = v309;
        sub_29E1BA268(v309);
        sub_29DF3BCB4();
        v217 = v311;
        sub_29E2BCB94();
        (*(v310 + 8))(v216, v217);
        (*(v214 + 8))(v213, v215);
        v218 = sub_29E2C33A4();

        [v212 setText_];
      }

      v219 = *(started + 32);
      v220 = v39[v219];
      v94 = v325;
      v221 = [v325 detailTextLabel];
      v222 = v221;
      if (v220 == 1)
      {
        if (v221)
        {
          if (*v39)
          {
            v223 = &selRef_systemBlueColor;
          }

          else
          {
            v223 = &selRef_labelColor;
          }

          goto LABEL_123;
        }
      }

      else if (v221)
      {
        v223 = &selRef_secondaryLabelColor;
LABEL_123:
        v224 = [v208 *v223];
        [v222 setTextColor_];
      }

      [v94 setUserInteractionEnabled_];
      v225 = [v94 detailTextLabel];
      if (v225)
      {
        v226 = v225;
        [v225 setUserInteractionEnabled_];
      }

      sub_29E104A80(9, v39[1]);
      v227 = sub_29E2C33A4();

      [v94 setAccessibilityIdentifier_];

      sub_29DE93B3C(v343);
      sub_29DF3BD0C(v39, type metadata accessor for OnboardingStartDateRow);
      goto LABEL_174;
    }

    v114 = sub_29E2C33A4();
    v115 = [a1 dequeueReusableCellWithIdentifier_];

    v116 = v314;
    if (v115)
    {
      type metadata accessor for EndDateTableViewCell();
      v117 = swift_dynamicCastClass();
      if (v117)
      {
        goto LABEL_49;
      }
    }

    v117 = [objc_allocWithZone(type metadata accessor for EndDateTableViewCell()) init];
LABEL_49:
    sub_29DE9DC34(v343, &v329);
    v46 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20EndDateTableViewCell_item;
    swift_beginAccess();
    sub_29DF3BD6C(&v329, v46 + v117, &qword_2A18180D8, &qword_2A181CC80);
    swift_endAccess();
    v118 = v117;
    v119 = [v118 textLabel];
    if (v119)
    {
      v46 = v119;
      v120 = v341;
      v121 = v342;
      sub_29DE966D4(v340, v341);
      (*(v121 + 32))(v120, v121);
      if (v122)
      {
        v123 = sub_29E2C33A4();
      }

      else
      {
        v123 = 0;
      }

      v172 = v315;
      v171 = v316;
      v173 = v313;
      [v46 setText_];

      v174 = objc_opt_self();
      v175 = v118;
      v324 = v174;
      v176 = [v174 hkmc_cycleLogCellBackgroundColor];
      [v175 setBackgroundColor_];

      sub_29DE9DC34(v340, &v329);
      v177 = v317;
      swift_dynamicCast();
      v325 = v175;
      v326 = [v175 detailTextLabel];
      if (v326)
      {
        v178 = *(v173 + 28);
        v323 = *(v172 + 16);
        (v323)(v116, &v177[v178], v171);
        v179 = v312;
        sub_29E2BCA84();
        v180 = sub_29E2BCB34();
        v181 = *(v172 + 8);
        v181(v179, v171);
        v181(v116, v171);
        if (v180)
        {
          v182 = v302;
          sub_29E2C3314();
          v183 = v304;
          v46 = v306;
          (*(v304 + 16))(v301, v182, v306);
          if (qword_2A1A62788 != -1)
          {
            swift_once();
          }

          v184 = qword_2A1A67F80;
          sub_29E2BCC74();
          sub_29E2C3414();
          (*(v183 + 8))(v182, v46);
        }

        else
        {
          (v323)(v116, &v177[v178], v171);
          v185 = v309;
          sub_29E1BA268(v309);
          sub_29DF3BCB4();
          v46 = v311;
          sub_29E2BCB94();
          (*(v310 + 8))(v185, v46);
          v181(v116, v171);
        }

        v94 = v325;
        v186 = sub_29E2C33A4();

        v187 = v326;
        [v326 setText_];

        v188 = [v94 detailTextLabel];
        v189 = v319;
        if (v188)
        {
          v190 = v188;

          v191 = &selRef_systemBlueColor;
          v192 = v317;
          if (!v317[16])
          {
            v191 = &selRef_labelColor;
          }

          v193 = [v324 *v191];
          [v190 setTextColor_];

          if (*(v192 + 16) == 1)
          {
            v194 = sub_29DF5C458();
            [v94 setAccessoryView_];
          }

          else
          {
            [v94 setAccessoryView_];
          }

          v195 = v308;
          sub_29DE93B3C(v343);
          if (v189)
          {
            v196 = v195;
          }

          else
          {
            v196 = 0;
          }

          *&v94[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20EndDateTableViewCell_delegate + 8] = v196;
          swift_unknownObjectWeakAssign();
          sub_29DF3BD0C(v192, type metadata accessor for OnboardingEndDateRow);
          goto LABEL_174;
        }

        goto LABEL_180;
      }

LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
      goto LABEL_181;
    }

LABEL_178:
    __break(1u);
    goto LABEL_179;
  }

LABEL_181:
  *(v46 + 18) = 0;
  v46[7] = 0u;
  v46[8] = 0u;
  sub_29DEF95F0(&v333, &qword_2A18180D8, &qword_2A181CC80);
  *&v329 = 0;
  *(&v329 + 1) = 0xE000000000000000;
  sub_29E2C4584();
  MEMORY[0x29ED7FCC0](91, 0xE100000000000000);
  v293 = sub_29E2C4AE4();
  MEMORY[0x29ED7FCC0](v293);

  MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](0xD00000000000002ALL, 0x800000029E2F1EE0);
  MEMORY[0x29ED7FCC0](2112093, 0xE300000000000000);
  sub_29DE966D4(v344, v344[3]);
  v294 = sub_29E2BDE64();
  MEMORY[0x29ED7FCC0](v294);

  MEMORY[0x29ED7FCC0](0xD0000000000000AELL, 0x800000029E2F1F10);
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

uint64_t sub_29DF3B458(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(a1 + 72);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(a1, a2, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_29DF3B4E4()
{
  sub_29DF3BDDC(0, &qword_2A181CC60, MEMORY[0x29EDC7818]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = &v19 - v4;
  sub_29DF3C814(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v19 - v11;
  if ((*(v0 + 88) & 1) == 0)
  {
    v13 = sub_29E2BCFB4();
    v14 = *(*(v13 - 8) + 56);
    v20 = v2;
    v14(v12, 1, 1, v13);
    *(v0 + 88) = 1;
    v15 = *(v0 + 80);

    v16 = v0;
    sub_29E2BF124();

    sub_29DF3C944(v12, v9);
    v17 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    sub_29DF3C8C4(v9, v18 + v17);

    sub_29E2C0A54();

    (*(v3 + 8))(v5, v20);
    sub_29DF3C868(v12, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
  }
}

uint64_t sub_29DF3B7A0()
{
  swift_unknownObjectRelease();

  sub_29DE8EDC0(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_29DF3B81C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a3 + 40); ; i += 2)
  {
    v8 = *i;
    v11[0] = *(i - 1);
    v11[1] = v8;
    sub_29E2BF404();
    v9 = a1(v11);

    if (v3 || (v9 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t *sub_29DF3B9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v14 = *v7;
  v7[9] = 0;
  swift_unknownObjectWeakInit();
  *(v7 + 88) = 0;
  v7[2] = a5;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v7[6] = a4;
  v7[7] = a6;
  v15 = swift_allocObject();
  v15[2] = a6;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a3;
  v15[6] = a4;
  v15[7] = v14;
  sub_29DF3BDDC(0, &qword_2A1819198, MEMORY[0x29EDC7830]);
  v17 = objc_allocWithZone(v16);
  swift_unknownObjectRetain_n();
  swift_retain_n();
  v18 = a5;
  v19 = sub_29E2C0A34();
  v7[10] = v19;
  v20 = v19;
  sub_29E2C0A44();

  v21 = sub_29E2BF0D4();

  [v21 registerObserver_];

  return v7;
}

uint64_t sub_29DF3BC50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnboardingEndDateRow(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_29DF3BCB4()
{
  result = qword_2A1817C78;
  if (!qword_2A1817C78)
  {
    sub_29E2BCA54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1817C78);
  }

  return result;
}

uint64_t sub_29DF3BD0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29DF3BD6C(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4)
{
  sub_29DEF964C(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void sub_29DF3BDDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v8[6] = v3;
    v8[7] = v4;
    v8[0] = MEMORY[0x29EDC99B0];
    v8[1] = MEMORY[0x29EDC99B0];
    v8[2] = MEMORY[0x29EDC99C0];
    v8[3] = MEMORY[0x29EDC99C0];
    v6 = a3(0, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_29DF3BE4C()
{
  v1 = v0;
  v2 = sub_29E2BCFB4();
  v84 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v74 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF3C814(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
  v75 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v77 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v69 - v7;
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v69 - v10;
  v76 = v12;
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v69 - v14;
  sub_29DF3BDDC(0, &qword_2A181CC60, MEMORY[0x29EDC7818]);
  v17 = v16;
  v80 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v78 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v21 = &v69 - v20;
  MEMORY[0x2A1C7C4A8](v22);
  v24 = &v69 - v23;
  *(v0 + 88) = 1;
  v25 = *(v0 + 80);
  sub_29E2C0A64();

  v79 = v1;

  sub_29E2BF124();

  v26 = sub_29E2C0954();
  v27 = sub_29E2C0954();
  v86 = v21;
  v28 = v15;
  v29 = sub_29E2C0904();
  v85 = v24;
  v30 = v84;
  v31 = sub_29E2C0904();
  v81 = *(v30 + 56);
  v82 = v30 + 56;
  v81(v28, 1, 1, v2);
  v32 = v26 == v27 && v29 == v31;
  v33 = !v32;
  v73 = v33;
  v83 = v28;
  if (v32)
  {
LABEL_22:
    sub_29DF3C944(v28, v8);
    if ((*(v30 + 48))(v8, 1, v2) == 1)
    {
      sub_29DF3C868(v8, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
      v52 = v79;
      v53 = *(v79 + 80);
      sub_29E2C0A44();

      v81(v11, 1, 1, v2);
      *(v52 + 88) = 1;
      v54 = *(v52 + 80);

      v55 = v78;
      sub_29E2BF124();

      v56 = v77;
      sub_29DF3C944(v11, v77);
      v57 = (*(v75 + 80) + 24) & ~*(v75 + 80);
      v58 = swift_allocObject();
      *(v58 + 16) = v52;
      sub_29DF3C8C4(v56, v58 + v57);

      sub_29E2C0A54();

      v67 = *(v80 + 8);
      v67(v55, v17);
      v68 = MEMORY[0x29EDB9D70];
      sub_29DF3C868(v11, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
    }

    else
    {
      v59 = v74;
      (*(v30 + 32))(v74, v8, v2);
      v60 = v79;
      v61 = *(v79 + 80);
      sub_29E2C0A44();

      (*(v30 + 16))(v11, v59, v2);
      v81(v11, 0, 1, v2);
      *(v60 + 88) = 1;
      v62 = *(v60 + 80);

      v63 = v78;
      sub_29E2BF124();

      v64 = v77;
      sub_29DF3C944(v11, v77);
      v65 = (*(v75 + 80) + 24) & ~*(v75 + 80);
      v66 = swift_allocObject();
      *(v66 + 16) = v60;
      sub_29DF3C8C4(v64, v66 + v65);

      sub_29E2C0A54();

      v67 = *(v80 + 8);
      v67(v63, v17);
      v68 = MEMORY[0x29EDB9D70];
      sub_29DF3C868(v11, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
      (*(v30 + 8))(v74, v2);
    }

    sub_29DF3C868(v83, &unk_2A1A61BA0, v68);
    v67(v86, v17);
    return (v67)(v85, v17);
  }

  v70 = v8;
  v71 = v2;
  v72 = v11;
  result = sub_29E2C0974();
  v35 = result;
  v36 = *(result + 16);
  v37 = v85;
  if (!v36)
  {
LABEL_14:

    v28 = v83;
    v2 = v71;
    v11 = v72;
LABEL_21:
    v30 = v84;
    v8 = v70;
    goto LABEL_22;
  }

  v38 = 0;
  v39 = (result + 40);
  while (v38 < *(v35 + 16))
  {
    v40 = *(v39 - 1);
    v41 = *v39;
    v87 = v40;
    v88 = v41;
    sub_29E2BF404();
    sub_29E2C0924();
    if (v42)
    {

      v11 = v72;
      MEMORY[0x29ED79740](0, v38);
      v44 = MEMORY[0x29EDB9D70];
      v28 = v83;
LABEL_20:
      sub_29DF3C868(v28, &unk_2A1A61BA0, v44);
      v2 = v71;
      v81(v11, 0, 1, v71);
      sub_29DF3C8C4(v11, v28);
      goto LABEL_21;
    }

    v87 = v40;
    v88 = v41;
    v43 = sub_29E2C08F4();
    v87 = v40;
    v88 = v41;
    if (sub_29E2C08F4() < v43)
    {

      v87 = v40;
      v88 = v41;
      v45 = sub_29E2C0934();

      MEMORY[0x2A1C7C4A8](v46);
      *(&v69 - 2) = v37;
      v47 = sub_29DF3B81C(sub_29DF3C9C8, (&v69 - 4), v45);
      if (v48)
      {
        v49 = *(v45 + 16);

        v50 = v49 - 1;
      }

      else
      {
        v51 = v47;

        v50 = v51;
      }

      v28 = v83;
      v11 = v72;
      MEMORY[0x29ED79740](v50, v38);
      v44 = MEMORY[0x29EDB9D70];
      goto LABEL_20;
    }

    ++v38;

    v39 += 2;
    if (v36 == v38)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void sub_29DF3C814(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_29DF3C868(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29DF3C814(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29DF3C8C4(uint64_t a1, uint64_t a2)
{
  sub_29DF3C814(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DF3C944(uint64_t a1, uint64_t a2)
{
  sub_29DF3C814(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DF3C9C8()
{
  sub_29DF3BDDC(0, &qword_2A181CC60, MEMORY[0x29EDC7818]);
  sub_29E2C08E4();
  return v0 & 1;
}

uint64_t sub_29DF3CA34()
{
  sub_29DF3C814(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = sub_29E2BCFB4();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29DF3CB64()
{
  sub_29DF3C814(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
  v2 = *(v1 - 8);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_29DF3B458(v3, v4);
}

uint64_t HKMCDeviationType.localizedTitleKey.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      goto LABEL_5;
    }

    if (a1 == 3)
    {

      return sub_29E2C3314();
    }
  }

  else
  {
    if (!a1)
    {
LABEL_5:

      return sub_29E2C3314();
    }

    if (a1 == 1)
    {

      return sub_29E2C3314();
    }
  }

  result = sub_29E2C4724();
  __break(1u);
  return result;
}

uint64_t HKMCDeviationType.localizedFooterKey.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      goto LABEL_5;
    }

    if (a1 == 3)
    {

      return sub_29E2C3314();
    }
  }

  else
  {
    if (!a1)
    {
LABEL_5:

      return sub_29E2C3314();
    }

    if (a1 == 1)
    {

      return sub_29E2C3314();
    }
  }

  result = sub_29E2C4724();
  __break(1u);
  return result;
}

uint64_t HKMCDeviationType.localizedDetailDescriptionKey.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      goto LABEL_5;
    }

    if (a1 == 3)
    {

      return sub_29E2C3314();
    }
  }

  else
  {
    if (!a1)
    {
LABEL_5:

      return sub_29E2C3314();
    }

    if (a1 == 1)
    {

      return sub_29E2C3314();
    }
  }

  result = sub_29E2C4724();
  __break(1u);
  return result;
}

uint64_t HKMCDeviationType.localizedDetailTitleKey.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      goto LABEL_5;
    }

    if (a1 == 3)
    {

      return sub_29E2C3314();
    }
  }

  else
  {
    if (!a1)
    {
LABEL_5:

      return sub_29E2C3314();
    }

    if (a1 == 1)
    {

      return sub_29E2C3314();
    }
  }

  result = sub_29E2C4724();
  __break(1u);
  return result;
}

unint64_t sub_29DF3CFC0()
{
  result = qword_2A18191B8;
  if (!qword_2A18191B8)
  {
    sub_29DF3D018();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18191B8);
  }

  return result;
}

void sub_29DF3D018()
{
  if (!qword_2A18191C0)
  {
    type metadata accessor for HKMCDeviationType(255);
    v0 = sub_29E2C3684();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18191C0);
    }
  }
}

uint64_t sub_29DF3D08C()
{
  v1 = [v0 identifier];
  if (!v1)
  {
    _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v1 = sub_29E2C33A4();
  }

  v2 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v4 = v3;
  if (v2 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v4 == v5)
  {

    return 0;
  }

  v7 = sub_29E2C4914();
  v8 = v1;

  if (v7)
  {

    return 0;
  }

  v10 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v12 = v11;
  if (v10 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v12 == v13)
  {

    return 1;
  }

  v15 = sub_29E2C4914();

  if (v15)
  {

    return 1;
  }

  v16 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v18 = v17;
  if (v16 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v18 == v19)
  {

    return 2;
  }

  v20 = sub_29E2C4914();

  if (v20)
  {

    return 2;
  }

  v21 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v23 = v22;
  v24 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v26 = v25;

  if (v21 == v24 && v23 == v26)
  {

    return 3;
  }

  else
  {
    v27 = sub_29E2C4914();

    if (v27)
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_29DF3D3A4()
{
  sub_29E2BE694();

  return swift_deallocClassInstance();
}

uint64_t sub_29DF3D444(uint64_t a1, char a2)
{
  sub_29DF3D9DC();
  v6 = MEMORY[0x2A1C7C4A8](v3);
  v7 = MEMORY[0x29EDC2000];
  if ((a2 & 1) == 0)
  {
    v7 = MEMORY[0x29EDC1FF8];
  }

  (*(v5 + 104))(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *v7, v6);
  return sub_29E2BE644();
}

id sub_29DF3D554()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PromotionsDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29DF3D594()
{
  v0 = sub_29E2BE814();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BE7D4();
  v4 = sub_29E2BE7B4();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_29DF3D6BC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_29E2C08B4();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v4 = sub_29E2C3384();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v15[-v9];
  sub_29E2C3314();
  (*(v5 + 16))(v7, v10, v4);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v11 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v5 + 8))(v10, v4);
  sub_29E2C0844();
  v12 = sub_29E2BE0B4();
  swift_allocObject();
  v13 = sub_29E2BE094();
  a1[3] = v12;
  result = sub_29DF3DA70(&unk_2A181CC00, MEMORY[0x29EDC1C30]);
  a1[4] = result;
  *a1 = v13;
  return result;
}

void sub_29DF3D9DC()
{
  if (!qword_2A181B430)
  {
    type metadata accessor for PromotionsDataSource(255);
    sub_29DF3DA70(qword_2A18191F0, type metadata accessor for PromotionsDataSource);
    v0 = sub_29E2BE624();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181B430);
    }
  }
}

uint64_t sub_29DF3DA70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29DF3DAB8(uint64_t a1)
{
  sub_29DF3DE54(0, &qword_2A1A616F0, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v21 - v3;
  sub_29E2BDCA4();
  v5 = MEMORY[0x29ED7A440]();
  sub_29DF3DE54(0, &qword_2A1A61CE0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v6 = sub_29E2BD234();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_29E2CAB20;
  (*(v7 + 104))(v9 + v8, *MEMORY[0x29EDC3790], v6);
  sub_29E2BD664();
  v10 = sub_29E2BC3A4();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  sub_29DECE8A4(0, &qword_2A181CC70);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_29E2CD7A0;
  *(v11 + 32) = sub_29E2BD274();
  *(v11 + 40) = 0;
  v12 = sub_29E2BDC24();

  sub_29DF3DEB8(v4);
  [v5 setPredicate_];

  v13 = objc_allocWithZone(MEMORY[0x29EDBA0F0]);
  v14 = sub_29E2C33A4();
  v15 = [v13 initWithKey:v14 ascending:0];

  sub_29DECE8A4(0, &qword_2A1A619B0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_29E2CE220;
  *(v16 + 32) = v15;
  sub_29DF3DF44();
  v17 = v15;
  v18 = sub_29E2C3604();

  [v5 setSortDescriptors_];

  [objc_allocWithZone(MEMORY[0x29EDB8C58]) initWithFetchRequest:v5 managedObjectContext:a1 sectionNameKeyPath:0 cacheName:0];
  v19 = sub_29E2BF6D4();

  return v19;
}

void sub_29DF3DE54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29DF3DEB8(uint64_t a1)
{
  sub_29DF3DE54(0, &qword_2A1A616F0, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29DF3DF44()
{
  result = qword_2A1A61D48;
  if (!qword_2A1A61D48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A61D48);
  }

  return result;
}

void sub_29DF3DF98()
{
  sub_29DF3F5BC(319, &qword_2A1819278, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB78]);
  if (v0 <= 0x3F)
  {
    sub_29DF3F5BC(319, &qword_2A1A5E338, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9C68]);
    if (v1 <= 0x3F)
    {
      sub_29E2BEFA4();
      if (v2 <= 0x3F)
      {
        sub_29DF3E0E8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_29DF3E0E8()
{
  result = qword_2A1A5DFA0;
  if (!qword_2A1A5DFA0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2A1A5DFA0);
  }

  return result;
}

uint64_t sub_29DF3E17C()
{
  sub_29DF3F5BC(0, &qword_2A1819278, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB78]);
  sub_29E2C2944();
  return v1;
}

uint64_t sub_29DF3E1F0(uint64_t a1)
{
  v3 = *(a1 + 16);
  sub_29DF3F5BC(255, &qword_2A1818370, MEMORY[0x29EDCA210], MEMORY[0x29EDBC938]);
  v4 = sub_29E2C1744();
  sub_29DF3F200();
  v6 = v5;
  v26 = *(a1 + 24);
  v7 = v26;
  v27 = sub_29DF3F260();
  v22 = v4;
  v23 = v6;
  WitnessTable = swift_getWitnessTable();
  v25 = sub_29DF3F2DC();
  sub_29E2BE9B4();
  sub_29E2C1744();
  sub_29E2C1744();
  swift_getTupleTypeMetadata2();
  sub_29E2C2B14();
  swift_getWitnessTable();
  v8 = sub_29E2C2884();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v18[-v13];
  v19 = v3;
  v20 = v7;
  v21 = v1;
  sub_29E2C1AA4();
  sub_29E2C2874();
  v15 = swift_getWitnessTable();
  sub_29DFA9658(v11, v8, v15);
  v16 = *(v9 + 8);
  v16(v11, v8);
  sub_29DFA9658(v14, v8, v15);
  return (v16)(v14, v8);
}

uint64_t sub_29DF3E498@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v83 = a4;
  v84 = a1;
  v65 = a3;
  v6 = type metadata accessor for PregnancyInteractivePickerRow();
  v74 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v77 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55[1] = v7;
  MEMORY[0x2A1C7C4A8](v8);
  v10 = v55 - v9;
  v11 = sub_29E2BEFA4();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v14;
  sub_29DF3F5BC(255, &qword_2A1818370, MEMORY[0x29EDCA210], MEMORY[0x29EDBC938]);
  v56 = a2;
  v15 = sub_29E2C1744();
  v70 = v15;
  sub_29DF3F200();
  v17 = v16;
  v69 = v16;
  v18 = sub_29DF3F260();
  v98 = a3;
  v99 = v18;
  v82 = MEMORY[0x29EDBC560];
  WitnessTable = swift_getWitnessTable();
  v68 = WitnessTable;
  v67 = sub_29DF3F2DC();
  v94 = v15;
  v95 = v17;
  v96 = WitnessTable;
  v97 = v67;
  v72 = sub_29E2BE9B4();
  v79 = *(v72 - 8);
  MEMORY[0x2A1C7C4A8](v72);
  v66 = v55 - v20;
  v75 = sub_29E2C1744();
  v80 = *(v75 - 8);
  MEMORY[0x2A1C7C4A8](v75);
  v71 = v55 - v21;
  v78 = sub_29E2C1744();
  v81 = *(v78 - 8);
  MEMORY[0x2A1C7C4A8](v78);
  v73 = v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23);
  v76 = v55 - v24;
  v25 = v84;
  v64 = sub_29DF3E17C();
  v63 = v26;
  v61 = v27;
  v28 = *(v25 + 1);
  v62 = *v25;
  v58 = v28;
  (*(v12 + 16))(v14, &v25[*(v6 + 44)], v11);
  v29 = v6;
  v30 = &v25[*(v6 + 48)];
  v31 = v25;
  v33 = *v30;
  v32 = *(v30 + 1);
  v59 = v33;
  v57 = v32;
  v34 = v74;
  v35 = *(v74 + 16);
  v35(v10, v31, v6);
  v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = a2;
  v38 = v65;
  *(v37 + 24) = v65;
  v39 = *(v34 + 32);
  v39(v37 + v36, v10, v6);
  v40 = v77;
  v35(v77, v84, v29);
  v41 = swift_allocObject();
  *(v41 + 16) = v56;
  *(v41 + 24) = v38;
  v39(v41 + v36, v40, v29);
  sub_29E2BF404();
  sub_29E2BF404();
  v42 = v66;
  sub_29E2BE9A4();
  sub_29E2C2AB4();
  v53 = v72;
  v54 = swift_getWitnessTable();
  v43 = v71;
  sub_29E2C2544();
  (*(v79 + 8))(v42, v53);
  v92 = v54;
  v93 = MEMORY[0x29EDBC5F0];
  v44 = v75;
  v45 = swift_getWitnessTable();
  v46 = v73;
  sub_29E2C25A4();
  (*(v80 + 8))(v43, v44);
  v90 = v45;
  v91 = MEMORY[0x29EDBC5E0];
  v47 = v78;
  v48 = swift_getWitnessTable();
  v49 = v76;
  sub_29DFA9658(v46, v47, v48);
  v50 = v81;
  v51 = *(v81 + 8);
  v51(v46, v47);
  (*(v50 + 16))(v46, v49, v47);
  v88 = 0;
  v89 = 0;
  v94 = v46;
  v95 = &v88;
  v87[0] = v47;
  v87[1] = MEMORY[0x29EDBCB48];
  v85 = v48;
  v86 = MEMORY[0x29EDBCB40];
  sub_29E115380(&v94, 2uLL, v87);
  v51(v49, v47);
  return (v51)(v46, v47);
}

uint64_t sub_29DF3ECCC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x2A1C7C4A8](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PregnancyInteractivePickerRow();
  (*(a1 + *(v7 + 52)))();
  sub_29E2C2464();
  return (*(v4 + 8))(v6, a2);
}

void sub_29DF3EDD0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41[2] = a2;
  v41[3] = a3;
  v41[1] = a4;
  v5 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v6 = sub_29E2C3384();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = v41 - v11;
  if (*(a1 + 48))
  {
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = a1;
  }

  else
  {
    sub_29E2C3314();
    (*(v7 + 16))(v9, v12, v6);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v16 = qword_2A1A67F80;
    sub_29E2BCC74();
    v13 = sub_29E2C3414();
    v14 = v17;
    (*(v7 + 8))(v12, v6);
    v15 = a1;
  }

  v42 = v13;
  v43 = v14;
  sub_29DE9DE68();
  sub_29E2BF404();
  v18 = sub_29E2C2294();
  v20 = v19;
  v22 = v21;
  v42 = sub_29E2C2664();
  v23 = sub_29E2C2224();
  v25 = v24;
  v27 = v26;
  sub_29DED6478(v18, v20, v22 & 1);

  sub_29E2C2094();
  v28 = sub_29E2C2204();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_29DED6478(v23, v25, v27 & 1);

  v42 = v28;
  v43 = v30;
  v35 = v32 & 1;
  v44 = v35;
  v45 = v34;
  sub_29DF3F5BC(0, &qword_2A1A62780, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_29E2CD7A0;
  v37 = (v15 + *(type metadata accessor for PregnancyInteractivePickerRow() + 48));
  v38 = v37[1];
  *(v36 + 32) = *v37;
  *(v36 + 40) = v38;
  *(v36 + 48) = 6579265;
  *(v36 + 56) = 0xE300000000000000;
  sub_29E2BF404();
  v39 = sub_29E2C3604();

  v40 = HKUIJoinStringsForAutomationIdentifier();

  if (v40)
  {
    _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();

    sub_29E2C23B4();

    sub_29DED6478(v28, v30, v35);
  }

  else
  {
    __break(1u);
  }
}

void sub_29DF3F200()
{
  if (!qword_2A1819280)
  {
    sub_29E2C1F54();
    v0 = sub_29E2C1744();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1819280);
    }
  }
}

unint64_t sub_29DF3F260()
{
  result = qword_2A1818380;
  if (!qword_2A1818380)
  {
    sub_29DF3F5BC(255, &qword_2A1818370, MEMORY[0x29EDCA210], MEMORY[0x29EDBC938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818380);
  }

  return result;
}

unint64_t sub_29DF3F2DC()
{
  result = qword_2A1819288;
  if (!qword_2A1819288)
  {
    sub_29DF3F200();
    sub_29DF3F35C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819288);
  }

  return result;
}

unint64_t sub_29DF3F35C()
{
  result = qword_2A1819290;
  if (!qword_2A1819290)
  {
    sub_29E2C1F54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819290);
  }

  return result;
}

uint64_t sub_29DF3F3D8()
{
  v1 = (type metadata accessor for PregnancyInteractivePickerRow() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[13];
  v6 = sub_29E2BEFA4();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29DF3F51C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for PregnancyInteractivePickerRow() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

void sub_29DF3F5BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_29DF3F620()
{
  result = qword_2A1819298;
  if (!qword_2A1819298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819298);
  }

  return result;
}

uint64_t sub_29DF3F674()
{
  result = [v0 cycles];
  if (!result)
  {
    return result;
  }

  v2 = result;
  sub_29DE9408C(0, &qword_2A1A5E0A0);
  v3 = sub_29E2C3614();

  if (!(v3 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= 2)
    {
      goto LABEL_4;
    }

LABEL_15:

    return 0;
  }

  result = sub_29E2C4484();
  if (result < 2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x29ED80D70](1, v3);
  }

  else
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      return result;
    }

    v4 = *(v3 + 40);
  }

  v5 = v4;

  v6 = [v5 fertileWindowSegment];
  if (!v6)
  {

    return 0;
  }

  v7 = v6;
  if ([v5 ovulationConfirmationType] != 1)
  {

    return 0;
  }

  v8 = [v7 days];
  v9 = [v7 days];
  v11 = v9 + v10 - 1;
  if (v10 <= 0)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v12 = v11;
  v13 = [v7 days];
  v15 = [objc_allocWithZone(MEMORY[0x29EDC33E8]) initWithStartMean:v13 startStandardDeviation:v14 endMean:0 endStandardDeviation:0 allDays:3 partiallyLogged:v8 daysOffsetFromCalendarMethod:0.0 predictionPrimarySource:{v12, 0.0}];

  return v15;
}

uint64_t sub_29DF3F850()
{
  v1 = v0;
  v2 = sub_29E2C31A4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v22 - v7;
  *&v10 = MEMORY[0x2A1C7C4A8](v9).n128_u64[0];
  v12 = &v22 - v11;
  v13 = [v1 cycles];
  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = v13;
  sub_29DE9408C(0, &qword_2A1A5E0A0);
  v15 = sub_29E2C3614();

  if (!(v15 >> 62))
  {
    result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  result = sub_29E2C4484();
  if (!result)
  {
LABEL_9:

LABEL_10:
    v21 = 0;
    return v21 & 1;
  }

LABEL_4:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x29ED80D70](0, v15);
    goto LABEL_7;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v15 + 32);
LABEL_7:
    v18 = v17;

    v19 = [v18 menstruationSegment];
    [v19 days];

    sub_29E2C30D4();
    sub_29E2C30D4();
    sub_29E2C3114();
    v20 = *(v3 + 8);
    v20(v5, v2);
    sub_29DEF60A0();
    v21 = sub_29E2C32A4();

    v20(v8, v2);
    v20(v12, v2);
    return v21 & 1;
  }

  __break(1u);
  return result;
}

char *sub_29DF3FACC()
{
  v1 = [v0 ongoingCycleFactors];
  sub_29DE9408C(0, &qword_2A1A61D50);
  v2 = sub_29E2C3614();

  if (v2 >> 62)
  {
    v3 = sub_29E2C4484();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:

    v6 = MEMORY[0x29EDCA190];
    goto LABEL_14;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_3:
  v17 = MEMORY[0x29EDCA190];
  result = sub_29E1813F8(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
    __break(1u);
    return result;
  }

  v5 = 0;
  v6 = v17;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x29ED80D70](v5, v2);
    }

    else
    {
      v7 = *(v2 + 8 * v5 + 32);
    }

    v8 = v7;
    v9 = [v7 hkmc_cycleFactor];

    v11 = *(v17 + 16);
    v10 = *(v17 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_29E1813F8((v10 > 1), v11 + 1, 1);
    }

    ++v5;
    *(v17 + 16) = v11 + 1;
    *(v17 + 8 * v11 + 32) = v9;
  }

  while (v3 != v5);

LABEL_14:
  v18 = MEMORY[0x29EDCA1A0];
  v12 = *(v6 + 16);
  if (v12)
  {
    v13 = 32;
    v14 = MEMORY[0x29EDCA1A0];
    do
    {
      v16 = *(v6 + v13) - 1;
      if (v16 <= 8 && ((0x1FBu >> v16) & 1) != 0)
      {
        v15 = sub_29DE92374(*(&off_29F362788 + v16));
      }

      else
      {
        v15 = v14;
      }

      sub_29DECD374(v15);
      v13 += 8;
      --v12;
    }

    while (v12);

    return v18;
  }

  else
  {

    return MEMORY[0x29EDCA1A0];
  }
}

uint64_t sub_29DF3FCE8(uint64_t a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v13[-v8];
  if (a1 == 1 || a1 == 3 || (v10 = 0, a1 == 2))
  {
    sub_29E2C3314();
    (*(v4 + 16))(v7, v9, v3);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v11 = qword_2A1A67F80;
    sub_29E2BCC74();
    v10 = sub_29E2C3414();
    (*(v4 + 8))(v9, v3);
  }

  return v10;
}

uint64_t sub_29DF3FF24(uint64_t a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v13[-v8];
  if (a1 == 1 || a1 == 3 || (v10 = 0, a1 == 2))
  {
    sub_29E2C3314();
    (*(v4 + 16))(v6, v9, v3);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v11 = qword_2A1A67F80;
    sub_29E2BCC74();
    v10 = sub_29E2C3414();
    (*(v4 + 8))(v9, v3);
  }

  return v10;
}

void sub_29DF40170()
{
  sub_29DE99B54();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29E2CD3B0;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 blackColor];
  *(v0 + 40) = [v1 hk_alertHeaderBackgroundColor];
  sub_29DE9408C(0, &qword_2A1817FE0);
  v2 = sub_29E2C3604();

  v3 = objc_opt_self();
  v4 = [v3 configurationWithPaletteColors_];

  v5 = v4;
  v6 = sub_29E2C33A4();
  v7 = [objc_opt_self() systemImageNamed:v6 withConfiguration:v5];

  if (v7)
  {
    v8 = [objc_opt_self() systemFontOfSize:18.0 weight:*MEMORY[0x29EDC76E0]];
    v9 = [v3 configurationWithFont_];

    v10 = [v7 imageByApplyingSymbolConfiguration_];
    if (v10)
    {

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_29DF40374(void *a1, void *a2, void *a3)
{
  sub_29DF404B0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E2CE0D0;
  v7 = *MEMORY[0x29EDC7638];
  *(inited + 32) = *MEMORY[0x29EDC7638];
  v8 = sub_29DE9408C(0, &unk_2A1A61A00);
  *(inited + 40) = a1;
  v9 = *MEMORY[0x29EDC7640];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = sub_29DE9408C(0, &qword_2A1817FE0);
  *(inited + 80) = a3;
  v11 = *MEMORY[0x29EDC7650];
  *(inited + 104) = v10;
  *(inited + 112) = v11;
  *(inited + 144) = sub_29DE9408C(0, &qword_2A1817B10);
  *(inited + 120) = a2;
  v12 = v7;
  v13 = a1;
  v14 = v9;
  v15 = a3;
  v16 = v11;
  v17 = a2;
  v18 = sub_29E185054(inited);
  swift_setDeallocating();
  sub_29DEA0430();
  swift_arrayDestroy();
  return v18;
}

void sub_29DF404B0()
{
  if (!qword_2A1817FD0)
  {
    sub_29DEA0430();
    v0 = sub_29E2C48E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1817FD0);
    }
  }
}

void sub_29DF40508()
{
  v0 = [objc_opt_self() systemFontOfSize:18.0 weight:*MEMORY[0x29EDC76E0]];
  v1 = objc_opt_self();
  v2 = [v1 configurationWithFont_];

  v3 = sub_29E2C33A4();
  v4 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (!v4)
  {
    __break(1u);
    goto LABEL_5;
  }

  v5 = [v1 configurationPreferringMulticolor];
  v6 = [v4 imageByApplyingSymbolConfiguration_];

  if (!v6)
  {
LABEL_5:
    __break(1u);
  }
}

uint64_t sub_29DF4065C()
{
  v1 = *v0;
  v54 = v0;
  v55 = v1;
  v2 = sub_29E2C0514();
  v57 = *(v2 - 8);
  v58 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v56 = (&v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_29E2C00B4();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v53 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF417F0();
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF41920();
  v10 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v40 - v14;
  v16 = type metadata accessor for ReviewPregnancyInMedicalIDTileDismissalData(0);
  ObjectType = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v21 = &v40 - v20;
  _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v22 = sub_29E2C3B34();
  v24 = v23;
  v43 = v18;
  v47 = v16;
  v44 = v22;
  v42 = v21;
  v48 = v12;
  v49 = v15;
  v45 = v10;
  v46 = v8;
  v25 = v54;

  if (v24 >> 60 == 15)
  {
    v26 = v49;
    (*(ObjectType + 56))(v49, 1, 1, v47);
    v58 = *(v25 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin50ReviewPregnancyInMedicalIDTileDismissalInputSignal_observer + 8);
    swift_getObjectType();
    sub_29E2C00A4();
    sub_29DF41BB4(v26, v48, sub_29DF41920);
    sub_29DF41978(&qword_2A1A5F0E0, &qword_2A1A5F138);
    sub_29DF41978(&qword_2A1A5F0F0, qword_2A1A5F148);
    sub_29DF41978(&qword_2A1A5F0E8, &qword_2A1A5F140);
    v27 = v46;
    sub_29E2BFE84();
    v59 = v25;
    sub_29DF41A08(qword_2A1A5EE10, type metadata accessor for ReviewPregnancyInMedicalIDTileDismissalInputSignal);
    sub_29E2C0004();
    (*(v51 + 8))(v27, v52);
    v28 = v26;
    v29 = sub_29DF41920;
  }

  else
  {
    sub_29E2BC2B4();
    swift_allocObject();
    v30 = v44;
    sub_29DF1DE4C(v44, v24);
    sub_29E2BC2A4();
    sub_29DF41A08(&qword_2A1A5F138, type metadata accessor for ReviewPregnancyInMedicalIDTileDismissalData);
    v31 = v43;
    v32 = v47;
    sub_29E2BC294();
    v33 = v25;
    v35 = v48;
    v34 = v49;

    v41 = v24;
    sub_29DF1DD38(v30, v24);
    v36 = v42;
    sub_29DF41B50(v31, v42);
    v58 = type metadata accessor for ReviewPregnancyInMedicalIDTileDismissalData;
    sub_29DF41BB4(v36, v34, type metadata accessor for ReviewPregnancyInMedicalIDTileDismissalData);
    (*(ObjectType + 56))(v34, 0, 1, v32);
    v57 = *(v25 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin50ReviewPregnancyInMedicalIDTileDismissalInputSignal_observer + 8);
    ObjectType = swift_getObjectType();
    sub_29E2C00A4();
    v56 = sub_29DF41920;
    sub_29DF41BB4(v34, v35, sub_29DF41920);
    sub_29DF41978(&qword_2A1A5F0E0, &qword_2A1A5F138);
    sub_29DF41978(&qword_2A1A5F0F0, qword_2A1A5F148);
    sub_29DF41978(&qword_2A1A5F0E8, &qword_2A1A5F140);
    v37 = v34;
    v38 = v46;
    sub_29E2BFE84();
    v59 = v33;
    sub_29DF41A08(qword_2A1A5EE10, type metadata accessor for ReviewPregnancyInMedicalIDTileDismissalInputSignal);
    sub_29E2C0004();
    sub_29DF1DD38(v30, v41);
    (*(v51 + 8))(v38, v52);
    sub_29DF41C1C(v37, v56);
    v28 = v42;
    v29 = v58;
  }

  return sub_29DF41C1C(v28, v29);
}

void *sub_29DF41028(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  sub_29DF41A88();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  sub_29DF41AE8(v5, v3 + 16);
  sub_29DF41B20(v5);
  v1[4] = v3;
  v1[2] = a1;
  v1[3] = [objc_allocWithZone(MEMORY[0x29EDBAC18]) initWithCategory:4 domainName:*MEMORY[0x29EDC32A0] healthStore:a1];
  return v1;
}

id sub_29DF410D4(void *a1)
{
  v3 = *(v1 + 32);
  os_unfair_lock_lock(v3 + 6);
  sub_29DF41A6C(&v3[4]);
  os_unfair_lock_unlock(v3 + 6);
  v4 = *(v1 + 24);
  [v4 startObservation_];
  return [a1 didUpdateKeyValueDomain_];
}

uint64_t sub_29DF41164(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [*(a2 + 24) stopObservation_];
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_29DF411D8(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [*(a2 + 24) stopObservation_];
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_29DF41240()
{

  return swift_deallocClassInstance();
}

void sub_29DF412AC()
{
  v1 = *(*v0 + 32);
  os_unfair_lock_lock(v1 + 6);
  sub_29DF41A50(&v1[4]);

  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_29DF41308()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin50ReviewPregnancyInMedicalIDTileDismissalInputSignal_identifier;
  v2 = sub_29E2C00B4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  sub_29DE93B3C(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin50ReviewPregnancyInMedicalIDTileDismissalInputSignal_observerShim);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ReviewPregnancyInMedicalIDTileDismissalInputSignal()
{
  result = qword_2A1A5EDF8;
  if (!qword_2A1A5EDF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29DF41418()
{
  result = sub_29E2C00B4();
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

uint64_t sub_29DF414E0(uint64_t a1, int a2)
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

uint64_t sub_29DF41500(uint64_t result, int a2, int a3)
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

uint64_t sub_29DF41538@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin50ReviewPregnancyInMedicalIDTileDismissalInputSignal_identifier;
  v5 = sub_29E2C00B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29DF415EC()
{
  v1 = *v0;
  v2 = (*v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin50ReviewPregnancyInMedicalIDTileDismissalInputSignal_observerShim);
  v3 = v2[3];
  v4 = v2[4];
  sub_29DE966D4(v2, v3);
  (*(v4 + 16))(v3, v4);
  v5 = v2[3];
  v6 = v2[4];
  sub_29DE966D4(v2, v5);
  return (*(v6 + 8))(v1, v5, v6);
}

uint64_t sub_29DF4168C()
{
  v1 = (*v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin50ReviewPregnancyInMedicalIDTileDismissalInputSignal_observerShim);
  v2 = v1[3];
  v3 = v1[4];
  sub_29DE966D4(v1, v2);
  return (*(v3 + 16))(v2, v3);
}

uint64_t sub_29DF416F4(uint64_t a1)
{
  v2 = sub_29DF41A08(qword_2A1A5EE10, type metadata accessor for ReviewPregnancyInMedicalIDTileDismissalInputSignal);

  return MEMORY[0x2A1C64680](a1, v2);
}

void sub_29DF417F0()
{
  if (!qword_2A1A61578)
  {
    sub_29DF41920();
    sub_29DF41978(&qword_2A1A5F0E0, &qword_2A1A5F138);
    sub_29DF41978(&qword_2A1A5F0F0, qword_2A1A5F148);
    sub_29DF41978(&qword_2A1A5F0E8, &qword_2A1A5F140);
    v0 = sub_29E2BFEA4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A61578);
    }
  }
}

void sub_29DF41920()
{
  if (!qword_2A1A5F0F8[0])
  {
    type metadata accessor for ReviewPregnancyInMedicalIDTileDismissalData(255);
    v0 = sub_29E2C4304();
    if (!v1)
    {
      atomic_store(v0, qword_2A1A5F0F8);
    }
  }
}

uint64_t sub_29DF41978(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_29DF41920();
    sub_29DF41A08(a2, type metadata accessor for ReviewPregnancyInMedicalIDTileDismissalData);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29DF41A08(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29DF41A88()
{
  if (!qword_2A1A5E058)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_29E2C45F4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E058);
    }
  }
}

uint64_t sub_29DF41B50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReviewPregnancyInMedicalIDTileDismissalData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DF41BB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29DF41C1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_29DF41C7C(void *a1)
{
  v3 = objc_opt_self();
  sub_29DE99B54();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29E2CE070;
  v5 = [v1 leadingAnchor];
  v6 = [a1 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  *(v4 + 32) = v7;
  v8 = [v1 topAnchor];
  v9 = [a1 topAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v4 + 40) = v10;
  v11 = [a1 trailingAnchor];
  v12 = [v1 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v4 + 48) = v13;
  v14 = [a1 bottomAnchor];
  v15 = [v1 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v4 + 56) = v16;
  sub_29DEB8834();
  v17 = sub_29E2C3604();

  [v3 activateConstraints_];

  return [v1 setTranslatesAutoresizingMaskIntoConstraints_];
}

double sub_29DF41EB4(double a1)
{
  v3 = [v1 window];
  if (!v3 || (v4 = v3, v5 = [v3 screen], v4, !v5))
  {
    v5 = [objc_opt_self() mainScreen];
  }

  [v5 scale];
  v7 = v6;

  return round(v7 * a1) / v7;
}

double sub_29DF41F64(uint64_t a1, double a2)
{
  v5 = sub_29E2C48F4();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x2A1C7C4A8](v5).n128_u64[0];
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v2 window];
  if (!v10 || (v11 = v10, v12 = [v10 screen], v11, !v12))
  {
    v12 = [objc_opt_self() mainScreen];
  }

  [v12 scale];
  v14 = v13;

  v15 = v14 * a2;
  v21 = v15;
  (*(v6 + 16))(v9, a1, v5);
  v16 = (*(v6 + 88))(v9, v5);
  if (v16 == *MEMORY[0x29EDC9EB8])
  {
    v17 = round(v15);
  }

  else if (v16 == *MEMORY[0x29EDC9EB0])
  {
    v17 = rint(v15);
  }

  else if (v16 == *MEMORY[0x29EDC9EC0])
  {
    v17 = ceil(v15);
  }

  else if (v16 == *MEMORY[0x29EDC9EC8])
  {
    v17 = floor(v15);
  }

  else if (v16 == *MEMORY[0x29EDC9EA0])
  {
    v17 = trunc(v15);
  }

  else if (v16 == *MEMORY[0x29EDC9EA8])
  {
    v17 = ceil(v15);
    v18 = floor(v15);
    if (v15 < 0.0)
    {
      v17 = v18;
    }
  }

  else
  {
    sub_29E2C3774();
    (*(v6 + 8))(v9, v5);
    v17 = v21;
  }

  return v17 / v14;
}

uint64_t sub_29DF421C4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_29DF42230(void *a1)
{
  v2 = v1;
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x2A1C7C4A8](v8).n128_u64[0];
  v11 = &v33 - v10;
  v12 = [a1 _ppt_didFetchAnalysis];
  v13 = [a1 _ppt_didFetchDaySummaries];
  if (v12)
  {
    v14 = v13 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = v13;
    sub_29E2C04B4();
    v16 = sub_29E2C0504();
    v17 = sub_29E2C3A34();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v34 = v19;
      *v18 = 136446466;
      if (v12)
      {
        v20 = 1702195828;
      }

      else
      {
        v20 = 0x65736C6166;
      }

      if (v12)
      {
        v21 = 0xE400000000000000;
      }

      else
      {
        v21 = 0xE500000000000000;
      }

      v22 = sub_29DFAA104(v20, v21, &v34);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2082;
      if (v15)
      {
        v23 = 1702195828;
      }

      else
      {
        v23 = 0x65736C6166;
      }

      if (v15)
      {
        v24 = 0xE400000000000000;
      }

      else
      {
        v24 = 0xE500000000000000;
      }

      v25 = sub_29DFAA104(v23, v24, &v34);

      *(v18 + 14) = v25;
      _os_log_impl(&dword_29DE74000, v16, v17, "[PPT] Still waiting for test data, did fetch analysis: %{public}s, did fetch summaries: %{public}s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v19, -1, -1);
      MEMORY[0x29ED82140](v18, -1, -1);
    }

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    sub_29E2C04B4();
    v27 = sub_29E2C0504();
    v28 = sub_29E2C3A34();
    if (os_log_type_enabled(v27, v28))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_29DE74000, v27, v28, "[PPT] Test data is loaded, finishing launch test", v30, 2u);
      MEMORY[0x29ED82140](v30, -1, -1);
    }

    (*(v5 + 8))(v11, v4);
    v31 = *(v2 + 16);
    v32 = sub_29E2C33A4();
    [v31 finishedTest_];

    return (*(v2 + 72))();
  }
}

uint64_t sub_29DF425C0(uint64_t a1)
{
  sub_29DF46558(0, qword_2A1A5EF20, type metadata accessor for SharedProjectionHighlightTileViewModelContextData, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31SharedSummaryTileViewController_projectionViewModel;
  swift_beginAccess();
  sub_29DF4647C(a1, &v1[v6]);
  swift_endAccess();
  if (![v1 isViewLoaded])
  {
    goto LABEL_6;
  }

  sub_29DF4629C(&v1[v6], v5);
  v7 = type metadata accessor for SharedProjectionHighlightTileViewModelContextData();
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_29DF46330(a1);
    v8 = v5;
    return sub_29DF46330(v8);
  }

  result = sub_29DF46330(v5);
  v10 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31SharedSummaryTileViewController_valueLabel];
  if (v10)
  {
    v11 = v10;
    sub_29DF4393C();
    v12 = sub_29E2C33A4();

    [v11 setText_];

LABEL_6:
    v8 = a1;
    return sub_29DF46330(v8);
  }

  __break(1u);
  return result;
}

id sub_29DF42790(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x29EDB9F78]) init];
    v6 = sub_29E2C33A4();
    [v5 setLocalizedDateFormatFromTemplate_];

    v7 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v8 = v3;
  return v4;
}

id sub_29DF42880(uint64_t *a1)
{
  v3 = v1;
  v4 = sub_29E2BCC84();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(v3 + *a1);
  if (v9)
  {
    v10 = *(v3 + *a1);
  }

  else
  {
    v11 = [objc_allocWithZone(MEMORY[0x29EDB9F78]) init];
    sub_29E2BCC74();
    v12 = sub_29E2BCC44();
    (*(v5 + 8))(v7, v4);
    [v11 setLocale_];

    v13 = sub_29E2C33A4();
    [v11 setLocalizedDateFormatFromTemplate_];

    v14 = *(v3 + v8);
    *(v3 + v8) = v11;
    v10 = v11;

    v9 = 0;
  }

  v15 = v9;
  return v10;
}

id sub_29DF42A00(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  swift_getObjectType();
  v7 = sub_29E2C0514();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31SharedSummaryTileViewController_valueLabel] = 0;
  v11 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31SharedSummaryTileViewController_projectionViewModel;
  v12 = type metadata accessor for SharedProjectionHighlightTileViewModelContextData();
  (*(*(v12 - 8) + 56))(&v4[v11], 1, 1, v12);
  v13 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31SharedSummaryTileViewController_calendarCache;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x29EDBAA50]) init];
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31SharedSummaryTileViewController____lazy_storage___dayDateFormatter] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31SharedSummaryTileViewController____lazy_storage___monthDateFormatter] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31SharedSummaryTileViewController____lazy_storage___yearDateFormatter] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31SharedSummaryTileViewController____lazy_storage___longMonthDayDateFormatter] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31SharedSummaryTileViewController____lazy_storage___monthDayYearDateFormatter] = 0;
  v14 = &v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31SharedSummaryTileViewController_context];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 4) = 0;
  if (a2)
  {
    v15 = sub_29E2C33A4();
  }

  else
  {
    v15 = 0;
  }

  v16 = type metadata accessor for SharedSummaryTileViewController();
  v36.receiver = v4;
  v36.super_class = v16;
  v17 = objc_msgSendSuper2(&v36, sel_initWithNibName_bundle_, v15, a3);

  v18 = v17;
  sub_29E2C04B4();
  v19 = sub_29E2C0504();
  v20 = sub_29E2C3A34();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v34 = a3;
    v35 = v22;
    v23 = v22;
    *v21 = 136446210;
    v24 = sub_29E2C4AE4();
    v33 = v7;
    v26 = sub_29DFAA104(v24, v25, &v35);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_29DE74000, v19, v20, "[%{public}s] Initializing", v21, 0xCu);
    sub_29DE93B3C(v23);
    v27 = v23;
    a3 = v34;
    MEMORY[0x29ED82140](v27, -1, -1);
    MEMORY[0x29ED82140](v21, -1, -1);

    (*(v8 + 8))(v10, v33);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  sub_29DF46558(0, &qword_2A1817FF0, sub_29DEA6B18, MEMORY[0x29EDC9E90]);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_29E2CAB20;
  v29 = sub_29E2C0B54();
  v30 = MEMORY[0x29EDC7870];
  *(v28 + 32) = v29;
  *(v28 + 40) = v30;
  sub_29E2C3C64();

  swift_unknownObjectRelease();

  return v18;
}

void sub_29DF42E40()
{
  v1 = v0;
  sub_29DF46558(0, qword_2A1A5EF20, type metadata accessor for SharedProjectionHighlightTileViewModelContextData, MEMORY[0x29EDC9C68]);
  *&v3 = MEMORY[0x2A1C7C4A8](v2 - 8).n128_u64[0];
  v5 = v56 - v4;
  v6 = [v0 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_23;
  }

  v7 = v6;
  v8 = objc_opt_self();
  v9 = [v8 clearColor];
  [v7 setBackgroundColor_];

  v10 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v11 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31SharedSummaryTileViewController_valueLabel;
  v12 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31SharedSummaryTileViewController_valueLabel];
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31SharedSummaryTileViewController_valueLabel] = v10;
  v13 = v10;

  if (!v13)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v13 setTranslatesAutoresizingMaskIntoConstraints_];

  v14 = *&v1[v11];
  if (!v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = v14;
  v16 = [v8 labelColor];
  [v15 setTextColor_];

  v17 = *&v1[v11];
  if (!v17)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v17 setNumberOfLines_];
  v18 = [v1 view];
  if (!v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (!*&v1[v11])
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v19 = v18;
  [v18 addSubview_];

  v20 = [v1 view];
  if (!v20)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v21 = v20;
  v22 = [v20 safeAreaLayoutGuide];

  v23 = [v1 view];
  if (!v23)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v25 = v23;
  LODWORD(v24) = 1144750080;
  [v23 setContentHuggingPriority:1 forAxis:v24];

  v26 = [v1 view];
  if (!v26)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v27 = v26;
  type metadata accessor for UILayoutPriority(0);
  v56[6] = 1065353216;
  v56[7] = 1148846080;
  sub_29DF46510(&qword_2A1A61A28, type metadata accessor for UILayoutPriority);
  sub_29E2C0534();
  LODWORD(v28) = v56[0];
  [v27 setContentCompressionResistancePriority:1 forAxis:v28];

  sub_29DE99B54();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_29E2CE070;
  v30 = *&v1[v11];
  if (!v30)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v31 = [v30 topAnchor];
  v32 = [v22 topAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  *(v29 + 32) = v33;
  v34 = *&v1[v11];
  if (!v34)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v35 = [v34 leadingAnchor];
  v36 = [v22 leadingAnchor];
  v37 = [v35 constraintEqualToAnchor:v36 constant:16.0];

  *(v29 + 40) = v37;
  v38 = *&v1[v11];
  if (!v38)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v39 = [v38 trailingAnchor];
  v40 = [v22 trailingAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:-16.0];

  *(v29 + 48) = v41;
  v42 = *&v1[v11];
  if (!v42)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v43 = objc_opt_self();
  v44 = [v42 bottomAnchor];
  v45 = [v22 bottomAnchor];
  v46 = [v44 constraintEqualToAnchor:v45 constant:-12.0];

  *(v29 + 56) = v46;
  sub_29DE9408C(0, &qword_2A1A61A10);
  v47 = sub_29E2C3604();

  [v43 activateConstraints_];

  v48 = *&v1[v11];
  if (!v48)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  sub_29DE9408C(0, &unk_2A1A61A00);
  v49 = v48;
  v50 = sub_29E2C3FD4();
  [v49 setFont_];

  if ([v1 isViewLoaded])
  {
    v51 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31SharedSummaryTileViewController_projectionViewModel;
    swift_beginAccess();
    sub_29DF4629C(&v1[v51], v5);
    v52 = type metadata accessor for SharedProjectionHighlightTileViewModelContextData();
    if ((*(*(v52 - 8) + 48))(v5, 1, v52) == 1)
    {

      sub_29DF46330(v5);
      return;
    }

    sub_29DF46330(v5);
    v53 = *&v1[v11];
    if (v53)
    {
      v54 = v53;
      sub_29DF4393C();
      v55 = sub_29E2C33A4();

      [v54 setText_];

      goto LABEL_20;
    }

LABEL_36:
    __break(1u);
    return;
  }

LABEL_20:
}

void sub_29DF43550()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_29E2C0514();
  v30 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v4 = &ObjectType - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF46558(0, qword_2A1A5EF20, type metadata accessor for SharedProjectionHighlightTileViewModelContextData, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &ObjectType - v6;
  v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31SharedSummaryTileViewController_context;
  swift_beginAccess();
  sub_29DF45C10(v1 + v8, v31);
  v9 = v32;
  if (v32)
  {
    v10 = sub_29DE966D4(v31, v32);
    v11 = *(v9 - 8);
    v12 = MEMORY[0x2A1C7C4A8](v10);
    v14 = &ObjectType - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14, v12);
    v15 = sub_29E2BF4C4();
    v17 = v16;
    (*(v11 + 8))(v14, v9);
    sub_29DE93B3C(v31);
    if (v17 >> 60 != 15)
    {
      v18 = objc_allocWithZone(MEMORY[0x29EDC44E8]);
      sub_29DF1DE4C(v15, v17);
      v19 = sub_29E2BC914();
      sub_29DF1DD38(v15, v17);
      v20 = [v18 initWithData_];

      if (v20)
      {
        v21 = v20;
        sub_29E179EA4(v21, v7);
        sub_29DF425C0(v7);
        sub_29DF1DD38(v15, v17);
      }

      else
      {
        sub_29E2C04B4();
        v22 = sub_29E2C0504();
        v23 = sub_29E2C3A14();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v31[0] = v25;
          *v24 = 136446210;
          v26 = sub_29E2C4AE4();
          v28 = sub_29DFAA104(v26, v27, v31);

          *(v24 + 4) = v28;
          _os_log_impl(&dword_29DE74000, v22, v23, "[%{public}s] Unable to decode plugin data to HKCodableMenstrualCyclesProjectionHighlightTileViewModel", v24, 0xCu);
          sub_29DE93B3C(v25);
          MEMORY[0x29ED82140](v25, -1, -1);
          MEMORY[0x29ED82140](v24, -1, -1);

          sub_29DF1DD38(v15, v17);
        }

        else
        {
          sub_29DF1DD38(v15, v17);
        }

        (*(v30 + 8))(v4, v2);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

char *sub_29DF4393C()
{
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v56 = sub_29E2C3384();
  v2 = *(v56 - 8);
  MEMORY[0x2A1C7C4A8](v56);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v47 - v6;
  v51 = sub_29E2BCBB4();
  v49 = *(v51 - 8);
  MEMORY[0x2A1C7C4A8](v51);
  v47 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E2BCEA4();
  v54 = *(v9 - 8);
  v55 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v53 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_29E2C31A4();
  v50 = *(v52 - 8);
  MEMORY[0x2A1C7C4A8](v52);
  v48 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF46558(0, qword_2A1A5EF20, type metadata accessor for SharedProjectionHighlightTileViewModelContextData, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v14 = &v47 - v13;
  v15 = type metadata accessor for SharedProjectionHighlightTileViewModelContextData();
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31SharedSummaryTileViewController_projectionViewModel;
  swift_beginAccess();
  sub_29DF4629C(v0 + v19, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_29DF46330(v14);
LABEL_11:
    sub_29E2C3314();
    v35 = v56;
    (*(v2 + 16))(v4, v7, v56);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v36 = qword_2A1A67F80;
    sub_29E2BCC74();
    v34 = sub_29E2C3414();
    (*(v2 + 8))(v7, v35);
    return v34;
  }

  sub_29DF463BC(v14, v18);
  if (!*v18)
  {
    sub_29DF46420(v18);
    goto LABEL_11;
  }

  v20 = v18[8];
  v21 = *v18;
  v22 = v21;
  if ((v20 & 1) == 0)
  {
    v37 = [v21 mostLikelyDays];
    v38 = [v22 mostLikelyDays];
    result = [v22 mostLikelyDays];
    v40 = &v38[v39];
    if (__OFADD__(v38, v39))
    {
      __break(1u);
    }

    else
    {
      v41 = (v40 - 1);
      if (!__OFSUB__(v40, 1))
      {
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  if ([v21 predictionPrimarySource] == 3 || objc_msgSend(v22, sel_predictionPrimarySource) == 4)
  {
    v23 = sub_29DF4283C();
    v24 = [v22 mostLikelyDays];
    result = [v22 mostLikelyDays];
    v27 = &v24[v26];
    if (!__OFADD__(v24, v26))
    {
      result = v27 - 1;
      if (!__OFSUB__(v27, 1))
      {
        v28 = v48;
        sub_29E2C30D4();
        v29 = [*(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31SharedSummaryTileViewController_calendarCache) currentCalendar];
        v30 = v53;
        sub_29E2BCDC4();

        v31 = v47;
        sub_29E2C3194();
        v32 = sub_29E2BCB04();
        (*(v49 + 8))(v31, v51);
        v33 = [v23 stringFromDate_];

        v34 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
        (*(v54 + 8))(v30, v55);
        (*(v50 + 8))(v28, v52);
LABEL_17:
        sub_29DF46420(v18);
        return v34;
      }

      goto LABEL_25;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v37 = [v22 mostLikelyDays];
  v44 = [v22 mostLikelyDays];
  result = [v22 mostLikelyDays];
  v46 = &v44[v45];
  if (__OFADD__(v44, v45))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v41 = (v46 - 1);
  if (!__OFSUB__(v46, 1))
  {
LABEL_16:
    v42 = [*(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31SharedSummaryTileViewController_calendarCache) currentCalendar];
    v43 = v53;
    sub_29E2BCDC4();

    v34 = sub_29DF44084(v37, v41, v43);
    (*(v54 + 8))(v43, v55);
    goto LABEL_17;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_29DF44084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v122 = a2;
  v4 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v113 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2C3384();
  v114 = *(v6 - 8);
  v115 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v124 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v112 = &v104 - v9;
  v119 = sub_29E2BCE84();
  v128 = *(v119 - 8);
  MEMORY[0x2A1C7C4A8](v119);
  v110 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_29E2BCEA4();
  v127 = *(v120 - 8);
  MEMORY[0x2A1C7C4A8](v120);
  v109 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E2C31A4();
  v121 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29E2BCBB4();
  v17 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v126 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v21 = &v104 - v20;
  MEMORY[0x2A1C7C4A8](v22);
  v129 = &v104 - v23;
  sub_29E2C30D4();
  v123 = a3;
  sub_29E2C3194();
  v24 = *(v13 + 8);
  v24(v15, v12);
  v25 = sub_29DF4283C();
  sub_29E2C30D4();
  sub_29E2C3194();
  v26 = sub_29E2BCB04();
  v27 = *(v17 + 8);
  v105 = v21;
  v117 = v17 + 8;
  v118 = v16;
  v116 = v27;
  v27(v21, v16);
  v28 = [v25 stringFromDate_];

  v108 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v111 = v29;

  v30 = v121;
  v24(v15, v121);
  sub_29E2C30D4();
  sub_29E2C3194();
  v107 = v13 + 8;
  v106 = v24;
  v24(v15, v30);
  v31 = v109;
  sub_29E2BCE44();
  v32 = v128;
  v33 = *(v128 + 104);
  v34 = v110;
  v35 = v119;
  v33(v110, *MEMORY[0x29EDB9CD0], v119);
  LOBYTE(v26) = sub_29E2BCE24();
  v36 = v32 + 8;
  v37 = *(v32 + 8);
  v38 = v34;
  v128 = v36;
  v37(v34, v35);
  v39 = *(v127 + 8);
  v127 += 8;
  v39(v31, v120);
  if (v26)
  {
    sub_29E2BCE44();
    v40 = v38;
    v41 = v119;
    v33(v38, *MEMORY[0x29EDB9CD8], v119);
    v42 = v126;
    v43 = sub_29E2BCE24();
    v37(v40, v41);
    v39(v31, v120);
    v44 = v42;
    if (v43)
    {

      v45 = v125;
      v46 = sub_29DF42778();
      v47 = sub_29E2BCB04();
      v48 = [v46 stringFromDate_];

      v49 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      v127 = v50;
      v128 = v49;

      v51 = sub_29DF42764();
      v52 = sub_29E2BCB04();
      v53 = [v51 stringFromDate_];

      v54 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      v56 = v55;

      v57 = *(v45 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31SharedSummaryTileViewController____lazy_storage___dayDateFormatter);
      v58 = sub_29E2BCB04();
      v59 = [v57 stringFromDate_];

      v60 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      v62 = v61;

      v63 = v112;
      sub_29E2C3314();
      v65 = v114;
      v64 = v115;
      (*(v114 + 16))(v124, v63, v115);
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v66 = qword_2A1A67F80;
      sub_29E2BCC74();
      sub_29E2C3414();
      (*(v65 + 8))(v63, v64);
      sub_29DF45BA8(0, &qword_2A1A61CA0, &qword_2A1A61C60, MEMORY[0x29EDCA100], MEMORY[0x29EDC9E90]);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_29E2CE0D0;
      v68 = MEMORY[0x29EDC99B0];
      *(v67 + 56) = MEMORY[0x29EDC99B0];
      v69 = sub_29DEB1A44();
      v70 = v127;
      *(v67 + 32) = v128;
      *(v67 + 40) = v70;
      *(v67 + 96) = v68;
      *(v67 + 104) = v69;
      *(v67 + 64) = v69;
      *(v67 + 72) = v54;
      *(v67 + 80) = v56;
      *(v67 + 136) = v68;
      *(v67 + 144) = v69;
      *(v67 + 112) = v60;
      *(v67 + 120) = v62;
      v71 = sub_29E2C3404();
      v72 = v118;
      v44 = v126;
    }

    else
    {
      v89 = *(v125 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31SharedSummaryTileViewController____lazy_storage___longMonthDayDateFormatter);
      v90 = sub_29E2BCB04();
      v91 = [v89 stringFromDate_];

      v92 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      v94 = v93;

      v95 = v112;
      sub_29E2C3314();
      v97 = v114;
      v96 = v115;
      (*(v114 + 16))(v124, v95, v115);
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v98 = qword_2A1A67F80;
      sub_29E2BCC74();
      sub_29E2C3414();
      (*(v97 + 8))(v95, v96);
      sub_29DF45BA8(0, &qword_2A1A61CA0, &qword_2A1A61C60, MEMORY[0x29EDCA100], MEMORY[0x29EDC9E90]);
      v99 = swift_allocObject();
      *(v99 + 16) = xmmword_29E2CD7A0;
      v100 = MEMORY[0x29EDC99B0];
      *(v99 + 56) = MEMORY[0x29EDC99B0];
      v101 = sub_29DEB1A44();
      v102 = v111;
      *(v99 + 32) = v108;
      *(v99 + 40) = v102;
      *(v99 + 96) = v100;
      *(v99 + 104) = v101;
      *(v99 + 64) = v101;
      *(v99 + 72) = v92;
      *(v99 + 80) = v94;
      v71 = sub_29E2C3404();
      v72 = v118;
    }

    v76 = v116;
  }

  else
  {
    v73 = sub_29DF42858();
    sub_29E2C30D4();
    v74 = v105;
    sub_29E2C3194();
    v75 = sub_29E2BCB04();
    v72 = v118;
    v76 = v116;
    v116(v74, v118);
    v77 = [v73 stringFromDate_];

    v78 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v80 = v79;

    v106(v15, v121);
    v81 = v112;
    sub_29E2C3314();
    v83 = v114;
    v82 = v115;
    (*(v114 + 16))(v124, v81, v115);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v84 = qword_2A1A67F80;
    sub_29E2BCC74();
    sub_29E2C3414();
    (*(v83 + 8))(v81, v82);
    sub_29DF45BA8(0, &qword_2A1A61CA0, &qword_2A1A61C60, MEMORY[0x29EDCA100], MEMORY[0x29EDC9E90]);
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_29E2CD7A0;
    v86 = MEMORY[0x29EDC99B0];
    *(v85 + 56) = MEMORY[0x29EDC99B0];
    v87 = sub_29DEB1A44();
    v88 = v111;
    *(v85 + 32) = v108;
    *(v85 + 40) = v88;
    *(v85 + 96) = v86;
    *(v85 + 104) = v87;
    *(v85 + 64) = v87;
    *(v85 + 72) = v78;
    *(v85 + 80) = v80;
    v71 = sub_29E2C3404();
    v44 = v126;
  }

  v76(v44, v72);
  v76(v129, v72);
  return v71;
}

uint64_t sub_29DF44D14()
{
  v1 = v0;
  sub_29DF46558(0, qword_2A1A5EF20, type metadata accessor for SharedProjectionHighlightTileViewModelContextData, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v29 - v3;
  v5 = type metadata accessor for SharedProjectionHighlightTileViewModelContextData();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31SharedSummaryTileViewController_context;
  swift_beginAccess();
  result = sub_29DF45C10(v1 + v9, v31);
  v11 = v32;
  if (v32)
  {
    v12 = sub_29DE966D4(v31, v32);
    v13 = *(v11 - 8);
    v14 = MEMORY[0x2A1C7C4A8](v12);
    v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v16, v14);
    v17 = sub_29E2BF484();
    (*(v13 + 8))(v16, v11);
    v18 = [v17 profileIdentifier];

    sub_29DE93B3C(v31);
    v19 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31SharedSummaryTileViewController_projectionViewModel;
    swift_beginAccess();
    sub_29DF4629C(v1 + v19, v4);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {

      sub_29DF46330(v4);
      return 0;
    }

    else
    {
      sub_29DF463BC(v4, v8);
      v21 = v8[8];
      v22 = type metadata accessor for SharedMenstrualCyclesProjectionDetailViewController();
      v23 = objc_allocWithZone(v22);
      v23[qword_2A1820D30] = v21;
      *&v23[qword_2A1820D38] = v18;
      v30.receiver = v23;
      v30.super_class = v22;
      v24 = v18;
      v25 = objc_msgSendSuper2(&v30, sel_initWithCollectionViewLayout_, 0);
      v26 = type metadata accessor for SharedMenstrualCyclesProjectionDetailDataSourceProvider();
      v27 = swift_allocObject();
      *(v27 + 16) = v21;
      *(v27 + 24) = v18;
      v32 = v26;
      v33 = sub_29DF46510(&qword_2A18192B8, type metadata accessor for SharedMenstrualCyclesProjectionDetailDataSourceProvider);
      v31[0] = v27;
      v28 = v24;
      v20 = v25;
      sub_29E2BF994();

      sub_29DF46420(v8);
    }

    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_29DF450BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedSummaryTileViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SharedSummaryTileViewController()
{
  result = qword_2A1A60330;
  if (!qword_2A1A60330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29DF45204()
{
  sub_29DF46558(319, qword_2A1A5EF20, type metadata accessor for SharedProjectionHighlightTileViewModelContextData, MEMORY[0x29EDC9C68]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_29DF452F0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31SharedSummaryTileViewController_context;
  swift_beginAccess();
  return sub_29DF45C10(v1 + v3, a1);
}

uint64_t sub_29DF45348(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31SharedSummaryTileViewController_context;
  swift_beginAccess();
  sub_29DF45B18(a1, v1 + v3);
  swift_endAccess();
  sub_29DF43550();
  return sub_29DF29790(a1);
}

void (*sub_29DF453B4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_29DF45418;
}

void sub_29DF45418(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_29DF43550();
  }
}

uint64_t sub_29DF454F8()
{
  sub_29DF46558(0, qword_2A1A5EF20, type metadata accessor for SharedProjectionHighlightTileViewModelContextData, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for SharedProjectionHighlightTileViewModelContextData();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31SharedSummaryTileViewController_projectionViewModel;
  swift_beginAccess();
  sub_29DF4629C(v0 + v8, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_29DF46330(v3);
    return 0;
  }

  else
  {
    sub_29DF463BC(v3, v7);
    v10 = sub_29E0362BC();
    sub_29DF46420(v7);
    return v10;
  }
}

uint64_t sub_29DF456A4()
{
  v1 = sub_29E2BE2A4();
  v2 = *(v1 - 8);
  v3 = (MEMORY[0x2A1C7C4A8])();
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v16[-v6];
  v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31SharedSummaryTileViewController_context;
  swift_beginAccess();
  result = sub_29DF45C10(v0 + v8, v17);
  v10 = v18;
  if (v18)
  {
    v11 = sub_29DE966D4(v17, v18);
    v12 = *(v10 - 8);
    MEMORY[0x2A1C7C4A8](v11);
    v14 = &v16[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v12 + 16))(v14);
    sub_29E2BF494();
    (*(v12 + 8))(v14, v10);
    (*(v2 + 104))(v5, *MEMORY[0x29EDC1D60], v1);
    LOBYTE(v14) = sub_29E2BE294();
    v15 = *(v2 + 8);
    v15(v5, v1);
    v15(v7, v1);
    sub_29DE93B3C(v17);
    return v14 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29DF4591C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C60E48](a1, WitnessTable);
}

uint64_t sub_29DF459AC()
{
  v1 = [*v0 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();

  return v3;
}

uint64_t sub_29DF45A14@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC2198];
  v3 = sub_29E2BEA74();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_29DF45B18(uint64_t a1, uint64_t a2)
{
  sub_29DF45BA8(0, &qword_2A1A61B90, &qword_2A1A61B98, MEMORY[0x29EDC2808], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_29DF45BA8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29DEB1BC4(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29DF45C10(uint64_t a1, uint64_t a2)
{
  sub_29DF45BA8(0, &qword_2A1A61B90, &qword_2A1A61B98, MEMORY[0x29EDC2808], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29DF45CA4(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31SharedSummaryTileViewController_valueLabel);
  if (v1)
  {
    sub_29DE9408C(0, &unk_2A1A61A00);
    v2 = v1;
    v3 = sub_29E2C3FD4();
    [v2 setFont_];
  }

  else
  {
    __break(1u);
  }
}

void sub_29DF45D70()
{
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31SharedSummaryTileViewController_valueLabel) = 0;
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31SharedSummaryTileViewController_projectionViewModel;
  v2 = type metadata accessor for SharedProjectionHighlightTileViewModelContextData();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31SharedSummaryTileViewController_calendarCache;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x29EDBAA50]) init];
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31SharedSummaryTileViewController____lazy_storage___dayDateFormatter) = 0;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31SharedSummaryTileViewController____lazy_storage___monthDateFormatter) = 0;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31SharedSummaryTileViewController____lazy_storage___yearDateFormatter) = 0;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31SharedSummaryTileViewController____lazy_storage___longMonthDayDateFormatter) = 0;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31SharedSummaryTileViewController____lazy_storage___monthDayYearDateFormatter) = 0;
  v4 = v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31SharedSummaryTileViewController_context;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  sub_29E2C4724();
  __break(1u);
}

void sub_29DF45E9C()
{
  v1 = v0;
  v2 = sub_29E2BE2A4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v21[-v7];
  v9 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31SharedSummaryTileViewController_context;
  swift_beginAccess();
  sub_29DF45C10(v1 + v9, v22);
  v10 = v23;
  if (v23)
  {
    v11 = sub_29DE966D4(v22, v23);
    v12 = *(v10 - 8);
    v13 = MEMORY[0x2A1C7C4A8](v11);
    v15 = &v21[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v12 + 16))(v15, v13);
    sub_29E2BF494();
    (*(v12 + 8))(v15, v10);
    (*(v3 + 104))(v5, *MEMORY[0x29EDC1D60], v2);
    LOBYTE(v15) = sub_29E2BE294();
    v16 = *(v3 + 8);
    v16(v5, v2);
    v16(v8, v2);
    sub_29DE93B3C(v22);
    if ((v15 & 1) == 0)
    {
      v17 = sub_29DF44D14();
      if (v17)
      {
        v18 = v17;
        v19 = [v1 navigationController];
        if (v19)
        {
          v20 = v19;
          [v19 pushViewController:v18 animated:1];
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29DF46138(uint64_t (*a1)(uint64_t))
{
  v2 = sub_29E2BE194();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BE174();
  v7 = sub_29E2BD664();
  if (*(v6 + 16))
  {
    v9 = sub_29DECF000(v7, v8);
    v11 = v10;

    if (v11)
    {
      (*(v3 + 16))(v5, *(v6 + 56) + *(v3 + 72) * v9, v2);

      v13 = a1(v12);
      (*(v3 + 8))(v5, v2);
      return v13;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_29DF4629C(uint64_t a1, uint64_t a2)
{
  sub_29DF46558(0, qword_2A1A5EF20, type metadata accessor for SharedProjectionHighlightTileViewModelContextData, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DF46330(uint64_t a1)
{
  sub_29DF46558(0, qword_2A1A5EF20, type metadata accessor for SharedProjectionHighlightTileViewModelContextData, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29DF463BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedProjectionHighlightTileViewModelContextData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DF46420(uint64_t a1)
{
  v2 = type metadata accessor for SharedProjectionHighlightTileViewModelContextData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29DF4647C(uint64_t a1, uint64_t a2)
{
  sub_29DF46558(0, qword_2A1A5EF20, type metadata accessor for SharedProjectionHighlightTileViewModelContextData, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DF46510(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29DF46558(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29DF465C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29E2C4404();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_29DF4907C(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = sub_29E2BCFB4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_29DF4667C(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_29E2C4434();
    v5 = v4;
    v6 = sub_29E2C44E4();
    v8 = v7;
    v9 = MEMORY[0x29ED80C20](v3, v5, v6, v7);
    sub_29DF49948(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_29DF49948(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_29E2C4404();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_29DF4913C(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_29DF49948(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_29DF46798(uint64_t a1)
{
  v2 = sub_29E2C4404();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_29DF4933C(v2, *(a1 + 36), 0, a1);
  }
}

void sub_29DF46814()
{
  *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26MenstrualCyclesAppDelegate_healthStore] = 0;
  *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26MenstrualCyclesAppDelegate_healthSharingNotificationSyncStore] = 0;
  *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26MenstrualCyclesAppDelegate_healthSharingNotificationContentStateManager] = 0;
  v1 = [objc_opt_self() sharedBehavior];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 features];

    if (v3)
    {
      v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26MenstrualCyclesAppDelegate_shouldDismissNotificationsUrgently;
      v5 = [v3 urgentNotificationDismiss];

      v0[v4] = v5;
      *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26MenstrualCyclesAppDelegate_cancellables] = MEMORY[0x29EDCA1A0];
      v6.receiver = v0;
      v6.super_class = type metadata accessor for MenstrualCyclesAppDelegate();
      objc_msgSendSuper2(&v6, sel_init);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_29DF46928()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MenstrualCyclesAppDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_29DF469EC()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_29DF46A20()
{
  v1 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26MenstrualCyclesAppDelegate_healthStore);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26MenstrualCyclesAppDelegate_healthStore);
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  }

  v3 = objc_allocWithZone(MEMORY[0x29EDC3360]);
  v4 = v1;
  v5 = [v3 initWithHealthStore_];
  v6 = [objc_allocWithZone(MEMORY[0x29EDC33E0]) initWithHealthStore_];
  v7 = objc_allocWithZone(type metadata accessor for InternalSettingsTableViewController());
  v8 = sub_29E097D94(v2, v5, v6);

  return v8;
}

void sub_29DF46AF8(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v126 = sub_29E2BF344();
  v124 = *(v126 - 8);
  MEMORY[0x2A1C7C4A8](v126);
  v123 = &v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_29E2C0514();
  v5 = *(v136 - 8);
  MEMORY[0x2A1C7C4A8](v136);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v120 - v7;
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v120 - v10;
  MEMORY[0x2A1C7C4A8](v12);
  v130 = &v120 - v13;
  MEMORY[0x2A1C7C4A8](v14);
  v125 = &v120 - v15;
  v16 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v16 - 8);
  v129 = &v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v128 = &v120 - v19;
  MEMORY[0x2A1C7C4A8](v20);
  v127 = &v120 - v21;
  sub_29DF498E4(0, &qword_2A18192E8, MEMORY[0x29EDC2238], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v22 - 8);
  v24 = &v120 - v23;
  v25 = sub_29E2BEB54();
  v133 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25);
  v131 = &v120 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BF334();
  v27 = sub_29E2BE5E4();
  v29 = v28;
  v30 = sub_29E2BE5E4();
  v132 = v25;
  if (v27 == v30 && v29 == v31)
  {
    goto LABEL_3;
  }

  v32 = sub_29E2C4914();

  if ((v32 & 1) == 0)
  {
    sub_29E2BF334();
    v58 = sub_29E2BE5E4();
    v60 = v59;
    if (v58 == sub_29E2BE5E4() && v60 == v61)
    {
LABEL_3:

      goto LABEL_5;
    }

    v62 = sub_29E2C4914();

    if ((v62 & 1) == 0)
    {

      sub_29E2770E4(a1, a2);
      return;
    }
  }

LABEL_5:
  v135 = v5;
  v33 = sub_29E2BF314();
  v34 = sub_29E2C3954();

  v137 = a1;
  sub_29DF4938C(a1);

  sub_29E2BDCA4();
  v35 = MEMORY[0x29ED7A440]();
  v36 = sub_29E2BDC64();

  [v35 setPredicate_];

  sub_29E2BF2F4();
  sub_29DE966D4(v138, v138[3]);
  v37 = v35;
  v38 = sub_29E2BD144();
  v39 = sub_29E2C3E64();

  sub_29DE93B3C(v138);
  if (v39 >> 62)
  {
    v112 = sub_29E2C4484();
    v40 = v137;
    if (v112)
    {
      goto LABEL_7;
    }

LABEL_36:

    sub_29E2C04B4();
    v113 = sub_29E2C0504();
    v114 = sub_29E2C3A14();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v138[0] = v116;
      *v115 = 136446210;
      v117 = sub_29E2C4AE4();
      v119 = sub_29DFAA104(v117, v118, v138);

      *(v115 + 4) = v119;
      _os_log_impl(&dword_29DE74000, v113, v114, "[%{public}s] Failed to get feed item from fetch request. Routing to standard data type detail room.", v115, 0xCu);
      sub_29DE93B3C(v116);
      MEMORY[0x29ED82140](v116, -1, -1);
      MEMORY[0x29ED82140](v115, -1, -1);
    }

    (*(v135 + 8))(v8, v136);
    sub_29E2770E4(v137, a2);

    return;
  }

  v40 = v137;
  if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_36;
  }

LABEL_7:
  if ((v39 & 0xC000000000000001) != 0)
  {
    v41 = MEMORY[0x29ED80D70](0, v39);
  }

  else
  {
    if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v41 = *(v39 + 32);
  }

  v42 = v41;

  v43 = [v42 userData];
  if (v43)
  {
    v44 = v43;
    v45 = sub_29E2BC924();
    v47 = v46;

    sub_29DF1DE4C(v45, v47);
    sub_29E2BEB24();
    v121 = v45;
    v122 = v47;
    v64 = v132;
    v63 = v133;
    (*(v133 + 56))(v24, 0, 1, v132);
    (*(v63 + 32))(v131, v24, v64);
    objc_opt_self();
    v65 = swift_dynamicCastObjCClass();
    if (v65)
    {
      v66 = v65;
      v120 = v40;
      v67 = sub_29DF3D08C();
      if ((v68 & 1) == 0)
      {
        v130 = v67;
        v80 = sub_29E2BF314();
        v81 = [objc_allocWithZone(MEMORY[0x29EDBAE38]) initWithHealthStore_];

        v82 = v127;
        sub_29E2BEB44();
        v83 = v128;
        sub_29E2BEB34();
        v84 = sub_29E2BF314();
        v137 = v81;
        v85 = v129;
        sub_29E2BCB54();
        type metadata accessor for DeviationDetailViewModel();
        swift_allocObject();
        v86 = sub_29DEAE674(v82, v83, v130, v84, v81, 0, v85);
        if (HKShowSensitiveLogItems())
        {
          v130 = v42;
          v87 = v125;
          sub_29E2C04B4();
          v88 = v124;
          v89 = v123;
          v90 = v126;
          (*(v124 + 16))(v123, a2, v126);
          v91 = v120;
          v92 = sub_29E2C0504();
          v93 = sub_29E2C3A34();

          if (os_log_type_enabled(v92, v93))
          {
            v94 = swift_slowAlloc();
            v129 = v37;
            v95 = v94;
            v128 = swift_slowAlloc();
            v138[0] = v128;
            *v95 = 136446722;
            v96 = sub_29E2C4AE4();
            v98 = sub_29DFAA104(v96, v97, v138);

            *(v95 + 4) = v98;
            *(v95 + 12) = 2080;
            v99 = v91;
            v100 = [v66 description];
            v101 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
            v103 = v102;

            v104 = sub_29DFAA104(v101, v103, v138);

            *(v95 + 14) = v104;
            *(v95 + 22) = 2080;
            sub_29E2BF334();
            v105 = sub_29E2BE5E4();
            v107 = v106;
            (*(v88 + 8))(v89, v126);
            v108 = sub_29DFAA104(v105, v107, v138);

            *(v95 + 24) = v108;
            _os_log_impl(&dword_29DE74000, v92, v93, "[%{public}s] Presenting custom detail for %s in mode %s", v95, 0x20u);
            v109 = v128;
            swift_arrayDestroy();
            MEMORY[0x29ED82140](v109, -1, -1);
            v110 = v95;
            v37 = v129;
            MEMORY[0x29ED82140](v110, -1, -1);

            (*(v135 + 8))(v125, v136);
          }

          else
          {

            (*(v88 + 8))(v89, v90);
            (*(v135 + 8))(v87, v136);
          }

          v64 = v132;
          v42 = v130;
        }

        v111 = objc_allocWithZone(type metadata accessor for DeviationCustomDetailViewController());
        sub_29DF35C08(v86);

        sub_29DEB5BF8(v121, v122);
        goto LABEL_34;
      }
    }

    v69 = v130;
    sub_29E2C04B4();
    v70 = sub_29E2C0504();
    v71 = sub_29E2C3A14();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = v42;
      v74 = swift_slowAlloc();
      v138[0] = v74;
      *v72 = 136446210;
      v75 = sub_29E2C4AE4();
      v77 = v37;
      v78 = sub_29DFAA104(v75, v76, v138);

      *(v72 + 4) = v78;
      v37 = v77;
      _os_log_impl(&dword_29DE74000, v70, v71, "[%{public}s] Could not get deviation type. Routing to standard data type detail room", v72, 0xCu);
      sub_29DE93B3C(v74);
      v79 = v74;
      v42 = v73;
      MEMORY[0x29ED82140](v79, -1, -1);
      MEMORY[0x29ED82140](v72, -1, -1);

      (*(v135 + 8))(v130, v136);
    }

    else
    {

      (*(v135 + 8))(v69, v136);
    }

    sub_29E2770E4(v137, a2);

    sub_29DEB5BF8(v121, v122);
LABEL_34:
    (*(v133 + 8))(v131, v64);
    return;
  }

  sub_29E2C04B4();
  v48 = sub_29E2C0504();
  v49 = sub_29E2C3A14();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = v42;
    v52 = swift_slowAlloc();
    v138[0] = v52;
    *v50 = 136446210;
    v53 = sub_29E2C4AE4();
    v55 = v37;
    v56 = sub_29DFAA104(v53, v54, v138);

    *(v50 + 4) = v56;
    v37 = v55;
    _os_log_impl(&dword_29DE74000, v48, v49, "[%{public}s] Failed to get userData from feed item. Routing to standard data type detail room.", v50, 0xCu);
    sub_29DE93B3C(v52);
    v57 = v52;
    v42 = v51;
    MEMORY[0x29ED82140](v57, -1, -1);
    MEMORY[0x29ED82140](v50, -1, -1);
  }

  (*(v135 + 8))(v11, v136);
  sub_29E2770E4(v137, a2);
}

uint64_t sub_29DF47A44@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  swift_getObjectType();
  v3 = sub_29E2BD234();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF498A4(&qword_2A18192F0);
  v7 = sub_29E2BF724();
  v17[1] = v8;
  v17[2] = v7;
  v17[0] = sub_29E2BF744();
  if (sub_29E2BDBF4())
  {
    sub_29E2BFD44();
  }

  v9 = sub_29E2BDC84();
  sub_29DF4667C(v9);

  sub_29E2BDC44();
  v10 = [a1 uniqueIdentifier];
  v11 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v13 = v12;

  sub_29DF47C94(v11, v13);

  (*(v4 + 104))(v6, *MEMORY[0x29EDC36E0], v3);
  v14 = v18;
  sub_29E2BF844();
  v15 = sub_29E2BF854();
  return (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
}

uint64_t sub_29DF47C94(uint64_t a1, unint64_t a2)
{
  swift_getObjectType();
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1;
  v28 = a2;
  v25 = 0xD000000000000032;
  v26 = 0x800000029E2F2870;
  sub_29DE9DE68();
  if (sub_29E2C43A4())
  {
    sub_29DF498E4(0, &qword_2A1A5E018, MEMORY[0x29EDC2E38], MEMORY[0x29EDC9E90]);
    v8 = sub_29E2BFD24();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_29E2CAB20;
    v12 = MEMORY[0x29EDC2E10];
LABEL_5:
    v13 = *v12;
    v14 = sub_29E2BFD14();
    (*(*(v14 - 8) + 104))(v11 + v10, v13, v14);
    (*(v9 + 104))(v11 + v10, *MEMORY[0x29EDC2E20], v8);
    return v11;
  }

  v27 = a1;
  v28 = a2;
  v25 = 0xD000000000000033;
  v26 = 0x800000029E2F28B0;
  if (sub_29E2C43A4())
  {
    sub_29DF498E4(0, &qword_2A1A5E018, MEMORY[0x29EDC2E38], MEMORY[0x29EDC9E90]);
    v8 = sub_29E2BFD24();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_29E2CAB20;
    v12 = MEMORY[0x29EDC2E18];
    goto LABEL_5;
  }

  sub_29E2C04B4();
  sub_29E2BF404();
  v15 = sub_29E2C0504();
  v16 = sub_29E2C3A14();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v27 = v24;
    *v17 = 136315394;
    v18 = sub_29E2C4AE4();
    v20 = sub_29DFAA104(v18, v19, &v27);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_29DFAA104(a1, a2, &v27);
    _os_log_impl(&dword_29DE74000, v15, v16, "[%s] Could not find authorization category for feed item identifier %s)", v17, 0x16u);
    v21 = v24;
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v21, -1, -1);
    MEMORY[0x29ED82140](v17, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return MEMORY[0x29EDCA190];
}

uint64_t sub_29DF48110(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v2 = sub_29E2C0514();
  v49 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2BFD24();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v47 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v45 - v9;
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v45 - v12;
  v15 = MEMORY[0x2A1C7C4A8](v14);
  v17 = &v45 - v16;
  v18 = *(v6 + 16);
  v18(&v45 - v16, a1, v5, v15);
  if ((*(v6 + 88))(v17, v5) == *MEMORY[0x29EDC2E20])
  {
    v46 = v4;
    v50 = v17;
    (v18)(v13, v17, v5);
    (*(v6 + 96))(v13, v5);
    v19 = sub_29E2BFD14();
    v20 = *(v19 - 8);
    v21 = (*(v20 + 88))(v13, v19);
    if (v21 == *MEMORY[0x29EDC2E18])
    {
      v22 = sub_29E2BD274();
      v23 = sub_29E2BD254();
      v24 = 0x800000029E2F28B0;
      v53 = 95;
      v54 = 0xE100000000000000;
      MEMORY[0x29ED7FCC0](v23);

      v25 = 0xD000000000000033;
LABEL_6:
      v51 = v25;
      v52 = v24;
      v51 = sub_29E2C3564();
      v52 = v27;
      sub_29E2C34E4();

      v28 = v51;
      v17 = v50;
      goto LABEL_12;
    }

    if (v21 == *MEMORY[0x29EDC2E10])
    {
      v22 = sub_29E2BD274();
      v26 = sub_29E2BD254();
      v24 = 0x800000029E2F2870;
      v53 = 95;
      v54 = 0xE100000000000000;
      MEMORY[0x29ED7FCC0](v26);

      v25 = 0xD000000000000032;
      goto LABEL_6;
    }

    (*(v20 + 8))(v13, v19);
    v17 = v50;
    v4 = v46;
  }

  sub_29E2C04B4();
  (v18)(v10, a1, v5);
  v29 = sub_29E2C0504();
  v30 = sub_29E2C3A14();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v50 = v17;
    v32 = v31;
    v45 = swift_slowAlloc();
    v53 = v45;
    *v32 = 136315394;
    v33 = sub_29E2C4AE4();
    ObjectType = v2;
    v35 = sub_29DFAA104(v33, v34, &v53);
    v46 = v4;
    v36 = v30;
    v37 = v35;

    *(v32 + 4) = v37;
    *(v32 + 12) = 2080;
    (v18)(v47, v10, v5);
    v38 = sub_29E2C3424();
    v40 = v39;
    (*(v6 + 8))(v10, v5);
    v41 = sub_29DFAA104(v38, v40, &v53);

    *(v32 + 14) = v41;
    _os_log_impl(&dword_29DE74000, v29, v36, "[%s] Could not find feed item identifier for authorizationIdentifier %s", v32, 0x16u);
    v42 = v45;
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v42, -1, -1);
    v43 = v32;
    v17 = v50;
    MEMORY[0x29ED82140](v43, -1, -1);

    (*(v49 + 8))(v46, ObjectType);
  }

  else
  {

    (*(v6 + 8))(v10, v5);
    (*(v49 + 8))(v4, v2);
  }

  v28 = 0;
LABEL_12:
  (*(v6 + 8))(v17, v5);
  return v28;
}

uint64_t sub_29DF486D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  ObjectType = swift_getObjectType();
  v3 = sub_29E2C0514();
  v79 = *(v3 - 8);
  v80 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v68 - v7;
  v9 = sub_29E2BD234();
  v73 = *(v9 - 8);
  v74 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v72 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v71 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E2C3384();
  v70 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v18 = &v68 - v17;
  v19 = sub_29E2BFD24();
  v20 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23);
  v25 = &v68 - v24;
  v26 = [objc_opt_self() categoryWithID_];
  if (v26)
  {
    v75 = v26;
    v27 = *(v20 + 16);
    v69 = a1;
    v28 = a1;
    v29 = v27;
    (v27)(v25, v28, v19);
    v78 = v20;
    v30 = (*(v20 + 88))(v25, v19);
    v31 = *MEMORY[0x29EDC2E20];
    v32 = v25;
    v33 = v81;
    v76 = v19;
    if (v30 == v31)
    {
      v68 = v32;
      v29(v22);
      (*(v78 + 96))(v22, v19);
      v34 = sub_29E2BFD14();
      v35 = *(v34 - 8);
      v36 = (*(v35 + 88))(v22, v34);
      if (v36 == *MEMORY[0x29EDC2E18])
      {
        v37 = v29;
        if (qword_2A1A62788 != -1)
        {
          swift_once();
        }

        v38 = qword_2A1A67F80;
        sub_29E2C3394();
        sub_29E2BCC74();
        sub_29E2C3414();
LABEL_14:
        sub_29DF498E4(0, &qword_2A1A5E018, MEMORY[0x29EDC2E38], MEMORY[0x29EDC9E90]);
        v51 = v78;
        v52 = (*(v78 + 80) + 32) & ~*(v78 + 80);
        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_29E2CAB20;
        v54 = v53 + v52;
        v55 = v76;
        v37(v54, v69, v76);
        (*(v73 + 104))(v72, *MEMORY[0x29EDC36E0], v74);
        v56 = v81;
        sub_29E2BF844();
        v57 = sub_29E2BF854();
        (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
        return (*(v51 + 8))(v68, v55);
      }

      if (v36 == *MEMORY[0x29EDC2E10])
      {
        v37 = v29;
        if (qword_2A1A62788 != -1)
        {
          swift_once();
        }

        v49 = qword_2A1A67F80;
        sub_29E2C3314();
        v50 = v70;
        (*(v70 + 16))(v15, v18, v13);
        sub_29E2BCC74();
        sub_29E2C3414();
        (*(v50 + 8))(v18, v13);
        goto LABEL_14;
      }

      (*(v35 + 8))(v22, v34);
      v33 = v81;
      v32 = v68;
    }

    v58 = v32;
    sub_29E2C04B4();
    v59 = sub_29E2C0504();
    v60 = sub_29E2C3A14();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v82 = v62;
      *v61 = 136315138;
      v63 = sub_29E2C4AE4();
      v65 = sub_29DFAA104(v63, v64, &v82);

      *(v61 + 4) = v65;
      _os_log_impl(&dword_29DE74000, v59, v60, "[%s] Could not find authorization display name", v61, 0xCu);
      sub_29DE93B3C(v62);
      MEMORY[0x29ED82140](v62, -1, -1);
      MEMORY[0x29ED82140](v61, -1, -1);
    }

    else
    {
    }

    (*(v79 + 8))(v8, v80);
    v66 = v78;
    v67 = sub_29E2BF854();
    (*(*(v67 - 8) + 56))(v33, 1, 1, v67);
    return (*(v66 + 8))(v58, v76);
  }

  else
  {
    sub_29E2C04B4();
    v39 = sub_29E2C0504();
    v40 = sub_29E2C3A14();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v82 = v42;
      *v41 = 136315138;
      v43 = sub_29E2C4AE4();
      v45 = sub_29DFAA104(v43, v44, &v82);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_29DE74000, v39, v40, "[%s] Could not create display category controller", v41, 0xCu);
      sub_29DE93B3C(v42);
      MEMORY[0x29ED82140](v42, -1, -1);
      MEMORY[0x29ED82140](v41, -1, -1);
    }

    (*(v79 + 8))(v5, v80);
    v46 = v81;
    v47 = sub_29E2BF854();
    return (*(*(v47 - 8) + 56))(v46, 1, 1, v47);
  }
}

uint64_t sub_29DF4907C@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
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
  v7 = sub_29E2BCFB4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

void sub_29DF4913C(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x29ED80C70](a1, a2, v7);
      sub_29DF49954();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_29DF49954();
    if (sub_29E2C4464() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_29E2C4474();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_29E2C40C4();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_29E2C40D4();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

uint64_t sub_29DF4933C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
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
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_29DF4938C(void *a1)
{
  sub_29E2C4584();

  v2 = [a1 identifier];
  v3 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v5 = v4;

  MEMORY[0x29ED7FCC0](v3, v5);

  MEMORY[0x29ED7FCC0](0x656C69666F72705FLL, 0xE90000000000005FLL);
  v6 = sub_29E2BD254();
  MEMORY[0x29ED7FCC0](v6);

  return 0x5F7472656C61;
}

void sub_29DF49474(void *a1, uint64_t a2)
{
  v4 = sub_29E2BF344();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v28 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DeviationSampleDataTypeDetailConfigurationProvider();
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E2BF354();
  v27 = *(v10 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v5 + 16);
  v14(v9, a2, v4, v11);
  v29 = a1;
  v15 = v30;
  sub_29DECE9A4(a1, v13);
  sub_29DF49848(v9);
  if (v15)
  {
    return;
  }

  v26 = 0;
  v30 = v13;
  sub_29E2BF194();
  (v14)(v28, a2, v4);
  objc_allocWithZone(sub_29E2BF9D4());
  v16 = v29;
  v17 = sub_29E2BF9C4();
  v18 = sub_29E2BF314();
  v19 = [v18 displayTypeController];

  if (!v19)
  {
    __break(1u);
    goto LABEL_9;
  }

  v20 = [v19 displayTypeForObjectType_];

  if (!v20)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v21 = [v20 localization];

  v22 = [v21 displayName];
  v23 = v10;
  v24 = v27;
  v25 = v30;
  if (!v22)
  {
    _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v22 = sub_29E2C33A4();
  }

  [v17 setTitle_];

  (*(v24 + 8))(v25, v23);
}

uint64_t sub_29DF497BC(uint64_t a1)
{
  sub_29DF498E4(0, &qword_2A18192E8, MEMORY[0x29EDC2238], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29DF49848(uint64_t a1)
{
  v2 = type metadata accessor for DeviationSampleDataTypeDetailConfigurationProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29DF498A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MenstrualCyclesAppDelegate();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29DF498E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29DF49948(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_29DF49954()
{
  result = qword_2A1A61DB0;
  if (!qword_2A1A61DB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A61DB0);
  }

  return result;
}

char *sub_29DF499A0(uint64_t a1)
{
  v2 = sub_29E2BE194();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BF344();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E2BE8F4();
  v10 = sub_29E2C3954();

  v11 = sub_29E2BD274();
  v12 = sub_29E2BD264();

  if (v12)
  {
    sub_29E2BE8D4();
    sub_29E2BE8F4();
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_29E2BF304();
    v13 = objc_allocWithZone(type metadata accessor for MenstrualCyclesRoomViewController());
    result = sub_29E0A6D80(v8);
    result[qword_2A1840F60] = 6;
  }

  else
  {
    (*(v3 + 16))(v5, a1, v2);
    sub_29E2BE8F4();
    sub_29E2BE8D4();
    sub_29E2BE904();
    v15 = objc_allocWithZone(sub_29E2BEBD4());
    return sub_29E2BEBC4();
  }

  return result;
}

uint64_t sub_29DF49BB8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_29DF49BFC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  return v1;
}

uint64_t sub_29DF49C70()
{
  swift_getObjectType();
  v0 = sub_29E2C4AE4();
  MEMORY[0x29ED7FCC0](v0);

  MEMORY[0x29ED7FCC0](58, 0xE100000000000000);
  sub_29E2C4664();
  return 0;
}

void sub_29DF49D08()
{
  swift_getObjectType();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = objc_allocWithZone(MEMORY[0x29EDC3368]);
  v18 = sub_29DF4B388;
  v19 = v1;
  aBlock = MEMORY[0x29EDCA5F8];
  v15 = 1107296256;
  v16 = sub_29DF4B010;
  v17 = &unk_2A24B4930;
  v3 = _Block_copy(&aBlock);

  v4 = [v2 initWithUpdateHandler_];
  _Block_release(v3);

  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37MenstrualCyclesAnalysisChangeDetector_analysisQuery;
  v6 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37MenstrualCyclesAnalysisChangeDetector_analysisQuery);
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37MenstrualCyclesAnalysisChangeDetector_analysisQuery) = v4;

  v7 = *(v0 + v5);
  if (v7)
  {
    aBlock = 0;
    v15 = 0xE000000000000000;
    v8 = v7;
    v9 = sub_29E2C4AE4();
    MEMORY[0x29ED7FCC0](v9);

    MEMORY[0x29ED7FCC0](58, 0xE100000000000000);
    sub_29E2C4664();
    v10 = sub_29E2C33A4();

    [v8 setDebugIdentifier_];

    v11 = *(v0 + v5);
    if (v11)
    {
      v12 = v11;
      sub_29E2BD5A4();
      sub_29DE966D4(&aBlock, v17);
      v13 = sub_29E2BD4E4();
      [v13 executeQuery_];

      sub_29DE93B3C(&aBlock);
    }
  }
}

id sub_29DF49F40()
{
  ObjectType = swift_getObjectType();
  v2 = sub_29E2BD624();
  v28 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2C0514();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v9 = v0;
  v10 = sub_29E2C0504();
  v11 = sub_29E2C3A34();

  v12 = os_log_type_enabled(v10, v11);
  v29 = ObjectType;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v27 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v26 = v5;
    v16 = v15;
    v31 = v15;
    v32 = 0;
    *v14 = 136446210;
    v33 = 0xE000000000000000;
    v17 = sub_29E2C4AE4();
    MEMORY[0x29ED7FCC0](v17);

    MEMORY[0x29ED7FCC0](58, 0xE100000000000000);
    v30 = v9;
    sub_29E2C4664();
    v18 = sub_29DFAA104(v32, v33, &v31);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_29DE74000, v10, v11, "[%{public}s] Deallocated", v14, 0xCu);
    sub_29DE93B3C(v16);
    MEMORY[0x29ED82140](v16, -1, -1);
    v19 = v14;
    v2 = v27;
    MEMORY[0x29ED82140](v19, -1, -1);

    (*(v6 + 8))(v8, v26);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v20 = *&v9[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37MenstrualCyclesAnalysisChangeDetector_analysisQuery];
  if (v20)
  {
    v21 = v28;
    (*(v28 + 16))(v4, &v9[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37MenstrualCyclesAnalysisChangeDetector_generatorContext], v2);
    v22 = v20;
    sub_29E2BD5A4();
    (*(v21 + 8))(v4, v2);
    sub_29DE966D4(&v32, v34);
    v23 = sub_29E2BD4E4();
    [v23 stopQuery_];

    sub_29DE93B3C(&v32);
  }

  v35.receiver = v9;
  v35.super_class = v29;
  return objc_msgSendSuper2(&v35, sel_dealloc);
}

uint64_t type metadata accessor for MenstrualCyclesAnalysisChangeDetector()
{
  result = qword_2A1A623E8;
  if (!qword_2A1A623E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29DF4A4CC(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_29E2C0514();
  v46 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v40[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_29E2C2B34();
  v48 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v40[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v47 = sub_29E2C2B54();
  v12 = *(v47 - 8);
  MEMORY[0x2A1C7C4A8](v47);
  v14 = &v40[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v45 = a1;
    if (a2)
    {
      v17 = swift_allocObject();
      *(v17 + 16) = v16;
      *(v17 + 24) = a2;
      v54 = sub_29DF4B4F4;
      v55 = v17;
      aBlock = MEMORY[0x29EDCA5F8];
      v51 = 1107296256;
      v52 = sub_29DF49BB8;
      v53 = &unk_2A24B49D0;
      v18 = _Block_copy(&aBlock);
      v19 = a2;
      v20 = v16;
      sub_29E2C2B44();
      v49 = MEMORY[0x29EDCA190];
      sub_29DF4B3B0();
      sub_29DF4B490(0, &qword_2A1A626E0, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
      sub_29DF4B408();
      sub_29E2C43F4();
      MEMORY[0x29ED804D0](0, v14, v11, v18);
      _Block_release(v18);
    }

    else
    {
      sub_29E2C04B4();
      v21 = v16;
      v22 = a3;
      v23 = sub_29E2C0504();
      v24 = sub_29E2C3A14();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v42 = v23;
        v26 = v25;
        v43 = swift_slowAlloc();
        aBlock = v43;
        *v26 = 136446466;
        v41 = v24;
        v27 = sub_29DF49C70();
        v29 = sub_29DFAA104(v27, v28, &aBlock);
        v44 = v21;
        v30 = v29;

        *(v26 + 4) = v30;
        *(v26 + 12) = 2080;
        v49 = a3;
        v31 = a3;
        sub_29DF4B490(0, &qword_2A1A5DFD0, sub_29DE96670, MEMORY[0x29EDC9C68]);
        v32 = sub_29E2C3424();
        v34 = sub_29DFAA104(v32, v33, &aBlock);

        *(v26 + 14) = v34;
        v21 = v44;
        v35 = v42;
        _os_log_impl(&dword_29DE74000, v42, v41, "[%{public}s] HKMCAnalysisQuery returned nil analysis with error: %s", v26, 0x16u);
        v36 = v43;
        swift_arrayDestroy();
        MEMORY[0x29ED82140](v36, -1, -1);
        MEMORY[0x29ED82140](v26, -1, -1);
      }

      else
      {
      }

      (*(v46 + 8))(v8, v6);
      v37 = swift_allocObject();
      *(v37 + 16) = v21;
      v54 = sub_29DF4B3A8;
      v55 = v37;
      aBlock = MEMORY[0x29EDCA5F8];
      v51 = 1107296256;
      v52 = sub_29DF49BB8;
      v53 = &unk_2A24B4980;
      v38 = _Block_copy(&aBlock);
      v20 = v21;
      sub_29E2C2B44();
      v49 = MEMORY[0x29EDCA190];
      sub_29DF4B3B0();
      sub_29DF4B490(0, &qword_2A1A626E0, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
      sub_29DF4B408();
      sub_29E2C43F4();
      MEMORY[0x29ED804D0](0, v14, v11, v38);
      _Block_release(v38);
    }

    (*(v48 + 8))(v11, v9);
    (*(v12 + 8))(v14, v47);

    sub_29E2BD5B4();
    if (sub_29E2BDA24())
    {
      sub_29E2BD5A4();
      sub_29DE966D4(&aBlock, v53);
      v39 = sub_29E2BD4E4();
      [v39 stopQuery_];

      sub_29DE93B3C(&aBlock);
    }

    else
    {
    }
  }
}

uint64_t sub_29DF4AB84(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  return sub_29E2C1224();
}

uint64_t sub_29DF4ABF4(void *a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;
  v5 = a2;
  return sub_29E2C1224();
}

void sub_29DF4AC9C()
{
  sub_29E2BD624();
  if (v0 <= 0x3F)
  {
    sub_29DF4AD80();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_29DF4AD80()
{
  if (!qword_2A1A5E3D0)
  {
    v0 = sub_29E2C1234();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E3D0);
    }
  }
}

uint64_t sub_29DF4ADD0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_29DF4ADE8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29DF4AE3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_29DF4AE98(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void **sub_29DF4AED8@<X0>(void **result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result >= 2)
  {
    result = v3;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_29DF4AF14@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  *a1 = v3;
  return result;
}

uint64_t sub_29DF4AF94(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  sub_29DF4B4FC(v2);
  return sub_29E2C1224();
}

void sub_29DF4B010(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, a3, a4);
}

id sub_29DF4B0B0(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_29E2C0514();
  v28 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37MenstrualCyclesAnalysisChangeDetector_analysisQuery] = 0;
  v9 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37MenstrualCyclesAnalysisChangeDetector_generatorContext;
  v10 = sub_29E2BD624();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v2[v9], a2, v10);
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37MenstrualCyclesAnalysisChangeDetector_observerQueue] = a1;
  swift_beginAccess();
  v30 = 0;
  v12 = a1;
  sub_29E2C11D4();
  swift_endAccess();
  v29.receiver = v2;
  v29.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v29, sel_init);
  sub_29E2C04B4();
  v14 = sub_29E2C0504();
  v15 = sub_29E2C3A34();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v27 = a2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v26 = v6;
    v19 = v18;
    v31[0] = v18;
    *v17 = 136446210;
    v20 = sub_29DF49C70();
    v22 = sub_29DFAA104(v20, v21, v31);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_29DE74000, v14, v15, "[%{public}s] Initializing", v17, 0xCu);
    sub_29DE93B3C(v19);
    MEMORY[0x29ED82140](v19, -1, -1);
    v23 = v17;
    a2 = v27;
    MEMORY[0x29ED82140](v23, -1, -1);

    (*(v28 + 8))(v8, v26);
  }

  else
  {

    (*(v28 + 8))(v8, v6);
  }

  sub_29DF49D08();

  (*(v11 + 8))(a2, v10);
  return v13;
}

uint64_t sub_29DF4B390(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29DF4B3B0()
{
  result = qword_2A1A626F0;
  if (!qword_2A1A626F0)
  {
    sub_29E2C2B34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A626F0);
  }

  return result;
}

unint64_t sub_29DF4B408()
{
  result = qword_2A1A626D0;
  if (!qword_2A1A626D0)
  {
    sub_29DF4B490(255, &qword_2A1A626E0, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A626D0);
  }

  return result;
}

void sub_29DF4B490(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_29DF4B4FC(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

uint64_t sub_29DF4B51C(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v51 = a2;
  v54 = a1;
  v8 = sub_29E2C08B4();
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v52 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_29E2BE814();
  v55 = *(v53 - 8);
  MEMORY[0x2A1C7C4A8](v53);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a4;
  v49 = a5;
  sub_29DFF88D8();
  sub_29E2BDCA4();
  v12 = MEMORY[0x29ED7A440]();
  v13 = objc_allocWithZone(MEMORY[0x29EDBA0F0]);
  v14 = sub_29E2C33A4();
  v15 = [v13 initWithKey:v14 ascending:0];

  sub_29DE99B54();
  v47 = v16;
  v17 = swift_allocObject();
  v45 = xmmword_29E2CE220;
  *(v17 + 16) = xmmword_29E2CE220;
  *(v17 + 32) = v15;
  sub_29DF3DF44();
  v18 = v15;
  v19 = sub_29E2C3604();

  [v12 setSortDescriptors_];

  v50 = a3;
  if ((a3 & 1) == 0)
  {
    [v12 setFetchLimit_];
  }

  v20 = sub_29E2BDC64();

  [v12 setPredicate_];

  v21 = objc_allocWithZone(MEMORY[0x29EDB8C58]);
  [v21 initWithFetchRequest:v12 managedObjectContext:v54 sectionNameKeyPath:0 cacheName:0];
  sub_29E2BE7D4();
  sub_29E2BE7B4();
  v22 = *(v55 + 8);
  v55 += 8;
  v44 = v22;
  v22(v11, v53);
  sub_29DF4BB20();
  v24 = v23;
  v25 = objc_allocWithZone(v23);
  v46 = sub_29E2BF704();

  sub_29E171B1C();
  v26 = MEMORY[0x29ED7A440]();
  v27 = objc_allocWithZone(MEMORY[0x29EDBA0F0]);
  v28 = sub_29E2C33A4();
  v29 = [v27 initWithKey:v28 ascending:0];

  v30 = swift_allocObject();
  *(v30 + 16) = v45;
  *(v30 + 32) = v29;
  v31 = v29;
  v32 = sub_29E2C3604();

  [v26 setSortDescriptors_];

  if ((v50 & 1) == 0)
  {
    [v26 setFetchLimit_];
  }

  v33 = sub_29E2BDC64();

  [v26 setPredicate_];

  v34 = objc_allocWithZone(MEMORY[0x29EDB8C58]);
  [v34 initWithFetchRequest:v26 managedObjectContext:v54 sectionNameKeyPath:0 cacheName:0];
  sub_29E2BE7D4();
  sub_29E2BE7B4();
  v44(v11, v53);
  v35 = objc_allocWithZone(v24);
  v36 = sub_29E2BF704();

  sub_29DF4BBB4();
  swift_allocObject();
  v37 = v46;
  v38 = v36;
  sub_29E2BF014();
  sub_29E2C0844();
  v39 = sub_29E2BE0B4();
  swift_allocObject();
  v40 = sub_29E2BE094();
  v56[3] = v39;
  v56[4] = sub_29DF4BC54(&unk_2A181CC00, MEMORY[0x29EDC1C30]);
  v56[0] = v40;
  sub_29DF4BC54(&qword_2A1819328, sub_29DF4BBB4);

  v41 = sub_29E2BE734();

  sub_29DE93B3C(v56);
  return v41;
}

void sub_29DF4BB20()
{
  if (!qword_2A1819308)
  {
    sub_29E2BDCA4();
    sub_29DF4BC54(&qword_2A1819310, MEMORY[0x29EDC3C88]);
    v0 = sub_29E2BF6E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1819308);
    }
  }
}

void sub_29DF4BBB4()
{
  if (!qword_2A1819318)
  {
    sub_29DF4BB20();
    sub_29DF4BC54(&qword_2A1819320, sub_29DF4BB20);
    v0 = sub_29E2BF024();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1819318);
    }
  }
}

uint64_t sub_29DF4BC54(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_29DF4BC9C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = HKPreferredRegulatoryDomainProvider();
    *(v0 + 16) = v1;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v1;
}

uint64_t sub_29DF4BD00(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v56 = a2;
  v57 = a8;
  v14 = sub_29E2C2B34();
  v60 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v46[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_29E2C2B54();
  v58 = *(v17 - 8);
  v59 = v17;
  MEMORY[0x2A1C7C4A8](v17);
  v19 = &v46[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_29E2C0514();
  MEMORY[0x2A1C7C4A8](v20);
  v24 = &v46[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!a1)
  {
    v50 = v22;
    v51 = v21;
    v52 = a5;
    v53 = a7;
    v49 = v19;
    v48 = a3;
    v54 = v14;
    v55 = a6;
    v25 = a4;
    sub_29E2C04B4();
    v26 = v56;
    v27 = v56;
    v28 = sub_29E2C0504();
    v29 = sub_29E2C3A14();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v47 = v29;
      v31 = v30;
      v32 = swift_slowAlloc();
      aBlock[0] = v32;
      *v31 = 136446466;
      v33 = sub_29E2C4AE4();
      v35 = sub_29DFAA104(v33, v34, aBlock);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      *&v62[0] = v26;
      v36 = v26;
      sub_29DF4D4A0(0, &qword_2A1A5DFD0, sub_29DE96670, MEMORY[0x29EDC9C68]);
      v37 = sub_29E2C3424();
      v39 = sub_29DFAA104(v37, v38, aBlock);

      *(v31 + 14) = v39;
      _os_log_impl(&dword_29DE74000, v28, v47, "[%{public}s] Error fetching country code: %s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v32, -1, -1);
      MEMORY[0x29ED82140](v31, -1, -1);
    }

    (*(v50 + 8))(v24, v51);
    v14 = v54;
    a6 = v55;
    a4 = v25;
    a3 = v48;
    v19 = v49;
    a5 = v52;
    a7 = v53;
  }

  sub_29DE9408C(0, &qword_2A1A626C0);
  v56 = sub_29E2C3CF4();
  sub_29DE9DC34(a5, v62);
  v40 = swift_allocObject();
  v40[2] = a3;
  v40[3] = a1;
  v40[4] = a4;
  sub_29DE8EE78(v62, (v40 + 5));
  v40[10] = a6;
  v40[11] = a7;
  v40[12] = v57;
  aBlock[4] = sub_29DF4D468;
  aBlock[5] = v40;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DF49BB8;
  aBlock[3] = &unk_2A24B4A70;
  v41 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v42 = a4;
  v43 = a6;

  sub_29E2C2B44();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29DF4D7D8(&qword_2A1A626F0, MEMORY[0x29EDCA248]);
  sub_29DF4D4A0(0, &qword_2A1A626E0, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29DF4B408();
  sub_29E2C43F4();
  v44 = v56;
  MEMORY[0x29ED804D0](0, v19, v16, v41);
  _Block_release(v41);

  (*(v60 + 8))(v16, v14);
  return (*(v58 + 8))(v19, v59);
}

uint64_t sub_29DF4C2A0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_29DF4C320(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v42 = a5;
  v43 = a6;
  v37 = a3;
  v38 = a1;
  v39 = a2;
  v40 = *v6;
  v41 = a4;
  sub_29DF4D4A0(0, &qword_2A1A61D40, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v35 - v9;
  sub_29DF4D504();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF4D600();
  v36 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);

  v20 = sub_29E2BE074();

  *&v44[0] = v20;
  sub_29DF4D598();
  sub_29DF4D7D8(&qword_2A1819340, sub_29DF4D598);
  sub_29E2C12D4();

  sub_29DE9408C(0, &qword_2A1A626C0);
  v21 = sub_29E2C3CF4();
  *&v44[0] = v21;
  v22 = sub_29E2C3CE4();
  (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
  sub_29DF4D7D8(&unk_2A1819350, sub_29DF4D504);
  sub_29DF4D6CC();
  sub_29E2C1354();
  sub_29DEB1FA4(v10);

  (*(v13 + 8))(v15, v12);
  v23 = swift_allocObject();
  swift_weakInit();
  sub_29DE9DC34(v37, v44);
  v24 = swift_allocObject();
  v26 = v38;
  v25 = v39;
  v24[2] = v23;
  v24[3] = v26;
  v24[4] = v25;
  sub_29DE8EE78(v44, (v24 + 5));
  v28 = v41;
  v27 = v42;
  v24[10] = v41;
  v24[11] = v27;
  v29 = v40;
  v24[12] = v43;
  v24[13] = v29;
  sub_29DF4D7D8(&qword_2A1819360, sub_29DF4D600);
  swift_unknownObjectRetain();
  v30 = v25;
  v31 = v28;
  swift_unknownObjectRetain();
  v32 = v36;
  v33 = sub_29E2C1384();

  (*(v17 + 8))(v19, v32);
  v7[5] = v33;
}

uint64_t sub_29DF4C784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_29E2C3714();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = a5;
  v18[7] = a6;
  v18[8] = a7;
  v18[9] = a8;
  v18[10] = a9;
  return sub_29E0D8C74(sub_29DF4D820, v18);
}

uint64_t sub_29DF4C844(char *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v51 = a6;
  v52 = a7;
  v47 = a5;
  v49 = a3;
  v50 = a4;
  v55[4] = a2;
  v11 = sub_29E2BE054();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v46 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v40 - v15;
  v17 = sub_29E2C0514();
  v53 = *(v17 - 8);
  v54 = v17;
  MEMORY[0x2A1C7C4A8](v17);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v20 = *(v12 + 16);
  v48 = a1;
  v20(v16, a1, v11);
  v21 = sub_29E2C0504();
  v45 = sub_29E2C3A34();
  if (os_log_type_enabled(v21, v45))
  {
    v44 = v8;
    v22 = swift_slowAlloc();
    v43 = a8;
    v23 = v22;
    v42 = swift_slowAlloc();
    v55[0] = v42;
    *v23 = 136446466;
    v24 = sub_29E2C4AE4();
    v26 = sub_29DFAA104(v24, v25, v55);
    v41 = v21;
    v27 = v26;

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    v20(v46, v16, v11);
    v28 = sub_29E2C3464();
    v30 = v29;
    (*(v12 + 8))(v16, v11);
    v31 = sub_29DFAA104(v28, v30, v55);

    *(v23 + 14) = v31;
    v32 = v41;
    _os_log_impl(&dword_29DE74000, v41, v45, "[%{public}s] Got securityVariant: %s", v23, 0x16u);
    v33 = v42;
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v33, -1, -1);
    v34 = v23;
    a8 = v43;
    MEMORY[0x29ED82140](v34, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v16, v11);
  }

  (*(v53 + 8))(v19, v54);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v36 = result;
    v37 = v47[3];
    v38 = v47[4];
    v39 = sub_29DE966D4(v47, v37);
    sub_29DF4CC60(v49, v48, v50, v39, v51, v52, a8, v36, v37, v38);
  }

  return result;
}

uint64_t sub_29DF4CBEC()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_29DF4CC60(void *a1, char *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v69 = a5;
  v70 = a7;
  v71 = a3;
  v72 = a6;
  v64 = a2;
  v65 = a1;
  v74 = a8;
  v61 = *a8;
  v11 = sub_29E2C0514();
  v67 = *(v11 - 8);
  v68 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v73 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_29E2BE054();
  v13 = *(v62 - 8);
  MEMORY[0x2A1C7C4A8](v62);
  v63 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29E2C2B84();
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = (&v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(a9 - 8);
  MEMORY[0x2A1C7C4A8](v20);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x2A1C7C4A8](v23);
  v26 = &v61 - v25;
  v66 = v19;
  v27 = *(v19 + 16);
  v27(&v61 - v25, a4, a9, v24);
  sub_29DE9408C(0, &qword_2A1A626C0);
  *v18 = sub_29E2C3CF4();
  (*(v16 + 104))(v18, *MEMORY[0x29EDCA278], v15);
  v28 = sub_29E2C2BA4();
  result = (*(v16 + 8))(v18, v15);
  if (v28)
  {
    v30 = v74[4];
    v31 = v63;
    (*(v13 + 16))(v63, v64, v62);
    v32 = objc_allocWithZone(type metadata accessor for MenstrualCyclesOnboardingWelcomeViewController());
    v64 = v26;
    (v27)(v22, v26, a9);
    v33 = v65;
    swift_unknownObjectRetain();
    v34 = v30;
    v35 = v71;
    v36 = v71;
    v37 = sub_29E08F2D4(v35, v34, v22, v33, v31, v32, a9, a10);

    v38 = v70;
    *&v37[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingWelcomeViewController_delegate + 8] = v70;
    v39 = v72;
    swift_unknownObjectWeakAssign();
    v40 = objc_allocWithZone(MEMORY[0x29EDC4760]);
    v41 = [v40 initWithRootViewController_];
    [v41 setModalInPresentation_];
    [v41 setModalPresentationStyle_];
    sub_29E2C04B4();
    v42 = v36;
    v43 = sub_29E2C0504();
    v44 = sub_29E2C3A34();

    v45 = os_log_type_enabled(v43, v44);
    v46 = a9;
    v47 = v74;
    if (v45)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v76 = v49;
      *v48 = 136446466;
      v50 = sub_29E2C4AE4();
      v52 = sub_29DFAA104(v50, v51, &v76);

      *(v48 + 4) = v52;
      v46 = a9;
      *(v48 + 12) = 2082;
      v75 = v71;
      sub_29DEAE54C();
      v53 = v42;
      v54 = sub_29E2C3464();
      v56 = sub_29DFAA104(v54, v55, &v76);

      *(v48 + 14) = v56;
      v38 = v70;
      v47 = v74;
      _os_log_impl(&dword_29DE74000, v43, v44, "[%{public}s] Presenting onboarding for analysis: %{public}s", v48, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v49, -1, -1);
      v57 = v48;
      v39 = v72;
      MEMORY[0x29ED82140](v57, -1, -1);
    }

    (*(v67 + 8))(v73, v68);
    [v69 showViewController:v41 sender:0];
    *(v47 + 48) = 0;
    v58 = v64;
    if (*(v47 + 49) == 10)
    {
      *(v47 + 49) = 0;
      if (v39)
      {
        ObjectType = swift_getObjectType();
        v60 = sub_29E199F68(ObjectType, v38);
        sub_29E0A307C(2u, v60);
      }
    }

    return (*(v66 + 8))(v58, v46);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29DF4D268(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v15 = *a6;
  v26[3] = a7;
  v26[4] = a8;
  v16 = v15;
  v17 = sub_29DEBB7E8(v26);
  (*(*(a7 - 8) + 16))(v17, a2, a7);
  v18 = sub_29DF4BC9C();
  sub_29DE9DC34(v26, v25);
  v19 = swift_allocObject();
  v19[2] = a6;
  v19[3] = a1;
  sub_29DE8EE78(v25, (v19 + 4));
  v19[9] = a3;
  v19[10] = a4;
  v19[11] = a5;
  v19[12] = v16;
  v24[4] = sub_29DF4D41C;
  v24[5] = v19;
  v24[0] = MEMORY[0x29EDCA5F8];
  v24[1] = 1107296256;
  v24[2] = sub_29DF4C2A0;
  v24[3] = &unk_2A24B4A20;
  v20 = _Block_copy(v24);
  swift_unknownObjectRetain();

  v21 = a1;
  v22 = a3;

  [v18 fetchMobileCountryCodeFromCellularWithCompletion_];
  _Block_release(v20);
  swift_unknownObjectRelease();
  return sub_29DE93B3C(v26);
}

uint64_t sub_29DF4D450(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29DF4D4A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29DF4D504()
{
  if (!qword_2A1819330)
  {
    sub_29DF4D598();
    sub_29DF4D7D8(&qword_2A1819340, sub_29DF4D598);
    v0 = sub_29E2C0F54();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1819330);
    }
  }
}

void sub_29DF4D598()
{
  if (!qword_2A1819338)
  {
    sub_29E2BE054();
    v0 = sub_29E2C1024();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1819338);
    }
  }
}

void sub_29DF4D600()
{
  if (!qword_2A1819348)
  {
    sub_29DF4D504();
    sub_29DE9408C(255, &qword_2A1A626C0);
    sub_29DF4D7D8(&unk_2A1819350, sub_29DF4D504);
    sub_29DF4D6CC();
    v0 = sub_29E2C0FF4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1819348);
    }
  }
}

unint64_t sub_29DF4D6CC()
{
  result = qword_2A1A61D38;
  if (!qword_2A1A61D38)
  {
    sub_29DE9408C(255, &qword_2A1A626C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A61D38);
  }

  return result;
}

uint64_t sub_29DF4D734(uint64_t a1)
{

  swift_unknownObjectRelease();

  sub_29DE93B3C(v1 + 40);
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v1, a1, 7);
}

uint64_t sub_29DF4D7D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29DF4D860()
{
  sub_29DE8EDC0(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_29DF4D8CC(unint64_t result)
{
  if (result <= 6)
  {
    return sub_29E08CE7C(*(&unk_2A24AEA68 + result + 4));
  }

  __break(1u);
  return result;
}

id sub_29DF4D8F4()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 48);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x29EDBA078]) init];
    v4 = *(v0 + 48);
    *(v0 + 48) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_29DF4D960(unint64_t a1)
{
  v3 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v4 = sub_29E2C3384();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v21[-v9];
  v11 = sub_29DF5BF00(*(v1 + 16));
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(v11 + 16) <= a1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = v11 + 16 * a1;
  v13 = *(v12 + 32);
  v14 = *(v12 + 40);

  if (v14)
  {
    sub_29E2C3314();
    (*(v5 + 16))(v7, v10, v4);
    if (qword_2A1A62788 == -1)
    {
LABEL_5:
      v15 = qword_2A1A67F80;
      sub_29E2BCC74();
      v16 = sub_29E2C3414();
      (*(v5 + 8))(v10, v4);
      return v16;
    }

LABEL_12:
    swift_once();
    goto LABEL_5;
  }

  v17 = sub_29DF4D8F4();
  v18 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
  v19 = [v17 stringFromNumber_];

  if (!v19)
  {
    return 0;
  }

  v16 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();

  return v16;
}

uint64_t sub_29DF4DBF8()
{
  sub_29DE8EDC0(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_29DF4DC68()
{
  v1 = *(sub_29DF5BF00(*(v0 + 16)) + 16);

  return v1;
}

id sub_29DF4DF5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManualEntryItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29DF4DFC4(unint64_t a1)
{
  *(v1 + 48) = a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (a1 > 6)
    {
      __break(1u);
    }

    else
    {
      v4 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      (*(v4 + 8))(v1, *(&unk_2A24AEA68 + a1 + 4), ObjectType, v4);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_29DF4E06C(unint64_t a1)
{
  v3 = sub_29DF5BF00(*(v1 + 16));
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (*(v3 + 16) <= a1)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v4 = v3 + 16 * a1;
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);

  if (v6)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v1 + 40);
      ObjectType = swift_getObjectType();
      (*(v7 + 8))(v1, 0, ObjectType, v7);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v9 = [objc_opt_self() dayUnit];
    v15 = [objc_opt_self() quantityWithUnit:v9 doubleValue:v5];

    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(v1 + 40);
      v11 = swift_getObjectType();
      v12 = *(v10 + 8);
      v14 = v15;
      v12(v1, v15, v11, v10);
      swift_unknownObjectRelease();

      v13 = v14;
    }

    else
    {
      v13 = v15;
    }
  }
}

uint64_t type metadata accessor for CalendarViewController()
{
  result = qword_2A1A60E78;
  if (!qword_2A1A60E78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29DF4E30C(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  sub_29DF57594(a1);
  v8 = v2;
  v9 = sub_29E2C0504();
  v10 = sub_29E2C3A34();
  sub_29DF57584(a1);

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v24 = v4;
    v12 = v11;
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136446722;
    v14 = sub_29E2C4AE4();
    v16 = sub_29DFAA104(v14, v15, &v26);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    v25 = a1;
    sub_29DF57594(a1);
    v17 = sub_29E2C3424();
    v19 = sub_29DFAA104(v17, v18, &v26);

    *(v12 + 14) = v19;
    *(v12 + 22) = 2082;
    v25 = *&v8[qword_2A1A60E98];
    sub_29DF57594(v25);
    v20 = sub_29E2C3424();
    v22 = sub_29DFAA104(v20, v21, &v26);

    *(v12 + 24) = v22;
    _os_log_impl(&dword_29DE74000, v9, v10, "[%{public}s] Changed state from %{public}s to %{public}s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v13, -1, -1);
    MEMORY[0x29ED82140](v12, -1, -1);

    (*(v5 + 8))(v7, v24);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  sub_29DF4E598();
}

void sub_29DF4E598()
{
  v1 = *(v0 + qword_2A1A60E98);
  v2 = sub_29DF4E668();
  v5 = v2;
  if (v1 > 3)
  {
    [v2 setEnabled_];
  }

  else
  {
    v3 = v0 + qword_2A1A60E90;
    swift_beginAccess();
    if (*(*(v3 + 16) + 16))
    {
      v4 = 1;
    }

    else
    {
      v4 = *(*(v3 + 24) + 16) != 0;
    }

    [v5 setEnabled_];
  }
}

id sub_29DF4E668()
{
  v1 = qword_2A1A60EB8;
  v2 = *(v0 + qword_2A1A60EB8);
  if (v2)
  {
    v3 = *(v0 + qword_2A1A60EB8);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC7940]) initWithBarButtonSystemItem:0 target:v0 action:sel_saveChangesAndDismiss];
    [v4 setEnabled_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29DF4E704()
{
  v1 = qword_2A1A60EA0;
  v2 = *(v0 + qword_2A1A60EA0);
  if (v2)
  {
    v3 = *(v0 + qword_2A1A60EA0);
  }

  else
  {
    v4 = sub_29DF4E768(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29DF4E768(uint64_t a1)
{
  v2 = sub_29E2C2DE4();
  v3 = sub_29E2C2C24();

  v4 = *(a1 + qword_2A1A60EC0);
  result = [v4 healthStore];
  if ((v3 * 10) >> 64 == (10 * v3) >> 63)
  {
    v6 = result;
    v7 = [objc_allocWithZone(MEMORY[0x29EDC3408]) initWithHealthStore:result analysisProvider:v4 pregnancyModelProvider:0 maximumActiveDuration:10 * v3 minimumBufferDuration:v3 shouldFetchCycleFactors:0 calendarCache:*(a1 + qword_2A1A60ED0)];

    [v7 registerObserver_];
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_29DF4E860()
{
  v1 = qword_2A1A60EB0;
  v2 = *(v0 + qword_2A1A60EB0);
  if (v2)
  {
    v3 = *(v0 + qword_2A1A60EB0);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDBA078]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29DF4E8D4()
{
  v1 = qword_2A1A60EA8;
  v2 = *(v0 + qword_2A1A60EA8);
  if (v2)
  {
    v3 = *(v0 + qword_2A1A60EA8);
LABEL_5:
    v6 = v2;
    return v3;
  }

  result = HKDateFormatterFromTemplate();
  if (result)
  {
    v5 = *(v0 + v1);
    *(v0 + v1) = result;
    v3 = result;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_29DF4E97C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v87 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2BCEA4();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v84 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_29E2C31A4();
  v86 = *(v88 - 8);
  MEMORY[0x2A1C7C4A8](v88);
  v85 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF56D40(0, &qword_2A1A5E2A0, sub_29DEC65FC, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v78 - v12;
  v14 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v82 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_29E2C3384();
  v16 = *(v83 - 8);
  MEMORY[0x2A1C7C4A8](v83);
  v18 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v21 = &v78 - v20;
  v22 = type metadata accessor for CalendarViewController();
  v91.receiver = v0;
  v91.super_class = v22;
  objc_msgSendSuper2(&v91, sel_viewDidLoad);
  [v0 setClearsSelectionOnViewWillAppear_];
  v23 = [v0 collectionView];
  if (!v23)
  {
    __break(1u);
    goto LABEL_17;
  }

  v24 = v23;
  v25 = [objc_opt_self() systemBackgroundColor];
  [v24 setBackgroundColor_];

  v26 = [v1 collectionView];
  if (!v26)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27 = v26;
  [v26 setShowsVerticalScrollIndicator_];

  v28 = [v1 collectionView];
  if (!v28)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v29 = v28;
  v30 = sub_29E2C2DB4();
  [v29 setDataSource_];

  v31 = [v1 collectionView];
  if (!v31)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v32 = v31;
  v79 = v10;
  v80 = v13;
  v81 = ObjectType;
  if (HKUICalendarLocaleIsRightToLeft())
  {
    v33 = 4;
  }

  else
  {
    v33 = 3;
  }

  [v32 setSemanticContentAttribute_];

  v34 = [v1 collectionView];
  if (!v34)
  {
    goto LABEL_20;
  }

  v35 = v34;
  sub_29E2C2DA4();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v37 = *MEMORY[0x29EDC8048];
  sub_29E2C2D94();
  v38 = sub_29E2C33A4();

  [v35 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v37 withReuseIdentifier:v38];

  v39 = [v1 collectionView];
  if (!v39)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v40 = v39;
  _s24MenstrualCyclesAppPlugin18CalendarSpacerCellCMa_0();
  v41 = swift_getObjCClassFromMetadata();
  v42 = sub_29E2C33A4();
  [v40 registerClass:v41 forCellWithReuseIdentifier:v42];

  v43 = [v1 collectionView];
  if (!v43)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v44 = v43;
  type metadata accessor for CalendarDayCell();
  v45 = swift_getObjCClassFromMetadata();
  v46 = sub_29E2C33A4();
  [v44 registerClass:v45 forCellWithReuseIdentifier:v46];

  v47 = [v1 collectionView];
  if (!v47)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v48 = v47;
  type metadata accessor for CalendarTodayCell();
  v49 = swift_getObjCClassFromMetadata();
  v50 = sub_29E2C33A4();
  [v48 registerClass:v49 forCellWithReuseIdentifier:v50];

  v51 = [v1 collectionView];
  if (!v51)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v52 = v51;
  type metadata accessor for CalendarFutureCell();
  v53 = swift_getObjCClassFromMetadata();
  v54 = sub_29E2C33A4();
  [v52 registerClass:v53 forCellWithReuseIdentifier:v54];

  sub_29E2C3314();
  v55 = v83;
  (*(v16 + 16))(v18, v21, v83);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v56 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v16 + 8))(v21, v55);
  v57 = sub_29E2C33A4();

  [v1 setTitle_];

  v58 = [v1 navigationItem];
  v59 = [objc_allocWithZone(MEMORY[0x29EDC7940]) initWithBarButtonSystemItem:1 target:v1 action:sel_cancelAndDismiss];
  [v58 setLeftBarButtonItem_];

  v60 = [v1 navigationItem];
  v61 = sub_29DF4E668();
  [v60 setRightBarButtonItem_];

  v62 = [v1 navigationItem];
  v63 = sub_29E2C2DE4();
  sub_29E2C2C14();

  [objc_opt_self() preferredHeight];
  v65 = [objc_allocWithZone(MEMORY[0x29EDC4888]) initWithFrame:HKUICalendarLocaleIsRightToLeft() shouldSupportRTL:{0.0, 0.0, 0.0, v64}];
  [v65 layoutMargins];
  [v65 setLayoutMargins_];
  [v65 layoutMargins];
  [v65 setLayoutMargins_];
  v66 = [objc_allocWithZone(MEMORY[0x29EDC7E48]) initWithContentView_];

  [v62 _setBottomPalette_];
  v67 = [*&v1[qword_2A1A60E88] calendar];
  sub_29E2BCDC4();

  sub_29E2BCBA4();
  v68 = v85;
  sub_29E2C3144();
  v69 = sub_29E2C2DE4();
  sub_29E2C2C24();

  v70 = v80;
  sub_29E2C30B4();
  (*(v86 + 8))(v68, v88);
  sub_29DEC65FC();
  (*(*(v71 - 8) + 56))(v70, 0, 1, v71);
  v72 = sub_29DF4E704();
  sub_29DF57800(v70, v79, &qword_2A1A5E2A0, sub_29DEC65FC);
  v89 = [v72 activeDayRange];
  v90 = v73;
  sub_29E2C3AB4();
  [v72 setActiveDayRange_];

  sub_29DF57880(v70, &qword_2A1A5E2A0, sub_29DEC65FC);
  v74 = [objc_opt_self() defaultCenter];
  [v74 addObserver:v1 selector:sel_significantTimeChangeDidOccur name:*MEMORY[0x29EDC8028] object:0];

  sub_29DF56D40(0, &qword_2A1817FF0, sub_29DEA6B18, MEMORY[0x29EDC9E90]);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_29E2CAB20;
  v76 = sub_29E2C0B54();
  v77 = MEMORY[0x29EDC7870];
  *(v75 + 32) = v76;
  *(v75 + 40) = v77;
  sub_29E2C3C64();
  swift_unknownObjectRelease();

  sub_29DF541F4();
}

void sub_29DF4F4F0(void *a1)
{
  v1 = a1;
  sub_29DF4E97C();
}

void sub_29DF4F538()
{
  v1 = sub_29E2BCBB4();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2BCFB4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CalendarViewController();
  v15.receiver = v0;
  v15.super_class = v9;
  objc_msgSendSuper2(&v15, sel_viewDidLayoutSubviews);
  if (!*&v0[qword_2A1A60E98])
  {
    *&v0[qword_2A1A60E98] = 1;
    sub_29DF4E30C(0);
    v10 = [v0 collectionView];
    if (v10)
    {
      v11 = v10;
      v12 = sub_29E2C2DB4();
      if (v12)
      {
        v13 = v12;
        sub_29E2BCBA4();
        sub_29E2C2D54();

        (*(v2 + 8))(v4, v1);
        v14 = sub_29E2BCF24();
        (*(v6 + 8))(v8, v5);
        [v11 scrollToItemAtIndexPath:v14 atScrollPosition:2 animated:0];

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

void sub_29DF4F74C(void *a1)
{
  v1 = a1;
  sub_29DF4F538();
}

void sub_29DF4F794(void *a1, double a2, double a3)
{
  v4 = v3;
  v18.receiver = v3;
  v18.super_class = type metadata accessor for CalendarViewController();
  objc_msgSendSuper2(&v18, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  v8 = *&v3[qword_2A1A60E98];
  *&v3[qword_2A1A60E98] = 3;
  sub_29DF4E30C(v8);
  sub_29DF57584(v8);
  v9 = [v3 collectionViewLayout];
  [v9 invalidateLayout];

  v10 = sub_29E2C2DE4();
  sub_29E2C2C14();

  v11 = [v4 navigationItem];
  v12 = [v11 _bottomPalette];

  if (v12)
  {
    v13 = [v12 contentView];

    if (v13)
    {
      [v13 layoutMargins];
      [v13 setLayoutMargins_];
      [v13 layoutMargins];
      [v13 setLayoutMargins_];
    }
  }

  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  v17[4] = sub_29DF57D1C;
  v17[5] = v14;
  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 1107296256;
  v17[2] = sub_29DF4FA14;
  v17[3] = &unk_2A24B4CF8;
  v15 = _Block_copy(v17);
  v16 = v4;

  [a1 animateAlongsideTransition:0 completion:v15];
  _Block_release(v15);
}

id sub_29DF4F9C0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + qword_2A1A60E98) == 3)
  {
    *(a2 + qword_2A1A60E98) = 2;
    sub_29DF4E30C(3);
    sub_29DF528FC();
    return sub_29DF53BD0(1);
  }

  return result;
}

uint64_t sub_29DF4FA14(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

void sub_29DF4FA74(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_29DF4F794(a5, a2, a3);
  swift_unknownObjectRelease();
}

id sub_29DF4FAFC(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_29E2BCFB4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  v9 = a3;
  v10 = a1;
  v11 = sub_29E2BCF24();
  v12 = [v10 collectionView:v9 shouldSelectItemAtIndexPath:v11];

  (*(v6 + 8))(v8, v5);
  return v12;
}

uint64_t sub_29DF4FC24(void *a1)
{
  v3 = sub_29E2C31A4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CycleDay();
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + qword_2A1A60E98) == 2)
  {
    v10 = sub_29E2BCF24();
    v11 = [a1 cellForItemAtIndexPath_];

    if (v11)
    {
      type metadata accessor for CalendarDayCell();
      v12 = swift_dynamicCastClass();
      if (v12 && *(v12 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_day + 16) && (sub_29E2BFC24() & 1) == 0)
      {
        result = sub_29E2C2DB4();
        if (!result)
        {
          __break(1u);
          return result;
        }

        v14 = result;
        sub_29E2C2D44();

        v15 = sub_29DF4E704();
        v16 = [v15 dayViewModelAtIndex_];

        (*(v4 + 32))(v9, v6, v3);
        *&v9[*(v7 + 20)] = v16;
        v17 = v16;
        sub_29DF57958(v9, type metadata accessor for CycleDay);
        LOBYTE(v16) = [v17 isFetched];

        if (v16)
        {
          return 1;
        }
      }

      else
      {
      }
    }
  }

  return 0;
}

uint64_t sub_29DF4FE90(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_29E2BCFB4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  v9 = a3;
  v10 = a1;
  LOBYTE(a1) = sub_29DF4FC24(v9);

  (*(v6 + 8))(v8, v5);
  return a1 & 1;
}

void sub_29DF4FF94(void *a1, uint64_t a2)
{
  v281[6] = *MEMORY[0x29EDCA608];
  v247 = sub_29E2BCFB4();
  v221 = *(v247 - 8);
  MEMORY[0x2A1C7C4A8](v247);
  v270 = &v217 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEC6594();
  v253 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v252 = &v217 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v251 = &v217 - v8;
  v9 = MEMORY[0x29EDC9C68];
  sub_29DF56D40(0, &qword_2A1A5E2A0, sub_29DEC65FC, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v225 = &v217 - v11;
  sub_29DEC65FC();
  v256 = v12;
  v229 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v217 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v224 = &v217 - v16;
  sub_29DF579B8(0, &qword_2A1819398, sub_29DEC65FC, sub_29DF57A38, MEMORY[0x29EDC9E20]);
  v223 = v17;
  MEMORY[0x2A1C7C4A8](v17);
  v254 = &v217 - v18;
  sub_29DF57AEC(0, &qword_2A18193A8, sub_29DEB523C, MEMORY[0x29EDBA2F8]);
  v241 = v19;
  MEMORY[0x2A1C7C4A8](v19);
  v237 = &v217 - v20;
  sub_29DF56D40(0, &qword_2A1A5E340, MEMORY[0x29EDBA2F8], v9);
  MEMORY[0x2A1C7C4A8](v21 - 8);
  v239 = (&v217 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v23);
  v259 = (&v217 - v24);
  v25 = MEMORY[0x29EDBA2F8];
  sub_29DF579B8(0, &qword_2A18193B0, MEMORY[0x29EDBA2F8], sub_29DF57AB8, MEMORY[0x29EDCA148]);
  v227 = v26;
  MEMORY[0x2A1C7C4A8](v26);
  v228 = &v217 - v27;
  sub_29DF579B8(0, &qword_2A18193B8, v25, sub_29DF57AB8, MEMORY[0x29EDC9E38]);
  v226 = v28;
  MEMORY[0x2A1C7C4A8](v28);
  v257 = &v217 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v30);
  v267 = &v217 - v31;
  v32 = sub_29E2C31A4();
  v244 = *(v32 - 8);
  MEMORY[0x2A1C7C4A8](v32);
  v248 = &v217 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v34);
  v262 = &v217 - v35;
  MEMORY[0x2A1C7C4A8](v36);
  v222 = &v217 - v37;
  MEMORY[0x2A1C7C4A8](v38);
  v250 = &v217 - v39;
  MEMORY[0x2A1C7C4A8](v40);
  v238 = &v217 - v41;
  MEMORY[0x2A1C7C4A8](v42);
  v264 = &v217 - v43;
  MEMORY[0x2A1C7C4A8](v44);
  v258 = &v217 - v45;
  MEMORY[0x2A1C7C4A8](v46);
  v48 = &v217 - v47;
  MEMORY[0x2A1C7C4A8](v49);
  v51 = &v217 - v50;
  v268 = type metadata accessor for CycleDay();
  MEMORY[0x2A1C7C4A8](v268);
  v266 = &v217 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v53);
  v249 = &v217 - v54;
  MEMORY[0x2A1C7C4A8](v55);
  v273 = &v217 - v56;
  MEMORY[0x2A1C7C4A8](v57);
  v263 = &v217 - v58;
  MEMORY[0x2A1C7C4A8](v59);
  v275 = &v217 - v60;
  MEMORY[0x2A1C7C4A8](v61);
  v236 = &v217 - v62;
  v63 = sub_29E2BCF24();
  v64 = [a1 cellForItemAtIndexPath_];

  if (!v64)
  {
    goto LABEL_8;
  }

  v231 = type metadata accessor for CalendarDayCell();
  v65 = swift_dynamicCastClass();
  if (!v65)
  {

LABEL_8:
    v279 = sub_29E2BCF24();
    [a1 deselectItemAtIndexPath_animated_];
    v78 = v279;

    return;
  }

  v219 = v64;
  v66 = v65;
  v67 = sub_29E2C2DB4();
  if (v67)
  {
    v68 = v67;
    v235 = v14;
    v240 = a1;
    v218 = a2;
    sub_29E2C2D44();

    v69 = v272;
    v70 = sub_29DF4E704();
    v71 = [v70 dayViewModelAtIndex_];

    v72 = v244[4];
    v73 = v236;
    v269 = v244 + 4;
    v271 = v72;
    v72(v236, v51, v32);
    *(v73 + *(v268 + 20)) = v71;
    v74 = v69 + qword_2A1A60E90;
    swift_beginAccess();
    v75 = *(v74 + 16);
    v265 = v74;
    v76 = *(v74 + 24);

    sub_29E2BF404();
    sub_29E2BF404();
    swift_getAtKeyPath();
    if (v281[0])
    {
      v77 = sub_29E091D88(v73, v76);

      if ((v77 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v79 = sub_29E091D88(v73, v75);

      if (v79)
      {
LABEL_13:
        swift_beginAccess();
        v82 = v236;
        sub_29E0EF0BC(v236);
        swift_endAccess();
        sub_29DF4E598();
        sub_29DF523AC(v66, v218, 1);

        v83 = v240;
LABEL_65:
        sub_29DF57958(v82, type metadata accessor for CycleDay);
        v186 = sub_29E2BCF24();
        [v83 deselectItemAtIndexPath:v186 animated:1];

        return;
      }
    }

    v80 = [objc_opt_self() hkmc_menstrualCyclesDefaults];
    v81 = [v80 hkmc_calendarLogAdjacentDaysDisabled];

    if (v81)
    {
      goto LABEL_13;
    }

    v84 = v244;
    v85 = (v244 + 2);
    v277 = v244[2];
    v277(v48, v236, v32);
    v255 = [objc_allocWithZone(MEMORY[0x29EDC3350]) initWithFlowDayIndex_];
    v86 = v84[1];
    v86(v48, v32);
    v279 = (v84 + 1);
    sub_29E2C30D4();
    v87 = v228;
    sub_29E2C3114();
    v278 = v86;
    v86(v48, v32);
    v276 = *(v227 + 36);
    sub_29E2C3124();
    v88 = v226;
    v89 = v267;
    v90 = &v267[*(v226 + 44)];
    v91 = *(v241 + 48);
    v92 = v271;
    v271(v90 + v91, v87, v32);
    v234 = *(v88 + 36);
    v92(v89 + v234, &v276[v87], v32);
    v93 = v277;
    v220 = *(v88 + 40);
    *(v89 + v220) = -1;
    v93(v89, v90 + v91, v32);
    *v90 = 0;
    *(v90 + 8) = 0;
    v260 = qword_2A1A60EA0;
    v230 = (v279 + 32);
    v246 = (v279 + 48);
    v245 = (v279 + 40);
    v276 = v85;
    v94 = v259;
    v95 = v258;
    v233 = v91;
    v232 = v90;
    do
    {
      v93(v95, v90 + v91, v32);
      v261 = sub_29DEF60A0();
      if (sub_29E2C32B4())
      {
        v278(v95, v32);
        v98 = 1;
      }

      else
      {
        v99 = v92;
        v100 = v237;
        sub_29DF57B74(v90, v237);
        v101 = *(v241 + 48);
        sub_29DF57AB8();
        v102 = sub_29E2C4324();
        v104 = v103;
        v105 = (v100 + v101);
        v92 = v99;
        v89 = v267;
        v94 = v259;
        v278(v105, v32);
        *v90 = v102;
        *(v90 + 8) = v104 & 1;
        (*v230)(v90 + v91, v48, v32);
        v92(v94, v258, v32);
        v98 = 0;
      }

      v243 = *v246;
      v243(v94, v98, 1, v32);
      v242 = *v245;
      v106 = v242(v94, 1, v32);
      v107 = v277;
      if (v106 == 1)
      {
        break;
      }

      v108 = v264;
      v92(v264, v94, v32);
      v109 = *(v272 + v260);
      v110 = v107;
      v111 = [v109 dayViewModelAtIndex_];

      v112 = v275;
      v110(v275, v108, v32);
      *(v112 + *(v268 + 20)) = v111;
      v113 = *(v265 + 16);
      v114 = *(v265 + 24);
      LOBYTE(v281[0]) = 0;
      sub_29DF57CB4(v112, v263, type metadata accessor for CycleDay);

      sub_29E2BF404();
      sub_29E2BF404();
      swift_getAtKeyPath();
      if (v280 == 1)
      {
        if (*(v114 + 16) && (sub_29DF57C6C(&qword_2A181DCA0, MEMORY[0x29EDBA2F8]), v115 = sub_29E2C3244(), v116 = -1 << *(v114 + 32), v117 = v115 & ~v116, ((*(v114 + 56 + ((v117 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v117) & 1) != 0))
        {
          v118 = ~v116;
          v119 = v244[9];
          do
          {
            v277(v48, *(v114 + 48) + v119 * v117, v32);
            sub_29DF57C6C(&qword_2A18199C0, MEMORY[0x29EDBA2F8]);
            v120 = sub_29E2C3304();
            v278(v48, v32);
            if (v120)
            {
              break;
            }

            v117 = (v117 + 1) & v118;
          }

          while (((*(v114 + 56 + ((v117 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v117) & 1) != 0);
          v96 = v120 ^ 1;
        }

        else
        {
          v96 = 1;
        }
      }

      else if (*(v113 + 16) && (sub_29DF57C6C(&qword_2A181DCA0, MEMORY[0x29EDBA2F8]), v121 = sub_29E2C3244(), v122 = -1 << *(v113 + 32), v123 = v121 & ~v122, ((*(v113 + 56 + ((v123 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v123) & 1) != 0))
      {
        v124 = ~v122;
        v125 = v244[9];
        do
        {
          v277(v48, *(v113 + 48) + v125 * v123, v32);
          sub_29DF57C6C(&qword_2A18199C0, MEMORY[0x29EDBA2F8]);
          v96 = sub_29E2C3304();
          v278(v48, v32);
          if (v96)
          {
            break;
          }

          v123 = (v123 + 1) & v124;
        }

        while (((*(v113 + 56 + ((v123 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v123) & 1) != 0);
      }

      else
      {
        v96 = 0;
      }

      _s12ChangeSetDayCMa();
      v97 = swift_allocObject();
      sub_29DF578F0(v263, v97 + OBJC_IVAR____TtCE24MenstrualCyclesAppPluginCSo24HKMCAdjacentFlowAnalyzer12ChangeSetDay_cycleDay, type metadata accessor for CycleDay);
      *(v97 + OBJC_IVAR____TtCE24MenstrualCyclesAppPluginCSo24HKMCAdjacentFlowAnalyzer12ChangeSetDay_shouldShowMenstruationFlow) = v96 & 1;
      [v255 addNextDescendingDay:v97 shouldStop:v281];

      sub_29DF57958(v275, type metadata accessor for CycleDay);
      v278(v264, v32);
      v92 = v271;
      v93 = v277;
      v94 = v259;
      v89 = v267;
      v95 = v258;
      v90 = v232;
      v91 = v233;
    }

    while (LOBYTE(v281[0]) != 1);
    sub_29DF57C10(v89, &qword_2A18193B8, MEMORY[0x29EDBA2F8], sub_29DF57AB8, MEMORY[0x29EDC9E38]);
    if (([v255 isUnsuitableForRange] & 1) == 0)
    {
      sub_29E2C30D4();
      v126 = v228;
      sub_29E2C30F4();
      v278(v48, v32);
      v264 = *(v227 + 36);
      sub_29E2C3104();
      v127 = v226;
      v128 = v257;
      v129 = &v257[*(v226 + 44)];
      v130 = *(v241 + 48);
      v131 = v271;
      v271(&v130[v129], v126, v32);
      v275 = *(v127 + 36);
      v132 = &v264[v126];
      v133 = v130;
      v134 = v277;
      v131(v128 + v275, v132, v32);
      v263 = *(v127 + 40);
      *(v128 + v263) = 1;
      v134(v128, &v133[v129], v32);
      *v129 = 0;
      *(v129 + 8) = 0;
      v135 = v239;
      v136 = v238;
      v264 = v133;
      v267 = v129;
      do
      {
        v139 = v134;
        v134(v136, &v133[v129], v32);
        if (sub_29E2C32A4())
        {
          v278(v136, v32);
          v140 = 1;
        }

        else
        {
          v141 = v237;
          sub_29DF57B74(v129, v237);
          v142 = *(v241 + 48);
          sub_29DF57AB8();
          v143 = sub_29E2C4324();
          v145 = v144;
          v146 = (v141 + v142);
          v128 = v257;
          v135 = v239;
          v278(v146, v32);
          *v129 = v143;
          *(v129 + 8) = v145 & 1;
          (*v230)(&v133[v129], v48, v32);
          v271(v135, v238, v32);
          v140 = 0;
        }

        v243(v135, v140, 1, v32);
        if (v242(v135, 1, v32) == 1)
        {
          break;
        }

        v147 = v250;
        v271(v250, v135, v32);
        v148 = *(v272 + v260);
        v149 = [v148 dayViewModelAtIndex_];

        v150 = v273;
        v139(v273, v147, v32);
        *&v150[*(v268 + 20)] = v149;
        v151 = *(v265 + 16);
        v152 = *(v265 + 24);
        LOBYTE(v281[0]) = 0;
        sub_29DF57CB4(v150, v249, type metadata accessor for CycleDay);

        sub_29E2BF404();
        sub_29E2BF404();
        swift_getAtKeyPath();
        if (v280 == 1)
        {
          if (*(v152 + 16) && (sub_29DF57C6C(&qword_2A181DCA0, MEMORY[0x29EDBA2F8]), v153 = sub_29E2C3244(), v154 = -1 << *(v152 + 32), v155 = v153 & ~v154, ((*(v152 + 56 + ((v155 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v155) & 1) != 0))
          {
            v156 = ~v154;
            v157 = v244[9];
            do
            {
              v277(v48, *(v152 + 48) + v157 * v155, v32);
              sub_29DF57C6C(&qword_2A18199C0, MEMORY[0x29EDBA2F8]);
              v158 = sub_29E2C3304();
              v278(v48, v32);
              if (v158)
              {
                break;
              }

              v155 = (v155 + 1) & v156;
            }

            while (((*(v152 + 56 + ((v155 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v155) & 1) != 0);
            v137 = v158 ^ 1;
          }

          else
          {
            v137 = 1;
          }
        }

        else if (*(v151 + 16) && (sub_29DF57C6C(&qword_2A181DCA0, MEMORY[0x29EDBA2F8]), v159 = sub_29E2C3244(), v160 = -1 << *(v151 + 32), v161 = v159 & ~v160, ((*(v151 + 56 + ((v161 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v161) & 1) != 0))
        {
          v162 = ~v160;
          v163 = v244[9];
          do
          {
            v277(v48, *(v151 + 48) + v163 * v161, v32);
            sub_29DF57C6C(&qword_2A18199C0, MEMORY[0x29EDBA2F8]);
            v137 = sub_29E2C3304();
            v278(v48, v32);
            if (v137)
            {
              break;
            }

            v161 = (v161 + 1) & v162;
          }

          while (((*(v151 + 56 + ((v161 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v161) & 1) != 0);
        }

        else
        {
          v137 = 0;
        }

        _s12ChangeSetDayCMa();
        v138 = swift_allocObject();
        sub_29DF578F0(v249, v138 + OBJC_IVAR____TtCE24MenstrualCyclesAppPluginCSo24HKMCAdjacentFlowAnalyzer12ChangeSetDay_cycleDay, type metadata accessor for CycleDay);
        *(v138 + OBJC_IVAR____TtCE24MenstrualCyclesAppPluginCSo24HKMCAdjacentFlowAnalyzer12ChangeSetDay_shouldShowMenstruationFlow) = v137 & 1;
        [v255 addNextAscendingDay:v138 shouldStop:v281];

        sub_29DF57958(v273, type metadata accessor for CycleDay);
        v278(v250, v32);
        v134 = v277;
        v135 = v239;
        v128 = v257;
        v136 = v238;
        v129 = v267;
        v133 = v264;
      }

      while (LOBYTE(v281[0]) != 1);
      sub_29DF57C10(v128, &qword_2A18193B8, MEMORY[0x29EDBA2F8], sub_29DF57AB8, MEMORY[0x29EDC9E38]);
    }

    [v255 flowDayIndexRange];
    v164 = v225;
    sub_29E2C3AA4();
    v165 = v229 + 48;
    v166 = *(v229 + 48);
    v167 = v166(v164, 1, v256);
    v83 = v240;
    v275 = v48;
    if (v167 == 1)
    {
      v273 = v166;
      v229 = v165;
      sub_29E2C30D4();
      v168 = v222;
      sub_29E2C30D4();
      v169 = sub_29E2C32B4();
      v170 = v224;
      if ((v169 & 1) == 0)
      {
        goto LABEL_84;
      }

      v171 = v251;
      v172 = v271;
      v271(v251, v48, v32);
      v173 = v253;
      v172(v171 + *(v253 + 48), v168, v32);
      v174 = v172;
      v175 = v252;
      sub_29DF57CB4(v171, v252, sub_29DEC6594);
      v176 = *(v173 + 48);
      v174(v170, v175, v32);
      v177 = v278;
      v278((v175 + v176), v32);
      sub_29DF578F0(v171, v175, sub_29DEC6594);
      v178 = v256;
      v271(v170 + *(v256 + 36), (v175 + *(v173 + 48)), v32);
      v177(v175, v32);
      v179 = v225;
      if ((v273)(v225, 1, v178) != 1)
      {
        sub_29DF57880(v179, &qword_2A1A5E2A0, sub_29DEC65FC);
      }
    }

    else
    {
      v170 = v224;
      sub_29DF578F0(v164, v224, sub_29DEC65FC);
    }

    v180 = v254;
    sub_29DF57CB4(v170, v254, sub_29DEC65FC);
    v181 = *(v223 + 36);
    v182 = v277;
    v277(&v181[v180], v170, v32);
    v183 = v170;
    v184 = v182;
    sub_29DF57958(v183, sub_29DEC65FC);
    v185 = *(v256 + 36);
    v273 = qword_2A1A60E98;
    v267 = sub_29DF57C6C(&qword_2A18199C0, MEMORY[0x29EDBA2F8]);
    if (sub_29E2C3304())
    {
LABEL_64:

      sub_29DF57C10(v180, &qword_2A1819398, sub_29DEC65FC, sub_29DF57A38, MEMORY[0x29EDC9E20]);
      v82 = v236;
      goto LABEL_65;
    }

    v259 = (v221 + 8);
    v264 = v181;
    v274 = v32;
    v263 = v185;
    while (1)
    {
      v184(v262, &v181[v180], v32);
      v188 = &v181[v180];
      v189 = v275;
      v190 = v271;
      v271(v275, v188, v32);
      if ((sub_29E2C32B4() & 1) == 0)
      {
        break;
      }

      v191 = v185;
      v192 = v251;
      v184(v251, v180, v32);
      v193 = v253;
      v184((v192 + *(v253 + 48)), (v180 + v191), v274);
      v194 = v252;
      sub_29DF57CB4(v192, v252, sub_29DEC6594);
      v195 = *(v193 + 48);
      v196 = v235;
      v190(v235, v194, v274);
      v197 = v278;
      v278((v194 + v195), v274);
      sub_29DF578F0(v192, v194, sub_29DEC6594);
      v190((v196 + *(v256 + 36)), v194 + *(v193 + 48), v274);
      v198 = v274;
      v197(v194, v274);
      if ((sub_29E2C32B4() & 1) == 0)
      {
        goto LABEL_82;
      }

      v199 = sub_29E2C3294();
      sub_29DF57958(v196, sub_29DEC65FC);
      if ((v199 & 1) == 0)
      {
        goto LABEL_83;
      }

      v281[0] = 1;
      sub_29DF57AB8();
      v180 = v254;
      v181 = v264;
      sub_29E2C4334();
      v278(v189, v198);
      v200 = v198;
      v201 = v248;
      v271(v248, v262, v200);
      v202 = v272;
      v203 = *(v272 + v260);
      v204 = [v203 dayViewModelAtIndex_];

      v205 = v266;
      v277(v266, v201, v200);
      *(v205 + *(v268 + 20)) = v204;
      v206 = sub_29E2C2DB4();
      if (!v206)
      {
        goto LABEL_85;
      }

      v207 = v206;
      sub_29E2C2D64();

      v208 = v265;
      swift_beginAccess();
      sub_29E0EF0BC(v205);
      swift_endAccess();
      v209 = *&v273[v202];
      v210 = sub_29DF4E668();
      v211 = v210;
      v185 = v263;
      if (v209 > 3)
      {
        v212 = 0;
        v184 = v277;
      }

      else
      {
        v184 = v277;
        if (*(*(v208 + 16) + 16))
        {
          v212 = 1;
        }

        else
        {
          v212 = *(*(v208 + 24) + 16) != 0;
        }
      }

      [v210 setEnabled_];

      v213 = sub_29E2BCF24();
      v83 = v240;
      v214 = [v240 cellForItemAtIndexPath_];

      v215 = v266;
      if (v214)
      {
        v216 = swift_dynamicCastClass();
        if (v216)
        {
          sub_29DF523AC(v216, v270, 1);
          v215 = v266;
        }
      }

      (*v259)(v270, v247);
      sub_29DF57958(v215, type metadata accessor for CycleDay);
      v187 = v201;
      v32 = v274;
      v278(v187, v274);
      if (sub_29E2C3304())
      {
        goto LABEL_64;
      }
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
  }

  __break(1u);
}

void sub_29DF523AC(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = sub_29E2C31A4();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v11 = type metadata accessor for CycleDay();
  MEMORY[0x2A1C7C4A8](v11);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v14 = (a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_day);
  v15 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_day + 16);
  if (v15)
  {
    v17 = v14[4];
    v16 = v14[5];
    v18 = v14[3];
    v19 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_day + 8);
    v31[0] = *v14;
    v31[1] = v19;
    v31[2] = v15;
    v31[3] = v18;
    v31[4] = v17;
    v31[5] = v16;
    LOBYTE(v32) = v31[0];
    *(&v32 + 1) = v19;
    *&v33 = v15;
    WORD4(v33) = v18 & 0x101;
    BYTE10(v33) = BYTE2(v18);
    *&v34 = v17;
    *(&v34 + 1) = v16;
    sub_29DEA6950(v31, v35);
    v20 = sub_29E2C2DB4();
    if (v20)
    {
      v21 = v20;
      sub_29E2C2D44();

      v22 = sub_29DF4E704();
      v23 = [v22 dayViewModelAtIndex_];

      (*(v8 + 32))(v13, v10, v7);
      *&v13[*(v11 + 20)] = v23;
      v24 = v4 + qword_2A1A60E90;
      swift_beginAccess();
      v25 = *(v24 + 16);
      v26 = *(v24 + 24);

      sub_29E2BF404();
      sub_29E2BF404();
      swift_getAtKeyPath();
      if (LOBYTE(v35[0]) == 1)
      {
        v27 = sub_29E091D88(v13, v26);

        v28 = v27 ^ 1;
      }

      else
      {
        v28 = sub_29E091D88(v13, v25);
      }

      BYTE8(v33) = v28 & 1;
      sub_29E224528();
      v35[1] = v33;
      v35[2] = v34;
      v29 = *MEMORY[0x29EDCA1E8] & *a1;
      v35[0] = v32;
      (*(v29 + 280))(v35, a3 & 1);
      sub_29DEA69AC(v35);
      sub_29DF57958(v13, type metadata accessor for CycleDay);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_29DF526EC(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_29E2BCFB4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  v9 = a3;
  v10 = a1;
  sub_29DF4FF94(v9, v8);

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_29DF527E8(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_29E2BCFB4();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_29DF56590(v12, v10);

  return (*(v8 + 8))(v10, v7);
}

void sub_29DF528FC()
{
  v1 = v0;
  sub_29DEC6594();
  v124 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v125 = &v121 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v123 = &v121 - v5;
  v6 = MEMORY[0x29EDC9C68];
  sub_29DF56D40(0, &qword_2A1A5E2A0, sub_29DEC65FC, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v121 - v11;
  v13 = sub_29E2C31A4();
  v129 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v127 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v128 = &v121 - v16;
  MEMORY[0x2A1C7C4A8](v17);
  v131 = &v121 - v18;
  MEMORY[0x2A1C7C4A8](v19);
  v130 = &v121 - v20;
  v21 = sub_29E2BCFB4();
  v22 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21);
  v132 = &v121 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v24);
  v133 = &v121 - v25;
  MEMORY[0x2A1C7C4A8](v26);
  v155 = &v121 - v27;
  MEMORY[0x2A1C7C4A8](v28);
  v143 = &v121 - v29;
  MEMORY[0x2A1C7C4A8](v30);
  v142 = &v121 - v31;
  MEMORY[0x2A1C7C4A8](v32);
  v159 = &v121 - v33;
  sub_29DF56D40(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], v6);
  MEMORY[0x2A1C7C4A8](v34 - 8);
  v149 = &v121 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v36);
  v134 = &v121 - v37;
  MEMORY[0x2A1C7C4A8](v38);
  v141 = &v121 - v39;
  MEMORY[0x2A1C7C4A8](v40);
  v140 = &v121 - v41;
  MEMORY[0x2A1C7C4A8](v42);
  v139 = &v121 - v43;
  MEMORY[0x2A1C7C4A8](v44);
  v138 = &v121 - v45;
  MEMORY[0x2A1C7C4A8](v46);
  v48 = &v121 - v47;
  v50 = MEMORY[0x2A1C7C4A8](v49);
  v51 = *(v22 + 56);
  v158 = &v121 - v52;
  v51(v50);
  v156 = v48;
  v153 = v51;
  v154 = v22 + 56;
  (v51)(v48, 1, 1, v21);
  v53 = [v0 collectionView];
  if (!v53)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v54 = v53;
  v55 = [v53 preparedCells];

  if (!v55)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v150 = v21;
  sub_29DE9408C(0, &unk_2A18199D0);
  v56 = sub_29E2C3614();

  v135 = v22;
  v126 = v13;
  v122 = v12;
  v121 = v9;
  if (v56 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_29E2C4484())
  {
    v58 = v149;
    v59 = v56;
    v144 = v1;
    if (!i)
    {
      break;
    }

    v60 = 0;
    v147 = v56 & 0xFFFFFFFFFFFFFF8;
    v148 = v56 & 0xC000000000000001;
    v157 = (v135 + 32);
    v61 = (v135 + 48);
    v145 = (v135 + 8);
    v146 = (v135 + 16);
    v137 = v56;
    v136 = i;
    while (1)
    {
      if (v148)
      {
        v62 = MEMORY[0x29ED80D70](v60, v59);
      }

      else
      {
        if (v60 >= *(v147 + 16))
        {
          goto LABEL_43;
        }

        v62 = *(v59 + 8 * v60 + 32);
      }

      v63 = v62;
      v64 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        break;
      }

      v65 = v1;
      v66 = [v1 collectionView];
      if (!v66)
      {
        goto LABEL_46;
      }

      v56 = v66;
      v67 = v63;
      v68 = [v66 indexPathForCell_];

      v69 = v150;
      if (v68)
      {
        v151 = v67;
        v152 = v60 + 1;
        v70 = v142;
        sub_29E2BCF44();

        v71 = *v157;
        (*v157)(v159, v70, v69);
        v72 = v139;
        sub_29DF57800(v158, v139, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
        v73 = *v61;
        v74 = (*v61)(v72, 1, v69);
        v75 = v143;
        if (v74 == 1)
        {
          (*v146)(v143, v159, v69);
          if (v73(v72, 1, v69) != 1)
          {
            sub_29DF57880(v72, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
          }
        }

        else
        {
          v71(v143, v72, v69);
        }

        sub_29DF57C6C(&qword_2A1819390, MEMORY[0x29EDB9D70]);
        v76 = v159;
        v77 = sub_29E2C3294();
        sub_29DF57880(v158, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
        if (v77)
        {
          (*v145)(v75, v69);
          v78 = v138;
          (*v146)(v138, v76, v69);
        }

        else
        {
          v78 = v138;
          v71(v138, v75, v69);
        }

        (v153)(v78, 0, 1, v69);
        sub_29DF3C8C4(v78, v158);
        v79 = v141;
        sub_29DF57800(v156, v141, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
        if (v73(v79, 1, v69) == 1)
        {
          (*v146)(v155, v159, v69);
          v80 = v73(v79, 1, v69);
          v1 = v144;
          if (v80 != 1)
          {
            sub_29DF57880(v79, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
          }
        }

        else
        {
          v71(v155, v79, v69);
          v1 = v144;
        }

        v81 = v159;
        v82 = sub_29E2C32A4();

        v83 = v156;
        sub_29DF57880(v156, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
        if (v82)
        {
          v84 = v155;
        }

        else
        {
          v84 = v81;
        }

        if ((v82 & 1) == 0)
        {
          v81 = v155;
        }

        (*v145)(v84, v69);
        v56 = v140;
        v71(v140, v81, v69);
        (v153)(v56, 0, 1, v69);
        sub_29DF3C8C4(v56, v83);
        v59 = v137;
        i = v136;
        v64 = v152;
      }

      else
      {

        v1 = v65;
      }

      ++v60;
      v58 = v149;
      if (v64 == i)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

LABEL_33:

  v85 = v158;
  v86 = v134;
  sub_29DF57800(v158, v134, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
  v87 = v135;
  v88 = *(v135 + 48);
  v89 = v150;
  if (v88(v86, 1, v150) == 1)
  {
    v90 = MEMORY[0x29EDB9D70];
    sub_29DF57880(v156, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
    sub_29DF57880(v85, &unk_2A1A61BA0, v90);
    v91 = v86;
LABEL_41:
    sub_29DF57880(v91, &unk_2A1A61BA0, v90);
    return;
  }

  v92 = *(v87 + 32);
  v93 = v133;
  v92(v133, v86, v89);
  v94 = v156;
  sub_29DF57800(v156, v58, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
  if (v88(v58, 1, v89) == 1)
  {
    (*(v87 + 8))(v93, v89);
    v90 = MEMORY[0x29EDB9D70];
    sub_29DF57880(v94, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
    sub_29DF57880(v85, &unk_2A1A61BA0, v90);
    v91 = v58;
    goto LABEL_41;
  }

  v92(v132, v58, v89);
  v95 = sub_29E2C2DB4();
  if (!v95)
  {
    goto LABEL_49;
  }

  v96 = v95;
  v97 = v130;
  sub_29E2C2D44();

  v98 = sub_29E2C2DB4();
  v99 = v126;
  v100 = v129;
  v101 = v128;
  if (v98)
  {
    v102 = v98;
    sub_29E2C2D44();

    v103 = v127;
    sub_29E2C30D4();
    sub_29E2C30F4();
    v159 = *(v100 + 8);
    (v159)(v103, v99);
    sub_29DEF60A0();
    if (sub_29E2C32B4())
    {
      v104 = *(v100 + 16);
      v105 = v101;
      v106 = v100;
      v107 = v123;
      v104(v123, v97, v99);
      v108 = v124;
      v109 = *(v106 + 32);
      v109(v107 + *(v124 + 48), v105, v99);
      v110 = v125;
      sub_29DF57CB4(v107, v125, sub_29DEC6594);
      v111 = *(v108 + 48);
      v112 = v122;
      v109(v122, v110, v99);
      v113 = v159;
      (v159)(v110 + v111, v99);
      sub_29DF578F0(v107, v110, sub_29DEC6594);
      v114 = *(v108 + 48);
      sub_29DEC65FC();
      v116 = v115;
      v109(v112 + *(v115 + 36), (v110 + v114), v99);
      (v113)(v110, v99);
      (*(*(v116 - 8) + 56))(v112, 0, 1, v116);
      v117 = sub_29DF4E704();
      sub_29DF57800(v112, v121, &qword_2A1A5E2A0, sub_29DEC65FC);
      v160 = [v117 activeDayRange];
      v161 = v118;
      sub_29E2C3AB4();
      [v117 setActiveDayRange_];

      sub_29DF57880(v112, &qword_2A1A5E2A0, sub_29DEC65FC);
      (v113)(v131, v99);
      (v113)(v130, v99);
      v119 = *(v135 + 8);
      v120 = v150;
      v119(v132, v150);
      v119(v133, v120);
      v90 = MEMORY[0x29EDB9D70];
      sub_29DF57880(v156, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
      v91 = v158;
      goto LABEL_41;
    }

    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_50:
  __break(1u);
}

uint64_t sub_29DF5390C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_29E2BCFB4();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_29DF56938();

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_29DF53A1C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = sub_29DF569E8();

  return a1 & 1;
}

uint64_t sub_29DF53A68(void *a1)
{
  v2 = v1;
  v3 = qword_2A1A60E98;
  if (*(v1 + qword_2A1A60E98) == 2)
  {
    swift_getObjectType();
    [a1 _verticalVelocity];
    v6 = fabs(v5);
    sub_29E2C2DF4();
    if (v7 < v6)
    {
      v8 = *(v2 + v3);
      *(v2 + v3) = 3;
      sub_29DF4E30C(v8);
      sub_29DF57584(v8);
    }
  }

  return MEMORY[0x2A1C665B8]();
}

void sub_29DF53B10(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_29DF53A68(v4);
}

void sub_29DF53B78()
{
  if (*(v0 + qword_2A1A60E98) == 3)
  {
    *(v0 + qword_2A1A60E98) = 2;
    sub_29DF4E30C(3);
    sub_29DF528FC();

    sub_29DF53BD0(1);
  }
}