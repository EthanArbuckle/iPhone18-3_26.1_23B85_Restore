uint64_t ApplicationServiceEndpoint1.deviceName.getter()
{
  v1 = *(*v0 + 80);

  return v1;
}

uint64_t ApplicationServiceEndpoint1.deviceName.setter(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = *(v6 + 7);
    v13[5] = *(v6 + 6);
    v13[6] = v7;
    v13[7] = *(v6 + 8);
    v14 = v6[18];
    v8 = *(v6 + 3);
    v13[1] = *(v6 + 2);
    v13[2] = v8;
    v9 = *(v6 + 5);
    v13[3] = *(v6 + 4);
    v13[4] = v9;
    v13[0] = *(v6 + 1);
    type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
    v10 = swift_allocObject();
    memmove((v10 + 16), v6 + 2, 0x88uLL);
    sub_181E63A90(v13, v12);

    *v2 = v10;
    v6 = v10;
  }

  v6[10] = a1;
  v6[11] = a2;
}

uint64_t ApplicationServiceEndpoint1.deviceModel.getter()
{
  v1 = *(*v0 + 96);

  return v1;
}

uint64_t ApplicationServiceEndpoint1.deviceModel.setter(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = *(v6 + 7);
    v13[5] = *(v6 + 6);
    v13[6] = v7;
    v13[7] = *(v6 + 8);
    v14 = v6[18];
    v8 = *(v6 + 3);
    v13[1] = *(v6 + 2);
    v13[2] = v8;
    v9 = *(v6 + 5);
    v13[3] = *(v6 + 4);
    v13[4] = v9;
    v13[0] = *(v6 + 1);
    type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
    v10 = swift_allocObject();
    memmove((v10 + 16), v6 + 2, 0x88uLL);
    sub_181E63A90(v13, v12);

    *v2 = v10;
    v6 = v10;
  }

  v6[12] = a1;
  v6[13] = a2;
}

__n128 ApplicationServiceEndpoint1.serviceID.getter@<Q0>(__n128 *a1@<X8>)
{
  result = (*v1)[4];
  *a1 = result;
  return result;
}

__n128 ApplicationServiceEndpoint1.serviceID.setter(__n128 *a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = v4[7];
    v11[5] = v4[6];
    v11[6] = v5;
    v11[7] = v4[8];
    v12 = v4[9].n128_u64[0];
    v6 = v4[3];
    v11[1] = v4[2];
    v11[2] = v6;
    v7 = v4[5];
    v11[3] = v4[4];
    v11[4] = v7;
    v11[0] = v4[1];
    type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
    v8 = swift_allocObject();
    memmove((v8 + 16), &v4[1], 0x88uLL);
    sub_181E63A90(v11, v10);

    *v1 = v8;
    v4 = v8;
  }

  result = *a1;
  v4[4] = *a1;
  return result;
}

uint64_t sub_1821802C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  *&v121 = 0;
  *(&v121 + 1) = 0xE000000000000000;
  v120[0] = 0;
  v120[1] = 0xE000000000000000;
  v118 = 0;
  v119 = 0xE000000000000000;
  v116 = 0;
  v117 = 0xE000000000000000;
  v114 = 0;
  v115 = 0xE000000000000000;
  v113 = 0;
  v112 = 0;
  v111 = *a1;

  sub_181FAEEC4(&v111, &v93);
  v3 = v93;
  if (v93 == 1)
  {

LABEL_20:

    *a2 = 0;
    return result;
  }

  v4 = *(&v93 + 1);
  v5 = v111;
  v6 = v5 + 32 + *(v5 + 16);
  *&v93 = v111 + 32;
  *(&v93 + 1) = v6;
  v94 = 0uLL;
  LOBYTE(v95) = 1;

  sub_1820D562C(&v121, v92);
  sub_1820D562C(v120, &v102);
  sub_1820D562C(&v118, &v109);
  sub_1820D562C(&v116, v108);
  sub_1820D562C(&v114, v107);
  Deserializer.uint32(_:)(&v113, v106);
  result = Deserializer.uint8(_:)(&v112, &v105);
  v9 = *(&v94 + 1);
  v8 = v94;
  if (v95 != 1)
  {
    goto LABEL_12;
  }

  if (*(&v94 + 1))
  {

LABEL_19:
    sub_182179F68(v3);
    goto LABEL_20;
  }

  if (v93)
  {
    v10 = *(&v93 + 1) - v93;
  }

  else
  {
    v10 = 0;
  }

  v9 = v10 - v94;
  if (__OFSUB__(v10, v94))
  {
    __break(1u);
    goto LABEL_56;
  }

  if (v9 < 0)
  {
LABEL_56:
    __break(1u);
    return result;
  }

  if (v9)
  {
LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  v11 = 1;
LABEL_13:
  v12 = *(v5 + 16);
  if (v12 < v94)
  {
    __break(1u);
    goto LABEL_53;
  }

  if ((v94 & 0x8000000000000000) != 0)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v94)
  {
LABEL_54:
    sub_1822D0918(v5, v5 + 32, v8, (2 * v12) | 1);
  }

  if (v11 && v9)
  {
    goto LABEL_19;
  }

  SystemUUID.init(uuidString:)(&v102);
  if (v104)
  {
    goto LABEL_19;
  }

  v79 = v4;
  v13 = v103;
  v14 = v102;
  v84 = v102 >> 16;
  v85 = v102 >> 8;
  v86 = HIDWORD(v102);
  v87 = v102 >> 24;
  v72 = v102 >> 40;
  v73 = v121;
  v68 = HIWORD(v102);
  v82 = v103 >> 8;
  v83 = v103 >> 16;
  v80 = HIBYTE(v102);
  v81 = v103 >> 24;
  v75 = v118;
  v88 = *(&v121 + 1);
  v89 = v119;
  v15 = v117;
  v74 = v113;
  v16 = v115;
  v76 = v116;
  v77 = v114;
  v67 = v103 >> 40;
  v70 = HIWORD(v103);
  v71 = HIDWORD(v103);
  v93 = v121;
  v69 = HIBYTE(v103);

  v90 = v15;

  v78 = v16;

  v17 = MEMORY[0x1865D9CA0](47, 0xE100000000000000);
  v18 = *(&v93 + 1);
  v91 = v93;
  MEMORY[0x1EEE9AC00](v17);
  v19 = sub_182AD30D8();
  v21 = v20;
  *&v93 = v91;
  *(&v93 + 1) = v18;

  MEMORY[0x1865D9CA0](v19, v21);

  v22 = v93;
  type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
  v23 = swift_allocObject();
  v23[2] = 0;
  v24 = (v23 + 2);
  v23[3] = 0;
  *(v23 + 2) = v22;
  v23[6] = v73;
  v23[7] = v88;
  *(v23 + 64) = v14;
  *(v23 + 65) = v85;
  *(v23 + 66) = v84;
  *(v23 + 67) = v87;
  *(v23 + 68) = v86;
  *(v23 + 69) = v72;
  *(v23 + 70) = v68;
  *(v23 + 71) = v80;
  *(v23 + 72) = v13;
  *(v23 + 73) = v82;
  *(v23 + 74) = v83;
  *(v23 + 75) = v81;
  *(v23 + 76) = v71;
  *(v23 + 77) = v67;
  *(v23 + 78) = v70;
  *(v23 + 79) = v69;
  *(v23 + 6) = 0u;
  *(v23 + 7) = 0u;
  *(v23 + 5) = 0u;
  *(v23 + 32) = v74;
  *(v23 + 132) = 3;
  *(v23 + 133) = v109;
  *(v23 + 135) = v110;
  v25 = v75;
  if ((v89 & 0x2000000000000000) != 0)
  {
    v26 = HIBYTE(v89) & 0xF;
  }

  else
  {
    v26 = v75 & 0xFFFFFFFFFFFFLL;
  }

  *(v23 + 17) = xmmword_182AF5DF0;

  if (v26)
  {
    v26 = v89;
  }

  else
  {

    v25 = 0;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v27 = *(v23 + 8);
    v99 = *(v23 + 7);
    v100 = v27;
    v101 = v23[18];
    v28 = *(v23 + 4);
    v95 = *(v23 + 3);
    v96 = v28;
    v29 = *(v23 + 6);
    v97 = *(v23 + 5);
    v98 = v29;
    v30 = *(v23 + 2);
    v93 = *v24;
    v94 = v30;
    v31 = swift_allocObject();
    v32 = *(v23 + 8);
    *(v31 + 112) = *(v23 + 7);
    *(v31 + 128) = v32;
    *(v31 + 144) = v23[18];
    v33 = *(v23 + 4);
    *(v31 + 48) = *(v23 + 3);
    *(v31 + 64) = v33;
    v34 = *(v23 + 6);
    *(v31 + 80) = *(v23 + 5);
    *(v31 + 96) = v34;
    v35 = *(v23 + 2);
    *(v31 + 16) = *v24;
    *(v31 + 32) = v35;
    sub_181E63A90(&v93, v92);

    v23 = v31;
  }

  v23[10] = v25;
  v23[11] = v26;

  v36 = HIBYTE(v90) & 0xF;
  v37 = v76;
  if ((v90 & 0x2000000000000000) == 0)
  {
    v36 = v76 & 0xFFFFFFFFFFFFLL;
  }

  if (v36)
  {
    v38 = v90;
  }

  else
  {

    v37 = 0;
    v38 = 0;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v39 = *(v23 + 8);
    v99 = *(v23 + 7);
    v100 = v39;
    v101 = v23[18];
    v40 = *(v23 + 4);
    v95 = *(v23 + 3);
    v96 = v40;
    v41 = *(v23 + 6);
    v97 = *(v23 + 5);
    v98 = v41;
    v42 = *(v23 + 2);
    v93 = *(v23 + 1);
    v94 = v42;
    v43 = swift_allocObject();
    v44 = *(v23 + 8);
    *(v43 + 112) = *(v23 + 7);
    *(v43 + 128) = v44;
    *(v43 + 144) = v23[18];
    v45 = *(v23 + 4);
    *(v43 + 48) = *(v23 + 3);
    *(v43 + 64) = v45;
    v46 = *(v23 + 6);
    *(v43 + 80) = *(v23 + 5);
    *(v43 + 96) = v46;
    v47 = *(v23 + 2);
    *(v43 + 16) = *(v23 + 1);
    *(v43 + 32) = v47;
    sub_181E63A90(&v93, v92);

    v23 = v43;
  }

  v48 = v77;
  v23[12] = v37;
  v23[13] = v38;

  v49 = HIBYTE(v78) & 0xF;
  if ((v78 & 0x2000000000000000) == 0)
  {
    v49 = v77 & 0xFFFFFFFFFFFFLL;
  }

  if (v49)
  {
    v50 = v78;
  }

  else
  {

    v48 = 0;
    v50 = 0;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v51 = *(v23 + 8);
    v99 = *(v23 + 7);
    v100 = v51;
    v101 = v23[18];
    v52 = *(v23 + 4);
    v95 = *(v23 + 3);
    v96 = v52;
    v53 = *(v23 + 6);
    v97 = *(v23 + 5);
    v98 = v53;
    v54 = *(v23 + 2);
    v93 = *(v23 + 1);
    v94 = v54;
    v55 = swift_allocObject();
    memmove((v55 + 16), v23 + 2, 0x88uLL);
    sub_181E63A90(&v93, v92);

    v23 = v55;
  }

  v23[14] = v48;
  v23[15] = v50;

  *a2 = v23;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = *a2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v58 = *(v57 + 112);
    v98 = *(v57 + 96);
    v99 = v58;
    v100 = *(v57 + 128);
    v101 = *(v57 + 144);
    v59 = *(v57 + 48);
    v94 = *(v57 + 32);
    v95 = v59;
    v60 = *(v57 + 80);
    v96 = *(v57 + 64);
    v97 = v60;
    v93 = *(v57 + 16);
    v61 = swift_allocObject();
    memmove((v61 + 16), (v57 + 16), 0x88uLL);
    sub_181E63A90(&v93, v92);

    *a2 = v61;
    v57 = v61;
  }

  *(v57 + 16) = v3;
  *(v57 + 24) = v79;

  if (v112 <= 3u)
  {
    v62 = 0x2010003u >> (8 * v112);
  }

  else
  {
    v62 = 3;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v63 = *(v57 + 112);
    v98 = *(v57 + 96);
    v99 = v63;
    v100 = *(v57 + 128);
    v101 = *(v57 + 144);
    v64 = *(v57 + 48);
    v94 = *(v57 + 32);
    v95 = v64;
    v65 = *(v57 + 80);
    v96 = *(v57 + 64);
    v97 = v65;
    v93 = *(v57 + 16);
    v66 = swift_allocObject();
    memmove((v66 + 16), (v57 + 16), 0x88uLL);
    sub_181E63A90(&v93, v92);

    *a2 = v66;
    v57 = v66;
  }

  *(v57 + 132) = v62;
}

uint64_t ApplicationServiceEndpoint1.hashValue.getter()
{
  v1 = *v0;
  sub_182AD44E8();
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_182AD44E8();
    v3 = *(v2 + 184);
    v4 = *(v2 + 185);
    MEMORY[0x1865DB070](*(v2 + 16));

    sub_182AD30E8();
    MEMORY[0x1865DB070](qword_182AFBF00[v3]);
    MEMORY[0x1865DB070](qword_182AFBF28[v4]);
    v5 = sub_182AD4558();
    MEMORY[0x1865DB070](v5);
  }

  return sub_182AD4558();
}

uint64_t ApplicationServiceEndpoint1.common.getter@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

uint64_t sub_182180CFC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *a2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = *(v6 + 112);
    v13[5] = *(v6 + 96);
    v13[6] = v7;
    v13[7] = *(v6 + 128);
    v14 = *(v6 + 144);
    v8 = *(v6 + 48);
    v13[1] = *(v6 + 32);
    v13[2] = v8;
    v9 = *(v6 + 80);
    v13[3] = *(v6 + 64);
    v13[4] = v9;
    v13[0] = *(v6 + 16);
    type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
    v10 = swift_allocObject();
    memmove((v10 + 16), (v6 + 16), 0x88uLL);
    sub_181E63A90(v13, v12);

    *a2 = v10;
    v6 = v10;
  }

  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
}

uint64_t ApplicationServiceEndpoint1.common.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = *(v5 + 112);
    v12[5] = *(v5 + 96);
    v12[6] = v6;
    v12[7] = *(v5 + 128);
    v13 = *(v5 + 144);
    v7 = *(v5 + 48);
    v12[1] = *(v5 + 32);
    v12[2] = v7;
    v8 = *(v5 + 80);
    v12[3] = *(v5 + 64);
    v12[4] = v8;
    v12[0] = *(v5 + 16);
    type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
    v9 = swift_allocObject();
    memmove((v9 + 16), (v5 + 16), 0x88uLL);
    sub_181E63A90(v12, v11);

    *v1 = v9;
    v5 = v9;
  }

  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
}

void (*ApplicationServiceEndpoint1.common.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x128uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 288) = v1;
  v5 = *(*v1 + 24);
  *(v4 + 272) = *(*v1 + 16);
  *(v4 + 280) = v5;

  return sub_182180F48;
}

void sub_182180F48(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 272);
  v3 = *(*a1 + 280);
  v5 = *(*a1 + 288);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = v2[36];
      *v2 = *(v7 + 16);
      v9 = *(v7 + 80);
      v11 = *(v7 + 32);
      v10 = *(v7 + 48);
      *(v2 + 3) = *(v7 + 64);
      *(v2 + 4) = v9;
      *(v2 + 1) = v11;
      *(v2 + 2) = v10;
      v13 = *(v7 + 112);
      v12 = *(v7 + 128);
      v14 = *(v7 + 96);
      v2[16] = *(v7 + 144);
      *(v2 + 6) = v13;
      *(v2 + 7) = v12;
      *(v2 + 5) = v14;
      type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
      v15 = swift_allocObject();
      memmove((v15 + 16), (v7 + 16), 0x88uLL);
      sub_181E63A90(v2, (v2 + 17));

      *v8 = v15;
      v7 = v15;
    }

    *(v7 + 16) = v4;
    *(v7 + 24) = v3;
  }

  else
  {
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v5;
    if ((v16 & 1) == 0)
    {
      v18 = v2[36];
      *v2 = *(v17 + 16);
      v19 = *(v17 + 80);
      v21 = *(v17 + 32);
      v20 = *(v17 + 48);
      *(v2 + 3) = *(v17 + 64);
      *(v2 + 4) = v19;
      *(v2 + 1) = v21;
      *(v2 + 2) = v20;
      v23 = *(v17 + 112);
      v22 = *(v17 + 128);
      v24 = *(v17 + 96);
      v2[16] = *(v17 + 144);
      *(v2 + 6) = v23;
      *(v2 + 7) = v22;
      *(v2 + 5) = v24;
      type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
      v25 = swift_allocObject();
      memmove((v25 + 16), (v17 + 16), 0x88uLL);
      sub_181E63A90(v2, (v2 + 17));

      *v18 = v25;
      v17 = v25;
    }

    *(v17 + 16) = v4;
    *(v17 + 24) = v3;
  }

  free(v2);
}

uint64_t ApplicationServiceEndpoint1.name.getter()
{
  v1 = *(*v0 + 32);

  return v1;
}

uint64_t sub_182181120(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *a2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = *(v6 + 7);
    v13[5] = *(v6 + 6);
    v13[6] = v7;
    v13[7] = *(v6 + 8);
    v14 = v6[18];
    v8 = *(v6 + 3);
    v13[1] = *(v6 + 2);
    v13[2] = v8;
    v9 = *(v6 + 5);
    v13[3] = *(v6 + 4);
    v13[4] = v9;
    v13[0] = *(v6 + 1);
    type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
    v10 = swift_allocObject();
    memmove((v10 + 16), v6 + 2, 0x88uLL);
    sub_181E63A90(v13, v12);

    *a2 = v10;
    v6 = v10;
  }

  v6[6] = v4;
  v6[7] = v3;
}

void (*ApplicationServiceEndpoint1.applicationService.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x128uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 288) = v1;
  v5 = *(*v1 + 56);
  *(v4 + 272) = *(*v1 + 48);
  *(v4 + 280) = v5;

  return sub_18218127C;
}

void sub_18218127C(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 272);
  v3 = *(*a1 + 280);
  v5 = *(*a1 + 288);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = v2[36];
      *v2 = *(v7 + 1);
      v9 = *(v7 + 5);
      v11 = *(v7 + 2);
      v10 = *(v7 + 3);
      *(v2 + 3) = *(v7 + 4);
      *(v2 + 4) = v9;
      *(v2 + 1) = v11;
      *(v2 + 2) = v10;
      v13 = *(v7 + 7);
      v12 = *(v7 + 8);
      v14 = *(v7 + 6);
      v2[16] = v7[18];
      *(v2 + 6) = v13;
      *(v2 + 7) = v12;
      *(v2 + 5) = v14;
      type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
      v15 = swift_allocObject();
      memmove((v15 + 16), v7 + 2, 0x88uLL);
      sub_181E63A90(v2, (v2 + 17));

      *v8 = v15;
      v7 = v15;
    }

    v7[6] = v4;
    v7[7] = v3;
  }

  else
  {
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v5;
    if ((v16 & 1) == 0)
    {
      v18 = v2[36];
      *v2 = *(v17 + 1);
      v19 = *(v17 + 5);
      v21 = *(v17 + 2);
      v20 = *(v17 + 3);
      *(v2 + 3) = *(v17 + 4);
      *(v2 + 4) = v19;
      *(v2 + 1) = v21;
      *(v2 + 2) = v20;
      v23 = *(v17 + 7);
      v22 = *(v17 + 8);
      v24 = *(v17 + 6);
      v2[16] = v17[18];
      *(v2 + 6) = v23;
      *(v2 + 7) = v22;
      *(v2 + 5) = v24;
      type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
      v25 = swift_allocObject();
      memmove((v25 + 16), v17 + 2, 0x88uLL);
      sub_181E63A90(v2, (v2 + 17));

      *v18 = v25;
      v17 = v25;
    }

    v17[6] = v4;
    v17[7] = v3;
  }

  free(v2);
}

__n128 sub_182181404(__n128 *a1, uint64_t *a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *a2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = v5[7];
    v12[5] = v5[6];
    v12[6] = v6;
    v12[7] = v5[8];
    v13 = v5[9].n128_u64[0];
    v7 = v5[3];
    v12[1] = v5[2];
    v12[2] = v7;
    v8 = v5[5];
    v12[3] = v5[4];
    v12[4] = v8;
    v12[0] = v5[1];
    type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
    v9 = swift_allocObject();
    memmove((v9 + 16), &v5[1], 0x88uLL);
    sub_181E63A90(v12, v11);

    *a2 = v9;
    v5 = v9;
  }

  result = *a1;
  v5[4] = *a1;
  return result;
}

void (*ApplicationServiceEndpoint1.serviceID.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x128uLL);
  }

  *a1 = v3;
  *(v3 + 288) = v1;
  *(v3 + 272) = *(*v1 + 64);
  return sub_182181540;
}

void sub_182181540(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 288);
  v13 = *(*a1 + 272);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = v1[36];
    *v1 = *(v4 + 16);
    v6 = *(v4 + 80);
    v8 = *(v4 + 32);
    v7 = *(v4 + 48);
    *(v1 + 3) = *(v4 + 64);
    *(v1 + 4) = v6;
    *(v1 + 1) = v8;
    *(v1 + 2) = v7;
    v10 = *(v4 + 112);
    v9 = *(v4 + 128);
    v11 = *(v4 + 96);
    v1[16] = *(v4 + 144);
    *(v1 + 6) = v10;
    *(v1 + 7) = v9;
    *(v1 + 5) = v11;
    type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
    v12 = swift_allocObject();
    memmove((v12 + 16), (v4 + 16), 0x88uLL);
    sub_181E63A90(v1, (v1 + 17));

    *v5 = v12;
    v4 = v12;
  }

  *(v4 + 64) = v13;

  free(v1);
}

uint64_t sub_182181620(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *a2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = *(v6 + 7);
    v13[5] = *(v6 + 6);
    v13[6] = v7;
    v13[7] = *(v6 + 8);
    v14 = v6[18];
    v8 = *(v6 + 3);
    v13[1] = *(v6 + 2);
    v13[2] = v8;
    v9 = *(v6 + 5);
    v13[3] = *(v6 + 4);
    v13[4] = v9;
    v13[0] = *(v6 + 1);
    type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
    v10 = swift_allocObject();
    memmove((v10 + 16), v6 + 2, 0x88uLL);
    sub_181E63A90(v13, v12);

    *a2 = v10;
    v6 = v10;
  }

  v6[10] = v4;
  v6[11] = v3;
}

void (*ApplicationServiceEndpoint1.deviceName.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x128uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 288) = v1;
  v5 = *(*v1 + 88);
  *(v4 + 272) = *(*v1 + 80);
  *(v4 + 280) = v5;

  return sub_18218177C;
}

void sub_18218177C(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 272);
  v3 = *(*a1 + 280);
  v5 = *(*a1 + 288);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = v2[36];
      *v2 = *(v7 + 1);
      v9 = *(v7 + 5);
      v11 = *(v7 + 2);
      v10 = *(v7 + 3);
      *(v2 + 3) = *(v7 + 4);
      *(v2 + 4) = v9;
      *(v2 + 1) = v11;
      *(v2 + 2) = v10;
      v13 = *(v7 + 7);
      v12 = *(v7 + 8);
      v14 = *(v7 + 6);
      v2[16] = v7[18];
      *(v2 + 6) = v13;
      *(v2 + 7) = v12;
      *(v2 + 5) = v14;
      type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
      v15 = swift_allocObject();
      memmove((v15 + 16), v7 + 2, 0x88uLL);
      sub_181E63A90(v2, (v2 + 17));

      *v8 = v15;
      v7 = v15;
    }

    v7[10] = v4;
    v7[11] = v3;
  }

  else
  {
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v5;
    if ((v16 & 1) == 0)
    {
      v18 = v2[36];
      *v2 = *(v17 + 1);
      v19 = *(v17 + 5);
      v21 = *(v17 + 2);
      v20 = *(v17 + 3);
      *(v2 + 3) = *(v17 + 4);
      *(v2 + 4) = v19;
      *(v2 + 1) = v21;
      *(v2 + 2) = v20;
      v23 = *(v17 + 7);
      v22 = *(v17 + 8);
      v24 = *(v17 + 6);
      v2[16] = v17[18];
      *(v2 + 6) = v23;
      *(v2 + 7) = v22;
      *(v2 + 5) = v24;
      type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
      v25 = swift_allocObject();
      memmove((v25 + 16), v17 + 2, 0x88uLL);
      sub_181E63A90(v2, (v2 + 17));

      *v18 = v25;
      v17 = v25;
    }

    v17[10] = v4;
    v17[11] = v3;
  }

  free(v2);
}

uint64_t sub_182181904(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *a2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = *(v6 + 7);
    v13[5] = *(v6 + 6);
    v13[6] = v7;
    v13[7] = *(v6 + 8);
    v14 = v6[18];
    v8 = *(v6 + 3);
    v13[1] = *(v6 + 2);
    v13[2] = v8;
    v9 = *(v6 + 5);
    v13[3] = *(v6 + 4);
    v13[4] = v9;
    v13[0] = *(v6 + 1);
    type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
    v10 = swift_allocObject();
    memmove((v10 + 16), v6 + 2, 0x88uLL);
    sub_181E63A90(v13, v12);

    *a2 = v10;
    v6 = v10;
  }

  v6[12] = v4;
  v6[13] = v3;
}

void (*ApplicationServiceEndpoint1.deviceModel.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x128uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 288) = v1;
  v5 = *(*v1 + 104);
  *(v4 + 272) = *(*v1 + 96);
  *(v4 + 280) = v5;

  return sub_182181A60;
}

void sub_182181A60(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 272);
  v3 = *(*a1 + 280);
  v5 = *(*a1 + 288);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = v2[36];
      *v2 = *(v7 + 1);
      v9 = *(v7 + 5);
      v11 = *(v7 + 2);
      v10 = *(v7 + 3);
      *(v2 + 3) = *(v7 + 4);
      *(v2 + 4) = v9;
      *(v2 + 1) = v11;
      *(v2 + 2) = v10;
      v13 = *(v7 + 7);
      v12 = *(v7 + 8);
      v14 = *(v7 + 6);
      v2[16] = v7[18];
      *(v2 + 6) = v13;
      *(v2 + 7) = v12;
      *(v2 + 5) = v14;
      type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
      v15 = swift_allocObject();
      memmove((v15 + 16), v7 + 2, 0x88uLL);
      sub_181E63A90(v2, (v2 + 17));

      *v8 = v15;
      v7 = v15;
    }

    v7[12] = v4;
    v7[13] = v3;
  }

  else
  {
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v5;
    if ((v16 & 1) == 0)
    {
      v18 = v2[36];
      *v2 = *(v17 + 1);
      v19 = *(v17 + 5);
      v21 = *(v17 + 2);
      v20 = *(v17 + 3);
      *(v2 + 3) = *(v17 + 4);
      *(v2 + 4) = v19;
      *(v2 + 1) = v21;
      *(v2 + 2) = v20;
      v23 = *(v17 + 7);
      v22 = *(v17 + 8);
      v24 = *(v17 + 6);
      v2[16] = v17[18];
      *(v2 + 6) = v23;
      *(v2 + 7) = v22;
      *(v2 + 5) = v24;
      type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
      v25 = swift_allocObject();
      memmove((v25 + 16), v17 + 2, 0x88uLL);
      sub_181E63A90(v2, (v2 + 17));

      *v18 = v25;
      v17 = v25;
    }

    v17[12] = v4;
    v17[13] = v3;
  }

  free(v2);
}

uint64_t sub_182181BE8(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *a2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = *(v6 + 7);
    v13[5] = *(v6 + 6);
    v13[6] = v7;
    v13[7] = *(v6 + 8);
    v14 = v6[18];
    v8 = *(v6 + 3);
    v13[1] = *(v6 + 2);
    v13[2] = v8;
    v9 = *(v6 + 5);
    v13[3] = *(v6 + 4);
    v13[4] = v9;
    v13[0] = *(v6 + 1);
    type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
    v10 = swift_allocObject();
    memmove((v10 + 16), v6 + 2, 0x88uLL);
    sub_181E63A90(v13, v12);

    *a2 = v10;
    v6 = v10;
  }

  v6[14] = v4;
  v6[15] = v3;
}

void (*ApplicationServiceEndpoint1.contactID.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x128uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 288) = v1;
  v5 = *(*v1 + 120);
  *(v4 + 272) = *(*v1 + 112);
  *(v4 + 280) = v5;

  return sub_182181D44;
}

void sub_182181D44(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 272);
  v3 = *(*a1 + 280);
  v5 = *(*a1 + 288);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = v2[36];
      *v2 = *(v7 + 1);
      v9 = *(v7 + 5);
      v11 = *(v7 + 2);
      v10 = *(v7 + 3);
      *(v2 + 3) = *(v7 + 4);
      *(v2 + 4) = v9;
      *(v2 + 1) = v11;
      *(v2 + 2) = v10;
      v13 = *(v7 + 7);
      v12 = *(v7 + 8);
      v14 = *(v7 + 6);
      v2[16] = v7[18];
      *(v2 + 6) = v13;
      *(v2 + 7) = v12;
      *(v2 + 5) = v14;
      type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
      v15 = swift_allocObject();
      memmove((v15 + 16), v7 + 2, 0x88uLL);
      sub_181E63A90(v2, (v2 + 17));

      *v8 = v15;
      v7 = v15;
    }

    v7[14] = v4;
    v7[15] = v3;
  }

  else
  {
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v5;
    if ((v16 & 1) == 0)
    {
      v18 = v2[36];
      *v2 = *(v17 + 1);
      v19 = *(v17 + 5);
      v21 = *(v17 + 2);
      v20 = *(v17 + 3);
      *(v2 + 3) = *(v17 + 4);
      *(v2 + 4) = v19;
      *(v2 + 1) = v21;
      *(v2 + 2) = v20;
      v23 = *(v17 + 7);
      v22 = *(v17 + 8);
      v24 = *(v17 + 6);
      v2[16] = v17[18];
      *(v2 + 6) = v23;
      *(v2 + 7) = v22;
      *(v2 + 5) = v24;
      type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
      v25 = swift_allocObject();
      memmove((v25 + 16), v17 + 2, 0x88uLL);
      sub_181E63A90(v2, (v2 + 17));

      *v18 = v25;
      v17 = v25;
    }

    v17[14] = v4;
    v17[15] = v3;
  }

  free(v2);
}

uint64_t sub_182181ECC(int *a1, uint64_t *a2)
{
  v3 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  v5 = *a2;
  if ((result & 1) == 0)
  {
    v6 = *(v5 + 112);
    v11[5] = *(v5 + 96);
    v11[6] = v6;
    v11[7] = *(v5 + 128);
    v12 = *(v5 + 144);
    v7 = *(v5 + 48);
    v11[1] = *(v5 + 32);
    v11[2] = v7;
    v8 = *(v5 + 80);
    v11[3] = *(v5 + 64);
    v11[4] = v8;
    v11[0] = *(v5 + 16);
    type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
    v9 = swift_allocObject();
    memmove((v9 + 16), (v5 + 16), 0x88uLL);
    sub_181E63A90(v11, v10);

    *a2 = v9;
    v5 = v9;
  }

  *(v5 + 128) = v3;
  return result;
}

void (*ApplicationServiceEndpoint1.deviceColor.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x120uLL);
  }

  *a1 = v3;
  *(v3 + 272) = v1;
  *(v3 + 280) = *(*v1 + 128);
  return sub_182182004;
}

void sub_182182004(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 272);
  v3 = *(*a1 + 280);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = v1[34];
    *v1 = *(v5 + 16);
    v7 = *(v5 + 80);
    v9 = *(v5 + 32);
    v8 = *(v5 + 48);
    *(v1 + 3) = *(v5 + 64);
    *(v1 + 4) = v7;
    *(v1 + 1) = v9;
    *(v1 + 2) = v8;
    v11 = *(v5 + 112);
    v10 = *(v5 + 128);
    v12 = *(v5 + 96);
    v1[16] = *(v5 + 144);
    *(v1 + 6) = v11;
    *(v1 + 7) = v10;
    *(v1 + 5) = v12;
    type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
    v13 = swift_allocObject();
    memmove((v13 + 16), (v5 + 16), 0x88uLL);
    sub_181E63A90(v1, (v1 + 17));

    *v6 = v13;
    v5 = v13;
  }

  *(v5 + 128) = v3;

  free(v1);
}

uint64_t sub_1821820DC(char *a1, uint64_t *a2)
{
  v3 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  v5 = *a2;
  if ((result & 1) == 0)
  {
    v6 = *(v5 + 112);
    v11[5] = *(v5 + 96);
    v11[6] = v6;
    v11[7] = *(v5 + 128);
    v12 = *(v5 + 144);
    v7 = *(v5 + 48);
    v11[1] = *(v5 + 32);
    v11[2] = v7;
    v8 = *(v5 + 80);
    v11[3] = *(v5 + 64);
    v11[4] = v8;
    v11[0] = *(v5 + 16);
    type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
    v9 = swift_allocObject();
    memmove((v9 + 16), (v5 + 16), 0x88uLL);
    sub_181E63A90(v11, v10);

    *a2 = v9;
    v5 = v9;
  }

  *(v5 + 132) = v3;
  return result;
}

void (*ApplicationServiceEndpoint1.advertisedRoute.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x120uLL);
  }

  *a1 = v3;
  *(v3 + 272) = v1;
  *(v3 + 280) = *(*v1 + 132);
  return sub_182182214;
}

void sub_182182214(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 272);
  v3 = *(*a1 + 280);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = v1[34];
    *v1 = *(v5 + 16);
    v7 = *(v5 + 80);
    v9 = *(v5 + 32);
    v8 = *(v5 + 48);
    *(v1 + 3) = *(v5 + 64);
    *(v1 + 4) = v7;
    *(v1 + 1) = v9;
    *(v1 + 2) = v8;
    v11 = *(v5 + 112);
    v10 = *(v5 + 128);
    v12 = *(v5 + 96);
    v1[16] = *(v5 + 144);
    *(v1 + 6) = v11;
    *(v1 + 7) = v10;
    *(v1 + 5) = v12;
    type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
    v13 = swift_allocObject();
    memmove((v13 + 16), (v5 + 16), 0x88uLL);
    sub_181E63A90(v1, (v1 + 17));

    *v6 = v13;
    v5 = v13;
  }

  *(v5 + 132) = v3;

  free(v1);
}

uint64_t sub_1821822EC(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *a2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = *(v6 + 7);
    v13[5] = *(v6 + 6);
    v13[6] = v7;
    v13[7] = *(v6 + 8);
    v14 = v6[18];
    v8 = *(v6 + 3);
    v13[1] = *(v6 + 2);
    v13[2] = v8;
    v9 = *(v6 + 5);
    v13[3] = *(v6 + 4);
    v13[4] = v9;
    v13[0] = *(v6 + 1);
    type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
    v10 = swift_allocObject();
    memmove((v10 + 16), v6 + 2, 0x88uLL);
    sub_181E63A90(v13, v12);

    *a2 = v10;
    v6 = v10;
  }

  v6[17] = v4;
  v6[18] = v3;
}

void (*ApplicationServiceEndpoint1.alias.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x128uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 288) = v1;
  v5 = *(*v1 + 144);
  *(v4 + 272) = *(*v1 + 136);
  *(v4 + 280) = v5;

  return sub_182182448;
}

void sub_182182448(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 272);
  v3 = *(*a1 + 280);
  v5 = *(*a1 + 288);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = v2[36];
      *v2 = *(v7 + 1);
      v9 = *(v7 + 5);
      v11 = *(v7 + 2);
      v10 = *(v7 + 3);
      *(v2 + 3) = *(v7 + 4);
      *(v2 + 4) = v9;
      *(v2 + 1) = v11;
      *(v2 + 2) = v10;
      v13 = *(v7 + 7);
      v12 = *(v7 + 8);
      v14 = *(v7 + 6);
      v2[16] = v7[18];
      *(v2 + 6) = v13;
      *(v2 + 7) = v12;
      *(v2 + 5) = v14;
      type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
      v15 = swift_allocObject();
      memmove((v15 + 16), v7 + 2, 0x88uLL);
      sub_181E63A90(v2, (v2 + 17));

      *v8 = v15;
      v7 = v15;
    }

    v7[17] = v4;
    v7[18] = v3;
  }

  else
  {
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v5;
    if ((v16 & 1) == 0)
    {
      v18 = v2[36];
      *v2 = *(v17 + 1);
      v19 = *(v17 + 5);
      v21 = *(v17 + 2);
      v20 = *(v17 + 3);
      *(v2 + 3) = *(v17 + 4);
      *(v2 + 4) = v19;
      *(v2 + 1) = v21;
      *(v2 + 2) = v20;
      v23 = *(v17 + 7);
      v22 = *(v17 + 8);
      v24 = *(v17 + 6);
      v2[16] = v17[18];
      *(v2 + 6) = v23;
      *(v2 + 7) = v22;
      *(v2 + 5) = v24;
      type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
      v25 = swift_allocObject();
      memmove((v25 + 16), v17 + 2, 0x88uLL);
      sub_181E63A90(v2, (v2 + 17));

      *v18 = v25;
      v17 = v25;
    }

    v17[17] = v4;
    v17[18] = v3;
  }

  free(v2);
}

uint64_t sub_1821825D0()
{
  v1 = *v0;
  v2 = v0[9];
  v3 = v0[11];
  v8 = *(v0 + 116);
  v9 = v0[13];
  v10 = v0[16];
  if (*v0)
  {
    sub_182AD44E8();
    v6 = *(v1 + 184);
    v7 = *(v1 + 185);
    MEMORY[0x1865DB070](*(v1 + 16));

    sub_182AD30E8();
    MEMORY[0x1865DB070](qword_182AFBF00[v6]);
    MEMORY[0x1865DB070](qword_182AFBF28[v7]);
    v4 = sub_182AD4558();
    MEMORY[0x1865DB070](v4);
  }

  sub_182AD30E8();
  sub_182AD30E8();
  sub_182AD44F8();
  if (v2)
  {
    sub_182AD4518();
    sub_182AD30E8();
    if (v3)
    {
      goto LABEL_5;
    }

LABEL_8:
    sub_182AD4518();
    if (v9)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  sub_182AD4518();
  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_5:
  sub_182AD4518();
  sub_182AD30E8();
  if (v9)
  {
LABEL_6:
    sub_182AD4518();
    sub_182AD30E8();
    goto LABEL_10;
  }

LABEL_9:
  sub_182AD4518();
LABEL_10:
  sub_182AD4538();
  if (v8 == 3)
  {
    sub_182AD4518();
    if (v10)
    {
LABEL_12:
      sub_182AD4518();
      return sub_182AD30E8();
    }
  }

  else
  {
    sub_182AD4518();
    MEMORY[0x1865DB070](v8);
    if (v10)
    {
      goto LABEL_12;
    }
  }

  return sub_182AD4518();
}

uint64_t sub_182182870()
{
  sub_182AD44E8();
  sub_1821825D0();
  return sub_182AD4558();
}

uint64_t sub_1821828E4()
{
  sub_182AD44E8();
  sub_1821825D0();
  return sub_182AD4558();
}

uint64_t sub_182182954()
{
  sub_182AD44E8();
  sub_1821825D0();
  return sub_182AD4558();
}

uint64_t sub_182182A1C()
{
  sub_182AD44E8();
  sub_1821825D0();
  return sub_182AD4558();
}

uint64_t sub_182182A94(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  v33[0] = *(a2 + 48);
  v33[1] = v3;
  v34 = 12;

  result = sub_182AD30D8();
  v31[0] = result;
  v31[1] = v5;
  v32 = 12;
  if (*(a2 + 88))
  {
    v6 = *(a2 + 80);
    v7 = *(a2 + 88);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v29[0] = v6;
  v29[1] = v7;
  v30 = 12;
  if (*(a2 + 104))
  {
    v8 = *(a2 + 96);
    v9 = *(a2 + 104);
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  v27[0] = v8;
  v27[1] = v9;
  v28 = 12;
  if (*(a2 + 120))
  {
    v10 = *(a2 + 112);
    v11 = *(a2 + 120);
  }

  else
  {
    v10 = 0;
    v11 = 0xE000000000000000;
  }

  v25[0] = v10;
  v25[1] = v11;
  v26 = 12;
  v23[0] = *(a2 + 128);
  v24 = 3;
  v12 = *(a2 + 132);
  if (v12 == 3)
  {
    v13 = 0;
LABEL_14:
    v22[0] = v13;
    v22[40] = 0;
    sub_181F80BF8(v33, &v15);
    sub_181F80BF8(v31, &v16);
    sub_181F80BF8(v29, &v17);
    sub_181F80BF8(v27, &v18);
    sub_181F80BF8(v25, &v19);
    sub_181F80BF8(v23, &v20);
    sub_181F80BF8(v22, &v21);
    v14 = MEMORY[0x1E69E7CC0];

    sub_1822A69B4(&v14);
    sub_1822A69B4(&v14);
    sub_1822A69B4(&v14);
    sub_1822A69B4(&v14);
    sub_1822A69B4(&v14);
    sub_1822A69B4(&v14);
    sub_1822A69B4(&v14);
    swift_arrayDestroy();
    sub_181F80C54(v22);
    sub_181F80C54(v23);
    sub_181F80C54(v25);
    sub_181F80C54(v27);
    sub_181F80C54(v29);
    sub_181F80C54(v31);
    sub_181F80C54(v33);
    return v14;
  }

  if (v12 != 255)
  {
    v13 = v12 + 1;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

BOOL static ApplicationServiceEndpoint1.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v5[0] = *a2;
  v5[1] = v2;
  v4 = 0;
  return sub_181E70734(v5, &v4);
}

uint64_t ApplicationServiceEndpoint1.hash(into:)()
{
  v1 = *(*v0 + 16);
  if (v1)
  {
    sub_182AD44E8();
    v2 = *(v1 + 184);
    v3 = *(v1 + 185);
    MEMORY[0x1865DB070](*(v1 + 16));

    sub_182AD30E8();
    MEMORY[0x1865DB070](qword_182AFBF00[v2]);
    MEMORY[0x1865DB070](qword_182AFBF28[v3]);
    v4 = sub_182AD4558();
    MEMORY[0x1865DB070](v4);
  }

  return result;
}

uint64_t sub_182182E18(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = *(v5 + 112);
    v12[5] = *(v5 + 96);
    v12[6] = v6;
    v12[7] = *(v5 + 128);
    v13 = *(v5 + 144);
    v7 = *(v5 + 48);
    v12[1] = *(v5 + 32);
    v12[2] = v7;
    v8 = *(v5 + 80);
    v12[3] = *(v5 + 64);
    v12[4] = v8;
    v12[0] = *(v5 + 16);
    type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
    v9 = swift_allocObject();
    memmove((v9 + 16), (v5 + 16), 0x88uLL);
    sub_181E63A90(v12, v11);

    *v1 = v9;
    v5 = v9;
  }

  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
}

void (*sub_182182EEC(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = ApplicationServiceEndpoint1.common.modify(v2);
  return sub_182088F74;
}

uint64_t sub_182182F9C()
{
  v1 = *v0;
  sub_182AD44E8();
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_182AD44E8();
    v3 = *(v2 + 184);
    v4 = *(v2 + 185);
    MEMORY[0x1865DB070](*(v2 + 16));

    sub_182AD30E8();
    MEMORY[0x1865DB070](qword_182AFBF00[v3]);
    MEMORY[0x1865DB070](qword_182AFBF28[v4]);
    v5 = sub_182AD4558();
    MEMORY[0x1865DB070](v5);
  }

  return sub_182AD4558();
}

BOOL sub_182183068(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v5[0] = *a2;
  v5[1] = v2;
  v4 = 0;
  return sub_181E70734(v5, &v4);
}

unint64_t sub_1821830B0(uint64_t a1)
{
  result = sub_1821830D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1821830D8()
{
  result = qword_1EA83ADE8;
  if (!qword_1EA83ADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83ADE8);
  }

  return result;
}

unint64_t sub_18218312C(uint64_t a1)
{
  result = sub_182183154();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_182183154()
{
  result = qword_1EA83ADF0;
  if (!qword_1EA83ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83ADF0);
  }

  return result;
}

unint64_t sub_1821831AC()
{
  result = qword_1EA83ADF8;
  if (!qword_1EA83ADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83ADF8);
  }

  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_182183244(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_18218328C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_182183300()
{
  result = qword_1EA83AE00;
  if (!qword_1EA83AE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AE00);
  }

  return result;
}

unint64_t sub_182183358()
{
  result = qword_1EA83AE08;
  if (!qword_1EA83AE08)
  {
    type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AE08);
  }

  return result;
}

BOOL sub_1821833B0(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v38 = a1[5];
  v39 = a1[4];
  v32 = a1[8];
  v36 = a1[9];
  v27 = a1[10];
  v34 = a1[11];
  v8 = a1[13];
  v22 = a1[12];
  v26 = *(a1 + 28);
  v23 = *(a1 + 116);
  v17 = a1[15];
  v20 = a1[16];
  v10 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  v12 = a2[3];
  v13 = a2[5];
  v37 = a2[4];
  v30 = v8;
  v31 = a2[8];
  v35 = a2[9];
  v33 = a2[11];
  v24 = a2[12];
  v28 = a2[10];
  v29 = a2[13];
  v25 = *(a2 + 28);
  *&v41[0] = v5;
  *(&v41[0] + 1) = v4;
  *&v40 = v10;
  *(&v40 + 1) = v9;
  v21 = *(a2 + 116);
  v18 = a2[15];
  v19 = a2[16];

  LOBYTE(v10) = _s7Network14EndpointCommonV2eeoiySbAC_ACtFZ_0(v41, &v40);

  if ((v10 & 1) == 0 || (v6 != v11 || v7 != v12) && (sub_182AD4268() & 1) == 0)
  {
    return 0;
  }

  if ((v39 != v37 || v38 != v13) && (sub_182AD4268() & 1) == 0)
  {
    return 0;
  }

  v14 = *(a1 + 3);
  v40 = *(a2 + 3);
  v41[0] = v14;
  if (!_s7Network10SystemUUIDV2eeoiySbAC_ACtFZ_0(v41, &v40))
  {
    return 0;
  }

  if (v36)
  {
    if (!v35 || (v32 != v31 || v36 != v35) && (sub_182AD4268() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v35)
  {
    return 0;
  }

  if (v34)
  {
    if (!v33 || (v27 != v28 || v34 != v33) && (sub_182AD4268() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v33)
  {
    return 0;
  }

  if (v30)
  {
    if (!v29)
    {
      return 0;
    }

    if (v22 == v24 && v30 == v29)
    {
      if (v26 != v25)
      {
        return 0;
      }

      goto LABEL_33;
    }

    v16 = sub_182AD4268();
    result = 0;
    if ((v16 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (v29)
    {
      return result;
    }
  }

  if (v26 != v25)
  {
    return result;
  }

LABEL_33:
  if (v23 == 3)
  {
    if (v21 != 3)
    {
      return 0;
    }

    goto LABEL_38;
  }

  result = 0;
  if (v21 != 3 && v23 == v21)
  {
LABEL_38:
    if (v20)
    {
      return v19 && (v17 == v18 && v20 == v19 || (sub_182AD4268() & 1) != 0);
    }

    return !v19;
  }

  return result;
}

BOOL sub_1821836DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 96);
  v3 = *(a1 + 128);
  v43 = *(a1 + 112);
  v44 = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 64);
  v39 = *(a1 + 48);
  v40 = v5;
  v6 = *(a1 + 64);
  v7 = *(a1 + 96);
  v41 = *(a1 + 80);
  v42 = v7;
  v8 = *(a1 + 32);
  v38[0] = *(a1 + 16);
  v38[1] = v8;
  v9 = *(a1 + 128);
  v35 = v43;
  v36 = v9;
  v31 = v39;
  v32 = v6;
  v33 = v41;
  v34 = v2;
  v29 = v38[0];
  v30 = v4;
  v10 = *(a2 + 96);
  v11 = *(a2 + 128);
  v51 = *(a2 + 112);
  v52 = v11;
  v12 = *(a2 + 32);
  v13 = *(a2 + 64);
  v47 = *(a2 + 48);
  v48 = v13;
  v14 = *(a2 + 64);
  v15 = *(a2 + 96);
  v49 = *(a2 + 80);
  v50 = v15;
  v16 = *(a2 + 32);
  v46[0] = *(a2 + 16);
  v46[1] = v16;
  v17 = *(a2 + 128);
  v26 = v51;
  v27 = v17;
  v22 = v47;
  v23 = v14;
  v24 = v49;
  v25 = v10;
  v45 = *(a1 + 144);
  v37 = *(a1 + 144);
  v53 = *(a2 + 144);
  v28 = *(a2 + 144);
  v20 = v46[0];
  v21 = v12;
  sub_181E63A90(v38, v56);
  sub_181E63A90(v46, v56);
  v18 = sub_1821833B0(&v29, &v20);
  v54[6] = v26;
  v54[7] = v27;
  v55 = v28;
  v54[2] = v22;
  v54[3] = v23;
  v54[4] = v24;
  v54[5] = v25;
  v54[0] = v20;
  v54[1] = v21;
  sub_181E655B0(v54);
  v56[6] = v35;
  v56[7] = v36;
  v57 = v37;
  v56[2] = v31;
  v56[3] = v32;
  v56[4] = v33;
  v56[5] = v34;
  v56[0] = v29;
  v56[1] = v30;
  sub_181E655B0(v56);
  return v18;
}

uint64_t sub_182183834@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A470);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838BB0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v25 - v10;
  v12 = sub_182AD2058();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v25 - v17;
  sub_182184314(a1, a2, v11);

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v19 = &unk_1EA838BB0;
    v20 = v11;
  }

  else
  {
    (*(v13 + 32))(v18, v11, v12);
    (*(v13 + 16))(v15, v18, v12);
    sub_181B2BB30(v15, v8);
    (*(v13 + 8))(v18, v12);
    v21 = type metadata accessor for URLEndpoint();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(v8, 1, v21))
    {
      sub_181B2BEE4(v8, a3);
      return (*(v22 + 56))(a3, 0, 1, v21);
    }

    v19 = &unk_1EA83A470;
    v20 = v8;
  }

  sub_181F49A88(v20, v19);
  v23 = type metadata accessor for URLEndpoint();
  return (*(*(v23 - 8) + 56))(a3, 1, 1, v23);
}

void *sub_182183B4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838BB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v33 - v5;
  v7 = sub_182AD2058();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URLEndpoint();
  v12 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_181FAEEC4(a1, &v40);
  if (v40 == 1)
  {
    return (*(v12 + 56))(a2, 1, 1, v11);
  }

  v34 = v10;
  v35 = v8;
  v15 = v41;
  *v14 = v40;
  *(v14 + 1) = v15;
  v36 = v15;
  v37 = a2;
  v46 = 0;
  v47 = 0xE000000000000000;
  v45 = 0;
  v16 = *a1;
  v17 = *a1 + 32;
  v18 = v17 + *(*a1 + 16);
  v40 = v17;
  v41 = v18;
  v42 = 0;
  v43 = 0;
  v44 = 1;

  sub_1820D562C(&v46, v39);
  result = Deserializer.uint16(_:)(&v38, &v45);
  v20 = v42;
  if (v44 == 1)
  {
    if (v43)
    {

LABEL_15:
      a2 = v37;

      return (*(v12 + 56))(a2, 1, 1, v11);
    }

    if (v40)
    {
      v21 = v41 - v40;
    }

    else
    {
      v21 = 0;
    }

    v22 = __OFSUB__(v21, v42);
    v23 = v21 - v42;
    if (v22)
    {
      __break(1u);
    }

    else if ((v23 & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

    __break(1u);
    return result;
  }

LABEL_10:
  v24 = *(v16 + 16);
  if (v24 < v42)
  {
    __break(1u);
  }

  else if ((v42 & 0x8000000000000000) == 0)
  {
    v25 = v16;
    if (!v42)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

  __break(1u);
LABEL_24:
  sub_1822D0918(v16, v17, v20, (2 * v24) | 1);
  v25 = v32;

LABEL_13:
  *a1 = v25;

  sub_182184314(v46, v47, v6);
  v26 = v35;
  if ((*(v35 + 48))(v6, 1, v7) == 1)
  {
    sub_181F49A88(v6, &unk_1EA838BB0);
    goto LABEL_15;
  }

  v27 = v11[7];
  v28 = v34;
  (*(v26 + 32))(v34, v6, v7);
  (*(v26 + 16))(&v14[v11[5]], v28, v7);
  *&v14[v27] = v45;
  sub_182AD2038();
  v29 = v37;
  if (v30)
  {
    v31 = sub_182184C38();

    (*(v26 + 8))(v28, v7);

    v14[v11[6]] = v31 & 1;
  }

  else
  {
    (*(v26 + 8))(v28, v7);

    v14[v11[6]] = 0;
  }

  sub_181B2BE24(v14, v29);
  (*(v12 + 56))(v29, 0, 1, v11);
  return sub_181B2BE88(v14);
}

uint64_t URLEndpoint.description.getter()
{
  type metadata accessor for URLEndpoint();
  v0 = sub_182AD1F98();
  CFURLGetBytes(v0, 0, 0);
  v1 = sub_182AD30D8();

  return v1;
}

uint64_t URLEndpoint.hashValue.getter()
{
  sub_182AD44E8();
  v1 = *v0;
  if (*v0)
  {
    sub_182AD44E8();
    v2 = *(v1 + 184);
    v3 = *(v1 + 185);
    MEMORY[0x1865DB070](*(v1 + 16));

    sub_182AD30E8();
    MEMORY[0x1865DB070](qword_182AFC048[v2]);
    MEMORY[0x1865DB070](qword_182AFC070[v3]);
    v4 = sub_182AD4558();
    MEMORY[0x1865DB070](v4);
  }

  type metadata accessor for URLEndpoint();
  sub_182AD2058();
  sub_182184BF0(&qword_1EA8366A0, MEMORY[0x1E6968FB0]);
  sub_182AD2EB8();
  return sub_182AD4558();
}

uint64_t URLEndpoint.common.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t URLEndpoint.common.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t URLEndpoint.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for URLEndpoint() + 20);
  v4 = sub_182AD2058();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t URLEndpoint.inferredPort.setter(__int16 a1)
{
  result = type metadata accessor for URLEndpoint();
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_182184314@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{

  if ((a2 & 0x1000000000000000) != 0)
  {
    a1 = sub_18224FE14();
    v10 = v9;

    a2 = v10;
    if ((v10 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v7 = HIBYTE(a2) & 0xF;
    v18[0] = a1;
    v18[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v8 = *MEMORY[0x1E695E480];
    v6 = v18;
    goto LABEL_8;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((a1 & 0x1000000000000000) != 0)
  {
    v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v16 = sub_182AD3CF8();
    v7 = v17;
    v6 = v16;
  }

  v8 = *MEMORY[0x1E695E480];
LABEL_8:
  v11 = CFURLCreateAbsoluteURLWithBytes(v8, v6, v7, 0x600u, 0, 0);
  if (v11)
  {
    v12 = v11;
    sub_182AD1FD8();

    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = sub_182AD2058();
  (*(*(v14 - 8) + 56))(a3, v13, 1, v14);
}

uint64_t sub_18218444C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for URLEndpoint();
  v4 = sub_182AD1F98();
  CFURLGetBytes(v4, 0, 0);
  v5 = sub_182AD30D8();
  v7 = v6;

  v14[0] = v5;
  v14[1] = v7;
  v15 = 12;
  v12[0] = *(a2 + *(v3 + 28));
  v13 = 1;
  sub_181F80BF8(v14, &v10);
  sub_181F80BF8(v12, &v11);
  v9 = MEMORY[0x1E69E7CC0];
  sub_1822A69B4(&v9);
  sub_1822A69B4(&v9);
  swift_arrayDestroy();
  sub_181F80C54(v12);
  sub_181F80C54(v14);
  return v9;
}

Swift::String __swiftcall URLEndpoint.descriptionInternal(redacted:)(Swift::Bool redacted)
{
  type metadata accessor for URLEndpoint();
  v2 = sub_182AD1F98();
  CFURLGetBytes(v2, 0, 0);
  if (redacted)
  {
    sub_182AD30D8();

    v3 = swift_slowAlloc();
    v4 = sub_182AD3048();
    __nwlog_create_hash_from_private_string((v4 + 32), v3);

    v5 = sub_182AD3158();
    v7 = v6;
    MEMORY[0x1865DF520](v3, -1, -1);

    MEMORY[0x1865D9CA0](v5, v7);

    v8 = 592204373;
    v9 = 0xE400000000000000;
  }

  else
  {
    v10 = sub_182AD30D8();
    v12 = v11;

    v9 = v12;
    v8 = v10;
  }

  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

uint64_t URLEndpoint.hash(into:)()
{
  v1 = *v0;
  if (*v0)
  {
    sub_182AD44E8();
    v2 = *(v1 + 184);
    v3 = *(v1 + 185);
    MEMORY[0x1865DB070](*(v1 + 16));

    sub_182AD30E8();
    MEMORY[0x1865DB070](qword_182AFC048[v2]);
    MEMORY[0x1865DB070](qword_182AFC070[v3]);
    v4 = sub_182AD4558();
    MEMORY[0x1865DB070](v4);
  }

  type metadata accessor for URLEndpoint();
  sub_182AD2058();
  sub_182184BF0(&qword_1EA8366A0, MEMORY[0x1E6968FB0]);
  return sub_182AD2EB8();
}

uint64_t sub_182184858()
{
  v0 = sub_182AD1F98();
  CFURLGetBytes(v0, 0, 0);
  v1 = sub_182AD30D8();

  return v1;
}

uint64_t sub_1821848E0()
{
  sub_182AD44E8();
  v1 = *v0;
  if (*v0)
  {
    sub_182AD44E8();
    v2 = *(v1 + 184);
    v3 = *(v1 + 185);
    MEMORY[0x1865DB070](*(v1 + 16));

    sub_182AD30E8();
    MEMORY[0x1865DB070](qword_182AFC048[v2]);
    MEMORY[0x1865DB070](qword_182AFC070[v3]);
    v4 = sub_182AD4558();
    MEMORY[0x1865DB070](v4);
  }

  sub_182AD2058();
  sub_182184BF0(&qword_1EA8366A0, MEMORY[0x1E6968FB0]);
  sub_182AD2EB8();
  return sub_182AD4558();
}

uint64_t _s7Network11URLEndpointV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v7[2] = *a1;
  v7[3] = v2;
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v6 = 0;

  v4 = sub_181B0AD48(v7, &v6);

  if (!v4)
  {
    return 0;
  }

  type metadata accessor for URLEndpoint();

  return sub_182AD1FB8();
}

uint64_t sub_182184AF8(uint64_t a1)
{
  result = sub_182184BF0(&qword_1EA83AE10, type metadata accessor for URLEndpoint);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_182184B50(uint64_t a1)
{
  result = sub_182184BF0(&qword_1EA83AE18, type metadata accessor for URLEndpoint);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_182184BF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_182184C38()
{
  v1 = sub_182AD3028();
  v2 = v0;
  if (v1 == 0x7370747468 && v0 == 0xE500000000000000 || (sub_182AD4268() & 1) != 0 || v1 == 0x6E752B7370747468 && v2 == 0xEA00000000007869 || (sub_182AD4268() & 1) != 0 || v1 == 7566199 && v2 == 0xE300000000000000 || (sub_182AD4268() & 1) != 0 || v1 == 0x78696E752B737377 && v2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v4 = sub_182AD4268();

    return v4 & 1;
  }
}

uint64_t sub_182184DBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_181FB77B0(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      sub_181C65504(v4, v9);
      swift_dynamicCast();
      v5 = v9[4];
      v10 = v2;
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_181FB77B0((v6 > 1), v7 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v7 + 1;
      *(v2 + 8 * v7 + 32) = v5;
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_182184EB8(uint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t), uint64_t *a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v17 = MEMORY[0x1E69E7CC0];
    a2(0, v3, 0);
    v4 = v17;
    v7 = a1 + 56;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B1F0);
      __swift_instantiateConcreteTypeFromMangledNameV2(a3);
      swift_dynamicCast();
      v9 = *(v17 + 16);
      v8 = *(v17 + 24);
      if (v9 >= v8 >> 1)
      {
        a2(v8 > 1, v9 + 1, 1);
      }

      *(v17 + 16) = v9 + 1;
      v10 = (v17 + 32 * v9);
      v10[4] = v13;
      v10[5] = v14;
      v10[6] = v15;
      v10[7] = v16;
      v7 += 32;
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t sub_182185004@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t ConnectionProtocol.startIfNeeded(queue:)(NSObject *a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 40))(a2, a3);
  if (result)
  {
    v5 = *(result + 24);
    os_unfair_lock_lock((v5 + 96));
    v6 = *(v5 + 93);
    os_unfair_lock_unlock((v5 + 96));
    if ((v6 & 1) == 0)
    {
      NWConnection.start(queue:)(a1);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ConnectionProtocol.hash(into:)()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v3 = &v5 - v2;
  sub_182AD3BD8();
  swift_getAssociatedConformanceWitness();
  sub_182AD2EB8();
  return (*(v1 + 8))(v3, AssociatedTypeWitness);
}

uint64_t static UDP.send<A>(connection:content:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_18218522C, 0, 0);
}

uint64_t sub_18218522C()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *(v5 + 16) = *(v0 + 48);
  *(v5 + 32) = v4;
  *(v5 + 40) = v1;
  *(v5 + 48) = v3;
  *(v5 + 56) = v2;
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_182185338;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000022, 0x8000000182BDFAC0, sub_1821AEC3C, v5, v7);
}

uint64_t sub_182185338()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1821EC160;
  }

  else
  {

    v2 = sub_181F5EB58;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_182185454(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1821A6F68(a1, a2);
  return v4;
}

uint64_t static JSON.send<A>(connection:content:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = a8;
  *(v8 + 72) = v10;
  *(v8 + 48) = a6;
  *(v8 + 56) = a7;
  *(v8 + 32) = a3;
  *(v8 + 40) = a5;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 120) = *a4;
  *(v8 + 80) = *(a4 + 8);
  return MEMORY[0x1EEE6DFA0](sub_1821854E8, 0, 0);
}

uint64_t sub_1821854E8()
{
  v1 = *(v0 + 72);
  v15 = *(v0 + 80);
  v14 = *(v0 + 120);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);
  v9 = swift_task_alloc();
  *(v0 + 88) = v9;
  *(v9 + 16) = v5;
  *(v9 + 24) = v4;
  *(v9 + 32) = v3;
  *(v9 + 40) = v2;
  *(v9 + 48) = v1;
  *(v9 + 56) = v8;
  *(v9 + 64) = v14;
  *(v9 + 72) = v15;
  *(v9 + 80) = v6;
  *(v9 + 88) = v7;
  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  v10[2] = v5;
  v10[3] = v4;
  v10[4] = v3;
  v10[5] = v2;
  v10[6] = v1;
  v10[7] = v8;
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  *v11 = v0;
  v11[1] = sub_182185648;
  v12 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v11, &unk_182AFC0C8, v9, sub_1821EC224, v10, 0, 0, v12);
}

uint64_t sub_182185648()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1821EC150;
  }

  else
  {

    v2 = sub_181F5EB58;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t static WebSocket.send<A>(connection:content:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a3;
  *(v6 + 40) = a5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 100) = *a4;
  v7 = *(a4 + 2);
  *(v6 + 98) = *(a4 + 4);
  *(v6 + 96) = v7;
  *(v6 + 101) = *(a4 + 5);
  *(v6 + 102) = *(a4 + 6);
  v8 = *(a4 + 8);
  *(v6 + 48) = a6;
  *(v6 + 56) = v8;
  return MEMORY[0x1EEE6DFA0](sub_1821857C4, 0, 0);
}

uint64_t sub_1821857C4()
{
  v15 = *(v0 + 101);
  v16 = *(v0 + 102);
  v14 = *(v0 + 96);
  v1 = *(v0 + 98);
  v2 = *(v0 + 100);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *(v9 + 16) = v6;
  *(v9 + 24) = v4;
  *(v9 + 32) = v8;
  *(v9 + 40) = v7;
  *(v9 + 48) = v5;
  *(v9 + 56) = v2;
  *(v9 + 60) = v1;
  *(v9 + 58) = v14;
  *(v9 + 61) = v15;
  *(v9 + 62) = v16;
  *(v9 + 64) = v3;
  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  v10[2] = v6;
  v10[3] = v4;
  v10[4] = v8;
  v11 = swift_task_alloc();
  *(v0 + 80) = v11;
  *v11 = v0;
  v11[1] = sub_182185934;
  v12 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v11, &unk_182AFC0E0, v9, sub_1821EC220, v10, 0, 0, v12);
}

uint64_t sub_182185934()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_182185A58;
  }

  else
  {

    v2 = sub_181F5EB58;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_182185A58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static WebSocket.mapLegacy(_:)(_BYTE *a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  *a1 = *a4;
  sub_181F49B58(a2, a3);
  sub_181F49B58(a2, a3);

  sub_181C1F2E4(a2, a3);
  return a2;
}

void *sub_182185B3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_182AD4588();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v34 = MEMORY[0x1E69E7CC0];
  v14 = *(v8 + 16);
  v14(v28 - v15, a1, a2, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839C30);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(&v31);
    (v14)(v11, a1, a2);
    swift_dynamicCast();
    v16 = sub_181F5AA14(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v18 = v16[2];
    v17 = v16[3];
    if (v18 >= v17 >> 1)
    {
      v16 = sub_181F5AA14((v17 > 1), v18 + 1, 1, v16);
    }

    v16[2] = v18 + 1;
    v19 = v16;
    sub_181F3CF20(&v31, &v16[5 * v18 + 4]);
    return v19;
  }

  else
  {
    *(&v32 + 1) = a2;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v31);
    (v14)(boxed_opaque_existential_0Tm, a1, a2);
    sub_182AD4568();
    sub_182AD4578();
    (*(v5 + 8))(v7, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AE50);
    v22 = sub_182AD3E08();

    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = MEMORY[0x1E69E7CC0];
      v25 = v22 + 32;
      do
      {
        sub_181AB5D28(v25, &v31, &qword_1EA83AE50);
        v28[0] = v31;
        v28[1] = v32;
        v29 = v33;
        if (*(&v32 + 1))
        {
          sub_181F3CF20(v28, v30);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = sub_181F5AA14(0, v24[2] + 1, 1, v24);
          }

          v27 = v24[2];
          v26 = v24[3];
          if (v27 >= v26 >> 1)
          {
            v24 = sub_181F5AA14((v26 > 1), v27 + 1, 1, v24);
          }

          v24[2] = v27 + 1;
          sub_181F3CF20(v30, &v24[5 * v27 + 4]);
        }

        else
        {
          sub_181F49A88(v28, &qword_1EA83AE50);
        }

        v25 += 40;
        --v23;
      }

      while (v23);
    }

    else
    {

      v24 = MEMORY[0x1E69E7CC0];
    }

    sub_1820D4E4C(v24);
    return v34;
  }
}

uint64_t static UDP.receive<A>(connection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x1EEE6DFA0](sub_182185FB0, 0, 0);
}

uint64_t sub_182185FB0()
{
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *(v2 + 16) = *(v0 + 56);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AE30);
  *v3 = v0;
  v3[1] = sub_1821860C0;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000014, 0x8000000182BDFAF0, sub_1821DDACC, v2, v4);
}

uint64_t sub_1821860C0()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1821EBD74;
  }

  else
  {

    v2 = sub_1820AC638;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t static TLV.send<A>(connection:content:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  *(v6 + 56) = *a4;
  *(v6 + 112) = *(a4 + 16);
  *(v6 + 113) = *(a4 + 17);
  *(v6 + 72) = *(a4 + 24);
  return MEMORY[0x1EEE6DFA0](sub_182186224, 0, 0);
}

uint64_t sub_182186224()
{
  v15 = *(v0 + 113);
  v1 = *(v0 + 112);
  v2 = *(v0 + 64);
  v14 = *(v0 + 72);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  *(v9 + 16) = v5;
  *(v9 + 24) = v4;
  *(v9 + 32) = v8;
  *(v9 + 40) = v3;
  *(v9 + 48) = v2;
  *(v9 + 56) = v1;
  *(v9 + 57) = v15;
  *(v9 + 64) = v14;
  *(v9 + 72) = v7;
  *(v9 + 80) = v6;
  v10 = swift_task_alloc();
  *(v0 + 88) = v10;
  v10[2] = v5;
  v10[3] = v4;
  v10[4] = v8;
  v11 = swift_task_alloc();
  *(v0 + 96) = v11;
  *v11 = v0;
  v11[1] = sub_182186384;
  v12 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v11, &unk_182AFC108, v9, sub_1821DDBD8, v10, 0, 0, v12);
}

uint64_t sub_182186384()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1821EC14C;
  }

  else
  {

    v2 = sub_181F5EB58;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t static TLV.receive<A>(connection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1821864CC, 0, 0);
}

uint64_t sub_1821864CC()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = swift_task_alloc();
  v0[12] = v4;
  v4[2] = v2;
  v4[3] = v1;
  v4[4] = v3;
  v5 = swift_task_alloc();
  v0[13] = v5;
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v3;
  v6 = swift_task_alloc();
  v0[14] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A120);
  *v6 = v0;
  v6[1] = sub_1821865FC;

  return MEMORY[0x1EEE6DE18](v0 + 2, &unk_182AFC120, v4, sub_1821EC220, v5, 0, 0, v7);
}

uint64_t sub_1821865FC()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_182186720;
  }

  else
  {

    v2 = sub_1821EBE44;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_182186720()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static TLV.mapLegacy(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = *(a3 + 17);
  v9 = a3[3];
  sub_181F49B58(a1, a2);
  sub_181F49B58(a1, a2);

  result = sub_181C1F2E4(a1, a2);
  *a4 = v7;
  *(a4 + 8) = a1;
  *(a4 + 16) = a2;
  *(a4 + 24) = v9;
  *(a4 + 32) = v8;
  return result;
}

uint64_t static JSON.receive<A>(connection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  type metadata accessor for JSON.Metadata();
  v8[10] = swift_getTupleTypeMetadata2();
  v8[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1821868CC, 0, 0);
}

uint64_t sub_1821868CC()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v7 = swift_task_alloc();
  v0[12] = v7;
  v7[2] = v5;
  v7[3] = v4;
  v7[4] = v3;
  v7[5] = v2;
  v7[6] = v1;
  v7[7] = v6;
  v8 = swift_task_alloc();
  v0[13] = v8;
  v8[2] = v5;
  v8[3] = v4;
  v8[4] = v3;
  v8[5] = v2;
  v8[6] = v1;
  v8[7] = v6;
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_1821869F8;
  v11 = v0[10];
  v10 = v0[11];

  return MEMORY[0x1EEE6DE18](v10, &unk_182AFC140, v7, sub_1821EC224, v8, 0, 0, v11);
}

uint64_t sub_1821869F8()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1821EC204;
  }

  else
  {

    v2 = sub_1821EBE4C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t static WebSocket.receive<A>(connection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  return MEMORY[0x1EEE6DFA0](sub_182186B70, 0, 0);
}

uint64_t sub_182186B70()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = swift_task_alloc();
  v0[10] = v4;
  v4[2] = v2;
  v4[3] = v1;
  v4[4] = v3;
  v5 = swift_task_alloc();
  v0[11] = v5;
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v3;
  v6 = swift_task_alloc();
  v0[12] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AE40);
  *v6 = v0;
  v6[1] = sub_182186CA0;

  return MEMORY[0x1EEE6DE18](v0 + 2, &unk_182AFC158, v4, sub_1821EC220, v5, 0, 0, v7);
}

uint64_t sub_182186CA0()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_182186DC4;
  }

  else
  {

    v2 = sub_1820AC634;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_182186DC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static WebSocket.sendIdempotent<A>(connection:content:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  (*(a6 + 48))(qword_1EA8433A8, a5, a6);
  result = (*(a6 + 40))(a5, a6);
  if (result)
  {
    v9 = result;
    v10 = WebSocket.Metadata.toContentContext()();
    v11 = *(v9 + 16);
    v12 = sub_182AD2138();
    v14 = NWCreateDispatchDataFromNSData(v12, v13);

    nw_connection_send_idempotent(v11, v14, *(v10 + 16), 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static TLV.sendIdempotent<A>(connection:content:metadata:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v10 = *a4;
  v11 = a4[3];
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  result = (*(a6 + 48))(qword_1EA8433A8, a5, a6);
  v13 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v13)
    {
      v14 = BYTE6(a3);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v13 != 2)
  {
    v14 = 0;
    goto LABEL_13;
  }

  v16 = *(a2 + 16);
  v15 = *(a2 + 24);
  v14 = v15 - v16;
  if (__OFSUB__(v15, v16))
  {
    __break(1u);
LABEL_10:
    if (__OFSUB__(HIDWORD(a2), a2))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

    v14 = HIDWORD(a2) - a2;
  }

LABEL_13:

  _s7Network16NWProtocolFramerC7MessageC4type6lengthAESi_SitcfC_0(v10, v14);
  MEMORY[0x1865D9F10]();
  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_182AD3408();
  }

  sub_182AD3448();
  result = (*(a6 + 40))(a5, a6);
  if (!result)
  {
    goto LABEL_20;
  }

  v17 = result;

  v18 = TLV.Metadata.toContentContext()();
  v19 = *(v17 + 16);
  v20 = sub_182AD2138();
  v22 = NWCreateDispatchDataFromNSData(v20, v21);

  nw_connection_send_idempotent(v19, v22, *(v18 + 16), 1);
}

uint64_t Connection1.__allocating_init(using:)(uint64_t a1)
{
  v1 = sub_1821DE4C4(a1);

  return v1;
}

void NWParametersBuilder.parameters(applicationService:)(char a1)
{
  v3 = v1[1];
  v4 = *(*v1 + 16);

  os_unfair_lock_lock((v4 + 24));
  v5 = nw_parameters_copy(*(v4 + 16));
  type metadata accessor for NWParameters();
  v6 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A00);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  v8 = (v7 + 24);
  *(v7 + 16) = v5;
  *(v6 + 16) = v7;
  os_unfair_lock_unlock((v4 + 24));
  if ((a1 & 1) == 0)
  {
LABEL_5:
    v9 = v3[2];
    if (!v9)
    {
      goto LABEL_19;
    }

LABEL_16:
    v12 = 0;
    v13 = (v3 + 4);
    while (v12 < v3[2])
    {
      sub_181F75240(v13, &v20);
      ++v12;
      v14 = *(&v21 + 1);
      v15 = v22;
      __swift_project_boxed_opaque_existential_1(&v20, *(&v21 + 1));
      os_unfair_lock_lock(v8);
      v16 = *(v7 + 16);
      swift_unknownObjectRetain();
      os_unfair_lock_unlock(v8);
      (*(v15 + 56))(v16, v14, v15);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(&v20);
      v13 += 40;
      if (v9 == v12)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  if (!v3[2])
  {
    goto LABEL_15;
  }

  sub_181F75240((v3 + 4), &v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839C30);
  if (swift_dynamicCast())
  {
    os_unfair_lock_lock(v8);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock(v8);
    nw_parameters_configure_application_service();
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  if (!v3[2] || (sub_181F75240((v3 + 4), v33), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839C30), (swift_dynamicCast() & 1) == 0))
  {
LABEL_15:
    os_unfair_lock_lock(v8);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock(v8);
    nw_parameters_configure_application_service_quic(v5);
    swift_unknownObjectRelease();
    NWParameters.preferredNetworkAgents.setter();
    v9 = v3[2];
    if (!v9)
    {
LABEL_19:

      return;
    }

    goto LABEL_16;
  }

  v18[10] = v30;
  v18[11] = v31;
  v19[0] = *v32;
  *(v19 + 15) = *&v32[15];
  v18[6] = v26;
  v18[7] = v27;
  v18[8] = v28;
  v18[9] = v29;
  v18[2] = v22;
  v18[3] = v23;
  v18[4] = v24;
  v18[5] = v25;
  v18[0] = v20;
  v18[1] = v21;
  sub_1821DE500(v18);
  if (!v3[2])
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_181F75240((v3 + 4), v17);
  sub_181F49A88(v17, &qword_1EA83AE50);
  v10 = v3[2];
  if (v10)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17[0] = v3;
    if (!isUniquelyReferenced_nonNull_native || (v10 - 1) > v3[3] >> 1)
    {
      v3 = sub_181F5AA14(isUniquelyReferenced_nonNull_native, v10, 1, v3);
      v17[0] = v3;
    }

    sub_18206A98C(0, 1, 0);
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
}

void NWParametersBuilder.parametersNestedStack(applicationService:)(char a1)
{
  v3 = v1[1];
  v4 = *(*v1 + 16);
  os_unfair_lock_lock((v4 + 24));
  v5 = nw_parameters_copy(*(v4 + 16));
  type metadata accessor for NWParameters();
  v6 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A00);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v6 + 16) = v7;
  *(v7 + 24) = 0;
  v8 = (v7 + 24);
  os_unfair_lock_unlock((v4 + 24));
  v9 = *(v3 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = v3 + 32;
    while (v10 < *(v3 + 16))
    {
      sub_181F75240(v11, &v20);
      ++v10;
      v12 = *(&v21 + 1);
      v13 = v22;
      __swift_project_boxed_opaque_existential_1(&v20, *(&v21 + 1));
      os_unfair_lock_lock(v8);
      swift_unknownObjectRetain();
      os_unfair_lock_unlock(v8);
      (*(v13 + 64))(v5, v12, v13);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(&v20);
      v11 += 40;
      if (v9 == v10)
      {
        if ((a1 & 1) == 0)
        {
          return;
        }

        if (*(v3 + 16))
        {
          sub_181F75240(v3 + 32, v33);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839C30);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_12;
          }

          v18[10] = v30;
          v18[11] = v31;
          v19[0] = *v32;
          *(v19 + 15) = *&v32[15];
          v18[6] = v26;
          v18[7] = v27;
          v18[8] = v28;
          v18[9] = v29;
          v18[2] = v22;
          v18[3] = v23;
          v18[4] = v24;
          v18[5] = v25;
          v18[0] = v20;
          v18[1] = v21;
          os_unfair_lock_lock(v8);
          swift_unknownObjectRetain();
          os_unfair_lock_unlock(v8);
          sub_182197B30();
          v15 = *(v14 + 16);
          swift_unknownObjectRetain();

          options = nw_udp_create_options();
          v17 = options;
          if (BYTE10(v19[0]) != 2)
          {
            nw_udp_options_set_prefer_no_checksum(options, BYTE10(v19[0]) & 1);
          }

          nw_parameters_configure_application_service_quic_with_options(v5, v15, v17);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          NWParameters.preferredNetworkAgents.setter();
          sub_1821DE500(v18);
          return;
        }

LABEL_15:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  if (a1)
  {
LABEL_12:
    os_unfair_lock_lock(v8);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock(v8);
    nw_parameters_configure_application_service();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_182187888(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 16))(v4, v5);
  return a3(v6 & 1);
}

uint64_t sub_1821878FC(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1821B2DF4(a1);
  return v2;
}

uint64_t sub_18218793C(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6(a2, a3, sub_1821EAE50, v8);

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t Serializer.unsignedNetworkByteOrder<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v64 = a4;
  v62 = *(*(*(a3 + 8) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v61 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v61 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v63 = &v61 - v18;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v61 - v21;
  v24 = *(v7 + 16);
  switch(v20)
  {
    case 4:
      v24(v13, a1, a2, v22);
      if (sub_182AD3A78() & 1) == 0 || (swift_getAssociatedConformanceWitness(), sub_182AD43D8(), v37 = v63, sub_182AD4238(), v38 = sub_182AD2EF8(), result = (*(v7 + 8))(v37, a2), (v38))
      {
        if (sub_182AD3A68() <= 31)
        {
          goto LABEL_47;
        }

        v67 = -1;
        v39 = sub_182AD3A78();
        v40 = sub_182AD3A68();
        if (v39)
        {
          if (v40 > 32)
          {
            goto LABEL_36;
          }

          swift_getAssociatedConformanceWitness();
          sub_182AD43D8();
          v41 = v63;
          sub_182AD4238();
          v42 = sub_182AD2ED8();
          (*(v7 + 8))(v41, a2);
          if ((v42 & 1) == 0)
          {
            goto LABEL_47;
          }

          goto LABEL_46;
        }

LABEL_35:
        if (v40 >= 33)
        {
LABEL_36:
          sub_181AA5BC8();
          v23 = v63;
          sub_182AD3A48();
          v51 = sub_182AD2EE8();
          v28 = (*(v7 + 8))(v23, a2);
          if (v51)
          {
            __break(1u);
            goto LABEL_38;
          }

LABEL_47:
          v58 = sub_182AD3A58();
          result = (*(v7 + 8))(v13, a2);
          v56 = v64;
          *v64 = v58;
          v57 = 6;
          goto LABEL_52;
        }

LABEL_46:
        sub_182AD3A58();
        goto LABEL_47;
      }

LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    case 2:
      v24(v16, a1, a2, v22);
      if (sub_182AD3A78() & 1) == 0 || (v10 = v62, swift_getAssociatedConformanceWitness(), sub_182AD43D8(), v31 = v63, sub_182AD4238(), v32 = sub_182AD2EF8(), result = (*(v7 + 8))(v31, a2), (v32))
      {
        if (sub_182AD3A68() <= 15)
        {
          goto LABEL_45;
        }

        v66 = -1;
        v33 = sub_182AD3A78();
        v34 = sub_182AD3A68();
        if (v33)
        {
          if (v34 <= 16)
          {
            swift_getAssociatedConformanceWitness();
            sub_182AD43D8();
            v35 = v63;
            sub_182AD4238();
            v36 = sub_182AD2ED8();
            (*(v7 + 8))(v35, a2);
            if ((v36 & 1) == 0)
            {
              goto LABEL_45;
            }

            goto LABEL_44;
          }
        }

        else if (v34 < 17)
        {
LABEL_44:
          sub_182AD3A58();
          goto LABEL_45;
        }

        sub_1821DE530();
        v49 = v63;
        sub_182AD3A48();
        v50 = sub_182AD2EE8();
        v40 = (*(v7 + 8))(v49, a2);
        if ((v50 & 1) == 0)
        {
LABEL_45:
          v55 = sub_182AD3A58();
          result = (*(v7 + 8))(v16, a2);
          v56 = v64;
          *v64 = v55;
          v57 = 5;
LABEL_52:
          *(v56 + 40) = v57;
          return result;
        }

        __break(1u);
        goto LABEL_35;
      }

      __break(1u);
      goto LABEL_54;
    case 1:
      v24(&v61 - v21, a1, a2, v22);
      if (sub_182AD3A78() & 1) == 0 || (swift_getAssociatedConformanceWitness(), sub_182AD43D8(), v10 = v63, sub_182AD4238(), v25 = sub_182AD2EF8(), result = (*(v7 + 8))(v10, a2), (v25))
      {
        if (sub_182AD3A68() <= 7)
        {
          goto LABEL_49;
        }

        v65 = -1;
        v27 = sub_182AD3A78();
        v28 = sub_182AD3A68();
        if (v27)
        {
          if (v28 <= 8)
          {
            swift_getAssociatedConformanceWitness();
            sub_182AD43D8();
            v29 = v63;
            sub_182AD4238();
            v30 = sub_182AD2ED8();
            (*(v7 + 8))(v29, a2);
            if ((v30 & 1) == 0)
            {
              goto LABEL_49;
            }

            goto LABEL_48;
          }

          goto LABEL_39;
        }

LABEL_38:
        if (v28 < 9)
        {
LABEL_48:
          sub_182AD3A58();
          goto LABEL_49;
        }

LABEL_39:
        sub_1821DE584();
        v52 = v63;
        sub_182AD3A48();
        v53 = sub_182AD2EE8();
        v46 = (*(v7 + 8))(v52, a2);
        if (v53)
        {
          __break(1u);
          goto LABEL_41;
        }

LABEL_49:
        v59 = sub_182AD3A58();
        result = (*(v7 + 8))(v23, a2);
        v57 = 0;
        v56 = v64;
        *v64 = v59;
        goto LABEL_52;
      }

      goto LABEL_55;
  }

  v24(v10, a1, a2, v22);
  if (sub_182AD3A78() & 1) == 0 || (swift_getAssociatedConformanceWitness(), sub_182AD43D8(), v43 = v63, sub_182AD4238(), v44 = sub_182AD2EF8(), result = (*(v7 + 8))(v43, a2), (v44))
  {
    if (sub_182AD3A68() <= 63)
    {
      goto LABEL_51;
    }

    v68 = -1;
    v45 = sub_182AD3A78();
    v46 = sub_182AD3A68();
    if (v45)
    {
      if (v46 > 64)
      {
        goto LABEL_42;
      }

      swift_getAssociatedConformanceWitness();
      sub_182AD43D8();
      v47 = v63;
      sub_182AD4238();
      v48 = sub_182AD2ED8();
      (*(v7 + 8))(v47, a2);
      if ((v48 & 1) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

LABEL_41:
    if (v46 >= 65)
    {
LABEL_42:
      sub_181F7D8D8();
      v54 = v63;
      sub_182AD3A48();
      v16 = sub_182AD2EE8();
      (*(v7 + 8))(v54, a2);
      if (v16)
      {
        __break(1u);
        goto LABEL_44;
      }

LABEL_51:
      v60 = sub_182AD3A58();
      result = (*(v7 + 8))(v10, a2);
      v56 = v64;
      *v64 = v60;
      v57 = 7;
      goto LABEL_52;
    }

LABEL_50:
    sub_182AD3A58();
    goto LABEL_51;
  }

LABEL_56:
  __break(1u);
  return result;
}

uint64_t Deserializer.unsignedNetworkByteOrder<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 - 8) + 8;
  (*v3)();
  v4 = *(v3 + 56);
  switch(v4)
  {
    case 4:
      LODWORD(v10) = 0;
      Deserializer.uint32NetworkByteOrder(_:)(&v10, &v8);
      v5 = v8;
      v6 = v9;
      LODWORD(v8) = v10;
      sub_181AA5BC8();
      break;
    case 2:
      LOWORD(v10) = 0;
      Deserializer.uint16NetworkByteOrder(_:)(&v10, &v8);
      v5 = v8;
      v6 = v9;
      LOWORD(v8) = v10;
      sub_1821DE530();
      break;
    case 1:
      LOBYTE(v10) = 0;
      Deserializer.uint8(_:)(&v10, &v8);
      v5 = v8;
      v6 = v9;
      LOBYTE(v8) = v10;
      sub_1821DE584();
      break;
    default:
      v10 = 0;
      Deserializer.uint64NetworkByteOrder(_:)(&v10, &v8);
      v5 = v8;
      v6 = v9;
      v8 = v10;
      sub_181F7D8D8();
      break;
  }

  result = sub_182AD3A98();
  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_182188750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for TLVFramer.Header();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t sub_182188818()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v1 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v1);
  swift_getAssociatedConformanceWitness();
  sub_182AD43D8();
  sub_182AD4238();
  swift_getAssociatedConformanceWitness();
  sub_182AD43D8();
  type metadata accessor for TLVFramer.Header();
  return sub_182AD4238();
}

uint64_t sub_182188A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a5;
  v37 = a4;
  v33 = a6;
  v34 = *(*(*(a5 + 8) + 24) + 16);
  v35 = a1;
  v30 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = v29 - v10;
  v32 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(*(a4 + 8) + 24) + 16);
  v16 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v29 - v17;
  v31 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v35;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  v29[1] = AssociatedConformanceWitness;
  v23 = v30;
  sub_182AD43D8();
  v29[2] = v18;
  v29[3] = v15;
  sub_182AD4238();
  swift_getAssociatedConformanceWitness();
  v29[4] = AssociatedTypeWitness;
  sub_182AD43D8();
  v29[5] = v11;
  v24 = v35;
  sub_182AD4238();
  v38 = a2;
  v39 = v23;
  v40 = v37;
  v41 = v36;
  v42 = v21;
  v43 = v14;
  sub_1820E3438(v24 + 32, v24 + 32 + *(v24 + 16), sub_1821E5E14, &v48, &v44);

  if (v45 == 1 && v44)
  {
    sub_182AD43D8();
    sub_182AD4238();
    sub_182AD43D8();
    v44 = a2;
    v45 = v23;
    v46 = v37;
    v47 = v36;
    type metadata accessor for TLVFramer.Header();
    sub_182AD4238();
    (*(v32 + 8))(v14, v23);
    v25 = v31;
  }

  else
  {
    v25 = v31;
    v26 = v33;
    (*(v31 + 16))(v33, v21, a2);
    v44 = a2;
    v45 = v23;
    v46 = v37;
    v47 = v36;
    v27 = type metadata accessor for TLVFramer.Header();
    (*(v32 + 32))(v26 + *(v27 + 52), v14, v23);
  }

  return (*(v25 + 8))(v21, a2);
}

uint64_t sub_182188EEC@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  Deserializer.unsignedNetworkByteOrder<A>(_:)(a1, &v11);
  result = Deserializer.unsignedNetworkByteOrder<A>(_:)(a2, &v9);
  v6 = v9;
  v7 = v10;
  v8 = v12 & (v11 == 1);
  if (v8)
  {
    v6 = 1;
  }

  *a3 = v6;
  *(a3 + 8) = (v8 | v7) & 1;
  return result;
}

uint64_t sub_182188F8C@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];

  return sub_182188A0C(v7, v3, v4, v5, v6, a2);
}

uint64_t sub_182188FEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v15 = a2;
  v16 = a4;
  v4 = *(a3 + 24);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 16);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v12;
  sub_182034764();
  sub_182AD3A98();
  v17 = v15;
  sub_182AD3A98();
  return sub_182188750(v11, v6, v8, v4, v16);
}

uint64_t sub_182189180(uint64_t *a1)
{
  v4 = MEMORY[0x1E69E7CC0];
  v2 = sub_1821891CC(a1, v1, a1[2], a1[3], a1[4], a1[5]);
  sub_1820D46D8(v2);
  return v4;
}

uint64_t sub_1821891CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[0] = v19;
  v29[1] = v20;
  v29[2] = v21;
  v29[3] = v22;
  v23 = type metadata accessor for TLVFramer.Header();
  (*(*(*(v23 + 16) - 8) + 16))(v18, a2);
  Serializer.unsignedNetworkByteOrder<A>(_:)(v18, a3, a5, v29);
  (*(v15 + 8))(v18, a3);
  (*(*(*(v23 + 24) - 8) + 16))(v13, a2 + *(v23 + 52));
  Serializer.unsignedNetworkByteOrder<A>(_:)(v13, a4, a6, v28);
  (*(v11 + 8))(v13, a4);
  sub_181F80BF8(v29, &v26);
  sub_181F80BF8(v28, &v27);
  v25 = MEMORY[0x1E69E7CC0];
  sub_1822A69B4(&v25);
  sub_1822A69B4(&v25);
  swift_arrayDestroy();
  sub_181F80C54(v28);
  sub_181F80C54(v29);
  return v25;
}

void *sub_182189494()
{
  v0 = type metadata accessor for TLVFramer();
  type metadata accessor for NWProtocolFramer.Definition();
  swift_allocObject();
  result = NWProtocolFramer.Definition.init(implementation:)(v0, &protocol witness table for TLVFramer);
  qword_1EA8433A0 = result;
  return result;
}

uint64_t TLVFramer.__allocating_init(framer:)(uint64_t a1)
{
  v2 = swift_allocObject();
  TLVFramer.init(framer:)(a1);
  return v2;
}

uint64_t TLVFramer.init(framer:)(uint64_t a1)
{
  v2 = nw_framer_copy_options(*(a1 + 16));
  type metadata accessor for NWProtocolFramer.Options();
  *(swift_initStackObject() + 16) = v2;
  v3 = sub_182AD3048();
  v4 = nw_framer_options_copy_object_value(v2, (v3 + 32));

  if (v4)
  {
    sub_182AD3AA8();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v9 = v6;
  v10 = v7;
  if (*(&v7 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AE88);
    if (swift_dynamicCast())
    {

      sub_181F3CF20(&v6, &v9);
      goto LABEL_11;
    }

    v8 = 0;
    v6 = 0u;
    v7 = 0u;
  }

  else
  {
    sub_181F49A88(&v9, &unk_1EA83A4F0);
    v6 = 0u;
    v7 = 0u;
    v8 = 0;
  }

  *(&v10 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AE70);
  v11 = sub_181AB3DCC(&qword_1EA83AE78, &qword_1EA83AE70);

  *&v9 = 0;
  if (*(&v7 + 1))
  {
    sub_181F49A88(&v6, &qword_1EA83AE80);
  }

LABEL_11:
  sub_181F3CF20(&v9, v1 + 16);
  return v1;
}

uint64_t TLVFramer.handleInput(framer:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v90 = &v102;
  v89 = v1;
  while (1)
  {
    v107 = 0;
    memset(v106, 0, sizeof(v106));
    v2 = v91;
    v3 = *(v91 + 5);
    v4 = *(v91 + 6);
    __swift_project_boxed_opaque_existential_1(v91 + 2, v3);
    v5 = (*(v4 + 80))(v3, v4);
    v6 = *(v2 + 5);
    v7 = *(v2 + 6);
    __swift_project_boxed_opaque_existential_1(v2 + 2, v6);
    v8 = (*(v7 + 80))(v6, v7);
    MEMORY[0x1EEE9AC00](v8);
    *(&v85 - 2) = v2;
    *(&v85 - 1) = v106;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1821DE5D8;
    *(v9 + 24) = &v85 - 4;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_181F14B98;
    *(v10 + 24) = v9;
    v104 = sub_181F14B54;
    v105 = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    v102 = sub_181F14AF8;
    v103 = &block_descriptor_29;
    v11 = _Block_copy(aBlock);

    v12 = nw_framer_parse_input(v1, v5, v8, 0, v11);
    _Block_release(v11);
    LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

    if (v8)
    {
      break;
    }

    if (!v12)
    {
      v82 = *(v91 + 5);
      v83 = *(v91 + 6);
      __swift_project_boxed_opaque_existential_1(v91 + 2, v82);
      v84 = (*(v83 + 80))(v82, v83);
      goto LABEL_81;
    }

    sub_181AB5D28(v106, &v98, &qword_1EA83AE80);
    if (!AssociatedTypeWitness)
    {
      sub_181F49A88(&v98, &qword_1EA83AE80);
LABEL_80:
      v84 = 0;
LABEL_81:
      sub_181F49A88(v106, &qword_1EA83AE80);
      return v84;
    }

    sub_181F3CF20(&v98, aBlock);
    v14 = v103;
    v15 = v104;
    __swift_project_boxed_opaque_existential_1(aBlock, v103);
    v16 = *(v15 + 7);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v98);
    v16(v14, v15);
    v19 = AssociatedTypeWitness;
    v18 = AssociatedConformanceWitness;
    v20 = __swift_project_boxed_opaque_existential_1(&v98, AssociatedTypeWitness);
    v21 = *(v19 - 8);
    v22 = *(v21 + 64);
    v23 = MEMORY[0x1EEE9AC00](v20);
    (*(v21 + 16))(&v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
    v24 = *(v18 + 8);
    if ((sub_182AD3A78() & 1) != 0 && sub_182AD3A68() > 64)
    {
      v95[0] = 0x8000000000000000;
      if (sub_182AD3A78())
      {
        v25 = sub_182AD3A68();
        if (v25 < 64)
        {
          goto LABEL_18;
        }

        v92 = &v85;
        MEMORY[0x1EEE9AC00](v25);
        v93 = boxed_opaque_existential_0Tm;
        sub_182034764();
        sub_182AD3A48();
        v26 = sub_182AD2EE8();
        boxed_opaque_existential_0Tm = v93;
        result = (*(v21 + 8))(&v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
        if (v26)
        {
          goto LABEL_86;
        }
      }

      else
      {
        v93 = &v85;
        v27 = sub_182AD3A78();
        v28 = sub_182AD3A68();
        if (v27)
        {
          if (v28 <= 64)
          {
            v92 = *(*(v24 + 24) + 16);
            v30 = swift_getAssociatedTypeWitness();
            v88 = &v85;
            MEMORY[0x1EEE9AC00](v30);
            v86 = (&v85 - v31);
            swift_getAssociatedConformanceWitness();
            v32 = sub_182AD43D8();
            v87 = &v85;
            MEMORY[0x1EEE9AC00](v32);
            sub_182AD4238();
            v33 = sub_182AD2EE8();
            result = (*(v21 + 8))(&v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
            if (v33)
            {
              goto LABEL_86;
            }

LABEL_18:
            sub_182AD3A58();
            goto LABEL_19;
          }

          v92 = &v85;
          MEMORY[0x1EEE9AC00](v28);
          sub_182034764();
          sub_182AD3A48();
          v29 = sub_182AD2EE8();
          result = (*(v21 + 8))(&v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
          if (v29)
          {
            goto LABEL_86;
          }
        }

        else if (v28 < 64)
        {
          goto LABEL_18;
        }
      }
    }

LABEL_19:
    if (sub_182AD3A68() > 64 || sub_182AD3A68() == 64 && (sub_182AD3A78() & 1) == 0)
    {
      v93 = boxed_opaque_existential_0Tm;
      v95[0] = 0x7FFFFFFFFFFFFFFFLL;
      v34 = sub_182AD3A78();
      v35 = sub_182AD3A68();
      if (v34)
      {
        if (v35 < 65)
        {
          goto LABEL_28;
        }
      }

      else if (v35 < 64)
      {
LABEL_28:
        sub_182AD3A58();
        goto LABEL_29;
      }

      MEMORY[0x1EEE9AC00](v35);
      sub_182034764();
      sub_182AD3A48();
      v36 = sub_182AD2EE8();
      result = (*(v21 + 8))(&v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
      if (v36)
      {
        goto LABEL_83;
      }
    }

LABEL_29:
    v93 = sub_182AD3A58();
    (*(v21 + 8))(&v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
    v37 = v103;
    v38 = v104;
    __swift_project_boxed_opaque_existential_1(aBlock, v103);
    v39 = *(v38 + 8);
    v96 = swift_getAssociatedTypeWitness();
    v97 = swift_getAssociatedConformanceWitness();
    v40 = __swift_allocate_boxed_opaque_existential_0Tm(v95);
    v39(v37, v38);
    v41 = v96;
    v42 = v97;
    v43 = __swift_project_boxed_opaque_existential_1(v95, v96);
    v44 = *(v41 - 8);
    v45 = *(v44 + 64);
    v46 = MEMORY[0x1EEE9AC00](v43);
    (*(v44 + 16))(&v85 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0), v46);
    v47 = *(v42 + 8);
    if ((sub_182AD3A78() & 1) != 0 && sub_182AD3A68() > 64)
    {
      v94 = 0x8000000000000000;
      if (sub_182AD3A78())
      {
        v48 = sub_182AD3A68();
        if (v48 < 64)
        {
          goto LABEL_42;
        }

        v88 = &v85;
        MEMORY[0x1EEE9AC00](v48);
        v92 = v40;
        sub_182034764();
        sub_182AD3A48();
        v49 = sub_182AD2EE8();
        v40 = v92;
        result = (*(v44 + 8))(&v85 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0), v41);
        if (v49)
        {
          goto LABEL_87;
        }
      }

      else
      {
        v92 = &v85;
        v50 = sub_182AD3A78();
        v51 = sub_182AD3A68();
        if (v50)
        {
          if (v51 <= 64)
          {
            v88 = *(*(v47 + 24) + 16);
            v53 = swift_getAssociatedTypeWitness();
            v87 = &v85;
            MEMORY[0x1EEE9AC00](v53);
            v85 = &v85 - v54;
            swift_getAssociatedConformanceWitness();
            v55 = sub_182AD43D8();
            v86 = &v85;
            MEMORY[0x1EEE9AC00](v55);
            sub_182AD4238();
            v56 = sub_182AD2EE8();
            result = (*(v44 + 8))(&v85 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0), v41);
            if (v56)
            {
              goto LABEL_87;
            }

LABEL_42:
            sub_182AD3A58();
            goto LABEL_43;
          }

          v88 = &v85;
          MEMORY[0x1EEE9AC00](v51);
          sub_182034764();
          sub_182AD3A48();
          v52 = sub_182AD2EE8();
          result = (*(v44 + 8))(&v85 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0), v41);
          if (v52)
          {
            goto LABEL_87;
          }
        }

        else if (v51 < 64)
        {
          goto LABEL_42;
        }
      }
    }

LABEL_43:
    if (sub_182AD3A68() > 64 || sub_182AD3A68() == 64 && (sub_182AD3A78() & 1) == 0)
    {
      v92 = v40;
      v94 = 0x7FFFFFFFFFFFFFFFLL;
      v57 = sub_182AD3A78();
      v58 = sub_182AD3A68();
      if (v57)
      {
        if (v58 < 65)
        {
          goto LABEL_52;
        }
      }

      else if (v58 < 64)
      {
LABEL_52:
        sub_182AD3A58();
        goto LABEL_53;
      }

      MEMORY[0x1EEE9AC00](v58);
      sub_182034764();
      sub_182AD3A48();
      v59 = sub_182AD2EE8();
      result = (*(v44 + 8))(&v85 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0), v41);
      if (v59)
      {
        goto LABEL_84;
      }
    }

LABEL_53:
    v60 = sub_182AD3A58();
    (*(v44 + 8))(&v85 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0), v41);
    v93 = _s7Network16NWProtocolFramerC7MessageC4type6lengthAESi_SitcfC_0(v93, v60);
    __swift_destroy_boxed_opaque_existential_1(v95);
    __swift_destroy_boxed_opaque_existential_1(&v98);
    v61 = v103;
    v62 = v104;
    __swift_project_boxed_opaque_existential_1(aBlock, v103);
    v63 = *(v62 + 8);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_0Tm(&v98);
    v63(v61, v62);
    v65 = AssociatedTypeWitness;
    v64 = AssociatedConformanceWitness;
    v66 = __swift_project_boxed_opaque_existential_1(&v98, AssociatedTypeWitness);
    v92 = &v85;
    v67 = *(v65 - 8);
    v68 = *(v67 + 64);
    v69 = MEMORY[0x1EEE9AC00](v66);
    (*(v67 + 16))(&v85 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0), v69);
    v70 = *(v64 + 8);
    if ((sub_182AD3A78() & 1) != 0 && sub_182AD3A68() > 64)
    {
      v95[0] = 0x8000000000000000;
      if (sub_182AD3A78())
      {
        v71 = sub_182AD3A68();
        if (v71 < 64)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v72 = sub_182AD3A78();
        v71 = sub_182AD3A68();
        if ((v72 & 1) == 0)
        {
          if (v71 >= 64)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        }

        if (v71 <= 64)
        {
          v88 = *(*(v70 + 24) + 16);
          v74 = swift_getAssociatedTypeWitness();
          v87 = &v85;
          MEMORY[0x1EEE9AC00](v74);
          v85 = &v85 - v75;
          swift_getAssociatedConformanceWitness();
          v76 = sub_182AD43D8();
          v86 = &v85;
          MEMORY[0x1EEE9AC00](v76);
          sub_182AD4238();
          v77 = sub_182AD2EE8();
          result = (*(v67 + 8))(&v85 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0), v65);
          if (v77)
          {
            goto LABEL_88;
          }

LABEL_65:
          sub_182AD3A58();
          goto LABEL_66;
        }
      }

      v88 = &v85;
      MEMORY[0x1EEE9AC00](v71);
      sub_182034764();
      sub_182AD3A48();
      v73 = sub_182AD2EE8();
      result = (*(v67 + 8))(&v85 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0), v65);
      if (v73)
      {
        goto LABEL_88;
      }
    }

LABEL_66:
    if (sub_182AD3A68() > 64 || sub_182AD3A68() == 64 && (sub_182AD3A78() & 1) == 0)
    {
      v95[0] = 0x7FFFFFFFFFFFFFFFLL;
      v78 = sub_182AD3A78();
      v79 = sub_182AD3A68();
      if (v78)
      {
        if (v79 < 65)
        {
          goto LABEL_75;
        }
      }

      else if (v79 < 64)
      {
LABEL_75:
        sub_182AD3A58();
        goto LABEL_76;
      }

      v88 = &v85;
      MEMORY[0x1EEE9AC00](v79);
      sub_182034764();
      sub_182AD3A48();
      v80 = sub_182AD2EE8();
      result = (*(v67 + 8))(&v85 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0), v65);
      if (v80)
      {
        goto LABEL_85;
      }
    }

LABEL_76:
    v81 = sub_182AD3A58();
    (*(v67 + 8))(&v85 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0), v65);
    v1 = v89;
    LOBYTE(v81) = nw_framer_deliver_input_no_copy(v89, v81, v93[2], 1);

    __swift_destroy_boxed_opaque_existential_1(&v98);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    if ((v81 & 1) == 0)
    {
      goto LABEL_80;
    }

    sub_181F49A88(v106, &qword_1EA83AE80);
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
  return result;
}

uint64_t sub_18218AD24(_BYTE *a1, _BYTE *a2, char a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (a3)
  {
    return 0;
  }

  v22[13] = v6;
  v22[14] = v7;
  if (a1)
  {
    v13 = a2 - a1;
  }

  else
  {
    v13 = 0;
  }

  v14 = a5[5];
  v15 = a5[6];
  __swift_project_boxed_opaque_existential_1(a5 + 2, v14);
  if (v13 < (*(v15 + 80))(v14, v15))
  {
    return 0;
  }

  v16 = a5[5];
  v17 = a5[6];
  __swift_project_boxed_opaque_existential_1(a5 + 2, v16);
  v18 = sub_181AC1C5C(a1, a2);
  v19 = *(v17 + 40);
  v22[3] = v16;
  v22[4] = v17;
  __swift_allocate_boxed_opaque_existential_0Tm(v22);
  v19(v18, v16, v17);

  sub_1821EB434(v22, a6, &qword_1EA83AE80);
  v20 = a5[5];
  v21 = a5[6];
  __swift_project_boxed_opaque_existential_1(a5 + 2, v20);
  return (*(v21 + 80))(v20, v21);
}

uint64_t TLVFramer.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_18218AEF0(uint64_t a1)
{
  v2 = swift_allocObject();
  TLVFramer.init(framer:)(a1);
  return v2;
}

uint64_t sub_18218AF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EA837200 != -1)
  {
    swift_once();
  }

  v8 = qword_1EA8433A0;
  type metadata accessor for NWProtocolFramer.Options();
  v9 = swift_allocObject();
  *(v9 + 16) = nw_framer_create_options(*(v8 + 32));
  v11[0] = a3;
  v11[1] = a4;
  v11[2] = a5;
  v11[3] = type metadata accessor for TLVFramer.Header();
  __swift_allocate_boxed_opaque_existential_0Tm(v11);

  sub_182188818();
  sub_181EC55F0(v11, 0x726564616548, 0xE600000000000000);

  return v9;
}

uint64_t sub_18218B058()
{
  v1 = *(v0 + 16);
  v2 = sub_182AD3048();
  v3 = nw_framer_message_copy_object_value(v1, (v2 + 32));

  if (v3)
  {
    sub_182AD3AA8();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_181F49A88(v7, &unk_1EA83A4F0);
  }

  return 0;
}

uint64_t sub_18218B24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_181F5EB68;

  return static StreamProtocol.send<A>(connection:content:metadata:)(a1, a2, a3, a4, a7, a5, a8, a6);
}

uint64_t static StreamProtocol.send<A>(connection:content:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_18218B35C, 0, 0);
}

uint64_t sub_18218B35C()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 40);
  v12 = *(v0 + 24);
  v6 = *(v0 + 16);
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v3;
  *(v7 + 32) = v2;
  *(v7 + 40) = v1;
  *(v7 + 48) = v6;
  *(v7 + 56) = v12;
  *(v7 + 72) = v5;
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  v8[2] = v4;
  v8[3] = v3;
  v8[4] = v2;
  v8[5] = v1;
  v8[6] = v6;
  v9 = swift_task_alloc();
  *(v0 + 96) = v9;
  *v9 = v0;
  v9[1] = sub_182186384;
  v10 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v9, &unk_182AFC190, v7, sub_1821DF004, v8, 0, 0, v10);
}

uint64_t static StreamProtocol.sendIdempotent<A>(connection:content:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  (*(a8 + 48))(qword_1EA8433A8, a6, a8);
  result = (*(a8 + 40))(a6, a8);
  if (result)
  {
    v11 = result;
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v13 = *(AssociatedConformanceWitness + 8);
    v14 = swift_checkMetadataState();
    v15 = v13(v14, AssociatedConformanceWitness);
    v16 = *(v11 + 16);
    v17 = sub_182AD2138();
    v19 = NWCreateDispatchDataFromNSData(v17, v18);

    nw_connection_send_idempotent(v16, v19, *(v15 + 16), 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18218B644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1821EBEE4;

  return static StreamProtocol.receive<A>(connection:atLeast:atMost:)(a1, a2, a3, a4, a7, a5, a8, a6);
}

uint64_t static StreamProtocol.receive<A>(connection:atLeast:atMost:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v8[10] = swift_getAssociatedTypeWitness();
  v8[11] = swift_getTupleTypeMetadata2();
  v8[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18218B80C, 0, 0);
}

uint64_t sub_18218B80C()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];
  v8 = swift_task_alloc();
  v0[13] = v8;
  v8[2] = v4;
  v8[3] = v3;
  v8[4] = v2;
  v8[5] = v1;
  v8[6] = v7;
  v8[7] = v6;
  v8[8] = v5;
  v9 = swift_task_alloc();
  v0[14] = v9;
  v9[2] = v4;
  v9[3] = v3;
  v9[4] = v2;
  v9[5] = v1;
  v9[6] = v7;
  v10 = swift_task_alloc();
  v0[15] = v10;
  *v10 = v0;
  v10[1] = sub_18218B940;
  v12 = v0[11];
  v11 = v0[12];

  return MEMORY[0x1EEE6DE18](v11, &unk_182AFC1A8, v8, sub_1821EC228, v9, 0, 0, v12);
}

uint64_t sub_18218B940()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_18218BB18;
  }

  else
  {

    v2 = sub_18218BA64;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18218BA64()
{
  v1 = v0[12];
  v2 = *v1;
  v3 = *(v1 + 1);
  (*(*(v0[10] - 8) + 32))(v0[2], &v1[*(v0[11] + 48)]);

  v4 = v0[1];

  return v4(v2, v3);
}

uint64_t sub_18218BB18()
{

  v1 = *(v0 + 8);

  return v1();
}

void static StreamProtocol.mapLegacy(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  v10 = &v12 - v9;
  *v10 = a1;
  *(v10 + 1) = a2;
  (*(*(AssociatedTypeWitness - 8) + 16))(&v10[*(v11 + 56)], a3, AssociatedTypeWitness, v8);
  sub_182AD3EA8();
  __break(1u);
}

uint64_t sub_18218BD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18218BD78, 0, 0);
}

uint64_t sub_18218BD78()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v9 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  v4 = *(v0 + 72);
  *(v3 + 16) = *(v0 + 56);
  *(v3 + 32) = v4;
  *(v3 + 48) = v9;
  *(v3 + 64) = v2;
  *(v3 + 72) = v1;
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_18218BE98;
  v6 = *(v0 + 16);
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000022, 0x8000000182BDFAC0, sub_1821EB3E0, v3, v7);
}

uint64_t sub_18218BE98()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_18218BFD4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_18218BFD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18218C038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v29 = a5;
  v30 = a1;
  v31 = a3;
  v32 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - v12;
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  (*(a9 + 48))(qword_1EA8433A8, a7, a9);
  result = (*(a9 + 40))(a7, a9);
  if (result)
  {
    v15 = result;
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v17 = *(AssociatedConformanceWitness + 8);
    v18 = swift_checkMetadataState();
    v19 = v17(v18, AssociatedConformanceWitness);
    (*(v11 + 16))(v13, v30, v10);
    v20 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v21 = swift_allocObject();
    (*(v11 + 32))(v21 + v20, v13, v10);
    v22 = *(v15 + 16);
    v23 = sub_182AD2138();
    v25 = NWCreateDispatchDataFromNSData(v23, v24);

    v26 = *(v19 + 16);
    v27 = swift_allocObject();
    *(v27 + 16) = sub_1821EC0D4;
    *(v27 + 24) = v21;
    aBlock[4] = sub_181FE5014;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181AA4EBC;
    aBlock[3] = &block_descriptor_1815;
    v28 = _Block_copy(aBlock);

    nw_connection_send(v22, v25, v26, 1, v28);

    _Block_release(v28);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18218C388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_18218C3B4, 0, 0);
}

uint64_t sub_18218C3B4()
{
  v1 = *(v0 + 40);
  v8 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  v7 = *(v0 + 64);
  *(v2 + 16) = *(v0 + 48);
  *(v2 + 32) = v7;
  *(v2 + 48) = v8;
  *(v2 + 64) = v1;
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *v3 = v0;
  v3[1] = sub_18218C518;
  v5 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000023, 0x8000000182BDFED0, sub_1821EB2A0, v2, TupleTypeMetadata2);
}

uint64_t sub_18218C518()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_181F5759C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_18218C654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = a3;
  v26 = a4;
  v24 = a7;
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v12 = sub_182AD34D8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - v14;
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  (*(a8 + 48))(qword_1EA8433A8, a6, a8);
  result = (*(a8 + 40))(a6, a8);
  if (result)
  {
    v17 = result;
    (*(v13 + 16))(v15, a1, v12);
    v18 = (*(v13 + 80) + 48) & ~*(v13 + 80);
    v19 = swift_allocObject();
    *(v19 + 2) = a5;
    *(v19 + 3) = a6;
    *(v19 + 4) = v24;
    *(v19 + 5) = a8;
    (*(v13 + 32))(&v19[v18], v15, v12);
    v20 = *(v17 + 16);
    v21 = swift_allocObject();
    *(v21 + 16) = sub_1821EB2B4;
    *(v21 + 24) = v19;
    aBlock[4] = sub_181FE4FD0;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181D478F8;
    aBlock[3] = &block_descriptor_1803;
    v22 = _Block_copy(aBlock);

    nw_connection_receive(v20, v25, v26, v22);
    _Block_release(v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18218C94C(uint64_t a1, unint64_t a2, uint64_t a3, char a4, unsigned int *a5, uint64_t a6)
{
  v35 = a3;
  v36 = a6;
  v33 = a1;
  v34 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v32 = (&v32 - v10);
  v11 = sub_182AD39B8();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - v17;
  if (*(a5 + 4) != 255)
  {
    v23 = *a5 | (*(a5 + 4) << 32);
    sub_181F4B3B8();
    v21 = swift_allocError();
    *v24 = v23;
    *(v24 + 4) = BYTE4(v23);
    goto LABEL_5;
  }

  v19 = v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(v35, a4 & 1, AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((*(v14 + 48))(v13, 1, AssociatedTypeWitness) == 1)
  {
    (*(v19 + 8))(v13, v11);
    sub_181F4B3B8();
    v21 = swift_allocError();
    *v22 = 22;
    *(v22 + 4) = 0;
LABEL_5:
    v37 = v21;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
    sub_182AD34D8();
    return sub_182AD34B8();
  }

  (*(v14 + 32))(v18, v13, AssociatedTypeWitness);
  v27 = v33;
  v26 = v34;
  if (v34 >> 60 == 15)
  {
    v28 = 0;
  }

  else
  {
    v28 = v33;
  }

  v29 = 0xC000000000000000;
  if (v34 >> 60 != 15)
  {
    v29 = v34;
  }

  v30 = *(TupleTypeMetadata2 + 48);
  v31 = v32;
  *v32 = v28;
  *(v31 + 1) = v29;
  (*(v14 + 16))(&v31[v30], v18, AssociatedTypeWitness);
  sub_181F49B44(v27, v26);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  sub_182AD34D8();
  sub_182AD34C8();
  return (*(v14 + 8))(v18, AssociatedTypeWitness);
}

void static MessageProtocol.mapLegacy(_:)(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = TupleTypeMetadata2 - 8;
  v8 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v10 = &v11 - v9;
  (*(*(AssociatedTypeWitness - 8) + 16))(&v11 - v9, a1, AssociatedTypeWitness, v8);
  (*(*(v5 - 8) + 16))(&v10[*(v7 + 56)], a2, v5);
  sub_182AD3EA8();
  __break(1u);
}

void static MessageProtocol.map(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  v12 = &v14 - v11;
  *v12 = a3;
  *(v12 + 1) = a4;
  (*(*(AssociatedTypeWitness - 8) + 16))(&v12[*(v13 + 56)], a5, AssociatedTypeWitness, v10);
  sub_182AD3EA8();
  __break(1u);
}

uint64_t static ProtocolStackBuilder.buildBlock(_:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = (*(*(a6 - 8) + 16))(a1, a3, a6);
  if (a5)
  {
    v12 = (a7 & 0xFFFFFFFFFFFFFFFELL);
    do
    {
      v14 = *v12++;
      v13 = v14;
      v16 = *a2++;
      v15 = v16;
      v17 = *a4++;
      result = (*(*(v13 - 8) + 16))(v15, v17);
      --a5;
    }

    while (a5);
  }

  return result;
}

uint64_t sub_18218D1BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
}

uint64_t sub_18218D254(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t Parameters1.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for NWParameters();
  v1 = swift_allocObject();
  v2 = nw_parameters_create();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A00);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = v2;
  *(v1 + 16) = v3;
  *(v0 + 16) = v1;
  return v0;
}

uint64_t Parameters1.init()()
{
  type metadata accessor for NWParameters();
  v1 = swift_allocObject();
  v2 = nw_parameters_create();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A00);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = v2;
  *(v1 + 16) = v3;
  *(v0 + 16) = v1;
  return v0;
}

uint64_t Parameters1.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

NSObject *static Parameters1.applicationServiceQUIC.getter()
{
  type metadata accessor for Parameters1();
  v0 = swift_allocObject();
  type metadata accessor for NWParameters();
  v1 = swift_allocObject();
  v2 = nw_parameters_create();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A00);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = v2;
  *(v1 + 16) = v3;
  *(v0 + 16) = v1;
  result = nw_parameters_create_application_service_quic();
  if (result)
  {
    v5 = nw_parameters_copy(result);
    v6 = swift_allocObject();
    v7 = swift_allocObject();
    *(v7 + 24) = 0;
    *(v7 + 16) = v5;
    swift_unknownObjectRelease();
    *(v6 + 16) = v7;
    swift_beginAccess();
    *(v0 + 16) = v6;

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18218D554(NSObject **a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(*(v1 + 16) + 16);

  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v3 + 24));

  if (v2)
  {
    v5 = type metadata accessor for __NWInterface();
    v6 = objc_allocWithZone(v5);
    v7 = OBJC_IVAR____TtC7Network13__NWInterface_lock;

    v8 = swift_slowAlloc();
    *&v6[v7] = v8;
    *&v6[OBJC_IVAR____TtC7Network13__NWInterface_nameStorage] = 0;
    *&v6[OBJC_IVAR____TtC7Network13__NWInterface_interface] = v2;
    *v8 = 0;
    v11.receiver = v6;
    v11.super_class = v5;
    v9 = objc_msgSendSuper2(&v11, sel_init);
    v2 = nw_interface_bridge(v9);
  }

  nw_parameters_require_interface(v4, v2);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t sub_18218D688(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(*(v1 + 16) + 16);

  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v3 + 24));

  nw_parameters_set_required_interface_subtype(v4, dword_182AFE6A8[v2]);
  swift_unknownObjectRelease();
}

NSObject *sub_18218D72C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(*(v1 + 16) + 16);

  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v3 + 24));

  nw_parameters_clear_prohibited_interfaces(v4);
  swift_unknownObjectRelease();
  if (!a1)
  {
  }

  v5 = *(a1 + 16);
  if (!v5)
  {
  }

  v6 = (a1 + 32);
  while (1)
  {
    v8 = *v6++;
    v7 = v8;
    if (v8)
    {
      break;
    }

LABEL_4:
    if (!--v5)
    {
    }
  }

  v9 = *(*(v1 + 16) + 16);

  os_unfair_lock_lock((v9 + 24));
  v10 = *(v9 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v9 + 24));

  v11 = type metadata accessor for __NWInterface();
  v12 = objc_allocWithZone(v11);
  v13 = OBJC_IVAR____TtC7Network13__NWInterface_lock;

  v14 = swift_slowAlloc();
  *&v12[v13] = v14;
  *&v12[OBJC_IVAR____TtC7Network13__NWInterface_nameStorage] = 0;
  *&v12[OBJC_IVAR____TtC7Network13__NWInterface_interface] = v7;
  *v14 = 0;
  v17.receiver = v12;
  v17.super_class = v11;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  result = nw_interface_bridge(v15);
  if (result)
  {
    nw_parameters_prohibit_interface(v10, result);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t sub_18218D8D8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(*(v1 + 16) + 16);

  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v3 + 24));

  nw_parameters_clear_prohibited_interface_types(v4);
  swift_unknownObjectRelease();
  if (a1)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      v6 = (a1 + 32);
      do
      {
        v7 = *v6++;
        v8 = *(*(v1 + 16) + 16);

        os_unfair_lock_lock((v8 + 24));
        v9 = *(v8 + 16);
        swift_unknownObjectRetain();
        os_unfair_lock_unlock((v8 + 24));

        nw_parameters_prohibit_interface_type(v9, v7);
        swift_unknownObjectRelease();
        --v5;
      }

      while (v5);
    }
  }
}

uint64_t sub_18218D9DC(uint64_t a1)
{
  v3 = xpc_array_create(0, 0);
  if (a1)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      v5 = (a1 + 32);
      do
      {
        v6 = *v5++;
        v7 = xpc_uint64_create(qword_182AFE680[v6]);
        xpc_array_append_value(v3, v7);
        swift_unknownObjectRelease();
        --v4;
      }

      while (v4);
    }
  }

  swift_beginAccess();
  v8 = *(*(v1 + 16) + 16);

  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v8 + 24));

  nw_parameters_set_prohibited_interface_subtypes(v9, v3);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_18218DB20(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  swift_beginAccess();
  v7 = *(*(v2 + 16) + 16);

  os_unfair_lock_lock((v7 + 24));
  v8 = *(v7 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v7 + 24));

  sub_181AB5D28(a1, v6, &qword_1EA839360);
  v9 = type metadata accessor for NWEndpoint();
  if ((*(*(v9 - 8) + 48))(v6, 1, v9) == 1)
  {
    sub_181F49A88(v6, &qword_1EA839360);
    v10 = 0;
  }

  else
  {
    v10 = NWEndpoint.nw.getter();
    sub_181D8E3E8(v6, type metadata accessor for NWEndpoint);
  }

  nw_parameters_set_local_endpoint(v8, v10);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t sub_18218DD80(unsigned __int8 *a1, void (*a2)(uint64_t, uint64_t))
{
  v4 = *a1;
  swift_beginAccess();
  v5 = *(*(v2 + 16) + 16);

  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v5 + 24));

  a2(v6, v4);
  swift_unknownObjectRelease();
}

uint64_t sub_18218DE84(uint64_t a1, void (*a2)(uint64_t))
{
  swift_beginAccess();

  v4 = sub_182184EB8(a1, sub_181FB77F0, &qword_1EA8388D0);
  a2(v4);
}

uint64_t sub_18218DF24()
{
  swift_beginAccess();

  NWParameters.preferredNetworkAgentUUIDs.setter();
}

uint64_t sub_18218DF98(unsigned __int8 *a1, char *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_beginAccess();
  v5 = *(*(v2 + 16) + 16);

  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v5 + 24));

  nw_parameters_allow_interface_type(v6, v3);
  swift_unknownObjectRelease();
  v7 = *(*(v2 + 16) + 16);

  os_unfair_lock_lock((v7 + 24));
  v8 = *(v7 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v7 + 24));

  nw_parameters_allow_interface_subtype(v8, dword_182AFE6A8[v4]);
  swift_unknownObjectRelease();
}

uint64_t sub_18218E088(uint64_t a1)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  if (v3)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      v6 = *(*(v1 + 16) + 16);

      os_unfair_lock_lock((v6 + 24));
      v7 = *(v6 + 16);
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v6 + 24));

      nw_parameters_allow_interface_type(v7, v5);
      swift_unknownObjectRelease();
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_18218E144(uint64_t a1)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  if (v3)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      v6 = *(*(v1 + 16) + 16);

      os_unfair_lock_lock((v6 + 24));
      v7 = *(v6 + 16);
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v6 + 24));

      nw_parameters_allow_interface_subtype(v7, dword_182AFE6A8[v5]);
      swift_unknownObjectRelease();
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_18218E220(char a1, void (*a2)(uint64_t, void))
{
  swift_beginAccess();
  v5 = *(*(v2 + 16) + 16);

  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v5 + 24));

  a2(v6, a1 & 1);
  swift_unknownObjectRelease();
}

uint64_t sub_18218E2C4(__int128 *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  swift_beginAccess();
  v2 = *(*(v1 + 16) + 16);

  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v2 + 24));

  nw_parameters_set_migration_controller_session_uuid(v3, &v5);
  swift_unknownObjectRelease();

  return v1;
}

uint64_t sub_18218E38C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(*(v2 + 16) + 16);

  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v5 + 24));

  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18218E49C;
  aBlock[3] = &block_descriptor_35;
  v7 = _Block_copy(aBlock);

  nw_parameters_set_endpoint_resolution_preference_handler(v6, v7);
  _Block_release(v7);
  swift_unknownObjectRelease();
}

uint64_t sub_18218E49C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v3 = v1(v2);

  swift_unknownObjectRelease();
  return v3;
}

uint64_t Parameters1.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t NWParametersProvider.requireInterface(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *((*(a2 + 8))(a1, a2) + 16);
  os_unfair_lock_lock((v6 + 24));
  sub_1821DF12C((v6 + 16));
  os_unfair_lock_unlock((v6 + 24));

  return (*(*(a1 - 8) + 16))(a3, v3, a1);
}

uint64_t NWParametersProvider.requiredInterface(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *((*(a2 + 8))(a1, a2) + 16);

  os_unfair_lock_lock((v6 + 24));
  sub_1821EBDD8((v6 + 16));
  os_unfair_lock_unlock((v6 + 24));

  return (*(*(a1 - 8) + 16))(a3, v3, a1);
}

uint64_t sub_18218E768(uint64_t result)
{
  v2 = v1;
  if (result)
  {
    v3 = 0;
    v4 = *(result + 16);
    v5 = result + 32;
    v6 = MEMORY[0x1E69E7CC0];
    while (v4 != v3)
    {
      if (v3 >= v4)
      {
        __break(1u);
LABEL_14:
        __break(1u);
        return result;
      }

      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_14;
      }

      v8 = *(v5 + 8 * v3++);
      if (v8)
      {

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_181B7C3B0(0, *(v6 + 16) + 1, 1, v6);
          v6 = result;
        }

        v10 = *(v6 + 16);
        v9 = *(v6 + 24);
        if (v10 >= v9 >> 1)
        {
          result = sub_181B7C3B0((v9 > 1), v10 + 1, 1, v6);
          v6 = result;
        }

        *(v6 + 16) = v10 + 1;
        *(v6 + 8 * v10 + 32) = v8;
        v3 = v7;
      }
    }
  }

  v11 = *(v2 + 16);
  MEMORY[0x1EEE9AC00](result);
  os_unfair_lock_lock((v11 + 24));
  sub_1821EBDF0((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
}

uint64_t NWParametersProvider.prohibitInterfaces(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  result = (*(a3 + 8))(a2, a3);
  v10 = result;
  if (a1)
  {
    v20 = a4;
    v11 = 0;
    v12 = *(a1 + 16);
    v13 = a1 + 32;
    v14 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v12 == v11)
      {
        a4 = v20;
        goto LABEL_13;
      }

      if (v11 >= v12)
      {
        break;
      }

      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_15;
      }

      v16 = *(v13 + 8 * v11++);
      if (v16)
      {

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_181B7C3B0(0, *(v14 + 16) + 1, 1, v14);
          v14 = result;
        }

        v18 = *(v14 + 16);
        v17 = *(v14 + 24);
        if (v18 >= v17 >> 1)
        {
          result = sub_181B7C3B0((v17 > 1), v18 + 1, 1, v14);
          v14 = result;
        }

        *(v14 + 16) = v18 + 1;
        *(v14 + 8 * v18 + 32) = v16;
        v11 = v15;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_13:
    v19 = *(v10 + 16);
    MEMORY[0x1EEE9AC00](result);
    os_unfair_lock_lock((v19 + 24));
    sub_1821DF148((v19 + 16));
    os_unfair_lock_unlock((v19 + 24));

    return (*(*(a2 - 8) + 16))(a4, v5, a2);
  }

  return result;
}

uint64_t NWParametersProvider.prohibitedInterfaces(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *((*(a2 + 8))(a1, a2) + 16);
  os_unfair_lock_lock((v6 + 24));
  sub_1821EBDF0((v6 + 16));
  os_unfair_lock_unlock((v6 + 24));

  return (*(*(a1 - 8) + 16))(a3, v3, a1);
}

uint64_t NWParametersProvider.prohibitInterfaceTypes(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *((*(a2 + 8))(a1, a2) + 16);
  os_unfair_lock_lock((v6 + 24));
  sub_181EC77C4((v6 + 16));
  os_unfair_lock_unlock((v6 + 24));

  return (*(*(a1 - 8) + 16))(a3, v3, a1);
}

uint64_t NWParametersProvider.prohibitedInterfaceTypes(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *((*(a2 + 8))(a1, a2) + 16);
  os_unfair_lock_lock((v6 + 24));
  sub_1821EBE08((v6 + 16));
  os_unfair_lock_unlock((v6 + 24));

  return (*(*(a1 - 8) + 16))(a3, v3, a1);
}

uint64_t NWParametersProvider.localEndpoint(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v19 - v12;
  v14 = *((*(a3 + 8))(a2, a3, v11) + 16);
  os_unfair_lock_lock((v14 + 24));
  v15 = *(v14 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v14 + 24));

  sub_181AB5D28(a1, v13, &qword_1EA839360);
  v16 = type metadata accessor for NWEndpoint();
  if ((*(*(v16 - 8) + 48))(v13, 1, v16) == 1)
  {
    sub_181F49A88(v13, &qword_1EA839360);
    v17 = 0;
  }

  else
  {
    v17 = NWEndpoint.nw.getter();
    sub_181D8E3E8(v13, type metadata accessor for NWEndpoint);
  }

  nw_parameters_set_local_endpoint(v15, v17);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return (*(*(a2 - 8) + 16))(a4, v5, a2);
}

uint64_t NWParametersProvider.localPort(_:)@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *((*(a3 + 8))(a2, a3) + 16);
  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v8 + 24));

  host_with_numeric_port = nw_endpoint_create_host_with_numeric_port("::", v7);
  nw_parameters_set_local_endpoint(v9, host_with_numeric_port);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v11 = *(*(a2 - 8) + 16);

  return v11(a4, v4, a2);
}

uint64_t sub_18218F1E8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = *((*(a3 + 8))(a2, a3) + 16);
  os_unfair_lock_lock((v10 + 24));
  a4(*(v10 + 16), v9);
  os_unfair_lock_unlock((v10 + 24));

  v11 = *(*(a2 - 8) + 16);

  return v11(a5, v5, a2);
}

uint64_t sub_18218F370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X8>)
{
  (*(a3 + 8))(a2, a3);
  v10 = sub_182184EB8(a1, sub_181FB77F0, &qword_1EA8388D0);
  a4(v10);

  v11 = *(*(a2 - 8) + 16);

  return v11(a5, v5, a2);
}

uint64_t sub_18218F468(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      v5 = *(v1 + 16);
      os_unfair_lock_lock((v5 + 24));
      v6 = *(v5 + 16);
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v5 + 24));
      nw_parameters_allow_interface_type(v6, v4);
      swift_unknownObjectRelease();
      --v2;
    }

    while (v2);
  }
}

uint64_t NWParametersProvider.allowedInterfaceTypes(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = (a1 + 32);
    v8 = *(a3 + 8);
    do
    {
      v9 = *v7++;
      v10 = *(v8(a2, a3) + 16);
      os_unfair_lock_lock((v10 + 24));
      v11 = *(v10 + 16);
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v10 + 24));

      nw_parameters_allow_interface_type(v11, v9);
      swift_unknownObjectRelease();
      --v6;
    }

    while (v6);
  }

  v12 = *(*(a2 - 8) + 16);

  return v12(a4, v4, a2);
}

uint64_t sub_18218F644@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, void)@<X3>, uint64_t a5@<X8>)
{
  v10 = *((*(a3 + 8))(a2, a3) + 16);
  os_unfair_lock_lock((v10 + 24));
  v11 = *(v10 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v10 + 24));

  a4(v11, a1 & 1);
  swift_unknownObjectRelease();
  v12 = *(*(a2 - 8) + 16);

  return v12(a5, v5, a2);
}

uint64_t sub_18218F74C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void, void)@<X3>, uint64_t a5@<X8>)
{
  v10 = *((*(a3 + 8))(a2, a3) + 16);
  os_unfair_lock_lock((v10 + 24));
  a4(*(v10 + 16), a1 & 1);
  os_unfair_lock_unlock((v10 + 24));

  v11 = *(*(a2 - 8) + 16);

  return v11(a5, v5, a2);
}

uint64_t NWParametersProvider.migrationControllerSessionUUID(_:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = *a1;
  sub_182190034(&v8, v9, v4, a2, a3);
  return (*(*(a2 - 8) + 16))(a4, v4, a2);
}

uint64_t NWParametersProvider.endpointResolutionPreferenceHandler(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *((*(a4 + 8))(a3, a4) + 16);
  os_unfair_lock_lock((v10 + 24));
  v11 = *(v10 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v10 + 24));

  v14[4] = a1;
  v14[5] = a2;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_18218E49C;
  v14[3] = &block_descriptor_41;
  v12 = _Block_copy(v14);

  nw_parameters_set_endpoint_resolution_preference_handler(v11, v12);
  _Block_release(v12);
  swift_unknownObjectRelease();
  return (*(*(a3 - 8) + 16))(a5, v5, a3);
}

uint64_t NWParametersProvider.requiredInterfaceSubtype(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *((*(a3 + 8))(a2, a3) + 16);
  os_unfair_lock_lock((v8 + 24));
  nw_parameters_set_required_interface_subtype(*(v8 + 16), dword_182AFE6A8[v7]);
  os_unfair_lock_unlock((v8 + 24));

  v9 = *(*(a2 - 8) + 16);

  return v9(a4, v4, a2);
}

uint64_t NWParametersProvider.prohibitedInterfaceSubtypes(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *((*(a2 + 8))(a1, a2) + 16);
  os_unfair_lock_lock((v6 + 24));
  sub_1821DF164((v6 + 16));
  os_unfair_lock_unlock((v6 + 24));

  return (*(*(a1 - 8) + 16))(a3, v3, a1);
}

uint64_t NWParametersProvider.preferredNetworkAgentUUIDs(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(a2 + 8))(a1, a2);

  NWParameters.preferredNetworkAgentUUIDs.setter();

  v6 = *(*(a1 - 8) + 16);

  return v6(a3, v3, a1);
}

uint64_t NWParametersProvider.allowInterface(type:subtype:)@<X0>(unsigned __int8 *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  v8 = *a1;
  v7 = v5;
  return NWParametersProvider.allowedInterface(type:subtype:)(&v8, &v7, a3, a4, a5);
}

uint64_t NWParametersProvider.allowedInterface(type:subtype:)@<X0>(unsigned __int8 *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  v10 = *(a4 + 8);
  v11 = *(v10(a3, a4) + 16);
  os_unfair_lock_lock((v11 + 24));
  v12 = *(v11 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v11 + 24));

  nw_parameters_allow_interface_type(v12, v8);
  swift_unknownObjectRelease();
  v13 = *(v10(a3, a4) + 16);
  os_unfair_lock_lock((v13 + 24));
  v14 = *(v13 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v13 + 24));

  nw_parameters_allow_interface_subtype(v14, dword_182AFE6A8[v9]);
  swift_unknownObjectRelease();
  v15 = *(*(a3 - 8) + 16);

  return v15(a5, v5, a3);
}

uint64_t sub_18218FE2C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      v5 = *(v1 + 16);
      os_unfair_lock_lock((v5 + 24));
      v6 = *(v5 + 16);
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v5 + 24));
      nw_parameters_allow_interface_subtype(v6, dword_182AFE6A8[v4]);
      swift_unknownObjectRelease();
      --v2;
    }

    while (v2);
  }
}

uint64_t NWParametersProvider.allowedInterfaceSubtypes(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = (a1 + 32);
    v8 = *(a3 + 8);
    do
    {
      v9 = *v7++;
      v10 = *(v8(a2, a3) + 16);
      os_unfair_lock_lock((v10 + 24));
      v11 = *(v10 + 16);
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v10 + 24));

      nw_parameters_allow_interface_subtype(v11, dword_182AFE6A8[v9]);
      swift_unknownObjectRelease();
      --v6;
    }

    while (v6);
  }

  v12 = *(*(a2 - 8) + 16);

  return v12(a4, v4, a2);
}

uint64_t sub_18218FFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  os_unfair_lock_lock((v4 + 24));
  v5 = *(v4 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v4 + 24));
  nw_parameters_set_migration_controller_session_uuid(v5, a1);
  return swift_unknownObjectRelease();
}

uint64_t sub_182190034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *((*(a5 + 8))(a4, a5) + 16);
  os_unfair_lock_lock((v6 + 24));
  v7 = *(v6 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v6 + 24));

  nw_parameters_set_migration_controller_session_uuid(v7, a1);
  return swift_unknownObjectRelease();
}

uint64_t sub_1821900DC@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  os_unfair_lock_lock((v4 + 24));
  sub_1821EBDD8((v4 + 16));
  os_unfair_lock_unlock((v4 + 24));
  *a1 = v3;
}

uint64_t sub_182190150@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18218E768(a1);
  *a2 = result;
  return result;
}

uint64_t sub_18219017C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  os_unfair_lock_lock((v4 + 24));
  sub_1821EBDF0((v4 + 16));
  os_unfair_lock_unlock((v4 + 24));
  *a1 = v3;
}

uint64_t sub_1821901EC@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  os_unfair_lock_lock((v4 + 24));
  sub_1821EBE08((v4 + 16));
  os_unfair_lock_unlock((v4 + 24));
  *a1 = v3;
}

uint64_t sub_18219025C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_1821DF180(a1);
}

uint64_t sub_182190298@<X0>(unsigned __int16 *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v6 = *(v5 + 16);
  os_unfair_lock_lock((v6 + 24));
  v7 = *(v6 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v6 + 24));
  host_with_numeric_port = nw_endpoint_create_host_with_numeric_port("::", v4);
  nw_parameters_set_local_endpoint(v7, host_with_numeric_port);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *a2 = v5;
}

uint64_t sub_182190398@<X0>(unsigned __int8 *a1@<X0>, void (*a2)(void, uint64_t)@<X3>, void *a3@<X8>)
{
  v6 = *a1;
  v7 = *v3;
  v8 = *(v7 + 16);
  os_unfair_lock_lock((v8 + 24));
  a2(*(v8 + 16), v6);
  os_unfair_lock_unlock((v8 + 24));
  *a3 = v7;
}

uint64_t sub_182190428@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X3>, void *a3@<X8>)
{
  v6 = *v3;
  v7 = sub_182184EB8(a1, sub_181FB77F0, &qword_1EA8388D0);
  a2(v7);
  *a3 = v6;
}

uint64_t sub_1821904B8@<X0>(char a1@<W0>, void (*a2)(uint64_t, void)@<X3>, void *a3@<X8>)
{
  v7 = *v3;
  v8 = *(v7 + 16);
  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v8 + 24));
  a2(v9, a1 & 1);
  swift_unknownObjectRelease();
  *a3 = v7;
}

uint64_t sub_182190544@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18218FE2C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_182190588@<X0>(char a1@<W0>, void (*a2)(void, void)@<X3>, void *a3@<X8>)
{
  v7 = *v3;
  v8 = *(v7 + 16);
  os_unfair_lock_lock((v8 + 24));
  a2(*(v8 + 16), a1 & 1);
  os_unfair_lock_unlock((v8 + 24));
  *a3 = v7;
}

uint64_t sub_182190600@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v4 = *v2;
  sub_18218FFD0(&v6, v7, v4);
  *a2 = v4;
}

uint64_t sub_182190690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_1821DF2F0(a1, a2);
}

uint64_t Configuration.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  Configuration.init(_:)(a1);
  return v2;
}

uint64_t Configuration.init(_:)(uint64_t TupleTypeMetadata)
{
  v2 = v1;
  v3 = TupleTypeMetadata;
  v4 = *(*v1 + 360);
  if (v4)
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v6 = (&v40[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v8 = *(v7 + 368);
    v9 = *(v7 + 376);
    *v6 = v8;
    v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
    if (v4 >= 6 && v6 - v10 + 8 >= 0x20)
    {
      v11 = v4 & 0xFFFFFFFFFFFFFFFCLL;
      v35 = v6 + 3;
      v36 = (v10 + 16);
      v37 = v4 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v38 = *v36;
        *(v35 - 1) = *(v36 - 1);
        *v35 = v38;
        v35 += 2;
        v36 += 2;
        v37 -= 4;
      }

      while (v37);
      if (v4 == v11)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = v4 - v11;
    v13 = 8 * v11;
    v14 = &v6[v11 + 1];
    v15 = (v10 + v13);
    do
    {
      v16 = *v15++;
      *v14++ = v16;
      --v12;
    }

    while (v12);
LABEL_7:
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v17 = TupleTypeMetadata;
    goto LABEL_9;
  }

  v17 = *(*v1 + 368);
LABEL_9:
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v20 = &v40[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NWParameters();
  v21 = swift_allocObject();
  v22 = nw_parameters_create();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A00);
  v23 = swift_allocObject();
  *(v23 + 24) = 0;
  *(v23 + 16) = v22;
  *(v21 + 16) = v23;
  v1[2] = v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v40[-1] - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4)
  {
    v26 = (v17 + 48);
    v27 = v25;
    do
    {
      v28 = *v26;
      v26 += 4;
      *v27++ = &v20[v28];
      --v4;
    }

    while (v4);
    v29 = *(v17 + 32);
  }

  else
  {
    v29 = 0;
  }

  v3(&v20[v29], v25);
  v30 = sub_182185B3C(v20, v17);
  (*(v18 + 8))(v20, v17);
  v31 = v30[2];
  if (v31)
  {
    v32 = 0;
    v33 = (v30 + 4);
    while (v32 < v30[2])
    {
      sub_181F75240(v33, v40);
      sub_182190A60(v40, v2);
      ++v32;
      __swift_destroy_boxed_opaque_existential_1(v40);
      v33 += 40;
      if (v31 == v32)
      {
        goto LABEL_18;
      }
    }

    __break(1u);

    result = __swift_destroy_boxed_opaque_existential_1(v40);
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

uint64_t sub_182190A60(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  swift_beginAccess();
  v5 = *(*(a2 + 16) + 16);

  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v5 + 24));

  (*(v4 + 56))(v6, v3, v4);
  return swift_unknownObjectRelease();
}

uint64_t sub_182190C64(uint64_t a1)
{
  v2 = sub_182AD35E8();
  sub_182AD35B8();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t AsyncProperty.Iterator.next()(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_182AD35D8();
  *v3 = v1;
  v3[1] = sub_181F54964;

  return MEMORY[0x1EEE6D9D0](a1, v4);
}

uint64_t sub_182190D98(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_181EA9B98;

  return AsyncProperty.Iterator.next()(a1);
}

uint64_t sub_182190E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_182190F0C;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6);
}

uint64_t sub_182190F0C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t AsyncProperty.makeAsyncIterator()()
{
  v0 = sub_182AD3578();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v9 - v2);
  v4 = sub_182AD35E8();
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - v6;
  *v3 = 1;
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8640], v0, v5);
  sub_182AD35F8();

  return sub_182190C64(v7);
}

uint64_t sub_18219116C()
{
  v6[0] = sub_182AD3918();
  v0 = *(v6[0] - 8);
  MEMORY[0x1EEE9AC00](v6[0]);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_182AD38F8();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_182AD27C8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_181AA2FA8();
  sub_182AD27B8();
  v6[1] = MEMORY[0x1E69E7CC0];
  sub_1821EB618(&unk_1EA836B40, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AB70);
  sub_181AB3DCC(&qword_1EA836B50, &unk_1EA83AB70);
  sub_182AD3AC8();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v6[0]);
  result = sub_182AD3938();
  qword_1EA8433A8 = result;
  return result;
}

uint64_t Connection1.connection.getter()
{
  result = *(v0 + 16);
  if (result)
  {
  }

  __break(1u);
  return result;
}

uint64_t Connection1.__allocating_init(to:using:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_1821DF434(a1, a2);

  return v4;
}

uint64_t Connection1.init(to:using:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1821DF434(a1, a2);

  return v2;
}

uint64_t Connection1.init(using:)(uint64_t a1)
{
  v1 = sub_1821DE308(a1);

  return v1;
}

uint64_t sub_1821914A8(unsigned int *a1)
{
  v1 = *(a1 + 4);
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = v2 | (v1 << 32);
    v5 = *(result + 24);
    v6 = v5 + 56;
    v7 = 1 << *(v5 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v5 + 56);
    v10 = (v7 + 63) >> 6;

    v11 = 0;
    v12 = &unk_1EA83B1E0;
    v13 = &unk_182AFE5E0;
    v14 = MEMORY[0x1E69E69B8];
    v24 = v5;
    v25 = v4;
    v23 = HIDWORD(v4);
    if (v9)
    {
      goto LABEL_7;
    }

LABEL_8:
    while (1)
    {
      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v15 >= v10)
      {
      }

      v9 = *(v6 + 8 * v15);
      ++v11;
      if (v9)
      {
        while (1)
        {
          v16 = __clz(__rbit64(v9));
          v9 &= v9 - 1;
          sub_181FADD54(*(v5 + 48) + 40 * (v16 | (v15 << 6)), v33);
          __swift_instantiateConcreteTypeFromMangledNameV2(v12);
          if (swift_dynamicCast())
          {
            sub_181F3CF20(v28, v30);
            v17 = v14;
            v18 = v13;
            v19 = v12;
            v20 = v31;
            v21 = v32;
            __swift_project_boxed_opaque_existential_1(v30, v31);
            v27 = v23;
            v26 = v25;
            v22 = v20;
            v12 = v19;
            v13 = v18;
            v14 = v17;
            v5 = v24;
            (*(v21 + 8))(&v26, v22, v21);
            result = __swift_destroy_boxed_opaque_existential_1(v30);
            v11 = v15;
            if (!v9)
            {
              goto LABEL_8;
            }
          }

          else
          {
            v29 = 0;
            memset(v28, 0, sizeof(v28));
            result = sub_181F49A88(v28, &qword_1EA83B1E8);
            v11 = v15;
            if (!v9)
            {
              goto LABEL_8;
            }
          }

LABEL_7:
          v15 = v11;
        }
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t Connection1.deinit()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    nw_connection_cancel(*(v1 + 16));

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Connection1.__deallocating_deinit()
{
  Connection1.deinit();

  return swift_deallocClassInstance();
}

uint64_t Connection1.hashValue.getter()
{
  sub_182AD44E8();
  swift_getWitnessTable();
  ConnectionProtocol.hash(into:)();
  return sub_182AD4558();
}

uint64_t sub_1821917C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();
  result = ConnectionProtocol.id.getter(a1, WitnessTable);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_182191844()
{
  swift_getWitnessTable();

  return ConnectionProtocol.hash(into:)();
}

uint64_t sub_1821918A4()
{
  sub_182AD44E8();
  swift_getWitnessTable();
  ConnectionProtocol.hash(into:)();
  return sub_182AD4558();
}

uint64_t sub_182191938@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EA83AEA0;
  swift_beginAccess();
  return sub_181AB5D28(v1 + v3, a1, &qword_1EA83AEA8);
}

uint64_t sub_1821919A0(uint64_t a1)
{
  v3 = qword_1EA83AEA0;
  swift_beginAccess();
  sub_1821EB434(a1, v1 + v3, &qword_1EA83AEA8);
  return swift_endAccess();
}

uint64_t sub_182191A10@<X0>(void *a1@<X8>)
{
  v2 = (v1 + qword_1EA83AEB0);
  v3 = *(v1 + qword_1EA83AEB0);
  v4 = *(v1 + qword_1EA83AEB0 + 8);
  v5 = *(v1 + qword_1EA83AEB0 + 16);
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
}

void sub_182191A98(uint64_t a1@<X8>)
{
  v2 = *(v1 + qword_1EA83AF40);
  *(a1 + 4) = *(v1 + qword_1EA83AF40 + 4);
  *a1 = v2;
}

int *sub_182191AB8(int *result)
{
  v2 = *result;
  v3 = v1 + qword_1EA83AF40;
  *(v3 + 4) = *(result + 4);
  *v3 = v2;
  return result;
}

unsigned int *sub_182191AD8(unsigned int *result)
{
  v1 = *result | (*(result + 4) << 32);
  v2 = *(result + 4) >> 6;
  if (v2 > 1)
  {
    if (v2 == 3)
    {
      return result;
    }

    if (v1 == 0x8000000001)
    {
      v5 = 0x80;
      v3 = 1;
    }

    else
    {
      if (v1 != 0x8000000002)
      {
        return result;
      }

      v5 = 0x80;
      v3 = 2;
    }

    v4 = v3;
  }

  else
  {
    v4 = *result;
    if (v2)
    {
      v5 = (v1 & 0x3FFFFFFFFFLL | 0x4000000000) >> 32;
    }

    else
    {
      v5 = BYTE4(v1);
    }
  }

  return sub_182191B88(&v4);
}

uint64_t sub_182191B88(unsigned int *a1)
{
  v3 = sub_182AD27A8();
  v15 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_182AD27C8();
  v6 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1 | (*(a1 + 4) << 32);
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 28) = BYTE4(v9);
  *(v10 + 24) = v9;
  aBlock[4] = sub_1821EB264;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181B7D048;
  aBlock[3] = &block_descriptor_1781;
  v11 = _Block_copy(aBlock);

  sub_182AD27B8();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1821EB618(&qword_1ED40F4B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839F50);
  sub_181AB3DCC(&qword_1ED40F4A0, &unk_1EA839F50);
  sub_182AD3AC8();
  MEMORY[0x1865DA490](0, v8, v5, v11);
  _Block_release(v11);
  (*(v15 + 8))(v5, v3);
  (*(v6 + 8))(v8, v14);
}

uint64_t sub_182191EA4(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
  v150 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v160 = &v141 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v159 = &v141 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v158 = &v141 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v141 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v155 = &v141 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v154 = &v141 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B1D8);
  v146 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v157 = &v141 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v156 = &v141 - v20;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B1D0);
  v148 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v147 = &v141 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AEA8);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v145 = &v141 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v141 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AF50);
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v144 = &v141 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v141 - v31;
  v33 = &qword_1EA83A000;
  v34 = *(a1 + qword_1EA83AF40);
  BYTE4(v161) = *(a1 + qword_1EA83AF40 + 4);
  LODWORD(v161) = v34;
  v152 = HIDWORD(a2);
  v153 = a2;
  v167 = BYTE4(a2);
  v166 = a2;
  result = _s7Network12NWConnectionC5StateO2eeoiySbAE_AEtFZ_0(&v161, &v166);
  if ((result & 1) == 0)
  {
    v36 = qword_1EA83AEA0;
    swift_beginAccess();
    v151 = a1;
    sub_181AB5D28(a1 + v36, v26, &qword_1EA83AEA8);
    v37 = *(v28 + 48);
    v143 = v28 + 48;
    v142 = v37;
    v38 = v37(v26, 1, v27);
    v141 = v28;
    if (v38 == 1)
    {
      v39 = v27;
      result = sub_181F49A88(v26, &qword_1EA83AEA8);
      v40 = v153;
    }

    else
    {
      (*(v28 + 32))(v32, v26, v27);
      v40 = v153;
      BYTE4(v161) = v152;
      LODWORD(v161) = v153;
      v41 = v147;
      sub_182AD3588();
      (*(v148 + 8))(v41, v149);
      v42 = v32;
      v39 = v27;
      result = (*(v28 + 8))(v42, v27);
    }

    v43 = (v40 >> 38) & 3;
    v44 = v151;
    if (v43)
    {
      if (v43 == 1)
      {
        v45 = HIDWORD(v153) & 0x3F;
        sub_182191A10(&v161);
        v46 = v162;

        v47 = *(v46 + 2);
        if (v47)
        {
          v156 = v4;
          v48 = v45;
          v49 = *(v146 + 16);
          v50 = (*(v146 + 80) + 32) & ~*(v146 + 80);
          v155 = v46;
          v51 = &v46[v50];
          v52 = *(v146 + 72);
          v53 = (v146 + 8);
          v54 = v153;
          v55 = v157;
          do
          {
            v49(v55, v51, v17);
            sub_181F4B3B8();
            v56 = swift_allocError();
            *v57 = v54;
            *(v57 + 4) = v48;
            v161 = v56;
            sub_182AD34B8();
            v55 = v157;
            (*v53)(v157, v17);
            v51 += v52;
            --v47;
          }

          while (v47);

          v44 = v151;
          LOBYTE(v45) = v48;
          v4 = v156;
        }

        else
        {
        }

        v85 = (v44 + qword_1EA83AEB0);
        v86 = MEMORY[0x1E69E7CC0];
        *(v44 + qword_1EA83AEB0 + 8) = MEMORY[0x1E69E7CC0];

        sub_182191A10(&v161);
        v87 = v163;

        v88 = v87;
        v89 = *(v87 + 2);
        v157 = v85;
        if (v89)
        {
          v90 = v45;
          v91 = *(v150 + 16);
          v92 = (*(v150 + 80) + 32) & ~*(v150 + 80);
          v156 = v88;
          v93 = &v88[v92];
          v94 = *(v150 + 72);
          v95 = (v150 + 8);
          v96 = v153;
          v97 = v158;
          do
          {
            v91(v97, v93, v4);
            sub_181F4B3B8();
            v98 = swift_allocError();
            *v99 = v96;
            *(v99 + 4) = v90;
            v161 = v98;
            sub_182AD34B8();
            v97 = v158;
            (*v95)(v158, v4);
            v93 += v94;
            --v89;
          }

          while (v89);

          LOBYTE(v45) = v90;
          v85 = v157;
          v86 = MEMORY[0x1E69E7CC0];
        }

        else
        {
        }

        *(v85 + 2) = v86;

        sub_182191A10(&v161);
        v100 = v164;

        v101 = *(v100 + 2);
        if (v101)
        {
          v102 = v45;
          v103 = *(v150 + 16);
          v104 = (*(v150 + 80) + 32) & ~*(v150 + 80);
          v158 = v100;
          v105 = &v100[v104];
          v106 = *(v150 + 72);
          v107 = (v150 + 8);
          v108 = v153;
          v109 = v159;
          do
          {
            v103(v109, v105, v4);
            sub_181F4B3B8();
            v110 = swift_allocError();
            *v111 = v108;
            *(v111 + 4) = v102;
            v161 = v110;
            sub_182AD34B8();
            v109 = v159;
            (*v107)(v159, v4);
            v105 += v106;
            --v101;
          }

          while (v101);

          LOBYTE(v45) = v102;
          v85 = v157;
          v86 = MEMORY[0x1E69E7CC0];
        }

        else
        {
        }

        *(v85 + 3) = v86;

        sub_182191A10(&v161);
        v112 = v165;

        v113 = *(v112 + 2);
        if (v113)
        {
          v114 = *(v150 + 16);
          v115 = (*(v150 + 80) + 32) & ~*(v150 + 80);
          v159 = v112;
          v116 = &v112[v115];
          v117 = *(v150 + 72);
          v118 = (v150 + 8);
          v119 = v153;
          v120 = v160;
          do
          {
            v114(v120, v116, v4);
            sub_181F4B3B8();
            v121 = swift_allocError();
            *v122 = v119;
            *(v122 + 4) = v45;
            v161 = v121;
            sub_182AD34B8();
            v120 = v160;
            (*v118)(v160, v4);
            v116 += v117;
            --v113;
          }

          while (v113);

          v85 = v157;
          v86 = MEMORY[0x1E69E7CC0];
        }

        else
        {
        }

        *(v85 + 4) = v86;

        v68 = v153;
        v44 = v151;
        goto LABEL_46;
      }

      v68 = v153;
      v69 = v153 & 0xFFFFFFFFFFLL;
      if ((v153 & 0xFFFFFFFFFFLL) > 0x8000000001)
      {
        if (v69 != 0x8000000002)
        {
          sub_182191A10(&v161);
          v124 = v165;

          v125 = *(v124 + 2);
          if (v125)
          {
            v126 = v150 + 16;
            v127 = *(v150 + 16);
            v128 = (*(v150 + 80) + 32) & ~*(v150 + 80);
            v160 = v124;
            v129 = &v124[v128];
            v130 = *(v150 + 72);
            v131 = (v150 + 8);
            do
            {
              v132 = v12;
              v133 = v12;
              v134 = v126;
              v127(v132, v129, v4);
              sub_182AD34C8();
              (*v131)(v133, v4);
              v126 = v134;
              v12 = v133;
              v129 += v130;
              --v125;
            }

            while (v125);
          }

          v44 = v151;
          *(v151 + qword_1EA83AEB0 + 32) = MEMORY[0x1E69E7CC0];

          v135 = qword_1EA83AEA0;
          swift_beginAccess();
          v136 = v44 + v135;
          v137 = v145;
          sub_181AB5D28(v136, v145, &qword_1EA83AEA8);
          v138 = v39;
          v33 = &qword_1EA83A000;
          if (v142(v137, 1, v39) == 1)
          {
            result = sub_181F49A88(v137, &qword_1EA83AEA8);
          }

          else
          {
            v139 = v141;
            v140 = v144;
            (*(v141 + 32))(v144, v137, v138);
            sub_182AD3598();
            result = (*(v139 + 8))(v140, v138);
          }

          goto LABEL_47;
        }

        sub_182191A10(&v161);
        v78 = v164;

        v79 = *(v78 + 2);
        if (v79)
        {
          v80 = *(v150 + 16);
          v81 = &v78[(*(v150 + 80) + 32) & ~*(v150 + 80)];
          v82 = *(v150 + 72);
          v83 = (v150 + 8);
          v84 = v155;
          do
          {
            v80(v84, v81, v4);
            sub_182AD34C8();
            v84 = v155;
            (*v83)(v155, v4);
            v81 += v82;
            --v79;
          }

          while (v79);
        }

        v44 = v151;
        *(v151 + qword_1EA83AEB0 + 24) = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v70 = v152;
        if (v69 == 0x8000000000)
        {
LABEL_48:
          v123 = v44 + v33[488];
          *(v123 + 4) = v70;
          *v123 = v68;
          return result;
        }

        sub_182191A10(&v161);
        v71 = v163;

        v72 = *(v71 + 2);
        if (v72)
        {
          v73 = *(v150 + 16);
          v74 = &v71[(*(v150 + 80) + 32) & ~*(v150 + 80)];
          v75 = *(v150 + 72);
          v76 = (v150 + 8);
          v77 = v154;
          do
          {
            v73(v77, v74, v4);
            sub_182AD34C8();
            v77 = v154;
            (*v76)(v154, v4);
            v74 += v75;
            --v72;
          }

          while (v72);
        }

        v44 = v151;
        *(v151 + qword_1EA83AEB0 + 16) = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      sub_182191A10(&v161);
      v58 = v162;

      v59 = *(v58 + 2);
      if (v59)
      {
        v60 = *(v146 + 16);
        v61 = (*(v146 + 80) + 32) & ~*(v146 + 80);
        v160 = v58;
        v62 = &v58[v61];
        v63 = *(v146 + 72);
        v64 = (v146 + 8);
        v65 = v152;
        v66 = v153;
        v67 = v156;
        do
        {
          v60(v67, v62, v17);
          LODWORD(v161) = v66;
          BYTE4(v161) = v65;
          sub_182AD34C8();
          v67 = v156;
          (*v64)(v156, v17);
          v62 += v63;
          --v59;
        }

        while (v59);

        v44 = v151;
        v68 = v66;
      }

      else
      {

        v68 = v153;
      }

      *(v44 + qword_1EA83AEB0 + 8) = MEMORY[0x1E69E7CC0];
    }

LABEL_46:
    v33 = &qword_1EA83A000;
LABEL_47:
    v70 = v152;
    goto LABEL_48;
  }

  return result;
}

uint64_t sub_182192D8C@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  *a1 = sub_1821DF720;
  a1[1] = v1;
}

uint64_t sub_182192DA8(uint64_t a1, void *a2)
{
  v4 = *a2;
  v5 = sub_182AD27A8();
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_182AD27C8();
  v21 = *(v8 - 8);
  v22 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AF50);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - v13;
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  v20 = qword_1EA8433A8;
  (*(v12 + 16))(v14, a1, v11);
  v15 = (*(v12 + 80) + 64) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = v4[10];
  *(v16 + 3) = v4[11];
  *(v16 + 4) = swift_allocateMetadataPack();
  *(v16 + 5) = v4[13];
  *(v16 + 6) = swift_allocateWitnessTablePack();
  *(v16 + 7) = a2;
  (*(v12 + 32))(&v16[v15], v14, v11);
  aBlock[4] = sub_1821EB1C0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181B7D048;
  aBlock[3] = &block_descriptor_1775;
  v17 = _Block_copy(aBlock);

  sub_182AD27B8();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1821EB618(&qword_1ED40F4B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839F50);
  sub_181AB3DCC(&qword_1ED40F4A0, &unk_1EA839F50);
  v18 = v24;
  sub_182AD3AC8();
  MEMORY[0x1865DA490](0, v10, v7, v17);
  _Block_release(v17);
  (*(v23 + 8))(v7, v18);
  (*(v21 + 8))(v10, v22);
}

uint64_t sub_1821931DC(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B1D0);
  v3 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AEA8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AF50);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - v14;
  v16 = qword_1EA83AEA0;
  swift_beginAccess();
  sub_181AB5D28(a1 + v16, v11, &qword_1EA83AEA8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_181F49A88(v11, &qword_1EA83AEA8);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    sub_182AD3598();
    (*(v13 + 56))(v8, 1, 1, v12);
    sub_1821919A0(v8);
    (*(v13 + 8))(v15, v12);
  }

  v17 = *(a1 + qword_1EA83AF40);
  v23 = *(a1 + qword_1EA83AF40 + 4);
  v22 = v17;
  v18 = v21;
  sub_182AD3588();
  (*(v3 + 8))(v5, v20);
  if ((*(a1 + qword_1EA83AF40) | (*(a1 + qword_1EA83AF40 + 4) << 32)) == 0x8000000003)
  {
    return sub_182AD3598();
  }

  (*(v13 + 16))(v8, v18, v12);
  (*(v13 + 56))(v8, 0, 1, v12);
  sub_1821919A0(v8);

  return sub_182AD3568();
}

uint64_t sub_182193584()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AEA8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AF50);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  return sub_1821919A0(v2);
}

uint64_t sub_182193668()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_182193730;
  v2 = *(v0 + 16);
  v3 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v1, 0, 0, 1701736292, 0xE400000000000000, sub_1821DF728, v2, v3);
}

uint64_t sub_182193730()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_1821EBE60;
  }

  else
  {
    v2 = sub_181F5EB58;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_182193844(uint64_t a1, void *a2)
{
  v4 = *a2;
  v5 = sub_182AD27A8();
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_182AD27C8();
  v21 = *(v8 - 8);
  v22 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - v13;
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  v20 = qword_1EA8433A8;
  (*(v12 + 16))(v14, a1, v11);
  v15 = (*(v12 + 80) + 64) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = v4[10];
  *(v16 + 3) = v4[11];
  *(v16 + 4) = swift_allocateMetadataPack();
  *(v16 + 5) = v4[13];
  *(v16 + 6) = swift_allocateWitnessTablePack();
  *(v16 + 7) = a2;
  (*(v12 + 32))(&v16[v15], v14, v11);
  aBlock[4] = sub_1821EB0D8;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181B7D048;
  aBlock[3] = &block_descriptor_1769;
  v17 = _Block_copy(aBlock);

  sub_182AD27B8();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1821EB618(&qword_1ED40F4B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839F50);
  sub_181AB3DCC(&qword_1ED40F4A0, &unk_1EA839F50);
  v18 = v24;
  sub_182AD3AC8();
  MEMORY[0x1865DA490](0, v10, v7, v17);
  _Block_release(v17);
  (*(v23 + 8))(v7, v18);
  (*(v21 + 8))(v10, v22);
}

uint64_t sub_182193C78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = v19 - v7;
  v9 = *(a1 + qword_1EA83AF40 + 4);
  if (!(v9 >> 6))
  {
    goto LABEL_5;
  }

  v10 = *(a1 + qword_1EA83AF40) | (v9 << 32);
  if (v9 >> 6 == 1)
  {
    sub_181F4B3B8();
    v11 = swift_allocError();
    *v12 = v10;
    *(v12 + 4) = BYTE4(v10) & 0x3F;
    v19[1] = v11;
    return sub_182AD34B8();
  }

  if (v10 >= 0xFFFFFF8000000003)
  {
    return sub_182AD34C8();
  }

LABEL_5:
  (*(v5 + 16))(v8, a2, v4, v6);
  v14 = a1 + qword_1EA83AEB0;
  v15 = *(a1 + qword_1EA83AEB0 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v14 + 32) = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_181F5A458(0, v15[2] + 1, 1, v15);
    *(v14 + 32) = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_181F5A458(v17 > 1, v18 + 1, 1, v15);
  }

  v15[2] = v18 + 1;
  result = (*(v5 + 32))(v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v18, v8, v4);
  *(v14 + 32) = v15;
  return result;
}

uint64_t SendProgress.deinit()
{
  sub_181F49A88(v0 + qword_1EA83AEA0, &qword_1EA83AEA8);

  return v0;
}

uint64_t SendProgress.__deallocating_deinit()
{
  SendProgress.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_182193F78()
{
  sub_182AD44E8();
  MEMORY[0x1865DB070](v0);
  return sub_182AD4558();
}

uint64_t static Datagram.send<A>(connection:content:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a3;
  v6[5] = a5;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *a4;
  v6[6] = a6;
  v6[7] = v7;
  return MEMORY[0x1EEE6DFA0](sub_182194120, 0, 0);
}

uint64_t sub_182194120()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v7 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *(v3 + 16) = *(v0 + 40);
  *(v3 + 32) = v7;
  *(v3 + 48) = v2;
  *(v3 + 56) = v1;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_182185338;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000022, 0x8000000182BDFAC0, sub_1821DF730, v3, v5);
}

uint64_t sub_182194234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27[1] = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - v13;
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  (*(a7 + 48))(qword_1EA8433A8, a6, a7);
  result = (*(a7 + 40))(a6, a7);
  if (result)
  {
    v16 = result;
    aBlock[0] = a5;
    v17 = Datagram.Metadata.toContentContext()();
    (*(v12 + 16))(v14, a1, v11);
    v18 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v19 = swift_allocObject();
    (*(v12 + 32))(v19 + v18, v14, v11);
    v20 = *(v16 + 16);
    v21 = sub_182AD2138();
    v23 = NWCreateDispatchDataFromNSData(v21, v22);

    v24 = *(v17 + 16);
    v25 = swift_allocObject();
    *(v25 + 16) = sub_1821EC0D4;
    *(v25 + 24) = v19;
    aBlock[4] = sub_181FE5014;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181AA4EBC;
    aBlock[3] = &block_descriptor_1763;
    v26 = _Block_copy(aBlock);

    nw_connection_send(v20, v23, v24, 1, v26);

    _Block_release(v26);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static Datagram.receive<A>(connection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x1EEE6DFA0](sub_182194528, 0, 0);
}

uint64_t sub_182194528()
{
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *(v2 + 16) = *(v0 + 56);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A118);
  *v3 = v0;
  v3[1] = sub_1821860C0;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000014, 0x8000000182BDFAF0, sub_1821DF760, v2, v4);
}

uint64_t sub_182194638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A128);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = aBlock - v9;
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  (*(a4 + 48))(qword_1EA8433A8, a3, a4);
  result = (*(a4 + 40))(a3, a4);
  if (result)
  {
    v12 = result;
    (*(v8 + 16))(v10, a1, v7);
    v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v14 = swift_allocObject();
    (*(v8 + 32))(v14 + v13, v10, v7);
    v15 = *(v12 + 16);
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1821EB088;
    *(v16 + 24) = v14;
    aBlock[4] = sub_181FE4FD0;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181D478F8;
    aBlock[3] = &block_descriptor_1748;
    v17 = _Block_copy(aBlock);

    nw_connection_receive_message(v15, v17);
    _Block_release(v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1821948E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_181F5EB68;

  return static Datagram.send<A>(connection:content:metadata:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1821949AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_1821EBD14;

  return static Datagram.receive<A>(connection:)(a2, a3, a4, a5);
}

uint64_t sub_182194AB4(const char *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  type metadata accessor for NWConnection.ContentContext();
  v8 = swift_allocObject();
  v9 = nw_content_context_create(a1);
  *(v8 + 16) = v9;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = 0;
  v10 = swift_unknownObjectRetain();
  nw_content_context_set_expiration_milliseconds(v10, 0);
  *(v8 + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v9, 0.5);
  *(v8 + 64) = 1;
  nw_content_context_set_is_final(v9, 1);
  result = swift_unknownObjectRelease();
  *(v8 + 56) = 0;
  if (!(v7 >> 62))
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_3;
    }

    return v8;
  }

  result = sub_182AD3EB8();
  v12 = result;
  if (!result)
  {
    return v8;
  }

LABEL_3:
  if (v12 >= 1)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v12; ++i)
      {
        v14 = MEMORY[0x1865DA790](i, v7);
        nw_content_context_set_metadata_for_protocol(v9, *(v14 + 16));
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v15 = (v7 + 32);
      do
      {
        v16 = *v15++;
        nw_content_context_set_metadata_for_protocol(v9, *(v16 + 16));
        --v12;
      }

      while (v12);
    }

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t static QUICDatagram.send<A>(connection:content:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_182194C5C, 0, 0);
}

uint64_t sub_182194C5C()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *(v5 + 16) = *(v0 + 48);
  *(v5 + 32) = v4;
  *(v5 + 40) = v1;
  *(v5 + 48) = v3;
  *(v5 + 56) = v2;
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_182185338;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000022, 0x8000000182BDFAC0, sub_1821DF76C, v5, v7);
}

void sub_182194D68(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v36 = a4;
  v37 = a5;
  v34 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
  v10 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v33 = &v33 - v11;
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  v12 = *(a7 + 48);
  v38 = a6;
  v12(qword_1EA8433A8, a6, a7);
  type metadata accessor for NWConnection.ContentContext();
  inited = swift_initStackObject();
  v14 = nw_content_context_create("sendContext");
  *(inited + 16) = v14;
  *(inited + 24) = 0x746E6F43646E6573;
  *(inited + 32) = 0xEB00000000747865;
  *(inited + 40) = 0;
  v15 = swift_unknownObjectRetain();
  nw_content_context_set_expiration_milliseconds(v15, 0);
  *(inited + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v14, 0.5);
  *(inited + 64) = 1;
  nw_content_context_set_is_final(v14, 1);
  swift_unknownObjectRelease();
  *(inited + 56) = 0;
  if (a3)
  {
    if (a3 >> 62)
    {
      v16 = sub_182AD3EB8();
      if (!v16)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v16 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v16)
      {
        goto LABEL_13;
      }
    }

    if (v16 < 1)
    {
      __break(1u);
      goto LABEL_18;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v16; ++i)
      {
        v18 = MEMORY[0x1865DA790](i, a3);
        nw_content_context_set_metadata_for_protocol(v14, *(v18 + 16));
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v19 = (a3 + 32);
      do
      {
        v20 = *v19++;
        nw_content_context_set_metadata_for_protocol(v14, *(v20 + 16));
        --v16;
      }

      while (v16);
    }
  }

LABEL_13:
  v21 = (*(a7 + 40))(v38, a7);
  if (v21)
  {
    v22 = v21;
    v23 = v33;
    v24 = v35;
    (*(v10 + 16))(v33, v34, v35);
    v25 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v26 = swift_allocObject();
    (*(v10 + 32))(v26 + v25, v23, v24);
    v27 = *(v22 + 16);
    v28 = sub_182AD2138();
    v30 = NWCreateDispatchDataFromNSData(v28, v29);

    v31 = swift_allocObject();
    *(v31 + 16) = sub_1821EC0D4;
    *(v31 + 24) = v26;
    aBlock[4] = sub_181FE5014;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181AA4EBC;
    aBlock[3] = &block_descriptor_1738;
    v32 = _Block_copy(aBlock);

    nw_connection_send(v27, v30, v14, 1, v32);

    _Block_release(v32);
    swift_setDeallocating();
    NWConnection.ContentContext.deinit();
    swift_deallocClassInstance();

    return;
  }

LABEL_18:
  __break(1u);
}

uint64_t static QUICDatagram.receive<A>(connection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x1EEE6DFA0](sub_182195180, 0, 0);
}

uint64_t sub_182195180()
{
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *(v2 + 16) = *(v0 + 56);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AEB8);
  *v3 = v0;
  v3[1] = sub_182195290;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000014, 0x8000000182BDFAF0, sub_1821DF784, v2, v4);
}

uint64_t sub_182195290()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1820A5D74;
  }

  else
  {

    v2 = sub_1820AC638;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1821953AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B000);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = aBlock - v9;
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  (*(a4 + 48))(qword_1EA8433A8, a3, a4);
  result = (*(a4 + 40))(a3, a4);
  if (result)
  {
    v12 = result;
    (*(v8 + 16))(v10, a1, v7);
    v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v14 = swift_allocObject();
    (*(v8 + 32))(v14 + v13, v10, v7);
    v15 = *(v12 + 16);
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1821EAF6C;
    *(v16 + 24) = v14;
    aBlock[4] = sub_181FE4FD0;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181D478F8;
    aBlock[3] = &block_descriptor_1723;
    v17 = _Block_copy(aBlock);

    nw_connection_receive_message(v15, v17);
    _Block_release(v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_182195658(uint64_t a1, unint64_t a2)
{
  sub_181F49B58(a1, a2);
  sub_181F49B58(a1, a2);

  sub_181C1F2E4(a1, a2);
  return a1;
}

uint64_t static QUICDatagram.map(_:)(void *a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v7 = *a4;
  sub_181F49B58(a2, a3);
  sub_181F49B58(a2, a3);

  sub_181C1F2E4(a2, a3);
  *a1 = v7;
  return a2;
}

uint64_t sub_182195734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_181F5EB68;

  return static DatagramProtocol.send<A>(connection:content:metadata:)(a1, a2, a3, a4, a7, a5, &protocol witness table for QUICDatagram, a6);
}

uint64_t static DatagramProtocol.send<A>(connection:content:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_182195844, 0, 0);
}

uint64_t sub_182195844()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 40);
  v12 = *(v0 + 24);
  v6 = *(v0 + 16);
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v3;
  *(v7 + 32) = v2;
  *(v7 + 40) = v1;
  *(v7 + 48) = v6;
  *(v7 + 56) = v12;
  *(v7 + 72) = v5;
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  v8[2] = v4;
  v8[3] = v3;
  v8[4] = v2;
  v8[5] = v1;
  v8[6] = v6;
  v9 = swift_task_alloc();
  *(v0 + 96) = v9;
  *v9 = v0;
  v9[1] = sub_182186384;
  v10 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v9, &unk_182AFC238, v7, sub_1821EC228, v8, 0, 0, v10);
}

uint64_t sub_18219598C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_182195A48;

  return static QUICDatagram.receive<A>(connection:)(a2, a3, a4, a5);
}

uint64_t sub_182195A48(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 16);
    *v8 = a1;
    v8[1] = a2;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_182195B80(uint64_t *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v9 = *a5;
  sub_181F49B58(a3, a4);
  sub_181F49B58(a3, a4);

  result = sub_181C1F2E4(a3, a4);
  *a2 = v9;
  *a1 = a3;
  a1[1] = a4;
  return result;
}

NSObject *TLS.nw.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 25);
  v6 = *(v0 + 26);
  v7 = *(v0 + 32);
  v27 = *(v0 + 40);
  v28 = *(v0 + 48);
  v29 = *(v0 + 56);
  v30 = *(v0 + 57);
  version = *(v0 + 58);
  v8 = *(v0 + 62);
  v31 = *(v0 + 60);
  v32 = *(v0 + 64);
  swift_unknownObjectRetain();
  options = nw_tls_create_options();
  v10 = nw_tls_copy_sec_protocol_options(options);
  v11 = v10;
  if (v2)
  {
    sec_protocol_options_set_local_identity(v10, v2);
    swift_unknownObjectRelease();
  }

  if (v1)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v1;
    *(v12 + 24) = v3;
    aBlock[4] = sub_1821DF87C;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18218793C;
    aBlock[3] = &block_descriptor_92;
    v13 = _Block_copy(aBlock);
    sub_181AA39C0(v1);

    if (qword_1EA837208 != -1)
    {
      swift_once();
    }

    sec_protocol_options_set_verify_block(v11, v13, qword_1EA8433A8);
    _Block_release(v13);
    sub_181A554F4(v1);
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v5 != 2)
      {
        goto LABEL_19;
      }

      goto LABEL_12;
    }

    v14 = v11;
    v15 = 1;
LABEL_18:
    sec_protocol_options_set_peer_authentication_required(v14, v15);
    if (v5 != 2)
    {
      goto LABEL_19;
    }

LABEL_12:
    if (v6 != 2)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  if (!v4)
  {
    sec_protocol_options_set_peer_authentication_optional(v11, 0);
    v14 = v11;
    v15 = 0;
    goto LABEL_18;
  }

  sec_protocol_options_set_peer_authentication_optional(v11, 1);
  if (v5 == 2)
  {
    goto LABEL_12;
  }

LABEL_19:
  sec_protocol_options_set_peer_authentication_optional(v11, v5 & 1);
  if (v6 != 2)
  {
LABEL_20:
    sec_protocol_options_set_peer_authentication_required(v11, v6 & 1);
    if (!v7)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

LABEL_13:
  if (!v7)
  {
    goto LABEL_24;
  }

LABEL_21:
  v16 = *(v7 + 16);
  if (v16)
  {
    v17 = v7 + 40;
    do
    {
      v18 = sub_182AD3048();
      sec_protocol_options_add_tls_application_protocol(v11, (v18 + 32));

      v17 += 16;
      --v16;
    }

    while (v16);
  }

LABEL_24:
  if (v27)
  {
    v19 = *(v27 + 16);
    if (v19)
    {
      v20 = (v27 + 32);
      do
      {
        v21 = *v20++;
        sec_protocol_options_append_tls_ciphersuite(v11, v21);
        --v19;
      }

      while (v19);
    }
  }

  if (v28)
  {
    v22 = *(v28 + 16);
    if (v22)
    {
      v23 = (v28 + 32);
      do
      {
        v24 = *v23++;
        sec_protocol_options_append_tls_ciphersuite_group(v11, v24);
        --v22;
      }

      while (v22);
    }
  }

  if (v29 != 2)
  {
    sec_protocol_options_set_tls_early_data_enabled();
  }

  if (v30 == 2)
  {
    if (v31)
    {
      goto LABEL_36;
    }

LABEL_40:
    sec_protocol_options_set_min_tls_protocol_version(v11, version);
    if (v32)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  sec_protocol_options_set_tls_tickets_enabled(v11, v30 & 1);
  if ((v31 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_36:
  if ((v32 & 1) == 0)
  {
LABEL_37:
    sec_protocol_options_set_max_tls_protocol_version(v11, v8);
  }

LABEL_38:
  swift_unknownObjectRelease();
  return options;
}

uint64_t sub_182195F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a4;
  v8[3] = a5;
  v12 = (a6 + *a6);
  v10 = swift_task_alloc();
  v8[4] = v10;
  *v10 = v8;
  v10[1] = sub_182196098;

  return v12(a8);
}

uint64_t sub_182196098(char a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x1EEE6DFA0](sub_182196198, 0, 0);
}

uint64_t sub_182196198()
{
  (*(v0 + 16))(*(v0 + 40));
  v1 = *(v0 + 8);

  return v1();
}

__n128 TLS.belowProtocol.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 84);
  v3 = *(v1 + 116);
  *(a1 + 32) = *(v1 + 100);
  *(a1 + 48) = v3;
  *(a1 + 61) = *(v1 + 129);
  *a1 = *(v1 + 68);
  *(a1 + 16) = result;
  return result;
}

double TLS.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 515;
  *(a1 + 26) = 2;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 514;
  *(a1 + 60) = 1;
  *(a1 + 62) = 0;
  *(a1 + 64) = 1;
  TCP.init()(v5);
  v2 = v5[0];
  *(a1 + 84) = v5[1];
  result = *&v6;
  v4 = *v7;
  *(a1 + 100) = v6;
  *(a1 + 116) = v4;
  *(a1 + 129) = *&v7[13];
  *(a1 + 68) = v2;
  return result;
}

double TCP.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 33686018;
  *(a1 + 8) = 1;
  *(a1 + 12) = 0;
  *(a1 + 16) = 1;
  *(a1 + 20) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 0;
  *(a1 + 32) = 1;
  *(a1 + 36) = 0;
  *(a1 + 40) = 1;
  *(a1 + 44) = 0;
  *(a1 + 48) = 1;
  *(a1 + 52) = 0;
  *(a1 + 56) = 1;
  *(a1 + 57) = 33686018;
  *(a1 + 61) = 3;
  *(a1 + 63) = 1;
  *&result = 50463234;
  *(a1 + 64) = 50463234;
  *(a1 + 68) = 2;
  return result;
}

double TLS.init(_:)@<D0>(void (*a1)(_OWORD *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 515;
  *(a2 + 26) = 2;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  *(a2 + 56) = 514;
  *(a2 + 60) = 1;
  *(a2 + 62) = 0;
  *(a2 + 64) = 1;
  a1(v6);
  v3 = v6[0];
  *(a2 + 84) = v6[1];
  result = *&v7;
  v5 = *v8;
  *(a2 + 100) = v7;
  *(a2 + 116) = v5;
  *(a2 + 129) = *&v8[13];
  *(a2 + 68) = v3;
  return result;
}

uint64_t TLS.configure(parameters:)(NSObject *a1)
{
  v1 = nw_parameters_copy_default_protocol_stack(a1);
  v2 = TLS.nw.getter();
  nw_protocol_stack_prepend_application_protocol(v1, v2);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t TLS.configureNestedStack(parameters:)(NSObject *a1)
{
  v2 = nw_parameters_copy_default_protocol_stack(a1);
  sub_18219AFE0();
  nw_protocol_stack_set_internet_protocol(v2);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v3 = nw_parameters_copy_default_protocol_stack(a1);
  v4 = sub_182197210();
  nw_protocol_stack_set_transport_protocol(v3, v4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v5 = nw_parameters_copy_default_protocol_stack(a1);
  v6 = TLS.nw.getter();
  nw_protocol_stack_prepend_application_protocol(v5, v6);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t TCP.configureNestedStack(parameters:)(NSObject *a1)
{
  v2 = nw_parameters_copy_default_protocol_stack(a1);
  sub_18219AFE0();
  nw_protocol_stack_set_internet_protocol(v2);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v3 = nw_parameters_copy_default_protocol_stack(a1);
  v4 = sub_182197210();
  nw_protocol_stack_set_transport_protocol(v3, v4);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t TLS.localIdentity(_:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = v2[5];
  v6 = v2[7];
  v21 = v2[6];
  v22[0] = v6;
  *(v22 + 9) = *(v2 + 121);
  v7 = v2[1];
  v18[0] = *v2;
  v18[1] = v7;
  v8 = v2[3];
  v10 = *v2;
  v9 = v2[1];
  v18[2] = v2[2];
  v18[3] = v8;
  v11 = v2[5];
  v13 = v2[2];
  v12 = v2[3];
  v19 = v2[4];
  v14 = v19;
  v20 = v11;
  v15 = v2[7];
  a2[6] = v21;
  a2[7] = v15;
  *(a2 + 121) = *(v2 + 121);
  a2[2] = v13;
  a2[3] = v12;
  a2[4] = v14;
  a2[5] = v5;
  *a2 = v10;
  a2[1] = v9;
  sub_1821DF8B4(v18, &v17);
  swift_unknownObjectRetain();
  result = swift_unknownObjectRelease();
  *a2 = a1;
  return result;
}

uint64_t sub_1821966E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = v3[1];
  v21[0] = *v3;
  v21[1] = v7;
  v8 = v3[5];
  v9 = v3[7];
  v24 = v3[6];
  v25[0] = v9;
  *(v25 + 9) = *(v3 + 121);
  v10 = v3[3];
  v11 = *v3;
  v12 = v3[1];
  v21[2] = v3[2];
  v21[3] = v10;
  v13 = v3[5];
  v15 = v3[2];
  v14 = v3[3];
  v22 = v3[4];
  v16 = v22;
  v23 = v13;
  v17 = v3[7];
  *(a3 + 96) = v24;
  *(a3 + 112) = v17;
  *(a3 + 121) = *(v3 + 121);
  *(a3 + 32) = v15;
  *(a3 + 48) = v14;
  *(a3 + 64) = v16;
  *(a3 + 80) = v8;
  v18 = *(&v21[0] + 1);
  *a3 = v11;
  *(a3 + 16) = v12;
  sub_1821DF8B4(v21, &v20);

  result = sub_181A554F4(v18);
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
  return result;
}

uint64_t TLS.PeerAuthentication.hashValue.getter()
{
  v1 = *v0;
  sub_182AD44E8();
  MEMORY[0x1865DB070](v1);
  return sub_182AD4558();
}

uint64_t TLS.peerAuthentication(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[5];
  v4 = v2[7];
  v22 = v2[6];
  v23[0] = v4;
  *(v23 + 9) = *(v2 + 121);
  v5 = v2[1];
  v6 = v2[3];
  v18 = v2[2];
  v7 = v18;
  v19 = v6;
  v8 = v2[3];
  v9 = v2[5];
  v20 = v2[4];
  v10 = v20;
  v21 = v9;
  v11 = v2[1];
  v17[0] = *v2;
  v12 = v17[0];
  v17[1] = v11;
  v13 = v2[7];
  *(a2 + 96) = v22;
  *(a2 + 112) = v13;
  *(a2 + 121) = *(v2 + 121);
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  *(a2 + 64) = v10;
  *(a2 + 80) = v3;
  v14 = *a1;
  *a2 = v12;
  *(a2 + 16) = v5;
  *(a2 + 24) = v14;
  return sub_1821DF8B4(v17, &v16);
}

uint64_t TLS.peerAuthenticationOptional(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2[5];
  v4 = v2[7];
  v21 = v2[6];
  v22[0] = v4;
  *(v22 + 9) = *(v2 + 121);
  v5 = v2[1];
  v6 = v2[3];
  v17 = v2[2];
  v7 = v17;
  v18 = v6;
  v8 = v2[3];
  v9 = v2[5];
  v19 = v2[4];
  v10 = v19;
  v20 = v9;
  v11 = v2[1];
  v16[0] = *v2;
  v12 = v16[0];
  v16[1] = v11;
  v13 = v2[7];
  *(a2 + 96) = v21;
  *(a2 + 112) = v13;
  *(a2 + 121) = *(v2 + 121);
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  *(a2 + 64) = v10;
  *(a2 + 80) = v3;
  *a2 = v12;
  *(a2 + 16) = v5;
  *(a2 + 25) = a1;
  return sub_1821DF8B4(v16, &v15);
}

uint64_t TLS.peerAuthenticationRequired(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2[5];
  v4 = v2[7];
  v21 = v2[6];
  v22[0] = v4;
  *(v22 + 9) = *(v2 + 121);
  v5 = v2[1];
  v6 = v2[3];
  v17 = v2[2];
  v7 = v17;
  v18 = v6;
  v8 = v2[3];
  v9 = v2[5];
  v19 = v2[4];
  v10 = v19;
  v20 = v9;
  v11 = v2[1];
  v16[0] = *v2;
  v12 = v16[0];
  v16[1] = v11;
  v13 = v2[7];
  *(a2 + 96) = v21;
  *(a2 + 112) = v13;
  *(a2 + 121) = *(v2 + 121);
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  *(a2 + 64) = v10;
  *(a2 + 80) = v3;
  *a2 = v12;
  *(a2 + 16) = v5;
  *(a2 + 26) = a1;
  return sub_1821DF8B4(v16, &v15);
}

__n128 TLS.addApplicationProtocol(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = v3[7];
  v23 = v3[6];
  v24[0] = v7;
  *(v24 + 9) = *(v3 + 121);
  v8 = v3[3];
  v19 = v3[2];
  v20 = v8;
  v9 = v3[5];
  v21 = v3[4];
  v22 = v9;
  v10 = *(v3 + 1);
  v17 = *v3;
  v18 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AEC0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_182AE9730;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;

  sub_1821DF8B4(&v17, &v16);

  v12 = v24[0];
  *(a3 + 96) = v23;
  *(a3 + 112) = v12;
  *(a3 + 121) = *(v24 + 9);
  v13 = v20;
  *(a3 + 32) = v19;
  *(a3 + 48) = v13;
  v14 = v22;
  *(a3 + 64) = v21;
  *(a3 + 80) = v14;
  result = v18;
  *a3 = v17;
  *(a3 + 16) = result;
  *(a3 + 32) = v11;
  return result;
}

uint64_t TLS.applicationProtocols(_:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = v2[5];
  v6 = v2[7];
  v23 = v2[6];
  v24[0] = v6;
  *(v24 + 9) = *(v2 + 121);
  v7 = v2[1];
  v8 = v2[3];
  v19 = v2[2];
  v9 = v19;
  v20 = v8;
  v10 = v2[3];
  v11 = v2[5];
  v21 = v2[4];
  v12 = v21;
  v22 = v11;
  v13 = v2[1];
  v18[0] = *v2;
  v14 = v18[0];
  v18[1] = v13;
  v15 = v2[7];
  a2[6] = v23;
  a2[7] = v15;
  *(a2 + 121) = *(v2 + 121);
  a2[2] = v9;
  a2[3] = v10;
  a2[4] = v12;
  a2[5] = v5;
  *a2 = v14;
  a2[1] = v7;
  sub_1821DF8B4(v18, &v17);

  *(a2 + 4) = a1;
  return result;
}

__n128 TLS.appendCipherSuite(_:)@<Q0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  v5 = v2[7];
  v21 = v2[6];
  v22[0] = v5;
  *(v22 + 9) = *(v2 + 121);
  v6 = v2[3];
  v17 = v2[2];
  v18 = v6;
  v7 = v2[5];
  v19 = v2[4];
  v20 = v7;
  v8 = *(v2 + 1);
  v15 = *v2;
  v16 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AEC8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_182AE9730;
  *(v9 + 32) = a1;
  sub_1821DF8B4(&v15, &v14);

  v10 = v22[0];
  *(a2 + 96) = v21;
  *(a2 + 112) = v10;
  *(a2 + 121) = *(v22 + 9);
  v11 = v18;
  *(a2 + 32) = v17;
  *(a2 + 48) = v11;
  v12 = v20;
  *(a2 + 64) = v19;
  *(a2 + 80) = v12;
  result = v16;
  *a2 = v15;
  *(a2 + 16) = result;
  *(a2 + 40) = v9;
  return result;
}

uint64_t TLS.cipherSuites(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[5];
  v6 = v2[7];
  v23 = v2[6];
  v24[0] = v6;
  *(v24 + 9) = *(v2 + 121);
  v7 = v2[1];
  v8 = v2[3];
  v19 = v2[2];
  v9 = v19;
  v20 = v8;
  v10 = v2[3];
  v11 = v2[5];
  v21 = v2[4];
  v12 = v21;
  v22 = v11;
  v13 = v2[1];
  v18[0] = *v2;
  v14 = v18[0];
  v18[1] = v13;
  v15 = v2[7];
  *(a2 + 96) = v23;
  *(a2 + 112) = v15;
  *(a2 + 121) = *(v2 + 121);
  *(a2 + 32) = v9;
  *(a2 + 48) = v10;
  *(a2 + 64) = v12;
  *(a2 + 80) = v5;
  *a2 = v14;
  *(a2 + 16) = v7;
  sub_1821DF8B4(v18, &v17);

  *(a2 + 40) = a1;
  return result;
}

uint64_t TLS.cipherSuiteGroups(_:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = v2[5];
  v6 = v2[7];
  v23 = v2[6];
  v24[0] = v6;
  *(v24 + 9) = *(v2 + 121);
  v7 = v2[1];
  v8 = v2[3];
  v19 = v2[2];
  v9 = v19;
  v20 = v8;
  v10 = v2[3];
  v11 = v2[5];
  v21 = v2[4];
  v12 = v21;
  v22 = v11;
  v13 = v2[1];
  v18[0] = *v2;
  v14 = v18[0];
  v18[1] = v13;
  v15 = v2[7];
  a2[6] = v23;
  a2[7] = v15;
  *(a2 + 121) = *(v2 + 121);
  a2[2] = v9;
  a2[3] = v10;
  a2[4] = v12;
  a2[5] = v5;
  *a2 = v14;
  a2[1] = v7;
  sub_1821DF8B4(v18, &v17);

  *(a2 + 6) = a1;
  return result;
}

uint64_t TLS.earlyDataEnabled(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2[5];
  v4 = v2[7];
  v21 = v2[6];
  v22[0] = v4;
  *(v22 + 9) = *(v2 + 121);
  v5 = v2[1];
  v6 = v2[3];
  v17 = v2[2];
  v7 = v17;
  v18 = v6;
  v8 = v2[3];
  v9 = v2[5];
  v19 = v2[4];
  v10 = v19;
  v20 = v9;
  v11 = v2[1];
  v16[0] = *v2;
  v12 = v16[0];
  v16[1] = v11;
  v13 = v2[7];
  *(a2 + 96) = v21;
  *(a2 + 112) = v13;
  *(a2 + 121) = *(v2 + 121);
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  *(a2 + 64) = v10;
  *(a2 + 80) = v3;
  *a2 = v12;
  *(a2 + 16) = v5;
  *(a2 + 56) = a1;
  return sub_1821DF8B4(v16, &v15);
}

uint64_t TLS.ticketsEnabled(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2[5];
  v4 = v2[7];
  v21 = v2[6];
  v22[0] = v4;
  *(v22 + 9) = *(v2 + 121);
  v5 = v2[1];
  v6 = v2[3];
  v17 = v2[2];
  v7 = v17;
  v18 = v6;
  v8 = v2[3];
  v9 = v2[5];
  v19 = v2[4];
  v10 = v19;
  v20 = v9;
  v11 = v2[1];
  v16[0] = *v2;
  v12 = v16[0];
  v16[1] = v11;
  v13 = v2[7];
  *(a2 + 96) = v21;
  *(a2 + 112) = v13;
  *(a2 + 121) = *(v2 + 121);
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  *(a2 + 64) = v10;
  *(a2 + 80) = v3;
  *a2 = v12;
  *(a2 + 16) = v5;
  *(a2 + 57) = a1;
  return sub_1821DF8B4(v16, &v15);
}

uint64_t TLS.minVersion(_:)@<X0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2[5];
  v4 = v2[7];
  v21 = v2[6];
  v22[0] = v4;
  *(v22 + 9) = *(v2 + 121);
  v5 = v2[1];
  v6 = v2[3];
  v17 = v2[2];
  v7 = v17;
  v18 = v6;
  v8 = v2[3];
  v9 = v2[5];
  v19 = v2[4];
  v10 = v19;
  v20 = v9;
  v11 = v2[1];
  v16[0] = *v2;
  v12 = v16[0];
  v16[1] = v11;
  v13 = v2[7];
  *(a2 + 96) = v21;
  *(a2 + 112) = v13;
  *(a2 + 121) = *(v2 + 121);
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  *(a2 + 64) = v10;
  *(a2 + 80) = v3;
  *a2 = v12;
  *(a2 + 16) = v5;
  *(a2 + 58) = a1;
  *(a2 + 60) = 0;
  return sub_1821DF8B4(v16, &v15);
}

uint64_t TLS.maxVersion(_:)@<X0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2[5];
  v4 = v2[7];
  v21 = v2[6];
  v5 = v21;
  v22[0] = v4;
  *(v22 + 9) = *(v2 + 121);
  v6 = v2[1];
  v7 = v2[3];
  v17 = v2[2];
  v8 = v17;
  v18 = v7;
  v9 = v2[3];
  v10 = v2[5];
  v19 = v2[4];
  v20 = v10;
  v11 = v2[1];
  v16[0] = *v2;
  v12 = v16[0];
  v16[1] = v11;
  *(a2 + 64) = v19;
  *(a2 + 80) = v3;
  v13 = v2[7];
  *(a2 + 96) = v5;
  *(a2 + 112) = v13;
  *(a2 + 121) = *(v2 + 121);
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  *a2 = v12;
  *(a2 + 16) = v6;
  *(a2 + 62) = a1;
  *(a2 + 64) = 0;
  return sub_1821DF8B4(v16, &v15);
}

uint64_t TLS.version(min:max:)@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(v3 + 112);
  v23 = *(v3 + 96);
  v24[0] = v4;
  *(v24 + 9) = *(v3 + 121);
  v5 = *(v3 + 48);
  v19[2] = *(v3 + 32);
  v20 = v5;
  v6 = *(v3 + 80);
  v21 = *(v3 + 64);
  v22 = v6;
  v7 = *(v3 + 16);
  v19[0] = *v3;
  v19[1] = v7;
  v8 = WORD5(v5);
  v18 = BYTE12(v5);
  if ((a1 & 0x10000) == 0)
  {
    v18 = 0;
    v8 = a1;
  }

  v9 = BYTE13(v20);
  if ((a2 & 0x10000) != 0)
  {
    LOWORD(a2) = HIWORD(v20);
    v10 = v21;
  }

  else
  {
    v10 = 0;
    v17[144] = 0;
  }

  v11 = v18;
  v12 = *(v3 + 16);
  *a3 = *v3;
  *(a3 + 16) = v12;
  *(a3 + 32) = *(v3 + 32);
  *(a3 + 42) = *(v3 + 42);
  *(a3 + 58) = v8;
  *(a3 + 60) = v11;
  *(a3 + 61) = v9;
  *(a3 + 62) = a2;
  *(a3 + 64) = v10;
  *(a3 + 65) = *(v3 + 65);
  v13 = *(v3 + 81);
  v14 = *(v3 + 97);
  v15 = *(v3 + 113);
  *(a3 + 129) = *(v3 + 129);
  *(a3 + 113) = v15;
  *(a3 + 97) = v14;
  *(a3 + 81) = v13;
  return sub_1821DF8B4(v19, v17);
}

uint64_t TLS.version()@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[7];
  v20 = v1[6];
  v21[0] = v3;
  *(v21 + 9) = *(v1 + 121);
  v4 = v1[1];
  v5 = v1[3];
  v16 = v1[2];
  v6 = v16;
  v17 = v5;
  v7 = v1[3];
  v8 = v1[5];
  v18 = v1[4];
  v9 = v18;
  v19 = v8;
  v10 = v1[1];
  v15[0] = *v1;
  v11 = v15[0];
  v15[1] = v10;
  v12 = v1[7];
  a1[6] = v20;
  a1[7] = v12;
  *(a1 + 121) = *(v1 + 121);
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v9;
  a1[5] = v2;
  *a1 = v11;
  a1[1] = v4;
  return sub_1821DF8B4(v15, &v14);
}

__n128 sub_182197154@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 84);
  v3 = *(v1 + 116);
  *(a1 + 32) = *(v1 + 100);
  *(a1 + 48) = v3;
  *(a1 + 61) = *(v1 + 129);
  *a1 = *(v1 + 68);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_182197178(NSObject *a1)
{
  v1 = nw_parameters_copy_default_protocol_stack(a1);
  v2 = TLS.nw.getter();
  nw_protocol_stack_prepend_application_protocol(v1, v2);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

NSObject *sub_182197210()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[8];
  keepalive_idle_time = *(v0 + 1);
  keepalive_interval = *(v0 + 3);
  v6 = v0[16];
  v7 = v0[24];
  keepalive_count = *(v0 + 5);
  maximum_segment_size = *(v0 + 7);
  v8 = v0[32];
  connection_timeout = *(v0 + 9);
  persist_timeout = *(v0 + 11);
  v20 = v0[40];
  v21 = v0[48];
  retransmit_connection_drop_time = *(v0 + 13);
  v22 = v0[56];
  v23 = v0[57];
  v24 = v0[58];
  v25 = v0[59];
  v9 = v0[60];
  options = nw_tcp_create_options();
  v11 = options;
  if (v1 == 2)
  {
    if (v2 == 2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    nw_tcp_options_set_no_delay(options, v1 & 1);
    if (v2 == 2)
    {
LABEL_3:
      if (v3 == 2)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  nw_tcp_options_set_no_push(v11, v2 & 1);
  if (v3 == 2)
  {
LABEL_4:
    if (v4 == 2)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  nw_tcp_options_set_no_options(v11, v3 & 1);
  if (v4 == 2)
  {
LABEL_5:
    if (v5)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  nw_tcp_options_set_enable_keepalive(v11, v4 & 1);
  if (v5)
  {
LABEL_6:
    if (v6)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  nw_tcp_options_set_keepalive_idle_time(v11, keepalive_idle_time);
  if (v6)
  {
LABEL_7:
    if (v7)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  nw_tcp_options_set_keepalive_interval(v11, keepalive_interval);
  if (v7)
  {
LABEL_8:
    if (v8)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  nw_tcp_options_set_keepalive_count(v11, keepalive_count);
  if (v8)
  {
LABEL_9:
    if (v20)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  nw_tcp_options_set_maximum_segment_size(v11, maximum_segment_size);
  if (v20)
  {
LABEL_10:
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  nw_tcp_options_set_connection_timeout(v11, connection_timeout);
  if (v21)
  {
LABEL_11:
    if (v22)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_31:
  nw_tcp_options_set_persist_timeout(v11, persist_timeout);
  if ((v22 & 1) == 0)
  {
LABEL_12:
    nw_tcp_options_set_retransmit_connection_drop_time(v11, retransmit_connection_drop_time);
  }

LABEL_13:
  if (v23 != 2)
  {
    nw_tcp_options_set_retransmit_fin_drop(v11, v23 & 1);
  }

  if (v24 != 2)
  {
    nw_tcp_options_set_disable_ack_stretching(v11, v24 & 1);
  }

  if (v25 != 2)
  {
    nw_tcp_options_set_disable_ecn(v11, v25 & 1);
  }

  if (v9 != 2)
  {
    nw_tcp_options_set_enable_fast_open(v11, v9 & 1);
  }

  return v11;
}