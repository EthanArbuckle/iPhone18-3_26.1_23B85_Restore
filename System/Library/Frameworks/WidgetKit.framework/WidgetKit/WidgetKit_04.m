void *sub_19207F034(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A18, &qword_192236230);
  v3 = sub_1922286C0();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_1920B733C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_1920B733C(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19207F13C()
{
  program_sdk_version = dyld_get_program_sdk_version();
  v4 = sub_192228910();
  MEMORY[0x193B0A990](46, 0xE100000000000000);
  v1 = sub_192228910();
  MEMORY[0x193B0A990](v1);

  result = v4;
  if (program_sdk_version)
  {
    v3 = sub_192228910();
    MEMORY[0x193B0A990](v3);

    MEMORY[0x193B0A990](46, 0xE100000000000000);

    return v4;
  }

  return result;
}

uint64_t sub_19207F244()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEB80, &qword_19222AF60);
  v1 = *(type metadata accessor for WidgetDescriptor(0) - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_19222B480;
  sub_19207F348(v0, v4 + v3);
  sub_1920791AC();
  sub_192226620();
}

uint64_t sub_19207F348(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19207F3B4(uint64_t result, uint64_t (*a2)(char *))
{
  v2 = *result;
  v3 = *(*result + 16);
  if (v3)
  {
    v5 = result;
    v6 = *result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_9:
      v2 = sub_19207F4A8(v2);
    }

    for (i = 0; i != v3; ++i)
    {
      if (i >= *(v2 + 2))
      {
        __break(1u);
        goto LABEL_9;
      }

      v8 = *(type metadata accessor for WidgetDescriptor(0) - 8);
      result = a2(&v2[((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * i]);
    }

    *v5 = v2;
  }

  return result;
}

uint64_t sub_19207F4BC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(*(*(v1 + 24) - 8) + 80);
  return sub_19207F4F8(a1, *(v1 + 40));
}

uint64_t sub_19207F4F8(uint64_t a1, void *a2)
{
  v2 = *(*(*(*a2 + *MEMORY[0x1E69E6CE8] + 8) - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v7 - v4, v5);
  return swift_setAtWritableKeyPath();
}

uint64_t sub_19207F638(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_19207C2E8(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for WidgetDescriptor(0);
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t StaticConfiguration.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ViewSource(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = v1[5];
  *v6 = v9;
  v6[1] = v10;
  v6[2] = v11;
  v6[3] = v12;
  v6[4] = 0;
  v6[5] = 0;
  v6[6] = v7;
  v6[7] = v8;
  swift_storeEnumTagMultiPayload();

  return sub_19207ED1C(v6, a1);
}

double ControlPicker.init<A, B, C, D, E, F, G>(kind:displayName:preferredSize:intentUpdatableProperty:title:value:affordances:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = *a5;
  v23 = *(*a6 + *MEMORY[0x1E69E77B0] + 8);
  v24 = v23 + *MEMORY[0x1E695A680];
  v25 = *(v24 + 16);
  v26 = *(*(*(v24 + 40) + 8) + 8);
  v27 = sub_192224D10();
  v42 = v28;
  v43 = v27;
  v51 = v22;
  sub_1921A1298(a6, a16, a17, a18, v50);

  v29 = sub_192224BA0();
  if (a12)
  {
    v30 = a13;
  }

  else
  {
    v30 = 0;
  }

  v31 = *(*(v23 + *MEMORY[0x1E695A680] + 8) + *MEMORY[0x1E695A610] + 8);
  v32 = type metadata accessor for KeyPathPickerBox();
  v33 = sub_1920818CC();
  WitnessTable = swift_getWitnessTable();
  sub_192080134(a1, a2, &type metadata for EmptyConfiguration, v43, v42, a3, a4, &v51, v52, v50, 3, v29, a7, a8, a10, a11, a12, v30, &type metadata for EmptyConfiguration, a14, a15, v32, v33, a19, a20, WitnessTable);

  v35 = v60;
  *(a9 + 128) = v59;
  *(a9 + 144) = v35;
  v36 = v62;
  *(a9 + 160) = v61;
  *(a9 + 176) = v36;
  v37 = v56;
  *(a9 + 64) = v55;
  *(a9 + 80) = v37;
  v38 = v58;
  *(a9 + 96) = v57;
  *(a9 + 112) = v38;
  v39 = v52[1];
  *a9 = v52[0];
  *(a9 + 16) = v39;
  result = *&v53;
  v41 = v54;
  *(a9 + 32) = v53;
  *(a9 + 48) = v41;
  *(a9 + 192) = 1;
  return result;
}

uint64_t sub_19207FAB0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_19207FAEC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v61 = a8;
  v72 = a6;
  v73 = a7;
  *&v71 = a3;
  *(&v71 + 1) = a4;
  *&v70 = a1;
  *(&v70 + 1) = a2;
  v74 = a9;
  v80 = a18;
  v67 = a16;
  v66 = a15;
  v65 = a14;
  v63 = a13;
  v19 = *(a17 - 8);
  v20 = *(v19 + 64);
  v60 = a11;
  v59 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v21 = v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = *(v19 + 16);
  v79(v21, v22, a17);
  v23 = *(v19 + 80);
  v24 = ((v23 + 32) & ~v23) + v20;
  v78 = (v23 + 32) & ~v23;
  v25 = swift_allocObject();
  *(v25 + 16) = a17;
  *(v25 + 24) = a18;
  v26 = *(v19 + 32);
  v69 = v25;
  v26(v25 + ((v23 + 32) & ~v23), v21, a17);
  v27 = v79;
  v79(v21, a5, a17);
  v28 = swift_allocObject();
  v29 = v80;
  *(v28 + 16) = a17;
  *(v28 + 24) = v29;
  v68 = v28;
  v26(v28 + v78, v21, a17);
  v77 = a5;
  v27(v21, a5, a17);
  v64 = v24;
  v30 = (v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v76 = v23;
  v31 = swift_allocObject();
  v32 = v80;
  *(v31 + 16) = a17;
  *(v31 + 24) = v32;
  v75 = v26;
  v26(v31 + v78, v21, a17);
  v62 = v31;
  v33 = (v31 + v30);
  v34 = v59;
  *v33 = v61;
  v33[1] = v34;
  v58[1] = v19 + 32;
  if (v60)
  {
    v35 = v60;
    v79(v21, v77, a17);
    v36 = swift_allocObject();
    v37 = v80;
    *(v36 + 16) = a17;
    *(v36 + 24) = v37;
    v38 = v78;
    v75(v36 + v78, v21, a17);
    v39 = (v36 + v30);
    *v39 = v35;
    v39[1] = a12;
    v60 = &unk_192237560;
    v61 = v36;
  }

  else
  {
    v60 = 0;
    v61 = 0;
    v38 = v78;
  }

  v40 = v77;
  v79(v21, v77, a17);
  v41 = (v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  v43 = v80;
  *(v42 + 16) = a17;
  *(v42 + 24) = v43;
  v59 = v42;
  v44 = v75;
  v75(v42 + v38, v21, a17);
  v45 = (v42 + v41);
  v46 = v65;
  *v45 = v63;
  v45[1] = v46;
  v79(v21, v40, a17);
  v47 = swift_allocObject();
  v48 = v80;
  *(v47 + 16) = a17;
  *(v47 + 24) = v48;
  v44(v47 + v38, v21, a17);
  v49 = (v47 + v41);
  v50 = v67;
  *v49 = v66;
  v49[1] = v50;
  v44(v21, v77, a17);
  v51 = swift_allocObject();
  *(v51 + 16) = a17;
  *(v51 + 24) = v48;
  v44(v51 + v38, v21, a17);
  v82 = v70;
  v83 = v71;
  LOBYTE(v84) = 0;
  *(&v84 + 1) = v72;
  v85.n128_u64[0] = v73;
  v85.n128_u64[1] = &unk_192237520;
  *&v86 = v62;
  *(&v86 + 1) = v60;
  *&v87 = v61;
  *(&v87 + 1) = &unk_192237530;
  *&v88 = v59;
  *(&v88 + 1) = &unk_192237540;
  *&v89 = v47;
  *(&v89 + 1) = &unk_192237550;
  *&v90 = v51;
  BYTE8(v90) = 0;
  *&v91 = &unk_192237500;
  *(&v91 + 1) = v69;
  *&v92 = &unk_192237510;
  *(&v92 + 1) = v68;
  v93[0] = v70;
  v93[1] = v71;
  v94 = 0;
  v95 = v72;
  v96 = v73;
  v97 = &unk_192237520;
  v98 = v62;
  v99 = v60;
  v100 = v61;
  v101 = &unk_192237530;
  v102 = v59;
  v103 = &unk_192237540;
  v104 = v47;
  v105 = &unk_192237550;
  v106 = v51;
  v107 = 0;
  *v108 = v113[0];
  *&v108[3] = *(v113 + 3);
  v109 = &unk_192237500;
  v110 = v69;
  v111 = &unk_192237510;
  v112 = v68;
  sub_1920800B4(&v82, &v81);
  sub_192080104(v93);
  v52 = v91;
  v53 = v74;
  *(v74 + 128) = v90;
  *(v53 + 144) = v52;
  *(v53 + 160) = v92;
  v54 = v87;
  *(v53 + 64) = v86;
  *(v53 + 80) = v54;
  v55 = v89;
  *(v53 + 96) = v88;
  *(v53 + 112) = v55;
  v56 = v83;
  *v53 = v82;
  *(v53 + 16) = v56;
  result = v85;
  *(v53 + 32) = v84;
  *(v53 + 48) = result;
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

uint64_t get_enum_tag_for_layout_string_So8INIntentC7SwiftUI7AnyViewVs5Error_pIegHgozo_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_192080134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v80 = a6;
  v85 = a5;
  v84 = a4;
  v97 = a26;
  v100 = a25;
  v93 = a24;
  v95 = a21;
  v94 = a20;
  v90 = a18;
  v89 = a17;
  v102 = a16;
  v87 = a15;
  v101 = a14;
  v86 = a13;
  v88 = a12;
  v96 = a22;
  v99 = *(a22 - 8);
  v32 = *(v99 + 64);
  v91 = a11;
  v98 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v34 = &v79 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_192224FB0();
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v37 = *a8;
  *(a9 + 192) = 0;
  v92 = a1;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  v103 = a2;
  *(a9 + 32) = 0;
  *(a9 + 40) = 0;
  *(a9 + 48) = a3;

  if (a7)
  {
    v38 = v80;
  }

  else
  {
    sub_192224BC0();
    v38 = sub_192227980();
    a7 = v39;
  }

  *(a9 + 152) = v38;
  *(a9 + 160) = a7;
  *(a9 + 168) = v37;
  v40 = v85;
  *(a9 + 176) = v84;
  *(a9 + 184) = v40;
  v85 = sub_192224BB0();
  v84 = v41;
  v42 = *(v99 + 16);
  v83 = v34;
  v43 = v96;
  v42(v34, v98);
  v44 = swift_allocObject();
  v45 = v94;
  v44[2] = a19;
  v44[3] = v45;
  v46 = v45;
  v47 = v95;
  v44[4] = v95;
  v44[5] = v43;
  v48 = v47;
  v49 = v93;
  v44[6] = a23;
  v44[7] = v49;
  v50 = v49;
  v51 = v97;
  v44[8] = v100;
  v44[9] = v51;
  v52 = swift_allocObject();
  v52[2] = a19;
  v52[3] = v46;
  v81 = a19;
  v52[4] = v48;
  v52[5] = v43;
  v82 = a23;
  v52[6] = a23;
  v52[7] = v50;
  v53 = v100;
  v54 = v97;
  v52[8] = v100;
  v52[9] = v54;
  v55 = v101;
  v52[10] = v86;
  v52[11] = v55;
  v56 = swift_allocObject();
  v57 = v94;
  v56[2] = a19;
  v56[3] = v57;
  v58 = v95;
  v56[4] = v95;
  v56[5] = v43;
  v56[6] = a23;
  v59 = v93;
  v56[7] = v93;
  v56[8] = v53;
  v60 = v87;
  v56[9] = v54;
  v56[10] = v60;
  v56[11] = v102;
  v61 = swift_allocObject();
  v61[2] = v81;
  v61[3] = v57;
  v62 = v96;
  v61[4] = v58;
  v61[5] = v62;
  v61[6] = v82;
  v61[7] = v59;
  v61[8] = v100;
  v61[9] = v54;
  v63 = v89;
  v64 = v90;
  v61[10] = v89;
  v61[11] = v64;

  sub_19202D088(v63);
  v78 = v61;
  v77 = v52;
  v65 = v92;
  v66 = v103;
  sub_19207FAEC(v92, v103, v85, v84, v83, sub_19214BBE0, v44, sub_19214BBF4, v104, v77, 0, 0, sub_19214BC34, v56, sub_19214BC70, v78, v62, v54);
  v67 = v91;
  v68 = v88;
  *a9 = v91;
  *(a9 + 8) = v68;
  *(a9 + 128) = &type metadata for ControlPickerTemplateProvider;
  *(a9 + 136) = &off_1F06AFD68;
  v69 = swift_allocObject();
  *(a9 + 104) = v69;
  v70 = v68;
  sub_19203831C(v63);

  v71 = v104[9];
  v69[9] = v104[8];
  v69[10] = v71;
  v69[11] = v104[10];
  v72 = v104[5];
  v69[5] = v104[4];
  v69[6] = v72;
  v73 = v104[7];
  v69[7] = v104[6];
  v69[8] = v73;
  v74 = v104[1];
  v69[1] = v104[0];
  v69[2] = v74;
  v75 = v104[3];
  v69[3] = v104[2];
  v69[4] = v75;
  result = (*(v99 + 8))(v98, v62);
  *(a9 + 144) = 0;
  *(a9 + 56) = v65;
  *(a9 + 64) = v66;
  *(a9 + 72) = 0;
  *(a9 + 80) = 0;
  *(a9 + 88) = v67;
  *(a9 + 96) = v70;
  return result;
}

uint64_t sub_192080714()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  v4 = v0[10];

  if (v0[11])
  {
    v5 = v0[12];
  }

  v6 = v0[14];

  v7 = v0[16];

  v8 = v0[18];

  v9 = v0[21];

  v10 = v0[23];

  return swift_deallocObject();
}

uint64_t sub_1920807AC()
{
  v1 = *(v0 + 88);

  return swift_deallocObject();
}

uint64_t sub_1920807E4()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 88);
  }

  return swift_deallocObject();
}

uint64_t sub_192080828(uint64_t a1)
{
  result = type metadata accessor for WidgetDescriptor(0);
  *(a1 + *(result + 144)) = 1;
  return result;
}

double ControlToggle.init<A, B, C, D, E, F, G>(kind:intentUpdatableProperty:title:subtitle:value:affordances:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v20 = *a3;
  v21 = *(*a3 + *MEMORY[0x1E69E77B0] + 8);
  v22 = v21 + *MEMORY[0x1E695A680];
  v23 = *(v22 + 16);
  v44 = *(v22 + 40);
  v24 = *(*(v44 + 8) + 8);
  v25 = sub_192224D10();
  v51 = v26;
  v52 = v25;
  sub_192080BD0(a3, a16, v57);

  v48 = sub_192224BA0();
  v27 = swift_allocObject();
  v28 = *(v20 + *MEMORY[0x1E69E77B0]);
  v27[2] = v28;
  v27[3] = v23;
  v43 = v21;
  v29 = *(v21 + *MEMORY[0x1E695A680] + 8);
  v27[4] = v29;
  v27[5] = v21;
  v27[6] = a13;
  v27[7] = a14;
  v27[8] = a15;
  v27[9] = a16;
  v27[10] = v44;
  v27[11] = a17;
  v27[12] = a18;
  v27[13] = a19;
  v27[14] = a4;
  v27[15] = a5;
  v30 = swift_allocObject();
  v31 = v30;
  v30[2] = v28;
  v30[3] = v23;
  v30[4] = v29;
  v30[5] = v43;
  v30[6] = a13;
  v30[7] = a14;
  v30[8] = a15;
  v30[9] = a16;
  v30[10] = v44;
  v30[11] = a17;
  v30[12] = a18;
  if (a11)
  {
    v32 = a12;
  }

  else
  {
    v32 = 0;
  }

  v30[13] = a19;
  v30[14] = a6;
  v30[15] = a7;
  v33 = sub_192080D60();
  v56 = 0;
  sub_192080DB4(a1, a2, &type metadata for EmptyConfiguration, v52, v51, 0, 0, &v56, v58, v57, 1, v48, sub_192108424, v27, sub_192108574, v31, a8, a10, a11, v32, &type metadata for EmptyConfiguration, a13, a14, a15, &type metadata for KeyPathToggleBox, a17, a18, a19, v33);

  v34 = v66;
  v35 = v67;
  v36 = v64;
  *(a9 + 128) = v65;
  *(a9 + 144) = v34;
  v37 = v68;
  *(a9 + 160) = v35;
  *(a9 + 176) = v37;
  v38 = v62;
  v39 = v63;
  *(a9 + 64) = v61;
  *(a9 + 80) = v38;
  *(a9 + 96) = v39;
  *(a9 + 112) = v36;
  v40 = v58[1];
  *a9 = v58[0];
  *(a9 + 16) = v40;
  result = *&v59;
  v42 = v60;
  *(a9 + 32) = v59;
  *(a9 + 48) = v42;
  *(a9 + 192) = 1;
  return result;
}

uint64_t sub_192080B94()
{
  v1 = *(v0 + 120);

  return swift_deallocObject();
}

uint64_t sub_192080BD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a1;
  v9 = swift_allocObject();
  v10 = (v6 + *MEMORY[0x1E69E77B0]);
  v9[2] = *v10;
  v11 = v10[1];
  v12 = (v11 + *MEMORY[0x1E695A680]);
  v9[3] = v12[2];
  v9[4] = v12[1];
  v9[5] = v11;
  v9[6] = a2;
  v9[7] = v12[5];
  *a3 = &unk_192232FD8;
  a3[1] = v7;
  a3[2] = sub_19210BB8C;
  a3[3] = v8;
  a3[4] = &unk_192232FE8;
  a3[5] = v9;
}

uint64_t sub_192080D14()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_192080D60()
{
  result = qword_1ED749198;
  if (!qword_1ED749198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749198);
  }

  return result;
}

uint64_t sub_192080DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void (*a5)(void, void, void)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v177 = a27;
  v178 = a5;
  v180 = a26;
  v181 = a28;
  v175 = a4;
  v176 = a24;
  v182 = a23;
  v183 = a29;
  v179 = a22;
  v185 = a21;
  v158 = a20;
  v157 = a19;
  v156 = a18;
  v155 = a17;
  v154 = a16;
  v151 = a15;
  v148 = a14;
  v147 = a13;
  v160 = a12;
  v168 = *(a25 - 8);
  v36 = v168[8];
  v161 = a11;
  v184 = a10;
  v37 = MEMORY[0x1EEE9AC00](a1);
  v159 = &v142 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v37);
  v167 = &v142 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v166 = &v142 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v165 = &v142 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v164 = &v142 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v146 = &v142 - v47;
  MEMORY[0x1EEE9AC00](v46);
  v144 = &v142 - v48;
  v49 = sub_192224FB0();
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49 - 8);
  v51 = *a8;
  *(a9 + 192) = 0;
  v162 = a1;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  v169 = a2;
  *(a9 + 32) = 0;
  *(a9 + 40) = 0;
  *(a9 + 48) = a3;
  v52 = v178;
  *(a9 + 176) = v175;
  *(a9 + 184) = v52;
  swift_getAssociatedConformanceWitness();

  if (!a7)
  {
    sub_192224BC0();
    a6 = sub_192227980();
    a7 = v53;
  }

  v149 = a9;
  *(a9 + 152) = a6;
  *(a9 + 160) = a7;
  *(a9 + 168) = v51;
  v54 = v185;
  v153 = sub_192224BB0();
  v152 = v55;
  v56 = swift_allocObject();
  v150 = v56;
  v57 = v54;
  v59 = v179;
  v58 = v180;
  v56[2] = v54;
  v56[3] = v59;
  v60 = v182;
  v61 = v176;
  v56[4] = v182;
  v56[5] = v61;
  v56[6] = a25;
  v56[7] = v58;
  v62 = v177;
  v56[8] = v177;
  v63 = v62;
  v65 = v183;
  v64 = v184;
  v56[9] = v181;
  v56[10] = v65;
  v66 = v168;
  v67 = v168[2];
  v173 = v168 + 2;
  v174 = v67;
  v68 = v144;
  v67(v144, v64, a25);
  v69 = (*(v66 + 80) + 88) & ~*(v66 + 80);
  v171 = *(v66 + 80);
  v163 = v69 + v36;
  v175 = v69;
  v170 = (v69 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  v70[2] = v57;
  v70[3] = v59;
  v70[4] = v60;
  v70[5] = v61;
  v71 = v180;
  v72 = v181;
  v70[6] = a25;
  v70[7] = v71;
  v70[8] = v63;
  v70[9] = v72;
  v73 = v183;
  v70[10] = v183;
  v74 = v70;
  v145 = v70;
  v178 = v66[4];
  v172 = v66 + 4;
  v178(v70 + v69, v68, a25);
  v75 = (v74 + v170);
  v76 = v148;
  *v75 = v147;
  v75[1] = v76;
  v77 = v146;
  v174(v146, v184, a25);
  v78 = swift_allocObject();
  v79 = v179;
  v78[2] = v185;
  v78[3] = v79;
  v80 = v182;
  v81 = v175;
  v82 = v176;
  v78[4] = v182;
  v78[5] = v82;
  v78[6] = a25;
  v78[7] = v71;
  v78[8] = v63;
  v78[9] = v72;
  v78[10] = v73;
  v83 = v78;
  v148 = v78;
  v178(v78 + v81, v77, a25);
  v84 = (v83 + v170);
  v85 = v154;
  *v84 = v151;
  v84[1] = v85;
  v86 = v184;
  v87 = v174;
  v174(v164, v184, a25);
  v88 = swift_allocObject();
  v88[2] = v185;
  v88[3] = v79;
  v90 = v176;
  v89 = v177;
  v88[4] = v80;
  v88[5] = v90;
  v92 = v180;
  v91 = v181;
  v88[6] = a25;
  v88[7] = v92;
  v88[8] = v89;
  v88[9] = v91;
  v93 = v183;
  v88[10] = v183;
  v94 = v88;
  v154 = v88;
  v178(v88 + v175, v164, a25);
  v95 = v170;
  v96 = (v94 + v170);
  v97 = v156;
  *v96 = v155;
  v96[1] = v97;
  v87(v165, v86, a25);
  v98 = v95;
  v99 = swift_allocObject();
  v100 = v185;
  v101 = v179;
  v99[2] = v185;
  v99[3] = v101;
  v99[4] = v182;
  v99[5] = v90;
  v99[6] = a25;
  v99[7] = v92;
  v99[8] = v89;
  v102 = v181;
  v99[9] = v181;
  v99[10] = v93;
  v103 = v175;
  v104 = v99;
  v164 = v99;
  v178(v99 + v175, v165, a25);
  v105 = (v104 + v98);
  v106 = v158;
  *v105 = v157;
  v105[1] = v106;
  v107 = v184;
  v87(v166, v184, a25);
  v108 = swift_allocObject();
  v108[2] = v100;
  v110 = v179;
  v109 = v180;
  v111 = v182;
  v108[3] = v179;
  v108[4] = v111;
  v113 = v176;
  v112 = v177;
  v108[5] = v176;
  v108[6] = a25;
  v108[7] = v109;
  v108[8] = v112;
  v114 = v183;
  v108[9] = v102;
  v108[10] = v114;
  v115 = v108 + v103;
  v116 = v178;
  v178(v115, v166, a25);
  v174(v167, v107, a25);
  v117 = swift_allocObject();
  *(v117 + 2) = v185;
  *(v117 + 3) = v110;
  v118 = v183;
  *(v117 + 4) = v182;
  *(v117 + 5) = v113;
  *(v117 + 6) = a25;
  *(v117 + 7) = v109;
  v119 = v177;
  *(v117 + 8) = v177;
  *(v117 + 9) = v102;
  *(v117 + 10) = v118;
  v120 = v175;
  v116(&v117[v175], v167, a25);
  v121 = v159;
  v174(v159, v184, a25);
  v122 = swift_allocObject();
  v123 = v179;
  v122[2] = v185;
  v122[3] = v123;
  v122[4] = v182;
  v122[5] = v113;
  v143 = a25;
  v125 = v180;
  v124 = v181;
  v122[6] = a25;
  v122[7] = v125;
  v122[8] = v119;
  v122[9] = v124;
  v122[10] = v118;
  v178(v122 + v120, v121, a25);
  v126 = v161;
  v127 = v149;
  v128 = v160;
  *v149 = v161;
  v127[1] = v128;
  v127[16] = &type metadata for ControlToggleTemplateProvider;
  v127[17] = &off_1F06B3538;
  v129 = v127;
  v130 = swift_allocObject();
  v129[13] = v130;
  v131 = v162;
  v132 = v169;
  *(v130 + 16) = v162;
  *(v130 + 24) = v132;
  v133 = v152;
  *(v130 + 32) = v153;
  *(v130 + 40) = v133;
  *(v130 + 48) = 0;
  *(v130 + 49) = *v186;
  *(v130 + 52) = *&v186[3];
  v134 = v150;
  *(v130 + 56) = sub_1921A0808;
  *(v130 + 64) = v134;
  v135 = v145;
  *(v130 + 72) = &unk_19223E340;
  *(v130 + 80) = v135;
  v136 = v148;
  *(v130 + 88) = &unk_19223E350;
  *(v130 + 96) = v136;
  v137 = v154;
  *(v130 + 104) = &unk_19223E360;
  *(v130 + 112) = v137;
  v138 = v164;
  *(v130 + 120) = &unk_19223E370;
  *(v130 + 128) = v138;
  *(v130 + 136) = &unk_19223E380;
  *(v130 + 144) = v108;
  *(v130 + 152) = &unk_19223E390;
  *(v130 + 160) = v117;
  *(v130 + 168) = &unk_19223E3A0;
  *(v130 + 176) = v122;
  v139 = v168[1];

  v140 = v128;
  result = v139(v184, v143);
  *(v129 + 144) = 0;
  v129[7] = v131;
  v129[8] = v132;
  v129[9] = 0;
  v129[10] = 0;
  v129[11] = v126;
  v129[12] = v140;
  return result;
}

uint64_t sub_192081774()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  v4 = v0[10];

  if (v0[11])
  {
    v5 = v0[12];
  }

  v6 = v0[14];

  v7 = v0[16];

  v8 = v0[18];

  v9 = v0[20];

  v10 = v0[22];

  return swift_deallocObject();
}

uint64_t sub_192081810()
{
  v1 = *(*(v0 + 48) - 8);
  v2 = (*(v1 + 80) + 88) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);
  if (*(v0 + v3))
  {
    v4 = *(v0 + v3 + 8);
  }

  return swift_deallocObject();
}

unint64_t sub_1920818CC()
{
  result = qword_1ED749A98;
  if (!qword_1ED749A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749A98);
  }

  return result;
}

uint64_t sub_192081920@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED7494A0 != -1)
  {
    swift_once();
  }

  v2 = sub_192224FB0();
  v3 = __swift_project_value_buffer(v2, qword_1ED749180);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1920819E0()
{
  v0 = sub_192224FB0();
  __swift_allocate_value_buffer(v0, qword_1ED749180);
  __swift_project_value_buffer(v0, qword_1ED749180);
  return sub_192224FA0();
}

uint64_t sub_192081A44(uint64_t a1)
{
  v2 = sub_1920818CC();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

__n128 __swift_memcpy193_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_192081B08@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ViewSource(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 152);
  v7 = *(v1 + 160);
  v9 = *(v1 + 168);
  v11 = *(v1 + 176);
  v10 = *(v1 + 184);
  v12 = *(v1 + 192);
  sub_192081C60(v1 + 56, v6);
  swift_storeEnumTagMultiPayload();
  sub_19207ED1C(v6, a1);
  v13 = type metadata accessor for WidgetDescriptor(0);
  v14 = v13[7];
  v15 = *(a1 + v14);

  *(a1 + v14) = &unk_1F06A8450;
  *(a1 + v13[39]) = v9;
  v16 = (a1 + v13[5]);
  v17 = v16[1];

  *v16 = v8;
  v16[1] = v7;
  v18 = (a1 + v13[6]);
  v19 = v18[1];

  *v18 = 0;
  v18[1] = 0;
  v20 = (a1 + v13[40]);
  v21 = v20[1];

  *v20 = v11;
  v20[1] = v10;
  *(a1 + v13[36]) = v12;
  *(a1 + v13[29]) = v12;
  return result;
}

uint64_t sub_192081CBC(uint64_t a1)
{
  v2 = type metadata accessor for ViewSource(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WidgetDescriptor(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6 - 8);
  v31 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - v11;
  v13 = *(a1 + 32);
  sub_1920791AC();
  result = sub_192225D70();
  v15 = v33;
  v30 = *(v33 + 16);
  if (v30)
  {
    v16 = 0;
    v17 = MEMORY[0x1E69E7CC0];
    v29 = v2;
    while (1)
    {
      if (v16 >= *(v15 + 16))
      {
        __break(1u);
        return result;
      }

      v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v19 = *(v7 + 72);
      sub_192036754(v15 + v18 + v19 * v16, v12, type metadata accessor for WidgetDescriptor);
      sub_192036754(v12, v5, type metadata accessor for ViewSource);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload != 2)
        {
LABEL_11:
          sub_192036A20(v5, type metadata accessor for ViewSource);
          sub_192082064(v12, v31, type metadata accessor for WidgetDescriptor);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v32 = v17;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1920820CC(0, *(v17 + 16) + 1, 1);
            v17 = v32;
          }

          v27 = *(v17 + 16);
          v26 = *(v17 + 24);
          if (v27 >= v26 >> 1)
          {
            sub_1920820CC(v26 > 1, v27 + 1, 1);
            v17 = v32;
          }

          *(v17 + 16) = v27 + 1;
          result = sub_192082064(v31, v17 + v18 + v27 * v19, type metadata accessor for WidgetDescriptor);
          goto LABEL_5;
        }

        sub_192036A20(v5, type metadata accessor for ViewSource);
      }

      else
      {
        if (!EnumCaseMultiPayload)
        {
          goto LABEL_11;
        }

        v21 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0) + 48)];
        v22 = *(v21 + 1);
        v23 = *(v21 + 3);

        v24 = sub_1922253B0();
        (*(*(v24 - 8) + 8))(v5, v24);
      }

      result = sub_192036A20(v12, type metadata accessor for WidgetDescriptor);
LABEL_5:
      if (v30 == ++v16)
      {
        goto LABEL_17;
      }
    }
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_17:

  v33 = MEMORY[0x1E69E7CD0];
  v28 = sub_1920822EC(v17, &v33);

  return v28;
}

uint64_t sub_192082064(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

size_t sub_1920820CC(size_t a1, int64_t a2, char a3)
{
  result = sub_192082110(a1, a2, a3, *v3, &qword_1EADEEB80, &qword_19222AF60, type metadata accessor for WidgetDescriptor);
  *v3 = result;
  return result;
}

size_t sub_192082110(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1920822EC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for WidgetDescriptor(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8);
  v24 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - v11;
  v23 = *(a1 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    v21 = a2;
    v22 = a1;
    while (v13 < *(a1 + 16))
    {
      v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v16 = *(v6 + 72);
      sub_192036754(a1 + v15 + v16 * v13, v12, type metadata accessor for WidgetDescriptor);
      v17 = sub_192082568(v12);
      if (v2)
      {
        sub_192036A20(v12, type metadata accessor for WidgetDescriptor);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_192082064(v12, v24, type metadata accessor for WidgetDescriptor);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1920820CC(0, *(v14 + 16) + 1, 1);
          v14 = v25;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1920820CC(v19 > 1, v20 + 1, 1);
          v14 = v25;
        }

        *(v14 + 16) = v20 + 1;
        result = sub_192082064(v24, v14 + v15 + v20 * v16, type metadata accessor for WidgetDescriptor);
        a1 = v22;
      }

      else
      {
        result = sub_192036A20(v12, type metadata accessor for WidgetDescriptor);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t sub_192082568(uint64_t a1)
{
  v2 = type metadata accessor for ViewSource(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_192036754(a1, v5, type metadata accessor for ViewSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      *(&v35 + 1) = &type metadata for LiveSceneWidgetViewSource;
      v36 = sub_1921AFF0C();
      goto LABEL_9;
    }

    *(&v35 + 1) = &type metadata for ControlViewSource;
    v36 = sub_1921AFF60();
    v7 = swift_allocObject();
    *&v34 = v7;
    v8 = v5[3];
    v7[3] = v5[2];
    v7[4] = v8;
    v7[5] = v5[4];
    *(v7 + 89) = *(v5 + 73);
    v9 = v5[1];
    v7[1] = *v5;
    v7[2] = v9;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      *(&v35 + 1) = &type metadata for TimelineViewSource;
      v36 = sub_192082A7C();
LABEL_9:
      v15 = swift_allocObject();
      *&v34 = v15;
      v16 = v5[1];
      v15[1] = *v5;
      v15[2] = v16;
      v17 = v5[3];
      v15[3] = v5[2];
      v15[4] = v17;
      goto LABEL_10;
    }

    v10 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0) + 48);
    v11 = *(v10 + 1);
    v12 = *(v10 + 3);

    v13 = sub_1922253B0();
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
    (*(*(v13 - 8) + 8))(v5, v13);
    if (!*(&v35 + 1))
    {
      sub_192033970(&v34, &qword_1EADF1860, &unk_19223D680);
      v14 = 1;
      return v14 & 1;
    }
  }

LABEL_10:
  sub_19203832C(&v34, v37);
  v18 = v38;
  v19 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  v20 = (*(v19 + 16))(v18, v19);
  v14 = sub_192082B80(&v34, v20, v21);

  if ((v14 & 1) == 0)
  {
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v22 = sub_1922258B0();
    __swift_project_value_buffer(v22, qword_1ED74CCC8);
    sub_192033A64(v37, &v34);
    v23 = sub_192225890();
    v24 = sub_192227FB0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v40 = v26;
      *v25 = 136446210;
      v27 = *(&v35 + 1);
      v28 = v36;
      __swift_project_boxed_opaque_existential_1(&v34, *(&v35 + 1));
      v29 = (*(v28 + 16))(v27, v28);
      v31 = v30;
      __swift_destroy_boxed_opaque_existential_1(&v34);
      v32 = sub_19202B8CC(v29, v31, &v40);

      *(v25 + 4) = v32;
      _os_log_impl(&dword_192028000, v23, v24, "Found duplicate widgets of kind %{public}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x193B0C7F0](v26, -1, -1);
      MEMORY[0x193B0C7F0](v25, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(&v34);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v37);
  return v14 & 1;
}

uint64_t sub_192082968()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  if (v0[8])
  {
    v4 = v0[9];
  }

  return swift_deallocObject();
}

uint64_t sub_1920829C0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  if (*(v0 + 104))
  {
    v3 = *(v0 + 72);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  }

  return swift_deallocObject();
}

uint64_t sub_192082A24()
{
  v1 = v0[3];

  v2 = v0[5];

  if (v0[6])
  {
    v3 = v0[7];
  }

  v4 = v0[9];

  return swift_deallocObject();
}

unint64_t sub_192082A7C()
{
  result = qword_1ED74A528;
  if (!qword_1ED74A528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A528);
  }

  return result;
}

unint64_t sub_192082AD0(uint64_t a1)
{
  result = sub_192082AF8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_192082AF8()
{
  result = qword_1ED74A530;
  if (!qword_1ED74A530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A530);
  }

  return result;
}

uint64_t sub_192082B50()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_192082B80(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_192228AD0();
  sub_1922279B0();
  v9 = sub_192228B30();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1922289A0() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_192082CD0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_192082CD0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_192083088(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1921C3A40();
      goto LABEL_16;
    }

    sub_192082E50(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_192228AD0();
  sub_1922279B0();
  result = sub_192228B30();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1922289A0();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_192228A30();
  __break(1u);
  return result;
}

uint64_t sub_192082E50(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF13D0, &qword_19223AE68);
  result = sub_1922283C0();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_192228AD0();

      sub_1922279B0();
      result = sub_192228B30();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_192083088(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF13D0, &qword_19223AE68);
  result = sub_1922283C0();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_192228AD0();
      sub_1922279B0();
      result = sub_192228B30();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1920832E8()
{
  v187 = v0;
  v1 = *(*(v0 + 616) + OBJC_IVAR____TtC9WidgetKit15TimelineRequest_widget);
  *(v0 + 928) = v1;
  v2 = [v1 intentReference];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 intent];
  }

  else
  {
    v4 = 0;
  }

  *(v0 + 936) = v4;
  if (*(v0 + 97) == 1)
  {
    if (qword_1ED7499C0 != -1)
    {
      swift_once();
    }

    v5 = qword_1ED74C730;
  }

  else
  {
    if (qword_1ED749B38 != -1)
    {
      swift_once();
    }

    v5 = qword_1ED74C770;
  }

  v6 = *(v0 + 896);
  v7 = *(v0 + 888);
  v8 = *(v0 + 880);
  v9 = *(v0 + 616);
  v10 = __swift_project_value_buffer(v8, v5);
  (*(v7 + 16))(v6, v10, v8);
  v11 = *&v9[OBJC_IVAR____TtC9WidgetKit15TimelineRequest_environment];
  *(v0 + 944) = v11;
  KeyPath = swift_getKeyPath();
  v13 = sub_192066C3C(KeyPath);

  v179 = v4;
  if (!v13)
  {
    v30 = *(v0 + 904);
LABEL_59:

    v109 = *(v0 + 896);
    v110 = *(v0 + 888);
    v111 = *(v0 + 880);
    v112 = *MEMORY[0x1E69941E8];
    v113 = sub_19214036C(MEMORY[0x1E69E7CC0]);
    v114 = *MEMORY[0x1E696A278];
    v115 = sub_192227960();
    v117 = v116;
    *(v0 + 408) = MEMORY[0x1E69E6158];
    *(v0 + 384) = 0xD000000000000019;
    *(v0 + 392) = 0x8000000192249050;
    sub_19203BEDC((v0 + 384), (v0 + 416));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v184[0] = v113;
    sub_19213DB28((v0 + 416), v115, v117, isUniquelyReferenced_nonNull_native);

    v119 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v120 = sub_192227830();

    [v119 initWithDomain:v112 code:1002 userInfo:v120];

    swift_willThrow();
    (*(v110 + 8))(v109, v111);
    goto LABEL_60;
  }

  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

    goto LABEL_58;
  }

  if (!sub_192228340())
  {
LABEL_58:
    v108 = *(v0 + 904);

    goto LABEL_59;
  }

LABEL_14:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x193B0B410](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_65;
    }

    v14 = *(v13 + 32);
  }

  v170 = v11;
  v174 = v14;
  *(v0 + 952) = v14;

  v15 = InternalWidgetFamily.init(_:)([v1 family], v184);
  if (!xmmword_1ED74CC80)
  {
    __break(1u);
    return MEMORY[0x1EEE6DDD8](v15, v16, v17, v18, v19, v20);
  }

  v168 = v184[0];
  v21 = *(v0 + 864);
  v176 = *(v0 + 856);
  v22 = *(v0 + 848);
  v23 = qword_1ED74CC90;
  v24 = *xmmword_1ED74CC80;
  *(v0 + 600) = xmmword_1ED74CC80;
  v25 = *(v23 + 8);
  v26 = *(v25 + 8);

  v172 = v1;
  v26(v1, v24, v25);

  v27 = (*(v21 + 48))(v22, 1, v176);
  v28 = *(v0 + 848);
  if (v27 == 1)
  {
    v29 = *(v0 + 904);

    sub_192033970(v28, &qword_1EADEEE20, &qword_19222B670);
LABEL_20:
    v9 = v179;
    v1 = v174;
    goto LABEL_31;
  }

  v31 = *(v0 + 872);
  v32 = *(v0 + 840);
  v33 = *(v0 + 824);
  sub_192084510(*(v0 + 848), v31, type metadata accessor for WidgetDescriptor);
  sub_192084578(v31, v32, type metadata accessor for ViewSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v9 = v179;
    v1 = v174;
    v59 = *(v0 + 904);
    v60 = *(v0 + 840);
    sub_1920B3484(*(v0 + 872), type metadata accessor for WidgetDescriptor);

    sub_1920B3484(v60, type metadata accessor for ViewSource);
LABEL_31:
    if (qword_1ED749278 == -1)
    {
LABEL_32:
      v61 = *(v0 + 896);
      v62 = *(v0 + 888);
      v63 = *(v0 + 880);
      v64 = qword_1ED74C6E8;
      swift_willThrow();
      v64;

      (*(v62 + 8))(v61, v63);
      goto LABEL_60;
    }

LABEL_65:
    swift_once();
    goto LABEL_32;
  }

  if (EnumCaseMultiPayload)
  {
    v65 = *(v0 + 904);
    v66 = *(v0 + 840);
    sub_1920B3484(*(v0 + 872), type metadata accessor for WidgetDescriptor);

    v67 = v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0) + 48);
    v68 = *(v67 + 8);
    v69 = *(v67 + 24);

    v70 = sub_1922253B0();
    (*(*(v70 - 8) + 8))(v66, v70);
    goto LABEL_20;
  }

  v177 = *(v0 + 872);
  v35 = *(v0 + 840);
  v36 = *(v0 + 832);
  v37 = *(v0 + 824);
  v38 = v35[1];
  v39 = v35[3];
  v40 = v35[4];
  v42 = v35[5];
  v41 = v35[6];
  v43 = v35[7];

  sub_19203831C(v40);

  v41(v44);

  sub_19203832C((v0 + 144), v0 + 104);
  sub_192084578(v177, v36, type metadata accessor for ViewSource);
  v45 = swift_getEnumCaseMultiPayload();
  v46 = *(v0 + 832);
  if (v45 > 1)
  {
    sub_1920B3484(v46, type metadata accessor for ViewSource);
  }

  else if (v45)
  {
    v71 = *(v0 + 832);
    v72 = v71 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0) + 48);
    v73 = *(v72 + 8);
    v74 = *(v72 + 24);

    v75 = sub_1922253B0();
    (*(*(v75 - 8) + 8))(v71, v75);
  }

  else
  {
    v47 = v46[1];
    v48 = v46[3];
    v49 = v46[4];
    v50 = v46[5];
    v51 = v46[7];

    sub_19203831C(v49);

    if (v48)
    {

      if (!v179)
      {
        v52 = (v0 + 104);
        v53 = *(v0 + 904);

        if (qword_1EADECF20 == -1)
        {
LABEL_29:
          v54 = *(v0 + 896);
          v55 = *(v0 + 888);
          v56 = *(v0 + 880);
          v57 = *(v0 + 872);
          v58 = qword_1EAE007A0;
          swift_willThrow();
          v58;

          sub_1920B3484(v57, type metadata accessor for WidgetDescriptor);
          (*(v55 + 8))(v54, v56);
          __swift_destroy_boxed_opaque_existential_1(v52);
LABEL_60:
          v121 = *(v0 + 896);
          v122 = *(v0 + 872);
          v123 = *(v0 + 848);
          v124 = *(v0 + 840);
          v125 = *(v0 + 832);
          v126 = *(v0 + 816);
          v127 = *(v0 + 808);
          v128 = *(v0 + 792);
          v129 = *(v0 + 776);
          v130 = *(v0 + 768);
          v160 = *(v0 + 760);
          v161 = *(v0 + 736);
          v162 = *(v0 + 728);
          v163 = *(v0 + 720);
          v164 = *(v0 + 712);
          v165 = *(v0 + 704);
          v166 = *(v0 + 680);
          v167 = *(v0 + 664);
          v169 = *(v0 + 656);
          v171 = *(v0 + 648);
          v173 = *(v0 + 640);
          v175 = *(v0 + 632);
          v181 = *(v0 + 624);

          v131 = *(v0 + 8);

          return v131();
        }

LABEL_88:
        swift_once();
        goto LABEL_29;
      }
    }
  }

  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(*(v0 + 880), qword_1ED74CCC8);
  v180 = v0 + 104;
  sub_192033A64(v0 + 104, v0 + 184);
  v76 = sub_192225890();
  v77 = sub_192227F80();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v184[0] = v79;
    *v78 = 136446210;
    v80 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), *(v0 + 208));
    v81 = *(v80 + 16);
    v82 = sub_192228910();
    v84 = v83;
    __swift_destroy_boxed_opaque_existential_1((v0 + 184));
    v85 = sub_19202B8CC(v82, v84, v184);

    *(v78 + 4) = v85;
    _os_log_impl(&dword_192028000, v76, v77, "reload: %{public}s", v78, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v79);
    MEMORY[0x193B0C7F0](v79, -1, -1);
    MEMORY[0x193B0C7F0](v78, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 184));
  }

  v185 = v170;
  v86 = v170;
  TimelineProviderContext.EnvironmentVariants.init(_:)(&v185, v184);
  v87 = v184[0];
  v88 = v184[1];
  v52 = v184[2];
  v89 = v184[3];
  v90 = [v172 personaIdentifier];
  if (v90)
  {
    v91 = v90;
    v178 = sub_192227960();
    v93 = v92;
  }

  else
  {
    v178 = 0;
    v93 = 0;
  }

  v94 = *(v0 + 808);
  v95 = *(v0 + 97);
  *v94 = v87;
  *(v94 + 8) = v88;
  *(v94 + 16) = v52;
  *(v94 + 24) = v89;
  LOBYTE(v185) = v168;

  v96 = v87;

  sub_19206E384(&v185, v186);
  *(v94 + 32) = v186[0];
  *(v94 + 33) = v168;
  *(v94 + 56) = v95;
  v97 = swift_getKeyPath();
  v98 = sub_192085490(v97, v96, v88, v52, v89);

  if (v98)
  {
    if (*(v98 + 16))
    {
      v99 = *(v98 + 32);
    }

    else
    {
      v99 = 2.0;
    }
  }

  else
  {
    v99 = 2.0;
  }

  v100 = swift_getKeyPath();
  v101 = sub_192085D6C(v100, v96, v88, v52, v89);

  v102 = 0;
  if (!v101)
  {
    goto LABEL_68;
  }

  if (v101 >> 62)
  {
    if (sub_192228340())
    {
      goto LABEL_53;
    }

    goto LABEL_67;
  }

  if (!*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_67:

LABEL_68:
    v107 = 0;
    goto LABEL_69;
  }

LABEL_53:
  if ((v101 & 0xC000000000000001) != 0)
  {
    v103 = MEMORY[0x193B0B410](0, v101);
  }

  else
  {
    if (!*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_88;
    }

    v103 = *(v101 + 32);
  }

  v104 = v103;

  [v104 _rawLayoutInsetAdjustedSizePixelAlignedForDisplayScale_];
  v102 = v105;
  v107 = v106;

LABEL_69:
  v133 = *(v0 + 808);
  *(v133 + 64) = v102;
  *(v133 + 72) = v107;
  v134 = swift_getKeyPath();
  v135 = sub_192099884(v134);

  if (v135)
  {
    if (v135[2])
    {
      v136 = *(*(v0 + 784) + 80);
      sub_19202CFFC(v135 + ((v136 + 32) & ~v136), *(v0 + 792), &qword_1EADEECD0, &qword_1922363D0);

      goto LABEL_74;
    }
  }

  v137 = *(v0 + 792);

  v138 = sub_192224EA0();
  (*(*(v138 - 8) + 56))(v137, 1, 1, v138);
LABEL_74:
  v139 = *(v0 + 816);
  v140 = *(v0 + 808);
  sub_19204E300(*(v0 + 792), v140 + *(*(v0 + 800) + 40), &qword_1EADEECD0, &qword_1922363D0);
  *(v140 + 40) = v178;
  *(v140 + 48) = v93;
  sub_192084510(v140, v139, type metadata accessor for TimelineProviderContext);
  sub_192033A64(v180, v0 + 264);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE30, &qword_19222B700);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE38, &qword_19222B708);
  if (!swift_dynamicCast())
  {
    v151 = *(v0 + 896);
    v152 = *(v0 + 816);
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0;
    sub_192033970(v0 + 304, &qword_1EADEEE40, &qword_19222B710);
    v153 = swift_task_alloc();
    *(v0 + 976) = v153;
    *(v153 + 16) = v95;
    *(v153 + 24) = v180;
    *(v153 + 32) = v172;
    *(v153 + 40) = v152;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE48, &qword_19222B718);
    v154 = swift_allocObject();
    *(v0 + 984) = v154;
    *(v154 + 20) = 0;
    *(v154 + 16) = 0;
    v155 = swift_task_alloc();
    *(v0 + 992) = v155;
    v155[2] = v154;
    v155[3] = v151;
    v155[4] = sub_192086A08;
    v155[5] = v153;
    v156 = *(MEMORY[0x1E69E88C8] + 4);
    v157 = swift_task_alloc();
    *(v0 + 1000) = v157;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE50, &qword_19222B720);
    *v157 = v0;
    v157[1] = sub_1920B0148;
    v18 = sub_192086664;
    v15 = v0 + 608;
    v16 = 0xD000000000000029;
    v17 = 0x8000000192249070;
    v19 = v155;

    return MEMORY[0x1EEE6DDD8](v15, v16, v17, v18, v19, v20);
  }

  v141 = *(v0 + 97);
  sub_19203832C((v0 + 304), v0 + 224);
  v142 = *(v0 + 248);
  v143 = *(v0 + 256);
  __swift_project_boxed_opaque_existential_1((v0 + 224), v142);
  if (v141 == 1)
  {
    v182 = (*(v143 + 16) + **(v143 + 16));
    v144 = *(*(v143 + 16) + 4);
    v145 = swift_task_alloc();
    *(v0 + 960) = v145;
    *v145 = v0;
    v145[1] = sub_1920ADB90;
    v146 = *(v0 + 816);
    v147 = v172;
    v148 = v142;
    v149 = v143;
    v150 = v182;
  }

  else
  {
    v183 = (*(v143 + 24) + **(v143 + 24));
    v158 = *(*(v143 + 24) + 4);
    v159 = swift_task_alloc();
    *(v0 + 968) = v159;
    *v159 = v0;
    v159[1] = sub_1920AEE6C;
    v146 = *(v0 + 816);
    v147 = v172;
    v148 = v142;
    v149 = v143;
    v150 = v183;
  }

  return v150(v147, v146, v148, v149);
}

uint64_t sub_192084510(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_192084578(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1920845E0@<X0>(char **a1@<X8>)
{
  v2 = v1[2];
  v3 = (*(*(v1[4] - 8) + 80) + 88) & ~*(*(v1[4] - 8) + 80);
  v4 = (v1 + ((*(*(v1[4] - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = v1[5];
  v7 = v1[6];
  return sub_19208472C(v1[7], v1[8], v1[9], v1[10], v1 + v3, *v4, v4[1], a1, v1[3], v1[4]);
}

uint64_t sub_192084680@<X0>(void (*a1)(uint64_t *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  a1(v8);
  v7 = v9;
  v3 = v9;
  v4 = __swift_project_boxed_opaque_existential_1(v8, v9);
  *(a2 + 24) = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v4, v3);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_19208472C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char **a8@<X8>, uint64_t a9, uint64_t a10)
{
  v26 = a3;
  v27 = a6;
  v16 = *(a10 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a10;
  v29 = v20;
  v30 = v22;
  v31 = v21;
  v23 = type metadata accessor for IntentTimelineEntryProvider();
  (*(v16 + 16))(v19, a5, a10);
  v24 = sub_192084960(a1, a2, v26, a4, v19, v27, a7);
  a8[3] = v23;
  a8[4] = swift_getWitnessTable();
  a8[5] = &off_1F06B7910;
  *a8 = v24;
}

uint64_t sub_1920848B4(uint64_t a1)
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

char *sub_192084960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(v7 + 48);
  v16 = *(v7 + 52);
  v17 = swift_allocObject();
  v18 = *v17;
  *(v17 + 2) = a1;
  *(v17 + 3) = a2;
  *(v17 + 4) = a3;
  *(v17 + 5) = a4;
  (*(*(*(v18 + 80) - 8) + 32))(&v17[*(v18 + 120)], a5);
  v19 = &v17[*(*v17 + 128)];
  *v19 = a6;
  *(v19 + 1) = a7;
  return v17;
}

uint64_t sub_192084A48(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t TimelineProviderContext.EnvironmentVariants.init(_:)@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  v5 = v3;
  v6 = sub_192067344(KeyPath);

  if (v6)
  {
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    v21 = MEMORY[0x1E69E7CC0];
    v10 = *(v6 + 16);
    v11 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v10 == v8)
      {

        v20 = v9;
        v21 = v9;
        v19 = v9;
        sub_192084C98(v11, &v21, &v20, &v19);

        v15 = v20;
        v16 = v21;
        v17 = v19;
        goto LABEL_11;
      }

      if (v8 >= *(v6 + 16))
      {
        break;
      }

      v12 = v6 + 8 * v8++;
      if (*(v12 + 32))
      {
        v13 = *(v12 + 32);

        MEMORY[0x193B0AB00](v14);
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v18 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_192227BB0();
        }

        result = sub_192227C00();
        v11 = v21;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
LABEL_11:
    *a2 = v5;
    a2[1] = v16;
    a2[2] = v15;
    a2[3] = v17;
  }

  return result;
}

uint64_t sub_192084C1C@<X0>(void *a1@<X8>)
{
  sub_192056FC0();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_192084C6C(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues._localizations.setter(v2);
}

unint64_t sub_192084C98(unint64_t result, void **a2, void **a3, size_t *a4)
{
  v6 = result;
  if (result >> 62)
  {
    goto LABEL_14;
  }

  v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
    do
    {
      v8 = 0;
      while ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x193B0B410](v8, v6);
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v13 = v9;
        sub_192084DB0(&v13, a2, a3, a4);

        if (!v4)
        {
          ++v8;
          if (v10 != v7)
          {
            continue;
          }
        }

        return result;
      }

      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v9 = *(v6 + 8 * v8 + 32);

      v10 = v8 + 1;
      if (!__OFADD__(v8, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_192228340();
      v7 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_192084DB0(uint64_t *a1, void **a2, void **a3, size_t *a4)
{
  v67 = a4;
  v62 = a3;
  v64 = sub_192225C60();
  v66 = *(v64 - 8);
  v6 = *(v66 + 64);
  v7 = MEMORY[0x1EEE9AC00](v64);
  v63 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v58 - v9;
  v60 = sub_1922252C0();
  v58 = *(v60 - 8);
  v10 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF9C0, &qword_19222F1A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v58 - v14;
  v16 = sub_1922252A0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v58 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v58 - v25;
  v27 = *a1;
  v28 = *(v27 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_availableLocalizations);
  v29 = sub_192227B60();
  v30 = *(v27 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_supportsMixedLocalizations);
  v61 = v29;
  LikeCurrentWithBundleLocalizations = _CFLocaleCreateLikeCurrentWithBundleLocalizations();
  if (LikeCurrentWithBundleLocalizations)
  {
    v32 = LikeCurrentWithBundleLocalizations;
    sub_192225210();

    v33 = *(v17 + 32);
    v33(v15, v24, v16);
    (*(v17 + 56))(v15, 0, 1, v16);
    v33(v26, v15, v16);
  }

  else
  {
    (*(v17 + 56))(v15, 1, 1, v16);
    sub_192225240();
    if ((*(v17 + 48))(v15, 1, v16) != 1)
    {
      sub_192033970(v15, &qword_1EADEF9C0, &qword_19222F1A0);
    }
  }

  (*(v17 + 16))(v21, v26, v16);
  v34 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v34;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v34 = sub_192085418(0, v34[2] + 1, 1, v34);
    *a2 = v34;
  }

  v37 = v34[2];
  v36 = v34[3];
  if (v37 >= v36 >> 1)
  {
    v34 = sub_192085418(v36 > 1, v37 + 1, 1, v34);
    *a2 = v34;
  }

  v34[2] = v37 + 1;
  (*(v17 + 32))(v34 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v37, v21, v16);
  v38 = v59;
  sub_192225290();
  v39 = v62;
  v40 = *v62;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  *v39 = v40;
  if ((v41 & 1) == 0)
  {
    v40 = sub_192085440(0, v40[2] + 1, 1, v40);
    *v39 = v40;
  }

  v43 = v40[2];
  v42 = v40[3];
  if (v43 >= v42 >> 1)
  {
    v40 = sub_192085440(v42 > 1, v43 + 1, 1, v40);
    *v39 = v40;
  }

  v40[2] = v43 + 1;
  (*(v58 + 32))(v40 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v43, v38, v60);
  sub_1922251E0();
  v44 = sub_1922251F0();

  v45 = v66;
  v46 = MEMORY[0x1E697E7D8];
  if (v44 != 2)
  {
    v46 = MEMORY[0x1E697E7D0];
  }

  v47 = v63;
  v48 = v64;
  (*(v66 + 104))(v63, *v46, v64);
  v49 = *(v45 + 32);
  v49(v65, v47, v48);
  v50 = v67;
  v51 = *v67;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  *v50 = v51;
  if ((v52 & 1) == 0)
  {
    v51 = sub_192085468(0, v51[2] + 1, 1, v51);
    *v67 = v51;
  }

  v54 = v51[2];
  v53 = v51[3];
  if (v54 >= v53 >> 1)
  {
    v57 = sub_192085468(v53 > 1, v54 + 1, 1, v51);
    *v67 = v57;
  }

  (*(v17 + 8))(v26, v16);
  v55 = *v67;
  *(v55 + 16) = v54 + 1;
  return (v49)(v55 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v54, v65, v48);
}

uint64_t sub_192085490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_192225A40();
  v59 = *(v10 - 8);
  v11 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1922282D0();
  KeyPath = swift_getKeyPath();
  v15 = MEMORY[0x193B0B270](a1, KeyPath);

  if (v15)
  {
    if (a3)
    {
      v16 = *(a3 + 16);
      goto LABEL_10;
    }

    return 0;
  }

  v17 = swift_getKeyPath();
  v18 = MEMORY[0x193B0B270](a1, v17);

  if (v18)
  {
    if (!a4)
    {
      return 0;
    }

    v16 = *(a4 + 16);
LABEL_10:
    v61[0] = MEMORY[0x1E69E7CC0];
    sub_192085D4C(0, v16, 0);
    v21 = v61[0];
    if (!v16)
    {
      return v21;
    }

LABEL_11:

    return 0;
  }

  v19 = swift_getKeyPath();
  v20 = MEMORY[0x193B0B270](a1, v19);

  if (v20)
  {
    if (!a5)
    {
      return 0;
    }

    v16 = *(a5 + 16);
    goto LABEL_10;
  }

  v23 = swift_getKeyPath();
  v24 = MEMORY[0x193B0B270](a1, v23);

  if (v24)
  {
    v10 = swift_getKeyPath();
    v25 = sub_19206FF50(v10);

    if (!v25)
    {
      return 0;
    }

    if (v25 >> 62)
    {
      goto LABEL_51;
    }

    v13 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
LABEL_52:

      return MEMORY[0x1E69E7CC0];
    }

    while (1)
    {
      v61[0] = MEMORY[0x1E69E7CC0];
      v26 = v61;
      sub_192085D4C(0, v13 & ~(v13 >> 63), 0);
      if ((v13 & 0x8000000000000000) == 0)
      {
        v27 = 0;
        v21 = v61[0];
        do
        {
          if ((v25 & 0xC000000000000001) != 0)
          {
            v28 = MEMORY[0x193B0B410](v27, v25);
          }

          else
          {
            v28 = *(v25 + 8 * v27 + 32);
          }

          v29 = v28;
          [v28 scale];
          v31 = v30;

          v61[0] = v21;
          v33 = *(v21 + 16);
          v32 = *(v21 + 24);
          if (v33 >= v32 >> 1)
          {
            sub_192085D4C((v32 > 1), v33 + 1, 1);
            v21 = v61[0];
          }

          ++v27;
          *(v21 + 16) = v33 + 1;
          *(v21 + 8 * v33 + 32) = v31;
        }

        while (v13 != v27);

        return v21;
      }

      __break(1u);
LABEL_54:
      v37 = v26;
      v38 = sub_192228340();
LABEL_31:
      v39 = MEMORY[0x1E69E7CC0];
      if (!v38)
      {
        break;
      }

      v53 = a2;
      v62 = MEMORY[0x1E69E7CC0];
      v40 = sub_19209AC60(0, v38 & ~(v38 >> 63), 0);
      if (v38 < 0)
      {
        __break(1u);
LABEL_56:
        v61[0] = 0;
        v61[1] = 0xE000000000000000;
        v51 = v40;
        sub_192228400();
        MEMORY[0x193B0A990](0xD000000000000025, 0x800000019224F0C0);
        v60 = v51;
        type metadata accessor for CHSDisplayGamut(0);
        sub_1922285A0();
        result = sub_192228620();
        __break(1u);
        return result;
      }

      v41 = 0;
      v42 = v62;
      v43 = v37;
      v58 = v37 & 0xC000000000000001;
      v54 = *MEMORY[0x1E697DE20];
      v25 = v59 + 104;
      v56 = *MEMORY[0x1E697DE28];
      v55 = v59 + 32;
      v57 = v43;
      a2 = v38;
      while (1)
      {
        v44 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          break;
        }

        if (v58)
        {
          v45 = MEMORY[0x193B0B410](v41);
        }

        else
        {
          if (v41 >= *(v53 + 16))
          {
            goto LABEL_50;
          }

          v45 = *(v43 + 8 * v41 + 32);
        }

        v46 = v45;
        v40 = [v45 colorGamut];
        v47 = v56;
        if (v40)
        {
          v47 = v54;
          if (v40 != 1)
          {
            goto LABEL_56;
          }
        }

        (*v25)(v13, v47, v10);
        v62 = v42;
        v49 = *(v42 + 16);
        v48 = *(v42 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_19209AC60(v48 > 1, v49 + 1, 1);
          v42 = v62;
        }

        *(v42 + 16) = v49 + 1;
        (*(v59 + 32))(v42 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v49, v13, v10);
        ++v41;
        v43 = v57;
        if (v44 == a2)
        {

          v39 = MEMORY[0x1E69E7CC0];
          goto LABEL_47;
        }
      }

      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      v13 = sub_192228340();
      if (!v13)
      {
        goto LABEL_52;
      }
    }

    v42 = MEMORY[0x1E69E7CC0];
LABEL_47:
    v50 = *(v42 + 16);
    v61[0] = v39;
    sub_192085D4C(0, v50, 0);
    v21 = v61[0];

    if (!v50)
    {
      return v21;
    }

    goto LABEL_11;
  }

  v34 = swift_getKeyPath();
  v35 = MEMORY[0x193B0B270](a1, v34);

  if (v35)
  {
    v36 = swift_getKeyPath();
    v26 = sub_19206FF50(v36);

    if (v26)
    {
      a2 = v26 & 0xFFFFFFFFFFFFFF8;
      if (v26 >> 62)
      {
        goto LABEL_54;
      }

      v37 = v26;
      v38 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_31;
    }

    return 0;
  }

  return sub_192066554(a1);
}

uint64_t sub_192085AB8@<X0>(void *a1@<X8>)
{
  result = sub_192225EA0();
  *a1 = v3;
  return result;
}

char *sub_192085C48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEB90, &unk_19222AF70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_192085D4C(char *a1, int64_t a2, char a3)
{
  result = sub_192085C48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_192085D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_192225A40();
  v62 = *(v10 - 8);
  v11 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1922282D0();
  KeyPath = swift_getKeyPath();
  v15 = MEMORY[0x193B0B270](a1, KeyPath);

  if (v15)
  {
    if (a3)
    {

      return sub_1921AF080(a3);
    }

    return 0;
  }

  v17 = swift_getKeyPath();
  v18 = MEMORY[0x193B0B270](a1, v17);

  if (v18)
  {
    if (!a4)
    {
      return 0;
    }

    return sub_1921AF098(a4);
  }

  else
  {
    v19 = swift_getKeyPath();
    v20 = MEMORY[0x193B0B270](a1, v19);

    if (v20)
    {
      if (a5)
      {
        v64[0] = MEMORY[0x1E69E7CC0];
        v21 = *(a5 + 16);
        sub_192228520();
        result = v64[0];
        if (!v21)
        {
          return result;
        }

LABEL_14:
      }

      return 0;
    }

    v22 = swift_getKeyPath();
    v23 = MEMORY[0x193B0B270](a1, v22);

    if ((v23 & 1) == 0)
    {
      v35 = swift_getKeyPath();
      v36 = MEMORY[0x193B0B270](a1, v35);

      if ((v36 & 1) == 0)
      {
        return sub_192066C3C(a1);
      }

      v37 = swift_getKeyPath();
      v26 = sub_19206FF50(v37);

      if (v26)
      {
        a2 = v26 & 0xFFFFFFFFFFFFFF8;
        if (v26 >> 62)
        {
          goto LABEL_59;
        }

        v38 = v26;
        v39 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_32;
      }

      return 0;
    }

    v24 = swift_getKeyPath();
    v10 = sub_19206FF50(v24);

    if (!v10)
    {
      return 0;
    }

    if (v10 >> 62)
    {
      goto LABEL_55;
    }

    v25 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      while (1)
      {
        v64[0] = MEMORY[0x1E69E7CC0];
        v26 = v64;
        sub_192085D4C(0, v25 & ~(v25 >> 63), 0);
        if ((v25 & 0x8000000000000000) == 0)
        {
          v27 = 0;
          v28 = v64[0];
          do
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v29 = MEMORY[0x193B0B410](v27, v10);
            }

            else
            {
              v29 = *(v10 + 8 * v27 + 32);
            }

            v30 = v29;
            [v29 scale];
            v32 = v31;

            v64[0] = v28;
            v34 = *(v28 + 16);
            v33 = *(v28 + 24);
            if (v34 >= v33 >> 1)
            {
              sub_192085D4C((v33 > 1), v34 + 1, 1);
              v28 = v64[0];
            }

            ++v27;
            *(v28 + 16) = v34 + 1;
            *(v28 + 8 * v34 + 32) = v32;
          }

          while (v25 != v27);

          goto LABEL_57;
        }

        __break(1u);
LABEL_59:
        v38 = v26;
        v39 = sub_192228340();
LABEL_32:
        v40 = MEMORY[0x1E69E7CC0];
        if (!v39)
        {
          break;
        }

        v56 = a2;
        v65 = MEMORY[0x1E69E7CC0];
        v41 = sub_19209AC60(0, v39 & ~(v39 >> 63), 0);
        if (v39 < 0)
        {
          __break(1u);
LABEL_61:
          v64[0] = 0;
          v64[1] = 0xE000000000000000;
          v54 = v41;
          sub_192228400();
          MEMORY[0x193B0A990](0xD000000000000025, 0x800000019224F0C0);
          v63 = v54;
          type metadata accessor for CHSDisplayGamut(0);
          sub_1922285A0();
          result = sub_192228620();
          __break(1u);
          return result;
        }

        v42 = 0;
        v43 = v65;
        v44 = v38;
        v61 = v38 & 0xC000000000000001;
        v57 = *MEMORY[0x1E697DE20];
        v45 = (v62 + 104);
        v59 = *MEMORY[0x1E697DE28];
        v58 = v62 + 32;
        v60 = v44;
        a2 = v39;
        while (1)
        {
          v46 = v42 + 1;
          if (__OFADD__(v42, 1))
          {
            break;
          }

          if (v61)
          {
            v47 = MEMORY[0x193B0B410](v42);
          }

          else
          {
            if (v42 >= *(v56 + 16))
            {
              goto LABEL_54;
            }

            v47 = *(v44 + 8 * v42 + 32);
          }

          v48 = v47;
          v41 = [v47 colorGamut];
          v49 = v59;
          if (v41)
          {
            v49 = v57;
            if (v41 != 1)
            {
              goto LABEL_61;
            }
          }

          (*v45)(v13, v49, v10);
          v65 = v43;
          v51 = *(v43 + 16);
          v50 = *(v43 + 24);
          if (v51 >= v50 >> 1)
          {
            sub_19209AC60(v50 > 1, v51 + 1, 1);
            v43 = v65;
          }

          *(v43 + 16) = v51 + 1;
          (*(v62 + 32))(v43 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v51, v13, v10);
          ++v42;
          v44 = v60;
          if (v46 == a2)
          {

            v40 = MEMORY[0x1E69E7CC0];
            goto LABEL_50;
          }
        }

        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        v25 = sub_192228340();
        if (!v25)
        {
          goto LABEL_56;
        }
      }

      v43 = MEMORY[0x1E69E7CC0];
LABEL_50:
      v64[0] = v40;
      v52 = *(v43 + 16);
      sub_192228520();
      if (v52)
      {

        goto LABEL_14;
      }

      return v64[0];
    }

    else
    {
LABEL_56:

      v28 = MEMORY[0x1E69E7CC0];
LABEL_57:
      v53 = sub_1921AF240(v28);

      return v53;
    }
  }
}

uint64_t type metadata accessor for WidgetViewCollection()
{
  result = qword_1ED74B728;
  if (!qword_1ED74B728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19208646C()
{
  v0 = type metadata accessor for BundleStub();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_192086610(319, &qword_1ED74B858, MEMORY[0x1E6969530]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_192086610(319, &qword_1ED74B7E0, MEMORY[0x1E6968130]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        v6 = sub_192225150();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_192086610(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_192228240();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_192086670(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void (*)(uint64_t a1), uint64_t), uint64_t a5)
{
  v22 = a5;
  v23 = a4;
  v21 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE70, &qword_19222B7C0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - v10;
  v12 = sub_1922258B0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a3, v12);
  (*(v8 + 16))(v11, a1, v7);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = (v14 + *(v8 + 80) + v16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v21;
  (*(v13 + 32))(v18 + v16, v15, v12);
  (*(v8 + 32))(v18 + v17, v11, v7);

  v23(sub_1920B34E4, v18);
}

uint64_t sub_1920868AC()
{
  v1 = sub_1922258B0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE70, &qword_19222B7C0);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_192086A18(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1922277F0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_19202A7A8(0, &qword_1ED74C690, 0x1E69E9610);
  *v16 = sub_192228080();
  (*(v13 + 104))(v16, *MEMORY[0x1E69E8020], v12);
  v17 = sub_192227810();
  result = (*(v13 + 8))(v16, v12);
  if (v17)
  {
    v19 = a4[3];
    v20 = a4[4];
    __swift_project_boxed_opaque_existential_1(a4, v19);
    if (a3)
    {
      return (*(v20 + 32))(a5, a6, a1, a2, v19, v20);
    }

    else
    {
      return (*(v20 + 40))(a5, a6, a1, a2, v19, v20);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_192086BF4(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v9 = *v4;
  v10 = [a1 intentReference];
  if (v10)
  {
    v11 = v10;
    v20 = [v10 _typedIntent];

    if (v20)
    {
      v12 = *(v9 + 96);
      v13 = *(v9 + 80);
      swift_getAssociatedTypeWitness();
      v14 = swift_dynamicCastUnknownClass();
      if (v14)
      {
        sub_192086E5C(a1, v4 + *(*v4 + 120), a2, v14, a3, a4);

        return;
      }
    }
  }

  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v15 = sub_1922258B0();
  __swift_project_value_buffer(v15, qword_1ED74CCC8);
  v16 = sub_192225890();
  v17 = sub_192227F90();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v21 = v19;
    *v18 = 136446210;
    *(v18 + 4) = sub_19202B8CC(0xD00000000000001ELL, 0x800000019224E950, &v21);
    _os_log_impl(&dword_192028000, v16, v17, "No intent in %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x193B0C7F0](v19, -1, -1);
    MEMORY[0x193B0C7F0](v18, -1, -1);
  }

  a3(0);
}

uint64_t sub_192086E5C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v39 = a5;
  v40 = a6;
  v37 = a4;
  v38 = a1;
  v36 = *v6;
  v9 = type metadata accessor for TimelineProviderContext();
  v33 = *(v9 - 8);
  v10 = *(v33 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v32 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v36 + 80);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v31 - v15;
  (*(v13 + 16))(&v31 - v15, a2, v12);
  sub_192055544(a3, &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimelineProviderContext);
  v17 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v18 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (*(v33 + 80) + v18 + 8) & ~*(v33 + 80);
  v33 = (v10 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = v12;
  v22 = v35;
  *(v21 + 24) = *(v36 + 88);
  v23 = v34;
  *(v21 + 40) = *(v22 + 104);
  (*(v13 + 32))(v21 + v17, v16, v12);
  v24 = v37;
  *(v21 + v18) = v37;
  sub_1920E07FC(v32, v21 + v19, type metadata accessor for TimelineProviderContext);
  *(v21 + v33) = v23;
  v25 = (v21 + v20);
  v26 = v40;
  *v25 = v39;
  v25[1] = v26;
  v27 = v38;
  *(v21 + ((v20 + 23) & 0xFFFFFFFFFFFFFFF8)) = v38;
  v28 = v24;

  v29 = v27;
  sub_1920873B4(sub_192087A5C, v21);
}

uint64_t sub_192087140()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (type metadata accessor for TimelineProviderContext() - 8);
  v6 = (v4 + *(*v5 + 80) + 8) & ~*(*v5 + 80);
  v7 = *(*v5 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  v8 = *(v0 + v6 + 8);

  v9 = *(v0 + v6 + 16);

  v10 = *(v0 + v6 + 24);

  v11 = *(v0 + v6 + 48);

  v12 = v5[12];
  v13 = sub_192224EA0();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v0 + v6 + v12, 1, v13))
  {
    (*(v14 + 8))(v0 + v6 + v12, v13);
  }

  v15 = (v7 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v0 + v15);

  v18 = *(v0 + v16 + 8);

  return swift_deallocObject();
}

uint64_t sub_192087350(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimelineProviderContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1920873B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_192227710();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_192227790();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ([objc_opt_self() isMainThread])
  {
    v14 = sub_192227CC0();
    MEMORY[0x1EEE9AC00](v14);
    *&v18[-16] = a1;
    *&v18[-8] = a2;
    return sub_1920876A0(sub_192087B7C, &v18[-32]);
  }

  else
  {
    sub_19218B088();
    v16 = sub_192228080();
    aBlock[4] = a1;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_19202AB80;
    aBlock[3] = &block_descriptor_3;
    v17 = _Block_copy(aBlock);

    sub_192227740();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_19218B0D4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
    sub_19218B12C();
    sub_1922282F0();
    MEMORY[0x193B0B040](0, v13, v8, v17);
    _Block_release(v17);

    (*(v5 + 8))(v8, v4);
    return (*(v10 + 8))(v13, v9);
  }
}

uint64_t sub_1920876A0(uint64_t a1, uint64_t a2)
{
  sub_192227CB0();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_192087838();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_192228400();
    MEMORY[0x193B0A990](0xD00000000000003FLL, 0x800000019224CC20);
    v8 = sub_192228BD0();
    MEMORY[0x193B0A990](v8);

    MEMORY[0x193B0A990](46, 0xE100000000000000);
    result = sub_192228620();
    __break(1u);
  }

  return result;
}

uint64_t sub_192087838()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_192087860(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v24 = a5;
  v25 = a2;
  v26 = a1;
  v11 = *a4;
  v12 = type metadata accessor for TimelineProviderContext();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_192055544(a3, v15, type metadata accessor for TimelineProviderContext);
  v16 = (*(v13 + 80) + 80) & ~*(v13 + 80);
  v17 = swift_allocObject();
  v18 = v11[10];
  v17[2] = v18;
  v17[3] = v11[11];
  v19 = v11[12];
  v17[4] = v19;
  v17[5] = v11[13];
  v17[6] = a4;
  v17[7] = v24;
  v17[8] = a6;
  v17[9] = a7;
  sub_1920E07FC(v15, v17 + v16, type metadata accessor for TimelineProviderContext);
  v20 = *(v19 + 56);

  v21 = a7;
  v20(v25, a3, sub_1921F57C0, v17, v18, v19);
}

uint64_t sub_192087A5C()
{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 48) & ~*(*(*(v0 + 16) - 8) + 80);
  v2 = (*(*(*(v0 + 16) - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(type metadata accessor for TimelineProviderContext() - 8);
  v4 = (v2 + *(v3 + 80) + 8) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v2);
  v8 = *(v0 + v5);
  v9 = *(v0 + v6);
  v10 = *(v0 + v6 + 8);
  v11 = *(v0 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_192087860(v0 + v1, v7, v0 + v4, v8, v9, v10, v11);
}

uint64_t sub_192087B7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t type metadata accessor for TimelineProviderContext()
{
  result = qword_1ED749D40;
  if (!qword_1ED749D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_192087C34(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_192227C40();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for TimelineReloadPolicy();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t MetadataGraphicView.init(_:alwaysTemplate:allowsCustomColors:colors:resizable:tint:symbolRenderingMode:allowSymbolEffects:contentTransition:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t *a9@<X8>, uint64_t a10)
{
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0330, &qword_192233780);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for MetadataGraphicView();
  v17 = v16[5];
  v18 = sub_192226B70();
  v19 = *(v18 - 8);
  (*(v19 + 16))(a9 + v17, a1, v18);
  *(a9 + v16[6]) = a2;
  if (a3)
  {
    if (!a6)
    {
LABEL_7:
      (*(v19 + 8))(a1, v18);
      goto LABEL_8;
    }
  }

  else if (!a6)
  {
    if (!a4)
    {
      (*(v19 + 8))(a1, v18);
      v21 = 0;
      a4 = 1;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF18A0, &qword_19223D9E8);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_19222B480;
  *(v20 + 32) = a6;
  (*(v19 + 8))(a1, v18);

  a4 = v20;
LABEL_8:
  v21 = a3 & 1;
LABEL_9:
  v22 = a9 + v16[7];
  *v22 = a4;
  v22[8] = v21;
  *(a9 + v16[8]) = a5 & 1;
  sub_19204E300(a7, a9 + v16[9], &qword_1EADF1890, &qword_19223D9D8);
  *(a9 + v16[10]) = a8 & 1;
  return sub_19204E300(a10, a9 + v16[11], &qword_1EADF1898, &qword_19223D9E0);
}

uint64_t type metadata accessor for MetadataGraphicView()
{
  result = qword_1EADED8A0;
  if (!qword_1EADED8A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9WidgetKit19MetadataGraphicViewV9ColorMode33_ACECC3C870493B19C8AB49227EB3D114LLO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_192087F60(uint64_t result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    v2 = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2;
  }

  *result = v2;
  return result;
}

void *sub_192087F8C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_192087FF0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_192088068(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_192088088()
{
  MEMORY[0x193B0C8D0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1920880C4()
{
  v1 = (type metadata accessor for ActivityArchiver(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = (v0 + v2 + 8);

  __swift_destroy_boxed_opaque_existential_1(v5);
  v6 = v1[8];
  v7 = sub_192225830();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);
  v8 = v1[9];
  v9 = sub_192225800();
  (*(*(v9 - 8) + 8))(v4 + v8, v9);
  v10 = *(v0 + v3 + 8);

  return swift_deallocObject();
}

uint64_t sub_192088210()
{
  v1 = sub_1922258B0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 49) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_192225800();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  v10 = *(v0 + v4 + 8);

  (*(v6 + 8))(v0 + v7, v5);
  v11 = *(v0 + v8 + 8);

  return swift_deallocObject();
}

uint64_t sub_1920883BC()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_19208840C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_192088444()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1920884A8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1920884E8()
{
  v1 = sub_192225800();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 2);

  v6 = *(v0 + 3);

  v7 = *(v0 + 5);

  (*(v2 + 8))(&v0[v3], v1);
  v8 = *&v0[v4 + 8];

  return swift_deallocObject();
}

uint64_t sub_1920885D4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_19208861C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_1920886B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for JindoViewStates.Metadata(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = sub_1922266C0();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1920887A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for JindoViewStates.Metadata(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = sub_1922266C0();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_1920888AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF1B0, qword_19222C1D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for ActivityMetricsDefinition();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1920889DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF1B0, qword_19222C1D0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for ActivityMetricsDefinition();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_192088C00@<X0>(_BYTE *a1@<X8>)
{
  sub_1920C86F0();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_192088C50(char *a1)
{
  v2 = *a1;
  sub_1920C86F0();
  return sub_1922261F0();
}

uint64_t sub_192088CDC@<X0>(uint64_t *a1@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  result = WidgetEnvironment.subscript.getter(*a2);
  *a3 = result;
  return result;
}

uint64_t sub_192088D48()
{
  if (*(v0 + 24) != 1)
  {

    v1 = *(v0 + 40);
  }

  return swift_deallocObject();
}

uint64_t sub_192088D98(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_192088ED4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_192089010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1920890D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_192089188()
{
  v1 = v0[7];

  v2 = v0[9];

  v3 = v0[11];

  return swift_deallocObject();
}

uint64_t sub_1920891D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_192089208()
{
  v1 = *(v0 + 4);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 88) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 8);

  v6 = *(v0 + 10);

  (*(v2 + 8))(&v0[v3], v1);
  v7 = *&v0[v4 + 8];

  return swift_deallocObject();
}

uint64_t sub_1920892E8()
{
  v1 = *(v0 + 48);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (type metadata accessor for TimelineProviderContext() - 8);
  v7 = (v5 + *(*v6 + 80) + 8) & ~*(*v6 + 80);
  v19 = *(*v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v9 = *(v0 + v4);

  v10 = *(v0 + v7 + 8);

  v11 = *(v0 + v7 + 16);

  v12 = *(v0 + v7 + 24);

  v13 = *(v0 + v7 + 48);

  v14 = v6[12];
  v15 = sub_192224EA0();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v0 + v7 + v14, 1, v15))
  {
    (*(v16 + 8))(v0 + v7 + v14, v15);
  }

  v17 = *(v0 + ((v19 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_192089500()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EADEF938, &qword_19222F0B8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_192089594()
{
  v1 = *(v0 + 48);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (type metadata accessor for TimelineProviderContext() - 8);
  v7 = (v5 + *(*v6 + 80) + 8) & ~*(*v6 + 80);
  v19 = *(*v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v9 = *(v0 + v4);

  v10 = *(v0 + v7 + 8);

  v11 = *(v0 + v7 + 16);

  v12 = *(v0 + v7 + 24);

  v13 = *(v0 + v7 + 48);

  v14 = v6[12];
  v15 = sub_192224EA0();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v0 + v7 + v14, 1, v15))
  {
    (*(v16 + 8))(v0 + v7 + v14, v15);
  }

  v17 = *(v0 + ((v19 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1920897AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1920897E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = (type metadata accessor for Timeline() - 8);
  v4 = (*(*v3 + 80) + 48) & ~*(*v3 + 80);
  v5 = (*(*v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = type metadata accessor for TimelineProviderContext();
  v25 = *(*(v8 - 8) + 64);
  v24 = (*(*(v8 - 8) + 80) + v7 + 8) & ~*(*(v8 - 8) + 80);
  v9 = v0 + v4;
  v10 = *(v0 + v4);

  v11 = v3[11];
  v12 = sub_192225150();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v9 + v11, 1, v12))
  {
    (*(v13 + 8))(v9 + v11, v12);
  }

  v14 = *(v0 + v5);

  v15 = *(v0 + v6 + 8);

  v16 = *(v0 + v24 + 8);

  v17 = *(v0 + v24 + 16);

  v18 = *(v0 + v24 + 24);

  v19 = *(v0 + v24 + 48);

  v20 = *(v8 + 40);
  v21 = sub_192224EA0();
  v22 = *(v21 - 8);
  if (!(*(v22 + 48))(v0 + v24 + v20, 1, v21))
  {
    (*(v22 + 8))(v0 + v24 + v20, v21);
  }

  return swift_deallocObject();
}

uint64_t sub_192089AC4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (type metadata accessor for TimelineProviderContext() - 8);
  v10 = (*(*v9 + 80) + v8 + 8) & ~*(*v9 + 80);
  v21 = *(*v9 + 64);
  (*(v4 + 8))(v0 + v5, AssociatedTypeWitness);
  v11 = *(v0 + v6);

  v12 = *(v0 + v7 + 8);

  v13 = *(v0 + v10 + 8);

  v14 = *(v0 + v10 + 16);

  v15 = *(v0 + v10 + 24);

  v16 = *(v0 + v10 + 48);

  v17 = v9[12];
  v18 = sub_192224EA0();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v0 + v10 + v17, 1, v18))
  {
    (*(v19 + 8))(v0 + v10 + v17, v18);
  }

  return swift_deallocObject();
}

uint64_t sub_192089CF8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_192225150();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for BundleStub();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v13 = *(a1 + a3[7]);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = type metadata accessor for TimelineReloadPolicy();
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[11];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_192089E68(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_192225150();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  result = type metadata accessor for BundleStub();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v14 = type metadata accessor for TimelineReloadPolicy();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + a4[11];

    return v15(v16, a2, a2, v14);
  }

  return result;
}

uint64_t sub_192089FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_192225150();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_19208A0A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_192225150();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 24));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

uint64_t sub_19208A168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MetricsRequest();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA58, &unk_19222F820);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_19208A264(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for MetricsRequest();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA58, &unk_19222F820);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_19208A378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ControlTemplateButton.Option(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_19208A4B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ControlTemplateButton.Option(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_19208A5E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_19208A6AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19208A75C@<X0>(_BYTE *a1@<X8>)
{
  sub_192057834();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_19208A7AC(char *a1)
{
  v2 = *a1;
  sub_192057834();
  return sub_1922261F0();
}

uint64_t sub_19208A7FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_19208A850(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_192225C70();
  sub_1920F548C();
  return swift_getWitnessTable();
}

uint64_t sub_19208A8B4@<X0>(_BYTE *a1@<X8>)
{
  sub_1920F74DC();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_19208A904(char *a1)
{
  v2 = *a1;
  sub_1920F74DC();
  return sub_1922261F0();
}

uint64_t sub_19208A954(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_192225C70();
  sub_1920F72A8();
  return swift_getWitnessTable();
}

uint64_t sub_19208A9C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for CommonActivityArchivingModifiers();
  sub_192225C70();
  sub_1920F8D94(&qword_1EADED408, type metadata accessor for CommonActivityArchivingModifiers);
  return swift_getWitnessTable();
}

uint64_t sub_19208AA5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MetricsRequest();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_19208AB1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MetricsRequest();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_19208ABE8@<X0>(_BYTE *a1@<X8>)
{
  sub_1920F8CDC();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_19208AC38(char *a1)
{
  v2 = *a1;
  sub_1920F8CDC();
  return sub_1922261F0();
}

uint64_t sub_19208ACB4()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);
  v4 = *(v0 + v3 + 8);

  return swift_deallocObject();
}

uint64_t sub_19208AD5C()
{
  v7 = *(v0 + 16);
  v8 = *(v0 + 32);
  v1 = (type metadata accessor for RelevanceEntryProvider() - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  (*(*(v7 - 8) + 8))(v0 + v2);
  v5 = *(v4 + v1[15] + 8);

  return swift_deallocObject();
}

uint64_t sub_19208AE5C()
{
  v1 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_19208AEB4()
{
  v1 = sub_192226CC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_19208AF3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFED8, &qword_192231E50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19208AFC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_19208B090(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_19208B154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF250, &qword_19222C6C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_19208B210(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF250, &qword_19222C6C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19208B2C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetDescriptor(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_19208B334(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetDescriptor(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_19208B3A4@<X0>(void *a1@<X8>)
{
  sub_19206DB90();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_19208B3F4(uint64_t *a1)
{
  v2 = *a1;
  sub_19206DB90();
  return sub_1922261F0();
}

uint64_t sub_19208B44C()
{
  v1 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_19208B488@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EADF01D0;
  return result;
}

uint64_t sub_19208B4D4(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EADF01D0 = v1;
  return result;
}

uint64_t sub_19208B51C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1922253B0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_19208B5D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1922253B0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_19208B6A0()
{
  v1 = *(v0 + 88);

  return swift_deallocObject();
}

uint64_t sub_19208B700(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetDescriptor(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_19208B76C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetDescriptor(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_19208B83C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_19208B884()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_19208B8BC(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_1920C92D8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_19208B918()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_19208B958()
{
  v1 = *(*(v0 + 32) - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);
  v4 = *(v0 + v3 + 8);

  return swift_deallocObject();
}

uint64_t sub_19208B9F0()
{
  v1 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_19208BBB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192226160();
  *a1 = result & 1;
  return result;
}

uint64_t sub_19208BC10@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EADED1A0;
  return result;
}

uint64_t sub_19208BC5C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EADED1A0 = v1;
  return result;
}

uint64_t sub_19208BCC0()
{
  v1 = sub_192226310();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_19208BD48(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_192225C70();
  return swift_getWitnessTable();
}

uint64_t sub_19208BDAC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0470, &unk_192234400);
  sub_19211C75C(&qword_1EADEDE78);
  sub_192225B80();
  sub_192225C70();
  sub_19211C75C(&qword_1EADEDE70);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_19208BEB4()
{
  v1 = *(v0 + 5);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 112) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (type metadata accessor for TimelineProviderContext() - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  v7 = *(*v5 + 64);
  v8 = *(v0 + 2);
  swift_unknownObjectRelease();
  v9 = *(v0 + 9);

  v10 = *(v0 + 11);

  v11 = *(v0 + 13);

  (*(v2 + 8))(&v0[v3], v1);

  v12 = *&v0[v6 + 8];

  v13 = *&v0[v6 + 16];

  v14 = *&v0[v6 + 24];

  v15 = *&v0[v6 + 48];

  v16 = v5[12];
  v17 = sub_192224EA0();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(&v0[v6 + v16], 1, v17))
  {
    (*(v18 + 8))(&v0[v6 + v16], v17);
  }

  v19 = *&v0[((v7 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8];

  return swift_deallocObject();
}

uint64_t get_enum_tag_for_layout_string_ypSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_19208C0C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_19208C100()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0500, &qword_192234990);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_19208C1D8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_19208C228()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_19208C268()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_19208C2B0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[6];

  v4 = v0[8];

  return swift_deallocObject();
}

uint64_t sub_19208C300()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_19208C340()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_19208C3C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0550, &qword_192234AD0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_19208C470()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0550, &qword_192234AD0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 2);
  swift_unknownObjectRelease();
  v6 = *(v0 + 4);

  v7 = *(v0 + 5);

  (*(v2 + 8))(&v0[v3], v1);

  return swift_deallocObject();
}

uint64_t sub_19208C580()
{
  v1 = *(v0 + 24);

  sub_19212B414(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_19208C5E8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  type metadata accessor for AccessoryRectangularProgressViewStyle.ActionStyle.LabelStyle();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF06B8, &qword_192235228);
  sub_192225C70();
  swift_getTupleTypeMetadata3();
  sub_192227660();
  swift_getWitnessTable();
  sub_192227520();

  return swift_getWitnessTable();
}

uint64_t sub_19208C6C0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF06C8, &qword_192235230);
  sub_192031E74(&qword_1EADF06E0, &qword_1EADF06C8, &qword_192235230);
  sub_1921322BC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_19208C76C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for AccessoryRectangularProgressViewStyle.ActionStyle.LabelStyle() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = sub_192226C60();
  (*(*(v6 - 8) + 8))(v0 + v4, v6);

  return swift_deallocObject();
}

uint64_t sub_19208C8B0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for WidgetURLModifier(255);
  sub_192225C70();
  type metadata accessor for WidgetURLMetadataModifier(255);
  sub_192225C70();
  sub_19203F924(&qword_1ED74AE00, type metadata accessor for WidgetURLModifier);
  swift_getWitnessTable();
  sub_19203F924(&unk_1ED749C30, type metadata accessor for WidgetURLMetadataModifier);
  return swift_getWitnessTable();
}

uint64_t sub_19208C9C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for WidgetURLModifier(255);
  sub_192225C70();
  sub_19203F924(&qword_1ED74AE00, type metadata accessor for WidgetURLModifier);
  return swift_getWitnessTable();
}

uint64_t sub_19208CA68(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_192225C70();
  sub_19213415C();
  return swift_getWitnessTable();
}

uint64_t sub_19208CAEC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_192225830();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_192225800();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_19208CC10(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_192225830();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_192225800();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_19208CD3C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0908, &qword_192235BB0);
  sub_19213925C();
  sub_1921392E8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_19208CDB4@<X0>(_BYTE *a1@<X8>)
{
  sub_1920405C0();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_19208CE04(char *a1)
{
  v2 = *a1;
  sub_1920405C0();
  return sub_1922261F0();
}

uint64_t sub_19208CE50@<X0>(uint64_t a1@<X8>)
{
  sub_192041274();
  result = sub_1922261E0();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_19208CEA8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3[0] = *a1;
  v4 = v1;
  return EnvironmentValues._widgetRenderScheme.setter(v3);
}

uint64_t sub_19208CEE8@<X0>(void *a1@<X8>)
{
  sub_192101EC4();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_19208CF3C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_192225C70();
  sub_1920B3430();
  return swift_getWitnessTable();
}

uint64_t sub_19208D230()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4 + 8);

  return swift_deallocObject();
}

uint64_t sub_19208D338(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_19208D3B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_19208D464@<X0>(_BYTE *a1@<X8>)
{
  sub_192143E60();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_19208D4B4(char *a1)
{
  v2 = *a1;
  sub_192143E60();
  return sub_1922261F0();
}

uint64_t sub_19208D504(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_1920791AC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_19208D564()
{
  v1 = *(v0 + 80);

  return swift_deallocObject();
}

uint64_t sub_19208D604()
{
  v1 = *(v0 + 104);

  return swift_deallocObject();
}

uint64_t sub_19208D63C()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 104);
  }

  return swift_deallocObject();
}

uint64_t sub_19208D68C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_19208D6D4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_19208D718@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_19208D790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFD38, &qword_1922316A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_19208D844(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFD38, &qword_1922316A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

id sub_19208D900@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_jindoEnvironment;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_19208D96C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_192225360();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for ActivityMetricsDefinition();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_19208DA7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_192225360();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for ActivityMetricsDefinition();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_19208DB88@<X0>(void *a1@<X8>)
{
  sub_19204149C();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_19208DBE4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F78, &qword_192238598);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[8];
LABEL_9:
    v13 = *(v8 + 48);

    return v13(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F80, &qword_1922385A0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[9];
    goto LABEL_9;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F88, &qword_1922385A8);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[14];
    goto LABEL_9;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F90, &unk_1922385B0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v7 = v12;
    v8 = *(v12 - 8);
    v9 = a3[15];
    goto LABEL_9;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[19]);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = sub_192225300();
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[21];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_19208DE14(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F78, &qword_192238598);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_9:
    v15 = *(v10 + 56);

    return v15(a1 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F80, &qword_1922385A0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F88, &qword_1922385A8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[14];
    goto LABEL_9;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F90, &unk_1922385B0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[15];
    goto LABEL_9;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[19]) = (a2 - 1);
  }

  else
  {
    v16 = sub_192225300();
    v17 = *(*(v16 - 8) + 56);
    v18 = a1 + a4[21];

    return v17(v18, a2, a2, v16);
  }

  return result;
}

uint64_t sub_19208E048(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for _ClockHandRotationEffect(255);
  sub_192225C70();
  sub_1922266F0();
  sub_19203FFCC(&qword_1ED748730, type metadata accessor for _ClockHandRotationEffect);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_19208E12C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_19208E164()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_19208E1E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1922261A0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_19208E260@<X0>(_BYTE *a1@<X8>)
{
  sub_19215EDB0();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_19208E2B0(char *a1)
{
  v2 = *a1;
  sub_19215EDB0();
  return sub_1922261F0();
}

uint64_t sub_19208E2FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_192225360();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_19208E3C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_192225360();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_19208E488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BundleStub();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_192225150();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_19208E5AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BundleStub();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  else
  {
    v11 = sub_192225150();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_19208E6D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ControlArchiveStorageMetadata(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_19208E78C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ControlArchiveStorageMetadata(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_19208E854()
{
  v1 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_19208E89C()
{
  v1 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_19208E8D4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  v4 = v0[10];

  v5 = v0[12];

  if (v0[13])
  {
    v6 = v0[14];
  }

  v7 = v0[16];

  return swift_deallocObject();
}

uint64_t sub_19208E98C()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_19208E9C4()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 40);
  }

  return swift_deallocObject();
}

uint64_t sub_19208EA34()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_19208EA6C()
{
  v1 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_19208EAD8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EADF1240;
  return result;
}

uint64_t sub_19208EB24(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EADF1240 = v1;
  return result;
}

uint64_t sub_19208EBB8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EADF1248;
  return result;
}

uint64_t sub_19208EC04(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EADF1248 = v1;
  return result;
}

uint64_t sub_19208EC4C@<X0>(_BYTE *a1@<X8>)
{
  sub_19203F23C();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_19208EC9C(char *a1)
{
  v2 = *a1;
  sub_19203F23C();
  return sub_1922261F0();
}

uint64_t sub_19208ECE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MetricsRequest();
  v7 = *(*(v6 - 8) + 48);
  v8 = a1 + *(a3 + 20);

  return v7(v8, a2, v6);
}

uint64_t sub_19208ED64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for MetricsRequest();
  v8 = *(*(v7 - 8) + 56);
  v9 = a1 + *(a4 + 20);

  return v8(v9, a2, a2, v7);
}

double sub_19208EE0C@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_19208EE18()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_19208EE50@<X0>(_BYTE *a1@<X8>)
{
  sub_19216F7A4();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_19208EEA0(char *a1)
{
  v2 = *a1;
  sub_19216F7A4();
  return sub_1922261F0();
}

uint64_t sub_19208EEEC@<X0>(void *a1@<X8>)
{
  sub_1921704A4();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_19208EF40(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_1920791AC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_19208EFB4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_computedSelectableRegions;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_19208F044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_192225150();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_19208F100(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_192225150();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_19208F1D8()
{

  return swift_deallocObject();
}

uint64_t sub_19208F218()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_19208F260(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1458, &qword_19223B6E8);
  sub_192225C70();
  sub_192031E74(&qword_1EADF1460, &qword_1EADF1458, &qword_19223B6E8);
  return swift_getWitnessTable();
}

uint64_t sub_19208F310@<X0>(_BYTE *a1@<X8>)
{
  sub_19205337C();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_19208F360(char *a1)
{
  v2 = *a1;
  sub_19205337C();
  return sub_1922261F0();
}

uint64_t sub_19208F3B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF14E8, &qword_19223BCD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19208F424@<X0>(uint64_t a1@<X8>)
{
  result = sub_192226140();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_19208F458(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_192226150();
}

uint64_t sub_19208F4B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1528, &qword_19223BDC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19208F518@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1922260C0();
  *a1 = result;
  return result;
}

uint64_t sub_19208F544(uint64_t *a1)
{
  v1 = *a1;

  return sub_1922260D0();
}

uint64_t sub_19208F5B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_19208F670(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19208F720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ActivityMetricsDefinition();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF250, &qword_19222C6C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_19208F850(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for ActivityMetricsDefinition();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF250, &qword_19222C6C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_19208F994()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[9];

  v3 = v0[11];

  v4 = v0[13];

  v5 = v0[15];

  v6 = v0[17];

  return swift_deallocObject();
}

uint64_t sub_19208F9F4()
{
  v1 = *(v0 + 48);
  v2 = (type metadata accessor for TimelineProviderContext() - 8);
  v23 = *(*v2 + 64);
  v3 = (*(*v2 + 80) + 152) & ~*(*v2 + 80);
  v4 = *(v1 - 8);
  v5 = *(v4 + 80);
  v22 = *(v4 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 88);

  v8 = *(v0 + 104);

  v9 = *(v0 + 120);

  v10 = *(v0 + 136);

  v11 = *(v0 + v3 + 8);

  v12 = *(v0 + v3 + 16);

  v13 = *(v0 + v3 + 24);

  v14 = *(v0 + v3 + 48);

  v15 = v2[12];
  v16 = sub_192224EA0();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v0 + v3 + v15, 1, v16))
  {
    (*(v17 + 8))(v0 + v3 + v15, v16);
  }

  v18 = (v3 + v23 + v5) & ~v5;
  v19 = (v22 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v0 + v18, v1);
  v20 = *(v0 + v19 + 8);

  return swift_deallocObject();
}

uint64_t sub_19208FC1C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EADF17F0;
  return result;
}

uint64_t sub_19208FC68(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EADF17F0 = v1;
  return result;
}

uint64_t sub_19208FCB8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1922266F0();
  sub_1922266F0();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_19208FE88(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ActivityMetricsDefinition();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_19208FF34(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ActivityMetricsDefinition();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19208FFD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
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

uint64_t sub_1920900A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
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

uint64_t sub_192090164(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_192226BC0();
  sub_192225C70();
  sub_1921936F0();
  return swift_getWitnessTable();
}

uint64_t sub_192090214(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0328, &unk_192233690);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_192226B70();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 2147483645)
  {
    v15 = *(a1 + a3[7]);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    v16 = v15 - 1;
    v17 = v16 <= 0;
    if (v16 < 0)
    {
      v16 = -1;
    }

    if (v17)
    {
      return 0;
    }

    else
    {
      return v16;
    }
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1890, &qword_19223D9D8);
    if (*(*(v18 - 8) + 84) == a2)
    {
      v8 = v18;
      v12 = *(v18 - 8);
      v13 = a3[9];
      goto LABEL_5;
    }

    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1898, &qword_19223D9E0);
    v20 = *(*(v19 - 8) + 48);
    v21 = a1 + a3[11];

    return v20(v21, a2, v19);
  }
}

uint64_t sub_192090404(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0328, &unk_192233690);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_192226B70();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 2147483645)
  {
    *(a1 + a4[7]) = (a2 + 1);
    return result;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1890, &qword_19223D9D8);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1898, &qword_19223D9E0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[11];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_192090614()
{
  v1 = *(v0 + 80);

  return swift_deallocObject();
}

uint64_t sub_192090694()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v4 + 64) + v5;
  v7 = *(v0 + 2);
  swift_unknownObjectRelease();
  (*(v4 + 8))(&v0[v5], AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_192090784()
{
  v1 = *(*(v0 + 40) - 8);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);
  if (*(v0 + v3))
  {
    v4 = *(v0 + v3 + 8);
  }

  return swift_deallocObject();
}

uint64_t sub_192090844()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_19209088C()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1920908F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_192226B30();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_192090960(uint64_t a1, uint64_t a2)
{
  v4 = sub_192226B30();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_192090A48@<X0>(_BYTE *a1@<X8>)
{
  sub_19203F2E0();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_192090A98(char *a1)
{
  v2 = *a1;
  sub_19203F2E0();
  return sub_1922261F0();
}

uint64_t sub_192090AE8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_192225C70();
  sub_192040D40();
  return swift_getWitnessTable();
}

uint64_t sub_192090CC4@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EADF1AD0;
  return result;
}

uint64_t sub_192090D10(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EADF1AD0 = v1;
  return result;
}

uint64_t sub_192090D58@<X0>(_BYTE *a1@<X8>)
{
  sub_1920412C8();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_192090DA8(char *a1)
{
  v2 = *a1;
  sub_1920412C8();
  return sub_1922261F0();
}

uint64_t sub_192090DFC(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_1920791AC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_192090E80(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_192090ED4()
{
  sub_1920498A4(*(v0 + 16), *(v0 + 24));
  sub_19213AE5C(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_192090F1C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1AE8, &qword_19223F940);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1AE0, &qword_19223F938);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1AF8, &qword_19223F9A0);
  sub_1921B96F0(&qword_1ED749FE0, &qword_1EADF1AE0, &qword_19223F938, sub_1921B94FC);
  sub_1921B9640();
  swift_getOpaqueTypeConformance2();
  sub_19207AD50();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_192091050@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_1921BAA84;
  a2[1] = v5;
}

uint64_t sub_1920910C0@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_1921BAA84;
  a2[1] = v5;
}

uint64_t sub_192091130()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_192091184(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_192225C70();
  sub_1922266F0();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_192091240()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_1920912BC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);
  if (v2 >> 60 != 15)
  {
    sub_192039140(*(v0 + 40), v2);
  }

  return swift_deallocObject();
}

uint64_t sub_19209131C()
{
  v1 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_19209136C()
{
  v1 = v0[3];

  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_1920914F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_192225C70();
  sub_1921C9904();
  return swift_getWitnessTable();
}

uint64_t sub_192091578()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1920915B8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1ED74B5B8;
  return result;
}

uint64_t sub_192091604(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1ED74B5B8 = v1;
  return result;
}

uint64_t sub_19209164C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1920916D0()
{
  swift_getWitnessTable();

  return sub_192227DA0();
}

uint64_t sub_192091754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

__n128 sub_1920917EC(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_192091800(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  sub_192226CF0();
  sub_192225C70();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_192091894(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EADF1C90, &unk_192240D40);
  sub_192225C70();
  sub_1921D12FC();
  return swift_getWitnessTable();
}

uint64_t sub_19209190C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EADF1C90, &unk_192240D40);
  sub_192225C70();
  sub_1921D12FC();
  return swift_getWitnessTable();
}

uint64_t sub_192091988()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1920919C0()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);
  v4 = *(v0 + v3 + 8);

  return swift_deallocObject();
}

uint64_t sub_192091A5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_192225F00();
  *a1 = result;
  return result;
}

uint64_t sub_192091A88(uint64_t *a1)
{
  v1 = *a1;

  return sub_192225F10();
}

uint64_t sub_192091ACC@<X0>(void *a1@<X8>)
{
  result = sub_192225E70();
  *a1 = v3;
  return result;
}

uint64_t sub_192091B00()
{
  sub_192227580();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1E40, &qword_1922416D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1E48, &qword_1922416D8);
  sub_1921D69BC();
  sub_1921D6A14();
  sub_192031E74(&qword_1EADF1E70, &qword_1EADF1E48, &qword_1922416D8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_192091C04@<X0>(_BYTE *a1@<X8>)
{
  sub_1921DAC8C();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_192091C54(char *a1)
{
  v2 = *a1;
  sub_1921DAC8C();
  return sub_1922261F0();
}

uint64_t sub_192091CAC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  if (v0[8])
  {
    v4 = v0[9];
  }

  return swift_deallocObject();
}

uint64_t sub_192091D04()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  if (*(v0 + 104))
  {
    v3 = *(v0 + 72);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  }

  return swift_deallocObject();
}

uint64_t sub_192091D68()
{
  v1 = v0[3];

  v2 = v0[5];

  if (v0[6])
  {
    v3 = v0[7];
  }

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_192091DC8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFD68, &qword_1922360C0);
  sub_192225C70();
  sub_1921E0C34();
  return swift_getWitnessTable();
}

uint64_t sub_192091E48(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1922253B0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_192091EF4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1922253B0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_192091F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_192226BA0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_192092068(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_192226BA0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_192092124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_192226BA0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1920921F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_192226BA0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1920922B0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2150, &unk_192243180);
  sub_1921E6DE4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_192092314()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  if (v0[8])
  {
    v4 = v0[9];
  }

  return swift_deallocObject();
}

uint64_t sub_19209236C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  if (*(v0 + 104))
  {
    v3 = *(v0 + 72);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  }

  return swift_deallocObject();
}

uint64_t sub_1920923D0()
{
  v1 = v0[3];

  v2 = v0[5];

  if (v0[6])
  {
    v3 = v0[7];
  }

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_192092428()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2258, &qword_192243A38);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1920924F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2258, &qword_192243A38);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_19209258C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2258, &qword_192243A38);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_192092680()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1920926C0(__int128 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 24);
  type metadata accessor for ControlWidgetToggleTemplateProvider();
  swift_getWitnessTable();
  type metadata accessor for TemplateDescriptorPreference();
  return swift_getWitnessTable();
}

uint64_t sub_1920927A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EADEF938, &qword_19222F0B8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_192092834()
{
  v1 = *(v0 + 48);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (type metadata accessor for TimelineProviderContext() - 8);
  v7 = (v5 + *(*v6 + 80) + 8) & ~*(*v6 + 80);
  v19 = *(*v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v9 = *(v0 + v4);

  v10 = *(v0 + v7 + 8);

  v11 = *(v0 + v7 + 16);

  v12 = *(v0 + v7 + 24);

  v13 = *(v0 + v7 + 48);

  v14 = v6[12];
  v15 = sub_192224EA0();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v0 + v7 + v14, 1, v15))
  {
    (*(v16 + 8))(v0 + v7 + v14, v15);
  }

  v17 = *(v0 + ((v19 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_192092A4C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = (type metadata accessor for Timeline() - 8);
  v4 = (*(*v3 + 80) + 48) & ~*(*v3 + 80);
  v5 = (*(*v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = type metadata accessor for TimelineProviderContext();
  v25 = *(*(v8 - 8) + 64);
  v24 = (*(*(v8 - 8) + 80) + v7 + 8) & ~*(*(v8 - 8) + 80);
  v9 = v0 + v4;
  v10 = *(v0 + v4);

  v11 = v3[11];
  v12 = sub_192225150();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v9 + v11, 1, v12))
  {
    (*(v13 + 8))(v9 + v11, v12);
  }

  v14 = *(v0 + v5);

  v15 = *(v0 + v6 + 8);

  v16 = *(v0 + v24 + 8);

  v17 = *(v0 + v24 + 16);

  v18 = *(v0 + v24 + 24);

  v19 = *(v0 + v24 + 48);

  v20 = *(v8 + 40);
  v21 = sub_192224EA0();
  v22 = *(v21 - 8);
  if (!(*(v22 + 48))(v0 + v24 + v20, 1, v21))
  {
    (*(v22 + 8))(v0 + v24 + v20, v21);
  }

  return swift_deallocObject();
}

uint64_t sub_192092D28()
{
  v1 = (type metadata accessor for TimelineProviderContext() - 8);
  v2 = (*(*v1 + 80) + 64) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 48);

  v5 = *(v0 + v2 + 8);

  v6 = *(v0 + v2 + 16);

  v7 = *(v0 + v2 + 24);

  v8 = *(v0 + v2 + 48);

  v9 = v1[12];
  v10 = sub_192224EA0();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v2 + v9, 1, v10))
  {
    (*(v11 + 8))(v0 + v2 + v9, v10);
  }

  v12 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v0 + v12 + 8);

  return swift_deallocObject();
}

uint64_t sub_192092EA8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (type metadata accessor for TimelineProviderContext() - 8);
  v10 = (*(*v9 + 80) + v8 + 8) & ~*(*v9 + 80);
  v21 = *(*v9 + 64);
  (*(v4 + 8))(v0 + v5, AssociatedTypeWitness);
  v11 = *(v0 + v6);

  v12 = *(v0 + v7 + 8);

  v13 = *(v0 + v10 + 8);

  v14 = *(v0 + v10 + 16);

  v15 = *(v0 + v10 + 24);

  v16 = *(v0 + v10 + 48);

  v17 = v9[12];
  v18 = sub_192224EA0();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v0 + v10 + v17, 1, v18))
  {
    (*(v19 + 8))(v0 + v10 + v17, v18);
  }

  return swift_deallocObject();
}

uint64_t sub_1920930F0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_192093130()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_192093168(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_1920791AC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1920931C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1920931FC()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 40);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1920932B8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1920932F8()
{
  v1 = *(*(v0 + 32) - 8);
  v2 = *(v1 + 64);
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_192093378(__int128 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 24);
  type metadata accessor for ControlWidgetButtonTemplateProvider();
  swift_getWitnessTable();
  type metadata accessor for TemplateDescriptorPreference();
  return swift_getWitnessTable();
}

__n128 sub_192093444(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1920934A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for _ActivityBackgroundTintModifier();
  sub_192225C70();
  sub_1921F92C8();
  return swift_getWitnessTable();
}

uint64_t sub_192093510(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0328, &unk_192233690);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_1920935D8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0328, &unk_192233690);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19209368C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1922251B0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_192093748(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1922251B0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_192093800(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for ActivityMetricsDefinition();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1640, &qword_19223C560);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF250, &qword_19222C6C0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_192093984(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for ActivityMetricsDefinition();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1640, &qword_19223C560);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF250, &qword_19222C6C0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_192093B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
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
    v9 = type metadata accessor for ControlTemplateToggle.Option(0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 24);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_192093C4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = type metadata accessor for ControlTemplateToggle.Option(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_192093D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_192093E44(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_192093EF4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for TimelineReloadPolicy();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_192093FA0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for TimelineReloadPolicy();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_192094044(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for _ActivitySystemActionForegroundColorModifier();
  sub_192225C70();
  sub_192204064();
  return swift_getWitnessTable();
}

uint64_t sub_1920940B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0328, &unk_192233690);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_192094184(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0328, &unk_192233690);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_19209425C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_19209429C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_1920791AC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_192094308@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EADF2660;
  return result;
}

uint64_t sub_192094354(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EADF2660 = v1;
  return result;
}

uint64_t sub_1920943CC(char *a1)
{
  v2 = *a1;
  sub_19207D56C();
  return sub_1922261F0();
}

uint64_t sub_192094448@<X0>(_BYTE *a1@<X8>)
{
  sub_19220AF00();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_192094498(char *a1)
{
  v2 = *a1;
  sub_19220AF00();
  return sub_1922261F0();
}

uint64_t sub_1920944E4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFF78, &qword_192231FD0);
  sub_192225C70();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFF18, &qword_192231E70);
  sub_192225C70();
  sub_192225C70();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2688, &qword_192245740);
  sub_192206600();
  sub_192226870();
  sub_192227360();
  sub_192225C70();
  swift_getTupleTypeMetadata2();
  sub_192227660();
  swift_getWitnessTable();
  sub_192227540();
  sub_192225C70();
  sub_192225C70();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_192209F10();
  return swift_getWitnessTable();
}

uint64_t sub_1920946BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF27D0, &qword_192245970);
  sub_192225C70();
  sub_192031E74(qword_1EADF27D8, &qword_1EADF27D0, &qword_192245970);
  return swift_getWitnessTable();
}

uint64_t sub_192094768()
{
  v1 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 40);
  v2 = (type metadata accessor for AccessoryWidgetGroup() - 8);
  v3 = *(*v2 + 64);
  v4 = v0 + ((*(*v2 + 80) + 48) & ~*(*v2 + 80));
  (*(*(v1 - 8) + 8))(v4, v1);
  (*(*(v6 - 8) + 8))(v4 + v2[15]);
  sub_19209561C(*(v4 + v2[16]), *(v4 + v2[16] + 8));
  sub_192049898(*(v4 + v2[17]), *(v4 + v2[17] + 8));
  sub_192049898(*(v4 + v2[18]), *(v4 + v2[18] + 8));
  return swift_deallocObject();
}

uint64_t sub_1920948D4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  swift_getTupleTypeMetadata();
  sub_192227660();
  swift_getWitnessTable();
  sub_192227520();
  return swift_getWitnessTable();
}

uint64_t sub_192094988()
{
  v1 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1920949D4@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EADF2970;
  return result;
}

uint64_t sub_192094A20(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EADF2970 = v1;
  return result;
}

uint64_t sub_192094A68@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EADF2971;
  return result;
}

uint64_t sub_192094AB4(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EADF2971 = v1;
  return result;
}

uint64_t sub_192094AFC@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EADF2972;
  return result;
}

uint64_t sub_192094B48(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EADF2972 = v1;
  return result;
}

uint64_t sub_192094BA0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Timeline();
  v3 = sub_192227CA0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  (*(v4 + 8))(v0 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);

  return swift_deallocObject();
}

uint64_t sub_192094C9C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  v3 = sub_192227CA0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  (*(v4 + 8))(v0 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);

  return swift_deallocObject();
}

uint64_t sub_192094D54()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_192094D94()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_192094DEC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_192094E2C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_192094E64(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_1920791AC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_192094EC0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[2];
  sub_1920791AC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_192094F30()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  v4 = v0[10];

  if (v0[11])
  {
    v5 = v0[12];
  }

  v6 = v0[14];

  v7 = v0[16];

  v8 = v0[18];

  v9 = v0[21];

  v10 = v0[23];

  return swift_deallocObject();
}

uint64_t sub_192094FB8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_192094FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AD0, &qword_192246FC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1922266C0();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AE0, &qword_192246FD8);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_192095154(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AD0, &qword_192246FC0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1922266C0();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AE0, &qword_192246FD8);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_192095320(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEED10, &unk_19222B0F0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_192095398(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEED10, &unk_19222B0F0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_19209546C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_192095528(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_19209561C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_192095628@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_192095660()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

id WidgetViewCollection.environment.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

uint64_t WidgetViewCollection.dateRange.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F0, &qword_19222A7A0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
  swift_beginAccess();
  sub_19202CFFC(v1 + v10, v9, &qword_1EADEE9F0, &qword_19222A7A0);
  v11 = sub_192224E00();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_192033970(v9, &qword_1EADEE9F0, &qword_19222A7A0);
  sub_192095E30(v1, a1);
  (*(v12 + 16))(v7, a1, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_192096378(v7, v1 + v10);
  return swift_endAccess();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_192095B74(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F0, &qword_19222A7A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - v6;
  v8 = sub_192224E00();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8);
  v13 = *a2;
  (*(v9 + 32))(v7, v12, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v14 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
  swift_beginAccess();
  sub_192096378(v7, v13 + v14);
  return swift_endAccess();
}

uint64_t WidgetViewCollection.dateRange.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F0, &qword_19222A7A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - v5;
  v7 = sub_192224E00();
  v8 = *(v7 - 8);
  (*(v8 + 32))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
  swift_beginAccess();
  sub_192096378(v6, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_192095E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEED10, &unk_19222B0F0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v43 - v9;
  v11 = sub_192225150();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x1EEE9AC00](v11);
  v50 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v43 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v49 = &v43 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v43 - v21;
  v23 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries;
  v53 = a1;
  v24 = *(a1 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries);

  v26 = sub_19204E3C0(v25, type metadata accessor for ViewableTimelineEntry, type metadata accessor for ViewableTimelineEntry, &protocol witness table for ViewableTimelineEntry, type metadata accessor for ViewableTimelineEntry);

  if (*(v26 + 16))
  {
    v51 = v22;
    v52 = a2;
    v48 = v8;
    sub_192033A64(v26 + 32, v54);

    v27 = v55;
    v28 = v56;
    __swift_project_boxed_opaque_existential_1(v54, v55);
    (*(v28 + 8))(v27, v28);
    v29 = v12[7];
    v29(v10, 0, 1, v11);
    __swift_destroy_boxed_opaque_existential_1(v54);
    v30 = v12[6];
    if (v30(v10, 1, v11) != 1)
    {
      v46 = v30;
      v47 = v29;
      v31 = v51;
      v44 = v12[4];
      v45 = v12 + 4;
      v44(v51, v10, v11);
      v32 = *(v53 + v23);

      v34 = sub_19204E3C0(v33, type metadata accessor for ViewableTimelineEntry, type metadata accessor for ViewableTimelineEntry, &protocol witness table for ViewableTimelineEntry, type metadata accessor for ViewableTimelineEntry);

      v35 = *(v34 + 16);
      if (v35)
      {
        sub_192033A64(v34 + 40 * v35 - 8, v54);

        v36 = v55;
        v37 = v56;
        __swift_project_boxed_opaque_existential_1(v54, v55);
        v10 = v48;
        (*(v37 + 8))(v36, v37);
        v47(v10, 0, 1, v11);
        __swift_destroy_boxed_opaque_existential_1(v54);
        if (v46(v10, 1, v11) != 1)
        {
          v39 = v49;
          v44(v49, v10, v11);
          v40 = v12[2];
          v41 = v51;
          v40(v18, v51, v11);
          v40(v50, v39, v11);
          sub_192224DD0();
          v42 = v12[1];
          v42(v39, v11);
          return (v42)(v41, v11);
        }

        (v12[1])(v51, v11);
      }

      else
      {

        (v12[1])(v31, v11);
        v10 = v48;
        v47(v48, 1, 1, v11);
      }
    }
  }

  else
  {

    (v12[7])(v10, 1, 1, v11);
  }

  sub_192033970(v10, &qword_1EADEED10, &unk_19222B0F0);
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  return sub_192224DE0();
}

uint64_t sub_192096378(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F0, &qword_19222A7A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t WidgetViewCollection.entries.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries);

  v3 = sub_19204E3C0(v2, type metadata accessor for ViewableTimelineEntry, type metadata accessor for ViewableTimelineEntry, &protocol witness table for ViewableTimelineEntry, type metadata accessor for ViewableTimelineEntry);

  return v3;
}

void (*WidgetViewCollection.dateRange.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F0, &qword_19222A7A0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[7] = v7;
  v8 = sub_192224E00();
  v5[8] = v8;
  v9 = *(v8 - 8);
  v5[9] = v9;
  if (v3)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  v5[10] = v10;
  WidgetViewCollection.dateRange.getter(v10);
  return sub_192096590;
}

void sub_192096590(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 56);
  v6 = *(*a1 + 64);
  v7 = *(*a1 + 48);
  if (a2)
  {
    (*(v3 + 16))(v2[7], v2[10], v2[8]);
    (*(v3 + 56))(v5, 0, 1, v6);
    v8 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
    swift_beginAccess();
    sub_192096378(v5, v7 + v8);
    swift_endAccess();
    (*(v3 + 8))(v4, v6);
  }

  else
  {
    (*(v3 + 32))(v2[7], v2[10], v2[8]);
    (*(v3 + 56))(v5, 0, 1, v6);
    v9 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
    swift_beginAccess();
    sub_192096378(v5, v7 + v9);
    swift_endAccess();
  }

  free(v4);
  free(v5);

  free(v2);
}

unint64_t WidgetViewCollection.metrics.getter()
{
  v1 = *(v0 + 16);
  KeyPath = swift_getKeyPath();
  result = sub_192066C60(KeyPath, &unk_1EADEED00, &qword_19222D9C0, &qword_1ED74BD10, 0x1E69943F0);
  if (!result)
  {
    goto LABEL_12;
  }

  v4 = result;
  v5 = result & 0xFFFFFFFFFFFFFF8;
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_9:

    __break(1u);
    goto LABEL_10;
  }

  if (!sub_192228340())
  {
    goto LABEL_9;
  }

LABEL_4:

  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_10:
    v6 = MEMORY[0x193B0B410](0, v4);
    goto LABEL_7;
  }

  if (*(v5 + 16))
  {
    v6 = *(v4 + 32);
LABEL_7:
    v7 = v6;

    return v7;
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t WidgetViewCollection.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate;
  swift_beginAccess();
  v4 = sub_192225150();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

void *sub_1920968C8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_192228340();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v16 = MEMORY[0x1E69E7CC0];
  result = sub_19209AD70(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x193B0B410](v5, a1);
        v16 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_19209AD70((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = type metadata accessor for ElevatedMemoryRequestAssertion();
        v15 = &protocol witness table for ElevatedMemoryRequestAssertion;
        *&v13 = v6;
        *(v3 + 16) = v8 + 1;
        sub_19203832C(&v13, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = *(v3 + 16);
        v12 = *(v3 + 24);

        if (v11 >= v12 >> 1)
        {
          sub_19209AD70((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = type metadata accessor for ElevatedMemoryRequestAssertion();
        v15 = &protocol witness table for ElevatedMemoryRequestAssertion;
        *&v13 = v10;
        *(v3 + 16) = v11 + 1;
        sub_19203832C(&v13, v3 + 40 * v11 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t WidgetViewCollection.copyWithoutRenderData()@<X0>(void *a1@<X8>)
{
  a1[3] = *v1;
  a1[4] = &protocol witness table for WidgetViewCollection;
  *a1 = v1;
}

uint64_t WidgetViewCollection.__allocating_init(widget:environment:entries:reloadPolicy:shouldSortAndDedupeEntries:)(void *a1, uint64_t *a2, void *a3, uint64_t a4, int a5)
{
  v6 = v5;
  LODWORD(v123) = a5;
  v101 = a4;
  v108 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F8, &unk_19222A7D0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v114 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v118 = &v97 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v117 = &v97 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v97 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v97 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v104 = &v97 - v23;
  v24 = type metadata accessor for ViewableTimelineEntry();
  v111 = *(v24 - 8);
  v25 = *(v111 + 64);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v112 = &v97 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v113 = &v97 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v107 = &v97 - v30;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA00, &unk_19222B660);
  v31 = *(*(v122 - 8) + 64);
  MEMORY[0x1EEE9AC00](v122);
  v120 = (&v97 - v32);
  v33 = sub_192225150();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v97 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for BundleStub();
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v41 = &v97 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(v6 + 48);
  v43 = *(v6 + 52);
  v119 = v6;
  v44 = swift_allocObject();
  v98 = *a2;
  v45 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
  v46 = sub_192224E00();
  (*(*(v46 - 8) + 56))(v44 + v45, 1, 1, v46);
  v100 = a1;
  BundleStub.init(_:)([a1 extensionIdentity], v41);
  sub_19203CFC0(v41, v44 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle, type metadata accessor for BundleStub);
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  v47 = *(v34 + 32);
  v99 = v44;
  v47(v44 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate, v37, v33);
  if ((v123 & 1) == 0)
  {
LABEL_45:
    v90 = v99;
    *(v99 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries) = v108;
    *(v90 + 16) = v98;
    *(v90 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget) = v100;
    v91 = v101;
    sub_19204E6EC(v101, v90 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);
    swift_beginAccess();
    v92 = byte_1ED74B5B8;
    sub_192046EE8(v91, type metadata accessor for TimelineReloadPolicy);
    *(v90 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_protectionLevel) = v92;
    *(v90 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes) = MEMORY[0x1E69E7CD0];
    return v90;
  }

  v124 = v108;

  sub_19209B0C4(&v124);
  v116 = v19;

  v48 = v124;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA08, &unk_19222A7E0);
  inited = swift_initStackObject();
  *(inited + 16) = v48;
  *(inited + 24) = 0;
  v51 = v111 + 56;
  v50 = *(v111 + 56);
  v103 = *(v111 + 80);
  v52 = (v103 + 32) & ~v103;
  v108 = MEMORY[0x1E69E7CC0];
  v105 = MEMORY[0x1E69E7CC0] + v52;
  v53 = v120;
  v119 = *(v122 + 32);
  v122 = v50;
  v50(v120 + v119, 1, 1, v24);
  *v53 = inited;
  v53[1] = sub_1920DA3A8;
  v53[2] = 0;
  v115 = v48;
  v102 = v52;
  v109 = v48 + v52;
  v123 = v51;
  v54 = (v51 - 8);
  v110 = inited;

  v106 = 0;
  v55 = 0;
  v56 = v114;
  v121 = v24;
  while (2)
  {
    (v122)(v22, 1, 1, v24);
    while (1)
    {
      v57 = v115[2];
      if (v55 == v57)
      {
        v58 = 1;
        v59 = v117;
        v60 = v118;
        v61 = v116;
      }

      else
      {
        v59 = v117;
        v60 = v118;
        v61 = v116;
        if (v55 >= v57)
        {
          __break(1u);
          goto LABEL_47;
        }

        sub_19204E6EC(&v109[*(v111 + 72) * v55], v116, type metadata accessor for ViewableTimelineEntry);
        v58 = 0;
        *(v110 + 24) = ++v55;
      }

      v62 = v121;
      (v122)(v61, v58, 1, v121);
      sub_192033970(v22, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_19204E300(v61, v22, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_19202CFFC(v22, v59, &qword_1EADEE9F8, &unk_19222A7D0);
      v63 = *v54;
      if ((*v54)(v59, 1, v62) == 1)
      {
        break;
      }

      sub_192033970(v59, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_19202CFFC(v22, v60, &qword_1EADEE9F8, &unk_19222A7D0);
      if (v63(v60, 1, v62) == 1)
      {
        v68 = v60;
        goto LABEL_16;
      }

      v64 = v60;
      v65 = v113;
      sub_19203CFC0(v64, v113, type metadata accessor for ViewableTimelineEntry);
      sub_19202CFFC(v120 + v119, v56, &qword_1EADEE9F8, &unk_19222A7D0);
      if (v63(v56, 1, v62) == 1)
      {
        sub_192046EE8(v65, type metadata accessor for ViewableTimelineEntry);
        v68 = v56;
        goto LABEL_16;
      }

      v66 = v112;
      sub_19203CFC0(v56, v112, type metadata accessor for ViewableTimelineEntry);
      v67 = sub_192225120();
      sub_192046EE8(v66, type metadata accessor for ViewableTimelineEntry);
      v56 = v114;
      sub_192046EE8(v65, type metadata accessor for ViewableTimelineEntry);
      if ((v67 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v68 = v59;
LABEL_16:
    sub_192033970(v68, &qword_1EADEE9F8, &unk_19222A7D0);
LABEL_17:
    sub_19209B16C(v22, v120 + v119);
    v59 = v104;
    sub_19204E300(v22, v104, &qword_1EADEE9F8, &unk_19222A7D0);
    v24 = v121;
    if (v63(v59, 1, v121) != 1)
    {
      sub_19203CFC0(v59, v107, type metadata accessor for ViewableTimelineEntry);
      v59 = v106;
      if (v106)
      {
        v69 = v108;
        v70 = v105;
        v59 = v106 - 1;
        if (!__OFSUB__(v106, 1))
        {
          goto LABEL_40;
        }

LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v71 = v108[3];
      if (((v71 >> 1) + 0x4000000000000000) < 0)
      {
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v72 = v71 & 0xFFFFFFFFFFFFFFFELL;
      if (v72 <= 1)
      {
        v56 = 1;
      }

      else
      {
        v56 = v72;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA10, &unk_19222B7B0);
      v59 = *(v111 + 72);
      v73 = v102;
      v69 = swift_allocObject();
      v74 = _swift_stdlib_malloc_size(v69);
      if (!v59)
      {
        goto LABEL_49;
      }

      v75 = v74 - v73;
      if (v74 - v73 == 0x8000000000000000 && v59 == -1)
      {
        goto LABEL_50;
      }

      v77 = v75 / v59;
      v69[2] = v56;
      v69[3] = 2 * (v75 / v59);
      v78 = v69 + v73;
      v79 = v108;
      v80 = v108[3] >> 1;
      v81 = v80 * v59;
      v56 = v114;
      if (!v108[2])
      {
LABEL_39:
        v70 = &v78[v81];
        v83 = (v77 & 0x7FFFFFFFFFFFFFFFLL) - v80;

        v84 = __OFSUB__(v83, 1);
        v59 = v83 - 1;
        if (!v84)
        {
LABEL_40:
          v106 = v59;
          sub_19203CFC0(v107, v70, type metadata accessor for ViewableTimelineEntry);
          v105 = v70 + *(v111 + 72);
          v108 = v69;
          continue;
        }

        goto LABEL_47;
      }

      if (v69 < v108 || v78 >= v108 + v73 + v81)
      {
        v82 = v108[3] >> 1;
        v105 = v77;
        v106 = v78;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v69 == v108)
        {
LABEL_38:
          v79[2] = 0;
          goto LABEL_39;
        }

        v82 = v108[3] >> 1;
        v105 = v77;
        v106 = v78;
        swift_arrayInitWithTakeBackToFront();
      }

      v80 = v82;
      v78 = v106;
      v77 = v105;
      v79 = v108;
      goto LABEL_38;
    }

    break;
  }

  sub_192033970(v120, &qword_1EADEEA00, &unk_19222B660);
  sub_192033970(v59, &qword_1EADEE9F8, &unk_19222A7D0);
  v85 = v108[3];
  if (v85 < 2)
  {
LABEL_44:
    v88 = v110;
    swift_setDeallocating();
    v89 = *(v88 + 16);

    goto LABEL_45;
  }

  v86 = v85 >> 1;
  v84 = __OFSUB__(v86, v106);
  v87 = v86 - v106;
  if (!v84)
  {
    v108[2] = v87;
    goto LABEL_44;
  }

LABEL_51:
  __break(1u);

  v94 = v99;
  sub_192046EE8(v99 + v59, type metadata accessor for BundleStub);
  sub_192033970(v94 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange, &qword_1EADEE9F0, &qword_19222A7A0);
  (*(v56 + 8))(v94 + *(v55 + 3024), &unk_19222A7D0);
  v95 = *(*v94 + 48);
  v96 = *(*v94 + 52);
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}