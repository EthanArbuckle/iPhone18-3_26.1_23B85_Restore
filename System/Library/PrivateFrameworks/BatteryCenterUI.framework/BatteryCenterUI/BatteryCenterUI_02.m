uint64_t sub_1C1C894D0(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for BCUIRingAndGlyphView(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  return a1(v2);
}

uint64_t sub_1C1C8952C()
{
  type metadata accessor for BCUIRingAndGlyphView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D28);
  sub_1C1C9AFD8();
  return v1;
}

uint64_t sub_1C1C89594()
{
  type metadata accessor for BCUIRingAndGlyphView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D28);
  return sub_1C1C9AFE8();
}

uint64_t (*sub_1C1C89604(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for BCUIRingAndGlyphView(0) + 56));
  v6 = *v5;
  *(v4 + 50) = *v5;
  v7 = *(v5 + 1);
  *(v4 + 32) = v7;
  *v4 = v6;
  *(v4 + 8) = v7;

  *(v4 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D28);
  sub_1C1C9AFD8();
  return sub_1C1C71EEC;
}

uint64_t sub_1C1C896C0()
{
  type metadata accessor for BCUIRingAndGlyphView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D28);
  sub_1C1C9AFF8();
  return v1;
}

double sub_1C1C8972C()
{
  type metadata accessor for BCUIRingAndGlyphView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EF8);
  sub_1C1C9A678();
  return v1;
}

uint64_t sub_1C1C897D0()
{
  type metadata accessor for BCUIRingAndGlyphView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18280);
  return sub_1C1C9AFE8();
}

uint64_t sub_1C1C89848()
{
  type metadata accessor for BCUIRingAndGlyphView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18280);
  return sub_1C1C9AFE8();
}

uint64_t sub_1C1C898C0()
{
  type metadata accessor for BCUIRingAndGlyphView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18400);
  return sub_1C1C9AFE8();
}

double sub_1C1C89934()
{
  v1 = sub_1C1C9A7B8();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v17 - v6;
  v8 = (v0 + *(type metadata accessor for BCUIRingAndGlyphView(0) + 28));
  v9 = v8[1];
  v10 = v8[2];
  v17[1] = *v8;
  v17[2] = v9;
  v17[3] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D18);
  MEMORY[0x1C6909DC0](v17, v11);
  v12 = *v17;
  sub_1C1C87FD8(&qword_1EBF17D38, MEMORY[0x1E697E7E0], v7);
  (*(v2 + 104))(v5, *MEMORY[0x1E697E7D8], v1);
  v13 = sub_1C1C9A7A8();
  v14 = *(v2 + 8);
  v14(v5, v1);
  v14(v7, v1);
  v15 = -90.0;
  if (v13)
  {
    v15 = 90.0;
  }

  return v12 * 360.0 + -360.0 + v15;
}

BOOL sub_1C1C89B30(_BOOL8 result)
{
  if (result)
  {
    return sub_1C1C98F8C();
  }

  return result;
}

uint64_t sub_1C1C89B90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v62 = sub_1C1C9A7B8();
  v3 = *(v62 - 8);
  v4 = MEMORY[0x1EEE9AC00](v62);
  v61 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v59 - v6;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18440);
  MEMORY[0x1EEE9AC00](v66);
  v63 = &v59 - v8;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18490);
  v65 = *(v67 - 8);
  v9 = MEMORY[0x1EEE9AC00](v67);
  v64 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v70 = &v59 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18498);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v69 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v60 = &v59 - v15;
  v16 = type metadata accessor for BCUIRingAndGlyphView(0);
  v17 = *(a1 + v16[16]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF184A0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C1C9E190;
  sub_1C1C9AE88();
  v19 = sub_1C1C9AED8();

  *(v18 + 32) = v19;
  *(v18 + 40) = sub_1C1C9AE98();
  MEMORY[0x1C6909E30](v18);
  sub_1C1C9B158();
  sub_1C1C9A788();
  sub_1C1C503B8();
  sub_1C1C9A638();
  v20 = sub_1C1C9B0E8();
  v22 = v21;
  v23 = sub_1C1C89934() * 0.0174532925;
  sub_1C1C9B158();
  *&v78 = 0;
  *(&v78 + 1) = v17 / 360.0;
  *(v81 + 8) = v85;
  *(&v81[1] + 8) = v86;
  *(&v81[2] + 1) = v87;
  LOWORD(v82) = 256;
  *(&v82 + 1) = v20;
  *&v83 = v22;
  *(&v83 + 1) = v23;
  *&v84 = v24;
  *(&v84 + 1) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF184A8);
  sub_1C1C8B914();
  sub_1C1C9ADD8();
  *&v88[12] = v82;
  *&v88[14] = v83;
  *&v88[16] = v84;
  *&v88[4] = v80;
  *&v88[6] = v81[0];
  *&v88[8] = v81[1];
  *&v88[10] = v81[2];
  *v88 = v78;
  *&v88[2] = v79;
  sub_1C1C4E77C(v88, &qword_1EBF184A8);
  v26 = (a1 + v16[7]);
  v27 = v26[1];
  v28 = v26[2];
  v29 = (360.0 - v17) / 360.0;
  *&v78 = *v26;
  *(&v78 + 1) = v27;
  *&v79 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D18);
  MEMORY[0x1C6909DC0](&v71, v30);
  v31 = v71;
  v32 = (a1 + v16[20]);
  v34 = *v32;
  v33 = v32[1];
  *&v78 = v34;
  *(&v78 + 1) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18400);
  sub_1C1C9AFD8();
  v35 = v71;
  sub_1C1C503B8();
  sub_1C1C9A638();
  v36 = sub_1C1C9B0E8();
  v38 = v37;
  sub_1C1C87FD8(&qword_1EBF17D38, MEMORY[0x1E697E7E0], v7);
  v40 = v61;
  v39 = v62;
  (*(v3 + 104))(v61, *MEMORY[0x1E697E7D8], v62);
  LOBYTE(v18) = sub_1C1C9A7A8();
  v41 = *(v3 + 8);
  v41(v40, v39);
  v41(v7, v39);
  if (v18)
  {
    v42 = 1.57079633;
  }

  else
  {
    v42 = -1.57079633;
  }

  sub_1C1C9B158();
  *&v71 = v29;
  *(&v71 + 1) = v31;
  v72 = *&v88[19];
  v73 = *&v88[21];
  *&v74 = v88[23];
  *(&v74 + 1) = v35;
  LOWORD(v75) = 256;
  *(&v75 + 1) = v36;
  *&v76 = v38;
  *(&v76 + 1) = v42;
  *&v77 = v43;
  *(&v77 + 1) = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18448);
  sub_1C1C8B5E0();
  v45 = v63;
  sub_1C1C9ADD8();
  v81[1] = v75;
  v81[2] = v76;
  v82 = v77;
  v78 = v71;
  v79 = v72;
  v80 = v73;
  v81[0] = v74;
  sub_1C1C4E77C(&v78, &qword_1EBF18448);
  sub_1C1C8B77C(&qword_1EBF184C8, &qword_1EBF18440, &unk_1C1C9E8A0, sub_1C1C8B5E0);
  v46 = v70;
  sub_1C1C9AD58();
  sub_1C1C4E77C(v45, &qword_1EBF18440);
  v47 = v60;
  v48 = v69;
  sub_1C1C4E714(v60, v69, &qword_1EBF18498);
  v49 = v64;
  v50 = v65;
  v51 = *(v65 + 16);
  v52 = v46;
  v53 = v67;
  v51(v64, v52, v67);
  v54 = v48;
  v55 = v68;
  sub_1C1C4E714(v54, v68, &qword_1EBF18498);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF184D0);
  v51((v55 + *(v56 + 48)), v49, v53);
  v57 = *(v50 + 8);
  v57(v70, v53);
  sub_1C1C4E77C(v47, &qword_1EBF18498);
  v57(v49, v53);
  return sub_1C1C4E77C(v69, &qword_1EBF18498);
}

uint64_t sub_1C1C8A2E8()
{
  v1 = type metadata accessor for BCUIRingAndGlyphView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D18);
  MEMORY[0x1C6909DC0](&v8);
  v7[3] = v2;
  sub_1C1C9A738();
  MEMORY[0x1C6909DC0](v7, v3);
  sub_1C1C9A738();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D10);
  MEMORY[0x1C6909DC0](&v9);
  v5 = v9;
  MEMORY[0x1C6909DC0](&v9, v4);
  sub_1C1C8A4D8(v5, v9);
  sub_1C1C9A738();
}

uint64_t sub_1C1C8A4D8(char a1, char a2)
{
  v4 = sub_1C1C9B1A8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  type metadata accessor for BCUIRingAndGlyphView(0);
  sub_1C1C87FD8(&qword_1EBF17D40, MEMORY[0x1E6985778], v10);
  sub_1C1C9B198();
  sub_1C1C573C4(&qword_1ED7C4AE0, MEMORY[0x1E6985778]);
  v11 = sub_1C1C9B218();
  v12 = *(v5 + 8);
  v12(v8, v4);
  v12(v10, v4);
  if (v11)
  {
    sub_1C1C55268();
  }

  else if (a2)
  {
    return sub_1C1C9AEC8();
  }

  else if (a1)
  {
    return sub_1C1C9AE78();
  }

  else
  {
    return sub_1C1C9AEA8();
  }
}

uint64_t sub_1C1C8A6A0()
{
  type metadata accessor for BCUIRingAndGlyphView(0);
  sub_1C1C54F80();

  sub_1C1C9A738();

  sub_1C1C991F4();

  sub_1C1C9A738();
}

unint64_t sub_1C1C8A7A4()
{
  result = qword_1EBF17B58;
  if (!qword_1EBF17B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF183B0);
    sub_1C1C4CEAC(&qword_1EBF17A90, &qword_1EBF183B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF17B58);
  }

  return result;
}

uint64_t sub_1C1C8A85C(uint64_t a1, _BYTE *a2)
{
  type metadata accessor for BCUIRingAndGlyphView(0);
  LOBYTE(a2) = *a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D10);
  MEMORY[0x1C6909DC0](&v5, v3);
  sub_1C1C8A4D8(a2, v5);
  sub_1C1C54F80();

  sub_1C1C9A738();
}

uint64_t sub_1C1C8A968(uint64_t a1, _BYTE *a2)
{
  type metadata accessor for BCUIRingAndGlyphView(0);
  LOBYTE(a2) = *a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D10);
  MEMORY[0x1C6909DC0](&v5, v3);
  sub_1C1C8A4D8(v5, a2);
  sub_1C1C54F80();

  sub_1C1C9A738();
}

uint64_t sub_1C1C8AA9C()
{
  type metadata accessor for BCUIRingAndGlyphView.maskRingAndGlyphView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D28);
  sub_1C1C9AFD8();
  return v1;
}

uint64_t sub_1C1C8AB04()
{
  type metadata accessor for BCUIRingAndGlyphView.maskRingAndGlyphView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D28);
  return sub_1C1C9AFE8();
}

uint64_t (*sub_1C1C8AB74(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for BCUIRingAndGlyphView.maskRingAndGlyphView(0) + 20));
  v6 = *v5;
  *(v4 + 50) = *v5;
  v7 = *(v5 + 1);
  *(v4 + 32) = v7;
  *v4 = v6;
  *(v4 + 8) = v7;

  *(v4 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D28);
  sub_1C1C9AFD8();
  return sub_1C1C6E5F4;
}

uint64_t sub_1C1C8AC30()
{
  type metadata accessor for BCUIRingAndGlyphView.maskRingAndGlyphView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D28);
  sub_1C1C9AFF8();
  return v1;
}

uint64_t sub_1C1C8ACB4(uint64_t a1)
{
  v2 = sub_1C1C9A798();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BCUIRingAndGlyphView.maskRingAndGlyphView(0);
  (*(v3 + 16))(v5, a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  sub_1C1C9B028();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_1C1C8ADC8(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = sub_1C1C9A798();
  *v5 = v6;
  v7 = *(v6 - 8);
  v5[1] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[3] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  v5[4] = v10;
  if (v3)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(*(v10 - 8) + 64));
  }

  v12 = v11;
  v5[5] = v11;
  v13 = type metadata accessor for BCUIRingAndGlyphView.maskRingAndGlyphView(0);
  sub_1C1C4E714(v1 + *(v13 + 24), v12, &qword_1EBF17FA0);
  MEMORY[0x1C6909DC0](v10);
  return sub_1C1C8AF4C;
}

uint64_t sub_1C1C8AF68(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for BCUIRingAndGlyphView.maskRingAndGlyphView(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  return a1(v2);
}

double sub_1C1C8AFC4()
{
  type metadata accessor for BCUIRingAndGlyphView.maskRingAndGlyphView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EF8);
  sub_1C1C9A678();
  return v1;
}

void sub_1C1C8B0A0()
{
  sub_1C1C53AC8(319, &qword_1EBF17C18, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1C1C53B2C(319, &qword_1EBF17AC8, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_1C1C53AC8(319, &qword_1ED7C4AE8, MEMORY[0x1E697E730], MEMORY[0x1E6981948]);
      if (v2 <= 0x3F)
      {
        sub_1C1C51154();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1C1C8B1D8()
{
  result = qword_1EBF17B80;
  if (!qword_1EBF17B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF183D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18398);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18390);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18388);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18380);
    sub_1C1C54FDC();
    sub_1C1C54F20();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1C1C573C4(&qword_1EBF17AF0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF17B80);
  }

  return result;
}

unint64_t sub_1C1C8B3A4()
{
  result = qword_1ED7C4B88;
  if (!qword_1ED7C4B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF183C8);
    sub_1C1C4CEAC(&qword_1ED7C4B00, &qword_1EBF183D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C4B88);
  }

  return result;
}

uint64_t sub_1C1C8B484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  MEMORY[0x1EEE9AC00]();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

unint64_t sub_1C1C8B5E0()
{
  result = qword_1ED7C4BB0;
  if (!qword_1ED7C4BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18448);
    sub_1C1C4CEAC(&qword_1ED7C4B58, &qword_1EBF18450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C4BB0);
  }

  return result;
}

unint64_t sub_1C1C8B698()
{
  result = qword_1ED7C4B98;
  if (!qword_1ED7C4B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18428);
    sub_1C1C4CEAC(&qword_1ED7C4B10, &qword_1EBF18458);
    sub_1C1C4CEAC(&qword_1ED7C4B30, &qword_1EBF18358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C4B98);
  }

  return result;
}

uint64_t sub_1C1C8B77C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1C1C573C4(&qword_1EBF17AF0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C1C8B830()
{
  result = qword_1EBF18480;
  if (!qword_1EBF18480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18410);
    sub_1C1C4CEAC(&qword_1EBF18488, &qword_1EBF18478);
    sub_1C1C4CEAC(&qword_1ED7C4B30, &qword_1EBF18358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF18480);
  }

  return result;
}

unint64_t sub_1C1C8B914()
{
  result = qword_1EBF184B0;
  if (!qword_1EBF184B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF184A8);
    sub_1C1C4CEAC(&qword_1EBF184B8, &qword_1EBF184C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF184B0);
  }

  return result;
}

uint64_t sub_1C1C8BA48@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C1C9AA38();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17CE8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for BatteryAvocadoArchivableView();
  sub_1C1C4E714(v1 + *(v10 + 20), v9, &qword_1EBF17CE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C1C9A5F8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1C1C9B408();
    v13 = sub_1C1C9ABF8();
    sub_1C1C9A498();

    sub_1C1C9AA28();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1C1C8BC6C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C1C9AA38();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF184E0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for BatteryAvocadoArchivableView();
  sub_1C1C4E714(v1 + *(v10 + 24), v9, &qword_1EBF184E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C1C9A798();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1C1C9B408();
    v13 = sub_1C1C9ABF8();
    sub_1C1C9A498();

    sub_1C1C9AA28();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1C1C8BEE0()
{
  v1 = sub_1C1C9AA38();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for BatteryAvocadoArchivableView() + 28);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_1C1C9B408();
    v7 = sub_1C1C9ABF8();
    sub_1C1C9A498();

    sub_1C1C9AA28();
    swift_getAtKeyPath();
    sub_1C1C5B774(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_1C1C8C05C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C1C9AA38();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF184E8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for BatteryAvocadoArchivableView();
  sub_1C1C4E714(v1 + *(v10 + 32), v9, &qword_1EBF184E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C1C9A458();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1C1C9B408();
    v13 = sub_1C1C9ABF8();
    sub_1C1C9A498();

    sub_1C1C9AA28();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1C1C8C2D0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C1C9AA38();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF184F0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for BatteryAvocadoArchivableView();
  sub_1C1C4E714(v1 + *(v10 + 36), v9, &qword_1EBF184F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C1C9AAE8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1C1C9B408();
    v13 = sub_1C1C9ABF8();
    sub_1C1C9A498();

    sub_1C1C9AA28();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1C1C8C544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  MEMORY[0x1EEE9AC00]();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

uint64_t sub_1C1C8C668(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = (v1 + *(type metadata accessor for BatteryAvocadoArchivableView() + 40));
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = type metadata accessor for AvocadoViewModel();
  v7 = sub_1C1C4D924(qword_1ED7C53F8, type metadata accessor for AvocadoViewModel);

  return a1(v3, v4, v5, v6, v7);
}

void sub_1C1C8C71C()
{
  v0 = sub_1C1C9A4C8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C1C9B1B8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *sub_1C1C59138();
  if (v8)
  {
    (*(v5 + 104))(v7, *MEMORY[0x1E6985800], v4);
    sub_1C1C4D924(&qword_1ED7C4AD8, MEMORY[0x1E6985838]);
    v9 = v8;
    sub_1C1C9B328();
    sub_1C1C9B328();
    (*(v5 + 8))(v7, v4);
    if (v22 == v21)
    {
      v10 = sub_1C1C9A468();
      sub_1C1C99354();

      v11 = sub_1C1C9B228();

      [v9 setObject:v10 forKey:v11];
    }
  }

  else
  {
    v12 = sub_1C1C4D054();
    (*(v1 + 16))(v3, v12, v0);
    v13 = sub_1C1C9A4A8();
    v14 = sub_1C1C9B3F8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136315394;
      *(v15 + 4) = sub_1C1C4DDB8(0xD00000000000001CLL, 0x80000001C1C9EC00, &v22);
      *(v15 + 12) = 2080;
      v17 = sub_1C1C99398();
      v18 = *v17;
      v19 = v17[1];

      v20 = sub_1C1C4DDB8(v18, v19, &v22);

      *(v15 + 14) = v20;
      _os_log_impl(&dword_1C1C4A000, v13, v14, "(%s) UserDefault object for domain %s was nil", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C690AD10](v16, -1, -1);
      MEMORY[0x1C690AD10](v15, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
  }
}

uint64_t BatteryAvocadoArchivableView.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF184F8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  v7 = sub_1C1C9B1B8();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  BatteryAvocadoArchivableView.init(withSize:andFamily:)(v6, a2, 0.0, 0.0);
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1C1C8CBA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1C9A8F8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1C1C8CC00()
{
  v0 = sub_1C1C9A5F8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v20 = v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1C1C9A798();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BatteryAvocadoArchivableView();
  type metadata accessor for AvocadoViewModel();
  sub_1C1C4D924(qword_1ED7C53F8, type metadata accessor for AvocadoViewModel);
  v6 = sub_1C1C9A618();
  v19[1] = v5;

  sub_1C1C9A4F8();

  (*(*v6 + 456))(v21);

  v7 = sub_1C1C9A618();
  sub_1C1C8BC6C(v4);
  (*(*v7 + 368))(v4);

  v8 = sub_1C1C9A618();
  v9 = v20;
  sub_1C1C8BA48(v20);
  (*(*v8 + 416))(v9);

  v10 = sub_1C1C59138();
  if (*v10)
  {
    v11 = *v10;
    sub_1C1C99354();

    v12 = sub_1C1C9B228();

    [v11 floatForKey_];
    v14 = v13;

    if (v14 != 0.0)
    {
      v15 = *sub_1C1C9A618();
      (*(v15 + 312))();
      v17 = v16;

      if (v17)
      {
        v18 = sub_1C1C9A618();
        (*(*v18 + 320))(v14, 0);
      }
    }
  }
}

void sub_1C1C8D00C()
{
  type metadata accessor for BatteryAvocadoArchivableView();

  sub_1C1C8CC00();
}

uint64_t sub_1C1C8D06C(uint64_t a1)
{
  v2 = sub_1C1C9A798();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BatteryAvocadoArchivableView();
  type metadata accessor for AvocadoViewModel();
  sub_1C1C4D924(qword_1ED7C53F8, type metadata accessor for AvocadoViewModel);
  v6 = sub_1C1C9A618();
  (*(v3 + 16))(v5, a1, v2);
  (*(*v6 + 368))(v5);
}

uint64_t sub_1C1C8D214(uint64_t a1)
{
  v2 = sub_1C1C9A5F8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BatteryAvocadoArchivableView();
  type metadata accessor for AvocadoViewModel();
  sub_1C1C4D924(qword_1ED7C53F8, type metadata accessor for AvocadoViewModel);
  v6 = sub_1C1C9A618();
  (*(v3 + 16))(v5, a1, v2);
  (*(*v6 + 416))(v5);
}

uint64_t sub_1C1C8D3BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(type metadata accessor for BatteryAvocadoArchivableView() - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a2, v6);
}

void sub_1C1C8D440()
{
  type metadata accessor for BatteryAvocadoArchivableView();

  sub_1C1C4E168();
}

uint64_t sub_1C1C8D46C(void *a1, char a2, uint64_t a3)
{
  v6 = sub_1C1C9A4C8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C1C4D054();
  (*(v7 + 16))(v9, v10, v6);
  sub_1C1C587B4(a1, a2 & 1);

  v11 = sub_1C1C9A4A8();
  v12 = sub_1C1C9B418();
  sub_1C1C5D6B4(a1, a2 & 1);

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_1C1C4DDB8(0xD000000000000040, 0x80000001C1CA0840, &v21);
    *(v13 + 12) = 2080;
    (*(*a3 + 264))();
    v15 = MEMORY[0x1C690A0F0]();
    v17 = v16;

    v18 = sub_1C1C4DDB8(v15, v17, &v21);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_1C1C4A000, v11, v12, "(%s) Devices to be rendered in UI: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C690AD10](v14, -1, -1);
    MEMORY[0x1C690AD10](v13, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1C1C8D6F4(void *a1, char a2, uint64_t a3)
{
  v6 = sub_1C1C9A4C8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C1C4D054();
  (*(v7 + 16))(v9, v10, v6);
  sub_1C1C587B4(a1, a2 & 1);

  v11 = sub_1C1C9A4A8();
  v12 = sub_1C1C9B418();
  sub_1C1C5D6B4(a1, a2 & 1);

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_1C1C4DDB8(0xD000000000000040, 0x80000001C1CA0840, &v21);
    *(v13 + 12) = 2080;
    (*(*a3 + 216))();
    v15 = MEMORY[0x1C690A0F0]();
    v17 = v16;

    v18 = sub_1C1C4DDB8(v15, v17, &v21);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_1C1C4A000, v11, v12, "(%s) Devices to be rendered in UI: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C690AD10](v14, -1, -1);
    MEMORY[0x1C690AD10](v13, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1C1C8D968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C1C4D924(&qword_1ED7C54E0, type metadata accessor for BatteryAvocadoArchivableView);

  return MEMORY[0x1EEDDA030](a1, a2, a3, v6);
}

uint64_t sub_1C1C8DA84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1C1C8DACC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void *sub_1C1C8DB54()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18588);
  v2 = *v0;
  v3 = sub_1C1C9B548();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

unint64_t sub_1C1C8DCBC()
{
  result = qword_1EBF17B00;
  if (!qword_1EBF17B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBF18590);
    sub_1C1C55888();
    sub_1C1C55A8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF17B00);
  }

  return result;
}

id sub_1C1C8DD4C()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1C1C8DD80()
{
  if (qword_1ED7C5E80 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED7C6348;

  return v0;
}

uint64_t sub_1C1C8DDDC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF185A0);
  swift_allocObject();
  return sub_1C1C9A508();
}

id sub_1C1C8DE48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BatteryCenterObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1C1C8DED8@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for BCUIChargeRingView(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18188);
  MEMORY[0x1C6909DC0](v5, v2);
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = *&v6;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return result;
}

uint64_t sub_1C1C8DF64()
{
  v1 = v0 + *(type metadata accessor for BCUIChargeRingView(0) + 20);
  v2 = *(v1 + 16);
  v3 = *(v1 + 48);
  v12 = *(v1 + 32);
  v13 = v3;
  v4 = *(v1 + 16);
  v11[0] = *v1;
  v11[1] = v4;
  v8 = v12;
  v9 = *(v1 + 48);
  v14 = *(v1 + 64);
  v10 = *(v1 + 64);
  v6 = v11[0];
  v7 = v2;
  sub_1C1C4E714(v11, v15, &qword_1EBF18188);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18188);
  sub_1C1C9B028();
  v15[2] = v8;
  v15[3] = v9;
  v16 = v10;
  v15[0] = v6;
  v15[1] = v7;
  return sub_1C1C4E77C(v15, &qword_1EBF18188);
}

void (*sub_1C1C8E058(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x240uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for BCUIChargeRingView(0) + 20));
  v6 = v5[2];
  v7 = v5[3];
  *(v4 + 32) = v6;
  *(v4 + 48) = v7;
  v8 = *(v5 + 8);
  *(v4 + 64) = v8;
  v10 = *v5;
  v9 = v5[1];
  *v4 = *v5;
  *(v4 + 16) = v9;
  *(v4 + 88) = v9;
  *(v4 + 104) = v6;
  *(v4 + 120) = v7;
  *(v4 + 136) = v8;
  *(v4 + 72) = v10;
  sub_1C1C4E714(v4, v4 + 144, &qword_1EBF18188);
  *(v4 + 568) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18188);
  MEMORY[0x1C6909DC0]();
  return sub_1C1C8FC54;
}

__n128 sub_1C1C8E140@<Q0>(uint64_t a1@<X8>)
{
  type metadata accessor for BCUIChargeRingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18188);
  sub_1C1C9B048();
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  result = v4;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_1C1C8E1E8(uint64_t a1)
{
  v2 = sub_1C1C9A798();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BCUIChargeRingView(0);
  (*(v3 + 16))(v5, a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  sub_1C1C9B028();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_1C1C8E2FC(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = sub_1C1C9A798();
  *v5 = v6;
  v7 = *(v6 - 8);
  v5[1] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[3] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  v5[4] = v10;
  if (v3)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(*(v10 - 8) + 64));
  }

  v12 = v11;
  v5[5] = v11;
  v13 = type metadata accessor for BCUIChargeRingView(0);
  sub_1C1C4E714(v1 + *(v13 + 24), v12, &qword_1EBF17FA0);
  MEMORY[0x1C6909DC0](v10);
  return sub_1C1C8BA20;
}

uint64_t sub_1C1C8E498(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for BCUIChargeRingView(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  return a1(v2);
}

uint64_t sub_1C1C8E4F4()
{
  type metadata accessor for BCUIChargeRingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D28);
  sub_1C1C9AFD8();
  return v1;
}

uint64_t sub_1C1C8E55C()
{
  type metadata accessor for BCUIChargeRingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D28);
  return sub_1C1C9AFE8();
}

uint64_t (*sub_1C1C8E5CC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for BCUIChargeRingView(0) + 28));
  v6 = *v5;
  *(v4 + 50) = *v5;
  v7 = *(v5 + 1);
  *(v4 + 32) = v7;
  *v4 = v6;
  *(v4 + 8) = v7;

  *(v4 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D28);
  sub_1C1C9AFD8();
  return sub_1C1C71EEC;
}

uint64_t sub_1C1C8E688()
{
  type metadata accessor for BCUIChargeRingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D28);
  sub_1C1C9AFF8();
  return v1;
}

uint64_t sub_1C1C8E6F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17CE8);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for BCUIBoltView(0);
  v7 = a3 + v6[5];
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  v8 = v6[6];
  *(a3 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D40);
  swift_storeEnumTagMultiPayload();
  v9 = a3 + v6[7];
  v10 = *(a1 + 48);
  *(v9 + 2) = *(a1 + 32);
  *(v9 + 3) = v10;
  *(v9 + 8) = *(a1 + 64);
  v11 = *(a1 + 16);
  *v9 = *a1;
  *(v9 + 1) = v11;
  sub_1C1C58444(a2, a3 + v6[8]);
  v12 = a3 + v6[9];
  sub_1C1C9AFC8();
  *v12 = v15;
  *(v12 + 1) = v16;
  v13 = (a3 + v6[10]);
  sub_1C1C9AFC8();
  *v13 = v15;
  v13[1] = v16;
  sub_1C1C4DD2C();
  sub_1C1C9A668();
  return sub_1C1C9A668();
}

uint64_t sub_1C1C8E8B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D28);
  sub_1C1C9AFD8();
  return v1;
}

uint64_t (*sub_1C1C8E964(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 50) = *v1;
  v6 = *(v1 + 1);
  *(v4 + 32) = v6;
  *v4 = v5;
  *(v4 + 8) = v6;

  *(v4 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D28);
  sub_1C1C9AFD8();
  return sub_1C1C71EEC;
}

uint64_t sub_1C1C8EA10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D28);
  sub_1C1C9AFF8();
  return v1;
}

uint64_t sub_1C1C8EA84(uint64_t a1)
{
  v2 = sub_1C1C9A798();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BCUIChargeRingView.maskChargeRingView(0);
  (*(v3 + 16))(v5, a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  sub_1C1C9B028();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_1C1C8EB98(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = sub_1C1C9A798();
  *v5 = v6;
  v7 = *(v6 - 8);
  v5[1] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[3] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  v5[4] = v10;
  if (v3)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(*(v10 - 8) + 64));
  }

  v12 = v11;
  v5[5] = v11;
  v13 = type metadata accessor for BCUIChargeRingView.maskChargeRingView(0);
  sub_1C1C4E714(v1 + *(v13 + 20), v12, &qword_1EBF17FA0);
  MEMORY[0x1C6909DC0](v10);
  return sub_1C1C8BA20;
}

uint64_t sub_1C1C8ED34(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for BCUIChargeRingView.maskChargeRingView(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  return a1(v2);
}

uint64_t sub_1C1C8ED90@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17CF0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11[-v7];
  v9 = *(v1 + 8);
  v11[16] = *v1;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D28);
  sub_1C1C9AFD8();
  type metadata accessor for BCUIChargeRingView.maskChargeRingView(0);
  sub_1C1C9B048();
  sub_1C1C5D0C4(v5);
  sub_1C1C525B4();
  return sub_1C1C5D0E0(v5, v8, a1);
}

uint64_t sub_1C1C8EF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  MEMORY[0x1EEE9AC00]();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

double sub_1C1C8F010@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for BCUIBoltView(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18188);
  MEMORY[0x1C6909DC0](v5, v2);
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = *&v6;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return result;
}

uint64_t sub_1C1C8F09C()
{
  v1 = v0 + *(type metadata accessor for BCUIBoltView(0) + 28);
  v2 = *(v1 + 16);
  v3 = *(v1 + 48);
  v12 = *(v1 + 32);
  v13 = v3;
  v4 = *(v1 + 16);
  v11[0] = *v1;
  v11[1] = v4;
  v8 = v12;
  v9 = *(v1 + 48);
  v14 = *(v1 + 64);
  v10 = *(v1 + 64);
  v6 = v11[0];
  v7 = v2;
  sub_1C1C4E714(v11, v15, &qword_1EBF18188);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18188);
  sub_1C1C9B028();
  v15[2] = v8;
  v15[3] = v9;
  v16 = v10;
  v15[0] = v6;
  v15[1] = v7;
  return sub_1C1C4E77C(v15, &qword_1EBF18188);
}

void (*sub_1C1C8F190(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x240uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for BCUIBoltView(0) + 28));
  v6 = v5[2];
  v7 = v5[3];
  *(v4 + 32) = v6;
  *(v4 + 48) = v7;
  v8 = *(v5 + 8);
  *(v4 + 64) = v8;
  v10 = *v5;
  v9 = v5[1];
  *v4 = *v5;
  *(v4 + 16) = v9;
  *(v4 + 88) = v9;
  *(v4 + 104) = v6;
  *(v4 + 120) = v7;
  *(v4 + 136) = v8;
  *(v4 + 72) = v10;
  sub_1C1C4E714(v4, v4 + 144, &qword_1EBF18188);
  *(v4 + 568) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18188);
  MEMORY[0x1C6909DC0]();
  return sub_1C1C8F278;
}

__n128 sub_1C1C8F27C@<Q0>(uint64_t a1@<X8>)
{
  type metadata accessor for BCUIBoltView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18188);
  sub_1C1C9B048();
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  result = v4;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_1C1C8F324(uint64_t a1)
{
  v2 = sub_1C1C9A798();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BCUIBoltView(0);
  (*(v3 + 16))(v5, a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  sub_1C1C9B028();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_1C1C8F438(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = sub_1C1C9A798();
  *v5 = v6;
  v7 = *(v6 - 8);
  v5[1] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[3] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  v5[4] = v10;
  if (v3)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(*(v10 - 8) + 64));
  }

  v12 = v11;
  v5[5] = v11;
  v13 = type metadata accessor for BCUIBoltView(0);
  sub_1C1C4E714(v1 + *(v13 + 32), v12, &qword_1EBF17FA0);
  MEMORY[0x1C6909DC0](v10);
  return sub_1C1C8AF4C;
}

uint64_t sub_1C1C8F5D4(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for BCUIBoltView(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  return a1(v2);
}

uint64_t sub_1C1C8F630()
{
  type metadata accessor for BCUIBoltView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D28);
  sub_1C1C9AFD8();
  return v1;
}

uint64_t sub_1C1C8F698()
{
  type metadata accessor for BCUIBoltView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D28);
  return sub_1C1C9AFE8();
}

uint64_t (*sub_1C1C8F708(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for BCUIBoltView(0) + 36));
  v6 = *v5;
  *(v4 + 50) = *v5;
  v7 = *(v5 + 1);
  *(v4 + 32) = v7;
  *v4 = v6;
  *(v4 + 8) = v7;

  *(v4 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D28);
  sub_1C1C9AFD8();
  return sub_1C1C6E5F4;
}

uint64_t sub_1C1C8F7C4()
{
  type metadata accessor for BCUIBoltView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D28);
  sub_1C1C9AFF8();
  return v1;
}

double sub_1C1C8F830()
{
  type metadata accessor for BCUIBoltView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EF8);
  sub_1C1C9A678();
  return v1;
}

double sub_1C1C8F884()
{
  type metadata accessor for BCUIBoltView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EF8);
  sub_1C1C9A678();
  return v1;
}

BOOL sub_1C1C8F8D8(_BOOL8 result)
{
  if (result)
  {
    return sub_1C1C98F8C();
  }

  return result;
}

uint64_t sub_1C1C8F938()
{
  v1 = type metadata accessor for BCUIBoltView(0);
  v2 = v1 - 8;
  v3 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v4 = (v3 + *(v1 + 28));
  v5 = v4[3];
  v17 = v4[2];
  v18 = v5;
  v19 = *(v4 + 8);
  v6 = v4[1];
  v15 = *v4;
  v16 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18188);
  MEMORY[0x1C6909DC0](v13, v7);
  v20[0] = v13[0];
  v20[1] = v13[1];
  v21 = v13[2];
  v22 = v14;
  sub_1C1C57280(v20);
  v8 = 0.0;
  if (BYTE2(v21))
  {
    v8 = 1.0;
  }

  v9 = (v3 + *(v2 + 48));
  v10 = *v9;
  v11 = v9[1];
  *&v15 = v10;
  *(&v15 + 1) = v11;
  *v13 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18280);
  return sub_1C1C9AFE8();
}

uint64_t sub_1C1C8FA68()
{
  type metadata accessor for BCUIBoltView(0);
  sub_1C1C54F80();

  sub_1C1C9A738();
}

uint64_t sub_1C1C8FBB8()
{
  type metadata accessor for BCUIBoltView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18280);
  return sub_1C1C9AFE8();
}

uint64_t sub_1C1C8FC64()
{
  type metadata accessor for AvocadoViewModel();
  sub_1C1C4D96C(qword_1ED7C53F8, type metadata accessor for AvocadoViewModel);

  return sub_1C1C9A758();
}

__n128 sub_1C1C8FCF0@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1C1C9B0E8();
  v6 = v5;
  sub_1C1C8FD50(a1, v10);
  v7 = v11;
  result = v10[0];
  v9 = v10[1];
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = result;
  *(a2 + 32) = v9;
  *(a2 + 48) = v7;
  return result;
}

double sub_1C1C8FD50@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C1C9A798();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*a1 + 360);

  v8(v9);
  v10 = sub_1C1C98F8C();
  (*(v5 + 8))(v7, v4);
  if (v10)
  {
    type metadata accessor for AvocadoViewModel();
    sub_1C1C4D96C(qword_1ED7C53F8, type metadata accessor for AvocadoViewModel);
    v20 = sub_1C1C9A748();
    v21 = v11;
    v22 = xmmword_1C1C9F150;
    v23 = 0;
  }

  else
  {
    sub_1C1C55C1C();

    v12 = *sub_1C1C59138();
    v13 = sub_1C1C9A5B8();
    type metadata accessor for AvocadoViewModel();
    sub_1C1C4D96C(qword_1ED7C53F8, type metadata accessor for AvocadoViewModel);
    v14 = sub_1C1C9A748();
    v20 = v13;
    v21 = v14;
    *&v22 = v15;
    *(&v22 + 1) = 0x3FC28F5C28F5C28FLL;
    v23 = 1;
  }

  sub_1C1C97560();
  sub_1C1C975B4();
  sub_1C1C9AB38();
  result = *&v24;
  v17 = v25;
  v18 = v26;
  *a2 = v24;
  *(a2 + 16) = v17;
  *(a2 + 32) = v18;
  return result;
}

uint64_t sub_1C1C8FFD0()
{
  type metadata accessor for AvocadoViewModel();
  sub_1C1C4D96C(qword_1ED7C53F8, type metadata accessor for AvocadoViewModel);

  return sub_1C1C9A748();
}

__n128 sub_1C1C90068@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = sub_1C1C9B0E8();
  v6 = v5;
  sub_1C1C8FD50(v3, v10);
  v7 = v11;
  result = v10[0];
  v9 = v10[1];
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = result;
  *(a1 + 32) = v9;
  *(a1 + 48) = v7;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1C1C900D4(uint64_t a1, int a2)
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

uint64_t sub_1C1C9011C(uint64_t result, int a2, int a3)
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

uint64_t sub_1C1C90158(uint64_t *a1, int a2)
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

uint64_t sub_1C1C901A0(uint64_t result, int a2, int a3)
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

uint64_t sub_1C1C901F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1C1C90238(uint64_t result, int a2, int a3)
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

void sub_1C1C902A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C1C9A458();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18790);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v42 - v6;
  v8 = sub_1C1C9A798();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*a2 + 360))(v10);
  v13 = sub_1C1C98E50(*MEMORY[0x1E69DDD08]);
  (*(v9 + 8))(v12, v8);
  sub_1C1C9A5C8();
  v14 = HIBYTE(v45) & 0xF;
  v15 = v44 & 0xFFFFFFFFFFFFLL;
  if ((v45 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v45) & 0xF;
  }

  else
  {
    v16 = v44 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    goto LABEL_63;
  }

  if ((v45 & 0x1000000000000000) != 0)
  {
    v20 = sub_1C1C967B4(v44, v45, 10);
    v41 = v40;

    if (v41)
    {
      goto LABEL_63;
    }

LABEL_66:
    v43 = v20;
    sub_1C1C9A448();
    sub_1C1C96D40();
    sub_1C1C9A418();
    sub_1C1C4CEAC(&qword_1EBF187A0, &qword_1EBF18790);
    sub_1C1C9B4B8();
    (*(v5 + 8))(v7, v4);
    sub_1C1C4DBCC(v13);

    return;
  }

  if ((v45 & 0x2000000000000000) == 0)
  {
    if ((v44 & 0x1000000000000000) != 0)
    {
      v17 = ((v45 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v17 = sub_1C1C9B518();
    }

    v18 = *v17;
    if (v18 == 43)
    {
      if (v15 >= 1)
      {
        v27 = v15 - 1;
        if (v15 != 1)
        {
          v20 = 0;
          if (!v17)
          {
            goto LABEL_62;
          }

          v28 = v17 + 1;
          while (1)
          {
            v29 = *v28 - 48;
            if (v29 > 9)
            {
              break;
            }

            v30 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              break;
            }

            v20 = v30 + v29;
            if (__OFADD__(v30, v29))
            {
              break;
            }

            ++v28;
            if (!--v27)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      goto LABEL_70;
    }

    if (v18 == 45)
    {
      if (v15 >= 1)
      {
        v19 = v15 - 1;
        if (v15 != 1)
        {
          v20 = 0;
          if (!v17)
          {
            goto LABEL_62;
          }

          v21 = v17 + 1;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              break;
            }

            v20 = v23 - v22;
            if (__OFSUB__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v19)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      __break(1u);
      goto LABEL_69;
    }

    if (v15)
    {
      v20 = 0;
      if (!v17)
      {
        goto LABEL_62;
      }

      while (1)
      {
        v34 = *v17 - 48;
        if (v34 > 9)
        {
          break;
        }

        v35 = 10 * v20;
        if ((v20 * 10) >> 64 != (10 * v20) >> 63)
        {
          break;
        }

        v20 = v35 + v34;
        if (__OFADD__(v35, v34))
        {
          break;
        }

        ++v17;
        if (!--v15)
        {
          goto LABEL_60;
        }
      }
    }

    goto LABEL_61;
  }

  v45 &= 0xFFFFFFFFFFFFFFuLL;
  if (v44 != 43)
  {
    if (v44 == 45)
    {
      if (!v14)
      {
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      v17 = (v14 - 1);
      if (v14 != 1)
      {
        v20 = 0;
        v24 = &v44 + 1;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v20;
          if ((v20 * 10) >> 64 != (10 * v20) >> 63)
          {
            break;
          }

          v20 = v26 - v25;
          if (__OFSUB__(v26, v25))
          {
            break;
          }

          ++v24;
          if (!--v17)
          {
            goto LABEL_62;
          }
        }
      }
    }

    else if (v14)
    {
      v20 = 0;
      v36 = &v44;
      while (1)
      {
        v37 = *v36 - 48;
        if (v37 > 9)
        {
          break;
        }

        v38 = 10 * v20;
        if ((v20 * 10) >> 64 != (10 * v20) >> 63)
        {
          break;
        }

        v20 = v38 + v37;
        if (__OFADD__(v38, v37))
        {
          break;
        }

        v36 = (v36 + 1);
        if (!--v14)
        {
LABEL_60:
          LOBYTE(v17) = 0;
          goto LABEL_62;
        }
      }
    }

LABEL_61:
    v20 = 0;
    LOBYTE(v17) = 1;
LABEL_62:
    LOBYTE(v43) = v17;
    v39 = v17;

    if (v39)
    {
LABEL_63:
      sub_1C1C9A5C8();

      MEMORY[0x1C690A040](37, 0xE100000000000000);

      sub_1C1C4DBCC(v13);

      return;
    }

    goto LABEL_66;
  }

  if (v14)
  {
    v17 = (v14 - 1);
    if (v14 != 1)
    {
      v20 = 0;
      v31 = &v44 + 1;
      while (1)
      {
        v32 = *v31 - 48;
        if (v32 > 9)
        {
          break;
        }

        v33 = 10 * v20;
        if ((v20 * 10) >> 64 != (10 * v20) >> 63)
        {
          break;
        }

        v20 = v33 + v32;
        if (__OFADD__(v33, v32))
        {
          break;
        }

        ++v31;
        if (!--v17)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_71:
  __break(1u);
}

uint64_t sub_1C1C908A4(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v28 = a3;
  v29 = sub_1C1C9A798();
  v27 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C1C9B098();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - v12;
  sub_1C1C9A718();
  v15 = v14 * a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18770);
  sub_1C1C9B0A8();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C1C9F160;
  v25 = v16;
  *v13 = v15;
  v17 = *MEMORY[0x1E697D728];
  v18 = *(v8 + 104);
  v18(v13, v17, v7);
  sub_1C1C9B0E8();
  sub_1C1C9B0B8();
  sub_1C1C9A718();
  *v13 = v15;
  *(v13 + 1) = v19;
  v18(v13, *MEMORY[0x1E697D748], v7);
  sub_1C1C9B0F8();
  sub_1C1C9B0B8();
  v20 = v26;
  sub_1C1C902A4(v28, v26);
  *v11 = v21;
  v28 = v11;
  v22 = (v18)(v11, v17, v7);
  (*(*v20 + 360))(v22);
  LOBYTE(v20) = sub_1C1C98F68();
  (*(v27 + 8))(v6, v29);
  if (v20)
  {
    sub_1C1C9B108();
  }

  else
  {
    sub_1C1C9B0F8();
  }

  sub_1C1C9B0B8();
  *v13 = v15 * 0.8;
  v18(v13, v17, v7);
  sub_1C1C9B0F8();
  sub_1C1C9B0B8();
  return v25;
}

uint64_t sub_1C1C90C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>, double a6@<D0>)
{
  v47 = a3;
  v52 = a5;
  v10 = type metadata accessor for Dividers(0);
  v11 = (v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v51 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (v45 - v14);
  v16 = sub_1C1C9AB68();
  MEMORY[0x1EEE9AC00](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18730);
  v49 = *(v17 - 8);
  v50 = v17;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v48 = v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v46 = v45 - v20;
  v21 = sub_1C1C9A718();
  v22 = *(*a4 + 440);
  v24 = v23 / (v22)(v21);
  v45[2] = sub_1C1C908A4(a6, a1, a2, a4);
  v45[1] = sub_1C1C9AB08();
  v53 = a2;
  v54 = v47;
  v55 = a4;
  v56 = a6;
  v57 = v24;
  v58 = a1;
  LODWORD(v60) = 0;
  sub_1C1C4D96C(&qword_1EBF18738, MEMORY[0x1E697FCB0]);
  sub_1C1C9B5F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18740);
  sub_1C1C93D98();
  v25 = v46;
  sub_1C1C9B148();
  v26 = sub_1C1C97214(a6, a1, MEMORY[0x1E6981D48]);
  v27 = v22();
  *v15 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17CE8);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v29 = v15 + v11[7];
  *v29 = KeyPath;
  v29[8] = 0;
  v30 = (v15 + v11[8]);
  v59 = *&v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18760);
  sub_1C1C9AFC8();
  v31 = *(&v60 + 1);
  *v30 = v60;
  v30[1] = v31;
  v32 = (v15 + v11[9]);
  v59 = v24;
  sub_1C1C9AFC8();
  v33 = *(&v60 + 1);
  *v32 = v60;
  v32[1] = v33;
  v34 = v11[10];
  v59 = *&v27;
  sub_1C1C9AFC8();
  *(v15 + v34) = v60;
  v35 = v48;
  v36 = v49;
  v37 = *(v49 + 16);
  v38 = v25;
  v39 = v50;
  v37(v48, v25, v50);
  v40 = v51;
  sub_1C1C96684(v15, v51, type metadata accessor for Dividers);
  v41 = v52;
  v37(v52, v35, v39);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18768);
  sub_1C1C96684(v40, &v41[*(v42 + 48)], type metadata accessor for Dividers);
  sub_1C1C96724(v15, type metadata accessor for Dividers);
  v43 = *(v36 + 8);
  v43(v38, v39);
  sub_1C1C96724(v40, type metadata accessor for Dividers);
  return (v43)(v35, v39);
}

uint64_t sub_1C1C91178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v12 = sub_1C1C9A728();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  result = (*(*a3 + 440))(v15);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v19[2] = 0;
    v19[3] = result;
    v19[1] = swift_getKeyPath();
    (*(v13 + 16))(v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v12);
    v17 = (*(v13 + 80) + 56) & ~*(v13 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = a2;
    *(v18 + 32) = a3;
    *(v18 + 40) = a5;
    *(v18 + 48) = a6;
    (*(v13 + 32))(v18 + v17, v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17F28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18758);
    sub_1C1C75F54();
    sub_1C1C4CEAC(&qword_1EBF18750, &qword_1EBF18758);
    return sub_1C1C9B078();
  }

  return result;
}

uint64_t sub_1C1C913D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v80 = a2;
  v81 = a4;
  v79 = a5;
  v78 = type metadata accessor for AdjustedPercentChargeLabel(0) - 8;
  v11 = MEMORY[0x1EEE9AC00](v78);
  v87 = v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v84 = (v73 - v13);
  v77 = type metadata accessor for AdjustedNameLabel(0) - 8;
  v14 = MEMORY[0x1EEE9AC00](v77);
  v86 = v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v83 = (v73 - v16);
  v17 = sub_1C1C9AD08();
  v75 = *(v17 - 8);
  v76 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v74 = v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AdjustedDeviceGlyph(0);
  v20 = (v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v85 = v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v89 = *a1;
  v23 = v89;
  v90 = (v73 - v24);
  v25 = type metadata accessor for AvocadoViewModel();
  v26 = sub_1C1C4D96C(qword_1ED7C53F8, type metadata accessor for AvocadoViewModel);
  v73[1] = v25;
  v73[2] = a3;
  sub_1C1C9A758();
  swift_getKeyPath();
  sub_1C1C9A768();

  v91 = v113;
  *&v92 = v114;
  *&v108 = v23;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18778);
  v82 = sub_1C1C4CEAC(&qword_1EBF18780, &qword_1EBF17E90);
  sub_1C1C9B058();
  v102 = v122;
  v103[0] = *v123;
  *(v103 + 15) = *&v123[15];
  v100 = v120;
  v101 = v121;

  v73[0] = v26;
  sub_1C1C9A758();
  swift_getKeyPath();
  v27 = v90;
  sub_1C1C9A768();

  sub_1C1C9A718();
  v29 = v28 * a6;
  v30 = *sub_1C1C9946C();
  v31 = *sub_1C1C99484();
  v32 = *sub_1C1C99498();
  v33 = *sub_1C1C994AC();
  *v27 = swift_getKeyPath();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D40);
  swift_storeEnumTagMultiPayload();
  v34 = v27 + v20[7];
  v35 = v103[0];
  *(v34 + 2) = v102;
  *(v34 + 3) = v35;
  *(v34 + 63) = *(v103 + 15);
  v36 = v101;
  *v34 = v100;
  *(v34 + 1) = v36;
  v37 = (v27 + v20[9]);
  *&v104 = a7;
  sub_1C1C9AFC8();
  v38 = *(&v108 + 1);
  *v37 = v108;
  v37[1] = v38;
  v39 = v27 + v20[10];
  LOBYTE(v104) = 0;
  sub_1C1C9AFC8();
  v40 = *(&v108 + 1);
  *v39 = v108;
  *(v39 + 1) = v40;
  v41 = (v27 + v20[11]);
  *&v104 = v29;
  sub_1C1C9AFC8();
  v42 = *(&v108 + 1);
  *v41 = v108;
  v41[1] = v42;
  *&v108 = v30;
  v43 = *MEMORY[0x1E6980EF8];
  v44 = v74;
  v45 = *(v75 + 104);
  v46 = v76;
  v45(v74, v43, v76);
  sub_1C1C4DD2C();
  sub_1C1C9A658();
  *&v108 = v31;
  v45(v44, v43, v46);
  sub_1C1C9A658();
  *&v108 = v32;
  v45(v44, v43, v46);
  sub_1C1C9A658();
  *&v108 = v33;
  v45(v44, v43, v46);
  sub_1C1C9A658();
  sub_1C1C9A758();
  swift_getKeyPath();
  sub_1C1C9A768();

  v91 = v113;
  *&v92 = v114;
  *&v108 = v89;
  sub_1C1C9B058();
  v106 = v122;
  v107[0] = *v123;
  *(v107 + 15) = *&v123[15];
  v104 = v120;
  v105 = v121;

  sub_1C1C9A758();
  swift_getKeyPath();
  v47 = v77;
  v48 = v83;
  sub_1C1C9A768();

  *v48 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v49 = v48 + *(v47 + 28);
  v50 = v107[0];
  *(v49 + 2) = v106;
  *(v49 + 3) = v50;
  *(v49 + 63) = *(v107 + 15);
  v51 = v105;
  *v49 = v104;
  *(v49 + 1) = v51;
  sub_1C1C9A758();
  swift_getKeyPath();
  sub_1C1C9A768();

  v91 = v113;
  *&v92 = v114;
  *&v108 = v89;
  sub_1C1C9B058();
  v110 = v122;
  *v111 = *v123;
  *&v111[15] = *&v123[15];
  v108 = v120;
  v109 = v121;

  sub_1C1C9A758();
  swift_getKeyPath();
  v52 = v78;
  v53 = v84;
  sub_1C1C9A768();

  *v53 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v54 = v53 + *(v52 + 28);
  v55 = *v111;
  *(v54 + 2) = v110;
  *(v54 + 3) = v55;
  *(v54 + 63) = *&v111[15];
  v56 = v109;
  *v54 = v108;
  *(v54 + 1) = v56;
  sub_1C1C9A758();
  swift_getKeyPath();
  sub_1C1C9A768();

  v98 = v113;
  v99 = v114;
  *&v91 = v89;
  sub_1C1C9B058();
  v93 = v122;
  v94[0] = *v123;
  *(v94 + 15) = *&v123[15];
  v91 = v120;
  v92 = v121;

  v95 = a7;
  sub_1C1C9AFC8();
  v57 = v96;
  v89 = v97;
  LOBYTE(v95) = 0;
  sub_1C1C9AFC8();
  LODWORD(v88) = v96;
  v58 = v97;
  v59 = v85;
  sub_1C1C96684(v90, v85, type metadata accessor for AdjustedDeviceGlyph);
  v60 = v83;
  v61 = v86;
  sub_1C1C96684(v83, v86, type metadata accessor for AdjustedNameLabel);
  v62 = v84;
  v63 = v87;
  sub_1C1C96684(v84, v87, type metadata accessor for AdjustedPercentChargeLabel);
  v64 = v59;
  v65 = v79;
  sub_1C1C96684(v64, v79, type metadata accessor for AdjustedDeviceGlyph);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18788);
  sub_1C1C96684(v61, v65 + v66[12], type metadata accessor for AdjustedNameLabel);
  sub_1C1C96684(v63, v65 + v66[16], type metadata accessor for AdjustedPercentChargeLabel);
  v67 = v65 + v66[20];
  *&v117 = *&v94[1];
  v115 = v93;
  v116 = v94[0];
  v113 = v91;
  v114 = v92;
  *(&v117 + 1) = v57;
  v68 = v89;
  *&v118 = v89;
  LOBYTE(v63) = v88;
  BYTE8(v118) = v88;
  *(&v118 + 9) = *v112;
  HIDWORD(v118) = *&v112[3];
  v119 = v58;
  *(v67 + 96) = v58;
  v69 = v118;
  *(v67 + 64) = v117;
  *(v67 + 80) = v69;
  v70 = v114;
  *v67 = v113;
  *(v67 + 16) = v70;
  v71 = v116;
  *(v67 + 32) = v115;
  *(v67 + 48) = v71;
  sub_1C1C966EC(&v113, &v120);
  sub_1C1C96724(v62, type metadata accessor for AdjustedPercentChargeLabel);
  sub_1C1C96724(v60, type metadata accessor for AdjustedNameLabel);
  sub_1C1C96724(v90, type metadata accessor for AdjustedDeviceGlyph);
  v122 = v93;
  *v123 = v94[0];
  *&v123[16] = *&v94[1];
  v120 = v91;
  v121 = v92;
  v124 = v57;
  v125 = v68;
  v126 = v63;
  *v127 = *v112;
  *&v127[3] = *&v112[3];
  v128 = v58;
  sub_1C1C96784(&v120);
  sub_1C1C96724(v87, type metadata accessor for AdjustedPercentChargeLabel);
  sub_1C1C96724(v86, type metadata accessor for AdjustedNameLabel);
  return sub_1C1C96724(v85, type metadata accessor for AdjustedDeviceGlyph);
}

uint64_t sub_1C1C91F94@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = sub_1C1C9B0E8();
  v9 = v8;
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v5;
  v10[5] = v6;
  *a1 = v7;
  a1[1] = v9;
  a1[2] = sub_1C1C93D54;
  a1[3] = v10;
}

uint64_t sub_1C1C92038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>, double a5@<D0>)
{
  v44 = a2;
  v49 = a4;
  v8 = type metadata accessor for Dividers(0);
  v9 = (v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v48 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (v42 - v12);
  v14 = sub_1C1C9AB68();
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF187A8);
  v46 = *(v15 - 8);
  v47 = v15;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v45 = v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v43 = v42 - v18;
  v19 = sub_1C1C9A718();
  v20 = *(*a3 + 440);
  v22 = v21 / (v20)(v19);
  v42[2] = sub_1C1C97214(a5, a1, MEMORY[0x1E6981D50]);
  v42[1] = sub_1C1C9AB08();
  v50 = v44;
  v51 = a3;
  v52 = a5;
  v53 = v22;
  v54 = a1;
  LODWORD(v56) = 0;
  sub_1C1C4D96C(&qword_1EBF18738, MEMORY[0x1E697FCB0]);
  sub_1C1C9B5F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF187B0);
  sub_1C1C97428();
  sub_1C1C9B148();
  v23 = sub_1C1C97214(a5, a1, MEMORY[0x1E6981D48]);
  v24 = v20();
  *v13 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17CE8);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v26 = v13 + v9[7];
  *v26 = KeyPath;
  v26[8] = 0;
  v27 = (v13 + v9[8]);
  v55 = *&v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18760);
  sub_1C1C9AFC8();
  v28 = *(&v56 + 1);
  *v27 = v56;
  v27[1] = v28;
  v29 = (v13 + v9[9]);
  v55 = v22;
  sub_1C1C9AFC8();
  v30 = *(&v56 + 1);
  *v29 = v56;
  v29[1] = v30;
  v31 = v9[10];
  v55 = *&v24;
  sub_1C1C9AFC8();
  *(v13 + v31) = v56;
  v32 = v45;
  v33 = v46;
  v34 = *(v46 + 16);
  v35 = v43;
  v36 = v47;
  v34(v45, v43, v47);
  v37 = v48;
  sub_1C1C96684(v13, v48, type metadata accessor for Dividers);
  v38 = v49;
  v34(v49, v32, v36);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF187D0);
  sub_1C1C96684(v37, &v38[*(v39 + 48)], type metadata accessor for Dividers);
  sub_1C1C96724(v13, type metadata accessor for Dividers);
  v40 = *(v33 + 8);
  v40(v35, v36);
  sub_1C1C96724(v37, type metadata accessor for Dividers);
  return (v40)(v32, v36);
}

uint64_t sub_1C1C92540(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_1C1C9A728();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  result = (*(*a2 + 440))(v13);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v17[0] = 0;
    v17[1] = result;
    swift_getKeyPath();
    (*(v11 + 16))(v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v10);
    v15 = (*(v11 + 80) + 48) & ~*(v11 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = a2;
    *(v16 + 32) = a4;
    *(v16 + 40) = a5;
    (*(v11 + 32))(v16 + v15, v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17F28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF187C8);
    sub_1C1C75F54();
    sub_1C1C4CEAC(&qword_1EBF187C0, &qword_1EBF187C8);
    return sub_1C1C9B078();
  }

  return result;
}

uint64_t sub_1C1C9278C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v71 = a4;
  v80 = a2;
  v79 = a5;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF187D8) - 8;
  v11 = MEMORY[0x1EEE9AC00](v77);
  v78 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v75 = (&v69 - v13);
  v74 = sub_1C1C9AD08();
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AdjustedDeviceGlyph(0);
  v17 = (v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v76 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v69 - v20);
  v72 = *a1;
  v22 = v72;
  v69 = type metadata accessor for AvocadoViewModel();
  sub_1C1C4D96C(qword_1ED7C53F8, type metadata accessor for AvocadoViewModel);
  v70 = a3;
  sub_1C1C9A758();
  swift_getKeyPath();
  sub_1C1C9A768();

  v88 = v91;
  v89 = v92;
  v90 = v93;
  *&v94 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18778);
  sub_1C1C4CEAC(&qword_1EBF18780, &qword_1EBF17E90);
  sub_1C1C9B058();
  v96 = v86;
  *v97 = *v87;
  *&v97[15] = *&v87[15];
  v94 = v84;
  v95 = v85;

  sub_1C1C9A758();
  swift_getKeyPath();
  sub_1C1C9A768();

  sub_1C1C9A718();
  v24 = v23 * a6;
  v25 = *sub_1C1C9946C();
  v26 = *sub_1C1C99484();
  v27 = *sub_1C1C99498();
  v28 = *sub_1C1C994AC();
  *v21 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D40);
  swift_storeEnumTagMultiPayload();
  v29 = v21 + v17[7];
  v30 = *v97;
  *(v29 + 2) = v96;
  *(v29 + 3) = v30;
  *(v29 + 63) = *&v97[15];
  v31 = v95;
  *v29 = v94;
  *(v29 + 1) = v31;
  v32 = (v21 + v17[9]);
  v81 = a7;
  sub_1C1C9AFC8();
  v33 = v83;
  *v32 = v82;
  v32[1] = v33;
  v34 = v21 + v17[10];
  LOBYTE(v81) = 1;
  sub_1C1C9AFC8();
  v35 = v83;
  *v34 = v82;
  *(v34 + 1) = v35;
  v36 = (v21 + v17[11]);
  v81 = v24;
  sub_1C1C9AFC8();
  v37 = v83;
  *v36 = v82;
  v36[1] = v37;
  v82 = v25;
  v38 = *MEMORY[0x1E6980EF8];
  v39 = *(v73 + 104);
  v40 = v74;
  v39(v15, v38, v74);
  sub_1C1C4DD2C();
  sub_1C1C9A658();
  v82 = v26;
  v39(v15, v38, v40);
  sub_1C1C9A658();
  v82 = v27;
  v39(v15, v38, v40);
  sub_1C1C9A658();
  v82 = v28;
  v39(v15, v38, v40);
  sub_1C1C9A658();
  v41 = sub_1C1C9AB18();
  v42 = v75;
  *v75 = v41;
  *(v42 + 8) = 0;
  *(v42 + 16) = 0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF187E0);
  sub_1C1C92FDC(v80, v70, v72, v42 + *(v43 + 44), a7);
  LOBYTE(v38) = sub_1C1C9AC48();
  sub_1C1C9A5D8();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v52 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF187E8) + 36);
  *v52 = v38;
  *(v52 + 8) = v45;
  *(v52 + 16) = v47;
  *(v52 + 24) = v49;
  *(v52 + 32) = v51;
  *(v52 + 40) = 0;
  LOBYTE(v38) = sub_1C1C9AC68();
  sub_1C1C9A5D8();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v61 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF187F0) + 36);
  *v61 = v38;
  *(v61 + 8) = v54;
  *(v61 + 16) = v56;
  *(v61 + 24) = v58;
  *(v61 + 32) = v60;
  *(v61 + 40) = 0;
  sub_1C1C9B0E8();
  sub_1C1C9A6C8();
  v62 = (v42 + *(v77 + 44));
  v63 = v85;
  *v62 = v84;
  v62[1] = v63;
  v62[2] = v86;
  v64 = v76;
  sub_1C1C96684(v21, v76, type metadata accessor for AdjustedDeviceGlyph);
  v65 = v78;
  sub_1C1C4E714(v42, v78, &qword_1EBF187D8);
  v66 = v79;
  sub_1C1C96684(v64, v79, type metadata accessor for AdjustedDeviceGlyph);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF187F8);
  sub_1C1C4E714(v65, v66 + *(v67 + 48), &qword_1EBF187D8);
  sub_1C1C4E77C(v42, &qword_1EBF187D8);
  sub_1C1C96724(v21, type metadata accessor for AdjustedDeviceGlyph);
  sub_1C1C4E77C(v65, &qword_1EBF187D8);
  return sub_1C1C96724(v64, type metadata accessor for AdjustedDeviceGlyph);
}

uint64_t sub_1C1C92FDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v47 = a3;
  v58 = a1;
  v59 = a2;
  v57 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18800);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v51 = (v46 - v8);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18808) - 8;
  v9 = MEMORY[0x1EEE9AC00](v55);
  v56 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v53 = v46 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v54 = v46 - v13;
  v14 = type metadata accessor for AdjustedNameLabel(0);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = (v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18810) - 8;
  v18 = MEMORY[0x1EEE9AC00](v50);
  v52 = v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v48 = v46 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v49 = v46 - v22;
  v46[1] = type metadata accessor for AvocadoViewModel();
  sub_1C1C4D96C(qword_1ED7C53F8, type metadata accessor for AvocadoViewModel);
  sub_1C1C9A758();
  swift_getKeyPath();
  sub_1C1C9A768();

  v60 = v62;
  v61 = v63;
  *&v73 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18778);
  sub_1C1C4CEAC(&qword_1EBF18780, &qword_1EBF17E90);
  sub_1C1C9B058();
  v75 = v71;
  v76[0] = v72[0];
  *(v76 + 15) = *(v72 + 15);
  v73 = v69;
  v74 = v70;

  sub_1C1C9A758();
  swift_getKeyPath();
  sub_1C1C9A768();

  *v17 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D40);
  swift_storeEnumTagMultiPayload();
  v23 = v17 + *(v15 + 28);
  v24 = v76[0];
  *(v23 + 2) = v75;
  *(v23 + 3) = v24;
  *(v23 + 63) = *(v76 + 15);
  v25 = v74;
  *v23 = v73;
  *(v23 + 1) = v25;
  sub_1C1C9B0E8();
  sub_1C1C9A848();
  v26 = v48;
  sub_1C1C98050(v17, v48, type metadata accessor for AdjustedNameLabel);
  v27 = v49;
  v28 = (v26 + *(v50 + 44));
  v29 = v67;
  v28[4] = v66;
  v28[5] = v29;
  v28[6] = v68;
  v30 = v63;
  *v28 = v62;
  v28[1] = v30;
  v31 = v65;
  v28[2] = v64;
  v28[3] = v31;
  sub_1C1C519C4(v26, v27, &qword_1EBF18810);
  v32 = sub_1C1C9AA58();
  v33 = v51;
  *v51 = v32;
  *(v33 + 8) = 0x4024000000000000;
  *(v33 + 16) = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18818);
  sub_1C1C9366C(v58, v59, v47, v33 + *(v34 + 44), a5);
  sub_1C1C9B0E8();
  sub_1C1C9A848();
  v35 = v53;
  sub_1C1C519C4(v33, v53, &qword_1EBF18800);
  v36 = v54;
  v37 = (v35 + *(v55 + 44));
  v38 = v72[2];
  v37[4] = v72[1];
  v37[5] = v38;
  v37[6] = v72[3];
  v39 = v70;
  *v37 = v69;
  v37[1] = v39;
  v40 = v72[0];
  v37[2] = v71;
  v37[3] = v40;
  sub_1C1C519C4(v35, v36, &qword_1EBF18808);
  v41 = v52;
  sub_1C1C4E714(v27, v52, &qword_1EBF18810);
  v42 = v56;
  sub_1C1C4E714(v36, v56, &qword_1EBF18808);
  v43 = v57;
  sub_1C1C4E714(v41, v57, &qword_1EBF18810);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18820);
  sub_1C1C4E714(v42, v43 + *(v44 + 48), &qword_1EBF18808);
  sub_1C1C4E77C(v36, &qword_1EBF18808);
  sub_1C1C4E77C(v27, &qword_1EBF18810);
  sub_1C1C4E77C(v42, &qword_1EBF18808);
  return sub_1C1C4E77C(v41, &qword_1EBF18810);
}

uint64_t sub_1C1C9366C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v28 = a3;
  v27[2] = a1;
  v27[3] = a2;
  v30 = a4;
  v7 = type metadata accessor for AdjustedPercentChargeLabel(0);
  v8 = v7 - 8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v29 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v27 - v11);
  v27[1] = type metadata accessor for AvocadoViewModel();
  sub_1C1C4D96C(qword_1ED7C53F8, type metadata accessor for AvocadoViewModel);
  sub_1C1C9A758();
  swift_getKeyPath();
  sub_1C1C9A768();

  v31 = v45;
  *&v32 = v46;
  *&v40 = a3;
  v27[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18778);
  sub_1C1C4CEAC(&qword_1EBF18780, &qword_1EBF17E90);
  sub_1C1C9B058();
  v42 = v54;
  *v43 = *v55;
  *&v43[15] = *&v55[15];
  v40 = v52;
  v41 = v53;

  sub_1C1C9A758();
  swift_getKeyPath();
  sub_1C1C9A768();

  *v12 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D40);
  swift_storeEnumTagMultiPayload();
  v13 = v12 + *(v8 + 28);
  v14 = *v43;
  *(v13 + 2) = v42;
  *(v13 + 3) = v14;
  *(v13 + 63) = *&v43[15];
  v15 = v41;
  *v13 = v40;
  *(v13 + 1) = v15;
  sub_1C1C9A758();
  swift_getKeyPath();
  sub_1C1C9A768();

  v38 = v45;
  v39 = v46;
  *&v31 = v28;
  sub_1C1C9B058();
  v33 = v54;
  v34[0] = *v55;
  *(v34 + 15) = *&v55[15];
  v31 = v52;
  v32 = v53;

  v35 = a5;
  sub_1C1C9AFC8();
  v16 = v36;
  v17 = v37;
  LOBYTE(v35) = 1;
  sub_1C1C9AFC8();
  v18 = v36;
  v19 = v37;
  v20 = v29;
  sub_1C1C96684(v12, v29, type metadata accessor for AdjustedPercentChargeLabel);
  v21 = v30;
  sub_1C1C96684(v20, v30, type metadata accessor for AdjustedPercentChargeLabel);
  v22 = v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18828) + 48);
  *&v49 = *&v34[1];
  v47 = v33;
  v48 = v34[0];
  v45 = v31;
  v46 = v32;
  *(&v49 + 1) = v16;
  *&v50 = v17;
  BYTE8(v50) = v18;
  *(&v50 + 9) = *v44;
  HIDWORD(v50) = *&v44[3];
  v51 = v19;
  *(v22 + 96) = v19;
  v23 = v50;
  *(v22 + 64) = v49;
  *(v22 + 80) = v23;
  v24 = v46;
  *v22 = v45;
  *(v22 + 16) = v24;
  v25 = v48;
  *(v22 + 32) = v47;
  *(v22 + 48) = v25;
  sub_1C1C966EC(&v45, &v52);
  sub_1C1C96724(v12, type metadata accessor for AdjustedPercentChargeLabel);
  v54 = v33;
  *v55 = v34[0];
  *&v55[16] = *&v34[1];
  v52 = v31;
  v53 = v32;
  v56 = v16;
  v57 = v17;
  v58 = v18;
  *v59 = *v44;
  *&v59[3] = *&v44[3];
  v60 = v19;
  sub_1C1C96784(&v52);
  return sub_1C1C96724(v20, type metadata accessor for AdjustedPercentChargeLabel);
}

double sub_1C1C93B48()
{
  v1 = sub_1C1C9AA38();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for Dividers(0) + 20));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  sub_1C1C9B408();
  v8 = sub_1C1C9ABF8();
  sub_1C1C9A498();

  sub_1C1C9AA28();
  swift_getAtKeyPath();
  sub_1C1C5B774(v6, 0);
  (*(v2 + 8))(v4, v1);
  return *&v9[1];
}

uint64_t sub_1C1C93CA4@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = sub_1C1C9B0E8();
  v8 = v7;
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = v3;
  v9[4] = v5;
  *a1 = v6;
  a1[1] = v8;
  a1[2] = sub_1C1C97208;
  a1[3] = v9;
}

unint64_t sub_1C1C93D98()
{
  result = qword_1EBF18748;
  if (!qword_1EBF18748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18740);
    sub_1C1C4CEAC(&qword_1EBF18750, &qword_1EBF18758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF18748);
  }

  return result;
}

uint64_t sub_1C1C93E48()
{
  v0 = sub_1C1C9AB68();
  MEMORY[0x1EEE9AC00](v0);
  type metadata accessor for Dividers(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18870);
  sub_1C1C9AFD8();
  sub_1C1C9AB08();
  sub_1C1C4D96C(&qword_1EBF18738, MEMORY[0x1E697FCB0]);
  sub_1C1C9B5F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18878);
  sub_1C1C97FA0();
  return sub_1C1C9B148();
}

uint64_t sub_1C1C93FCC(uint64_t a1)
{
  v2 = type metadata accessor for Dividers(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v10 = *(a1 + *(MEMORY[0x1EEE9AC00](v2 - 8) + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18898);
  result = sub_1C1C9AFD8();
  if (__OFSUB__(v9, 1))
  {
    __break(1u);
  }

  else if (((v9 - 1) & 0x8000000000000000) == 0)
  {
    *&v10 = 0;
    *(&v10 + 1) = v9 - 1;
    swift_getKeyPath();
    sub_1C1C96684(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Dividers);
    v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v7 = swift_allocObject();
    sub_1C1C98050(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for Dividers);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17F28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18890);
    sub_1C1C75F54();
    sub_1C1C4CEAC(&qword_1EBF18888, &qword_1EBF18890);
    return sub_1C1C9B078();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1C941E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C1C9A5F8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v27[-v9];
  v28 = sub_1C1C9AB08();
  v11 = (a1 + *(type metadata accessor for Dividers(0) + 28));
  v12 = *v11;
  v13 = v11[1];
  *&v39 = v12;
  *(&v39 + 1) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D20);
  sub_1C1C9AFD8();
  sub_1C1C9B0E8();
  sub_1C1C9A848();
  *&v37[55] = v42;
  *&v37[71] = v43;
  *&v37[87] = v44;
  *&v37[103] = v45;
  *&v37[7] = v39;
  *&v37[23] = v40;
  v38 = 1;
  *&v37[39] = v41;
  v14 = [objc_opt_self() labelColor];
  sub_1C1C9AE68();
  sub_1C1C962A0(&qword_1EBF17CE8, MEMORY[0x1E697DBD0], v10);
  (*(v5 + 104))(v8, *MEMORY[0x1E697DBA8], v4);
  sub_1C1C9A5E8();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v15(v10, v4);
  v16 = sub_1C1C9AED8();

  sub_1C1C93B48();
  sub_1C1C9B0E8();
  sub_1C1C9A6C8();
  *&v36[6] = v46;
  *&v36[22] = v47;
  *&v36[38] = v48;
  *&v30[0] = v16;
  WORD4(v30[0]) = 256;
  *(v30 + 10) = *v36;
  *(&v30[1] + 10) = *&v36[16];
  *(&v30[2] + 10) = *&v36[32];
  *(&v30[3] + 1) = *(&v48 + 1);
  *a2 = v28;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v17 = *v37;
  v18 = *&v37[16];
  v19 = *&v37[32];
  *(a2 + 65) = *&v37[48];
  *(a2 + 49) = v19;
  *(a2 + 33) = v18;
  *(a2 + 17) = v17;
  v20 = *&v37[64];
  v21 = *&v37[80];
  v22 = *&v37[96];
  *(a2 + 128) = *&v37[111];
  *(a2 + 113) = v22;
  *(a2 + 97) = v21;
  *(a2 + 81) = v20;
  v23 = v30[0];
  v24 = v30[1];
  v25 = v30[2];
  *(a2 + 184) = v30[3];
  *(a2 + 168) = v25;
  *(a2 + 152) = v24;
  *(a2 + 136) = v23;
  v31 = v16;
  v32 = 256;
  *&v35[14] = *&v36[46];
  *v35 = *&v36[32];
  v34 = *&v36[16];
  v33 = *v36;
  sub_1C1C4E714(v30, &v29, &qword_1EBF188A0);
  return sub_1C1C4E77C(&v31, &qword_1EBF188A0);
}

double sub_1C1C9462C()
{
  v0 = sub_1C1C9A798();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AdjustedDeviceGlyph(0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  MEMORY[0x1C6909DC0]();
  v5 = sub_1C1C98F8C();
  v6 = *(v1 + 8);
  v6(v3, v0);
  MEMORY[0x1C6909DC0](v4);
  sub_1C1C98F8C();
  v6(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EF8);
  sub_1C1C9A678();
  v7 = 23.5;
  if (!v5)
  {
    v7 = 8.0;
  }

  v8 = v7 + v11;
  if (v7 + v11 > 65.0)
  {
    v8 = 65.0;
  }

  return v8 / 100.0;
}

double sub_1C1C947E4()
{
  v0 = sub_1C1C9A798();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AdjustedDeviceGlyph(0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  MEMORY[0x1C6909DC0]();
  HIDWORD(v11) = sub_1C1C98F8C();
  v5 = *(v1 + 8);
  v5(v3, v0);
  MEMORY[0x1C6909DC0](v4);
  v6 = sub_1C1C98F8C();
  v5(v3, v0);
  MEMORY[0x1C6909DC0](v4);
  sub_1C1C98F8C();
  v5(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EF8);
  sub_1C1C9A678();
  v7 = 45.0;
  if (v6)
  {
    v7 = 50.0;
  }

  v8 = 8.0;
  if ((v11 & 0x100000000) != 0)
  {
    v8 = 8.5;
  }

  v9 = v8 + v12;
  if (v7 < v8 + v12)
  {
    v9 = v7;
  }

  return v9 / 100.0;
}

uint64_t sub_1C1C949D8()
{
  v29 = sub_1C1C9AB08();
  LOBYTE(v56[0]) = 1;
  v28 = sub_1C1C9AB08();
  sub_1C1C94EFC(v0, &v74);
  v1 = v74;
  v26 = *v75;
  v27 = *(&v74 + 1);
  v2 = *&v75[8];
  v25 = *&v75[16];
  v3 = v75[24];
  LOBYTE(v73[0]) = v75[24];
  sub_1C1C9462C();
  v4 = type metadata accessor for AdjustedDeviceGlyph(0);
  v5 = (v0 + v4[9]);
  v6 = *v5;
  v7 = v5[1];
  *&v74 = v6;
  *(&v74 + 1) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D20);
  sub_1C1C9AFD8();
  sub_1C1C947E4();
  v8 = (v0 + v4[7]);
  v9 = *v8;
  v10 = v8[1];
  *&v74 = v9;
  *(&v74 + 1) = v10;
  sub_1C1C9AFD8();
  sub_1C1C9B0E8();
  sub_1C1C9A6C8();
  *(&v80[2] + 7) = *&v75[16];
  *(&v80[1] + 7) = *v75;
  *(v80 + 7) = v74;
  v57 = v28;
  LOBYTE(v58) = 1;
  *(&v58 + 1) = v1;
  *&v59 = v27;
  *(&v59 + 1) = v26;
  *&v60 = v2;
  *(&v60 + 1) = v25;
  v61[0] = v3;
  *&v61[48] = *&v75[24];
  *&v61[33] = v80[2];
  *&v61[17] = v80[1];
  *&v61[1] = v80[0];
  v62[0] = v28;
  v62[1] = 0;
  v63 = 1;
  v64 = v1;
  v65 = v27;
  v66 = v26;
  v67 = v2;
  v68 = v25;
  v69 = v3;
  *&v72[15] = *&v75[24];
  *v72 = v80[2];
  v71 = v80[1];
  v70 = v80[0];
  sub_1C1C4E714(&v57, &v74, &qword_1EBF18948);
  sub_1C1C4E77C(v62, &qword_1EBF18948);
  *&v43[55] = v60;
  *&v43[39] = v59;
  *&v43[23] = v58;
  *&v43[103] = *&v61[32];
  *&v43[87] = *&v61[16];
  *&v43[71] = *v61;
  *&v43[119] = *&v61[48];
  *&v43[7] = v57;
  v11 = (v0 + v4[9]);
  v12 = *v11;
  v13 = v11[1];
  *&v74 = v12;
  *(&v74 + 1) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D20);
  sub_1C1C9AFD8();
  v14 = (v0 + v4[7]);
  v15 = *v14;
  v16 = v14[1];
  *&v74 = v15;
  *(&v74 + 1) = v16;
  sub_1C1C9AFD8();
  sub_1C1C9B0E8();
  sub_1C1C9A6C8();
  v74 = v29;
  v75[0] = 1;
  *&v75[65] = *&v43[64];
  *&v75[81] = *&v43[80];
  *&v75[97] = *&v43[96];
  *&v75[112] = *&v43[111];
  *&v75[1] = *v43;
  *&v75[17] = *&v43[16];
  *&v75[33] = *&v43[32];
  *&v75[49] = *&v43[48];
  v17 = v0 + v4[5];
  v18 = *(v17 + 48);
  v46 = *(v17 + 32);
  *v47 = v18;
  *&v47[15] = *(v17 + 63);
  v19 = *(v17 + 16);
  v44 = *v17;
  v45 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF188A8);
  MEMORY[0x1C6909DC0](v56, v20);
  v21 = sub_1C1C746A4();
  sub_1C1C59188(v56);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18950);
  v23 = sub_1C1C9853C();
  sub_1C1C5A7B4(v21, v22, v23, &v44);
  v73[8] = *&v75[112];
  v73[9] = v76;
  v73[10] = v77;
  v73[11] = v78;
  v73[4] = *&v75[48];
  v73[5] = *&v75[64];
  v73[6] = *&v75[80];
  v73[7] = *&v75[96];
  v73[0] = v74;
  v73[1] = *v75;
  v73[2] = *&v75[16];
  v73[3] = *&v75[32];
  sub_1C1C4E77C(v73, &qword_1EBF18950);
  v40 = v53;
  v41 = v54;
  v42 = v55;
  v36 = v49;
  v37 = v50;
  v38 = v51;
  v39 = v52;
  v32 = v46;
  v33 = *v47;
  v34 = *&v47[16];
  v35 = v48;
  v30 = v44;
  v31 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18970);
  sub_1C1C985F4();
  sub_1C1C9ADD8();
  v77 = v40;
  v78 = v41;
  v79 = v42;
  *&v75[80] = v36;
  *&v75[96] = v37;
  v76 = v39;
  *&v75[112] = v38;
  *&v75[16] = v32;
  *&v75[32] = v33;
  *&v75[64] = v35;
  *&v75[48] = v34;
  *v75 = v31;
  v74 = v30;
  return sub_1C1C4E77C(&v74, &qword_1EBF18970);
}

double sub_1C1C94EFC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C1C9B1A8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v31 - v9;
  v11 = sub_1C1C9AF08();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for AdjustedDeviceGlyph(0) + 20);
  v31[0] = a1;
  v16 = (a1 + v15);
  v17 = v16[3];
  v35 = v16[2];
  v36[0] = v17;
  *(v36 + 15) = *(v16 + 63);
  v18 = v16[1];
  v33 = *v16;
  v34 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF188A8);
  MEMORY[0x1C6909DC0](v37, v19);
  v20 = v37[3];

  sub_1C1C59188(v37);
  if (!v20)
  {
    sub_1C1C9AEF8();
  }

  (*(v12 + 104))(v14, *MEMORY[0x1E6981630], v11);
  v21 = sub_1C1C9AF38();

  (*(v12 + 8))(v14, v11);
  v31[1] = v21;
  v31[2] = 0;
  v32 = 1;
  sub_1C1C962A0(&qword_1EBF17D40, MEMORY[0x1E6985778], v10);
  sub_1C1C9B198();
  v22 = sub_1C1C9B188();
  v23 = *(v5 + 8);
  v23(v8, v4);
  v23(v10, v4);
  v24 = *sub_1C1C55268();

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18990);
  v26 = sub_1C1C9870C();
  sub_1C1C552B8(v22 & 1, v24, v25, v26, &v33);

  v27 = v35;
  v28 = BYTE8(v35);
  result = *&v33;
  v30 = v34;
  *a2 = v33;
  *(a2 + 16) = v30;
  *(a2 + 32) = v27;
  *(a2 + 40) = v28;
  return result;
}

__n128 sub_1C1C95230@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C1C9B1A8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v55 = &v47[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47[-v8];
  v10 = (v1 + *(type metadata accessor for AdjustedNameLabel(0) + 20));
  v11 = v10[3];
  v69 = v10[2];
  v70[0] = v11;
  *(v70 + 15) = *(v10 + 63);
  v12 = v10[1];
  v67 = *v10;
  v68 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF188A8);
  MEMORY[0x1C6909DC0](v66);
  v14 = sub_1C1C746A4();
  sub_1C1C59188(v66);
  if (v14)
  {
    sub_1C1C9AAB8();
    v15 = sub_1C1C9AD38();
    v58 = v16 & 1;
    v56 = 0;
    *&v59 = v15;
    *(&v59 + 1) = v17;
    v60.n128_u8[0] = v16 & 1;
    *(v60.n128_u32 + 1) = *v57;
    v60.n128_u32[1] = *&v57[3];
    v60.n128_u64[1] = v18;
    v61 = v64;
    *v62 = v65[0];
    *&v62[9] = *(v65 + 9);
    v63 = 0;
  }

  else
  {
    v19 = v10[3];
    v69 = v10[2];
    v70[0] = v19;
    *(v70 + 15) = *(v10 + 63);
    v20 = v10[1];
    v67 = *v10;
    v68 = v20;
    MEMORY[0x1C6909DC0](&v64, v13);
    v21 = v64;

    sub_1C1C59188(&v64);
    v67 = v21;
    sub_1C1C584B4();
    v22 = sub_1C1C9AD48();
    v24 = v23;
    v50 = v2;
    v51 = v4;
    v26 = v25;
    v27 = v5;
    v49 = v9;
    sub_1C1C9AC88();
    v54 = a1;
    v28 = sub_1C1C9AD28();
    v30 = v29;
    v52 = v31;
    v53 = v29;
    v48 = v32;
    v33 = v31;

    sub_1C1C58E34(v22, v24, v26 & 1);

    KeyPath = swift_getKeyPath();
    *&v59 = v28;
    *(&v59 + 1) = v30;
    v35 = v48 & 1;
    v60.n128_u8[0] = v48 & 1;
    v60.n128_u64[1] = v33;
    *&v61 = KeyPath;
    *(&v61 + 1) = 1;
    v62[0] = 0;
    v36 = v49;
    sub_1C1C962A0(&qword_1EBF17D40, MEMORY[0x1E6985778], v49);
    v37 = v55;
    sub_1C1C9B198();
    LOBYTE(v22) = sub_1C1C9B188();
    v38 = *(v27 + 8);
    v39 = v37;
    v40 = v51;
    v38(v39, v51);
    v38(v36, v40);
    v41 = *sub_1C1C55268();

    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18918);
    v43 = sub_1C1C983CC();
    v44 = v42;
    a1 = v54;
    sub_1C1C552B8(v22 & 1, v41, v44, v43, &v67);

    sub_1C1C58E34(v28, v53, v35);

    v61 = v69;
    *v62 = v70[0];
    *&v62[9] = *(v70 + 9);
    v59 = v67;
    v60 = v68;
    v57[0] = 1;
    v63 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18928);
  sub_1C1C98484();
  sub_1C1C9AB38();
  v45 = v70[0];
  *(a1 + 32) = v69;
  *(a1 + 48) = v45;
  *(a1 + 58) = *(v70 + 10);
  result = v68;
  *a1 = v67;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C1C9566C@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v2 = sub_1C1C9B1A8();
  v68 = *(v2 - 8);
  v69 = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v66 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v65 = &v56 - v5;
  v61 = sub_1C1C9ABA8();
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C1C9A888();
  v59 = *(v7 - 8);
  v60 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C1C9A458();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF181B0);
  v57 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v56 - v11;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF188B8);
  MEMORY[0x1EEE9AC00](v62);
  v14 = &v56 - v13;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF188C0);
  MEMORY[0x1EEE9AC00](v71);
  v64 = &v56 - v15;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF188C8);
  MEMORY[0x1EEE9AC00](v70);
  v17 = &v56 - v16;
  v18 = *(type metadata accessor for AdjustedPercentChargeLabel(0) + 20);
  v67 = v1;
  v19 = (v1 + v18);
  v20 = *(v1 + v18 + 48);
  v80 = *(v1 + v18 + 32);
  *v81 = v20;
  *&v81[15] = *(v1 + v18 + 63);
  v21 = *(v1 + v18 + 16);
  v78 = *(v1 + v18);
  v79 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF188A8);
  MEMORY[0x1C6909DC0](v82);
  v23 = sub_1C1C746A4();
  sub_1C1C59188(v82);
  if (v23)
  {
    sub_1C1C9AAB8();
    *v17 = sub_1C1C9AD38();
    *(v17 + 1) = v24;
    v17[16] = v25 & 1;
    *(v17 + 3) = v26;
    swift_storeEnumTagMultiPayload();
    sub_1C1C98264();
    return sub_1C1C9AB38();
  }

  else
  {
    v28 = v19[3];
    v80 = v19[2];
    *v81 = v28;
    *&v81[15] = *(v19 + 63);
    v29 = v19[1];
    v78 = *v19;
    v79 = v29;
    MEMORY[0x1C6909DC0](v73, v22);
    v75 = v73[0];
    v76 = v73[1];
    v77[0] = *v74;
    *(v77 + 15) = *&v74[15];
    sub_1C1C59188(&v75);
    *&v73[0] = sub_1C1C54F08(*&v76);
    sub_1C1C9A448();
    sub_1C1C4DD2C();
    sub_1C1C9A438();
    sub_1C1C4CEAC(&qword_1ED7C5340, &qword_1EBF181B0);
    sub_1C1C9B1C8();
    (*(v57 + 8))(v12, v10);
    v73[0] = v78;
    sub_1C1C584B4();
    v30 = sub_1C1C9AD48();
    v32 = v31;
    v34 = v33;
    sub_1C1C9ACE8();
    v56 = sub_1C1C9AD28();
    v57 = v35;
    v37 = v36;
    v39 = v38;

    sub_1C1C58E34(v30, v32, v34 & 1);

    v40 = v58;
    sub_1C1C9A868();
    v41 = *sub_1C1C58508();
    v42 = v63;
    (*(v59 + 32))(v63, v40, v60);
    v43 = v61;
    *(v42 + *(v61 + 20)) = v41;
    *(v42 + *(v43 + 24)) = 0;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF188D0);
    sub_1C1C96684(v42, &v14[*(v44 + 36)], MEMORY[0x1E6980738]);
    *v14 = v56;
    *(v14 + 1) = v37;
    v14[16] = v39 & 1;
    *(v14 + 3) = v57;

    sub_1C1C96724(v42, MEMORY[0x1E6980738]);
    KeyPath = swift_getKeyPath();
    v46 = v62;
    v47 = &v14[*(v62 + 36)];
    *v47 = KeyPath;
    *(v47 + 1) = 1;
    v47[16] = 0;
    v48 = v65;
    sub_1C1C962A0(&qword_1EBF17D40, MEMORY[0x1E6985778], v65);
    v49 = v66;
    sub_1C1C9B198();
    LOBYTE(v41) = sub_1C1C9B188();
    v50 = *(v68 + 8);
    v51 = v49;
    v52 = v69;
    v50(v51, v69);
    v50(v48, v52);
    v53 = *sub_1C1C55268();
    v54 = sub_1C1C98128();

    v55 = v64;
    sub_1C1C552B8(v41 & 1, v53, v46, v54, v64);

    sub_1C1C4E77C(v14, &qword_1EBF188B8);
    sub_1C1C4E714(v55, v17, &qword_1EBF188C0);
    swift_storeEnumTagMultiPayload();
    sub_1C1C98264();
    sub_1C1C9AB38();
    return sub_1C1C4E77C(v55, &qword_1EBF188C0);
  }
}

uint64_t sub_1C1C95E60@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v32 = type metadata accessor for BCUIBatteryGlyphView(0);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *v1;
  v68 = v1[1];
  v4 = v1[3];
  v69 = v1[2];
  v70[0] = v4;
  *(v70 + 15) = *(v1 + 63);
  v67 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF188A8);
  sub_1C1C9B048();
  swift_getKeyPath();
  v59 = v61[2];
  *v60 = *v62;
  *&v60[15] = *&v62[15];
  v57 = v61[0];
  v58 = v61[1];
  sub_1C1C9B038();

  sub_1C1C4E77C(v61, &qword_1EBF188A8);
  v28 = v54;
  v30 = v55;
  v29 = v56;
  v6 = v1[3];
  v69 = v1[2];
  v70[0] = v6;
  *(v70 + 15) = *(v1 + 63);
  v7 = v1[1];
  v67 = *v1;
  v68 = v7;
  sub_1C1C9B048();
  swift_getKeyPath();
  v52[2] = v63[2];
  *v53 = *v64;
  *&v53[15] = *&v64[15];
  v52[0] = v63[0];
  v52[1] = v63[1];
  sub_1C1C9B038();

  sub_1C1C4E77C(v63, &qword_1EBF188A8);
  v26 = v50;
  v27 = v49;
  v8 = v51;
  v9 = v1[3];
  v69 = v1[2];
  v70[0] = v9;
  *(v70 + 15) = *(v1 + 63);
  v10 = v1[1];
  v67 = *v1;
  v68 = v10;
  sub_1C1C9B048();
  swift_getKeyPath();
  v47 = v65[2];
  *v48 = *v66;
  *&v48[15] = *&v66[15];
  v45 = v65[0];
  v46 = v65[1];
  sub_1C1C9B038();

  sub_1C1C4E77C(v65, &qword_1EBF188A8);
  v11 = v42;
  v25 = v43;
  v12 = v44;
  v13 = v1[3];
  v40 = v1[2];
  *v41 = v13;
  *&v41[15] = *(v1 + 63);
  v14 = v1[1];
  v38 = *v1;
  v39 = v14;
  sub_1C1C9B048();
  swift_getKeyPath();
  v40 = v69;
  *v41 = v70[0];
  *&v41[15] = *(v70 + 15);
  v38 = v67;
  v39 = v68;
  sub_1C1C9B038();

  sub_1C1C4E77C(&v67, &qword_1EBF188A8);
  v15 = v35;
  v16 = v36;
  v17 = v37;
  v34 = *(v1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D20);
  sub_1C1C9AFD8();
  v24 = v17;
  v18 = v31;
  sub_1C1C70F9C(v28, v30, v29, v27, v26, v11, v25, v12, v31, v8, v15, v16, v24);
  v19 = v1[3];
  v59 = v1[2];
  *v60 = v19;
  *&v60[15] = *(v1 + 63);
  v20 = v1[1];
  v57 = *v1;
  v58 = v20;
  MEMORY[0x1C6909DC0](v52, v5);
  v21 = sub_1C1C746A4();
  sub_1C1C59188(v52);
  v22 = sub_1C1C4D96C(&qword_1EBF188B0, type metadata accessor for BCUIBatteryGlyphView);
  sub_1C1C5A7B4(v21, v32, v22, v33);
  return sub_1C1C96724(v18, type metadata accessor for BCUIBatteryGlyphView);
}

uint64_t sub_1C1C962A0@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_1C1C9AA38();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  sub_1C1C4E714(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    sub_1C1C9B408();
    v17 = sub_1C1C9ABF8();
    sub_1C1C9A498();

    sub_1C1C9AA28();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_1C1C964A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  MEMORY[0x1EEE9AC00]();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

uint64_t sub_1C1C96570@<X0>(void *a1@<X8>)
{
  result = sub_1C1C9A8D8();
  *a1 = v3;
  return result;
}

uint64_t sub_1C1C9659C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_1C1C9A728() - 8);
  v6 = *(v2 + 3);
  v7 = *(v2 + 4);
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2 + ((*(v5 + 80) + 56) & ~*(v5 + 80));

  return sub_1C1C913D4(a1, v6, v7, v10, a2, v8, v9);
}

uint64_t sub_1C1C96684(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C1C96724(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unsigned __int8 *sub_1C1C967B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1C1C9B308();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1C1C96D94();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1C1C9B518();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unint64_t sub_1C1C96D40()
{
  result = qword_1EBF18798;
  if (!qword_1EBF18798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF18798);
  }

  return result;
}

uint64_t sub_1C1C96D94()
{
  v0 = sub_1C1C9B318();
  v4 = sub_1C1C96E14(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1C1C96E14(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1C1C9B4A8();
    if (!v9 || (v10 = v9, v11 = sub_1C1C6D63C(v9, 0), v12 = sub_1C1C96F6C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1C1C9B278();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1C1C9B278();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1C1C9B518();
LABEL_4:

  return sub_1C1C9B278();
}

unint64_t sub_1C1C96F6C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1C1C9718C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1C1C9B2D8();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1C1C9B518();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1C1C9718C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1C1C9B2B8();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1C1C9718C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1C1C9B2E8();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1C690A070](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1C1C97214(double a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = sub_1C1C9B098();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1C9A718();
  v10 = v9 * a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18770);
  sub_1C1C9B0A8();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C1C9E190;
  *v8 = v10;
  v12 = *(v6 + 104);
  v12(v8, *MEMORY[0x1E697D728], v5);
  sub_1C1C9B0E8();
  sub_1C1C9B0B8();
  sub_1C1C9A718();
  *v8 = v10;
  *(v8 + 1) = v13;
  v14 = (v12)(v8, *MEMORY[0x1E697D748], v5);
  a3(v14);
  sub_1C1C9B0B8();
  return v11;
}

unint64_t sub_1C1C97428()
{
  result = qword_1EBF187B8;
  if (!qword_1EBF187B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF187B0);
    sub_1C1C4CEAC(&qword_1EBF187C0, &qword_1EBF187C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF187B8);
  }

  return result;
}

uint64_t sub_1C1C974D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_1C1C9A728() - 8);
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_1C1C9278C(a1, v6, v7, v10, a2, v8, v9);
}

unint64_t sub_1C1C97560()
{
  result = qword_1EBF19530;
  if (!qword_1EBF19530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF19530);
  }

  return result;
}

unint64_t sub_1C1C975B4()
{
  result = qword_1EBF19538;
  if (!qword_1EBF19538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF19538);
  }

  return result;
}

void sub_1C1C97630()
{
  sub_1C1C4D40C(319, &qword_1EBF17C18, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1C1C97EAC(319, &qword_1EBF18830, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1C1C97798();
      if (v2 <= 0x3F)
      {
        sub_1C1C97EAC(319, &qword_1EBF17D90, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          sub_1C1C97EAC(319, &qword_1EBF18840, MEMORY[0x1E69E6530], MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C1C97798()
{
  if (!qword_1EBF18838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18760);
    v0 = sub_1C1C9B008();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBF18838);
    }
  }
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1C1C97828(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1C1C97870(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_48Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D88);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t __swift_store_extra_inhabitant_index_49Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D88);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_1C1C97BAC()
{
  sub_1C1C4D40C(319, &qword_1EBF17BC0, MEMORY[0x1E6985778], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1C1C97EAC(319, &qword_1EBF18848, &type metadata for ChargeRowData, MEMORY[0x1E6981948]);
    if (v1 <= 0x3F)
    {
      sub_1C1C4D40C(319, &qword_1ED7C4AE8, MEMORY[0x1E697E730], MEMORY[0x1E6981948]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C1C97CF4()
{
  sub_1C1C4D40C(319, &qword_1EBF17BC0, MEMORY[0x1E6985778], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1C1C97EAC(319, &qword_1EBF18848, &type metadata for ChargeRowData, MEMORY[0x1E6981948]);
    if (v1 <= 0x3F)
    {
      sub_1C1C4D40C(319, &qword_1ED7C4AE8, MEMORY[0x1E697E730], MEMORY[0x1E6981948]);
      if (v2 <= 0x3F)
      {
        sub_1C1C97EAC(319, &qword_1EBF17D90, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          sub_1C1C97EAC(319, &qword_1EBF17AC8, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            sub_1C1C51154();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1C1C97EAC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1C1C97FA0()
{
  result = qword_1EBF18880;
  if (!qword_1EBF18880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18878);
    sub_1C1C4CEAC(&qword_1EBF18888, &qword_1EBF18890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF18880);
  }

  return result;
}

uint64_t sub_1C1C98050(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C1C980B8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Dividers(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1C1C941E8(v4, a1);
}

unint64_t sub_1C1C98128()
{
  result = qword_1EBF188D8;
  if (!qword_1EBF188D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF188B8);
    sub_1C1C981E0();
    sub_1C1C4CEAC(&qword_1EBF188E8, &qword_1EBF188F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF188D8);
  }

  return result;
}

unint64_t sub_1C1C981E0()
{
  result = qword_1EBF188E0;
  if (!qword_1EBF188E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF188D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF188E0);
  }

  return result;
}

unint64_t sub_1C1C98264()
{
  result = qword_1EBF188F8;
  if (!qword_1EBF188F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF188C0);
    sub_1C1C9831C(&qword_1EBF18900, &qword_1EBF18908, &unk_1C1C9F8E8, sub_1C1C98128);
    sub_1C1C98128();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF188F8);
  }

  return result;
}

uint64_t sub_1C1C9831C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1C1C4CEAC(&qword_1ED7C4B20, &qword_1EBF18910);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C1C983CC()
{
  result = qword_1EBF18920;
  if (!qword_1EBF18920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18918);
    sub_1C1C4CEAC(&qword_1EBF188E8, &qword_1EBF188F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF18920);
  }

  return result;
}

unint64_t sub_1C1C98484()
{
  result = qword_1EBF18930;
  if (!qword_1EBF18930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18928);
    sub_1C1C9831C(&qword_1EBF18938, &qword_1EBF18940, &unk_1C1C9F908, sub_1C1C983CC);
    sub_1C1C983CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF18930);
  }

  return result;
}

unint64_t sub_1C1C9853C()
{
  result = qword_1EBF18958;
  if (!qword_1EBF18958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18950);
    sub_1C1C4CEAC(&qword_1EBF18960, &qword_1EBF18968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF18958);
  }

  return result;
}

unint64_t sub_1C1C985F4()
{
  result = qword_1EBF18978;
  if (!qword_1EBF18978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18970);
    sub_1C1C98680();
    sub_1C1C9853C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF18978);
  }

  return result;
}

unint64_t sub_1C1C98680()
{
  result = qword_1EBF18980;
  if (!qword_1EBF18980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18988);
    sub_1C1C9853C();
    sub_1C1C5ABCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF18980);
  }

  return result;
}

unint64_t sub_1C1C9870C()
{
  result = qword_1EBF18998;
  if (!qword_1EBF18998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF18998);
  }

  return result;
}

unint64_t sub_1C1C98790()
{
  result = qword_1EBF189B0;
  if (!qword_1EBF189B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF189B8);
    sub_1C1C9884C();
    sub_1C1C4D96C(&qword_1EBF188B0, type metadata accessor for BCUIBatteryGlyphView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF189B0);
  }

  return result;
}

unint64_t sub_1C1C9884C()
{
  result = qword_1EBF189C0;
  if (!qword_1EBF189C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF189C8);
    sub_1C1C4D96C(&qword_1EBF188B0, type metadata accessor for BCUIBatteryGlyphView);
    sub_1C1C5ABCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF189C0);
  }

  return result;
}

uint64_t sub_1C1C98908(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1C1C9898C()
{
  result = qword_1EBF189F0;
  if (!qword_1EBF189F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF189F8);
    sub_1C1C985F4();
    sub_1C1C4D96C(&qword_1EBF17AF0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF189F0);
  }

  return result;
}

uint64_t sub_1C1C98AE0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1C1C9A4C8();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1C1C98B80@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1C1C9AF08();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    (*(v7 + 104))(v9, *MEMORY[0x1E6981630], v6);
    v10 = sub_1C1C9AF38();
    (*(v7 + 8))(v9, v6);
    v13 = v10;
    v14 = 0;
  }

  else
  {
    v13 = a2;
    v14 = 1;
  }

  result = sub_1C1C9AB38();
  v12 = v16;
  *a3 = v15;
  *(a3 + 8) = v12;
  return result;
}

double sub_1C1C98CF0(void *a1)
{
  v2 = sub_1C1C9B228();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18A00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1C9F970;
  v4 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  *(inited + 64) = sub_1C1C50624();
  *(inited + 40) = a1;
  v5 = v4;
  v6 = a1;
  sub_1C1C50670(inited);
  swift_setDeallocating();
  sub_1C1C4E77C(inited + 32, &qword_1EBF18A08);
  type metadata accessor for Key();
  sub_1C1C4E7DC(&qword_1ED7C5360, type metadata accessor for Key);
  v7 = sub_1C1C9B1D8();

  [v2 sizeWithAttributes_];
  v9 = v8;

  return v9;
}

id sub_1C1C98E50(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18A18);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_1C1C9A798();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, v1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v8 = sub_1C1C9B478();
  v9 = sub_1C1C6BAB0(a1, v8);

  return v9;
}

BOOL sub_1C1C98FB0(void *a1, uint64_t *a2)
{
  v4 = sub_1C1C9AAE8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != -1)
  {
    swift_once();
  }

  v8 = *a2;
  sub_1C1C52800(v7);
  v9 = sub_1C1C530D4(v7, v8);
  (*(v5 + 8))(v7, v4);
  return v9;
}

void sub_1C1C990C0()
{
  v0 = sub_1C1C9B228();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  qword_1ED7C62A0 = v1;
}

uint64_t sub_1C1C99130()
{
  if (qword_1ED7C5510 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED7C62A0;
  v1 = qword_1ED7C62A0;
  return v0;
}

uint64_t sub_1C1C991B0()
{
  sub_1C1C9B128();
  v0 = sub_1C1C9B118();

  qword_1EBF19A70 = v0;
  return result;
}

uint64_t *sub_1C1C991F4()
{
  if (qword_1EBF18A90 != -1)
  {
    swift_once();
  }

  return &qword_1EBF19A70;
}

uint64_t sub_1C1C99268()
{
  result = sub_1C1C9B128();
  qword_1ED7C62B0 = result;
  return result;
}

uint64_t sub_1C1C992B0()
{
  result = sub_1C1C9AEB8();
  qword_1ED7C62B8 = result;
  return result;
}

uint64_t sub_1C1C992F4(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_1C1C993C0()
{
  if (qword_1ED7C5D18 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED7C6330;
  v1 = qword_1ED7C6330;
  return v0;
}

uint64_t sub_1C1C994E0(uint64_t a1, id *a2)
{
  result = sub_1C1C9B238();
  *a2 = 0;
  return result;
}

uint64_t sub_1C1C99558(uint64_t a1, id *a2)
{
  v3 = sub_1C1C9B248();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1C1C995D8@<X0>(uint64_t *a1@<X8>)
{
  sub_1C1C9B258();
  v2 = sub_1C1C9B228();

  *a1 = v2;
  return result;
}

uint64_t sub_1C1C9961C()
{
  v0 = sub_1C1C9B258();
  v1 = MEMORY[0x1C690A0A0](v0);

  return v1;
}

uint64_t sub_1C1C99658()
{
  sub_1C1C9B258();
  sub_1C1C9B288();
}

uint64_t sub_1C1C996AC()
{
  sub_1C1C9B258();
  sub_1C1C9B5D8();
  sub_1C1C9B288();
  v0 = sub_1C1C9B5E8();

  return v0;
}

uint64_t sub_1C1C99720()
{
  v0 = sub_1C1C9B258();
  v2 = v1;
  if (v0 == sub_1C1C9B258() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1C1C9B5A8();
  }

  return v5 & 1;
}

uint64_t sub_1C1C997A8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C1C9B228();

  *a1 = v2;
  return result;
}

uint64_t sub_1C1C997F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1C9B258();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C1C9981C(uint64_t a1)
{
  v2 = sub_1C1C4E7DC(&qword_1ED7C5360, type metadata accessor for Key);
  v3 = sub_1C1C4E7DC(&qword_1EBF18A60, type metadata accessor for Key);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t getEnumTagSinglePayload for AccessibilityConditionallyCombined(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityConditionallyCombined(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C1C99A68()
{
  result = qword_1EBF18A38;
  if (!qword_1EBF18A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF18A38);
  }

  return result;
}

id sub_1C1C99B74()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EBF19A38 = result;
  return result;
}

uint64_t sub_1C1C99BC8()
{
  v0 = sub_1C1C9A488();
  __swift_allocate_value_buffer(v0, qword_1EBF19AB0);
  __swift_project_value_buffer(v0, qword_1EBF19AB0);
  if (qword_1EBF19A30 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBF19A38;
  return sub_1C1C9A478();
}

uint64_t sub_1C1C99CB8()
{
  v0 = sub_1C1C9A488();
  __swift_allocate_value_buffer(v0, qword_1EBF19AC8);
  __swift_project_value_buffer(v0, qword_1EBF19AC8);
  if (qword_1EBF19A30 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBF19A38;
  return sub_1C1C9A478();
}

uint64_t sub_1C1C99DA8()
{
  v0 = sub_1C1C9A488();
  __swift_allocate_value_buffer(v0, qword_1EBF19AE0);
  __swift_project_value_buffer(v0, qword_1EBF19AE0);
  if (qword_1EBF19A30 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBF19A38;
  return sub_1C1C9A478();
}

uint64_t sub_1C1C99E98()
{
  v0 = sub_1C1C9A488();
  __swift_allocate_value_buffer(v0, qword_1EBF19AF8);
  __swift_project_value_buffer(v0, qword_1EBF19AF8);
  if (qword_1EBF19A30 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBF19A38;
  return sub_1C1C9A478();
}

uint64_t sub_1C1C99F88()
{
  v0 = sub_1C1C9A488();
  __swift_allocate_value_buffer(v0, qword_1EBF19B10);
  __swift_project_value_buffer(v0, qword_1EBF19B10);
  if (qword_1EBF19A30 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBF19A38;
  return sub_1C1C9A478();
}

uint64_t sub_1C1C9A078()
{
  v0 = sub_1C1C9A488();
  __swift_allocate_value_buffer(v0, qword_1EBF19B28);
  __swift_project_value_buffer(v0, qword_1EBF19B28);
  if (qword_1EBF19A30 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBF19A38;
  return sub_1C1C9A478();
}

uint64_t sub_1C1C9A144(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_1C1C9A488();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_1C1C9A1BC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1C1C9A488();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}