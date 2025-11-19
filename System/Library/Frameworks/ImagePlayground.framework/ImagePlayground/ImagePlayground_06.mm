uint64_t sub_1D2AAA2E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2AC5F94();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GenerationRecipe_V3.Prompt.Entity.Kind(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704BF0, &unk_1D2AD8510);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_1D2AAD4CC(a1, &v24 - v16, type metadata accessor for GenerationRecipe_V3.Prompt.Entity.Kind);
  sub_1D2AAD4CC(a2, &v17[v18], type metadata accessor for GenerationRecipe_V3.Prompt.Entity.Kind);
  v19 = *(v5 + 48);
  v20 = v19(v17, 2, v4);
  if (!v20)
  {
    sub_1D2AAD4CC(v17, v12, type metadata accessor for GenerationRecipe_V3.Prompt.Entity.Kind);
    if (!v19(&v17[v18], 2, v4))
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      v21 = sub_1D2AC5F74();
      v23 = *(v5 + 8);
      v23(v8, v4);
      v23(v12, v4);
      sub_1D2AAD534(v17, type metadata accessor for GenerationRecipe_V3.Prompt.Entity.Kind);
      return v21 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_9;
  }

  if (v20 == 1)
  {
    if (v19(&v17[v18], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v19(&v17[v18], 2, v4) != 2)
  {
LABEL_9:
    sub_1D2AACA64(v17);
    v21 = 0;
    return v21 & 1;
  }

  sub_1D2AAD534(v17, type metadata accessor for GenerationRecipe_V3.Prompt.Entity.Kind);
  v21 = 1;
  return v21 & 1;
}

uint64_t sub_1D2AAA5E8(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706258, &qword_1D2AD8CD8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AAD2DC();
  sub_1D2AC7494();
  if (!v1)
  {
    v10[31] = 0;
    v8 = sub_1D2AC7234();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706268, &qword_1D2AD8CE0);
    v10[15] = 1;
    sub_1D2AAD330(&qword_1EC706270, &qword_1EC706278);
    sub_1D2AC7264();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

uint64_t sub_1D2AAA824(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7064F0, &qword_1D2ADA490);
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7064F8, &qword_1D2ADA498);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706500, &qword_1D2ADA4A0);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AAEB98();
  v15 = v32;
  sub_1D2AC7494();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v32 = a1;
  v16 = v30;
  v17 = sub_1D2AC7284();
  v18 = (2 * *(v17 + 16)) | 1;
  v33 = v17;
  v34 = v17 + 32;
  v35 = 0;
  v36 = v18;
  v19 = sub_1D2A76160();
  if (v19 == 2 || v35 != v36 >> 1)
  {
    v21 = v10;
    v22 = sub_1D2AC70B4();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704680, &qword_1D2ACBA90) + 48);
    *v24 = &type metadata for GenerationRecipe_V3.DrawOnImageRecipe.AssignmentOptions;
    sub_1D2AC71F4();
    sub_1D2AC70A4();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v31 + 8))(v13, v21);
    swift_unknownObjectRelease();
    a1 = v32;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v37 = v19;
  if (v19)
  {
    v38 = 1;
    sub_1D2AAEBEC();
    sub_1D2AC71E4();
    v20 = v31;
    (*(v29 + 8))(v5, v16);
  }

  else
  {
    v38 = 0;
    sub_1D2AAEC40();
    sub_1D2AC71E4();
    v20 = v31;
    (*(v28 + 8))(v9, v6);
  }

  (*(v20 + 8))(v13, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v32);
  return v37 & 1;
}

uint64_t sub_1D2AAACE0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x67616D4965736162 && a2 == 0xED00006174614465;
  if (v3 || (sub_1D2AC7354() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D49686374656B73 && a2 == 0xEF61746144656761 || (sub_1D2AC7354() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614D686374656B73 && a2 == 0xEE00617461446B73 || (sub_1D2AC7354() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x67616D4965736162 && a2 == 0xEE006F6974615265 || (sub_1D2AC7354() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D2ADF2B0 == a2 || (sub_1D2AC7354() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D2ADF2D0 == a2 || (sub_1D2AC7354() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001D2ADF310 == a2 || (sub_1D2AC7354() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1D2AC7354();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1D2AAAF8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706468, &qword_1D2ADA050);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v31[-v8];
  v10 = sub_1D2AC5F94();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v31[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D2AC5F84();
  sub_1D2AC5F64();
  v60 = v15;
  (*(v11 + 8))(v14, v10);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AAE544();
  sub_1D2AC7494();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    LOBYTE(v38) = 0;
    sub_1D2A723B8();
    sub_1D2AC7224();
    v37 = v44;
    LOBYTE(v38) = 1;
    sub_1D2AC7224();
    v35 = *(&v44 + 1);
    v36 = v44;
    LOBYTE(v38) = 2;
    sub_1D2AC7224();
    v17 = *(&v44 + 1);
    v34 = v44;
    LOBYTE(v44) = 3;
    sub_1D2AC7254();
    v19 = v18;
    LOBYTE(v44) = 4;
    sub_1D2AC7254();
    v21 = v20;
    LOBYTE(v44) = 5;
    v22 = sub_1D2AC7244();
    LOBYTE(v38) = 6;
    sub_1D2AAE598();
    sub_1D2AC7264();
    v32 = v44;
    v57 = 7;
    v33 = sub_1D2AC7234();
    v24 = v23;
    LOBYTE(v22) = v22 & 1;
    (*(v6 + 8))(v9, v5);

    v25 = v37;
    v38 = v37;
    v26 = *(&v37 + 1);
    *&v39 = v36;
    v27 = v35;
    *(&v39 + 1) = v35;
    *&v40 = v34;
    *(&v40 + 1) = v17;
    *&v41 = v19;
    *(&v41 + 1) = v21;
    LOBYTE(v42) = v22;
    BYTE1(v42) = v32;
    *(&v42 + 2) = v58;
    WORD3(v42) = v59;
    *(&v42 + 1) = v33;
    v43 = v24;
    sub_1D2AAE5EC(&v38, &v44);
    __swift_destroy_boxed_opaque_existential_0(a1);
    *&v44 = v25;
    *(&v44 + 1) = v26;
    v45 = v36;
    v46 = v27;
    v47 = v34;
    v48 = v17;
    v49 = v19;
    v50 = v21;
    v51 = v22;
    v52 = v32;
    v53 = v58;
    v54 = v59;
    v55 = v33;
    v56 = v24;
    result = sub_1D2AAE624(&v44);
    v29 = v41;
    *(a2 + 32) = v40;
    *(a2 + 48) = v29;
    *(a2 + 64) = v42;
    *(a2 + 80) = v43;
    v30 = v39;
    *a2 = v38;
    *(a2 + 16) = v30;
  }

  return result;
}

uint64_t sub_1D2AAB5B8(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706458, &qword_1D2ADA048);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AAE4F0();
  sub_1D2AC7494();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    LOBYTE(v13) = 0;
    v8 = sub_1D2AC7234();
    v12[15] = 1;
    sub_1D2A723B8();
    sub_1D2AC7264();
    (*(v4 + 8))(v7, v3);
    v10 = v13;
    v11 = v14;

    sub_1D2A479B4(v10, v11);
    __swift_destroy_boxed_opaque_existential_0(a1);

    sub_1D2A47944(v10, v11);
  }

  return v8;
}

uint64_t sub_1D2AAB7D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706448, &qword_1D2ADA040);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AAE49C();
  sub_1D2AC7494();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_1D2A47930(0, 0xF000000000000000);
  }

  else
  {
    LOBYTE(v23) = 0;
    v11 = sub_1D2AC7234();
    v13 = v12;
    v22 = v11;
    LOBYTE(v23) = 1;
    v14 = sub_1D2AC7204();
    v16 = v15;
    v21 = v14;
    v25 = 2;
    sub_1D2A723B8();
    sub_1D2AC7224();
    (*(v6 + 8))(v9, v5);
    v17 = v23;
    v18 = v24;
    sub_1D2A47930(0, 0xF000000000000000);

    sub_1D2A479A0(v17, v18);
    __swift_destroy_boxed_opaque_existential_0(a1);

    result = sub_1D2A47930(v17, v18);
    v20 = v21;
    *a2 = v22;
    a2[1] = v13;
    a2[2] = v20;
    a2[3] = v16;
    a2[4] = v17;
    a2[5] = v18;
  }

  return result;
}

__n128 sub_1D2AABA78@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706170, &qword_1D2AD8C60);
  v80 = *(v72 - 8);
  v3 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v85.n128_u64[0] = &v67 - v4;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706178, &qword_1D2AD8C68);
  v81 = *(v78 - 8);
  v5 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v84 = &v67 - v6;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706180, &qword_1D2AD8C70);
  v79 = *(v75 - 8);
  v7 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v83 = &v67 - v8;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706188, &qword_1D2AD8C78);
  v76 = *(v77 - 8);
  v9 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v82 = &v67 - v10;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706190, &qword_1D2AD8C80);
  v73 = *(v74 - 8);
  v11 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v13 = &v67 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706198, &qword_1D2AD8C88);
  v71 = *(v14 - 8);
  v15 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v67 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7061A0, &unk_1D2AD8C90);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v67 - v21;
  v23 = a1[3];
  v24 = a1[4];
  v101 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1D2AACDF0();
  v25 = v87;
  sub_1D2AC7494();
  if (v25)
  {
    goto LABEL_13;
  }

  v26 = v17;
  v68 = v14;
  v69 = v13;
  v27 = v82;
  v28 = v83;
  v29 = v84;
  v30 = v85.n128_u64[0];
  v70 = 0;
  *&v87 = v19;
  v31 = v86;
  v32 = sub_1D2AC7284();
  v33 = (2 * *(v32 + 16)) | 1;
  v97 = v32;
  v98 = v32 + 32;
  v99 = 0;
  v100 = v33;
  v34 = sub_1D2A76168();
  if (v34 == 6 || v99 != v100 >> 1)
  {
    v39 = sub_1D2AC70B4();
    swift_allocError();
    v41 = v40;
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704680, &qword_1D2ACBA90) + 48);
    *v41 = &type metadata for GenerationRecipe_V3.Ingredient;
    sub_1D2AC71F4();
    sub_1D2AC70A4();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v39);
    swift_willThrow();
LABEL_10:
    v37 = v87;
    goto LABEL_11;
  }

  if (v34 > 2u)
  {
    if (v34 == 3)
    {
      LOBYTE(v88) = 3;
      sub_1D2AACF40();
      v50 = v70;
      sub_1D2AC71E4();
      v37 = v87;
      if (!v50)
      {
        sub_1D2AACF94();
        v51 = v75;
        sub_1D2AC7264();
        v70 = 0;
        (*(v79 + 8))(v28, v51);
        v59 = *(v37 + 8);
        v26 = (v37 + 8);
        v59(v22, v18);
        swift_unknownObjectRelease();
        v61 = v88;
        v62 = v89;
        v63 = 0x6000000000000000;
        v87 = v90;
        goto LABEL_28;
      }

      goto LABEL_11;
    }

    v44 = v87;
    if (v34 == 4)
    {
      LOBYTE(v88) = 4;
      sub_1D2AACE98();
      v45 = v70;
      sub_1D2AC71E4();
      if (!v45)
      {
        sub_1D2AACEEC();
        v46 = v78;
        sub_1D2AC7264();
        v70 = 0;
        (*(v81 + 8))(v29, v46);
        (*(v44 + 8))(v22, v18);
        swift_unknownObjectRelease();
        v61 = v88;
        v62 = v89;
        v63 = 0x8000000000000000;
        v87 = v90;
        v85 = v91;
LABEL_27:
        v31 = v86;
        goto LABEL_28;
      }
    }

    else
    {
      LOBYTE(v88) = 5;
      sub_1D2AACE44();
      v28 = v30;
      v55 = v70;
      sub_1D2AC71E4();
      if (!v55)
      {
        v56 = v72;
        v57 = sub_1D2AC7234();
        v70 = 0;
        v62 = v65;
        v66 = v57;
        (*(v80 + 8))(v28, v56);
        v61 = v66;
        (*(v44 + 8))(v22, v18);
        swift_unknownObjectRelease();
        v63 = 0xA000000000000000;
        goto LABEL_27;
      }
    }

    (*(v44 + 8))(v22, v18);
    goto LABEL_12;
  }

  if (!v34)
  {
    LOBYTE(v88) = 0;
    sub_1D2AAD138();
    v47 = v70;
    sub_1D2AC71E4();
    if (!v47)
    {
      v48 = v68;
      v49 = sub_1D2AC7234();
      v70 = 0;
      v61 = v49;
      v62 = v58;
      (*(v71 + 8))(v26, v48);
      v26 = (v87 + 8);
      (*(v87 + 8))(v22, v18);
      swift_unknownObjectRelease();
      v63 = 0;
      goto LABEL_28;
    }

    goto LABEL_10;
  }

  if (v34 != 1)
  {
    LOBYTE(v88) = 2;
    sub_1D2AACFE8();
    v52 = v27;
    v53 = v70;
    sub_1D2AC71E4();
    v37 = v87;
    if (!v53)
    {
      sub_1D2AAD03C();
      v54 = v77;
      sub_1D2AC7264();
      v70 = 0;
      (*(v76 + 8))(v52, v54);
      (*(v37 + 8))(v22, v18);
      swift_unknownObjectRelease();
      v61 = v88;
      v62 = v89;
      v87 = v90;
      v85 = v91;
      v28 = v92;
      v26 = v93;
      v22 = v95;
      v18 = v96;
      v63 = v94 & 0x101 | 0x4000000000000000;
      goto LABEL_28;
    }

    goto LABEL_11;
  }

  LOBYTE(v88) = 1;
  sub_1D2AAD090();
  v35 = v69;
  v36 = v70;
  sub_1D2AC71E4();
  v37 = v87;
  if (v36)
  {
LABEL_11:
    (*(v37 + 8))(v22, v18);
LABEL_12:
    swift_unknownObjectRelease();
LABEL_13:
    __swift_destroy_boxed_opaque_existential_0(v101);
    return result;
  }

  sub_1D2AAD0E4();
  v38 = v74;
  sub_1D2AC7264();
  v70 = 0;
  (*(v73 + 8))(v35, v38);
  v60 = *(v37 + 8);
  v26 = (v37 + 8);
  v60(v22, v18);
  swift_unknownObjectRelease();
  v61 = v88;
  v62 = v89;
  v63 = 0x2000000000000000;
  *&v64 = v90;
  v87 = v64;
LABEL_28:
  __swift_destroy_boxed_opaque_existential_0(v101);
  *v31 = v61;
  *(v31 + 8) = v62;
  result = v85;
  *(v31 + 16) = v87;
  *(v31 + 32) = result;
  *(v31 + 48) = v28;
  *(v31 + 56) = v26;
  *(v31 + 64) = v63;
  *(v31 + 72) = v22;
  *(v31 + 80) = v18;
  return result;
}

uint64_t sub_1D2AAC69C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7060F8, &qword_1D2AD84F8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_1D2AAC8D0();
  sub_1D2AC7494();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706108, &qword_1D2AD8500);
    v10[7] = 0;
    sub_1D2AAC978(&qword_1EC706110, sub_1D2AAC924);
    sub_1D2AC7264();
    v8 = v11;
    v10[6] = 1;
    sub_1D2AC7214();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

unint64_t sub_1D2AAC8D0()
{
  result = qword_1EC706100;
  if (!qword_1EC706100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706100);
  }

  return result;
}

unint64_t sub_1D2AAC924()
{
  result = qword_1EC706118;
  if (!qword_1EC706118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706118);
  }

  return result;
}

uint64_t sub_1D2AAC978(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC706108, &qword_1D2AD8500);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D2AAC9F0()
{
  result = qword_1EC706130;
  if (!qword_1EC706130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706130);
  }

  return result;
}

uint64_t sub_1D2AACA64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704BF0, &unk_1D2AD8510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D2AACB24()
{
  type metadata accessor for GenerationRecipe_V3.Prompt.Entity.Kind(319);
  if (v0 <= 0x3F)
  {
    sub_1D2A72FB0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D2AACBFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 64) >> 2) & 0xFFFFFF80 | (*(a1 + 64) >> 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1D2AACC50(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 88) = 1;
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
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      *(a1 + 64) = (4 * -a2) & 0x3FFFFFE00 | (2 * (-a2 & 0x7FLL));
      return result;
    }

    *(a1 + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D2AACCEC()
{
  result = qword_1EC706158;
  if (!qword_1EC706158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706158);
  }

  return result;
}

unint64_t sub_1D2AACD44()
{
  result = qword_1EC706160;
  if (!qword_1EC706160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706160);
  }

  return result;
}

unint64_t sub_1D2AACD9C()
{
  result = qword_1EC706168;
  if (!qword_1EC706168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706168);
  }

  return result;
}

unint64_t sub_1D2AACDF0()
{
  result = qword_1EC7061A8;
  if (!qword_1EC7061A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7061A8);
  }

  return result;
}

unint64_t sub_1D2AACE44()
{
  result = qword_1EC7061B0;
  if (!qword_1EC7061B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7061B0);
  }

  return result;
}

unint64_t sub_1D2AACE98()
{
  result = qword_1EC7061B8;
  if (!qword_1EC7061B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7061B8);
  }

  return result;
}

unint64_t sub_1D2AACEEC()
{
  result = qword_1EC7061C0;
  if (!qword_1EC7061C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7061C0);
  }

  return result;
}

unint64_t sub_1D2AACF40()
{
  result = qword_1EC7061C8;
  if (!qword_1EC7061C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7061C8);
  }

  return result;
}

unint64_t sub_1D2AACF94()
{
  result = qword_1EC7061D0;
  if (!qword_1EC7061D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7061D0);
  }

  return result;
}

unint64_t sub_1D2AACFE8()
{
  result = qword_1EC7061D8;
  if (!qword_1EC7061D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7061D8);
  }

  return result;
}

unint64_t sub_1D2AAD03C()
{
  result = qword_1EC7061E0;
  if (!qword_1EC7061E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7061E0);
  }

  return result;
}

unint64_t sub_1D2AAD090()
{
  result = qword_1EC7061E8;
  if (!qword_1EC7061E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7061E8);
  }

  return result;
}

unint64_t sub_1D2AAD0E4()
{
  result = qword_1EC7061F0;
  if (!qword_1EC7061F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7061F0);
  }

  return result;
}

unint64_t sub_1D2AAD138()
{
  result = qword_1EC7061F8;
  if (!qword_1EC7061F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7061F8);
  }

  return result;
}

unint64_t sub_1D2AAD18C()
{
  result = qword_1EC706238;
  if (!qword_1EC706238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706238);
  }

  return result;
}

unint64_t sub_1D2AAD1E0()
{
  result = qword_1EC706240;
  if (!qword_1EC706240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706240);
  }

  return result;
}

unint64_t sub_1D2AAD234()
{
  result = qword_1EC706248;
  if (!qword_1EC706248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706248);
  }

  return result;
}

unint64_t sub_1D2AAD288()
{
  result = qword_1EC706250;
  if (!qword_1EC706250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706250);
  }

  return result;
}

unint64_t sub_1D2AAD2DC()
{
  result = qword_1EC706260;
  if (!qword_1EC706260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706260);
  }

  return result;
}

uint64_t sub_1D2AAD330(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC706268, &qword_1D2AD8CE0);
    sub_1D2AAD3CC(a2, type metadata accessor for GenerationRecipe_V3.Prompt.Entity);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D2AAD3CC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D2AAD414()
{
  result = qword_1EC7062A0;
  if (!qword_1EC7062A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7062A0);
  }

  return result;
}

uint64_t sub_1D2AAD468(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerationRecipe_V3.Prompt.Entity.Kind(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2AAD4CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2AAD534(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D2AAD594()
{
  result = qword_1EC7062E0;
  if (!qword_1EC7062E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7062E0);
  }

  return result;
}

unint64_t sub_1D2AAD5E8()
{
  result = qword_1EC7062E8;
  if (!qword_1EC7062E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7062E8);
  }

  return result;
}

unint64_t sub_1D2AAD63C()
{
  result = qword_1EC7062F0;
  if (!qword_1EC7062F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7062F0);
  }

  return result;
}

unint64_t sub_1D2AAD690()
{
  result = qword_1EC7062F8;
  if (!qword_1EC7062F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7062F8);
  }

  return result;
}

unint64_t sub_1D2AAD7E8()
{
  result = qword_1EC706320;
  if (!qword_1EC706320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706320);
  }

  return result;
}

unint64_t sub_1D2AAD840()
{
  result = qword_1EC706328;
  if (!qword_1EC706328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706328);
  }

  return result;
}

unint64_t sub_1D2AAD898()
{
  result = qword_1EC706330;
  if (!qword_1EC706330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706330);
  }

  return result;
}

unint64_t sub_1D2AAD8F0()
{
  result = qword_1EC706338;
  if (!qword_1EC706338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706338);
  }

  return result;
}

unint64_t sub_1D2AAD948()
{
  result = qword_1EC706340;
  if (!qword_1EC706340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706340);
  }

  return result;
}

unint64_t sub_1D2AAD9A0()
{
  result = qword_1EC706348;
  if (!qword_1EC706348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706348);
  }

  return result;
}

unint64_t sub_1D2AAD9F8()
{
  result = qword_1EC706350;
  if (!qword_1EC706350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706350);
  }

  return result;
}

unint64_t sub_1D2AADA50()
{
  result = qword_1EC706358;
  if (!qword_1EC706358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706358);
  }

  return result;
}

unint64_t sub_1D2AADAA8()
{
  result = qword_1EC706360;
  if (!qword_1EC706360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706360);
  }

  return result;
}

unint64_t sub_1D2AADB00()
{
  result = qword_1EC706368;
  if (!qword_1EC706368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706368);
  }

  return result;
}

unint64_t sub_1D2AADB58()
{
  result = qword_1EC706370;
  if (!qword_1EC706370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706370);
  }

  return result;
}

unint64_t sub_1D2AADBB0()
{
  result = qword_1EC706378;
  if (!qword_1EC706378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706378);
  }

  return result;
}

unint64_t sub_1D2AADC08()
{
  result = qword_1EC706380;
  if (!qword_1EC706380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706380);
  }

  return result;
}

unint64_t sub_1D2AADC60()
{
  result = qword_1EC706388;
  if (!qword_1EC706388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706388);
  }

  return result;
}

unint64_t sub_1D2AADCB8()
{
  result = qword_1EC706390;
  if (!qword_1EC706390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706390);
  }

  return result;
}

unint64_t sub_1D2AADD10()
{
  result = qword_1EC706398;
  if (!qword_1EC706398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706398);
  }

  return result;
}

unint64_t sub_1D2AADD68()
{
  result = qword_1EC7063A0;
  if (!qword_1EC7063A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7063A0);
  }

  return result;
}

unint64_t sub_1D2AADDC0()
{
  result = qword_1EC7063A8;
  if (!qword_1EC7063A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7063A8);
  }

  return result;
}

unint64_t sub_1D2AADE18()
{
  result = qword_1EC7063B0;
  if (!qword_1EC7063B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7063B0);
  }

  return result;
}

unint64_t sub_1D2AADE70()
{
  result = qword_1EC7063B8;
  if (!qword_1EC7063B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7063B8);
  }

  return result;
}

unint64_t sub_1D2AADEC8()
{
  result = qword_1EC7063C0;
  if (!qword_1EC7063C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7063C0);
  }

  return result;
}

unint64_t sub_1D2AADF20()
{
  result = qword_1EC7063C8;
  if (!qword_1EC7063C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7063C8);
  }

  return result;
}

unint64_t sub_1D2AADF78()
{
  result = qword_1EC7063D0;
  if (!qword_1EC7063D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7063D0);
  }

  return result;
}

unint64_t sub_1D2AADFD0()
{
  result = qword_1EC7063D8;
  if (!qword_1EC7063D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7063D8);
  }

  return result;
}

unint64_t sub_1D2AAE028()
{
  result = qword_1EC7063E0;
  if (!qword_1EC7063E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7063E0);
  }

  return result;
}

unint64_t sub_1D2AAE080()
{
  result = qword_1EC7063E8;
  if (!qword_1EC7063E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7063E8);
  }

  return result;
}

unint64_t sub_1D2AAE0D8()
{
  result = qword_1EC7063F0;
  if (!qword_1EC7063F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7063F0);
  }

  return result;
}

unint64_t sub_1D2AAE130()
{
  result = qword_1EC7063F8;
  if (!qword_1EC7063F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7063F8);
  }

  return result;
}

unint64_t sub_1D2AAE188()
{
  result = qword_1EC706400;
  if (!qword_1EC706400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706400);
  }

  return result;
}

unint64_t sub_1D2AAE1E0()
{
  result = qword_1EC706408;
  if (!qword_1EC706408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706408);
  }

  return result;
}

unint64_t sub_1D2AAE238()
{
  result = qword_1EC706410;
  if (!qword_1EC706410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706410);
  }

  return result;
}

unint64_t sub_1D2AAE290()
{
  result = qword_1EC706418;
  if (!qword_1EC706418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706418);
  }

  return result;
}

unint64_t sub_1D2AAE2E8()
{
  result = qword_1EC706420;
  if (!qword_1EC706420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706420);
  }

  return result;
}

unint64_t sub_1D2AAE340()
{
  result = qword_1EC706428;
  if (!qword_1EC706428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706428);
  }

  return result;
}

unint64_t sub_1D2AAE398()
{
  result = qword_1EC706430;
  if (!qword_1EC706430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706430);
  }

  return result;
}

unint64_t sub_1D2AAE3F0()
{
  result = qword_1EC706438;
  if (!qword_1EC706438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706438);
  }

  return result;
}

unint64_t sub_1D2AAE448()
{
  result = qword_1EC706440;
  if (!qword_1EC706440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706440);
  }

  return result;
}

unint64_t sub_1D2AAE49C()
{
  result = qword_1EC706450;
  if (!qword_1EC706450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706450);
  }

  return result;
}

unint64_t sub_1D2AAE4F0()
{
  result = qword_1EC706460;
  if (!qword_1EC706460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706460);
  }

  return result;
}

unint64_t sub_1D2AAE544()
{
  result = qword_1EC706470;
  if (!qword_1EC706470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706470);
  }

  return result;
}

unint64_t sub_1D2AAE598()
{
  result = qword_1EC706478;
  if (!qword_1EC706478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706478);
  }

  return result;
}

unint64_t sub_1D2AAE654()
{
  result = qword_1EC706498;
  if (!qword_1EC706498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706498);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenerationRecipe_V3.DrawOnImageRecipe.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GenerationRecipe_V3.DrawOnImageRecipe.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D2AAE82C()
{
  result = qword_1EC7064A0;
  if (!qword_1EC7064A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7064A0);
  }

  return result;
}

unint64_t sub_1D2AAE884()
{
  result = qword_1EC7064A8;
  if (!qword_1EC7064A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7064A8);
  }

  return result;
}

unint64_t sub_1D2AAE8DC()
{
  result = qword_1EC7064B0;
  if (!qword_1EC7064B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7064B0);
  }

  return result;
}

unint64_t sub_1D2AAE934()
{
  result = qword_1EC7064B8;
  if (!qword_1EC7064B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7064B8);
  }

  return result;
}

unint64_t sub_1D2AAE98C()
{
  result = qword_1EC7064C0;
  if (!qword_1EC7064C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7064C0);
  }

  return result;
}

unint64_t sub_1D2AAE9E4()
{
  result = qword_1EC7064C8;
  if (!qword_1EC7064C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7064C8);
  }

  return result;
}

unint64_t sub_1D2AAEA3C()
{
  result = qword_1EC7064D0;
  if (!qword_1EC7064D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7064D0);
  }

  return result;
}

unint64_t sub_1D2AAEA94()
{
  result = qword_1EC7064D8;
  if (!qword_1EC7064D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7064D8);
  }

  return result;
}

unint64_t sub_1D2AAEAEC()
{
  result = qword_1EC7064E0;
  if (!qword_1EC7064E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7064E0);
  }

  return result;
}

unint64_t sub_1D2AAEB44()
{
  result = qword_1EC7064E8;
  if (!qword_1EC7064E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7064E8);
  }

  return result;
}

unint64_t sub_1D2AAEB98()
{
  result = qword_1EC706508;
  if (!qword_1EC706508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706508);
  }

  return result;
}

unint64_t sub_1D2AAEBEC()
{
  result = qword_1EC706510;
  if (!qword_1EC706510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706510);
  }

  return result;
}

unint64_t sub_1D2AAEC40()
{
  result = qword_1EC706518;
  if (!qword_1EC706518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706518);
  }

  return result;
}

unint64_t sub_1D2AAECC8()
{
  result = qword_1EC706538;
  if (!qword_1EC706538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706538);
  }

  return result;
}

unint64_t sub_1D2AAED20()
{
  result = qword_1EC706540;
  if (!qword_1EC706540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706540);
  }

  return result;
}

unint64_t sub_1D2AAED78()
{
  result = qword_1EC706548;
  if (!qword_1EC706548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706548);
  }

  return result;
}

unint64_t sub_1D2AAEDD0()
{
  result = qword_1EC706550;
  if (!qword_1EC706550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706550);
  }

  return result;
}

unint64_t sub_1D2AAEE28()
{
  result = qword_1EC706558;
  if (!qword_1EC706558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706558);
  }

  return result;
}

unint64_t sub_1D2AAEE80()
{
  result = qword_1EC706560;
  if (!qword_1EC706560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706560);
  }

  return result;
}

unint64_t sub_1D2AAEED8()
{
  result = qword_1EC706568;
  if (!qword_1EC706568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706568);
  }

  return result;
}

uint64_t sub_1D2AAEF2C(char a1, char a2)
{
  if (a1 == a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1D2AC7354();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1D2AAEF90(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 1684099177;
    }

    else
    {
      v3 = 0x656E6F685069;
    }

    if (v2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE300000000000000;
    v3 = 6512973;
  }

  else if (a1 == 3)
  {
    v3 = 0xD000000000000010;
    v4 = 0x80000001D2ADD5F0;
  }

  else
  {
    v4 = 0xE500000000000000;
    v3 = 0x726568744FLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 1684099177;
    }

    else
    {
      v6 = 0x656E6F685069;
    }

    if (a2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE300000000000000;
    if (v3 != 6512973)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x80000001D2ADD5F0;
    if (v3 != 0xD000000000000010)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    if (v3 != 0x726568744FLL)
    {
LABEL_31:
      v7 = sub_1D2AC7354();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_1D2AAF108(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD00000000000001ELL;
    }

    else
    {
      v3 = 0x726F74696465;
    }

    if (v2)
    {
      v4 = 0x80000001D2ADD540;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x80000001D2ADD560;
    v3 = 0xD00000000000001FLL;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD000000000000014;
    }

    else
    {
      v3 = 0xD000000000000015;
    }

    if (v2 == 3)
    {
      v4 = 0x80000001D2ADD580;
    }

    else
    {
      v4 = 0x80000001D2ADD5A0;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0xD00000000000001ELL;
    }

    else
    {
      v7 = 0x726F74696465;
    }

    if (a2)
    {
      v6 = 0x80000001D2ADD540;
    }

    else
    {
      v6 = 0xE600000000000000;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0x80000001D2ADD560;
    if (v3 != 0xD00000000000001FLL)
    {
LABEL_37:
      v8 = sub_1D2AC7354();
      goto LABEL_38;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0xD000000000000014;
    }

    else
    {
      v5 = 0xD000000000000015;
    }

    if (a2 == 3)
    {
      v6 = 0x80000001D2ADD580;
    }

    else
    {
      v6 = 0x80000001D2ADD5A0;
    }

    if (v3 != v5)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_37;
  }

  v8 = 1;
LABEL_38:

  return v8 & 1;
}

void static DeviceClass.current.getter(char *a1@<X8>)
{
  if (qword_1EE089330 != -1)
  {
    swift_once();
  }

  v2 = off_1EE089338;
  v3 = [objc_opt_self() processInfo];
  v4 = [v3 isMacCatalystApp];

  if (v4)
  {
    deviceClassNumber = 9;
    if (!v2[2])
    {
      goto LABEL_10;
    }

LABEL_8:
    v8 = sub_1D2AAF8D0(deviceClassNumber);
    if (v9)
    {
      v10 = *(v2[7] + v8);
LABEL_11:
      *a1 = v10;
      return;
    }

LABEL_10:
    v10 = 4;
    goto LABEL_11;
  }

  v6 = MobileGestalt_get_current_device();
  if (v6)
  {
    v7 = v6;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    if (!v2[2])
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  __break(1u);
}

void *sub_1D2AAF388()
{
  result = sub_1D2A48B4C(&unk_1F4DF9B88);
  off_1EE089338 = result;
  return result;
}

ImagePlayground::DeviceClass_optional __swiftcall DeviceClass.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D2AC71D4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DeviceClass.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x656E6F685069;
  v3 = 6512973;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x726568744FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1684099177;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D2AAF4A0()
{
  v1 = *v0;
  sub_1D2AC7444();
  sub_1D2AC6C74();

  return sub_1D2AC7484();
}

uint64_t sub_1D2AAF570()
{
  *v0;
  *v0;
  *v0;
  sub_1D2AC6C74();
}

uint64_t sub_1D2AAF62C()
{
  v1 = *v0;
  sub_1D2AC7444();
  sub_1D2AC6C74();

  return sub_1D2AC7484();
}

void sub_1D2AAF704(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656E6F685069;
  v5 = 0xE300000000000000;
  v6 = 6512973;
  v7 = 0x80000001D2ADD5F0;
  v8 = 0xD000000000000010;
  if (v2 != 3)
  {
    v8 = 0x726568744FLL;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1684099177;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1D2AAF790(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1D2AC7444();
  type metadata accessor for CFString(0);
  sub_1D2AAF980();
  sub_1D2AC6104();
  v4 = sub_1D2AC7484();

  return sub_1D2AAFA6C(a1, v4);
}

unint64_t sub_1D2AAF814(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1D2AC7044();

  return sub_1D2AAFB48(a1, v5);
}

unint64_t sub_1D2AAF858(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1D2AC7444();
  sub_1D2AC6C74();
  v6 = sub_1D2AC7484();

  return sub_1D2AAFC10(a1, a2, v6);
}

unint64_t sub_1D2AAF8D0(unsigned int a1)
{
  v3 = MEMORY[0x1D38A7870](*(v1 + 40), a1, 4);

  return sub_1D2AAFD78(a1, v3);
}

unint64_t sub_1D2AAF91C()
{
  result = qword_1EC706570;
  if (!qword_1EC706570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706570);
  }

  return result;
}

unint64_t sub_1D2AAF980()
{
  result = qword_1EC706578;
  if (!qword_1EC706578)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706578);
  }

  return result;
}

unint64_t sub_1D2AAF9D8(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1D2AC6C24();
  sub_1D2AC7444();
  sub_1D2AC6C74();
  v4 = sub_1D2AC7484();

  return sub_1D2AAFDE4(a1, v4);
}

unint64_t sub_1D2AAFA6C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1D2AAF980();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1D2AC60F4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1D2AAFB48(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1D2AAFCC8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1D38A7490](v9, a1);
      sub_1D2AAFD24(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1D2AAFC10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1D2AC7354())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1D2AAFD78(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D2AAFDE4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1D2AC6C24();
      v9 = v8;
      if (v7 == sub_1D2AC6C24() && v9 == v10)
      {
        break;
      }

      v12 = sub_1D2AC7354();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t ImageCreator.__allocating_init()()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);
  swift_allocObject();
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D2AAFFAC;

  return ImageCreator.init()();
}

uint64_t sub_1D2AAFFAC(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t ImageCreator.init()()
{
  v1[3] = v0;
  v1[4] = *v0;
  v2 = type metadata accessor for GPAppExtensionConnection(0);
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = sub_1D2AC6154();
  v1[8] = v5;
  v6 = *(v5 - 8);
  v1[9] = v6;
  v7 = *(v6 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v8 = sub_1D2AC6184();
  v1[12] = v8;
  v9 = *(v8 - 8);
  v1[13] = v9;
  v10 = *(v9 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v11 = sub_1D2AC6194();
  v1[16] = v11;
  v12 = *(v11 - 8);
  v1[17] = v12;
  v13 = *(v12 + 64) + 15;
  v1[18] = swift_task_alloc();
  v14 = sub_1D2AC61D4();
  v1[19] = v14;
  v15 = *(v14 - 8);
  v1[20] = v15;
  v16 = *(v15 + 64) + 15;
  v1[21] = swift_task_alloc();
  v17 = sub_1D2AC61B4();
  v1[22] = v17;
  v18 = *(v17 - 8);
  v1[23] = v18;
  v19 = *(v18 + 64) + 15;
  v1[24] = swift_task_alloc();
  v20 = sub_1D2AC5FD4();
  v1[25] = v20;
  v21 = *(v20 - 8);
  v1[26] = v21;
  v22 = *(v21 + 64) + 15;
  v1[27] = swift_task_alloc();
  v23 = sub_1D2AC6224();
  v1[28] = v23;
  v24 = *(v23 - 8);
  v1[29] = v24;
  v25 = *(v24 + 64) + 15;
  v1[30] = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706598, &qword_1D2ADA810) - 8) + 64) + 15;
  v1[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2AB0468, 0, 0);
}

uint64_t sub_1D2AB0468()
{
  v99 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);
  v4 = *(v0 + 192);
  v5 = *(v0 + 184);
  v88 = *(v0 + 240);
  v89 = *(v0 + 176);
  v6 = *(v0 + 160);
  v7 = *(v0 + 168);
  v86 = *(v0 + 200);
  v87 = *(v0 + 152);
  v90 = *(v0 + 144);
  v91 = *(v0 + 136);
  v95 = *(v0 + 128);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  v10 = *(v0 + 24);
  v11 = OBJC_IVAR____TtC15ImagePlayground12ImageCreator_connection;
  *(v0 + 256) = OBJC_IVAR____TtC15ImagePlayground12ImageCreator_connection;
  v12 = (v10 + v11);
  (*(v9 + 56))(v1, 1, 1, v8);
  *v12 = 0;
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7065A8, &qword_1D2ADA818) + 28);
  *(v0 + 288) = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7065B0, &unk_1D2ADA820);
  bzero(v12 + v13, *(*(v14 - 8) + 64));
  sub_1D2AB137C(v1, v12 + v13);
  type metadata accessor for DeviceSupport();
  sub_1D2AB8504(v3);
  (*(v2 + 16))(v7, v3, v86);
  (*(v6 + 104))(v7, *MEMORY[0x1E69A12B0], v87);
  sub_1D2AC61A4();
  sub_1D2AC6204();
  (*(v5 + 8))(v4, v89);
  (*(v2 + 8))(v3, v86);
  sub_1D2AC61C4();
  v15 = (*(v91 + 88))(v90, v95);
  if (v15 == *MEMORY[0x1E69A0EF8])
  {
    v16 = *(v0 + 144);
    v17 = *(v0 + 88);
    v18 = *(v0 + 64);
    v19 = *(v0 + 72);
    (*(*(v0 + 136) + 96))(v16, *(v0 + 128));
    (*(v19 + 32))(v17, v16, v18);
    if (qword_1EE0888F0 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 80);
    v21 = *(v0 + 88);
    v22 = *(v0 + 64);
    v23 = *(v0 + 72);
    v24 = sub_1D2AC63B4();
    __swift_project_value_buffer(v24, qword_1EE0888F8);
    (*(v23 + 16))(v20, v21, v22);
    v25 = sub_1D2AC6394();
    v26 = sub_1D2AC6EB4();
    v27 = os_log_type_enabled(v25, v26);
    v29 = *(v0 + 72);
    v28 = *(v0 + 80);
    v30 = *(v0 + 64);
    if (v27)
    {
      v92 = *(v0 + 64);
      v31 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v98[0] = v96;
      *v31 = 136315138;
      sub_1D2AC6144();
      sub_1D2AC6134();
      sub_1D2AB5378(&qword_1EC7065B8, MEMORY[0x1E69A0F90]);
      v32 = sub_1D2AC6E24();
      v34 = v33;

      v35 = *(v29 + 8);
      v35(v28, v92);
      v36 = sub_1D2ABAFCC(v32, v34, v98);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_1D2A17000, v25, v26, "ImagePlayground is restricted: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v96);
      MEMORY[0x1D38A8460](v96, -1, -1);
      MEMORY[0x1D38A8460](v31, -1, -1);
    }

    else
    {

      v35 = *(v29 + 8);
      v35(v28, v30);
    }

    v58 = *(v0 + 232);
    v57 = *(v0 + 240);
    v59 = *(v0 + 224);
    v60 = *(v0 + 88);
    v61 = *(v0 + 64);
    sub_1D2A499DC();
    swift_allocError();
    *v62 = 1;
LABEL_17:
    swift_willThrow();
    v35(v60, v61);
    (*(v58 + 8))(v57, v59);
    v66 = *(v0 + 24);
    v65 = *(v0 + 32);
    sub_1D2A2E61C(v66 + *(v0 + 256) + *(v0 + 288), &qword_1EC706598, &qword_1D2ADA810);
    v67 = *(*v66 + 48);
    v68 = *(*v66 + 52);
    swift_deallocPartialClassInstance();
    v70 = *(v0 + 240);
    v69 = *(v0 + 248);
    v71 = *(v0 + 216);
    v72 = *(v0 + 192);
    v73 = *(v0 + 168);
    v74 = *(v0 + 144);
    v76 = *(v0 + 112);
    v75 = *(v0 + 120);
    v77 = *(v0 + 80);
    v78 = *(v0 + 88);
    v94 = *(v0 + 56);

    v79 = *(v0 + 8);

    return v79();
  }

  if (v15 == *MEMORY[0x1E69A0F00])
  {
    v37 = *(v0 + 144);
    v38 = *(v0 + 120);
    v39 = *(v0 + 96);
    v40 = *(v0 + 104);
    (*(*(v0 + 136) + 96))(v37, *(v0 + 128));
    (*(v40 + 32))(v38, v37, v39);
    if (qword_1EE0888F0 != -1)
    {
      swift_once();
    }

    v41 = *(v0 + 112);
    v42 = *(v0 + 120);
    v43 = *(v0 + 96);
    v44 = *(v0 + 104);
    v45 = sub_1D2AC63B4();
    __swift_project_value_buffer(v45, qword_1EE0888F8);
    (*(v44 + 16))(v41, v42, v43);
    v46 = sub_1D2AC6394();
    v47 = sub_1D2AC6EB4();
    v48 = os_log_type_enabled(v46, v47);
    v50 = *(v0 + 104);
    v49 = *(v0 + 112);
    v51 = *(v0 + 96);
    if (v48)
    {
      v93 = *(v0 + 96);
      v52 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v98[0] = v97;
      *v52 = 136315138;
      sub_1D2AC6174();
      sub_1D2AC6164();
      sub_1D2AB5378(&qword_1EC7065C0, MEMORY[0x1E69A1168]);
      v53 = sub_1D2AC6E24();
      v55 = v54;

      v35 = *(v50 + 8);
      v35(v49, v93);
      v56 = sub_1D2ABAFCC(v53, v55, v98);

      *(v52 + 4) = v56;
      _os_log_impl(&dword_1D2A17000, v46, v47, "ImagePlayground is unavailable: %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v97);
      MEMORY[0x1D38A8460](v97, -1, -1);
      MEMORY[0x1D38A8460](v52, -1, -1);
    }

    else
    {

      v35 = *(v50 + 8);
      v35(v49, v51);
    }

    v58 = *(v0 + 232);
    v57 = *(v0 + 240);
    v59 = *(v0 + 224);
    v60 = *(v0 + 120);
    v61 = *(v0 + 96);
    sub_1D2A499DC();
    swift_allocError();
    *v64 = 0;
    goto LABEL_17;
  }

  if (v15 != *MEMORY[0x1E69A11A0])
  {
    return sub_1D2AC7174();
  }

  v63 = *(v0 + 32);
  sub_1D2AB13EC(nullsub_1, 0, *(v0 + 56));
  v81 = *(v0 + 56);
  v82 = swift_task_alloc();
  *(v0 + 264) = v82;
  *(v82 + 16) = v81;
  v83 = *(MEMORY[0x1E69E8920] + 4);
  v84 = swift_task_alloc();
  *(v0 + 272) = v84;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7039F8, &qword_1D2AC9930);
  *v84 = v0;
  v84[1] = sub_1D2AB0E1C;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0x292874696E69, 0xE600000000000000, sub_1D2AB4E84, v82, v85);
}

uint64_t sub_1D2AB0E1C()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 264);

  if (v0)
  {
    v6 = sub_1D2AB11C8;
  }

  else
  {
    v6 = sub_1D2AB0F50;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D2AB0F50()
{
  v1 = v0[2];
  *(v0[3] + 16) = v1;
  if (*(v1 + 16))
  {
    v2 = v0[31];
    v3 = v0[27];
    v4 = v0[24];
    v5 = v0[21];
    v6 = v0[18];
    v8 = v0[14];
    v7 = v0[15];
    v30 = v0[11];
    v32 = v0[10];
    v9 = v0[7];
    (*(v0[29] + 8))(v0[30], v0[28]);
    sub_1D2AB55F0(v9, type metadata accessor for GPAppExtensionConnection);

    v10 = v0[1];
    v11 = v0[3];

    return v10(v11);
  }

  else
  {
    v14 = v0[29];
    v13 = v0[30];
    v15 = v0[28];
    v16 = v0[7];
    v17 = v0[3];
    sub_1D2A499DC();
    swift_allocError();
    *v18 = 1;
    swift_willThrow();
    (*(v14 + 8))(v13, v15);
    sub_1D2AB55F0(v16, type metadata accessor for GPAppExtensionConnection);

    v20 = v0[30];
    v19 = v0[31];
    v21 = v0[27];
    v22 = v0[24];
    v23 = v0[21];
    v24 = v0[18];
    v26 = v0[14];
    v25 = v0[15];
    v27 = v0[10];
    v28 = v0[11];
    v31 = v0[7];

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_1D2AB11C8()
{
  v1 = *(v0 + 56);
  (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
  sub_1D2AB55F0(v1, type metadata accessor for GPAppExtensionConnection);
  v19 = *(v0 + 280);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_1D2A2E61C(v3 + *(v0 + 256) + *(v0 + 288), &qword_1EC706598, &qword_1D2ADA810);
  v4 = *(*v3 + 48);
  v5 = *(*v3 + 52);
  swift_deallocPartialClassInstance();
  v7 = *(v0 + 240);
  v6 = *(v0 + 248);
  v8 = *(v0 + 216);
  v9 = *(v0 + 192);
  v10 = *(v0 + 168);
  v11 = *(v0 + 144);
  v13 = *(v0 + 112);
  v12 = *(v0 + 120);
  v14 = *(v0 + 80);
  v15 = *(v0 + 88);
  v18 = *(v0 + 56);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1D2AB137C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706598, &qword_1D2ADA810);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2AB13EC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a1;
  v46 = a2;
  v47 = a3;
  v3 = sub_1D2AC62C4();
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1D2AC6294();
  v6 = *(v53 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v53);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7042E8, &qword_1D2ACB8C0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v44 - v15;
  v17 = sub_1D2AC62D4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v44 - v23;
  if (qword_1EC703638 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v13, qword_1EC706580);
  sub_1D2A2E5B4(v25, v16, &qword_1EC7042E8, &qword_1D2ACB8C0);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1D2A2E61C(v16, &qword_1EC7042E8, &qword_1D2ACB8C0);
    if (qword_1EC7035A8 != -1)
    {
      swift_once();
    }

    v26 = sub_1D2AC63B4();
    __swift_project_value_buffer(v26, qword_1EC7040D8);
    v27 = sub_1D2AC6394();
    v28 = sub_1D2AC6E94();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1D2A17000, v27, v28, "GPNonUIExtension is nowhere to be found on this platform!", v29, 2u);
      MEMORY[0x1D38A8460](v29, -1, -1);
    }

    sub_1D2A499DC();
    swift_allocError();
    *v30 = 7;
    return swift_willThrow();
  }

  else
  {
    (*(v18 + 32))(v24, v16, v17);
    (*(v18 + 16))(v22, v24, v17);
    sub_1D2AC6284();
    v32 = v6;
    v33 = v53;
    (*(v6 + 16))(v10, v12, v53);
    v35 = v50;
    v34 = v51;
    sub_1D2AC62A4();
    if (v35)
    {
      (*(v32 + 8))(v12, v33);
      return (*(v18 + 8))(v24, v17);
    }

    else
    {
      v36 = sub_1D2AC62B4();
      v50 = v32;
      v37 = [objc_opt_self() interfaceWithProtocol_];
      [v36 setRemoteObjectInterface_];

      v38 = swift_allocObject();
      v39 = v45;
      v45 = v36;
      v40 = v46;
      *(v38 + 16) = v39;
      *(v38 + 24) = v40;
      aBlock[4] = sub_1D2AB5994;
      aBlock[5] = v38;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D2A61284;
      aBlock[3] = &block_descriptor_67;
      v41 = _Block_copy(aBlock);

      v42 = v45;
      [v45 setInterruptionHandler_];
      _Block_release(v41);
      [v42 activate];
      (*(v50 + 8))(v12, v33);
      (*(v18 + 8))(v24, v17);
      v43 = v47;
      (*(v48 + 32))(v47, v34, v49);
      result = type metadata accessor for GPAppExtensionConnection(0);
      *(v43 + *(result + 20)) = v42;
    }
  }

  return result;
}

uint64_t sub_1D2AB1A3C(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706618, &unk_1D2ADA9D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - v7;
  v9 = *(a2 + *(type metadata accessor for GPAppExtensionConnection(0) + 20));
  v20 = *(v5 + 16);
  v20(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v12 = *(v5 + 32);
  v12(v11 + v10, v8, v4);
  v27 = sub_1D2AB5850;
  v28 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1D2A44320;
  v26 = &block_descriptor_55;
  v13 = _Block_copy(&aBlock);

  v14 = [v9 remoteObjectProxyWithErrorHandler_];
  _Block_release(v13);
  sub_1D2AC6FF4();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706600, &qword_1D2ADA9B0);
  swift_dynamicCast();
  v15 = v22;
  v20(v8, v21, v4);
  v16 = swift_allocObject();
  v12(v16 + v10, v8, v4);
  v27 = sub_1D2AB58EC;
  v28 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1D2AB1F78;
  v26 = &block_descriptor_61;
  v17 = _Block_copy(&aBlock);

  [v15 fetchAvailableStylesWithCompletion_];
  _Block_release(v17);
  return swift_unknownObjectRelease();
}

uint64_t sub_1D2AB1D3C(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706618, &unk_1D2ADA9D0);
  return sub_1D2AC6D54();
}

char *sub_1D2AB1D8C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1D2AC7024();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
LABEL_15:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706618, &unk_1D2ADA9D0);
    return sub_1D2AC6D64();
  }

  v20 = MEMORY[0x1E69E7CC0];
  result = sub_1D2A2CCF4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = 0;
      do
      {
        MEMORY[0x1D38A74D0](v4, a1);
        v5 = sub_1D2AC6C24();
        v7 = v6;
        swift_unknownObjectRelease();
        v9 = *(v20 + 16);
        v8 = *(v20 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_1D2A2CCF4((v8 > 1), v9 + 1, 1);
        }

        ++v4;
        *(v20 + 16) = v9 + 1;
        v10 = v20 + 96 * v9;
        *(v10 + 32) = v5;
        *(v10 + 40) = v7;
        *(v10 + 48) = 0u;
        *(v10 + 64) = 0u;
        *(v10 + 80) = 0u;
        *(v10 + 96) = 0u;
        *(v10 + 112) = 0u;
      }

      while (v2 != v4);
    }

    else
    {
      v11 = (a1 + 32);
      do
      {
        v12 = *v11;
        v13 = sub_1D2AC6C24();
        v16 = *(v20 + 16);
        v15 = *(v20 + 24);
        if (v16 >= v15 >> 1)
        {
          v18 = v13;
          v19 = v14;
          sub_1D2A2CCF4((v15 > 1), v16 + 1, 1);
          v14 = v19;
          v13 = v18;
        }

        *(v20 + 16) = v16 + 1;
        v17 = v20 + 96 * v16;
        *(v17 + 32) = v13;
        *(v17 + 40) = v14;
        *(v17 + 48) = 0u;
        *(v17 + 64) = 0u;
        *(v17 + 80) = 0u;
        *(v17 + 96) = 0u;
        *(v17 + 112) = 0u;
        ++v11;
        --v2;
      }

      while (v2);
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2AB1F78(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_1D2A20764(0, &qword_1EC704410, 0x1E696AEC0);
  v3 = sub_1D2AC6D34();

  v2(v3);
}

uint64_t ImageCreator.images(for:style:limit:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = a2[3];
  v21[2] = a2[2];
  v21[3] = v9;
  v10 = a2[5];
  v21[4] = a2[4];
  v21[5] = v10;
  v11 = a2[1];
  v21[0] = *a2;
  v21[1] = v11;
  v12 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
  if (a3 >= 4)
  {
    v13 = 4;
  }

  else
  {
    v13 = a3;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v4;
  v15 = a2[3];
  *(v14 + 64) = a2[2];
  *(v14 + 80) = v15;
  v16 = a2[5];
  *(v14 + 96) = a2[4];
  *(v14 + 112) = v16;
  v17 = a2[1];
  *(v14 + 32) = *a2;
  *(v14 + 48) = v17;
  *(v14 + 128) = 0;
  *(v14 + 136) = v12;
  type metadata accessor for ImageCreator.Results();
  v18 = swift_allocObject();
  v18[2] = &unk_1D2ADA838;
  v18[3] = v14;
  v18[4] = v13;
  v18[5] = sub_1D2AB4F80;
  v18[6] = v4;
  *a4 = v18;
  swift_retain_n();

  return sub_1D2A2D244(v21, &v20);
}

uint64_t ImageCreator.images(for:style:personalizationPolicy:limit:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = a2[3];
  v23[2] = a2[2];
  v23[3] = v10;
  v11 = a2[5];
  v23[4] = a2[4];
  v23[5] = v11;
  v12 = a2[1];
  v23[0] = *a2;
  v23[1] = v12;
  v13 = *a3;
  v14 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
  if (a4 >= 4)
  {
    v15 = 4;
  }

  else
  {
    v15 = a4;
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = v5;
  v17 = a2[3];
  *(v16 + 64) = a2[2];
  *(v16 + 80) = v17;
  v18 = a2[5];
  *(v16 + 96) = a2[4];
  *(v16 + 112) = v18;
  v19 = a2[1];
  *(v16 + 32) = *a2;
  *(v16 + 48) = v19;
  *(v16 + 128) = v13;
  *(v16 + 136) = v14;
  type metadata accessor for ImageCreator.Results();
  v20 = swift_allocObject();
  v20[2] = &unk_1D2ADA840;
  v20[3] = v16;
  v20[4] = v15;
  v20[5] = sub_1D2AB5A44;
  v20[6] = v5;
  *a5 = v20;
  swift_retain_n();

  return sub_1D2A2D244(v23, &v22);
}

uint64_t sub_1D2AB2260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 152) = a8;
  *(v8 + 64) = a7;
  *(v8 + 72) = v17;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v10 = *(type metadata accessor for ImagePlaygroundConcept(0) - 8);
  *(v8 + 80) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 88) = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v12 = sub_1D2AC6D44();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  *(v8 + 96) = v12;
  *(v8 + 104) = v14;

  return MEMORY[0x1EEE6DFA0](sub_1D2AB2364, v12, v14);
}

uint64_t sub_1D2AB2364()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = *(v0 + 80);
    v22 = MEMORY[0x1E69E7CC0];
    sub_1D2AC7104();
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    do
    {
      v7 = *(v0 + 88);
      sub_1D2AB5588(v5, v7, type metadata accessor for ImagePlaygroundConcept);
      sub_1D2A49C68(1);
      sub_1D2AB55F0(v7, type metadata accessor for ImagePlaygroundConcept);
      sub_1D2AC70E4();
      v8 = *(v22 + 16);
      sub_1D2AC7114();
      sub_1D2AC7124();
      sub_1D2AC70F4();
      v5 += v6;
      --v2;
    }

    while (v2);
    v3 = v22;
  }

  *(v0 + 112) = v3;
  v10 = *(v0 + 64);
  v9 = *(v0 + 72);
  v11 = *(v0 + 152);
  v12 = *(v0 + 56);
  v13 = *(v0 + 40);
  v14 = swift_task_alloc();
  *(v0 + 120) = v14;
  *(v14 + 16) = v12;
  *(v14 + 24) = v13;
  *(v14 + 32) = v10;
  *(v14 + 40) = v3;
  *(v14 + 48) = v11;
  *(v14 + 56) = v9;
  v15 = swift_task_alloc();
  *(v0 + 128) = v15;
  *(v15 + 16) = v12;
  *(v15 + 24) = v9;
  v16 = *(MEMORY[0x1E69E88F0] + 4);
  v17 = swift_task_alloc();
  *(v0 + 136) = v17;
  *v17 = v0;
  v17[1] = sub_1D2AB2558;
  v18 = *(v0 + 24);
  v19 = *(v0 + 32);
  v20 = *(v0 + 16);

  return MEMORY[0x1EEE6DE18](v20, &unk_1D2ADA9C0, v14, sub_1D2AB5728, v15, v18, v19, &type metadata for ImageCreator.CreatedImage);
}

uint64_t sub_1D2AB2558()
{
  v2 = *(*v1 + 136);
  v3 = *v1;
  v3[18] = v0;

  if (v0)
  {
    v4 = v3[12];
    v5 = v3[13];

    return MEMORY[0x1EEE6DFA0](sub_1D2AB26C0, v4, v5);
  }

  else
  {
    v7 = v3[15];
    v6 = v3[16];
    v8 = v3[14];
    v9 = v3[11];

    v10 = v3[1];

    return v10();
  }
}

uint64_t sub_1D2AB26C0()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[11];

  v5 = v0[1];
  v6 = v0[18];

  return v5();
}

uint64_t sub_1D2AB274C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 88) = a6;
  *(v7 + 48) = a5;
  *(v7 + 56) = a7;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D2AB2778, 0, 0);
}

uint64_t sub_1D2AB2778()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 88);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = *(v0 + 40);
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *(v5 + 32) = v6;
  *(v5 + 48) = v2;
  *(v5 + 56) = v1;
  v7 = *(MEMORY[0x1E69E8920] + 4);
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_1D2AB2890;
  v9 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v9, 0, 0, 0xD00000000000002ELL, 0x80000001D2ADFA30, sub_1D2AB5730, v5, &type metadata for ImageCreator.CreatedImage);
}

uint64_t sub_1D2AB2890()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D2AB29CC, 0, 0);
  }

  else
  {
    v4 = v3[8];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1D2AB29CC()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

void sub_1D2AB2A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v45 = a3;
  v46 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706608, &qword_1D2ADA9C8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - v16;
  if (sub_1D2AC6DE4())
  {
    sub_1D2A499DC();
    v18 = swift_allocError();
    *v19 = 2;
    aBlock[0] = v18;
    sub_1D2AC6D54();
  }

  else
  {
    v40 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v41 = a5;
    v42 = a6;
    v43 = a7;
    v20 = *(v13 + 16);
    v44 = a1;
    v20(v17, a1, v12);
    v21 = *(v13 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = a2;
    v23 = *(v13 + 32);
    v23(v22 + ((v21 + 24) & ~v21), v17, v12);

    sub_1D2AB3118(sub_1D2AB5744, v22);
    v25 = v24;
    v38 = v23;
    v39 = v20;
    v37 = ~v21;

    if (!v45)
    {
      [v25 acquireAssertion];
    }

    v26 = *v46;
    v27 = v46[1];
    v46 = sub_1D2AC6BF4();
    sub_1D2A20764(0, &qword_1EC703B30, &off_1E84033C0);
    v28 = sub_1D2AC6D24();
    v29 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v30 = [v29 initWithInteger_];
    v31 = v40;
    v39(v40, v44, v12);
    v32 = (v21 + 16) & v37;
    v33 = swift_allocObject();
    v38(v33 + v32, v31, v12);
    aBlock[4] = sub_1D2AB57C4;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D2AB39D4;
    aBlock[3] = &block_descriptor_49;
    v34 = _Block_copy(aBlock);

    v35 = v46;
    [v25 startGenerationWithStyle:v46 promptElements:v28 personalizationPolicyValue:v30 replyHandler:v34 batchID:v43];
    _Block_release(v34);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1D2AB2EE8(void *a1, uint64_t a2)
{
  v3 = (a2 + OBJC_IVAR____TtC15ImagePlayground12ImageCreator_connection);
  os_unfair_lock_lock((a2 + OBJC_IVAR____TtC15ImagePlayground12ImageCreator_connection));
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7065A8, &qword_1D2ADA818) + 28);
  sub_1D2A2E61C(v3 + v4, &qword_1EC706598, &qword_1D2ADA810);
  v5 = type metadata accessor for GPAppExtensionConnection(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  os_unfair_lock_unlock(v3);
  if (qword_1EC7035A8 != -1)
  {
    swift_once();
  }

  v6 = sub_1D2AC63B4();
  __swift_project_value_buffer(v6, qword_1EC7040D8);
  v7 = a1;
  v8 = sub_1D2AC6394();
  v9 = sub_1D2AC6E94();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = a1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1D2A17000, v8, v9, "Could not start image generation with error: %@", v10, 0xCu);
    sub_1D2A2E61C(v11, &unk_1EC704400, &unk_1D2ADA9A0);
    MEMORY[0x1D38A8460](v11, -1, -1);
    MEMORY[0x1D38A8460](v10, -1, -1);
  }

  sub_1D2A499DC();
  swift_allocError();
  *v14 = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706608, &qword_1D2ADA9C8);
  return sub_1D2AC6D54();
}

void sub_1D2AB3118(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v24 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706598, &qword_1D2ADA810);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for GPAppExtensionConnection(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - v13;
  v15 = (v2 + OBJC_IVAR____TtC15ImagePlayground12ImageCreator_connection);
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC15ImagePlayground12ImageCreator_connection));
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7065A8, &qword_1D2ADA818) + 28);
  sub_1D2A2E5B4(v15 + v16, v6, &qword_1EC706598, &qword_1D2ADA810);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {

    sub_1D2A2E61C(v6, &qword_1EC706598, &qword_1D2ADA810);
    v17 = v26;
    sub_1D2AB54E0(v12);
    if (v17)
    {

      os_unfair_lock_unlock(v15);
      return;
    }

    sub_1D2A2E61C(v15 + v16, &qword_1EC706598, &qword_1D2ADA810);
    sub_1D2AB5588(v12, v15 + v16, type metadata accessor for GPAppExtensionConnection);
    (*(v8 + 56))(v15 + v16, 0, 1, v7);
    sub_1D2AB54FC(v12, v14);
  }

  else
  {
    sub_1D2AB54FC(v6, v14);
  }

  v18 = *&v14[*(v7 + 20)];
  v19 = swift_allocObject();
  v20 = v25;
  *(v19 + 16) = v24;
  *(v19 + 24) = v20;
  aBlock[4] = sub_1D2AB5560;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D2A44320;
  aBlock[3] = &block_descriptor_2;
  v21 = _Block_copy(aBlock);

  v22 = [v18 remoteObjectProxyWithErrorHandler_];
  _Block_release(v21);
  sub_1D2AC6FF4();
  swift_unknownObjectRelease();
  sub_1D2AB55F0(v14, type metadata accessor for GPAppExtensionConnection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706600, &qword_1D2ADA9B0);
  swift_dynamicCast();
  os_unfair_lock_unlock(v15);
}

void sub_1D2AB34B8(uint64_t a1, id a2)
{
  if (a1)
  {
    v2 = *(a1 + OBJC_IVAR___GPImageXPCWrapper_image);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706608, &qword_1D2ADA9C8);
    sub_1D2AC6D64();
  }

  else if (a2 && (v34 = a2, v4 = a2, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7042E0, &qword_1D2ACB1F8), sub_1D2A20764(0, &qword_1EC706610, 0x1E696ABC0), (swift_dynamicCast() & 1) != 0))
  {
    v5 = v33;
    sub_1D2A493A4(v5, &v34);
    v6 = v34;
    if (v34 == 9)
    {
      if (qword_1EC7035A8 != -1)
      {
        swift_once();
      }

      v7 = sub_1D2AC63B4();
      __swift_project_value_buffer(v7, qword_1EC7040D8);
      v5 = v5;
      v8 = sub_1D2AC6394();
      v9 = sub_1D2AC6E94();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *v10 = 138412290;
        *(v10 + 4) = v5;
        *v11 = v5;
        v12 = v5;
        _os_log_impl(&dword_1D2A17000, v8, v9, "Image generation failed with NSError in a different domain: %@, returning a generic error instead", v10, 0xCu);
        sub_1D2A2E61C(v11, &unk_1EC704400, &unk_1D2ADA9A0);
        MEMORY[0x1D38A8460](v11, -1, -1);
        MEMORY[0x1D38A8460](v10, -1, -1);
      }

      sub_1D2A499DC();
      v13 = swift_allocError();
      *v14 = 7;
    }

    else
    {
      if (qword_1EC7035A8 != -1)
      {
        swift_once();
      }

      v24 = sub_1D2AC63B4();
      __swift_project_value_buffer(v24, qword_1EC7040D8);
      v25 = sub_1D2AC6394();
      v26 = sub_1D2AC6E94();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 138412290;
        sub_1D2A499DC();
        swift_allocError();
        *v29 = v6;
        v30 = _swift_stdlib_bridgeErrorToNSError();
        *(v27 + 4) = v30;
        *v28 = v30;
        _os_log_impl(&dword_1D2A17000, v25, v26, "Image generation failed with error: %@", v27, 0xCu);
        sub_1D2A2E61C(v28, &unk_1EC704400, &unk_1D2ADA9A0);
        MEMORY[0x1D38A8460](v28, -1, -1);
        MEMORY[0x1D38A8460](v27, -1, -1);
      }

      sub_1D2A499DC();
      v13 = swift_allocError();
      *v31 = v6;
    }

    v34 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706608, &qword_1D2ADA9C8);
    sub_1D2AC6D54();
  }

  else
  {
    if (qword_1EC7035A8 != -1)
    {
      swift_once();
    }

    v15 = sub_1D2AC63B4();
    __swift_project_value_buffer(v15, qword_1EC7040D8);
    v16 = a2;
    v17 = sub_1D2AC6394();
    v18 = sub_1D2AC6E94();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      if (a2)
      {
        v21 = a2;
        v22 = _swift_stdlib_bridgeErrorToNSError();
        v23 = v22;
      }

      else
      {
        v22 = 0;
        v23 = 0;
      }

      *(v19 + 4) = v22;
      *v20 = v23;
      _os_log_impl(&dword_1D2A17000, v17, v18, "No image, but nil error or non-NSError error %@", v19, 0xCu);
      sub_1D2A2E61C(v20, &unk_1EC704400, &unk_1D2ADA9A0);
      MEMORY[0x1D38A8460](v20, -1, -1);
      MEMORY[0x1D38A8460](v19, -1, -1);
    }

    sub_1D2A499DC();
    swift_allocError();
    *v32 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706608, &qword_1D2ADA9C8);
    sub_1D2AC6D54();
  }
}

void sub_1D2AB39D4(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1D2AB3A60(uint64_t a1, uint64_t a2)
{
  sub_1D2AB3118(nullsub_1, 0);
  [v3 stopGeneration_];

  return swift_unknownObjectRelease();
}

uint64_t sub_1D2AB3C58()
{
  sub_1D2AB3118(nullsub_1, 0);
  [v0 releaseAssertion];

  return swift_unknownObjectRelease();
}

void sub_1D2AB3E48(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtC15ImagePlayground12ImageCreator_connection);
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC15ImagePlayground12ImageCreator_connection));
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7065A8, &qword_1D2ADA818) + 28);
  sub_1D2A2E61C(v1 + v2, &qword_1EC706598, &qword_1D2ADA810);
  v3 = type metadata accessor for GPAppExtensionConnection(0);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);

  os_unfair_lock_unlock(v1);
}

uint64_t sub_1D2AB3EFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7042E8, &qword_1D2ACB8C0);
  __swift_allocate_value_buffer(v0, qword_1EC706580);
  v1 = __swift_project_value_buffer(v0, qword_1EC706580);
  return sub_1D2AB3F54(v1);
}

uint64_t sub_1D2AB3F54@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x1E6966CE0]);
  v3 = sub_1D2AC6BF4();
  v4 = [v2 initWithExtensionPointIdentifier_];

  v5 = [objc_opt_self() executeQuery_];
  sub_1D2A20764(0, &qword_1EC706620, 0x1E6966CB0);
  v6 = sub_1D2AC6D34();

  if (v6 >> 62)
  {
    result = sub_1D2AC7024();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v9 = 1;
    goto LABEL_9;
  }

  result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v6 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1D38A74D0](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v8 = *(v6 + 32);
  }

  sub_1D2AC62E4();
  v9 = 0;
LABEL_9:

  v10 = sub_1D2AC62D4();
  v11 = *(*(v10 - 8) + 56);

  return v11(a1, v9, 1, v10);
}

uint64_t sub_1D2AB40F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  if (a2)
  {
    swift_getObjectType();
    v5 = sub_1D2AC6D44();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4[8] = v5;
  v4[9] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D2AB4188, v5, v7);
}

uint64_t sub_1D2AB4188()
{
  if ((sub_1D2AC6DE4() & 1) != 0 || (v1 = *(v0 + 56), v2 = v1[3], *(v0 + 80) = v2, v2 >= v1[2]))
  {
    **(v0 + 32) = 0;
    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v3 = v1[1];
    v10 = (*v1 + **v1);
    v4 = (*v1)[1];
    v5 = swift_task_alloc();
    *(v0 + 88) = v5;
    *v5 = v0;
    v5[1] = sub_1D2AB42E4;
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);

    return v10(v0 + 16, v6, v7, v2);
  }
}

uint64_t sub_1D2AB42E4()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 72);
  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_1D2AB4454;
  }

  else
  {
    v7 = sub_1D2AB4420;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D2AB4420()
{
  v1 = *(v0 + 80);
  **(v0 + 32) = *(v0 + 16);
  *(*(v0 + 56) + 24) = v1 + 1;
  return (*(v0 + 8))();
}

uint64_t sub_1D2AB4454()
{
  v1 = *(v0 + 96);
  *(v0 + 24) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7042E0, &qword_1D2ACB1F8);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 104);
  }

  else
  {
    if (qword_1EC7035A8 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 96);
    v5 = sub_1D2AC63B4();
    __swift_project_value_buffer(v5, qword_1EC7040D8);
    v6 = v4;
    v7 = sub_1D2AC6394();
    v8 = sub_1D2AC6E94();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 96);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = v9;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_1D2A17000, v7, v8, "Could not establish connection to extension with error: %@", v10, 0xCu);
      sub_1D2A2E61C(v11, &unk_1EC704400, &unk_1D2ADA9A0);
      MEMORY[0x1D38A8460](v11, -1, -1);
      MEMORY[0x1D38A8460](v10, -1, -1);
    }

    v3 = 7;
  }

  sub_1D2A499DC();
  swift_allocError();
  *v14 = v3;
  swift_willThrow();
  v15 = *(v0 + 80);
  v16 = *(v0 + 56);

  *(v16 + 24) = v15 + 1;
  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1D2AB4674(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D2A2E260;

  return sub_1D2AB40F0(a1, 0, 0);
}

uint64_t sub_1D2AB4714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D2AB47C8;

  return sub_1D2AB40F0(a1, a2, a3);
}

uint64_t sub_1D2AB47C8()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;

  if (v0)
  {
    **(v2 + 16) = v0;
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_1D2AB48E8()
{
  v1 = v0;
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);

  v3(v4);

  v5 = *(v1 + 24);

  v6 = *(v1 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_1D2AB4958@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v5 = v3[2];
  v4 = v3[3];
  v6 = v3[4];

  *a1 = v5;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = 0;
  return result;
}

uint64_t sub_1D2AB49AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;

  sub_1D2AB13EC(sub_1D2AB5580, a1, a2);
}

uint64_t sub_1D2AB4A38(void *a1, uint64_t (*a2)(void *))
{
  if (qword_1EC7035A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1D2AC63B4();
  __swift_project_value_buffer(v4, qword_1EC7040D8);
  v5 = a1;
  v6 = sub_1D2AC6394();
  v7 = sub_1D2AC6E94();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = a1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1D2A17000, v6, v7, "Received error from remote object proxy: %@", v8, 0xCu);
    sub_1D2A2E61C(v9, &unk_1EC704400, &unk_1D2ADA9A0);
    MEMORY[0x1D38A8460](v9, -1, -1);
    MEMORY[0x1D38A8460](v8, -1, -1);
  }

  return a2(a1);
}

void sub_1D2AB4BA4()
{
  if (qword_1EC7035A0 != -1)
  {
    swift_once();
  }

  v0 = sub_1D2AC63B4();
  __swift_project_value_buffer(v0, qword_1EC7040C0);
  oslog = sub_1D2AC6394();
  v1 = sub_1D2AC6E94();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1D2A17000, oslog, v1, "onInterruption did get called", v2, 2u);
    MEMORY[0x1D38A8460](v2, -1, -1);
  }
}

uint64_t sub_1D2AB4C8C(uint64_t (*a1)(void))
{
  if (qword_1EC7035A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D2AC63B4();
  __swift_project_value_buffer(v2, qword_1EC7040D8);
  v3 = sub_1D2AC6394();
  v4 = sub_1D2AC6E94();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D2A17000, v3, v4, "Connection with the service was interrupted", v5, 2u);
    MEMORY[0x1D38A8460](v5, -1, -1);
  }

  return a1();
}

uint64_t ImageCreator.deinit()
{
  v1 = *(v0 + 16);

  v2 = v0 + OBJC_IVAR____TtC15ImagePlayground12ImageCreator_connection;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7065A8, &qword_1D2ADA818);
  sub_1D2A2E61C(v2 + *(v3 + 28), &qword_1EC706598, &qword_1D2ADA810);
  return v0;
}

uint64_t ImageCreator.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0 + OBJC_IVAR____TtC15ImagePlayground12ImageCreator_connection;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7065A8, &qword_1D2ADA818);
  sub_1D2A2E61C(&v2[*(v3 + 28)], &qword_1EC706598, &qword_1D2ADA810);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1D2AB4E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = *(v4 + 24);
  v12 = *(v4 + 136);
  v13 = *(v4 + 128);
  v14 = swift_task_alloc();
  *(v5 + 16) = v14;
  *v14 = v5;
  v14[1] = sub_1D2A47C5C;

  return sub_1D2AB2260(a1, a2, a3, a4, v10, v11, v4 + 32, v13);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  if (*(v0 + 56))
  {

    v4 = *(v0 + 72);

    v5 = *(v0 + 88);

    v6 = *(v0 + 104);

    v7 = *(v0 + 120);
  }

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

void sub_1D2AB5050()
{
  sub_1D2AB5304();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of ImageCreator.__allocating_init()()
{
  v2 = *(v0 + 96);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D2AB5208;

  return v6();
}

uint64_t sub_1D2AB5208(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

void sub_1D2AB5304()
{
  if (!qword_1EC7065D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC706598, &qword_1D2ADA810);
    v0 = sub_1D2AC6124();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7065D8);
    }
  }
}

uint64_t sub_1D2AB5378(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D2AB53E8()
{
  result = sub_1D2AC62C4();
  if (v1 <= 0x3F)
  {
    result = sub_1D2A20764(319, &qword_1EC704500, 0x1E696B0B8);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D2AB5480()
{
  result = qword_1EC7065F8;
  if (!qword_1EC7065F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7065F8);
  }

  return result;
}

uint64_t sub_1D2AB54FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GPAppExtensionConnection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D2AB5588(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2AB55F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D2AB5650(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D2A2E260;

  return sub_1D2AB274C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1D2AB5744(void *a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706608, &qword_1D2ADA9C8) - 8) + 80);
  v4 = *(v1 + 16);

  return sub_1D2AB2EE8(a1, v4);
}

void sub_1D2AB57C4(uint64_t a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706608, &qword_1D2ADA9C8) - 8) + 80);

  sub_1D2AB34B8(a1, a2);
}

uint64_t objectdestroy_45Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_1D2AB5904(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706618, &unk_1D2ADA9D0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1D2AB599C(uint64_t *a1, int a2)
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

uint64_t sub_1D2AB59E4(uint64_t result, int a2, int a3)
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

void sub_1D2AB5A58()
{
  sub_1D2AB6A4C(1.77777778, 0.000001);
  qword_1EC706628 = 0x3FFC71C71C71C71CLL;
  unk_1EC706630 = v0;
  qword_1EC706638 = v1;
}

void ImagePlaygroundAspectRatio.init(ratio:)(uint64_t a1@<X8>, double a2@<D0>)
{
  sub_1D2AB6A4C(a2, 0.000001);
  *a1 = a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
}

void sub_1D2AB5B08()
{
  sub_1D2AB6A4C(0.5625, 0.000001);
  qword_1EC706640 = 0x3FE2000000000000;
  *algn_1EC706648 = v0;
  qword_1EC706650 = v1;
}

void sub_1D2AB5B68()
{
  sub_1D2AB6A4C(0.5, 0.000001);
  qword_1EC706658 = 0x3FE0000000000000;
  unk_1EC706660 = v0;
  qword_1EC706668 = v1;
}

int64x2_t sub_1D2AB5BC8()
{
  qword_1EE089690 = 0x3FF0000000000000;
  result = vdupq_n_s64(1uLL);
  unk_1EE089698 = result;
  return result;
}

__n128 sub_1D2AB5C10@<Q0>(void *a1@<X0>, void *a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    v5 = a2;
    v6 = a3;
    v7 = a4;
    swift_once();
    a2 = v5;
    a4 = v7;
    a3 = v6;
  }

  *a4 = *a2;
  result = *a3;
  *(a4 + 8) = *a3;
  return result;
}

uint64_t ImagePlaygroundAspectRatio.id.getter()
{
  v1 = *(v0 + 16);
  v4 = *(v0 + 8);
  v5 = sub_1D2AC7324();
  MEMORY[0x1D38A7100](58, 0xE100000000000000);
  v2 = sub_1D2AC7324();
  MEMORY[0x1D38A7100](v2);

  return v5;
}

BOOL static ImagePlaygroundAspectRatio.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  return *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
}

unint64_t sub_1D2AB5D44()
{
  if (*v0)
  {
    result = 0xD000000000000016;
  }

  else
  {
    result = 0x6F69746172;
  }

  *v0;
  return result;
}

uint64_t sub_1D2AB5D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F69746172 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D2AC7354() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D2ADFAB0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D2AC7354();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D2AB5E60(uint64_t a1)
{
  v2 = sub_1D2AB6B78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2AB5E9C(uint64_t a1)
{
  v2 = sub_1D2AB6B78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImagePlaygroundAspectRatio.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706670, &qword_1D2ADAA20);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v13 = v1[2];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AB6B78();
  sub_1D2AC74A4();
  v14 = v9;
  v16 = 0;
  sub_1D2AB6BCC();
  sub_1D2AC7304();
  if (!v2)
  {
    v14 = v10;
    v15 = v13;
    v16 = 1;
    sub_1D2AB6C20();
    sub_1D2AC7304();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t ImagePlaygroundAspectRatio.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1D38A78B0](*&v1);
  MEMORY[0x1D38A78B0](v2);
  return MEMORY[0x1D38A78B0](v3);
}

uint64_t ImagePlaygroundAspectRatio.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1D2AC7444();
  v4 = 0.0;
  if (v1 != 0.0)
  {
    v4 = v1;
  }

  MEMORY[0x1D38A78B0](*&v4);
  MEMORY[0x1D38A78B0](v2);
  MEMORY[0x1D38A78B0](v3);
  return sub_1D2AC7484();
}

uint64_t ImagePlaygroundAspectRatio.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706690, &qword_1D2ADAA28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AB6B78();
  sub_1D2AC7494();
  if (!v2)
  {
    v15 = 0;
    sub_1D2AB6C74();
    sub_1D2AC7264();
    v11 = v14;
    v15 = 1;
    sub_1D2AB6CC8();
    sub_1D2AC7264();
    (*(v6 + 8))(v9, v5);
    v12 = v14;
    *a2 = v11;
    *(a2 + 8) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1D2AB636C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1D38A78B0](*&v1);
  MEMORY[0x1D38A78B0](v2);
  return MEMORY[0x1D38A78B0](v3);
}

uint64_t sub_1D2AB63C4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1D2AC7444();
  v4 = 0.0;
  if (v1 != 0.0)
  {
    v4 = v1;
  }

  MEMORY[0x1D38A78B0](*&v4);
  MEMORY[0x1D38A78B0](v2);
  MEMORY[0x1D38A78B0](v3);
  return sub_1D2AC7484();
}

uint64_t sub_1D2AB6440@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v7 = *(v1 + 8);
  v8 = sub_1D2AC7324();
  v9 = v4;
  MEMORY[0x1D38A7100](58, 0xE100000000000000);
  v5 = sub_1D2AC7324();
  MEMORY[0x1D38A7100](v5);

  *a1 = v8;
  a1[1] = v9;
  return result;
}

BOOL sub_1D2AB64E4(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  return *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
}

uint64_t sub_1D2AB6514(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7066C8, &qword_1D2ADAD88);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AB6EFC();
  sub_1D2AC74A4();
  v12 = 0;
  sub_1D2AC7314();
  if (!v1)
  {
    v11 = 1;
    sub_1D2AC7314();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1D2AB669C()
{
  if (*v0)
  {
    result = 0x616E696D6F6E6564;
  }

  else
  {
    result = 0x6F746172656D756ELL;
  }

  *v0;
  return result;
}

uint64_t sub_1D2AB66E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F746172656D756ELL && a2 == 0xE900000000000072;
  if (v6 || (sub_1D2AC7354() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x616E696D6F6E6564 && a2 == 0xEB00000000726F74)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D2AC7354();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D2AB67CC(uint64_t a1)
{
  v2 = sub_1D2AB6EFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2AB6808(uint64_t a1)
{
  v2 = sub_1D2AB6EFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2AB6844@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D2AB6F50(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1D2AB6870(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_1D2AB6514(a1);
}

uint64_t sub_1D2AB688C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D2AC7444();
  MEMORY[0x1D38A78B0](v1);
  MEMORY[0x1D38A78B0](v2);
  return sub_1D2AC7484();
}

uint64_t sub_1D2AB68E8()
{
  v1 = v0[1];
  MEMORY[0x1D38A78B0](*v0);
  return MEMORY[0x1D38A78B0](v1);
}

uint64_t sub_1D2AB6924()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D2AC7444();
  MEMORY[0x1D38A78B0](v1);
  MEMORY[0x1D38A78B0](v2);
  return sub_1D2AC7484();
}

uint64_t sub_1D2AB697C@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  v7 = *v1;
  v8 = sub_1D2AC7324();
  v9 = v4;
  MEMORY[0x1D38A7100](58, 0xE100000000000000);
  v5 = sub_1D2AC7324();
  MEMORY[0x1D38A7100](v5);

  *a1 = v8;
  a1[1] = v9;
  return result;
}

void sub_1D2AB6A4C(double a1, double a2)
{
  v2 = floor(a1);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v3 = v2;
  v4 = a1 - v2;
  if (v4 > a2)
  {
    v5 = 0;
    v6 = 1;
    v7 = 1;
    while (1)
    {
      v8 = 1.0 / v4;
      v9 = floor(v8);
      if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v9 <= -9.22337204e18)
      {
        goto LABEL_17;
      }

      if (v9 >= 9.22337204e18)
      {
        goto LABEL_18;
      }

      v10 = v3;
      v11 = v9;
      v12 = v9 * v3;
      if ((v9 * v3) >> 64 != v12 >> 63)
      {
        goto LABEL_19;
      }

      v3 = v6 + v12;
      if (__OFADD__(v6, v12))
      {
        goto LABEL_20;
      }

      v13 = v11 * v7;
      if ((v11 * v7) >> 64 != (v11 * v7) >> 63)
      {
        goto LABEL_21;
      }

      v14 = v5 + v13;
      if (__OFADD__(v5, v13))
      {
        goto LABEL_22;
      }

      v4 = v8 - v9;
      v5 = v7;
      v6 = v10;
      v7 = v14;
      if (v14 * a2 * v14 >= v4)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }
}

unint64_t sub_1D2AB6B78()
{
  result = qword_1EC706678;
  if (!qword_1EC706678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706678);
  }

  return result;
}

unint64_t sub_1D2AB6BCC()
{
  result = qword_1EC706680;
  if (!qword_1EC706680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706680);
  }

  return result;
}

unint64_t sub_1D2AB6C20()
{
  result = qword_1EC706688;
  if (!qword_1EC706688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706688);
  }

  return result;
}

unint64_t sub_1D2AB6C74()
{
  result = qword_1EC706698;
  if (!qword_1EC706698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706698);
  }

  return result;
}

unint64_t sub_1D2AB6CC8()
{
  result = qword_1EC7066A0;
  if (!qword_1EC7066A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7066A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImagePlaygroundAspectRatio(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ImagePlaygroundAspectRatio(uint64_t result, int a2, int a3)
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

unint64_t sub_1D2AB6DA0()
{
  result = qword_1EC7066A8;
  if (!qword_1EC7066A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7066A8);
  }

  return result;
}

unint64_t sub_1D2AB6DF8()
{
  result = qword_1EC7066B0;
  if (!qword_1EC7066B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7066B0);
  }

  return result;
}

unint64_t sub_1D2AB6E50()
{
  result = qword_1EC7066B8;
  if (!qword_1EC7066B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7066B8);
  }

  return result;
}

unint64_t sub_1D2AB6EA8()
{
  result = qword_1EC7066C0;
  if (!qword_1EC7066C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7066C0);
  }

  return result;
}

unint64_t sub_1D2AB6EFC()
{
  result = qword_1EC7066D0;
  if (!qword_1EC7066D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7066D0);
  }

  return result;
}

uint64_t sub_1D2AB6F50(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7066D8, &qword_1D2ADAD90);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AB6EFC();
  sub_1D2AC7494();
  v10[15] = 0;
  v8 = sub_1D2AC7274();
  v10[14] = 1;
  sub_1D2AC7274();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

unint64_t sub_1D2AB710C()
{
  result = qword_1EC7066E0;
  if (!qword_1EC7066E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7066E0);
  }

  return result;
}

unint64_t sub_1D2AB7164()
{
  result = qword_1EC7066E8;
  if (!qword_1EC7066E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7066E8);
  }

  return result;
}

unint64_t sub_1D2AB71BC()
{
  result = qword_1EC7066F0;
  if (!qword_1EC7066F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7066F0);
  }

  return result;
}

uint64_t static DeviceSupport.isGenerativePlaygroundSupported.getter()
{
  v85 = sub_1D2AC6154();
  v83 = *(v85 - 8);
  v0 = *(v83 + 64);
  v1 = MEMORY[0x1EEE9AC00](v85);
  v82 = &v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v84 = &v76 - v3;
  v4 = sub_1D2AC6184();
  v78 = *(v4 - 8);
  v79 = v4;
  v5 = *(v78 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v80 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v81 = &v76 - v8;
  v90 = sub_1D2AC6194();
  v88 = *(v90 - 1);
  v9 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v89 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D2AC61D4();
  v87 = *(v11 - 8);
  v12 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D2AC61B4();
  v86 = *(v15 - 8);
  v16 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D2AC5FD4();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D2AC6224();
  v91 = *(v24 - 8);
  v25 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v92 = &v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7066F8, &qword_1D2ADAEB0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v76 - v29;
  if (sub_1D2ABC350())
  {
    return 1;
  }

  v77 = v24;
  (*(v20 + 56))(v30, 1, 1, v19);
  v31 = _s15ImagePlayground13DeviceSupportC30isSpotlightResourcesDownloaded12languageCodeSb10Foundation6LocaleV08LanguageJ0VSg_tFZ_0(v30);
  sub_1D2A2E61C(v30, &qword_1EC7066F8, &qword_1D2ADAEB0);
  if ((v31 & 1) == 0)
  {
    if (qword_1EE0888F0 != -1)
    {
      swift_once();
    }

    v55 = sub_1D2AC63B4();
    __swift_project_value_buffer(v55, qword_1EE0888F8);
    v56 = sub_1D2AC6394();
    v57 = sub_1D2AC6EB4();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_1D2A17000, v56, v57, "Image Generation is unavailable: Spotlight resources not downloaded.", v58, 2u);
      MEMORY[0x1D38A8460](v58, -1, -1);
    }

    return 0;
  }

  sub_1D2AB8504(v23);
  (*(v20 + 16))(v14, v23, v19);
  (*(v87 + 104))(v14, *MEMORY[0x1E69A12B0], v11);
  sub_1D2AC61A4();
  v32 = v92;
  sub_1D2AC6204();
  (*(v86 + 8))(v18, v15);
  (*(v20 + 8))(v23, v19);
  v33 = v89;
  sub_1D2AC61C4();
  v34 = v88;
  v35 = v90;
  v36 = (*(v88 + 88))(v33, v90);
  if (v36 == *MEMORY[0x1E69A0EF8])
  {
    (*(v34 + 96))(v33, v35);
    v38 = v83;
    v37 = v84;
    v39 = v85;
    (*(v83 + 32))(v84, v33, v85);
    v40 = v77;
    if (qword_1EE0888F0 != -1)
    {
      swift_once();
    }

    v41 = sub_1D2AC63B4();
    __swift_project_value_buffer(v41, qword_1EE0888F8);
    v42 = v82;
    (*(v38 + 16))(v82, v37, v39);
    v43 = sub_1D2AC6394();
    v44 = sub_1D2AC6EB4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v93 = v46;
      *v45 = 136315138;
      sub_1D2AC6144();
      sub_1D2AC6134();
      v47 = v42;
      sub_1D2ABCCA4(&qword_1EC7065B8, MEMORY[0x1E69A0F90]);
      v48 = sub_1D2AC6E24();
      v50 = v49;

      v51 = *(v38 + 8);
      v52 = v47;
      v53 = v85;
      v51(v52, v85);
      v54 = sub_1D2ABAFCC(v48, v50, &v93);

      *(v45 + 4) = v54;
      _os_log_impl(&dword_1D2A17000, v43, v44, "ImagePlayground is restricted: %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x1D38A8460](v46, -1, -1);
      MEMORY[0x1D38A8460](v45, -1, -1);

      v51(v84, v53);
      (*(v91 + 8))(v92, v77);
    }

    else
    {

      v74 = *(v38 + 8);
      v74(v42, v39);
      v74(v37, v39);
      (*(v91 + 8))(v32, v40);
    }

    return 1;
  }

  v60 = v77;
  if (v36 == *MEMORY[0x1E69A0F00])
  {
    (*(v34 + 96))(v33, v35);
    v61 = v78;
    v62 = v79;
    v63 = v81;
    (*(v78 + 32))(v81, v33, v79);
    if (qword_1EE0888F0 != -1)
    {
      swift_once();
    }

    v64 = sub_1D2AC63B4();
    __swift_project_value_buffer(v64, qword_1EE0888F8);
    v65 = v80;
    (*(v61 + 16))(v80, v63, v62);
    v66 = sub_1D2AC6394();
    v67 = sub_1D2AC6EB4();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v93 = v69;
      *v68 = 136315138;
      sub_1D2AC6174();
      sub_1D2AC6164();
      sub_1D2ABCCA4(&qword_1EC7065C0, MEMORY[0x1E69A1168]);
      v70 = sub_1D2AC6E24();
      v72 = v71;

      v90 = *(v61 + 8);
      (v90)(v80, v62);
      v73 = sub_1D2ABAFCC(v70, v72, &v93);

      *(v68 + 4) = v73;
      _os_log_impl(&dword_1D2A17000, v66, v67, "ImagePlayground is unavailable: %s", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v69);
      MEMORY[0x1D38A8460](v69, -1, -1);
      MEMORY[0x1D38A8460](v68, -1, -1);

      (v90)(v81, v62);
      (*(v91 + 8))(v32, v77);
    }

    else
    {

      v75 = *(v61 + 8);
      v75(v65, v62);
      v75(v63, v62);
      (*(v91 + 8))(v32, v60);
    }

    return 0;
  }

  if (v36 == *MEMORY[0x1E69A11A0])
  {
    (*(v91 + 8))(v32, v77);
    return 1;
  }

  result = sub_1D2AC7174();
  __break(1u);
  return result;
}

uint64_t sub_1D2AB7DD4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t static DeviceSupport.currentAvailability(for:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v20 = sub_1D2AC61D4();
  v3 = *(v20 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D2AC61B4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D2AC5FD4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  sub_1D2AB8504(v16);
  (*(v13 + 16))(v6, v16, v12);
  (*(v3 + 104))(v6, *MEMORY[0x1E69A12B0], v20);
  sub_1D2AC61A4();
  sub_1D2AC6204();
  (*(v8 + 8))(v11, v7);
  return (*(v13 + 8))(v16, v12);
}

ImagePlayground::DeviceSupport::UseCase_optional __swiftcall DeviceSupport.UseCase.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D2AC71D4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t DeviceSupport.UseCase.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000027;
  }

  else
  {
    result = 0xD000000000000025;
  }

  *v0;
  return result;
}

uint64_t sub_1D2AB81B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000027;
  }

  else
  {
    v4 = 0xD000000000000025;
  }

  if (v3)
  {
    v5 = "Apple Vision Pro";
  }

  else
  {
    v5 = ".GenerativePlayground";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000027;
  }

  else
  {
    v7 = 0xD000000000000025;
  }

  if (*a2)
  {
    v8 = ".GenerativePlayground";
  }

  else
  {
    v8 = "Apple Vision Pro";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1D2AC7354();
  }

  return v10 & 1;
}

uint64_t sub_1D2AB8264()
{
  v1 = *v0;
  sub_1D2AC7444();
  sub_1D2AC6C74();

  return sub_1D2AC7484();
}

uint64_t sub_1D2AB82E4()
{
  *v0;
  sub_1D2AC6C74();
}

uint64_t sub_1D2AB8350()
{
  v1 = *v0;
  sub_1D2AC7444();
  sub_1D2AC6C74();

  return sub_1D2AC7484();
}

uint64_t sub_1D2AB83CC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1D2AC71D4();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1D2AB842C(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000027;
  }

  else
  {
    v2 = 0xD000000000000025;
  }

  if (*v1)
  {
    v3 = ".GenerativePlayground";
  }

  else
  {
    v3 = "Apple Vision Pro";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t DeviceSupport.PartnerAvailability.hashValue.getter()
{
  v1 = *v0;
  sub_1D2AC7444();
  MEMORY[0x1D38A7890](v1);
  return sub_1D2AC7484();
}

id sub_1D2AB8504@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7066F8, &qword_1D2ADAEB0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v19 - v3;
  v5 = sub_1D2AC6014();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D2AC6034();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() _deviceLanguage];
  if (result)
  {
    v16 = result;
    sub_1D2AC6C24();

    sub_1D2AC5FA4();
    sub_1D2AC6024();
    sub_1D2AC6004();
    (*(v6 + 8))(v9, v5);
    v17 = sub_1D2AC5FD4();
    v18 = *(v17 - 8);
    result = (*(v18 + 48))(v4, 1, v17);
    if (result != 1)
    {
      (*(v11 + 8))(v14, v10);
      return (*(v18 + 32))(v20, v4, v17);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static DeviceSupport.externalPartnerAvailability.getter@<X0>(char *a1@<X8>)
{
  v91 = a1;
  v1 = sub_1D2AC6184();
  v81 = *(v1 - 8);
  v82 = v1;
  v2 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v80 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D2AC6134();
  v78 = *(v4 - 8);
  v79 = v4;
  v5 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v77 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D2AC6194();
  v8 = *(v7 - 8);
  v84 = v7;
  v85 = v8;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v75 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v76 = &v75 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v83 = &v75 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706700, &qword_1D2ADAEB8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v89 = &v75 - v17;
  v18 = sub_1D2AC61F4();
  v19 = *(v18 - 8);
  v92 = v18;
  v93 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v86 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1D2AC61D4();
  v22 = *(v88 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v25 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1D2AC61B4();
  v26 = *(v87 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v29 = &v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1D2AC5FD4();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_1D2AC6224();
  v35 = *(v90 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v38 = &v75 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2AB8504(v34);
  (*(v31 + 16))(v25, v34, v30);
  (*(v22 + 104))(v25, *MEMORY[0x1E69A12B0], v88);
  v39 = v92;
  sub_1D2AC61A4();
  sub_1D2AC6204();
  (*(v26 + 8))(v29, v87);
  v40 = v89;
  v41 = v34;
  v42 = v93;
  (*(v31 + 8))(v41, v30);
  sub_1D2AC6214();
  if ((*(v42 + 48))(v40, 1, v39) == 1)
  {
    (*(v35 + 8))(v38, v90);
    result = sub_1D2A2E61C(v40, &qword_1EC706700, &qword_1D2ADAEB8);
    *v91 = 2;
    return result;
  }

  v88 = v35;
  v44 = v86;
  (*(v42 + 32))(v86, v40, v39);
  v45 = v83;
  sub_1D2AC61E4();
  v46 = v84;
  v47 = v85;
  v48 = (*(v85 + 88))(v45, v84);
  if (v48 == *MEMORY[0x1E69A0EF8])
  {
    v49 = v76;
    (*(v47 + 16))(v76, v45, v46);
    (*(v47 + 96))(v49, v46);
    v50 = sub_1D2AC6144();
    v51 = sub_1D2AC6154();
    (*(*(v51 - 8) + 8))(v49, v51);
    v52 = v46;
    v53 = v45;
    v55 = v77;
    v54 = v78;
    v56 = v79;
    (*(v78 + 104))(v77, *MEMORY[0x1E69A0F80], v79);
    LODWORD(v89) = sub_1D2AB9238(v55, v50);

    (*(v54 + 8))(v55, v56);
    v45 = v53;
    v46 = v52;
    (*(v42 + 8))(v86, v39);
    (*(v88 + 8))(v38, v90);
    v57 = v91;
    if (v89)
    {
      v58 = 1;
LABEL_12:
      *v57 = v58;
      return (*(v47 + 8))(v45, v46);
    }

LABEL_11:
    v58 = 2;
    goto LABEL_12;
  }

  if (v48 != *MEMORY[0x1E69A0F00])
  {
    v73 = *MEMORY[0x1E69A11A0];
    v74 = v48;
    (*(v42 + 8))(v44, v39);
    (*(v88 + 8))(v38, v90);
    v57 = v91;
    if (v74 == v73)
    {
      *v91 = 0;
      return (*(v47 + 8))(v45, v46);
    }

    goto LABEL_11;
  }

  v59 = v75;
  (*(v47 + 16))(v75, v45, v46);
  v60 = *(v47 + 96);
  v85 = v47 + 96;
  v60(v59, v46);
  (*(v81 + 32))(v80, v59, v82);
  v87 = sub_1D2AC6174();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706708, &qword_1D2ADAEC0);
  v61 = sub_1D2AC6164();
  v62 = *(v61 - 8);
  v63 = *(v62 + 72);
  v64 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1D2ACAB40;
  v66 = *MEMORY[0x1E69A1158];
  v89 = v38;
  v67 = *(v62 + 104);
  v67(v65 + v64, v66, v61);
  v67(v65 + v64 + v63, *MEMORY[0x1E69A1150], v61);
  v87 = sub_1D2ABB574(v65, v87);
  swift_setDeallocating();
  v68 = *(v65 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_1D2AC95B0;
  v67(v69 + v64, *MEMORY[0x1E69A10B8], v61);
  v70 = sub_1D2ABC810(v69);
  swift_setDeallocating();
  (*(v62 + 8))(v69 + v64, v61);
  swift_deallocClassInstance();
  LOBYTE(v61) = sub_1D2AB9450(v87, v70);

  (*(v81 + 8))(v80, v82);
  (*(v93 + 8))(v86, v92);
  (*(v88 + 8))(v89, v90);
  v71 = (v85 - 88);
  if (v61)
  {
    v72 = 3;
  }

  else
  {
    v72 = 2;
  }

  *v91 = v72;
  return (*v71)(v83, v84);
}

uint64_t sub_1D2AB9238(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D2AC6134();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_1D2ABCCA4(&qword_1EC7065B8, MEMORY[0x1E69A0F90]), v9 = sub_1D2AC6BA4(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_1D2ABCCA4(&qword_1EC706730, MEMORY[0x1E69A0F90]);
      v17 = sub_1D2AC6BC4();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1D2AB9450(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2AC6164();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v46 = &v35 - v11;
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = &v35 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a1 + 56);
  v35 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v42 = v5 + 32;
  v44 = a2 + 56;
  v45 = v5 + 16;
  v21 = (v5 + 8);
  v36 = v20;
  v37 = &v35 - v13;
  v38 = v5;
  v39 = a1;
  if (v19)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v19));
      v41 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(a1 + 48);
      v43 = *(v5 + 72);
      v26 = *(v5 + 16);
      v26(v14, v25 + v43 * (v22 | (v15 << 6)), v4);
      (*(v5 + 32))(v46, v14, v4);
      v27 = *(a2 + 40);
      sub_1D2ABCCA4(&qword_1EC7065C0, MEMORY[0x1E69A1168]);
      v28 = sub_1D2AC6BA4();
      v29 = -1 << *(a2 + 32);
      v30 = v28 & ~v29;
      if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        break;
      }

      v40 = v21 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v31 = a2;
      v32 = ~v29;
      while (1)
      {
        v26(v9, *(v31 + 48) + v30 * v43, v4);
        sub_1D2ABCCA4(&qword_1EC706738, MEMORY[0x1E69A1168]);
        v33 = sub_1D2AC6BC4();
        v34 = *v21;
        (*v21)(v9, v4);
        if (v33)
        {
          break;
        }

        v30 = (v30 + 1) & v32;
        if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          v34(v46, v4);
          return 0;
        }
      }

      result = (v34)(v46, v4);
      a2 = v31;
      v5 = v38;
      a1 = v39;
      v20 = v36;
      v14 = v37;
      v19 = v41;
      if (!v41)
      {
        goto LABEL_8;
      }
    }

    (*v21)(v46, v4);
    return 0;
  }

LABEL_8:
  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v35 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v41 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t static DeviceSupport.isImageGenerationSupported.getter()
{
  v0 = sub_1D2AC6154();
  v83 = *(v0 - 8);
  v84 = v0;
  v1 = *(v83 + 64);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v85 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v86 = &v77 - v4;
  v5 = sub_1D2AC6184();
  v79 = *(v5 - 8);
  v80 = v5;
  v6 = *(v79 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v81 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v82 = &v77 - v9;
  v91 = sub_1D2AC6194();
  v89 = *(v91 - 8);
  v10 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v90 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D2AC61D4();
  v88 = *(v12 - 8);
  v13 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D2AC61B4();
  v87 = *(v16 - 8);
  v17 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D2AC5FD4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D2AC6224();
  v92 = *(v25 - 8);
  v26 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v93 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7066F8, &qword_1D2ADAEB0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v77 - v30;
  if (sub_1D2ABC350())
  {
    return 1;
  }

  v78 = v25;
  (*(v21 + 56))(v31, 1, 1, v20);
  v32 = _s15ImagePlayground13DeviceSupportC30isSpotlightResourcesDownloaded12languageCodeSb10Foundation6LocaleV08LanguageJ0VSg_tFZ_0(v31);
  sub_1D2A2E61C(v31, &qword_1EC7066F8, &qword_1D2ADAEB0);
  if ((v32 & 1) == 0)
  {
    if (qword_1EE0888F0 != -1)
    {
      swift_once();
    }

    v54 = sub_1D2AC63B4();
    __swift_project_value_buffer(v54, qword_1EE0888F8);
    v55 = sub_1D2AC6394();
    v56 = sub_1D2AC6EB4();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_1D2A17000, v55, v56, "Image Generation is unavailable: Spotlight resources not downloaded.", v57, 2u);
      MEMORY[0x1D38A8460](v57, -1, -1);
    }

    return 0;
  }

  if (sub_1D2A63C68() & 1) != 0 || (sub_1D2A63D38())
  {
    sub_1D2AB8504(v24);
  }

  else
  {
    sub_1D2A63E08();
    sub_1D2AB8504(v24);
  }

  (*(v21 + 16))(v15, v24, v20);
  (*(v88 + 104))(v15, *MEMORY[0x1E69A12B0], v12);
  sub_1D2AC61A4();
  v33 = v93;
  sub_1D2AC6204();
  (*(v87 + 8))(v19, v16);
  (*(v21 + 8))(v24, v20);
  v34 = v90;
  sub_1D2AC61C4();
  v35 = v89;
  v36 = v91;
  v37 = (*(v89 + 88))(v34, v91);
  if (v37 == *MEMORY[0x1E69A0EF8])
  {
    (*(v35 + 96))(v34, v36);
    v38 = v83;
    v39 = v84;
    v40 = v86;
    (*(v83 + 32))(v86, v34, v84);
    if (qword_1EE0888F0 != -1)
    {
      swift_once();
    }

    v41 = sub_1D2AC63B4();
    __swift_project_value_buffer(v41, qword_1EE0888F8);
    v42 = v85;
    (*(v38 + 16))(v85, v40, v39);
    v43 = sub_1D2AC6394();
    v44 = sub_1D2AC6EB4();
    v45 = os_log_type_enabled(v43, v44);
    v46 = v78;
    if (v45)
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v94 = v48;
      *v47 = 136315138;
      sub_1D2AC6144();
      sub_1D2AC6134();
      sub_1D2ABCCA4(&qword_1EC7065B8, MEMORY[0x1E69A0F90]);
      v49 = sub_1D2AC6E24();
      v51 = v50;

      v52 = *(v38 + 8);
      v52(v85, v39);
      v53 = sub_1D2ABAFCC(v49, v51, &v94);

      *(v47 + 4) = v53;
      _os_log_impl(&dword_1D2A17000, v43, v44, "Image Generation is restricted: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x1D38A8460](v48, -1, -1);
      MEMORY[0x1D38A8460](v47, -1, -1);

      v52(v86, v39);
      (*(v92 + 8))(v93, v78);
    }

    else
    {

      v75 = *(v38 + 8);
      v75(v42, v39);
      v75(v40, v39);
      (*(v92 + 8))(v33, v46);
    }

    return 1;
  }

  if (v37 == *MEMORY[0x1E69A0F00])
  {
    (*(v35 + 96))(v34, v36);
    v59 = v79;
    v60 = v80;
    v61 = v82;
    (*(v79 + 32))(v82, v34, v80);
    if (qword_1EE0888F0 != -1)
    {
      swift_once();
    }

    v62 = sub_1D2AC63B4();
    __swift_project_value_buffer(v62, qword_1EE0888F8);
    v63 = v81;
    (*(v59 + 16))(v81, v61, v60);
    v64 = sub_1D2AC6394();
    v65 = sub_1D2AC6EB4();
    v66 = os_log_type_enabled(v64, v65);
    v67 = v78;
    if (v66)
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v94 = v69;
      *v68 = 136315138;
      sub_1D2AC6174();
      sub_1D2AC6164();
      sub_1D2ABCCA4(&qword_1EC7065C0, MEMORY[0x1E69A1168]);
      v70 = sub_1D2AC6E24();
      v72 = v71;

      v73 = *(v59 + 8);
      v73(v81, v60);
      v74 = sub_1D2ABAFCC(v70, v72, &v94);

      *(v68 + 4) = v74;
      _os_log_impl(&dword_1D2A17000, v64, v65, "Image Generation is unavailable: %s", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v69);
      MEMORY[0x1D38A8460](v69, -1, -1);
      MEMORY[0x1D38A8460](v68, -1, -1);

      v73(v82, v60);
      (*(v92 + 8))(v93, v78);
    }

    else
    {

      v76 = *(v59 + 8);
      v76(v63, v60);
      v76(v61, v60);
      (*(v92 + 8))(v33, v67);
    }

    return 0;
  }

  if (v37 == *MEMORY[0x1E69A11A0])
  {
    (*(v92 + 8))(v33, v78);
    return 1;
  }

  result = sub_1D2AC7174();
  __break(1u);
  return result;
}

uint64_t static DeviceSupport.isGenmojiSupported.getter()
{
  v85 = sub_1D2AC6154();
  v83 = *(v85 - 8);
  v0 = *(v83 + 64);
  v1 = MEMORY[0x1EEE9AC00](v85);
  v82 = &v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v84 = &v76 - v3;
  v4 = sub_1D2AC6184();
  v78 = *(v4 - 8);
  v79 = v4;
  v5 = *(v78 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v80 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v81 = &v76 - v8;
  v90 = sub_1D2AC6194();
  v88 = *(v90 - 1);
  v9 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v89 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D2AC61D4();
  v87 = *(v11 - 8);
  v12 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D2AC61B4();
  v86 = *(v15 - 8);
  v16 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D2AC5FD4();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D2AC6224();
  v91 = *(v24 - 8);
  v25 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v92 = &v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7066F8, &qword_1D2ADAEB0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v76 - v29;
  if (sub_1D2ABC350())
  {
    return 1;
  }

  v77 = v24;
  (*(v20 + 56))(v30, 1, 1, v19);
  v31 = _s15ImagePlayground13DeviceSupportC30isSpotlightResourcesDownloaded12languageCodeSb10Foundation6LocaleV08LanguageJ0VSg_tFZ_0(v30);
  sub_1D2A2E61C(v30, &qword_1EC7066F8, &qword_1D2ADAEB0);
  if ((v31 & 1) == 0)
  {
    if (qword_1EE0888F0 != -1)
    {
      swift_once();
    }

    v55 = sub_1D2AC63B4();
    __swift_project_value_buffer(v55, qword_1EE0888F8);
    v56 = sub_1D2AC6394();
    v57 = sub_1D2AC6EB4();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_1D2A17000, v56, v57, "Image Generation is unavailable: Spotlight resources not downloaded.", v58, 2u);
      MEMORY[0x1D38A8460](v58, -1, -1);
    }

    return 0;
  }

  sub_1D2AB8504(v23);
  (*(v20 + 16))(v14, v23, v19);
  (*(v87 + 104))(v14, *MEMORY[0x1E69A12B0], v11);
  sub_1D2AC61A4();
  v32 = v92;
  sub_1D2AC6204();
  (*(v86 + 8))(v18, v15);
  (*(v20 + 8))(v23, v19);
  v33 = v89;
  sub_1D2AC61C4();
  v34 = v88;
  v35 = v90;
  v36 = (*(v88 + 88))(v33, v90);
  if (v36 == *MEMORY[0x1E69A0EF8])
  {
    (*(v34 + 96))(v33, v35);
    v38 = v83;
    v37 = v84;
    v39 = v85;
    (*(v83 + 32))(v84, v33, v85);
    v40 = v77;
    if (qword_1EE0888F0 != -1)
    {
      swift_once();
    }

    v41 = sub_1D2AC63B4();
    __swift_project_value_buffer(v41, qword_1EE0888F8);
    v42 = v82;
    (*(v38 + 16))(v82, v37, v39);
    v43 = sub_1D2AC6394();
    v44 = sub_1D2AC6EB4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v93 = v46;
      *v45 = 136315138;
      sub_1D2AC6144();
      sub_1D2AC6134();
      v47 = v42;
      sub_1D2ABCCA4(&qword_1EC7065B8, MEMORY[0x1E69A0F90]);
      v48 = sub_1D2AC6E24();
      v50 = v49;

      v51 = *(v38 + 8);
      v52 = v47;
      v53 = v85;
      v51(v52, v85);
      v54 = sub_1D2ABAFCC(v48, v50, &v93);

      *(v45 + 4) = v54;
      _os_log_impl(&dword_1D2A17000, v43, v44, "Genmoji is restricted: %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x1D38A8460](v46, -1, -1);
      MEMORY[0x1D38A8460](v45, -1, -1);

      v51(v84, v53);
      (*(v91 + 8))(v92, v77);
    }

    else
    {

      v74 = *(v38 + 8);
      v74(v42, v39);
      v74(v37, v39);
      (*(v91 + 8))(v32, v40);
    }

    return 1;
  }

  v60 = v77;
  if (v36 == *MEMORY[0x1E69A0F00])
  {
    (*(v34 + 96))(v33, v35);
    v61 = v78;
    v62 = v79;
    v63 = v81;
    (*(v78 + 32))(v81, v33, v79);
    if (qword_1EE0888F0 != -1)
    {
      swift_once();
    }

    v64 = sub_1D2AC63B4();
    __swift_project_value_buffer(v64, qword_1EE0888F8);
    v65 = v80;
    (*(v61 + 16))(v80, v63, v62);
    v66 = sub_1D2AC6394();
    v67 = sub_1D2AC6EB4();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v93 = v69;
      *v68 = 136315138;
      sub_1D2AC6174();
      sub_1D2AC6164();
      sub_1D2ABCCA4(&qword_1EC7065C0, MEMORY[0x1E69A1168]);
      v70 = sub_1D2AC6E24();
      v72 = v71;

      v90 = *(v61 + 8);
      (v90)(v80, v62);
      v73 = sub_1D2ABAFCC(v70, v72, &v93);

      *(v68 + 4) = v73;
      _os_log_impl(&dword_1D2A17000, v66, v67, "Genmoji is unavailable: %s", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v69);
      MEMORY[0x1D38A8460](v69, -1, -1);
      MEMORY[0x1D38A8460](v68, -1, -1);

      (v90)(v81, v62);
      (*(v91 + 8))(v32, v77);
    }

    else
    {

      v75 = *(v61 + 8);
      v75(v65, v62);
      v75(v63, v62);
      (*(v91 + 8))(v32, v60);
    }

    return 0;
  }

  if (v36 == *MEMORY[0x1E69A11A0])
  {
    (*(v91 + 8))(v32, v77);
    return 1;
  }

  result = sub_1D2AC7174();
  __break(1u);
  return result;
}

uint64_t sub_1D2ABAFCC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D2ABB098(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1D2A20708(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1D2ABB098(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1D2ABB1A4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1D2AC70C4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1D2ABB1A4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1D2ABB1F0(a1, a2);
  sub_1D2ABB320(&unk_1F4DF9AC8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1D2ABB1F0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1D2ABB40C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1D2AC70C4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1D2AC6CD4();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1D2ABB40C(v10, 0);
        result = sub_1D2AC7074();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1D2ABB320(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1D2ABB480(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1D2ABB40C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706748, &unk_1D2ADB080);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1D2ABB480(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706748, &unk_1D2ADB080);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1D2ABB574(uint64_t a1, uint64_t a2)
{
  v66[2] = *MEMORY[0x1E69E9840];
  v4 = sub_1D2AC6164();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v60 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v52 - v10;
  MEMORY[0x1EEE9AC00](v9);
  i = v52 - v12;
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x1E69E7CD0];
    goto LABEL_31;
  }

  v66[0] = a1;
  v13 = *(a1 + 16);

  v54 = v13;
  if (!v13)
  {
    goto LABEL_30;
  }

  v14 = 0;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = *(v15 + 64);
  v56 = a1;
  v57 = a1 + ((v17 + 32) & ~v17);
  v63 = *(v15 + 56);
  v64 = v16;
  v61 = (a2 + 56);
  v62 = a2;
  v65 = v15;
  v18 = (v15 - 8);
  v53 = ((v15 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  while (1)
  {
    v58 = v14 + 1;
    v66[1] = v14 + 1;
    v64(i, v57 + v63 * v14, v4);
    v19 = *(a2 + 40);
    v55 = sub_1D2ABCCA4(&qword_1EC7065C0, MEMORY[0x1E69A1168]);
    v20 = sub_1D2AC6BA4();
    v21 = -1 << *(a2 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if (((1 << v22) & v61[v22 >> 6]) != 0)
    {
      break;
    }

    v27 = *v18;
LABEL_10:
    v27(i, v4);
    v14 = v58;
    if (v58 == v54)
    {
      goto LABEL_30;
    }
  }

  v25 = ~v21;
  while (1)
  {
    v64(v11, *(v62 + 48) + v22 * v63, v4);
    sub_1D2ABCCA4(&qword_1EC706738, MEMORY[0x1E69A1168]);
    v26 = sub_1D2AC6BC4();
    v27 = *v18;
    (*v18)(v11, v4);
    if (v26)
    {
      break;
    }

    v22 = (v22 + 1) & v25;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if (((1 << v22) & v61[v22 >> 6]) == 0)
    {
      a2 = v62;
      goto LABEL_10;
    }
  }

  v28 = (v27)(i, v4);
  v29 = v62;
  v30 = *(v62 + 32);
  v52[0] = ((1 << v30) + 63) >> 6;
  v31 = 8 * v52[0];
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v52[1] = v52;
    MEMORY[0x1EEE9AC00](v28);
    v33 = v52 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v33, v61, v32);
    v34 = *(v29 + 16);
    *&v33[8 * v23] &= ~v24;
    v53 = v33;
    v54 = (v34 - 1);
    v35 = *(v56 + 16);
    v36 = v58;
    for (i = v35; ; v35 = i)
    {
      if (v36 == v35)
      {
        a2 = sub_1D2ABC028(v53, v52[0], v54, v29);
        goto LABEL_30;
      }

      if (v36 >= *(v56 + 16))
      {
        break;
      }

      v58 = v36;
      v64(v60, v57 + v36 * v63, v4);
      v38 = *(v29 + 40);
      v39 = sub_1D2AC6BA4();
      v40 = -1 << *(v29 + 32);
      v22 = v39 & ~v40;
      v24 = v22 >> 6;
      v23 = 1 << v22;
      if (((1 << v22) & v61[v22 >> 6]) == 0)
      {
        goto LABEL_15;
      }

      v64(v11, *(v62 + 48) + v22 * v63, v4);
      v41 = sub_1D2AC6BC4();
      v27(v11, v4);
      if ((v41 & 1) == 0)
      {
        v42 = ~v40;
        while (1)
        {
          v22 = (v22 + 1) & v42;
          v24 = v22 >> 6;
          v23 = 1 << v22;
          if (((1 << v22) & v61[v22 >> 6]) == 0)
          {
            break;
          }

          v64(v11, *(v62 + 48) + v22 * v63, v4);
          v43 = sub_1D2AC6BC4();
          v27(v11, v4);
          if (v43)
          {
            goto LABEL_25;
          }
        }

LABEL_15:
        v27(v60, v4);
        v29 = v62;
LABEL_16:
        v37 = v58;
        goto LABEL_17;
      }

LABEL_25:
      v27(v60, v4);
      v44 = v53[v24];
      v53[v24] = v44 & ~v23;
      v29 = v62;
      if ((v44 & v23) == 0)
      {
        goto LABEL_16;
      }

      v45 = v54 - 1;
      v37 = v58;
      if (__OFSUB__(v54, 1))
      {
        goto LABEL_33;
      }

      --v54;
      if (!v45)
      {

        a2 = MEMORY[0x1E69E7CD0];
        goto LABEL_30;
      }

LABEL_17:
      v36 = v37 + 1;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v48 = v31;

    v49 = v48;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v50 = v62;

      v29 = v50;
      continue;
    }

    break;
  }

  v51 = swift_slowAlloc();
  memcpy(v51, v61, v49);
  a2 = sub_1D2ABBC34(v51, v52[0], v62, v22, v66);

  MEMORY[0x1D38A8460](v51, -1, -1);
LABEL_30:

LABEL_31:
  v46 = *MEMORY[0x1E69E9840];
  return a2;
}

uint64_t sub_1D2ABBC34(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v37 = a2;
  v9 = sub_1D2AC6164();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v44 = &v37 - v16;
  result = MEMORY[0x1EEE9AC00](v15);
  v50 = &v37 - v18;
  v19 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v38 = a1;
  v39 = v19 - 1;
  v20 = *a5;
  v21 = a5[1];
  v22 = *(*a5 + 16);
  if (v21 == v22)
  {
LABEL_2:

    return sub_1D2ABC028(v38, v37, v39, a3);
  }

  v42 = v10 + 32;
  v43 = v10;
  v45 = a3 + 56;
  v40 = a5;
  v48 = v10 + 16;
  v49 = (v10 + 8);
  while (v21 < v22)
  {
    v24 = *(v10 + 80);
    v47 = *(v10 + 72);
    v25 = v44;
    v46 = *(v10 + 16);
    v46(v44, v20 + ((v24 + 32) & ~v24) + v47 * v21, v9);
    a5[1] = v21 + 1;
    (*(v10 + 32))(v50, v25, v9);
    v26 = *(a3 + 40);
    sub_1D2ABCCA4(&qword_1EC7065C0, MEMORY[0x1E69A1168]);
    v27 = sub_1D2AC6BA4();
    v28 = -1 << *(a3 + 32);
    v29 = v27 & ~v28;
    v30 = v29 >> 6;
    v31 = 1 << v29;
    if (((1 << v29) & *(v45 + 8 * (v29 >> 6))) == 0)
    {
      v23 = *v49;
LABEL_6:
      result = (v23)(v50, v9);
      goto LABEL_7;
    }

    v41 = v49 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v32 = a3;
    v33 = ~v28;
    while (1)
    {
      v46(v14, *(v32 + 48) + v29 * v47, v9);
      sub_1D2ABCCA4(&qword_1EC706738, MEMORY[0x1E69A1168]);
      v34 = sub_1D2AC6BC4();
      v23 = *v49;
      (*v49)(v14, v9);
      if (v34)
      {
        break;
      }

      v29 = (v29 + 1) & v33;
      v30 = v29 >> 6;
      v31 = 1 << v29;
      if (((1 << v29) & *(v45 + 8 * (v29 >> 6))) == 0)
      {
        a3 = v32;
        a5 = v40;
        goto LABEL_6;
      }
    }

    result = (v23)(v50, v9);
    v35 = v38[v30];
    v38[v30] = v35 & ~v31;
    if ((v35 & v31) == 0)
    {
      a3 = v32;
      a5 = v40;
LABEL_7:
      v10 = v43;
      goto LABEL_8;
    }

    v36 = v39 - 1;
    v10 = v43;
    if (__OFSUB__(v39, 1))
    {
      goto LABEL_21;
    }

    a3 = v32;
    a5 = v40;
    --v39;
    if (!v36)
    {
      return MEMORY[0x1E69E7CD0];
    }

LABEL_8:
    v20 = *a5;
    v21 = a5[1];
    v22 = *(*a5 + 16);
    if (v21 == v22)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1D2ABC028(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_1D2AC6164();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706740, &qword_1D2ADB078);
  result = sub_1D2AC7064();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_1D2ABCCA4(&qword_1EC7065C0, MEMORY[0x1E69A1168]);
    result = sub_1D2AC6BA4();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
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
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D2ABC350()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 arguments];

  v2 = sub_1D2AC6D34();
  v8[0] = 0xD000000000000020;
  v8[1] = 0x80000001D2ADFB30;
  v7[2] = v8;
  LOBYTE(v1) = sub_1D2AB7DD4(sub_1D2A7A384, v7, v2);

  if (v1)
  {
    return 1;
  }

  if (qword_1EE088870 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE088878;
  v5 = sub_1D2AC6BF4();
  v6 = [v4 BOOLForKey_];

  return v6;
}

id _s15ImagePlayground13DeviceSupportC30isSpotlightResourcesDownloaded12languageCodeSb10Foundation6LocaleV08LanguageJ0VSg_tFZ_0(uint64_t a1)
{
  v2 = sub_1D2AC6034();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7066F8, &qword_1D2ADAEB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v24 - v12;
  sub_1D2ABCCEC(a1, &v24 - v12);
  v14 = sub_1D2AC5FD4();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1D2A2E61C(v13, &qword_1EC7066F8, &qword_1D2ADAEB0);
    result = [objc_opt_self() _deviceLanguage];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v17 = result;
    sub_1D2AC6C24();

    sub_1D2AC5FA4();
    sub_1D2AC5FB4();
    (*(v3 + 8))(v9, v2);
  }

  else
  {
    sub_1D2AC5FC4();
    (*(v15 + 8))(v13, v14);
  }

  sub_1D2AC5FA4();
  v18 = sub_1D2AC5FE4();
  v19 = SRAreAssetsAvailableForLocale();

  if (v19 >= 3)
  {
    if (qword_1EE0888F0 != -1)
    {
      swift_once();
    }

    v21 = sub_1D2AC63B4();
    __swift_project_value_buffer(v21, qword_1EE0888F8);
    v20 = sub_1D2AC6394();
    v22 = sub_1D2AC6E94();
    if (os_log_type_enabled(v20, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      *(v23 + 4) = v19;
      _os_log_impl(&dword_1D2A17000, v20, v22, "Spotlight Asset Availability has added an unknown SRAvailbiity case: %lu, and it must be adopted.", v23, 0xCu);
      MEMORY[0x1D38A8460](v23, -1, -1);
    }

    LOBYTE(v20) = 1;
  }

  else
  {
    LODWORD(v20) = 6u >> (v19 & 7);
  }

  (*(v3 + 8))(v7, v2);
  return (v20 & 1);
}

uint64_t sub_1D2ABC810(uint64_t a1)
{
  v2 = sub_1D2AC6164();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706740, &qword_1D2ADB078);
    v10 = sub_1D2AC7064();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_1D2ABCCA4(&qword_1EC7065C0, MEMORY[0x1E69A1168]);
      v18 = sub_1D2AC6BA4();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_1D2ABCCA4(&qword_1EC706738, MEMORY[0x1E69A1168]);
          v25 = sub_1D2AC6BC4();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

unint64_t sub_1D2ABCB34()
{
  result = qword_1EC706710;
  if (!qword_1EC706710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706710);
  }

  return result;
}

unint64_t sub_1D2ABCB8C()
{
  result = qword_1EC706718;
  if (!qword_1EC706718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC706720, &qword_1D2ADAF68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706718);
  }

  return result;
}

unint64_t sub_1D2ABCBF4()
{
  result = qword_1EC706728;
  if (!qword_1EC706728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706728);
  }

  return result;
}

uint64_t sub_1D2ABCCA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D2ABCCEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7066F8, &qword_1D2ADAEB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2ABCD6C(void *a1)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706958, &qword_1D2ADB998);
  v36 = *(v38 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - v3;
  v4 = sub_1D2AC5F94();
  v40 = *(v4 - 8);
  v5 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706960, &qword_1D2ADB9A0);
  v34 = *(v7 - 8);
  v35 = v7;
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706968, &qword_1D2ADB9A8);
  v32 = *(v11 - 8);
  v33 = v11;
  v12 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - v13;
  v15 = type metadata accessor for GenerationRecipe_V2.Prompt.Entity.Kind(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706970, &unk_1D2ADB9B0);
  v19 = *(v42 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v22 = &v32 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AC3580();
  v24 = v40;
  sub_1D2AC74A4();
  sub_1D2AC34B8(v41, v18, type metadata accessor for GenerationRecipe_V2.Prompt.Entity.Kind);
  v25 = (*(v24 + 48))(v18, 2, v4);
  if (v25)
  {
    if (v25 == 1)
    {
      v43 = 0;
      sub_1D2AC367C();
      v26 = v42;
      sub_1D2AC7294();
      (*(v32 + 8))(v14, v33);
    }

    else
    {
      v44 = 1;
      sub_1D2AC3628();
      v26 = v42;
      sub_1D2AC7294();
      (*(v34 + 8))(v10, v35);
    }

    return (*(v19 + 8))(v22, v26);
  }

  else
  {
    v27 = v36;
    (*(v24 + 32))(v39, v18, v4);
    v45 = 2;
    sub_1D2AC35D4();
    v28 = v37;
    v29 = v42;
    sub_1D2AC7294();
    sub_1D2AC33B8(&qword_1EC704648, MEMORY[0x1E69695A8]);
    v30 = v38;
    sub_1D2AC7304();
    (*(v27 + 8))(v28, v30);
    (*(v24 + 8))(v39, v4);
    return (*(v19 + 8))(v22, v29);
  }
}

uint64_t sub_1D2ABD2B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706918, &qword_1D2ADB978);
  v4 = *(v3 - 8);
  v58 = v3;
  v59 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v63 = &v53 - v6;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706920, &qword_1D2ADB980);
  v55 = *(v57 - 8);
  v7 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v62 = &v53 - v8;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706928, &qword_1D2ADB988);
  v61 = *(v56 - 8);
  v9 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v11 = &v53 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706930, &qword_1D2ADB990);
  v64 = *(v12 - 8);
  v13 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v53 - v14;
  v16 = type metadata accessor for GenerationRecipe_V2.Prompt.Entity.Kind(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v53 - v21;
  v23 = a1[3];
  v24 = a1[4];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1D2AC3580();
  v25 = v65;
  sub_1D2AC7494();
  if (!v25)
  {
    v26 = v16;
    v27 = v61;
    v28 = v62;
    v53 = v20;
    v54 = v22;
    v29 = v63;
    v65 = 0;
    v30 = sub_1D2AC7284();
    v31 = (2 * *(v30 + 16)) | 1;
    v67 = v30;
    v68 = v30 + 32;
    v69 = 0;
    v70 = v31;
    v32 = sub_1D2A7615C();
    v33 = v15;
    if (v32 == 3 || v69 != v70 >> 1)
    {
      v38 = sub_1D2AC70B4();
      swift_allocError();
      v40 = v39;
      v41 = v12;
      v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704680, &qword_1D2ACBA90) + 48);
      *v40 = v26;
      sub_1D2AC71F4();
      sub_1D2AC70A4();
      (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6AF8], v38);
      swift_willThrow();
      (*(v64 + 8))(v33, v41);
    }

    else
    {
      if (v32)
      {
        if (v32 == 1)
        {
          v71 = 1;
          sub_1D2AC3628();
          v34 = v65;
          sub_1D2AC71E4();
          v35 = v64;
          if (!v34)
          {
            (*(v55 + 8))(v28, v57);
            (*(v35 + 8))(v15, v12);
            swift_unknownObjectRelease();
            v36 = sub_1D2AC5F94();
            v37 = v54;
            (*(*(v36 - 8) + 56))(v54, 2, 2, v36);
LABEL_17:
            v52 = v60;
            goto LABEL_18;
          }
        }

        else
        {
          v71 = 2;
          sub_1D2AC35D4();
          v45 = v29;
          v46 = v65;
          sub_1D2AC71E4();
          v47 = v60;
          v35 = v64;
          if (!v46)
          {
            v48 = sub_1D2AC5F94();
            sub_1D2AC33B8(&qword_1EC704688, MEMORY[0x1E69695A8]);
            v49 = v53;
            v50 = v58;
            sub_1D2AC7264();
            (*(v59 + 8))(v45, v50);
            (*(v35 + 8))(v33, v12);
            swift_unknownObjectRelease();
            (*(*(v48 - 8) + 56))(v49, 0, 2, v48);
            v37 = v54;
            sub_1D2AC3454(v49, v54);
            v52 = v47;
LABEL_18:
            sub_1D2AC3454(v37, v52);
            return __swift_destroy_boxed_opaque_existential_0(v66);
          }
        }
      }

      else
      {
        v71 = 0;
        sub_1D2AC367C();
        v44 = v65;
        sub_1D2AC71E4();
        if (!v44)
        {
          (*(v27 + 8))(v11, v56);
          (*(v64 + 8))(v15, v12);
          swift_unknownObjectRelease();
          v51 = sub_1D2AC5F94();
          v37 = v54;
          (*(*(v51 - 8) + 56))(v54, 1, 2, v51);
          goto LABEL_17;
        }

        v35 = v64;
      }

      (*(v35 + 8))(v33, v12);
    }

    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v66);
}

uint64_t sub_1D2ABDA04(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706908, &qword_1D2ADB970);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AC3400();
  sub_1D2AC74A4();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v17) = 0;
  sub_1D2AC72D4();
  if (!v2)
  {
    v13 = type metadata accessor for GenerationRecipe_V2.Prompt.Entity(0);
    v14 = *(v13 + 20);
    LOBYTE(v17) = 1;
    type metadata accessor for GenerationRecipe_V2.Prompt.Entity.Kind(0);
    sub_1D2AC33B8(&qword_1EC706910, type metadata accessor for GenerationRecipe_V2.Prompt.Entity.Kind);
    sub_1D2AC7304();
    v17 = *(v3 + *(v13 + 24));
    v16[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7046B0, &qword_1D2AD42B0);
    sub_1D2A71DA4(&qword_1EC7046B8);
    sub_1D2AC7304();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D2ABDC3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for GenerationRecipe_V2.Prompt.Entity.Kind(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7068F0, &unk_1D2ADB960);
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  v11 = type metadata accessor for GenerationRecipe_V2.Prompt.Entity(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AC3400();
  v28 = v10;
  v16 = v29;
  sub_1D2AC7494();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v17 = v6;
  v18 = v26;
  v19 = v27;
  LOBYTE(v30) = 0;
  *v14 = sub_1D2AC7234();
  v14[1] = v20;
  v24 = v20;
  v29 = v14;
  LOBYTE(v30) = 1;
  sub_1D2AC33B8(&qword_1EC706900, type metadata accessor for GenerationRecipe_V2.Prompt.Entity.Kind);
  sub_1D2AC7264();
  sub_1D2AC3454(v17, v29 + *(v11 + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7046B0, &qword_1D2AD42B0);
  v31 = 2;
  sub_1D2A71DA4(&qword_1EC7046D0);
  sub_1D2AC7264();
  (*(v18 + 8))(v28, v19);
  v21 = *(v11 + 24);
  v22 = v29;
  *(v29 + v21) = v30;
  sub_1D2AC34B8(v22, v25, type metadata accessor for GenerationRecipe_V2.Prompt.Entity);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1D2AC3520(v22, type metadata accessor for GenerationRecipe_V2.Prompt.Entity);
}

uint64_t sub_1D2ABE000(uint64_t a1)
{
  v2 = sub_1D2AC3580();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2ABE03C(uint64_t a1)
{
  v2 = sub_1D2AC3580();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2ABE078(uint64_t a1)
{
  v2 = sub_1D2AC367C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2ABE0B4(uint64_t a1)
{
  v2 = sub_1D2AC367C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2ABE0F0(uint64_t a1)
{
  v2 = sub_1D2AC35D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2ABE12C(uint64_t a1)
{
  v2 = sub_1D2AC35D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2ABE168(uint64_t a1)
{
  v2 = sub_1D2AC3628();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2ABE1A4(uint64_t a1)
{
  v2 = sub_1D2AC3628();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2ABE214(uint64_t a1)
{
  v2 = sub_1D2AC3400();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2ABE250(uint64_t a1)
{
  v2 = sub_1D2AC3400();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL sub_1D2ABE2BC(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1D2AC7354() & 1) == 0 || (sub_1D2AC06F0(a1 + *(a3 + 20), a2 + *(a3 + 20)) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);
  v9 = *(a1 + v7);
  v8 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v12 = *v10;
  v11 = v10[1];
  return v9 == v12 && v8 == v11;
}

uint64_t sub_1D2ABE34C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7068D8, &qword_1D2ADB958);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AC32C8();
  sub_1D2AC74A4();
  v15 = 0;
  sub_1D2AC72D4();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7068C0, &qword_1D2ADB950);
    sub_1D2AC331C(&qword_1EC7068E0, &qword_1EC7068E8);
    sub_1D2AC7304();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D2ABE528(uint64_t a1)
{
  v2 = sub_1D2AC32C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2ABE564(uint64_t a1)
{
  v2 = sub_1D2AC32C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2ABE5A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D2AC09F0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

BOOL sub_1D2ABE5F0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D2AC7354() & 1) == 0)
  {
    return 0;
  }

  return sub_1D2A694CC(v2, v3);
}

uint64_t sub_1D2ABE664(void *a1, int a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706B78, &qword_1D2ADD118);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706B80, &qword_1D2ADD120);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706B88, &qword_1D2ADD128);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AC4A44();
  sub_1D2AC74A4();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_1D2AC4A98();
    sub_1D2AC7294();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_1D2AC4AEC();
    sub_1D2AC7294();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

uint64_t sub_1D2ABE920(uint64_t a1)
{
  v2 = sub_1D2AC4AEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2ABE95C(uint64_t a1)
{
  v2 = sub_1D2AC4AEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2ABE998(uint64_t a1)
{
  v2 = sub_1D2AC4A44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2ABE9D4(uint64_t a1)
{
  v2 = sub_1D2AC4A44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2ABEA10(uint64_t a1)
{
  v2 = sub_1D2AC4A98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2ABEA4C(uint64_t a1)
{
  v2 = sub_1D2AC4A98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2ABEA88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D2AC0C2C(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1D2ABEAD4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706AE8, &qword_1D2ADCCD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8 - 8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AC4530();
  sub_1D2AC74A4();
  v22 = *v3;
  v19 = *v3;
  v18 = 0;
  sub_1D2A90F20(&v22, v17);
  sub_1D2A722BC();
  sub_1D2AC72C4();
  if (v2)
  {
    sub_1D2A47930(v19, *(&v19 + 1));
  }

  else
  {
    sub_1D2A47930(v19, *(&v19 + 1));
    v21 = v3[1];
    v19 = v3[1];
    v18 = 1;
    sub_1D2A90F20(&v21, v17);
    sub_1D2AC72C4();
    sub_1D2A47930(v19, *(&v19 + 1));
    v19 = v3[2];
    v20 = v19;
    v18 = 2;
    sub_1D2A90F20(&v20, v17);
    sub_1D2AC72C4();
    sub_1D2A47930(v19, *(&v19 + 1));
    v12 = *(v3 + 6);
    LOBYTE(v19) = 3;
    sub_1D2AC72F4();
    v13 = *(v3 + 7);
    LOBYTE(v19) = 4;
    sub_1D2AC72F4();
    LOBYTE(v19) = *(v3 + 64);
    v17[0] = 5;
    sub_1D2AC4640();
    sub_1D2AC7304();
    v14 = *(v3 + 9);
    v15 = *(v3 + 10);
    LOBYTE(v19) = 6;
    sub_1D2AC72D4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D2ABEDB8(uint64_t a1)
{
  v2 = sub_1D2AC4530();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2ABEDF4(uint64_t a1)
{
  v2 = sub_1D2AC4530();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D2ABEE30@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D2AC10E8(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1D2ABEEA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v14 = a4;
  v15 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706AE0, &qword_1D2ADCCD0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AC44DC();
  sub_1D2AC74A4();
  LOBYTE(v16) = 0;
  sub_1D2AC72D4();
  if (!v5)
  {
    v16 = v14;
    v17 = v15;
    v18 = 1;
    sub_1D2A479B4(v14, v15);
    sub_1D2A722BC();
    sub_1D2AC7304();
    sub_1D2A47944(v16, v17);
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D2ABF040(uint64_t a1)
{
  v2 = sub_1D2AC44DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2ABF07C(uint64_t a1)
{
  v2 = sub_1D2AC44DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2ABF0B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D2AC1684(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1D2ABF108(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706AD8, &qword_1D2ADCCC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8 - 8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AC4488();
  sub_1D2AC74A4();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v18) = 0;
  sub_1D2AC72D4();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    LOBYTE(v18) = 1;
    sub_1D2AC72A4();
    v18 = *(v3 + 2);
    v19 = v18;
    v17[23] = 2;
    sub_1D2A90F20(&v19, v17);
    sub_1D2A722BC();
    sub_1D2AC72C4();
    sub_1D2A47930(v18, *(&v18 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D2ABF300(uint64_t a1)
{
  v2 = sub_1D2AC4488();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2ABF33C(uint64_t a1)
{
  v2 = sub_1D2AC4488();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D2ABF378@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D2AC18A0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1D2ABF3D4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706858, &qword_1D2ADB910);
  v71 = *(v4 - 8);
  v72 = v4;
  v5 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v68 = &v58 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706860, &qword_1D2ADB918);
  v69 = *(v7 - 8);
  v70 = v7;
  v8 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v67 = &v58 - v9;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706868, &qword_1D2ADB920);
  v65 = *(v66 - 8);
  v10 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v62 = &v58 - v11;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706870, &qword_1D2ADB928);
  v63 = *(v64 - 8);
  v12 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v61 = &v58 - v13;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706878, &qword_1D2ADB930);
  v59 = *(v60 - 8);
  v14 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v16 = &v58 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706880, &qword_1D2ADB938);
  v58 = *(v17 - 8);
  v18 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v58 - v19;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706888, &qword_1D2ADB940);
  v74 = *(v86 - 8);
  v21 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v23 = &v58 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AC2DDC();
  v25 = v23;
  sub_1D2AC74A4();
  v26 = v2[1];
  v73 = *v2;
  v27 = v2[2];
  v28 = v2[3];
  v30 = v2[4];
  v29 = v2[5];
  v31 = v2[8];
  v32 = v31 >> 61;
  if ((v31 >> 61) > 2)
  {
    if (v32 != 3)
    {
      v37 = v86;
      v38 = v25;
      if (v32 == 4)
      {
        LOBYTE(v75) = 4;
        v39 = v27;
        v40 = v28;
        sub_1D2AC2E84();
        v41 = v26;
        v42 = v67;
        sub_1D2AC7294();
        v75 = v73;
        v76 = v41;
        v77 = v39;
        v78 = v40;
        v79 = v30;
        v80 = v29;
        sub_1D2AC3178();
        v43 = v70;
        sub_1D2AC7304();
        (*(v69 + 8))(v42, v43);
      }

      else
      {
        LOBYTE(v75) = 5;
        sub_1D2AC2E30();
        v56 = v68;
        sub_1D2AC7294();
        v57 = v72;
        sub_1D2AC72D4();
        (*(v71 + 8))(v56, v57);
      }

      v54 = *(v74 + 8);
      v55 = v38;
      return v54(v55, v37);
    }

    LOBYTE(v75) = 3;
    v45 = v27;
    v46 = v28;
    sub_1D2AC2F2C();
    v47 = v62;
    v37 = v86;
    sub_1D2AC7294();
    v75 = v73;
    v76 = v26;
    v77 = v45;
    v78 = v46;
    sub_1D2AC31CC();
    v48 = v66;
    sub_1D2AC7304();
    (*(v65 + 8))(v47, v48);
  }

  else
  {
    if (!v32)
    {
      LOBYTE(v75) = 0;
      sub_1D2AC3124();
      v44 = v86;
      sub_1D2AC7294();
      sub_1D2AC72D4();
      (*(v58 + 8))(v20, v17);
      return (*(v74 + 8))(v25, v44);
    }

    v33 = v2[2];
    if (v32 == 1)
    {
      LOBYTE(v75) = 1;
      sub_1D2AC307C();
      v34 = v86;
      sub_1D2AC7294();
      v75 = v73;
      v76 = v26;
      v77 = v33;
      sub_1D2AC3274();
      v35 = v60;
      sub_1D2AC7304();
      (*(v59 + 8))(v16, v35);
      return (*(v74 + 8))(v25, v34);
    }

    v49 = v2[10];
    v71 = v2[9];
    v72 = v49;
    v50 = v2[7];
    v68 = v2[6];
    v69 = v31 & 0x1FFFFFFFFFFFFFFFLL;
    v70 = v50;
    LOBYTE(v75) = 2;
    v51 = v28;
    sub_1D2AC2FD4();
    v52 = v61;
    v37 = v86;
    sub_1D2AC7294();
    v75 = v73;
    v76 = v26;
    v77 = v33;
    v78 = v51;
    v79 = v30;
    v80 = v29;
    v81 = v68;
    v82 = v70;
    v83 = v69;
    v84 = v71;
    v85 = v72;
    sub_1D2AC3220();
    v53 = v64;
    sub_1D2AC7304();
    (*(v63 + 8))(v52, v53);
  }

  v54 = *(v74 + 8);
  v55 = v25;
  return v54(v55, v37);
}

uint64_t sub_1D2ABFC10(uint64_t a1)
{
  v2 = sub_1D2AC2DDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2ABFC4C(uint64_t a1)
{
  v2 = sub_1D2AC2DDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2ABFC88(uint64_t a1)
{
  v2 = sub_1D2AC3124();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2ABFCC4(uint64_t a1)
{
  v2 = sub_1D2AC3124();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2ABFD00(uint64_t a1)
{
  v2 = sub_1D2AC2FD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2ABFD3C(uint64_t a1)
{
  v2 = sub_1D2AC2FD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2ABFD78(uint64_t a1)
{
  v2 = sub_1D2AC2F2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2ABFDB4(uint64_t a1)
{
  v2 = sub_1D2AC2F2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2ABFDF0(uint64_t a1)
{
  v2 = sub_1D2AC2E84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2ABFE2C(uint64_t a1)
{
  v2 = sub_1D2AC2E84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2ABFE68(uint64_t a1)
{
  v2 = sub_1D2AC307C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2ABFEA4(uint64_t a1)
{
  v2 = sub_1D2AC307C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2ABFEE0(uint64_t a1)
{
  v2 = sub_1D2AC2E30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2ABFF1C(uint64_t a1)
{
  v2 = sub_1D2AC2E30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D2ABFF58@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *&result = sub_1D2AC1B44(a1, v7).n128_u64[0];
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1D2ABFFCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1D2AC0510(v7, v9) & 1;
}

uint64_t sub_1D2AC0038(uint64_t a1, uint64_t a2, char a3)
{
  v24 = 0;
  v25 = 0xE000000000000000;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = v5[4];
      v21 = v5[3];
      v22 = v6;
      v7 = v5[1];
      v20 = v5[2];
      v23 = *(v5 + 10);
      v18 = *v5;
      v19 = v7;
      v8 = *(&v18 + 1);
      v9 = v18;
      v10 = v6 >> 61;
      if ((v6 >> 61) > 2)
      {
        if (v10 == 4)
        {
          if (*(&v19 + 1))
          {
            v11 = v19;
          }

          else
          {
            v11 = 0;
          }

          if (*(&v19 + 1))
          {
            v12 = *(&v19 + 1);
          }

          else
          {
            v12 = 0xE000000000000000;
          }

          v16 = v18;
          sub_1D2A75DD0(&v18, v17);

          MEMORY[0x1D38A7100](v11, v12);

          v8 = *(&v16 + 1);
          v9 = v16;
          goto LABEL_4;
        }
      }

      else if (v10 >= 2)
      {
        v9 = *(&v22 + 1);
        v8 = v23;
      }

      sub_1D2A75DD0(&v18, v17);

LABEL_4:
      MEMORY[0x1D38A7100](v9, v8);

      sub_1D2A75E2C(&v18);
      v5 = (v5 + 88);
      --v4;
    }

    while (v4);
  }

  if ((a3 & 1) == 0)
  {
    *&v18 = a2;
    sub_1D2A87D04();
    v13 = sub_1D2AC6FE4();
    MEMORY[0x1D38A7100](v13);
  }

  return v24;
}

uint64_t sub_1D2AC01C4(void *a1, uint64_t a2, uint64_t a3)
{
  v13 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706778, &qword_1D2ADB188);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AC2998();
  sub_1D2AC74A4();
  v16 = a2;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706760, &qword_1D2ADB180);
  sub_1D2AC2A40(&qword_1EC706780, sub_1D2AC2AB8);
  sub_1D2AC7304();
  if (!v3)
  {
    v14 = 1;
    sub_1D2AC72B4();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D2AC03B0(uint64_t a1)
{
  v2 = sub_1D2AC2998();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2AC03EC(uint64_t a1)
{
  v2 = sub_1D2AC2998();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2AC0428@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D2AC2764(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_1D2AC047C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (sub_1D2A69118(*a1, *a2))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v7 = v5;
      }

      else
      {
        v7 = 1;
      }

      if ((v7 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1D2AC04E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D2AC0038(*v1, *(v1 + 8), *(v1 + 16));
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D2AC0510(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v7 = a1[3];
  v6 = a1[4];
  v8 = a1[5];
  v9 = a1[8];
  v10 = v9 >> 61;
  if ((v9 >> 61) <= 2)
  {
    if (v10)
    {
      if (v10 == 1)
      {
        if (*(a2 + 64) >> 61 == 1)
        {
          if (v11 = *(a2 + 16), v3 == *a2) && v4 == *(a2 + 8) || (sub_1D2AC7354())
          {
            if (sub_1D2A694CC(v5, v11))
            {
              goto LABEL_29;
            }
          }
        }

LABEL_30:
        v13 = 0;
        return v13 & 1;
      }

      *&v25 = v3;
      *(&v25 + 1) = v4;
      v26 = v5;
      v27 = v7;
      v28 = v6;
      v29 = v8;
      v30 = *(a1 + 3);
      v31 = v9 & 0x1FFFFFFFFFFFFFFFLL;
      v32 = *(a1 + 9);
      v16 = *(a2 + 64);
      if (v16 >> 61 != 2)
      {
        goto LABEL_30;
      }

      v17 = *(a2 + 16);
      v19 = *a2;
      v20 = v17;
      v18 = *(a2 + 48);
      v21 = *(a2 + 32);
      v22 = v18;
      v23 = v16 & 0x1FFFFFFFFFFFFFFFLL;
      v24 = *(a2 + 72);
      v13 = sub_1D2A97508(&v25, &v19);
      return v13 & 1;
    }

    if (*(a2 + 64) >> 61)
    {
      goto LABEL_30;
    }

LABEL_17:
    if (v3 != *a2 || v4 != *(a2 + 8))
    {
      goto LABEL_21;
    }

LABEL_29:
    v13 = 1;
    return v13 & 1;
  }

  if (v10 == 3)
  {
    if (*(a2 + 64) >> 61 != 3)
    {
      goto LABEL_30;
    }

    goto LABEL_17;
  }

  if (v10 == 4)
  {
    *&v25 = v3;
    *(&v25 + 1) = v4;
    v26 = v5;
    v27 = v7;
    v28 = v6;
    v29 = v8;
    if (*(a2 + 64) >> 61 != 4)
    {
      goto LABEL_30;
    }

    v12 = *(a2 + 16);
    v19 = *a2;
    v20 = v12;
    v21 = *(a2 + 32);
    v13 = sub_1D2A8E038(&v25, &v19);
    return v13 & 1;
  }

  if (*(a2 + 64) >> 61 != 5)
  {
    goto LABEL_30;
  }

  if (v3 == *a2 && v4 == *(a2 + 8))
  {
    goto LABEL_29;
  }

LABEL_21:

  return sub_1D2AC7354();
}

uint64_t sub_1D2AC06F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2AC5F94();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GenerationRecipe_V2.Prompt.Entity.Kind(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704BE8, &unk_1D2ACE5F0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_1D2AC34B8(a1, &v24 - v16, type metadata accessor for GenerationRecipe_V2.Prompt.Entity.Kind);
  sub_1D2AC34B8(a2, &v17[v18], type metadata accessor for GenerationRecipe_V2.Prompt.Entity.Kind);
  v19 = *(v5 + 48);
  v20 = v19(v17, 2, v4);
  if (!v20)
  {
    sub_1D2AC34B8(v17, v12, type metadata accessor for GenerationRecipe_V2.Prompt.Entity.Kind);
    if (!v19(&v17[v18], 2, v4))
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      v21 = sub_1D2AC5F74();
      v23 = *(v5 + 8);
      v23(v8, v4);
      v23(v12, v4);
      sub_1D2AC3520(v17, type metadata accessor for GenerationRecipe_V2.Prompt.Entity.Kind);
      return v21 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_9;
  }

  if (v20 == 1)
  {
    if (v19(&v17[v18], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v19(&v17[v18], 2, v4) != 2)
  {
LABEL_9:
    sub_1D2AC2B2C(v17);
    v21 = 0;
    return v21 & 1;
  }

  sub_1D2AC3520(v17, type metadata accessor for GenerationRecipe_V2.Prompt.Entity.Kind);
  v21 = 1;
  return v21 & 1;
}

uint64_t sub_1D2AC09F0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7068B0, &qword_1D2ADB948);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AC32C8();
  sub_1D2AC7494();
  if (!v1)
  {
    v10[31] = 0;
    v8 = sub_1D2AC7234();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7068C0, &qword_1D2ADB950);
    v10[15] = 1;
    sub_1D2AC331C(&qword_1EC7068C8, &qword_1EC7068D0);
    sub_1D2AC7264();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

uint64_t sub_1D2AC0C2C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706B48, &qword_1D2ADD100);
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706B50, &qword_1D2ADD108);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706B58, &qword_1D2ADD110);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AC4A44();
  v15 = v32;
  sub_1D2AC7494();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v32 = a1;
  v16 = v30;
  v17 = sub_1D2AC7284();
  v18 = (2 * *(v17 + 16)) | 1;
  v33 = v17;
  v34 = v17 + 32;
  v35 = 0;
  v36 = v18;
  v19 = sub_1D2A76160();
  if (v19 == 2 || v35 != v36 >> 1)
  {
    v21 = v10;
    v22 = sub_1D2AC70B4();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704680, &qword_1D2ACBA90) + 48);
    *v24 = &type metadata for GenerationRecipe_V2.DrawOnImageRecipe.AssignmentOptions;
    sub_1D2AC71F4();
    sub_1D2AC70A4();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v31 + 8))(v13, v21);
    swift_unknownObjectRelease();
    a1 = v32;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v37 = v19;
  if (v19)
  {
    v38 = 1;
    sub_1D2AC4A98();
    sub_1D2AC71E4();
    v20 = v31;
    (*(v29 + 8))(v5, v16);
  }

  else
  {
    v38 = 0;
    sub_1D2AC4AEC();
    sub_1D2AC71E4();
    v20 = v31;
    (*(v28 + 8))(v9, v6);
  }

  (*(v20 + 8))(v13, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v32);
  return v37 & 1;
}

uint64_t sub_1D2AC10E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706AC0, &qword_1D2ADCCC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v34 - v8;
  v10 = sub_1D2AC5F94();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2AC5F84();
  sub_1D2AC5F64();
  v59 = v15;
  (*(v11 + 8))(v14, v10);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AC4530();
  sub_1D2AC7494();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    LOBYTE(v40) = 0;
    sub_1D2A723B8();
    sub_1D2AC7224();
    v39 = v46;
    LOBYTE(v40) = 1;
    sub_1D2AC7224();
    v38 = v46;
    LOBYTE(v40) = 2;
    sub_1D2AC7224();
    v18 = *(&v46 + 1);
    v17 = v46;
    LOBYTE(v46) = 3;
    sub_1D2AC7254();
    v20 = v19;
    LOBYTE(v46) = 4;
    sub_1D2AC7254();
    v22 = v21;
    LOBYTE(v40) = 5;
    sub_1D2AC4584();
    sub_1D2AC7264();
    v37 = v46;
    v57 = 6;
    v36 = sub_1D2AC7234();
    v24 = v23;
    (*(v6 + 8))(v9, v5);

    v25 = v39;
    v40 = v39;
    v26 = *(&v39 + 1);
    v27 = v18;
    v35 = v18;
    v28 = v38;
    v41 = v38;
    v29 = *(&v38 + 1);
    v34 = v17;
    v42 = __PAIR128__(v27, v17);
    *&v43 = v20;
    *(&v43 + 1) = v22;
    LOBYTE(v44) = v37;
    *(&v44 + 1) = v58[0];
    DWORD1(v44) = *(v58 + 3);
    v30 = v36;
    *(&v44 + 1) = v36;
    v45 = v24;
    sub_1D2AC45D8(&v40, &v46);
    __swift_destroy_boxed_opaque_existential_0(a1);
    *&v46 = v25;
    *(&v46 + 1) = v26;
    v47 = v28;
    v48 = v29;
    v49 = v34;
    v50 = v35;
    v51 = v20;
    v52 = v22;
    v53 = v37;
    *v54 = v58[0];
    *&v54[3] = *(v58 + 3);
    v55 = v30;
    v56 = v24;
    result = sub_1D2AC4610(&v46);
    v32 = v43;
    *(a2 + 32) = v42;
    *(a2 + 48) = v32;
    *(a2 + 64) = v44;
    *(a2 + 80) = v45;
    v33 = v41;
    *a2 = v40;
    *(a2 + 16) = v33;
  }

  return result;
}

uint64_t sub_1D2AC1684(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706AB0, &qword_1D2ADCCB8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AC44DC();
  sub_1D2AC7494();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    LOBYTE(v13) = 0;
    v8 = sub_1D2AC7234();
    v12[15] = 1;
    sub_1D2A723B8();
    sub_1D2AC7264();
    (*(v4 + 8))(v7, v3);
    v10 = v13;
    v11 = v14;

    sub_1D2A479B4(v10, v11);
    __swift_destroy_boxed_opaque_existential_0(a1);

    sub_1D2A47944(v10, v11);
  }

  return v8;
}

uint64_t sub_1D2AC18A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706AA0, &qword_1D2ADCCB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AC4488();
  sub_1D2AC7494();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_1D2A47930(0, 0xF000000000000000);
  }

  else
  {
    LOBYTE(v23) = 0;
    v11 = sub_1D2AC7234();
    v13 = v12;
    v22 = v11;
    LOBYTE(v23) = 1;
    v14 = sub_1D2AC7204();
    v16 = v15;
    v21 = v14;
    v25 = 2;
    sub_1D2A723B8();
    sub_1D2AC7224();
    (*(v6 + 8))(v9, v5);
    v17 = v23;
    v18 = v24;
    sub_1D2A47930(0, 0xF000000000000000);

    sub_1D2A479A0(v17, v18);
    __swift_destroy_boxed_opaque_existential_0(a1);

    result = sub_1D2A47930(v17, v18);
    v20 = v21;
    *a2 = v22;
    a2[1] = v13;
    a2[2] = v20;
    a2[3] = v16;
    a2[4] = v17;
    a2[5] = v18;
  }

  return result;
}

__n128 sub_1D2AC1B44@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7067C8, &qword_1D2ADB8D0);
  v80 = *(v72 - 8);
  v3 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v85.n128_u64[0] = &v67 - v4;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7067D0, &qword_1D2ADB8D8);
  v81 = *(v78 - 8);
  v5 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v84 = &v67 - v6;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7067D8, &qword_1D2ADB8E0);
  v79 = *(v75 - 8);
  v7 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v83 = &v67 - v8;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7067E0, &qword_1D2ADB8E8);
  v76 = *(v77 - 8);
  v9 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v82 = &v67 - v10;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7067E8, &qword_1D2ADB8F0);
  v73 = *(v74 - 8);
  v11 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v13 = &v67 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7067F0, &qword_1D2ADB8F8);
  v71 = *(v14 - 8);
  v15 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v67 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7067F8, &unk_1D2ADB900);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v67 - v21;
  v23 = a1[3];
  v24 = a1[4];
  v101 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1D2AC2DDC();
  v25 = v87;
  sub_1D2AC7494();
  if (v25)
  {
    goto LABEL_13;
  }

  v26 = v17;
  v68 = v14;
  v69 = v13;
  v27 = v82;
  v28 = v83;
  v29 = v84;
  v30 = v85.n128_u64[0];
  v70 = 0;
  *&v87 = v19;
  v31 = v86;
  v32 = sub_1D2AC7284();
  v33 = (2 * *(v32 + 16)) | 1;
  v97 = v32;
  v98 = v32 + 32;
  v99 = 0;
  v100 = v33;
  v34 = sub_1D2A76168();
  if (v34 == 6 || v99 != v100 >> 1)
  {
    v39 = sub_1D2AC70B4();
    swift_allocError();
    v41 = v40;
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704680, &qword_1D2ACBA90) + 48);
    *v41 = &type metadata for GenerationRecipe_V2.Ingredient;
    sub_1D2AC71F4();
    sub_1D2AC70A4();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v39);
    swift_willThrow();
LABEL_10:
    v37 = v87;
    goto LABEL_11;
  }

  if (v34 > 2u)
  {
    if (v34 == 3)
    {
      LOBYTE(v88) = 3;
      sub_1D2AC2F2C();
      v50 = v70;
      sub_1D2AC71E4();
      v37 = v87;
      if (!v50)
      {
        sub_1D2AC2F80();
        v51 = v75;
        sub_1D2AC7264();
        v70 = 0;
        (*(v79 + 8))(v28, v51);
        v59 = *(v37 + 8);
        v26 = (v37 + 8);
        v59(v22, v18);
        swift_unknownObjectRelease();
        v61 = v88;
        v62 = v89;
        v63 = 0x6000000000000000;
        v87 = v90;
        goto LABEL_28;
      }

      goto LABEL_11;
    }

    v44 = v87;
    if (v34 == 4)
    {
      LOBYTE(v88) = 4;
      sub_1D2AC2E84();
      v45 = v70;
      sub_1D2AC71E4();
      if (!v45)
      {
        sub_1D2AC2ED8();
        v46 = v78;
        sub_1D2AC7264();
        v70 = 0;
        (*(v81 + 8))(v29, v46);
        (*(v44 + 8))(v22, v18);
        swift_unknownObjectRelease();
        v61 = v88;
        v62 = v89;
        v63 = 0x8000000000000000;
        v87 = v90;
        v85 = v91;
LABEL_27:
        v31 = v86;
        goto LABEL_28;
      }
    }

    else
    {
      LOBYTE(v88) = 5;
      sub_1D2AC2E30();
      v28 = v30;
      v55 = v70;
      sub_1D2AC71E4();
      if (!v55)
      {
        v56 = v72;
        v57 = sub_1D2AC7234();
        v70 = 0;
        v62 = v65;
        v66 = v57;
        (*(v80 + 8))(v28, v56);
        v61 = v66;
        (*(v44 + 8))(v22, v18);
        swift_unknownObjectRelease();
        v63 = 0xA000000000000000;
        goto LABEL_27;
      }
    }

    (*(v44 + 8))(v22, v18);
    goto LABEL_12;
  }

  if (!v34)
  {
    LOBYTE(v88) = 0;
    sub_1D2AC3124();
    v47 = v70;
    sub_1D2AC71E4();
    if (!v47)
    {
      v48 = v68;
      v49 = sub_1D2AC7234();
      v70 = 0;
      v61 = v49;
      v62 = v58;
      (*(v71 + 8))(v26, v48);
      v26 = (v87 + 8);
      (*(v87 + 8))(v22, v18);
      swift_unknownObjectRelease();
      v63 = 0;
      goto LABEL_28;
    }

    goto LABEL_10;
  }

  if (v34 != 1)
  {
    LOBYTE(v88) = 2;
    sub_1D2AC2FD4();
    v52 = v27;
    v53 = v70;
    sub_1D2AC71E4();
    v37 = v87;
    if (!v53)
    {
      sub_1D2AC3028();
      v54 = v77;
      sub_1D2AC7264();
      v70 = 0;
      (*(v76 + 8))(v52, v54);
      (*(v37 + 8))(v22, v18);
      swift_unknownObjectRelease();
      v61 = v88;
      v62 = v89;
      v87 = v90;
      v85 = v91;
      v28 = v92;
      v26 = v93;
      v22 = v95;
      v18 = v96;
      v63 = v94 & 1 | 0x4000000000000000;
      goto LABEL_28;
    }

    goto LABEL_11;
  }

  LOBYTE(v88) = 1;
  sub_1D2AC307C();
  v35 = v69;
  v36 = v70;
  sub_1D2AC71E4();
  v37 = v87;
  if (v36)
  {
LABEL_11:
    (*(v37 + 8))(v22, v18);
LABEL_12:
    swift_unknownObjectRelease();
LABEL_13:
    __swift_destroy_boxed_opaque_existential_0(v101);
    return result;
  }

  sub_1D2AC30D0();
  v38 = v74;
  sub_1D2AC7264();
  v70 = 0;
  (*(v73 + 8))(v35, v38);
  v60 = *(v37 + 8);
  v26 = (v37 + 8);
  v60(v22, v18);
  swift_unknownObjectRelease();
  v61 = v88;
  v62 = v89;
  v63 = 0x2000000000000000;
  *&v64 = v90;
  v87 = v64;
LABEL_28:
  __swift_destroy_boxed_opaque_existential_0(v101);
  *v31 = v61;
  *(v31 + 8) = v62;
  result = v85;
  *(v31 + 16) = v87;
  *(v31 + 32) = result;
  *(v31 + 48) = v28;
  *(v31 + 56) = v26;
  *(v31 + 64) = v63;
  *(v31 + 72) = v22;
  *(v31 + 80) = v18;
  return result;
}

uint64_t sub_1D2AC2764(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706750, &qword_1D2ADB178);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_1D2AC2998();
  sub_1D2AC7494();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706760, &qword_1D2ADB180);
    v10[7] = 0;
    sub_1D2AC2A40(&qword_1EC706768, sub_1D2AC29EC);
    sub_1D2AC7264();
    v8 = v11;
    v10[6] = 1;
    sub_1D2AC7214();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

unint64_t sub_1D2AC2998()
{
  result = qword_1EC706758;
  if (!qword_1EC706758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706758);
  }

  return result;
}

unint64_t sub_1D2AC29EC()
{
  result = qword_1EC706770;
  if (!qword_1EC706770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706770);
  }

  return result;
}

uint64_t sub_1D2AC2A40(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC706760, &qword_1D2ADB180);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D2AC2AB8()
{
  result = qword_1EC706788;
  if (!qword_1EC706788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706788);
  }

  return result;
}

uint64_t sub_1D2AC2B2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704BE8, &unk_1D2ACE5F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D2AC2BEC()
{
  type metadata accessor for GenerationRecipe_V2.Prompt.Entity.Kind(319);
  if (v0 <= 0x3F)
  {
    sub_1D2A72FB0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D2AC2CD8()
{
  result = qword_1EC7067B0;
  if (!qword_1EC7067B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7067B0);
  }

  return result;
}

unint64_t sub_1D2AC2D30()
{
  result = qword_1EC7067B8;
  if (!qword_1EC7067B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7067B8);
  }

  return result;
}

unint64_t sub_1D2AC2D88()
{
  result = qword_1EC7067C0;
  if (!qword_1EC7067C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7067C0);
  }

  return result;
}

unint64_t sub_1D2AC2DDC()
{
  result = qword_1EC706800;
  if (!qword_1EC706800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706800);
  }

  return result;
}

unint64_t sub_1D2AC2E30()
{
  result = qword_1EC706808;
  if (!qword_1EC706808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706808);
  }

  return result;
}

unint64_t sub_1D2AC2E84()
{
  result = qword_1EC706810;
  if (!qword_1EC706810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706810);
  }

  return result;
}

unint64_t sub_1D2AC2ED8()
{
  result = qword_1EC706818;
  if (!qword_1EC706818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706818);
  }

  return result;
}

unint64_t sub_1D2AC2F2C()
{
  result = qword_1EC706820;
  if (!qword_1EC706820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706820);
  }

  return result;
}

unint64_t sub_1D2AC2F80()
{
  result = qword_1EC706828;
  if (!qword_1EC706828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706828);
  }

  return result;
}

unint64_t sub_1D2AC2FD4()
{
  result = qword_1EC706830;
  if (!qword_1EC706830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706830);
  }

  return result;
}

unint64_t sub_1D2AC3028()
{
  result = qword_1EC706838;
  if (!qword_1EC706838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706838);
  }

  return result;
}

unint64_t sub_1D2AC307C()
{
  result = qword_1EC706840;
  if (!qword_1EC706840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706840);
  }

  return result;
}

unint64_t sub_1D2AC30D0()
{
  result = qword_1EC706848;
  if (!qword_1EC706848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706848);
  }

  return result;
}

unint64_t sub_1D2AC3124()
{
  result = qword_1EC706850;
  if (!qword_1EC706850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706850);
  }

  return result;
}

unint64_t sub_1D2AC3178()
{
  result = qword_1EC706890;
  if (!qword_1EC706890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706890);
  }

  return result;
}

unint64_t sub_1D2AC31CC()
{
  result = qword_1EC706898;
  if (!qword_1EC706898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706898);
  }

  return result;
}

unint64_t sub_1D2AC3220()
{
  result = qword_1EC7068A0;
  if (!qword_1EC7068A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7068A0);
  }

  return result;
}

unint64_t sub_1D2AC3274()
{
  result = qword_1EC7068A8;
  if (!qword_1EC7068A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7068A8);
  }

  return result;
}

unint64_t sub_1D2AC32C8()
{
  result = qword_1EC7068B8;
  if (!qword_1EC7068B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7068B8);
  }

  return result;
}

uint64_t sub_1D2AC331C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7068C0, &qword_1D2ADB950);
    sub_1D2AC33B8(a2, type metadata accessor for GenerationRecipe_V2.Prompt.Entity);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D2AC33B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D2AC3400()
{
  result = qword_1EC7068F8;
  if (!qword_1EC7068F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7068F8);
  }

  return result;
}

uint64_t sub_1D2AC3454(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerationRecipe_V2.Prompt.Entity.Kind(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2AC34B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2AC3520(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D2AC3580()
{
  result = qword_1EC706938;
  if (!qword_1EC706938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706938);
  }

  return result;
}

unint64_t sub_1D2AC35D4()
{
  result = qword_1EC706940;
  if (!qword_1EC706940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706940);
  }

  return result;
}

unint64_t sub_1D2AC3628()
{
  result = qword_1EC706948;
  if (!qword_1EC706948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706948);
  }

  return result;
}

unint64_t sub_1D2AC367C()
{
  result = qword_1EC706950;
  if (!qword_1EC706950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706950);
  }

  return result;
}

unint64_t sub_1D2AC37D4()
{
  result = qword_1EC706978;
  if (!qword_1EC706978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706978);
  }

  return result;
}

unint64_t sub_1D2AC382C()
{
  result = qword_1EC706980;
  if (!qword_1EC706980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706980);
  }

  return result;
}

unint64_t sub_1D2AC3884()
{
  result = qword_1EC706988;
  if (!qword_1EC706988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706988);
  }

  return result;
}

unint64_t sub_1D2AC38DC()
{
  result = qword_1EC706990;
  if (!qword_1EC706990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706990);
  }

  return result;
}

unint64_t sub_1D2AC3934()
{
  result = qword_1EC706998;
  if (!qword_1EC706998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706998);
  }

  return result;
}

unint64_t sub_1D2AC398C()
{
  result = qword_1EC7069A0;
  if (!qword_1EC7069A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7069A0);
  }

  return result;
}

unint64_t sub_1D2AC39E4()
{
  result = qword_1EC7069A8;
  if (!qword_1EC7069A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7069A8);
  }

  return result;
}

unint64_t sub_1D2AC3A3C()
{
  result = qword_1EC7069B0;
  if (!qword_1EC7069B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7069B0);
  }

  return result;
}

unint64_t sub_1D2AC3A94()
{
  result = qword_1EC7069B8;
  if (!qword_1EC7069B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7069B8);
  }

  return result;
}

unint64_t sub_1D2AC3AEC()
{
  result = qword_1EC7069C0;
  if (!qword_1EC7069C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7069C0);
  }

  return result;
}

unint64_t sub_1D2AC3B44()
{
  result = qword_1EC7069C8;
  if (!qword_1EC7069C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7069C8);
  }

  return result;
}

unint64_t sub_1D2AC3B9C()
{
  result = qword_1EC7069D0;
  if (!qword_1EC7069D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7069D0);
  }

  return result;
}

unint64_t sub_1D2AC3BF4()
{
  result = qword_1EC7069D8;
  if (!qword_1EC7069D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7069D8);
  }

  return result;
}

unint64_t sub_1D2AC3C4C()
{
  result = qword_1EC7069E0;
  if (!qword_1EC7069E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7069E0);
  }

  return result;
}

unint64_t sub_1D2AC3CA4()
{
  result = qword_1EC7069E8;
  if (!qword_1EC7069E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7069E8);
  }

  return result;
}

unint64_t sub_1D2AC3CFC()
{
  result = qword_1EC7069F0;
  if (!qword_1EC7069F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7069F0);
  }

  return result;
}

unint64_t sub_1D2AC3D54()
{
  result = qword_1EC7069F8;
  if (!qword_1EC7069F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7069F8);
  }

  return result;
}

unint64_t sub_1D2AC3DAC()
{
  result = qword_1EC706A00;
  if (!qword_1EC706A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706A00);
  }

  return result;
}

unint64_t sub_1D2AC3E04()
{
  result = qword_1EC706A08;
  if (!qword_1EC706A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706A08);
  }

  return result;
}

unint64_t sub_1D2AC3E5C()
{
  result = qword_1EC706A10;
  if (!qword_1EC706A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706A10);
  }

  return result;
}

unint64_t sub_1D2AC3EB4()
{
  result = qword_1EC706A18;
  if (!qword_1EC706A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706A18);
  }

  return result;
}

unint64_t sub_1D2AC3F0C()
{
  result = qword_1EC706A20;
  if (!qword_1EC706A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706A20);
  }

  return result;
}

unint64_t sub_1D2AC3F64()
{
  result = qword_1EC706A28;
  if (!qword_1EC706A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706A28);
  }

  return result;
}

unint64_t sub_1D2AC3FBC()
{
  result = qword_1EC706A30;
  if (!qword_1EC706A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706A30);
  }

  return result;
}

unint64_t sub_1D2AC4014()
{
  result = qword_1EC706A38;
  if (!qword_1EC706A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706A38);
  }

  return result;
}

unint64_t sub_1D2AC406C()
{
  result = qword_1EC706A40;
  if (!qword_1EC706A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706A40);
  }

  return result;
}

unint64_t sub_1D2AC40C4()
{
  result = qword_1EC706A48;
  if (!qword_1EC706A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706A48);
  }

  return result;
}

unint64_t sub_1D2AC411C()
{
  result = qword_1EC706A50;
  if (!qword_1EC706A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706A50);
  }

  return result;
}

unint64_t sub_1D2AC4174()
{
  result = qword_1EC706A58;
  if (!qword_1EC706A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706A58);
  }

  return result;
}

unint64_t sub_1D2AC41CC()
{
  result = qword_1EC706A60;
  if (!qword_1EC706A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706A60);
  }

  return result;
}

unint64_t sub_1D2AC4224()
{
  result = qword_1EC706A68;
  if (!qword_1EC706A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706A68);
  }

  return result;
}

unint64_t sub_1D2AC427C()
{
  result = qword_1EC706A70;
  if (!qword_1EC706A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706A70);
  }

  return result;
}

unint64_t sub_1D2AC42D4()
{
  result = qword_1EC706A78;
  if (!qword_1EC706A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706A78);
  }

  return result;
}

unint64_t sub_1D2AC432C()
{
  result = qword_1EC706A80;
  if (!qword_1EC706A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706A80);
  }

  return result;
}

unint64_t sub_1D2AC4384()
{
  result = qword_1EC706A88;
  if (!qword_1EC706A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706A88);
  }

  return result;
}

unint64_t sub_1D2AC43DC()
{
  result = qword_1EC706A90;
  if (!qword_1EC706A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706A90);
  }

  return result;
}

unint64_t sub_1D2AC4434()
{
  result = qword_1EC706A98;
  if (!qword_1EC706A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706A98);
  }

  return result;
}

unint64_t sub_1D2AC4488()
{
  result = qword_1EC706AA8;
  if (!qword_1EC706AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706AA8);
  }

  return result;
}

unint64_t sub_1D2AC44DC()
{
  result = qword_1EC706AB8;
  if (!qword_1EC706AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706AB8);
  }

  return result;
}

unint64_t sub_1D2AC4530()
{
  result = qword_1EC706AC8;
  if (!qword_1EC706AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706AC8);
  }

  return result;
}

unint64_t sub_1D2AC4584()
{
  result = qword_1EC706AD0;
  if (!qword_1EC706AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706AD0);
  }

  return result;
}

unint64_t sub_1D2AC4640()
{
  result = qword_1EC706AF0;
  if (!qword_1EC706AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706AF0);
  }

  return result;
}

unint64_t sub_1D2AC46D8()
{
  result = qword_1EC706AF8;
  if (!qword_1EC706AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706AF8);
  }

  return result;
}

unint64_t sub_1D2AC4730()
{
  result = qword_1EC706B00;
  if (!qword_1EC706B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706B00);
  }

  return result;
}

unint64_t sub_1D2AC4788()
{
  result = qword_1EC706B08;
  if (!qword_1EC706B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706B08);
  }

  return result;
}

unint64_t sub_1D2AC47E0()
{
  result = qword_1EC706B10;
  if (!qword_1EC706B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706B10);
  }

  return result;
}

unint64_t sub_1D2AC4838()
{
  result = qword_1EC706B18;
  if (!qword_1EC706B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706B18);
  }

  return result;
}

unint64_t sub_1D2AC4890()
{
  result = qword_1EC706B20;
  if (!qword_1EC706B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706B20);
  }

  return result;
}

unint64_t sub_1D2AC48E8()
{
  result = qword_1EC706B28;
  if (!qword_1EC706B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706B28);
  }

  return result;
}

unint64_t sub_1D2AC4940()
{
  result = qword_1EC706B30;
  if (!qword_1EC706B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706B30);
  }

  return result;
}

unint64_t sub_1D2AC4998()
{
  result = qword_1EC706B38;
  if (!qword_1EC706B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706B38);
  }

  return result;
}

unint64_t sub_1D2AC49F0()
{
  result = qword_1EC706B40;
  if (!qword_1EC706B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706B40);
  }

  return result;
}

unint64_t sub_1D2AC4A44()
{
  result = qword_1EC706B60;
  if (!qword_1EC706B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706B60);
  }

  return result;
}

unint64_t sub_1D2AC4A98()
{
  result = qword_1EC706B68;
  if (!qword_1EC706B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706B68);
  }

  return result;
}

unint64_t sub_1D2AC4AEC()
{
  result = qword_1EC706B70;
  if (!qword_1EC706B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706B70);
  }

  return result;
}

unint64_t sub_1D2AC4B74()
{
  result = qword_1EC706B90;
  if (!qword_1EC706B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706B90);
  }

  return result;
}

unint64_t sub_1D2AC4BCC()
{
  result = qword_1EC706B98;
  if (!qword_1EC706B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706B98);
  }

  return result;
}

unint64_t sub_1D2AC4C24()
{
  result = qword_1EC706BA0;
  if (!qword_1EC706BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706BA0);
  }

  return result;
}

unint64_t sub_1D2AC4C7C()
{
  result = qword_1EC706BA8;
  if (!qword_1EC706BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706BA8);
  }

  return result;
}

unint64_t sub_1D2AC4CD4()
{
  result = qword_1EC706BB0;
  if (!qword_1EC706BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706BB0);
  }

  return result;
}

unint64_t sub_1D2AC4D2C()
{
  result = qword_1EC706BB8;
  if (!qword_1EC706BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706BB8);
  }

  return result;
}

unint64_t sub_1D2AC4D84()
{
  result = qword_1EC706BC0;
  if (!qword_1EC706BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706BC0);
  }

  return result;
}

NSXPCInterface __swiftcall GPServiceProtocolInterface()()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706BC8, &qword_1D2ADD3A0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D2ACAB40;
  v2 = sub_1D2A20764(0, &qword_1EC703B30, &off_1E84033C0);
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706BD0, &qword_1D2ADD3A8);
  *(v1 + 32) = v2;
  v3 = sub_1D2A20764(0, &qword_1EC706BD8, 0x1E695DEC8);
  *(v1 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706BE0, &qword_1D2ADD3B0);
  *(v1 + 64) = v3;
  sub_1D2A20764(0, &qword_1EC706BE8, 0x1E695DFD8);
  v4 = MEMORY[0x1D38A73A0](v1);
  sub_1D2A20764(0, &qword_1EC706BF0, 0x1E69E58C0);
  sub_1D2AC4F94();
  v5 = sub_1D2AC6E14();

  sub_1D2AC527C(v5);

  v6 = sub_1D2AC6E04();

  [v0 setClasses:v6 forSelector:sel_setPromptElements_ argumentIndex:0 ofReply:0];

  return v0;
}

unint64_t sub_1D2AC4F94()
{
  result = qword_1EC706BF8;
  if (!qword_1EC706BF8)
  {
    sub_1D2A20764(255, &qword_1EC706BF0, 0x1E69E58C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706BF8);
  }

  return result;
}

NSXPCInterface __swiftcall GPHostProtocolInterface()()
{
  v13 = [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706BC8, &qword_1D2ADD3A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D2ACAB40;
  v1 = type metadata accessor for GPExportablePhotoAsset(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706C00, &qword_1D2ADD3B8);
  *(v0 + 56) = v2;
  *(v0 + 32) = v1;
  v3 = sub_1D2A20764(0, &qword_1EC706BD8, 0x1E695DEC8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706BE0, &qword_1D2ADD3B0);
  *(v0 + 88) = v4;
  *(v0 + 64) = v3;
  sub_1D2A20764(0, &qword_1EC706BE8, 0x1E695DFD8);
  v5 = MEMORY[0x1D38A73A0](v0);
  sub_1D2A20764(0, &qword_1EC706BF0, 0x1E69E58C0);
  sub_1D2AC4F94();
  v6 = sub_1D2AC6E14();

  sub_1D2AC527C(v6);

  v7 = sub_1D2AC6E04();

  [v13 setClasses:v7 forSelector:sel_pickerDidSelectAssets_ argumentIndex:0 ofReply:0];

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D2ACAB40;
  *(v8 + 32) = v1;
  *(v8 + 88) = v4;
  *(v8 + 56) = v2;
  *(v8 + 64) = v3;
  v9 = MEMORY[0x1D38A73A0]();
  v10 = sub_1D2AC6E14();

  sub_1D2AC527C(v10);

  v11 = sub_1D2AC6E04();

  [v13 setClasses:v11 forSelector:sel_editorDidGenerateAssets_ argumentIndex:0 ofReply:0];

  return v13;
}

uint64_t sub_1D2AC527C(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_1D2AC7024())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = MEMORY[0x1E69E7CD0];
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = -1 << *(v1 + 32);
    v5 = v1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v1 + 56);

    v7 = 0;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706C08, &qword_1D2ADD3D8);
  v3 = sub_1D2AC7064();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_4:

  sub_1D2AC7014();
  sub_1D2A20764(0, &qword_1EC706BF0, 0x1E69E58C0);
  sub_1D2AC4F94();
  result = sub_1D2AC6E34();
  v1 = v31;
  v5 = v32;
  v6 = v33;
  v7 = v34;
  v8 = v35;
LABEL_11:
  v12 = v3 + 56;
  while (v1 < 0)
  {
    v16 = sub_1D2AC7034();
    if (!v16)
    {
LABEL_34:
      sub_1D2AC55F8();

      return v3;
    }

    *&v28 = v16;
    sub_1D2A20764(0, &qword_1EC706BF0, 0x1E69E58C0);
    swift_dynamicCast();
LABEL_25:
    sub_1D2A20764(0, &qword_1EC706BF0, 0x1E69E58C0);
    swift_dynamicCast();
    v20 = *(v3 + 40);
    result = sub_1D2AC7044();
    v21 = -1 << *(v3 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) != 0)
    {
      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = 0;
      v25 = (63 - v21) >> 6;
      do
      {
        if (++v23 == v25 && (v24 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v26 = v23 == v25;
        if (v23 == v25)
        {
          v23 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v23);
      }

      while (v27 == -1);
      v13 = __clz(__rbit64(~v27)) + (v23 << 6);
    }

    *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v14 = *(v3 + 48) + 40 * v13;
    *(v14 + 32) = v30;
    *v14 = v28;
    *(v14 + 16) = v29;
    ++*(v3 + 16);
  }

  if (v8)
  {
    v15 = v7;
LABEL_24:
    v18 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v19 = *(*(v1 + 48) + ((v15 << 9) | (8 * v18)));
    goto LABEL_25;
  }

  v17 = v7;
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= ((v6 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v8 = *(v5 + 8 * v15);
    ++v17;
    if (v8)
    {
      v7 = v15;
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

Swift::Bool __swiftcall ImagePlaygroundFeatures.isEnabled()()
{
  v1 = *v0;
  v4[3] = &type metadata for ImagePlaygroundFeatures;
  v4[4] = sub_1D2A4FF8C();
  LOBYTE(v4[0]) = v1;
  v2 = sub_1D2AC60E4();
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v2 & 1;
}

const char *ImagePlaygroundFeatures.feature.getter()
{
  if (*v0)
  {
    return "ADMv8";
  }

  else
  {
    return "Montara";
  }
}

uint64_t ImagePlaygroundFeatures.hashValue.getter()
{
  v1 = *v0;
  sub_1D2AC7444();
  MEMORY[0x1D38A7890](v1);
  return sub_1D2AC7484();
}

unint64_t sub_1D2AC572C()
{
  result = qword_1EC706C10;
  if (!qword_1EC706C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706C10);
  }

  return result;
}

const char *sub_1D2AC5794()
{
  if (*v0)
  {
    return "ADMv8";
  }

  else
  {
    return "Montara";
  }
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1EC728B58 == -1)
  {
    if (qword_1EC728B60)
    {
LABEL_3:
      result = _availability_version_check();
      v5 = *MEMORY[0x1E69E9840];
      return result;
    }
  }

  else
  {
    v6 = a4;
    v7 = a3;
    v8 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v8;
    a3 = v7;
    a4 = v6;
    if (qword_1EC728B60)
    {
      goto LABEL_3;
    }
  }

  if (qword_1EC728B50 != -1)
  {
    v13 = a4;
    v14 = a3;
    v15 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v14;
    a4 = v13;
    v9 = _MergedGlobals < v15;
    if (_MergedGlobals > v15)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (!v9)
    {
      if (dword_1EC728B44 > a3)
      {
        goto LABEL_11;
      }

      if (dword_1EC728B44 >= a3)
      {
        result = dword_1EC728B48 >= a4;
        v12 = *MEMORY[0x1E69E9840];
        return result;
      }
    }

    result = 0;
    v10 = *MEMORY[0x1E69E9840];
    return result;
  }

  v9 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

LABEL_11:
  result = 1;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t _initializeAvailabilityCheck(unint64_t result)
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = qword_1EC728B60;
  if (qword_1EC728B60)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x1EEE9AC60])
    {
      v1 = MEMORY[0x1EEE9AC60];
      qword_1EC728B60 = MEMORY[0x1EEE9AC60];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v28 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v27 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x1D38A7D20](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v26 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v26, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v27)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v28(v23, v29, 32, 134217984))
                                        {
                                          sscanf(v29, "%d.%d.%d", &_MergedGlobals, &dword_1EC728B44, &dword_1EC728B48);
                                        }
                                      }
                                    }
                                  }

                                  (v27)(v20);
                                }

                                (v27)(v18);
                                v16 = v26;
                              }

                              else
                              {
                                v16 = v26;
                              }
                            }
                          }

                          free(v16);
                          result = fclose(v13);
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

  v25 = *MEMORY[0x1E69E9840];
  return result;
}