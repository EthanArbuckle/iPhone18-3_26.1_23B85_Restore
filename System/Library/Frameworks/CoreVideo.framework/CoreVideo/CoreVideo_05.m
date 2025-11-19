uint64_t sub_19D16B970(uint64_t *a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(unint64_t))
{
  v6 = *a1;
  v7 = *a2;
  if (!*a1)
  {
    if (!v7)
    {
      a3(0);
      a3(0);
      return 1;
    }

LABEL_8:
    a4(*a2);
    a4(v6);
    a3(v6);
    a3(v7);
    return 0;
  }

  if (v6 == 1)
  {
    if (v7 == 1)
    {
      v8 = 1;
      a3(1);
      a3(1);
      return v8;
    }

    goto LABEL_8;
  }

  if (v7 < 2)
  {
    goto LABEL_8;
  }

  type metadata accessor for CFDictionary(0);
  a4(v7);
  a4(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F2C0, &qword_19D17E4B0);
  v10 = sub_19D171320();
  v11 = sub_19D171320();
  sub_19D16D834(&qword_1EB00F200, type metadata accessor for CFDictionary);
  v12 = sub_19D1712F0();
  a3(v6);
  a3(v7);

  return v12 & 1;
}

uint64_t sub_19D16BB40(int *a1, int *a2, void (*a3)(unint64_t), void (*a4)(unint64_t))
{
  v5 = *a1;
  v7 = *(a1 + 1);
  v6 = *(a1 + 2);
  v8 = *(a1 + 3);
  v64 = *(a1 + 4);
  v59 = *(a1 + 5);
  v62 = *(a1 + 48);
  v55 = *(a1 + 7);
  v60 = *(a1 + 64);
  v51 = *(a1 + 18);
  v52 = *(a1 + 22);
  v56 = *(a1 + 104);
  v50 = *(a1 + 14);
  v9 = *(a1 + 74);
  v10 = *(a1 + 82);
  v131 = *(a1 + 78);
  v132 = v10;
  v133 = *(a1 + 344);
  v11 = *(a1 + 58);
  v12 = *(a1 + 66);
  v13 = *(a1 + 70);
  v127 = *(a1 + 62);
  v128 = v12;
  v130 = v9;
  v129 = v13;
  v14 = *(a1 + 42);
  v15 = *(a1 + 50);
  v123 = *(a1 + 46);
  v124 = v15;
  v16 = *(a1 + 54);
  v126 = v11;
  v125 = v16;
  v17 = *(a1 + 34);
  v119 = *(a1 + 30);
  v120 = v17;
  v18 = *(a1 + 38);
  v122 = v14;
  v121 = v18;
  v46 = *(a1 + 345);
  v44 = *(a1 + 346);
  v42 = *(a1 + 347);
  v19 = *a2;
  v20 = *(a2 + 1);
  v21 = *(a2 + 2);
  v22 = *(a2 + 3);
  v63 = *(a2 + 4);
  v57 = *(a2 + 5);
  v61 = *(a2 + 48);
  v53 = *(a2 + 7);
  v58 = *(a2 + 64);
  v47 = *(a2 + 18);
  v48 = *(a2 + 22);
  v54 = *(a2 + 104);
  v49 = *(a2 + 14);
  v23 = *(a2 + 30);
  v24 = *(a2 + 38);
  v135 = *(a2 + 34);
  v134 = v23;
  v25 = *(a2 + 42);
  v26 = *(a2 + 46);
  v27 = *(a2 + 54);
  v139 = *(a2 + 50);
  v138 = v26;
  v136 = v24;
  v137 = v25;
  v28 = *(a2 + 58);
  v29 = *(a2 + 62);
  v30 = *(a2 + 70);
  v143 = *(a2 + 66);
  v142 = v29;
  v140 = v27;
  v141 = v28;
  v31 = *(a2 + 74);
  v32 = *(a2 + 78);
  v33 = *(a2 + 82);
  v148 = *(a2 + 344);
  v147 = v33;
  v146 = v32;
  v144 = v30;
  v145 = v31;
  v45 = *(a2 + 345);
  v43 = *(a2 + 346);
  v41 = *(a2 + 347);
  LODWORD(__src[0]) = v5;
  LODWORD(__dst[0]) = v19;
  sub_19D15D078();
  sub_19D1713B0();
  sub_19D1713B0();
  if (LODWORD(v117[0]) != v101)
  {
    return 0;
  }

  *&__src[0] = v7;
  *(&__src[0] + 1) = v6;
  *&__dst[0] = v20;
  *(&__dst[0] + 1) = v21;
  sub_19D1550A4();
  if ((sub_19D171350() & 1) == 0)
  {
    return 0;
  }

  if (!v8)
  {
    if (!v22)
    {
LABEL_8:
      a4(v8);
      a4(v8);
      goto LABEL_12;
    }

LABEL_10:
    a3(v8);
    a3(v22);
    a4(v8);
    a4(v22);
    return 0;
  }

  if (v8 == 1)
  {
    if (v22 != 1)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v22 < 2)
  {
    goto LABEL_10;
  }

  type metadata accessor for CFDictionary(0);
  a3(v8);
  a3(v22);
  a3(v8);
  a3(v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F2C0, &qword_19D17E4B0);
  v34 = sub_19D171320();
  v35 = sub_19D171320();
  sub_19D16D834(&qword_1EB00F200, type metadata accessor for CFDictionary);
  v36 = sub_19D1712F0();
  a4(v8);
  a4(v22);

  a4(v22);
  a4(v8);
  if ((v36 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  *&__src[0] = v64;
  *&__dst[0] = v63;
  sub_19D15F390();
  sub_19D1713B0();
  sub_19D1713B0();
  if (*&v117[0] != v101)
  {
    return 0;
  }

  if (v62)
  {
    if (!v61)
    {
      return 0;
    }
  }

  else
  {
    v37 = v61;
    if (v59 != v57)
    {
      v37 = 1;
    }

    if (v37)
    {
      return 0;
    }
  }

  if (v60)
  {
    if (!v58)
    {
      return 0;
    }
  }

  else
  {
    v38 = v58;
    if (v55 != v53)
    {
      v38 = 1;
    }

    if (v38)
    {
      return 0;
    }
  }

  if (v56)
  {
    if ((v54 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __src[0] = v51;
    __src[1] = v52;
    LOBYTE(__src[2]) = 0;
    if (v54)
    {
      return 0;
    }

    __dst[0] = v47;
    __dst[1] = v48;
    sub_19D16C92C();
    if ((sub_19D171350() & 1) == 0)
    {
      return 0;
    }
  }

  if ((sub_19D160600(v50, v49) & 1) == 0)
  {
    return 0;
  }

  __src[12] = v131;
  __src[13] = v132;
  __src[8] = v127;
  __src[9] = v128;
  __src[11] = v130;
  __src[10] = v129;
  __src[4] = v123;
  __src[5] = v124;
  __src[7] = v126;
  __src[6] = v125;
  __src[0] = v119;
  __src[1] = v120;
  __src[3] = v122;
  __src[2] = v121;
  *(&__src[26] + 8) = v146;
  *(&__src[27] + 8) = v147;
  *(&__src[22] + 8) = v142;
  *(&__src[23] + 8) = v143;
  *(&__src[24] + 8) = v144;
  *(&__src[25] + 8) = v145;
  *(&__src[18] + 8) = v138;
  *(&__src[19] + 8) = v139;
  *(&__src[20] + 8) = v140;
  *(&__src[21] + 8) = v141;
  *(&__src[16] + 8) = v136;
  *(&__src[17] + 8) = v137;
  *(&__src[14] + 8) = v134;
  *(&__src[15] + 8) = v135;
  v117[12] = v131;
  v117[13] = v132;
  v117[8] = v127;
  v117[9] = v128;
  v117[11] = v130;
  v117[10] = v129;
  v117[4] = v123;
  v117[5] = v124;
  v117[7] = v126;
  v117[6] = v125;
  v117[0] = v119;
  v117[1] = v120;
  LOBYTE(__src[14]) = v133;
  BYTE8(__src[28]) = v148;
  v118 = v133;
  v117[3] = v122;
  v117[2] = v121;
  if (sub_19D16D87C(v117) == 1)
  {
    __dst[12] = *(&__src[26] + 8);
    __dst[13] = *(&__src[27] + 8);
    LOBYTE(__dst[14]) = BYTE8(__src[28]);
    __dst[8] = *(&__src[22] + 8);
    __dst[9] = *(&__src[23] + 8);
    __dst[11] = *(&__src[25] + 8);
    __dst[10] = *(&__src[24] + 8);
    __dst[4] = *(&__src[18] + 8);
    __dst[5] = *(&__src[19] + 8);
    __dst[7] = *(&__src[21] + 8);
    __dst[6] = *(&__src[20] + 8);
    __dst[0] = *(&__src[14] + 8);
    __dst[1] = *(&__src[15] + 8);
    __dst[3] = *(&__src[17] + 8);
    __dst[2] = *(&__src[16] + 8);
    if (sub_19D16D87C(__dst) == 1)
    {
      v113 = __src[12];
      v114 = __src[13];
      v115 = __src[14];
      v109 = __src[8];
      v110 = __src[9];
      v112 = __src[11];
      v111 = __src[10];
      v105 = __src[4];
      v106 = __src[5];
      v108 = __src[7];
      v107 = __src[6];
      v101 = __src[0];
      v102 = __src[1];
      v104 = __src[3];
      v103 = __src[2];
      sub_19D16D8E8(&v119, &v85, &qword_1EB00F278, &qword_19D17E318);
      sub_19D16D8E8(&v134, &v85, &qword_1EB00F278, &qword_19D17E318);
      sub_19D1602A4(&v101, &qword_1EB00F278, &qword_19D17E318);
      goto LABEL_39;
    }

    sub_19D16D8E8(&v119, &v101, &qword_1EB00F278, &qword_19D17E318);
    sub_19D16D8E8(&v134, &v101, &qword_1EB00F278, &qword_19D17E318);
LABEL_37:
    memcpy(__dst, __src, 0x1C9uLL);
    sub_19D1602A4(__dst, &qword_1EB00F310, &qword_19D17EAE0);
    return 0;
  }

  v113 = __src[12];
  v114 = __src[13];
  v109 = __src[8];
  v110 = __src[9];
  v112 = __src[11];
  v111 = __src[10];
  v105 = __src[4];
  v106 = __src[5];
  v108 = __src[7];
  v107 = __src[6];
  v101 = __src[0];
  v102 = __src[1];
  v104 = __src[3];
  v103 = __src[2];
  v97 = __src[12];
  v98 = __src[13];
  v93 = __src[8];
  v94 = __src[9];
  v96 = __src[11];
  v95 = __src[10];
  v89 = __src[4];
  v90 = __src[5];
  v92 = __src[7];
  v91 = __src[6];
  v85 = __src[0];
  v86 = __src[1];
  v115 = __src[14];
  v99 = __src[14];
  v87 = __src[2];
  v88 = __src[3];
  __dst[12] = *(&__src[26] + 8);
  __dst[13] = *(&__src[27] + 8);
  LOBYTE(__dst[14]) = BYTE8(__src[28]);
  __dst[8] = *(&__src[22] + 8);
  __dst[9] = *(&__src[23] + 8);
  __dst[11] = *(&__src[25] + 8);
  __dst[10] = *(&__src[24] + 8);
  __dst[4] = *(&__src[18] + 8);
  __dst[5] = *(&__src[19] + 8);
  __dst[7] = *(&__src[21] + 8);
  __dst[6] = *(&__src[20] + 8);
  __dst[0] = *(&__src[14] + 8);
  __dst[1] = *(&__src[15] + 8);
  __dst[3] = *(&__src[17] + 8);
  __dst[2] = *(&__src[16] + 8);
  if (sub_19D16D87C(__dst) == 1)
  {
    v82 = v97;
    v83 = v98;
    v84 = v99;
    v78 = v93;
    v79 = v94;
    v80 = v95;
    v81 = v96;
    v74 = v89;
    v75 = v90;
    v76 = v91;
    v77 = v92;
    v70 = v85;
    v71 = v86;
    v72 = v87;
    v73 = v88;
    sub_19D16D8E8(&v119, v68, &qword_1EB00F278, &qword_19D17E318);
    sub_19D16D8E8(&v134, v68, &qword_1EB00F278, &qword_19D17E318);
    sub_19D16D8E8(&v101, v68, &qword_1EB00F278, &qword_19D17E318);
    sub_19D15D9E8(&v70);
    goto LABEL_37;
  }

  v82 = *(&__src[26] + 8);
  v83 = *(&__src[27] + 8);
  v84 = BYTE8(__src[28]);
  v78 = *(&__src[22] + 8);
  v79 = *(&__src[23] + 8);
  v80 = *(&__src[24] + 8);
  v81 = *(&__src[25] + 8);
  v74 = *(&__src[18] + 8);
  v75 = *(&__src[19] + 8);
  v76 = *(&__src[20] + 8);
  v77 = *(&__src[21] + 8);
  v70 = *(&__src[14] + 8);
  v71 = *(&__src[15] + 8);
  v72 = *(&__src[16] + 8);
  v73 = *(&__src[17] + 8);
  sub_19D16D8E8(&v119, v68, &qword_1EB00F278, &qword_19D17E318);
  sub_19D16D8E8(&v134, v68, &qword_1EB00F278, &qword_19D17E318);
  sub_19D16D8E8(&v101, v68, &qword_1EB00F278, &qword_19D17E318);
  sub_19D16D894();
  v39 = sub_19D171350();
  v66[12] = v82;
  v66[13] = v83;
  v67 = v84;
  v66[8] = v78;
  v66[9] = v79;
  v66[10] = v80;
  v66[11] = v81;
  v66[4] = v74;
  v66[5] = v75;
  v66[6] = v76;
  v66[7] = v77;
  v66[0] = v70;
  v66[1] = v71;
  v66[2] = v72;
  v66[3] = v73;
  sub_19D15D9E8(v66);
  v68[12] = v97;
  v68[13] = v98;
  v69 = v99;
  v68[8] = v93;
  v68[9] = v94;
  v68[10] = v95;
  v68[11] = v96;
  v68[4] = v89;
  v68[5] = v90;
  v68[6] = v91;
  v68[7] = v92;
  v68[0] = v85;
  v68[1] = v86;
  v68[2] = v87;
  v68[3] = v88;
  sub_19D15D9E8(v68);
  v82 = __src[12];
  v83 = __src[13];
  v84 = __src[14];
  v78 = __src[8];
  v79 = __src[9];
  v80 = __src[10];
  v81 = __src[11];
  v74 = __src[4];
  v75 = __src[5];
  v76 = __src[6];
  v77 = __src[7];
  v70 = __src[0];
  v71 = __src[1];
  v72 = __src[2];
  v73 = __src[3];
  sub_19D1602A4(&v70, &qword_1EB00F278, &qword_19D17E318);
  if ((v39 & 1) == 0)
  {
    return 0;
  }

LABEL_39:
  if (v46 != v45 || v44 != v43)
  {
    return 0;
  }

  return v42 ^ v41 ^ 1u;
}

uint64_t sub_19D16C754()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F340, &qword_19D17EB10);
  v0 = sub_19D171350();

  if (v0)
  {
    v1 = kCVPixelBufferPreferRealTimeCacheModeIfEveryoneDoesKey;
    return *v1;
  }

  swift_getKeyPath();
  v2 = sub_19D171350();

  if (v2)
  {
    v1 = kCVPixelBufferIOSurfaceWiringAssertionKey;
    return *v1;
  }

  swift_getKeyPath();
  v3 = sub_19D171350();

  if (v3)
  {
    v1 = kCVPixelBufferIOSurfacePurgeableKey;
    return *v1;
  }

  __break(1u);
  return result;
}

unint64_t sub_19D16C8B0()
{
  result = qword_1EB00F298;
  if (!qword_1EB00F298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB00F290, &qword_19D17E470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB00F298);
  }

  return result;
}

unint64_t sub_19D16C92C()
{
  result = qword_1EB00F2B0;
  if (!qword_1EB00F2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB00F2B0);
  }

  return result;
}

unint64_t sub_19D16C980(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F330, &qword_19D17EAF8);
    v3 = sub_19D1715D0();
    v4 = a1 + 32;

    while (1)
    {
      sub_19D16D8E8(v4, &v13, &qword_1EB00F338, &unk_19D17EB00);
      v5 = v13;
      v6 = v14;
      result = sub_19D16B6B8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_19D135C7C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_19D16CAB0()
{
  result = qword_1EB00F2D8;
  if (!qword_1EB00F2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB00F2D8);
  }

  return result;
}

uint64_t sub_19D16CB04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  LOBYTE(a3) = sub_19D171350();

  if (a3)
  {
    v6 = &kCVPixelBufferBytesPerRowAlignmentKey;
    return *v6;
  }

  swift_getKeyPath();
  v7 = sub_19D171350();

  if (v7)
  {
    v6 = &kCVPixelBufferPlaneAlignmentKey;
    return *v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_19D16CBE4()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F320, &qword_19D17EAE8);
  v0 = sub_19D171350();

  if (v0)
  {
    v1 = kCVPixelBufferPreferRealTimeCacheModeIfEveryoneDoesKey;
    return *v1;
  }

  swift_getKeyPath();
  v2 = sub_19D171350();

  if (v2)
  {
    v1 = kCVPixelBufferIOSurfaceWiringAssertionKey;
    return *v1;
  }

  swift_getKeyPath();
  v3 = sub_19D171350();

  if (v3)
  {
    v1 = kCVPixelBufferIOSurfacePurgeableKey;
    return *v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_19D16CD70(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v12 = a2;
  KeyPath = swift_getKeyPath();
  LOBYTE(a2) = sub_19D171350();

  if (a2)
  {
    if (v7)
    {
      v9 = 0;
    }

    else
    {
      v9 = v6;
    }

    v12 = v9;
    v13 = v7;
    if (v7)
    {
      v5 = 0;
    }

    v10 = @"Width";
    v11 = MEMORY[0x1E69E6530];
    sub_19D160B48(&v12, v10, MEMORY[0x1E69E6530]);
    v12 = v5;
    v13 = v7;
    return sub_19D160B48(&v12, @"Height", v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_19D16CE8C(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  swift_getKeyPath();
  v5 = sub_19D171350();

  if (v5)
  {
    v6 = @"IOSurfaceProperties";
    if (v4 == 1)
    {
      v4 = sub_19D16C980(MEMORY[0x1E69E7CC0]);
    }

    sub_19D162BBC(v4, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_19D16CF60(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v14 = a2;
  KeyPath = swift_getKeyPath();
  LOBYTE(a2) = sub_19D171350();

  if (a2)
  {
    v7 = *a1;
    v8 = *(a1 + 32);
    if (v8)
    {
      v7 = 0;
    }

    v14 = v7;
    v15 = v8 & 1;
    v9 = @"ExtendedPixelsLeft";
    v10 = MEMORY[0x1E69E6530];
    sub_19D160B48(&v14, v9, MEMORY[0x1E69E6530]);
    v11 = a1[1];
    if (v8)
    {
      v11 = 0;
    }

    v14 = v11;
    v15 = v8 & 1;
    sub_19D160B48(&v14, @"ExtendedPixelsRight", v10);
    v12 = a1[2];
    if (v8)
    {
      v12 = 0;
    }

    v14 = v12;
    v15 = v8 & 1;
    sub_19D160B48(&v14, @"ExtendedPixelsTop", v10);
    v13 = a1[3];
    if (v8)
    {
      v13 = 0;
    }

    v14 = v13;
    v15 = v8 & 1;
    return sub_19D160B48(&v14, @"ExtendedPixelsBottom", v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19D16D0F0(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v11 = a2;
  swift_getKeyPath();
  LOBYTE(a2) = sub_19D171350();

  if (a2)
  {
    v7 = @"MetalCompatibility";
    v11 = *sub_19D159CA4();
    sub_19D15F3E8();
    LOBYTE(v11) = sub_19D171470() & 1;
    v8 = MEMORY[0x1E69E6370];
    sub_19D160B48(&v11, v7, MEMORY[0x1E69E6370]);
    v9 = @"CGBitmapContextCompatibility";
    v11 = *sub_19D159CB0();
    LOBYTE(v11) = sub_19D171470() & 1;
    sub_19D160B48(&v11, v9, v8);
    v10 = @"CGImageCompatibility";
    v11 = *sub_19D159CBC();
    LOBYTE(v11) = sub_19D171470() & 1;
    return sub_19D160B48(&v11, v10, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19D16D2AC(__int128 *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a1[13];
  v30 = a1[12];
  v31 = v5;
  v32 = *(a1 + 224);
  v6 = a1[9];
  v26 = a1[8];
  v27 = v6;
  v7 = a1[11];
  v28 = a1[10];
  v29 = v7;
  v8 = a1[5];
  v22 = a1[4];
  v23 = v8;
  v9 = a1[7];
  v24 = a1[6];
  v25 = v9;
  v10 = a1[1];
  v18 = *a1;
  v19 = v10;
  v11 = a1[3];
  v20 = a1[2];
  v21 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  *&v33 = a2;
  *&v16[0] = swift_getKeyPath();
  LOBYTE(a2) = sub_19D171350();

  if (a2)
  {
    v45 = v30;
    v46 = v31;
    v47 = v32;
    v41 = v26;
    v42 = v27;
    v43 = v28;
    v44 = v29;
    v37 = v22;
    v38 = v23;
    v39 = v24;
    v40 = v25;
    v33 = v18;
    v34 = v19;
    v35 = v20;
    v36 = v21;
    if (sub_19D16D87C(&v33) == 1)
    {
      v13 = @"PixelFormatDescription";
      v14 = 0;
    }

    else
    {
      v16[12] = v45;
      v16[13] = v46;
      v17 = v47;
      v16[8] = v41;
      v16[9] = v42;
      v16[10] = v43;
      v16[11] = v44;
      v16[4] = v37;
      v16[5] = v38;
      v16[6] = v39;
      v16[7] = v40;
      v16[0] = v33;
      v16[1] = v34;
      v16[2] = v35;
      v16[3] = v36;
      v15 = @"PixelFormatDescription";
      v14 = sub_19D158724();
      sub_19D1602A4(&v18, &qword_1EB00F278, &qword_19D17E318);
    }

    *&v16[0] = v14;
    sub_19D15F180();
    return sub_19D161488(v16, @"PixelFormatDescription", &type metadata for TypedCFDictionary);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19D16D47C(int *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *a1;
  v6 = *(a1 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = a2;
  swift_getKeyPath();
  LOBYTE(a2) = sub_19D171350();

  if (a2)
  {
    if (v6)
    {
      v8 = 0;
    }

    else
    {
      v8 = v5;
    }

    LODWORD(v10) = v8;
    BYTE4(v10) = v6;
    v9 = @"PixelFormatType";
    return sub_19D160B48(&v10, v9, MEMORY[0x1E69E7668]);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9CoreVideo24CVPixelFormatDescriptionVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_19D16D598(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_19D16D5E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 348))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 112);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_19D16D628(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 344) = 0;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 348) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 348) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19D16D6D4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19D16D728(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_19D16D834(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19D16D87C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_19D16D894()
{
  result = qword_1EB00F318;
  if (!qword_1EB00F318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB00F318);
  }

  return result;
}

uint64_t sub_19D16D8E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t CVBufferRef.Attributes.init(merging:)(Swift::OpaquePointer merging)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];

  return CVPixelBufferAttributes.init(merging:)(merging);
}

__n128 CVPixelBufferPlaneProperties.size.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 CVPixelBufferPlaneProperties.size.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

CoreVideo::CVPixelBufferPlaneProperties __swiftcall CVPixelBufferPlaneProperties.init(size:bytesPerRow:)(CoreVideo::CVImageSize size, Swift::Int bytesPerRow)
{
  *v2 = *size.width;
  *(v2 + 16) = size.height;
  result.size = size;
  result.bytesPerRow = bytesPerRow;
  return result;
}

uint64_t CVPixelBufferPlaneProperties.hash(into:)()
{
  v1 = *(v0 + 2);
  v3 = *v0;
  sub_19D15EDC8();
  sub_19D171340();
  return MEMORY[0x19EAF6B50](v1);
}

uint64_t CVPixelBufferPlaneProperties.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_19D171680();
  sub_19D15EDC8();
  sub_19D171340();
  MEMORY[0x19EAF6B50](v3);
  return sub_19D1716C0();
}

uint64_t sub_19D16DC60()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_19D171680();
  sub_19D15EDC8();
  sub_19D171340();
  MEMORY[0x19EAF6B50](v3);
  return sub_19D1716C0();
}

uint64_t sub_19D16DCD4()
{
  v1 = *(v0 + 2);
  v3 = *v0;
  sub_19D15EDC8();
  sub_19D171340();
  return MEMORY[0x19EAF6B50](v1);
}

uint64_t sub_19D16DD38()
{
  sub_19D171680();
  v1 = *(v0 + 2);
  v3 = *v0;
  sub_19D15EDC8();
  sub_19D171340();
  MEMORY[0x19EAF6B50](v1);
  return sub_19D1716C0();
}

uint64_t CVPixelBufferPadding.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x19EAF6B50](a2);
  MEMORY[0x19EAF6B50](a3);
  MEMORY[0x19EAF6B50](a4);
  return MEMORY[0x19EAF6B50](a5);
}

uint64_t CVPixelBufferPadding.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_19D171680();
  MEMORY[0x19EAF6B50](a1);
  MEMORY[0x19EAF6B50](a2);
  MEMORY[0x19EAF6B50](a3);
  MEMORY[0x19EAF6B50](a4);
  return sub_19D1716C0();
}

uint64_t sub_19D16DF78()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_19D171680();
  MEMORY[0x19EAF6B50](v1);
  MEMORY[0x19EAF6B50](v2);
  MEMORY[0x19EAF6B50](v3);
  MEMORY[0x19EAF6B50](v4);
  return sub_19D1716C0();
}

uint64_t sub_19D16DFF8()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  MEMORY[0x19EAF6B50](*v0);
  MEMORY[0x19EAF6B50](v1);
  MEMORY[0x19EAF6B50](v2);
  return MEMORY[0x19EAF6B50](v3);
}

uint64_t sub_19D16E050()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_19D171680();
  MEMORY[0x19EAF6B50](v1);
  MEMORY[0x19EAF6B50](v2);
  MEMORY[0x19EAF6B50](v3);
  MEMORY[0x19EAF6B50](v4);
  return sub_19D1716C0();
}

uint64_t _s9CoreVideo26CVPixelBufferRepresentablePAARi_zrlE18creationAttributesAA0cd8CreationG0Vvg(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  return (*(*(*(a2 + 8) + 8) + 16))(sub_19D16E950, v3, &type metadata for CVPixelBufferCreationAttributes, a1);
}

uint64_t _s9CoreVideo26CVPixelBufferRepresentablePAARi_zrlE15pixelFormatTypeAA0cgH0Vvg(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  return (*(*(*(a2 + 8) + 8) + 16))(sub_19D16E9C4, v3, &type metadata for CVPixelFormatType, a1);
}

uint64_t _s9CoreVideo26CVPixelBufferRepresentablePAARi_zrlE4sizeAA11CVImageSizeVvg(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  return (*(*(*(a2 + 8) + 8) + 16))(sub_19D16E9F8, v3, &type metadata for CVImageSize, a1);
}

uint64_t _s9CoreVideo26CVPixelBufferRepresentablePAARi_zrlE14extendedPixelsAA0cD7PaddingVvg(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  (*(*(*(a2 + 8) + 8) + 16))(&v4, sub_19D16EA4C, v3, &type metadata for CVPixelBufferPadding, a1);
  return v4;
}

uint64_t _s9CoreVideo26CVPixelBufferRepresentablePAARi_zrlE10planeCountSivg(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  (*(*(*(a2 + 8) + 8) + 16))(&v4, sub_19D16EAA8, v3, MEMORY[0x1E69E6530], a1);
  return v4;
}

uint64_t _s9CoreVideo26CVPixelBufferRepresentablePAARi_zrlE8isPlanarSbvg(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  (*(*(*(a2 + 8) + 8) + 16))(&v4, sub_19D16EAE0, v3, MEMORY[0x1E69E6370], a1);
  return v4;
}

uint64_t _s9CoreVideo26CVPixelBufferRepresentablePAARi_zrlE15planePropertiesSayAA0cd5PlaneG0VGvg(uint64_t a1, uint64_t a2)
{
  v7[2] = a1;
  v7[3] = a2;
  v3 = *(*(a2 + 8) + 8);
  v4 = *(v3 + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F350, &qword_19D17EB60);
  v4(&v8, sub_19D16EB18, v7, v5, a1, v3);
  return v8;
}

uint64_t _s9CoreVideo26CVPixelBufferRepresentablePAARi_zrlE25accessUnsafeRawPlaneBytesyqd__qd__SayAA0cdI10PropertiesV10properties_SW5bytestGKYTXEKlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[2] = a3;
  v6[3] = a4;
  v6[4] = a5;
  v6[5] = a1;
  v6[6] = a2;
  return (*(*(*(a5 + 8) + 8) + 16))(sub_19D16ECA0, v6, a4, a3);
}

uint64_t _s9CoreVideo26CVPixelBufferRepresentablePAARi_zrlE16isCompatibleWithySbAA0cD18CreationAttributesVF(void *__src, uint64_t a2, uint64_t a3)
{
  memcpy(v7 + 1, __src, 0x15CuLL);
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v7 + 1;
  (*(*(*(a3 + 8) + 8) + 16))(v7, sub_19D16EE90, v6, MEMORY[0x1E69E6370], a2);
  return LOBYTE(v7[0]);
}

uint64_t _s9CoreVideo26CVPixelBufferRepresentablePAARi_zrlE16isCompatibleWithySbAA0cD10AttributesVF(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v5[2] = a2;
  v5[3] = a3;
  v5[4] = v3;
  (*(*(*(a3 + 8) + 8) + 16))(&v6, sub_19D16EF10, v5, MEMORY[0x1E69E6370], a2);
  return v6;
}

uint64_t _s9CoreVideo26CVPixelBufferRepresentablePAARi_zrlE35withUnsafeBackingIOSurfaceIfPresentyqd__Sgqd__So0I0CKYTXEKlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = a1;
  v10[6] = a2;
  v6 = *(*(a5 + 8) + 8);
  v7 = *(v6 + 16);
  v8 = sub_19D171460();
  return v7(sub_19D16EF80, v10, v8, a3, v6);
}

char *sub_19D16E66C(char *a1, int64_t a2, char a3)
{
  result = sub_19D16E6AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_19D16E68C(char *a1, int64_t a2, char a3)
{
  result = sub_19D16E7C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_19D16E6AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F368, "F\n");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_19D16E7C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F360, "*\n");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

uint64_t _s9CoreVideo28CVPixelBufferPlanePropertiesV2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 2);
  v3 = *(a2 + 2);
  v5 = *a2;
  v6 = *a1;
  sub_19D1550A4();
  return sub_19D171350() & (v2 == v3);
}

void *sub_19D16E950@<X0>(__CVBuffer *a1@<X0>, void *a2@<X8>)
{
  v3 = CVPixelBufferCopyCreationAttributes(a1);
  CVPixelBufferAttributes.init(dictionaryRepresentation:)(v3);
  CVPixelBufferCreationAttributes.init(_:)(&v6, v5);
  result = sub_19D1562E8(v5);
  if (result != 1)
  {
    return memcpy(a2, v5, 0x15CuLL);
  }

  __break(1u);
  return result;
}

Swift::Int sub_19D16E9F8(__CVBuffer *a1)
{
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  return CVImageSize.init(width:height:)(Width, Height).width;
}

void sub_19D16EA4C(__CVBuffer *a1@<X0>, size_t *a2@<X8>)
{
  extraColumnsOnRight = 0;
  extraColumnsOnLeft = 0;
  v6 = 0;
  extraRowsOnTop = 0;
  CVPixelBufferGetExtendedPixels(a1, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &v6);
  v3 = extraColumnsOnRight;
  v5 = v6;
  v4 = extraRowsOnTop;
  *a2 = extraColumnsOnLeft;
  a2[1] = v3;
  a2[2] = v4;
  a2[3] = v5;
}

int64_t sub_19D16EAA8@<X0>(__CVBuffer *a1@<X0>, uint64_t *a2@<X8>)
{
  result = CVPixelBufferGetPlaneCount(a1);
  if (result <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = result;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_19D16EAE0@<X0>(__CVBuffer *a1@<X0>, BOOL *a2@<X8>)
{
  result = CVPixelBufferIsPlanar(a1);
  *a2 = result != 0;
  return result;
}

void *sub_19D16EB18@<X0>(__CVBuffer *a1@<X0>, int64_t *a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v21[2] = v5;
  v21[3] = v6;
  result = (*(*(*(v6 + 8) + 8) + 16))(&v22, sub_19D16EAA8, v21, MEMORY[0x1E69E6530]);
  v9 = v22;
  if (v22 < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
    if (v22)
    {
      v20 = a2;
      v22 = MEMORY[0x1E69E7CC0];
      sub_19D16E66C(0, v9, 0);
      v11 = 0;
      v10 = v22;
      do
      {
        WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, v11);
        HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, v11);
        CVImageSize.init(width:height:)(WidthOfPlane, HeightOfPlane);
        v14 = v21[0];
        v15 = v21[1];
        result = CVPixelBufferGetBytesPerRowOfPlane(a1, v11);
        v22 = v10;
        v17 = *(v10 + 16);
        v16 = *(v10 + 24);
        if (v17 >= v16 >> 1)
        {
          v19 = result;
          sub_19D16E66C((v16 > 1), v17 + 1, 1);
          result = v19;
          v10 = v22;
        }

        ++v11;
        *(v10 + 16) = v17 + 1;
        v18 = (v10 + 24 * v17);
        v18[4] = v14;
        v18[5] = v15;
        v18[6] = result;
      }

      while (v9 != v11);
      a2 = v20;
    }

    *a2 = v10;
  }

  return result;
}

void *sub_19D16ECA0(__CVBuffer *a1)
{
  v2 = v1[2];
  v3 = v1[4];
  v4 = v1[5];
  v6 = v1[6];
  v5 = v1[7];
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  v7 = _s9CoreVideo26CVPixelBufferRepresentablePAARi_zrlE15planePropertiesSayAA0cd5PlaneG0VGvg(v2, v3);
  v8 = *(v7 + 16);
  if (v8)
  {
    v25 = v4;
    v30 = MEMORY[0x1E69E7CC0];
    v9 = v7;
    sub_19D16E68C(0, v8, 0);
    result = v9;
    v11 = 0;
    v12 = v30;
    v13 = v9[2];
    if (v13 >= v8)
    {
      v13 = v8;
    }

    v28 = v9;
    v29 = v13;
    v14 = v9 + 6;
    v15 = a1;
    v27 = v8;
    while (v29 != v11)
    {
      if (v11 >= result[2])
      {
        goto LABEL_18;
      }

      v16 = *(v14 - 2);
      v17 = *(v14 - 1);
      v18 = *v14;
      result = CVPixelBufferGetBaseAddressOfPlane(v15, v11);
      v19 = result;
      if (result)
      {
        if ((v18 * v17) >> 64 != (v18 * v17) >> 63)
        {
          goto LABEL_19;
        }

        v20 = result + v18 * v17;
      }

      else
      {
        v20 = 0;
      }

      v31 = v12;
      v22 = *(v12 + 16);
      v21 = *(v12 + 24);
      if (v22 >= v21 >> 1)
      {
        v24 = v20;
        sub_19D16E68C((v21 > 1), v22 + 1, 1);
        v20 = v24;
        v15 = a1;
        v12 = v31;
      }

      ++v11;
      *(v12 + 16) = v22 + 1;
      v23 = (v12 + 40 * v22);
      v23[4] = v16;
      v23[5] = v17;
      v23[6] = v18;
      v23[7] = v19;
      v23[8] = v20;
      v14 += 3;
      result = v28;
      if (v27 == v11)
      {

        v4 = v25;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
LABEL_16:
    v4(v12);

    return CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  }

  return result;
}

void sub_19D16EE90(__CVBuffer *a1@<X0>, BOOL *a2@<X8>)
{
  memcpy(v6, *(v2 + 32), sizeof(v6));
  v5 = CVPixelBufferCreationAttributes.dictionaryRepresentation.getter();
  LODWORD(a1) = CVPixelBufferIsCompatibleWithAttributes(a1, v5);

  *a2 = a1 != 0;
}

void sub_19D16EF10(__CVBuffer *a1@<X0>, BOOL *a2@<X8>)
{
  v6 = *(v2 + 32);
  v5 = CVPixelBufferAttributes.dictionaryRepresentation.getter();
  LODWORD(a1) = CVPixelBufferIsCompatibleWithAttributes(a1, v5);

  *a2 = a1 != 0;
}

void sub_19D16EF80(__CVBuffer *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[3];
  v7 = v2[5];
  v6 = v2[6];
  IOSurface = CVPixelBufferGetIOSurface(a1);
  if (IOSurface)
  {
    v9 = IOSurface;
    v7();

    if (v3)
    {
      return;
    }

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  (*(*(v5 - 8) + 56))(a2, v10, 1, v5);
}

unint64_t sub_19D16F040()
{
  result = qword_1EB00F358;
  if (!qword_1EB00F358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB00F358);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CVPixelBufferPlaneProperties(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CVPixelBufferPlaneProperties(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_19D16F114(uint64_t a1, int a2)
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

uint64_t sub_19D16F134(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t CVDataBufferPoolTakeOwnershipOfIOSurface(const __CFAllocator *a1, CFTypeRef cf, __IOSurface *a3)
{
  v25 = 0;
  result = 4294960635;
  if (cf && a3)
  {
    v7 = CFGetTypeID(cf);
    if (v7 != CVDataBufferPoolGetTypeID())
    {
      return 4294960635;
    }

    v8 = *(cf + 2);
    if (!v8)
    {
      return 4294960635;
    }

    v9 = (*(*v8 + 120))(v8);
    if (!v9)
    {
      return 4294960635;
    }

    v10 = v9;
    Value = CFDictionaryGetValue(v9, @"IOSurfaceProperties");
    v12 = Value;
    if (Value)
    {
      v13 = CFGetTypeID(Value);
      if (v13 != CFDictionaryGetTypeID())
      {
        return 4294960635;
      }
    }

    IntValueWithDefault = CVDictionaryGetIntValueWithDefault(v12, *MEMORY[0x1E696CE30], 0);
    v15 = IntValueWithDefault != IOSurfaceGetAllocSize(a3) || IntValueWithDefault == 0;
    if (!v15 && (v16 = CVDictionaryGetIntValueWithDefault(v12, *MEMORY[0x1E696CFC0], 0), IOSurfaceGetPixelFormat(a3) == v16))
    {
      if (!IOSurfaceGetWidth(a3) && !IOSurfaceGetHeight(a3) && !IOSurfaceGetBytesPerRow(a3) && IOSurfaceGetBytesPerElement(a3) == 1 && IOSurfaceGetElementWidth(a3) == 1 && IOSurfaceGetElementHeight(a3) == 1)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(a1, 0, v10);
        if (MutableCopy)
        {
          v18 = MutableCopy;
          ID = IOSurfaceGetID(a3);
          v24 = 0;
          (*(*v8 + 192))(v8, dataBufferPoolScanIOSurfacesCallback, &ID, 6);
          if (v24)
          {
            v20 = -6661;
          }

          else
          {
            v21 = CVDataBufferBacking::alloc(a1, v19);
            if (v21)
            {
              v22 = v21;
              if ((*(*v21[2] + 176))(v21[2], v16, IntValueWithDefault, v18, 0, a3, &v25))
              {
                v25 = (*(*v8 + 200))(v8, v22);
                if (v25)
                {
                  CFRelease(v22);
                }
              }

              goto LABEL_23;
            }

            v20 = -6662;
          }

          v25 = v20;
LABEL_23:
          CFRelease(v18);
          return v25;
        }
      }

      return 4294960634;
    }

    else
    {
      return 4294960635;
    }
  }

  return result;
}

uint64_t CVDataBufferIncrementUseCountForCategory(void *a1, unsigned int a2)
{
  CVDataBuffer = _getCVDataBuffer(a1);
  if (a2 > 1 || !CVDataBuffer)
  {
    return 4294960635;
  }

  return CVDataBuffer::incrementUseCountForCategory(CVDataBuffer, a2);
}

uint64_t CVDataBufferDecrementUseCountForCategory(void *a1, unsigned int a2)
{
  CVDataBuffer = _getCVDataBuffer(a1);
  if (a2 > 1 || !CVDataBuffer)
  {
    return 4294960635;
  }

  return CVDataBuffer::decrementUseCountForCategory(CVDataBuffer, a2);
}

void CVPixelBufferPool::initWithOptions()
{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

CVReturn CVPixelBufferCreateWithBytes(CFAllocatorRef allocator, size_t width, size_t height, OSType pixelFormatType, void *baseAddress, size_t bytesPerRow, CVPixelBufferReleaseBytesCallback releaseCallback, void *releaseRefCon, CFDictionaryRef pixelBufferAttributes, CVPixelBufferRef *pixelBufferOut)
{
  v35 = 0;
  result = -6661;
  if (pixelBufferOut && baseAddress && width && height && bytesPerRow && is_mul_ok(height, bytesPerRow))
  {
    *pixelBufferOut = 0;
    v16 = OUTLINED_FUNCTION_4();
    if (pixelBufferAttributes)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(v16, v17, v18);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(v16, v17, v18, v19);
    }

    v21 = MutableCopy;
    if (!MutableCopy)
    {
      return -6662;
    }

    if (pixelFormatType)
    {
      DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType(pixelFormatType);
      if (DescriptionWithPixelFormatType)
      {
        CFDictionarySetValue(v21, @"PixelFormatDescription", DescriptionWithPixelFormatType);
LABEL_15:
        v24 = CVPixelBufferBacking::alloc(allocator, v23);
        if (v24)
        {
          v25 = v24;
          v26 = OUTLINED_FUNCTION_2(v24[2]);
          if ((*(v27 + 248))(v26, width, height, baseAddress))
          {
            OUTLINED_FUNCTION_3();
            v29 = CVPixelBuffer::alloc(allocator, v28);
            if (v29)
            {
              v30 = v29;
              v31 = v25[2];
              v32 = OUTLINED_FUNCTION_2(*(v29 + 2));
              if ((*(v33 + 248))(v32))
              {
                *pixelBufferOut = v30;
              }

              else
              {
                v35 = -6660;
                CFRelease(v30);
              }
            }

            else
            {
              v35 = -6662;
            }

            CFRelease(v25);
          }

          goto LABEL_24;
        }

        v34 = -6662;
LABEL_23:
        v35 = v34;
LABEL_24:
        CFRelease(v21);
        return v35;
      }
    }

    else if (CFDictionaryGetValue(MutableCopy, @"PixelFormatDescription"))
    {
      goto LABEL_15;
    }

    v34 = -6680;
    goto LABEL_23;
  }

  return result;
}

CVReturn CVPixelBufferCreateWithPlanarBytes(CFAllocatorRef allocator, size_t width, size_t height, OSType pixelFormatType, void *dataPtr, size_t dataSize, size_t numberOfPlanes, void **planeBaseAddress, size_t *planeWidth, size_t *planeHeight, size_t *planeBytesPerRow, CVPixelBufferReleasePlanarBytesCallback releaseCallback, void *releaseRefCon, CFDictionaryRef pixelBufferAttributes, CVPixelBufferRef *pixelBufferOut)
{
  v45[0] = 0;
  result = -6661;
  if (pixelBufferOut && width && height && numberOfPlanes - 17 >= 0xFFFFFFFFFFFFFFF0 && planeBytesPerRow && planeWidth && planeHeight && planeBaseAddress)
  {
    *pixelBufferOut = 0;
    v22 = OUTLINED_FUNCTION_4();
    if (pixelBufferAttributes)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(v22, v23, v24);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(v22, v23, v24, v25);
    }

    v27 = MutableCopy;
    if (!MutableCopy)
    {
      return -6662;
    }

    if (pixelFormatType)
    {
      DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType(pixelFormatType);
      if (DescriptionWithPixelFormatType)
      {
        CFDictionarySetValue(v27, @"PixelFormatDescription", DescriptionWithPixelFormatType);
LABEL_17:
        v30 = CVPixelBufferBacking::alloc(allocator, v29);
        if (v30)
        {
          v31 = v30;
          v32 = OUTLINED_FUNCTION_2(v30[2]);
          if ((*(v33 + 248))(v32, width, height, dataPtr, dataSize, 0, numberOfPlanes, planeBaseAddress, planeWidth, planeHeight, planeBytesPerRow, 0, v35, v34, v27, 0, 0, 0, 0, 0, v45))
          {
            OUTLINED_FUNCTION_3();
            v37 = CVPixelBuffer::alloc(allocator, v36);
            if (v37)
            {
              v38 = v37;
              v39 = v31[2];
              v40 = OUTLINED_FUNCTION_2(*(v37 + 2));
              if ((*(v41 + 248))(v40))
              {
                *pixelBufferOut = v38;
              }

              else
              {
                v45[0] = -6660;
                CFRelease(v38);
              }
            }

            else
            {
              v45[0] = -6662;
            }

            CFRelease(v31);
          }

          goto LABEL_24;
        }

        v42 = -6662;
LABEL_29:
        v45[0] = v42;
LABEL_24:
        CFRelease(v27);
        return v45[0];
      }
    }

    else if (CFDictionaryGetValue(MutableCopy, @"PixelFormatDescription"))
    {
      goto LABEL_17;
    }

    v42 = -6680;
    goto LABEL_29;
  }

  return result;
}

uint64_t CVPixelBufferCreateWithBufferBacking(CVPixelBuffer *a1, uint64_t **a2, void *a3)
{
  v6 = _os_feature_enabled_impl();
  v7 = CFGetTypeID(a2);
  if (v7 != CVPixelBufferBackingGetTypeID())
  {
    return 4294960635;
  }

  v8 = OUTLINED_FUNCTION_2(a2[2]);
  v10 = (*(v9 + 152))(v8);
  if ((v10 == 0) | v6 & 1)
  {
    if (!v10)
    {
      return 4294960633;
    }

    v12 = 0;
  }

  else
  {
    v12 = IOSurfaceCopyAllValues(v10);
  }

  v13 = CVPixelBuffer::alloc(a1, v11);
  v14 = v13;
  if (v13)
  {
    v15 = a2[2];
    v16 = OUTLINED_FUNCTION_2(v13[2]);
    if ((*(v17 + 248))(v16))
    {
      if ((v6 & 1) == 0)
      {
        v18 = CFGetTypeID(v14);
        if (v18 == CVPixelBufferGetTypeID())
        {
          v19 = v14[2];
          if (v19)
          {
            CVPixelBuffer::pullAttachmentsFromIOSurface(v19, v12);
          }
        }
      }

      v20 = 0;
      *a3 = v14;
      v14 = 0;
      if (!v12)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v20 = 4294960636;
      if (!v12)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_15;
  }

  v20 = 4294960634;
  if (v12)
  {
LABEL_15:
    CFRelease(v12);
  }

LABEL_16:
  if (v14)
  {
    CFRelease(v14);
  }

  return v20;
}

uint64_t calculateSparseHistogramAndSizeOfCompressedTileDataUsageOfPlane(__CVBuffer *a1, size_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t *a7, unint64_t *a8, BOOL a9)
{
  if (!a1)
  {
    return 4294960635;
  }

  v15 = a1;
  IOSurface = CVPixelBufferGetIOSurface(a1);
  if (!IOSurface)
  {
    return 4294960635;
  }

  v17 = IOSurface;
  if (IOSurfaceGetPlaneCount(IOSurface) < a2)
  {
    return 4294960635;
  }

  if (IOSurfaceGetProtectionOptions())
  {
    return 4294960635;
  }

  OUTLINED_FUNCTION_0_5();
  WidthInCompressedTilesOfPlane = IOSurfaceGetWidthInCompressedTilesOfPlane();
  if (WidthInCompressedTilesOfPlane <= a3)
  {
    return 4294960635;
  }

  v19 = WidthInCompressedTilesOfPlane;
  OUTLINED_FUNCTION_0_5();
  HeightInCompressedTilesOfPlane = IOSurfaceGetHeightInCompressedTilesOfPlane();
  v21 = 4294960635;
  if (a5 < v19 >> 1 && a8 && a7 && HeightInCompressedTilesOfPlane > a4)
  {
    v22 = a5 <= 1 ? 1 : a5;
    if (a6 < HeightInCompressedTilesOfPlane >> 1)
    {
      *(a7 + 6) = 0u;
      *(a7 + 7) = 0u;
      *(a7 + 4) = 0u;
      *(a7 + 5) = 0u;
      *(a7 + 2) = 0u;
      *(a7 + 3) = 0u;
      if (a6 <= 1)
      {
        a6 = 1;
      }

      *a7 = 0uLL;
      *(a7 + 1) = 0uLL;
      if (CVPixelBufferLockBaseAddress(v15, 1uLL))
      {
        return 4294960636;
      }

      OUTLINED_FUNCTION_0_5();
      if (IOSurfaceGetCompressionTypeOfPlane() - 3 > 1)
      {
        v40 = 0;
        v21 = 4294960633;
LABEL_110:
        *a8 = v40;
        goto LABEL_111;
      }

      v176 = a6;
      v177 = v22;
      OUTLINED_FUNCTION_0_5();
      BaseAddressOfCompressedTileHeaderRegionOfPlane = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
      v24 = BaseAddressOfCompressedTileHeaderRegionOfPlane;
      if (a9)
      {
        if (!BaseAddressOfCompressedTileHeaderRegionOfPlane)
        {
LABEL_111:
          CVPixelBufferUnlockBaseAddress(v15, 1uLL);
          return v21;
        }

        v179 = v15;
        OUTLINED_FUNCTION_0_5();
        v174 = IOSurfaceGetWidthInCompressedTilesOfPlane();
        OUTLINED_FUNCTION_0_5();
        v25 = IOSurfaceGetHeightInCompressedTilesOfPlane();
        OUTLINED_FUNCTION_0_5();
        CompressedTileWidthOfPlane = IOSurfaceGetCompressedTileWidthOfPlane();
        OUTLINED_FUNCTION_0_5();
        CompressedTileHeightOfPlane = IOSurfaceGetCompressedTileHeightOfPlane();
        OUTLINED_FUNCTION_0_5();
        BytesPerCompressedTileHeaderOfPlane = IOSurfaceGetBytesPerCompressedTileHeaderOfPlane();
        PixelFormat = IOSurfaceGetPixelFormat(v17);
        DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType(PixelFormat);
        if (!DescriptionWithPixelFormatType)
        {
          goto LABEL_78;
        }

        Value = CFDictionaryGetValue(DescriptionWithPixelFormatType, @"Planes");
        ValueAtIndex = CFArrayGetValueAtIndex(Value, a2);
        v33 = CFDictionaryGetValue(ValueAtIndex, @"CompressionMetadataPatternSignallingUncompressed");
        Length = CFDataGetLength(v33);
        BytePtr = CFDataGetBytePtr(v33);
        v36 = *BytePtr | (*BytePtr >> 1);
        v37 = v36 | (v36 >> 2);
        if (Length == 2)
        {
          v38 = BytePtr[1] | (BytePtr[1] >> 1);
          v39 = v38 | (v38 >> 2) | ((v38 | (v38 >> 2)) >> 4);
        }

        else
        {
          v39 = 0;
        }

        v57 = 32 - __clz(CompressedTileWidthOfPlane);
        v58 = 32 - __clz(CompressedTileHeightOfPlane);
        v59 = CompressedTileHeightOfPlane * v25;
        v60 = CompressedTileWidthOfPlane * v174;
        v61 = v37 | (v37 >> 4);
        v62 = (CompressedTileHeightOfPlane >> 2) * (CompressedTileWidthOfPlane >> 3);
        if (Length != 1)
        {
          if (Length == 2)
          {
            if (v59 > a4)
            {
              v63 = 32 - __clz(v174);
              v64 = 32 - __clz(v25);
              if (v63 >= v64)
              {
                LOBYTE(v63) = v64;
              }

              v65 = CompressedTileWidthOfPlane * v177;
              v66 = v24 + 1;
              v15 = v179;
              do
              {
                if (v60 > a3)
                {
                  v67 = (*(twiddleLUT + ((a4 >> v58 >> 7) & 0x1FFFFFFFFFFFFFELL)) << 17) | (2 * twiddleLUT[(a4 >> v58)]);
                  v68 = a3;
                  do
                  {
                    if (v62)
                    {
                      v69 = 0;
                      v70 = (v66 + BytesPerCompressedTileHeaderOfPlane * ((v67 | (*(twiddleLUT + ((v68 >> v57 >> 7) & 0x1FFFFFFFFFFFFFELL)) << 16) | twiddleLUT[(v68 >> v57)]) & ~(-1 << (2 * v63)) | (((v68 >> v57) | (a4 >> v58)) << v63) & (-1 << (2 * v63))));
                      v71 = v62;
                      do
                      {
                        v72 = *(v70 - 1);
                        v74 = *v70++;
                        v73 = v74;
                        if (v72)
                        {
                          ++v69;
                        }

                        v75 = v73 == 0;
                        v76 = v39 & v73;
                        v77 = v69 + (v72 & v61);
                        if (!v75)
                        {
                          ++v77;
                        }

                        v69 = v77 + v76;
                        --v71;
                      }

                      while (v71);
                      v78 = v69 - 1;
                    }

                    else
                    {
                      v78 = -1;
                    }

                    ++a7[((v78 + (v78 >> 31)) >> 7) & 0xF];
                    v68 += v65;
                  }

                  while (v68 < v60);
                }

                a4 += CompressedTileHeightOfPlane * v176;
              }

              while (a4 < v59);
              v21 = 0;
              goto LABEL_111;
            }

            goto LABEL_97;
          }

LABEL_78:
          v21 = 4294960636;
LABEL_98:
          v15 = v179;
          goto LABEL_111;
        }

        if (v62 == 8)
        {
          if (v59 > a4)
          {
            OUTLINED_FUNCTION_1_0();
            v148 = vdup_n_s8(v147);
            v150 = v149 * v176;
            v151.i64[0] = 0x1000100010001;
            v151.i64[1] = 0x1000100010001;
            v15 = v179;
            do
            {
              if (v144 > a3)
              {
                v152 = (*(twiddleLUT + ((a4 >> v142 >> 7) & 0x1FFFFFFFFFFFFFELL)) << 17) | (2 * twiddleLUT[(a4 >> v142)]);
                v153 = a3;
                do
                {
                  v154 = *(v24 + BytesPerCompressedTileHeaderOfPlane * ((v152 | (*(twiddleLUT + ((v153 >> v141 >> 7) & 0x1FFFFFFFFFFFFFELL)) << 16) | twiddleLUT[(v153 >> v141)]) & ~v146 | (((v153 >> v141) | (a4 >> v142)) << v145) & v146));
                  v155 = vaddw_u8(vandq_s8(vmovl_u8(vtst_s8(v154, v154)), v151), vand_s8(v154, v148));
                  v155.i16[0] = vaddvq_s16(v155);
                  v156 = ((v155.i32[0] - 1 + ((v155.i32[0] - 1) >> 31)) >> 7) & 0xF;
                  ++a7[v156];
                  v153 += v140 * v177;
                }

                while (v153 < v144);
              }

              v21 = 0;
              a4 += v150;
            }

            while (a4 < v143);
            goto LABEL_111;
          }
        }

        else
        {
          if (v62 != 32)
          {
            goto LABEL_78;
          }

          if (v59 > a4)
          {
            OUTLINED_FUNCTION_1_0();
            v106 = vdupq_n_s8(v105);
            v108 = v107 * v176;
            v109.i64[0] = 0x1000100010001;
            v109.i64[1] = 0x1000100010001;
            v15 = v179;
            do
            {
              if (v102 > a3)
              {
                v110 = (*(twiddleLUT + ((a4 >> v100 >> 7) & 0x1FFFFFFFFFFFFFELL)) << 17) | (2 * twiddleLUT[(a4 >> v100)]);
                v111 = a3;
                do
                {
                  v112 = (v24 + BytesPerCompressedTileHeaderOfPlane * ((v110 | (*(twiddleLUT + ((v111 >> v99 >> 7) & 0x1FFFFFFFFFFFFFELL)) << 16) | twiddleLUT[(v111 >> v99)]) & ~v104 | (((v111 >> v99) | (a4 >> v100)) << v103) & v104));
                  v113 = v112[1];
                  v114 = vandq_s8(v113, v106);
                  v115 = vandq_s8(*v112, v106);
                  v116 = vtstq_s8(*v112, *v112);
                  v117 = vtstq_s8(v113, v113);
                  v118 = vaddq_s16(vaddq_s16(vaddw_u8(vandq_s8(vmovl_u8(*v116.i8), v109), *v115.i8), vaddw_u8(vandq_s8(vmovl_u8(*v117.i8), v109), *v114.i8)), vaddq_s16(vaddw_high_u8(vandq_s8(vmovl_high_u8(v116), v109), v115), vaddw_high_u8(vandq_s8(vmovl_high_u8(v117), v109), v114)));
                  v118.i16[0] = vaddvq_s16(v118);
                  LODWORD(v112) = ((v118.i32[0] - 1 + ((v118.i32[0] - 1) >> 31)) >> 7) & 0xF;
                  ++a7[v112];
                  v111 += v98 * v177;
                }

                while (v111 < v102);
              }

              v21 = 0;
              a4 += v108;
            }

            while (a4 < v101);
            goto LABEL_111;
          }
        }

LABEL_97:
        v21 = 0;
        goto LABEL_98;
      }

      if (BaseAddressOfCompressedTileHeaderRegionOfPlane)
      {
        OUTLINED_FUNCTION_0_5();
        v175 = IOSurfaceGetWidthInCompressedTilesOfPlane();
        OUTLINED_FUNCTION_0_5();
        v41 = IOSurfaceGetHeightInCompressedTilesOfPlane();
        OUTLINED_FUNCTION_0_5();
        v42 = IOSurfaceGetCompressedTileWidthOfPlane();
        OUTLINED_FUNCTION_0_5();
        v43 = IOSurfaceGetCompressedTileHeightOfPlane();
        OUTLINED_FUNCTION_0_5();
        v44 = IOSurfaceGetBytesPerCompressedTileHeaderOfPlane();
        v45 = IOSurfaceGetPixelFormat(v17);
        v46 = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType(v45);
        if (v46)
        {
          v47 = v41;
          v48 = CFDictionaryGetValue(v46, @"Planes");
          v49 = CFArrayGetValueAtIndex(v48, a2);
          v50 = CFDictionaryGetValue(v49, @"CompressionMetadataPatternSignallingUncompressed");
          v51 = CFDataGetLength(v50);
          v52 = CFDataGetBytePtr(v50);
          v53 = *v52 | (*v52 >> 1);
          v54 = v53 | (v53 >> 2);
          if (v51 == 2)
          {
            v55 = v52[1] | (v52[1] >> 1);
            v56 = v55 | (v55 >> 2) | ((v55 | (v55 >> 2)) >> 4);
          }

          else
          {
            v56 = 0;
          }

          v79 = 32 - __clz(v42);
          v80 = 32 - __clz(v43);
          v81 = v43 * v47;
          v82 = v42 * v175;
          v83 = v54 | (v54 >> 4);
          v84 = (v43 >> 2) * (v42 >> 3);
          if (v51 == 1)
          {
            if (v84 == 8)
            {
              if (v81 > a4)
              {
                OUTLINED_FUNCTION_5();
                if (v165 >= v166)
                {
                  LOBYTE(v165) = v166;
                }

                v167 = vdup_n_s8(v164);
                v168 = v157 * v159;
                v169.i64[0] = 0x1000100010001;
                v169.i64[1] = 0x1000100010001;
                do
                {
                  if (v163 > a3)
                  {
                    v170 = a3;
                    do
                    {
                      v171 = *(v24 + v44 * (((*(twiddleLUT + ((a4 >> v161 >> 7) & 0x1FFFFFFFFFFFFFELL)) << 17) | (2 * twiddleLUT[(a4 >> v161)]) | (*(twiddleLUT + ((v170 >> v160 >> 7) & 0x1FFFFFFFFFFFFFELL)) << 16) | twiddleLUT[(v170 >> v160)]) & ~(-1 << (2 * v165)) | (((v170 >> v160) | (a4 >> v161)) << v165) & (-1 << (2 * v165))));
                      v172 = vaddw_u8(vandq_s8(vmovl_u8(vtst_s8(v171, v171)), v169), vand_s8(v171, v167));
                      v172.i16[0] = vaddvq_s16(v172);
                      v40 += (v172.i32[0] + 63) & 0x1FFC0;
                      v170 += v168;
                    }

                    while (v170 < v163);
                  }

                  v21 = 0;
                  a4 += v158 * v176;
                }

                while (a4 < v162);
                goto LABEL_110;
              }
            }

            else if (v84 == 32 && v81 > a4)
            {
              OUTLINED_FUNCTION_5();
              if (v127 >= v128)
              {
                LOBYTE(v127) = v128;
              }

              v129 = vdupq_n_s8(v126);
              v130 = v119 * v121;
              v131.i64[0] = 0x1000100010001;
              v131.i64[1] = 0x1000100010001;
              do
              {
                if (v125 > a3)
                {
                  v132 = a3;
                  do
                  {
                    v133 = (v24 + v44 * (((*(twiddleLUT + ((a4 >> v123 >> 7) & 0x1FFFFFFFFFFFFFELL)) << 17) | (2 * twiddleLUT[(a4 >> v123)]) | (*(twiddleLUT + ((v132 >> v122 >> 7) & 0x1FFFFFFFFFFFFFELL)) << 16) | twiddleLUT[(v132 >> v122)]) & ~(-1 << (2 * v127)) | (((v132 >> v122) | (a4 >> v123)) << v127) & (-1 << (2 * v127))));
                    v134 = v133[1];
                    v135 = vandq_s8(v134, v129);
                    v136 = vandq_s8(*v133, v129);
                    v137 = vtstq_s8(*v133, *v133);
                    v138 = vtstq_s8(v134, v134);
                    v139 = vaddq_s16(vaddq_s16(vaddw_u8(vandq_s8(vmovl_u8(*v137.i8), v131), *v136.i8), vaddw_u8(vandq_s8(vmovl_u8(*v138.i8), v131), *v135.i8)), vaddq_s16(vaddw_high_u8(vandq_s8(vmovl_high_u8(v137), v131), v136), vaddw_high_u8(vandq_s8(vmovl_high_u8(v138), v131), v135)));
                    v139.i16[0] = vaddvq_s16(v139);
                    v40 += (v139.i32[0] + 63) & 0x1FFC0;
                    v132 += v130;
                  }

                  while (v132 < v125);
                }

                v21 = 0;
                a4 += v120 * v176;
              }

              while (a4 < v124);
              goto LABEL_110;
            }
          }

          else if (v51 == 2 && v81 > a4)
          {
            v40 = 0;
            v85 = 32 - __clz(v175);
            v86 = 32 - __clz(v47);
            if (v85 >= v86)
            {
              LOBYTE(v85) = v86;
            }

            v87 = v42 * v177;
            v88 = v24 + 1;
            do
            {
              if (v82 > a3)
              {
                v89 = a3;
                do
                {
                  v90 = 0;
                  if (v84)
                  {
                    v91 = (v88 + v44 * (((*(twiddleLUT + ((a4 >> v80 >> 7) & 0x1FFFFFFFFFFFFFELL)) << 17) | (2 * twiddleLUT[(a4 >> v80)]) | (*(twiddleLUT + ((v89 >> v79 >> 7) & 0x1FFFFFFFFFFFFFELL)) << 16) | twiddleLUT[(v89 >> v79)]) & ~(-1 << (2 * v85)) | (((v89 >> v79) | (a4 >> v80)) << v85) & (-1 << (2 * v85))));
                    v92 = v84;
                    do
                    {
                      v93 = *(v91 - 1);
                      v95 = *v91++;
                      v94 = v95;
                      if (v93)
                      {
                        ++v90;
                      }

                      v75 = v94 == 0;
                      v96 = v56 & v94;
                      v97 = v90 + (v93 & v83);
                      if (!v75)
                      {
                        ++v97;
                      }

                      v90 = v97 + v96;
                      --v92;
                    }

                    while (v92);
                    v90 = (v90 + 63) & 0xFFFFFFFFFFFFFFC0;
                  }

                  v40 += v90;
                  v89 += v87;
                }

                while (v89 < v82);
              }

              a4 += v43 * v176;
            }

            while (a4 < v81);
            goto LABEL_109;
          }
        }
      }

      v40 = 0;
LABEL_109:
      v21 = 0;
      goto LABEL_110;
    }
  }

  return v21;
}

uint64_t CVPixelBufferIncrementUseCountForCategory(void *a1, unsigned int a2)
{
  CVPixelBuffer = _getCVPixelBuffer(a1);
  if (a2 > 1 || !CVPixelBuffer)
  {
    return 4294960635;
  }

  return CVPixelBuffer::incrementUseCountForCategory(CVPixelBuffer, a2);
}

uint64_t CVPixelBufferDecrementUseCountForCategory(void *a1, unsigned int a2)
{
  CVPixelBuffer = _getCVPixelBuffer(a1);
  if (a2 > 1 || !CVPixelBuffer)
  {
    return 4294960635;
  }

  return CVPixelBuffer::decrementUseCountForCategory(CVPixelBuffer, a2);
}

uint64_t CVPixelBufferPoolTakeOwnershipOfIOSurface(const __CFAllocator *a1, CFTypeRef cf, __IOSurface *a3)
{
  cfa = 0;
  valuePtr = 0;
  v3 = 4294960635;
  if (!cf || !a3)
  {
    return v3;
  }

  v7 = CFGetTypeID(cf);
  if (v7 != CVPixelBufferPoolGetTypeID())
  {
    return 4294960635;
  }

  v8 = *(cf + 2);
  if (!v8)
  {
    return 4294960635;
  }

  v9 = (*(*v8 + 120))(*(cf + 2));
  if (!v9)
  {
    return 4294960635;
  }

  v10 = v9;
  IntValueWithDefault = CVDictionaryGetIntValueWithDefault(v9, @"Width", 0);
  Width = IOSurfaceGetWidth(a3);
  if (IntValueWithDefault != Width)
  {
    return 4294960635;
  }

  v13 = OUTLINED_FUNCTION_0_7(Width, @"Height");
  if (v13 != IOSurfaceGetHeight(a3))
  {
    return 4294960635;
  }

  Value = CFDictionaryGetValue(v10, @"PixelFormatType");
  ValueAtIndex = Value;
  if (Value)
  {
    v16 = CFGetTypeID(Value);
    if (v16 != CFArrayGetTypeID() || !CFArrayGetCount(ValueAtIndex) || (ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, 0)) != 0)
    {
      v17 = CFGetTypeID(ValueAtIndex);
      if (v17 == CFNumberGetTypeID())
      {
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
        LODWORD(ValueAtIndex) = valuePtr;
      }

      else
      {
        LODWORD(ValueAtIndex) = 0;
      }
    }
  }

  if (ValueAtIndex != IOSurfaceGetPixelFormat(a3))
  {
    return 4294960635;
  }

  v18 = IOSurfaceCopyAllValues(a3);
  v19 = OUTLINED_FUNCTION_0_7(v18, @"ExtendedPixelsLeft");
  v20 = OUTLINED_FUNCTION_1_1(v19, @"ExtendedPixelsLeft");
  if (v19 == v20 && (v21 = OUTLINED_FUNCTION_0_7(v20, @"ExtendedPixelsTop"), v22 = OUTLINED_FUNCTION_1_1(v21, @"ExtendedPixelsTop"), v21 == v22) && (v23 = OUTLINED_FUNCTION_0_7(v22, @"ExtendedPixelsRight"), v24 = OUTLINED_FUNCTION_1_1(v23, @"ExtendedPixelsRight"), v23 == v24) && (v25 = OUTLINED_FUNCTION_0_7(v24, @"ExtendedPixelsBottom"), v25 == OUTLINED_FUNCTION_1_1(v25, @"ExtendedPixelsBottom")))
  {
    MutableCopy = CFDictionaryCreateMutableCopy(a1, 0, v10);
    if (MutableCopy)
    {
      v27 = MutableCopy;
      ID = IOSurfaceGetID(a3);
      v31 = 0;
      (*(*v8 + 192))(v8, pixelBufferPoolScanIOSurfacesCallback, &ID, 6);
      if (!v31)
      {
        cfa = CVPixelBufferBacking::alloc(a1, v28);
        if (!cfa)
        {
          v3 = 4294960634;
          goto LABEL_28;
        }

        if (!checkIOOrEXSurfaceAndCreatePixelBufferBacking(a3, v27, &cfa))
        {
          v3 = (*(*v8 + 200))(v8, cfa);
          if (v3)
          {
            CFRelease(cfa);
            cfa = 0;
          }

          goto LABEL_28;
        }
      }

      v3 = 4294960635;
LABEL_28:
      CFRelease(v27);
      goto LABEL_29;
    }

    v3 = 4294960634;
  }

  else
  {
    v3 = 4294960635;
  }

LABEL_29:
  if (v18)
  {
    CFRelease(v18);
  }

  return v3;
}

uint64_t CVPixelBufferPoolCopyArrayOfCVPixelBuffers(const __CFAllocator *a1, __CVPixelBufferPool *a2, const __CFDictionary *a3, CFMutableArrayRef *a4)
{
  value = 0;
  theArray = 0;
  if (!_getCVPixelBufferPool(a2))
  {
    return 4294960635;
  }

  CVPixelBufferPool = _getCVPixelBufferPool(a2);
  if (CVPixelBufferPool)
  {
    v9 = (*(*CVPixelBufferPool + 120))(CVPixelBufferPool);
  }

  else
  {
    v9 = 0;
  }

  v11 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    return 4294960634;
  }

  v13 = Mutable;
  v14 = CFDictionaryCreateMutable(v11, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v14)
  {
    v10 = 4294960634;
LABEL_18:
    CFRelease(v13);
    return v10;
  }

  v15 = v14;
  v16 = *MEMORY[0x1E695E4D0];
  CFDictionarySetValue(v14, @"ScanFreeIOSurfaces", *MEMORY[0x1E695E4D0]);
  CFDictionarySetValue(v15, @"ScanUsedIOSurfaces", v16);
  theArray = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  if (theArray)
  {
    v17 = CVPixelBufferPoolScanIOSurfacesWithOptions(a2, poolScanIOSurfacesCallback, &theArray, v15);
    if (!v17)
    {
      Count = CFArrayGetCount(theArray);
      if (Count < 1)
      {
LABEL_14:
        v10 = 0;
        *a4 = v13;
        v13 = 0;
        goto LABEL_15;
      }

      v19 = Count;
      v20 = 0;
      v21 = 1;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v20);
        v17 = CVPixelBufferCreateWithIOSurface(v11, ValueAtIndex, a3, &value);
        if (v17)
        {
          break;
        }

        (*(**(value + 2) + 144))(*(value + 2), v9);
        CFArrayAppendValue(v13, value);
        CFRelease(value);
        v20 = v21;
        if (v19 <= v21++)
        {
          goto LABEL_14;
        }
      }
    }

    v10 = v17;
  }

  else
  {
    v10 = 4294960634;
  }

LABEL_15:
  CFRelease(v15);
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v13)
  {
    goto LABEL_18;
  }

  return v10;
}

void _CVPixelBufferLayoutPlane()
{
  __assert_rtn("_CVPixelBufferLayoutPlane", "CVPixelBufferBacking.cpp", 997, "(bytesPerLine % (bytesPerBlock*blockHAlign)) == 0");
}

{
  __assert_rtn("_CVPixelBufferLayoutPlane", "CVPixelBufferBacking.cpp", 998, "(bytesPerLine % scanlineAlignment) == 0");
}

{
  __assert_rtn("_CVPixelBufferLayoutPlane", "CVPixelBufferBacking.cpp", 999, "(bytesPerLine % bytesPerBlock) == 0");
}

void CVPixelBufferBacking::initWithPixelBufferDescription(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_19D11B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Invalid CVCustomMemoryLayoutCallBacks version (%lld).", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void CVPixelBuffer::setIOSurfaceAttachmentForCVBufferKey(CVPixelBuffer *this, const __CFString *a2, CGColorSpace *a3)
{
  v5 = OUTLINED_FUNCTION_1_2(this);
  v7 = (*(v6 + 152))(v5);
  if (v7)
  {
    v8 = v7;
    v9 = CVGetIOSurfacePropertyKeyForCVBufferAttachmentKey(a2);
    if (v9)
    {
      v10 = v9;
      if (*MEMORY[0x1E696CEE0] == v9)
      {
        TypeID = CGColorSpaceGetTypeID();
        if (TypeID == CFGetTypeID(a3))
        {
          v12 = CVPixelBufferGlobalCacheCreateOrCopyPropertyListFromColorSpace(a3);
          if (v12)
          {
            v13 = v12;
            IOSurfaceSetValue(v8, v10, v12);

            CFRelease(v13);
          }
        }
      }

      else
      {

        IOSurfaceSetValue(v8, v9, a3);
      }
    }
  }
}

void CVPixelBuffer::addIOSurfaceAttachmentToDictionary(CVPixelBuffer *this, __CFDictionary *a2, const __CFString *a3, CGColorSpace *a4)
{
  v7 = OUTLINED_FUNCTION_1_2(this);
  v9 = (*(v8 + 152))(v7);
  if (a2)
  {
    if (v9)
    {
      v10 = CVGetIOSurfacePropertyKeyForCVBufferAttachmentKey(a3);
      if (v10)
      {
        v11 = v10;
        if (*MEMORY[0x1E696CEE0] == v10)
        {
          TypeID = CGColorSpaceGetTypeID();
          if (TypeID == CFGetTypeID(a4))
          {
            v13 = CVPixelBufferGlobalCacheCreateOrCopyPropertyListFromColorSpace(a4);
            if (v13)
            {
              v14 = v13;
              CFDictionaryAddValue(a2, v11, v13);

              CFRelease(v14);
            }
          }
        }

        else
        {

          CFDictionaryAddValue(a2, v10, a4);
        }
      }
    }
  }
}

Boolean CVIsCompressedPixelFormatAvailable(OSType pixelFormatType)
{
  v8 = 0;
  LODWORD(DescriptionWithPixelFormatType) = areUniversalCompressionFormatsSupported();
  if (DescriptionWithPixelFormatType)
  {
    DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType(pixelFormatType);
    if (DescriptionWithPixelFormatType)
    {
      DescriptionWithPixelFormatType = CFDictionaryGetValue(DescriptionWithPixelFormatType, @"Planes");
      if (DescriptionWithPixelFormatType)
      {
        v3 = DescriptionWithPixelFormatType;
        v4 = CFGetTypeID(DescriptionWithPixelFormatType);
        if (v4 != CFArrayGetTypeID())
        {
          goto LABEL_8;
        }

        DescriptionWithPixelFormatType = CFArrayGetValueAtIndex(v3, 0);
        if (DescriptionWithPixelFormatType)
        {
          v5 = DescriptionWithPixelFormatType;
          v6 = CFGetTypeID(DescriptionWithPixelFormatType);
          if (v6 == CFDictionaryGetTypeID())
          {
            getNumberValueIfPresent(v5, @"CompressionType", &v8);
            LOBYTE(DescriptionWithPixelFormatType) = (v8 - 3) < 2;
            return DescriptionWithPixelFormatType;
          }

LABEL_8:
          LOBYTE(DescriptionWithPixelFormatType) = 0;
        }
      }
    }
  }

  return DescriptionWithPixelFormatType;
}