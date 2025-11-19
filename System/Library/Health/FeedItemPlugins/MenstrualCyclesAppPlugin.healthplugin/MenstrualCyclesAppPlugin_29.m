void sub_29E191028()
{
  v1 = [v0 effectiveUserInterfaceLayoutDirection];
  [v0 bounds];
  Width = CGRectGetWidth(v52);
  v3 = [v0 contentView];
  [v3 layoutMargins];
  v5 = v4;

  v6 = Width - v5;
  v7 = [v0 contentView];
  [v7 layoutMargins];
  v9 = v8;

  v10 = v6 - v9;
  [v0 bounds];
  Height = CGRectGetHeight(v53);
  v12 = sub_29E190AE4();
  [v12 sizeThatFits_];
  v14 = v13;
  v16 = v15;

  v17 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19CycleStatisticsCell____lazy_storage___titleLabel;
  v18 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19CycleStatisticsCell____lazy_storage___titleLabel];
  if (v1 == 1)
  {
    [v0 bounds];
    v19 = CGRectGetWidth(v54);
    [v0 layoutMargins];
    v21 = v19 - v20 - v14;
  }

  else
  {
    [v0 layoutMargins];
    v21 = v22;
  }

  v23 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19CycleStatisticsCell_item;
  swift_beginAccess();
  sub_29DEC3518(&v0[v23], v50);
  if (v51)
  {
    sub_29DEB1BC4(0, &qword_2A181CC80);
    type metadata accessor for CycleStatisticsItem();
    if (swift_dynamicCast())
    {
      v24 = *(v49 + 104);
      sub_29E2BF404();

      if (v24)
      {

        v25 = 5.0;
        goto LABEL_10;
      }
    }
  }

  else
  {
    sub_29DF61E50(v50);
  }

  v25 = 16.0;
LABEL_10:
  [v18 setFrame_];

  v26 = sub_29E190AF8();
  [v26 sizeThatFits_];
  v28 = v27;
  v30 = v29;

  v31 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19CycleStatisticsCell____lazy_storage___valueLabel;
  v32 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19CycleStatisticsCell____lazy_storage___valueLabel];
  if (v1 == 1)
  {
    [v0 bounds];
    v33 = CGRectGetWidth(v55);
    [v0 layoutMargins];
    v35 = v33 - v34 - v28;
  }

  else
  {
    [v0 layoutMargins];
    v35 = v36;
  }

  [*&v0[v17] frame];
  [v32 setFrame_];

  sub_29DEC3518(&v0[v23], v50);
  if (!v51)
  {
    sub_29DF61E50(v50);
LABEL_19:
    v44 = sub_29E190B0C();
    [v44 setHidden_];
    goto LABEL_20;
  }

  sub_29DEB1BC4(0, &qword_2A181CC80);
  type metadata accessor for CycleStatisticsItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v37 = *(v49 + 104);
  sub_29E2BF404();

  if (!v37)
  {
    goto LABEL_19;
  }

  v38 = sub_29E190B0C();
  [v38 setHidden_];

  v39 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19CycleStatisticsCell____lazy_storage___captionLabel;
  [*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19CycleStatisticsCell____lazy_storage___captionLabel] sizeThatFits_];
  v41 = v40;
  v43 = v42;
  v44 = *&v0[v39];
  if (v1 == 1)
  {
    [v0 bounds];
    v45 = CGRectGetWidth(v57);
    [v0 layoutMargins];
    v47 = v45 - v46 - v41;
  }

  else
  {
    [v0 layoutMargins];
    v47 = v48;
  }

  [*&v0[v31] frame];
  [v44 setFrame_];
LABEL_20:
}

double sub_29E1914CC(double a1, double a2)
{
  v5 = [v2 contentView];
  [v5 layoutMargins];
  v7 = v6;

  v8 = [v2 contentView];
  [v8 layoutMargins];
  v10 = v9;

  sub_29DE99B54();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_29E2CD3B0;
  *(v11 + 32) = sub_29E190AE4();
  *(v11 + 40) = sub_29E190AF8();
  v27 = v11;
  v12 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19CycleStatisticsCell_item;
  swift_beginAccess();
  sub_29DEC3518(v2 + v12, v25);
  if (!v26)
  {
    sub_29DF61E50(v25);
LABEL_8:
    v14 = 34.0;
    goto LABEL_9;
  }

  sub_29DEB1BC4(0, &qword_2A181CC80);
  type metadata accessor for CycleStatisticsItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v13 = *(v24 + 104);
  sub_29E2BF404();

  if (!v13)
  {
    goto LABEL_8;
  }

  sub_29E190B0C();
  MEMORY[0x29ED7FDC0]();
  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_29E2C3644();
  }

  sub_29E2C3674();
  v14 = 25.0;
  v11 = v27;
LABEL_9:
  if (v11 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29E2C4484())
  {
    v16 = 0;
    v7 = a1 - v7 - v10;
    a1 = 0.0;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x29ED80D70](v16, v11);
      }

      else
      {
        if (v16 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v17 = *(v11 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      [v17 sizeThatFits_];
      v10 = v20;
      v22 = v21;

      if (a1 <= v10)
      {
        a1 = v10;
      }

      v14 = v14 + v22;
      ++v16;
      if (v19 == i)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  a1 = 0.0;
LABEL_25:

  return a1;
}

uint64_t sub_29E191890()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19CycleStatisticsCell_item;
  swift_beginAccess();
  sub_29DEC3518(v0 + v1, v9);
  if (!v10)
  {
    return sub_29DF61E50(v9);
  }

  sub_29DEB1BC4(0, &qword_2A181CC80);
  v2 = type metadata accessor for CycleStatisticsItem();
  result = swift_dynamicCast();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v8 + 40);
      ObjectType = swift_getObjectType();
      v6 = [v0 isHighlighted];
      v10 = v2;
      v11 = sub_29E191BE0();
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

id sub_29E1919E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CycleStatisticsCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E191AA8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19CycleStatisticsCell_item;
  swift_beginAccess();
  return sub_29DEC3518(v1 + v3, a1);
}

uint64_t sub_29E191B00(uint64_t a1)
{
  sub_29E1904F8();
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19CycleStatisticsCell_item;
  swift_beginAccess();
  sub_29DEC3690(a1, v1 + v3);
  swift_endAccess();
  sub_29E190614();
  return sub_29DF61E50(a1);
}

void (*sub_29E191B70(uint64_t **a1))(void *a1)
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
  v2[4] = sub_29E19097C(v2);
  return sub_29DF61DA4;
}

unint64_t sub_29E191BE0()
{
  result = qword_2A181E5C8;
  if (!qword_2A181E5C8)
  {
    type metadata accessor for CycleStatisticsItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181E5C8);
  }

  return result;
}

void sub_29E191C3C()
{
  v0 = sub_29E190AE4();
  sub_29DE9408C(0, &unk_2A1A61A00);
  v1 = sub_29E2C3FD4();
  [v0 setFont_];

  v2 = sub_29E190AF8();
  v3 = sub_29E2C3FD4();
  [v2 setFont_];

  v4 = sub_29E190B0C();
  v5 = sub_29E2C3FD4();
  [v4 setFont_];
}

uint64_t sub_29E191DA4(void *a1)
{
  v25[1] = *MEMORY[0x29EDCA608];
  v2 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2BEFD4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E192690(0, &qword_2A1817D40, MEMORY[0x29EDB9950], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x2A1C7C4A8](v10).n128_u64[0];
  v13 = v24 - v12;
  v25[0] = 0;
  v14 = [a1 dateOfBirthComponentsWithError_];
  v15 = v25[0];
  if (v14)
  {
    v16 = v14;
    sub_29E2BC544();
    v17 = v15;

    v18 = 0;
  }

  else
  {
    v19 = v25[0];
    v20 = sub_29E2BC7E4();
    v24[0] = v4;
    v21 = v20;

    swift_willThrow();
    v4 = v24[0];

    v18 = 1;
  }

  v22 = sub_29E2BC5F4();
  (*(*(v22 - 8) + 56))(v13, v18, 1, v22);
  sub_29E16CCE8();
  sub_29E1920A4(v13, v9);
  sub_29E2BCB54();
  sub_29E2BEFC4();
  sub_29E2BEF14();

  (*(v4 + 8))(v6, v3);
  return sub_29E192138(v13);
}

uint64_t sub_29E1920A4(uint64_t a1, uint64_t a2)
{
  sub_29E192690(0, &qword_2A1817D40, MEMORY[0x29EDB9950], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E192138(uint64_t a1)
{
  sub_29E192690(0, &qword_2A1817D40, MEMORY[0x29EDB9950], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for PDFCoverPageHeaderProvider()
{
  result = qword_2A181E5D0;
  if (!qword_2A181E5D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E192238()
{
  result = sub_29E2BEF04();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_29E1922A4()
{
  v0 = sub_29E2BE484();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v24[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2BEEE4();
  v6 = v5;
  v7 = sub_29E2BE224();
  v8 = *MEMORY[0x29EDC1F60];
  v9 = *(v1 + 104);
  v9(v3, v8, v0);
  v10 = sub_29E2BFA64();
  v25 = v10;
  v26 = MEMORY[0x29EDC2C00];
  sub_29DEBB7E8(v24);
  MEMORY[0x29ED7C240](v4, v6, v3, v7);
  v11 = sub_29E2BEA14();
  sub_29DE93B3C(v24);
  v12 = sub_29E2BEEF4();
  v14 = v13;
  v15 = sub_29E2BE214();
  v9(v3, v8, v0);
  v25 = v10;
  v26 = MEMORY[0x29EDC2C00];
  sub_29DEBB7E8(v24);
  MEMORY[0x29ED7C240](v12, v14, v3, v15);
  v16 = sub_29E2BEA14();
  sub_29DE93B3C(v24);
  sub_29E2BE1D4();
  sub_29E2BE1C4();
  v17 = sub_29E2BE1B4();
  v18 = [v17 CGColor];

  v25 = sub_29E2BEDB4();
  v26 = MEMORY[0x29EDC2290];
  sub_29DEBB7E8(v24);
  sub_29E2BEDA4();
  v19 = sub_29E2BEA14();
  sub_29DE93B3C(v24);
  sub_29E192690(0, &qword_2A181DD60, sub_29DF0CF6C, MEMORY[0x29EDC9E90]);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_29E2CE0D0;
  *(v20 + 32) = v11;
  *(v20 + 40) = v16;
  *(v20 + 48) = v19;
  v21 = MEMORY[0x29ED7B1C0]();

  return v21;
}

uint64_t sub_29E192570()
{
  v1 = *(v0 + 16);
  sub_29E192690(0, &unk_2A181DD40, sub_29DF0D004, MEMORY[0x29EDC9E90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_29E2CAB20;
  *(swift_task_alloc() + 16) = v1;
  v3 = sub_29E2BFC04();
  v4 = MEMORY[0x29EDC2C70];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  sub_29DEBB7E8((v2 + 32));
  sub_29E2BFBF4();

  v5 = *(v0 + 8);

  return v5(v2);
}

void sub_29E192690(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_29E1926F4@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v11 = type metadata accessor for OvulationConfirmationState();
  v12 = v11[5];
  v13 = sub_29E2BCEA4();
  (*(*(v13 - 8) + 16))(&a6[v12], a5, v13);
  sub_29E2BCB54();
  v14 = v11[8];
  v15 = sub_29E2BFC94();
  (*(*(v15 - 8) + 16))(&a6[v14], a3, v15);
  *a6 = a1;
  a6[v11[6]] = a2;
  v16 = &a6[v11[9]];
  *v16 = a4 & 1;
  v16[1] = BYTE1(a4) & 1;
  v16[2] = BYTE2(a4) & 1;

  return a1;
}

uint64_t sub_29E192820()
{

  sub_29DE93B3C(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MenstrualCyclesAllHighlightsViewController()
{
  result = qword_2A181E5E0;
  if (!qword_2A181E5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E192928@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC1D80];
  v3 = sub_29E2BE2A4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_29E19299C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_allocWithZone(v4);
  sub_29DE9DC34(a4, v9);
  v7 = sub_29E2BDFD4();
  sub_29DE93B3C(a4);
  return v7;
}

id sub_29E192A34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MenstrualCyclesAllHighlightsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29E192ABC()
{
  sub_29E199B24(319, &qword_2A1818600, MEMORY[0x29EDBC370], MEMORY[0x29EDBC390]);
  if (v0 <= 0x3F)
  {
    sub_29E199B24(319, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29E192BC4()
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

uint64_t sub_29E192DDC()
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

uint64_t sub_29E193000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v33 = type metadata accessor for EstimatedDueDateView();
  MEMORY[0x2A1C7C4A8](v33);
  v34 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = (&v33 - v5);
  sub_29E196B0C();
  v37 = v7;
  v35 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = (&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E196AD8(0);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v33 - v14;
  sub_29E196658();
  v17 = v16 - 8;
  MEMORY[0x2A1C7C4A8](v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20);
  v22 = (&v33 - v21);
  *v22 = swift_getKeyPath();
  sub_29E199B24(0, &unk_2A181A6A0, MEMORY[0x29EDBC370], MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  sub_29E1935C4(a1, v22 + *(v17 + 60));
  *(v22 + *(v17 + 64)) = 0;
  v23 = 1;
  if (*(a1 + *(type metadata accessor for PregnancyStartDateInputView(0) + 24)) != 1)
  {
    *v9 = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v24 = v9 + *(v37 + 52);
    *v24 = sub_29E2C1AA4();
    *(v24 + 1) = 0;
    v24[16] = 1;
    sub_29E198AF0(0, &qword_2A181E688, sub_29E196C50);
    v26 = &v24[*(v25 + 44)];
    sub_29E199B24(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
    sub_29E2C2A24();
    *v6 = swift_getKeyPath();
    sub_29E199B24(0, &qword_2A1819020, MEMORY[0x29EDBC518], MEMORY[0x29EDBC388]);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for PregnancyDatesInputViewModel();
    sub_29E19695C(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
    sub_29E2C2A44();
    v27 = v34;
    sub_29E199C04(v6, v34, type metadata accessor for EstimatedDueDateView);
    sub_29E199C04(v27, v26, type metadata accessor for EstimatedDueDateView);
    sub_29E199088(0, &qword_2A181E670, type metadata accessor for EstimatedDueDateView);
    v29 = v26 + *(v28 + 48);
    *v29 = 0;
    *(v29 + 8) = 0;
    sub_29E198B5C(v6, type metadata accessor for EstimatedDueDateView);
    sub_29E198B5C(v27, type metadata accessor for EstimatedDueDateView);
    *(v9 + *(v37 + 56)) = 0;
    sub_29E199718(v9, v15, sub_29E196B0C);
    v23 = 0;
  }

  (*(v35 + 56))(v15, v23, 1, v37);
  sub_29E199C04(v22, v19, sub_29E196658);
  sub_29E199C04(v15, v12, sub_29E196AD8);
  v30 = v36;
  sub_29E199C04(v19, v36, sub_29E196658);
  sub_29E1965E8();
  sub_29E199C04(v12, v30 + *(v31 + 48), sub_29E196AD8);
  sub_29E198B5C(v15, sub_29E196AD8);
  sub_29E198B5C(v22, sub_29E196658);
  sub_29E198B5C(v12, sub_29E196AD8);
  return sub_29E198B5C(v19, sub_29E196658);
}

uint64_t sub_29E1935C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v238 = a2;
  v3 = MEMORY[0x29EDBC7E8];
  sub_29E196744(0, &qword_2A18186A0, type metadata accessor for EmbryoTransferDatePickerRow, type metadata accessor for PastPregnancyStartDatePickerRow, MEMORY[0x29EDBC7E8]);
  v190 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v192 = v181 - v5;
  sub_29DEE17DC(0);
  v229 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v193 = v181 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = type metadata accessor for EmbryoTransferDatePickerRow(0);
  MEMORY[0x2A1C7C4A8](v191);
  v194 = v181 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = type metadata accessor for EmbryoAgeAtTransferPickerRow(0);
  MEMORY[0x2A1C7C4A8](v209);
  v188 = v181 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x29EDBC7E8];
  sub_29E1967C8(0, &qword_2A181E690, sub_29E196864, MEMORY[0x29EDBC7E8]);
  v216 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v218 = v181 - v12;
  sub_29E196830(0);
  v237 = v13;
  MEMORY[0x2A1C7C4A8](v13);
  v220 = v181 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E196864(0);
  v217 = v15;
  MEMORY[0x2A1C7C4A8](v15);
  v219 = v181 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E196744(0, &qword_2A1818698, sub_29DEE1794, sub_29DEE17DC, v3);
  v227 = v17;
  MEMORY[0x2A1C7C4A8](v17);
  v210 = v181 - v18;
  sub_29E196744(0, &qword_2A181B540, type metadata accessor for GestationalAgeOnDatePickerRow, type metadata accessor for EmbryoAgeAtTransferPickerRow, v3);
  v204 = v19;
  MEMORY[0x2A1C7C4A8](v19);
  v207 = v181 - v20;
  sub_29DEE1794(0);
  v226 = v21;
  MEMORY[0x2A1C7C4A8](v21);
  v208 = (v181 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29DEE174C(0);
  v247 = v23;
  MEMORY[0x2A1C7C4A8](v23);
  v228 = v181 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = type metadata accessor for GestationalAgeOnDatePickerRow(0);
  MEMORY[0x2A1C7C4A8](v206);
  v189 = v181 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = sub_29E2C2984();
  v214 = *(v215 - 8);
  MEMORY[0x2A1C7C4A8](v215);
  v213 = v181 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v27);
  v246 = v181 - v28;
  v200 = type metadata accessor for GestationalAgeInWeeksAndDaysPickerRow(0);
  MEMORY[0x2A1C7C4A8](v200);
  v187 = v181 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEE1574();
  v230 = v30;
  MEMORY[0x2A1C7C4A8](v30);
  v211 = v181 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v32);
  v212 = v181 - v33;
  MEMORY[0x2A1C7C4A8](v34);
  v232 = v181 - v35;
  MEMORY[0x2A1C7C4A8](v36);
  v245 = v181 - v37;
  sub_29E196744(0, &qword_2A181B548, type metadata accessor for EstimatedDueDatePickerRow, type metadata accessor for GestationalAgeInWeeksAndDaysPickerRow, v3);
  v195 = v38;
  MEMORY[0x2A1C7C4A8](v38);
  v197 = (v181 - v39);
  sub_29DEE1704(0);
  v225 = v40;
  MEMORY[0x2A1C7C4A8](v40);
  v199 = (v181 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v196 = type metadata accessor for EstimatedDueDatePickerRow();
  MEMORY[0x2A1C7C4A8](v196);
  v186 = v181 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E196744(0, &qword_2A181E698, sub_29E05901C, sub_29E196830, v3);
  v234 = v43;
  MEMORY[0x2A1C7C4A8](v43);
  v236 = v181 - v44;
  sub_29E1967C8(0, &qword_2A181B570, sub_29E058EF8, v10);
  v202 = v45;
  MEMORY[0x2A1C7C4A8](v45);
  v203 = (v181 - v46);
  sub_29E05901C(0);
  v235 = v47;
  MEMORY[0x2A1C7C4A8](v47);
  v205 = v181 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E196744(0, &qword_2A1818688, sub_29DEE1618, type metadata accessor for EndDatePickerRow, v3);
  v244 = v49;
  MEMORY[0x2A1C7C4A8](v49);
  v233 = v181 - v50;
  sub_29E196744(0, &qword_2A1818690, sub_29DEE1660, sub_29DEE174C, v3);
  v242 = v51;
  MEMORY[0x2A1C7C4A8](v51);
  v231 = v181 - v52;
  sub_29E196744(0, &qword_2A181B578, sub_29DEE16A8, sub_29DEE1704, v3);
  v222 = v53;
  MEMORY[0x2A1C7C4A8](v53);
  v223 = (v181 - v54);
  sub_29E1967C8(0, &qword_2A181B580, type metadata accessor for LastMenstrualPeriodDatePickerRow, v10);
  v183 = v55;
  MEMORY[0x2A1C7C4A8](v55);
  v184 = v181 - v56;
  sub_29DEE16A8();
  v221 = v57;
  MEMORY[0x2A1C7C4A8](v57);
  v185 = v181 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEE1660(0);
  v241 = v59;
  MEMORY[0x2A1C7C4A8](v59);
  v224 = (v181 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29DEE1618(0);
  v243 = v61;
  MEMORY[0x2A1C7C4A8](v61);
  v239 = v181 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v63 - 8);
  v64 = sub_29E2C3384();
  v182 = *(v64 - 8);
  MEMORY[0x2A1C7C4A8](v64);
  v66 = v181 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v67);
  v69 = v181 - v68;
  MenstrualPeriodDatePickerRow = type metadata accessor for LastMenstrualPeriodDatePickerRow();
  MEMORY[0x2A1C7C4A8](MenstrualPeriodDatePickerRow);
  v72 = v181 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = sub_29E2BEFA4();
  v73 = *(v248 - 8);
  MEMORY[0x2A1C7C4A8](v248);
  v75 = v181 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E058EF8(0);
  v198 = v76;
  MEMORY[0x2A1C7C4A8](v76);
  v201 = (v181 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0));
  started = type metadata accessor for PregnancyStartDateInputView(0);
  v79 = *(a1 + *(started + 24));
  v80 = a1 + *(started + 20);
  v81 = (v73 + 104);
  v249 = v73;
  v82 = (v73 + 16);
  v240 = v75;
  if (v79 > 1)
  {
    v181[2] = v81;
    v181[1] = v80;
    if (v79 == 2)
    {
      sub_29E199B24(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
      v205 = v99;
      sub_29E2C2A24();
      LODWORD(v203) = *MEMORY[0x29EDC2488];
      v100 = v249;
      v202 = *(v249 + 104);
      v101 = v75;
      v102 = v248;
      v202(v75);
      v103 = *(v200 + 20);
      v201 = *(v100 + 16);
      v104 = v187;
      v201(&v187[v103], v101, v102);
      v198 = type metadata accessor for PregnancyDatesInputViewModel();
      v194 = sub_29E19695C(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);

      sub_29E2C2A44();
      sub_29E199C04(v104, v197, type metadata accessor for GestationalAgeInWeeksAndDaysPickerRow);
      swift_storeEnumTagMultiPayload();
      sub_29E19695C(&qword_2A18186F8, type metadata accessor for EstimatedDueDatePickerRow);
      sub_29E19695C(&qword_2A1818700, type metadata accessor for GestationalAgeInWeeksAndDaysPickerRow);
      v105 = v199;
      sub_29E2C1C74();
      sub_29E199C04(v105, v223, sub_29DEE1704);
      swift_storeEnumTagMultiPayload();
      sub_29DEE1BD4();
      sub_29DEE1C7C();
      v106 = v224;
      sub_29E2C1C74();
      sub_29E198B5C(v105, sub_29DEE1704);
      v107 = v231;
      sub_29E199C04(v106, v231, sub_29DEE1660);
      swift_storeEnumTagMultiPayload();
      v225 = sub_29DEE1B8C();
      v223 = sub_29DEE1D5C();
      v108 = v239;
      sub_29E2C1C74();
      sub_29E198B5C(v106, sub_29DEE1660);
      v224 = sub_29DEE1618;
      v109 = v233;
      sub_29E199C04(v108, v233, sub_29DEE1618);
      swift_storeEnumTagMultiPayload();
      v222 = type metadata accessor for EndDatePickerRow();
      v221 = sub_29E1969A4(&qword_2A1818710, sub_29DEE1618, sub_29DEE1B8C, sub_29DEE1D5C);
      v200 = sub_29E19695C(&qword_2A1818718, type metadata accessor for EndDatePickerRow);
      v110 = v245;
      sub_29E2C1C74();

      v199 = sub_29DEE1618;
      sub_29E198B5C(v108, sub_29DEE1618);
      sub_29E198B5C(v104, type metadata accessor for GestationalAgeInWeeksAndDaysPickerRow);
      v111 = *(v100 + 8);
      v249 = v100 + 8;
      v197 = v111;
      v112 = v240;
      v113 = v248;
      v111(v240, v248);
      v114 = sub_29E2C1FE4();
      sub_29E2C1424();
      v115 = v110 + *(v230 + 36);
      *v115 = v114;
      *(v115 + 8) = v116;
      *(v115 + 16) = v117;
      *(v115 + 24) = v118;
      *(v115 + 32) = v119;
      *(v115 + 40) = 0;
      sub_29E2C2974();
      sub_29E2C2A24();
      (v202)(v112, v203, v113);
      v120 = v189;
      v201(&v189[*(v206 + 20)], v112, v113);

      sub_29E2C2A44();
      sub_29E199C04(v120, v207, type metadata accessor for GestationalAgeOnDatePickerRow);
      swift_storeEnumTagMultiPayload();
      sub_29E19695C(&qword_2A18186C0, type metadata accessor for GestationalAgeOnDatePickerRow);
      sub_29E19695C(&qword_2A18186C8, type metadata accessor for EmbryoAgeAtTransferPickerRow);
      v121 = v208;
      sub_29E2C1C74();
      sub_29E199C04(v121, v210, sub_29DEE1794);
      swift_storeEnumTagMultiPayload();
      sub_29DEE19CC();
      sub_29DEE1AAC();
      v122 = v228;
      sub_29E2C1C74();
      sub_29E198B5C(v121, sub_29DEE1794);
      sub_29E199C04(v122, v107, sub_29DEE174C);
      swift_storeEnumTagMultiPayload();
      sub_29E2C1C74();
      sub_29E198B5C(v122, sub_29DEE174C);
      sub_29E199C04(v108, v109, v224);
      swift_storeEnumTagMultiPayload();
      v123 = v232;
      sub_29E2C1C74();

      sub_29E198B5C(v108, v199);
      sub_29E198B5C(v120, type metadata accessor for GestationalAgeOnDatePickerRow);
      v197(v240, v113);
      LOBYTE(v108) = sub_29E2C1FD4();
      sub_29E2C1424();
      v124 = v123 + *(v230 + 36);
      v125 = v123;
      *v124 = v108;
      *(v124 + 8) = v126;
      *(v124 + 16) = v127;
      *(v124 + 24) = v128;
      *(v124 + 32) = v129;
      *(v124 + 40) = 0;
      v169 = v212;
      sub_29E199C04(v245, v212, sub_29DEE1574);
      v170 = v214;
      v171 = *(v214 + 16);
      v172 = v213;
      v173 = v215;
      v171(v213, v246, v215);
      v174 = v211;
      sub_29E199C04(v125, v211, sub_29DEE1574);
    }

    else
    {
      sub_29E199B24(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
      v225 = v138;
      sub_29E2C2A24();
      LODWORD(v224) = *MEMORY[0x29EDC2488];
      v139 = v249;
      v223 = *(v249 + 104);
      v140 = v248;
      v223(v75);
      v141 = *(v209 + 20);
      v222 = *(v139 + 16);
      v181[0] = v82;
      v142 = v188;
      v222(&v188[v141], v75, v140);
      v221 = type metadata accessor for PregnancyDatesInputViewModel();
      v205 = sub_29E19695C(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);

      sub_29E2C2A44();
      sub_29E199C04(v142, v207, type metadata accessor for EmbryoAgeAtTransferPickerRow);
      swift_storeEnumTagMultiPayload();
      sub_29E19695C(&qword_2A18186C0, type metadata accessor for GestationalAgeOnDatePickerRow);
      sub_29E19695C(&qword_2A18186C8, type metadata accessor for EmbryoAgeAtTransferPickerRow);
      v143 = v208;
      sub_29E2C1C74();
      v144 = v210;
      sub_29E199C04(v143, v210, sub_29DEE1794);
      swift_storeEnumTagMultiPayload();
      v209 = sub_29DEE19CC();
      v207 = sub_29DEE1AAC();
      v145 = v228;
      sub_29E2C1C74();
      sub_29E198B5C(v143, sub_29DEE1794);
      v208 = sub_29DEE174C;
      v146 = v231;
      sub_29E199C04(v145, v231, sub_29DEE174C);
      swift_storeEnumTagMultiPayload();
      v206 = sub_29DEE1B8C();
      v204 = sub_29DEE1D5C();
      v147 = v239;
      sub_29E2C1C74();
      v203 = sub_29DEE174C;
      sub_29E198B5C(v145, sub_29DEE174C);
      v202 = sub_29DEE1618;
      v148 = v233;
      sub_29E199C04(v147, v233, sub_29DEE1618);
      swift_storeEnumTagMultiPayload();
      v201 = type metadata accessor for EndDatePickerRow();
      v200 = sub_29E1969A4(&qword_2A1818710, sub_29DEE1618, sub_29DEE1B8C, sub_29DEE1D5C);
      v199 = sub_29E19695C(&qword_2A1818718, type metadata accessor for EndDatePickerRow);
      v149 = v245;
      sub_29E2C1C74();

      v198 = sub_29DEE1618;
      sub_29E198B5C(v147, sub_29DEE1618);
      sub_29E198B5C(v142, type metadata accessor for EmbryoAgeAtTransferPickerRow);
      v150 = *(v139 + 8);
      v249 = v139 + 8;
      v197 = v150;
      v151 = v240;
      v152 = v248;
      v150(v240, v248);
      LOBYTE(v139) = sub_29E2C1FE4();
      sub_29E2C1424();
      v153 = v149 + *(v230 + 36);
      *v153 = v139;
      *(v153 + 8) = v154;
      *(v153 + 16) = v155;
      *(v153 + 24) = v156;
      *(v153 + 32) = v157;
      *(v153 + 40) = 0;
      sub_29E2C2974();
      sub_29E2C2A24();
      v158 = v152;
      (v223)(v151, v224, v152);
      v159 = v194;
      v222(&v194[*(v191 + 20)], v151, v158);

      sub_29E2C2A44();
      sub_29E199C04(v159, v192, type metadata accessor for EmbryoTransferDatePickerRow);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for PastPregnancyStartDatePickerRow();
      sub_29E19695C(&qword_2A18186A8, type metadata accessor for EmbryoTransferDatePickerRow);
      sub_29E19695C(&qword_2A18186B0, type metadata accessor for PastPregnancyStartDatePickerRow);
      v160 = v193;
      sub_29E2C1C74();
      sub_29E199C04(v160, v144, sub_29DEE17DC);
      swift_storeEnumTagMultiPayload();
      v161 = v228;
      sub_29E2C1C74();
      sub_29E198B5C(v160, sub_29DEE17DC);
      sub_29E199C04(v161, v146, v208);
      swift_storeEnumTagMultiPayload();
      v162 = v239;
      sub_29E2C1C74();
      sub_29E198B5C(v161, v203);
      sub_29E199C04(v162, v148, v202);
      swift_storeEnumTagMultiPayload();
      v163 = v232;
      sub_29E2C1C74();

      sub_29E198B5C(v162, v198);
      sub_29E198B5C(v159, type metadata accessor for EmbryoTransferDatePickerRow);
      v197(v240, v248);
      LOBYTE(v148) = sub_29E2C1FD4();
      sub_29E2C1424();
      v164 = v163 + *(v230 + 36);
      *v164 = v148;
      *(v164 + 8) = v165;
      *(v164 + 16) = v166;
      *(v164 + 24) = v167;
      *(v164 + 32) = v168;
      *(v164 + 40) = 0;
      v169 = v212;
      sub_29E199C04(v245, v212, sub_29DEE1574);
      v170 = v214;
      v171 = *(v214 + 16);
      v172 = v213;
      v173 = v215;
      v171(v213, v246, v215);
      v174 = v211;
      sub_29E199C04(v163, v211, sub_29DEE1574);
    }

    v175 = v219;
    sub_29E199C04(v169, v219, sub_29DEE1574);
    sub_29DEE1500();
    v177 = v176;
    v171((v175 + *(v176 + 48)), v172, v173);
    sub_29E199C04(v174, v175 + *(v177 + 64), sub_29DEE1574);
    sub_29E198B5C(v174, sub_29DEE1574);
    v178 = *(v170 + 8);
    v178(v172, v173);
    sub_29E198B5C(v169, sub_29DEE1574);
    sub_29E199C04(v175, v218, sub_29E196864);
    swift_storeEnumTagMultiPayload();
    sub_29E19695C(&qword_2A1818678, sub_29E196864);
    v179 = v220;
    sub_29E2C1C74();
    sub_29E199C04(v179, v236, sub_29E196830);
    swift_storeEnumTagMultiPayload();
    sub_29E0590B8();
    sub_29E196A30();
    sub_29E2C1C74();
    sub_29E198B5C(v179, sub_29E196830);
    sub_29E198B5C(v175, sub_29E196864);
    sub_29E198B5C(v232, sub_29DEE1574);
    v178(v246, v173);
    v98 = v245;
    v97 = sub_29DEE1574;
  }

  else if (v79)
  {
    sub_29E199B24(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
    sub_29E2C2A24();
    v130 = v248;
    v131 = v249;
    (*(v249 + 104))(v75, *MEMORY[0x29EDC2488], v248);
    v132 = v186;
    (*(v131 + 16))(&v186[*(v196 + 20)], v75, v130);
    type metadata accessor for PregnancyDatesInputViewModel();
    sub_29E19695C(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);

    sub_29E2C2A44();
    sub_29E199C04(v132, v197, type metadata accessor for EstimatedDueDatePickerRow);
    swift_storeEnumTagMultiPayload();
    sub_29E19695C(&qword_2A18186F8, type metadata accessor for EstimatedDueDatePickerRow);
    sub_29E19695C(&qword_2A1818700, type metadata accessor for GestationalAgeInWeeksAndDaysPickerRow);
    v133 = v199;
    sub_29E2C1C74();
    sub_29E199C04(v133, v223, sub_29DEE1704);
    swift_storeEnumTagMultiPayload();
    sub_29DEE1BD4();
    sub_29DEE1C7C();
    v134 = v224;
    sub_29E2C1C74();
    sub_29E198B5C(v133, sub_29DEE1704);
    sub_29E199C04(v134, v231, sub_29DEE1660);
    swift_storeEnumTagMultiPayload();
    sub_29DEE1B8C();
    sub_29DEE1D5C();
    v135 = v239;
    sub_29E2C1C74();
    sub_29E198B5C(v134, sub_29DEE1660);
    sub_29E199C04(v135, v233, sub_29DEE1618);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for EndDatePickerRow();
    sub_29E1969A4(&qword_2A1818710, sub_29DEE1618, sub_29DEE1B8C, sub_29DEE1D5C);
    sub_29E19695C(&qword_2A1818718, type metadata accessor for EndDatePickerRow);
    v136 = v201;
    sub_29E2C1C74();

    sub_29E198B5C(v135, sub_29DEE1618);
    sub_29E198B5C(v132, type metadata accessor for EstimatedDueDatePickerRow);
    (*(v131 + 8))(v240, v130);
    sub_29E199C04(v136, v203, sub_29E058EF8);
    swift_storeEnumTagMultiPayload();
    sub_29E059130();
    v137 = v205;
    sub_29E2C1C74();
    sub_29E199C04(v137, v236, sub_29E05901C);
    swift_storeEnumTagMultiPayload();
    sub_29E0590B8();
    sub_29E196A30();
    sub_29E2C1C74();
    sub_29E198B5C(v137, sub_29E05901C);
    v97 = sub_29E058EF8;
    v98 = v136;
  }

  else
  {
    sub_29E199B24(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
    sub_29E2C2A24();
    v246 = v250;
    v83 = v248;
    (*v81)(v75, *MEMORY[0x29EDC2488], v248);
    v84 = v72;
    v85 = v83;
    (*v82)(v84 + *(MenstrualPeriodDatePickerRow + 20), v75, v83);
    sub_29E2C3314();
    v86 = v182;
    (*(v182 + 16))(v66, v69, v64);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v87 = qword_2A1A67F80;
    sub_29E2BCC74();
    v88 = sub_29E2C3414();
    v90 = v89;
    (*(v86 + 8))(v69, v64);
    type metadata accessor for PregnancyDatesInputViewModel();
    sub_29E19695C(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);

    sub_29E2C2A44();
    v91 = (v84 + *(MenstrualPeriodDatePickerRow + 24));
    *v91 = v88;
    v91[1] = v90;
    sub_29E199C04(v84, v184, type metadata accessor for LastMenstrualPeriodDatePickerRow);
    swift_storeEnumTagMultiPayload();
    sub_29E19695C(&qword_2A18186E8, type metadata accessor for LastMenstrualPeriodDatePickerRow);
    v92 = v185;
    sub_29E2C1C74();
    sub_29E199C04(v92, v223, sub_29DEE16A8);
    swift_storeEnumTagMultiPayload();
    sub_29DEE1BD4();
    sub_29DEE1C7C();
    v93 = v224;
    sub_29E2C1C74();
    sub_29E198B5C(v92, sub_29DEE16A8);
    sub_29E199C04(v93, v231, sub_29DEE1660);
    swift_storeEnumTagMultiPayload();
    sub_29DEE1B8C();
    sub_29DEE1D5C();
    v94 = v239;
    sub_29E2C1C74();
    sub_29E198B5C(v93, sub_29DEE1660);
    sub_29E199C04(v94, v233, sub_29DEE1618);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for EndDatePickerRow();
    sub_29E1969A4(&qword_2A1818710, sub_29DEE1618, sub_29DEE1B8C, sub_29DEE1D5C);
    sub_29E19695C(&qword_2A1818718, type metadata accessor for EndDatePickerRow);
    v95 = v201;
    sub_29E2C1C74();

    sub_29E198B5C(v94, sub_29DEE1618);
    sub_29E198B5C(v84, type metadata accessor for LastMenstrualPeriodDatePickerRow);
    (*(v249 + 8))(v240, v85);
    sub_29E199C04(v95, v203, sub_29E058EF8);
    swift_storeEnumTagMultiPayload();
    sub_29E059130();
    v96 = v205;
    sub_29E2C1C74();
    sub_29E199C04(v96, v236, sub_29E05901C);
    swift_storeEnumTagMultiPayload();
    sub_29E0590B8();
    sub_29E196A30();
    sub_29E2C1C74();
    sub_29E198B5C(v96, sub_29E05901C);
    v97 = sub_29E058EF8;
    v98 = v95;
  }

  return sub_29E198B5C(v98, v97);
}

uint64_t sub_29E196334@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_29E2C1A64();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E199B24(0, &qword_2A1819020, MEMORY[0x29EDBC518], MEMORY[0x29EDBC388]);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v14 - v9;
  sub_29DF5F0F4(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_29E2C16E4();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_29E2C3A24();
    v13 = sub_29E2C1F84();
    sub_29E2C03B4();

    sub_29E2C1A54();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_29E196540@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_29E2C1BD4();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  sub_29E198AF0(0, &qword_2A181E600, sub_29E1965B4);
  return sub_29E193000(v1, a1 + *(v3 + 44));
}

void sub_29E1965E8()
{
  if (!qword_2A181E610)
  {
    sub_29E196658();
    sub_29E196AD8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181E610);
    }
  }
}

void sub_29E196658()
{
  if (!qword_2A181E618)
  {
    sub_29E196708(255);
    sub_29E19957C(&qword_2A181E638, sub_29E196708, sub_29E196898);
    v0 = type metadata accessor for StyledVStackListSection();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E618);
    }
  }
}

void sub_29E196744(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_29E1967C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_29E196898()
{
  result = qword_2A181E640;
  if (!qword_2A181E640)
  {
    sub_29E196744(255, &qword_2A181E628, sub_29E05901C, sub_29E196830, MEMORY[0x29EDBC7F0]);
    sub_29E0590B8();
    sub_29E196A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181E640);
  }

  return result;
}

uint64_t sub_29E19695C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E1969A4(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29E196A30()
{
  result = qword_2A181E648;
  if (!qword_2A181E648)
  {
    sub_29E196830(255);
    sub_29E19695C(&qword_2A1818678, sub_29E196864);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181E648);
  }

  return result;
}

void sub_29E196B0C()
{
  if (!qword_2A181E658)
  {
    sub_29E196BBC();
    sub_29E19695C(&qword_2A181E680, sub_29E196BBC);
    v0 = type metadata accessor for StyledVStackListSection();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E658);
    }
  }
}

void sub_29E196BBC()
{
  if (!qword_2A181E660)
  {
    sub_29E196C50(255);
    sub_29E19695C(&qword_2A181E678, sub_29E196C50);
    v0 = sub_29E2C2884();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E660);
    }
  }
}

uint64_t sub_29E196C78@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v21 - v8;
  type metadata accessor for PregnancyStartDateMethodInputRow(0);
  sub_29E199B24(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  sub_29E2C2A24();
  v10 = v22;
  swift_getKeyPath();
  v22 = v10;
  sub_29E19695C(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
  sub_29E2BCFE4();

  v11 = *(v10 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__selectedInputMethod);

  if (v11 == 4)
  {
    sub_29E2C3314();
    (*(v4 + 16))(v6, v9, v3);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v12 = qword_2A1A67F80;
    sub_29E2BCC74();
    v13 = sub_29E2C3414();
    v15 = v14;
    (*(v4 + 8))(v9, v3);
    v22 = v13;
    v23 = v15;
  }

  else
  {
    v22 = sub_29E03F758();
    v23 = v16;
  }

  sub_29DE9DE68();
  result = sub_29E2C2294();
  *a1 = result;
  *(a1 + 8) = v18;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v20;
  return result;
}

uint64_t sub_29E196F90@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v31[-v8];
  type metadata accessor for PregnancyStartDateMethodInputRow(0);
  sub_29E199B24(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  sub_29E2C2A24();
  v10 = v32;
  swift_getKeyPath();
  v32 = v10;
  sub_29E19695C(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
  sub_29E2BCFE4();

  sub_29E2C3314();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v11 = qword_2A1A67F80;
  sub_29E2BCC74();
  v12 = sub_29E2C3414();
  v14 = v13;
  (*(v4 + 8))(v9, v3);
  v32 = v12;
  v33 = v14;
  sub_29DE9DE68();
  v15 = sub_29E2C2294();
  v17 = v16;
  LOBYTE(v14) = v18;
  v32 = sub_29E2C2664();
  v19 = sub_29E2C2224();
  v21 = v20;
  v23 = v22;
  sub_29DED6478(v15, v17, v14 & 1);

  sub_29E2C2094();
  v24 = sub_29E2C2204();
  v26 = v25;
  LOBYTE(v14) = v27;
  v29 = v28;
  sub_29DED6478(v19, v21, v23 & 1);

  *a1 = v24;
  *(a1 + 8) = v26;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v29;
  return result;
}

uint64_t sub_29E19737C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v64 = a1;
  v3 = sub_29E2C1E24();
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v57 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for PregnancyStartDateMethodInputRow(0);
  v56 = *(started - 8);
  MEMORY[0x2A1C7C4A8](started);
  v61 = v5;
  v62 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v55 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_29E2C3384();
  v8 = *(v51 - 8);
  MEMORY[0x2A1C7C4A8](v51);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v50 - v12;
  v14 = sub_29E2C1F14();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E198E3C(0);
  v19 = v18;
  MEMORY[0x2A1C7C4A8](v18);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E199448();
  v52 = *(v22 - 8);
  v53 = v22;
  MEMORY[0x2A1C7C4A8](v22);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E196744(0, &qword_2A181E778, sub_29E199448, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558]);
  v66 = v25;
  MEMORY[0x2A1C7C4A8](v25);
  v54 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v27);
  v65 = &v50 - v28;
  v63 = v2;
  sub_29E197B98(v2, v21);
  v29 = &v21[*(v19 + 36)];
  *v29 = sub_29E1987A4;
  v29[1] = 0;
  sub_29E2C1EF4();
  v30 = sub_29E1994CC();
  sub_29E2C24A4();
  (*(v15 + 8))(v17, v14);
  v31 = v10;
  v32 = v51;
  sub_29E198B5C(v21, sub_29E198E3C);
  sub_29E2C3314();
  (*(v8 + 16))(v31, v13, v32);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v33 = qword_2A1A67F80;
  sub_29E2BCC74();
  v34 = sub_29E2C3414();
  v36 = v35;
  (*(v8 + 8))(v13, v32);
  v67 = v34;
  v68 = v36;
  v69 = v19;
  v70 = v30;
  swift_getOpaqueTypeConformance2();
  sub_29DE9DE68();
  v38 = v53;
  v37 = v54;
  sub_29E2C2444();

  (*(v52 + 8))(v24, v38);
  v40 = v62;
  v39 = v63;
  sub_29E199C04(v63, v62, type metadata accessor for PregnancyStartDateMethodInputRow);
  v41 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v42 = swift_allocObject();
  v56 = type metadata accessor for PregnancyStartDateMethodInputRow;
  sub_29E199718(v40, v42 + v41, type metadata accessor for PregnancyStartDateMethodInputRow);
  v43 = v57;
  sub_29E2C1E14();
  sub_29E2C1724();

  (*(v59 + 8))(v43, v60);
  sub_29DE8893C(v37);
  v44 = v39 + *(started + 24);
  v45 = *v44;
  v46 = *(v44 + 8);
  LOBYTE(v69) = v45;
  v70 = v46;
  sub_29E199AD4(0, &qword_2A1819E88, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);
  sub_29E2C27F4();
  sub_29E199C04(v39, v40, type metadata accessor for PregnancyStartDateMethodInputRow);
  v47 = swift_allocObject();
  sub_29E199718(v40, v47 + v41, v56);
  type metadata accessor for PregnancyStartDateMethodInputPickerSheet();
  sub_29E1999B0();
  sub_29E19695C(&qword_2A181E788, type metadata accessor for PregnancyStartDateMethodInputPickerSheet);
  v48 = v65;
  sub_29E2C2554();

  return sub_29DE8893C(v48);
}

uint64_t sub_29E197B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33[2] = a2;
  sub_29E1992C0();
  v33[3] = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E196744(0, &qword_2A181E798, sub_29E198F74, sub_29E1992C0, MEMORY[0x29EDBC7E8]);
  v33[0] = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v8 = v33 - v7;
  sub_29E1990EC();
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v14 = v33 - v13;
  sub_29E198F74();
  v33[1] = v15;
  MEMORY[0x2A1C7C4A8](v15);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29E2C16E4();
  v19 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v21 = v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E196334(v21);
  v22 = sub_29E2C16C4();
  (*(v19 + 8))(v21, v18);
  v23 = sub_29E2C1AA4();
  if (v22)
  {
    *v17 = v23;
    *(v17 + 1) = 0;
    v17[16] = 1;
    sub_29E198AF0(0, &qword_2A181E7A8, sub_29E199008);
    v25 = &v17[*(v24 + 44)];
    *v14 = sub_29E2C1BD4();
    *(v14 + 1) = 0;
    v14[16] = 1;
    sub_29E198AF0(0, &qword_2A181E7B0, sub_29E199180);
    sub_29E198120(a1, &v14[*(v26 + 44)]);
    sub_29E199C04(v14, v11, sub_29E1990EC);
    sub_29E199C04(v11, v25, sub_29E1990EC);
    sub_29E199088(0, &qword_2A181E6F8, sub_29E1990EC);
    v28 = v25 + *(v27 + 48);
    *v28 = 0;
    *(v28 + 8) = 0;
    sub_29E198B5C(v14, sub_29E1990EC);
    sub_29E198B5C(v11, sub_29E1990EC);
    sub_29E199C04(v17, v8, sub_29E198F74);
    swift_storeEnumTagMultiPayload();
    sub_29E19695C(&qword_2A181E768, sub_29E198F74);
    sub_29E19695C(&qword_2A181E770, sub_29E1992C0);
    sub_29E2C1C74();
    v29 = sub_29E198F74;
    v30 = v17;
  }

  else
  {
    *v5 = v23;
    *(v5 + 1) = 0;
    v5[16] = 1;
    sub_29E198AF0(0, &qword_2A181E7A0, sub_29E199354);
    sub_29E198458(a1, &v5[*(v31 + 44)]);
    sub_29E199C04(v5, v8, sub_29E1992C0);
    swift_storeEnumTagMultiPayload();
    sub_29E19695C(&qword_2A181E768, sub_29E198F74);
    sub_29E19695C(&qword_2A181E770, sub_29E1992C0);
    sub_29E2C1C74();
    v29 = sub_29E1992C0;
    v30 = v5;
  }

  return sub_29E198B5C(v30, v29);
}

uint64_t sub_29E198120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  started = type metadata accessor for PregnancyStartDateMethodInputRow(0);
  v5 = *(started - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](started - 8);
  sub_29E19926C(0, &qword_2A18182B0, MEMORY[0x29EDBCA10], MEMORY[0x29EDBC270]);
  v32 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v31 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v27 - v11;
  sub_29E196C78(v36);
  v14 = v36[0];
  v13 = v36[1];
  v29 = v37;
  v30 = v38;
  sub_29E199C04(a1, &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PregnancyStartDateMethodInputRow);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_29E199718(&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for PregnancyStartDateMethodInputRow);
  v33 = a1;
  v17 = v12;
  v28 = v12;
  sub_29E2C2824();
  LOBYTE(v36[0]) = v29;
  v35 = 0;
  v34 = 1;
  v18 = *(v8 + 16);
  v19 = v31;
  v20 = v17;
  v21 = v32;
  v18(v31, v20, v32);
  LOBYTE(a1) = v36[0];
  v22 = v35;
  v23 = v34;
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = a1;
  *(a2 + 24) = v30;
  *(a2 + 32) = v22;
  *(a2 + 33) = v23;
  sub_29E1991B4();
  v18((a2 + *(v24 + 48)), v19, v21);
  sub_29DE93208(v14, v13, a1);
  v25 = *(v8 + 8);
  sub_29E2BF404();
  v25(v28, v21);
  v25(v19, v21);
  sub_29DED6478(v14, v13, v36[0]);
}

uint64_t sub_29E198458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  started = type metadata accessor for PregnancyStartDateMethodInputRow(0);
  v29 = *(started - 8);
  v5 = *(v29 + 64);
  MEMORY[0x2A1C7C4A8](started - 8);
  sub_29E19926C(0, &qword_2A18182B0, MEMORY[0x29EDBCA10], MEMORY[0x29EDBC270]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v31 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v26 - v11;
  sub_29E196C78(v36);
  v14 = v36[0];
  v13 = v36[1];
  v28 = v37;
  v30 = v38;
  sub_29E199C04(a1, &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PregnancyStartDateMethodInputRow);
  v15 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v16 = swift_allocObject();
  sub_29E199718(&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for PregnancyStartDateMethodInputRow);
  v32 = a1;
  v17 = v12;
  v27 = v12;
  sub_29E2C2824();
  LOBYTE(v36[0]) = v28;
  v35 = 0;
  v34 = 1;
  v33 = 0;
  v18 = *(v8 + 16);
  v19 = v31;
  v18(v31, v17, v7);
  LOBYTE(v17) = v36[0];
  v20 = v35;
  v21 = v34;
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v17;
  *(a2 + 24) = v30;
  *(a2 + 32) = v20;
  *(a2 + 33) = v21;
  v22 = v33;
  *(a2 + 40) = 0x4024000000000000;
  *(a2 + 48) = v22;
  sub_29E199388();
  v18((a2 + *(v23 + 64)), v19, v7);
  sub_29DE93208(v14, v13, v17);
  v24 = *(v8 + 8);
  sub_29E2BF404();
  v24(v27, v7);
  v24(v19, v7);
  sub_29DED6478(v14, v13, v36[0]);
}

uint64_t sub_29E1987CC()
{
  type metadata accessor for PregnancyStartDateMethodInputRow(0);
  sub_29E199AD4(0, &qword_2A1819E88, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);

  sub_29E2C27D4();
  sub_29E2C27E4();
}

uint64_t sub_29E198894@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PregnancyStartDateMethodInputRow(0);
  sub_29E199B24(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  sub_29E2C2A24();
  sub_29E2C2A24();
  swift_getKeyPath();
  sub_29E19695C(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
  sub_29E2BCFE4();

  started = type metadata accessor for PregnancyStartDateMethodInputPickerSheet();
  v3 = a1 + *(started + 20);
  sub_29E199AD4(0, &qword_2A18188F0, &type metadata for PregnancyStartDateInputMethod, MEMORY[0x29EDC9C68]);
  sub_29E2C27C4();
  *v3 = v6;
  *(v3 + 8) = v7;
  v4 = *(started + 24);
  *(a1 + v4) = swift_getKeyPath();
  sub_29E199B24(0, &unk_2A18199F0, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for PregnancyDatesInputViewModel();

  sub_29E2C2A44();
  sub_29E199B88();
  sub_29E2C27E4();
}

void sub_29E198AF0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_29E198B5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29E198BBC()
{
  if (!qword_2A181E6A8)
  {
    sub_29E1965B4(255);
    sub_29E19695C(&qword_2A181E6B0, sub_29E1965B4);
    v0 = sub_29E2C28F4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E6A8);
    }
  }
}

void sub_29E198C98()
{
  sub_29E199B24(319, &qword_2A1819460, MEMORY[0x29EDBC518], MEMORY[0x29EDBC390]);
  if (v0 <= 0x3F)
  {
    sub_29E199B24(319, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
    if (v1 <= 0x3F)
    {
      sub_29E199AD4(319, &qword_2A1819E88, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_29E198DCC()
{
  result = qword_2A181E6C8;
  if (!qword_2A181E6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181E6C8);
  }

  return result;
}

void sub_29E198E64(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_29E198F04(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_29E196744(255, a3, a4, a5, MEMORY[0x29EDBC7F0]);
    v6 = sub_29E2C26F4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29E198F74()
{
  if (!qword_2A181E6E8)
  {
    sub_29E199008(255);
    sub_29E19695C(&qword_2A181E720, sub_29E199008);
    v0 = sub_29E2C2884();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E6E8);
    }
  }
}

void sub_29E199030(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_29E199088(255, a3, a4);
    v5 = sub_29E2C2B14();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29E199088(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_29E1990EC()
{
  if (!qword_2A181E700)
  {
    sub_29E199180(255);
    sub_29E19695C(&qword_2A181E718, sub_29E199180);
    v0 = sub_29E2C28F4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E700);
    }
  }
}

void sub_29E1991B4()
{
  if (!qword_2A181E710)
  {
    sub_29E19926C(255, &qword_2A181B7E8, MEMORY[0x29EDBC5E8], MEMORY[0x29EDBC558]);
    sub_29E19926C(255, &qword_2A18182B0, MEMORY[0x29EDBCA10], MEMORY[0x29EDBC270]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181E710);
    }
  }
}

void sub_29E19926C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x29EDBCA18]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29E1992C0()
{
  if (!qword_2A181E728)
  {
    sub_29E199354(255);
    sub_29E19695C(&qword_2A181E740, sub_29E199354);
    v0 = sub_29E2C2884();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E728);
    }
  }
}

void sub_29E199388()
{
  if (!qword_2A181E738)
  {
    sub_29E19926C(255, &qword_2A181B7E8, MEMORY[0x29EDBC5E8], MEMORY[0x29EDBC558]);
    sub_29E19926C(255, &qword_2A18182B0, MEMORY[0x29EDBCA10], MEMORY[0x29EDBC270]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A181E738);
    }
  }
}

void sub_29E199448()
{
  if (!qword_2A181E748)
  {
    sub_29E198E3C(255);
    sub_29E1994CC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A181E748);
    }
  }
}

unint64_t sub_29E1994CC()
{
  result = qword_2A181E750;
  if (!qword_2A181E750)
  {
    sub_29E198E3C(255);
    sub_29E19957C(&qword_2A181E758, sub_29E198EC8, sub_29E1995F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181E750);
  }

  return result;
}

uint64_t sub_29E19957C(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29E1995F8()
{
  result = qword_2A181E760;
  if (!qword_2A181E760)
  {
    sub_29E196744(255, &qword_2A181E6E0, sub_29E198F74, sub_29E1992C0, MEMORY[0x29EDBC7F0]);
    sub_29E19695C(&qword_2A181E768, sub_29E198F74);
    sub_29E19695C(&qword_2A181E770, sub_29E1992C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181E760);
  }

  return result;
}

uint64_t sub_29E199718(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E199784()
{
  started = type metadata accessor for PregnancyStartDateMethodInputRow(0);
  v2 = *(*(started - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(started - 8) + 64);
  sub_29E199B24(0, &qword_2A1819020, MEMORY[0x29EDBC518], MEMORY[0x29EDBC388]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_29E2C16E4();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = *(started + 20);
  sub_29E199B24(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29E199940@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PregnancyStartDateMethodInputRow(0);

  return sub_29E198894(a1);
}

unint64_t sub_29E1999B0()
{
  result = qword_2A181E780;
  if (!qword_2A181E780)
  {
    sub_29E196744(255, &qword_2A181E778, sub_29E199448, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558]);
    sub_29E198E3C(255);
    sub_29E1994CC();
    swift_getOpaqueTypeConformance2();
    sub_29E19695C(&qword_2A1819290, MEMORY[0x29EDBC0A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181E780);
  }

  return result;
}

void sub_29E199AD4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29E199B24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E199B88()
{
  if (!qword_2A181E790)
  {
    sub_29E199AD4(255, &qword_2A18188F0, &type metadata for PregnancyStartDateInputMethod, MEMORY[0x29EDC9C68]);
    v0 = sub_29E2C2804();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E790);
    }
  }
}

uint64_t sub_29E199C04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E199CD0(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_29E2C0514();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v8);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = (*(a4 + 24))(a3, a4, v10);
  if (result != 10)
  {
    if (result >= a1)
    {
      sub_29E2C04B4();
      v15 = sub_29E2C0504();
      v16 = sub_29E2C3A04();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v26 = v18;
        *v17 = 136446466;
        v19 = sub_29E2C4AE4();
        v21 = sub_29DFAA104(v19, v20, &v26);

        *(v17 + 4) = v21;
        *(v17 + 12) = 2082;
        v25[7] = a1;
        v22 = sub_29E2C3464();
        v24 = sub_29DFAA104(v22, v23, &v26);

        *(v17 + 14) = v24;
        _os_log_impl(&dword_29DE74000, v15, v16, "[%{public}s] Skipping metrics for already completed step: %{public}s", v17, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED82140](v18, -1, -1);
        MEMORY[0x29ED82140](v17, -1, -1);
      }

      return (*(v9 + 8))(v12, v8);
    }

    else
    {
      (*(a4 + 32))(a1, a3, a4);
      v14 = sub_29E199F68(a3, a4);

      return sub_29E0A307C(a2 | (a1 << 8), v14);
    }
  }

  return result;
}

id sub_29E199F68(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x29EDCA608];
  v2 = (*(a2 + 48))();
  v9[0] = 0;
  v3 = [v2 biologicalSexWithError_];

  if (v3)
  {
    v4 = v9[0];
    v5 = [v3 biologicalSex];
  }

  else
  {
    v6 = v9[0];
    v7 = sub_29E2BC7E4();

    swift_willThrow();
    return 0;
  }

  return v5;
}

uint64_t ReviewPregnancyInMedicalIDUserData.init(sampleUUID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29E2BCC24();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t ReviewPregnancyInMedicalIDUserData.encode()()
{
  sub_29E2BC2E4();
  swift_allocObject();
  sub_29E2BC2D4();
  type metadata accessor for ReviewPregnancyInMedicalIDUserData();
  sub_29E19A8B8(&qword_2A181C528, type metadata accessor for ReviewPregnancyInMedicalIDUserData);
  v0 = sub_29E2BC2C4();

  return v0;
}

uint64_t type metadata accessor for ReviewPregnancyInMedicalIDUserData()
{
  result = qword_2A1A5FFA0;
  if (!qword_2A1A5FFA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ReviewPregnancyInMedicalIDUserData.init(data:)(uint64_t a1, unint64_t a2)
{
  sub_29E2BC2B4();
  swift_allocObject();
  sub_29E2BC2A4();
  type metadata accessor for ReviewPregnancyInMedicalIDUserData();
  sub_29E19A8B8(&qword_2A181E7B8, type metadata accessor for ReviewPregnancyInMedicalIDUserData);
  sub_29E2BC294();

  return sub_29DEB5BF8(a1, a2);
}

uint64_t sub_29E19A2C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x5555656C706D6173 && a2 == 0xEA00000000004449)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_29E2C4914();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_29E19A350(uint64_t a1)
{
  v2 = sub_29E19A554();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E19A38C(uint64_t a1)
{
  v2 = sub_29E19A554();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t ReviewPregnancyInMedicalIDUserData.encode(to:)(void *a1)
{
  sub_29E19A854(0, &qword_2A181E7C0, MEMORY[0x29EDC9E88]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v8 - v5;
  sub_29DE966D4(a1, a1[3]);
  sub_29E19A554();
  sub_29E2C4AA4();
  sub_29E2BCC24();
  sub_29E19A8B8(&qword_2A181E7D0, MEMORY[0x29EDB9C08]);
  sub_29E2C48A4();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_29E19A554()
{
  result = qword_2A181E7C8;
  if (!qword_2A181E7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181E7C8);
  }

  return result;
}

uint64_t ReviewPregnancyInMedicalIDUserData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_29E2BCC24();
  v19 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E19A854(0, &qword_2A181E7D8, MEMORY[0x29EDC9E80]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for ReviewPregnancyInMedicalIDUserData();
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DE966D4(a1, a1[3]);
  sub_29E19A554();
  sub_29E2C4A94();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_29E19A8B8(&qword_2A181E7E0, MEMORY[0x29EDB9C08]);
    sub_29E2C4844();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_29E19A900(v12, v17);
  }

  return sub_29DE93B3C(a1);
}

void sub_29E19A854(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E19A554();
    v7 = a3(a1, &type metadata for ReviewPregnancyInMedicalIDUserData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29E19A8B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E19A900(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReviewPregnancyInMedicalIDUserData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E19A97C(void *a1)
{
  sub_29E19A854(0, &qword_2A181E7C0, MEMORY[0x29EDC9E88]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v8 - v5;
  sub_29DE966D4(a1, a1[3]);
  sub_29E19A554();
  sub_29E2C4AA4();
  sub_29E2BCC24();
  sub_29E19A8B8(&qword_2A181E7D0, MEMORY[0x29EDB9C08]);
  sub_29E2C48A4();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_29E19AB30()
{
  result = sub_29E2BCC24();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_29E19ABB0()
{
  result = qword_2A181E7E8;
  if (!qword_2A181E7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181E7E8);
  }

  return result;
}

unint64_t sub_29E19AC08()
{
  result = qword_2A181E7F0;
  if (!qword_2A181E7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181E7F0);
  }

  return result;
}

unint64_t sub_29E19AC60()
{
  result = qword_2A181E7F8;
  if (!qword_2A181E7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181E7F8);
  }

  return result;
}

uint64_t sub_29E19ACC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_29E2BFC04();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_29E2BE114();
  if (*(a3 + 16) <= a4)
  {
    sub_29E2BF404();
    sub_29E2BE0D4();
    goto LABEL_5;
  }

  if ((a4 & 0x8000000000000000) == 0)
  {
    v16[1] = result;
    sub_29DE966D4((a3 + 40 * a4 + 32), *(a3 + 40 * a4 + 56));
    sub_29E2BF404();
    sub_29E2BE324();
LABEL_5:
    CGRectGetWidth(*&v12);
    sub_29E2BE0F4();
    sub_29E2BFBE4();
    sub_29E2BFBC4();
    (*(v8 + 8))(v10, v7);
    sub_29E19AEB8(a2, a3, a4, MEMORY[0x29EDC2C60]);
    CGRectGetHeight(v17);
    sub_29E2BE104();
  }

  __break(1u);
  return result;
}

uint64_t sub_29E19AEB8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v7 = sub_29E2BFC04();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_29E2BE114();
  v12 = result;
  if (*(a2 + 16) <= a3)
  {
    sub_29E2BF404();
    sub_29E2BE0D4();
    goto LABEL_5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    sub_29DE966D4((a2 + 40 * a3 + 32), *(a2 + 40 * a3 + 56));
    sub_29E2BF404();
    sub_29E2BE324();
LABEL_5:
    CGRectGetWidth(*&v13);
    sub_29E2BE0F4();
    sub_29E2BFBE4();
    a4(v12);

    return (*(v8 + 8))(v10, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_29E19B0D8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_29E19B1DC();
  *v3 = v1;
  v3[1] = sub_29DE9F99C;

  return MEMORY[0x2A1C61D30](a1, v4);
}

unint64_t sub_29E19B188()
{
  result = qword_2A181E800;
  if (!qword_2A181E800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181E800);
  }

  return result;
}

unint64_t sub_29E19B1DC()
{
  result = qword_2A181E808;
  if (!qword_2A181E808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181E808);
  }

  return result;
}

double sub_29E19B240(uint64_t a1, uint64_t a2)
{
  sub_29DEA68FC();
  sub_29E2C43C4();
  v3 = sub_29E2C33A4();

  sub_29E19B368(&selRef_secondaryLabelColor);
  type metadata accessor for Key(0);
  sub_29E19C5A0(&qword_2A18177F0, type metadata accessor for Key);
  v4 = sub_29E2C31F4();

  [v3 sizeWithAttributes_];
  v6 = v5;

  v7 = 1.0;
  if (a2 == 2)
  {
    v7 = 7.0;
  }

  v8 = 2.0;
  if (a2 == 2)
  {
    v8 = 8.0;
  }

  return ceil(v8 + v7 + v6);
}

unint64_t sub_29E19B368(SEL *a1)
{
  sub_29DF5A3A0(0, &qword_2A1817FD0, &qword_2A181CDD0, type metadata accessor for Key);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E2CD7A0;
  v3 = *MEMORY[0x29EDC7638];
  *(inited + 32) = *MEMORY[0x29EDC7638];
  v4 = *MEMORY[0x29EDC80F8];
  v5 = *MEMORY[0x29EDC76C8];
  v6 = MEMORY[0x29EDC7700];
  v7 = objc_opt_self();
  v8 = v3;
  v9 = [v7 preferredFontDescriptorWithTextStyle_];
  v10 = [v9 fontDescriptorWithSymbolicTraits_];
  if (v10)
  {
    v11 = v10;

    v9 = v11;
  }

  v12 = *v6;
  v13 = [v9 fontDescriptorWithDesign_];
  if (v13)
  {
    v14 = v13;

    v9 = v14;
  }

  sub_29DF5A3A0(0, &qword_2A1819158, &qword_2A1819160, type metadata accessor for AttributeName);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_29E2CAB20;
  v16 = *MEMORY[0x29EDC76D0];
  *(v15 + 32) = *MEMORY[0x29EDC76D0];
  sub_29E19C53C(0, &qword_2A1819168, sub_29DF38418, MEMORY[0x29EDC9E90]);
  v17 = swift_initStackObject();
  v18 = MEMORY[0x29EDC7708];
  *(v17 + 16) = xmmword_29E2CAB20;
  v19 = *v18;
  *(v17 + 32) = *v18;
  *(v17 + 40) = v12;
  v20 = v16;
  v21 = v19;
  v22 = sub_29E1852C8(v17);
  swift_setDeallocating();
  sub_29E19C66C(v17 + 32, sub_29DF38418);
  sub_29DF38488();
  *(v15 + 64) = v23;
  *(v15 + 40) = v22;
  sub_29E1853AC(v15);
  swift_setDeallocating();
  sub_29DF5A4C4(v15 + 32);
  type metadata accessor for AttributeName(0);
  sub_29E19C5A0(&qword_2A18177E0, type metadata accessor for AttributeName);
  v24 = sub_29E2C31F4();

  v25 = [v9 fontDescriptorByAddingAttributes_];

  v26 = [objc_opt_self() fontWithDescriptor:v25 size:0.0];
  v27 = sub_29DE9408C(0, &unk_2A1A61A00);
  *(inited + 40) = v26;
  v28 = *MEMORY[0x29EDC7640];
  *(inited + 64) = v27;
  *(inited + 72) = v28;
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 *a1];
  *(inited + 104) = sub_29DE9408C(0, &qword_2A1817FE0);
  *(inited + 80) = v31;
  v32 = sub_29E185054(inited);
  swift_setDeallocating();
  sub_29DF5A3F8(0, &qword_2A181CDD0, type metadata accessor for Key);
  swift_arrayDestroy();
  return v32;
}

double sub_29E19B764(uint64_t a1, uint64_t a2)
{
  v3 = 5.5;
  if (a2 == 2)
  {
    v4 = 5.5;
  }

  else
  {
    v4 = 2.0;
  }

  sub_29DEA68FC();
  sub_29E2C43C4();
  v5 = sub_29E2C33A4();

  sub_29E19B368(&selRef_secondaryLabelColor);
  type metadata accessor for Key(0);
  sub_29E19C5A0(&qword_2A18177F0, type metadata accessor for Key);
  v6 = sub_29E2C31F4();

  [v5 sizeWithAttributes_];
  v8 = v7;

  if (v8 < 17.0)
  {
    v9 = v4 + 17.0;
    if (a2 == 2)
    {
      return v3 + v9;
    }

    goto LABEL_8;
  }

  v9 = v4 + v8;
  if (a2 != 2)
  {
LABEL_8:
    v3 = 2.0;
  }

  return v3 + v9;
}

id sub_29E19B8AC(void *a1)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    v2 = [objc_opt_self() secondarySystemBackgroundColor];
    sub_29E2C06F4();
    sub_29E19C5A0(&qword_2A181E810, type metadata accessor for UIUserInterfaceLevel);
    v3 = sub_29E2C3D34();
    v4 = [v2 resolvedColorWithTraitCollection_];

    return v4;
  }

  else
  {
    v1 = [objc_opt_self() secondarySystemBackgroundColor];

    return v1;
  }
}

uint64_t sub_29E19BA04(CGContext *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, double a10)
{
  v58 = a5;
  v57 = a4;
  v62 = type metadata accessor for CycleChartCycle.RelativeDayIndex(0);
  v18 = *(v62 - 8);
  MEMORY[0x2A1C7C4A8](v62);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEFCC2C();
  MEMORY[0x2A1C7C4A8](v21 - 8);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E19C53C(0, &qword_2A18189E8, type metadata accessor for CycleChartCycle, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v24 - 8);
  v26 = &v54 - v25;
  v27 = objc_allocWithZone(MEMORY[0x29EDC7A00]);
  aBlock[4] = sub_29E19B8AC;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29E19C164;
  aBlock[3] = &unk_2A24BD7D0;
  v28 = _Block_copy(aBlock);
  v29 = [v27 initWithDynamicProvider_];
  _Block_release(v28);

  v30 = [v29 resolvedColorWithTraitCollection_];

  CGContextSaveGState(a1);
  v31 = [v30 CGColor];
  CGContextSetFillColorWithColor(a1, v31);

  v65.origin.x = a6;
  v65.origin.y = a7;
  v65.size.width = a8;
  v65.size.height = a9;
  CGContextFillRect(a1, v65);
  CGContextRestoreGState(a1);

  v61 = sub_29E19B368(&selRef_secondaryLabelColor);
  v60 = sub_29E19B368(&selRef_tertiaryLabelColor);
  sub_29DEFC850(a2, v26);
  v32 = type metadata accessor for CycleChartCycle(0);
  if ((*(*(v32 - 8) + 48))(v26, 1, v32) != 1)
  {
    v52 = sub_29E02CAF8(&v26[*(v32 + 24)], v23);
    MEMORY[0x2A1C7C4A8](v52);
    *(&v54 - 2) = v26;
    v33 = sub_29E24867C(sub_29E19C64C, (&v54 - 4));
    sub_29E19C66C(v23, sub_29DEFCC2C);
    sub_29E19C66C(v26, type metadata accessor for CycleChartCycle);
    v34 = *(v33 + 16);
    if (v34)
    {
      goto LABEL_3;
    }

LABEL_21:

    goto LABEL_22;
  }

  sub_29DEFC8E4(v26);
  v33 = MEMORY[0x29EDCA190];
  v34 = *(MEMORY[0x29EDCA190] + 16);
  if (!v34)
  {
    goto LABEL_21;
  }

LABEL_3:
  v55 = a1;
  v56 = a3;
  v63 = 0;
  v35 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v54 = v33;
  v36 = v33 + v35;
  v59 = *(v18 + 72);
  v37 = v62;
  do
  {
    sub_29E19C5E8(v36, v20);
    v42 = *&v20[*(v37 + 24)];
    aBlock[0] = v42;
    sub_29DEA68FC();
    sub_29E2C43C4();
    v43 = sub_29E2C33A4();

    sub_29E2BF404();
    type metadata accessor for Key(0);
    sub_29E19C5A0(&qword_2A18177F0, type metadata accessor for Key);
    v44 = sub_29E2C31F4();
    [v43 sizeWithAttributes_];
    v46 = v45;

    if ((v63 & 1) == 0)
    {
      if (v42 >= v57)
      {
        v47 = v20[*(v37 + 28)];
      }

      else
      {
        v47 = 0;
      }

LABEL_13:
      v66.origin.x = a6;
      v66.origin.y = a7;
      v66.size.width = a8;
      v66.size.height = a9;
      MinX = CGRectGetMinX(v66);
      v49 = *&v20[*(v62 + 20)];
      v67.origin.x = a6;
      v67.origin.y = a7;
      v67.size.width = a8;
      v67.size.height = a9;
      MinY = CGRectGetMinY(v67);
      if (v47)
      {
        v51 = 2.0;
        if (v58 == 2)
        {
          v51 = 5.5;
          v38 = 7.0;
          goto LABEL_5;
        }
      }

      else
      {
        v51 = (a10 - v46) * 0.5;
        v38 = 7.0;
        if (v58 == 2)
        {
          goto LABEL_5;
        }
      }

      v38 = 1.0;
LABEL_5:
      v63 = v47;
      v39 = MinX + v49 * a10 + v51;
      v40 = MinY + v38;
      v41 = sub_29E2C31F4();

      [v43 drawAtPoint:v41 withAttributes:{v39, v40}];

      goto LABEL_6;
    }

    if (v20[*(v37 + 28)])
    {
      v47 = 1;
      goto LABEL_13;
    }

    v63 = 1;
LABEL_6:
    sub_29E19C66C(v20, type metadata accessor for CycleChartCycle.RelativeDayIndex);
    v36 += v59;
    --v34;
  }

  while (v34);

  a3 = v56;
  a1 = v55;
LABEL_22:

  sub_29DEFC9D0(a1, a3, a6, a7, a8, a9);
  return sub_29E19C1CC(a1, a3, a6, a7, a8, a9);
}

double sub_29E19C108()
{
  result = 35.0;
  if (*(v0 + 8) == 2)
  {
    return 110.0;
  }

  return result;
}

id sub_29E19C164(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_29E19C1CC(CGContext *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v12 = [objc_opt_self() systemGrayColor];
  [a2 displayScale];
  v14 = 1.0 / v13;
  v15 = 1.0 / v13 * 0.5;
  sub_29E19C53C(0, &qword_2A1820F80, type metadata accessor for CGPoint, MEMORY[0x29EDC9E90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_29E2CD7A0;
  v24.origin.x = a3;
  v24.origin.y = a4;
  v24.size.width = a5;
  v24.size.height = a6;
  MinX = CGRectGetMinX(v24);
  v25.origin.x = a3;
  v25.origin.y = a4;
  v25.size.width = a5;
  v25.size.height = a6;
  MaxY = CGRectGetMaxY(v25);
  *(v16 + 32) = MinX;
  *(v16 + 40) = MaxY - v15;
  v26.origin.x = a3;
  v26.origin.y = a4;
  v26.size.width = a5;
  v26.size.height = a6;
  MaxX = CGRectGetMaxX(v26);
  v27.origin.x = a3;
  v27.origin.y = a4;
  v27.size.width = a5;
  v27.size.height = a6;
  v20 = CGRectGetMaxY(v27);
  *(v16 + 48) = MaxX;
  *(v16 + 56) = v20 - v15;
  v21 = [v12 CGColor];
  CGContextSetStrokeColorWithColor(a1, v21);

  CGContextSetLineWidth(a1, v14);
  sub_29E2C38F4();
}

uint64_t sub_29E19C380(CGContext *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v12 = objc_allocWithZone(MEMORY[0x29EDC7A00]);
  v18[4] = sub_29E19B8AC;
  v18[5] = 0;
  v18[0] = MEMORY[0x29EDCA5F8];
  v18[1] = 1107296256;
  v18[2] = sub_29E19C164;
  v18[3] = &unk_2A24BD7A8;
  v13 = _Block_copy(v18);
  v14 = [v12 initWithDynamicProvider_];
  _Block_release(v13);

  v15 = [v14 resolvedColorWithTraitCollection_];

  CGContextSaveGState(a1);
  v16 = [v15 CGColor];
  CGContextSetFillColorWithColor(a1, v16);

  v19.origin.x = a3;
  v19.origin.y = a4;
  v19.size.width = a5;
  v19.size.height = a6;
  CGContextFillRect(a1, v19);
  CGContextRestoreGState(a1);

  sub_29DF5A828(a1, a2, a3, a4, a5, a6);
  return sub_29E19C1CC(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_29E19C524(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29E19C53C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E19C5A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E19C5E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CycleChartCycle.RelativeDayIndex(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E19C66C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29E19C6E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E19C780()
{
  sub_29E2C02D4();
  if (v0 <= 0x3F)
  {
    sub_29E19C6E8(319, &qword_2A181E828, type metadata accessor for CGSize, MEMORY[0x29EDBCB00]);
    if (v1 <= 0x3F)
    {
      sub_29E19C6E8(319, &qword_2A181AE00, sub_29E03887C, MEMORY[0x29EDBC390]);
      if (v2 <= 0x3F)
      {
        sub_29E19C6E8(319, &qword_2A1819460, MEMORY[0x29EDBC518], MEMORY[0x29EDBC390]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_29E19C8E0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29E2C1A64();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E19C6E8(0, &qword_2A181AE88, sub_29E03887C, MEMORY[0x29EDBC388]);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for PregnancyModeTimelineView(0);
  sub_29E1A95C0(v1 + *(v10 + 24), v9, &qword_2A181AE88, sub_29E03887C);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_29E1A92E8(v9, a1, sub_29E03887C);
  }

  sub_29E2C3A24();
  v12 = sub_29E2C1F84();
  sub_29E2C03B4();

  sub_29E2C1A54();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_29E19CAF0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29E2C1A64();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x29EDBC518];
  sub_29E19C6E8(0, &qword_2A1819020, MEMORY[0x29EDBC518], MEMORY[0x29EDBC388]);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for PregnancyModeTimelineView(0);
  sub_29E1A95C0(v1 + *(v11 + 28), v10, &qword_2A1819020, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_29E2C16E4();
    return (*(*(v12 - 8) + 32))(a1, v10, v12);
  }

  else
  {
    sub_29E2C3A24();
    v14 = sub_29E2C1F84();
    sub_29E2C03B4();

    sub_29E2C1A54();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_29E19CD1C@<X0>(uint64_t a1@<X8>)
{
  v129 = a1;
  sub_29E1A5678();
  v114 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v112 = (&v101 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E1A6458();
  v115 = *(v4 - 8);
  v116 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v113 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1A650C(0);
  v128 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v117 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1A65D8(0, &qword_2A181E9A8, sub_29E1A665C, sub_29E1A650C, MEMORY[0x29EDBC7E8]);
  v126 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v127 = &v101 - v9;
  v10 = sub_29E2C1B94();
  v123 = *(v10 - 8);
  v124 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v122 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E2C1F14();
  v119 = *(v12 - 8);
  v120 = v12;
  MEMORY[0x2A1C7C4A8](v12);
  v118 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PregnancyModeTimelineView(0);
  v103 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v104 = v15;
  v105 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1A6728(0);
  v108 = v16;
  MEMORY[0x2A1C7C4A8](v16);
  v106 = (&v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E1A66A4();
  v110 = v18;
  v109 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v107 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1A665C(0);
  v125 = v20;
  MEMORY[0x2A1C7C4A8](v20);
  v111 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_29E2C1E04();
  v23 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22);
  v102 = &v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E03A230();
  v26 = v25 - 8;
  MEMORY[0x2A1C7C4A8](v25);
  v28 = &v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E03887C(0);
  MEMORY[0x2A1C7C4A8](v29 - 8);
  v31 = &v101 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v32);
  v34 = &v101 - v33;
  MEMORY[0x2A1C7C4A8](v35);
  v37 = &v101 - v36;
  v121 = v1;
  sub_29E19C8E0(&v101 - v36);
  (*(v23 + 104))(v34, *MEMORY[0x29EDBC8A0], v22);
  (*(v23 + 56))(v34, 0, 1, v22);
  v38 = *(v26 + 56);
  sub_29E1A9280(v37, v28, sub_29E03887C);
  sub_29E1A9280(v34, &v28[v38], sub_29E03887C);
  v39 = *(v23 + 48);
  if (v39(v28, 1, v22) == 1)
  {
    sub_29E1A7BDC(v34, sub_29E03887C);
    sub_29E1A7BDC(v37, sub_29E03887C);
    if (v39(&v28[v38], 1, v22) == 1)
    {
      sub_29E1A7BDC(v28, sub_29E03887C);
LABEL_9:
      v71 = sub_29E2C1BC4();
      v72 = v106;
      *v106 = v71;
      *(v72 + 8) = 0;
      *(v72 + 16) = 0;
      sub_29E1A7F2C(0, &qword_2A181EC28, sub_29E1A67D4);
      v74 = (v72 + *(v73 + 44));
      *v74 = sub_29E2C1F94();
      sub_29E1A9024(0, &qword_2A181EC30, sub_29E1A6890);
      v76 = v121;
      sub_29E19DF10(v121, &v74[*(v75 + 44)]);
      v77 = sub_29E2C1FD4();
      sub_29E2C1424();
      v79 = v78;
      v81 = v80;
      v83 = v82;
      v85 = v84;
      sub_29E1A67D4(0);
      v87 = &v74[*(v86 + 36)];
      *v87 = v77;
      *(v87 + 1) = v79;
      *(v87 + 2) = v81;
      *(v87 + 3) = v83;
      *(v87 + 4) = v85;
      v87[40] = 0;
      v88 = v76;
      v89 = v105;
      sub_29E1A9280(v88, v105, type metadata accessor for PregnancyModeTimelineView);
      v90 = (*(v103 + 80) + 16) & ~*(v103 + 80);
      v91 = swift_allocObject();
      sub_29E1A92E8(v89, v91 + v90, type metadata accessor for PregnancyModeTimelineView);
      v92 = v108;
      v93 = (v72 + *(v108 + 36));
      *v93 = sub_29E19DB5C;
      v93[1] = 0;
      v93[2] = sub_29E1A7FEC;
      v93[3] = v91;
      v94 = v118;
      sub_29E2C1EF4();
      v95 = sub_29E1A7AFC();
      v96 = v107;
      sub_29E2C24A4();
      (*(v119 + 8))(v94, v120);
      sub_29E1A7BDC(v72, sub_29E1A6728);
      v97 = v122;
      sub_29E2C1B84();
      v130 = v92;
      v131 = v95;
      swift_getOpaqueTypeConformance2();
      v98 = v111;
      v99 = v110;
      sub_29E2C24B4();
      (*(v123 + 8))(v97, v124);
      (*(v109 + 8))(v96, v99);
      v66 = sub_29E1A665C;
      sub_29E1A805C(v98, v127, sub_29E1A665C);
      swift_storeEnumTagMultiPayload();
      sub_29E1A7C3C();
      sub_29E1A7D58(&qword_2A181EC10, sub_29E1A650C, sub_29E1A7D1C);
      sub_29E2C1C74();
      v67 = v98;
      return sub_29E1A80C4(v67, v66);
    }

    goto LABEL_6;
  }

  sub_29E1A9280(v28, v31, sub_29E03887C);
  if (v39(&v28[v38], 1, v22) == 1)
  {
    sub_29E1A7BDC(v34, sub_29E03887C);
    sub_29E1A7BDC(v37, sub_29E03887C);
    (*(v23 + 8))(v31, v22);
LABEL_6:
    sub_29E1A7BDC(v28, sub_29E03A230);
    goto LABEL_7;
  }

  v68 = v102;
  (*(v23 + 32))(v102, &v28[v38], v22);
  sub_29E1A5E20(&qword_2A181AE80, MEMORY[0x29EDBC8A8]);
  v69 = sub_29E2C3304();
  v70 = *(v23 + 8);
  v70(v68, v22);
  sub_29E1A7BDC(v34, sub_29E03887C);
  sub_29E1A7BDC(v37, sub_29E03887C);
  v70(v31, v22);
  sub_29E1A7BDC(v28, sub_29E03887C);
  if (v69)
  {
    goto LABEL_9;
  }

LABEL_7:
  v40 = sub_29E2C1BD4();
  v41 = v112;
  *v112 = v40;
  *(v41 + 8) = 0x4024000000000000;
  *(v41 + 16) = 0;
  sub_29E1A7F2C(0, &qword_2A181EC00, sub_29E1A570C);
  sub_29E19DC68(v121, v41 + *(v42 + 44));
  v43 = v118;
  sub_29E2C1EF4();
  v44 = sub_29E1A5E20(&qword_2A181E988, sub_29E1A5678);
  v45 = v113;
  v46 = v114;
  sub_29E2C24A4();
  (*(v119 + 8))(v43, v120);
  sub_29E1A7BDC(v41, sub_29E1A5678);
  v47 = v122;
  sub_29E2C1B84();
  v130 = v46;
  v131 = v44;
  swift_getOpaqueTypeConformance2();
  v48 = v116;
  v49 = v117;
  sub_29E2C24B4();
  (*(v123 + 8))(v47, v124);
  (*(v115 + 8))(v45, v48);
  LOBYTE(v47) = sub_29E2C1FD4();
  sub_29E2C1424();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  sub_29E1A6534();
  v59 = v49 + *(v58 + 36);
  *v59 = v47;
  *(v59 + 8) = v51;
  *(v59 + 16) = v53;
  *(v59 + 24) = v55;
  *(v59 + 32) = v57;
  *(v59 + 40) = 0;
  LOBYTE(v47) = sub_29E2C1FE4();
  sub_29E2C1424();
  v60 = v127;
  v61 = v49 + *(v128 + 36);
  *v61 = v47;
  *(v61 + 8) = v62;
  *(v61 + 16) = v63;
  *(v61 + 24) = v64;
  *(v61 + 32) = v65;
  *(v61 + 40) = 0;
  v66 = sub_29E1A650C;
  sub_29E1A805C(v49, v60, sub_29E1A650C);
  swift_storeEnumTagMultiPayload();
  sub_29E1A7C3C();
  sub_29E1A7D58(&qword_2A181EC10, sub_29E1A650C, sub_29E1A7D1C);
  sub_29E2C1C74();
  v67 = v49;
  return sub_29E1A80C4(v67, v66);
}

uint64_t sub_29E19DB5C@<X0>(void *a1@<X8>)
{
  result = sub_29E2C1594();
  *a1 = v3;
  return result;
}

uint64_t sub_29E19DB88()
{
  type metadata accessor for PregnancyModeTimelineView(0);
  sub_29E19C6E8(0, &qword_2A181E828, type metadata accessor for CGSize, MEMORY[0x29EDBCB00]);

  sub_29E2C27D4();
  sub_29E2C27E4();
}

uint64_t sub_29E19DC68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29E1A5E68();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v20 - v8;
  sub_29E1A5794();
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v20 - v14;
  *v15 = sub_29E2C1BD4();
  *(v15 + 1) = 0;
  v15[16] = 0;
  sub_29E1A7F2C(0, &qword_2A181ECB8, sub_29E1A5828);
  sub_29E1A0E2C(a1, &v15[*(v16 + 44)]);
  *v9 = sub_29E2C1BC4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  sub_29E1A7F2C(0, &qword_2A181EC70, sub_29E1A5EFC);
  sub_29E1A284C(a1, &v9[*(v17 + 44)]);
  sub_29E1A9280(v15, v12, sub_29E1A5794);
  sub_29E1A9280(v9, v6, sub_29E1A5E68);
  sub_29E1A9280(v12, a2, sub_29E1A5794);
  sub_29E1A58B0(0, &qword_2A181E840, sub_29E1A5794, sub_29E1A5E68);
  sub_29E1A9280(v6, a2 + *(v18 + 48), sub_29E1A5E68);
  sub_29E1A7BDC(v9, sub_29E1A5E68);
  sub_29E1A7BDC(v15, sub_29E1A5794);
  sub_29E1A7BDC(v6, sub_29E1A5E68);
  return sub_29E1A7BDC(v12, sub_29E1A5794);
}

uint64_t sub_29E19DF10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  sub_29E1A763C(0);
  v48 = v3 - 8;
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1A7520();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v49 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = (&v45 - v9);
  sub_29E1A7274();
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1A6F90(0);
  v15 = v14 - 8;
  MEMORY[0x2A1C7C4A8](v14);
  v47 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v19 = (&v45 - v18);
  sub_29E1A692C(0);
  v21 = v20 - 8;
  MEMORY[0x2A1C7C4A8](v20);
  v46 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23);
  v25 = &v45 - v24;
  *v25 = sub_29E2C1A84();
  *(v25 + 1) = 0;
  v25[16] = 0;
  sub_29E1A7F2C(0, &qword_2A181EC40, sub_29E1A69E8);
  sub_29E19E4C0(a1, &v25[*(v26 + 44)]);
  *&v25[*(v21 + 44)] = xmmword_29E2E3190;
  *v13 = sub_29E2C1A84();
  *(v13 + 1) = 0;
  v13[16] = 0;
  sub_29E1A7F2C(0, &qword_2A181EC48, sub_29E1A7308);
  sub_29E19F304(a1, &v13[*(v27 + 44)]);
  *v19 = sub_29E2C2AA4();
  v19[1] = v28;
  sub_29E1A7F2C(0, &qword_2A181EC50, sub_29E1A704C);
  sub_29E1A8124(v13, (v19 + *(v29 + 44)));
  sub_29E1A7BDC(v13, sub_29E1A7274);
  LOBYTE(v13) = sub_29E2C1FE4();
  sub_29E2C1424();
  v30 = v19 + *(v15 + 44);
  *v30 = v13;
  *(v30 + 1) = v31;
  *(v30 + 2) = v32;
  *(v30 + 3) = v33;
  *(v30 + 4) = v34;
  v30[40] = 0;
  *v5 = sub_29E2C1BD4();
  *(v5 + 1) = 0x4039000000000000;
  v5[16] = 0;
  sub_29E1A7F2C(0, &qword_2A181EC58, sub_29E1A76F8);
  sub_29E19F944(a1, &v5[*(v35 + 44)]);
  *&v5[*(v48 + 44)] = xmmword_29E2E31A0;
  *v10 = sub_29E2C2AA4();
  v10[1] = v36;
  sub_29E1A7F2C(0, &qword_2A181EC60, sub_29E1A75B4);
  sub_29E1A8460(v5, (v10 + *(v37 + 44)));
  sub_29E1A7BDC(v5, sub_29E1A763C);
  v38 = v46;
  sub_29E1A9280(v25, v46, sub_29E1A692C);
  v39 = v47;
  sub_29E1A9280(v19, v47, sub_29E1A6F90);
  v40 = v49;
  sub_29E1A9280(v10, v49, sub_29E1A7520);
  v41 = v50;
  sub_29E1A9280(v38, v50, sub_29E1A692C);
  sub_29E1A78D8(0, &qword_2A181E9E8, sub_29E1A692C, sub_29E1A6F90, sub_29E1A7520);
  v43 = v42;
  sub_29E1A9280(v39, v41 + *(v42 + 48), sub_29E1A6F90);
  sub_29E1A9280(v40, v41 + *(v43 + 64), sub_29E1A7520);
  sub_29E1A7BDC(v10, sub_29E1A7520);
  sub_29E1A7BDC(v19, sub_29E1A6F90);
  sub_29E1A7BDC(v25, sub_29E1A692C);
  sub_29E1A7BDC(v40, sub_29E1A7520);
  sub_29E1A7BDC(v39, sub_29E1A6F90);
  return sub_29E1A7BDC(v38, sub_29E1A692C);
}

uint64_t sub_29E19E4C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  sub_29E1A6C78(0);
  v75 = v3 - 8;
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v76 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v69 - v6;
  sub_29E1A6B08(0);
  v9 = v8 - 8;
  MEMORY[0x2A1C7C4A8](v8);
  v74 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v69 - v12;
  sub_29E1A6AE0(0);
  v15 = v14 - 8;
  MEMORY[0x2A1C7C4A8](v14);
  v73 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v19 = &v69 - v18;
  sub_29E1A6AB8(0);
  v21 = v20 - 8;
  MEMORY[0x2A1C7C4A8](v20);
  v79 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23);
  v25 = &v69 - v24;
  *v25 = sub_29E2C1BD4();
  *(v25 + 1) = 0;
  v25[16] = 0;
  sub_29E1A7F2C(0, &qword_2A181ECB8, sub_29E1A5828);
  v27 = &v25[*(v26 + 44)];
  v71 = a1;
  sub_29E1A0E2C(a1, v27);
  v28 = sub_29E2C2014();
  v29 = (a1 + *(type metadata accessor for PregnancyModeTimelineView(0) + 20));
  v30 = *v29;
  v31 = v29[1];
  v72 = v29[2];
  *&v80 = v30;
  *(&v80 + 1) = v31;
  *&v81 = v72;
  sub_29E19C6E8(0, &qword_2A181E828, type metadata accessor for CGSize, MEMORY[0x29EDBCB00]);
  sub_29E2C27D4();
  sub_29E2C1424();
  v32 = &v25[*(v21 + 44)];
  *v32 = v28;
  *(v32 + 1) = v33;
  *(v32 + 2) = v34;
  *(v32 + 3) = v35;
  *(v32 + 4) = v36;
  v32[40] = 0;
  v78 = v19;
  sub_29E2C2974();
  *&v19[*(v15 + 44)] = xmmword_29E2DE320;
  v37 = v13;
  *v13 = sub_29E2C1BD4();
  *(v13 + 1) = 0;
  v13[16] = 0;
  sub_29E1A7F2C(0, &qword_2A181ECC0, sub_29E1A6BC4);
  v39 = v71;
  sub_29E1A00D8(&v13[*(v38 + 44)]);
  LOBYTE(v21) = sub_29E2C1FF4();
  *&v80 = v30;
  *(&v80 + 1) = v31;
  v40 = v72;
  *&v81 = v72;
  sub_29E2C27D4();
  sub_29E2C1424();
  v41 = &v13[*(v9 + 44)];
  v70 = v13;
  *v41 = v21;
  *(v41 + 1) = v42;
  *(v41 + 2) = v43;
  *(v41 + 3) = v44;
  *(v41 + 4) = v45;
  v41[40] = 0;
  *v7 = sub_29E2C1BC4();
  *(v7 + 1) = 0;
  v7[16] = 1;
  sub_29E1A7F2C(0, &qword_2A181ECD8, sub_29E1A6D5C);
  sub_29E19EB58(v39, &v7[*(v46 + 44)]);
  LOBYTE(v21) = sub_29E2C1FF4();
  sub_29E2C1424();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  sub_29E1A6CA0(0);
  v56 = &v7[*(v55 + 36)];
  *v56 = v21;
  *(v56 + 1) = v48;
  *(v56 + 2) = v50;
  *(v56 + 3) = v52;
  *(v56 + 4) = v54;
  v56[40] = 0;
  *&v80 = v30;
  *(&v80 + 1) = v31;
  *&v81 = v40;
  sub_29E2C27D4();
  sub_29E2C2AB4();
  sub_29E2C1564();
  v57 = &v7[*(v75 + 44)];
  v58 = v81;
  *v57 = v80;
  *(v57 + 1) = v58;
  *(v57 + 2) = v82;
  v59 = v79;
  sub_29E1A9280(v25, v79, sub_29E1A6AB8);
  v60 = v73;
  sub_29E1A9280(v78, v73, sub_29E1A6AE0);
  v61 = v74;
  sub_29E1A9280(v37, v74, sub_29E1A6B08);
  v62 = v76;
  sub_29E1A9280(v7, v76, sub_29E1A6C78);
  v63 = v59;
  v64 = v77;
  sub_29E1A9280(v63, v77, sub_29E1A6AB8);
  sub_29E1A6A1C();
  v66 = v65;
  sub_29E1A9280(v60, v64 + v65[12], sub_29E1A6AE0);
  sub_29E1A9280(v61, v64 + v66[16], sub_29E1A6B08);
  v67 = v64 + v66[20];
  *v67 = 0x4049000000000000;
  *(v67 + 8) = 0;
  sub_29E1A9280(v62, v64 + v66[24], sub_29E1A6C78);
  sub_29E1A7BDC(v7, sub_29E1A6C78);
  sub_29E1A7BDC(v70, sub_29E1A6B08);
  sub_29E1A7BDC(v78, sub_29E1A6AE0);
  sub_29E1A7BDC(v25, sub_29E1A6AB8);
  sub_29E1A7BDC(v62, sub_29E1A6C78);
  sub_29E1A7BDC(v61, sub_29E1A6B08);
  sub_29E1A7BDC(v60, sub_29E1A6AE0);
  return sub_29E1A7BDC(v79, sub_29E1A6AB8);
}

uint64_t sub_29E19EB58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29E1A6010();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v20 - v8;
  sub_29E1A6DE4();
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v20 - v14;
  *v15 = sub_29E2C1AA4();
  *(v15 + 1) = 0x4014000000000000;
  v15[16] = 0;
  sub_29E1A7F2C(0, &qword_2A181ECE0, sub_29E1A6E78);
  sub_29E19EDEC(a1, &v15[*(v16 + 44)]);
  *v9 = sub_29E2C1F94();
  sub_29E1A9024(0, &qword_2A181EC78, sub_29E1A60A4);
  sub_29E1A2B58(&v9[*(v17 + 44)]);
  sub_29E1A9280(v15, v12, sub_29E1A6DE4);
  sub_29E1A9280(v9, v6, sub_29E1A6010);
  sub_29E1A9280(v12, a2, sub_29E1A6DE4);
  sub_29E1A58B0(0, &qword_2A181EA68, sub_29E1A6DE4, sub_29E1A6010);
  sub_29E1A9280(v6, a2 + *(v18 + 48), sub_29E1A6010);
  sub_29E1A7BDC(v9, sub_29E1A6010);
  sub_29E1A7BDC(v15, sub_29E1A6DE4);
  sub_29E1A7BDC(v6, sub_29E1A6010);
  return sub_29E1A7BDC(v12, sub_29E1A6DE4);
}

uint64_t sub_29E19EDEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_29E2C2104();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1A5F84(0);
  v8 = v7 - 8;
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = (&v44 - v12);
  v14 = *(type metadata accessor for PregnancyModeTimelineGauge() + 20);
  v15 = sub_29E2C02D4();
  (*(*(v15 - 8) + 16))(v13 + v14, a1, v15);
  *v13 = swift_getKeyPath();
  sub_29E19C6E8(0, &qword_2A1819020, MEMORY[0x29EDBC518], MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  LOBYTE(a1) = sub_29E2C1FE4();
  sub_29E2C1424();
  v16 = v13 + *(v8 + 44);
  *v16 = a1;
  *(v16 + 1) = v17;
  *(v16 + 2) = v18;
  *(v16 + 3) = v19;
  *(v16 + 4) = v20;
  v16[40] = 0;
  v46 = sub_29E2C2714();
  sub_29E2C2144();
  (*(v4 + 104))(v6, *MEMORY[0x29EDBC9B0], v3);
  sub_29E2C2124();

  (*(v4 + 8))(v6, v3);
  sub_29E2C20B4();
  v21 = sub_29E2C20F4();

  KeyPath = swift_getKeyPath();
  sub_29DE9408C(0, &qword_2A1817FE0);
  sub_29E2C4074();
  v23 = sub_29E2C2654();
  v24 = swift_getKeyPath();
  v25 = sub_29E2C2614();
  v26 = swift_getKeyPath();
  LOBYTE(v8) = sub_29E2C1FD4();
  sub_29E2C1424();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  LOBYTE(v56[0]) = 0;
  v45 = v10;
  sub_29E1A9280(v13, v10, sub_29E1A5F84);
  v35 = v10;
  v36 = v47;
  sub_29E1A9280(v35, v47, sub_29E1A5F84);
  sub_29E1A58B0(0, &qword_2A181EA80, sub_29E1A5F84, sub_29E1A6F00);
  v38 = v36 + *(v37 + 48);
  v39 = v46;
  *&v49 = v46;
  *(&v49 + 1) = KeyPath;
  *&v50 = v21;
  *(&v50 + 1) = v24;
  *&v51 = v23;
  *(&v51 + 1) = v26;
  *&v52 = v25;
  BYTE8(v52) = v8;
  HIDWORD(v52) = *&v48[3];
  *(&v52 + 9) = *v48;
  *&v53 = v28;
  *(&v53 + 1) = v30;
  *&v54 = v32;
  *(&v54 + 1) = v34;
  v55 = 0;
  *(v38 + 96) = 0;
  v40 = v50;
  *v38 = v49;
  *(v38 + 16) = v40;
  v41 = v52;
  *(v38 + 32) = v51;
  *(v38 + 48) = v41;
  v42 = v54;
  *(v38 + 64) = v53;
  *(v38 + 80) = v42;
  sub_29E1A9280(&v49, v56, sub_29E1A6F00);
  sub_29E1A7BDC(v13, sub_29E1A5F84);
  v56[0] = v39;
  v56[1] = KeyPath;
  v56[2] = v21;
  v56[3] = v24;
  v56[4] = v23;
  v56[5] = v26;
  v56[6] = v25;
  v57 = v8;
  *v58 = *v48;
  *&v58[3] = *&v48[3];
  v59 = v28;
  v60 = v30;
  v61 = v32;
  v62 = v34;
  v63 = 0;
  sub_29E1A7BDC(v56, sub_29E1A6F00);
  return sub_29E1A7BDC(v45, sub_29E1A5F84);
}

uint64_t sub_29E19F304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29E1A74D0(0);
  v5 = v4 - 8;
  MEMORY[0x2A1C7C4A8](v4);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = v37 - v9;
  sub_29E1A73B4();
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = v37 - v15;
  *v16 = sub_29E2C1BD4();
  *(v16 + 1) = 0x4024000000000000;
  v16[16] = 0;
  sub_29E1A7F2C(0, &qword_2A181ECD0, sub_29E1A7448);
  sub_29E19F6A0(a1, &v16[*(v17 + 44)]);
  *v10 = sub_29E2C1BC4();
  *(v10 + 1) = 0;
  v10[16] = 1;
  sub_29E1A7F2C(0, &qword_2A181EC70, sub_29E1A5EFC);
  sub_29E1A284C(a1, &v10[*(v18 + 44)]);
  v19 = sub_29E2C1FF4();
  sub_29E2C1424();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_29E1A74F8(0);
  v29 = &v10[*(v28 + 36)];
  *v29 = v19;
  *(v29 + 1) = v21;
  *(v29 + 2) = v23;
  *(v29 + 3) = v25;
  *(v29 + 4) = v27;
  v29[40] = 0;
  v30 = a1 + *(type metadata accessor for PregnancyModeTimelineView(0) + 20);
  v31 = *(v30 + 16);
  v38 = *v30;
  *&v39 = v31;
  sub_29E19C6E8(0, &qword_2A181E828, type metadata accessor for CGSize, MEMORY[0x29EDBCB00]);
  sub_29E2C27D4();
  sub_29E2C2AB4();
  sub_29E2C1564();
  v32 = &v10[*(v5 + 44)];
  v33 = v39;
  *v32 = v38;
  *(v32 + 1) = v33;
  *(v32 + 2) = v40;
  sub_29E1A9280(v16, v13, sub_29E1A73B4);
  sub_29E1A9280(v10, v7, sub_29E1A74D0);
  sub_29E1A9280(v13, a2, sub_29E1A73B4);
  sub_29E1A733C();
  v35 = a2 + *(v34 + 48);
  *v35 = 0;
  *(v35 + 8) = 1;
  sub_29E1A9280(v7, a2 + *(v34 + 64), sub_29E1A74D0);
  sub_29E1A7BDC(v10, sub_29E1A74D0);
  sub_29E1A7BDC(v16, sub_29E1A73B4);
  sub_29E1A7BDC(v7, sub_29E1A74D0);
  return sub_29E1A7BDC(v13, sub_29E1A73B4);
}

uint64_t sub_29E19F6A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29E1A6B30();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v20 - v8;
  sub_29E1A5794();
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v20 - v14;
  *v15 = sub_29E2C1BD4();
  *(v15 + 1) = 0;
  v15[16] = 0;
  sub_29E1A7F2C(0, &qword_2A181ECB8, sub_29E1A5828);
  sub_29E1A0E2C(a1, &v15[*(v16 + 44)]);
  *v9 = sub_29E2C1BD4();
  *(v9 + 1) = 0;
  v9[16] = 0;
  sub_29E1A7F2C(0, &qword_2A181ECC0, sub_29E1A6BC4);
  sub_29E1A00D8(&v9[*(v17 + 44)]);
  sub_29E1A9280(v15, v12, sub_29E1A5794);
  sub_29E1A9280(v9, v6, sub_29E1A6B30);
  sub_29E1A9280(v12, a2, sub_29E1A5794);
  sub_29E1A58B0(0, &qword_2A181EB20, sub_29E1A5794, sub_29E1A6B30);
  sub_29E1A9280(v6, a2 + *(v18 + 48), sub_29E1A6B30);
  sub_29E1A7BDC(v9, sub_29E1A6B30);
  sub_29E1A7BDC(v15, sub_29E1A5794);
  sub_29E1A7BDC(v6, sub_29E1A6B30);
  return sub_29E1A7BDC(v12, sub_29E1A5794);
}

uint64_t sub_29E19F944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29E1A5E68();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v21 - v8;
  sub_29E1A7780(0);
  v11 = v10 - 8;
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v21 - v15;
  *v16 = sub_29E2C1AA4();
  *(v16 + 1) = 0;
  v16[16] = 0;
  sub_29E1A7F2C(0, &qword_2A181EC68, sub_29E1A783C);
  sub_29E19FC00(a1, &v16[*(v17 + 44)]);
  *&v16[*(v11 + 44)] = xmmword_29E2E31B0;
  *v9 = sub_29E2C1BC4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  sub_29E1A7F2C(0, &qword_2A181EC70, sub_29E1A5EFC);
  sub_29E1A284C(a1, &v9[*(v18 + 44)]);
  sub_29E1A9280(v16, v13, sub_29E1A7780);
  sub_29E1A9280(v9, v6, sub_29E1A5E68);
  sub_29E1A9280(v13, a2, sub_29E1A7780);
  sub_29E1A58B0(0, &qword_2A181EB80, sub_29E1A7780, sub_29E1A5E68);
  sub_29E1A9280(v6, a2 + *(v19 + 48), sub_29E1A5E68);
  sub_29E1A7BDC(v9, sub_29E1A5E68);
  sub_29E1A7BDC(v16, sub_29E1A7780);
  sub_29E1A7BDC(v6, sub_29E1A5E68);
  return sub_29E1A7BDC(v13, sub_29E1A7780);
}

uint64_t sub_29E19FC00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  sub_29E1A6B08(0);
  v4 = v3 - 8;
  MEMORY[0x2A1C7C4A8](v3);
  v54 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v51 - v7;
  sub_29E1A7974(0);
  v10 = v9 - 8;
  MEMORY[0x2A1C7C4A8](v9);
  v53 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v51 - v13;
  sub_29E1A6AB8(0);
  v16 = v15 - 8;
  MEMORY[0x2A1C7C4A8](v15);
  v52 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v20 = &v51 - v19;
  *v20 = sub_29E2C1BD4();
  *(v20 + 1) = 0;
  v20[16] = 0;
  sub_29E1A7F2C(0, &qword_2A181ECB8, sub_29E1A5828);
  v22 = &v20[*(v21 + 44)];
  v51 = a1;
  sub_29E1A0E2C(a1, v22);
  v23 = sub_29E2C2014();
  v24 = (a1 + *(type metadata accessor for PregnancyModeTimelineView(0) + 20));
  v26 = v24[1];
  v27 = v24[2];
  v56 = *v24;
  v25 = v56;
  v57 = v26;
  v58 = v27;
  sub_29E19C6E8(0, &qword_2A181E828, type metadata accessor for CGSize, MEMORY[0x29EDBCB00]);
  sub_29E2C27D4();
  sub_29E2C1424();
  v28 = &v20[*(v16 + 44)];
  *v28 = v23;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  sub_29E2C2974();
  LOBYTE(v16) = sub_29E2C2024();
  sub_29E2C1424();
  v33 = &v14[*(v10 + 44)];
  *v33 = v16;
  *(v33 + 1) = v34;
  *(v33 + 2) = v35;
  *(v33 + 3) = v36;
  *(v33 + 4) = v37;
  v33[40] = 0;
  *v8 = sub_29E2C1BD4();
  *(v8 + 1) = 0;
  v8[16] = 0;
  sub_29E1A7F2C(0, &qword_2A181ECC0, sub_29E1A6BC4);
  sub_29E1A00D8(&v8[*(v38 + 44)]);
  LOBYTE(v16) = sub_29E2C1FF4();
  v56 = v25;
  v57 = v26;
  v58 = v27;
  sub_29E2C27D4();
  sub_29E2C1424();
  v39 = &v8[*(v4 + 44)];
  *v39 = v16;
  *(v39 + 1) = v40;
  *(v39 + 2) = v41;
  *(v39 + 3) = v42;
  *(v39 + 4) = v43;
  v39[40] = 0;
  v44 = v52;
  sub_29E1A9280(v20, v52, sub_29E1A6AB8);
  v45 = v53;
  sub_29E1A9280(v14, v53, sub_29E1A7974);
  v46 = v54;
  sub_29E1A9280(v8, v54, sub_29E1A6B08);
  v47 = v55;
  sub_29E1A9280(v44, v55, sub_29E1A6AB8);
  sub_29E1A78D8(0, &qword_2A181EBA0, sub_29E1A6AB8, sub_29E1A7974, sub_29E1A6B08);
  v49 = v48;
  sub_29E1A9280(v45, v47 + *(v48 + 48), sub_29E1A7974);
  sub_29E1A9280(v46, v47 + *(v49 + 64), sub_29E1A6B08);
  sub_29E1A7BDC(v8, sub_29E1A6B08);
  sub_29E1A7BDC(v14, sub_29E1A7974);
  sub_29E1A7BDC(v20, sub_29E1A6AB8);
  sub_29E1A7BDC(v46, sub_29E1A6B08);
  sub_29E1A7BDC(v45, sub_29E1A7974);
  return sub_29E1A7BDC(v44, sub_29E1A6AB8);
}

uint64_t sub_29E1A00D8@<X0>(uint64_t a1@<X8>)
{
  v93 = a1;
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v88 = &v79 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  v86 = v3;
  v87 = v4;
  MEMORY[0x2A1C7C4A8](v3);
  v85 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v84 = &v79 - v7;
  v90 = sub_29E2BC9D4();
  v83 = *(v90 - 1);
  MEMORY[0x2A1C7C4A8](v90);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_29E2BCA44();
  v79 = *(v81 - 8);
  MEMORY[0x2A1C7C4A8](v81);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E2BCA54();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v18 = &v79 - v17;
  MEMORY[0x2A1C7C4A8](v19);
  v21 = &v79 - v20;
  v82 = sub_29E2BCBB4();
  v80 = *(v82 - 8);
  MEMORY[0x2A1C7C4A8](v82);
  v23 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1A5D28();
  v94 = v24;
  MEMORY[0x2A1C7C4A8](v24);
  v92 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v26);
  v91 = &v79 - v27;
  MEMORY[0x2A1C7C4A8](v28);
  v89 = &v79 - v29;
  MEMORY[0x2A1C7C4A8](v30);
  v32 = &v79 - v31;
  v33 = sub_29E2C02B4();
  MEMORY[0x29ED78EF0](v33);
  sub_29E2BCA14();
  sub_29E2BC9B4();
  (*(v79 + 8))(v11, v81);
  v34 = *(v13 + 8);
  v34(v15, v12);
  sub_29E2BC9C4();
  sub_29E2BC994();
  (*(v83 + 8))(v9, v90);
  v35 = v18;
  v36 = v84;
  v34(v35, v12);
  sub_29E1A5E20(&qword_2A1817C78, MEMORY[0x29EDB9BB0]);
  sub_29E2BCB94();
  v37 = v12;
  v38 = v85;
  v34(v21, v37);
  (*(v80 + 8))(v23, v82);
  v95 = v97;
  v96 = v98;
  sub_29DE9DE68();
  v39 = sub_29E2C2294();
  v41 = v40;
  LOBYTE(v21) = v42;
  sub_29E1A09EC(0, v40, v43, v32);
  v44 = v21 & 1;
  v45 = v86;
  sub_29DED6478(v39, v41, v44);
  v46 = v87;

  v47 = *(v94 + 36);
  v90 = v32;
  *&v32[v47] = 257;
  sub_29E2C3314();
  (*(v46 + 16))(v38, v36, v45);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v48 = qword_2A1A67F80;
  sub_29E2BCC74();
  v49 = sub_29E2C3414();
  v51 = v50;
  (*(v46 + 8))(v36, v45);
  v97 = v49;
  v98 = v51;
  v52 = sub_29E2C2294();
  v54 = v53;
  v56 = v55;
  sub_29E2C2044();
  sub_29E2C20B4();
  sub_29E2C20F4();

  v57 = sub_29E2C2254();
  v59 = v58;
  v61 = v60;

  v62 = [objc_opt_self() secondaryLabelColor];
  v97 = sub_29E2C2654();
  v63 = sub_29E2C2224();
  v87 = v64;
  v88 = v63;
  LODWORD(v86) = v65;
  v67 = v66;
  sub_29DED6478(v52, v54, v56 & 1);

  sub_29DED6478(v57, v59, v61 & 1);

  sub_29E1A5DA4(0, &qword_2A181E8C0, type metadata accessor for AdaptableBlendMode);
  v69 = *(v68 + 36);
  KeyPath = swift_getKeyPath();
  v71 = v89;
  *&v89[v69] = KeyPath;
  sub_29E19C6E8(0, &unk_2A181A6A0, MEMORY[0x29EDBC370], MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  v72 = v87;
  *v71 = v88;
  *(v71 + 8) = v72;
  *(v71 + 16) = v86 & 1;
  *(v71 + 24) = v67;
  *(v71 + *(v94 + 36)) = 257;
  v74 = v90;
  v73 = v91;
  sub_29E1A9280(v90, v91, sub_29E1A5D28);
  v75 = v92;
  sub_29E1A9280(v71, v92, sub_29E1A5D28);
  v76 = v93;
  sub_29E1A9280(v73, v93, sub_29E1A5D28);
  sub_29E1A6BF8(0);
  sub_29E1A9280(v75, v76 + *(v77 + 48), sub_29E1A5D28);
  sub_29E1A7BDC(v71, sub_29E1A5D28);
  sub_29E1A7BDC(v74, sub_29E1A5D28);
  sub_29E1A7BDC(v75, sub_29E1A5D28);
  return sub_29E1A7BDC(v73, sub_29E1A5D28);
}

uint64_t sub_29E1A09EC@<X0>(char a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  sub_29E1A91E0(0);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E2C2164();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x2A1C7C4A8](v11);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a1 == 1)
    {
      sub_29E2C2044();
      sub_29E2C20B4();
      sub_29E2C20F4();
    }

    else
    {
      sub_29E2C2144();
    }

    v17 = sub_29E2C2254();
    v19 = v18;
    v21 = v20;

    v22 = [objc_opt_self() secondaryLabelColor];
  }

  else
  {
    v23 = v13;
    (*(v12 + 104))(v16, *MEMORY[0x29EDBC9D0], v13, v14);
    v41[2] = a2;
    v24 = *MEMORY[0x29EDBC988];
    v25 = sub_29E2C2074();
    v26 = *(v25 - 8);
    v41[1] = a3;
    v27 = v26;
    (*(v26 + 104))(v10, v24, v25);
    (*(v27 + 56))(v10, 0, 1, v25);
    sub_29E2C20D4();
    sub_29E1A7BDC(v10, sub_29E1A91E0);
    (*(v12 + 8))(v16, v23);
    sub_29E2C20B4();
    sub_29E2C20F4();

    v17 = sub_29E2C2254();
    v19 = v28;
    v21 = v29;

    v22 = [objc_opt_self() labelColor];
  }

  v30 = v22;
  v41[8] = sub_29E2C2654();
  v31 = sub_29E2C2224();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_29DED6478(v17, v19, v21 & 1);

  sub_29E1A5DA4(0, &qword_2A181E8C0, type metadata accessor for AdaptableBlendMode);
  v39 = *(v38 + 36);
  *(a4 + v39) = swift_getKeyPath();
  sub_29E19C6E8(0, &unk_2A181A6A0, MEMORY[0x29EDBC370], MEMORY[0x29EDBC388]);
  result = swift_storeEnumTagMultiPayload();
  *a4 = v31;
  *(a4 + 8) = v33;
  *(a4 + 16) = v35 & 1;
  *(a4 + 24) = v37;
  return result;
}

uint64_t sub_29E1A0E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  sub_29E1A5D28();
  v48 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v43[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E1A5CE0(0);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v52 = &v43[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v8);
  v51 = &v43[-v9];
  sub_29E1A592C();
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v50 = &v43[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v43[-v13];
  *v14 = sub_29E2C1AA4();
  *(v14 + 8) = 0;
  *(v14 + 16) = 1;
  sub_29E1A7F2C(0, &qword_2A181ECC8, sub_29E1A59C0);
  v16 = *(v15 + 44);
  v49 = v14;
  sub_29E1A13A4(a1, v14 + v16);
  *&v54 = sub_29E1A2514();
  *(&v54 + 1) = v17;
  sub_29DE9DE68();
  v18 = sub_29E2C2294();
  v20 = v19;
  LOBYTE(v14) = v21;
  sub_29E2C2044();
  sub_29E2C20B4();
  sub_29E2C20F4();

  v22 = sub_29E2C2254();
  v24 = v23;
  v26 = v25;

  v27 = [objc_opt_self() secondaryLabelColor];
  *&v54 = sub_29E2C2654();
  v28 = sub_29E2C2224();
  v45 = v29;
  v46 = v28;
  v44 = v30;
  v47 = v31;
  sub_29DED6478(v22, v24, v26 & 1);

  sub_29DED6478(v18, v20, v14 & 1);
  v32 = v48;

  sub_29E1A5DA4(0, &qword_2A181E8C0, type metadata accessor for AdaptableBlendMode);
  v34 = *(v33 + 36);
  *&v5[v34] = swift_getKeyPath();
  sub_29E19C6E8(0, &unk_2A181A6A0, MEMORY[0x29EDBC370], MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  v35 = v45;
  *v5 = v46;
  *(v5 + 1) = v35;
  v5[16] = v44 & 1;
  *(v5 + 3) = v47;
  *&v5[*(v32 + 36)] = 256;
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v54 = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000026, 0x800000029E3017E0);
  sub_29E1A7D58(&qword_2A181ECA0, sub_29E1A5D28, sub_29E1A9114);
  v36 = v51;
  sub_29E2C23B4();

  sub_29E1A7BDC(v5, sub_29E1A5D28);
  v38 = v49;
  v37 = v50;
  sub_29E1A9280(v49, v50, sub_29E1A592C);
  v39 = v52;
  sub_29E1A9280(v36, v52, sub_29E1A5CE0);
  v40 = v53;
  sub_29E1A9280(v37, v53, sub_29E1A592C);
  sub_29E1A58B0(0, &qword_2A181E858, sub_29E1A592C, sub_29E1A5CE0);
  sub_29E1A9280(v39, v40 + *(v41 + 48), sub_29E1A5CE0);
  sub_29E1A7BDC(v36, sub_29E1A5CE0);
  sub_29E1A7BDC(v38, sub_29E1A592C);
  sub_29E1A7BDC(v39, sub_29E1A5CE0);
  return sub_29E1A7BDC(v37, sub_29E1A592C);
}

uint64_t sub_29E1A13A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v65 = sub_29E2C2104();
  v64 = *(v65 - 8);
  MEMORY[0x2A1C7C4A8](v65);
  v63 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_29E2C1E04();
  v69 = *(v70 - 8);
  MEMORY[0x2A1C7C4A8](v70);
  v62 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E03A230();
  v67 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E03887C(0);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v66 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v61 - v11;
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v61 - v14;
  v16 = sub_29E2BC6A4();
  MEMORY[0x2A1C7C4A8](v16 - 8);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1A5DA4(0, &qword_2A1819280, MEMORY[0x29EDBC0A8]);
  MEMORY[0x2A1C7C4A8](v19 - 8);
  v71 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21);
  v23 = &v61 - v22;
  v68 = a1;
  sub_29E1A1CE4(v18);
  v24 = sub_29E2C2284();
  v26 = v25;
  v79 = v24;
  v80 = v25;
  v28 = v27 & 1;
  LOBYTE(v81) = v27 & 1;
  v82 = v29;
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v74 = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD00000000000002BLL, 0x800000029E301810);
  v73 = v23;
  sub_29E2C23B4();

  sub_29DED6478(v24, v26, v28);

  sub_29E19C8E0(v15);
  v30 = v69;
  v31 = v70;
  (*(v69 + 104))(v12, *MEMORY[0x29EDBC898], v70);
  (*(v30 + 56))(v12, 0, 1, v31);
  v32 = *(v67 + 48);
  sub_29E1A9280(v15, v7, sub_29E03887C);
  sub_29E1A9280(v12, &v7[v32], sub_29E03887C);
  v33 = *(v30 + 48);
  v34 = v15;
  v35 = v31;
  if (v33(v7, 1, v31) == 1)
  {
    sub_29E1A7BDC(v12, sub_29E03887C);
    sub_29E1A7BDC(v34, sub_29E03887C);
    if (v33(&v7[v32], 1, v31) == 1)
    {
      sub_29E1A7BDC(v7, sub_29E03887C);
      v36 = v73;
LABEL_10:
      v70 = sub_29E2C2714();
      sub_29E2C2144();
      v46 = v64;
      v47 = v63;
      v48 = v65;
      (*(v64 + 104))(v63, *MEMORY[0x29EDBC9B0], v65);
      sub_29E2C2124();

      (*(v46 + 8))(v47, v48);
      sub_29E2C20B4();
      v69 = sub_29E2C20F4();

      KeyPath = swift_getKeyPath();
      sub_29DE9408C(0, &qword_2A1817FE0);
      sub_29E2C4074();
      v68 = sub_29E2C2654();
      v40 = swift_getKeyPath();
      v41 = sub_29E2C2614();
      v67 = swift_getKeyPath();
      LOBYTE(v79) = 0;
      v38 = 0x403E000000000000;
      goto LABEL_12;
    }
  }

  else
  {
    v37 = v66;
    sub_29E1A9280(v7, v66, sub_29E03887C);
    if (v33(&v7[v32], 1, v35) != 1)
    {
      v42 = &v7[v32];
      v43 = v62;
      (*(v30 + 32))(v62, v42, v35);
      sub_29E1A5E20(&qword_2A181AE80, MEMORY[0x29EDBC8A8]);
      v44 = sub_29E2C3304();
      v45 = *(v30 + 8);
      v45(v43, v35);
      sub_29E1A7BDC(v12, sub_29E03887C);
      sub_29E1A7BDC(v34, sub_29E03887C);
      v45(v37, v35);
      sub_29E1A7BDC(v7, sub_29E03887C);
      v36 = v73;
      if ((v44 & 1) == 0)
      {
        v38 = 0;
        v70 = 0;
        KeyPath = 0;
        v69 = 0;
        v40 = 0;
        v68 = 0;
        v67 = 0;
        v41 = 0;
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    sub_29E1A7BDC(v12, sub_29E03887C);
    sub_29E1A7BDC(v34, sub_29E03887C);
    (*(v30 + 8))(v37, v35);
  }

  sub_29E1A7BDC(v7, sub_29E03A230);
  v38 = 0;
  v70 = 0;
  KeyPath = 0;
  v69 = 0;
  v40 = 0;
  v68 = 0;
  v67 = 0;
  v41 = 0;
  v36 = v73;
LABEL_12:
  v49 = v36;
  v50 = v71;
  sub_29DFCFC28(v49, v71);
  v51 = v72;
  sub_29DFCFC28(v50, v72);
  sub_29E1A59F4();
  v53 = v51 + *(v52 + 48);
  v74 = v38;
  v54 = v70;
  *&v75 = v70;
  *(&v75 + 1) = KeyPath;
  v55 = v69;
  *&v76 = v69;
  *(&v76 + 1) = v40;
  v56 = v68;
  v57 = v67;
  *&v77 = v68;
  *(&v77 + 1) = v67;
  v78 = v41;
  *(v53 + 64) = v41;
  v58 = v75;
  *v53 = v74;
  *(v53 + 16) = v58;
  v59 = v77;
  *(v53 + 32) = v76;
  *(v53 + 48) = v59;
  sub_29E1A9280(&v74, &v79, sub_29E1A5A80);
  sub_29E114B28(v73);
  v79 = v38;
  v80 = 0;
  v81 = v54;
  v82 = KeyPath;
  v83 = v55;
  v84 = v40;
  v85 = v56;
  v86 = v57;
  v87 = v41;
  sub_29E1A7BDC(&v79, sub_29E1A5A80);
  return sub_29E114B28(v50);
}

uint64_t sub_29E1A1CE4@<X0>(uint64_t a1@<X8>)
{
  v80 = a1;
  v1 = sub_29E2BCF04();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2BCBB4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v67 - v10;
  MEMORY[0x2A1C7C4A8](v12);
  v78 = &v67 - v13;
  sub_29E2C02C4();
  v14 = sub_29E2C02A4();
  v15 = [v14 _timeZoneName];

  if (v15)
  {
    v75 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v77 = v16;
  }

  else
  {
    sub_29E2BCEF4();
    v75 = sub_29E2BCED4();
    v77 = v17;
    (*(v2 + 8))(v4, v1);
  }

  sub_29E2C0274();
  v79 = v8;
  sub_29E15177C(v8);
  v18 = *(v6 + 8);
  v82 = v5;
  v81 = v6 + 8;
  v76 = v18;
  v18(v11, v5);
  v19 = MEMORY[0x29EDC7700];
  v20 = *MEMORY[0x29EDC8118];
  v21 = *MEMORY[0x29EDC76C0];
  v22 = objc_opt_self();
  v23 = [v22 preferredFontDescriptorWithTextStyle_];
  v24 = [v23 fontDescriptorWithSymbolicTraits_];
  if (v24)
  {
    v25 = v24;

    v23 = v25;
  }

  v26 = *v19;
  v27 = [v23 fontDescriptorWithDesign_];
  if (v27)
  {
    v28 = v27;

    v23 = v28;
  }

  v29 = MEMORY[0x29EDC9E90];
  sub_29E19C6E8(0, &qword_2A1819158, sub_29DF383AC, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  v83 = xmmword_29E2CAB20;
  *(inited + 16) = xmmword_29E2CAB20;
  v31 = *MEMORY[0x29EDC76D0];
  *(inited + 32) = *MEMORY[0x29EDC76D0];
  sub_29E19C6E8(0, &qword_2A1819168, sub_29DF38418, v29);
  v74 = v32;
  v33 = swift_initStackObject();
  v34 = MEMORY[0x29EDC7708];
  *(v33 + 16) = v83;
  v35 = *v34;
  *(v33 + 32) = *v34;
  *(v33 + 40) = v26;
  v36 = v31;
  v37 = v35;
  v69 = v36;
  v72 = v37;
  v38 = sub_29E1852C8(v33);
  swift_setDeallocating();
  sub_29E1A7BDC(v33 + 32, sub_29DF38418);
  sub_29DF38488();
  v71 = v39;
  *(inited + 64) = v39;
  *(inited + 40) = v38;
  sub_29E1853AC(inited);
  swift_setDeallocating();
  sub_29E1A7BDC(inited + 32, sub_29DF383AC);
  type metadata accessor for AttributeName(0);
  v41 = v40;
  sub_29E1A5E20(&qword_2A18177E0, type metadata accessor for AttributeName);
  v70 = v41;
  v42 = sub_29E2C31F4();

  v43 = [v23 fontDescriptorByAddingAttributes_];

  v44 = objc_opt_self();
  v73 = [v44 fontWithDescriptor:v43 size:0.0];

  v45 = objc_opt_self();
  v68 = [v45 secondaryLabelColor];
  v46 = *MEMORY[0x29EDC76C8];
  v47 = [v22 preferredFontDescriptorWithTextStyle_];
  v48 = [v47 fontDescriptorWithSymbolicTraits_];
  if (v48)
  {
    v49 = v48;

    v47 = v49;
  }

  v50 = [v47 fontDescriptorWithDesign_];
  if (v50)
  {
    v51 = v50;

    v47 = v51;
  }

  sub_29DE9408C(0, &qword_2A1817D48);
  v52 = swift_initStackObject();
  *(v52 + 16) = v83;
  *(v52 + 32) = v69;
  v53 = swift_initStackObject();
  *(v53 + 16) = v83;
  *(v53 + 32) = v72;
  v54 = v53 + 32;
  *(v53 + 40) = v26;
  v55 = sub_29E1852C8(v53);
  swift_setDeallocating();
  sub_29E1A7BDC(v54, sub_29DF38418);
  *(v52 + 64) = v71;
  *(v52 + 40) = v55;
  sub_29E1853AC(v52);
  swift_setDeallocating();
  sub_29E1A7BDC(v52 + 32, sub_29DF383AC);
  v56 = sub_29E2C31F4();

  v57 = [v47 fontDescriptorByAddingAttributes_];

  v58 = [v44 fontWithDescriptor:v57 size:0.0];
  v59 = [v45 labelColor];
  v60 = v78;
  v61 = v79;
  v62 = v73;
  v63 = v68;
  sub_29E2C3EA4();

  v64 = v82;
  v65 = v76;
  v76(v61, v82);
  return v65(v60, v64);
}

uint64_t sub_29E1A2514()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = v15 - v6;
  v15[0] = sub_29E2BCBB4();
  v8 = *(v15[0] - 8);
  MEMORY[0x2A1C7C4A8](v15[0]);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C0274();
  sub_29DE9408C(0, &qword_2A1817D48);
  v11 = sub_29E2C02A4();
  sub_29E2C3EB4();

  sub_29E2C3314();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v12 = qword_2A1A67F80;
  sub_29E2BCC74();
  v13 = sub_29E2C3414();
  (*(v2 + 8))(v7, v1);
  (*(v8 + 8))(v10, v15[0]);
  return v13;
}

uint64_t sub_29E1A284C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29E1A6010();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v27 - v8;
  sub_29E1A5F84(0);
  v11 = v10 - 8;
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = (&v27 - v15);
  v17 = *(type metadata accessor for PregnancyModeTimelineGauge() + 20);
  v18 = sub_29E2C02D4();
  (*(*(v18 - 8) + 16))(v16 + v17, a1, v18);
  *v16 = swift_getKeyPath();
  sub_29E19C6E8(0, &qword_2A1819020, MEMORY[0x29EDBC518], MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v17) = sub_29E2C1FE4();
  sub_29E2C1424();
  v19 = v16 + *(v11 + 44);
  *v19 = v17;
  *(v19 + 1) = v20;
  *(v19 + 2) = v21;
  *(v19 + 3) = v22;
  *(v19 + 4) = v23;
  v19[40] = 0;
  *v9 = sub_29E2C1F94();
  sub_29E1A9024(0, &qword_2A181EC78, sub_29E1A60A4);
  sub_29E1A2B58(&v9[*(v24 + 44)]);
  sub_29E1A9280(v16, v13, sub_29E1A5F84);
  sub_29E1A9280(v9, v6, sub_29E1A6010);
  sub_29E1A9280(v13, a2, sub_29E1A5F84);
  sub_29E1A58B0(0, &qword_2A181E8E0, sub_29E1A5F84, sub_29E1A6010);
  sub_29E1A9280(v6, a2 + *(v25 + 48), sub_29E1A6010);
  sub_29E1A7BDC(v9, sub_29E1A6010);
  sub_29E1A7BDC(v16, sub_29E1A5F84);
  sub_29E1A7BDC(v6, sub_29E1A6010);
  return sub_29E1A7BDC(v13, sub_29E1A5F84);
}

uint64_t sub_29E1A2B58@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  sub_29E1A6370();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v28 - v5;
  sub_29E1A6260();
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v28 - v11;
  sub_29E1A612C();
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v18 = &v28 - v17;
  *v18 = sub_29E2C1AA4();
  *(v18 + 1) = 0;
  v18[16] = 1;
  sub_29E1A7F2C(0, &qword_2A181EC80, sub_29E1A61C0);
  sub_29E1A2F58(&v18[*(v19 + 44)]);
  *v12 = sub_29E2C1AA4();
  *(v12 + 1) = 0;
  v12[16] = 1;
  sub_29E1A7F2C(0, &qword_2A181EC88, sub_29E1A62F4);
  v21 = &v12[*(v20 + 44)];
  *v6 = sub_29E2C1BD4();
  *(v6 + 1) = 0;
  v6[16] = 0;
  sub_29E1A7F2C(0, &qword_2A181EC90, sub_29E1A6404);
  sub_29E1A54E4(&v6[*(v22 + 44)]);
  sub_29E1A9280(v6, v3, sub_29E1A6370);
  sub_29E1A9280(v3, v21, sub_29E1A6370);
  sub_29E1A9214(0, &qword_2A181E938, sub_29E1A6370);
  v24 = v21 + *(v23 + 48);
  *v24 = 0;
  *(v24 + 8) = 1;
  sub_29E1A7BDC(v6, sub_29E1A6370);
  sub_29E1A7BDC(v3, sub_29E1A6370);
  sub_29E1A9280(v18, v15, sub_29E1A612C);
  sub_29E1A9280(v12, v9, sub_29E1A6260);
  v25 = v29;
  sub_29E1A9280(v15, v29, sub_29E1A612C);
  sub_29E1A58B0(0, &qword_2A181E900, sub_29E1A612C, sub_29E1A6260);
  sub_29E1A9280(v9, v25 + *(v26 + 48), sub_29E1A6260);
  sub_29E1A7BDC(v12, sub_29E1A6260);
  sub_29E1A7BDC(v18, sub_29E1A612C);
  sub_29E1A7BDC(v9, sub_29E1A6260);
  return sub_29E1A7BDC(v15, sub_29E1A612C);
}

uint64_t sub_29E1A2F58@<X0>(uint64_t a1@<X8>)
{
  sub_29E1A5CE0(0);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v17 - v6;
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v17 - v9;
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v17 - v12;
  sub_29E1A30FC(&v17 - v12);
  sub_29E1A42F0(v10);
  sub_29E1A9280(v13, v7, sub_29E1A5CE0);
  sub_29E1A9280(v10, v4, sub_29E1A5CE0);
  sub_29E1A9280(v7, a1, sub_29E1A5CE0);
  sub_29E1A61F4();
  v15 = a1 + *(v14 + 48);
  *v15 = 0;
  *(v15 + 8) = 1;
  sub_29E1A9280(v4, a1 + *(v14 + 64), sub_29E1A5CE0);
  sub_29E1A7BDC(v10, sub_29E1A5CE0);
  sub_29E1A7BDC(v13, sub_29E1A5CE0);
  sub_29E1A7BDC(v4, sub_29E1A5CE0);
  return sub_29E1A7BDC(v7, sub_29E1A5CE0);
}

uint64_t sub_29E1A30FC@<X0>(uint64_t a1@<X8>)
{
  v136 = a1;
  sub_29E1A5DA4(0, &qword_2A181E8C0, type metadata accessor for AdaptableBlendMode);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v133 = &v114 - v2;
  sub_29E1A5D28();
  v134 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v135 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v120 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_29E2C3384();
  v119 = *(v137 - 8);
  MEMORY[0x2A1C7C4A8](v137);
  v138 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v139 = &v114 - v9;
  v10 = sub_29E2C1E04();
  v11 = *(v10 - 8);
  v143 = v10;
  v144 = v11;
  MEMORY[0x2A1C7C4A8](v10);
  v116 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E03A230();
  v140 = v13;
  MEMORY[0x2A1C7C4A8](v13);
  v132 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v117 = &v114 - v16;
  sub_29E03887C(0);
  MEMORY[0x2A1C7C4A8](v17 - 8);
  v118 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v141 = &v114 - v20;
  MEMORY[0x2A1C7C4A8](v21);
  v142 = &v114 - v22;
  MEMORY[0x2A1C7C4A8](v23);
  v115 = &v114 - v24;
  MEMORY[0x2A1C7C4A8](v25);
  v130 = &v114 - v26;
  MEMORY[0x2A1C7C4A8](v27);
  v131 = &v114 - v28;
  v128 = sub_29E2C16E4();
  v127 = *(v128 - 8);
  MEMORY[0x2A1C7C4A8](v128);
  v126 = &v114 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v30);
  v125 = &v114 - v31;
  v129 = sub_29E2BC9D4();
  v124 = *(v129 - 8);
  MEMORY[0x2A1C7C4A8](v129);
  v33 = &v114 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_29E2BCA44();
  v34 = *(v122 - 8);
  MEMORY[0x2A1C7C4A8](v122);
  v36 = &v114 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_29E2BCA54();
  v38 = *(v37 - 8);
  MEMORY[0x2A1C7C4A8](v37);
  v40 = &v114 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v41);
  v43 = &v114 - v42;
  MEMORY[0x2A1C7C4A8](v44);
  v46 = &v114 - v45;
  v123 = sub_29E2BCBB4();
  v121 = *(v123 - 8);
  MEMORY[0x2A1C7C4A8](v123);
  v48 = &v114 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_29E2C02C4();
  MEMORY[0x29ED78EF0](v49);
  sub_29E2BCA14();
  sub_29E2BC9B4();
  (*(v34 + 8))(v36, v122);
  v50 = *(v38 + 8);
  v51 = v40;
  v52 = v137;
  v50(v51, v37);
  sub_29E2BC9C4();
  sub_29E2BC994();
  (*(v124 + 8))(v33, v129);
  v53 = v43;
  v54 = v138;
  v50(v53, v37);
  sub_29E1A5E20(&qword_2A1817C78, MEMORY[0x29EDB9BB0]);
  sub_29E2BCB94();
  v55 = v46;
  v56 = v139;
  v50(v55, v37);
  (*(v121 + 8))(v48, v123);
  v57 = *(&v146 + 1);
  v129 = v146;
  v58 = v125;
  sub_29E19CAF0(v125);
  v59 = v127;
  v60 = v126;
  v61 = v128;
  (*(v127 + 104))(v126, *MEMORY[0x29EDBC4D0], v128);
  sub_29E1A5E20(&qword_2A181EC98, MEMORY[0x29EDBC518]);
  v62 = v61;
  LOBYTE(v61) = sub_29E2C32A4();
  v63 = *(v59 + 8);
  v63(v60, v62);
  v64 = v58;
  v65 = v57;
  v63(v64, v62);
  if ((v61 & 1) == 0)
  {
    goto LABEL_8;
  }

  v128 = v57;
  v66 = v131;
  sub_29E19C8E0(v131);
  v67 = *MEMORY[0x29EDBC8A0];
  v69 = v143;
  v68 = v144;
  v70 = v130;
  (*(v144 + 104))(v130, v67, v143);
  (*(v68 + 56))(v70, 0, 1, v69);
  v71 = *(v140 + 48);
  v72 = v117;
  sub_29E1A9280(v66, v117, sub_29E03887C);
  sub_29E1A9280(v70, v72 + v71, sub_29E03887C);
  v73 = *(v68 + 48);
  if (v73(v72, 1, v69) == 1)
  {
    sub_29E1A7BDC(v130, sub_29E03887C);
    sub_29E1A7BDC(v131, sub_29E03887C);
    if (v73(v72 + v71, 1, v69) == 1)
    {
      sub_29E1A7BDC(v72, sub_29E03887C);
      v65 = v128;
LABEL_25:
      *&v146 = v129;
      *(&v146 + 1) = v65;
      sub_29DE9DE68();
      v82 = sub_29E2C2294();
      v85 = v112;
      v87 = v113;
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v74 = v130;
  v75 = v115;
  sub_29E1A9280(v72, v115, sub_29E03887C);
  if (v73(v72 + v71, 1, v69) == 1)
  {
    sub_29E1A7BDC(v74, sub_29E03887C);
    sub_29E1A7BDC(v131, sub_29E03887C);
    (*(v144 + 8))(v75, v69);
LABEL_7:
    sub_29E1A7BDC(v72, sub_29E03A230);
    v52 = v137;
    v54 = v138;
    v56 = v139;
    v65 = v128;
    goto LABEL_8;
  }

  v107 = v144;
  v108 = v72 + v71;
  v109 = v116;
  (*(v144 + 32))(v116, v108, v69);
  sub_29E1A5E20(&qword_2A181AE80, MEMORY[0x29EDBC8A8]);
  v110 = sub_29E2C3304();
  v111 = *(v107 + 8);
  v111(v109, v69);
  sub_29E1A7BDC(v74, sub_29E03887C);
  sub_29E1A7BDC(v131, sub_29E03887C);
  v111(v75, v69);
  sub_29E1A7BDC(v72, sub_29E03887C);
  v52 = v137;
  v54 = v138;
  v56 = v139;
  v65 = v128;
  if (v110)
  {
    goto LABEL_25;
  }

LABEL_8:
  sub_29E2C3314();
  v76 = v119;
  (*(v119 + 16))(v54, v56, v52);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v77 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v76 + 8))(v56, v52);
  sub_29E19C6E8(0, &qword_2A1A61CA0, sub_29DEEA958, MEMORY[0x29EDC9E90]);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_29E2CAB20;
  *(v78 + 56) = MEMORY[0x29EDC99B0];
  *(v78 + 64) = sub_29DEB1A44();
  *(v78 + 32) = v129;
  *(v78 + 40) = v65;
  v79 = sub_29E2C3404();
  v81 = v80;

  *&v146 = v79;
  *(&v146 + 1) = v81;
  sub_29DE9DE68();
  v82 = sub_29E2C2294();
  v85 = v84;
  v87 = v86;
  v67 = *MEMORY[0x29EDBC8A0];
LABEL_11:
  v138 = v83;
  v139 = v82;
  sub_29DE93208(v82, v83, v85 & 1);
  sub_29E2BF404();
  v88 = v142;
  sub_29E19C8E0(v142);
  v90 = v143;
  v89 = v144;
  v91 = v141;
  (*(v144 + 104))(v141, v67, v143);
  (*(v89 + 56))(v91, 0, 1, v90);
  v92 = *(v140 + 48);
  v93 = v132;
  sub_29E1A9280(v88, v132, sub_29E03887C);
  sub_29E1A9280(v91, v93 + v92, sub_29E03887C);
  v94 = *(v89 + 48);
  if (v94(v93, 1, v90) == 1)
  {
    sub_29E1A7BDC(v91, sub_29E03887C);
    sub_29E1A7BDC(v88, sub_29E03887C);
    v95 = v94(v93 + v92, 1, v90);
    v97 = v134;
    v96 = v135;
    v98 = v138;
    if (v95 == 1)
    {
      sub_29E1A7BDC(v93, sub_29E03887C);
      v99 = 1;
      v100 = v139;
      goto LABEL_21;
    }
  }

  else
  {
    v101 = v118;
    sub_29E1A9280(v93, v118, sub_29E03887C);
    if (v94(v93 + v92, 1, v90) != 1)
    {
      v102 = v144;
      v103 = v116;
      (*(v144 + 32))(v116, v93 + v92, v90);
      sub_29E1A5E20(&qword_2A181AE80, MEMORY[0x29EDBC8A8]);
      LODWORD(v145) = sub_29E2C3304();
      v104 = *(v102 + 8);
      v104(v103, v90);
      sub_29E1A7BDC(v141, sub_29E03887C);
      sub_29E1A7BDC(v142, sub_29E03887C);
      v104(v101, v90);
      sub_29E1A7BDC(v93, sub_29E03887C);
      if (v145)
      {
        v99 = 1;
      }

      else
      {
        v99 = 2;
      }

      v97 = v134;
      v96 = v135;
      v98 = v138;
      v100 = v139;
      goto LABEL_21;
    }

    sub_29E1A7BDC(v141, sub_29E03887C);
    sub_29E1A7BDC(v142, sub_29E03887C);
    (*(v144 + 8))(v101, v90);
    v97 = v134;
    v96 = v135;
    v98 = v138;
  }

  sub_29E1A7BDC(v93, sub_29E03A230);
  v99 = 2;
  v100 = v139;
LABEL_21:
  v105 = v133;
  sub_29E1A09EC(v99, v98, v87, v133);
  sub_29DED6478(v100, v98, v85 & 1);

  sub_29E1A9094(v105, v96);
  *(v96 + *(v97 + 36)) = 257;
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v146 = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD00000000000002CLL, 0x800000029E3017B0);
  sub_29E1A7D58(&qword_2A181ECA0, sub_29E1A5D28, sub_29E1A9114);
  sub_29E2C23B4();

  sub_29DED6478(v100, v98, v85 & 1);

  return sub_29E1A7BDC(v96, sub_29E1A5D28);
}

uint64_t sub_29E1A42F0@<X0>(uint64_t a1@<X8>)
{
  v136 = a1;
  sub_29E1A5DA4(0, &qword_2A181E8C0, type metadata accessor for AdaptableBlendMode);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v133 = &v114 - v2;
  sub_29E1A5D28();
  v134 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v135 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v120 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_29E2C3384();
  v119 = *(v137 - 8);
  MEMORY[0x2A1C7C4A8](v137);
  v138 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v139 = &v114 - v9;
  v10 = sub_29E2C1E04();
  v11 = *(v10 - 8);
  v143 = v10;
  v144 = v11;
  MEMORY[0x2A1C7C4A8](v10);
  v116 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E03A230();
  v140 = v13;
  MEMORY[0x2A1C7C4A8](v13);
  v132 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v117 = &v114 - v16;
  sub_29E03887C(0);
  MEMORY[0x2A1C7C4A8](v17 - 8);
  v118 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v141 = &v114 - v20;
  MEMORY[0x2A1C7C4A8](v21);
  v142 = &v114 - v22;
  MEMORY[0x2A1C7C4A8](v23);
  v115 = &v114 - v24;
  MEMORY[0x2A1C7C4A8](v25);
  v130 = &v114 - v26;
  MEMORY[0x2A1C7C4A8](v27);
  v131 = &v114 - v28;
  v128 = sub_29E2C16E4();
  v127 = *(v128 - 8);
  MEMORY[0x2A1C7C4A8](v128);
  v126 = &v114 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v30);
  v125 = &v114 - v31;
  v129 = sub_29E2BC9D4();
  v124 = *(v129 - 8);
  MEMORY[0x2A1C7C4A8](v129);
  v33 = &v114 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_29E2BCA44();
  v34 = *(v122 - 8);
  MEMORY[0x2A1C7C4A8](v122);
  v36 = &v114 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_29E2BCA54();
  v38 = *(v37 - 8);
  MEMORY[0x2A1C7C4A8](v37);
  v40 = &v114 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v41);
  v43 = &v114 - v42;
  MEMORY[0x2A1C7C4A8](v44);
  v46 = &v114 - v45;
  v123 = sub_29E2BCBB4();
  v121 = *(v123 - 8);
  MEMORY[0x2A1C7C4A8](v123);
  v48 = &v114 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_29E2C02B4();
  MEMORY[0x29ED78EF0](v49);
  sub_29E2BCA14();
  sub_29E2BC9B4();
  (*(v34 + 8))(v36, v122);
  v50 = *(v38 + 8);
  v51 = v40;
  v52 = v137;
  v50(v51, v37);
  sub_29E2BC9C4();
  sub_29E2BC994();
  (*(v124 + 8))(v33, v129);
  v53 = v43;
  v54 = v138;
  v50(v53, v37);
  sub_29E1A5E20(&qword_2A1817C78, MEMORY[0x29EDB9BB0]);
  sub_29E2BCB94();
  v55 = v46;
  v56 = v139;
  v50(v55, v37);
  (*(v121 + 8))(v48, v123);
  v57 = *(&v146 + 1);
  v129 = v146;
  v58 = v125;
  sub_29E19CAF0(v125);
  v59 = v127;
  v60 = v126;
  v61 = v128;
  (*(v127 + 104))(v126, *MEMORY[0x29EDBC4D0], v128);
  sub_29E1A5E20(&qword_2A181EC98, MEMORY[0x29EDBC518]);
  v62 = v61;
  LOBYTE(v61) = sub_29E2C32A4();
  v63 = *(v59 + 8);
  v63(v60, v62);
  v64 = v58;
  v65 = v57;
  v63(v64, v62);
  if ((v61 & 1) == 0)
  {
    goto LABEL_8;
  }

  v128 = v57;
  v66 = v131;
  sub_29E19C8E0(v131);
  v67 = *MEMORY[0x29EDBC8A0];
  v69 = v143;
  v68 = v144;
  v70 = v130;
  (*(v144 + 104))(v130, v67, v143);
  (*(v68 + 56))(v70, 0, 1, v69);
  v71 = *(v140 + 48);
  v72 = v117;
  sub_29E1A9280(v66, v117, sub_29E03887C);
  sub_29E1A9280(v70, v72 + v71, sub_29E03887C);
  v73 = *(v68 + 48);
  if (v73(v72, 1, v69) == 1)
  {
    sub_29E1A7BDC(v130, sub_29E03887C);
    sub_29E1A7BDC(v131, sub_29E03887C);
    if (v73(v72 + v71, 1, v69) == 1)
    {
      sub_29E1A7BDC(v72, sub_29E03887C);
      v65 = v128;
LABEL_25:
      *&v146 = v129;
      *(&v146 + 1) = v65;
      sub_29DE9DE68();
      v82 = sub_29E2C2294();
      v85 = v112;
      v87 = v113;
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v74 = v130;
  v75 = v115;
  sub_29E1A9280(v72, v115, sub_29E03887C);
  if (v73(v72 + v71, 1, v69) == 1)
  {
    sub_29E1A7BDC(v74, sub_29E03887C);
    sub_29E1A7BDC(v131, sub_29E03887C);
    (*(v144 + 8))(v75, v69);
LABEL_7:
    sub_29E1A7BDC(v72, sub_29E03A230);
    v52 = v137;
    v54 = v138;
    v56 = v139;
    v65 = v128;
    goto LABEL_8;
  }

  v107 = v144;
  v108 = v72 + v71;
  v109 = v116;
  (*(v144 + 32))(v116, v108, v69);
  sub_29E1A5E20(&qword_2A181AE80, MEMORY[0x29EDBC8A8]);
  v110 = sub_29E2C3304();
  v111 = *(v107 + 8);
  v111(v109, v69);
  sub_29E1A7BDC(v74, sub_29E03887C);
  sub_29E1A7BDC(v131, sub_29E03887C);
  v111(v75, v69);
  sub_29E1A7BDC(v72, sub_29E03887C);
  v52 = v137;
  v54 = v138;
  v56 = v139;
  v65 = v128;
  if (v110)
  {
    goto LABEL_25;
  }

LABEL_8:
  sub_29E2C3314();
  v76 = v119;
  (*(v119 + 16))(v54, v56, v52);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v77 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v76 + 8))(v56, v52);
  sub_29E19C6E8(0, &qword_2A1A61CA0, sub_29DEEA958, MEMORY[0x29EDC9E90]);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_29E2CAB20;
  *(v78 + 56) = MEMORY[0x29EDC99B0];
  *(v78 + 64) = sub_29DEB1A44();
  *(v78 + 32) = v129;
  *(v78 + 40) = v65;
  v79 = sub_29E2C3404();
  v81 = v80;

  *&v146 = v79;
  *(&v146 + 1) = v81;
  sub_29DE9DE68();
  v82 = sub_29E2C2294();
  v85 = v84;
  v87 = v86;
  v67 = *MEMORY[0x29EDBC8A0];
LABEL_11:
  v138 = v83;
  v139 = v82;
  sub_29DE93208(v82, v83, v85 & 1);
  sub_29E2BF404();
  v88 = v142;
  sub_29E19C8E0(v142);
  v90 = v143;
  v89 = v144;
  v91 = v141;
  (*(v144 + 104))(v141, v67, v143);
  (*(v89 + 56))(v91, 0, 1, v90);
  v92 = *(v140 + 48);
  v93 = v132;
  sub_29E1A9280(v88, v132, sub_29E03887C);
  sub_29E1A9280(v91, v93 + v92, sub_29E03887C);
  v94 = *(v89 + 48);
  if (v94(v93, 1, v90) == 1)
  {
    sub_29E1A7BDC(v91, sub_29E03887C);
    sub_29E1A7BDC(v88, sub_29E03887C);
    v95 = v94(v93 + v92, 1, v90);
    v97 = v134;
    v96 = v135;
    v98 = v138;
    if (v95 == 1)
    {
      sub_29E1A7BDC(v93, sub_29E03887C);
      v99 = 1;
      v100 = v139;
      goto LABEL_21;
    }
  }

  else
  {
    v101 = v118;
    sub_29E1A9280(v93, v118, sub_29E03887C);
    if (v94(v93 + v92, 1, v90) != 1)
    {
      v102 = v144;
      v103 = v116;
      (*(v144 + 32))(v116, v93 + v92, v90);
      sub_29E1A5E20(&qword_2A181AE80, MEMORY[0x29EDBC8A8]);
      LODWORD(v145) = sub_29E2C3304();
      v104 = *(v102 + 8);
      v104(v103, v90);
      sub_29E1A7BDC(v141, sub_29E03887C);
      sub_29E1A7BDC(v142, sub_29E03887C);
      v104(v101, v90);
      sub_29E1A7BDC(v93, sub_29E03887C);
      if (v145)
      {
        v99 = 1;
      }

      else
      {
        v99 = 2;
      }

      v97 = v134;
      v96 = v135;
      v98 = v138;
      v100 = v139;
      goto LABEL_21;
    }

    sub_29E1A7BDC(v141, sub_29E03887C);
    sub_29E1A7BDC(v142, sub_29E03887C);
    (*(v144 + 8))(v101, v90);
    v97 = v134;
    v96 = v135;
    v98 = v138;
  }

  sub_29E1A7BDC(v93, sub_29E03A230);
  v99 = 2;
  v100 = v139;
LABEL_21:
  v105 = v133;
  sub_29E1A09EC(v99, v98, v87, v133);
  sub_29DED6478(v100, v98, v85 & 1);

  sub_29E1A9094(v105, v96);
  *(v96 + *(v97 + 36)) = 257;
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v146 = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD00000000000002ALL, 0x800000029E301780);
  sub_29E1A7D58(&qword_2A181ECA0, sub_29E1A5D28, sub_29E1A9114);
  sub_29E2C23B4();

  sub_29DED6478(v100, v98, v85 & 1);

  return sub_29E1A7BDC(v96, sub_29E1A5D28);
}

uint64_t sub_29E1A54E4@<X0>(uint64_t a1@<X8>)
{
  sub_29E1A5CE0(0);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v16 - v6;
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v16 - v9;
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v16 - v12;
  sub_29E1A30FC(&v16 - v12);
  sub_29E1A42F0(v10);
  sub_29E1A9280(v13, v7, sub_29E1A5CE0);
  sub_29E1A9280(v10, v4, sub_29E1A5CE0);
  sub_29E1A9280(v7, a1, sub_29E1A5CE0);
  sub_29E1A6438(0);
  sub_29E1A9280(v4, a1 + *(v14 + 48), sub_29E1A5CE0);
  sub_29E1A7BDC(v10, sub_29E1A5CE0);
  sub_29E1A7BDC(v13, sub_29E1A5CE0);
  sub_29E1A7BDC(v4, sub_29E1A5CE0);
  return sub_29E1A7BDC(v7, sub_29E1A5CE0);
}

void sub_29E1A5678()
{
  if (!qword_2A181E830)
  {
    sub_29E1A570C();
    sub_29E1A5E20(&qword_2A181E978, sub_29E1A570C);
    v0 = sub_29E2C28F4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E830);
    }
  }
}

void sub_29E1A570C()
{
  if (!qword_2A181E838)
  {
    sub_29E1A58B0(255, &qword_2A181E840, sub_29E1A5794, sub_29E1A5E68);
    v0 = sub_29E2C2B14();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E838);
    }
  }
}

void sub_29E1A5794()
{
  if (!qword_2A181E848)
  {
    sub_29E1A5828();
    sub_29E1A5E20(&qword_2A181E8C8, sub_29E1A5828);
    v0 = sub_29E2C28F4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E848);
    }
  }
}

void sub_29E1A5828()
{
  if (!qword_2A181E850)
  {
    sub_29E1A58B0(255, &qword_2A181E858, sub_29E1A592C, sub_29E1A5CE0);
    v0 = sub_29E2C2B14();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E850);
    }
  }
}

void sub_29E1A58B0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void sub_29E1A592C()
{
  if (!qword_2A181E860)
  {
    sub_29E1A59C0(255);
    sub_29E1A5E20(&qword_2A181E8A8, sub_29E1A59C0);
    v0 = sub_29E2C2884();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E860);
    }
  }
}

void sub_29E1A59F4()
{
  if (!qword_2A181E870)
  {
    sub_29E1A5DA4(255, &qword_2A1819280, MEMORY[0x29EDBC0A8]);
    sub_29E1A5A80(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181E870);
    }
  }
}

void sub_29E1A5AE8()
{
  if (!qword_2A181E888)
  {
    sub_29E1A5B8C(255, &qword_2A181E890, sub_29E1A5B6C);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181E888);
    }
  }
}

void sub_29E1A5B8C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29E1A5C88(255, &qword_2A18184F0, &qword_2A18184F8);
    v4 = sub_29E2C1744();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E1A5C10()
{
  if (!qword_2A181E8A0)
  {
    sub_29E1A5C88(255, &qword_2A181C7B8, &qword_2A181C7C0);
    v0 = sub_29E2C1744();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E8A0);
    }
  }
}

void sub_29E1A5C88(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_29DEE9848(255, a3);
    v4 = sub_29E2C1F44();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E1A5D28()
{
  if (!qword_2A181E8B8)
  {
    sub_29E1A5DA4(255, &qword_2A181E8C0, type metadata accessor for AdaptableBlendMode);
    v0 = sub_29E2C1744();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E8B8);
    }
  }
}

void sub_29E1A5DA4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_29E1A5E20(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E1A5E68()
{
  if (!qword_2A181E8D0)
  {
    sub_29E1A5EFC();
    sub_29E1A5E20(&qword_2A181E970, sub_29E1A5EFC);
    v0 = sub_29E2C28F4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E8D0);
    }
  }
}

void sub_29E1A5EFC()
{
  if (!qword_2A181E8D8)
  {
    sub_29E1A58B0(255, &qword_2A181E8E0, sub_29E1A5F84, sub_29E1A6010);
    v0 = sub_29E2C2B14();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E8D8);
    }
  }
}

void sub_29E1A5FAC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_29E1A6010()
{
  if (!qword_2A181E8F0)
  {
    sub_29E1A60A4();
    sub_29E1A5E20(&qword_2A181E968, sub_29E1A60A4);
    v0 = sub_29E2C1554();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E8F0);
    }
  }
}

void sub_29E1A60A4()
{
  if (!qword_2A181E8F8)
  {
    sub_29E1A58B0(255, &qword_2A181E900, sub_29E1A612C, sub_29E1A6260);
    v0 = sub_29E2C2B14();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E8F8);
    }
  }
}

void sub_29E1A612C()
{
  if (!qword_2A181E908)
  {
    sub_29E1A61C0(255);
    sub_29E1A5E20(&qword_2A181E920, sub_29E1A61C0);
    v0 = sub_29E2C2884();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E908);
    }
  }
}

void sub_29E1A61F4()
{
  if (!qword_2A181E918)
  {
    sub_29E1A5CE0(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A181E918);
    }
  }
}

void sub_29E1A6260()
{
  if (!qword_2A181E928)
  {
    sub_29E1A62F4();
    sub_29E1A5E20(&qword_2A181E960, sub_29E1A62F4);
    v0 = sub_29E2C2884();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E928);
    }
  }
}

void sub_29E1A62F4()
{
  if (!qword_2A181E930)
  {
    sub_29E1A9214(255, &qword_2A181E938, sub_29E1A6370);
    v0 = sub_29E2C2B14();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E930);
    }
  }
}

void sub_29E1A6370()
{
  if (!qword_2A181E940)
  {
    sub_29E1A6404(255);
    sub_29E1A5E20(&qword_2A181E958, sub_29E1A6404);
    v0 = sub_29E2C28F4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E940);
    }
  }
}

void sub_29E1A6458()
{
  if (!qword_2A181E980)
  {
    sub_29E1A5678();
    sub_29E1A5E20(&qword_2A181E988, sub_29E1A5678);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A181E980);
    }
  }
}

void sub_29E1A6534()
{
  if (!qword_2A181E998)
  {
    sub_29E1A65D8(255, &qword_2A181E9A0, sub_29E1A6458, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558]);
    v0 = sub_29E2C1744();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E998);
    }
  }
}

void sub_29E1A65D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_29E1A66A4()
{
  if (!qword_2A181E9B8)
  {
    sub_29E1A6728(255);
    sub_29E1A7AFC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A181E9B8);
    }
  }
}

void sub_29E1A6770()
{
  if (!qword_2A181E9C8)
  {
    sub_29E1A67D4(255);
    sub_29E1A799C();
    v0 = sub_29E2C28F4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E9C8);
    }
  }
}

void sub_29E1A67FC()
{
  if (!qword_2A181E9D8)
  {
    sub_29E1A6890();
    sub_29E1A5E20(&qword_2A181EBC0, sub_29E1A6890);
    v0 = sub_29E2C1554();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E9D8);
    }
  }
}

void sub_29E1A6890()
{
  if (!qword_2A181E9E0)
  {
    sub_29E1A78D8(255, &qword_2A181E9E8, sub_29E1A692C, sub_29E1A6F90, sub_29E1A7520);
    v0 = sub_29E2C2B14();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E9E0);
    }
  }
}

void sub_29E1A6954()
{
  if (!qword_2A181E9F8)
  {
    sub_29E1A69E8(255);
    sub_29E1A5E20(&qword_2A181EAA0, sub_29E1A69E8);
    v0 = sub_29E2C2884();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E9F8);
    }
  }
}

void sub_29E1A6A1C()
{
  if (!qword_2A181EA08)
  {
    sub_29E1A6AB8(255);
    sub_29E1A6AE0(255);
    sub_29E1A6B08(255);
    sub_29E1A6C78(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_2A181EA08);
    }
  }
}

void sub_29E1A6B30()
{
  if (!qword_2A181EA28)
  {
    sub_29E1A6BC4(255);
    sub_29E1A5E20(&qword_2A181EA40, sub_29E1A6BC4);
    v0 = sub_29E2C28F4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181EA28);
    }
  }
}

void sub_29E1A6C18(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_29E1A6CC8()
{
  if (!qword_2A181EA58)
  {
    sub_29E1A6D5C();
    sub_29E1A5E20(&qword_2A181EA98, sub_29E1A6D5C);
    v0 = sub_29E2C28F4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181EA58);
    }
  }
}

void sub_29E1A6D5C()
{
  if (!qword_2A181EA60)
  {
    sub_29E1A58B0(255, &qword_2A181EA68, sub_29E1A6DE4, sub_29E1A6010);
    v0 = sub_29E2C2B14();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181EA60);
    }
  }
}

void sub_29E1A6DE4()
{
  if (!qword_2A181EA70)
  {
    sub_29E1A6E78();
    sub_29E1A5E20(&qword_2A181EA90, sub_29E1A6E78);
    v0 = sub_29E2C2884();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181EA70);
    }
  }
}

void sub_29E1A6E78()
{
  if (!qword_2A181EA78)
  {
    sub_29E1A58B0(255, &qword_2A181EA80, sub_29E1A5F84, sub_29E1A6F00);
    v0 = sub_29E2C2B14();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181EA78);
    }
  }
}

void sub_29E1A6F14(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_29E1A5B8C(255, &qword_2A181E890, sub_29E1A5B6C);
    v3 = sub_29E2C1744();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_29E1A6FB8()
{
  if (!qword_2A181EAB0)
  {
    sub_29E1A704C();
    sub_29E1A5E20(&qword_2A181EB48, sub_29E1A704C);
    v0 = sub_29E2C2904();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181EAB0);
    }
  }
}

void sub_29E1A704C()
{
  if (!qword_2A181EAB8)
  {
    sub_29E1A58B0(255, &qword_2A181EAC0, sub_29E1A70D4, sub_29E1A7274);
    v0 = sub_29E2C2B14();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181EAB8);
    }
  }
}

void sub_29E1A70D4()
{
  if (!qword_2A181EAC8)
  {
    sub_29E1A7168(255);
    sub_29E1A5E20(&qword_2A181EAF0, sub_29E1A7168);
    v0 = sub_29E2C2884();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181EAC8);
    }
  }
}

void sub_29E1A719C()
{
  if (!qword_2A181EAD8)
  {
    sub_29E1A7204();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181EAD8);
    }
  }
}

void sub_29E1A7204()
{
  if (!qword_2A181EAE0)
  {
    sub_29E1A6F14(255, &qword_2A181EAE8);
    v0 = sub_29E2C1744();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181EAE0);
    }
  }
}

void sub_29E1A7274()
{
  if (!qword_2A181EAF8)
  {
    sub_29E1A7308(255);
    sub_29E1A5E20(&qword_2A181EB40, sub_29E1A7308);
    v0 = sub_29E2C2884();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181EAF8);
    }
  }
}

void sub_29E1A733C()
{
  if (!qword_2A181EB08)
  {
    sub_29E1A73B4();
    sub_29E1A74D0(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A181EB08);
    }
  }
}

void sub_29E1A73B4()
{
  if (!qword_2A181EB10)
  {
    sub_29E1A7448();
    sub_29E1A5E20(&qword_2A181EB28, sub_29E1A7448);
    v0 = sub_29E2C28F4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181EB10);
    }
  }
}

void sub_29E1A7448()
{
  if (!qword_2A181EB18)
  {
    sub_29E1A58B0(255, &qword_2A181EB20, sub_29E1A5794, sub_29E1A6B30);
    v0 = sub_29E2C2B14();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181EB18);
    }
  }
}

void sub_29E1A7520()
{
  if (!qword_2A181EB50)
  {
    sub_29E1A75B4();
    sub_29E1A5E20(&qword_2A181EBB8, sub_29E1A75B4);
    v0 = sub_29E2C2904();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181EB50);
    }
  }
}

void sub_29E1A75B4()
{
  if (!qword_2A181EB58)
  {
    sub_29E1A58B0(255, &qword_2A181EB60, sub_29E1A70D4, sub_29E1A763C);
    v0 = sub_29E2C2B14();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181EB58);
    }
  }
}

void sub_29E1A7664()
{
  if (!qword_2A181EB70)
  {
    sub_29E1A76F8();
    sub_29E1A5E20(&qword_2A181EBB0, sub_29E1A76F8);
    v0 = sub_29E2C28F4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181EB70);
    }
  }
}

void sub_29E1A76F8()
{
  if (!qword_2A181EB78)
  {
    sub_29E1A58B0(255, &qword_2A181EB80, sub_29E1A7780, sub_29E1A5E68);
    v0 = sub_29E2C2B14();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181EB78);
    }
  }
}

void sub_29E1A77A8()
{
  if (!qword_2A181EB90)
  {
    sub_29E1A783C();
    sub_29E1A5E20(&qword_2A181EBA8, sub_29E1A783C);
    v0 = sub_29E2C2884();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181EB90);
    }
  }
}

void sub_29E1A783C()
{
  if (!qword_2A181EB98)
  {
    sub_29E1A78D8(255, &qword_2A181EBA0, sub_29E1A6AB8, sub_29E1A7974, sub_29E1A6B08);
    v0 = sub_29E2C2B14();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181EB98);
    }
  }
}

void sub_29E1A78D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    a5(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v9)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

unint64_t sub_29E1A799C()
{
  result = qword_2A181EBC8;
  if (!qword_2A181EBC8)
  {
    sub_29E1A67D4(255);
    sub_29E1A5E20(&qword_2A181EBD0, sub_29E1A67FC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181EBC8);
  }

  return result;
}

void sub_29E1A7A4C()
{
  if (!qword_2A181EBD8)
  {
    sub_29E1A7AA8();
    v0 = sub_29E2C1E74();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181EBD8);
    }
  }
}

unint64_t sub_29E1A7AA8()
{
  result = qword_2A181EBE0;
  if (!qword_2A181EBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181EBE0);
  }

  return result;
}

unint64_t sub_29E1A7AFC()
{
  result = qword_2A181EBE8;
  if (!qword_2A181EBE8)
  {
    sub_29E1A6728(255);
    sub_29E1A5E20(&qword_2A181EBF0, sub_29E1A6770);
    sub_29E1A5E20(&qword_2A181EBF8, sub_29E1A7A4C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181EBE8);
  }

  return result;
}

uint64_t sub_29E1A7BDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_29E1A7C3C()
{
  result = qword_2A181EC08;
  if (!qword_2A181EC08)
  {
    sub_29E1A665C(255);
    sub_29E1A6728(255);
    sub_29E1A7AFC();
    swift_getOpaqueTypeConformance2();
    sub_29E1A5E20(&qword_2A1819290, MEMORY[0x29EDBC0A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181EC08);
  }

  return result;
}

uint64_t sub_29E1A7D58(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29E1A7DD8()
{
  result = qword_2A181EC20;
  if (!qword_2A181EC20)
  {
    sub_29E1A65D8(255, &qword_2A181E9A0, sub_29E1A6458, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558]);
    sub_29E1A5678();
    sub_29E1A5E20(&qword_2A181E988, sub_29E1A5678);
    swift_getOpaqueTypeConformance2();
    sub_29E1A5E20(&qword_2A1819290, MEMORY[0x29EDBC0A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181EC20);
  }

  return result;
}

void sub_29E1A7F2C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_29E1A7F98()
{
  result = qword_2A181EC38;
  if (!qword_2A181EC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181EC38);
  }

  return result;
}

uint64_t sub_29E1A7FEC()
{
  type metadata accessor for PregnancyModeTimelineView(0);

  return sub_29E19DB88();
}

uint64_t sub_29E1A805C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E1A80C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E1A8124@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_29E1A7274();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_29E2C1A94();
  v17 = 1;
  sub_29E1A879C(&v33);
  v26 = *&v34[112];
  v27 = *&v34[128];
  v22 = *&v34[48];
  v23 = *&v34[64];
  v24 = *&v34[80];
  v25 = *&v34[96];
  v18 = v33;
  v19 = *v34;
  v20 = *&v34[16];
  v21 = *&v34[32];
  v29[8] = *&v34[112];
  v29[9] = *&v34[128];
  v29[4] = *&v34[48];
  v29[5] = *&v34[64];
  v29[6] = *&v34[80];
  v29[7] = *&v34[96];
  v29[0] = v33;
  v29[1] = *v34;
  v28 = v34[144];
  v30 = v34[144];
  v29[2] = *&v34[16];
  v29[3] = *&v34[32];
  sub_29E1A9280(&v18, &v31, sub_29E1A7168);
  sub_29E1A7BDC(v29, sub_29E1A7168);
  *&v16[119] = v25;
  *&v16[135] = v26;
  *&v16[151] = v27;
  *&v16[55] = v21;
  *&v16[71] = v22;
  *&v16[87] = v23;
  *&v16[103] = v24;
  *&v16[7] = v18;
  *&v16[23] = v19;
  v16[167] = v28;
  *&v16[39] = v20;
  v8 = v17;
  sub_29E1A9280(a1, v6, sub_29E1A7274);
  *(&v32[7] + 1) = *&v16[112];
  *(&v32[8] + 1) = *&v16[128];
  *(&v32[9] + 1) = *&v16[144];
  *(&v32[3] + 1) = *&v16[48];
  *(&v32[4] + 1) = *&v16[64];
  *(&v32[5] + 1) = *&v16[80];
  *(&v32[6] + 1) = *&v16[96];
  *(v32 + 1) = *v16;
  v31 = v7;
  LOBYTE(v32[0]) = v8;
  *(&v32[10] + 1) = *&v16[160];
  *(&v32[1] + 1) = *&v16[16];
  *(&v32[2] + 1) = *&v16[32];
  v9 = v32[8];
  a2[8] = v32[7];
  a2[9] = v9;
  a2[10] = v32[9];
  *(a2 + 169) = *(&v32[9] + 9);
  v10 = v32[4];
  a2[4] = v32[3];
  a2[5] = v10;
  v11 = v32[6];
  a2[6] = v32[5];
  a2[7] = v11;
  v12 = v32[0];
  *a2 = v31;
  a2[1] = v12;
  v13 = v32[2];
  a2[2] = v32[1];
  a2[3] = v13;
  sub_29E1A58B0(0, &qword_2A181EAC0, sub_29E1A70D4, sub_29E1A7274);
  sub_29E1A9280(v6, a2 + *(v14 + 48), sub_29E1A7274);
  sub_29E1A9280(&v31, &v33, sub_29E1A70D4);
  sub_29E1A7BDC(v6, sub_29E1A7274);
  *&v34[113] = *&v16[112];
  *&v34[129] = *&v16[128];
  *&v34[145] = *&v16[144];
  *&v34[49] = *&v16[48];
  *&v34[65] = *&v16[64];
  *&v34[81] = *&v16[80];
  *&v34[97] = *&v16[96];
  *&v34[1] = *v16;
  *&v34[17] = *&v16[16];
  v33 = v7;
  v34[0] = v8;
  v35 = *&v16[160];
  *&v34[33] = *&v16[32];
  return sub_29E1A7BDC(&v33, sub_29E1A70D4);
}

uint64_t sub_29E1A8460@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_29E1A763C(0);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_29E2C1A94();
  v17 = 1;
  sub_29E1A879C(&v33);
  v26 = *&v34[112];
  v27 = *&v34[128];
  v22 = *&v34[48];
  v23 = *&v34[64];
  v24 = *&v34[80];
  v25 = *&v34[96];
  v18 = v33;
  v19 = *v34;
  v20 = *&v34[16];
  v21 = *&v34[32];
  v29[8] = *&v34[112];
  v29[9] = *&v34[128];
  v29[4] = *&v34[48];
  v29[5] = *&v34[64];
  v29[6] = *&v34[80];
  v29[7] = *&v34[96];
  v29[0] = v33;
  v29[1] = *v34;
  v28 = v34[144];
  v30 = v34[144];
  v29[2] = *&v34[16];
  v29[3] = *&v34[32];
  sub_29E1A9280(&v18, &v31, sub_29E1A7168);
  sub_29E1A7BDC(v29, sub_29E1A7168);
  *&v16[119] = v25;
  *&v16[135] = v26;
  *&v16[151] = v27;
  *&v16[55] = v21;
  *&v16[71] = v22;
  *&v16[87] = v23;
  *&v16[103] = v24;
  *&v16[7] = v18;
  *&v16[23] = v19;
  v16[167] = v28;
  *&v16[39] = v20;
  v8 = v17;
  sub_29E1A9280(a1, v6, sub_29E1A763C);
  *(&v32[7] + 1) = *&v16[112];
  *(&v32[8] + 1) = *&v16[128];
  *(&v32[9] + 1) = *&v16[144];
  *(&v32[3] + 1) = *&v16[48];
  *(&v32[4] + 1) = *&v16[64];
  *(&v32[5] + 1) = *&v16[80];
  *(&v32[6] + 1) = *&v16[96];
  *(v32 + 1) = *v16;
  v31 = v7;
  LOBYTE(v32[0]) = v8;
  *(&v32[10] + 1) = *&v16[160];
  *(&v32[1] + 1) = *&v16[16];
  *(&v32[2] + 1) = *&v16[32];
  v9 = v32[8];
  a2[8] = v32[7];
  a2[9] = v9;
  a2[10] = v32[9];
  *(a2 + 169) = *(&v32[9] + 9);
  v10 = v32[4];
  a2[4] = v32[3];
  a2[5] = v10;
  v11 = v32[6];
  a2[6] = v32[5];
  a2[7] = v11;
  v12 = v32[0];
  *a2 = v31;
  a2[1] = v12;
  v13 = v32[2];
  a2[2] = v32[1];
  a2[3] = v13;
  sub_29E1A58B0(0, &qword_2A181EB60, sub_29E1A70D4, sub_29E1A763C);
  sub_29E1A9280(v6, a2 + *(v14 + 48), sub_29E1A763C);
  sub_29E1A9280(&v31, &v33, sub_29E1A70D4);
  sub_29E1A7BDC(v6, sub_29E1A763C);
  *&v34[113] = *&v16[112];
  *&v34[129] = *&v16[128];
  *&v34[145] = *&v16[144];
  *&v34[49] = *&v16[48];
  *&v34[65] = *&v16[64];
  *&v34[81] = *&v16[80];
  *&v34[97] = *&v16[96];
  *&v34[1] = *v16;
  *&v34[17] = *&v16[16];
  v33 = v7;
  v34[0] = v8;
  v35 = *&v16[160];
  *&v34[33] = *&v16[32];
  return sub_29E1A7BDC(&v33, sub_29E1A70D4);
}

uint64_t sub_29E1A879C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29E2C2104();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_29E2C2714();
  sub_29E2C2144();
  (*(v3 + 104))(v5, *MEMORY[0x29EDBC9B0], v2);
  sub_29E2C2124();

  (*(v3 + 8))(v5, v2);
  sub_29E2C20B4();
  v6 = sub_29E2C20F4();

  KeyPath = swift_getKeyPath();
  sub_29DE9408C(0, &qword_2A1817FE0);
  sub_29E2C4074();
  v8 = sub_29E2C2654();
  v9 = swift_getKeyPath();
  v10 = sub_29E2C2614();
  v11 = swift_getKeyPath();
  sub_29E2C2AB4();
  sub_29E2C1564();
  v26 = sub_29E2C1FD4();
  sub_29E2C1424();
  v30 = 1;
  v12 = v27;
  *&v35 = v27;
  *(&v35 + 1) = KeyPath;
  *&v36 = v6;
  *(&v36 + 1) = v9;
  *&v37 = v8;
  *(&v37 + 1) = v11;
  *&v38[0] = v10;
  v13 = v32;
  *(&v38[2] + 8) = v33;
  v14 = v31;
  *(&v38[1] + 8) = v32;
  *(v38 + 8) = v31;
  v15 = v26;
  BYTE8(v38[3]) = v26;
  HIDWORD(v38[3]) = *&v34[3];
  *(&v38[3] + 9) = *v34;
  *&v39 = v16;
  *(&v39 + 1) = v17;
  *&v40 = v18;
  *(&v40 + 1) = v19;
  v41 = 0;
  *&v29[135] = v40;
  v29[151] = 0;
  *&v29[119] = v39;
  *&v29[103] = v38[3];
  *&v29[23] = v36;
  *&v29[7] = v35;
  *&v29[87] = v38[2];
  *&v29[71] = v38[1];
  *&v29[55] = v38[0];
  *&v29[39] = v37;
  *a1 = 0;
  *(a1 + 8) = 1;
  v20 = *&v29[112];
  *(a1 + 105) = *&v29[96];
  *(a1 + 121) = v20;
  *(a1 + 137) = *&v29[128];
  *(a1 + 153) = *&v29[144];
  v21 = *&v29[48];
  *(a1 + 41) = *&v29[32];
  *(a1 + 57) = v21;
  v22 = *&v29[80];
  *(a1 + 73) = *&v29[64];
  *(a1 + 89) = v22;
  v23 = *&v29[16];
  *(a1 + 9) = *v29;
  *(a1 + 25) = v23;
  v42[0] = v12;
  v42[1] = KeyPath;
  v42[2] = v6;
  v42[3] = v9;
  v42[4] = v8;
  v42[5] = v11;
  v42[6] = v10;
  v43 = v14;
  v44 = v13;
  v45 = v33;
  v46 = v15;
  *v47 = *v34;
  *&v47[3] = *&v34[3];
  v48 = v16;
  v49 = v17;
  v50 = v18;
  v51 = v19;
  v52 = 0;
  sub_29E1A9280(&v35, &v28, sub_29E1A7204);
  return sub_29E1A7BDC(v42, sub_29E1A7204);
}

uint64_t sub_29E1A8B34@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_29E2C1A64();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x29EDBC370];
  sub_29E19C6E8(0, &unk_2A181A6A0, MEMORY[0x29EDBC370], MEMORY[0x29EDBC388]);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v15 - v10;
  sub_29E1A95C0(v2, &v15 - v10, &unk_2A181A6A0, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_29E2C1494();
    return (*(*(v12 - 8) + 32))(a1, v11, v12);
  }

  else
  {
    sub_29E2C3A24();
    v14 = sub_29E2C1F84();
    sub_29E2C03B4();

    sub_29E2C1A54();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_29E1A8D7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v3 = sub_29E2C1494();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v20 - v8;
  v10 = sub_29E2C2AE4();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1A8B34(v9);
  (*(v4 + 104))(v6, *MEMORY[0x29EDBC360], v3);
  v14 = sub_29E2C1484();
  v15 = *(v4 + 8);
  v15(v6, v3);
  v15(v9, v3);
  v16 = MEMORY[0x29EDBCBE0];
  if ((v14 & 1) == 0)
  {
    v16 = MEMORY[0x29EDBCBD8];
  }

  (*(v11 + 104))(v13, *v16, v10);
  sub_29E1A65D8(0, &qword_2A181ED08, sub_29E1A952C, MEMORY[0x29EDBC5D8], MEMORY[0x29EDBC558]);
  (*(v11 + 32))(a2 + *(v17 + 36), v13, v10);
  sub_29E1A952C();
  return (*(*(v18 - 8) + 16))(a2, v21, v18);
}

void sub_29E1A9024(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29E1A7F98();
    v4 = sub_29E2C15D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E1A9094(uint64_t a1, uint64_t a2)
{
  sub_29E1A5DA4(0, &qword_2A181E8C0, type metadata accessor for AdaptableBlendMode);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_29E1A9114()
{
  result = qword_2A181ECA8;
  if (!qword_2A181ECA8)
  {
    sub_29E1A5DA4(255, &qword_2A181E8C0, type metadata accessor for AdaptableBlendMode);
    sub_29E1A5E20(&qword_2A181ECB0, type metadata accessor for AdaptableBlendMode);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181ECA8);
  }

  return result;
}

void sub_29E1A9214(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_29E1A9280(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E1A92E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_29E1A9378()
{
  sub_29E19C6E8(319, &qword_2A1818600, MEMORY[0x29EDBC370], MEMORY[0x29EDBC390]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_29E1A9414()
{
  result = qword_2A181ECF8;
  if (!qword_2A181ECF8)
  {
    sub_29E1A65D8(255, &qword_2A181ED00, sub_29E1A665C, sub_29E1A650C, MEMORY[0x29EDBC7F0]);
    sub_29E1A7C3C();
    sub_29E1A7D58(&qword_2A181EC10, sub_29E1A650C, sub_29E1A7D1C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181ECF8);
  }

  return result;
}

void sub_29E1A952C()
{
  if (!qword_2A181ED10)
  {
    type metadata accessor for AdaptableBlendMode(255);
    sub_29E1A5E20(&qword_2A181ECB0, type metadata accessor for AdaptableBlendMode);
    v0 = sub_29E2C1D94();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181ED10);
    }
  }
}

uint64_t sub_29E1A95C0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29E19C6E8(0, a3, a4, MEMORY[0x29EDBC388]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_29E1A9640()
{
  result = qword_2A181ED18;
  if (!qword_2A181ED18)
  {
    sub_29E1A65D8(255, &qword_2A181ED08, sub_29E1A952C, MEMORY[0x29EDBC5D8], MEMORY[0x29EDBC558]);
    sub_29E1A5E20(&qword_2A181ED20, sub_29E1A952C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181ED18);
  }

  return result;
}

__n128 sub_29E1A9734(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_29E1A9760(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 128);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29E1A97A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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
      *(result + 128) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_29E1A9820(double a1)
{
  if (*v1)
  {
    v3 = MEMORY[0x29EDC80F8];
  }

  else
  {
    if (qword_2A1817030 != -1)
    {
      swift_once();
    }

    v3 = &qword_2A1841238;
  }

  v4 = *v3;
  v5 = *(v1 + 112);
  v6 = [objc_allocWithZone(MEMORY[0x29EDC7AA8]) initForTextStyle_];

  v7 = *(v1 + 120);
  v8 = sub_29E1A9AC4();
  [v6 scaledValueForValue:v8 compatibleWithTraitCollection:v7];
  v10 = v9;

  return v5 + v10 + *(v1 + 16) + *(v1 + 96) + *(v1 + 48) - *(v1 + 48) * 0.5 - *(v1 + 80) * a1 * 0.5;
}

BOOL sub_29E1A9940(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[7];
  v13[6] = a1[6];
  v13[7] = v2;
  v3 = a1[9];
  v13[8] = a1[8];
  v13[9] = v3;
  v4 = a1[3];
  v13[2] = a1[2];
  v13[3] = v4;
  v5 = a1[5];
  v13[4] = a1[4];
  v13[5] = v5;
  v6 = a1[1];
  v13[0] = *a1;
  v13[1] = v6;
  v7 = a2[7];
  v14[6] = a2[6];
  v14[7] = v7;
  v8 = a2[9];
  v14[8] = a2[8];
  v14[9] = v8;
  v9 = a2[3];
  v14[2] = a2[2];
  v14[3] = v9;
  v10 = a2[5];
  v14[4] = a2[4];
  v14[5] = v10;
  v11 = a2[1];
  v14[0] = *a2;
  v14[1] = v11;
  return sub_29E1A9D00(v13, v14);
}

double sub_29E1A99C4()
{
  if (*v0)
  {
    v1 = MEMORY[0x29EDC80F8];
  }

  else
  {
    if (qword_2A1817030 != -1)
    {
      swift_once();
    }

    v1 = &qword_2A1841238;
  }

  v2 = *v1;
  v3 = *(v0 + 112);
  v4 = [objc_allocWithZone(MEMORY[0x29EDC7AA8]) initForTextStyle_];

  v5 = *(v0 + 120);
  v6 = sub_29E1A9AC4();
  [v4 scaledValueForValue:v6 compatibleWithTraitCollection:v5];
  v8 = v7;

  return v3 + v8 + *(v0 + 16) + *(v0 + 40) - *(v0 + 104) - *(v0 + 56);
}

id sub_29E1A9AC4()
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 preferredContentSizeCategory];

  if (sub_29E2C3E14())
  {
    v3 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v5 = v4;
    v6 = *(v0 + 128);
    if (_sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() == v3 && v7 == v5)
    {
    }

    else
    {
      v9 = sub_29E2C4914();

      if (v9)
      {
        goto LABEL_10;
      }
    }
  }

  v6 = v2;
LABEL_10:
  v10 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];

  return v10;
}

double sub_29E1A9BDC(double a1)
{
  if (*v1)
  {
    v3 = MEMORY[0x29EDC80F8];
  }

  else
  {
    if (qword_2A1817030 != -1)
    {
      swift_once();
    }

    v3 = &qword_2A1841238;
  }

  v4 = *v3;
  v5 = *(v1 + 112);
  v6 = [objc_allocWithZone(MEMORY[0x29EDC7AA8]) initForTextStyle_];

  v7 = *(v1 + 120);
  v8 = sub_29E1A9AC4();
  [v6 scaledValueForValue:v8 compatibleWithTraitCollection:v7];
  v10 = v9;

  return v5 + v10 + *(v1 + 16) + *(v1 + 96) + *(v1 + 48) - *(v1 + 48) - *(v1 + 80) * a1 - *(v1 + 96) - *(v1 + 136) * a1;
}

BOOL sub_29E1A9D00(double *a1, double *a2)
{
  if (((*a1 ^ *a2) & 1) != 0 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3] || a1[4] != a2[4] || a1[5] != a2[5] || a1[6] != a2[6] || a1[7] != a2[7] || a1[8] != a2[8] || a1[9] != a2[9] || a1[10] != a2[10] || a1[11] != a2[11] || a1[12] != a2[12] || a1[13] != a2[13] || a1[14] != a2[14] || a1[15] != a2[15])
  {
    return 0;
  }

  v4 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v6 = v5;
  if (v4 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_29E2C4914();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  if (a1[17] == a2[17] && a1[18] == a2[18])
  {
    return a1[19] == a2[19];
  }

  return 0;
}

uint64_t sub_29E1A9EEC()
{
  v1 = sub_29E2BC904();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x2A1C7C4A8](v1).n128_u64[0];
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 bundleURL];
  sub_29E2BC8D4();

  v7 = sub_29E2BC8B4();
  v9 = v8;
  (*(v2 + 8))(v5, v1);
  v18[0] = v7;
  v18[1] = v9;
  v10 = sub_29DE9DE68();
  v11 = MEMORY[0x29ED80B80](46, 0xE100000000000000, 1, 1, MEMORY[0x29EDC99B0], v10);

  if (v11[2])
  {
    v12 = v11[4];
    v13 = v11[5];
    v14 = v11[6];
    v15 = v11[7];
    sub_29E2BF404();

    v16 = MEMORY[0x29ED7FC50](v12, v13, v14, v15);

    return v16;
  }

  else
  {

    __break(1u);
  }

  return result;
}

id sub_29E1AA078()
{
  type metadata accessor for MenstrualCyclesAppDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_2A1A67F80 = result;
  return result;
}

uint64_t sub_29E1AA12C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29DEA8E38(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_29E2BEFA4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_29E1AA260(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29DEA8E38(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_29E2BEFA4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_29E1AA3C8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for EmbryoAgeAtTransferPickerRow(0);
  v3 = *(v2 - 8);
  v39 = v2;
  v40 = v3;
  MEMORY[0x2A1C7C4A8](v2);
  v41 = v4;
  v42 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEA8E38(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v6 = v5;
  v38 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v37 - v7;
  v9 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v10 = sub_29E2C3384();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v37 - v15;
  sub_29E2C3314();
  (*(v11 + 16))(v13, v16, v10);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v17 = qword_2A1A67F80;
  sub_29E2BCC74();
  v18 = sub_29E2C3414();
  v37 = v19;
  (*(v11 + 8))(v16, v10);
  v20 = v43;
  sub_29E2C2A34();
  swift_getKeyPath();
  sub_29E2C2A54();

  (*(v38 + 8))(v8, v6);
  v21 = v44;
  v22 = v45;
  v23 = v46;
  v24 = *(v39 + 20);
  sub_29E1AB514();
  v26 = v25;
  v27 = *(v25 + 44);
  v28 = sub_29E2BEFA4();
  (*(*(v28 - 8) + 16))(a1 + v27, v20 + v24, v28);
  v29 = v20;
  v30 = v42;
  sub_29E1AB5A8(v29, v42, type metadata accessor for EmbryoAgeAtTransferPickerRow);
  v31 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v32 = swift_allocObject();
  result = sub_29E1AB760(v30, v32 + v31, type metadata accessor for EmbryoAgeAtTransferPickerRow);
  v34 = v37;
  *a1 = v18;
  *(a1 + 8) = v34;
  *(a1 + 16) = v21;
  *(a1 + 24) = v22;
  *(a1 + 32) = v23;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v35 = (a1 + *(v26 + 48));
  *v35 = 0xD000000000000018;
  v35[1] = 0x800000029E304820;
  v36 = (a1 + *(v26 + 52));
  *v36 = sub_29E1AB7C8;
  v36[1] = v32;
  return result;
}

uint64_t sub_29E1AA864@<X0>(uint64_t a1@<X8>)
{
  sub_29DEA8E38(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  sub_29E2C2A24();
  type metadata accessor for PregnancyDatesInputViewModel();
  sub_29E1AB880(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
  sub_29E2C2A44();
  result = type metadata accessor for PregnancyTimePeriodInputCell();
  *(a1 + *(result + 20)) = 0;
  return result;
}

uint64_t sub_29E1AA960@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for EmbryoTransferDatePickerRow(0);
  v3 = *(v2 - 8);
  v39 = v2;
  v40 = v3;
  MEMORY[0x2A1C7C4A8](v2);
  v41 = v4;
  v42 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEA8E38(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v6 = v5;
  v38 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v37 - v7;
  v9 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v10 = sub_29E2C3384();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v37 - v15;
  sub_29E2C3314();
  (*(v11 + 16))(v13, v16, v10);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v17 = qword_2A1A67F80;
  sub_29E2BCC74();
  v18 = sub_29E2C3414();
  v37 = v19;
  (*(v11 + 8))(v16, v10);
  v20 = v43;
  sub_29E2C2A34();
  swift_getKeyPath();
  sub_29E2C2A54();

  (*(v38 + 8))(v8, v6);
  v21 = v44;
  v22 = v45;
  v23 = v46;
  v24 = *(v39 + 20);
  sub_29DEA8ABC();
  v26 = v25;
  v27 = *(v25 + 44);
  v28 = sub_29E2BEFA4();
  (*(*(v28 - 8) + 16))(a1 + v27, v20 + v24, v28);
  v29 = v20;
  v30 = v42;
  sub_29E1AB5A8(v29, v42, type metadata accessor for EmbryoTransferDatePickerRow);
  v31 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v32 = swift_allocObject();
  result = sub_29E1AB760(v30, v32 + v31, type metadata accessor for EmbryoTransferDatePickerRow);
  v34 = v37;
  *a1 = v18;
  *(a1 + 8) = v34;
  *(a1 + 16) = v21;
  *(a1 + 24) = v22;
  *(a1 + 32) = v23;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v35 = (a1 + *(v26 + 48));
  *v35 = 0xD000000000000021;
  v35[1] = 0x800000029E3047C0;
  v36 = (a1 + *(v26 + 52));
  *v36 = sub_29E1AB4E8;
  v36[1] = v32;
  return result;
}

__n128 sub_29E1AADFC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v51 = a2;
  v2 = sub_29E2C1CA4();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v50 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_29E2BCBB4();
  v42 = *(v43 - 8);
  MEMORY[0x2A1C7C4A8](v43);
  v41 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEA8D5C();
  v40 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v49 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEA8E38(0, &qword_2A1817D30, MEMORY[0x29EDB9BC8], MEMORY[0x29EDBCB78]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v45 = &v39 - v8;
  sub_29DEA8E38(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v39 - v12;
  v14 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v15 = sub_29E2C3384();
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v21 = &v39 - v20;
  sub_29DEA8B80();
  v47 = v22;
  v46 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22);
  v44 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C3314();
  (*(v16 + 16))(v18, v21, v15);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v24 = qword_2A1A67F80;
  sub_29E2BCC74();
  v25 = sub_29E2C3414();
  v27 = v26;
  (*(v16 + 8))(v21, v15);
  *&v53 = v25;
  *(&v53 + 1) = v27;
  sub_29E2C2A34();
  swift_getKeyPath();
  sub_29E2C2A54();

  (*(v11 + 8))(v13, v10);
  sub_29E2C2A24();
  v28 = *(v52 + 16);

  if (v28 == 1)
  {
    v29 = v41;
    sub_29E2BCBA4();
    sub_29E0B0D98(v29, v49);
    (*(v42 + 8))(v29, v43);
  }

  else
  {
    v30 = v49;
    if (qword_2A1816FD0 != -1)
    {
      swift_once();
    }

    v31 = sub_29DEA8E9C(v40, qword_2A1840FB0);
    sub_29E1AB5A8(v31, v30, sub_29DEA8D5C);
  }

  sub_29E2C1C94();
  sub_29DE9DE68();
  v32 = v44;
  sub_29E2C1404();
  sub_29E2C2AB4();
  sub_29E2C17D4();
  v33 = v51;
  (*(v46 + 32))(v51, v32, v47);
  sub_29DEA8B20();
  v35 = v33 + *(v34 + 36);
  v36 = v58;
  *(v35 + 64) = v57;
  *(v35 + 80) = v36;
  *(v35 + 96) = v59;
  v37 = v54;
  *v35 = v53;
  *(v35 + 16) = v37;
  result = v56;
  *(v35 + 32) = v55;
  *(v35 + 48) = result;
  return result;
}

void sub_29E1AB514()
{
  if (!qword_2A181ED48)
  {
    type metadata accessor for PregnancyTimePeriodInputCell();
    sub_29E1AB880(&qword_2A181ED50, type metadata accessor for PregnancyTimePeriodInputCell);
    v0 = type metadata accessor for PregnancyInteractivePickerRow();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181ED48);
    }
  }
}

uint64_t sub_29E1AB5A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E1AB610(uint64_t (*a1)(void))
{
  v2 = (a1(0) - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*v2 + 64);
  sub_29DEA8E38(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  (*(*(v6 - 8) + 8))(v1 + v4, v6);
  v7 = v2[7];
  v8 = sub_29E2BEFA4();
  (*(*(v8 - 8) + 8))(v1 + v4 + v7, v8);

  return MEMORY[0x2A1C733A0](v1, v4 + v5, v3 | 7);
}

uint64_t sub_29E1AB760(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E1AB7F4(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_29E1AB880(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_29E1AB8CC(double a1, double a2, double a3, double a4)
{
  v9 = sub_29E2BE814();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14ListFooterCell_label;
  v14 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v15 = [objc_opt_self() preferredFontForTextStyle_];
  [v14 setFont_];

  [v14 setAdjustsFontForContentSizeCategory_];
  v16 = [objc_opt_self() secondaryLabelColor];
  [v14 setTextColor_];

  [v14 setNumberOfLines_];
  *&v4[v13] = v14;
  v17 = type metadata accessor for ListFooterCell();
  v26.receiver = v4;
  v26.super_class = v17;
  v18 = objc_msgSendSuper2(&v26, sel_initWithFrame_, a1, a2, a3, a4);
  sub_29E2BE804();
  sub_29E2BE7A4();
  (*(v10 + 8))(v12, v9);
  [v18 directionalLayoutMargins];
  [v18 setDirectionalLayoutMargins_];
  v19 = [v18 contentView];
  [v19 setPreservesSuperviewLayoutMargins_];

  v20 = [v18 contentView];
  v21 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14ListFooterCell_label;
  [v20 addSubview_];

  v22 = *&v18[v21];
  v23 = [v18 contentView];

  v24 = [v23 layoutMarginsGuide];
  sub_29DF41C7C(v24);

  return v18;
}

id sub_29E1ABC10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ListFooterCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29E1ABC78()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14ListFooterCell_label;
  v2 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v3 = [objc_opt_self() preferredFontForTextStyle_];
  [v2 setFont_];

  [v2 setAdjustsFontForContentSizeCategory_];
  v4 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor_];

  [v2 setNumberOfLines_];
  *(v0 + v1) = v2;
  sub_29E2C4724();
  __break(1u);
}

void sub_29E1ABE4C()
{
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A67F80;
  v1 = sub_29E2C33A4();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (!v2)
  {
    __break(1u);
  }
}

id sub_29E1ABF14()
{
  sub_29DE99B54();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E2CE220;
  result = [objc_opt_self() pregnancyType];
  if (result)
  {
    *(inited + 32) = result;
    sub_29DE927B8(inited);
    v3 = v2;
    swift_setDeallocating();
    swift_arrayDestroy();
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29E1ABFC0()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v150 = &v134 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_29E2C3384();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v134 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v134 - v7;
  sub_29DEFFE04();
  v9 = sub_29E2BDD14();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v154 = *(v10 + 72);
  v12 = v11;
  v137 = swift_allocObject();
  *(v137 + 16) = xmmword_29E2D47C0;
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v13 = qword_2A1A67F80;
  v14 = sub_29E2C33A4();
  v15 = [objc_opt_self() imageNamed:v14 inBundle:v13 compatibleWithTraitCollection:0];

  v153 = v13;
  if (v15)
  {
    v16 = v137 + v12;
    *v16 = v15;
    *(v16 + 8) = 0;
    v144 = *(v10 + 104);
    v17 = v16;
    v151 = v16;
    v144();
    v147 = v9;
    v18 = (v17 + v154);
    sub_29E2C3314();
    v145 = *(v3 + 16);
    v148 = v3 + 16;
    v149 = "Pregnancy Exercise";
    v140 = v5;
    v145(v5, v8, v2);
    sub_29E2BCC74();
    v141 = v153;
    v19 = sub_29E2C3414();
    v152 = v10 + 104;
    v20 = v19;
    v22 = v21;
    v142 = *(v3 + 8);
    v142(v8, v2);
    *v18 = v20;
    v18[1] = v22;
    v23 = v144;
    (v144)(v18, *MEMORY[0x29EDC1610], v147);
    v138 = (2 * v154);
    v24 = v151 + 2 * v154;
    v143 = 0xD000000000000013;
    sub_29E2C3314();
    v25 = v145;
    v145(v5, v8, v2);
    sub_29E2BCC74();
    v136 = v141;
    v26 = sub_29E2C3414();
    v28 = v27;
    v146 = v3 + 8;
    v29 = v142;
    v142(v8, v2);
    *v24 = v26;
    *(v24 + 8) = v28;
    *(v24 + 16) = 0;
    LODWORD(v141) = *MEMORY[0x29EDC1630];
    (v23)(v24);
    v30 = v151;
    v31 = &v138[v154 + v151];
    sub_29E2C3314();
    v32 = v140;
    v25(v140, v8, v2);
    sub_29E2BCC74();
    v136 = v136;
    v33 = v32;
    v34 = sub_29E2C3414();
    v36 = v35;
    v29(v8, v2);
    *v31 = v34;
    v31[1] = v36;
    v31[2] = 0;
    LODWORD(v138) = *MEMORY[0x29EDC15D0];
    v37 = v147;
    (v144)(v31);
    v38 = 4 * v154;
    v39 = v30 + 4 * v154;
    sub_29E2C3314();
    v139 = v2;
    v145(v33, v8, v2);
    sub_29E2BCC74();
    v136 = v136;
    v40 = sub_29E2C3414();
    v42 = v41;
    v43 = v2;
    v44 = v142;
    v142(v8, v43);
    *v39 = v40;
    *(v39 + 8) = v42;
    *(v39 + 16) = 0;
    v45 = v144;
    (v144)(v39, v141, v37);
    v46 = v154;
    v47 = v38 + v154;
    v48 = v151;
    v49 = (v151 + v47);
    sub_29E2C3314();
    v50 = v139;
    v145(v140, v8, v139);
    sub_29E2BCC74();
    v136 = v136;
    v51 = sub_29E2C3414();
    v53 = v52;
    v44(v8, v50);
    *v49 = v51;
    v49[1] = v53;
    v49[2] = 0;
    (v45)(v49, v138, v147);
    v54 = v48 + 6 * v46;
    sub_29E2C3314();
    v55 = v50;
    v56 = v50;
    v57 = v145;
    v145(v140, v8, v56);
    sub_29E2BCC74();
    v135 = v136;
    v58 = sub_29E2C3414();
    v60 = v59;
    v61 = v55;
    v142(v8, v55);
    *v54 = v58;
    *(v54 + 8) = v60;
    *(v54 + 16) = 0;
    v62 = v147;
    (v144)(v54, v141, v147);
    v136 = (8 * v154);
    v63 = v151 + 7 * v154;
    sub_29E2C3314();
    v57(v140, v8, v61);
    sub_29E2BCC74();
    v135 = v135;
    v64 = sub_29E2C3414();
    v66 = v65;
    v67 = v142;
    v142(v8, v61);
    *v63 = v64;
    *(v63 + 8) = v66;
    *(v63 + 16) = 0;
    v68 = v141;
    (v144)(v63, v141, v62);
    v69 = &v136[v151];
    sub_29E2C3314();
    v70 = v140;
    v145(v140, v8, v61);
    sub_29E2BCC74();
    v135 = v135;
    v71 = sub_29E2C3414();
    v73 = v72;
    v74 = v139;
    v67(v8, v139);
    *v69 = v71;
    *(v69 + 1) = v73;
    v69[16] = 0;
    v75 = v68;
    v76 = v144;
    (v144)(v69, v75, v147);
    v77 = &v136[v154 + v151];
    sub_29E2C3314();
    v78 = v74;
    v79 = v145;
    v145(v70, v8, v78);
    sub_29E2BCC74();
    v136 = v135;
    v80 = sub_29E2C3414();
    v82 = v81;
    v83 = v139;
    v142(v8, v139);
    *v77 = v80;
    *(v77 + 1) = v82;
    v77[16] = 0;
    (v76)(v77, v141, v147);
    v84 = v151;
    v85 = (v151 + 10 * v154);
    sub_29E2C3314();
    v86 = v83;
    v79(v140, v8, v83);
    sub_29E2BCC74();
    v136 = v136;
    v87 = sub_29E2C3414();
    v89 = v88;
    v90 = v142;
    v142(v8, v83);
    *v85 = v87;
    v85[1] = v89;
    v85[2] = 0;
    v91 = v147;
    (v144)(v85, v138, v147);
    v92 = v84 + 11 * v154;
    sub_29E2C3314();
    v93 = v140;
    v145(v140, v8, v83);
    sub_29E2BCC74();
    v136 = v136;
    v94 = v93;
    v95 = sub_29E2C3414();
    v97 = v96;
    v98 = v86;
    v90(v8, v86);
    *v92 = v95;
    *(v92 + 8) = v97;
    *(v92 + 16) = 0;
    v99 = v144;
    (v144)(v92, v141, v91);
    v100 = v151 + 12 * v154;
    sub_29E2C3314();
    v145(v94, v8, v98);
    sub_29E2BCC74();
    v136 = v136;
    v101 = sub_29E2C3414();
    v103 = v102;
    v104 = v8;
    v105 = v8;
    v106 = v139;
    v142(v104, v139);
    *v100 = v101;
    *(v100 + 8) = v103;
    *(v100 + 16) = 0;
    (v99)(v100, v141, v147);
    v107 = (v151 + 13 * v154);
    sub_29E2C3314();
    v108 = v106;
    v109 = v106;
    v110 = v145;
    v145(v94, v105, v108);
    sub_29E2BCC74();
    v136 = v136;
    v111 = sub_29E2C3414();
    v113 = v112;
    v142(v105, v109);
    *v107 = v111;
    v107[1] = v113;
    v107[2] = 0;
    (v144)(v107, v138, v147);
    v114 = v151 + 14 * v154;
    sub_29E2C3314();
    v110(v94, v105, v109);
    sub_29E2BCC74();
    v138 = v136;
    v115 = sub_29E2C3414();
    v117 = v116;
    v118 = v109;
    v119 = v142;
    v142(v105, v109);
    *v114 = v115;
    *(v114 + 8) = v117;
    *(v114 + 16) = 0;
    v120 = v147;
    v121 = v144;
    (v144)(v114, v141, v147);
    v136 = (16 * v154);
    v122 = v151 + 15 * v154;
    sub_29E2C3314();
    v145(v94, v105, v118);
    sub_29E2BCC74();
    v123 = v138;
    v124 = sub_29E2C3414();
    v126 = v125;
    v127 = v139;
    v119(v105, v139);
    *v122 = v124;
    *(v122 + 8) = v126;
    *(v122 + 16) = 0;
    v128 = v141;
    (v121)(v122, v141, v120);
    v129 = &v136[v151];
    sub_29E2C3314();
    v130 = v127;
    v145(v94, v105, v127);
    sub_29E2BCC74();
    v131 = sub_29E2C3414();
    v133 = v132;
    v119(v105, v130);
    *v129 = v131;
    *(v129 + 1) = v133;
    v129[16] = 0;
    (v121)(v129, v128, v120);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29E1AD0AC()
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

uint64_t sub_29E1AD29C()
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

id sub_29E1AD498(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27StatisticsViewAllHeaderView_headerLabel;
  *&v2[v4] = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27StatisticsViewAllHeaderView_headerSeparator;
  *&v2[v5] = [objc_allocWithZone(MEMORY[0x29EDC4820]) initWithFrame_];
  v6 = &v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27StatisticsViewAllHeaderView_headerLabelText];
  *v6 = 0;
  *(v6 + 1) = 0;
  if (a2)
  {
    v7 = sub_29E2C33A4();
  }

  else
  {
    v7 = 0;
  }

  v11.receiver = v2;
  v11.super_class = type metadata accessor for StatisticsViewAllHeaderView();
  v8 = objc_msgSendSuper2(&v11, sel_initWithReuseIdentifier_, v7);

  v9 = v8;
  sub_29E1AD698();

  return v9;
}

uint64_t sub_29E1AD698()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_29E2BE814();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x2A1C7C4A8](v2).n128_u64[0];
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 contentView];
  v8 = objc_opt_self();
  v9 = [v8 systemBackgroundColor];
  [v7 setBackgroundColor_];

  v10 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27StatisticsViewAllHeaderView_headerSeparator;
  [*&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27StatisticsViewAllHeaderView_headerSeparator] setSeparatorThickness_];
  v11 = v10;
  v12 = *&v1[v10];
  v13 = [v8 opaqueSeparatorColor];
  [v12 setColor_];

  v14 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27StatisticsViewAllHeaderView_headerLabel];
  sub_29DE9408C(0, &unk_2A1A61A00);
  v15 = sub_29E2C3FD4();
  [v14 setFont_];

  v16 = [v8 secondaryLabelColor];
  [v14 setTextColor_];

  [v14 setNumberOfLines_];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  v70 = v11;
  [*&v1[v11] setTranslatesAutoresizingMaskIntoConstraints_];
  v17 = [v1 contentView];
  [v17 addSubview_];

  v18 = [v1 contentView];
  [v18 addSubview_];

  v19 = [v1 contentView];
  sub_29E2BE804();
  sub_29E2BE7A4();
  v20 = *(v3 + 8);
  v20(v6, v2);
  [v19 directionalLayoutMargins];
  [v19 setDirectionalLayoutMargins_];

  v21 = [v1 contentView];
  sub_29E2BE804();
  sub_29E2BE7A4();
  v20(v6, v2);
  [v21 directionalLayoutMargins];
  [v21 setDirectionalLayoutMargins_];

  sub_29DE99B54();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_29E2CDBD0;
  v23 = [v14 leadingAnchor];
  v24 = [v1 contentView];
  v25 = [v24 leadingAnchor];

  v26 = [v1 &selRef_systemFontOfSize_weight_];
  [v26 directionalLayoutMargins];
  v28 = v27;

  v29 = [v23 constraintEqualToAnchor:v25 constant:v28];
  *(v22 + 32) = v29;
  v30 = [v14 topAnchor];
  v31 = [v1 &selRef_systemFontOfSize_weight_];
  v32 = [v31 layoutMarginsGuide];

  v33 = [v32 topAnchor];
  v34 = [v30 &selRef:v33 setLineFragmentPadding:22.0 + 6];

  *(v22 + 40) = v34;
  v35 = [v1 &selRef_systemFontOfSize_weight_];
  v36 = [v35 trailingAnchor];

  v37 = [v14 &selRef_bounds + 4];
  v38 = [v1 &selRef_systemFontOfSize_weight_];
  [v38 directionalLayoutMargins];
  v40 = v39;

  v41 = [v36 &selRef:v37 setLineFragmentPadding:v40 + 6];
  *(v22 + 48) = v41;
  v42 = objc_opt_self();
  v69 = v42;
  sub_29DE9408C(0, &qword_2A1A61A10);
  v43 = sub_29E2C3604();

  [v42 activateConstraints_];

  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_29E2D6FB0;
  v45 = v70;
  v46 = [*&v1[v70] leadingAnchor];
  v47 = [v1 &selRef_systemFontOfSize_weight_];
  v48 = [v47 leadingAnchor];

  v49 = [v46 constraintEqualToAnchor_];
  *(v44 + 32) = v49;
  v50 = [*&v1[v45] topAnchor];
  v51 = [v14 bottomAnchor];
  v52 = [v50 constraintEqualToAnchor:v51 constant:6.0];

  *(v44 + 40) = v52;
  v53 = [v1 &selRef_systemFontOfSize_weight_];
  v54 = [v53 trailingAnchor];

  v55 = [*&v1[v45] trailingAnchor];
  v56 = [v54 constraintEqualToAnchor_];

  *(v44 + 48) = v56;
  v57 = [v1 &selRef_systemFontOfSize_weight_];
  v58 = [v57 bottomAnchor];

  v59 = [*&v1[v45] bottomAnchor];
  v60 = [v58 constraintEqualToAnchor_];

  *(v44 + 56) = v60;
  v61 = [*&v1[v45] heightAnchor];
  v62 = [v61 constraintEqualToConstant_];

  *(v44 + 64) = v62;
  v63 = sub_29E2C3604();

  [v69 activateConstraints_];

  sub_29DEAC750();
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_29E2CAB20;
  v65 = sub_29E2C0B54();
  v66 = MEMORY[0x29EDC7870];
  *(v64 + 32) = v65;
  *(v64 + 40) = v66;
  sub_29E2C4034();
  swift_unknownObjectRelease();
}

id sub_29E1ADF74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StatisticsViewAllHeaderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29E1AE02C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27StatisticsViewAllHeaderView_headerLabel);
  sub_29DE9408C(0, &unk_2A1A61A00);
  v2 = sub_29E2C3FD4();
  [v1 setFont_];
}

void *sub_29E1AE0D4(void *a1)
{
  v2 = v1;
  v4 = HKLogMenstrualCyclesCategory();
  v5 = objc_allocWithZone(MEMORY[0x29EDBACC8]);
  v6 = sub_29E2C33A4();
  v7 = [v5 initWithName:v6 loggingCategory:v4];

  v2[3] = v7;
  v2[4] = 0;
  v2[2] = a1;
  sub_29DEB1E60();
  v8 = a1;
  v9 = sub_29E2C3CF4();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_allocWithZone(MEMORY[0x29EDC3400]);
  v16[4] = sub_29E1AEDE4;
  v16[5] = v10;
  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 1107296256;
  v16[2] = sub_29DF49BB8;
  v16[3] = &unk_2A24BDA08;
  v12 = _Block_copy(v16);

  v13 = [v11 initWithQueue:v9 completion:v12];

  _Block_release(v12);

  v14 = v2[4];
  v2[4] = v13;

  return v2;
}

uint64_t sub_29E1AE28C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 24);
    aBlock[4] = sub_29E1AEE04;
    aBlock[5] = result;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29DF4FA14;
    aBlock[3] = &unk_2A24BDA30;
    v2 = _Block_copy(aBlock);

    [v1 notifyObservers_];
    _Block_release(v2);
  }

  return result;
}

uint64_t sub_29E1AE380(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a1)
  {
    sub_29E0168E8(a2);
  }

  return swift_unknownObjectRelease();
}

id sub_29E1AE3E8()
{
  v1 = v0;
  v27[1] = *MEMORY[0x29EDCA608];
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x2A1C7C4A8](v2).n128_u64[0];
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0[2];
  v27[0] = 0;
  v8 = [v7 biologicalSexWithError_];
  if (v8)
  {
    v9 = v8;
    v10 = v27[0];
    v11 = [v9 biologicalSex];
  }

  else
  {
    v12 = v27[0];
    v13 = sub_29E2BC7E4();

    swift_willThrow();
    sub_29E2C04B4();

    v14 = v13;
    v15 = sub_29E2C0504();
    v16 = sub_29E2C3A14();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v27[0] = v18;
      *v17 = 136446722;
      v26[4] = *v1;
      sub_29E1AEE0C();
      v19 = sub_29E2C3424();
      v21 = sub_29DFAA104(v19, v20, v27);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_29DFAA104(0xD000000000000012, 0x800000029E304A00, v27);
      *(v17 + 22) = 2082;
      swift_getErrorValue();
      v22 = sub_29E2C4994();
      v24 = sub_29DFAA104(v22, v23, v27);

      *(v17 + 24) = v24;
      _os_log_impl(&dword_29DE74000, v15, v16, "[%{public}s.%{public}s] failed to get biologicalSex with error: %{public}s", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v18, -1, -1);
      MEMORY[0x29ED82140](v17, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  return v11;
}

id sub_29E1AE714()
{
  v1 = v0;
  v52[1] = *MEMORY[0x29EDCA608];
  v2 = sub_29E2C0514();
  v48 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v47 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_29E2BCBB4();
  v4 = *(v49 - 8);
  MEMORY[0x2A1C7C4A8](v49);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_29E2BC5F4();
  v7 = *(v50 - 8);
  MEMORY[0x2A1C7C4A8](v50);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v47 - v11;
  *&v14 = MEMORY[0x2A1C7C4A8](v13).n128_u64[0];
  v16 = &v47 - v15;
  v17 = v1[2];
  v52[0] = 0;
  v18 = [v17 dateOfBirthComponentsWithError_];
  v19 = v52[0];
  if (v18)
  {
    v20 = v18;
    sub_29E2BC544();
    v21 = v19;

    result = [objc_opt_self() hk_gregorianCalendarWithLocalTimeZone];
    if (result)
    {
      v23 = result;
      sub_29E2BCBA4();
      v24 = sub_29E2BCB04();
      (*(v4 + 8))(v6, v49);
      v25 = [v23 hk:v24 dateOfBirthDateComponentsWithDate:?];

      sub_29E2BC544();
      v26 = sub_29E2BC524();
      v27 = sub_29E2BC524();
      v28 = [v23 components:4 fromDateComponents:v26 toDateComponents:v27 options:0];

      sub_29E2BC544();
      v29 = sub_29E2BC594();
      LOBYTE(v27) = v30;

      v31 = *(v7 + 8);
      v32 = v50;
      v31(v9, v50);
      v31(v12, v32);
      v31(v16, v32);
      if (v27)
      {
        return 0;
      }

      else
      {
        return v29;
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v33 = v52[0];
    v34 = sub_29E2BC7E4();

    swift_willThrow();
    v35 = v47;
    sub_29E2C04B4();

    v36 = v34;
    v37 = sub_29E2C0504();
    v38 = sub_29E2C3A14();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v52[0] = v40;
      *v39 = 136446722;
      v51 = *v1;
      sub_29E1AEE0C();
      v41 = sub_29E2C3424();
      v43 = sub_29DFAA104(v41, v42, v52);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2082;
      *(v39 + 14) = sub_29DFAA104(0x2928656741746567, 0xE800000000000000, v52);
      *(v39 + 22) = 2082;
      swift_getErrorValue();
      v44 = sub_29E2C4994();
      v46 = sub_29DFAA104(v44, v45, v52);

      *(v39 + 24) = v46;
      _os_log_impl(&dword_29DE74000, v37, v38, "[%{public}s.%{public}s] failed to get date of birth components with error: %{public}s", v39, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v40, -1, -1);
      MEMORY[0x29ED82140](v39, -1, -1);
    }

    else
    {
    }

    (*(v48 + 8))(v35, v2);
    return 0;
  }

  return result;
}

uint64_t sub_29E1AECB4()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for UserCharacteristics.Age(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UserCharacteristics.Age(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_29E1AED70(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29E1AED8C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_29E1AEDBC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = *(a2 + 8);
  if ((v3 & 1) == 0)
  {
    return (*a1 == *a2) & ~result;
  }

  return result;
}

uint64_t sub_29E1AEDEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29E1AEE0C()
{
  result = qword_2A1A60EE0[0];
  if (!qword_2A1A60EE0[0])
  {
    type metadata accessor for UserCharacteristics();
    result = swift_getMetatypeMetadata();
    atomic_store(result, qword_2A1A60EE0);
  }

  return result;
}

uint64_t sub_29E1AEE58()
{
  v0 = sub_29E2C0514();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v4 = sub_29E2C0504();
  v5 = sub_29E2C3A04();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v8 = sub_29E2C4AE4();
    v10 = sub_29DFAA104(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_29DE74000, v4, v5, "[%{public}s] Notifying of days updated", v6, 0xCu);
    sub_29DE93B3C(v7);
    MEMORY[0x29ED82140](v7, -1, -1);
    MEMORY[0x29ED82140](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_29E1AF000(uint64_t a1)
{
  v2 = sub_29E2C31A4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v55 = &v49 - v7;
  v8 = type metadata accessor for CycleChartDay();
  v53 = *(v8 - 8);
  v54 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v52 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEDB978();
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v57 = &v49 - v14;
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v49 - v16;
  MEMORY[0x2A1C7C4A8](v18);
  v20 = &v49 - v19;
  v22 = MEMORY[0x2A1C7C4A8](v21);
  v24 = &v49 - v23;
  v25 = v3 + 16;
  v60 = *(v3 + 16);
  v60(&v49 - v23, a1, v2, v22);
  v64 = v3;
  v27 = *(v3 + 56);
  v26 = v3 + 56;
  v27(v24, 0, 1, v2);
  v59 = v27;
  v27(v20, 1, 1, v2);
  v28 = sub_29E059C18(v24, v20);
  sub_29DEE85C8(v20);
  sub_29DEE85C8(v24);
  result = MEMORY[0x29EDCA190];
  if (v28)
  {
    v69 = MEMORY[0x29EDCA190];
    v58 = v28;
    sub_29E1812E0(0, v28 & ~(v28 >> 63), 0);
    v67 = v69;
    (v60)(v17, a1, v2);
    result = v59(v17, 0, 1, v2);
    if ((v58 & 0x8000000000000000) == 0)
    {
      v30 = v17;
      v31 = 0;
      v65 = (v64 + 4);
      v66 = (v64 + 6);
      ++v64;
      v50 = v5;
      v51 = a1;
      v49 = v26;
      while (!__OFADD__(v31, 1))
      {
        v62 = v31 + 1;
        v63 = v31;
        v34 = v25;
        v35 = v12;
        v36 = v30;
        v37 = v57;
        sub_29E1B0410(v30, v57);
        v38 = *v66;
        result = (*v66)(v37, 1, v2);
        if (result == 1)
        {
          goto LABEL_18;
        }

        v39 = v55;
        v61 = *v65;
        v61(v55, v37, v2);
        v40 = *(v56 + 16);
        v41 = v52;
        (v60)(v52, v39, v2);
        v42 = [v40 dayViewModelAtIndex_];
        *(v41 + *(type metadata accessor for CycleDay() + 20)) = v42;
        sub_29E2C2CB4();
        v43 = *v64;
        (*v64)(v39, v2);
        v44 = v67;
        v69 = v67;
        v46 = *(v67 + 16);
        v45 = *(v67 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_29E1812E0(v45 > 1, v46 + 1, 1);
          v44 = v69;
        }

        *(v44 + 16) = v46 + 1;
        v47 = (*(v53 + 80) + 32) & ~*(v53 + 80);
        v67 = v44;
        sub_29E1B0474(v41, v44 + v47 + *(v53 + 72) * v46, type metadata accessor for CycleChartDay);
        v30 = v36;
        v12 = v35;
        sub_29E1B0474(v36, v35, sub_29DEDB978);
        result = v38(v35, 1, v2);
        if (result == 1)
        {
          goto LABEL_17;
        }

        v48 = v50;
        v61(v50, v35, v2);
        sub_29E1B04DC(0, &qword_2A1819F90, MEMORY[0x29EDC9930]);
        sub_29E1B0578(&qword_2A18199C0, MEMORY[0x29EDBA2F8]);
        v25 = v34;
        if (sub_29E2C3304())
        {
          v43(v48, v2);
          v32 = 1;
        }

        else
        {
          v68 = 1;
          sub_29E1B0578(&unk_2A18199E0, MEMORY[0x29EDBA2F8]);
          sub_29E2C4334();
          v43(v48, v2);
          v32 = 0;
        }

        v33 = v58;
        result = v59(v30, v32, 1, v2);
        v31 = v63 + 1;
        if (v62 == v33)
        {
          sub_29DEE85C8(v30);
          return v67;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  return result;
}

uint64_t sub_29E1AF6A4()
{

  return swift_deallocClassInstance();
}

void sub_29E1AF718(void *a1)
{
  v2 = v1;
  v41 = a1;
  v3 = *v1;
  v4 = sub_29E2C0514();
  v5 = *(v4 - 1);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v39 - v9;
  v11 = sub_29E2C2B84();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = (&v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29DEB1E60();
  *v14 = sub_29E2C3CF4();
  (*(v12 + 104))(v14, *MEMORY[0x29EDCA278], v11);
  v15 = sub_29E2C2BA4();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    sub_29E2C04B4();
    v16 = sub_29E2C0504();
    v17 = sub_29E2C3A04();
    v18 = os_log_type_enabled(v16, v17);
    v39 = v2;
    v40 = v3;
    if (v18)
    {
      v19 = swift_slowAlloc();
      v20 = v7;
      v21 = swift_slowAlloc();
      v42 = v21;
      *v19 = 136446210;
      v22 = sub_29E2C4AE4();
      v24 = sub_29DFAA104(v22, v23, &v42);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_29DE74000, v16, v17, "[%{public}s] Received updated view models", v19, 0xCu);
      sub_29DE93B3C(v21);
      v25 = v21;
      v7 = v20;
      MEMORY[0x29ED82140](v25, -1, -1);
      MEMORY[0x29ED82140](v19, -1, -1);
    }

    v26 = *(v5 + 8);
    v26(v10, v4);
    v27 = [v41 dayViewModelAtIndex_];
    if ([v27 isFetched] && (v28 = objc_msgSend(v27, sel_daySummary)) != 0)
    {

      sub_29DF1482C();
      sub_29E1B0578(&qword_2A181A5C0, sub_29DF1482C);
      sub_29E2C11A4();
    }

    else
    {
      sub_29E2C04B4();
      v29 = sub_29E2C0504();
      v30 = sub_29E2C3A34();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v42 = v32;
        *v31 = 136446210;
        v33 = sub_29E2C4AE4();
        v41 = v4;
        v35 = v7;
        v36 = sub_29DFAA104(v33, v34, &v42);

        *(v31 + 4) = v36;
        _os_log_impl(&dword_29DE74000, v29, v30, "[%{public}s] Ignoring VMP update as we haven't completed fetched", v31, 0xCu);
        sub_29DE93B3C(v32);
        MEMORY[0x29ED82140](v32, -1, -1);
        MEMORY[0x29ED82140](v31, -1, -1);

        v37 = v35;
        v38 = v41;
      }

      else
      {

        v37 = v7;
        v38 = v4;
      }

      v26(v37, v38);
    }
  }

  else
  {
    __break(1u);
  }
}

void *sub_29E1AFC3C(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v28 = a2;
  v29 = a3;
  v31 = *v3;
  sub_29E1B0168();
  v8 = *(v7 - 8);
  v32 = v7;
  v33 = v8;
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1B02D4();
  v12 = *(v11 - 8);
  v34 = v11;
  v35 = v12;
  MEMORY[0x2A1C7C4A8](v11);
  v30 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEDB904();
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v15 = sub_29E2BCEA4();
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF1482C();
  swift_allocObject();
  v3[5] = sub_29E2C10A4();
  v3[2] = a1;
  (*(v16 + 16))(v18, a3, v15);
  type metadata accessor for SleepingWristTemperatureBaselineRelativeDataSource();
  swift_allocObject();
  v19 = a1;
  v20 = v28;
  v21 = sub_29DF34254(v20, v18);

  [v19 minimumBufferDuration];
  v37 = v21;
  sub_29E1B0374();
  swift_allocObject();
  v4[3] = sub_29E2C2C74();

  [v19 activeDayRange];
  sub_29E2C3AA4();
  sub_29E2C2C84();

  v22 = sub_29E2C2C94();

  v36 = v4[5];
  v37 = v22;
  sub_29E1B0250();
  sub_29E1B0578(&qword_2A181ED90, sub_29E1B0250);
  sub_29E1B0578(&qword_2A1818DA8, sub_29DF1482C);
  sub_29E2C1294();

  *(swift_allocObject() + 16) = v31;
  sub_29E1B0578(&qword_2A181EDA0, sub_29E1B0168);
  v23 = v30;
  v24 = v32;
  sub_29E2C12A4();

  (*(v33 + 8))(v10, v24);
  sub_29E1B0578(&qword_2A181EDB0, sub_29E1B02D4);
  v25 = v34;
  v26 = sub_29E2C1274();
  (*(v35 + 8))(v23, v25);
  v4[4] = v26;
  [v19 registerObserver_];
  (*(v16 + 8))(v29, v15);
  return v4;
}

void sub_29E1B0168()
{
  if (!qword_2A181ED80)
  {
    sub_29E1B0250();
    sub_29DF1482C();
    sub_29E1B0578(&qword_2A181ED90, sub_29E1B0250);
    sub_29E1B0578(&qword_2A1818DA8, sub_29DF1482C);
    v0 = sub_29E2C0E44();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181ED80);
    }
  }
}

void sub_29E1B0250()
{
  if (!qword_2A181ED88)
  {
    sub_29E1B04DC(255, &qword_2A1A61A30, MEMORY[0x29EDC9C30]);
    v0 = sub_29E2C10B4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181ED88);
    }
  }
}

void sub_29E1B02D4()
{
  if (!qword_2A181ED98)
  {
    sub_29E1B0168();
    sub_29E1B0578(&qword_2A181EDA0, sub_29E1B0168);
    v0 = sub_29E2C0F24();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181ED98);
    }
  }
}

void sub_29E1B0374()
{
  if (!qword_2A181EDA8)
  {
    type metadata accessor for SleepingWristTemperatureBaselineRelativeDataSource();
    sub_29E1B0578(&qword_2A181C508, type metadata accessor for SleepingWristTemperatureBaselineRelativeDataSource);
    v0 = sub_29E2C2CA4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181EDA8);
    }
  }
}

uint64_t sub_29E1B0410(uint64_t a1, uint64_t a2)
{
  sub_29DEDB978();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E1B0474(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_29E1B04DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E2C31A4();
    v7 = sub_29E1B0578(&qword_2A1A61A40, MEMORY[0x29EDBA2F8]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29E1B0578(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for MenstrualCyclesArticlesGeneratorPipeline()
{
  result = qword_2A1A623A0;
  if (!qword_2A1A623A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E1B0670()
{
  sub_29DE93B3C(v0 + qword_2A1A611A0);
  sub_29DE93B3C(v0 + qword_2A1A61198);
  swift_unknownObjectRelease();
}

uint64_t sub_29E1B06D0()
{
  [*(v0 + qword_2A1A611B0) unregisterObserver_];
  v1 = sub_29E2C0324();
  v2 = qword_2A1A611A0;

  sub_29DE93B3C(v3 + v2);
  sub_29DE93B3C(v1 + qword_2A1A61198);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_29E1B0780()
{
  sub_29E1B2158();
  v36 = v1;
  v39 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v32 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1B244C();
  v4 = *(v3 - 8);
  v37 = v3;
  v38 = v4;
  MEMORY[0x2A1C7C4A8](v3);
  v33 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1B24E8();
  v7 = *(v6 - 8);
  v40 = v6;
  v41 = v7;
  MEMORY[0x2A1C7C4A8](v6);
  v34 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1B2594();
  v10 = *(v9 - 8);
  v42 = v9;
  v43 = v10;
  MEMORY[0x2A1C7C4A8](v9);
  v35 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEBAF74();
  v30[3] = v12;
  MEMORY[0x2A1C7C4A8](v12);
  sub_29E1B236C(0, &unk_2A1A61E30, type metadata accessor for HKBiologicalSex, MEMORY[0x29EDB8AF0]);
  v30[2] = v13;
  MEMORY[0x2A1C7C4A8](v13);
  sub_29E1B28CC(0, &qword_2A1A61E48, &type metadata for UserCharacteristics.Age, MEMORY[0x29EDB8AF0]);
  v30[1] = v14;
  MEMORY[0x2A1C7C4A8](v14);
  sub_29E1B21EC();
  v30[0] = v15;
  v31 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = (v0 + qword_2A1A61198);
  sub_29DE966D4((v0 + qword_2A1A61198), *(v0 + qword_2A1A61198 + 24));
  type metadata accessor for UserCharacteristicsChangeDetector();
  sub_29E1B1BAC();
  sub_29DE966D4(v18, v18[3]);
  sub_29E1B1C3C();
  sub_29DE966D4((v0 + qword_2A1A611A0), *(v0 + qword_2A1A611A0 + 24));
  type metadata accessor for MenstrualCyclesOnboardingChangeDetector();
  sub_29E270A40();
  v44 = *(v0 + qword_2A1A611B8);
  sub_29E022064();
  sub_29E1B23D0();
  sub_29DF8EFD4();
  sub_29E1B1FC4(&qword_2A1A5EB70, sub_29DEBAF74);
  sub_29E1B1FC4(&unk_2A1A5E570, sub_29E022064);

  sub_29E2C0EB4();
  sub_29E2BD5F4();
  v19 = v32;
  v20 = v30[0];
  sub_29E2C0E94();
  sub_29E1B1FC4(&qword_2A1A5E858, sub_29E1B2158);
  v21 = v33;
  v22 = v36;
  sub_29E2C12A4();
  (*(v39 + 8))(v19, v22);
  sub_29E1B1F30();
  v23 = v34;
  v24 = v37;
  sub_29E2C0F14();
  (*(v38 + 8))(v21, v24);
  sub_29E1B1FC4(&unk_2A1A5E9E0, sub_29E1B24E8);
  sub_29E1B1FC4(&unk_2A1A5E2C8, sub_29E1B1F30);
  v25 = v35;
  v26 = v40;
  sub_29E2C1374();
  (*(v41 + 8))(v23, v26);
  sub_29E1B1FC4(&qword_2A1A5EAE0, sub_29E1B2594);
  v27 = v42;
  v28 = sub_29E2C1274();
  (*(v43 + 8))(v25, v27);
  (*(v31 + 8))(v17, v20);
  return v28;
}

uint64_t sub_29E1B0EE8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  v4 = *(result + 24);
  v5 = *(result + 32);
  v6 = *(result + 40);
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  return result;
}

void sub_29E1B0F1C(__int128 *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  v5 = *a1;
  v6[0] = v3;
  *(v6 + 9) = *(a1 + 25);
  sub_29E1B2628(&v5);
  *a2 = v4;
}

uint64_t sub_29E1B0F60(uint64_t a1, uint64_t a2)
{
  v25 = *v2;
  sub_29E1B1CD8();
  v6 = *(v5 - 8);
  v27 = v5;
  v28 = v6;
  MEMORY[0x2A1C7C4A8](v5);
  v26 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2BD624();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  sub_29E1B1D6C();
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = MEMORY[0x2A1C7C4A8](v11);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8, v14);
  v17 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  (*(v9 + 32))(v18 + v17, &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *(v18 + ((v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;
  sub_29E1B1E00();
  sub_29E1B1FC4(&qword_2A1A5EAB8, sub_29E1B1E00);

  sub_29E2C11B4();
  sub_29E1B1FC4(&qword_2A1A5E490, sub_29E1B1D6C);
  v19 = sub_29E2C1274();
  (*(v13 + 8))(v16, v12);
  v20 = sub_29E2C0304();
  v29 = v19;
  v30 = v20;
  sub_29E021350();
  sub_29E1B1FC4(&qword_2A1A61EB0, sub_29E021350);
  v21 = v26;
  sub_29E2C12E4();

  sub_29E1B1FC4(&qword_2A1A61ED8, sub_29E1B1CD8);
  v22 = v27;
  sub_29E2C1274();
  (*(v28 + 8))(v21, v22);
  sub_29E2C0314();
}

uint64_t sub_29E1B1380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E2BD624();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v6);
  v13[1] = a1;
  (*(v7 + 16))(v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6, v9);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  *(v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  sub_29E1B1EAC(0);
  sub_29DEBACC0();
  sub_29E1B1FC4(&qword_2A1A5E620, sub_29E1B1EAC);
  sub_29E2C12A4();
}

uint64_t sub_29E1B153C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  v36 = a3;
  v38 = a2;
  v6 = sub_29E2BD594();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E2BD624();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E2C0514();
  v37 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  if (HKShowSensitiveLogItems())
  {
    sub_29E2C04B4();
    sub_29E2BF404();
    v17 = sub_29E2C0504();
    v18 = sub_29E2C3A34();

    v35 = v18;
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v33 = v17;
      v20 = v19;
      v34 = swift_slowAlloc();
      v40 = v34;
      *v20 = 136446466;
      v21 = sub_29E2C4AE4();
      v23 = sub_29DFAA104(v21, v22, &v40);
      v36 = v13;
      v24 = v23;

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      v39 = v16;
      sub_29E1B1F30();
      sub_29E2BF404();
      v25 = sub_29E2C3464();
      v27 = sub_29DFAA104(v25, v26, &v40);

      *(v20 + 14) = v27;
      v28 = v33;
      _os_log_impl(&dword_29DE74000, v33, v35, "[%{public}s] Received new filter for Menstrual Cycle Discover feed: %s", v20, 0x16u);
      v29 = v34;
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v29, -1, -1);
      MEMORY[0x29ED82140](v20, -1, -1);

      (*(v37 + 8))(v15, v36);
    }

    else
    {

      (*(v37 + 8))(v15, v13);
    }
  }

  (*(v10 + 16))(v12, v38, v9);
  sub_29E2BD554();
  v30 = type metadata accessor for MenstrualCyclesArticlesGenerator();
  swift_allocObject();
  sub_29E2BF404();
  v31 = sub_29E20760C(v12, v8, v16);
  a4[3] = v30;
  result = sub_29E1B1FC4(&qword_2A1A624A0, type metadata accessor for MenstrualCyclesArticlesGenerator);
  a4[4] = result;
  *a4 = v31;
  return result;
}

id sub_29E1B1924(void *a1)
{
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (HKShowSensitiveLogItems())
  {
    sub_29E2C04B4();
    v6 = sub_29E2C0504();
    v7 = sub_29E2C3A34();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v19 = a1;
      v9 = v8;
      v10 = swift_slowAlloc();
      v20 = v10;
      *v9 = 136315138;
      v11 = sub_29E2C4AE4();
      v13 = sub_29DFAA104(v11, v12, &v20);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_29DE74000, v6, v7, "[%s] Received pregnancy model update", v9, 0xCu);
      sub_29DE93B3C(v10);
      MEMORY[0x29ED82140](v10, -1, -1);
      v14 = v9;
      a1 = v19;
      MEMORY[0x29ED82140](v14, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }

  sub_29E2C10E4();
  v15 = v20;
  v16 = v21;
  result = [a1 state];
  if ((v16 & 1) != 0 || v15 != result)
  {
    v20 = [a1 state];
    v21 = 0;
    return sub_29E2C10C4();
  }

  return result;
}

uint64_t sub_29E1B1B5C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_29E1B1924(v3);
}

uint64_t sub_29E1B1BAC()
{
  swift_beginAccess();
  sub_29E1B28CC(0, &qword_2A1A61E28, &type metadata for UserCharacteristics.Age, MEMORY[0x29EDB8B00]);
  sub_29E2C11E4();
  return swift_endAccess();
}

uint64_t sub_29E1B1C3C()
{
  swift_beginAccess();
  sub_29E1B236C(0, &qword_2A1A61E20, type metadata accessor for HKBiologicalSex, MEMORY[0x29EDB8B00]);
  sub_29E2C11E4();
  return swift_endAccess();
}

void sub_29E1B1CD8()
{
  if (!qword_2A1A61ED0)
  {
    sub_29E021350();
    sub_29E1B1FC4(&qword_2A1A61EB0, sub_29E021350);
    v0 = sub_29E2C0FD4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A61ED0);
    }
  }
}

void sub_29E1B1D6C()
{
  if (!qword_2A1A5E480)
  {
    sub_29E1B1E00();
    sub_29E1B1FC4(&qword_2A1A5EAB8, sub_29E1B1E00);
    v0 = sub_29E2C11C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E480);
    }
  }
}

void sub_29E1B1E00()
{
  if (!qword_2A1A5EAA8)
  {
    sub_29E1B1EAC(255);
    sub_29DEBACC0();
    sub_29E1B1FC4(&qword_2A1A5E620, sub_29E1B1EAC);
    v0 = sub_29E2C0F24();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5EAA8);
    }
  }
}

void sub_29E1B1ECC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_29E1B1F30()
{
  if (!qword_2A1A5E2D8)
  {
    sub_29DEED314();
    sub_29E1B1FC4(&qword_2A1A5E218, sub_29DEED314);
    v0 = sub_29E2C3844();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E2D8);
    }
  }
}

uint64_t sub_29E1B1FC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E1B200C()
{
  v1 = *(sub_29E2BD624() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29E1B1380(v3, v0 + v2, v4);
}

uint64_t sub_29E1B20AC@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v5 = *(sub_29E2BD624() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29E1B153C(a1, v2 + v6, v7, a2);
}

void sub_29E1B2158()
{
  if (!qword_2A1A5E848)
  {
    sub_29E1B21EC();
    sub_29E1B1FC4(&qword_2A1A5EBB8, sub_29E1B21EC);
    v0 = sub_29E2C0F64();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E848);
    }
  }
}

void sub_29E1B21EC()
{
  if (!qword_2A1A5EBB0)
  {
    sub_29E1B28CC(255, &qword_2A1A61E48, &type metadata for UserCharacteristics.Age, MEMORY[0x29EDB8AF0]);
    sub_29E1B236C(255, &unk_2A1A61E30, type metadata accessor for HKBiologicalSex, MEMORY[0x29EDB8AF0]);
    sub_29DEBAF74();
    sub_29E022064();
    sub_29E1B23D0();
    sub_29DF8EFD4();
    sub_29E1B1FC4(&qword_2A1A5EB70, sub_29DEBAF74);
    sub_29E1B1FC4(&unk_2A1A5E570, sub_29E022064);
    v0 = sub_29E2C0EA4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5EBB0);
    }
  }
}

void sub_29E1B236C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29E1B23D0()
{
  result = qword_2A1A61E50;
  if (!qword_2A1A61E50)
  {
    sub_29E1B28CC(255, &qword_2A1A61E48, &type metadata for UserCharacteristics.Age, MEMORY[0x29EDB8AF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A61E50);
  }

  return result;
}

void sub_29E1B244C()
{
  if (!qword_2A1A5E9F0)
  {
    sub_29E1B2158();
    sub_29E1B1FC4(&qword_2A1A5E858, sub_29E1B2158);
    v0 = sub_29E2C0F24();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E9F0);
    }
  }
}

void sub_29E1B24E8()
{
  if (!qword_2A1A5E9D0)
  {
    sub_29E1B2158();
    sub_29E1B1F30();
    sub_29E1B1FC4(&qword_2A1A5E858, sub_29E1B2158);
    v0 = sub_29E2C0F24();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E9D0);
    }
  }
}

void sub_29E1B2594()
{
  if (!qword_2A1A5EAD8)
  {
    sub_29E1B24E8();
    sub_29E1B1FC4(&unk_2A1A5E9E0, sub_29E1B24E8);
    v0 = sub_29E2C0F04();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5EAD8);
    }
  }
}

void sub_29E1B2628(void *a1)
{
  if ((a1[5] & 1) == 0)
  {
    v1 = a1[4];
    if (v1 == 2)
    {
      sub_29E1B28CC(0, &qword_2A1A619B0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_29E2CD3B0;
      sub_29DEED314();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v6 = [ObjCClassFromMetadata menstrualFlowType];
      if (v6)
      {
        *(inited + 32) = v6;
        v7 = [ObjCClassFromMetadata pregnancyType];
        if (v7)
        {
          *(inited + 40) = v7;
          sub_29DE93B88(inited);
          swift_setDeallocating();
          goto LABEL_18;
        }

LABEL_25:
        __break(1u);
        return;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (v1 == 1)
    {
      sub_29E1B28CC(0, &qword_2A1A619B0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
      v2 = swift_initStackObject();
      *(v2 + 16) = xmmword_29E2CE220;
      sub_29DEED314();
      a1 = [swift_getObjCClassFromMetadata() pregnancyType];
      if (a1)
      {
LABEL_14:
        *(v2 + 32) = a1;
        sub_29DE93B88(v2);
        swift_setDeallocating();
LABEL_18:
        swift_arrayDestroy();
        return;
      }

      __break(1u);
    }
  }

  v3 = *(a1 + 24);
  if (v3 != 2 && (v3 & 1) != 0 || a1[2] != 2 && ((a1[1] & 1) != 0 || (*a1 - 12) <= 0x2B))
  {
    sub_29E1B28CC(0, &qword_2A1A619B0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
    v2 = swift_initStackObject();
    *(v2 + 16) = xmmword_29E2CE220;
    sub_29DEED314();
    a1 = [swift_getObjCClassFromMetadata() menstrualFlowType];
    if (a1)
    {
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_24;
  }

  if (MEMORY[0x29EDCA190] >> 62 && sub_29E2C4484())
  {
    v8 = MEMORY[0x29EDCA190];

    sub_29DE93B88(v8);
  }
}