unint64_t sub_8FF10()
{
  result = qword_139710;
  if (!qword_139710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_139710);
  }

  return result;
}

void *sub_8FF78(unint64_t a1)
{
  v17 = sub_104670();
  v2 = *(v17 - 8);
  v3 = v2[8];
  __chkstk_darwin(v17);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
LABEL_17:
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    v6 = sub_107270();
  }

  else
  {
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    v6 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v7 = 0;
  v8 = a1;
  v9 = a1 & 0xC000000000000001;
  v10 = v2 + 1;
  v16 = _swiftEmptyArrayStorage;
  while (v6 != v7)
  {
    if (v9)
    {
      v11 = sub_1071C0();
    }

    else
    {
      if (v7 >= *(v18 + 16))
      {
        goto LABEL_16;
      }

      v11 = *(v8 + 8 * v7 + 32);
    }

    v2 = v11;
    a1 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    sub_106210();
    v12 = sub_75DD4(0, v5, 0);
    (*v10)(v5, v17);

    ++v7;
    if (v12)
    {
      v2 = &v19;
      sub_106EC0();
      if (*(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v19 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v13 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
        sub_106F10();
      }

      sub_106F20();
      v16 = v19;
      v7 = a1;
    }
  }

  return v16;
}

char *sub_9017C(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_26:
    v21 = a1 & 0xFFFFFFFFFFFFFF8;
    v2 = sub_107270();
    if (v2)
    {
      goto LABEL_3;
    }

    return _swiftEmptyArrayStorage;
  }

  v21 = a1 & 0xFFFFFFFFFFFFFF8;
  v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_3:
  v3 = 0;
  v20 = _swiftEmptyArrayStorage;
  do
  {
    for (i = v3; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_1071C0();
      }

      else
      {
        if (i >= *(v21 + 16))
        {
          goto LABEL_25;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = v6;
      v3 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v8 = [v6 undoable];
      sub_1F7B8();
      isa = sub_107090(1).super.super.isa;
      if (!v8)
      {

        goto LABEL_6;
      }

      v9 = sub_1070A0();

      if (v9)
      {
        v10 = [v7 identifier];
        if (v10)
        {
          break;
        }
      }

      isa = v7;
LABEL_6:

      if (v3 == v2)
      {
        return v20;
      }
    }

    v11 = v10;
    v12 = sub_106E20();
    v14 = v13;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_AD590(0, *(v20 + 2) + 1, 1, v20);
    }

    v17 = *(v20 + 2);
    v16 = *(v20 + 3);
    if (v17 >= v16 >> 1)
    {
      v20 = sub_AD590((v16 > 1), v17 + 1, 1, v20);
    }

    *(v20 + 2) = v17 + 1;
    v18 = &v20[16 * v17];
    *(v18 + 4) = v12;
    *(v18 + 5) = v14;
  }

  while (v3 != v2);
  return v20;
}

char *sub_90398(unint64_t a1)
{
  v2 = sub_25E4(&qword_137DC0, &unk_10A0A0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v24 - v4;
  v6 = sub_106AE0();
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  v8 = __chkstk_darwin(v6);
  v32 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v27 = &v24 - v10;
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_107270())
  {
    v12 = 0;
    v30 = a1 & 0xFFFFFFFFFFFFFF8;
    v31 = a1 & 0xC000000000000001;
    v29 = (v28 + 48);
    v13 = (v28 + 32);
    v14 = _swiftEmptyArrayStorage;
    v25 = i;
    v26 = a1;
    while (1)
    {
      if (v31)
      {
        v15 = sub_1071C0();
      }

      else
      {
        if (v12 >= *(v30 + 16))
        {
          goto LABEL_18;
        }

        v15 = *(a1 + 8 * v12 + 32);
      }

      v16 = v15;
      v17 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      sub_769D4(0, 0xE000000000000000, 0, 0xE000000000000000, v5);

      if ((*v29)(v5, 1, v6) == 1)
      {
        sub_16F70(v5, &qword_137DC0, &unk_10A0A0);
      }

      else
      {
        v18 = v6;
        v19 = *v13;
        v20 = v27;
        (*v13)(v27, v5, v18);
        v19(v32, v20, v18);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_AD840(0, *(v14 + 2) + 1, 1, v14);
        }

        v22 = *(v14 + 2);
        v21 = *(v14 + 3);
        if (v22 >= v21 >> 1)
        {
          v14 = sub_AD840(v21 > 1, v22 + 1, 1, v14);
        }

        *(v14 + 2) = v22 + 1;
        v19(&v14[((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v22], v32, v18);
        v6 = v18;
        i = v25;
        a1 = v26;
      }

      ++v12;
      if (v17 == i)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_906C8()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_139720);
  sub_135C4(v0, qword_139720);
  return sub_106A80();
}

uint64_t sub_90714(uint64_t a1, uint64_t a2)
{
  v3[74] = v2;
  v3[73] = a2;
  v3[72] = a1;
  v4 = type metadata accessor for ModifyAllDisableParameters(0);
  v3[75] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[76] = swift_task_alloc();
  v6 = type metadata accessor for ModifyAllDisableConciseParameters(0);
  v3[77] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[78] = swift_task_alloc();
  v8 = type metadata accessor for ModifyAllEnableParameters(0);
  v3[79] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[80] = swift_task_alloc();
  v10 = type metadata accessor for ModifyAllEnableConciseParameters(0);
  v3[81] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[82] = swift_task_alloc();
  v12 = sub_106000();
  v3[83] = v12;
  v13 = *(v12 - 8);
  v3[84] = v13;
  v14 = *(v13 + 64) + 15;
  v3[85] = swift_task_alloc();
  v3[86] = swift_task_alloc();
  v15 = *(*(sub_25E4(&qword_137598, &unk_107EB0) - 8) + 64) + 15;
  v3[87] = swift_task_alloc();
  v3[88] = swift_task_alloc();
  v3[89] = swift_task_alloc();
  v16 = *(*(sub_25E4(&qword_137DC0, &unk_10A0A0) - 8) + 64) + 15;
  v3[90] = swift_task_alloc();
  v3[91] = swift_task_alloc();
  v3[92] = swift_task_alloc();
  v3[93] = swift_task_alloc();
  v17 = sub_106AE0();
  v3[94] = v17;
  v18 = *(v17 - 8);
  v3[95] = v18;
  v19 = *(v18 + 64) + 15;
  v3[96] = swift_task_alloc();
  v3[97] = swift_task_alloc();
  v3[98] = swift_task_alloc();
  v3[99] = swift_task_alloc();
  v20 = sub_104670();
  v3[100] = v20;
  v21 = *(v20 - 8);
  v3[101] = v21;
  v22 = *(v21 + 64) + 15;
  v3[102] = swift_task_alloc();
  v23 = sub_106370();
  v3[103] = v23;
  v24 = *(v23 - 8);
  v3[104] = v24;
  v25 = *(v24 + 64) + 15;
  v3[105] = swift_task_alloc();
  v26 = sub_1053C0();
  v3[106] = v26;
  v27 = *(v26 - 8);
  v3[107] = v27;
  v28 = *(v27 + 64) + 15;
  v3[108] = swift_task_alloc();
  v29 = *(*(sub_25E4(&qword_137DB8, &unk_1085B0) - 8) + 64) + 15;
  v3[109] = swift_task_alloc();
  v3[110] = swift_task_alloc();
  v3[111] = swift_task_alloc();
  v3[112] = swift_task_alloc();
  v3[113] = swift_task_alloc();
  v3[114] = swift_task_alloc();
  v30 = sub_104D60();
  v3[115] = v30;
  v31 = *(v30 - 8);
  v3[116] = v31;
  v32 = *(v31 + 64) + 15;
  v3[117] = swift_task_alloc();
  v3[118] = swift_task_alloc();
  v3[119] = swift_task_alloc();
  v3[120] = swift_task_alloc();
  v3[121] = swift_task_alloc();
  v3[122] = swift_task_alloc();
  v3[123] = swift_task_alloc();
  v3[124] = swift_task_alloc();
  v3[125] = swift_task_alloc();
  v3[126] = swift_task_alloc();
  v3[127] = swift_task_alloc();
  v33 = sub_106D20();
  v3[128] = v33;
  v34 = *(v33 - 8);
  v3[129] = v34;
  v35 = *(v34 + 64) + 15;
  v3[130] = swift_task_alloc();
  v36 = sub_106300();
  v3[131] = v36;
  v37 = *(v36 - 8);
  v3[132] = v37;
  v38 = *(v37 + 64) + 15;
  v3[133] = swift_task_alloc();
  v39 = sub_106320();
  v3[134] = v39;
  v40 = *(v39 - 8);
  v3[135] = v40;
  v41 = *(v40 + 64) + 15;
  v3[136] = swift_task_alloc();
  v3[137] = swift_task_alloc();
  v3[138] = swift_task_alloc();
  v3[139] = swift_task_alloc();
  v3[140] = swift_task_alloc();
  v3[141] = swift_task_alloc();
  v3[142] = swift_task_alloc();
  v3[143] = swift_task_alloc();
  v3[144] = swift_task_alloc();
  v42 = sub_104FF0();
  v3[145] = v42;
  v43 = *(v42 - 8);
  v3[146] = v43;
  v44 = *(v43 + 64) + 15;
  v3[147] = swift_task_alloc();

  return _swift_task_switch(sub_90E00, 0, 0);
}

uint64_t sub_90E00()
{
  v596 = v0;
  v1 = v0;
  if (qword_136DA8 != -1)
  {
    swift_once();
  }

  v2 = sub_135C4(v0[128], qword_139720);
  v0[148] = v2;
  v3 = sub_106D10();
  v4 = sub_106FC0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "ChangeAlarmStatus.HandleIntentStrategy.makeIntentHandledResponse() called.", v5, 2u);
  }

  v6 = v1[73];

  v7 = sub_25E4(&qword_139740, &unk_10A0B0);
  v8 = sub_105150();
  v1[149] = v8;
  sub_1F7B8();
  v9 = sub_105170();
  isa = [v9 handleSilently];

  if (!isa)
  {
    isa = sub_107080(0).super.super.isa;
  }

  v11 = sub_107080(0).super.super.isa;
  v12 = sub_1070A0();

  if ((v12 & 1) == 0)
  {
    v24 = sub_106D10();
    v25 = sub_106FC0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "ChangeAlarmStatus.makeIntentHandledResponse: Handling silently; returning empty output", v26, 2u);
    }

    v27 = v1[72];

    sub_104DA0();
    sub_104D90();

    v28 = v1[147];
    v29 = v1[144];
    v30 = v1[143];
    v31 = v1[142];
    v32 = v1;
    v33 = v1[141];
    v34 = v32[140];
    v35 = v32[139];
    v36 = v32[138];
    v37 = v32[137];
    v38 = v32[136];
    v493 = v32[133];
    v495 = v32[130];
    v497 = v32[127];
    v499 = v32[126];
    v501 = v32[125];
    v503 = v32[124];
    v505 = v32[123];
    v507 = v32[122];
    v509 = v32[121];
    v511 = v32[120];
    v513 = v32[119];
    v515 = v32[118];
    v517 = v32[117];
    v519 = v32[114];
    v521 = v32[113];
    v523 = v32[112];
    v525 = v32[111];
    v527 = v32[110];
    v529 = v32[109];
    v531 = v32[108];
    v533 = v32[105];
    v535 = v32[102];
    v537 = v32[99];
    v539 = v32[98];
    v541 = v32[97];
    v543 = v32[96];
    v547 = v32[93];
    v551 = v32[92];
    v557 = v32[91];
    v560 = v32[90];
    v563 = v32[89];
    v566 = v32[88];
    v569 = v32[87];
    v572 = v32[86];
    v575 = v32[85];
    v579 = v32[82];
    v581 = v32[80];
    v583 = v32[78];
    v586 = v32[76];

    v39 = v32[1];
    goto LABEL_24;
  }

  v13 = [v8 modifiedAlarms];
  if (!v13)
  {
    sub_25E4(&qword_137DD8, &unk_1085D0);
    sub_26E48();
    swift_allocError();
    *v40 = 3;
    swift_willThrow();

LABEL_23:
    v41 = v1[147];
    v42 = v1[144];
    v43 = v1[143];
    v44 = v1[142];
    v45 = v1[141];
    v46 = v1;
    v47 = v1[140];
    v48 = v46[139];
    v49 = v46[138];
    v50 = v46[137];
    v51 = v46[136];
    v492 = v46[133];
    v494 = v46[130];
    v496 = v46[127];
    v498 = v46[126];
    v500 = v46[125];
    v502 = v46[124];
    v504 = v46[123];
    v506 = v46[122];
    v508 = v46[121];
    v510 = v46[120];
    v512 = v46[119];
    v514 = v46[118];
    v516 = v46[117];
    v518 = v46[114];
    v520 = v46[113];
    v522 = v46[112];
    v524 = v46[111];
    v526 = v46[110];
    v528 = v46[109];
    v530 = v46[108];
    v532 = v46[105];
    v534 = v46[102];
    v536 = v46[99];
    v538 = v46[98];
    v540 = v46[97];
    v542 = v46[96];
    v544 = v46[93];
    v548 = v46[92];
    v552 = v46[91];
    v558 = v46[90];
    v561 = v46[89];
    v564 = v46[88];
    v567 = v46[87];
    v570 = v46[86];
    v573 = v46[85];
    v576 = v46[82];
    v580 = v46[80];
    v584 = v46[78];
    v587 = v46[76];

    v39 = v46[1];
LABEL_24:

    return v39();
  }

  v14 = v13;
  v15 = v1[147];
  v16 = v1[73];
  sub_106AA0();
  v17 = sub_106EE0();

  v585 = sub_105170();
  v1[150] = v585;
  sub_106100();
  sub_105160();
  v578 = sub_1060F0();
  v1[151] = v578;
  sub_BD4A4(v17, v15);
  if (!(v17 >> 62))
  {
    v18 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
    if (v18)
    {
      goto LABEL_11;
    }

LABEL_221:
    v7 = v585;
    v440 = [v585 alarms];
    if (!v440)
    {

      v457 = sub_106D10();
      v458 = sub_106FB0();
      if (os_log_type_enabled(v457, v458))
      {
        v459 = swift_slowAlloc();
        *v459 = 0;
        _os_log_impl(&dword_0, v457, v458, "Can NOT retrieve intent.alarms", v459, 2u);
      }

      v460 = v1[147];
      v461 = v1[146];
      v462 = v1[145];

      sub_25E4(&qword_137DD8, &unk_1085D0);
      sub_26E48();
      swift_allocError();
      *v463 = 3;
      swift_willThrow();

      (*(v461 + 8))(v460, v462);
      goto LABEL_23;
    }

    v441 = v440;
    v442 = sub_106EE0();

    if (!(v442 >> 62))
    {
      v443 = *(&dword_10 + (v442 & 0xFFFFFFFFFFFFFF8));
      goto LABEL_224;
    }

LABEL_251:
    v443 = sub_107270();
LABEL_224:
    v444 = [v7 operation];
    if (v444 == &dword_0 + 2)
    {
      v592 = v443;

      v464 = v2;
      v465 = sub_106D10();
      v466 = sub_106FC0();
      if (os_log_type_enabled(v465, v466))
      {
        v467 = swift_slowAlloc();
        *v467 = 0;
        _os_log_impl(&dword_0, v465, v466, "Hitting RF path for ChangeAlarmStatus, alarms already disabled.", v467, 2u);
      }

      v468 = v1[143];
      v469 = v1[133];
      v470 = v1[132];
      v471 = v1[131];
      v472 = v1[130];
      v473 = v1;
      v474 = v1[129];
      v475 = v473[128];

      (*(v470 + 104))(v469, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v471);
      (*(v474 + 16))(v472, v464, v475);
      mach_absolute_time();
      sub_106330();
      if (qword_136EB8 != -1)
      {
        swift_once();
      }

      v476 = swift_task_alloc();
      v473[157] = v476;
      *v476 = v473;
      v476[1] = sub_95C50;

      return sub_D3898(v592 > 1);
    }

    if (v444 != &dword_0 + 1)
    {
      v477 = v1[129];
      v478 = v1[128];
      v479 = v1[114];
      v480 = v1[113];
      v481 = sub_106750();
      v1[65] = v481;
      v1[66] = &protocol witness table for ABCReport;
      v482 = sub_1A924(v1 + 62);
      v483 = enum case for UnhandledAbortSubtype.unknownChangeAlarmOperation(_:);
      v484 = sub_106680();
      (*(*(v484 - 8) + 104))(v482, v483, v484);
      (*(*(v481 - 8) + 104))(v482, enum case for ABCReport.unhandledAbort(_:), v481);
      sub_1064D0();
      sub_2738(v1 + 62);
      (*(v477 + 16))(v479, v2, v478);
      (*(v477 + 56))(v479, 0, 1, v478);
      sub_14994(v479, v480, &qword_137DB8, &unk_1085B0);
      if ((*(v477 + 48))(v480, 1, v478) == 1)
      {
        sub_16F70(v1[113], &qword_137DB8, &unk_1085B0);
      }

      else
      {
        v485 = v1[113];
        v486 = sub_106D10();
        v487 = sub_106FB0();
        if (os_log_type_enabled(v486, v487))
        {
          v488 = swift_slowAlloc();
          v593 = swift_slowAlloc();
          *v488 = 136315650;
          v489 = sub_1071A0();
          v491 = sub_722E8(v489, v490, &v593);

          *(v488 + 4) = v491;
          *(v488 + 12) = 2048;
          *(v488 + 14) = 74;
          *(v488 + 22) = 2080;
          *(v488 + 24) = sub_722E8(0xD000000000000039, 0x800000000010D9E0, &v593);
          _os_log_impl(&dword_0, v486, v487, "FatalError at %s:%lu - %s", v488, 0x20u);
          swift_arrayDestroy();
        }

        (*(v1[129] + 8))(v1[113], v1[128]);
      }

      goto LABEL_247;
    }

    v585 = v443;

    v445 = v2;
    v446 = sub_106D10();
    v447 = sub_106FC0();
    if (os_log_type_enabled(v446, v447))
    {
      v448 = swift_slowAlloc();
      *v448 = 0;
      _os_log_impl(&dword_0, v446, v447, "Hitting RF path for ChangeAlarmStatus, alarms already enabled.", v448, 2u);
    }

    v449 = v1[144];
    v450 = v1[133];
    v451 = v1[132];
    v452 = v1[131];
    v453 = v1[130];
    v83 = v1;
    v454 = v1[129];
    v455 = v83[128];

    (*(v451 + 104))(v450, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v452);
    (*(v454 + 16))(v453, v445, v455);
    mach_absolute_time();
    sub_106330();
    if (qword_136EB8 == -1)
    {
LABEL_229:
      v456 = swift_task_alloc();
      v83[152] = v456;
      *v456 = v83;
      v456[1] = sub_9558C;

      return sub_D3B48(v585 > 1);
    }

LABEL_254:
    swift_once();
    goto LABEL_229;
  }

  if (!sub_107270())
  {
    goto LABEL_221;
  }

  v18 = sub_107270();
LABEL_11:
  v582 = v1;
  if (v18 != 1)
  {
    v53 = [v585 alarmSearch];
    v1[224] = v53;
    v574 = v2;
    if (v53)
    {
      v54 = v53;
      [v54 alarmReferenceType];
      v55 = sub_106970();
      v56 = sub_106970();

      v577 = v55 == v56;
      [v54 period];
      v57 = sub_106A40();
      v568 = v57 == sub_106A40();
      [v54 period];
      v58 = sub_106A40();
      v59 = 1;
      v565 = v58 == sub_106A40();
      [v54 period];
      v60 = sub_106A40();
      v559 = v60 == sub_106A40();
      [v54 period];
      v61 = sub_106A40();
      v562 = v61 == sub_106A40();
      v62 = v54;
      v63 = [v62 label];
      if (v63)
      {
        v64 = v1[89];
        v65 = v63;
        sub_106E20();

        sub_106E50();

        v59 = 0;
      }

      v66 = v1[89];
      v67 = sub_106160();
      (*(*(v67 - 8) + 56))(v66, v59, 1, v67);

      v68 = v62;
      v69 = sub_1CE68();
    }

    else
    {
      v70 = v1[89];
      v71 = sub_106160();
      (*(*(v71 - 8) + 56))(v70, 1, 1, v71);
      v577 = 0;
      v568 = 0;
      v565 = 0;
      v559 = 0;
      v562 = 0;
      v69 = 0;
    }

    v571 = v69;
    v1[225] = v69;
    v72 = v1[86];
    v73 = v1;
    v74 = v1[85];
    v75 = v73[84];
    v76 = v73[83];
    v77 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v78 = sub_106E10();
    v79 = sub_106E10();
    v578 = [v77 initWithIdentifier:v78 displayString:v79];

    sub_105FC0();
    sub_105FB0();
    sub_105FA0();

    sub_106790();

    sub_105FF0();
    LOBYTE(v77) = sub_105FE0();
    v80 = *(v75 + 8);
    v80(v74, v76);
    v80(v72, v76);
    if (v77)
    {
      LODWORD(v81) = 1;
      v82 = _swiftEmptyArrayStorage;
      v83 = v585;
    }

    else
    {
      v83 = v585;
      if (v577 && v18 >= *v582[74])
      {
        LODWORD(v81) = 1;
        v82 = _swiftEmptyArrayStorage;
      }

      else
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v84 = sub_1071C0();
        }

        else
        {
          if (!*(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_254;
          }

          v84 = *(v17 + 32);
        }

        v85 = v84;
        v81 = [v84 sleepAlarmAttribute];

        if (v81)
        {

          if ((v17 & 0xC000000000000001) != 0)
          {
            v86 = sub_1071C0();
          }

          else
          {
            if (!*(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
            {
              __break(1u);
LABEL_261:
              swift_once();
LABEL_87:
              v177 = v7[89];
              v178 = v7[82];
              v179 = v7[81];
              v180 = *(v179 + 44);
              v181 = sub_106160();
              (*(*(v181 - 8) + 56))(v178 + v180, 1, 1, v181);
              *v178 = 256;
              *(v178 + 2) = v559;
              *(v178 + 3) = v577;
              *(v178 + 4) = v562;
              *(v178 + 5) = v565;
              *(v178 + 6) = v568;
              v182 = *(v179 + 48);
              *(v178 + v182) = 0;
              sub_7C2E0(v177, v178 + v180);
              *(v178 + v182) = v17;
              v183 = "esponseMultipleDisabled";

              v184 = sub_20CBC();
              v7[234] = v184;
              v185 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
              v590 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
              v186 = swift_task_alloc();
              v7[235] = v186;
              *v186 = v7;
              v186[1] = sub_9ED10;
              v187 = 0xD000000000000017;
LABEL_160:
              v255 = v183 | 0x8000000000000000;
LABEL_161:
              v256 = v187;
              v257 = v184;
              goto LABEL_191;
            }

            v86 = *(v17 + 32);
          }

          v115 = v86;

          sub_A7B00(1, v17);
          v117 = v116;
          v119 = v118;
          v121 = v120;

          sub_A764C(v117, v119, v121);
          v82 = v122;
          swift_unknownObjectRelease();
          LODWORD(v81) = 0;
          v578 = v115;
        }

        else
        {
          v82 = sub_8FF78(v17);
        }
      }
    }

    v582[226] = v578;
    v123 = [v83 operation];
    if (v123 == &dword_0 + 2)
    {
      v554 = v81;
      v589 = v82;
      v130 = *(sub_9017C(v17) + 2);

      if (v130)
      {
        v131 = v582[147];
        v132 = v582[108];
        v133 = v582[107];
        v134 = v582[106];
        v135 = sub_9017C(v17);
        sub_E96AC(v135, v132);

        sub_104F30();
        (*(v133 + 8))(v132, v134);
      }

      v188 = v582[105];
      v189 = v582[104];
      v190 = v582[103];
      sub_106360();
      v191 = sub_106340();
      (*(v189 + 8))(v188, v190);
      if (v191)
      {

        if ((v17 & 0xC000000000000001) != 0)
        {
          v193 = sub_1071C0();
          v192 = v582;
          v1 = v571;
        }

        else
        {
          v192 = v582;
          v1 = v571;
          if (!*(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_258;
          }

          v193 = *(v17 + 32);
        }

        v194 = [v193 sleepAlarmAttribute];

        if (v194)
        {

          sub_A7B00(1, v17);
          v196 = v195;
          v198 = v197;
          v200 = v199;

          v201 = sub_A7804(v196, v198, v200);
          swift_unknownObjectRelease();
        }

        else
        {
          v201 = sub_90398(v17);
        }

        v192[246] = v201;
        if (qword_136EB0 != -1)
        {
          swift_once();
        }

        v384 = v192[89];
        v385 = v192[87];
        sub_25E4(&qword_137880, &unk_108290);
        v373 = swift_allocObject();
        v192[247] = v373;
        *(v373 + 16) = xmmword_1082D0;
        *(v373 + 32) = 0xD000000000000012;
        *(v373 + 40) = 0x800000000010C5F0;
        *(v373 + 48) = v577;
        *(v373 + 72) = &type metadata for Bool;
        *(v373 + 80) = 0xD000000000000017;
        *(v373 + 88) = 0x800000000010C650;
        *(v373 + 96) = v568;
        *(v373 + 120) = &type metadata for Bool;
        *(v373 + 128) = 0xD000000000000016;
        *(v373 + 136) = 0x800000000010C630;
        *(v373 + 144) = v565;
        *(v373 + 168) = &type metadata for Bool;
        *(v373 + 176) = 0xD000000000000018;
        *(v373 + 184) = 0x800000000010C5D0;
        *(v373 + 192) = v559;
        *(v373 + 216) = &type metadata for Bool;
        *(v373 + 224) = 0xD000000000000016;
        *(v373 + 232) = 0x800000000010C610;
        *(v373 + 240) = v562;
        *(v373 + 264) = &type metadata for Bool;
        *(v373 + 272) = 0xD000000000000012;
        *(v373 + 280) = 0x800000000010C670;
        sub_14994(v384, v385, &qword_137598, &unk_107EB0);
        v386 = sub_106160();
        v387 = *(v386 - 8);
        v388 = (*(v387 + 48))(v385, 1, v386);
        v389 = v192[87];
        if (v388 == 1)
        {
          sub_16F70(v192[87], &qword_137598, &unk_107EB0);
          *(v373 + 288) = 0u;
          *(v373 + 304) = 0u;
        }

        else
        {
          *(v373 + 312) = v386;
          v390 = sub_1A924((v373 + 288));
          (*(v387 + 32))(v390, v389, v386);
        }

        *(v373 + 320) = 0xD000000000000011;
        *(v373 + 328) = 0x800000000010C690;
        v391 = 0;
        if (v1)
        {
          v391 = sub_1060A0();
        }

        else
        {
          *(v373 + 344) = 0;
          *(v373 + 352) = 0;
        }

        v192[248] = v1;
        *(v373 + 336) = v1;
        v380 = "ModifyAll#DisableConcise";
        *(v373 + 360) = v391;
        *(v373 + 368) = 0xD000000000000010;
        *(v373 + 376) = 0x800000000010C5B0;
        *(v373 + 384) = 1;
        *(v373 + 408) = &type metadata for Bool;
        strcpy((v373 + 416), "isMixedAlarms");
        *(v373 + 430) = -4864;
        *(v373 + 456) = &type metadata for Bool;
        *(v373 + 432) = 0;
        v392 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
        v590 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

        v393 = swift_task_alloc();
        v192[249] = v393;
        *v393 = v192;
        v393[1] = sub_A0334;
        v383 = 0xD000000000000037;
        goto LABEL_190;
      }

      v202 = v582[136];
      v203 = v582[133];
      v204 = v582[132];
      v205 = v582[131];
      v206 = v582[130];
      v207 = v582[129];
      v208 = v582[128];

      (*(v204 + 104))(v203, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v205);
      (*(v207 + 16))(v206, v574, v208);
      mach_absolute_time();
      sub_106330();
      if (v554)
      {

        v209 = sub_106D10();
        v210 = sub_106FC0();
        if (os_log_type_enabled(v209, v210))
        {
          v211 = swift_slowAlloc();
          *v211 = 0;
          _os_log_impl(&dword_0, v209, v210, "Hitting RF path for ChangeAlarmStatus, all alarms, large list.", v211, 2u);
        }

        if (qword_136EC0 != -1)
        {
          swift_once();
        }

        v212 = v582[89];
        v213 = v582[78];
        v214 = v582[77];
        v215 = *(v214 + 44);
        v216 = sub_106160();
        (*(*(v216 - 8) + 56))(v213 + v215, 1, 1, v216);
        *v213 = 256;
        *(v213 + 2) = v559;
        *(v213 + 3) = v577;
        *(v213 + 4) = v562;
        *(v213 + 5) = v565;
        *(v213 + 6) = v568;
        v217 = *(v214 + 48);
        *(v213 + v217) = 0;
        sub_7C2E0(v212, v213 + v215);
        *(v213 + v217) = v571;
        v183 = "dledIntentStrategy.swift";

        v184 = sub_2074C();
        v582[253] = v184;
        v218 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
        v590 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
        v219 = swift_task_alloc();
        v582[254] = v219;
        *v219 = v582;
        v219[1] = sub_A1124;
        v187 = 0xD000000000000018;
        goto LABEL_160;
      }

      v239 = sub_106D10();
      v240 = sub_106FC0();
      if (os_log_type_enabled(v239, v240))
      {
        v241 = swift_slowAlloc();
        *v241 = 0;
        _os_log_impl(&dword_0, v239, v240, "Hitting RF path for ChangeAlarmStatus, multiple alarms.", v241, 2u);
      }

      if (qword_136EC0 != -1)
      {
        swift_once();
      }

      v242 = v582[102];
      v550 = v582[101];
      v556 = v582[100];
      v243 = v582[89];
      v244 = v582[76];
      v245 = v582[75];
      v546 = v582[73];
      v246 = sub_106160();
      v247 = *(*(v246 - 8) + 56);
      v247(v244, 1, 1, v246);
      v248 = v245[16];
      v247(v244 + v248, 1, 1, v246);
      v249 = v245[5];
      *(v244 + v249) = 0;
      *(v244 + v245[6]) = 0;
      *(v244 + v245[7]) = 0;
      *(v244 + v245[8]) = 1;
      *(v244 + v245[9]) = v559;
      *(v244 + v245[10]) = v577;
      *(v244 + v245[11]) = v562;
      *(v244 + v245[12]) = v565;
      *(v244 + v245[13]) = v568;
      *(v244 + v245[14]) = v589;
      v250 = v245[15];
      *(v244 + v250) = 0;
      v251 = v245[17];
      *(v244 + v251) = 0;
      sub_7C2E0(v243, v244 + v248);
      *(v244 + v251) = v571;

      sub_105160();
      *(v244 + v249) = sub_1060F0();
      sub_106210();
      v252 = sub_75DD4(0, v242, 0);
      (*(v550 + 8))(v242, v556);
      *(v244 + v250) = v252;
      v234 = "AlarmBase#RecurrenceLabelShort";
      v235 = sub_20734();
      v582[259] = v235;
      v253 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
      v590 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
      v254 = swift_task_alloc();
      v582[260] = v254;
      *v254 = v582;
      v254[1] = sub_A1E10;
      v238 = 0xD000000000000011;
    }

    else
    {
      if (v123 != &dword_0 + 1)
      {
        v136 = v582[129];
        v137 = v582[128];
        v138 = v582[110];
        v139 = v582[109];
        v140 = sub_106750();
        v582[5] = v140;
        v582[6] = &protocol witness table for ABCReport;
        v141 = sub_1A924(v582 + 2);
        v142 = enum case for UnhandledAbortSubtype.unknownChangeAlarmOperation(_:);
        v143 = sub_106680();
        (*(*(v143 - 8) + 104))(v141, v142, v143);
        (*(*(v140 - 8) + 104))(v141, enum case for ABCReport.unhandledAbort(_:), v140);
        sub_1064D0();
        sub_2738(v582 + 2);
        v593 = 0;
        v594 = 0xE000000000000000;
        sub_107190(65);
        v598._countAndFlagsBits = 0xD000000000000033;
        v598._object = 0x800000000010D850;
        sub_106E80(v598);
        [v83 operation];
        v582[67] = sub_1067B0();
        v599._countAndFlagsBits = sub_107340();
        sub_106E80(v599);

        v600._countAndFlagsBits = 0x6F707075736E7520;
        v600._object = 0xEC00000064657472;
        sub_106E80(v600);
        v144 = v593;
        v145 = v594;
        (*(v136 + 16))(v138, v574, v137);
        (*(v136 + 56))(v138, 0, 1, v137);
        sub_14994(v138, v139, &qword_137DB8, &unk_1085B0);
        LODWORD(v141) = (*(v136 + 48))(v139, 1, v137);

        v146 = v582[109];
        if (v141 == 1)
        {
          sub_16F70(v582[109], &qword_137DB8, &unk_1085B0);
        }

        else
        {

          v147 = sub_106D10();
          v148 = sub_106FB0();

          if (os_log_type_enabled(v147, v148))
          {
            v149 = swift_slowAlloc();
            v595[0] = swift_slowAlloc();
            *v149 = 136315650;
            v150 = sub_1071A0();
            v152 = sub_722E8(v150, v151, v595);

            *(v149 + 4) = v152;
            *(v149 + 12) = 2048;
            *(v149 + 14) = 516;
            *(v149 + 22) = 2080;
            *(v149 + 24) = sub_722E8(v144, v145, v595);
            _os_log_impl(&dword_0, v147, v148, "FatalError at %s:%lu - %s", v149, 0x20u);
            swift_arrayDestroy();
          }

          (*(v582[129] + 8))(v582[109], v582[128]);
        }

        sub_104C90();
        return sub_107250();
      }

      v553 = v81;
      v588 = v82;
      v124 = sub_9017C(v17);
      if (*(v124 + 2))
      {
        v125 = v582;
        v126 = v582[147];
        v127 = v582[108];
        v128 = v582[107];
        v129 = v582[106];
        sub_E92B8(v124, v127);

        sub_104F30();
        (*(v128 + 8))(v127, v129);
      }

      else
      {

        v125 = v582;
      }

      v153 = v125[105];
      v154 = v125[104];
      v155 = v125[103];
      sub_106360();
      v156 = sub_106340();
      (*(v154 + 8))(v153, v155);
      if (v156)
      {

        if ((v17 & 0xC000000000000001) != 0)
        {
          v158 = sub_1071C0();
          v157 = v582;
          v1 = v571;
          goto LABEL_81;
        }

        v157 = v582;
        v1 = v571;
        if (*(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
        {
          v158 = *(v17 + 32);
LABEL_81:
          v159 = [v158 sleepAlarmAttribute];

          if (v159)
          {

            sub_A7B00(1, v17);
            v161 = v160;
            v163 = v162;
            v165 = v164;

            v166 = sub_A7804(v161, v163, v165);
            swift_unknownObjectRelease();
          }

          else
          {
            v166 = sub_90398(v17);
          }

          v157[227] = v166;
          if (qword_136EB0 != -1)
          {
            swift_once();
          }

          v371 = v157[89];
          v372 = v157[88];
          sub_25E4(&qword_137880, &unk_108290);
          v373 = swift_allocObject();
          v157[228] = v373;
          *(v373 + 16) = xmmword_1082D0;
          *(v373 + 32) = 0xD000000000000012;
          *(v373 + 40) = 0x800000000010C5F0;
          *(v373 + 48) = v577;
          *(v373 + 72) = &type metadata for Bool;
          *(v373 + 80) = 0xD000000000000017;
          *(v373 + 88) = 0x800000000010C650;
          *(v373 + 96) = v568;
          *(v373 + 120) = &type metadata for Bool;
          *(v373 + 128) = 0xD000000000000016;
          *(v373 + 136) = 0x800000000010C630;
          *(v373 + 144) = v565;
          *(v373 + 168) = &type metadata for Bool;
          *(v373 + 176) = 0xD000000000000018;
          *(v373 + 184) = 0x800000000010C5D0;
          *(v373 + 192) = v559;
          *(v373 + 216) = &type metadata for Bool;
          *(v373 + 224) = 0xD000000000000016;
          *(v373 + 232) = 0x800000000010C610;
          *(v373 + 240) = v562;
          *(v373 + 264) = &type metadata for Bool;
          *(v373 + 272) = 0xD000000000000012;
          *(v373 + 280) = 0x800000000010C670;
          sub_14994(v371, v372, &qword_137598, &unk_107EB0);
          v374 = sub_106160();
          v375 = *(v374 - 8);
          v376 = (*(v375 + 48))(v372, 1, v374);
          v377 = v157[88];
          if (v376 == 1)
          {
            sub_16F70(v157[88], &qword_137598, &unk_107EB0);
            *(v373 + 288) = 0u;
            *(v373 + 304) = 0u;
          }

          else
          {
            *(v373 + 312) = v374;
            v378 = sub_1A924((v373 + 288));
            (*(v375 + 32))(v378, v377, v374);
          }

          *(v373 + 320) = 0xD000000000000011;
          *(v373 + 328) = 0x800000000010C690;
          v379 = 0;
          if (v1)
          {
            v379 = sub_1060A0();
          }

          else
          {
            *(v373 + 344) = 0;
            *(v373 + 352) = 0;
          }

          v157[229] = v1;
          *(v373 + 336) = v1;
          v380 = "ModifyAll#EnableConcise";
          *(v373 + 360) = v379;
          *(v373 + 368) = 0xD000000000000010;
          *(v373 + 376) = 0x800000000010C5B0;
          *(v373 + 384) = 1;
          *(v373 + 408) = &type metadata for Bool;
          strcpy((v373 + 416), "isMixedAlarms");
          *(v373 + 430) = -4864;
          *(v373 + 456) = &type metadata for Bool;
          *(v373 + 432) = 0;
          v381 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
          v590 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

          v382 = swift_task_alloc();
          v157[230] = v382;
          *v382 = v157;
          v382[1] = sub_9DF20;
          v383 = 0xD000000000000036;
          goto LABEL_190;
        }

        __break(1u);
LABEL_258:
        __break(1u);
LABEL_259:
        swift_once();
LABEL_139:
        v310 = v1[102];
        v311 = v1[101];
        v312 = v1[100];

        sub_106210();
        v313 = sub_75DD4(0, v310, 0);
        v1[172] = v313;
        (*(v311 + 8))(v310, v312);
        v183 = "s#SuccessEnabled";
        v184 = sub_75DC8(0, v578, v313);
        v1[173] = v184;
        v314 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
        v590 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
        v315 = swift_task_alloc();
        v1[174] = v315;
        *v315 = v1;
        v315[1] = sub_97928;
        v187 = 0xD000000000000025;
        goto LABEL_160;
      }

      v167 = v125[137];
      v168 = v125[133];
      v169 = v125[132];
      v170 = v125[131];
      v171 = v125[130];
      v172 = v125[129];
      v173 = v125[128];

      (*(v169 + 104))(v168, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v170);
      (*(v172 + 16))(v171, v574, v173);
      mach_absolute_time();
      sub_106330();
      if (v553)
      {

        v174 = sub_106D10();
        v175 = sub_106FC0();
        v17 = v571;
        if (os_log_type_enabled(v174, v175))
        {
          v176 = swift_slowAlloc();
          *v176 = 0;
          _os_log_impl(&dword_0, v174, v175, "Hitting RF path for ChangeAlarmStatus, all alarms, large list.", v176, 2u);
        }

        v7 = v582;
        if (qword_136EC0 == -1)
        {
          goto LABEL_87;
        }

        goto LABEL_261;
      }

      v220 = sub_106D10();
      v221 = sub_106FC0();
      if (os_log_type_enabled(v220, v221))
      {
        v222 = swift_slowAlloc();
        *v222 = 0;
        _os_log_impl(&dword_0, v220, v221, "Hitting RF path for ChangeAlarmStatus, multiple alarms.", v222, 2u);
      }

      if (qword_136EC0 != -1)
      {
        swift_once();
      }

      v223 = v582[102];
      v549 = v582[101];
      v555 = v582[100];
      v224 = v582[89];
      v225 = v582[80];
      v226 = v582[79];
      v545 = v582[73];
      v227 = sub_106160();
      v228 = *(*(v227 - 8) + 56);
      v228(v225, 1, 1, v227);
      v229 = v226[16];
      v228(v225 + v229, 1, 1, v227);
      v230 = v226[5];
      *(v225 + v230) = 0;
      *(v225 + v226[6]) = 0;
      *(v225 + v226[7]) = 0;
      *(v225 + v226[8]) = 1;
      *(v225 + v226[9]) = v559;
      *(v225 + v226[10]) = v577;
      *(v225 + v226[11]) = v562;
      *(v225 + v226[12]) = v565;
      *(v225 + v226[13]) = v568;
      *(v225 + v226[14]) = v588;
      v231 = v226[15];
      *(v225 + v231) = 0;
      v232 = v226[17];
      *(v225 + v232) = 0;
      sub_7C2E0(v224, v225 + v229);
      *(v225 + v232) = v571;

      sub_105160();
      *(v225 + v230) = sub_1060F0();
      sub_106210();
      v233 = sub_75DD4(0, v223, 0);
      (*(v549 + 8))(v223, v555);
      *(v225 + v231) = v233;
      v234 = "ModifyAll#Disable";
      v235 = sub_20764();
      v582[240] = v235;
      v236 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
      v590 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
      v237 = swift_task_alloc();
      v582[241] = v237;
      *v237 = v582;
      v237[1] = sub_9F9FC;
      v238 = 0xD000000000000010;
    }

    v255 = v234 | 0x8000000000000000;
    v256 = v238;
    v257 = v235;
LABEL_191:

    return v590(v256, v255, v257);
  }

  v19 = v17 & 0xC000000000000001;
  if ((v17 & 0xC000000000000001) == 0)
  {
    if (*(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
    {
      v20 = *(v17 + 32);
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_251;
  }

  v20 = sub_1071C0();
LABEL_15:
  v21 = v20;
  v1[162] = v20;
  v22 = [v585 operation];
  if (v22 == &dword_0 + 2)
  {
    if (v19)
    {
      v87 = sub_1071C0();
    }

    else
    {
      v87 = *(v17 + 32);
    }

    v109 = v87;
    v110 = [v87 identifier];

    if (v110)
    {
      v111 = sub_106E20();
      v113 = v112;

      if (v19)
      {
        v114 = sub_1071C0();
      }

      else
      {
        v114 = *(v17 + 32);
      }

      v268 = v114;

      v269 = [v268 undoable];

      v270.super.super.isa = sub_107090(1).super.super.isa;
      if (!v269)
      {

        goto LABEL_141;
      }

      v271 = sub_1070A0();

      if (v271)
      {
        v272 = v1[147];
        v273 = v1[108];
        v274 = v2;
        v275 = v1[107];
        v276 = v1[106];
        sub_25E4(&qword_1376D0, &unk_1080E0);
        v277 = swift_allocObject();
        *(v277 + 16) = xmmword_107FC0;
        *(v277 + 32) = v111;
        *(v277 + 40) = v113;
        sub_E96AC(v277, v273);

        sub_104F30();
        (*(v275 + 8))(v273, v276);
        v2 = v274;
LABEL_141:
        v316 = v2;
        v317 = sub_106D10();
        v318 = sub_106FC0();
        if (os_log_type_enabled(v317, v318))
        {
          v319 = swift_slowAlloc();
          *v319 = 0;
          _os_log_impl(&dword_0, v317, v318, "Hitting RF path for ChangeAlarmStatus, disable, 1 alarm.", v319, 2u);
        }

        v320 = [v21 sleepAlarmAttribute];
        v321 = v1[105];
        v322 = v1[104];
        v323 = v1[103];
        if (v320)
        {

          sub_106360();
          v324 = sub_106340();
          (*(v322 + 8))(v321, v323);
          if (!v324)
          {
            v344 = v1[139];
            v345 = v1[130];
            v346 = v1[129];
            v347 = v1[128];
            (*(v1[132] + 104))(v1[133], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v1[131]);
            (*(v346 + 16))(v345, v316, v347);
            mach_absolute_time();
            sub_106330();
            if (qword_136EB8 != -1)
            {
              swift_once();
            }

            v348 = v1[102];
            v349 = v1[101];
            v350 = v1[100];

            sub_106210();
            v351 = sub_75DD4(0, v348, 0);
            v1[204] = v351;
            (*(v349 + 8))(v348, v350);
            v183 = "s#SuccessDisabled";
            v184 = sub_75DC8(0, v578, v351);
            v1[205] = v184;
            v352 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
            v590 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
            v353 = swift_task_alloc();
            v1[206] = v353;
            *v353 = v1;
            v353[1] = sub_9B7E0;
            v187 = 0xD000000000000026;
            goto LABEL_160;
          }

          v325 = v1[102];
          v326 = v1[101];
          v327 = v1[100];
          sub_106210();
          v328 = sub_75DD4(0, v325, 0);
          v1[191] = v328;
          (*(v326 + 8))(v325, v327);
          if (v328)
          {
            if (qword_136EB0 != -1)
            {
              swift_once();
            }

            v329 = swift_task_alloc();
            v1[192] = v329;
            *v329 = v1;
            v329[1] = sub_99AE8;

            return sub_B8D8C(v328);
          }

          v398 = sub_106D10();
          v399 = sub_106FB0();
          if (!os_log_type_enabled(v398, v399))
          {
            goto LABEL_208;
          }

          v400 = swift_slowAlloc();
          *v400 = 0;
          v401 = "Can NOT retrieve sleep alarm data.";
          goto LABEL_207;
        }

        v330 = v1[105];
        sub_106360();
        v331 = sub_106340();
        (*(v322 + 8))(v321, v323);
        if (!v331)
        {
          v361 = v1[138];
          v362 = v1[130];
          v363 = v1[129];
          v364 = v1[128];
          (*(v1[132] + 104))(v1[133], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v1[131]);
          (*(v363 + 16))(v362, v316, v364);
          mach_absolute_time();
          sub_106330();
          if (qword_136EB8 != -1)
          {
            swift_once();
          }

          v365 = v1[102];
          v366 = v1[101];
          v367 = v1[100];
          sub_106210();
          v368 = sub_75DD4(0, v365, 0);
          v1[217] = v368;
          (*(v366 + 8))(v365, v367);
          v184 = sub_75DC8(v368, v578, 0);
          v1[218] = v184;
          v369 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
          v590 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));

          v370 = swift_task_alloc();
          v1[219] = v370;
          *v370 = v1;
          v370[1] = sub_9D2AC;
          v187 = 0xD000000000000021;
          v255 = 0x800000000010CFF0;
          goto LABEL_161;
        }

        v332 = v1[102];
        v333 = v1[101];
        v334 = v1[100];
        sub_106210();
        v335 = sub_75DD4(0, v332, 0);
        v1[211] = v335;
        (*(v333 + 8))(v332, v334);
        if (!v335)
        {
          v398 = sub_106D10();
          v399 = sub_106FB0();
          if (!os_log_type_enabled(v398, v399))
          {
LABEL_208:

            sub_25E4(&qword_137DD8, &unk_1085D0);
            sub_26E48();
            v342 = swift_allocError();
            *v422 = 3;
            swift_willThrow();
LABEL_209:
            v423 = v1[148];
            swift_errorRetain();
            v424 = sub_106D10();
            v425 = sub_106FB0();

            if (os_log_type_enabled(v424, v425))
            {
              v426 = swift_slowAlloc();
              v427 = swift_slowAlloc();
              v593 = v427;
              *v426 = 136315138;
              v1[70] = v342;
              swift_errorRetain();
              sub_25E4(&qword_1376C0, &unk_1080D0);
              v428 = sub_106E30();
              v430 = sub_722E8(v428, v429, &v593);

              *(v426 + 4) = v430;
              _os_log_impl(&dword_0, v424, v425, "Error in RF path: %s", v426, 0xCu);
              sub_2738(v427);
            }

            v411 = v1[162];
            v431 = v1[151];
            v413 = v1[150];
            v414 = v1[149];
            v591 = v582[147];
            v415 = v582[146];
            v416 = v582[145];
            v432 = sub_106750();
            v582[35] = v432;
            v582[36] = &protocol witness table for ABCReport;
            v433 = sub_1A924(v582 + 32);
            *v433 = sub_1045F0();
            v434 = enum case for DialogLayerErrorSubType.dialogError(_:);
            v435 = sub_106690();
            (*(*(v435 - 8) + 104))(v433, v434, v435);
            (*(*(v432 - 8) + 104))(v433, enum case for ABCReport.dialog(_:), v432);
            sub_1064D0();
            v421 = v582 + 32;
            goto LABEL_212;
          }

          v400 = swift_slowAlloc();
          *v400 = 0;
          v401 = "Can NOT retrieve alarm data.";
LABEL_207:
          _os_log_impl(&dword_0, v398, v399, v401, v400, 2u);

          goto LABEL_208;
        }

        v336 = v1[95];
        v337 = v1[94];
        v338 = v1[90];
        sub_769D4(0, 0xE000000000000000, 0, 0xE000000000000000, v338);
        if ((*(v336 + 48))(v338, 1, v337) == 1)
        {
          sub_16F70(v1[90], &qword_137DC0, &unk_10A0A0);
          v339 = sub_106D10();
          v340 = sub_106FB0();
          if (os_log_type_enabled(v339, v340))
          {
            v341 = swift_slowAlloc();
            *v341 = 0;
            _os_log_impl(&dword_0, v339, v340, "Can NOT retrieve alarm snippet model.", v341, 2u);
          }

          sub_25E4(&qword_137DD8, &unk_1085D0);
          sub_26E48();
          v342 = swift_allocError();
          *v343 = 3;
          swift_willThrow();

          goto LABEL_209;
        }

        (*(v1[95] + 32))(v1[96], v1[90], v1[94]);
        if (qword_136EB0 != -1)
        {
          swift_once();
        }

        v380 = "n ChangeAlarmStatusIntent";

        sub_25E4(&qword_137880, &unk_108290);
        v373 = swift_allocObject();
        v1[212] = v373;
        *(v373 + 16) = xmmword_107FC0;
        *(v373 + 32) = 0x6D72616C61;
        *(v373 + 40) = 0xE500000000000000;
        *(v373 + 72) = type metadata accessor for AlarmAlarm(0);
        *(v373 + 48) = v335;
        v438 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
        v590 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

        v439 = swift_task_alloc();
        v1[213] = v439;
        *v439 = v1;
        v439[1] = sub_9C454;
        v383 = 0xD00000000000002FLL;
LABEL_190:
        v255 = v380 | 0x8000000000000000;
        v256 = v383;
        v257 = v373;
        goto LABEL_191;
      }
    }

    goto LABEL_141;
  }

  if (v22 != &dword_0 + 1)
  {
    v88 = v1[129];
    v89 = v1[128];
    v90 = v1[112];
    v91 = v1[111];
    v92 = sub_106750();
    v1[30] = v92;
    v1[31] = &protocol witness table for ABCReport;
    v93 = sub_1A924(v1 + 27);
    v94 = enum case for UnhandledAbortSubtype.unknownChangeAlarmOperation(_:);
    v95 = sub_106680();
    (*(*(v95 - 8) + 104))(v93, v94, v95);
    (*(*(v92 - 8) + 104))(v93, enum case for ABCReport.unhandledAbort(_:), v92);
    sub_1064D0();
    sub_2738(v1 + 27);
    (*(v88 + 16))(v90, v2, v89);
    (*(v88 + 56))(v90, 0, 1, v89);
    sub_14994(v90, v91, &qword_137DB8, &unk_1085B0);
    if ((*(v88 + 48))(v91, 1, v89) == 1)
    {
      sub_16F70(v1[111], &qword_137DB8, &unk_1085B0);
    }

    else
    {
      v96 = v1[111];
      v97 = sub_106D10();
      v98 = sub_106FB0();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v593 = swift_slowAlloc();
        *v99 = 136315650;
        v100 = sub_1071A0();
        v102 = sub_722E8(v100, v101, &v593);

        *(v99 + 4) = v102;
        *(v99 + 12) = 2048;
        *(v99 + 14) = 270;
        *(v99 + 22) = 2080;
        *(v99 + 24) = sub_722E8(0xD000000000000039, 0x800000000010D9E0, &v593);
        _os_log_impl(&dword_0, v97, v98, "FatalError at %s:%lu - %s", v99, 0x20u);
        swift_arrayDestroy();
      }

      (*(v1[129] + 8))(v1[111], v1[128]);
    }

LABEL_247:
    sub_104C90();
    return sub_107250();
  }

  if (v19)
  {
    v23 = sub_1071C0();
  }

  else
  {
    v23 = *(v17 + 32);
  }

  v103 = v23;
  v104 = [v23 identifier];

  if (!v104)
  {
    goto LABEL_121;
  }

  v105 = sub_106E20();
  v107 = v106;

  if (v19)
  {
    v108 = sub_1071C0();
  }

  else
  {
    v108 = *(v17 + 32);
  }

  v258 = v108;

  v259 = [v258 undoable];

  v260.super.super.isa = sub_107090(1).super.super.isa;
  if (!v259)
  {

    goto LABEL_122;
  }

  v261 = sub_1070A0();

  if ((v261 & 1) == 0)
  {
LABEL_121:

    goto LABEL_122;
  }

  v262 = v1[147];
  v263 = v1[108];
  v264 = v2;
  v265 = v1[107];
  v266 = v1[106];
  sub_25E4(&qword_1376D0, &unk_1080E0);
  v267 = swift_allocObject();
  *(v267 + 16) = xmmword_107FC0;
  *(v267 + 32) = v105;
  *(v267 + 40) = v107;
  sub_E92B8(v267, v263);

  sub_104F30();
  (*(v265 + 8))(v263, v266);
  v2 = v264;
LABEL_122:
  v278 = v2;
  v279 = sub_106D10();
  v280 = sub_106FC0();
  if (os_log_type_enabled(v279, v280))
  {
    v281 = swift_slowAlloc();
    *v281 = 0;
    _os_log_impl(&dword_0, v279, v280, "Hitting RF path for ChangeAlarmStatus, 1 alarm.", v281, 2u);
  }

  v282 = [v21 sleepAlarmAttribute];
  v283 = v1[105];
  v284 = v1[104];
  v285 = v1[103];
  if (v282)
  {

    sub_106360();
    v286 = sub_106340();
    (*(v284 + 8))(v283, v285);
    if (v286)
    {
      v287 = v1[102];
      v288 = v1[101];
      v289 = v1[100];
      sub_106210();
      v290 = sub_75DD4(0, v287, 0);
      v1[163] = v290;
      (*(v288 + 8))(v287, v289);
      if (v290)
      {
        if (qword_136EB0 != -1)
        {
          swift_once();
        }

        v291 = swift_task_alloc();
        v1[164] = v291;
        *v291 = v1;
        v291[1] = sub_96314;

        return sub_B9050(v290);
      }

      v394 = sub_106D10();
      v395 = sub_106FB0();
      if (!os_log_type_enabled(v394, v395))
      {
        goto LABEL_201;
      }

      v396 = swift_slowAlloc();
      *v396 = 0;
      v397 = "Can NOT retrieve sleep alarm data.";
      goto LABEL_200;
    }

    v306 = v1[141];
    v307 = v1[130];
    v308 = v1[129];
    v309 = v1[128];
    (*(v1[132] + 104))(v1[133], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v1[131]);
    (*(v308 + 16))(v307, v278, v309);
    mach_absolute_time();
    sub_106330();
    if (qword_136EB8 == -1)
    {
      goto LABEL_139;
    }

    goto LABEL_259;
  }

  v292 = v1[105];
  sub_106360();
  v293 = sub_106340();
  (*(v284 + 8))(v283, v285);
  if (v293)
  {
    v294 = v1[102];
    v295 = v1[101];
    v296 = v1[100];
    sub_106210();
    v297 = sub_75DD4(0, v294, 0);
    v1[179] = v297;
    (*(v295 + 8))(v294, v296);
    if (!v297)
    {
      v394 = sub_106D10();
      v395 = sub_106FB0();
      if (!os_log_type_enabled(v394, v395))
      {
LABEL_201:

        sub_25E4(&qword_137DD8, &unk_1085D0);
        sub_26E48();
        v304 = swift_allocError();
        *v402 = 3;
        swift_willThrow();
LABEL_202:
        v403 = v1[148];
        swift_errorRetain();
        v404 = sub_106D10();
        v405 = sub_106FB0();

        if (os_log_type_enabled(v404, v405))
        {
          v406 = swift_slowAlloc();
          v407 = swift_slowAlloc();
          v593 = v407;
          *v406 = 136315138;
          v1[71] = v304;
          swift_errorRetain();
          sub_25E4(&qword_1376C0, &unk_1080D0);
          v408 = sub_106E30();
          v410 = sub_722E8(v408, v409, &v593);

          *(v406 + 4) = v410;
          _os_log_impl(&dword_0, v404, v405, "Error in RF path: %s", v406, 0xCu);
          sub_2738(v407);
        }

        v411 = v1[162];
        v412 = v1[151];
        v413 = v1[150];
        v414 = v1[149];
        v591 = v582[147];
        v415 = v582[146];
        v416 = v582[145];
        v417 = sub_106750();
        v582[50] = v417;
        v582[51] = &protocol witness table for ABCReport;
        v418 = sub_1A924(v582 + 47);
        *v418 = sub_1045F0();
        v419 = enum case for DialogLayerErrorSubType.dialogError(_:);
        v420 = sub_106690();
        (*(*(v420 - 8) + 104))(v418, v419, v420);
        (*(*(v417 - 8) + 104))(v418, enum case for ABCReport.dialog(_:), v417);
        sub_1064D0();
        v421 = v582 + 47;
LABEL_212:
        sub_2738(v421);
        swift_willThrow();

        v1 = v582;

        (*(v415 + 8))(v591, v416);
        goto LABEL_23;
      }

      v396 = swift_slowAlloc();
      *v396 = 0;
      v397 = "Can NOT retrieve alarm data.";
LABEL_200:
      _os_log_impl(&dword_0, v394, v395, v397, v396, 2u);

      goto LABEL_201;
    }

    v298 = v1[95];
    v299 = v1[94];
    v300 = v1[92];
    sub_769D4(0, 0xE000000000000000, 0, 0xE000000000000000, v300);
    if ((*(v298 + 48))(v300, 1, v299) == 1)
    {
      sub_16F70(v1[92], &qword_137DC0, &unk_10A0A0);
      v301 = sub_106D10();
      v302 = sub_106FB0();
      if (os_log_type_enabled(v301, v302))
      {
        v303 = swift_slowAlloc();
        *v303 = 0;
        _os_log_impl(&dword_0, v301, v302, "Can NOT retrieve alarm snippet model.", v303, 2u);
      }

      sub_25E4(&qword_137DD8, &unk_1085D0);
      sub_26E48();
      v304 = swift_allocError();
      *v305 = 3;
      swift_willThrow();

      goto LABEL_202;
    }

    (*(v1[95] + 32))(v1[98], v1[92], v1[94]);
    if (qword_136EB0 != -1)
    {
      swift_once();
    }

    v380 = "s#IntentHandledResponseDisabled";

    sub_25E4(&qword_137880, &unk_108290);
    v373 = swift_allocObject();
    v1[180] = v373;
    *(v373 + 16) = xmmword_107FC0;
    *(v373 + 32) = 0x6D72616C61;
    *(v373 + 40) = 0xE500000000000000;
    *(v373 + 72) = type metadata accessor for AlarmAlarm(0);
    *(v373 + 48) = v297;
    v436 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
    v590 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

    v437 = swift_task_alloc();
    v1[181] = v437;
    *v437 = v1;
    v437[1] = sub_9859C;
    v383 = 0xD00000000000002ELL;
    goto LABEL_190;
  }

  v354 = v1[140];
  v355 = v1[130];
  v356 = v1[129];
  v357 = v1[128];
  (*(v1[132] + 104))(v1[133], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v1[131]);
  (*(v356 + 16))(v355, v278, v357);
  mach_absolute_time();
  sub_106330();
  if (qword_136EB8 != -1)
  {
    swift_once();
  }

  v358 = v1[73];
  v359 = swift_task_alloc();
  v1[185] = v359;
  *(v359 + 16) = v21;
  *(v359 + 24) = v358;
  v360 = swift_task_alloc();
  v1[186] = v360;
  *v360 = v1;
  v360[1] = sub_993F4;

  return sub_D3674(sub_A7CD4, v359);
}

uint64_t sub_9558C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1216);
  v7 = *v2;
  *(v3 + 1224) = a1;
  *(v3 + 1232) = v1;

  if (v1)
  {
    v5 = sub_A2748;
  }

  else
  {
    v5 = sub_956A4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_956A4()
{
  v1 = v0[127];
  sub_104CF0();
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v3 = swift_task_alloc();
  v0[155] = v3;
  *v3 = v0;
  v3[1] = sub_95758;
  v4 = v0[153];
  v5 = v0[147];
  v6 = v0[144];
  v7 = v0[127];
  v8 = v0[72];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v8, v7, v5, v6, 0);
}

uint64_t sub_95758()
{
  v2 = *v1;
  v3 = *(*v1 + 1240);
  v4 = *v1;
  *(*v1 + 1248) = v0;

  v5 = v2[153];
  (*(v2[116] + 8))(v2[127], v2[115]);

  if (v0)
  {
    v6 = sub_A2AC8;
  }

  else
  {
    v6 = sub_958D8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_958D8()
{
  v1 = *(v0 + 1208);
  v2 = *(v0 + 1192);
  v3 = *(v0 + 1176);
  v4 = *(v0 + 1168);
  v5 = *(v0 + 1160);
  v6 = *(v0 + 1152);
  v7 = *(v0 + 1080);
  v8 = *(v0 + 1072);

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  v9 = *(v0 + 1176);
  v10 = *(v0 + 1152);
  v11 = *(v0 + 1144);
  v12 = *(v0 + 1136);
  v13 = *(v0 + 1128);
  v14 = *(v0 + 1120);
  v15 = *(v0 + 1112);
  v16 = *(v0 + 1104);
  v17 = *(v0 + 1096);
  v18 = *(v0 + 1088);
  v21 = *(v0 + 1064);
  v22 = *(v0 + 1040);
  v23 = *(v0 + 1016);
  v24 = *(v0 + 1008);
  v25 = *(v0 + 1000);
  v26 = *(v0 + 992);
  v27 = *(v0 + 984);
  v28 = *(v0 + 976);
  v29 = *(v0 + 968);
  v30 = *(v0 + 960);
  v31 = *(v0 + 952);
  v32 = *(v0 + 944);
  v33 = *(v0 + 936);
  v34 = *(v0 + 912);
  v35 = *(v0 + 904);
  v36 = *(v0 + 896);
  v37 = *(v0 + 888);
  v38 = *(v0 + 880);
  v39 = *(v0 + 872);
  v40 = *(v0 + 864);
  v41 = *(v0 + 840);
  v42 = *(v0 + 816);
  v43 = *(v0 + 792);
  v44 = *(v0 + 784);
  v45 = *(v0 + 776);
  v46 = *(v0 + 768);
  v47 = *(v0 + 744);
  v48 = *(v0 + 736);
  v49 = *(v0 + 728);
  v50 = *(v0 + 720);
  v51 = *(v0 + 712);
  v52 = *(v0 + 704);
  v53 = *(v0 + 696);
  v54 = *(v0 + 688);
  v55 = *(v0 + 680);
  v56 = *(v0 + 656);
  v57 = *(v0 + 640);
  v58 = *(v0 + 624);
  v59 = *(v0 + 608);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_95C50(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1256);
  v7 = *v2;
  *(v3 + 1264) = a1;
  *(v3 + 1272) = v1;

  if (v1)
  {
    v5 = sub_A2E48;
  }

  else
  {
    v5 = sub_95D68;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_95D68()
{
  v1 = v0[126];
  sub_104CF0();
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v3 = swift_task_alloc();
  v0[160] = v3;
  *v3 = v0;
  v3[1] = sub_95E1C;
  v4 = v0[158];
  v5 = v0[147];
  v6 = v0[143];
  v7 = v0[126];
  v8 = v0[72];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v8, v7, v5, v6, 0);
}

uint64_t sub_95E1C()
{
  v2 = *v1;
  v3 = *(*v1 + 1280);
  v4 = *v1;
  *(*v1 + 1288) = v0;

  v5 = v2[158];
  (*(v2[116] + 8))(v2[126], v2[115]);

  if (v0)
  {
    v6 = sub_A31C8;
  }

  else
  {
    v6 = sub_95F9C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_95F9C()
{
  v1 = *(v0 + 1208);
  v2 = *(v0 + 1192);
  v3 = *(v0 + 1176);
  v4 = *(v0 + 1168);
  v5 = *(v0 + 1160);
  v6 = *(v0 + 1144);
  v7 = *(v0 + 1080);
  v8 = *(v0 + 1072);

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  v9 = *(v0 + 1176);
  v10 = *(v0 + 1152);
  v11 = *(v0 + 1144);
  v12 = *(v0 + 1136);
  v13 = *(v0 + 1128);
  v14 = *(v0 + 1120);
  v15 = *(v0 + 1112);
  v16 = *(v0 + 1104);
  v17 = *(v0 + 1096);
  v18 = *(v0 + 1088);
  v21 = *(v0 + 1064);
  v22 = *(v0 + 1040);
  v23 = *(v0 + 1016);
  v24 = *(v0 + 1008);
  v25 = *(v0 + 1000);
  v26 = *(v0 + 992);
  v27 = *(v0 + 984);
  v28 = *(v0 + 976);
  v29 = *(v0 + 968);
  v30 = *(v0 + 960);
  v31 = *(v0 + 952);
  v32 = *(v0 + 944);
  v33 = *(v0 + 936);
  v34 = *(v0 + 912);
  v35 = *(v0 + 904);
  v36 = *(v0 + 896);
  v37 = *(v0 + 888);
  v38 = *(v0 + 880);
  v39 = *(v0 + 872);
  v40 = *(v0 + 864);
  v41 = *(v0 + 840);
  v42 = *(v0 + 816);
  v43 = *(v0 + 792);
  v44 = *(v0 + 784);
  v45 = *(v0 + 776);
  v46 = *(v0 + 768);
  v47 = *(v0 + 744);
  v48 = *(v0 + 736);
  v49 = *(v0 + 728);
  v50 = *(v0 + 720);
  v51 = *(v0 + 712);
  v52 = *(v0 + 704);
  v53 = *(v0 + 696);
  v54 = *(v0 + 688);
  v55 = *(v0 + 680);
  v56 = *(v0 + 656);
  v57 = *(v0 + 640);
  v58 = *(v0 + 624);
  v59 = *(v0 + 608);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_96314(uint64_t a1)
{
  v3 = *(*v2 + 1312);
  v4 = *v2;
  v4[165] = a1;
  v4[166] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_A3548, 0, 0);
  }

  else
  {
    v5 = v4[163];

    v6 = swift_task_alloc();
    v4[167] = v6;
    *v6 = v4;
    v6[1] = sub_964A4;

    return sub_EEDD4();
  }
}

uint64_t sub_964A4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 1336);
  v8 = *v3;
  *(*v3 + 1344) = v2;

  if (v2)
  {
    v9 = sub_96E7C;
  }

  else
  {
    *(v6 + 1352) = a2;
    *(v6 + 1360) = a1;
    v9 = sub_965DC;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_965DC()
{
  v108 = v0;
  v1 = v0[162];
  v2 = v0[95];
  v3 = v0[94];
  v4 = v0[93];
  sub_769D4(v0[170], v0[169], 0, 0xE000000000000000, v4);

  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    v5 = v0[148];
    sub_16F70(v0[93], &qword_137DC0, &unk_10A0A0);
    v6 = sub_106D10();
    v7 = sub_106FB0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, v6, v7, "Can NOT retrieve sleep alarm snippet model.", v8, 2u);
    }

    v9 = v0[165];
    v10 = v0[163];

    sub_25E4(&qword_137DD8, &unk_1085D0);
    sub_26E48();
    v11 = swift_allocError();
    *v12 = 3;
    swift_willThrow();

    v13 = v0[148];
    swift_errorRetain();
    v14 = sub_106D10();
    v15 = sub_106FB0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v107 = v17;
      *v16 = 136315138;
      v0[71] = v11;
      swift_errorRetain();
      sub_25E4(&qword_1376C0, &unk_1080D0);
      v18 = sub_106E30();
      v20 = sub_722E8(v18, v19, &v107);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_0, v14, v15, "Error in RF path: %s", v16, 0xCu);
      sub_2738(v17);
    }

    v21 = v0[162];
    v22 = v0[151];
    v23 = v0[150];
    v24 = v0[149];
    v25 = v0[146];
    v100 = v0[145];
    v103 = v0[147];
    v26 = sub_106750();
    v0[50] = v26;
    v0[51] = &protocol witness table for ABCReport;
    v27 = sub_1A924(v0 + 47);
    *v27 = sub_1045F0();
    v28 = enum case for DialogLayerErrorSubType.dialogError(_:);
    v29 = sub_106690();
    (*(*(v29 - 8) + 104))(v27, v28, v29);
    (*(*(v26 - 8) + 104))(v27, enum case for ABCReport.dialog(_:), v26);
    sub_1064D0();
    sub_2738(v0 + 47);
    swift_willThrow();

    (*(v25 + 8))(v103, v100);
    v30 = v0[147];
    v31 = v0[144];
    v32 = v0[143];
    v33 = v0[142];
    v34 = v0[141];
    v35 = v0[140];
    v36 = v0[139];
    v37 = v0[138];
    v38 = v0[137];
    v39 = v0[136];
    v60 = v0[133];
    v61 = v0[130];
    v62 = v0[127];
    v63 = v0[126];
    v64 = v0[125];
    v65 = v0[124];
    v66 = v0[123];
    v67 = v0[122];
    v68 = v0[121];
    v69 = v0[120];
    v70 = v0[119];
    v71 = v0[118];
    v72 = v0[117];
    v73 = v0[114];
    v74 = v0[113];
    v75 = v0[112];
    v76 = v0[111];
    v77 = v0[110];
    v78 = v0[109];
    v79 = v0[108];
    v80 = v0[105];
    v81 = v0[102];
    v82 = v0[99];
    v83 = v0[98];
    v84 = v0[97];
    v85 = v0[96];
    v86 = v0[93];
    v87 = v0[92];
    v88 = v0[91];
    v89 = v0[90];
    v90 = v0[89];
    v91 = v0[88];
    v92 = v0[87];
    v93 = v0[86];
    v94 = v0[85];
    v96 = v0[82];
    v98 = v0[80];
    v101 = v0[78];
    v104 = v0[76];

    v40 = v0[1];

    return v40();
  }

  else
  {
    v105 = v0[148];
    v106 = v0[142];
    v42 = v0[132];
    v95 = v0[133];
    v97 = v0[131];
    v43 = v0[129];
    v99 = v0[130];
    v102 = v0[128];
    v44 = v0[125];
    v45 = v0[99];
    v46 = v0[95];
    v47 = v0[94];
    (*(v46 + 32))(v45, v0[93], v47);
    sub_104CF0();
    v48 = sub_106AF0();
    v0[60] = v48;
    v0[61] = sub_26EAC();
    v49 = sub_1A924(v0 + 57);
    sub_25E4(&qword_137DF0, qword_1085E0);
    v50 = *(v46 + 72);
    v51 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_107FC0;
    (*(v46 + 16))(v52 + v51, v45, v47);
    sub_106930();
    (*(*(v48 - 8) + 104))(v49, enum case for SiriAlarmSnippetModels.alarmMulti(_:), v48);
    (*(v42 + 104))(v95, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v97);
    (*(v43 + 16))(v99, v105, v102);
    mach_absolute_time();
    sub_106330();
    v53 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)[1];
    v54 = swift_task_alloc();
    v0[171] = v54;
    *v54 = v0;
    v54[1] = sub_973C0;
    v55 = v0[165];
    v56 = v0[147];
    v57 = v0[142];
    v58 = v0[125];
    v59 = v0[72];
    v111 = 2;
    v110 = 0;

    return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v59, v58, v56, v0 + 57, v57, 0, 0, 0);
  }
}

uint64_t sub_96E7C()
{
  v74 = v0;
  v1 = *(v0 + 1304);

  v2 = *(v0 + 1344);
  v3 = *(v0 + 1184);
  swift_errorRetain();
  v4 = sub_106D10();
  v5 = sub_106FB0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v73 = v7;
    *v6 = 136315138;
    *(v0 + 568) = v2;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v8 = sub_106E30();
    v10 = sub_722E8(v8, v9, &v73);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v4, v5, "Error in RF path: %s", v6, 0xCu);
    sub_2738(v7);
  }

  v11 = *(v0 + 1296);
  v12 = *(v0 + 1200);
  v13 = *(v0 + 1192);
  v71 = *(v0 + 1176);
  v14 = *(v0 + 1168);
  v67 = *(v0 + 1208);
  v69 = *(v0 + 1160);
  v15 = sub_106750();
  *(v0 + 400) = v15;
  *(v0 + 408) = &protocol witness table for ABCReport;
  v16 = sub_1A924((v0 + 376));
  *v16 = sub_1045F0();
  v17 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v18 = sub_106690();
  (*(*(v18 - 8) + 104))(v16, v17, v18);
  (*(*(v15 - 8) + 104))(v16, enum case for ABCReport.dialog(_:), v15);
  sub_1064D0();
  sub_2738((v0 + 376));
  swift_willThrow();

  (*(v14 + 8))(v71, v69);
  v19 = *(v0 + 1176);
  v20 = *(v0 + 1152);
  v21 = *(v0 + 1144);
  v22 = *(v0 + 1136);
  v23 = *(v0 + 1128);
  v24 = *(v0 + 1120);
  v25 = *(v0 + 1112);
  v26 = *(v0 + 1104);
  v27 = *(v0 + 1096);
  v28 = *(v0 + 1088);
  v31 = *(v0 + 1064);
  v32 = *(v0 + 1040);
  v33 = *(v0 + 1016);
  v34 = *(v0 + 1008);
  v35 = *(v0 + 1000);
  v36 = *(v0 + 992);
  v37 = *(v0 + 984);
  v38 = *(v0 + 976);
  v39 = *(v0 + 968);
  v40 = *(v0 + 960);
  v41 = *(v0 + 952);
  v42 = *(v0 + 944);
  v43 = *(v0 + 936);
  v44 = *(v0 + 912);
  v45 = *(v0 + 904);
  v46 = *(v0 + 896);
  v47 = *(v0 + 888);
  v48 = *(v0 + 880);
  v49 = *(v0 + 872);
  v50 = *(v0 + 864);
  v51 = *(v0 + 840);
  v52 = *(v0 + 816);
  v53 = *(v0 + 792);
  v54 = *(v0 + 784);
  v55 = *(v0 + 776);
  v56 = *(v0 + 768);
  v57 = *(v0 + 744);
  v58 = *(v0 + 736);
  v59 = *(v0 + 728);
  v60 = *(v0 + 720);
  v61 = *(v0 + 712);
  v62 = *(v0 + 704);
  v63 = *(v0 + 696);
  v64 = *(v0 + 688);
  v65 = *(v0 + 680);
  v66 = *(v0 + 656);
  v68 = *(v0 + 640);
  v70 = *(v0 + 624);
  v72 = *(v0 + 608);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_973C0()
{
  v1 = *v0;
  v2 = *(*v0 + 1368);
  v3 = *(*v0 + 1136);
  v4 = *(*v0 + 1080);
  v5 = *(*v0 + 1072);
  v6 = *(*v0 + 1000);
  v7 = *(*v0 + 928);
  v8 = *(*v0 + 920);
  v10 = *v0;

  (*(v4 + 8))(v3, v5);
  (*(v7 + 8))(v6, v8);
  sub_16F70(v1 + 456, &qword_137DF8, &unk_1094E0);

  return _swift_task_switch(sub_97594, 0, 0);
}

uint64_t sub_97594()
{
  v1 = *(v0 + 1320);
  v2 = *(v0 + 1304);
  v3 = *(v0 + 1296);
  v4 = *(v0 + 1208);
  v5 = *(v0 + 1192);
  v6 = *(v0 + 1168);
  v59 = *(v0 + 1160);
  v61 = *(v0 + 1176);
  v7 = *(v0 + 792);
  v8 = *(v0 + 760);
  v9 = *(v0 + 752);

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v61, v59);
  v10 = *(v0 + 1176);
  v11 = *(v0 + 1152);
  v12 = *(v0 + 1144);
  v13 = *(v0 + 1136);
  v14 = *(v0 + 1128);
  v15 = *(v0 + 1120);
  v16 = *(v0 + 1112);
  v17 = *(v0 + 1104);
  v18 = *(v0 + 1096);
  v19 = *(v0 + 1088);
  v22 = *(v0 + 1064);
  v23 = *(v0 + 1040);
  v24 = *(v0 + 1016);
  v25 = *(v0 + 1008);
  v26 = *(v0 + 1000);
  v27 = *(v0 + 992);
  v28 = *(v0 + 984);
  v29 = *(v0 + 976);
  v30 = *(v0 + 968);
  v31 = *(v0 + 960);
  v32 = *(v0 + 952);
  v33 = *(v0 + 944);
  v34 = *(v0 + 936);
  v35 = *(v0 + 912);
  v36 = *(v0 + 904);
  v37 = *(v0 + 896);
  v38 = *(v0 + 888);
  v39 = *(v0 + 880);
  v40 = *(v0 + 872);
  v41 = *(v0 + 864);
  v42 = *(v0 + 840);
  v43 = *(v0 + 816);
  v44 = *(v0 + 792);
  v45 = *(v0 + 784);
  v46 = *(v0 + 776);
  v47 = *(v0 + 768);
  v48 = *(v0 + 744);
  v49 = *(v0 + 736);
  v50 = *(v0 + 728);
  v51 = *(v0 + 720);
  v52 = *(v0 + 712);
  v53 = *(v0 + 704);
  v54 = *(v0 + 696);
  v55 = *(v0 + 688);
  v56 = *(v0 + 680);
  v57 = *(v0 + 656);
  v58 = *(v0 + 640);
  v60 = *(v0 + 624);
  v62 = *(v0 + 608);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_97928(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1392);
  v6 = *v2;
  *(v4 + 1400) = a1;
  *(v4 + 1408) = v1;

  v7 = *(v3 + 1384);

  if (v1)
  {
    v8 = sub_97CB4;
  }

  else
  {
    v8 = sub_97A68;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_97A68()
{
  v1 = v0[172];
  v2 = v0[151];
  v3 = v0[124];

  sub_104CF0();
  v4 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v5 = swift_task_alloc();
  v0[177] = v5;
  *v5 = v0;
  v5[1] = sub_97B34;
  v6 = v0[175];
  v7 = v0[147];
  v8 = v0[141];
  v9 = v0[124];
  v10 = v0[72];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v10, v9, v7, v8, 0);
}

uint64_t sub_97B34()
{
  v2 = *v1;
  v3 = *(*v1 + 1416);
  v4 = *v1;
  *(*v1 + 1424) = v0;

  v5 = v2[175];
  (*(v2[116] + 8))(v2[124], v2[115]);

  if (v0)
  {
    v6 = sub_A3A84;
  }

  else
  {
    v6 = sub_9821C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_97CB4()
{
  v78 = v0;
  v1 = v0[172];
  v2 = v0[151];
  v3 = v0[141];
  v4 = v0[135];
  v5 = v0[134];

  (*(v4 + 8))(v3, v5);
  v6 = v0[176];
  v7 = v0[148];
  swift_errorRetain();
  v8 = sub_106D10();
  v9 = sub_106FB0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v77 = v11;
    *v10 = 136315138;
    v0[71] = v6;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v12 = sub_106E30();
    v14 = sub_722E8(v12, v13, &v77);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_0, v8, v9, "Error in RF path: %s", v10, 0xCu);
    sub_2738(v11);
  }

  v15 = v0[162];
  v16 = v0[150];
  v17 = v0[149];
  v75 = v0[147];
  v18 = v0[146];
  v71 = v0[151];
  v73 = v0[145];
  v19 = sub_106750();
  v0[50] = v19;
  v0[51] = &protocol witness table for ABCReport;
  v20 = sub_1A924(v0 + 47);
  *v20 = sub_1045F0();
  v21 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v22 = sub_106690();
  (*(*(v22 - 8) + 104))(v20, v21, v22);
  (*(*(v19 - 8) + 104))(v20, enum case for ABCReport.dialog(_:), v19);
  sub_1064D0();
  sub_2738(v0 + 47);
  swift_willThrow();

  (*(v18 + 8))(v75, v73);
  v23 = v0[147];
  v24 = v0[144];
  v25 = v0[143];
  v26 = v0[142];
  v27 = v0[141];
  v28 = v0[140];
  v29 = v0[139];
  v30 = v0[138];
  v31 = v0[137];
  v32 = v0[136];
  v35 = v0[133];
  v36 = v0[130];
  v37 = v0[127];
  v38 = v0[126];
  v39 = v0[125];
  v40 = v0[124];
  v41 = v0[123];
  v42 = v0[122];
  v43 = v0[121];
  v44 = v0[120];
  v45 = v0[119];
  v46 = v0[118];
  v47 = v0[117];
  v48 = v0[114];
  v49 = v0[113];
  v50 = v0[112];
  v51 = v0[111];
  v52 = v0[110];
  v53 = v0[109];
  v54 = v0[108];
  v55 = v0[105];
  v56 = v0[102];
  v57 = v0[99];
  v58 = v0[98];
  v59 = v0[97];
  v60 = v0[96];
  v61 = v0[93];
  v62 = v0[92];
  v63 = v0[91];
  v64 = v0[90];
  v65 = v0[89];
  v66 = v0[88];
  v67 = v0[87];
  v68 = v0[86];
  v69 = v0[85];
  v70 = v0[82];
  v72 = v0[80];
  v74 = v0[78];
  v76 = v0[76];

  v33 = v0[1];

  return v33();
}

uint64_t sub_9821C()
{
  v1 = *(v0 + 1296);
  v2 = *(v0 + 1208);
  v3 = *(v0 + 1192);
  v4 = *(v0 + 1176);
  v5 = *(v0 + 1168);
  v6 = *(v0 + 1160);
  v7 = *(v0 + 1128);
  v8 = *(v0 + 1080);
  v9 = *(v0 + 1072);

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  v10 = *(v0 + 1176);
  v11 = *(v0 + 1152);
  v12 = *(v0 + 1144);
  v13 = *(v0 + 1136);
  v14 = *(v0 + 1128);
  v15 = *(v0 + 1120);
  v16 = *(v0 + 1112);
  v17 = *(v0 + 1104);
  v18 = *(v0 + 1096);
  v19 = *(v0 + 1088);
  v22 = *(v0 + 1064);
  v23 = *(v0 + 1040);
  v24 = *(v0 + 1016);
  v25 = *(v0 + 1008);
  v26 = *(v0 + 1000);
  v27 = *(v0 + 992);
  v28 = *(v0 + 984);
  v29 = *(v0 + 976);
  v30 = *(v0 + 968);
  v31 = *(v0 + 960);
  v32 = *(v0 + 952);
  v33 = *(v0 + 944);
  v34 = *(v0 + 936);
  v35 = *(v0 + 912);
  v36 = *(v0 + 904);
  v37 = *(v0 + 896);
  v38 = *(v0 + 888);
  v39 = *(v0 + 880);
  v40 = *(v0 + 872);
  v41 = *(v0 + 864);
  v42 = *(v0 + 840);
  v43 = *(v0 + 816);
  v44 = *(v0 + 792);
  v45 = *(v0 + 784);
  v46 = *(v0 + 776);
  v47 = *(v0 + 768);
  v48 = *(v0 + 744);
  v49 = *(v0 + 736);
  v50 = *(v0 + 728);
  v51 = *(v0 + 720);
  v52 = *(v0 + 712);
  v53 = *(v0 + 704);
  v54 = *(v0 + 696);
  v55 = *(v0 + 688);
  v56 = *(v0 + 680);
  v57 = *(v0 + 656);
  v58 = *(v0 + 640);
  v59 = *(v0 + 624);
  v60 = *(v0 + 608);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_9859C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1448);
  v6 = *v2;
  *(*v2 + 1456) = v1;

  if (v1)
  {
    v7 = sub_98E88;
  }

  else
  {
    v8 = v4[180];
    v9 = v4[179];

    v4[183] = a1;
    v7 = sub_986D8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_986D8()
{
  v24 = v0[148];
  v25 = v0[142];
  v1 = v0[132];
  v20 = v0[133];
  v21 = v0[131];
  v2 = v0[129];
  v22 = v0[130];
  v23 = v0[128];
  v3 = v0[125];
  v4 = v0[98];
  v5 = v0[95];
  v6 = v0[94];
  sub_104CF0();
  v7 = sub_106AF0();
  v0[55] = v7;
  v0[56] = sub_26EAC();
  v8 = sub_1A924(v0 + 52);
  sub_25E4(&qword_137DF0, qword_1085E0);
  v9 = *(v5 + 72);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_107FC0;
  (*(v5 + 16))(v11 + v10, v4, v6);
  sub_106930();
  (*(*(v7 - 8) + 104))(v8, enum case for SiriAlarmSnippetModels.alarmMulti(_:), v7);
  (*(v1 + 104))(v20, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v21);
  (*(v2 + 16))(v22, v24, v23);
  mach_absolute_time();
  sub_106330();
  v12 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)[1];
  v13 = swift_task_alloc();
  v0[184] = v13;
  *v13 = v0;
  v13[1] = sub_98920;
  v14 = v0[183];
  v15 = v0[147];
  v16 = v0[142];
  v17 = v0[125];
  v18 = v0[72];

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v18, v17, v15, v0 + 52, v16, 0, 0, 0);
}

uint64_t sub_98920()
{
  v1 = *v0;
  v2 = *(*v0 + 1472);
  v3 = *(*v0 + 1136);
  v4 = *(*v0 + 1080);
  v5 = *(*v0 + 1072);
  v6 = *(*v0 + 1000);
  v7 = *(*v0 + 928);
  v8 = *(*v0 + 920);
  v10 = *v0;

  (*(v4 + 8))(v3, v5);
  (*(v7 + 8))(v6, v8);
  sub_16F70(v1 + 416, &qword_137DF8, &unk_1094E0);

  return _swift_task_switch(sub_98AF4, 0, 0);
}

uint64_t sub_98AF4()
{
  v1 = *(v0 + 1464);
  v2 = *(v0 + 1432);
  v3 = *(v0 + 1296);
  v4 = *(v0 + 1208);
  v5 = *(v0 + 1192);
  v6 = *(v0 + 1168);
  v59 = *(v0 + 1160);
  v61 = *(v0 + 1176);
  v7 = *(v0 + 784);
  v8 = *(v0 + 760);
  v9 = *(v0 + 752);

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v61, v59);
  v10 = *(v0 + 1176);
  v11 = *(v0 + 1152);
  v12 = *(v0 + 1144);
  v13 = *(v0 + 1136);
  v14 = *(v0 + 1128);
  v15 = *(v0 + 1120);
  v16 = *(v0 + 1112);
  v17 = *(v0 + 1104);
  v18 = *(v0 + 1096);
  v19 = *(v0 + 1088);
  v22 = *(v0 + 1064);
  v23 = *(v0 + 1040);
  v24 = *(v0 + 1016);
  v25 = *(v0 + 1008);
  v26 = *(v0 + 1000);
  v27 = *(v0 + 992);
  v28 = *(v0 + 984);
  v29 = *(v0 + 976);
  v30 = *(v0 + 968);
  v31 = *(v0 + 960);
  v32 = *(v0 + 952);
  v33 = *(v0 + 944);
  v34 = *(v0 + 936);
  v35 = *(v0 + 912);
  v36 = *(v0 + 904);
  v37 = *(v0 + 896);
  v38 = *(v0 + 888);
  v39 = *(v0 + 880);
  v40 = *(v0 + 872);
  v41 = *(v0 + 864);
  v42 = *(v0 + 840);
  v43 = *(v0 + 816);
  v44 = *(v0 + 792);
  v45 = *(v0 + 784);
  v46 = *(v0 + 776);
  v47 = *(v0 + 768);
  v48 = *(v0 + 744);
  v49 = *(v0 + 736);
  v50 = *(v0 + 728);
  v51 = *(v0 + 720);
  v52 = *(v0 + 712);
  v53 = *(v0 + 704);
  v54 = *(v0 + 696);
  v55 = *(v0 + 688);
  v56 = *(v0 + 680);
  v57 = *(v0 + 656);
  v58 = *(v0 + 640);
  v60 = *(v0 + 624);
  v62 = *(v0 + 608);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_98E88()
{
  v78 = v0;
  v1 = v0[180];
  v2 = v0[179];
  v3 = v0[98];
  v4 = v0[95];
  v5 = v0[94];

  (*(v4 + 8))(v3, v5);
  v6 = v0[182];
  v7 = v0[148];
  swift_errorRetain();
  v8 = sub_106D10();
  v9 = sub_106FB0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v77 = v11;
    *v10 = 136315138;
    v0[71] = v6;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v12 = sub_106E30();
    v14 = sub_722E8(v12, v13, &v77);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_0, v8, v9, "Error in RF path: %s", v10, 0xCu);
    sub_2738(v11);
  }

  v15 = v0[162];
  v16 = v0[150];
  v17 = v0[149];
  v75 = v0[147];
  v18 = v0[146];
  v71 = v0[151];
  v73 = v0[145];
  v19 = sub_106750();
  v0[50] = v19;
  v0[51] = &protocol witness table for ABCReport;
  v20 = sub_1A924(v0 + 47);
  *v20 = sub_1045F0();
  v21 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v22 = sub_106690();
  (*(*(v22 - 8) + 104))(v20, v21, v22);
  (*(*(v19 - 8) + 104))(v20, enum case for ABCReport.dialog(_:), v19);
  sub_1064D0();
  sub_2738(v0 + 47);
  swift_willThrow();

  (*(v18 + 8))(v75, v73);
  v23 = v0[147];
  v24 = v0[144];
  v25 = v0[143];
  v26 = v0[142];
  v27 = v0[141];
  v28 = v0[140];
  v29 = v0[139];
  v30 = v0[138];
  v31 = v0[137];
  v32 = v0[136];
  v35 = v0[133];
  v36 = v0[130];
  v37 = v0[127];
  v38 = v0[126];
  v39 = v0[125];
  v40 = v0[124];
  v41 = v0[123];
  v42 = v0[122];
  v43 = v0[121];
  v44 = v0[120];
  v45 = v0[119];
  v46 = v0[118];
  v47 = v0[117];
  v48 = v0[114];
  v49 = v0[113];
  v50 = v0[112];
  v51 = v0[111];
  v52 = v0[110];
  v53 = v0[109];
  v54 = v0[108];
  v55 = v0[105];
  v56 = v0[102];
  v57 = v0[99];
  v58 = v0[98];
  v59 = v0[97];
  v60 = v0[96];
  v61 = v0[93];
  v62 = v0[92];
  v63 = v0[91];
  v64 = v0[90];
  v65 = v0[89];
  v66 = v0[88];
  v67 = v0[87];
  v68 = v0[86];
  v69 = v0[85];
  v70 = v0[82];
  v72 = v0[80];
  v74 = v0[78];
  v76 = v0[76];

  v33 = v0[1];

  return v33();
}

uint64_t sub_993F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1488);
  v6 = *v2;
  *(v4 + 1496) = a1;
  *(v4 + 1504) = v1;

  v7 = *(v3 + 1480);

  if (v1)
  {
    v8 = sub_A3FD0;
  }

  else
  {
    v8 = sub_99534;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_99534()
{
  v1 = v0[123];
  sub_104CF0();
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v3 = swift_task_alloc();
  v0[189] = v3;
  *v3 = v0;
  v3[1] = sub_995E8;
  v4 = v0[187];
  v5 = v0[147];
  v6 = v0[140];
  v7 = v0[123];
  v8 = v0[72];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v8, v7, v5, v6, 0);
}

uint64_t sub_995E8()
{
  v2 = *v1;
  v3 = *(*v1 + 1512);
  v4 = *v1;
  *(*v1 + 1520) = v0;

  v5 = v2[187];
  (*(v2[116] + 8))(v2[123], v2[115]);

  if (v0)
  {
    v6 = sub_A451C;
  }

  else
  {
    v6 = sub_99768;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_99768()
{
  v1 = *(v0 + 1296);
  v2 = *(v0 + 1208);
  v3 = *(v0 + 1192);
  v4 = *(v0 + 1176);
  v5 = *(v0 + 1168);
  v6 = *(v0 + 1160);
  v7 = *(v0 + 1120);
  v8 = *(v0 + 1080);
  v9 = *(v0 + 1072);

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  v10 = *(v0 + 1176);
  v11 = *(v0 + 1152);
  v12 = *(v0 + 1144);
  v13 = *(v0 + 1136);
  v14 = *(v0 + 1128);
  v15 = *(v0 + 1120);
  v16 = *(v0 + 1112);
  v17 = *(v0 + 1104);
  v18 = *(v0 + 1096);
  v19 = *(v0 + 1088);
  v22 = *(v0 + 1064);
  v23 = *(v0 + 1040);
  v24 = *(v0 + 1016);
  v25 = *(v0 + 1008);
  v26 = *(v0 + 1000);
  v27 = *(v0 + 992);
  v28 = *(v0 + 984);
  v29 = *(v0 + 976);
  v30 = *(v0 + 968);
  v31 = *(v0 + 960);
  v32 = *(v0 + 952);
  v33 = *(v0 + 944);
  v34 = *(v0 + 936);
  v35 = *(v0 + 912);
  v36 = *(v0 + 904);
  v37 = *(v0 + 896);
  v38 = *(v0 + 888);
  v39 = *(v0 + 880);
  v40 = *(v0 + 872);
  v41 = *(v0 + 864);
  v42 = *(v0 + 840);
  v43 = *(v0 + 816);
  v44 = *(v0 + 792);
  v45 = *(v0 + 784);
  v46 = *(v0 + 776);
  v47 = *(v0 + 768);
  v48 = *(v0 + 744);
  v49 = *(v0 + 736);
  v50 = *(v0 + 728);
  v51 = *(v0 + 720);
  v52 = *(v0 + 712);
  v53 = *(v0 + 704);
  v54 = *(v0 + 696);
  v55 = *(v0 + 688);
  v56 = *(v0 + 680);
  v57 = *(v0 + 656);
  v58 = *(v0 + 640);
  v59 = *(v0 + 624);
  v60 = *(v0 + 608);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_99AE8(uint64_t a1)
{
  v3 = *(*v2 + 1536);
  v4 = *v2;
  v4[193] = a1;
  v4[194] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_A4A68, 0, 0);
  }

  else
  {
    v5 = v4[191];

    v6 = swift_task_alloc();
    v4[195] = v6;
    *v6 = v4;
    v6[1] = sub_99C78;

    return sub_EEDD4();
  }
}

uint64_t sub_99C78(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 1560);
  v5 = *v3;
  v5[196] = a1;
  v5[197] = a2;
  v5[198] = v2;

  if (v2)
  {

    return _swift_task_switch(sub_99F3C, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v5[199] = v6;
    *v6 = v5;
    v6[1] = sub_99E04;

    return sub_EF160();
  }
}

uint64_t sub_99E04(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 1592);
  v8 = *v3;
  *(*v3 + 1600) = v2;

  if (v2)
  {
    v9 = sub_9AD2C;
  }

  else
  {
    *(v6 + 1608) = a2;
    *(v6 + 1616) = a1;
    v9 = sub_9A480;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_99F3C()
{
  v74 = v0;
  v1 = *(v0 + 1528);

  v2 = *(v0 + 1584);
  v3 = *(v0 + 1184);
  swift_errorRetain();
  v4 = sub_106D10();
  v5 = sub_106FB0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v73 = v7;
    *v6 = 136315138;
    *(v0 + 560) = v2;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v8 = sub_106E30();
    v10 = sub_722E8(v8, v9, &v73);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v4, v5, "Error in RF path: %s", v6, 0xCu);
    sub_2738(v7);
  }

  v11 = *(v0 + 1296);
  v12 = *(v0 + 1200);
  v13 = *(v0 + 1192);
  v71 = *(v0 + 1176);
  v14 = *(v0 + 1168);
  v67 = *(v0 + 1208);
  v69 = *(v0 + 1160);
  v15 = sub_106750();
  *(v0 + 280) = v15;
  *(v0 + 288) = &protocol witness table for ABCReport;
  v16 = sub_1A924((v0 + 256));
  *v16 = sub_1045F0();
  v17 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v18 = sub_106690();
  (*(*(v18 - 8) + 104))(v16, v17, v18);
  (*(*(v15 - 8) + 104))(v16, enum case for ABCReport.dialog(_:), v15);
  sub_1064D0();
  sub_2738((v0 + 256));
  swift_willThrow();

  (*(v14 + 8))(v71, v69);
  v19 = *(v0 + 1176);
  v20 = *(v0 + 1152);
  v21 = *(v0 + 1144);
  v22 = *(v0 + 1136);
  v23 = *(v0 + 1128);
  v24 = *(v0 + 1120);
  v25 = *(v0 + 1112);
  v26 = *(v0 + 1104);
  v27 = *(v0 + 1096);
  v28 = *(v0 + 1088);
  v31 = *(v0 + 1064);
  v32 = *(v0 + 1040);
  v33 = *(v0 + 1016);
  v34 = *(v0 + 1008);
  v35 = *(v0 + 1000);
  v36 = *(v0 + 992);
  v37 = *(v0 + 984);
  v38 = *(v0 + 976);
  v39 = *(v0 + 968);
  v40 = *(v0 + 960);
  v41 = *(v0 + 952);
  v42 = *(v0 + 944);
  v43 = *(v0 + 936);
  v44 = *(v0 + 912);
  v45 = *(v0 + 904);
  v46 = *(v0 + 896);
  v47 = *(v0 + 888);
  v48 = *(v0 + 880);
  v49 = *(v0 + 872);
  v50 = *(v0 + 864);
  v51 = *(v0 + 840);
  v52 = *(v0 + 816);
  v53 = *(v0 + 792);
  v54 = *(v0 + 784);
  v55 = *(v0 + 776);
  v56 = *(v0 + 768);
  v57 = *(v0 + 744);
  v58 = *(v0 + 736);
  v59 = *(v0 + 728);
  v60 = *(v0 + 720);
  v61 = *(v0 + 712);
  v62 = *(v0 + 704);
  v63 = *(v0 + 696);
  v64 = *(v0 + 688);
  v65 = *(v0 + 680);
  v66 = *(v0 + 656);
  v68 = *(v0 + 640);
  v70 = *(v0 + 624);
  v72 = *(v0 + 608);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_9A480()
{
  v108 = v0;
  v1 = v0[162];
  v2 = v0[95];
  v3 = v0[94];
  v4 = v0[91];
  sub_769D4(v0[196], v0[197], v0[202], v0[201], v4);

  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    v5 = v0[148];
    sub_16F70(v0[91], &qword_137DC0, &unk_10A0A0);
    v6 = sub_106D10();
    v7 = sub_106FB0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, v6, v7, "Can NOT retrieve sleep alarm snippet model.", v8, 2u);
    }

    v9 = v0[193];
    v10 = v0[191];

    sub_25E4(&qword_137DD8, &unk_1085D0);
    sub_26E48();
    v11 = swift_allocError();
    *v12 = 3;
    swift_willThrow();

    v13 = v0[148];
    swift_errorRetain();
    v14 = sub_106D10();
    v15 = sub_106FB0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v107 = v17;
      *v16 = 136315138;
      v0[70] = v11;
      swift_errorRetain();
      sub_25E4(&qword_1376C0, &unk_1080D0);
      v18 = sub_106E30();
      v20 = sub_722E8(v18, v19, &v107);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_0, v14, v15, "Error in RF path: %s", v16, 0xCu);
      sub_2738(v17);
    }

    v21 = v0[162];
    v22 = v0[151];
    v23 = v0[150];
    v24 = v0[149];
    v25 = v0[146];
    v100 = v0[145];
    v103 = v0[147];
    v26 = sub_106750();
    v0[35] = v26;
    v0[36] = &protocol witness table for ABCReport;
    v27 = sub_1A924(v0 + 32);
    *v27 = sub_1045F0();
    v28 = enum case for DialogLayerErrorSubType.dialogError(_:);
    v29 = sub_106690();
    (*(*(v29 - 8) + 104))(v27, v28, v29);
    (*(*(v26 - 8) + 104))(v27, enum case for ABCReport.dialog(_:), v26);
    sub_1064D0();
    sub_2738(v0 + 32);
    swift_willThrow();

    (*(v25 + 8))(v103, v100);
    v30 = v0[147];
    v31 = v0[144];
    v32 = v0[143];
    v33 = v0[142];
    v34 = v0[141];
    v35 = v0[140];
    v36 = v0[139];
    v37 = v0[138];
    v38 = v0[137];
    v39 = v0[136];
    v60 = v0[133];
    v61 = v0[130];
    v62 = v0[127];
    v63 = v0[126];
    v64 = v0[125];
    v65 = v0[124];
    v66 = v0[123];
    v67 = v0[122];
    v68 = v0[121];
    v69 = v0[120];
    v70 = v0[119];
    v71 = v0[118];
    v72 = v0[117];
    v73 = v0[114];
    v74 = v0[113];
    v75 = v0[112];
    v76 = v0[111];
    v77 = v0[110];
    v78 = v0[109];
    v79 = v0[108];
    v80 = v0[105];
    v81 = v0[102];
    v82 = v0[99];
    v83 = v0[98];
    v84 = v0[97];
    v85 = v0[96];
    v86 = v0[93];
    v87 = v0[92];
    v88 = v0[91];
    v89 = v0[90];
    v90 = v0[89];
    v91 = v0[88];
    v92 = v0[87];
    v93 = v0[86];
    v94 = v0[85];
    v96 = v0[82];
    v98 = v0[80];
    v101 = v0[78];
    v104 = v0[76];

    v40 = v0[1];

    return v40();
  }

  else
  {
    v105 = v0[148];
    v106 = v0[142];
    v42 = v0[132];
    v95 = v0[133];
    v97 = v0[131];
    v43 = v0[129];
    v99 = v0[130];
    v102 = v0[128];
    v44 = v0[125];
    v45 = v0[97];
    v46 = v0[95];
    v47 = v0[94];
    (*(v46 + 32))(v45, v0[91], v47);
    sub_104CF0();
    v48 = sub_106AF0();
    v0[45] = v48;
    v0[46] = sub_26EAC();
    v49 = sub_1A924(v0 + 42);
    sub_25E4(&qword_137DF0, qword_1085E0);
    v50 = *(v46 + 72);
    v51 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_107FC0;
    (*(v46 + 16))(v52 + v51, v45, v47);
    sub_106930();
    (*(*(v48 - 8) + 104))(v49, enum case for SiriAlarmSnippetModels.alarmMulti(_:), v48);
    (*(v42 + 104))(v95, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v97);
    (*(v43 + 16))(v99, v105, v102);
    mach_absolute_time();
    sub_106330();
    v53 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)[1];
    v54 = swift_task_alloc();
    v0[203] = v54;
    *v54 = v0;
    v54[1] = sub_9B278;
    v55 = v0[193];
    v56 = v0[147];
    v57 = v0[142];
    v58 = v0[125];
    v59 = v0[72];
    v111 = 2;
    v110 = 0;

    return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v59, v58, v56, v0 + 42, v57, 0, 0, 0);
  }
}

uint64_t sub_9AD2C()
{
  v76 = v0;
  v1 = v0[197];
  v2 = v0[193];
  v3 = v0[191];

  v4 = v0[200];
  v5 = v0[148];
  swift_errorRetain();
  v6 = sub_106D10();
  v7 = sub_106FB0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v75 = v9;
    *v8 = 136315138;
    v0[70] = v4;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v10 = sub_106E30();
    v12 = sub_722E8(v10, v11, &v75);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_0, v6, v7, "Error in RF path: %s", v8, 0xCu);
    sub_2738(v9);
  }

  v13 = v0[162];
  v14 = v0[150];
  v15 = v0[149];
  v73 = v0[147];
  v16 = v0[146];
  v69 = v0[151];
  v71 = v0[145];
  v17 = sub_106750();
  v0[35] = v17;
  v0[36] = &protocol witness table for ABCReport;
  v18 = sub_1A924(v0 + 32);
  *v18 = sub_1045F0();
  v19 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v20 = sub_106690();
  (*(*(v20 - 8) + 104))(v18, v19, v20);
  (*(*(v17 - 8) + 104))(v18, enum case for ABCReport.dialog(_:), v17);
  sub_1064D0();
  sub_2738(v0 + 32);
  swift_willThrow();

  (*(v16 + 8))(v73, v71);
  v21 = v0[147];
  v22 = v0[144];
  v23 = v0[143];
  v24 = v0[142];
  v25 = v0[141];
  v26 = v0[140];
  v27 = v0[139];
  v28 = v0[138];
  v29 = v0[137];
  v30 = v0[136];
  v33 = v0[133];
  v34 = v0[130];
  v35 = v0[127];
  v36 = v0[126];
  v37 = v0[125];
  v38 = v0[124];
  v39 = v0[123];
  v40 = v0[122];
  v41 = v0[121];
  v42 = v0[120];
  v43 = v0[119];
  v44 = v0[118];
  v45 = v0[117];
  v46 = v0[114];
  v47 = v0[113];
  v48 = v0[112];
  v49 = v0[111];
  v50 = v0[110];
  v51 = v0[109];
  v52 = v0[108];
  v53 = v0[105];
  v54 = v0[102];
  v55 = v0[99];
  v56 = v0[98];
  v57 = v0[97];
  v58 = v0[96];
  v59 = v0[93];
  v60 = v0[92];
  v61 = v0[91];
  v62 = v0[90];
  v63 = v0[89];
  v64 = v0[88];
  v65 = v0[87];
  v66 = v0[86];
  v67 = v0[85];
  v68 = v0[82];
  v70 = v0[80];
  v72 = v0[78];
  v74 = v0[76];

  v31 = v0[1];

  return v31();
}

uint64_t sub_9B278()
{
  v1 = *v0;
  v2 = *(*v0 + 1624);
  v3 = *(*v0 + 1136);
  v4 = *(*v0 + 1080);
  v5 = *(*v0 + 1072);
  v6 = *(*v0 + 1000);
  v7 = *(*v0 + 928);
  v8 = *(*v0 + 920);
  v10 = *v0;

  (*(v4 + 8))(v3, v5);
  (*(v7 + 8))(v6, v8);
  sub_16F70(v1 + 336, &qword_137DF8, &unk_1094E0);

  return _swift_task_switch(sub_9B44C, 0, 0);
}

uint64_t sub_9B44C()
{
  v1 = *(v0 + 1544);
  v2 = *(v0 + 1528);
  v3 = *(v0 + 1296);
  v4 = *(v0 + 1208);
  v5 = *(v0 + 1192);
  v6 = *(v0 + 1168);
  v59 = *(v0 + 1160);
  v61 = *(v0 + 1176);
  v7 = *(v0 + 776);
  v8 = *(v0 + 760);
  v9 = *(v0 + 752);

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v61, v59);
  v10 = *(v0 + 1176);
  v11 = *(v0 + 1152);
  v12 = *(v0 + 1144);
  v13 = *(v0 + 1136);
  v14 = *(v0 + 1128);
  v15 = *(v0 + 1120);
  v16 = *(v0 + 1112);
  v17 = *(v0 + 1104);
  v18 = *(v0 + 1096);
  v19 = *(v0 + 1088);
  v22 = *(v0 + 1064);
  v23 = *(v0 + 1040);
  v24 = *(v0 + 1016);
  v25 = *(v0 + 1008);
  v26 = *(v0 + 1000);
  v27 = *(v0 + 992);
  v28 = *(v0 + 984);
  v29 = *(v0 + 976);
  v30 = *(v0 + 968);
  v31 = *(v0 + 960);
  v32 = *(v0 + 952);
  v33 = *(v0 + 944);
  v34 = *(v0 + 936);
  v35 = *(v0 + 912);
  v36 = *(v0 + 904);
  v37 = *(v0 + 896);
  v38 = *(v0 + 888);
  v39 = *(v0 + 880);
  v40 = *(v0 + 872);
  v41 = *(v0 + 864);
  v42 = *(v0 + 840);
  v43 = *(v0 + 816);
  v44 = *(v0 + 792);
  v45 = *(v0 + 784);
  v46 = *(v0 + 776);
  v47 = *(v0 + 768);
  v48 = *(v0 + 744);
  v49 = *(v0 + 736);
  v50 = *(v0 + 728);
  v51 = *(v0 + 720);
  v52 = *(v0 + 712);
  v53 = *(v0 + 704);
  v54 = *(v0 + 696);
  v55 = *(v0 + 688);
  v56 = *(v0 + 680);
  v57 = *(v0 + 656);
  v58 = *(v0 + 640);
  v60 = *(v0 + 624);
  v62 = *(v0 + 608);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_9B7E0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1648);
  v6 = *v2;
  *(v4 + 1656) = a1;
  *(v4 + 1664) = v1;

  v7 = *(v3 + 1640);

  if (v1)
  {
    v8 = sub_9BB6C;
  }

  else
  {
    v8 = sub_9B920;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_9B920()
{
  v1 = v0[204];
  v2 = v0[151];
  v3 = v0[122];

  sub_104CF0();
  v4 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v5 = swift_task_alloc();
  v0[209] = v5;
  *v5 = v0;
  v5[1] = sub_9B9EC;
  v6 = v0[207];
  v7 = v0[147];
  v8 = v0[139];
  v9 = v0[122];
  v10 = v0[72];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v10, v9, v7, v8, 0);
}

uint64_t sub_9B9EC()
{
  v2 = *v1;
  v3 = *(*v1 + 1672);
  v4 = *v1;
  *(*v1 + 1680) = v0;

  v5 = v2[207];
  (*(v2[116] + 8))(v2[122], v2[115]);

  if (v0)
  {
    v6 = sub_A4FA4;
  }

  else
  {
    v6 = sub_9C0D4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_9BB6C()
{
  v78 = v0;
  v1 = v0[204];
  v2 = v0[151];
  v3 = v0[139];
  v4 = v0[135];
  v5 = v0[134];

  (*(v4 + 8))(v3, v5);
  v6 = v0[208];
  v7 = v0[148];
  swift_errorRetain();
  v8 = sub_106D10();
  v9 = sub_106FB0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v77 = v11;
    *v10 = 136315138;
    v0[70] = v6;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v12 = sub_106E30();
    v14 = sub_722E8(v12, v13, &v77);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_0, v8, v9, "Error in RF path: %s", v10, 0xCu);
    sub_2738(v11);
  }

  v15 = v0[162];
  v16 = v0[150];
  v17 = v0[149];
  v75 = v0[147];
  v18 = v0[146];
  v71 = v0[151];
  v73 = v0[145];
  v19 = sub_106750();
  v0[35] = v19;
  v0[36] = &protocol witness table for ABCReport;
  v20 = sub_1A924(v0 + 32);
  *v20 = sub_1045F0();
  v21 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v22 = sub_106690();
  (*(*(v22 - 8) + 104))(v20, v21, v22);
  (*(*(v19 - 8) + 104))(v20, enum case for ABCReport.dialog(_:), v19);
  sub_1064D0();
  sub_2738(v0 + 32);
  swift_willThrow();

  (*(v18 + 8))(v75, v73);
  v23 = v0[147];
  v24 = v0[144];
  v25 = v0[143];
  v26 = v0[142];
  v27 = v0[141];
  v28 = v0[140];
  v29 = v0[139];
  v30 = v0[138];
  v31 = v0[137];
  v32 = v0[136];
  v35 = v0[133];
  v36 = v0[130];
  v37 = v0[127];
  v38 = v0[126];
  v39 = v0[125];
  v40 = v0[124];
  v41 = v0[123];
  v42 = v0[122];
  v43 = v0[121];
  v44 = v0[120];
  v45 = v0[119];
  v46 = v0[118];
  v47 = v0[117];
  v48 = v0[114];
  v49 = v0[113];
  v50 = v0[112];
  v51 = v0[111];
  v52 = v0[110];
  v53 = v0[109];
  v54 = v0[108];
  v55 = v0[105];
  v56 = v0[102];
  v57 = v0[99];
  v58 = v0[98];
  v59 = v0[97];
  v60 = v0[96];
  v61 = v0[93];
  v62 = v0[92];
  v63 = v0[91];
  v64 = v0[90];
  v65 = v0[89];
  v66 = v0[88];
  v67 = v0[87];
  v68 = v0[86];
  v69 = v0[85];
  v70 = v0[82];
  v72 = v0[80];
  v74 = v0[78];
  v76 = v0[76];

  v33 = v0[1];

  return v33();
}

uint64_t sub_9C0D4()
{
  v1 = *(v0 + 1296);
  v2 = *(v0 + 1208);
  v3 = *(v0 + 1192);
  v4 = *(v0 + 1176);
  v5 = *(v0 + 1168);
  v6 = *(v0 + 1160);
  v7 = *(v0 + 1112);
  v8 = *(v0 + 1080);
  v9 = *(v0 + 1072);

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  v10 = *(v0 + 1176);
  v11 = *(v0 + 1152);
  v12 = *(v0 + 1144);
  v13 = *(v0 + 1136);
  v14 = *(v0 + 1128);
  v15 = *(v0 + 1120);
  v16 = *(v0 + 1112);
  v17 = *(v0 + 1104);
  v18 = *(v0 + 1096);
  v19 = *(v0 + 1088);
  v22 = *(v0 + 1064);
  v23 = *(v0 + 1040);
  v24 = *(v0 + 1016);
  v25 = *(v0 + 1008);
  v26 = *(v0 + 1000);
  v27 = *(v0 + 992);
  v28 = *(v0 + 984);
  v29 = *(v0 + 976);
  v30 = *(v0 + 968);
  v31 = *(v0 + 960);
  v32 = *(v0 + 952);
  v33 = *(v0 + 944);
  v34 = *(v0 + 936);
  v35 = *(v0 + 912);
  v36 = *(v0 + 904);
  v37 = *(v0 + 896);
  v38 = *(v0 + 888);
  v39 = *(v0 + 880);
  v40 = *(v0 + 872);
  v41 = *(v0 + 864);
  v42 = *(v0 + 840);
  v43 = *(v0 + 816);
  v44 = *(v0 + 792);
  v45 = *(v0 + 784);
  v46 = *(v0 + 776);
  v47 = *(v0 + 768);
  v48 = *(v0 + 744);
  v49 = *(v0 + 736);
  v50 = *(v0 + 728);
  v51 = *(v0 + 720);
  v52 = *(v0 + 712);
  v53 = *(v0 + 704);
  v54 = *(v0 + 696);
  v55 = *(v0 + 688);
  v56 = *(v0 + 680);
  v57 = *(v0 + 656);
  v58 = *(v0 + 640);
  v59 = *(v0 + 624);
  v60 = *(v0 + 608);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_9C454(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1704);
  v6 = *v2;
  *(*v2 + 1712) = v1;

  if (v1)
  {
    v7 = sub_9CD40;
  }

  else
  {
    v8 = v4[212];
    v9 = v4[211];

    v4[215] = a1;
    v7 = sub_9C590;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_9C590()
{
  v24 = v0[148];
  v25 = v0[142];
  v1 = v0[132];
  v20 = v0[133];
  v21 = v0[131];
  v2 = v0[129];
  v22 = v0[130];
  v23 = v0[128];
  v3 = v0[125];
  v4 = v0[96];
  v5 = v0[95];
  v6 = v0[94];
  sub_104CF0();
  v7 = sub_106AF0();
  v0[40] = v7;
  v0[41] = sub_26EAC();
  v8 = sub_1A924(v0 + 37);
  sub_25E4(&qword_137DF0, qword_1085E0);
  v9 = *(v5 + 72);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_107FC0;
  (*(v5 + 16))(v11 + v10, v4, v6);
  sub_106930();
  (*(*(v7 - 8) + 104))(v8, enum case for SiriAlarmSnippetModels.alarmMulti(_:), v7);
  (*(v1 + 104))(v20, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v21);
  (*(v2 + 16))(v22, v24, v23);
  mach_absolute_time();
  sub_106330();
  v12 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)[1];
  v13 = swift_task_alloc();
  v0[216] = v13;
  *v13 = v0;
  v13[1] = sub_9C7D8;
  v14 = v0[215];
  v15 = v0[147];
  v16 = v0[142];
  v17 = v0[125];
  v18 = v0[72];

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v18, v17, v15, v0 + 37, v16, 0, 0, 0);
}

uint64_t sub_9C7D8()
{
  v1 = *v0;
  v2 = *(*v0 + 1728);
  v3 = *(*v0 + 1136);
  v4 = *(*v0 + 1080);
  v5 = *(*v0 + 1072);
  v6 = *(*v0 + 1000);
  v7 = *(*v0 + 928);
  v8 = *(*v0 + 920);
  v10 = *v0;

  (*(v4 + 8))(v3, v5);
  (*(v7 + 8))(v6, v8);
  sub_16F70(v1 + 296, &qword_137DF8, &unk_1094E0);

  return _swift_task_switch(sub_9C9AC, 0, 0);
}

uint64_t sub_9C9AC()
{
  v1 = *(v0 + 1720);
  v2 = *(v0 + 1688);
  v3 = *(v0 + 1296);
  v4 = *(v0 + 1208);
  v5 = *(v0 + 1192);
  v6 = *(v0 + 1168);
  v59 = *(v0 + 1160);
  v61 = *(v0 + 1176);
  v7 = *(v0 + 768);
  v8 = *(v0 + 760);
  v9 = *(v0 + 752);

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v61, v59);
  v10 = *(v0 + 1176);
  v11 = *(v0 + 1152);
  v12 = *(v0 + 1144);
  v13 = *(v0 + 1136);
  v14 = *(v0 + 1128);
  v15 = *(v0 + 1120);
  v16 = *(v0 + 1112);
  v17 = *(v0 + 1104);
  v18 = *(v0 + 1096);
  v19 = *(v0 + 1088);
  v22 = *(v0 + 1064);
  v23 = *(v0 + 1040);
  v24 = *(v0 + 1016);
  v25 = *(v0 + 1008);
  v26 = *(v0 + 1000);
  v27 = *(v0 + 992);
  v28 = *(v0 + 984);
  v29 = *(v0 + 976);
  v30 = *(v0 + 968);
  v31 = *(v0 + 960);
  v32 = *(v0 + 952);
  v33 = *(v0 + 944);
  v34 = *(v0 + 936);
  v35 = *(v0 + 912);
  v36 = *(v0 + 904);
  v37 = *(v0 + 896);
  v38 = *(v0 + 888);
  v39 = *(v0 + 880);
  v40 = *(v0 + 872);
  v41 = *(v0 + 864);
  v42 = *(v0 + 840);
  v43 = *(v0 + 816);
  v44 = *(v0 + 792);
  v45 = *(v0 + 784);
  v46 = *(v0 + 776);
  v47 = *(v0 + 768);
  v48 = *(v0 + 744);
  v49 = *(v0 + 736);
  v50 = *(v0 + 728);
  v51 = *(v0 + 720);
  v52 = *(v0 + 712);
  v53 = *(v0 + 704);
  v54 = *(v0 + 696);
  v55 = *(v0 + 688);
  v56 = *(v0 + 680);
  v57 = *(v0 + 656);
  v58 = *(v0 + 640);
  v60 = *(v0 + 624);
  v62 = *(v0 + 608);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_9CD40()
{
  v78 = v0;
  v1 = v0[212];
  v2 = v0[211];
  v3 = v0[96];
  v4 = v0[95];
  v5 = v0[94];

  (*(v4 + 8))(v3, v5);
  v6 = v0[214];
  v7 = v0[148];
  swift_errorRetain();
  v8 = sub_106D10();
  v9 = sub_106FB0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v77 = v11;
    *v10 = 136315138;
    v0[70] = v6;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v12 = sub_106E30();
    v14 = sub_722E8(v12, v13, &v77);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_0, v8, v9, "Error in RF path: %s", v10, 0xCu);
    sub_2738(v11);
  }

  v15 = v0[162];
  v16 = v0[150];
  v17 = v0[149];
  v75 = v0[147];
  v18 = v0[146];
  v71 = v0[151];
  v73 = v0[145];
  v19 = sub_106750();
  v0[35] = v19;
  v0[36] = &protocol witness table for ABCReport;
  v20 = sub_1A924(v0 + 32);
  *v20 = sub_1045F0();
  v21 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v22 = sub_106690();
  (*(*(v22 - 8) + 104))(v20, v21, v22);
  (*(*(v19 - 8) + 104))(v20, enum case for ABCReport.dialog(_:), v19);
  sub_1064D0();
  sub_2738(v0 + 32);
  swift_willThrow();

  (*(v18 + 8))(v75, v73);
  v23 = v0[147];
  v24 = v0[144];
  v25 = v0[143];
  v26 = v0[142];
  v27 = v0[141];
  v28 = v0[140];
  v29 = v0[139];
  v30 = v0[138];
  v31 = v0[137];
  v32 = v0[136];
  v35 = v0[133];
  v36 = v0[130];
  v37 = v0[127];
  v38 = v0[126];
  v39 = v0[125];
  v40 = v0[124];
  v41 = v0[123];
  v42 = v0[122];
  v43 = v0[121];
  v44 = v0[120];
  v45 = v0[119];
  v46 = v0[118];
  v47 = v0[117];
  v48 = v0[114];
  v49 = v0[113];
  v50 = v0[112];
  v51 = v0[111];
  v52 = v0[110];
  v53 = v0[109];
  v54 = v0[108];
  v55 = v0[105];
  v56 = v0[102];
  v57 = v0[99];
  v58 = v0[98];
  v59 = v0[97];
  v60 = v0[96];
  v61 = v0[93];
  v62 = v0[92];
  v63 = v0[91];
  v64 = v0[90];
  v65 = v0[89];
  v66 = v0[88];
  v67 = v0[87];
  v68 = v0[86];
  v69 = v0[85];
  v70 = v0[82];
  v72 = v0[80];
  v74 = v0[78];
  v76 = v0[76];

  v33 = v0[1];

  return v33();
}

uint64_t sub_9D2AC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1752);
  v6 = *v2;
  *(v4 + 1760) = a1;
  *(v4 + 1768) = v1;

  v7 = *(v3 + 1744);

  if (v1)
  {
    v8 = sub_9D638;
  }

  else
  {
    v8 = sub_9D3EC;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_9D3EC()
{
  v1 = v0[217];
  v2 = v0[151];
  v3 = v0[121];

  sub_104CF0();
  v4 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v5 = swift_task_alloc();
  v0[222] = v5;
  *v5 = v0;
  v5[1] = sub_9D4B8;
  v6 = v0[220];
  v7 = v0[147];
  v8 = v0[138];
  v9 = v0[121];
  v10 = v0[72];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v10, v9, v7, v8, 0);
}

uint64_t sub_9D4B8()
{
  v2 = *v1;
  v3 = *(*v1 + 1776);
  v4 = *v1;
  *(*v1 + 1784) = v0;

  v5 = v2[220];
  (*(v2[116] + 8))(v2[121], v2[115]);

  if (v0)
  {
    v6 = sub_A54F0;
  }

  else
  {
    v6 = sub_9DBA0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_9D638()
{
  v78 = v0;
  v1 = v0[217];
  v2 = v0[151];
  v3 = v0[138];
  v4 = v0[135];
  v5 = v0[134];

  (*(v4 + 8))(v3, v5);
  v6 = v0[221];
  v7 = v0[148];
  swift_errorRetain();
  v8 = sub_106D10();
  v9 = sub_106FB0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v77 = v11;
    *v10 = 136315138;
    v0[70] = v6;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v12 = sub_106E30();
    v14 = sub_722E8(v12, v13, &v77);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_0, v8, v9, "Error in RF path: %s", v10, 0xCu);
    sub_2738(v11);
  }

  v15 = v0[162];
  v16 = v0[150];
  v17 = v0[149];
  v75 = v0[147];
  v18 = v0[146];
  v71 = v0[151];
  v73 = v0[145];
  v19 = sub_106750();
  v0[35] = v19;
  v0[36] = &protocol witness table for ABCReport;
  v20 = sub_1A924(v0 + 32);
  *v20 = sub_1045F0();
  v21 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v22 = sub_106690();
  (*(*(v22 - 8) + 104))(v20, v21, v22);
  (*(*(v19 - 8) + 104))(v20, enum case for ABCReport.dialog(_:), v19);
  sub_1064D0();
  sub_2738(v0 + 32);
  swift_willThrow();

  (*(v18 + 8))(v75, v73);
  v23 = v0[147];
  v24 = v0[144];
  v25 = v0[143];
  v26 = v0[142];
  v27 = v0[141];
  v28 = v0[140];
  v29 = v0[139];
  v30 = v0[138];
  v31 = v0[137];
  v32 = v0[136];
  v35 = v0[133];
  v36 = v0[130];
  v37 = v0[127];
  v38 = v0[126];
  v39 = v0[125];
  v40 = v0[124];
  v41 = v0[123];
  v42 = v0[122];
  v43 = v0[121];
  v44 = v0[120];
  v45 = v0[119];
  v46 = v0[118];
  v47 = v0[117];
  v48 = v0[114];
  v49 = v0[113];
  v50 = v0[112];
  v51 = v0[111];
  v52 = v0[110];
  v53 = v0[109];
  v54 = v0[108];
  v55 = v0[105];
  v56 = v0[102];
  v57 = v0[99];
  v58 = v0[98];
  v59 = v0[97];
  v60 = v0[96];
  v61 = v0[93];
  v62 = v0[92];
  v63 = v0[91];
  v64 = v0[90];
  v65 = v0[89];
  v66 = v0[88];
  v67 = v0[87];
  v68 = v0[86];
  v69 = v0[85];
  v70 = v0[82];
  v72 = v0[80];
  v74 = v0[78];
  v76 = v0[76];

  v33 = v0[1];

  return v33();
}

uint64_t sub_9DBA0()
{
  v1 = *(v0 + 1296);
  v2 = *(v0 + 1208);
  v3 = *(v0 + 1192);
  v4 = *(v0 + 1176);
  v5 = *(v0 + 1168);
  v6 = *(v0 + 1160);
  v7 = *(v0 + 1104);
  v8 = *(v0 + 1080);
  v9 = *(v0 + 1072);

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  v10 = *(v0 + 1176);
  v11 = *(v0 + 1152);
  v12 = *(v0 + 1144);
  v13 = *(v0 + 1136);
  v14 = *(v0 + 1128);
  v15 = *(v0 + 1120);
  v16 = *(v0 + 1112);
  v17 = *(v0 + 1104);
  v18 = *(v0 + 1096);
  v19 = *(v0 + 1088);
  v22 = *(v0 + 1064);
  v23 = *(v0 + 1040);
  v24 = *(v0 + 1016);
  v25 = *(v0 + 1008);
  v26 = *(v0 + 1000);
  v27 = *(v0 + 992);
  v28 = *(v0 + 984);
  v29 = *(v0 + 976);
  v30 = *(v0 + 968);
  v31 = *(v0 + 960);
  v32 = *(v0 + 952);
  v33 = *(v0 + 944);
  v34 = *(v0 + 936);
  v35 = *(v0 + 912);
  v36 = *(v0 + 904);
  v37 = *(v0 + 896);
  v38 = *(v0 + 888);
  v39 = *(v0 + 880);
  v40 = *(v0 + 872);
  v41 = *(v0 + 864);
  v42 = *(v0 + 840);
  v43 = *(v0 + 816);
  v44 = *(v0 + 792);
  v45 = *(v0 + 784);
  v46 = *(v0 + 776);
  v47 = *(v0 + 768);
  v48 = *(v0 + 744);
  v49 = *(v0 + 736);
  v50 = *(v0 + 728);
  v51 = *(v0 + 720);
  v52 = *(v0 + 712);
  v53 = *(v0 + 704);
  v54 = *(v0 + 696);
  v55 = *(v0 + 688);
  v56 = *(v0 + 680);
  v57 = *(v0 + 656);
  v58 = *(v0 + 640);
  v59 = *(v0 + 624);
  v60 = *(v0 + 608);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_9DF20(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1840);
  v6 = *v2;
  *(*v2 + 1848) = v1;

  if (v1)
  {
    v7 = sub_9E798;
  }

  else
  {
    v8 = *(v4 + 1824);

    *(v4 + 1856) = a1;
    v7 = sub_9E050;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_9E050()
{
  v1 = v0[227];
  v19 = v0[148];
  v20 = v0[142];
  v2 = v0[133];
  v3 = v0[132];
  v4 = v0[131];
  v5 = v0[130];
  v6 = v0[129];
  v7 = v0[128];
  v8 = v0[125];
  sub_104CF0();
  v9 = sub_106AF0();
  v0[25] = v9;
  v0[26] = sub_26EAC();
  v10 = sub_1A924(v0 + 22);
  sub_106930();
  (*(*(v9 - 8) + 104))(v10, enum case for SiriAlarmSnippetModels.alarmMulti(_:), v9);
  (*(v3 + 104))(v2, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v4);
  (*(v6 + 16))(v5, v19, v7);
  mach_absolute_time();
  sub_106330();
  v11 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)[1];
  v12 = swift_task_alloc();
  v0[233] = v12;
  *v12 = v0;
  v12[1] = sub_9E22C;
  v13 = v0[232];
  v14 = v0[147];
  v15 = v0[142];
  v16 = v0[125];
  v17 = v0[72];

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v17, v16, v14, v0 + 22, v15, 0, 0, 0);
}

uint64_t sub_9E22C()
{
  v1 = *v0;
  v2 = *(*v0 + 1864);
  v3 = *(*v0 + 1136);
  v4 = *(*v0 + 1080);
  v5 = *(*v0 + 1072);
  v6 = *(*v0 + 1000);
  v7 = *(*v0 + 928);
  v8 = *(*v0 + 920);
  v10 = *v0;

  (*(v4 + 8))(v3, v5);
  (*(v7 + 8))(v6, v8);
  sub_16F70(v1 + 176, &qword_137DF8, &unk_1094E0);

  return _swift_task_switch(sub_9E400, 0, 0);
}

uint64_t sub_9E400()
{
  v1 = *(v0 + 1856);
  v2 = *(v0 + 1832);
  v3 = *(v0 + 1808);
  v4 = *(v0 + 1792);
  v5 = *(v0 + 1208);
  v6 = *(v0 + 1192);
  v60 = *(v0 + 1176);
  v7 = *(v0 + 1168);
  v8 = *(v0 + 1160);
  v9 = *(v0 + 712);

  sub_16F70(v9, &qword_137598, &unk_107EB0);
  (*(v7 + 8))(v60, v8);
  v10 = *(v0 + 1176);
  v11 = *(v0 + 1152);
  v12 = *(v0 + 1144);
  v13 = *(v0 + 1136);
  v14 = *(v0 + 1128);
  v15 = *(v0 + 1120);
  v16 = *(v0 + 1112);
  v17 = *(v0 + 1104);
  v18 = *(v0 + 1096);
  v19 = *(v0 + 1088);
  v22 = *(v0 + 1064);
  v23 = *(v0 + 1040);
  v24 = *(v0 + 1016);
  v25 = *(v0 + 1008);
  v26 = *(v0 + 1000);
  v27 = *(v0 + 992);
  v28 = *(v0 + 984);
  v29 = *(v0 + 976);
  v30 = *(v0 + 968);
  v31 = *(v0 + 960);
  v32 = *(v0 + 952);
  v33 = *(v0 + 944);
  v34 = *(v0 + 936);
  v35 = *(v0 + 912);
  v36 = *(v0 + 904);
  v37 = *(v0 + 896);
  v38 = *(v0 + 888);
  v39 = *(v0 + 880);
  v40 = *(v0 + 872);
  v41 = *(v0 + 864);
  v42 = *(v0 + 840);
  v43 = *(v0 + 816);
  v44 = *(v0 + 792);
  v45 = *(v0 + 784);
  v46 = *(v0 + 776);
  v47 = *(v0 + 768);
  v48 = *(v0 + 744);
  v49 = *(v0 + 736);
  v50 = *(v0 + 728);
  v51 = *(v0 + 720);
  v52 = *(v0 + 712);
  v53 = *(v0 + 704);
  v54 = *(v0 + 696);
  v55 = *(v0 + 688);
  v56 = *(v0 + 680);
  v57 = *(v0 + 656);
  v58 = *(v0 + 640);
  v59 = *(v0 + 624);
  v61 = *(v0 + 608);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_9E798()
{
  v78 = v0;
  v1 = v0[228];
  v2 = v0[227];

  v3 = v0[231];
  v4 = v0[148];
  swift_errorRetain();
  v5 = sub_106D10();
  v6 = sub_106FB0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v77 = v8;
    *v7 = 136315138;
    v0[69] = v3;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v9 = sub_106E30();
    v11 = sub_722E8(v9, v10, &v77);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v5, v6, "Error in RF path: %s", v7, 0xCu);
    sub_2738(v8);
  }

  v12 = v0[226];
  v13 = v0[224];
  v14 = v0[150];
  v15 = v0[149];
  v75 = v0[147];
  v16 = v0[146];
  v71 = v0[225];
  v73 = v0[145];
  v67 = v0[151];
  v69 = v0[89];
  v17 = sub_106750();
  v0[20] = v17;
  v0[21] = &protocol witness table for ABCReport;
  v18 = sub_1A924(v0 + 17);
  *v18 = sub_1045F0();
  v19 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v20 = sub_106690();
  (*(*(v20 - 8) + 104))(v18, v19, v20);
  (*(*(v17 - 8) + 104))(v18, enum case for ABCReport.dialog(_:), v17);
  sub_1064D0();
  sub_2738(v0 + 17);
  swift_willThrow();

  sub_16F70(v69, &qword_137598, &unk_107EB0);
  (*(v16 + 8))(v75, v73);
  v21 = v0[147];
  v22 = v0[144];
  v23 = v0[143];
  v24 = v0[142];
  v25 = v0[141];
  v26 = v0[140];
  v27 = v0[139];
  v28 = v0[138];
  v29 = v0[137];
  v30 = v0[136];
  v33 = v0[133];
  v34 = v0[130];
  v35 = v0[127];
  v36 = v0[126];
  v37 = v0[125];
  v38 = v0[124];
  v39 = v0[123];
  v40 = v0[122];
  v41 = v0[121];
  v42 = v0[120];
  v43 = v0[119];
  v44 = v0[118];
  v45 = v0[117];
  v46 = v0[114];
  v47 = v0[113];
  v48 = v0[112];
  v49 = v0[111];
  v50 = v0[110];
  v51 = v0[109];
  v52 = v0[108];
  v53 = v0[105];
  v54 = v0[102];
  v55 = v0[99];
  v56 = v0[98];
  v57 = v0[97];
  v58 = v0[96];
  v59 = v0[93];
  v60 = v0[92];
  v61 = v0[91];
  v62 = v0[90];
  v63 = v0[89];
  v64 = v0[88];
  v65 = v0[87];
  v66 = v0[86];
  v68 = v0[85];
  v70 = v0[82];
  v72 = v0[80];
  v74 = v0[78];
  v76 = v0[76];

  v31 = v0[1];

  return v31();
}

uint64_t sub_9ED10(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1880);
  v6 = *v2;
  *(v4 + 1888) = a1;
  *(v4 + 1896) = v1;

  v7 = *(v3 + 1872);

  if (v1)
  {
    v8 = sub_9F0A4;
  }

  else
  {
    v8 = sub_9EE50;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_9EE50()
{
  v1 = v0[120];
  sub_A7C74(v0[82], type metadata accessor for ModifyAllEnableConciseParameters);
  sub_104CF0();
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v3 = swift_task_alloc();
  v0[238] = v3;
  *v3 = v0;
  v3[1] = sub_9EF24;
  v4 = v0[236];
  v5 = v0[147];
  v6 = v0[137];
  v7 = v0[120];
  v8 = v0[72];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v8, v7, v5, v6, 0);
}

uint64_t sub_9EF24()
{
  v2 = *v1;
  v3 = *(*v1 + 1904);
  v4 = *v1;
  *(*v1 + 1912) = v0;

  v5 = v2[236];
  (*(v2[116] + 8))(v2[120], v2[115]);

  if (v0)
  {
    v6 = sub_A5A3C;
  }

  else
  {
    v6 = sub_9F648;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_9F0A4()
{
  v79 = v0;
  v1 = v0[137];
  v2 = v0[135];
  v3 = v0[134];
  sub_A7C74(v0[82], type metadata accessor for ModifyAllEnableConciseParameters);
  (*(v2 + 8))(v1, v3);
  v4 = v0[237];
  v5 = v0[148];
  swift_errorRetain();
  v6 = sub_106D10();
  v7 = sub_106FB0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v78 = v9;
    *v8 = 136315138;
    v0[69] = v4;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v10 = sub_106E30();
    v12 = sub_722E8(v10, v11, &v78);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_0, v6, v7, "Error in RF path: %s", v8, 0xCu);
    sub_2738(v9);
  }

  v13 = v0[226];
  v14 = v0[224];
  v15 = v0[150];
  v16 = v0[149];
  v76 = v0[147];
  v17 = v0[146];
  v72 = v0[225];
  v74 = v0[145];
  v68 = v0[151];
  v70 = v0[89];
  v18 = sub_106750();
  v0[20] = v18;
  v0[21] = &protocol witness table for ABCReport;
  v19 = sub_1A924(v0 + 17);
  *v19 = sub_1045F0();
  v20 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v21 = sub_106690();
  (*(*(v21 - 8) + 104))(v19, v20, v21);
  (*(*(v18 - 8) + 104))(v19, enum case for ABCReport.dialog(_:), v18);
  sub_1064D0();
  sub_2738(v0 + 17);
  swift_willThrow();

  sub_16F70(v70, &qword_137598, &unk_107EB0);
  (*(v17 + 8))(v76, v74);
  v22 = v0[147];
  v23 = v0[144];
  v24 = v0[143];
  v25 = v0[142];
  v26 = v0[141];
  v27 = v0[140];
  v28 = v0[139];
  v29 = v0[138];
  v30 = v0[137];
  v31 = v0[136];
  v34 = v0[133];
  v35 = v0[130];
  v36 = v0[127];
  v37 = v0[126];
  v38 = v0[125];
  v39 = v0[124];
  v40 = v0[123];
  v41 = v0[122];
  v42 = v0[121];
  v43 = v0[120];
  v44 = v0[119];
  v45 = v0[118];
  v46 = v0[117];
  v47 = v0[114];
  v48 = v0[113];
  v49 = v0[112];
  v50 = v0[111];
  v51 = v0[110];
  v52 = v0[109];
  v53 = v0[108];
  v54 = v0[105];
  v55 = v0[102];
  v56 = v0[99];
  v57 = v0[98];
  v58 = v0[97];
  v59 = v0[96];
  v60 = v0[93];
  v61 = v0[92];
  v62 = v0[91];
  v63 = v0[90];
  v64 = v0[89];
  v65 = v0[88];
  v66 = v0[87];
  v67 = v0[86];
  v69 = v0[85];
  v71 = v0[82];
  v73 = v0[80];
  v75 = v0[78];
  v77 = v0[76];

  v32 = v0[1];

  return v32();
}

uint64_t sub_9F648()
{
  v1 = *(v0 + 1808);
  v2 = *(v0 + 1800);
  v3 = *(v0 + 1792);
  v4 = *(v0 + 1208);
  v5 = *(v0 + 1192);
  v6 = *(v0 + 1168);
  v60 = *(v0 + 1160);
  v62 = *(v0 + 1176);
  v7 = *(v0 + 1096);
  v8 = *(v0 + 1080);
  v9 = *(v0 + 1072);
  v58 = *(v0 + 712);

  (*(v8 + 8))(v7, v9);
  sub_16F70(v58, &qword_137598, &unk_107EB0);
  (*(v6 + 8))(v62, v60);
  v10 = *(v0 + 1176);
  v11 = *(v0 + 1152);
  v12 = *(v0 + 1144);
  v13 = *(v0 + 1136);
  v14 = *(v0 + 1128);
  v15 = *(v0 + 1120);
  v16 = *(v0 + 1112);
  v17 = *(v0 + 1104);
  v18 = *(v0 + 1096);
  v19 = *(v0 + 1088);
  v22 = *(v0 + 1064);
  v23 = *(v0 + 1040);
  v24 = *(v0 + 1016);
  v25 = *(v0 + 1008);
  v26 = *(v0 + 1000);
  v27 = *(v0 + 992);
  v28 = *(v0 + 984);
  v29 = *(v0 + 976);
  v30 = *(v0 + 968);
  v31 = *(v0 + 960);
  v32 = *(v0 + 952);
  v33 = *(v0 + 944);
  v34 = *(v0 + 936);
  v35 = *(v0 + 912);
  v36 = *(v0 + 904);
  v37 = *(v0 + 896);
  v38 = *(v0 + 888);
  v39 = *(v0 + 880);
  v40 = *(v0 + 872);
  v41 = *(v0 + 864);
  v42 = *(v0 + 840);
  v43 = *(v0 + 816);
  v44 = *(v0 + 792);
  v45 = *(v0 + 784);
  v46 = *(v0 + 776);
  v47 = *(v0 + 768);
  v48 = *(v0 + 744);
  v49 = *(v0 + 736);
  v50 = *(v0 + 728);
  v51 = *(v0 + 720);
  v52 = *(v0 + 712);
  v53 = *(v0 + 704);
  v54 = *(v0 + 696);
  v55 = *(v0 + 688);
  v56 = *(v0 + 680);
  v57 = *(v0 + 656);
  v59 = *(v0 + 640);
  v61 = *(v0 + 624);
  v63 = *(v0 + 608);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_9F9FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1928);
  v6 = *v2;
  *(v4 + 1936) = a1;
  *(v4 + 1944) = v1;

  v7 = *(v3 + 1920);

  if (v1)
  {
    v8 = sub_9FD90;
  }

  else
  {
    v8 = sub_9FB3C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_9FB3C()
{
  v1 = v0[119];
  sub_A7C74(v0[80], type metadata accessor for ModifyAllEnableParameters);
  sub_104CF0();
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v3 = swift_task_alloc();
  v0[244] = v3;
  *v3 = v0;
  v3[1] = sub_9FC10;
  v4 = v0[242];
  v5 = v0[147];
  v6 = v0[137];
  v7 = v0[119];
  v8 = v0[72];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v8, v7, v5, v6, 0);
}

uint64_t sub_9FC10()
{
  v2 = *v1;
  v3 = *(*v1 + 1952);
  v4 = *v1;
  *(*v1 + 1960) = v0;

  v5 = v2[242];
  (*(v2[116] + 8))(v2[119], v2[115]);

  if (v0)
  {
    v6 = sub_A5FBC;
  }

  else
  {
    v6 = sub_A7CE0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_9FD90()
{
  v79 = v0;
  v1 = v0[137];
  v2 = v0[135];
  v3 = v0[134];
  sub_A7C74(v0[80], type metadata accessor for ModifyAllEnableParameters);
  (*(v2 + 8))(v1, v3);
  v4 = v0[243];
  v5 = v0[148];
  swift_errorRetain();
  v6 = sub_106D10();
  v7 = sub_106FB0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v78 = v9;
    *v8 = 136315138;
    v0[69] = v4;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v10 = sub_106E30();
    v12 = sub_722E8(v10, v11, &v78);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_0, v6, v7, "Error in RF path: %s", v8, 0xCu);
    sub_2738(v9);
  }

  v13 = v0[226];
  v14 = v0[224];
  v15 = v0[150];
  v16 = v0[149];
  v76 = v0[147];
  v17 = v0[146];
  v72 = v0[225];
  v74 = v0[145];
  v68 = v0[151];
  v70 = v0[89];
  v18 = sub_106750();
  v0[20] = v18;
  v0[21] = &protocol witness table for ABCReport;
  v19 = sub_1A924(v0 + 17);
  *v19 = sub_1045F0();
  v20 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v21 = sub_106690();
  (*(*(v21 - 8) + 104))(v19, v20, v21);
  (*(*(v18 - 8) + 104))(v19, enum case for ABCReport.dialog(_:), v18);
  sub_1064D0();
  sub_2738(v0 + 17);
  swift_willThrow();

  sub_16F70(v70, &qword_137598, &unk_107EB0);
  (*(v17 + 8))(v76, v74);
  v22 = v0[147];
  v23 = v0[144];
  v24 = v0[143];
  v25 = v0[142];
  v26 = v0[141];
  v27 = v0[140];
  v28 = v0[139];
  v29 = v0[138];
  v30 = v0[137];
  v31 = v0[136];
  v34 = v0[133];
  v35 = v0[130];
  v36 = v0[127];
  v37 = v0[126];
  v38 = v0[125];
  v39 = v0[124];
  v40 = v0[123];
  v41 = v0[122];
  v42 = v0[121];
  v43 = v0[120];
  v44 = v0[119];
  v45 = v0[118];
  v46 = v0[117];
  v47 = v0[114];
  v48 = v0[113];
  v49 = v0[112];
  v50 = v0[111];
  v51 = v0[110];
  v52 = v0[109];
  v53 = v0[108];
  v54 = v0[105];
  v55 = v0[102];
  v56 = v0[99];
  v57 = v0[98];
  v58 = v0[97];
  v59 = v0[96];
  v60 = v0[93];
  v61 = v0[92];
  v62 = v0[91];
  v63 = v0[90];
  v64 = v0[89];
  v65 = v0[88];
  v66 = v0[87];
  v67 = v0[86];
  v69 = v0[85];
  v71 = v0[82];
  v73 = v0[80];
  v75 = v0[78];
  v77 = v0[76];

  v32 = v0[1];

  return v32();
}

uint64_t sub_A0334(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1992);
  v6 = *v2;
  *(*v2 + 2000) = v1;

  if (v1)
  {
    v7 = sub_A0BAC;
  }

  else
  {
    v8 = *(v4 + 1976);

    *(v4 + 2008) = a1;
    v7 = sub_A0464;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_A0464()
{
  v1 = v0[246];
  v19 = v0[148];
  v20 = v0[142];
  v2 = v0[133];
  v3 = v0[132];
  v4 = v0[131];
  v5 = v0[130];
  v6 = v0[129];
  v7 = v0[128];
  v8 = v0[125];
  sub_104CF0();
  v9 = sub_106AF0();
  v0[15] = v9;
  v0[16] = sub_26EAC();
  v10 = sub_1A924(v0 + 12);
  sub_106930();
  (*(*(v9 - 8) + 104))(v10, enum case for SiriAlarmSnippetModels.alarmMulti(_:), v9);
  (*(v3 + 104))(v2, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v4);
  (*(v6 + 16))(v5, v19, v7);
  mach_absolute_time();
  sub_106330();
  v11 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)[1];
  v12 = swift_task_alloc();
  v0[252] = v12;
  *v12 = v0;
  v12[1] = sub_A0640;
  v13 = v0[251];
  v14 = v0[147];
  v15 = v0[142];
  v16 = v0[125];
  v17 = v0[72];

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v17, v16, v14, v0 + 12, v15, 0, 0, 0);
}

uint64_t sub_A0640()
{
  v1 = *v0;
  v2 = *(*v0 + 2016);
  v3 = *(*v0 + 1136);
  v4 = *(*v0 + 1080);
  v5 = *(*v0 + 1072);
  v6 = *(*v0 + 1000);
  v7 = *(*v0 + 928);
  v8 = *(*v0 + 920);
  v10 = *v0;

  (*(v4 + 8))(v3, v5);
  (*(v7 + 8))(v6, v8);
  sub_16F70(v1 + 96, &qword_137DF8, &unk_1094E0);

  return _swift_task_switch(sub_A0814, 0, 0);
}

uint64_t sub_A0814()
{
  v1 = *(v0 + 2008);
  v2 = *(v0 + 1984);
  v3 = *(v0 + 1808);
  v4 = *(v0 + 1792);
  v5 = *(v0 + 1208);
  v6 = *(v0 + 1192);
  v60 = *(v0 + 1176);
  v7 = *(v0 + 1168);
  v8 = *(v0 + 1160);
  v9 = *(v0 + 712);

  sub_16F70(v9, &qword_137598, &unk_107EB0);
  (*(v7 + 8))(v60, v8);
  v10 = *(v0 + 1176);
  v11 = *(v0 + 1152);
  v12 = *(v0 + 1144);
  v13 = *(v0 + 1136);
  v14 = *(v0 + 1128);
  v15 = *(v0 + 1120);
  v16 = *(v0 + 1112);
  v17 = *(v0 + 1104);
  v18 = *(v0 + 1096);
  v19 = *(v0 + 1088);
  v22 = *(v0 + 1064);
  v23 = *(v0 + 1040);
  v24 = *(v0 + 1016);
  v25 = *(v0 + 1008);
  v26 = *(v0 + 1000);
  v27 = *(v0 + 992);
  v28 = *(v0 + 984);
  v29 = *(v0 + 976);
  v30 = *(v0 + 968);
  v31 = *(v0 + 960);
  v32 = *(v0 + 952);
  v33 = *(v0 + 944);
  v34 = *(v0 + 936);
  v35 = *(v0 + 912);
  v36 = *(v0 + 904);
  v37 = *(v0 + 896);
  v38 = *(v0 + 888);
  v39 = *(v0 + 880);
  v40 = *(v0 + 872);
  v41 = *(v0 + 864);
  v42 = *(v0 + 840);
  v43 = *(v0 + 816);
  v44 = *(v0 + 792);
  v45 = *(v0 + 784);
  v46 = *(v0 + 776);
  v47 = *(v0 + 768);
  v48 = *(v0 + 744);
  v49 = *(v0 + 736);
  v50 = *(v0 + 728);
  v51 = *(v0 + 720);
  v52 = *(v0 + 712);
  v53 = *(v0 + 704);
  v54 = *(v0 + 696);
  v55 = *(v0 + 688);
  v56 = *(v0 + 680);
  v57 = *(v0 + 656);
  v58 = *(v0 + 640);
  v59 = *(v0 + 624);
  v61 = *(v0 + 608);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_A0BAC()
{
  v78 = v0;
  v1 = v0[247];
  v2 = v0[246];

  v3 = v0[250];
  v4 = v0[148];
  swift_errorRetain();
  v5 = sub_106D10();
  v6 = sub_106FB0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v77 = v8;
    *v7 = 136315138;
    v0[68] = v3;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v9 = sub_106E30();
    v11 = sub_722E8(v9, v10, &v77);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v5, v6, "Error in RF path: %s", v7, 0xCu);
    sub_2738(v8);
  }

  v12 = v0[226];
  v13 = v0[224];
  v14 = v0[150];
  v15 = v0[149];
  v75 = v0[147];
  v16 = v0[146];
  v71 = v0[225];
  v73 = v0[145];
  v67 = v0[151];
  v69 = v0[89];
  v17 = sub_106750();
  v0[10] = v17;
  v0[11] = &protocol witness table for ABCReport;
  v18 = sub_1A924(v0 + 7);
  *v18 = sub_1045F0();
  v19 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v20 = sub_106690();
  (*(*(v20 - 8) + 104))(v18, v19, v20);
  (*(*(v17 - 8) + 104))(v18, enum case for ABCReport.dialog(_:), v17);
  sub_1064D0();
  sub_2738(v0 + 7);
  swift_willThrow();

  sub_16F70(v69, &qword_137598, &unk_107EB0);
  (*(v16 + 8))(v75, v73);
  v21 = v0[147];
  v22 = v0[144];
  v23 = v0[143];
  v24 = v0[142];
  v25 = v0[141];
  v26 = v0[140];
  v27 = v0[139];
  v28 = v0[138];
  v29 = v0[137];
  v30 = v0[136];
  v33 = v0[133];
  v34 = v0[130];
  v35 = v0[127];
  v36 = v0[126];
  v37 = v0[125];
  v38 = v0[124];
  v39 = v0[123];
  v40 = v0[122];
  v41 = v0[121];
  v42 = v0[120];
  v43 = v0[119];
  v44 = v0[118];
  v45 = v0[117];
  v46 = v0[114];
  v47 = v0[113];
  v48 = v0[112];
  v49 = v0[111];
  v50 = v0[110];
  v51 = v0[109];
  v52 = v0[108];
  v53 = v0[105];
  v54 = v0[102];
  v55 = v0[99];
  v56 = v0[98];
  v57 = v0[97];
  v58 = v0[96];
  v59 = v0[93];
  v60 = v0[92];
  v61 = v0[91];
  v62 = v0[90];
  v63 = v0[89];
  v64 = v0[88];
  v65 = v0[87];
  v66 = v0[86];
  v68 = v0[85];
  v70 = v0[82];
  v72 = v0[80];
  v74 = v0[78];
  v76 = v0[76];

  v31 = v0[1];

  return v31();
}

uint64_t sub_A1124(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 2032);
  v6 = *v2;
  *(v4 + 2040) = a1;
  *(v4 + 2048) = v1;

  v7 = *(v3 + 2024);

  if (v1)
  {
    v8 = sub_A14B8;
  }

  else
  {
    v8 = sub_A1264;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_A1264()
{
  v1 = v0[118];
  sub_A7C74(v0[78], type metadata accessor for ModifyAllDisableConciseParameters);
  sub_104CF0();
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v3 = swift_task_alloc();
  v0[257] = v3;
  *v3 = v0;
  v3[1] = sub_A1338;
  v4 = v0[255];
  v5 = v0[147];
  v6 = v0[136];
  v7 = v0[118];
  v8 = v0[72];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v8, v7, v5, v6, 0);
}

uint64_t sub_A1338()
{
  v2 = *v1;
  v3 = *(*v1 + 2056);
  v4 = *v1;
  *(*v1 + 2064) = v0;

  v5 = v2[255];
  (*(v2[116] + 8))(v2[118], v2[115]);

  if (v0)
  {
    v6 = sub_A653C;
  }

  else
  {
    v6 = sub_A1A5C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_A14B8()
{
  v79 = v0;
  v1 = v0[136];
  v2 = v0[135];
  v3 = v0[134];
  sub_A7C74(v0[78], type metadata accessor for ModifyAllDisableConciseParameters);
  (*(v2 + 8))(v1, v3);
  v4 = v0[256];
  v5 = v0[148];
  swift_errorRetain();
  v6 = sub_106D10();
  v7 = sub_106FB0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v78 = v9;
    *v8 = 136315138;
    v0[68] = v4;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v10 = sub_106E30();
    v12 = sub_722E8(v10, v11, &v78);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_0, v6, v7, "Error in RF path: %s", v8, 0xCu);
    sub_2738(v9);
  }

  v13 = v0[226];
  v14 = v0[224];
  v15 = v0[150];
  v16 = v0[149];
  v76 = v0[147];
  v17 = v0[146];
  v72 = v0[225];
  v74 = v0[145];
  v68 = v0[151];
  v70 = v0[89];
  v18 = sub_106750();
  v0[10] = v18;
  v0[11] = &protocol witness table for ABCReport;
  v19 = sub_1A924(v0 + 7);
  *v19 = sub_1045F0();
  v20 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v21 = sub_106690();
  (*(*(v21 - 8) + 104))(v19, v20, v21);
  (*(*(v18 - 8) + 104))(v19, enum case for ABCReport.dialog(_:), v18);
  sub_1064D0();
  sub_2738(v0 + 7);
  swift_willThrow();

  sub_16F70(v70, &qword_137598, &unk_107EB0);
  (*(v17 + 8))(v76, v74);
  v22 = v0[147];
  v23 = v0[144];
  v24 = v0[143];
  v25 = v0[142];
  v26 = v0[141];
  v27 = v0[140];
  v28 = v0[139];
  v29 = v0[138];
  v30 = v0[137];
  v31 = v0[136];
  v34 = v0[133];
  v35 = v0[130];
  v36 = v0[127];
  v37 = v0[126];
  v38 = v0[125];
  v39 = v0[124];
  v40 = v0[123];
  v41 = v0[122];
  v42 = v0[121];
  v43 = v0[120];
  v44 = v0[119];
  v45 = v0[118];
  v46 = v0[117];
  v47 = v0[114];
  v48 = v0[113];
  v49 = v0[112];
  v50 = v0[111];
  v51 = v0[110];
  v52 = v0[109];
  v53 = v0[108];
  v54 = v0[105];
  v55 = v0[102];
  v56 = v0[99];
  v57 = v0[98];
  v58 = v0[97];
  v59 = v0[96];
  v60 = v0[93];
  v61 = v0[92];
  v62 = v0[91];
  v63 = v0[90];
  v64 = v0[89];
  v65 = v0[88];
  v66 = v0[87];
  v67 = v0[86];
  v69 = v0[85];
  v71 = v0[82];
  v73 = v0[80];
  v75 = v0[78];
  v77 = v0[76];

  v32 = v0[1];

  return v32();
}

uint64_t sub_A1A5C()
{
  v1 = *(v0 + 1808);
  v2 = *(v0 + 1800);
  v3 = *(v0 + 1792);
  v4 = *(v0 + 1208);
  v5 = *(v0 + 1192);
  v6 = *(v0 + 1168);
  v60 = *(v0 + 1160);
  v62 = *(v0 + 1176);
  v7 = *(v0 + 1088);
  v8 = *(v0 + 1080);
  v9 = *(v0 + 1072);
  v58 = *(v0 + 712);

  (*(v8 + 8))(v7, v9);
  sub_16F70(v58, &qword_137598, &unk_107EB0);
  (*(v6 + 8))(v62, v60);
  v10 = *(v0 + 1176);
  v11 = *(v0 + 1152);
  v12 = *(v0 + 1144);
  v13 = *(v0 + 1136);
  v14 = *(v0 + 1128);
  v15 = *(v0 + 1120);
  v16 = *(v0 + 1112);
  v17 = *(v0 + 1104);
  v18 = *(v0 + 1096);
  v19 = *(v0 + 1088);
  v22 = *(v0 + 1064);
  v23 = *(v0 + 1040);
  v24 = *(v0 + 1016);
  v25 = *(v0 + 1008);
  v26 = *(v0 + 1000);
  v27 = *(v0 + 992);
  v28 = *(v0 + 984);
  v29 = *(v0 + 976);
  v30 = *(v0 + 968);
  v31 = *(v0 + 960);
  v32 = *(v0 + 952);
  v33 = *(v0 + 944);
  v34 = *(v0 + 936);
  v35 = *(v0 + 912);
  v36 = *(v0 + 904);
  v37 = *(v0 + 896);
  v38 = *(v0 + 888);
  v39 = *(v0 + 880);
  v40 = *(v0 + 872);
  v41 = *(v0 + 864);
  v42 = *(v0 + 840);
  v43 = *(v0 + 816);
  v44 = *(v0 + 792);
  v45 = *(v0 + 784);
  v46 = *(v0 + 776);
  v47 = *(v0 + 768);
  v48 = *(v0 + 744);
  v49 = *(v0 + 736);
  v50 = *(v0 + 728);
  v51 = *(v0 + 720);
  v52 = *(v0 + 712);
  v53 = *(v0 + 704);
  v54 = *(v0 + 696);
  v55 = *(v0 + 688);
  v56 = *(v0 + 680);
  v57 = *(v0 + 656);
  v59 = *(v0 + 640);
  v61 = *(v0 + 624);
  v63 = *(v0 + 608);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_A1E10(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 2080);
  v6 = *v2;
  *(v4 + 2088) = a1;
  *(v4 + 2096) = v1;

  v7 = *(v3 + 2072);

  if (v1)
  {
    v8 = sub_A21A4;
  }

  else
  {
    v8 = sub_A1F50;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_A1F50()
{
  v1 = v0[117];
  sub_A7C74(v0[76], type metadata accessor for ModifyAllDisableParameters);
  sub_104CF0();
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v3 = swift_task_alloc();
  v0[263] = v3;
  *v3 = v0;
  v3[1] = sub_A2024;
  v4 = v0[261];
  v5 = v0[147];
  v6 = v0[136];
  v7 = v0[117];
  v8 = v0[72];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v8, v7, v5, v6, 0);
}

uint64_t sub_A2024()
{
  v2 = *v1;
  v3 = *(*v1 + 2104);
  v4 = *v1;
  *(*v1 + 2112) = v0;

  v5 = v2[261];
  (*(v2[116] + 8))(v2[117], v2[115]);

  if (v0)
  {
    v6 = sub_A6ABC;
  }

  else
  {
    v6 = sub_A7CDC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_A21A4()
{
  v79 = v0;
  v1 = v0[136];
  v2 = v0[135];
  v3 = v0[134];
  sub_A7C74(v0[76], type metadata accessor for ModifyAllDisableParameters);
  (*(v2 + 8))(v1, v3);
  v4 = v0[262];
  v5 = v0[148];
  swift_errorRetain();
  v6 = sub_106D10();
  v7 = sub_106FB0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v78 = v9;
    *v8 = 136315138;
    v0[68] = v4;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v10 = sub_106E30();
    v12 = sub_722E8(v10, v11, &v78);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_0, v6, v7, "Error in RF path: %s", v8, 0xCu);
    sub_2738(v9);
  }

  v13 = v0[226];
  v14 = v0[224];
  v15 = v0[150];
  v16 = v0[149];
  v76 = v0[147];
  v17 = v0[146];
  v72 = v0[225];
  v74 = v0[145];
  v68 = v0[151];
  v70 = v0[89];
  v18 = sub_106750();
  v0[10] = v18;
  v0[11] = &protocol witness table for ABCReport;
  v19 = sub_1A924(v0 + 7);
  *v19 = sub_1045F0();
  v20 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v21 = sub_106690();
  (*(*(v21 - 8) + 104))(v19, v20, v21);
  (*(*(v18 - 8) + 104))(v19, enum case for ABCReport.dialog(_:), v18);
  sub_1064D0();
  sub_2738(v0 + 7);
  swift_willThrow();

  sub_16F70(v70, &qword_137598, &unk_107EB0);
  (*(v17 + 8))(v76, v74);
  v22 = v0[147];
  v23 = v0[144];
  v24 = v0[143];
  v25 = v0[142];
  v26 = v0[141];
  v27 = v0[140];
  v28 = v0[139];
  v29 = v0[138];
  v30 = v0[137];
  v31 = v0[136];
  v34 = v0[133];
  v35 = v0[130];
  v36 = v0[127];
  v37 = v0[126];
  v38 = v0[125];
  v39 = v0[124];
  v40 = v0[123];
  v41 = v0[122];
  v42 = v0[121];
  v43 = v0[120];
  v44 = v0[119];
  v45 = v0[118];
  v46 = v0[117];
  v47 = v0[114];
  v48 = v0[113];
  v49 = v0[112];
  v50 = v0[111];
  v51 = v0[110];
  v52 = v0[109];
  v53 = v0[108];
  v54 = v0[105];
  v55 = v0[102];
  v56 = v0[99];
  v57 = v0[98];
  v58 = v0[97];
  v59 = v0[96];
  v60 = v0[93];
  v61 = v0[92];
  v62 = v0[91];
  v63 = v0[90];
  v64 = v0[89];
  v65 = v0[88];
  v66 = v0[87];
  v67 = v0[86];
  v69 = v0[85];
  v71 = v0[82];
  v73 = v0[80];
  v75 = v0[78];
  v77 = v0[76];

  v32 = v0[1];

  return v32();
}

uint64_t sub_A2748()
{
  v1 = *(v0 + 1208);
  v2 = *(v0 + 1192);
  v3 = *(v0 + 1176);
  v4 = *(v0 + 1168);
  v5 = *(v0 + 1160);
  v6 = *(v0 + 1152);
  v7 = *(v0 + 1080);
  v8 = *(v0 + 1072);

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  v60 = *(v0 + 1232);
  v9 = *(v0 + 1176);
  v10 = *(v0 + 1152);
  v11 = *(v0 + 1144);
  v12 = *(v0 + 1136);
  v13 = *(v0 + 1128);
  v14 = *(v0 + 1120);
  v15 = *(v0 + 1112);
  v16 = *(v0 + 1104);
  v17 = *(v0 + 1096);
  v18 = *(v0 + 1088);
  v21 = *(v0 + 1064);
  v22 = *(v0 + 1040);
  v23 = *(v0 + 1016);
  v24 = *(v0 + 1008);
  v25 = *(v0 + 1000);
  v26 = *(v0 + 992);
  v27 = *(v0 + 984);
  v28 = *(v0 + 976);
  v29 = *(v0 + 968);
  v30 = *(v0 + 960);
  v31 = *(v0 + 952);
  v32 = *(v0 + 944);
  v33 = *(v0 + 936);
  v34 = *(v0 + 912);
  v35 = *(v0 + 904);
  v36 = *(v0 + 896);
  v37 = *(v0 + 888);
  v38 = *(v0 + 880);
  v39 = *(v0 + 872);
  v40 = *(v0 + 864);
  v41 = *(v0 + 840);
  v42 = *(v0 + 816);
  v43 = *(v0 + 792);
  v44 = *(v0 + 784);
  v45 = *(v0 + 776);
  v46 = *(v0 + 768);
  v47 = *(v0 + 744);
  v48 = *(v0 + 736);
  v49 = *(v0 + 728);
  v50 = *(v0 + 720);
  v51 = *(v0 + 712);
  v52 = *(v0 + 704);
  v53 = *(v0 + 696);
  v54 = *(v0 + 688);
  v55 = *(v0 + 680);
  v56 = *(v0 + 656);
  v57 = *(v0 + 640);
  v58 = *(v0 + 624);
  v59 = *(v0 + 608);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_A2AC8()
{
  v1 = *(v0 + 1208);
  v2 = *(v0 + 1192);
  v3 = *(v0 + 1176);
  v4 = *(v0 + 1168);
  v5 = *(v0 + 1160);
  v6 = *(v0 + 1152);
  v7 = *(v0 + 1080);
  v8 = *(v0 + 1072);

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  v60 = *(v0 + 1248);
  v9 = *(v0 + 1176);
  v10 = *(v0 + 1152);
  v11 = *(v0 + 1144);
  v12 = *(v0 + 1136);
  v13 = *(v0 + 1128);
  v14 = *(v0 + 1120);
  v15 = *(v0 + 1112);
  v16 = *(v0 + 1104);
  v17 = *(v0 + 1096);
  v18 = *(v0 + 1088);
  v21 = *(v0 + 1064);
  v22 = *(v0 + 1040);
  v23 = *(v0 + 1016);
  v24 = *(v0 + 1008);
  v25 = *(v0 + 1000);
  v26 = *(v0 + 992);
  v27 = *(v0 + 984);
  v28 = *(v0 + 976);
  v29 = *(v0 + 968);
  v30 = *(v0 + 960);
  v31 = *(v0 + 952);
  v32 = *(v0 + 944);
  v33 = *(v0 + 936);
  v34 = *(v0 + 912);
  v35 = *(v0 + 904);
  v36 = *(v0 + 896);
  v37 = *(v0 + 888);
  v38 = *(v0 + 880);
  v39 = *(v0 + 872);
  v40 = *(v0 + 864);
  v41 = *(v0 + 840);
  v42 = *(v0 + 816);
  v43 = *(v0 + 792);
  v44 = *(v0 + 784);
  v45 = *(v0 + 776);
  v46 = *(v0 + 768);
  v47 = *(v0 + 744);
  v48 = *(v0 + 736);
  v49 = *(v0 + 728);
  v50 = *(v0 + 720);
  v51 = *(v0 + 712);
  v52 = *(v0 + 704);
  v53 = *(v0 + 696);
  v54 = *(v0 + 688);
  v55 = *(v0 + 680);
  v56 = *(v0 + 656);
  v57 = *(v0 + 640);
  v58 = *(v0 + 624);
  v59 = *(v0 + 608);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_A2E48()
{
  v1 = *(v0 + 1208);
  v2 = *(v0 + 1192);
  v3 = *(v0 + 1176);
  v4 = *(v0 + 1168);
  v5 = *(v0 + 1160);
  v6 = *(v0 + 1144);
  v7 = *(v0 + 1080);
  v8 = *(v0 + 1072);

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  v60 = *(v0 + 1272);
  v9 = *(v0 + 1176);
  v10 = *(v0 + 1152);
  v11 = *(v0 + 1144);
  v12 = *(v0 + 1136);
  v13 = *(v0 + 1128);
  v14 = *(v0 + 1120);
  v15 = *(v0 + 1112);
  v16 = *(v0 + 1104);
  v17 = *(v0 + 1096);
  v18 = *(v0 + 1088);
  v21 = *(v0 + 1064);
  v22 = *(v0 + 1040);
  v23 = *(v0 + 1016);
  v24 = *(v0 + 1008);
  v25 = *(v0 + 1000);
  v26 = *(v0 + 992);
  v27 = *(v0 + 984);
  v28 = *(v0 + 976);
  v29 = *(v0 + 968);
  v30 = *(v0 + 960);
  v31 = *(v0 + 952);
  v32 = *(v0 + 944);
  v33 = *(v0 + 936);
  v34 = *(v0 + 912);
  v35 = *(v0 + 904);
  v36 = *(v0 + 896);
  v37 = *(v0 + 888);
  v38 = *(v0 + 880);
  v39 = *(v0 + 872);
  v40 = *(v0 + 864);
  v41 = *(v0 + 840);
  v42 = *(v0 + 816);
  v43 = *(v0 + 792);
  v44 = *(v0 + 784);
  v45 = *(v0 + 776);
  v46 = *(v0 + 768);
  v47 = *(v0 + 744);
  v48 = *(v0 + 736);
  v49 = *(v0 + 728);
  v50 = *(v0 + 720);
  v51 = *(v0 + 712);
  v52 = *(v0 + 704);
  v53 = *(v0 + 696);
  v54 = *(v0 + 688);
  v55 = *(v0 + 680);
  v56 = *(v0 + 656);
  v57 = *(v0 + 640);
  v58 = *(v0 + 624);
  v59 = *(v0 + 608);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_A31C8()
{
  v1 = *(v0 + 1208);
  v2 = *(v0 + 1192);
  v3 = *(v0 + 1176);
  v4 = *(v0 + 1168);
  v5 = *(v0 + 1160);
  v6 = *(v0 + 1144);
  v7 = *(v0 + 1080);
  v8 = *(v0 + 1072);

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  v60 = *(v0 + 1288);
  v9 = *(v0 + 1176);
  v10 = *(v0 + 1152);
  v11 = *(v0 + 1144);
  v12 = *(v0 + 1136);
  v13 = *(v0 + 1128);
  v14 = *(v0 + 1120);
  v15 = *(v0 + 1112);
  v16 = *(v0 + 1104);
  v17 = *(v0 + 1096);
  v18 = *(v0 + 1088);
  v21 = *(v0 + 1064);
  v22 = *(v0 + 1040);
  v23 = *(v0 + 1016);
  v24 = *(v0 + 1008);
  v25 = *(v0 + 1000);
  v26 = *(v0 + 992);
  v27 = *(v0 + 984);
  v28 = *(v0 + 976);
  v29 = *(v0 + 968);
  v30 = *(v0 + 960);
  v31 = *(v0 + 952);
  v32 = *(v0 + 944);
  v33 = *(v0 + 936);
  v34 = *(v0 + 912);
  v35 = *(v0 + 904);
  v36 = *(v0 + 896);
  v37 = *(v0 + 888);
  v38 = *(v0 + 880);
  v39 = *(v0 + 872);
  v40 = *(v0 + 864);
  v41 = *(v0 + 840);
  v42 = *(v0 + 816);
  v43 = *(v0 + 792);
  v44 = *(v0 + 784);
  v45 = *(v0 + 776);
  v46 = *(v0 + 768);
  v47 = *(v0 + 744);
  v48 = *(v0 + 736);
  v49 = *(v0 + 728);
  v50 = *(v0 + 720);
  v51 = *(v0 + 712);
  v52 = *(v0 + 704);
  v53 = *(v0 + 696);
  v54 = *(v0 + 688);
  v55 = *(v0 + 680);
  v56 = *(v0 + 656);
  v57 = *(v0 + 640);
  v58 = *(v0 + 624);
  v59 = *(v0 + 608);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_A3548()
{
  v74 = v0;
  v1 = v0[163];

  v2 = v0[166];
  v3 = v0[148];
  swift_errorRetain();
  v4 = sub_106D10();
  v5 = sub_106FB0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v73 = v7;
    *v6 = 136315138;
    v0[71] = v2;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v8 = sub_106E30();
    v10 = sub_722E8(v8, v9, &v73);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v4, v5, "Error in RF path: %s", v6, 0xCu);
    sub_2738(v7);
  }

  v11 = v0[162];
  v12 = v0[150];
  v13 = v0[149];
  v71 = v0[147];
  v14 = v0[146];
  v67 = v0[151];
  v69 = v0[145];
  v15 = sub_106750();
  v0[50] = v15;
  v0[51] = &protocol witness table for ABCReport;
  v16 = sub_1A924(v0 + 47);
  *v16 = sub_1045F0();
  v17 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v18 = sub_106690();
  (*(*(v18 - 8) + 104))(v16, v17, v18);
  (*(*(v15 - 8) + 104))(v16, enum case for ABCReport.dialog(_:), v15);
  sub_1064D0();
  sub_2738(v0 + 47);
  swift_willThrow();

  (*(v14 + 8))(v71, v69);
  v19 = v0[147];
  v20 = v0[144];
  v21 = v0[143];
  v22 = v0[142];
  v23 = v0[141];
  v24 = v0[140];
  v25 = v0[139];
  v26 = v0[138];
  v27 = v0[137];
  v28 = v0[136];
  v31 = v0[133];
  v32 = v0[130];
  v33 = v0[127];
  v34 = v0[126];
  v35 = v0[125];
  v36 = v0[124];
  v37 = v0[123];
  v38 = v0[122];
  v39 = v0[121];
  v40 = v0[120];
  v41 = v0[119];
  v42 = v0[118];
  v43 = v0[117];
  v44 = v0[114];
  v45 = v0[113];
  v46 = v0[112];
  v47 = v0[111];
  v48 = v0[110];
  v49 = v0[109];
  v50 = v0[108];
  v51 = v0[105];
  v52 = v0[102];
  v53 = v0[99];
  v54 = v0[98];
  v55 = v0[97];
  v56 = v0[96];
  v57 = v0[93];
  v58 = v0[92];
  v59 = v0[91];
  v60 = v0[90];
  v61 = v0[89];
  v62 = v0[88];
  v63 = v0[87];
  v64 = v0[86];
  v65 = v0[85];
  v66 = v0[82];
  v68 = v0[80];
  v70 = v0[78];
  v72 = v0[76];

  v29 = v0[1];

  return v29();
}

uint64_t sub_A3A84()
{
  v73 = v0;
  (*(v0[135] + 8))(v0[141], v0[134]);
  v1 = v0[178];
  v2 = v0[148];
  swift_errorRetain();
  v3 = sub_106D10();
  v4 = sub_106FB0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v72 = v6;
    *v5 = 136315138;
    v0[71] = v1;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v7 = sub_106E30();
    v9 = sub_722E8(v7, v8, &v72);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v4, "Error in RF path: %s", v5, 0xCu);
    sub_2738(v6);
  }

  v10 = v0[162];
  v11 = v0[150];
  v12 = v0[149];
  v70 = v0[147];
  v13 = v0[146];
  v66 = v0[151];
  v68 = v0[145];
  v14 = sub_106750();
  v0[50] = v14;
  v0[51] = &protocol witness table for ABCReport;
  v15 = sub_1A924(v0 + 47);
  *v15 = sub_1045F0();
  v16 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v17 = sub_106690();
  (*(*(v17 - 8) + 104))(v15, v16, v17);
  (*(*(v14 - 8) + 104))(v15, enum case for ABCReport.dialog(_:), v14);
  sub_1064D0();
  sub_2738(v0 + 47);
  swift_willThrow();

  (*(v13 + 8))(v70, v68);
  v18 = v0[147];
  v19 = v0[144];
  v20 = v0[143];
  v21 = v0[142];
  v22 = v0[141];
  v23 = v0[140];
  v24 = v0[139];
  v25 = v0[138];
  v26 = v0[137];
  v27 = v0[136];
  v30 = v0[133];
  v31 = v0[130];
  v32 = v0[127];
  v33 = v0[126];
  v34 = v0[125];
  v35 = v0[124];
  v36 = v0[123];
  v37 = v0[122];
  v38 = v0[121];
  v39 = v0[120];
  v40 = v0[119];
  v41 = v0[118];
  v42 = v0[117];
  v43 = v0[114];
  v44 = v0[113];
  v45 = v0[112];
  v46 = v0[111];
  v47 = v0[110];
  v48 = v0[109];
  v49 = v0[108];
  v50 = v0[105];
  v51 = v0[102];
  v52 = v0[99];
  v53 = v0[98];
  v54 = v0[97];
  v55 = v0[96];
  v56 = v0[93];
  v57 = v0[92];
  v58 = v0[91];
  v59 = v0[90];
  v60 = v0[89];
  v61 = v0[88];
  v62 = v0[87];
  v63 = v0[86];
  v64 = v0[85];
  v65 = v0[82];
  v67 = v0[80];
  v69 = v0[78];
  v71 = v0[76];

  v28 = v0[1];

  return v28();
}

uint64_t sub_A3FD0()
{
  v73 = v0;
  (*(v0[135] + 8))(v0[140], v0[134]);
  v1 = v0[188];
  v2 = v0[148];
  swift_errorRetain();
  v3 = sub_106D10();
  v4 = sub_106FB0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v72 = v6;
    *v5 = 136315138;
    v0[71] = v1;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v7 = sub_106E30();
    v9 = sub_722E8(v7, v8, &v72);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v4, "Error in RF path: %s", v5, 0xCu);
    sub_2738(v6);
  }

  v10 = v0[162];
  v11 = v0[150];
  v12 = v0[149];
  v70 = v0[147];
  v13 = v0[146];
  v66 = v0[151];
  v68 = v0[145];
  v14 = sub_106750();
  v0[50] = v14;
  v0[51] = &protocol witness table for ABCReport;
  v15 = sub_1A924(v0 + 47);
  *v15 = sub_1045F0();
  v16 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v17 = sub_106690();
  (*(*(v17 - 8) + 104))(v15, v16, v17);
  (*(*(v14 - 8) + 104))(v15, enum case for ABCReport.dialog(_:), v14);
  sub_1064D0();
  sub_2738(v0 + 47);
  swift_willThrow();

  (*(v13 + 8))(v70, v68);
  v18 = v0[147];
  v19 = v0[144];
  v20 = v0[143];
  v21 = v0[142];
  v22 = v0[141];
  v23 = v0[140];
  v24 = v0[139];
  v25 = v0[138];
  v26 = v0[137];
  v27 = v0[136];
  v30 = v0[133];
  v31 = v0[130];
  v32 = v0[127];
  v33 = v0[126];
  v34 = v0[125];
  v35 = v0[124];
  v36 = v0[123];
  v37 = v0[122];
  v38 = v0[121];
  v39 = v0[120];
  v40 = v0[119];
  v41 = v0[118];
  v42 = v0[117];
  v43 = v0[114];
  v44 = v0[113];
  v45 = v0[112];
  v46 = v0[111];
  v47 = v0[110];
  v48 = v0[109];
  v49 = v0[108];
  v50 = v0[105];
  v51 = v0[102];
  v52 = v0[99];
  v53 = v0[98];
  v54 = v0[97];
  v55 = v0[96];
  v56 = v0[93];
  v57 = v0[92];
  v58 = v0[91];
  v59 = v0[90];
  v60 = v0[89];
  v61 = v0[88];
  v62 = v0[87];
  v63 = v0[86];
  v64 = v0[85];
  v65 = v0[82];
  v67 = v0[80];
  v69 = v0[78];
  v71 = v0[76];

  v28 = v0[1];

  return v28();
}

uint64_t sub_A451C()
{
  v73 = v0;
  (*(v0[135] + 8))(v0[140], v0[134]);
  v1 = v0[190];
  v2 = v0[148];
  swift_errorRetain();
  v3 = sub_106D10();
  v4 = sub_106FB0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v72 = v6;
    *v5 = 136315138;
    v0[71] = v1;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v7 = sub_106E30();
    v9 = sub_722E8(v7, v8, &v72);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v4, "Error in RF path: %s", v5, 0xCu);
    sub_2738(v6);
  }

  v10 = v0[162];
  v11 = v0[150];
  v12 = v0[149];
  v70 = v0[147];
  v13 = v0[146];
  v66 = v0[151];
  v68 = v0[145];
  v14 = sub_106750();
  v0[50] = v14;
  v0[51] = &protocol witness table for ABCReport;
  v15 = sub_1A924(v0 + 47);
  *v15 = sub_1045F0();
  v16 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v17 = sub_106690();
  (*(*(v17 - 8) + 104))(v15, v16, v17);
  (*(*(v14 - 8) + 104))(v15, enum case for ABCReport.dialog(_:), v14);
  sub_1064D0();
  sub_2738(v0 + 47);
  swift_willThrow();

  (*(v13 + 8))(v70, v68);
  v18 = v0[147];
  v19 = v0[144];
  v20 = v0[143];
  v21 = v0[142];
  v22 = v0[141];
  v23 = v0[140];
  v24 = v0[139];
  v25 = v0[138];
  v26 = v0[137];
  v27 = v0[136];
  v30 = v0[133];
  v31 = v0[130];
  v32 = v0[127];
  v33 = v0[126];
  v34 = v0[125];
  v35 = v0[124];
  v36 = v0[123];
  v37 = v0[122];
  v38 = v0[121];
  v39 = v0[120];
  v40 = v0[119];
  v41 = v0[118];
  v42 = v0[117];
  v43 = v0[114];
  v44 = v0[113];
  v45 = v0[112];
  v46 = v0[111];
  v47 = v0[110];
  v48 = v0[109];
  v49 = v0[108];
  v50 = v0[105];
  v51 = v0[102];
  v52 = v0[99];
  v53 = v0[98];
  v54 = v0[97];
  v55 = v0[96];
  v56 = v0[93];
  v57 = v0[92];
  v58 = v0[91];
  v59 = v0[90];
  v60 = v0[89];
  v61 = v0[88];
  v62 = v0[87];
  v63 = v0[86];
  v64 = v0[85];
  v65 = v0[82];
  v67 = v0[80];
  v69 = v0[78];
  v71 = v0[76];

  v28 = v0[1];

  return v28();
}

uint64_t sub_A4A68()
{
  v74 = v0;
  v1 = v0[191];

  v2 = v0[194];
  v3 = v0[148];
  swift_errorRetain();
  v4 = sub_106D10();
  v5 = sub_106FB0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v73 = v7;
    *v6 = 136315138;
    v0[70] = v2;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v8 = sub_106E30();
    v10 = sub_722E8(v8, v9, &v73);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v4, v5, "Error in RF path: %s", v6, 0xCu);
    sub_2738(v7);
  }

  v11 = v0[162];
  v12 = v0[150];
  v13 = v0[149];
  v71 = v0[147];
  v14 = v0[146];
  v67 = v0[151];
  v69 = v0[145];
  v15 = sub_106750();
  v0[35] = v15;
  v0[36] = &protocol witness table for ABCReport;
  v16 = sub_1A924(v0 + 32);
  *v16 = sub_1045F0();
  v17 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v18 = sub_106690();
  (*(*(v18 - 8) + 104))(v16, v17, v18);
  (*(*(v15 - 8) + 104))(v16, enum case for ABCReport.dialog(_:), v15);
  sub_1064D0();
  sub_2738(v0 + 32);
  swift_willThrow();

  (*(v14 + 8))(v71, v69);
  v19 = v0[147];
  v20 = v0[144];
  v21 = v0[143];
  v22 = v0[142];
  v23 = v0[141];
  v24 = v0[140];
  v25 = v0[139];
  v26 = v0[138];
  v27 = v0[137];
  v28 = v0[136];
  v31 = v0[133];
  v32 = v0[130];
  v33 = v0[127];
  v34 = v0[126];
  v35 = v0[125];
  v36 = v0[124];
  v37 = v0[123];
  v38 = v0[122];
  v39 = v0[121];
  v40 = v0[120];
  v41 = v0[119];
  v42 = v0[118];
  v43 = v0[117];
  v44 = v0[114];
  v45 = v0[113];
  v46 = v0[112];
  v47 = v0[111];
  v48 = v0[110];
  v49 = v0[109];
  v50 = v0[108];
  v51 = v0[105];
  v52 = v0[102];
  v53 = v0[99];
  v54 = v0[98];
  v55 = v0[97];
  v56 = v0[96];
  v57 = v0[93];
  v58 = v0[92];
  v59 = v0[91];
  v60 = v0[90];
  v61 = v0[89];
  v62 = v0[88];
  v63 = v0[87];
  v64 = v0[86];
  v65 = v0[85];
  v66 = v0[82];
  v68 = v0[80];
  v70 = v0[78];
  v72 = v0[76];

  v29 = v0[1];

  return v29();
}

uint64_t sub_A4FA4()
{
  v73 = v0;
  (*(v0[135] + 8))(v0[139], v0[134]);
  v1 = v0[210];
  v2 = v0[148];
  swift_errorRetain();
  v3 = sub_106D10();
  v4 = sub_106FB0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v72 = v6;
    *v5 = 136315138;
    v0[70] = v1;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v7 = sub_106E30();
    v9 = sub_722E8(v7, v8, &v72);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v4, "Error in RF path: %s", v5, 0xCu);
    sub_2738(v6);
  }

  v10 = v0[162];
  v11 = v0[150];
  v12 = v0[149];
  v70 = v0[147];
  v13 = v0[146];
  v66 = v0[151];
  v68 = v0[145];
  v14 = sub_106750();
  v0[35] = v14;
  v0[36] = &protocol witness table for ABCReport;
  v15 = sub_1A924(v0 + 32);
  *v15 = sub_1045F0();
  v16 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v17 = sub_106690();
  (*(*(v17 - 8) + 104))(v15, v16, v17);
  (*(*(v14 - 8) + 104))(v15, enum case for ABCReport.dialog(_:), v14);
  sub_1064D0();
  sub_2738(v0 + 32);
  swift_willThrow();

  (*(v13 + 8))(v70, v68);
  v18 = v0[147];
  v19 = v0[144];
  v20 = v0[143];
  v21 = v0[142];
  v22 = v0[141];
  v23 = v0[140];
  v24 = v0[139];
  v25 = v0[138];
  v26 = v0[137];
  v27 = v0[136];
  v30 = v0[133];
  v31 = v0[130];
  v32 = v0[127];
  v33 = v0[126];
  v34 = v0[125];
  v35 = v0[124];
  v36 = v0[123];
  v37 = v0[122];
  v38 = v0[121];
  v39 = v0[120];
  v40 = v0[119];
  v41 = v0[118];
  v42 = v0[117];
  v43 = v0[114];
  v44 = v0[113];
  v45 = v0[112];
  v46 = v0[111];
  v47 = v0[110];
  v48 = v0[109];
  v49 = v0[108];
  v50 = v0[105];
  v51 = v0[102];
  v52 = v0[99];
  v53 = v0[98];
  v54 = v0[97];
  v55 = v0[96];
  v56 = v0[93];
  v57 = v0[92];
  v58 = v0[91];
  v59 = v0[90];
  v60 = v0[89];
  v61 = v0[88];
  v62 = v0[87];
  v63 = v0[86];
  v64 = v0[85];
  v65 = v0[82];
  v67 = v0[80];
  v69 = v0[78];
  v71 = v0[76];

  v28 = v0[1];

  return v28();
}

uint64_t sub_A54F0()
{
  v73 = v0;
  (*(v0[135] + 8))(v0[138], v0[134]);
  v1 = v0[223];
  v2 = v0[148];
  swift_errorRetain();
  v3 = sub_106D10();
  v4 = sub_106FB0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v72 = v6;
    *v5 = 136315138;
    v0[70] = v1;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v7 = sub_106E30();
    v9 = sub_722E8(v7, v8, &v72);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v4, "Error in RF path: %s", v5, 0xCu);
    sub_2738(v6);
  }

  v10 = v0[162];
  v11 = v0[150];
  v12 = v0[149];
  v70 = v0[147];
  v13 = v0[146];
  v66 = v0[151];
  v68 = v0[145];
  v14 = sub_106750();
  v0[35] = v14;
  v0[36] = &protocol witness table for ABCReport;
  v15 = sub_1A924(v0 + 32);
  *v15 = sub_1045F0();
  v16 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v17 = sub_106690();
  (*(*(v17 - 8) + 104))(v15, v16, v17);
  (*(*(v14 - 8) + 104))(v15, enum case for ABCReport.dialog(_:), v14);
  sub_1064D0();
  sub_2738(v0 + 32);
  swift_willThrow();

  (*(v13 + 8))(v70, v68);
  v18 = v0[147];
  v19 = v0[144];
  v20 = v0[143];
  v21 = v0[142];
  v22 = v0[141];
  v23 = v0[140];
  v24 = v0[139];
  v25 = v0[138];
  v26 = v0[137];
  v27 = v0[136];
  v30 = v0[133];
  v31 = v0[130];
  v32 = v0[127];
  v33 = v0[126];
  v34 = v0[125];
  v35 = v0[124];
  v36 = v0[123];
  v37 = v0[122];
  v38 = v0[121];
  v39 = v0[120];
  v40 = v0[119];
  v41 = v0[118];
  v42 = v0[117];
  v43 = v0[114];
  v44 = v0[113];
  v45 = v0[112];
  v46 = v0[111];
  v47 = v0[110];
  v48 = v0[109];
  v49 = v0[108];
  v50 = v0[105];
  v51 = v0[102];
  v52 = v0[99];
  v53 = v0[98];
  v54 = v0[97];
  v55 = v0[96];
  v56 = v0[93];
  v57 = v0[92];
  v58 = v0[91];
  v59 = v0[90];
  v60 = v0[89];
  v61 = v0[88];
  v62 = v0[87];
  v63 = v0[86];
  v64 = v0[85];
  v65 = v0[82];
  v67 = v0[80];
  v69 = v0[78];
  v71 = v0[76];

  v28 = v0[1];

  return v28();
}

uint64_t sub_A5A3C()
{
  v76 = v0;
  (*(v0[135] + 8))(v0[137], v0[134]);
  v1 = v0[239];
  v2 = v0[148];
  swift_errorRetain();
  v3 = sub_106D10();
  v4 = sub_106FB0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v75 = v6;
    *v5 = 136315138;
    v0[69] = v1;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v7 = sub_106E30();
    v9 = sub_722E8(v7, v8, &v75);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v4, "Error in RF path: %s", v5, 0xCu);
    sub_2738(v6);
  }

  v10 = v0[226];
  v11 = v0[224];
  v12 = v0[150];
  v13 = v0[149];
  v73 = v0[147];
  v14 = v0[146];
  v69 = v0[225];
  v71 = v0[145];
  v65 = v0[151];
  v67 = v0[89];
  v15 = sub_106750();
  v0[20] = v15;
  v0[21] = &protocol witness table for ABCReport;
  v16 = sub_1A924(v0 + 17);
  *v16 = sub_1045F0();
  v17 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v18 = sub_106690();
  (*(*(v18 - 8) + 104))(v16, v17, v18);
  (*(*(v15 - 8) + 104))(v16, enum case for ABCReport.dialog(_:), v15);
  sub_1064D0();
  sub_2738(v0 + 17);
  swift_willThrow();

  sub_16F70(v67, &qword_137598, &unk_107EB0);
  (*(v14 + 8))(v73, v71);
  v19 = v0[147];
  v20 = v0[144];
  v21 = v0[143];
  v22 = v0[142];
  v23 = v0[141];
  v24 = v0[140];
  v25 = v0[139];
  v26 = v0[138];
  v27 = v0[137];
  v28 = v0[136];
  v31 = v0[133];
  v32 = v0[130];
  v33 = v0[127];
  v34 = v0[126];
  v35 = v0[125];
  v36 = v0[124];
  v37 = v0[123];
  v38 = v0[122];
  v39 = v0[121];
  v40 = v0[120];
  v41 = v0[119];
  v42 = v0[118];
  v43 = v0[117];
  v44 = v0[114];
  v45 = v0[113];
  v46 = v0[112];
  v47 = v0[111];
  v48 = v0[110];
  v49 = v0[109];
  v50 = v0[108];
  v51 = v0[105];
  v52 = v0[102];
  v53 = v0[99];
  v54 = v0[98];
  v55 = v0[97];
  v56 = v0[96];
  v57 = v0[93];
  v58 = v0[92];
  v59 = v0[91];
  v60 = v0[90];
  v61 = v0[89];
  v62 = v0[88];
  v63 = v0[87];
  v64 = v0[86];
  v66 = v0[85];
  v68 = v0[82];
  v70 = v0[80];
  v72 = v0[78];
  v74 = v0[76];

  v29 = v0[1];

  return v29();
}

uint64_t sub_A5FBC()
{
  v76 = v0;
  (*(v0[135] + 8))(v0[137], v0[134]);
  v1 = v0[245];
  v2 = v0[148];
  swift_errorRetain();
  v3 = sub_106D10();
  v4 = sub_106FB0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v75 = v6;
    *v5 = 136315138;
    v0[69] = v1;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v7 = sub_106E30();
    v9 = sub_722E8(v7, v8, &v75);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v4, "Error in RF path: %s", v5, 0xCu);
    sub_2738(v6);
  }

  v10 = v0[226];
  v11 = v0[224];
  v12 = v0[150];
  v13 = v0[149];
  v73 = v0[147];
  v14 = v0[146];
  v69 = v0[225];
  v71 = v0[145];
  v65 = v0[151];
  v67 = v0[89];
  v15 = sub_106750();
  v0[20] = v15;
  v0[21] = &protocol witness table for ABCReport;
  v16 = sub_1A924(v0 + 17);
  *v16 = sub_1045F0();
  v17 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v18 = sub_106690();
  (*(*(v18 - 8) + 104))(v16, v17, v18);
  (*(*(v15 - 8) + 104))(v16, enum case for ABCReport.dialog(_:), v15);
  sub_1064D0();
  sub_2738(v0 + 17);
  swift_willThrow();

  sub_16F70(v67, &qword_137598, &unk_107EB0);
  (*(v14 + 8))(v73, v71);
  v19 = v0[147];
  v20 = v0[144];
  v21 = v0[143];
  v22 = v0[142];
  v23 = v0[141];
  v24 = v0[140];
  v25 = v0[139];
  v26 = v0[138];
  v27 = v0[137];
  v28 = v0[136];
  v31 = v0[133];
  v32 = v0[130];
  v33 = v0[127];
  v34 = v0[126];
  v35 = v0[125];
  v36 = v0[124];
  v37 = v0[123];
  v38 = v0[122];
  v39 = v0[121];
  v40 = v0[120];
  v41 = v0[119];
  v42 = v0[118];
  v43 = v0[117];
  v44 = v0[114];
  v45 = v0[113];
  v46 = v0[112];
  v47 = v0[111];
  v48 = v0[110];
  v49 = v0[109];
  v50 = v0[108];
  v51 = v0[105];
  v52 = v0[102];
  v53 = v0[99];
  v54 = v0[98];
  v55 = v0[97];
  v56 = v0[96];
  v57 = v0[93];
  v58 = v0[92];
  v59 = v0[91];
  v60 = v0[90];
  v61 = v0[89];
  v62 = v0[88];
  v63 = v0[87];
  v64 = v0[86];
  v66 = v0[85];
  v68 = v0[82];
  v70 = v0[80];
  v72 = v0[78];
  v74 = v0[76];

  v29 = v0[1];

  return v29();
}

uint64_t sub_A653C()
{
  v76 = v0;
  (*(v0[135] + 8))(v0[136], v0[134]);
  v1 = v0[258];
  v2 = v0[148];
  swift_errorRetain();
  v3 = sub_106D10();
  v4 = sub_106FB0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v75 = v6;
    *v5 = 136315138;
    v0[68] = v1;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v7 = sub_106E30();
    v9 = sub_722E8(v7, v8, &v75);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v4, "Error in RF path: %s", v5, 0xCu);
    sub_2738(v6);
  }

  v10 = v0[226];
  v11 = v0[224];
  v12 = v0[150];
  v13 = v0[149];
  v73 = v0[147];
  v14 = v0[146];
  v69 = v0[225];
  v71 = v0[145];
  v65 = v0[151];
  v67 = v0[89];
  v15 = sub_106750();
  v0[10] = v15;
  v0[11] = &protocol witness table for ABCReport;
  v16 = sub_1A924(v0 + 7);
  *v16 = sub_1045F0();
  v17 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v18 = sub_106690();
  (*(*(v18 - 8) + 104))(v16, v17, v18);
  (*(*(v15 - 8) + 104))(v16, enum case for ABCReport.dialog(_:), v15);
  sub_1064D0();
  sub_2738(v0 + 7);
  swift_willThrow();

  sub_16F70(v67, &qword_137598, &unk_107EB0);
  (*(v14 + 8))(v73, v71);
  v19 = v0[147];
  v20 = v0[144];
  v21 = v0[143];
  v22 = v0[142];
  v23 = v0[141];
  v24 = v0[140];
  v25 = v0[139];
  v26 = v0[138];
  v27 = v0[137];
  v28 = v0[136];
  v31 = v0[133];
  v32 = v0[130];
  v33 = v0[127];
  v34 = v0[126];
  v35 = v0[125];
  v36 = v0[124];
  v37 = v0[123];
  v38 = v0[122];
  v39 = v0[121];
  v40 = v0[120];
  v41 = v0[119];
  v42 = v0[118];
  v43 = v0[117];
  v44 = v0[114];
  v45 = v0[113];
  v46 = v0[112];
  v47 = v0[111];
  v48 = v0[110];
  v49 = v0[109];
  v50 = v0[108];
  v51 = v0[105];
  v52 = v0[102];
  v53 = v0[99];
  v54 = v0[98];
  v55 = v0[97];
  v56 = v0[96];
  v57 = v0[93];
  v58 = v0[92];
  v59 = v0[91];
  v60 = v0[90];
  v61 = v0[89];
  v62 = v0[88];
  v63 = v0[87];
  v64 = v0[86];
  v66 = v0[85];
  v68 = v0[82];
  v70 = v0[80];
  v72 = v0[78];
  v74 = v0[76];

  v29 = v0[1];

  return v29();
}

uint64_t sub_A6ABC()
{
  v76 = v0;
  (*(v0[135] + 8))(v0[136], v0[134]);
  v1 = v0[264];
  v2 = v0[148];
  swift_errorRetain();
  v3 = sub_106D10();
  v4 = sub_106FB0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v75 = v6;
    *v5 = 136315138;
    v0[68] = v1;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v7 = sub_106E30();
    v9 = sub_722E8(v7, v8, &v75);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v4, "Error in RF path: %s", v5, 0xCu);
    sub_2738(v6);
  }

  v10 = v0[226];
  v11 = v0[224];
  v12 = v0[150];
  v13 = v0[149];
  v73 = v0[147];
  v14 = v0[146];
  v69 = v0[225];
  v71 = v0[145];
  v65 = v0[151];
  v67 = v0[89];
  v15 = sub_106750();
  v0[10] = v15;
  v0[11] = &protocol witness table for ABCReport;
  v16 = sub_1A924(v0 + 7);
  *v16 = sub_1045F0();
  v17 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v18 = sub_106690();
  (*(*(v18 - 8) + 104))(v16, v17, v18);
  (*(*(v15 - 8) + 104))(v16, enum case for ABCReport.dialog(_:), v15);
  sub_1064D0();
  sub_2738(v0 + 7);
  swift_willThrow();

  sub_16F70(v67, &qword_137598, &unk_107EB0);
  (*(v14 + 8))(v73, v71);
  v19 = v0[147];
  v20 = v0[144];
  v21 = v0[143];
  v22 = v0[142];
  v23 = v0[141];
  v24 = v0[140];
  v25 = v0[139];
  v26 = v0[138];
  v27 = v0[137];
  v28 = v0[136];
  v31 = v0[133];
  v32 = v0[130];
  v33 = v0[127];
  v34 = v0[126];
  v35 = v0[125];
  v36 = v0[124];
  v37 = v0[123];
  v38 = v0[122];
  v39 = v0[121];
  v40 = v0[120];
  v41 = v0[119];
  v42 = v0[118];
  v43 = v0[117];
  v44 = v0[114];
  v45 = v0[113];
  v46 = v0[112];
  v47 = v0[111];
  v48 = v0[110];
  v49 = v0[109];
  v50 = v0[108];
  v51 = v0[105];
  v52 = v0[102];
  v53 = v0[99];
  v54 = v0[98];
  v55 = v0[97];
  v56 = v0[96];
  v57 = v0[93];
  v58 = v0[92];
  v59 = v0[91];
  v60 = v0[90];
  v61 = v0[89];
  v62 = v0[88];
  v63 = v0[87];
  v64 = v0[86];
  v66 = v0[85];
  v68 = v0[82];
  v70 = v0[80];
  v72 = v0[78];
  v74 = v0[76];

  v29 = v0[1];

  return v29();
}

uint64_t sub_A703C(uint64_t *a1)
{
  v2 = sub_104670();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_106210();
  v7 = sub_75DD4(0, v6, 0);
  (*(v3 + 8))(v6, v2);
  v8 = *a1;

  *a1 = v7;
  sub_106100();
  sub_25E4(&qword_139740, &unk_10A0B0);
  sub_105160();
  v9 = sub_1060F0();
  v10 = a1[1];

  a1[1] = v9;
  return result;
}

uint64_t sub_A7170(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_A7218;

  return sub_90714(a1, a2);
}

uint64_t sub_A7218()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_A734C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_A734C()
{
  v0[3] = v0[5];
  sub_25E4(&qword_1376C0, &unk_1080D0);
  sub_1064E0();
  v1 = v0[2];
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_A7418(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CA94;

  return sub_D5F44(a1);
}

uint64_t sub_A74D4(uint64_t a1, void *a2)
{
  v5 = *(*(sub_25E4(&qword_1374F0, &qword_1080F0) - 8) + 64) + 15;
  v6 = swift_task_alloc();
  v7 = sub_106630();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = sub_169D8(a1, a2, v6);
  sub_16F70(v6, &qword_1374F0, &qword_1080F0);

  v9 = *(v2 + 8);

  return v9(v8);
}

unint64_t sub_A75F8()
{
  result = qword_139738;
  if (!qword_139738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_139738);
  }

  return result;
}

void sub_A764C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v20 = a1;
  v5 = sub_104670();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = _swiftEmptyArrayStorage;
  v21 = _swiftEmptyArrayStorage;
  v9 = a3 >> 1;
  v11 = (v10 + 8);
  v12 = a2;
LABEL_2:
  v13 = v12;
  while (v9 != v13)
  {
    if (v12 < a2 || v13 >= v9)
    {
      __break(1u);
      return;
    }

    v14 = v13 + 1;
    v15 = *(v20 + 8 * v13);
    sub_106210();
    v16 = sub_75DD4(0, v8, 0);
    (*v11)(v8, v5);

    v13 = v14;
    if (v16)
    {
      sub_106EC0();
      if (*(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v21 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v17 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
        sub_106F10();
      }

      sub_106F20();
      v19 = v21;
      v12 = v14;
      goto LABEL_2;
    }
  }
}

void *sub_A7804(void *a1, uint64_t a2, unint64_t a3)
{
  v35 = a1;
  v5 = sub_25E4(&qword_137DC0, &unk_10A0A0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v29 - v7;
  v9 = sub_106AE0();
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v11);
  v33 = &v29 - v16;
  v17 = a3 >> 1;
  v18 = (a3 >> 1) - a2;
  if (a3 >> 1 == a2)
  {
    return _swiftEmptyArrayStorage;
  }

  else
  {
    v19 = (v15 + 48);
    v32 = v15;
    v34 = (v15 + 32);
    if (a2 > v17)
    {
      v17 = a2;
    }

    v20 = v17 - a2;
    v21 = &v35[a2];
    v35 = _swiftEmptyArrayStorage;
    v30 = (v15 + 48);
    v31 = v13;
    while (v20)
    {
      v22 = *v21;
      sub_769D4(0, 0xE000000000000000, 0, 0xE000000000000000, v8);

      if ((*v19)(v8, 1, v9) == 1)
      {
        result = sub_16F70(v8, &qword_137DC0, &unk_10A0A0);
      }

      else
      {
        v23 = v33;
        v24 = *v34;
        (*v34)(v33);
        (v24)(v13, v23, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_AD840(0, v35[2] + 1, 1, v35);
        }

        v26 = v35[2];
        v25 = v35[3];
        if (v26 >= v25 >> 1)
        {
          v35 = sub_AD840(v25 > 1, v26 + 1, 1, v35);
        }

        v27 = v35;
        v35[2] = v26 + 1;
        v28 = v27 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v26;
        v13 = v31;
        result = (v24)(v28, v31, v9);
        v19 = v30;
      }

      --v20;
      ++v21;
      if (!--v18)
      {
        return v35;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_A7B00(uint64_t result, unint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = a2 >> 62;
    if (!(a2 >> 62))
    {
      v4 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
      goto LABEL_4;
    }
  }

  v9 = result;
  v4 = sub_107270();
  result = v9;
LABEL_4:
  if (v4 >= result)
  {
    v5 = result;
  }

  else
  {
    v5 = v4;
  }

  if (v4 < 0)
  {
    v5 = result;
  }

  if (result)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v4 < v6)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v3)
  {
    result = sub_107270();
    if (result >= v6)
    {
      result = sub_107270();
      goto LABEL_18;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  result = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  if (result < v6)
  {
    goto LABEL_32;
  }

LABEL_18:
  if (result < v4)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v4 < 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if ((v2 & 0xC000000000000001) == 0 || v6 == v4)
  {

    if (!v3)
    {
      return v2 & 0xFFFFFFFFFFFFFF8;
    }

LABEL_28:

    return sub_107280();
  }

  if (v6 < v4)
  {
    sub_106AA0();

    v7 = v6;
    do
    {
      v8 = v7 + 1;
      sub_1071B0(v7);
      v7 = v8;
    }

    while (v4 != v8);
    if (!v3)
    {
      return v2 & 0xFFFFFFFFFFFFFF8;
    }

    goto LABEL_28;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_A7C74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_A7CD4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_A703C(a1);
}

uint64_t sub_A7D44()
{
  v1 = sub_25E4(&qword_137598, &unk_107EB0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v15 - v3;
  sub_25E4(&qword_137880, &unk_108290);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_108210;
  *(v5 + 32) = 0x6C6562616CLL;
  *(v5 + 40) = 0xE500000000000000;
  sub_14994(v0, v4, &qword_137598, &unk_107EB0);
  v6 = sub_106160();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_16F70(v4, &qword_137598, &unk_107EB0);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v6;
    v8 = sub_1A924((v5 + 48));
    (*(v7 + 32))(v8, v4, v6);
  }

  strcpy((v5 + 80), "noAlarmExists");
  *(v5 + 94) = -4864;
  NotFoundParameters = type metadata accessor for SearchQueryNotFoundParameters(0);
  *(v5 + 96) = *(v0 + NotFoundParameters[5]);
  *(v5 + 120) = &type metadata for Bool;
  *(v5 + 128) = 0x6F43686372616573;
  *(v5 + 136) = 0xEF6E6F697469646ELL;
  v10 = *(v0 + NotFoundParameters[6]);
  v11 = sub_25E4(&qword_137888, &unk_10A130);
  *(v5 + 144) = v10;
  *(v5 + 168) = v11;
  *(v5 + 176) = 1701669236;
  *(v5 + 184) = 0xE400000000000000;
  v12 = *(v0 + NotFoundParameters[7]);
  if (v12)
  {
    v13 = sub_1060A0();
  }

  else
  {
    v13 = 0;
    *(v5 + 200) = 0;
    *(v5 + 208) = 0;
  }

  *(v5 + 192) = v12;
  *(v5 + 216) = v13;

  return v5;
}

uint64_t sub_A7FA0()
{
  v1 = sub_25E4(&qword_137598, &unk_107EB0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v31 - v3;
  sub_25E4(&qword_137880, &unk_108290);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1082C0;
  *(v5 + 32) = 0xD000000000000016;
  *(v5 + 40) = 0x800000000010C590;
  sub_14994(v0, v4, &qword_137598, &unk_107EB0);
  v6 = sub_106160();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_16F70(v4, &qword_137598, &unk_107EB0);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v6;
    v8 = sub_1A924((v5 + 48));
    (*(v7 + 32))(v8, v4, v6);
  }

  *(v5 + 80) = 7368801;
  *(v5 + 88) = 0xE300000000000000;
  SuccessMultiParameters = type metadata accessor for SearchQuerySuccessMultiParameters(0);
  v10 = *(v0 + SuccessMultiParameters[5]);
  if (v10)
  {
    v11 = sub_106100();
    v12 = v10;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    *(v5 + 104) = 0;
    *(v5 + 112) = 0;
  }

  *(v5 + 96) = v12;
  *(v5 + 120) = v11;
  *(v5 + 128) = 0xD000000000000020;
  *(v5 + 136) = 0x800000000010DAC0;
  *(v5 + 144) = *(v0 + SuccessMultiParameters[6]);
  *(v5 + 168) = &type metadata for Bool;
  *(v5 + 176) = 0x6E69577473726966;
  *(v5 + 184) = 0xEF657A6953776F64;
  v13 = v0 + SuccessMultiParameters[7];
  if (*(v13 + 8))
  {
    v14 = 0;
    *(v5 + 200) = 0;
    *(v5 + 208) = 0;
    v15 = 0;
  }

  else
  {
    v15 = *v13;
    v14 = &type metadata for Double;
  }

  *(v5 + 192) = v15;
  *(v5 + 216) = v14;
  strcpy((v5 + 224), "hideSleepAlarm");
  *(v5 + 239) = -18;
  *(v5 + 240) = *(v0 + SuccessMultiParameters[8]);
  *(v5 + 264) = &type metadata for Bool;
  strcpy((v5 + 272), "isConclusion");
  *(v5 + 285) = 0;
  *(v5 + 286) = -5120;
  *(v5 + 288) = *(v0 + SuccessMultiParameters[9]);
  *(v5 + 312) = &type metadata for Bool;
  strcpy((v5 + 320), "isFirstWindow");
  *(v5 + 334) = -4864;
  *(v5 + 336) = *(v0 + SuccessMultiParameters[10]);
  *(v5 + 360) = &type metadata for Bool;
  strcpy((v5 + 368), "isLastWindow");
  *(v5 + 381) = 0;
  *(v5 + 382) = -5120;
  *(v5 + 384) = *(v0 + SuccessMultiParameters[11]);
  *(v5 + 408) = &type metadata for Bool;
  *(v5 + 416) = 0xD000000000000016;
  *(v5 + 424) = 0x800000000010DAF0;
  *(v5 + 432) = *(v0 + SuccessMultiParameters[12]);
  *(v5 + 456) = &type metadata for Bool;
  *(v5 + 464) = 0x736D657469;
  *(v5 + 472) = 0xE500000000000000;
  v16 = *(v0 + SuccessMultiParameters[13]);
  v17 = sub_25E4(&qword_137B40, &unk_108390);
  *(v5 + 480) = v16;
  *(v5 + 504) = v17;
  *(v5 + 512) = 0xD000000000000013;
  *(v5 + 520) = 0x800000000010DB10;
  v18 = v0 + SuccessMultiParameters[14];
  if (*(v18 + 8))
  {
    v19 = 0;
    *(v5 + 536) = 0u;
    v20 = 0;
  }

  else
  {
    v20 = *v18;
    v19 = &type metadata for Double;
  }

  *(v5 + 528) = v20;
  *(v5 + 552) = v19;
  *(v5 + 560) = 0x616C417065656C73;
  *(v5 + 568) = 0xEA00000000006D72;
  v21 = *(v0 + SuccessMultiParameters[15]);
  if (v21)
  {
    v22 = type metadata accessor for AlarmAlarm(0);
    v23 = v21;
  }

  else
  {
    v23 = 0;
    v22 = 0;
    *(v5 + 584) = 0u;
  }

  *(v5 + 576) = v23;
  *(v5 + 600) = v22;
  *(v5 + 608) = 0x6574496C61746F74;
  *(v5 + 616) = 0xEA0000000000736DLL;
  v24 = v0 + SuccessMultiParameters[16];
  if (*(v24 + 8))
  {
    v25 = 0;
    *(v5 + 632) = 0u;
    v26 = 0;
  }

  else
  {
    v26 = *v24;
    v25 = &type metadata for Double;
  }

  *(v5 + 624) = v26;
  *(v5 + 648) = v25;
  *(v5 + 656) = 0x6953776F646E6977;
  *(v5 + 664) = 0xEA0000000000657ALL;
  v27 = v0 + SuccessMultiParameters[17];
  if (*(v27 + 8))
  {
    v28 = 0;
    *(v5 + 680) = 0u;
    v29 = 0;
  }

  else
  {
    v29 = *v27;
    v28 = &type metadata for Double;
  }

  *(v5 + 672) = v29;
  *(v5 + 696) = v28;

  return v5;
}

uint64_t sub_A84A0()
{
  v1 = sub_25E4(&qword_137598, &unk_107EB0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v26 - v3;
  sub_25E4(&qword_137880, &unk_108290);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_109670;
  *(v5 + 32) = 0x6D72616C61;
  *(v5 + 40) = 0xE500000000000000;
  v6 = *v0;
  if (*v0)
  {
    v7 = type metadata accessor for AlarmAlarm(0);
    v8 = v6;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    *(v5 + 56) = 0;
    *(v5 + 64) = 0;
  }

  *(v5 + 48) = v8;
  *(v5 + 72) = v7;
  *(v5 + 80) = 7368801;
  *(v5 + 88) = 0xE300000000000000;
  v9 = v0[1];
  if (v9)
  {
    v10 = sub_106100();
    v11 = v9;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    *(v5 + 104) = 0;
    *(v5 + 112) = 0;
  }

  *(v5 + 96) = v11;
  *(v5 + 120) = v10;
  *(v5 + 128) = 0xD000000000000012;
  *(v5 + 136) = 0x800000000010DB30;
  if (v0[3])
  {
    v12 = 0;
    *(v5 + 152) = 0;
    *(v5 + 160) = 0;
    v13 = 0;
  }

  else
  {
    v13 = v0[2];
    v12 = &type metadata for Double;
  }

  *(v5 + 144) = v13;
  *(v5 + 168) = v12;
  *(v5 + 176) = 0xD000000000000012;
  *(v5 + 184) = 0x800000000010DB50;
  *(v5 + 192) = *(v0 + 25);
  *(v5 + 216) = &type metadata for Bool;
  *(v5 + 224) = 0x616C417065656C73;
  *(v5 + 232) = 0xEA00000000006D72;
  v14 = v0[4];
  if (v14)
  {
    v15 = type metadata accessor for AlarmAlarm(0);
    v16 = v14;
  }

  else
  {
    v16 = 0;
    v15 = 0;
    *(v5 + 248) = 0;
    *(v5 + 256) = 0;
  }

  *(v5 + 240) = v16;
  *(v5 + 264) = v15;
  *(v5 + 272) = 0xD000000000000010;
  *(v5 + 280) = 0x800000000010DB70;
  if (v0[6])
  {
    v17 = 0;
    *(v5 + 296) = 0;
    *(v5 + 304) = 0;
    v18 = 0;
  }

  else
  {
    v18 = v0[5];
    v17 = &type metadata for Double;
  }

  *(v5 + 288) = v18;
  *(v5 + 312) = v17;
  *(v5 + 320) = 0xD000000000000014;
  *(v5 + 328) = 0x800000000010DB90;
  *(v5 + 336) = *(v0 + 49);
  *(v5 + 360) = &type metadata for Bool;
  *(v5 + 368) = 0xD000000000000012;
  *(v5 + 376) = 0x800000000010C670;
  SuccessSingleParameters = type metadata accessor for SearchQuerySuccessSingleParameters(0);
  sub_14994(v0 + SuccessSingleParameters[11], v4, &qword_137598, &unk_107EB0);
  v20 = sub_106160();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v4, 1, v20) == 1)
  {

    sub_16F70(v4, &qword_137598, &unk_107EB0);
    *(v5 + 384) = 0u;
    *(v5 + 400) = 0u;
  }

  else
  {
    *(v5 + 408) = v20;
    v22 = sub_1A924((v5 + 384));
    (*(v21 + 32))(v22, v4, v20);
  }

  *(v5 + 416) = 0xD000000000000012;
  *(v5 + 424) = 0x800000000010DBB0;
  *(v5 + 432) = *(v0 + SuccessSingleParameters[12]);
  *(v5 + 456) = &type metadata for Bool;
  *(v5 + 464) = 0xD000000000000011;
  *(v5 + 472) = 0x800000000010C690;
  v23 = *(v0 + SuccessSingleParameters[13]);
  if (v23)
  {
    v24 = sub_1060A0();
  }

  else
  {
    v24 = 0;
    *(v5 + 488) = 0;
    *(v5 + 496) = 0;
  }

  *(v5 + 480) = v23;
  *(v5 + 504) = v24;

  return v5;
}

uint64_t sub_A8884(uint64_t a1, uint64_t a2)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25E4(&unk_137430, &qword_107DC0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  sub_14994(a1, v13, &unk_137430, &qword_107DC0);
  (*(v6 + 16))(v9, a2, v5);
  v16 = sub_1060B0();
  (*(v6 + 8))(a2, v5);
  sub_16F70(a1, &unk_137430, &qword_107DC0);
  return v16;
}

uint64_t sub_A8AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E4(&qword_137598, &unk_107EB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_A8B84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25E4(&qword_137598, &unk_107EB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_A8C48()
{
  sub_A9480(319, &qword_1378F8, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_A9480(319, &qword_137900, &type metadata accessor for SpeakableString, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_A9480(319, &unk_137908, &type metadata accessor for DialogCalendar, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_A8D90(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_25E4(&qword_137598, &unk_107EB0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 44);

    return v10(v11, a2, v9);
  }
}

void *sub_A8E6C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_25E4(&qword_137598, &unk_107EB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_A8F1C()
{
  sub_A9480(319, &unk_137A20, type metadata accessor for AlarmAlarm, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_A9480(319, &qword_137A10, &type metadata accessor for SirikitApp, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_A90C8();
      if (v2 <= 0x3F)
      {
        sub_A9480(319, &qword_1378F8, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_A9480(319, &unk_137908, &type metadata accessor for DialogCalendar, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_A90C8()
{
  if (!qword_139898)
  {
    v0 = sub_1070E0();
    if (!v1)
    {
      atomic_store(v0, &qword_139898);
    }
  }
}

uint64_t sub_A912C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E4(&qword_137598, &unk_107EB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 52));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_A9208(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25E4(&qword_137598, &unk_107EB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 52)) = (a2 - 1);
  }

  return result;
}

void sub_A92CC()
{
  sub_A9480(319, &qword_1378F8, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_A9480(319, &qword_137A10, &type metadata accessor for SirikitApp, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_A90C8();
      if (v2 <= 0x3F)
      {
        sub_A9480(319, &qword_137A18, type metadata accessor for AlarmAlarm, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          sub_A9480(319, &unk_137A20, type metadata accessor for AlarmAlarm, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_A9480(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_A94E4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1045E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 dateTime];
  if (!v9)
  {
    goto LABEL_5;
  }

  v10 = v9;
  sub_104570();

  v11 = sub_104580();
  if (v12 & 1) != 0 || (v55 = v11, v13 = sub_1045A0(), (v14))
  {
    (*(v5 + 8))(v8, v4);
LABEL_5:

    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
LABEL_6:
    *a2 = v15;
    *(a2 + 8) = v16;
    *(a2 + 16) = v17;
    *(a2 + 24) = v18;
    *(a2 + 32) = v19;
    *(a2 + 40) = v20;
    return;
  }

  v21 = v13;
  v22 = [a1 label];
  if (v22)
  {
    v23 = v22;
    v24 = sub_106E20();
    v49 = v25;
    v50 = v24;
  }

  else
  {
    v49 = 0xE000000000000000;
    v50 = 0;
  }

  v26 = [a1 repeatSchedule];
  v27 = _swiftEmptyArrayStorage;
  v53 = v5;
  v54 = v4;
  v51 = v8;
  v52 = v21;
  if (!v26)
  {
LABEL_24:
    v37 = [a1 enabled];
    if (v37)
    {
      v38 = v37;
      v20 = [v37 BOOLValue];

      v39 = v27[2];
      if (v39)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v20 = 1;
      v39 = v27[2];
      if (v39)
      {
LABEL_26:
        v56 = _swiftEmptyArrayStorage;
        sub_83444(0, v39, 0);
        v40 = 4;
        v19 = v56;
        do
        {
          v41 = v27[v40];
          v42 = sub_106BD0();
          v56 = v19;
          v44 = v19[2];
          v43 = v19[3];
          if (v44 >= v43 >> 1)
          {
            v45 = a1;
            v46 = v42;
            sub_83444((v43 > 1), v44 + 1, 1);
            v42 = v46;
            a1 = v45;
            v19 = v56;
          }

          v19[2] = v44 + 1;
          v19[v44 + 4] = v42;
          ++v40;
          --v39;
        }

        while (v39);
        (*(v53 + 8))(v51, v54);

        goto LABEL_33;
      }
    }

    (*(v53 + 8))(v51, v54);
    v19 = _swiftEmptyArrayStorage;
LABEL_33:
    v15 = v55;
    v16 = v52;
    v18 = v49;
    v17 = v50;
    goto LABEL_6;
  }

  v28 = v26;
  v48 = a1;
  sub_1069A0();
  v29 = sub_106EE0();

  if (!(v29 >> 62))
  {
    v30 = *(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8));
    if (v30)
    {
      goto LABEL_13;
    }

LABEL_23:

    a1 = v48;
    goto LABEL_24;
  }

  v30 = sub_107270();
  if (!v30)
  {
    goto LABEL_23;
  }

LABEL_13:
  v56 = _swiftEmptyArrayStorage;
  sub_83404(0, v30 & ~(v30 >> 63), 0);
  if ((v30 & 0x8000000000000000) == 0)
  {
    v31 = 0;
    v27 = v56;
    do
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v32 = sub_1071C0();
      }

      else
      {
        v32 = *(v29 + 8 * v31 + 32);
      }

      v33 = v32;
      v34 = [v32 repeatSchedule];

      v56 = v27;
      v36 = v27[2];
      v35 = v27[3];
      if (v36 >= v35 >> 1)
      {
        sub_83404((v35 > 1), v36 + 1, 1);
        v27 = v56;
      }

      ++v31;
      v27[2] = v36 + 1;
      v27[v36 + 4] = v34;
    }

    while (v30 != v31);
    goto LABEL_23;
  }

  __break(1u);
}

uint64_t sub_A9944()
{
  v1 = sub_25E4(&qword_137598, &unk_107EB0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v19 - v3;
  sub_25E4(&qword_137880, &unk_108290);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_108210;
  *(v5 + 32) = 0x6D72616C61;
  *(v5 + 40) = 0xE500000000000000;
  v6 = *v0;
  if (*v0)
  {
    v7 = type metadata accessor for AlarmAlarm(0);
    v8 = v6;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    *(v5 + 56) = 0;
    *(v5 + 64) = 0;
  }

  *(v5 + 48) = v8;
  *(v5 + 72) = v7;
  *(v5 + 80) = 7368801;
  *(v5 + 88) = 0xE300000000000000;
  v9 = v0[1];
  if (v9)
  {
    v10 = sub_106100();
    v11 = v9;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    *(v5 + 104) = 0;
    *(v5 + 112) = 0;
  }

  *(v5 + 96) = v11;
  *(v5 + 120) = v10;
  *(v5 + 128) = 0x6C6562614C77656ELL;
  *(v5 + 136) = 0xE800000000000000;
  v12 = type metadata accessor for ModifyAlarmIntentHandledRenameParameters(0);
  sub_14994(v0 + *(v12 + 24), v4, &qword_137598, &unk_107EB0);
  v13 = sub_106160();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v4, 1, v13) == 1)
  {

    sub_16F70(v4, &qword_137598, &unk_107EB0);
    *(v5 + 144) = 0u;
    *(v5 + 160) = 0u;
  }

  else
  {
    *(v5 + 168) = v13;
    v15 = sub_1A924((v5 + 144));
    (*(v14 + 32))(v15, v4, v13);
  }

  *(v5 + 176) = 0x616C417065656C73;
  *(v5 + 184) = 0xEA00000000006D72;
  v16 = *(v0 + *(v12 + 28));
  if (v16)
  {
    v17 = type metadata accessor for AlarmAlarm(0);
  }

  else
  {
    v17 = 0;
    *(v5 + 200) = 0;
    *(v5 + 208) = 0;
  }

  *(v5 + 192) = v16;
  *(v5 + 216) = v17;

  return v5;
}

uint64_t sub_A9BCC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for ModifyAlarmIntentHandledRenameParameters(0);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();

  return _swift_task_switch(sub_A9C64, 0, 0);
}

uint64_t sub_A9C64()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[2];
  v3 = v0[3];
  *v1 = 0;
  *(v1 + 1) = 0;
  v5 = *(v2 + 24);
  v6 = sub_106160();
  (*(*(v6 - 8) + 56))(&v1[v5], 1, 1, v6);
  *&v1[*(v2 + 28)] = 0;
  v4(v1);
  v7 = sub_A9944();
  v0[7] = v7;
  v8 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v12 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_A9DA8;
  v10 = v0[4];

  return v12(0xD00000000000001FLL, 0x800000000010DC30, v7);
}

uint64_t sub_A9DA8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v8 = sub_A9F68;
  }

  else
  {
    *(v4 + 80) = a1;
    v8 = sub_A9EF4;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_A9EF4()
{
  sub_AA60C(v0[6]);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_A9F68()
{
  sub_AA60C(v0[6]);

  v1 = v0[1];
  v2 = v0[9];

  return v1();
}

uint64_t sub_A9FD8(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return _swift_task_switch(sub_A9FFC, 0, 0);
}

uint64_t sub_A9FFC()
{
  v0[2] = 0;
  v1 = v0[5];
  v2 = v0[6];
  v0[3] = 0;
  v0[4] = 0;
  v1(v0 + 2);
  v4 = v0[2];
  v3 = v0[3];
  v0[8] = v4;
  v0[9] = v3;
  v5 = v0[4];
  sub_25E4(&qword_137880, &unk_108290);
  v6 = swift_allocObject();
  v0[10] = v6;
  *(v6 + 16) = xmmword_109690;
  *(v6 + 32) = 0x6D72616C61;
  *(v6 + 40) = 0xE500000000000000;
  if (v4)
  {
    v7 = type metadata accessor for AlarmAlarm(0);
    v8 = v4;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    *(v6 + 56) = 0;
    *(v6 + 64) = 0;
  }

  *(v6 + 48) = v8;
  *(v6 + 72) = v7;
  *(v6 + 80) = 7368801;
  *(v6 + 88) = 0xE300000000000000;
  if (v3)
  {
    v9 = sub_106100();
    v10 = v3;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    *(v6 + 104) = 0;
    *(v6 + 112) = 0;
  }

  *(v6 + 96) = v10;
  *(v6 + 120) = v9;
  *(v6 + 128) = 0x616C417065656C73;
  *(v6 + 136) = 0xEA00000000006D72;
  v11 = 0;
  if (v5)
  {
    v11 = type metadata accessor for AlarmAlarm(0);
  }

  else
  {
    *(v6 + 152) = 0;
    *(v6 + 160) = 0;
  }

  v0[11] = v5;
  *(v6 + 144) = v5;
  *(v6 + 168) = v11;
  v12 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v16 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));

  v13 = swift_task_alloc();
  v0[12] = v13;
  *v13 = v0;
  v13[1] = sub_AA1FC;
  v14 = v0[7];

  return v16(0xD00000000000001DLL, 0x800000000010DC10, v6);
}

uint64_t sub_AA1FC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *(*v2 + 80);
  v7 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v8 = sub_AA3C4;
  }

  else
  {
    *(v4 + 112) = a1;
    v8 = sub_AA348;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_AA348()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];

  v4 = v0[1];
  v5 = v0[14];

  return v4(v5);
}

uint64_t sub_AA3C4()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];

  v4 = v0[1];
  v5 = v0[13];

  return v4();
}

uint64_t sub_AA43C(uint64_t a1, uint64_t a2)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25E4(&unk_137430, &qword_107DC0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  sub_14994(a1, v13, &unk_137430, &qword_107DC0);
  (*(v6 + 16))(v9, a2, v5);
  v16 = sub_1060B0();
  (*(v6 + 8))(a2, v5);
  sub_16F70(a1, &unk_137430, &qword_107DC0);
  return v16;
}

uint64_t sub_AA60C(uint64_t a1)
{
  v2 = type metadata accessor for ModifyAlarmIntentHandledRenameParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_AA67C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_25E4(&qword_137598, &unk_107EB0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_AA758(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_25E4(&qword_137598, &unk_107EB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_AA808()
{
  sub_AA8FC(319, &unk_137A20, type metadata accessor for AlarmAlarm);
  if (v0 <= 0x3F)
  {
    sub_AA8FC(319, &qword_137A10, &type metadata accessor for SirikitApp);
    if (v1 <= 0x3F)
    {
      sub_AA8FC(319, &qword_1378F8, &type metadata accessor for SpeakableString);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_AA8FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1070E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_AA950()
{
  v1 = v0;
  v2 = sub_25E4(&qword_137500, &qword_107E10);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v79 - v7;
  v9 = sub_105590();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1DB58(v1);
  if (result)
  {
    return result;
  }

  v80 = v6;
  v81 = v8;
  if (qword_136DB0 != -1)
  {
    swift_once();
  }

  v15 = sub_106D20();
  v16 = sub_135C4(v15, qword_139A90);
  v17 = sub_106D10();
  v18 = sub_106FC0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "Resolved alarmSearch from RRaaS is nil!", v19, 2u);
  }

  v20 = sub_AD230();
  if (v20 && (, v21 = sub_105F80(), , v21))
  {
    v22 = sub_105F00();

    v23 = v22 ^ 1;
  }

  else
  {
    v23 = 1;
  }

  v82 = v23;

  v24 = sub_106D10();
  v25 = sub_106FC0();

  if (os_log_type_enabled(v24, v25))
  {
    v79[0] = v10;
    v79[1] = v16;
    v26 = 7104878;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v83 = v28;
    *v27 = 136315394;
    if (v20 && sub_105F80())
    {
      v29 = sub_105F00();

      v30 = (v29 & 1) == 0;
      if (v29)
      {
        v26 = 1702195828;
      }

      else
      {
        v26 = 0x65736C6166;
      }

      if (v30)
      {
        v31 = 0xE500000000000000;
      }

      else
      {
        v31 = 0xE400000000000000;
      }
    }

    else
    {
      v31 = 0xE300000000000000;
    }

    v32 = sub_722E8(v26, v31, &v83);

    *(v27 + 4) = v32;
    *(v27 + 12) = 1024;
    *(v27 + 14) = v82 & 1;
    _os_log_impl(&dword_0, v24, v25, "In toINAlarmSearch: SiriInference.meridiemSetByUser = %s, isMeridianInferred = %{BOOL}d", v27, 0x12u);
    sub_2738(v28);

    v10 = v79[0];
  }

  else
  {
  }

  sub_106A50();
  v33 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v34 = sub_106E10();
  v35 = [v33 initWithIdentifier:0 displayString:v34];

  if (sub_AC160())
  {
    v36 = 3;
  }

  else if (sub_AC5E0())
  {
    v36 = 2;
  }

  else
  {
    v36 = 0;
  }

  [v35 setAlarmReferenceType:v36];
  sub_AB868();
  if (v37)
  {
    v38 = sub_106E10();
  }

  else
  {
    v38 = 0;
  }

  [v35 setLabel:v38];

  [v35 setAlarmSearchStatus:sub_ACA60()];
  v39 = sub_ACBCC();
  (*(v10 + 104))(v13, enum case for UsoEntity_appleAlarm_AlarmAttribute.DefinedValues.appleAlarm_AlarmAttribute_AlarmAttributesSleep(_:), v9);
  v40 = sub_AB75C(v13, v39);

  (*(v10 + 8))(v13, v9);
  v41 = [objc_allocWithZone(NSNumber) initWithBool:v40];
  [v35 setIncludeSleepAlarm:v41];

  [v35 setPeriod:sub_ACF8C()];
  v42 = sub_106F50();
  [v35 setIsMeridianInferred:v42];

  if (v20 && sub_105F70())
  {

    if (!sub_1058F0() || (v43 = sub_105980(), , !v43) || (v44 = sub_1058C0(), , !v44))
    {

      v53 = sub_106D10();
      v54 = sub_106FC0();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v83 = v56;
        *v55 = 136315138;
        if (sub_105F70())
        {
          v57 = sub_105F60();
          v59 = v58;
        }

        else
        {
          v57 = 0;
          v59 = 0xE000000000000000;
        }

        v72 = sub_722E8(v57, v59, &v83);

        *(v55 + 4) = v72;
        _os_log_impl(&dword_0, v53, v54, "Found time range info from SiriInference: %s", v55, 0xCu);
        sub_2738(v56);
      }

      else
      {
      }

      isa = sub_105F20().super.isa;

      v71 = &selRef_setTimeRange_;
      goto LABEL_61;
    }
  }

  v45 = sub_106D10();
  v46 = sub_106FC0();

  if (!os_log_type_enabled(v45, v46))
  {

    if (!v20)
    {
      goto LABEL_52;
    }

    goto LABEL_49;
  }

  v47 = swift_slowAlloc();
  v48 = swift_slowAlloc();
  v83 = v48;
  *v47 = 136315138;
  if (v20)
  {
    v49 = sub_105F80();
    if (v49)
    {
      v50 = sub_105EF0();
      v52 = v51;

      v49 = v50;
      goto LABEL_48;
    }
  }

  else
  {
    v49 = 0;
  }

  v52 = 0xE000000000000000;
LABEL_48:
  v60 = sub_722E8(v49, v52, &v83);

  *(v47 + 4) = v60;
  _os_log_impl(&dword_0, v45, v46, "Found time point info from SiriInference: %s", v47, 0xCu);
  sub_2738(v48);

  if (!v20)
  {
LABEL_52:
    v65 = sub_1045E0();
    (*(*(v65 - 8) + 56))(v81, 1, 1, v65);
    goto LABEL_55;
  }

LABEL_49:

  v61 = sub_105F30(0, 0);

  if (!v61)
  {
    goto LABEL_52;
  }

  v62 = [v61 startDateComponents];

  if (v62)
  {
    v63 = v80;
    sub_104570();

    v64 = 0;
  }

  else
  {
    v64 = 1;
    v63 = v80;
  }

  v66 = sub_1045E0();
  v67 = *(v66 - 8);
  (*(v67 + 56))(v63, v64, 1, v66);
  v68 = v63;
  v69 = v81;
  sub_1D68C(v68, v81);
  if ((*(v67 + 48))(v69, 1, v66) != 1)
  {
    isa = sub_104560().super.isa;
    (*(v67 + 8))(v69, v66);
    goto LABEL_56;
  }

LABEL_55:
  isa = 0;
LABEL_56:
  v71 = &selRef_setTime_;
LABEL_61:
  [v35 *v71];

  v73 = v35;
  v74 = sub_106D10();
  v75 = sub_106FC0();
  v76 = v73;

  if (os_log_type_enabled(v74, v75))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *v77 = 138412290;
    *(v77 + 4) = v76;
    *v78 = v76;
    v76 = v76;
    _os_log_impl(&dword_0, v74, v75, "alarmSearch Converted from UsoEntity_common_Alarm: %@", v77, 0xCu);
    sub_16F70(v78, &qword_137578, &unk_10B4E0);
  }

  return v76;
}

uint64_t sub_AB3EC()
{
  if (sub_1058F0())
  {
    v0 = sub_105960();

    if (v0)
    {

      v1 = sub_106220();

      if (v1)
      {
        if (qword_136DB0 != -1)
        {
          swift_once();
        }

        v2 = sub_106D20();
        sub_135C4(v2, qword_139A90);

        v3 = sub_106D10();
        v4 = sub_106FC0();

        if (!os_log_type_enabled(v3, v4))
        {
          goto LABEL_17;
        }

        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v17 = v6;
        *v5 = 136315138;
        sub_105F90();
        sub_ADB60(&qword_139AC8, &type metadata accessor for DateTime);
        v7 = sub_107340();
        v9 = sub_722E8(v7, v8, &v17);

        *(v5 + 4) = v9;
        v10 = "Got inferred alarm time from endDateTime: %s";
LABEL_16:
        _os_log_impl(&dword_0, v3, v4, v10, v5, 0xCu);
        sub_2738(v6);

LABEL_17:

        goto LABEL_18;
      }
    }
  }

  if (!sub_105910())
  {
    return 0;
  }

  v11 = sub_105C90();

  if (!v11)
  {
    return 0;
  }

  v1 = sub_106220();

  if (v1)
  {
    if (qword_136DB0 != -1)
    {
      swift_once();
    }

    v12 = sub_106D20();
    sub_135C4(v12, qword_139A90);

    v3 = sub_106D10();
    v4 = sub_106FC0();

    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_17;
    }

    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    sub_105F90();
    sub_ADB60(&qword_139AC8, &type metadata accessor for DateTime);
    v13 = sub_107340();
    v15 = sub_722E8(v13, v14, &v17);

    *(v5 + 4) = v15;
    v10 = "Got inferred alarm time from recurringDateTime: %s";
    goto LABEL_16;
  }

LABEL_18:

  return v1;
}

BOOL sub_AB75C(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(sub_105590() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_ADB60(&qword_139AB0, &type metadata accessor for UsoEntity_appleAlarm_AlarmAttribute.DefinedValues);
  }

  while ((sub_106E00() & 1) == 0);
  return v4 != v5;
}

uint64_t sub_AB868()
{
  v0 = sub_104EC0();
  v50 = *(v0 - 8);
  v51 = v0;
  v1 = *(v50 + 64);
  __chkstk_darwin(v0);
  v49 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_105060();
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  __chkstk_darwin(v3);
  v46 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_105030();
  v53 = *(v6 - 8);
  v54 = v6;
  v7 = *(v53 + 64);
  __chkstk_darwin(v6);
  v52 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_106200();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v55 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_25E4(&qword_138CB8, &qword_1097D0);
  v12 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56);
  v57 = &v45 - v13;
  v14 = sub_1064A0();
  v58 = *(v14 - 8);
  v15 = *(v58 + 64);
  __chkstk_darwin(v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1064C0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_105590();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_105920();
  if (v29)
  {
    v30 = HIBYTE(v29) & 0xF;
    if ((v29 & 0x2000000000000000) == 0)
    {
      v30 = v28 & 0xFFFFFFFFFFFFLL;
    }

    if (v30)
    {
      v31 = sub_106E60();

      return v31;
    }
  }

  v33 = sub_ACBCC();
  (*(v24 + 104))(v27, enum case for UsoEntity_appleAlarm_AlarmAttribute.DefinedValues.appleAlarm_AlarmAttribute_AlarmAttributesSleep(_:), v23);
  v34 = sub_AB75C(v27, v33);

  (*(v24 + 8))(v27, v23);
  if (v34)
  {
    (*(v58 + 104))(v17, enum case for AppInstallUtil.Domain.sleep(_:), v14);
    sub_1064B0();
    v35 = sub_106470();
    (*(v19 + 8))(v22, v18);
    if ((v35 & 1) == 0)
    {
      type metadata accessor for AlarmBaseCATs_Sync();
      sub_1061E0();
      sub_1060D0();
      v36 = v57;
      sub_1060C0();

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_16F70(v36, &qword_138CB8, &qword_1097D0);
      }

      else
      {
        v38 = v52;
        v37 = v53;
        v39 = v54;
        (*(v53 + 32))(v52, v36, v54);
        v40 = sub_105020();
        if (*(v40 + 16))
        {
          v41 = v46;
          v42 = v47;
          v43 = v48;
          (*(v47 + 16))(v46, v40 + ((*(v42 + 80) + 32) & ~*(v42 + 80)), v48);

          v44 = v49;
          sub_105050();
          (*(v42 + 8))(v41, v43);
          v31 = sub_104EB0();
          (*(v50 + 8))(v44, v51);
          (*(v37 + 8))(v38, v39);
          return v31;
        }

        (*(v37 + 8))(v38, v39);
      }
    }
  }

  return 0;
}