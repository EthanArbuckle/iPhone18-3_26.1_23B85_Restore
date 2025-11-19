uint64_t sub_1AC6FD58C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v22 = a1[2];
  sub_1AC7A09C8();

  sub_1AC649BF0();
  sub_1AC7A0808();
  sub_1AC7A0808();

  sub_1AC7A0808();

  sub_1AC7A0808();

  v4 = sub_1AC7A0808();
  v6 = v5;

  MEMORY[0x1B26E8C40](v4, v6);

  MEMORY[0x1B26E8C40](0x6568706172672F3CLL, 0xEC0000000A3E656DLL);
  v7 = *(v22 + 16);
  if (v7)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1AC6310CC(0, v7, 0);
    v8 = (v22 + 40);
    do
    {
      v23 = v7;
      v9 = *(v8 - 1);
      v21 = *v8;

      sub_1AC7A09C8();

      sub_1AC7A0808();
      sub_1AC7A0808();

      sub_1AC7A0808();

      sub_1AC7A0808();

      v10 = sub_1AC7A0808();
      v12 = v11;

      MEMORY[0x1B26E8C40](v10, v12);

      MEMORY[0x1B26E8C40](0x6D656E6F68702F3CLL, 0xEA00000000003E65);

      v14 = *(v24 + 16);
      v13 = *(v24 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1AC6310CC(v13 > 1, v14 + 1, 1);
      }

      *(v24 + 16) = v14 + 1;
      v15 = v24 + 16 * v14;
      *(v15 + 32) = 0x656E6F68703C0909;
      *(v15 + 40) = 0xEB000000003E656DLL;
      v8 += 2;
      --v7;
    }

    while (v23 != 1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
  sub_1AC649C74();
  v16 = sub_1AC79FEA8();
  v18 = v17;

  MEMORY[0x1B26E8C40](v16, v18);

  result = MEMORY[0x1B26E8C40](0x6578656C2F3C090ALL, 0xEB000000003E656DLL);
  *a2 = 0xD000000000000016;
  a2[1] = 0x80000001AC7B8B30;
  return result;
}

uint64_t SFCustomLanguageModelData.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_locale;
  v4 = sub_1AC79FB18();
  v5 = OUTLINED_FUNCTION_80(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t SFCustomLanguageModelData.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_identifier);
  v2 = *(v0 + OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_identifier + 8);

  return OUTLINED_FUNCTION_39();
}

uint64_t SFCustomLanguageModelData.version.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_version);
  v2 = *(v0 + OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_version + 8);

  return OUTLINED_FUNCTION_39();
}

void *static SFCustomLanguageModelData.supportedPhonemes(locale:)()
{
  sub_1AC79F978();
  sub_1AC649BF0();
  OUTLINED_FUNCTION_80_5();
  OUTLINED_FUNCTION_10_17();
  v0 = sub_1AC7A0808();
  v2 = v1;

  objc_allocWithZone(MEMORY[0x1E699BA00]);

  result = sub_1AC703A98(v0, v2, &selRef_initWithLanguage_);
  if (result)
  {
    result = sub_1AC704654(result);
    if (result)
    {
      v4 = result;

      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t SFCustomLanguageModelData.__allocating_init(locale:identifier:version:)()
{
  OUTLINED_FUNCTION_53_7();
  v0 = swift_allocObject();
  SFCustomLanguageModelData.init(locale:identifier:version:)();
  return v0;
}

void SFCustomLanguageModelData.init(locale:identifier:version:)()
{
  OUTLINED_FUNCTION_104();
  v21 = v1;
  v22 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1AC79FB18();
  v10 = OUTLINED_FUNCTION_40(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6();
  v17 = v16 - v15;
  v18 = MEMORY[0x1E69E7CC0];
  v0[2] = MEMORY[0x1E69E7CC0];
  v0[3] = v18;
  v0[4] = v18;
  sub_1AC79F978();
  OUTLINED_FUNCTION_66_7();
  sub_1AC649BF0();
  OUTLINED_FUNCTION_80_5();
  OUTLINED_FUNCTION_10_17();
  sub_1AC7A0808();

  sub_1AC79F968();
  (*(v12 + 8))(v8, v9);
  (*(v12 + 32))(v0 + OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_locale, v17, v9);
  v19 = (v0 + OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_identifier);
  *v19 = v6;
  v19[1] = v4;
  v20 = (v0 + OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_version);
  *v20 = v21;
  v20[1] = v22;
  OUTLINED_FUNCTION_105();
}

void SFCustomLanguageModelData.__allocating_init(locale:identifier:version:builder:)()
{
  OUTLINED_FUNCTION_104();
  v19 = v0;
  v1 = sub_1AC79FB18();
  v2 = OUTLINED_FUNCTION_40(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6();
  v7 = *(v4 + 16);
  OUTLINED_FUNCTION_171_2();
  v8();
  v9 = type metadata accessor for SFCustomLanguageModelData(0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  SFCustomLanguageModelData.init(locale:identifier:version:)();

  v19(v20, v13);
  v14 = v21;
  v15 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  (*(v15 + 8))(v12, v14, v15);

  v16 = *(v4 + 8);
  v17 = OUTLINED_FUNCTION_170();
  v18(v17);
  __swift_destroy_boxed_opaque_existential_0(v20);
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC6FE0D8(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  OUTLINED_FUNCTION_29_14();

  sub_1AC5C368C(sub_1AC60F0DC);
  v5 = *(*(v1 + 16) + 16);
  sub_1AC5C3604(v5, sub_1AC60F0DC);
  v6 = *(v1 + 16);
  *(v6 + 16) = v5 + 1;
  v7 = (v6 + 24 * v5);
  v7[4] = v3;
  v7[5] = v2;
  v7[6] = v4;
  *(v1 + 16) = v6;
  return swift_endAccess();
}

unint64_t sub_1AC6FE194()
{
  result = qword_1EB56D610;
  if (!qword_1EB56D610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D610);
  }

  return result;
}

uint64_t sub_1AC6FE1E8()
{
  OUTLINED_FUNCTION_29_14();

  MEMORY[0x1B26E8CF0](v0);
  OUTLINED_FUNCTION_65_5();
  return swift_endAccess();
}

uint64_t sub_1AC6FE240(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  OUTLINED_FUNCTION_29_14();

  sub_1AC5C368C(sub_1AC60F10C);
  v5 = *(*(v1 + 24) + 16);
  sub_1AC5C3604(v5, sub_1AC60F10C);
  v6 = *(v1 + 24);
  *(v6 + 16) = v5 + 1;
  v7 = (v6 + 24 * v5);
  v7[4] = v3;
  v7[5] = v2;
  v7[6] = v4;
  *(v1 + 24) = v6;
  return swift_endAccess();
}

unint64_t sub_1AC6FE304()
{
  result = qword_1EB56D628;
  if (!qword_1EB56D628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D628);
  }

  return result;
}

uint64_t sub_1AC6FE358()
{
  OUTLINED_FUNCTION_85();
  v12 = *MEMORY[0x1E69E9840];
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_1AC79F7F8();
  v1[7] = v3;
  OUTLINED_FUNCTION_22(v3);
  v1[8] = v4;
  v6 = *(v5 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC6FE458()
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[7];
  v4 = v0[8];
  v5 = [objc_opt_self() defaultManager];
  v0[13] = v5;
  v6 = [v5 temporaryDirectory];
  sub_1AC79F7A8();

  OUTLINED_FUNCTION_65();
  sub_1AC79F798();
  v7 = *(v4 + 8);
  v0[14] = v7;
  v0[15] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v3);
  v8 = sub_1AC79F788();
  v0[2] = 0;
  LODWORD(v3) = [v5 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:v0 + 2];

  v9 = v0[2];
  if (v3)
  {
    v10 = v0[12];
    v11 = v0[10];
    v12 = v0[6];
    v0[16] = OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_locale;
    sub_1AC79F978();
    OUTLINED_FUNCTION_74_6();
    v13 = v9;
    v14 = OUTLINED_FUNCTION_142();
    MEMORY[0x1B26E8C40](v14);

    sub_1AC79F798();

    v15 = swift_task_alloc();
    v0[17] = v15;
    *v15 = v0;
    v15[1] = sub_1AC6FE724;
    v16 = v0[10];
    v17 = v0[6];
    v18 = *MEMORY[0x1E69E9840];

    return sub_1AC6FC4C4();
  }

  else
  {
    v20 = v9;
    sub_1AC79F748();

    swift_willThrow();
    v21 = OUTLINED_FUNCTION_18_10();
    v22(v21);

    OUTLINED_FUNCTION_44();
    v24 = *MEMORY[0x1E69E9840];

    return v23();
  }
}

uint64_t sub_1AC6FE724()
{
  OUTLINED_FUNCTION_85();
  v15 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_27_0();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v9 + 144) = v0;

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1AC6FE84C()
{
  v71 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 144);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 48) + *(v0 + 128);
  v5 = sub_1AC79F978();
  MEMORY[0x1B26E8C40](v5);

  sub_1AC79F798();

  sub_1AC6FD1D4();
  if (v1)
  {
    v7 = *(v0 + 112);
    v6 = *(v0 + 120);
    v9 = *(v0 + 72);
    v8 = *(v0 + 80);
    v10 = *(v0 + 56);

    v7(v9, v10);
    v7(v8, v10);
  }

  else
  {
    v11 = *(v0 + 128);
    v12 = *(v0 + 72);
    v67 = *(v0 + 80);
    v13 = *(v0 + 48);
    v69 = *(v0 + 40);
    v70 = *(v0 + 104);
    v68 = objc_opt_self();
    v14 = *(v13 + OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_identifier);
    v15 = *(v13 + OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_identifier + 8);
    v16 = sub_1AC79FF58();
    v17 = *(v13 + OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_version);
    v18 = *(v13 + OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_version + 8);
    v19 = sub_1AC79FF58();
    v20 = sub_1AC79F978();
    v22 = v21;
    v23 = sub_1AC79F7C8();
    v25 = v24;
    v26 = sub_1AC79F7C8();
    v28 = v27;
    v29 = sub_1AC79F7C8();
    sub_1AC7046B8(v16, v19, v20, v22, v23, v25, v26, v28, v29, v30, v68);

    v31 = sub_1AC79F788();
    *(v0 + 24) = 0;
    LODWORD(v28) = [v70 removeItemAtURL:v31 error:v0 + 24];

    v32 = *(v0 + 24);
    if (v28)
    {
      v33 = *(v0 + 104);
      v34 = *(v0 + 72);
      v35 = v32;
      v36 = sub_1AC79F788();
      *(v0 + 32) = 0;
      LODWORD(v33) = [v33 removeItemAtURL:v36 error:v0 + 32];

      v37 = *(v0 + 32);
      v39 = *(v0 + 112);
      v38 = *(v0 + 120);
      v40 = *(v0 + 104);
      if (v33)
      {
        v42 = *(v0 + 88);
        v41 = *(v0 + 96);
        v44 = *(v0 + 72);
        v43 = *(v0 + 80);
        v45 = *(v0 + 56);
        v46 = v37;

        v47 = OUTLINED_FUNCTION_142();
        v39(v47);
        (v39)(v43, v45);
        (v39)(v41, v45);

        OUTLINED_FUNCTION_44();
        v49 = *MEMORY[0x1E69E9840];
        goto LABEL_10;
      }

      v59 = *(v0 + 72);
      v58 = *(v0 + 80);
      v60 = *(v0 + 56);
      v61 = v37;
      sub_1AC79F748();

      swift_willThrow();
      v62 = OUTLINED_FUNCTION_77();
      v39(v62);
      (v39)(v58, v60);
    }

    else
    {
      v51 = *(v0 + 112);
      v50 = *(v0 + 120);
      v52 = *(v0 + 104);
      v54 = *(v0 + 72);
      v53 = *(v0 + 80);
      v55 = *(v0 + 56);
      v56 = v32;
      sub_1AC79F748();

      swift_willThrow();
      v57 = OUTLINED_FUNCTION_142();
      v51(v57);
      (v51)(v53, v55);
    }
  }

  v63 = OUTLINED_FUNCTION_18_10();
  v64(v63);

  OUTLINED_FUNCTION_44();
  v65 = *MEMORY[0x1E69E9840];
LABEL_10:

  return v48();
}

uint64_t sub_1AC6FEC10()
{
  OUTLINED_FUNCTION_45();
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 80);
  v4 = *(v0 + 56);

  v2(v3, v4);
  v5 = *(v0 + 144);
  v6 = OUTLINED_FUNCTION_18_10();
  v7(v6);

  OUTLINED_FUNCTION_44();
  v9 = *MEMORY[0x1E69E9840];

  return v8();
}

uint64_t static SFCustomLanguageModelData.== infix(_:_:)()
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_175();
  swift_beginAccess();
  v2 = v1[3];
  OUTLINED_FUNCTION_175();
  swift_beginAccess();
  if ((sub_1AC628244(v2, v0[3]) & 1) == 0)
  {
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_175();
  swift_beginAccess();
  v3 = v1[2];
  OUTLINED_FUNCTION_175();
  swift_beginAccess();
  if ((sub_1AC628354(v3, v0[2]) & 1) == 0)
  {
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_59_6(OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_identifier);
  v6 = v6 && v4 == v5;
  if (v6 || (sub_1AC7A0D38()) && (MEMORY[0x1B26E85C0](v1 + OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_locale, v0 + OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_locale) & 1) != 0 && ((OUTLINED_FUNCTION_59_6(OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_version), v6) ? (v9 = v7 == v8) : (v9 = 0), v9 || (sub_1AC7A0D38()))
  {
    OUTLINED_FUNCTION_175();
    swift_beginAccess();
    v10 = v1[4];
    OUTLINED_FUNCTION_175();
    swift_beginAccess();
    v11 = v0[4];

    v12 = sub_1AC6283F4();
  }

  else
  {
LABEL_15:
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_1AC6FEE3C()
{
  OUTLINED_FUNCTION_175();
  swift_beginAccess();
  v1 = v0[3];

  OUTLINED_FUNCTION_170();
  sub_1AC63350C();

  OUTLINED_FUNCTION_175();
  swift_beginAccess();
  v2 = v0[2];

  v3 = OUTLINED_FUNCTION_170();
  sub_1AC637EFC(v3);

  OUTLINED_FUNCTION_175();
  swift_beginAccess();
  v4 = v0[4];

  OUTLINED_FUNCTION_170();
  sub_1AC633444();

  v5 = *(v0 + OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_identifier);
  v6 = *(v0 + OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_identifier + 8);
  sub_1AC7A0048();
  v7 = *(v0 + OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_version);
  v8 = *(v0 + OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_version + 8);
  sub_1AC7A0048();
  sub_1AC79FB18();
  OUTLINED_FUNCTION_9_15();
  sub_1AC704B90(v9);
  OUTLINED_FUNCTION_170();
  return sub_1AC79FE58();
}

uint64_t sub_1AC6FEF6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x706D615361746164 && a2 == 0xEB0000000073656CLL;
  if (v4 || (sub_1AC7A0D38() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x72506D6F74737563 && a2 == 0xEB00000000736E6FLL;
    if (v6 || (sub_1AC7A0D38() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x80000001AC7B8700 == a2;
      if (v7 || (sub_1AC7A0D38() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
        if (v8 || (sub_1AC7A0D38() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
          if (v9 || (sub_1AC7A0D38() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_1AC7A0D38();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1AC6FF174(char a1)
{
  result = 0x706D615361746164;
  switch(a1)
  {
    case 1:
      result = 0x72506D6F74737563;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x656C61636F6CLL;
      break;
    case 4:
      result = 0x696669746E656469;
      break;
    case 5:
      result = 0x6E6F6973726576;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1AC6FF23C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AC6FEF6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AC6FF264@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AC6FF16C();
  *a1 = result;
  return result;
}

uint64_t sub_1AC6FF28C(uint64_t a1)
{
  v2 = sub_1AC704A28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AC6FF2C8(uint64_t a1)
{
  v2 = sub_1AC704A28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

char *SFCustomLanguageModelData.deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 4);

  v4 = OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_locale;
  v5 = sub_1AC79FB18();
  OUTLINED_FUNCTION_22_0(v5);
  (*(v6 + 8))(&v0[v4]);
  v7 = *&v0[OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_identifier + 8];

  v8 = *&v0[OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_version + 8];

  return v0;
}

uint64_t sub_1AC6FF3B0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D688, &qword_1AC7AFB78);
  OUTLINED_FUNCTION_40(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_35_9();
  v11 = a1[4];
  OUTLINED_FUNCTION_92_4(a1, a1[3]);
  sub_1AC704A28();
  sub_1AC7A0F38();
  OUTLINED_FUNCTION_175();
  swift_beginAccess();
  v23 = v3[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D698, &qword_1AC7AFB80);
  sub_1AC704BF8(&unk_1EB56D6A0);
  OUTLINED_FUNCTION_20_12();
  sub_1AC7A0C88();
  if (!v2)
  {
    OUTLINED_FUNCTION_175();
    swift_beginAccess();
    v22 = v3[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D6B0, &qword_1AC7AFB88);
    sub_1AC704AD0(&unk_1EB56D6B8);
    OUTLINED_FUNCTION_20_12();
    sub_1AC7A0C88();
    OUTLINED_FUNCTION_175();
    swift_beginAccess();
    v21 = v3[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D6C8, &qword_1AC7AFB90);
    sub_1AC704D0C(&unk_1EB56D6D0);
    OUTLINED_FUNCTION_20_12();
    sub_1AC7A0C88();
    sub_1AC79FB18();
    OUTLINED_FUNCTION_9_15();
    sub_1AC704B90(v12);
    OUTLINED_FUNCTION_20_12();
    sub_1AC7A0C88();
    v13 = *(v3 + OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_identifier);
    v14 = *(v3 + OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_identifier + 8);
    OUTLINED_FUNCTION_71_5(4);
    v15 = *(v3 + OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_version);
    v16 = *(v3 + OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_version + 8);
    OUTLINED_FUNCTION_71_5(5);
  }

  v17 = *(v7 + 8);
  v18 = OUTLINED_FUNCTION_161();
  return v19(v18);
}

uint64_t sub_1AC6FF6F4()
{
  OUTLINED_FUNCTION_85_1();
  sub_1AC6FEE3C();
  return sub_1AC7A0EC8();
}

uint64_t SFCustomLanguageModelData.__allocating_init(from:)()
{
  OUTLINED_FUNCTION_77_4();
  OUTLINED_FUNCTION_53_7();
  v1 = swift_allocObject();
  SFCustomLanguageModelData.init(from:)(v0, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  return v1;
}

void SFCustomLanguageModelData.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_40_0();
  v12 = v10;
  v14 = v13;
  v52 = sub_1AC79FB18();
  v15 = OUTLINED_FUNCTION_40(v52);
  v47 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6();
  v21 = v20 - v19;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D6E8, &qword_1AC7AFB98);
  OUTLINED_FUNCTION_40(v48);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v24);
  v25 = MEMORY[0x1E69E7CC0];
  v49 = v12;
  *(v12 + 16) = MEMORY[0x1E69E7CC0];
  v26 = (v12 + 16);
  v26[1] = v25;
  v51 = v26 + 1;
  v26[2] = v25;
  v50 = v26 + 2;
  v27 = v14[4];
  v53 = v14;
  OUTLINED_FUNCTION_92_4(v14, v14[3]);
  sub_1AC704A28();
  sub_1AC7A0F18();
  if (v11)
  {
    OUTLINED_FUNCTION_82_5();
    v29 = *v26;

    v30 = v26[1];

    v31 = v26[2];

    if (v21)
    {
      (*(v47 + 8))(v49 + OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_locale, v52);
    }

    if (v14)
    {
      v32 = *(v49 + OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_identifier + 8);
    }

    type metadata accessor for SFCustomLanguageModelData(0);
    v33 = *(*v49 + 48);
    v34 = *(*v49 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D698, &qword_1AC7AFB80);
    sub_1AC704BF8(&unk_1EB56D6F0);
    sub_1AC7A0C48();
    swift_beginAccess();
    v28 = *v26;
    *v26 = v55;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D6B0, &qword_1AC7AFB88);
    sub_1AC704AD0(&unk_1EB56D700);
    OUTLINED_FUNCTION_89_5();
    swift_beginAccess();
    v35 = *v51;
    *v51 = v54;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D6C8, &qword_1AC7AFB90);
    sub_1AC704D0C(&unk_1EB56D710);
    OUTLINED_FUNCTION_89_5();
    swift_beginAccess();
    v36 = *v50;
    *v50 = a10;

    OUTLINED_FUNCTION_9_15();
    sub_1AC704B90(v37);
    sub_1AC7A0C48();
    (*(v47 + 32))(v49 + OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_locale, v21, v52);
    v38 = OUTLINED_FUNCTION_90_6(4);
    v39 = (v49 + OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_identifier);
    *v39 = v38;
    v39[1] = v40;
    v41 = OUTLINED_FUNCTION_90_6(5);
    v42 = OUTLINED_FUNCTION_44_5();
    v44 = v43;
    v45(v42, v48);
    v46 = (v49 + OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_version);
    *v46 = v41;
    v46[1] = v44;
  }

  __swift_destroy_boxed_opaque_existential_0(v53);
  OUTLINED_FUNCTION_38_8();
}

uint64_t sub_1AC6FFD6C()
{
  sub_1AC7A0E78();
  v1 = *v0;
  sub_1AC6FEE3C();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6FFDAC@<X0>(uint64_t *a1@<X8>)
{
  result = SFCustomLanguageModelData.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1AC6FFDFC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return static SFCustomLanguageModelData.== infix(_:_:)() & 1;
}

uint64_t sub_1AC6FFE20()
{
  v1 = OBJC_IVAR____TtC6Speech34CustomLanguageModelArtifactManager_artifactURL;
  v2 = sub_1AC79F7F8();
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC6Speech34CustomLanguageModelArtifactManager_configURL, v2);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

unint64_t sub_1AC6FFEE4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3[4] = MEMORY[0x1E69E7CC0];
  v4 = v3 + 4;
  v3[2] = result;
  v3[3] = a2;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (!result)
    {
      return v3;
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      swift_beginAccess();
      v8 = 0;
      v9 = MEMORY[0x1E69E7CC0];
      do
      {
        if (a2)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v4 = v9;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v14 = *(v9 + 16);
            sub_1AC60ED68();
            v9 = v15;
          }

          v11 = a2;
          do
          {
            *v4 = v9;
            v12 = *(v9 + 16);
            if (v12 >= *(v9 + 24) >> 1)
            {
              sub_1AC60ED68();
              v9 = v13;
            }

            *(v9 + 16) = v12 + 1;
            *(v9 + 8 * v12 + 32) = a3;
            *v4 = v9;
            --v11;
          }

          while (v11);
        }

        ++v8;
      }

      while (v8 != v5);
      swift_endAccess();
      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC700020(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = result * v3;
  if ((result * v3) >> 64 != (result * v3) >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4 + a2;
  if (__OFADD__(v4, a2))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  result = swift_beginAccess();
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = *(v2 + 32);
  if (v5 < *(v6 + 16))
  {
    return *(v6 + 8 * v5 + 32);
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1AC7000A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v4 + 24);
  v8 = a2 * v7;
  if ((a2 * v7) >> 64 != (a2 * v7) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = v8 + a3;
  if (__OFADD__(v8, a3))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3 = a1;
  swift_beginAccess();
  v5 = *(v4 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 32) = v5;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_9:
  sub_1AC704640(v5);
  v5 = v10;
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (v6 < *(v5 + 16))
  {
    *(v5 + 8 * v6 + 32) = v3;
    *(v4 + 32) = v5;
    swift_endAccess();
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_1AC700158()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t sub_1AC700178()
{
  sub_1AC700158();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

void static WordErrorRateCalculator.splitString(value:locale:)()
{
  OUTLINED_FUNCTION_104();
  v1 = MEMORY[0x1B26E8C70]();
  v2 = sub_1AC79F9F8();
  v3 = *MEMORY[0x1E695E480];
  v4 = sub_1AC79FF58();
  v5 = OUTLINED_FUNCTION_77();
  v17.location = 0;
  v17.length = v1;
  v7 = CFStringTokenizerCreate(v5, v6, v17, 0, v2);

  Token = CFStringTokenizerAdvanceToNextToken(v7);
  v9 = MEMORY[0x1E69E7CC0];
  if (Token)
  {
    do
    {
      CFStringTokenizerGetCurrentTokenRange(v7);
      OUTLINED_FUNCTION_74_6();
      v10 = sub_1AC79FF58();
      v11 = [v10 substringWithRange_];

      sub_1AC79FF68();
      OUTLINED_FUNCTION_74_6();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = *(v9 + 16);
        sub_1AC60DBDC();
        v9 = v15;
      }

      v12 = *(v9 + 16);
      if (v12 >= *(v9 + 24) >> 1)
      {
        sub_1AC60DBDC();
        v9 = v16;
      }

      *(v9 + 16) = v12 + 1;
      v13 = v9 + 16 * v12;
      *(v13 + 32) = v4;
      *(v13 + 40) = v0;
    }

    while (CFStringTokenizerAdvanceToNextToken(v7));
  }

  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC700318()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  result = v2 - 1;
  if (__OFSUB__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 24);
    if (!__OFSUB__(v4, 1))
    {
      return sub_1AC700020(result, v4 - 1);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC70035C()
{
  result = sub_1AC700318();
  if (__OFSUB__(*(*(v0 + 16) + 16), 1))
  {
    __break(1u);
  }

  return result;
}

void sub_1AC700394()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = v2 - 1;
  if (__OFSUB__(v2, 1))
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v4 = *(v1 + 24);
  v5 = v4 - 1;
  if (!__OFSUB__(v4, 1))
  {
    v6 = MEMORY[0x1E69E7CC0];
    while (2)
    {
      v37 = v5;
      v7 = v3;
      while (1)
      {
        v38 = v6;
        v8 = v5 - 1;
        v9 = __OFSUB__(v5, 1);
        v10 = v7;
LABEL_9:
        v3 = v10 - 1;
        v11 = __OFSUB__(v10, 1);
        if (!v10)
        {
          break;
        }

        if (v5)
        {
          if (v11)
          {
            __break(1u);
          }

          else if (!v9)
          {
            while (1)
            {
              v12 = OUTLINED_FUNCTION_171();
              v14 = sub_1AC700020(v12, v13);
              v15 = sub_1AC700020(v10 - 1, v5);
              v16 = sub_1AC700020(v10, v5 - 1);
              v17 = v15 >= v14 ? v14 : v15;
              v18 = v16 >= v17 ? v17 : v16;
              v19 = OUTLINED_FUNCTION_171();
              if (sub_1AC700020(v19, v20) == v18)
              {
                break;
              }

              if (sub_1AC700020(v10 - 1, v5) == v18)
              {
                v21 = v6[2];
                if (!swift_isUniquelyReferenced_nonNull_native() || v21 >= v6[3] >> 1)
                {
                  sub_1AC60DBDC();
                  v6 = v22;
                }

                swift_arrayDestroy();
                v23 = v6[2];
                memmove(v6 + 6, v6 + 4, 16 * v23);
                OUTLINED_FUNCTION_62_6(v23 + 1);
                v10 = v3;
                goto LABEL_9;
              }

              if (sub_1AC700020(v10, v5 - 1) == v18)
              {
                v32 = OUTLINED_FUNCTION_91_4();
                if (!v32 || (OUTLINED_FUNCTION_63_5(), v25))
                {
                  OUTLINED_FUNCTION_38_9();
                  v6 = v33;
                }

                v31 = 73;
                v3 = v10;
                goto LABEL_52;
              }
            }

            v28 = sub_1AC700020(v10, v5);
            v29 = OUTLINED_FUNCTION_91_4();
            if (v18 == v28)
            {
              if (!v29 || (OUTLINED_FUNCTION_63_5(), v25))
              {
                OUTLINED_FUNCTION_38_9();
                v6 = v30;
              }

              v31 = 67;
            }

            else
            {
              if (!v29 || (OUTLINED_FUNCTION_63_5(), v25))
              {
                OUTLINED_FUNCTION_38_9();
                v6 = v34;
              }

              v31 = 83;
            }

            goto LABEL_52;
          }

          __break(1u);
          goto LABEL_63;
        }

        if (__OFSUB__(v7--, 1))
        {
          goto LABEL_64;
        }

        v6 = v38;
        if (!OUTLINED_FUNCTION_91_4() || (OUTLINED_FUNCTION_63_5(), v25))
        {
          OUTLINED_FUNCTION_38_9();
          v6 = v26;
        }

        swift_arrayDestroy();
        v27 = v6[2];
        memmove(v6 + 6, v6 + 4, 16 * v27);
        v5 = 0;
        OUTLINED_FUNCTION_62_6(v27 + 1);
      }

      if (!v37)
      {
        return;
      }

      v8 = v37 - 1;
      if (!__OFSUB__(v37, 1))
      {
        if (!OUTLINED_FUNCTION_91_4() || (OUTLINED_FUNCTION_63_5(), v25))
        {
          OUTLINED_FUNCTION_38_9();
          v6 = v36;
        }

        v3 = 0;
        v31 = 73;
LABEL_52:
        swift_arrayDestroy();
        v35 = v6[2];
        memmove(v6 + 6, v6 + 4, 16 * v35);
        v6[2] = v35 + 1;
        v6[4] = v31;
        v6[5] = 0xE100000000000000;
        v5 = v8;
        continue;
      }

      break;
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

LABEL_66:
  __break(1u);
}

void WordErrorRateCalculator.__allocating_init(reference:hypothesis:locale:substitutionCost:insertionCost:deletionCost:)()
{
  OUTLINED_FUNCTION_104();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  OUTLINED_FUNCTION_12_11();
  swift_allocObject();
  WordErrorRateCalculator.init(reference:hypothesis:locale:substitutionCost:insertionCost:deletionCost:)(v15, v13, v11, v9, v7, v5, v3, v1);
  OUTLINED_FUNCTION_105();
}

void WordErrorRateCalculator.init(reference:hypothesis:locale:substitutionCost:insertionCost:deletionCost:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  static WordErrorRateCalculator.splitString(value:locale:)();
  v11 = v10;

  static WordErrorRateCalculator.splitString(value:locale:)();
  v13 = v12;

  v46 = v11;
  v14 = *(v11 + 16);
  v49 = v13;
  v15 = *(v13 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D728, &unk_1AC7AFBA0);
  swift_allocObject();
  v16 = sub_1AC6FFEE4(v14 + 1, v15 + 1, 0);
  v52 = v8;
  *(v8 + 16) = v16;
  v17 = *(v16 + 16);
  if (v17 < 1)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v17 != 1)
  {
    v18 = 1;
    while ((v18 * a8) >> 64 == (v18 * a8) >> 63)
    {
      v19 = *(v52 + 16);
      v20 = v18 + 1;
      sub_1AC7000A0(v18 * a8, v18, 0);
      v18 = v20;
      if (v17 == v20)
      {
        v16 = *(v52 + 16);
        goto LABEL_7;
      }
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_7:
  v21 = *(v16 + 24);
  if (v21 < 1)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v21 != 1)
  {
    v22 = 1;
    while ((v22 * a7) >> 64 == (v22 * a7) >> 63)
    {
      v23 = *(v52 + 16);
      v24 = v22 + 1;
      sub_1AC7000A0(v22 * a7, 0, v22);
      v22 = v24;
      if (v21 == v24)
      {
        v16 = *(v52 + 16);
        goto LABEL_13;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

LABEL_13:
  v25 = *(v16 + 16);
  if (v25 >= 1)
  {
    v45 = a5;
    if (v25 == 1)
    {
LABEL_41:

      v43 = sub_1AC79FB18();
      OUTLINED_FUNCTION_22_0(v43);
      (*(v44 + 8))(v45);
      return;
    }

    v26 = 1;
    v47 = *(v16 + 16);
    while (v26 != v25)
    {
      v27 = *(*(v52 + 16) + 24);
      if (v27 < 1)
      {
        goto LABEL_49;
      }

      if (v27 != 1)
      {
        if (v26 > *(v46 + 16))
        {
          goto LABEL_50;
        }

        v28 = (v49 + 40);
        v29 = (v46 + 32 + 16 * (v26 - 1));
        v30 = 1;
        while ((v30 - 1) < *(v49 + 16))
        {
          if (*v29 == *(v28 - 1) && v29[1] == *v28)
          {
            v32 = 0;
          }

          else if (sub_1AC7A0D38())
          {
            v32 = 0;
          }

          else
          {
            v32 = a6;
          }

          v33 = *(v52 + 16);
          v34 = sub_1AC700020(v26 - 1, v30 - 1);
          v35 = __OFADD__(v34, v32);
          v36 = v34 + v32;
          if (v35)
          {
            goto LABEL_43;
          }

          v37 = sub_1AC700020(v26 - 1, v30);
          v38 = v37 + a8;
          if (__OFADD__(v37, a8))
          {
            goto LABEL_44;
          }

          v39 = sub_1AC700020(v26, v30 - 1);
          if (__OFADD__(v39, a7))
          {
            goto LABEL_45;
          }

          v40 = v30 + 1;
          if (v38 >= v36)
          {
            v41 = v36;
          }

          else
          {
            v41 = v38;
          }

          if (v39 + a7 >= v41)
          {
            v42 = v41;
          }

          else
          {
            v42 = v39 + a7;
          }

          sub_1AC7000A0(v42, v26, v30);
          v28 += 2;
          ++v30;
          if (v27 == v40)
          {
            goto LABEL_40;
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

LABEL_40:
      ++v26;
      v25 = v47;
      if (v26 == v47)
      {
        goto LABEL_41;
      }
    }

    goto LABEL_48;
  }

LABEL_53:
  __break(1u);
}

uint64_t WordErrorRateCalculator.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t WordErrorRateCalculator.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = OUTLINED_FUNCTION_12_11();

  return MEMORY[0x1EEE6BDC0](v2, v3, v4);
}

uint64_t CustomLanguageModelEvaluator.AudioSampleEvaluationResult.baselineTranscription.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_39();
}

uint64_t CustomLanguageModelEvaluator.AudioSampleEvaluationResult.customizedTranscription.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_39();
}

double CustomLanguageModelEvaluator.AudioSampleEvaluationResult.wordErrorRateReduction.getter()
{
  result = 0.0;
  if (*v0 != 0.0)
  {
    return (*v0 - v0[3]) / *v0;
  }

  return result;
}

uint64_t CustomLanguageModelEvaluator.AudioSampleEvaluationResult.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1AC7A09C8();
  OUTLINED_FUNCTION_64_6();
  MEMORY[0x1B26E8C40](0xD000000000000021);
  v7 = OUTLINED_FUNCTION_170();
  MEMORY[0x1B26E8C40](v7);
  OUTLINED_FUNCTION_64_6();
  MEMORY[0x1B26E8C40]();
  MEMORY[0x1B26E8C40](v5, v6);
  OUTLINED_FUNCTION_64_6();
  MEMORY[0x1B26E8C40]();
  OUTLINED_FUNCTION_171_2();
  sub_1AC7A03F8();
  OUTLINED_FUNCTION_65();
  MEMORY[0x1B26E8C40](0xD000000000000021);
  OUTLINED_FUNCTION_171_2();
  sub_1AC7A03F8();
  OUTLINED_FUNCTION_64_6();
  MEMORY[0x1B26E8C40]();
  sub_1AC7A03F8();
  return 0;
}

uint64_t CustomLanguageModelEvaluator.AudioSampleEvaluationResult.json.getter()
{
  v32[55] = *MEMORY[0x1E69E9840];
  v1 = sub_1AC79FFB8();
  v2 = OUTLINED_FUNCTION_167(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6();
  v5 = *v0;
  v7 = *(v0 + 8);
  v6 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = *(v0 + 40);
  v31 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CE58, &qword_1AC7B4080);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A8780;
  v11 = MEMORY[0x1E69E63B0];
  strcpy((inited + 32), "wordErrorRate");
  *(inited + 46) = -4864;
  *(inited + 48) = v5;
  *(inited + 72) = v11;
  *(inited + 80) = 0x697263736E617274;
  v12 = MEMORY[0x1E69E6158];
  *(inited + 120) = MEMORY[0x1E69E6158];
  *(inited + 88) = 0xEA00000000007470;
  *(inited + 96) = v7;
  *(inited + 104) = v6;

  v13 = sub_1AC79FE38();
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1AC7A8780;
  strcpy((v14 + 32), "wordErrorRate");
  *(v14 + 46) = -4864;
  *(v14 + 48) = v8;
  *(v14 + 72) = v11;
  *(v14 + 80) = 0x697263736E617274;
  *(v14 + 120) = v12;
  *(v14 + 88) = 0xEA00000000007470;
  *(v14 + 96) = v31;
  *(v14 + 104) = v9;
  v15 = sub_1AC79FE38();
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_1AC7AC780;
  *(v16 + 32) = 0x656E696C65736162;
  *(v16 + 40) = 0xE800000000000000;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D730, &unk_1AC7AFBB0);
  *(v16 + 48) = v13;
  *(v16 + 72) = v17;
  *(v16 + 80) = 0x6D6F74737563;
  *(v16 + 88) = 0xE600000000000000;
  *(v16 + 96) = v15;
  *(v16 + 120) = v17;
  *(v16 + 128) = 0xD000000000000016;
  *(v16 + 136) = 0x80000001AC7B8610;
  if (v5 == 0.0)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = (v5 - v8) / v5;
  }

  v19 = objc_opt_self();
  *(v16 + 168) = v11;
  *(v16 + 144) = v18;

  OUTLINED_FUNCTION_77();
  sub_1AC79FE38();
  v20 = sub_1AC79FE18();

  v32[0] = 0;
  v21 = [v19 dataWithJSONObject:v20 options:0 error:v32];

  v22 = v32[0];
  if (!v21)
  {
    v28 = v22;

    v29 = sub_1AC79F748();

    swift_willThrow();
    v25 = 32123;
    goto LABEL_8;
  }

  sub_1AC79F868();
  OUTLINED_FUNCTION_74_6();

  sub_1AC79FFA8();
  OUTLINED_FUNCTION_142();
  result = sub_1AC79FF88();
  if (v24)
  {
    v25 = result;
    v26 = OUTLINED_FUNCTION_142();
    sub_1AC5C28A8(v26, v27);

LABEL_8:
    v30 = *MEMORY[0x1E69E9840];
    return v25;
  }

  __break(1u);
  return result;
}

void sub_1AC701050()
{
  OUTLINED_FUNCTION_104();
  v0 = sub_1AC79F778();
  v1 = OUTLINED_FUNCTION_40(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6();
  v8 = v7 - v6;
  v9 = sub_1AC79F7F8();
  v10 = OUTLINED_FUNCTION_40(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6();
  v17 = v16 - v15;
  v18 = [objc_opt_self() defaultManager];
  v19 = [v18 temporaryDirectory];

  sub_1AC79F7A8();
  (*(v3 + 104))(v8, *MEMORY[0x1E6968F70], v0);
  sub_1AC649BF0();
  sub_1AC79F7D8();
  v20 = *(v3 + 8);
  v21 = OUTLINED_FUNCTION_161();
  v22(v21);
  (*(v12 + 8))(v17, v9);
  OUTLINED_FUNCTION_105();
}

uint64_t CustomLanguageModelEvaluator.__allocating_init(languageModel:clientIdentifier:skipDownload:)()
{
  OUTLINED_FUNCTION_53_7();
  v0 = swift_allocObject();
  CustomLanguageModelEvaluator.init(languageModel:clientIdentifier:skipDownload:)();
  return v0;
}

void CustomLanguageModelEvaluator.init(languageModel:clientIdentifier:skipDownload:)()
{
  OUTLINED_FUNCTION_40_0();
  v57 = v2;
  v58 = v1;
  v3 = v0;
  v64 = v4;
  v61 = v5;
  v7 = v6;
  v8 = sub_1AC79FB18();
  v9 = OUTLINED_FUNCTION_40(v8);
  v55 = v10;
  v56 = v9;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v9);
  v54 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v53[1] = v53 - v15;
  v16 = sub_1AC79FF48();
  v17 = OUTLINED_FUNCTION_167(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6();
  v20 = sub_1AC79F7F8();
  v21 = OUTLINED_FUNCTION_40(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_6();
  v28 = v27 - v26;
  v29 = OBJC_IVAR____TtC6Speech28CustomLanguageModelEvaluator_languageModel;
  v30 = *(v23 + 16);
  v60 = v7;
  v30(v3 + OBJC_IVAR____TtC6Speech28CustomLanguageModelEvaluator_languageModel, v7, v20);
  v59 = v3;
  v30(v28, v3 + v29, v20);
  sub_1AC79F7C8();
  v31 = *(v23 + 8);
  v31(v28, v20);
  objc_allocWithZone(MEMORY[0x1E699B9E8]);
  v32 = OUTLINED_FUNCTION_171();
  v35 = sub_1AC703A98(v32, v33, v34);
  if (!v35)
  {

    OUTLINED_FUNCTION_65();
    sub_1AC79FEE8();
    if (qword_1EB56B610 != -1)
    {
      OUTLINED_FUNCTION_2_14();
      swift_once();
    }

    v47 = qword_1EB56DF80;
    sub_1AC79FA88();
    OUTLINED_FUNCTION_138();
    OUTLINED_FUNCTION_36_7();
    v48 = sub_1AC79FFC8();
    related decl 'e' for SFSpeechErrorCode.init(_:description:)(8, v48, v49);
    swift_willThrow();
    v31(v60, v20);
    v50 = v59;
    v31(v59 + v29, v20);
    type metadata accessor for CustomLanguageModelEvaluator(0);
    v51 = *(*v50 + 48);
    v52 = *(*v50 + 52);
    swift_deallocPartialClassInstance();
    goto LABEL_7;
  }

  v36 = v35;
  v37 = v61;
  v38 = [v35 getLocale];
  if (v38)
  {
    v39 = v38;
    v40 = sub_1AC79FF68();
    v42 = v41;

    v62 = v40;
    v63 = v42;
    OUTLINED_FUNCTION_66_7();
    sub_1AC649BF0();
    OUTLINED_FUNCTION_80_5();
    OUTLINED_FUNCTION_10_17();
    sub_1AC7A0808();

    v43 = v54;
    sub_1AC79F968();

    v44 = v59;
    (*(v55 + 32))(v59 + OBJC_IVAR____TtC6Speech28CustomLanguageModelEvaluator_locale, v43, v56);
    v45 = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
    v31(v60, v20);
    *(v44 + OBJC_IVAR____TtC6Speech28CustomLanguageModelEvaluator_queue) = v45;
    v46 = (v44 + OBJC_IVAR____TtC6Speech28CustomLanguageModelEvaluator_clientIdentifier);
    *v46 = v57;
    v46[1] = v37;
    *(v44 + OBJC_IVAR____TtC6Speech28CustomLanguageModelEvaluator_skipDownload) = v64 & 1;
LABEL_7:
    OUTLINED_FUNCTION_38_8();
    return;
  }

  __break(1u);
}

uint64_t sub_1AC7016C8()
{
  OUTLINED_FUNCTION_85();
  v1[2] = v0;
  v2 = sub_1AC79FB18();
  v1[3] = v2;
  OUTLINED_FUNCTION_22(v2);
  v1[4] = v3;
  v5 = *(v4 + 64);
  v1[5] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC701770()
{
  OUTLINED_FUNCTION_45();
  v1 = v0[2];
  v2 = v0[5];
  if (*(v1 + OBJC_IVAR____TtC6Speech28CustomLanguageModelEvaluator_skipDownload))
  {
    v3 = v0[5];

    OUTLINED_FUNCTION_44();

    return v4();
  }

  else
  {
    (*(v0[4] + 16))(v0[5], v1 + OBJC_IVAR____TtC6Speech28CustomLanguageModelEvaluator_locale, v0[3]);
    v6 = objc_allocWithZone(SFEntitledAssetConfig);
    OUTLINED_FUNCTION_175();
    v11 = sub_1AC751A98(v7, v8, v9, v10);
    v0[6] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF08, &qword_1AC7AB430);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1AC7AA7F0;
    *(v12 + 32) = v11;
    v13 = v1 + OBJC_IVAR____TtC6Speech28CustomLanguageModelEvaluator_clientIdentifier;
    v14 = *(v1 + OBJC_IVAR____TtC6Speech28CustomLanguageModelEvaluator_clientIdentifier);
    v15 = *(v13 + 8);
    v16 = objc_allocWithZone(type metadata accessor for AssetsInstallationRequest());
    v17 = v11;

    v18 = OUTLINED_FUNCTION_170();
    sub_1AC6EF678(v18, v19, v15);
    v0[7] = v20;
    v21 = swift_task_alloc();
    v0[8] = v21;
    *v21 = v0;
    OUTLINED_FUNCTION_85_0(v21);

    return AssetsInstallationRequest.downloadAndInstall()();
  }
}

uint64_t sub_1AC701928()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v8 + 72) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC701A20()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 48);

  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_44();

  return v3();
}

uint64_t sub_1AC701A88()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_44();
  v4 = *(v0 + 72);

  return v3();
}

void sub_1AC701AF4()
{
  OUTLINED_FUNCTION_104();
  v1 = v0;
  v49 = v2;
  v50 = v3;
  v48 = v4;
  v47 = v5;
  v6 = sub_1AC79FF48();
  v7 = OUTLINED_FUNCTION_167(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  OUTLINED_FUNCTION_167(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  v16 = sub_1AC79F7F8();
  v17 = OUTLINED_FUNCTION_40(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6();
  v24 = v23 - v22;
  v25 = sub_1AC79FB18();
  v26 = OUTLINED_FUNCTION_40(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_6();
  v33 = v32 - v31;
  sub_1AC5CF764(0, &qword_1EB56D8B0, off_1E797AD68);
  (*(v28 + 16))(v33, v1 + OBJC_IVAR____TtC6Speech28CustomLanguageModelEvaluator_locale, v25);
  v34 = sub_1AC701F38(v33);
  if (v34)
  {
    v35 = v34;
    [v34 setQueue_];
    sub_1AC5CF764(0, &qword_1EB56D8B8, off_1E797AD70);
    (*(v19 + 16))(v24, v47, v16);
    v36 = sub_1AC701FD4(v24);
    [v36 setRequiresOnDeviceRecognition_];
    if (v48)
    {
      sub_1AC701030();
      sub_1AC70103C();
      __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
      v37 = objc_allocWithZone(SFSpeechLanguageModelConfiguration);
      v38 = sub_1AC703AFC(v24, v15);
      [v36 setCustomizedLanguageModel_];
    }

    [v36 setShouldReportPartialResults_];

    v39 = swift_allocObject();
    v40 = v50;
    *(v39 + 16) = v49;
    *(v39 + 24) = v40;
    v51[4] = sub_1AC706AB8;
    v51[5] = v39;
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 1107296256;
    v51[2] = sub_1AC702128;
    v51[3] = &block_descriptor_138;
    v41 = _Block_copy(v51);

    v42 = [v35 recognitionTaskWithRequest:v36 resultHandler:v41];
    _Block_release(v41);
  }

  else
  {
    OUTLINED_FUNCTION_65();
    sub_1AC79FEE8();
    if (qword_1EB56B610 != -1)
    {
      OUTLINED_FUNCTION_2_14();
      swift_once();
    }

    v43 = qword_1EB56DF80;
    sub_1AC79FA88();
    OUTLINED_FUNCTION_138();
    OUTLINED_FUNCTION_36_7();
    v44 = sub_1AC79FFC8();
    v42 = related decl 'e' for SFSpeechErrorCode.init(_:description:)(4, v44, v45);
    v49(0, 0, v42);
  }

  OUTLINED_FUNCTION_105();
}

id sub_1AC701F38(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1AC79F9F8();
  v4 = [v2 initWithLocale_];

  v5 = sub_1AC79FB18();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

id sub_1AC701FD4(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1AC79F788();
  v4 = [v2 initWithURL_];

  v5 = sub_1AC79F7F8();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t sub_1AC702070(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (a1)
  {
    v5 = [a1 bestTranscription];
    v6 = [v5 formattedString];

    v7 = sub_1AC79FF68();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  a3(v7, v9, a2);
}

void sub_1AC702128(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

double sub_1AC7021B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_60_5();
  v9 = sub_1AC79FB18();
  v10 = OUTLINED_FUNCTION_40(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6();
  v15 = v14 - v13;
  (*(v16 + 16))(v14 - v13, v4 + OBJC_IVAR____TtC6Speech28CustomLanguageModelEvaluator_locale);
  type metadata accessor for WordErrorRateCalculator();
  swift_initStackObject();

  WordErrorRateCalculator.init(reference:hypothesis:locale:substitutionCost:insertionCost:deletionCost:)(v6, v5, a3, a4, v15, 1, 1, 1);
  sub_1AC70035C();
  v18 = v17;

  return v18;
}

uint64_t sub_1AC7022D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  OUTLINED_FUNCTION_138();
  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC70230C()
{
  OUTLINED_FUNCTION_45();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE38, &unk_1AC7AFBC0);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE30, &unk_1AC7A8230) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  v0[7] = v7;
  *(v7 + 16) = xmmword_1AC7A6D00;
  v8 = v7 + v6;
  v9 = (v8 + v4[14]);
  v10 = sub_1AC79F7F8();
  OUTLINED_FUNCTION_80(v10);
  (*(v11 + 16))(v8, v3);
  *v9 = v2;
  v9[1] = v1;

  v12 = swift_task_alloc();
  v0[8] = v12;
  *v12 = v0;
  v12[1] = sub_1AC7024A4;
  v13 = v0[6];

  return sub_1AC702E4C();
}

uint64_t sub_1AC7024A4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 64);
  *v4 = *v1;
  v3[9] = v7;
  v3[10] = v0;

  if (!v0)
  {
    v8 = v3[7];
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC7025AC()
{
  v1 = *(v0 + 72);
  if (*(v1 + 16))
  {
    OUTLINED_FUNCTION_85();
    v2 = *(v0 + 16);
    v3 = *(v1 + 32);
    v4 = *(v1 + 40);
    v5 = *(v1 + 48);
    v6 = *(v1 + 56);
    v7 = *(v1 + 64);
    v8 = *(v1 + 72);
    v9 = *(v1 + 80);
    *v2 = v3;
    *(v2 + 8) = v4;
    *(v2 + 16) = v5;
    *(v2 + 24) = v6;
    *(v2 + 32) = v7;
    *(v2 + 40) = v8;
    *(v2 + 48) = v9;
    sub_1AC704DE0(v3, v4, v5, v6, v7, v8, v9);

    OUTLINED_FUNCTION_44();

    return v10();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC702640()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_44();
  v3 = *(v0 + 80);

  return v2();
}

void sub_1AC70269C()
{
  OUTLINED_FUNCTION_104();
  v1 = v0;
  v3 = v2;
  v23 = v4;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE30, &unk_1AC7A8230);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - v12;
  if (*(v8 + 16))
  {
    v14 = *(v11 + 80);
    v15 = swift_allocObject();
    v22 = v3;
    *(v15 + 16) = v8;

    sub_1AC6F9554();
    v16 = *&v13[*(v9 + 48) + 8];

    v17 = sub_1AC79F7F8();
    OUTLINED_FUNCTION_22_0(v17);
    (*(v18 + 8))(v13);
    sub_1AC5C6E6C();
    v19 = swift_allocObject();
    v19[2] = v6;
    v19[3] = v1;
    v21 = v22;
    v20 = v23;
    v19[4] = v15;
    v19[5] = v20;
    v19[6] = v21;
    sub_1AC637E08();

    sub_1AC701AF4();
  }

  else
  {
    v23(v6);
  }

  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC7028C4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE30, &unk_1AC7A8230);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  result = swift_allocObject();
  v17 = result;
  *(result + 16) = a4;
  if (a3)
  {

    v18 = a3;
    sub_1AC5C368C(sub_1AC60F304);
    v19 = *(*(v17 + 16) + 16);
    sub_1AC5C3604(v19, sub_1AC60F304);
    v20 = *(v17 + 16);
    *(v20 + 16) = v19 + 1;
    v21 = v20 + 56 * v19;
    *(v21 + 32) = a3;
    *(v21 + 40) = 0u;
    *(v21 + 56) = 0u;
    *(v21 + 72) = 0;
    *(v21 + 80) = 1;
    *(v17 + 16) = v20;
    swift_beginAccess();
    v22 = *(a6 + 16);

    sub_1AC70269C(v22, v20, a7, a8);
  }

  else if (a2)
  {
    v23 = (a9 + *(v13 + 48));
    v25 = *v23;
    v24 = v23[1];

    v26 = sub_1AC7021B4(v25, v24, a1, a2);
    sub_1AC5C6E6C();
    v27 = (v15 + ((*(v14 + 80) + 56) & ~*(v14 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = swift_allocObject();
    v28[2] = v17;
    v28[3] = a5;
    v28[4] = a6;
    v28[5] = a7;
    v28[6] = a8;
    sub_1AC637E08();
    *(v28 + v27) = v26;
    v29 = (v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v29 = a1;
    v29[1] = a2;

    sub_1AC701AF4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1AC702BF0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = a9;
  if (a3)
  {
    swift_beginAccess();
    v16 = a3;
    sub_1AC5C368C(sub_1AC60F304);
    v17 = *(*(a4 + 16) + 16);
    sub_1AC5C3604(v17, sub_1AC60F304);
    v18 = *(a4 + 16);
    *(v18 + 16) = v17 + 1;
    v19 = v18 + 56 * v17;
    *(v19 + 32) = a3;
    *(v19 + 40) = 0u;
    *(v19 + 56) = 0u;
    *(v19 + 72) = 0;
    *(v19 + 80) = 1;
    *(a4 + 16) = v18;
    swift_endAccess();
LABEL_6:
    swift_beginAccess();
    v28 = *(a7 + 16);

    sub_1AC70269C(v28, v18, a8, v12);

    return;
  }

  if (a2)
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE30, &unk_1AC7A8230);
    v24 = sub_1AC7021B4(*(a10 + *(v23 + 48)), *(a10 + *(v23 + 48) + 8), a1, a2);
    if (a12)
    {
      v25 = v24;
      swift_beginAccess();

      sub_1AC5C368C(sub_1AC60F304);
      v26 = *(*(a4 + 16) + 16);
      sub_1AC5C3604(v26, sub_1AC60F304);
      v18 = *(a4 + 16);
      *(v18 + 16) = v26 + 1;
      v27 = v18 + 56 * v26;
      *(v27 + 32) = a5;
      *(v27 + 40) = a11;
      *(v27 + 48) = a12;
      *(v27 + 56) = v25;
      *(v27 + 64) = a1;
      *(v27 + 72) = a2;
      *(v27 + 80) = 0;
      *(a4 + 16) = v18;
      swift_endAccess();
      v12 = a9;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1AC702E4C()
{
  OUTLINED_FUNCTION_85();
  v1[19] = v2;
  v1[20] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  OUTLINED_FUNCTION_167(v3);
  v5 = *(v4 + 64);
  v1[21] = OUTLINED_FUNCTION_126();
  v6 = sub_1AC79F7F8();
  v1[22] = v6;
  OUTLINED_FUNCTION_167(v6);
  v8 = *(v7 + 64);
  v1[23] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC702EF8()
{
  OUTLINED_FUNCTION_85();
  v0[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C4C8, &qword_1AC7AFBE0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1AC7A6D00;
  *(v1 + 56) = MEMORY[0x1E69E6158];
  *(v1 + 32) = 0xD000000000000011;
  *(v1 + 40) = 0x80000001AC7B8660;
  OUTLINED_FUNCTION_40_8(v1);

  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = sub_1AC702FEC;
  v3 = v0[20];

  return sub_1AC7016C8();
}

uint64_t sub_1AC702FEC()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 200);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v3 + 184);
    v10 = *(v3 + 168);

    OUTLINED_FUNCTION_27();

    return v11();
  }

  else
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

uint64_t sub_1AC703120()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[20];
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E6158];
  *(v6 + 16) = xmmword_1AC7A6D00;
  *(v6 + 56) = v7;
  *(v6 + 32) = 0x474E49444C495542;
  *(v6 + 40) = 0xEB000000004D4C20;
  OUTLINED_FUNCTION_40_8(v6);

  v8 = objc_opt_self();
  v9 = sub_1AC79F788();
  v0[26] = v9;
  v10 = *(v5 + OBJC_IVAR____TtC6Speech28CustomLanguageModelEvaluator_clientIdentifier);
  v11 = *(v5 + OBJC_IVAR____TtC6Speech28CustomLanguageModelEvaluator_clientIdentifier + 8);
  v12 = sub_1AC79FF58();
  v0[27] = v12;
  sub_1AC701030();
  sub_1AC70103C();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
  v13 = objc_allocWithZone(SFSpeechLanguageModelConfiguration);
  v14 = sub_1AC703AFC(v2, v3);
  v0[28] = v14;
  v0[2] = v0;
  v0[3] = sub_1AC703344;
  v15 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFE0, &qword_1AC7A8410);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1AC6BB2BC;
  v0[13] = &block_descriptor_10;
  v0[14] = v15;
  [v8 prepareCustomLanguageModelForUrl:v9 clientIdentifier:v12 configuration:v14 ignoresCache:1 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1AC703344()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 232) = *(v3 + 48);
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC703440()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 208);
  v3 = *(v0 + 192);
  v10 = *(v0 + 152);

  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E6158];
  *(v4 + 16) = xmmword_1AC7A6D00;
  *(v4 + 56) = v5;
  *(v4 + 32) = 0xD000000000000013;
  *(v4 + 40) = 0x80000001AC7B8680;
  OUTLINED_FUNCTION_40_8(v4);

  v6 = swift_task_alloc();
  *(v0 + 240) = v6;
  v6[1] = vextq_s8(v10, v10, 8uLL);
  v7 = *(MEMORY[0x1E69E88D0] + 4);
  v8 = swift_task_alloc();
  *(v0 + 248) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D740, &qword_1AC7AFBF8);
  *v8 = v0;
  v8[1] = sub_1AC7035C8;
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1AC7035C8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 248);
  v3 = *(v1 + 240);
  v4 = *v0;
  OUTLINED_FUNCTION_18();
  *v5 = v4;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC7036CC()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[18];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1AC703740()
{
  OUTLINED_FUNCTION_45();
  v1 = v0[28];
  v2 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  swift_willThrow();

  v5 = v0[29];
  v6 = v0[23];
  v7 = v0[21];

  OUTLINED_FUNCTION_44();

  return v8();
}

uint64_t sub_1AC7037D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D8C0, &qword_1AC7B0968);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_1AC70269C();
}

uint64_t sub_1AC703928()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D8C0, &qword_1AC7B0968);
  return sub_1AC7A01D8();
}

uint64_t CustomLanguageModelEvaluator.deinit()
{
  v1 = OBJC_IVAR____TtC6Speech28CustomLanguageModelEvaluator_languageModel;
  v2 = sub_1AC79F7F8();
  OUTLINED_FUNCTION_22_0(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = OBJC_IVAR____TtC6Speech28CustomLanguageModelEvaluator_locale;
  v5 = sub_1AC79FB18();
  OUTLINED_FUNCTION_22_0(v5);
  (*(v6 + 8))(v0 + v4);

  v7 = *(v0 + OBJC_IVAR____TtC6Speech28CustomLanguageModelEvaluator_clientIdentifier + 8);

  return v0;
}

uint64_t sub_1AC703A3C(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

id sub_1AC703A98(uint64_t a1, uint64_t a2, SEL *a3)
{
  if (a2)
  {
    v5 = sub_1AC79FF58();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 *a3];

  return v6;
}

id sub_1AC703AFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1AC79F788();
  v7 = sub_1AC79F7F8();
  v8 = 0;
  if (__swift_getEnumTagSinglePayload(a2, 1, v7) != 1)
  {
    v8 = sub_1AC79F788();
    (*(*(v7 - 8) + 8))(a2, v7);
  }

  v9 = [v3 initWithLanguageModel:v6 vocabulary:v8];

  (*(*(v7 - 8) + 8))(a1, v7);
  return v9;
}

uint64_t sub_1AC703E6C(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_1AC7A0178();
  }

  return result;
}

char *sub_1AC703F10(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[160 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_14(a3, result);
  }

  return result;
}

char *sub_1AC703F50(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[80 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_14(a3, result);
  }

  return result;
}

char *sub_1AC703F78(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_14(a3, result);
  }

  return result;
}

char *sub_1AC703F98(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_14(a3, result);
  }

  return result;
}

char *sub_1AC703FBC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[72 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_14(a3, result);
  }

  return result;
}

char *sub_1AC703FE4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_14(a3, result);
  }

  return result;
}

char *sub_1AC704020(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_14(a3, result);
  }

  return result;
}

char *sub_1AC704048(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_14(a3, result);
  }

  return result;
}

char *sub_1AC7040DC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_7_16(a3, result, 56 * a2);
  }

  return result;
}

uint64_t sub_1AC70411C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  OUTLINED_FUNCTION_50_0();
  if (v7 < v6 || (v8 = OUTLINED_FUNCTION_171(), v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9), result = OUTLINED_FUNCTION_80(v10), v4 + *(v12 + 72) * v3 <= a3))
  {
    v13 = OUTLINED_FUNCTION_171();
    __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
    OUTLINED_FUNCTION_14_11();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v4)
  {
    OUTLINED_FUNCTION_14_11();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1AC7041FC(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_50_0();
  if (v9 < v8 || (v10 = (a4)(0), result = OUTLINED_FUNCTION_80(v10), v5 + *(v12 + 72) * v4 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_14_11();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    OUTLINED_FUNCTION_14_11();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_1AC7042B8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_4_12(a1, a2, a3, a4, a5);
  memcpy((*(v7 + 56) + 264 * v6), v8, 0x101uLL);
  OUTLINED_FUNCTION_61_5();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v9;
  }
}

void sub_1AC704304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_60_5();
  OUTLINED_FUNCTION_11_15(v8, v7 + 8 * (v8 >> 6));
  v10 = *(v9 + 48);
  v11 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  OUTLINED_FUNCTION_167(v11);
  v13 = *(v12 + 72);
  OUTLINED_FUNCTION_28_11();
  *(*(a4 + 56) + 8 * v4) = a3;
  OUTLINED_FUNCTION_61_5();
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v14;
  }
}

void sub_1AC704380(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_4_12(a1, a2, a3, a4, a5);
  sub_1AC5C3968(v8, (*(v7 + 56) + 32 * v6));
  OUTLINED_FUNCTION_61_5();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v9;
  }
}

uint64_t sub_1AC7043C4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = OUTLINED_FUNCTION_11_15(a1, a7 + 8 * (a1 >> 6));
  result = OUTLINED_FUNCTION_72_4(v7, v8, v9, v10, v11, v12, v13);
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v15 + 16) = v16;
  }

  return result;
}

uint64_t sub_1AC704404(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = OUTLINED_FUNCTION_11_15(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = (v7[7] + 16 * result);
  *v11 = v12;
  v11[1] = v13;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v16;
  }

  return result;
}

uint64_t sub_1AC704450(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = OUTLINED_FUNCTION_11_15(a1, a6 + 8 * (a1 >> 6));
  v8 = v7[6] + 24 * result;
  *v8 = v9;
  *(v8 + 8) = v10;
  *(v8 + 16) = v11;
  *(v7[7] + 8 * result) = v12;
  v13 = v7[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v15;
  }

  return result;
}

unint64_t sub_1AC7044A0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_4_12(a1, a2, a3, a4, a5);
  *(*(v6 + 56) + 8 * result) = v7;
  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v10;
  }

  return result;
}

void sub_1AC7044D4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_4_12(a1, a2, a3, a4, a5);
  v9 = *(v8 + 56);
  v10 = sub_1AC79FD28();
  OUTLINED_FUNCTION_80(v10);
  (*(v11 + 32))(v9 + *(v11 + 72) * a1, a4);
  OUTLINED_FUNCTION_61_5();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }
}

uint64_t sub_1AC704654(void *a1)
{
  v2 = [a1 supportedXsampaProns];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1AC7A0158();

  return v3;
}

id sub_1AC7046B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v12 = sub_1AC79FF58();

  v13 = sub_1AC79FF58();

  v14 = sub_1AC79FF58();

  v15 = sub_1AC79FF58();

  v16 = [a11 createPhraseCountsArtifact:a1 version:a2 locale:v12 rawPhraseCountsPath:v13 customPronunciationsPath:v14 saveTo:v15];

  return v16;
}

unint64_t sub_1AC7047C0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_68_6(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB56C640, &unk_1AC7A9BE0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1AC70484C()
{
  result = qword_1EB56D658;
  if (!qword_1EB56D658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D658);
  }

  return result;
}

unint64_t sub_1AC7048A0()
{
  result = qword_1EB56D668;
  if (!qword_1EB56D668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D668);
  }

  return result;
}

void sub_1AC7048F4(uint64_t a1@<X8>)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1AC704554(v3);
    v3 = v8;
  }

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 24 * v4;
    v6 = *(v5 + 8);
    v7 = *(v5 + 24);
    *a1 = v6;
    *(a1 + 16) = v7;
    *(v3 + 16) = v4 - 1;
    *v1 = v3;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1AC70496C()
{
  result = qword_1EB56D678;
  if (!qword_1EB56D678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D678);
  }

  return result;
}

unint64_t sub_1AC704A28()
{
  result = qword_1EB56D690;
  if (!qword_1EB56D690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D690);
  }

  return result;
}

unint64_t sub_1AC704A7C()
{
  result = qword_1EB56D6A8;
  if (!qword_1EB56D6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D6A8);
  }

  return result;
}

unint64_t sub_1AC704AD0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_68_6(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB56D6B0, &qword_1AC7AFB88);
    v4();
    OUTLINED_FUNCTION_54_3();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1AC704B3C()
{
  result = qword_1EB56D6C0;
  if (!qword_1EB56D6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D6C0);
  }

  return result;
}

unint64_t sub_1AC704B90(uint64_t a1)
{
  result = OUTLINED_FUNCTION_68_6(a1);
  if (!result)
  {
    v4(v3);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1AC704BF8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_68_6(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB56D698, &qword_1AC7AFB80);
    v4();
    OUTLINED_FUNCTION_54_3();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1AC704C64()
{
  result = qword_1EB56D6F8;
  if (!qword_1EB56D6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D6F8);
  }

  return result;
}

unint64_t sub_1AC704CB8()
{
  result = qword_1EB56D708;
  if (!qword_1EB56D708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D708);
  }

  return result;
}

unint64_t sub_1AC704D0C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_68_6(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB56D6C8, &qword_1AC7AFB90);
    sub_1AC704B90(v4);
    OUTLINED_FUNCTION_54_3();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

id sub_1AC704DE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {

    return a1;
  }

  else
  {
  }
}

uint64_t sub_1AC704E30(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1AC7037D0(a1);
}

unint64_t sub_1AC704E3C()
{
  result = qword_1EB56D748;
  if (!qword_1EB56D748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D748);
  }

  return result;
}

unint64_t sub_1AC704E94()
{
  result = qword_1EB56D750;
  if (!qword_1EB56D750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D750);
  }

  return result;
}

unint64_t sub_1AC704F7C()
{
  result = qword_1EB56D768;
  if (!qword_1EB56D768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D768);
  }

  return result;
}

uint64_t sub_1AC70504C()
{
  result = sub_1AC79FB18();
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

uint64_t dispatch thunk of SFCustomLanguageModelData.export(to:)()
{
  OUTLINED_FUNCTION_72();
  v2 = v1;
  OUTLINED_FUNCTION_37_9();
  v4 = *(v3 + 248);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 16) = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_85_0(v6);

  return v8(v2);
}

uint64_t destroy for SFCustomLanguageModelData.CustomPronunciation(uint64_t a1)
{
  v2 = *(a1 + 8);

  v3 = *(a1 + 16);
}

void *sub_1AC7053B0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

void *assignWithCopy for SFCustomLanguageModelData.CustomPronunciation(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  v5 = a2[2];
  v6 = a1[2];
  a1[2] = v5;

  return a1;
}

void *assignWithTake for SFCustomLanguageModelData.CustomPronunciation(void *a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1[1];

  v5 = a1[2];
  *(a1 + 1) = *(a2 + 8);

  return a1;
}

uint64_t dispatch thunk of SFCustomLanguageModelData.PhraseCountGenerator.Iterator.next()()
{
  OUTLINED_FUNCTION_72();
  v2 = v1;
  OUTLINED_FUNCTION_37_9();
  v4 = *(v3 + 80);
  v9 = (v4 + *v4);
  v5 = v4[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_100();
  *(v0 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_1AC5C5380;

  return v9(v2);
}

void *sub_1AC705768(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

uint64_t sub_1AC7057A0()
{
  OUTLINED_FUNCTION_50_0();
  *v3 = *v2;
  v4 = *(v1 + 8);
  *(v1 + 8) = v2[1];

  *(v1 + 16) = *(v0 + 16);
  return v1;
}

void *sub_1AC7057F4()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v2[1];
  v5 = *(v4 + 8);
  *v1 = *v2;
  v1[1] = v3;

  v1[2] = *(v0 + 16);
  return v1;
}

uint64_t sub_1AC705830(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AC705870(uint64_t result, int a2, int a3)
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

_BYTE *sub_1AC7058FC(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_1AC705A88()
{
  result = sub_1AC79F7F8();
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

uint64_t sub_1AC705C28()
{
  result = sub_1AC79F7F8();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1AC79FB18();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of CustomLanguageModelEvaluator.evaluate(audioSample:referenceTranscription:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_37_9();
  v10 = *(v9 + 168);
  v15 = (v10 + *v10);
  v11 = v10[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_100();
  *(v4 + 16) = v12;
  *v12 = v13;
  v12[1] = sub_1AC5C4D48;

  return v15(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CustomLanguageModelEvaluator.evaluate(testSet:)()
{
  OUTLINED_FUNCTION_72();
  v2 = v1;
  OUTLINED_FUNCTION_37_9();
  v4 = *(v3 + 184);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 16) = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_85_0(v6);

  return v8(v2);
}

uint64_t sub_1AC705FC8()
{
  OUTLINED_FUNCTION_85();
  v2 = v1;
  OUTLINED_FUNCTION_50();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_18();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t destroy for CustomLanguageModelEvaluator.AudioSampleEvaluationResult(uint64_t a1)
{
  v2 = *(a1 + 16);

  v3 = *(a1 + 40);
}

uint64_t initializeWithCopy for CustomLanguageModelEvaluator.AudioSampleEvaluationResult(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

void *assignWithCopy for CustomLanguageModelEvaluator.AudioSampleEvaluationResult(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v4 = a1[2];
  a1[2] = a2[2];

  a1[3] = a2[3];
  a1[4] = a2[4];
  v5 = a2[5];
  v6 = a1[5];
  a1[5] = v5;

  return a1;
}

void *assignWithTake for CustomLanguageModelEvaluator.AudioSampleEvaluationResult(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a2[2];
  v5 = a1[2];
  a1[1] = a2[1];
  a1[2] = v4;

  a1[3] = a2[3];
  v6 = a2[5];
  v7 = a1[5];
  a1[4] = a2[4];
  a1[5] = v6;

  return a1;
}

uint64_t getEnumTagSinglePayload for CustomLanguageModelEvaluator.AudioSampleEvaluationResult(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CustomLanguageModelEvaluator.AudioSampleEvaluationResult(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for SFCustomLanguageModelData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

_BYTE *sub_1AC7063D0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1AC7064B0()
{
  result = qword_1EB56D838;
  if (!qword_1EB56D838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D838);
  }

  return result;
}

unint64_t sub_1AC706508()
{
  result = qword_1EB56D840;
  if (!qword_1EB56D840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D840);
  }

  return result;
}

unint64_t sub_1AC706560()
{
  result = qword_1EB56D848;
  if (!qword_1EB56D848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D848);
  }

  return result;
}

unint64_t sub_1AC7065B8()
{
  result = qword_1EB56D850;
  if (!qword_1EB56D850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D850);
  }

  return result;
}

unint64_t sub_1AC706610()
{
  result = qword_1EB56D858;
  if (!qword_1EB56D858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D858);
  }

  return result;
}

unint64_t sub_1AC706668()
{
  result = qword_1EB56D860;
  if (!qword_1EB56D860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D860);
  }

  return result;
}

unint64_t sub_1AC7066C0()
{
  result = qword_1EB56D868;
  if (!qword_1EB56D868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D868);
  }

  return result;
}

unint64_t sub_1AC706718()
{
  result = qword_1EB56D870;
  if (!qword_1EB56D870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D870);
  }

  return result;
}

unint64_t sub_1AC706770()
{
  result = qword_1EB56D878;
  if (!qword_1EB56D878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D878);
  }

  return result;
}

unint64_t sub_1AC7067C8()
{
  result = qword_1EB56D880;
  if (!qword_1EB56D880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D880);
  }

  return result;
}

unint64_t sub_1AC706820()
{
  result = qword_1EB56D888;
  if (!qword_1EB56D888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D888);
  }

  return result;
}

unint64_t sub_1AC706878()
{
  result = qword_1EB56D890;
  if (!qword_1EB56D890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D890);
  }

  return result;
}

unint64_t sub_1AC7068D0()
{
  result = qword_1EB56D898;
  if (!qword_1EB56D898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D898);
  }

  return result;
}

unint64_t sub_1AC706928()
{
  result = qword_1EB56D8A0;
  if (!qword_1EB56D8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D8A0);
  }

  return result;
}

uint64_t sub_1AC70697C()
{
  OUTLINED_FUNCTION_60_5();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE30, &unk_1AC7A8230);
  OUTLINED_FUNCTION_167(v0);
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_84_2();
  v3 = OUTLINED_FUNCTION_79_5();
  return sub_1AC7028C4(v3, v4, v5, v6, v7, v8, v9, v10, v12);
}

void sub_1AC7069FC()
{
  OUTLINED_FUNCTION_60_5();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE30, &unk_1AC7A8230);
  OUTLINED_FUNCTION_22(v1);
  v4 = (*(v3 + 64) + ((*(v2 + 80) + 56) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  OUTLINED_FUNCTION_84_2();
  v6 = *(v0 + v5);
  v18 = *(v0 + v7);
  v19 = *(v0 + v7 + 8);
  v8 = OUTLINED_FUNCTION_79_5();
  sub_1AC702BF0(v8, v9, v10, v11, v16, v12, v13, v14, v15, v17, v18, v19);
}

uint64_t block_copy_helper_136(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1AC706AD8(uint64_t a1@<X8>)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1AC704568(v3);
    v3 = v9;
  }

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v4 - 1;
    v6 = type metadata accessor for TranscriptionSegment();
    v7 = v3 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80));
    v8 = *(*(v6 - 8) + 72);
    sub_1AC706CAC();
    *(v3 + 16) = v5;
    *v1 = v3;

    __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AC706BE0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D8C0, &qword_1AC7B0968);
  OUTLINED_FUNCTION_167(v0);
  v2 = *(v1 + 80);

  return sub_1AC703928();
}

unint64_t sub_1AC706C58()
{
  result = qword_1EB56D8D0;
  if (!qword_1EB56D8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D8D0);
  }

  return result;
}

uint64_t sub_1AC706CAC()
{
  OUTLINED_FUNCTION_50_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_39();
  v6(v5);
  return v0;
}

unint64_t OUTLINED_FUNCTION_4_12(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_32_11@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = v2;
  a2[4] = v3;
  *a2 = a1;
}

uint64_t OUTLINED_FUNCTION_39_8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  return result;
}

uint64_t OUTLINED_FUNCTION_40_8(uint64_t a1)
{

  return MEMORY[0x1EEE6B610](a1, 32, 0xE100000000000000, 10, 0xE100000000000000);
}

uint64_t OUTLINED_FUNCTION_59_6@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v2 + a1 + 8);
  v5 = (v1 + a1);
  v6 = *v5;
  v7 = v5[1];
  return result;
}

void OUTLINED_FUNCTION_62_6(uint64_t a1@<X8>)
{
  v1[2] = a1;
  v1[4] = 68;
  v1[5] = 0xE100000000000000;
}

void OUTLINED_FUNCTION_66_7()
{
  *(v0 - 112) = 45;
  *(v0 - 104) = 0xE100000000000000;
  *(v0 - 128) = 95;
  *(v0 - 120) = 0xE100000000000000;
}

uint64_t OUTLINED_FUNCTION_89_5()
{

  return sub_1AC7A0C48();
}

uint64_t OUTLINED_FUNCTION_91_4()
{
  v2 = *(v0 + 16);

  return swift_isUniquelyReferenced_nonNull_native();
}

void *sub_1AC706F04()
{
  sub_1AC79FD28();
  result = sub_1AC79FE38();
  off_1EB56B100 = result;
  return result;
}

_DWORD *sub_1AC706F48()
{
  _s6Speech5_LockCMa_0();
  v0 = swift_allocObject();
  result = swift_slowAlloc();
  *(v0 + 16) = result;
  *result = 0;
  off_1EB56B0E8 = v0;
  return result;
}

uint64_t sub_1AC706F98()
{
  v1 = sub_1AC79FDE8();
  v2 = OUTLINED_FUNCTION_40(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6();
  v9 = v8 - v7;
  v10 = sub_1AC79FD58();
  v11 = OUTLINED_FUNCTION_40(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6();
  v18 = v17 - v16;
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v19 = __swift_project_value_buffer(v1, qword_1ED9386C8);
  (*(v4 + 16))(v9, v19, v1);
  sub_1AC79FD38();
  (*(v13 + 32))(v0 + OBJC_IVAR____TtC6Speech14SignpostHelper_signposter, v18, v10);
  return v0;
}

uint64_t sub_1AC707118(unint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v58 = a6;
  v59 = a4;
  v62 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D8D8, &qword_1AC7B09B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v57 - v10;
  v12 = sub_1AC79FD28();
  v13 = OUTLINED_FUNCTION_40(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v60 = v18 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v57 - v21;
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v23 = sub_1AC79FDE8();
  __swift_project_value_buffer(v23, qword_1ED9386C8);
  v24 = sub_1AC79FDC8();
  v25 = sub_1AC7A05E8();
  v26 = os_log_type_enabled(v24, v25);
  v63 = a1;
  v61 = a3;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v57 = v22;
    v28 = v27;
    v29 = OUTLINED_FUNCTION_48();
    v64[0] = v29;
    *v28 = 136315138;
    v30 = sub_1AC7A09E8();
    v32 = sub_1AC5CFE74(v30, v31, v64);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_1AC5BC000, v24, v25, "Logging signpost begin event: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    OUTLINED_FUNCTION_70();
    v22 = v57;
    OUTLINED_FUNCTION_70();
  }

  v33 = sub_1AC7A09E8();
  v35 = v34;
  sub_1AC79FD48();
  v36 = sub_1AC79FD08();
  if (qword_1EB56B0E0 != -1)
  {
    v36 = OUTLINED_FUNCTION_4_13();
  }

  MEMORY[0x1EEE9AC00](v36);
  *(&v57 - 4) = v22;
  *(&v57 - 3) = v33;
  *(&v57 - 2) = v35;
  sub_1AC6ED760(sub_1AC70875C);
  sub_1AC708684(v11);
  sub_1AC7085C0();
  sub_1AC707784();
  sub_1AC5C3958(v37);
  v38 = v62;

  v39 = sub_1AC79FD48();
  v40 = sub_1AC7A0648();
  if ((sub_1AC7A0788() & 1) == 0)
  {
    goto LABEL_11;
  }

  if (v61)
  {
    v42 = v63;
    v43 = HIDWORD(v63);
    if (HIDWORD(v63))
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_8_11();
      if (v44)
      {
        __break(1u);
        goto LABEL_25;
      }

      v43 = v42 >> 16;
      if (v42 >> 16 <= 0x10)
      {
        if (v42 <= 0x7F)
        {
          v45 = v42 + 1;
LABEL_17:
          OUTLINED_FUNCTION_2_19(v45);

          v41 = v64;
          goto LABEL_18;
        }

        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_22:
    if (v42 < 0x800)
    {
      v45 = (v42 >> 6) + ((v42 & 0x3F) << 8) + 33217;
      goto LABEL_17;
    }

LABEL_25:
    if (v43)
    {
      OUTLINED_FUNCTION_5_14();
      v45 = v55 + v56;
    }

    else
    {
      OUTLINED_FUNCTION_11_16();
    }

    v38 = v62;
    goto LABEL_17;
  }

  v41 = v63;
  if (v63)
  {
LABEL_18:
    v46 = swift_slowAlloc();
    v47 = OUTLINED_FUNCTION_48();
    v64[0] = v47;
    *v46 = 134349314;
    OUTLINED_FUNCTION_10_18(v58);
    *(v46 + 14) = sub_1AC5CFE74(v48, v38, v49);
    v50 = sub_1AC79FD18();
    _os_signpost_emit_with_name_impl(&dword_1AC5BC000, v39, v40, v50, v41, "%{signpost.description:begin_time,public}llu %s", v46, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v47);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_70();

    goto LABEL_19;
  }

  __break(1u);
LABEL_11:

LABEL_19:
  (*(v15 + 16))(v60, v22, v12);
  v51 = sub_1AC79FDA8();
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  swift_allocObject();
  sub_1AC79FD98();

  return (*(v15 + 8))(v22, v12);
}

uint64_t sub_1AC707630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1AC79FD28();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB56B0F8 != -1)
  {
    swift_once();
  }

  (*(v9 + 16))(v12, a1, v8);
  swift_beginAccess();
  sub_1AC70877C(v12, a2, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC7077F4(const char *a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v81 = a6;
  v82 = a4;
  v9 = sub_1AC79FD68();
  v10 = OUTLINED_FUNCTION_40(v9);
  v79 = v11;
  v80 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6();
  v78 = v15 - v14;
  v16 = sub_1AC79FD28();
  v17 = OUTLINED_FUNCTION_40(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v86 = v22 - v23;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v84 = &v77 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v77 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D8D8, &qword_1AC7B09B0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  OUTLINED_FUNCTION_5();
  v33 = v31 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v89 = &v77 - v35;
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v36 = sub_1AC79FDE8();
  __swift_project_value_buffer(v36, qword_1ED9386C8);
  v37 = sub_1AC79FDC8();
  v38 = sub_1AC7A05E8();
  v39 = os_log_type_enabled(v37, v38);
  v85 = a5;
  v87 = a1;
  v88 = a3;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v41 = OUTLINED_FUNCTION_48();
    v83 = v28;
    v42 = v16;
    v43 = v41;
    v90[0] = v41;
    *v40 = 136315138;
    v44 = sub_1AC7A09E8();
    v46 = sub_1AC5CFE74(v44, v45, v90);

    *(v40 + 4) = v46;
    _os_log_impl(&dword_1AC5BC000, v37, v38, "Logging signpost end event: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    v16 = v42;
    v28 = v83;
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_70();
  }

  sub_1AC7A09E8();
  v47 = v89;
  __swift_storeEnumTagSinglePayload(v89, 1, 1, v16);
  if (qword_1EB56B0E0 != -1)
  {
    OUTLINED_FUNCTION_4_13();
  }

  v48 = *(off_1EB56B0E8 + 2);

  os_unfair_lock_lock(v48);
  sub_1AC707EE4(v47);
  os_unfair_lock_unlock(v48);

  sub_1AC708614(v47, v33);
  if (__swift_getEnumTagSinglePayload(v33, 1, v16) != 1)
  {
    (*(v19 + 32))(v28, v33, v16);
    (*(v19 + 16))(v84, v28, v16);
    v49 = sub_1AC79FDA8();
    v50 = *(v49 + 48);
    v51 = *(v49 + 52);
    swift_allocObject();
    sub_1AC79FD98();
    sub_1AC7085C0();
    sub_1AC707784();
    sub_1AC5C3958(v52);

    v53 = v28;
    v54 = sub_1AC79FD48();
    sub_1AC79FD88();
    v55 = sub_1AC7A0638();
    if ((sub_1AC7A0788() & 1) == 0)
    {
LABEL_13:

      v56 = *(v19 + 8);
      v56(v86, v16);
      v56(v53, v16);
LABEL_24:
      v47 = v89;
      return sub_1AC708684(v47);
    }

    v83 = v53;
    if ((v88 & 1) == 0)
    {

      if (!v87)
      {
        __break(1u);
        goto LABEL_13;
      }

LABEL_20:
      v61 = v19;

      v62 = v78;
      sub_1AC79FDB8();

      v64 = v79;
      v63 = v80;
      if ((*(v79 + 88))(v62, v80) == *MEMORY[0x1E69E93E8])
      {
        v65 = 0;
        v66 = "[Error] Interval already ended";
      }

      else
      {
        (*(v64 + 8))(v62, v63);
        v66 = "%{signpost.description:end_time,public}llu %s";
        v65 = 2;
      }

      v67 = swift_slowAlloc();
      v68 = OUTLINED_FUNCTION_48();
      v90[0] = v68;
      *v67 = v65;
      *(v67 + 1) = v65;
      *(v67 + 2) = 2050;
      OUTLINED_FUNCTION_10_18(v81);
      *(v67 + 14) = sub_1AC5CFE74(v69, v85, v70);
      v71 = v86;
      v72 = sub_1AC79FD18();
      _os_signpost_emit_with_name_impl(&dword_1AC5BC000, v54, v55, v72, v87, v66, v67, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v68);
      OUTLINED_FUNCTION_70();
      OUTLINED_FUNCTION_70();

      v73 = *(v61 + 8);
      v73(v71, v16);
      v73(v83, v16);
      goto LABEL_24;
    }

    v57 = v87;
    v58 = HIDWORD(v87);
    if (HIDWORD(v87))
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_8_11();
      if (v59)
      {
        __break(1u);
        goto LABEL_32;
      }

      v58 = v57 >> 16;
      if (v57 >> 16 <= 0x10)
      {
        if (v57 <= 0x7F)
        {
          v60 = v57 + 1;
LABEL_19:
          OUTLINED_FUNCTION_2_19(v60);

          v87 = v90;
          goto LABEL_20;
        }

LABEL_28:
        if (v57 < 0x800)
        {
          v75 = (v57 >> 6) + ((v57 & 0x3F) << 8);
          v76 = 33217;
LABEL_30:
          v60 = v75 + v76;
          goto LABEL_19;
        }

LABEL_32:
        if (!v58)
        {
          OUTLINED_FUNCTION_11_16();
          goto LABEL_19;
        }

        OUTLINED_FUNCTION_5_14();
        goto LABEL_30;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  sub_1AC708684(v33);
  return sub_1AC708684(v47);
}

uint64_t sub_1AC707EE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D8D8, &qword_1AC7B09B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v16 - v4;
  if (qword_1EB56B0F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = off_1EB56B100;
  if (*(off_1EB56B100 + 2) && (v7 = sub_1AC6E0808(), (v8 & 1) != 0))
  {
    v9 = v7;
    v10 = v6[7];
    v11 = sub_1AC79FD28();
    (*(*(v11 - 8) + 16))(v5, v10 + *(*(v11 - 8) + 72) * v9, v11);
    v12 = v5;
    v13 = 0;
    v14 = v11;
  }

  else
  {
    v14 = sub_1AC79FD28();
    v12 = v5;
    v13 = 1;
  }

  __swift_storeEnumTagSinglePayload(v12, v13, 1, v14);
  swift_endAccess();
  return sub_1AC7086EC(v5, a1);
}

void sub_1AC708070(const char *a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = sub_1AC79FD28();
  v9 = OUTLINED_FUNCTION_40(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6();
  v16 = v15 - v14;
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v17 = sub_1AC79FDE8();
  __swift_project_value_buffer(v17, qword_1ED9386C8);
  v18 = sub_1AC79FDC8();
  v19 = sub_1AC7A05E8();
  v40 = a3;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = OUTLINED_FUNCTION_48();
    v42 = v21;
    *v20 = 136315138;
    v22 = sub_1AC7A09E8();
    v24 = v16;
    v25 = v11;
    v26 = a5;
    v27 = v8;
    v28 = sub_1AC5CFE74(v22, v23, &v42);

    *(v20 + 4) = v28;
    v8 = v27;
    a5 = v26;
    v11 = v25;
    v16 = v24;
    _os_log_impl(&dword_1AC5BC000, v18, v19, "Logging signpost event: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_70();
  }

  sub_1AC79FD48();
  sub_1AC79FD08();
  sub_1AC7085C0();
  sub_1AC707784();
  sub_1AC5C3958(v29);

  v30 = sub_1AC79FD48();
  v31 = sub_1AC7A0658();
  if ((sub_1AC7A0788() & 1) == 0)
  {
    goto LABEL_9;
  }

  if ((v40 & 1) == 0)
  {

    v32 = a1;
    if (!a1)
    {
      __break(1u);
LABEL_9:

LABEL_15:
      (*(v11 + 8))(v16, v8);
      return;
    }

LABEL_14:
    v35 = swift_slowAlloc();
    v36 = OUTLINED_FUNCTION_48();
    v42 = v36;
    *v35 = 134349314;
    *(v35 + 4) = a6;
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_1AC5CFE74(a4, a5, &v42);
    v37 = sub_1AC79FD18();
    _os_signpost_emit_with_name_impl(&dword_1AC5BC000, v30, v31, v37, v32, "%{signpost.description:event_time,public}llu %s", v35, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v36);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_70();

    goto LABEL_15;
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_8_11();
  if (!v34)
  {
    if (v33 >> 16 <= 0x10)
    {

      v32 = &v42;
      goto LABEL_14;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
}

uint64_t SignpostHelper.deinit()
{
  v1 = OBJC_IVAR____TtC6Speech14SignpostHelper_signposter;
  v2 = sub_1AC79FD58();
  OUTLINED_FUNCTION_22_0(v2);
  (*(v3 + 8))(v0 + v1);
  return v0;
}

uint64_t SignpostHelper.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC6Speech14SignpostHelper_signposter;
  v2 = sub_1AC79FD58();
  OUTLINED_FUNCTION_22_0(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v4, v5);
}

uint64_t type metadata accessor for SignpostHelper()
{
  result = qword_1EB56B0C8;
  if (!qword_1EB56B0C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AC7084F4()
{
  result = sub_1AC79FD58();
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

unint64_t sub_1AC7085C0()
{
  result = qword_1EB56AA60;
  if (!qword_1EB56AA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56AA60);
  }

  return result;
}

uint64_t sub_1AC708614(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D8D8, &qword_1AC7B09B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AC708684(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D8D8, &qword_1AC7B09B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AC7086EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D8D8, &qword_1AC7B09B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AC70877C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *v4;
  swift_isUniquelyReferenced_nonNull_native();
  v23 = *v4;
  v10 = sub_1AC6E0808();
  if (__OFADD__(*(v23 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D8E0, &qword_1AC7B09B8);
  if (sub_1AC7A0B18())
  {
    v14 = sub_1AC6E0808();
    if ((v13 & 1) == (v15 & 1))
    {
      v12 = v14;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1AC7A0DC8();
    __break(1u);
    return result;
  }

LABEL_5:
  if (v13)
  {
    v16 = *(v23 + 56);
    v17 = sub_1AC79FD28();
    v18 = *(v17 - 8);
    v19 = *(v18 + 32);
    v20 = *(v18 + 72) * v12;
    v19(a4, v16 + v20, v17);
    v19(*(v23 + 56) + v20, a1, v17);
    result = __swift_storeEnumTagSinglePayload(a4, 0, 1, v17);
  }

  else
  {
    sub_1AC7044D4(v12, a2, a3, a1, v23);
    v22 = sub_1AC79FD28();
    __swift_storeEnumTagSinglePayload(a4, 1, 1, v22);
  }

  *v4 = v23;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_13()
{

  return swift_once();
}

void Locale.languageRegionLocale.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_104();
  a19 = v21;
  a20 = v22;
  v360 = v23;
  v24 = sub_1AC79FAA8();
  v25 = OUTLINED_FUNCTION_167(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_6();
  v354[1] = v29 - v28;
  v348 = sub_1AC79FA48();
  v30 = OUTLINED_FUNCTION_40(v348);
  v329 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_6();
  v327 = v35 - v34;
  v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D8E8, &qword_1AC7B09C0);
  v36 = OUTLINED_FUNCTION_80(v334);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_91();
  v330 = v40;
  v362 = sub_1AC79F9C8();
  v41 = OUTLINED_FUNCTION_40(v362);
  v351 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_6();
  v344 = v46 - v45;
  v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D8F0, &qword_1AC7B09C8);
  v47 = OUTLINED_FUNCTION_80(v359);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_26_0();
  v346 = v53;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_91();
  v341 = v56;
  v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D8F8, &unk_1AC7B09D0);
  OUTLINED_FUNCTION_80(v340);
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v59);
  v363 = &v323 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C060, &unk_1AC7A8760);
  v62 = OUTLINED_FUNCTION_167(v61);
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_2_4();
  v354[0] = v65;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_26_0();
  v347 = v68;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_91();
  v350 = v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C068, &unk_1AC7B09E0);
  v74 = OUTLINED_FUNCTION_167(v73);
  v76 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_2_4();
  v353 = v77;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_91();
  v356 = v79;
  v361 = sub_1AC79FA78();
  v80 = OUTLINED_FUNCTION_40(v361);
  v355 = v81;
  v83 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_2_4();
  v357 = v84;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_91();
  v358 = v86;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C070, &qword_1AC7A8770);
  v88 = OUTLINED_FUNCTION_167(v87);
  v90 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_26_0();
  v352 = v99;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_26_0();
  v345 = v102;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_26_0();
  v349 = v106;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v107);
  v109 = &v323 - v108;
  v110 = sub_1AC79FAF8();
  v111 = OUTLINED_FUNCTION_40(v110);
  v113 = v112;
  v115 = *(v114 + 64);
  v116 = MEMORY[0x1EEE9AC00](v111);
  v118 = &v323 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = MEMORY[0x1EEE9AC00](v116);
  v121 = &v323 - v120;
  v122 = MEMORY[0x1EEE9AC00](v119);
  v124 = &v323 - v123;
  MEMORY[0x1EEE9AC00](v122);
  v126 = &v323 - v125;
  v127 = v20;
  sub_1AC79FB08();
  sub_1AC79FAC8();
  v128 = *(v113 + 8);
  v128(v126, v110);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v109, 1, v362);
  sub_1AC5C720C(v109, &qword_1EB56C070, &qword_1AC7A8770);
  if (EnumTagSinglePayload == 1)
  {
    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v130 = sub_1AC79FDE8();
    __swift_project_value_buffer(v130, qword_1ED9386C8);
    v131 = sub_1AC79FDC8();
    v132 = sub_1AC7A05F8();
    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      *v133 = 0;
      _os_log_impl(&dword_1AC5BC000, v131, v132, "Locales must specify a language in order to be used by the Speech framework", v133, 2u);
      MEMORY[0x1B26EAB10](v133, -1, -1);
    }

    v134 = sub_1AC79FB18();
    v135 = v360;
    v136 = 1;
    goto LABEL_12;
  }

  v137 = v127;
  sub_1AC79FB08();
  v138 = v356;
  sub_1AC79FAE8();
  v128(v124, v110);
  v139 = v361;
  OUTLINED_FUNCTION_96(v138, 1, v361);
  if (v172)
  {
    sub_1AC5C720C(v138, &qword_1EB56C068, &unk_1AC7B09E0);
  }

  else
  {
    v324 = v137;
    v141 = v355;
    v142 = v358;
    (*(v355 + 32))(v358, v138, v139);
    v143 = v357;
    OUTLINED_FUNCTION_34_9();
    v144 = MEMORY[0x1B26E8620](v142, v143);
    v147 = *(v141 + 8);
    v146 = v141 + 8;
    v145 = v147;
    v147(v143, v139);
    if (v144 & 1) != 0 || (OUTLINED_FUNCTION_25_12(), v148 = MEMORY[0x1B26E8620](v358, v143), v145(v143, v139), (v148))
    {
      v356 = v146;
      v325 = v145;
      sub_1AC79FB08();
      v149 = v349;
      sub_1AC79FAC8();
      v128(v121, v110);
      sub_1AC79FB08();
      v150 = v350;
      sub_1AC79FAD8();
      v128(v121, v110);
      OUTLINED_FUNCTION_28_12();
      v152 = *(v151 + 48);
      v153 = *(v151 + 64);
      v154 = v363;
      OUTLINED_FUNCTION_26_12(v149, v363);
      v155 = *(v355 + 16);
      v355 = v152;
      v155(v154 + v152, v358, v139);
      v340 = v153;
      sub_1AC5D1E4C(v150, v154 + v153, &qword_1EB56C060, &unk_1AC7A8760);
      v156 = v339;
      OUTLINED_FUNCTION_24_14();
      sub_1AC79F9B8();
      OUTLINED_FUNCTION_150_1();
      v157 = v362;
      __swift_storeEnumTagSinglePayload(v158, v159, v160, v362);
      v161 = *(v359 + 48);
      v162 = v341;
      OUTLINED_FUNCTION_26_12(v156, v341);
      OUTLINED_FUNCTION_26_12(v154, v161 + v162);
      OUTLINED_FUNCTION_65_4(v162);
      if (v172)
      {
        sub_1AC5C720C(v156, &qword_1EB56C070, &qword_1AC7A8770);
        OUTLINED_FUNCTION_65_4(v161 + v162);
        v163 = v347;
        v164 = v343;
        v165 = v345;
        v166 = v342;
        if (v172)
        {
          sub_1AC5C720C(v162, &qword_1EB56C070, &qword_1AC7A8770);
          v167 = v346;
LABEL_28:
          OUTLINED_FUNCTION_25_12();
          OUTLINED_FUNCTION_0_15();
          sub_1AC70A81C(v180, v181);
          OUTLINED_FUNCTION_6_11();
          v182 = OUTLINED_FUNCTION_33_9();
          OUTLINED_FUNCTION_5_15();
          v183();
          if ((v182 & 1) == 0)
          {
            goto LABEL_39;
          }

          sub_1AC79FA38();
          OUTLINED_FUNCTION_150_1();
          v184 = v348;
          __swift_storeEnumTagSinglePayload(v185, v186, v187, v348);
          v161 = *(v334 + 48);
          OUTLINED_FUNCTION_38_10(&v355);
          sub_1AC5D1E4C(v188, v189, &qword_1EB56C060, &unk_1AC7A8760);
          OUTLINED_FUNCTION_28_12();
          sub_1AC5D1E4C(v363 + v190, v161 + v182, &qword_1EB56C060, &unk_1AC7A8760);
          OUTLINED_FUNCTION_96(v182, 1, v184);
          if (v172)
          {
            sub_1AC5C720C(v166, &qword_1EB56C060, &unk_1AC7A8760);
            OUTLINED_FUNCTION_96(v161 + v182, 1, v348);
            if (v172)
            {
LABEL_55:
              sub_1AC5C720C(v182, &qword_1EB56C060, &unk_1AC7A8760);
LABEL_56:
              OUTLINED_FUNCTION_28_12();
              v222 = v363;
              sub_1AC5C720C(v363 + v223, v224, &unk_1AC7A8760);
              v225 = v361;
              v226 = v325;
              v325(v222 + v355, v361);
              sub_1AC5C720C(v222, &qword_1EB56C070, &qword_1AC7A8770);
              OUTLINED_FUNCTION_24_14();
              sub_1AC79F9B8();
              OUTLINED_FUNCTION_150_1();
              __swift_storeEnumTagSinglePayload(v227, v228, v229, v157);
              __swift_storeEnumTagSinglePayload(v353, 1, 1, v225);
              sub_1AC79FA38();
              OUTLINED_FUNCTION_150_1();
              __swift_storeEnumTagSinglePayload(v230, v231, v232, v348);
              sub_1AC79FA98();
              v233 = v360;
              sub_1AC79F9E8();
              sub_1AC5C720C(v350, &qword_1EB56C060, &unk_1AC7A8760);
              OUTLINED_FUNCTION_32_12();
              v226(v358, v225);
              v134 = sub_1AC79FB18();
              v135 = v233;
              goto LABEL_11;
            }
          }

          else
          {
            v191 = v328;
            sub_1AC5D1E4C(v182, v328, &qword_1EB56C060, &unk_1AC7A8760);
            OUTLINED_FUNCTION_96(v161 + v182, 1, v348);
            if (!v192)
            {
              v193 = v329;
              v194 = v161 + v182;
              v195 = v327;
              v196 = v348;
              (*(v329 + 32))(v327, v194, v348);
              OUTLINED_FUNCTION_18_11();
              sub_1AC70A81C(v197, v198);
              LODWORD(v342) = sub_1AC79FED8();
              v199 = *(v193 + 8);
              v199(v195, v196);
              v161 = &unk_1AC7A8760;
              OUTLINED_FUNCTION_29_15(v166);
              v199(v191, v196);
              v164 = v343;
              v163 = v347;
              OUTLINED_FUNCTION_29_15(v182);
              v165 = v345;
              v167 = v346;
              if (v342)
              {
                goto LABEL_56;
              }

LABEL_39:
              OUTLINED_FUNCTION_24_14();
              sub_1AC79F9B8();
              OUTLINED_FUNCTION_9_16(v165);
              OUTLINED_FUNCTION_26_12(v165, v164);
              OUTLINED_FUNCTION_26_12(v363, v161 + v164);
              OUTLINED_FUNCTION_65_4(v164);
              if (v172)
              {
                sub_1AC5C720C(v165, &qword_1EB56C070, &qword_1AC7A8770);
                OUTLINED_FUNCTION_65_4(v161 + v164);
                if (v172)
                {
                  sub_1AC5C720C(v164, &qword_1EB56C070, &qword_1AC7A8770);
LABEL_49:
                  OUTLINED_FUNCTION_25_12();
                  OUTLINED_FUNCTION_0_15();
                  sub_1AC70A81C(v214, v215);
                  OUTLINED_FUNCTION_6_11();
                  v216 = OUTLINED_FUNCTION_33_9();
                  OUTLINED_FUNCTION_5_15();
                  v217();
                  if ((v216 & 1) == 0)
                  {
                    goto LABEL_61;
                  }

                  v165 = v167;
                  sub_1AC79FA38();
                  OUTLINED_FUNCTION_150_1();
                  v164 = v348;
                  __swift_storeEnumTagSinglePayload(v218, v219, v220, v348);
                  v161 = *(v334 + 48);
                  OUTLINED_FUNCTION_19_10(v163, v354);
                  OUTLINED_FUNCTION_28_12();
                  OUTLINED_FUNCTION_26_12(v363 + v221, v161 + v163);
                  OUTLINED_FUNCTION_96(v163, 1, v164);
                  if (!v172)
                  {
                    v234 = v326;
                    sub_1AC5D1E4C(v163, v326, &qword_1EB56C060, &unk_1AC7A8760);
                    OUTLINED_FUNCTION_96(v161 + v163, 1, v348);
                    if (!v235)
                    {
                      v316 = v329;
                      v317 = v161 + v163;
                      v318 = v327;
                      v319 = v348;
                      (*(v329 + 32))(v327, v317, v348);
                      OUTLINED_FUNCTION_18_11();
                      sub_1AC70A81C(v320, v321);
                      v322 = v163;
                      v164 = sub_1AC79FED8();
                      v163 = *(v316 + 8);
                      v163(v318, v319);
                      v161 = &unk_1AC7A8760;
                      OUTLINED_FUNCTION_29_15(v347);
                      v163(v234, v319);
                      OUTLINED_FUNCTION_29_15(v322);
                      v167 = v165;
                      if ((v164 & 1) == 0)
                      {
                        goto LABEL_61;
                      }

                      goto LABEL_56;
                    }

                    sub_1AC5C720C(v347, &qword_1EB56C060, &unk_1AC7A8760);
                    (*(v329 + 8))(v234, v348);
LABEL_60:
                    sub_1AC5C720C(v163, &qword_1EB56D8E8, &qword_1AC7B09C0);
                    goto LABEL_61;
                  }

                  sub_1AC5C720C(v163, &qword_1EB56C060, &unk_1AC7A8760);
                  OUTLINED_FUNCTION_96(v161 + v163, 1, v348);
                  if (!v172)
                  {
                    goto LABEL_60;
                  }

                  v182 = v163;
                  goto LABEL_55;
                }
              }

              else
              {
                OUTLINED_FUNCTION_38_10(&v362);
                sub_1AC5D1E4C(v200, v201, v202, v203);
                OUTLINED_FUNCTION_65_4(v161 + v164);
                if (!v204)
                {
                  OUTLINED_FUNCTION_15_10();
                  v207 = OUTLINED_FUNCTION_12_12();
                  v208(v207);
                  OUTLINED_FUNCTION_1_18();
                  sub_1AC70A81C(v209, v210);
                  v211 = OUTLINED_FUNCTION_20_13();
                  v212 = OUTLINED_FUNCTION_14_12();
                  (v164)(v212);
                  v161 = &qword_1AC7A8770;
                  OUTLINED_FUNCTION_29_15(v165);
                  v213 = OUTLINED_FUNCTION_77();
                  (v164)(v213);
                  v163 = v347;
                  OUTLINED_FUNCTION_29_15(v164);
                  if ((v211 & 1) == 0)
                  {
LABEL_61:
                    v236 = v337;
                    OUTLINED_FUNCTION_24_14();
                    sub_1AC79F9B8();
                    OUTLINED_FUNCTION_9_16(v236);
                    OUTLINED_FUNCTION_26_12(v236, v167);
                    OUTLINED_FUNCTION_26_12(v363, v161 + v167);
                    OUTLINED_FUNCTION_65_4(v167);
                    if (v172)
                    {
                      sub_1AC5C720C(v236, &qword_1EB56C070, &qword_1AC7A8770);
                      OUTLINED_FUNCTION_65_4(v161 + v167);
                      if (v172)
                      {
                        sub_1AC5C720C(v167, &qword_1EB56C070, &qword_1AC7A8770);
LABEL_71:
                        OUTLINED_FUNCTION_34_9();
                        OUTLINED_FUNCTION_0_15();
                        sub_1AC70A81C(v251, v252);
                        OUTLINED_FUNCTION_6_11();
                        v253 = OUTLINED_FUNCTION_33_9();
                        OUTLINED_FUNCTION_5_15();
                        v254();
                        if (v253)
                        {
                          OUTLINED_FUNCTION_23_13();
LABEL_96:
                          sub_1AC79F9B8();
                          OUTLINED_FUNCTION_8_12();
LABEL_109:
                          sub_1AC79FA38();
                          OUTLINED_FUNCTION_150_1();
                          __swift_storeEnumTagSinglePayload(v300, v301, v302, v348);
                          sub_1AC79FA98();
                          sub_1AC79F9E8();
                          OUTLINED_FUNCTION_44_6(v350);
                          OUTLINED_FUNCTION_32_12();
                          v303 = v325;
                          v325(v358, v165);
                          sub_1AC79FB18();
                          OUTLINED_FUNCTION_150_1();
                          __swift_storeEnumTagSinglePayload(v304, v305, v306, v307);
                          OUTLINED_FUNCTION_28_12();
                          v308 = v363;
                          OUTLINED_FUNCTION_44_6(v363 + v309);
                          v303(v308 + v355, v165);
                          v310 = v308;
LABEL_111:
                          sub_1AC5C720C(v310, &qword_1EB56C070, &qword_1AC7A8770);
                          goto LABEL_13;
                        }

LABEL_73:
                        v255 = v335;
                        OUTLINED_FUNCTION_24_14();
                        sub_1AC79F9B8();
                        OUTLINED_FUNCTION_9_16(v255);
                        OUTLINED_FUNCTION_19_10(v255, &a10);
                        OUTLINED_FUNCTION_35_10();
                        OUTLINED_FUNCTION_65_4(v163);
                        if (v172)
                        {
                          sub_1AC5C720C(v255, &qword_1EB56C070, &qword_1AC7A8770);
                          OUTLINED_FUNCTION_65_4(&qword_1EB56C070 + v161);
                          if (v172)
                          {
                            sub_1AC5C720C(&qword_1EB56C070, &qword_1EB56C070, &qword_1AC7A8770);
LABEL_83:
                            OUTLINED_FUNCTION_25_12();
                            OUTLINED_FUNCTION_0_15();
                            sub_1AC70A81C(v265, v266);
                            OUTLINED_FUNCTION_6_11();
                            v267 = OUTLINED_FUNCTION_33_9();
                            OUTLINED_FUNCTION_5_15();
                            v268();
                            if (v267)
                            {
LABEL_108:
                              OUTLINED_FUNCTION_23_13();
                              sub_1AC79F9B8();
                              OUTLINED_FUNCTION_8_12();
                              goto LABEL_109;
                            }

LABEL_84:
                            v269 = v336;
                            OUTLINED_FUNCTION_30_9();
                            sub_1AC79F9B8();
                            OUTLINED_FUNCTION_9_16(v269);
                            OUTLINED_FUNCTION_19_10(v269, &v364);
                            OUTLINED_FUNCTION_35_10();
                            OUTLINED_FUNCTION_65_4(v163);
                            if (v172)
                            {
                              sub_1AC5C720C(v269, &qword_1EB56C070, &qword_1AC7A8770);
                              OUTLINED_FUNCTION_65_4(&qword_1EB56C070 + v161);
                              if (v172)
                              {
                                sub_1AC5C720C(&qword_1EB56C070, &qword_1EB56C070, &qword_1AC7A8770);
LABEL_94:
                                OUTLINED_FUNCTION_34_9();
                                OUTLINED_FUNCTION_0_15();
                                sub_1AC70A81C(v281, v282);
                                OUTLINED_FUNCTION_6_11();
                                v283 = OUTLINED_FUNCTION_33_9();
                                OUTLINED_FUNCTION_5_15();
                                v284();
                                if (v283)
                                {
                                  OUTLINED_FUNCTION_30_9();
                                  goto LABEL_96;
                                }

LABEL_97:
                                v285 = v338;
                                OUTLINED_FUNCTION_30_9();
                                sub_1AC79F9B8();
                                OUTLINED_FUNCTION_9_16(v285);
                                OUTLINED_FUNCTION_19_10(v285, &v361);
                                OUTLINED_FUNCTION_26_12(v363, v161 + v285);
                                OUTLINED_FUNCTION_65_4(v285);
                                if (v172)
                                {
                                  sub_1AC5C720C(v338, &qword_1EB56C070, &qword_1AC7A8770);
                                  OUTLINED_FUNCTION_65_4(v161 + v285);
                                  if (v172)
                                  {
                                    sub_1AC5C720C(v285, &qword_1EB56C070, &qword_1AC7A8770);
LABEL_107:
                                    OUTLINED_FUNCTION_25_12();
                                    OUTLINED_FUNCTION_0_15();
                                    sub_1AC70A81C(v296, v297);
                                    OUTLINED_FUNCTION_6_11();
                                    v298 = OUTLINED_FUNCTION_33_9();
                                    OUTLINED_FUNCTION_5_15();
                                    v299();
                                    if (v298)
                                    {
                                      goto LABEL_108;
                                    }

LABEL_110:
                                    OUTLINED_FUNCTION_44_6(v350);
                                    OUTLINED_FUNCTION_32_12();
                                    v311 = v361;
                                    v312 = v325;
                                    v325(v358, v361);
                                    v313 = sub_1AC79FB18();
                                    __swift_storeEnumTagSinglePayload(v360, 1, 1, v313);
                                    OUTLINED_FUNCTION_28_12();
                                    v314 = v363;
                                    OUTLINED_FUNCTION_44_6(v363 + v315);
                                    v312(v314 + v355, v311);
                                    v310 = v314;
                                    goto LABEL_111;
                                  }
                                }

                                else
                                {
                                  v286 = v331;
                                  sub_1AC5D1E4C(v285, v331, &qword_1EB56C070, &qword_1AC7A8770);
                                  OUTLINED_FUNCTION_65_4(v161 + v285);
                                  if (!v287)
                                  {
                                    v288 = v351;
                                    v289 = *(v351 + 32);
                                    v290 = OUTLINED_FUNCTION_12_12();
                                    v291(v290);
                                    OUTLINED_FUNCTION_1_18();
                                    sub_1AC70A81C(v292, v293);
                                    v294 = sub_1AC79FED8();
                                    v295 = *(v288 + 8);
                                    v165 = v288 + 8;
                                    v295(v161, v157);
                                    OUTLINED_FUNCTION_29_15(v338);
                                    v295(v286, v157);
                                    OUTLINED_FUNCTION_29_15(v285);
                                    if ((v294 & 1) == 0)
                                    {
                                      goto LABEL_110;
                                    }

                                    goto LABEL_107;
                                  }

                                  sub_1AC5C720C(v338, &qword_1EB56C070, &qword_1AC7A8770);
                                  (*(v351 + 8))(v286, v157);
                                }

                                sub_1AC5C720C(v285, &qword_1EB56D8F0, &qword_1AC7B09C8);
                                goto LABEL_110;
                              }
                            }

                            else
                            {
                              sub_1AC5D1E4C(&qword_1EB56C070, v332, &qword_1EB56C070, &qword_1AC7A8770);
                              OUTLINED_FUNCTION_65_4(&qword_1EB56C070 + v161);
                              if (!v270)
                              {
                                OUTLINED_FUNCTION_15_10();
                                v274 = OUTLINED_FUNCTION_12_12();
                                v275(v274);
                                OUTLINED_FUNCTION_1_18();
                                sub_1AC70A81C(v276, v277);
                                v278 = sub_1AC79FED8();
                                v279 = OUTLINED_FUNCTION_14_12();
                                (v164)(v279);
                                v161 = &qword_1AC7A8770;
                                sub_1AC5C720C(v336, &qword_1EB56C070, &qword_1AC7A8770);
                                v280 = OUTLINED_FUNCTION_77();
                                (v164)(v280);
                                OUTLINED_FUNCTION_42_10();
                                if ((v278 & 1) == 0)
                                {
                                  goto LABEL_97;
                                }

                                goto LABEL_94;
                              }

                              sub_1AC5C720C(v336, &qword_1EB56C070, &qword_1AC7A8770);
                              v271 = *(v351 + 8);
                              v272 = OUTLINED_FUNCTION_77();
                              v273(v272);
                            }

                            sub_1AC5C720C(&qword_1EB56C070, &qword_1EB56D8F0, &qword_1AC7B09C8);
                            goto LABEL_97;
                          }
                        }

                        else
                        {
                          v256 = v333;
                          sub_1AC5D1E4C(&qword_1EB56C070, v333, &qword_1EB56C070, &qword_1AC7A8770);
                          OUTLINED_FUNCTION_65_4(&qword_1EB56C070 + v161);
                          if (!v257)
                          {
                            OUTLINED_FUNCTION_15_10();
                            v258 = OUTLINED_FUNCTION_12_12();
                            v259(v258);
                            OUTLINED_FUNCTION_1_18();
                            sub_1AC70A81C(v260, v261);
                            v262 = v256;
                            v263 = sub_1AC79FED8();
                            v264 = OUTLINED_FUNCTION_14_12();
                            (v164)(v264);
                            v161 = &qword_1AC7A8770;
                            sub_1AC5C720C(v255, &qword_1EB56C070, &qword_1AC7A8770);
                            (v164)(v262, v157);
                            OUTLINED_FUNCTION_42_10();
                            if ((v263 & 1) == 0)
                            {
                              goto LABEL_84;
                            }

                            goto LABEL_83;
                          }

                          sub_1AC5C720C(v255, &qword_1EB56C070, &qword_1AC7A8770);
                          (*(v351 + 8))(v256, v157);
                        }

                        sub_1AC5C720C(&qword_1EB56C070, &qword_1EB56D8F0, &qword_1AC7B09C8);
                        goto LABEL_84;
                      }
                    }

                    else
                    {
                      OUTLINED_FUNCTION_38_10(&v360);
                      sub_1AC5D1E4C(v237, v238, v239, v240);
                      OUTLINED_FUNCTION_65_4(v161 + v167);
                      if (!v241)
                      {
                        OUTLINED_FUNCTION_15_10();
                        v244 = OUTLINED_FUNCTION_12_12();
                        v245(v244);
                        OUTLINED_FUNCTION_1_18();
                        sub_1AC70A81C(v246, v247);
                        v248 = OUTLINED_FUNCTION_20_13();
                        v249 = OUTLINED_FUNCTION_14_12();
                        (v164)(v249);
                        v161 = &qword_1AC7A8770;
                        OUTLINED_FUNCTION_29_15(v236);
                        v250 = OUTLINED_FUNCTION_77();
                        (v164)(v250);
                        OUTLINED_FUNCTION_29_15(v167);
                        if ((v248 & 1) == 0)
                        {
                          goto LABEL_73;
                        }

                        goto LABEL_71;
                      }

                      sub_1AC5C720C(v236, &qword_1EB56C070, &qword_1AC7A8770);
                      v242 = OUTLINED_FUNCTION_22_11();
                      v243(v242);
                    }

                    sub_1AC5C720C(v167, &qword_1EB56D8F0, &qword_1AC7B09C8);
                    goto LABEL_73;
                  }

                  goto LABEL_49;
                }

                sub_1AC5C720C(v165, &qword_1EB56C070, &qword_1AC7A8770);
                v205 = OUTLINED_FUNCTION_22_11();
                v206(v205);
              }

              sub_1AC5C720C(v164, &qword_1EB56D8F0, &qword_1AC7B09C8);
              goto LABEL_61;
            }

            sub_1AC5C720C(v166, &qword_1EB56C060, &unk_1AC7A8760);
            (*(v329 + 8))(v191, v348);
          }

          sub_1AC5C720C(v182, &qword_1EB56D8E8, &qword_1AC7B09C0);
          v165 = v345;
LABEL_25:
          v167 = v346;
          goto LABEL_39;
        }
      }

      else
      {
        OUTLINED_FUNCTION_38_10(&v363);
        sub_1AC5D1E4C(v168, v169, v170, v171);
        OUTLINED_FUNCTION_65_4(v161 + v162);
        v165 = v345;
        v166 = v342;
        if (!v172)
        {
          OUTLINED_FUNCTION_15_10();
          v175 = OUTLINED_FUNCTION_12_12();
          v176(v175);
          OUTLINED_FUNCTION_1_18();
          sub_1AC70A81C(v177, v178);
          LODWORD(v324) = OUTLINED_FUNCTION_20_13();
          v179 = OUTLINED_FUNCTION_14_12();
          v156(v179);
          v161 = &qword_1AC7A8770;
          sub_1AC5C720C(v156, &qword_1EB56C070, &qword_1AC7A8770);
          (v156)(&qword_1EB56C070, v157);
          OUTLINED_FUNCTION_29_15(v162);
          v167 = v346;
          v163 = v347;
          v164 = v343;
          if ((v324 & 1) == 0)
          {
            goto LABEL_39;
          }

          goto LABEL_28;
        }

        sub_1AC5C720C(v156, &qword_1EB56C070, &qword_1AC7A8770);
        v173 = OUTLINED_FUNCTION_22_11();
        v174(v173);
        v163 = v347;
        v164 = v343;
      }

      sub_1AC5C720C(v162, &qword_1EB56D8F0, &qword_1AC7B09C8);
      goto LABEL_25;
    }

    v145(v358, v139);
  }

  sub_1AC79FB08();
  sub_1AC79FAC8();
  v128(v121, v110);
  __swift_storeEnumTagSinglePayload(v353, 1, 1, v139);
  sub_1AC79FB08();
  sub_1AC79FAD8();
  v128(v118, v110);
  sub_1AC79FA98();
  v140 = v360;
  sub_1AC79F9E8();
  v134 = sub_1AC79FB18();
  v135 = v140;
LABEL_11:
  v136 = 0;
LABEL_12:
  __swift_storeEnumTagSinglePayload(v135, v136, 1, v134);
LABEL_13:
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC70A81C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Locale.languageRegionIdentifierWithReplacement.getter()
{
  Locale.languageRegionIdentifier.getter();
  v0 = sub_1AC79FF58();
  v1 = SFReplacementLocaleCodeForLocaleIdentifier(v0);

  if (!v1)
  {
    return OUTLINED_FUNCTION_89();
  }

  v2 = sub_1AC79FF68();

  return v2;
}

uint64_t sub_1AC70A8E0(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() systemClientId];
  v5 = sub_1AC79FF68();
  v7 = v6;

  if (v5 == a1 && v7 == a2)
  {

LABEL_17:
    v12 = 0;
    return v12 & 1;
  }

  OUTLINED_FUNCTION_89();
  v9 = sub_1AC7A0D38();

  if (v9)
  {
    goto LABEL_17;
  }

  if (a1 == 0xD000000000000015 && 0x80000001AC7B8C10 == a2)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_89();
  if (sub_1AC7A0D38())
  {
    goto LABEL_17;
  }

  if (a1 == 0xD000000000000013 && 0x80000001AC7B8C30 == a2)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_89();
  v12 = sub_1AC7A0D38() ^ 1;
  return v12 & 1;
}

uint64_t sub_1AC70A9F8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D500, &qword_1AC7A7A50);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AC7A6D00;
  v3 = MEMORY[0x1E69E65A8];
  *(v2 + 56) = MEMORY[0x1E69E6530];
  *(v2 + 64) = v3;
  *(v2 + 32) = a1;

  return sub_1AC79FF98();
}

void sub_1AC70AA78(double a1)
{
  sub_1AC70B4A0();
  v3 = v2 * a1;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v3 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_7:
    __break(1u);
  }
}

uint64_t sub_1AC70AAE0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  mach_get_times();
  result = a1;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1AC70AB64()
{
  OUTLINED_FUNCTION_104();
  v1 = v0;
  v28 = sub_1AC79FBC8();
  v2 = OUTLINED_FUNCTION_40(v28);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6();
  v9 = v8 - v7;
  v10 = *(v1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
LABEL_23:
    OUTLINED_FUNCTION_105();
    return;
  }

  v30 = MEMORY[0x1E69E7CC0];
  sub_1AC6313FC();
  v12 = 0;
  v13 = v30;
  v26 = v10;
  v27 = v1 + 32;
  v25 = v4;
  v24 = v9;
  while (1)
  {
    v14 = *(v27 + 8 * v12);
    if (v14 >> 62)
    {
      if (v14 < 0)
      {
        v23 = *(v27 + 8 * v12);
      }

      v15 = sub_1AC7A08E8();
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v29 = v13;
    if (v15)
    {
      break;
    }

    v17 = v11;
LABEL_16:
    MEMORY[0x1B26E8770](v17);

    v13 = v29;
    v22 = *(v29 + 16);
    if (v22 >= *(v29 + 24) >> 1)
    {
      sub_1AC6313FC();
      v13 = v29;
    }

    ++v12;
    *(v13 + 16) = v22 + 1;
    (*(v4 + 32))(v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v22, v9, v28);
    v11 = MEMORY[0x1E69E7CC0];
    if (v12 == v26)
    {
      goto LABEL_23;
    }
  }

  sub_1AC631164();
  if ((v15 & 0x8000000000000000) == 0)
  {
    v16 = 0;
    v17 = v11;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1B26E95B0](v16, v14);
      }

      else
      {
        v18 = *(v14 + 8 * v16 + 32);
      }

      v19 = v18;
      v20 = [v18 integerValue];

      v21 = *(v17 + 16);
      if (v21 >= *(v17 + 24) >> 1)
      {
        sub_1AC631164();
      }

      ++v16;
      *(v17 + 16) = v21 + 1;
      *(v17 + 8 * v21 + 32) = v20;
    }

    while (v15 != v16);
    v9 = v24;
    v4 = v25;
    goto LABEL_16;
  }

  __break(1u);
}

void Locale.languageRegionIdentifier.getter()
{
  OUTLINED_FUNCTION_104();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C060, &unk_1AC7A8760);
  OUTLINED_FUNCTION_167(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v33 - v4;
  v6 = sub_1AC79FAF8();
  v7 = OUTLINED_FUNCTION_40(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v7);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C070, &qword_1AC7A8770);
  OUTLINED_FUNCTION_167(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v33 - v21;
  sub_1AC79FB08();
  sub_1AC79FAC8();
  v23 = *(v9 + 8);
  v23(v16, v6);
  v24 = sub_1AC79F9C8();
  OUTLINED_FUNCTION_96(v22, 1, v24);
  if (v29)
  {
    sub_1AC5C720C(v22, &qword_1EB56C070, &qword_1AC7A8770);
  }

  else
  {
    v25 = sub_1AC79F988();
    v27 = v26;
    (*(*(v24 - 8) + 8))(v22, v24);
    sub_1AC79FB08();
    sub_1AC79FAD8();
    v23(v14, v6);
    v28 = sub_1AC79FA48();
    OUTLINED_FUNCTION_96(v5, 1, v28);
    if (v29)
    {
      sub_1AC5C720C(v5, &qword_1EB56C060, &unk_1AC7A8760);
    }

    else
    {
      v30 = sub_1AC79F988();
      v32 = v31;
      (*(*(v28 - 8) + 8))(v5, v28);
      v33[0] = v25;
      v33[1] = v27;
      MEMORY[0x1B26E8C40](45, 0xE100000000000000);
      MEMORY[0x1B26E8C40](v30, v32);
    }
  }

  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC70B140()
{
  sub_1AC70B0D0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1AC70B1C8(uint64_t a1)
{
  sub_1AC7A0E78();
  sub_1AC70B1C0(v3, a1);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC70B220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  return sub_1AC70B198();
}

uint64_t sub_1AC70B23C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1AC7A0E78();
  sub_1AC70B1C0(v6, a2);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC70B29C()
{
  sub_1AC70B2F4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

char *sub_1AC70B2F4()
{
  v1 = v0;
  v2 = *v0;
  v17[1] = *(v2 + 80);
  swift_getFunctionTypeMetadata();
  v3 = sub_1AC7A02C8();
  OUTLINED_FUNCTION_40(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v17 - v9;
  v11 = *(v2 + 104);
  (*(v5 + 16))(v17 - v9, &v1[v11], v3);
  sub_1AC7A02B8();
  v12 = *(v5 + 8);
  v12(v10, v3);
  v13 = *(*v1 + 96);
  v14 = sub_1AC7A02F8();
  OUTLINED_FUNCTION_80(v14);
  (*(v15 + 8))(&v1[v13]);
  v12(&v1[v11], v3);
  return v1;
}

void sub_1AC70B4A0()
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  mach_timebase_info(v2);
  if (v2[0].numer)
  {
    OUTLINED_FUNCTION_37_10(v2[0].numer, v0, v2[0].numer, v2[0].denom);
  }

  v1 = *MEMORY[0x1E69E9840];
}

Swift::Double __swiftcall hostTimeToSeconds(hostTime:)(Swift::UInt64 hostTime)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  mach_timebase_info(v6);
  if (v6[0].numer)
  {
    v3 = OUTLINED_FUNCTION_37_10(v6[0].numer, v2, v6[0].numer, v6[0].denom) * 1000000000.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return hostTime / v3;
}

void sub_1AC70B59C()
{
  OUTLINED_FUNCTION_104();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v0;
    v3 = objc_opt_self();
    v4 = (v2 + 40);
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v6 = *(v4 - 1);
      v7 = *v4;

      v8 = sub_1AC79FF58();

      v9 = [v3 localeIdentifiersForGeneralASRLanguageCode_];

      v10 = sub_1AC7A0158();
      v11 = *(v10 + 16);
      v12 = *(v5 + 16);
      if (__OFADD__(v12, v11))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v12 + v11 > *(v5 + 24) >> 1)
      {
        sub_1AC60DBDC();
        v5 = v13;
      }

      if (*(v10 + 16))
      {
        if ((*(v5 + 24) >> 1) - *(v5 + 16) < v11)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithCopy();

        if (v11)
        {
          v14 = *(v5 + 16);
          v15 = __OFADD__(v14, v11);
          v16 = v14 + v11;
          if (v15)
          {
            goto LABEL_18;
          }

          *(v5 + 16) = v16;
        }
      }

      else
      {

        if (v11)
        {
          goto LABEL_16;
        }
      }

      v4 += 2;
      if (!--v1)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_14:
    OUTLINED_FUNCTION_105();
  }
}

uint64_t sub_1AC70B720(uint64_t a1)
{
  v1 = *(a1 + 80);
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

uint64_t sub_1AC70B804(uint64_t a1)
{
  v4 = *(a1 + 80);
  swift_getFunctionTypeMetadata();
  result = sub_1AC7A02F8();
  if (v2 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = sub_1AC7A02C8();
    if (v3 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1AC70B96C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_1AC70B9FC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && *(*(*(a3 + 16) - 8) + 64) <= 0x18uLL && (*(v4 + 80) & 0x100000) == 0)
  {
    (*(v4 + 16))(a1);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 + 16) & ~v5));
  }

  return v3;
}

uint64_t sub_1AC70BC20(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1AC70BD5C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t OUTLINED_FUNCTION_8_12()
{
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
  result = __swift_storeEnumTagSinglePayload(*(v2 - 184), 1, 1, *(v2 - 112));
  v4 = *(v2 - 176);
  return result;
}

uint64_t OUTLINED_FUNCTION_20_13()
{

  return sub_1AC79FED8();
}

uint64_t OUTLINED_FUNCTION_25_12()
{

  return MEMORY[0x1EEDC51B0](1953390920, 0xE400000000000000);
}

uint64_t OUTLINED_FUNCTION_26_12(uint64_t a1, uint64_t a2)
{

  return sub_1AC5D1E4C(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_32_12()
{
  v4 = *(v2 - 216);

  return sub_1AC5C720C(v4, v0, v1);
}

uint64_t OUTLINED_FUNCTION_34_9()
{

  return MEMORY[0x1EEDC51B0](1936613704, 0xE400000000000000);
}

void sub_1AC70C064()
{
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v0 = sub_1AC79FDE8();
  __swift_project_value_buffer(v0, qword_1ED9386C8);
  if ((sub_1AC7A0708() & 1) == 0)
  {
    v1 = sub_1AC79FDC8();
    v2 = sub_1AC7A05F8();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v7 = v4;
      *v3 = 136315138;
      *(v3 + 4) = sub_1AC5CFE74(0x2064696C61766E49, 0xEE00656D69544D43, &v7);
      OUTLINED_FUNCTION_1(&dword_1AC5BC000, v5, v6, "Failed precondition: %s");
      __swift_destroy_boxed_opaque_existential_0(v4);
      OUTLINED_FUNCTION_70();
      OUTLINED_FUNCTION_70();
    }

    __break(1u);
  }
}

void sub_1AC70C19C(int a1)
{
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v2 = sub_1AC79FDE8();
  __swift_project_value_buffer(v2, qword_1ED9386C8);
  if (a1 <= 0)
  {
    v3 = sub_1AC79FDC8();
    v4 = sub_1AC7A05F8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v9 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_1AC5CFE74(0xD000000000000013, 0x80000001AC7B8C50, &v9);
      OUTLINED_FUNCTION_1(&dword_1AC5BC000, v7, v8, "Failed precondition: %s");
      __swift_destroy_boxed_opaque_existential_0(v6);
      OUTLINED_FUNCTION_70();
      OUTLINED_FUNCTION_70();
    }

    __break(1u);
  }
}

uint64_t sub_1AC70C2B4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFD8, &qword_1AC7A83F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v47 - v5;
  v57 = sub_1AC79FB18();
  v7 = *(v57 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v57);
  v56 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v53 = &v47 - v11;
    v47 = v1;
    v63 = MEMORY[0x1E69E7CC0];
    sub_1AC63110C();
    v62 = v63;
    result = sub_1AC6C2CA0(a1);
    v16 = result;
    v17 = 0;
    v18 = a1 + 56;
    v54 = v7;
    v55 = (v7 + 8);
    v48 = a1 + 64;
    v49 = v12;
    v58 = v6;
    v51 = a1 + 56;
    v52 = (v7 + 32);
    v50 = a1;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v16 < 1 << *(a1 + 32))
      {
        v19 = v16 >> 6;
        if ((*(v18 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
        {
          goto LABEL_27;
        }

        if (*(a1 + 36) != v14)
        {
          goto LABEL_28;
        }

        v61 = v15;
        v59 = v17;
        v60 = v14;
        v20 = (*(a1 + 48) + 16 * v16);
        v21 = *v20;
        v22 = v20[1];
        swift_bridgeObjectRetain_n();
        v23 = v56;
        v24 = sub_1AC79F968();
        Locale.languageRegionLocale.getter(v24, v25, v26, v27, v28, v29, v30, v31, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58);
        v32 = v57;
        (*v55)(v23, v57);
        result = __swift_getEnumTagSinglePayload(v6, 1, v32);
        if (result == 1)
        {
          goto LABEL_33;
        }

        v33 = v53;
        v34 = *v52;
        (*v52)(v53, v6, v32);

        v35 = v62;
        v63 = v62;
        v36 = *(v62 + 16);
        if (v36 >= *(v62 + 24) >> 1)
        {
          sub_1AC63110C();
          v32 = v57;
          v35 = v63;
        }

        *(v35 + 16) = v36 + 1;
        v37 = (*(v54 + 80) + 32) & ~*(v54 + 80);
        v62 = v35;
        result = (v34)(v35 + v37 + *(v54 + 72) * v36, v33, v32);
        if (v61)
        {
          goto LABEL_32;
        }

        a1 = v50;
        v18 = v51;
        v38 = 1 << *(v50 + 32);
        v6 = v58;
        if (v16 >= v38)
        {
          goto LABEL_29;
        }

        v39 = *(v51 + 8 * v19);
        if ((v39 & (1 << v16)) == 0)
        {
          goto LABEL_30;
        }

        if (*(v50 + 36) != v60)
        {
          goto LABEL_31;
        }

        v40 = v39 & (-2 << (v16 & 0x3F));
        if (v40)
        {
          v38 = __clz(__rbit64(v40)) | v16 & 0x7FFFFFFFFFFFFFC0;
          v41 = v49;
        }

        else
        {
          v42 = v19 << 6;
          v43 = v19 + 1;
          v41 = v49;
          v44 = (v48 + 8 * v19);
          while (v43 < (v38 + 63) >> 6)
          {
            v46 = *v44++;
            v45 = v46;
            v42 += 64;
            ++v43;
            if (v46)
            {
              result = sub_1AC637E98(v16, v60, 0);
              v38 = __clz(__rbit64(v45)) + v42;
              goto LABEL_20;
            }
          }

          result = sub_1AC637E98(v16, v60, 0);
LABEL_20:
          v6 = v58;
        }

        v17 = v59 + 1;
        if (v59 + 1 == v41)
        {
          return v62;
        }

        v15 = 0;
        v14 = *(a1 + 36);
        v16 = v38;
        if (v38 < 0)
        {
          break;
        }
      }
    }

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
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC70C6DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return MEMORY[0x1EEE6DED8]();
}

uint64_t sub_1AC70C6FC(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v2 = sub_1AC7A0158();
  return sub_1AC70C6BC(v1, v2);
}

uint64_t static AssetsInventory.shared.getter()
{
  type metadata accessor for AssetsInventory();

  return swift_initStaticObject();
}

uint64_t sub_1AC70C79C()
{
  OUTLINED_FUNCTION_85();
  v2 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFD8, &qword_1AC7A83F0) - 8) + 64);
  *(v0 + 288) = OUTLINED_FUNCTION_126();
  v4 = sub_1AC79FB18();
  *(v0 + 296) = v4;
  OUTLINED_FUNCTION_22(v4);
  *(v0 + 304) = v5;
  v7 = *(v6 + 64) + 15;
  *(v0 + 312) = swift_task_alloc();
  *(v0 + 320) = swift_task_alloc();
  *(v0 + 328) = *v2;
  v8 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC70C88C()
{
  if (*(v1 + 328))
  {
    if (*(v1 + 328) == 1)
    {
      v2 = (v1 + 10);
      objc_opt_self();
      OUTLINED_FUNCTION_41_9();
      v1[10] = v3;
      v1[15] = v1 + 35;
      v1[11] = sub_1AC70CC98;
      v4 = swift_continuation_init();
      v1[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D180, &qword_1AC7ADD88);
      v1[26] = MEMORY[0x1E69E9820];
      v1[27] = 1107296256;
      v1[28] = sub_1AC70C6FC;
      v1[29] = &block_descriptor_3;
      v1[30] = v4;
      [v0 supportedLanguagesForTaskHint:0 completion:v1 + 26];
    }

    else
    {
      v2 = (v1 + 2);
      objc_opt_self();
      OUTLINED_FUNCTION_41_9();
      v1[2] = v46;
      v1[7] = v1 + 34;
      v1[3] = sub_1AC70CF1C;
      v47 = swift_continuation_init();
      v1[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D180, &qword_1AC7ADD88);
      v1[18] = MEMORY[0x1E69E9820];
      v1[19] = 1107296256;
      v1[20] = sub_1AC70C6FC;
      v1[21] = &block_descriptor_11;
      v1[22] = v47;
      [v0 supportedLanguagesForTaskHint:1009 completion:v1 + 18];
    }

    EnumTagSinglePayload = v2;

    return MEMORY[0x1EEE6DEC8](EnumTagSinglePayload);
  }

  v5 = MEMORY[0x1E69E7CC0];
  v6 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v6)
  {
    v62 = v1;
    v63 = MEMORY[0x1E69E7CC0];
    v7 = v1[38];
    sub_1AC63110C();
    v9 = 0;
    v10 = v63;
    v57 = v6;
    v59 = v7 + 8;
    v11 = (v5 + 40);
    v55 = v7;
    v61 = (v7 + 32);
    while (v9 < *(v5 + 16))
    {
      v12 = v62;
      v13 = v62[39];
      v15 = v62[36];
      v14 = v62[37];
      v17 = *(v11 - 1);
      v16 = *v11;
      swift_bridgeObjectRetain_n();
      v18 = sub_1AC79F968();
      Locale.languageRegionLocale.getter(v18, v19, v20, v21, v22, v23, v24, v25, v53, v55, v57, v59, v61, v62, v63, v64, v65, v66, v67, v68);
      v34 = OUTLINED_FUNCTION_26_13(v26, v27, v28, v29, v30, v31, v32, v33, v54, v56, v58, v60);
      v35(v34, v14);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v14);
      if (EnumTagSinglePayload == 1)
      {
        goto LABEL_21;
      }

      v36 = v12[40];
      v38 = v12[36];
      v37 = v12[37];

      v39 = *v61;
      (*v61)(v36, v38, v37);
      v63 = v10;
      v40 = *(v10 + 16);
      if (v40 >= *(v10 + 24) >> 1)
      {
        sub_1AC63110C();
      }

      ++v9;
      v41 = v12[40];
      v42 = v12[37];
      *(v10 + 16) = v40 + 1;
      v43 = *(v55 + 80);
      OUTLINED_FUNCTION_89_0();
      EnumTagSinglePayload = v39(v10 + v44 + *(v45 + 72) * v40);
      v11 += 2;
      if (v57 == v9)
      {

        v1 = v62;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
    return MEMORY[0x1EEE6DEC8](EnumTagSinglePayload);
  }

  v10 = MEMORY[0x1E69E7CC0];

LABEL_17:
  v49 = v1[39];
  v48 = v1[40];
  v50 = v1[36];

  OUTLINED_FUNCTION_82();

  return v51(v10);
}

uint64_t sub_1AC70CC98()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_31_10();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1AC70CD68, 0, 0);
}

uint64_t sub_1AC70CF1C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_31_10();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1AC70CFEC, 0, 0);
}

uint64_t sub_1AC70D1D0()
{
  OUTLINED_FUNCTION_45();
  if (!*(v1 + 216))
  {
    sub_1AC70C2B4(MEMORY[0x1E69E7CD0]);
    OUTLINED_FUNCTION_47_7();
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_155();

    __asm { BRAA            X2, X16 }
  }

  v2 = v1 + 208;
  if (*(v1 + 216) == 1)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_41_9();
    *(v1 + 80) = v3;
    *(v1 + 120) = v2;
    *(v1 + 88) = sub_1AC70D3C4;
    swift_continuation_init();
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D918, &unk_1AC7B0BA0);
    OUTLINED_FUNCTION_12_13(v4);
    *(v1 + 152) = 1107296256;
    OUTLINED_FUNCTION_13_9();
    [v0 installedLanguagesForTaskHint:0 completion:v1 + 144];
  }

  else
  {
    objc_opt_self();
    OUTLINED_FUNCTION_41_9();
    *(v1 + 16) = v7;
    *(v1 + 56) = v2;
    *(v1 + 24) = sub_1AC70D504;
    swift_continuation_init();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D918, &unk_1AC7B0BA0);
    OUTLINED_FUNCTION_12_13(v8);
    *(v1 + 152) = 1107296256;
    OUTLINED_FUNCTION_13_9();
    [v0 installedLanguagesForTaskHint:1009 completion:v1 + 144];
  }

  OUTLINED_FUNCTION_155();

  return MEMORY[0x1EEE6DEC8](v9);
}

uint64_t sub_1AC70D3C4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_31_10();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1AC70D494, 0, 0);
}

uint64_t sub_1AC70D494()
{
  OUTLINED_FUNCTION_72();
  sub_1AC70C2B4(*(v1 + 208));
  OUTLINED_FUNCTION_47_7();
  OUTLINED_FUNCTION_82();

  return v2(v0);
}

uint64_t sub_1AC70D504()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_31_10();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1AC70D5D4, 0, 0);
}

uint64_t sub_1AC70D5D4()
{
  OUTLINED_FUNCTION_72();
  sub_1AC6054C8(*(v1 + 208));
  sub_1AC70B59C();
  OUTLINED_FUNCTION_47_7();
  v2 = sub_1AC608FF4(v0);
  sub_1AC70C2B4(v2);
  OUTLINED_FUNCTION_47_7();
  OUTLINED_FUNCTION_82();

  return v3(v0);
}

uint64_t sub_1AC70D65C(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v2 = sub_1AC7A0448();
  return sub_1AC70C6BC(v1, v2);
}

uint64_t sub_1AC70D6B0()
{
  OUTLINED_FUNCTION_85();
  v3 = v2;
  *(v1 + 1432) = v0;
  v4 = sub_1AC79FB18();
  *(v1 + 1480) = v4;
  OUTLINED_FUNCTION_22(v4);
  *(v1 + 1488) = v5;
  v7 = *(v6 + 64);
  *(v1 + 1496) = OUTLINED_FUNCTION_126();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C550, &unk_1AC7A9200);
  *(v1 + 1504) = v8;
  OUTLINED_FUNCTION_22(v8);
  *(v1 + 1512) = v9;
  v11 = *(v10 + 64);
  *(v1 + 1520) = OUTLINED_FUNCTION_126();
  *(v1 + 1560) = *v3;
  v12 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1AC70D7B8()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 1560);
  v2 = *(v0 + 1432);
  v3 = swift_task_alloc();
  *(v0 + 1528) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D920, &qword_1AC7B0BC0);
  swift_asyncLet_begin();
  v4 = swift_task_alloc();
  *(v0 + 1536) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  swift_asyncLet_begin();

  return MEMORY[0x1EEE6DEB8](v0 + 16, v0 + 1336, sub_1AC70D8C4, v0 + 1296);
}

uint64_t sub_1AC70D8C4()
{
  OUTLINED_FUNCTION_85();
  *(v0 + 1544) = *(v0 + 1336);

  return MEMORY[0x1EEE6DEB8](v0 + 656, v0 + 1384, sub_1AC70D930, v0 + 1344);
}

uint64_t sub_1AC70D944()
{
  v1 = v0[193];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[173];
    v33 = v0[188];
    v34 = v0[189];
    v4 = v0[186];
    v36 = MEMORY[0x1E69E7CC0];

    sub_1AC6317A0(0, v2, 0);
    v5 = 0;
    v6 = v36;
    v7 = *(v4 + 16);
    v4 += 16;
    v8 = *(v4 + 64);
    OUTLINED_FUNCTION_89_0();
    v31 = v1 + v9;
    v32 = v10;
    v11 = *(v4 + 56);
    v35 = v3;
    v30 = v3 + v9;
    v29 = (v4 + 16);
    do
    {
      v32(v0[187], v31 + v5 * v11, v0[185]);
      v12 = *(v35 + 16) + 1;
      v13 = v30;
      do
      {
        if (!--v12)
        {
          break;
        }

        v14 = v0[187];
        v15 = v0[185];
        OUTLINED_FUNCTION_17_10();
        sub_1AC70FE1C(&qword_1EB56B460);
        v13 += v11;
      }

      while ((sub_1AC79FED8() & 1) == 0);
      v16 = v0[190];
      v17 = *(v33 + 48);
      (*v29)(v16, v0[187], v0[185]);
      *(v16 + v17) = v12 != 0;
      v19 = *(v36 + 16);
      v18 = *(v36 + 24);
      if (v19 >= v18 >> 1)
      {
        v25 = OUTLINED_FUNCTION_9(v18);
        sub_1AC6317A0(v25, v19 + 1, 1);
      }

      v20 = v0[190];
      ++v5;
      *(v36 + 16) = v19 + 1;
      v21 = *(v34 + 80);
      OUTLINED_FUNCTION_89_0();
      sub_1AC70FD64(v24, v36 + v22 + *(v23 + 72) * v19);
    }

    while (v5 != v2);
    v26 = v0[193];
  }

  else
  {
    v27 = v0[193];

    v6 = MEMORY[0x1E69E7CC0];
  }

  v0[194] = v6;

  return MEMORY[0x1EEE6DEB0](v0 + 82, v0 + 173, sub_1AC70DB8C, v0 + 174);
}

uint64_t sub_1AC70DBA0()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 1536);

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 1336, sub_1AC70DC08, v0 + 1440);
}

uint64_t sub_1AC70DC1C()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[191];
  v2 = v0[190];
  v3 = v0[187];

  OUTLINED_FUNCTION_82();
  v5 = v0[194];

  return v4(v5);
}

uint64_t sub_1AC70DC90(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 16) = a1;
  *(v3 + 40) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC70DD2C;

  return sub_1AC70C79C();
}

uint64_t sub_1AC70DD2C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_18_2();
  *v2 = v1;
  v4 = *(v3 + 24);
  *v2 = *v0;
  *(v1 + 32) = v5;

  v6 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC70DE18(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 16) = a1;
  *(v3 + 40) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC70DEB4;

  return sub_1AC70D1B4((v3 + 40));
}

uint64_t sub_1AC70DEB4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_18_2();
  *v2 = v1;
  v4 = *(v3 + 24);
  *v2 = *v0;
  *(v1 + 32) = v5;

  v6 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC70DFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(uint64_t, uint64_t), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_93_0();
  v19 = 0;
  OUTLINED_FUNCTION_38_11(*(v16 + 20));
LABEL_2:
  v49 = v22;
  *(v16 + 21) = v22;
  v23 = (v21 + 16 * v19);
  while (v18 != v19)
  {
    if (v19 >= v18)
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v20);
    }

    v24 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_22;
    }

    v25 = *v23;
    v23 += 2;
    swift_getObjectType();
    dynamic_cast_existential_1_unconditional(v25);
    v27 = v26;
    swift_getObjectType();
    OUTLINED_FUNCTION_44_7();
    v28 = v16(v17, v27);
    v20 = swift_unknownObjectRelease();
    ++v19;
    if (v28)
    {
      MEMORY[0x1B26E8CF0](v20);
      OUTLINED_FUNCTION_483(a13);
      if (v30)
      {
        OUTLINED_FUNCTION_9(v29);
        sub_1AC7A0178();
      }

      v20 = sub_1AC7A0198();
      v16 = a12;
      v22 = a13;
      v19 = v24;
      v21 = a10;
      goto LABEL_2;
    }
  }

  v31 = sub_1AC61C24C(v49);
  *(a12 + 22) = v31;
  if (v31)
  {
    v20 = objc_opt_self();
    *(a12 + 23) = v20;
    v32 = *(a12 + 21);
    if ((v32 & 0xC000000000000001) != 0)
    {
      v33 = MEMORY[0x1B26E95B0](0);
      v34 = *(a12 + 23);
    }

    else
    {
      if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v33 = *(v32 + 32);
    }

    *(a12 + 24) = v33;
    *(a12 + 25) = 1;
    *(a12 + 26) = sub_1AC79FF58();
    *(a12 + 2) = a12;
    *(a12 + 7) = a12 + 144;
    *(a12 + 3) = sub_1AC70E278;
    v45 = swift_continuation_init();
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D928, &qword_1AC7B0BE0);
    v47 = OUTLINED_FUNCTION_14_13(v46);
    *(a12 + 11) = 1107296256;
    *(a12 + 12) = sub_1AC70E53C;
    *(a12 + 13) = &block_descriptor_18;
    *(a12 + 14) = v45;
    OUTLINED_FUNCTION_46_9(v47, sel_pathToAssetWithConfig_clientIdentifier_completion_);
    OUTLINED_FUNCTION_54();

    return MEMORY[0x1EEE6DEC8](v20);
  }

  v35 = *(a12 + 1);
  OUTLINED_FUNCTION_54();

  return v38(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, v49, a12, a13, a14, a15, a16);
}

uint64_t sub_1AC70E278()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_31_10();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1AC70E348, 0, 0);
}

uint64_t sub_1AC70E348()
{
  v1 = *(v0 + 208);
  if (!*(v0 + 152))
  {
    v6 = *(v0 + 168);

    goto LABEL_5;
  }

  v2 = *(v0 + 200);
  v3 = *(v0 + 176);

  if (v2 != v3)
  {
    v9 = *(v0 + 200);
    v10 = *(v0 + 168);
    if ((v10 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1B26E95B0](*(v0 + 200));
    }

    else
    {
      if (v9 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v4 = *(v10 + 8 * v9 + 32);
    }

    *(v0 + 192) = v4;
    *(v0 + 200) = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      v11 = *(v0 + 184);
      *(v0 + 208) = sub_1AC79FF58();
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 144;
      *(v0 + 24) = sub_1AC70E278;
      v12 = swift_continuation_init();
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D928, &qword_1AC7B0BE0);
      v14 = OUTLINED_FUNCTION_80_0(v13);
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1AC70E53C;
      *(v0 + 104) = &block_descriptor_18;
      *(v0 + 112) = v12;
      OUTLINED_FUNCTION_24_15(v14, sel_pathToAssetWithConfig_clientIdentifier_completion_);
      v4 = (v0 + 16);

      return MEMORY[0x1EEE6DEC8](v4);
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v4);
  }

  v5 = *(v0 + 168);

LABEL_5:
  OUTLINED_FUNCTION_82();

  return v7();
}

uint64_t sub_1AC70E53C(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = sub_1AC79FF68();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  return sub_1AC70C6DC(v3, v4, v6);
}

uint64_t sub_1AC70E5A4()
{
  OUTLINED_FUNCTION_85();
  v0[5] = v1;
  v0[6] = v2;
  v0[4] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C060, &unk_1AC7A8760) - 8) + 64);
  v0[7] = OUTLINED_FUNCTION_126();
  v5 = sub_1AC79FAF8();
  v0[8] = v5;
  OUTLINED_FUNCTION_22(v5);
  v0[9] = v6;
  v8 = *(v7 + 64) + 15;
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C070, &qword_1AC7A8770) - 8) + 64);
  v0[12] = OUTLINED_FUNCTION_126();
  v10 = sub_1AC79FB18();
  v0[13] = v10;
  OUTLINED_FUNCTION_22(v10);
  v0[14] = v11;
  v13 = *(v12 + 64);
  v0[15] = OUTLINED_FUNCTION_126();
  v0[16] = type metadata accessor for SpeechTranscriber();
  v14 = swift_task_alloc();
  v0[17] = v14;
  *v14 = v0;
  v14[1] = sub_1AC70E754;

  return static SpeechTranscriber.supportedLocales.getter();
}

uint64_t sub_1AC70E754()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_18_2();
  *v2 = v1;
  v4 = *(v3 + 136);
  *v2 = *v0;
  *(v1 + 144) = v5;

  v6 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC70E840()
{
  v95 = v0;
  v1 = v0[18];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  v79 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v0[14];
    v5 = v0[9];
    v92 = MEMORY[0x1E69E7CC0];
    sub_1AC6310CC(0, v2, 0);
    v6 = *(v4 + 16);
    v4 += 16;
    v88 = v6;
    v90 = v92;
    v7 = *(v4 + 64);
    OUTLINED_FUNCTION_89_0();
    v9 = v1 + v8;
    v10 = (v5 + 8);
    v85 = *(v4 + 56);
    v87 = (v4 - 8);
    do
    {
      v11 = v0[12];
      v12 = v0[11];
      v13 = v0[8];
      v88(v0[15], v9, v0[13]);
      sub_1AC79FB08();
      sub_1AC79FAC8();
      v14 = *v10;
      (*v10)(v12, v13);
      v15 = sub_1AC79F9C8();
      if (OUTLINED_FUNCTION_45_9(v15) == 1)
      {
        sub_1AC5C7264(v0[12], &qword_1EB56C070, &qword_1AC7A8770);
        v16 = 0;
        v17 = 0xE000000000000000;
        v18 = v90;
      }

      else
      {
        v19 = v0[15];
        v20 = v0[12];
        v21 = v0[10];
        v22 = v0[7];
        v80 = v0[8];
        v82 = sub_1AC79F988();
        v83 = v23;
        (*(*(v13 - 8) + 8))(v20, v13);
        sub_1AC79FB08();
        sub_1AC79FAD8();
        v14(v21, v80);
        v24 = sub_1AC79FA48();
        v25 = OUTLINED_FUNCTION_45_9(v24);
        v26 = v0[7];
        if (v25 == 1)
        {
          sub_1AC5C7264(v0[7], &qword_1EB56C060, &unk_1AC7A8760);
          v18 = v90;
          v16 = v82;
          v17 = v83;
        }

        else
        {
          v27 = sub_1AC79F988();
          v28 = v10;
          v30 = v29;
          (*(*(v13 - 8) + 8))(v26, v13);
          v94[0] = v82;
          v94[1] = v83;
          MEMORY[0x1B26E8C40](45, 0xE100000000000000);
          MEMORY[0x1B26E8C40](v27, v30);
          v10 = v28;

          v16 = v82;
          v17 = v83;
          v18 = v90;
        }
      }

      (*v87)(v0[15], v0[13]);
      v32 = *(v18 + 16);
      v31 = *(v18 + 24);
      if (v32 >= v31 >> 1)
      {
        v34 = OUTLINED_FUNCTION_9(v31);
        sub_1AC6310CC(v34, v32 + 1, 1);
      }

      *(v18 + 16) = v32 + 1;
      v90 = v18;
      v33 = v18 + 16 * v32;
      *(v33 + 32) = v16;
      *(v33 + 40) = v17;
      v9 += v85;
      --v2;
    }

    while (v2);
    v35 = v0[18];

    v3 = MEMORY[0x1E69E7CC0];
    v37 = v90;
  }

  else
  {

    v37 = MEMORY[0x1E69E7CC0];
  }

  v38 = 0;
  v39 = v0[4];
  v40 = *(v39 + 16);
  v41 = v39 + 32;
  v91 = v37;
  v93 = v3;
  v86 = v40;
  v81 = v39 + 32;
LABEL_14:
  v42 = (v41 + 16 * v38);
  for (i = v38; v40 != i; ++i)
  {
    if (i >= v40)
    {
      __break(1u);
LABEL_40:
      __break(1u);
      return result;
    }

    v38 = i + 1;
    if (__OFADD__(i, 1))
    {
      goto LABEL_40;
    }

    v89 = v42;
    v44 = *v42;
    v45 = v0[16];
    v46 = swift_dynamicCastClass();
    if (v46)
    {
      v47 = v46;
      swift_unknownObjectRetain();
      Locale.languageRegionIdentifier.getter();
      v0[2] = v48;
      v0[3] = v49;
      v50 = swift_task_alloc();
      *(v50 + 16) = v0 + 2;
      v51 = sub_1AC6F488C(sub_1AC637CD4, v50, v37);

      if (!v51)
      {
        if (off_1ED937D60 != -1)
        {
          OUTLINED_FUNCTION_3_0();
          swift_once();
        }

        v59 = sub_1AC79FDE8();
        __swift_project_value_buffer(v59, qword_1ED9386C8);
        swift_unknownObjectRetain();
        v60 = sub_1AC79FDC8();
        v61 = sub_1AC7A05F8();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = v0[13];
          v63 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          v94[0] = v84;
          *v63 = 136315138;
          sub_1AC70FE1C(&qword_1EB56B458);
          v64 = sub_1AC7A0CC8();
          v66 = sub_1AC5CFE74(v64, v65, v94);

          *(v63 + 4) = v66;
          _os_log_impl(&dword_1AC5BC000, v60, v61, "SpeechTranscriber cannot be initialized with an unsupported locale: %s. Please consult SpeechTranscriber.supportedLocales.", v63, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v84);
          OUTLINED_FUNCTION_70();
          OUTLINED_FUNCTION_70();
        }

        result = swift_unknownObjectRelease();
        v37 = v91;
        v40 = v86;
        goto LABEL_29;
      }

      v52 = *(v47 + OBJC_IVAR____TtC6Speech17SpeechTranscriber_common);
      v53 = sub_1AC7440D4();
    }

    else
    {
      swift_getObjectType();
      dynamic_cast_existential_1_unconditional(v44);
      v55 = v54;
      ObjectType = swift_getObjectType();
      v57 = *(v55 + 32);
      swift_unknownObjectRetain();
      v53 = v57(ObjectType, v55);
    }

    v58 = v53;
    result = swift_unknownObjectRelease();
    v40 = v86;
    if (v58)
    {
      MEMORY[0x1B26E8CF0](result);
      v37 = v91;
      OUTLINED_FUNCTION_483(v93);
      if (v68)
      {
        OUTLINED_FUNCTION_9(v67);
        sub_1AC7A0178();
      }

      result = sub_1AC7A0198();
      v79 = v93;
      v41 = v81;
      goto LABEL_14;
    }

    v37 = v91;
LABEL_29:
    v42 = v89 + 2;
  }

  if (sub_1AC61C24C(v79))
  {
    v69 = v0[5];
    v70 = v0[6];
    objc_allocWithZone(type metadata accessor for AssetsInstallationRequest());

    sub_1AC6EF678(v79, v69, v70);
    v72 = v71;
  }

  else
  {

    v72 = 0;
  }

  v73 = v0[15];
  v75 = v0[11];
  v74 = v0[12];
  v76 = v0[10];
  v77 = v0[7];

  OUTLINED_FUNCTION_82();

  return v78(v72);
}

uint64_t sub_1AC70EF24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return OUTLINED_FUNCTION_0_16(sub_1AC70EF40);
}

uint64_t sub_1AC70EF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(uint64_t, uint64_t), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_93_0();
  v19 = 0;
  OUTLINED_FUNCTION_38_11(*(v16 + 18));
LABEL_2:
  v52 = v22;
  *(v16 + 21) = v22;
  v23 = (v21 + 16 * v19);
  while (v18 != v19)
  {
    if (v19 >= v18)
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v20);
    }

    v24 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_22;
    }

    v25 = *v23;
    v23 += 2;
    swift_getObjectType();
    dynamic_cast_existential_1_unconditional(v25);
    v27 = v26;
    swift_getObjectType();
    OUTLINED_FUNCTION_44_7();
    v28 = v16(v17, v27);
    v20 = swift_unknownObjectRelease();
    ++v19;
    if (v28)
    {
      MEMORY[0x1B26E8CF0](v20);
      OUTLINED_FUNCTION_483(a13);
      if (v30)
      {
        OUTLINED_FUNCTION_9(v29);
        sub_1AC7A0178();
      }

      v20 = sub_1AC7A0198();
      v16 = a12;
      v22 = a13;
      v19 = v24;
      v21 = a10;
      goto LABEL_2;
    }
  }

  v31 = sub_1AC61C24C(v52);
  *(a12 + 22) = v31;
  if (v31)
  {
    v32 = v31;
    v20 = objc_opt_self();
    *(a12 + 23) = v20;
    if (v32 < 1)
    {
      goto LABEL_23;
    }

    *(a12 + 24) = 0;
    v33 = *(a12 + 21);
    if ((v33 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x1B26E95B0](0);
      v35 = *(a12 + 23);
    }

    else
    {
      v34 = *(v33 + 32);
    }

    *(a12 + 25) = v34;
    v46 = *(a12 + 19);
    v47 = *(a12 + 20);
    *(a12 + 26) = sub_1AC79FF58();
    *(a12 + 2) = a12;
    *(a12 + 3) = sub_1AC70F1D0;
    v48 = swift_continuation_init();
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFE0, &qword_1AC7A8410);
    v50 = OUTLINED_FUNCTION_14_13(v49);
    *(a12 + 11) = 1107296256;
    *(a12 + 12) = sub_1AC6BB2BC;
    *(a12 + 13) = &block_descriptor_22_0;
    *(a12 + 14) = v48;
    OUTLINED_FUNCTION_46_9(v50, sel_unsubscribeFromAssetWithConfig_clientIdentifier_completion_);
    OUTLINED_FUNCTION_54();

    return MEMORY[0x1EEE6DEC8](v20);
  }

  v36 = *(a12 + 1);
  OUTLINED_FUNCTION_54();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, v52, a12, a13, a14, a15, a16);
}

uint64_t sub_1AC70F1D0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_18_2();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 216) = v4;
  if (v4)
  {
    v5 = sub_1AC70F430;
  }

  else
  {
    v5 = sub_1AC70F2D4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1AC70F2D4()
{
  v2 = *(v1 + 208);

  v3 = OUTLINED_FUNCTION_42_11();
  if (v4)
  {
    v5 = *(v1 + 168);

    v6 = *(v1 + 8);

    return v6();
  }

  else
  {
    *(v1 + 192) = v3;
    v8 = *(v1 + 168);
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1B26E95B0]();
    }

    else
    {
      v9 = *(v8 + 8 * v3 + 32);
    }

    v10 = OUTLINED_FUNCTION_23_14(v9);
    OUTLINED_FUNCTION_43_5(v10);
    *(v1 + 16) = v1;
    *(v1 + 24) = sub_1AC70F1D0;
    swift_continuation_init();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFE0, &qword_1AC7A8410);
    OUTLINED_FUNCTION_80_0(v11);
    *(v1 + 88) = 1107296256;
    OUTLINED_FUNCTION_11_17(&block_descriptor_22_0);
    OUTLINED_FUNCTION_24_15(v12, sel_unsubscribeFromAssetWithConfig_clientIdentifier_completion_);

    return MEMORY[0x1EEE6DEC8](v0);
  }
}

uint64_t sub_1AC70F430()
{
  v33 = v0;
  v1 = v0[26];
  v2 = v0[27];
  swift_willThrow();

  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }

  v3 = v0[27];
  v4 = v0[25];
  v5 = v0[20];
  v6 = sub_1AC79FDE8();
  __swift_project_value_buffer(v6, qword_1ED9386C8);

  v7 = v4;
  v8 = v3;
  v9 = sub_1AC79FDC8();
  v10 = sub_1AC7A05F8();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[27];
  v13 = v0[25];
  if (v11)
  {
    v15 = v0[19];
    v14 = v0[20];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v32 = v18;
    *v16 = 136315650;
    *(v16 + 4) = sub_1AC5CFE74(v15, v14, &v32);
    *(v16 + 12) = 2112;
    *(v16 + 14) = v13;
    *v17 = v13;
    *(v16 + 22) = 2112;
    v19 = v13;
    v20 = v12;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 24) = v21;
    v17[1] = v21;
    _os_log_impl(&dword_1AC5BC000, v9, v10, "Unable to unsubscribe %s from %@: %@", v16, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C630, &qword_1AC7A7E40);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_70();
    __swift_destroy_boxed_opaque_existential_0(v18);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_70();
  }

  else
  {
  }

  v22 = OUTLINED_FUNCTION_42_11();
  if (v23)
  {
    v24 = v0[21];

    v25 = v0[1];

    return v25();
  }

  else
  {
    v0[24] = v22;
    v27 = v0[21];
    if ((v27 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x1B26E95B0]();
    }

    else
    {
      v28 = *(v27 + 8 * v22 + 32);
    }

    v29 = OUTLINED_FUNCTION_23_14(v28);
    OUTLINED_FUNCTION_43_5(v29);
    v0[2] = v0;
    v0[3] = sub_1AC70F1D0;
    swift_continuation_init();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFE0, &qword_1AC7A8410);
    OUTLINED_FUNCTION_80_0(v30);
    v0[11] = 1107296256;
    OUTLINED_FUNCTION_11_17(&block_descriptor_22_0);
    OUTLINED_FUNCTION_24_15(v31, sel_unsubscribeFromAssetWithConfig_clientIdentifier_completion_);

    return MEMORY[0x1EEE6DEC8](v12);
  }
}

uint64_t AssetsInventory.AssetTask.hashValue.getter()
{
  v1 = *v0;
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](v1);
  return sub_1AC7A0EC8();
}

uint64_t AssetsInventory.AssetStatus.hashValue.getter()
{
  v1 = *v0;
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](v1);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC70F894(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_16(sub_1AC70F8AC);
}

uint64_t sub_1AC70F8AC()
{
  OUTLINED_FUNCTION_85();
  v1 = sub_1AC6089EC(v0[2]);
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1AC67FA38;

  return sub_1AC70DFC4(v1);
}

uint64_t sub_1AC70F948(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_16(sub_1AC70F960);
}

uint64_t sub_1AC70F960()
{
  OUTLINED_FUNCTION_85();
  v1 = sub_1AC6089EC(v0[2]);
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1AC710AE8;

  return sub_1AC70DFC4(v1);
}

uint64_t sub_1AC70F9FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_16(sub_1AC70FA18);
}

uint64_t sub_1AC70FA18()
{
  OUTLINED_FUNCTION_85();
  v0[6] = sub_1AC6089EC(v0[2]);
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1AC70FAB8;
  v2 = v0[3];
  v3 = v0[4];

  return sub_1AC70E5A4();
}

uint64_t sub_1AC70FAB8()
{
  OUTLINED_FUNCTION_85();
  v2 = v1;
  OUTLINED_FUNCTION_50();
  v4 = *(v3 + 56);
  v5 = *(v3 + 48);
  v6 = *v0;
  OUTLINED_FUNCTION_18();
  *v7 = v6;

  OUTLINED_FUNCTION_82();

  return v8(v2);
}

uint64_t sub_1AC70FBD4()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_64_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_29_16(v4);

  return sub_1AC70DC90(v6, v7, v8);
}

uint64_t sub_1AC70FC6C()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_64_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_29_16(v4);

  return sub_1AC70DE18(v6, v7, v8);
}

uint64_t sub_1AC70FD04()
{
  OUTLINED_FUNCTION_40_9();
  sub_1AC79FB18();
  OUTLINED_FUNCTION_17_10();
  sub_1AC70FE1C(v0);
  return sub_1AC79FED8() & 1;
}

uint64_t sub_1AC70FD64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C550, &unk_1AC7A9200);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AC70FDD4()
{
  OUTLINED_FUNCTION_40_9();
  sub_1AC710A7C();
  return sub_1AC7A0758() & 1;
}

uint64_t sub_1AC70FE1C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AC79FB18();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AC70FE64()
{
  result = qword_1EB56D930;
  if (!qword_1EB56D930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB56D938, &qword_1AC7B0C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D930);
  }

  return result;
}

unint64_t sub_1AC70FECC()
{
  result = qword_1EB56D940;
  if (!qword_1EB56D940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D940);
  }

  return result;
}

unint64_t sub_1AC70FF24()
{
  result = qword_1EB56D948;
  if (!qword_1EB56D948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D948);
  }

  return result;
}

uint64_t dispatch thunk of AssetsInventory.supportedLocales(for:)()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_7_17();
  v1 = *(v0 + 80);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_64_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_4_14(v4);

  return v7(v6);
}

uint64_t dispatch thunk of AssetsInventory.installedLocales(for:)()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_7_17();
  v1 = *(v0 + 88);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_64_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_4_14(v4);

  return v7(v6);
}

uint64_t dispatch thunk of AssetsInventory.supportedLocalesStatus(for:)()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_7_17();
  v1 = *(v0 + 96);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_64_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_4_14(v4);

  return v7(v6);
}

uint64_t dispatch thunk of AssetsInventory.hasAssets(for:)()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_7_17();
  v1 = *(v0 + 104);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_64_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_4_14(v4);

  return v7(v6);
}

{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_7_17();
  v1 = *(v0 + 144);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_64_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_4_14(v4);

  return v7(v6);
}

void dispatch thunk of AssetsInventory.assetsInstallationRequest(supporting:clientIdentifier:)()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_5_16();
  v1 = *(v0 + 112);
  v8 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_64_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_2_20(v4);
  OUTLINED_FUNCTION_155();

  __asm { BRAA            X3, X16 }
}

{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_5_16();
  v1 = *(v0 + 152);
  v8 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_64_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_2_20(v4);
  OUTLINED_FUNCTION_155();

  __asm { BRAA            X3, X16 }
}

void dispatch thunk of AssetsInventory.releaseAssets(supporting:clientIdentifier:)()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_5_16();
  v1 = *(v0 + 120);
  v8 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_64_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_2_20(v4);
  OUTLINED_FUNCTION_155();

  __asm { BRAA            X3, X16 }
}

void dispatch thunk of AssetsInventory.hasAssets(for:clientIdentifier:)()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_5_16();
  v1 = *(v0 + 136);
  v8 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_64_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_2_20(v4);
  OUTLINED_FUNCTION_155();

  __asm { BRAA            X3, X16 }
}

_BYTE *storeEnumTagSinglePayload for AssetsInventory.AssetTask(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        break;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetsInventory.AssetStatus(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1AC710A7C()
{
  result = qword_1EB56AB10;
  if (!qword_1EB56AB10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB56AB10);
  }

  return result;
}

void OUTLINED_FUNCTION_34_10()
{

  sub_1AC63110C();
}

id OUTLINED_FUNCTION_46_9(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_47_7()
{
}

uint64_t sub_1AC710B9C(void *a1, void *a2, int a3, uint64_t a4)
{
  v6 = a3;
  v9 = sub_1AC5EFDCC(a1, a2, a3);
  v10 = v9;
  if (!v4 && !v9)
  {
    type metadata accessor for EARTranscriptionEvaluator();
    v10 = swift_distributedActor_remote_initialize();
    *(v10 + 112) = a1;
    *(v10 + 120) = a2;
    *(v10 + 128) = v6;
    *(v10 + 136) = a4;
    sub_1AC5D0DD0(a1, a2, v6);
  }

  return v10;
}

uint64_t sub_1AC710C24(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1AC79F958();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1 == 0xD000000000000028 && 0x80000001AC7B8D00 == a2;
  if (v17 || (sub_1AC7A0D38() & 1) != 0)
  {
    [a3 hello];
    return 1;
  }

  result = 0xD000000000000071;
  v19 = a1 == 0xD000000000000071 && 0x80000001AC7B8D30 == a2;
  if (v19 || (v20 = sub_1AC7A0D38(), result = 0, (v20 & 1) != 0))
  {
    v21 = *(a4 + 16);
    if (v21)
    {
      result = sub_1AC5D2398(a4 + 32, &v46);
      if (!v47)
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v22 = OUTLINED_FUNCTION_5_17();
      sub_1AC5C3968(v22, v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA88, &unk_1AC7A7B40);
      swift_dynamicCast();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D968, &unk_1AC7B1088);
      v24 = sub_1AC7A0148();

      if (v21 != 1)
      {
        v41 = v24;
        result = sub_1AC5D2398(a4 + 64, &v46);
        if (!v47)
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v25 = OUTLINED_FUNCTION_5_17();
        sub_1AC5C3968(v25, v26);
        swift_dynamicCast();
        v27 = sub_1AC79FF58();

        if (v21 >= 3)
        {
          v40 = a6;
          result = sub_1AC5D2398(a4 + 96, &v46);
          if (!v47)
          {
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          v28 = OUTLINED_FUNCTION_5_17();
          sub_1AC5C3968(v28, v29);
          swift_dynamicCast();
          v30 = sub_1AC79FF58();

          if (v21 != 3)
          {
            result = sub_1AC5D2398(a4 + 128, &v46);
            if (!v47)
            {
LABEL_38:
              __break(1u);
              goto LABEL_39;
            }

            v31 = OUTLINED_FUNCTION_5_17();
            sub_1AC5C3968(v31, v32);
            swift_dynamicCast();
            v33 = sub_1AC79F918();
            result = (*(v13 + 8))(v16, v12);
            if (v21 >= 5)
            {
              sub_1AC5D2398(a4 + 160, aBlock);
              if (v43)
              {
                OUTLINED_FUNCTION_5_17();
                result = swift_dynamicCast();
                if (result)
                {
                  v34 = sub_1AC79FF58();

                  goto LABEL_28;
                }
              }

              else
              {
                result = sub_1AC641B24(aBlock);
              }

              v34 = 0;
LABEL_28:
              if (a5)
              {
                v35 = swift_allocObject();
                v36 = v40;
                *(v35 + 16) = a5;
                *(v35 + 24) = v36;
                v44 = sub_1AC5D2608;
                v45 = v35;
                aBlock[0] = MEMORY[0x1E69E9820];
                aBlock[1] = 1107296256;
                aBlock[2] = sub_1AC5D25B4;
                v43 = &block_descriptor_12;
                v37 = _Block_copy(aBlock);

                v38 = a3;
                v39 = v41;
                [v38 evaluateMessagesContext:v41 recognizedText:v27 correctedText:v30 asrID:v33 speechProfilePath:v34 reply:v37];
                _Block_release(v37);

                return 1;
              }

LABEL_39:
              __break(1u);
              return result;
            }

            goto LABEL_34;
          }

LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_32;
  }

  return result;
}

uint64_t sub_1AC7110B0()
{
  OUTLINED_FUNCTION_85();
  v1[3] = v0;
  v2 = sub_1AC79FC78();
  v1[4] = v2;
  OUTLINED_FUNCTION_22(v2);
  v1[5] = v3;
  v5 = *(v4 + 64);
  v1[6] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC711158()
{
  v1 = v0[3];
  is_remote = swift_distributed_actor_is_remote();
  v3 = v0[3];
  if (is_remote)
  {
    v4 = *(v3 + 136);
    v5 = sub_1AC5C6544();
    v0[7] = v5;
    v0[2] = v5;
    nullsub_1(v5, v6);
    v7 = v0[6];
    sub_1AC79FC88();
    v8 = swift_task_alloc();
    v0[8] = v8;
    *v8 = v0;
    v8[1] = sub_1AC7112F8;
    v9 = v0[6];
    v10 = v0[3];

    return sub_1AC5E3918(v10, v9, (v0 + 2));
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1AC6B7174, v3, 0);
  }
}

uint64_t sub_1AC7112F8()
{
  v2 = *v1;
  OUTLINED_FUNCTION_18_2();
  *v4 = v3;
  v5 = *(v2 + 64);
  *v4 = *v1;
  *(v3 + 72) = v0;

  v6 = *(v2 + 56);

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC711424()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC7114B8;

  return sub_1AC7110B0();
}

uint64_t sub_1AC7114B8()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_18_2();
  *v3 = v2;

  OUTLINED_FUNCTION_44();

  return v4();
}

uint64_t sub_1AC7115A0()
{
  OUTLINED_FUNCTION_85();
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v3;
  v1[16] = v4;
  v1[13] = v5;
  v1[14] = v6;
  v1[11] = v7;
  v1[12] = v8;
  v1[10] = v9;
  v10 = sub_1AC79FC78();
  v1[19] = v10;
  OUTLINED_FUNCTION_22(v10);
  v1[20] = v11;
  v13 = *(v12 + 64);
  v1[21] = OUTLINED_FUNCTION_126();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B928, &qword_1AC7A72B8);
  v1[22] = v14;
  OUTLINED_FUNCTION_22(v14);
  v1[23] = v15;
  v17 = *(v16 + 64);
  v1[24] = OUTLINED_FUNCTION_126();
  v18 = sub_1AC79F958();
  v1[25] = v18;
  OUTLINED_FUNCTION_22(v18);
  v1[26] = v19;
  v21 = *(v20 + 64);
  v1[27] = OUTLINED_FUNCTION_126();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA78, &qword_1AC7A7B30);
  v1[28] = v22;
  OUTLINED_FUNCTION_22(v22);
  v1[29] = v23;
  v25 = *(v24 + 64);
  v1[30] = OUTLINED_FUNCTION_126();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B900, &unk_1AC7A92C0);
  v1[31] = v26;
  OUTLINED_FUNCTION_22(v26);
  v1[32] = v27;
  v29 = *(v28 + 64) + 15;
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA90, &unk_1AC7B0E30);
  v1[35] = v30;
  OUTLINED_FUNCTION_22(v30);
  v1[36] = v31;
  v33 = *(v32 + 64);
  v1[37] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v34, v35, v36);
}

uint64_t sub_1AC711818()
{
  v1 = v0[18];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[37];
    v3 = v0[10];
    v4 = *(v0[18] + 136);
    v5 = sub_1AC5C6544();
    v0[9] = v3;
    v0[8] = v5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA88, &unk_1AC7A7B40);
    sub_1AC79FC98();
    sub_1AC5DEC18(v2);
    v11 = v0[34];
    v12 = v0[12];
    v0[2] = v0[11];
    v0[3] = v12;

    sub_1AC79FC98();
    v13 = OUTLINED_FUNCTION_200();
    sub_1AC5C6DD8(v13);
    v14 = v0[33];
    v15 = v0[14];
    v0[4] = v0[13];
    v0[5] = v15;

    sub_1AC79FC98();
    v16 = OUTLINED_FUNCTION_200();
    sub_1AC5C6DD8(v16);
    v17 = v0[30];
    (*(v0[26] + 16))(v0[27], v0[15], v0[25]);
    sub_1AC79FC98();
    OUTLINED_FUNCTION_200();
    sub_1AC5DECB0();
    v18 = v0[24];
    v19 = v0[17];
    v0[6] = v0[16];
    v0[7] = v19;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B930, &qword_1AC7A72C0);
    sub_1AC79FC98();
    v20 = OUTLINED_FUNCTION_200();
    v21 = sub_1AC5DE084(v20);
    v23 = nullsub_1(v21, v22);
    nullsub_1(v23, v24);
    v25 = v0[21];
    sub_1AC79FC88();
    v26 = swift_task_alloc();
    v0[38] = v26;
    *v26 = v0;
    v26[1] = sub_1AC711D70;
    v27 = v0[21];
    v28 = v0[18];
    OUTLINED_FUNCTION_115();

    __asm { BR              X3 }
  }

  v6 = v0[18];
  OUTLINED_FUNCTION_115();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC711D70(char a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_18_2();
  *v5 = v4;
  v7 = *(v6 + 304);
  v8 = *v2;
  OUTLINED_FUNCTION_18_2();
  *v9 = v8;
  *(v4 + 312) = v1;

  if (!v1)
  {
    *(v4 + 320) = a1 & 1;
  }

  v10 = *(v4 + 64);

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1AC711EA0()
{
  OUTLINED_FUNCTION_4_15();
  v3 = *(v2 + 240);
  v4 = *(v2 + 248);
  v5 = *(v2 + 224);
  v6 = *(v2 + 232);
  v7 = *(v2 + 184);
  v8 = *(v2 + 192);
  v9 = *(v2 + 168);
  v10 = *(v2 + 176);
  v18 = *(v2 + 216);
  v11 = *(v2 + 152);
  (*(*(v2 + 160) + 8))();
  (*(v7 + 8))(v8, v10);
  (*(v6 + 8))(v3, v5);
  v12 = *(v0 + 8);
  v12(v16, v4);
  v12(v17, v4);
  (*(v1 + 8))();

  v13 = *(v2 + 8);
  v14 = *(v2 + 320);

  return v13(v14);
}

uint64_t sub_1AC712038()
{
  OUTLINED_FUNCTION_4_15();
  v4 = v2[30];
  v3 = v2[31];
  v6 = v2[28];
  v5 = v2[29];
  v7 = v2[23];
  v8 = v2[24];
  v9 = v2[22];
  (*(v2[20] + 8))(v2[21], v2[19]);
  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  v10 = *(v0 + 8);
  v10(v17, v3);
  v10(v18, v3);
  (*(v1 + 8))();
  v11 = v2[39];
  v12 = v2[37];
  v14 = v2[33];
  v13 = v2[34];
  OUTLINED_FUNCTION_13_10();

  v15 = v2[1];

  return v15(0);
}

uint64_t sub_1AC71218C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v6 = *(v5 - 8);
  v3[4] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[5] = v8;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_1AC6E6540();
  v10 = *v8;
  v11 = a2[1];
  v3[6] = v11;
  v12 = *(v11 - 8);
  v3[7] = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v3[8] = v14;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1AC6E6540();
  v32 = *v14;
  v31 = v14[1];
  v15 = a2[2];
  v3[9] = v15;
  v16 = *(v15 - 8);
  v3[10] = v16;
  v17 = *(v16 + 64) + 15;
  v18 = swift_task_alloc();
  v3[11] = v18;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1AC6E6540();
  v29 = v18[1];
  v30 = *v18;
  v19 = a2[3];
  v3[12] = v19;
  v20 = *(v19 - 8);
  v3[13] = v20;
  v21 = *(v20 + 64) + 15;
  v3[14] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_1AC6E6540();
  v22 = a2[4];
  v3[15] = v22;
  v23 = *(v22 - 8);
  v3[16] = v23;
  v24 = *(v23 + 64) + 15;
  v25 = swift_task_alloc();
  v3[17] = v25;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1AC6E6540();
  v27 = *v25;
  v26 = v25[1];
  v28 = swift_task_alloc();
  v3[18] = v28;
  *v28 = v3;
  v28[1] = sub_1AC71274C;

  return sub_1AC7115A0();
}

uint64_t sub_1AC71274C()
{
  v1 = *(*v0 + 144);
  v35 = *(*v0 + 136);
  OUTLINED_FUNCTION_108();
  v34 = *(v2 + 128);
  OUTLINED_FUNCTION_108();
  v30 = *(v3 + 120);
  OUTLINED_FUNCTION_108();
  v33 = *(v4 + 112);
  OUTLINED_FUNCTION_108();
  v32 = *(v5 + 104);
  OUTLINED_FUNCTION_108();
  v28 = *(v6 + 96);
  OUTLINED_FUNCTION_108();
  v31 = *(v7 + 88);
  OUTLINED_FUNCTION_108();
  v29 = *(v8 + 80);
  OUTLINED_FUNCTION_108();
  v10 = *(v9 + 72);
  v27 = *(v11 + 64);
  OUTLINED_FUNCTION_108();
  v26 = *(v12 + 56);
  OUTLINED_FUNCTION_108();
  v14 = *(v13 + 48);
  v16 = v15[5];
  v17 = v15[4];
  v18 = v15[3];
  v19 = v15[2];
  v20 = *v0;
  OUTLINED_FUNCTION_18_2();
  *v21 = v20;
  *v23 = v22;

  (*(v17 + 8))(v16, v18);
  (*(v26 + 8))(v27, v14);
  (*(v29 + 8))(v31, v10);
  (*(v32 + 8))(v33, v28);
  (*(v34 + 8))(v35, v30);

  v24 = *(v20 + 8);

  return v24();
}

uint64_t sub_1AC712B48()
{
  sub_1AC7A0E78();
  type metadata accessor for EARTranscriptionEvaluator();
  OUTLINED_FUNCTION_1_19();
  sub_1AC71305C(v0, v1, v2);
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC712BC4()
{
  if ((sub_1AC79FC58() & 1) == 0)
  {
    type metadata accessor for EARTranscriptionEvaluator();
    OUTLINED_FUNCTION_1_19();
    sub_1AC71305C(v1, v2, v3);
    OUTLINED_FUNCTION_89();
    return sub_1AC79FBE8();
  }

  return v0;
}

uint64_t sub_1AC712C88()
{
  v1 = *v0;
  type metadata accessor for EARTranscriptionEvaluator();
  sub_1AC71305C(&qword_1EB56BA70, v2, type metadata accessor for EARTranscriptionEvaluator);
  return sub_1AC79FC28();
}

uint64_t sub_1AC712D00()
{
  v2 = *v0;
  sub_1AC7A0E78();
  type metadata accessor for EARTranscriptionEvaluator();
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC712D58(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for EARTranscriptionEvaluator();
  v6 = sub_1AC71305C(&qword_1EB56BA70, v5, type metadata accessor for EARTranscriptionEvaluator);

  return MEMORY[0x1EEE6CC98](v2, v3, v4, v6);
}

uint64_t sub_1AC712DE0()
{
  v1 = *v0;
  type metadata accessor for EARTranscriptionEvaluator();
  sub_1AC71305C(&qword_1EB56BA70, v2, type metadata accessor for EARTranscriptionEvaluator);
  sub_1AC6013F0();
  return sub_1AC79FC38();
}

uint64_t sub_1AC712E74@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EARTranscriptionEvaluator();
  sub_1AC71305C(&qword_1EB56BA70, v3, type metadata accessor for EARTranscriptionEvaluator);
  sub_1AC601444();
  result = sub_1AC79FC48();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

id sub_1AC713034()
{
  result = xpcInterface_EARTranscriptionEvaluator();
  qword_1EB56E888 = result;
  return result;
}

uint64_t sub_1AC71305C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void OUTLINED_FUNCTION_4_15()
{
  v1 = v0[36];
  v2 = v0[35];
  v4 = v0[37];
  v3 = v0[33];
}

uint64_t FullPayloadCorrector.__allocating_init(locale:clientID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  return FullPayloadCorrector.init(locale:clientID:)(a1, a2, a3);
}

uint64_t FullPayloadCorrector.init(locale:clientID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v51 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFD8, &qword_1AC7A83F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v50 - v9;
  v11 = sub_1AC79FB18();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v50 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v50 - v21;
  Locale.languageRegionLocale.getter(v20, v23, v24, v25, v26, v27, v28, v29, v50, v51, a1, v53, v54, v55[0], v55[1], v55[2], v55[3], v55[4], v55[5], v55[6]);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    v39 = v52;
    v40 = v19;
    sub_1AC713540(v10);
    if (off_1ED937D60 != -1)
    {
      goto LABEL_8;
    }

    while (1)
    {
      v41 = sub_1AC79FDE8();
      __swift_project_value_buffer(v41, qword_1ED9386C8);
      (*(v12 + 16))(v40, v39, v11);
      v42 = sub_1AC79FDC8();
      v43 = sub_1AC7A05F8();
      if (os_log_type_enabled(v42, v43))
      {
        v39 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v39 = 136315138;
        v53 = 0;
        v54 = 0xE000000000000000;
        v55[0] = v44;
        sub_1AC7A09C8();
        MEMORY[0x1B26E8C40](0xD000000000000052, 0x80000001AC7B8DE0);
        sub_1AC7145DC();
        v45 = sub_1AC7A0CC8();
        MEMORY[0x1B26E8C40](v45);

        MEMORY[0x1B26E8C40](46, 0xE100000000000000);
        v46 = v53;
        v47 = v54;
        v48 = *(v12 + 8);
        v12 += 8;
        v48(v40, v11);
        v11 = sub_1AC5CFE74(v46, v47, v55);

        *(v39 + 4) = v11;
        _os_log_impl(&dword_1AC5BC000, v42, v43, "Failed precondition: %s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v44);
        MEMORY[0x1B26EAB10](v44, -1, -1);
        MEMORY[0x1B26EAB10](v39, -1, -1);
      }

      else
      {

        v49 = *(v12 + 8);
        v12 += 8;
        v49(v40, v11);
      }

      __break(1u);
LABEL_8:
      swift_once();
    }
  }

  v30 = *(v12 + 32);
  v30(v22, v10, v11);
  (*(v12 + 16))(v16, v22, v11);
  v31 = type metadata accessor for FullPayloadCorrectorActor(0);
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();

  v34 = v16;
  v35 = v51;
  v36 = sub_1AC71386C(v34, v51, a3);
  (*(v12 + 8))(v52, v11);
  *(v4 + OBJC_IVAR____TtC6Speech20FullPayloadCorrector_fullPayloadCorrectorActor) = v36;
  v30((v4 + OBJC_IVAR____TtC6Speech20FullPayloadCorrector_locale), v22, v11);
  v37 = (v4 + OBJC_IVAR____TtC6Speech20FullPayloadCorrector_clientID);
  *v37 = v35;
  v37[1] = a3;
  return v4;
}

uint64_t sub_1AC713540(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFD8, &qword_1AC7A83F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FullPayloadCorrector.correctPostITNOutput(_:withOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AC7135CC, 0, 0);
}

uint64_t sub_1AC7135CC()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0[5] + OBJC_IVAR____TtC6Speech20FullPayloadCorrector_fullPayloadCorrectorActor);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1AC713670;
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  return sub_1AC713910();
}

uint64_t sub_1AC713670(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  OUTLINED_FUNCTION_50();
  v10 = *(v9 + 48);
  v13 = *v4;

  v11 = *(v13 + 8);

  return v11(a1, a2, a3 & 1, a4);
}

uint64_t FullPayloadCorrector.deinit()
{
  v1 = OBJC_IVAR____TtC6Speech20FullPayloadCorrector_locale;
  v2 = sub_1AC79FB18();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC6Speech20FullPayloadCorrector_clientID + 8);

  v4 = *(v0 + OBJC_IVAR____TtC6Speech20FullPayloadCorrector_fullPayloadCorrectorActor);

  return v0;
}

uint64_t FullPayloadCorrector.__deallocating_deinit()
{
  FullPayloadCorrector.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1AC71386C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_defaultActor_initialize();
  *(v3 + OBJC_IVAR____TtC6SpeechP33_62876FE84B3142C220F84970CC8D7F0025FullPayloadCorrectorActor__fullPayloadCorrectorService) = 0;
  v7 = OBJC_IVAR____TtC6SpeechP33_62876FE84B3142C220F84970CC8D7F0025FullPayloadCorrectorActor_locale;
  v8 = sub_1AC79FB18();
  (*(*(v8 - 8) + 32))(v3 + v7, a1, v8);
  v9 = (v3 + OBJC_IVAR____TtC6SpeechP33_62876FE84B3142C220F84970CC8D7F0025FullPayloadCorrectorActor_clientID);
  *v9 = a2;
  v9[1] = a3;
  return v3;
}

uint64_t sub_1AC713910()
{
  OUTLINED_FUNCTION_85();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = swift_task_alloc();
  v1[6] = v5;
  *v5 = v1;
  v5[1] = sub_1AC7139A0;

  return sub_1AC713EBC();
}

uint64_t sub_1AC7139A0()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  *v4 = *v1;
  *(v3 + 56) = v8;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9(v0, 0, 1, 0);
  }

  else
  {
    v11 = *(v3 + 40);

    return MEMORY[0x1EEE6DFA0](sub_1AC713AE8, v11, 0);
  }
}

uint64_t sub_1AC713AE8()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[3];
  v2 = v0[4];

  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1AC713BAC;
  v4 = v0[7];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return sub_1AC6E7B14(v4, v7, v5, v6);
}

uint64_t sub_1AC713BAC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 64);
  *v4 = *v1;
  v3[9] = v7;
  v3[10] = v0;

  if (v0)
  {
    v8 = v3[5];
    v9 = sub_1AC713E50;
  }

  else
  {
    v10 = v3[7];
    v11 = v3[5];

    v9 = sub_1AC713CC4;
    v8 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}