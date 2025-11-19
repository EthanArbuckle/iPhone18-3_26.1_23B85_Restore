uint64_t sub_E95D0()
{
  sub_386A8();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  sub_38800();
  v5 = *(v4 + 29968);
  v7 = *(v6 + 29960);
  v8 = *v0;
  sub_C990();
  *v9 = v8;

  sub_2D64((v2 + 25336));
  v10 = sub_17960();

  return _swift_task_switch(v10, v11, v12);
}

void sub_E96D8()
{
  sub_3868C();
  sub_38664();
  v1 = v0[3744];
  v2 = v0[3715];
  v3 = v0[3711];
  sub_105C50();
  v4 = v0[3571];
  v5 = v0[3554];
  sub_1067EC();
  v16 = v0[3539];
  v6 = v0[3524];
  v7 = v0[3497];
  sub_106898(v8);
  sub_106968();
  sub_387F4();
  v9 = swift_allocObject();
  sub_106850(v9);
  sub_1068F4();
  v0[3488] = sub_16C1BC();
  sub_106918();

  sub_106900();
  sub_2D64(v0 + 3157);
  sub_1055A0();
  sub_103BA0(v6, v10);
  sub_8748(v16, &qword_1C57F8, &unk_172510);
  v11 = sub_107058();
  v12(v11);
  sub_105424();
  sub_103BA0(v17, v13);
  sub_8748(v18, &qword_1C5800, &unk_16F510);
  sub_8748(v19, &qword_1C69C0, &unk_174290);

  sub_104F9C();
  sub_10550C();

  sub_105C60();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

void sub_E9DD0()
{
  sub_3868C();
  sub_38664();
  sub_1059C0();
  v3 = v1[3656];
  sub_1058F8();
  v4 = sub_38408();
  v2(v4);
  v5 = sub_16DBDC();
  sub_16E36C();
  sub_106A70();
  sub_106344();
  v6 = v1[3712];
  v7 = v1[3656];
  sub_106568();
  if (v8)
  {
    v9 = sub_3A58C();
    v10 = sub_1054E8(v9);
    sub_106A88(v10, v11, v12, v13);

    sub_105B90(&def_259DC, v14, v15, "Couldn't create specificMedicationAllMedsLoggedAlready_Dialog, returning GenericErrorFlow");
    sub_3A5E0();
  }

  else
  {
  }

  v16 = sub_105A64();
  v6(v16);
  v17 = v1[3715];
  v18 = v1[3711];
  v28 = v1[3607];
  sub_106360();
  v19 = v1[3554];
  v20 = v1[3546];
  v21 = sub_10591C();
  sub_8284(v21, (v1 + 1516));
  sub_6361C(v1 + 1516, v1 + 1536);
  sub_82E0();
  sub_16C4EC();

  sub_106900();
  sub_8334((v1 + 1536));
  v22 = *(v20 + 8);
  v23 = sub_387CC();
  v24(v23);
  sub_105424();
  sub_103BA0(v0, v25);
  sub_8748(v7, &qword_1C5800, &unk_16F510);
  sub_8748(v28, &qword_1C69C0, &unk_174290);
  sub_104B50();
  sub_105454();

  sub_105A18();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_EA4F8()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  v4 = *(v3 + 30016);
  *v2 = *v0;
  *(v1 + 30024) = v5;
  *(v1 + 30032) = v6;

  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_EA5E4()
{
  sub_3868C();
  sub_38664();
  v1 = *(v0 + 30032);
  v2 = *(v0 + 30024);
  sub_2D64((v0 + 21496));
  if (!v2 && v1 == 0xE000000000000000 || (v3 = *(v0 + 30032), v4 = *(v0 + 30024), (sub_16E6BC() & 1) != 0))
  {
    v5 = *(v0 + 30032);
    sub_106B44();
    v6 = *(v0 + 29512);
    v7 = *(v0 + 29504);
    v8 = *(v0 + 29208);
    v9 = *(v0 + 28864);

    sub_1067B8();

    sub_107064();

    sub_105B70();
    v10 = sub_A77C4();
    v6(v10);
    v11 = sub_16DBDC();
    sub_16E36C();
    sub_106A08();
    if (sub_10623C())
    {
      v12 = sub_3A58C();
      sub_105A28(v12);
      v13 = *(v0 + 29984);
      if (*(v8 + 16))
      {
        while (1)
        {
          v138 = *(v8 + 32);
          v14 = sub_105734();
          sub_3A5A4(v14, v15, v16, v17);
          sub_1065A8();
        }
      }

      v18 = *(v0 + 29992);
      v7 = *(v0 + 29208);
      sub_106404();
      sub_105BB0(&def_259DC, v19, v20, "Couldn't get a displayName for this medID, returning GenericErrorFlow");
      sub_3A5E0();

      v21 = sub_105B00();
      v18(v21);
    }

    else
    {
      v22 = *(v0 + 29992);
      v2 = *(v0 + 29208);
      sub_106258();

      v23 = sub_1058E8();
      v22(v23);
    }

    v24 = *(v0 + 30000);
    v25 = sub_105674();
    sub_8284(v25, v0 + 13888);
    v26 = sub_106BC0();
    sub_6361C(v26, v27);
    sub_82E0();
    sub_16C4EC();

    sub_376FC(v0 + 20104);
    sub_8334(v0 + 14048);
    sub_105424();
    sub_103BA0(v7, v28);
    sub_8748(v2, &qword_1C5800, &unk_16F510);
    sub_8748(v11, &qword_1C69C0, &unk_174290);
    sub_104F9C();
    sub_1056B8();

    sub_105BE0();
    sub_8CC0();

    __asm { BRAA            X1, X16 }
  }

  sub_106B28();
  v31 = getMedDosageValue(from:)();
  v33 = v32;

  if (v33)
  {
    goto LABEL_17;
  }

  v34 = *(v0 + 30008);
  v35 = *(v0 + 30000);
  v36 = *(v0 + 29976);
  v37 = *(v0 + 29520);
  v38 = *(v0 + 29512);
  v39 = *(v0 + 29504);
  v40 = *(v0 + 29200);
  v41 = *&v31;
  v42 = *(v0 + 28864);
  v43 = sub_FEFD4(v41);
  [v35 setDosage:v43];
  sub_8B48();
  v38(v40, v39, v42);
  sub_106F78();
  v44 = swift_allocObject();
  *(v44 + 16) = v43;
  v45 = v43;
  v46 = sub_16DBDC();
  LOBYTE(v39) = sub_16E36C();
  sub_106420();
  v47 = swift_allocObject();
  *(v47 + 16) = 64;
  sub_106420();
  v48 = swift_allocObject();
  sub_106AF0(v48);
  sub_106264();
  v49 = swift_allocObject();
  *(v49 + 16) = sub_1041B4;
  *(v49 + 24) = v44;
  sub_106264();
  v50 = swift_allocObject();
  *(v50 + 16) = sub_1041BC;
  *(v50 + 24) = v49;
  v51 = sub_106F30();
  sub_61090(v51, 3);
  *v52 = sub_104B38;
  v52[1] = v47;
  v52[2] = sub_104B38;
  v52[3] = v48;
  v52[4] = sub_1041C4;
  v52[5] = v50;

  if (!os_log_type_enabled(v46, v39))
  {
    v73 = *(v0 + 29992);
    v74 = *(v0 + 29200);
    v75 = *(v0 + 28872);
    v76 = *(v0 + 28864);

    v73(v74, v76);
LABEL_17:
    v72 = *(v0 + 29984);
    goto LABEL_18;
  }

  v53 = *(v0 + 29984);
  sub_3A58C();
  v54 = sub_93228();
  sub_106ABC(258);
  v55 = sub_105734();
  sub_3A5A4(v55, v56, v57, v58);
  if (v53)
  {
    goto LABEL_21;
  }

  v59 = sub_105734();
  sub_3A5A4(v59, v60, v61, v62);

  v63 = sub_105734();
  sub_3A5A4(v63, v64, v65, v66);
  v135 = *(v0 + 29992);
  v67 = *(v0 + 29200);
  v68 = *(v0 + 28872);
  sub_106CB0();

  sub_1070F0(&def_259DC, v69, v70, "Post-disambiguation, re-grab the dosage: (%@) in task");
  sub_8748(v54, &qword_1C57B8, &qword_1715A0);
  sub_8A2C();
  sub_3A5E0();

  v71 = sub_1064C0();
  v135(v71);
  v72 = 0;
LABEL_18:
  sub_106B28();
  v77 = getMedDosageUnit(from:)();
  v79 = v78;

  if (v79)
  {
    v136 = v72;
    v80 = *(v0 + 30000);
    v81 = *(v0 + 29976);
    v82 = *(v0 + 29520);
    v83 = *(v0 + 29512);
    v84 = *(v0 + 29504);
    v85 = *(v0 + 29192);
    v86 = sub_106CB0();
    sub_1035A8(v86, v79, v87);
    sub_106204();
    v88 = sub_13298();
    v83(v88);
    sub_106264();
    v89 = swift_allocObject();
    *(v89 + 16) = v77;
    *(v89 + 24) = v79;

    v90 = sub_16DBDC();
    LOBYTE(v83) = sub_16E36C();
    sub_106420();
    v91 = swift_allocObject();
    *(v91 + 16) = 32;
    sub_106420();
    v92 = swift_allocObject();
    sub_106AF0(v92);
    sub_106264();
    v93 = swift_allocObject();
    *(v93 + 16) = sub_1041AC;
    *(v93 + 24) = v89;
    sub_106264();
    v94 = swift_allocObject();
    *(v94 + 16) = sub_104B28;
    *(v94 + 24) = v93;
    v95 = sub_106F30();
    sub_61090(v95, 3);
    *v96 = sub_104B38;
    v96[1] = v91;
    v96[2] = sub_104B38;
    v96[3] = v92;
    v96[4] = sub_1049F0;
    v96[5] = v94;

    if (os_log_type_enabled(v90, v83))
    {
      sub_3A58C();
      v97 = sub_CA30();
      sub_106ABC(258);
      v98 = sub_105734();
      sub_3A5A4(v98, v99, v100, v101);
      if (v136)
      {
LABEL_21:

        sub_8CC0();
      }

      v118 = sub_105734();
      sub_3A5A4(v118, v119, v120, v121);

      v123 = sub_105734();
      sub_3A5A4(v123, v124, v125, v126);
      v127 = *(v0 + 29648);
      v134 = *(v0 + 29192);
      v137 = *(v0 + 29992);
      v128 = *(v0 + 28872);
      v129 = *(v0 + 28864);

      sub_1070F0(&def_259DC, v130, v131, "Post-disambiguation, re-grab the dosageUnit: (%s) in task");
      sub_2D64(v97);
      sub_8A2C();
      sub_3A5E0();

      v137(v134, v129);
      v72 = 0;
    }

    else
    {
      v133 = *(v0 + 29992);
      v103 = *(v0 + 29648);
      v104 = *(v0 + 29192);
      v105 = *(v0 + 28872);
      v106 = *(v0 + 28864);

      v133(v104, v106);
      v72 = v136;
    }
  }

  else
  {
    v102 = *(v0 + 29648);

    sub_1067B8();
  }

  *(v0 + 30040) = v72;
  if ((*(v0 + 30648) & 1) == 0 && *(v0 + 29680))
  {
    v107 = *(v0 + 30008);
    v108 = *(v0 + 30000);
    v109 = *(v0 + 29672);
    v110 = sub_FEFD4(*(v0 + 29664));
    [v108 setStrength:v110];

    sub_106844();
    sub_103550(v111, v112, v113);
  }

  v114 = *(v0 + 30000);
  *(v0 + 30048) = *(*(v0 + 27984) + 352);
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 27872;
  *(v0 + 88) = sub_EB610;
  v115 = swift_continuation_init();
  *(v0 + 20520) = sub_2440(&qword_1C9D18, &qword_176758);
  *(v0 + 20496) = v115;
  *(v0 + 20464) = _NSConcreteStackBlock;
  *(v0 + 20472) = 1107296256;
  *(v0 + 20480) = sub_FF01C;
  *(v0 + 20488) = &unk_1BC068;
  [swift_unknownObjectRetain() handleLogSpecificMedications:v114 completion:v0 + 20464];
  sub_8CC0();

  return _swift_continuation_await(v116);
}

uint64_t sub_EB610()
{
  sub_8A88();
  v7 = *v0;
  v1 = *v0;
  sub_C990();
  *v2 = v1;
  sub_8ACC();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_EB6E0()
{
  sub_38AB4();
  v433 = v7;
  v434 = v8;
  sub_38664();
  v432 = v2;
  v9 = v2 + 0x4000;
  v10 = *(v2 + 30048);
  v11 = *(v2 + 27872);
  *(v2 + 30056) = v11;
  v12 = swift_unknownObjectRelease();
  v13 = (*(&stru_20.maxprot + (swift_isaMask & *v11)))(v12);
  switch(v13)
  {
    case 'j':
      v425 = v11;
      sub_105C30();
      v14 = *(v2 + 29544);
      v15 = *(v2 + 29520);
      v16 = *(v2 + 29512);
      v1 = *(v2 + 29504);
      v17 = *(v2 + 29136);
      sub_105A3C();
      if (v20)
      {
        v21 = v19;
      }

      else
      {
        v21 = v18;
      }

      sub_106BDC((v2 + 18016));
      sub_105748(4);
      sub_376FC(v2 + 18016);
      sub_105B70();
      v22 = sub_106194();
      v16(v22);
      v23 = sub_16DBDC();
      sub_16E36C();
      v24 = sub_10699C();
      if (sub_106984())
      {
        sub_106CE0();
        v25 = *(v2 + 29136);
        v26 = sub_106514();
        sub_105630(v26);
        sub_1028F0(v24, v27, v28, v29);

        sub_1061E4(&def_259DC, v30, v31, "got state .awaitingConfirmationLogAsScheduled inside first .nameSelected turn in SpecificMedLoggingFlow");
        sub_3A5E0();

        v32 = sub_105B50();
        v15(v32);
      }

      else
      {
        v174 = *(v2 + 29992);
        v175 = *(v2 + 29136);
        sub_106E6C();

        v176 = sub_C9E0();
        v174(v176);
        v1 = *(v2 + 30040);
      }

      v11 = v425;
      sub_10543C();
      v179 = sub_103600(v425, v177, v178);
      if (v179)
      {
        v180 = v179;
        v181 = *(*(v2 + 27984) + 16);

        v182 = getLocalizedMedName(from:)();
        v184 = v183;

        v185 = *(v2 + 30032);
        if (v184)
        {

          v415 = v184;
          v416 = v182;
        }

        else
        {
          v415 = *(v2 + 30032);
          v416 = *(v2 + 30024);
        }

        sub_106270();
        v353 = *(v2 + 27984);
        v417 = *(v2 + 27976);
        v354 = *(v353 + 16);

        v414 = getMedStatus(from:)();

        sub_8284(v353 + 64, v2 + 15168);
        v355 = sub_105618();
        v413 = sub_FFA7C(v355, &CATWrapperSimple.__allocating_init(options:globals:));
        v356 = sub_105600();
        v357 = sub_FFA7C(v356, &CATWrapper.__allocating_init(options:globals:));
        sub_789CC((v2 + 22376));
        type metadata accessor for LogMedAsScheduledConfirmationStrategy();
        v358 = swift_allocObject();
        v359 = *(v2 + 22400);
        v360 = *(v2 + 22408);
        v361 = sub_37BE8(v2 + 22376, v359);
        v362 = *(v359 - 8);
        v363 = *(v362 + 64);
        v364 = sub_8BC0();
        (*(v362 + 16))(v364, v361, v359);
        v365 = sub_98AFC(v416, v415, v414 & 1, v180, (v2 + 15168), v413, v357, v364, v358, v359, v360);
        sub_2D64((v2 + 22376));

        sub_16C73C();
        sub_1060FC();
        *(v2 + 27960) = sub_DB30C(v365, v429, v366, v367, type metadata accessor for LogMedAsScheduledConfirmationStrategy);
        sub_FFCEC();
        sub_107084();
        v368 = sub_387CC();
        sub_2440(v368, v369);
        sub_1055E8();
        sub_98C8(v370, &qword_1C67A8, &qword_171CC0);
        sub_16C4CC();

        sub_106328((v2 + 17728));
        *(v2 + 17792) &= 0x3Fu;
        sub_8748(v2 + 17728, &qword_1C9D30, &qword_1767C8);

        sub_105424();
        sub_103BA0(v419, v371);
        sub_8748(v420, &qword_1C5800, &unk_16F510);
        sub_8748(v421, &qword_1C69C0, &unk_174290);
        goto LABEL_74;
      }

      v292 = *(v2 + 30032);
      sub_106F84();
      v293 = *(v2 + 29504);
      v294 = *(v2 + 29128);
      v295 = *(v2 + 28864);

      sub_1B9B4();
      v296 = sub_1067A8();
      v24(v296);
      v113 = sub_16DBDC();
      sub_16E36C();
      sub_106C68();
      v297 = sub_106530();
      v298 = *(v2 + 29992);
      v110 = *(v2 + 29128);
      v299 = *(v2 + 28872);
      v300 = *(v2 + 28864);
      if (v297)
      {
        v301 = sub_3A58C();
        sub_105630(v301);
        sub_1028F0(v24, v302, v303, v304);

        sub_1063E8(&def_259DC, v305, v21, "Needed confirmation log as scheduled but intentResponse.matchingMeds was nil.");
        v11 = v425;
        sub_3A5E0();
      }

      else
      {
      }

      v379 = sub_387CC();
      v298(v379);
      v380 = *(v2 + 30000);
      v381 = sub_1058AC();
      sub_8284(v381, v2 + 1568);
      v375 = 16288;
      sub_6361C((v2 + 1568), (v2 + 16288));
      sub_82E0();
      sub_1071D0();

      v378 = 17944;
      sub_1062DC();
      *(v2 + 18008) &= 0x3Fu;
      goto LABEL_81;
    case 'k':
      v427 = v11;
      v67 = *(v2 + 30032);
      sub_105C30();
      sub_106CC8();
      v68 = *(v2 + 29120);
      sub_105A3C();

      sub_106BDC((v2 + 18736));
      sub_105748(3);
      sub_376FC(v2 + 18736);
      sub_105B70();
      v69 = sub_106194();
      v0(v69);
      v70 = sub_16DBDC();
      sub_16E36C();
      v71 = sub_10699C();
      if (sub_106984())
      {
        sub_106CE0();
        v72 = *(v2 + 29120);
        v73 = sub_106514();
        sub_105630(v73);
        sub_1028F0(v71, v74, v75, v76);

        sub_1061E4(&def_259DC, v77, v78, "got state .awaitingConfirmationLogAsNeeded inside first .nameSelected turn in SpecificMedLoggingFlow");
        sub_3A5E0();

        v79 = sub_105B50();
        v0(v79);
      }

      else
      {
        v140 = *(v2 + 29992);
        v141 = *(v2 + 29120);
        sub_106E6C();

        v142 = sub_C9E0();
        v140(v142);
        v1 = *(v2 + 30040);
      }

      sub_10543C();
      if (sub_103600(v11, v143, v144))
      {
        sub_106270();
        v145 = *(v2 + 27984);
        sub_1070C0();
        type metadata accessor for LogMedAsNeededConfirmationStrategy();
        sub_8284(v145 + 64, v2 + 14688);
        v146 = sub_105618();
        sub_FFA7C(v146, &CATWrapperSimple.__allocating_init(options:globals:));
        v147 = sub_105600();
        sub_FFA7C(v147, &CATWrapper.__allocating_init(options:globals:));
        sub_789CC(v429);
        v148 = sub_106BA4();
        v153 = sub_143FF8(v148, v149, v150, v151, v152);

        sub_16C73C();
        sub_106650();
        *(v2 + 27752) = sub_DB30C(v153, v429, v154, v155, type metadata accessor for LogMedAsNeededConfirmationStrategy);
        sub_FFD2C();
        sub_2440(&qword_1C67A8, &qword_171CC0);
        sub_1055E8();
        sub_98C8(v156, &qword_1C67A8, &qword_171CC0);
        sub_106BF4(27752);
        sub_16C4CC();

        v157 = 18304;
        sub_1062DC();
        *(v2 + 18368) &= 0x3Fu;
        goto LABEL_40;
      }

      sub_106C04();
      v280 = *(v2 + 29112);
      v281 = *(v2 + 28864);
      sub_38474();
      v282 = sub_1067A8();
      v5(v282);
      v113 = sub_16DBDC();
      sub_16E36C();
      sub_106C68();
      v283 = sub_106530();
      v284 = *(v2 + 29992);
      v110 = *(v2 + 29112);
      v285 = *(v2 + 28872);
      v286 = *(v2 + 28864);
      if (v283)
      {
        v287 = sub_3A58C();
        sub_105630(v287);
        sub_1028F0(v71, v288, v289, v290);

        sub_1063E8(&def_259DC, v291, v5, "Needed confirmation log as scheduled but intentResponse.matchingMeds was nil.");
        sub_3A5E0();
      }

      else
      {
      }

      v372 = sub_387CC();
      v284(v372);
      v373 = *(v2 + 30000);
      v374 = sub_1058AC();
      sub_8284(v374, v2 + 14208);
      v375 = 13248;
      v376 = sub_106BC0();
      sub_6361C(v376, v377);
      sub_82E0();
      sub_1071D0();

      v378 = 18520;
      sub_1062DC();
      *(v2 + 18584) &= 0x3Fu;
      goto LABEL_81;
    case 'l':
      v80 = *(v2 + 29520);
      v81 = *(v2 + 29512);
      v82 = *(v2 + 29504);
      v83 = *(v2 + 29088);
      v84 = *(v2 + 28864);
      sub_38474();
      v85 = sub_4B304();
      v81(v85);
      v86 = sub_16DBDC();
      sub_16E36C();
      sub_10699C();
      if (sub_106220())
      {
        v87 = *(v2 + 30040);
        v423 = *(v2 + 29992);
        v88 = *(v2 + 29088);
        sub_106600();
        v89 = sub_3A58C();
        sub_105630(v89);
        sub_1028F0(v81, v90, v91, v92);

        sub_1061E4(&def_259DC, v93, v94, "SpecificMedLoggingFlow received .statusBothSkipped intent response from post-first turn nameSelected case, creating output.");
        sub_3A5E0();

        v95 = sub_10673C();
        v423(v95);
      }

      else
      {
        v158 = *(v2 + 29992);
        v159 = *(v2 + 29088);
        sub_10654C();

        v160 = sub_105C40();
        v158(v160);
      }

      v161 = *(v2 + 28408);
      v162 = *(v2 + 28352);
      v163 = *(v2 + 27984);
      sub_16C45C();
      sub_37FFC();
      v164 = sub_10631C();
      sub_B9BF4(v164, v165, v166);
      v167 = 1;
      sub_16C7AC();
      *(v2 + 30168) = *(v163 + 336);

      sub_10543C();
      v170 = sub_103600(v11, v168, v169);
      if (v170)
      {
        v171 = sub_9AE60(v170);

        if (v171 && (sub_146C80(v171), v172))
        {
          v173 = *(v2 + 28680);
          sub_16E23C();

          v167 = 0;
        }

        else
        {
          v167 = 1;
        }
      }

      sub_214C(*(v2 + 28680), v167, 1, *(v2 + 28528));
      v277 = swift_task_alloc();
      *(v2 + 30176) = v277;
      *v277 = v2;
      v277[1] = sub_F03F4;
      sub_C98D8(*(v2 + 28680));
      sub_106574();

      return sub_1683D0();
    case 'm':
      v427 = v11;
      v96 = *(v2 + 30032);
      sub_105C30();
      sub_106CC8();
      v97 = *(v2 + 29104);
      sub_105A3C();

      sub_106BDC((v2 + 20176));
      sub_105748(5);
      sub_376FC(v2 + 20176);
      sub_105B70();
      v98 = sub_106194();
      v0(v98);
      v99 = sub_16DBDC();
      sub_16E36C();
      v100 = sub_10699C();
      if (sub_106984())
      {
        sub_106CE0();
        v101 = *(v2 + 29104);
        v102 = sub_106514();
        sub_105630(v102);
        sub_1028F0(v100, v103, v104, v105);

        sub_1061E4(&def_259DC, v106, v107, "got state .awaitingConfirmationUpdateToStatus in SpecificMedLoggingFlow");
        sub_3A5E0();

        v108 = sub_105B50();
        v0(v108);
      }

      else
      {
        v186 = *(v2 + 29992);
        v187 = *(v2 + 29104);
        sub_106E6C();

        v188 = sub_C9E0();
        v186(v188);
        v1 = *(v2 + 30040);
      }

      sub_10543C();
      if (sub_103600(v11, v189, v190))
      {
        sub_106270();
        v191 = *(v2 + 27984);
        sub_1070C0();
        type metadata accessor for MedUpdateLogStatusStrategy();
        sub_8284(v191 + 64, v2 + 9888);
        v192 = sub_105618();
        sub_FFA7C(v192, &CATWrapperSimple.__allocating_init(options:globals:));
        v193 = sub_105600();
        sub_FFA7C(v193, &CATWrapper.__allocating_init(options:globals:));
        sub_789CC(v429);
        v194 = sub_106BA4();
        v199 = sub_143FF8(v194, v195, v196, v197, v198);

        sub_16C73C();
        sub_106668();
        *(v2 + 27840) = sub_DB30C(v199, v429, v200, v201, type metadata accessor for MedUpdateLogStatusStrategy);
        sub_FFD6C();
        sub_2440(&qword_1C67A8, &qword_171CC0);
        sub_1055E8();
        sub_98C8(v202, &qword_1C67A8, &qword_171CC0);
        sub_106BF4(27840);
        sub_16C4CC();

        v157 = 18880;
        sub_1062DC();
        *(v2 + 18944) &= 0x3Fu;
LABEL_40:
        sub_8748(v2 + v157, &qword_1C9D30, &qword_1767C8);

        sub_105424();
        sub_103BA0(v419, v203);
        sub_8748(v420, &qword_1C5800, &unk_16F510);
        sub_8748(v421, &qword_1C69C0, &unk_174290);
LABEL_74:

        goto LABEL_84;
      }

      sub_106C04();
      v306 = *(v2 + 29096);
      v307 = *(v2 + 28864);
      sub_38474();
      v308 = sub_1067A8();
      v5(v308);
      v113 = sub_16DBDC();
      sub_16E36C();
      sub_106C68();
      v309 = sub_106530();
      v310 = *(v2 + 29992);
      v110 = *(v2 + 29096);
      v311 = *(v2 + 28872);
      v312 = *(v2 + 28864);
      if (v309)
      {
        v313 = sub_3A58C();
        sub_105630(v313);
        sub_1028F0(v100, v314, v315, v316);

        sub_1063E8(&def_259DC, v317, v5, "Needed confirmation update to status but intentResponse.matchingMeds was nil.");
        sub_3A5E0();
      }

      else
      {
      }

      v382 = sub_387CC();
      v310(v382);
      v383 = *(v2 + 30000);
      v384 = sub_1058AC();
      sub_8284(v384, v2 + 5728);
      v375 = 4928;
      v385 = sub_106BC0();
      sub_6361C(v385, v386);
      sub_82E0();
      sub_1071D0();

      v378 = 19960;
      sub_1062DC();
      *(v2 + 20024) &= 0x3Fu;
LABEL_81:
      sub_8748(v2 + v378, &qword_1C9D30, &qword_1767C8);

      sub_8334(v2 + v375);
LABEL_82:
      sub_105424();
      sub_103BA0(v110, v387);
      sub_8748(v1, &qword_1C5800, &unk_16F510);
      v139 = v113;
      goto LABEL_83;
    case 'n':
    case 'o':
      goto LABEL_11;
    case 'p':
      v428 = v11;
      v109 = *(v2 + 30032);
      sub_106130();
      v110 = *(v2 + 29168);
      v111 = *(v2 + 28864);

      sub_106F48();

      sub_106CBC();

      sub_1069B4();

      sub_105B70();
      v112 = sub_A77C4();
      v0(v112);
      v113 = sub_16DBDC();
      sub_16E37C();
      sub_10699C();
      if (sub_106220())
      {
        sub_106CE0();
        v114 = *(v2 + 29168);
        sub_106600();
        v115 = sub_3A58C();
        sub_105630(v115);
        sub_1028F0(v111, v116, v117, v118);

        sub_1061E4(&def_259DC, v119, v120, "Received gotComplexDosageLoggingError, creating output.");
        sub_3A5E0();

        v121 = sub_10673C();
      }

      else
      {
        v0 = *(v2 + 29992);
        v1 = *(v2 + 29168);
        sub_10654C();

        v121 = sub_105C40();
      }

      v0(v121);
      v204 = *(v2 + 30000);
      sub_105B60();
      v205 = *(v2 + 27984);
      v206 = *(v2 + 27976);
      v207 = *(v205 + 16);
      sub_8284(v205 + 64, v2 + 528);
      sub_C9294(v205 + 24, v2 + 688);

      sub_789CC((v2 + 736));
      v208 = sub_87C00();
      v209 = sub_87C2C();
      sub_309A0((v2 + 792));
      *(v2 + 520) = v207;
      *(v2 + 728) = 0;
      *(v2 + 776) = v208;
      *(v2 + 784) = v209;
      sub_87F90();
      sub_16C4EC();

      memcpy((v2 + 18160), (v2 + 20104), 0x41uLL);
      *(v2 + 18224) &= 0x3Fu;
      sub_8748(v2 + 18160, &qword_1C9D30, &qword_1767C8);

      sub_A9C4C(v2 + 520);
      goto LABEL_82;
    default:
      if (v13 == 5)
      {
        sub_1058C8();
        v122 = *(v2 + 29160);
        sub_106120();

        sub_1069C0();

        sub_106730();

        sub_1061A4();
        v123 = sub_105C00();
        v6(v123);
        v124 = sub_16DBDC();
        sub_16E36C();
        sub_106A08();
        if (sub_10623C())
        {
          v125 = *(v2 + 30040);
          v126 = *(v2 + 29992);
          v127 = *(v2 + 29160);
          v128 = sub_106514();
          v429[0] = 0;
          sub_106114(v128);
          v430 = v129;
          v431[0] = 0;
          sub_1028F0(v3, &v430, v431, v429);

          sub_1061C4(&def_259DC, v130, v131, "Received failure intent response, creating output.");
          sub_3A5E0();

          v132 = sub_105B50();
          v126(v132);
        }

        else
        {
          v210 = *(v2 + 29992);
          v211 = *(v2 + 29160);
          sub_106258();

          v212 = sub_1058E8();
          v210(v212);
        }

        sub_1069E4();
        *(v2 + 30112) = v124;
        v214 = *(v213 + 16);

        getLocalizedMedName(from:)();
        v216 = v215;

        v217 = *(v2 + 30032);
        v218 = *(v2 + 28528);
        if (v216)
        {
          v219 = *(v2 + 28704);
          v220 = *(v2 + 28696);
          v221 = *(v2 + 28536);
          v222 = *(v2 + 30032);

          sub_1069FC();
          sub_16E23C();

          sub_388E4();
          sub_214C(v223, v224, v225, v218);
          v226 = *(v221 + 32);
          v227 = sub_C98B4();
          v228(v227);
        }

        else
        {
          v318 = *(v2 + 30024);
          v319 = *(v2 + 28704);
          v320 = *(v2 + 28696);
          sub_8AB4();
          sub_214C(v321, v322, v323, v218);
          sub_16E23C();

          sub_8B20(v320, 1, v218);
          if (!v20)
          {
            sub_8748(*(v2 + 28696), &qword_1C5800, &unk_16F510);
          }
        }

        v324 = *(v2 + 28704);
        v325 = *(v2 + 28688);
        v326 = *(v2 + 28528);
        sub_388E4();
        sub_214C(v327, v328, v329, v326);
        sub_8AB4();
        sub_214C(v330, v331, v332, v326);
        v333 = swift_task_alloc();
        *(v2 + 30120) = v333;
        *v333 = v2;
        v333[1] = sub_EEF80;
        v334 = *(v2 + 28688);
        sub_C98D8(*(v2 + 28704));
        sub_106574();

        return sub_167658();
      }

      else if (v13 == 4)
      {
        v33 = *(v2 + 29544);
        sub_105A08();
        v34 = *(v2 + 29184);
        v35 = *(v2 + 28864);

        sub_1B9B4();
        v36 = sub_4B304();
        v5(v36);
        v37 = sub_16DBDC();
        sub_16E36C();
        sub_10699C();
        if (sub_106220())
        {
          v38 = *(v2 + 30040);
          v422 = *(v2 + 29992);
          v39 = *(v2 + 29184);
          sub_106600();
          v40 = sub_3A58C();
          sub_105630(v40);
          sub_1028F0(v4, v41, v42, v43);

          sub_1061E4(&def_259DC, v44, v45, "Received successful intent response, creating output.");
          sub_3A5E0();

          v46 = sub_10673C();
          v9 = v2 + 0x4000;
          v422(v46);
        }

        else
        {
          v229 = *(v2 + 29992);
          v230 = *(v2 + 29184);
          sub_10654C();

          v231 = sub_105C40();
          v229(v231);
        }

        sub_10543C();
        v234 = sub_103600(v11, v232, v233);
        if (!v234)
        {
          v234 = sub_3A600(0);
        }

        v235 = v234;
        v236 = *(v2 + 28744);
        v237 = *(v2 + 28528);
        v238 = *(v2 + 28488);
        v239 = *(v2 + 28472);
        v240 = *(v2 + 27984);
        sub_102308(v234);

        v241 = *(v240 + 16);
        v242 = v11;
        sub_5E188();

        v243 = sub_4B304();
        sub_FF05C(v243, v244);
        v245 = (v238 + *(v239 + 36));
        v246 = *v245;
        *(v2 + 30064) = *v245;
        LOBYTE(v241) = *(v245 + 8);
        *(v9 + 1411) = v241;
        sub_8AB4();
        sub_214C(v247, v248, v249, v237);
        if ((v241 & 1) == 0)
        {
          v250 = *(v2 + 28800);
          v251 = *(v2 + 28744);
          v252 = *(v2 + 28528);
          sub_2440(&qword_1C8C78, &unk_1747C0);
          v253 = swift_allocObject();
          v254 = sub_61090(v253, 1);
          v255[3] = &type metadata for Double;
          v255[4] = &protocol witness table for Double;
          *v255 = v246;
          v256 = HKActivityRingUIViewRepresentable.updateUIView(_:context:)(v254);
          sub_106A50(v256);
          sub_16E23C();

          v257 = sub_106FE4();
          sub_8748(v257, v258, &unk_16F510);
          sub_388E4();
          sub_214C(v259, v260, v261, v252);
          v262 = sub_C9C8();
          sub_86FC(v262, v263, &qword_1C5800, &unk_16F510);
        }

        v264 = *(v2 + 28488);
        *(v2 + 30072) = *(*(v2 + 27984) + 336);
        v265 = *v264;

        sub_103660(v235, &selRef_medName);
        if (v266)
        {
          v267 = *(v2 + 28736);
          v268 = *(v2 + 28728);
          v269 = *(v2 + 28536);
          v270 = *(v2 + 28528);
          sub_16E23C();

          sub_388E4();
          sub_214C(v271, v272, v273, v270);
          v274 = *(v269 + 32);
          v275 = sub_387CC();
          v276(v275);
        }

        else
        {
          v336 = *(v2 + 28728);
          v337 = *(v2 + 28712);
          v338 = *(v2 + 28528);
          v339 = *(v2 + 28488);
          v340 = *(v2 + 28472);
          sub_8AB4();
          sub_214C(v341, v342, v343, v338);
          sub_86B0(v339 + *(v340 + 24), v337, &qword_1C5800, &unk_16F510);
          v344 = sub_C98CC();
          sub_8B20(v344, v345, v338);
          if (v20)
          {
            v346 = *(v2 + 30032);
            v347 = *(v2 + 30024);
            v348 = *(v2 + 28736);
            v349 = *(v2 + 28712);
            v350 = *(v2 + 28528);
            sub_16E23C();
            v351 = sub_C98CC();
            sub_8B20(v351, v352, v350);
            if (!v20)
            {
              sub_8748(*(v2 + 28712), &qword_1C5800, &unk_16F510);
            }
          }

          else
          {
            (*(*(v2 + 28536) + 32))(*(v2 + 28736), *(v2 + 28712), *(v2 + 28528));
          }

          v390 = *(v2 + 28728);
          v391 = *(v2 + 28528);
          v392 = sub_C98CC();
          sub_8B20(v392, v393, v394);
          if (!v20)
          {
            sub_8748(v390, &qword_1C5800, &unk_16F510);
          }
        }

        v395 = *(v2 + 28736);
        v396 = *(v2 + 28720);
        v397 = *(v2 + 28528);
        v398 = *(v2 + 28488);
        v399 = *(v2 + 28472);
        sub_388E4();
        sub_214C(v400, v401, v402, v397);
        sub_8AB4();
        sub_214C(v403, v404, v405, v397);
        v406 = *(v398 + v399[8]);
        v407 = v398 + v399[10];
        LOBYTE(v398) = *(v398 + v399[11]);
        v408 = swift_task_alloc();
        *(v2 + 30080) = v408;
        *v408 = v2;
        v408[1] = sub_ED700;
        v409 = *(v2 + 28744);
        v410 = *(v2 + 28736);
        v411 = *(v2 + 28720);
        v436 = v398;
        v435 = v407;
        sub_8CC0();

        return sub_167D00();
      }

      else
      {
LABEL_11:
        v426 = v11;
        v47 = *(v2 + 30032);
        v48 = *(v2 + 29624);
        v49 = *(v2 + 29600);
        v50 = *(v2 + 29576);
        v51 = *(v2 + 29544);
        v52 = *(v2 + 29520);
        v53 = *(v2 + 29512);
        v54 = *(v2 + 29504);
        v55 = *(v2 + 29064);
        v56 = *(v2 + 28864);

        sub_106CBC();

        sub_1069B4();

        sub_105B70();
        v57 = sub_A77C4();
        v53(v57);
        v58 = sub_16DBDC();
        sub_16E36C();
        sub_10699C();
        if (sub_106220())
        {
          sub_106CE0();
          v59 = *(v2 + 29064);
          sub_106600();
          v60 = sub_3A58C();
          sub_105630(v60);
          sub_1028F0(v56, v61, v62, v63);

          sub_1061E4(&def_259DC, v64, v65, "Intent response code within .nameSelected was not an expected one || is one we're not handling yet, returning nil output.");
          sub_3A5E0();

          v66 = sub_10673C();
        }

        else
        {
          v48 = *(v2 + 29992);
          v133 = *(v2 + 29064);
          sub_10654C();

          v66 = sub_105C40();
        }

        v48(v66);
        v134 = *(v2 + 30000);
        v424 = *(v2 + 28856);
        v135 = *(v2 + 28816);
        v136 = *(v2 + 28568);
        v137 = *(v2 + 27976);
        sub_8284(*(v2 + 27984) + 64, v2 + 4448);
        sub_6361C((v2 + 4448), (v2 + 4768));
        sub_82E0();
        sub_16C4EC();

        memcpy((v2 + 20248), (v2 + 20104), 0x41uLL);
        *(v2 + 20312) &= 0x3Fu;
        sub_8748(v2 + 20248, &qword_1C9D30, &qword_1767C8);

        sub_8334(v2 + 4768);
        sub_105424();
        sub_103BA0(v136, v138);
        sub_8748(v135, &qword_1C5800, &unk_16F510);
        v139 = v424;
LABEL_83:
        sub_8748(v139, &qword_1C69C0, &unk_174290);
LABEL_84:
        sub_1053F0();
        sub_105CB8();
        sub_105768();

        sub_C9BC();
        sub_106574();

        return v388();
      }
  }
}

uint64_t sub_ED700()
{
  sub_76D68();
  sub_38CAC();
  v3 = v1;
  sub_C990();
  *v4 = v1;
  v5 = v1[3760];
  v6 = *v2;
  sub_38388();
  *v7 = v6;
  v1[3761] = v8;

  sub_8C88();
  v10 = *(v9 + 30072);
  if (v0)
  {
    v11 = v3[3754];
    v12 = v3[3703];
    v13 = v3[3700];
    v14 = v3[3697];
    v15 = v3[3592];
    v16 = v3[3590];
    sub_10642C();

    v17 = sub_8B9C();
    sub_8748(v17, v18, &unk_16F510);
    sub_8748(v15, &qword_1C5800, &unk_16F510);
  }

  else
  {
    v19 = v3[3592];
    v20 = v3[3590];
    v21 = *(v9 + 30072);

    sub_106844();
    sub_8748(v22, v23, v24);
    v25 = sub_C9C8();
    sub_8748(v25, v26, &unk_16F510);
  }

  sub_105A74();

  return _swift_task_switch(v27, v28, v29);
}

uint64_t sub_ED8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  v39 = *(v38 + 30088);
  v40 = *(v38 + 28424);
  sub_106464();
  sub_16C43C();
  sub_37FFC();
  v41 = sub_10631C();
  sub_B9BF4(v41, v42, v43);
  sub_16C7AC();
  v44 = [v39 catId];
  sub_16E1BC();
  sub_106508();

  sub_C9E0();
  sub_16C76C();
  sub_106C80();
  v45 = *(v38 + 23480);
  v46 = *(v38 + 23488);
  sub_3820C((v38 + 23456));
  v47 = sub_17970();
  v48(v47);
  v49 = *(v38 + 23520);
  v50 = *(v38 + 23528);
  sub_38138((v38 + 23496));
  if (sub_16C40C())
  {
    v51 = sub_105C94();
  }

  else
  {
    v54 = sub_106474();
    sub_C9294(v54, v38 + 23536);
    v55 = *(v38 + 23560);
    v56 = *(v38 + 23568);
    sub_3820C((v38 + 23536));
    v57 = sub_17970();
    v58(v57);
    v59 = *(v38 + 23600);
    v60 = *(v38 + 23608);
    sub_38138((v38 + 23576));
    sub_16C3FC();
    sub_106D88();
    v51 = sub_105A84((v38 + 23536));
    if (v61)
    {
      v53 = 0;
    }

    else
    {
      v53 = 4;
    }
  }

  v62 = *(v38 + 28296);
  sub_106680(v51, v52, v53);
  sub_106DF8();
  v63 = *(v38 + 23640);
  v64 = *(v38 + 23648);
  v65 = sub_1057EC();
  v66(v65);
  v67 = *(v38 + 23680);
  v68 = *(v38 + 23688);
  sub_38138((v38 + 23656));
  if (sub_16C40C())
  {
    sub_105C70();
  }

  else
  {
    v69 = sub_106474();
    sub_C9294(v69, v38 + 23696);
    v70 = *(v38 + 23720);
    v71 = *(v38 + 23728);
    sub_3820C((v38 + 23696));
    v72 = sub_17970();
    v73(v72);
    v74 = *(v38 + 23760);
    v75 = *(v38 + 23768);
    sub_38138((v38 + 23736));
    sub_16C3FC();
    sub_105820();
  }

  v76 = *(v38 + 30056);
  v77 = *(v38 + 28120);
  v78 = *(v38 + 27984);
  sub_16D69C();
  v79 = *(v78 + 16);

  v198 = getMedStatus(from:)();

  sub_16BF4C();
  sub_103660(v76, &selRef_medName);
  if (v80)
  {
    sub_1070A8();
LABEL_12:
    v189 = v79;
    v191 = v77;
    v82 = *(v38 + 30032);

    goto LABEL_13;
  }

  v81 = *(*(v38 + 27984) + 16);

  getLocalizedMedName(from:)();
  sub_1070A8();

  if (v79)
  {
    goto LABEL_12;
  }

  v172 = *(v38 + 30032);
  v189 = v172;
  v191 = *(v38 + 30024);
LABEL_13:
  v183 = *(v38 + 17795);
  v181 = *(v38 + 30064);
  v83 = *(v38 + 30056);
  sub_106C98();
  v84 = *(v38 + 28568);
  v85 = *(v38 + 28560);
  v86 = *(v38 + 28296);
  v87 = *(v38 + 28288);
  v88 = *(v38 + 28184);
  v89 = *(v38 + 28144);
  v177 = *(v38 + 28120);
  v90 = *(v38 + 28048);
  v91 = sub_103660(v83, &selRef_medSchedule);
  v179 = v92;
  v175 = sub_103660(v83, &selRef_dosageUnit);
  v186 = v93;
  v94 = sub_106F6C();
  sub_86B0(v94, v95, v96, v97);
  sub_14D35C();
  sub_1055D0();
  v98 = sub_106AC8();
  sub_1039B4(v98, v99);
  sub_388E4();
  sub_214C(v100, v101, v102, v85);
  v103 = v88 + v89[8];
  sub_16C11C();
  v200 = v103;
  sub_8AB4();
  v197 = v104;
  sub_214C(v105, v106, v107, v104);
  v201 = v88 + v89[19];
  sub_8AB4();
  sub_214C(v108, v109, v110, v85);
  sub_1069CC(v198);
  v88[1] = sub_BA66C();
  v88[2] = v111;
  v88[3] = v191;
  v88[4] = v189;
  v112 = v91;
  v88[5] = v91;
  v113 = v179;
  v88[6] = v179;
  if (v179)
  {
    v114 = 0;
  }

  else
  {
    v114 = v181;
  }

  v115 = v88 + v89[9];
  v116 = (v88 + v89[10]);
  v117 = v89[11];
  sub_107110((v179 != 0) | v183);
  *v116 = sub_147C94(v114, v87);
  v116[1] = v118;
  if (v179)
  {

    v119 = 0;
    v120 = 0;
    v121 = v112;
  }

  else
  {
    v113 = 0xE900000000000064;
    v121 = 0x656465654E207341;
    v120 = v186;
    v119 = v175;
  }

  v122 = (v88 + v117);
  v199 = *(v38 + 30088);
  v123 = 0xE500000000000000;
  if (v192)
  {
    v123 = v192;
  }

  v193 = v123;
  v124 = *(v38 + 29616);
  v125 = 0xE700000000000000;
  if (v194)
  {
    v125 = v194;
  }

  v195 = v125;
  v126 = *(v38 + 28288);
  v127 = *(v38 + 28184);
  v128 = *(v38 + 28144);
  v129 = *(v38 + 28088);
  v174 = *(v38 + 28080);
  v176 = *(v38 + 28120);
  v130 = *(v38 + 28008);
  v196 = *(v38 + 27984);
  if (!*(v38 + 29624))
  {
    v124 = 0x6E656B6154;
  }

  v187 = v124;
  v190 = *(v38 + 28048);
  if (*(v38 + 29600))
  {
    v131 = *(v38 + 29592);
  }

  else
  {
    v131 = 0x64657070696B53;
  }

  v132 = 0x646567676F4CLL;
  if (*(v38 + 29576))
  {
    v132 = *(v38 + 29568);
  }

  v182 = v132;
  v184 = v131;
  *v122 = v119;
  v122[1] = v120;
  v133 = (v127 + v128[12]);
  v134 = v127 + v128[13];
  v178 = v128[14];
  v180 = v128[15];
  v135 = (v127 + v128[16]);
  v136 = (v127 + v128[17]);
  v137 = (v127 + v128[18]);
  *v133 = v121;
  v133[1] = v113;
  sub_147DA8(v126);
  sub_8748(v126, &qword_1C57F8, &unk_172510);
  (*(v129 + 8))(v176, v174);
  sub_388E4();
  sub_214C(v138, v139, v140, v197);
  v141 = sub_1E634(v130, v200, &qword_1C63F0, &unk_1717F0);
  v149 = sub_10674C(v141, v142, v143, v144, v145, v146, v147, v148, v174, v176, v178, v180, v182, v184, v187, v190);
  *v135 = v151;
  v135[1] = v150;
  *v136 = v185;
  v136[1] = v195;
  *v137 = v188;
  v137[1] = v193;
  sub_1E634(v149, v201, &dword_1C63F8, &qword_171800);
  sub_C9294(v196 + 296, v38 + 23856);
  v152 = *(v38 + 23880);
  v153 = *(v38 + 23888);
  *(v38 + 23920) = sub_106160();
  sub_1055B8();
  *(v38 + 23928) = sub_104478(v154, 255, v155);
  sub_9910((v38 + 23896));
  sub_105584();
  sub_106D70();
  sub_10658C();
  sub_2440(&qword_1C5ED8, &unk_173090);
  v156 = sub_38DA0();
  v157 = sub_60CF0(v156, 1);
  *v158 = v199;
  *(v38 + 30096) = HKActivityRingUIViewRepresentable.updateUIView(_:context:)(v157);
  v159 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)[1];
  v160 = v199;
  swift_task_alloc();
  sub_179E8();
  *(v38 + 30104) = v161;
  *v161 = v162;
  v161[1] = sub_EDFBC;
  v163 = *(v38 + 28424);
  v164 = sub_1057CC();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v164, v165, v166, v167, v168, v169, v170, v171, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_EDFBC()
{
  sub_386A8();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  sub_38800();
  v5 = *(v4 + 30104);
  v7 = *(v6 + 30096);
  v8 = *v0;
  sub_C990();
  *v9 = v8;

  sub_2D64((v2 + 23896));
  v10 = sub_17960();

  return _swift_task_switch(v10, v11, v12);
}

void sub_EE0C4()
{
  sub_3868C();
  sub_38664();
  v1 = v0[3761];
  v2 = v0[3757];
  v3 = v0[3750];
  sub_105C50();
  v25 = v0[3571];
  v23 = v0[3593];
  v24 = v0[3561];
  v4 = v0[3546];
  v21 = v0[3545];
  v22 = v0[3553];
  v20 = v0[3537];
  v5 = v0[3523];
  v6 = v0[3497];
  sub_106898(v7);
  sub_106F14();
  sub_387F4();
  v8 = swift_allocObject();
  sub_106C24(v8);
  sub_1068F4();
  v0[3486] = sub_16C1BC();
  sub_106E10();

  sub_106328(v0 + 2297);
  sub_106444(18440);
  sub_8748((v0 + 2297), &qword_1C9D30, &qword_1767C8);

  sub_2D64(v0 + 2977);
  sub_1055A0();
  sub_103BA0(v5, v9);
  sub_8748(v20, &qword_1C57F8, &unk_172510);
  (*(v4 + 8))(v22, v21);
  sub_8B60();
  sub_8748(v10, v11, v12);
  sub_1054D0();
  sub_103BA0(v24, v13);
  sub_105424();
  sub_103BA0(v25, v14);
  sub_8B60();
  sub_8748(v15, v16, v17);
  sub_8748(v26, &qword_1C69C0, &unk_174290);

  sub_104F9C();
  sub_10550C();

  sub_105C60();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

void sub_EE81C()
{
  sub_3868C();
  sub_38664();
  sub_1059C0();
  v2 = v0[3647];
  sub_1058F8();
  v3 = sub_38408();
  v1(v3);
  v4 = sub_16DBDC();
  sub_16E36C();
  sub_106A70();
  sub_106344();
  v5 = v0[3749];
  v6 = v0[3647];
  sub_106568();
  if (v7)
  {
    v8 = sub_3A58C();
    v9 = sub_1054E8(v8);
    sub_106A88(v9, v10, v11, v12);

    sub_105B90(&def_259DC, v13, v14, "Couldn't create specificMedicationSuccess_Dialog, returning GenericErrorFlow");
    sub_3A5E0();
  }

  else
  {
  }

  v15 = sub_105A64();
  v5(v15);
  v16 = v0[3757];
  v17 = v0[3750];
  sub_105BD0();
  v18 = v0[3593];
  v19 = v0[3571];
  v20 = v0[3561];
  v21 = v0[3497];
  sub_8284(v0[3498] + 64, (v0 + 1796));
  sub_6361C(v0 + 1796, v0 + 1816);
  sub_82E0();
  sub_16C4EC();

  sub_106328(v0 + 2279);
  sub_106444(18296);
  sub_8748((v0 + 2279), &qword_1C9D30, &qword_1767C8);

  sub_8334((v0 + 1816));
  v22 = sub_4B4EC();
  sub_8748(v22, v23, &unk_16F510);
  sub_1054D0();
  sub_103BA0(v20, v24);
  sub_105424();
  sub_103BA0(v19, v25);
  sub_8748(v28, &qword_1C5800, &unk_16F510);
  sub_8748(v29, &qword_1C69C0, &unk_174290);
  sub_104B50();
  sub_105454();

  sub_105A18();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_EEF80()
{
  sub_C9EC();
  sub_38CAC();
  sub_38388();
  *v4 = v3;
  v5 = v1[3765];
  v6 = *v2;
  sub_38440();
  *v7 = v6;
  *(v9 + 30128) = v8;
  *(v9 + 30136) = v0;

  sub_8C88();
  v11 = *(v10 + 30112);
  v12 = v1[3588];
  v13 = v1[3586];
  if (v0)
  {
  }

  v14 = sub_4B304();
  sub_8748(v14, v15, &unk_16F510);
  v16 = sub_8B9C();
  sub_8748(v16, v17, &unk_16F510);
  sub_8ACC();

  return _swift_task_switch(v18, v19, v20);
}

uint64_t sub_EF134()
{
  sub_38AB4();
  sub_38664();
  v1 = v0[3766];
  v2 = v0[3552];
  v3 = v0[3544];
  v4 = v0[3498];
  sub_16C45C();
  sub_37FFC();
  v5 = sub_10631C();
  sub_B9BF4(v5, v6, v7);
  sub_16C7AC();
  v8 = [v1 catId];
  sub_16E1BC();
  sub_106508();

  sub_C9E0();
  sub_16C76C();
  sub_C9294(v4 + 24, (v0 + 2842));
  sub_8284(v4 + 64, (v0 + 2056));
  sub_C9294(v4 + 296, (v0 + 2852));
  v0[3768] = *(v4 + 336);
  v0[3769] = *(v4 + 344);

  swift_task_alloc();
  sub_179E8();
  v0[3770] = v9;
  *v9 = v10;
  v9[1] = sub_EF2A0;
  v11 = v0[3766];
  v12 = v0[3552];
  sub_385E4();
  sub_8CC0();

  return sub_9AEDC();
}

uint64_t sub_EF2A0()
{
  sub_107214();
  sub_C9EC();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  sub_38800();
  v5 = *(v4 + 30160);
  v7 = *(v6 + 30152);
  v8 = *(v6 + 30144);
  v9 = *v0;
  sub_C990();
  *v10 = v9;

  sub_2D64((v2 + 22816));
  sub_C938(v2 + 16448);
  sub_2D64((v2 + 22736));
  sub_17960();
  sub_107200();

  return _swift_task_switch(v11, v12, v13);
}

void sub_EF3DC()
{
  sub_3868C();
  sub_38664();
  if (*(v0 + 22720))
  {
    v1 = *(v0 + 30128);
    v2 = *(v0 + 30056);
    v3 = *(v0 + 30000);
    sub_1062A0();
    v42 = *(v0 + 28416);
    v44 = v4;
    v5 = *(v0 + 28368);
    v41 = *(v0 + 28360);
    v6 = *(v0 + 27976);
    sub_106FB8((v0 + v7));
    sub_106AD4();
    sub_387F4();
    v8 = swift_allocObject();
    sub_106810(v8);
    *(v0 + 27824) = sub_1066F0();
    sub_1069D8(27824);
    sub_16C4EC();

    sub_1062DC();
    *(v0 + 18152) &= 0x3Fu;
    sub_8748(v0 + 18088, &qword_1C9D30, &qword_1767C8);

    sub_2D64((v0 + 22656));
    (*(v5 + 8))(v42, v41);
    sub_105424();
    sub_103BA0(v44, v9);
    sub_8748(v46, &qword_1C5800, &unk_16F510);
    sub_8748(v48, &qword_1C69C0, &unk_174290);
  }

  else
  {
    sub_105A08();
    v10 = *(v0 + 29152);
    v11 = *(v0 + 28864);
    sub_8748(v0 + v12, &qword_1C5ED0, &qword_171090);
    sub_1B9B4();
    v13 = sub_38408();
    ((v0 + 0x4000))(v13);
    v14 = sub_16DBDC();
    sub_16E36C();
    sub_106A08();
    if (sub_10623C())
    {
      v15 = *(v0 + 30136);
      v16 = *(v0 + 29992);
      v17 = *(v0 + 29152);
      v18 = *(v0 + 28872);
      v19 = *(v0 + 28864);
      v20 = sub_3A58C();
      sub_105ACC(v20);

      sub_1061C4(&def_259DC, v21, v22, "Couldn't create output, returning GenericErrorFlow");
      sub_3A5E0();

      v23 = sub_4B4EC();
      v16(v23);
    }

    else
    {
      v24 = *(v0 + 29992);
      v25 = *(v0 + 29152);
      sub_106258();

      v26 = sub_1058E8();
      v24(v26);
    }

    v27 = *(v0 + 30128);
    v28 = *(v0 + 30056);
    v29 = *(v0 + 30000);
    sub_106438();
    v45 = v30;
    v47 = v31;
    v43 = *(v0 + 28568);
    v32 = *(v0 + 28416);
    v33 = *(v0 + 28368);
    v34 = sub_10591C();
    sub_8284(v34, v0 + 15648);
    sub_6361C((v0 + 15648), (v0 + 15808));
    sub_82E0();
    sub_16C4EC();

    sub_106328((v0 + 17872));
    *(v0 + 17936) &= 0x3Fu;
    sub_8748(v0 + 17872, &qword_1C9D30, &qword_1767C8);

    sub_8334(v0 + 15808);
    v35 = *(v33 + 8);
    v36 = sub_387CC();
    v37(v36);
    sub_105424();
    sub_103BA0(v43, v38);
    sub_8748(v45, &qword_1C5800, &unk_16F510);
    sub_8748(v47, &qword_1C69C0, &unk_174290);
  }

  sub_104B50();
  sub_10586C();
  sub_105768();

  sub_105BE0();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

void sub_EFCC8()
{
  sub_3868C();
  sub_38664();
  sub_1059C0();
  v3 = v1[3643];
  sub_1058F8();
  v4 = sub_38408();
  v2(v4);
  v5 = sub_16DBDC();
  sub_16E36C();
  sub_106A70();
  sub_106344();
  v6 = v1[3749];
  v7 = v1[3643];
  sub_106568();
  if (v8)
  {
    v9 = sub_3A58C();
    v10 = sub_1054E8(v9);
    sub_106A88(v10, v11, v12, v13);

    sub_105B90(&def_259DC, v14, v15, "Couldn't create specificMedicationLogFailed_Dialog, returning GenericErrorFlow");
    sub_3A5E0();
  }

  else
  {
  }

  v16 = sub_105A64();
  v6(v16);
  v17 = v1[3757];
  v18 = v1[3750];
  v19 = sub_105674();
  sub_8284(v19, (v1 + 2116));
  sub_6361C(v1 + 2116, v1 + 2136);
  sub_82E0();
  sub_16C4EC();

  sub_106328(v1 + 2549);
  sub_106444(20456);
  sub_8748((v1 + 2549), &qword_1C9D30, &qword_1767C8);

  sub_8334((v1 + 2136));
  sub_105424();
  sub_103BA0(v0, v20);
  sub_8748(v7, &qword_1C5800, &unk_16F510);
  sub_8748(v5, &qword_1C69C0, &unk_174290);
  sub_104B50();
  sub_105454();

  sub_105A18();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_F03F4()
{
  sub_76D68();
  v2 = *v1;
  v3 = *v1;
  sub_C990();
  *v4 = v3;
  v5 = v2[3772];
  v6 = *v1;
  sub_38388();
  *v7 = v6;
  v3[3773] = v8;
  v3[3774] = v0;

  v9 = v2[3771];
  if (v0)
  {
    v10 = v3[3754];
    sub_106BCC();
    v11 = v3[3693];
    v12 = v3[3585];
    sub_10642C();

    sub_8748(v12, &qword_1C5800, &unk_16F510);
  }

  else
  {
    sub_8748(v3[3585], &qword_1C5800, &unk_16F510);
  }

  sub_105A74();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_F05C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_3868C();
  v215 = v40;
  sub_38664();
  v41 = *(v38 + 28408);
  v42 = *(v38 + 27984);
  v43 = [*(v38 + 30184) catId];
  sub_16E1BC();
  sub_106508();

  sub_C9E0();
  sub_16C76C();
  sub_106C80();
  v44 = *(v38 + 21040);
  v45 = *(v38 + 21048);
  sub_3820C((v38 + 21016));
  v46 = sub_17970();
  v47(v46);
  v48 = *(v38 + 21000);
  v49 = *(v38 + 21008);
  sub_38138((v38 + 20976));
  if (sub_16C40C())
  {
    v50 = sub_105C94();
  }

  else
  {
    v53 = sub_106474();
    sub_C9294(v53, v38 + 25416);
    v54 = *(v38 + 25440);
    v55 = *(v38 + 25448);
    sub_3820C((v38 + 25416));
    v56 = sub_17970();
    v57(v56);
    v58 = *(v38 + 20760);
    v59 = *(v38 + 20768);
    sub_38138((v38 + 20736));
    sub_16C3FC();
    sub_2D64((v38 + 20736));
    v50 = sub_105A84((v38 + 25416));
    if (v60)
    {
      v52 = 0;
    }

    else
    {
      v52 = 4;
    }
  }

  v61 = *(v38 + 28280);
  sub_106680(v50, v51, v52);
  sub_106DF8();
  v62 = *(v38 + 20800);
  v63 = *(v38 + 20808);
  v64 = sub_1057EC();
  v65(v64);
  v66 = *(v38 + 20840);
  v67 = *(v38 + 20848);
  sub_38138((v38 + 20816));
  if (sub_16C40C())
  {
    sub_105C70();
  }

  else
  {
    v68 = sub_106474();
    sub_C9294(v68, v38 + 20856);
    v69 = *(v38 + 20880);
    v70 = *(v38 + 20888);
    sub_3820C((v38 + 20856));
    v71 = sub_17970();
    v72(v71);
    v73 = *(v38 + 20920);
    v67 = *(v38 + 20928);
    sub_38138((v38 + 20896));
    sub_16C3FC();
    sub_105820();
  }

  v74 = *(v38 + 30056);
  v75 = sub_16D69C();
  v213 = v76;
  sub_10543C();
  v79 = sub_103600(v74, v77, v78);
  if (!v79 || (sub_9AE60(v79), sub_5E188(), , !v67) || (sub_146C80(v67), !v80))
  {
    v87 = *(v38 + 30032);
    sub_106130();
    v88 = *(v38 + 29080);
    v89 = *(v38 + 28864);

    sub_106F48();

    sub_106CBC();

    sub_1069B4();

    sub_105B70();
    v90 = sub_A77C4();
    v75(v90);
    v91 = sub_16DBDC();
    sub_16E37C();
    sub_106A08();
    if (sub_10623C())
    {
      v92 = *(v38 + 30192);
      v93 = *(v38 + 29992);
      v94 = *(v38 + 29080);
      v95 = sub_106514();
      sub_1054E8(v95);
      sub_1028F0(v88, v96, v97, v98);

      sub_1061C4(&def_259DC, v99, v100, "No loggedTime present nested inside intentResponse, returning GenericErrorFlow");
      sub_3A5E0();

      v101 = sub_105B50();
      v93(v101);
    }

    else
    {
      v102 = *(v38 + 29992);
      v103 = *(v38 + 29080);
      sub_106258();

      v104 = sub_1058E8();
      v102(v104);
    }

    v105 = *(v38 + 30184);
    v106 = *(v38 + 30056);
    v107 = *(v38 + 30000);
    v214 = *(v38 + 28856);
    v209 = *(v38 + 28568);
    v210 = *(v38 + 28816);
    v108 = *(v38 + 28408);
    v109 = *(v38 + 28368);
    v110 = *(v38 + 28360);
    v111 = *(v38 + 28280);
    v112 = *(v38 + 27976);
    sub_8284(*(v38 + 27984) + 64, v38 + 2208);
    sub_6361C((v38 + 2208), (v38 + 12768));
    sub_82E0();
    sub_16C4EC();

    sub_106328((v38 + 19888));
    *(v38 + 19952) &= 0x3Fu;
    sub_8748(v38 + 19888, &qword_1C9D30, &qword_1767C8);

    sub_8334(v38 + 12768);
    sub_8748(v111, &qword_1C57F8, &unk_172510);
    v113 = *(v109 + 8);
    v114 = sub_387CC();
    v115(v114);
    sub_105424();
    sub_103BA0(v209, v116);
    sub_8748(v210, &qword_1C5800, &unk_16F510);
    sub_8748(v214, &qword_1C69C0, &unk_174290);
    sub_104B50();
    sub_105454();

    sub_105A18();
    sub_8CC0();

    __asm { BRAA            X1, X16 }
  }

  v212 = v75;
  v81 = *(v38 + 27984);
  v82 = *(v81 + 16);

  v208 = getMedStatus(from:)();

  v83 = *(v81 + 16);

  getLocalizedMedName(from:)();
  v85 = v84;

  v86 = *(v38 + 30032);
  if (v85)
  {
  }

  else
  {
    v119 = *(v38 + 30024);
  }

  if (*(v38 + 17793))
  {
    v120 = *(v38 + 30056);
    sub_10543C();
    v124 = sub_103600(v121, v122, v123);
    if (v124 && (sub_9AE60(v124), sub_5E188(), , v83))
    {
      v125 = sub_16B9FC(v83);
      v205 = v126;
      v206 = v125;
    }

    else
    {
      v205 = 0;
      v206 = 0;
    }
  }

  else
  {
    v205 = *(v38 + 29544);
    v206 = *(v38 + 29552);
  }

  v211 = *(v38 + 30184);
  v127 = *(v38 + 29624);
  v128 = *(v38 + 29616);
  v129 = *(v38 + 29600);
  v130 = *(v38 + 29592);
  v131 = *(v38 + 29576);
  v132 = *(v38 + 29568);
  sub_107044();
  v133 = *(v38 + 28280);
  v197 = *(v38 + 28272);
  v134 = *(v38 + 28176);
  v135 = *(v38 + 28144);
  v136 = *(v38 + 28040);
  sub_107008();
  sub_86B0(v137, v138, &qword_1C57F8, &unk_172510);
  v204 = sub_14D35C();
  if (v131)
  {
    v139 = v132;
  }

  else
  {
    v139 = 0x646567676F4CLL;
  }

  v140 = 0xE600000000000000;
  if (v131)
  {
    v140 = v131;
  }

  v202 = v140;
  v203 = v139;
  if (v129)
  {
    v141 = v130;
  }

  else
  {
    v141 = 0x64657070696B53;
  }

  v142 = 0xE700000000000000;
  if (v129)
  {
    v142 = v129;
  }

  v200 = v142;
  v201 = v141;
  if (v127)
  {
    v143 = v128;
  }

  else
  {
    v143 = 0x6E656B6154;
  }

  v144 = 0xE500000000000000;
  if (v127)
  {
    v144 = v127;
  }

  v198 = v144;
  v199 = v143;
  sub_1055D0();
  sub_1039B4(v195, v136);
  sub_388E4();
  sub_214C(v145, v146, v147, v192);
  v194 = *(v135 + 32);
  v193 = sub_16C11C();
  sub_8AB4();
  sub_214C(v148, v149, v150, v151);
  v152 = v134 + *(v135 + 36);
  v153 = (v134 + *(v135 + 40));
  v154 = (v134 + *(v135 + 44));
  v196 = *(v135 + 76);
  v155 = sub_106150(v196);
  sub_214C(v155, v156, v157, v192);
  sub_1069CC(v208);
  sub_107070();
  *(v134 + 40) = v206;
  *(v134 + 48) = v205;
  *v152 = 0;
  *(v152 + 8) = 1;

  v158 = _s18WellnessFlowPlugin28SpecificMedCompletedLogModelV6dosageSdSgvpfi_0();
  *v153 = sub_147C94(v158, v159);
  v153[1] = v160;
  v161 = 0x656465654E207341;
  if (v205)
  {
    v161 = v206;
  }

  *v154 = 0;
  v154[1] = 0;
  v162 = v134 + *(v135 + 48);
  v163 = (v134 + *(v135 + 52));
  v164 = *(v135 + 56);
  v165 = *(v135 + 60);
  v166 = (v134 + *(v135 + 64));
  v167 = (v134 + *(v135 + 68));
  sub_106D10(v161);
  sub_147DA8(v197);
  sub_8748(v197, &qword_1C57F8, &unk_172510);
  sub_388E4();
  sub_214C(v168, v169, v170, v193);
  sub_1E634(v205, v134 + v194, &qword_1C63F0, &unk_1717F0);
  *v163 = v212;
  v163[1] = v213;
  *(v134 + v164) = 0;
  *(v134 + v165) = v204 & 1;
  *v166 = v203;
  v166[1] = v202;
  *v167 = v201;
  v167[1] = v200;
  *v135 = v199;
  *(v135 + 8) = v198;
  sub_1E634(v136, v134 + v196, &dword_1C63F8, &qword_171800);
  sub_C9294(v207 + 296, v38 + 21176);
  v171 = *(v38 + 21200);
  v172 = *(v38 + 21208);
  *(v38 + 21240) = sub_106160();
  sub_1055B8();
  *(v38 + 21248) = sub_104478(v173, 255, v174);
  sub_9910((v38 + 21216));
  sub_105584();
  sub_106D70();
  sub_10658C();
  sub_2440(&qword_1C5ED8, &unk_173090);
  v175 = sub_38DA0();
  v176 = sub_60CF0(v175, 1);
  *v177 = v211;
  *(v38 + 30200) = HKActivityRingUIViewRepresentable.updateUIView(_:context:)(v176);
  v178 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)[1];
  v179 = v211;
  swift_task_alloc();
  sub_179E8();
  *(v38 + 30208) = v180;
  *v180 = v181;
  v180[1] = sub_F13CC;
  v182 = *(v38 + 28408);
  sub_1057CC();
  sub_8CC0();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v183, v184, v185, v186, v187, v188, v189, v190, a9, a10, a11, a12, a13, a14, a15, a16, a17, v38, v39, v215, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_F13CC()
{
  sub_386A8();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  sub_38800();
  v5 = *(v4 + 30208);
  v7 = *(v6 + 30200);
  v8 = *v0;
  sub_C990();
  *v9 = v8;

  sub_2D64((v2 + 21216));
  v10 = sub_17960();

  return _swift_task_switch(v10, v11, v12);
}

void sub_F14D4()
{
  sub_3868C();
  sub_38664();
  v1 = v0[3773];
  v2 = v0[3757];
  v3 = v0[3750];
  sub_105C50();
  v4 = v0[3571];
  v5 = v0[3551];
  sub_1067EC();
  v16 = v0[3535];
  v6 = v0[3522];
  v7 = v0[3497];
  sub_106898(v8);
  sub_106968();
  sub_387F4();
  v9 = swift_allocObject();
  sub_106850(v9);
  sub_1068F4();
  v0[3489] = sub_16C1BC();
  sub_106918();

  sub_106328(v0 + 2540);
  sub_106444(20384);
  sub_8748((v0 + 2540), &qword_1C9D30, &qword_1767C8);

  sub_2D64(v0 + 2642);
  sub_1055A0();
  sub_103BA0(v6, v10);
  sub_8748(v16, &qword_1C57F8, &unk_172510);
  v11 = sub_107058();
  v12(v11);
  sub_105424();
  sub_103BA0(v17, v13);
  sub_8748(v18, &qword_1C5800, &unk_16F510);
  sub_8748(v19, &qword_1C69C0, &unk_174290);

  sub_104F9C();
  sub_10550C();

  sub_105C60();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

void sub_F1BF4()
{
  sub_3868C();
  sub_38664();
  sub_1059C0();
  v2 = v0[3634];
  sub_1058F8();
  v3 = sub_38408();
  v1(v3);
  v4 = sub_16DBDC();
  sub_16E36C();
  sub_106A70();
  sub_106344();
  v5 = v0[3749];
  v6 = v0[3634];
  sub_106568();
  if (v7)
  {
    v8 = sub_3A58C();
    v9 = sub_1054E8(v8);
    sub_106A88(v9, v10, v11, v12);

    sub_105B90(&def_259DC, v13, v14, "Couldn't create specificMedicationStatusBothSkipped_Dialog, returning GenericErrorFlow");
    sub_3A5E0();
  }

  else
  {
  }

  v15 = sub_105A64();
  v5(v15);
  v16 = v0[3757];
  v17 = v0[3750];
  sub_105BD0();
  v18 = v0[3571];
  v19 = v0[3551];
  v20 = v0[3546];
  v21 = sub_10591C();
  sub_8284(v21, (v0 + 1616));
  sub_6361C(v0 + 1616, v0 + 2196);
  sub_82E0();
  sub_16C4EC();

  sub_106328(v0 + 2504);
  sub_106444(20096);
  sub_8748((v0 + 2504), &qword_1C9D30, &qword_1767C8);

  sub_8334((v0 + 2196));
  v22 = *(v20 + 8);
  v23 = sub_387CC();
  v24(v23);
  sub_105424();
  sub_103BA0(v18, v25);
  sub_8748(v28, &qword_1C5800, &unk_16F510);
  sub_8748(v29, &qword_1C69C0, &unk_174290);
  sub_104B50();
  sub_105454();

  sub_105A18();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_F2344()
{
  sub_8A88();
  v7 = *v0;
  v1 = *v0;
  sub_C990();
  *v2 = v1;
  sub_8ACC();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_F2414()
{
  v389 = v0;
  v3 = *(v0 + 30248);
  v4 = *(v0 + 27800);
  *(v0 + 30256) = v4;
  v5 = swift_unknownObjectRelease();
  v6 = (*(&stru_20.maxprot + (swift_isaMask & *v4)))(v5);
  switch(v6)
  {
    case 112:
      v380 = v4;
      v78 = *(v0 + 29648);
      v79 = *(v0 + 29624);
      sub_1064A8();
      v80 = *(v0 + 29512);
      v66 = *(v0 + 29504);
      v81 = *(v0 + 28968);
      sub_106CB0();

      sub_1067B8();

      sub_107064();

      sub_10709C();

      sub_106730();

      sub_8B48();
      v82 = sub_106884();
      v80(v82);
      v69 = sub_16DBDC();
      sub_16E37C();
      sub_10699C();
      if (sub_106220())
      {
        v83 = sub_3A58C();
        sub_105890(v83);
        v84 = *(v0 + 30224);
        if (v2)
        {
          while (1)
          {
            sub_105B2C(v81[2]);
            sub_106F54();
          }
        }

        v85 = *(v0 + 30232);
        v74 = *(v0 + 28968);
        sub_106E50();
        sub_105AAC(&def_259DC, v86, v87, "Received gotComplexDosageLoggingError, creating output.");
        sub_3A5E0();

        v88 = sub_1070CC();
      }

      else
      {
        v85 = *(v0 + 30232);
        v74 = *(v0 + 28968);
        sub_10654C();

        v88 = sub_105C40();
      }

      v85(v88);
      v159 = *(v0 + 30240);
      sub_105B60();
      v160 = *(v0 + 27984);
      v161 = *(v0 + 27976);
      v162 = *(v160 + 16);
      sub_8284(v160 + 64, v0 + 840);
      sub_C9294(v160 + 24, v0 + 1000);

      sub_789CC((v0 + 1048));
      v163 = sub_87C00();
      v164 = sub_87C2C();
      sub_309A0((v0 + 1104));
      *(v0 + 832) = v162;
      *(v0 + 1040) = 0;
      *(v0 + 1088) = v163;
      *(v0 + 1096) = v164;
      sub_87F90();
      sub_16C4EC();

      sub_106900();
      sub_A9C4C(v0 + 832);
      goto LABEL_81;
    case 5:
      sub_106B44();
      v21 = *(v0 + 29512);
      v22 = *(v0 + 29504);
      v23 = *(v0 + 28944);
      v24 = *(v0 + 28864);

      sub_1067B8();

      sub_107064();

      sub_105B70();
      v25 = sub_A77C4();
      v21(v25);
      v26 = sub_16DBDC();
      sub_16E36C();
      sub_106A08();
      if (sub_10623C())
      {
        v27 = sub_3A58C();
        sub_1059F4(v27);
        v28 = *(v0 + 30224);
        if (v23[1].n128_u64[0])
        {
          while (1)
          {
            sub_105B2C(v23[2]);
            sub_1065A8();
          }
        }

        v29 = *(v0 + 30232);
        v30 = *(v0 + 28944);
        sub_106404();
        sub_105BB0(&def_259DC, v31, v32, "Received failure intent response, creating output.");
        sub_3A5E0();

        v33 = sub_105B00();
        v29(v33);
      }

      else
      {
        v89 = *(v0 + 30232);
        v4 = *(v0 + 28944);
        sub_106258();

        v90 = sub_1058E8();
        v89(v90);
      }

      sub_1069E4();
      *(v0 + 30528) = v26;
      v92 = *(v91 + 16);

      getLocalizedMedName(from:)();
      sub_106EF8();
      if (v4)
      {
        v93 = *(v0 + 28616);
        sub_8427C();
        sub_16E23C();

        v94 = 0;
      }

      else
      {
        v94 = 1;
      }

      v165 = *(v0 + 28608);
      v166 = *(v0 + 28528);
      sub_214C(*(v0 + 28616), v94, 1, v166);
      sub_8AB4();
      sub_214C(v167, v168, v169, v166);
      v170 = swift_task_alloc();
      *(v0 + 30536) = v170;
      *v170 = v0;
      v170[1] = sub_FC054;
      v171 = *(v0 + 28608);
      sub_C98D8(*(v0 + 28616));
      sub_106710();

      return sub_167658();
    case 110:
      v378 = v4;
      v47 = *(v0 + 29648);
      v48 = *(v0 + 29624);
      sub_1064A8();
      v49 = *(v0 + 29512);
      v50 = *(v0 + 29504);
      v51 = *(v0 + 28920);
      sub_106CB0();

      sub_1067B8();

      sub_107064();

      sub_10709C();

      sub_106730();

      sub_8B48();
      v52 = sub_106884();
      v49(v52);
      v53 = sub_16DBDC();
      sub_16E36C();
      sub_10699C();
      if (sub_106220())
      {
        v54 = sub_3A58C();
        sub_105890(v54);
        v55 = *(v0 + 30224);
        if (v2)
        {
          while (1)
          {
            sub_105B2C(v51[2]);
            sub_106F54();
          }
        }

        v56 = *(v0 + 30232);
        v57 = *(v0 + 28920);
        v58 = *(v0 + 28872);
        v59 = *(v0 + 28864);

        sub_105AAC(&def_259DC, v60, v61, "SpecificMedLoggingFlow's .scheduleSelected case received .needsConfirmMixedLogging in intent response, creating confirmation.");
        sub_3A5E0();

        v62 = sub_D4D84();
        v56(v62);
      }

      else
      {
        v108 = *(v0 + 30232);
        v109 = *(v0 + 28920);
        sub_10654C();

        v110 = sub_105C40();
        v108(v110);
        v111 = *(v0 + 30224);
      }

      memcpy((v0 + 19240), (*(v0 + 27984) + 224), 0x41uLL);
      sub_106934();
      sub_10543C();
      v114 = sub_103600(v378, v112, v113);
      if (v114)
      {
        v115 = v114;
        v360 = *(v0 + 30240);
        v372 = *(v0 + 28856);
        v368 = *(v0 + 28816);
        v363 = *(v0 + 28568);
        v116 = *(v0 + 27976);
        v117 = *(*(v0 + 27984) + 16);

        v118 = getMedStatus(from:)();

        sub_DB530(&__src);
        v119 = sub_105618();
        v120 = sub_FFA7C(v119, &CATWrapperSimple.__allocating_init(options:globals:));
        v121 = sub_105600();
        v122 = sub_FFA7C(v121, &CATWrapper.__allocating_init(options:globals:));
        sub_789CC(v386);
        type metadata accessor for LogMedScheduleMixedStatusConfirmationStrategy();
        swift_allocObject();
        sub_68120(v118 & 1, v115, &__src, v120, v122, v386);

        sub_16C73C();
        *(v0 + 27816) = sub_DB3B4();
        sub_100364();
        sub_2440(&qword_1C9D20, &qword_176760);
        sub_1055E8();
        sub_98C8(v123, &qword_1C9D20, &qword_176760);
        sub_106BF4(27816);
        sub_16C4CC();

        sub_106900();

        sub_105424();
        sub_103BA0(v363, v124);
        sub_8748(v368, &qword_1C5800, &unk_16F510);
        sub_8748(v372, &qword_1C69C0, &unk_174290);

        goto LABEL_83;
      }

      v173 = 6208;
      sub_106C04();
      v66 = *(v0 + 28912);
      v174 = *(v0 + 28864);
      sub_38474();
      v175 = sub_1067A8();
      v1(v175);
      v69 = sub_16DBDC();
      sub_16E36C();
      sub_10699C();
      if (sub_106220())
      {
        v176 = sub_3A58C();
        sub_105890(v176);
        v177 = 32;
        do
        {
          sub_105B2C(*(v174 + v177));
          v177 += 16;
          --v173;
        }

        while (v173);
        v178 = *(v0 + 30232);
        v74 = *(v0 + 28912);
        sub_106600();

        sub_105AAC(&def_259DC, v179, v180, "Needed confirmation for mixed logging, but intentResponse.matchingMeds was nil.");
        sub_3A5E0();

        v181 = sub_1070CC();
        v178(v181);
      }

      else
      {
        v268 = *(v0 + 30232);
        v74 = *(v0 + 28912);
        sub_10654C();

        v269 = sub_105C40();
        v268(v269);
      }

      v270 = *(v0 + 30240);
      v271 = sub_1058AC();
      sub_8284(v271, v0 + 6208);
      sub_6361C((v0 + 6208), (v0 + 6048));
      sub_82E0();
      sub_16C4EC();

      sub_106900();
      v158 = v0 + 6048;
      goto LABEL_80;
    case 111:
      v34 = *(v0 + 29648);
      sub_106F84();
      v35 = *(v0 + 29504);
      v36 = *(v0 + 28960);
      v37 = *(v0 + 28864);

      sub_1067B8();

      sub_1061A4();
      v38 = sub_105C00();
      v2(v38);
      v39 = sub_16DBDC();
      sub_16E36C();
      sub_106A08();
      if (sub_10623C())
      {
        v40 = sub_3A58C();
        sub_1059F4(v40);
        v41 = *(v0 + 30224);
        if (v37[1].n128_u64[0])
        {
          while (1)
          {
            sub_105B2C(v37[2]);
            sub_1065A8();
          }
        }

        v42 = *(v0 + 30232);
        v43 = *(v0 + 28960);
        sub_106404();
        sub_105BB0(&def_259DC, v44, v45, "SpecificMedLoggingFlow received .allMedsLoggedAlready in intent response, creating output.");
        sub_3A5E0();

        v46 = sub_105B00();
        v42(v46);
      }

      else
      {
        v95 = *(v0 + 30232);
        v96 = *(v0 + 28960);
        sub_106258();

        v97 = sub_1058E8();
        v95(v97);
      }

      v98 = *(v0 + 28392);
      v99 = *(v0 + 28352);
      v100 = *(v0 + 27984);
      sub_16C45C();
      sub_37FFC();
      sub_106DDC(v101, v102);
      sub_16C7AC();
      *(v0 + 30488) = *(v100 + 336);
      v103 = *(v100 + 16);

      getMedStatus(from:)();

      swift_task_alloc();
      sub_179E8();
      *(v0 + 30496) = v104;
      *v104 = v105;
      sub_106FA4(v104);
      sub_106710();

      return sub_16746C();
  }

  if (v6 != 4)
  {
    v379 = v4;
    v63 = *(v0 + 29648);
    v64 = *(v0 + 29624);
    sub_1064A8();
    v65 = *(v0 + 29512);
    v66 = *(v0 + 29504);
    v67 = *(v0 + 28904);
    sub_106CB0();

    sub_1067B8();

    sub_10709C();

    sub_106730();

    sub_8B48();
    v68 = sub_106884();
    v65(v68);
    v69 = sub_16DBDC();
    sub_16E36C();
    sub_10699C();
    if (sub_106220())
    {
      v70 = sub_3A58C();
      sub_105890(v70);
      v71 = *(v0 + 30224);
      for (i = 32; v2; v2 = (v2 - 1))
      {
        sub_105B2C(*(v67 + i));
        i += 16;
      }

      v73 = *(v0 + 30232);
      v74 = *(v0 + 28904);
      sub_106E50();
      sub_105AAC(&def_259DC, v75, v76, "Intent response code within .nameSelected was not an expected one || is one we're not handling yet, returning nil output.");
      sub_3A5E0();

      v77 = sub_1070CC();
    }

    else
    {
      v73 = *(v0 + 30232);
      v74 = *(v0 + 28904);
      sub_10654C();

      v77 = sub_105C40();
    }

    v73(v77);
    v154 = *(v0 + 30240);
    v155 = sub_1058AC();
    sub_8284(v155, v0 + 5408);
    v156 = sub_106BC0();
    sub_6361C(v156, v157);
    sub_82E0();
    sub_1071D0();

    sub_106900();
    v158 = v0 + 5248;
    goto LABEL_80;
  }

  v7 = *(v0 + 29544);
  sub_106F84();
  v8 = *(v0 + 29504);
  v9 = *(v0 + 29048);
  v10 = *(v0 + 28864);

  sub_1B9B4();
  v11 = sub_4B304();
  v2(v11);
  v12 = sub_16DBDC();
  sub_16E36C();
  sub_10699C();
  if (sub_106220())
  {
    v13 = sub_3A58C();
    sub_105890(v13);
    v14 = *(v0 + 30224);
    if (v2)
    {
      while (1)
      {
        sub_105B2C(*(&stru_20.cmd + &loc_6C38));
        sub_106F54();
      }
    }

    v377 = *(v0 + 30232);
    v15 = *(v0 + 29048);
    v16 = *(v0 + 28872);
    v17 = *(v0 + 28864);

    sub_105AAC(&def_259DC, v18, v19, "Received successful intent response, creating output.");
    sub_3A5E0();

    v20 = sub_D4D84();
    v377(v20);
  }

  else
  {
    v125 = *(v0 + 30232);
    v126 = *(v0 + 29048);
    v127 = *(v0 + 28872);
    v128 = *(v0 + 28864);

    v129 = sub_C9E0();
    v125(v129);
    v14 = *(v0 + 30224);
  }

  sub_10543C();
  v132 = sub_103600(v4, v130, v131);
  if (!v132)
  {
    v132 = sub_3A600(0);
  }

  v133 = *(v0 + 27984);
  v134 = v132;
  sub_102308(v132);
  v135 = [v4 medCount];
  if (!v135)
  {
    v182 = *(v0 + 29648);
    v66 = *(v0 + 29624);
    v183 = *(v0 + 29600);
    v184 = *(v0 + 29576);
    v381 = *(v0 + 29520);
    v373 = *(v0 + 29512);
    v185 = *(v0 + 29504);
    v186 = *(v0 + 28976);
    v369 = *(v0 + 28864);

    sub_1067B8();

    sub_1069B4();

    sub_8B48();
    v373(v186, v185, v369);
    v69 = sub_16DBDC();
    sub_16E36C();
    sub_10699C();
    if (sub_106220())
    {
      v187 = sub_3A58C();
      sub_105890(v187);
      if (v134)
      {
        while (1)
        {
          sub_105B2C(v185[2]);
          sub_106F54();
        }
      }

      v188 = *(v0 + 30232);
      v74 = *(v0 + 28976);
      sub_106600();

      sub_105AAC(&def_259DC, v189, v190, "There were no doseEvents in the chosen schedule, returning GenericErrorFlow");
      sub_3A5E0();

      v191 = sub_1070CC();
      v188(v191);
    }

    else
    {
      v272 = *(v0 + 30232);
      v74 = *(v0 + 28976);
      v273 = *(v0 + 28872);
      v66 = *(v0 + 28864);

      v274 = sub_C9E0();
      v272(v274);
    }

    v275 = *(v0 + 30240);
    v276 = sub_1058AC();
    sub_8284(v276, v0 + 7168);
    sub_6361C((v0 + 7168), (v0 + 8608));
    sub_82E0();
    sub_16C4EC();

    sub_106900();
    v158 = v0 + 8608;
LABEL_80:
    sub_8334(v158);
LABEL_81:
    sub_105424();
    sub_103BA0(v66, v277);
    sub_8748(v74, &qword_1C5800, &unk_16F510);
    v278 = v69;
LABEL_82:
    sub_8748(v278, &qword_1C69C0, &unk_174290);
LABEL_83:
    sub_104B50();
    sub_10586C();
    v351 = *(v0 + 28120);
    v352 = *(v0 + 28112);
    v353 = *(v0 + 28104);
    v354 = *(v0 + 28096);
    v355 = *(v0 + 28072);
    v356 = *(v0 + 28064);
    v357 = *(v0 + 28056);
    v358 = *(v0 + 28048);
    v359 = *(v0 + 28040);
    v361 = *(v0 + 28032);
    v364 = *(v0 + 28024);
    v370 = *(v0 + 28016);
    v375 = *(v0 + 28008);
    v382 = *(v0 + 28000);

    sub_C9BC();
    sub_106710();

    __asm { BRAA            X1, X16 }
  }

  v136 = v135;
  v137 = *(v0 + 28480);
  v138 = *(v0 + 28400);
  v139 = *(v0 + 28352);
  v140 = *(v0 + 27984);
  [v135 doubleValue];

  v141 = *(v140 + 16);
  v142 = v4;
  sub_1068E8();

  v143 = sub_8B9C();
  sub_FF05C(v143, v144);
  sub_16C43C();
  sub_37FFC();
  sub_B9BF4(v139, v145, 0);
  sub_C9294(v140 + 24, v0 + 25536);
  v146 = *(v0 + 25560);
  v147 = *(v0 + 25568);
  sub_106B08((v0 + 25536));
  v148 = sub_88100();
  v149(v148);
  v150 = *(v0 + 24928);
  sub_2D20((v0 + 24896), *(v0 + 24920));
  sub_88100();
  if (sub_16C40C())
  {
    sub_2D64((v0 + 24896));
    v151 = sub_2D64((v0 + 25536));
    v153 = 4;
  }

  else
  {
    v192 = sub_106474();
    sub_C9294(v192, v0 + 24856);
    v193 = *(v0 + 24880);
    v194 = *(v0 + 24888);
    sub_106B08((v0 + 24856));
    v195 = sub_88100();
    v196(v195);
    v197 = *(v0 + 24728);
    sub_2D20((v0 + 24696), *(v0 + 24720));
    sub_88100();
    sub_16C3FC();
    sub_106D88();
    sub_2D64((v0 + 24856));
    sub_2D64((v0 + 24896));
    v151 = sub_2D64((v0 + 25536));
    if (v141)
    {
      v153 = 4;
    }

    else
    {
      v153 = 0;
    }
  }

  v198 = *(v0 + 28264);
  sub_106680(v151, v152, v153);
  sub_C9294(v141 + 24, v0 + 24656);
  v199 = *(v0 + 24680);
  v200 = *(v0 + 24688);
  sub_106B08((v0 + 24656));
  v201 = sub_88100();
  v202(v201);
  v203 = *(v0 + 24600);
  v204 = *(v0 + 24608);
  sub_2D20((v0 + 24576), v203);
  sub_88100();
  if ((sub_16C40C() & 1) == 0)
  {
    v205 = sub_106474();
    sub_C9294(v205, v0 + 24496);
    v206 = *(v0 + 24520);
    v207 = *(v0 + 24528);
    sub_106B08((v0 + 24496));
    v208 = sub_88100();
    v209(v208);
    v203 = *(v0 + 24480);
    v210 = *(v0 + 24488);
    sub_2D20((v0 + 24456), v203);
    sub_88100();
    sub_16C3FC();
    sub_106D88();
    sub_2D64((v0 + 24496));
  }

  sub_2D64((v0 + 24576));
  sub_2D64((v0 + 24656));
  v211 = *(v0 + 29656);
  v212 = sub_16D69C();
  *(v0 + 30264) = v213;
  *(v0 + 30272) = v212;
  if (v211 == 5)
  {
    v214 = *(v0 + 30216);
    sub_1059C0();
    v215 = *(v0 + 29040);
    v216 = *(v0 + 28864);
    sub_38474();
    v203(v215, 5, v216);
    sub_106F78();
    v217 = swift_allocObject();
    *(v217 + 16) = v4;
    v374 = v4;
    v218 = sub_16DBDC();
    v219 = sub_16E36C();
    sub_106420();
    v220 = swift_allocObject();
    *(v220 + 16) = 32;
    sub_106420();
    v221 = swift_allocObject();
    sub_106AF0(v221);
    sub_106264();
    v222 = swift_allocObject();
    *(v222 + 16) = sub_103B48;
    *(v222 + 24) = v217;
    sub_106264();
    v223 = swift_allocObject();
    *(v223 + 16) = sub_104B28;
    *(v223 + 24) = v222;
    v224 = sub_106F30();
    sub_61090(v224, 3);
    *v225 = sub_104B38;
    v225[1] = v220;
    v225[2] = sub_104B38;
    v225[3] = v221;
    v225[4] = sub_1049F0;
    v225[5] = v223;

    if (sub_106984())
    {
      v226 = sub_3A58C();
      v227 = sub_CA30();
      *v226 = 258;
      *&v386[0] = v227;
      v387 = v226 + 2;
      v388[0] = 0;
      __src = sub_104B38;
      v385 = v220;
      sub_105C10();
      if (v14)
      {

        sub_106710();
      }

      sub_105C10();

      __src = sub_1049F0;
      v385 = v223;
      sub_105C10();
      v366 = *(v0 + 30232);
      v338 = v226;
      v281 = *(v0 + 29648);
      v362 = *(v0 + 29040);
      v220 = v218;
      v339 = *(v0 + 28872);
      v340 = *(v0 + 28864);

      _os_log_impl(&def_259DC, v220, v219, "got .rejectedOverwriteInGroup, starting with %s matchingMeds", v338, 0xCu);
      sub_2D64(v227);
      sub_8A2C();
      sub_3A5E0();

      v366(v362, v340);
      v285 = v374;
    }

    else
    {
      v365 = *(v0 + 30232);
      v281 = *(v0 + 29648);
      v282 = *(v0 + 29040);
      v283 = *(v0 + 28872);
      v227 = *(v0 + 28864);

      v284 = sub_4B4EC();
      v365(v284);
      v285 = v374;
    }

    sub_10543C();
    v288 = sub_103600(v285, v286, v287);
    if (!v288)
    {
      goto LABEL_90;
    }

    v289 = v288;
    sub_3B35C(v288);
    sub_1068E8();

    if (v281 == 1)
    {
      sub_1069E4();
      *(v0 + 30336) = v289;

      sub_10543C();
      v304 = sub_103600(v285, v302, v303);
      if (v304 && (v305 = sub_9AE60(v304), , v305) && (sub_16B9FC(v305), v306))
      {
        v307 = *(v0 + 28664);
        sub_16E23C();

        v308 = 0;
      }

      else
      {
        v308 = 1;
      }

      sub_1071A0(*(v0 + 28664), v308);
      v323 = swift_task_alloc();
      *(v0 + 30344) = v323;
      *v323 = v0;
      v323[1] = sub_F5A8C;
      v324 = *(v0 + 28664);
      goto LABEL_108;
    }

    if (!v281)
    {
LABEL_90:
      v290 = *(v0 + 29624);
      v291 = *(v0 + 29600);
      v292 = *(v0 + 29576);
      v293 = *(v0 + 28672);
      v294 = *(v0 + 28528);
      v295 = *(v0 + 27984);

      *(v0 + 30280) = *(v295 + 336);
      sub_8AB4();
      sub_214C(v296, v297, v298, v294);

      v299 = swift_task_alloc();
      *(v0 + 30288) = v299;
      *v299 = v0;
      v299[1] = sub_F465C;
      v300 = *(v0 + 28672);
LABEL_108:
      sub_106710();

      return sub_166794();
    }

    v309 = *(v0 + 29624);
    v310 = *(v0 + 29600);
    v311 = *(v0 + 29576);

    sub_10709C();

    sub_10543C();
    v314 = sub_103600(v285, v312, v313);
    if (v314)
    {
      v315 = *(v0 + 27984);
      sub_3B35C(v314);
      sub_1068E8();

      *(v0 + 30376) = *(v315 + 336);

      sub_10543C();
      v318 = sub_103600(v285, v316, v317);
      if (v318 && (v319 = sub_9AE60(v318), , v319) && (sub_16B9FC(v319), v320))
      {
        v321 = *(v0 + 28656);
        sub_16E23C();

        v322 = 0;
      }

      else
      {
        v322 = 1;
      }

      sub_1071A0(*(v0 + 28656), v322);
      v325 = swift_task_alloc();
      *(v0 + 30384) = v325;
      *v325 = v0;
      v325[1] = sub_F70D4;
      v326 = *(v0 + 28656);
      goto LABEL_108;
    }

    sub_105A08();
    v328 = *(v0 + 28992);
    v329 = *(v0 + 28864);
    sub_38474();
    v330 = sub_105BF0();
    (v227)(v330);
    v331 = sub_16DBDC();
    sub_16E37C();
    sub_106A70();
    sub_106344();
    v332 = *(v0 + 30232);
    v333 = *(v0 + 28992);
    sub_106568();
    if (v334)
    {
      v223 = sub_3A58C();
      *&v386[0] = 0;
      __src = 0;
      sub_106114(v223);
      v388[0] = v335;
      sub_1028F0(v227, v388, v386, &__src);

      sub_105B90(&def_259DC, v336, v337, "Couldn't create logMedConfirmationRejected_Dialog, returning GenericErrorFlow");
      sub_3A5E0();
    }

    else
    {
    }

    v341 = sub_105A64();
    v332(v341);
    v342 = *(v0 + 30256);
    v343 = *(v0 + 30240);
    v383 = *(v0 + 28856);
    v376 = *(v0 + 28816);
    v371 = *(v0 + 28568);
    v367 = *(v0 + 28480);
    v344 = *(v0 + 28400);
    v345 = sub_105980();
    sub_8284(v345, v0 + 15008);
    sub_6361C((v0 + 15008), (v0 + 14848));
    sub_82E0();
    sub_16C4EC();

    sub_106900();
    sub_8334(v0 + 14848);
    sub_8748(v223, &qword_1C57F8, &unk_172510);
    v346 = *(v220 + 8);
    v347 = sub_4B4EC();
    v348(v347);
    sub_1054D0();
    sub_103BA0(v367, v349);
    sub_105424();
    sub_103BA0(v371, v350);
    sub_8748(v376, &qword_1C5800, &unk_16F510);
    v278 = v383;
    goto LABEL_82;
  }

  v228 = *(v0 + 29648);
  v229 = *(v0 + 28640);
  v230 = *(v0 + 28528);
  v231 = *(v0 + 28480);
  v232 = *(v0 + 28472);

  sub_1067B8();

  v233 = (v231 + *(v232 + 36));
  v234 = *v233;
  v235 = *(v233 + 8);
  sub_8AB4();
  sub_214C(v236, v237, v238, v230);
  if ((v235 & 1) == 0)
  {
    v235 = *(v0 + 28800);
    v239 = *(v0 + 28640);
    v240 = *(v0 + 28528);
    sub_2440(&qword_1C8C78, &unk_1747C0);
    v241 = swift_allocObject();
    v242 = sub_61090(v241, 1);
    v243[3] = &type metadata for Double;
    v243[4] = &protocol witness table for Double;
    *v243 = v234;
    v244 = HKActivityRingUIViewRepresentable.updateUIView(_:context:)(v242);
    sub_106A50(v244);
    sub_16E23C();

    sub_8748(v239, &qword_1C5800, &unk_16F510);
    sub_388E4();
    sub_214C(v245, v246, v247, v240);
    v248 = sub_38B40();
    sub_86FC(v248, v249, &qword_1C5800, &unk_16F510);
  }

  v250 = *(v0 + 28632);
  v251 = *(v0 + 28624);
  v252 = *(v0 + 28528);
  v253 = *(v0 + 28480);
  v254 = *(v0 + 28472);
  sub_1069E4();
  *(v0 + 30448) = v235;
  v255 = *v253;
  sub_8AB4();
  sub_214C(v256, v257, v258, v252);

  sub_103660(v4, &selRef_medSchedule);
  sub_16E23C();

  sub_388E4();
  sub_214C(v259, v260, v261, v252);
  v262 = v253[v254[8]];
  v263 = &v253[v254[10]];
  LOBYTE(v253) = v253[v254[11]];
  v264 = swift_task_alloc();
  *(v0 + 30456) = v264;
  *v264 = v0;
  v264[1] = sub_F9370;
  v265 = *(v0 + 28640);
  v266 = *(v0 + 28632);
  v267 = *(v0 + 28624);
  v392 = v253;
  v391 = v263;

  return sub_167D00();
}

uint64_t sub_F465C()
{
  sub_386A8();
  sub_38CAC();
  sub_38388();
  *v4 = v3;
  v5 = *(v1 + 30288);
  v6 = *v2;
  sub_38440();
  *v7 = v6;
  *(v9 + 30296) = v8;
  *(v9 + 30304) = v0;

  sub_8C88();
  v11 = *(v10 + 30280);
  v12 = *(v1 + 28672);
  if (v0)
  {

    sub_8748(v12, &qword_1C5800, &unk_16F510);
  }

  else
  {
    sub_8748(v12, &qword_1C5800, &unk_16F510);
  }

  sub_105A74();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_F47D0()
{
  sub_38AB4();
  sub_38664();
  v1 = *(v0 + 28400);
  v2 = *(v0 + 27984);
  v3 = [*(v0 + 30296) catId];
  sub_16E1BC();
  sub_106508();

  sub_C9E0();
  sub_16C76C();
  sub_16C7AC();
  sub_106C80();
  sub_8284(v2 + 64, v0 + 13728);
  sub_C9294(v2 + 296, v0 + 21856);
  *(v0 + 30312) = *(v2 + 336);
  *(v0 + 30320) = *(v2 + 344);

  swift_task_alloc();
  sub_179E8();
  *(v0 + 30328) = v4;
  *v4 = v5;
  v4[1] = sub_F4914;
  v6 = *(v0 + 30296);
  v7 = *(v0 + 28400);
  sub_385E4();
  sub_8CC0();

  return sub_9AEDC();
}

uint64_t sub_F4914()
{
  sub_107214();
  sub_C9EC();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  sub_38800();
  v5 = *(v4 + 30328);
  v7 = *(v6 + 30320);
  v8 = *(v6 + 30312);
  v9 = *v0;
  sub_C990();
  *v10 = v9;

  sub_2D64((v2 + 21856));
  sub_C938(v2 + 13728);
  sub_2D64((v2 + 21896));
  sub_17960();
  sub_107200();

  return _swift_task_switch(v11, v12, v13);
}

void sub_F4A50()
{
  sub_3868C();
  sub_38664();
  if (*(v0 + 21960))
  {
    v4 = *(v0 + 30296);
    v5 = *(v0 + 30256);
    v6 = *(v0 + 30240);
    sub_1062A0();
    v43 = *(v0 + 28480);
    v45 = v7;
    v8 = *(v0 + 28368);
    v40 = *(v0 + 28360);
    v41 = *(v0 + 28400);
    v9 = *(v0 + 28264);
    v10 = *(v0 + 27976);
    sub_17464((v0 + v11), v0 + 21976);
    sub_16C1DC();
    sub_106968();
    sub_387F4();
    v12 = swift_allocObject();
    sub_17464((v0 + 21696), v12 + 16);
    sub_78B14();
    *(v0 + 27848) = sub_16C1BC();
    sub_106918();

    sub_106900();
    sub_2D64((v0 + 21976));
    sub_8748(v9, &qword_1C57F8, &unk_172510);
    (*(v8 + 8))(v41, v40);
    sub_1054D0();
    sub_103BA0(v43, v13);
    sub_105424();
    sub_103BA0(v45, v14);
    sub_8748(v47, &qword_1C5800, &unk_16F510);
    sub_8748(v49, &qword_1C69C0, &unk_174290);
  }

  else
  {
    sub_105A08();
    v15 = *(v0 + 29032);
    v16 = *(v0 + 28864);
    sub_8748(v0 + v17, &qword_1C5ED0, &qword_171090);
    sub_1B9B4();
    v18 = sub_38408();
    v1(v18);
    v19 = sub_16DBDC();
    sub_16E36C();
    sub_106A08();
    if (sub_10623C())
    {
      v20 = *(v0 + 30304);
      v21 = *(v0 + 30232);
      v22 = *(v0 + 29032);
      v23 = sub_106514();
      sub_105ACC(v23);

      sub_1061C4(&def_259DC, v24, v25, "Couldn't create output, returning GenericErrorFlow");
      sub_3A5E0();

      v26 = sub_105B50();
      v21(v26);
    }

    else
    {
      v27 = *(v0 + 30232);
      v28 = *(v0 + 29032);
      sub_106258();

      v29 = sub_1058E8();
      v27(v29);
    }

    v30 = *(v0 + 30296);
    v31 = *(v0 + 30256);
    v32 = *(v0 + 30240);
    sub_106438();
    v48 = v33;
    v50 = v34;
    v44 = *(v0 + 28480);
    v46 = *(v0 + 28568);
    v42 = *(v0 + 28400);
    v35 = sub_105980();
    sub_8284(v35, v0 + 10528);
    sub_6361C((v0 + 10528), (v0 + 11168));
    sub_82E0();
    sub_16C4EC();

    sub_106900();
    sub_8334(v0 + 11168);
    sub_8748(v2, &qword_1C57F8, &unk_172510);
    (*(v3 + 8))(v42, v1);
    sub_1054D0();
    sub_103BA0(v44, v36);
    sub_105424();
    sub_103BA0(v46, v37);
    sub_8748(v48, &qword_1C5800, &unk_16F510);
    sub_8748(v50, &qword_1C69C0, &unk_174290);
  }

  sub_104B50();
  sub_10586C();
  sub_105768();

  sub_105BE0();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

void sub_F5348()
{
  sub_3868C();
  sub_38664();
  sub_1059C0();
  v4 = v0[3628];
  sub_1058F8();
  v5 = sub_38408();
  v1(v5);
  v6 = sub_16DBDC();
  sub_16E36C();
  sub_106A70();
  sub_106344();
  v7 = v0[3779];
  v8 = v0[3628];
  sub_106568();
  if (v9)
  {
    v10 = sub_3A58C();
    v11 = sub_1054E8(v10);
    sub_106A88(v11, v12, v13, v14);

    sub_105B90(&def_259DC, v15, v16, "Couldn't create logMedConfirmationRejected_Dialog, returning GenericErrorFlow");
    sub_3A5E0();
  }

  else
  {
  }

  v17 = sub_105A64();
  v7(v17);
  v18 = v0[3782];
  v19 = v0[3780];
  sub_105B10();
  v20 = v0[3550];
  v21 = sub_105980();
  sub_8284(v21, (v0 + 1916));
  sub_6361C(v0 + 1916, v0 + 1936);
  sub_82E0();
  sub_16C4EC();

  sub_106900();
  sub_8334((v0 + 1936));
  sub_8748(v2, &qword_1C57F8, &unk_172510);
  v22 = *(v3 + 8);
  v23 = sub_4B4EC();
  v24(v23);
  sub_1054D0();
  sub_103BA0(v29, v25);
  sub_105424();
  sub_103BA0(v30, v26);
  sub_8748(v31, &qword_1C5800, &unk_16F510);
  sub_8748(v32, &qword_1C69C0, &unk_174290);
  sub_104B50();
  sub_105454();

  sub_105A18();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_F5A8C()
{
  sub_76D68();
  v2 = *v1;
  v3 = *v1;
  sub_C990();
  *v4 = v3;
  v5 = v2[3793];
  v6 = *v1;
  sub_38388();
  *v7 = v6;
  v3[3794] = v8;

  v9 = v2[3792];
  if (v0)
  {
    v10 = v3[3783];
    sub_106BCC();
    v11 = v3[3583];
    sub_10642C();

    sub_8748(v11, &qword_1C5800, &unk_16F510);
  }

  else
  {
    sub_8748(v3[3583], &qword_1C5800, &unk_16F510);
  }

  sub_105A74();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_F5C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  v39 = v38[3794];
  v40 = v38[3782];
  v41 = v38[3550];
  v42 = v38[3514];
  v43 = v38[3498];
  sub_16C7AC();
  v44 = [v39 catId];
  sub_16E1BC();

  sub_4B4EC();
  sub_16C76C();
  v45 = *(v43 + 16);

  v166 = getMedStatus(from:)();

  sub_16BF4C();
  sub_10543C();
  v48 = sub_103600(v40, v46, v47);
  if (v48 && (sub_9AE60(v48), sub_1068E8(), , v40))
  {
    v49 = sub_16BA08(v40);
    v161 = v50;
    v162 = v49;
  }

  else
  {
    v161 = 0;
    v162 = 0;
  }

  v51 = v38[3782];
  sub_10543C();
  v55 = sub_103600(v52, v53, v54);
  if (v55 && (sub_9AE60(v55), sub_1068E8(), , v40))
  {
    v156 = sub_16B9FC(v40);
    v154 = v56;
  }

  else
  {
    v156 = 0;
    v154 = 0;
  }

  v168 = v38[3794];
  v163 = v38[3783];
  v164 = v38[3784];
  v57 = v38[3703];
  v58 = v38[3702];
  v59 = v38[3700];
  v60 = v38[3699];
  v61 = v38[3697];
  v62 = v38[3696];
  v63 = v38[3570];
  v64 = v38[3533];
  v147 = v38[3571];
  v149 = v38[3532];
  v65 = v38[3521];
  v66 = v38[3518];
  v67 = v38[3514];
  sub_106490();
  v68 = v38[3504];
  sub_106C58();
  v165 = v69;
  sub_86B0(v70, v71, &qword_1C57F8, &unk_172510);
  v160 = sub_14D35C();
  if (v61)
  {
    v72 = v62;
  }

  else
  {
    v72 = 0x646567676F4CLL;
  }

  v73 = 0xE600000000000000;
  if (v61)
  {
    v73 = v61;
  }

  v158 = v73;
  v159 = v72;
  v74 = 0x64657070696B53;
  if (v59)
  {
    v74 = v60;
  }

  v157 = v74;
  v75 = 0xE700000000000000;
  if (v59)
  {
    v75 = v59;
  }

  v155 = v75;
  if (v57)
  {
    v76 = v58;
  }

  else
  {
    v76 = 0x6E656B6154;
  }

  v77 = 0xE500000000000000;
  if (v57)
  {
    v77 = v57;
  }

  v152 = v77;
  v153 = v76;
  sub_1055D0();
  sub_1039B4(v147, v68);
  sub_388E4();
  sub_214C(v78, v79, v80, v139);
  v143 = sub_106EC0();
  sub_8AB4();
  sub_214C(v81, v82, v83, v84);
  v85 = v65 + v66[9];
  v86 = (v65 + v66[10]);
  v87 = (v65 + v66[11]);
  v148 = v66[19];
  v88 = sub_106150(v148);
  sub_214C(v88, v89, v90, v139);
  sub_1069CC(v166);
  v65[1] = sub_BA66C();
  v65[2] = v91;
  v65[3] = v162;
  v65[4] = v161;
  v65[5] = v156;
  v65[6] = v154;
  *v85 = 0;
  v85[8] = 1;

  v92 = _s18WellnessFlowPlugin28SpecificMedCompletedLogModelV6dosageSdSgvpfi_0();
  *v86 = sub_147C94(v92, v93);
  v86[1] = v94;
  v95 = 0x656465654E207341;
  if (v154)
  {
    v95 = v156;
  }

  v96 = 0xE900000000000064;
  if (v154)
  {
    v96 = v154;
  }

  *v87 = 0;
  v87[1] = 0;
  v97 = (v65 + v66[12]);
  v98 = (v65 + v66[13]);
  v99 = v66[14];
  v167 = v66[15];
  v100 = (v65 + v66[16]);
  v101 = (v65 + v66[17]);
  v102 = (v65 + v66[18]);
  *v97 = v95;
  v97[1] = v96;
  sub_147DA8(v149);
  sub_8748(v149, &qword_1C57F8, &unk_172510);
  (*(v151 + 8))();
  sub_388E4();
  v106 = sub_214C(v103, v104, v105, v143);
  v112 = sub_106EA4(v106, v107, &qword_1C63F0, &unk_1717F0, v108, v109, v110, v111, v139, v141, v143, v145);
  *v98 = v164;
  v98[1] = v163;
  *(v65 + v99) = 0;
  *(v65 + v167) = v160 & 1;
  *v100 = v159;
  v100[1] = v158;
  *v101 = v157;
  v101[1] = v155;
  *v102 = v153;
  v102[1] = v152;
  sub_106E88(v112, v113, &dword_1C63F8, &qword_171800, v114, v115, v116, v117, v140, v142, v144, v146, v148, v149, v150, v68);
  sub_C9294(v165 + 296, (v38 + 2787));
  v118 = v38[2790];
  v119 = v38[2791];
  v38[2785] = sub_106160();
  sub_1055B8();
  v38[2786] = sub_104478(v120, 255, v121);
  sub_9910(v38 + 2782);
  sub_105584();
  sub_106D70();
  sub_10658C();
  sub_2440(&qword_1C5ED8, &unk_173090);
  v122 = sub_38DA0();
  v123 = sub_60CF0(v122, 1);
  *v124 = v168;
  v38[3795] = HKActivityRingUIViewRepresentable.updateUIView(_:context:)(v123);
  v125 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)[1];
  v126 = v168;
  swift_task_alloc();
  sub_179E8();
  v38[3796] = v127;
  *v127 = v128;
  v127[1] = sub_F6144;
  v129 = v38[3550];
  v130 = sub_1057CC();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v130, v131, v132, v133, v134, v135, v136, v137, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_F6144()
{
  sub_386A8();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  sub_38800();
  v5 = *(v4 + 30368);
  v7 = *(v6 + 30360);
  v8 = *v0;
  sub_C990();
  *v9 = v8;

  sub_2D64((v2 + 22256));
  v10 = sub_17960();

  return _swift_task_switch(v10, v11, v12);
}

void sub_F624C()
{
  sub_3868C();
  sub_38664();
  v1 = *(v0 + 30352);
  v2 = *(v0 + 30256);
  v3 = *(v0 + 30240);
  sub_105C50();
  v17 = *(v0 + 28480);
  v18 = *(v0 + 28568);
  v4 = *(v0 + 28368);
  v15 = *(v0 + 28360);
  v16 = *(v0 + 28400);
  v14 = *(v0 + 28264);
  v5 = *(v0 + 28168);
  v6 = *(v0 + 27976);
  sub_106898(v7);
  sub_C9294(v0 + 22536, v0 + 22216);
  sub_387F4();
  v8 = swift_allocObject();
  sub_17464((v0 + 22216), v8 + 16);
  sub_78B14();
  sub_1068F4();
  *(v0 + 27968) = sub_16C1BC();
  sub_16C4EC();

  sub_106900();
  sub_2D64((v0 + 22536));
  sub_1055A0();
  sub_103BA0(v5, v9);
  sub_8748(v14, &qword_1C57F8, &unk_172510);
  (*(v4 + 8))(v16, v15);
  sub_1054D0();
  sub_103BA0(v17, v10);
  sub_105424();
  sub_103BA0(v18, v11);
  sub_8748(v19, &qword_1C5800, &unk_16F510);
  sub_8748(v20, &qword_1C69C0, &unk_174290);

  sub_104F9C();
  sub_10550C();

  sub_105C60();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

void sub_F6990()
{
  sub_3868C();
  sub_38664();
  sub_1059C0();
  v4 = v0[3627];
  sub_1058F8();
  v5 = sub_38408();
  v1(v5);
  v6 = sub_16DBDC();
  sub_16E36C();
  sub_106A70();
  sub_106344();
  v7 = v0[3779];
  v8 = v0[3627];
  sub_106568();
  if (v9)
  {
    v10 = sub_3A58C();
    v11 = sub_1054E8(v10);
    sub_106A88(v11, v12, v13, v14);

    sub_105B90(&def_259DC, v15, v16, "Couldn't create logMedConfirmationRejected_Dialog, returning GenericErrorFlow");
    sub_3A5E0();
  }

  else
  {
  }

  v17 = sub_105A64();
  v7(v17);
  v18 = v0[3782];
  v19 = v0[3780];
  sub_105B10();
  v20 = v0[3550];
  v21 = sub_105980();
  sub_8284(v21, (v0 + 2176));
  sub_6361C(v0 + 2176, v0 + 2156);
  sub_82E0();
  sub_16C4EC();

  sub_106900();
  sub_8334((v0 + 2156));
  sub_8748(v2, &qword_1C57F8, &unk_172510);
  v22 = *(v3 + 8);
  v23 = sub_4B4EC();
  v24(v23);
  sub_1054D0();
  sub_103BA0(v29, v25);
  sub_105424();
  sub_103BA0(v30, v26);
  sub_8748(v31, &qword_1C5800, &unk_16F510);
  sub_8748(v32, &qword_1C69C0, &unk_174290);
  sub_104B50();
  sub_105454();

  sub_105A18();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_F70D4()
{
  sub_386A8();
  sub_38CAC();
  sub_38388();
  *v4 = v3;
  v5 = *(v1 + 30384);
  v6 = *v2;
  sub_38440();
  *v7 = v6;
  *(v9 + 30392) = v8;
  *(v9 + 30400) = v0;

  sub_8C88();
  v11 = *(v10 + 30376);
  v12 = *(v1 + 28656);
  if (v0)
  {

    sub_8748(v12, &qword_1C5800, &unk_16F510);
  }

  else
  {
    sub_8748(v12, &qword_1C5800, &unk_16F510);
  }

  sub_105A74();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_F7248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  v13 = *(v12 + 28400);
  v14 = *(v12 + 27984);
  v15 = [*(v12 + 30392) catId];
  sub_16E1BC();
  sub_106508();

  sub_C9E0();
  sub_16C76C();
  sub_16C7AC();
  sub_C9294(v14 + 24, v12 + 23216);
  v16 = *(v12 + 23240);
  v17 = *(v12 + 23248);
  v18 = sub_1057EC();
  v19(v18);
  v20 = *(v12 + 23200);
  v21 = *(v12 + 23208);
  sub_38138((v12 + 23176));
  if (sub_16C40C())
  {
    sub_2D64((v12 + 23176));
    sub_2D64((v12 + 23216));
    v22 = 4;
  }

  else
  {
    v23 = sub_106474();
    sub_C9294(v23, v12 + 23016);
    v24 = *(v12 + 23040);
    v25 = *(v12 + 23048);
    sub_3820C((v12 + 23016));
    v26 = sub_17970();
    v27(v26);
    v28 = *(v12 + 23000);
    v29 = *(v12 + 23008);
    sub_38138((v12 + 22976));
    sub_16C3FC();
    sub_105820();
    if (v30)
    {
      v22 = 0;
    }

    else
    {
      v22 = 4;
    }
  }

  v31 = *(v12 + 28248);
  v32 = *(v12 + 28240);
  sub_160444(0, 0, v22);
  v33 = sub_C9C8();
  sub_86B0(v33, v34, v35, v36);
  v37 = sub_16BE9C();
  v38 = sub_369C(v32, 1, v37);
  v39 = *(v12 + 28648);
  v40 = *(v12 + 28528);
  v41 = *(v12 + 28240);
  if (v38 == 1)
  {
    sub_8748(*(v12 + 28240), &qword_1C57F8, &unk_172510);
    sub_8AB4();
    sub_214C(v42, v43, v44, v40);
    goto LABEL_10;
  }

  sub_61120(*(v12 + 28648));
  sub_5DE54(v37);
  (*(v45 + 8))(v41, v37);
  v46 = sub_C98CC();
  sub_8B20(v46, v47, v40);
  if (v30)
  {
LABEL_10:
    sub_105A08();
    v48 = *(v12 + 29000);
    v49 = *(v12 + 28864);
    sub_8748(*(v12 + 28648), &qword_1C5800, &unk_16F510);
    sub_1B9B4();
    sub_38408();
    sub_5A88();
    v50 = sub_16DBDC();
    sub_16E37C();
    sub_106A08();
    if (sub_10623C())
    {
      v51 = *(v12 + 30400);
      v52 = *(v12 + 30232);
      v53 = *(v12 + 29000);
      v54 = sub_106514();
      sub_1054E8(v54);
      sub_1028F0(27152, v55, v56, v57);

      sub_1061C4(&def_259DC, v58, v59, "Couldn't create actionAceCommandString while trying to create logMedConfirmationRejected_Dialog, returning GenericErrorFlow");
      sub_3A5E0();

      v60 = sub_105B50();
      v52(v60);
    }

    else
    {
      v61 = *(v12 + 30232);
      v62 = *(v12 + 29000);
      sub_106258();

      v63 = sub_1058E8();
      v61(v63);
    }

    v64 = *(v12 + 30392);
    v65 = *(v12 + 30256);
    v66 = *(v12 + 30240);
    sub_105B10();
    v67 = *(v12 + 28368);
    v140 = *(v12 + 28360);
    v141 = *(v12 + 28400);
    v68 = *(v12 + 28264);
    v69 = *(v12 + 28248);
    sub_107130();
    sub_6361C((v12 + 16128), (v12 + 15968));
    sub_82E0();
    sub_16C4EC();

    sub_106900();
    sub_8334(v12 + 15968);
    sub_1071E8(v69);
    sub_1071E8(v68);
    (*(v67 + 8))(v141, v140);
    sub_1054D0();
    sub_103BA0(v142, v70);
    sub_105424();
    sub_103BA0(v143, v71);
    sub_8748(v144, &qword_1C5800, &unk_16F510);
    sub_8748(v145, &qword_1C69C0, &unk_174290);
    sub_104B50();
    sub_105454();

    sub_105A18();
    sub_8CC0();

    __asm { BRAA            X1, X16 }
  }

  v74 = *(v12 + 30256);
  (*(*(v12 + 28536) + 32))(*(v12 + 28544), *(v12 + 28648), *(v12 + 28528));
  *(v12 + 27784) = sub_3A618(0);
  sub_10543C();
  v77 = sub_103600(v74, v75, v76);
  if (!v77)
  {
    v77 = sub_3A600(0);
  }

  v78 = v77;
  v79 = sub_3B35C(v77);
  if (v79)
  {
    v80 = v79;
    result = type metadata accessor for WellnessMedicationDialogObject(0);
    if (v80 < 1)
    {
      __break(1u);
      return result;
    }

    v82 = *(v12 + 28536);
    v83 = sub_16BC94(v78);
    v84 = 0;
    v85 = (v82 + 16);
    do
    {
      if (v83)
      {
        v86 = *(v78 + 8 * v84 + 32);
      }

      else
      {
        v86 = sub_16E48C();
      }

      v87 = v86;
      v88 = *(v12 + 28552);
      ++v84;
      (*v85)(v88, *(v12 + 28544), *(v12 + 28528));
      v89 = v87;
      sub_129020(v89, v88);
      sub_DB460();
    }

    while (v80 != v84);
  }

  v90 = *(v12 + 30256);
  v91 = *(v12 + 28528);
  v92 = *(v12 + 28000);
  v93 = *(v12 + 27992);
  v94 = *(v12 + 27984);

  v95 = sub_2D20((v94 + 144), *(v94 + 168));
  v96 = *(v12 + 27784);
  *(v12 + 30408) = v96;
  v97 = *v95;
  v98 = v93[11];

  v99 = v90;

  sub_8AB4();
  sub_214C(v100, v101, v102, v91);
  v103 = sub_106150(v93[12]);
  sub_214C(v103, v104, v105, v91);
  v106 = sub_106150(v93[15]);
  sub_214C(v106, v107, v108, v91);
  *v92 = 1;
  *(v92 + 8) = 0;
  *(v92 + 16) = 1;
  *(v92 + 17) = 65792;
  *(v92 + 24) = v96;
  sub_106798(v93[13]);
  sub_106798(v93[14]);
  sub_106798(v93[16]);
  sub_106798(v93[17]);

  v109 = sub_FFE84(v92, (v12 + 27784), v99, v94);
  sub_108170(v109, v110, v111, v112, v113, v114, v115, v116, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139);
  *(v12 + 30416) = v117;
  v118 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v119 = swift_task_alloc();
  *(v12 + 30424) = v119;
  *v119 = v12;
  v119[1] = sub_F7E38;
  sub_8CC0();

  return v123(v120, v121, v122, v123, v124, v125, v126, v127, a9, a10, a11, a12);
}

uint64_t sub_F7E38()
{
  sub_C9EC();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  v7 = *(v4 + 30424);
  *v6 = *v1;
  *(v5 + 30432) = v0;

  v8 = *(v4 + 30416);

  if (!v0)
  {
    *(v5 + 30440) = v3;
  }

  sub_8ACC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_F7F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  v13 = v12[3805];
  v14 = v12[3801];
  v15 = v12[3782];
  v193 = v12[3780];
  v195 = v12[3799];
  sub_106438();
  v212 = v16;
  v214 = v17;
  v210 = v12[3571];
  v18 = v12[3567];
  v199 = v12[3566];
  v201 = v12[3568];
  v19 = v12[3550];
  v20 = v12[3546];
  v205 = v12[3545];
  v207 = v12[3560];
  v203 = v12[3533];
  v197 = v12[3531];
  v21 = v12[3498];
  v22 = v12[3497];
  sub_106774(v12[3500]);

  sub_C9294(v21 + 64, (v12 + 2827));
  v23 = v12[2831];
  sub_2D20(v12 + 2827, v12[2830]);
  sub_C98B4();
  sub_16C2FC();
  sub_2D64(v12 + 2827);
  sub_16C4FC();

  sub_106900();

  (*(v18 + 8))(v201, v199);
  sub_8B60();
  sub_8748(v24, v25, v26);
  sub_8B60();
  sub_8748(v27, v28, v29);
  (*(v20 + 8))(v19, v205);
  sub_1054D0();
  sub_103BA0(v207, v30);
  sub_105424();
  sub_103BA0(v210, v31);
  sub_8748(v212, &qword_1C5800, &unk_16F510);
  sub_8748(v214, &qword_1C69C0, &unk_174290);

  sub_1053F0();
  v41 = v12[3675];
  v42 = v12[3674];
  v43 = v12[3673];
  v44 = v12[3672];
  v45 = v12[3671];
  v46 = v12[3670];
  v47 = v12[3669];
  v48 = v12[3668];
  v49 = v12[3667];
  v50 = v12[3666];
  v51 = v12[3665];
  v52 = v12[3664];
  v53 = v12[3663];
  v54 = v12[3662];
  v55 = v12[3661];
  v56 = v12[3660];
  v57 = v12[3659];
  v58 = v12[3658];
  v59 = v12[3657];
  v60 = v12[3656];
  v61 = v12[3655];
  v62 = v12[3654];
  v63 = v12[3653];
  v64 = v12[3652];
  v65 = v12[3651];
  v66 = v12[3650];
  v67 = v12[3649];
  v68 = v12[3648];
  v69 = v12[3647];
  v70 = v12[3646];
  v71 = v12[3645];
  v72 = v12[3644];
  v73 = v12[3643];
  v74 = v12[3642];
  v75 = v12[3641];
  v76 = v12[3640];
  v77 = v12[3639];
  v78 = v12[3638];
  v79 = v12[3637];
  v80 = v12[3636];
  v81 = v12[3635];
  v82 = v12[3634];
  v83 = v12[3633];
  v84 = v12[3632];
  v85 = v12[3631];
  v86 = v12[3630];
  v87 = v12[3629];
  v88 = v12[3628];
  v89 = v12[3627];
  v90 = v12[3626];
  v91 = v12[3625];
  v92 = v12[3624];
  v93 = v12[3623];
  v94 = v12[3622];
  v95 = v12[3621];
  v96 = v12[3620];
  v97 = v12[3619];
  v98 = v12[3618];
  v99 = v12[3617];
  v100 = v12[3616];
  v101 = v12[3615];
  v102 = v12[3614];
  v103 = v12[3613];
  v104 = v12[3612];
  v105 = v12[3611];
  v106 = v12[3610];
  v107 = v12[3607];
  v108 = v12[3606];
  v109 = v12[3605];
  v110 = v12[3604];
  v111 = v12[3603];
  v112 = v12[3602];
  v113 = v12[3601];
  v114 = v12[3600];
  v115 = v12[3599];
  v116 = v12[3598];
  v117 = v12[3597];
  v118 = v12[3596];
  v119 = v12[3595];
  v120 = v12[3594];
  v121 = v12[3593];
  v122 = v12[3592];
  v123 = v12[3591];
  v124 = v12[3590];
  v125 = v12[3589];
  v126 = v12[3588];
  v127 = v12[3587];
  v128 = v12[3586];
  v129 = v12[3585];
  v130 = v12[3584];
  v131 = v12[3583];
  v132 = v12[3582];
  v133 = v12[3581];
  v134 = v12[3580];
  v135 = v12[3579];
  v136 = v12[3578];
  v137 = v12[3577];
  v138 = v12[3576];
  v139 = v12[3575];
  v140 = v12[3574];
  v141 = v12[3573];
  v142 = v12[3572];
  v143 = v12[3571];
  v144 = v12[3569];
  v145 = v12[3568];
  v146 = v12[3565];
  v147 = v12[3564];
  v148 = v12[3562];
  v149 = v12[3561];
  v150 = v12[3560];
  v151 = v12[3558];
  v152 = v12[3557];
  v153 = v12[3556];
  v154 = v12[3555];
  v155 = v12[3554];
  v156 = v12[3553];
  v157 = v12[3552];
  v158 = v12[3551];
  v159 = v12[3550];
  v160 = v12[3549];
  v161 = v12[3548];
  v162 = v12[3547];
  v163 = v12[3544];
  v164 = v12[3543];
  v165 = v12[3542];
  v166 = v12[3541];
  v167 = v12[3540];
  v168 = v12[3539];
  v169 = v12[3538];
  v170 = v12[3537];
  v171 = v12[3536];
  v172 = v12[3535];
  v173 = v12[3534];
  v174 = v12[3533];
  v175 = v12[3532];
  v176 = v12[3531];
  v177 = v12[3530];
  v178 = v12[3529];
  v179 = v12[3528];
  v180 = v12[3527];
  v181 = v12[3526];
  v182 = v12[3525];
  v183 = v12[3524];
  v184 = v12[3523];
  v185 = v12[3522];
  v186 = v12[3521];
  v187 = v12[3520];
  v188 = v12[3519];
  v189 = v12[3517];
  v190 = v12[3516];
  v191 = v12[3515];
  v192 = v12[3514];
  v194 = v12[3513];
  v196 = v12[3512];
  v198 = v12[3509];
  v200 = v12[3508];
  v202 = v12[3507];
  v204 = v12[3506];
  v206 = v12[3505];
  v208 = v12[3504];
  v209 = v12[3503];
  v211 = v12[3502];
  v213 = v12[3501];
  v215 = v12[3500];

  sub_C9BC();
  sub_8CC0();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12);
}

void sub_F8B68()
{
  sub_3868C();
  sub_38664();
  v1 = v0[3804];
  v2 = v0[3801];
  v3 = v0[3782];
  v4 = v0[3690];
  v5 = v0[3689];
  v6 = v0[3688];
  v7 = v0[3626];
  v8 = v0[3608];
  v9 = v0[3498];
  sub_106774(v0[3500]);

  sub_105B70();
  v10 = sub_A77C4();
  v5(v10);
  v11 = sub_16DBDC();
  sub_16E37C();
  sub_106A70();
  v12 = sub_106344();
  v13 = v0[3626];
  v14 = v0[3609];
  v15 = v0[3608];
  if (v12)
  {
    v16 = sub_3A58C();
    v17 = sub_1054E8(v16);
    sub_106A88(v17, v18, v19, v20);

    sub_105B90(&def_259DC, v21, v22, "Couldn't create logspecificmedrejectedconfirmationresultset pattern, returning GenericErrorFlow");
    sub_3A5E0();
  }

  else
  {
  }

  v23 = *(v14 + 8);
  v24 = sub_38E50();
  v25(v24);
  v26 = v0[3799];
  v27 = v0[3782];
  v28 = v0[3780];
  v48 = v0[3607];
  v49 = v0[3801];
  v46 = v0[3571];
  v47 = v0[3602];
  v29 = v0[3567];
  v40 = v0[3566];
  v41 = v0[3568];
  v44 = v0[3550];
  v45 = v0[3560];
  v30 = v0[3546];
  v42 = v0[3533];
  v43 = v0[3545];
  v31 = v0[3531];
  v32 = v0[3497];
  sub_8284(v0[3498] + 64, (v0 + 2096));
  sub_6361C(v0 + 2096, v0 + 2076);
  sub_82E0();
  sub_16C4EC();

  sub_106900();
  sub_8334((v0 + 2076));
  (*(v29 + 8))(v41, v40);
  v33 = sub_38408();
  sub_8748(v33, v34, v35);
  sub_8748(v42, &qword_1C57F8, &unk_172510);
  (*(v30 + 8))(v44, v43);
  sub_1054D0();
  sub_103BA0(v45, v36);
  sub_105424();
  sub_103BA0(v46, v37);
  sub_8748(v47, &qword_1C5800, &unk_16F510);
  sub_8748(v48, &qword_1C69C0, &unk_174290);

  sub_104B50();
  sub_105454();

  sub_105A18();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_F9370()
{
  sub_76D68();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  v7 = v4[3807];
  *v6 = *v1;

  v8 = v4[3806];
  if (v0)
  {
    v9 = v5[3783];
    sub_106BCC();
    v10 = v5[3579];
    v11 = v5[3578];
    sub_10642C();

    v12 = sub_4B304();
    sub_8748(v12, v13, &unk_16F510);
    v14 = sub_8B9C();
  }

  else
  {
    v16 = v5[3579];
    v17 = v5[3578];

    v5[3808] = v3;
    sub_106844();
    sub_8748(v18, v19, v20);
    v14 = sub_C9C8();
  }

  sub_8748(v14, v15, &unk_16F510);
  sub_8ACC();

  return _swift_task_switch(v21, v22, v23);
}

uint64_t sub_F9564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  v131 = v38[3784];
  v132 = v38[3808];
  v130 = v38[3783];
  v109 = v38[3782];
  v112 = v38[3703];
  v114 = v38[3702];
  v116 = v38[3700];
  v118 = v38[3699];
  v120 = v38[3697];
  v122 = v38[3696];
  v107 = v38[3571];
  v111 = v38[3570];
  v39 = v38[3550];
  v124 = v38[3533];
  v40 = v38[3529];
  v110 = v40;
  v41 = v38[3520];
  v42 = v38[3518];
  v105 = v38[3513];
  v127 = v38[3511];
  v128 = v38[3510];
  v133 = v38[3503];
  v126 = v38[3501];
  v43 = v38[3498];
  v129 = v43;
  v44 = [v132 catId];
  sub_16E1BC();

  sub_16C76C();
  sub_16C7AC();
  v45 = *(v43 + 16);

  v106 = getMedStatus(from:)();

  sub_16BF4C();
  v46 = sub_103660(v109, &selRef_medSchedule);
  if (v47)
  {
    v48 = v46;
  }

  else
  {
    v48 = 0x7961646F74;
  }

  if (v47)
  {
    v49 = v47;
  }

  else
  {
    v49 = 0xE500000000000000;
  }

  v103 = v49;
  v104 = v48;
  sub_103660(v109, &selRef_dosageUnit);
  sub_86B0(v124, v40, &qword_1C57F8, &unk_172510);
  v125 = sub_14D35C();
  v50 = 0x646567676F4CLL;
  if (v120)
  {
    v50 = v122;
  }

  v123 = v50;
  if (v120)
  {
    v51 = v120;
  }

  else
  {
    v51 = 0xE600000000000000;
  }

  v52 = 0x64657070696B53;
  if (v116)
  {
    v52 = v118;
  }

  v119 = v52;
  v121 = v51;
  if (v116)
  {
    v53 = v116;
  }

  else
  {
    v53 = 0xE700000000000000;
  }

  v54 = 0x6E656B6154;
  if (v112)
  {
    v54 = v114;
  }

  v115 = v54;
  v117 = v53;
  if (v112)
  {
    v55 = v112;
  }

  else
  {
    v55 = 0xE500000000000000;
  }

  v113 = v55;
  sub_1055D0();
  sub_1039B4(v107, v133);
  sub_388E4();
  sub_214C(v56, v57, v58, v111);
  v108 = v42[8];
  v99 = sub_16C11C();
  sub_8AB4();
  sub_214C(v59, v60, v61, v62);
  v63 = v41 + v42[9];
  v64 = (v41 + v42[10]);
  v65 = (v41 + v42[11]);
  v66 = (v41 + v42[12]);
  v96 = (v41 + v42[13]);
  v100 = v42[15];
  v101 = v42[14];
  v98 = (v41 + v42[16]);
  v67 = (v41 + v42[17]);
  v97 = (v41 + v42[18]);
  v102 = v42[19];
  sub_8AB4();
  sub_214C(v68, v69, v70, v111);
  *v41 = v106 & 1;
  *(v41 + 8) = sub_BA66C();
  *(v41 + 16) = v71;
  *(v41 + 24) = 0;
  *(v41 + 32) = 0;
  *(v41 + 40) = v104;
  *(v41 + 48) = v103;
  *v63 = 0;
  *(v63 + 8) = 1;

  v72 = _s18WellnessFlowPlugin28SpecificMedCompletedLogModelV6dosageSdSgvpfi_0();
  *v64 = sub_147C94(v72, v73);
  v64[1] = v74;

  *v65 = 0;
  v65[1] = 0;
  *v66 = v104;
  v66[1] = v103;
  sub_147DA8(v110);
  sub_8748(v110, &qword_1C57F8, &unk_172510);
  (*(v127 + 8))(v105, v128);
  sub_388E4();
  sub_214C(v75, v76, v77, v99);
  sub_1E634(v126, v41 + v108, &qword_1C63F0, &unk_1717F0);
  *v96 = v131;
  v96[1] = v130;
  *(v41 + v101) = 0;
  *(v41 + v100) = v125 & 1;
  *v98 = v123;
  v98[1] = v121;
  *v67 = v119;
  v67[1] = v117;
  *v97 = v115;
  v97[1] = v113;
  sub_1E634(v133, v41 + v102, &dword_1C63F8, &qword_171800);
  sub_C9294(v129 + 296, (v38 + 3022));
  v78 = v38[3025];
  v79 = v38[3026];
  sub_2D20(v38 + 3022, v78);
  sub_107090();
  v38[3020] = type metadata accessor for WellnessSnippets();
  sub_1055B8();
  v38[3021] = sub_104478(v80, 255, v81);
  sub_9910(v38 + 3017);
  sub_105584();
  v82 = sub_1064C0();
  sub_1039B4(v82, v83);
  sub_10658C();
  sub_2440(&qword_1C5ED8, &unk_173090);
  v84 = sub_38DA0();
  v85 = sub_60CF0(v84, 1);
  *v86 = v132;
  v87 = HKActivityRingUIViewRepresentable.updateUIView(_:context:)(v85);
  v38[3809] = v87;
  v88 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)[1];
  v89 = v132;
  swift_task_alloc();
  sub_179E8();
  v38[3810] = v92;
  *v92 = v93;
  v92[1] = sub_F9AA0;
  v94 = v38[3550];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v38 + 3042, v38 + 3017, v87, v94, v78, v79, v90, v91, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_F9AA0()
{
  sub_386A8();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  sub_38800();
  v5 = *(v4 + 30480);
  v7 = *(v6 + 30472);
  v8 = *v0;
  sub_C990();
  *v9 = v8;

  sub_2D64((v2 + 24136));
  v10 = sub_17960();

  return _swift_task_switch(v10, v11, v12);
}

void sub_F9BA8()
{
  sub_3868C();
  sub_38664();
  v1 = v0[3808];
  v2 = v0[3782];
  v3 = v0[3780];
  sub_105C50();
  v24 = v0[3560];
  v25 = v0[3571];
  v4 = v0[3546];
  v22 = v0[3545];
  v23 = v0[3550];
  v20 = v0[3580];
  v21 = v0[3533];
  v5 = v0[3520];
  v6 = v0[3497];
  sub_106898(v7);
  sub_106F14();
  sub_387F4();
  v8 = swift_allocObject();
  sub_106C24(v8);
  sub_1068F4();
  v0[3485] = sub_16C1BC();
  sub_106E10();

  sub_106900();
  sub_2D64(v0 + 3042);
  sub_1055A0();
  sub_103BA0(v5, v9);
  sub_8B60();
  sub_8748(v10, v11, v12);
  sub_8748(v21, &qword_1C57F8, &unk_172510);
  (*(v4 + 8))(v23, v22);
  sub_1054D0();
  sub_103BA0(v24, v13);
  sub_105424();
  sub_103BA0(v25, v14);
  sub_8B60();
  sub_8748(v15, v16, v17);
  sub_8748(v26, &qword_1C69C0, &unk_174290);

  sub_104F9C();
  sub_10550C();

  sub_105C60();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

void sub_FA2D4()
{
  sub_3868C();
  sub_38664();
  sub_1059C0();
  v2 = v0[3623];
  sub_1058F8();
  v3 = sub_38408();
  v1(v3);
  v4 = sub_16DBDC();
  sub_16E36C();
  sub_106A70();
  sub_106344();
  v5 = v0[3779];
  v6 = v0[3623];
  sub_106568();
  if (v7)
  {
    v8 = sub_3A58C();
    v9 = sub_1054E8(v8);
    sub_106A88(v9, v10, v11, v12);

    sub_105B90(&def_259DC, v13, v14, "Couldn't create specificMedicationSuccess_Dialog, returning GenericErrorFlow");
    sub_3A5E0();
  }

  else
  {
  }

  v15 = sub_105A64();
  v5(v15);
  v16 = v0[3782];
  v17 = v0[3780];
  sub_105BD0();
  v18 = v0[3580];
  v27 = v0[3560];
  v28 = v0[3571];
  v26 = v0[3550];
  v19 = v0[3546];
  v20 = v0[3545];
  v21 = v0[3533];
  sub_107130();
  sub_6361C(v0 + 1696, v0 + 1676);
  sub_82E0();
  sub_16C4EC();

  sub_106900();
  sub_8334((v0 + 1676));
  sub_1071E8(v18);
  sub_8748(v21, &qword_1C57F8, &unk_172510);
  (*(v19 + 8))(v26, v20);
  sub_1054D0();
  sub_103BA0(v27, v22);
  sub_105424();
  sub_103BA0(v28, v23);
  sub_1071E8(v29);
  sub_8748(v30, &qword_1C69C0, &unk_174290);
  sub_104B50();
  sub_105454();

  sub_105A18();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_FAA3C()
{
  sub_107214();
  sub_C9EC();
  sub_38CAC();
  sub_C990();
  *v3 = v1;
  v4 = *(v1 + 30496);
  v5 = *v2;
  sub_38388();
  *v6 = v5;
  *(v1 + 30504) = v7;

  sub_8C88();
  v9 = *(v8 + 30488);
  if (v0)
  {
    sub_1062C8();
    sub_10642C();
  }

  else
  {
    v10 = *(v8 + 30488);
  }

  sub_105A74();
  sub_107200();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_FABAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  v40 = 23976;
  v41 = *(v38 + 28392);
  v42 = *(v38 + 27984);
  v43 = [*(v38 + 30504) catId];
  sub_16E1BC();
  sub_106508();

  sub_C9E0();
  sub_16C76C();
  sub_106C80();
  v44 = *(v38 + 24000);
  v45 = *(v38 + 24008);
  sub_3820C((v38 + 23976));
  v46 = sub_17970();
  v47(v46);
  v48 = *(v38 + 24040);
  v49 = *(v38 + 24048);
  sub_38138((v38 + 24016));
  if (sub_16C40C())
  {
    v50 = sub_105C94();
  }

  else
  {
    v39 = 24096;
    v42 = 24056;
    v53 = sub_106474();
    sub_C9294(v53, v38 + 24056);
    v54 = *(v38 + 24080);
    v55 = *(v38 + 24088);
    sub_3820C((v38 + 24056));
    v56 = sub_17970();
    v57(v56);
    v58 = *(v38 + 24120);
    v59 = *(v38 + 24128);
    sub_38138((v38 + 24096));
    sub_16C3FC();
    sub_106D88();
    v50 = sub_105A84((v38 + 24056));
    if (v60)
    {
      v52 = 0;
    }

    else
    {
      v52 = 4;
    }
  }

  v61 = *(v38 + 28224);
  sub_106680(v50, v51, v52);
  sub_106DF8();
  v62 = *(v38 + 24240);
  v63 = *(v38 + 24248);
  v64 = sub_1057EC();
  v65(v64);
  v66 = *(v38 + 24280);
  v67 = *(v38 + 24288);
  sub_38138((v38 + 24256));
  if (sub_16C40C())
  {
    sub_105C70();
  }

  else
  {
    v39 = 24296;
    v40 = 24376;
    v68 = sub_106474();
    sub_C9294(v68, v38 + 24296);
    v69 = *(v38 + 24320);
    v70 = *(v38 + 24328);
    sub_3820C((v38 + 24296));
    v71 = sub_17970();
    v72(v71);
    v73 = *(v38 + 24400);
    v74 = *(v38 + 24408);
    sub_38138((v38 + 24376));
    sub_16C3FC();
    sub_105820();
  }

  v75 = *(v38 + 17793);
  v76 = *(v38 + 28096);
  v77 = *(v38 + 27984);
  sub_16D69C();
  sub_1071B8();
  v234 = getMedStatus(from:)();

  sub_16BF4C();
  if (v75)
  {
    v78 = *(v38 + 30256);
    sub_10543C();
    v82 = sub_103600(v79, v80, v81);
    if (v82 && (sub_9AE60(v82), sub_1068E8(), , v77))
    {
      sub_16B9FC(v77);
      v230 = v83;
    }

    else
    {
      v230 = 0;
    }
  }

  else
  {
    sub_106F90();
  }

  sub_1067C4(*(v38 + 30504));
  v84 = *(v38 + 28224);
  v200 = v85;
  v206 = *(v38 + 28216);
  v86 = *(v38 + 28152);
  v87 = *(v38 + 28144);
  v88 = *(v38 + 28096);
  sub_106490();
  v89 = *(v38 + 28016);
  sub_106C58();
  v235 = v90;
  sub_86B0(v91, v92, &qword_1C57F8, &unk_172510);
  sub_14D35C();
  if (v75)
  {
    v93 = v42;
  }

  else
  {
    v93 = 0x646567676F4CLL;
  }

  v94 = 0xE600000000000000;
  if (v75)
  {
    v94 = v75;
  }

  v232 = v94;
  v233 = v93;
  v227 = v40;
  if (v39)
  {
    v95 = 24256;
  }

  else
  {
    v95 = 0x6E656B6154;
  }

  v96 = 0xE500000000000000;
  if (v39)
  {
    v96 = v39;
  }

  v221 = v96;
  v223 = v95;
  sub_1055D0();
  sub_1039B4(v200, v89);
  sub_388E4();
  v97 = v176;
  sub_214C(v98, v99, v100, v176);
  v188 = sub_106EC0();
  sub_8AB4();
  sub_214C(v101, v102, v103, v104);
  v105 = v86 + v87[9];
  v106 = (v86 + v87[10]);
  v107 = v86 + v87[11];
  v201 = v87[19];
  v108 = sub_106150(v201);
  sub_214C(v108, v109, v110, v176);
  sub_1069CC(v234);
  v111 = sub_BA66C();
  sub_106A20(v111, v112, v113, v114, v115, v116, v117, v118, v176, v182, v188, v194, v201, v206, v211, v89, v218, v221, v223, v225, v227, 24216, v230);
  v119 = _s18WellnessFlowPlugin28SpecificMedCompletedLogModelV6dosageSdSgvpfi_0();
  *v106 = sub_147C94(v119, v120);
  v106[1] = v121;
  sub_1065B4(v97, v177, v183, v189, v195, v202, v207);
  v122 = sub_8748(v107, &qword_1C57F8, &unk_172510);
  v130 = sub_10701C(v122, v123, v124, v125, v126, v127, v128, v129, v178, v184, v190, v196, v203, v208, v212, v215, v219);
  v131(v130);
  sub_388E4();
  v135 = sub_214C(v132, v133, v134, v191);
  v141 = sub_106EA4(v135, v136, &qword_1C63F0, &unk_1717F0, v137, v138, v139, v140, v179, v185, v191, v197);
  sub_1064CC(v141, v142, v143, v144, v145, v146, v147, v148, v180, v186, v192, v198, v204, v209, v213, v216, v220, v222, v224, v226, v228, v229, v231, v232, v233);
  sub_106E88(v149, v150, &dword_1C63F8, &qword_171800, v151, v152, v153, v154, v181, v187, v193, v199, v205, v210, v214, v217);
  sub_C9294(v235 + 296, v38 + 24536);
  v155 = *(v38 + 24560);
  v156 = *(v38 + 24568);
  *(v38 + 24640) = sub_106160();
  sub_1055B8();
  *(v38 + 24648) = sub_104478(v157, 255, v158);
  sub_9910((v38 + 24616));
  sub_105584();
  sub_106D70();
  sub_10658C();
  sub_2440(&qword_1C5ED8, &unk_173090);
  v159 = sub_38DA0();
  v160 = sub_60CF0(v159, 1);
  *v161 = v236;
  *(v38 + 30512) = HKActivityRingUIViewRepresentable.updateUIView(_:context:)(v160);
  v162 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)[1];
  v163 = v236;
  swift_task_alloc();
  sub_179E8();
  *(v38 + 30520) = v164;
  *v164 = v165;
  v164[1] = sub_FB0F0;
  v166 = *(v38 + 28392);
  v167 = sub_1057CC();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v167, v168, v169, v170, v171, v172, v173, v174, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_FB0F0()
{
  sub_386A8();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  sub_38800();
  v5 = *(v4 + 30520);
  v7 = *(v6 + 30512);
  v8 = *v0;
  sub_C990();
  *v9 = v8;

  sub_2D64((v2 + 24616));
  v10 = sub_17960();

  return _swift_task_switch(v10, v11, v12);
}

void sub_FB1F8()
{
  sub_3868C();
  sub_38664();
  v1 = v0[3813];
  v2 = v0[3782];
  v3 = v0[3780];
  sub_105C50();
  v4 = v0[3571];
  v5 = v0[3549];
  sub_1067EC();
  v16 = v0[3528];
  v6 = v0[3519];
  v7 = v0[3497];
  sub_106898(v8);
  sub_106968();
  sub_387F4();
  v9 = swift_allocObject();
  sub_106850(v9);
  sub_1068F4();
  v0[3470] = sub_16C1BC();
  sub_106918();

  sub_106900();
  sub_2D64(v0 + 3052);
  sub_1055A0();
  sub_103BA0(v6, v10);
  sub_8748(v16, &qword_1C57F8, &unk_172510);
  v11 = sub_107058();
  v12(v11);
  sub_105424();
  sub_103BA0(v17, v13);
  sub_8748(v18, &qword_1C5800, &unk_16F510);
  sub_8748(v19, &qword_1C69C0, &unk_174290);

  sub_104F9C();
  sub_10550C();

  sub_105C60();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

void sub_FB8F0()
{
  sub_3868C();
  sub_38664();
  sub_1059C0();
  v5 = v0[3619];
  sub_1058F8();
  v6 = sub_38408();
  v2(v6);
  v7 = sub_16DBDC();
  sub_16E36C();
  sub_106A08();
  if (sub_10623C())
  {
    sub_3A58C();
    sub_1070D8();
    sub_105A28(v8);
    sub_106FFC();
    if (v3)
    {
      while (1)
      {
        v37 = *(v1 + v4);
        v9 = sub_105734();
        sub_3A5A4(v9, v10, v11, v12);
        sub_1065A8();
      }
    }

    v13 = v0[3779];
    v14 = v0[3619];
    sub_106404();
    sub_105BB0(&def_259DC, v15, v16, "Couldn't create specificMedicationAllMedsLoggedAlready_Dialog, returning GenericErrorFlow");
    sub_3A5E0();

    v17 = sub_105B00();
    v13(v17);
  }

  else
  {
    v18 = v0[3779];
    v19 = v0[3619];
    sub_106258();

    v20 = sub_1058E8();
    v18(v20);
  }

  v21 = v0[3782];
  v22 = v0[3780];
  sub_106438();
  v35 = v23;
  v36 = v24;
  v25 = v0[3571];
  v26 = v0[3549];
  v27 = v0[3546];
  v28 = sub_10591C();
  sub_8284(v28, (v0 + 1156));
  sub_6361C(v0 + 1156, v0 + 1136);
  sub_82E0();
  sub_16C4EC();

  sub_106900();
  sub_8334((v0 + 1136));
  v29 = *(v27 + 8);
  v30 = sub_387CC();
  v31(v30);
  sub_105424();
  sub_103BA0(v25, v32);
  sub_8748(v35, &qword_1C5800, &unk_16F510);
  sub_8748(v36, &qword_1C69C0, &unk_174290);
  sub_104F9C();
  sub_1056B8();

  sub_105BE0();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_FC054()
{
  sub_C9EC();
  sub_38CAC();
  sub_38388();
  *v4 = v3;
  v5 = v1[3817];
  v6 = *v2;
  sub_38440();
  *v7 = v6;
  *(v9 + 30544) = v8;
  *(v9 + 30552) = v0;

  sub_8C88();
  v11 = *(v10 + 30528);
  v12 = v1[3577];
  v13 = v1[3576];
  if (v0)
  {
  }

  v14 = sub_4B304();
  sub_8748(v14, v15, &unk_16F510);
  v16 = sub_8B9C();
  sub_8748(v16, v17, &unk_16F510);
  sub_8ACC();

  return _swift_task_switch(v18, v19, v20);
}

uint64_t sub_FC208()
{
  sub_38AB4();
  sub_38664();
  v1 = v0[3818];
  v2 = v0[3548];
  v3 = v0[3544];
  v4 = v0[3498];
  sub_16C45C();
  sub_37FFC();
  v5 = sub_10631C();
  sub_B9BF4(v5, v6, v7);
  sub_16C7AC();
  v8 = [v1 catId];
  sub_16E1BC();
  sub_106508();

  sub_C9E0();
  sub_16C76C();
  sub_C9294(v4 + 24, (v0 + 2912));
  sub_8284(v4 + 64, (v0 + 956));
  sub_C9294(v4 + 296, (v0 + 2917));
  v0[3820] = *(v4 + 336);
  v0[3821] = *(v4 + 344);

  swift_task_alloc();
  sub_179E8();
  v0[3822] = v9;
  *v9 = v10;
  v9[1] = sub_FC374;
  v11 = v0[3818];
  v12 = v0[3548];
  sub_385E4();
  sub_8CC0();

  return sub_9AEDC();
}

uint64_t sub_FC374()
{
  sub_107214();
  sub_C9EC();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  sub_38800();
  v5 = *(v4 + 30576);
  v7 = *(v6 + 30568);
  v8 = *(v6 + 30560);
  v9 = *v0;
  sub_C990();
  *v10 = v9;

  sub_2D64((v2 + 23336));
  sub_C938(v2 + 7648);
  sub_2D64((v2 + 23296));
  sub_17960();
  sub_107200();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_FC4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  if (v13[3230])
  {
    v15 = v13[3818];
    v16 = v13[3782];
    v17 = v13[3780];
    v62 = v13[3602];
    v64 = v13[3607];
    v59 = v13[3548];
    v60 = v13[3571];
    v18 = sub_10628C(25816);
    sub_106FB8(v18);
    sub_106AD4();
    sub_387F4();
    v19 = swift_allocObject();
    sub_106810(v19);
    v13[3482] = sub_1066F0();
    sub_1069D8(27856);
    sub_16C4EC();

    sub_106900();
    sub_2D64(v13 + 2887);
    (*(v12 + 8))(v59, v14);
    sub_105424();
    sub_103BA0(v60, v20);
    sub_8748(v62, &qword_1C5800, &unk_16F510);
    sub_8748(v64, &qword_1C69C0, &unk_174290);
  }

  else
  {
    sub_105A08();
    v21 = v13[3617];
    v22 = v13[3608];
    sub_8748(v13 + v23, &qword_1C5ED0, &qword_171090);
    sub_1B9B4();
    v24 = sub_38408();
    v14(v24);
    v25 = sub_16DBDC();
    sub_16E36C();
    sub_106A08();
    if (sub_10623C())
    {
      v26 = sub_3A58C();
      sub_106114(v26);
      v27 = loc_68B8;
      v28 = v13[3819];
      for (i = 32; v27; --v27)
      {
        sub_106DA0(*(i + 26792));
        i += 16;
      }

      v30 = v13[3779];
      v31 = v13[3617];
      sub_106404();
      sub_105BB0(&def_259DC, v32, v33, "Couldn't create output, returning GenericErrorFlow");
      sub_3A5E0();

      v34 = sub_105B00();
      v30(v34);
    }

    else
    {
      v35 = v13[3779];
      v36 = v13[3617];
      sub_106258();

      v37 = sub_1058E8();
      v35(v37);
    }

    v38 = v13[3818];
    v39 = v13[3782];
    v40 = v13[3780];
    sub_106438();
    v63 = v41;
    v65 = v42;
    v61 = v13[3571];
    v43 = v13[3548];
    v44 = v13[3546];
    v45 = sub_10591C();
    sub_8284(v45, (v13 + 1036));
    sub_6361C(v13 + 1036, v13 + 1016);
    sub_82E0();
    sub_16C4EC();

    sub_106900();
    sub_8334((v13 + 1016));
    v46 = *(v44 + 8);
    v47 = sub_387CC();
    v48(v47);
    sub_105424();
    sub_103BA0(v61, v49);
    sub_8748(v63, &qword_1C5800, &unk_16F510);
    sub_8748(v65, &qword_1C69C0, &unk_174290);
  }

  sub_104F9C();
  sub_105A50();
  sub_10636C();

  sub_C9BC();
  sub_8CC0();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12);
}

void sub_FCD5C()
{
  sub_3868C();
  sub_38664();
  sub_1059C0();
  v6 = v1[3616];
  sub_1058F8();
  v7 = sub_38408();
  v3(v7);
  v8 = sub_16DBDC();
  sub_16E36C();
  sub_106A08();
  if (sub_10623C())
  {
    sub_3A58C();
    sub_1070D8();
    sub_105A28(v9);
    sub_106FFC();
    if (v4)
    {
      while (1)
      {
        v26 = *(v2 + v5);
        v10 = sub_105734();
        sub_3A5A4(v10, v11, v12, v13);
        sub_1065A8();
      }
    }

    v14 = v1[3779];
    v0 = v1[3616];
    sub_106404();
    sub_105BB0(&def_259DC, v15, v16, "Couldn't create specificMedicationLogFailed_Dialog, returning GenericErrorFlow");
    sub_3A5E0();

    v17 = sub_105B00();
    v14(v17);
  }

  else
  {
    v18 = v1[3779];
    v6 = v1[3616];
    sub_106258();

    v19 = sub_1058E8();
    v18(v19);
  }

  v20 = v1[3782];
  v21 = v1[3780];
  v22 = sub_105674();
  sub_8284(v22, (v1 + 876));
  sub_6361C(v1 + 876, v1 + 856);
  sub_82E0();
  sub_16C4EC();

  sub_376FC((v1 + 2513));
  sub_8334((v1 + 856));
  sub_105424();
  sub_103BA0(v0, v23);
  sub_8748(v6, &qword_1C5800, &unk_16F510);
  sub_8748(v8, &qword_1C69C0, &unk_174290);
  sub_104F9C();
  sub_1056B8();

  sub_105BE0();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_FD4A0()
{
  sub_386A8();
  sub_38CAC();
  sub_38388();
  *v4 = v3;
  v5 = *(v1 + 30600);
  v6 = *v2;
  sub_38440();
  *v7 = v6;
  *(v9 + 30608) = v8;
  *(v9 + 30616) = v0;

  sub_8C88();
  v11 = *(v10 + 30592);
  v12 = *(v1 + 28600);
  if (v0)
  {

    sub_8748(v12, &qword_1C5800, &unk_16F510);
  }

  else
  {
    sub_8748(v12, &qword_1C5800, &unk_16F510);
  }

  sub_105A74();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_FD614()
{
  sub_38AB4();
  sub_38664();
  v2 = v0[3826];
  v3 = v0[3547];
  sub_106464();
  sub_16C45C();
  sub_37FFC();
  v4 = sub_10631C();
  sub_B9BF4(v4, v5, v6);
  sub_16C7AC();
  v7 = [v2 catId];
  sub_16E1BC();
  sub_106508();

  sub_C9E0();
  sub_16C76C();
  sub_C9294(v1 + 24, (v0 + 2757));
  sub_8284(v1 + 64, (v0 + 396));
  sub_C9294(v1 + 296, (v0 + 2802));
  v0[3828] = *(v1 + 336);
  v0[3829] = *(v1 + 344);

  swift_task_alloc();
  sub_179E8();
  v0[3830] = v8;
  *v8 = v9;
  v8[1] = sub_FD774;
  v10 = v0[3826];
  v11 = v0[3547];
  sub_385E4();
  sub_8CC0();

  return sub_9AEDC();
}

uint64_t sub_FD774()
{
  sub_C9EC();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  sub_38800();
  v5 = *(v4 + 30640);
  v7 = *(v6 + 30632);
  v8 = *(v6 + 30624);
  v9 = *v0;
  sub_C990();
  *v10 = v9;

  sub_2D64((v2 + 22416));
  sub_C938(v2 + 3168);
  sub_2D64((v2 + 22056));
  v11 = sub_17960();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_FD8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  if (*(v13 + 21840))
  {
    v15 = *(v13 + 30608);
    v55 = *(v13 + 28816);
    v56 = *(v13 + 28856);
    v54 = *(v13 + 28568);
    v16 = *(v13 + 28376);
    v17 = sub_10628C(21816);
    sub_17464(v17, v13 + 21776);
    sub_16C1DC();
    sub_C9294(v13 + 21776, v13 + 22496);
    sub_387F4();
    v18 = swift_allocObject();
    sub_17464((v13 + 22496), v18 + 16);
    sub_78B14();
    *(v13 + 27776) = sub_16C1BC();
    sub_1069D8(27776);
    sub_16C4EC();

    sub_106900();
    sub_2D64((v13 + 21776));
    v19 = *(v12 + 8);
    v20 = sub_4B4EC();
    v21(v20);
    sub_105424();
    sub_103BA0(v54, v22);
    sub_8748(v55, &qword_1C5800, &unk_16F510);
    sub_8748(v56, &qword_1C69C0, &unk_174290);
  }

  else
  {
    sub_105A08();
    v23 = *(v13 + 28888);
    v24 = *(v13 + 28864);
    sub_8748(v13 + v25, &qword_1C5ED0, &qword_171090);
    sub_1B9B4();
    v26 = sub_38408();
    v14(v26);
    v27 = sub_16DBDC();
    sub_16E36C();
    sub_106A08();
    if (sub_10623C())
    {
      v28 = sub_3A58C();
      sub_106114(v28);
      v29 = *(v13 + 30616);
      if (*(&dword_10 + &loc_6BC0))
      {
        while (1)
        {
          sub_106DA0(*(&stru_20.cmd + &loc_6BC0));
          sub_1065A8();
        }
      }

      v30 = *(v13 + 30584);
      v24 = *(v13 + 28888);
      sub_106404();
      sub_105BB0(&def_259DC, v31, v32, "Couldn't create output, returning GenericErrorFlow");
      sub_3A5E0();

      v33 = sub_105B00();
      v30(v33);
    }

    else
    {
      v34 = *(v13 + 30584);
      v23 = *(v13 + 28888);
      sub_106258();

      v35 = sub_1058E8();
      v34(v35);
    }

    v36 = *(v13 + 30608);
    v37 = *(v13 + 28856);
    sub_106360();
    v38 = *(v13 + 28376);
    v39 = *(v13 + 28368);
    v40 = sub_10591C();
    sub_8284(v40, v13 + 3808);
    sub_6361C((v13 + 3808), (v13 + 3648));
    sub_82E0();
    sub_16C4EC();

    sub_376FC(v13 + 20104);
    sub_8334(v13 + 3648);
    v41 = *(v39 + 8);
    v42 = sub_387CC();
    v43(v42);
    sub_105424();
    sub_103BA0(v24, v44);
    sub_8748(v23, &qword_1C5800, &unk_16F510);
    sub_8748(v37, &qword_1C69C0, &unk_174290);
  }

  sub_104F9C();
  sub_105A50();
  sub_10636C();

  sub_C9BC();
  sub_8CC0();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12);
}

void sub_FE164()
{
  sub_3868C();
  sub_38664();
  sub_1059C0();
  v6 = v1[3610];
  sub_1058F8();
  v7 = sub_38408();
  v3(v7);
  v8 = sub_16DBDC();
  sub_16E36C();
  sub_106A08();
  if (sub_10623C())
  {
    sub_3A58C();
    sub_1070D8();
    sub_105A28(v9);
    sub_106FFC();
    if (v4)
    {
      while (1)
      {
        v24 = *(v2 + v5);
        v10 = sub_105734();
        sub_3A5A4(v10, v11, v12, v13);
        sub_1065A8();
      }
    }

    v14 = v1[3823];
    v0 = v1[3610];
    sub_106404();
    sub_105BB0(&def_259DC, v15, v16, "Couldn't create logMedConfirmationRejected_Dialog, returning GenericErrorFlow");
    sub_3A5E0();

    v17 = sub_105B00();
    v14(v17);
  }

  else
  {
    v18 = v1[3823];
    v6 = v1[3610];
    sub_106258();

    v19 = sub_1058E8();
    v18(v19);
  }

  v20 = sub_105674();
  sub_8284(v20, (v1 + 316));
  sub_6361C(v1 + 316, v1 + 296);
  sub_82E0();
  sub_16C4EC();
  sub_376FC((v1 + 2513));
  sub_8334((v1 + 296));
  sub_105424();
  sub_103BA0(v0, v21);
  sub_8748(v6, &qword_1C5800, &unk_16F510);
  sub_8748(v8, &qword_1C69C0, &unk_174290);
  sub_104F9C();
  sub_1056B8();

  sub_105BE0();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

void sub_FE890()
{
  sub_3868C();
  sub_38664();
  sub_1059C0();
  v4 = v0[3624];
  sub_1058F8();
  v5 = sub_38408();
  v1(v5);
  v6 = sub_16DBDC();
  sub_16E37C();
  sub_106A70();
  sub_106344();
  v7 = v0[3779];
  v8 = v0[3624];
  sub_106568();
  if (v9)
  {
    v10 = sub_3A58C();
    v11 = sub_1054E8(v10);
    sub_106A88(v11, v12, v13, v14);

    sub_105B90(&def_259DC, v15, v16, "Couldn't create logMedConfirmationRejected_Dialog, returning GenericErrorFlow");
    sub_3A5E0();
  }

  else
  {
  }

  v17 = sub_105A64();
  v7(v17);
  v18 = v0[3782];
  v19 = v0[3780];
  sub_105B10();
  v20 = v0[3550];
  v21 = sub_105980();
  sub_8284(v21, (v0 + 1876));
  sub_6361C(v0 + 1876, v0 + 1856);
  sub_82E0();
  sub_16C4EC();

  sub_106900();
  sub_8334((v0 + 1856));
  sub_8748(v2, &qword_1C57F8, &unk_172510);
  v22 = *(v3 + 8);
  v23 = sub_4B4EC();
  v24(v23);
  sub_1054D0();
  sub_103BA0(v29, v25);
  sub_105424();
  sub_103BA0(v30, v26);
  sub_8748(v31, &qword_1C5800, &unk_16F510);
  sub_8748(v32, &qword_1C69C0, &unk_174290);
  sub_104B50();
  sub_105454();

  sub_105A18();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

id sub_FEFD4(double a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithDouble:a1];
}

uint64_t sub_FF05C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_2440(&qword_1C5800, &unk_16F510);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v41 - v9;
  *a2 = getMedStatus(from:)() & 1;
  v11 = [a1 medCount];
  v12 = v11;
  if (v11)
  {
    [v11 doubleValue];
    v14 = v13;

    v15 = v14 == 1.0;
  }

  else
  {
    v15 = 0;
    v14 = 0.0;
  }

  a2[1] = v15;
  getLocalizedMedName(from:)();
  if (v16)
  {
    sub_16E23C();

    v17 = sub_16D5CC();
    v18 = 0;
  }

  else
  {
    v17 = sub_16D5CC();
    v18 = 1;
  }

  v19 = v12 == 0;
  sub_214C(v10, v18, 1, v17);
  v20 = type metadata accessor for SpecificMedLoggingFlow.SpecifiedMedicationSuccessParameters();
  sub_86FC(v10, &a2[v20[6]], &qword_1C5800, &unk_16F510);
  v21 = &a2[v20[7]];
  *v21 = v14;
  *(v21 + 8) = v19;
  a2[v20[8]] = hasDosageEdit(from:)() & 1;
  v22 = [a1 dosage];
  v23 = v22;
  if (v22)
  {
    [v22 doubleValue];
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v26 = &a2[v20[9]];
  *v26 = v25;
  v26[8] = v23 == 0;
  sub_103660(a1, &selRef_dosageUnit);
  if (v27)
  {
    sub_16E23C();

    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = sub_16D5CC();
  v30 = 1;
  sub_214C(v8, v28, 1, v29);
  sub_86FC(v8, &a2[v20[10]], &qword_1C5800, &unk_16F510);
  v31 = sub_103600(a1, &selRef_matchingMeds, &type metadata accessor for MatchedMedName);
  if (v31)
  {
    v32 = v31;
    v33 = sub_3B35C(v31);
    v30 = v33 == 0;
    if (v33 && ((sub_3B360(0, (v32 & 0xC000000000000001) == 0, v32), (v32 & 0xC000000000000001) != 0) ? (v34 = sub_16E48C()) : (v34 = *(v32 + 32)), v35 = v34, , sub_103424(v35), !v36))
    {
      v30 = 1;
    }

    else
    {
    }
  }

  a2[v20[11]] = v30;
  v37 = [a1 matchingMeds];
  if (v37)
  {
    v38 = v37;
    sub_16D86C();
    v39 = sub_16E2CC();
  }

  else
  {

    v39 = 0;
  }

  *&a2[v20[12]] = v39;
  return result;
}

BOOL sub_FF3F0(uint64_t a1)
{
  v1 = *(a1 + 16);

  v2 = getUSOMedNames(from:)();

  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 16);

  return v3 != 0;
}

uint64_t sub_FF448@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = sub_103660(*a1, &selRef_scheduleID);
  v8 = v7;
  v9 = sub_103660(v5, &selRef_medicationID);
  v11 = v10;
  v12 = [v5 strength];
  if (v12)
  {
    v13 = v12;
    [v12 doubleValue];
    v15 = v14;
  }

  else
  {
    v15 = -1.0;
  }

  v16 = sub_103660(v5, &selRef_strengthUnit);
  v38 = 0;
  v18 = 0x64656863536C696ELL;
  if (v8)
  {
    v18 = v6;
  }

  v19 = 0xEB00000000656C75;
  if (v8)
  {
    v19 = v8;
  }

  v39[0] = v18;
  v39[1] = v19;
  v20 = 0x636964654D6C696ELL;
  if (v11)
  {
    v20 = v9;
  }

  v21 = 0xEF44496E6F697461;
  if (v11)
  {
    v21 = v11;
  }

  v39[2] = v20;
  v39[3] = v21;
  *&v39[4] = v15;
  v40 = 0;
  v22 = 0x6E657274536C696ELL;
  if (v17)
  {
    v22 = v16;
  }

  v23 = 0xEF74696E55687467;
  if (v17)
  {
    v23 = v17;
  }

  v41 = v22;
  v42 = v23;
  v34[0] = v18;
  v34[1] = v19;
  v34[2] = v20;
  v34[3] = v21;
  *&v34[4] = v15;
  v35 = 0;
  v36 = v22;
  v37 = v23;
  sub_ACAC8(v39, v31);
  sub_ACB24(v34);
  sub_C9294(a2 + 24, v31);
  v24 = v32;
  v25 = v33;
  sub_2D20(v31, v32);
  (*(v25 + 8))(v30, v24, v25);
  v26 = sub_7BBDC(v30);
  v28 = v27;
  sub_ACB24(v39);
  sub_2D64(v30);
  sub_2D64(v31);
  if (!v28)
  {
    v26 = 0;
    v28 = 0xE000000000000000;
  }

  type metadata accessor for WellnessMedicationDialogObject(0);
  result = sub_129638(v5, v26, v28);
  *a3 = result;
  return result;
}

uint64_t sub_FF684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_16E72C();
  if (a2)
  {
    sub_16E74C(1u);
    sub_16E25C();
  }

  else
  {
    sub_16E74C(0);
  }

  v8 = sub_16E75C();
  v9 = a3 + 56;
  v10 = -1 << *(a3 + 32);
  v11 = v8 & ~v10;
  if (((*(a3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  v13 = *(a3 + 48);
  while (1)
  {
    v14 = (v13 + 16 * v11);
    v15 = v14[1];
    if (v15)
    {
      break;
    }

    if (!a2)
    {
      return 1;
    }

LABEL_17:
    v11 = (v11 + 1) & v12;
    if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  if (!a2)
  {
    goto LABEL_17;
  }

  v16 = *v14 == a1 && v15 == a2;
  if (!v16 && (sub_16E6BC() & 1) == 0)
  {
    goto LABEL_17;
  }

  return 1;
}

uint64_t sub_FF7AC()
{
  v0 = sub_2440(&qword_1C9D48, &qword_176840);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  type metadata accessor for MedNameDisambiguationStrategy();
  sub_104478(&qword_1C9D58, 255, type metadata accessor for MedNameDisambiguationStrategy);
  return sub_16C27C();
}

uint64_t sub_FF868()
{
  v0 = sub_2440(&qword_1C9D38, &qword_176838);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  type metadata accessor for MedScheduleDisambiguationStrategy();
  sub_104478(&qword_1C9D68, 255, type metadata accessor for MedScheduleDisambiguationStrategy);
  return sub_16C27C();
}

uint64_t sub_FFA7C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_107090();
  v4 = sub_16D63C();
  v5 = sub_4348(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_3E204();
  v2(0);
  sub_38F2C();
  v8 = sub_38E5C();
  return a2(v8);
}

uint64_t sub_FFB78(__int128 *a1)
{
  v2 = *a1;
  sub_2440(&qword_1C69C8, &qword_174150);
  return sub_16E3DC();
}

uint64_t sub_FFBC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);

  return v1;
}

uint64_t sub_FFBF0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_2440(&qword_1C57A0, &qword_16F3C0);
  return sub_16E3DC();
}

uint64_t sub_FFC40(uint64_t a1)
{
  v2 = *(a1 + 48);
  sub_2440(&qword_1C69C8, &qword_174150);
  return sub_16E3DC();
}

uint64_t sub_FFDF0(void *a1)
{
  v1 = sub_103600(a1, &selRef_matchingMeds, &type metadata accessor for MatchedMedName);
  if (v1)
  {
    sub_3B35C(v1);
  }

  sub_2440(&qword_1C6778, &qword_171C30);
  return sub_16E3DC();
}

uint64_t sub_FFE84(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v47 = a4;
  v7 = sub_2440(&qword_1C57E0, &unk_171C60);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v46 - v9;
  v11 = sub_2440(&qword_1C5800, &unk_16F510);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v46 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v46 - v20;
  __chkstk_darwin(v19);
  v23 = &v46 - v22;
  v24 = sub_3B35C(*a2);
  v25 = type metadata accessor for WellnessLoggingLogSpecificMedRejectedConfirmationResultSetParameters(0);
  v26 = a1 + v25[14];
  *v26 = v24;
  *(v26 + 8) = 0;
  v27 = sub_103600(a3, &selRef_matchingMeds, &type metadata accessor for MatchedMedName);
  if (v27)
  {
    v28 = v27;
    if (sub_3B35C(v27))
    {
      sub_3B360(0, (v28 & 0xC000000000000001) == 0, v28);
      if ((v28 & 0xC000000000000001) != 0)
      {
        v29 = sub_16E48C();
      }

      else
      {
        v29 = *(v28 + 32);
      }

      v30 = v29;

      sub_16B9FC(v30);
      if (v31)
      {
        sub_16E23C();

        v32 = sub_16D5CC();
        v33 = 0;
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v32 = sub_16D5CC();
  v33 = 1;
LABEL_9:
  sub_214C(v23, v33, 1, v32);
  sub_1E634(v23, a1 + v25[12], &qword_1C5800, &unk_16F510);
  v34 = *(v47 + 16);

  getMedStatus(from:)();

  sub_16E23C();
  v35 = sub_16D5CC();
  sub_214C(v21, 0, 1, v35);
  sub_1E634(v21, a1 + v25[15], &qword_1C5800, &unk_16F510);
  v36 = sub_103600(a3, &selRef_matchingMeds, &type metadata accessor for MatchedMedName);
  if (v36)
  {
    v37 = v36;
    if (sub_3B35C(v36))
    {
      sub_3B360(0, (v37 & 0xC000000000000001) == 0, v37);
      if ((v37 & 0xC000000000000001) != 0)
      {
        v38 = sub_16E48C();
      }

      else
      {
        v38 = *(v37 + 32);
      }

      v39 = v38;

      sub_146C80(v39);
      if (v40)
      {
        sub_16E23C();

        sub_214C(v15, 0, 1, v35);
        (*(*(v35 - 8) + 32))(v18, v15, v35);
        sub_214C(v18, 0, 1, v35);
        return sub_1E634(v18, a1 + v25[11], &qword_1C5800, &unk_16F510);
      }
    }

    else
    {
    }
  }

  v41 = 1;
  sub_214C(v15, 1, 1, v35);
  sub_16BF4C();
  v42 = sub_16BF5C();
  sub_214C(v10, 0, 1, v42);
  sub_9BFAC(v10);
  v44 = v43;
  sub_8748(v10, &qword_1C57E0, &unk_171C60);
  if (v44)
  {
    sub_16E23C();

    v41 = 0;
  }

  sub_214C(v18, v41, 1, v35);
  if (sub_369C(v15, 1, v35) != 1)
  {
    sub_8748(v15, &qword_1C5800, &unk_16F510);
  }

  return sub_1E634(v18, a1 + v25[11], &qword_1C5800, &unk_16F510);
}

uint64_t sub_1003A4(uint64_t a1)
{
  v2 = v1;
  v103 = sub_16DBEC();
  v4 = sub_42F0(v103);
  v102 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_887C();
  v10 = v8 - v9;
  v12 = __chkstk_darwin(v11);
  v14 = (&v95 - v13);
  __chkstk_darwin(v12);
  v100 = &v95 - v15;
  v16 = sub_2440(&qword_1C9D00, &unk_176720);
  v17 = sub_42F0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17);
  sub_887C();
  v24 = v22 - v23;
  __chkstk_darwin(v25);
  v27 = &v95 - v26;
  v28 = v19[2];
  v29 = sub_D4D84();
  v28(v29);
  v30 = v19[11];
  v31 = sub_106F6C();
  if (v32(v31) == enum case for PromptResult.answered<A>(_:))
  {
    v98 = v14;
    v33 = v102;
    v34 = v103;
    v35 = v19[12];
    v36 = sub_106F6C();
    v37(v36);
    v38 = *v27;
    v39 = *(v27 + 1);
    v40 = *(v27 + 3);
    v99 = *(v27 + 2);
    v41 = *(v27 + 4);
    v113 = v27[40];
    v42 = v113;
    v111[0] = *(v27 + 41);
    *(v111 + 3) = *(v27 + 11);
    v43 = *(v27 + 6);
    v44 = *(v27 + 7);
    v112 = v113;
    if (v39)
    {
      v45 = v38 == 0x64656863536C696ELL && v39 == 0xEB00000000656C75;
      v46 = v33;
      if (v45 || (v101 = v38, (sub_16E6BC() & 1) != 0))
      {

        v101 = 0;
        v39 = 0;
      }
    }

    else
    {
      v101 = v38;
      v46 = v33;
    }

    v63 = v99;
    v64 = v99 == 0x636964654D6C696ELL && v40 == 0xEF44496E6F697461;
    if (v64 || (sub_16E6BC() & 1) != 0)
    {
      v97 = v40;
      v65 = v43;
      sub_16DBBC();
      sub_8B48();
      v66 = *(v46 + 16);
      v67 = sub_C9C8();
      v68(v67);
      v69 = sub_16DBDC();
      v70 = sub_16E37C();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = sub_1BA38();
        *v71 = 0;
        _os_log_impl(&def_259DC, v69, v70, "processNameDisambiguationResult() received nilMedicationID. Setting flow to .failure state.", v71, 2u);
        v46 = v33;
        sub_8A2C();
      }

      (*(v46 + 8))(v100, v34);
      sub_106EDC();
      *(v2 + 232) = 0u;
      *(v2 + 224) = 8;
      *(v2 + 248) = 0u;
      *(v2 + 264) = 0u;
      *(v2 + 280) = 0;
      *(v2 + 288) = -64;
      sub_376FC(v114);
      v42 = v113;
      v43 = v65;
      v40 = v97;
      v63 = v99;
    }

    v72 = v44;
    if ((v42 & 1) == 0 && v41 == -1.0)
    {
      v42 = 1;
      v112 = 1;
      v41 = 0.0;
    }

    if (v44)
    {
      v73 = v43 == 6.20204794e223 && v44 == 0xEF74696E55687467;
      if (v73 || (sub_1064C0(), (sub_16E6BC() & 1) != 0))
      {

        v43 = 0.0;
        v72 = 0;
      }
    }

    LODWORD(v100) = v42 & 1;
    v110 = v42 & 1;
    sub_106EDC();
    *(v2 + 224) = v101;
    *(v2 + 232) = v39;
    *(v2 + 240) = v63;
    *(v2 + 248) = v40;
    *(v2 + 256) = v41;
    *(v2 + 264) = v42 & 1;
    *(v2 + 272) = v43;
    *(v2 + 280) = v72;
    *(v2 + 288) = 0;

    sub_376FC(v114);
    sub_16DBBC();
    sub_8B48();
    (*(v46 + 16))();
    v74 = v63;
    v75 = sub_16DBDC();
    v76 = v72;
    v77 = sub_16E36C();
    if (os_log_type_enabled(v75, v77))
    {
      v78 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v104 = v99;
      *v78 = 136315906;
      sub_1067FC();
      v96 = v39;
      v106 = v39;
      sub_2440(&qword_1C69C8, &qword_174150);
      v95 = v43;
      v97 = v76;
      v79 = sub_16E3DC();
      sub_3AB7C(v79, v80, &v104);
      sub_456D0();

      *(v78 + 4) = &v105;
      *(v78 + 12) = 2080;

      v81 = v74;
      v82 = sub_D4D84();
      v85 = sub_3AB7C(v82, v83, v84);

      *(v78 + 14) = v85;
      *(v78 + 22) = 2080;
      v105 = v41;
      LOBYTE(v106) = v100;
      sub_2440(&qword_1C57A0, &qword_16F3C0);
      v86 = sub_16E3DC();
      sub_3AB7C(v86, v87, &v104);
      sub_456D0();

      *(v78 + 24) = &v105;
      *(v78 + 32) = 2080;
      v88 = v95;
      v105 = v95;
      v89 = v97;
      v106 = v97;
      v90 = sub_16E3DC();
      sub_3AB7C(v90, v91, &v104);
      sub_456D0();

      *(v78 + 34) = &v105;
      _os_log_impl(&def_259DC, v75, v77, "processNameDisambiguationResult() received selected scheduleID (%s), medicationID (%s), strength (%s), strengthUnit (%s)", v78, 0x2Au);
      swift_arrayDestroy();
      sub_8A2C();
      sub_8A2C();

      (*(v102 + 8))(v98, v103);
      sub_1067FC();
      v106 = v96;
      v107 = v81;
      sub_106620();
      v108 = v88;
      v109 = v89;
    }

    else
    {

      v92 = *(v46 + 8);
      v93 = sub_106FE4();
      v94(v93);
      sub_1067FC();
      v106 = v39;
      v107 = v74;
      sub_106620();
      v108 = v43;
      v109 = v76;
    }

    return sub_8748(&v105, &qword_1C63D8, &qword_1717C8);
  }

  else
  {
    sub_16DBBC();
    sub_8B48();
    v47 = *(v102 + 16);
    v48 = sub_13298();
    v49(v48);
    (v28)(v24, a1, v16);
    v50 = sub_16DBDC();
    v51 = sub_16E37C();
    if (sub_387B0(v51))
    {
      v52 = sub_8BD8();
      v100 = v52;
      v101 = sub_CA30();
      v114[0] = v101;
      *v52 = 136315138;
      sub_38940(&qword_1C9D08, &qword_1C9D00, &unk_176720);
      LODWORD(v99) = v10;
      sub_16E68C();
      sub_107084();
      v98 = v50;
      v53 = sub_106D28();
      (v50)(v53);
      v54 = sub_38B40();
      v57 = sub_3AB7C(v54, v55, v56);

      v58 = v100;
      *(v100 + 4) = v57;
      v59 = v98;
      _os_log_impl(&def_259DC, v98, v99, "processNameDisambiguationResult() received unknown result: %s. Setting flow to .failure state.", v58, 0xCu);
      sub_2D64(v101);
      sub_1BA00();
      sub_8A2C();
    }

    else
    {

      v60 = sub_106D28();
      (v50)(v60);
    }

    (*(v102 + 8))(v10, v103);
    sub_106EDC();
    sub_1068C4();
    sub_376FC(v114);
    v61 = sub_106F6C();
    return (v50)(v61);
  }
}

uint64_t sub_100CD8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_16DBEC();
  v5 = sub_42F0(v4);
  v54 = v6;
  v55 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_887C();
  v53 = v9 - v10;
  __chkstk_darwin(v11);
  v13 = &v49[-v12];
  v14 = sub_2440(&qword_1C9CF0, &qword_176718);
  v15 = sub_42F0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  sub_887C();
  __chkstk_darwin(v20);
  v22 = &v49[-v21];
  v23 = *(v17 + 16);
  (v23)(&v49[-v21], a1, v14);
  if ((*(v17 + 88))(v22, v14) == enum case for PromptResult.answered<A>(_:))
  {
    (*(v17 + 96))(v22, v14);
    v25 = *v22;
    v24 = v22[1];
    memcpy(__dst, (v2 + 224), 0x41uLL);
    *(v2 + 224) = v25;
    *(v2 + 232) = v24;
    *(v2 + 264) = 0;
    *(v2 + 240) = 0;
    *(v2 + 248) = 0;
    *(v2 + 288) = 64;

    sub_376FC(__dst);
    sub_16DBBC();
    sub_8B48();
    v26 = *(v54 + 16);
    v27 = sub_C9C8();
    v28(v27);

    v29 = sub_16DBDC();
    v30 = sub_16E36C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = sub_8BD8();
      v32 = sub_CA30();
      v56 = v32;
      *v31 = 136315138;
      v33 = sub_3AB7C(v25, v24, &v56);

      *(v31 + 4) = v33;
      _os_log_impl(&def_259DC, v29, v30, "processScheduleDisambiguationResult() received selected scheduleID (%s)", v31, 0xCu);
      sub_2D64(v32);
      sub_8A2C();
      sub_8A2C();
    }

    else
    {
    }

    return (*(v54 + 8))(v13, v55);
  }

  else
  {
    sub_16DBBC();
    sub_8B48();
    v34 = *(v54 + 16);
    v35 = sub_C9C8();
    v36(v35);
    v37 = sub_C98B4();
    v23(v37);
    v38 = sub_16DBDC();
    v39 = sub_16E37C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = sub_8BD8();
      v51 = v40;
      v52 = sub_CA30();
      __dst[0] = v52;
      *v40 = 136315138;
      sub_38940(&qword_1C9CF8, &qword_1C9CF0, &qword_176718);
      v41 = sub_16E68C();
      v50 = v39;
      v42 = sub_106CF8();
      v23(v42);
      v43 = sub_C9C8();
      sub_3AB7C(v43, v44, v45);
      sub_456D0();

      *(v51 + 1) = v41;
      sub_107170(&def_259DC, v38, v50, "processScheduleDisambiguationResult() received unknown result: %s. Setting flow to .failure state.");
      sub_2D64(v52);
      sub_8A2C();
      sub_8A2C();
    }

    else
    {

      v47 = sub_106CF8();
      v23(v47);
    }

    (*(v54 + 8))(v53, v55);
    memcpy(__dst, (v2 + 224), 0x41uLL);
    *(v2 + 224) = 8;
    *(v2 + 232) = 0u;
    v48 = v2 + 232;
    *(v48 + 16) = 0u;
    *(v48 + 32) = 0u;
    *(v48 + 48) = 0;
    *(v48 + 56) = -64;
    sub_376FC(__dst);
    return (v23)(v22, v14);
  }
}

uint64_t sub_1011A8(uint64_t a1, const char *a2, const char *a3, int a4)
{
  v113 = a4;
  v111 = a3;
  v116 = a2;
  v6 = v4;
  v8 = sub_2440(&qword_1C6780, &qword_176710);
  v9 = sub_42F0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_887C();
  sub_13058();
  __chkstk_darwin(v14);
  v15 = sub_107150();
  v16 = sub_42F0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  sub_887C();
  sub_13058();
  __chkstk_darwin(v21);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v22);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v23);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v24);
  v26 = &v108 - v25;
  v27 = sub_16DBBC();
  sub_8B48();
  v28 = *(v18 + 16);
  v126 = v27;
  v29 = v27;
  v30 = v11;
  v121 = v15;
  v125 = v18 + 16;
  v124 = v28;
  v28(v26, v29, v15);
  v31 = *(v11 + 16);
  v122 = a1;
  v120 = v31;
  v31(v5, a1, v8);
  v32 = sub_16DBDC();
  v33 = sub_16E36C();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = sub_8BD8();
    v117 = v11;
    v35 = v34;
    v36 = sub_CA30();
    v115 = v6;
    v109 = v36;
    __dst[0] = v36;
    *v35 = 136315138;
    sub_38940(&qword_1C6788, &qword_1C6780, &qword_176710);
    v37 = sub_16E68C();
    v110 = v18;
    v39 = v38;
    v40 = *(v117 + 8);
    v40(v5, v8);
    v41 = sub_3AB7C(v37, v39, __dst);

    *(v35 + 4) = v41;
    sub_107170(&def_259DC, v32, v33, v116);
    sub_2D64(v109);
    v42 = v115;
    sub_8A2C();
    v30 = v117;
    sub_8A2C();

    v43 = v40;
    v44 = *(v110 + 8);
    v45 = v26;
  }

  else
  {

    v43 = *(v11 + 8);
    (v43)(v5, v8);
    v44 = *(v18 + 8);
    v45 = v26;
    v42 = v6;
  }

  v46 = v121;
  v44(v45, v121);
  v47 = v123;
  v120(v123, v122, v8);
  v48 = *(v30 + 88);
  v49 = sub_1070E4();
  if (v50(v49) != enum case for PromptResult.answered<A>(_:))
  {
    v75 = sub_1070E4();
    (v43)(v75);
    sub_106204();
    v76 = v118;
    sub_1069F0();
    sub_1062B4();
    v77();
    v78 = sub_16DBDC();
    v79 = sub_16E37C();
    if (sub_387B0(v79))
    {
      v80 = sub_1BA38();
      sub_1BA50(v80);
      sub_385B8();
      _os_log_impl(v81, v82, v83, v84, v85, 2u);
      sub_1BA00();
    }

    v86 = v76;
    goto LABEL_23;
  }

  v51 = *(v30 + 96);
  v52 = sub_1070E4();
  v53(v52);
  v54 = v47[1];
  v55 = v119;
  if (!v54)
  {
LABEL_20:
    sub_106204();
    sub_1069F0();
    sub_1062B4();
    v87();
    v88 = sub_16DBDC();
    v89 = sub_16E37C();
    if (sub_387B0(v89))
    {
      v90 = sub_1BA38();
      sub_1BA50(v90);
      sub_385B8();
      _os_log_impl(v91, v92, v93, v94, v95, 2u);
      sub_1BA00();
    }

    v86 = v55;
LABEL_23:
    v44(v86, v46);
    memcpy(__dst, (v42 + 224), 0x41uLL);
    sub_1068C4();
    return sub_376FC(__dst);
  }

  v56 = *v47;
  if (*v47 == 2 || !sub_3B35C(v47[1]))
  {

    goto LABEL_20;
  }

  v115 = v42;
  sub_3B360(0, (v54 & 0xC000000000000001) == 0, v54);
  if ((v54 & 0xC000000000000001) != 0)
  {
    v57 = sub_16E48C();
  }

  else
  {
    v57 = *(v54 + 32);
  }

  v58 = v57;

  v59 = sub_103660(v58, &selRef_medicationID);
  if (!v60)
  {

    v42 = v115;
    goto LABEL_20;
  }

  v61 = v60;
  v123 = v59;
  sub_106204();
  v62 = v114;
  sub_C9C8();
  sub_1062B4();
  v63();
  v64 = sub_16DBDC();
  v65 = sub_16E36C();
  if (sub_387B0(v65))
  {
    v43 = sub_93228();
    *v43 = 67109120;
    *(v43 + 4) = v56 & 1;
    sub_385B8();
    _os_log_impl(v66, v67, v68, v69, v70, 8u);
    sub_1BA00();
  }

  v44(v114, v46);
  if (v56)
  {
    sub_103660(v58, &selRef_scheduleID);
    sub_107084();
    v71 = [v58 strength];
    v72 = v71;
    if (v71)
    {
      [v71 doubleValue];
      v74 = v73;
    }

    else
    {
      v74 = 0;
    }

    v102 = [v58 strengthUnit];
    if (v102)
    {
      v103 = v102;
      v104 = sub_16E1BC();
      v106 = v105;
    }

    else
    {

      v104 = 0;
      v106 = 0;
    }

    v127 = v72 == 0;
    v107 = v115;
    sub_106BDC(__dst);
    *(v107 + 224) = v62;
    *(v107 + 232) = v43;
    *(v107 + 240) = v123;
    *(v107 + 248) = v61;
    *(v107 + 256) = v74;
    *(v107 + 264) = v72 == 0;
    *(v107 + 272) = v104;
    *(v107 + 280) = v106;
    *(v107 + 288) = v113;
  }

  else
  {

    sub_1B9B4();
    v97 = v112;
    sub_8B60();
    sub_1062B4();
    v98();
    v99 = sub_16DBDC();
    v100 = sub_16E37C();
    if (sub_387B0(v100))
    {
      v101 = sub_1BA38();
      sub_1BA50(v101);
      _os_log_impl(&def_259DC, v99, v97, v111, v43, 2u);
      sub_1BA00();
    }

    v44(v97, v46);
    sub_106BDC(__dst);
    sub_105748(7);
  }

  return sub_376FC(__dst);
}

uint64_t sub_101A14(uint64_t a1)
{
  v3 = sub_2440(&qword_1C9CE0, &qword_176708);
  v4 = sub_42F0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_887C();
  sub_13058();
  __chkstk_darwin(v9);
  v10 = sub_107150();
  v11 = sub_42F0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_887C();
  sub_13058();
  __chkstk_darwin(v16);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v17);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v18);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v19);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v20);
  sub_16DBBC();
  sub_8B48();
  v21 = *(v13 + 16);
  sub_1069F0();
  v22();
  v23 = v1;
  v24 = v1;
  v105 = a1;
  v25 = v3;
  v104 = *(v6 + 16);
  v104(v24, a1, v3);
  v26 = sub_16DBDC();
  v27 = sub_16E36C();
  if (os_log_type_enabled(v26, v27))
  {
    v99 = sub_8BD8();
    v100 = sub_CA30();
    __dst[0] = v100;
    *v99 = 136315138;
    sub_38940(&qword_1C9CE8, &qword_1C9CE0, &qword_176708);
    sub_16E68C();
    sub_1070B4();
    v28 = *(v6 + 8);
    v28(v23, v25);
    v29 = sub_3AB7C(v99, v23, __dst);

    *(v99 + 4) = v29;
    v30 = v6;
    sub_107170(&def_259DC, v26, v27, "Received response from PromptForValueFlowAsync for LogMedScheduleMixedStatusConfirmationStrategy: %s");
    v27 = v100;
    sub_2D64(v100);
    v31 = v110;
    sub_8A2C();
    sub_8A2C();

    v32 = v28;
    v33 = sub_106B60();
    (v100)(v33);
  }

  else
  {

    v30 = v6;
    v32 = *(v6 + 8);
    v32(v23, v3);
    v34 = sub_106B60();
    v27(v34);
    v31 = v110;
  }

  v35 = v108;
  v104(v108, v105, v25);
  if ((*(v30 + 88))(v108, v25) != enum case for PromptResult.answered<A>(_:))
  {
    v32(v108, v25);
    sub_106204();
    v37 = v103;
    sub_1069F0();
    sub_106480();
    v38();
    v39 = sub_16DBDC();
    v40 = sub_16E37C();
    if (sub_387B0(v40))
    {
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  (*(v30 + 96))(v108, v25);
  v36 = v108[1];
  if (!v36)
  {
LABEL_29:
    sub_106204();
    v37 = v102;
    sub_1069F0();
    sub_106480();
    v66();
    v39 = sub_16DBDC();
    v67 = sub_16E37C();
    if (sub_387B0(v67))
    {
LABEL_30:
      v68 = sub_1BA38();
      sub_1BA50(v68);
      sub_385B8();
      _os_log_impl(v69, v70, v71, v72, v73, 2u);
      sub_1BA00();
    }

LABEL_31:

    (v27)(v37, v10);
    memcpy(__dst, (v31 + 224), 0x41uLL);
    *(v31 + 224) = 8;
    *(v31 + 232) = 0u;
    v74 = v31 + 232;
    *(v74 + 16) = 0u;
    *(v74 + 32) = 0u;
    *(v74 + 48) = 0;
    *(v74 + 56) = -64;
    return sub_376FC(__dst);
  }

  if (*v108 == 2)
  {
    sub_1036BC(*v108, v108[1]);
    goto LABEL_29;
  }

  if (!v108[3])
  {
    v65 = v108[1];

    goto LABEL_29;
  }

  v109 = *v108;
  v106 = v35[2];
  v107 = v35[3];
  sub_106204();
  sub_1069F0();
  sub_106480();
  v41();
  v42 = sub_16DBDC();
  v43 = sub_16E36C();
  if (sub_387B0(v43))
  {
    v44 = sub_93228();
    *v44 = 67109120;
    v44[1] = v109 & 1;
    sub_385B8();
    _os_log_impl(v45, v46, v47, v48, v49, 8u);
    sub_1BA00();
  }

  (v27)(v101, v10);
  result = sub_3B35C(v36);
  if (!result)
  {
    v53 = _swiftEmptyArrayStorage;
LABEL_34:

    if (v109)
    {
      sub_106204();
      sub_13298();
      sub_106480();
      v75();
      v76 = sub_16DBDC();
      v77 = sub_16E36C();
      v78 = v110;
      if (sub_387B0(v77))
      {
        v79 = sub_1BA38();
        sub_1BA50(v79);
        sub_385B8();
        _os_log_impl(v80, v81, v82, v83, v84, 2u);
        sub_1BA00();
      }

      sub_1069FC();
      sub_107030();
      v85();
      v86 = *(v110 + 16);

      v87 = getMedStatus(from:)();

      if (v87)
      {
        v88 = 4;
      }

      else
      {
        v88 = 3;
      }
    }

    else
    {
      sub_106204();
      sub_13298();
      sub_106480();
      v89();
      v90 = sub_16DBDC();
      v91 = sub_16E36C();
      v78 = v110;
      if (sub_387B0(v91))
      {
        v92 = sub_1BA38();
        sub_1BA50(v92);
        sub_385B8();
        _os_log_impl(v93, v94, v95, v96, v97, 2u);
        sub_1BA00();
      }

      sub_1069FC();
      sub_107030();
      v98();
      v88 = 5;
    }

    memcpy(__dst, (v78 + 224), 0x41uLL);
    *(v78 + 224) = v106;
    *(v78 + 232) = v107;
    *(v78 + 240) = v53;
    *(v78 + 248) = v88;
    *(v78 + 264) = 0;
    *(v78 + 288) = 64;
    return sub_376FC(__dst);
  }

  v51 = result;
  if (result >= 1)
  {
    v52 = 0;
    v53 = _swiftEmptyArrayStorage;
    do
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        v54 = sub_16E48C();
      }

      else
      {
        v54 = *(v36 + 8 * v52 + 32);
      }

      v55 = v54;
      v56 = sub_103660(v54, &selRef_medicationID);
      if (v57)
      {
        v58 = v56;
        v59 = v57;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_3A724(0, *(v53 + 2) + 1, 1, v53);
          v53 = v63;
        }

        v61 = *(v53 + 2);
        v60 = *(v53 + 3);
        if (v61 >= v60 >> 1)
        {
          sub_3A724(v60 > 1, v61 + 1, 1, v53);
          v53 = v64;
        }

        *(v53 + 2) = v61 + 1;
        v62 = &v53[16 * v61];
        *(v62 + 4) = v58;
        *(v62 + 5) = v59;
      }

      else
      {
      }

      ++v52;
    }

    while (v51 != v52);
    goto LABEL_34;
  }

  __break(1u);
  return result;
}

uint64_t sub_102308(uint64_t a1)
{
  v2 = v1;
  v4 = sub_16DBEC();
  v5 = sub_42F0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_887C();
  v12 = v10 - v11;
  __chkstk_darwin(v13);
  sub_16D21C();
  if (sub_16D20C())
  {
    sub_16D1EC();

    sub_16C31C();

    if (*(&v31 + 1))
    {
      sub_17464(&v30, v33);
      sub_16DBBC();
      sub_8B48();
      v14 = *(v7 + 16);
      sub_8B60();
      v15();
      v16 = sub_16DBDC();
      v17 = sub_16E36C();
      if (os_log_type_enabled(v16, v17))
      {
        *sub_1BA38() = 0;
        sub_105AAC(&def_259DC, v18, v19, "SpecificMedLoggingFlow: Registering corrections flow");
        sub_8A2C();
      }

      v20 = *(v7 + 8);
      v21 = sub_13298();
      v22(v21);
      sub_C9294(v2 + 360, v29);
      sub_2D20(v29, v29[3]);
      sub_BDE9C(a1, &v30);
      sub_2D64(v29);
      sub_2D20(v33, v33[3]);
      sub_106844();
      sub_16C30C();
      sub_2D64(&v30);
      return sub_2D64(v33);
    }
  }

  else
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
  }

  sub_8748(&v30, &qword_1C6790, &qword_171C70);
  sub_16DBBC();
  sub_8B48();
  v24 = *(v7 + 16);
  sub_8B60();
  v25();
  v26 = sub_16DBDC();
  v27 = sub_16E37C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = sub_1BA38();
    *v28 = 0;
    _os_log_impl(&def_259DC, v26, v27, "SpecificMedLoggingFlow: No corrections client available. Continuing without registering corrections flow.", v28, 2u);
    sub_8A2C();
  }

  return (*(v7 + 8))(v12, v4);
}

uint64_t sub_1025DC()
{
  v1 = *(v0 + 16);

  sub_2D64((v0 + 24));
  sub_C938(v0 + 64);
  sub_37C80(*(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), *(v0 + 288));
  sub_2D64((v0 + 296));
  v2 = *(v0 + 336);

  v3 = *(v0 + 344);

  v4 = *(v0 + 352);
  swift_unknownObjectRelease();
  sub_2D64((v0 + 360));
  sub_2D64((v0 + 400));
  return v0;
}

uint64_t sub_102660()
{
  sub_1025DC();

  return _swift_deallocClassInstance(v0, 440, 7);
}

uint64_t sub_1026B8(uint64_t a1)
{
  v1 = *(a1 + 64) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1026DC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_102724(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 64) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 65) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
      *(a1 + 40) = 2 * -a2;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      return result;
    }

    *(a1 + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10279C(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    v2 = *(result + 64) & 7 | (a2 << 6);
    *(result + 40) &= 1uLL;
    *(result + 64) = v2;
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    *(result + 64) = -64;
  }

  return result;
}

uint64_t sub_10281C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_C6F0;

  return sub_DB820();
}

uint64_t sub_1028B8()
{
  type metadata accessor for SpecificMedLoggingFlow();

  return sub_16C37C();
}

uint64_t sub_1028F0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(result + 16);
  for (i = (result + 40); v7; --v7)
  {
    v10 = *(i - 1);
    v9 = *i;

    v10(a2, a3, a4);

    i += 2;
  }

  return result;
}

void sub_102978()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_3A818(0, v1[2] + 1, 1, v1);
    *v0 = v3;
  }
}

uint64_t sub_1029C4(uint64_t result)
{
  if (result + 1 > *(&dword_18 + (*v1 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    return sub_16E2EC();
  }

  return result;
}

void sub_1029F0(uint64_t a1)
{
  v2 = (*v1)[3];
  if (a1 + 1 > (v2 >> 1))
  {
    sub_3A818(v2 > 1, a1 + 1, 1, *v1);
    *v1 = v3;
  }
}

uint64_t sub_102A30(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_16E72C();
  if (a3)
  {
    sub_16E74C(1u);
    sub_16E25C();
  }

  else
  {
    sub_16E74C(0);
  }

  v9 = sub_16E75C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_16:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_102E30(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v12 = ~v10;
  v13 = *(v7 + 48);
  while (1)
  {
    v14 = (v13 + 16 * v11);
    v15 = v14[1];
    if (v15)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_18;
    }

LABEL_15:
    v11 = (v11 + 1) & v12;
    if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (!a3)
  {
    goto LABEL_15;
  }

  v16 = *v14 == a2 && v15 == a3;
  if (!v16 && (sub_16E6BC() & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  *a1 = *(*(v7 + 48) + 16 * v11);

  return 0;
}

uint64_t sub_102BB8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2440(&qword_1C9D60, &unk_176878);
  result = sub_16E43C();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_32:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_102FEC(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v19 = *v17;
    v18 = v17[1];
    v20 = *(v6 + 40);
    sub_16E72C();
    if (v18)
    {
      sub_16E74C(1u);
      sub_16E25C();
    }

    else
    {
      sub_16E74C(0);
    }

    result = sub_16E75C();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v18;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_26;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

Swift::Int sub_102E30(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 <= v9 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_102BB8(v9 + 1);
    }

    else
    {
      if (v10 > v9)
      {
        result = sub_103050();
        goto LABEL_23;
      }

      sub_1031A4(v9 + 1);
    }

    v11 = *v4;
    v12 = *(*v4 + 40);
    sub_16E72C();
    if (a2)
    {
      sub_16E74C(1u);
      sub_16E25C();
    }

    else
    {
      sub_16E74C(0);
    }

    result = sub_16E75C();
    v13 = v11 + 56;
    v14 = -1 << *(v11 + 32);
    a3 = result & ~v14;
    if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v15 = ~v14;
      v16 = *(v11 + 48);
      do
      {
        v17 = (v16 + 16 * a3);
        v18 = v17[1];
        if (v18)
        {
          if (a2)
          {
            if (*v17 == v8 && v18 == a2)
            {
              goto LABEL_26;
            }

            result = sub_16E6BC();
            if (result)
            {
              goto LABEL_26;
            }
          }
        }

        else if (!a2)
        {
          goto LABEL_26;
        }

        a3 = (a3 + 1) & v15;
      }

      while (((*(v13 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
    }
  }

LABEL_23:
  v20 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = (*(v20 + 48) + 16 * a3);
  *v21 = v8;
  v21[1] = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
LABEL_26:
    sub_2440(&qword_1C69C8, &qword_174150);
    result = sub_16E6DC();
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }

  return result;
}

uint64_t sub_102FEC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_176550;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_103050()
{
  v1 = v0;
  sub_2440(&qword_1C9D60, &unk_176878);
  v2 = *v0;
  v3 = sub_16E42C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1031A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2440(&qword_1C9D60, &unk_176878);
  result = sub_16E43C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v18 = *v16;
        v17 = v16[1];
        v19 = *(v6 + 40);
        sub_16E72C();
        if (v17)
        {
          sub_16E74C(1u);

          sub_16E25C();
        }

        else
        {
          sub_16E74C(0);
        }

        result = sub_16E75C();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v18;
        v28[1] = v17;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_30;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_30:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_103424(void *a1)
{
  v2 = [a1 scheduleID];

  if (v2)
  {
    sub_16E1BC();
    sub_107084();
  }

  return sub_38B40();
}

void sub_10348C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_16E1AC();
  [a3 setScheduleID:v4];
}

void sub_1034E4(uint64_t a1, void *a2)
{
  isa = sub_16E2BC().super.isa;

  [a2 setMedicationIDs:isa];
}

void sub_103550(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_16E1AC();
  [a3 setStrengthUnit:v4];
}

void sub_1035A8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_16E1AC();
  [a3 setDosageUnit:v4];
}

uint64_t sub_103600(void *a1, SEL *a2, void (*a3)(uint64_t))
{
  if (![a1 *a2])
  {
    return 0;
  }

  v5 = sub_107090();
  a3(v5);
  v6 = sub_16E2CC();

  return v6;
}

uint64_t sub_103660(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_16E1BC();
  }

  return sub_8B9C();
}

uint64_t sub_1036BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t type metadata accessor for SpecificMedLoggingFlow.SpecifiedMedicationSuccessParameters()
{
  result = qword_1C9DE8;
  if (!qword_1C9DE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_103784()
{
  sub_2D64((v0 + 16));
  sub_387F4();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1037B8()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_D44B8(v3, v4);
}

uint64_t sub_103840()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_8B9C();
}

uint64_t sub_10386C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return sub_FFDAC();
}

uint64_t sub_10387C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_106F60();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_103930()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_D44B8(v3, v4);
}

uint64_t sub_1039B4(uint64_t a1, uint64_t a2)
{
  v3 = sub_107090();
  v5 = v4(v3);
  sub_8B38(v5);
  v7 = *(v6 + 16);
  v8 = sub_8B9C();
  v9(v8);
  return a2;
}

uint64_t sub_103A0C()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_D44B8(v3, v4);
}

uint64_t sub_103A90()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_D44B8(v3, v4);
}

uint64_t sub_103B14()
{
  sub_106F78();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_103B6C()
{
  v1 = *(v0 + 24);

  sub_106264();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_103BA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_8B38(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_103BF8()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_D44B8(v3, v4);
}

uint64_t sub_103C7C()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_D44B8(v3, v4);
}

uint64_t sub_103D64()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[9];

  sub_106AFC();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_103DC0(uint64_t (*a1)(_OWORD *))
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 80);
  v5 = *(v1 + 32);
  v7[0] = *(v1 + 16);
  v7[1] = v5;
  v8 = v2;
  v9 = v3;
  v10 = *(v1 + 64);
  v11 = v4;
  return a1(v7);
}

uint64_t sub_103E14()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_D44B8(v3, v4);
}

void *sub_103E98(uint64_t a1, uint64_t *a2, const void *a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v32 = a12;
  v33 = a14;
  sub_9910(&v31);
  sub_5DE54(a12);
  (*(v18 + 32))();
  v29 = a13;
  v30 = a15;
  sub_9910(&v28);
  sub_5DE54(a13);
  (*(v19 + 32))();
  a11[2] = a1;
  sub_C9294(a2, (a11 + 3));
  sub_8284(a3, (a11 + 8));
  memcpy(a11 + 28, a4, 0x41uLL);
  sub_17464(&v31, (a11 + 37));
  a11[42] = a6;
  a11[43] = a7;
  a11[44] = a8;
  sub_17464(&v28, (a11 + 50));
  if (*(a10 + 24))
  {
    sub_C938(a3);
    sub_2D64(a2);
    sub_17464(a10, &v25);
  }

  else
  {
    v26 = &type metadata for MedsCorrectionsFlowProvider;
    v27 = &off_1BB2F8;
    *&v25 = swift_allocObject();
    sub_17464(a2, v25 + 16);
    memcpy((v25 + 56), a3, 0xA0uLL);
    if (*(a10 + 24))
    {
      sub_8748(a10, &qword_1C67D8, &unk_176890);
    }
  }

  sub_17464(&v25, (a11 + 45));
  return a11;
}

uint64_t sub_104070()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_D44B8(v3, v4);
}

uint64_t sub_1040F4()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_D44B8(v3, v4);
}

uint64_t sub_104178()
{
  v1 = *(v0 + 24);

  sub_106264();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_1041AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_FFCBC();
}

uint64_t sub_1041CC()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_D44B8(v3, v4);
}

uint64_t sub_104250()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_D44B8(v3, v4);
}

uint64_t sub_1042D4()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_D44B8(v3, v4);
}

uint64_t sub_104358()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_C8CB0(v3, v4);
}

uint64_t sub_1043DC()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_D44B8(v3, v4);
}

uint64_t sub_104478(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1044C0()
{
  sub_2D64(v0 + 2);
  sub_2D64(v0 + 7);
  sub_2D64(v0 + 12);
  sub_2D64(v0 + 17);
  sub_2D64(v0 + 22);

  return _swift_deallocObject(v0, 216, 7);
}

uint64_t sub_10452C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2440(&qword_1C5800, &unk_16F510);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 24);

    return sub_369C(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 48));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_104608(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2440(&qword_1C5800, &unk_16F510);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 24);

    return sub_214C(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 48)) = a2;
  }

  return result;
}

uint64_t sub_1046C0()
{
  sub_7D0F4();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_7B288();
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_104798();
      v1 = v5;
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_104798()
{
  if (!qword_1C9DF8)
  {
    sub_9790(&qword_1C9198, &qword_1751C8);
    v0 = sub_16E3EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1C9DF8);
    }
  }
}

uint64_t getEnumTagSinglePayload for ConfirmationStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ConfirmationStatus(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x104950);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10498C()
{
  result = qword_1C9E48;
  if (!qword_1C9E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9E48);
  }

  return result;
}

uint64_t sub_104B50()
{
  result = v0[3687];
  v2 = v0[3686];
  v3 = v0[3685];
  v4 = v0[3684];
  v5 = v0[3683];
  v6 = v0[3682];
  v7 = v0[3681];
  v8 = v0[3680];
  v9 = v0[3679];
  v10 = v0[3678];
  v12 = v0[3677];
  v13 = v0[3676];
  v14 = v0[3675];
  v15 = v0[3674];
  v16 = v0[3673];
  v17 = v0[3672];
  v18 = v0[3671];
  v19 = v0[3670];
  v20 = v0[3669];
  v21 = v0[3668];
  v22 = v0[3667];
  v23 = v0[3666];
  v24 = v0[3665];
  v25 = v0[3664];
  v26 = v0[3663];
  v27 = v0[3662];
  v28 = v0[3661];
  v29 = v0[3660];
  v30 = v0[3659];
  v31 = v0[3658];
  v32 = v0[3657];
  v33 = v0[3656];
  v34 = v0[3655];
  v35 = v0[3654];
  v36 = v0[3653];
  v37 = v0[3652];
  v38 = v0[3651];
  v39 = v0[3650];
  v40 = v0[3649];
  v41 = v0[3648];
  v42 = v0[3647];
  v43 = v0[3646];
  v44 = v0[3645];
  v45 = v0[3644];
  v46 = v0[3643];
  v47 = v0[3642];
  v48 = v0[3641];
  v49 = v0[3640];
  v50 = v0[3639];
  v51 = v0[3638];
  v52 = v0[3637];
  v53 = v0[3636];
  v54 = v0[3635];
  v55 = v0[3634];
  v56 = v0[3633];
  v57 = v0[3632];
  v58 = v0[3631];
  v59 = v0[3630];
  v60 = v0[3629];
  v61 = v0[3628];
  v62 = v0[3627];
  v63 = v0[3626];
  v64 = v0[3625];
  v65 = v0[3624];
  v66 = v0[3623];
  v67 = v0[3622];
  v68 = v0[3621];
  v69 = v0[3620];
  v70 = v0[3619];
  v71 = v0[3618];
  v72 = v0[3617];
  v73 = v0[3616];
  v11 = v0[3615];
  v74 = v0[3614];
  STACK[0x200] = v0[3613];
  STACK[0x208] = v0[3612];
  STACK[0x210] = v0[3611];
  STACK[0x218] = v0[3610];
  STACK[0x220] = v0[3607];
  STACK[0x228] = v0[3606];
  STACK[0x230] = v0[3605];
  STACK[0x238] = v0[3604];
  STACK[0x240] = v0[3603];
  STACK[0x248] = v0[3602];
  STACK[0x250] = v0[3601];
  STACK[0x258] = v0[3600];
  STACK[0x260] = v0[3599];
  STACK[0x268] = v0[3598];
  STACK[0x270] = v0[3597];
  STACK[0x278] = v0[3596];
  STACK[0x280] = v0[3595];
  STACK[0x288] = v0[3594];
  STACK[0x290] = v0[3593];
  STACK[0x298] = v0[3592];
  STACK[0x2A0] = v0[3591];
  STACK[0x2A8] = v0[3590];
  STACK[0x2B0] = v0[3589];
  STACK[0x2B8] = v0[3588];
  STACK[0x2C0] = v0[3587];
  STACK[0x2C8] = v0[3586];
  STACK[0x2D0] = v0[3585];
  STACK[0x2D8] = v0[3584];
  STACK[0x2E0] = v0[3583];
  STACK[0x2E8] = v0[3582];
  STACK[0x2F0] = v0[3581];
  STACK[0x2F8] = v0[3580];
  STACK[0x300] = v0[3579];
  STACK[0x308] = v0[3578];
  STACK[0x310] = v0[3577];
  STACK[0x318] = v0[3576];
  STACK[0x320] = v0[3575];
  STACK[0x328] = v0[3574];
  STACK[0x330] = v0[3573];
  STACK[0x338] = v0[3572];
  STACK[0x340] = v0[3571];
  STACK[0x348] = v0[3569];
  STACK[0x350] = v0[3568];
  STACK[0x358] = v0[3565];
  STACK[0x360] = v0[3564];
  STACK[0x368] = v0[3562];
  STACK[0x370] = v0[3561];
  STACK[0x378] = v0[3560];
  STACK[0x380] = v0[3558];
  STACK[0x388] = v0[3557];
  STACK[0x390] = v0[3556];
  STACK[0x398] = v0[3555];
  STACK[0x3A0] = v0[3554];
  STACK[0x3A8] = v0[3553];
  STACK[0x3B0] = v0[3552];
  STACK[0x3B8] = v0[3551];
  STACK[0x3C0] = v0[3550];
  STACK[0x3C8] = v0[3549];
  STACK[0x3D0] = v0[3548];
  STACK[0x3D8] = v0[3547];
  STACK[0x3E0] = v0[3544];
  STACK[0x3E8] = v0[3543];
  STACK[0x3F0] = v0[3542];
  STACK[0x3F8] = v0[3541];
  STACK[0x400] = v0[3540];
  STACK[0x408] = v0[3539];
  STACK[0x410] = v0[3538];
  STACK[0x418] = v0[3537];
  STACK[0x420] = v0[3536];
  STACK[0x428] = v0[3535];
  STACK[0x430] = v0[3534];
  STACK[0x438] = v0[3533];
  STACK[0x440] = v0[3532];
  STACK[0x448] = v0[3531];
  STACK[0x450] = v0[3530];
  STACK[0x458] = v0[3529];
  STACK[0x460] = v0[3528];
  STACK[0x468] = v0[3527];
  STACK[0x470] = v0[3526];
  STACK[0x478] = v0[3525];
  STACK[0x480] = v0[3524];
  STACK[0x488] = v0[3523];
  STACK[0x490] = v0[3522];
  STACK[0x498] = v0[3521];
  return result;
}

uint64_t sub_104F9C()
{
  result = v0[3687];
  v2 = v0[3686];
  v3 = v0[3685];
  v4 = v0[3684];
  v5 = v0[3683];
  v6 = v0[3682];
  v7 = v0[3681];
  v8 = v0[3680];
  v9 = v0[3679];
  v10 = v0[3678];
  v11 = v0[3677];
  v12 = v0[3676];
  v13 = v0[3675];
  v14 = v0[3674];
  v15 = v0[3673];
  v16 = v0[3672];
  v17 = v0[3671];
  v18 = v0[3670];
  v19 = v0[3669];
  v20 = v0[3668];
  v21 = v0[3667];
  v22 = v0[3666];
  v23 = v0[3665];
  v24 = v0[3664];
  v25 = v0[3663];
  v26 = v0[3662];
  v27 = v0[3661];
  v28 = v0[3660];
  v29 = v0[3659];
  v30 = v0[3658];
  v31 = v0[3657];
  v32 = v0[3656];
  v33 = v0[3655];
  v34 = v0[3654];
  v35 = v0[3653];
  v36 = v0[3652];
  v37 = v0[3651];
  v38 = v0[3650];
  v39 = v0[3649];
  v40 = v0[3648];
  v41 = v0[3647];
  v42 = v0[3646];
  v43 = v0[3645];
  v44 = v0[3644];
  v45 = v0[3643];
  v46 = v0[3642];
  v47 = v0[3641];
  v48 = v0[3640];
  v49 = v0[3639];
  v50 = v0[3638];
  v51 = v0[3637];
  v52 = v0[3636];
  v53 = v0[3635];
  v54 = v0[3634];
  v55 = v0[3633];
  v56 = v0[3632];
  v57 = v0[3631];
  v58 = v0[3630];
  v59 = v0[3629];
  v60 = v0[3628];
  v61 = v0[3627];
  v62 = v0[3626];
  v63 = v0[3625];
  v64 = v0[3624];
  v65 = v0[3623];
  v66 = v0[3622];
  v67 = v0[3621];
  v68 = v0[3620];
  v69 = v0[3619];
  v70 = v0[3618];
  v71 = v0[3617];
  v72 = v0[3616];
  STACK[0x200] = v0[3614];
  STACK[0x208] = v0[3613];
  STACK[0x210] = v0[3612];
  STACK[0x218] = v0[3611];
  STACK[0x220] = v0[3610];
  STACK[0x228] = v0[3607];
  STACK[0x230] = v0[3606];
  STACK[0x238] = v0[3605];
  STACK[0x240] = v0[3604];
  STACK[0x248] = v0[3603];
  STACK[0x250] = v0[3602];
  STACK[0x258] = v0[3601];
  STACK[0x260] = v0[3600];
  STACK[0x268] = v0[3599];
  STACK[0x270] = v0[3598];
  STACK[0x278] = v0[3597];
  STACK[0x280] = v0[3596];
  STACK[0x288] = v0[3595];
  STACK[0x290] = v0[3594];
  STACK[0x298] = v0[3593];
  STACK[0x2A0] = v0[3592];
  STACK[0x2A8] = v0[3591];
  STACK[0x2B0] = v0[3590];
  STACK[0x2B8] = v0[3589];
  STACK[0x2C0] = v0[3588];
  STACK[0x2C8] = v0[3587];
  STACK[0x2D0] = v0[3586];
  STACK[0x2D8] = v0[3585];
  STACK[0x2E0] = v0[3584];
  STACK[0x2E8] = v0[3583];
  STACK[0x2F0] = v0[3582];
  STACK[0x2F8] = v0[3581];
  STACK[0x300] = v0[3580];
  STACK[0x308] = v0[3579];
  STACK[0x310] = v0[3578];
  STACK[0x318] = v0[3577];
  STACK[0x320] = v0[3576];
  STACK[0x328] = v0[3575];
  STACK[0x330] = v0[3574];
  STACK[0x338] = v0[3573];
  STACK[0x340] = v0[3572];
  STACK[0x348] = v0[3571];
  STACK[0x350] = v0[3569];
  STACK[0x358] = v0[3568];
  STACK[0x360] = v0[3565];
  STACK[0x368] = v0[3564];
  STACK[0x370] = v0[3562];
  STACK[0x378] = v0[3561];
  STACK[0x380] = v0[3560];
  STACK[0x388] = v0[3558];
  STACK[0x390] = v0[3557];
  STACK[0x398] = v0[3556];
  STACK[0x3A0] = v0[3555];
  STACK[0x3A8] = v0[3554];
  STACK[0x3B0] = v0[3553];
  STACK[0x3B8] = v0[3552];
  STACK[0x3C0] = v0[3551];
  STACK[0x3C8] = v0[3550];
  STACK[0x3D0] = v0[3549];
  STACK[0x3D8] = v0[3548];
  STACK[0x3E0] = v0[3547];
  STACK[0x3E8] = v0[3544];
  STACK[0x3F0] = v0[3543];
  STACK[0x3F8] = v0[3542];
  STACK[0x400] = v0[3541];
  STACK[0x408] = v0[3540];
  STACK[0x410] = v0[3539];
  STACK[0x418] = v0[3538];
  STACK[0x420] = v0[3537];
  STACK[0x428] = v0[3536];
  STACK[0x430] = v0[3535];
  STACK[0x438] = v0[3534];
  STACK[0x440] = v0[3533];
  STACK[0x448] = v0[3532];
  STACK[0x450] = v0[3531];
  STACK[0x458] = v0[3530];
  STACK[0x460] = v0[3529];
  STACK[0x468] = v0[3528];
  STACK[0x470] = v0[3527];
  STACK[0x478] = v0[3526];
  STACK[0x480] = v0[3525];
  STACK[0x488] = v0[3524];
  STACK[0x490] = v0[3523];
  STACK[0x498] = v0[3522];
  STACK[0x4A0] = v0[3521];
  STACK[0x4A8] = v0[3520];
  return result;
}

uint64_t sub_1053F0()
{
  result = v0[3687];
  v2 = v0[3686];
  v3 = v0[3685];
  v4 = v0[3684];
  v5 = v0[3683];
  v6 = v0[3682];
  v7 = v0[3681];
  v8 = v0[3680];
  v9 = v0[3679];
  v10 = v0[3678];
  v11 = v0[3677];
  v12 = v0[3676];
  return result;
}

uint64_t sub_105454()
{
  v3 = v0[3519];
  *(v1 - 256) = v0[3520];
  *(v1 - 248) = v3;
  v4 = v0[3516];
  *(v1 - 240) = v0[3517];
  *(v1 - 232) = v4;
  v5 = v0[3514];
  *(v1 - 224) = v0[3515];
  *(v1 - 216) = v5;
  v6 = v0[3512];
  *(v1 - 208) = v0[3513];
  *(v1 - 200) = v6;
  v7 = v0[3508];
  *(v1 - 192) = v0[3509];
  *(v1 - 184) = v7;
  v8 = v0[3506];
  *(v1 - 176) = v0[3507];
  *(v1 - 168) = v8;
  v9 = v0[3504];
  *(v1 - 160) = v0[3505];
  *(v1 - 152) = v9;
  v10 = v0[3502];
  *(v1 - 144) = v0[3503];
  *(v1 - 136) = v10;
  v11 = v0[3500];
  *(v1 - 128) = v0[3501];
  *(v1 - 120) = v11;
}

_WORD *sub_1054E8(_WORD *result)
{
  *(v1 - 104) = 0;
  *(v1 - 96) = 0;
  *result = 0;
  *(v1 - 112) = result + 1;
  return result;
}

uint64_t sub_10550C()
{
  v3 = v0[3517];
  *(v1 - 256) = v0[3519];
  *(v1 - 248) = v3;
  v4 = v0[3515];
  *(v1 - 240) = v0[3516];
  *(v1 - 232) = v4;
  v5 = v0[3513];
  *(v1 - 224) = v0[3514];
  *(v1 - 216) = v5;
  v6 = v0[3509];
  *(v1 - 208) = v0[3512];
  *(v1 - 200) = v6;
  v7 = v0[3507];
  *(v1 - 192) = v0[3508];
  *(v1 - 184) = v7;
  v8 = v0[3505];
  *(v1 - 176) = v0[3506];
  *(v1 - 168) = v8;
  v9 = v0[3503];
  *(v1 - 160) = v0[3504];
  *(v1 - 152) = v9;
  v10 = v0[3501];
  *(v1 - 144) = v0[3502];
  *(v1 - 136) = v10;
  *(v1 - 128) = v0[3500];
}