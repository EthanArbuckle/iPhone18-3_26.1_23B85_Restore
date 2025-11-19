uint64_t sub_29E15B008(uint64_t a1)
{
  v2 = sub_29E2BCC24();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BEBB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_reviewOngoingCycleFactors);
  if (v10 >> 62)
  {
    v11 = sub_29E2C4484();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = sub_29E15AE34();
  if (v11)
  {
    if (result)
    {
      sub_29E2BEC64();

      return sub_29E2BEC34();
    }
  }

  else if ((result & 1) == 0)
  {
    sub_29E15B964(0, &unk_2A181B3C0, &qword_2A1819BD0, MEMORY[0x29EDC18F8], MEMORY[0x29EDC9E90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_29E2CAB20;
    sub_29E2BCC14();
    v14 = sub_29E2BCBD4();
    v20 = v7;
    v16 = v15;
    v17 = *(v3 + 8);
    v17(v5, v2);
    *(v13 + 56) = &type metadata for OnboardingSelectRow;
    *(v13 + 64) = sub_29DF07FEC();
    v18 = swift_allocObject();
    *(v13 + 32) = v18;
    *(v18 + 16) = 0x43676E6967676F6CLL;
    *(v18 + 24) = 0xEB000000006C6C65;
    *(v18 + 32) = v14;
    *(v18 + 40) = v16;
    *(v18 + 48) = 768;
    *(v18 + 50) = 0;
    sub_29E2BCC14();
    sub_29E2BCBD4();
    v17(v5, v2);
    sub_29E2BEBA4();
    sub_29E2BEC64();

    sub_29E2BECF4();
    return (*(v20 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_29E15B338(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x29EDCA190];
  if (v2)
  {
    v5 = a1;
    v10 = MEMORY[0x29EDCA190];
    sub_29E2C4634();
    v6 = (a2 + 32);
    do
    {
      v7 = *v6;
      v6 += 2;
      v8 = v7;
      sub_29E2C4614();
      sub_29E2C4644();
      sub_29E2C4654();
      sub_29E2C4624();
      --v2;
    }

    while (v2);
    v3 = v10;
    a1 = v5;
  }

  sub_29E15A6D0(a1, v3);
}

void sub_29E15B414(uint64_t a1, unint64_t a2)
{
  v58 = a2;
  v4 = sub_29E2BCBB4();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_29E2BCC24();
  v8 = *(v53 - 8);
  MEMORY[0x2A1C7C4A8](v53);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E2BEBB4();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v2;
  v16 = *(v2 + qword_2A181DDE0 + 8);
  if (v16 == 1)
  {
    v49 = v15;
    v50 = v13;
    v51 = v10;
    v52 = v7;
    if (v58 >> 62)
    {
      v57 = sub_29E2C4484();
      if (!v57)
      {
        return;
      }
    }

    else
    {
      v57 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v57)
      {
        return;
      }
    }

    if (v57 < 1)
    {
      __break(1u);
    }

    else
    {
      v17 = 0;
      v18 = (v8 + 8);
      v19 = v58 & 0xC000000000000001;
      v45 = (v5 + 32);
      v46 = v18;
      v44 = (v12 + 8);
      v43 = xmmword_29E2CD7A0;
      v47 = v58 & 0xC000000000000001;
      v48 = v4;
      v20 = v18;
      do
      {
        if (v19)
        {
          v21 = MEMORY[0x29ED80D70](v17, v58);
        }

        else
        {
          v21 = *(v58 + 8 * v17 + 32);
        }

        v22 = v21;
        v23 = *(sub_29E15AA34(v21) + 16);

        if (v23)
        {
        }

        else
        {
          v56 = sub_29E08D670([v22 hkmc_cycleFactor]);
          sub_29E15B964(0, &unk_2A181B3C0, &qword_2A1819BD0, MEMORY[0x29EDC18F8], MEMORY[0x29EDC9E90]);
          v24 = swift_allocObject();
          *(v24 + 16) = v43;
          v25 = v22;
          v26 = v51;
          sub_29E2BCC14();
          v27 = sub_29E2BCBD4();
          v29 = v28;
          v30 = *v20;
          v31 = v53;
          (*v20)(v26, v53);
          v54 = v30;
          *(v24 + 56) = &type metadata for OnboardingPrefillRow;
          *(v24 + 64) = sub_29DF08318();
          v32 = swift_allocObject();
          *(v24 + 32) = v32;
          v32[2] = v27;
          v32[3] = v29;
          v32[4] = v27;
          v32[5] = v29;
          v55 = v25;
          v32[6] = v25;
          sub_29E2BF404();
          v33 = [v25 startDate];
          v34 = v52;
          sub_29E2BCB44();

          sub_29E2BCC14();
          v35 = sub_29E2BCBD4();
          v37 = v36;
          v30(v26, v31);
          started = type metadata accessor for OnboardingStartDateRow(0);
          *(v24 + 96) = started;
          *(v24 + 104) = sub_29E15BC4C(&qword_2A181F880, type metadata accessor for OnboardingStartDateRow);
          v39 = sub_29DEBB7E8((v24 + 72));
          v39[1] = v35;
          v39[2] = v37;
          v40 = v34;
          v41 = v31;
          v42 = v49;
          (*v45)(v39 + *(started + 28), v40, v48);
          *v39 = 0;
          *(v39 + *(started + 32)) = 0;
          *(v39 + 1) = v56;
          sub_29E2BCC14();
          sub_29E2BCBD4();
          v54(v26, v41);
          v19 = v47;
          sub_29E2BEBA4();
          sub_29E2BECF4();

          (*v44)(v42, v50);
        }

        ++v17;
      }

      while (v57 != v17);
    }
  }

  else if (!v16)
  {

    sub_29E15B008(a1);
  }
}

void sub_29E15B964(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_29E15B9CC()
{
  if (!qword_2A181DDF8)
  {
    sub_29E2BEBB4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181DDF8);
    }
  }
}

void sub_29E15BA38(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_29E15BA8C(uint64_t a1, uint64_t a2)
{
  sub_29E15BA38(0, &qword_2A181DE00, MEMORY[0x29EDC2240]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E15BB0C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_29E15BB20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E15BB88(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29E15BA38(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E15BBE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E15BC4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E15BCF0(uint64_t a1)
{
  sub_29E15BA38(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = v14 - v3;
  v5 = sub_29E2BCFB4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &type metadata for OnboardingDatePickerRow;
  v17 = sub_29E15CA04();
  v15[0] = swift_allocObject();
  sub_29E15C9A8(a1, v15[0] + 16);
  sub_29E156538(v15, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_29E15BB88(v4, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v9 = v16;
    v10 = v17;
    v11 = sub_29DE966D4(v15, v16);
    v14[3] = v9;
    v14[4] = *(*(v10 + 8) + 8);
    v12 = sub_29DEBB7E8(v14);
    (*(v9[-1].Description + 2))(v12, v11, v9);
    sub_29E2BED04();
    (*(v6 + 8))(v8, v5);
    sub_29DE93B3C(v14);
  }

  return sub_29DE93B3C(v15);
}

uint64_t sub_29E15BF4C(_OWORD *a1)
{
  sub_29E15BA38(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v18[-1] - v3;
  v5 = sub_29E2BCFB4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = &type metadata for OnboardingTypeRow;
  v21 = sub_29DF08560();
  v9 = swift_allocObject();
  v19[0] = v9;
  v10 = a1[1];
  v9[1] = *a1;
  v9[2] = v10;
  v11 = a1[3];
  v9[3] = a1[2];
  v9[4] = v11;
  sub_29E15BC94(a1, v18);
  sub_29E156538(v19, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_29E15BB88(v4, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v12 = v20;
    v13 = v21;
    v14 = sub_29DE966D4(v19, v20);
    v18[3] = v12;
    v18[4] = *(*(v13 + 8) + 8);
    v15 = sub_29DEBB7E8(v18);
    (*(v12[-1].Description + 2))(v15, v14, v12);
    sub_29E2BED04();
    (*(v6 + 8))(v8, v5);
    sub_29DE93B3C(v18);
  }

  return sub_29DE93B3C(v19);
}

uint64_t sub_29E15C1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29E15BA38(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = v21 - v9;
  v11 = sub_29E2BCFB4();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = &type metadata for OnboardingTypePicker;
  v24 = sub_29E15C434();
  v15 = swift_allocObject();
  v22[0] = v15;
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  sub_29E2BF404();
  sub_29E2BF404();
  sub_29E156538(v22, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_29E15BB88(v10, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v16 = v23;
    v17 = v24;
    v18 = sub_29DE966D4(v22, v23);
    v21[3] = v16;
    v21[4] = *(*(v17 + 8) + 8);
    v19 = sub_29DEBB7E8(v21);
    (*(v16[-1].Description + 2))(v19, v18, v16);
    sub_29E2BED04();
    (*(v12 + 8))(v14, v11);
    sub_29DE93B3C(v21);
  }

  return sub_29DE93B3C(v22);
}

unint64_t sub_29E15C434()
{
  result = qword_2A181DE10;
  if (!qword_2A181DE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181DE10);
  }

  return result;
}

uint64_t sub_29E15C488(uint64_t a1)
{

  return MEMORY[0x2A1C733A0](v1, a1, 7);
}

uint64_t sub_29E15C4D4(uint64_t a1)
{
  sub_29E15BA38(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = v16 - v3;
  v5 = sub_29E2BCFB4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = &type metadata for OnboardingSelectRow;
  v19 = sub_29E15CAAC();
  v9 = swift_allocObject();
  v17[0] = v9;
  v10 = *(a1 + 16);
  *(v9 + 16) = *a1;
  *(v9 + 32) = v10;
  *(v9 + 47) = *(a1 + 31);
  sub_29E15CB00(a1, v16);
  sub_29E156538(v17, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_29E15BB88(v4, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v11 = v18;
    v12 = v19;
    v13 = sub_29DE966D4(v17, v18);
    v16[3] = v11;
    v16[4] = *(*(v12 + 8) + 8);
    v14 = sub_29DEBB7E8(v16);
    (*(v11[-1].Description + 2))(v14, v13, v11);
    sub_29E2BED04();
    (*(v6 + 8))(v8, v5);
    sub_29DE93B3C(v16);
  }

  return sub_29DE93B3C(v17);
}

uint64_t sub_29E15C740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29E15BA38(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = v20 - v8;
  v10 = sub_29E2BCFB4();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a3;
  v23 = a4;
  v14 = sub_29DEBB7E8(v21);
  (*(*(a3 - 8) + 16))(v14, a1, a3);
  sub_29E156538(v21, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_29E15BB88(v9, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v15 = v22;
    v16 = v23;
    v17 = sub_29DE966D4(v21, v22);
    v20[3] = v15;
    v20[4] = *(*(v16 + 8) + 8);
    v18 = sub_29DEBB7E8(v20);
    (*(*(v15 - 8) + 16))(v18, v17, v15);
    sub_29E2BED04();
    (*(v11 + 8))(v13, v10);
    sub_29DE93B3C(v20);
  }

  return sub_29DE93B3C(v21);
}

unint64_t sub_29E15CA04()
{
  result = qword_2A181DE18;
  if (!qword_2A181DE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181DE18);
  }

  return result;
}

unint64_t sub_29E15CAAC()
{
  result = qword_2A181DE20;
  if (!qword_2A181DE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181DE20);
  }

  return result;
}

uint64_t sub_29E15CB5C(uint64_t a1, uint64_t a2)
{
  sub_29E15BA38(0, &qword_2A181DE28, sub_29E15B9CC);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E15CBDC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_29E15B964(0, a2, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_29E15CC4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29E15CCAC()
{
  if (!qword_2A181DE30)
  {
    sub_29DEB1BC4(255, &qword_2A1819BD0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181DE30);
    }
  }
}

uint64_t sub_29E15CD28(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_29E15CD6C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
    return sub_29E2BF404();
  }

  return result;
}

uint64_t sub_29E15CD80()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31PregnancyModeTimelineDataSource_currentDayIndex;
  v2 = sub_29E2C31A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31PregnancyModeTimelineDataSource_currentCalendar;
  v4 = sub_29E2BCEA4();
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

id *sub_29E15CE48()
{
  [v0[10] unregisterObserver_];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31PregnancyModeTimelineDataSource_currentDayIndex;
  v2 = sub_29E2C31A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31PregnancyModeTimelineDataSource_currentCalendar;
  v4 = sub_29E2BCEA4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_29E15CF34()
{
  sub_29E15CE48();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PregnancyModeTimelineDataSource()
{
  result = qword_2A181DE58;
  if (!qword_2A181DE58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E15CFE0()
{
  result = sub_29E2C31A4();
  if (v1 <= 0x3F)
  {
    result = sub_29E2BCEA4();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_29E15D0E0(void *a1)
{
  v2 = v1;
  v132 = *v1;
  v4 = MEMORY[0x29EDC9C68];
  sub_29E160940(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v153 = &v128[-v6];
  v7 = sub_29E2BCC24();
  v143 = *(v7 - 8);
  v144 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v142 = &v128[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_29E2C0514();
  v145 = *(v9 - 8);
  v146 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v134 = &v128[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v128[-v12];
  sub_29E160940(0, &unk_2A1A62830, MEMORY[0x29EDB9D58], v4);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v133 = &v128[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v16);
  v137 = &v128[-v17];
  v139 = sub_29E2BCF04();
  v138 = *(v139 - 8);
  MEMORY[0x2A1C7C4A8](v139);
  v130 = &v128[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v19);
  v131 = &v128[-v20];
  v21 = sub_29E2C31A4();
  MEMORY[0x2A1C7C4A8](v21 - 8);
  v136 = &v128[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = sub_29E2C02D4();
  v148 = *(v23 - 8);
  v149 = v23;
  MEMORY[0x2A1C7C4A8](v23);
  v140 = &v128[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v25);
  v152 = &v128[-v26];
  v27 = sub_29E2BCBB4();
  v28 = *(v27 - 8);
  v154 = v27;
  v155 = v28;
  MEMORY[0x2A1C7C4A8](v27);
  v135 = &v128[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v30);
  v151 = &v128[-v31];
  MEMORY[0x2A1C7C4A8](v32);
  v147 = &v128[-v33];
  sub_29DF16CB0();
  v35 = v34;
  MEMORY[0x2A1C7C4A8](v34);
  v37 = &v128[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E160940(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8], v4);
  MEMORY[0x2A1C7C4A8](v38 - 8);
  v40 = &v128[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v41);
  v43 = &v128[-v42];
  MEMORY[0x2A1C7C4A8](v44);
  v46 = &v128[-v45];
  MEMORY[0x2A1C7C4A8](v47);
  v49 = &v128[-v48];
  sub_29E15E3C0(a1);
  v50 = v2[11];
  v141 = v13;
  *&v150 = v40;
  if (v50)
  {
    v51 = [v50 sample];
  }

  else
  {
    v51 = 0;
  }

  v52 = [a1 sample];
  v53 = v52;
  if (v51)
  {
    if (!v52)
    {

      goto LABEL_26;
    }

    sub_29DE9408C(0, &qword_2A1A61D50);
    v54 = sub_29E2C40D4();

    if ((v54 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v52)
  {

    goto LABEL_26;
  }

  v55 = v2[11];
  if (v55)
  {
    v56 = [v55 estimatedDueDate];
    if (v56)
    {
      v57 = v56;
      sub_29E2BCB44();

      v58 = *(v155 + 56);
      v59 = v46;
      v60 = 0;
    }

    else
    {
      v58 = *(v155 + 56);
      v59 = v46;
      v60 = 1;
    }

    v61 = v154;
    v58(v59, v60, 1, v154);
    sub_29E1609A4(v46, v49, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
  }

  else
  {
    v61 = v154;
    v58 = *(v155 + 56);
    v58(v49, 1, 1, v154);
  }

  v62 = [a1 estimatedDueDate];
  if (v62)
  {
    v63 = v62;
    sub_29E2BCB44();

    v61 = v154;
    v64 = 0;
  }

  else
  {
    v64 = 1;
  }

  v65 = v155;
  v58(v43, v64, 1, v61);
  v66 = *(v35 + 48);
  sub_29DEAA194(v49, v37);
  sub_29DEAA194(v43, &v37[v66]);
  v67 = *(v65 + 48);
  if (v67(v37, 1, v61) == 1)
  {
    v68 = MEMORY[0x29EDB9BC8];
    sub_29E1608D0(v43, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
    sub_29E1608D0(v49, &unk_2A1A62850, v68);
    if (v67(&v37[v66], 1, v154) == 1)
    {
      return sub_29E1608D0(v37, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
    }
  }

  else
  {
    sub_29DEAA194(v37, v150);
    if (v67(&v37[v66], 1, v61) != 1)
    {
      v101 = v155;
      v102 = v147;
      (*(v155 + 32))(v147, &v37[v66], v61);
      sub_29E160A80(&qword_2A181D9C0, MEMORY[0x29EDB9BC8]);
      v129 = sub_29E2C3304();
      v103 = *(v101 + 8);
      v103(v102, v61);
      v104 = MEMORY[0x29EDB9BC8];
      sub_29E1608D0(v43, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
      sub_29E1608D0(v49, &unk_2A1A62850, v104);
      v103(v150, v61);
      result = sub_29E1608D0(v37, &unk_2A1A62850, v104);
      if (v129)
      {
        return result;
      }

      goto LABEL_26;
    }

    v70 = MEMORY[0x29EDB9BC8];
    sub_29E1608D0(v43, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
    sub_29E1608D0(v49, &unk_2A1A62850, v70);
    (*(v155 + 8))(v150, v154);
  }

  sub_29E160A24(v37);
LABEL_26:
  v71 = v2[11];
  v2[11] = a1;

  v72 = MEMORY[0x29EDCA190];
  v157 = MEMORY[0x29EDCA190];
  v73 = *(v2 + 73);
  v74 = a1;
  if (v73 != 1)
  {
LABEL_48:
    v123 = sub_29E2C3734();
    v124 = v153;
    (*(*(v123 - 8) + 56))(v153, 1, 1, v123);
    sub_29E2C3714();

    v125 = sub_29E2C3704();
    v126 = swift_allocObject();
    v127 = MEMORY[0x29EDCA390];
    v126[2] = v125;
    v126[3] = v127;
    v126[4] = v2;
    v126[5] = v72;
    sub_29E13C63C(0, 0, v124, &unk_29E2E18D8, v126);
  }

  v75 = v74;
  v76 = [v74 estimatedDueDate];
  if (v76)
  {
    v77 = v151;
    v78 = v76;
    sub_29E2BCB44();

    v79 = [v75 sample];
    if (v79)
    {
      v80 = v79;
      v82 = v2[7];
      v81 = v2[8];
      ObjectType = swift_getObjectType();
      (*(v81 + 32))(ObjectType, v81);
      (*(v155 + 16))(v147, v77, v154);
      v84 = v80;
      sub_29E2BCBA4();
      v136 = v84;
      sub_29E2C0264();
      v85 = [v75 sample];
      if (v85)
      {
        v86 = v85;
        v87 = [v85 _timeZone];

        v88 = v141;
        v89 = v138;
        if (v87)
        {
          v90 = v133;
          sub_29E2BCEE4();

          v91 = 0;
          v92 = v139;
        }

        else
        {
          v91 = 1;
          v92 = v139;
          v90 = v133;
        }

        (*(v89 + 56))(v90, v91, 1, v92);
        v105 = v137;
        sub_29E1609A4(v90, v137, &unk_2A1A62830, MEMORY[0x29EDB9D58]);
        if ((*(v89 + 48))(v105, 1, v92) != 1)
        {
          v113 = v131;
          (*(v89 + 32))(v131, v105, v92);
          (*(v89 + 16))(v130, v113, v92);
          swift_beginAccess();
          sub_29E2BCE74();
          swift_endAccess();
          (*(v89 + 8))(v113, v92);
LABEL_47:
          v114 = v149;
          v115 = v148;
          v116 = v140;
          (*(v148 + 16))(v140, v152, v149);
          v117 = type metadata accessor for PregnancyModeTimelineItem();
          v118 = swift_allocObject();
          v118[3] = 0;
          swift_unknownObjectWeakInit();
          v118[4] = 0xD000000000000020;
          v118[5] = 0x800000029E3034A0;
          (*(v115 + 32))(v118 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25PregnancyModeTimelineItem_viewModel, v116, v114);
          v118[6] = v82;
          v118[7] = v81;
          v118[3] = &off_2A24BC680;
          swift_unknownObjectWeakAssign();
          v147 = MEMORY[0x29EDC9E90];
          sub_29E160940(0, &unk_2A1819BC0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
          sub_29E2BEBB4();
          v119 = swift_allocObject();
          v150 = xmmword_29E2CAB20;
          *(v119 + 16) = xmmword_29E2CAB20;
          swift_unknownObjectRetain();
          sub_29E2BEBA4();
          sub_29DFCBED4(v119);
          v120 = swift_allocObject();
          *(v120 + 16) = v150;
          sub_29E160940(0, &unk_2A181B3C0, sub_29DEA7E2C, v147);
          v121 = swift_allocObject();
          *(v121 + 16) = v150;
          *(v121 + 56) = v117;
          *(v121 + 64) = sub_29E160A80(&qword_2A181DEA0, type metadata accessor for PregnancyModeTimelineItem);
          *(v121 + 32) = v118;

          v122 = v142;
          sub_29E2BCC14();
          sub_29E2BCBD4();
          (*(v143 + 8))(v122, v144);
          sub_29E2BEBA4();
          sub_29DFCBED4(v120);

          (*(v148 + 8))(v152, v149);
          (*(v155 + 8))(v151, v154);
          v72 = v157;
          goto LABEL_48;
        }
      }

      else
      {
        v105 = v137;
        (*(v138 + 56))(v137, 1, 1, v139);
        v88 = v141;
      }

      sub_29E1608D0(v105, &unk_2A1A62830, MEMORY[0x29EDB9D58]);
      if (HKShowSensitiveLogItems())
      {
        sub_29E2C04B4();
        v106 = sub_29E2C0504();
        v107 = sub_29E2C3A34();
        if (os_log_type_enabled(v106, v107))
        {
          v108 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          v156[0] = v109;
          *v108 = 136315138;
          v110 = sub_29E2C4AE4();
          v112 = sub_29DFAA104(v110, v111, v156);

          *(v108 + 4) = v112;
          _os_log_impl(&dword_29DE74000, v106, v107, "[%s] Could not get timezone on pregnancy sample, using default timeZone for the current calendar", v108, 0xCu);
          sub_29DE93B3C(v109);
          MEMORY[0x29ED82140](v109, -1, -1);
          MEMORY[0x29ED82140](v108, -1, -1);
        }

        (*(v145 + 8))(v88, v146);
      }

      goto LABEL_47;
    }

    (*(v155 + 8))(v77, v154);
  }

  result = HKShowSensitiveLogItems();
  if (result)
  {
    v93 = v134;
    sub_29E2C04B4();
    v94 = sub_29E2C0504();
    v95 = sub_29E2C3A14();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v156[0] = v97;
      *v96 = 136315138;
      v98 = sub_29E2C4AE4();
      v100 = sub_29DFAA104(v98, v99, v156);

      *(v96 + 4) = v100;
      _os_log_impl(&dword_29DE74000, v94, v95, "[%s] Could not get estimated due date or sample from pregnancy model, can't display pregnancy section", v96, 0xCu);
      sub_29DE93B3C(v97);
      MEMORY[0x29ED82140](v97, -1, -1);
      MEMORY[0x29ED82140](v96, -1, -1);
    }

    return (*(v145 + 8))(v93, v146);
  }

  return result;
}

uint64_t sub_29E15E3C0(void *a1)
{
  v2 = v1;
  v49 = *v1;
  sub_29E160940(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v45 - v5;
  v7 = sub_29E2C0514();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v45 - v12;
  if (HKShowSensitiveLogItems())
  {
    sub_29E2C04B4();
    v14 = a1;
    v15 = sub_29E2C0504();
    v16 = sub_29E2C3A34();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v48 = v7;
      v18 = v17;
      v45 = swift_slowAlloc();
      v50 = v45;
      *v18 = 136315394;
      v19 = sub_29E2C4AE4();
      v47 = v8;
      v21 = sub_29DFAA104(v19, v20, &v50);
      v46 = v10;
      v22 = v21;

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      v23 = [v14 description];
      v24 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      v26 = v25;

      v27 = v24;
      v8 = v47;
      v28 = sub_29DFAA104(v27, v26, &v50);
      v10 = v46;

      *(v18 + 14) = v28;
      _os_log_impl(&dword_29DE74000, v15, v16, "[%s] Received model update: %s", v18, 0x16u);
      v29 = v45;
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v29, -1, -1);
      v30 = v18;
      v7 = v48;
      MEMORY[0x29ED82140](v30, -1, -1);
    }

    (*(v8 + 8))(v13, v7);
  }

  v31 = [a1 state];
  if ((*(v2 + 73) ^ (v31 == 1)))
  {
    *(v2 + 73) = v31 == 1;
    v32 = sub_29E2C3734();
    (*(*(v32 - 8) + 56))(v6, 1, 1, v32);
    sub_29E2C3714();

    v33 = sub_29E2C3704();
    v34 = swift_allocObject();
    v35 = MEMORY[0x29EDCA390];
    v34[2] = v33;
    v34[3] = v35;
    v34[4] = v2;
    sub_29E13C63C(0, 0, v6, &unk_29E2E18E0, v34);
  }

  else
  {
    result = HKShowSensitiveLogItems();
    if (result)
    {
      sub_29E2C04B4();
      v37 = sub_29E2C0504();
      v38 = sub_29E2C3A34();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = v8;
        v41 = swift_slowAlloc();
        v50 = v41;
        *v39 = 136315138;
        v42 = sub_29E2C4AE4();
        v44 = sub_29DFAA104(v42, v43, &v50);

        *(v39 + 4) = v44;
        _os_log_impl(&dword_29DE74000, v37, v38, "[%s] Pregnancy state has not changed, returning", v39, 0xCu);
        sub_29DE93B3C(v41);
        MEMORY[0x29ED82140](v41, -1, -1);
        MEMORY[0x29ED82140](v39, -1, -1);

        return (*(v40 + 8))(v10, v7);
      }

      else
      {

        return (*(v8 + 8))(v10, v7);
      }
    }
  }

  return result;
}

uint64_t sub_29E15E8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_29E2C3714();
  v5[4] = sub_29E2C3704();
  v7 = sub_29E2C36A4();

  return MEMORY[0x2A1C73D48](sub_29E15E950, v7, v6);
}

uint64_t sub_29E15E950()
{

  sub_29E2BE604();
  sub_29E2BEC74();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29E15E9D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  sub_29E055E70();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = sub_29E2BCEA4();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v7 = sub_29E2C31A4();
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  sub_29E160940(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v8 = sub_29E2BCBB4();
  v4[21] = v8;
  v4[22] = *(v8 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  sub_29E2C3714();
  v4[25] = sub_29E2C3704();
  v10 = sub_29E2C36A4();

  return MEMORY[0x2A1C73D48](sub_29E15EC5C, v10, v9);
}

uint64_t sub_29E15EC5C()
{
  v1 = v0[8];

  v2 = *(v1 + 88);
  if (!v2)
  {
    (*(v0[22] + 56))(v0[20], 1, 1, v0[21]);
LABEL_7:
    sub_29E1608D0(v0[20], &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
LABEL_8:
    v10 = MEMORY[0x29EDC1FF8];
    goto LABEL_9;
  }

  v3 = [v2 pregnancyStartDate];
  if (v3)
  {
    v4 = v3;
    sub_29E2BCB44();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v0[21];
  v7 = v0[22];
  v9 = v0[19];
  v8 = v0[20];
  (*(v7 + 56))(v9, v5, 1, v6);
  sub_29E1609A4(v9, v8, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    goto LABEL_7;
  }

  v13 = v0[23];
  v14 = v0[24];
  v15 = v0[21];
  v16 = v0[22];
  v27 = v0[18];
  v28 = v0[17];
  v17 = v0[15];
  v18 = v0[16];
  v19 = v0[13];
  v20 = v0[14];
  v26 = v0[12];
  v21 = v0[8];
  v29 = v14;
  (*(v16 + 32))(v14, v0[20], v15);
  (*(v16 + 16))(v13, v14, v15);
  v22 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31PregnancyModeTimelineDataSource_currentCalendar;
  swift_beginAccess();
  (*(v19 + 16))(v20, v21 + v22, v26);
  sub_29E2C3144();
  v23 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31PregnancyModeTimelineDataSource_currentDayIndex;
  swift_beginAccess();
  (*(v18 + 16))(v28, v21 + v23, v17);
  sub_29E160A80(&qword_2A1A61A40, MEMORY[0x29EDBA2F8]);
  LOBYTE(v13) = sub_29E2C32B4();
  v24 = *(v18 + 8);
  v24(v28, v17);
  v24(v27, v17);
  (*(v16 + 8))(v29, v15);
  if ((v13 & 1) == 0)
  {
    goto LABEL_8;
  }

  v25 = v0[8];
  if (*(v25 + 72) != 1 || (*(v25 + 73) & 1) == 0)
  {
    goto LABEL_8;
  }

  v10 = MEMORY[0x29EDC2000];
LABEL_9:
  (*(v0[10] + 104))(v0[11], *v10, v0[9]);
  sub_29E2BE644();

  v11 = v0[1];

  return v11();
}

uint64_t sub_29E15F00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_29E2C0514();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();
  sub_29E2C3714();
  v6[9] = sub_29E2C3704();
  v9 = sub_29E2C36A4();

  return MEMORY[0x2A1C73D48](sub_29E15F110, v9, v8);
}

uint64_t sub_29E15F110()
{
  v31 = v0;

  if (HKShowSensitiveLogItems())
  {
    sub_29E2C04B4();
    v1 = sub_29E2C0504();
    v2 = sub_29E2C3A34();
    v3 = os_log_type_enabled(v1, v2);
    v4 = *(v0 + 64);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    if (v3)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v30 = v8;
      *v7 = 136315138;
      v9 = sub_29E2C4AE4();
      v11 = sub_29DFAA104(v9, v10, &v30);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_29DE74000, v1, v2, "[%s] Received pregnancy model update", v7, 0xCu);
      sub_29DE93B3C(v8);
      MEMORY[0x29ED82140](v8, -1, -1);
      MEMORY[0x29ED82140](v7, -1, -1);
    }

    (*(v6 + 8))(v4, v5);
  }

  v12 = *(*(v0 + 24) + 88);
  if (v12 && (v13 = *(v0 + 16), sub_29DE9408C(0, &unk_2A1A5E190), v14 = v13, v15 = v12, v16 = sub_29E2C40D4(), v15, v14, (v16 & 1) != 0))
  {
    if (HKShowSensitiveLogItems())
    {
      sub_29E2C04B4();
      v17 = sub_29E2C0504();
      v18 = sub_29E2C3A34();
      v19 = os_log_type_enabled(v17, v18);
      v21 = *(v0 + 48);
      v20 = *(v0 + 56);
      v22 = *(v0 + 40);
      if (v19)
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v30 = v24;
        *v23 = 136315138;
        v25 = sub_29E2C4AE4();
        v27 = sub_29DFAA104(v25, v26, &v30);

        *(v23 + 4) = v27;
        _os_log_impl(&dword_29DE74000, v17, v18, "[%s] No updates needed", v23, 0xCu);
        sub_29DE93B3C(v24);
        MEMORY[0x29ED82140](v24, -1, -1);
        MEMORY[0x29ED82140](v23, -1, -1);
      }

      (*(v21 + 8))(v20, v22);
    }
  }

  else
  {
    sub_29E15D0E0(*(v0 + 16));
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_29E15F5D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = *v2;
  v39 = a1;
  sub_29E160940(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v33 - v6;
  v8 = sub_29E2C31A4();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E2C0514();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (HKShowSensitiveLogItems())
  {
    sub_29E2C04B4();
    v16 = sub_29E2C0504();
    v36 = sub_29E2C3A04();
    v37 = v16;
    if (os_log_type_enabled(v16, v36))
    {
      v17 = swift_slowAlloc();
      v35 = v17;
      v33 = swift_slowAlloc();
      v40[0] = v33;
      *v17 = 136315138;
      v18 = sub_29E2C4AE4();
      v38 = a2;
      v20 = sub_29DFAA104(v18, v19, v40);
      v34 = v12;
      v21 = v7;
      v22 = v20;
      a2 = v38;

      v23 = v35;
      *(v35 + 1) = v22;
      v7 = v21;
      v24 = v37;
      _os_log_impl(&dword_29DE74000, v37, v36, "[%s] Received current day update", v23, 0xCu);
      v25 = v33;
      sub_29DE93B3C(v33);
      MEMORY[0x29ED82140](v25, -1, -1);
      MEMORY[0x29ED82140](v35, -1, -1);

      (*(v13 + 8))(v15, v34);
    }

    else
    {

      (*(v13 + 8))(v15, v12);
    }
  }

  ObjectType = swift_getObjectType();
  (*(a2 + 32))(ObjectType, a2);
  v27 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31PregnancyModeTimelineDataSource_currentDayIndex;
  swift_beginAccess();
  (*(v9 + 40))(v3 + v27, v11, v8);
  swift_endAccess();
  v28 = sub_29E2C3734();
  (*(*(v28 - 8) + 56))(v7, 1, 1, v28);
  sub_29E2C3714();

  v29 = sub_29E2C3704();
  v30 = swift_allocObject();
  v31 = MEMORY[0x29EDCA390];
  v30[2] = v29;
  v30[3] = v31;
  v30[4] = v3;
  sub_29E13C63C(0, 0, v7, &unk_29E2E18B8, v30);
}

uint64_t sub_29E15F9F0(uint64_t a1, void *a2)
{
  v3 = v2;
  v31[1] = *v2;
  v5 = sub_29E2C0514();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E2BE2A4();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v3[11];
  if (v13)
  {
    v14 = v13;
    v15 = [v14 sample];
    if (v15)
    {
      v16 = v15;
      v17 = v3[6];
      sub_29E2C3BF4();
      (*(v10 + 104))(v12, *MEMORY[0x29EDC1D80], v9);
      v18 = [objc_allocWithZone(MEMORY[0x29EDC4760]) init];
      v33 = 0;
      memset(v32, 0, sizeof(v32));
      v19 = v3[10];
      type metadata accessor for PregnancyOffboardingCoordinator();
      swift_allocObject();
      swift_unknownObjectRetain();
      sub_29DFEA410(v17, v34, v12, v18, v32, v19, 0, 0, 0, 0, 0, 0);
      swift_getObjectType();
      v20 = swift_conformsToProtocol2();
      if (v20)
      {
        v21 = a2;
      }

      else
      {
        v21 = 0;
      }

      if (v21)
      {
        v22 = v20;
      }

      else
      {
        v22 = 0;
      }

      sub_29DFE99B4(a2, v16, 1, v21, v22);
    }
  }

  result = HKShowSensitiveLogItems();
  if (result)
  {
    sub_29E2C04B4();
    v24 = sub_29E2C0504();
    v25 = sub_29E2C3A14();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v34[0] = v27;
      *v26 = 136315138;
      v28 = sub_29E2C4AE4();
      v30 = sub_29DFAA104(v28, v29, v34);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_29DE74000, v24, v25, "[%s] Tried to present edit view with nil model", v26, 0xCu);
      sub_29DE93B3C(v27);
      MEMORY[0x29ED82140](v27, -1, -1);
      MEMORY[0x29ED82140](v26, -1, -1);
    }

    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

unint64_t sub_29E15FD8C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for CycleTrackingSubheaderItem;
  result = sub_29DEC3708();
  *(a1 + 32) = result;
  *a1 = 1;
  return result;
}

void sub_29E15FDEC(void *a1)
{
  type metadata accessor for PregnancyModeTimelineCell();
  sub_29E160A80(&unk_2A181DE80, type metadata accessor for PregnancyModeTimelineCell);
  sub_29E2C3B74();
  type metadata accessor for CycleLogSubheader();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = *MEMORY[0x29EDC8048];
  sub_29E160A80(&qword_2A18180F0, type metadata accessor for CycleLogSubheader);
  v4 = v3;
  sub_29E2BE2B4();
  v5 = sub_29E2C33A4();

  [a1 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v4 withReuseIdentifier:v5];
}

uint64_t sub_29E15FF2C(int a1)
{
  v2 = v1;
  LODWORD(v3) = a1;
  sub_29E160940(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v28[-v5];
  v30 = sub_29E2C0514();
  v7 = *(v30 - 8);
  MEMORY[0x2A1C7C4A8](v30);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_29E2C2B84();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v28[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29DE9408C(0, &qword_2A1A626C0);
  *v13 = sub_29E2C3CF4();
  (*(v11 + 104))(v13, *MEMORY[0x29EDCA278], v10);
  v14 = sub_29E2C2BA4();
  result = (*(v11 + 8))(v13, v10);
  if (v14)
  {
    if (HKShowSensitiveLogItems())
    {
      sub_29E2C04B4();
      v16 = sub_29E2C0504();
      v17 = sub_29E2C3A34();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v29 = v3;
        v3 = v19;
        v31 = v19;
        *v18 = 136315394;
        v20 = sub_29E2C4AE4();
        v22 = sub_29DFAA104(v20, v21, &v31);

        *(v18 + 4) = v22;
        *(v18 + 12) = 1024;
        *(v18 + 14) = v29 & 1;
        _os_log_impl(&dword_29DE74000, v16, v17, "[%s] Received update to onboarding completion: %{BOOL}d", v18, 0x12u);
        sub_29DE93B3C(v3);
        v23 = v3;
        LOBYTE(v3) = v29;
        MEMORY[0x29ED82140](v23, -1, -1);
        MEMORY[0x29ED82140](v18, -1, -1);
      }

      (*(v7 + 8))(v9, v30);
    }

    *(v2 + 72) = v3 & 1;
    v24 = sub_29E2C3734();
    (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
    sub_29E2C3714();

    v25 = sub_29E2C3704();
    v26 = swift_allocObject();
    v27 = MEMORY[0x29EDCA390];
    v26[2] = v25;
    v26[3] = v27;
    v26[4] = v2;
    sub_29E13C63C(0, 0, v6, &unk_29E2E18B0, v26);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E16033C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29DECA6A0;

  return sub_29E15E9D4(a1, v4, v5, v6);
}

void *sub_29E1603F0()
{
  v0 = sub_29E2C0AD4();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2C0AB4();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29E2C0B44();
  v8 = *(v17 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, *MEMORY[0x29EDC7848], v4, v9);
  sub_29E2C0AE4();
  v12 = [objc_opt_self() systemBackgroundColor];
  sub_29E2C0B14();
  if (sub_29E2BF0A4() == 1)
  {
    (*(v1 + 104))(v3, *MEMORY[0x29EDC7860], v0);
    sub_29E2C0B04();
  }

  sub_29DE9408C(0, &qword_2A1819BB0);
  sub_29E2BF074();
  v13 = sub_29E2C3F34();
  swift_unknownObjectRelease();
  [v13 setContentInsetsReference_];
  v14 = sub_29E2BF0A4();
  [v13 contentInsets];
  [v13 setContentInsets_];
  [v13 contentInsets];
  if (v14 == 1)
  {
    [v13 setContentInsets_];
    [v13 contentInsets];
    [v13 setContentInsets_];
    [v13 contentInsets];
  }

  [v13 setContentInsets_];
  (*(v8 + 8))(v11, v17);
  return v13;
}

uint64_t sub_29E160748(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29DECA6A0;

  return sub_29E15F00C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_29E160810(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29DE9657C;

  return sub_29E15E8B8(a1, v4, v5, v7, v6);
}

uint64_t sub_29E1608D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E160940(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29E160940(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E1609A4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29E160940(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_29E160A24(uint64_t a1)
{
  sub_29DF16CB0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E160A80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E160AC8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

void sub_29E160B08()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CycleHistoryCell_item;
  swift_beginAccess();
  sub_29DEC3518(v0 + v1, v6);
  if (v7)
  {
    sub_29DF61DEC();
    type metadata accessor for CycleStatisticsItem();
    if (swift_dynamicCast())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v3 = Strong;
        swift_unknownObjectRelease();
        if (v3 == v0)
        {
          *(v5 + 56) = 0;
          swift_unknownObjectWeakAssign();
        }
      }

      v4 = [objc_opt_self() tertiarySystemBackgroundColor];
      [v0 setBackgroundColor_];
    }
  }

  else
  {
    sub_29DF61E50(v6);
  }
}

void sub_29E160C14()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CycleHistoryCell_item;
  swift_beginAccess();
  sub_29DEC3518(v1 + v2, &v15);
  if (v16)
  {
    sub_29DF61DEC();
    type metadata accessor for CycleHistoryItem();
    if (swift_dynamicCast())
    {
      sub_29DFFB090((v12 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CycleHistoryItem_viewModel), *(v12 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CycleHistoryItem_containerWidth));
      *(v12 + 56) = &off_2A24BC780;
      swift_unknownObjectWeakAssign();
      v3 = sub_29DFD17A4();
      v5 = v4;
      if (qword_2A1A60ED8 != -1)
      {
        swift_once();
      }

      v15 = xmmword_2A1A67E58;
      sub_29E2BF404();
      MEMORY[0x29ED7FCC0](0x6C63794372756F59, 0xEB000000002E7365);
      v13 = v3;
      v14 = v5;
      v11 = sub_29DE9DE68();
      v10 = MEMORY[0x29EDC99B0];
      v6 = sub_29E2C4374();
      v8 = v7;

      MEMORY[0x29ED7FCC0](v6, v8);

      v9 = sub_29E2C33A4();

      [v1 setAccessibilityIdentifier_];
    }
  }

  else
  {
    sub_29DF61E50(&v15);
  }
}

void (*sub_29E160E2C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x90uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CycleHistoryCell_item;
  *(v3 + 128) = v1;
  *(v3 + 136) = v5;
  swift_beginAccess();
  sub_29DEC3518(v1 + v5, v4);
  return sub_29E160EC4;
}

void sub_29E160EC4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  v4 = *(*a1 + 136);
  if (a2)
  {
    sub_29DEC3518(*a1, v2 + 40);
    sub_29E160B08();
    swift_beginAccess();
    sub_29DEC3690(v2 + 40, v3 + v4);
    swift_endAccess();
    sub_29E160C14();
    sub_29DF61E50(v2 + 40);
  }

  else
  {
    sub_29E160B08();
    swift_beginAccess();
    sub_29DEC3690(v2, v3 + v4);
    swift_endAccess();
    sub_29E160C14();
  }

  sub_29DF61E50(v2);

  free(v2);
}

uint64_t sub_29E161170()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CycleHistoryCell_item;
  swift_beginAccess();
  sub_29DEC3518(v0 + v1, v9);
  if (!v10)
  {
    return sub_29DF61E50(v9);
  }

  sub_29DF61DEC();
  v2 = type metadata accessor for CycleHistoryItem();
  result = swift_dynamicCast();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v8 + 40);
      ObjectType = swift_getObjectType();
      v6 = [v0 isHighlighted];
      v10 = v2;
      v11 = sub_29E161924();
      v9[0] = v8;
      v7 = *(v4 + 8);

      v7(v6, v9, ObjectType, v4);

      swift_unknownObjectRelease();
      return sub_29DE93B3C(v9);
    }

    else
    {
    }
  }

  return result;
}

void sub_29E1613D8()
{
  v1 = [v0 contentView];
  [v1 setPreservesSuperviewLayoutMargins_];

  v2 = [objc_opt_self() tertiarySystemBackgroundColor];
  [v0 setBackgroundColor_];

  v3 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CycleHistoryCell_singleCycleView];
  [v3 setUserInteractionEnabled_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [v0 contentView];
  [v4 addSubview_];

  v5 = objc_opt_self();
  sub_29DE99B54();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29E2CE070;
  v7 = [v3 leadingAnchor];
  v8 = [v0 contentView];
  v9 = [v8 leadingAnchor];

  v10 = [v7 constraintEqualToAnchor_];
  *(v6 + 32) = v10;
  v11 = [v3 trailingAnchor];
  v12 = [v0 contentView];
  v13 = [v12 trailingAnchor];

  v14 = [v11 constraintEqualToAnchor_];
  *(v6 + 40) = v14;
  v15 = [v3 topAnchor];
  v16 = [v0 contentView];
  v17 = [v16 topAnchor];

  v18 = [v15 constraintEqualToAnchor_];
  *(v6 + 48) = v18;
  v19 = [v3 bottomAnchor];
  v20 = [v0 contentView];
  v21 = [v20 bottomAnchor];

  v22 = [v19 constraintEqualToAnchor_];
  *(v6 + 56) = v22;
  sub_29DE9408C(0, &qword_2A1A61A10);
  v23 = sub_29E2C3604();

  [v5 activateConstraints_];
}

id sub_29E161748()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CycleHistoryCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E1617EC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CycleHistoryCell_item;
  swift_beginAccess();
  return sub_29DEC3518(v1 + v3, a1);
}

uint64_t sub_29E161844(uint64_t a1)
{
  sub_29E160B08();
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CycleHistoryCell_item;
  swift_beginAccess();
  sub_29DEC3690(a1, v1 + v3);
  swift_endAccess();
  sub_29E160C14();
  return sub_29DF61E50(a1);
}

void (*sub_29E1618B4(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_29E160E2C(v2);
  return sub_29DF61DA4;
}

unint64_t sub_29E161924()
{
  result = qword_2A18197B0;
  if (!qword_2A18197B0)
  {
    type metadata accessor for CycleHistoryItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18197B0);
  }

  return result;
}

id sub_29E16197C()
{
  result = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  qword_2A181DEB8 = result;
  return result;
}

uint64_t sub_29E1619B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29E2BCBB4();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v17 - v9;
  v11 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_endDate;
  swift_beginAccess();
  (*(v5 + 24))(v2 + v11, a1, v4);
  swift_endAccess();
  (*(v5 + 16))(v10, v2 + v11, v4);
  v12 = [*(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_factorSample) endDate];
  sub_29E2BCB44();

  sub_29E1689E8(&qword_2A181D9C0, MEMORY[0x29EDB9BC8]);
  v13 = sub_29E2C3304();
  v14 = *(v5 + 8);
  v14(v7, v4);
  v14(v10, v4);
  v15 = sub_29E161BE4();
  [v15 setEnabled_];

  return (v14)(a1, v4);
}

id sub_29E161C1C(uint64_t *a1, void *a2, uint64_t a3, char a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = *(v4 + *a1);
  }

  else
  {
    v9 = [objc_allocWithZone(MEMORY[0x29EDC7940]) initWithBarButtonSystemItem:a3 target:v4 action:*a2];
    [v9 setEnabled_];
    v10 = *(v4 + v5);
    *(v4 + v5) = v9;
    v7 = v9;

    v6 = 0;
  }

  v11 = v6;
  return v7;
}

id sub_29E161CC0(void *a1, void *a2, void *a3)
{
  v7 = sub_29E2BCBB4();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_launchSource] = 2;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController____lazy_storage___doneBarButtonItem] = 0;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController____lazy_storage___cancelBarButtonItem] = 0;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_sections] = &unk_2A24AE458;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_dateRows] = &unk_2A24AE480;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_deleteRows] = &unk_2A24AE4A8;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_factorSample] = a1;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_providedHealthStore] = a2;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_analysisProvider] = a3;
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = [v11 startDate];
  sub_29E2BCB44();

  v15 = *(v8 + 32);
  v15(&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_startDate], v10, v7);
  v16 = [v11 endDate];

  sub_29E2BCB44();
  v15(&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_endDate], v10, v7);
  v17 = [objc_allocWithZone(MEMORY[0x29EDBAC90]) initWithHealthStore_];
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_nanoSyncControl] = v17;
  v18 = type metadata accessor for EditCycleFactorTableViewController();
  v21.receiver = v3;
  v21.super_class = v18;
  v19 = objc_msgSendSuper2(&v21, sel_initWithStyle_, 2);
  sub_29E161F68();

  return v19;
}

void sub_29E161F68()
{
  v1 = [v0 tableView];
  if (!v1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = v1;
  sub_29DE9408C(0, &unk_2A181DF70);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = sub_29E2C33A4();
  [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v4];

  v5 = [v0 tableView];
  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = v5;
  type metadata accessor for DatePickerTableViewCell();
  v7 = swift_getObjCClassFromMetadata();
  v8 = sub_29E2C33A4();
  [v6 registerClass:v7 forCellReuseIdentifier:v8];

  v9 = [v0 view];
  if (!v9)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v10 = v9;
  v11 = [objc_opt_self() systemGroupedBackgroundColor];
  [v10 setBackgroundColor_];

  sub_29E08C870([*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_factorSample] hkmc_cycleFactor]);
  v12 = sub_29E2C33A4();

  [v0 setTitle_];

  v13 = [v0 navigationItem];
  [v13 setLargeTitleDisplayMode_];

  v14 = [v0 navigationItem];
  v15 = sub_29E161BE4();
  [v14 setRightBarButtonItem_];

  v16 = [v0 navigationItem];
  v17 = sub_29E161C00();
  [v16 setLeftBarButtonItem_];
}

char *sub_29E16228C(char *a1)
{
  v2 = v1;
  sub_29E168A30(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v85 - v5;
  v7 = sub_29E2BCEA4();
  v95 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v96 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_29E2BCBB4();
  v9 = *(v97 - 8);
  MEMORY[0x2A1C7C4A8](v97);
  v11 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v85 - v13;
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v85 - v16;
  v18 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_sections);
  v19 = sub_29E2BCFA4();
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_65;
  }

  if (v19 >= *(v18 + 16))
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v94 = v7;
  if ((*(v18 + v19 + 32) & 1) == 0)
  {
    goto LABEL_7;
  }

  v20 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_deleteRows);
  v21 = sub_29E2BCF64();
  if ((v21 & 0x8000000000000000) != 0)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v18 = v21;
  if (v21 < *(v20 + 16))
  {
    goto LABEL_9;
  }

  __break(1u);
LABEL_7:
  v18 = sub_29E2BCF64();
  v22 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_dateRows;
  swift_beginAccess();
  if ((v18 & 0x8000000000000000) != 0)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v20 = *(v1 + v22);
  if (v18 >= *(v20 + 16))
  {
LABEL_68:
    __break(1u);
LABEL_69:
    swift_once();
LABEL_53:
    v99 = xmmword_2A1A67E58;
    sub_29E2BF404();
    MEMORY[0x29ED7FCC0](v18 + 2, 0x800000029E3013D0);
    goto LABEL_54;
  }

LABEL_9:
  if (*(v20 + v18 + 32) > 1u)
  {
    if (*(v20 + v18 + 32) == 2)
    {
      v31 = sub_29E2C33A4();
      v32 = [a1 dequeueReusableCellWithIdentifier_];

      if (v32)
      {
        type metadata accessor for DatePickerTableViewCell();
        v33 = swift_dynamicCastClass();
        if (v33)
        {
          a1 = v33;
          v86 = v11;
          v90 = v32;
          sub_29E2BCE44();
          v93 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23DatePickerTableViewCell_datePicker;
          v34 = *&a1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23DatePickerTableViewCell_datePicker];
          v35 = *(v9 + 16);
          v88 = v2;
          v89 = v35;
          v36 = v97;
          v91 = v9 + 16;
          v35(v14, v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_startDate, v97);
          v37 = v34;
          sub_29E2BCCC4();
          v38 = *(v9 + 8);
          v38(v14, v36);
          v39 = sub_29E2BCB04();
          v38(v17, v36);
          [v37 setMinimumDate_];

          v87 = *&a1[v93];
          sub_29E2BCBA4();
          sub_29E2BCD64();
          v92 = v38;
          v38(v17, v36);
          if ((*(v9 + 48))(v6, 1, v36) == 1)
          {
            v40 = 0;
          }

          else
          {
            v40 = sub_29E2BCB04();
            v92(v6, v36);
          }

          v73 = v86;
          v72 = v87;
          [v87 setMaximumDate_];

          v74 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_endDate;
          v75 = v88;
          swift_beginAccess();
          v76 = v89;
          v89(v17, v75 + v74, v36);
          sub_29E2BCA84();
          sub_29E1689E8(&qword_2A181D9C0, MEMORY[0x29EDB9BC8]);
          v77 = sub_29E2C3304();
          v78 = v14;
          v79 = v92;
          v92(v78, v36);
          v79(v17, v36);
          if (v77)
          {
            sub_29E2BCBA4();
            sub_29E15177C(v73);
            v79(v17, v36);
          }

          else
          {
            v76(v73, v75 + v74, v36);
          }

          v80 = *&a1[v93];
          v81 = sub_29E2BCB04();
          [v80 setDate_];

          v79(v73, v36);
          *&a1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23DatePickerTableViewCell_delegate + 8] = &off_2A24BC8B0;
          swift_unknownObjectWeakAssign();
          v82 = qword_2A1A60ED8;
          v83 = v90;
          if (v82 != -1)
          {
            swift_once();
          }

          v98 = xmmword_2A1A67E58;
          sub_29E2BF404();
          MEMORY[0x29ED7FCC0](0xD00000000000001ALL, 0x800000029E3013F0);
          v84 = sub_29E2C33A4();

          [a1 setAccessibilityIdentifier_];

          (*(v95 + 8))(v96, v94);
          return a1;
        }
      }

      return [objc_allocWithZone(MEMORY[0x29EDC7D10]) init];
    }

    v18 = 0xD000000000000011;
    v48 = sub_29E2C33A4();
    v49 = sub_29E2BCF24();
    v50 = [a1 dequeueReusableCellWithIdentifier:v48 forIndexPath:v49];

    v51 = [v50 textLabel];
    if (v51)
    {
      v52 = v51;
      sub_29E163090(3u);
      if (v53)
      {
        v54 = sub_29E2C33A4();
      }

      else
      {
        v54 = 0;
      }

      [v52 setText_];
    }

    v68 = [v50 textLabel];
    if (v68)
    {
      v69 = v68;
      v70 = [objc_opt_self() systemRedColor];
      [v69 setTextColor_];
    }

    v71 = qword_2A1A60ED8;
    a1 = v50;
    if (v71 == -1)
    {
      goto LABEL_53;
    }

    goto LABEL_69;
  }

  if (*(v20 + v18 + 32))
  {
    v41 = sub_29E2C33A4();
    v42 = [a1 dequeueReusableCellWithIdentifier_];

    if (v42)
    {
      type metadata accessor for EndDateTableViewCell();
      v43 = swift_dynamicCastClass();
      if (v43)
      {
LABEL_27:
        v44 = v43;
        result = [v44 textLabel];
        if (!result)
        {
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

        v45 = result;
        sub_29E163090(1u);
        if (v46)
        {
          v47 = sub_29E2C33A4();
        }

        else
        {
          v47 = 0;
        }

        [v45 setText_];

        result = [v44 detailTextLabel];
        if (!result)
        {
          goto LABEL_73;
        }

        v61 = result;
        v62 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_endDate;
        swift_beginAccess();
        v63 = v97;
        (*(v9 + 16))(v17, v2 + v62, v97);
        sub_29E1526E8();
        (*(v9 + 8))(v17, v63);
        v64 = sub_29E2C33A4();

        [v61 setText_];

        result = [v44 detailTextLabel];
        if (!result)
        {
LABEL_75:
          __break(1u);
          goto LABEL_76;
        }

        v65 = result;

        v66 = [objc_opt_self() labelColor];
        [v65 setTextColor_];

        *&v44[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20EndDateTableViewCell_delegate + 8] = &off_2A24BC8C0;
        swift_unknownObjectWeakAssign();
        v67 = qword_2A1A60ED8;
        a1 = v44;
        if (v67 != -1)
        {
          swift_once();
        }

        v98 = xmmword_2A1A67E58;
        sub_29E2BF404();
        MEMORY[0x29ED7FCC0](0xD000000000000011, 0x800000029E301410);
LABEL_54:
        v60 = sub_29E2C33A4();

        [a1 setAccessibilityIdentifier_];
LABEL_55:

        return a1;
      }
    }

    v43 = [objc_allocWithZone(type metadata accessor for EndDateTableViewCell()) init];
    goto LABEL_27;
  }

  v23 = sub_29E2C33A4();
  v24 = [a1 dequeueReusableCellWithIdentifier_];

  if (v24)
  {
    type metadata accessor for DateTableViewCell();
    v25 = swift_dynamicCastClass();
    if (v25)
    {
      goto LABEL_15;
    }
  }

  v25 = [objc_allocWithZone(type metadata accessor for DateTableViewCell()) init];
LABEL_15:
  v26 = v25;
  result = [v26 textLabel];
  if (!result)
  {
    __break(1u);
    goto LABEL_71;
  }

  v28 = result;
  sub_29E163090(0);
  if (v29)
  {
    v30 = sub_29E2C33A4();
  }

  else
  {
    v30 = 0;
  }

  [v28 setText_];

  result = [v26 detailTextLabel];
  if (!result)
  {
    goto LABEL_72;
  }

  v55 = result;
  v56 = v97;
  (*(v9 + 16))(v17, v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_startDate, v97);
  sub_29E1526E8();
  (*(v9 + 8))(v17, v56);
  v57 = sub_29E2C33A4();

  [v55 setText_];

  a1 = v26;
  [a1 setUserInteractionEnabled_];
  result = [a1 textLabel];
  if (!result)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v58 = result;
  [result setUserInteractionEnabled_];

  result = [a1 detailTextLabel];
  if (result)
  {
    v59 = result;
    [result setUserInteractionEnabled_];

    if (qword_2A1A60ED8 != -1)
    {
      swift_once();
    }

    v99 = xmmword_2A1A67E58;
    sub_29E2BF404();
    MEMORY[0x29ED7FCC0](0xD000000000000013, 0x800000029E301430);
    v60 = sub_29E2C33A4();

    [a1 setAccessibilityIdentifier_];

    goto LABEL_55;
  }

LABEL_76:
  __break(1u);
  return result;
}

uint64_t sub_29E163090(unsigned __int8 a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v14[-v8];
  v10 = a1;
  if (a1 <= 1u || (v11 = 0, v10 != 2))
  {
    sub_29E2C3314();
    (*(v4 + 16))(v6, v9, v3);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v12 = qword_2A1A67F80;
    sub_29E2BCC74();
    v11 = sub_29E2C3414();
    (*(v4 + 8))(v9, v3);
  }

  return v11;
}

void sub_29E1633E0(void *a1)
{
  v2 = v1;
  v4 = sub_29E2BCFB4();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_sections);
  v9 = sub_29E2BCFA4();
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  if (v9 >= *(v8 + 16))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if ((*(v8 + 32 + v9) & 1) == 0)
  {
    v14 = sub_29E2BCFA4();
    if ((v14 & 0x8000000000000000) == 0)
    {
      if (v14 < *(v8 + 16))
      {
        if ((*(v8 + 32 + v14) & 1) == 0)
        {
          goto LABEL_15;
        }

        v15 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_deleteRows);
        v16 = sub_29E2BCF64();
        if ((v16 & 0x8000000000000000) == 0)
        {
          v17 = v16;
          if (v16 < *(v15 + 16))
          {
LABEL_17:
            if (*(v15 + v17 + 32) != 1)
            {
              return;
            }

            v19 = sub_29E2BCF24();
            v20 = [a1 cellForRowAtIndexPath_];

            if (v20)
            {
              type metadata accessor for EndDateTableViewCell();
              v21 = swift_dynamicCastClass();
              if (v21)
              {
                v22 = v21;
                v23 = sub_29DF5C458();
                [v22 setAccessoryView_];

                v20 = v23;
              }
            }

            v24 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_dateRows;
            swift_beginAccess();
            if (sub_29E204168(2u, *(v2 + v24)))
            {
              sub_29E16485C(2u);
              v25 = sub_29E2BCF24();
              v26 = [a1 cellForRowAtIndexPath_];

              if (!v26)
              {
                return;
              }

              type metadata accessor for DateTableViewCell();
              v27 = swift_dynamicCastClass();
              if (v27)
              {
                v28 = [v27 detailTextLabel];
                if (v28)
                {
                  v29 = v28;
                  v30 = [objc_opt_self() labelColor];
LABEL_32:
                  v37 = v30;
                  [v29 setTextColor_];

                  return;
                }

                goto LABEL_43;
              }

LABEL_33:

              return;
            }

            v31 = sub_29E2BCF64();
            v32 = v31 + 1;
            if (!__OFADD__(v31, 1))
            {
              v33 = sub_29E2BCFA4();
              MEMORY[0x29ED79720](v32, v33);
              sub_29E1641B8(2u, v7);
              (*(v5 + 8))(v7, v4);
              v34 = sub_29E2BCF24();
              v26 = [a1 cellForRowAtIndexPath_];

              if (!v26)
              {
                return;
              }

              type metadata accessor for DateTableViewCell();
              v35 = swift_dynamicCastClass();
              if (v35)
              {
                v36 = [v35 detailTextLabel];
                if (v36)
                {
                  v29 = v36;
                  v30 = [objc_opt_self() systemBlueColor];
                  goto LABEL_32;
                }

LABEL_44:
                __break(1u);
                return;
              }

              goto LABEL_33;
            }

LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
            goto LABEL_44;
          }

          __break(1u);
LABEL_15:
          v17 = sub_29E2BCF64();
          v18 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_dateRows;
          swift_beginAccess();
          if ((v17 & 0x8000000000000000) == 0)
          {
            v15 = *(v2 + v18);
            if (v17 < *(v15 + 16))
            {
              goto LABEL_17;
            }

LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v10 = sub_29E2BCF24();
  v11 = [a1 cellForRowAtIndexPath_];

  if (v11)
  {
    [v11 setSelected_];
  }

  v12 = sub_29E2BCF24();
  v39 = [a1 cellForRowAtIndexPath_];

  sub_29E166450(v39);
  v13 = v39;
}

unint64_t sub_29E163980(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v49 = a2;
  v5 = sub_29E2C0514();
  v52 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E168A30(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v47 - v9;
  v11 = sub_29E2BCBB4();
  v50 = *(v11 - 8);
  v51 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29E2BCFB4();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v48 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = MEMORY[0x2A1C7C4A8](v17).n128_u64[0];
  v20 = &v47 - v19;
  result = [v3 tableView];
  if (!result)
  {
    goto LABEL_31;
  }

  v22 = result;
  v23 = [result indexPathForCell_];

  if (v23)
  {
    sub_29E2BCF44();

    v24 = *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_sections];
    result = sub_29E2BCFA4();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *(v24 + 16))
    {
      if ((*(v24 + result + 32) & 1) == 0)
      {
        v7 = sub_29E2BCF64();
        v34 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_dateRows;
        result = swift_beginAccess();
        if ((v7 & 0x8000000000000000) == 0)
        {
          v25 = *&v3[v34];
          if (v7 < *(v25 + 16))
          {
            goto LABEL_14;
          }

          goto LABEL_30;
        }

LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v25 = *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_deleteRows];
      result = sub_29E2BCF64();
      if ((result & 0x8000000000000000) == 0)
      {
        v7 = result;
        if (result >= *(v25 + 16))
        {
          __break(1u);
          goto LABEL_9;
        }

LABEL_14:
        if (*(v25 + v7 + 32) != 2)
        {
          return (*(v15 + 8))(v20, v14);
        }

        v35 = *(v50 + 16);
        (v35)(v13, v49, v51);
        sub_29E1619B8(v13);
        sub_29E164068(1u, v10);
        if ((*(v15 + 48))(v10, 1, v14) == 1)
        {
          (*(v15 + 8))(v20, v14);
          return sub_29E168B2C(v10, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9C68], sub_29E168A30);
        }

        v52 = v35;
        (*(v15 + 32))(v48, v10, v14);
        result = [v3 tableView];
        if (result)
        {
          v36 = result;
          v37 = sub_29E2BCF24();
          v38 = [v36 cellForRowAtIndexPath_];

          if (!v38)
          {
LABEL_24:
            v46 = *(v15 + 8);
            v46(v48, v14);
            return (v46)(v20, v14);
          }

          type metadata accessor for EndDateTableViewCell();
          v39 = swift_dynamicCastClass();
          if (!v39)
          {

            goto LABEL_24;
          }

          v40 = v39;
          v41 = v38;
          result = [v40 detailTextLabel];
          if (result)
          {
            v42 = result;

            v43 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_endDate;
            swift_beginAccess();
            v44 = v51;
            (v52)(v13, &v3[v43], v51);
            sub_29E1526E8();
            (*(v50 + 8))(v13, v44);
            v45 = sub_29E2C33A4();

            [v42 setText_];

            goto LABEL_24;
          }

LABEL_33:
          __break(1u);
          return result;
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_9:
  sub_29E2C04B4();
  v26 = v3;
  v27 = sub_29E2C0504();
  v28 = sub_29E2C3A14();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v54[0] = v30;
    *v29 = 136446210;
    ObjectType = swift_getObjectType();
    sub_29E168A94();
    v31 = sub_29E2C3424();
    v33 = sub_29DFAA104(v31, v32, v54);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_29DE74000, v27, v28, "[%{public}s] DatePickerTableViewCell does not exist in tableView", v29, 0xCu);
    sub_29DE93B3C(v30);
    MEMORY[0x29ED82140](v30, -1, -1);
    MEMORY[0x29ED82140](v29, -1, -1);
  }

  return v52[1](v7, v5);
}

uint64_t sub_29E164068@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_sections);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = a1;
    v7 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_deleteRows;
    v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_dateRows;
    v9 = v4 + 32;
    swift_beginAccess();
    for (i = 0; i != v5; ++i)
    {
      if (*(v9 + i))
      {
        v11 = 0;
        v12 = *(v2 + v7);
        v13 = *(v12 + 16);
        v14 = v12 + 32;
        while (v13 != v11)
        {
          v15 = v11 + 1;
          v16 = *(v14 + v11++);
          if (v16 == v6)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        v17 = 0;
        v18 = *(v2 + v8);
        v19 = *(v18 + 16);
        v20 = v18 + 32;
        while (v19 != v17)
        {
          v15 = v17 + 1;
          v21 = *(v20 + v17++);
          if (v21 == v6)
          {
LABEL_14:
            MEMORY[0x29ED79720](v15 - 1);
            v22 = 0;
            goto LABEL_15;
          }
        }
      }
    }
  }

  v22 = 1;
LABEL_15:
  v23 = sub_29E2BCFB4();
  return (*(*(v23 - 8) + 56))(a2, v22, 1, v23);
}

void sub_29E1641B8(unsigned __int8 a1, void *a2)
{
  v3 = v2;
  v65 = a2;
  v4 = a1;
  v5 = sub_29E2BCBB4();
  v6 = *(v5 - 8);
  v63 = v5;
  v64 = v6;
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v57 - v10;
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v57 - v13;
  sub_29E168A30(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v17 = &v57 - v16;
  v18 = sub_29E2BCFB4();
  v66 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4 == 2)
  {
    v21 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_dateRows;
    swift_beginAccess();
    v22 = *&v3[v21];
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = 0;
      v25 = v22 + 32;
      while (*(v25 + v24) != 1)
      {
        if (v23 == ++v24)
        {
          return;
        }
      }

      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
      }

      else
      {
        swift_beginAccess();
        if (v23 >= v26)
        {
          if ((v26 & 0x8000000000000000) == 0)
          {
            v62 = v11;
            sub_29E14D438(v26, v26, 2);
            swift_endAccess();
            v27 = [v3 tableView];
            if (v27)
            {
              v28 = v27;
              sub_29E168A30(0, &qword_2A181DB20, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9E90]);
              v29 = v66;
              v30 = (*(v66 + 80) + 32) & ~*(v66 + 80);
              v31 = swift_allocObject();
              *(v31 + 16) = xmmword_29E2CAB20;
              (*(v29 + 16))(v31 + v30, v65, v18);
              v32 = sub_29E2C3604();

              [v28 insertRowsAtIndexPaths:v32 withRowAnimation:100];

              sub_29E164068(1u, v17);
              if ((*(v29 + 48))(v17, 1, v18) == 1)
              {
                sub_29E168B2C(v17, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9C68], sub_29E168A30);
                return;
              }

              (*(v29 + 32))(v20, v17, v18);
              v33 = [v3 tableView];
              if (v33)
              {
                v34 = v33;
                v35 = sub_29E2BCF24();
                v36 = [v34 cellForRowAtIndexPath_];

                v37 = v66;
                v38 = v62;
                if (v36)
                {
                  type metadata accessor for EndDateTableViewCell();
                  v39 = swift_dynamicCastClass();
                  if (v39)
                  {
                    v61 = v36;
                    v65 = v39;
                    v40 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_endDate;
                    swift_beginAccess();
                    v41 = v64;
                    v59 = *(v64 + 16);
                    v60 = v40;
                    v42 = &v3[v40];
                    v43 = v38;
                    v44 = v38;
                    v45 = v63;
                    v59(v43, v42, v63);
                    sub_29E2BCA84();
                    sub_29E1689E8(&qword_2A181D9C0, MEMORY[0x29EDB9BC8]);
                    v58 = sub_29E2C3304();
                    v46 = *(v41 + 8);
                    v46(v8, v45);
                    v64 = v41 + 8;
                    v57 = v46;
                    v46(v44, v45);
                    if (v58)
                    {
                      sub_29E2BCBA4();
                      v48 = v59;
                      v47 = v60;
                    }

                    else
                    {
                      v48 = v59;
                      v47 = v60;
                      v59(v14, &v3[v60], v45);
                    }

                    v49 = v61;
                    sub_29E1619B8(v14);
                    v50 = v49;
                    v51 = [v65 detailTextLabel];
                    if (v51)
                    {
                      v52 = v51;

                      v53 = &v3[v47];
                      v55 = v62;
                      v54 = v63;
                      v48(v62, v53, v63);
                      sub_29E1526E8();
                      v57(v55, v54);
                      v56 = sub_29E2C33A4();

                      [v52 setText_];

                      (*(v66 + 8))(v20, v18);
                      return;
                    }

LABEL_29:
                    __break(1u);
                    return;
                  }
                }

                (*(v37 + 8))(v20, v18);
                return;
              }

LABEL_28:
              __break(1u);
              goto LABEL_29;
            }

LABEL_27:
            __break(1u);
            goto LABEL_28;
          }

LABEL_26:
          __break(1u);
          goto LABEL_27;
        }
      }

      __break(1u);
      goto LABEL_26;
    }
  }
}

void sub_29E16485C(unsigned __int8 a1)
{
  v2 = v1;
  v3 = a1;
  sub_29E168A30(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v41 - v5;
  v7 = sub_29E2BCFB4();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v41 - v12;
  if (v3 == 2)
  {
    v14 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_dateRows;
    swift_beginAccess();
    v15 = *&v2[v14];
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = 0;
      v18 = v15 + 32;
      while (*(v18 + v17) != 2)
      {
        if (v16 == ++v17)
        {
          goto LABEL_12;
        }
      }

      v19 = [v2 tableView];
      if (!v19)
      {
        goto LABEL_23;
      }

      v20 = v19;
      MEMORY[0x29ED79720](v17, 0);
      v21 = sub_29E2BCF24();
      (*(v8 + 8))(v13, v7);
      v22 = [v20 cellForRowAtIndexPath_];

      if (v22)
      {
        type metadata accessor for DatePickerTableViewCell();
        v23 = swift_dynamicCastClass();
        if (v23)
        {
          v24 = v23;
          swift_beginAccess();
          v43 = v22;
          sub_29E0663B4(v17);
          swift_endAccess();
          v42 = objc_opt_self();
          v25 = swift_allocObject();
          v25[2] = v24;
          v25[3] = v2;
          v25[4] = v17;
          v48 = sub_29E168BB8;
          v49 = v25;
          aBlock = MEMORY[0x29EDCA5F8];
          v45 = 1107296256;
          v46 = sub_29DF49BB8;
          v47 = &unk_2A24BCB28;
          v26 = _Block_copy(&aBlock);
          v27 = v43;
          v28 = v2;

          v29 = swift_allocObject();
          *(v29 + 16) = v24;
          v48 = sub_29E168BC4;
          v49 = v29;
          aBlock = MEMORY[0x29EDCA5F8];
          v45 = 1107296256;
          v46 = sub_29E1F3494;
          v47 = &unk_2A24BCB78;
          v30 = _Block_copy(&aBlock);
          v31 = v27;
          v22 = v43;

          [v42 animateWithDuration:v26 animations:v30 completion:0.25];
          _Block_release(v30);
          _Block_release(v26);
        }
      }
    }

LABEL_12:
    sub_29E164068(1u, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_29E168B2C(v6, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9C68], sub_29E168A30);
      return;
    }

    (*(v8 + 32))(v10, v6, v7);
    v32 = [v2 tableView];
    if (v32)
    {
      v33 = v32;
      v34 = sub_29E2BCF24();
      v35 = [v33 cellForRowAtIndexPath_];

      if (!v35)
      {
LABEL_20:
        (*(v8 + 8))(v10, v7);
        return;
      }

      type metadata accessor for EndDateTableViewCell();
      v36 = swift_dynamicCastClass();
      if (!v36)
      {
LABEL_19:

        goto LABEL_20;
      }

      v37 = v36;
      v35 = v35;
      v38 = [v37 detailTextLabel];
      if (v38)
      {
        v39 = v38;

        v40 = [objc_opt_self() labelColor];
        [v39 setTextColor_];

        [v37 setAccessoryView_];
        goto LABEL_19;
      }

LABEL_24:
      __break(1u);
      return;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }
}

void sub_29E164DF8(char *a1, void *a2, uint64_t a3)
{
  [*&a1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23DatePickerTableViewCell_datePicker] setAlpha_];
  v6 = [objc_opt_self() clearColor];
  [a1 setBackgroundColor_];

  v7 = [a2 tableView];
  if (v7)
  {
    v8 = v7;
    sub_29E168A30(0, &qword_2A181DB20, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9E90]);
    sub_29E2BCFB4();
    *(swift_allocObject() + 16) = xmmword_29E2CAB20;
    MEMORY[0x29ED79720](a3, 0);
    v9 = sub_29E2C3604();

    [v8 deleteRowsAtIndexPaths:v9 withRowAnimation:3];
  }

  else
  {
    __break(1u);
  }
}

id sub_29E164FC8(id result, char *a2)
{
  if (result)
  {
    [*&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23DatePickerTableViewCell_datePicker] setAlpha_];
    if (qword_2A1817010 != -1)
    {
      swift_once();
    }

    v3 = qword_2A181DEB8;

    return [a2 setBackgroundColor_];
  }

  return result;
}

void sub_29E165064()
{
  v1 = v0;
  v2 = sub_29E2BCBB4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v38 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v36 - v6;
  *&v9 = MEMORY[0x2A1C7C4A8](v8).n128_u64[0];
  v11 = &v36 - v10;
  v37 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_factorSample];
  v12 = [v37 endDate];
  sub_29E2BCB44();

  v13 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_endDate;
  swift_beginAccess();
  v14 = *(v3 + 16);
  v14(v7, &v1[v13], v2);
  sub_29E1689E8(&qword_2A181D9C0, MEMORY[0x29EDB9BC8]);
  LOBYTE(v12) = sub_29E2C3304();
  v15 = *(v3 + 8);
  v15(v7, v2);
  v15(v11, v2);
  if ((v12 & 1) == 0)
  {
    v14(v11, &v1[v13], v2);
    sub_29E2BCA84();
    v16 = sub_29E2BCB34();
    v15(v7, v2);
    v15(v11, v2);
    v17 = &v1[v13];
    if (v16)
    {
      v14(v38, v17, v2);
    }

    else
    {
      v14(v11, v17, v2);
      sub_29E15177C(v38);
      v15(v11, v2);
    }

    *&v36 = objc_opt_self();
    v18 = [v37 hkmc_cycleFactor];
    v14(v11, &v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_startDate], v2);
    sub_29E15177C(v7);
    v15(v11, v2);
    v19 = sub_29E2BCB04();
    v15(v7, v2);
    v20 = sub_29E2BCB04();
    v21 = [v36 hkmc:v18 categorySampleWithCycleFactor:v19 startDate:v20 endDate:?];

    v22 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_providedHealthStore];
    sub_29DF73818(0, &qword_2A1A619B0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
    v23 = swift_allocObject();
    v36 = xmmword_29E2CE220;
    *(v23 + 16) = xmmword_29E2CE220;
    *(v23 + 32) = v21;
    sub_29DE9408C(0, &qword_2A181A6C8);
    v24 = v21;
    v25 = sub_29E2C3604();

    v26 = swift_allocObject();
    *(v26 + 16) = v36;
    v27 = v37;
    *(v26 + 32) = v37;
    v28 = v27;
    v29 = sub_29E2C3604();

    v30 = swift_allocObject();
    *(v30 + 16) = v1;
    *(v30 + 24) = v24;
    aBlock[4] = sub_29E168B24;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29DFE9648;
    aBlock[3] = &unk_2A24BCA88;
    v31 = _Block_copy(aBlock);
    v32 = v24;
    v33 = v1;

    [v22 saveObjects:v25 deleteObjects:v29 associations:0 completion:v31];
    _Block_release(v31);

    v34 = [v33 presentingViewController];
    if (v34)
    {
      v35 = v34;
      [v34 dismissViewControllerAnimated:1 completion:0];

      v15(v38, v2);
    }

    else
    {
      v15(v38, v2);
    }
  }
}

void sub_29E1655D8(char a1, void *a2, void *a3, void *a4)
{
  v78 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v78);
  v8 = sub_29E2C0514();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v72 - v13;
  if (a1)
  {
    sub_29E2C04B4();
    v15 = a3;
    v16 = a4;
    v17 = sub_29E2C0504();
    v18 = sub_29E2C3A34();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      aBlock[0] = v75;
      *v19 = 136447234;
      ObjectType = swift_getObjectType();
      sub_29E168A94();
      v20 = sub_29E2C3424();
      v77 = v8;
      v22 = sub_29DFAA104(v20, v21, aBlock);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2082;
      ObjectType = *&v15[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_factorSample];
      v23 = ObjectType;
      sub_29DE9408C(0, &qword_2A1A61D50);
      v24 = v23;
      v25 = sub_29E2C3464();
      v74 = v18;
      v27 = sub_29DFAA104(v25, v26, aBlock);
      v76 = v9;
      v28 = v27;

      *(v19 + 14) = v28;
      *(v19 + 22) = 2082;
      v29 = [v24 endDate];
      sub_29E2BCB44();

      v73 = v17;
      v30 = sub_29E2C3464();
      v32 = sub_29DFAA104(v30, v31, aBlock);

      *(v19 + 24) = v32;
      *(v19 + 32) = 2082;
      ObjectType = v16;
      v33 = v16;
      v34 = sub_29E2C3464();
      v36 = sub_29DFAA104(v34, v35, aBlock);

      *(v19 + 34) = v36;
      *(v19 + 42) = 2082;
      v37 = [v33 endDate];
      sub_29E2BCB44();

      v38 = sub_29E2C3464();
      v40 = sub_29DFAA104(v38, v39, aBlock);

      *(v19 + 44) = v40;
      v41 = v73;
      _os_log_impl(&dword_29DE74000, v73, v74, "[%{public}s]: Deleted old factor %{public}s with endDate %{public}s and saved new factor %{public}s with endDate %{public}s", v19, 0x34u);
      v42 = v75;
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v42, -1, -1);
      MEMORY[0x29ED82140](v19, -1, -1);

      (*(v76 + 8))(v11, v77);
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }

    sub_29E165D64(aBlock);
    v66 = v80;
    if (v80)
    {
      v67 = v81;
      sub_29DE966D4(aBlock, v80);
      sub_29DE99D24(v66, v67);
      sub_29DE93B3C(aBlock);
    }

    else
    {
      sub_29E168B2C(aBlock, &unk_2A181DF60, &unk_2A181DF68, &protocol descriptor for AnalyticsMetric, sub_29DEF964C);
    }

    v68 = *&v15[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_nanoSyncControl];
    v69 = swift_allocObject();
    *(v69 + 16) = v15;
    v81 = sub_29E168B8C;
    v82 = v69;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29DFE9648;
    v80 = &unk_2A24BCAD8;
    v70 = _Block_copy(aBlock);
    v71 = v15;

    [v68 forceNanoSyncWithOptions:0 completion:v70];
    _Block_release(v70);
  }

  else
  {
    sub_29E2C04B4();
    v43 = a3;
    v44 = a2;
    v45 = sub_29E2C0504();
    v46 = sub_29E2C3A14();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      aBlock[0] = v75;
      *v47 = 136446978;
      ObjectType = swift_getObjectType();
      sub_29E168A94();
      v48 = sub_29E2C3424();
      v50 = sub_29DFAA104(v48, v49, aBlock);
      v77 = v8;
      v51 = v50;

      *(v47 + 4) = v51;
      *(v47 + 12) = 2082;
      v76 = v9;
      ObjectType = *&v43[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_factorSample];
      v52 = ObjectType;
      sub_29DE9408C(0, &qword_2A1A61D50);
      v53 = v52;
      v54 = sub_29E2C3464();
      v56 = sub_29DFAA104(v54, v55, aBlock);

      *(v47 + 14) = v56;
      *(v47 + 22) = 2082;
      v57 = [v53 startDate];
      sub_29E2BCB44();

      v58 = sub_29E2C3464();
      v60 = sub_29DFAA104(v58, v59, aBlock);

      *(v47 + 24) = v60;
      *(v47 + 32) = 2082;
      ObjectType = a2;
      v61 = a2;
      sub_29DEF964C(0, &qword_2A1A5DFD0, &qword_2A1A61C90);
      v62 = sub_29E2C3424();
      v64 = sub_29DFAA104(v62, v63, aBlock);

      *(v47 + 34) = v64;
      _os_log_impl(&dword_29DE74000, v45, v46, "[%{public}s]: Failed to replace sample %{public}s with startDate %{public}s with error: %{public}s", v47, 0x2Au);
      v65 = v75;
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v65, -1, -1);
      MEMORY[0x29ED82140](v47, -1, -1);

      (*(v76 + 8))(v14, v77);
    }

    else
    {

      (*(v9 + 8))(v14, v8);
    }
  }
}

uint64_t sub_29E165D64@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  v3 = sub_29E2C31A4();
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v51 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2BCC94();
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v55 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2BCEA4();
  v59 = *(v7 - 8);
  v60 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v50 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v58 = &v47 - v10;
  v11 = sub_29E2BCBB4();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v62 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v47 - v15;
  *&v18 = MEMORY[0x2A1C7C4A8](v17).n128_u64[0];
  v20 = &v47 - v19;
  v21 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_factorSample);
  v22 = [v21 startDate];
  sub_29E2BCB44();

  v23 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_startDate;
  v61 = *(v12 + 16);
  v61(v16, v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_startDate, v11);
  LOBYTE(v22) = sub_29E2BCB34();
  v24 = *(v12 + 8);
  v24(v16, v11);
  v24(v20, v11);
  v27 = 1;
  if (v22)
  {
    v25 = [v21 endDate];
    sub_29E2BCB44();

    v26 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_endDate;
    swift_beginAccess();
    v61(v16, v2 + v26, v11);
    sub_29E1689E8(&qword_2A181D9C0, MEMORY[0x29EDB9BC8]);
    LOBYTE(v26) = sub_29E2C3304();
    v24(v16, v11);
    v24(v20, v11);
    if ((v26 & 1) == 0)
    {
      v27 = 0;
    }
  }

  v28 = [v21 hkmc_cycleFactor];
  v48 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_launchSource);
  v49 = v27;
  if (v27)
  {
    v29 = v2 + v23;
  }

  else
  {
    v30 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_endDate;
    swift_beginAccess();
    v29 = v2 + v30;
  }

  v61(v62, v29, v11);
  v32 = v57;
  v31 = v58;
  v33 = v55;
  v34 = v56;
  (*(v56 + 104))(v55, *MEMORY[0x29EDB9C78], v57);
  sub_29E2BCCA4();
  (*(v34 + 8))(v33, v32);
  if ((v28 - 1) > 8)
  {
    (*(v59 + 8))(v31, v60);
    result = (v24)(v62, v11);
    v46 = v54;
    *(v54 + 32) = 0;
    *v46 = 0u;
    v46[1] = 0u;
  }

  else
  {
    LODWORD(v57) = byte_29E2E1BF2[(v28 - 1)];
    v35 = v31;
    v36 = sub_29E2BCD84();
    v58 = HKMCTodayIndex();

    v37 = v62;
    v61(v20, v62, v11);
    v39 = v59;
    v38 = v60;
    (*(v59 + 16))(v50, v31, v60);
    v40 = v51;
    sub_29E2C3144();
    v41 = sub_29E2C3164();
    (*(v52 + 8))(v40, v53);
    (*(v39 + 8))(v35, v38);
    result = (v24)(v37, v11);
    v43 = &v58[-v41];
    if (__OFSUB__(v58, v41))
    {
      __break(1u);
    }

    else
    {
      v44 = v54;
      *(v54 + 24) = &type metadata for LoggedFactorDataMetric;
      *(v44 + 32) = &off_2A24BA450;
      *v44 = v57;
      v45 = v48;
      *(v44 + 1) = v49;
      *(v44 + 2) = v45;
      *(v44 + 8) = v43;
    }
  }

  return result;
}

uint64_t sub_29E166450(char *a1)
{
  v51 = a1;
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v60 = v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2C3384();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = (v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v8);
  v10 = v49 - v9;
  v11 = sub_29E2BCBB4();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v53 = v13;
  v54 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x2A1C7C4A8](v14);
  v56 = v12;
  v16 = *(v12 + 16);
  v61 = v17;
  v62 = v49 - v18;
  v50 = v16;
  v49[1] = (v12 + 16);
  v16(v15);
  v55 = v1;
  v52 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_factorSample];
  v19 = [v52 hkmc_cycleFactor];
  v58 = v5;
  v20 = v5 + 16;
  v21 = (v5 + 16);
  if (v19 != 2)
  {
    sub_29E2C3314();
    v23 = *v21;
    v59 = v20 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v64 = v23;
    v23(v7, v10, v4);
    if (qword_2A1A62788 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  sub_29E2C3314();
  v22 = *v21;
  v59 = v20 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v64 = v22;
  v22(v7, v10, v4);
  if (qword_2A1A62788 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_5:
  v24 = qword_2A1A67F80;
  sub_29E2BCC74();
  v63 = v24;
  sub_29E2C3414();
  v25 = *(v58 + 8);
  v25(v10, v4);
  sub_29E2C3314();
  v64(v7, v10, v4);
  sub_29E2BCC74();
  sub_29E2C3414();
  v57 = v25;
  v25(v10, v4);
  v26 = sub_29E2C33A4();

  v27 = sub_29E2C33A4();

  v28 = [objc_opt_self() alertControllerWithTitle:v26 message:v27 preferredStyle:0];

  v49[0] = v28;
  v29 = [v28 popoverPresentationController];
  [v29 setSourceItem_];

  sub_29E2C3314();
  v64(v7, v10, v4);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  sub_29E2BCC74();
  v30 = v63;
  sub_29E2C3414();
  v58 += 8;
  v57(v10, v4);
  v51 = v10;
  v31 = v54;
  v32 = v61;
  (v50)(v54, v62, v61);
  v50 = v7;
  v33 = v56;
  v34 = (*(v56 + 80) + 32) & ~*(v56 + 80);
  v35 = swift_allocObject();
  v53 = v4;
  v36 = v55;
  v37 = v52;
  *(v35 + 16) = v55;
  *(v35 + 24) = v37;
  (*(v33 + 32))(v35 + v34, v31, v32);
  v55 = v36;
  v38 = v37;
  v39 = sub_29E2C33A4();

  aBlock[4] = sub_29E16880C;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DF6E81C;
  aBlock[3] = &unk_2A24BC8F8;
  v40 = _Block_copy(aBlock);

  v41 = objc_opt_self();
  v42 = [v41 actionWithTitle:v39 style:2 handler:v40];
  _Block_release(v40);

  v43 = v49[0];
  [v49[0] addAction_];
  v44 = v51;
  sub_29E2C3314();
  v45 = v53;
  v64(v50, v44, v53);
  sub_29E2BCC74();
  sub_29E2C3414();
  v57(v44, v45);
  v46 = sub_29E2C33A4();

  v47 = [v41 actionWithTitle:v46 style:1 handler:0];

  [v43 addAction_];
  [v55 presentViewController:v43 animated:1 completion:0];

  return (*(v33 + 8))(v62, v61);
}

void sub_29E166D14(uint64_t a1, char *a2, void *a3, uint64_t a4)
{
  v7 = sub_29E2BCBB4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x2A1C7C4A8](v7);
  v11 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_providedHealthStore];
  (*(v8 + 16))(aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v7, v10);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  aBlock[4] = sub_29E168964;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DFE9648;
  aBlock[3] = &unk_2A24BC948;
  v14 = _Block_copy(aBlock);
  v15 = a2;
  v16 = a3;

  [v11 deleteObject:v16 withCompletion:v14];
  _Block_release(v14);
}

void sub_29E166EE8(char a1, id a2, void *a3, void *a4, uint64_t a5)
{
  v105 = a4;
  v9 = sub_29E2C2B34();
  v103 = *(v9 - 8);
  v104 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v100 = &v94[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_29E2C2B54();
  v101 = *(v11 - 8);
  v102 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v99 = &v94[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_29E2BCBB4();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v94[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v17);
  v98 = &v94[-v18];
  MEMORY[0x2A1C7C4A8](v19);
  v21 = &v94[-v20];
  v22 = sub_29E2C0514();
  v106 = *(v22 - 8);
  v107 = v22;
  MEMORY[0x2A1C7C4A8](v22);
  v24 = &v94[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v25);
  v27 = &v94[-v26];
  v108 = (v14 + 16);
  if (a1)
  {
    sub_29E2C04B4();
    v28 = *v108;
    (*v108)(v16, a5, v13);
    v29 = a3;
    v30 = v105;
    v31 = sub_29E2C0504();
    v32 = sub_29E2C3A34();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v97 = v28;
      v34 = v33;
      v105 = swift_slowAlloc();
      aBlock = v105;
      *v34 = 136446722;
      ObjectType = swift_getObjectType();
      sub_29E168A94();
      v35 = sub_29E2C3424();
      v37 = sub_29DFAA104(v35, v36, &aBlock);
      LODWORD(v96) = v32;
      v38 = v37;

      *(v34 + 4) = v38;
      *(v34 + 12) = 2082;
      ObjectType = v30;
      sub_29DE9408C(0, &qword_2A1A61D50);
      v39 = v30;
      v40 = sub_29E2C3464();
      v42 = sub_29DFAA104(v40, v41, &aBlock);

      *(v34 + 14) = v42;
      *(v34 + 22) = 2082;
      v97(v98, v16, v13);
      v43 = sub_29E2C3464();
      v45 = v44;
      (*(v14 + 8))(v16, v13);
      v46 = sub_29DFAA104(v43, v45, &aBlock);

      *(v34 + 24) = v46;
      _os_log_impl(&dword_29DE74000, v31, v96, "[%{public}s]: Deleted factor %{public}s with startDate %{public}s", v34, 0x20u);
      v47 = v105;
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v47, -1, -1);
      MEMORY[0x29ED82140](v34, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v16, v13);
    }

    (*(v106 + 8))(v24, v107);
    v75 = *&v29[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_nanoSyncControl];
    v76 = swift_allocObject();
    *(v76 + 16) = v29;
    v114 = sub_29E168ADC;
    v115 = v76;
    aBlock = MEMORY[0x29EDCA5F8];
    v111 = 1107296256;
    v112 = sub_29DFE9648;
    v113 = &unk_2A24BC9E8;
    v77 = _Block_copy(&aBlock);
    v78 = v29;

    [v75 forceNanoSyncWithOptions:0 completion:v77];
    _Block_release(v77);
    sub_29DE9408C(0, &qword_2A1A626C0);
    v79 = sub_29E2C3CF4();
    v80 = swift_allocObject();
    *(v80 + 16) = v78;
    v114 = sub_29E168B08;
    v115 = v80;
    aBlock = MEMORY[0x29EDCA5F8];
    v111 = 1107296256;
    v112 = sub_29DF49BB8;
    v113 = &unk_2A24BCA38;
    v81 = _Block_copy(&aBlock);
    v82 = v78;

    v83 = v99;
    sub_29E2C2B44();
    aBlock = MEMORY[0x29EDCA190];
    sub_29E1689E8(&qword_2A1A626F0, MEMORY[0x29EDCA248]);
    sub_29E168A30(0, &qword_2A1A626E0, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
    sub_29DF4B408();
    v84 = v100;
    v85 = v104;
    sub_29E2C43F4();
    MEMORY[0x29ED804D0](0, v83, v84, v81);
    _Block_release(v81);

    (*(v103 + 8))(v84, v85);
    (*(v101 + 8))(v83, v102);
  }

  else
  {
    sub_29E2C04B4();
    v48 = *v108;
    (*v108)(v21, a5, v13);
    v49 = a3;
    v50 = v105;
    v51 = a2;
    v52 = sub_29E2C0504();
    v53 = sub_29E2C3A14();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v96 = v52;
      v55 = v54;
      v97 = swift_slowAlloc();
      aBlock = v97;
      *v55 = 136446978;
      ObjectType = swift_getObjectType();
      sub_29E168A94();
      v56 = sub_29E2C3424();
      v105 = a2;
      v57 = v49;
      v59 = sub_29DFAA104(v56, v58, &aBlock);
      v95 = v53;
      v60 = v59;

      *(v55 + 4) = v60;
      *(v55 + 12) = 2082;
      ObjectType = v50;
      sub_29DE9408C(0, &qword_2A1A61D50);
      v61 = v50;
      v62 = sub_29E2C3464();
      v64 = sub_29DFAA104(v62, v63, &aBlock);

      *(v55 + 14) = v64;
      *(v55 + 22) = 2082;
      v48(v98, v21, v13);
      v65 = sub_29E2C3464();
      v67 = v66;
      (*(v14 + 8))(v21, v13);
      v68 = sub_29DFAA104(v65, v67, &aBlock);
      v49 = v57;
      a2 = v105;

      *(v55 + 24) = v68;
      *(v55 + 32) = 2082;
      ObjectType = a2;
      v69 = a2;
      sub_29DEF964C(0, &qword_2A1A5DFD0, &qword_2A1A61C90);
      v70 = sub_29E2C3424();
      v72 = sub_29DFAA104(v70, v71, &aBlock);

      *(v55 + 34) = v72;
      v73 = v96;
      _os_log_impl(&dword_29DE74000, v96, v95, "[%{public}s] Failed to delete factor %{public}s with startDate %{public}s with error: %{public}s", v55, 0x2Au);
      v74 = v97;
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v74, -1, -1);
      MEMORY[0x29ED82140](v55, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v21, v13);
    }

    (*(v106 + 8))(v27, v107);
    if (a2)
    {
      v86 = sub_29E2BC7D4();
      if ([v86 hk:3 isHealthKitErrorWithCode:?])
      {
        sub_29DE9408C(0, &qword_2A1A626C0);
        v87 = sub_29E2C3CF4();
        v88 = swift_allocObject();
        *(v88 + 16) = v49;
        v114 = sub_29E168BF8;
        v115 = v88;
        aBlock = MEMORY[0x29EDCA5F8];
        v111 = 1107296256;
        v112 = sub_29DF49BB8;
        v113 = &unk_2A24BC998;
        v89 = _Block_copy(&aBlock);
        v90 = v49;

        v91 = v99;
        sub_29E2C2B44();
        aBlock = MEMORY[0x29EDCA190];
        sub_29E1689E8(&qword_2A1A626F0, MEMORY[0x29EDCA248]);
        sub_29E168A30(0, &qword_2A1A626E0, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
        sub_29DF4B408();
        v92 = v100;
        v93 = v104;
        sub_29E2C43F4();
        MEMORY[0x29ED804D0](0, v91, v92, v89);
        _Block_release(v89);

        (*(v103 + 8))(v92, v93);
        (*(v101 + 8))(v91, v102);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_29E167B00(char a1, uint64_t a2, void *a3, const char *a4, const char *a5)
{
  v9 = sub_29E2C0514();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &ObjectType - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &ObjectType - v14;
  if (a1)
  {
    sub_29E2C04B4();
    v16 = a3;
    v17 = sub_29E2C0504();
    v18 = sub_29E2C3A34();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v34 = v20;
      *v19 = 136446210;
      ObjectType = swift_getObjectType();
      sub_29E168A94();
      v21 = sub_29E2C3424();
      v23 = sub_29DFAA104(v21, v22, &v34);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_29DE74000, v17, v18, a4, v19, 0xCu);
      sub_29DE93B3C(v20);
      MEMORY[0x29ED82140](v20, -1, -1);
      MEMORY[0x29ED82140](v19, -1, -1);
    }

    return (*(v10 + 8))(v15, v9);
  }

  else
  {
    sub_29E2C04B4();
    v25 = a3;
    v26 = sub_29E2C0504();
    v27 = sub_29E2C3A14();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v34 = v29;
      *v28 = 136446210;
      ObjectType = swift_getObjectType();
      sub_29E168A94();
      v30 = sub_29E2C3424();
      v32 = sub_29DFAA104(v30, v31, &v34);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_29DE74000, v26, v27, a5, v28, 0xCu);
      sub_29DE93B3C(v29);
      MEMORY[0x29ED82140](v29, -1, -1);
      MEMORY[0x29ED82140](v28, -1, -1);
    }

    return (*(v10 + 8))(v12, v9);
  }
}

void sub_29E167DF0(void *a1)
{
  v1 = [a1 presentingViewController];
  if (v1)
  {
    v2 = v1;
    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

id sub_29E167EDC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditCycleFactorTableViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for EditCycleFactorTableViewController()
{
  result = qword_2A181DF18;
  if (!qword_2A181DF18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E168094()
{
  result = sub_29E2BCBB4();
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

unint64_t sub_29E1681B8()
{
  result = qword_2A181DF38;
  if (!qword_2A181DF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181DF38);
  }

  return result;
}

uint64_t sub_29E16823C(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_29DF73818(255, a2, a3, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29E1682A4()
{
  result = qword_2A181DF50;
  if (!qword_2A181DF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181DF50);
  }

  return result;
}

id sub_29E168300()
{
  v1 = v0;
  sub_29E168A30(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v25 - v3;
  v5 = sub_29E2BCFB4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E2BCBB4();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCA84();
  sub_29E1619B8(v12);
  sub_29E164068(1u, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_29E168B2C(v4, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9C68], sub_29E168A30);
  }

  (*(v6 + 32))(v8, v4, v5);
  result = [v0 tableView];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = result;
  v15 = sub_29E2BCF24();
  v16 = [v14 cellForRowAtIndexPath_];

  if (v16)
  {
    type metadata accessor for EndDateTableViewCell();
    v17 = swift_dynamicCastClass();
    if (!v17)
    {

      return (*(v6 + 8))(v8, v5);
    }

    v18 = v17;
    v25 = v16;
    result = [v18 detailTextLabel];
    if (result)
    {
      v19 = result;
      v20 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_endDate;
      swift_beginAccess();
      (*(v10 + 16))(v12, v1 + v20, v9);
      sub_29E1526E8();
      (*(v10 + 8))(v12, v9);
      v21 = sub_29E2C33A4();

      [v19 setText_];

      [v18 setAccessoryView_];
      result = [v18 detailTextLabel];
      if (result)
      {
        v22 = result;
        v23 = v25;

        v24 = [objc_opt_self() labelColor];
        [v22 setTextColor_];

        sub_29E16485C(2u);
        return (*(v6 + 8))(v8, v5);
      }

LABEL_14:
      __break(1u);
      return result;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_29E16874C()
{
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_launchSource) = 2;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController____lazy_storage___doneBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController____lazy_storage___cancelBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_sections) = &unk_2A24AE458;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_dateRows) = &unk_2A24AF5B8;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_deleteRows) = &unk_2A24AF5E0;
  sub_29E2C4724();
  __break(1u);
}

void sub_29E16880C(uint64_t a1)
{
  v3 = *(sub_29E2BCBB4() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_29E166D14(a1, v4, v5, v6);
}

uint64_t sub_29E168880(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E168898()
{
  v1 = sub_29E2BCBB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

void sub_29E168964(char a1, void *a2)
{
  v5 = *(sub_29E2BCBB4() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  sub_29E166EE8(a1, a2, v6, v7, v8);
}

uint64_t sub_29E1689E8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E168A30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29E168A94()
{
  result = qword_2A181DF58;
  if (!qword_2A181DF58)
  {
    type metadata accessor for EditCycleFactorTableViewController();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A181DF58);
  }

  return result;
}

uint64_t sub_29E168B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_29E168C10(unint64_t *a1, unint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  switch(v4)
  {
    case 0uLL:
      return !v5;
    case 1uLL:
      return v5 == 1;
    case 2uLL:
      return v5 == 2;
  }

  if (v5 < 3)
  {
    return 0;
  }

  v7 = a2[1];
  v8 = a1[1];
  if ((sub_29E142298(v4, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_29E142298(v8, v7);
}

uint64_t sub_29E168CB4@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43DeviationsFactorsConfirmationViewController____lazy_storage___scaleFactorConfiguration;
  swift_beginAccess();
  sub_29DFD5A4C(v1 + v3, &v5);
  if (v6)
  {
    return sub_29DE8EE78(&v5, a1);
  }

  sub_29DFD5AB0(&v5);
  sub_29E168D6C(v1, a1);
  sub_29DE9DC34(a1, &v5);
  swift_beginAccess();
  sub_29DE9DCF4(&v5, v1 + v3);
  return swift_endAccess();
}

id sub_29E168D6C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [a1 view];
  if (result)
  {
    v4 = result;
    v5 = [result window];

    if (!v5)
    {
      v5 = [objc_opt_self() mainScreen];
    }

    [v5 bounds];
    v7 = v6;
    v9 = v8;

    v10 = v9 > 640.0 || v7 > 380.0;
    v11 = MEMORY[0x29EDC8080];
    if (v10)
    {
      v11 = MEMORY[0x29EDC8068];
    }

    result = *v11;
    a2[3] = &type metadata for ScaleFactorConfiguration;
    a2[4] = &off_2A24BA1E0;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_29E168E78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v7 = sub_29E2C3384();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &ObjectType - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &ObjectType - v12;
  v14 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43DeviationsFactorsConfirmationViewController_dataSource;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43DeviationsFactorsConfirmationViewController_dataSource] = 0;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43DeviationsFactorsConfirmationViewController_dataSourceAdaptor] = 0;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43DeviationsFactorsConfirmationViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43DeviationsFactorsConfirmationViewController_nextButton] = 0;
  v15 = &v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43DeviationsFactorsConfirmationViewController____lazy_storage___scaleFactorConfiguration];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 4) = 0;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43DeviationsFactorsConfirmationViewController_subscriptions] = MEMORY[0x29EDCA1A0];
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43DeviationsFactorsConfirmationViewController_viewModel] = a1;
  *&v3[v14] = a2;

  sub_29E2C3314();
  (*(v8 + 16))(v10, v13, v7);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v16 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v8 + 8))(v13, v7);
  v17 = sub_29E2C33A4();

  sub_29DFB53D8();
  v18 = sub_29E2C33A4();

  v22.receiver = v3;
  v22.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v22, sel_initWithTitle_detailText_icon_adoptTableViewScrollView_, v17, v18, 0, 1);

  return v19;
}

id sub_29E169198()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  result = [v0 view];
  if (result)
  {
    v4 = result;
    v5 = [result window];

    if (v5)
    {

      if (*&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43DeviationsFactorsConfirmationViewController_dataSourceAdaptor])
      {

        sub_29DF3B4E4();
      }
    }

    v6.receiver = v1;
    v6.super_class = ObjectType;
    return objc_msgSendSuper2(&v6, sel_viewWillLayoutSubviews);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29E16929C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_29E16BCE8(0, &qword_2A1A61D40, MEMORY[0x29EDCA298]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v42 - v4;
  v6 = MEMORY[0x29EDB8AF0];
  sub_29E16BEB4(0, &qword_2A1A5E3D8, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8AF0]);
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v42 - v8;
  sub_29E16BD3C();
  v45 = *(v10 - 8);
  v46 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E16BEB4(0, &unk_2A181DFF0, &type metadata for DeviationsFactorsConfirmationViewController.State, v6);
  v14 = v13;
  v15 = *(v13 - 8);
  *&v16 = MEMORY[0x2A1C7C4A8](v13).n128_u64[0];
  v18 = &v42 - v17;
  v48.receiver = v1;
  v48.super_class = ObjectType;
  objc_msgSendSuper2(&v48, sel_viewDidLoad, v16);
  sub_29E169994();
  v19 = [v1 navigationItem];
  v20 = [objc_allocWithZone(MEMORY[0x29EDC7940]) initWithBarButtonSystemItem:1 target:v1 action:sel_cancel];
  [v19 setRightBarButtonItem_];

  swift_beginAccess();
  sub_29E16BEB4(0, &qword_2A181A0F8, &type metadata for DeviationsFactorsConfirmationViewController.State, MEMORY[0x29EDB8B00]);
  sub_29E2C11E4();
  swift_endAccess();
  sub_29E16BE50(&unk_2A181E000, &unk_2A181DFF0, &type metadata for DeviationsFactorsConfirmationViewController.State);
  v21 = sub_29E2C1274();
  (*(v15 + 8))(v18, v14);
  sub_29E169BE0(v21);

  if (!*&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43DeviationsFactorsConfirmationViewController_dataSource])
  {
    __break(1u);
    goto LABEL_6;
  }

  swift_beginAccess();
  v22 = MEMORY[0x29EDC9A98];
  sub_29E16BEB4(0, &qword_2A1A5E3C8, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8B00]);

  sub_29E2C11E4();
  swift_endAccess();

  sub_29DE9408C(0, &qword_2A1A626C0);
  v23 = sub_29E2C3CF4();
  v47 = v23;
  v24 = sub_29E2C3CE4();
  (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
  sub_29E16BE50(&qword_2A1A5E3E0, &qword_2A1A5E3D8, v22);
  sub_29E020B68(&qword_2A1A61D38, &qword_2A1A626C0);
  v25 = v44;
  sub_29E2C1354();
  sub_29E16C160(v5, &qword_2A1A61D40, MEMORY[0x29EDCA298]);

  (*(v43 + 8))(v9, v25);
  v26 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43DeviationsFactorsConfirmationViewController_nextButton];
  *(swift_allocObject() + 16) = v26;
  sub_29E16BF24(&qword_2A181E010, sub_29E16BD3C);
  v27 = v26;
  v28 = v46;
  sub_29E2C1384();

  (*(v45 + 8))(v12, v28);
  swift_beginAccess();
  sub_29E2C1034();
  swift_endAccess();

  v29 = [v1 tableView];
  if (!v29)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v30 = v29;
  v31 = [v1 view];
  if (v31)
  {
    v32 = v31;
    [v31 frame];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;

    v49.origin.x = v34;
    v49.origin.y = v36;
    v49.size.width = v38;
    v49.size.height = v40;
    v41 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) initWithFrame_];
    [v30 setTableHeaderView_];

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_29E169994()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x29EDC7D08]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  [v1 setTableView_];

  v3 = [v1 tableView];
  if (!v3)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = v3;
  v5 = [objc_opt_self() systemBackgroundColor];
  [v4 setBackgroundColor_];

  v6 = [v1 tableView];
  if (!v6)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = v6;
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];

  v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43DeviationsFactorsConfirmationViewController_dataSource;
  if (!*&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43DeviationsFactorsConfirmationViewController_dataSource])
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = [v1 tableView];
  if (!v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = v9;
  sub_29DF93FC4(v9);

  v11 = [v1 tableView];
  if (!v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = v11;
  [v11 setDelegate_];

  v13 = [v1 tableView];
  if (!v13)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = *&v1[v8];
  if (!v14)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v15 = v13;
  type metadata accessor for OnboardingOngoingCycleFactorsDiffableTableViewAdaptor();
  swift_allocObject();

  v16 = sub_29DF3B9F8(0, 0, 0, 0, v15, v14);

  v17 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43DeviationsFactorsConfirmationViewController_dataSourceAdaptor;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43DeviationsFactorsConfirmationViewController_dataSourceAdaptor] = v16;

  v18 = *&v1[v17];
  if (v18)
  {
    *(v18 + 72) = &off_2A24BCC30;
    swift_unknownObjectWeakAssign();
  }

  sub_29E16A890();
}

uint64_t sub_29E169BE0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v21 = MEMORY[0x29EDB9E10];
  sub_29E16BCE8(0, &qword_2A181E018, MEMORY[0x29EDB9E10]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v21 - v3;
  sub_29E16BF6C();
  v22 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E16C0CC();
  v10 = *(v9 - 8);
  v23 = v9;
  v24 = v10;
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  v13 = [objc_opt_self() mainRunLoop];
  v27 = v13;
  v14 = sub_29E2C42C4();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_29E16C06C();
  sub_29DE9408C(0, &qword_2A181E030);
  sub_29E16BF24(&qword_2A181E038, sub_29E16C06C);
  sub_29E020B68(&qword_2A181E040, &qword_2A181E030);
  sub_29E2C1354();
  sub_29E16C160(v4, &qword_2A181E018, v21);

  sub_29E16BF24(&qword_2A181E050, sub_29E16BF6C);
  sub_29E16C1BC();
  v15 = v22;
  sub_29E2C1374();
  (*(v6 + 8))(v8, v15);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v18 = ObjectType;
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  sub_29E16BF24(&unk_2A181E060, sub_29E16C0CC);
  v19 = v23;
  sub_29E2C1384();

  (*(v24 + 8))(v12, v19);
  swift_beginAccess();
  sub_29E2C1034();
  swift_endAccess();
}

void sub_29E16A13C(unint64_t *a1)
{
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v6 = a1[1];
  sub_29E2C04B4();
  sub_29DFB65F4(v7);
  v8 = sub_29E2C0504();
  v9 = sub_29E2C3A34();
  sub_29DFB65B0(v7);
  v10 = os_log_type_enabled(v8, v9);
  v25 = v7;
  if (v10)
  {
    v11 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v26[0] = v23;
    *v11 = 136446466;
    v12 = sub_29E2C4AE4();
    v14 = sub_29DFAA104(v12, v13, v26);
    v24 = v2;
    v15 = v14;

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    v16 = sub_29E16B860(v7, v6);
    v18 = sub_29DFAA104(v16, v17, v26);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_29DE74000, v8, v9, "[%{public}s] State updated to %s", v11, 0x16u);
    v19 = v23;
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v19, -1, -1);
    MEMORY[0x29ED82140](v11, -1, -1);

    (*(v3 + 8))(v5, v24);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v22 = v25;
    if (v25 >= 3)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_29DEE9558(v22, v6);
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_29E16A3D0()
{
  swift_getObjectType();
  v1 = sub_29E2C0514();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43DeviationsFactorsConfirmationViewController_dataSource))
  {

    v5 = sub_29DF93768();

    sub_29DFB47B4(v5);
    sub_29E2C04B4();
    sub_29E2BF404();
    v6 = sub_29E2C0504();
    v7 = sub_29E2C3A34();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136446466;
      v10 = sub_29E2C4AE4();
      v12 = sub_29DFAA104(v10, v11, &v17);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      v16 = v5;
      sub_29DEE9894();
      v13 = sub_29E2C3464();
      v15 = sub_29DFAA104(v13, v14, &v17);

      *(v8 + 14) = v15;
      _os_log_impl(&dword_29DE74000, v6, v7, "[%{public}s] Next button tapped, submitting cycle factors: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v9, -1, -1);
      MEMORY[0x29ED82140](v8, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v4, v1);
  }

  else
  {
    __break(1u);
  }
}

id sub_29E16A67C()
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
  return [v1 dismissViewControllerAnimated:1 completion:0];
}

void sub_29E16A890()
{
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E2C3384();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v15[-v7];
  v9 = [objc_opt_self() boldButton];
  sub_29E2C3314();
  (*(v3 + 16))(v5, v8, v2);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v10 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v3 + 8))(v8, v2);
  v11 = sub_29E2C33A4();

  [v9 setTitle:v11 forState:0];

  [v9 addTarget:v0 action:sel_nextButtonTapped forControlEvents:64];
  v12 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43DeviationsFactorsConfirmationViewController_nextButton];
  *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43DeviationsFactorsConfirmationViewController_nextButton] = v9;
  v13 = v9;

  v14 = [v0 buttonTray];
  [v14 addButton_];
}

void sub_29E16ACDC(void *a1, uint64_t a2)
{
  v3 = v2;
  sub_29E16BCE8(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = v27 - v7;
  sub_29E16BCE8(0, &qword_2A1819AE0, sub_29DF9413C);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = v27 - v10;
  v30 = sub_29E2BCFB4();
  v29 = *(v30 - 8);
  MEMORY[0x2A1C7C4A8](v30);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29E2BCF24();
  [a1 deselectRowAtIndexPath:v14 animated:0];

  v15 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43DeviationsFactorsConfirmationViewController_dataSource;
  if (!*(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43DeviationsFactorsConfirmationViewController_dataSource))
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  type metadata accessor for DeviationsFactorsCompoundDataSource();

  sub_29E2BE764();

  sub_29DEB1BC4(0, &qword_2A1819BD0);
  sub_29DEB1BC4(0, &unk_2A181DFD0);
  swift_dynamicCast();
  v16 = v35;
  v17 = v36;
  sub_29DE966D4(v34, v35);
  v18 = (*(v17 + 24))(v16, v17);
  if (v18 > 8)
  {
    goto LABEL_11;
  }

  if (((1 << v18) & 0x2C) != 0)
  {
    if (*(v3 + v15))
    {

      sub_29DF92C88(a2, v11);
      sub_29DF9413C();
      v20 = v19;
      if ((*(*(v19 - 8) + 48))(v11, 1, v19) == 1)
      {

        sub_29E16C160(v11, &qword_2A1819AE0, sub_29DF9413C);
      }

      else
      {
        v21 = *v11;
        v27[1] = *(v11 + 1);
        (*(v29 + 32))(v13, &v11[*(v20 + 64)], v30);
        v28 = sub_29E2BF0C4();
        v22 = *(v28 + 16);
        if (v22)
        {
          v23 = (v28 + 32);
          v27[0] = v29 + 56;
          do
          {
            v24 = *v23;
            if (object_getClass(*v23) == _TtC24MenstrualCyclesAppPlugin20ExpandableDataSource && v24 != 0)
            {
              v26 = v24[3] == *(v21 + 24) && v24[4] == *(v21 + 32);
              if (!v26 && (sub_29E2C4914() & 1) == 0)
              {
                type metadata accessor for CycleFactorSectionDataSource();
                if (swift_dynamicCastClass())
                {

                  swift_unknownObjectRetain();

                  sub_29E278DDC(v8);
                  swift_unknownObjectRelease();
                }

                else
                {
                  (*v27[0])(v8, 1, 1, v30);
                }

                sub_29E16C160(v8, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
              }
            }

            v23 += 2;
            --v22;
          }

          while (v22);
        }

        sub_29E2795D8(v13);

        (*(v29 + 8))(v13, v30);
      }

      goto LABEL_31;
    }

    goto LABEL_33;
  }

  if (((1 << v18) & 0x150) != 0)
  {
LABEL_31:
    sub_29DE93B3C(v34);
    return;
  }

  if (v18 == 7)
  {
    if (*(v3 + v15))
    {

      sub_29DF93268(a2);

      goto LABEL_31;
    }

    goto LABEL_34;
  }

LABEL_11:
  if (!v18)
  {
    goto LABEL_31;
  }

  if (*(v3 + v15))
  {
    sub_29DE9DC34(v34, v33);

    swift_dynamicCast();
    v37 = v31;
    v38[0] = *v32;
    *(v38 + 15) = *&v32[15];
    sub_29DF920C8(&v37, a2);

    sub_29E15CA58(&v37);
    goto LABEL_31;
  }

LABEL_35:
  __break(1u);
}

uint64_t sub_29E16B48C(void *a1, uint64_t a2)
{
  v4 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v5 = sub_29E2C3384();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = v26 - v10;
  if (a2)
  {
    return 0;
  }

  v13 = sub_29E2C33A4();
  v14 = [a1 dequeueReusableHeaderFooterViewWithIdentifier_];

  result = 0;
  if (v14)
  {
    type metadata accessor for MenstrualCyclesHeaderFooterView();
    v15 = swift_dynamicCastClass();
    if (!v15)
    {

      return 0;
    }

    v16 = v15;
    v17 = *(v15 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31MenstrualCyclesHeaderFooterView_label);
    sub_29E2C3314();
    (*(v6 + 16))(v8, v11, v5);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v18 = qword_2A1A67F80;
    sub_29E2BCC74();
    v19 = sub_29E2C3414();
    v21 = v20;
    (*(v6 + 8))(v11, v5);
    v26[0] = v19;
    v26[1] = v21;
    sub_29DE9DE68();
    sub_29E2C4364();
    v22 = sub_29E2C33A4();

    [v17 setText_];

    sub_29E168CB4(v26);
    v23 = v27;
    v24 = v28;
    v25 = sub_29DE966D4(v26, v27);
    sub_29DFD5718(v25, v16, v23, v24);
    sub_29DE93B3C(v26);
    return v16;
  }

  return result;
}

uint64_t sub_29E16B838(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_29E16B860(uint64_t a1, uint64_t a2)
{
  switch(a1)
  {
    case 0:
      return 0x6C616974696E69;
    case 1:
      return 0x7A796C616E616572;
    case 2:
      return 0x726F727265;
  }

  sub_29E2C4584();

  v5 = sub_29DE9408C(0, &qword_2A1A61D50);
  v6 = MEMORY[0x29ED7FDF0](a1, v5);
  MEMORY[0x29ED7FCC0](v6);

  MEMORY[0x29ED7FCC0](0x63616620646E6120, 0xED00002073726F74);
  v7 = MEMORY[0x29ED7FDF0](a2, v5);
  MEMORY[0x29ED7FCC0](v7);

  return 0xD000000000000017;
}

id sub_29E16B9C0(uint64_t a1)
{
  v2 = v1;
  sub_29E16BCE8(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_29E2BCFB4();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x2A1C7C4A8](v7).n128_u64[0];
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v2 tableView];
  if (!result)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = result;
  [result layoutIfNeeded];

  sub_29DF3C944(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_29E16C160(v6, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
  }

  (*(v8 + 32))(v11, v6, v7);
  result = [v2 tableView];
  if (!result)
  {
    goto LABEL_11;
  }

  v14 = result;
  v15 = sub_29E2BCF24();
  v16 = [v14 cellForRowAtIndexPath_];

  if (v16)
  {

    result = [v2 tableView];
    if (result)
    {
      v17 = result;
      v18 = sub_29E2BCF24();
      [v17 scrollToRowAtIndexPath:v18 atScrollPosition:2 animated:1];

      return (*(v8 + 8))(v11, v7);
    }

LABEL_12:
    __break(1u);
    return result;
  }

  return (*(v8 + 8))(v11, v7);
}

char *sub_29E16BC40(char *result)
{
  if (*(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43DeviationsFactorsConfirmationViewController_dataSource))
  {
    v2 = result;

    v3 = sub_29DF93508(v2);
    v5 = v4;

    if (!v5)
    {
      return 0;
    }

    sub_29E168CB4(v7);
    v6 = sub_29DFD57F8(v3, v5, v7);

    sub_29DE93B3C(v7);
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29E16BCE8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_29E16BD3C()
{
  if (!qword_2A181DFE0)
  {
    v0 = MEMORY[0x29EDC9A98];
    sub_29E16BEB4(255, &qword_2A1A5E3D8, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8AF0]);
    sub_29DE9408C(255, &qword_2A1A626C0);
    sub_29E16BE50(&qword_2A1A5E3E0, &qword_2A1A5E3D8, v0);
    sub_29E020B68(&qword_2A1A61D38, &qword_2A1A626C0);
    v1 = sub_29E2C0FF4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181DFE0);
    }
  }
}

uint64_t sub_29E16BE50(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_29E16BEB4(255, a2, a3, MEMORY[0x29EDB8AF0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E16BEB4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id sub_29E16BF04(unsigned __int8 *a1)
{
  result = *(v1 + 16);
  if (result)
  {
    return [result setEnabled_];
  }

  return result;
}

uint64_t sub_29E16BF24(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E16BF6C()
{
  if (!qword_2A181E020)
  {
    sub_29E16C06C();
    sub_29DE9408C(255, &qword_2A181E030);
    sub_29E16BF24(&qword_2A181E038, sub_29E16C06C);
    sub_29E020B68(&qword_2A181E040, &qword_2A181E030);
    v0 = sub_29E2C0FF4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E020);
    }
  }
}

void sub_29E16C06C()
{
  if (!qword_2A181E028)
  {
    v0 = sub_29E2C1024();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E028);
    }
  }
}

void sub_29E16C0CC()
{
  if (!qword_2A181E048)
  {
    sub_29E16BF6C();
    sub_29E16BF24(&qword_2A181E050, sub_29E16BF6C);
    v0 = sub_29E2C0F04();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E048);
    }
  }
}

uint64_t sub_29E16C160(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29E16BCE8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_29E16C1BC()
{
  result = qword_2A181E058;
  if (!qword_2A181E058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181E058);
  }

  return result;
}

uint64_t sub_29E16C218(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_29E16D524(0, &qword_2A181E080, sub_29E16D470, MEMORY[0x29EDBA238]);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29E16C308, 0, 0);
}

uint64_t sub_29E16C308()
{
  v1 = MEMORY[0x29EDC9E90];
  sub_29E16D524(0, &qword_2A181E088, sub_29E16D4BC, MEMORY[0x29EDC9E90]);
  sub_29E16D4BC(0);
  *(swift_allocObject() + 16) = xmmword_29E2CAB20;
  sub_29E16D470();
  sub_29E2C2F24();
  sub_29E16D524(0, &qword_2A181E098, sub_29E16D4F0, v1);
  sub_29E16D4F0(0);
  *(swift_allocObject() + 16) = xmmword_29E2CAB20;
  KeyPath = swift_getKeyPath();
  MEMORY[0x29ED78E10](KeyPath, 1);
  sub_29E2C2FA4();
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_29E16C56C;
  v5 = v0[3];
  v4 = v0[4];

  return MEMORY[0x2A1C5B578](v5, v4);
}

uint64_t sub_29E16C56C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = sub_29E16C788;
  }

  else
  {
    v4 = sub_29E16C680;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29E16C680()
{
  v1 = v0[8];
  if (v1 >> 62)
  {
    result = sub_29E2C4484();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v3 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x29ED80D70](0, v0[8]);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[8] + 32);
  }

LABEL_9:
  (*(v0[5] + 8))(v0[6], v0[4]);

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_29E16C788()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_29E16C808(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_29E16D524(0, &qword_2A181E0A8, sub_29E16D470, MEMORY[0x29EDC2DF0]);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29E16C8F8, 0, 0);
}

uint64_t sub_29E16C8F8()
{
  sub_29E16D524(0, &qword_2A181E088, sub_29E16D4BC, MEMORY[0x29EDC9E90]);
  sub_29E16D4BC(0);
  *(swift_allocObject() + 16) = xmmword_29E2CAB20;
  sub_29E16D470();
  sub_29E2C2F24();
  sub_29E2BFD04();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_29E16CA8C;
  v3 = v0[3];
  v2 = v0[4];

  return MEMORY[0x2A1C63AA0](v3, v2);
}

uint64_t sub_29E16CA8C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_29E16CC68;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_29E16CBB4;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29E16CBB4()
{
  v1 = sub_29DF46798(v0[9]);
  v3 = v2;

  if (v3)
  {
    __break(1u);
  }

  else
  {
    (*(v0[5] + 8))(v0[6], v0[4]);

    v5 = v0[1];

    return v5(v1, 0);
  }

  return result;
}

uint64_t sub_29E16CC68()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_29E16CCE8()
{
  ObjectType = swift_getObjectType();
  v38 = sub_29E2C0514();
  v1 = *(v38 - 8);
  MEMORY[0x2A1C7C4A8](v38);
  MEMORY[0x2A1C7C4A8](v2);
  v4 = &ObjectType - v3;
  sub_29E16D524(0, &qword_2A181E070, MEMORY[0x29EDB9AB8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &ObjectType - v6;
  v8 = sub_29E2BC754();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &ObjectType - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() healthAppDefaultsDomainWithHealthStore_];
  _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v39 = v12;
  sub_29E2C3B14();

  if (v41[3])
  {
    sub_29E16D40C();
    if (swift_dynamicCast())
    {
      v13 = v40;
      v14 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      if (*(v13 + 16))
      {
        v16 = sub_29DECF000(v14, v15);
        v18 = v17;

        v19 = v9;
        if (v18)
        {
          sub_29DEA6E90(*(v13 + 56) + 32 * v16, v41);
          swift_dynamicCast();
        }
      }

      else
      {

        v19 = v9;
      }

      v28 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      if (*(v13 + 16))
      {
        v30 = sub_29DECF000(v28, v29);
        v32 = v31;

        if (v32)
        {
          sub_29DEA6E90(*(v13 + 56) + 32 * v30, v41);

          swift_dynamicCast();
LABEL_16:
          v33 = objc_opt_self();
          (*(v19 + 56))(v7, 1, 1, v8);
          sub_29E2BC734();
          v34 = sub_29E2BC744();
          (*(v19 + 8))(v11, v8);
          v35 = [v33 localizedStringFromPersonNameComponents:v34 style:3 options:0];

          _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
          v36 = sub_29E2C3494();

          return v36;
        }
      }

      else
      {
      }

      goto LABEL_16;
    }
  }

  else
  {
    sub_29DEC0CB4(v41);
  }

  sub_29E2C04B4();
  v20 = sub_29E2C0504();
  v21 = sub_29E2C3A34();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v41[0] = v23;
    *v22 = 136446210;
    v24 = sub_29E2C4AE4();
    v26 = sub_29DFAA104(v24, v25, v41);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_29DE74000, v20, v21, "[%{public}s] Error grabbing name for Cycle Chart PDF: Could not get property list values", v22, 0xCu);
    sub_29DE93B3C(v23);
    MEMORY[0x29ED82140](v23, -1, -1);
    MEMORY[0x29ED82140](v22, -1, -1);
  }

  (*(v1 + 8))(v4, v38);
  return 0;
}

void sub_29E16D40C()
{
  if (!qword_2A181E078)
  {
    v0 = sub_29E2C3234();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E078);
    }
  }
}

unint64_t sub_29E16D470()
{
  result = qword_2A1A61D20;
  if (!qword_2A1A61D20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A61D20);
  }

  return result;
}

void sub_29E16D524(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E16D588(uint64_t a1)
{
  v2 = sub_29E2C0B44();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_29DE9408C(0, &qword_2A1819BB0);
    return sub_29E2C3F34();
  }

  else
  {
    v7 = swift_projectBox();
    sub_29DE9408C(0, &qword_2A1819BB0);
    swift_beginAccess();
    (*(v3 + 16))(v5, v7, v2);
    v8 = sub_29E2C3F34();
    (*(v3 + 8))(v5, v2);
    return v8;
  }
}

void sub_29E16D788()
{
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2C3384();
  v5 = *(v4 - 8);
  v51 = v4;
  v52 = v5;
  MEMORY[0x2A1C7C4A8](v4);
  v50 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x2A1C7C4A8](v7).n128_u64[0];
  v10 = &v48 - v9;
  v11 = [v0 collectionView];
  if (!v11)
  {
    __break(1u);
    goto LABEL_14;
  }

  v12 = v11;
  type metadata accessor for HistoricalSampleCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = sub_29E2C33A4();
  [v12 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v14];

  v15 = [v0 collectionView];
  if (!v15)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = v15;
  type metadata accessor for CycleFactorsNoneCollectionViewCell();
  v17 = swift_getObjCClassFromMetadata();
  v18 = sub_29E2C33A4();
  [v16 registerClass:v17 forCellWithReuseIdentifier:v18];

  v19 = [v0 collectionView];
  if (!v19)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20 = v19;
  type metadata accessor for CycleFactorsShowAllFactorsCollectionViewCell();
  v21 = swift_getObjCClassFromMetadata();
  v22 = sub_29E2C33A4();
  [v20 registerClass:v21 forCellWithReuseIdentifier:v22];

  v23 = [v0 collectionView];
  if (!v23)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v24 = v23;
  type metadata accessor for HistoryListHeaderView();
  v25 = swift_getObjCClassFromMetadata();
  v26 = *MEMORY[0x29EDC8048];
  v27 = sub_29E2C33A4();
  [v24 registerClass:v25 forSupplementaryViewOfKind:v26 withReuseIdentifier:v27];

  v28 = [v0 collectionView];
  if (!v28)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v29 = v28;
  [v28 setAllowsSelection_];

  v30 = [v0 collectionView];
  v31 = v50;
  if (!v30)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v32 = v30;
  v33 = [objc_opt_self() systemGroupedBackgroundColor];
  [v32 setBackgroundColor_];

  v34 = [v0 collectionView];
  if (!v34)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v35 = v34;
  v36 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46CycleFactorsDaySummaryCollectionViewController_collectionViewSource;
  [v34 setDataSource_];

  v37 = [v0 collectionView];
  if (!v37)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v38 = v37;
  [v37 setDelegate_];

  v39 = [v0 collectionView];
  if (!v39)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v40 = v39;
  [v39 setPreservesSuperviewLayoutMargins_];

  sub_29E2C3314();
  v49 = *(v52 + 16);
  v49(v31, v10, v51);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v41 = qword_2A1A67F80;
  sub_29E2BCC74();
  v42 = v41;
  sub_29E2C3414();
  v48 = v3;
  v43 = v51;
  v52 = *(v52 + 8);
  (v52)(v10, v51);
  v44 = sub_29E2C33A4();

  [v0 setTitle_];

  v45 = [objc_allocWithZone(MEMORY[0x29EDC7940]) initWithBarButtonSystemItem:4 target:v0 action:sel_pushAddFactorView];
  sub_29E2C3314();
  v49(v31, v10, v43);
  sub_29E2BCC74();
  sub_29E2C3414();
  (v52)(v10, v43);
  v46 = sub_29E2C33A4();

  [v45 setTitle_];

  v47 = [v0 navigationItem];
  [v47 setRightBarButtonItem_];
}

void sub_29E16DDFC()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    if (qword_2A1A60ED8 != -1)
    {
      swift_once();
    }

    sub_29E2BF404();
    MEMORY[0x29ED7FCC0](0x5673726F74636146, 0xEB00000000776569);
    v3 = sub_29E2C33A4();

    [v2 setAccessibilityIdentifier_];

    v4 = [v0 navigationItem];
    v5 = [v4 rightBarButtonItem];

    if (v5)
    {
      sub_29E2BF404();
      MEMORY[0x29ED7FCC0](0xD000000000000011, 0x800000029E301540);
      v6 = sub_29E2C33A4();

      [v5 setAccessibilityIdentifier_];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_29E16E024()
{
  v1 = v0;
  sub_29DEB3B00(0);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36CycleFactorsCollectionViewController_providedHealthStore];
  sub_29E2C3194();
  v6 = sub_29E2BCBB4();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  v7 = objc_allocWithZone(type metadata accessor for AddCycleFactorTableViewController());
  sub_29E1FA8F8(v5, v4);
  v9 = v8;
  *(v8 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_launchSource) = v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36CycleFactorsCollectionViewController_launchSource];
  v10 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
  [v1 presentViewController:v10 animated:1 completion:0];
}

void sub_29E16E1E0(void *a1)
{
  v3 = type metadata accessor for CycleDay();
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46CycleFactorsDaySummaryCollectionViewController_collectionViewSource);
  if (v6)
  {
    v7 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46CycleFactorsDaySummaryCollectionViewController_cycleDay;
    v8 = sub_29E2C31A4();
    (*(*(v8 - 8) + 16))(v5, v1 + v7, v8);
    v9 = v6;
    *&v5[*(v3 + 20)] = [a1 dayViewModelAtIndex_];
    v10 = &v9[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsDaySummaryCollectionViewSource_cycleDay];
    swift_beginAccess();
    sub_29E16EB40(v5, v10);
    swift_endAccess();
    v11 = [*(v10 + *(v3 + 20)) cycleFactors];
    if (v11)
    {
      v12 = v11;
      sub_29DE9408C(0, &qword_2A1A61D50);
      v13 = sub_29E2C3614();
    }

    else
    {
      v13 = MEMORY[0x29EDCA190];
    }

    v14 = *&v9[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsDaySummaryCollectionViewSource_cycleFactors];
    *&v9[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsDaySummaryCollectionViewSource_cycleFactors] = v13;
    sub_29DEEB6F4(v14);

    sub_29E029468(v5);
  }

  else
  {
    __break(1u);
  }
}

void sub_29E16E420()
{

  sub_29E029468(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46CycleFactorsDaySummaryCollectionViewController_cycleDay);
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46CycleFactorsDaySummaryCollectionViewController_gregorianCalendar;
  v2 = sub_29E2BCEA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46CycleFactorsDaySummaryCollectionViewController_collectionViewSource);
}

uint64_t type metadata accessor for CycleFactorsDaySummaryCollectionViewController()
{
  result = qword_2A181E0E0;
  if (!qword_2A181E0E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E16E628()
{
  result = type metadata accessor for CycleDay();
  if (v1 <= 0x3F)
  {
    result = sub_29E2BCEA4();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t sub_29E16E7B8()
{
  result = qword_2A181E0F0;
  if (!qword_2A181E0F0)
  {
    sub_29E16E810();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181E0F0);
  }

  return result;
}

void sub_29E16E810()
{
  if (!qword_2A181E0F8)
  {
    v0 = sub_29E2C3684();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E0F8);
    }
  }
}

unint64_t sub_29E16E874()
{
  result = qword_2A181E100;
  if (!qword_2A181E100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181E100);
  }

  return result;
}

void sub_29E16E8C8()
{
  v1 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36CycleFactorsCollectionViewController_analysisProvider];
  v2 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46CycleFactorsDaySummaryCollectionViewController_ongoingCycleFactors];
  v3 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46CycleFactorsDaySummaryCollectionViewController_featureSettings];
  v4 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46CycleFactorsDaySummaryCollectionViewController_deviationsFeatureStatus];
  sub_29DE9DC34(&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36CycleFactorsCollectionViewController_healthExperienceStore], v11);
  v5 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36CycleFactorsCollectionViewController_pregnancyModelProvider];
  v6 = objc_allocWithZone(type metadata accessor for CycleFactorsHistoryCollectionViewController());
  swift_getObjectType();
  v7 = v1;
  sub_29E2BF404();

  swift_unknownObjectRetain();
  v8 = sub_29E259890(v7, v2, v3, v4, v11, v5, v6);
  v8[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36CycleFactorsCollectionViewController_launchSource] = 1;
  v9 = [v0 navigationController];
  if (v9)
  {
    v10 = v9;
    [v9 pushViewController:v8 animated:1];
  }
}

uint64_t sub_29E16EA1C(void *a1)
{
  v2 = v1;

  v4 = [a1 ongoingCycleFactors];
  sub_29DE9408C(0, &qword_2A1A61D50);
  v5 = sub_29E2C3614();

  sub_29E066198(v5);

  v6 = [a1 ongoingCycleFactors];
  v7 = sub_29E2C3614();

  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46CycleFactorsDaySummaryCollectionViewController_ongoingCycleFactors] = v7;

  sub_29E0665D0(v2);
}

uint64_t sub_29E16EB40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CycleDay();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E16EBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 64) = a4;
  *(v6 + 72) = v5;
  *(v6 + 384) = a5;
  *(v6 + 48) = a2;
  *(v6 + 56) = a3;
  *(v6 + 40) = a1;
  *(v6 + 80) = *v5;
  v7 = sub_29E2BD984();
  *(v6 + 88) = v7;
  *(v6 + 96) = *(v7 - 8);
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();
  sub_29E17167C();
  *(v6 + 120) = swift_task_alloc();
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  v8 = sub_29E2BD3D4();
  *(v6 + 144) = v8;
  *(v6 + 152) = *(v8 - 8);
  *(v6 + 160) = swift_task_alloc();
  v9 = sub_29E2BD704();
  *(v6 + 168) = v9;
  v10 = *(v9 - 8);
  *(v6 + 176) = v10;
  *(v6 + 184) = *(v10 + 64);
  *(v6 + 192) = swift_task_alloc();
  v11 = sub_29E2C0514();
  *(v6 + 200) = v11;
  *(v6 + 208) = *(v11 - 8);
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = swift_task_alloc();
  *(v6 + 232) = swift_task_alloc();
  *(v6 + 240) = swift_task_alloc();
  *(v6 + 248) = swift_task_alloc();
  *(v6 + 256) = swift_task_alloc();
  v12 = sub_29E2BCC24();
  *(v6 + 264) = v12;
  *(v6 + 272) = *(v12 - 8);
  *(v6 + 280) = swift_task_alloc();
  *(v6 + 288) = swift_task_alloc();
  v13 = sub_29E2BCEA4();
  *(v6 + 296) = v13;
  v14 = *(v13 - 8);
  *(v6 + 304) = v14;
  *(v6 + 312) = *(v14 + 64);
  *(v6 + 320) = swift_task_alloc();
  *(v6 + 328) = swift_task_alloc();
  v15 = sub_29E2BD3E4();
  *(v6 + 336) = v15;
  *(v6 + 344) = *(v15 - 8);
  *(v6 + 352) = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29E16EF74, 0, 0);
}

id sub_29E16EF74()
{
  v99 = v0;
  v1 = sub_29E2C3954();
  v2 = sub_29E2BD274();
  v3 = sub_29E2BD264();

  if (v3)
  {
    goto LABEL_5;
  }

  v4 = sub_29E2BD754();
  v6 = v5;
  v7 = objc_allocWithZone(MEMORY[0x29EDC44E8]);
  v8 = sub_29E2BC914();
  sub_29DEB5BF8(v4, v6);
  v9 = [v7 initWithData_];

  if (!v9)
  {
    goto LABEL_5;
  }

  result = [v9 projectionKind];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v11 = sub_29E17ABE4(result);
  *(v0 + 385) = v11;

  if (v11 == 2)
  {
LABEL_5:
    sub_29E2C04B4();
    v12 = sub_29E2C0504();
    v13 = sub_29E2C3A14();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 224);
    v16 = *(v0 + 200);
    v17 = *(v0 + 208);
    if (v14)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v98 = v19;
      *v18 = 136446210;
      v20 = sub_29E2C4AE4();
      v22 = sub_29DFAA104(v20, v21, &v98);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_29DE74000, v12, v13, "[%{public}s] Removing notifications for shared highlights is for a non-primary profile with a valid projection.", v18, 0xCu);
      sub_29DE93B3C(v19);
      MEMORY[0x29ED82140](v19, -1, -1);
      MEMORY[0x29ED82140](v18, -1, -1);
    }

    (*(v17 + 8))(v15, v16);

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    v24 = *(v0 + 56);
    sub_29E2BD384();
    v25 = [v24 profileIdentifier];
    v26 = sub_29E2BD754();
    v28 = v27;
    v29 = objc_allocWithZone(MEMORY[0x29EDC44E8]);
    v30 = sub_29E2BC914();
    sub_29DEB5BF8(v26, v28);
    v31 = [v29 initWithData_];

    if (v31)
    {
      v32 = [v31 projection];
      if (v32)
      {
        v33 = v32;
        sub_29DFF9A48();
        v34 = sub_29E17A408(v33);
      }

      else
      {
        v34 = 0;
      }
    }

    else
    {
      v34 = 0;
    }

    v35 = *(v0 + 288);
    v36 = *(v0 + 384);
    v37 = [objc_allocWithZone(sub_29E2BDEB4()) init];
    v38 = [v37 currentCalendar];

    sub_29E2BCDC4();
    v39 = [v25 identifier];
    sub_29E2BCC04();

    v40 = v11 & 1;
    v41 = sub_29DFE6598(v35, v11 & 1);
    v43 = v42;
    if (v36 == 1)
    {
      if (v34)
      {
        v96 = v25;
        v45 = *(v0 + 304);
        v44 = *(v0 + 312);
        v89 = *(v0 + 296);
        v90 = *(v0 + 320);
        v46 = *(v0 + 192);
        v92 = v46;
        v93 = v34;
        v47 = *(v0 + 168);
        v48 = *(v0 + 176);
        v91 = v47;
        v94 = *(v0 + 160);
        v49 = *(v0 + 64);
        (*(v45 + 16))();
        (*(v48 + 16))(v46, v49, v47);
        v50 = (*(v45 + 80) + 40) & ~*(v45 + 80);
        v51 = (v44 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
        v95 = v43;
        v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
        v53 = (*(v48 + 80) + v52 + 16) & ~*(v48 + 80);
        v54 = swift_allocObject();
        *(v54 + 2) = v96;
        *(v54 + 3) = v41;
        *(v54 + 4) = v95;
        (*(v45 + 32))(&v54[v50], v90, v89);
        v55 = &v54[v51];
        *v55 = sub_29DFE6594;
        v55[1] = 0;
        v56 = &v54[v52];
        *v56 = v40;
        *(v56 + 1) = v93;
        (*(v48 + 32))(&v54[v53], v92, v91);
        v57 = v93;
        v58 = v96;
        sub_29E2BF404();
        sub_29DFE6800(v94);
        sub_29E2BD3B4();

        v59 = v58;
      }

      else
      {
        sub_29E2C04B4();
        v68 = sub_29E2C0504();
        v69 = sub_29E2C3A34();
        v70 = os_log_type_enabled(v68, v69);
        v71 = *(v0 + 248);
        v73 = *(v0 + 200);
        v72 = *(v0 + 208);
        if (v70)
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v98 = v75;
          *v74 = 136446210;
          *(v74 + 4) = sub_29DFAA104(0xD000000000000021, 0x800000029E2F82F0, &v98);
          _os_log_impl(&dword_29DE74000, v68, v69, "[%{public}s] Removing notification: no schedule", v74, 0xCu);
          sub_29DE93B3C(v75);
          MEMORY[0x29ED82140](v75, -1, -1);
          MEMORY[0x29ED82140](v74, -1, -1);
        }

        (*(v72 + 8))(v71, v73);
        (*(*(v0 + 152) + 104))(*(v0 + 160), *MEMORY[0x29EDC3810], *(v0 + 144));
        sub_29E2BD3B4();
        v59 = v25;
      }
    }

    else
    {
      sub_29E2C04B4();
      v60 = sub_29E2C0504();
      v61 = sub_29E2C3A34();
      v62 = os_log_type_enabled(v60, v61);
      v63 = *(v0 + 256);
      v65 = *(v0 + 200);
      v64 = *(v0 + 208);
      if (v62)
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v98 = v67;
        *v66 = 136446210;
        *(v66 + 4) = sub_29DFAA104(0xD000000000000021, 0x800000029E2F82F0, &v98);
        _os_log_impl(&dword_29DE74000, v60, v61, "[%{public}s] Removing notification: update notifications off", v66, 0xCu);
        sub_29DE93B3C(v67);
        MEMORY[0x29ED82140](v67, -1, -1);
        MEMORY[0x29ED82140](v66, -1, -1);
      }

      (*(v64 + 8))(v63, v65);
      (*(*(v0 + 152) + 104))(*(v0 + 160), *MEMORY[0x29EDC3810], *(v0 + 144));
      sub_29E2BD3B4();

      v59 = v34;
    }

    v76 = *(v0 + 328);
    v78 = *(v0 + 296);
    v77 = *(v0 + 304);
    v79 = *(v0 + 288);
    v80 = *(v0 + 264);
    v81 = *(v0 + 272);
    v82 = *(v0 + 136);
    v83 = *(v0 + 88);
    v84 = *(v0 + 96);

    v85 = *(v81 + 8);
    *(v0 + 360) = v85;
    v85(v79, v80);
    (*(v77 + 8))(v76, v78);
    (*(v84 + 56))(v82, 1, 1, v83);
    v97 = (*MEMORY[0x29EDC3668] + MEMORY[0x29EDC3668]);
    v86 = swift_task_alloc();
    *(v0 + 368) = v86;
    *v86 = v0;
    v86[1] = sub_29E16F964;
    v87 = *(v0 + 352);
    v88 = *(v0 + 128);

    return v97(v88, v87);
  }
}

uint64_t sub_29E16F964()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_29E170240;
  }

  else
  {
    v2 = sub_29E16FA78;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29E16FA78()
{
  v88 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  sub_29E171738(v2);
  sub_29E171794(v1, v2);
  v3 = *(v0 + 120);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  sub_29E1716D4(*(v0 + 136), v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    v7 = *(v0 + 344);
    v6 = *(v0 + 352);
    v8 = *(v0 + 336);
    v9 = *(v0 + 120);
    sub_29E171738(*(v0 + 136));
    (*(v7 + 8))(v6, v8);
    sub_29E171738(v9);
    goto LABEL_16;
  }

  (*(*(v0 + 96) + 32))(*(v0 + 112), *(v0 + 120), *(v0 + 88));
  v10 = sub_29E2BD754();
  v12 = v11;
  v13 = objc_allocWithZone(MEMORY[0x29EDC44E8]);
  v14 = sub_29E2BC914();
  sub_29DEB5BF8(v10, v12);
  v15 = [v13 initWithData_];

  if (v15)
  {
    v16 = [v15 projection];
    if (v16)
    {
      v17 = v16;
      sub_29DFF9A48();
      v18 = sub_29E17A408(v17);

      if (v18)
      {
        v20 = *(v0 + 152);
        v19 = *(v0 + 160);
        v21 = *(v0 + 144);
        sub_29DFE6800(v19);

        sub_29E2BD3C4();
        (*(v20 + 8))(v19, v21);
      }
    }

    else
    {
    }
  }

  v23 = *(v0 + 104);
  v22 = *(v0 + 112);
  v25 = *(v0 + 88);
  v24 = *(v0 + 96);
  v26 = sub_29E2BD964();

  sub_29E2C04B4();
  (*(v24 + 16))(v23, v22, v25);
  v27 = sub_29E2C0504();
  v28 = sub_29E2C39F4();
  v29 = os_log_type_enabled(v27, v28);
  v30 = *(v0 + 240);
  v31 = *(v0 + 200);
  v32 = *(v0 + 208);
  v34 = *(v0 + 96);
  v33 = *(v0 + 104);
  v35 = *(v0 + 88);
  if (!v29)
  {

    v86 = *(v34 + 8);
    v86(v33, v35);
    v44 = *(v32 + 8);
    v44(v30, v31);
    if ((v26 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_12:
    v49 = *(v0 + 360);
    v50 = *(v0 + 385);
    v51 = *(v0 + 280);
    v52 = *(v0 + 264);
    v53 = [*(v0 + 56) profileIdentifier];
    v54 = [v53 identifier];

    sub_29E2BCC04();
    v85 = sub_29DFE6598(v51, v50 & 1);
    v56 = v55;
    v49(v51, v52);
    sub_29E2C04B4();
    sub_29E2BF404();
    v57 = sub_29E2C0504();
    v58 = sub_29E2C3A34();
    v83 = v56;

    v59 = os_log_type_enabled(v57, v58);
    v60 = *(v0 + 232);
    v61 = *(v0 + 200);
    if (v59)
    {
      v81 = v44;
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v87 = v63;
      *v62 = 136446466;
      v64 = sub_29E2C4AE4();
      v66 = sub_29DFAA104(v64, v65, &v87);

      *(v62 + 4) = v66;
      *(v62 + 12) = 2080;
      *(v0 + 16) = v85;
      *(v0 + 24) = v83;
      sub_29E2BF404();
      v67 = sub_29E2C3464();
      v69 = sub_29DFAA104(v67, v68, &v87);

      *(v62 + 14) = v69;
      _os_log_impl(&dword_29DE74000, v57, v58, "%{public}s Removing any notifications that may have been delivered: %s", v62, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v63, -1, -1);
      MEMORY[0x29ED82140](v62, -1, -1);

      v81(v60, v61);
    }

    else
    {

      v44(v60, v61);
    }

    v71 = *(v0 + 344);
    v70 = *(v0 + 352);
    v72 = *(v0 + 336);
    v73 = *(v0 + 136);
    v74 = *(v0 + 112);
    v75 = *(v0 + 88);
    sub_29DFF9A94();
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_29E2CAB20;
    *(v76 + 32) = v85;
    *(v76 + 40) = v83;
    sub_29E2BD1A4();
    sub_29E2BD904();

    v86(v74, v75);
    sub_29E171738(v73);
    (*(v71 + 8))(v70, v72);
    goto LABEL_16;
  }

  v84 = *(v0 + 240);
  v79 = v26;
  v36 = swift_slowAlloc();
  v80 = swift_slowAlloc();
  v87 = v80;
  *v36 = 136446722;
  v37 = sub_29E2C4AE4();
  v82 = v31;
  v39 = sub_29DFAA104(v37, v38, &v87);

  *(v36 + 4) = v39;
  *(v36 + 12) = 2080;
  v40 = sub_29E2BD974();
  v42 = v41;
  v86 = *(v34 + 8);
  v86(v33, v35);
  v43 = sub_29DFAA104(v40, v42, &v87);

  *(v36 + 14) = v43;
  *(v36 + 22) = 1024;
  *(v36 + 24) = v79 & 1;
  _os_log_impl(&dword_29DE74000, v27, v28, "%{public}s Should remove notifications for %s: %{BOOL}d", v36, 0x1Cu);
  swift_arrayDestroy();
  MEMORY[0x29ED82140](v80, -1, -1);
  MEMORY[0x29ED82140](v36, -1, -1);

  v44 = *(v32 + 8);
  v44(v84, v82);
  if (v79)
  {
    goto LABEL_12;
  }

LABEL_10:
  v46 = *(v0 + 344);
  v45 = *(v0 + 352);
  v47 = *(v0 + 336);
  v48 = *(v0 + 136);
  v86(*(v0 + 112), *(v0 + 88));
  sub_29E171738(v48);
  (*(v46 + 8))(v45, v47);
LABEL_16:

  v77 = *(v0 + 8);

  return v77();
}

uint64_t sub_29E170240()
{
  v106 = v0;
  v1 = *(v0 + 376);
  sub_29E2C04B4();
  v2 = v1;
  v3 = sub_29E2C0504();
  v4 = sub_29E2C3A14();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 376);
    v6 = *(v0 + 208);
    v103 = *(v0 + 216);
    v7 = *(v0 + 200);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v105 = v9;
    *v8 = 136446466;
    v10 = sub_29E2C4AE4();
    v12 = sub_29DFAA104(v10, v11, &v105);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    *(v0 + 32) = v5;
    v13 = v5;
    sub_29DE96670();
    v14 = sub_29E2C3434();
    v16 = sub_29DFAA104(v14, v15, &v105);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_29DE74000, v3, v4, "[%{public}s] Error getting content state: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v9, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);

    (*(v6 + 8))(v103, v7);
  }

  else
  {
    v18 = *(v0 + 208);
    v17 = *(v0 + 216);
    v19 = *(v0 + 200);

    (*(v18 + 8))(v17, v19);
  }

  v20 = *(v0 + 120);
  v21 = *(v0 + 88);
  v22 = *(v0 + 96);
  sub_29E1716D4(*(v0 + 136), v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    v24 = *(v0 + 344);
    v23 = *(v0 + 352);
    v25 = *(v0 + 336);
    v26 = *(v0 + 120);
    sub_29E171738(*(v0 + 136));
    (*(v24 + 8))(v23, v25);
    sub_29E171738(v26);
    goto LABEL_19;
  }

  (*(*(v0 + 96) + 32))(*(v0 + 112), *(v0 + 120), *(v0 + 88));
  v27 = sub_29E2BD754();
  v29 = v28;
  v30 = objc_allocWithZone(MEMORY[0x29EDC44E8]);
  v31 = sub_29E2BC914();
  sub_29DEB5BF8(v27, v29);
  v32 = [v30 initWithData_];

  if (v32)
  {
    v33 = [v32 projection];
    if (v33)
    {
      v34 = v33;
      sub_29DFF9A48();
      v35 = sub_29E17A408(v34);

      if (v35)
      {
        v37 = *(v0 + 152);
        v36 = *(v0 + 160);
        v38 = *(v0 + 144);
        sub_29DFE6800(v36);

        sub_29E2BD3C4();
        (*(v37 + 8))(v36, v38);
      }
    }

    else
    {
    }
  }

  v40 = *(v0 + 104);
  v39 = *(v0 + 112);
  v42 = *(v0 + 88);
  v41 = *(v0 + 96);
  v43 = sub_29E2BD964();

  sub_29E2C04B4();
  (*(v41 + 16))(v40, v39, v42);
  v44 = sub_29E2C0504();
  v45 = sub_29E2C39F4();
  v46 = os_log_type_enabled(v44, v45);
  v47 = *(v0 + 240);
  v48 = *(v0 + 200);
  v49 = *(v0 + 208);
  v51 = *(v0 + 96);
  v50 = *(v0 + 104);
  v52 = *(v0 + 88);
  if (!v46)
  {

    v104 = *(v51 + 8);
    v104(v50, v52);
    v61 = *(v49 + 8);
    v61(v47, v48);
    if ((v43 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_15:
    v66 = *(v0 + 360);
    v67 = *(v0 + 385);
    v68 = *(v0 + 280);
    v69 = *(v0 + 264);
    v70 = [*(v0 + 56) profileIdentifier];
    v71 = [v70 identifier];

    sub_29E2BCC04();
    v102 = sub_29DFE6598(v68, v67 & 1);
    v73 = v72;
    v66(v68, v69);
    sub_29E2C04B4();
    sub_29E2BF404();
    v74 = sub_29E2C0504();
    v75 = sub_29E2C3A34();
    v100 = v73;

    v76 = os_log_type_enabled(v74, v75);
    v77 = *(v0 + 232);
    v78 = *(v0 + 200);
    if (v76)
    {
      v98 = v61;
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v105 = v80;
      *v79 = 136446466;
      v81 = sub_29E2C4AE4();
      v83 = sub_29DFAA104(v81, v82, &v105);

      *(v79 + 4) = v83;
      *(v79 + 12) = 2080;
      *(v0 + 16) = v102;
      *(v0 + 24) = v100;
      sub_29E2BF404();
      v84 = sub_29E2C3464();
      v86 = sub_29DFAA104(v84, v85, &v105);

      *(v79 + 14) = v86;
      _os_log_impl(&dword_29DE74000, v74, v75, "%{public}s Removing any notifications that may have been delivered: %s", v79, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v80, -1, -1);
      MEMORY[0x29ED82140](v79, -1, -1);

      v98(v77, v78);
    }

    else
    {

      v61(v77, v78);
    }

    v88 = *(v0 + 344);
    v87 = *(v0 + 352);
    v89 = *(v0 + 336);
    v90 = *(v0 + 136);
    v91 = *(v0 + 112);
    v92 = *(v0 + 88);
    sub_29DFF9A94();
    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_29E2CAB20;
    *(v93 + 32) = v102;
    *(v93 + 40) = v100;
    sub_29E2BD1A4();
    sub_29E2BD904();

    v104(v91, v92);
    sub_29E171738(v90);
    (*(v88 + 8))(v87, v89);
    goto LABEL_19;
  }

  v101 = *(v0 + 240);
  v96 = v43;
  v53 = swift_slowAlloc();
  v97 = swift_slowAlloc();
  v105 = v97;
  *v53 = 136446722;
  v54 = sub_29E2C4AE4();
  v99 = v48;
  v56 = sub_29DFAA104(v54, v55, &v105);

  *(v53 + 4) = v56;
  *(v53 + 12) = 2080;
  v57 = sub_29E2BD974();
  v59 = v58;
  v104 = *(v51 + 8);
  v104(v50, v52);
  v60 = sub_29DFAA104(v57, v59, &v105);

  *(v53 + 14) = v60;
  *(v53 + 22) = 1024;
  *(v53 + 24) = v96 & 1;
  _os_log_impl(&dword_29DE74000, v44, v45, "%{public}s Should remove notifications for %s: %{BOOL}d", v53, 0x1Cu);
  swift_arrayDestroy();
  MEMORY[0x29ED82140](v97, -1, -1);
  MEMORY[0x29ED82140](v53, -1, -1);

  v61 = *(v49 + 8);
  v61(v101, v99);
  if (v96)
  {
    goto LABEL_15;
  }

LABEL_13:
  v63 = *(v0 + 344);
  v62 = *(v0 + 352);
  v64 = *(v0 + 336);
  v65 = *(v0 + 136);
  v104(*(v0 + 112), *(v0 + 88));
  sub_29E171738(v65);
  (*(v63 + 8))(v62, v64);
LABEL_19:

  v94 = *(v0 + 8);

  return v94();
}

void sub_29E170B94(uint64_t a1, void *a2, void *a3, uint64_t a4, int a5)
{
  v6 = v5;
  LODWORD(v100) = a5;
  v90 = a4;
  v99 = a2;
  v8 = sub_29E2BD3D4();
  v95 = *(v8 - 8);
  v96 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v105 = (&v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v94 = sub_29E2BD704();
  v91 = *(v94 - 8);
  v10 = *(v91 + 64);
  MEMORY[0x2A1C7C4A8](v94);
  v93 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E2C0514();
  v97 = *(v11 - 8);
  v98 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v89 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v92 = &v83 - v14;
  v15 = sub_29E2BCC24();
  v103 = *(v15 - 8);
  v104 = v15;
  MEMORY[0x2A1C7C4A8](v15);
  v108 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_29E2BCEA4();
  v107 = *(v109 - 8);
  v17 = *(v107 + 64);
  MEMORY[0x2A1C7C4A8](v109);
  v18 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v110 = &v83 - v20;
  v21 = sub_29E2BD3E4();
  v101 = *(v21 - 8);
  v102 = v21;
  MEMORY[0x2A1C7C4A8](v21);
  v106 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_29E2C3954();
  v24 = sub_29E2BD274();
  v25 = sub_29E2BD264();

  if ((v25 & 1) == 0)
  {
    v26 = sub_29E2BD754();
    v28 = v27;
    v29 = objc_allocWithZone(MEMORY[0x29EDC44E8]);
    v30 = sub_29E2BC914();
    v88 = v6;
    v31 = v30;
    sub_29DEB5BF8(v26, v28);
    v32 = [v29 initWithData_];

    if (v32)
    {
      v33 = [v32 projectionKind];
      if (v33)
      {
        v34 = sub_29E17ABE4(v33);

        if (v34 != 2)
        {
          v35 = v34;
          v85 = sub_29E2BD384();
          v86 = v36;
          v99 = [a3 profileIdentifier];
          v37 = sub_29E2BD754();
          v39 = v38;
          v40 = objc_allocWithZone(MEMORY[0x29EDC44E8]);
          v41 = sub_29E2BC914();
          sub_29DEB5BF8(v37, v39);
          v42 = [v40 initWithData_];

          if (v42)
          {
            v43 = [v42 projection];
            if (v43)
            {
              v44 = v43;
              sub_29DFF9A48();
              v45 = sub_29E17A408(v44);
            }

            else
            {
              v45 = 0;
            }

            v46 = v108;
            v47 = v99;
          }

          else
          {
            v45 = 0;
            v46 = v108;
            v47 = v99;
          }

          v48 = [objc_allocWithZone(sub_29E2BDEB4()) init];
          v49 = [v48 currentCalendar];

          sub_29E2BCDC4();
          v50 = [v47 identifier];
          sub_29E2BCC04();

          v51 = v35 & 1;
          v87 = sub_29DFE6598(v46, v35 & 1);
          v84 = v52;
          if (v100)
          {
            if (v45)
            {
              v53 = v107;
              (*(v107 + 16))(v18, v110, v109);
              v100 = v45;
              v54 = v91;
              (*(v91 + 16))(v93, v90, v94);
              v55 = (*(v53 + 80) + 40) & ~*(v53 + 80);
              v56 = (v17 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
              v57 = (v56 + 23) & 0xFFFFFFFFFFFFFFF8;
              v58 = (*(v54 + 80) + v57 + 16) & ~*(v54 + 80);
              v59 = swift_allocObject();
              v60 = v47;
              v61 = v59;
              v59[2] = v60;
              v62 = v84;
              v59[3] = v87;
              v59[4] = v62;
              (*(v53 + 32))(v59 + v55, v18, v109);
              v63 = (v61 + v56);
              *v63 = sub_29DFE6594;
              v63[1] = 0;
              v64 = v61 + v57;
              *v64 = v51;
              v65 = v100;
              *(v64 + 1) = v100;
              v46 = v108;
              (*(v54 + 32))(v61 + v58, v93, v94);
              v66 = v65;
              v67 = v99;
              sub_29E2BF404();
              sub_29DFE6800(v105);
              v68 = v106;
              v47 = v67;
              sub_29E2BD3B4();
            }

            else
            {
              v76 = v89;
              sub_29E2C04B4();
              v77 = sub_29E2C0504();
              v78 = sub_29E2C3A34();
              if (os_log_type_enabled(v77, v78))
              {
                v79 = swift_slowAlloc();
                v80 = swift_slowAlloc();
                v111[0] = v80;
                *v79 = 136446210;
                *(v79 + 4) = sub_29DFAA104(0xD000000000000021, 0x800000029E2F82F0, v111);
                _os_log_impl(&dword_29DE74000, v77, v78, "[%{public}s] Removing notification: no schedule", v79, 0xCu);
                sub_29DE93B3C(v80);
                MEMORY[0x29ED82140](v80, -1, -1);
                v81 = v79;
                v47 = v99;
                MEMORY[0x29ED82140](v81, -1, -1);
              }

              (*(v97 + 8))(v76, v98);
              v68 = v106;
              (*(v95 + 104))(v105, *MEMORY[0x29EDC3810], v96);
              sub_29E2BD3B4();
            }
          }

          else
          {
            v69 = v45;
            v70 = v92;
            sub_29E2C04B4();
            v71 = sub_29E2C0504();
            v72 = sub_29E2C3A34();
            if (os_log_type_enabled(v71, v72))
            {
              v73 = swift_slowAlloc();
              v74 = swift_slowAlloc();
              v111[0] = v74;
              *v73 = 136446210;
              *(v73 + 4) = sub_29DFAA104(0xD000000000000021, 0x800000029E2F82F0, v111);
              _os_log_impl(&dword_29DE74000, v71, v72, "[%{public}s] Removing notification: update notifications off", v73, 0xCu);
              sub_29DE93B3C(v74);
              MEMORY[0x29ED82140](v74, -1, -1);
              v75 = v73;
              v47 = v99;
              MEMORY[0x29ED82140](v75, -1, -1);
            }

            (*(v97 + 8))(v70, v98);
            v68 = v106;
            (*(v95 + 104))(v105, *MEMORY[0x29EDC3810], v96);
            sub_29E2BD3B4();

            v47 = v69;
          }

          (*(v103 + 8))(v46, v104);
          (*(v107 + 8))(v110, v109);
          sub_29E2BD194();
          sub_29DE96670();
          v82 = v102;
          sub_29E2C1014();

          (*(v101 + 8))(v68, v82);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_29E17167C()
{
  if (!qword_2A1A61638)
  {
    sub_29E2BD984();
    v0 = sub_29E2C4304();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A61638);
    }
  }
}

uint64_t sub_29E1716D4(uint64_t a1, uint64_t a2)
{
  sub_29E17167C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E171738(uint64_t a1)
{
  sub_29E17167C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E171794(uint64_t a1, uint64_t a2)
{
  sub_29E17167C();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E1717FC()
{
  v1 = sub_29E2BCEA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_29E2BD704();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 16) & ~v8;
  v12 = *(v7 + 64);
  v10 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2A1C733A0](v0, v9 + v12, v10 | 7);
}

uint64_t sub_29E171990()
{
  v1 = *(sub_29E2BCEA4() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_29E2BD704() - 8);
  return sub_29DFE66D8(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), v0 + ((((v3 + 23) & 0xFFFFFFFFFFFFFFF8) + *(v4 + 80) + 16) & ~*(v4 + 80)));
}

uint64_t type metadata accessor for MenstrualCycles_SharingVersionMismatchTileView()
{
  result = qword_2A1A610D8;
  if (!qword_2A1A610D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E171B1C()
{
  v0 = sub_29E2BD254();
  MEMORY[0x29ED7FCC0](v0, v1);

  v3 = sub_29E2C3564();
  sub_29E2C34E4();

  return v3;
}

id sub_29E171C34(void *a1, double a2, double a3, double a4, double a5)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for MenstrualCycles_SharingVersionMismatchTileView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a2, a3, a4, a5);
}

id sub_29E171CA8(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for MenstrualCycles_SharingVersionMismatchTileView();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_29E171D24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MenstrualCycles_SharingVersionMismatchTileView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_29E171D64@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W3>, uint64_t a4@<X8>)
{
  v118 = a3;
  v121 = a2;
  v132 = a4;
  v5 = sub_29E2BD764();
  v130 = *(v5 - 8);
  v131 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v122 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  *&v126 = &v114 - v8;
  MEMORY[0x2A1C7C4A8](v9);
  v123 = &v114 - v10;
  v11 = sub_29E2C0514();
  v133 = *(v11 - 8);
  v134 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v127 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v124 = &v114 - v14;
  v117 = sub_29E2BF924();
  v116 = *(v117 - 8);
  MEMORY[0x2A1C7C4A8](v117);
  v115 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v16 - 8);
  v18 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v21 = &v114 - v20;
  v22 = MEMORY[0x29EDC9C68];
  sub_29E172C5C(0, &qword_2A1A616F0, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v23 - 8);
  v25 = &v114 - v24;
  sub_29E172C5C(0, &qword_2A1A62688, MEMORY[0x29EDC3980], v22);
  MEMORY[0x2A1C7C4A8](v26 - 8);
  v120 = &v114 - v27;
  v28 = sub_29E2BD234();
  v119 = *(v28 - 8);
  MEMORY[0x2A1C7C4A8](v28);
  v30 = &v114 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_29E2BD4C4();
  v128 = *(v31 - 8);
  v129 = v31;
  MEMORY[0x2A1C7C4A8](v31);
  v125 = &v114 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  v34 = sub_29E2BD754();
  v36 = v35;
  v37 = objc_allocWithZone(MEMORY[0x29EDC44E8]);
  v38 = sub_29E2BC914();
  sub_29DEB5BF8(v34, v36);
  v39 = [v37 initWithData_];

  if (!v39)
  {
LABEL_4:
    v42 = v127;
    sub_29E2C04B4();
    v44 = v130;
    v43 = v131;
    v45 = *(v130 + 16);
    v46 = v126;
    v45(v126, v33, v131);
    v47 = sub_29E2C0504();
    v48 = sub_29E2C3A14();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v136[0] = v125;
      *v49 = 136446466;
      *(v49 + 4) = sub_29DFAA104(0xD000000000000021, 0x800000029E2E1F30, v136);
      *(v49 + 12) = 2080;
      v45(v122, v46, v43);
      v50 = sub_29E2C3464();
      v52 = v51;
      (*(v44 + 8))(v46, v43);
      v53 = sub_29DFAA104(v50, v52, v136);

      *(v49 + 14) = v53;
      _os_log_impl(&dword_29DE74000, v47, v48, "[%{public}s] Unable to decode projectionKind from sharable model %s", v49, 0x16u);
      v54 = v125;
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v54, -1, -1);
      MEMORY[0x29ED82140](v49, -1, -1);
    }

    else
    {

      (*(v44 + 8))(v46, v43);
    }

    (*(v133 + 8))(v42, v134);
    return (*(v128 + 56))(v132, 1, 1, v129);
  }

  result = [v39 projectionKind];
  if (!result)
  {
    __break(1u);
    goto LABEL_27;
  }

  v41 = sub_29E17ABE4(result);

  if (v41 == 2)
  {
    goto LABEL_4;
  }

  v127 = v18;
  *&v126 = v21;
  v55 = v25;
  v56 = v121;
  v122 = sub_29E171B1C();
  type metadata accessor for SharedSummaryTileViewController();
  sub_29E2BF404();
  v114 = v33;
  sub_29E2BD754();
  (*(v119 + 104))(v30, *MEMORY[0x29EDC36E0], v28);
  v57 = v56;
  v58 = v125;
  sub_29E2BD294();
  sub_29E2BCBA4();
  sub_29E2BCBA4();
  sub_29E2BC374();
  v59 = sub_29E2BC3A4();
  (*(*(v59 - 8) + 56))(v55, 0, 1, v59);
  sub_29E2BD814();
  sub_29E2BD404();
  sub_29DF29A5C(v41 & 1);
  sub_29E2BD364();
  result = [objc_opt_self() categoryWithID_];
  if (!result)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v60 = result;

  sub_29E2BD2A4();
  v127 = v60;
  v61 = [v60 displayName];
  _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();

  sub_29E2BD434();
  sub_29DFF9A94();
  inited = swift_initStackObject();
  v126 = xmmword_29E2CAB20;
  *(inited + 16) = xmmword_29E2CAB20;
  *(inited + 32) = sub_29E2BD6D4();
  *(inited + 40) = v63;
  v64 = sub_29DE930AC(inited);
  swift_setDeallocating();
  sub_29DECE1D4(inited + 32);
  v136[8] = v64;
  v65 = v114;
  v66 = sub_29E2BD754();
  v68 = v67;
  v69 = objc_allocWithZone(MEMORY[0x29EDC44E8]);
  v70 = sub_29E2BC914();
  sub_29DEB5BF8(v66, v68);
  v71 = [v69 initWithData_];

  v73 = v130;
  v72 = v131;
  v74 = v123;
  if (!v71)
  {
    goto LABEL_14;
  }

  v75 = [v71 projection];
  if (!v75)
  {

    goto LABEL_14;
  }

  v76 = v75;
  sub_29DFF9A48();
  v77 = sub_29E17A408(v76);

  if (!v77)
  {
LABEL_14:
    v88 = sub_29E2BD6A4();
    v90 = v89;
    v86 = v88;
    v87 = v90;
    goto LABEL_15;
  }

  v78 = sub_29E2BD6B4();
  sub_29E146428(v136, v78, v79);

  v80 = v116;
  v81 = v115;
  v82 = v117;
  (*(v116 + 104))(v115, *MEMORY[0x29EDC2AD0], v117);
  v83 = sub_29E2BF914();
  v85 = v84;
  (*(v80 + 8))(v81, v82);
  v86 = v83;
  v87 = v85;
LABEL_15:
  sub_29E146428(v136, v86, v87);

  if (v118)
  {
    sub_29E146428(v136, 0xD00000000000001ALL, 0x800000029E303B50);
  }

  sub_29E2BD4A4();
  sub_29E172C5C(0, &qword_2A1A5E038, MEMORY[0x29EDC3828], MEMORY[0x29EDC9E90]);
  v91 = sub_29E2BD454();
  v92 = *(v91 - 8);
  v93 = (*(v92 + 80) + 32) & ~*(v92 + 80);
  v94 = swift_allocObject();
  *(v94 + 16) = v126;
  sub_29E2BD724();
  sub_29E2BD444();
  sub_29E14EFC0(v94);
  swift_setDeallocating();
  (*(v92 + 8))(v94 + v93, v91);
  swift_deallocClassInstance();
  sub_29E2BD484();
  v95 = v124;
  sub_29E2C04B4();
  (*(v73 + 16))(v74, v65, v72);
  v96 = sub_29E2C0504();
  v97 = sub_29E2C3A04();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v136[0] = v99;
    *v98 = 136446466;
    *(v98 + 4) = sub_29DFAA104(0xD000000000000021, 0x800000029E2E1F30, v136);
    *(v98 + 12) = 2080;
    v100 = sub_29E2BD754();
    v102 = v101;
    v103 = objc_allocWithZone(MEMORY[0x29EDC44E8]);
    v104 = sub_29E2BC914();
    sub_29DEB5BF8(v100, v102);
    v105 = [v103 initWithData_];

    if (v105)
    {
      v106 = [v105 projection];
      if (v106)
      {
        sub_29DFF9A48();
        v106 = sub_29E17A408(v106);
      }

      v58 = v125;
    }

    else
    {
      v106 = 0;
      v58 = v125;
    }

    v135 = v106;
    sub_29E172C5C(0, &qword_2A1A5E1F8, sub_29DFF9A48, MEMORY[0x29EDC9C68]);
    v107 = sub_29E2C3424();
    v109 = v108;
    (*(v73 + 8))(v123, v72);
    v110 = sub_29DFAA104(v107, v109, v136);

    *(v98 + 14) = v110;
    _os_log_impl(&dword_29DE74000, v96, v97, "[%{public}s] Appending summaryFeedItems with projection: %s", v98, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v99, -1, -1);
    MEMORY[0x29ED82140](v98, -1, -1);

    (*(v133 + 8))(v124, v134);
  }

  else
  {

    (*(v73 + 8))(v74, v72);
    (*(v133 + 8))(v95, v134);
  }

  v112 = v128;
  v111 = v129;
  v113 = v132;
  (*(v128 + 32))(v132, v58, v129);
  return (*(v112 + 56))(v113, 0, 1, v111);
}

void sub_29E172C5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E172CD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29E0CE990();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for CycleChartDay();
  (*(v6 + 16))(v8, a1 + *(v9 + 20), v5);
  result = (*(v6 + 88))(v8, v5);
  if (result == *MEMORY[0x29EDC4328])
  {
    result = (*(v6 + 96))(v8, v5);
    v11 = *v8;
  }

  else
  {
    if (result != *MEMORY[0x29EDC4330] && result != *MEMORY[0x29EDC4338] && result != *MEMORY[0x29EDC4320])
    {
      result = (*(v6 + 8))(v8, v5);
    }

    v11 = 2;
  }

  *a2 = v11;
  return result;
}

void sub_29E172E50(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = a1[3];
  v16 = a1[4];
  v7 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v8 = sub_29E2C3384();
  MEMORY[0x2A1C7C4A8](v8 - 8);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v9 = qword_2A1A67F80;
  v10 = sub_29E2C33A4();
  v11 = [objc_opt_self() colorNamed:v10 inBundle:v9 compatibleWithTraitCollection:0];

  if (v11)
  {
    KeyPath = swift_getKeyPath();
    sub_29E2C3394();
    sub_29E2BCC74();
    v13 = sub_29E2C3414();
    *a2 = v11;
    *(a2 + 8) = v3;
    *(a2 + 16) = v4;
    *(a2 + 24) = v5 & 1;
    *(a2 + 32) = v6;
    *(a2 + 40) = v16;
    *(a2 + 48) = KeyPath;
    *(a2 + 56) = v13;
    *(a2 + 64) = v14;
    *(a2 + 72) = xmmword_29E2CFE70;
    *(a2 + 88) = xmmword_29E2CFE70;
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0x404F000000000000;

    v15 = v16;
  }

  else
  {
    __break(1u);
  }
}

void sub_29E1730A0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v28 = a1[1];
  v29 = v4;
  v27 = *(a1 + 16);
  v5 = a1[3];
  v30 = a1[4];
  v6 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v7 = sub_29E2C3384();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v26[-v12];
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v14 = qword_2A1A67F80;
  v15 = sub_29E2C33A4();
  v16 = [objc_opt_self() colorNamed:v15 inBundle:v14 compatibleWithTraitCollection:0];

  if (v16)
  {
    KeyPath = swift_getKeyPath();
    sub_29E2C3314();
    (*(v8 + 16))(v10, v13, v7);
    sub_29E2BCC74();
    v18 = sub_29E2C3414();
    v20 = v19;
    (*(v8 + 8))(v13, v7);
    v21 = v27 & 1;
    v32 = v27 & 1;
    v22 = a1[4];
    v23 = v28;
    v24 = v29;
    *a2 = v16;
    *(a2 + 8) = v24;
    *(a2 + 16) = v23;
    *(a2 + 24) = v21;
    *(a2 + 25) = *v31;
    *(a2 + 28) = *&v31[3];
    *(a2 + 32) = v5;
    *(a2 + 40) = v30;
    *(a2 + 48) = KeyPath;
    *(a2 + 56) = v18;
    *(a2 + 64) = v20;
    *(a2 + 72) = xmmword_29E2CFE70;
    *(a2 + 88) = xmmword_29E2CFE70;
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0x404F000000000000;

    v25 = v22;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29E17339C(uint64_t a1)
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

uint64_t sub_29E1735D8(uint64_t a1)
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

uint64_t sub_29E173814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a1;
  v26 = a2;
  v24 = a3;
  v3 = sub_29E2BD564();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2BE194();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = sub_29E2BD274();
  sub_29E173DD0(0, &qword_2A1A61CE0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v11 = sub_29E2BD234();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_29E2CAB20;
  (*(v12 + 104))(v14 + v13, *MEMORY[0x29EDC3758], v11);
  sub_29E110B7C(v10);
  sub_29E2BE184();
  (*(v8 + 8))(v10, v7);
  (*(v4 + 104))(v6, *MEMORY[0x29EDC3898], v3);
  v15 = v24;
  sub_29E2BD574();
  v16 = type metadata accessor for OvulationConfirmationFailureTileGenerator(0);
  v17 = v16[5];
  v18 = sub_29E2BD624();
  v19 = *(v18 - 8);
  v20 = v25;
  (*(v19 + 16))(v15 + v17, v25, v18);
  sub_29E2BD5A4();
  sub_29DE966D4(v27, v27[3]);
  sub_29E2BD4E4();
  _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  sub_29E2BD9E4();
  swift_allocObject();
  v21 = sub_29E2BD9B4();
  (*(v19 + 8))(v20, v18);
  result = sub_29DE93B3C(v27);
  *(v15 + v16[6]) = v21;
  *(v15 + v16[7]) = v26;
  return result;
}

uint64_t sub_29E173BF8()
{
  result = sub_29E2BD594();
  if (v1 <= 0x3F)
  {
    result = sub_29E2BD624();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for OvulationConfirmationStateProvider();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_29E173D88(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E173DD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E173E34()
{
  sub_29E17656C();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E176718();
  v26 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1767AC();
  v11 = *(v10 - 8);
  v27 = v10;
  v28 = v11;
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OvulationConfirmationFailureTileGenerator(0);
  v15 = *(v14 + 24);
  v30 = *(*(v0 + *(v14 + 28)) + 80);
  v16 = *(v0 + v15);
  v17 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v19 = v18;

  v20 = sub_29DEB233C(v17, v19, v16);

  v29 = v20;
  sub_29E176664(0, &qword_2A1A5E708, type metadata accessor for OvulationConfirmationState);
  sub_29DEB53AC(0);
  sub_29E1766C8(&unk_2A1A5E710, &qword_2A1A5E708, type metadata accessor for OvulationConfirmationState);
  sub_29E173D88(&unk_2A1A5E600, sub_29DEB53AC);
  sub_29E2C0E54();
  sub_29E2BD5F4();
  sub_29E2C0E34();
  (*(v3 + 8))(v5, v2);
  type metadata accessor for OvulationConfirmationFailureTileGenerator.Change(0);
  sub_29E173D88(&qword_2A1A5E908, sub_29E176718);
  v21 = v26;
  sub_29E2C12A4();
  (*(v7 + 8))(v9, v21);
  sub_29E173D88(&qword_2A1A5EA90, sub_29E1767AC);
  v22 = v27;
  v23 = sub_29E2C1274();
  (*(v28 + 8))(v13, v22);
  return v23;
}

uint64_t sub_29E174204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29E176858();
  v5 = a1 + *(v4 + 48);
  v6 = *v5;
  v7 = *(v5 + 8);
  sub_29E1763A8(a1, a2, type metadata accessor for OvulationConfirmationState);
  result = type metadata accessor for OvulationConfirmationFailureTileGenerator.Change(0);
  v9 = a2 + *(result + 20);
  *v9 = v6;
  *(v9 + 8) = v7;
  return result;
}

char *sub_29E174280(uint64_t a1)
{
  v2 = sub_29E2BD4C4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF1D934(0);
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v20 - v11;
  sub_29E173DD0(0, &qword_2A1A5E030, sub_29DF1D934, MEMORY[0x29EDC9E90]);
  v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = swift_allocObject();
  sub_29E1745C0(a1, (v14 + v13));
  sub_29E1763A8(v14 + v13, v12, sub_29DF1D934);
  sub_29E176470(v12, v9, sub_29DF1D934);
  if ((*(v3 + 48))(v9, 1, v2) == 1)
  {
    sub_29E176410(v9, sub_29DF1D934);
    v15 = MEMORY[0x29EDCA190];
  }

  else
  {
    v16 = *(v3 + 32);
    v16(v5, v9, v2);
    v15 = MEMORY[0x29EDCA190];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_29E143AD8(0, *(v15 + 2) + 1, 1, v15);
    }

    v18 = *(v15 + 2);
    v17 = *(v15 + 3);
    if (v18 >= v17 >> 1)
    {
      v15 = sub_29E143AD8(v17 > 1, v18 + 1, 1, v15);
    }

    *(v15 + 2) = v18 + 1;
    v16(&v15[((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v18], v5, v2);
  }

  swift_setDeallocating();
  sub_29E176410(v14 + v13, sub_29DF1D934);
  swift_deallocClassInstance();
  return v15;
}

uint64_t sub_29E1745C0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_29E2C0514();
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v46 = &v44 - v8;
  sub_29DEDB904();
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEC65FC();
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v47 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29E2C31A4();
  v48 = *(v16 - 8);
  v49 = v16;
  MEMORY[0x2A1C7C4A8](v16);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for OvulationConfirmationState();
  MEMORY[0x2A1C7C4A8](v19);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1763A8(a1, v21, type metadata accessor for OvulationConfirmationState);
  if ((sub_29E0900A0() & 1) == 0)
  {
    sub_29E176410(v21, type metadata accessor for OvulationConfirmationState);
    v26 = sub_29E2BD4C4();
    return (*(*(v26 - 8) + 56))(a2, 1, 1, v26);
  }

  v45 = a2;
  v22 = sub_29E09168C();
  if (!v22)
  {
    goto LABEL_8;
  }

  v23 = v22;
  v24 = [v22 lastDayIndex];
  if (!v24)
  {

    goto LABEL_8;
  }

  v25 = v24;
  [v24 integerValue];
  sub_29E2C30D4();

  sub_29E0911E8(v11);
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    (*(v48 + 8))(v18, v49);

    sub_29E176410(v11, sub_29DEDB904);
LABEL_8:
    sub_29E2C04B4();
    v28 = sub_29E2C0504();
    v29 = sub_29E2C3A34();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v52 = v31;
      *v30 = 136446210;
      *(v30 + 4) = sub_29DFAA104(0xD000000000000029, 0x800000029E2E1FC0, &v52);
      _os_log_impl(&dword_29DE74000, v28, v29, "[%{public}s] Not submitting feed item due to no completed cycles", v30, 0xCu);
      sub_29DE93B3C(v31);
      MEMORY[0x29ED82140](v31, -1, -1);
      MEMORY[0x29ED82140](v30, -1, -1);
    }

    (*(v50 + 8))(v6, v51);
    goto LABEL_11;
  }

  v33 = v47;
  sub_29E176470(v11, v47, sub_29DEC65FC);
  v34 = a1 + *(type metadata accessor for OvulationConfirmationFailureTileGenerator.Change(0) + 20);
  v35 = *v34;
  v36 = *(v34 + 8);
  v37 = [v23 dailyEligibleWristTemperatureCount];
  if ((v36 & 1) != 0 || (v38 = v37, v35 < sub_29E2C3164()) && v38 >= 1)
  {
    sub_29E174C98(v23, v33, &v21[*(v19 + 20)], v45);

    sub_29E176410(v33, sub_29DEC65FC);
    (*(v48 + 8))(v18, v49);
    return sub_29E176410(v21, type metadata accessor for OvulationConfirmationState);
  }

  v39 = v46;
  sub_29E2C04B4();
  v40 = sub_29E2C0504();
  v41 = sub_29E2C3A34();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v52 = v43;
    *v42 = 136446210;
    *(v42 + 4) = sub_29DFAA104(0xD000000000000029, 0x800000029E2E1FC0, &v52);
    _os_log_impl(&dword_29DE74000, v40, v41, "[%{public}s] Not submitting feed item due to dismissal date of tile or last-cycle's wrist measurement count.", v42, 0xCu);
    sub_29DE93B3C(v43);
    MEMORY[0x29ED82140](v43, -1, -1);
    MEMORY[0x29ED82140](v42, -1, -1);
  }

  (*(v50 + 8))(v39, v51);
  sub_29E176410(v33, sub_29DEC65FC);
  (*(v48 + 8))(v18, v49);
LABEL_11:
  sub_29E176410(v21, type metadata accessor for OvulationConfirmationState);
  v32 = sub_29E2BD4C4();
  return (*(*(v32 - 8) + 56))(v45, 1, 1, v32);
}

uint64_t sub_29E174C98@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v94 = a3;
  v95 = a2;
  v120 = a4;
  v98 = sub_29E2C0514();
  v97 = *(v98 - 8);
  MEMORY[0x2A1C7C4A8](v98);
  v96 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x29EDC9C68];
  sub_29E173DD0(0, &qword_2A1A616F0, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v93 = &v82 - v8;
  sub_29E173DD0(0, &qword_2A1A62688, MEMORY[0x29EDC3980], v6);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v92 = &v82 - v10;
  v91 = sub_29E2BD6E4();
  v89 = *(v91 - 8);
  MEMORY[0x2A1C7C4A8](v91);
  v87 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_29E2BD794();
  v88 = *(v90 - 8);
  MEMORY[0x2A1C7C4A8](v90);
  v86 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_29E2BE194();
  v84 = *(v85 - 8);
  MEMORY[0x2A1C7C4A8](v85);
  v83 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_29E2BD2E4();
  v117 = *(v123 - 1);
  MEMORY[0x2A1C7C4A8](v123);
  v115 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_29E2BD234();
  v116 = *(v122 - 8);
  MEMORY[0x2A1C7C4A8](v122);
  v114 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29E2BE8B4();
  MEMORY[0x2A1C7C4A8](v16 - 8);
  v110 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E173DD0(0, &unk_2A1A61600, MEMORY[0x29EDC17F0], v6);
  MEMORY[0x2A1C7C4A8](v18 - 8);
  v109 = &v82 - v19;
  *&v108 = sub_29E2C31A4();
  v107 = *(v108 - 8);
  MEMORY[0x2A1C7C4A8](v108);
  v106 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_29E2BF064();
  MEMORY[0x2A1C7C4A8](v105);
  sub_29E173DD0(0, &qword_2A1A61610, MEMORY[0x29EDC17D8], v6);
  MEMORY[0x2A1C7C4A8](v21 - 8);
  v23 = &v82 - v22;
  sub_29E173DD0(0, &qword_2A1A615E0, MEMORY[0x29EDC20F8], v6);
  MEMORY[0x2A1C7C4A8](v24 - 8);
  v26 = &v82 - v25;
  v27 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v27 - 8);
  v29 = &v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_29E2C3384();
  MEMORY[0x2A1C7C4A8](v30 - 8);
  v113 = sub_29E2BE8C4();
  v111 = *(v113 - 8);
  MEMORY[0x2A1C7C4A8](v113);
  v121 = &v82 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF1D934(0);
  MEMORY[0x2A1C7C4A8](v32 - 8);
  v112 = &v82 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_29E2BD4C4();
  v118 = *(v34 - 8);
  v119 = v34;
  MEMORY[0x2A1C7C4A8](v34);
  v82 = &v82 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for OvulationConfirmationFailureUserData();
  MEMORY[0x2A1C7C4A8](v36 - 8);
  v38 = &v82 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0C1C08();
  v39 = a1;
  v124 = v38;
  sub_29E2C2ED4();
  sub_29E2C3394();
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v40 = qword_2A1A67F80;
  sub_29E2BCC74();
  v104 = v40;
  v101 = 0xD000000000000010;
  sub_29E2C3414();
  v100 = v29;
  v41 = sub_29E2BE974();
  (*(*(v41 - 8) + 56))(v26, 1, 1, v41);
  v42 = sub_29E2BDE24();
  (*(*(v42 - 8) + 56))(v23, 1, 1, v42);
  v125 = MEMORY[0x29EDCA190];
  sub_29E173D88(&unk_2A181A7D0, MEMORY[0x29EDC2550]);
  v99 = "FERTILE_WINDOW_ESTIMATE";
  sub_29DF1DC70(0);
  sub_29E173D88(&qword_2A181A7E0, sub_29DF1DC70);
  sub_29E2C43F4();
  sub_29E2BEF64();
  swift_allocObject();
  v105 = sub_29E2BEF54();
  v103 = sub_29E107598([v39 ovulationConfirmationFailure]);
  v102 = v43;
  v44 = [v39 ovulationConfirmationFailure];
  v45 = [v39 menstruationSegment];
  [v45 days];

  v46 = v106;
  sub_29E2C30D4();
  sub_29E1077B4(v46, v44);
  (*(v107 + 8))(v46, v108);
  sub_29E2C3394();
  sub_29E2BCC74();
  sub_29E2C3414();
  v47 = [v39 ovulationConfirmationFailure];
  if ((v47 - 2) < 3 || v47 == 1)
  {
    v48 = v104;
    v49 = v109;
    sub_29E2BDE34();
    v50 = sub_29E2BDE44();
    (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
    sub_29E173DD0(0, &qword_2A181B2A0, MEMORY[0x29EDC1D90], MEMORY[0x29EDC9E90]);
    v51 = sub_29E2BE2A4();
    v52 = *(v51 - 8);
    v53 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v54 = swift_allocObject();
    v108 = xmmword_29E2CAB20;
    *(v54 + 16) = xmmword_29E2CAB20;
    (*(v52 + 104))(v54 + v53, *MEMORY[0x29EDC1D60], v51);
    sub_29E2BE8A4();
    sub_29E2BE884();
    v55 = sub_29E217E30();
    v56 = v117;
    v57 = v122;
    v58 = v55;
    v110 = v59;
    v60 = v116;
    sub_29E1764D8();
    v117 = "ultsController";
    v61 = v114;
    (*(v60 + 104))(v114, *MEMORY[0x29EDC3758], v57);
    v62 = sub_29E2BD274();
    v63 = v115;
    (*(v56 + 13))(v115, *MEMORY[0x29EDC1B28], v123);
    sub_29E173D88(&qword_2A181E118, sub_29E1764D8);
    v64 = v112;
    v65 = v121;
    v66 = v110;
    sub_29E2BD2D4();

    sub_29DF1DD38(v58, v66);
    (*(v56 + 1))(v63, v123);
    (*(v60 + 8))(v61, v122);
    (*(v111 + 8))(v65, v113);
    v68 = v118;
    v67 = v119;
    v123 = *(v118 + 56);
    (v123)(v64, 0, 1, v119);
    v69 = *(v68 + 32);
    v70 = v82;
    v69(v82, v64, v67);
    sub_29DF80C94(0, &qword_2A1A62780, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    inited = swift_initStackObject();
    *(inited + 16) = v108;
    *(inited + 32) = sub_29E2BD664();
    *(inited + 40) = v72;
    v73 = sub_29E2BD494();
    sub_29DECE164(inited);
    swift_setDeallocating();
    sub_29DECE1D4(inited + 32);
    v73(&v125, 0);
    v74 = v83;
    sub_29E110B7C(v83);
    v75 = sub_29E2BE184();
    (*(v84 + 8))(v74, v85);
    sub_29E14ED1C(v75);

    sub_29E2BD3A4();
    (*(v89 + 104))(v87, *MEMORY[0x29EDC3908], v91);
    v76 = v86;
    sub_29E2BD7A4();
    v77 = v90;
    sub_29E2BD314();
    (*(v88 + 8))(v76, v77);
    v78 = v93;
    sub_29E2C3884();
    v79 = sub_29E2BC3A4();
    (*(*(v79 - 8) + 56))(v78, 0, 1, v79);
    sub_29E2BD814();
    sub_29E2BD404();
    sub_29E2BD344();
    sub_29E176410(v124, type metadata accessor for OvulationConfirmationFailureUserData);
    v80 = v120;
    v69(v120, v70, v67);
    return (v123)(v80, 0, 1, v67);
  }

  else
  {
    result = sub_29E2C4724();
    __break(1u);
  }

  return result;
}

uint64_t sub_29E1761E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29E173E34();
  *a1 = result;
  return result;
}

uint64_t sub_29E176208(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E173D88(&qword_2A1A5F470, type metadata accessor for OvulationConfirmationFailureTileGenerator);

  return MEMORY[0x2A1C65578](a1, a2, v4);
}

uint64_t sub_29E1762D4(uint64_t a1)
{
  v2 = sub_29E173D88(qword_2A1A5F478, type metadata accessor for OvulationConfirmationFailureTileGenerator);

  return MEMORY[0x2A1C65560](a1, v2);
}

uint64_t sub_29E176340@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29E2BD594();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_29E1763A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E176410(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E176470(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_29E1764D8()
{
  if (!qword_2A181E108)
  {
    type metadata accessor for OvulationConfirmationFailureTileActionHandler();
    sub_29E173D88(&qword_2A181E110, type metadata accessor for OvulationConfirmationFailureTileActionHandler);
    v0 = sub_29E2BE994();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E108);
    }
  }
}

void sub_29E17656C()
{
  if (!qword_2A1A5EC90)
  {
    sub_29E176664(255, &qword_2A1A5E708, type metadata accessor for OvulationConfirmationState);
    sub_29DEB53AC(255);
    sub_29E1766C8(&unk_2A1A5E710, &qword_2A1A5E708, type metadata accessor for OvulationConfirmationState);
    sub_29E173D88(&unk_2A1A5E600, sub_29DEB53AC);
    v0 = sub_29E2C0E44();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5EC90);
    }
  }
}

void sub_29E176664(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_29E1766C8(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29E176664(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E176718()
{
  if (!qword_2A1A5E900)
  {
    sub_29E17656C();
    sub_29E173D88(&qword_2A1A5EC98, sub_29E17656C);
    v0 = sub_29E2C0F64();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E900);
    }
  }
}

void sub_29E1767AC()
{
  if (!qword_2A1A5EA88)
  {
    sub_29E176718();
    type metadata accessor for OvulationConfirmationFailureTileGenerator.Change(255);
    sub_29E173D88(&qword_2A1A5E908, sub_29E176718);
    v0 = sub_29E2C0F24();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5EA88);
    }
  }
}

void sub_29E176858()
{
  if (!qword_2A1A60BC8[0])
  {
    type metadata accessor for OvulationConfirmationState();
    sub_29DF80C94(255, &qword_2A1A5E2B0, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9C68]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_2A1A60BC8);
    }
  }
}

void sub_29E176914()
{
  type metadata accessor for OvulationConfirmationState();
  if (v0 <= 0x3F)
  {
    sub_29DF80C94(319, &qword_2A1A5E2B0, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9C68]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

char *sub_29E176A00(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[qword_2A181E120] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
  v12.receiver = v4;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  [v10 addSubview_];
  return v10;
}

id sub_29E176B0C()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[qword_2A181E120];
  [v0 bounds];
  return [v1 setFrame_];
}

void sub_29E176B78(void *a1)
{
  v1 = a1;
  sub_29E176B0C();
}

uint64_t sub_29E176C98()
{
  v1 = v0;
  v2 = sub_29E2BCC24();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 40))
  {
    v6 = *(v1 + 32);
  }

  else
  {
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_29E2BCC14();
    v7 = sub_29E2BCBD4();
    v9 = v8;
    (*(v3 + 8))(v5, v2);
    MEMORY[0x29ED7FCC0](v7, v9);

    MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
    v12[1] = v1;
    sub_29E2C4664();
    v6 = v13;
    v10 = v14;
    *(v1 + 32) = v13;
    *(v1 + 40) = v10;
    sub_29E2BF404();
  }

  sub_29E2BF404();
  return v6;
}

uint64_t sub_29E176E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[0] = a4;
  v18[1] = a3;
  sub_29E055E70();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v4);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *MEMORY[0x29EDC2000];
  v11 = *(v6 + 104);
  v11(v9, v10, v5, v7);
  sub_29E2BED34();
  v12 = sub_29E2BE614();
  v13 = *(v6 + 8);
  v13(v9, v5);
  if (v12 & 1) != 0 || ((v11)(v9, v10, v5), v14 = sub_29E2BE614(), v13(v9, v5), (v14) || ((v11)(v9, v10, v5), v15 = sub_29E2BE614(), v13(v9, v5), (v15))
  {
    v16 = 1;
  }

  else
  {
    (v11)(v9, v10, v5);
    v16 = sub_29E2BE614();
    v13(v9, v5);
  }

  return v16 & 1;
}

uint64_t sub_29E17705C()
{

  return swift_deallocClassInstance();
}

char *sub_29E1770C8(uint64_t a1)
{
  v2 = sub_29E2BE814();
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v44 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2BF0B4();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2BCFB4();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v35 - v12;
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v35 - v15;
  v17 = a1;
  v18 = sub_29E2BF0A4();
  MEMORY[0x29ED79720](0, v18);
  v19 = v50;
  v20 = sub_29E2BF0F4();
  if (v19)
  {
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    v22 = v20;
    v38 = v6;
    v39 = v17;
    v50 = 0;
    v23 = *(v8 + 8);
    v24 = v21;
    v23(v10, v7);
    (*(v8 + 32))(v16, v13, v7);
    swift_getObjectType();
    v25 = v22;
    sub_29E2BCFA4();
    if (sub_29E2BE6D4() < 1)
    {
      v32 = v44;
      sub_29E2BE7F4();
      v10 = sub_29E2BE7B4();
      swift_unknownObjectRelease();
      (*(v42 + 8))(v32, v43);
      v23(v16, v7);
    }

    else
    {
      v37 = v7;
      v36 = v23;
      v47 = v22;
      v48 = v24;
      sub_29DF942BC(0, &qword_2A181DB40);
      sub_29DF942BC(0, &qword_2A181E1A8);
      swift_unknownObjectRetain();
      v26 = swift_dynamicCast();
      v27 = v44;
      if (v26)
      {
        v44 = v25;
        sub_29DE8EE78(v45, v49);
        v10 = sub_29DE966D4(v49, v49[3]);
        sub_29E2BCFA4();
        sub_29E2BF074();
        sub_29E2BF084();
        v28 = v38;
        sub_29E2BF094();
        v29 = v50;
        v30 = sub_29E2BF7C4();
        v31 = v36;
        if (v29)
        {
          swift_unknownObjectRelease();
          (*(v40 + 8))(v28, v41);
          v31(v16, v37);
          sub_29DE93B3C(v49);
        }

        else
        {
          v10 = v30;
          (*(v40 + 8))(v28, v41);
          if (sub_29E2BF0A4())
          {
            [v10 contentInsets];
            [v10 setContentInsets_];
            swift_unknownObjectRelease();
            v31(v16, v37);
          }

          else
          {
            v31(v16, v37);
            swift_unknownObjectRelease();
          }

          sub_29DE93B3C(v49);
        }
      }

      else
      {
        v46 = 0;
        memset(v45, 0, sizeof(v45));
        sub_29E177E74(v45, &qword_2A181E1B0, &qword_2A181E1A8);
        sub_29E2BE7F4();
        v10 = sub_29E2BE7B4();
        swift_unknownObjectRelease();
        (*(v42 + 8))(v27, v43);
        v36(v16, v37);
      }
    }
  }

  return v10;
}

uint64_t sub_29E177664()
{
  v0 = sub_29E2BF0C4();
  v1 = *(v0 + 16);
  if (v1)
  {
    sub_29DF942BC(0, &qword_2A181DB40);
    sub_29DF942BC(0, &qword_2A181BFC8);
    v2 = 32;
    do
    {
      v6 = *(v0 + v2);
      swift_unknownObjectRetain_n();
      if (swift_dynamicCast())
      {
        sub_29DE8EE78(v4, v7);
        sub_29DE966D4(v7, v7[3]);
        sub_29E2BF444();
        swift_unknownObjectRelease();
        sub_29DE93B3C(v7);
      }

      else
      {
        swift_unknownObjectRelease();
        v5 = 0;
        memset(v4, 0, sizeof(v4));
        sub_29E177E74(v4, &qword_2A181BFD0, &qword_2A181BFC8);
      }

      v2 += 16;
      --v1;
    }

    while (v1);
  }

  else
  {
  }
}

uint64_t sub_29E177890(uint64_t a1, char a2)
{
  v4 = sub_29E2C2B84();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29DE9408C(0, &qword_2A1A626C0);
  *v7 = sub_29E2C3CF4();
  (*(v5 + 104))(v7, *MEMORY[0x29EDCA278], v4);
  v8 = sub_29E2C2BA4();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v15 = sub_29E2BF0C4();
    v10 = *(v15 + 16);
    if (v10)
    {
      v11 = (v15 + 32);
      sub_29DF942BC(0, &qword_2A181DB40);
      sub_29DF942BC(0, &qword_2A181BF90);
      do
      {
        v18 = *v11;
        swift_unknownObjectRetain_n();
        if (swift_dynamicCast())
        {
          sub_29DE8EE78(v16, v19);
          v12 = v20;
          v13 = v21;
          sub_29DE966D4(v19, v20);
          (*(v13 + 8))(a1, a2 & 1, v12, v13);
          swift_unknownObjectRelease();
          sub_29DE93B3C(v19);
        }

        else
        {
          swift_unknownObjectRelease();
          v17 = 0;
          memset(v16, 0, sizeof(v16));
          sub_29E177E74(v16, &qword_2A181A920, &qword_2A181BF90);
        }

        ++v11;
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E177B28(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_29E2C0514();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();

  v10 = a2;
  v11 = sub_29E2C0504();
  v12 = sub_29E2C3A34();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446466;
    v32 = *v3;
    v33[0] = v14;
    sub_29E177ED0();
    v15 = sub_29E2C3424();
    v17 = sub_29DFAA104(v15, v16, v33);
    v30 = v6;
    v18 = v17;

    *(v13 + 4) = v18;
    *(v13 + 12) = 2082;
    v32 = v10;
    sub_29DE9408C(0, &qword_2A1A61DC0);
    v19 = v10;
    v20 = sub_29E2C3464();
    v22 = sub_29DFAA104(v20, v21, v33);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_29DE74000, v11, v12, "[%{public}s] Received analysis: %{public}s, privacy: .public)", v13, 0x16u);
    v23 = v31;
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v23, -1, -1);
    MEMORY[0x29ED82140](v13, -1, -1);

    (*(v7 + 8))(v9, v30);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v24 = sub_29E2BF0C4();
  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = v24 + 32;
    do
    {
      v33[1] = &unk_2A25093B8;
      v27 = swift_dynamicCastObjCProtocolConditional();
      if (v27)
      {
        [v27 analysisProvider:a1 didUpdateAnalysis:v10];
      }

      v26 += 16;
      --v25;
    }

    while (v25);
  }
}

uint64_t sub_29E177E74(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_29E0AD5F4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_29E177ED0()
{
  result = qword_2A181E1B8;
  if (!qword_2A181E1B8)
  {
    type metadata accessor for HistoricalAnalysisDataSource();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A181E1B8);
  }

  return result;
}

uint64_t sub_29E177F14(uint64_t a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v13[-v8];
  if (a1 <= 1)
  {
    if (!a1 || a1 == 1)
    {
      goto LABEL_9;
    }

LABEL_12:
    result = sub_29E2C4724();
    __break(1u);
    return result;
  }

  if (a1 != 2 && a1 != 3)
  {
    goto LABEL_12;
  }

LABEL_9:
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

uint64_t sub_29E1781B0(uint64_t a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v13[-v8];
  if (a1 <= 1)
  {
    if (!a1 || a1 == 1)
    {
      goto LABEL_9;
    }

LABEL_12:
    result = sub_29E2C4724();
    __break(1u);
    return result;
  }

  if (a1 != 2 && a1 != 3)
  {
    goto LABEL_12;
  }

LABEL_9:
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

uint64_t sub_29E17844C@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_29E2BCA44();
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v49 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2BCAF4();
  v53 = *(v5 - 8);
  v54 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v47 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v48 = &v42 - v8;
  MEMORY[0x2A1C7C4A8](v9);
  v50 = &v42 - v10;
  sub_29DEB2104();
  v46 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v44 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v42 - v14;
  v16 = sub_29E2BCBB4();
  v17 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20);
  v22 = &v42 - v21;
  sub_29DEB216C();
  v45 = v23;
  *&v24 = MEMORY[0x2A1C7C4A8](v23).n128_u64[0];
  v26 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a1;
  v28 = [*a1 startDate];
  sub_29E2BCB44();

  v29 = [v27 endDate];
  sub_29E2BCB44();

  sub_29E179030(&qword_2A1A616E0, MEMORY[0x29EDB9BC8]);
  v30 = v16;
  result = sub_29E2C32B4();
  if (result)
  {
    v32 = *(v17 + 32);
    v32(v15, v22, v16);
    v33 = v44;
    v34 = v46;
    v32(&v15[*(v46 + 48)], v19, v30);
    sub_29DFD4F84(v15, v33);
    v43 = *(v34 + 48);
    v32(v26, v33, v30);
    v35 = *(v17 + 8);
    v35(v33 + v43, v30);
    sub_29DEB2268(v15, v33);
    v32(&v26[*(v45 + 36)], (v33 + *(v34 + 48)), v30);
    v35(v33, v30);
    v36 = v47;
    sub_29E2BC254();
    v37 = v49;
    sub_29E2BCA14();
    v38 = v48;
    sub_29E2BCAE4();
    (*(v51 + 8))(v37, v52);
    v39 = v54;
    v40 = *(v53 + 8);
    v40(v36, v54);
    v41 = v50;
    sub_29E2BCAD4();
    v40(v38, v39);
    sub_29E179030(&qword_2A181A4E8, MEMORY[0x29EDB9BC0]);
    sub_29E2C3874();
    v40(v41, v39);
    return sub_29DFDB570(v26);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E17898C(unint64_t a1)
{
  v23 = MEMORY[0x29EDCA198];
  if (a1 >> 62)
  {
LABEL_24:
    v2 = sub_29E2C4484();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = MEMORY[0x29EDCA198];
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x29ED80D70](v3, a1);
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v6 = *(a1 + 8 * v3 + 32);
        }

        v7 = v6;
        v8 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v9 = [v6 categoryType];
        v11 = sub_29E18478C(v9);
        v12 = v4[2];
        v13 = (v10 & 1) == 0;
        v14 = v12 + v13;
        if (__OFADD__(v12, v13))
        {
          goto LABEL_22;
        }

        v15 = v10;
        if (v4[3] < v14)
        {
          sub_29E0074B0(v14, 1);
          v4 = v23;
          v16 = sub_29E18478C(v9);
          if ((v15 & 1) != (v17 & 1))
          {
            sub_29DE9408C(0, &qword_2A1A61D70);
            result = sub_29E2C4964();
            __break(1u);
            return result;
          }

          v11 = v16;
        }

        if (v15)
        {

          v5 = (v4[7] + 8 * v11);
          MEMORY[0x29ED7FDC0]();
          if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_29E2C3644();
          }

          sub_29E2C3674();
        }

        else
        {
          sub_29DE99B54();
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_29E2CE220;
          *(v18 + 32) = v7;
          v4[(v11 >> 6) + 8] |= 1 << v11;
          *(v4[6] + 8 * v11) = v9;
          *(v4[7] + 8 * v11) = v18;
          v19 = v4[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_23;
          }

          v4[2] = v21;
        }

        ++v3;
        if (v8 == v2)
        {
          return v4;
        }
      }
    }
  }

  return MEMORY[0x29EDCA198];
}

void sub_29E178BF4()
{
  v0 = sub_29E2BF404();
  v1 = sub_29E17898C(v0);

  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;
  sub_29E2BF404();
  v7 = 0;
  v46 = MEMORY[0x29EDCA190];
  while (1)
  {
    while (1)
    {
      v8 = v7;
      if (!v5)
      {
        while (1)
        {
          v7 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v7 >= v6)
          {

            return;
          }

          v5 = *(v2 + 8 * v7);
          ++v8;
          if (v5)
          {
            goto LABEL_8;
          }
        }

        __break(1u);
        goto LABEL_33;
      }

LABEL_8:
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v10 = (v7 << 9) | (8 * v9);
      v11 = *(*(v1 + 56) + v10);
      v12 = *(*(v1 + 48) + v10);
      sub_29E2BF404();
      v13 = sub_29DF3D08C();
      if ((v14 & 1) == 0)
      {
        break;
      }
    }

    v51 = v12;
    v53[0] = v11;
    v49 = v13;
    swift_getKeyPath();
    sub_29DEE9894();
    sub_29E179030(&qword_2A181A138, sub_29DEE9894);
    sub_29E179030(&qword_2A1A616E0, MEMORY[0x29EDB9BC8]);
    v15 = sub_29E2C35A4();

    v16 = sub_29E177F14(v49);
    v43 = v17;
    v44 = v16;
    v18 = sub_29E1781B0(v49);
    v41 = v19;
    v42 = v18;
    v20 = v15;
    v21 = v15 >> 62 ? sub_29E2C4484() : *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = MEMORY[0x29EDCA190];
    if (v21)
    {
      break;
    }

    v25 = v22;
LABEL_25:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v46 = sub_29E144E38(0, *(v46 + 2) + 1, 1, v46);
    }

    v36 = *(v46 + 2);
    v35 = *(v46 + 3);
    if (v36 >= v35 >> 1)
    {
      v46 = sub_29E144E38((v35 > 1), v36 + 1, 1, v46);
    }

    *(v46 + 2) = v36 + 1;
    v37 = &v46[40 * v36];
    *(v37 + 4) = v44;
    *(v37 + 5) = v43;
    *(v37 + 6) = v42;
    *(v37 + 7) = v41;
    *(v37 + 8) = v25;
  }

  v38 = v6;
  v39 = v2;
  v40 = v1;
  v54 = MEMORY[0x29EDCA190];
  v50 = v21;
  sub_29E1811FC(0, v21 & ~(v21 >> 63), 0);
  if (v50 < 0)
  {
    goto LABEL_35;
  }

  v23 = 0;
  v24 = v20;
  v25 = v54;
  v47 = v24;
  v48 = v24 & 0xC000000000000001;
  v45 = v24 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    v26 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v48)
    {
      v27 = MEMORY[0x29ED80D70](v23);
    }

    else
    {
      if (v23 >= *(v45 + 16))
      {
        goto LABEL_34;
      }

      v27 = *(v24 + 8 * v23 + 32);
    }

    v28 = v27;
    v52 = v27;
    sub_29E17844C(&v52, v53);

    v29 = v53[0];
    v30 = v53[1];
    v54 = v25;
    v32 = *(v25 + 16);
    v31 = *(v25 + 24);
    v33 = v25;
    if (v32 >= v31 >> 1)
    {
      sub_29E1811FC((v31 > 1), v32 + 1, 1);
      v33 = v54;
    }

    *(v33 + 16) = v32 + 1;
    v34 = v33 + 16 * v32;
    *(v34 + 32) = v29;
    *(v34 + 40) = v30;
    ++v23;
    v24 = v47;
    v25 = v33;
    if (v26 == v50)
    {

      v2 = v39;
      v1 = v40;
      v6 = v38;
      goto LABEL_25;
    }
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_29E179030(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_29E179124(void *a1)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17RoundedShadowView_roundedView;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) init];
  v19.receiver = v1;
  v19.super_class = type metadata accessor for RoundedShadowView();
  v4 = objc_msgSendSuper2(&v19, sel_initWithCoder_, a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v7 = [v6 layer];
    [v7 setShadowRadius_];

    v8 = [v6 layer];
    v9 = objc_opt_self();
    v10 = [v9 blackColor];
    v11 = [v10 CGColor];

    [v8 setShadowColor_];
    v12 = [v6 layer];
    LODWORD(v13) = 1032805417;
    [v12 setShadowOpacity_];

    v14 = [v6 layer];
    [v14 setMasksToBounds_];

    v15 = *&v6[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17RoundedShadowView_roundedView];
    sub_29E2BD084();
    sub_29E2C3FE4();
    [v15 setClipsToBounds_];
    v16 = [v15 layer];
    [v16 setMasksToBounds_];

    v17 = [v9 tertiarySystemBackgroundColor];
    [v15 setBackgroundColor_];

    [v6 addSubview_];
    MEMORY[0x29ED807E0](v6);
  }

  return v5;
}

uint64_t sub_29E1793A0()
{
  v1 = v0;
  v2 = [v0 layer];
  [v2 setShadowRadius_];

  v3 = [v1 layer];
  v4 = objc_opt_self();
  v5 = [v4 blackColor];
  v6 = [v5 CGColor];

  [v3 setShadowColor_];
  v7 = [v1 layer];
  LODWORD(v8) = 1032805417;
  [v7 setShadowOpacity_];

  v9 = [v1 layer];
  [v9 setMasksToBounds_];

  v10 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17RoundedShadowView_roundedView];
  sub_29E2BD084();
  sub_29E2C3FE4();
  [v10 setClipsToBounds_];
  v11 = [v10 layer];
  [v11 setMasksToBounds_];

  v12 = [v4 tertiarySystemBackgroundColor];
  [v10 setBackgroundColor_];

  [v1 addSubview_];
  return MEMORY[0x29ED807E0](v1);
}