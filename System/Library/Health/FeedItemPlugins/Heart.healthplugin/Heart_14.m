void sub_29D805B00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_29D805B84()
{
  v0 = sub_29D937A88();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D937B88();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  [v12 setNumberOfLines_];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  [v12 setAdjustsFontForContentSizeCategory_];
  sub_29D937B18();
  sub_29D937AA8();
  (*(v7 + 8))(v11, v6);
  v13 = sub_29D937A48();
  (*(v1 + 8))(v5, v0);
  [v12 setFont_];

  v14 = [objc_opt_self() labelColor];
  [v12 setTextColor_];

  return v12;
}

id sub_29D805DC4(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_29D805E24()
{
  v0 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  [v0 setNumberOfLines_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setAdjustsFontForContentSizeCategory_];
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  v2 = [objc_opt_self() labelColor];
  [v0 setTextColor_];

  return v0;
}

void sub_29D805F1C()
{
  v1 = OBJC_IVAR____TtC5Heart17TitleSubtitleView_item;
  swift_beginAccess();
  sub_29D69F108(v0 + v1, v9);
  if (v9[3])
  {
    sub_29D69F188();
    if (swift_dynamicCast())
    {
      v2 = sub_29D805B64();
      v3 = sub_29D939D28();
      [v2 setText_];

      v4 = sub_29D805DA4();
      v5 = sub_29D939D28();

      [v4 setText_];

      return;
    }

    v6 = v0;
  }

  else
  {
    v6 = v0;
    sub_29D69F230(v9);
  }

  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  sub_29D93AA18();

  v9[0] = 0xD000000000000026;
  v9[1] = 0x800000029D95B770;
  sub_29D69F108(v6 + v1, v8);
  sub_29D70E348();
  v7 = sub_29D939DB8();
  MEMORY[0x29ED6A240](v7);

  sub_29D93AB28();
  __break(1u);
}

void sub_29D806248()
{
  v1 = sub_29D805B64();
  [v0 addSubview_];

  v2 = sub_29D805DA4();
  [v0 addSubview_];

  v27 = objc_opt_self();
  sub_29D6A0C58();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_29D9403C0;
  v4 = OBJC_IVAR____TtC5Heart17TitleSubtitleView____lazy_storage___titleLabel;
  v5 = [*&v0[OBJC_IVAR____TtC5Heart17TitleSubtitleView____lazy_storage___titleLabel] topAnchor];
  v6 = [v0 &selRef_irregularHeartRhythmFooterLinkTitle];
  v7 = [v5 constraintEqualToAnchor:v6 constant:12.0];

  *(v3 + 32) = v7;
  v8 = [*&v0[v4] leadingAnchor];
  v9 = [v0 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:2.0];

  *(v3 + 40) = v10;
  v11 = [v0 trailingAnchor];
  v12 = [*&v0[v4] trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:2.0];

  *(v3 + 48) = v13;
  v14 = OBJC_IVAR____TtC5Heart17TitleSubtitleView____lazy_storage___subtitleLabel;
  v15 = [*&v0[OBJC_IVAR____TtC5Heart17TitleSubtitleView____lazy_storage___subtitleLabel] topAnchor];
  v16 = [*&v0[v4] bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:6.0];

  *(v3 + 56) = v17;
  v18 = [*&v0[v14] leadingAnchor];
  v19 = [v0 leadingAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v3 + 64) = v20;
  v21 = [*&v0[v14] trailingAnchor];
  v22 = [v0 trailingAnchor];
  v23 = [v21 constraintLessThanOrEqualToAnchor_];

  *(v3 + 72) = v23;
  v24 = [v0 bottomAnchor];
  v25 = [*&v0[v14] bottomAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:5.0];

  *(v3 + 80) = v26;
  sub_29D6D37A4();
  v28 = sub_29D939F18();

  [v27 activateConstraints_];
}

id sub_29D8065F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TitleSubtitleView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D8066A4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Heart17TitleSubtitleView_item;
  swift_beginAccess();
  return sub_29D69F108(v3 + v4, a1);
}

uint64_t sub_29D806700(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Heart17TitleSubtitleView_item;
  swift_beginAccess();
  sub_29D69F2FC(a1, v3 + v4);
  swift_endAccess();
  sub_29D805F1C();
  return sub_29D69F230(a1);
}

void (*sub_29D806770(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_29D8067D8;
}

void sub_29D8067D8(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    sub_29D805F1C();
  }
}

void *sub_29D80680C(uint64_t a1)
{
  sub_29D806D28();
  v41 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D806DC8();
  v40 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v39 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D71BF90();
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v13, v17);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v43) = 1;
  sub_29D938338();
  sub_29D806E64();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  (*(v15 + 32))(&v23[*(*v23 + *MEMORY[0x29EDB8A08] + 16)], v19, v14);
  v24 = *(a1 + 16);

  v37 = v23;
  v25 = v23;
  if (v24)
  {
    v26 = (a1 + 32);
    v38 = (v3 + 8);
    sub_29D6AD548();
    sub_29D806F8C(&qword_2A1A223E0, sub_29D6AD548);
    v25 = v37;
    do
    {
      v27 = *v26++;
      v42 = v27;
      v43 = v25;

      sub_29D938458();
      sub_29D806F8C(qword_2A1A22770, sub_29D806D28);
      v28 = v39;
      v29 = v7;
      v30 = v41;
      sub_29D938468();

      v31 = v30;
      v7 = v29;
      (*v38)(v29, v31);
      sub_29D806EF8();
      v33 = *(v32 + 48);
      v34 = *(v32 + 52);
      v25 = swift_allocObject();
      (*(v9 + 32))(v25 + *(*v25 + *MEMORY[0x29EDB8A08] + 16), v28, v40);
      --v24;
    }

    while (v24);
  }

  return v25;
}

void *sub_29D806C20(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x29EDCA190];
  if (v1)
  {
    v13 = MEMORY[0x29EDCA190];
    sub_29D93AAD8();
    v4 = a1 + 32;
    do
    {
      sub_29D6945AC(v4, v10);
      v5 = v11;
      v6 = v12;
      sub_29D693E2C(v10, v11);
      (*(v6 + 8))(v5, v6);
      sub_29D69417C(v10);
      sub_29D93AAB8();
      v7 = *(v13 + 16);
      sub_29D93AAE8();
      sub_29D93AAF8();
      sub_29D93AAC8();
      v4 += 40;
      --v1;
    }

    while (v1);
    v2 = v13;
  }

  v8 = sub_29D80680C(v2);

  return v8;
}

void sub_29D806D28()
{
  if (!qword_2A1A22768)
  {
    sub_29D6AD548();
    sub_29D806F8C(&qword_2A1A223E0, sub_29D6AD548);
    v0 = sub_29D938058();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A22768);
    }
  }
}

void sub_29D806DC8()
{
  if (!qword_2A1A22578)
  {
    sub_29D806D28();
    sub_29D806F8C(qword_2A1A22770, sub_29D806D28);
    v0 = sub_29D9380F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A22578);
    }
  }
}

void sub_29D806E64()
{
  if (!qword_2A1A22378)
  {
    sub_29D71BF90();
    sub_29D806F8C(&qword_2A1A22340, sub_29D71BF90);
    v0 = sub_29D938248();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A22378);
    }
  }
}

void sub_29D806EF8()
{
  if (!qword_2A1A22380)
  {
    sub_29D806DC8();
    sub_29D806F8C(&qword_2A1A22580, sub_29D806DC8);
    v0 = sub_29D938248();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A22380);
    }
  }
}

uint64_t sub_29D806F8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_29D806FD4(uint64_t a1, int a2, void *a3)
{
  result = sub_29D693E2C((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a2)
  {
    v7 = *result;

    return swift_continuation_throwingResume();
  }

  else if (a3)
  {
    sub_29D6B7370(0, &qword_2A1A24850);
    swift_allocError();
    *v8 = a3;
    v9 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D807090(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29D936138();
  v44 = *(v4 - 8);
  v5 = *(v44 + 64);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D9360E8();
  v46 = *(v9 - 8);
  v10 = *(v46 + 64);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v45 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D936388();
  v47 = *(v13 - 8);
  v14 = *(v47 + 64);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v2 + 16);
  sub_29D936148();
  v19 = v18;
  sub_29D936198();
  *(&v50 + 1) = &_s27CardioFitnessChartComponentVN;
  v20 = sub_29D809950();
  *&v49 = v19;
  *(&v49 + 1) = 0xD000000000000012;
  v51 = v20;
  v43 = 0x800000029D965410;
  *&v50 = 0x800000029D965410;
  v21 = v19;
  sub_29D936BC8();

  sub_29D8099A4(&v49);
  sub_29D9361B8();
  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  v48 = v13;
  v22 = v17;
  sub_29D936BC8();

  sub_29D8099A4(&v49);
  sub_29D936368();
  v23 = sub_29D9354E8();
  v25 = v24;
  if (v23 == sub_29D9354E8() && v25 == v26)
  {

LABEL_5:
    v41 = v21;
    v28 = _s29CardioFitnessSpinnerComponentCMa();
    v29 = swift_allocObject();
    v29[2] = 0xD000000000000014;
    v29[3] = 0x800000029D965430;
    v29[4] = 0;
    v30 = v21;
    v31 = v45;
    sub_29D9360D8();
    *(&v50 + 1) = v28;
    v51 = sub_29D809A68(&qword_2A17B5840, _s29CardioFitnessSpinnerComponentCMa);
    *&v49 = v29;
    v32 = *MEMORY[0x29EDC2620];
    v42 = a1;
    v33 = v44;
    v40 = *(v44 + 104);
    v40(v8, v32, v4);

    v34 = v22;
    sub_29D936BB8();
    v44 = *(v33 + 8);
    (v44)(v8, v4);
    sub_29D69417C(&v49);
    *(&v50 + 1) = v9;
    v51 = sub_29D809A68(&qword_2A17B4150, MEMORY[0x29EDC25F8]);
    v35 = sub_29D693F78(&v49);
    v36 = v46;
    (*(v46 + 16))(v35, v31, v9);
    v40(v8, *MEMORY[0x29EDC2618], v4);
    sub_29D936BB8();

    (v44)(v8, v4);
    v21 = v41;
    (*(v36 + 8))(v31, v9);
    v22 = v34;
    sub_29D69417C(&v49);
    goto LABEL_6;
  }

  v27 = sub_29D93AD78();

  if (v27)
  {
    goto LABEL_5;
  }

LABEL_6:
  v37 = sub_29D936028();

  (*(v47 + 8))(v22, v48);
  return v37;
}

uint64_t sub_29D8075FC(uint64_t a1)
{
  sub_29D809858(0, &qword_2A17B5828, MEMORY[0x29EDB8A88]);
  v1[3] = v3;
  v4 = *(v3 - 8);
  v1[4] = v4;
  v5 = *(v4 + 64) + 15;
  v1[5] = swift_task_alloc();
  sub_29D809858(0, &qword_2A17B5830, MEMORY[0x29EDB8A80]);
  v1[6] = v6;
  v7 = *(v6 - 8);
  v1[7] = v7;
  v8 = *(v7 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[2] = a1;

  return MEMORY[0x2A1C73D48](sub_29D807754, 0, 0);
}

uint64_t sub_29D807754()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  sub_29D809760(0, &qword_2A17B19D8, MEMORY[0x29EDB89F8]);
  v6 = v5;
  v7 = sub_29D8097E4();
  MEMORY[0x29ED688D0](v6, v7);
  sub_29D9382E8();
  (*(v3 + 8))(v2, v4);
  v8 = *(MEMORY[0x29EDB8A78] + 4);
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_29D807878;
  v10 = v0[8];
  v11 = v0[6];

  return MEMORY[0x2A1C58968](v0 + 11, v11);
}

uint64_t sub_29D807878()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_29D807A24;
  }

  else
  {
    v3 = sub_29D80798C;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29D80798C()
{
  v1 = *(v0 + 40);
  (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
  v2 = *(v0 + 88);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_29D807A24()
{
  v1 = v0[5];
  (*(v0[7] + 8))(v0[8], v0[6]);

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

void sub_29D807AAC(void *a1)
{
  v3 = *v1;
  v4 = sub_29D936378();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9364A8();
  sub_29D936368();
  (*(v5 + 8))(v9, v4);
  v10 = sub_29D9354E8();
  v12 = v11;
  if (v10 == sub_29D9354E8() && v12 == v13)
  {
  }

  else
  {
    v15 = sub_29D93AD78();

    if ((v15 & 1) == 0)
    {
      sub_29D807F14(a1, 0xD000000000000036, 0x800000029D965340);
      return;
    }
  }

  v16 = sub_29D936468();
  v17 = sub_29D939D28();
  v18 = sub_29D939D28();
  v19 = [objc_opt_self() alertControllerWithTitle:v17 message:v18 preferredStyle:1];

  v20 = sub_29D939D28();
  v34 = nullsub_1;
  v35 = 0;
  aBlock = MEMORY[0x29EDCA5F8];
  v31 = 1107296256;
  v32 = sub_29D799960;
  v33 = &unk_2A2446F20;
  v21 = _Block_copy(&aBlock);

  v22 = objc_opt_self();
  v23 = [v22 actionWithTitle:v20 style:1 handler:v21];
  _Block_release(v21);

  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  v25[2] = v24;
  v25[3] = v16;
  v25[4] = sub_29D807F14;
  v25[5] = 0;
  v25[6] = v3;

  v26 = v16;
  v27 = sub_29D939D28();
  v34 = sub_29D809648;
  v35 = v25;
  aBlock = MEMORY[0x29EDCA5F8];
  v31 = 1107296256;
  v32 = sub_29D799960;
  v33 = &unk_2A2446F98;
  v28 = _Block_copy(&aBlock);

  v29 = [v22 actionWithTitle:v27 style:2 handler:v28];
  _Block_release(v28);

  [v19 addAction_];
  [v19 addAction_];
  [a1 presentViewController:v19 animated:1 completion:0];
}

uint64_t sub_29D807F14(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D939968();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = sub_29D939998();
  v12 = *(v22[0] - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v22[0], v14);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6FC794();
  v17 = sub_29D93A468();
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a1;
  aBlock[4] = sub_29D8098E0;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = &unk_2A2447038;
  v19 = _Block_copy(aBlock);
  sub_29D935E88();
  v20 = a1;
  sub_29D939988();
  v22[1] = MEMORY[0x29EDCA190];
  sub_29D809A68(&qword_2A1A249D0, MEMORY[0x29EDCA248]);
  sub_29D8098EC(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29D6FC864();
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v16, v11, v19);
  _Block_release(v19);

  (*(v7 + 8))(v11, v6);
  (*(v12 + 8))(v16, v22[0]);
}

void sub_29D8081FC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_29D939D28();
  v5 = sub_29D939D28();
  v6 = [objc_opt_self() alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  v7 = sub_29D939D28();
  v10[4] = nullsub_1;
  v10[5] = 0;
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 1107296256;
  v10[2] = sub_29D799960;
  v10[3] = &unk_2A2447060;
  v8 = _Block_copy(v10);

  v9 = [objc_opt_self() actionWithTitle:v7 style:0 handler:v8];
  _Block_release(v8);

  [v6 addAction_];
  [a3 presentViewController:v6 animated:1 completion:0];
}

uint64_t sub_29D80839C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_29D8098EC(0, &unk_2A17B37B0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8, v12);
  v14 = &v23 - v13;
  v15 = sub_29D93A028();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_29D939FF8();
  v18 = a3;

  v19 = sub_29D939FE8();
  v20 = swift_allocObject();
  v21 = MEMORY[0x29EDCA390];
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = v18;
  v20[5] = v16;
  v20[6] = a4;
  v20[7] = a5;
  v20[8] = a6;

  sub_29D6BEBA4(0, 0, v14, &unk_29D94B7F0, v20);
}

uint64_t sub_29D808578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[28] = a7;
  v8[29] = a8;
  v8[26] = a5;
  v8[27] = a6;
  v8[25] = a4;
  sub_29D939FF8();
  v8[30] = sub_29D939FE8();
  v10 = sub_29D939FD8();
  v8[31] = v10;
  v8[32] = v9;

  return MEMORY[0x2A1C73D48](sub_29D808618, v10, v9);
}

uint64_t sub_29D808618()
{
  v0[33] = [objc_allocWithZone(MEMORY[0x29EDBAB98]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6C0] healthStore:v0[25]];
  v1 = [objc_allocWithZone(MEMORY[0x29EDB8E78]) initWithSuiteName_];
  v0[34] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = sub_29D939FC8();
    [v2 setValue:v3 forKey:*MEMORY[0x29EDBB040]];
  }

  v4 = v0[25];
  v5 = *MEMORY[0x29EDC5110];
  sub_29D939D68();
  v6 = sub_29D936B48();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = v4;
  v0[35] = sub_29D936B38();
  v10 = sub_29D936B28();
  v0[36] = v10;
  v11 = swift_task_alloc();
  v0[37] = v11;
  *v11 = v0;
  v11[1] = sub_29D8087B0;

  return sub_29D8075FC(v10);
}

uint64_t sub_29D8087B0()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *v1;
  *(*v1 + 304) = v0;

  v5 = v2[36];

  v6 = v2[32];
  v7 = v2[31];
  if (v0)
  {
    v8 = sub_29D808E6C;
  }

  else
  {
    v8 = sub_29D808904;
  }

  return MEMORY[0x2A1C73D48](v8, v7, v6);
}

uint64_t sub_29D808904()
{
  v1 = v0[33];
  v0[2] = v0;
  v0[3] = sub_29D808A28;
  v2 = swift_continuation_init();
  sub_29D809760(0, &qword_2A17B72C0, MEMORY[0x29EDCA3C8]);
  v0[17] = v3;
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = sub_29D806FD4;
  v0[13] = &unk_2A2446FE8;
  v0[14] = v2;
  [v1 resetOnboardingWithCompletion_];

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29D808A28()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 312) = v3;
  v4 = *(v1 + 256);
  v5 = *(v1 + 248);
  if (v3)
  {
    v6 = sub_29D809238;
  }

  else
  {
    v6 = sub_29D808B58;
  }

  return MEMORY[0x2A1C73D48](v6, v5, v4);
}

uint64_t sub_29D808B58()
{
  v33 = v0;
  v1 = *(v0 + 240);

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v2 = sub_29D937898();
  sub_29D69C6C0(v2, qword_2A1A2C008);
  v3 = sub_29D937878();
  v4 = sub_29D93A2A8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 232);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v32 = v7;
    *v6 = 136446466;
    v8 = sub_29D93AF08();
    v10 = sub_29D6C2364(v8, v9, &v32);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    *(v6 + 14) = sub_29D6C2364(0xD00000000000002ELL, 0x800000029D9653E0, &v32);
    _os_log_impl(&dword_29D677000, v3, v4, "[%{public}s]: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v7, -1, -1);
    MEMORY[0x29ED6BE30](v6, -1, -1);
  }

  v11 = *(v0 + 208);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = *(v0 + 272);
    v13 = *(v0 + 280);
    v15 = *(v0 + 264);
    v16 = *(v0 + 224);
    v17 = Strong;
    (*(v0 + 216))(Strong, 0xD00000000000002ELL, 0x800000029D9653E0);
  }

  else
  {
    v18 = sub_29D937878();
    v19 = sub_29D93A288();
    v20 = os_log_type_enabled(v18, v19);
    v22 = *(v0 + 272);
    v21 = *(v0 + 280);
    v23 = *(v0 + 264);
    if (v20)
    {
      v24 = *(v0 + 232);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32 = v26;
      *v25 = 136315138;
      v27 = sub_29D93AF08();
      v29 = sub_29D6C2364(v27, v28, &v32);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_29D677000, v18, v19, "%s: view controller found nil", v25, 0xCu);
      sub_29D69417C(v26);
      MEMORY[0x29ED6BE30](v26, -1, -1);
      MEMORY[0x29ED6BE30](v25, -1, -1);
    }
  }

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_29D808E6C()
{
  v35 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = *(v0 + 240);

  v5 = *(v0 + 304);
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_29D93AA18();
  MEMORY[0x29ED6A240](0xD00000000000003CLL, 0x800000029D9653A0);
  *(v0 + 192) = v5;
  v6 = v5;
  sub_29D6B7370(0, &qword_2A1A24850);
  v7 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v7);

  v9 = v33;
  v8 = v34;
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v10 = sub_29D937898();
  sub_29D69C6C0(v10, qword_2A1A2C008);
  sub_29D935E88();
  v11 = sub_29D937878();
  v12 = sub_29D93A288();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 232);
    v14 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = v32;
    *v14 = 136446466;
    v15 = sub_29D93AF08();
    v17 = sub_29D6C2364(v15, v16, &v33);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_29D6C2364(v9, v8, &v33);
    _os_log_impl(&dword_29D677000, v11, v12, "[%{public}s]: %{public}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v32, -1, -1);
    MEMORY[0x29ED6BE30](v14, -1, -1);
  }

  v18 = *(v0 + 208);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = *(v0 + 224);
    v21 = Strong;
    (*(v0 + 216))(Strong, v9, v8);
  }

  else
  {

    v22 = sub_29D937878();
    v23 = sub_29D93A288();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 232);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33 = v26;
      *v25 = 136315138;
      v27 = sub_29D93AF08();
      v29 = sub_29D6C2364(v27, v28, &v33);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_29D677000, v22, v23, "%s: view controller found nil", v25, 0xCu);
      sub_29D69417C(v26);
      MEMORY[0x29ED6BE30](v26, -1, -1);
      MEMORY[0x29ED6BE30](v25, -1, -1);
    }
  }

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_29D809238()
{
  v36 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  v4 = *(v0 + 264);
  v5 = *(v0 + 240);

  swift_willThrow();

  v6 = *(v0 + 312);
  v34 = 0;
  v35 = 0xE000000000000000;
  sub_29D93AA18();
  MEMORY[0x29ED6A240](0xD00000000000003CLL, 0x800000029D9653A0);
  *(v0 + 192) = v6;
  v7 = v6;
  sub_29D6B7370(0, &qword_2A1A24850);
  v8 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v8);

  v10 = v34;
  v9 = v35;
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v11 = sub_29D937898();
  sub_29D69C6C0(v11, qword_2A1A2C008);
  sub_29D935E88();
  v12 = sub_29D937878();
  v13 = sub_29D93A288();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 232);
    v15 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = v33;
    *v15 = 136446466;
    v16 = sub_29D93AF08();
    v18 = sub_29D6C2364(v16, v17, &v34);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_29D6C2364(v10, v9, &v34);
    _os_log_impl(&dword_29D677000, v12, v13, "[%{public}s]: %{public}s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v33, -1, -1);
    MEMORY[0x29ED6BE30](v15, -1, -1);
  }

  v19 = *(v0 + 208);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = *(v0 + 224);
    v22 = Strong;
    (*(v0 + 216))(Strong, v10, v9);
  }

  else
  {

    v23 = sub_29D937878();
    v24 = sub_29D93A288();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 232);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v34 = v27;
      *v26 = 136315138;
      v28 = sub_29D93AF08();
      v30 = sub_29D6C2364(v28, v29, &v34);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_29D677000, v23, v24, "%s: view controller found nil", v26, 0xCu);
      sub_29D69417C(v27);
      MEMORY[0x29ED6BE30](v27, -1, -1);
      MEMORY[0x29ED6BE30](v26, -1, -1);
    }
  }

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_29D809630(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D809658(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_29D6AC948;

  return sub_29D808578(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_29D809760(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_29D6B7370(255, &qword_2A1A24850);
    v7 = a3(a1, MEMORY[0x29EDCA180] + 8, v6, MEMORY[0x29EDC9F20]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29D8097E4()
{
  result = qword_2A17B19E0;
  if (!qword_2A17B19E0)
  {
    sub_29D809760(255, &qword_2A17B19D8, MEMORY[0x29EDB89F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B19E0);
  }

  return result;
}

void sub_29D809858(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    sub_29D809760(255, &qword_2A17B19D8, MEMORY[0x29EDB89F8]);
    v7 = v6;
    v8 = sub_29D8097E4();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D8098EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D809950()
{
  result = qword_2A17B5838;
  if (!qword_2A17B5838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5838);
  }

  return result;
}

uint64_t sub_29D8099A4(uint64_t a1)
{
  sub_29D809A00();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D809A00()
{
  if (!qword_2A17B3DE0)
  {
    sub_29D6B7370(255, &qword_2A17B2E30);
    v0 = sub_29D93A7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3DE0);
    }
  }
}

uint64_t sub_29D809A68(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D809ADC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D809B94()
{
  sub_29D809ADC(319, &qword_2A17B5848, MEMORY[0x29EDB9D18], MEMORY[0x29EDBC390]);
  if (v0 <= 0x3F)
  {
    sub_29D809ADC(319, &qword_2A17B1618, MEMORY[0x29EDBC7B8], MEMORY[0x29EDBC390]);
    if (v1 <= 0x3F)
    {
      sub_29D809ADC(319, &qword_2A17B1610, type metadata accessor for MonitorHypertensionJournalViewSpecs, MEMORY[0x29EDBC390]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for HealthCalendarDayContent(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_29D809D08()
{
  result = sub_29D9339F8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t *sub_29D809D9C@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_29D809E68()
{
  result = qword_2A17B5870;
  if (!qword_2A17B5870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5870);
  }

  return result;
}

uint64_t sub_29D809EBC(void *a1)
{
  v3 = v1;
  sub_29D8100CC(0, &qword_2A17B5A40, sub_29D810024, &type metadata for HealthCalendarDayContent.CodingKeys, MEMORY[0x29EDC9E88]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v5, v9);
  v11 = &v16 - v10;
  v12 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D810024();
  sub_29D93AED8();
  v20 = 0;
  sub_29D9339F8();
  sub_29D80DD1C(&qword_2A17B1538, MEMORY[0x29EDB9BC8]);
  sub_29D93AD18();
  if (!v2)
  {
    v13 = type metadata accessor for HealthCalendarDayContent(0);
    v19 = *(v3 + *(v13 + 20));
    v18 = 1;
    sub_29D810134();
    sub_29D93AD18();
    v14 = *(v3 + *(v13 + 24));
    v17 = 2;
    sub_29D93ACF8();
  }

  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_29D80A0EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_29D9339F8();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v32 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8100CC(0, &qword_2A17B5A28, sub_29D810024, &type metadata for HealthCalendarDayContent.CodingKeys, MEMORY[0x29EDC9E80]);
  v31 = v8;
  v28 = *(v8 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v25 - v11;
  v13 = type metadata accessor for HealthCalendarDayContent(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D810024();
  sub_29D93AEC8();
  if (v2)
  {
    return sub_29D69417C(a1);
  }

  v26 = a1;
  v20 = v28;
  v19 = v29;
  v36 = 0;
  sub_29D80DD1C(&qword_2A17B1558, MEMORY[0x29EDB9BC8]);
  v21 = v31;
  v22 = v30;
  sub_29D93AC88();
  (*(v19 + 32))(v17, v32, v22);
  v34 = 1;
  sub_29D810078();
  sub_29D93AC88();
  v17[*(v13 + 20)] = v35;
  v33 = 2;
  v23 = sub_29D93AC68();
  (*(v20 + 8))(v12, v21);
  v17[*(v13 + 24)] = v23 & 1;
  sub_29D80F578(v17, v27, type metadata accessor for HealthCalendarDayContent);
  sub_29D69417C(v26);
  return sub_29D80EAB4(v17, type metadata accessor for HealthCalendarDayContent);
}

uint64_t sub_29D80A4C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_29D938B68();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x29EDB9D18];
  sub_29D809ADC(0, &qword_2A17B5A20, MEMORY[0x29EDB9D18], MEMORY[0x29EDBC388]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = (&v20 - v14);
  sub_29D80FFA4(v2, &v20 - v14, &qword_2A17B5A20, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_29D933CE8();
    return (*(*(v16 - 8) + 32))(a1, v15, v16);
  }

  else
  {
    v18 = *v15;
    sub_29D93A298();
    v19 = sub_29D9390A8();
    sub_29D937758();

    sub_29D938B58();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v4);
  }
}

uint64_t sub_29D80A6E4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29D938B68();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x29EDBC7B8];
  sub_29D809ADC(0, &qword_2A17B1600, MEMORY[0x29EDBC7B8], MEMORY[0x29EDBC388]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = (&v20 - v13);
  v15 = type metadata accessor for HealthCalendarDayView(0);
  sub_29D80FFA4(v1 + *(v15 + 20), v14, &qword_2A17B1600, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_29D938C58();
    return (*(*(v16 - 8) + 32))(a1, v14, v16);
  }

  else
  {
    v18 = *v14;
    sub_29D93A298();
    v19 = sub_29D9390A8();
    sub_29D937758();

    sub_29D938B58();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v8, v3);
  }
}

uint64_t sub_29D80A910()
{
  v1 = 0x6574617473;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_29D80A964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29D80EC2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29D80A98C(uint64_t a1)
{
  v2 = sub_29D810024();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D80A9C8(uint64_t a1)
{
  v2 = sub_29D810024();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D80AA34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_29D933988() & 1) != 0 && *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20)))
  {
    v6 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_29D80AABC(uint64_t a1)
{
  sub_29D93AE58();
  sub_29D9339F8();
  sub_29D80DD1C(&qword_2A17B1360, MEMORY[0x29EDB9BC8]);
  sub_29D939C98();
  MEMORY[0x29ED6B260](*(v1 + *(a1 + 20)));
  v3 = *(v1 + *(a1 + 24));
  sub_29D93AE78();
  return sub_29D93AE98();
}

uint64_t sub_29D80AB74(uint64_t a1, uint64_t a2)
{
  sub_29D9339F8();
  sub_29D80DD1C(&qword_2A17B1360, MEMORY[0x29EDB9BC8]);
  sub_29D939C98();
  MEMORY[0x29ED6B260](*(v2 + *(a2 + 20)));
  v4 = *(v2 + *(a2 + 24));
  return sub_29D93AE78();
}

uint64_t sub_29D80AC18(uint64_t a1, uint64_t a2)
{
  sub_29D93AE58();
  sub_29D9339F8();
  sub_29D80DD1C(&qword_2A17B1360, MEMORY[0x29EDB9BC8]);
  sub_29D939C98();
  MEMORY[0x29ED6B260](*(v2 + *(a2 + 20)));
  v4 = *(v2 + *(a2 + 24));
  sub_29D93AE78();
  return sub_29D93AE98();
}

uint64_t sub_29D80ACCC()
{
  v1 = sub_29D9338A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D9338F8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v7, v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v28 - v15;
  v17 = type metadata accessor for HealthCalendarDayContent(0);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v17, v20);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v0 + *(type metadata accessor for HealthCalendarDayView(0) + 28);
  if (*(v23 + *(v18 + 32)) != 1)
  {
    return 0;
  }

  v24 = sub_29D80F578(v23, v22, type metadata accessor for HealthCalendarDayContent);
  MEMORY[0x29ED634A0](v24);
  sub_29D933898();
  sub_29D933808();
  (*(v2 + 8))(v6, v1);
  v25 = *(v8 + 8);
  v25(v13, v7);
  sub_29D80DD1C(&qword_2A17B22A8, MEMORY[0x29EDB9BB0]);
  sub_29D9339D8();
  v25(v16, v7);
  v26 = sub_29D9339F8();
  (*(*(v26 - 8) + 8))(v22, v26);
  return v28;
}

uint64_t sub_29D80AF9C()
{
  sub_29D8100CC(0, &qword_2A17B5A10, sub_29D7EF894, MEMORY[0x29EDC9BA8], MEMORY[0x29EDB9A88]);
  v60 = *(v1 - 8);
  v61 = v1;
  v2 = *(v60 + 64);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v59 = &v51 - v4;
  v5 = type metadata accessor for HealthCalendarDayContent(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  v58 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D933CC8();
  v56 = *(v9 - 8);
  v57 = v9;
  v10 = *(v56 + 64);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v55 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69A444(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8, v15);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29D933CE8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x2A1C7C4A8](v18, v21);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v22, v25);
  v27 = &v51 - v26;
  v28 = sub_29D933AA8();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v32 = MEMORY[0x2A1C7C4A8](v28, v31);
  v52 = &v51 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v32, v34);
  v36 = &v51 - v35;
  v53 = v0;
  sub_29D80A4C0(v27);
  sub_29D933C68();
  v37 = *(v19 + 8);
  v54 = v18;
  v37(v27, v18);
  if ((*(v29 + 48))(v17, 1, v28) == 1)
  {
    sub_29D80EAB4(v17, sub_29D69A444);
    return 0;
  }

  else
  {
    v39 = *(v29 + 32);
    v51 = v36;
    v39(v36, v17, v28);
    v40 = v53;
    sub_29D80A4C0(v24);
    v42 = v55;
    v41 = v56;
    v43 = v57;
    (*(v56 + 104))(v55, *MEMORY[0x29EDB9CB8], v57);
    v44 = type metadata accessor for HealthCalendarDayView(0);
    v45 = v58;
    sub_29D80F578(v40 + *(v44 + 28), v58, type metadata accessor for HealthCalendarDayContent);
    v46 = sub_29D933CD8();
    (*(v41 + 8))(v42, v43);
    v37(v24, v54);
    v47 = sub_29D9339F8();
    (*(*(v47 - 8) + 8))(v45, v47);
    v62 = v46;
    v48 = v51;
    (*(v29 + 16))(v52, v51, v28);
    sub_29D7EF894();
    v49 = v59;
    sub_29D9334D8();
    sub_29D80FF14();
    v50 = v61;
    sub_29D93A858();
    (*(v60 + 8))(v49, v50);
    (*(v29 + 8))(v48, v28);
    return v63;
  }
}

void sub_29D80B504(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MonitorHypertensionJournalViewSpecs();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D80DD64();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8, v12);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D80E8C0(0);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v15, v18);
  v20 = v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v1 + *(type metadata accessor for HealthCalendarDayView(0) + 24);
  sub_29D6998E4(v9);
  v22 = *&v9[*(v5 + 52)];
  sub_29D80EAB4(v9, type metadata accessor for MonitorHypertensionJournalViewSpecs);
  *v14 = sub_29D938C68();
  *(v14 + 1) = v22;
  v14[16] = 0;
  sub_29D80E94C();
  sub_29D80B774(v2, &v14[*(v23 + 44)]);
  sub_29D9398A8();
  sub_29D9388E8();
  sub_29D80E9B4(v14, v20, sub_29D80DD64);
  v24 = &v20[*(v16 + 44)];
  v25 = v31[5];
  *(v24 + 4) = v31[4];
  *(v24 + 5) = v25;
  *(v24 + 6) = v31[6];
  v26 = v31[1];
  *v24 = v31[0];
  *(v24 + 1) = v26;
  v27 = v31[3];
  *(v24 + 2) = v31[2];
  *(v24 + 3) = v27;
  v28 = sub_29D939588();
  LOBYTE(v2) = sub_29D9390D8();
  sub_29D80E9B4(v20, a1, sub_29D80E8C0);
  sub_29D80EA1C(0, &qword_2A17B5970, sub_29D80E8C0);
  v30 = a1 + *(v29 + 36);
  *v30 = v28;
  *(v30 + 8) = v2;
}

uint64_t sub_29D80B774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v418 = a1;
  v408 = a2;
  v359 = type metadata accessor for MonitorHypertensionJournalViewSpecs();
  v2 = *(*(v359 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v359, v3);
  v358 = &v358 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D80E784(0);
  v381 = v5;
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v383 = &v358 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D80E73C(0);
  v407 = v9;
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x2A1C7C4A8](v9, v11);
  v382 = &v358 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v384 = &v358 - v15;
  sub_29D80E198(0, &qword_2A17B5978, sub_29D80E150, sub_29D80E73C, MEMORY[0x29EDBC7E8]);
  v405 = v16;
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v406 = &v358 - v19;
  v20 = sub_29D9376C8();
  v373 = *(v20 - 8);
  KeyPath = v20;
  v21 = *(v373 + 64);
  MEMORY[0x2A1C7C4A8](v20, v22);
  v372 = &v358 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_29D933CE8();
  v393 = *(v24 - 8);
  v394 = v24;
  v25 = *(v393 + 64);
  MEMORY[0x2A1C7C4A8](v24, v26);
  v391 = &v358 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for HealthCalendarDayContent(0);
  v29 = *(v28 - 8);
  v416 = v28 - 8;
  v30 = *(v29 + 64);
  MEMORY[0x2A1C7C4A8](v28 - 8, v31);
  v392 = &v358 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v413 = sub_29D9388D8();
  v33 = *(*(v413 - 8) + 64);
  v35 = MEMORY[0x2A1C7C4A8](v413, v34);
  v377 = (&v358 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v35, v37);
  *&v367 = &v358 - v38;
  sub_29D80E528();
  v395 = v39;
  v40 = *(*(v39 - 8) + 64);
  v42 = MEMORY[0x2A1C7C4A8](v39, v41);
  v410 = &v358 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v42, v44);
  v368 = &v358 - v45;
  sub_29D80EA1C(0, &qword_2A17B5908, sub_29D80E528);
  v396 = v46;
  v47 = *(*(v46 - 8) + 64);
  v49 = MEMORY[0x2A1C7C4A8](v46, v48);
  v411 = &v358 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v49, v51);
  v412 = &v358 - v52;
  sub_29D80E4AC();
  v398 = v53;
  v54 = *(*(v53 - 8) + 64);
  v56 = MEMORY[0x2A1C7C4A8](v53, v55);
  v380 = &v358 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v56, v58);
  v375 = &v358 - v59;
  v417 = sub_29D938C58();
  v414 = *(v417 - 8);
  v60 = *(v414 + 64);
  v62 = MEMORY[0x2A1C7C4A8](v417, v61);
  v379 = &v358 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x2A1C7C4A8](v62, v64);
  v378 = &v358 - v66;
  v68 = MEMORY[0x2A1C7C4A8](v65, v67);
  v376 = &v358 - v69;
  v71 = MEMORY[0x2A1C7C4A8](v68, v70);
  v409 = &v358 - v72;
  v74 = MEMORY[0x2A1C7C4A8](v71, v73);
  v385 = &v358 - v75;
  v77 = MEMORY[0x2A1C7C4A8](v74, v76);
  v365 = &v358 - v78;
  v80 = MEMORY[0x2A1C7C4A8](v77, v79);
  v363 = &v358 - v81;
  v83 = MEMORY[0x2A1C7C4A8](v80, v82);
  v420 = &v358 - v84;
  v86 = MEMORY[0x2A1C7C4A8](v83, v85);
  v419 = &v358 - v87;
  MEMORY[0x2A1C7C4A8](v86, v88);
  v386 = (&v358 - v89);
  v90 = sub_29D939628();
  v361 = *(v90 - 8);
  v362 = v90;
  v91 = *(v361 + 64);
  MEMORY[0x2A1C7C4A8](v90, v92);
  v360 = &v358 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D80E198(0, &qword_2A17B58E0, sub_29D80E308, sub_29D80E39C, MEMORY[0x29EDBC558]);
  v415 = v94;
  v95 = *(*(v94 - 1) + 64);
  MEMORY[0x2A1C7C4A8](v94, v96);
  v387 = &v358 - v97;
  sub_29D80E264();
  v364 = v98;
  v99 = *(*(v98 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v98, v100);
  v388 = &v358 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D80E21C(0);
  *&v366 = v102;
  v103 = *(*(v102 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v102, v104);
  v370 = &v358 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D80E150(0);
  v402 = v106;
  v107 = *(*(v106 - 8) + 64);
  v109 = MEMORY[0x2A1C7C4A8](v106, v108);
  v369 = &v358 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v109, v111);
  v371 = &v358 - v112;
  sub_29D80E108(0);
  v114 = *(*(v113 - 8) + 64);
  v116 = MEMORY[0x2A1C7C4A8](v113 - 8, v115);
  v404 = &v358 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v116, v118);
  v403 = &v358 - v119;
  v120 = sub_29D9391E8();
  v121 = *(v120 - 8);
  v122 = *(v121 + 64);
  MEMORY[0x2A1C7C4A8](v120, v123);
  v125 = &v358 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D938C18();
  v126 = sub_29D9392D8();
  v128 = v127;
  v130 = v129;
  sub_29D939218();
  (*(v121 + 104))(v125, *MEMORY[0x29EDBC9B0], v120);
  sub_29D939208();

  (*(v121 + 8))(v125, v120);
  sub_29D939178();
  sub_29D9391D8();

  v131 = sub_29D9392C8();
  v399 = v132;
  v400 = v131;
  LOBYTE(v120) = v133;
  v401 = v134;
  v135 = v418;

  v136 = v130 & 1;
  v137 = v419;
  v138 = v128;
  v139 = v417;
  sub_29D69ABB4(v126, v138, v136);

  v140 = sub_29D9398A8();
  v142 = v141;
  sub_29D80DA64(&v421);
  v451[2] = v423;
  v451[3] = v424;
  v460 = v423;
  v461 = v424;
  v451[0] = v421;
  v451[1] = v422;
  *&v452 = v425;
  *(&v452 + 1) = v140;
  v458 = v421;
  v459 = v422;
  v462 = v452;
  v453 = v142;
  LOBYTE(v448) = v120 & 1;
  v463 = v142;
  v454[3] = v424;
  v454[2] = v423;
  v454[0] = v421;
  v454[1] = v422;
  v455 = v425;
  v456 = v140;
  v457 = v142;
  sub_29D80F578(v451, &v429, sub_29D80DEFC);
  sub_29D80EAB4(v454, sub_29D80DEFC);
  v397 = v448;
  v143 = type metadata accessor for HealthCalendarDayView(0);
  v144 = v143;
  v145 = *(v416 + 28);
  v390 = v135 + *(v143 + 28);
  v146 = *(v390 + v145);
  if (v146)
  {
    v389 = v146;
    v388 = v143;
    v429 = sub_29D80AF9C();
    v430 = v147;
    sub_29D69AB60();
    v148 = sub_29D9392F8();
    v385 = v149;
    v386 = v148;
    v151 = v150;
    v375 = v152;
    KeyPath = swift_getKeyPath();
    v373 = swift_getKeyPath();
    LODWORD(v372) = v151 & 1;
    LOBYTE(v429) = v151 & 1;
    LOBYTE(v421) = 0;
    sub_29D80A6E4(v409);
    sub_29D80A6E4(v137);
    v153 = v414;
    v154 = *(v414 + 104);
    v155 = v420;
    LODWORD(v412) = *MEMORY[0x29EDBC758];
    v415 = v154;
    v416 = v414 + 104;
    v154(v420);
    v156 = sub_29D80ED48(v137, v155);
    v157 = v139;
    v158 = *(v153 + 8);
    v158(v155, v157);
    v158(v137, v157);
    v159 = MEMORY[0x29EDBC780];
    if (v156)
    {
      v387 = 0x4041000000000000;
      v160 = v409;
    }

    else
    {
      v187 = v409;
      v188 = (*(v153 + 88))(v409, v157);
      v189 = *v159;
      v387 = 0x4040800000000000;
      if (v188 == v189)
      {
        goto LABEL_9;
      }

      v160 = v187;
      v387 = 0x4040000000000000;
    }

    v158(v160, v157);
LABEL_9:
    v190 = v376;
    sub_29D80A6E4(v376);
    sub_29D80A6E4(v137);
    (v415)(v155, v412, v157);
    v191 = sub_29D80ED48(v137, v155);
    v158(v155, v157);
    v158(v137, v157);
    if (v191)
    {
      v192 = v190;
      v193 = v389;
    }

    else
    {
      v194 = (*(v153 + 88))(v190, v157) == *MEMORY[0x29EDBC780];
      v192 = v190;
      v193 = v389;
      if (v194)
      {
        goto LABEL_13;
      }
    }

    v158(v192, v157);
LABEL_13:
    sub_29D9398A8();
    sub_29D938718();
    *(v440 + 7) = v442;
    *(&v440[1] + 7) = v443;
    *(&v440[2] + 7) = v444;
    if (v193 == 2)
    {
      v195 = sub_29D9395C8();
    }

    else
    {
      v195 = sub_29D9395B8();
    }

    v409 = v195;
    LODWORD(v365) = v193 != 2;
    v371 = swift_getKeyPath();
    v196 = v418;
    sub_29D80A6E4(v137);
    v197 = v420;
    LODWORD(v387) = *MEMORY[0x29EDBC7A0];
    v198 = v417;
    v415(v420);
    v199 = sub_29D80F160(v137, v197);
    v158(v197, v198);
    v158(v137, v198);
    if (v199)
    {
      v200 = 16.0;
    }

    else
    {
      v200 = 8.0;
    }

    v201 = *(v413 + 20);
    v202 = *MEMORY[0x29EDBC6F8];
    v203 = sub_29D938C38();
    v204 = *(v203 - 8);
    v205 = *(v204 + 104);
    v206 = v377;
    LODWORD(v376) = v202;
    v369 = v205;
    v370 = v203;
    v368 = v204 + 104;
    (v205)(v377 + v201, v202);
    *v206 = v200;
    v206[1] = v200;
    v207 = (v196 + *(v388 + 32));
    v208 = *v207;
    v209 = *(v207 + 1);
    v366 = *(v207 + 3);
    v367 = v209;
    v210 = v392;
    sub_29D80F578(v390, v392, type metadata accessor for HealthCalendarDayContent);
    sub_29D935E88();
    v211 = v391;
    sub_29D933C88();
    sub_29D933B18();
    (*(v393 + 8))(v211, v394);
    v212 = sub_29D9339F8();
    (*(*(v212 - 8) + 8))(v210, v212);
    sub_29D9386D8();
    v213 = MEMORY[0x29EDBC5C0];
    v214 = v410;
    sub_29D80F578(v206, v410, MEMORY[0x29EDBC5C0]);
    v215 = *&v445 * 0.5;
    v216 = v214 + *(v395 + 68);
    sub_29D80F578(v206, v216, v213);
    *(v216 + *(sub_29D9388C8() + 20)) = v215;
    sub_29D80F5E0();
    v218 = v216 + *(v217 + 36);
    v219 = v446;
    *v218 = v445;
    *(v218 + 16) = v219;
    *(v218 + 32) = v447;
    sub_29D80F674();
    v221 = v216 + *(v220 + 52);
    *v221 = v208;
    v222 = v367;
    *(v221 + 24) = v366;
    *(v221 + 8) = v222;
    *(v216 + *(v220 + 56)) = 256;
    v223 = sub_29D9398A8();
    v225 = v224;
    sub_29D80EAB4(v206, MEMORY[0x29EDBC5C0]);
    sub_29D80F724();
    v227 = (v216 + *(v226 + 36));
    *v227 = v223;
    v227[1] = v225;
    if (v389 == 2)
    {
      v230 = sub_29D939588();
    }

    else
    {
      v228 = v418 + *(v388 + 24);
      v229 = v358;
      sub_29D6998E4(v358);
      v230 = *(v229 + *(v359 + 40));

      sub_29D80EAB4(v229, type metadata accessor for MonitorHypertensionJournalViewSpecs);
    }

    v231 = v411;
    v232 = v379;
    v233 = sub_29D9390D8();
    sub_29D80E9B4(v410, v231, sub_29D80E528);
    v234 = v231 + *(v396 + 36);
    *v234 = v230;
    *(v234 + 8) = v233;
    v235 = v378;
    sub_29D80A6E4(v378);
    v236 = v419;
    sub_29D80A6E4(v419);
    v237 = v420;
    v238 = v417;
    (v415)(v420, v412, v417);
    v239 = sub_29D80ED48(v236, v237);
    v158(v237, v238);
    v158(v236, v238);
    if (v239)
    {
      v240 = v235;
    }

    else
    {
      if ((*(v414 + 88))(v235, v238) == *MEMORY[0x29EDBC780])
      {
        goto LABEL_27;
      }

      v240 = v235;
    }

    v158(v240, v238);
LABEL_27:
    sub_29D80A6E4(v232);
    v241 = v419;
    sub_29D80A6E4(v419);
    v242 = v420;
    (v415)(v420, v412, v238);
    v243 = sub_29D80ED48(v241, v242);
    v158(v242, v238);
    v158(v241, v238);
    if (v243)
    {
      v244 = v420;
    }

    else
    {
      v245 = (*(v414 + 88))(v232, v238);
      v244 = v420;
      if (v245 == *MEMORY[0x29EDBC780])
      {
LABEL_31:
        sub_29D9398A8();
        sub_29D938718();
        v246 = v380;
        sub_29D683354(v411, v380);
        v247 = (v246 + *(v398 + 36));
        v248 = v449;
        *v247 = v448;
        v247[1] = v248;
        v247[2] = v450;
        v249 = sub_29D9398A8();
        v251 = v250;
        v252 = v238;
        v253 = v383;
        v254 = &v383[*(v381 + 36)];
        sub_29D80E9B4(v246, v254, sub_29D80E4AC);
        sub_29D80E418();
        v256 = (v254 + *(v255 + 36));
        *v256 = v249;
        v256[1] = v251;
        *(v253 + 112) = *(&v440[2] + 15);
        v257 = v440[1];
        *(v253 + 97) = v440[2];
        v258 = v440[0];
        *(v253 + 81) = v257;
        v259 = v385;
        *v253 = v386;
        *(v253 + 8) = v259;
        *(v253 + 16) = v372;
        v260 = KeyPath;
        *(v253 + 24) = v375;
        *(v253 + 32) = v260;
        *(v253 + 40) = 1;
        *(v253 + 48) = v373;
        *(v253 + 56) = 1;
        *(v253 + 64) = 0;
        *(v253 + 65) = v258;
        v261 = v409;
        *(v253 + 120) = v371;
        *(v253 + 128) = v261;
        v262 = v419;
        sub_29D80A6E4(v419);
        (v415)(v244, v387, v252);
        LOBYTE(v249) = sub_29D80F160(v262, v244);
        v158(v244, v252);
        v158(v262, v252);
        if (v249)
        {
          v263 = 16.0;
        }

        else
        {
          v263 = 8.0;
        }

        v264 = v382;
        v265 = &v382[*(v407 + 36)];
        (v369)(v265 + *(v413 + 20), v376, v370);
        *v265 = v263;
        v265[1] = v263;
        sub_29D7280C0();
        *(v265 + *(v266 + 36)) = 256;
        sub_29D80E9B4(v253, v264, sub_29D80E784);
        v267 = v384;
        sub_29D80E9B4(v264, v384, sub_29D80E73C);
        sub_29D80FEAC(v267, v406, sub_29D80E73C);
        swift_storeEnumTagMultiPayload();
        sub_29D80FA90(&qword_2A17B59B0, sub_29D80E150, sub_29D80F80C);
        sub_29D80FA90(&qword_2A17B59E8, sub_29D80E73C, sub_29D80FB44);
        v268 = v403;
        sub_29D938DE8();
        v269 = sub_29D80E73C;
        goto LABEL_60;
      }
    }

    v158(v232, v238);
    goto LABEL_31;
  }

  sub_29D939618();
  v162 = v360;
  v161 = v361;
  v163 = v362;
  (*(v361 + 104))(v360, *MEMORY[0x29EDBCAB8], v362);
  v164 = sub_29D939668();

  (*(v161 + 8))(v162, v163);
  sub_29D80E308();
  v166 = v387;
  v167 = (v387 + *(v165 + 36));
  sub_29D764858(0);
  v169 = *(v168 + 28);
  sub_29D938CA8();
  v170 = sub_29D938CB8();
  v171 = v418;
  (*(*(v170 - 8) + 56))(v167 + v169, 0, 1, v170);
  *v167 = swift_getKeyPath();
  *v166 = v164;
  *(v166 + 8) = 0;
  *(v166 + 16) = 1;
  v172 = (v171 + *(v144 + 32));
  v173 = *v172;
  v174 = v172[1];
  v175 = v172[2];
  v176 = v172[3];
  v177 = v172[4];
  v178 = sub_29D939588();
  v179 = (v166 + *(v415 + 9));
  *v179 = v173;
  v179[1] = v174;
  v179[2] = v175;
  v179[3] = v176;
  v179[4] = v177;
  v179[5] = v178;
  v410 = v173;
  sub_29D935E88();
  sub_29D80A6E4(v386);
  sub_29D80A6E4(v137);
  v180 = v414;
  v181 = *(v414 + 104);
  v182 = v420;
  LODWORD(v411) = *MEMORY[0x29EDBC758];
  v415 = v181;
  v416 = v414 + 104;
  v181(v420);
  LOBYTE(v169) = sub_29D80ED48(v137, v182);
  v183 = *(v180 + 8);
  v183(v182, v139);
  v183(v137, v139);
  if (v169)
  {
    v184 = 0x4041000000000000;
    v185 = v363;
    v186 = v386;
  }

  else
  {
    v270 = *(v180 + 88);
    v271 = v386;
    v272 = v270(v386, v139);
    v184 = 0x4040800000000000;
    v185 = v363;
    if (v272 == *MEMORY[0x29EDBC780])
    {
      goto LABEL_38;
    }

    v186 = v271;
    v184 = 0x4040000000000000;
  }

  v139 = v417;
  v183(v186, v417);
LABEL_38:
  v409 = v184;
  sub_29D80A6E4(v185);
  v273 = v419;
  sub_29D80A6E4(v419);
  v274 = v420;
  (v415)(v420, v411, v139);
  v275 = sub_29D80ED48(v273, v274);
  v183(v274, v139);
  v183(v273, v139);
  if (v275)
  {
    v277 = v387;
    v276 = v388;
    v278 = v185;
  }

  else
  {
    v194 = (*(v414 + 88))(v185, v139) == *MEMORY[0x29EDBC780];
    v277 = v387;
    v276 = v388;
    v278 = v185;
    if (v194)
    {
      goto LABEL_42;
    }
  }

  v139 = v417;
  v183(v278, v417);
LABEL_42:
  sub_29D9398A8();
  sub_29D938718();
  sub_29D80FDA0(v277, v276);
  v279 = (v276 + *(v364 + 36));
  v280 = v443;
  *v279 = v442;
  v279[1] = v280;
  v279[2] = v444;
  v281 = v419;
  sub_29D80A6E4(v419);
  v282 = v420;
  LODWORD(v409) = *MEMORY[0x29EDBC7A0];
  v415(v420);
  v283 = sub_29D80F160(v281, v282);
  v183(v282, v139);
  v183(v281, v139);
  if (v283)
  {
    v284 = 16.0;
  }

  else
  {
    v284 = 8.0;
  }

  v285 = *(v413 + 20);
  v286 = *MEMORY[0x29EDBC6F8];
  v287 = sub_29D938C38();
  v288 = *(v287 - 8);
  v289 = *(v288 + 104);
  v290 = v367;
  v389 = v286;
  v386 = v289;
  v387 = v287;
  v384 = v288 + 104;
  (v289)(v367 + v285, v286);
  *v290 = v284;
  v290[1] = v284;
  v291 = v392;
  sub_29D80F578(v390, v392, type metadata accessor for HealthCalendarDayContent);
  sub_29D935E88();
  v292 = v391;
  sub_29D933C88();
  sub_29D933B18();
  (*(v393 + 8))(v292, v394);
  v293 = sub_29D9339F8();
  (*(*(v293 - 8) + 8))(v291, v293);
  sub_29D9386D8();
  v294 = MEMORY[0x29EDBC5C0];
  v295 = v368;
  sub_29D80F578(v290, v368, MEMORY[0x29EDBC5C0]);
  v296 = *&v445 * 0.5;
  v297 = v295 + *(v395 + 68);
  sub_29D80F578(v290, v297, v294);
  *(v297 + *(sub_29D9388C8() + 20)) = v296;
  sub_29D80F5E0();
  v299 = v297 + *(v298 + 36);
  v300 = v446;
  *v299 = v445;
  *(v299 + 16) = v300;
  *(v299 + 32) = v447;
  sub_29D80F674();
  v302 = (v297 + *(v301 + 52));
  *v302 = v410;
  v302[1] = v174;
  v302[2] = v175;
  v302[3] = v176;
  v302[4] = v177;
  *(v297 + *(v301 + 56)) = 256;
  v303 = sub_29D9398A8();
  v305 = v304;
  sub_29D80EAB4(v290, MEMORY[0x29EDBC5C0]);
  sub_29D80F724();
  v307 = (v297 + *(v306 + 36));
  *v307 = v303;
  v307[1] = v305;
  if (qword_2A17B0DF0 != -1)
  {
    swift_once();
  }

  v308 = KeyPath;
  v309 = sub_29D69C6C0(KeyPath, qword_2A17D10C0);
  (*(v373 + 16))(v372, v309, v308);
  v310 = sub_29D9395E8();
  v311 = sub_29D9390D8();
  v312 = v412;
  sub_29D80E9B4(v295, v412, sub_29D80E528);
  v313 = v312 + *(v396 + 36);
  *v313 = v310;
  *(v313 + 8) = v311;
  v314 = v365;
  sub_29D80A6E4(v365);
  v315 = v419;
  sub_29D80A6E4(v419);
  v316 = v417;
  (v415)(v282, v411, v417);
  LOBYTE(v310) = sub_29D80ED48(v315, v282);
  v183(v282, v316);
  v183(v315, v316);
  v317 = v316;
  if (v310)
  {
    v318 = 0x4041000000000000;
    v319 = v385;
  }

  else
  {
    v320 = (*(v414 + 88))(v314, v316);
    v318 = 0x4040800000000000;
    v319 = v385;
    if (v320 == *MEMORY[0x29EDBC780])
    {
      goto LABEL_52;
    }

    v318 = 0x4040000000000000;
  }

  v183(v314, v317);
LABEL_52:
  v410 = v318;
  sub_29D80A6E4(v319);
  v321 = v419;
  sub_29D80A6E4(v419);
  v322 = v420;
  (v415)(v420, v411, v317);
  v323 = sub_29D80ED48(v321, v322);
  v183(v322, v317);
  v183(v321, v317);
  if (v323)
  {
    v324 = v412;
    v325 = v375;
    v326 = v366;
LABEL_55:
    v183(v385, v317);
    goto LABEL_56;
  }

  v327 = (*(v414 + 88))(v319, v317);
  v324 = v412;
  v325 = v375;
  v326 = v366;
  if (v327 != *MEMORY[0x29EDBC780])
  {
    goto LABEL_55;
  }

LABEL_56:
  sub_29D9398A8();
  sub_29D938718();
  sub_29D683354(v324, v325);
  v328 = (v325 + *(v398 + 36));
  v329 = v449;
  *v328 = v448;
  v328[1] = v329;
  v328[2] = v450;
  v330 = sub_29D9398A8();
  v332 = v331;
  v333 = *(v326 + 36);
  v334 = v317;
  v335 = v370;
  v336 = &v370[v333];
  sub_29D80E9B4(v325, &v370[v333], sub_29D80E4AC);
  sub_29D80E418();
  v338 = &v336[*(v337 + 36)];
  *v338 = v330;
  v338[1] = v332;
  sub_29D80FE48(v388, v335);
  v339 = v419;
  sub_29D80A6E4(v419);
  v340 = v420;
  (v415)(v420, v409, v334);
  LOBYTE(v330) = sub_29D80F160(v339, v340);
  v183(v340, v334);
  v183(v339, v334);
  if (v330)
  {
    v341 = 16.0;
  }

  else
  {
    v341 = 8.0;
  }

  v342 = v369;
  v343 = &v369[*(v402 + 36)];
  (v386)(v343 + *(v413 + 20), v389, v387);
  *v343 = v341;
  v343[1] = v341;
  sub_29D7280C0();
  *(v343 + *(v344 + 36)) = 256;
  sub_29D80E9B4(v335, v342, sub_29D80E21C);
  v267 = v371;
  sub_29D80E9B4(v342, v371, sub_29D80E150);
  sub_29D80FEAC(v267, v406, sub_29D80E150);
  swift_storeEnumTagMultiPayload();
  sub_29D80FA90(&qword_2A17B59B0, sub_29D80E150, sub_29D80F80C);
  sub_29D80FA90(&qword_2A17B59E8, sub_29D80E73C, sub_29D80FB44);
  v268 = v403;
  sub_29D938DE8();
  v269 = sub_29D80E150;
LABEL_60:
  sub_29D80FD40(v267, v269);
  v345 = v404;
  sub_29D80FEAC(v268, v404, sub_29D80E108);
  v347 = v399;
  v346 = v400;
  *&v421 = v400;
  *(&v421 + 1) = v399;
  v348 = v397;
  LOBYTE(v422) = v397;
  *(&v422 + 1) = *v441;
  DWORD1(v422) = *&v441[3];
  v349 = v401;
  *(&v422 + 1) = v401;
  v425 = v460;
  v426 = v461;
  v427 = v462;
  v350 = v463;
  v428 = v463;
  v423 = v458;
  v424 = v459;
  v351 = v461;
  v352 = v462;
  v353 = v408;
  *(v408 + 64) = v460;
  *(v353 + 80) = v351;
  *(v353 + 96) = v352;
  *(v353 + 112) = v350;
  v354 = v422;
  *v353 = v421;
  *(v353 + 16) = v354;
  v355 = v424;
  *(v353 + 32) = v423;
  *(v353 + 48) = v355;
  sub_29D80DE2C();
  sub_29D80FEAC(v345, v353 + *(v356 + 48), sub_29D80E108);
  sub_29D80F578(&v421, &v429, sub_29D80DE9C);
  sub_29D80FD40(v268, sub_29D80E108);
  sub_29D80FD40(v345, sub_29D80E108);
  v429 = v346;
  v430 = v347;
  v431 = v348;
  *v432 = *v441;
  *&v432[3] = *&v441[3];
  v436 = v460;
  v437 = v461;
  v438 = v462;
  v433 = v349;
  v439 = v463;
  v434 = v458;
  v435 = v459;
  return sub_29D80EAB4(&v429, sub_29D80DE9C);
}

uint64_t sub_29D80DA64@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29D9391E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[3] = sub_29D80ACCC();
  v29[4] = v8;
  sub_29D69AB60();
  v9 = sub_29D9392F8();
  v11 = v10;
  v13 = v12;
  sub_29D939218();
  (*(v3 + 104))(v7, *MEMORY[0x29EDBC9B0], v2);
  sub_29D939208();

  (*(v3 + 8))(v7, v2);
  sub_29D939178();
  sub_29D9391D8();

  v14 = sub_29D9392C8();
  v16 = v15;
  v18 = v17;

  sub_29D69ABB4(v9, v11, v13 & 1);

  v19 = [objc_opt_self() secondaryLabelColor];
  sub_29D939528();
  v20 = sub_29D9392A8();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_29D69ABB4(v14, v16, v18 & 1);

  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a1 = v20;
  *(a1 + 8) = v22;
  *(a1 + 16) = v24 & 1;
  *(a1 + 24) = v26;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = result;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 65) = 257;
  return result;
}

uint64_t sub_29D80DD1C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D80DD64()
{
  if (!qword_2A17B5880)
  {
    sub_29D80DDF8(255);
    sub_29D80DD1C(&qword_2A17B5958, sub_29D80DDF8);
    v0 = sub_29D939758();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B5880);
    }
  }
}

void sub_29D80DE2C()
{
  if (!qword_2A17B5890)
  {
    sub_29D80DE9C();
    sub_29D80E108(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B5890);
    }
  }
}

void sub_29D80DE9C()
{
  if (!qword_2A17B5898)
  {
    sub_29D80DEFC();
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B5898);
    }
  }
}

void sub_29D80DEFC()
{
  if (!qword_2A17B58A0)
  {
    sub_29D80E8E8(255, &qword_2A17B58A8, sub_29D69A85C);
    sub_29D80FCB4(&qword_2A17B58B0, &qword_2A17B58A8);
    v0 = sub_29D9388F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B58A0);
    }
  }
}

void sub_29D80DFAC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_29D80E870(255, a3, a4, MEMORY[0x29EDC9C68]);
    v5 = sub_29D939088();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_29D80E018()
{
  result = qword_2A17B58B8;
  if (!qword_2A17B58B8)
  {
    sub_29D69A85C();
    sub_29D72B0B8();
    sub_29D80E0B8(&qword_2A17B17F0, &qword_2A17B1678, &qword_2A17B1680, MEMORY[0x29EDC9BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B58B8);
  }

  return result;
}

uint64_t sub_29D80E0B8(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29D80DFAC(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D80E198(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_29D80E264()
{
  if (!qword_2A17B58D8)
  {
    sub_29D80E198(255, &qword_2A17B58E0, sub_29D80E308, sub_29D80E39C, MEMORY[0x29EDBC558]);
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B58D8);
    }
  }
}

void sub_29D80E308()
{
  if (!qword_2A17B58E8)
  {
    sub_29D80F7B8(255, &qword_2A17B1748, MEMORY[0x29EDBCAF8], MEMORY[0x29EDBC728], MEMORY[0x29EDBC558]);
    sub_29D764858(255);
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B58E8);
    }
  }
}

void sub_29D80E39C()
{
  if (!qword_2A17B58F0)
  {
    v0 = sub_29D938F78();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B58F0);
    }
  }
}

void sub_29D80E418()
{
  if (!qword_2A17B58F8)
  {
    sub_29D80E4AC();
    sub_29D80E5EC(&qword_2A17B5920, sub_29D80E4AC, sub_29D80E670);
    v0 = sub_29D938DD8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B58F8);
    }
  }
}

void sub_29D80E4AC()
{
  if (!qword_2A17B5900)
  {
    sub_29D80EA1C(255, &qword_2A17B5908, sub_29D80E528);
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B5900);
    }
  }
}

void sub_29D80E528()
{
  if (!qword_2A17B5910)
  {
    sub_29D9388D8();
    sub_29D80DD1C(&qword_2A17B5918, MEMORY[0x29EDBC5C0]);
    v0 = sub_29D938E88();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B5910);
    }
  }
}

uint64_t sub_29D80E5EC(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_29D80E670()
{
  result = qword_2A17B5928;
  if (!qword_2A17B5928)
  {
    sub_29D80EA1C(255, &qword_2A17B5908, sub_29D80E528);
    sub_29D80DD1C(&qword_2A17B5930, sub_29D80E528);
    sub_29D7287B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5928);
  }

  return result;
}

void sub_29D80E7CC()
{
  if (!qword_2A17B5948)
  {
    sub_29D80E8E8(255, &qword_2A17B5950, sub_29D69A85C);
    sub_29D80DFAC(255, &qword_2A17B2518, &qword_2A17B1730, MEMORY[0x29EDBCA98]);
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B5948);
    }
  }
}

void sub_29D80E870(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29D80E8E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D938838();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D80E94C()
{
  if (!qword_2A17B5968)
  {
    sub_29D80DDF8(255);
    v0 = sub_29D938788();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B5968);
    }
  }
}

uint64_t sub_29D80E9B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_29D80EA1C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29D80F7B8(255, &qword_2A17B2FC8, MEMORY[0x29EDBCA98], MEMORY[0x29EDBCA88], MEMORY[0x29EDBC8D8]);
    v4 = sub_29D938838();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D80EAB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D80EB38(uint64_t a1)
{
  sub_29D72B554(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  sub_29D80F578(a1, &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), sub_29D72B554);
  return sub_29D938A78();
}

uint64_t sub_29D80EBD4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29D9389E8();
  *a1 = result;
  return result;
}

uint64_t sub_29D80EC00(uint64_t *a1)
{
  v1 = *a1;

  return sub_29D9389F8();
}

uint64_t sub_29D80EC2C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_29D93AD78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_29D93AD78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000029D965450 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_29D93AD78();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

BOOL sub_29D80ED48(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v3 = sub_29D938C58();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v3, v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v21 - v11;
  v13 = *(v4 + 16);
  v13(&v21 - v11, a1, v3);
  v14 = *(v4 + 88);
  v15 = v14(v12, v3);
  v16 = 0;
  v17 = *MEMORY[0x29EDBC778];
  if (v15 != *MEMORY[0x29EDBC778])
  {
    if (v15 == *MEMORY[0x29EDBC7A8])
    {
      v16 = 1;
      goto LABEL_24;
    }

    if (v15 == *MEMORY[0x29EDBC7B0])
    {
      v16 = 2;
      goto LABEL_24;
    }

    if (v15 == *MEMORY[0x29EDBC7A0])
    {
      goto LABEL_7;
    }

    if (v15 == *MEMORY[0x29EDBC770])
    {
      v16 = 4;
    }

    else if (v15 == *MEMORY[0x29EDBC780])
    {
      v16 = 5;
    }

    else if (v15 == *MEMORY[0x29EDBC758])
    {
      v16 = 6;
    }

    else if (v15 == *MEMORY[0x29EDBC790])
    {
      v16 = 7;
    }

    else if (v15 == *MEMORY[0x29EDBC788])
    {
      v16 = 8;
    }

    else if (v15 == *MEMORY[0x29EDBC798])
    {
      v16 = 9;
    }

    else if (v15 == *MEMORY[0x29EDBC760])
    {
      v16 = 10;
    }

    else
    {
      if (v15 != *MEMORY[0x29EDBC768])
      {
        (*(v4 + 8))(v12, v3);
LABEL_7:
        v16 = 3;
        goto LABEL_24;
      }

      v16 = 11;
    }
  }

LABEL_24:
  v13(v9, v22, v3);
  v18 = v14(v9, v3);
  if (v18 == v17)
  {
    v19 = 0;
  }

  else if (v18 == *MEMORY[0x29EDBC7A8])
  {
    v19 = 1;
  }

  else if (v18 == *MEMORY[0x29EDBC7B0])
  {
    v19 = 2;
  }

  else
  {
    if (v18 != *MEMORY[0x29EDBC7A0])
    {
      if (v18 == *MEMORY[0x29EDBC770])
      {
        v19 = 4;
        return v16 >= v19;
      }

      if (v18 == *MEMORY[0x29EDBC780])
      {
        v19 = 5;
        return v16 >= v19;
      }

      if (v18 == *MEMORY[0x29EDBC758])
      {
        v19 = 6;
        return v16 >= v19;
      }

      if (v18 == *MEMORY[0x29EDBC790])
      {
        v19 = 7;
        return v16 >= v19;
      }

      if (v18 == *MEMORY[0x29EDBC788])
      {
        v19 = 8;
        return v16 >= v19;
      }

      if (v18 == *MEMORY[0x29EDBC798])
      {
        v19 = 9;
        return v16 >= v19;
      }

      if (v18 == *MEMORY[0x29EDBC760])
      {
        v19 = 10;
        return v16 >= v19;
      }

      if (v18 == *MEMORY[0x29EDBC768])
      {
        v19 = 11;
        return v16 >= v19;
      }

      (*(v4 + 8))(v9, v3);
    }

    v19 = 3;
  }

  return v16 >= v19;
}

BOOL sub_29D80F160(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v3 = sub_29D938C58();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v3, v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v21 - v11;
  v13 = *(v4 + 16);
  v13(&v21 - v11, a2, v3);
  v14 = *(v4 + 88);
  v15 = v14(v12, v3);
  v16 = 0;
  v17 = *MEMORY[0x29EDBC778];
  if (v15 != *MEMORY[0x29EDBC778])
  {
    if (v15 == *MEMORY[0x29EDBC7A8])
    {
      v16 = 1;
      goto LABEL_24;
    }

    if (v15 == *MEMORY[0x29EDBC7B0])
    {
      v16 = 2;
      goto LABEL_24;
    }

    if (v15 == *MEMORY[0x29EDBC7A0])
    {
      goto LABEL_7;
    }

    if (v15 == *MEMORY[0x29EDBC770])
    {
      v16 = 4;
    }

    else if (v15 == *MEMORY[0x29EDBC780])
    {
      v16 = 5;
    }

    else if (v15 == *MEMORY[0x29EDBC758])
    {
      v16 = 6;
    }

    else if (v15 == *MEMORY[0x29EDBC790])
    {
      v16 = 7;
    }

    else if (v15 == *MEMORY[0x29EDBC788])
    {
      v16 = 8;
    }

    else if (v15 == *MEMORY[0x29EDBC798])
    {
      v16 = 9;
    }

    else if (v15 == *MEMORY[0x29EDBC760])
    {
      v16 = 10;
    }

    else
    {
      if (v15 != *MEMORY[0x29EDBC768])
      {
        (*(v4 + 8))(v12, v3);
LABEL_7:
        v16 = 3;
        goto LABEL_24;
      }

      v16 = 11;
    }
  }

LABEL_24:
  v13(v9, v22, v3);
  v18 = v14(v9, v3);
  if (v18 == v17)
  {
    v19 = 0;
  }

  else if (v18 == *MEMORY[0x29EDBC7A8])
  {
    v19 = 1;
  }

  else if (v18 == *MEMORY[0x29EDBC7B0])
  {
    v19 = 2;
  }

  else
  {
    if (v18 != *MEMORY[0x29EDBC7A0])
    {
      if (v18 == *MEMORY[0x29EDBC770])
      {
        v19 = 4;
        return v16 >= v19;
      }

      if (v18 == *MEMORY[0x29EDBC780])
      {
        v19 = 5;
        return v16 >= v19;
      }

      if (v18 == *MEMORY[0x29EDBC758])
      {
        v19 = 6;
        return v16 >= v19;
      }

      if (v18 == *MEMORY[0x29EDBC790])
      {
        v19 = 7;
        return v16 >= v19;
      }

      if (v18 == *MEMORY[0x29EDBC788])
      {
        v19 = 8;
        return v16 >= v19;
      }

      if (v18 == *MEMORY[0x29EDBC798])
      {
        v19 = 9;
        return v16 >= v19;
      }

      if (v18 == *MEMORY[0x29EDBC760])
      {
        v19 = 10;
        return v16 >= v19;
      }

      if (v18 == *MEMORY[0x29EDBC768])
      {
        v19 = 11;
        return v16 >= v19;
      }

      (*(v4 + 8))(v9, v3);
    }

    v19 = 3;
  }

  return v16 >= v19;
}

uint64_t sub_29D80F578(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29D80F5E0()
{
  if (!qword_2A17B5980)
  {
    sub_29D9388C8();
    sub_29D80DD1C(&qword_2A17B5988, MEMORY[0x29EDBC5A0]);
    v0 = sub_29D938768();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B5980);
    }
  }
}

void sub_29D80F674()
{
  if (!qword_2A17B5990)
  {
    sub_29D80F5E0();
    sub_29D80DD1C(&qword_2A17B5998, sub_29D80F5E0);
    v0 = sub_29D938698();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B5990);
    }
  }
}

void sub_29D80F724()
{
  if (!qword_2A17B59A0)
  {
    sub_29D80F674();
    sub_29D80F7B8(255, &qword_2A17B59A8, MEMORY[0x29EDBCBF8], MEMORY[0x29EDBCBF0], MEMORY[0x29EDBC7D8]);
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B59A0);
    }
  }
}

void sub_29D80F7B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t sub_29D80F80C()
{
  result = qword_2A17B59B8;
  if (!qword_2A17B59B8)
  {
    sub_29D80E21C(255);
    sub_29D80E5EC(&qword_2A17B59C0, sub_29D80E264, sub_29D80F8EC);
    sub_29D80DD1C(&qword_2A17B59E0, sub_29D80E418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B59B8);
  }

  return result;
}

unint64_t sub_29D80F8EC()
{
  result = qword_2A17B59C8;
  if (!qword_2A17B59C8)
  {
    sub_29D80E198(255, &qword_2A17B58E0, sub_29D80E308, sub_29D80E39C, MEMORY[0x29EDBC558]);
    sub_29D80F9E0();
    sub_29D80DD1C(&qword_2A17B59D8, sub_29D80E39C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B59C8);
  }

  return result;
}

unint64_t sub_29D80F9E0()
{
  result = qword_2A17B59D0;
  if (!qword_2A17B59D0)
  {
    sub_29D80E308();
    sub_29D69D430();
    sub_29D80DD1C(&qword_2A17B4008, sub_29D764858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B59D0);
  }

  return result;
}

uint64_t sub_29D80FA90(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_29D80DD1C(&qword_2A17B3048, sub_29D7280C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29D80FB44()
{
  result = qword_2A17B59F0;
  if (!qword_2A17B59F0)
  {
    sub_29D80E784(255);
    sub_29D80FBF4();
    sub_29D80DD1C(&qword_2A17B59E0, sub_29D80E418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B59F0);
  }

  return result;
}

unint64_t sub_29D80FBF4()
{
  result = qword_2A17B59F8;
  if (!qword_2A17B59F8)
  {
    sub_29D80E7CC();
    sub_29D80FCB4(&qword_2A17B5A00, &qword_2A17B5950);
    sub_29D80E0B8(&qword_2A17B5A08, &qword_2A17B2518, &qword_2A17B1730, MEMORY[0x29EDBCA98]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B59F8);
  }

  return result;
}

uint64_t sub_29D80FCB4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_29D80E8E8(255, a2, sub_29D69A85C);
    sub_29D80E018();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D80FD40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D80FDA0(uint64_t a1, uint64_t a2)
{
  sub_29D80E198(0, &qword_2A17B58E0, sub_29D80E308, sub_29D80E39C, MEMORY[0x29EDBC558]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D80FE48(uint64_t a1, uint64_t a2)
{
  sub_29D80E264();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D80FEAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_29D80FF14()
{
  result = qword_2A17B5A18;
  if (!qword_2A17B5A18)
  {
    sub_29D8100CC(255, &qword_2A17B5A10, sub_29D7EF894, MEMORY[0x29EDC9BA8], MEMORY[0x29EDB9A88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5A18);
  }

  return result;
}

uint64_t sub_29D80FFA4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D809ADC(0, a3, a4, MEMORY[0x29EDBC388]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_29D810024()
{
  result = qword_2A17B5A30;
  if (!qword_2A17B5A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5A30);
  }

  return result;
}

unint64_t sub_29D810078()
{
  result = qword_2A17B5A38;
  if (!qword_2A17B5A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5A38);
  }

  return result;
}

void sub_29D8100CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_29D810134()
{
  result = qword_2A17B5A48;
  if (!qword_2A17B5A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5A48);
  }

  return result;
}

unint64_t sub_29D810188()
{
  result = qword_2A17B5A50;
  if (!qword_2A17B5A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5A50);
  }

  return result;
}

unint64_t sub_29D8101EC()
{
  result = qword_2A17B5A58;
  if (!qword_2A17B5A58)
  {
    sub_29D80EA1C(255, &qword_2A17B5970, sub_29D80E8C0);
    sub_29D810288();
    sub_29D7287B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5A58);
  }

  return result;
}

unint64_t sub_29D810288()
{
  result = qword_2A17B5A60;
  if (!qword_2A17B5A60)
  {
    sub_29D80E8C0(255);
    sub_29D80DD1C(&qword_2A17B5A68, sub_29D80DD64);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5A60);
  }

  return result;
}

unint64_t sub_29D81033C()
{
  result = qword_2A17B5A70;
  if (!qword_2A17B5A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5A70);
  }

  return result;
}

unint64_t sub_29D810394()
{
  result = qword_2A17B5A78;
  if (!qword_2A17B5A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5A78);
  }

  return result;
}

unint64_t sub_29D8103EC()
{
  result = qword_2A17B5A80;
  if (!qword_2A17B5A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5A80);
  }

  return result;
}

uint64_t sub_29D810484()
{
  v1 = *v0;
  v2 = sub_29D933A58();
  v3 = *(v2 - 8);
  v49 = v2;
  v50 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  v46 = qword_2A17D0F20;
  v47 = *algn_2A17D0F18;
  v8 = sub_29D9334A8();
  v44 = v9;
  v45 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  type metadata accessor for HypertensionNotificationsEducationCollectionViewCell(0);
  v11 = sub_29D9350D8();
  v13 = v12;
  sub_29D933A48();
  v14 = sub_29D933A18();
  v16 = v15;
  v48 = *(v50 + 8);
  v50 += 8;
  v48(v7, v49);
  *&v52 = v11;
  *(&v52 + 1) = v13;
  *&v53 = v14;
  *(&v53 + 1) = v16;
  *&v54 = v45;
  *(&v54 + 1) = v44;
  *&v55 = sub_29D8117D0;
  *(&v55 + 1) = v10;
  v17 = sub_29D9334A8();
  v19 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = v1;
  v21 = sub_29D9350D8();
  v23 = v22;
  sub_29D933A48();
  v24 = sub_29D933A18();
  v26 = v25;
  v27 = v49;
  v48(v7, v49);
  *&v56 = v21;
  *(&v56 + 1) = v23;
  *&v57 = v24;
  *(&v57 + 1) = v26;
  *&v58 = v17;
  *(&v58 + 1) = v19;
  *&v59 = sub_29D8117D8;
  *(&v59 + 1) = v20;
  sub_29D6AA3B4(0, &qword_2A17B5AB0);
  inited = swift_initStackObject();
  inited[1] = xmmword_29D93F680;
  v29 = v55;
  v30 = v54;
  v31 = v53;
  inited[2] = v52;
  inited[3] = v31;
  inited[4] = v30;
  inited[5] = v29;
  v32 = v57;
  inited[6] = v56;
  inited[7] = v32;
  v33 = v59;
  inited[8] = v58;
  inited[9] = v33;
  sub_29D811944(0, &qword_2A17B54F0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  v34 = *(sub_29D9359D8() - 8);
  v35 = *(v34 + 72);
  v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  *(swift_allocObject() + 16) = xmmword_29D93DDB0;
  sub_29D778B5C(&v52, v51);
  sub_29D778B5C(&v56, v51);
  sub_29D775FFC(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_29D933A48();
  sub_29D933A18();
  v37 = v48;
  v48(v7, v27);
  sub_29D9359C8();
  v51[0] = 0x3C53447961727241;
  v51[1] = 0xE800000000000000;
  sub_29D933A48();
  v38 = sub_29D933A18();
  v40 = v39;
  v37(v7, v27);
  MEMORY[0x29ED6A240](v38, v40);

  MEMORY[0x29ED6A240](62, 0xE100000000000000);
  v41 = sub_29D9351C8();
  sub_29D8117E0(&v52);
  sub_29D8117E0(&v56);
  return v41;
}

uint64_t sub_29D810990(void *a1, uint64_t a2)
{
  v4 = objc_allocWithZone(type metadata accessor for HypertensionNotificationsThingsToKnowViewController());
  v5 = sub_29D851E40(0);
  [a1 pushViewController:v5 animated:1];

  v6 = HKLogHeartRateCategory();
  v7 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  v8 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v6 healthDataSource:v7];

  type metadata accessor for HypertensionNotificationRoomInteractionEvent();
  v9 = swift_allocObject();
  *(v9 + 16) = 771;
  *(v9 + 18) = 2;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  v13[4] = sub_29D811AE4;
  v13[5] = v10;
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1107296256;
  v13[2] = sub_29D8E44F0;
  v13[3] = &unk_2A2447270;
  v11 = _Block_copy(v13);

  [v8 submitEvent:v9 completion:v11];
  _Block_release(v11);
}

uint64_t sub_29D810B3C(void *a1, uint64_t a2)
{
  v4 = objc_allocWithZone(type metadata accessor for HypertensionNotificationsHowTheyWorkViewController());
  v5 = sub_29D708EB0(0);
  [a1 pushViewController:v5 animated:1];

  v6 = HKLogHeartRateCategory();
  v7 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  v8 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v6 healthDataSource:v7];

  type metadata accessor for HypertensionNotificationRoomInteractionEvent();
  v9 = swift_allocObject();
  *(v9 + 16) = 772;
  *(v9 + 18) = 2;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  v13[4] = sub_29D811810;
  v13[5] = v10;
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1107296256;
  v13[2] = sub_29D8E44F0;
  v13[3] = &unk_2A2447220;
  v11 = _Block_copy(v13);

  [v8 submitEvent:v9 completion:v11];
  _Block_release(v11);
}

void sub_29D810CE8(char a1, void *a2)
{
  if ((a1 & 1) == 0)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v3 = sub_29D937898();
    sub_29D69C6C0(v3, qword_2A1A2C008);
    v4 = a2;
    oslog = sub_29D937878();
    v5 = sub_29D93A288();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v16 = v8;
      *v6 = 136446466;
      v9 = sub_29D93AF08();
      v11 = sub_29D6C2364(v9, v10, &v16);

      *(v6 + 4) = v11;
      *(v6 + 12) = 2112;
      if (a2)
      {
        v12 = a2;
        v13 = _swift_stdlib_bridgeErrorToNSError();
        v14 = v13;
      }

      else
      {
        v13 = 0;
        v14 = 0;
      }

      *(v6 + 14) = v13;
      *v7 = v14;
      _os_log_impl(&dword_29D677000, oslog, v5, "[%{public}s] Failed to submit analytics with error: %@", v6, 0x16u);
      sub_29D8119A8(v7, &qword_2A1A21FC0, sub_29D751594);
      MEMORY[0x29ED6BE30](v7, -1, -1);
      sub_29D69417C(v8);
      MEMORY[0x29ED6BE30](v8, -1, -1);
      MEMORY[0x29ED6BE30](v6, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_29D810EFC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_29D937B88();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  v5 = sub_29D934D58();
  sub_29D937B18();
  v6 = sub_29D934D48();
  a1[3] = v5;
  result = sub_29D811A18(&qword_2A17B2C98, MEMORY[0x29EDC1C30]);
  a1[4] = result;
  *a1 = v6;
  return result;
}

uint64_t sub_29D811154()
{
  v0 = sub_29D935D08();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D935CB8();
  v6 = sub_29D935CF8();
  (*(v1 + 8))(v5, v0);
  return v6;
}

uint64_t sub_29D8112BC(uint64_t a1)
{
  v2 = sub_29D811A8C();

  return MEMORY[0x2A1C60910](a1, v2);
}

void sub_29D811308(uint64_t a1, void *a2)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  sub_29D811844(a2);
}

uint64_t sub_29D811348(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29D933128();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69F108(a1, v30);
  if (v31)
  {
    sub_29D69F188();
    if (swift_dynamicCast())
    {
      v10 = v26;
      v11 = v27;
      v22 = v29;
      v23 = v28;
      v12 = sub_29D936858();
      v13 = sub_29D939D28();
      [v12 setText_];

      v24 = v10;
      v25 = v11;
      sub_29D935E88();
      sub_29D933118();
      sub_29D69AB60();
      v14 = sub_29D93A818();
      v16 = v15;
      (*(v5 + 8))(v9, v4);

      sub_29D6AA3B4(0, &qword_2A1A21F18);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_29D93DDB0;
      *(inited + 32) = v14;
      *(inited + 40) = v16;
      static String.hypertensionAccessibilityIdentifier(_:)();
      swift_setDeallocating();
      v18 = *(inited + 16);
      swift_arrayDestroy();
      v19 = sub_29D939D28();

      [v2 setAccessibilityIdentifier_];

      return sub_29D694784(v23);
    }
  }

  else
  {
    sub_29D8119A8(v30, &qword_2A17B1830, sub_29D69F188);
  }

  v24 = 0;
  v25 = 0xE000000000000000;
  sub_29D93AA18();
  swift_getObjectType();
  v21 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v21);

  MEMORY[0x29ED6A240](0xD000000000000033, 0x800000029D9655D0);
  result = sub_29D93AB28();
  __break(1u);
  return result;
}

id sub_29D811658(void *a1, double a2, double a3, double a4, double a5)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for HypertensionNotificationsEducationCollectionViewCell(0);
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a2, a3, a4, a5);
}

id sub_29D8116CC(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for HypertensionNotificationsEducationCollectionViewCell(0);
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_29D811748()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HypertensionNotificationsEducationCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D81182C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29D811844(void *a1)
{
  v2 = [a1 navigationController];
  if (v2)
  {
    v3 = *(v1 + 48);
    if (v3)
    {
      v4 = *(v1 + 56);
      v5 = v2;
      v3();
      v2 = v5;
    }
  }

  else
  {
    sub_29D93AA18();
    MEMORY[0x29ED6A240](0xD000000000000030, 0x800000029D94BD80);
    MEMORY[0x29ED6A240](0xD000000000000033, 0x800000029D9655D0);
    sub_29D93AB28();
    __break(1u);
  }
}

void sub_29D811944(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D8119A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D811944(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D811A18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D811A60(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_29D811A8C()
{
  result = qword_2A17B5AB8;
  if (!qword_2A17B5AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5AB8);
  }

  return result;
}

uint64_t type metadata accessor for HealthCalendarView()
{
  result = qword_2A17B5AC0;
  if (!qword_2A17B5AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D811B60()
{
  sub_29D814338(319, &qword_2A17B1610, type metadata accessor for MonitorHypertensionJournalViewSpecs, MEMORY[0x29EDBC390]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for HealthCalendarViewModel();
    if (v1 <= 0x3F)
    {
      sub_29D814338(319, &qword_2A17B1618, MEMORY[0x29EDBC7B8], MEMORY[0x29EDBC390]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_29D811C78@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41[1] = a1;
  sub_29D812F08();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D812F9C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D813510(0);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D813538(0, &qword_2A17B5B78, sub_29D813510);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v19, v22);
  v24 = v41 - v23;
  sub_29D81359C();
  v26 = v25;
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v25, v28);
  v30 = v41 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v12 = sub_29D938C78();
  *(v12 + 1) = 0;
  v12[16] = 0;
  sub_29D81427C(0, &qword_2A17B5B88, sub_29D813030);
  sub_29D8120BC(v2, &v12[*(v31 + 44)]);
  sub_29D9398B8();
  sub_29D9388E8();
  sub_29D813680(v12, v18, sub_29D812F9C);
  v32 = &v18[*(v14 + 44)];
  v33 = v47;
  *(v32 + 4) = v46;
  *(v32 + 5) = v33;
  *(v32 + 6) = v48;
  v34 = v43;
  *v32 = v42;
  *(v32 + 1) = v34;
  v35 = v45;
  *(v32 + 2) = v44;
  *(v32 + 3) = v35;
  sub_29D813680(v18, v24, sub_29D813510);
  *&v24[*(v20 + 44)] = 256;
  v36 = sub_29D939588();
  LOBYTE(v18) = sub_29D9390D8();
  sub_29D8136E8(v24, v30);
  v37 = &v30[*(v26 + 36)];
  *v37 = v36;
  v37[8] = v18;
  v38 = *MEMORY[0x29EDBC510];
  v39 = sub_29D938818();
  (*(*(v39 - 8) + 104))(v7, v38, v39);
  sub_29D81416C(&qword_2A17B5B90, MEMORY[0x29EDBC518]);
  result = sub_29D939CF8();
  if (result)
  {
    sub_29D813770();
    sub_29D81416C(&qword_2A17B5BB8, sub_29D812F08);
    sub_29D9393E8();
    sub_29D81421C(v7, sub_29D812F08);
    return sub_29D81421C(v30, sub_29D81359C);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D8120BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a1;
  v91 = a2;
  v2 = type metadata accessor for HealthCalendarView();
  v3 = v2 - 8;
  v84[0] = *(v2 - 8);
  v4 = *(v84[0] + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v84[1] = v6;
  v85 = v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D813124();
  v90 = v7;
  v89 = *(v7 - 8);
  v8 = *(v89 + 64);
  v10 = MEMORY[0x2A1C7C4A8](v7, v9);
  v88 = v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v87 = v84 - v13;
  v14 = type metadata accessor for MonitorHypertensionJournalViewSpecs();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14 - 8, v16);
  v18 = v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for HealthCalendarDaysOfWeekRow();
  v20 = (v19 - 8);
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v19, v22);
  v24 = (v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D8130FC(0);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v25, v28);
  v30 = v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8130D4(0);
  v32 = v31 - 8;
  v33 = *(*(v31 - 8) + 64);
  v35 = MEMORY[0x2A1C7C4A8](v31, v34);
  v86 = v84 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x2A1C7C4A8](v35, v37);
  v40 = v84 - v39;
  MEMORY[0x2A1C7C4A8](v38, v41);
  v92 = v84 - v42;
  *v24 = swift_getKeyPath();
  v43 = MEMORY[0x29EDBC388];
  sub_29D814338(0, &qword_2A17B5A20, MEMORY[0x29EDB9D18], MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  v44 = v20[7];
  *(v24 + v44) = swift_getKeyPath();
  sub_29D814338(0, &qword_2A17B1600, MEMORY[0x29EDBC7B8], v43);
  swift_storeEnumTagMultiPayload();
  v45 = v20[8];
  *(v24 + v45) = swift_getKeyPath();
  sub_29D814338(0, &qword_2A17B15F8, type metadata accessor for MonitorHypertensionJournalViewSpecs, v43);
  swift_storeEnumTagMultiPayload();
  v46 = v20[9];
  HKUIOnePixel();
  *(v24 + v46) = v47;
  sub_29D9398A8();
  sub_29D9388E8();
  sub_29D813680(v24, v30, type metadata accessor for HealthCalendarDaysOfWeekRow);
  v48 = &v30[*(v26 + 44)];
  v49 = v100;
  *(v48 + 4) = v99;
  *(v48 + 5) = v49;
  *(v48 + 6) = v101;
  v50 = v96;
  *v48 = v95;
  *(v48 + 1) = v50;
  v51 = v98;
  *(v48 + 2) = v97;
  *(v48 + 3) = v51;
  LOBYTE(v46) = sub_29D9390F8();
  v52 = v93;
  sub_29D6998E4(v18);
  sub_29D81421C(v18, type metadata accessor for MonitorHypertensionJournalViewSpecs);
  sub_29D938618();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v61 = v30;
  v62 = v92;
  sub_29D813680(v61, v40, sub_29D8130FC);
  v63 = &v40[*(v32 + 44)];
  *v63 = v46;
  v64 = v52;
  *(v63 + 1) = v54;
  *(v63 + 2) = v56;
  *(v63 + 3) = v58;
  *(v63 + 4) = v60;
  v63[40] = 0;
  sub_29D813680(v40, v62, sub_29D8130D4);
  v65 = v52 + *(v3 + 28);
  v66 = type metadata accessor for HealthCalendarViewModel();
  v67 = sub_29D8AAB10(*(v65 + *(v66 + 20)));
  v68 = *(sub_29D933BD8() + 16);

  if (v68)
  {
    v70 = sub_29D813A3C(0, v67[2], v68, v67, v68);

    v94 = v70;
    swift_getKeyPath();
    v71 = v64;
    v72 = v85;
    sub_29D8141B4(v71, v85, type metadata accessor for HealthCalendarView);
    v73 = (*(v84[0] + 80) + 16) & ~*(v84[0] + 80);
    v74 = swift_allocObject();
    sub_29D813680(v72, v74 + v73, type metadata accessor for HealthCalendarView);
    sub_29D813260(0);
    sub_29D813538(0, &qword_2A17B5B18, sub_29D813294);
    sub_29D81416C(&qword_2A17B5B58, sub_29D813260);
    sub_29D8134A0(&qword_2A17B5B60, sub_29D7EF9D8, sub_29D813438);
    sub_29D814018();
    v75 = v87;
    sub_29D9397C8();
    v76 = v86;
    sub_29D8141B4(v62, v86, sub_29D8130D4);
    v77 = v89;
    v78 = *(v89 + 16);
    v79 = v88;
    v80 = v90;
    v78(v88, v75, v90);
    v81 = v91;
    sub_29D8141B4(v76, v91, sub_29D8130D4);
    sub_29D813064();
    v78((v81 + *(v82 + 48)), v79, v80);
    v83 = *(v77 + 8);
    v83(v75, v80);
    sub_29D81421C(v62, sub_29D8130D4);
    v83(v79, v80);
    return sub_29D81421C(v76, sub_29D8130D4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_29D8128FC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29[2] = a2;
  v30 = a3;
  v4 = type metadata accessor for MonitorHypertensionJournalViewSpecs();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D813294(0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  *v14 = sub_29D938B98();
  *(v14 + 1) = 0;
  v14[16] = 0;
  sub_29D81427C(0, &qword_2A17B5BD8, sub_29D813364);
  v29[1] = *(v16 + 44);
  *&v31 = v15;
  swift_getKeyPath();
  sub_29D7EF9D8(0);
  type metadata accessor for HealthCalendarDayView(0);
  sub_29D81416C(&qword_2A17B5B38, sub_29D7EF9D8);
  sub_29D813438();
  sub_29D81346C();
  sub_29D935E88();
  sub_29D9397C8();
  v17 = sub_29D9390E8();
  sub_29D6998E4(v8);
  sub_29D81421C(v8, type metadata accessor for MonitorHypertensionJournalViewSpecs);
  sub_29D938618();
  v18 = &v14[*(v10 + 44)];
  *v18 = v17;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  sub_29D9398A8();
  sub_29D9388E8();
  v23 = v30;
  sub_29D813680(v14, v30, sub_29D813294);
  sub_29D813538(0, &qword_2A17B5B18, sub_29D813294);
  v25 = v23 + *(v24 + 36);
  v26 = v36;
  *(v25 + 64) = v35;
  *(v25 + 80) = v26;
  *(v25 + 96) = v37;
  v27 = v32;
  *v25 = v31;
  *(v25 + 16) = v27;
  result = v34;
  *(v25 + 32) = v33;
  *(v25 + 48) = result;
  return result;
}

double sub_29D812BF4@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_29D9376C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HealthCalendarDayView(0);
  sub_29D8141B4(a1, a2 + v10[7], type metadata accessor for HealthCalendarDayContent);
  *a2 = swift_getKeyPath();
  v11 = MEMORY[0x29EDBC388];
  sub_29D814338(0, &qword_2A17B5A20, MEMORY[0x29EDB9D18], MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  *(a2 + v10[5]) = swift_getKeyPath();
  sub_29D814338(0, &qword_2A17B1600, MEMORY[0x29EDBC7B8], v11);
  swift_storeEnumTagMultiPayload();
  v12 = v10[6];
  *(a2 + v12) = swift_getKeyPath();
  sub_29D814338(0, &qword_2A17B15F8, type metadata accessor for MonitorHypertensionJournalViewSpecs, v11);
  swift_storeEnumTagMultiPayload();
  v13 = v10[8];
  sub_29D8142E8();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_29D93F680;
  if (qword_2A17B0DE0 != -1)
  {
    swift_once();
  }

  v15 = sub_29D69C6C0(v4, qword_2A17D1090);
  v16 = *(v5 + 16);
  v16(v9, v15, v4);
  *(v14 + 32) = sub_29D9395E8();
  if (qword_2A17B0DE8 != -1)
  {
    swift_once();
  }

  v17 = a2 + v13;
  v18 = sub_29D69C6C0(v4, qword_2A17D10A8);
  v16(v9, v18, v4);
  *(v14 + 40) = sub_29D9395E8();
  MEMORY[0x29ED69C80](v14);
  sub_29D9387C8();
  result = *&v22;
  v20 = v23;
  *v17 = v22;
  *(v17 + 1) = v20;
  *(v17 + 4) = v24;
  return result;
}

void sub_29D812F08()
{
  if (!qword_2A17B5AD0)
  {
    sub_29D938818();
    sub_29D81416C(&qword_2A17B5AD8, MEMORY[0x29EDBC518]);
    v0 = sub_29D93ABC8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B5AD0);
    }
  }
}

void sub_29D812F9C()
{
  if (!qword_2A17B5AE0)
  {
    sub_29D813030(255);
    sub_29D81416C(&qword_2A17B5B68, sub_29D813030);
    v0 = sub_29D939758();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B5AE0);
    }
  }
}

void sub_29D813064()
{
  if (!qword_2A17B5AF0)
  {
    sub_29D8130D4(255);
    sub_29D813124();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B5AF0);
    }
  }
}

void sub_29D813124()
{
  if (!qword_2A17B5B08)
  {
    sub_29D813260(255);
    sub_29D7EF9D8(255);
    sub_29D813538(255, &qword_2A17B5B18, sub_29D813294);
    sub_29D81416C(&qword_2A17B5B58, sub_29D813260);
    sub_29D8134A0(&qword_2A17B5B60, sub_29D7EF9D8, sub_29D813438);
    v0 = sub_29D9397E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B5B08);
    }
  }
}

void sub_29D8132BC()
{
  if (!qword_2A17B5B28)
  {
    sub_29D813364();
    sub_29D8134A0(&qword_2A17B5B48, sub_29D813364, sub_29D81346C);
    v0 = sub_29D939728();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B5B28);
    }
  }
}

void sub_29D813364()
{
  if (!qword_2A17B5B30)
  {
    sub_29D7EF9D8(255);
    type metadata accessor for HealthCalendarDayContent(255);
    type metadata accessor for HealthCalendarDayView(255);
    sub_29D81416C(&qword_2A17B5B38, sub_29D7EF9D8);
    sub_29D813438();
    v0 = sub_29D9397E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B5B30);
    }
  }
}

uint64_t sub_29D8134A0(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

void sub_29D813538(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D938838();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D81359C()
{
  if (!qword_2A17B5B80)
  {
    sub_29D813538(255, &qword_2A17B5B78, sub_29D813510);
    sub_29D813628();
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B5B80);
    }
  }
}

void sub_29D813628()
{
  if (!qword_2A17B2FC8)
  {
    v0 = sub_29D938F58();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B2FC8);
    }
  }
}

uint64_t sub_29D813680(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D8136E8(uint64_t a1, uint64_t a2)
{
  sub_29D813538(0, &qword_2A17B5B78, sub_29D813510);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_29D813770()
{
  result = qword_2A17B5B98;
  if (!qword_2A17B5B98)
  {
    sub_29D81359C();
    sub_29D813820();
    sub_29D81416C(&qword_2A17B3040, sub_29D813628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5B98);
  }

  return result;
}

unint64_t sub_29D813820()
{
  result = qword_2A17B5BA0;
  if (!qword_2A17B5BA0)
  {
    sub_29D813538(255, &qword_2A17B5B78, sub_29D813510);
    sub_29D8138C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5BA0);
  }

  return result;
}

unint64_t sub_29D8138C4()
{
  result = qword_2A17B5BA8;
  if (!qword_2A17B5BA8)
  {
    sub_29D813510(255);
    sub_29D81416C(&qword_2A17B5BB0, sub_29D812F9C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5BA8);
  }

  return result;
}

uint64_t sub_29D813974(uint64_t a1)
{
  v2 = sub_29D933CE8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2, v4);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_29D938AE8();
}

size_t sub_29D813A3C(int64_t a1, int64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = a2;
  v8 = a1;
  v9 = 0;
  v10 = a1;
  while (1)
  {
    v11 = v10 <= a2;
    if (a3 > 0)
    {
      v11 = v10 >= a2;
    }

    if (v11)
    {
      break;
    }

    v12 = __OFADD__(v10, a3);
    v10 += a3;
    if (v12)
    {
      v10 = (v10 >> 63) ^ 0x8000000000000000;
    }

    v12 = __OFADD__(v9++, 1);
    if (v12)
    {
      __break(1u);
      break;
    }
  }

  v49 = MEMORY[0x29EDCA190];
  result = sub_29D7EE868(0, v9, 0);
  v48 = v7;
  if (v9)
  {
    v14 = a4[2];
    v15 = a5;
    while (1)
    {
      v16 = v8 <= v7;
      if (a3 > 0)
      {
        v16 = v8 >= v7;
      }

      if (v16)
      {
        break;
      }

      if (__OFADD__(v8, a3))
      {
        v17 = ((v8 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v17 = v8 + a3;
      }

      v18 = v8 + v15;
      if (__OFADD__(v8, v15))
      {
        goto LABEL_71;
      }

      if (v14 < v18)
      {
        v18 = v14;
      }

      v19 = v18 - v8;
      if (v18 < v8)
      {
        goto LABEL_72;
      }

      if (v8 < 0)
      {
        goto LABEL_73;
      }

      if (v14 == v19)
      {
        result = sub_29D935E88();
        v20 = a4;
      }

      else
      {
        v20 = MEMORY[0x29EDCA190];
        if (v18 != v8)
        {
          if (v19 >= 1)
          {
            sub_29D814338(0, &qword_2A17B1430, type metadata accessor for HealthCalendarDayContent, MEMORY[0x29EDC9E90]);
            v23 = *(type metadata accessor for HealthCalendarDayContent(0) - 8);
            v44 = (*(v23 + 80) + 32) & ~*(v23 + 80);
            v45 = *(v23 + 72);
            v20 = swift_allocObject();
            result = j__malloc_size(v20);
            if (!v45)
            {
              goto LABEL_77;
            }

            if (result - v44 == 0x8000000000000000 && v45 == -1)
            {
              goto LABEL_79;
            }

            v20[2] = v19;
            v20[3] = 2 * ((result - v44) / v45);
          }

          v25 = *(type metadata accessor for HealthCalendarDayContent(0) - 8);
          v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
          v27 = *(v25 + 72);
          result = swift_arrayInitWithCopy();
          v15 = a5;
        }
      }

      v22 = *(v49 + 16);
      v21 = *(v49 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_29D7EE868((v21 > 1), v22 + 1, 1);
        v15 = a5;
      }

      *(v49 + 16) = v22 + 1;
      *(v49 + 8 * v22 + 32) = v20;
      v8 = v17;
      --v9;
      v7 = v48;
      if (!v9)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
  }

  else
  {
    v17 = v8;
    v15 = a5;
LABEL_39:
    v28 = v17 <= v7;
    if (a3 > 0)
    {
      v28 = v17 >= v7;
    }

    if (v28)
    {
      return v49;
    }

    v29 = MEMORY[0x29EDCA190];
    while (1)
    {
      v30 = __OFADD__(v17, a3) ? ((v17 + a3) >> 63) ^ 0x8000000000000000 : v17 + a3;
      v31 = v17 + v15;
      if (__OFADD__(v17, v15))
      {
        break;
      }

      v32 = a4[2];
      if (v32 < v31)
      {
        v31 = a4[2];
      }

      v33 = v31 - v17;
      if (v31 < v17)
      {
        goto LABEL_75;
      }

      if (v17 < 0)
      {
        goto LABEL_76;
      }

      if (v32 == v33)
      {
        result = sub_29D935E88();
        v34 = a4;
      }

      else
      {
        v34 = v29;
        if (v31 != v17)
        {
          if (v33 < 1)
          {
            v34 = v29;
          }

          else
          {
            sub_29D814338(0, &qword_2A17B1430, type metadata accessor for HealthCalendarDayContent, MEMORY[0x29EDC9E90]);
            v38 = *(type metadata accessor for HealthCalendarDayContent(0) - 8);
            v39 = *(v38 + 72);
            v46 = (*(v38 + 80) + 32) & ~*(v38 + 80);
            v34 = swift_allocObject();
            result = j__malloc_size(v34);
            if (!v39)
            {
              goto LABEL_78;
            }

            if (result - v46 == 0x8000000000000000 && v39 == -1)
            {
              goto LABEL_80;
            }

            v34[2] = v33;
            v34[3] = 2 * ((result - v46) / v39);
          }

          v41 = *(type metadata accessor for HealthCalendarDayContent(0) - 8);
          v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
          v43 = *(v41 + 72);
          result = swift_arrayInitWithCopy();
          v15 = a5;
        }
      }

      v36 = *(v49 + 16);
      v35 = *(v49 + 24);
      if (v36 >= v35 >> 1)
      {
        result = sub_29D7EE868((v35 > 1), v36 + 1, 1);
        v15 = a5;
      }

      *(v49 + 16) = v36 + 1;
      *(v49 + 8 * v36 + 32) = v34;
      v37 = v30 <= v48;
      if (a3 > 0)
      {
        v37 = v30 >= v48;
      }

      v17 = v30;
      if (v37)
      {
        return v49;
      }
    }
  }

  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
  return result;
}

double sub_29D813F98@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HealthCalendarView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  *&result = sub_29D8128FC(a1, v6, a2).n128_u64[0];
  return result;
}

unint64_t sub_29D814018()
{
  result = qword_2A17B5BC0;
  if (!qword_2A17B5BC0)
  {
    sub_29D813538(255, &qword_2A17B5B18, sub_29D813294);
    sub_29D8140BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5BC0);
  }

  return result;
}

unint64_t sub_29D8140BC()
{
  result = qword_2A17B5BC8;
  if (!qword_2A17B5BC8)
  {
    sub_29D813294(255);
    sub_29D81416C(&qword_2A17B5BD0, sub_29D8132BC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5BC8);
  }

  return result;
}

uint64_t sub_29D81416C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D8141B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D81421C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D81427C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D938788();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D8142E8()
{
  if (!qword_2A17B5BE0)
  {
    v0 = sub_29D93AD48();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B5BE0);
    }
  }
}

void sub_29D814338(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for BloodPressureJournalCreationBestPracticesViewController()
{
  result = qword_2A17B5C00;
  if (!qword_2A17B5C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D814444(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for BloodPressureJournalCreationBestPracticesViewController();
  v1 = v3.receiver;
  objc_msgSendSuper2(&v3, sel_viewDidLoad);
  v2 = *&v1[qword_2A17B5BF0];
  sub_29D7B7874(6, 3);
}

id sub_29D8144B0()
{
  v1 = v0;
  v2 = sub_29D9339F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v0[qword_2A17B5BF0];
  sub_29D7B7874(6, 0);
  v9 = *&v1[qword_2A17B5BE8];
  if (v9)
  {
    v10 = *&v1[qword_2A17B5BF8];
    v11 = *&v1[qword_2A17B5BE8];
    swift_unknownObjectRetain();
    sub_29D9339E8();
    sub_29D81D22C();
    (*(v3 + 8))(v7, v2);
    sub_29D8BA670(v1, v9);
    return sub_29D936978();
  }

  else
  {

    return [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_29D814610()
{
  v1 = *(v0 + qword_2A17B5BE8);
  sub_29D936978();
  v2 = *(v0 + qword_2A17B5BF0);

  v3 = *(v0 + qword_2A17B5BF8);
}

id sub_29D814660()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BloodPressureJournalCreationBestPracticesViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D814698(uint64_t a1)
{
  v2 = *(a1 + qword_2A17B5BE8);
  sub_29D936978();
  v3 = *(a1 + qword_2A17B5BF0);

  v4 = *(a1 + qword_2A17B5BF8);
}

uint64_t sub_29D8146FC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_2A17B5BE8);
  v4 = *(v2 + qword_2A17B5BE8);
  *v3 = a1;
  v3[1] = a2;
  return sub_29D936978();
}

uint64_t sub_29D814718()
{
  v0 = MEMORY[0x29EDC9C68];
  sub_29D8196C0(0, &qword_2A17B3428, MEMORY[0x29EDB9D58], MEMORY[0x29EDC9C68]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v5 = &v15 - v4;
  sub_29D8196C0(0, &qword_2A17B1F98, MEMORY[0x29EDB9D18], v0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v10 = &v15 - v9;
  v11 = sub_29D933318();
  sub_29D6FD494(v11, qword_2A17D0BC0);
  sub_29D69C6C0(v11, qword_2A17D0BC0);
  sub_29D933C88();
  v12 = sub_29D933CE8();
  (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  v13 = sub_29D933D38();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  return sub_29D933308();
}

uint64_t sub_29D814958()
{
  v0 = MEMORY[0x29EDC9C68];
  sub_29D8196C0(0, &qword_2A17B3428, MEMORY[0x29EDB9D58], MEMORY[0x29EDC9C68]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v5 = &v15 - v4;
  sub_29D8196C0(0, &qword_2A17B1F98, MEMORY[0x29EDB9D18], v0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v10 = &v15 - v9;
  v11 = sub_29D933318();
  sub_29D6FD494(v11, qword_2A17D0BD8);
  sub_29D69C6C0(v11, qword_2A17D0BD8);
  sub_29D933C88();
  v12 = sub_29D933CE8();
  (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  v13 = sub_29D933D38();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  return sub_29D933308();
}

BOOL sub_29D814B98()
{
  v1 = v0;
  v2 = sub_29D9339F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for ElectrocardiogramUpdateAvailability.FeedItemState(0);
  v9 = *(*(updated - 8) + 64);
  MEMORY[0x2A1C7C4A8](updated, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D81A1B4(v1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return 1;
    }

    (*(v3 + 32))(v7, v12, v2);
    if (qword_2A17B0C68 != -1)
    {
      swift_once();
    }

    v14 = qword_2A17D0BD8;
  }

  else
  {
    (*(v3 + 32))(v7, v12, v2);
    if (qword_2A17B0C60 != -1)
    {
      swift_once();
    }

    v14 = qword_2A17D0BC0;
  }

  v15 = sub_29D933318();
  sub_29D69C6C0(v15, v14);
  v16 = sub_29D818D18();
  (*(v3 + 8))(v7, v2);
  return v16;
}

uint64_t sub_29D814DAC()
{
  v1 = v0;
  v2 = *v0;
  sub_29D81979C();
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v3, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = v2;
  v11 = MEMORY[0x29EDB89F8];
  sub_29D8198A8(0, &qword_2A1A24AB8, MEMORY[0x29EDB89F8]);
  sub_29D819920(&qword_2A1A24AC0, &qword_2A1A24AB8, v11);

  sub_29D938378();
  sub_29D819858(&qword_2A1A24A10, sub_29D81979C);
  v12 = sub_29D938418();
  (*(v5 + 8))(v9, v4);
  return v12;
}

uint64_t sub_29D814F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = MEMORY[0x29EDB8AD0];
  sub_29D8198A8(0, &qword_2A1A24A28, MEMORY[0x29EDB8AD0]);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();

  sub_29D938368();
  sub_29D819920(&qword_2A1A24A30, &qword_2A1A24A28, v7);
  v11 = sub_29D938418();

  *a3 = v11;
  return result;
}

void sub_29D8150A8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = [objc_opt_self() heartRhythmDefaultsDomainWithHealthStore_];
  v9 = a3[2];
  v10 = a3[3];
  v11 = sub_29D939D28();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = a4;
  v14[4] = sub_29D819964;
  v14[5] = v12;
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 1107296256;
  v14[2] = sub_29D815944;
  v14[3] = &unk_2A2447438;
  v13 = _Block_copy(v14);

  [v8 dateForKey:v11 completion:v13];
  _Block_release(v13);
}

uint64_t sub_29D8151E4(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void *), uint64_t a5, void *a6)
{
  v93 = a5;
  v94 = a4;
  sub_29D8198A8(0, &unk_2A1A24820, MEMORY[0x29EDCA058]);
  v11 = v10;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = (&v81 - v14);
  v16 = sub_29D9339F8();
  v89 = *(v16 - 8);
  v90 = v16;
  v17 = *(v89 + 64);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v85 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8196C0(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v91 = v20;
  v21 = *(*(v20 - 8) + 64);
  v23 = MEMORY[0x2A1C7C4A8](v20, v22);
  v87 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x2A1C7C4A8](v23, v25);
  v28 = &v81 - v27;
  MEMORY[0x2A1C7C4A8](v26, v29);
  v31 = &v81 - v30;
  v32 = sub_29D937898();
  v95 = *(v32 - 8);
  v96 = v32;
  v33 = *(v95 + 64);
  v35 = MEMORY[0x2A1C7C4A8](v32, v34);
  v92 = &v81 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v35, v37);
  v39 = &v81 - v38;
  sub_29D934D28();
  v88 = a1;
  sub_29D6A0A20(a1, v31);
  v40 = sub_29D937878();
  v41 = sub_29D93A2A8();
  v42 = os_log_type_enabled(v40, v41);
  v86 = a6;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v84 = a2;
    v44 = v43;
    v82 = swift_slowAlloc();
    v97 = v82;
    v98 = a6;
    *v44 = 136446466;
    swift_getMetatypeMetadata();
    v45 = sub_29D939DA8();
    v83 = a3;
    v47 = v15;
    v48 = sub_29D6C2364(v45, v46, &v97);

    *(v44 + 4) = v48;
    v15 = v47;
    *(v44 + 12) = 2082;
    sub_29D6A0A20(v31, v28);
    v49 = sub_29D939DA8();
    v51 = v50;
    sub_29D819E6C(v31, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
    v52 = sub_29D6C2364(v49, v51, &v97);

    *(v44 + 14) = v52;
    a3 = v83;
    _os_log_impl(&dword_29D677000, v40, v41, "[%{public}s] Received date of: %{public}s", v44, 0x16u);
    v53 = v82;
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v53, -1, -1);
    v54 = v44;
    a2 = v84;
    MEMORY[0x29ED6BE30](v54, -1, -1);
  }

  else
  {

    sub_29D819E6C(v31, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
  }

  v55 = v96;
  v56 = *(v95 + 8);
  v56(v39, v96);
  v57 = v92;
  if (a2)
  {
    v58 = a2;
    sub_29D934D28();
    v59 = a2;

    v60 = sub_29D937878();
    v61 = sub_29D93A288();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v97 = v63;
      *v62 = 136446722;
      v98 = v86;
      swift_getMetatypeMetadata();
      v64 = sub_29D939DA8();
      v91 = v11;
      v66 = sub_29D6C2364(v64, v65, &v97);
      v90 = v15;
      v67 = v66;

      *(v62 + 4) = v67;
      *(v62 + 12) = 2082;
      *(v62 + 14) = sub_29D6C2364(*(a3 + 16), *(a3 + 24), &v97);
      *(v62 + 22) = 2082;
      v98 = a2;
      v68 = a2;
      sub_29D6A0CD0();
      v69 = sub_29D939DA8();
      v71 = sub_29D6C2364(v69, v70, &v97);

      *(v62 + 24) = v71;
      v15 = v90;
      _os_log_impl(&dword_29D677000, v60, v61, "[%{public}s] Failed to access the key %{public}s with error: %{public}s", v62, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v63, -1, -1);
      MEMORY[0x29ED6BE30](v62, -1, -1);

      v72 = v96;
      v73 = v57;
    }

    else
    {

      v73 = v57;
      v72 = v55;
    }

    v56(v73, v72);
    *v15 = a2;
    swift_storeEnumTagMultiPayload();
    v77 = a2;
    v94(v15);
  }

  else
  {
    v74 = v87;
    sub_29D6A0A20(v88, v87);
    v76 = v89;
    v75 = v90;
    if ((*(v89 + 48))(v74, 1, v90) != 1)
    {
      v79 = v85;
      (*(v76 + 32))(v85, v74, v75);
      v80 = *(a3 + 48);
      (*(a3 + 40))(v79);
      swift_storeEnumTagMultiPayload();
      v94(v15);
      sub_29D819988(v15);
      return (*(v76 + 8))(v79, v75);
    }

    sub_29D819E6C(v74, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
    type metadata accessor for ElectrocardiogramUpdateAvailability.FeedItemState(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v94(v15);
  }

  return sub_29D819988(v15);
}

uint64_t sub_29D815944(uint64_t a1, uint64_t a2, void *a3)
{
  sub_29D8196C0(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v10 = &v17 - v9;
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  if (a2)
  {
    sub_29D933998();
    v13 = sub_29D9339F8();
    (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
  }

  else
  {
    v14 = sub_29D9339F8();
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  }

  v15 = a3;
  v12(v10, a3);

  return sub_29D819E6C(v10, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
}

uint64_t sub_29D815AC8(uint64_t a1)
{
  v2 = v1;
  v68[1] = *MEMORY[0x29EDCA608];
  v63 = *v1;
  v4 = sub_29D937898();
  v65 = *(v4 - 8);
  v66 = v4;
  v5 = *(v65 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v4, v6);
  v64 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = v62 - v10;
  sub_29D8196C0(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v62[1] = v12;
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x2A1C7C4A8](v12, v14);
  v17 = v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x2A1C7C4A8](v15, v18);
  v21 = v62 - v20;
  MEMORY[0x2A1C7C4A8](v19, v22);
  v24 = v62 - v23;
  v25 = [objc_opt_self() heartRhythmDefaultsDomainWithHealthStore_];
  sub_29D6A0A20(a1, v24);
  v26 = sub_29D9339F8();
  v27 = *(v26 - 8);
  v28 = 0;
  if ((*(v27 + 48))(v24, 1, v26) != 1)
  {
    v28 = sub_29D933958();
    (*(v27 + 8))(v24, v26);
  }

  v29 = v2[2];
  v30 = v2[3];
  v31 = sub_29D939D28();
  v67 = 0;
  v32 = [v25 setDate:v28 forKey:v31 error:&v67];

  if (v32)
  {
    v33 = v67;
    sub_29D934D28();
    sub_29D6A0A20(a1, v21);
    v34 = sub_29D937878();
    v35 = sub_29D93A2A8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v68[0] = v37;
      *v36 = 136446466;
      v67 = v63;
      swift_getMetatypeMetadata();
      v38 = sub_29D939DA8();
      v40 = sub_29D6C2364(v38, v39, v68);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2082;
      sub_29D6A0A20(v21, v17);
      v41 = sub_29D939DA8();
      v43 = v42;
      sub_29D819E6C(v21, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
      v44 = sub_29D6C2364(v41, v43, v68);

      *(v36 + 14) = v44;
      _os_log_impl(&dword_29D677000, v34, v35, "[%{public}s]: Successfully saved date of %{public}s", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v37, -1, -1);
      MEMORY[0x29ED6BE30](v36, -1, -1);
    }

    else
    {

      sub_29D819E6C(v21, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
    }

    result = (*(v65 + 8))(v11, v66);
  }

  else
  {
    v45 = v67;
    v46 = sub_29D933598();

    swift_willThrow();
    v47 = v64;
    sub_29D934D28();
    v48 = v46;
    v49 = sub_29D937878();
    v50 = sub_29D93A288();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v68[0] = v52;
      *v51 = 136446466;
      v67 = v63;
      swift_getMetatypeMetadata();
      v53 = sub_29D939DA8();
      v55 = sub_29D6C2364(v53, v54, v68);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2082;
      v67 = v46;
      v56 = v46;
      sub_29D6A0CD0();
      v57 = sub_29D939DA8();
      v59 = sub_29D6C2364(v57, v58, v68);

      *(v51 + 14) = v59;
      _os_log_impl(&dword_29D677000, v49, v50, "[%{public}s]: Failed to save date with error: %{public}s", v51, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v52, -1, -1);
      MEMORY[0x29ED6BE30](v51, -1, -1);
    }

    else
    {
    }

    result = (*(v65 + 8))(v47, v66);
  }

  v61 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29D8160F8@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = *v1;
  v3 = sub_29D937898();
  v40 = *(v3 - 8);
  v41 = v3;
  v4 = *(v40 + 64);
  v6 = MEMORY[0x2A1C7C4A8](v3, v5);
  MEMORY[0x2A1C7C4A8](v6, v7);
  v9 = &v38 - v8;
  sub_29D8196C0(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x2A1C7C4A8](v10, v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v13, v16);
  v19 = &v38 - v18;
  MEMORY[0x2A1C7C4A8](v17, v20);
  v22 = &v38 - v21;
  v23 = [objc_opt_self() heartRhythmDefaultsDomainWithHealthStore_];
  v24 = v1[2];
  v25 = v1[3];
  sub_29D93A318();

  sub_29D934D28();
  sub_29D6A0A20(v22, v19);
  v26 = sub_29D937878();
  v27 = sub_29D93A2A8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v43[0] = v39;
    *v28 = 136446466;
    v43[2] = v2;
    swift_getMetatypeMetadata();
    v29 = sub_29D939DA8();
    v31 = sub_29D6C2364(v29, v30, v43);

    *(v28 + 4) = v31;
    *(v28 + 12) = 2082;
    sub_29D6A0A20(v19, v15);
    v32 = sub_29D939DA8();
    v34 = v33;
    sub_29D819E6C(v19, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
    v35 = sub_29D6C2364(v32, v34, v43);

    *(v28 + 14) = v35;
    _os_log_impl(&dword_29D677000, v26, v27, "[%{public}s]: Successfully fetched date of %{public}s", v28, 0x16u);
    v36 = v39;
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v36, -1, -1);
    MEMORY[0x29ED6BE30](v28, -1, -1);
  }

  else
  {

    sub_29D819E6C(v19, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
  }

  (*(v40 + 8))(v9, v41);
  return sub_29D6B1204(v22, v42);
}

uint64_t sub_29D816674()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_29D8166BC()
{
  v1 = v0;
  sub_29D819EDC();
  v27 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D819F9C();
  v9 = *(v8 - 8);
  v28 = v8;
  v29 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *MEMORY[0x29EDC52A8];
  v15 = sub_29D939D68();
  v17 = v16;
  v18 = *(v1 + 16);
  type metadata accessor for ElectrocardiogramUpdateAvailability.FeedItemUpdateDate();
  v19 = swift_allocObject();
  v19[2] = v15;
  v19[3] = v17;
  v19[4] = v18;
  v19[5] = sub_29D816FF0;
  v19[6] = 0;
  v20 = v18;
  v21 = sub_29D814DAC();

  v30 = v21;

  sub_29D938228();
  v22 = MEMORY[0x29EDB89F8];
  sub_29D8198A8(0, &qword_2A1A24AB8, MEMORY[0x29EDB89F8]);
  type metadata accessor for ElectrocardiogramUpdateAvailability.FeedItemState(0);
  sub_29D819920(&qword_2A1A24AC0, &qword_2A1A24AB8, v22);
  sub_29D938508();

  sub_29D938228();
  sub_29D81A0D0(0, &qword_2A1A24A98, MEMORY[0x29EDB89F8]);
  sub_29D819858(&qword_2A1A24B30, sub_29D819EDC);
  sub_29D819C90();
  v23 = v27;
  sub_29D938508();
  (*(v3 + 8))(v7, v23);
  sub_29D819858(&qword_2A1A24B20, sub_29D819F9C);
  v24 = v28;
  v25 = sub_29D938418();
  (*(v29 + 8))(v13, v24);
  return v25;
}

uint64_t sub_29D816A40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v36 = a2;
  v37 = a3;
  sub_29D8196C0(0, &qword_2A1A24A60, type metadata accessor for ElectrocardiogramUpdateAvailability.FeedItemState, MEMORY[0x29EDB8AB0]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v4, v8);
  v10 = &v36 - v9;
  sub_29D8198A8(0, &unk_2A1A24840, MEMORY[0x29EDB8B18]);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v11, v15);
  v17 = &v36 - v16;
  updated = type metadata accessor for ElectrocardiogramUpdateAvailability.FeedItemState(0);
  v19 = *(*(updated - 8) + 64);
  v21 = MEMORY[0x2A1C7C4A8](updated, v20);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21, v24);
  v26 = &v36 - v25;
  sub_29D81A1B4(a1, &v36 - v25);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_29D81A1B4(a1, v23);
    sub_29D938338();
    sub_29D6A0CD0();
    sub_29D938318();
    (*(v6 + 8))(v10, v5);
    sub_29D819920(&qword_2A17B5C20, &unk_2A1A24840, MEMORY[0x29EDB8B18]);
    v27 = sub_29D938418();
    (*(v13 + 8))(v17, v12);
  }

  else
  {
    v28 = *MEMORY[0x29EDC52A0];
    v29 = sub_29D939D68();
    v31 = v30;
    v32 = *(v36 + 16);
    type metadata accessor for ElectrocardiogramUpdateAvailability.FeedItemUpdateDate();
    v33 = swift_allocObject();
    v33[2] = v29;
    v33[3] = v31;
    v33[4] = v32;
    v33[5] = sub_29D816FF8;
    v33[6] = 0;
    v34 = v32;
    v27 = sub_29D814DAC();
  }

  *v37 = v27;
  return sub_29D81A218(v26);
}

uint64_t sub_29D816D88@<X0>(uint64_t *a1@<X8>)
{
  sub_29D81A07C(0, &qword_2A1A24A48, MEMORY[0x29EDB8AB0]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v2, v6);
  v8 = &v18[-v7];
  sub_29D81A0D0(0, &qword_2A1A24830, MEMORY[0x29EDB8B18]);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v9, v13);
  v15 = &v18[-v14];
  v18[15] = sub_29D814B98();
  sub_29D938338();
  sub_29D6A0CD0();
  sub_29D938318();
  (*(v4 + 8))(v8, v3);
  sub_29D81A140();
  v16 = sub_29D938418();
  result = (*(v11 + 8))(v15, v10);
  *a1 = v16;
  return result;
}

uint64_t sub_29D816F7C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D9383C8();

  return v1;
}

uint64_t sub_29D817000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29D9339F8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  type metadata accessor for ElectrocardiogramUpdateAvailability.FeedItemState(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_29D817090()
{
  sub_29D8196C0(0, &unk_2A1A248F0, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8, v2);
  v63 = &v53 - v3;
  sub_29D819520(0, &qword_2A1A222B0, MEMORY[0x29EDB8AF0]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v4, v8);
  v10 = &v53 - v9;
  sub_29D819A00();
  v53 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D819AFC();
  v18 = *(v17 - 8);
  v54 = v17;
  v55 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x2A1C7C4A8](v17, v20);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D819BB8();
  v24 = *(v23 - 8);
  v56 = v23;
  v57 = v24;
  v25 = *(v24 + 64);
  MEMORY[0x2A1C7C4A8](v23, v26);
  v28 = &v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D819D04();
  v61 = v29;
  v59 = *(v29 - 8);
  v30 = *(v59 + 64);
  MEMORY[0x2A1C7C4A8](v29, v31);
  v33 = &v53 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D819DA0();
  v62 = v34;
  v60 = *(v34 - 8);
  v35 = *(v60 + 64);
  MEMORY[0x2A1C7C4A8](v34, v36);
  v58 = &v53 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_29D819520(0, &qword_2A1A22298, MEMORY[0x29EDB8B00]);
  sub_29D9383A8();
  swift_endAccess();
  sub_29D819A88();
  sub_29D938428();
  (*(v6 + 8))(v10, v5);
  sub_29D6A0CD0();
  sub_29D819858(&qword_2A1A226F0, sub_29D819A00);
  v38 = v53;
  sub_29D938578();
  v39 = v16;
  v40 = v33;
  (*(v12 + 8))(v39, v38);
  v64 = sub_29D8166BC();
  sub_29D81A0D0(0, &qword_2A1A24A98, MEMORY[0x29EDB89F8]);
  sub_29D819858(&qword_2A1A226A0, sub_29D819AFC);
  sub_29D819C90();
  v41 = v54;
  sub_29D938458();

  (*(v55 + 8))(v22, v41);
  sub_29D819858(&qword_2A1A22760, sub_29D819BB8);
  v42 = v56;
  sub_29D938468();
  v43 = (*(v57 + 8))(v28, v42);
  v44 = MEMORY[0x29ED6B670](v43);
  if (!v44)
  {
    sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
    v44 = sub_29D93A468();
  }

  v64 = v44;
  v45 = v44;
  v46 = sub_29D93A448();
  v47 = v63;
  (*(*(v46 - 8) + 56))(v63, 1, 1, v46);
  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  sub_29D819858(&qword_2A1A22570, sub_29D819D04);
  sub_29D706380();
  v48 = v58;
  v49 = v61;
  sub_29D938538();
  sub_29D819E6C(v47, &unk_2A1A248F0, MEMORY[0x29EDCA298]);

  (*(v59 + 8))(v40, v49);
  sub_29D819858(&qword_2A1A22458, sub_29D819DA0);
  v50 = v62;
  v51 = sub_29D938418();
  (*(v60 + 8))(v48, v50);
  return v51;
}

id sub_29D81784C(uint64_t a1, uint64_t a2)
{
  v37[1] = a2;
  v3 = sub_29D937178();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D9371A8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29D937158();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x2A1C7C4A8](v15, v18);
  v20 = v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v14, a1, v9);
  if ((*(v10 + 88))(v14, v9) == *MEMORY[0x29EDC2D70])
  {
    (*(v10 + 96))(v14, v9);
    (*(v16 + 32))(v20, v14, v15);
    sub_29D937108();
    v21 = *MEMORY[0x29EDBA598];
    v22 = sub_29D937188();
    (*(v4 + 8))(v8, v3);
    v23 = [v22 areAllRequirementsSatisfied];

    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v24 = sub_29D937898();
    sub_29D69C6C0(v24, qword_2A1A2C008);

    v25 = sub_29D937878();
    v26 = sub_29D93A2A8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v38 = v28;
      *v27 = 136446722;
      sub_29D8196C0(0, &qword_2A17B5C10, type metadata accessor for ElectrocardiogramUpdateAvailability, MEMORY[0x29EDC9C68]);
      v37[2] = v29;
      sub_29D819724();
      v30 = sub_29D939DA8();
      v32 = sub_29D6C2364(v30, v31, &v38);

      *(v27 + 4) = v32;
      *(v27 + 12) = 2082;
      *(v27 + 14) = sub_29D6C2364(0xD000000000000023, 0x800000029D9657B0, &v38);
      *(v27 + 22) = 2082;
      if (v23)
      {
        v33 = 1702195828;
      }

      else
      {
        v33 = 0x65736C6166;
      }

      if (v23)
      {
        v34 = 0xE400000000000000;
      }

      else
      {
        v34 = 0xE500000000000000;
      }

      v35 = sub_29D6C2364(v33, v34, &v38);

      *(v27 + 24) = v35;
      _os_log_impl(&dword_29D677000, v25, v26, "[%{public}s.%{public}s] User onboarded. (shouldAdvertise: %{public}s).", v27, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v28, -1, -1);
      MEMORY[0x29ED6BE30](v27, -1, -1);
    }

    (*(v16 + 8))(v20, v15);
  }

  else
  {
    (*(v10 + 8))(v14, v9);
    return 0;
  }

  return v23;
}

uint64_t sub_29D817D04()
{
  sub_29D8196C0(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v5 = &v15[-v4];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D9383C8();

  if (v16 != 2 && (v16 & 1) != 0)
  {
    v7 = *MEMORY[0x29EDC52A0];
    v8 = sub_29D939D68();
    v10 = v9;
    v11 = *(v0 + 16);
    type metadata accessor for ElectrocardiogramUpdateAvailability.FeedItemUpdateDate();
    inited = swift_initStackObject();
    inited[2] = v8;
    inited[3] = v10;
    inited[4] = v11;
    inited[5] = sub_29D816FF8;
    inited[6] = 0;
    v13 = v11;
    sub_29D8160F8(v5);

    v14 = sub_29D9339F8();
    if ((*(*(v14 - 8) + 48))(v5, 1, v14) == 1)
    {
      sub_29D817ED4();
    }

    return sub_29D819E6C(v5, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
  }

  return result;
}

uint64_t sub_29D817ED4()
{
  v1 = MEMORY[0x29EDB9BC8];
  sub_29D8196C0(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v6 = &v22[-v5];
  v7 = *MEMORY[0x29EDC52A0];
  v8 = sub_29D939D68();
  v10 = v9;
  v11 = *(v0 + 16);
  type metadata accessor for ElectrocardiogramUpdateAvailability.FeedItemUpdateDate();
  inited = swift_initStackObject();
  inited[2] = v8;
  inited[3] = v10;
  inited[4] = v11;
  inited[5] = sub_29D816FF8;
  inited[6] = 0;
  v13 = v11;
  sub_29D9339E8();
  v14 = sub_29D9339F8();
  v15 = *(*(v14 - 8) + 56);
  v15(v6, 0, 1, v14);
  sub_29D815AC8(v6);

  sub_29D819E6C(v6, &qword_2A1A25780, v1);
  v16 = *MEMORY[0x29EDC52A8];
  v17 = sub_29D939D68();
  v19 = v18;
  v20 = swift_initStackObject();
  v20[2] = v17;
  v20[3] = v19;
  v20[4] = v13;
  v20[5] = sub_29D816FF0;
  v20[6] = 0;
  v15(v6, 1, 1, v14);
  sub_29D815AC8(v6);

  return sub_29D819E6C(v6, &qword_2A1A25780, v1);
}

uint64_t sub_29D8180E0()
{
  v1 = MEMORY[0x29EDB9BC8];
  sub_29D8196C0(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v6 = &v22[-v5];
  v7 = *MEMORY[0x29EDC52A0];
  v8 = sub_29D939D68();
  v10 = v9;
  v11 = *(v0 + 16);
  type metadata accessor for ElectrocardiogramUpdateAvailability.FeedItemUpdateDate();
  inited = swift_initStackObject();
  inited[2] = v8;
  inited[3] = v10;
  inited[4] = v11;
  inited[5] = sub_29D816FF8;
  inited[6] = 0;
  v13 = sub_29D9339F8();
  v14 = *(*(v13 - 8) + 56);
  v14(v6, 1, 1, v13);
  v15 = v11;
  sub_29D815AC8(v6);

  sub_29D819E6C(v6, &qword_2A1A25780, v1);
  v16 = *MEMORY[0x29EDC52A8];
  v17 = sub_29D939D68();
  v19 = v18;
  v20 = swift_initStackObject();
  v20[2] = v17;
  v20[3] = v19;
  v20[4] = v15;
  v20[5] = sub_29D816FF0;
  v20[6] = 0;
  v14(v6, 1, 1, v13);
  sub_29D815AC8(v6);

  return sub_29D819E6C(v6, &qword_2A1A25780, v1);
}

uint64_t sub_29D8182E4()
{
  v28[1] = *v0;
  sub_29D6C3320(0, &qword_2A1A22330, MEMORY[0x29EDB8AC0]);
  v29 = *(v1 - 8);
  v30 = v1;
  v2 = *(v29 + 64);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v28[2] = v28 - v4;
  v5 = sub_29D937898();
  v33 = *(v5 - 8);
  v34 = v5;
  v6 = *(v33 + 64);
  MEMORY[0x2A1C7C4A8](v5, v7);
  sub_29D73C0A4();
  v31 = *(v8 - 8);
  v32 = v8;
  v9 = *(v31 + 64);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D9371A8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v0 + OBJC_IVAR____TtC5Heart35ElectrocardiogramUpdateAvailability_featureStatusManager);
  sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
  v20 = sub_29D937288();
  sub_29D937278();
  v35 = v20;
  sub_29D8196C0(0, &qword_2A1A21F50, MEMORY[0x29EDC2D78], MEMORY[0x29EDC9E90]);
  v21 = *(v14 + 72);
  v22 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_29D93DDB0;
  (*(v14 + 16))(v23 + v22, v18, v13);
  v24 = MEMORY[0x29EDB89F8];
  sub_29D6C3320(0, &qword_2A1A22410, MEMORY[0x29EDB89F8]);
  sub_29D6C3444(&qword_2A1A22420, &qword_2A1A22410, v24);
  sub_29D938518();

  sub_29D819858(&qword_2A1A226D0, sub_29D73C0A4);
  v25 = v32;
  v26 = sub_29D938418();

  (*(v31 + 8))(v12, v25);
  (*(v14 + 8))(v18, v13);
  return v26;
}

uint64_t sub_29D818954()
{
  v1 = OBJC_IVAR____TtC5Heart35ElectrocardiogramUpdateAvailability_context;
  v2 = sub_29D9341E8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC5Heart35ElectrocardiogramUpdateAvailability__isElectrocardiogramUpdateAvailable;
  sub_29D819520(0, &qword_2A1A22298, MEMORY[0x29EDB8B00]);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 12);
  v6 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

void sub_29D818A8C()
{
  v0 = sub_29D9341E8();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_29D819520(319, &qword_2A1A22298, MEMORY[0x29EDB8B00]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_29D818BC4()
{
  result = sub_29D9339F8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_29D818C24@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D9383C8();

  *a2 = v5;
  return result;
}

uint64_t sub_29D818CA4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_29D9383D8();
}

BOOL sub_29D818D18()
{
  v0 = sub_29D933CE8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8196C0(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v10 = &v24 - v9;
  v11 = sub_29D9339F8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x2A1C7C4A8](v11, v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15, v18);
  v20 = &v24 - v19;
  sub_29D933C88();
  sub_29D933C28();
  (*(v1 + 8))(v5, v0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_29D819E6C(v10, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
    return 1;
  }

  else
  {
    (*(v12 + 32))(v20, v10, v11);
    sub_29D9339E8();
    v22 = sub_29D9339B8();
    v23 = *(v12 + 8);
    v23(v17, v11);
    v23(v20, v11);
    return v22 == -1;
  }
}

uint64_t sub_29D818FD8(uint64_t a1, void *a2)
{
  v3 = v2;
  sub_29D819520(0, &qword_2A1A222B0, MEMORY[0x29EDB8AF0]);
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = *(v47 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v6, v8);
  v46 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v41 = &v40 - v12;
  sub_29D81959C();
  v14 = *(v13 - 8);
  v44 = v13;
  v45 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D819520(0, &qword_2A1A22298, MEMORY[0x29EDB8B00]);
  v20 = v19;
  v42 = v19;
  v21 = *(v19 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x2A1C7C4A8](v19, v23);
  v25 = &v40 - v24;
  v26 = OBJC_IVAR____TtC5Heart35ElectrocardiogramUpdateAvailability__isElectrocardiogramUpdateAvailable;
  LOBYTE(v49[0]) = 2;
  sub_29D81A07C(0, &unk_2A1A24950, MEMORY[0x29EDC9C68]);
  sub_29D938398();
  (*(v21 + 32))(v3 + v26, v25, v20);
  v43 = a1;
  sub_29D934188();
  sub_29D693E2C(v49, v49[3]);
  *(v3 + 16) = sub_29D934118();
  sub_29D69417C(v49);
  v27 = OBJC_IVAR____TtC5Heart35ElectrocardiogramUpdateAvailability_context;
  v28 = sub_29D9341E8();
  v29 = *(v28 - 8);
  (*(v29 + 16))(v3 + v27, a1, v28);
  *(v3 + OBJC_IVAR____TtC5Heart35ElectrocardiogramUpdateAvailability_featureStatusManager) = a2;
  v30 = a2;
  v49[0] = sub_29D8182E4();
  v31 = swift_allocObject();
  swift_weakInit();
  v32 = swift_allocObject();
  *(v32 + 16) = sub_29D819684;
  *(v32 + 24) = v31;
  v33 = MEMORY[0x29EDB89F8];
  sub_29D6C3320(0, &qword_2A1A22410, MEMORY[0x29EDB89F8]);
  sub_29D6C3444(&qword_2A1A22420, &qword_2A1A22410, v33);
  v34 = v18;
  sub_29D938468();

  swift_beginAccess();
  v35 = v41;
  sub_29D9383A8();
  swift_endAccess();
  sub_29D819858(&qword_2A1A225E8, sub_29D81959C);
  v36 = v44;
  sub_29D938598();
  (*(v45 + 8))(v34, v36);
  v37 = v47;
  v38 = v48;
  (*(v47 + 16))(v46, v35, v48);
  swift_beginAccess();
  sub_29D9383B8();
  swift_endAccess();
  (*(v29 + 8))(v43, v28);
  (*(v37 + 8))(v35, v38);
  return v3;
}

void sub_29D819520(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29D81A07C(255, &unk_2A1A24950, MEMORY[0x29EDC9C68]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29D81959C()
{
  if (!qword_2A1A225E0)
  {
    v0 = MEMORY[0x29EDB89F8];
    sub_29D6C3320(255, &qword_2A1A22410, MEMORY[0x29EDB89F8]);
    sub_29D81A07C(255, &unk_2A1A24950, MEMORY[0x29EDC9C68]);
    sub_29D6C3444(&qword_2A1A22420, &qword_2A1A22410, v0);
    v1 = sub_29D9380F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A225E0);
    }
  }
}

uint64_t sub_29D81968C@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result & 1;
  return result;
}

void sub_29D8196C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D819724()
{
  result = qword_2A17B5C18;
  if (!qword_2A17B5C18)
  {
    sub_29D8196C0(255, &qword_2A17B5C10, type metadata accessor for ElectrocardiogramUpdateAvailability, MEMORY[0x29EDC9C68]);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17B5C18);
  }

  return result;
}

void sub_29D81979C()
{
  if (!qword_2A1A24A08)
  {
    v0 = MEMORY[0x29EDB89F8];
    sub_29D8198A8(255, &qword_2A1A24AB8, MEMORY[0x29EDB89F8]);
    sub_29D819920(&qword_2A1A24AC0, &qword_2A1A24AB8, v0);
    v1 = sub_29D938388();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A24A08);
    }
  }
}

uint64_t sub_29D819858(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D8198A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    updated = type metadata accessor for ElectrocardiogramUpdateAvailability.FeedItemState(255);
    v7 = sub_29D6A0CD0();
    v8 = a3(a1, updated, v7, MEMORY[0x29EDC9F20]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29D819920(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_29D8198A8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D819970(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D819988(uint64_t a1)
{
  sub_29D8198A8(0, &unk_2A1A24820, MEMORY[0x29EDCA058]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D819A00()
{
  if (!qword_2A1A226E8)
  {
    sub_29D819520(255, &qword_2A1A222B0, MEMORY[0x29EDB8AF0]);
    sub_29D819A88();
    v0 = sub_29D938078();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A226E8);
    }
  }
}

unint64_t sub_29D819A88()
{
  result = qword_2A1A222B8;
  if (!qword_2A1A222B8)
  {
    sub_29D819520(255, &qword_2A1A222B0, MEMORY[0x29EDB8AF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A222B8);
  }

  return result;
}

void sub_29D819AFC()
{
  if (!qword_2A1A22698)
  {
    sub_29D819A00();
    sub_29D6A0CD0();
    sub_29D819858(&qword_2A1A226F0, sub_29D819A00);
    v0 = sub_29D9380B8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A22698);
    }
  }
}

void sub_29D819BB8()
{
  if (!qword_2A1A22758)
  {
    sub_29D819AFC();
    sub_29D81A0D0(255, &qword_2A1A24A98, MEMORY[0x29EDB89F8]);
    sub_29D819858(&qword_2A1A226A0, sub_29D819AFC);
    sub_29D819C90();
    v0 = sub_29D938058();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A22758);
    }
  }
}

unint64_t sub_29D819C90()
{
  result = qword_2A1A24AA0;
  if (!qword_2A1A24AA0)
  {
    sub_29D81A0D0(255, &qword_2A1A24A98, MEMORY[0x29EDB89F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A24AA0);
  }

  return result;
}

void sub_29D819D04()
{
  if (!qword_2A1A22568)
  {
    sub_29D819BB8();
    sub_29D819858(&qword_2A1A22760, sub_29D819BB8);
    v0 = sub_29D9380F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A22568);
    }
  }
}

void sub_29D819DA0()
{
  if (!qword_2A1A22450)
  {
    sub_29D819D04();
    sub_29D69567C(255, &qword_2A1A248D0, 0x29EDCA548);
    sub_29D819858(&qword_2A1A22570, sub_29D819D04);
    sub_29D706380();
    v0 = sub_29D9381E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A22450);
    }
  }
}

uint64_t sub_29D819E6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D8196C0(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29D819EDC()
{
  if (!qword_2A1A24B28)
  {
    v0 = MEMORY[0x29EDB89F8];
    sub_29D8198A8(255, &qword_2A1A24AB8, MEMORY[0x29EDB89F8]);
    sub_29D819920(&qword_2A1A24AC0, &qword_2A1A24AB8, v0);
    v1 = sub_29D938198();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A24B28);
    }
  }
}

void sub_29D819F9C()
{
  if (!qword_2A1A24B18)
  {
    sub_29D81A0D0(255, &qword_2A1A24A98, MEMORY[0x29EDB89F8]);
    sub_29D819EDC();
    sub_29D819C90();
    sub_29D819858(&qword_2A1A24B30, sub_29D819EDC);
    v0 = sub_29D938198();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A24B18);
    }
  }
}

void sub_29D81A07C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
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

void sub_29D81A0D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, unint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_29D6A0CD0();
    v7 = a3(a1, MEMORY[0x29EDC9A98], v6, MEMORY[0x29EDC9F20]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29D81A140()
{
  result = qword_2A1A24838;
  if (!qword_2A1A24838)
  {
    sub_29D81A0D0(255, &qword_2A1A24830, MEMORY[0x29EDB8B18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A24838);
  }

  return result;
}

uint64_t sub_29D81A1B4(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for ElectrocardiogramUpdateAvailability.FeedItemState(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_29D81A218(uint64_t a1)
{
  updated = type metadata accessor for ElectrocardiogramUpdateAvailability.FeedItemState(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

uint64_t sub_29D81A274()
{
  v0 = sub_29D934148();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D934178();
  sub_29D6FD494(v6, qword_2A1A2BF88);
  sub_29D69C6C0(v6, qword_2A1A2BF88);
  sub_29D933FE8();
  sub_29D76FB80(0, &qword_2A1A24898, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v7 = sub_29D933F58();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_29D93DDB0;
  (*(v8 + 104))(v11 + v10, *MEMORY[0x29EDC3790], v7);
  (*(v1 + 104))(v5, *MEMORY[0x29EDC3898], v0);
  return sub_29D934158();
}

void *sub_29D81A47C(__int16 a1, uint64_t a2)
{
  v3 = v2;
  v28 = a2;
  v26 = *v2;
  v5 = sub_29D9341E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v9 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6CE508();
  v27 = v10;
  v25 = *(v10 - 8);
  v11 = *(v25 + 64);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC5Heart30AFibFeaturesPromotionGenerator_domain;
  if (qword_2A1A24790 != -1)
  {
    swift_once();
  }

  v16 = sub_29D934178();
  v17 = sub_29D69C6C0(v16, qword_2A1A2BF88);
  (*(*(v16 - 8) + 16))(v3 + v15, v17, v16);
  *(v3 + OBJC_IVAR____TtC5Heart30AFibFeaturesPromotionGenerator_result) = a1;
  v18 = v28;
  (*(v6 + 16))(&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v5);
  v19 = (*(v6 + 80) + 18) & ~*(v6 + 80);
  v20 = (v7 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  (*(v6 + 32))(v21 + v19, v9, v5);
  *(v21 + v20) = v26;
  sub_29D6CE59C();
  sub_29D81C1C4(&qword_2A1A24AB0, sub_29D6CE59C);
  sub_29D938378();
  sub_29D81C1C4(&qword_2A1A24A00, sub_29D6CE508);
  v22 = v27;
  v23 = sub_29D938418();
  (*(v6 + 8))(v18, v5);
  (*(v25 + 8))(v14, v22);
  v3[2] = v23;
  return v3;
}

uint64_t sub_29D81A7E0@<X0>(int a1@<W0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  sub_29D6D09E0(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v6, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D81A9E0(a1);
  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4();
  sub_29D69C6C0(v14, qword_2A1A2BF58);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = a2;
  v19 = 0;
  sub_29D935E88();
  sub_29D9371C8();

  v19 = v13;
  sub_29D6D07B0();
  sub_29D938338();
  sub_29D81C1C4(&qword_2A1A24A58, sub_29D6D09E0);
  v16 = sub_29D938418();
  result = (*(v8 + 8))(v12, v7);
  *a3 = v16;
  return result;
}

uint64_t sub_29D81A9E0(int a1)
{
  v63 = a1;
  v1 = sub_29D9340F8();
  v66 = *(v1 - 8);
  v2 = *(v66 + 64);
  v4 = MEMORY[0x2A1C7C4A8](v1, v3);
  v62 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = v56 - v7;
  sub_29D6C36D8(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x2A1C7C4A8](v9, v12);
  v61 = v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x2A1C7C4A8](v13, v15);
  v60 = v56 - v17;
  v19 = MEMORY[0x2A1C7C4A8](v16, v18);
  v21 = v56 - v20;
  v23 = MEMORY[0x2A1C7C4A8](v19, v22);
  v64 = v56 - v24;
  MEMORY[0x2A1C7C4A8](v23, v25);
  v27 = v56 - v26;
  sub_29D76FB80(0, &qword_2A1A24890, sub_29D6C36D8, MEMORY[0x29EDC9E90]);
  v28 = *(v10 + 80);
  v29 = (v28 + 32) & ~v28;
  v58 = *(v10 + 72);
  v59 = v30;
  v56[1] = v28;
  v31 = swift_allocObject();
  sub_29D934188();
  sub_29D693E2C(v68, v68[3]);
  v67 = sub_29D81C138(0);
  sub_29D81C158(0, &qword_2A1A23DB8, sub_29D81C138);
  sub_29D939DA8();
  sub_29D934128();
  v32 = v66;

  sub_29D69417C(v68);
  sub_29D6D0B8C(v31 + v29, v27);
  sub_29D6C37D4(v27, v21);
  v57 = *(v32 + 48);
  if (v57(v21, 1, v1) == 1)
  {
    sub_29D76FA84(v21, sub_29D6C36D8);
  }

  else
  {
    v33 = *(v32 + 32);
    v56[0] = v8;
    v33(v8, v21, v1);
    v34 = MEMORY[0x29EDCA190];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_29D68F864(0, *(v34 + 2) + 1, 1, v34);
    }

    v36 = *(v34 + 2);
    v35 = *(v34 + 3);
    if (v36 >= v35 >> 1)
    {
      v34 = sub_29D68F864(v35 > 1, v36 + 1, 1, v34);
    }

    *(v34 + 2) = v36 + 1;
    v33(&v34[((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v36], v56[0], v1);
  }

  v37 = v63;
  swift_setDeallocating();
  sub_29D76FA84(v31 + v29, sub_29D6C36D8);
  swift_deallocClassInstance();
  v38 = v64;
  if (v37 > 1)
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v41, qword_2A1A2BF58);
    *(swift_allocObject() + 16) = v65;
    v68[0] = 0;
    sub_29D9371C8();

    v40 = 1;
  }

  else
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v39, qword_2A1A2BF58);
    *(swift_allocObject() + 16) = v65;
    v68[0] = 0;
    sub_29D9371C8();

    sub_29D81B574(v63, v38);
    v40 = 0;
  }

  v42 = v66;
  (*(v66 + 56))(v38, v40, 1, v1);
  v43 = swift_allocObject();
  sub_29D6D0B8C(v38, v43 + v29);
  v44 = v60;
  sub_29D6D0B8C(v43 + v29, v60);
  v45 = v44;
  v46 = v61;
  sub_29D6C37D4(v45, v61);
  if (v57(v46, 1, v1) == 1)
  {
    sub_29D76FA84(v46, sub_29D6C36D8);
  }

  else
  {
    v47 = *(v42 + 32);
    v47(v62, v46, v1);
    v48 = MEMORY[0x29EDCA190];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = sub_29D68F864(0, *(v48 + 2) + 1, 1, v48);
    }

    v50 = *(v48 + 2);
    v49 = *(v48 + 3);
    if (v50 >= v49 >> 1)
    {
      v48 = sub_29D68F864(v49 > 1, v50 + 1, 1, v48);
    }

    *(v48 + 2) = v50 + 1;
    v47(&v48[((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v50], v62, v1);
    v38 = v64;
  }

  swift_setDeallocating();
  sub_29D76FA84(v43 + v29, sub_29D6C36D8);
  swift_deallocClassInstance();
  v51 = sub_29D939F58();

  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4();
  sub_29D69C6C0(v52, qword_2A1A2BF58);
  v53 = swift_allocObject();
  v54 = v65;
  *(v53 + 16) = v51;
  *(v53 + 24) = v54;
  v68[0] = 0;
  sub_29D935E88();
  sub_29D9371C8();

  sub_29D76FA84(v38, sub_29D6C36D8);
  return v51;
}

uint64_t sub_29D81B2E8(uint64_t a1)
{
  sub_29D93AA18();

  v2 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v2);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000015, 0x800000029D965810);
  MEMORY[0x29ED6A240](0xD000000000000015, 0x800000029D965830);
  v3 = MEMORY[0x29ED6A340](a1, MEMORY[0x29EDC3A38]);
  MEMORY[0x29ED6A240](v3);

  return 91;
}

uint64_t sub_29D81B3DC()
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000010, 0x800000029D95FF00);
  MEMORY[0x29ED6A240](0xD000000000000033, 0x800000029D965980);
  return 0;
}

uint64_t sub_29D81B4AC()
{
  sub_29D93AA18();

  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000010, 0x800000029D95FF00);
  MEMORY[0x29ED6A240](0xD00000000000002BLL, 0x800000029D965900);
  return 91;
}

uint64_t sub_29D81B574@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v49 = a1;
  v54 = a2;
  v2 = sub_29D9342D8();
  v42 = *(v2 - 8);
  v43 = v2;
  v3 = *(v42 + 64);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v41 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D76F8C0(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v51 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D9342A8();
  v52 = *(v10 - 8);
  v53 = v10;
  v11 = *(v52 + 64);
  v13 = MEMORY[0x2A1C7C4A8](v10, v12);
  v39 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v40 = &v38 - v16;
  v17 = sub_29D934798();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v17 - 8, v19);
  v50 = sub_29D934A18();
  v48 = *(v50 - 8);
  v20 = *(v48 + 64);
  MEMORY[0x2A1C7C4A8](v50, v21);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_29D81C138(0);
  v55 = v46;
  sub_29D81C158(0, &qword_2A1A23DB8, sub_29D81C138);
  v24 = sub_29D939DA8();
  v44 = v25;
  v45 = v24;
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v47 = v23;
  v26 = qword_2A1A2C038;
  sub_29D934788();
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9334A8();
  sub_29D9334A8();
  v27 = v47;
  sub_29D9349E8();
  v55 = v46;
  sub_29D939DA8();
  v28 = sub_29D933FE8();
  if (MEMORY[0x29EDCA190] >> 62)
  {
    if (sub_29D93A928())
    {
      sub_29D872AC4(MEMORY[0x29EDCA190]);
    }
  }

  type metadata accessor for AFibFeaturesPromotionTileActionHandler();
  sub_29D81C1C4(&qword_2A17B5C28, type metadata accessor for AFibFeaturesPromotionTileActionHandler);
  sub_29D934038();

  if (!v49)
  {
    v29 = MEMORY[0x29EDC3908];
    goto LABEL_10;
  }

  if (v49 == 1)
  {
    v29 = MEMORY[0x29EDC3900];
LABEL_10:
    v30 = v51;
    v31 = v52;
    v32 = v53;
    (*(v52 + 104))(v51, *v29, v53);
    (*(v31 + 56))(v30, 0, 1, v32);
    v33 = v40;
    (*(v31 + 32))(v40, v30, v32);
    (*(v31 + 16))(v39, v33, v32);
    v34 = v41;
    sub_29D9342E8();
    v35 = v43;
    sub_29D934068();
    (*(v42 + 8))(v34, v35);
    (*(v31 + 8))(v33, v32);
    return (*(v48 + 8))(v27, v50);
  }

  v37 = v51;
  (*(v52 + 56))(v51, 1, 1, v53);
  (*(v48 + 8))(v27, v50);
  return sub_29D76FA84(v37, sub_29D76F8C0);
}

uint64_t sub_29D81BC88(uint64_t a1)
{
  sub_29D93AA18();
  v2 = sub_29D93AF08();

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000010, 0x800000029D95FF00);
  MEMORY[0x29ED6A240](0xD00000000000002ALL, 0x800000029D965930);
  v3 = MEMORY[0x29ED6A340](a1, MEMORY[0x29EDC3A38]);
  MEMORY[0x29ED6A240](v3);

  MEMORY[0x29ED6A240](41, 0xE100000000000000);
  return v2;
}

uint64_t sub_29D81BD80()
{
  sub_29D93AA18();
  v0 = sub_29D93AF08();

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000010, 0x800000029D95FF00);
  MEMORY[0x29ED6A240](0xD00000000000001ELL, 0x800000029D965960);
  swift_getErrorValue();
  v1 = sub_29D93ADF8();
  MEMORY[0x29ED6A240](v1);

  return v0;
}

uint64_t sub_29D81BE74()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC5Heart30AFibFeaturesPromotionGenerator_domain;
  v3 = sub_29D934178();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AFibFeaturesPromotionGenerator()
{
  result = qword_2A1A23E78;
  if (!qword_2A1A23E78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D81BF6C()
{
  result = sub_29D934178();
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

uint64_t sub_29D81C014@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Heart30AFibFeaturesPromotionGenerator_domain;
  v5 = sub_29D934178();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29D81C090@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_29D9341E8() - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 18) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *(v1 + 16);

  return sub_29D81A7E0(v5, v4, a1);
}

uint64_t sub_29D81C158(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_29D81C1AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_29D81BD80();
}

uint64_t sub_29D81C1C4(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_29D81C20C(int a1)
{
  v3 = sub_29D933AA8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  v73 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D939D18();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v11 = MEMORY[0x2A1C7C4A8](v7, v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v54 - v15;
  v61 = sub_29D935398();
  v65 = *(v61 - 8);
  v17 = *(v65 + 64);
  v19 = MEMORY[0x2A1C7C4A8](v61, v18);
  v60 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x2A1C7C4A8](v19, v21);
  v71 = &v54 - v23;
  MEMORY[0x2A1C7C4A8](v22, v24);
  v70 = &v54 - v25;
  v63 = v1;
  v62 = a1;
  *(v1 + qword_2A17B5C30) = a1;
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v26 = qword_2A1A2BE98;
  v27 = unk_2A1A2BEA0;
  v28 = qword_2A1A2BEA8;
  v72 = v8[2];
  v72(v13, v16, v7);
  v68 = v8 + 2;
  sub_29D935E88();
  v29 = v26;
  v66 = v26;
  v30 = v29;
  sub_29D933A98();
  v67 = v27;
  v59 = sub_29D939D98();
  v55 = v31;
  v69 = v8[1];
  v69(v16, v7);
  sub_29D939D08();
  v72(v13, v16, v7);
  sub_29D935E88();
  v54 = v30;
  sub_29D933A98();
  sub_29D939D98();
  v64 = v8 + 1;
  v32 = v69;
  v69(v16, v7);
  sub_29D935388();
  sub_29D939D08();
  v33 = v72;
  v72(v13, v16, v7);
  sub_29D935E88();
  v54 = v54;
  sub_29D933A98();
  v59 = sub_29D939D98();
  v55 = v34;
  v32(v16, v7);
  sub_29D939D08();
  v33(v13, v16, v7);
  sub_29D935E88();
  v54 = v54;
  sub_29D933A98();
  sub_29D939D98();
  v32(v16, v7);
  sub_29D935388();
  sub_29D939D08();
  v35 = v72;
  v72(v13, v16, v7);
  sub_29D935E88();
  v59 = v54;
  sub_29D933A98();
  v36 = sub_29D939D98();
  v54 = v37;
  v55 = v36;
  v38 = v69;
  v69(v16, v7);
  sub_29D939D08();
  v56 = v7;
  v57 = v13;
  v35(v13, v16, v7);
  v58 = v28;
  sub_29D935E88();
  v59 = v59;
  sub_29D933A98();
  sub_29D939D98();
  v38(v16, v7);
  v39 = v60;
  sub_29D935388();
  sub_29D81D8D0(0, &qword_2A17B42F8, MEMORY[0x29EDC1F80], MEMORY[0x29EDC9E90]);
  v40 = v65;
  v41 = *(v65 + 72);
  v42 = (*(v65 + 80) + 32) & ~*(v65 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_29D943EA0;
  v44 = v43 + v42;
  v45 = *(v40 + 16);
  v46 = v61;
  v45(v44, v70, v61);
  v45(v44 + v41, v71, v46);
  v45(v44 + 2 * v41, v39, v46);
  sub_29D939D08();
  v47 = v56;
  v72(v57, v16, v56);
  sub_29D935E88();
  v48 = v59;
  sub_29D933A98();
  sub_29D939D98();
  v69(v16, v47);
  if (v62)
  {
    v49 = *(v43 + 16);
    v50 = sub_29D936B68();
    [v50 setAdditionalSafeAreaInsets_];
    v51 = [v50 navigationItem];
    [v51 setRightBarButtonItem_];
  }

  else
  {
    v50 = sub_29D936B68();
  }

  v52 = *(v65 + 8);
  v52(v39, v46);
  v52(v71, v46);
  v52(v70, v46);
  return v50;
}

uint64_t sub_29D81CBA0(void (*a1)(char *, char *, uint64_t))
{
  v61 = a1;
  v58 = *v1;
  v59 = v1;
  v2 = sub_29D933CC8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D81D8D0(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v60 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v56 - v14;
  v16 = sub_29D9339F8();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v20 = MEMORY[0x2A1C7C4A8](v16, v19);
  v57 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20, v22);
  v62 = &v56 - v23;
  v24 = sub_29D933AB8();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x2A1C7C4A8](v24, v27);
  v29 = &v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_29D933CE8();
  v63 = *(v30 - 8);
  v64 = v30;
  v31 = *(v63 + 64);
  MEMORY[0x2A1C7C4A8](v30, v32);
  v34 = &v56 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 104))(v29, *MEMORY[0x29EDB9C78], v24);
  sub_29D933AC8();
  (*(v25 + 8))(v29, v24);
  (*(v3 + 104))(v7, *MEMORY[0x29EDB9CD8], v2);
  sub_29D933C38();
  (*(v3 + 8))(v7, v2);
  v35 = v17[6];
  if (v35(v15, 1, v16) == 1)
  {
    sub_29D6A0D34(v15);
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v36 = sub_29D937898();
    sub_29D69C6C0(v36, qword_2A1A2C008);
    v37 = sub_29D937878();
    v38 = sub_29D93A288();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v65 = v40;
      *v39 = 136446210;
      v41 = sub_29D93AF08();
      v43 = sub_29D6C2364(v41, v42, &v65);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_29D677000, v37, v38, "[%{public}s] Failed to subtract 6  months of the current date", v39, 0xCu);
      sub_29D69417C(v40);
      MEMORY[0x29ED6BE30](v40, -1, -1);
      MEMORY[0x29ED6BE30](v39, -1, -1);
    }

    (*(v63 + 8))(v34, v64);
  }

  else
  {
    v61 = v17[4];
    v61(v62, v15, v16);
    v44 = v59[3];
    v45 = sub_29D9345F8();
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    swift_allocObject();
    v48 = v44;
    v65 = sub_29D9345E8();
    v49 = v60;
    MEMORY[0x29ED64D30](v45, MEMORY[0x29EDC16C0]);
    if (v35(v49, 1, v16) != 1)
    {
      v51 = v57;
      v61(v57, v49, v16);

      v52 = v62;
      v53 = sub_29D933978();
      v54 = v17[1];
      v54(v51, v16);
      v54(v52, v16);
      (*(v63 + 8))(v34, v64);
      v50 = v53 ^ 1;
      return v50 & 1;
    }

    (v17[1])(v62, v16);
    (*(v63 + 8))(v34, v64);
    sub_29D6A0D34(v49);
  }

  v50 = 0;
  return v50 & 1;
}

void sub_29D81D22C()
{
  v19[1] = *MEMORY[0x29EDCA608];
  v1 = *v0;
  v2 = v0[3];
  v3 = sub_29D933958();
  v4 = sub_29D939D28();
  v19[0] = 0;
  LODWORD(v2) = [v2 setDate:v3 forKey:v4 error:v19];

  v5 = v19[0];
  if (v2)
  {
    v6 = *MEMORY[0x29EDCA608];

    v7 = v5;
  }

  else
  {
    v8 = v19[0];
    v9 = sub_29D933598();

    swift_willThrow();
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v10 = sub_29D937898();
    sub_29D69C6C0(v10, qword_2A1A2C008);
    v11 = sub_29D937878();
    v12 = sub_29D93A288();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19[0] = v14;
      *v13 = 136446210;
      v15 = sub_29D93AF08();
      v17 = sub_29D6C2364(v15, v16, v19);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_29D677000, v11, v12, "[%{public}s] Failed to set HKKeyValueDomain date value", v13, 0xCu);
      sub_29D69417C(v14);
      MEMORY[0x29ED6BE30](v14, -1, -1);
      MEMORY[0x29ED6BE30](v13, -1, -1);
    }

    v18 = *MEMORY[0x29EDCA608];
  }
}

uint64_t type metadata accessor for BloodPressureJournalBestPracticesViewController()
{
  result = qword_2A17B5C38;
  if (!qword_2A17B5C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D81D55C()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for BloodPressureJournalBestPracticesViewController();
  objc_msgSendSuper2(&v12, sel_viewDidLoad);
  v2 = [v0 scrollView];
  sub_29D88BBC8(&unk_2A243E380);
  v3 = sub_29D939F18();
  v4 = HKUIJoinStringsForAutomationIdentifier();

  if (!v4)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_29D939D68();

  swift_arrayDestroy();
  v5 = sub_29D939D28();

  [v2 setAccessibilityIdentifier_];

  v6 = [v1 headerView];
  sub_29D88BBC8(&unk_2A243E3C0);
  v7 = sub_29D939F18();
  v8 = HKUIJoinStringsForAutomationIdentifier();

  if (!v8)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_29D939D68();

  swift_arrayDestroy();
  v9 = sub_29D939D28();

  [v6 setTitleAccessibilityIdentifier_];

  sub_29D88BBC8(&unk_2A243E400);
  v10 = sub_29D939F18();
  v11 = HKUIJoinStringsForAutomationIdentifier();

  if (v11)
  {
    sub_29D939D68();

    swift_arrayDestroy();
    sub_29D936C58();

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_29D81D7EC(void *a1)
{
  v1 = a1;
  sub_29D81D55C();
}

id sub_29D81D890()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BloodPressureJournalBestPracticesViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D81D8D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D81D934(uint64_t a1, uint64_t a2)
{
  sub_29D7C015C();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v4, v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = (*(a2 + 16))(a1, a2);
  sub_29D7C05E8(0, &qword_2A17B4F60, MEMORY[0x29EDC9E90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_29D93DDB0;
  *(v11 + 32) = (*(a2 + 8))(a1, a2) & 1;
  sub_29D6AD548();
  sub_29D81E15C(&qword_2A1A223E0, sub_29D6AD548);
  sub_29D938518();

  sub_29D81E15C(&qword_2A17B4F68, sub_29D7C015C);
  v12 = sub_29D938418();
  (*(v6 + 8))(v10, v5);
  return v12;
}

uint64_t sub_29D81DB44()
{
  sub_29D7061B8(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D710880();
  v26 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D81E1A4();
  v13 = *(v12 - 8);
  v27 = v12;
  v28 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v0[6];
  sub_29D693E2C(v0 + 2, v0[5]);
  v30 = sub_29D937258();
  sub_29D6FC794();
  v19 = sub_29D93A468();
  v29 = v19;
  v20 = sub_29D93A448();
  (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
  sub_29D6B7D8C();
  sub_29D81E15C(&qword_2A1A22420, sub_29D6B7D8C);
  sub_29D81E15C(&qword_2A1A248E0, sub_29D6FC794);
  sub_29D938538();
  sub_29D7339C0(v5);

  sub_29D81E15C(&qword_2A17B2C70, sub_29D710880);
  v21 = v26;
  sub_29D938468();
  (*(v7 + 8))(v11, v21);
  sub_29D81E15C(&qword_2A17B5C50, sub_29D81E1A4);
  v22 = v27;
  v23 = sub_29D938418();
  (*(v28 + 8))(v17, v22);
  return v23;
}

uint64_t sub_29D81DEDC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_29D937198();
  *a1 = result & 1;
  return result;
}

uint64_t sub_29D81DF0C()
{
  sub_29D69417C((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_29D81DF68()
{
  v1 = sub_29D9371A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0[6];
  sub_29D693E2C(v0 + 2, v0[5]);
  sub_29D937238();
  v8 = sub_29D937198();
  (*(v2 + 8))(v6, v1);
  return v8 & 1;
}

uint64_t sub_29D81E0A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_29D81E0F0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_29D81E15C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D81E1A4()
{
  if (!qword_2A17B5C48)
  {
    sub_29D710880();
    sub_29D81E15C(&qword_2A17B2C70, sub_29D710880);
    v0 = sub_29D9380F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B5C48);
    }
  }
}

uint64_t sub_29D81E240()
{
  v13 = sub_29D937898();
  v1 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13, v2);
  v3 = sub_29D9371A8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v0[4];
  sub_29D693E2C(v0, v0[3]);
  sub_29D937238();
  v10 = sub_29D81E538(v8);
  (*(v4 + 8))(v8, v3);
  return v10 & 1;
}

id sub_29D81E538(uint64_t a1)
{
  v2 = sub_29D937898();
  v69 = *(v2 - 8);
  v70 = v2;
  v3 = *(v69 + 64);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v71 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D937158();
  v73 = *(v6 - 8);
  v74 = v6;
  v7 = *(v73 + 64);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D937178();
  v75 = *(v11 - 8);
  v76 = v11;
  v12 = *(v75 + 64);
  v14 = MEMORY[0x2A1C7C4A8](v11, v13);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v67 = &v64 - v18;
  v68 = sub_29D937118();
  v66 = *(v68 - 8);
  v19 = *(v66 + 64);
  MEMORY[0x2A1C7C4A8](v68, v20);
  v65 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_29D9371A8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v26 = MEMORY[0x2A1C7C4A8](v22, v25);
  v64 = &v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x2A1C7C4A8](v26, v28);
  v31 = &v64 - v30;
  MEMORY[0x2A1C7C4A8](v29, v32);
  v34 = &v64 - v33;
  v35 = *(v23 + 16);
  v36 = a1;
  v35(&v64 - v33, a1, v22);
  v37 = (*(v23 + 88))(v34, v22);
  if (v37 == *MEMORY[0x29EDC2D70])
  {
    (*(v23 + 96))(v34, v22);
    v38 = v73;
    v39 = v74;
    (*(v73 + 32))(v10, v34, v74);
    sub_29D937108();
    v40 = sub_29D937168();
    if (*(v40 + 16) && (v41 = sub_29D6959E0(*(v72 + 40)), (v42 & 1) != 0))
    {
      v43 = *(*(v40 + 56) + 8 * v41);

      v44 = [v43 areAllRequirementsSatisfied];
    }

    else
    {

      v44 = 0;
    }

    (*(v75 + 8))(v16, v76);
    (*(v38 + 8))(v10, v39);
  }

  else if (v37 == *MEMORY[0x29EDC2D68])
  {
    (*(v23 + 96))(v34, v22);
    v46 = v65;
    v45 = v66;
    v47 = v68;
    (*(v66 + 32))(v65, v34, v68);
    v48 = v67;
    sub_29D937108();
    v49 = sub_29D937168();
    if (*(v49 + 16) && (v50 = sub_29D6959E0(*(v72 + 40)), (v51 & 1) != 0))
    {
      v52 = *(*(v49 + 56) + 8 * v50);

      v44 = [v52 areAllRequirementsSatisfied];
    }

    else
    {

      v44 = 0;
    }

    (*(v75 + 8))(v48, v76);
    (*(v45 + 8))(v46, v47);
  }

  else
  {
    v53 = v71;
    sub_29D937868();
    v35(v31, v36, v22);
    v54 = sub_29D937878();
    v55 = sub_29D93A288();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v77 = v76;
      *v56 = 136315394;
      *(v56 + 4) = sub_29D6C2364(0xD000000000000029, 0x800000029D94C280, &v77);
      *(v56 + 12) = 2080;
      LODWORD(v75) = v55;
      v35(v64, v31, v22);
      v57 = sub_29D939DA8();
      v59 = v58;
      v60 = *(v23 + 8);
      v60(v31, v22);
      v61 = sub_29D6C2364(v57, v59, &v77);

      *(v56 + 14) = v61;
      _os_log_impl(&dword_29D677000, v54, v75, "[%s] Unknown feature status received: %s", v56, 0x16u);
      v62 = v76;
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v62, -1, -1);
      MEMORY[0x29ED6BE30](v56, -1, -1);

      (*(v69 + 8))(v71, v70);
    }

    else
    {

      v60 = *(v23 + 8);
      v60(v31, v22);
      (*(v69 + 8))(v53, v70);
    }

    v60(v34, v22);
    return 0;
  }

  return v44;
}

uint64_t sub_29D81EC50()
{
  sub_29D7061B8(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D710880();
  v7 = *(v6 - 8);
  v28 = v6;
  v29 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D81E1A4();
  v13 = *(v12 - 8);
  v30 = v12;
  v31 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v0[4];
  sub_29D693E2C(v0, v0[3]);
  *&v32[0] = sub_29D937258();
  sub_29D6FC794();
  v19 = sub_29D93A468();
  v33 = v19;
  v20 = sub_29D93A448();
  (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
  sub_29D6B7D8C();
  sub_29D81E15C(&qword_2A1A22420, sub_29D6B7D8C);
  sub_29D81E15C(&qword_2A1A248E0, sub_29D6FC794);
  sub_29D938538();
  sub_29D7339C0(v5);

  sub_29D81F02C(v0, v32);
  v21 = swift_allocObject();
  v22 = v32[1];
  v21[1] = v32[0];
  v21[2] = v22;
  v21[3] = v32[2];
  sub_29D81E15C(&qword_2A17B2C70, sub_29D710880);
  v23 = v28;
  sub_29D938468();

  (*(v29 + 8))(v11, v23);
  sub_29D81E15C(&qword_2A17B5C50, sub_29D81E1A4);
  v24 = v30;
  v25 = sub_29D938418();
  (*(v31 + 8))(v17, v24);
  return v25;
}

id sub_29D81F064@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29D81E538(a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_29D81F094(void *a1, uint64_t a2, char a3)
{
  sub_29D8232D4(0, &qword_2A17B5CB0, MEMORY[0x29EDC9E88]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v6, v10);
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D82322C();
  sub_29D93AED8();
  v15 = a2;
  v16 = a3;
  sub_29D823280();
  sub_29D93AD18();
  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_29D81F1FC(uint64_t a1)
{
  v2 = sub_29D82322C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D81F238(uint64_t a1)
{
  v2 = sub_29D82322C();

  return MEMORY[0x2A1C73280](a1, v2);
}

void *sub_29D81F274@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29D822D54(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

id sub_29D81F2C4()
{
  v1 = OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController____lazy_storage___tileView;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController____lazy_storage___tileView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController____lazy_storage___tileView);
  }

  else
  {
    sub_29D936A88();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = objc_opt_self();
    v6 = v4;
    v7 = [v5 clearColor];
    [v6 setBackgroundColor_];

    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    v8 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_29D81F3A4()
{
  v1 = v0;
  v2 = sub_29D937898();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937858();
  v8 = sub_29D937878();
  v9 = sub_29D93A2A8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_29D677000, v8, v9, "CardioFitnessRetroComputeTileViewController loaded", v10, 2u);
    MEMORY[0x29ED6BE30](v10, -1, -1);
  }

  (*(v3 + 8))(v7, v2);
  v11 = type metadata accessor for CardioFitnessRetroComputeTipTileViewController();
  v14.receiver = v1;
  v14.super_class = v11;
  objc_msgSendSuper2(&v14, sel_viewDidLoad);
  sub_29D81F604();
  v12 = sub_29D81F2C4();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_29D936A48();
}

void sub_29D81F568()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_29D81FEA4();
  }
}

void sub_29D81F604()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  v3 = sub_29D81F2C4();
  [v2 addSubview_];

  sub_29D6C5040(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29D943A10;
  v5 = OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController____lazy_storage___tileView;
  v6 = [*&v0[OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController____lazy_storage___tileView] topAnchor];
  v7 = [v0 view];
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v7 topAnchor];

  v10 = [v6 constraintEqualToAnchor_];
  *(v4 + 32) = v10;
  v11 = [*&v0[v5] bottomAnchor];
  v12 = [v0 view];
  if (!v12)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = v12;
  v14 = [v12 bottomAnchor];

  v15 = [v11 constraintEqualToAnchor_];
  *(v4 + 40) = v15;
  v16 = [*&v0[v5] leadingAnchor];
  v17 = [v0 view];
  if (!v17)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v18 = v17;
  v19 = [v17 leadingAnchor];

  v20 = [v16 constraintEqualToAnchor_];
  *(v4 + 48) = v20;
  v21 = [*&v0[v5] trailingAnchor];
  v22 = [v0 view];
  if (!v22)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v23 = v22;
  v24 = objc_opt_self();
  v25 = [v23 trailingAnchor];

  v26 = [v21 constraintEqualToAnchor_];
  *(v4 + 56) = v26;
  sub_29D69567C(0, &qword_2A17B81B0, 0x29EDBA008);
  v27 = sub_29D939F18();

  [v24 activateConstraints_];

  v28 = sub_29D81F93C();
  sub_29D81FB20(v28, v29);

  sub_29D821F64();
}

uint64_t sub_29D81F93C()
{
  v1 = OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController_context;
  swift_beginAccess();
  sub_29D718208(v0 + v1, &v16);
  v2 = v17;
  if (v17)
  {
    v3 = sub_29D693E2C(&v16, v17);
    v4 = *(v2 - 8);
    v5 = *(v4 + 64);
    MEMORY[0x2A1C7C4A8](v3, v3);
    v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v7);
    sub_29D822AD8(&v16);
    v8 = sub_29D9365B8();
    v10 = v9;
    (*(v4 + 8))(v7, v2);
    if (v10 >> 60 != 15)
    {
      v11 = sub_29D9330D8();
      v12 = *(v11 + 48);
      v13 = *(v11 + 52);
      swift_allocObject();
      sub_29D9330C8();
      sub_29D8231C0();
      sub_29D9330B8();
      sub_29D71847C(v8, v10);

      return v16;
    }
  }

  else
  {
    sub_29D822AD8(&v16);
  }

  return 0;
}

uint64_t sub_29D81FB20(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 0xFDu)
  {
    if (a2 >> 6)
    {
      if (a2 >> 6 != 1)
      {
        return result;
      }

      v3 = result;
      sub_29D820C70();
      sub_29D8217EC();
      type metadata accessor for HeartHealthPluginDelegate();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v6 = objc_opt_self();
      v7 = [v6 bundleForClass_];
      sub_29D9334A8();

      v8 = sub_29D939D28();

      [v2 setTitle_];

      v9 = sub_29D81F2C4();
      sub_29D822EF4(v3, a2 & 1);
      v10 = [v6 bundleForClass_];
    }

    else
    {
      sub_29D82108C();
      type metadata accessor for HeartHealthPluginDelegate();
      v11 = swift_getObjCClassFromMetadata();
      v12 = objc_opt_self();
      v13 = [v12 bundleForClass_];
      sub_29D9334A8();

      v14 = sub_29D939D28();

      [v2 setTitle_];

      v9 = sub_29D81F2C4();
      v15 = [v12 bundleForClass_];
      sub_29D9334A8();

      v10 = [v12 bundleForClass_];
    }

    sub_29D9334A8();

    sub_29D936A58();
  }

  return result;
}

void sub_29D81FEA4()
{
  swift_getObjectType();
  sub_29D81F93C();
  if (v1 > 0xFDu)
  {
LABEL_7:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v2 = sub_29D937898();
    sub_29D69C6C0(v2, qword_2A1A2C008);
    v3 = v0;
    oslog = sub_29D937878();
    v4 = sub_29D93A298();

    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136446210;
      sub_29D81F93C();
      sub_29D6C5040(0, qword_2A1A235B0, &type metadata for CardioFitnessRetroComputeFeedItemState, MEMORY[0x29EDC9C68]);
      v7 = sub_29D939DA8();
      v9 = sub_29D6C2364(v7, v8, &v11);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_29D677000, oslog, v4, "Tapped on retro compute tile with an unknown configuration state: %{public}s", v5, 0xCu);
      sub_29D69417C(v6);
      MEMORY[0x29ED6BE30](v6, -1, -1);
      MEMORY[0x29ED6BE30](v5, -1, -1);
    }

    else
    {
    }

    return;
  }

  if (v1 >> 6)
  {
    if (v1 >> 6 == 1)
    {
      sub_29D8AA9B4();
      sub_29D939DF8();

      return;
    }

    goto LABEL_7;
  }

  sub_29D820114();
}

void sub_29D820114()
{
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  sub_29D9334A8();

  v3 = [v1 &selRef:ObjCClassFromMetadata initWithIconImage:0xE000000000000000 titleText:? detailText:? tintColor:? + 3];
  sub_29D9334A8();

  v4 = sub_29D939D28();

  v5 = sub_29D939D28();

  v25 = [objc_opt_self() alertControllerWithTitle:v4 message:v5 preferredStyle:{1, 0xE000000000000000}];

  v6 = v1;
  v7 = [v1 bundleForClass_];
  sub_29D9334A8();

  v8 = swift_allocObject();
  *(v8 + 16) = v23;
  v9 = v23;
  v10 = sub_29D939D28();

  v30 = sub_29D822D28;
  v31 = v8;
  aBlock = MEMORY[0x29EDCA5F8];
  v27 = 1107296256;
  v28 = sub_29D799960;
  v29 = &unk_2A2447750;
  v11 = _Block_copy(&aBlock);

  v12 = objc_opt_self();
  v24 = [v12 actionWithTitle:v10 style:0 handler:{v11, 0xE000000000000000}];
  _Block_release(v11);

  v13 = [v1 bundleForClass_];
  sub_29D9334A8();

  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  v22 = v9;
  v15 = sub_29D939D28();

  v30 = sub_29D822D4C;
  v31 = v14;
  aBlock = MEMORY[0x29EDCA5F8];
  v27 = 1107296256;
  v28 = sub_29D799960;
  v29 = &unk_2A24477A0;
  v16 = _Block_copy(&aBlock);

  v17 = [v12 actionWithTitle:v15 style:0 handler:{v16, 0xE000000000000000}];
  _Block_release(v16);

  v18 = [v6 bundleForClass_];
  sub_29D9334A8();

  v19 = sub_29D939D28();

  v30 = nullsub_1;
  v31 = 0;
  aBlock = MEMORY[0x29EDCA5F8];
  v27 = 1107296256;
  v28 = sub_29D799960;
  v29 = &unk_2A24477C8;
  v20 = _Block_copy(&aBlock);

  v21 = [v12 actionWithTitle:v19 style:1 handler:{v20, 0xE000000000000000}];
  _Block_release(v20);

  [v25 addAction_];
  [v25 addAction_];
  [v25 addAction_];
  [v22 presentViewController:v25 animated:1 completion:0];
}

uint64_t sub_29D8206E8()
{
  swift_getObjectType();
  sub_29D8AA9B4();
  sub_29D939DF8();
}

void sub_29D820738()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_allocWithZone(MEMORY[0x29EDB93D0]) init];
  v3 = swift_allocObject();
  *(v3 + 16) = ObjectType;
  v10[4] = sub_29D822D08;
  v10[5] = v3;
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 1107296256;
  v10[2] = sub_29D820C04;
  v10[3] = &unk_2A2447700;
  v4 = _Block_copy(v10);

  [v2 triggerRetrocomputeWithHandler_];
  _Block_release(v4);
  v5 = [v0 parentViewController];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
LABEL_5:

    v2 = v6;
LABEL_6:

    return;
  }

  v8 = [v7 collectionView];
  if (v8)
  {
    v9 = v8;
    [v8 _scrollToTopIfPossible_];

    v2 = v6;
    v6 = v9;
    goto LABEL_5;
  }

  __break(1u);
}

void sub_29D8208B0(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v3 = sub_29D937898();
    sub_29D69C6C0(v3, qword_2A1A2C008);
    v4 = a1;
    v5 = sub_29D937878();
    v6 = sub_29D93A288();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v25 = v8;
      *v7 = 136446466;
      v9 = sub_29D93AF08();
      v11 = sub_29D6C2364(v9, v10, &v25);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2082;
      v12 = a1;
      sub_29D6B7370(0, &qword_2A1A24850);
      v13 = sub_29D939DA8();
      v15 = sub_29D6C2364(v13, v14, &v25);

      *(v7 + 14) = v15;
      _os_log_impl(&dword_29D677000, v5, v6, "[%{public}s] Failed to trigger retrocompute: %{public}s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v8, -1, -1);
      MEMORY[0x29ED6BE30](v7, -1, -1);

      return;
    }

    v23 = a1;
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v16 = sub_29D937898();
    sub_29D69C6C0(v16, qword_2A1A2C008);
    oslog = sub_29D937878();
    v17 = sub_29D93A2A8();
    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25 = v19;
      *v18 = 136446210;
      v20 = sub_29D93AF08();
      v22 = sub_29D6C2364(v20, v21, &v25);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_29D677000, oslog, v17, "[%{public}s] Successfully triggered retrocompute", v18, 0xCu);
      sub_29D69417C(v19);
      MEMORY[0x29ED6BE30](v19, -1, -1);
      MEMORY[0x29ED6BE30](v18, -1, -1);

      return;
    }

    v23 = oslog;
  }
}

void sub_29D820C04(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_29D820C70()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v3 = sub_29D937898();
  sub_29D69C6C0(v3, qword_2A1A2C008);
  v4 = sub_29D937878();
  v5 = sub_29D93A2A8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v32[0] = v7;
    *v6 = 136446210;
    v8 = sub_29D93AF08();
    v10 = sub_29D6C2364(v8, v9, v32);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_29D677000, v4, v5, "[%{public}s] Resetting available dismissal states", v6, 0xCu);
    sub_29D69417C(v7);
    MEMORY[0x29ED6BE30](v7, -1, -1);
    MEMORY[0x29ED6BE30](v6, -1, -1);
  }

  v11 = OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController_context;
  swift_beginAccess();
  result = sub_29D718208(v1 + v11, v30);
  v13 = v31;
  if (v31)
  {
    v14 = sub_29D693E2C(v30, v31);
    v15 = *(v13 - 8);
    v16 = *(v15 + 64);
    MEMORY[0x2A1C7C4A8](v14, v14);
    v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
    (*(v15 + 16))(v18);
    v19 = sub_29D936588();
    (*(v15 + 8))(v18, v13);
    v20 = sub_29D934408();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    v23 = v19;
    v24 = sub_29D9343C8();

    v32[0] = v24;
    v32[1] = 0xD000000000000016;
    v32[2] = 0x800000029D959220;
    v32[3] = 0xD000000000000016;
    v32[4] = 0x800000029D959240;
    v32[5] = 0xD000000000000020;
    v32[6] = 0x800000029D959260;
    sub_29D69417C(v30);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    v30[0] = sub_29D6AEBC8(0);
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = ObjectType;
    sub_29D700D5C();
    sub_29D822C9C(&qword_2A1A24A90, sub_29D700D5C);

    v27 = sub_29D938478();

    sub_29D822B84(v32);

    swift_beginAccess();
    v28 = *(v25 + 16);
    *(v25 + 16) = v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D82108C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_29D6A08F8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D822BD8();
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v8, v12);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v15 = sub_29D937898();
  sub_29D69C6C0(v15, qword_2A1A2C008);
  v16 = sub_29D937878();
  v17 = sub_29D93A2A8();
  v18 = os_log_type_enabled(v16, v17);
  v51 = ObjectType;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v50 = v7;
    v21 = v14;
    v22 = v10;
    v23 = v9;
    v24 = v20;
    v55[0] = v20;
    *v19 = 136446210;
    v25 = sub_29D93AF08();
    v27 = sub_29D6C2364(v25, v26, v55);

    *(v19 + 4) = v27;
    _os_log_impl(&dword_29D677000, v16, v17, "[%{public}s] Resetting completed dismissal and last seen dates", v19, 0xCu);
    sub_29D69417C(v24);
    v28 = v24;
    v9 = v23;
    v10 = v22;
    v14 = v21;
    v7 = v50;
    MEMORY[0x29ED6BE30](v28, -1, -1);
    MEMORY[0x29ED6BE30](v19, -1, -1);
  }

  v29 = OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController_context;
  swift_beginAccess();
  result = sub_29D718208(v1 + v29, v53);
  v31 = v54;
  if (v54)
  {
    v32 = sub_29D693E2C(v53, v54);
    v33 = *(v31 - 8);
    v34 = *(v33 + 64);
    MEMORY[0x2A1C7C4A8](v32, v32);
    v36 = &v50 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v33 + 16))(v36);
    v37 = sub_29D936588();
    (*(v33 + 8))(v36, v31);
    v38 = sub_29D934408();
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();
    v41 = v37;
    v42 = sub_29D9343C8();

    v55[0] = v42;
    v55[1] = 0xD000000000000016;
    v55[2] = 0x800000029D959220;
    v55[3] = 0xD000000000000016;
    v55[4] = 0x800000029D959240;
    v55[5] = 0xD000000000000020;
    v55[6] = 0x800000029D959260;
    sub_29D69417C(v53);
    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    v53[0] = sub_29D6AEFFC(0);
    v44 = sub_29D9339F8();
    (*(*(v44 - 8) + 56))(v7, 1, 1, v44);
    v45 = sub_29D6AF430();
    sub_29D6A0D34(v7);
    v52 = v45;
    sub_29D700D5C();
    sub_29D822C9C(&qword_2A1A24A90, sub_29D700D5C);
    sub_29D938458();

    v46 = swift_allocObject();
    v47 = v51;
    *(v46 + 16) = v43;
    *(v46 + 24) = v47;
    sub_29D822C9C(&qword_2A17B5CA0, sub_29D822BD8);

    v48 = sub_29D938478();

    sub_29D822B84(v55);
    (*(v10 + 8))(v14, v9);
    swift_beginAccess();
    v49 = *(v43 + 16);
    *(v43 + 16) = v48;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D821660(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v6 = sub_29D937898();
  sub_29D69C6C0(v6, qword_2A1A2C008);
  v7 = sub_29D937878();
  v8 = sub_29D93A2A8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    v11 = sub_29D93AF08();
    v13 = sub_29D6C2364(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_29D677000, v7, v8, a4, v9, 0xCu);
    sub_29D69417C(v10);
    MEMORY[0x29ED6BE30](v10, -1, -1);
    MEMORY[0x29ED6BE30](v9, -1, -1);
  }

  swift_beginAccess();
  v14 = *(a2 + 16);
  swift_beginAccess();
  *(a2 + 16) = 0;
}

uint64_t sub_29D8217EC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_29D6A08F8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v8 = sub_29D937898();
  sub_29D69C6C0(v8, qword_2A1A2C008);
  v9 = sub_29D937878();
  v10 = sub_29D93A2A8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v39[0] = v12;
    *v11 = 136446210;
    v13 = sub_29D93AF08();
    v15 = sub_29D6C2364(v13, v14, v39);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_29D677000, v9, v10, "[%{public}s] Setting last seen date if needed", v11, 0xCu);
    sub_29D69417C(v12);
    MEMORY[0x29ED6BE30](v12, -1, -1);
    MEMORY[0x29ED6BE30](v11, -1, -1);
  }

  v16 = OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController_context;
  swift_beginAccess();
  result = sub_29D718208(v1 + v16, v37);
  v18 = v38;
  if (v38)
  {
    v19 = sub_29D693E2C(v37, v38);
    v20 = *(v18 - 8);
    v21 = *(v20 + 64);
    MEMORY[0x2A1C7C4A8](v19, v19);
    v23 = v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
    (*(v20 + 16))(v23);
    v24 = sub_29D936588();
    (*(v20 + 8))(v23, v18);
    v25 = sub_29D934408();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    v28 = v24;
    v29 = sub_29D9343C8();

    v39[0] = v29;
    v39[1] = 0xD000000000000016;
    v39[2] = 0x800000029D959220;
    v39[3] = 0xD000000000000016;
    v39[4] = 0x800000029D959240;
    v39[5] = 0xD000000000000020;
    v39[6] = 0x800000029D959260;
    sub_29D69417C(v37);
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    sub_29D9339E8();
    v31 = sub_29D9339F8();
    (*(*(v31 - 8) + 56))(v7, 0, 1, v31);
    v32 = sub_29D6AF798(v7);
    sub_29D6A0D34(v7);
    v37[0] = v32;
    v33 = swift_allocObject();
    *(v33 + 16) = v30;
    *(v33 + 24) = ObjectType;
    sub_29D700D5C();
    sub_29D822C9C(&qword_2A1A24A90, sub_29D700D5C);

    v34 = sub_29D938478();

    sub_29D822B84(v39);

    swift_beginAccess();
    v35 = *(v30 + 16);
    *(v30 + 16) = v34;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29D821CA4()
{
  sub_29D81F93C();
  if (v1 <= 0xFDu)
  {
    if (!(v1 >> 6))
    {
      if (qword_2A1A22218 != -1)
      {
        swift_once();
      }

      v2 = qword_2A1A2BCD0;
      goto LABEL_14;
    }

    if (v1 >> 6 == 1)
    {
      if (qword_2A1A22210 != -1)
      {
        swift_once();
      }

      v2 = qword_2A1A2BCC8;
LABEL_14:
      v11 = objc_allocWithZone(sub_29D934AF8());
      v12 = v2;
      v13 = sub_29D934AE8();
      sub_29D69567C(0, &qword_2A17B5C90, 0x29EDBA088);
      oslog = sub_29D93A328();
      [oslog addOperation:v13];

      goto LABEL_15;
    }
  }

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v3 = sub_29D937898();
  sub_29D69C6C0(v3, qword_2A1A2C008);
  v4 = v0;
  oslog = sub_29D937878();
  v5 = sub_29D93A298();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446210;
    sub_29D81F93C();
    sub_29D6C5040(0, qword_2A1A235B0, &type metadata for CardioFitnessRetroComputeFeedItemState, MEMORY[0x29EDC9C68]);
    v8 = sub_29D939DA8();
    v10 = sub_29D6C2364(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_29D677000, oslog, v5, "Dismissed a retro compute tile with an unknown configuration state: %{public}s", v6, 0xCu);
    sub_29D69417C(v7);
    MEMORY[0x29ED6BE30](v7, -1, -1);
    MEMORY[0x29ED6BE30](v6, -1, -1);

    return;
  }

LABEL_15:
}

void sub_29D821F64()
{
  v1 = v0;
  v2 = *MEMORY[0x29EDC43E0];
  v15 = sub_29D939D68();
  v16 = v3;
  sub_29D935E88();
  MEMORY[0x29ED6A240](0xD00000000000001ALL, 0x800000029D965E10);

  v4 = (v0 + OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController_baseIdentifier);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v15;
  v4[1] = v16;
  sub_29D935E88();

  sub_29D935E88();
  MEMORY[0x29ED6A240](0x656956656C69542ELL, 0xE900000000000077);

  v6 = sub_29D81F2C4();
  v7 = sub_29D939D28();
  [v6 setAccessibilityIdentifier_];

  v8 = OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController____lazy_storage___tileView;
  v9 = *(v1 + OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController____lazy_storage___tileView);
  v10 = sub_29D936A78();

  sub_29D935E88();
  MEMORY[0x29ED6A240](0x62614C79646F422ELL, 0xEA00000000006C65);
  v11 = sub_29D939D28();

  [v10 setAccessibilityIdentifier_];

  v12 = *(v1 + v8);
  v13 = sub_29D936A68();

  sub_29D935E88();
  MEMORY[0x29ED6A240](0x426E6F697463412ELL, 0xED00006E6F747475);

  v14 = sub_29D939D28();

  [v13 setAccessibilityIdentifier_];
}

id sub_29D822198(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = &v3[OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController_baseIdentifier];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v3[OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController_context];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  *&v3[OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController____lazy_storage___tileView] = 0;
  v8 = OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController_detail;
  v9 = *MEMORY[0x29EDC2198];
  v10 = sub_29D935878();
  (*(*(v10 - 8) + 104))(&v3[v8], v9, v10);
  v3[OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController_showsSeparator] = 0;
  if (a2)
  {
    v11 = sub_29D939D28();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = v3;
  v14.super_class = type metadata accessor for CardioFitnessRetroComputeTipTileViewController();
  v12 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, v11, a3);

  return v12;
}

id sub_29D822320(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController_baseIdentifier];
  *v3 = 0;
  v3[1] = 0;
  v4 = &v1[OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController_context];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *&v1[OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController____lazy_storage___tileView] = 0;
  v5 = OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController_detail;
  v6 = *MEMORY[0x29EDC2198];
  v7 = sub_29D935878();
  (*(*(v7 - 8) + 104))(&v1[v5], v6, v7);
  v1[OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController_showsSeparator] = 0;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for CardioFitnessRetroComputeTipTileViewController();
  v8 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);

  if (v8)
  {
  }

  return v8;
}

id sub_29D822444()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CardioFitnessRetroComputeTipTileViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for CardioFitnessRetroComputeTipTileViewController()
{
  result = qword_2A17B5C70;
  if (!qword_2A17B5C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D822570()
{
  result = sub_29D935878();
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

uint64_t sub_29D822628@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController_context;
  swift_beginAccess();
  return sub_29D718208(v1 + v3, a1);
}

uint64_t sub_29D822680(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController_context;
  swift_beginAccess();
  sub_29D718124(a1, v1 + v3);
  swift_endAccess();
  if ([v1 isViewLoaded])
  {
    v4 = sub_29D81F93C();
    sub_29D81FB20(v4, v5);
  }

  return sub_29D822AD8(a1);
}

uint64_t (*sub_29D822704(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_29D822768;
}

uint64_t sub_29D822768(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    result = [*(a1 + 24) isViewLoaded];
    if (result)
    {
      v5 = *(a1 + 24);
      v6 = sub_29D81F93C();
      return sub_29D81FB20(v6, v7);
    }
  }

  return result;
}

uint64_t sub_29D8227DC()
{
  v1 = (*v0 + OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController_baseIdentifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_29D935E88();
  return v3;
}

uint64_t sub_29D822838(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController_baseIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t (*sub_29D82289C())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess_0;
}

uint64_t sub_29D822910(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C63158](a1, WitnessTable);
}

uint64_t sub_29D82297C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController_detail;
  v5 = sub_29D935878();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29D8229F8()
{
  v1 = *v0;
  v2 = sub_29D81F93C();
  if (v3 <= 0xFDu)
  {
    if (v3 >> 6)
    {
      if (v3 >> 6 == 1)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_29D822AD8(uint64_t a1)
{
  sub_29D823158(0, &qword_2A17B8190, &qword_2A17B2D88, MEMORY[0x29EDC2808], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D822BD8()
{
  if (!qword_2A17B5C98)
  {
    sub_29D700D5C();
    sub_29D822C9C(&qword_2A1A24A90, sub_29D700D5C);
    v0 = sub_29D938058();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B5C98);
    }
  }
}

uint64_t sub_29D822C9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D822D10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_29D822D54(uint64_t *a1)
{
  sub_29D8232D4(0, &qword_2A17B5CC8, MEMORY[0x29EDC9E80]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v3, v7);
  v9 = &v13 - v8;
  v10 = a1[4];
  v11 = sub_29D693E2C(a1, a1[3]);
  sub_29D82322C();
  sub_29D93AEC8();
  if (!v1)
  {
    sub_29D823338();
    sub_29D93AC88();
    (*(v5 + 8))(v9, v4);
    v11 = v13;
  }

  sub_29D69417C(a1);
  return v11;
}

uint64_t sub_29D822EF4(uint64_t a1, char a2)
{
  if ((a2 & 1) != 0 || *&a1 == 0.0)
  {
    type metadata accessor for HeartHealthPluginDelegate();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    v4 = sub_29D9334A8();

    return v4;
  }

  else
  {
    v6 = fabs(*&a1);
    v7 = [objc_allocWithZone(MEMORY[0x29EDBA078]) init];
    [v7 setMaximumFractionDigits_];
    v8 = sub_29D751228(v6);
    v10 = v9;
    type metadata accessor for HeartHealthPluginDelegate();
    v11 = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass_];
    sub_29D9334A8();

    sub_29D823158(0, &qword_2A1A24860, &qword_2A1A24818, MEMORY[0x29EDCA100], MEMORY[0x29EDC9E90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_29D93DDB0;
    *(v13 + 56) = MEMORY[0x29EDC99B0];
    *(v13 + 64) = sub_29D69AD24();
    *(v13 + 32) = v8;
    *(v13 + 40) = v10;
    v14 = sub_29D939D38();

    return v14;
  }
}

void sub_29D823158(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D6B7370(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_29D8231C0()
{
  result = qword_2A17B5CA8;
  if (!qword_2A17B5CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5CA8);
  }

  return result;
}

unint64_t sub_29D82322C()
{
  result = qword_2A17B5CB8;
  if (!qword_2A17B5CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5CB8);
  }

  return result;
}

unint64_t sub_29D823280()
{
  result = qword_2A17B5CC0;
  if (!qword_2A17B5CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5CC0);
  }

  return result;
}

void sub_29D8232D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D82322C();
    v7 = a3(a1, &type metadata for CardioFitnessRetroComputeFeedItemConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29D823338()
{
  result = qword_2A17B5CD0;
  if (!qword_2A17B5CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5CD0);
  }

  return result;
}

unint64_t sub_29D8233A0()
{
  result = qword_2A17B5CD8;
  if (!qword_2A17B5CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5CD8);
  }

  return result;
}

unint64_t sub_29D8233F8()
{
  result = qword_2A17B5CE0;
  if (!qword_2A17B5CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5CE0);
  }

  return result;
}

unint64_t sub_29D823450()
{
  result = qword_2A17B5CE8;
  if (!qword_2A17B5CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5CE8);
  }

  return result;
}

uint64_t type metadata accessor for ConfirmDetailsDataSource()
{
  result = qword_2A17B5D10;
  if (!qword_2A17B5D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D82356C(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x29EDCA190];
  if (!v5)
  {
    return v6;
  }

  v16 = MEMORY[0x29EDCA190];
  sub_29D7EE570(0, v5, 0);
  v6 = v16;
  for (i = (a3 + 32); ; ++i)
  {
    v14 = *i;
    sub_29D935E88();
    a1(&v15, &v14);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v10 = v15;
    v16 = v6;
    v12 = *(v6 + 16);
    v11 = *(v6 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_29D7EE570((v11 > 1), v12 + 1, 1);
      v6 = v16;
    }

    *(v6 + 16) = v12 + 1;
    *(v6 + 8 * v12 + 32) = v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_29D823698(void (*a1)(__int128 *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x29EDCA190];
  if (!v5)
  {
    return v6;
  }

  v16 = MEMORY[0x29EDCA190];
  sub_29D7EE6B0(0, v5, 0);
  v6 = v16;
  v9 = (a3 + 32);
  while (1)
  {
    v10 = *v9++;
    v14 = v10;
    a1(v15, &v14);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v16 = v6;
    v12 = *(v6 + 16);
    v11 = *(v6 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_29D7EE6B0((v11 > 1), v12 + 1, 1);
      v6 = v16;
    }

    *(v6 + 16) = v12 + 1;
    sub_29D679D3C(v15, v6 + 40 * v12 + 32);
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_29D8237B0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v22 = a1;
  v23 = a2;
  v21 = sub_29D9339F8();
  v6 = *(v21 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v21, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x29EDCA190];
  if (!v11)
  {
    return v12;
  }

  v24 = MEMORY[0x29EDCA190];
  sub_29D7EE818(0, v11, 0);
  v12 = v24;
  v20 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v13 = a3 + v20;
  v19 = (v6 + 32);
  v14 = *(v6 + 72);
  while (1)
  {
    v22(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v24 = v12;
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_29D7EE818(v15 > 1, v16 + 1, 1);
      v12 = v24;
    }

    *(v12 + 16) = v16 + 1;
    (*v19)(v12 + v20 + v16 * v14, v10, v21);
    v13 += v14;
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

size_t sub_29D82396C(uint64_t a1, uint64_t a2)
{
  v95 = sub_29D9359D8();
  v5 = *(v95 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v95, v7);
  v89 = v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8258DC(0, &unk_2A1A248F0, MEMORY[0x29EDCA298]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8, v11);
  v84 = v76 - v12;
  v80 = sub_29D939978();
  v79 = *(v80 - 8);
  v13 = *(v79 + 64);
  MEMORY[0x2A1C7C4A8](v80, v14);
  v78 = v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8257AC();
  v83 = v16;
  v82 = *(v16 - 8);
  v17 = *(v82 + 64);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v81 = v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D825930();
  v87 = v20;
  v86 = *(v20 - 8);
  v21 = *(v86 + 64);
  MEMORY[0x2A1C7C4A8](v20, v22);
  v85 = v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_29D933A58();
  v24 = *(v97 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x2A1C7C4A8](v97, v26);
  v96 = v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x29EDC2268];
  sub_29D8258DC(0, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v29 - 8, v31);
  v33 = v76 - v32;
  *(v2 + qword_2A17B5CF0 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + qword_2A17B5D08) = 0;
  *(v2 + qword_2A17B5CF8) = a1;
  v77 = v2;
  *(v2 + qword_2A17B5D00) = a2;
  v34 = sub_29D935AB8();
  v35 = *(*(v34 - 8) + 56);
  v76[3] = v34;
  v35(v33, 1, 1);
  v102 = a2;
  v103 = v33;

  v36 = sub_29D82356C(sub_29D825A44, v101, &unk_2A243DE48);
  sub_29D7DA43C();
  swift_arrayDestroy();
  sub_29D825A64(v33, &qword_2A17B52E8, v28);
  v37 = *(v36 + 16);
  if (v37)
  {
    v76[1] = a1;
    v76[2] = a2;
    v109 = MEMORY[0x29EDCA190];
    result = sub_29D7EE5B0(0, v37, 0);
    v39 = v109;
    v92 = v36 + 32;
    v91 = (v24 + 8);
    v90 = v5 + 32;
    v40 = v89;
    v76[0] = v24;
    v41 = 0;
    v88 = v5;
    v94 = v36;
    v93 = v37;
    while (v41 < *(v36 + 16))
    {
      v99 = v41;
      v100 = v39;
      v42 = *(v92 + 8 * v41);
      v43 = *(v42 + 16);
      if (v43)
      {
        v108 = MEMORY[0x29EDCA190];
        sub_29D935E88();
        sub_29D7EE538(0, v43, 0);
        v44 = v108;
        v98 = v42;
        v45 = v42 + 32;
        do
        {
          sub_29D6945AC(v45, v104);
          sub_29D6B7370(0, &qword_2A17B1080);
          sub_29D6B7370(0, &qword_2A17B1140);
          swift_dynamicCast();
          v108 = v44;
          v47 = *(v44 + 16);
          v46 = *(v44 + 24);
          if (v47 >= v46 >> 1)
          {
            sub_29D7EE538((v46 > 1), v47 + 1, 1);
          }

          v48 = v106;
          v49 = v107;
          v50 = sub_29D693DDC(v105, v106);
          v51 = *(*(v48 - 8) + 64);
          MEMORY[0x2A1C7C4A8](v50, v50);
          v53 = v76 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v54 + 16))(v53);
          sub_29D778AC4(v47, v53, &v108, v48, v49);
          sub_29D69417C(v105);
          v44 = v108;
          v45 += 40;
          --v43;
        }

        while (v43);
        v5 = v88;
        v40 = v89;
      }

      else
      {
        v55 = *(v92 + 8 * v41);
        sub_29D935E88();
      }

      v56 = v96;
      sub_29D933A48();
      sub_29D933A18();
      (*v91)(v56, v97);
      sub_29D9359C8();

      v39 = v100;
      v109 = v100;
      v58 = *(v100 + 16);
      v57 = *(v100 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_29D7EE5B0(v57 > 1, v58 + 1, 1);
        v39 = v109;
      }

      v41 = v99 + 1;
      *(v39 + 16) = v58 + 1;
      result = (*(v5 + 32))(v39 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v58, v40, v95);
      v36 = v94;
      if (v41 == v93)
      {

        v24 = v76[0];
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_16:
    v105[0] = 0;
    v105[1] = 0xE000000000000000;
    sub_29D93AA18();

    strcpy(v105, "MutableArray<");
    HIWORD(v105[1]) = -4864;
    v59 = v96;
    sub_29D933A48();
    v60 = sub_29D933A18();
    v62 = v61;
    (*(v24 + 8))(v59, v97);
    MEMORY[0x29ED6A240](v60, v62);

    MEMORY[0x29ED6A240](62, 0xE100000000000000);
    v63 = sub_29D935B28();
    *(*(v63 + qword_2A17B5D00) + 24) = &off_2A2447938;
    swift_unknownObjectWeakAssign();
    swift_retain_n();
    v105[0] = sub_29D935AC8();
    sub_29D825858();
    sub_29D8259FC(&qword_2A17B5D30, sub_29D825858);
    v64 = v81;
    sub_29D938428();

    sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
    v65 = v79;
    v66 = v78;
    v67 = v80;
    (*(v79 + 104))(v78, *MEMORY[0x29EDCA260], v80);
    v68 = sub_29D93A4A8();
    (*(v65 + 8))(v66, v67);
    v105[0] = v68;
    v69 = sub_29D93A448();
    v70 = v84;
    (*(*(v69 - 8) + 56))(v84, 1, 1, v69);
    sub_29D8259FC(&qword_2A17B5D40, sub_29D8257AC);
    sub_29D706380();
    v71 = v85;
    v72 = v83;
    sub_29D938538();
    sub_29D825A64(v70, &unk_2A1A248F0, MEMORY[0x29EDCA298]);

    (*(v82 + 8))(v64, v72);
    swift_allocObject();
    swift_weakInit();

    sub_29D8259FC(&qword_2A17B5D48, sub_29D825930);
    v73 = v87;
    v74 = sub_29D938588();

    (*(v86 + 8))(v71, v73);
    v75 = *(v63 + qword_2A17B5D08);
    *(v63 + qword_2A17B5D08) = v74;

    return v63;
  }

  return result;
}