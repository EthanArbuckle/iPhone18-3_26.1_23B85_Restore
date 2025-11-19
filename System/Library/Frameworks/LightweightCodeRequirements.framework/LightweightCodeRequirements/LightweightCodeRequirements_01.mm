uint64_t sub_238B00384@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, char a4@<W4>, char a5@<W5>, uint64_t a6@<X8>)
{
  v12 = a1();
  *(a6 + 16) = 0;
  *(a6 + 48) = a2;
  v13 = a3();
  *(a6 + 24) = a4;
  *(a6 + 56) = v13;
  *(a6 + 25) = a5;
  *(a6 + 32) = v12;
  LOBYTE(v19[0]) = a4;
  BYTE1(v19[0]) = a5;
  v19[3] = a2;
  v19[1] = v12;

  v14 = sub_238AFE274(v19, &type metadata for LaunchConstraintConjunction, sub_238AEE3B0, &type metadata for LaunchConstraintDisjunction, sub_238AEE360);
  __swift_destroy_boxed_opaque_existential_1(v19);
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_1((a6 + 24));
  }

  v16 = sub_238AFE4DC(0, v14);
  v18 = v17;

  *a6 = v16;
  *(a6 + 8) = v18;
  return result;
}

uint64_t LaunchCodeRequirement.init(_:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_238AFD5B4(a1, &v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A10, &qword_238B1CFD0);
  if (swift_dynamicCast())
  {
    sub_238AF26B4(v24, v25);
    if (!v2)
    {
      v7 = v6;
      v8 = v5 >> 8;
      *&v28 = 0;
      *&v30 = &type metadata for LaunchConstraintConjunction;
      v9 = v5;
      v10 = sub_238AF6E94();
      BYTE8(v28) = v9;
      BYTE9(v28) = v8;
      *(&v30 + 1) = v10;
      *&v29 = v7;
      LOBYTE(v24) = v9;
      BYTE1(v24) = v8;
      v26 = &type metadata for LaunchConstraintConjunction;
      v25 = v7;

LABEL_8:
      v18 = sub_238AFE274(&v24, &type metadata for LaunchConstraintConjunction, sub_238AEE3B0, &type metadata for LaunchConstraintDisjunction, sub_238AEE360);
      __swift_destroy_boxed_opaque_existential_1(&v24);
      v19 = sub_238AFE4DC(0, v18);
      v21 = v20;

      result = sub_238B03764(a1);
      *&v27 = v19;
      *(&v27 + 1) = v21;
      v22 = v30;
      a2[2] = v29;
      a2[3] = v22;
      v23 = v28;
      *a2 = v27;
      a2[1] = v23;
      return result;
    }

    return sub_238B03764(a1);
  }

  sub_238AFD5B4(a1, &v27);
  result = swift_dynamicCast();
  if (result)
  {
    sub_238AF2D18(v24, v25);
    if (!v2)
    {
      v14 = v13;
      v15 = v12 >> 8;
      *&v28 = 0;
      *&v30 = &type metadata for LaunchConstraintDisjunction;
      v16 = v12;
      v17 = sub_238AF7008();
      BYTE8(v28) = v16;
      BYTE9(v28) = v15;
      *(&v30 + 1) = v17;
      *&v29 = v14;
      LOBYTE(v24) = v16;
      BYTE1(v24) = v15;
      v26 = &type metadata for LaunchConstraintDisjunction;
      v25 = v14;

      goto LABEL_8;
    }

    return sub_238B03764(a1);
  }

  __break(1u);
  return result;
}

{
  sub_238AFD5B4(a1 + 16, &v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A28, &qword_238B1E080);
  if (swift_dynamicCast())
  {
    sub_238AF337C(v24, v25);
    if (!v2)
    {
      v7 = v6;
      v8 = v5 >> 8;
      *&v28 = 0;
      *&v30 = &type metadata for LaunchConstraintConjunction;
      v9 = v5;
      v10 = sub_238AF6E94();
      BYTE8(v28) = v9;
      BYTE9(v28) = v8;
      *(&v30 + 1) = v10;
      *&v29 = v7;
      LOBYTE(v24) = v9;
      BYTE1(v24) = v8;
      v26 = &type metadata for LaunchConstraintConjunction;
      v25 = v7;

LABEL_8:
      v18 = sub_238AFE274(&v24, &type metadata for LaunchConstraintConjunction, sub_238AEE3B0, &type metadata for LaunchConstraintDisjunction, sub_238AEE360);
      __swift_destroy_boxed_opaque_existential_1(&v24);
      v19 = sub_238AFE4DC(0, v18);
      v21 = v20;

      result = sub_238AFF1D0(a1);
      *&v27 = v19;
      *(&v27 + 1) = v21;
      v22 = v30;
      a2[2] = v29;
      a2[3] = v22;
      v23 = v28;
      *a2 = v27;
      a2[1] = v23;
      return result;
    }

    return sub_238AFF1D0(a1);
  }

  sub_238AFD5B4(a1 + 16, &v27);
  result = swift_dynamicCast();
  if (result)
  {
    sub_238AF3AFC(v24, v25);
    if (!v2)
    {
      v14 = v13;
      v15 = v12 >> 8;
      *&v28 = 0;
      *&v30 = &type metadata for LaunchConstraintDisjunction;
      v16 = v12;
      v17 = sub_238AF7008();
      BYTE8(v28) = v16;
      BYTE9(v28) = v15;
      *(&v30 + 1) = v17;
      *&v29 = v14;
      LOBYTE(v24) = v16;
      BYTE1(v24) = v15;
      v26 = &type metadata for LaunchConstraintDisjunction;
      v25 = v14;

      goto LABEL_8;
    }

    return sub_238AFF1D0(a1);
  }

  __break(1u);
  return result;
}

{
  v4 = sub_238B1A954(a1);
  if (v2)
  {
  }

  v5 = v4;

  sub_238B06A50(v5, v23);

  sub_238AFD5B4(v23, &v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A20, &unk_238B1CFE0);
  if (swift_dynamicCast())
  {
    *&v20 = 0;
    *&v22 = &type metadata for LaunchConstraintConjunction;
    v7 = sub_238AF6E94();
    WORD4(v20) = v16;
    *(&v22 + 1) = v7;
    *&v21 = v17;
    v18 = &type metadata for LaunchConstraintConjunction;

LABEL_8:
    v9 = sub_238AFE274(&v16, &type metadata for LaunchConstraintConjunction, sub_238AEE3B0, &type metadata for LaunchConstraintDisjunction, sub_238AEE360);
    __swift_destroy_boxed_opaque_existential_1(&v16);
    v10 = sub_238AFE4DC(0, v9);
    v12 = v11;

    result = __swift_destroy_boxed_opaque_existential_1(v23);
    *&v19 = v10;
    *(&v19 + 1) = v12;
    v13 = v22;
    a2[2] = v21;
    a2[3] = v13;
    v14 = v20;
    *a2 = v19;
    a2[1] = v14;
    return result;
  }

  sub_238AFD5B4(v23, &v19);
  if (swift_dynamicCast())
  {
    *&v20 = 0;
    *&v22 = &type metadata for LaunchConstraintDisjunction;
    v8 = sub_238AF7008();
    WORD4(v20) = v16;
    *(&v22 + 1) = v8;
    *&v21 = v17;
    v18 = &type metadata for LaunchConstraintDisjunction;

    goto LABEL_8;
  }

  sub_238AFA0E8();
  swift_allocError();
  *v15 = 1;
  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t sub_238B00998(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = 0x65756C6176;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0x8000000238B22690;
  }

  if (*a2)
  {
    v6 = 0xD000000000000012;
  }

  else
  {
    v6 = 0x65756C6176;
  }

  if (*a2)
  {
    v7 = 0x8000000238B22690;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_238B1C2E4();
  }

  return v9 & 1;
}

uint64_t sub_238B00A40()
{
  v1 = *v0;
  sub_238B1C354();
  sub_238B1BF64();

  return sub_238B1C384();
}

uint64_t sub_238B00AC4()
{
  *v0;
  sub_238B1BF64();
}

uint64_t sub_238B00B34()
{
  v1 = *v0;
  sub_238B1C354();
  sub_238B1BF64();

  return sub_238B1C384();
}

uint64_t sub_238B00BB4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_238B1C124();

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

void sub_238B00C14(unint64_t *a1@<X8>)
{
  v2 = 0x8000000238B22690;
  v3 = 0x65756C6176;
  if (*v1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_238B00C54()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0x65756C6176;
  }

  *v0;
  return result;
}

uint64_t sub_238B00C90@<X0>(char *a1@<X8>)
{
  v2 = sub_238B1C124();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_238B00CF4(uint64_t a1)
{
  v2 = sub_238B03794();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B00D30(uint64_t a1)
{
  v2 = sub_238B03794();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LaunchCodeRequirement.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51B48, &qword_238B1D808);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B03794();
  sub_238B1C3A4();
  v16 = *(v3 + 16);
  LOBYTE(v14) = 1;
  sub_238B037E8();
  sub_238B1C1E4();
  if (v2)
  {
    return (*(v6 + 8))(v10, v5);
  }

  sub_238AFD5B4(v3 + 24, &v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A20, &unk_238B1CFE0);
  if (swift_dynamicCast())
  {
    LOWORD(v16) = v14;
    v17 = v15;
    LOBYTE(v14) = 0;
    sub_238AF74D0();
LABEL_7:
    sub_238B1C1E4();
    (*(v6 + 8))(v10, v5);
  }

  sub_238AFD5B4(v3 + 24, &v16);
  result = swift_dynamicCast();
  if (result)
  {
    LOWORD(v16) = v14;
    v17 = v15;
    LOBYTE(v14) = 0;
    sub_238AF7770();
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t LaunchCodeRequirement.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51B60, &qword_238B1D810);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v26 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B03794();
  sub_238B1C394();
  if (!v2)
  {
    LOBYTE(v28[0]) = 1;
    sub_238B0383C();
    sub_238B1C174();
    v13 = v29;
    LOBYTE(v28[0]) = 0;
    sub_238AF747C();
    sub_238B1C174();
    v14 = v13;
    LOBYTE(v13) = v29;
    v15 = BYTE1(v29);
    v16 = *(&v29 + 1);
    v37 = v14;
    *&v30 = v14;
    *&v32 = &type metadata for LaunchConstraintConjunction;
    v27 = 0;
    v17 = sub_238AF6E94();
    BYTE8(v30) = v13;
    BYTE9(v30) = v15;
    *(&v32 + 1) = v17;
    *&v31 = v16;
    LOBYTE(v28[0]) = v13;
    BYTE1(v28[0]) = v15;
    v28[3] = &type metadata for LaunchConstraintConjunction;
    v28[1] = v16;

    v18 = v27;
    v19 = sub_238AFE274(v28, &type metadata for LaunchConstraintConjunction, sub_238AEE3B0, &type metadata for LaunchConstraintDisjunction, sub_238AEE360);
    if (v18)
    {
      (*(v6 + 8))(v10, v5);
      __swift_destroy_boxed_opaque_existential_1(v28);
      __swift_destroy_boxed_opaque_existential_1(&v30 + 1);
    }

    else
    {
      v20 = v19;
      __swift_destroy_boxed_opaque_existential_1(v28);
      v21 = sub_238AFE4DC(v37, v20);
      v23 = v22;

      (*(v6 + 8))(v10, v5);
      *&v29 = v21;
      *(&v29 + 1) = v23;
      v35 = v31;
      v36 = v32;
      v33 = v29;
      v34 = v30;
      v24 = v30;
      *a2 = v29;
      a2[1] = v24;
      v25 = v36;
      a2[2] = v35;
      a2[3] = v25;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void LaunchCodeRequirement.init(_:)(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v35[5] = *MEMORY[0x277D85DE8];
  v7 = objc_opt_self();
  v8 = sub_238B1BE94();
  *&v31 = 0;
  v9 = [v7 withData:v8 withError:&v31];

  if (v9)
  {
    v10 = v31;
    if ([v9 hasRequirements])
    {
      v11 = sub_238AFE12C();
      sub_238B06A50(v11, v35);
      if (!v3)
      {

        v14 = [v9 constraintCategory];
        v15 = v14;
        if (v14 && v14 != 17 && v14 != 255)
        {
          __break(1u);
        }

        sub_238AFD5B4(v35, &v31);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A20, &unk_238B1CFE0);
        if (swift_dynamicCast())
        {
          *&v32 = v15;
          *&v34 = &type metadata for LaunchConstraintConjunction;
          v16 = sub_238AF6E94();
          WORD4(v32) = v28;
          *(&v34 + 1) = v16;
          *&v33 = v29;
          v30 = &type metadata for LaunchConstraintConjunction;

          v17 = sub_238AFE274(&v28, &type metadata for LaunchConstraintConjunction, sub_238AEE3B0, &type metadata for LaunchConstraintDisjunction, sub_238AEE360);
          __swift_destroy_boxed_opaque_existential_1(&v28);
          v18 = sub_238AFE4DC(v15, v17);
          v20 = v19;
        }

        else
        {
          sub_238AFD5B4(v35, &v31);
          if ((swift_dynamicCast() & 1) == 0)
          {
            sub_238AFA0E8();
            swift_allocError();
            *v22 = 1;
            swift_willThrow();

            sub_238AFFCFC(a1, a2);
            __swift_destroy_boxed_opaque_existential_1(v35);
            goto LABEL_16;
          }

          *&v32 = v15;
          *&v34 = &type metadata for LaunchConstraintDisjunction;
          v21 = sub_238AF7008();
          WORD4(v32) = v28;
          *(&v34 + 1) = v21;
          *&v33 = v29;
          v30 = &type metadata for LaunchConstraintDisjunction;

          v23 = sub_238AFE274(&v28, &type metadata for LaunchConstraintConjunction, sub_238AEE3B0, &type metadata for LaunchConstraintDisjunction, sub_238AEE360);
          __swift_destroy_boxed_opaque_existential_1(&v28);
          v18 = sub_238AFE4DC(v15, v23);
          v20 = v24;
        }

        sub_238AFFCFC(a1, a2);
        __swift_destroy_boxed_opaque_existential_1(v35);
        *&v31 = v18;
        *(&v31 + 1) = v20;
        v25 = v34;
        a3[2] = v33;
        a3[3] = v25;
        v26 = v32;
        *a3 = v31;
        a3[1] = v26;
        goto LABEL_16;
      }

      sub_238AFFCFC(a1, a2);
    }

    else
    {
      sub_238AFA0E8();
      swift_allocError();
      *v13 = 1;
      swift_willThrow();
      sub_238AFFCFC(a1, a2);
    }
  }

  else
  {
    v12 = v31;
    sub_238B1BE84();

    swift_willThrow();
    sub_238AFFCFC(a1, a2);
  }

LABEL_16:
  v27 = *MEMORY[0x277D85DE8];
}

unint64_t OnDiskCodeRequirement.dictionaryEncoding.getter()
{
  v1 = *(v0 + 40);
  v2 = __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  v6[3] = v1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  (*(*(v1 - 8) + 16))(boxed_opaque_existential_1, v2, v1);
  v4 = sub_238AFE274(v6, &type metadata for OnDiskConstraintConjunction, sub_238AEE310, &type metadata for OnDiskConstraintDisjunction, sub_238AEE2C0);
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

uint64_t OnDiskCodeRequirement.dataEncoding.getter()
{
  v1 = *v0;
  sub_238AFD728(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_238B01CBC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, char a4@<W4>, char a5@<W5>, uint64_t a6@<X8>)
{
  v12 = a1();
  *(a6 + 40) = a2;
  v13 = a3();
  *(a6 + 16) = a4;
  *(a6 + 48) = v13;
  *(a6 + 17) = a5;
  *(a6 + 24) = v12;
  LOBYTE(v19[0]) = a4;
  BYTE1(v19[0]) = a5;
  v19[3] = a2;
  v19[1] = v12;

  v14 = sub_238AFE274(v19, &type metadata for OnDiskConstraintConjunction, sub_238AEE310, &type metadata for OnDiskConstraintDisjunction, sub_238AEE2C0);
  __swift_destroy_boxed_opaque_existential_1(v19);
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_1((a6 + 16));
  }

  v16 = sub_238AFE4DC(0, v14);
  v18 = v17;

  *a6 = v16;
  *(a6 + 8) = v18;
  return result;
}

uint64_t OnDiskCodeRequirement.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_238AFD5B4(a1, &v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A10, &qword_238B1CFD0);
  if (swift_dynamicCast())
  {
    sub_238AF532C(v24, v25);
    if (!v2)
    {
      v7 = v6;
      v8 = v5 >> 8;
      *(&v29 + 1) = &type metadata for OnDiskConstraintConjunction;
      v9 = v5;
      v10 = sub_238AF6F10();
      LOBYTE(v28) = v9;
      BYTE1(v28) = v8;
      v30 = v10;
      *(&v28 + 1) = v7;
      LOBYTE(v24) = v9;
      BYTE1(v24) = v8;
      v26 = &type metadata for OnDiskConstraintConjunction;
      v25 = v7;

LABEL_8:
      v18 = sub_238AFE274(&v24, &type metadata for OnDiskConstraintConjunction, sub_238AEE310, &type metadata for OnDiskConstraintDisjunction, sub_238AEE2C0);
      __swift_destroy_boxed_opaque_existential_1(&v24);
      v19 = sub_238AFE4DC(0, v18);
      v21 = v20;

      result = sub_238B03764(a1);
      *&v27 = v19;
      *(&v27 + 1) = v21;
      v22 = v29;
      *(a2 + 48) = v30;
      v23 = v27;
      *(a2 + 16) = v28;
      *(a2 + 32) = v22;
      *a2 = v23;
      return result;
    }

    return sub_238B03764(a1);
  }

  sub_238AFD5B4(a1, &v27);
  result = swift_dynamicCast();
  if (result)
  {
    sub_238AF5AAC(v24, v25);
    if (!v2)
    {
      v14 = v13;
      v15 = v12 >> 8;
      *(&v29 + 1) = &type metadata for OnDiskConstraintDisjunction;
      v16 = v12;
      v17 = sub_238AF70F0();
      LOBYTE(v28) = v16;
      BYTE1(v28) = v15;
      v30 = v17;
      *(&v28 + 1) = v14;
      LOBYTE(v24) = v16;
      BYTE1(v24) = v15;
      v26 = &type metadata for OnDiskConstraintDisjunction;
      v25 = v14;

      goto LABEL_8;
    }

    return sub_238B03764(a1);
  }

  __break(1u);
  return result;
}

{
  if (*(a1 + 16))
  {
    sub_238AFA0E8();
    swift_allocError();
    *v4 = 2;
    swift_willThrow();
    return sub_238AFEF2C(a1);
  }

  sub_238AFD5B4(a1 + 24, &v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A20, &unk_238B1CFE0);
  if (swift_dynamicCast())
  {
    sub_238AF442C(v25, v26);
    if (v2)
    {
      return sub_238AFEF2C(a1);
    }

    v9 = v8;
    v10 = v7 >> 8;
    *(&v30 + 1) = &type metadata for OnDiskConstraintConjunction;
    v11 = v7;
    v12 = sub_238AF6F10();
    LOBYTE(v29) = v11;
    BYTE1(v29) = v10;
    v31 = v12;
    *(&v29 + 1) = v9;
    LOBYTE(v25) = v11;
    BYTE1(v25) = v10;
    v27 = &type metadata for OnDiskConstraintConjunction;
    v26 = v9;

    goto LABEL_10;
  }

  sub_238AFD5B4(a1 + 24, &v28);
  result = swift_dynamicCast();
  if (result)
  {
    sub_238AF4BAC(v25, v26);
    if (v2)
    {
      return sub_238AFEF2C(a1);
    }

    v15 = v14;
    v16 = v13 >> 8;
    *(&v30 + 1) = &type metadata for OnDiskConstraintDisjunction;
    v17 = v13;
    v18 = sub_238AF70F0();
    LOBYTE(v29) = v17;
    BYTE1(v29) = v16;
    v31 = v18;
    *(&v29 + 1) = v15;
    LOBYTE(v25) = v17;
    BYTE1(v25) = v16;
    v27 = &type metadata for OnDiskConstraintDisjunction;
    v26 = v15;

LABEL_10:
    v19 = sub_238AFE274(&v25, &type metadata for OnDiskConstraintConjunction, sub_238AEE310, &type metadata for OnDiskConstraintDisjunction, sub_238AEE2C0);
    __swift_destroy_boxed_opaque_existential_1(&v25);
    v20 = sub_238AFE4DC(0, v19);
    v22 = v21;

    result = sub_238AFEF2C(a1);
    *&v28 = v20;
    *(&v28 + 1) = v22;
    v23 = v30;
    *(a2 + 48) = v31;
    v24 = v28;
    *(a2 + 16) = v29;
    *(a2 + 32) = v23;
    *a2 = v24;
    return result;
  }

  __break(1u);
  return result;
}

{
  v4 = sub_238B1A954(a1);
  if (v2)
  {
  }

  v5 = v4;

  sub_238B06C50(v5, v22);

  sub_238AFD5B4(v22, &v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A28, &qword_238B1E080);
  if (swift_dynamicCast())
  {
    *(&v20 + 1) = &type metadata for OnDiskConstraintConjunction;
    v7 = sub_238AF6F10();
    LOWORD(v19) = v15;
    v21 = v7;
    *(&v19 + 1) = v16;
    v17 = &type metadata for OnDiskConstraintConjunction;

LABEL_8:
    v9 = sub_238AFE274(&v15, &type metadata for OnDiskConstraintConjunction, sub_238AEE310, &type metadata for OnDiskConstraintDisjunction, sub_238AEE2C0);
    __swift_destroy_boxed_opaque_existential_1(&v15);
    v10 = sub_238AFE4DC(0, v9);
    v12 = v11;

    result = __swift_destroy_boxed_opaque_existential_1(v22);
    *&v18 = v10;
    *(&v18 + 1) = v12;
    v13 = v20;
    *(a2 + 16) = v19;
    *(a2 + 32) = v13;
    *(a2 + 48) = v21;
    *a2 = v18;
    return result;
  }

  sub_238AFD5B4(v22, &v18);
  if (swift_dynamicCast())
  {
    *(&v20 + 1) = &type metadata for OnDiskConstraintDisjunction;
    v8 = sub_238AF70F0();
    LOWORD(v19) = v15;
    v21 = v8;
    *(&v19 + 1) = v16;
    v17 = &type metadata for OnDiskConstraintDisjunction;

    goto LABEL_8;
  }

  sub_238AFA0E8();
  swift_allocError();
  *v14 = 1;
  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_238B0230C()
{
  sub_238B1C354();
  sub_238B1BF64();
  return sub_238B1C384();
}

uint64_t sub_238B0235C()
{
  sub_238B1C354();
  sub_238B1BF64();
  return sub_238B1C384();
}

uint64_t sub_238B023B4@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_238B1C124();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_238B02404@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_238B1C124();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_238B0245C(uint64_t a1)
{
  v2 = sub_238B03890();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B02498(uint64_t a1)
{
  v2 = sub_238B03890();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OnDiskCodeRequirement.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51B70, &qword_238B1D818);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B03890();
  sub_238B1C3A4();
  sub_238AFD5B4(v2 + 16, &v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A28, &qword_238B1E080);
  if (swift_dynamicCast())
  {
    v15 = v13;
    v16 = v14;
    sub_238AF7620();
LABEL_5:
    sub_238B1C1E4();
    (*(v5 + 8))(v9, v4);
  }

  sub_238AFD5B4(v2 + 16, &v15);
  result = swift_dynamicCast();
  if (result)
  {
    v15 = v13;
    v16 = v14;
    sub_238AF7818();
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t OnDiskCodeRequirement.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51B80, &qword_238B1D820);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v25[-1] - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B03890();
  sub_238B1C394();
  if (!v2)
  {
    sub_238AF75CC();
    sub_238B1C174();
    v34 = a2;
    v13 = v26;
    v14 = BYTE1(v26);
    v15 = *(&v26 + 1);
    *(&v28 + 1) = &type metadata for OnDiskConstraintConjunction;
    v16 = sub_238AF6F10();
    LOBYTE(v27) = v13;
    BYTE1(v27) = v14;
    v29 = v16;
    *(&v27 + 1) = v15;
    LOBYTE(v25[0]) = v13;
    BYTE1(v25[0]) = v14;
    v25[3] = &type metadata for OnDiskConstraintConjunction;
    v25[1] = v15;

    v17 = sub_238AFE274(v25, &type metadata for OnDiskConstraintConjunction, sub_238AEE310, &type metadata for OnDiskConstraintDisjunction, sub_238AEE2C0);
    __swift_destroy_boxed_opaque_existential_1(v25);
    v18 = sub_238AFE4DC(0, v17);
    v20 = v19;

    (*(v6 + 8))(v10, v5);
    *&v26 = v18;
    *(&v26 + 1) = v20;
    v21 = v29;
    v33 = v29;
    v31 = v27;
    v32 = v28;
    v30 = v26;
    v22 = v27;
    v23 = v34;
    *v34 = v26;
    v23[1] = v22;
    v23[2] = v32;
    *(v23 + 6) = v21;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void OnDiskCodeRequirement.init(_:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33[5] = *MEMORY[0x277D85DE8];
  v7 = objc_opt_self();
  v8 = sub_238B1BE94();
  *&v29 = 0;
  v9 = [v7 withData:v8 withError:&v29];

  if (v9)
  {
    v10 = v29;
    if ([v9 hasRequirements])
    {
      v11 = sub_238AFE12C();
      sub_238B06C50(v11, v33);
      if (!v3)
      {

        sub_238AFD5B4(v33, &v29);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A28, &qword_238B1E080);
        if (swift_dynamicCast())
        {
          *(&v31 + 1) = &type metadata for OnDiskConstraintConjunction;
          v14 = sub_238AF6F10();
          LOWORD(v30) = v26;
          v32 = v14;
          *(&v30 + 1) = v27;
          v28 = &type metadata for OnDiskConstraintConjunction;

          v15 = sub_238AFE274(&v26, &type metadata for OnDiskConstraintConjunction, sub_238AEE310, &type metadata for OnDiskConstraintDisjunction, sub_238AEE2C0);
          __swift_destroy_boxed_opaque_existential_1(&v26);
          v16 = sub_238AFE4DC(0, v15);
          v18 = v17;
        }

        else
        {
          sub_238AFD5B4(v33, &v29);
          if ((swift_dynamicCast() & 1) == 0)
          {
            sub_238AFA0E8();
            swift_allocError();
            *v20 = 1;
            swift_willThrow();

            sub_238AFFCFC(a1, a2);
            __swift_destroy_boxed_opaque_existential_1(v33);
            goto LABEL_13;
          }

          *(&v31 + 1) = &type metadata for OnDiskConstraintDisjunction;
          v19 = sub_238AF70F0();
          LOWORD(v30) = v26;
          v32 = v19;
          *(&v30 + 1) = v27;
          v28 = &type metadata for OnDiskConstraintDisjunction;

          v21 = sub_238AFE274(&v26, &type metadata for OnDiskConstraintConjunction, sub_238AEE310, &type metadata for OnDiskConstraintDisjunction, sub_238AEE2C0);
          __swift_destroy_boxed_opaque_existential_1(&v26);
          v16 = sub_238AFE4DC(0, v21);
          v18 = v22;
        }

        sub_238AFFCFC(a1, a2);
        __swift_destroy_boxed_opaque_existential_1(v33);
        *&v29 = v16;
        *(&v29 + 1) = v18;
        v23 = v31;
        *(a3 + 48) = v32;
        v24 = v29;
        *(a3 + 16) = v30;
        *(a3 + 32) = v23;
        *a3 = v24;
        goto LABEL_13;
      }

      sub_238AFFCFC(a1, a2);
    }

    else
    {
      sub_238AFA0E8();
      swift_allocError();
      *v13 = 1;
      swift_willThrow();
      sub_238AFFCFC(a1, a2);
    }
  }

  else
  {
    v12 = v29;
    sub_238B1BE84();

    swift_willThrow();
    sub_238AFFCFC(a1, a2);
  }

LABEL_13:
  v25 = *MEMORY[0x277D85DE8];
}

uint64_t sub_238B03184@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_238B1BE54();
    if (v10)
    {
      v11 = sub_238B1BE74();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_238B1BE64();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_238B1BE54();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_238B1BE74();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_238B1BE64();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_238B033B4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_238B03544(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_238AFFCFC(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_238B03184(v14, a3, a4, &v13);
  v10 = v4;
  sub_238AFFCFC(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_238B03544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_238B1BE54();
  v11 = result;
  if (result)
  {
    result = sub_238B1BE74();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_238B1BE64();
  sub_238B03184(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_238B035FC(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_238AFD728(a3, a4);
          return sub_238B033B4(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_238B03794()
{
  result = qword_27DF51B50;
  if (!qword_27DF51B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51B50);
  }

  return result;
}

unint64_t sub_238B037E8()
{
  result = qword_27DF51B58;
  if (!qword_27DF51B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51B58);
  }

  return result;
}

unint64_t sub_238B0383C()
{
  result = qword_27DF51B68;
  if (!qword_27DF51B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51B68);
  }

  return result;
}

unint64_t sub_238B03890()
{
  result = qword_27DF51B78;
  if (!qword_27DF51B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51B78);
  }

  return result;
}

unint64_t sub_238B038E8()
{
  result = qword_27DF51B88;
  if (!qword_27DF51B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51B88);
  }

  return result;
}

unint64_t sub_238B03940()
{
  result = qword_27DF51B90;
  if (!qword_27DF51B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51B90);
  }

  return result;
}

unint64_t sub_238B03998()
{
  result = qword_27DF51B98;
  if (!qword_27DF51B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51B98);
  }

  return result;
}

unint64_t sub_238B039F0()
{
  result = qword_27DF51BA0;
  if (!qword_27DF51BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51BA0);
  }

  return result;
}

unint64_t sub_238B03A48()
{
  result = qword_27DF51BA8;
  if (!qword_27DF51BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51BA8);
  }

  return result;
}

unint64_t sub_238B03AA0()
{
  result = qword_27DF51BB0;
  if (!qword_27DF51BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51BB0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_238B03B2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_238B03B74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_238B03BE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_238B03C2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_238B03C8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_238B03CD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LaunchCodeRequirement.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LaunchCodeRequirement.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_238B03E9C(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_238B03EEC(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_238B03F7C()
{
  result = qword_27DF51BB8;
  if (!qword_27DF51BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51BB8);
  }

  return result;
}

unint64_t sub_238B03FD4()
{
  result = qword_27DF51BC0;
  if (!qword_27DF51BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51BC0);
  }

  return result;
}

unint64_t sub_238B0402C()
{
  result = qword_27DF51BC8;
  if (!qword_27DF51BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51BC8);
  }

  return result;
}

unint64_t sub_238B04084()
{
  result = qword_27DF51BD0;
  if (!qword_27DF51BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51BD0);
  }

  return result;
}

unint64_t sub_238B040DC()
{
  result = qword_27DF51BD8;
  if (!qword_27DF51BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51BD8);
  }

  return result;
}

unint64_t sub_238B04134()
{
  result = qword_27DF51BE0;
  if (!qword_27DF51BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51BE0);
  }

  return result;
}

unint64_t sub_238B0418C()
{
  result = qword_27DF51BE8;
  if (!qword_27DF51BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51BE8);
  }

  return result;
}

unint64_t sub_238B041E4()
{
  result = qword_27DF51BF0;
  if (!qword_27DF51BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51BF0);
  }

  return result;
}

unint64_t sub_238B0423C()
{
  result = qword_27DF51BF8;
  if (!qword_27DF51BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51BF8);
  }

  return result;
}

uint64_t sub_238B04290(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_238B042EC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_238B042FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51C10, &unk_238B1E030);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static XPCPeerRequirement.codeRequirement(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51C18, &qword_238B1E048);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v16[-v11];
  v13 = sub_238B1BEF4();
  v14 = *(v13 - 8);
  (*(v14 + 56))(v12, 1, 1, v13);
  sub_238B044F0(*(a1 + 40), *(a1 + 48), v12);
  sub_238B046E0(v12, v9);
  result = (*(v14 + 48))(v9, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v14 + 32))(a2, v9, v13);
    return sub_238B04750(v12);
  }

  return result;
}

uint64_t sub_238B044F0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v17[3] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51C18, &qword_238B1E048);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = v17 - v9;
  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v11 != 2)
    {
      memset(&v17[1], 0, 14);
      goto LABEL_9;
    }

    v12 = *(a1 + 16);
    v13 = *(a1 + 24);
  }

  else
  {
    if (!v11)
    {
      v17[1] = a1;
      LOWORD(v17[2]) = a2;
      BYTE2(v17[2]) = BYTE2(a2);
      BYTE3(v17[2]) = BYTE3(a2);
      BYTE4(v17[2]) = BYTE4(a2);
      BYTE5(v17[2]) = BYTE5(a2);
LABEL_9:
      sub_238B1BEE4();
      v15 = sub_238B1BEF4();
      (*(*(v15 - 8) + 56))(v10, 0, 1, v15);
      result = sub_238B048F0(v10, a3);
      goto LABEL_10;
    }

    v12 = a1;
    v13 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_238B047B8(v12, v13, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
LABEL_10:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_238B046E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51C18, &qword_238B1E048);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238B04750(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51C18, &qword_238B1E048);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238B047B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51C18, &qword_238B1E048);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v14 - v10;
  result = sub_238B1BE54();
  if (!result || (result = sub_238B1BE74(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_238B1BE64();
      sub_238B1BEE4();
      v13 = sub_238B1BEF4();
      (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
      return sub_238B048F0(v11, a4);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_238B048F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51C18, &qword_238B1E048);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_238B04960(uint64_t a1, void (*a2)(__int128 *__return_ptr, uint64_t, uint64_t, __int128 *), uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, void (*a7)(unint64_t, char *, void **, uint64_t, uint64_t))
{
  v66 = a7;
  v62 = a4;
  v61 = a3;
  v67 = a2;
  v11 = v7;
  sub_238AFD5B4(a1, &v76);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51978, &qword_238B1E020);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51980, &qword_238B1CF40);
  result = swift_dynamicCast();
  if (!result)
  {
    sub_238AFD5B4(a1, &v76);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF519E0, &qword_238B1CFA0);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return MEMORY[0x277D84F90];
    }

    v60 = a5;
    v42 = v72;
    v65 = *(v72 + 16);
    if (v65)
    {
      v59 = a6;
      v43 = 0;
      v44 = v72 + 32;
      v45 = MEMORY[0x277D84F90];
      v64 = v13;
      v63 = v72;
      while (1)
      {
        if (v43 >= *(v42 + 16))
        {
          goto LABEL_52;
        }

        sub_238AFD5B4(v44, &v76);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_47;
        }

        v46 = v72;
        if (*(v72 + 16) != 2)
        {
          break;
        }

        sub_238AFD5B4(v72 + 32, &v76);
        result = swift_dynamicCast();
        if ((result & 1) == 0)
        {

LABEL_47:

LABEL_48:

          sub_238AFA0E8();
          swift_allocError();
          *v57 = 1;
          swift_willThrow();
          return v8;
        }

        if (*(v46 + 16) < 2uLL)
        {
          goto LABEL_53;
        }

        v47 = v72;
        sub_238AFD5B4(v46 + 72, &v72);

        v67(&v76, v47, *(&v47 + 1), &v72);
        if (v7)
        {
          __swift_destroy_boxed_opaque_existential_1(&v72);

          return v8;
        }

        __swift_destroy_boxed_opaque_existential_1(&v72);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v80 = v45;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v45 = sub_238B14E98(0, v45[2] + 1, 1, v45, v61, v62, v60, v59);
          v80 = v45;
        }

        v50 = v45[2];
        v49 = v45[3];
        if (v50 >= v49 >> 1)
        {
          v45 = sub_238B14E98((v49 > 1), v50 + 1, 1, v45, v61, v62, v60, v59);
          v80 = v45;
        }

        ++v43;
        v51 = *(&v77 + 1);
        v52 = v78;
        v53 = __swift_mutable_project_boxed_opaque_existential_1(&v76, *(&v77 + 1));
        v54 = *(*(v51 - 8) + 64);
        MEMORY[0x28223BE20](v53, v53);
        v8 = (&v58 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v56 + 16))(v8);
        v66(v50, v8, &v80, v51, v52);
        result = __swift_destroy_boxed_opaque_existential_1(&v76);
        v44 += 40;
        v42 = v63;
        if (v65 == v43)
        {
          goto LABEL_43;
        }
      }

      goto LABEL_48;
    }

    v45 = MEMORY[0x277D84F90];
LABEL_43:

    return v45;
  }

  v60 = a5;
  v59 = a6;
  v15 = 0;
  v17 = v72 + 64;
  v16 = *(v72 + 64);
  v64 = v72;
  v18 = 1 << *(v72 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v16;
  v21 = (v18 + 63) >> 6;
  v8 = MEMORY[0x277D84F90];
  v65 = v72 + 64;
  if ((v19 & v16) != 0)
  {
    while (1)
    {
      v22 = v15;
LABEL_14:
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v26 = v25 | (v22 << 6);
      v27 = (*(v64 + 48) + 16 * v26);
      v29 = *v27;
      v28 = v27[1];
      sub_238AFD5B4(*(v64 + 56) + 40 * v26, &v69);
      *&v72 = v29;
      *(&v72 + 1) = v28;
      sub_238AEA2C0(&v69, &v73);

LABEL_15:
      v76 = v72;
      v77 = v73;
      v78 = v74;
      v79 = v75;
      v30 = *(&v72 + 1);
      if (!*(&v72 + 1))
      {

        return v8;
      }

      v31 = v76;
      sub_238AEA2C0(&v77, &v72);
      v67(&v69, v31, v30, &v72);
      if (v11)
      {
        break;
      }

      v32 = swift_isUniquelyReferenced_nonNull_native();
      v80 = v8;
      if ((v32 & 1) == 0)
      {
        v8 = sub_238B14E98(0, v8[2] + 1, 1, v8, v61, v62, v60, v59);
        v80 = v8;
      }

      v34 = v8[2];
      v33 = v8[3];
      v68 = 0;
      if (v34 >= v33 >> 1)
      {
        v8 = sub_238B14E98((v33 > 1), v34 + 1, 1, v8, v61, v62, v60, v59);
        v80 = v8;
      }

      __swift_destroy_boxed_opaque_existential_1(&v72);
      v35 = v70;
      v36 = v71;
      v37 = __swift_mutable_project_boxed_opaque_existential_1(&v69, v70);
      v38 = *(*(v35 - 8) + 64);
      MEMORY[0x28223BE20](v37, v37);
      v40 = &v58 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v41 + 16))(v40);
      v66(v34, v40, &v80, v35, v36);
      result = __swift_destroy_boxed_opaque_existential_1(&v69);
      v11 = v68;
      v17 = v65;
      if (!v20)
      {
        goto LABEL_6;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(&v72);

    return v8;
  }

LABEL_6:
  if (v21 <= v15 + 1)
  {
    v23 = v15 + 1;
  }

  else
  {
    v23 = v21;
  }

  v24 = v23 - 1;
  while (1)
  {
    v22 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
      v20 = 0;
      v75 = 0;
      v73 = 0u;
      v74 = 0u;
      v15 = v24;
      v72 = 0u;
      goto LABEL_15;
    }

    v20 = *(v17 + 8 * v22);
    ++v15;
    if (v20)
    {
      v15 = v22;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

uint64_t *sub_238B05110@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{

  switch(sub_238B1BAB4())
  {
    case 0u:
      result = sub_238B1438C(a1);
      if (!v2)
      {
        v13 = result;
        a2[3] = &type metadata for AppleInternal;
        a2[4] = sub_238AFAC74();
        result = swift_allocObject();
        *a2 = result;
        *(result + 16) = 0;
        goto LABEL_40;
      }

      return result;
    case 1u:
      sub_238AFD5B4(a1, v29);
      a2[3] = &type metadata for CodeDirectoryHash;
      a2[4] = sub_238AFAC20();
      v15 = swift_allocObject();
      *a2 = v15;
      v16 = v15 + 16;
      v17 = 1;
      goto LABEL_26;
    case 2u:
      sub_238AFD5B4(a1, v29);
      a2[3] = &type metadata for ProcessCodeSigningFlags;
      a2[4] = sub_238AFABCC();
      v24 = swift_allocObject();
      *a2 = v24;
      result = sub_238B0A7A4(v29, v24 + 16);
      if (!v2)
      {
        return result;
      }

      return __swift_deallocate_boxed_opaque_existential_1(a2);
    case 3u:
      result = sub_238B1438C(a1);
      if (v2)
      {
        return result;
      }

      v13 = result;
      a2[3] = &type metadata for DeveloperMode;
      a2[4] = sub_238AFAB78();
      result = swift_allocObject();
      *a2 = result;
      v14 = 3;
      goto LABEL_39;
    case 4u:
      sub_238AFD5B4(a1, v29);
      result = sub_238B19E94(v29);
      if (!v2)
      {
        v21 = result;
        a2[3] = type metadata accessor for EntitlementsQuery();
        result = sub_238B1A09C(&qword_27DF517A8);
        a2[4] = result;
        *a2 = v21;
      }

      return result;
    case 5u:
      sub_238AFD5B4(a1, v29);
      a2[3] = &type metadata for InfoPlistHash;
      a2[4] = sub_238AFAB24();
      v25 = swift_allocObject();
      *a2 = v25;
      v16 = v25 + 16;
      v17 = 5;
LABEL_26:
      result = sub_238B0DA84(v29, v17, v16);
      if (!v2)
      {
        return result;
      }

      return __swift_deallocate_boxed_opaque_existential_1(a2);
    case 6u:
      result = sub_238B1438C(a1);
      if (v2)
      {
        return result;
      }

      v13 = result;
      a2[3] = &type metadata for InTrustCacheWithConstraintCategory;
      a2[4] = sub_238AFAAD0();
      result = swift_allocObject();
      *a2 = result;
      v14 = 6;
      goto LABEL_39;
    case 7u:
      result = sub_238B1438C(a1);
      if (v2)
      {
        return result;
      }

      v13 = result;
      a2[3] = &type metadata for IsInitProcess;
      a2[4] = sub_238AFAA7C();
      result = swift_allocObject();
      *a2 = result;
      *(result + 16) = 7;
      goto LABEL_40;
    case 9u:
      result = sub_238B1438C(a1);
      if (v2)
      {
        return result;
      }

      v13 = result;
      a2[3] = &type metadata for IsSIPProtected;
      a2[4] = sub_238AFAA28();
      result = swift_allocObject();
      *a2 = result;
      v14 = 9;
      goto LABEL_39;
    case 0xBu:
      result = sub_238B1438C(a1);
      if (v2)
      {
        return result;
      }

      v13 = result;
      a2[3] = &type metadata for OnAuthorizedAuthAPFSVolume;
      a2[4] = sub_238AFA9D4();
      result = swift_allocObject();
      *a2 = result;
      v14 = 11;
      goto LABEL_39;
    case 0xCu:
      result = sub_238B1438C(a1);
      if (v2)
      {
        return result;
      }

      a2[3] = &type metadata for OnSystemVolume;
      v22 = result;
      a2[4] = sub_238AFA980();
      result = swift_allocObject();
      *a2 = result;
      *(result + 16) = 12;
      result[6] = MEMORY[0x277D839B0];
      result[7] = &off_284B66ED8;
      v23 = v22 & 1;
      goto LABEL_41;
    case 0xDu:
      sub_238AFD5B4(a1, v29);
      a2[3] = &type metadata for OSEnvironment;
      a2[4] = sub_238AFA92C();
      v18 = swift_allocObject();
      *a2 = v18;
      v19 = v18 + 16;
      v20 = 13;
      goto LABEL_43;
    case 0xEu:
      sub_238AFD5B4(a1, v29);
      a2[3] = &type metadata for PlatformIdentifier;
      a2[4] = sub_238AFA884();
      v12 = swift_allocObject();
      *a2 = v12;
      result = sub_238B11E9C(v29, v12 + 16);
      if (!v2)
      {
        return result;
      }

      return __swift_deallocate_boxed_opaque_existential_1(a2);
    case 0xFu:
      sub_238AFD5B4(a1, v29);
      a2[3] = &type metadata for PlatformType;
      a2[4] = sub_238AFA8D8();
      v26 = swift_allocObject();
      *a2 = v26;
      result = sub_238B1113C(v29, v26 + 16);
      if (!v2)
      {
        return result;
      }

      return __swift_deallocate_boxed_opaque_existential_1(a2);
    case 0x10u:
      sub_238AFD5B4(a1, v29);
      a2[3] = &type metadata for SigningIdentifier;
      a2[4] = sub_238AFA830();
      v27 = swift_allocObject();
      *a2 = v27;
      v19 = v27 + 16;
      v20 = 16;
      goto LABEL_43;
    case 0x11u:
      sub_238AFD5B4(a1, v29);
      a2[3] = &type metadata for TeamIdentifier;
      a2[4] = sub_238AFA7DC();
      v28 = swift_allocObject();
      *a2 = v28;
      v19 = v28 + 16;
      v20 = 17;
LABEL_43:
      result = sub_238B128A8(v29, v20, v19);
      if (v2)
      {
        return __swift_deallocate_boxed_opaque_existential_1(a2);
      }

      return result;
    case 0x12u:
      result = sub_238B1438C(a1);
      if (v2)
      {
        return result;
      }

      v13 = result;
      a2[3] = &type metadata for TeamIdentifierMatchesCurrentProcess;
      a2[4] = sub_238AFA788();
      result = swift_allocObject();
      *a2 = result;
      v14 = 18;
LABEL_39:
      *(result + 16) = v14;
LABEL_40:
      result[6] = MEMORY[0x277D839B0];
      result[7] = &off_284B66ED8;
      v23 = v13 & 1;
LABEL_41:
      *(result + 24) = v23;
      return result;
    case 0x13u:
      sub_238AFD5B4(a1, v29);
      a2[3] = &type metadata for ValidationCategory;
      a2[4] = sub_238AFA734();
      v11 = swift_allocObject();
      *a2 = v11;
      result = sub_238B13E98(v29, v11 + 16);
      if (!v2)
      {
        return result;
      }

      return __swift_deallocate_boxed_opaque_existential_1(a2);
    case 0x14u:
    case 0x15u:
      sub_238AFD5B4(a1, v29);
      v5 = sub_238B04960(v29, sub_238B05110, &qword_27DF51C20, &unk_238B1E068, &qword_27DF51A10, &qword_238B1CFD0, sub_238AF8DC4);
      if (v2)
      {
        return __swift_destroy_boxed_opaque_existential_1(v29);
      }

      v6 = v5;
      __swift_destroy_boxed_opaque_existential_1(v29);
      a2[3] = &type metadata for ProcessConstraintConjunction;
      result = sub_238AF6E18();
      a2[4] = result;
      v8 = 5141;
      goto LABEL_46;
    case 0x1Cu:
    case 0x1Du:
      sub_238AFD5B4(a1, v29);
      v9 = sub_238B04960(v29, sub_238B05110, &qword_27DF51C20, &unk_238B1E068, &qword_27DF51A10, &qword_238B1CFD0, sub_238AF8DC4);
      if (v2)
      {
        return __swift_destroy_boxed_opaque_existential_1(v29);
      }

      v6 = v9;
      __swift_destroy_boxed_opaque_existential_1(v29);
      a2[3] = &type metadata for ProcessConstraintDisjunction;
      result = sub_238AF6F8C();
      a2[4] = result;
      v8 = 7197;
LABEL_46:
      *a2 = v8;
      a2[1] = v6;
      return result;
    default:
      sub_238AFA0E8();
      swift_allocError();
      *v10 = 1;
      return swift_willThrow();
  }
}

uint64_t *sub_238B058F8@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{

  switch(sub_238B1BAB4())
  {
    case 0u:
      result = sub_238B1438C(a1);
      if (!v2)
      {
        v19 = result;
        a2[3] = &type metadata for AppleInternal;
        a2[4] = sub_238AFC2DC();
        result = swift_allocObject();
        *a2 = result;
        *(result + 16) = 0;
        goto LABEL_37;
      }

      return result;
    case 1u:
      sub_238AFD5B4(a1, v30);
      a2[3] = &type metadata for CodeDirectoryHash;
      a2[4] = sub_238AFC288();
      v16 = swift_allocObject();
      *a2 = v16;
      v17 = v16 + 16;
      v18 = 1;
      goto LABEL_26;
    case 2u:
      sub_238AFD5B4(a1, v30);
      a2[3] = &type metadata for ProcessCodeSigningFlags;
      a2[4] = sub_238AFC234();
      v24 = swift_allocObject();
      *a2 = v24;
      result = sub_238B0A7A4(v30, v24 + 16);
      if (!v2)
      {
        return result;
      }

      return __swift_deallocate_boxed_opaque_existential_1(a2);
    case 3u:
      result = sub_238B1438C(a1);
      if (v2)
      {
        return result;
      }

      v19 = result;
      a2[3] = &type metadata for DeveloperMode;
      a2[4] = sub_238AFC1E0();
      result = swift_allocObject();
      *a2 = result;
      v20 = 3;
      goto LABEL_36;
    case 4u:
      sub_238AFD5B4(a1, v30);
      result = sub_238B19E94(v30);
      if (!v2)
      {
        v21 = result;
        a2[3] = type metadata accessor for EntitlementsQuery();
        result = sub_238B1A09C(&qword_27DF51878);
        a2[4] = result;
        *a2 = v21;
      }

      return result;
    case 5u:
      sub_238AFD5B4(a1, v30);
      a2[3] = &type metadata for InfoPlistHash;
      a2[4] = sub_238AFC18C();
      v25 = swift_allocObject();
      *a2 = v25;
      v17 = v25 + 16;
      v18 = 5;
LABEL_26:
      result = sub_238B0DA84(v30, v18, v17);
      if (!v2)
      {
        return result;
      }

      return __swift_deallocate_boxed_opaque_existential_1(a2);
    case 6u:
      result = sub_238B1438C(a1);
      if (v2)
      {
        return result;
      }

      v19 = result;
      a2[3] = &type metadata for InTrustCacheWithConstraintCategory;
      a2[4] = sub_238AFC138();
      result = swift_allocObject();
      *a2 = result;
      v20 = 6;
      goto LABEL_36;
    case 7u:
      result = sub_238B1438C(a1);
      if (v2)
      {
        return result;
      }

      v19 = result;
      a2[3] = &type metadata for IsInitProcess;
      a2[4] = sub_238AFC0E4();
      result = swift_allocObject();
      *a2 = result;
      *(result + 16) = 7;
      goto LABEL_37;
    case 9u:
      result = sub_238B1438C(a1);
      if (v2)
      {
        return result;
      }

      v19 = result;
      a2[3] = &type metadata for IsSIPProtected;
      a2[4] = sub_238AFC090();
      result = swift_allocObject();
      *a2 = result;
      v20 = 9;
      goto LABEL_36;
    case 0xAu:
      sub_238AFD5B4(a1, v30);
      a2[3] = &type metadata for LaunchType;
      a2[4] = sub_238AFC03C();
      v15 = swift_allocObject();
      *a2 = v15;
      result = sub_238B0F674(v30, v15 + 16);
      if (!v2)
      {
        return result;
      }

      return __swift_deallocate_boxed_opaque_existential_1(a2);
    case 0xBu:
      result = sub_238B1438C(a1);
      if (v2)
      {
        return result;
      }

      a2[3] = &type metadata for OnAuthorizedAuthAPFSVolume;
      v22 = result;
      a2[4] = sub_238AFBFE8();
      result = swift_allocObject();
      *a2 = result;
      *(result + 16) = 11;
      result[6] = MEMORY[0x277D839B0];
      result[7] = &off_284B66ED8;
      v23 = v22 & 1;
      goto LABEL_38;
    case 0xCu:
      result = sub_238B1438C(a1);
      if (v2)
      {
        return result;
      }

      v19 = result;
      a2[3] = &type metadata for OnSystemVolume;
      a2[4] = sub_238AFBF94();
      result = swift_allocObject();
      *a2 = result;
      v20 = 12;
LABEL_36:
      *(result + 16) = v20;
LABEL_37:
      result[6] = MEMORY[0x277D839B0];
      result[7] = &off_284B66ED8;
      v23 = v19 & 1;
LABEL_38:
      *(result + 24) = v23;
      return result;
    case 0xDu:
      sub_238AFD5B4(a1, v30);
      a2[3] = &type metadata for OSEnvironment;
      a2[4] = sub_238AFBF40();
      v12 = swift_allocObject();
      *a2 = v12;
      v13 = v12 + 16;
      v14 = 13;
      goto LABEL_43;
    case 0xEu:
      sub_238AFD5B4(a1, v30);
      a2[3] = &type metadata for PlatformIdentifier;
      a2[4] = sub_238AFBE98();
      v26 = swift_allocObject();
      *a2 = v26;
      result = sub_238B11E9C(v30, v26 + 16);
      if (!v2)
      {
        return result;
      }

      return __swift_deallocate_boxed_opaque_existential_1(a2);
    case 0xFu:
      sub_238AFD5B4(a1, v30);
      a2[3] = &type metadata for PlatformType;
      a2[4] = sub_238AFBEEC();
      v27 = swift_allocObject();
      *a2 = v27;
      result = sub_238B1113C(v30, v27 + 16);
      if (!v2)
      {
        return result;
      }

      return __swift_deallocate_boxed_opaque_existential_1(a2);
    case 0x10u:
      sub_238AFD5B4(a1, v30);
      a2[3] = &type metadata for SigningIdentifier;
      a2[4] = sub_238AFBE44();
      v29 = swift_allocObject();
      *a2 = v29;
      v13 = v29 + 16;
      v14 = 16;
      goto LABEL_43;
    case 0x11u:
      sub_238AFD5B4(a1, v30);
      a2[3] = &type metadata for TeamIdentifier;
      a2[4] = sub_238AFBDF0();
      v28 = swift_allocObject();
      *a2 = v28;
      v13 = v28 + 16;
      v14 = 17;
LABEL_43:
      result = sub_238B128A8(v30, v14, v13);
      if (v2)
      {
        return __swift_deallocate_boxed_opaque_existential_1(a2);
      }

      return result;
    case 0x13u:
      sub_238AFD5B4(a1, v30);
      a2[3] = &type metadata for ValidationCategory;
      a2[4] = sub_238AFBD9C();
      v11 = swift_allocObject();
      *a2 = v11;
      result = sub_238B13E98(v30, v11 + 16);
      if (!v2)
      {
        return result;
      }

      return __swift_deallocate_boxed_opaque_existential_1(a2);
    case 0x14u:
    case 0x15u:
      sub_238AFD5B4(a1, v30);
      v5 = sub_238B04960(v30, sub_238B058F8, &qword_27DF51C28, &qword_238B1E078, &qword_27DF51A20, &unk_238B1CFE0, sub_238AF8DC4);
      if (v2)
      {
        return __swift_destroy_boxed_opaque_existential_1(v30);
      }

      v6 = v5;
      __swift_destroy_boxed_opaque_existential_1(v30);
      a2[3] = &type metadata for LaunchConstraintConjunction;
      result = sub_238AF6E94();
      a2[4] = result;
      v8 = 5141;
      goto LABEL_47;
    case 0x1Cu:
    case 0x1Du:
      sub_238AFD5B4(a1, v30);
      v9 = sub_238B04960(v30, sub_238B058F8, &qword_27DF51C28, &qword_238B1E078, &qword_27DF51A20, &unk_238B1CFE0, sub_238AF8DC4);
      if (v2)
      {
        return __swift_destroy_boxed_opaque_existential_1(v30);
      }

      v6 = v9;
      __swift_destroy_boxed_opaque_existential_1(v30);
      a2[3] = &type metadata for LaunchConstraintDisjunction;
      result = sub_238AF7008();
      a2[4] = result;
      v8 = 7197;
LABEL_47:
      *a2 = v8;
      a2[1] = v6;
      return result;
    default:
      sub_238AFA0E8();
      swift_allocError();
      *v10 = 1;
      return swift_willThrow();
  }
}

uint64_t *sub_238B060E0@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{

  switch(sub_238B1BAB4())
  {
    case 0u:
      result = sub_238B1438C(a1);
      if (!v2)
      {
        v12 = result;
        a2[3] = &type metadata for AppleInternal;
        a2[4] = sub_238AFCEFC();
        result = swift_allocObject();
        *a2 = result;
        *(result + 16) = 0;
        goto LABEL_35;
      }

      return result;
    case 1u:
      sub_238AFD5B4(a1, v29);
      a2[3] = &type metadata for CodeDirectoryHash;
      a2[4] = sub_238AFCEA8();
      v15 = swift_allocObject();
      *a2 = v15;
      v16 = v15 + 16;
      v17 = 1;
      goto LABEL_20;
    case 2u:
      sub_238AFD5B4(a1, v29);
      a2[3] = &type metadata for OnDiskCodeSigningFlags;
      a2[4] = sub_238AFCE54();
      v25 = swift_allocObject();
      *a2 = v25;
      result = sub_238B0A7A4(v29, v25 + 16);
      if (!v2)
      {
        return result;
      }

      return __swift_deallocate_boxed_opaque_existential_1(a2);
    case 3u:
      result = sub_238B1438C(a1);
      if (v2)
      {
        return result;
      }

      v12 = result;
      a2[3] = &type metadata for DeveloperMode;
      a2[4] = sub_238AFCE00();
      result = swift_allocObject();
      *a2 = result;
      v13 = 3;
      goto LABEL_34;
    case 4u:
      sub_238AFD5B4(a1, v29);
      result = sub_238B19E94(v29);
      if (!v2)
      {
        v18 = result;
        a2[3] = type metadata accessor for EntitlementsQuery();
        result = sub_238B1A09C(&qword_27DF51948);
        a2[4] = result;
        *a2 = v18;
      }

      return result;
    case 5u:
      sub_238AFD5B4(a1, v29);
      a2[3] = &type metadata for InfoPlistHash;
      a2[4] = sub_238AFCD64();
      v22 = swift_allocObject();
      *a2 = v22;
      v16 = v22 + 16;
      v17 = 5;
LABEL_20:
      result = sub_238B0DA84(v29, v17, v16);
      if (!v2)
      {
        return result;
      }

      return __swift_deallocate_boxed_opaque_existential_1(a2);
    case 6u:
      result = sub_238B1438C(a1);
      if (v2)
      {
        return result;
      }

      v12 = result;
      a2[3] = &type metadata for InTrustCacheWithConstraintCategory;
      a2[4] = sub_238AFCD10();
      result = swift_allocObject();
      *a2 = result;
      v13 = 6;
      goto LABEL_34;
    case 9u:
      result = sub_238B1438C(a1);
      if (v2)
      {
        return result;
      }

      a2[3] = &type metadata for IsSIPProtected;
      v27 = result;
      a2[4] = sub_238AFCC68();
      result = swift_allocObject();
      *a2 = result;
      *(result + 16) = 9;
      result[6] = MEMORY[0x277D839B0];
      result[7] = &off_284B66ED8;
      v26 = v27 & 1;
      goto LABEL_36;
    case 0xBu:
      result = sub_238B1438C(a1);
      if (v2)
      {
        return result;
      }

      v12 = result;
      a2[3] = &type metadata for OnAuthorizedAuthAPFSVolume;
      a2[4] = sub_238AFCC14();
      result = swift_allocObject();
      *a2 = result;
      v13 = 11;
      goto LABEL_34;
    case 0xCu:
      result = sub_238B1438C(a1);
      if (v2)
      {
        return result;
      }

      v12 = result;
      a2[3] = &type metadata for OnSystemVolume;
      a2[4] = sub_238AFCBC0();
      result = swift_allocObject();
      *a2 = result;
      v13 = 12;
LABEL_34:
      *(result + 16) = v13;
LABEL_35:
      result[6] = MEMORY[0x277D839B0];
      result[7] = &off_284B66ED8;
      v26 = v12 & 1;
LABEL_36:
      *(result + 24) = v26;
      return result;
    case 0xDu:
      sub_238AFD5B4(a1, v29);
      a2[3] = &type metadata for OSEnvironment;
      a2[4] = sub_238AFCB6C();
      v19 = swift_allocObject();
      *a2 = v19;
      v20 = v19 + 16;
      v21 = 13;
      goto LABEL_26;
    case 0xEu:
      sub_238AFD5B4(a1, v29);
      a2[3] = &type metadata for PlatformIdentifier;
      a2[4] = sub_238AFCAC4();
      v14 = swift_allocObject();
      *a2 = v14;
      result = sub_238B11E9C(v29, v14 + 16);
      if (!v2)
      {
        return result;
      }

      return __swift_deallocate_boxed_opaque_existential_1(a2);
    case 0xFu:
      sub_238AFD5B4(a1, v29);
      a2[3] = &type metadata for PlatformType;
      a2[4] = sub_238AFCB18();
      v11 = swift_allocObject();
      *a2 = v11;
      result = sub_238B1113C(v29, v11 + 16);
      if (!v2)
      {
        return result;
      }

      return __swift_deallocate_boxed_opaque_existential_1(a2);
    case 0x10u:
      sub_238AFD5B4(a1, v29);
      a2[3] = &type metadata for SigningIdentifier;
      a2[4] = sub_238AFCA70();
      v23 = swift_allocObject();
      *a2 = v23;
      v20 = v23 + 16;
      v21 = 16;
      goto LABEL_26;
    case 0x11u:
      sub_238AFD5B4(a1, v29);
      a2[3] = &type metadata for TeamIdentifier;
      a2[4] = sub_238AFCA1C();
      v24 = swift_allocObject();
      *a2 = v24;
      v20 = v24 + 16;
      v21 = 17;
LABEL_26:
      result = sub_238B128A8(v29, v21, v20);
      if (!v2)
      {
        return result;
      }

      return __swift_deallocate_boxed_opaque_existential_1(a2);
    case 0x13u:
      sub_238AFD5B4(a1, v29);
      a2[3] = &type metadata for ValidationCategory;
      a2[4] = sub_238AFC9C8();
      v28 = swift_allocObject();
      *a2 = v28;
      result = sub_238B13E98(v29, v28 + 16);
      if (v2)
      {
        return __swift_deallocate_boxed_opaque_existential_1(a2);
      }

      return result;
    case 0x14u:
    case 0x15u:
      sub_238AFD5B4(a1, v29);
      v5 = sub_238B04960(v29, sub_238B060E0, &qword_27DF51C30, &qword_238B1E088, &qword_27DF51A28, &qword_238B1E080, sub_238AF8DC4);
      if (v2)
      {
        return __swift_destroy_boxed_opaque_existential_1(v29);
      }

      v6 = v5;
      __swift_destroy_boxed_opaque_existential_1(v29);
      a2[3] = &type metadata for OnDiskConstraintConjunction;
      result = sub_238AF6F10();
      a2[4] = result;
      v8 = 5141;
      goto LABEL_42;
    case 0x1Cu:
    case 0x1Du:
      sub_238AFD5B4(a1, v29);
      v9 = sub_238B04960(v29, sub_238B060E0, &qword_27DF51C30, &qword_238B1E088, &qword_27DF51A28, &qword_238B1E080, sub_238AF8DC4);
      if (v2)
      {
        return __swift_destroy_boxed_opaque_existential_1(v29);
      }

      v6 = v9;
      __swift_destroy_boxed_opaque_existential_1(v29);
      a2[3] = &type metadata for OnDiskConstraintDisjunction;
      result = sub_238AF70F0();
      a2[4] = result;
      v8 = 7197;
LABEL_42:
      *a2 = v8;
      a2[1] = v6;
      return result;
    default:
      sub_238AFA0E8();
      swift_allocError();
      *v10 = 1;
      return swift_willThrow();
  }
}

uint64_t *static OnDiskCodeSigningFlags.isSuperset(of:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  *a2 = 2;
  *(a2 + 8) = 23;
  *(a2 + 16) = v2;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_238B06850@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16) == 1)
  {
    result = sub_238AEC5B4(a1, &v10);
    v6 = v11;
    if (!v11)
    {
      __break(1u);
      return result;
    }

    v7 = v10;
    sub_238AEA2C0(&v12, v14);
    v8 = v7 == 7499556 && v6 == 0xE300000000000000;
    if (v8 || (sub_238B1C2E4() & 1) != 0 || v7 == 0x617272612D726F24 && v6 == 0xE900000000000079 || (sub_238B1C2E4() & 1) != 0)
    {
      sub_238B05110(v14, a2);
      __swift_destroy_boxed_opaque_existential_1(v14);
    }

    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  *(&v12 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51980, &qword_238B1CF40);
  v13 = &off_284B699F8;
  v10 = a1;

  v9 = sub_238B04960(&v10, sub_238B05110, &qword_27DF51C20, &unk_238B1E068, &qword_27DF51A10, &qword_238B1CFD0, sub_238AF8DC4);
  result = __swift_destroy_boxed_opaque_existential_1(&v10);
  if (!v2)
  {
    a2[3] = &type metadata for ProcessConstraintConjunction;
    result = sub_238AF6E18();
    a2[4] = result;
    *a2 = 5141;
    a2[1] = v9;
  }

  return result;
}

uint64_t sub_238B06A50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16) == 1)
  {
    result = sub_238AEC5B4(a1, &v10);
    v6 = v11;
    if (!v11)
    {
      __break(1u);
      return result;
    }

    v7 = v10;
    sub_238AEA2C0(&v12, v14);
    v8 = v7 == 7499556 && v6 == 0xE300000000000000;
    if (v8 || (sub_238B1C2E4() & 1) != 0 || v7 == 0x617272612D726F24 && v6 == 0xE900000000000079 || (sub_238B1C2E4() & 1) != 0)
    {
      sub_238B058F8(v14, a2);
      __swift_destroy_boxed_opaque_existential_1(v14);
    }

    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  *(&v12 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51980, &qword_238B1CF40);
  v13 = &off_284B699F8;
  v10 = a1;

  v9 = sub_238B04960(&v10, sub_238B058F8, &qword_27DF51C28, &qword_238B1E078, &qword_27DF51A20, &unk_238B1CFE0, sub_238AF8DC4);
  result = __swift_destroy_boxed_opaque_existential_1(&v10);
  if (!v2)
  {
    a2[3] = &type metadata for LaunchConstraintConjunction;
    result = sub_238AF6E94();
    a2[4] = result;
    *a2 = 5141;
    a2[1] = v9;
  }

  return result;
}

uint64_t sub_238B06C50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16) == 1)
  {
    result = sub_238AEC5B4(a1, &v10);
    v6 = v11;
    if (!v11)
    {
      __break(1u);
      return result;
    }

    v7 = v10;
    sub_238AEA2C0(&v12, v14);
    v8 = v7 == 7499556 && v6 == 0xE300000000000000;
    if (v8 || (sub_238B1C2E4() & 1) != 0 || v7 == 0x617272612D726F24 && v6 == 0xE900000000000079 || (sub_238B1C2E4() & 1) != 0)
    {
      sub_238B060E0(v14, a2);
      __swift_destroy_boxed_opaque_existential_1(v14);
    }

    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  *(&v12 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51980, &qword_238B1CF40);
  v13 = &off_284B699F8;
  v10 = a1;

  v9 = sub_238B04960(&v10, sub_238B060E0, &qword_27DF51C30, &qword_238B1E088, &qword_27DF51A28, &qword_238B1E080, sub_238AF8DC4);
  result = __swift_destroy_boxed_opaque_existential_1(&v10);
  if (!v2)
  {
    a2[3] = &type metadata for OnDiskConstraintConjunction;
    result = sub_238AF6F10();
    a2[4] = result;
    *a2 = 5141;
    a2[1] = v9;
  }

  return result;
}

void *sub_238B06EAC(void *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = result[2];
  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v9 = result + 4;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = *v9;
    v12 = *(*v9 + 16);
    v13 = v10[2];
    v14 = v13 + v12;
    if (__OFADD__(v13, v12))
    {
      break;
    }

    v15 = *v9;

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v14 <= v10[3] >> 1)
    {
      if (*(v11 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v13 <= v14)
      {
        v16 = v13 + v12;
      }

      else
      {
        v16 = v13;
      }

      result = sub_238B14E98(result, v16, 1, v10, a2, a3, a4, a5);
      v10 = result;
      if (*(v11 + 16))
      {
LABEL_14:
        if ((v10[3] >> 1) - v10[2] < v12)
        {
          goto LABEL_22;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
        swift_arrayInitWithCopy();

        if (v12)
        {
          v17 = v10[2];
          v18 = __OFADD__(v17, v12);
          v19 = v17 + v12;
          if (v18)
          {
            goto LABEL_23;
          }

          v10[2] = v19;
        }

        goto LABEL_4;
      }
    }

    if (v12)
    {
      goto LABEL_21;
    }

LABEL_4:
    ++v9;
    if (!--v5)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_238B0702C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_238B1C830;
  sub_238AFD5B4(a1, v4 + 32);
  return v4;
}

uint64_t static LaunchConstraintBuilder.buildOptional(_:)(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  return v1;
}

uint64_t sub_238B070F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_238AFD5B4(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51978, &qword_238B1E020);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51980, &qword_238B1CF40);
  if (!swift_dynamicCast())
  {
    goto LABEL_7;
  }

  if (*(v14[0] + 16) != 1)
  {

LABEL_7:
    sub_238AFA0E8();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();
    v7 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  result = sub_238AEC5B4(v14[0], v12);
  if (v12[1])
  {

    sub_238AEA2C0(&v13, v14);
    v5 = sub_238B1BAB4();
    if (v5 == 31)
    {
LABEL_5:
      sub_238AFA0E8();
      swift_allocError();
      *v6 = 1;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(a1);
      v7 = v14;
      return __swift_destroy_boxed_opaque_existential_1(v7);
    }

    v9 = v5;
    sub_238AFD5B4(v14, v12);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
      result = __swift_destroy_boxed_opaque_existential_1(v14);
      v10 = v11;
    }

    else
    {
      sub_238B14AE4(0, 0xF000000000000000);
      sub_238AFD5B4(v14, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF524B8, &qword_238B21D90);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_5;
      }

      __swift_destroy_boxed_opaque_existential_1(a1);
      result = __swift_destroy_boxed_opaque_existential_1(v14);
      v10 = xmmword_238B1E050;
    }

    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 24) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_238B07334(uint64_t *a1)
{
  sub_238AFD5B4(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51978, &qword_238B1E020);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51980, &qword_238B1CF40);
  if (!swift_dynamicCast())
  {
    goto LABEL_7;
  }

  v1 = v10[0];
  if (*(v10[0] + 16) != 1)
  {

LABEL_7:
    sub_238AFA0E8();
    swift_allocError();
    *v7 = 1;
    swift_willThrow();
    v6 = a1;
    goto LABEL_8;
  }

  result = sub_238AEC5B4(v10[0], v8);
  if (v8[1])
  {

    v1 = v8[0];
    sub_238AEA2C0(&v9, v10);
    v4 = sub_238B1BAB4();
    if (v4 != 31)
    {
      v1 = v4;
      sub_238AFD5B4(v10, v8);
      if (swift_dynamicCast() & 1) != 0 || (sub_238AFD5B4(v10, v8), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF524C0, &qword_238B21D98), (swift_dynamicCast()))
      {
        __swift_destroy_boxed_opaque_existential_1(a1);
        __swift_destroy_boxed_opaque_existential_1(v10);
        return v1;
      }
    }

    sub_238AFA0E8();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(a1);
    v6 = v10;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v6);
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_238B07554(uint64_t *a1)
{
  sub_238AFD5B4(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51978, &qword_238B1E020);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51980, &qword_238B1CF40);
  if (!swift_dynamicCast())
  {
    goto LABEL_7;
  }

  v1 = v10[0];
  if (*(v10[0] + 16) != 1)
  {

LABEL_7:
    sub_238AFA0E8();
    swift_allocError();
    *v7 = 1;
    swift_willThrow();
    v6 = a1;
    goto LABEL_8;
  }

  result = sub_238AEC5B4(v10[0], v8);
  if (v8[1])
  {

    v1 = v8[0];
    sub_238AEA2C0(&v9, v10);
    v4 = sub_238B1BAB4();
    if (v4 != 31)
    {
      v1 = v4;
      sub_238AFD5B4(v10, v8);
      if (swift_dynamicCast() & 1) != 0 || (sub_238AFD5B4(v10, v8), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF524D0, &qword_238B21DA8), (swift_dynamicCast()))
      {
        __swift_destroy_boxed_opaque_existential_1(a1);
        __swift_destroy_boxed_opaque_existential_1(v10);
        return v1;
      }
    }

    sub_238AFA0E8();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(a1);
    v6 = v10;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v6);
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_238B0776C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  sub_238AFD5B4(a1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51978, &qword_238B1E020);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51980, &qword_238B1CF40);
  if (!swift_dynamicCast())
  {
    goto LABEL_7;
  }

  if (*(v20[0] + 16) != 1)
  {

LABEL_7:
    sub_238AFA0E8();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
    v11 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  result = sub_238AEC5B4(v20[0], v18);
  if (v18[1])
  {

    sub_238AEA2C0(&v19, v20);
    v9 = sub_238B1BAB4();
    if (v9 == 31)
    {
LABEL_5:
      sub_238AFA0E8();
      swift_allocError();
      *v10 = 1;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(a1);
      v11 = v20;
      return __swift_destroy_boxed_opaque_existential_1(v11);
    }

    v13 = v9;
    sub_238AFD5B4(v20, v18);
    v14 = swift_dynamicCast();
    if (v14)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
      result = __swift_destroy_boxed_opaque_existential_1(v20);
      v15 = 0;
      v16 = v17;
    }

    else
    {
      sub_238AFD5B4(v20, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_5;
      }

      __swift_destroy_boxed_opaque_existential_1(a1);
      result = __swift_destroy_boxed_opaque_existential_1(v20);
      v16 = 0;
      v15 = v17;
    }

    *a4 = v13;
    *(a4 + 8) = v16;
    *(a4 + 16) = v14 ^ 1;
    *(a4 + 24) = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_238B079A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_238B1C2E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E695365756C6176 && a2 == 0xEB00000000656C67 || (sub_238B1C2E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72724165756C6176 && a2 == 0xEA00000000007961)
  {

    return 2;
  }

  else
  {
    v6 = sub_238B1C2E4();

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

uint64_t sub_238B07B04(unsigned __int8 a1)
{
  sub_238B1C354();
  MEMORY[0x23EE71B00](a1);
  return sub_238B1C384();
}

uint64_t sub_238B07B4C(char a1)
{
  if (!a1)
  {
    return 7955819;
  }

  if (a1 == 1)
  {
    return 0x6E695365756C6176;
  }

  return 0x72724165756C6176;
}

BOOL sub_238B07BA8(char *a1, char *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return sub_238B07ACC(*a1, *a2);
}

uint64_t sub_238B07BC0(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_238B07B04(*v1);
}

uint64_t sub_238B07BD0(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  return sub_238B07ADC(a1, *v2);
}

uint64_t sub_238B07BE0(uint64_t a1, void *a2)
{
  sub_238B1C354();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  sub_238B07ADC(v8, *v2);
  return sub_238B1C384();
}

uint64_t sub_238B07C2C(void *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v19 = *(a2 + 16);
  v20 = v5;
  type metadata accessor for ContainerConstraint.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_238B1C204();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v19 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = v21;
  sub_238B1C3A4();
  LOBYTE(v24) = *v13;
  v25 = 0;
  sub_238AF7B90();
  v14 = v22;
  sub_238B1C1E4();
  if (v14)
  {
    return (*(v7 + 8))(v11, v6);
  }

  v16 = v7;
  v17 = *(a2 + 44);
  LOBYTE(v24) = 1;
  v18 = v20;
  sub_238B1C1B4();
  v24 = *&v13[*(a2 + 48)];
  v25 = 2;
  sub_238B1C034();
  v23 = v18;
  swift_getWitnessTable();
  sub_238B1C1B4();
  return (*(v16 + 8))(v11, v6);
}

uint64_t sub_238B07E84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  v7 = sub_238B1C044();
  v37 = *(v7 - 8);
  v38 = v7;
  v8 = *(v37 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v40 = &v32 - v10;
  type metadata accessor for ContainerConstraint.CodingKeys();
  swift_getWitnessTable();
  v43 = sub_238B1C194();
  v39 = *(v43 - 8);
  v11 = *(v39 + 64);
  MEMORY[0x28223BE20](v43, v12);
  v14 = &v32 - v13;
  v41 = a2;
  v42 = a3;
  v15 = type metadata accessor for ContainerConstraint();
  v35 = *(v15 - 8);
  v16 = *(v35 + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v32 - v18;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v44 = v14;
  v21 = v45;
  sub_238B1C394();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v40;
  v23 = v19;
  v45 = v15;
  v24 = v42;
  v25 = v39;
  v48 = 0;
  sub_238AFA094();
  sub_238B1C174();
  v34 = v23;
  *v23 = v47;
  LOBYTE(v47) = 1;
  sub_238B1C144();
  v26 = v22;
  v27 = *(v37 + 32);
  v28 = v34;
  v33 = *(v45 + 44);
  v27(&v34[v33], v26, v38);
  sub_238B1C034();
  v48 = 2;
  v46 = v24;
  swift_getWitnessTable();
  sub_238B1C144();
  v29 = v45;
  (*(v25 + 8))(v44, v43);
  *&v28[*(v29 + 48)] = v47;
  v30 = v35;
  (*(v35 + 16))(v36, v28, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v30 + 8))(v28, v29);
}

uint64_t sub_238B082BC(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_238B07B4C(*v1);
}

uint64_t sub_238B082CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_238B079A8(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_238B08300@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = sub_238B1A034();
  *a2 = result;
  return result;
}

uint64_t sub_238B08334(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_238B08388(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_238B08430@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF52408, &qword_238B21CD8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_238B1C830;
    *(inited + 32) = sub_238B1A5FC(v5);
    *(inited + 40) = v15;
    *(inited + 48) = a2;
    v10 = sub_238AF8FA0(inited);
    swift_setDeallocating();
    sub_238AFD7D8(inited + 32, &qword_27DF52410, &qword_238B21CE0);
    v11 = &qword_27DF52418;
    v12 = &qword_238B21CE8;
    goto LABEL_5;
  }

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF52420, &qword_238B21CF0);
    v8 = swift_initStackObject();
    *(v8 + 16) = xmmword_238B1C830;
    *(v8 + 32) = sub_238B1A5FC(v5);
    *(v8 + 40) = v9;
    *(v8 + 48) = a4;

    v10 = sub_238AF909C(v8);
    swift_setDeallocating();
    sub_238AFD7D8(v8 + 32, &qword_27DF52428, &qword_238B21CF8);
    v11 = &unk_27DF52430;
    v12 = &unk_238B21D00;
LABEL_5:
    result = __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
    a5[3] = result;
    a5[4] = &off_284B699F8;
    *a5 = v10;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_238B085A0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v5 = result;
  if (a3 >> 60 != 15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF52480, &qword_238B21D50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_238B1C830;
    *(inited + 32) = sub_238B1A5FC(v5);
    *(inited + 40) = v16;
    *(inited + 48) = a2;
    *(inited + 56) = a3;
    sub_238B1A088(a2, a3);
    v10 = sub_238AF90B0(inited);
    swift_setDeallocating();
    sub_238AFD7D8(inited + 32, &qword_27DF52488, &qword_238B21D58);
    v11 = &unk_27DF52490;
    v12 = &unk_238B21D60;
    goto LABEL_5;
  }

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF52498, &qword_238B21D68);
    v8 = swift_initStackObject();
    *(v8 + 16) = xmmword_238B1C830;
    *(v8 + 32) = sub_238B1A5FC(v5);
    *(v8 + 40) = v9;
    *(v8 + 48) = a4;

    v10 = sub_238AF91C8(v8);
    swift_setDeallocating();
    sub_238AFD7D8(v8 + 32, &qword_27DF524A0, &qword_238B21D70);
    v11 = &unk_27DF524A8;
    v12 = &unk_238B21D78;
LABEL_5:
    result = __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
    a5[3] = result;
    a5[4] = &off_284B699F8;
    *a5 = v10;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_238B08734@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v5 = result;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF52450, &qword_238B21D20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_238B1C830;
    *(inited + 32) = sub_238B1A5FC(v5);
    *(inited + 40) = v10;
    *(inited + 48) = a2;
    *(inited + 56) = a3;

    v11 = sub_238AF92D8(inited);
    swift_setDeallocating();
    sub_238AFD7D8(inited + 32, &qword_27DF52458, &qword_238B21D28);
    v12 = &unk_27DF52460;
    v13 = &unk_238B21D30;
LABEL_5:
    result = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
    a5[3] = result;
    a5[4] = &off_284B699F8;
    *a5 = v11;
    return result;
  }

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF52468, &qword_238B21D38);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_238B1C830;
    *(v15 + 32) = sub_238B1A5FC(v5);
    *(v15 + 40) = v16;
    *(v15 + 48) = a4;

    v11 = sub_238AF93EC(v15);
    swift_setDeallocating();
    sub_238AFD7D8(v15 + 32, &qword_27DF52470, &qword_238B21D40);
    v12 = &unk_27DF52478;
    v13 = &unk_238B21D48;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_238B088BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v42 = a2;
  v4 = *(a1 + 16);
  v5 = sub_238B1C044();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v41 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v37 - v12;
  v14 = *(a1 + 44);
  v15 = *(v6 + 16);
  v43 = v2;
  v39 = v14;
  v40 = v15;
  v15(&v37 - v12, &v2[v14], v5);
  v16 = *(v4 - 8);
  v38 = *(v16 + 48);
  v17 = v38(v13, 1, v4);
  result = (*(v6 + 8))(v13, v5);
  if (v17 == 1)
  {
    v19 = v43;
    v20 = *&v43[*(a1 + 48)];
    if (v20)
    {
      v4 = sub_238B1C034();
      v21 = MEMORY[0x277D837D0];
      swift_getTupleTypeMetadata2();
      sub_238B1C224();
      swift_initStackObject();
      v22 = sub_238B1BFD4();
      v24 = v23;
      *v23 = sub_238B1A5FC(*v19);
      v24[1] = v25;
      v24[2] = v20;
      sub_238B1C034();

LABEL_6:
      v35 = sub_238B19BA8(v22, v21, v4, MEMORY[0x277D837E0]);

      result = sub_238B1BF34();
      v36 = v42;
      v42[3] = result;
      v36[4] = &off_284B699F8;
      *v36 = v35;
      return result;
    }

    __break(1u);
  }

  else
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_238B1C224();
    v27 = *(*(TupleTypeMetadata2 - 8) + 72);
    v28 = *(*(TupleTypeMetadata2 - 8) + 80);
    swift_allocObject();
    v22 = sub_238B1BFD4();
    v30 = v29;
    v31 = v43;
    *v29 = sub_238B1A5FC(*v43);
    v30[1] = v32;
    v33 = &v31[v39];
    v34 = v41;
    v40(v41, v33, v5);
    result = v38(v34, 1, v4);
    if (result != 1)
    {
      (*(v16 + 32))(v30 + *(TupleTypeMetadata2 + 48), v34, v4);
      sub_238B1C034();
      v21 = MEMORY[0x277D837D0];
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_238B08C50@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF52408, &qword_238B21CD8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_238B1C830;
    *(inited + 32) = sub_238B1A5FC(v5);
    *(inited + 40) = v19;
    *(inited + 48) = a2;
    v20 = sub_238AF8FA0(inited);
    swift_setDeallocating();
    sub_238AFD7D8(inited + 32, &qword_27DF52410, &qword_238B21CE0);
    v21 = &unk_27DF52418;
    v22 = &unk_238B21CE8;
LABEL_11:
    result = __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
    a5[3] = result;
    a5[4] = &off_284B699F8;
    *a5 = v20;
    return result;
  }

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF52420, &qword_238B21CF0);
    v8 = swift_initStackObject();
    *(v8 + 16) = xmmword_238B1C830;
    *(v8 + 32) = sub_238B1A5FC(v5);
    v9 = v8 + 32;
    *(v8 + 40) = v10;
    v11 = *(a4 + 16);
    v12 = MEMORY[0x277D84F90];
    if (v11)
    {
      v23 = MEMORY[0x277D84F90];

      sub_238AF7CD4(0, v11, 0);
      v12 = v23;
      v13 = *(v23 + 16);
      v14 = 32;
      do
      {
        v15 = *(a4 + v14);
        v16 = *(v23 + 24);
        if (v13 >= v16 >> 1)
        {
          sub_238AF7CD4((v16 > 1), v13 + 1, 1);
        }

        *(v23 + 16) = v13 + 1;
        *(v23 + 8 * v13 + 32) = v15;
        v14 += 8;
        ++v13;
        --v11;
      }

      while (v11);

      v9 = v8 + 32;
    }

    *(v8 + 48) = v12;
    v20 = sub_238AF909C(v8);
    swift_setDeallocating();
    sub_238AFD7D8(v9, &qword_27DF52428, &qword_238B21CF8);
    v21 = &unk_27DF52430;
    v22 = &unk_238B21D00;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_238B08E70@<X0>(unint64_t *a1@<X8>)
{
  sub_238AFD5B4((v1 + 8), v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51E40, &qword_238B1E1C8);
  if (swift_dynamicCast())
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF52450, &qword_238B21D20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_238B1C830;
    *(inited + 32) = sub_238B1A5FC(*v1);
    *(inited + 40) = v5;
    sub_238AFD5B4((v1 + 8), v16);
    swift_dynamicCast();
    v6 = sub_238AF92D8(inited);
    swift_setDeallocating();
    sub_238AFD7D8(inited + 32, &qword_27DF52458, &qword_238B21D28);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF52460, &qword_238B21D30);
    a1[3] = result;
    a1[4] = &off_284B699F8;
    *a1 = v6;
  }

  else
  {
    sub_238AFD5B4((v1 + 8), v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51E28, &qword_238B1E1B8);
    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51990, &qword_238B1CF50);
    v8 = swift_initStackObject();
    *(v8 + 16) = xmmword_238B1C830;
    *(v8 + 32) = sub_238B1A5FC(*v1);
    *(v8 + 40) = v9;
    sub_238B08734(v12, v13, v14, v15, (v8 + 48));

    if (v2)
    {
      v10 = *(v8 + 40);

      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51998, &qword_238B1CF58);
      return swift_arrayDestroy();
    }

    else
    {
      v11 = sub_238AF8E84(v8);
      swift_setDeallocating();
      sub_238AFD7D8(v8 + 32, &qword_27DF51998, &qword_238B1CF58);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51980, &qword_238B1CF40);
      a1[3] = result;
      a1[4] = &off_284B699F8;
      *a1 = v11;
    }
  }

  return result;
}

uint64_t sub_238B09108@<X0>(unint64_t *a1@<X8>)
{
  sub_238AFD5B4((v1 + 8), v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51C80, &qword_238B1E0B8);
  if (swift_dynamicCast())
  {
    sub_238AFFCFC(v12, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF52480, &qword_238B21D50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_238B1C830;
    *(inited + 32) = sub_238B1A5FC(*v1);
    *(inited + 40) = v5;
    sub_238AFD5B4((v1 + 8), v16);
    swift_dynamicCast();
    v6 = sub_238AF90B0(inited);
    swift_setDeallocating();
    sub_238AFD7D8(inited + 32, &qword_27DF52488, &qword_238B21D58);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF52490, &qword_238B21D60);
    a1[3] = result;
    a1[4] = &off_284B699F8;
    *a1 = v6;
  }

  else
  {
    sub_238AFD5B4((v1 + 8), v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51C60, &qword_238B1E0A8);
    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51990, &qword_238B1CF50);
    v8 = swift_initStackObject();
    *(v8 + 16) = xmmword_238B1C830;
    *(v8 + 32) = sub_238B1A5FC(*v1);
    *(v8 + 40) = v9;
    sub_238B085A0(v12, v13, v14, v15, (v8 + 48));
    if (v2)
    {
      v10 = *(v8 + 40);

      sub_238B14AE4(v13, v14);

      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51998, &qword_238B1CF58);
      return swift_arrayDestroy();
    }

    else
    {
      v11 = sub_238AF8E84(v8);
      swift_setDeallocating();
      sub_238AFD7D8(v8 + 32, &qword_27DF51998, &qword_238B1CF58);
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51980, &qword_238B1CF40);
      a1[4] = &off_284B699F8;
      sub_238B14AE4(v13, v14);

      *a1 = v11;
    }
  }

  return result;
}

uint64_t sub_238B093B8@<X0>(unint64_t *a1@<X8>)
{
  sub_238AFD5B4((v1 + 8), v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51DD8, &qword_238B1E188);
  if (swift_dynamicCast())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF52408, &qword_238B21CD8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_238B1C830;
    *(inited + 32) = sub_238B1A5FC(*v1);
    *(inited + 40) = v5;
    sub_238AFD5B4((v1 + 8), v16);
    swift_dynamicCast();
    v6 = sub_238AF8FA0(inited);
    swift_setDeallocating();
    sub_238AFD7D8(inited + 32, &qword_27DF52410, &qword_238B21CE0);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF52418, &qword_238B21CE8);
    a1[3] = result;
    a1[4] = &off_284B699F8;
    *a1 = v6;
  }

  else
  {
    sub_238AFD5B4((v1 + 8), v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51CC0, &qword_238B1E0D0);
    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51990, &qword_238B1CF50);
    v8 = swift_initStackObject();
    *(v8 + 16) = xmmword_238B1C830;
    *(v8 + 32) = sub_238B1A5FC(*v1);
    *(v8 + 40) = v9;
    sub_238B08430(v12, v13, v14, v15, (v8 + 48));

    if (v2)
    {
      v10 = *(v8 + 40);

      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51998, &qword_238B1CF58);
      return swift_arrayDestroy();
    }

    else
    {
      v11 = sub_238AF8E84(v8);
      swift_setDeallocating();
      sub_238AFD7D8(v8 + 32, &qword_27DF51998, &qword_238B1CF58);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51980, &qword_238B1CF40);
      a1[3] = result;
      a1[4] = &off_284B699F8;
      *a1 = v11;
    }
  }

  return result;
}

uint64_t sub_238B09644@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  sub_238AFD5B4((v3 + 8), v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51DD8, &qword_238B1E188);
  if (swift_dynamicCast())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF52408, &qword_238B21CD8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_238B1C830;
    *(inited + 32) = sub_238B1A5FC(*v3);
    *(inited + 40) = v9;
    sub_238AFD5B4((v3 + 8), v20);
    swift_dynamicCast();
    v10 = sub_238AF8FA0(inited);
    swift_setDeallocating();
    sub_238AFD7D8(inited + 32, &qword_27DF52410, &qword_238B21CE0);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF52418, &qword_238B21CE8);
    a3[3] = result;
    a3[4] = &off_284B699F8;
    *a3 = v10;
  }

  else
  {
    sub_238AFD5B4((v3 + 8), v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51990, &qword_238B1CF50);
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_238B1C830;
    *(v12 + 32) = sub_238B1A5FC(*v3);
    *(v12 + 40) = v13;
    sub_238B08C50(v16, v17, v18, v19, (v12 + 48));
    if (v4)
    {
      v14 = *(v12 + 40);

      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51998, &qword_238B1CF58);
      swift_arrayDestroy();
    }

    else
    {
      v15 = sub_238AF8E84(v12);
      swift_setDeallocating();
      sub_238AFD7D8(v12 + 32, &qword_27DF51998, &qword_238B1CF58);
      a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51980, &qword_238B1CF40);
      a3[4] = &off_284B699F8;
      *a3 = v15;
    }
  }

  return result;
}

void AppleInternal.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 32) = MEMORY[0x277D839B0];
  *(a1 + 40) = &off_284B66ED8;
  *(a1 + 8) = 1;
}

uint64_t AppleInternal.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = MEMORY[0x277D839B0];
  *a2 = 0;
  *(a2 + 32) = v2;
  *(a2 + 40) = &off_284B66ED8;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_238B09914(uint64_t a1)
{
  v2 = sub_238B149A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B09950(uint64_t a1)
{
  v2 = sub_238B149A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppleInternal.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51C38, &qword_238B1E090);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v14[-v9 - 8];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B149A0();
  sub_238B1C3A4();
  sub_238B1A5FC(*v3);
  v14[0] = 0;
  sub_238B1C1C4();
  if (v2)
  {
    (*(v6 + 8))(v10, v5);
  }

  else
  {

    sub_238AFD5B4((v3 + 8), v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51C48, &qword_238B1E098);
    swift_dynamicCast();
    v14[0] = 1;
    sub_238B1C1D4();
    return (*(v6 + 8))(v10, v5);
  }
}

uint64_t AppleInternal.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51C50, &qword_238B1E0A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B149A0();
  sub_238B1C394();
  if (!v2)
  {
    v23 = 0;
    sub_238AFA094();
    sub_238B1C174();
    LOBYTE(v22[0]) = v19;
    if (sub_238B1A5FC(v19) == 0x6E692D656C707061 && v12 == 0xEE006C616E726574)
    {

      goto LABEL_7;
    }

    v13 = sub_238B1C2E4();

    if (v13)
    {
LABEL_7:
      v23 = 1;
      v14 = sub_238B1C164();
      v20 = MEMORY[0x277D839B0];
      v21 = &off_284B66ED8;
      LOBYTE(v19) = v14 & 1;
      (*(v6 + 8))(v10, v5);
      sub_238AEA2C0(&v19, v22 + 8);
      v15 = v22[1];
      *a2 = v22[0];
      a2[1] = v15;
      a2[2] = v22[2];
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    sub_238AFA0E8();
    swift_allocError();
    *v16 = 1;
    swift_willThrow();
    (*(v6 + 8))(v10, v5);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_238B09E28@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = a2;
  *(a3 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51C60, &qword_238B1E0A8);
  *(a3 + 40) = sub_238B154CC(&qword_27DF51C68, &qword_27DF51C60, &qword_238B1E0A8);
  v5 = swift_allocObject();
  *(a3 + 8) = v5;
  *(v5 + 16) = 22;
  *(v5 + 24) = xmmword_238B1E050;
  *(v5 + 40) = a1;
}

uint64_t sub_238B09F00(uint64_t a1)
{
  v2 = sub_238B14A90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B09F3C(uint64_t a1)
{
  v2 = sub_238B14A90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CodeDirectoryHash.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51C98, &qword_238B1E0C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v20 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B14A90();
  sub_238B1C394();
  if (!v2)
  {
    v26 = 0;
    sub_238AFA094();
    sub_238B1C174();
    LOBYTE(v23) = v21;
    if (sub_238B1A5FC(v21) == 0x687361686463 && v13 == 0xE600000000000000)
    {
    }

    else
    {
      v14 = sub_238B1C2E4();

      if ((v14 & 1) == 0)
      {
        sub_238AFA0E8();
        swift_allocError();
        *v18 = 1;
        swift_willThrow();
        (*(v6 + 8))(v10, v5);
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }
    }

    v26 = 1;
    sub_238B14B4C();
    v15 = MEMORY[0x277CC9318];
    sub_238B1C174();
    v16 = v21;
    v17 = v22;
    *&v25 = v15;
    *(&v25 + 1) = sub_238B149F4();
    *(&v23 + 1) = v16;
    *&v24 = v17;
    (*(v6 + 8))(v10, v5);
    v19 = v24;
    *a2 = v23;
    a2[1] = v19;
    a2[2] = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_238B0A4F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_238B0A550(uint64_t a1)
{
  v2 = sub_238B14BF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B0A58C(uint64_t a1)
{
  v2 = sub_238B14BF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238B0A7A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_238AFD5B4(a1, v16);
  v5 = sub_238B07334(v16);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v8;
  v17 = v7;
  v11 = v6;
  v12 = v5;
  if (sub_238B1A5FC(v5) == 0x68632D67616C6624 && v13 == 0xEB000000006B6365)
  {
  }

  else
  {
    v14 = sub_238B1C2E4();

    if ((v14 & 1) == 0)
    {

      sub_238AFA0E8();
      swift_allocError();
      *v15 = 1;
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }
  }

  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = 2;
  *(a2 + 8) = v12;
  *(a2 + 16) = v11;
  *(a2 + 24) = v17 & 1;
  *(a2 + 32) = v10;
  return result;
}

uint64_t sub_238B0A8F4()
{
  v1 = *v0;
  sub_238B1C354();
  MEMORY[0x23EE71B00](v1);
  return sub_238B1C384();
}

uint64_t sub_238B0A93C()
{
  v1 = *v0;
  sub_238B1C354();
  MEMORY[0x23EE71B00](v1);
  return sub_238B1C384();
}

uint64_t sub_238B0A980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v5 || (sub_238B1C2E4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_238B1C2E4();

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

uint64_t sub_238B0AA58(uint64_t a1)
{
  v2 = sub_238B14C44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B0AA94(uint64_t a1)
{
  v2 = sub_238B14C44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238B0AB14(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v16 - v10;
  v12 = *v4;
  v26 = v4[8];
  v19 = *(v4 + 2);
  v18 = v4[24];
  v17 = *(v4 + 4);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_238B1C3A4();
  v22 = v12;
  v27 = 0;
  sub_238AF7B90();
  v14 = v20;
  sub_238B1C1E4();
  if (!v14)
  {
    v22 = v26;
    v23 = v19;
    v24 = v18;
    v25 = v17;
    v27 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51CC0, &qword_238B1E0D0);
    sub_238B154CC(&qword_27DF51CC8, &qword_27DF51CC0, &qword_238B1E0D0);
    sub_238B1C1E4();
  }

  return (*(v21 + 8))(v11, v7);
}

uint64_t sub_238B0AD6C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v22 = a5;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v23 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v23, v10);
  v12 = &v22 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_238B1C394();
  if (!v5)
  {
    v14 = v8;
    v15 = v22;
    v29 = 0;
    sub_238AFA094();
    v16 = v23;
    sub_238B1C174();
    v28 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51CC0, &qword_238B1E0D0);
    v29 = 1;
    sub_238B154CC(&qword_27DF51CD8, &qword_27DF51CC0, &qword_238B1E0D0);
    sub_238B1C174();
    (*(v14 + 8))(v12, v16);
    v17 = v24;
    v18 = v25;
    v19 = v26;
    v20 = v27;
    *v15 = v28;
    *(v15 + 8) = v17;
    *(v15 + 16) = v18;
    *(v15 + 24) = v19;
    *(v15 + 32) = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_238B0AFE0@<X0>(unint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *v1;
  v8 = *(v1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51990, &qword_238B1CF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238B1C830;
  *(inited + 32) = sub_238B1A5FC(v7);
  *(inited + 40) = v10;
  sub_238B08430(v8, v4, v5, v6, (inited + 48));
  if (v2)
  {
    v11 = *(inited + 40);

    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51998, &qword_238B1CF58);
    return swift_arrayDestroy();
  }

  else
  {
    v13 = sub_238AF8E84(inited);
    swift_setDeallocating();
    sub_238AFD7D8(inited + 32, &qword_27DF51998, &qword_238B1CF58);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51980, &qword_238B1CF40);
    a1[3] = result;
    a1[4] = &off_284B699F8;
    *a1 = v13;
  }

  return result;
}

void DeveloperMode.init()(uint64_t a1@<X8>)
{
  *a1 = 3;
  *(a1 + 32) = MEMORY[0x277D839B0];
  *(a1 + 40) = &off_284B66ED8;
  *(a1 + 8) = 1;
}

uint64_t DeveloperMode.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = MEMORY[0x277D839B0];
  *a2 = 3;
  *(a2 + 32) = v2;
  *(a2 + 40) = &off_284B66ED8;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_238B0B18C(uint64_t a1)
{
  v2 = sub_238B14C98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B0B1C8(uint64_t a1)
{
  v2 = sub_238B14C98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DeveloperMode.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51D08, &qword_238B1E0F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B14C98();
  sub_238B1C394();
  if (!v2)
  {
    v23 = 0;
    sub_238AFA094();
    sub_238B1C174();
    LOBYTE(v22[0]) = v19;
    if (sub_238B1A5FC(v19) == 0x65706F6C65766564 && v12 == 0xEE0065646F6D2D72)
    {

      goto LABEL_7;
    }

    v13 = sub_238B1C2E4();

    if (v13)
    {
LABEL_7:
      v23 = 1;
      v14 = sub_238B1C164();
      v20 = MEMORY[0x277D839B0];
      v21 = &off_284B66ED8;
      LOBYTE(v19) = v14 & 1;
      (*(v6 + 8))(v10, v5);
      sub_238AEA2C0(&v19, v22 + 8);
      v15 = v22[1];
      *a2 = v22[0];
      a2[1] = v15;
      a2[2] = v22[2];
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    sub_238AFA0E8();
    swift_allocError();
    *v16 = 1;
    swift_willThrow();
    (*(v6 + 8))(v10, v5);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_238B0B4D0@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF52438, &qword_238B21D08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238B1C830;
  *(inited + 32) = sub_238B1A5FC(*v2);
  *(inited + 40) = v5;
  sub_238AFD5B4((v2 + 8), &v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51C48, &qword_238B1E098);
  swift_dynamicCast();
  v6 = sub_238AF91DC(inited);
  swift_setDeallocating();
  sub_238AFD7D8(inited + 32, &qword_27DF52440, &qword_238B21D10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF52448, &qword_238B21D18);
  a1[3] = result;
  a1[4] = &off_284B699F8;
  *a1 = v6;
  return result;
}

LightweightCodeRequirements::EntitlementsQuery::DataType_optional __swiftcall EntitlementsQuery.DataType.init(rawValue:)(Swift::Int64 rawValue)
{
  v2 = 0x40302010005uLL >> (8 * rawValue);
  if (rawValue >= 6)
  {
    LOBYTE(v2) = 5;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_238B0B658()
{
  v1 = *v0;
  sub_238B1C354();
  MEMORY[0x23EE71B10](v1 + 1);
  return sub_238B1C384();
}

uint64_t sub_238B0B6D0()
{
  v1 = *v0;
  sub_238B1C354();
  MEMORY[0x23EE71B10](v1 + 1);
  return sub_238B1C384();
}

uint64_t sub_238B0B74C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51D10, &qword_238B1E100);
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D84A28];
  *(v7 + 16) = xmmword_238B1C840;
  *(v7 + 56) = v8;
  *(v7 + 64) = &off_284B69A40;
  *(v7 + 32) = a3;
  *(v7 + 96) = MEMORY[0x277D837D0];
  *(v7 + 104) = &off_284B69A58;
  *(v7 + 72) = a1;
  *(v7 + 80) = a2;
  swift_beginAccess();
  v9 = *(v3 + 24);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 24) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_238B14D10(0, v9[2] + 1, 1, v9, &qword_27DF51D18, &qword_238B1E108, &qword_27DF524B0, &unk_238B21D80);
    *(v3 + 24) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_238B14D10((v11 > 1), v12 + 1, 1, v9, &qword_27DF51D18, &qword_238B1E108, &qword_27DF524B0, &unk_238B21D80);
  }

  v9[2] = v12 + 1;
  v9[v12 + 4] = v7;
  *(v3 + 24) = v9;
  swift_endAccess();
}

uint64_t sub_238B0B8D8(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51D10, &qword_238B1E100);
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D84A28];
  *(v3 + 16) = xmmword_238B1C840;
  *(v3 + 56) = v4;
  *(v3 + 64) = &off_284B69A40;
  v5 = MEMORY[0x277D839B0];
  *(v3 + 32) = 5;
  *(v3 + 96) = v5;
  *(v3 + 104) = &off_284B69A70;
  *(v3 + 72) = a1;
  swift_beginAccess();
  v6 = *(v1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 24) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_238B14D10(0, v6[2] + 1, 1, v6, &qword_27DF51D18, &qword_238B1E108, &qword_27DF524B0, &unk_238B21D80);
    *(v1 + 24) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_238B14D10((v8 > 1), v9 + 1, 1, v6, &qword_27DF51D18, &qword_238B1E108, &qword_27DF524B0, &unk_238B21D80);
  }

  v6[2] = v9 + 1;
  v6[v9 + 4] = v3;
  *(v1 + 24) = v6;
  swift_endAccess();
}

uint64_t sub_238B0BA60(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51D10, &qword_238B1E100);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_238B1C840;
  v6 = MEMORY[0x277D84A28];
  *(v5 + 56) = MEMORY[0x277D84A28];
  *(v5 + 64) = &off_284B69A40;
  *(v5 + 32) = a2;
  *(v5 + 96) = v6;
  *(v5 + 104) = &off_284B69A40;
  *(v5 + 72) = a1;
  swift_beginAccess();
  v7 = *(v2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 24) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_238B14D10(0, v7[2] + 1, 1, v7, &qword_27DF51D18, &qword_238B1E108, &qword_27DF524B0, &unk_238B21D80);
    *(v2 + 24) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_238B14D10((v9 > 1), v10 + 1, 1, v7, &qword_27DF51D18, &qword_238B1E108, &qword_27DF524B0, &unk_238B21D80);
  }

  v7[2] = v10 + 1;
  v7[v10 + 4] = v5;
  *(v2 + 24) = v7;
  swift_endAccess();
}

uint64_t sub_238B0BBD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51D10, &qword_238B1E100);
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D84A28];
  *(v6 + 16) = xmmword_238B1C840;
  *(v6 + 56) = v7;
  *(v6 + 64) = &off_284B69A40;
  *(v6 + 32) = a3;
  *(v6 + 96) = MEMORY[0x277D837D0];
  *(v6 + 104) = &off_284B69A58;
  *(v6 + 72) = a1;
  *(v6 + 80) = a2;
  type metadata accessor for EntitlementsQuery();
  v8 = swift_allocObject();
  *(v8 + 16) = 7684;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51D18, &qword_238B1E108);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_238B1C830;
  *(v9 + 32) = v6;
  *(v8 + 24) = v9;

  return v8;
}

uint64_t sub_238B0BCD4(unsigned __int8 *a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51D10, &qword_238B1E100);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_238B1C840;
  v4 = MEMORY[0x277D84A28];
  *(v3 + 56) = MEMORY[0x277D84A28];
  *(v3 + 64) = &off_284B69A40;
  *(v3 + 32) = 11;
  *(v3 + 96) = v4;
  *(v3 + 104) = &off_284B69A40;
  *(v3 + 72) = v2 + 1;
  swift_beginAccess();
  v5 = *(v1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 24) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_238B14D10(0, v5[2] + 1, 1, v5, &qword_27DF51D18, &qword_238B1E108, &qword_27DF524B0, &unk_238B21D80);
    *(v1 + 24) = v5;
  }

  v8 = v5[2];
  v7 = v5[3];
  if (v8 >= v7 >> 1)
  {
    v5 = sub_238B14D10((v7 > 1), v8 + 1, 1, v5, &qword_27DF51D18, &qword_238B1E108, &qword_27DF524B0, &unk_238B21D80);
  }

  v5[2] = v8 + 1;
  v5[v8 + 4] = v3;
  *(v1 + 24) = v5;
  swift_endAccess();
}

uint64_t sub_238B0BE40@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF519B0, &unk_238B1CF70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238B1C830;
  *(inited + 32) = sub_238B1A5FC(*(v1 + 16));
  *(inited + 40) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF519B8, &unk_238B21CC0);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_238B1C830;
  *(v5 + 32) = sub_238B1A5FC(*(v1 + 17));
  *(v5 + 40) = v6;
  swift_beginAccess();
  *(v5 + 48) = *(v1 + 24);

  v7 = sub_238AF9400(v5);
  swift_setDeallocating();
  sub_238AFD7D8(v5 + 32, &qword_27DF519C0, &unk_238B1CF80);
  *(inited + 48) = v7;
  v8 = sub_238AF9414(inited);
  swift_setDeallocating();
  sub_238AFD7D8(inited + 32, &qword_27DF519C8, &qword_238B21CD0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF519D0, &qword_238B1CF90);
  a1[3] = result;
  a1[4] = &off_284B699F8;
  *a1 = v8;
  return result;
}

uint64_t sub_238B0BFA8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x726F74617265706FLL;
  v4 = 0xEB0000000079654BLL;
  if (v2 != 1)
  {
    v3 = 0x65756C6176;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 7955819;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0x726F74617265706FLL;
  v8 = 0xEB0000000079654BLL;
  if (*a2 != 1)
  {
    v7 = 0x65756C6176;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 7955819;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_238B1C2E4();
  }

  return v11 & 1;
}

uint64_t sub_238B0C0AC()
{
  v1 = *v0;
  sub_238B1C354();
  sub_238B1BF64();

  return sub_238B1C384();
}

uint64_t sub_238B0C14C()
{
  *v0;
  *v0;
  sub_238B1BF64();
}

uint64_t sub_238B0C1D8()
{
  v1 = *v0;
  sub_238B1C354();
  sub_238B1BF64();

  return sub_238B1C384();
}

uint64_t sub_238B0C274@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_238B1A03C();
  *a2 = result;
  return result;
}

void sub_238B0C2A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xEB0000000079654BLL;
  v5 = 0x726F74617265706FLL;
  if (v2 != 1)
  {
    v5 = 0x65756C6176;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7955819;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_238B0C300()
{
  v1 = 0x726F74617265706FLL;
  if (*v0 != 1)
  {
    v1 = 0x65756C6176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_238B0C358@<X0>(_BYTE *a1@<X8>)
{
  result = sub_238B1A03C();
  *a1 = result;
  return result;
}

uint64_t sub_238B0C380(uint64_t a1)
{
  v2 = sub_238B14E44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B0C3BC(uint64_t a1)
{
  v2 = sub_238B14E44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238B0C3F8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51D20, &qword_238B1E110);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B14E44();
  sub_238B1C3A4();
  LOBYTE(v30[0]) = *(v3 + 16);
  LOBYTE(v28[0]) = 0;
  sub_238AF7B90();
  sub_238B1C1E4();
  if (v2)
  {
    return (*(v6 + 8))(v10, v5);
  }

  LOBYTE(v30[0]) = *(v3 + 17);
  LOBYTE(v28[0]) = 1;
  sub_238B1C1E4();
  LOBYTE(v28[0]) = 2;
  sub_238B1C1A4();
  swift_beginAccess();
  v13 = *(v3 + 24);
  v19 = *(v13 + 16);
  if (v19)
  {
    v24 = v13 + 32;

    v14 = 0;
    v23 = v5;
    v22 = v6;
    v21 = v10;
    v20 = result;
    while (v14 < *(result + 16))
    {
      v25 = v14;
      v15 = *(v24 + 8 * v14);
      __swift_mutable_project_boxed_opaque_existential_1(v30, v30[3]);

      result = sub_238B1C294();
      v31 = *(v15 + 16);
      if (v31)
      {
        v16 = 0;
        v17 = v15 + 32;
        while (1)
        {
          if (v16 >= *(v15 + 16))
          {
            __break(1u);
            goto LABEL_22;
          }

          sub_238AFD5B4(v17, v27);
          sub_238AFD5B4(v27, v26);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51D30, &qword_238B1E118);
          if (swift_dynamicCast())
          {
            break;
          }

          sub_238AFD5B4(v27, v26);
          if (!swift_dynamicCast())
          {
            sub_238AFD5B4(v27, v26);
            result = swift_dynamicCast();
            if (!result)
            {
              goto LABEL_23;
            }

            __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
            sub_238B1C2B4();
            goto LABEL_18;
          }

          __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
          sub_238B1C2A4();
          __swift_destroy_boxed_opaque_existential_1(v27);

LABEL_10:
          ++v16;
          v17 += 40;
          if (v31 == v16)
          {
            goto LABEL_6;
          }
        }

        __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
        sub_238B1C2D4();
LABEL_18:
        result = __swift_destroy_boxed_opaque_existential_1(v27);
        goto LABEL_10;
      }

LABEL_6:
      v14 = v25 + 1;

      __swift_destroy_boxed_opaque_existential_1(v28);
      v5 = v23;
      v6 = v22;
      v10 = v21;
      result = v20;
      if (v14 == v19)
      {

        goto LABEL_20;
      }
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_20:
    (*(v6 + 8))(v10, v5);
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  return result;
}

uint64_t EntitlementsQuery.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  EntitlementsQuery.init(from:)(a1);
  return v2;
}

uint64_t EntitlementsQuery.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51D38, &qword_238B1E120);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v28 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B14E44();
  sub_238B1C394();
  if (v2)
  {
    goto LABEL_14;
  }

  LOBYTE(v33[0]) = 0;
  sub_238AFA094();
  sub_238B1C174();
  v12 = v35[0];
  *(v1 + 16) = v35[0];
  if (sub_238B1A5FC(v12) == 0x6D656C7469746E65 && v13 == 0xEC00000073746E65)
  {
  }

  else
  {
    v14 = sub_238B1C2E4();

    if ((v14 & 1) == 0)
    {
LABEL_13:
      sub_238AFA0E8();
      swift_allocError();
      *v18 = 1;
      swift_willThrow();
      (*(v6 + 8))(v10, v5);
LABEL_14:
      type metadata accessor for EntitlementsQuery();
      swift_deallocPartialClassInstance();
      goto LABEL_15;
    }
  }

  LOBYTE(v33[0]) = 1;
  sub_238B1C174();
  v15 = v35[0];
  *(v3 + 17) = v35[0];
  if (sub_238B1A5FC(v15) != 0x797265757124 || v16 != 0xE600000000000000)
  {
    v17 = sub_238B1C2E4();

    if (v17)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

LABEL_10:
  LOBYTE(v33[0]) = 2;
  sub_238B1C134();
  __swift_project_boxed_opaque_existential_1(v35, v36);
  if (sub_238B1C284())
  {
    v37 = MEMORY[0x277D84F90];
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
    v29 = v6;
    do
    {
      __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
      sub_238B1C234();
      __swift_project_boxed_opaque_existential_1(v33, v34);
      v20 = sub_238B1C284();
      v21 = MEMORY[0x277D84F90];
      if ((v20 & 1) == 0)
      {
        do
        {
          __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
          v25 = sub_238B1C274();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_238B14E98(0, v21[2] + 1, 1, v21, &qword_27DF51D10, &qword_238B1E100, &qword_27DF51D30, &qword_238B1E118);
          }

          v27 = v21[2];
          v26 = v21[3];
          if (v27 >= v26 >> 1)
          {
            v21 = sub_238B14E98((v26 > 1), v27 + 1, 1, v21, &qword_27DF51D10, &qword_238B1E100, &qword_27DF51D30, &qword_238B1E118);
          }

          v32 = &off_284B69A40;
          v31 = MEMORY[0x277D84A28];
          *&v30 = v25;
          v21[2] = v27 + 1;
          sub_238AEA2C0(&v30, &v21[5 * v27 + 4]);
          __swift_project_boxed_opaque_existential_1(v33, v34);
        }

        while ((sub_238B1C284() & 1) == 0);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_238B14D10(0, v37[2] + 1, 1, v37, &qword_27DF51D18, &qword_238B1E108, &qword_27DF524B0, &unk_238B21D80);
      }

      v23 = v37[2];
      v22 = v37[3];
      v6 = v29;
      if (v23 >= v22 >> 1)
      {
        v37 = sub_238B14D10((v22 > 1), v23 + 1, 1, v37, &qword_27DF51D18, &qword_238B1E108, &qword_27DF524B0, &unk_238B21D80);
      }

      v24 = v37;
      v37[2] = v23 + 1;
      v24[v23 + 4] = v21;
      __swift_destroy_boxed_opaque_existential_1(v33);
      __swift_project_boxed_opaque_existential_1(v35, v36);
    }

    while ((sub_238B1C284() & 1) == 0);
  }

  (*(v6 + 8))(v10, v5);
  *(v3 + 24) = v37;
  __swift_destroy_boxed_opaque_existential_1(v35);
LABEL_15:
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t EntitlementsQuery.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t EntitlementsQuery.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_238B0D248@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for EntitlementsQuery();
  v5 = swift_allocObject();
  result = EntitlementsQuery.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_238B0D2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = a3;
  *(a4 + 32) = MEMORY[0x277CC9318];
  result = sub_238B149F4();
  *(a4 + 40) = result;
  *(a4 + 8) = a1;
  *(a4 + 16) = a2;
  return result;
}

uint64_t sub_238B0D338(uint64_t a1)
{
  v2 = sub_238B14FE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B0D374(uint64_t a1)
{
  v2 = sub_238B14FE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238B0D3F4(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v22 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  v15 = v8;
  sub_238B1C3A4();
  LOBYTE(v27) = *v6;
  LOBYTE(v23) = 0;
  sub_238AF7B90();
  v16 = v31;
  sub_238B1C1E4();
  if (v16)
  {
    return (*(v9 + 8))(v13, v8);
  }

  sub_238AFD5B4((v6 + 8), &v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51C80, &qword_238B1E0B8);
  if (swift_dynamicCast())
  {
    v18 = v23;
    v19 = v24;
    v27 = v23;
    v28 = v24;
    LOBYTE(v23) = 1;
    sub_238B14AF8();
    sub_238B1C1E4();
    (*(v9 + 8))(v13, v15);
    return sub_238AFFCFC(v18, v19);
  }

  else
  {
    sub_238AFD5B4((v6 + 8), &v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51C60, &qword_238B1E0A8);
    result = swift_dynamicCast();
    if (result)
    {
      v20 = v24;
      v21 = v25;
      LOBYTE(v27) = v23;
      v28 = v24;
      v29 = v25;
      v30 = v26;
      LOBYTE(v23) = 1;
      sub_238B154CC(&qword_27DF51C88, &qword_27DF51C60, &qword_238B1E0A8);
      sub_238B1C1E4();
      (*(v9 + 8))(v13, v15);
      sub_238B14AE4(v20, v21);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t InfoPlistHash.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51D50, &qword_238B1E130);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v20 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B14FE0();
  sub_238B1C394();
  if (!v2)
  {
    v26 = 0;
    sub_238AFA094();
    sub_238B1C174();
    LOBYTE(v23) = v21;
    if (sub_238B1A5FC(v21) == 0x696C702D6F666E69 && v13 == 0xEF687361682D7473)
    {
    }

    else
    {
      v14 = sub_238B1C2E4();

      if ((v14 & 1) == 0)
      {
        sub_238AFA0E8();
        swift_allocError();
        *v18 = 1;
        swift_willThrow();
        (*(v6 + 8))(v10, v5);
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }
    }

    v26 = 1;
    sub_238B14B4C();
    v15 = MEMORY[0x277CC9318];
    sub_238B1C174();
    v16 = v21;
    v17 = v22;
    *&v25 = v15;
    *(&v25 + 1) = sub_238B149F4();
    *(&v23 + 1) = v16;
    *&v24 = v17;
    (*(v6 + 8))(v10, v5);
    v19 = v24;
    *a2 = v23;
    a2[1] = v19;
    a2[2] = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_238B0DA84@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_238AFD5B4(a1, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51978, &qword_238B1E020);
  v7 = MEMORY[0x277CC9318];
  if (swift_dynamicCast())
  {
    v8 = v19;
    v9 = v20;
    *a3 = a2;
    *(a3 + 32) = v7;
    *(a3 + 40) = sub_238B149F4();
    *(a3 + 8) = v8;
    *(a3 + 16) = v9;
  }

  else
  {
    sub_238AFD5B4(a1, v23);
    sub_238B070F4(v23, &v19);
    if (!v3)
    {
      v10 = v19;
      v12 = v20;
      v11 = v21;
      v13 = v22;
      if (sub_238B1A5FC(v19) == 7235876 && v14 == 0xE300000000000000)
      {
      }

      else
      {
        v24 = v10;
        v15 = sub_238B1C2E4();
        LOBYTE(v10) = v24;

        if ((v15 & 1) == 0)
        {
          sub_238AFA0E8();
          swift_allocError();
          *v17 = 1;
          swift_willThrow();
          sub_238B14AE4(v12, v11);

          return __swift_destroy_boxed_opaque_existential_1(a1);
        }
      }

      *a3 = a2;
      *(a3 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51C60, &qword_238B1E0A8);
      *(a3 + 40) = sub_238B154CC(&qword_27DF51C68, &qword_27DF51C60, &qword_238B1E0A8);
      v16 = swift_allocObject();
      *(a3 + 8) = v16;
      *(v16 + 16) = v10;
      *(v16 + 24) = v12;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void InTrustCacheWithConstraintCategory.init()(uint64_t a1@<X8>)
{
  *a1 = 6;
  *(a1 + 32) = MEMORY[0x277D839B0];
  *(a1 + 40) = &off_284B66ED8;
  *(a1 + 8) = 1;
}

uint64_t InTrustCacheWithConstraintCategory.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = MEMORY[0x277D839B0];
  *a2 = 6;
  *(a2 + 32) = v2;
  *(a2 + 40) = &off_284B66ED8;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_238B0DD38(uint64_t a1)
{
  v2 = sub_238B15034();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B0DD74(uint64_t a1)
{
  v2 = sub_238B15034();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238B0DDF4(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v18[-v12 - 8];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_238B1C3A4();
  v18[0] = *v6;
  v18[55] = 0;
  sub_238AF7B90();
  v15 = v17;
  sub_238B1C1E4();
  if (!v15)
  {
    sub_238AFD5B4((v6 + 8), v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51C48, &qword_238B1E098);
    swift_dynamicCast();
    v18[0] = 1;
    sub_238B1C1D4();
  }

  return (*(v9 + 8))(v13, v8);
}

uint64_t InTrustCacheWithConstraintCategory.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51D68, &qword_238B1E140);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B15034();
  sub_238B1C394();
  if (!v2)
  {
    v23 = 0;
    sub_238AFA094();
    sub_238B1C174();
    LOBYTE(v22[0]) = v19;
    if (sub_238B1A5FC(v19) == 0xD00000000000001ELL && 0x8000000238B22500 == v12)
    {

      goto LABEL_7;
    }

    v13 = sub_238B1C2E4();

    if (v13)
    {
LABEL_7:
      v23 = 1;
      v14 = sub_238B1C164();
      v20 = MEMORY[0x277D839B0];
      v21 = &off_284B66ED8;
      LOBYTE(v19) = v14 & 1;
      (*(v6 + 8))(v10, v5);
      sub_238AEA2C0(&v19, v22 + 8);
      v15 = v22[1];
      *a2 = v22[0];
      a2[1] = v15;
      a2[2] = v22[2];
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    sub_238AFA0E8();
    swift_allocError();
    *v16 = 1;
    swift_willThrow();
    (*(v6 + 8))(v10, v5);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void IsInitProcess.init()(uint64_t a1@<X8>)
{
  *a1 = 7;
  *(a1 + 32) = MEMORY[0x277D839B0];
  *(a1 + 40) = &off_284B66ED8;
  *(a1 + 8) = 1;
}

uint64_t IsInitProcess.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = MEMORY[0x277D839B0];
  *a2 = 7;
  *(a2 + 32) = v2;
  *(a2 + 40) = &off_284B66ED8;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_238B0E2CC(uint64_t a1)
{
  v2 = sub_238B15088();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B0E308(uint64_t a1)
{
  v2 = sub_238B15088();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IsInitProcess.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51D80, &qword_238B1E150);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B15088();
  sub_238B1C394();
  if (!v2)
  {
    v23 = 0;
    sub_238AFA094();
    sub_238B1C174();
    LOBYTE(v22[0]) = v19;
    if (sub_238B1A5FC(v19) == 0x2D74696E692D7369 && v12 == 0xEC000000636F7270)
    {

      goto LABEL_7;
    }

    v13 = sub_238B1C2E4();

    if (v13)
    {
LABEL_7:
      v23 = 1;
      v14 = sub_238B1C164();
      v20 = MEMORY[0x277D839B0];
      v21 = &off_284B66ED8;
      LOBYTE(v19) = v14 & 1;
      (*(v6 + 8))(v10, v5);
      sub_238AEA2C0(&v19, v22 + 8);
      v15 = v22[1];
      *a2 = v22[0];
      a2[1] = v15;
      a2[2] = v22[2];
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    sub_238AFA0E8();
    swift_allocError();
    *v16 = 1;
    swift_willThrow();
    (*(v6 + 8))(v10, v5);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void IsMainBinary.init()(uint64_t a1@<X8>)
{
  *a1 = 8;
  *(a1 + 32) = MEMORY[0x277D839B0];
  *(a1 + 40) = &off_284B66ED8;
  *(a1 + 8) = 1;
}

uint64_t IsMainBinary.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = MEMORY[0x277D839B0];
  *a2 = 8;
  *(a2 + 32) = v2;
  *(a2 + 40) = &off_284B66ED8;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_238B0E6A0(uint64_t a1)
{
  v2 = sub_238B150DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B0E6DC(uint64_t a1)
{
  v2 = sub_238B150DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IsMainBinary.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51D98, &qword_238B1E160);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B150DC();
  sub_238B1C394();
  if (!v2)
  {
    v23 = 0;
    sub_238AFA094();
    sub_238B1C174();
    LOBYTE(v22[0]) = v19;
    if (sub_238B1A5FC(v19) == 0x2D6E69616D2D7369 && v12 == 0xEE007972616E6962)
    {

      goto LABEL_7;
    }

    v13 = sub_238B1C2E4();

    if (v13)
    {
LABEL_7:
      v23 = 1;
      v14 = sub_238B1C164();
      v20 = MEMORY[0x277D839B0];
      v21 = &off_284B66ED8;
      LOBYTE(v19) = v14 & 1;
      (*(v6 + 8))(v10, v5);
      sub_238AEA2C0(&v19, v22 + 8);
      v15 = v22[1];
      *a2 = v22[0];
      a2[1] = v15;
      a2[2] = v22[2];
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    sub_238AFA0E8();
    swift_allocError();
    *v16 = 1;
    swift_willThrow();
    (*(v6 + 8))(v10, v5);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void IsSIPProtected.init()(uint64_t a1@<X8>)
{
  *a1 = 9;
  *(a1 + 32) = MEMORY[0x277D839B0];
  *(a1 + 40) = &off_284B66ED8;
  *(a1 + 8) = 1;
}

uint64_t IsSIPProtected.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = MEMORY[0x277D839B0];
  *a2 = 9;
  *(a2 + 32) = v2;
  *(a2 + 40) = &off_284B66ED8;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_238B0EA78(uint64_t a1)
{
  v2 = sub_238B15130();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B0EAB4(uint64_t a1)
{
  v2 = sub_238B15130();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IsSIPProtected.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51DB0, &qword_238B1E170);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B15130();
  sub_238B1C394();
  if (!v2)
  {
    v23 = 0;
    sub_238AFA094();
    sub_238B1C174();
    LOBYTE(v22[0]) = v19;
    if (sub_238B1A5FC(v19) == 0xD000000000000010 && 0x8000000238B22540 == v12)
    {

      goto LABEL_7;
    }

    v13 = sub_238B1C2E4();

    if (v13)
    {
LABEL_7:
      v23 = 1;
      v14 = sub_238B1C164();
      v20 = MEMORY[0x277D839B0];
      v21 = &off_284B66ED8;
      LOBYTE(v19) = v14 & 1;
      (*(v6 + 8))(v10, v5);
      sub_238AEA2C0(&v19, v22 + 8);
      v15 = v22[1];
      *a2 = v22[0];
      a2[1] = v15;
      a2[2] = v22[2];
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    sub_238AFA0E8();
    swift_allocError();
    *v16 = 1;
    swift_willThrow();
    (*(v6 + 8))(v10, v5);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t LaunchType.Value.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result <= 3)
  {
    v2 = result;
  }

  else
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = result > 3;
  return result;
}

uint64_t *sub_238B0EEC0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 3;
  if (*result > 3)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t *LaunchType.init(_:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = MEMORY[0x277D84A28];
  *a2 = 10;
  *(a2 + 32) = v3;
  *(a2 + 40) = &off_284B66EF0;
  *(a2 + 8) = v2;
  return result;
}

uint64_t static LaunchType.in(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 10;
  *(a2 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51DB8, &qword_238B1E178);
  *(a2 + 40) = sub_238B154CC(&qword_27DF51DC0, &qword_27DF51DB8, &qword_238B1E178);
  v4 = swift_allocObject();
  *(a2 + 8) = v4;
  *(v4 + 16) = 22;
  *(v4 + 24) = 0;
  *(v4 + 32) = 1;
  *(v4 + 40) = a1;
}

uint64_t sub_238B0EFE0(uint64_t a1)
{
  v2 = sub_238B15184();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B0F01C(uint64_t a1)
{
  v2 = sub_238B15184();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LaunchType.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51DC8, &qword_238B1E180);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B15184();
  sub_238B1C3A4();
  v18[0] = *v3;
  LOBYTE(v14) = 0;
  sub_238AF7B90();
  sub_238B1C1E4();
  if (v2)
  {
    return (*(v6 + 8))(v10, v5);
  }

  sub_238AFD5B4((v3 + 8), v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51DD8, &qword_238B1E188);
  if (swift_dynamicCast())
  {
    v18[0] = 1;
    sub_238B1C1F4();
    return (*(v6 + 8))(v10, v5);
  }

  sub_238AFD5B4((v3 + 8), v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51DB8, &qword_238B1E178);
  result = swift_dynamicCast();
  if (result)
  {
    v18[0] = v14;
    v19 = v15;
    v20 = v16;
    v21 = v17;
    LOBYTE(v14) = 1;
    sub_238B154CC(&qword_27DF51DE0, &qword_27DF51DB8, &qword_238B1E178);
    sub_238B1C1E4();
    (*(v6 + 8))(v10, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t LaunchType.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51DE8, &qword_238B1E190);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B15184();
  sub_238B1C394();
  if (!v2)
  {
    v23 = 0;
    sub_238AFA094();
    sub_238B1C174();
    LOBYTE(v20) = v19;
    if (sub_238B1A5FC(v19) == 0x742D68636E75616CLL && v13 == 0xEB00000000657079)
    {
    }

    else
    {
      v14 = sub_238B1C2E4();

      if ((v14 & 1) == 0)
      {
        sub_238AFA0E8();
        swift_allocError();
        *v16 = 1;
        swift_willThrow();
        (*(v6 + 8))(v10, v5);
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }
    }

    LOBYTE(v19) = 1;
    v15 = sub_238B1C184();
    *&v22 = MEMORY[0x277D84A28];
    *(&v22 + 1) = &off_284B66EF0;
    *(&v20 + 1) = v15;
    (*(v6 + 8))(v10, v5);
    v17 = v21;
    *a2 = v20;
    a2[1] = v17;
    a2[2] = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_238B0F674@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_238AFD5B4(a1, &v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51978, &qword_238B1E020);
  v5 = MEMORY[0x277D84A28];
  if (swift_dynamicCast())
  {
    v6 = v40[0];
    if (v40[0] < 4uLL)
    {
      *a2 = 10;
      *(a2 + 32) = v5;
      *(a2 + 40) = &off_284B66EF0;
      *(a2 + 8) = v6;
LABEL_19:
      v18 = a1;
      return __swift_destroy_boxed_opaque_existential_1(v18);
    }

LABEL_18:
    sub_238AFA0E8();
    swift_allocError();
    *v17 = 1;
    swift_willThrow();
    goto LABEL_19;
  }

  sub_238AFD5B4(a1, &v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51980, &qword_238B1CF40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  if (*(v40[0] + 16) != 1)
  {

    goto LABEL_18;
  }

  result = sub_238AEC5B4(v40[0], &v36);
  v8 = v37;
  if (v37)
  {

    v9 = v36;
    sub_238AEA2C0(&v38, v40);
    sub_238AFD5B4(v40, &v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF524C0, &qword_238B21D98);
    if (swift_dynamicCast())
    {
      v41 = v9;
      v10 = *(v33[0] + 16);
      if (v10)
      {
        v31 = v33[0];
        v32 = v8;
        v11 = (v33[0] + 32);
        v12 = MEMORY[0x277D84F90];
        do
        {
          v14 = *v11++;
          v13 = v14;
          if (v14 <= 3)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = sub_238B1485C(0, *(v12 + 2) + 1, 1, v12, qword_27DF52548, qword_238B21E20);
            }

            v16 = *(v12 + 2);
            v15 = *(v12 + 3);
            if (v16 >= v15 >> 1)
            {
              v12 = sub_238B1485C((v15 > 1), v16 + 1, 1, v12, qword_27DF52548, qword_238B21E20);
            }

            *(v12 + 2) = v16 + 1;
            *&v12[8 * v16 + 32] = v13;
          }

          --v10;
        }

        while (v10);
        v8 = v32;
        v19 = *(v31 + 16);
      }

      else
      {
        v19 = 0;
        v12 = MEMORY[0x277D84F90];
      }

      if (v19 == *(v12 + 2))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF52528, &qword_238B21E00);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_238B1C830;
        *(inited + 32) = v41;
        v21 = inited + 32;
        *(inited + 40) = v8;
        *(inited + 48) = v12;
        v22 = sub_238AF9810(inited);
        swift_setDeallocating();
        sub_238AFD7D8(v21, &qword_27DF52530, &qword_238B21E08);
        *(&v38 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF52538, &qword_238B21E10);
        v39 = &off_284B699F8;
        v36 = v22;
        sub_238B0776C(&v36, &qword_27DF52540, &qword_238B21E18, v33);
        if (v2)
        {
LABEL_30:
          __swift_destroy_boxed_opaque_existential_1(a1);
          v18 = v40;
          return __swift_destroy_boxed_opaque_existential_1(v18);
        }

        v23 = v33[0];
        v24 = v33[1];
        v25 = v34;
        v26 = v35;
        if (sub_238B1A5FC(v33[0]) == 7235876 && v27 == 0xE300000000000000)
        {

LABEL_32:
          *a2 = 10;
          *(a2 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51DB8, &qword_238B1E178);
          *(a2 + 40) = sub_238B154CC(&qword_27DF51DC0, &qword_27DF51DB8, &qword_238B1E178);
          v30 = swift_allocObject();
          *(a2 + 8) = v30;
          *(v30 + 16) = v23;
          *(v30 + 24) = v24;
          *(v30 + 32) = v25;
          *(v30 + 40) = v26;
          goto LABEL_30;
        }

        v29 = sub_238B1C2E4();

        if (v29)
        {
          goto LABEL_32;
        }
      }

      else
      {
      }
    }

    sub_238AFA0E8();
    swift_allocError();
    *v28 = 1;
    swift_willThrow();
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

void OnAuthorizedAuthAPFSVolume.init()(uint64_t a1@<X8>)
{
  *a1 = 11;
  *(a1 + 32) = MEMORY[0x277D839B0];
  *(a1 + 40) = &off_284B66ED8;
  *(a1 + 8) = 1;
}

uint64_t OnAuthorizedAuthAPFSVolume.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = MEMORY[0x277D839B0];
  *a2 = 11;
  *(a2 + 32) = v2;
  *(a2 + 40) = &off_284B66ED8;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_238B0FBCC(uint64_t a1)
{
  v2 = sub_238B151D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B0FC08(uint64_t a1)
{
  v2 = sub_238B151D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OnAuthorizedAuthAPFSVolume.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51E08, &qword_238B1E1A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B151D8();
  sub_238B1C394();
  if (!v2)
  {
    v23 = 0;
    sub_238AFA094();
    sub_238B1C174();
    LOBYTE(v22[0]) = v19;
    if (sub_238B1A5FC(v19) == 0xD00000000000001DLL && 0x8000000238B22560 == v12)
    {

      goto LABEL_7;
    }

    v13 = sub_238B1C2E4();

    if (v13)
    {
LABEL_7:
      v23 = 1;
      v14 = sub_238B1C164();
      v20 = MEMORY[0x277D839B0];
      v21 = &off_284B66ED8;
      LOBYTE(v19) = v14 & 1;
      (*(v6 + 8))(v10, v5);
      sub_238AEA2C0(&v19, v22 + 8);
      v15 = v22[1];
      *a2 = v22[0];
      a2[1] = v15;
      a2[2] = v22[2];
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    sub_238AFA0E8();
    swift_allocError();
    *v16 = 1;
    swift_willThrow();
    (*(v6 + 8))(v10, v5);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void OnSystemVolume.init()(uint64_t a1@<X8>)
{
  *a1 = 12;
  *(a1 + 32) = MEMORY[0x277D839B0];
  *(a1 + 40) = &off_284B66ED8;
  *(a1 + 8) = 1;
}

uint64_t OnSystemVolume.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = MEMORY[0x277D839B0];
  *a2 = 12;
  *(a2 + 32) = v2;
  *(a2 + 40) = &off_284B66ED8;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_238B0FF9C(uint64_t a1)
{
  v2 = sub_238B1522C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B0FFD8(uint64_t a1)
{
  v2 = sub_238B1522C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OnSystemVolume.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51E20, &qword_238B1E1B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B1522C();
  sub_238B1C394();
  if (!v2)
  {
    v23 = 0;
    sub_238AFA094();
    sub_238B1C174();
    LOBYTE(v22[0]) = v19;
    if (sub_238B1A5FC(v19) == 0xD000000000000010 && 0x8000000238B22580 == v12)
    {

      goto LABEL_7;
    }

    v13 = sub_238B1C2E4();

    if (v13)
    {
LABEL_7:
      v23 = 1;
      v14 = sub_238B1C164();
      v20 = MEMORY[0x277D839B0];
      v21 = &off_284B66ED8;
      LOBYTE(v19) = v14 & 1;
      (*(v6 + 8))(v10, v5);
      sub_238AEA2C0(&v19, v22 + 8);
      v15 = v22[1];
      *a2 = v22[0];
      a2[1] = v15;
      a2[2] = v22[2];
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    sub_238AFA0E8();
    swift_allocError();
    *v16 = 1;
    swift_willThrow();
    (*(v6 + 8))(v10, v5);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t OSEnvironment.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 13;
  *(a3 + 32) = MEMORY[0x277D837D0];
  *(a3 + 40) = &off_284B66EA8;
  *(a3 + 8) = result;
  *(a3 + 16) = a2;
  return result;
}

uint64_t sub_238B10334@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = a2;
  *(a3 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51E28, &qword_238B1E1B8);
  *(a3 + 40) = sub_238B154CC(&qword_2814F2F28, &qword_27DF51E28, &qword_238B1E1B8);
  v5 = swift_allocObject();
  *(a3 + 8) = v5;
  *(v5 + 16) = 22;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = a1;
}

uint64_t sub_238B10404(uint64_t a1)
{
  v2 = sub_238B15280();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B10440(uint64_t a1)
{
  v2 = sub_238B15280();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OSEnvironment.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51E50, &qword_238B1E1D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B15280();
  sub_238B1C394();
  if (!v2)
  {
    v24 = 0;
    sub_238AFA094();
    sub_238B1C174();
    LOBYTE(v21) = v20;
    if (sub_238B1A5FC(v20) == 0x7269766E652D736FLL && v13 == 0xEE00746E656D6E6FLL)
    {
    }

    else
    {
      v14 = sub_238B1C2E4();

      if ((v14 & 1) == 0)
      {
        sub_238AFA0E8();
        swift_allocError();
        *v17 = 1;
        swift_willThrow();
        (*(v6 + 8))(v10, v5);
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }
    }

    LOBYTE(v20) = 1;
    v15 = sub_238B1C154();
    *&v23 = MEMORY[0x277D837D0];
    *(&v23 + 1) = &off_284B66EA8;
    *(&v21 + 1) = v15;
    *&v22 = v16;
    (*(v6 + 8))(v10, v5);
    v18 = v22;
    *a2 = v21;
    a2[1] = v18;
    a2[2] = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PlatformType.Value.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result - 13) >= 0xFFFFFFFFFFFFFFF4)
  {
    v2 = result;
  }

  else
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = (result - 13) < 0xFFFFFFFFFFFFFFF4;
  return result;
}

uint64_t *sub_238B1098C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result - 13;
  v4 = __CFADD__(v3, 12);
  v5 = v3 < 0xFFFFFFFFFFFFFFF4;
  if (!v4)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v5;
  return result;
}

uint64_t *PlatformType.init(_:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = MEMORY[0x277D84A28];
  *a2 = 15;
  *(a2 + 32) = v3;
  *(a2 + 40) = &off_284B66EF0;
  *(a2 + 8) = v2;
  return result;
}

uint64_t static PlatformType.in(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 15;
  *(a2 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51E60, &qword_238B1E1D8);
  *(a2 + 40) = sub_238B154CC(&qword_27DF51E68, &qword_27DF51E60, &qword_238B1E1D8);
  v4 = swift_allocObject();
  *(a2 + 8) = v4;
  *(v4 + 16) = 22;
  *(v4 + 24) = 0;
  *(v4 + 32) = 1;
  *(v4 + 40) = a1;
}

uint64_t sub_238B10AB0(uint64_t a1)
{
  v2 = sub_238B152D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B10AEC(uint64_t a1)
{
  v2 = sub_238B152D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlatformType.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51E70, &qword_238B1E1E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B152D4();
  sub_238B1C3A4();
  v18[0] = *v3;
  LOBYTE(v14) = 0;
  sub_238AF7B90();
  sub_238B1C1E4();
  if (v2)
  {
    return (*(v6 + 8))(v10, v5);
  }

  sub_238AFD5B4((v3 + 8), v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51DD8, &qword_238B1E188);
  if (swift_dynamicCast())
  {
    v18[0] = 1;
    sub_238B1C1F4();
    return (*(v6 + 8))(v10, v5);
  }

  sub_238AFD5B4((v3 + 8), v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51E60, &qword_238B1E1D8);
  result = swift_dynamicCast();
  if (result)
  {
    v18[0] = v14;
    v19 = v15;
    v20 = v16;
    v21 = v17;
    LOBYTE(v14) = 1;
    sub_238B154CC(&qword_27DF51E80, &qword_27DF51E60, &qword_238B1E1D8);
    sub_238B1C1E4();
    (*(v6 + 8))(v10, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PlatformType.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51E88, &qword_238B1E1E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B152D4();
  sub_238B1C394();
  if (!v2)
  {
    v23 = 0;
    sub_238AFA094();
    sub_238B1C174();
    LOBYTE(v20) = v19;
    if (sub_238B1A5FC(v19) == 0x6D726F6674616C70 && v13 == 0xE800000000000000)
    {
    }

    else
    {
      v14 = sub_238B1C2E4();

      if ((v14 & 1) == 0)
      {
        sub_238AFA0E8();
        swift_allocError();
        *v16 = 1;
        swift_willThrow();
        (*(v6 + 8))(v10, v5);
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }
    }

    LOBYTE(v19) = 1;
    v15 = sub_238B1C184();
    *&v22 = MEMORY[0x277D84A28];
    *(&v22 + 1) = &off_284B66EF0;
    *(&v20 + 1) = v15;
    (*(v6 + 8))(v10, v5);
    v17 = v21;
    *a2 = v20;
    a2[1] = v17;
    a2[2] = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_238B1113C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_238AFD5B4(a1, &v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51978, &qword_238B1E020);
  v5 = MEMORY[0x277D84A28];
  if (swift_dynamicCast())
  {
    v6 = v40[0];
    if ((v40[0] - 13) > 0xFFFFFFFFFFFFFFF3)
    {
      *a2 = 15;
      *(a2 + 32) = v5;
      *(a2 + 40) = &off_284B66EF0;
      *(a2 + 8) = v6;
LABEL_19:
      v18 = a1;
      return __swift_destroy_boxed_opaque_existential_1(v18);
    }

LABEL_18:
    sub_238AFA0E8();
    swift_allocError();
    *v17 = 1;
    swift_willThrow();
    goto LABEL_19;
  }

  sub_238AFD5B4(a1, &v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51980, &qword_238B1CF40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  if (*(v40[0] + 16) != 1)
  {

    goto LABEL_18;
  }

  result = sub_238AEC5B4(v40[0], &v36);
  v8 = v37;
  if (v37)
  {

    v9 = v36;
    sub_238AEA2C0(&v38, v40);
    sub_238AFD5B4(v40, &v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF524C0, &qword_238B21D98);
    if (swift_dynamicCast())
    {
      v41 = v9;
      v10 = *(v33[0] + 16);
      if (v10)
      {
        v31 = v33[0];
        v32 = v8;
        v11 = (v33[0] + 32);
        v12 = MEMORY[0x277D84F90];
        do
        {
          v14 = *v11++;
          v13 = v14;
          if ((v14 - 13) >= 0xFFFFFFFFFFFFFFF4)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = sub_238B1485C(0, *(v12 + 2) + 1, 1, v12, &qword_27DF524F8, &qword_238B21DD0);
            }

            v16 = *(v12 + 2);
            v15 = *(v12 + 3);
            if (v16 >= v15 >> 1)
            {
              v12 = sub_238B1485C((v15 > 1), v16 + 1, 1, v12, &qword_27DF524F8, &qword_238B21DD0);
            }

            *(v12 + 2) = v16 + 1;
            *&v12[8 * v16 + 32] = v13;
          }

          --v10;
        }

        while (v10);
        v8 = v32;
        v19 = *(v31 + 16);
      }

      else
      {
        v19 = 0;
        v12 = MEMORY[0x277D84F90];
      }

      if (v19 == *(v12 + 2))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF524D8, &qword_238B21DB0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_238B1C830;
        *(inited + 32) = v41;
        v21 = inited + 32;
        *(inited + 40) = v8;
        *(inited + 48) = v12;
        v22 = sub_238AF97E8(inited);
        swift_setDeallocating();
        sub_238AFD7D8(v21, &qword_27DF524E0, &qword_238B21DB8);
        *(&v38 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF524E8, &qword_238B21DC0);
        v39 = &off_284B699F8;
        v36 = v22;
        sub_238B0776C(&v36, &qword_27DF524F0, &qword_238B21DC8, v33);
        if (v2)
        {
LABEL_30:
          __swift_destroy_boxed_opaque_existential_1(a1);
          v18 = v40;
          return __swift_destroy_boxed_opaque_existential_1(v18);
        }

        v23 = v33[0];
        v24 = v33[1];
        v25 = v34;
        v26 = v35;
        if (sub_238B1A5FC(v33[0]) == 7235876 && v27 == 0xE300000000000000)
        {

LABEL_32:
          *a2 = 15;
          *(a2 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51E60, &qword_238B1E1D8);
          *(a2 + 40) = sub_238B154CC(&qword_27DF51E68, &qword_27DF51E60, &qword_238B1E1D8);
          v30 = swift_allocObject();
          *(a2 + 8) = v30;
          *(v30 + 16) = v23;
          *(v30 + 24) = v24;
          *(v30 + 32) = v25;
          *(v30 + 40) = v26;
          goto LABEL_30;
        }

        v29 = sub_238B1C2E4();

        if (v29)
        {
          goto LABEL_32;
        }
      }

      else
      {
      }
    }

    sub_238AFA0E8();
    swift_allocError();
    *v28 = 1;
    swift_willThrow();
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

uint64_t PlatformIdentifier.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = MEMORY[0x277D84A28];
  *a2 = 14;
  *(a2 + 32) = v2;
  *(a2 + 40) = &off_284B66EF0;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_238B1166C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 14;
  *(a3 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51CC0, &qword_238B1E0D0);
  *(a3 + 40) = sub_238B154CC(&qword_27DF51E98, &qword_27DF51CC0, &qword_238B1E0D0);
  result = swift_allocObject();
  *(a3 + 8) = result;
  *(result + 16) = a2;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t static PlatformIdentifier.in(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 14;
  *(a2 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51CC0, &qword_238B1E0D0);
  *(a2 + 40) = sub_238B154CC(&qword_27DF51E98, &qword_27DF51CC0, &qword_238B1E0D0);
  v4 = swift_allocObject();
  *(a2 + 8) = v4;
  *(v4 + 16) = 22;
  *(v4 + 24) = 0;
  *(v4 + 32) = 1;
  *(v4 + 40) = a1;
}

uint64_t sub_238B1180C(uint64_t a1)
{
  v2 = sub_238B15328();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B11848(uint64_t a1)
{
  v2 = sub_238B15328();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlatformIdentifier.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51EA0, &qword_238B1E1F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B15328();
  sub_238B1C3A4();
  v18[0] = *v3;
  LOBYTE(v14) = 0;
  sub_238AF7B90();
  sub_238B1C1E4();
  if (v2)
  {
    return (*(v6 + 8))(v10, v5);
  }

  sub_238AFD5B4((v3 + 8), v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51DD8, &qword_238B1E188);
  if (swift_dynamicCast())
  {
    v18[0] = 1;
    sub_238B1C1F4();
    return (*(v6 + 8))(v10, v5);
  }

  sub_238AFD5B4((v3 + 8), v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51CC0, &qword_238B1E0D0);
  result = swift_dynamicCast();
  if (result)
  {
    v18[0] = v14;
    v19 = v15;
    v20 = v16;
    v21 = v17;
    LOBYTE(v14) = 1;
    sub_238B154CC(&qword_27DF51CC8, &qword_27DF51CC0, &qword_238B1E0D0);
    sub_238B1C1E4();
    (*(v6 + 8))(v10, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PlatformIdentifier.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51EB0, &qword_238B1E1F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B15328();
  sub_238B1C394();
  if (!v2)
  {
    v23 = 0;
    sub_238AFA094();
    sub_238B1C174();
    LOBYTE(v20) = v19;
    if (sub_238B1A5FC(v19) == 0xD000000000000013 && 0x8000000238B225A0 == v13)
    {
    }

    else
    {
      v14 = sub_238B1C2E4();

      if ((v14 & 1) == 0)
      {
        sub_238AFA0E8();
        swift_allocError();
        *v16 = 1;
        swift_willThrow();
        (*(v6 + 8))(v10, v5);
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }
    }

    LOBYTE(v19) = 1;
    v15 = sub_238B1C184();
    *&v22 = MEMORY[0x277D84A28];
    *(&v22 + 1) = &off_284B66EF0;
    *(&v20 + 1) = v15;
    (*(v6 + 8))(v10, v5);
    v17 = v21;
    *a2 = v20;
    a2[1] = v17;
    a2[2] = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_238B11E9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_238AFD5B4(a1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51978, &qword_238B1E020);
  v5 = MEMORY[0x277D84A28];
  if (swift_dynamicCast())
  {
    v6 = v18[6];
    *a2 = 14;
    *(a2 + 32) = v5;
    *(a2 + 40) = &off_284B66EF0;
    *(a2 + 8) = v6;
  }

  else
  {
    sub_238AFD5B4(a1, v18);
    v7 = sub_238B07334(v18);
    if (!v2)
    {
      v11 = v10;
      v12 = v9;
      v13 = v8;
      v14 = v7;
      if (sub_238B12054(v7, &unk_284B65550))
      {
        *a2 = 14;
        *(a2 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51CC0, &qword_238B1E0D0);
        *(a2 + 40) = sub_238B154CC(&qword_27DF51E98, &qword_27DF51CC0, &qword_238B1E0D0);
        v15 = swift_allocObject();
        *(a2 + 8) = v15;
        *(v15 + 16) = v14;
        *(v15 + 24) = v13;
        *(v15 + 32) = v12 & 1;
        *(v15 + 40) = v11;
      }

      else
      {

        sub_238AFA0E8();
        swift_allocError();
        *v16 = 1;
        swift_willThrow();
      }
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

BOOL sub_238B12054(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = sub_238B1A5FC(*v4);
    v9 = v8;
    if (v7 == sub_238B1A5FC(a1) && v9 == v10)
    {

      return v5 != 0;
    }

    v12 = sub_238B1C2E4();

    ++v4;
  }

  while ((v12 & 1) == 0);
  return v5 != 0;
}

uint64_t SigningIdentifier.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 16;
  *(a3 + 32) = MEMORY[0x277D837D0];
  *(a3 + 40) = &off_284B66EA8;
  *(a3 + 8) = result;
  *(a3 + 16) = a2;
  return result;
}

uint64_t sub_238B121A4(uint64_t a1)
{
  v2 = sub_238B1537C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B121E0(uint64_t a1)
{
  v2 = sub_238B1537C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238B12260(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v17 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_238B1C3A4();
  v22[0] = *v6;
  LOBYTE(v18) = 0;
  sub_238AF7B90();
  v15 = v26;
  sub_238B1C1E4();
  if (v15)
  {
    return (*(v9 + 8))(v13, v8);
  }

  sub_238AFD5B4((v6 + 8), v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51E40, &qword_238B1E1C8);
  if (swift_dynamicCast())
  {
    v22[0] = 1;
    sub_238B1C1C4();
    (*(v9 + 8))(v13, v8);
  }

  else
  {
    sub_238AFD5B4((v6 + 8), v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51E28, &qword_238B1E1B8);
    result = swift_dynamicCast();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v22[0] = v18;
    v23 = v19;
    v24 = v20;
    v25 = v21;
    LOBYTE(v18) = 1;
    sub_238B154CC(&qword_27DF51E48, &qword_27DF51E28, &qword_238B1E1B8);
    sub_238B1C1E4();
    (*(v9 + 8))(v13, v8);
  }
}

uint64_t SigningIdentifier.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51EC8, &qword_238B1E208);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B1537C();
  sub_238B1C394();
  if (!v2)
  {
    v24 = 0;
    sub_238AFA094();
    sub_238B1C174();
    LOBYTE(v21) = v20;
    if (sub_238B1A5FC(v20) == 0xD000000000000012 && 0x8000000238B225C0 == v13)
    {
    }

    else
    {
      v14 = sub_238B1C2E4();

      if ((v14 & 1) == 0)
      {
        sub_238AFA0E8();
        swift_allocError();
        *v17 = 1;
        swift_willThrow();
        (*(v6 + 8))(v10, v5);
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }
    }

    LOBYTE(v20) = 1;
    v15 = sub_238B1C154();
    *&v23 = MEMORY[0x277D837D0];
    *(&v23 + 1) = &off_284B66EA8;
    *(&v21 + 1) = v15;
    *&v22 = v16;
    (*(v6 + 8))(v10, v5);
    v18 = v22;
    *a2 = v21;
    a2[1] = v18;
    a2[2] = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_238B128A8@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_238AFD5B4(a1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51978, &qword_238B1E020);
  v7 = MEMORY[0x277D837D0];
  if (swift_dynamicCast())
  {
    *a3 = a2;
    *(a3 + 32) = v7;
    *(a3 + 40) = &off_284B66EA8;
    *(a3 + 8) = v20;
    *(a3 + 16) = v21;
  }

  else
  {
    sub_238AFD5B4(a1, v22);
    v8 = sub_238B07554(v22);
    if (!v3)
    {
      v12 = v10;
      v13 = v11;
      v23 = v9;
      v14 = v8;
      if (sub_238B1A5FC(v8) == 7235876 && v15 == 0xE300000000000000)
      {
      }

      else
      {
        v16 = sub_238B1C2E4();

        if ((v16 & 1) == 0)
        {

          sub_238AFA0E8();
          swift_allocError();
          *v18 = 1;
          swift_willThrow();
          return __swift_destroy_boxed_opaque_existential_1(a1);
        }
      }

      *a3 = a2;
      *(a3 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51E28, &qword_238B1E1B8);
      *(a3 + 40) = sub_238B154CC(&qword_2814F2F28, &qword_27DF51E28, &qword_238B1E1B8);
      v17 = swift_allocObject();
      *(a3 + 8) = v17;
      *(v17 + 16) = v14;
      *(v17 + 24) = v23;
      *(v17 + 32) = v12;
      *(v17 + 40) = v13;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t TeamIdentifier.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 17;
  *(a3 + 32) = MEMORY[0x277D837D0];
  *(a3 + 40) = &off_284B66EA8;
  *(a3 + 8) = result;
  *(a3 + 16) = a2;
  return result;
}

uint64_t sub_238B12B18(uint64_t a1)
{
  v2 = sub_238B153D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B12B54(uint64_t a1)
{
  v2 = sub_238B153D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TeamIdentifier.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51EE0, &qword_238B1E218);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B153D0();
  sub_238B1C394();
  if (!v2)
  {
    v24 = 0;
    sub_238AFA094();
    sub_238B1C174();
    LOBYTE(v21) = v20;
    if (sub_238B1A5FC(v20) == 0x6564692D6D616574 && v13 == 0xEF7265696669746ELL)
    {
    }

    else
    {
      v14 = sub_238B1C2E4();

      if ((v14 & 1) == 0)
      {
        sub_238AFA0E8();
        swift_allocError();
        *v17 = 1;
        swift_willThrow();
        (*(v6 + 8))(v10, v5);
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }
    }

    LOBYTE(v20) = 1;
    v15 = sub_238B1C154();
    *&v23 = MEMORY[0x277D837D0];
    *(&v23 + 1) = &off_284B66EA8;
    *(&v21 + 1) = v15;
    *&v22 = v16;
    (*(v6 + 8))(v10, v5);
    v18 = v22;
    *a2 = v21;
    a2[1] = v18;
    a2[2] = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void TeamIdentifierMatchesCurrentProcess.init()(uint64_t a1@<X8>)
{
  *a1 = 18;
  *(a1 + 32) = MEMORY[0x277D839B0];
  *(a1 + 40) = &off_284B66ED8;
  *(a1 + 8) = 1;
}

uint64_t TeamIdentifierMatchesCurrentProcess.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = MEMORY[0x277D839B0];
  *a2 = 18;
  *(a2 + 32) = v2;
  *(a2 + 40) = &off_284B66ED8;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_238B12FE4(uint64_t a1)
{
  v2 = sub_238B15424();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B13020(uint64_t a1)
{
  v2 = sub_238B15424();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TeamIdentifierMatchesCurrentProcess.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51EF8, &qword_238B1E228);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B15424();
  sub_238B1C394();
  if (!v2)
  {
    v23 = 0;
    sub_238AFA094();
    sub_238B1C174();
    LOBYTE(v22[0]) = v19;
    if (sub_238B1A5FC(v19) == 0xD000000000000023 && 0x8000000238B225F0 == v12)
    {

      goto LABEL_7;
    }

    v13 = sub_238B1C2E4();

    if (v13)
    {
LABEL_7:
      v23 = 1;
      v14 = sub_238B1C164();
      v20 = MEMORY[0x277D839B0];
      v21 = &off_284B66ED8;
      LOBYTE(v19) = v14 & 1;
      (*(v6 + 8))(v10, v5);
      sub_238AEA2C0(&v19, v22 + 8);
      v15 = v22[1];
      *a2 = v22[0];
      a2[1] = v15;
      a2[2] = v22[2];
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    sub_238AFA0E8();
    swift_allocError();
    *v16 = 1;
    swift_willThrow();
    (*(v6 + 8))(v10, v5);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t ValidationCategory.Value.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result <= 0xA)
  {
    v2 = result;
  }

  else
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = result > 0xA;
  return result;
}

uint64_t sub_238B13418()
{
  v1 = *v0;
  sub_238B1C354();
  MEMORY[0x23EE71B10](v1);
  return sub_238B1C384();
}

uint64_t sub_238B13460()
{
  v1 = *v0;
  sub_238B1C354();
  MEMORY[0x23EE71B10](v1);
  return sub_238B1C384();
}

uint64_t *sub_238B134A4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 0xA;
  if (*result > 0xA)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t *ValidationCategory.init(_:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = MEMORY[0x277D84A28];
  *a2 = 19;
  *(a2 + 32) = v3;
  *(a2 + 40) = &off_284B66EF0;
  *(a2 + 8) = v2;
  return result;
}

uint64_t static ValidationCategory.in(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 19;
  *(a2 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51F00, &qword_238B1E230);
  *(a2 + 40) = sub_238B154CC(qword_2814F2F30, &qword_27DF51F00, &qword_238B1E230);
  v4 = swift_allocObject();
  *(a2 + 8) = v4;
  *(v4 + 16) = 22;
  *(v4 + 24) = 0;
  *(v4 + 32) = 1;
  *(v4 + 40) = a1;
}

uint64_t sub_238B135AC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x65756C6176;
  }

  else
  {
    v4 = 7955819;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x65756C6176;
  }

  else
  {
    v6 = 7955819;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_238B1C2E4();
  }

  return v9 & 1;
}

uint64_t sub_238B13648()
{
  v1 = *v0;
  sub_238B1C354();
  sub_238B1BF64();

  return sub_238B1C384();
}

uint64_t sub_238B136C0()
{
  v1 = *v0;
  sub_238B1C354();
  sub_238B1BF64();

  return sub_238B1C384();
}

uint64_t sub_238B13740@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_238B1C124();

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

uint64_t sub_238B137A8@<X0>(char *a1@<X8>)
{
  v2 = sub_238B1C124();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_238B13808(uint64_t a1)
{
  v2 = sub_238B15478();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B13844(uint64_t a1)
{
  v2 = sub_238B15478();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ValidationCategory.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51F08, &qword_238B1E238);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B15478();
  sub_238B1C3A4();
  v18[0] = *v3;
  LOBYTE(v14) = 0;
  sub_238AF7B90();
  sub_238B1C1E4();
  if (v2)
  {
    return (*(v6 + 8))(v10, v5);
  }

  sub_238AFD5B4((v3 + 8), v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51DD8, &qword_238B1E188);
  if (swift_dynamicCast())
  {
    v18[0] = 1;
    sub_238B1C1F4();
    return (*(v6 + 8))(v10, v5);
  }

  sub_238AFD5B4((v3 + 8), v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51F00, &qword_238B1E230);
  result = swift_dynamicCast();
  if (result)
  {
    v18[0] = v14;
    v19 = v15;
    v20 = v16;
    v21 = v17;
    LOBYTE(v14) = 1;
    sub_238B154CC(&qword_27DF51F18, &qword_27DF51F00, &qword_238B1E230);
    sub_238B1C1E4();
    (*(v6 + 8))(v10, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ValidationCategory.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51F20, &qword_238B1E240);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B15478();
  sub_238B1C394();
  if (!v2)
  {
    v23 = 0;
    sub_238AFA094();
    sub_238B1C174();
    LOBYTE(v20) = v19;
    if (sub_238B1A5FC(v19) == 0xD000000000000013 && 0x8000000238B22620 == v13)
    {
    }

    else
    {
      v14 = sub_238B1C2E4();

      if ((v14 & 1) == 0)
      {
        sub_238AFA0E8();
        swift_allocError();
        *v16 = 1;
        swift_willThrow();
        (*(v6 + 8))(v10, v5);
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }
    }

    LOBYTE(v19) = 1;
    v15 = sub_238B1C184();
    *&v22 = MEMORY[0x277D84A28];
    *(&v22 + 1) = &off_284B66EF0;
    *(&v20 + 1) = v15;
    (*(v6 + 8))(v10, v5);
    v17 = v21;
    *a2 = v20;
    a2[1] = v17;
    a2[2] = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_238B13E98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_238AFD5B4(a1, &v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51978, &qword_238B1E020);
  v5 = MEMORY[0x277D84A28];
  if (swift_dynamicCast())
  {
    v6 = v40[0];
    if (v40[0] < 0xBuLL)
    {
      *a2 = 19;
      *(a2 + 32) = v5;
      *(a2 + 40) = &off_284B66EF0;
      *(a2 + 8) = v6;
LABEL_19:
      v18 = a1;
      return __swift_destroy_boxed_opaque_existential_1(v18);
    }

LABEL_18:
    sub_238AFA0E8();
    swift_allocError();
    *v17 = 1;
    swift_willThrow();
    goto LABEL_19;
  }

  sub_238AFD5B4(a1, &v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51980, &qword_238B1CF40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  if (*(v40[0] + 16) != 1)
  {

    goto LABEL_18;
  }

  result = sub_238AEC5B4(v40[0], &v36);
  v8 = v37;
  if (v37)
  {

    v9 = v36;
    sub_238AEA2C0(&v38, v40);
    sub_238AFD5B4(v40, &v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF524C0, &qword_238B21D98);
    if (swift_dynamicCast())
    {
      v41 = v9;
      v10 = *(v33[0] + 16);
      if (v10)
      {
        v31 = v33[0];
        v32 = v8;
        v11 = (v33[0] + 32);
        v12 = MEMORY[0x277D84F90];
        do
        {
          v14 = *v11++;
          v13 = v14;
          if (v14 <= 0xA)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = sub_238B1485C(0, *(v12 + 2) + 1, 1, v12, &qword_27DF52520, &qword_238B21DF8);
            }

            v16 = *(v12 + 2);
            v15 = *(v12 + 3);
            if (v16 >= v15 >> 1)
            {
              v12 = sub_238B1485C((v15 > 1), v16 + 1, 1, v12, &qword_27DF52520, &qword_238B21DF8);
            }

            *(v12 + 2) = v16 + 1;
            *&v12[8 * v16 + 32] = v13;
          }

          --v10;
        }

        while (v10);
        v8 = v32;
        v19 = *(v31 + 16);
      }

      else
      {
        v19 = 0;
        v12 = MEMORY[0x277D84F90];
      }

      if (v19 == *(v12 + 2))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF52500, &qword_238B21DD8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_238B1C830;
        *(inited + 32) = v41;
        v21 = inited + 32;
        *(inited + 40) = v8;
        *(inited + 48) = v12;
        v22 = sub_238AF97FC(inited);
        swift_setDeallocating();
        sub_238AFD7D8(v21, &qword_27DF52508, &qword_238B21DE0);
        *(&v38 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF52510, &qword_238B21DE8);
        v39 = &off_284B699F8;
        v36 = v22;
        sub_238B0776C(&v36, &qword_27DF52518, &qword_238B21DF0, v33);
        if (v2)
        {
LABEL_30:
          __swift_destroy_boxed_opaque_existential_1(a1);
          v18 = v40;
          return __swift_destroy_boxed_opaque_existential_1(v18);
        }

        v23 = v33[0];
        v24 = v33[1];
        v25 = v34;
        v26 = v35;
        if (sub_238B1A5FC(v33[0]) == 7235876 && v27 == 0xE300000000000000)
        {

LABEL_32:
          *a2 = 19;
          *(a2 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51F00, &qword_238B1E230);
          *(a2 + 40) = sub_238B154CC(qword_2814F2F30, &qword_27DF51F00, &qword_238B1E230);
          v30 = swift_allocObject();
          *(a2 + 8) = v30;
          *(v30 + 16) = v23;
          *(v30 + 24) = v24;
          *(v30 + 32) = v25;
          *(v30 + 40) = v26;
          goto LABEL_30;
        }

        v29 = sub_238B1C2E4();

        if (v29)
        {
          goto LABEL_32;
        }
      }

      else
      {
      }
    }

    sub_238AFA0E8();
    swift_allocError();
    *v28 = 1;
    swift_willThrow();
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

uint64_t sub_238B1438C(uint64_t a1)
{
  sub_238AFD5B4(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51978, &qword_238B1E020);
  if (swift_dynamicCast())
  {
    v2 = v6;
  }

  else
  {
    sub_238AFD5B4(a1, v5);
    if ((swift_dynamicCast() & 1) == 0 || (v2 = v6, v6 >= 2))
    {
      sub_238AFA0E8();
      swift_allocError();
      *v3 = 1;
      swift_willThrow();
    }
  }

  return v2 & 1;
}

unint64_t sub_238B1447C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_238B1BF44();

  return sub_238B144D8(a1, v9, a2, a3);
}

unint64_t sub_238B144D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1, a2);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_238B1BF54();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

char *sub_238B1472C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_238B1485C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

unint64_t sub_238B149A0()
{
  result = qword_27DF51C40;
  if (!qword_27DF51C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51C40);
  }

  return result;
}

unint64_t sub_238B149F4()
{
  result = qword_27DF51C58;
  if (!qword_27DF51C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51C58);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_238B14A90()
{
  result = qword_27DF51C78;
  if (!qword_27DF51C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51C78);
  }

  return result;
}

uint64_t sub_238B14AE4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_238AFFCFC(a1, a2);
  }

  return a1;
}

unint64_t sub_238B14AF8()
{
  result = qword_27DF51C90;
  if (!qword_27DF51C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51C90);
  }

  return result;
}

unint64_t sub_238B14B4C()
{
  result = qword_27DF51CA0;
  if (!qword_27DF51CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51CA0);
  }

  return result;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x23EE71F20);
  }

  return result;
}

unint64_t sub_238B14BF0()
{
  result = qword_27DF51CB8;
  if (!qword_27DF51CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51CB8);
  }

  return result;
}

unint64_t sub_238B14C44()
{
  result = qword_27DF51CE8;
  if (!qword_27DF51CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51CE8);
  }

  return result;
}

unint64_t sub_238B14C98()
{
  result = qword_27DF51D00;
  if (!qword_27DF51D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51D00);
  }

  return result;
}

void *sub_238B14D10(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

unint64_t sub_238B14E44()
{
  result = qword_27DF51D28;
  if (!qword_27DF51D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51D28);
  }

  return result;
}

void *sub_238B14E98(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

unint64_t sub_238B14FE0()
{
  result = qword_27DF51D48;
  if (!qword_27DF51D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51D48);
  }

  return result;
}

unint64_t sub_238B15034()
{
  result = qword_27DF51D60;
  if (!qword_27DF51D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51D60);
  }

  return result;
}

unint64_t sub_238B15088()
{
  result = qword_27DF51D78;
  if (!qword_27DF51D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51D78);
  }

  return result;
}

unint64_t sub_238B150DC()
{
  result = qword_27DF51D90;
  if (!qword_27DF51D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51D90);
  }

  return result;
}

unint64_t sub_238B15130()
{
  result = qword_27DF51DA8;
  if (!qword_27DF51DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51DA8);
  }

  return result;
}

unint64_t sub_238B15184()
{
  result = qword_27DF51DD0;
  if (!qword_27DF51DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51DD0);
  }

  return result;
}

unint64_t sub_238B151D8()
{
  result = qword_27DF51E00;
  if (!qword_27DF51E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51E00);
  }

  return result;
}

unint64_t sub_238B1522C()
{
  result = qword_27DF51E18;
  if (!qword_27DF51E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51E18);
  }

  return result;
}

unint64_t sub_238B15280()
{
  result = qword_27DF51E38;
  if (!qword_27DF51E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51E38);
  }

  return result;
}

unint64_t sub_238B152D4()
{
  result = qword_27DF51E78;
  if (!qword_27DF51E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51E78);
  }

  return result;
}

unint64_t sub_238B15328()
{
  result = qword_27DF51EA8;
  if (!qword_27DF51EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51EA8);
  }

  return result;
}

unint64_t sub_238B1537C()
{
  result = qword_27DF51EC0;
  if (!qword_27DF51EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51EC0);
  }

  return result;
}

unint64_t sub_238B153D0()
{
  result = qword_27DF51ED8;
  if (!qword_27DF51ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51ED8);
  }

  return result;
}

unint64_t sub_238B15424()
{
  result = qword_27DF51EF0;
  if (!qword_27DF51EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51EF0);
  }

  return result;
}

unint64_t sub_238B15478()
{
  result = qword_27DF51F10;
  if (!qword_27DF51F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51F10);
  }

  return result;
}

uint64_t sub_238B154CC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_238B15540(uint64_t a1)
{
  result = sub_238B15568();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_238B15568()
{
  result = qword_27DF51F30;
  if (!qword_27DF51F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51F30);
  }

  return result;
}

uint64_t sub_238B155BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_238B155F8()
{
  result = qword_27DF51F38;
  if (!qword_27DF51F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51F38);
  }

  return result;
}

unint64_t sub_238B15678()
{
  result = qword_27DF51F40;
  if (!qword_27DF51F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51F40);
  }

  return result;
}

unint64_t sub_238B156CC()
{
  result = qword_27DF51F48;
  if (!qword_27DF51F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51F48);
  }

  return result;
}

unint64_t sub_238B15720()
{
  result = qword_27DF51F50;
  if (!qword_27DF51F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51F50);
  }

  return result;
}

unint64_t sub_238B157C4()
{
  result = qword_27DF51F58;
  if (!qword_27DF51F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51F58);
  }

  return result;
}

unint64_t sub_238B15818()
{
  result = qword_27DF51F60;
  if (!qword_27DF51F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51F60);
  }

  return result;
}

unint64_t sub_238B1586C()
{
  result = qword_27DF51F68;
  if (!qword_27DF51F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51F68);
  }

  return result;
}

unint64_t sub_238B158C4()
{
  result = qword_27DF51F70;
  if (!qword_27DF51F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51F70);
  }

  return result;
}

unint64_t sub_238B1591C()
{
  result = qword_27DF51F78;
  if (!qword_27DF51F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51F78);
  }

  return result;
}

unint64_t sub_238B15974()
{
  result = qword_27DF51F80;
  if (!qword_27DF51F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51F80);
  }

  return result;
}

unint64_t sub_238B159CC()
{
  result = qword_27DF51F88;
  if (!qword_27DF51F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51F88);
  }

  return result;
}

unint64_t sub_238B15A4C()
{
  result = qword_27DF51F90;
  if (!qword_27DF51F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51F90);
  }

  return result;
}

unint64_t sub_238B15AA0()
{
  result = qword_27DF51F98;
  if (!qword_27DF51F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51F98);
  }

  return result;
}

unint64_t sub_238B15AF4()
{
  result = qword_27DF51FA0;
  if (!qword_27DF51FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51FA0);
  }

  return result;
}

unint64_t sub_238B15B4C()
{
  result = qword_27DF51FA8;
  if (!qword_27DF51FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51FA8);
  }

  return result;
}

unint64_t sub_238B15BE4()
{
  result = qword_27DF51FB0;
  if (!qword_27DF51FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51FB0);
  }

  return result;
}

unint64_t sub_238B15C38()
{
  result = qword_27DF51FB8;
  if (!qword_27DF51FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51FB8);
  }

  return result;
}

unint64_t sub_238B15C8C()
{
  result = qword_27DF51FC0;
  if (!qword_27DF51FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51FC0);
  }

  return result;
}

unint64_t sub_238B15CE4()
{
  result = qword_27DF51FC8;
  if (!qword_27DF51FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51FC8);
  }

  return result;
}

unint64_t sub_238B15D3C()
{
  result = qword_27DF51FD0;
  if (!qword_27DF51FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51FD0);
  }

  return result;
}

unint64_t sub_238B15D94()
{
  result = qword_27DF51FD8;
  if (!qword_27DF51FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51FD8);
  }

  return result;
}

unint64_t sub_238B15DEC()
{
  result = qword_27DF51FE0;
  if (!qword_27DF51FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51FE0);
  }

  return result;
}

unint64_t sub_238B15E6C()
{
  result = qword_27DF51FE8;
  if (!qword_27DF51FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51FE8);
  }

  return result;
}

unint64_t sub_238B15EC0()
{
  result = qword_27DF51FF0;
  if (!qword_27DF51FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51FF0);
  }

  return result;
}

unint64_t sub_238B15F14()
{
  result = qword_27DF51FF8;
  if (!qword_27DF51FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51FF8);
  }

  return result;
}

unint64_t sub_238B15F6C()
{
  result = qword_27DF52000;
  if (!qword_27DF52000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF52000);
  }

  return result;
}

unint64_t sub_238B15FC4(uint64_t a1)
{
  result = sub_238B15FEC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_238B15FEC()
{
  result = qword_27DF52008;
  if (!qword_27DF52008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF52008);
  }

  return result;
}

unint64_t sub_238B16040()
{
  result = qword_27DF52010;
  if (!qword_27DF52010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF52010);
  }

  return result;
}

unint64_t sub_238B16098()
{
  result = qword_27DF52018;
  if (!qword_27DF52018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF52018);
  }

  return result;
}

uint64_t sub_238B160EC(uint64_t a1)
{
  *(a1 + 8) = sub_238B1A09C(&qword_27DF51678);
  result = sub_238B1A09C(&qword_27DF52020);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_238B16180()
{
  result = qword_27DF52028;
  if (!qword_27DF52028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF52028);
  }

  return result;
}

unint64_t sub_238B161D4()
{
  result = qword_27DF52030;
  if (!qword_27DF52030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF52030);
  }

  return result;
}

unint64_t sub_238B16228()
{
  result = qword_27DF52038;
  if (!qword_27DF52038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF52038);
  }

  return result;
}

unint64_t sub_238B16280(uint64_t a1)
{
  result = sub_238B162A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_238B162A8()
{
  result = qword_27DF52040;
  if (!qword_27DF52040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF52040);
  }

  return result;
}

unint64_t sub_238B162FC()
{
  result = qword_27DF52048;
  if (!qword_27DF52048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF52048);
  }

  return result;
}

unint64_t sub_238B16350(uint64_t a1)
{
  result = sub_238B16378();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_238B16378()
{
  result = qword_27DF52050;
  if (!qword_27DF52050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF52050);
  }

  return result;
}

unint64_t sub_238B163CC()
{
  result = qword_27DF52058;
  if (!qword_27DF52058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF52058);
  }

  return result;
}

unint64_t sub_238B16420(uint64_t a1)
{
  result = sub_238B16448();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_238B16448()
{
  result = qword_27DF52060;
  if (!qword_27DF52060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF52060);
  }

  return result;
}