uint64_t PackageState.description.getter()
{
  v1 = sub_1D95BFB5C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D95BFC2C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB063E0, &qword_1D95C3220);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v26 - v15;
  v17 = *v0;
  v18 = *v0 >> 62;
  if (v18 <= 1)
  {
    if (!v18)
    {
      v19 = *(v17 + 16);
      if (!v19)
      {
        return 0x6C62616C69617641;
      }

      if (v19 == 1)
      {
        return 0x6F6C6E776F646552;
      }

      return 0x657461647055;
    }

    v23 = *((v17 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    strcpy(v29, "Installing (");
    BYTE5(v29[1]) = 0;
    HIWORD(v29[1]) = -5120;
    v26[1] = v23;
    v24 = v14;
    sub_1D95BFBFC();
    sub_1D9564DB8();
    sub_1D95BFB2C();
    sub_1D95BFB4C();
    MEMORY[0x1DA732190](v5, v24);
    (*(v2 + 8))(v5, v1);
    v25 = *(v9 + 8);
    v25(v13, v24);
    sub_1D9564E0C();
    sub_1D95BFD0C();
    v25(v16, v24);
    MEMORY[0x1DA732490](v27, v28);

    MEMORY[0x1DA732490](41, 0xE100000000000000);
    return v29[0];
  }

  if (v18 == 2)
  {
    v21 = *((v17 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v29[0] = 0;
    v29[1] = 0xE000000000000000;
    sub_1D953FCB8(v21);
    sub_1D95C01BC();

    v29[0] = 0xD000000000000010;
    v29[1] = 0x80000001D95D05E0;
    v27 = v21;
    v22 = AppState.description.getter();
    MEMORY[0x1DA732490](v22);

    sub_1D9564D80(v21);
    return v29[0];
  }

  if (v17 == 0xC000000000000000)
  {
    return 0x656C6C6174736E49;
  }

  else
  {
    return 0x676E6974696157;
  }
}

uint64_t sub_1D95805FC(uint64_t a1)
{
  v2 = sub_1D95825A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9580638(uint64_t a1)
{
  v2 = sub_1D95825A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9580674()
{
  v1 = *v0;
  v2 = 0x6C62616C69617661;
  v3 = 0x646573756170;
  v4 = 0x656C6C6174736E69;
  if (v1 != 3)
  {
    v4 = 0x676E6974696177;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x696C6C6174736E69;
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

uint64_t sub_1D9580714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D95832A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D958073C(uint64_t a1)
{
  v2 = sub_1D95823FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9580778(uint64_t a1)
{
  v2 = sub_1D95823FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95807B4(uint64_t a1)
{
  v2 = sub_1D95824A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95807F0(uint64_t a1)
{
  v2 = sub_1D95824A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D958082C(uint64_t a1)
{
  v2 = sub_1D958254C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9580868(uint64_t a1)
{
  v2 = sub_1D958254C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95808A4(uint64_t a1)
{
  v2 = sub_1D95824F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95808E0(uint64_t a1)
{
  v2 = sub_1D95824F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D958091C(uint64_t a1)
{
  v2 = sub_1D9582450();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9580958(uint64_t a1)
{
  v2 = sub_1D9582450();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t PackageState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06D30, &qword_1D95C7958);
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06D38, &qword_1D95C7960);
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06D40, &qword_1D95C7968);
  v51 = *(v9 - 8);
  v52 = v9;
  v10 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v41 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06D48, &qword_1D95C7970);
  v48 = *(v12 - 8);
  v49 = v12;
  v13 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06D50, &qword_1D95C7978);
  v47 = *(v16 - 8);
  v17 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06D58, &qword_1D95C7980);
  v53 = *(v20 - 8);
  v54 = v20;
  v21 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v41 - v22;
  v24 = *v1;
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95823FC();
  sub_1D95C05BC();
  v26 = v24 >> 62;
  if ((v24 >> 62) > 1)
  {
    if (v26 == 2)
    {
      v29 = *((v24 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v59 = 2;
      sub_1D953FCB8(v29);
      sub_1D95824F8();
      v30 = v50;
      v31 = v54;
      sub_1D95C034C();
      v58 = v29;
      sub_1D9566C4C();
      v32 = v52;
      sub_1D95C03CC();
      (*(v51 + 8))(v30, v32);
      (*(v53 + 8))(v23, v31);
      return sub_1D9564D80(v29);
    }

    else
    {
      v36 = (v53 + 8);
      if (v24 == 0xC000000000000000)
      {
        v60 = 3;
        sub_1D95824A4();
        v37 = v41;
        v38 = v54;
        sub_1D95C034C();
        v40 = v42;
        v39 = v43;
      }

      else
      {
        v61 = 4;
        sub_1D9582450();
        v37 = v44;
        v38 = v54;
        sub_1D95C034C();
        v40 = v45;
        v39 = v46;
      }

      (*(v40 + 8))(v37, v39);
      return (*v36)(v23, v38);
    }
  }

  else
  {
    if (v26)
    {
      v34 = *((v24 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v57 = 1;
      sub_1D958254C();
      v28 = v54;
      sub_1D95C034C();
      v35 = v49;
      sub_1D95C03AC();
      (*(v48 + 8))(v15, v35);
    }

    else
    {
      v27 = *(v24 + 16);
      v56 = 0;
      sub_1D95825A0();
      v28 = v54;
      sub_1D95C034C();
      v55 = v27;
      sub_1D95825F4();
      sub_1D95C03CC();
      (*(v47 + 8))(v19, v16);
    }

    return (*(v53 + 8))(v23, v28);
  }
}

uint64_t PackageState.init(from:)@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v64 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06D98, &qword_1D95C7988);
  v56 = *(v59 - 8);
  v3 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v63 = &v54 - v4;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06DA0, &qword_1D95C7990);
  v58 = *(v60 - 8);
  v5 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v66 = &v54 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06DA8, &qword_1D95C7998);
  v8 = *(v7 - 8);
  v61 = v7;
  v62 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v54 - v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06DB0, &qword_1D95C79A0);
  v55 = *(v57 - 8);
  v11 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v13 = &v54 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06DB8, &qword_1D95C79A8);
  v54 = *(v14 - 8);
  v15 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v54 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06DC0, &unk_1D95C79B0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v54 - v21;
  v24 = a1[3];
  v23 = a1[4];
  v67 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v24);
  sub_1D95823FC();
  v25 = v68;
  sub_1D95C059C();
  if (v25)
  {
    goto LABEL_9;
  }

  v26 = v17;
  v68 = v14;
  v28 = v65;
  v27 = v66;
  v29 = sub_1D95C032C();
  v30 = (2 * *(v29 + 16)) | 1;
  v70 = v29;
  v71 = v29 + 32;
  v72 = 0;
  v73 = v30;
  v31 = sub_1D9542114();
  if (v31 == 5 || v72 != v73 >> 1)
  {
    v34 = sub_1D95C01FC();
    swift_allocError();
    v35 = v22;
    v37 = v36;
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D48, &qword_1D95C4250) + 48);
    *v37 = &type metadata for PackageState;
    sub_1D95C028C();
    sub_1D95C01EC();
    (*(*(v34 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v34);
    swift_willThrow();
    (*(v19 + 8))(v35, v18);
    swift_unknownObjectRelease();
LABEL_9:
    v39 = v67;
    return __swift_destroy_boxed_opaque_existential_0(v39);
  }

  if (v31 <= 1u)
  {
    if (v31)
    {
      v69 = 1;
      sub_1D958254C();
      v47 = v13;
      sub_1D95C027C();
      v50 = swift_allocObject();
      v51 = v57;
      sub_1D95C02EC();
      v53 = v52;
      (*(v55 + 8))(v47, v51);
      (*(v19 + 8))(v22, v18);
      swift_unknownObjectRelease();
      *(v50 + 16) = v53;
      v33 = v50 | 0x4000000000000000;
    }

    else
    {
      v69 = 0;
      sub_1D95825A0();
      sub_1D95C027C();
      v41 = v22;
      v33 = swift_allocObject();
      sub_1D9582648();
      v42 = v68;
      sub_1D95C030C();
      (*(v54 + 8))(v26, v42);
      (*(v19 + 8))(v41, v18);
      swift_unknownObjectRelease();
    }

    v39 = v67;
    v32 = v64;
  }

  else if (v31 == 2)
  {
    v43 = v64;
    v69 = 2;
    sub_1D95824F8();
    v44 = v28;
    sub_1D95C027C();
    v45 = v19;
    v48 = swift_allocObject();
    sub_1D9566DF0();
    v49 = v61;
    sub_1D95C030C();
    (*(v62 + 8))(v44, v49);
    (*(v45 + 8))(v22, v18);
    swift_unknownObjectRelease();
    v33 = v48 | 0x8000000000000000;
    v39 = v67;
    v32 = v43;
  }

  else
  {
    v32 = v64;
    if (v31 == 3)
    {
      v69 = 3;
      sub_1D95824A4();
      sub_1D95C027C();
      (*(v58 + 8))(v27, v60);
      (*(v19 + 8))(v22, v18);
      swift_unknownObjectRelease();
      v33 = 0xC000000000000000;
    }

    else
    {
      v69 = 4;
      sub_1D9582450();
      v46 = v63;
      sub_1D95C027C();
      (*(v56 + 8))(v46, v59);
      (*(v19 + 8))(v22, v18);
      swift_unknownObjectRelease();
      v33 = 0xC000000000000008;
    }

    v39 = v67;
  }

  *v32 = v33;
  return __swift_destroy_boxed_opaque_existential_0(v39);
}

uint64_t PackageState.Availability.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06DD0, &qword_1D95C79C0);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06DD8, &qword_1D95C79C8);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06DE0, &qword_1D95C79D0);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06DE8, &qword_1D95C79D8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D958269C();
  sub_1D95C05BC();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_1D9582744();
      v12 = v26;
      sub_1D95C034C();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_1D95826F0();
      v12 = v29;
      sub_1D95C034C();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_1D9582798();
    sub_1D95C034C();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

uint64_t PackageState.Availability.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06E10, &qword_1D95C79E0);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06E18, &qword_1D95C79E8);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06E20, &qword_1D95C79F0);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06E28, &qword_1D95C79F8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v18);
  sub_1D958269C();
  v20 = v43;
  sub_1D95C059C();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_1D95C032C();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_1D954A26C();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_1D95C01FC();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D48, &qword_1D95C4250) + 48);
      *v30 = &type metadata for PackageState.Availability;
      sub_1D95C028C();
      sub_1D95C01EC();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          sub_1D9582744();
          sub_1D95C027C();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_1D95826F0();
          v33 = v22;
          sub_1D95C027C();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_1D9582798();
        sub_1D95C027C();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v44);
}

uint64_t _s22ManagedAppDistribution12PackageStateO2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v2 == 0xC000000000000000)
      {
        if (v3 != 0xC000000000000000)
        {
          goto LABEL_16;
        }

        sub_1D9583498(0xC000000000000000);
        v11 = 0xC000000000000000;
      }

      else
      {
        if (v3 != 0xC000000000000008)
        {
          goto LABEL_16;
        }

        sub_1D9583498(0xC000000000000008);
        v11 = 0xC000000000000008;
      }

      sub_1D9583498(v11);
      v7 = 1;
      return v7 & 1;
    }

    if (v3 >> 62 == 2)
    {
      v8 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v13 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v14 = v8;
      sub_1D9583468(v3);
      sub_1D9583468(v2);
      v7 = static AppState.== infix(_:_:)(&v14, &v13);
      sub_1D9583498(v2);
      sub_1D9583498(v3);
      return v7 & 1;
    }

LABEL_16:
    sub_1D9583468(*a2);
    sub_1D9583468(v2);
    sub_1D9583498(v2);
    sub_1D9583498(v3);
    v7 = 0;
    return v7 & 1;
  }

  if (v4)
  {
    if (v3 >> 62 == 1)
    {
      v9 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v10 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1D9583468(*a2);
      sub_1D9583468(v2);
      sub_1D9583498(v2);
      sub_1D9583498(v3);
      v7 = v9 == v10;
      return v7 & 1;
    }

    goto LABEL_16;
  }

  if (v3 >> 62)
  {
    goto LABEL_16;
  }

  v5 = *(v2 + 16);
  v6 = *(v3 + 16);
  sub_1D9583468(*a2);
  sub_1D9583468(v2);
  sub_1D9583498(v2);
  sub_1D9583498(v3);
  v7 = v5 == v6;
  return v7 & 1;
}

unint64_t sub_1D95823FC()
{
  result = qword_1ECB06D60;
  if (!qword_1ECB06D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06D60);
  }

  return result;
}

unint64_t sub_1D9582450()
{
  result = qword_1ECB06D68;
  if (!qword_1ECB06D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06D68);
  }

  return result;
}

unint64_t sub_1D95824A4()
{
  result = qword_1ECB06D70;
  if (!qword_1ECB06D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06D70);
  }

  return result;
}

unint64_t sub_1D95824F8()
{
  result = qword_1ECB06D78;
  if (!qword_1ECB06D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06D78);
  }

  return result;
}

unint64_t sub_1D958254C()
{
  result = qword_1ECB06D80;
  if (!qword_1ECB06D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06D80);
  }

  return result;
}

unint64_t sub_1D95825A0()
{
  result = qword_1ECB06D88;
  if (!qword_1ECB06D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06D88);
  }

  return result;
}

unint64_t sub_1D95825F4()
{
  result = qword_1ECB06D90;
  if (!qword_1ECB06D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06D90);
  }

  return result;
}

unint64_t sub_1D9582648()
{
  result = qword_1ECB06DC8;
  if (!qword_1ECB06DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06DC8);
  }

  return result;
}

unint64_t sub_1D958269C()
{
  result = qword_1ECB06DF0;
  if (!qword_1ECB06DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06DF0);
  }

  return result;
}

unint64_t sub_1D95826F0()
{
  result = qword_1ECB06DF8;
  if (!qword_1ECB06DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06DF8);
  }

  return result;
}

unint64_t sub_1D9582744()
{
  result = qword_1ECB06E00;
  if (!qword_1ECB06E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06E00);
  }

  return result;
}

unint64_t sub_1D9582798()
{
  result = qword_1ECB06E08;
  if (!qword_1ECB06E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06E08);
  }

  return result;
}

unint64_t sub_1D95827F0()
{
  result = qword_1ECB06E30;
  if (!qword_1ECB06E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06E30);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22ManagedAppDistribution12PackageStateO(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return (*a1 >> 3) + 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1D9582860(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 8))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D95828BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1D958291C(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 3)) | 0xC000000000000000;
  }

  return result;
}

unint64_t sub_1D9582A0C()
{
  result = qword_1ECB06E38;
  if (!qword_1ECB06E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06E38);
  }

  return result;
}

unint64_t sub_1D9582A64()
{
  result = qword_1ECB06E40;
  if (!qword_1ECB06E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06E40);
  }

  return result;
}

unint64_t sub_1D9582ABC()
{
  result = qword_1ECB06E48;
  if (!qword_1ECB06E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06E48);
  }

  return result;
}

unint64_t sub_1D9582B14()
{
  result = qword_1ECB06E50;
  if (!qword_1ECB06E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06E50);
  }

  return result;
}

unint64_t sub_1D9582B6C()
{
  result = qword_1ECB06E58;
  if (!qword_1ECB06E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06E58);
  }

  return result;
}

unint64_t sub_1D9582BC4()
{
  result = qword_1ECB06E60;
  if (!qword_1ECB06E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06E60);
  }

  return result;
}

unint64_t sub_1D9582C1C()
{
  result = qword_1ECB06E68;
  if (!qword_1ECB06E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06E68);
  }

  return result;
}

unint64_t sub_1D9582C74()
{
  result = qword_1ECB06E70;
  if (!qword_1ECB06E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06E70);
  }

  return result;
}

unint64_t sub_1D9582CCC()
{
  result = qword_1ECB06E78;
  if (!qword_1ECB06E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06E78);
  }

  return result;
}

unint64_t sub_1D9582D24()
{
  result = qword_1ECB06E80;
  if (!qword_1ECB06E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06E80);
  }

  return result;
}

unint64_t sub_1D9582D7C()
{
  result = qword_1ECB06E88;
  if (!qword_1ECB06E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06E88);
  }

  return result;
}

unint64_t sub_1D9582DD4()
{
  result = qword_1ECB06E90;
  if (!qword_1ECB06E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06E90);
  }

  return result;
}

unint64_t sub_1D9582E2C()
{
  result = qword_1ECB06E98;
  if (!qword_1ECB06E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06E98);
  }

  return result;
}

unint64_t sub_1D9582E84()
{
  result = qword_1ECB06EA0;
  if (!qword_1ECB06EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06EA0);
  }

  return result;
}

unint64_t sub_1D9582EDC()
{
  result = qword_1ECB06EA8;
  if (!qword_1ECB06EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06EA8);
  }

  return result;
}

unint64_t sub_1D9582F34()
{
  result = qword_1ECB06EB0;
  if (!qword_1ECB06EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06EB0);
  }

  return result;
}

unint64_t sub_1D9582F8C()
{
  result = qword_1ECB06EB8;
  if (!qword_1ECB06EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06EB8);
  }

  return result;
}

unint64_t sub_1D9582FE4()
{
  result = qword_1ECB06EC0;
  if (!qword_1ECB06EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06EC0);
  }

  return result;
}

unint64_t sub_1D958303C()
{
  result = qword_1ECB06EC8;
  if (!qword_1ECB06EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06EC8);
  }

  return result;
}

unint64_t sub_1D9583094()
{
  result = qword_1ECB06ED0;
  if (!qword_1ECB06ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06ED0);
  }

  return result;
}

unint64_t sub_1D95830EC()
{
  result = qword_1ECB06ED8;
  if (!qword_1ECB06ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06ED8);
  }

  return result;
}

unint64_t sub_1D9583144()
{
  result = qword_1ECB06EE0;
  if (!qword_1ECB06EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06EE0);
  }

  return result;
}

unint64_t sub_1D958319C()
{
  result = qword_1ECB06EE8;
  if (!qword_1ECB06EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06EE8);
  }

  return result;
}

unint64_t sub_1D95831F4()
{
  result = qword_1ECB06EF0;
  if (!qword_1ECB06EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06EF0);
  }

  return result;
}

unint64_t sub_1D958324C()
{
  result = qword_1ECB06EF8;
  if (!qword_1ECB06EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06EF8);
  }

  return result;
}

uint64_t sub_1D95832A0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065 || (sub_1D95C041C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696C6C6174736E69 && a2 == 0xEA0000000000676ELL || (sub_1D95C041C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646573756170 && a2 == 0xE600000000000000 || (sub_1D95C041C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C6C6174736E69 && a2 == 0xE900000000000064 || (sub_1D95C041C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E6974696177 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v5 = sub_1D95C041C();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_1D9583468(unint64_t result)
{
  if ((result >> 62) <= 2)
  {
  }

  return result;
}

unint64_t sub_1D9583498(unint64_t result)
{
  if ((result >> 62) <= 2)
  {
  }

  return result;
}

uint64_t DDMPollForUpdatesRequest.init(isUserInitiated:shouldInitiateUpdates:)@<X0>(uint64_t result@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t DDMPollForUpdatesRequest.request()()
{
  *(v1 + 24) = *v0;
  *(v1 + 25) = v0[1];
  return MEMORY[0x1EEE6DFA0](sub_1D9583560, 0, 0);
}

uint64_t sub_1D9583560()
{
  if (qword_1EDCFA278 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 25);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  if (v1)
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  *v3 = v0;
  v3[1] = sub_1D955C654;

  return sub_1D9550940(1, v4 | v2, sub_1D95837C4, 0);
}

uint64_t DDMPollForUpdatesRequest.send(to:)(char a1)
{
  v2[24] = a1;
  v2[25] = *v1;
  v2[26] = v1[1];
  return MEMORY[0x1EEE6DFA0](sub_1D95836A4, 0, 0);
}

uint64_t sub_1D95836A4()
{
  if (*(v0 + 24))
  {
    __break(1u);
  }

  else if (qword_1EDCFA278 == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  v1 = *(v0 + 26);
  v2 = *(v0 + 25);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  if (v1)
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  *v3 = v0;
  v3[1] = sub_1D955BACC;

  return sub_1D9550940(1, v4 | v2, sub_1D95837C4, 0);
}

void sub_1D95837C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D95BFBBC();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D95A3C64;
  v10[3] = &block_descriptor_10;
  v9 = _Block_copy(v10);

  [a1 pollForMediaAPIUpdates:v8 reply:v9];
  _Block_release(v9);
}

unint64_t sub_1D95838A0()
{
  if (*v0)
  {
    result = 0xD000000000000015;
  }

  else
  {
    result = 0x6E49726573557369;
  }

  *v0;
  return result;
}

uint64_t sub_1D95838EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E49726573557369 && a2 == 0xEF64657461697469;
  if (v6 || (sub_1D95C041C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D95D08C0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D95C041C();

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

uint64_t sub_1D95839D8(uint64_t a1)
{
  v2 = sub_1D9583DB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9583A14(uint64_t a1)
{
  v2 = sub_1D9583DB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DDMPollForUpdatesRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06F00, &qword_1D95C8570);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v13 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D9583DB8();
  sub_1D95C05BC();
  v15 = 0;
  sub_1D95C039C();
  if (!v2)
  {
    v14 = 1;
    sub_1D95C039C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t DDMPollForUpdatesRequest.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06F10, &qword_1D95C8578);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D9583DB8();
  sub_1D95C059C();
  if (!v2)
  {
    v16 = 0;
    v11 = sub_1D95C02DC();
    v15 = 1;
    v13 = sub_1D95C02DC();
    (*(v6 + 8))(v9, v5);
    *a2 = v11 & 1;
    a2[1] = v13 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1D9583DB8()
{
  result = qword_1ECB06F08;
  if (!qword_1ECB06F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06F08);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DDMPollForUpdatesRequest(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for DDMPollForUpdatesRequest(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

unint64_t sub_1D9583F90()
{
  result = qword_1ECB06F18;
  if (!qword_1ECB06F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06F18);
  }

  return result;
}

unint64_t sub_1D9583FE8()
{
  result = qword_1ECB06F20;
  if (!qword_1ECB06F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06F20);
  }

  return result;
}

unint64_t sub_1D9584040()
{
  result = qword_1ECB06F28;
  if (!qword_1ECB06F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06F28);
  }

  return result;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D95840AC()
{
  v1 = 0x6574617267696DLL;
  v2 = 0xD000000000000025;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000020;
  }

  if (*v0)
  {
    v1 = 0x7465736572;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D958412C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9585F4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9584154(uint64_t a1)
{
  v2 = sub_1D958486C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9584190(uint64_t a1)
{
  v2 = sub_1D958486C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95841CC(uint64_t a1)
{
  v2 = sub_1D95848C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9584208(uint64_t a1)
{
  v2 = sub_1D95848C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9584244(uint64_t a1)
{
  v2 = sub_1D9584914();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9584280(uint64_t a1)
{
  v2 = sub_1D9584914();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95842BC(uint64_t a1)
{
  v2 = sub_1D95849BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95842F8(uint64_t a1)
{
  v2 = sub_1D95849BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9584334(uint64_t a1)
{
  v2 = sub_1D9584968();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9584370(uint64_t a1)
{
  v2 = sub_1D9584968();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DiagnosticRequestType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06F30, &qword_1D95C8720);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v30 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06F38, &qword_1D95C8728);
  v35 = *(v6 - 8);
  v36 = v6;
  v7 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06F40, &qword_1D95C8730);
  v33 = *(v10 - 8);
  v34 = v10;
  v11 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v32 = &v30 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06F48, &qword_1D95C8738);
  v30 = *(v13 - 8);
  v31 = v13;
  v14 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - v15;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06F50, &qword_1D95C8740);
  v17 = *(v41 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v20 = &v30 - v19;
  v21 = *v1;
  *&v40 = v1[1];
  *(&v40 + 1) = v21;
  v22 = *(v1 + 16);
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D958486C();
  sub_1D95C05BC();
  if (v22)
  {
    if (v22 == 1)
    {
      v45 = 3;
      sub_1D95848C0();
      v24 = v37;
      v25 = v41;
      sub_1D95C034C();
      v26 = v39;
      sub_1D95C038C();
      (*(v38 + 8))(v24, v26);
    }

    else if (v40 == 0)
    {
      v42 = 0;
      sub_1D95849BC();
      v25 = v41;
      sub_1D95C034C();
      (*(v30 + 8))(v16, v31);
    }

    else
    {
      v43 = 1;
      sub_1D9584968();
      v28 = v32;
      v25 = v41;
      sub_1D95C034C();
      (*(v33 + 8))(v28, v34);
    }
  }

  else
  {
    v44 = 2;
    sub_1D9584914();
    v25 = v41;
    sub_1D95C034C();
    v27 = v36;
    sub_1D95C038C();
    (*(v35 + 8))(v9, v27);
  }

  return (*(v17 + 8))(v20, v25);
}

unint64_t sub_1D958486C()
{
  result = qword_1ECB06F58;
  if (!qword_1ECB06F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06F58);
  }

  return result;
}

unint64_t sub_1D95848C0()
{
  result = qword_1ECB06F60;
  if (!qword_1ECB06F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06F60);
  }

  return result;
}

unint64_t sub_1D9584914()
{
  result = qword_1ECB06F68;
  if (!qword_1ECB06F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06F68);
  }

  return result;
}

unint64_t sub_1D9584968()
{
  result = qword_1ECB06F70;
  if (!qword_1ECB06F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06F70);
  }

  return result;
}

unint64_t sub_1D95849BC()
{
  result = qword_1ECB06F78;
  if (!qword_1ECB06F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06F78);
  }

  return result;
}

uint64_t DiagnosticRequestType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06F80, &qword_1D95C8748);
  v55 = *(v59 - 8);
  v3 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v49 - v4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06F88, &qword_1D95C8750);
  v56 = *(v51 - 8);
  v5 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v57 = &v49 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06F90, &qword_1D95C8758);
  v53 = *(v7 - 8);
  v54 = v7;
  v8 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v49 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06F98, &qword_1D95C8760);
  v52 = *(v11 - 8);
  v12 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v49 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06FA0, &unk_1D95C8768);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v49 - v18;
  v21 = a1[3];
  v20 = a1[4];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v21);
  sub_1D958486C();
  v22 = v61;
  sub_1D95C059C();
  if (!v22)
  {
    v23 = v14;
    v49 = v11;
    v50 = 0;
    v24 = v10;
    v26 = v57;
    v25 = v58;
    v61 = v16;
    v27 = v59;
    v28 = v60;
    v29 = sub_1D95C032C();
    v30 = (2 * *(v29 + 16)) | 1;
    v63 = v29;
    v64 = v29 + 32;
    v65 = 0;
    v66 = v30;
    v31 = sub_1D954A270();
    if (v31 == 4 || v65 != v66 >> 1)
    {
      v36 = v15;
      v37 = sub_1D95C01FC();
      swift_allocError();
      v39 = v38;
      v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D48, &qword_1D95C4250) + 48);
      *v39 = &type metadata for DiagnosticRequestType;
      sub_1D95C028C();
      sub_1D95C01EC();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
      swift_willThrow();
      (*(v61 + 8))(v19, v36);
LABEL_9:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0(v62);
    }

    if (v31 <= 1u)
    {
      if (v31)
      {
        v67 = 1;
        sub_1D9584968();
        v45 = v50;
        sub_1D95C027C();
        if (!v45)
        {
          (*(v53 + 8))(v24, v54);
          (*(v61 + 8))(v19, v15);
          swift_unknownObjectRelease();
          v34 = 0;
          v35 = 2;
          v33 = 1;
          goto LABEL_21;
        }
      }

      else
      {
        v67 = 0;
        sub_1D95849BC();
        v32 = v50;
        sub_1D95C027C();
        if (!v32)
        {
          (*(v52 + 8))(v23, v49);
          (*(v61 + 8))(v19, v15);
          swift_unknownObjectRelease();
          v33 = 0;
          v34 = 0;
          v35 = 2;
LABEL_21:
          *v28 = v33;
          *(v28 + 8) = v34;
          *(v28 + 16) = v35;
          return __swift_destroy_boxed_opaque_existential_0(v62);
        }
      }

      v42 = v61;
LABEL_16:
      (*(v42 + 8))(v19, v15);
      goto LABEL_9;
    }

    v42 = v61;
    if (v31 == 2)
    {
      v67 = 2;
      sub_1D9584914();
      v43 = v50;
      sub_1D95C027C();
      if (!v43)
      {
        v54 = v15;
        v44 = v51;
        v33 = sub_1D95C02CC();
        v34 = v47;
        (*(v56 + 8))(v26, v44);
        (*(v42 + 8))(v19, v54);
        swift_unknownObjectRelease();
        v35 = 0;
        goto LABEL_21;
      }

      goto LABEL_16;
    }

    v67 = 3;
    sub_1D95848C0();
    v46 = v50;
    sub_1D95C027C();
    if (!v46)
    {
      v54 = v15;
      v33 = sub_1D95C02CC();
      v34 = v48;
      (*(v55 + 8))(v25, v27);
      (*(v42 + 8))(v19, v54);
      swift_unknownObjectRelease();
      v35 = 1;
      goto LABEL_21;
    }

    (*(v42 + 8))(v19, v15);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v62);
}

uint64_t DiagnosticRequest.requestType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1D955AEB0(v2, v3, v4);
}

__n128 DiagnosticRequest.init(_:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  return result;
}

uint64_t DiagnosticRequest.request()()
{
  *(v1 + 16) = *v0;
  *(v1 + 40) = *(v0 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1D9585220, 0, 0);
}

uint64_t sub_1D9585220()
{
  if (qword_1EDCFA278 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1D9568BBC;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);

  return sub_1D95512B0(1, v2, v3, v4, sub_1D958531C, 0);
}

void sub_1D958531C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D95BFBBC();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D95A3C64;
  v10[3] = &block_descriptor_11;
  v9 = _Block_copy(v10);

  [a1 handleDiagnostics:v8 reply:v9];
  _Block_release(v9);
}

uint64_t sub_1D95853F8(uint64_t a1)
{
  v2 = sub_1D9585790();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9585434(uint64_t a1)
{
  v2 = sub_1D9585790();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DiagnosticRequest.encode(to:)(void *a1)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06FA8, &qword_1D95C8780);
  v3 = *(v13 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v6 = &v13 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = a1[4];
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D955AEB0(v7, v8, v10);
  sub_1D9585790();
  sub_1D95C05BC();
  v14 = v7;
  v15 = v8;
  v16 = v10;
  sub_1D95857E4();
  v11 = v13;
  sub_1D95C03CC();
  sub_1D955AEC8(v14, v15, v16);
  return (*(v3 + 8))(v6, v11);
}

uint64_t DiagnosticRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06FC0, &qword_1D95C8788);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D9585790();
  sub_1D95C059C();
  if (!v2)
  {
    sub_1D9585838();
    sub_1D95C030C();
    (*(v6 + 8))(v9, v5);
    v11 = v14;
    *a2 = v13;
    *(a2 + 16) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1D9585790()
{
  result = qword_1ECB06FB0;
  if (!qword_1ECB06FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06FB0);
  }

  return result;
}

unint64_t sub_1D95857E4()
{
  result = qword_1ECB06FB8;
  if (!qword_1ECB06FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06FB8);
  }

  return result;
}

unint64_t sub_1D9585838()
{
  result = qword_1ECB06FC8;
  if (!qword_1ECB06FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06FC8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22ManagedAppDistribution21DiagnosticRequestTypeO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1D95858A8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1D95858D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D9585918(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1D95859D0()
{
  result = qword_1ECB06FD0;
  if (!qword_1ECB06FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06FD0);
  }

  return result;
}

unint64_t sub_1D9585A28()
{
  result = qword_1ECB06FD8;
  if (!qword_1ECB06FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06FD8);
  }

  return result;
}

unint64_t sub_1D9585A80()
{
  result = qword_1ECB06FE0;
  if (!qword_1ECB06FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06FE0);
  }

  return result;
}

unint64_t sub_1D9585AD8()
{
  result = qword_1ECB06FE8;
  if (!qword_1ECB06FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06FE8);
  }

  return result;
}

unint64_t sub_1D9585B30()
{
  result = qword_1ECB06FF0;
  if (!qword_1ECB06FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06FF0);
  }

  return result;
}

unint64_t sub_1D9585B88()
{
  result = qword_1ECB06FF8;
  if (!qword_1ECB06FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06FF8);
  }

  return result;
}

unint64_t sub_1D9585BE0()
{
  result = qword_1ECB07000;
  if (!qword_1ECB07000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07000);
  }

  return result;
}

unint64_t sub_1D9585C38()
{
  result = qword_1ECB07008;
  if (!qword_1ECB07008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07008);
  }

  return result;
}

unint64_t sub_1D9585C90()
{
  result = qword_1ECB07010;
  if (!qword_1ECB07010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07010);
  }

  return result;
}

unint64_t sub_1D9585CE8()
{
  result = qword_1ECB07018;
  if (!qword_1ECB07018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07018);
  }

  return result;
}

unint64_t sub_1D9585D40()
{
  result = qword_1ECB07020;
  if (!qword_1ECB07020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07020);
  }

  return result;
}

unint64_t sub_1D9585D98()
{
  result = qword_1ECB07028;
  if (!qword_1ECB07028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07028);
  }

  return result;
}

unint64_t sub_1D9585DF0()
{
  result = qword_1ECB07030;
  if (!qword_1ECB07030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07030);
  }

  return result;
}

unint64_t sub_1D9585E48()
{
  result = qword_1ECB07038;
  if (!qword_1ECB07038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07038);
  }

  return result;
}

unint64_t sub_1D9585EA0()
{
  result = qword_1ECB07040;
  if (!qword_1ECB07040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07040);
  }

  return result;
}

unint64_t sub_1D9585EF8()
{
  result = qword_1ECB07048;
  if (!qword_1ECB07048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07048);
  }

  return result;
}

uint64_t sub_1D9585F4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574617267696DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1D95C041C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7465736572 && a2 == 0xE500000000000000 || (sub_1D95C041C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000025 && 0x80000001D95D08E0 == a2 || (sub_1D95C041C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001D95D0910 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D95C041C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t ManagedAppLibrary.ManagedApps.AsyncIterator.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D955B7C8, 0, 0);
}

uint64_t ManagedAppLibrary.ManagedApps.AsyncIterator.next(isolation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v13 = (v8 + *v8);
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1D955BACC;

  return v13(a1, a2, a3);
}

uint64_t _s22ManagedAppDistribution0aB7LibraryC13availableAppsAC0aF0Vvg_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07088, &qword_1D95C9078);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = (&v9 - v3);
  v5 = [objc_opt_self() processInfo];
  v6 = [v5 isiOSAppOnMac];

  v7 = (v1 + 104);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07080, &qword_1D95C9038);
    (*v7)(v4, *MEMORY[0x1E69E8650], v0);
  }

  else
  {
    *v4 = 1;
    (*v7)(v4, *MEMORY[0x1E69E8640], v0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07080, &qword_1D95C9038);
  }

  return sub_1D95C002C();
}

uint64_t sub_1D95863D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07090, &qword_1D95C9080);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - v3;
  if (qword_1EDCF9BB8 != -1)
  {
    swift_once();
  }

  v5 = sub_1D95BFC8C();
  __swift_project_value_buffer(v5, qword_1EDCF9BC0);
  v6 = sub_1D95BFC6C();
  v7 = sub_1D95C009C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1D953A000, v6, v7, "Managed App Distribution is not available for iOS / iPadOS apps running on macOS", v8, 2u);
    MEMORY[0x1DA733200](v8, -1, -1);
  }

  v10 = 3;
  v11 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07098, &unk_1D95C9360);
  sub_1D95BFFBC();
  (*(v1 + 8))(v4, v0);
  return sub_1D95BFFCC();
}

uint64_t sub_1D95865A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07098, &unk_1D95C9360);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - v5;
  if (qword_1ECB05B98 != -1)
  {
    swift_once();
  }

  v7 = qword_1ECB20790 + OBJC_IVAR____TtC22ManagedAppDistribution22ManagedAppLibraryCache_lockedStorage;
  os_unfair_lock_lock((qword_1ECB20790 + OBJC_IVAR____TtC22ManagedAppDistribution22ManagedAppLibraryCache_lockedStorage));
  sub_1D958B6E8((v7 + 8), a1);
  os_unfair_lock_unlock(v7);
  (*(v3 + 16))(v6, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v6, v2);
  return sub_1D95BFFAC();
}

void sub_1D958674C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB070A0, &qword_1D95C9088);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v9 - v5;
  if (qword_1ECB05B98 != -1)
  {
    swift_once();
  }

  v7 = qword_1ECB20790 + OBJC_IVAR____TtC22ManagedAppDistribution22ManagedAppLibraryCache_lockedStorage;
  os_unfair_lock_lock((qword_1ECB20790 + OBJC_IVAR____TtC22ManagedAppDistribution22ManagedAppLibraryCache_lockedStorage));
  v8 = *(v7 + 8);
  swift_beginAccess();
  sub_1D95AE5F4(a2, v6);
  sub_1D9586DFC(v6);
  swift_endAccess();
  os_unfair_lock_unlock(v7);
}

uint64_t ManagedAppLibrary.ManagedApps.makeAsyncIterator()@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07050, &unk_1D95C9350);
  v2 = swift_allocBox();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07058, &qword_1D95C8F70);
  result = sub_1D95BFFEC();
  *a1 = &unk_1D95C8F80;
  a1[1] = v2;
  return result;
}

uint64_t sub_1D95868CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v3[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07050, &unk_1D95C9350);
  v3[9] = swift_projectBox();
  if (a2)
  {
    swift_getObjectType();
    v5 = sub_1D95BFF2C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1D955C020, v5, v7);
}

uint64_t sub_1D9586990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D955C654;

  return sub_1D95868CC(a1, a2, a3);
}

unint64_t sub_1D9586A48()
{
  result = qword_1ECB07060;
  if (!qword_1ECB07060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07060);
  }

  return result;
}

uint64_t sub_1D9586A9C@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07050, &unk_1D95C9350);
  v3 = swift_allocBox();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07058, &qword_1D95C8F70);
  sub_1D95BFFEC();
  result = sub_1D9586C70(v1);
  *a1 = &unk_1D95C9070;
  a1[1] = v3;
  return result;
}

uint64_t type metadata accessor for ManagedAppLibrary.ManagedApps()
{
  result = qword_1ECB07068;
  if (!qword_1ECB07068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D9586B90()
{
  sub_1D9586BFC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D9586BFC()
{
  if (!qword_1ECB07078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB07080, &qword_1D95C9038);
    v0 = sub_1D95C001C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECB07078);
    }
  }
}

uint64_t sub_1D9586C70(uint64_t a1)
{
  v2 = type metadata accessor for ManagedAppLibrary.ManagedApps();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9586CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D955BACC;

  return sub_1D95868CC(a1, a2, a3);
}

void sub_1D9586D80(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07098, &unk_1D95C9360) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1D958674C(a1, v4);
}

uint64_t sub_1D9586DFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB070A0, &qword_1D95C9088);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t InstallEnterpriseManifestRequest.manifestURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D95BFBAC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t InstallEnterpriseManifestRequest.manifestURL.setter(uint64_t a1)
{
  v3 = sub_1D95BFBAC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t InstallEnterpriseManifestRequest.init(manifestURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D95BFBAC();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1D9586FE0()
{
  if (qword_1EDCFA278 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1D95870D8;
  v2 = *(v0 + 16);

  return sub_1D9551B5C(1, v2, sub_1D95871CC, 0);
}

uint64_t sub_1D95870D8()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_1D95871CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D95BFBBC();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D95A3C64;
  v10[3] = &block_descriptor_12;
  v9 = _Block_copy(v10);

  [a1 installEnterpriseManifest:v8 reply:v9];
  _Block_release(v9);
}

uint64_t sub_1D95872C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74736566696E616DLL && a2 == 0xEB000000004C5255)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D95C041C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9587354(uint64_t a1)
{
  v2 = sub_1D9587918();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9587390(uint64_t a1)
{
  v2 = sub_1D9587918();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InstallEnterpriseManifestRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB070A8, &qword_1D95C9098);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D9587918();
  sub_1D95C05BC();
  sub_1D95BFBAC();
  sub_1D956C888(&qword_1ECB05E10);
  sub_1D95C03CC();
  return (*(v3 + 8))(v6, v2);
}

uint64_t InstallEnterpriseManifestRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_1D95BFBAC();
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB070B8, &qword_1D95C90A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - v9;
  v11 = type metadata accessor for InstallEnterpriseManifestRequest();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D9587918();
  v16 = v23;
  sub_1D95C059C();
  if (!v16)
  {
    v17 = v21;
    sub_1D956C888(&qword_1ECB05E88);
    sub_1D95C030C();
    (*(v7 + 8))(v10, v6);
    (*(v17 + 32))(v14, v22, v3);
    sub_1D95879B8(v14, v20);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1D95877B4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB070A8, &qword_1D95C9098);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D9587918();
  sub_1D95C05BC();
  sub_1D95BFBAC();
  sub_1D956C888(&qword_1ECB05E10);
  sub_1D95C03CC();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1D9587918()
{
  result = qword_1ECB070B0;
  if (!qword_1ECB070B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB070B0);
  }

  return result;
}

uint64_t type metadata accessor for InstallEnterpriseManifestRequest()
{
  result = qword_1ECB070C0;
  if (!qword_1ECB070C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D95879B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InstallEnterpriseManifestRequest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9587A44()
{
  result = sub_1D95BFBAC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D9587AC4()
{
  result = qword_1ECB070D0;
  if (!qword_1ECB070D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB070D0);
  }

  return result;
}

unint64_t sub_1D9587B1C()
{
  result = qword_1ECB070D8;
  if (!qword_1ECB070D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB070D8);
  }

  return result;
}

unint64_t sub_1D9587B74()
{
  result = qword_1ECB070E0;
  if (!qword_1ECB070E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB070E0);
  }

  return result;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t ServiceConnection.withAsyncService<A>(argument:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06080, &unk_1D95C9250);
  sub_1D9588970(&qword_1ECB070E8);
  sub_1D9588970(&qword_1ECB070F0);
  *v11 = v5;
  v11[1] = sub_1D9587D48;

  return ServiceConnection.withAsyncService<A, B>(retryCount:argument:body:)(v5 + 32, 1, a1, a2, a3, a4, v12, a5);
}

uint64_t sub_1D9587D48()
{
  v2 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 24) = v0;

  if (v0)
  {
    v3 = sub_1D9587E74;
  }

  else
  {
    v3 = sub_1D9587E5C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

void ServiceConnection.withSyncService<A>(argument:body:)(uint64_t a1, void (*a2)(uint64_t, uint64_t, unint64_t, uint64_t (*)(uint64_t a1, uint64_t a2), void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06080, &unk_1D95C9250);
  v13 = sub_1D9588970(&qword_1ECB070E8);
  v14 = sub_1D9588970(&qword_1ECB070F0);
  ServiceConnection.withSyncService<A, B>(retryCount:argument:body:)(1, a1, a2, a3, a4, v12, a5, a6, &v15, v13, v14);
}

uint64_t ServiceConnection.withAsyncService<A, B>(retryCount:argument:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v8;
  *(v9 + 104) = v20;
  *(v9 + 112) = v10;
  *(v9 + 88) = v19;
  *(v9 + 72) = a7;
  *(v9 + 80) = a8;
  *(v9 + 56) = a5;
  *(v9 + 64) = a6;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  *(v9 + 120) = *v10;
  v12 = sub_1D95BFA3C();
  *(v9 + 128) = v12;
  v13 = *(v12 - 8);
  *(v9 + 136) = v13;
  v14 = *(v13 + 64) + 15;
  *(v9 + 144) = swift_task_alloc();
  v15 = *(a7 - 8);
  *(v9 + 152) = v15;
  v16 = *(v15 + 64) + 15;
  *(v9 + 160) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D95880DC, 0, 0);
}

uint64_t sub_1D95880DC()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = encodeXPCValues<A>(_:)(*(v0 + 40), *(v0 + 64));
  *(v0 + 168) = v3;
  *(v0 + 176) = v4;
  v5 = v3;
  v6 = v4;
  v7 = *(v0 + 120);
  v8 = *(*(v0 + 112) + 16);
  v9 = swift_task_alloc();
  *(v0 + 184) = v9;
  v10 = *(v0 + 80);
  v11 = *(v0 + 96);
  v12 = *(v0 + 48);
  *(v9 + 16) = *(v0 + 64);
  *(v9 + 32) = v10;
  *(v9 + 48) = v11;
  *(v9 + 64) = v8;
  *(v9 + 72) = v12;
  *(v9 + 88) = v5;
  *(v9 + 96) = v6;
  *(v9 + 104) = v7;
  v13 = *(MEMORY[0x1E69E8920] + 4);
  v14 = swift_task_alloc();
  *(v0 + 192) = v14;
  *v14 = v0;
  v14[1] = sub_1D9588278;
  v15 = *(v0 + 160);
  v16 = *(v0 + 72);

  return MEMORY[0x1EEE6DE38](v15, 0, 0, 0xD00000000000002BLL, 0x80000001D95D0320, sub_1D95898D4, v9, v16);
}

uint64_t sub_1D9588278()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = sub_1D958843C;
  }

  else
  {
    v5 = *(v2 + 184);

    v4 = sub_1D9588394;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D9588394()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[9];
  v4 = v0[3];
  sub_1D955AA18(v0[21], v0[22]);
  (*(v2 + 32))(v4, v1, v3);
  v5 = v0[20];
  v6 = v0[18];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D958843C()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 128);
  v6 = *(v0 + 32);

  v7 = v1;
  sub_1D95BFA2C();
  sub_1D955A96C();
  v8 = sub_1D95BFA7C();

  (*(v4 + 8))(v3, v5);
  v9 = *(v0 + 200);
  if ((v8 & 1) != 0 && v6)
  {

    if (qword_1EDCFA2C8 != -1)
    {
      swift_once();
    }

    v10 = sub_1D95BFC8C();
    __swift_project_value_buffer(v10, qword_1EDCFA2D0);
    v11 = sub_1D95BFC6C();
    v12 = sub_1D95C009C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D953A000, v11, v12, "Connection interrupted, retrying request", v13, 2u);
      MEMORY[0x1DA733200](v13, -1, -1);
    }

    v14 = *(v0 + 32);

    v15 = swift_task_alloc();
    *(v0 + 208) = v15;
    *v15 = v0;
    v15[1] = sub_1D958876C;
    v16 = *(v0 + 112);
    v17 = *(v0 + 72);
    v18 = *(v0 + 80);
    v19 = *(v0 + 56);
    v20 = *(v0 + 64);
    v21 = *(v0 + 40);
    v22 = *(v0 + 48);
    v23 = *(v0 + 24);
    v38 = *(v0 + 104);
    v37 = *(v0 + 88);

    return ServiceConnection.withAsyncService<A, B>(retryCount:argument:body:)(v23, v14 - 1, v21, v22, v19, v20, v17, v18);
  }

  else
  {
    *(v0 + 16) = v9;
    v25 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
    v26 = swift_dynamicCast();
    v27 = *(v0 + 200);
    v28 = *(v0 + 168);
    v29 = *(v0 + 176);
    if (v26)
    {

      v30 = *(v0 + 224);
      sub_1D955A9C4();
      swift_allocError();
      *v31 = v30;
      swift_willThrow();
      sub_1D955AA18(v28, v29);
    }

    else
    {

      sub_1D955A9C4();
      swift_allocError();
      *v32 = 0;
      swift_willThrow();

      sub_1D955AA18(v28, v29);
    }

    v33 = *(v0 + 160);
    v34 = *(v0 + 144);

    v35 = *(v0 + 8);

    return v35();
  }
}

uint64_t sub_1D958876C()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_1D95888F8;
  }

  else
  {
    v3 = sub_1D9588880;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D9588880()
{
  sub_1D955AA18(v0[21], v0[22]);
  v1 = v0[20];
  v2 = v0[18];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D95888F8()
{
  sub_1D955AA18(v0[21], v0[22]);
  v1 = v0[27];
  v2 = v0[20];
  v3 = v0[18];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D9588970(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB06080, &unk_1D95C9250);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void ServiceConnection.withSyncService<A, B>(retryCount:argument:body:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t, unint64_t, uint64_t (*)(uint64_t a1, uint64_t a2), void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v52 = a3;
  v12 = v11;
  v49 = a4;
  v54 = a2;
  v45 = a1;
  v42 = a9;
  v47 = *v12;
  v48 = sub_1D95BFA3C();
  v44 = *(v48 - 8);
  v17 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v43 = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB06030, &qword_1D95C2370);
  v38 = sub_1D95C056C();
  v20 = *(*(v38 - 1) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v46 = v37 - v21;
  v41 = a6;
  v39 = v19;
  type metadata accessor for SyncXPCResult();
  v22 = SyncXPCResult.__allocating_init()();
  v40 = v12;
  v23 = v12[2];
  v24 = swift_allocObject();
  v24[2] = a5;
  v24[3] = a7;
  v24[4] = a8;
  v24[5] = a10;
  v50 = a11;
  v51 = a10;
  v24[6] = a11;
  v24[7] = v22;
  aBlock[4] = sub_1D958A964;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9589AB4;
  aBlock[3] = &block_descriptor_13;
  v25 = _Block_copy(aBlock);

  v26 = [v23 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v25);
  sub_1D95C00EC();
  swift_unknownObjectRelease();
  sub_1D953F4E4(v56, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06040, &unk_1D95C5B20);
  if (swift_dynamicCast())
  {
    v27 = v56[6];
    v28 = v53;
    v29 = encodeXPCValues<A>(_:)(v54, a5);
    if (v28)
    {
      __swift_destroy_boxed_opaque_existential_0(v56);
      swift_unknownObjectRelease();
    }

    else
    {
      v32 = v30;
      v33 = v29;
      v34 = swift_allocObject();
      v37[1] = a5;
      v34[2] = a5;
      v34[3] = a7;
      v37[2] = a7;
      v37[3] = a8;
      v35 = v50;
      v36 = v51;
      v34[4] = a8;
      v34[5] = v36;
      v34[6] = v35;
      v34[7] = v22;
      v34[8] = v47;

      v47 = v33;
      v53 = v32;
      v52(v27, v33, v32, sub_1D958A98C, v34);

      SyncXPCResult.result.getter(v46);
      sub_1D958A894(v38, aBlock, v42);
      __swift_destroy_boxed_opaque_existential_0(v56);

      sub_1D955AA18(v47, v53);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1D955A9C4();
    swift_allocError();
    *v31 = 0;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_0(v56);
  }
}

void sub_1D9589114()
{
  if (qword_1EDCFA1A0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDCFA1A8;
  type metadata accessor for ServiceConnection();
  swift_allocObject();
  v1 = v0;
  v2 = sub_1D958A9C0(0xD000000000000025, 0x80000001D95D0940, v0);

  qword_1EDCFA280 = v2;
}

uint64_t ServiceConnection.__allocating_init()()
{
  if (qword_1EDCFA1A0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDCFA1A8;
  swift_allocObject();
  v1 = v0;
  v2 = sub_1D958A9C0(0xD000000000000025, 0x80000001D95D0940, v0);

  return v2;
}

uint64_t static ServiceConnection.shared.getter()
{
  if (qword_1EDCFA278 != -1)
  {
    swift_once();
  }
}

uint64_t ServiceConnection.__allocating_init(machServiceName:exportedObject:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_allocObject();
  v6 = sub_1D958A9C0(a1, a2, a3);

  return v6;
}

uint64_t ServiceConnection.init(machServiceName:exportedObject:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1D958A9C0(a1, a2, a3);

  return v4;
}

uint64_t sub_1D9589360(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_1D95893B0(const char *a1)
{
  if (qword_1EDCFA2C8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D95BFC8C();
  __swift_project_value_buffer(v2, qword_1EDCFA2D0);
  oslog = sub_1D95BFC6C();
  v3 = sub_1D95C009C();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D953A000, oslog, v3, a1, v4, 2u);
    MEMORY[0x1DA733200](v4, -1, -1);
  }
}

uint64_t ServiceConnection.deinit()
{
  [*(v0 + 16) invalidate];

  return v0;
}

uint64_t ServiceConnection.__deallocating_deinit()
{
  [*(v0 + 16) invalidate];

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1D9589518(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(uint64_t a1, uint64_t a2), char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v42 = a7;
  v43 = a5;
  v44 = a6;
  v45 = a4;
  v46 = a3;
  v47 = a2;
  v49 = a13;
  v50 = a8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB06030, &qword_1D95C2370);
  v14 = sub_1D95BFF6C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v37 - v17;
  v19 = *(v15 + 16);
  v48 = a1;
  v37[2] = v15 + 16;
  v37[0] = v19;
  v19(v37 - v17, a1, v14);
  v20 = (*(v15 + 80) + 64) & ~*(v15 + 80);
  v21 = v20 + v16;
  v37[1] = *(v15 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = v50;
  *(v22 + 3) = a9;
  v38 = a9;
  v39 = a10;
  *(v22 + 4) = a10;
  *(v22 + 5) = a11;
  v40 = a11;
  v41 = a12;
  v23 = v49;
  *(v22 + 6) = a12;
  *(v22 + 7) = v23;
  v24 = *(v15 + 32);
  v24(&v22[v20], v18, v14);
  aBlock[4] = sub_1D958ACFC;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9589AB4;
  aBlock[3] = &block_descriptor_20;
  v25 = _Block_copy(aBlock);

  v26 = [v47 remoteObjectProxyWithErrorHandler_];
  _Block_release(v25);
  sub_1D95C00EC();
  swift_unknownObjectRelease();
  sub_1D953F4E4(aBlock, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06040, &unk_1D95C5B20);
  if (swift_dynamicCast())
  {
    v27 = v51;
    (v37[0])(v18, v48, v14);
    v28 = (v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    v30 = v38;
    *(v29 + 2) = v50;
    *(v29 + 3) = v30;
    v31 = v40;
    *(v29 + 4) = v39;
    *(v29 + 5) = v31;
    v32 = v49;
    *(v29 + 6) = v41;
    *(v29 + 7) = v32;
    v24(&v29[v20], v18, v14);
    v33 = v43;
    *&v29[v28] = v42;
    v46(v27, v33, v44, sub_1D958ADCC, v29);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1D955A9C4();
    v34 = swift_allocError();
    *v35 = 0;
    v52[0] = v34;
    sub_1D95BFF4C();
  }

  return __swift_destroy_boxed_opaque_existential_0(aBlock);
}

uint64_t sub_1D9589918(void *a1)
{
  if (qword_1EDCFA2C8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D95BFC8C();
  __swift_project_value_buffer(v2, qword_1EDCFA2D0);
  v3 = a1;
  v4 = sub_1D95BFC6C();
  v5 = sub_1D95C009C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1D953A000, v4, v5, "Error fetching remote object proxy: %{public}@", v6, 0xCu);
    sub_1D958AC94(v7);
    MEMORY[0x1DA733200](v7, -1, -1);
    MEMORY[0x1DA733200](v6, -1, -1);
  }

  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB06030, &qword_1D95C2370);
  sub_1D95BFF6C();
  return sub_1D95BFF4C();
}

void sub_1D9589AB4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1D9589B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14[1] = a3;
  sub_1D955A9C4();
  v7 = sub_1D95C056C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v14 - v10;
  sub_1D9589C80(a6, v14 - v10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB06030, &qword_1D95C2370);
  v12 = sub_1D95BFF6C();
  sub_1D958A000(v11, v12, &type metadata for ManagedAppDistributionError);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D9589C80@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v12 = a2;
  v3 = type metadata accessor for ServiceResult();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  swift_getWitnessTable();
  swift_getWitnessTable();
  decodeXPCValues<A>(from:)(v3, v10);
  (*(v4 + 32))(v8, v10, v3);
  return sub_1D9590134(v8, a1, v12);
}

uint64_t sub_1D958A000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25[1] = a2;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D95C056C();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v25 - v18;
  (*(v20 + 16))(v25 - v18, a1, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *(v12 + 32);
    v21(v15, v19, a3);
    v22 = swift_allocError();
    v21(v23, v15, a3);
    v25[3] = v22;
    return sub_1D95BFF4C();
  }

  else
  {
    (*(v6 + 32))(v10, v19, v5);
    return sub_1D95BFF5C();
  }
}

uint64_t sub_1D958A260(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(*a2 + 80);
  v5 = *(v3 + 88);
  v6 = sub_1D95C056C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v21 - v9);
  if (qword_1EDCFA2C8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D95BFC8C();
  __swift_project_value_buffer(v11, qword_1EDCFA2D0);
  v12 = a1;
  v13 = sub_1D95BFC6C();
  v14 = sub_1D95C009C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138543362;
    v17 = a1;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v18;
    *v16 = v18;
    _os_log_impl(&dword_1D953A000, v13, v14, "Error fetching synchronous remote object proxy: %{public}@", v15, 0xCu);
    sub_1D958AC94(v16);
    MEMORY[0x1DA733200](v16, -1, -1);
    MEMORY[0x1DA733200](v15, -1, -1);
  }

  *v10 = a1;
  swift_storeEnumTagMultiPayload();
  v19 = a1;
  SyncXPCResult.setResult(_:)(v10);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D958A49C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22[2] = a8;
  v22[3] = a4;
  v22[1] = a9;
  v9 = *a3;
  v10 = *(*a3 + 80);
  sub_1D955A9C4();
  v11 = sub_1D95C056C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v22 - v13;
  v15 = *(v9 + 88);
  v16 = sub_1D95C056C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v22 - v19;
  sub_1D9589C80(v10, v14);
  sub_1D958A6C0(sub_1D958A678, v11, v20);
  SyncXPCResult.setResult(_:)(v20);
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_1D958A678@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_1D955A9C4();
  result = swift_allocError();
  *a2 = result;
  *v5 = v3;
  return result;
}

uint64_t sub_1D958A6C0@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v11, v3, v7);
    a1(v11);
    (*(v8 + 8))(v11, v7);
    v12 = *(a2 + 16);
    sub_1D95C056C();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(*(*(a2 + 16) - 8) + 32))(a3, v3, *(a2 + 16));
    sub_1D95C056C();

    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1D958A894@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  v7 = a1[4];
  return swift_willThrowTypedImpl();
}

uint64_t sub_1D958A964(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  return sub_1D958A260(a1, *(v1 + 56));
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D958A9C0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v6 = sub_1D95BFD8C();

  v7 = [v5 initWithMachServiceName:v6 options:0];

  *(v3 + 16) = v7;
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 interfaceWithProtocol_];
  [v9 setRemoteObjectInterface_];

  v11 = *(v3 + 16);
  v26 = sub_1D9589354;
  v27 = 0;
  v22 = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1D9589360;
  v25 = &block_descriptor_12;
  v12 = _Block_copy(&v22);
  v13 = v11;
  [v13 setInterruptionHandler_];
  _Block_release(v12);

  v14 = *(v3 + 16);
  v26 = sub_1D95893A4;
  v27 = 0;
  v22 = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1D9589360;
  v25 = &block_descriptor_15;
  v15 = _Block_copy(&v22);
  v16 = v14;
  [v16 setInvalidationHandler_];
  _Block_release(v15);

  if (a3)
  {
    v17 = *(v3 + 16);
    v18 = a3;
    v19 = v17;
    v20 = [v8 interfaceWithProtocol_];
    [v19 setExportedInterface_];

    [*(v3 + 16) setExportedObject_];
  }

  [*(v3 + 16) resume];
  return v3;
}

uint64_t sub_1D958AC94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06050, &qword_1D95C5B30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D958ACFC(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB06030, &qword_1D95C2370);
  v9 = *(*(sub_1D95BFF6C() - 8) + 80);

  return sub_1D9589918(a1);
}

uint64_t sub_1D958ADCC(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB06030, &qword_1D95C2370);
  v11 = *(sub_1D95BFF6C() - 8);
  v12 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  return sub_1D9589B1C(a1, a2, v2 + v12, *(v2 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8)), v5, v6);
}

uint64_t sub_1D958AEE8()
{
  v0 = type metadata accessor for ManagedAppLibraryCache();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_1D958B918();
  qword_1ECB20790 = v3;
  return result;
}

uint64_t sub_1D958AF28(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07120, &qword_1D95C9308);
  v8 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v63 = &v58 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07128, &unk_1D95C9310);
  v64 = *(v10 - 8);
  v65 = v10;
  v11 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v61 = &v58 - v12;
  v13 = type metadata accessor for ManagedApp();
  v60 = *(v13 - 8);
  v14 = *(v60 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = (&v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x1EEE9AC00](v15);
  v58 = &v58 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v59 = &v58 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07130, &qword_1D95C95F0);
  v22 = *(v21 - 8);
  v23 = v22[8];
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v67 = &v58 - v27;
  v28 = *a1;
  v29 = v22[2];
  v66 = a4;
  v69 = v30;
  v29(v26, a4);
  swift_beginAccess();
  v31 = *(v28 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v70 = *(v28 + 24);
  v33 = v70;
  *(v28 + 24) = 0x8000000000000000;
  v68 = a2;
  v34 = a2;
  v35 = a3;
  v37 = sub_1D953E644(v34, a3);
  v38 = v33[2];
  v39 = (v36 & 1) == 0;
  v40 = v38 + v39;
  if (__OFADD__(v38, v39))
  {
    goto LABEL_26;
  }

  LOBYTE(a4) = v36;
  if (v33[3] >= v40)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_7;
  }

  sub_1D95AA89C(v40, isUniquelyReferenced_nonNull_native);
  v33 = v70;
  v41 = v35;
  v42 = sub_1D953E644(v68, v35);
  if ((a4 & 1) == (v43 & 1))
  {
    v37 = v42;
    *(v28 + 24) = v33;
    if ((a4 & 1) == 0)
    {
      goto LABEL_8;
    }

    while (1)
    {
      v48 = v33[7] + 8 * v37;
      v49 = v67;
      sub_1D95ABF7C(v67, v26);
      v50 = v22[1];
      ++v22;
      v50(v49, v69);
      result = swift_endAccess();
      v26 = *(v28 + 40);
      if (v26 == 255)
      {
        break;
      }

      v35 = *(v28 + 32);
      if (v26)
      {
        *v63 = v35;
        swift_storeEnumTagMultiPayload();
        v52 = v61;
        sub_1D95BFFBC();
        return (*(v64 + 8))(v52, v65);
      }

      v53 = *(v35 + 16);
      sub_1D953C994(*(v28 + 32), 0);
      v37 = v68;
      v28 = v60;
      if (!v53)
      {
        return sub_1D953C97C(v35, v26);
      }

      a4 = 0;
      while (a4 < *(v35 + 16))
      {
        sub_1D9548200(v35 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * a4, v17);
        v54 = *v17 == v37 && v17[1] == v41;
        if (v54 || (sub_1D95C041C() & 1) != 0)
        {
          v55 = v58;
          sub_1D958DA24(v17, v58);
          v56 = v59;
          sub_1D958DA24(v55, v59);
          sub_1D9548200(v56, v63);
          swift_storeEnumTagMultiPayload();
          v57 = v61;
          sub_1D95BFFBC();
          sub_1D953C97C(v35, v26);
          (*(v64 + 8))(v57, v65);
          return sub_1D9548264(v56);
        }

        ++a4;
        sub_1D9548264(v17);
        if (v53 == a4)
        {
          return sub_1D953C97C(v35, v26);
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      sub_1D95AB46C();
      v33 = v70;
LABEL_7:
      v41 = v35;
      *(v28 + 24) = v33;
      if ((a4 & 1) == 0)
      {
LABEL_8:
        v33[(v37 >> 6) + 8] |= 1 << v37;
        v44 = (v33[6] + 16 * v37);
        *v44 = v68;
        v44[1] = v41;
        *(v33[7] + 8 * v37) = MEMORY[0x1E69E7CD0];
        v45 = v33[2];
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (v46)
        {
          __break(1u);
          goto LABEL_29;
        }

        v33[2] = v47;
      }
    }
  }

  else
  {
LABEL_29:
    result = sub_1D95C04BC();
    __break(1u);
  }

  return result;
}

void sub_1D958B4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07118, &qword_1D95C9300);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v30 - v10;
  v12 = v3 + OBJC_IVAR____TtC22ManagedAppDistribution22ManagedAppLibraryCache_lockedStorage;
  os_unfair_lock_lock((v3 + OBJC_IVAR____TtC22ManagedAppDistribution22ManagedAppLibraryCache_lockedStorage));
  v13 = *(v12 + 8);
  swift_beginAccess();
  v14 = *(v13 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v13 + 24);
  v16 = v30;
  *(v13 + 24) = 0x8000000000000000;
  v17 = sub_1D953E644(a2, a3);
  v19 = v16[2];
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = v18;
  if (v16[3] < v22)
  {
    sub_1D95AA89C(v22, isUniquelyReferenced_nonNull_native);
    v16 = v30;
    v17 = sub_1D953E644(a2, a3);
    if ((v4 & 1) == (v23 & 1))
    {
      goto LABEL_6;
    }

    v17 = sub_1D95C04BC();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_11:
    v29 = v17;
    sub_1D95AB46C();
    v17 = v29;
    v16 = v30;
    *(v13 + 24) = v30;
    if (v4)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

LABEL_6:
  *(v13 + 24) = v16;
  if (v4)
  {
LABEL_9:
    v28 = v16[7] + 8 * v17;
    sub_1D95AE8D4(a1, v11);
    sub_1D9547EAC(v11, &qword_1ECB07118, &qword_1D95C9300);
    swift_endAccess();
    os_unfair_lock_unlock(v12);
    return;
  }

LABEL_7:
  v16[(v17 >> 6) + 8] |= 1 << v17;
  v24 = (v16[6] + 16 * v17);
  *v24 = a2;
  v24[1] = a3;
  *(v16[7] + 8 * v17) = MEMORY[0x1E69E7CD0];
  v25 = v16[2];
  v21 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (!v21)
  {
    v16[2] = v26;
    v27 = v17;

    v17 = v27;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1D958B6E8(uint64_t *a1, uint64_t a2)
{
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07090, &qword_1D95C9080);
  v4 = *(v21 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07098, &unk_1D95C9360);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v14;
  v16 = *a1;
  v17 = *(v9 + 16);
  v22 = a2;
  v17(v13, a2, v8);
  swift_beginAccess();
  sub_1D95ABC98(v15, v13);
  (*(v9 + 8))(v15, v8);
  result = swift_endAccess();
  v19 = *(v16 + 40);
  if (v19 != 255)
  {
    v23 = *(v16 + 32);
    v24 = v19 & 1;
    sub_1D953C994(v23, v19 & 1);
    sub_1D95BFFBC();
    return (*(v4 + 8))(v7, v21);
  }

  return result;
}

uint64_t sub_1D958B918()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07138, &unk_1D95C9320);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07088, &qword_1D95C9078);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v20 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07058, &qword_1D95C8F70);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = v0 + OBJC_IVAR____TtC22ManagedAppDistribution22ManagedAppLibraryCache_lockedStorage;
  type metadata accessor for ManagedAppLibraryCache.Storage();
  v16 = swift_allocObject();
  *(v16 + 16) = MEMORY[0x1E69E7CD0];
  *(v16 + 24) = sub_1D953FA80(MEMORY[0x1E69E7CC0]);
  *(v16 + 32) = 0;
  *(v16 + 40) = -1;
  *v15 = 0;
  *(v15 + 8) = v16;
  *v9 = 1;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8640], v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07080, &qword_1D95C9038);
  sub_1D95C002C();
  (*(v11 + 32))(v0 + OBJC_IVAR____TtC22ManagedAppDistribution22ManagedAppLibraryCache_stream, v14, v10);
  v17 = sub_1D95BFF8C();
  (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v0;

  sub_1D958D420(0, 0, v4, &unk_1D95C9338, v18);

  sub_1D9547EAC(v4, &qword_1ECB07138, &unk_1D95C9320);
  return v0;
}

uint64_t sub_1D958BC30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07098, &unk_1D95C9360);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15[-v5];
  (*(v3 + 16))(&v15[-v5], a1, v2);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07150, &unk_1D95C9370);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = (*(v3 + 32))(v10 + *(*v10 + 88), v6, v2);
  if (qword_1EDCFA1A0 != -1)
  {
    v11 = swift_once();
  }

  v12 = *(qword_1EDCFA1A8 + OBJC_IVAR____TtC22ManagedAppDistribution9XPCClient_lockedStorage);
  MEMORY[0x1EEE9AC00](v11);
  *&v15[-16] = v10;
  *&v15[-8] = v13;
  os_unfair_lock_lock(v12 + 26);
  sub_1D958DE08(&v12[4]);
  os_unfair_lock_unlock(v12 + 26);
  return sub_1D95BFFAC();
}

void sub_1D958BE14(uint64_t a1)
{
  if (qword_1EDCFA1A0 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(qword_1EDCFA1A8 + OBJC_IVAR____TtC22ManagedAppDistribution9XPCClient_lockedStorage);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock(v1 + 26);
  sub_1D958DE2C(&v1[4]);
  os_unfair_lock_unlock(v1 + 26);
}

uint64_t sub_1D958BECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07050, &unk_1D95C9350);
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D958BF98, 0, 0);
}

uint64_t sub_1D958BF98()
{
  v1 = v0[7];
  v2 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07058, &qword_1D95C8F70);
  sub_1D95BFFEC();
  v0[8] = OBJC_IVAR____TtC22ManagedAppDistribution22ManagedAppLibraryCache_lockedStorage;
  v0[9] = 0;
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_1D958C084;
  v5 = v0[7];
  v6 = v0[5];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v6);
}

uint64_t sub_1D958C084()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D958C180, 0, 0);
}

void sub_1D958C180()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v2 == 255)
  {
    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));

    v7 = *(v0 + 8);

    v7();
  }

  else
  {
    v3 = *(v0 + 72);
    v4 = *(v0 + 32) + *(v0 + 64);
    os_unfair_lock_lock(v4);
    sub_1D958C32C((v4 + 8), v1, v2 & 1);
    v5 = *(v0 + 64);
    v6 = *(v0 + 32);
    if (v3)
    {

      os_unfair_lock_unlock((v6 + v5));
    }

    else
    {
      sub_1D953C97C(v1, v2);
      os_unfair_lock_unlock((v6 + v5));
      *(v0 + 72) = 0;
      v8 = *(MEMORY[0x1E69E8678] + 4);
      v9 = swift_task_alloc();
      *(v0 + 80) = v9;
      *v9 = v0;
      v9[1] = sub_1D958C084;
      v10 = *(v0 + 56);
      v11 = *(v0 + 40);

      MEMORY[0x1EEE6D9C8](v0 + 16, 0, 0, v11);
    }
  }
}

uint64_t sub_1D958C32C(int64_t *a1, uint64_t a2, int a3)
{
  LODWORD(v139) = a3;
  i = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07120, &qword_1D95C9308);
  v6 = *(*(i - 8) + 64);
  MEMORY[0x1EEE9AC00](i);
  v136 = &v116[-v7];
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07128, &unk_1D95C9310);
  v118 = *(v135 - 8);
  v8 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v135);
  v134 = &v116[-v9];
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07130, &qword_1D95C95F0);
  v138 = *(v133 - 8);
  v10 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v132 = &v116[-v11];
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07090, &qword_1D95C9080);
  v124 = *(v129 - 8);
  v12 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v129);
  v128 = &v116[-v13];
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07098, &unk_1D95C9360);
  v130 = *(v127 - 8);
  v14 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v127);
  v126 = &v116[-v15];
  v16 = type metadata accessor for ManagedApp();
  v122 = *(v16 - 8);
  v17 = *(v122 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v145 = &v116[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x1EEE9AC00](v18);
  v120 = &v116[-v21];
  v22 = MEMORY[0x1EEE9AC00](v20);
  v119 = &v116[-v23];
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v116[-v24];
  v26 = *a1;
  v27 = *(*a1 + 40);
  v140 = a2;
  v123 = v3;
  v121 = v26;
  if (v27 == 255)
  {
    v29 = 0;
    v30 = 255;
  }

  else
  {
    v28 = *(v26 + 32);
    if (v27)
    {
      sub_1D953C97C(*(v26 + 32), v27);
      v29 = v28;
      v30 = 1;
    }

    else
    {
      v31 = *(v28 + 16);
      v29 = MEMORY[0x1E69E7CC0];
      if (v31)
      {
        v32 = *(v26 + 32);
        LODWORD(v125) = v27;
        sub_1D953CA18(v32, v27);
        sub_1D953C994(v28, 0);
        v143 = v29;
        sub_1D95AB8D4(0, v31, 0);
        v29 = v143;
        v33 = v28;
        v34 = v28 + ((*(v122 + 80) + 32) & ~*(v122 + 80));
        v131 = *(v122 + 72);
        do
        {
          sub_1D9548200(v34, v25);
          v35 = *v25;
          v36 = v25[1];

          sub_1D9548264(v25);
          v143 = v29;
          v38 = *(v29 + 16);
          v37 = *(v29 + 24);
          if (v38 >= v37 >> 1)
          {
            sub_1D95AB8D4((v37 > 1), v38 + 1, 1);
            v29 = v143;
          }

          *(v29 + 16) = v38 + 1;
          v39 = v29 + 16 * v38;
          *(v39 + 32) = v35;
          *(v39 + 40) = v36;
          v34 += v131;
          --v31;
        }

        while (v31);
        v27 = v125;
        sub_1D953C97C(v33, v125);
        sub_1D953C97C(v33, v27);
        a2 = v140;
        v26 = v121;
      }

      v30 = 0;
    }
  }

  v131 = v29;
  if (v139)
  {
    v40 = a2;
  }

  else
  {
    v41 = *(a2 + 16);
    v40 = MEMORY[0x1E69E7CC0];
    if (v41)
    {
      v117 = v30;
      LODWORD(v125) = v27;
      v143 = MEMORY[0x1E69E7CC0];
      sub_1D95AB8D4(0, v41, 0);
      v40 = v143;
      v42 = a2 + ((*(v122 + 80) + 32) & ~*(v122 + 80));
      v43 = *(v122 + 72);
      do
      {
        sub_1D9548200(v42, v25);
        v44 = *v25;
        v45 = v25[1];

        sub_1D9548264(v25);
        v143 = v40;
        v47 = *(v40 + 16);
        v46 = *(v40 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_1D95AB8D4((v46 > 1), v47 + 1, 1);
          v40 = v143;
        }

        *(v40 + 16) = v47 + 1;
        v48 = v40 + 16 * v47;
        *(v48 + 32) = v44;
        *(v48 + 40) = v45;
        v42 += v43;
        --v41;
      }

      while (v41);
      a2 = v140;
      v26 = v121;
      v27 = v125;
      LOBYTE(v30) = v117;
    }
  }

  LOBYTE(v49) = v139 & 1;
  if (v27 == 255)
  {
    sub_1D953C97C(v131, v30);
    sub_1D953C97C(v40, v49);
LABEL_27:
    v59 = *(v26 + 32);
    *(v26 + 32) = a2;
    v60 = *(v26 + 40);
    *(v26 + 40) = v49;
    sub_1D953C994(a2, v139 & 1);
    sub_1D953C97C(v59, v60);
    swift_beginAccess();
    v61 = *(v26 + 16);
    v62 = v61 + 56;
    v63 = 1 << *(v61 + 32);
    v64 = -1;
    if (v63 < 64)
    {
      v64 = ~(-1 << v63);
    }

    v65 = v64 & *(v61 + 56);
    v66 = (v63 + 63) >> 6;
    v125 = v130 + 16;
    v49 = v124 + 8;
    v124 = v130 + 8;
    v131 = v61;

    v67 = 0;
    if (v65)
    {
      while (1)
      {
        v68 = v67;
LABEL_35:
        v69 = __clz(__rbit64(v65));
        v65 &= v65 - 1;
        a2 = v130;
        v70 = v126;
        v26 = v127;
        (*(v130 + 16))(v126, *(v131 + 48) + *(v130 + 72) * (v69 | (v68 << 6)), v127);
        v141 = v140;
        v142 = v139 & 1;
        sub_1D953C994(v140, v139 & 1);
        v71 = v128;
        sub_1D95BFFBC();
        (*v49)(v71, v129);
        (*(a2 + 8))(v70, v26);
        if (!v65)
        {
          goto LABEL_31;
        }
      }
    }

    while (1)
    {
LABEL_31:
      v68 = v67 + 1;
      if (__OFADD__(v67, 1))
      {
        goto LABEL_81;
      }

      if (v68 >= v66)
      {
        break;
      }

      v65 = *(v62 + 8 * v68);
      ++v67;
      if (v65)
      {
        v67 = v68;
        goto LABEL_35;
      }
    }

    if (v139)
    {
      v72 = v121;
      swift_beginAccess();
      v73 = *(v72 + 24);
      v74 = (v73 + 64);
      v75 = 1 << *(v73 + 32);
      if (v75 < 64)
      {
        v76 = ~(-1 << v75);
      }

      else
      {
        v76 = -1;
      }

      v77 = v76 & *(v73 + 64);
      v78 = (v75 + 63) >> 6;
      v139 = v138 + 16;
      v130 = v138 + 8;
      v131 = v118 + 8;
      v127 = v73;

      v79 = 0;
      v126 = v74;
      v125 = v78;
      v80 = v133;
LABEL_43:
      if (!v77)
      {
        while (1)
        {
          v81 = (v79 + 1);
          if (__OFADD__(v79, 1))
          {
            break;
          }

          if (v81 >= v78)
          {
          }

          v77 = *&v74[8 * v81];
          ++v79;
          if (v77)
          {
            goto LABEL_48;
          }
        }

LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v81 = v79;
LABEL_48:
      v82 = *(v127 + 56);
      v128 = v81;
      v83 = *(v82 + ((v81 << 9) | (8 * __clz(__rbit64(v77)))));
      v129 = (v77 - 1) & v77;
      a2 = (v83 + 56);
      v84 = 1 << v83[32];
      if (v84 < 64)
      {
        v85 = ~(-1 << v84);
      }

      else
      {
        v85 = -1;
      }

      v86 = v85 & *(v83 + 7);
      v49 = (v84 + 63) >> 6;
      v145 = v83;
      swift_bridgeObjectRetain_n();
      v26 = 0;
      while (v86)
      {
        v87 = v26;
LABEL_57:
        v88 = __clz(__rbit64(v86));
        v86 &= v86 - 1;
        v89 = v138;
        v90 = v132;
        (*(v138 + 16))(v132, *(v145 + 6) + *(v138 + 72) * (v88 | (v87 << 6)), v80);
        *v136 = v140;
        swift_storeEnumTagMultiPayload();
        v91 = v134;
        sub_1D95BFFBC();
        (*v131)(v91, v135);
        (*(v89 + 8))(v90, v80);
      }

      while (1)
      {
        v87 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v87 >= v49)
        {

          v79 = v128;
          v77 = v129;
          v74 = v126;
          v78 = v125;
          goto LABEL_43;
        }

        v86 = *(a2 + 8 * v87);
        ++v26;
        if (v86)
        {
          v26 = v87;
          goto LABEL_57;
        }
      }

      __break(1u);
LABEL_81:
      __break(1u);
    }

    else
    {
      v92 = v121;
      swift_beginAccess();
      v93 = *(v92 + 24);
      v96 = *(v93 + 64);
      v95 = v93 + 64;
      v94 = v96;
      v97 = 1 << *(*(v92 + 24) + 32);
      v98 = -1;
      if (v97 < 64)
      {
        v98 = ~(-1 << v97);
      }

      v99 = v98 & v94;
      v26 = (v97 + 63) >> 6;
      v138 = *(v92 + 24);

      v100 = 0;
      for (i = v95; v99; v95 = i)
      {
LABEL_68:
        while (1)
        {
          v102 = __clz(__rbit64(v99));
          v99 &= v99 - 1;
          v103 = v102 | (v100 << 6);
          v104 = (*(v138 + 48) + 16 * v103);
          a2 = *v104;
          v105 = v104[1];
          v106 = *(*(v138 + 56) + 8 * v103);
          v107 = v140;
          v108 = *(v140 + 16);

          v139 = v106;

          if (v108)
          {
            break;
          }

LABEL_63:

          v95 = i;
          if (!v99)
          {
            goto LABEL_64;
          }
        }

        v109 = v107 + ((*(v122 + 80) + 32) & ~*(v122 + 80));
        v49 = *(v122 + 72);
        v110 = v145;
        while (1)
        {
          sub_1D9548200(v109, v110);
          v111 = *v110 == a2 && v110[1] == v105;
          if (v111 || (sub_1D95C041C() & 1) != 0)
          {
            break;
          }

          v110 = v145;
          sub_1D9548264(v145);
          v109 += v49;
          if (!--v108)
          {
            goto LABEL_63;
          }
        }

        v112 = v120;
        sub_1D958DA24(v145, v120);
        v113 = v119;
        v114 = sub_1D958DA24(v112, v119);
        MEMORY[0x1EEE9AC00](v114);
        *&v116[-16] = v113;
        a2 = v139;
        v115 = v123;
        sub_1D958D24C(sub_1D958DD1C, &v116[-32], v139);
        v123 = v115;

        sub_1D9548264(v113);
      }

LABEL_64:
      while (1)
      {
        v101 = v100 + 1;
        if (__OFADD__(v100, 1))
        {
          break;
        }

        if (v101 >= v26)
        {
        }

        v99 = *(v95 + 8 * v101);
        ++v100;
        if (v99)
        {
          v100 = v101;
          goto LABEL_68;
        }
      }
    }

    __break(1u);
    goto LABEL_83;
  }

  v50 = v131;
  v143 = v131;
  v144 = v30;
  v141 = v40;
  v142 = v139 & 1;
  sub_1D953CA18(v131, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05DE0, &qword_1D95C12B0);
  sub_1D958DD38();
  sub_1D958DDB4();
  sub_1D955A9C4();
  v51 = sub_1D95C057C();
  sub_1D953BC8C(v141, v142);
  sub_1D953BC8C(v143, v144);
  sub_1D953C97C(v50, v30);
  if ((v51 & 1) == 0)
  {
    goto LABEL_27;
  }

  if (qword_1EDCFA2C8 != -1)
  {
LABEL_84:
    swift_once();
  }

  v52 = sub_1D95BFC8C();
  __swift_project_value_buffer(v52, qword_1EDCFA2D0);
  v53 = sub_1D95BFC6C();
  v54 = sub_1D95C00AC();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_1D953A000, v53, v54, "Deduplicating app catalog results", v55, 2u);
    MEMORY[0x1DA733200](v55, -1, -1);
  }

  v56 = *(v26 + 32);
  *(v26 + 32) = a2;
  v57 = *(v26 + 40);
  *(v26 + 40) = v49;
  sub_1D953C994(a2, v139 & 1);
  return sub_1D953C97C(v56, v57);
}

uint64_t sub_1D958D0D8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07120, &qword_1D95C9308);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07128, &unk_1D95C9310);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - v10;
  sub_1D9548200(a2, v6);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07130, &qword_1D95C95F0);
  sub_1D95BFFBC();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D958D24C(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07130, &qword_1D95C95F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v19 - v8;
  v10 = a3 + 56;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v14 = (v11 + 63) >> 6;
  v19[1] = v6 + 8;
  v19[2] = v6 + 16;
  v21 = a3;

  v16 = 0;
  while (v13)
  {
    v17 = v16;
LABEL_10:
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    (*(v6 + 16))(v9, *(v21 + 48) + *(v6 + 72) * (v18 | (v17 << 6)), v5);
    v20(v9);
    result = (*(v6 + 8))(v9, v5);
    if (v3)
    {
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
    }

    v13 = *(v10 + 8 * v17);
    ++v16;
    if (v13)
    {
      v16 = v17;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D958D420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07138, &unk_1D95C9320);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1D958DB3C(a3, v27 - v11);
  v13 = sub_1D95BFF8C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1D9547EAC(v12, &qword_1ECB07138, &unk_1D95C9320);
  }

  else
  {
    sub_1D95BFF7C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D95BFF2C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1D95BFE0C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1D958D6D0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_1D953C97C(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDC0](v0, 41, 7);
}

uint64_t sub_1D958D71C()
{
  v1 = OBJC_IVAR____TtC22ManagedAppDistribution22ManagedAppLibraryCache_stream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07058, &qword_1D95C8F70);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22ManagedAppDistribution22ManagedAppLibraryCache_lockedStorage + 8);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v4, v5);
}

uint64_t type metadata accessor for ManagedAppLibraryCache()
{
  result = qword_1ECB07108;
  if (!qword_1ECB07108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D958D82C()
{
  sub_1D9586BFC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

_OWORD *sub_1D958D8E8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1D953F6D0(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_1D958D954(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1D953F6D0(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_1D958D9D0(unint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 24 * result;
  *v6 = a2;
  *(v6 + 8) = a3;
  *(v6 + 16) = a4 & 1;
  *(a6[7] + 8 * result) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

uint64_t sub_1D958DA24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedApp();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D958DA88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D955BACC;

  return sub_1D958BECC(a1, v4, v5, v6);
}

uint64_t sub_1D958DB3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07138, &unk_1D95C9320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D958DBAC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D955C654;

  return sub_1D95A9C8C(a1, v5);
}

uint64_t sub_1D958DC64(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D955BACC;

  return sub_1D95A9C8C(a1, v5);
}

unint64_t sub_1D958DD38()
{
  result = qword_1ECB07140;
  if (!qword_1ECB07140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB05DE0, &qword_1D95C12B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07140);
  }

  return result;
}

unint64_t sub_1D958DDB4()
{
  result = qword_1ECB07148;
  if (!qword_1ECB07148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07148);
  }

  return result;
}

uint64_t InternalManagedAppInstallRequest.declarationID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t InternalManagedAppInstallRequest.externalVersionID.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t InternalManagedAppInstallRequest.init(declarationID:buyParams:externalVersionID:scope:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, char a4@<W5>, char a5@<W6>, uint64_t a6@<X8>)
{

  *(a6 + 17) = 1;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 24) = a3;
  *(a6 + 32) = a4 & 1;
  *(a6 + 16) = a5 & 1;
  return result;
}

uint64_t InternalManagedAppInstallRequest.request()()
{
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  return MEMORY[0x1EEE6DFA0](sub_1D958DF5C, 0, 0);
}

uint64_t sub_1D958DF5C()
{
  if (qword_1EDCFA278 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1D958E054;

  return sub_1D9552454(1, v0 + 16, sub_1D958E148, 0);
}

uint64_t sub_1D958E054()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_1D958E148(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D95BFBBC();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D95A3C64;
  v10[3] = &block_descriptor_14;
  v9 = _Block_copy(v10);

  [a1 installManagedAppInternal:v8 reply:v9];
  _Block_release(v9);
}

unint64_t sub_1D958E224()
{
  v1 = 0x746172616C636564;
  v2 = 0x74696E4972657375;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x65706F6373;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D958E2B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D958EA14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D958E2E0(uint64_t a1)
{
  v2 = sub_1D958E558();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D958E31C(uint64_t a1)
{
  v2 = sub_1D958E558();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InternalManagedAppInstallRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07158, &qword_1D95C9388);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = *(v1 + 16);
  v16 = *(v1 + 17);
  v17 = v10;
  v15 = v1[3];
  v14[1] = *(v1 + 32);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D958E558();
  sub_1D95C05BC();
  v23 = 0;
  v12 = v18;
  sub_1D95C038C();
  if (!v12)
  {
    v22 = v17;
    v21 = 1;
    sub_1D9547DB0();
    sub_1D95C03CC();
    v20 = 2;
    sub_1D95C039C();
    v19 = 3;
    sub_1D95C037C();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D958E558()
{
  result = qword_1ECB07160;
  if (!qword_1ECB07160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07160);
  }

  return result;
}

uint64_t InternalManagedAppInstallRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07168, &qword_1D95C9390);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D958E558();
  sub_1D95C059C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v27 = 0;
  v11 = sub_1D95C02CC();
  v13 = v12;
  v22 = v11;
  v25 = 1;
  sub_1D9548104();
  sub_1D95C030C();
  v14 = v26;
  v24 = 2;
  v15 = sub_1D95C02DC();
  v20 = v14;
  v21 = v15;
  v23 = 3;
  v17 = sub_1D95C02BC();
  LOBYTE(v14) = v18;
  v21 &= 1u;
  (*(v6 + 8))(v9, v5);
  *a2 = v22;
  *(a2 + 8) = v13;
  v19 = v21;
  *(a2 + 16) = v20;
  *(a2 + 17) = v19;
  *(a2 + 24) = v17;
  *(a2 + 32) = v14 & 1;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D958E860(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1D958E8A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D958E910()
{
  result = qword_1ECB07170;
  if (!qword_1ECB07170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07170);
  }

  return result;
}

unint64_t sub_1D958E968()
{
  result = qword_1ECB07178;
  if (!qword_1ECB07178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07178);
  }

  return result;
}

unint64_t sub_1D958E9C0()
{
  result = qword_1ECB07180;
  if (!qword_1ECB07180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07180);
  }

  return result;
}

uint64_t sub_1D958EA14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746172616C636564 && a2 == 0xED000044496E6F69;
  if (v4 || (sub_1D95C041C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65706F6373 && a2 == 0xE500000000000000 || (sub_1D95C041C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74696E4972657375 && a2 == 0xED00006465746169 || (sub_1D95C041C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D95D0230 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D95C041C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t ManagedAppLibrary.app(with:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07188, &unk_1D95C9560);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10[-v7];
  v11 = a1;
  v12 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07120, &qword_1D95C9308);
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8650], v4);
  return sub_1D95C002C();
}

uint64_t sub_1D958ECE4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07130, &qword_1D95C95F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - v9;
  if (qword_1ECB05B98 != -1)
  {
    swift_once();
  }

  v11 = qword_1ECB20790 + OBJC_IVAR____TtC22ManagedAppDistribution22ManagedAppLibraryCache_lockedStorage;
  os_unfair_lock_lock((qword_1ECB20790 + OBJC_IVAR____TtC22ManagedAppDistribution22ManagedAppLibraryCache_lockedStorage));
  sub_1D958AF28((v11 + 8), a2, a3, a1);
  os_unfair_lock_unlock(v11);
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  v14 = (v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v14 = a2;
  v14[1] = a3;

  return sub_1D95BFFAC();
}

void sub_1D958EEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if (qword_1ECB05B98 != -1)
  {
    swift_once();
    v6 = a2;
  }

  sub_1D958B4CC(v6, a3, a4);
}

uint64_t sub_1D958EF64()
{
  *(v0 + 16) = 0u;
  *(v0 + 88) = 1;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 256;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  if (qword_1EDCFA278 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1D958F088;

  return sub_1D954ADD4(1, v0 + 16, sub_1D954A5DC, 0);
}

uint64_t sub_1D958F088()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1D958F200;
  }

  else
  {
    v3 = sub_1D958F19C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D958F19C()
{
  sub_1D9555D64(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D958F200()
{
  sub_1D9555D64(v0 + 16);
  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1();
}

uint64_t ManagedAppLibrary.install(_:)(uint64_t a1)
{
  v1[10] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07190, &qword_1D95C9580);
  v1[11] = v2;
  v3 = *(v2 - 8);
  v1[12] = v3;
  v4 = *(v3 + 64) + 15;
  v1[13] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07198, &qword_1D95C9588);
  v1[14] = v5;
  v6 = *(v5 - 8);
  v1[15] = v6;
  v7 = *(v6 + 64) + 15;
  v1[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D958F398, 0, 0);
}

uint64_t sub_1D958F398()
{
  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  ManagedApp.state.getter();
  sub_1D95BFFEC();
  (*(v3 + 8))(v2, v5);
  v6 = *(MEMORY[0x1E69E8680] + 4);
  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = sub_1D958F484;
  v8 = v0[16];
  v9 = v0[14];

  return MEMORY[0x1EEE6D9D0](v0 + 9, v9);
}

uint64_t sub_1D958F484()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D958F580, 0, 0);
}

uint64_t sub_1D958F580()
{
  v25 = v0;
  v1 = *(v0 + 72);
  if ((~v1 & 0xF000000000000007) == 0)
  {
    v1 = swift_allocObject();
    *(v1 + 16) = 0;
  }

  *(v0 + 144) = v1;
  if (qword_1EDCFA1A0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 80);
  *(v0 + 152) = qword_1EDCFA1A8;
  v3 = v2[2];
  *(v0 + 160) = v3;
  v4 = v2[3];
  *(v0 + 168) = v4;
  v5 = v2[4];
  *(v0 + 176) = v5;
  v6 = *(v2 + 40);
  *(v0 + 65) = v6;
  v20 = 0x8000000000000010;
  v21 = v3;
  v22 = v4;
  v23 = v5;
  v24 = v6;
  swift_bridgeObjectRetain_n();
  sub_1D95A6484(&v20);

  v7 = v21;
  v8 = v22;
  v9 = v23;
  v10 = v24;
  sub_1D9564D80(v20);
  sub_1D958FFD0(v7, v8, v9, v10);
  v12 = *v2;
  v11 = v2[1];
  v13 = type metadata accessor for ManagedApp();
  v14 = (v2 + *(v13 + 120));
  v15 = *v14;
  v16 = v14[1];
  LOBYTE(v14) = *(v2 + *(v13 + 124));
  *(v0 + 200) = 1;
  *(v0 + 16) = v12;
  *(v0 + 24) = v11;
  *(v0 + 32) = v15;
  *(v0 + 40) = v16;
  *(v0 + 48) = v14;
  *(v0 + 49) = 1;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  v17 = qword_1EDCFA278;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = swift_task_alloc();
  *(v0 + 184) = v18;
  *v18 = v0;
  v18[1] = sub_1D958F7C8;

  return sub_1D954ADD4(1, v0 + 16, sub_1D954A5DC, 0);
}

uint64_t sub_1D958F7C8()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_1D958F98C;
  }

  else
  {
    v3 = sub_1D958F8DC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D958F8DC()
{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  sub_1D9555D64((v0 + 2));
  sub_1D9564D80(v1);
  (*(v3 + 8))(v2, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D958F98C()
{
  v23 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 65);
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  v7 = *(v0 + 144);
  v8 = *(v0 + 120);
  v9 = *(v0 + 128);
  v16 = *(v0 + 112);
  v17 = *(v0 + 104);
  sub_1D9555D64(v0 + 16);
  v18 = v7;
  v19 = v6;
  v20 = v3;
  v21 = v4;
  v22 = v2;
  swift_bridgeObjectRetain_n();
  sub_1D953FCB8(v7);
  sub_1D95A6484(&v18);

  v10 = v19;
  v11 = v20;
  v12 = v21;
  LOBYTE(v4) = v22;
  sub_1D9564D80(v18);
  sub_1D958FFD0(v10, v11, v12, v4);
  swift_willThrow();
  sub_1D9564D80(v7);
  (*(v8 + 8))(v9, v16);

  v13 = *(v0 + 8);
  v14 = *(v0 + 192);

  return v13();
}

uint64_t sub_1D958FAD8()
{
  v1 = v0[2];
  v3 = *v1;
  v2 = v1[1];
  v0[3] = v2;
  v4 = qword_1EDCFA278;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_1D955FDAC;

  return sub_1D954C21C(1, v3, v2, sub_1D9568CB0, 0);
}

uint64_t static ManagedAppLibrary.appProgress.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06288, &unk_1D95C2AF0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v21[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06290, &unk_1D95C95A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21[-v11];
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8650], v0);
  sub_1D95BFF9C();
  (*(v1 + 8))(v4, v0);
  (*(v6 + 16))(v10, v12, v5);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06298, &qword_1D95C2B00);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  (*(v6 + 32))(v16 + *(*v16 + 88), v10, v5);

  v17 = sub_1D95BFFAC();
  if (qword_1EDCFA1A0 != -1)
  {
    v17 = swift_once();
  }

  v18 = *(qword_1EDCFA1A8 + OBJC_IVAR____TtC22ManagedAppDistribution9XPCClient_lockedStorage);
  MEMORY[0x1EEE9AC00](v17);
  *&v21[-16] = v16;
  *&v21[-8] = v19;
  os_unfair_lock_lock(v18 + 26);
  sub_1D9560370(&v18[4]);
  os_unfair_lock_unlock(v18 + 26);

  return (*(v6 + 8))(v12, v5);
}

void sub_1D958FF00(uint64_t a1)
{
  if (qword_1EDCFA1A0 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(qword_1EDCFA1A8 + OBJC_IVAR____TtC22ManagedAppDistribution9XPCClient_lockedStorage);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock(v1 + 26);
  sub_1D95603C8(&v1[4]);
  os_unfair_lock_unlock(v1 + 26);
}

uint64_t sub_1D958FFD0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 0x80) == 0)
  {
  }

  return result;
}

unint64_t sub_1D9590024()
{
  result = qword_1ECB071A0;
  if (!qword_1ECB071A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB071A8, &qword_1D95C95E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB071A0);
  }

  return result;
}

void sub_1D9590088(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07130, &qword_1D95C95F0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  sub_1D958EEC8(a1, v1 + v4, v6, v7);
}

uint64_t sub_1D9590134@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  type metadata accessor for ServiceResult();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a3 = *a1;
  }

  else
  {
    (*(*(a2 - 8) + 32))(a3, a1, a2);
  }

  sub_1D955A9C4();
  sub_1D95C056C();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D9590220(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D95C041C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1D95C041C();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D9590324(char a1)
{
  sub_1D95C051C();
  MEMORY[0x1DA732B80](a1 & 1);
  return sub_1D95C055C();
}

uint64_t sub_1D959036C(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_1D959039C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D95C041C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

BOOL sub_1D959040C(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return sub_1D95902EC(*a1, *a2);
}

uint64_t sub_1D9590424(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_1D9590324(*v1);
}

uint64_t sub_1D9590438(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  return sub_1D95902FC(a1, *v2);
}

uint64_t sub_1D959044C(uint64_t a1, void *a2)
{
  sub_1D95C051C();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  sub_1D95902FC(v8, *v2);
  return sub_1D95C055C();
}

uint64_t sub_1D9590498(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_1D959036C(*v1);
}

uint64_t sub_1D95904AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_1D9590220(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1D95904E0@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = sub_1D9591958();
  *a2 = result;
  return result;
}

uint64_t sub_1D9590514(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D9590568(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D95905BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D9590610(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D9590664(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D95906B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t ServiceResult.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = type metadata accessor for ServiceResult.FailureCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v47 = v7;
  v8 = sub_1D95C03EC();
  v49 = *(v8 - 8);
  v50 = v8;
  v9 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v48 = v40 - v10;
  v11 = type metadata accessor for ServiceResult.SuccessCodingKeys();
  v12 = swift_getWitnessTable();
  v42 = v11;
  v40[1] = v12;
  v13 = sub_1D95C03EC();
  v44 = *(v13 - 8);
  v45 = v13;
  v14 = *(v44 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v41 = v40 - v16;
  v43 = *(v4 - 8);
  v17 = *(v43 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v40[0] = v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a2 - 1);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v23 = v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v6;
  v52 = v4;
  type metadata accessor for ServiceResult.CodingKeys();
  swift_getWitnessTable();
  v24 = sub_1D95C03EC();
  v54 = *(v24 - 8);
  v55 = v24;
  v25 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = v40 - v26;
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95C05BC();
  (*(v20 + 16))(v23, v53, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v23;
    v58 = 1;
    v30 = v48;
    v31 = v55;
    sub_1D95C034C();
    v57 = v29;
    sub_1D9590C68();
    v32 = v50;
    sub_1D95C03CC();
    (*(v49 + 8))(v30, v32);
    return (*(v54 + 8))(v27, v31);
  }

  else
  {
    v34 = v43;
    v35 = v40[0];
    v36 = v52;
    (*(v43 + 32))(v40[0], v23, v52);
    v56 = 0;
    v37 = v41;
    v38 = v55;
    sub_1D95C034C();
    v39 = v45;
    sub_1D95C03CC();
    (*(v44 + 8))(v37, v39);
    (*(v34 + 8))(v35, v36);
    return (*(v54 + 8))(v27, v38);
  }
}

unint64_t sub_1D9590C68()
{
  result = qword_1EDCF9CC8;
  if (!qword_1EDCF9CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF9CC8);
  }

  return result;
}

uint64_t ServiceResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v79 = a1;
  v70 = a4;
  v6 = type metadata accessor for ServiceResult.FailureCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v67 = v6;
  v60 = sub_1D95C033C();
  v59 = *(v60 - 8);
  v7 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v68 = &v55 - v8;
  v9 = type metadata accessor for ServiceResult.SuccessCodingKeys();
  v63 = swift_getWitnessTable();
  v64 = v9;
  v58 = sub_1D95C033C();
  v57 = *(v58 - 8);
  v10 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v65 = &v55 - v11;
  type metadata accessor for ServiceResult.CodingKeys();
  v73 = swift_getWitnessTable();
  v12 = sub_1D95C033C();
  v13 = *(v12 - 8);
  v71 = v12;
  v72 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v55 - v15;
  v61 = a2;
  v62 = a3;
  v17 = type metadata accessor for ServiceResult();
  v69 = *(v17 - 8);
  v18 = *(v69 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v55 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v55 - v25;
  v27 = v79[4];
  __swift_project_boxed_opaque_existential_1Tm(v79, v79[3]);
  v28 = v74;
  sub_1D95C059C();
  if (!v28)
  {
    v74 = v24;
    v56 = v21;
    v73 = v26;
    v29 = v71;
    v30 = v16;
    *&v75 = sub_1D95C032C();
    sub_1D95BFF1C();
    swift_getWitnessTable();
    *&v77 = sub_1D95C010C();
    *(&v77 + 1) = v31;
    *&v78 = v32;
    *(&v78 + 1) = v33;
    sub_1D95C00FC();
    swift_getWitnessTable();
    sub_1D95C004C();
    v34 = v75;
    if (v75 == 2 || (v55 = v77, v75 = v77, v76 = v78, (sub_1D95C005C() & 1) == 0))
    {
      v43 = sub_1D95C01FC();
      swift_allocError();
      v45 = v44;
      v46 = v29;
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D48, &qword_1D95C4250) + 48);
      *v45 = v17;
      sub_1D95C028C();
      sub_1D95C01EC();
      (*(*(v43 - 8) + 104))(v45, *MEMORY[0x1E69E6AF8], v43);
      swift_willThrow();
      (*(v72 + 8))(v16, v46);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v34)
      {
        LOBYTE(v75) = 1;
        v35 = v68;
        v36 = v30;
        sub_1D95C027C();
        v37 = v70;
        v38 = v72;
        sub_1D9591498();
        v39 = v60;
        sub_1D95C030C();
        (*(v59 + 8))(v35, v39);
        (*(v38 + 8))(v36, v29);
        swift_unknownObjectRelease();
        v40 = v56;
        *v56 = v75;
        swift_storeEnumTagMultiPayload();
        v41 = *(v69 + 32);
        v42 = v73;
        v41(v73, v40, v17);
      }

      else
      {
        LOBYTE(v75) = 0;
        v48 = v65;
        v49 = v30;
        sub_1D95C027C();
        v50 = v72;
        v51 = v69;
        v52 = v58;
        sub_1D95C030C();
        (*(v57 + 8))(v48, v52);
        (*(v50 + 8))(v49, v29);
        swift_unknownObjectRelease();
        v54 = v74;
        swift_storeEnumTagMultiPayload();
        v41 = *(v51 + 32);
        v42 = v73;
        v41(v73, v54, v17);
        v37 = v70;
      }

      v41(v37, v42, v17);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v79);
}

unint64_t sub_1D9591498()
{
  result = qword_1ECB071B0;
  if (!qword_1ECB071B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB071B0);
  }

  return result;
}

uint64_t sub_1D9591528(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D9591594(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 64) <= 1uLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v9 < 2)
    {
LABEL_26:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_26;
  }

LABEL_15:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1D95916A8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 1)
  {
    v5 = 1;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t ManagedAppDistributionError.localizedStringResource.getter()
{
  v1 = sub_1D95BFC2C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = sub_1D95BFAFC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D95BFD7C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  *v0;
  sub_1D95BFD6C();
  if (qword_1ECB05BD8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v3, qword_1ECB07F78);
  (*(v4 + 16))(v7, v10, v3);
  sub_1D95BFC0C();
  return sub_1D95BFB1C();
}

uint64_t ManagedAppDistributionError.description.getter()
{
  v1 = sub_1D95BFB0C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = *v0;
  ManagedAppDistributionError.localizedStringResource.getter();
  return sub_1D95BFDEC();
}

uint64_t ManagedAppDistributionError.errorDescription.getter()
{
  v1 = sub_1D95BFB0C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = *v0;
  ManagedAppDistributionError.localizedStringResource.getter();
  return sub_1D95BFDEC();
}

uint64_t sub_1D9591DA8(uint64_t a1)
{
  v2 = sub_1D9593168();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9591DE4(uint64_t a1)
{
  v2 = sub_1D9593168();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D9591E20()
{
  v1 = *v0;
  v2 = 0x456B726F7774656ELL;
  v3 = 0xD000000000000013;
  v4 = 0x4E65736E6563696CLL;
  if (v1 != 4)
  {
    v4 = 0x614D746F4E707061;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D9591F08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9593A4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9591F30(uint64_t a1)
{
  v2 = sub_1D9593114();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9591F6C(uint64_t a1)
{
  v2 = sub_1D9593114();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9591FA8(uint64_t a1)
{
  v2 = sub_1D9593264();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9591FE4(uint64_t a1)
{
  v2 = sub_1D9593264();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9592020(uint64_t a1)
{
  v2 = sub_1D95931BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D959205C(uint64_t a1)
{
  v2 = sub_1D95931BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9592098(uint64_t a1)
{
  v2 = sub_1D95932B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95920D4(uint64_t a1)
{
  v2 = sub_1D95932B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9592110(uint64_t a1)
{
  v2 = sub_1D959330C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D959214C(uint64_t a1)
{
  v2 = sub_1D959330C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9592188(uint64_t a1)
{
  v2 = sub_1D9593210();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95921C4(uint64_t a1)
{
  v2 = sub_1D9593210();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedAppDistributionError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB071B8, &qword_1D95C9A10);
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB071C0, &qword_1D95C9A18);
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB071C8, &qword_1D95C9A20);
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v41 = &v34 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB071D0, &qword_1D95C9A28);
  v39 = *(v12 - 8);
  v40 = v12;
  v13 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v38 = &v34 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB071D8, &qword_1D95C9A30);
  v36 = *(v15 - 8);
  v37 = v15;
  v16 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v35 = &v34 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB071E0, &qword_1D95C9A38);
  v34 = *(v18 - 8);
  v19 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v34 - v20;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB071E8, &qword_1D95C9A40);
  v22 = *(v50 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v25 = &v34 - v24;
  v26 = *v1;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D9593114();
  sub_1D95C05BC();
  v28 = (v22 + 8);
  if (v26 > 2)
  {
    if (v26 == 3)
    {
      v54 = 3;
      sub_1D9593210();
      v29 = v41;
      v30 = v50;
      sub_1D95C034C();
      v32 = v42;
      v31 = v43;
    }

    else if (v26 == 4)
    {
      v55 = 4;
      sub_1D95931BC();
      v29 = v44;
      v30 = v50;
      sub_1D95C034C();
      v32 = v45;
      v31 = v46;
    }

    else
    {
      v56 = 5;
      sub_1D9593168();
      v29 = v47;
      v30 = v50;
      sub_1D95C034C();
      v32 = v48;
      v31 = v49;
    }

    goto LABEL_12;
  }

  if (v26)
  {
    if (v26 == 1)
    {
      v52 = 1;
      sub_1D95932B8();
      v29 = v35;
      v30 = v50;
      sub_1D95C034C();
      v32 = v36;
      v31 = v37;
    }

    else
    {
      v53 = 2;
      sub_1D9593264();
      v29 = v38;
      v30 = v50;
      sub_1D95C034C();
      v32 = v39;
      v31 = v40;
    }

LABEL_12:
    (*(v32 + 8))(v29, v31);
    return (*v28)(v25, v30);
  }

  v51 = 0;
  sub_1D959330C();
  v30 = v50;
  sub_1D95C034C();
  (*(v34 + 8))(v21, v18);
  return (*v28)(v25, v30);
}

uint64_t ManagedAppDistributionError.hashValue.getter()
{
  v1 = *v0;
  sub_1D95C051C();
  MEMORY[0x1DA732B80](v1);
  return sub_1D95C055C();
}

uint64_t ManagedAppDistributionError.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v61 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07218, &qword_1D95C9A48);
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v64 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07220, &qword_1D95C9A50);
  v7 = *(v6 - 8);
  v56 = v6;
  v57 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v48 - v9;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07228, &qword_1D95C9A58);
  v55 = *(v50 - 8);
  v10 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v62 = &v48 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07230, &qword_1D95C9A60);
  v53 = *(v12 - 8);
  v54 = v12;
  v13 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v60 = &v48 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07238, &qword_1D95C9A68);
  v51 = *(v15 - 8);
  v52 = v15;
  v16 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v48 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07240, &qword_1D95C9A70);
  v49 = *(v19 - 8);
  v20 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v48 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07248, &unk_1D95C9A78);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v48 - v26;
  v29 = a1[3];
  v28 = a1[4];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v29);
  sub_1D9593114();
  v30 = v65;
  sub_1D95C059C();
  if (!v30)
  {
    v31 = v22;
    v48 = v19;
    v65 = v18;
    v33 = v62;
    v32 = v63;
    v34 = v64;
    v35 = sub_1D95C032C();
    v36 = (2 * *(v35 + 16)) | 1;
    v67 = v35;
    v68 = v35 + 32;
    v69 = 0;
    v70 = v36;
    v37 = sub_1D954A274();
    v38 = v27;
    if (v37 == 6 || v69 != v70 >> 1)
    {
      v42 = sub_1D95C01FC();
      swift_allocError();
      v44 = v43;
      v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D48, &qword_1D95C4250) + 48);
      *v44 = &type metadata for ManagedAppDistributionError;
      sub_1D95C028C();
      sub_1D95C01EC();
      (*(*(v42 - 8) + 104))(v44, *MEMORY[0x1E69E6AF8], v42);
      swift_willThrow();
      (*(v24 + 8))(v27, v23);
      swift_unknownObjectRelease();
    }

    else
    {
      v71 = v37;
      if (v37 > 2u)
      {
        v47 = v61;
        if (v37 == 3)
        {
          v72 = 3;
          sub_1D9593210();
          sub_1D95C027C();
          (*(v55 + 8))(v33, v50);
        }

        else if (v37 == 4)
        {
          v72 = 4;
          sub_1D95931BC();
          sub_1D95C027C();
          (*(v57 + 8))(v32, v56);
        }

        else
        {
          v72 = 5;
          sub_1D9593168();
          sub_1D95C027C();
          (*(v58 + 8))(v34, v59);
        }

        (*(v24 + 8))(v38, v23);
        swift_unknownObjectRelease();
      }

      else
      {
        if (v37)
        {
          if (v37 == 1)
          {
            v72 = 1;
            sub_1D95932B8();
            v39 = v65;
            sub_1D95C027C();
            v41 = v51;
            v40 = v52;
          }

          else
          {
            v72 = 2;
            sub_1D9593264();
            v39 = v60;
            sub_1D95C027C();
            v41 = v53;
            v40 = v54;
          }

          (*(v41 + 8))(v39, v40);
        }

        else
        {
          v72 = 0;
          sub_1D959330C();
          sub_1D95C027C();
          (*(v49 + 8))(v31, v48);
        }

        (*(v24 + 8))(v27, v23);
        swift_unknownObjectRelease();
        v47 = v61;
      }

      *v47 = v71;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v66);
}

uint64_t sub_1D9593008()
{
  v1 = sub_1D95BFB0C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = *v0;
  ManagedAppDistributionError.localizedStringResource.getter();
  return sub_1D95BFDEC();
}

unint64_t sub_1D9593114()
{
  result = qword_1EDCF9D00;
  if (!qword_1EDCF9D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF9D00);
  }

  return result;
}

unint64_t sub_1D9593168()
{
  result = qword_1ECB071F0;
  if (!qword_1ECB071F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB071F0);
  }

  return result;
}

unint64_t sub_1D95931BC()
{
  result = qword_1ECB071F8;
  if (!qword_1ECB071F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB071F8);
  }

  return result;
}

unint64_t sub_1D9593210()
{
  result = qword_1ECB07200;
  if (!qword_1ECB07200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07200);
  }

  return result;
}

unint64_t sub_1D9593264()
{
  result = qword_1ECB07208;
  if (!qword_1ECB07208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07208);
  }

  return result;
}

unint64_t sub_1D95932B8()
{
  result = qword_1ECB07210;
  if (!qword_1ECB07210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07210);
  }

  return result;
}

unint64_t sub_1D959330C()
{
  result = qword_1EDCF9D48[0];
  if (!qword_1EDCF9D48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCF9D48);
  }

  return result;
}

uint64_t sub_1D9593374(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1D9593404(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D9593528()
{
  result = qword_1ECB07250;
  if (!qword_1ECB07250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07250);
  }

  return result;
}

unint64_t sub_1D9593580()
{
  result = qword_1EDCF9D38;
  if (!qword_1EDCF9D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF9D38);
  }

  return result;
}

unint64_t sub_1D95935D8()
{
  result = qword_1EDCF9D40;
  if (!qword_1EDCF9D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF9D40);
  }

  return result;
}

unint64_t sub_1D9593630()
{
  result = qword_1EDCF9D28;
  if (!qword_1EDCF9D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF9D28);
  }

  return result;
}

unint64_t sub_1D9593688()
{
  result = qword_1EDCF9D30;
  if (!qword_1EDCF9D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF9D30);
  }

  return result;
}

unint64_t sub_1D95936E0()
{
  result = qword_1EDCF9D18;
  if (!qword_1EDCF9D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF9D18);
  }

  return result;
}

unint64_t sub_1D9593738()
{
  result = qword_1EDCF9D20;
  if (!qword_1EDCF9D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF9D20);
  }

  return result;
}

unint64_t sub_1D9593790()
{
  result = qword_1EDCF9CD0;
  if (!qword_1EDCF9CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF9CD0);
  }

  return result;
}

unint64_t sub_1D95937E8()
{
  result = qword_1EDCF9CD8;
  if (!qword_1EDCF9CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF9CD8);
  }

  return result;
}

unint64_t sub_1D9593840()
{
  result = qword_1EDCF9CE0;
  if (!qword_1EDCF9CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF9CE0);
  }

  return result;
}

unint64_t sub_1D9593898()
{
  result = qword_1EDCF9CE8;
  if (!qword_1EDCF9CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF9CE8);
  }

  return result;
}

unint64_t sub_1D95938F0()
{
  result = qword_1EDCF9D08;
  if (!qword_1EDCF9D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF9D08);
  }

  return result;
}

unint64_t sub_1D9593948()
{
  result = qword_1EDCF9D10;
  if (!qword_1EDCF9D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF9D10);
  }

  return result;
}

unint64_t sub_1D95939A0()
{
  result = qword_1EDCF9CF0;
  if (!qword_1EDCF9CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF9CF0);
  }

  return result;
}

unint64_t sub_1D95939F8()
{
  result = qword_1EDCF9CF8;
  if (!qword_1EDCF9CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF9CF8);
  }

  return result;
}

uint64_t sub_1D9593A4C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001D95D0C00 == a2;
  if (v3 || (sub_1D95C041C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x456B726F7774656ELL && a2 == 0xEC000000726F7272 || (sub_1D95C041C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D95D0C20 == a2 || (sub_1D95C041C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D95D0C40 == a2 || (sub_1D95C041C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4E65736E6563696CLL && a2 == 0xEF646E756F46746FLL || (sub_1D95C041C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x614D746F4E707061 && a2 == 0xED0000646567616ELL)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D95C041C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t ManagedAppDeclaration.declarationKey.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ManagedAppDeclaration.declarationKey.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ManagedAppDeclaration.declarationIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ManagedAppDeclaration.declarationIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ManagedAppDeclaration.personaIdentifier.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t ManagedAppDeclaration.personaIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t ManagedAppDeclaration.attributes.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D957E2D0(v2, v3);
}

uint64_t ManagedAppDeclaration.attributes.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1D955F8FC(*(v1 + 56), *(v1 + 64));
  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
  return result;
}

uint64_t ManagedAppDeclaration.backupBehavior.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ManagedAppDeclaration(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t ManagedAppDeclaration.backupBehavior.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ManagedAppDeclaration(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t ManagedAppDeclaration.updateBehavior.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ManagedAppDeclaration(0);
  v4 = (v1 + *(result + 44));
  v5 = *v4;
  v6 = *(v4 + 8);
  LOBYTE(v4) = *(v4 + 9);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 9) = v4;
  return result;
}

uint64_t ManagedAppDeclaration.updateBehavior.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  result = type metadata accessor for ManagedAppDeclaration(0);
  v6 = v1 + *(result + 44);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 9) = v4;
  return result;
}

uint64_t ManagedAppDeclaration.platform.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for ManagedAppDeclaration(0);
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t ManagedAppDeclaration.platform.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for ManagedAppDeclaration(0);
  *(v1 + *(result + 48)) = v2;
  return result;
}

uint64_t ManagedAppDeclaration.init(declarationKey:declarationIdentifier:managementScope:personaIdentifier:installBehavior:backupBehavior:updateBehavior:platform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t *a11, uint64_t *a12)
{
  v16 = *a10;
  v17 = *a11;
  v18 = *(a11 + 8);
  v19 = *(a11 + 9);
  v20 = *a12;
  *(a9 + 56) = xmmword_1D95CA220;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  v21 = type metadata accessor for ManagedAppDeclaration(0);
  result = sub_1D959D0B0(a8, a9 + v21[9], type metadata accessor for ManagedAppDeclaration.InstallBehavior);
  *(a9 + v21[10]) = v16;
  v23 = a9 + v21[11];
  *v23 = v17;
  *(v23 + 8) = v18;
  *(v23 + 9) = v19;
  *(a9 + v21[12]) = v20;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 32) = a5 & 1;
  return result;
}

uint64_t ManagedAppDeclaration.init(declarationKey:declarationIdentifier:personaIdentifier:installBehavior:backupBehavior:updateBehavior:platform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t *a11)
{
  v15 = *a8;
  v16 = *a10;
  v17 = *(a10 + 8);
  v18 = *(a10 + 9);
  v19 = *a11;
  *(a9 + 56) = xmmword_1D95CA220;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  v20 = type metadata accessor for ManagedAppDeclaration(0);
  result = sub_1D959D0B0(a7, a9 + v20[9], type metadata accessor for ManagedAppDeclaration.InstallBehavior);
  *(a9 + v20[10]) = v15;
  v22 = a9 + v20[11];
  *v22 = v16;
  *(v22 + 8) = v17;
  *(v22 + 9) = v18;
  *(a9 + v20[12]) = v19;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 32) = 1;
  return result;
}

uint64_t ManagedAppDeclaration.init(declarationKey:declarationIdentifier:personaIdentifier:installBehavior:backupBehavior:updateBehavior:removalBehavior:platform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t a11, uint64_t *a12)
{
  v16 = *a8;
  v17 = *a10;
  v18 = *(a10 + 8);
  v19 = *(a10 + 9);
  v20 = *a12;
  *(a9 + 56) = xmmword_1D95CA220;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  v21 = type metadata accessor for ManagedAppDeclaration(0);
  result = sub_1D959D0B0(a7, a9 + v21[9], type metadata accessor for ManagedAppDeclaration.InstallBehavior);
  *(a9 + v21[10]) = v16;
  v23 = a9 + v21[11];
  *v23 = v17;
  *(v23 + 8) = v18;
  *(v23 + 9) = v19;
  *(a9 + v21[12]) = v20;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 32) = 1;
  return result;
}

uint64_t ManagedAppDeclaration.init(declarationKey:declarationIdentifier:installBehavior:backupBehavior:updateBehavior:removalBehavior:platform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>, uint64_t *a9)
{
  v11 = *a6;
  v12 = *a7;
  v13 = *(a7 + 8);
  v14 = *(a7 + 9);
  v15 = *a9;
  *(a8 + 56) = xmmword_1D95CA220;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  v16 = type metadata accessor for ManagedAppDeclaration(0);
  result = sub_1D959D0B0(a5, a8 + v16[9], type metadata accessor for ManagedAppDeclaration.InstallBehavior);
  *(a8 + v16[10]) = v11;
  v18 = a8 + v16[11];
  *v18 = v12;
  *(v18 + 8) = v13;
  *(v18 + 9) = v14;
  *(a8 + v16[12]) = v15;
  *(a8 + 40) = 0;
  *(a8 + 48) = 0;
  *(a8 + 32) = 1;
  return result;
}

uint64_t sub_1D959456C(uint64_t a1)
{
  v2 = sub_1D9594990();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95945A8(uint64_t a1)
{
  v2 = sub_1D9594990();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95945E4(uint64_t a1)
{
  v2 = sub_1D9594A38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9594620(uint64_t a1)
{
  v2 = sub_1D9594A38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D959465C(uint64_t a1)
{
  v2 = sub_1D95949E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9594698(uint64_t a1)
{
  v2 = sub_1D95949E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedAppDeclaration.ManagementScope.encode(to:)(void *a1, int a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07258, &qword_1D95CA230);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07260, &qword_1D95CA238);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07268, &qword_1D95CA240);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D9594990();
  sub_1D95C05BC();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_1D95949E4();
    sub_1D95C034C();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_1D9594A38();
    sub_1D95C034C();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

unint64_t sub_1D9594990()
{
  result = qword_1ECB07270;
  if (!qword_1ECB07270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07270);
  }

  return result;
}

unint64_t sub_1D95949E4()
{
  result = qword_1ECB07278;
  if (!qword_1ECB07278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07278);
  }

  return result;
}

unint64_t sub_1D9594A38()
{
  result = qword_1ECB07280;
  if (!qword_1ECB07280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07280);
  }

  return result;
}

uint64_t ManagedAppDeclaration.ManagementScope.hashValue.getter(char a1)
{
  sub_1D95C051C();
  MEMORY[0x1DA732B80](a1 & 1);
  return sub_1D95C055C();
}

uint64_t sub_1D9594B18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D959CAB0(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t ManagedAppDeclaration.Attributes.rawValue.getter()
{
  v1 = *v0;
  sub_1D955F8A8(*v0, *(v0 + 8));
  return v1;
}

uint64_t ManagedAppDeclaration.Attributes.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ManagedAppDeclaration.Attributes.init(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_self();
  v4 = sub_1D95BFD1C();

  v12[0] = 0;
  v5 = [v3 dataWithJSONObject:v4 options:0 error:v12];

  v6 = v12[0];
  if (v5)
  {
    v7 = sub_1D95BFBCC();
    v9 = v8;

    *v2 = v7;
    v2[1] = v9;
  }

  else
  {
    v10 = v6;
    sub_1D95BFAEC();

    swift_willThrow();
  }

  v11 = *MEMORY[0x1E69E9840];
}

id ManagedAppDeclaration.Attributes.dictionaryRepresentation()()
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = *v0;
  v1 = v0[1];
  v3 = objc_opt_self();
  v4 = sub_1D95BFBBC();
  v10[0] = 0;
  v5 = [v3 JSONObjectWithData:v4 options:0 error:v10];

  v6 = v10[0];
  if (v5)
  {
    sub_1D95C00EC();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07288, &qword_1D95CA248);
    swift_dynamicCast();
    result = v10[0];
  }

  else
  {
    v8 = v6;
    sub_1D95BFAEC();

    result = swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D9594E00(uint64_t a1)
{
  v2 = sub_1D959CF6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9594E3C(uint64_t a1)
{
  v2 = sub_1D959CF6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedAppDeclaration.Attributes.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07290, &qword_1D95CA250);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D955F8A8(v8, v9);
  sub_1D959CF6C();
  sub_1D95C05BC();
  v12 = v8;
  v13 = v9;
  sub_1D957F164();
  sub_1D95C03CC();
  sub_1D955AA18(v12, v13);
  return (*(v4 + 8))(v7, v3);
}

uint64_t ManagedAppDeclaration.Attributes.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB072A0, &qword_1D95CA258);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D959CF6C();
  sub_1D95C059C();
  if (!v2)
  {
    sub_1D957F74C();
    sub_1D95C030C();
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t ManagedAppDeclaration.InstallBehavior.version.getter()
{
  v1 = (v0 + *(type metadata accessor for ManagedAppDeclaration.InstallBehavior(0) + 32));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ManagedAppDeclaration.InstallBehavior.version.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ManagedAppDeclaration.InstallBehavior(0);
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ManagedAppDeclaration.InstallBehavior.init(installTiming:isAccountPromptAllowed:purchaseMethod:)@<X0>(char *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  *a4 = 2;
  v8 = type metadata accessor for ManagedAppDeclaration.InstallBehavior(0);
  v9 = a4 + *(v8 + 32);
  *(a4 + 1) = v7;
  *(a4 + 2) = a2;
  result = sub_1D959D0B0(a3, a4 + *(v8 + 28), type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum);
  *v9 = 0;
  *(v9 + 8) = 1;
  return result;
}

uint64_t ManagedAppDeclaration.InstallBehavior.init(installTiming:isAccountPromptAllowed:purchaseMethod:version:cellularAvailability:)@<X0>(char *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, unsigned __int8 *a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a1;
  v13 = *a6;
  *a7 = 2;
  if (v13 == 3)
  {
    v14 = 2;
  }

  else
  {
    v14 = v13;
  }

  v15 = type metadata accessor for ManagedAppDeclaration.InstallBehavior(0);
  v16 = a7 + *(v15 + 32);
  *a7 = v14;
  *(a7 + 1) = v12;
  *(a7 + 2) = a2;
  result = sub_1D959D0B0(a3, a7 + *(v15 + 28), type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum);
  *v16 = a4;
  *(v16 + 8) = a5 & 1;
  return result;
}

uint64_t sub_1D959551C(uint64_t a1)
{
  v2 = sub_1D959D118();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9595558(uint64_t a1)
{
  v2 = sub_1D959D118();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9595594(uint64_t a1)
{
  v2 = sub_1D959D1C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95955D0(uint64_t a1)
{
  v2 = sub_1D959D1C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D959560C(uint64_t a1)
{
  v2 = sub_1D959D16C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9595648(uint64_t a1)
{
  v2 = sub_1D959D16C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedAppDeclaration.InstallBehavior.InstallTimingEnum.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB072A8, &qword_1D95CA260);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB072B0, &qword_1D95CA268);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB072B8, &qword_1D95CA270);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D959D118();
  sub_1D95C05BC();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1D959D16C();
    v18 = v22;
    sub_1D95C034C();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1D959D1C0();
    sub_1D95C034C();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t ManagedAppDeclaration.InstallBehavior.InstallTimingEnum.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB072D8, &qword_1D95CA278);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB072E0, &qword_1D95CA280);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB072E8, &unk_1D95CA288);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D959D118();
  v16 = v36;
  sub_1D95C059C();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_1D95C032C();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1D954A268();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_1D95C01FC();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D48, &qword_1D95C4250) + 48);
      *v26 = &type metadata for ManagedAppDeclaration.InstallBehavior.InstallTimingEnum;
      sub_1D95C028C();
      sub_1D95C01EC();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_1D959D16C();
        sub_1D95C027C();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1D959D1C0();
        sub_1D95C027C();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_0(v17);
}

uint64_t sub_1D9595E50(uint64_t a1)
{
  v2 = sub_1D959D310();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9595E8C(uint64_t a1)
{
  v2 = sub_1D959D310();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9595EC8()
{
  v1 = 0x726576656ELL;
  if (*v0 != 1)
  {
    v1 = 0x74655365726F7473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737961776C61;
  }
}

uint64_t sub_1D9595F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D959E228(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9595F50(uint64_t a1)
{
  v2 = sub_1D959D214();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9595F8C(uint64_t a1)
{
  v2 = sub_1D959D214();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9595FC8(uint64_t a1)
{
  v2 = sub_1D959D2BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9596004(uint64_t a1)
{
  v2 = sub_1D959D2BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9596040(uint64_t a1)
{
  v2 = sub_1D959D268();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D959607C(uint64_t a1)
{
  v2 = sub_1D959D268();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedAppDeclaration.InstallBehavior.CellularAvailabilityEnum.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB072F0, &qword_1D95CA298);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB072F8, &qword_1D95CA2A0);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07300, &qword_1D95CA2A8);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07308, &qword_1D95CA2B0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D959D214();
  sub_1D95C05BC();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_1D959D2BC();
      v12 = v26;
      sub_1D95C034C();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_1D959D268();
      v12 = v29;
      sub_1D95C034C();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_1D959D310();
    sub_1D95C034C();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

uint64_t ManagedAppDeclaration.InstallBehavior.CellularAvailabilityEnum.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07330, &qword_1D95CA2B8);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07338, &qword_1D95CA2C0);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07340, &qword_1D95CA2C8);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07348, &qword_1D95CA2D0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v18);
  sub_1D959D214();
  v20 = v43;
  sub_1D95C059C();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_1D95C032C();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_1D954A26C();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_1D95C01FC();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D48, &qword_1D95C4250) + 48);
      *v30 = &type metadata for ManagedAppDeclaration.InstallBehavior.CellularAvailabilityEnum;
      sub_1D95C028C();
      sub_1D95C01EC();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          sub_1D959D2BC();
          sub_1D95C027C();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_1D959D268();
          v33 = v22;
          sub_1D95C027C();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_1D959D310();
        sub_1D95C027C();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v44);
}

uint64_t static ManagedAppDeclaration.InstallBehavior.PurchaseMethod.volumePurchaseProgram(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  v6 = a3 & 1;
  *(a4 + 16) = a3 & 1;
  *(a4 + 17) = 0;
  type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum(0);
  swift_storeEnumTagMultiPayload();

  return sub_1D953FCA8(a1, a2, v6);
}

uint64_t static ManagedAppDeclaration.InstallBehavior.PurchaseMethod.volumePurchaseProgram(_:license:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a4;
  *a5 = a1;
  *(a5 + 8) = a2;
  v9 = a3 & 1;
  *(a5 + 16) = a3 & 1;
  *(a5 + 17) = v8;
  type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum(0);
  swift_storeEnumTagMultiPayload();

  return sub_1D953FCA8(a1, a2, v9);
}

uint64_t static ManagedAppDeclaration.InstallBehavior.PurchaseMethod.manifest(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D95BFBAC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t static ManagedAppDeclaration.InstallBehavior.PurchaseMethod.preInstalled(_:)@<X0>(void *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = sub_1D95BFD8C();
  v4 = [v2 newComposedIdentifierWithBundleID_];

  *a1 = v4;
  type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum(0);

  return swift_storeEnumTagMultiPayload();
}

id static ManagedAppDeclaration.InstallBehavior.PurchaseMethod.other(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum(0);
  swift_storeEnumTagMultiPayload();

  return a1;
}

unint64_t sub_1D9596C24()
{
  v1 = 0x74736566696E616DLL;
  if (*v0 != 1)
  {
    v1 = 0x726568746FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_1D9596C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D959E340(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9596CA8(uint64_t a1)
{
  v2 = sub_1D959D364();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9596CE4(uint64_t a1)
{
  v2 = sub_1D959D364();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9596D20(uint64_t a1)
{
  v2 = sub_1D959D460();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9596D5C(uint64_t a1)
{
  v2 = sub_1D959D460();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9596D98(uint64_t a1)
{
  v2 = sub_1D959D3B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9596DD4(uint64_t a1)
{
  v2 = sub_1D959D3B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9596E10()
{
  if (*v0)
  {
    result = 0x65736E6563696CLL;
  }

  else
  {
    result = 12383;
  }

  *v0;
  return result;
}

uint64_t sub_1D9596E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1D95C041C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65736E6563696CLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D95C041C();

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

uint64_t sub_1D9596F14(uint64_t a1)
{
  v2 = sub_1D959D4B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9596F50(uint64_t a1)
{
  v2 = sub_1D959D4B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07350, &qword_1D95CA2D8);
  v47 = *(v2 - 8);
  v48 = v2;
  v3 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v44 = &v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07358, &qword_1D95CA2E0);
  v45 = *(v5 - 8);
  v46 = v5;
  v6 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v41 - v7;
  v9 = sub_1D95BFBAC();
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07360, &qword_1D95CA2E8);
  v41 = *(v49 - 8);
  v13 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v15 = &v41 - v14;
  v16 = type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07368, &qword_1D95CA2F0);
  v52 = *(v20 - 8);
  v53 = v20;
  v21 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v41 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D959D364();
  sub_1D95C05BC();
  sub_1D959CFC0(v50, v19, type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v27 = v42;
      v26 = v43;
      (*(v42 + 32))(v12, v19, v43);
      LOBYTE(v54) = 1;
      sub_1D959D460();
      v28 = v53;
      sub_1D95C034C();
      sub_1D959D604(&qword_1ECB05E10, MEMORY[0x1E6968FB0]);
      v29 = v46;
      sub_1D95C03CC();
      (*(v45 + 8))(v8, v29);
      (*(v27 + 8))(v12, v26);
      (*(v52 + 8))(v23, v28);
    }

    else
    {
      v36 = *v19;
      LOBYTE(v54) = 2;
      sub_1D959D3B8();
      v37 = v44;
      v38 = v53;
      sub_1D95C034C();
      v54 = v36;
      sub_1D959D40C();
      v39 = v48;
      sub_1D95C03CC();
      (*(v47 + 8))(v37, v39);
      (*(v52 + 8))(v23, v38);
    }
  }

  else
  {
    v30 = v41;
    v31 = *v19;
    v32 = *(v19 + 1);
    v33 = v19[16];
    LODWORD(v50) = v19[17];
    LOBYTE(v54) = 0;
    sub_1D959D4B4();
    v34 = v53;
    sub_1D95C034C();
    v54 = v31;
    v55 = v32;
    v56 = v33;
    v57 = 0;
    sub_1D959D508();
    v35 = v51;
    sub_1D95C03CC();
    if (v35)
    {
      (*(v30 + 8))(v15, v49);
      (*(v52 + 8))(v23, v34);
      sub_1D953FCF0(v31, v32, v33);
    }

    else
    {
      sub_1D953FCF0(v31, v32, v33);
      LOBYTE(v54) = v50;
      v57 = 1;
      sub_1D959D55C();
      v40 = v49;
      sub_1D95C03CC();
      (*(v30 + 8))(v15, v40);
      (*(v52 + 8))(v23, v34);
    }
  }
}

uint64_t ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB073A8, &qword_1D95CA2F8);
  v68 = *(v74 - 8);
  v3 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v60 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB073B0, &qword_1D95CA300);
  v6 = *(v5 - 8);
  v65 = v5;
  v66 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v69 = &v60 - v8;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB073B8, &qword_1D95CA308);
  v67 = *(v64 - 8);
  v9 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v72 = &v60 - v10;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB073C0, &qword_1D95CA310);
  v71 = *(v75 - 8);
  v11 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v13 = &v60 - v12;
  v14 = type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v60 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v60 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v60 - v25;
  v28 = a1[3];
  v27 = a1[4];
  v77 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v28);
  sub_1D959D364();
  v29 = v76;
  sub_1D95C059C();
  if (!v29)
  {
    v62 = v18;
    v76 = v21;
    v61 = v24;
    v31 = v72;
    v30 = v73;
    v32 = v74;
    v63 = v26;
    v33 = v71;
    v34 = v75;
    v35 = sub_1D95C032C();
    v36 = (2 * *(v35 + 16)) | 1;
    v81 = v35;
    v82 = v35 + 32;
    v83 = 0;
    v84 = v36;
    v37 = sub_1D954A26C();
    if (v37 == 3 || v83 != v84 >> 1)
    {
      v42 = v13;
      v43 = v34;
      v44 = sub_1D95C01FC();
      swift_allocError();
      v46 = v45;
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D48, &qword_1D95C4250) + 48);
      *v46 = v14;
      sub_1D95C028C();
      sub_1D95C01EC();
      (*(*(v44 - 8) + 104))(v46, *MEMORY[0x1E69E6AF8], v44);
      swift_willThrow();
      (*(v33 + 8))(v42, v43);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v37)
      {
        if (v37 == 1)
        {
          LOBYTE(v78) = 1;
          sub_1D959D460();
          v38 = v69;
          sub_1D95C027C();
          v39 = v33;
          sub_1D95BFBAC();
          sub_1D959D604(&qword_1ECB05E88, MEMORY[0x1E6968FB0]);
          v40 = v76;
          v41 = v65;
          sub_1D95C030C();
          (*(v66 + 8))(v38, v41);
          (*(v39 + 8))(v13, v34);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v52 = v40;
        }

        else
        {
          LOBYTE(v78) = 2;
          sub_1D959D3B8();
          sub_1D95C027C();
          sub_1D959D5B0();
          sub_1D95C030C();
          (*(v68 + 8))(v30, v32);
          (*(v33 + 8))(v13, v34);
          swift_unknownObjectRelease();
          v56 = v62;
          *v62 = v78;
          swift_storeEnumTagMultiPayload();
          v52 = v56;
        }

        v59 = v63;
        sub_1D959D0B0(v52, v63, type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum);
        v49 = v70;
      }

      else
      {
        LOBYTE(v78) = 0;
        sub_1D959D4B4();
        sub_1D95C027C();
        v49 = v70;
        v86 = 0;
        sub_1D959D64C();
        v50 = v31;
        v51 = v64;
        sub_1D95C030C();
        v76 = v13;
        v54 = v78;
        v53 = v79;
        v55 = v80;
        v85 = 1;
        sub_1D959D6A0();
        sub_1D95C030C();
        (*(v67 + 8))(v50, v51);
        (*(v33 + 8))(v76, v75);
        swift_unknownObjectRelease();
        v57 = v86;
        v58 = v61;
        *v61 = v54;
        *(v58 + 8) = v53;
        *(v58 + 16) = v55;
        *(v58 + 17) = v57;
        swift_storeEnumTagMultiPayload();
        v59 = v63;
        sub_1D959D0B0(v58, v63, type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum);
      }

      sub_1D959D0B0(v59, v49, type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v77);
}

uint64_t sub_1D9597F0C()
{
  if (*v0)
  {
    result = 0x656369766564;
  }

  else
  {
    result = 1919251317;
  }

  *v0;
  return result;
}

uint64_t sub_1D9597F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1919251317 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D95C041C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656369766564 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D95C041C();

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

uint64_t sub_1D9598014(uint64_t a1)
{
  v2 = sub_1D959D6F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9598050(uint64_t a1)
{
  v2 = sub_1D959D6F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D959808C(uint64_t a1)
{
  v2 = sub_1D959D748();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95980C8(uint64_t a1)
{
  v2 = sub_1D959D748();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9598104(uint64_t a1)
{
  v2 = sub_1D959D79C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9598140(uint64_t a1)
{
  v2 = sub_1D959D79C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedAppDeclaration.InstallBehavior.LicenseEnum.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB073E0, &qword_1D95CA318);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB073E8, &qword_1D95CA320);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB073F0, &qword_1D95CA328);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D959D6F4();
  sub_1D95C05BC();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1D959D748();
    v18 = v22;
    sub_1D95C034C();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1D959D79C();
    sub_1D95C034C();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t ManagedAppDeclaration.InstallBehavior.LicenseEnum.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07410, &qword_1D95CA330);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07418, &qword_1D95CA338);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07420, &qword_1D95CA340);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D959D6F4();
  v16 = v36;
  sub_1D95C059C();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_1D95C032C();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1D954A268();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_1D95C01FC();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D48, &qword_1D95C4250) + 48);
      *v26 = &type metadata for ManagedAppDeclaration.InstallBehavior.LicenseEnum;
      sub_1D95C028C();
      sub_1D95C01EC();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_1D959D748();
        sub_1D95C027C();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1D959D79C();
        sub_1D95C027C();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_0(v17);
}

unint64_t sub_1D9598918()
{
  v1 = *v0;
  v2 = 0x546C6C6174736E69;
  v3 = 0xD000000000000016;
  v4 = 0x6573616863727570;
  if (v1 != 3)
  {
    v4 = 0x6E6F6973726576;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000014;
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

uint64_t sub_1D95989D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D959E460(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9598A00(uint64_t a1)
{
  v2 = sub_1D959D7F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9598A3C(uint64_t a1)
{
  v2 = sub_1D959D7F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedAppDeclaration.InstallBehavior.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07428, &qword_1D95CA348);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D959D7F0();
  sub_1D95C05BC();
  v18[15] = *v3;
  v18[14] = 0;
  sub_1D959D844();
  sub_1D95C03CC();
  if (!v2)
  {
    v18[13] = v3[1];
    v18[12] = 1;
    sub_1D959D898();
    sub_1D95C03CC();
    v11 = v3[2];
    v18[11] = 2;
    sub_1D95C039C();
    v12 = type metadata accessor for ManagedAppDeclaration.InstallBehavior(0);
    v13 = *(v12 + 28);
    v18[10] = 3;
    type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum(0);
    sub_1D959D604(&qword_1ECB07448, type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum);
    sub_1D95C03CC();
    v14 = &v3[*(v12 + 32)];
    v15 = *v14;
    v16 = v14[8];
    v18[9] = 4;
    sub_1D95C037C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ManagedAppDeclaration.InstallBehavior.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07450, &qword_1D95CA350);
  v30 = *(v7 - 8);
  v31 = v7;
  v8 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - v9;
  v11 = type metadata accessor for ManagedAppDeclaration.InstallBehavior(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v15 = a1[4];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v16);
  sub_1D959D7F0();
  v17 = v32;
  sub_1D95C059C();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_0(v33);
  }

  v32 = v11;
  v18 = v14;
  v19 = v30;
  v39 = 0;
  sub_1D959D8EC();
  v20 = v31;
  sub_1D95C030C();
  *v18 = v40;
  v37 = 1;
  sub_1D959D940();
  sub_1D95C030C();
  v18[1] = v38;
  v36 = 2;
  v18[2] = sub_1D95C02DC() & 1;
  v35 = 3;
  sub_1D959D604(&qword_1ECB07468, type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum);
  sub_1D95C030C();
  v21 = v32;
  sub_1D959D0B0(v6, &v18[*(v32 + 28)], type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum);
  v34 = 4;
  v22 = sub_1D95C02BC();
  v24 = v23;
  v25 = v18;
  v26 = &v18[*(v21 + 32)];
  (*(v19 + 8))(v10, v20);
  *v26 = v22;
  v26[8] = v24 & 1;
  sub_1D959CFC0(v25, v29, type metadata accessor for ManagedAppDeclaration.InstallBehavior);
  __swift_destroy_boxed_opaque_existential_0(v33);
  return sub_1D959D994(v25, type metadata accessor for ManagedAppDeclaration.InstallBehavior);
}

uint64_t sub_1D959918C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x704170756B636162 && a2 == 0xED00006174614470)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D95C041C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D959921C(uint64_t a1)
{
  v2 = sub_1D959D9F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9599258(uint64_t a1)
{
  v2 = sub_1D959D9F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedAppDeclaration.BackupBehavior.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07470, &qword_1D95CA358);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D959D9F4();
  sub_1D95C05BC();
  sub_1D95C039C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t ManagedAppDeclaration.BackupBehavior.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07480, &qword_1D95CA360);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D959D9F4();
  sub_1D95C059C();
  if (!v2)
  {
    v11 = sub_1D95C02DC();
    (*(v6 + 8))(v9, v5);
    *a2 = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1D959953C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07470, &qword_1D95CA358);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D959D9F4();
  sub_1D95C05BC();
  sub_1D95C039C();
  return (*(v4 + 8))(v7, v3);
}

char *ManagedAppDeclaration.UpdateBehavior.init(policy:)@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 9) = v2;
  return result;
}

uint64_t sub_1D95996D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D95C041C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}