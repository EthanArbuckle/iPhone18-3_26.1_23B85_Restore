void sub_199B28638(uint64_t a1)
{
  v2 = type metadata accessor for CNPosterOnboardingWelcomeView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v6 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A70);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v22 - v9;
  v11 = [objc_opt_self() currentDevice];
  v12 = [v11 userInterfaceIdiom];

  if (v12 != 1)
  {
    v13 = sub_199AC3DD4(*(a1 + *(v2 + 56)), *(a1 + *(v2 + 56) + 8));
    if (v13)
    {
      v14 = v13;
      v15 = sub_199DFA1BC();
      (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
      sub_199B2A4D4(a1, &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_199DFA17C();
      v16 = v14;
      v17 = sub_199DFA16C();
      v18 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v19 = (v4 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
      v20 = swift_allocObject();
      v21 = MEMORY[0x1E69E85E0];
      *(v20 + 16) = v17;
      *(v20 + 24) = v21;
      sub_199B2A538(v6, v20 + v18);
      *(v20 + v19) = v16;
      sub_199AE5E60(0, 0, v10, &unk_199E3E9A8, v20);
    }
  }
}

uint64_t sub_199B28878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = sub_199DF886C();
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  sub_199DFA17C();
  v5[24] = sub_199DFA16C();
  v8 = sub_199DFA12C();
  v5[25] = v8;
  v5[26] = v7;

  return MEMORY[0x1EEE6DFA0](sub_199B28978, v8, v7);
}

uint64_t sub_199B28978()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[18];
  type metadata accessor for CNPosterOnboardingSettingsAnimationFactory();
  swift_initStaticObject();
  v6 = type metadata accessor for CNPosterOnboardingWelcomeView();
  v0[27] = v6;
  v7 = *(v5 + *(v6 + 20));
  sub_199AC3B48(v1);
  (*(v4 + 104))(v2, *MEMORY[0x1E697E7D8], v3);
  v8 = sub_199DF885C();
  v9 = *(v4 + 8);
  v9(v2, v3);
  v9(v1, v3);
  v10 = swift_task_alloc();
  v0[28] = v10;
  *v10 = v0;
  v10[1] = sub_199B28ADC;
  v11 = v0[19];

  return sub_199AA3D98((v0 + 8), v7, v8 & 1, v11, 0);
}

uint64_t sub_199B28ADC()
{
  v1 = *v0;

  *(v1 + 232) = *(v1 + 64);
  v2 = *(v1 + 88);
  *(v1 + 240) = *(v1 + 72);
  *(v1 + 256) = v2;
  v3 = *(v1 + 208);
  v4 = *(v1 + 200);

  return MEMORY[0x1EEE6DFA0](sub_199B28C24, v4, v3);
}

uint64_t sub_199B28C24()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v3 = *(v0 + 144);
  v9 = *(v0 + 256);
  v10 = *(v0 + 240);

  v4 = (v3 + *(v2 + 52));
  v5 = v4[1];
  v6 = v4[2];
  *(v0 + 16) = *v4;
  *(v0 + 32) = v5;
  *(v0 + 48) = v6;
  *(v0 + 104) = v1;
  *(v0 + 112) = v10;
  *(v0 + 128) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74D98);
  sub_199DF985C();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_199B28D08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8, a2);
  sub_199B2A4D4(v3, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  result = sub_199B2A538(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  *a3 = sub_199B2A59C;
  a3[1] = v8;
  return result;
}

void sub_199B28DF4(uint64_t a1@<X8>)
{
  v2 = sub_199DF97DC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v8 = sub_199DF71DC();
  v9 = [v7 initWithData_];

  if (v9)
  {
    v10 = v9;
    sub_199DF97BC();
    (*(v3 + 104))(v6, *MEMORY[0x1E6981630], v2);
    v9 = sub_199DF981C();

    (*(v3 + 8))(v6, v2);
    v11 = 0x1000000;
    v12 = 0x3FF0000000000000;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  *a1 = v9;
  *(a1 + 8) = v12;
  *(a1 + 16) = v11;
}

uint64_t sub_199B28FA8@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74F00);
  v54 = *(v2 - 8);
  v55 = v2;
  v52 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v2, v3);
  v53 = ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = (&v45 - v53);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73860);
  v5 = *(v47 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v47, v7);
  v8 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_199B2AFB0(v1, v57);
  v9 = swift_allocObject();
  sub_199B2A940(v57, v9 + 16);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73848);
  v49 = sub_199B2B00C(&qword_1EAF712A8, &qword_1EAF73848, &unk_199E3AD90, sub_199ADF6A4);
  sub_199DF989C();
  v10 = sub_199DF904C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF903C();
  sub_199B2B090();
  sub_199AD576C();
  v15 = v47;
  sub_199DF944C();
  (*(v11 + 8))(v14, v10);
  (*(v5 + 8))(&v45 - v8, v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74F08);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v46 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = &v45 - v46;
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v25 = &v45 - v24;
  MEMORY[0x1EEE9AC00](v23, v26);
  v27 = v51;
  sub_199B2AFB0(v51, v57);
  v28 = swift_allocObject();
  sub_199B2A940(v57, v28 + 16);
  sub_199DF989C();
  if (*v27)
  {
    v29 = 1.0;
  }

  else
  {
    v29 = 0.0;
  }

  (*(v5 + 32))(v25, &v45 - v8, v15);
  *&v25[*(v17 + 44)] = v29;
  v30 = sub_199AB7794(v25, v21, &qword_1EAF74F08);
  v51 = &v45;
  MEMORY[0x1EEE9AC00](v30, v31);
  v32 = v54;
  v33 = (&v45 - v53);
  v34 = *(v54 + 16);
  v35 = v48;
  v36 = v55;
  v37 = v34(&v45 - v53, v48, v55);
  v53 = &v45;
  MEMORY[0x1EEE9AC00](v37, v38);
  v39 = &v45 - v46;
  v40 = v21;
  sub_199AAD408(v21, &v45 - v46, &qword_1EAF74F08);
  v41 = v56;
  v34(v56, v33, v36);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74F10);
  sub_199AAD408(v39, v41 + *(v42 + 48), &qword_1EAF74F08);
  sub_199A79A04(v40, &qword_1EAF74F08);
  v43 = *(v32 + 8);
  v43(v35, v36);
  sub_199A79A04(v39, &qword_1EAF74F08);
  return (v43)(v33, v36);
}

double sub_199B29554@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_199DF9F4C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF9EEC();
  v7 = sub_199AA8A84(v6, MEMORY[0x1E69E7CC0]);
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  *&v48 = v7;
  *(&v48 + 1) = v9;
  sub_199A9C458();
  v10 = sub_199DF93CC();
  v12 = v11;
  LOBYTE(v7) = v13;
  sub_199DF920C();
  v14 = sub_199DF939C();
  v16 = v15;
  v18 = v17;
  v44 = v19;

  sub_199ACE3E8(v10, v12, v7 & 1);

  sub_199DF925C();
  v20 = sub_199DF932C();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_199ACE3E8(v14, v16, v18 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_199E39320;
  v28 = sub_199DF917C();
  *(inited + 32) = v28;
  v29 = sub_199DF918C();
  *(inited + 33) = v29;
  v30 = sub_199DF91AC();
  sub_199DF91AC();
  if (sub_199DF91AC() != v28)
  {
    v30 = sub_199DF91AC();
  }

  sub_199DF91AC();
  if (sub_199DF91AC() != v29)
  {
    v30 = sub_199DF91AC();
  }

  sub_199DF84FC();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = v24 & 1;
  v46 = v39;
  v45 = 0;
  sub_199DF9B5C();
  sub_199DF897C();
  *&v47[55] = v51;
  *&v47[71] = v52;
  *&v47[87] = v53;
  *&v47[103] = v54;
  *&v47[7] = v48;
  *&v47[23] = v49;
  *&v47[39] = v50;
  *a1 = v20;
  *(a1 + 8) = v22;
  *(a1 + 16) = v39;
  *(a1 + 24) = v26;
  *(a1 + 32) = v30;
  *(a1 + 40) = v32;
  *(a1 + 48) = v34;
  *(a1 + 56) = v36;
  *(a1 + 64) = v38;
  *(a1 + 72) = 0;
  v40 = *&v47[80];
  *(a1 + 137) = *&v47[64];
  *(a1 + 153) = v40;
  *(a1 + 169) = *&v47[96];
  *(a1 + 184) = *&v47[111];
  v41 = *&v47[16];
  *(a1 + 73) = *v47;
  *(a1 + 89) = v41;
  result = *&v47[32];
  v43 = *&v47[48];
  *(a1 + 105) = *&v47[32];
  *(a1 + 121) = v43;
  return result;
}

void *sub_199B298E8(uint64_t a1, SEL *a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result *a2];

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_199B29940@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_199DF9F4C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF9EEC();
  v7 = sub_199AA8A84(v6, MEMORY[0x1E69E7CC0]);
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  *&v48 = v7;
  *(&v48 + 1) = v9;
  sub_199A9C458();
  v10 = sub_199DF93CC();
  v12 = v11;
  LOBYTE(v7) = v13;
  sub_199DF920C();
  v14 = sub_199DF939C();
  v16 = v15;
  v18 = v17;
  v44 = v19;

  sub_199ACE3E8(v10, v12, v7 & 1);

  sub_199DF925C();
  v20 = sub_199DF932C();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_199ACE3E8(v14, v16, v18 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_199E39320;
  v28 = sub_199DF917C();
  *(inited + 32) = v28;
  v29 = sub_199DF918C();
  *(inited + 33) = v29;
  v30 = sub_199DF91AC();
  sub_199DF91AC();
  if (sub_199DF91AC() != v28)
  {
    v30 = sub_199DF91AC();
  }

  sub_199DF91AC();
  if (sub_199DF91AC() != v29)
  {
    v30 = sub_199DF91AC();
  }

  sub_199DF84FC();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = v24 & 1;
  v46 = v39;
  v45 = 0;
  sub_199DF9B5C();
  sub_199DF897C();
  *&v47[55] = v51;
  *&v47[71] = v52;
  *&v47[87] = v53;
  *&v47[103] = v54;
  *&v47[7] = v48;
  *&v47[23] = v49;
  *&v47[39] = v50;
  *a1 = v20;
  *(a1 + 8) = v22;
  *(a1 + 16) = v39;
  *(a1 + 24) = v26;
  *(a1 + 32) = v30;
  *(a1 + 40) = v32;
  *(a1 + 48) = v34;
  *(a1 + 56) = v36;
  *(a1 + 64) = v38;
  *(a1 + 72) = 0;
  v40 = *&v47[80];
  *(a1 + 137) = *&v47[64];
  *(a1 + 153) = v40;
  *(a1 + 169) = *&v47[96];
  *(a1 + 184) = *&v47[111];
  v41 = *&v47[16];
  *(a1 + 73) = *v47;
  *(a1 + 89) = v41;
  result = *&v47[32];
  v43 = *&v47[48];
  *(a1 + 105) = *&v47[32];
  *(a1 + 121) = v43;
  return result;
}

uint64_t type metadata accessor for CNPosterOnboardingWelcomeView()
{
  result = qword_1EAF71978;
  if (!qword_1EAF71978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_199B29D98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74ED8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_199AAD408(a1, &v6 - v4, &qword_1EAF74ED8);
  return sub_199DF8B4C();
}

uint64_t sub_199B29E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return a6(v11);
}

id sub_199B29F10(uint64_t a1, char a2, char a3, double a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74D58);
  v14 = v13 - 8;
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = (&v40 - v20);
  *v21 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF75060);
  swift_storeEnumTagMultiPayload();
  v22 = type metadata accessor for CNPosterOnboardingWelcomeView();
  *(v21 + v22[5]) = a1;
  *(v21 + v22[6]) = a2;
  *(v21 + v22[7]) = a3;
  *(v21 + v22[8]) = a4;
  swift_unknownObjectWeakInit();
  v23 = v21 + v22[10];
  LOBYTE(v41) = 0;
  sub_199DF983C();
  v24 = *(&v44 + 1);
  *v23 = v44;
  *(v23 + 1) = v24;
  v25 = v21 + v22[11];
  LOBYTE(v41) = 0;
  sub_199DF983C();
  v26 = *(&v44 + 1);
  *v25 = v44;
  *(v25 + 1) = v26;
  v27 = v21 + v22[12];
  LOBYTE(v41) = !UIAccessibilityIsVideoAutoplayEnabled();
  sub_199DF983C();
  v28 = *(&v44 + 1);
  *v27 = v44;
  *(v27 + 1) = v28;
  v29 = (v21 + v22[13]);
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74D60);
  sub_199DF983C();
  v30 = v45;
  v31 = v46;
  *v29 = v44;
  v29[1] = v30;
  v29[2] = v31;
  v32 = v21 + v22[14];
  *v32 = swift_getKeyPath();
  v32[8] = 0;
  KeyPath = swift_getKeyPath();
  v34 = (v21 + *(v14 + 44));
  *v34 = KeyPath;
  v34[1] = a6;
  sub_199AAD408(v21, v18, &qword_1EAF74D58);
  v35 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74D68));
  v36 = a6;
  *&v7[OBJC_IVAR____TtC10ContactsUI36CNPosterOnboardingWelcomeViewWrapper_hostingController] = sub_199DF8DFC();
  v37 = type metadata accessor for CNPosterOnboardingWelcomeViewWrapper();
  v40.receiver = v7;
  v40.super_class = v37;
  v38 = objc_msgSendSuper2(&v40, sel_init);
  sub_199A79A04(v21, &qword_1EAF74D58);
  return v38;
}

void sub_199B2A30C()
{
  sub_199B2A460();
  if (v0 <= 0x3F)
  {
    sub_199A7DDB0();
    if (v1 <= 0x3F)
    {
      sub_199ACDA98();
      if (v2 <= 0x3F)
      {
        sub_199B15A6C(319, &qword_1EAF711E0, &qword_1EAF74D60, &unk_199E3E850, MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          sub_199B15A6C(319, &qword_1EAF713E0, &qword_1EAF72E80, &unk_199E398B0, MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_199B2A460()
{
  if (!qword_1EAF713E8)
  {
    sub_199DF886C();
    v0 = sub_199DF859C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF713E8);
    }
  }
}

uint64_t sub_199B2A4D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CNPosterOnboardingWelcomeView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_199B2A538(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CNPosterOnboardingWelcomeView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_199B2A59C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CNPosterOnboardingWelcomeView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_199B24AC8(v4, a1);
}

uint64_t sub_199B2A634(uint64_t a1)
{
  v4 = *(type metadata accessor for CNPosterOnboardingWelcomeView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_199AA7314;

  return sub_199B28878(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_199B2A754()
{
  result = qword_1EAF71228;
  if (!qword_1EAF71228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74DA8);
    sub_199AA0B90(&qword_1EAF71178, &qword_1EAF74DC8);
    sub_199AA0B90(&qword_1EAF71188, &qword_1EAF74DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71228);
  }

  return result;
}

unint64_t sub_199B2A834()
{
  result = qword_1EAF712C0;
  if (!qword_1EAF712C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74DD8);
    sub_199B2B00C(&qword_1EAF71350, &qword_1EAF74DE0, &unk_199E3E9F8, sub_199B2A8EC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF712C0);
  }

  return result;
}

unint64_t sub_199B2A8EC()
{
  result = qword_1EAF71A80[0];
  if (!qword_1EAF71A80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EAF71A80);
  }

  return result;
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for CNPosterOnboardingWelcomeView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF75060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_199DF886C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  MEMORY[0x19A8FA290](v5 + v1[9]);

  v7 = (v5 + v1[13]);
  if (*v7)
  {
  }

  sub_199AC6288(*(v5 + v1[14]), *(v5 + v1[14] + 8));

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_199B2AB44(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CNPosterOnboardingWelcomeView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_199B2ABC4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CNPosterOnboardingWelcomeView() - 8);
  v4 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_199B27594(v4, a1);
}

unint64_t sub_199B2AC48()
{
  result = qword_1EAF74EA8;
  if (!qword_1EAF74EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74E80);
    sub_199B2AD00();
    sub_199AA0B90(&qword_1EAF74EC8, &qword_1EAF73800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74EA8);
  }

  return result;
}

unint64_t sub_199B2AD00()
{
  result = qword_1EAF74EB0;
  if (!qword_1EAF74EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74E78);
    sub_199B2ADB8();
    sub_199AA0B90(&qword_1EAF71208, &qword_1EAF74300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74EB0);
  }

  return result;
}

unint64_t sub_199B2ADB8()
{
  result = qword_1EAF74EB8;
  if (!qword_1EAF74EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74E70);
    sub_199AA0B90(&qword_1EAF74EC0, &qword_1EAF74EA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74EB8);
  }

  return result;
}

unint64_t sub_199B2AE70()
{
  result = qword_1EAF71A50;
  if (!qword_1EAF71A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71A50);
  }

  return result;
}

uint64_t sub_199B2AEC4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_199B2AF18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_199B2B00C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_199B2B090()
{
  result = qword_1EAF711A0;
  if (!qword_1EAF711A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF73860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF711A0);
  }

  return result;
}

unint64_t sub_199B2B10C()
{
  result = qword_1EAF71288;
  if (!qword_1EAF71288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74F18);
    sub_199B2B190();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71288);
  }

  return result;
}

unint64_t sub_199B2B190()
{
  result = qword_1EAF71290;
  if (!qword_1EAF71290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74F20);
    sub_199B2B248();
    sub_199AA0B90(&unk_1EAF713C8, &qword_1EAF74F30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71290);
  }

  return result;
}

unint64_t sub_199B2B248()
{
  result = qword_1EAF712E0;
  if (!qword_1EAF712E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74F28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF712E0);
  }

  return result;
}

uint64_t sub_199B2B2CC(uint64_t a1)
{
  v2 = v1;
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = sub_199DF71BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25[0] = 0;
  v10 = [ObjCClassFromMetadata archiveCNConfiguration:a1 error:v25];
  v11 = v25[0];
  if (v10)
  {
    v12 = v10;
    sub_199DF719C();
    v13 = v11;

    v14 = sub_199DF71CC();
    if (v1)
    {
      (*(v5 + 8))(v8, v4);
    }

    else
    {
      v2 = v14;
      v17 = [objc_opt_self() defaultManager];
      v18 = sub_199DF718C();
      v25[0] = 0;
      v19 = [v17 removeItemAtURL:v18 error:v25];

      if (v19)
      {
        v20 = *(v5 + 8);
        v21 = v25[0];
        v20(v8, v4);
      }

      else
      {
        v22 = v25[0];
        v23 = sub_199DF717C();

        swift_willThrow();
        sub_199DFA31C();
        v24 = CNUILogPosters();
        sub_199DF7FEC();

        (*(v5 + 8))(v8, v4);
      }
    }
  }

  else
  {
    v15 = v25[0];
    sub_199DF717C();

    swift_willThrow();
  }

  return v2;
}

uint64_t View.onPosterLayoutPreferenceChange(onChange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_199DF7E1C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;

  sub_199DF7E0C();
  MEMORY[0x19A8F73F0](v12, a3, v8, a4);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_199B2B714(uint64_t a1, void (*a2)(__int128 *))
{
  v4 = sub_199DF7A7C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v27 - v15;
  if (a1)
  {
    sub_199DF7D4C();
    (*(v5 + 32))(v16, v13, v4);
    (*(v5 + 16))(v9, v16, v4);
    sub_199DF7A6C();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = *(v5 + 8);
    v25(v9, v4);
    *&v27 = v18;
    *(&v27 + 1) = v20;
    *&v28 = v22;
    *(&v28 + 1) = v24;
    v29 = 0;
    a2(&v27);
    return (v25)(v16, v4);
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v29 = 1;
    return (a2)(&v27);
  }
}

unint64_t sub_199B2B90C()
{
  result = qword_1EAF74F40;
  if (!qword_1EAF74F40)
  {
    sub_199DF7E1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74F40);
  }

  return result;
}

uint64_t sub_199B2B964(unint64_t a1, uint64_t a2)
{
  v4 = a1;
  v17 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_199DFA87C())
  {
    v6 = 0;
    v7 = v4 & 0xC000000000000001;
    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v14 = i;
    v15 = v4;
    while (1)
    {
      if (v7)
      {
        v9 = MEMORY[0x19A8F8520](v6, v4);
      }

      else
      {
        if (v6 >= *(v8 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v6 + 32);
      }

      v10 = v9;
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v16 = v9;
      v12 = sub_199B2D678(&v16);
      if (v2)
      {

        return a2;
      }

      if (v12)
      {
        sub_199DFA77C();
        sub_199DFA7AC();
        sub_199DFA7BC();
        sub_199DFA78C();
        i = v14;
        v4 = v15;
      }

      else
      {
      }

      ++v6;
      if (v11 == i)
      {
        a2 = v17;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a2 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return a2;
}

uint64_t sub_199B2BAFC(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_199DFA87C();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_199B2BBDC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  return v1;
}

uint64_t sub_199B2BC48()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74FB8);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for CNWallpaperSuggestionsGallerySource(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_199A79A04(v8, &unk_1EAF74FB8);
  }

  sub_199B2F100(v8, v13);
  sub_199B2F100(v13, v4);
  (*(v10 + 56))(v4, 0, 1, v9);
  v15 = OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_lastSelectedSource;
  swift_beginAccess();
  sub_199B2F164(v4, v0 + v15);
  return swift_endAccess();
}

void sub_199B2BE70(void *a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74FB8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v38 - v7;
  v9 = type metadata accessor for CNWallpaperSuggestionsGallerySource(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v38[0]) = 1;
  v14 = v2;
  sub_199DF842C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_199A79A04(v8, &unk_1EAF74FB8);
    return;
  }

  sub_199B2F100(v8, v13);
  v15 = v13[*(v9 + 20)];
  if (v15 > 2)
  {
    if (v15 == 4)
    {
      sub_199B2F938(v13, type metadata accessor for CNWallpaperSuggestionsGallerySource);
      return;
    }

    v16 = 0;
    v17 = 1;
  }

  else
  {
    v16 = v15 >= 2;
    if (v15 >= 2)
    {
      v17 = 0;
    }

    else
    {
      v17 = 2;
    }
  }

  v18 = OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_contact;
  v19 = [objc_allocWithZone(CNPRUISIncomingCallPosterContext) initWithContact:*&v14[OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_contact] showName:1];
  v20 = *&v14[v18];
  if (v16)
  {
    v21 = objc_allocWithZone(MEMORY[0x1E695CF18]);
    v22 = v20;
    v23 = [v21 initWithContact_];
    [v23 setMemojiMetadata_];
    v24 = [v23 freeze];
  }

  else
  {
    v24 = v20;
  }

  if (qword_1EAF718E0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  v25 = sub_199B760E0(v17, v24, 0, v38[0], v38[1], a2 & 1);

  v26 = objc_allocWithZone(CNPRUISPosterEditingViewController);
  v27 = v25;
  v28 = v19;
  v29 = sub_199DF9F5C();

  v30 = [v26 initWithExtensionIdentifier:v29 configuration:v27 context:v28];

  [v30 setShowsContentWhenReady_];
  [v30 setDelegate_];
  v31 = v30;
  v32 = [v31 view];
  if (v32)
  {
    v33 = v32;
    [v32 setHidden_];

    v34 = [a1 keyWindow];
    if (!v34)
    {
      v36 = v31;
      goto LABEL_20;
    }

    v35 = v34;
    v36 = [v31 view];

    if (v36)
    {
      [v35 addSubview_];

      v28 = v24;
      v24 = v35;
LABEL_20:

      sub_199B2F938(v13, type metadata accessor for CNWallpaperSuggestionsGallerySource);
      v37 = *&v14[OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_editorVC];
      *&v14[OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_editorVC] = v31;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_199B2C42C(void *a1)
{
  result = [a1 view];
  if (result)
  {
    v4 = result;
    [result removeFromSuperview];

    result = [a1 view];
    if (result)
    {
      v5 = result;
      [result setHidden_];

      swift_getKeyPath();
      swift_getKeyPath();
      v6 = v1;
      sub_199DF842C();
      swift_getKeyPath();
      swift_getKeyPath();
      v7 = v6;
      return sub_199DF842C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_199B2C5BC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();
}

uint64_t sub_199B2C640()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  return v1;
}

void *sub_199B2C6C8()
{
  if (*(v0 + OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_suggestionFormat))
  {
    v16 = sub_199B2C908();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A68);
    v1 = (type metadata accessor for CNWallpaperSuggestionsGallerySource(0) - 8);
    v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_199E37D40;
    v4 = v3 + v2;
    v5 = OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_contact;
    v6 = *(v0 + OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_contact);
    v7 = sub_199DF7EFC();

    if (v7)
    {
      v8 = 3;
    }

    else
    {
      v8 = 5;
    }

    v9 = *(v0 + v5);
    sub_199DF728C();
    *(v4 + v1[7]) = v8;
  }

  else
  {
    v16 = sub_199B2C908();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A68);
    v1 = (type metadata accessor for CNWallpaperSuggestionsGallerySource(0) - 8);
    v10 = *(*v1 + 72);
    v11 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_199E39320;
    v12 = v3 + v11;
    v13 = OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_contact;
    v14 = *(v0 + OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_contact);
    sub_199DF728C();
    *(v12 + v1[7]) = 3;
    *(v12 + v1[8]) = v14;
    v4 = v12 + v10;
    v9 = *(v0 + v13);
    sub_199DF728C();
    *(v4 + v1[7]) = 4;
  }

  *(v4 + v1[8]) = v9;
  sub_199B43728(v3);
  return v16;
}

void *sub_199B2C908()
{
  v1 = type metadata accessor for CNWallpaperSuggestionsGallerySource(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v27 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v27 - v12;
  v14 = objc_opt_self();
  v15 = &builtinLabelsForProperty__labelsForProperty;
  if ([v14 allowsCameraAccess])
  {
    v16 = *(v0 + OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_contact);
    sub_199DF728C();
    v13[*(v1 + 20)] = 0;
    *&v13[*(v1 + 24)] = v16;
    v17 = sub_199AB2B54(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v19 = v17[2];
    v18 = v17[3];
    if (v19 >= v18 >> 1)
    {
      v17 = sub_199AB2B54(v18 > 1, v19 + 1, 1, v17);
    }

    v17[2] = v19 + 1;
    sub_199B2F100(v13, v17 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v19);
    v15 = &builtinLabelsForProperty__labelsForProperty;
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  if ([v14 allowsPhotoLibraryAccess])
  {
    v20 = *(v0 + v15[447]);
    sub_199DF728C();
    v9[*(v1 + 20)] = 1;
    *&v9[*(v1 + 24)] = v20;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_199AB2B54(0, v17[2] + 1, 1, v17);
    }

    v22 = v17[2];
    v21 = v17[3];
    if (v22 >= v21 >> 1)
    {
      v17 = sub_199AB2B54(v21 > 1, v22 + 1, 1, v17);
    }

    v17[2] = v22 + 1;
    sub_199B2F100(v9, v17 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v22);
  }

  if ([v14 allowsAvatarUI])
  {
    v23 = *(v0 + v15[447]);
    sub_199DF728C();
    v5[*(v1 + 20)] = 2;
    *&v5[*(v1 + 24)] = v23;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_199AB2B54(0, v17[2] + 1, 1, v17);
    }

    v25 = v17[2];
    v24 = v17[3];
    if (v25 >= v24 >> 1)
    {
      v17 = sub_199AB2B54(v24 > 1, v25 + 1, 1, v17);
    }

    v17[2] = v25 + 1;
    sub_199B2F100(v5, v17 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v25);
  }

  return v17;
}

uint64_t sub_199B2CC78()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  return v1;
}

uint64_t sub_199B2CCE4()
{
  v97[1] = *MEMORY[0x1E69E9840];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF75000);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v86 - v3;
  v5 = sub_199DF886C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v86 - v12;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  if (!v97[0] || (, swift_getKeyPath(), swift_getKeyPath(), sub_199DF841C(), , result = , v97[0]) && (sub_199B040FC(v97[0], MEMORY[0x1E69E7CC0]), v16 = v15, result = , (v16 & 1) != 0))
  {
    if (v0[OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_suggestionFormat])
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v97[0] = MEMORY[0x1E69E7CC0];
      v17 = v0;
      return sub_199DF842C();
    }

    v91 = v6;
    v18 = [objc_allocWithZone(MEMORY[0x1E695CDA8]) init];
    v94 = v0;
    v19 = v18;
    v20 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF722B0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_199E37D40;
    v90 = OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_contact;
    v22 = [*&v94[OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_contact] identifier];
    v23 = sub_199DF9F8C();
    v25 = v24;

    *(v21 + 32) = v23;
    *(v21 + 40) = v25;
    v26 = sub_199DFA0BC();

    v27 = [v20 recentImagesRequestForContactIdentifiers_];

    v97[0] = 0;
    v93 = v19;
    v28 = v19;
    v29 = v94;
    v30 = [v28 performFetchRequest:v27 error:v97];
    v31 = v97[0];
    v89 = sub_199A7A02C(0, &qword_1EAF710C0);
    v32 = sub_199DFA0CC();
    v33 = v31;

    v97[0] = v32;
    v34 = &v29[OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_constants];
    v35 = *&v29[OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_constants];
    if (v35 + 0x4000000000000000 < 0)
    {
      __break(1u);
    }

    else
    {
      v92 = v33;
      v36 = 2 * v35;
      sub_199DF81AC();
      v37 = sub_199B2C6C8()[2];

      v95 = v36 - v37;
      if (!__OFSUB__(v36, v37))
      {
        v88 = v32 >> 62;
        if (!(v32 >> 62))
        {
          v38 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_10;
        }

LABEL_27:
        v38 = sub_199DFA87C();
LABEL_10:

        if (v38 >= v95)
        {
          v63 = v93;
        }

        else
        {
          v86 = v27;
          v87 = objc_opt_self();
          v41 = [objc_allocWithZone(CNVisualIdentity) initWithContact_];
          v42 = *(v34 + 1);
          v43 = *(v34 + 2);
          sub_199AAD408(&v29[OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel__layoutDirection], v4, &unk_1EAF75000);
          sub_199AC3B48(v13);
          sub_199A79A04(v4, &unk_1EAF75000);
          v44 = v91;
          v91[13](v9, *MEMORY[0x1E697E7D8], v5);
          v45 = sub_199DF885C();
          v46 = v44[1];
          v46(v9, v5);
          v46(v13, v5);
          v47 = [v87 providerItemWithRandomBackgroundColorForVisualIdentity:v41 size:v45 & 1 RTL:{v42, v43}];

          objc_opt_self();
          v48 = swift_dynamicCastObjCClassUnconditional();
          v49 = [v48 monogramText];
          v50 = sub_199DF9F8C();
          v52 = v51;

          v53 = HIBYTE(v52) & 0xF;
          if ((v52 & 0x2000000000000000) == 0)
          {
            v53 = v50 & 0xFFFFFFFFFFFFLL;
          }

          if (v53)
          {
            v54 = [v48 createColorVariantItems];
            sub_199A7A02C(0, &qword_1EAF71030);
            v55 = sub_199DFA0CC();

            v56 = sub_199B2BAFC(v55, sub_199AB3368, sub_199B48784);
            v57 = v56;
            if (v56 >> 62)
            {
              v58 = sub_199DFA87C();
              if (v58)
              {
                goto LABEL_16;
              }
            }

            else
            {
              v58 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v58)
              {
LABEL_16:
                v91 = v47;
                v96 = MEMORY[0x1E69E7CC0];
                sub_199DFA79C();
                if (v58 < 0)
                {
                  goto LABEL_68;
                }

                v59 = 0;
                do
                {
                  if ((v57 & 0xC000000000000001) != 0)
                  {
                    v60 = MEMORY[0x19A8F8520](v59, v57);
                  }

                  else
                  {
                    v60 = *(v57 + 8 * v59 + 32);
                  }

                  v61 = v60;
                  ++v59;
                  v62 = [v60 contactImageForMetadataStore];

                  sub_199DFA77C();
                  v52 = *(v96 + 16);
                  sub_199DFA7AC();
                  sub_199DFA7BC();
                  sub_199DFA78C();
                }

                while (v58 != v59);

                v64 = v96;
                v47 = v91;
LABEL_30:
                v65 = sub_199B2B964(v64, v97);
                if (v88)
                {
                  v66 = sub_199DFA87C();
                }

                else
                {
                  v66 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v67 = v95 - v66;
                if (__OFSUB__(v95, v66))
                {
                  __break(1u);
                }

                else if ((v67 & 0x8000000000000000) == 0)
                {
                  v52 = v65 >> 62;
                  if (!(v65 >> 62))
                  {
                    v68 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    if (v68 >= v67)
                    {
                      v69 = v67;
                    }

                    else
                    {
                      v69 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    }

                    if (v67)
                    {
                      v70 = v69;
                    }

                    else
                    {
                      v70 = 0;
                    }

                    if (v68 >= v70)
                    {
LABEL_43:
                      if ((v65 & 0xC000000000000001) != 0)
                      {
                        sub_199DF81AC();
                        if (v70)
                        {
                          v71 = 0;
                          do
                          {
                            v72 = v71 + 1;
                            sub_199DFA73C();
                            v71 = v72;
                          }

                          while (v70 != v72);
                        }
                      }

                      else
                      {
                        sub_199DF81AC();
                      }

                      if (v52)
                      {
                        v74 = sub_199DFA88C();
                        v78 = v77;
                        v80 = v79;
                        v82 = v81;

                        v76 = v82;
                        v75 = v78;
                        v73 = v80;
                      }

                      else
                      {
                        v73 = 0;
                        v74 = v65 & 0xFFFFFFFFFFFFFF8;
                        v75 = (v65 & 0xFFFFFFFFFFFFFF8) + 32;
                        v76 = (2 * v70) | 1;
                      }

                      v63 = v93;
                      v27 = v86;
                      sub_199B49310(v74, v75, v73, v76);

                      v39 = swift_unknownObjectRelease();
                      goto LABEL_53;
                    }

                    goto LABEL_67;
                  }

LABEL_57:
                  v83 = sub_199DFA87C();
                  result = sub_199DFA87C();
                  if (result < 0)
                  {
                    __break(1u);
                    return result;
                  }

                  if (v83 >= v67)
                  {
                    v84 = v67;
                  }

                  else
                  {
                    v84 = v83;
                  }

                  if (v83 < 0)
                  {
                    v84 = v67;
                  }

                  if (v67)
                  {
                    v70 = v84;
                  }

                  else
                  {
                    v70 = 0;
                  }

                  v85 = sub_199DFA87C();
                  v29 = v94;
                  if (v85 >= v70)
                  {
                    goto LABEL_43;
                  }

LABEL_67:
                  __break(1u);
LABEL_68:
                  __break(1u);
                }

                __break(1u);
                goto LABEL_57;
              }
            }

            v64 = MEMORY[0x1E69E7CC0];
            goto LABEL_30;
          }

          v63 = v93;
          v27 = v86;
        }

LABEL_53:
        MEMORY[0x1EEE9AC00](v39, v40);
        *(&v86 - 4) = v29;
        *(&v86 - 3) = v97;
        *(&v86 - 2) = v95;
        sub_199DF9BAC();
        sub_199DF872C();
      }
    }

    __break(1u);
    goto LABEL_27;
  }

  return result;
}

uint64_t sub_199B2D678(id *a1)
{
  v26 = *a1;
  v1 = sub_199DF81AC();
  v2 = sub_199B2BAFC(v1, sub_199AB3368, sub_199B48924);
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_199DFA87C())
  {
    v5 = 0;
    v6 = v3 & 0xC000000000000001;
    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = &selRef_showContactPhotoPosterCell;
    v24 = v3 & 0xC000000000000001;
    v25 = v3;
    v23 = v3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x19A8F8520](v5, v3);
      }

      else
      {
        if (v5 >= *(v7 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v3 + 8 * v5 + 32);
      }

      v10 = v9;
      v11 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ([v9 v8[105]] == 1)
      {
        v12 = i;
        v13 = [v10 variant];
        v14 = sub_199DF9F8C();
        v16 = v15;

        v17 = [v26 variant];
        v18 = sub_199DF9F8C();
        v20 = v19;

        if (v14 == v18 && v16 == v20)
        {

          return 0;
        }

        v21 = sub_199DFA99C();

        i = v12;
        v6 = v24;
        v3 = v25;
        v7 = v23;
        v8 = &selRef_showContactPhotoPosterCell;
        if (v21)
        {

          return 0;
        }
      }

      else
      {
      }

      ++v5;
      if (v11 == i)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_20:

  return 1;
}

uint64_t sub_199B2D89C(void *a1, uint64_t *a2, unint64_t a3)
{
  v5 = *a2;
  if (*a2 >> 62)
  {
    v6 = sub_199DFA87C();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    goto LABEL_12;
  }

  v19 = MEMORY[0x1E69E7CC0];
  sub_199DF81AC();
  result = sub_199DFA79C();
  if ((v6 & 0x8000000000000000) == 0)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = 0;
      do
      {
        v10 = v9 + 1;
        MEMORY[0x19A8F8520]();
        sub_199DFA77C();
        sub_199DFA7AC();
        sub_199DFA7BC();
        sub_199DFA78C();
        v9 = v10;
      }

      while (v6 != v10);
    }

    else
    {
      v11 = 32;
      do
      {
        v12 = *(v5 + v11);
        sub_199DFA77C();
        sub_199DFA7AC();
        sub_199DFA7BC();
        sub_199DFA78C();
        v11 += 8;
        --v6;
      }

      while (v6);
    }

    v7 = v19;
LABEL_12:
    if ((a3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v13 = *(v7 + 16);
      if (v13 >= a3)
      {
        v13 = a3;
      }

      v14 = 2 * v13;
      if (a3)
      {
        a3 = v14 + 1;
      }

      else
      {
        a3 = 1;
      }

      sub_199DFA9BC();
      swift_unknownObjectRetain_n();
      v15 = swift_dynamicCastClass();
      if (!v15)
      {
        swift_unknownObjectRelease();
        v15 = MEMORY[0x1E69E7CC0];
      }

      v16 = *(v15 + 16);

      if (v16 == a3 >> 1)
      {
        v17 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v17)
        {
LABEL_23:
          swift_getKeyPath();
          swift_getKeyPath();
          v18 = a1;
          return sub_199DF842C();
        }

LABEL_22:
        swift_unknownObjectRelease();
        goto LABEL_23;
      }
    }

    swift_unknownObjectRelease();
    sub_199B2F5C4(v7, v7 + 32, 0, a3);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

void sub_199B2DAEC(uint64_t *a1@<X8>)
{
  v3 = [*v1 identifier];
  v4 = sub_199DF9F8C();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

id sub_199B2DB98()
{
  v1 = type metadata accessor for CNWallpaperSuggestionsGallerySource.PickerType(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74FC8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13 - v8;
  v10 = [objc_allocWithZone(MEMORY[0x1E69DCAD0]) init];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  if ((*(v2 + 48))(v9, 1, v1))
  {
    sub_199A79A04(v9, &qword_1EAF74FC8);
    v11 = 1;
  }

  else
  {
    sub_199B2F504(v9, v5);
    sub_199A79A04(v9, &qword_1EAF74FC8);
    v11 = *&v5[*(v1 + 20)];
    sub_199B2F938(v5, type metadata accessor for CNWallpaperSuggestionsGallerySource.PickerType);
  }

  [v10 setSourceType_];
  [v10 setDelegate_];
  return v10;
}

id sub_199B2DDD8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNWallpaperSuggestionsGalleryViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for CNWallpaperSuggestionsGalleryViewModel()
{
  result = qword_1EAF716A0;
  if (!qword_1EAF716A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_199B2E19C()
{
  sub_199B2E5C8(319, &qword_1EAF71400, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCB8]);
  if (v0 <= 0x3F)
  {
    sub_199B2E578();
    if (v1 <= 0x3F)
    {
      sub_199B2E62C(319, &unk_1EAF71450, &unk_1EAF74FB8);
      if (v2 <= 0x3F)
      {
        sub_199B2E62C(319, &qword_1EAF71460, &qword_1EAF74FC8);
        if (v3 <= 0x3F)
        {
          sub_199B2E62C(319, &qword_1EAF71410, &qword_1EAF72748);
          if (v4 <= 0x3F)
          {
            sub_199B2E62C(319, &qword_1EAF71440, &qword_1EAF72310);
            if (v5 <= 0x3F)
            {
              sub_199B2E62C(319, &qword_1EAF71420, &unk_1EAF740A0);
              if (v6 <= 0x3F)
              {
                sub_199B2E5C8(319, &qword_1EAF71860, type metadata accessor for CNWallpaperSuggestionsGallerySource, MEMORY[0x1E69E6720]);
                if (v7 <= 0x3F)
                {
                  sub_199B2E62C(319, &qword_1EAF71448, &unk_1EAF74FD0);
                  if (v8 <= 0x3F)
                  {
                    sub_199B2E62C(319, &qword_1EAF71438, &unk_1EAF74FE0);
                    if (v9 <= 0x3F)
                    {
                      swift_updateClassMetadata2();
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

void sub_199B2E578()
{
  if (!qword_1EAF71428)
  {
    v0 = sub_199DF843C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF71428);
    }
  }
}

void sub_199B2E5C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_199B2E62C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_199DF843C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_199B2E680@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CNWallpaperSuggestionsGalleryViewModel();
  result = sub_199DF83BC();
  *a1 = result;
  return result;
}

void sub_199B2E6C0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for CNWallpaperSuggestionsGallerySource.PickerType(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74FC8);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &aBlock[-1] - v13;
  if (*(a2 + 16))
  {
    v15 = sub_199B4BCF0(*MEMORY[0x1E69DDE10]);
    if (v16)
    {
      sub_199A9DA04(*(a2 + 56) + 32 * v15, aBlock);
      sub_199A7A02C(0, qword_1EAF738C0);
      if (swift_dynamicCast())
      {
        v17 = aBlock[6];
        v18 = swift_allocObject();
        *(v18 + 16) = 0;
        *(v18 + 24) = 0;
        v19 = swift_allocObject();
        v19[2] = v3;
        v19[3] = v17;
        v19[4] = v18;
        v19[5] = a1;
        v30 = v19;
        swift_getKeyPath();
        swift_getKeyPath();
        v20 = a1;
        v21 = v3;

        v22 = v17;
        sub_199DF841C();

        if ((*(v7 + 48))(v14, 1, v6))
        {
          sub_199A79A04(v14, &qword_1EAF74FC8);
        }

        else
        {
          sub_199B2F504(v14, v10);
          sub_199A79A04(v14, &qword_1EAF74FC8);
          v23 = *(v6 + 20);
          v24 = v22;
          v25 = *&v10[v23];
          sub_199B2F938(v10, type metadata accessor for CNWallpaperSuggestionsGallerySource.PickerType);
          v26 = v25 == 1;
          v22 = v24;
          if (v26)
          {
            v27 = objc_opt_self();
            v28 = swift_allocObject();
            v28[2] = v18;
            v28[3] = sub_199B2F4F8;
            v28[4] = v30;
            aBlock[4] = sub_199B2F568;
            aBlock[5] = v28;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_199B7DECC;
            aBlock[3] = &block_descriptor_12;
            v29 = _Block_copy(aBlock);

            [v27 createAssetFromImage:v22 completionHandler:v29];

            _Block_release(v29);

            return;
          }
        }

        sub_199B2EA98(v21, v22, v18, v20);
      }
    }
  }
}

id sub_199B2EA98(void *a1, void *a2, uint64_t a3, void *a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = a1;
  v8 = a2;
  sub_199DF842C();
  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF81AC();
  v9 = v7;
  sub_199DF842C();
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = v9;
  sub_199DF842C();
  return [a4 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_199B2EBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_199DF9DFC();
  v25 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_199DF9E1C();
  v15 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v16);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  sub_199DF81AC();

  sub_199A7A02C(0, &qword_1EAF71D20);
  v19 = sub_199DFA39C();
  v20 = swift_allocObject();
  *(v20 + 16) = a5;
  *(v20 + 24) = a6;
  aBlock[4] = sub_199B12788;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_199AB45A0;
  aBlock[3] = &block_descriptor_89_0;
  v21 = _Block_copy(aBlock);

  sub_199DF9E0C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_199B2F57C(&qword_1EAF71CE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74150);
  sub_199ABC0BC();
  sub_199DFA68C();
  MEMORY[0x19A8F8190](0, v18, v14, v21);
  _Block_release(v21);

  (*(v25 + 8))(v14, v11);
  return (*(v15 + 8))(v18, v24);
}

uint64_t getEnumTagSinglePayload for CNWallpaperSuggestionsGalleryViewModel.Constants(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CNWallpaperSuggestionsGalleryViewModel.Constants(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_199B2F010@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  *a1 = v3;
  return result;
}

uint64_t sub_199B2F090(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_199DF842C();
}

uint64_t sub_199B2F100(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CNWallpaperSuggestionsGallerySource(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_199B2F164(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74FB8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_199B2F1D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();
}

uint64_t sub_199B2F250(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74FC8);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v15 - v10;
  sub_199AAD408(a1, &v15 - v10, &qword_1EAF74FC8);
  v12 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199AAD408(v11, v8, &qword_1EAF74FC8);
  v13 = v12;
  sub_199DF842C();
  return sub_199A79A04(v11, &qword_1EAF74FC8);
}

uint64_t sub_199B2F37C(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_199DF842C();
}

uint64_t sub_199B2F404@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  *a1 = v3;
  return result;
}

uint64_t sub_199B2F480(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF81AC();
  v3 = v2;
  return sub_199DF842C();
}

uint64_t sub_199B2F504(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CNWallpaperSuggestionsGallerySource.PickerType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_199B2F57C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_199B2F5C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF75010);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_199B2F69C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_199A7A02C(0, &qword_1ED615BF0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_199B2F7B0(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_199DFA00C();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x1EEE69100](a1, a2, a3, a4);
}

uint64_t sub_199B2F84C(void *a1)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = a1;
    v4 = v1;
    sub_199DF842C();
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = v4;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v6 = v1;
  }

  return sub_199DF842C();
}

uint64_t sub_199B2F938(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_199B2F998(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v99 = a3;
  v100 = a4;
  v98 = a2;
  v97 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75058);
  v95 = *(v5 - 8);
  v96 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v94 = &v73 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75050);
  v92 = *(v8 - 8);
  v93 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v91 = &v73 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75048);
  v89 = *(v11 - 8);
  v90 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v88 = &v73 - v13;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75040);
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87, v14);
  v85 = &v73 - v15;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75038);
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84, v16);
  v82 = &v73 - v17;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75030);
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81, v18);
  v79 = &v73 - v19;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74FC8);
  MEMORY[0x1EEE9AC00](v78, v20);
  v77 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v76 = &v73 - v24;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75028);
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75, v25);
  v27 = &v73 - v26;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74FB8);
  MEMORY[0x1EEE9AC00](v73, v28);
  v30 = &v73 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v73 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75020);
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v37);
  v39 = &v73 - v38;
  v40 = OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel__layoutDirection;
  *&v4[v40] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF75060);
  swift_storeEnumTagMultiPayload();
  v41 = OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel__isConfiguringPosterEditor;
  LOBYTE(v104) = 0;
  sub_199DF83FC();
  v42 = *(v36 + 32);
  v42(&v4[v41], v39, v35);
  v43 = OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel__shouldPresentPosterEditor;
  LOBYTE(v104) = 0;
  sub_199DF83FC();
  v42(&v4[v43], v39, v35);
  v44 = OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel__shouldPresentPosterPhotoPicker;
  LOBYTE(v104) = 0;
  sub_199DF83FC();
  v42(&v4[v44], v39, v35);
  v45 = OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel__selectedSource;
  v46 = type metadata accessor for CNWallpaperSuggestionsGallerySource(0);
  v47 = *(*(v46 - 8) + 56);
  v47(v34, 1, 1, v46);
  sub_199AAD408(v34, v30, &unk_1EAF74FB8);
  sub_199DF83FC();
  sub_199A79A04(v34, &unk_1EAF74FB8);
  (*(v74 + 32))(&v4[v45], v27, v75);
  *&v4[OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_editorVC] = 0;
  v48 = OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel__pickerType;
  v49 = type metadata accessor for CNWallpaperSuggestionsGallerySource.PickerType(0);
  v50 = v76;
  (*(*(v49 - 8) + 56))(v76, 1, 1, v49);
  sub_199AAD408(v50, v77, &qword_1EAF74FC8);
  v51 = v79;
  sub_199DF83FC();
  sub_199A79A04(v50, &qword_1EAF74FC8);
  (*(v80 + 32))(&v4[v48], v51, v81);
  v52 = OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel__pickedImage;
  v104 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72748);
  v53 = v82;
  sub_199DF83FC();
  (*(v83 + 32))(&v4[v52], v53, v84);
  v54 = OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel__photoLibraryAssetID;
  v104 = 0;
  v105 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72310);
  v55 = v85;
  sub_199DF83FC();
  v56 = v86;
  v57 = v87;
  (*(v86 + 32))(&v4[v54], v55, v87);
  v58 = OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel__posterConfiguration;
  v104 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF740A0);
  v59 = v88;
  sub_199DF83FC();
  (*(v89 + 32))(&v4[v58], v59, v90);
  v47(&v4[OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_lastSelectedSource], 1, 1, v46);
  v60 = [objc_opt_self() currentDevice];
  v61 = [v60 userInterfaceIdiom];

  v62 = 4;
  if (v61 == 1)
  {
    v62 = 5;
  }

  v63 = &v4[OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_constants];
  *v63 = v62;
  *(v63 + 8) = vdupq_n_s64(0x406A800000000000uLL);
  v64 = OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel__selectedSuggestedAvatar;
  v104 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74FD0);
  v65 = v91;
  sub_199DF83FC();
  (*(v92 + 32))(&v4[v64], v65, v93);
  v66 = OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel__suggestedAvatars;
  v104 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74FE0);
  v67 = v94;
  sub_199DF83FC();
  (*(v95 + 32))(&v4[v66], v67, v96);
  v68 = v97;
  *&v4[OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_contact] = v97;
  v4[OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_suggestionFormat] = v98 & 1;
  swift_beginAccess();
  v69 = *(v56 + 8);
  v70 = v68;
  v69(&v4[v54], v57);
  v102 = v99;
  v103 = v100;
  sub_199DF83FC();
  swift_endAccess();
  v71 = type metadata accessor for CNWallpaperSuggestionsGalleryViewModel();
  v101.receiver = v4;
  v101.super_class = v71;
  return objc_msgSendSuper2(&v101, sel_init);
}

void sub_199B304B8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 note];
  v4 = sub_199DF9F8C();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_199B30510()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_199E3F2D0;
  *(v0 + 32) = swift_getKeyPath();
  *(v0 + 40) = swift_getKeyPath();
  *(v0 + 48) = swift_getKeyPath();
  *(v0 + 56) = swift_getKeyPath();
  *(v0 + 64) = swift_getKeyPath();
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = swift_getKeyPath();
  *(v0 + 88) = swift_getKeyPath();
  *(v0 + 96) = swift_getKeyPath();
  *(v0 + 104) = swift_getKeyPath();
  result = swift_getKeyPath();
  *(v0 + 112) = result;
  qword_1EAF870C8 = v0;
  return result;
}

uint64_t sub_199B30614@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    sub_199DF6F6C();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_199DF6F7C();
  v8 = *(*(v7 - 8) + 56);

  return v8(a3, v6, 1, v7);
}

void sub_199B306B4(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75080);
  v5 = sub_199DFA0CC();

  *a3 = v5;
}

char *sub_199B30720()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = sub_199B320EC();
    *(v0 + 24) = v1;
    sub_199DF81AC();
  }

  sub_199DF81AC();
  return v1;
}

char *sub_199B30780()
{
  v1 = [*(v0 + 16) phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75080);
  v2 = sub_199DFA0CC();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_19:

    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_199DFA87C();
  if (!v3)
  {
    goto LABEL_19;
  }

LABEL_3:
  v25 = MEMORY[0x1E69E7CC0];
  result = sub_199A9C6EC(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v2;
    v24 = v2 & 0xC000000000000001;
    v7 = v25;
    v8 = v2;
    v9 = v3;
    do
    {
      if (v24)
      {
        v10 = MEMORY[0x19A8F8520](v5, v6);
      }

      else
      {
        v10 = *(v6 + 8 * v5 + 32);
      }

      v11 = v10;
      v12 = [v10 value];
      v13 = [v12 formattedStringValue];

      if (v13)
      {
        v14 = sub_199DF9F8C();
        v16 = v15;
      }

      else
      {
        v14 = 0;
        v16 = 0xE000000000000000;
      }

      v17 = [v11 label];
      if (v17)
      {
        v18 = [objc_opt_self() localizedStringForLabel_];

        v17 = sub_199DF9F8C();
        v20 = v19;
      }

      else
      {

        v20 = 0xE000000000000000;
      }

      v22 = *(v25 + 16);
      v21 = *(v25 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_199A9C6EC((v21 > 1), v22 + 1, 1);
      }

      ++v5;
      *(v25 + 16) = v22 + 1;
      v23 = (v25 + 32 * v22);
      v23[4] = v14;
      v23[5] = v16;
      v23[6] = v17;
      v23[7] = v20;
      v6 = v8;
    }

    while (v9 != v5);

    return v7;
  }

  __break(1u);
  return result;
}

char *sub_199B309DC()
{
  v1 = [*(v0 + 16) emailAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75080);
  v2 = sub_199DFA0CC();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_16:

    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_199DFA87C();
  if (!v3)
  {
    goto LABEL_16;
  }

LABEL_3:
  v24 = MEMORY[0x1E69E7CC0];
  result = sub_199A9C6EC(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v2;
    v23 = v2 & 0xC000000000000001;
    v7 = v24;
    v8 = v2;
    v9 = v3;
    do
    {
      if (v23)
      {
        v10 = MEMORY[0x19A8F8520](v5, v6);
      }

      else
      {
        v10 = *(v6 + 8 * v5 + 32);
      }

      v11 = v10;
      v12 = [v10 value];
      v13 = sub_199DF9F8C();
      v15 = v14;

      v16 = [v11 label];
      if (v16)
      {
        v17 = [objc_opt_self() localizedStringForLabel_];

        v16 = sub_199DF9F8C();
        v19 = v18;
      }

      else
      {

        v19 = 0xE000000000000000;
      }

      v21 = *(v24 + 16);
      v20 = *(v24 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_199A9C6EC((v20 > 1), v21 + 1, 1);
      }

      ++v5;
      *(v24 + 16) = v21 + 1;
      v22 = (v24 + 32 * v21);
      v22[4] = v13;
      v22[5] = v15;
      v22[6] = v16;
      v22[7] = v19;
      v6 = v8;
    }

    while (v9 != v5);

    return v7;
  }

  __break(1u);
  return result;
}

char *sub_199B30C08()
{
  v1 = [*(v0 + 16) postalAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75080);
  v2 = sub_199DFA0CC();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_19:

    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_199DFA87C();
  if (!v3)
  {
    goto LABEL_19;
  }

LABEL_3:
  v24 = MEMORY[0x1E69E7CC0];
  result = sub_199A9C6EC(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = v24;
    v6 = 0;
    v22 = v2 & 0xC000000000000001;
    v23 = objc_opt_self();
    do
    {
      if (v22)
      {
        v7 = MEMORY[0x19A8F8520](v6, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = [v7 value];
      v10 = [v23 singleLineStringFromPostalAddress:v9 addCountryName:0];

      if (v10)
      {
        v11 = sub_199DF9F8C();
        v13 = v12;
      }

      else
      {
        v11 = 0;
        v13 = 0xE000000000000000;
      }

      v14 = v2;
      v15 = [v8 label];
      if (v15)
      {
        v16 = [objc_opt_self() localizedStringForLabel_];

        v15 = sub_199DF9F8C();
        v18 = v17;
      }

      else
      {

        v18 = 0xE000000000000000;
      }

      v20 = *(v24 + 16);
      v19 = *(v24 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_199A9C6EC((v19 > 1), v20 + 1, 1);
      }

      ++v6;
      *(v24 + 16) = v20 + 1;
      v21 = (v24 + 32 * v20);
      v21[4] = v11;
      v21[5] = v13;
      v21[6] = v15;
      v21[7] = v18;
      v2 = v14;
    }

    while (v3 != v6);

    return v5;
  }

  __break(1u);
  return result;
}

char *sub_199B30E78()
{
  v1 = [*(v0 + 16) urlAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75080);
  v2 = sub_199DFA0CC();

  if (v2 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_199DFA87C())
  {
    v4 = 0;
    v24 = v2 & 0xFFFFFFFFFFFFFF8;
    v25 = v2 & 0xC000000000000001;
    v5 = MEMORY[0x1E69E7CC0];
    v23 = v2;
    while (1)
    {
      if (v25)
      {
        v6 = MEMORY[0x19A8F8520](v4, v2);
      }

      else
      {
        if (v4 >= *(v24 + 16))
        {
          goto LABEL_20;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = i;
      v10 = [v6 value];
      v11 = sub_199DF9F8C();
      v13 = v12;

      v14 = [v7 label];
      if (v14)
      {
        v15 = [objc_opt_self() localizedStringForLabel_];

        v14 = sub_199DF9F8C();
        v17 = v16;
      }

      else
      {

        v17 = 0xE000000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_199AB2944(0, *(v5 + 2) + 1, 1, v5);
      }

      v19 = *(v5 + 2);
      v18 = *(v5 + 3);
      if (v19 >= v18 >> 1)
      {
        v5 = sub_199AB2944((v18 > 1), v19 + 1, 1, v5);
      }

      *(v5 + 2) = v19 + 1;
      v20 = &v5[32 * v19];
      *(v20 + 4) = v11;
      *(v20 + 5) = v13;
      *(v20 + 6) = v14;
      *(v20 + 7) = v17;
      ++v4;
      i = v9;
      v21 = v8 == v9;
      v2 = v23;
      if (v21)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_23:

  return v5;
}

void sub_199B310C8()
{
  v1 = [*(v0 + 16) dates];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75080);
  v2 = sub_199DFA0CC();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_23:

    return;
  }

LABEL_22:
  v3 = sub_199DFA87C();
  if (!v3)
  {
    goto LABEL_23;
  }

LABEL_3:
  v4 = 0;
  v25 = v2 & 0xFFFFFFFFFFFFFF8;
  v26 = v2 & 0xC000000000000001;
  v5 = MEMORY[0x1E69E7CC0];
  v24 = v2;
  while (1)
  {
    if (v26)
    {
      v6 = MEMORY[0x19A8F8520](v4, v2);
    }

    else
    {
      if (v4 >= *(v25 + 16))
      {
        goto LABEL_21;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v9 = objc_opt_self();
    v10 = [v7 value];
    v11 = [v9 dateDisplayStringFromComponents_];

    if (!v11)
    {
      break;
    }

    v12 = v3;
    v13 = sub_199DF9F8C();
    v15 = v14;

    v16 = [v7 label];
    if (v16)
    {
      v17 = [objc_opt_self() localizedStringForLabel_];

      v16 = sub_199DF9F8C();
      v19 = v18;
    }

    else
    {

      v19 = 0xE000000000000000;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_199AB2944(0, *(v5 + 2) + 1, 1, v5);
    }

    v21 = *(v5 + 2);
    v20 = *(v5 + 3);
    if (v21 >= v20 >> 1)
    {
      v5 = sub_199AB2944((v20 > 1), v21 + 1, 1, v5);
    }

    *(v5 + 2) = v21 + 1;
    v22 = &v5[32 * v21];
    *(v22 + 4) = v13;
    *(v22 + 5) = v15;
    *(v22 + 6) = v16;
    *(v22 + 7) = v19;
    ++v4;
    v3 = v12;
    v23 = v8 == v12;
    v2 = v24;
    if (v23)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
}

void sub_199B3136C()
{
  v1 = [*(v0 + 16) socialProfiles];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75080);
  v2 = sub_199DFA0CC();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_24:

    return;
  }

LABEL_23:
  v3 = sub_199DFA87C();
  if (!v3)
  {
    goto LABEL_24;
  }

LABEL_3:
  v4 = 0;
  v28 = v2 & 0xFFFFFFFFFFFFFF8;
  v29 = v2 & 0xC000000000000001;
  v5 = MEMORY[0x1E69E7CC0];
  v6 = &selRef_titleLabelWrappedFont;
  v26 = v3;
  v27 = v2;
  while (1)
  {
    if (v29)
    {
      v7 = MEMORY[0x19A8F8520](v4, v2);
    }

    else
    {
      if (v4 >= *(v28 + 16))
      {
        goto LABEL_22;
      }

      v7 = *(v2 + 8 * v4 + 32);
    }

    v8 = v7;
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v10 = objc_opt_self();
    v11 = [v8 v6[495]];
    v12 = [v10 displayStringForSocialProfile_];

    if (v12)
    {
      v30 = sub_199DF9F8C();
      v14 = v13;
    }

    else
    {
      v30 = 0;
      v14 = 0xE000000000000000;
    }

    v15 = v6;
    v16 = [v8 v6[495]];
    sub_199B320A0();
    swift_getKeyPath();
    v17 = sub_199DFA2EC();
    v18 = [v17 keyPath];

    if (!v18)
    {
      sub_199DF9F8C();
      v18 = sub_199DF9F5C();
    }

    v19 = [v10 displayLabelForSocialProfile:v16 forPropertyKey:v18];

    if (!v19)
    {
      break;
    }

    v20 = sub_199DF9F8C();
    v22 = v21;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_199AB2944(0, *(v5 + 2) + 1, 1, v5);
    }

    v2 = v27;
    v24 = *(v5 + 2);
    v23 = *(v5 + 3);
    if (v24 >= v23 >> 1)
    {
      v5 = sub_199AB2944((v23 > 1), v24 + 1, 1, v5);
    }

    *(v5 + 2) = v24 + 1;
    v25 = &v5[32 * v24];
    *(v25 + 4) = v30;
    *(v25 + 5) = v14;
    *(v25 + 6) = v20;
    *(v25 + 7) = v22;
    ++v4;
    v6 = v15;
    if (v9 == v26)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
}

char *sub_199B31670(SEL *a1, SEL *a2)
{
  v3 = [*(v2 + 16) *a1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75080);
  v4 = sub_199DFA0CC();

  if (v4 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_199DFA87C())
  {
    v6 = 0;
    v27 = v4 & 0xFFFFFFFFFFFFFF8;
    v28 = v4 & 0xC000000000000001;
    v7 = MEMORY[0x1E69E7CC0];
    v26 = v4;
    while (1)
    {
      if (v28)
      {
        v8 = MEMORY[0x19A8F8520](v6, v4);
      }

      else
      {
        if (v6 >= *(v27 + 16))
        {
          goto LABEL_20;
        }

        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = i;
      v12 = [v8 value];
      v13 = [v12 *a2];

      v14 = sub_199DF9F8C();
      v16 = v15;

      v17 = [v9 label];
      if (v17)
      {
        v18 = [objc_opt_self() localizedStringForLabel_];

        v17 = sub_199DF9F8C();
        v20 = v19;
      }

      else
      {

        v20 = 0xE000000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_199AB2944(0, *(v7 + 2) + 1, 1, v7);
      }

      v22 = *(v7 + 2);
      v21 = *(v7 + 3);
      if (v22 >= v21 >> 1)
      {
        v7 = sub_199AB2944((v21 > 1), v22 + 1, 1, v7);
      }

      *(v7 + 2) = v22 + 1;
      v23 = &v7[32 * v22];
      *(v23 + 4) = v14;
      *(v23 + 5) = v16;
      *(v23 + 6) = v17;
      *(v23 + 7) = v20;
      ++v6;
      i = v11;
      v24 = v10 == v11;
      v4 = v26;
      if (v24)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_23:

  return v7;
}

void sub_199B318FC(SEL *a1)
{
  v3 = sub_199DF6F7C();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v25 - v10;
  v12 = [*(v1 + 16) *a1];
  if (v12)
  {
    v13 = v12;
    sub_199DF6F6C();

    (*(v4 + 32))(v11, v8, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF722E0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_199E37D40;
    v15 = objc_opt_self();
    v16 = sub_199DF6F5C();
    v17 = [v15 dateDisplayStringFromComponents_];

    if (v17)
    {
      v18 = sub_199DF9F8C();
      v20 = v19;

      v21 = [objc_opt_self() localizedStringForLabel_];
      v22 = sub_199DF9F8C();
      v24 = v23;

      *(v14 + 32) = v18;
      *(v14 + 40) = v20;
      *(v14 + 48) = v22;
      *(v14 + 56) = v24;
      (*(v4 + 8))(v11, v3);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_199B31B1C(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF741C8);
  v4 = sub_199DF9EDC();

  if (v4)
  {
    sub_199B30780();
  }

  else
  {
    swift_getKeyPath();
    v5 = sub_199DF9EDC();

    if (v5)
    {
      sub_199B309DC();
    }

    else
    {
      swift_getKeyPath();
      v6 = sub_199DF9EDC();

      if (v6)
      {
        sub_199B30C08();
      }

      else
      {
        swift_getKeyPath();
        v7 = sub_199DF9EDC();

        if (v7)
        {
          sub_199B30E78();
        }

        else
        {
          swift_getKeyPath();
          v8 = sub_199DF9EDC();

          if (v8)
          {
            sub_199B310C8();
          }

          else
          {
            swift_getKeyPath();
            v9 = sub_199DF9EDC();

            if (v9)
            {
              sub_199B31358();
            }

            else
            {
              swift_getKeyPath();
              v10 = sub_199DF9EDC();

              if (v10)
              {
                sub_199B3136C();
              }

              else
              {
                swift_getKeyPath();
                v11 = sub_199DF9EDC();

                if (v11)
                {
                  sub_199B3165C();
                }

                else
                {
                  swift_getKeyPath();
                  v12 = sub_199DF9EDC();

                  if (v12)
                  {
                    sub_199B318E4();
                  }

                  else
                  {
                    swift_getKeyPath();
                    v13 = sub_199DF9EDC();

                    if (v13)
                    {
                      sub_199B318F0();
                    }

                    else
                    {
                      v14 = *(v2 + 16);
                      swift_getAtPartialKeyPath();

                      if (swift_dynamicCast())
                      {
                        v15 = HIBYTE(v23) & 0xF;
                        if ((v23 & 0x2000000000000000) == 0)
                        {
                          v15 = a1 & 0xFFFFFFFFFFFFLL;
                        }

                        if (v15)
                        {
                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF722E0);
                          v16 = swift_allocObject();
                          *(v16 + 16) = xmmword_199E37D40;
                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75070);
                          v17 = swift_dynamicCastClass();
                          if (v17)
                          {
                            sub_199B320A0();
                            swift_retain_n();
                            v18 = sub_199DFA2EC();
                            v19 = [v18 keyPath];

                            if (!v19)
                            {
                              sub_199DF9F8C();
                              v19 = sub_199DF9F5C();
                            }

                            v20 = [objc_opt_self() localizedStringForKey_];

                            v17 = sub_199DF9F8C();
                            v22 = v21;
                          }

                          else
                          {
                            v22 = 0xE000000000000000;
                          }

                          *(v16 + 32) = a1;
                          *(v16 + 40) = v23;
                          *(v16 + 48) = v17;
                          *(v16 + 56) = v22;
                        }

                        else
                        {
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
  }
}

uint64_t sub_199B32000()
{

  return swift_deallocClassInstance();
}

unint64_t sub_199B320A0()
{
  result = qword_1EAF75078;
  if (!qword_1EAF75078)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAF75078);
  }

  return result;
}

char *sub_199B320EC()
{
  if (qword_1EAF71F08 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v0 = qword_1EAF870C8;
    if (!(qword_1EAF870C8 >> 62))
    {
      v1 = *((qword_1EAF870C8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v1)
      {
        return MEMORY[0x1E69E7CC0];
      }

      goto LABEL_4;
    }

    v1 = sub_199DFA87C();
    if (!v1)
    {
      return MEMORY[0x1E69E7CC0];
    }

LABEL_4:
    v2 = 0;
    v3 = MEMORY[0x1E69E7CC0];
    while ((v0 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x19A8F8520](v2, v0);
      v5 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_25;
      }

LABEL_10:
      sub_199B31B1C(v4);
      v7 = v6;

      v8 = *(v7 + 16);
      v9 = *(v3 + 2);
      v10 = v9 + v8;
      if (__OFADD__(v9, v8))
      {
        goto LABEL_27;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v10 <= *(v3 + 3) >> 1)
      {
        if (*(v7 + 16))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v9 <= v10)
        {
          v12 = v9 + v8;
        }

        else
        {
          v12 = v9;
        }

        v3 = sub_199AB2944(isUniquelyReferenced_nonNull_native, v12, 1, v3);
        if (*(v7 + 16))
        {
LABEL_19:
          if ((*(v3 + 3) >> 1) - *(v3 + 2) < v8)
          {
            goto LABEL_29;
          }

          swift_arrayInitWithCopy();

          if (v8)
          {
            v13 = *(v3 + 2);
            v14 = __OFADD__(v13, v8);
            v15 = v13 + v8;
            if (v14)
            {
              goto LABEL_30;
            }

            *(v3 + 2) = v15;
          }

          goto LABEL_6;
        }
      }

      if (v8)
      {
        goto LABEL_28;
      }

LABEL_6:
      ++v2;
      if (v5 == v1)
      {
        return v3;
      }
    }

    if (v2 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

    v4 = *(v0 + 8 * v2 + 32);

    v5 = v2 + 1;
    if (!__OFADD__(v2, 1))
    {
      goto LABEL_10;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
  }
}

void sub_199B32338()
{
  sub_199ACDA98();
  if (v0 <= 0x3F)
  {
    sub_199B324B0(319, &qword_1EAF730F0, MEMORY[0x1EEE7B728], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_199B158B8();
      if (v2 <= 0x3F)
      {
        sub_199B324B0(319, &qword_1EAF75098, MEMORY[0x1E695C0D0], MEMORY[0x1EEE7B688]);
        if (v3 <= 0x3F)
        {
          sub_199B32514();
          if (v4 <= 0x3F)
          {
            sub_199A7A02C(319, &qword_1EAF750A8);
            if (v5 <= 0x3F)
            {
              type metadata accessor for CNUIDuplicatesContactStoreFacade();
              if (v6 <= 0x3F)
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

void sub_199B324B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_199B32514()
{
  result = qword_1EAF750A0;
  if (!qword_1EAF750A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EAF750A0);
  }

  return result;
}

void sub_199B32594(void *a1)
{
  v27[5] = *MEMORY[0x1E69E9840];
  [a1 setIsIgnored_];
  [a1 setIsAvailable_];
  v3 = type metadata accessor for DuplicateContactsListView(0);
  v4 = sub_199AC392C(*(v1 + *(v3 + 28)), *(v1 + *(v3 + 28) + 8));
  v27[0] = 0;
  v5 = [v4 save_];

  v6 = v27[0];
  if (v5)
  {
    sub_199AAB0E0(v1 + *(v3 + 40), v27);
    __swift_project_boxed_opaque_existential_0(v27, v27[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF722B0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_199E37D40;
    v8 = v6;
    v9 = [a1 signature];
    if (v9)
    {
      v10 = v9;
      v11 = sub_199DF9F8C();
      v13 = v12;

      *(v7 + 32) = v11;
      *(v7 + 40) = v13;
      LOBYTE(v10) = sub_199B37D9C();
      v14 = off_1F0CE0F70[0];
      v15 = type metadata accessor for DuplicatesUIHelper();
      v14(v1, v7, v10 & 1, v15, &off_1F0CE0F60);

      __swift_destroy_boxed_opaque_existential_0(v27);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v16 = v27[0];
    v17 = sub_199DF717C();

    swift_willThrow();
    if (qword_1EAF71ED8 != -1)
    {
      swift_once();
    }

    v18 = sub_199DF804C();
    __swift_project_value_buffer(v18, qword_1EAF87028);
    v19 = v17;
    v20 = sub_199DF802C();
    v21 = sub_199DFA31C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v27[0] = v23;
      *v22 = 136315138;
      swift_getErrorValue();
      v24 = sub_199DFAA0C();
      v26 = sub_199A9BE90(v24, v25, v27);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_199A75000, v20, v21, "Could not merge individual duplicate. %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x19A8FA1A0](v23, -1, -1);
      MEMORY[0x19A8FA1A0](v22, -1, -1);
    }

    else
    {
    }
  }
}

void sub_199B328B8(uint64_t a1, void *a2)
{

  sub_199B32988(a1, a2, &selRef_setSelectedContactImage_, "Could not save selected contact image for duplicate. %s");
}

void sub_199B32920(uint64_t a1, void *a2)
{

  sub_199B32988(a1, a2, &selRef_setSelectedContactPoster_, "Could not save selected contact poster for duplicate. %s");
}

void sub_199B32988(uint64_t a1, id a2, SEL *a3, const char *a4)
{
  v22[1] = *MEMORY[0x1E69E9840];
  [a2 *a3];
  v6 = type metadata accessor for DuplicateContactsListView(0);
  v7 = sub_199AC392C(*(v4 + *(v6 + 28)), *(v4 + *(v6 + 28) + 8));
  v22[0] = 0;
  v8 = [v7 save_];

  v9 = v22[0];
  if (v8)
  {

    v10 = v9;
  }

  else
  {
    v11 = v22[0];
    v12 = sub_199DF717C();

    swift_willThrow();
    if (qword_1EAF71ED8 != -1)
    {
      swift_once();
    }

    v13 = sub_199DF804C();
    __swift_project_value_buffer(v13, qword_1EAF87028);
    v14 = v12;
    v15 = sub_199DF802C();
    v16 = sub_199DFA31C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v22[0] = v18;
      *v17 = 136315138;
      swift_getErrorValue();
      v19 = sub_199DFAA0C();
      v21 = sub_199A9BE90(v19, v20, v22);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_199A75000, v15, v16, a4, v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x19A8FA1A0](v18, -1, -1);
      MEMORY[0x19A8FA1A0](v17, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_199B32BFC@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a5;
  v9 = sub_199DF9F4C();
  v34 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DuplicateContactsListView(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = 0;
  sub_199DF983C();
  v17 = v38;
  *v16 = v37;
  *(v16 + 1) = v17;
  v36 = 0;
  sub_199DF983C();
  v18 = v38;
  v16[16] = v37;
  *(v16 + 3) = v18;
  v19 = v13[6];
  *&v16[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73090);
  swift_storeEnumTagMultiPayload();
  v20 = &v16[v13[7]];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  sub_199DF9D1C();
  sub_199DF9CFC();
  sub_199DF85DC();
  sub_199DF9D0C();
  sub_199DF85DC();
  v21 = v13[11];
  *&v16[v21] = [objc_allocWithZone(CNContactViewCache) init];
  v22 = v13[14];
  v23 = objc_opt_self();
  v24 = [v23 systemBackgroundColor];
  *&v16[v22] = sub_199DF969C();
  v25 = v13[15];
  v26 = [v23 secondarySystemBackgroundColor];
  *&v16[v25] = sub_199DF969C();
  sub_199AAB0E0(a1, &v16[v13[10]]);
  v16[v13[12]] = a2;
  if (!a4)
  {
    sub_199DF9EEC();
    a3 = sub_199AA8A84(v12, MEMORY[0x1E69E7CC0]);
    a4 = v27;
    (*(v34 + 8))(v12, v9);
  }

  v28 = &v16[v13[13]];
  *v28 = a3;
  v28[1] = a4;
  v29 = [*(*__swift_project_boxed_opaque_existential_0(a1 a1[3]) + OBJC:sel_contactStore IVAR:? :? :? :? TtC10ContactsUI18DuplicatesUIHelper:?delegate)];
  if (qword_1EAF71E50 != -1)
  {
    swift_once();
  }

  v30 = qword_1EAF86F90;
  type metadata accessor for CNUIDuplicatesContactStoreFacade();
  swift_allocObject();
  sub_199DF81AC();
  v31 = sub_199AD6B48(v29, v30, MEMORY[0x1E69E7CC0]);

  *&v16[v13[16]] = v31;
  sub_199B3C814(v16, v35, type metadata accessor for DuplicateContactsListView);
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_199B32FC8(void *a1, void *a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = sub_199DFA98C();
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v6 = sub_199DFA98C();
  v7 = (*(a3 + 16))(a3, v5, v6);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_199B33058@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = type metadata accessor for DuplicateContactsListView(0);
  v3 = v2 - 8;
  v43 = *(v2 - 8);
  v42 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF750B0);
  v40 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v7);
  v9 = &v38 - v8;
  v44 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF750B8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF750C0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF750C8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF750D0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF750D8);
  v14 = sub_199AA0B90(&qword_1EAF750E0, &qword_1EAF750D8);
  v45 = v13;
  v46 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = sub_199A9C458();
  v45 = v12;
  v46 = MEMORY[0x1E69E6158];
  v47 = OpaqueTypeConformance2;
  v48 = v16;
  v17 = swift_getOpaqueTypeConformance2();
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF731D0);
  v19 = sub_199AA0B90(&qword_1EAF750E8, &qword_1EAF731D0);
  v45 = v18;
  v46 = v19;
  v20 = swift_getOpaqueTypeConformance2();
  v45 = v10;
  v46 = v11;
  v47 = v17;
  v48 = v20;
  swift_getOpaqueTypeConformance2();
  sub_199DF879C();
  v21 = sub_199DF8FDC();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF8FCC();
  sub_199AA0B90(&qword_1EAF750F0, &qword_1EAF750B0);
  sub_199B3C8A8(&qword_1EAF750F8, MEMORY[0x1EEE7C320]);
  v26 = v41;
  v27 = v38;
  sub_199DF93FC();
  (*(v22 + 8))(v25, v21);
  (*(v40 + 8))(v9, v27);
  v28 = *(v3 + 64);
  v29 = v39;
  v30 = *(v39 + v28);
  LOBYTE(v21) = sub_199DF916C();
  v31 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75100) + 36);
  *v31 = v30;
  *(v31 + 8) = v21;
  sub_199B3C7AC(v29, v6, type metadata accessor for DuplicateContactsListView);
  v32 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v33 = swift_allocObject();
  sub_199B3C814(v6, v33 + v32, type metadata accessor for DuplicateContactsListView);
  v34 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75108) + 36));
  *v34 = 0;
  v34[1] = 0;
  v34[2] = sub_199B385D0;
  v34[3] = v33;
  sub_199B3C7AC(v29, v6, type metadata accessor for DuplicateContactsListView);
  v35 = swift_allocObject();
  sub_199B3C814(v6, v35 + v32, type metadata accessor for DuplicateContactsListView);
  v36 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75110) + 36));
  *v36 = sub_199B387F8;
  v36[1] = v35;
  v36[2] = 0;
  v36[3] = 0;
}

uint64_t sub_199B33584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF750C0);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  MEMORY[0x1EEE9AC00](v3, v5);
  v36 = &v31 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF750D0);
  v32 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF750D8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v31 - v13;
  v31 = a1;
  sub_199B339BC(a1, &v31 - v13);
  v15 = sub_199AA0B90(&qword_1EAF750E0, &qword_1EAF750D8);
  sub_199DF95AC();
  sub_199A79A04(v14, &qword_1EAF750D8);
  v16 = (a1 + *(type metadata accessor for DuplicateContactsListView(0) + 52));
  v17 = v16[1];
  v38 = *v16;
  v39 = v17;
  v18 = sub_199DF8CBC();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 104))(v22, *MEMORY[0x1E697C430], v18);
  sub_199DF81AC();
  v42 = v11;
  v43 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = sub_199A9C458();
  v25 = MEMORY[0x1E69E6158];
  sub_199DF953C();
  (*(v19 + 8))(v22, v18);

  (*(v32 + 8))(v10, v7);
  v37 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF750C8);
  v38 = v7;
  v39 = v25;
  v40 = OpaqueTypeConformance2;
  v41 = v24;
  swift_getOpaqueTypeConformance2();
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF731D0);
  v27 = sub_199AA0B90(&qword_1EAF750E8, &qword_1EAF731D0);
  v38 = v26;
  v39 = v27;
  swift_getOpaqueTypeConformance2();
  v28 = v33;
  v29 = v36;
  sub_199DF960C();
  return (*(v34 + 8))(v29, v28);
}

uint64_t sub_199B339BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75118);
  v57 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v55 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75120);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v55 - v10;
  v59 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75128);
  sub_199B3A460();
  sub_199DF931C();
  v12 = sub_199DF8F5C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF8F4C();
  sub_199AA0B90(&qword_1EAF75148, &qword_1EAF75120);
  sub_199DF966C();
  (*(v13 + 8))(v16, v12);
  (*(v8 + 8))(v11, v7);
  LOBYTE(v11) = sub_199DF917C();
  sub_199DF84FC();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75150) + 36)];
  *v25 = v11;
  *(v25 + 1) = v18;
  *(v25 + 2) = v20;
  *(v25 + 3) = v22;
  *(v25 + 4) = v24;
  v25[40] = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75158);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8, v28);
  v30 = &v55 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74850);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v33);
  v35 = &v55 - v34;
  type metadata accessor for DuplicateContactsListView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74880);
  v56 = a1;
  sub_199DF85EC();
  sub_199AA0B90(&qword_1EAF74AA0, &qword_1EAF74850);
  sub_199DFA29C();
  sub_199DFA2BC();
  v36 = sub_199DFA2AC();
  (*(v32 + 8))(v35, v31);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75160);
  v39 = v37;
  v40 = *(v37 - 8);
  if (v36 < 1)
  {
    v43 = (*(*(v37 - 8) + 56))(v30, 1, 1, v37);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v37, v38);
    v42 = &v55 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v42[*(v39 + 36)] = 0x4079000000000000;
    *&v42[*(v39 + 40)] = 0xC020000000000000;
    sub_199B35FB4(v56, v42);
    sub_199A97310(v42, v30);
    v43 = (*(v40 + 56))(v30, 0, 1, v39);
  }

  v56 = &v55;
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v55 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_199AAD408(v6, v46, &qword_1EAF75118);
  MEMORY[0x1EEE9AC00](v47, v48);
  v49 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199AAD408(v30, v49, &qword_1EAF75158);
  v50 = v6;
  v51 = v58;
  sub_199AAD408(v46, v58, &qword_1EAF75118);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75168);
  v53 = v51 + *(v52 + 48);
  *v53 = 0;
  *(v53 + 8) = 1;
  sub_199AAD408(v49, v51 + *(v52 + 64), &qword_1EAF75158);
  sub_199A79A04(v30, &qword_1EAF75158);
  sub_199A79A04(v50, &qword_1EAF75118);
  sub_199A79A04(v49, &qword_1EAF75158);
  return sub_199A79A04(v46, &qword_1EAF75118);
}

uint64_t sub_199B3402C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v3 = type metadata accessor for DuplicateContactsListView(0);
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v3, v6);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74A68);
  MEMORY[0x1EEE9AC00](v98, v7);
  v10 = &v88 - v9;
  LOBYTE(v9) = *(a1 + *(v3 + 48));
  v97 = a1;
  if (v9)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF751A0);
    v95 = &v88;
    v93 = *(*(v11 - 8) + 64);
    MEMORY[0x1EEE9AC00](v11 - 8, v12);
    v14 = &v88 - v13;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74850);
    v92 = &v88;
    v16 = *(v15 - 8);
    v17 = *(v16 + 64);
    MEMORY[0x1EEE9AC00](v15, v18);
    v20 = &v88 - v19;
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74880);
    sub_199DF85EC();
    sub_199AA0B90(&qword_1EAF74AA0, &qword_1EAF74850);
    sub_199DFA29C();
    sub_199DFA2BC();
    v21 = sub_199DFA2AC();
    v22 = *(v16 + 8);
    v91 = (v16 + 8);
    v89 = v22;
    v22(v20, v15);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF751A8);
    v25 = v23;
    v26 = *(v23 - 8);
    v27 = v26;
    v94 = v14;
    if (v21 < 1)
    {
      (*(v26 + 56))(v14, 1, 1, v23);
    }

    else
    {
      v92 = &v88;
      v28 = MEMORY[0x1EEE9AC00](v23, v24);
      v30 = &v88 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      MEMORY[0x1EEE9AC00](v28, v31);
      sub_199B1BEF4();
      sub_199DF9A1C();
      (*(v27 + 32))(v14, v30, v25);
      (*(v27 + 56))(v14, 0, 1, v25);
    }

    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF751B0);
    v92 = &v88;
    v58 = *(*(v57 - 8) + 64);
    v60 = MEMORY[0x1EEE9AC00](v57 - 8, v59);
    v62 = &v88 - v61;
    MEMORY[0x1EEE9AC00](v60, v63);
    sub_199DF85EC();
    sub_199DFA29C();
    sub_199DFA2BC();
    v64 = sub_199DFA2AC();
    v89(&v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF751B8);
    v67 = v65;
    v68 = *(v65 - 8);
    if (v64 < 1)
    {
      (*(*(v65 - 8) + 56))(v62, 1, 1, v65);
    }

    else
    {
      v69 = MEMORY[0x1EEE9AC00](v65, v66);
      v71 = &v88 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
      MEMORY[0x1EEE9AC00](v69, v72);
      type metadata accessor for DuplicatePreviouslyIgnoredCell(0);
      sub_199B3BFFC(&qword_1EAF751C8, type metadata accessor for DuplicatePreviouslyIgnoredCell);
      sub_199DF9A1C();
      (*(v68 + 32))(v62, v71, v67);
      (*(v68 + 56))(v62, 0, 1, v67);
    }

    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75140);
    v97 = &v88;
    v74 = MEMORY[0x1EEE9AC00](v90, v73);
    v76 = &v88 - v75;
    v91 = &v88;
    MEMORY[0x1EEE9AC00](v74, v77);
    v79 = &v88 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
    v80 = v94;
    v81 = sub_199AAD408(v94, v79, &qword_1EAF751A0);
    v93 = &v88;
    MEMORY[0x1EEE9AC00](v81, v82);
    v83 = &v88 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_199AAD408(v62, v83, &qword_1EAF751B0);
    sub_199AAD408(v79, v76, &qword_1EAF751A0);
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF751C0);
    sub_199AAD408(v83, &v76[*(v84 + 48)], &qword_1EAF751B0);
    sub_199A79A04(v83, &qword_1EAF751B0);
    sub_199A79A04(v79, &qword_1EAF751A0);
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75198);
    MEMORY[0x1EEE9AC00](v85, v86);
    sub_199AAD408(v76, &v88 - v87, &qword_1EAF75140);
    swift_storeEnumTagMultiPayload();
    sub_199B1BEF4();
    sub_199AA0B90(&qword_1EAF75138, &qword_1EAF75140);
    sub_199DF8EDC();
    sub_199A79A04(v76, &qword_1EAF75140);
    sub_199A79A04(v62, &qword_1EAF751B0);
    return sub_199A79A04(v80, &qword_1EAF751A0);
  }

  else
  {
    v89 = v5;
    v91 = v4;
    v92 = (&v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v93 = v10;
    v94 = v8;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74850);
    v90 = &v88;
    v95 = *(v32 - 8);
    v33 = v95[8];
    MEMORY[0x1EEE9AC00](v32, v34);
    v35 = &v88 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74880);
    sub_199DF85EC();
    v36 = *(a1 + *(v3 + 64));
    v37 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
    v38 = objc_opt_self();
    v39 = [objc_opt_self() sharedDefaults];
    v40 = [v39 sortOrder];

    v41 = [v38 comparatorForNameSortOrder_];
    v42 = swift_allocObject();
    *(v42 + 16) = v41;
    MEMORY[0x1EEE9AC00](v42, v43);
    (v95[2])(v35, v35, v32);
    sub_199AA0B90(&qword_1EAF74A98, &qword_1EAF74850);

    v44 = v37;

    v45 = v32;
    v99 = sub_199DFA09C();
    sub_199B3BE98(&v99, v36, v44, sub_199B1C1D0, v42);

    v46 = v99;
    (v95[1])(v35, v45);
    v99 = v46;
    v47 = v92;
    sub_199B3C7AC(v97, v92, type metadata accessor for DuplicateContactsListView);
    v48 = (*(v91 + 80) + 16) & ~*(v91 + 80);
    v49 = swift_allocObject();
    sub_199B3C814(v47, v49 + v48, type metadata accessor for DuplicateContactsListView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74AA8);
    type metadata accessor for DuplicateListCell(0);
    sub_199AA0B90(&qword_1EAF74AB0, &qword_1EAF74AA8);
    sub_199B3BFFC(&qword_1EAF74A70, type metadata accessor for DuplicateListCell);
    sub_199B3BFFC(&qword_1EAF74AB8, MEMORY[0x1E695C0D0]);
    v50 = v93;
    sub_199DF99FC();
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75198);
    MEMORY[0x1EEE9AC00](v51, v52);
    v53 = v94;
    v55 = v98;
    v94[2](&v88 - v54, v50, v98);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75140);
    sub_199B1BEF4();
    sub_199AA0B90(&qword_1EAF75138, &qword_1EAF75140);
    sub_199DF8EDC();
    return (*(v53 + 8))(v50, v55);
  }
}

uint64_t sub_199B34E94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = type metadata accessor for DuplicateContactsListView(0);
  v4 = v3 - 8;
  v28 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v29 = v6;
  v30 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74850);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v11 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74880);
  sub_199DF85EC();
  v12 = *(v4 + 72);
  v31 = a1;
  v13 = *(a1 + v12);
  v14 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
  v15 = objc_opt_self();
  v16 = [objc_opt_self() sharedDefaults];
  v17 = [v16 sortOrder];

  v18 = [v15 comparatorForNameSortOrder_];
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  (*(v8 + 16))(&v27 - v11, &v27 - v11, v7);
  sub_199AA0B90(&qword_1EAF74A98, &qword_1EAF74850);

  v21 = v14;

  v33 = sub_199DFA09C();
  sub_199B3BE98(&v33, v13, v21, sub_199B3CC40, v19);

  v22 = v33;
  (*(v8 + 8))(&v27 - v11, v7);
  v33 = v22;
  v23 = v30;
  sub_199B3C7AC(v31, v30, type metadata accessor for DuplicateContactsListView);
  v24 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v25 = swift_allocObject();
  sub_199B3C814(v23, v25 + v24, type metadata accessor for DuplicateContactsListView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74AA8);
  type metadata accessor for DuplicateListCell(0);
  sub_199AA0B90(&qword_1EAF74AB0, &qword_1EAF74AA8);
  sub_199B3BFFC(&qword_1EAF74A70, type metadata accessor for DuplicateListCell);
  sub_199B3BFFC(&qword_1EAF74AB8, MEMORY[0x1E695C0D0]);
  return sub_199DF99FC();
}

uint64_t sub_199B3532C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731D0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v11[-v5];
  v7 = sub_199DF8F0C();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  sub_199DF8EEC();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731D8);
  sub_199AA0B90(&qword_1EAF731E0, &qword_1EAF731D8);
  sub_199DF85CC();
  v9 = sub_199AA0B90(&qword_1EAF750E8, &qword_1EAF731D0);
  MEMORY[0x19A8F6D50](v6, v2, v9);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_199B35500(uint64_t a1)
{
  v2 = type metadata accessor for DuplicateContactsListView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v6 = sub_199DF9F4C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF9EEC();
  v11 = sub_199AA8A84(v10, MEMORY[0x1E69E7CC0]);
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  v17[0] = v11;
  v17[1] = v13;
  sub_199B3C7AC(a1, v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DuplicateContactsListView);
  v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15 = swift_allocObject();
  sub_199B3C814(v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for DuplicateContactsListView);
  sub_199A9C458();
  return sub_199DF98BC();
}

id sub_199B3570C(uint64_t a1)
{
  v2 = *(a1 + 24);
  v13[16] = *(a1 + 16);
  v14 = v2;
  v13[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750);
  sub_199DF985C();
  v3 = type metadata accessor for DuplicateContactsListView(0);
  v4 = sub_199AC392C(*(a1 + *(v3 + 28)), *(a1 + *(v3 + 28) + 8));
  [v4 reset];

  v5 = *__swift_project_boxed_opaque_existential_0((a1 + *(v3 + 40)), *(a1 + *(v3 + 40) + 24));
  v6 = sub_199DF867C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_199AC3274(v10);
  sub_199DF866C();
  (*(v7 + 8))(v10, v6);
  v11 = *(v5 + OBJC_IVAR____TtC10ContactsUI18DuplicatesUIHelper_delegate);
  result = [v11 respondsToSelector_];
  if (result)
  {
    return [v11 didSelectCancelMergeDuplicates_];
  }

  return result;
}

uint64_t sub_199B358AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v16 = v2;
  v17 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750);
  result = sub_199DF984C();
  if ((v15 & 1) == 0)
  {
    v16 = v2;
    v17 = v3;
    v15 = 1;
    sub_199DF985C();
    v5 = type metadata accessor for DuplicateContactsListView(0);
    v6 = sub_199AC392C(*(a1 + *(v5 + 28)), *(a1 + *(v5 + 28) + 8));
    [v6 reset];

    v7 = *__swift_project_boxed_opaque_existential_0((a1 + *(v5 + 40)), *(a1 + *(v5 + 40) + 24));
    v8 = sub_199DF867C();
    v9 = *(v8 - 8);
    MEMORY[0x1EEE9AC00](v8, v10);
    v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_199AC3274(v12);
    sub_199DF866C();
    (*(v9 + 8))(v12, v8);
    v13 = *(v7 + OBJC_IVAR____TtC10ContactsUI18DuplicatesUIHelper_delegate);
    result = [v13 respondsToSelector_];
    if (result)
    {
      return [v13 didSelectCancelMergeDuplicates_];
    }
  }

  return result;
}

uint64_t sub_199B35A78()
{
  type metadata accessor for DuplicateContactsListView(0);
  v0 = sub_199B35AD4();
  sub_199AD60FC(v0);
}

char *sub_199B35AD4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74850);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  type metadata accessor for DuplicateContactsListView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74880);
  sub_199DF85EC();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74A90);
  v5 = v4 - 8;
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v26 - v8;
  MEMORY[0x1EEE9AC00](v7, v10);
  v11 = *(v1 + 16);
  v29 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11(v29, v29, v0);
  sub_199AA0B90(&qword_1EAF74A98, &qword_1EAF74850);
  sub_199DFA08C();
  v12 = *(v5 + 44);
  sub_199AA0B90(&qword_1EAF74AA0, &qword_1EAF74850);
  sub_199DFA2BC();
  for (i = MEMORY[0x1E69E7CC0]; *&v9[v12] != v30[0]; v1 = v28)
  {
    while (1)
    {
      v15 = sub_199DFA2DC();
      v17 = *v16;
      v15(v30, 0);
      sub_199DFA2CC();
      v18 = [v17 primaryID];
      if (v18)
      {
        break;
      }

      sub_199DFA2BC();
      if (*&v9[v12] == v30[0])
      {
        goto LABEL_2;
      }
    }

    v28 = v1;
    v19 = v18;
    v20 = sub_199DF9F8C();
    v27 = v21;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      i = sub_199AB26E4(0, *(i + 2) + 1, 1, i);
    }

    v23 = *(i + 2);
    v22 = *(i + 3);
    if (v23 >= v22 >> 1)
    {
      i = sub_199AB26E4((v22 > 1), v23 + 1, 1, i);
    }

    *(i + 2) = v23 + 1;
    v24 = &i[16 * v23];
    v25 = v27;
    *(v24 + 4) = v20;
    *(v24 + 5) = v25;
    sub_199DFA2BC();
  }

LABEL_2:
  sub_199A79A04(v9, &qword_1EAF74A90);
  (*(v1 + 8))(v29, v0);
  return i;
}

id sub_199B35E64@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = *a1;
  v5 = type metadata accessor for DuplicateListCell(0);
  sub_199B3C7AC(a2, a3 + v5[5], type metadata accessor for DuplicateContactsListView);
  *a3 = v8;
  *(a3 + v5[6]) = 1;
  *(a3 + v5[7]) = 0;
  v6 = (a3 + v5[8]);
  *v6 = 0;
  v6[1] = 0;

  return v8;
}

uint64_t sub_199B35F08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DuplicateContactsListView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74880);
  sub_199DF85EC();
  v5 = type metadata accessor for DuplicatePreviouslyIgnoredCell(0);
  sub_199B3C7AC(a1, a2 + *(v5 + 20), type metadata accessor for DuplicateContactsListView);
  *(a2 + *(v5 + 24)) = *(a1 + *(v4 + 64));
}

uint64_t sub_199B35FB4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v100 = a2;
  v101 = a1;
  v3 = sub_199DF9F4C();
  v4 = *(v3 - 8);
  v105 = v3;
  v106 = v4;
  MEMORY[0x1EEE9AC00](v3, v5);
  v90 = v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DuplicateContactsListView(0);
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v95 = v11;
  v12 = v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75170);
  v98 = *(v13 - 8);
  v99 = v13;
  v96 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v13, v14);
  v97 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v104 = v80 - v97;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75178);
  MEMORY[0x1EEE9AC00](v103, v16);
  v102 = v80 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF748F8);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = v80 - v21;
  v92 = v12;
  v91 = type metadata accessor for DuplicateContactsListView;
  sub_199B3C7AC(a1, v12, type metadata accessor for DuplicateContactsListView);
  v94 = *(v9 + 80);
  v23 = (v94 + 16) & ~v94;
  v93 = v23;
  v24 = swift_allocObject();
  sub_199B3C814(v12, v24 + v23, type metadata accessor for DuplicateContactsListView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73270);
  sub_199AD5690();
  sub_199DF989C();
  v25 = sub_199DF904C();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = v80 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF903C();
  v82 = MEMORY[0x1EEE7D278];
  sub_199AA0B90(&qword_1EAF74900, &qword_1EAF748F8);
  sub_199B3C8A8(&qword_1EAF71210, MEMORY[0x1EEE7C4C8]);
  sub_199DF944C();
  (*(v26 + 8))(v29, v25);
  (*(v19 + 8))(v22, v18);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74850);
  v31 = *(v30 - 8);
  v88 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30, v32);
  v89 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  v34 = v80 - v89;
  v87 = *(v8 + 40);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74880);
  v35 = v101;
  sub_199DF85EC();
  v83 = sub_199AA0B90(&qword_1EAF74AA0, &qword_1EAF74850);
  sub_199DFA29C();
  sub_199DFA2BC();
  v36 = sub_199DFA2AC();
  v37 = *(v31 + 8);
  v84 = v31 + 8;
  v85 = v37;
  v37(v34, v30);
  LOBYTE(v22) = v36 < 1;
  KeyPath = swift_getKeyPath();
  v39 = swift_allocObject();
  *(v39 + 16) = v22;
  v40 = &v102[*(v103 + 36)];
  *v40 = KeyPath;
  v40[1] = sub_199ADF728;
  v40[2] = v39;
  v41 = v90;
  sub_199DF9EEC();
  v42 = sub_199AA8A84(v41, MEMORY[0x1E69E7CC0]);
  v44 = v43;
  v80[0] = v43;
  v45 = *(v106 + 8);
  v106 += 8;
  v81 = v45;
  v45(v41, v105);
  v112 = v42;
  v113 = v44;
  v46 = *(v35 + 8);
  v110 = *v35;
  v111 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750);
  sub_199DF986C();
  v107 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731D8);
  sub_199B3A56C();
  v80[1] = sub_199A9C458();
  sub_199AA0B90(&qword_1EAF731E0, &qword_1EAF731D8);
  v47 = v102;
  sub_199DF952C();

  sub_199A79A04(v47, &qword_1EAF75178);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75188);
  v49 = v48 - 8;
  v50 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48, v51);
  v52 = v80 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF9EEC();
  v53 = sub_199AA8A84(v41, MEMORY[0x1E69E7CC0]);
  v55 = v54;
  v81(v41, v105);
  v108 = v53;
  v109 = v55;
  v56 = v92;
  v57 = v91;
  sub_199B3C7AC(v101, v92, v91);
  v58 = v93;
  v59 = swift_allocObject();
  sub_199B3C814(v56, v59 + v58, v57);
  v60 = sub_199DF98BC();
  MEMORY[0x1EEE9AC00](v60, v61);
  v62 = v80 - v89;
  sub_199DF85EC();
  sub_199DFA29C();
  sub_199DFA2BC();
  v63 = sub_199DFA2AC();
  v85(v62, v30);
  LOBYTE(v62) = v63 < 1;
  v64 = swift_getKeyPath();
  v65 = swift_allocObject();
  *(v65 + 16) = v62;
  v66 = &v52[*(v49 + 44)];
  *v66 = v64;
  v66[1] = sub_199B3CC4C;
  v66[2] = v65;
  MEMORY[0x1EEE9AC00](v65, v67);
  v68 = v98;
  v69 = v80 - v97;
  v70 = *(v98 + 16);
  v71 = v104;
  v72 = v99;
  v73 = v70(v80 - v97, v104, v99);
  MEMORY[0x1EEE9AC00](v73, v74);
  v75 = v52;
  sub_199AAD408(v52, v52, &qword_1EAF75188);
  v76 = v100;
  v70(v100, v69, v72);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75190);
  sub_199AAD408(v52, &v76[*(v77 + 48)], &qword_1EAF75188);
  sub_199A79A04(v52, &qword_1EAF75188);
  v78 = *(v68 + 8);
  v78(v71, v72);
  sub_199A79A04(v75, &qword_1EAF75188);
  return (v78)(v69, v72);
}

__n128 sub_199B36B10@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_199DF9F4C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF9EEC();
  v7 = sub_199AA8A84(v6, MEMORY[0x1E69E7CC0]);
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  *&v20 = v7;
  *(&v20 + 1) = v9;
  sub_199A9C458();
  v10 = sub_199DF93CC();
  v12 = v11;
  LOBYTE(v7) = v13;
  v15 = v14;
  sub_199DF9B5C();
  sub_199DF897C();
  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v15;
  v16 = v25;
  *(a1 + 96) = v24;
  *(a1 + 112) = v16;
  *(a1 + 128) = v26;
  v17 = v21;
  *(a1 + 32) = v20;
  *(a1 + 48) = v17;
  result = v23;
  *(a1 + 64) = v22;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_199B36CC8(uint64_t a1)
{
  v2 = type metadata accessor for DuplicateContactsListView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v6 = sub_199DF9F4C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF9EEC();
  v11 = sub_199AA8A84(v10, MEMORY[0x1E69E7CC0]);
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  v17[0] = v11;
  v17[1] = v13;
  sub_199B3C7AC(a1, v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DuplicateContactsListView);
  v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15 = swift_allocObject();
  sub_199B3C814(v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for DuplicateContactsListView);
  sub_199A9C458();
  return sub_199DF98BC();
}

uint64_t sub_199B36EDC()
{
  v1 = v0;
  v55[5] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for DuplicateContactsListView(0);
  v3 = sub_199AC392C(*(v0 + *(v2 + 28)), *(v0 + *(v2 + 28) + 8));
  v55[0] = 0;
  v4 = [v3 save_];

  if (v4)
  {
    v5 = v55[0];
  }

  else
  {
    v6 = v55[0];
    v7 = sub_199DF717C();

    swift_willThrow();
    if (qword_1EAF71ED8 != -1)
    {
      swift_once();
    }

    v8 = sub_199DF804C();
    __swift_project_value_buffer(v8, qword_1EAF87028);
    v9 = v7;
    v10 = sub_199DF802C();
    v11 = sub_199DFA31C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v55[0] = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = sub_199DFAA0C();
      v16 = sub_199A9BE90(v14, v15, v55);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_199A75000, v10, v11, "Could not save duplicates to merge. %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x19A8FA1A0](v13, -1, -1);
      MEMORY[0x19A8FA1A0](v12, -1, -1);
    }

    else
    {
    }
  }

  v46 = 0;
  sub_199AAB0E0(v1 + *(v2 + 40), v55);
  v52 = __swift_project_boxed_opaque_existential_0(v55, v55[3]);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74850);
  v51 = &v44;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74880);
  sub_199DF85EC();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74A90);
  v48 = &v44;
  v22 = v21 - 8;
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v26 = &v44 - v25;
  MEMORY[0x1EEE9AC00](v24, v27);
  v49 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v18;
  (*(v18 + 16))(v49, v49, v17);
  sub_199AA0B90(&qword_1EAF74A98, &qword_1EAF74850);
  sub_199DFA08C();
  v28 = *(v22 + 44);
  sub_199AA0B90(&qword_1EAF74AA0, &qword_1EAF74850);
  sub_199DFA2BC();
  if (*&v26[v28] == v54[0])
  {
    v53 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v53 = MEMORY[0x1E69E7CC0];
    v47 = v1;
    do
    {
      while (1)
      {
        v29 = sub_199DFA2DC();
        v31 = *v30;
        v29(v54, 0);
        sub_199DFA2CC();
        if ([v31 isIgnored])
        {
          break;
        }

        v32 = [v31 signature];
        if (!v32)
        {
          break;
        }

        v33 = v32;
        v34 = sub_199DF9F8C();
        v45 = v35;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = sub_199AB26E4(0, *(v53 + 2) + 1, 1, v53);
        }

        v37 = *(v53 + 2);
        v36 = *(v53 + 3);
        if (v37 >= v36 >> 1)
        {
          v53 = sub_199AB26E4((v36 > 1), v37 + 1, 1, v53);
        }

        v38 = v53;
        *(v53 + 2) = v37 + 1;
        v39 = &v38[16 * v37];
        v40 = v45;
        *(v39 + 4) = v34;
        *(v39 + 5) = v40;
        sub_199DFA2BC();
        v1 = v47;
        if (*&v26[v28] == v54[0])
        {
          goto LABEL_21;
        }
      }

      sub_199DFA2BC();
    }

    while (*&v26[v28] != v54[0]);
    v1 = v47;
  }

LABEL_21:
  sub_199A79A04(v26, &qword_1EAF74A90);
  (*(v50 + 8))(v49, v17);
  v41 = off_1F0CE0F70[0];
  v42 = type metadata accessor for DuplicatesUIHelper();
  v41(v1, v53, 1, v42, &off_1F0CE0F60);

  return __swift_destroy_boxed_opaque_existential_0(v55);
}

uint64_t sub_199B37530()
{
  v1 = v0;
  v75[5] = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 24);
  LOBYTE(v75[0]) = *(v0 + 16);
  v75[1] = v2;
  LOBYTE(v74[0]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750);
  sub_199DF985C();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74850);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v7 = v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for DuplicateContactsListView(0);
  v8 = *(v71 + 32);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74880);
  v72 = v1;
  v67 = v8;
  v66 = v9;
  sub_199DF85EC();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74A90);
  v64 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = v62 - v13;
  v69 = v5;
  MEMORY[0x1EEE9AC00](v12, v15);
  v73 = v4;
  v16 = *(v4 + 16);
  v65 = v4 + 16;
  v63 = v16;
  v16(v7, v7, v3);
  v62[2] = sub_199AA0B90(&qword_1EAF74A98, &qword_1EAF74850);
  sub_199DFA08C();
  v68 = v10;
  v17 = *(v10 + 36);
  sub_199AA0B90(&qword_1EAF74AA0, &qword_1EAF74850);
  sub_199DFA2BC();
  while (*&v14[v17] != v75[0])
  {
    v18 = sub_199DFA2DC();
    v20 = *v19;
    v18(v75, 0);
    sub_199DFA2CC();
    [v20 setIsIgnored_];

    sub_199DFA2BC();
  }

  sub_199A79A04(v14, &qword_1EAF74A90);
  v21 = *(v73 + 8);
  v73 += 8;
  v70 = v21;
  v21(v7, v3);
  v22 = v71;
  v23 = v72;
  v24 = sub_199AC392C(*(v72 + *(v71 + 28)), *(v72 + *(v71 + 28) + 8));
  v75[0] = 0;
  v25 = [v24 save_];

  if (v25)
  {
    v26 = v75[0];
  }

  else
  {
    v27 = v75[0];
    v28 = sub_199DF717C();

    swift_willThrow();
    if (qword_1EAF71ED8 != -1)
    {
      swift_once();
    }

    v29 = sub_199DF804C();
    __swift_project_value_buffer(v29, qword_1EAF87028);
    v30 = v28;
    v31 = sub_199DF802C();
    v32 = sub_199DFA31C();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v75[0] = v34;
      *v33 = 136315138;
      swift_getErrorValue();
      v35 = sub_199DFAA0C();
      v37 = sub_199A9BE90(v35, v36, v75);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_199A75000, v31, v32, "Could not save ignored duplicates. %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x19A8FA1A0](v34, -1, -1);
      MEMORY[0x19A8FA1A0](v33, -1, -1);
    }

    else
    {
    }

    v23 = v72;
  }

  sub_199AAB0E0(v23 + *(v22 + 40), v75);
  v71 = __swift_project_boxed_opaque_existential_0(v75, v75[3]);
  v62[1] = v62;
  v38 = v69;
  MEMORY[0x1EEE9AC00](v71, v39);
  v40 = sub_199DF85EC();
  v67 = v62;
  v42 = MEMORY[0x1EEE9AC00](v40, v41);
  v44 = v62 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42, v45);
  v69 = v62 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63(v69, v69, v3);
  sub_199DFA08C();
  v46 = *(v68 + 36);
  sub_199DFA2BC();
  if (*&v44[v46] == v74[0])
  {
    v47 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v66 = 0;
    v47 = MEMORY[0x1E69E7CC0];
    do
    {
      while (1)
      {
        v51 = sub_199DFA2DC();
        v53 = *v52;
        v51(v74, 0);
        sub_199DFA2CC();
        v54 = [v53 signature];
        if (v54)
        {
          break;
        }

        sub_199DFA2BC();
        if (*&v44[v46] == v74[0])
        {
          goto LABEL_13;
        }
      }

      v55 = v54;
      v56 = sub_199DF9F8C();
      v68 = v57;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = sub_199AB26E4(0, *(v47 + 2) + 1, 1, v47);
      }

      v59 = *(v47 + 2);
      v58 = *(v47 + 3);
      if (v59 >= v58 >> 1)
      {
        v47 = sub_199AB26E4((v58 > 1), v59 + 1, 1, v47);
      }

      *(v47 + 2) = v59 + 1;
      v60 = &v47[16 * v59];
      v61 = v68;
      *(v60 + 4) = v56;
      *(v60 + 5) = v61;
      sub_199DFA2BC();
      v23 = v72;
    }

    while (*&v44[v46] != v74[0]);
  }

LABEL_13:
  sub_199A79A04(v44, &qword_1EAF74A90);
  v70(v69, v3);
  v48 = off_1F0CE0F78;
  v49 = type metadata accessor for DuplicatesUIHelper();
  v48(v23, v47, 1, v49, &off_1F0CE0F60);

  return __swift_destroy_boxed_opaque_existential_0(v75);
}

BOOL sub_199B37D9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74850);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1, v4);
  type metadata accessor for DuplicateContactsListView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74880);
  v12 = v0;
  sub_199DF85EC();
  sub_199AA0B90(&qword_1EAF74AA0, &qword_1EAF74850);
  sub_199DFA29C();
  sub_199DFA2BC();
  v5 = sub_199DFA2AC();
  v6 = *(v2 + 8);
  v7 = v6(&v11 - v3, v1);
  if (v5 > 0)
  {
    return 0;
  }

  MEMORY[0x1EEE9AC00](v7, v8);
  sub_199DF85EC();
  sub_199DFA29C();
  sub_199DFA2BC();
  v10 = sub_199DFA2AC();
  v6(&v11 - v3, v1);
  return v10 < 1;
}

void sub_199B37FB8(char a1, id a2, void (*a3)(uint64_t))
{
  v21[1] = *MEMORY[0x1E69E9840];
  [a2 setIsIgnored_];
  v6 = type metadata accessor for DuplicateContactsListView(0);
  v7 = sub_199AC392C(*(v3 + *(v6 + 28)), *(v3 + *(v6 + 28) + 8));
  v21[0] = 0;
  v8 = [v7 save_];

  if (v8)
  {
    v9 = v21[0];
    a3(1);
  }

  else
  {
    v10 = v21[0];
    v11 = sub_199DF717C();

    swift_willThrow();
    a3(0);
    if (qword_1EAF71ED8 != -1)
    {
      swift_once();
    }

    v12 = sub_199DF804C();
    __swift_project_value_buffer(v12, qword_1EAF87028);
    v13 = v11;
    v14 = sub_199DF802C();
    v15 = sub_199DFA31C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21[0] = v17;
      *v16 = 67109378;
      *(v16 + 4) = a1 & 1;
      *(v16 + 8) = 2080;
      swift_getErrorValue();
      v18 = sub_199DFAA0C();
      v20 = sub_199A9BE90(v18, v19, v21);

      *(v16 + 10) = v20;
      _os_log_impl(&dword_199A75000, v14, v15, "Could not set ignore = %{BOOL}d for individual duplicate. %s", v16, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x19A8FA1A0](v17, -1, -1);
      MEMORY[0x19A8FA1A0](v16, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_199B38228(uint64_t result, uint64_t a2, void *a3)
{
  if (result)
  {
    v5 = type metadata accessor for DuplicateContactsListView(0);
    sub_199AAB0E0(a2 + *(v5 + 40), v13);
    __swift_project_boxed_opaque_existential_0(v13, v13[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF722B0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_199E37D40;
    result = [a3 signature];
    if (result)
    {
      v7 = result;
      v8 = sub_199DF9F8C();
      v10 = v9;

      *(v6 + 32) = v8;
      *(v6 + 40) = v10;
      LOBYTE(v7) = sub_199B37D9C();
      v11 = off_1F0CE0F78;
      v12 = type metadata accessor for DuplicatesUIHelper();
      v11(a2, v6, v7 & 1, v12, &off_1F0CE0F60);

      return __swift_destroy_boxed_opaque_existential_0(v13);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_199B38354(id result, uint64_t a2)
{
  if (result)
  {
    v3 = type metadata accessor for DuplicateContactsListView(0);
    v4 = *(*__swift_project_boxed_opaque_existential_0((a2 + *(v3 + 40)), *(a2 + *(v3 + 40) + 24)) + OBJC_IVAR____TtC10ContactsUI18DuplicatesUIHelper_delegate);

    return [v4 didSelectUnignoreDuplicate_];
  }

  return result;
}

id sub_199B383C0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DuplicateContactsListView(0);
  v5 = *(v1 + *(v4 + 64));
  if (![*(v5 + 16) overestimatedCount])
  {
    v6 = sub_199B35AD4();
    sub_199AD60FC(v6);
  }

  v7 = [a1 primaryID];
  if (v7 && (v8 = v7, v9 = *(v5 + 32), [v9 lock], v10 = objc_msgSend(*(v5 + 16), sel_objectForKeyedSubscript_, v8), v8, objc_msgSend(v9, sel_unlock), v10))
  {
    result = [*(*__swift_project_boxed_opaque_existential_0((v2 + *(v4 + 40)) *(v2 + *(v4 + 40) + 24)) + OBJC:sel_contactFormatter IVAR:? :? :? :? TtC10ContactsUI18DuplicatesUIHelper:?delegate)];
    if (result)
    {
      v12 = result;
      if (qword_1EAF71EF0 != -1)
      {
        swift_once();
      }

      v13 = sub_199DF9E8C();
      v14 = [v12 attributedStringFromContact:v10 defaultAttributes:v13];

      if (v14)
      {

        return v14;
      }

      else
      {
        v15 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) init];

        return v15;
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    __swift_project_boxed_opaque_existential_0((v2 + *(v4 + 40)), *(v2 + *(v4 + 40) + 24));
    return sub_199B1D38C(a1);
  }

  return result;
}

uint64_t objectdestroyTm_5()
{
  v1 = type metadata accessor for DuplicateContactsListView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73090);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_199DF867C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  sub_199AC6288(*(v5 + v1[7]), *(v5 + v1[7] + 8));
  v8 = v1[8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74880);
  v10 = *(*(v9 - 8) + 8);
  v10(v5 + v8, v9);
  v10(v5 + v1[9], v9);
  __swift_destroy_boxed_opaque_existential_0(v5 + v1[10]);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_199B38824(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_199B388A0@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v41 = sub_199DF9F4C();
  v2 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DuplicateContactsListView(0) - 8;
  MEMORY[0x1EEE9AC00](v45, v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DuplicateContactsDetailView(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75208);
  MEMORY[0x1EEE9AC00](v44, v13);
  v15 = &v39 - v14;
  v42 = v1;
  v16 = *v1;
  v17 = v1 + *(type metadata accessor for DuplicateListCell(0) + 20);
  v43 = v17;
  v18 = sub_199B383C0(v16);
  v39 = type metadata accessor for DuplicateContactsListView;
  v40 = v18;
  sub_199B3C7AC(v17, v8, type metadata accessor for DuplicateContactsListView);
  LOBYTE(v49) = 0;
  sub_199DF983C();
  v19 = *(&v50 + 1);
  *v12 = v50;
  *(v12 + 1) = v19;
  LOBYTE(v49) = 0;
  sub_199DF983C();
  v20 = *(&v50 + 1);
  v12[16] = v50;
  *(v12 + 3) = v20;
  v21 = v9[6];
  *&v12[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73090);
  swift_storeEnumTagMultiPayload();
  v22 = &v12[v9[7]];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = v9[8];
  v49 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74840);
  sub_199DF983C();
  *&v12[v23] = v50;
  v24 = &v12[v9[9]];
  LOBYTE(v49) = 0;
  sub_199DF983C();
  v25 = *(&v50 + 1);
  *v24 = v50;
  *(v24 + 1) = v25;
  v26 = &v12[v9[14]];
  sub_199DF9EEC();
  v27 = sub_199AA8A84(v5, MEMORY[0x1E69E7CC0]);
  v29 = v28;
  (*(v2 + 8))(v5, v41);
  *v26 = v27;
  v26[1] = v29;
  *&v12[v9[11]] = v16;
  v30 = objc_allocWithZone(sub_199DF9D7C());
  v31 = v16;
  *&v12[v9[10]] = sub_199DF9D3C();
  v32 = v39;
  v33 = v40;
  *&v12[v9[12]] = v40;
  sub_199B3C7AC(v8, &v12[v9[13]], v32);
  sub_199A7A02C(0, &qword_1EAF75210);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v35 = v33;
  v36 = [ObjCClassFromMetadata appearance];
  [v36 setSectionHeaderTopPadding_];

  sub_199B3C4E4(v8);
  v37 = v42;
  v48 = v42;
  sub_199B1B7DC();
  sub_199B3BFFC(&qword_1EAF75218, type metadata accessor for DuplicateContactsDetailView);
  sub_199DF878C();
  *&v50 = *(v43 + *(v45 + 68));

  *&v15[*(v44 + 36)] = sub_199DF995C();
  v47 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75220);
  sub_199B3C550();
  sub_199B3C628();
  sub_199DF94BC();
  return sub_199A79A04(v15, &qword_1EAF75208);
}

uint64_t sub_199B38DDC@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = sub_199DF9F4C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DuplicateListCell(0);
  v9 = *a1;
  v10 = sub_199B383C0(*a1);
  sub_199DF9EEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF761B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_199E37D40;
  v12 = [v9 cohorts];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 count];
  }

  else
  {
    v14 = 0;
  }

  v15 = MEMORY[0x1E69E65A8];
  *(inited + 56) = MEMORY[0x1E69E6530];
  *(inited + 64) = v15;
  *(inited + 32) = v14;
  v16 = sub_199AA8A84(v8, inited);
  v18 = v17;
  swift_setDeallocating();
  sub_199A79A04(inited + 32, &qword_1EAF72790);
  result = (*(v5 + 8))(v8, v4);
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = v10;
  a2[3] = v16;
  a2[4] = v18;
  a2[5] = 0x4010000000000000;
  return result;
}

uint64_t sub_199B38FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = type metadata accessor for DuplicateListCell(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(MEMORY[0x1EEE9AC00](v3 - 8, v6) + 36)) == 1)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75250);
    v50 = v49;
    MEMORY[0x1EEE9AC00](v8, v9);
    v11 = v49 - v10;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731F8);
    MEMORY[0x1EEE9AC00](v12 - 8, v13);
    v15 = v49 - v14;
    v16 = sub_199DF84DC();
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
    sub_199B3C7AC(a1, v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DuplicateListCell);
    v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v18 = swift_allocObject();
    sub_199B3C814(v7, v18 + v17, type metadata accessor for DuplicateListCell);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75268);
    v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75270);
    v20 = sub_199DF8DAC();
    v21 = sub_199AA0B90(&qword_1EAF75278, &qword_1EAF75270);
    v22 = sub_199B3C8A8(&qword_1EAF75280, MEMORY[0x1EEE7BDA8]);
    v52 = v19;
    v53 = v20;
    v54 = v21;
    v55 = v22;
    swift_getOpaqueTypeConformance2();
    sub_199DF988C();
    v23 = sub_199DF970C();
    KeyPath = swift_getKeyPath();
    v25 = &v11[*(v8 + 36)];
    *v25 = KeyPath;
    v25[1] = v23;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75288);
    MEMORY[0x1EEE9AC00](v26, v27);
    sub_199AAD408(v11, v49 - v28, &qword_1EAF75250);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75260);
    sub_199B3C6D4();
    sub_199AA0B90(&qword_1EAF75258, &qword_1EAF75260);
    sub_199DF8EDC();
    return sub_199A79A04(v11, &qword_1EAF75250);
  }

  else
  {
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75260);
    v50 = v49;
    v31 = *(v30 - 8);
    MEMORY[0x1EEE9AC00](v30, v32);
    v34 = v49 - v33;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731F8);
    v49[1] = v49;
    MEMORY[0x1EEE9AC00](v35 - 8, v36);
    v38 = v49 - v37;
    sub_199DF84BC();
    v39 = sub_199DF84DC();
    (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
    sub_199B3C7AC(a1, v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DuplicateListCell);
    v40 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v41 = swift_allocObject();
    sub_199B3C814(v7, v41 + v40, type metadata accessor for DuplicateListCell);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75268);
    v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75270);
    v43 = sub_199DF8DAC();
    v44 = sub_199AA0B90(&qword_1EAF75278, &qword_1EAF75270);
    v45 = sub_199B3C8A8(&qword_1EAF75280, MEMORY[0x1EEE7BDA8]);
    v52 = v42;
    v53 = v43;
    v54 = v44;
    v55 = v45;
    swift_getOpaqueTypeConformance2();
    sub_199DF988C();
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75288);
    MEMORY[0x1EEE9AC00](v46, v47);
    (*(v31 + 16))(v49 - v48, v34, v30);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75250);
    sub_199B3C6D4();
    sub_199AA0B90(&qword_1EAF75258, &qword_1EAF75260);
    sub_199DF8EDC();
    return (*(v31 + 8))(v34, v30);
  }
}

void sub_199B3974C(id *a1)
{
  v2 = type metadata accessor for DuplicateListCell(0);
  sub_199B37FB8(0, *a1, sub_199B3CB58);
  v3 = (a1 + *(v2 + 32));
  if (*v3)
  {
    (*v3)();
  }
}

uint64_t sub_199B397D4@<X0>(uint64_t a1@<X8>)
{
  v20[1] = a1;
  v1 = sub_199DF9F4C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75270);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v20 - v9;
  sub_199DF9EEC();
  v11 = sub_199AA8A84(v5, MEMORY[0x1E69E7CC0]);
  v13 = v12;
  (*(v2 + 8))(v5, v1);
  v20[2] = v11;
  v20[3] = v13;
  sub_199A9C458();
  sub_199DF982C();
  v14 = sub_199DF8DAC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF8D9C();
  sub_199AA0B90(&qword_1EAF75278, &qword_1EAF75270);
  sub_199B3C8A8(&qword_1EAF75280, MEMORY[0x1EEE7BDA8]);
  sub_199DF943C();
  (*(v15 + 8))(v18, v14);
  return (*(v7 + 8))(v10, v6);
}

void sub_199B39A9C(id *a1)
{
  v2 = type metadata accessor for DuplicateListCell(0);
  sub_199B37FB8(1, *a1, sub_199B1B594);
  v3 = (a1 + *(v2 + 32));
  if (*v3)
  {
    (*v3)();
  }
}

uint64_t sub_199B39B24@<X0>(uint64_t a1@<X8>)
{
  v20[1] = a1;
  v1 = sub_199DF9F4C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75270);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v20 - v9;
  sub_199DF9EEC();
  v11 = sub_199AA8A84(v5, MEMORY[0x1E69E7CC0]);
  v13 = v12;
  (*(v2 + 8))(v5, v1);
  v20[2] = v11;
  v20[3] = v13;
  sub_199A9C458();
  sub_199DF982C();
  v14 = sub_199DF8DAC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF8D9C();
  sub_199AA0B90(&qword_1EAF75278, &qword_1EAF75270);
  sub_199B3C8A8(&qword_1EAF75280, MEMORY[0x1EEE7BDA8]);
  sub_199DF943C();
  (*(v15 + 8))(v18, v14);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_199B39DF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for DuplicateContactsPreviouslyIgnoredDetailView(0);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v6 + 20);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74850);
  (*(*(v10 - 8) + 16))(v8 + v9, v2, v10);
  v11 = type metadata accessor for DuplicatePreviouslyIgnoredCell(0);
  v12 = v2 + *(v11 + 20);
  sub_199B3C7AC(v12, v8 + *(v4 + 24), type metadata accessor for DuplicateContactsListView);
  v13 = *(v2 + *(v11 + 24));
  *v8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72318);
  swift_storeEnumTagMultiPayload();
  *(v8 + *(v4 + 28)) = v13;
  v17 = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75290);
  sub_199AA0B90(&qword_1EAF75298, &qword_1EAF75290);
  sub_199B3BFFC(&qword_1EAF752A0, type metadata accessor for DuplicateContactsPreviouslyIgnoredDetailView);
  sub_199DF878C();
  v18 = *(v12 + *(type metadata accessor for DuplicateContactsListView(0) + 60));

  v14 = sub_199DF995C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF752A8);
  *(a1 + *(result + 36)) = v14;
  return result;
}

double sub_199B3A058@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_199DF8CFC();
  v14 = 1;
  sub_199B3A160(&v8);
  v17 = v10;
  v18 = v11;
  v15 = v8;
  v16 = v9;
  v20[2] = v10;
  v20[3] = v11;
  v20[4] = v12;
  v20[1] = v9;
  v19 = v12;
  v20[0] = v8;
  sub_199AAD408(&v15, &v7, &qword_1EAF752B0);
  sub_199A79A04(v20, &qword_1EAF752B0);
  *&v13[7] = v15;
  *&v13[71] = v19;
  *&v13[55] = v18;
  *&v13[39] = v17;
  *&v13[23] = v16;
  v3 = *&v13[48];
  *(a1 + 49) = *&v13[32];
  *(a1 + 65) = v3;
  *(a1 + 81) = *&v13[64];
  result = *v13;
  v5 = *&v13[16];
  *(a1 + 17) = *v13;
  v6 = v14;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  *(a1 + 96) = *&v13[79];
  *(a1 + 33) = v5;
  return result;
}

uint64_t sub_199B3A160@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_199DF9F4C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF9EEC();
  v7 = sub_199AA8A84(v6, MEMORY[0x1E69E7CC0]);
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v30 = v7;
  v31 = v9;
  sub_199A9C458();
  v10 = sub_199DF93CC();
  v12 = v11;
  v26 = v13;
  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74850);
  sub_199AA0B90(&qword_1EAF74AA0, &qword_1EAF74850);
  sub_199DFA29C();
  sub_199DFA2BC();
  v30 = sub_199DFA2AC();
  sub_199DFA96C();
  sub_199DF977C();
  v16 = sub_199DF933C();
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = v26 & 1;
  LOBYTE(v30) = v26 & 1;
  v29 = v26 & 1;
  v28 = 1;
  v27 = v20 & 1;
  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v23;
  *(a1 + 24) = v15;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v16;
  *(a1 + 56) = v18;
  *(a1 + 64) = v20 & 1;
  *(a1 + 72) = v22;
  sub_199ACE3F8(v10, v12, v23);
  sub_199DF81AC();
  sub_199ACE3F8(v16, v18, v20 & 1);
  sub_199DF81AC();
  sub_199ACE3E8(v16, v18, v20 & 1);

  sub_199ACE3E8(v10, v12, v30);
}

unint64_t sub_199B3A460()
{
  result = qword_1EAF75130;
  if (!qword_1EAF75130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75128);
    sub_199B1BEF4();
    sub_199AA0B90(&qword_1EAF75138, &qword_1EAF75140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75130);
  }

  return result;
}

unint64_t sub_199B3A56C()
{
  result = qword_1EAF75180;
  if (!qword_1EAF75180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75178);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF748F8);
    sub_199DF904C();
    sub_199AA0B90(&qword_1EAF74900, &qword_1EAF748F8);
    sub_199B3C8A8(&qword_1EAF71210, MEMORY[0x1EEE7C4C8]);
    swift_getOpaqueTypeConformance2();
    sub_199AA0B90(&qword_1EAF73868, &qword_1EAF73870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75180);
  }

  return result;
}

uint64_t sub_199B3A75C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_199DF8C3C();
  *a1 = result;
  return result;
}

uint64_t sub_199B3A7B4(void **__src, id *a2, id *a3, void **a4, uint64_t a5, void *a6, uint64_t (*a7)(void *, void *))
{
  v7 = a3;
  v8 = a2;
  v9 = __src;
  v10 = a2 - __src;
  v11 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v11 = a2 - __src;
  }

  v12 = v11 >> 3;
  v13 = a3 - a2;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v12 < v14 >> 3)
  {
    v16 = a4;
    if (a4 != __src || &__src[v12] <= a4)
    {
      memmove(a4, __src, 8 * v12);
      v8 = a2;
    }

    v71 = &v16[v12];
    if (v10 < 8)
    {
LABEL_10:
      v18 = v9;
      goto LABEL_49;
    }

    while (1)
    {
      if (v8 >= v7)
      {
        goto LABEL_10;
      }

      v60 = v9;
      __dst = v8;
      v21 = *v16;
      v22 = *v8;
      v23 = v21;
      v24 = [v22 primaryID];
      if (!v24 || (v25 = v24, v26 = *(a5 + 32), [v26 lock], v27 = objc_msgSend(*(a5 + 16), sel_objectForKeyedSubscript_, v25), v25, objc_msgSend(v26, sel_unlock), !v27))
      {
        v27 = a6;
      }

      v28 = [v23 primaryID];
      if (!v28 || (v29 = v28, v30 = *(a5 + 32), [v30 lock], v31 = objc_msgSend(*(a5 + 16), sel_objectForKeyedSubscript_, v29), v29, objc_msgSend(v30, sel_unlock), !v31))
      {
        v31 = a6;
      }

      v70 = sub_199A7A02C(0, &qword_1ED615BF0);
      v68 = v70;
      v69[0] = v27;
      v67[0] = v31;
      v32 = v27;
      v33 = v31;
      v34 = a7(v69, v67);

      __swift_destroy_boxed_opaque_existential_0(v67);
      __swift_destroy_boxed_opaque_existential_0(v69);

      if (v34 != -1)
      {
        break;
      }

      v19 = v60;
      v20 = __dst;
      v8 = __dst + 1;
      if (v60 != __dst)
      {
        goto LABEL_12;
      }

LABEL_13:
      v9 = v19 + 1;
      if (v16 >= v71)
      {
        goto LABEL_10;
      }
    }

    v20 = v16;
    v19 = v60;
    v35 = v60 == v16++;
    v8 = __dst;
    if (v35)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v19 = *v20;
    goto LABEL_13;
  }

  if (a4 != a2 || &a2[v15] <= a4)
  {
    v36 = a4;
    memmove(a4, a2, 8 * v15);
    v8 = a2;
    a4 = v36;
  }

  v71 = &a4[v15];
  v16 = a4;
  if (v13 < 8 || v8 <= v9)
  {
    v18 = v8;
  }

  else
  {
    v38 = &off_1E74E9000;
    v59 = a4;
    v61 = v9;
    do
    {
      __dsta = v8;
      v39 = v8 - 1;
      --v7;
      v40 = v71;
      v58 = v39;
      while (1)
      {
        v41 = *--v40;
        v42 = *v39;
        v43 = v41;
        v44 = v42;
        v45 = [v43 v38[429]];
        if (!v45 || (v46 = v45, v47 = *(a5 + 32), [v47 lock], v48 = objc_msgSend(*(a5 + 16), sel_objectForKeyedSubscript_, v46), v46, objc_msgSend(v47, sel_unlock), !v48))
        {
          v48 = a6;
        }

        v49 = [v44 v38[429]];
        if (!v49 || (v50 = v49, v51 = *(a5 + 32), [v51 lock], v52 = objc_msgSend(*(a5 + 16), sel_objectForKeyedSubscript_, v50), v50, objc_msgSend(v51, sel_unlock), !v52))
        {
          v52 = a6;
        }

        v70 = sub_199A7A02C(0, &qword_1ED615BF0);
        v68 = v70;
        v69[0] = v48;
        v67[0] = v52;
        v53 = v48;
        v54 = v52;
        v55 = a7(v69, v67);

        __swift_destroy_boxed_opaque_existential_0(v67);
        __swift_destroy_boxed_opaque_existential_0(v69);

        v56 = (v7 + 1);
        if (v55 == -1)
        {
          break;
        }

        v38 = &off_1E74E9000;
        v39 = v58;
        if (v56 != v71)
        {
          *v7 = *v40;
        }

        --v7;
        v71 = v40;
        if (v40 <= v59)
        {
          v71 = v40;
          v16 = v59;
          v18 = __dsta;
          goto LABEL_49;
        }
      }

      v38 = &off_1E74E9000;
      v18 = v58;
      if (v56 != __dsta)
      {
        *v7 = *v58;
      }

      v16 = v59;
      if (v71 <= v59)
      {
        break;
      }

      v8 = v58;
    }

    while (v58 > v61);
  }

LABEL_49:
  if (v18 != v16 || v18 >= (v16 + ((v71 - v16 + (v71 - v16 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v18, v16, 8 * (v71 - v16));
  }

  return 1;
}

uint64_t sub_199B3AD20(void **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t (*a7)(void *, void *), uint64_t a8)
{
  v8 = a8;
  v10 = a3[1];
  if (v10 < 1)
  {
    swift_retain_n();
    v130 = a6;
    swift_retain_n();
    v131 = v130;
    v13 = MEMORY[0x1E69E7CC0];
LABEL_115:
    v164 = *a1;
    if (!*a1)
    {
LABEL_158:

      __break(1u);
      return result;
    }

    swift_retain_n();
    v132 = a6;
    swift_retain_n();
    v166 = v132;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_117;
    }

    goto LABEL_151;
  }

  v149 = a4;
  swift_retain_n();
  v11 = a6;
  swift_retain_n();
  v179 = v11;
  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v14 = v8;
    v15 = v12;
    v166 = v12 + 1;
    if (v12 + 1 < v10)
    {
      v155 = v10;
      v160 = v13;
      v16 = *a3;
      v17 = *(*a3 + 8 * v12);
      v18 = *(*a3 + 8 * (v12 + 1));
      v19 = v17;
      v20 = [v18 primaryID];
      if (!v20 || (v21 = v20, v22 = *(a5 + 32), [v22 lock], v23 = objc_msgSend(*(a5 + 16), sel_objectForKeyedSubscript_, v21), v21, objc_msgSend(v22, sel_unlock), !v23))
      {
        v23 = v179;
      }

      v167 = v19;
      v24 = [v19 primaryID];
      if (!v24 || (v25 = v24, v26 = *(a5 + 32), [v26 lock], v27 = objc_msgSend(*(a5 + 16), sel_objectForKeyedSubscript_, v25), v25, objc_msgSend(v26, sel_unlock), !v27))
      {
        v27 = v179;
      }

      v178 = sub_199A7A02C(0, &qword_1ED615BF0);
      v177[0] = v23;
      v154 = v178;
      v176 = v178;
      v175[0] = v27;
      v28 = v23;
      v29 = v27;
      v157 = a7(v177, v175);

      __swift_destroy_boxed_opaque_existential_0(v175);
      __swift_destroy_boxed_opaque_existential_0(v177);

      v30 = (v16 + 8 * v15 + 16);
      v153 = 8 * v15;
      v31 = 8 * v15 + 8;
      do
      {
        v36 = v166;
        v37 = v31;
        if (++v166 >= v155)
        {
          break;
        }

        v38 = *(v30 - 1);
        v39 = *v30;
        v40 = v38;
        v168 = v39;
        v41 = [v39 primaryID];
        if (v41)
        {
          v42 = v41;
          v43 = *(a5 + 32);
          [v43 lock];
          v44 = [*(a5 + 16) objectForKeyedSubscript_];

          [v43 unlock];
          if (v44)
          {
            continue;
          }
        }

        v44 = v179;
        v164 = v40;
        v45 = [v40 primaryID];
        if (v45)
        {
          v46 = v45;
          v47 = *(a5 + 32);
          [v47 lock];
          v32 = [*(a5 + 16) objectForKeyedSubscript_];

          [v47 unlock];
          if (v32)
          {
            continue;
          }
        }

        v32 = v179;
        v178 = v154;
        v177[0] = v44;
        v176 = v154;
        v175[0] = v32;
        v33 = v44;
        v34 = v32;
        v35 = a7(v177, v175);

        __swift_destroy_boxed_opaque_existential_0(v175);
        __swift_destroy_boxed_opaque_existential_0(v177);

        ++v30;
        v31 = v37 + 8;
      }

      while ((v157 == -1) != (v35 != -1));
      if (v157 == -1)
      {
        v13 = v160;
        if (v166 < v15)
        {
          __break(1u);
LABEL_153:

          v145 = v179;

          __break(1u);
LABEL_154:

          v146 = v179;

          __break(1u);
          goto LABEL_155;
        }

        if (v15 >= v166)
        {
          v14 = a8;
        }

        else
        {
          v48 = v15;
          do
          {
            if (v48 != v36)
            {
              v51 = *a3;
              if (!*a3)
              {
                goto LABEL_156;
              }

              v49 = *(v51 + v153);
              *(v51 + v153) = *(v51 + v37);
              *(v51 + v37) = v49;
            }

            ++v48;
            v37 -= 8;
            v153 += 8;
          }

          while (v48 < v36--);
          v14 = a8;
        }
      }

      else
      {
        v14 = a8;
        v13 = v160;
      }
    }

    v52 = a3[1];
    if (v166 >= v52)
    {
      v54 = v166;
      if (v166 < v15)
      {
        goto LABEL_147;
      }

      goto LABEL_60;
    }

    if (__OFSUB__(v166, v15))
    {
      goto LABEL_148;
    }

    if (v166 - v15 >= v149)
    {
      v54 = v166;
LABEL_59:
      if (v54 < v15)
      {
        goto LABEL_147;
      }

      goto LABEL_60;
    }

    v53 = (v15 + v149);
    if (__OFADD__(v15, v149))
    {
      goto LABEL_149;
    }

    if (v53 >= v52)
    {
      v53 = a3[1];
    }

    if (v53 < v15)
    {
      goto LABEL_150;
    }

    v54 = v166;
    if (v166 == v53)
    {
      goto LABEL_59;
    }

    v161 = v13;
    v169 = *a3;
    v55 = *a3 + 8 * v166 - 8;
    v56 = v166;
    v151 = v15;
    v57 = v15 - v166;
    v156 = v53;
    do
    {
      v166 = v56;
      v58 = *(v169 + 8 * v56);
      v158 = v57;
      v164 = v55;
      do
      {
        v59 = *v55;
        v60 = v58;
        v61 = v59;
        v62 = [v60 primaryID];
        if (!v62 || (v63 = v62, v64 = *(a5 + 32), [v64 lock], v65 = objc_msgSend(*(a5 + 16), sel_objectForKeyedSubscript_, v63), v63, objc_msgSend(v64, sel_unlock), !v65))
        {
          v65 = v179;
        }

        v66 = [v61 primaryID];
        if (!v66 || (v67 = v66, v68 = *(a5 + 32), [v68 lock], v69 = objc_msgSend(*(a5 + 16), sel_objectForKeyedSubscript_, v67), v67, objc_msgSend(v68, sel_unlock), !v69))
        {
          v69 = v179;
        }

        v178 = sub_199A7A02C(0, &qword_1ED615BF0);
        v177[0] = v65;
        v176 = v178;
        v175[0] = v69;
        v70 = v65;
        v71 = v69;
        v72 = a7(v177, v175);

        __swift_destroy_boxed_opaque_existential_0(v175);
        __swift_destroy_boxed_opaque_existential_0(v177);

        if (v72 != -1)
        {
          break;
        }

        if (!v169)
        {
          goto LABEL_153;
        }

        v73 = *v55;
        v58 = *(v55 + 8);
        *v55 = v58;
        *(v55 + 8) = v73;
        v55 -= 8;
      }

      while (!__CFADD__(v57++, 1));
      v56 = v166 + 1;
      v55 = v164 + 8;
      v57 = v158 - 1;
    }

    while ((v166 + 1) != v156);
    v54 = v156;
    v14 = a8;
    v13 = v161;
    v15 = v151;
    if (v156 < v151)
    {
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      v13 = sub_199B3A748(v13);
LABEL_117:
      v133 = (v13 + 16);
      v134 = *(v13 + 16);
      if (v134 < 2)
      {
LABEL_125:
      }

      v163 = v13;
      while (1)
      {
        v135 = *a3;
        if (!*a3)
        {
          break;
        }

        v136 = (v13 + 16 * v134);
        v137 = *v136;
        v138 = &v133[2 * v134];
        v139 = *v138;
        v13 = v138[1];
        v179 = (v135 + 8 * *v136);
        v140 = (v135 + 8 * v139);
        v171 = (v135 + 8 * v13);

        v141 = v166;

        sub_199B3A7B4(v179, v140, v171, v164, a5, v141, a7);
        if (v165)
        {

          goto LABEL_113;
        }

        if (v13 < v137)
        {
          goto LABEL_144;
        }

        v142 = *v133;
        if (v134 - 2 >= *v133)
        {
          goto LABEL_145;
        }

        *v136 = v137;
        v136[1] = v13;
        v143 = v142 - v134;
        if (v142 < v134)
        {
          goto LABEL_146;
        }

        v134 = v142 - 1;
        memmove(v138, v138 + 2, 16 * v143);
        *v133 = v134;
        v13 = v163;
        if (v134 <= 1)
        {
          goto LABEL_125;
        }
      }

LABEL_155:

      __break(1u);
LABEL_156:

      v147 = v179;

      __break(1u);
LABEL_157:

      v148 = v179;

      __break(1u);
      goto LABEL_158;
    }

LABEL_60:
    v166 = v54;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_199AB2A50(0, *(v13 + 16) + 1, 1, v13);
    }

    v75 = v13;
    v76 = *(v13 + 16);
    v162 = v75;
    v77 = *(v75 + 24);
    v78 = v76 + 1;
    if (v76 >= v77 >> 1)
    {
      v162 = sub_199AB2A50((v77 > 1), v76 + 1, 1, v162);
    }

    *(v162 + 2) = v78;
    v79 = v162 + 32;
    v80 = &v162[16 * v76 + 32];
    *v80 = v15;
    *(v80 + 1) = v166;
    v164 = *a1;
    if (!*a1)
    {
      goto LABEL_157;
    }

    v8 = v14;
    if (v76)
    {
      break;
    }

    v13 = v162;
LABEL_4:
    v10 = a3[1];
    v12 = v166;
    if (v166 >= v10)
    {
      goto LABEL_115;
    }
  }

  v13 = v162;
  while (1)
  {
    v81 = v78 - 1;
    if (v78 >= 4)
    {
      v86 = &v79[16 * v78];
      v87 = *(v86 - 8);
      v88 = *(v86 - 7);
      v92 = __OFSUB__(v88, v87);
      v89 = v88 - v87;
      if (v92)
      {
        goto LABEL_132;
      }

      v91 = *(v86 - 6);
      v90 = *(v86 - 5);
      v92 = __OFSUB__(v90, v91);
      v84 = v90 - v91;
      v85 = v92;
      if (v92)
      {
        goto LABEL_133;
      }

      v93 = (v13 + 16 * v78);
      v95 = *v93;
      v94 = v93[1];
      v92 = __OFSUB__(v94, v95);
      v96 = v94 - v95;
      if (v92)
      {
        goto LABEL_135;
      }

      v92 = __OFADD__(v84, v96);
      v97 = v84 + v96;
      if (v92)
      {
        goto LABEL_137;
      }

      if (v97 >= v89)
      {
        v115 = &v79[16 * v81];
        v117 = *v115;
        v116 = *(v115 + 1);
        v92 = __OFSUB__(v116, v117);
        v118 = v116 - v117;
        if (v92)
        {
          goto LABEL_143;
        }

        if (v84 < v118)
        {
          v81 = v78 - 2;
        }

        goto LABEL_102;
      }

      goto LABEL_80;
    }

    if (v78 == 3)
    {
      v82 = *(v13 + 32);
      v83 = *(v13 + 40);
      v92 = __OFSUB__(v83, v82);
      v84 = v83 - v82;
      v85 = v92;
LABEL_80:
      if (v85)
      {
        goto LABEL_134;
      }

      v98 = (v13 + 16 * v78);
      v100 = *v98;
      v99 = v98[1];
      v101 = __OFSUB__(v99, v100);
      v102 = v99 - v100;
      v103 = v101;
      if (v101)
      {
        goto LABEL_136;
      }

      v104 = &v79[16 * v81];
      v106 = *v104;
      v105 = *(v104 + 1);
      v92 = __OFSUB__(v105, v106);
      v107 = v105 - v106;
      if (v92)
      {
        goto LABEL_139;
      }

      if (__OFADD__(v102, v107))
      {
        goto LABEL_141;
      }

      if (v102 + v107 >= v84)
      {
        if (v84 < v107)
        {
          v81 = v78 - 2;
        }

        goto LABEL_102;
      }

      goto LABEL_95;
    }

    if (v78 < 2)
    {
      goto LABEL_142;
    }

    v108 = (v13 + 16 * v78);
    v110 = *v108;
    v109 = v108[1];
    v92 = __OFSUB__(v109, v110);
    v102 = v109 - v110;
    v103 = v92;
LABEL_95:
    if (v103)
    {
      goto LABEL_138;
    }

    v111 = &v79[16 * v81];
    v113 = *v111;
    v112 = *(v111 + 1);
    v92 = __OFSUB__(v112, v113);
    v114 = v112 - v113;
    if (v92)
    {
      goto LABEL_140;
    }

    if (v114 < v102)
    {
      goto LABEL_4;
    }

LABEL_102:
    if (v81 - 1 >= v78)
    {
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

    v119 = *a3;
    if (!*a3)
    {
      goto LABEL_154;
    }

    v120 = &v79[16 * v81 - 16];
    v121 = *v120;
    v122 = v81;
    v123 = &v79[16 * v81];
    v124 = *(v123 + 1);
    v170 = (v119 + 8 * *v120);
    v125 = (v119 + 8 * *v123);
    v126 = (v119 + 8 * v124);
    v13 = a5;

    v127 = v179;

    v128 = v126;
    v8 = a8;
    sub_199B3A7B4(v170, v125, v128, v164, a5, v127, a7);
    if (v165)
    {
      break;
    }

    if (v124 < v121)
    {
      goto LABEL_129;
    }

    v13 = v162;
    v129 = *(v162 + 2);
    if (v122 > v129)
    {
      goto LABEL_130;
    }

    *v120 = v121;
    *(v120 + 1) = v124;
    if (v122 >= v129)
    {
      goto LABEL_131;
    }

    v78 = v129 - 1;
    memmove(v123, v123 + 16, 16 * (v129 - 1 - v122));
    *(v162 + 2) = v129 - 1;
    v79 = v162 + 32;
    if (v129 <= 2)
    {
      goto LABEL_4;
    }
  }

LABEL_113:
}

void sub_199B3BA80(uint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(void **, void *), uint64_t a5)
{
  v9 = a1[1];
  swift_retain_n();
  v10 = a3;
  swift_retain_n();
  v40 = v10;
  v11 = sub_199DFA95C();
  v12 = v9;
  if (v11 >= v9)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      if (v9)
      {
        if (v9 == 1)
        {
        }

        else
        {
          v41 = v9;
          v18 = *a1;
          v51 = a2;

          v47 = v40;

          v19 = -1;
          v20 = 1;
          v46 = v18;
          do
          {
            v43 = v20;
            v44 = v19;
            v21 = *(v46 + 8 * v20);
            v42 = v18;
            do
            {
              v22 = *v18;
              v23 = v21;
              v24 = v22;
              v25 = [v23 primaryID];
              if (!v25 || (v26 = v25, v27 = v51, v28 = *(v51 + 32), [v28 lock], v29 = objc_msgSend(*(v27 + 16), sel_objectForKeyedSubscript_, v26), v26, objc_msgSend(v28, sel_unlock), !v29))
              {
                v29 = v47;
              }

              v30 = [v24 primaryID];
              if (!v30 || (v31 = v30, v32 = v51, v33 = *(v51 + 32), [v33 lock], v34 = objc_msgSend(*(v32 + 16), sel_objectForKeyedSubscript_, v31), v31, objc_msgSend(v33, sel_unlock), !v34))
              {
                v34 = v47;
              }

              v50 = sub_199A7A02C(0, &qword_1ED615BF0);
              v48[3] = v50;
              v49[0] = v29;
              v48[0] = v34;
              v35 = v29;
              v36 = v34;
              v37 = a4(v49, v48);

              __swift_destroy_boxed_opaque_existential_0(v48);
              __swift_destroy_boxed_opaque_existential_0(v49);

              if (v37 != -1)
              {
                break;
              }

              if (!v46)
              {
                goto LABEL_31;
              }

              v38 = *v18;
              v21 = *(v18 + 8);
              *v18 = v21;
              *(v18 + 8) = v38;
              v18 -= 8;
            }

            while (!__CFADD__(v19++, 1));
            v20 = v43 + 1;
            v18 = v42 + 8;
            v19 = v44 - 1;
          }

          while (v43 + 1 != v41);
        }
      }

      else
      {
      }

      goto LABEL_28;
    }
  }

  else
  {
    if (v9 >= -1)
    {
      v13 = v11;
      v14 = v12 / 2;
      if (v12 <= 1)
      {
        v15 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_199DF9D1C();
        v15 = sub_199DFA0FC();
        *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) = v14;
      }

      v16 = v15 & 0xFFFFFFFFFFFFFF8;
      v49[0] = ((v15 & 0xFFFFFFFFFFFFFF8) + 32);
      v49[1] = v14;

      v17 = v40;

      sub_199B3AD20(v49, v48, a1, v13, a2, v17, a4, a5);

      *(v16 + 16) = 0;

LABEL_28:

      return;
    }

    __break(1u);
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

uint64_t sub_199B3BE98(uint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(void **, void *), uint64_t a5)
{
  v6 = v5;
  v12 = *a1;
  swift_retain_n();
  v13 = a3;
  swift_retain_n();
  v14 = v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_199A973D0(v12);
    *a1 = v12;
  }

  v16 = *(v12 + 16);
  v19[0] = v12 + 32;
  v19[1] = v16;

  v17 = v14;

  sub_199B3BA80(v19, a2, v17, a4, a5);

  sub_199DFA78C();
  if (v6)
  {
  }

  else
  {
  }
}

uint64_t sub_199B3BFFC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_199B3C074@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for DuplicateContactsListView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_199B35E64(a1, v6, a2);
}

void sub_199B3C11C()
{
  sub_199B324B0(319, &qword_1EAF74868, MEMORY[0x1E695C0D0], MEMORY[0x1EEE7B7A0]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for DuplicateContactsListView(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CNUIDuplicatesContactStoreFacade();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_199B3C204()
{
  sub_199DF9D1C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DuplicateContactsListView(319);
    if (v1 <= 0x3F)
    {
      sub_199B22320();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_199B3C2E0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_199B3C364()
{
  result = qword_1EAF75200;
  if (!qword_1EAF75200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75100);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF750B0);
    sub_199DF8FDC();
    sub_199AA0B90(&qword_1EAF750F0, &qword_1EAF750B0);
    sub_199B3C8A8(&qword_1EAF750F8, MEMORY[0x1EEE7C320]);
    swift_getOpaqueTypeConformance2();
    sub_199AA0B90(&qword_1EAF71218, &qword_1EAF73738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75200);
  }

  return result;
}

uint64_t sub_199B3C4E4(uint64_t a1)
{
  v2 = type metadata accessor for DuplicateContactsListView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_199B3C550()
{
  result = qword_1EAF75228;
  if (!qword_1EAF75228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75208);
    sub_199AA0B90(&qword_1EAF75230, &qword_1EAF75238);
    sub_199AA0B90(&qword_1EAF74958, &qword_1EAF74960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75228);
  }

  return result;
}

unint64_t sub_199B3C628()
{
  result = qword_1EAF75240;
  if (!qword_1EAF75240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75220);
    sub_199B3C6D4();
    sub_199AA0B90(&qword_1EAF75258, &qword_1EAF75260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75240);
  }

  return result;
}

unint64_t sub_199B3C6D4()
{
  result = qword_1EAF75248;
  if (!qword_1EAF75248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75250);
    sub_199AA0B90(&qword_1EAF75258, &qword_1EAF75260);
    sub_199AA0B90(&qword_1EAF711F8, &qword_1EAF732B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75248);
  }

  return result;
}

uint64_t sub_199B3C7AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_199B3C814(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_199B3C8A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_71Tm_0()
{
  v1 = type metadata accessor for DuplicateListCell(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v12 = *(*(v1 - 8) + 64);

  v4 = v0 + v3 + *(v1 + 20);

  v5 = type metadata accessor for DuplicateContactsListView(0);
  v6 = v5[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73090);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_199DF867C();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  else
  {
  }

  sub_199AC6288(*(v4 + v5[7]), *(v4 + v5[7] + 8));
  v8 = v5[8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74880);
  v10 = *(*(v9 - 8) + 8);
  v10(v4 + v8, v9);
  v10(v4 + v5[9], v9);
  __swift_destroy_boxed_opaque_existential_0(v4 + v5[10]);

  if (*(v0 + v3 + *(v1 + 32)))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v12, v2 | 7);
}

unint64_t sub_199B3CB68()
{
  result = qword_1EAF752B8;
  if (!qword_1EAF752B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF752A8);
    sub_199AA0B90(&qword_1EAF752C0, &qword_1EAF752C8);
    sub_199AA0B90(&qword_1EAF74958, &qword_1EAF74960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF752B8);
  }

  return result;
}

uint64_t AvatarAlignment.hashValue.getter()
{
  v1 = *v0;
  sub_199DFAA7C();
  MEMORY[0x19A8F8860](v1);
  return sub_199DFAABC();
}

unint64_t sub_199B3CCDC()
{
  result = qword_1EAF752D0;
  if (!qword_1EAF752D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF752D0);
  }

  return result;
}

uint64_t sub_199B3CD40()
{
  sub_199B2AE70();
  sub_199DF8C9C();
  return v1;
}

uint64_t sub_199B3CD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_199B3CDF0();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_199B3CDF0()
{
  result = qword_1EAF710D0;
  if (!qword_1EAF710D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF72E80);
    sub_199B3CE74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF710D0);
  }

  return result;
}

unint64_t sub_199B3CE74()
{
  result = qword_1EAF710C8;
  if (!qword_1EAF710C8)
  {
    sub_199B3CECC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF710C8);
  }

  return result;
}

unint64_t sub_199B3CECC()
{
  result = qword_1EAF710D8;
  if (!qword_1EAF710D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAF710D8);
  }

  return result;
}

id CNPosterEditorViewConfiguration.__allocating_init(posterArchiveData:imageData:displayName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = &v13[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterArchiveData];
  *v14 = a1;
  v14[1] = a2;
  v15 = &v13[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_imageData];
  *v15 = a3;
  v15[1] = a4;
  v16 = &v13[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_displayName];
  *v16 = a5;
  v16[1] = a6;
  v17 = &v13[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_contactIdentifier];
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v13[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_isMe] = 1;
  *&v13[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterConfiguration] = 0;
  v19.receiver = v13;
  v19.super_class = v6;
  return objc_msgSendSuper2(&v19, sel_init);
}

id sub_199B3D098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void *a8, void *a9)
{
  v18 = objc_allocWithZone(v9);
  v19 = &v18[*a8];
  *v19 = a1;
  v19[1] = a2;
  v20 = &v18[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_displayName];
  *v20 = a3;
  v20[1] = a4;
  v21 = &v18[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_contactIdentifier];
  *v21 = a5;
  v21[1] = a6;
  v18[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_isMe] = a7;
  *&v18[*a9] = xmmword_199E3FAD0;
  *&v18[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterConfiguration] = 0;
  v23.receiver = v18;
  v23.super_class = v9;
  return objc_msgSendSuper2(&v23, sel_init);
}

id sub_199B3D1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void *a8, void *a9)
{
  v10 = &v9[*a8];
  *v10 = a1;
  v10[1] = a2;
  v11 = &v9[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_displayName];
  *v11 = a3;
  v11[1] = a4;
  v12 = &v9[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_contactIdentifier];
  *v12 = a5;
  v12[1] = a6;
  v9[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_isMe] = a7;
  *&v9[*a9] = xmmword_199E3FAD0;
  *&v9[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterConfiguration] = 0;
  v14.receiver = v9;
  v14.super_class = type metadata accessor for CNPosterEditorViewConfiguration();
  return objc_msgSendSuper2(&v14, sel_init);
}

id sub_199B3D244(_BYTE *a1, uint64_t a2, void *a3, void *a4, void *a5, char a6, void *a7, void *a8)
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = sub_199DF71FC();
  v18 = v17;

  v19 = sub_199DF9F8C();
  v21 = v20;

  v22 = sub_199DF9F8C();
  v24 = v23;

  v25 = &a1[*a7];
  *v25 = v16;
  v25[1] = v18;
  v26 = &a1[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_displayName];
  *v26 = v19;
  v26[1] = v21;
  v27 = &a1[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_contactIdentifier];
  *v27 = v22;
  v27[1] = v24;
  a1[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_isMe] = a6;
  *&a1[*a8] = xmmword_199E3FAD0;
  *&a1[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterConfiguration] = 0;
  v30.receiver = a1;
  v30.super_class = type metadata accessor for CNPosterEditorViewConfiguration();
  return objc_msgSendSuper2(&v30, sel_init);
}

id CNPosterEditorViewConfiguration.__allocating_init(imageData:displayName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_imageData];
  *v10 = a1;
  v10[1] = a2;
  v11 = &v9[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_displayName];
  *v11 = a3;
  v11[1] = a4;
  v12 = &v9[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_contactIdentifier];
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v9[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_isMe] = 1;
  *&v9[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterArchiveData] = xmmword_199E3FAD0;
  *&v9[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterConfiguration] = 0;
  v14.receiver = v9;
  v14.super_class = v4;
  return objc_msgSendSuper2(&v14, sel_init);
}

id CNPosterEditorViewConfiguration.init(imageData:displayName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_imageData];
  *v5 = a1;
  v5[1] = a2;
  v6 = &v4[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_displayName];
  *v6 = a3;
  v6[1] = a4;
  v7 = &v4[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_contactIdentifier];
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v4[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_isMe] = 1;
  *&v4[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterArchiveData] = xmmword_199E3FAD0;
  *&v4[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterConfiguration] = 0;
  v9.receiver = v4;
  v9.super_class = type metadata accessor for CNPosterEditorViewConfiguration();
  return objc_msgSendSuper2(&v9, sel_init);
}

id CNPosterEditorViewConfiguration.__allocating_init(posterArchiveData:displayName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterArchiveData];
  *v10 = a1;
  v10[1] = a2;
  *&v9[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_imageData] = xmmword_199E3FAD0;
  v11 = &v9[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_displayName];
  *v11 = a3;
  v11[1] = a4;
  v12 = &v9[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_contactIdentifier];
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v9[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_isMe] = 1;
  *&v9[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterConfiguration] = 0;
  v14.receiver = v9;
  v14.super_class = v4;
  return objc_msgSendSuper2(&v14, sel_init);
}

id CNPosterEditorViewConfiguration.init(posterArchiveData:displayName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterArchiveData];
  *v5 = a1;
  v5[1] = a2;
  *&v4[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_imageData] = xmmword_199E3FAD0;
  v6 = &v4[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_displayName];
  *v6 = a3;
  v6[1] = a4;
  v7 = &v4[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_contactIdentifier];
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v4[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_isMe] = 1;
  *&v4[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterConfiguration] = 0;
  v9.receiver = v4;
  v9.super_class = type metadata accessor for CNPosterEditorViewConfiguration();
  return objc_msgSendSuper2(&v9, sel_init);
}

id CNPosterEditorViewConfiguration.init(posterArchiveData:imageData:displayName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = &v6[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterArchiveData];
  *v7 = a1;
  v7[1] = a2;
  v8 = &v6[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_imageData];
  *v8 = a3;
  v8[1] = a4;
  v9 = &v6[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_displayName];
  *v9 = a5;
  v9[1] = a6;
  v10 = &v6[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_contactIdentifier];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v6[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_isMe] = 1;
  *&v6[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterConfiguration] = 0;
  v12.receiver = v6;
  v12.super_class = type metadata accessor for CNPosterEditorViewConfiguration();
  return objc_msgSendSuper2(&v12, sel_init);
}

id CNPosterEditorViewConfiguration.__allocating_init(posterConfiguration:displayName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterArchiveData] = xmmword_199E3FAE0;
  *&v7[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_imageData] = xmmword_199E3FAD0;
  v8 = &v7[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_displayName];
  *v8 = a2;
  v8[1] = a3;
  v9 = &v7[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_contactIdentifier];
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v7[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_isMe] = 1;
  if (!a1)
  {
    goto LABEL_4;
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
    swift_unknownObjectRelease();
LABEL_4:
    v10 = 0;
  }

  *&v7[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterConfiguration] = v10;
  v13.receiver = v7;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  swift_unknownObjectRelease();
  return v11;
}

id CNPosterEditorViewConfiguration.init(posterConfiguration:displayName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_199B40E5C(a1, a2, a3);
  swift_unknownObjectRelease();
  return v3;
}

id CNPosterEditorViewConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_199B3DD5C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_199DF841C();

  return v1;
}

uint64_t sub_199B3DE68()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_199DF842C();
}

uint64_t sub_199B3DEE4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_199DF841C();

  *a1 = v3;
  return result;
}

uint64_t sub_199B3DF7C(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  return sub_199DF842C();
}

void (*sub_199B3E000(void *a1))(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC10ContactsUI32CNHostingPosterSnapshotImageView_viewModel;
  a1[2] = v1;
  a1[3] = v3;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_199DF841C();

  *a1 = a1[1];
  return sub_199B3E0AC;
}

void sub_199B3E0AC(uint64_t a1, char a2)
{
  v4 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  *(a1 + 8) = v4;
  if (a2)
  {
    v5 = v4;

    sub_199DF842C();
    v6 = *a1;
  }

  else
  {

    sub_199DF842C();
  }
}

uint64_t sub_199B3E230()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_199DF841C();

  return v1;
}

uint64_t sub_199B3E338()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_199DF842C();
}

uint64_t sub_199B3E3B4@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_199DF841C();

  *a1 = v3;
  return result;
}

uint64_t sub_199B3E44C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_199DF842C();
}

uint64_t (*sub_199B3E4CC(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10ContactsUI32CNHostingPosterSnapshotImageView_viewModel;
  *a1 = v1;
  *(a1 + 8) = v3;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_199DF841C();

  *(a1 + 16) = *(a1 + 17);
  return sub_199B3E578;
}

uint64_t sub_199B3E578(uint64_t a1)
{
  v2 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  *(a1 + 17) = v2;

  return sub_199DF842C();
}

id sub_199B3E66C()
{
  result = [*(v0 + OBJC_IVAR____TtC10ContactsUI32CNHostingPosterSnapshotImageView_hostingController) view];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id CNHostingPosterSnapshotImageView.init()()
{
  v1 = v0;
  v0[OBJC_IVAR____TtC10ContactsUI32CNHostingPosterSnapshotImageView_showProgressIndicator] = 0;
  v0[OBJC_IVAR____TtC10ContactsUI32CNHostingPosterSnapshotImageView_hideShadow] = 0;
  type metadata accessor for CNPosterSnapshotImageViewModel();
  v2 = swift_allocObject();
  sub_199B3EF9C(0, 0);
  *&v1[OBJC_IVAR____TtC10ContactsUI32CNHostingPosterSnapshotImageView_viewModel] = v2;
  sub_199B40F80();

  v12 = sub_199DF87AC();
  v13 = v3;
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75328));
  v5 = sub_199DF8DFC();
  v6 = OBJC_IVAR____TtC10ContactsUI32CNHostingPosterSnapshotImageView_hostingController;
  *&v1[OBJC_IVAR____TtC10ContactsUI32CNHostingPosterSnapshotImageView_hostingController] = v5;
  result = [v5 view];
  if (result)
  {
    v8 = result;
    v9 = [objc_opt_self() clearColor];
    [v8 setBackgroundColor_];

    result = [*&v1[v6] view];
    if (result)
    {
      v10 = result;
      [result setTranslatesAutoresizingMaskIntoConstraints_];

      v11.receiver = v1;
      v11.super_class = type metadata accessor for CNHostingPosterSnapshotImageView();
      return objc_msgSendSuper2(&v11, sel_init);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id CNHostingPosterSnapshotImageView.init(isEditContactView:)(int a1)
{
  v2 = v1;
  v2[OBJC_IVAR____TtC10ContactsUI32CNHostingPosterSnapshotImageView_showProgressIndicator] = 0;
  v2[OBJC_IVAR____TtC10ContactsUI32CNHostingPosterSnapshotImageView_hideShadow] = 0;
  type metadata accessor for CNPosterSnapshotImageViewModel();
  v4 = swift_allocObject();
  sub_199B3EF9C(0, a1);
  *&v2[OBJC_IVAR____TtC10ContactsUI32CNHostingPosterSnapshotImageView_viewModel] = v4;
  sub_199B40F80();

  v14 = sub_199DF87AC();
  v15 = v5;
  v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75328));
  v7 = sub_199DF8DFC();
  v8 = OBJC_IVAR____TtC10ContactsUI32CNHostingPosterSnapshotImageView_hostingController;
  *&v2[OBJC_IVAR____TtC10ContactsUI32CNHostingPosterSnapshotImageView_hostingController] = v7;
  result = [v7 view];
  if (result)
  {
    v10 = result;
    v11 = [objc_opt_self() clearColor];
    [v10 setBackgroundColor_];

    result = [*&v2[v8] view];
    if (result)
    {
      v12 = result;
      [result setTranslatesAutoresizingMaskIntoConstraints_];

      v13.receiver = v2;
      v13.super_class = type metadata accessor for CNHostingPosterSnapshotImageView();
      return objc_msgSendSuper2(&v13, sel_init);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_199B3EA48(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

__n128 sub_199B3EACC@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for CNPosterSnapshotImageViewModel();
  sub_199B40F80();
  sub_199DF87BC();
  swift_getKeyPath();
  sub_199DF87CC();

  sub_199DF87BC();
  swift_getKeyPath();
  sub_199DF87CC();

  sub_199DF87BC();
  swift_getKeyPath();
  sub_199DF87CC();

  sub_199DF87BC();
  swift_getKeyPath();
  sub_199DF87CC();

  v4 = *(a1 + OBJC_IVAR____TtC10ContactsUI30CNPosterSnapshotImageViewModel_isEditContactView);
  result = v15;
  *a2 = v15;
  *(a2 + 16) = v16;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;
  *(a2 + 40) = v14;
  *(a2 + 41) = v15.n128_u32[0];
  *(a2 + 44) = *(v15.n128_u32 + 3);
  *(a2 + 48) = v9;
  *(a2 + 56) = v10;
  *(a2 + 64) = v11;
  *(a2 + 65) = v12;
  *(a2 + 68) = *(&v12 + 3);
  *(a2 + 72) = v6;
  *(a2 + 80) = v7;
  *(a2 + 88) = v8;
  *(a2 + 89) = v4;
  return result;
}

uint64_t sub_199B3ECD8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  *a1 = v3;
  return result;
}

uint64_t sub_199B3ED58(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  return sub_199DF842C();
}

uint64_t sub_199B3EDF8@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  *a1 = v3;
  return result;
}

uint64_t sub_199B3EE74()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_199DF842C();
}

uint64_t sub_199B3EEE4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  return v1;
}

uint64_t sub_199B3EF9C(uint64_t a1, int a2)
{
  v21 = a2;
  v20 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75020);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75038);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v19 - v11;
  v13 = OBJC_IVAR____TtC10ContactsUI30CNPosterSnapshotImageViewModel__image;
  v23 = 0;
  v19[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72748);
  sub_199DF83FC();
  (*(v9 + 32))(v2 + v13, v12, v8);
  v14 = OBJC_IVAR____TtC10ContactsUI30CNPosterSnapshotImageViewModel__hideShadow;
  LOBYTE(v23) = 0;
  sub_199DF83FC();
  v15 = *(v4 + 32);
  v15(v2 + v14, v7, v3);
  v16 = OBJC_IVAR____TtC10ContactsUI30CNPosterSnapshotImageViewModel__showProgressIndicator;
  LOBYTE(v23) = 0;
  sub_199DF83FC();
  v15(v2 + v16, v7, v3);
  v17 = OBJC_IVAR____TtC10ContactsUI30CNPosterSnapshotImageViewModel__isSensitiveContent;
  LOBYTE(v23) = 0;
  sub_199DF83FC();
  v15(v2 + v17, v7, v3);
  swift_beginAccess();
  (*(v9 + 8))(v2 + v13, v8);
  v22 = v20;
  sub_199DF83FC();
  swift_endAccess();
  *(v2 + OBJC_IVAR____TtC10ContactsUI30CNPosterSnapshotImageViewModel_isEditContactView) = v21;
  return v2;
}

uint64_t sub_199B3F240()
{
  v1 = OBJC_IVAR____TtC10ContactsUI30CNPosterSnapshotImageViewModel__image;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75038);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC10ContactsUI30CNPosterSnapshotImageViewModel__hideShadow;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75020);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC10ContactsUI30CNPosterSnapshotImageViewModel__showProgressIndicator, v4);
  v5(v0 + OBJC_IVAR____TtC10ContactsUI30CNPosterSnapshotImageViewModel__isSensitiveContent, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_199B3F380@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CNPosterSnapshotImageViewModel();
  result = sub_199DF83BC();
  *a1 = result;
  return result;
}

uint64_t sub_199B3F3C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  v46 = sub_199DF8D3C();
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v3);
  v43 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_199DF9F4C();
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75330);
  MEMORY[0x1EEE9AC00](v42, v8);
  v37 = &v36 - v9;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75338);
  v41 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v10);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75340);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v36 - v15);
  *v16 = sub_199DF9B5C();
  v16[1] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75348);
  sub_199B3F884(v2, v16 + *(v18 + 44));
  v19 = sub_199DF8FFC();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF8FEC();
  v24 = sub_199AA0B90(&qword_1EAF71170, &qword_1EAF75340);
  sub_199DF956C();
  (*(v20 + 8))(v23, v19);
  sub_199A79A04(v16, &qword_1EAF75340);
  sub_199DF9EEC();
  v25 = sub_199AA8A84(v7, MEMORY[0x1E69E7CC0]);
  v27 = v26;
  (*(v38 + 8))(v7, v40);
  v47 = v25;
  v48 = v27;
  sub_199A9C458();
  v28 = sub_199DF93CC();
  v30 = v29;
  LOBYTE(v7) = v31;
  v47 = v13;
  v48 = v24;
  swift_getOpaqueTypeConformance2();
  v32 = v37;
  v33 = v39;
  sub_199DF951C();
  sub_199ACE3E8(v28, v30, v7 & 1);

  (*(v41 + 8))(v12, v33);
  v34 = v43;
  sub_199DF8D2C();
  sub_199DF888C();
  (*(v44 + 8))(v34, v46);
  return sub_199A979E4(v32);
}

uint64_t sub_199B3F884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75350);
  v4 = MEMORY[0x1EEE9AC00](v61, v3);
  v64 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v5;
  MEMORY[0x1EEE9AC00](v4, v6);
  v60 = (&v59 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75358);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v59 = &v59 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75360);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v59 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75368);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v59 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75370);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8, v22);
  v23 = (&v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v23 = sub_199DF9B5C();
  v23[1] = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75378);
  sub_199B4038C(a1, v23 + *(v25 + 44));
  v26 = sub_199B4009C(v66);
  v27 = v66[0];
  MEMORY[0x1EEE9AC00](v26, v28);
  sub_199AAD408(v23, v23, &qword_1EAF75370);
  sub_199AAD408(v23, v19, &qword_1EAF75370);
  *&v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75380) + 48)] = v27;

  sub_199A79A04(v23, &qword_1EAF75370);

  sub_199A79A04(v23, &qword_1EAF75370);
  if (*(a1 + 89))
  {
    v29 = 31.0;
  }

  else
  {
    v29 = 24.0;
  }

  sub_199AB7794(v19, v15, &qword_1EAF75368);
  v30 = *(v12 + 44);
  v31 = v59;
  *&v15[v30] = v29;
  sub_199AB7794(v15, v31, &qword_1EAF75360);
  v32 = *(a1 + 32);
  if (!v32 || (v33 = *(a1 + 40), v66[0] = *(a1 + 24), v66[1] = v32, v67 = v33, v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FE0), MEMORY[0x19A8F7740](&v65, v34), v35 = 0.0, (v65 & 1) == 0))
  {
    v35 = 1.0;
  }

  v36 = v31;
  v37 = v60;
  sub_199AB7794(v36, v60, &qword_1EAF75358);
  *(v37 + *(v61 + 9)) = v35;
  sub_199AB7794(v37, v64, &qword_1EAF75350);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75388);
  v61 = &v59;
  v39 = v38 - 8;
  v40 = *(*(v38 - 8) + 64);
  v42 = MEMORY[0x1EEE9AC00](v38, v41);
  v60 = &v59;
  MEMORY[0x1EEE9AC00](v42, v43);
  v44 = &v59 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75390);
  MEMORY[0x1EEE9AC00](v45 - 8, v46);
  v48 = &v59 - v47;
  sub_199B3FEC8(a1, &v59 - v47);
  sub_199AB7794(v48, v44, &qword_1EAF75390);
  *&v44[*(v39 + 44)] = v29;
  v49 = sub_199AB7794(v44, v44, &qword_1EAF75388);
  v60 = &v59;
  MEMORY[0x1EEE9AC00](v49, v50);
  v52 = &v59 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v64;
  v54 = sub_199AAD408(v64, v52, &qword_1EAF75350);
  v62 = &v59;
  MEMORY[0x1EEE9AC00](v54, v55);
  sub_199AAD408(v44, v44, &qword_1EAF75388);
  v56 = v63;
  sub_199AAD408(v52, v63, &qword_1EAF75350);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75398);
  sub_199AAD408(v44, v56 + *(v57 + 48), &qword_1EAF75388);
  sub_199A79A04(v44, &qword_1EAF75388);
  sub_199A79A04(v53, &qword_1EAF75350);
  sub_199A79A04(v44, &qword_1EAF75388);
  return sub_199A79A04(v52, &qword_1EAF75350);
}

uint64_t sub_199B3FEC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v21[-v7];
  *v8 = sub_199DF9B5C();
  v8[1] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75378);
  sub_199B4038C(a1, v8 + *(v10 + 44));
  v11 = sub_199B4009C(v23);
  v13 = v23[0];
  v14 = *(a1 + 80);
  v17 = 1;
  if (v14)
  {
    v15 = *(a1 + 88);
    v23[0] = *(a1 + 72);
    v23[1] = v14;
    v24 = v15;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FE0);
    v11 = MEMORY[0x19A8F7740](&v22, v16);
    if (v22)
    {
      v17 = 0;
    }
  }

  MEMORY[0x1EEE9AC00](v11, v12);
  v18 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_199AAD408(v8, v18, &qword_1EAF75370);
  sub_199AAD408(v18, a2, &qword_1EAF75370);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF753A0);
  *(a2 + *(v19 + 48)) = v13;
  *(a2 + *(v19 + 64)) = v17;

  sub_199A79A04(v8, &qword_1EAF75370);

  return sub_199A79A04(v18, &qword_1EAF75370);
}

uint64_t sub_199B4009C@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v1;
  v5 = v1[2];
  v12[0] = *v1;
  v12[1] = v3;
  v12[2] = v5;
  v6 = v5;

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF760B0);
  MEMORY[0x19A8F7740](&v11, v7);
  v8 = v11;
  if (!v11)
  {

LABEL_5:
    result = sub_199DF995C();
    v9 = result;
    goto LABEL_6;
  }

  sub_199B401D4(v4, v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF753A8);
  sub_199B415B8();
  v9 = sub_199DF995C();

LABEL_6:
  *a1 = v9;
  return result;
}

double sub_199B401D4@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_199DF97DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 89);
  v12 = a2;
  sub_199DF97BC();
  (*(v7 + 104))(v10, *MEMORY[0x1E6981630], v6);
  v13 = sub_199DF981C();

  (*(v7 + 8))(v10, v6);
  v17[1] = v13;
  v17[2] = 0;
  if (v11)
  {
    v18 = 0;
    v19 = 0;
  }

  else
  {
    v18 = 257;
    v19 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74F28);
  sub_199B2B248();
  sub_199DF8EDC();
  result = *&v20;
  v15 = v21;
  v16 = v22;
  *a3 = v20;
  *(a3 + 16) = v15;
  *(a3 + 18) = v16;
  return result;
}

uint64_t sub_199B4038C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_199DF96AC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF753C8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_199E39320;
  v10 = *MEMORY[0x1E69814D8];
  v11 = *(v5 + 104);
  v11(v8, v10, v4);
  *(v9 + 32) = sub_199DF978C();
  v11(v8, v10, v4);
  *(v9 + 40) = sub_199DF978C();
  sub_199DF9C3C();
  sub_199DF9C2C();
  MEMORY[0x19A8F7830](v9);
  sub_199DF877C();
  v12 = v41;
  v35 = v43;
  v36 = v42;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF753D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v17 = &v35 - v16;
  v18 = [objc_opt_self() currentDevice];
  v19 = [v18 userInterfaceIdiom];

  if (!v19 && (v27 = *(a1 + 56)) != 0 && (v28 = *(a1 + 64), v38 = *(a1 + 48), v39 = v27, v40 = v28, v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FE0), MEMORY[0x19A8F7740](&v37, v29), v37 == 1))
  {
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73768);
    v31 = *(v30 - 8);
    MEMORY[0x1EEE9AC00](v30, v32);
    v34 = &v35 - v33;
    sub_199DF85FC();
    (*(v31 + 32))(v17, v34, v30);
    v21 = (*(v31 + 56))(v17, 0, 1, v30);
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73768);
    v21 = (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  }

  MEMORY[0x1EEE9AC00](v21, v22);
  v23 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199AAD408(v17, v23, &qword_1EAF753D0);
  *a2 = v12;
  v24 = v36;
  *(a2 + 24) = v35;
  *(a2 + 8) = v24;
  *(a2 + 40) = 256;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF753D8);
  sub_199AAD408(v23, a2 + *(v25 + 48), &qword_1EAF753D0);
  sub_199DF81AC();
  sub_199A79A04(v17, &qword_1EAF753D0);
  sub_199A79A04(v23, &qword_1EAF753D0);
}

uint64_t sub_199B40860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF753E0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF753E8);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF753F0);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v32 - v17;
  sub_199DF9C4C();
  v20 = v19;
  v22 = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF753F8);
  (*(*(v23 - 8) + 16))(v8, a1, v23);
  v24 = &v8[*(v5 + 44)];
  *v24 = xmmword_199E3FAF0;
  *(v24 + 2) = v20;
  *(v24 + 3) = v22;
  v25 = objc_opt_self();
  v26 = [v25 currentTraitCollection];
  [v26 userInterfaceStyle];

  sub_199AB7794(v8, v13, &qword_1EAF753E0);
  *&v13[*(v10 + 44)] = xmmword_199E3FB00;
  v27 = [v25 currentTraitCollection];
  [v27 userInterfaceStyle];

  sub_199AB7794(v13, v18, &qword_1EAF753E8);
  v28 = &v18[*(v15 + 44)];
  *v28 = 0x4034000000000000;
  v28[8] = 0;
  v29 = [v25 currentTraitCollection];
  LODWORD(v10) = [v29 userInterfaceStyle] == 2;

  v30 = qword_199E3FB10[v10];
  sub_199AB7794(v18, a2, &qword_1EAF753F0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75400);
  *(a2 + *(result + 36)) = v30;
  return result;
}

uint64_t sub_199B40B38@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_199DF9B5C();
  v8 = v7;
  v9 = [objc_opt_self() currentTraitCollection];
  [v9 displayCornerRadius];
  v11 = v10;

  if (v11 == 0.0)
  {
    v12 = a3;
  }

  else
  {
    v12 = v11;
  }

  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75410) + 36));
  v14 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75418) + 36));
  sub_199DF869C();
  v16 = v15;
  v17 = [objc_opt_self() mainScreen];
  [v17 bounds];
  v19 = v18;

  v20 = v12 * (v16 / v19);
  v21 = *(sub_199DF896C() + 20);
  v22 = *MEMORY[0x1E697F468];
  v23 = sub_199DF8D1C();
  (*(*(v23 - 8) + 104))(v14 + v21, v22, v23);
  *v14 = v20;
  v14[1] = v20;
  *v13 = v6;
  v13[1] = v8;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75408);
  v25 = *(*(v24 - 8) + 16);

  return v25(a2, a1, v24);
}

uint64_t sub_199B40D08@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75408);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  v11 = *v2;
  (*(v6 + 16))(&v15 - v9, a1, v5);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  result = (*(v6 + 32))(v13 + v12, v10, v5);
  *(v13 + ((v7 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v11;
  *a2 = sub_199B41A8C;
  a2[1] = v13;
  return result;
}

id sub_199B40E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterArchiveData] = xmmword_199E3FAE0;
  *&v3[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_imageData] = xmmword_199E3FAD0;
  v4 = &v3[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_displayName];
  *v4 = a2;
  v4[1] = a3;
  v5 = &v3[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_contactIdentifier];
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v3[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_isMe] = 1;
  if (a1)
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    a1 = swift_dynamicCastObjCClass();
    if (!a1)
    {
      swift_unknownObjectRelease();
      a1 = 0;
    }
  }

  *&v3[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterConfiguration] = a1;
  v7.receiver = v3;
  v7.super_class = type metadata accessor for CNPosterEditorViewConfiguration();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t type metadata accessor for CNPosterSnapshotImageViewModel()
{
  result = qword_1EAF718F0;
  if (!qword_1EAF718F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_199B40F80()
{
  result = qword_1EAF71900;
  if (!qword_1EAF71900)
  {
    type metadata accessor for CNPosterSnapshotImageViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71900);
  }

  return result;
}

void sub_199B41234()
{
  sub_199B4130C();
  if (v0 <= 0x3F)
  {
    sub_199B2E578();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_199B4130C()
{
  if (!qword_1EAF71410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF72748);
    v0 = sub_199DF843C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF71410);
    }
  }
}

uint64_t sub_199B41370(uint64_t a1, int a2)
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

uint64_t sub_199B413B8(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy90_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_199B41444(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 90))
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

uint64_t sub_199B414A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 90) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 90) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_199B4152C()
{
  result = qword_1EAF71A20;
  if (!qword_1EAF71A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71A20);
  }

  return result;
}

unint64_t sub_199B415B8()
{
  result = qword_1EAF753B0;
  if (!qword_1EAF753B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF753A8);
    sub_199B4163C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF753B0);
  }

  return result;
}

unint64_t sub_199B4163C()
{
  result = qword_1EAF753B8;
  if (!qword_1EAF753B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF753C0);
    sub_199B2B248();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF753B8);
  }

  return result;
}

unint64_t sub_199B416D8()
{
  result = qword_1EAF712F0;
  if (!qword_1EAF712F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75330);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75340);
    sub_199AA0B90(&qword_1EAF71170, &qword_1EAF75340);
    swift_getOpaqueTypeConformance2();
    sub_199B417C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF712F0);
  }

  return result;
}

unint64_t sub_199B417C8()
{
  result = qword_1EAF711E8;
  if (!qword_1EAF711E8)
  {
    sub_199DF90EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF711E8);
  }

  return result;
}

unint64_t sub_199B41814()
{
  result = qword_1EAF71258;
  if (!qword_1EAF71258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75400);
    sub_199B418A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71258);
  }

  return result;
}

unint64_t sub_199B418A0()
{
  result = qword_1EAF71268;
  if (!qword_1EAF71268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF753F0);
    sub_199B4192C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71268);
  }

  return result;
}

unint64_t sub_199B4192C()
{
  result = qword_1EAF712B8;
  if (!qword_1EAF712B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF753E8);
    sub_199B419B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF712B8);
  }

  return result;
}

unint64_t sub_199B419B8()
{
  result = qword_1EAF71328;
  if (!qword_1EAF71328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF753E0);
    sub_199AA0B90(&qword_1EAF71220, &qword_1EAF753F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71328);
  }

  return result;
}

uint64_t sub_199B41A8C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75408) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_199B40B38(v1 + v4, a1, v5);
}

uint64_t static ContactsButtonSlotTraits.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EAF75430 = a1;
  return result;
}

uint64_t ContactsButtonSlotTraits.hostAppBundlePath.getter()
{
  v1 = *(v0 + OBJC_IVAR___ContactsButtonSlotTraits_hostAppBundlePath);
  sub_199DF81AC();
  return v1;
}

void *ContactsButtonSlotTraits.avatarBGColor.getter()
{
  v1 = *(v0 + OBJC_IVAR___ContactsButtonSlotTraits_avatarBGColor);
  v2 = v1;
  return v1;
}

void *ContactsButtonSlotTraits.tintColor.getter()
{
  v1 = *(v0 + OBJC_IVAR___ContactsButtonSlotTraits_tintColor);
  v2 = v1;
  return v1;
}

uint64_t ContactsButtonSlotTraits.captionTextField.getter()
{
  v1 = *(v0 + OBJC_IVAR___ContactsButtonSlotTraits_captionTextField);
  sub_199DF81AC();
  return v1;
}

void sub_199B41E58(void *a1)
{
  if (*(v1 + OBJC_IVAR___ContactsButtonSlotTraits_hostAppBundlePath + 8))
  {
    v3 = sub_199DF9F5C();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_199DF9F5C();
  [a1 encodeObject:v3 forKey:v4];
  swift_unknownObjectRelease();

  v5 = *(v1 + OBJC_IVAR___ContactsButtonSlotTraits_avatarBGColor);
  if (v5)
  {
    v6 = v5;
    v7 = sub_199DF9F5C();
    [a1 encodeObject:v6 forKey:v7];
  }

  v8 = *(v1 + OBJC_IVAR___ContactsButtonSlotTraits_bgColor);
  v9 = sub_199DF9F5C();
  [a1 encodeObject:v8 forKey:v9];

  v10 = *(v1 + OBJC_IVAR___ContactsButtonSlotTraits_fgColor);
  v11 = sub_199DF9F5C();
  [a1 encodeObject:v10 forKey:v11];

  v12 = *(v1 + OBJC_IVAR___ContactsButtonSlotTraits_tintColor);
  v13 = sub_199DF9F5C();
  [a1 encodeObject:v12 forKey:v13];

  v14 = *(v1 + OBJC_IVAR___ContactsButtonSlotTraits_font);
  v15 = sub_199DF9F5C();
  [a1 encodeObject:v14 forKey:v15];

  v16 = sub_199DF9F5C();
  v17 = sub_199DF9F5C();
  [a1 encodeObject:v16 forKey:v17];

  v18 = *(v1 + OBJC_IVAR___ContactsButtonSlotTraits_contentSizeCategory);
  v19 = sub_199DF9F5C();
  [a1 encodeObject:v18 forKey:v19];

  if ((*(v1 + OBJC_IVAR___ContactsButtonSlotTraits_trailingEdgeFromAvatar + 8) & 1) == 0)
  {
    v20 = *(v1 + OBJC_IVAR___ContactsButtonSlotTraits_trailingEdgeFromAvatar);
    v21 = sub_199DF9F5C();
    *&v22 = v20;
    [a1 encodeFloat:v21 forKey:v22];
  }

  if ((*(v1 + OBJC_IVAR___ContactsButtonSlotTraits_widthOfAvatar + 8) & 1) == 0)
  {
    v23 = *(v1 + OBJC_IVAR___ContactsButtonSlotTraits_widthOfAvatar);
    v25 = sub_199DF9F5C();
    *&v24 = v23;
    [a1 encodeFloat:v25 forKey:v24];
  }
}

void ContactsButtonSlotTraits.init(coder:)(void *a1)
{
  v2 = sub_199DF9F5C();
  v3 = [a1 decodeObjectForKey_];

  if (!v3)
  {
    __break(1u);
    goto LABEL_31;
  }

  sub_199DFA66C();
  swift_unknownObjectRelease();
  sub_199B429C0(&v56, &v58);
  sub_199A7A02C(0, &qword_1EAF71C10);
  swift_dynamicCast();
  v4 = v54;
  v5 = sub_199DF9F5C();
  v6 = [a1 decodeObjectForKey_];

  if (!v6)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  sub_199DFA66C();
  swift_unknownObjectRelease();
  sub_199B429C0(&v56, &v58);
  swift_dynamicCast();
  v7 = sub_199DF9F5C();
  v8 = [a1 decodeObjectForKey_];

  if (v8)
  {
    sub_199DFA66C();
    swift_unknownObjectRelease();
  }

  else
  {
    v56 = 0u;
    v57 = 0u;
  }

  v58 = v56;
  v59 = v57;
  if (*(&v57 + 1))
  {
    if (swift_dynamicCast())
    {
      v9 = v54;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    sub_199AC9058(&v58);
    v9 = 0;
  }

  v10 = sub_199DF9F5C();
  v11 = [a1 decodeObjectForKey_];

  if (v11)
  {
    sub_199DFA66C();
    swift_unknownObjectRelease();
  }

  else
  {
    v56 = 0u;
    v57 = 0u;
  }

  v58 = v56;
  v59 = v57;
  if (*(&v57 + 1))
  {
    if (swift_dynamicCast())
    {
      v12 = v54;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    sub_199AC9058(&v58);
    v12 = 0;
  }

  v13 = sub_199DF9F5C();
  v14 = [a1 decodeObjectForKey_];

  if (!v14)
  {
    goto LABEL_32;
  }

  sub_199DFA66C();
  swift_unknownObjectRelease();
  sub_199B429C0(&v56, &v58);
  sub_199A7A02C(0, &qword_1EAF74B70);
  swift_dynamicCast();
  v52 = v54;
  v15 = sub_199DF9F5C();
  v16 = [a1 decodeObjectForKey_];

  if (!v16)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v50 = v9;
  v51 = v54;
  sub_199DFA66C();
  swift_unknownObjectRelease();
  sub_199B429C0(&v56, &v58);
  swift_dynamicCast();
  v48 = v55;
  v49 = v54;
  v17 = sub_199DF9F5C();
  [a1 decodeFloatForKey_];
  v19 = v18;

  v20 = sub_199DF9F5C();
  [a1 decodeFloatForKey_];
  v22 = v21;

  v23 = sub_199DF9F5C();
  v24 = [a1 decodeObjectForKey_];

  if (!v24)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v47 = v12;
  sub_199DFA66C();
  swift_unknownObjectRelease();
  sub_199B429C0(&v56, &v58);
  swift_dynamicCast();
  v25 = v55;
  v26 = sub_199DF9F5C();
  [a1 decodeFloatForKey_];
  v28 = v27;

  v29 = sub_199DF9F5C();
  v30 = [a1 decodeObjectForKey_];

  if (!v30)
  {
LABEL_35:
    __break(1u);
    return;
  }

  v31 = v28;
  if (v22 == 0.0)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = v22;
  }

  if (v19 == 0.0)
  {
    v33 = 0.0;
  }

  else
  {
    v33 = v19;
  }

  sub_199DFA66C();
  swift_unknownObjectRelease();
  sub_199B429C0(&v56, &v58);
  type metadata accessor for UIContentSizeCategory(0);
  swift_dynamicCast();
  v34 = v54;
  v35 = type metadata accessor for ContactsButtonSlotTraits();
  v36 = objc_allocWithZone(v35);
  v37 = &v36[OBJC_IVAR___ContactsButtonSlotTraits_hostAppBundlePath];
  *v37 = v54;
  *(v37 + 1) = v25;
  *&v36[OBJC_IVAR___ContactsButtonSlotTraits_bgColor] = v4;
  *&v36[OBJC_IVAR___ContactsButtonSlotTraits_fgColor] = v51;
  *&v36[OBJC_IVAR___ContactsButtonSlotTraits_avatarBGColor] = v50;
  v38 = &v36[OBJC_IVAR___ContactsButtonSlotTraits_trailingEdgeFromAvatar];
  *v38 = v33;
  *(v38 + 8) = v19 == 0.0;
  v39 = &v36[OBJC_IVAR___ContactsButtonSlotTraits_widthOfAvatar];
  *v39 = v32;
  *(v39 + 8) = v22 == 0.0;
  v40 = &v36[OBJC_IVAR___ContactsButtonSlotTraits_captionTextField];
  *v40 = v49;
  *(v40 + 1) = v48;
  *&v36[OBJC_IVAR___ContactsButtonSlotTraits_font] = v52;
  *&v36[OBJC_IVAR___ContactsButtonSlotTraits_displayScale] = v31;
  *&v36[OBJC_IVAR___ContactsButtonSlotTraits_contentSizeCategory] = v34;
  *&v36[OBJC_IVAR___ContactsButtonSlotTraits_tintColor] = v12;
  v53.receiver = v36;
  v53.super_class = v35;
  v41 = v4;
  v42 = v51;
  v43 = v50;
  v44 = v52;
  v45 = v34;
  v46 = v47;
  objc_msgSendSuper2(&v53, sel_init);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
}

_OWORD *sub_199B429C0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

BOOL sub_199B42A1C(uint64_t a1)
{
  sub_199A7A02C(0, &qword_1EAF71000);
  if ((sub_199DFA4EC() & 1) == 0)
  {
    return 0;
  }

  v3 = *(a1 + OBJC_IVAR___ContactsButtonSlotTraits_trailingEdgeFromAvatar + 8);
  if (*(v1 + OBJC_IVAR___ContactsButtonSlotTraits_trailingEdgeFromAvatar + 8))
  {
    if (!*(a1 + OBJC_IVAR___ContactsButtonSlotTraits_trailingEdgeFromAvatar + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*(v1 + OBJC_IVAR___ContactsButtonSlotTraits_trailingEdgeFromAvatar) != *(a1 + OBJC_IVAR___ContactsButtonSlotTraits_trailingEdgeFromAvatar))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  v4 = *(a1 + OBJC_IVAR___ContactsButtonSlotTraits_widthOfAvatar + 8);
  if (*(v1 + OBJC_IVAR___ContactsButtonSlotTraits_widthOfAvatar + 8))
  {
    if (!*(a1 + OBJC_IVAR___ContactsButtonSlotTraits_widthOfAvatar + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*(v1 + OBJC_IVAR___ContactsButtonSlotTraits_widthOfAvatar) != *(a1 + OBJC_IVAR___ContactsButtonSlotTraits_widthOfAvatar))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  if ((sub_199DFA4EC() & 1) == 0 || (sub_199DFA4EC() & 1) == 0 || (*(v1 + OBJC_IVAR___ContactsButtonSlotTraits_captionTextField) != *(a1 + OBJC_IVAR___ContactsButtonSlotTraits_captionTextField) || *(v1 + OBJC_IVAR___ContactsButtonSlotTraits_captionTextField + 8) != *(a1 + OBJC_IVAR___ContactsButtonSlotTraits_captionTextField + 8)) && (sub_199DFA99C() & 1) == 0 || *(v1 + OBJC_IVAR___ContactsButtonSlotTraits_displayScale) != *(a1 + OBJC_IVAR___ContactsButtonSlotTraits_displayScale))
  {
    return 0;
  }

  v5 = *(v1 + OBJC_IVAR___ContactsButtonSlotTraits_tintColor);
  v6 = *(a1 + OBJC_IVAR___ContactsButtonSlotTraits_tintColor);
  result = (v5 | v6) == 0;
  if (v5)
  {
    if (v6)
    {
      sub_199A7A02C(0, &qword_1EAF71C10);
      v8 = v6;
      v9 = v5;
      v10 = sub_199DFA4EC();

      return v10 & 1;
    }
  }

  return result;
}

id sub_199B42BD8()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC888]) init];
  *&v0[OBJC_IVAR___ContactsButtonSlotTraits_bgColor] = v1;
  v2 = [objc_allocWithZone(MEMORY[0x1E69DC888]) init];
  *&v0[OBJC_IVAR___ContactsButtonSlotTraits_fgColor] = v2;
  v3 = &v0[OBJC_IVAR___ContactsButtonSlotTraits_hostAppBundlePath];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = [objc_allocWithZone(MEMORY[0x1E69DC888]) init];
  *&v0[OBJC_IVAR___ContactsButtonSlotTraits_avatarBGColor] = v4;
  *&v0[OBJC_IVAR___ContactsButtonSlotTraits_displayScale] = 0;
  v5 = [objc_allocWithZone(MEMORY[0x1E69DB878]) init];
  *&v0[OBJC_IVAR___ContactsButtonSlotTraits_font] = v5;
  v6 = &v0[OBJC_IVAR___ContactsButtonSlotTraits_captionTextField];
  *v6 = 0;
  *(v6 + 1) = 0xE000000000000000;
  v7 = &v0[OBJC_IVAR___ContactsButtonSlotTraits_trailingEdgeFromAvatar];
  *v7 = 0;
  v7[8] = 1;
  v8 = &v0[OBJC_IVAR___ContactsButtonSlotTraits_widthOfAvatar];
  *v8 = 0;
  v8[8] = 1;
  v9 = *MEMORY[0x1E69DDC90];
  *&v0[OBJC_IVAR___ContactsButtonSlotTraits_contentSizeCategory] = *MEMORY[0x1E69DDC90];
  *&v0[OBJC_IVAR___ContactsButtonSlotTraits_tintColor] = 0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for ContactsButtonSlotTraits();
  v10 = v9;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_199B42DA8()
{
  v1 = v0;
  sub_199DFA71C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74540);
  v2 = sub_199DF9FBC();
  MEMORY[0x19A8F7E00](v2);

  MEMORY[0x19A8F7E00](8236, 0xE200000000000000);
  sub_199DFA71C();

  strcpy(v19, "avatarWidth: ");
  HIWORD(v19[1]) = -4864;
  v17 = *(v0 + OBJC_IVAR___ContactsButtonSlotTraits_widthOfAvatar);
  LOBYTE(v18) = *(v0 + OBJC_IVAR___ContactsButtonSlotTraits_widthOfAvatar + 8);
  v3 = sub_199DF9FBC();
  MEMORY[0x19A8F7E00](v3);

  MEMORY[0x19A8F7E00](2622, 0xE200000000000000);
  sub_199DF81AC();
  MEMORY[0x19A8F7E00](v19[0], v19[1]);

  sub_199DFA71C();

  strcpy(v19, "<font: ");
  v19[1] = 0xE700000000000000;
  v4 = [*(v0 + OBJC_IVAR___ContactsButtonSlotTraits_font) description];
  v5 = sub_199DF9F8C();
  v7 = v6;

  MEMORY[0x19A8F7E00](v5, v7);

  MEMORY[0x19A8F7E00](0xD000000000000010, 0x8000000199E48980);
  MEMORY[0x19A8F7E00](*(v1 + OBJC_IVAR___ContactsButtonSlotTraits_captionTextField), *(v1 + OBJC_IVAR___ContactsButtonSlotTraits_captionTextField + 8));
  MEMORY[0x19A8F7E00](2622, 0xE200000000000000);
  sub_199DF81AC();
  MEMORY[0x19A8F7E00](v19[0], 0xE700000000000000);

  sub_199DFA71C();

  strcpy(v19, "<tintColor: ");
  HIWORD(v19[1]) = -5120;
  v8 = *(v1 + OBJC_IVAR___ContactsButtonSlotTraits_tintColor);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75498);
  v9 = sub_199DF9FBC();
  MEMORY[0x19A8F7E00](v9);

  MEMORY[0x19A8F7E00](2622, 0xE200000000000000);
  sub_199DF81AC();
  MEMORY[0x19A8F7E00](v19[0], v19[1]);

  sub_199DFA71C();

  strcpy(v19, "<bgColor: ");
  BYTE3(v19[1]) = 0;
  HIDWORD(v19[1]) = -369098752;
  v10 = [*(v1 + OBJC_IVAR___ContactsButtonSlotTraits_bgColor) description];
  v11 = sub_199DF9F8C();
  v13 = v12;

  MEMORY[0x19A8F7E00](v11, v13);

  MEMORY[0x19A8F7E00](0xD000000000000010, 0x8000000199E489A0);
  v14 = *(v1 + OBJC_IVAR___ContactsButtonSlotTraits_avatarBGColor);
  v15 = sub_199DF9FBC();
  MEMORY[0x19A8F7E00](v15);

  MEMORY[0x19A8F7E00](2622, 0xE200000000000000);
  sub_199DF81AC();
  MEMORY[0x19A8F7E00](v19[0], v19[1]);

  return 0x6E696C696172743CLL;
}

id sub_199B43228@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for ContactsButtonSlotTraits();
  *a1 = v3;

  return v3;
}

id ContactsButtonSlotTraits.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContactsButtonSlotTraits();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

ContactsUI::ContactButtonServiceErrorType_optional __swiftcall ContactButtonServiceErrorType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0;
  v3 = 3;
  switch(rawValue)
  {
    case 0:
      goto LABEL_11;
    case 1:
      v2 = 1;
      goto LABEL_11;
    case 2:
      v2 = 2;
LABEL_11:
      v3 = v2;
      goto LABEL_12;
    case 3:
LABEL_12:
      *v1 = v3;
      break;
    case 4:
      *v1 = 4;
      break;
    case 5:
      *v1 = 5;
      break;
    case 6:
      *v1 = 6;
      break;
    case 7:
      *v1 = 7;
      break;
    case 8:
      *v1 = 8;
      break;
    case 9:
      *v1 = 9;
      break;
    case 10:
      *v1 = 10;
      break;
    case 11:
      *v1 = 11;
      break;
    case 12:
      *v1 = 12;
      break;
    case 13:
      *v1 = 13;
      break;
    case 14:
      *v1 = 14;
      break;
    case 15:
      *v1 = 15;
      break;
    case 16:
      *v1 = 16;
      break;
    case 17:
      *v1 = 17;
      break;
    case 18:
      *v1 = 18;
      break;
    case 19:
      *v1 = 19;
      break;
    case 20:
      *v1 = 20;
      break;
    default:
      *v1 = 21;
      break;
  }

  return rawValue;
}

unint64_t sub_199B43488()
{
  result = qword_1EAF754A0;
  if (!qword_1EAF754A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF754A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactButtonServiceErrorType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContactButtonServiceErrorType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}