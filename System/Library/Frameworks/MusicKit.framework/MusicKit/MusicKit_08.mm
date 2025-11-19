void sub_2172A238C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v32 = MEMORY[0x277D84F90];
    sub_217276678(0, v1, 0);
    v2 = v32;
    v5 = sub_2172A4F50(a1);
    v7 = v6;
    v8 = 0;
    v9 = a1 + 64;
    v25 = v1;
    v24 = v6;
    v10 = 1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < v10 << *(a1 + 32))
    {
      v11 = v5 >> 6;
      v12 = v10 << v5;
      if ((*(v9 + 8 * (v5 >> 6)) & (v10 << v5)) == 0)
      {
        goto LABEL_23;
      }

      if (*(a1 + 36) != v7)
      {
        goto LABEL_24;
      }

      v26 = v4;
      sub_21721E0AC(*(a1 + 56) + 32 * v5, v29);
      sub_2172124CC(v29, v28);
      v30.n128_u64[0] = 0xD000000000000028;
      v30.n128_u64[1] = 0x80000002177AA020;
      v27[0] = v28[0];
      v27[1] = v28[1];
      sub_2172124CC(v27, v31);
      v32 = v2;
      OUTLINED_FUNCTION_104_2();
      if (v14)
      {
        sub_217276678(v13 > 1, v1, 1);
        v2 = v32;
      }

      OUTLINED_FUNCTION_105_4();
      OUTLINED_FUNCTION_77_2(v15, v30, v31[0], v31[1]);
      OUTLINED_FUNCTION_132_0();
      if (v16 == v17)
      {
        goto LABEL_25;
      }

      if ((*(v9 + 8 * v11) & v12) == 0)
      {
        goto LABEL_26;
      }

      if (*(a1 + 36) != v7)
      {
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_101_1();
      if (v18)
      {
        v19 = v11 << 6;
        v20 = v11 + 1;
        v21 = (a1 + 72 + 8 * v11);
        while (v20 < (v1 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            OUTLINED_FUNCTION_41_6(v26);
            v10 = 1;
            v1 = __clz(__rbit64(v22)) + v19;
            goto LABEL_20;
          }
        }

        OUTLINED_FUNCTION_41_6(v26);
        v10 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_13_10();
      }

LABEL_20:
      v4 = 0;
      ++v8;
      v5 = v1;
      v7 = v24;
      v1 = v25;
      if (v8 == v25)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_21:
    sub_2175FC8CC(v2);
  }
}

uint64_t Genre.underlyingLegacyModelObjectType.getter@<X0>(char *a1@<X8>)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  OUTLINED_FUNCTION_75_2();
  v5(v3, v4);
  v6 = v16[4];
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  v7 = *(*(v6 + 8) + 48);
  v8 = OUTLINED_FUNCTION_5_4();
  v9(v8);
  __swift_destroy_boxed_opaque_existential_1(v16);
  v11 = v16[5];
  v10 = v16[6];
  if (qword_280BE4A88 != -1)
  {
    OUTLINED_FUNCTION_30_8();
  }

  if (v11 == qword_280BE4A90 && v10 == *algn_280BE4A98)
  {

    v15 = 8;
  }

  else
  {
    v13 = sub_217753058();

    if (v13)
    {
      v15 = 8;
    }

    else
    {
      v15 = 1;
    }
  }

  *a1 = v15;
  return result;
}

uint64_t Genre.SimpleLegacyModelGenrePropertyKey.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_217752DC8();

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

unint64_t Genre.SimpleLegacyModelGenrePropertyKey.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000024;
  }

  else
  {
    result = 0xD000000000000018;
  }

  *v0;
  return result;
}

uint64_t sub_2172A2B64@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return Genre.SimpleLegacyModelGenrePropertyKey.init(rawValue:)(a1);
}

unint64_t sub_2172A2B70@<X0>(unint64_t *a1@<X8>)
{
  result = Genre.SimpleLegacyModelGenrePropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_2172A2B9C(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x28223BE20](a1, a2);
  v90 = *v4;
  v92 = Genre.convertToSimpleLegacyModelStorageDictionary()(v3);
  v110[3] = &type metadata for Genre;
  v110[4] = &protocol witness table for Genre;
  OUTLINED_FUNCTION_197();
  v110[0] = swift_allocObject();
  sub_217284130(v2, v110[0] + 16);
  v5 = OUTLINED_FUNCTION_131_2();
  v6 = OUTLINED_FUNCTION_33_6(v5);
  sub_21729C5E8(v6, __src);
  OUTLINED_FUNCTION_38_1(__src);
  v7 = OUTLINED_FUNCTION_36_5();
  v8(v7);
  sub_21729C644(__src);
  memcpy(v112, v111, 0x161uLL);
  v9 = OUTLINED_FUNCTION_131_2();
  __swift_destroy_boxed_opaque_existential_1(v9);
  v10 = v112[2];
  v11 = v112[3];
  v12 = v112[4];
  sub_217751DE8();
  sub_217269F50(v112);
  if (v11)
  {
    v111[0] = v10;
    v111[1] = v11;
    LOBYTE(v111[2]) = v12;
    v94 = sub_21750D924();
  }

  else
  {
    v94 = 0;
  }

  __src[3] = &type metadata for Genre;
  __src[4] = &protocol witness table for Genre;
  OUTLINED_FUNCTION_197();
  __src[0] = swift_allocObject();
  OUTLINED_FUNCTION_97_2(__src[0]);
  v13 = OUTLINED_FUNCTION_33_6(__src);
  sub_21729C5E8(v13, __dst);
  OUTLINED_FUNCTION_38_1(__dst);
  v14 = OUTLINED_FUNCTION_36_5();
  v15(v14);
  sub_21729C644(__dst);
  memcpy(v111, v110, 0x161uLL);
  __swift_destroy_boxed_opaque_existential_1(__src);
  v16 = v111[6];
  sub_217751DE8();
  sub_217269F50(v111);
  if (v16)
  {
    OUTLINED_FUNCTION_56_0();
    v93 = sub_217751F18();
  }

  else
  {
    v93 = 0;
  }

  __dst[3] = &type metadata for Genre;
  __dst[4] = &protocol witness table for Genre;
  OUTLINED_FUNCTION_197();
  __dst[0] = swift_allocObject();
  OUTLINED_FUNCTION_97_2(__dst[0]);
  v17 = OUTLINED_FUNCTION_33_6(__dst);
  sub_21729C5E8(v17, v107);
  OUTLINED_FUNCTION_38_1(v107);
  v18 = OUTLINED_FUNCTION_36_5();
  v19(v18);
  sub_21729C644(v107);
  v20 = OUTLINED_FUNCTION_131_2();
  memcpy(v20, __src, 0x161uLL);
  __swift_destroy_boxed_opaque_existential_1(__dst);
  v21 = v110[8];
  sub_217751DE8();
  v22 = OUTLINED_FUNCTION_131_2();
  sub_217269F50(v22);
  if (v21)
  {
    OUTLINED_FUNCTION_56_0();
    v89 = sub_217751F18();
  }

  else
  {
    v89 = 0;
  }

  v107[3] = &type metadata for Genre;
  v107[4] = &protocol witness table for Genre;
  OUTLINED_FUNCTION_197();
  v107[0] = swift_allocObject();
  OUTLINED_FUNCTION_97_2(v107[0]);
  v23 = OUTLINED_FUNCTION_33_6(v107);
  sub_21729C5E8(v23, v106);
  OUTLINED_FUNCTION_38_1(v106);
  v24 = OUTLINED_FUNCTION_36_5();
  v25(v24);
  sub_21729C644(v106);
  memcpy(__src, __dst, 0x161uLL);
  __swift_destroy_boxed_opaque_existential_1(v107);
  v26 = __src[10];
  sub_217751DE8();
  sub_217269F50(__src);
  if (v26)
  {
    OUTLINED_FUNCTION_56_0();
    v88 = sub_217751F18();
  }

  else
  {
    v88 = 0;
  }

  v106[3] = &type metadata for Genre;
  v106[4] = &protocol witness table for Genre;
  OUTLINED_FUNCTION_197();
  v106[0] = swift_allocObject();
  OUTLINED_FUNCTION_97_2(v106[0]);
  v27 = OUTLINED_FUNCTION_33_6(v106);
  sub_21729C5E8(v27, v105);
  OUTLINED_FUNCTION_38_1(v105);
  v28 = OUTLINED_FUNCTION_36_5();
  v29(v28);
  sub_21729C644(v105);
  memcpy(__dst, v107, 0x161uLL);
  __swift_destroy_boxed_opaque_existential_1(v106);
  v30 = __dst[12];
  sub_217751DE8();
  sub_217269F50(__dst);
  if (v30)
  {
    OUTLINED_FUNCTION_56_0();
    v87 = sub_217751F18();
  }

  else
  {
    v87 = 0;
  }

  v105[3] = &type metadata for Genre;
  v105[4] = &protocol witness table for Genre;
  OUTLINED_FUNCTION_197();
  v105[0] = swift_allocObject();
  OUTLINED_FUNCTION_97_2(v105[0]);
  v31 = OUTLINED_FUNCTION_33_6(v105);
  sub_21729C5E8(v31, v104);
  OUTLINED_FUNCTION_38_1(v104);
  v32 = OUTLINED_FUNCTION_36_5();
  v33(v32);
  sub_21729C644(v104);
  memcpy(v107, v106, 0x161uLL);
  __swift_destroy_boxed_opaque_existential_1(v105);
  v34 = v107[14];
  sub_217751DE8();
  sub_217269F50(v107);
  if (v34)
  {
    OUTLINED_FUNCTION_56_0();
    v86 = sub_217751F18();
  }

  else
  {
    v86 = 0;
  }

  v104[3] = &type metadata for Genre;
  v104[4] = &protocol witness table for Genre;
  OUTLINED_FUNCTION_197();
  v104[0] = swift_allocObject();
  OUTLINED_FUNCTION_97_2(v104[0]);
  v35 = OUTLINED_FUNCTION_33_6(v104);
  sub_21729C5E8(v35, v103);
  OUTLINED_FUNCTION_38_1(v103);
  v36 = OUTLINED_FUNCTION_36_5();
  v37(v36);
  sub_21729C644(v103);
  memcpy(v106, v105, 0x161uLL);
  __swift_destroy_boxed_opaque_existential_1(v104);
  v38 = v106[16];
  sub_217751DE8();
  sub_217269F50(v106);
  if (v38)
  {
    v85 = sub_217751F18();
  }

  else
  {
    v85 = 0;
  }

  v103[3] = &type metadata for Genre;
  v103[4] = &protocol witness table for Genre;
  OUTLINED_FUNCTION_197();
  v103[0] = swift_allocObject();
  OUTLINED_FUNCTION_97_2(v103[0]);
  v39 = OUTLINED_FUNCTION_33_6(v103);
  sub_21729C5E8(v39, v102);
  v40 = v102[3];
  v41 = v102[4];
  __swift_project_boxed_opaque_existential_1(v102, v102[3]);
  (*(v41 + 24))(v104, v40, v41);
  sub_21729C644(v102);
  memcpy(v105, v104, 0x161uLL);
  __swift_destroy_boxed_opaque_existential_1(v103);
  v42 = v105[17];
  v43 = v105[18];
  v44 = v105[19];
  v45 = v105[20];
  sub_2172A5428(v105[17], v105[18]);
  sub_217269F50(v105);
  if (v43)
  {
    v104[0] = v42;
    v104[1] = v43;
    v104[2] = v44;
    v104[3] = v45;
    sub_21725D480();
    v84 = v46;
  }

  else
  {
    v84 = 0;
  }

  v102[3] = &type metadata for Genre;
  v102[4] = &protocol witness table for Genre;
  OUTLINED_FUNCTION_197();
  v102[0] = swift_allocObject();
  OUTLINED_FUNCTION_97_2(v102[0]);
  v47 = OUTLINED_FUNCTION_33_6(v102);
  sub_21729C5E8(v47, v101);
  v48 = v101[3];
  v49 = v101[4];
  __swift_project_boxed_opaque_existential_1(v101, v101[3]);
  (*(v49 + 24))(v103, v48, v49);
  sub_21729C644(v101);
  memcpy(v104, v103, 0x161uLL);
  __swift_destroy_boxed_opaque_existential_1(v102);
  v50 = v104[26];
  sub_217751DE8();
  sub_217269F50(v104);
  if (v50)
  {
    v51 = sub_217751F18();
  }

  else
  {
    v51 = 0;
  }

  v101[3] = &type metadata for Genre;
  v101[4] = &protocol witness table for Genre;
  OUTLINED_FUNCTION_197();
  v101[0] = swift_allocObject();
  OUTLINED_FUNCTION_97_2(v101[0]);
  v52 = OUTLINED_FUNCTION_33_6(v101);
  sub_21729C5E8(v52, v97);
  v53 = v97[3];
  v54 = v97[4];
  __swift_project_boxed_opaque_existential_1(v97, v97[3]);
  (*(v54 + 24))(v102, v53, v54);
  sub_21729C644(v97);
  memcpy(v103, v102, 0x161uLL);
  __swift_destroy_boxed_opaque_existential_1(v101);
  v55 = v103[21];
  v56 = v103[22];
  v57 = v103[23];
  v58 = v103[24];
  sub_2172A5428(v103[21], v103[22]);
  sub_217269F50(v103);
  if (v56)
  {
    v102[0] = v55;
    v102[1] = v56;
    v102[2] = v57;
    v102[3] = v58;
    sub_21725D480();
    v60 = v59;
  }

  else
  {
    v60 = 0;
  }

  v97[3] = &type metadata for Genre;
  v97[4] = &protocol witness table for Genre;
  OUTLINED_FUNCTION_197();
  v97[0] = swift_allocObject();
  OUTLINED_FUNCTION_97_2(v97[0]);
  v61 = OUTLINED_FUNCTION_33_6(v97);
  sub_21729C5E8(v61, v95);
  v62 = v95[3];
  v63 = v95[4];
  __swift_project_boxed_opaque_existential_1(v95, v95[3]);
  (*(v63 + 24))(v101, v62, v63);
  sub_21729C644(v95);
  memcpy(v102, v101, 0x161uLL);
  __swift_destroy_boxed_opaque_existential_1(v97);
  v64 = v102[28];
  sub_217751DE8();
  sub_217269F50(v102);
  if (v64)
  {
    v65 = sub_217751F18();
  }

  else
  {
    v65 = 0;
  }

  v95[3] = &type metadata for Genre;
  v95[4] = &protocol witness table for Genre;
  OUTLINED_FUNCTION_197();
  v95[0] = swift_allocObject();
  OUTLINED_FUNCTION_97_2(v95[0]);
  v66 = OUTLINED_FUNCTION_33_6(v95);
  sub_21729C5E8(v66, v98);
  v67 = v99;
  v68 = v100;
  __swift_project_boxed_opaque_existential_1(v98, v99);
  (v68[3])(v97, v67, v68);
  sub_21729C644(v98);
  memcpy(v101, v97, 0x161uLL);
  __swift_destroy_boxed_opaque_existential_1(v95);
  v69 = v101[30];
  sub_217751DE8();
  sub_217269F50(v101);
  if (v69)
  {
    v70 = sub_217751F18();
  }

  else
  {
    v70 = 0;
  }

  v71 = objc_opt_self();
  v99 = &type metadata for Genre;
  v100 = &protocol witness table for Genre;
  OUTLINED_FUNCTION_197();
  v98[0] = swift_allocObject();
  OUTLINED_FUNCTION_97_2(v98[0]);
  v72 = OUTLINED_FUNCTION_33_6(v98);
  sub_21729C5E8(v72, v96);
  v73 = v96[4];
  __swift_project_boxed_opaque_existential_1(v96, v96[3]);
  v74 = *(v73 + 24);
  v75 = OUTLINED_FUNCTION_5_4();
  v76(v75, v73);
  sub_21729C644(v96);
  memcpy(v97, v95, 0x161uLL);
  __swift_destroy_boxed_opaque_existential_1(v98);
  v77 = v97[33];
  sub_217751DE8();
  sub_217269F50(v97);
  sub_21729D8EC(v77);
  v79 = v78;

  LOBYTE(v95[0]) = v90;
  v80 = sub_2173AAFE0();
  *&v83 = v51;
  *(&v83 + 1) = v60;
  v91 = sub_2172B82C8(v94, v93, v89, v88, v87, v86, v85, v84, v83, v65, v70, v79, 9, v80, v71);

  sub_2172A0FAC(v92);

  v81 = objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
  return sub_2175FCB20(v91, 9);
}

uint64_t sub_2172A36E4@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_2176327E4(a1 & 1), (v6 & 1) != 0))
  {
    sub_21721E0AC(*(a2 + 56) + 32 * v5, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD40, &qword_2177583F0);
  v7 = sub_2177517D8();
  v8 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a3, v8 ^ 1u, 1, v7);
}

uint64_t sub_2172A3798(char a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = sub_2176327E4(a1 & 1), (v4 & 1) != 0))
  {
    sub_21721E0AC(*(a2 + 56) + 32 * v3, v6);
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD40, &qword_2177583F0);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2172A393C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v2 = sub_217632930(), (v3 & 1) != 0))
  {
    OUTLINED_FUNCTION_83_4(v2, v3, v4, v5, v6, v7, v8, v9, v11);
  }

  else
  {
    OUTLINED_FUNCTION_94_0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD40, &qword_2177583F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24B10, &unk_217758190);
  if (swift_dynamicCast())
  {
    return v12;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2172A3C30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (*(a2 + 16) && (v3 = a3(), (v4 & 1) != 0))
  {
    OUTLINED_FUNCTION_83_4(v3, v4, v5, v6, v7, v8, v9, v10, v14);
  }

  else
  {
    OUTLINED_FUNCTION_94_0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD40, &qword_2177583F0);
  v11 = swift_dynamicCast();
  v12 = v15;
  if (!v11)
  {
    return 0;
  }

  return v12;
}

uint64_t sub_2172A3CD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (*(a2 + 16) && (v3 = a3(), (v4 & 1) != 0))
  {
    OUTLINED_FUNCTION_83_4(v3, v4, v5, v6, v7, v8, v9, v10, v12);
  }

  else
  {
    OUTLINED_FUNCTION_94_0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD40, &qword_2177583F0);
  if (swift_dynamicCast())
  {
    return v13;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_2172A3DA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (*(a2 + 16) && (v3 = a3(), (v4 & 1) != 0))
  {
    OUTLINED_FUNCTION_83_4(v3, v4, v5, v6, v7, v8, v9, v10, v12);
  }

  else
  {
    OUTLINED_FUNCTION_94_0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD40, &qword_2177583F0);
  if (swift_dynamicCast())
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2172A3E54@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  if (*(a1 + 16) && (v6 = a2(), (v7 & 1) != 0))
  {
    OUTLINED_FUNCTION_83_4(v6, v7, v8, v9, v10, v11, v12, v13, v17);
  }

  else
  {
    OUTLINED_FUNCTION_94_0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD40, &qword_2177583F0);
  v14 = a3(0);
  v15 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a4, v15 ^ 1u, 1, v14);
}

uint64_t sub_2172A3F28()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v2 = OUTLINED_FUNCTION_91_2();
  v3(v2);
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v4 = OUTLINED_FUNCTION_74_2();
  v5(v4);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v7[5];
}

uint64_t sub_2172A404C()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v2 = OUTLINED_FUNCTION_91_2();
  v3(v2);
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v4 = OUTLINED_FUNCTION_74_2();
  v5(v4);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v7[5];
}

void sub_2172A40FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_128_1();
  a24 = v26;
  a25 = v27;
  v29 = v28;
  v31 = v30;
  v32 = v25[3];
  v33 = v25[4];
  __swift_project_boxed_opaque_existential_1(v25, v32);
  OUTLINED_FUNCTION_75_2();
  v34(v32, v33);
  v35 = a12;
  v36 = a13;
  __swift_project_boxed_opaque_existential_1(&a9, a12);
  (*(*(v36 + 8) + 8))(&a17, v31, v29, MEMORY[0x277D839B0], v35);
  __swift_destroy_boxed_opaque_existential_1(&a9);
  OUTLINED_FUNCTION_127_1();
}

uint64_t sub_2172A4254(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v9 = v4[3];
  v10 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v9);
  OUTLINED_FUNCTION_75_2();
  v11(v9, v10);
  v12 = v19;
  v13 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v14 = *(v13 + 8);
  v15 = *(v14 + 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v15(&v21, a1, a4, v16, v12, v14);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return v21;
}

void sub_2172A43F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_128_1();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v27 = v22[3];
  v28 = v22[4];
  __swift_project_boxed_opaque_existential_1(v22, v27);
  OUTLINED_FUNCTION_75_2();
  v29(v27, v28);
  v30 = a12;
  v31 = a13;
  __swift_project_boxed_opaque_existential_1(&a9, a12);
  v32 = *(v31 + 8);
  v33 = *(v32 + 8);
  v34 = type metadata accessor for Album.TracksPopularityProvider();
  v33(&a14, v26, &type metadata for Album, v34, v30, v32);
  __swift_destroy_boxed_opaque_existential_1(&a9);
  OUTLINED_FUNCTION_127_1();
}

uint64_t sub_2172A4984(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenrePropertyProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2172A49E8(uint64_t a1)
{
  v2 = type metadata accessor for GenrePropertyProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2172A4A44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenrePropertyProvider();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2172A4AA8()
{
  result = qword_280BE8568;
  if (!qword_280BE8568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE8568);
  }

  return result;
}

unint64_t sub_2172A4AFC()
{
  result = qword_280BE76C0;
  if (!qword_280BE76C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE76C0);
  }

  return result;
}

unint64_t sub_2172A4B54()
{
  result = qword_280BE76B8;
  if (!qword_280BE76B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE76B8);
  }

  return result;
}

unint64_t sub_2172A4BA8(uint64_t a1)
{
  *(a1 + 8) = sub_2172A4AFC();
  result = sub_2172A4BD8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2172A4BD8()
{
  result = qword_27CB24B78;
  if (!qword_27CB24B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24B78);
  }

  return result;
}

_BYTE *_s33SimpleLegacyModelGenrePropertyKeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

double sub_2172A4D08@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_217632668();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    v9 = *(*v2 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B80, &qword_2177595A8);
    sub_217752CB8();
    v10 = *(v16 + 48) + 32 * v7;
    v11 = *(v10 + 8);
    v12 = *(v10 + 24);

    v13 = (*(v16 + 56) + 48 * v7);
    v14 = v13[1];
    *a1 = *v13;
    a1[1] = v14;
    a1[2] = v13[2];
    sub_2172A4EFC();
    sub_217752CD8();
    *v2 = v16;
  }

  else
  {
    result = 0.0;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  return result;
}

uint64_t sub_2172A4E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  result = sub_21763246C(a1, a2);
  if (v8)
  {
    v9 = result;
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v15 = *v4;
    v11 = *(*v4 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B88, &qword_2177595B0);
    sub_217752CB8();
    v12 = *(*(v15 + 48) + 16 * v9 + 8);

    v13 = *(v15 + 56) + 24 * v9;
    v14 = *(v13 + 16);
    *a3 = *v13;
    *(a3 + 16) = v14;
    result = sub_217752CD8();
    *v4 = v15;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = -1;
  }

  return result;
}

unint64_t sub_2172A4EFC()
{
  result = qword_280BE3800[0];
  if (!qword_280BE3800[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280BE3800);
  }

  return result;
}

uint64_t sub_2172A4F50(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_217752A18();
  v4 = *(a1 + 36);
  return result;
}

unint64_t sub_2172A4F90()
{
  result = qword_27CB24B90;
  if (!qword_27CB24B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24B90);
  }

  return result;
}

unint64_t sub_2172A4FE4()
{
  result = qword_280BE2680;
  if (!qword_280BE2680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2680);
  }

  return result;
}

unint64_t sub_2172A5038()
{
  result = qword_280BE8540;
  if (!qword_280BE8540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE8540);
  }

  return result;
}

unint64_t sub_2172A508C()
{
  result = qword_27CB24BB8;
  if (!qword_27CB24BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24BB8);
  }

  return result;
}

unint64_t sub_2172A50E0()
{
  result = qword_27CB24BC8;
  if (!qword_27CB24BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24BC8);
  }

  return result;
}

unint64_t sub_2172A5134()
{
  result = qword_27CB24BF8;
  if (!qword_27CB24BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24BF8);
  }

  return result;
}

unint64_t sub_2172A5188()
{
  result = qword_280BE84C8;
  if (!qword_280BE84C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE84C8);
  }

  return result;
}

unint64_t sub_2172A51DC()
{
  result = qword_27CB24C10;
  if (!qword_27CB24C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24C10);
  }

  return result;
}

unint64_t sub_2172A5230()
{
  result = qword_280BE2E80;
  if (!qword_280BE2E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2E80);
  }

  return result;
}

unint64_t sub_2172A5284()
{
  result = qword_280BE88F0;
  if (!qword_280BE88F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE88F0);
  }

  return result;
}

unint64_t sub_2172A52D8()
{
  result = qword_280BE8578;
  if (!qword_280BE8578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE8578);
  }

  return result;
}

unint64_t sub_2172A532C()
{
  result = qword_280BE85F8;
  if (!qword_280BE85F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE85F8);
  }

  return result;
}

unint64_t sub_2172A5380()
{
  result = qword_280BE7F28;
  if (!qword_280BE7F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE7F28);
  }

  return result;
}

unint64_t sub_2172A53D4()
{
  result = qword_280BE8BA0[0];
  if (!qword_280BE8BA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280BE8BA0);
  }

  return result;
}

uint64_t sub_2172A5428(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_217751DE8();

    return sub_217751DE8();
  }

  return result;
}

unint64_t sub_2172A546C()
{
  result = qword_280BE8618;
  if (!qword_280BE8618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE8618);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_17@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v6 = __clz(__rbit64(v4)) | (a1 << 6);
  v7 = (*(v3 + 48) + 16 * v6);
  v9 = *v7;
  v8 = v7[1];
  v10 = *(v3 + 56) + 32 * v6;

  return sub_21721E0AC(v10, va);
}

_OWORD *OUTLINED_FUNCTION_15_15@<X0>(uint64_t a1@<X8>)
{
  result = sub_2172124CC((a1 + 8), (v2 + 16));
  *(v3 - 104) = v1;
  v5 = *(v1 + 24);
  v6 = *(v1 + 16) + 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_26_8()
{

  return sub_217752CB8();
}

uint64_t OUTLINED_FUNCTION_29_8()
{

  return sub_217752CB8();
}

uint64_t OUTLINED_FUNCTION_34_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v35 = *(v32 + 56);
  v37 = *(*(v32 + 48) + v33);

  return sub_21721E0AC(v35 + 32 * v33, &a32);
}

uint64_t OUTLINED_FUNCTION_41_6@<X0>(char a1@<W8>)
{

  return sub_2171FADD4(v1, v2, a1 & 1);
}

_OWORD *OUTLINED_FUNCTION_42_5@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 a6)
{
  *(a1 + v8) = v7;
  v10 = (*(v6 + 56) + 32 * v8);

  return sub_2172124CC(&a6, v10);
}

uint64_t OUTLINED_FUNCTION_43_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);

  return sub_21721E0AC(va1, va);
}

uint64_t OUTLINED_FUNCTION_46_6()
{

  return sub_217752CD8();
}

uint64_t OUTLINED_FUNCTION_47_5()
{
  *(v2 - 104) = v0;

  return sub_217276678(0, v1, 0);
}

_OWORD *OUTLINED_FUNCTION_52_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  v14 = (*(v11 + 56) + 32 * v12);

  return sub_2172124CC(&a11, v14);
}

uint64_t OUTLINED_FUNCTION_62_4(_OWORD *a1, _OWORD *a2)
{
  sub_2172124CC(a1, a2);

  return sub_217752DC8();
}

uint64_t OUTLINED_FUNCTION_65_4()
{
  v3 = (*(v0 + 56) + 32 * v1);

  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t OUTLINED_FUNCTION_69_4()
{

  return sub_217751DC8();
}

uint64_t OUTLINED_FUNCTION_70_3()
{

  return sub_217751DC8();
}

uint64_t OUTLINED_FUNCTION_72_3()
{

  return swift_once();
}

void OUTLINED_FUNCTION_77_2(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  a1[3] = a3;
  a1[4] = a4;
  a1[2] = a2;
}

uint64_t OUTLINED_FUNCTION_78_1()
{

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_83_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(v9 + 56) + 32 * a1;

  return sub_21721E0AC(v11, &a9);
}

uint64_t OUTLINED_FUNCTION_88_2@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2172124CC(a1, (a2 + 16));

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_96_1()
{
  v2 = *v0;

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_97_2(uint64_t a1)
{

  return sub_217284130(v1, a1 + 16);
}

uint64_t OUTLINED_FUNCTION_109_2(_OWORD *a1)
{
  sub_2172124CC(a1, (v1 + 16));

  return sub_217751DE8();
}

double OUTLINED_FUNCTION_112_2@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_117_3(_OWORD *a1, _OWORD *a2)
{
  sub_2172124CC(a1, a2);
  v3 = *v2;

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_120_3()
{
}

_OWORD *OUTLINED_FUNCTION_123_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13)
{

  return sub_2172124CC(&a13, v13);
}

uint64_t OUTLINED_FUNCTION_124_1()
{

  return sub_217752DC8();
}

uint64_t OUTLINED_FUNCTION_125_1(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);

  return sub_21721E0AC(va1, va);
}

_OWORD *OUTLINED_FUNCTION_126_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{

  return sub_2172124CC(&a11, v11);
}

_OWORD *OUTLINED_FUNCTION_129_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{

  return sub_2172124CC(&a11, v11);
}

void *OUTLINED_FUNCTION_135_0(void *a1)
{

  return memcpy(a1, v1, 0x161uLL);
}

uint64_t MusicLibraryRequestPropertyFilter.ComparisonType.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

unint64_t sub_2172A5D54()
{
  result = qword_27CB24C90;
  if (!qword_27CB24C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24C90);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2172A5DBC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2172A5DFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicLibraryRequestPropertyFilter.ComparisonType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t static CloudArtwork.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a1 + 24);
  v118 = *(a1 + 40);
  v111 = a1[6];
  v113 = a1[4];
  v114 = a1[7];
  v109 = a1[9];
  v107 = a1[8];
  v108 = *(a1 + 10);
  v103 = a1[11];
  v116 = a1[12];
  v117 = a1[2];
  v99 = a1[14];
  v97 = a1[13];
  v98 = *(a1 + 15);
  v93 = a1[16];
  v101 = a1[17];
  v89 = a1[19];
  v87 = a1[18];
  v88 = *(a1 + 20);
  v83 = a1[21];
  v91 = a1[22];
  v79 = a1[24];
  v77 = a1[23];
  v78 = *(a1 + 25);
  v72 = a1[26];
  v81 = a1[27];
  v67 = a1[28];
  v68 = *(a1 + 30);
  v63 = a1[31];
  v69 = a1[29];
  v70 = a1[32];
  v61 = a1 + 33;
  memcpy(__dst, a1 + 33, sizeof(__dst));
  memcpy(v133, a1 + 43, sizeof(v133));
  v58 = a1[53];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = *(a2 + 24);
  v11 = a2[4];
  v12 = *(a2 + 40);
  v110 = a2[6];
  v112 = a2[7];
  v106 = a2[9];
  v104 = a2[8];
  v105 = *(a2 + 10);
  v102 = a2[11];
  v115 = a2[12];
  v96 = a2[14];
  v94 = a2[13];
  v95 = *(a2 + 15);
  v92 = a2[16];
  v100 = a2[17];
  v86 = a2[19];
  v84 = a2[18];
  v85 = *(a2 + 20);
  v82 = a2[21];
  v90 = a2[22];
  v73 = a2[23];
  v74 = *(a2 + 25);
  v75 = a2[24];
  v76 = a2[26];
  v80 = a2[27];
  v66 = a2[29];
  v64 = a2[28];
  v65 = *(a2 + 30);
  v62 = a2[31];
  v71 = a2[32];
  v60 = a2 + 33;
  memcpy(v134, a2 + 33, sizeof(v134));
  memcpy(v135, a2 + 43, sizeof(v135));
  v13 = a2[53];
  v14 = v5 == *&v7 && v4 == v8;
  if (!v14 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (v117 == v9)
    {
      v15 = v10;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  if (v118)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (v113 == v11)
    {
      v16 = v12;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  if (v114)
  {
    v18 = v115;
    v17 = v116;
    if (!v112)
    {
      return 0;
    }

    v19 = v111 == v110 && v114 == v112;
    if (!v19 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v18 = v115;
    v17 = v116;
    if (v112)
    {
      return 0;
    }
  }

  if (!v17)
  {
    if (!v18)
    {

      goto LABEL_47;
    }

LABEL_40:
    sub_217751DE8();
    *&__src[0] = v107;
    OUTLINED_FUNCTION_18_10(*&v108);
    OUTLINED_FUNCTION_5_13(v104);
    OUTLINED_FUNCTION_17_7(*&v105);
    *&__src[4] = v102;
    *(&__src[4] + 1) = v18;
LABEL_66:
    v29 = &unk_27CB24C98;
    v30 = &unk_2177800E0;
LABEL_67:
    sub_2171F06D8(__src, v29, v30);
    return 0;
  }

  if (!v18)
  {
    goto LABEL_40;
  }

  if (*&v107 != *&v104 || *&v109 != *&v106 || v108 != v105)
  {
    goto LABEL_38;
  }

  v22 = v103 == v102 && v17 == v18;
  if (!v22 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

LABEL_47:
  if (!v101)
  {
    v23 = v100;
    if (!v100)
    {

      goto LABEL_70;
    }

LABEL_64:
    v27 = v23;
    sub_217751DE8();
    *&__src[0] = v97;
    OUTLINED_FUNCTION_18_10(*&v98);
    OUTLINED_FUNCTION_5_13(v94);
    OUTLINED_FUNCTION_17_7(*&v95);
    v28 = v92;
LABEL_65:
    *&__src[4] = v28;
    *(&__src[4] + 1) = v27;
    goto LABEL_66;
  }

  v23 = v100;
  if (!v100)
  {
    goto LABEL_64;
  }

  if (*&v97 != *&v94 || *&v99 != *&v96 || v98 != v95)
  {
    goto LABEL_38;
  }

  v26 = v93 == v92 && v101 == v100;
  if (!v26 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

LABEL_70:
  if (!v91)
  {
    v32 = v90;
    if (!v90)
    {

      goto LABEL_89;
    }

    goto LABEL_87;
  }

  v32 = v90;
  if (!v90)
  {
LABEL_87:
    v27 = v32;
    sub_217751DE8();
    *&__src[0] = v87;
    OUTLINED_FUNCTION_18_10(*&v88);
    OUTLINED_FUNCTION_5_13(v84);
    OUTLINED_FUNCTION_17_7(*&v85);
    v28 = v82;
    goto LABEL_65;
  }

  if (*&v87 != *&v84 || *&v89 != *&v86 || v88 != v85)
  {
    goto LABEL_38;
  }

  v35 = v83 == v82 && v91 == v90;
  if (!v35 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

LABEL_89:
  if (!v81)
  {
    v36 = v80;
    if (!v80)
    {

      goto LABEL_108;
    }

    goto LABEL_106;
  }

  v36 = v80;
  if (!v80)
  {
LABEL_106:
    v27 = v36;
    sub_217751DE8();
    *&__src[0] = v77;
    OUTLINED_FUNCTION_18_10(*&v78);
    OUTLINED_FUNCTION_5_13(v73);
    OUTLINED_FUNCTION_17_7(*&v74);
    v28 = v76;
    goto LABEL_65;
  }

  if (*&v77 != *&v73 || *&v79 != *&v75 || v78 != v74)
  {
    goto LABEL_38;
  }

  v39 = v72 == v76 && v81 == v80;
  if (!v39 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

LABEL_108:
  if (!v70)
  {
    if (!v71)
    {
      v42 = v13;

      goto LABEL_127;
    }

    goto LABEL_125;
  }

  if (!v71)
  {
LABEL_125:
    v27 = v71;
    sub_217751DE8();
    *&__src[0] = v67;
    OUTLINED_FUNCTION_18_10(*&v68);
    OUTLINED_FUNCTION_5_13(v64);
    OUTLINED_FUNCTION_17_7(*&v65);
    v28 = v62;
    goto LABEL_65;
  }

  if (*&v67 != *&v64 || *&v69 != *&v66 || v68 != v65)
  {
LABEL_38:
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRelease_n();
    return 0;
  }

  v42 = v13;
  v43 = v63 == v62 && v70 == v71;
  if (!v43 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

LABEL_127:
  *v128 = *&__dst[5];
  v129 = *&__dst[7];
  v44 = __dst[4];
  v130 = __dst[9];
  *v125 = *&v134[5];
  v126 = *&v134[7];
  v45 = v134[4];
  v127 = v134[9];
  if (!__dst[4])
  {
    if (!v134[4])
    {
      OUTLINED_FUNCTION_11_18(__dst, v58, v60, v61);
      *&__src[2] = 0;
      *(&__src[4] + 1) = v52;
      OUTLINED_FUNCTION_10_9();
      OUTLINED_FUNCTION_10_9();
      OUTLINED_FUNCTION_27(__src);
      goto LABEL_136;
    }

    OUTLINED_FUNCTION_14_10();
    OUTLINED_FUNCTION_14_10();
    goto LABEL_134;
  }

  OUTLINED_FUNCTION_11_18(__dst, v58, v60, v61);
  *&__src[2] = v44;
  *(&__src[4] + 1) = v46;
  memcpy(v131, __src, sizeof(v131));
  if (!v45)
  {
    memcpy(v121, __src, sizeof(v121));
    OUTLINED_FUNCTION_14_10();
    OUTLINED_FUNCTION_14_10();
    OUTLINED_FUNCTION_14_10();
    sub_2172A967C(v121);
LABEL_134:
    v50 = v61[1];
    __src[0] = *v61;
    __src[1] = v50;
    *(&__src[2] + 8) = *v128;
    *(&__src[3] + 8) = v129;
    *&__src[2] = v44;
    *(&__src[4] + 1) = v130;
    v51 = v60[1];
    *v123 = *v60;
    *&v123[16] = v51;
    *&v123[32] = v45;
    v124 = v127;
    *&v123[56] = v126;
    *&v123[40] = *v125;
    v29 = &unk_27CB24CA8;
    v30 = &unk_217759778;
    goto LABEL_67;
  }

  v47 = v60[1];
  v121[0] = *v60;
  v121[1] = v47;
  *(&v121[2] + 8) = *&v134[5];
  *(&v121[3] + 8) = *&v134[7];
  *(&v121[4] + 1) = v134[9];
  *&v121[2] = v45;
  v48 = static CloudArtwork.TextGradient.== infix(_:_:)(v131, v121);
  memcpy(v119, v121, sizeof(v119));
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_23_12();
  sub_2172A967C(v119);
  memcpy(v120, v131, sizeof(v120));
  sub_2172A967C(v120);
  v49 = v61[1];
  v121[0] = *v61;
  v121[1] = v49;
  *(&v121[2] + 8) = *v128;
  *(&v121[3] + 8) = v129;
  *&v121[2] = v44;
  *(&v121[4] + 1) = v130;
  sub_2171F06D8(v121, &qword_27CB24CA0, &qword_217759770);
  if (!v48)
  {
    return 0;
  }

LABEL_136:
  OUTLINED_FUNCTION_26_9(v119);
  v53 = v133[9];
  v54 = v135[9];
  if (!v133[9])
  {
    if (!v135[9])
    {
      OUTLINED_FUNCTION_26_9(__src);
      *(&__src[4] + 1) = 0;
      OUTLINED_FUNCTION_10_9();
      OUTLINED_FUNCTION_10_9();
      OUTLINED_FUNCTION_27(__src);
      goto LABEL_143;
    }

    goto LABEL_141;
  }

  if (!v135[9])
  {
LABEL_141:
    OUTLINED_FUNCTION_26_9(__src);
    *(&__src[4] + 1) = v53;
    memcpy(v123, v135, sizeof(v123));
    v124 = v54;
    OUTLINED_FUNCTION_10_9();
    OUTLINED_FUNCTION_10_9();
    v29 = &unk_27CB24CB8;
    v30 = &unk_217759788;
    goto LABEL_67;
  }

  memcpy(v120, v135, 0x48uLL);
  v120[9] = v135[9];
  memcpy(__src, v120, sizeof(__src));
  OUTLINED_FUNCTION_26_9(v131);
  v131[9] = v53;
  OUTLINED_FUNCTION_14_10();
  OUTLINED_FUNCTION_14_10();
  sub_2172A95F4(v131, __src);
  v56 = v55;
  OUTLINED_FUNCTION_27(v120);
  memcpy(v121, v119, 0x48uLL);
  *(&v121[4] + 1) = v53;
  OUTLINED_FUNCTION_27(v121);
  if ((v56 & 1) == 0)
  {
    return 0;
  }

LABEL_143:
  if (v59)
  {
    if (!v42)
    {
      return 0;
    }

    sub_217751DE8();
    v57 = sub_2172A9114(v59, v42);

    if ((v57 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v42)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_2172A68A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x746867696568 && a2 == 0xE600000000000000;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 7629921 && a2 == 0xE300000000000000;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x726F6C6F436762 && a2 == 0xE700000000000000;
          if (v9 || (sub_217753058() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6F6C6F4374786574 && a2 == 0xEA00000000003172;
            if (v10 || (sub_217753058() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6F6C6F4374786574 && a2 == 0xEA00000000003272;
              if (v11 || (sub_217753058() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6F6C6F4374786574 && a2 == 0xEA00000000003372;
                if (v12 || (sub_217753058() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6F6C6F4374786574 && a2 == 0xEA00000000003472;
                  if (v13 || (sub_217753058() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6461724774786574 && a2 == 0xEC000000746E6569;
                    if (v14 || (sub_217753058() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x746E656964617267 && a2 == 0xE800000000000000;
                      if (v15 || (sub_217753058() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0x6172546567616D69 && a2 == 0xEB00000000737469)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_217753058();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
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

uint64_t sub_2172A6C2C(unsigned __int8 a1)
{
  sub_2177531E8();
  MEMORY[0x21CEA3550](a1);
  return sub_217753238();
}

uint64_t sub_2172A6C74(char a1)
{
  result = 7107189;
  switch(a1)
  {
    case 1:
      result = 0x6874646977;
      break;
    case 2:
      result = 0x746867696568;
      break;
    case 3:
      result = 7629921;
      break;
    case 4:
      result = 0x726F6C6F436762;
      break;
    case 5:
      result = 0x6F6C6F4374786574;
      break;
    case 6:
      result = 0x6F6C6F4374786574;
      break;
    case 7:
      result = 0x6F6C6F4374786574;
      break;
    case 8:
      result = 0x6F6C6F4374786574;
      break;
    case 9:
      result = 0x6461724774786574;
      break;
    case 10:
      result = 0x746E656964617267;
      break;
    case 11:
      result = 0x6172546567616D69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2172A6DD0()
{
  v1 = *v0;
  sub_2177531E8();
  sub_217230440(v3, v1);
  return sub_217753238();
}

uint64_t sub_2172A6E1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2172A68A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2172A6E44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2172A6C24();
  *a1 = result;
  return result;
}

uint64_t sub_2172A6E6C(uint64_t a1)
{
  v2 = sub_2172A96D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2172A6EA8(uint64_t a1)
{
  v2 = sub_2172A96D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CloudArtwork.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24CC0, &qword_217759790);
  v4 = OUTLINED_FUNCTION_0_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4, v9);
  v11 = &v23 - v10;
  v12 = *v1;
  v13 = v1[1];
  v46 = v1[2];
  v47 = v12;
  v45 = *(v1 + 24);
  v44 = v1[4];
  v43 = *(v1 + 40);
  v14 = v1[6];
  v41 = v1[7];
  v42 = v14;
  v15 = *(v1 + 4);
  v39 = *(v1 + 5);
  v40 = v15;
  v38 = v1[12];
  v16 = *(v1 + 13);
  v36 = *(v1 + 15);
  v37 = v16;
  v35 = v1[17];
  v17 = *(v1 + 9);
  v33 = *(v1 + 10);
  v34 = v17;
  v32 = v1[22];
  v18 = *(v1 + 23);
  v30 = *(v1 + 25);
  v31 = v18;
  v29 = v1[27];
  v19 = *(v1 + 14);
  v27 = *(v1 + 15);
  v28 = v19;
  v26 = v1[32];
  memcpy(__dst, v1 + 33, sizeof(__dst));
  memcpy(__src, v1 + 43, sizeof(__src));
  v25 = v1[53];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2172A96D0();
  sub_2177532F8();
  LOBYTE(v53[0]) = 0;
  v21 = v56;
  sub_217752F48();
  if (v21)
  {
    return (*(v6 + 8))(v11, v3);
  }

  v24 = v6;
  LOBYTE(v53[0]) = 1;
  sub_217752F28();
  LOBYTE(v53[0]) = 2;
  sub_217752F28();
  LOBYTE(v53[0]) = 3;
  sub_217752EF8();
  v53[0] = v40;
  v53[1] = v39;
  *&v53[2] = v38;
  v52[0] = 4;
  sub_2172A9724();
  sub_217751DE8();
  OUTLINED_FUNCTION_4_23();
  sub_217752F38();

  v53[0] = v37;
  v53[1] = v36;
  *&v53[2] = v35;
  v52[0] = 5;
  sub_217751DE8();
  OUTLINED_FUNCTION_4_23();
  sub_217752F38();

  v53[0] = v34;
  v53[1] = v33;
  *&v53[2] = v32;
  v52[0] = 6;
  sub_217751DE8();
  OUTLINED_FUNCTION_4_23();
  sub_217752F38();

  v53[0] = v31;
  v53[1] = v30;
  *&v53[2] = v29;
  v52[0] = 7;
  sub_217751DE8();
  OUTLINED_FUNCTION_4_23();
  sub_217752F38();

  v53[0] = v28;
  v53[1] = v27;
  *&v53[2] = v26;
  v52[0] = 8;
  sub_217751DE8();
  OUTLINED_FUNCTION_4_23();
  sub_217752F38();

  memcpy(v53, __dst, sizeof(v53));
  v52[87] = 9;
  sub_2172A9DC0();
  sub_2172A9778();
  sub_217752F38();
  memcpy(v52, v53, 0x50uLL);
  sub_2171F06D8(v52, &qword_27CB24CA0, &qword_217759770);
  memcpy(v51, __src, sizeof(v51));
  v50[87] = 10;
  sub_2172A9DC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24CD0, &qword_217759798);
  sub_2172A9C14(&qword_27CB24CD8);
  sub_217752F38();
  memcpy(v50, v51, 0x50uLL);
  sub_2171F06D8(v50, &qword_27CB24CB0, &qword_217759780);
  v49 = v25;
  v48 = 11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24CE0, &qword_2177597A0);
  sub_2172A9C8C(&qword_27CB24CE8, sub_2172A9874);
  sub_217752F38();
  return (*(v24 + 8))(v11, 0);
}

void CloudArtwork.hash(into:)(const void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = *(v1 + 24);
  v8 = v2[4];
  v9 = *(v2 + 40);
  v10 = v2[6];
  v11 = v2[7];
  v12 = *(v2 + 5);
  v47 = *(v2 + 4);
  v48 = v12;
  v49 = v2[12];
  v13 = *(v2 + 13);
  v14 = *(v2 + 15);
  v46 = v2[17];
  v44 = v13;
  v45 = v14;
  v15 = *(v2 + 10);
  v41 = *(v2 + 9);
  v42 = v15;
  v43 = v2[22];
  v16 = *(v2 + 25);
  v38 = *(v2 + 23);
  v39 = v16;
  v40 = v2[27];
  v17 = *(v2 + 14);
  v18 = *(v2 + 15);
  v37 = v2[32];
  v35 = v17;
  v36 = v18;
  v19 = v2[33];
  v20 = v2[34];
  v21 = v2[35];
  v22 = v2[37];
  v23 = v2[38];
  v24 = v2[39];
  v25 = v2[40];
  v30 = v2[36];
  v31 = v2[42];
  v26 = v2[52];
  v32 = v2[41];
  v33 = v2[53];
  sub_217751FF8();
  if (v7 == 1)
  {
    OUTLINED_FUNCTION_25();
    if (!v9)
    {
      goto LABEL_3;
    }

LABEL_6:
    OUTLINED_FUNCTION_25();
    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_24();
  MEMORY[0x21CEA3550](v6);
  if (v9)
  {
    goto LABEL_6;
  }

LABEL_3:
  OUTLINED_FUNCTION_24();
  MEMORY[0x21CEA3550](v8);
  if (v11)
  {
LABEL_4:
    OUTLINED_FUNCTION_24();
    sub_217751FF8();
    goto LABEL_8;
  }

LABEL_7:
  OUTLINED_FUNCTION_25();
LABEL_8:
  sub_21726519C();
  sub_21726519C();
  sub_21726519C();
  sub_21726519C();
  sub_21726519C();
  if (v22)
  {
    OUTLINED_FUNCTION_24();
    Artwork.Color.hash(into:)();
    __dst[0] = v23;
    __dst[1] = v24;
    __dst[2] = v25;
    __dst[3] = v32;
    __dst[4] = v31;
    Artwork.Color.hash(into:)();
    if (v26)
    {
LABEL_10:
      memcpy(__dst, v2 + 43, 0x48uLL);
      OUTLINED_FUNCTION_24();
      __dst[9] = v26;
      CloudArtwork.Gradient.hash(into:)();
      sub_217265A08(a1, v26);
      goto LABEL_13;
    }
  }

  else
  {
    OUTLINED_FUNCTION_25();
    if (v26)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_25();
LABEL_13:
  if (v33)
  {
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_25_9();

    sub_2172A9A1C(v27, v28);
  }

  else
  {
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_25_9();
  }
}

uint64_t CloudArtwork.hashValue.getter()
{
  sub_2177531E8();
  CloudArtwork.hash(into:)(v1);
  return sub_217753238();
}

uint64_t CloudArtwork.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24CF8, &qword_2177597A8);
  v5 = OUTLINED_FUNCTION_0_0(v53);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5, v10);
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_2172A96D0();
  sub_2177532C8();
  if (!v2)
  {
    v45 = a2;
    LOBYTE(v56) = 0;
    v14 = sub_217752E68();
    v52 = v15;
    OUTLINED_FUNCTION_8_13(1);
    sub_217752E48();
    v103 = v16 & 1;
    OUTLINED_FUNCTION_8_13(2);
    v44 = sub_217752E48();
    v101 = v17 & 1;
    OUTLINED_FUNCTION_8_13(3);
    v43 = sub_217752E18();
    v51 = v18;
    sub_2172A9B6C();
    sub_217752E58();
    v41 = v57;
    v42 = v56;
    v40 = v58;
    v50 = v60;
    OUTLINED_FUNCTION_1_12();
    sub_217752E58();
    v38 = v59;
    v39 = v56;
    v36 = v58;
    v37 = v57;
    v49 = v60;
    OUTLINED_FUNCTION_1_12();
    sub_217752E58();
    v35 = v59;
    v33 = v58;
    v34 = v57;
    v31 = v56;
    v32 = v59;
    v48 = v60;
    OUTLINED_FUNCTION_1_12();
    sub_217752E58();
    v29 = v57;
    v30 = v56;
    v27 = v59;
    v28 = v58;
    v47 = v60;
    LOBYTE(v55[0]) = 8;
    OUTLINED_FUNCTION_1_12();
    sub_217752E58();
    v25 = v57;
    v26 = v56;
    v23 = v59;
    v24 = v58;
    v46 = v60;
    v96[87] = 9;
    sub_2172A9BC0();
    sub_217752E58();
    v104 = 0;
    memcpy(__src, v97, sizeof(__src));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24CD0, &qword_217759798);
    v95 = 10;
    sub_2172A9C14(&qword_280BE42E0);
    OUTLINED_FUNCTION_22_9();
    v104 = 0;
    memcpy(v98, v96, sizeof(v98));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24CE0, &qword_2177597A0);
    v93 = 11;
    sub_2172A9C8C(&qword_280BE2308, sub_2172A9D04);
    OUTLINED_FUNCTION_22_9();
    v104 = 0;
    v19 = OUTLINED_FUNCTION_9_11();
    v20(v19);
    v55[0] = v14;
    v55[1] = v52;
    v55[2] = 0;
    v21 = v103;
    LOBYTE(v55[3]) = v103;
    v55[4] = v44;
    v54 = v101;
    LOBYTE(v55[5]) = v101;
    v55[6] = v43;
    v55[7] = v51;
    v55[8] = v42;
    v55[9] = v41;
    v55[10] = v40;
    v55[11] = v38;
    v55[12] = v50;
    v55[13] = v39;
    v55[14] = v37;
    v55[15] = v36;
    v55[16] = v35;
    v55[17] = v49;
    v55[18] = v31;
    v55[19] = v34;
    v55[20] = v33;
    v55[21] = v32;
    v55[22] = v48;
    v55[23] = v30;
    v55[24] = v29;
    v55[25] = v28;
    v55[26] = v27;
    v55[27] = v47;
    v55[28] = v26;
    v55[29] = v25;
    v55[30] = v24;
    v55[31] = v23;
    v55[32] = v46;
    memcpy(&v55[33], __src, 0x50uLL);
    memcpy(&v55[43], v98, 0x50uLL);
    v22 = v94;
    v55[53] = v94;
    memcpy(v45, v55, 0x1B0uLL);
    sub_2172A9D58(v55, &v56);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v56 = v14;
    v57 = v52;
    v58 = 0;
    LOBYTE(v59) = v21;
    *(&v59 + 1) = *v102;
    HIDWORD(v59) = *&v102[3];
    v60 = v44;
    v61 = v54;
    *v62 = *v100;
    *&v62[3] = *&v100[3];
    v63 = v43;
    v64 = v51;
    v65 = v42;
    v66 = v41;
    v67 = v40;
    v68 = v38;
    v69 = v50;
    v70 = v39;
    v71 = v37;
    v72 = v36;
    v73 = v35;
    v74 = v49;
    v75 = v31;
    v76 = v34;
    v77 = v33;
    v78 = v32;
    v79 = v48;
    v80 = v30;
    v81 = v29;
    v82 = v28;
    v83 = v27;
    v84 = v47;
    v85 = v26;
    v86 = v25;
    v87 = v24;
    v88 = v23;
    v89 = v46;
    memcpy(v90, __src, sizeof(v90));
    memcpy(v91, v98, sizeof(v91));
    v92 = v22;
    return sub_2172A9D90(&v56);
  }

  v104 = v2;
  OUTLINED_FUNCTION_24_11();
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  if (v2)
  {

    if (v11)
    {
      goto LABEL_10;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  if (!v11)
  {
    goto LABEL_5;
  }

LABEL_10:

  if ((v7 & 1) == 0)
  {
LABEL_11:
    if (v12)
    {
    }

    return result;
  }

LABEL_6:

  if (v12)
  {
  }

  return result;
}

uint64_t sub_2172A80E8()
{
  sub_2177531E8();
  CloudArtwork.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_2172A8160@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = nullsub_1(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_52_5@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return sub_217751DE8();
}

uint64_t sub_2172A8278()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_2172A8124();
}

double CloudAttribute<A>.convertToArtwork()@<D0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v141 = (&v120 - v6);
  v177 = sub_2177516D8();
  v7 = OUTLINED_FUNCTION_0_0(v177);
  v122 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7, v11);
  v121 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v1[1];
  v164 = *v1;
  v147 = v13;
  v14 = v1[2];
  v166 = *(v1 + 24);
  v144 = v1[4];
  v145 = v14;
  v163 = *(v1 + 40);
  v15 = v1[7];
  v143 = v1[6];
  v16 = v1[8];
  v153 = v1[9];
  v154 = v16;
  v17 = *(v1 + 5);
  v19 = v1[12];
  v18 = v1[13];
  v20 = v1[14];
  v161 = *(v1 + 15);
  v162 = v17;
  v21 = v1[17];
  v165 = v1[18];
  v22 = v1[19];
  v23 = *(v1 + 10);
  v24 = v1[23];
  v176 = v1[22];
  v149 = v24;
  v150 = v22;
  v25 = v1[24];
  v159 = *(v1 + 25);
  v160 = v23;
  v26 = v1[28];
  v174 = v1[27];
  v156 = v26;
  v157 = v25;
  v155 = v1[29];
  v158 = *(v1 + 15);
  v27 = v1[32];
  memcpy(v180, v1 + 33, sizeof(v180));
  memcpy(__dst, v1 + 43, sizeof(__dst));
  v29 = v1[54];
  v132 = v1[53];
  v167 = v29;
  v30 = v180[4];
  v175 = v27;
  v169 = v19;
  v170 = v180[4];
  v171 = v21;
  v142 = v15;
  v151 = v18;
  v152 = v20;
  if (v180[4])
  {
    v31 = v180[0];
    *&v28 = v180[1];
    v173 = v28;
    *&v28 = v180[2];
    v148 = v28;
    *&v28 = v180[5];
    v172 = v28;
    *&v28 = v180[6];
    v146 = v28;
    v32 = v180[7];
    v139 = v180[8];
    v140 = v180[3];
    v168 = v180[9];
    v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D00, &qword_2177597B0);
    v33 = OUTLINED_FUNCTION_16_7();
    v136 = xmmword_217758490;
    v34 = OUTLINED_FUNCTION_12_8(v33, xmmword_217758490);
    *&qword_217758020[0] = v31;
    v35 = v148;
    v34[2].n128_u64[1] = v173;
    v34[3].n128_u64[0] = v35;
    v34[3].n128_u64[1] = 0x3FF0000000000000;
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_2172A9DC0();
    v36 = qword_280BE76A0;
    sub_217751DE8();
    if (v36 != -1)
    {
      OUTLINED_FUNCTION_0_16();
    }

    v37 = &qword_280C02000;
    v38 = qword_280C023C0;
    if (qword_280C023C0)
    {
      v138 = CGColorCreate(qword_280C023C0, qword_217758020);
    }

    else
    {

      v138 = 0;
    }

    v30 = v168;

    v40 = OUTLINED_FUNCTION_16_7();
    v41 = OUTLINED_FUNCTION_12_8(v40, v136);
    *&qword_217758040[0] = v172;
    v41[2].n128_u64[1] = v146;
    v41[3].n128_u64[0] = v32;
    v41[3].n128_u64[1] = 0x3FF0000000000000;
    sub_217751DE8();
    if (v38)
    {
      v137 = CGColorCreate(v38, qword_217758040);
    }

    else
    {

      v137 = 0;
    }

    v19 = v169;

    sub_217751DE8();
    sub_217751DE8();
    sub_2171F06D8(v180, &qword_27CB24CA0, &qword_217759770);
    v135 = v32;
    v136.n128_u64[0] = v31;
    *&v42 = v172;
    *(&v42 + 1) = v146;
    v172 = v42;
    *&v42 = v173;
    *(&v42 + 1) = v148;
    v173 = v42;
    v39 = v177;
  }

  else
  {
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    v137 = 0;
    v138 = 0;
    v135 = 0;
    v136.n128_u64[0] = 0;
    v139 = 0;
    v140 = 0;
    v172 = 0u;
    v173 = 0u;
    v39 = v177;
    v37 = &qword_280C02000;
  }

  *&v148 = *(&__dst[4] + 1);
  if (*(&__dst[4] + 1))
  {
    v43 = *&__dst[2];
    v44 = __dst[3];
    v130 = *(&__dst[2] + 1);
    v131 = *(&__dst[3] + 1);
    v45 = LOBYTE(__dst[4]);
    v133 = *(&__dst[0] + 1);
    v134 = *&__dst[0];
    v146 = __dst[1];
    if (*&__dst[2])
    {
      LODWORD(v168) = LOBYTE(__dst[4]);
      v46 = *&__dst[0];
      v47 = *&__dst[2];
      v48 = *(&__dst[0] + 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D00, &qword_2177597B0);
      v49 = OUTLINED_FUNCTION_16_7();
      v50 = OUTLINED_FUNCTION_12_8(v49, xmmword_217758490);
      *(v45 + 32) = v46;
      v51 = (v45 + 32);
      v50[2].n128_u64[1] = v48;
      v43 = v47;
      OUTLINED_FUNCTION_3_22(v50, *&v146);
      sub_2172A9DC0();
      v52 = qword_280BE76A0;
      sub_217751DE8();
      if (v52 != -1)
      {
        OUTLINED_FUNCTION_0_16();
      }

      v37 = &qword_280C02000;
      if (qword_280C023C0)
      {
        v129 = CGColorCreate(qword_280C023C0, v51);
      }

      else
      {

        v129 = 0;
      }

      LOBYTE(v45) = v168;

      v127 = 0;
      v39 = v177;
    }

    else if (__dst[3])
    {
      memcpy(v179, __dst, sizeof(v179));
      sub_2172A9DC0();
      v129 = 0;
      v53 = 256;
      if ((v45 & 1) == 0)
      {
        v53 = 0;
      }

      v127 = v53;
    }

    else
    {
      memcpy(v179, __dst, sizeof(v179));
      sub_2172A9DC0();
      v127 = 0;
      v129 = 0;
    }

    v179[0] = v44 & 1;
    v178 = v45 & 1;
    v128 = v44 & 1;
    v126 = v45 & 1;
    sub_217751DE8();
    sub_217751DE8();
    sub_2171F06D8(__dst, &qword_27CB24CB0, &qword_217759780);
    v19 = v169;
  }

  else
  {
    v129 = 0;
    v130 = 0;
    v131 = 0;
    v133 = 0;
    v134 = 0;
    v43 = 0;
    v126 = 0;
    v127 = 0;
    v128 = 0;
    v146 = 0u;
  }

  if (v132)
  {
    v125 = sub_2174FC644(0x656C746954736168, 0xE800000000000000);
  }

  else
  {
    v125 = 0;
  }

  v168 = v30;
  v179[0] = v166;
  v178 = v163;
  v132 = v43;
  if (v19)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D00, &qword_2177597B0);
    v54 = OUTLINED_FUNCTION_16_7();
    v55 = v153;
    *(v54 + 32) = v154;
    v56 = (v54 + 32);
    *(v54 + 16) = xmmword_217758490;
    *(v54 + 40) = v55;
    OUTLINED_FUNCTION_3_22(v54, *&v162);
    v57 = qword_280BE76A0;
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    v58 = v147;
    sub_217751DE8();
    if (v57 != -1)
    {
      OUTLINED_FUNCTION_0_16();
    }

    v37 = &qword_280C02000;
    v59 = v141;
    if (qword_280C023C0)
    {
      v124 = CGColorCreate(qword_280C023C0, v56);
    }

    else
    {

      v124 = 0;
    }

    v62 = v174;

    v60 = v171;
    v39 = v177;
  }

  else
  {
    sub_217751DE8();
    sub_217751DE8();
    v58 = v147;
    sub_217751DE8();
    v60 = v171;
    sub_217751DE8();
    v61 = v174;
    sub_217751DE8();
    v62 = v61;
    sub_217751DE8();
    v124 = 0;
    v59 = v141;
  }

  v63 = &unk_217758000;
  if (v60)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D00, &qword_2177597B0);
    v64 = OUTLINED_FUNCTION_16_7();
    v65 = OUTLINED_FUNCTION_12_8(v64, xmmword_217758490);
    *&qword_217758020[0] = v151;
    v65[2].n128_u64[1] = v152;
    OUTLINED_FUNCTION_3_22(v65, *&v161);
    if (qword_280BE76A0 != -1)
    {
      OUTLINED_FUNCTION_0_16();
    }

    v66 = v37[120];
    if (v66)
    {
      v141 = CGColorCreate(v66, qword_217758020);
    }

    else
    {

      v141 = 0;
    }

    v63 = &unk_217758000;

    v39 = v177;
  }

  else
  {
    v141 = 0;
  }

  v67 = v165;
  v68 = &qword_280BE7000;
  if (v176)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D00, &qword_2177597B0);
    v69 = OUTLINED_FUNCTION_16_7();
    v70 = OUTLINED_FUNCTION_12_8(v69, xmmword_217758490);
    *&qword_217758020[0] = v67;
    v70[2].n128_u64[1] = v150;
    OUTLINED_FUNCTION_3_22(v70, *&v160);
    if (*(v71 + 1696) != -1)
    {
      OUTLINED_FUNCTION_0_16();
    }

    v72 = v37[120];
    if (v72)
    {
      v73 = CGColorCreate(v72, qword_217758020);
    }

    else
    {

      v73 = 0;
    }

    v63 = &unk_217758000;

    v39 = v177;
    v68 = &qword_280BE7000;
    if (v62)
    {
      goto LABEL_55;
    }

LABEL_52:
    v123 = 0;
    goto LABEL_61;
  }

  v73 = 0;
  if (!v62)
  {
    goto LABEL_52;
  }

LABEL_55:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D00, &qword_2177597B0);
  v74 = OUTLINED_FUNCTION_16_7();
  v75 = OUTLINED_FUNCTION_12_8(v74, xmmword_217758490);
  *&qword_217758020[0] = v149;
  v63 = qword_217758020;
  v75[2].n128_u64[1] = v157;
  OUTLINED_FUNCTION_3_22(v75, *&v159);
  if (v68[212] != -1)
  {
    OUTLINED_FUNCTION_0_16();
  }

  v76 = v37[120];
  if (v76)
  {
    v123 = CGColorCreate(v76, qword_217758020);
  }

  else
  {

    v123 = 0;
  }

  v39 = v177;
LABEL_61:
  if (v175)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D00, &qword_2177597B0);
    v77 = OUTLINED_FUNCTION_16_7();
    v78 = OUTLINED_FUNCTION_12_8(v77, xmmword_217758490);
    v79 = v155;
    v63[4] = v156;
    v80 = (v63 + 4);
    v78[2].n128_u64[1] = v79;
    OUTLINED_FUNCTION_3_22(v78, *&v158);
    if (v68[212] != -1)
    {
      OUTLINED_FUNCTION_0_16();
    }

    v81 = v37[120];
    if (v81)
    {
      v82 = CGColorCreate(v81, v80);
    }

    else
    {

      v82 = 0;
    }

    v39 = v177;
  }

  else
  {
    v82 = 0;
  }

  sub_2177516C8();
  if (__swift_getEnumTagSinglePayload(v59, 1, v39) == 1)
  {
    sub_2171F06D8(v59, &unk_27CB277C0, &qword_217758DC0);
    v83 = 0;
    v84 = v151;
    v85 = v152;
    v86 = v132;
    v87 = v176;
    v88 = v130;
  }

  else
  {
    v89 = v59;
    v90 = v121;
    v91 = v122;
    (*(v122 + 32))(v121, v89, v39);
    type metadata accessor for ArtworkLoadingProtocol();
    v92 = v73;
    v93 = v39;
    v83 = sub_217576A44();
    v94 = v90;
    v95 = v93;
    v73 = v92;
    v88 = v130;
    v87 = v176;
    v58 = v147;
    (*(v91 + 8))(v94, v95);
    v84 = v151;
    v85 = v152;
    v86 = v132;
  }

  v96 = v165;
  *a1 = v164;
  *(a1 + 8) = v58;
  v97 = v163 == 0;
  v98 = v127 | v126;
  *(a1 + 32) = v143;
  *(a1 + 40) = v142;
  *(a1 + 48) = v124;
  *(a1 + 56) = v141;
  *(a1 + 64) = v73;
  *(a1 + 72) = v123;
  *(a1 + 80) = v82;
  *(a1 + 120) = v154;
  *(a1 + 128) = v153;
  *(a1 + 152) = v169;
  *(a1 + 160) = v84;
  *(a1 + 168) = v85;
  *(a1 + 192) = v171;
  *(a1 + 200) = v96;
  v99 = v149;
  *(a1 + 208) = v150;
  *(a1 + 232) = v87;
  *(a1 + 240) = v99;
  v101 = v144;
  v100 = v145;
  if (v97)
  {
    v102 = v144;
  }

  else
  {
    v102 = 0;
  }

  if (v166)
  {
    v103 = 0;
  }

  else
  {
    v103 = v145;
  }

  v104 = v125 & 1;
  *(a1 + 16) = v103;
  *(a1 + 24) = v102;
  v105 = v179[0];
  v106 = v178;
  *(a1 + 88) = v100;
  *(a1 + 96) = v105;
  *(a1 + 104) = v101;
  *(a1 + 112) = v106;
  v107 = v161;
  *(a1 + 136) = v162;
  *(a1 + 176) = v107;
  v108 = v159;
  *(a1 + 216) = v160;
  *(a1 + 248) = v157;
  *(a1 + 256) = v108;
  v109 = v156;
  *(a1 + 272) = v174;
  *(a1 + 280) = v109;
  *(a1 + 288) = v155;
  *(a1 + 296) = v158;
  v110 = v138;
  *(a1 + 312) = v175;
  *(a1 + 320) = v110;
  v111 = v136.n128_u64[0];
  *(a1 + 328) = v137;
  *(a1 + 336) = v111;
  v112 = v172;
  *(a1 + 344) = v173;
  v113 = v170;
  *(a1 + 360) = v140;
  *(a1 + 368) = v113;
  *(a1 + 376) = v112;
  v114 = v139;
  *(a1 + 392) = v135;
  *(a1 + 400) = v114;
  v115 = v129;
  *(a1 + 408) = v168;
  *(a1 + 416) = v115;
  v116 = v128;
  *(a1 + 424) = v88;
  *(a1 + 432) = v116;
  *(a1 + 440) = v131;
  *(a1 + 448) = v98;
  v117 = v133;
  *(a1 + 456) = v134;
  *(a1 + 464) = v117;
  *(a1 + 472) = v146;
  v118 = v148;
  *(a1 + 488) = v86;
  *(a1 + 496) = v118;
  *(a1 + 504) = v104;
  *(a1 + 512) = v167;
  *(a1 + 520) = v83;
  result = 0.0;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0;
  return result;
}

uint64_t Artwork.convertToCloudArtworkAttribute()@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v14 = *v1;
  v29 = v1[4];
  v4 = v1[5];
  v5 = *(v1 + 96);
  v11 = v1[13];
  v12 = v1[11];
  v10 = *(v1 + 112);
  v13 = *(v1 + 15);
  v24 = *(v1 + 17);
  v22 = *(v1 + 21);
  v28 = *(v1 + 27);
  v17 = *(v1 + 25);
  v26 = *(v1 + 35);
  v27 = *(v1 + 31);
  v18 = v1[38];
  v19 = v1[37];
  v6 = *(v1 + 504);
  v25 = v1[64];
  v23 = *(v1 + 19);
  v21 = *(v1 + 23);
  v15 = *(v1 + 33);
  v16 = *(v1 + 29);
  v20 = v1[39];
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  if (v6 == 1)
  {
    v7 = sub_217261934(&unk_28295E0D8);
  }

  else
  {
    v7 = 0;
  }

  *a1 = v14;
  *(a1 + 8) = v3;
  *(a1 + 16) = v12;
  *(a1 + 24) = v5;
  *(a1 + 32) = v11;
  *(a1 + 40) = v10;
  *&v8 = v29;
  *(&v8 + 1) = v4;
  *(a1 + 48) = v8;
  *(a1 + 64) = v13;
  *(a1 + 80) = v24;
  *(a1 + 96) = v23;
  *(a1 + 112) = v22;
  *(a1 + 128) = v21;
  *(a1 + 144) = v17;
  *(a1 + 160) = v28;
  *(a1 + 176) = v16;
  *(a1 + 192) = v27;
  *(a1 + 208) = v15;
  *(a1 + 224) = v26;
  *(a1 + 240) = v19;
  *(a1 + 248) = v18;
  *(a1 + 256) = v20;
  bzero((a1 + 264), 0xA0uLL);
  *(a1 + 424) = v7;
  *(a1 + 432) = v25;

  return sub_217751DE8();
}

uint64_t sub_2172A9114(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v22 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      v15 = *(a2 + 40);
      sub_2177531E8();
      sub_217751DE8();
      sub_217751FF8();
      v16 = sub_217753238();
      v17 = ~(-1 << *(a2 + 32));
      do
      {
        v18 = v16 & v17;
        if (((*(a2 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {

          return 0;
        }

        v19 = (*(a2 + 48) + 16 * v18);
        if (*v19 == v14 && v19[1] == v13)
        {
          break;
        }

        v21 = sub_217753058();
        v16 = v18 + 1;
      }

      while ((v21 & 1) == 0);

      result = v22;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_2172A92BC()
{
  OUTLINED_FUNCTION_169();
  if (static CloudArtwork.== infix(_:_:)(v2, v3))
  {
    v4 = *(v1 + 432);
    v5 = *(v0 + 432);

    sub_217261FB0(v4, v5);
  }
}

void sub_2172A930C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    if (a5)
    {
      return;
    }

    goto LABEL_8;
  }

  if (a5)
  {
    v8 = a1 == a4 && a2 == a5;
    if (v8 || (sub_217753058() & 1) != 0)
    {
LABEL_8:

      sub_217261FB0(a3, a6);
    }
  }
}

void sub_2172A9384()
{
  OUTLINED_FUNCTION_169();
  memcpy(__dst, v1, sizeof(__dst));
  memcpy(v4, v0, sizeof(v4));
  if (static CloudSpatialTimingInformation.== infix(_:_:)(__dst, v4))
  {
    v2 = v1[21];
    v3 = v0[21];

    sub_217261FB0(v2, v3);
  }
}

void sub_2172A9414(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if ((a6 & 1) == 0)
    {
      return;
    }
  }

  else if ((a6 & 1) != 0 || *&a1 != *&a5)
  {
    return;
  }

  if (a3)
  {
    if (!a7 || (sub_217271798(a3, a7) & 1) == 0)
    {
      return;
    }
  }

  else if (a7)
  {
    return;
  }

  sub_217261FB0(a4, a8);
}

void sub_2172A949C()
{
  OUTLINED_FUNCTION_169();
  v3 = v2[1];
  v4 = v2[2];
  v5 = v2[3];
  v6 = v0[1];
  v7 = v0[2];
  v8 = v0[3];
  if (!v3)
  {
    if (v6)
    {
      return;
    }

LABEL_10:
    if (v5)
    {
      if (!v8)
      {
        return;
      }

      v10 = v4 == v7 && v5 == v8;
      if (!v10 && (sub_217753058() & 1) == 0)
      {
        return;
      }
    }

    else if (v8)
    {
      return;
    }

    v11 = v1[4];
    v12 = v0[4];

    sub_217261FB0(v11, v12);
    return;
  }

  if (v6)
  {
    v9 = *v1 == *v0 && v3 == v6;
    if (v9 || (sub_217753058() & 1) != 0)
    {
      goto LABEL_10;
    }
  }
}

void sub_2172A9570()
{
  OUTLINED_FUNCTION_169();
  memcpy(__dst, v1, sizeof(__dst));
  memcpy(v4, v0, sizeof(v4));
  if (static CloudEditorialNotes.== infix(_:_:)(__dst, v4))
  {
    v2 = v1[8];
    v3 = v0[8];

    sub_217261FB0(v2, v3);
  }
}

void sub_2172A95F4(uint64_t *__src, void *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v6, a2, sizeof(v6));
  if (static CloudArtwork.Gradient.== infix(_:_:)(__dst, v6))
  {
    v4 = __src[9];
    v5 = a2[9];

    sub_217261FB0(v4, v5);
  }
}

unint64_t sub_2172A96D0()
{
  result = qword_280BE5118;
  if (!qword_280BE5118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5118);
  }

  return result;
}

unint64_t sub_2172A9724()
{
  result = qword_280BE2790;
  if (!qword_280BE2790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2790);
  }

  return result;
}

unint64_t sub_2172A9778()
{
  result = qword_27CB24CC8;
  if (!qword_27CB24CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24CC8);
  }

  return result;
}

unint64_t sub_2172A97CC()
{
  result = qword_280BE50C0;
  if (!qword_280BE50C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE50C0);
  }

  return result;
}

unint64_t sub_2172A9820()
{
  result = qword_280BE50C8;
  if (!qword_280BE50C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE50C8);
  }

  return result;
}

unint64_t sub_2172A9874()
{
  result = qword_27CB24CF0;
  if (!qword_27CB24CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24CF0);
  }

  return result;
}

uint64_t sub_2172A98C8(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_217753238();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;
  result = sub_217751DE8();
  v8 = 0;
  for (i = 0; v5; v8 ^= v15)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(a2 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    sub_2177531E8();
    sub_217751DE8();
    sub_217751FF8();
    v15 = sub_217753238();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x21CEA3550](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2172A9A1C(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_217753238();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;
  result = sub_217751DE8();
  v8 = 0;
  for (i = 0; v5; v8 ^= result)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(a2 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    sub_2177531E8();
    sub_217751DE8();
    sub_217751FF8();

    result = sub_217753238();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x21CEA3550](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2172A9B6C()
{
  result = qword_280BE2788;
  if (!qword_280BE2788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2788);
  }

  return result;
}

unint64_t sub_2172A9BC0()
{
  result = qword_280BE50E8;
  if (!qword_280BE50E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE50E8);
  }

  return result;
}

uint64_t sub_2172A9C14(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24CD0, &qword_217759798);
    sub_2172A97CC();
    sub_2172A9820();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2172A9C8C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24CE0, &qword_2177597A0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2172A9D04()
{
  result = qword_280BE50F0;
  if (!qword_280BE50F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE50F0);
  }

  return result;
}

uint64_t sub_2172A9DC0()
{
  OUTLINED_FUNCTION_169();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  (*(*(v4 - 8) + 16))(v0, v1, v4);
  return v0;
}

unint64_t sub_2172A9E28()
{
  result = qword_27CB24D08;
  if (!qword_27CB24D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24D08);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8MusicKit12CloudArtworkV12TextGradientVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_8MusicKit14CloudAttributeVyAA0C7ArtworkV8GradientVGSg(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2172A9EB4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 432))
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

uint64_t sub_2172A9EF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 424) = 0;
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
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 432) = 1;
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

    *(result + 432) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2172A9FC0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2172AA000(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for CloudArtwork.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CloudArtwork.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2172AA1B4()
{
  result = qword_27CB24D10;
  if (!qword_27CB24D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24D10);
  }

  return result;
}

unint64_t sub_2172AA20C()
{
  result = qword_280BE5100;
  if (!qword_280BE5100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5100);
  }

  return result;
}

unint64_t sub_2172AA264()
{
  result = qword_280BE5108;
  if (!qword_280BE5108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5108);
  }

  return result;
}

unint64_t sub_2172AA2BC()
{
  result = qword_280BE5110;
  if (!qword_280BE5110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5110);
  }

  return result;
}

unint64_t sub_2172AA310()
{
  result = qword_280BE50F8;
  if (!qword_280BE50F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE50F8);
  }

  return result;
}

__n128 OUTLINED_FUNCTION_11_18@<Q0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v5 = a4[1];
  *&STACK[0x2D0] = *a4;
  *&STACK[0x2E0] = v5;
  *(v4 + 120) = *(a1 + 40);
  result = *(a1 + 56);
  *(v4 + 136) = result;
  v7 = *(a1 + 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_10()
{

  return sub_2172A9DC0();
}

uint64_t OUTLINED_FUNCTION_22_9()
{
  v3 = *(v0 + 264);
  v4 = *(v1 - 72);

  return sub_217752E58();
}

void *OUTLINED_FUNCTION_26_9(void *a1)
{

  return memcpy(a1, &STACK[0x470], 0x48uLL);
}

uint64_t _MusicLibraryMapping.Request.mappedItems(scope:)(_BYTE *a1, void *a2)
{
  *(v3 + 232) = a2[2];
  *(v3 + 240) = a2[3];
  *(v3 + 248) = a2[4];
  v5 = type metadata accessor for _MusicLibraryMapping.MappedItem();
  *(v3 + 256) = v5;
  v6 = *(v5 - 8);
  *(v3 + 264) = v6;
  *(v3 + 272) = *(v6 + 64);
  *(v3 + 280) = swift_task_alloc();
  *(v3 + 288) = swift_task_alloc();
  v7 = swift_task_alloc();
  *(v3 + 448) = *a1;
  v8 = *v2;
  *(v3 + 296) = v7;
  *(v3 + 304) = v8;

  return MEMORY[0x2822009F8](sub_2172AA520, 0, 0);
}

uint64_t sub_2172AA520()
{
  v35 = v0;
  v1 = dynamic_cast_existential_1_conditional(v0[29]);
  v0[39] = v1;
  v0[40] = v2;
  v3 = v0[29];
  if (!v1)
  {
    sub_217752AA8();

    strcpy(v34, "The item type ");
    HIBYTE(v34[1]) = -18;
    v24 = sub_217753348();
    MEMORY[0x21CEA23B0](v24);

    MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177AB270);
    return sub_217752D08();
  }

  v4 = dynamic_cast_existential_1_conditional(v0[29]);
  v0[41] = v4;
  v0[42] = v5;
  if (!v4)
  {
    v25 = v0[29];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0x6D65746920656854, 0xEE00206570797420);
    v26 = sub_217753348();
    MEMORY[0x21CEA23B0](v26);

    MEMORY[0x21CEA23B0](0xD00000000000002DLL, 0x80000002177AAFA0);
    return sub_217752D08();
  }

  v6 = v0[38];
  v8 = v0[30];
  v7 = v0[31];
  v9 = v0[29];
  v10 = [objc_allocWithZone(MusicKit_SoftLinking_MPMutableSectionedCollection) init];
  v0[43] = v10;
  v11 = [objc_allocWithZone(MusicKit_SoftLinking_MPMutableSectionedCollection) init];
  v0[44] = v11;
  v12 = sub_217751F18();
  [v10 appendSection_];

  v13 = sub_217751F18();
  [v11 appendSection_];

  type metadata accessor for _MusicLibraryMapping.Item();
  sub_217751DE8();
  v14 = sub_2177522A8();
  v34[0] = v14;
  v15 = v6 + 32;
  while (1)
  {
    v16 = v0[38];
    if (v14 == sub_217752388())
    {
      break;
    }

    v17 = v0[38];
    v18 = sub_217752358();
    sub_2177522D8();
    if (v18)
    {
      v19 = *(v15 + 8 * v14);
    }

    else
    {
      v23 = v0[38];
      v19 = sub_217752AC8();
    }

    v20 = v0[38];
    v21 = sub_2177523E8();
    v22 = MEMORY[0x21CEA3980](v21);
    sub_2172AB3AC(v19, v11, v10);
    objc_autoreleasePoolPop(v22);

    v14 = v34[0];
  }

  v28 = v0[38];
  v29 = v0[32];

  sub_2172AC53C();
  v30 = [objc_opt_self() defaultUnpersonalizedRequest];
  v31 = sub_2172AB42C(v30, v10, v11);
  v0[45] = v31;
  v32 = sub_217752338();
  v0[46] = v32;
  v0[24] = v32;
  v0[2] = v0;
  v0[7] = v0 + 25;
  v0[3] = sub_2172AA9E0;
  v33 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D18, &qword_217759BA0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2172AB494;
  v0[13] = &block_descriptor_0;
  v0[14] = v33;
  [v31 performWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2172AA9E0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 376) = v2;
  if (v2)
  {
    v3 = sub_2172AB230;
  }

  else
  {
    v3 = sub_2172AAAF0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2172AAAF0()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 200);
  *(v0 + 384) = v2;
  v3 = *(v0 + 232);
  v45 = *(v0 + 328);
  v43 = v3;
  v44 = *(v0 + 312);
  v4 = [v2 results];
  v5 = swift_allocObject();
  *(v0 + 392) = v5;
  *(v5 + 16) = v43;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
  *(v5 + 48) = v45;
  *(v5 + 64) = v44;
  *(v5 + 80) = v0 + 192;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2172AC59C;
  *(v6 + 24) = v5;
  *(v0 + 176) = sub_2172AC5D8;
  *(v0 + 184) = v6;
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_2177094CC;
  *(v0 + 168) = &block_descriptor_6;
  v7 = _Block_copy((v0 + 144));
  v8 = *(v0 + 184);
  v9 = v2;

  [v4 enumerateItemIdentifiersUsingBlock_];

  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
LABEL_15:
    v38 = *(v0 + 272);
    v39 = *(v0 + 256);
    result = sub_217752AC8();
    if (v38 != 8)
    {
      __break(1u);
      return result;
    }

    v40 = result;
    v41 = OUTLINED_FUNCTION_3_23();
    *(v0 + 224) = v40;
    v31 = *(v42 + 16);
    (v31)(v41, v0 + 224);
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  if (*(v0 + 448))
  {
    v10 = *(v0 + 360);
    v11 = *(v0 + 344);

    v12 = *(v0 + 192);
    sub_217751DE8();
LABEL_6:
    OUTLINED_FUNCTION_2_20();

    v23 = OUTLINED_FUNCTION_4_11();

    return v24(v23);
  }

  v13 = *(v0 + 256);
  *(v0 + 208) = sub_217752338();
  *(v0 + 400) = *(v0 + 192);
  sub_217751DE8();
  *(v0 + 216) = sub_2177522A8();
  v14 = *(v0 + 400);
  v15 = *(v0 + 256);
  v16 = sub_217752388();
  v17 = *(v0 + 400);
  if (*(v0 + 216) == v16)
  {
    v18 = *(v0 + 384);
    v20 = *(v0 + 352);
    v19 = *(v0 + 360);

    v21 = *(v0 + 208);
    v22 = *(v0 + 192);
    goto LABEL_6;
  }

  v26 = *(v0 + 256);
  v27 = *(v0 + 400);
  v28 = sub_217752358();
  sub_2177522D8();
  v29 = *(v0 + 400);
  if ((v28 & 1) == 0)
  {
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_3_23();
  v31 = *(v30 + 16);
  OUTLINED_FUNCTION_1_13(v32, v30 + 16);
  v31();
LABEL_11:
  *(v0 + 408) = v31;
  v33 = *(v0 + 400);
  v34 = *(v0 + 256);
  sub_2177523E8();
  v35 = swift_task_alloc();
  *(v0 + 416) = v35;
  *v35 = v0;
  v36 = OUTLINED_FUNCTION_0_17(v35);

  return sub_217563DE4(v36, v37);
}

uint64_t sub_2172AAE98()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v15 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v4 = v2[50];
    v5 = v2[37];
    v6 = v2[32];
    v7 = v2[33];

    (*(v7 + 8))(v5, v6);
    v8 = v2[26];

    v9 = sub_2172AB2E8;
  }

  else
  {
    v10 = v2[37];
    v11 = v2[32];
    v12 = v2[33];
    v13 = *(v12 + 8);
    v2[54] = v13;
    v2[55] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v10, v11);
    v9 = sub_2172AB008;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2172AB008()
{
  v2 = *(v0 + 432);
  v1 = *(v0 + 440);
  v3 = *(v0 + 288);
  v4 = *(v0 + 256);
  (*(v0 + 408))(*(v0 + 280), v3, v4);
  sub_217752418();
  sub_2177523C8();
  v2(v3, v4);
  v5 = *(v0 + 400);
  v6 = *(v0 + 256);
  if (*(v0 + 216) == sub_217752388())
  {
    v7 = *(v0 + 400);
    v8 = *(v0 + 384);
    v10 = *(v0 + 352);
    v9 = *(v0 + 360);

    v11 = *(v0 + 208);
    v12 = *(v0 + 192);
    OUTLINED_FUNCTION_2_20();

    v13 = OUTLINED_FUNCTION_4_11();

    return v14(v13);
  }

  else
  {
    v16 = *(v0 + 400);
    v17 = *(v0 + 256);
    v18 = sub_217752358();
    sub_2177522D8();
    v19 = *(v0 + 400);
    if (v18)
    {
      OUTLINED_FUNCTION_3_23();
      v21 = *(v20 + 16);
      OUTLINED_FUNCTION_1_13(v22, v20 + 16);
      v21();
    }

    else
    {
      v28 = *(v0 + 272);
      v29 = *(v0 + 256);
      result = sub_217752AC8();
      if (v28 != 8)
      {
        __break(1u);
        return result;
      }

      v30 = result;
      v31 = OUTLINED_FUNCTION_3_23();
      *(v0 + 224) = v30;
      v21 = *(v32 + 16);
      (v21)(v31, v0 + 224);
      swift_unknownObjectRelease();
    }

    *(v0 + 408) = v21;
    v23 = *(v0 + 400);
    v24 = *(v0 + 256);
    sub_2177523E8();
    v25 = swift_task_alloc();
    *(v0 + 416) = v25;
    *v25 = v0;
    v26 = OUTLINED_FUNCTION_0_17();

    return sub_217563DE4(v26, v27);
  }
}

uint64_t sub_2172AB230()
{
  v1 = v0[47];
  v2 = v0[44];
  v3 = v0[45];
  v4 = v0[43];
  swift_willThrow();

  v5 = v0[46];
  v6 = v0[47];
  v8 = v0[36];
  v7 = v0[37];
  v9 = v0[35];

  sub_2172202A4(0);

  v10 = v0[1];

  return v10();
}

uint64_t sub_2172AB2E8()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 352);
  v3 = *(v0 + 344);

  v4 = *(v0 + 192);
  v5 = *(v0 + 424);
  OUTLINED_FUNCTION_2_20();
  sub_2172202A4(sub_2172AC59C);

  v6 = *(v0 + 8);

  return v6();
}

void sub_2172AB3AC(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_2176527D8();
  v6 = sub_21726AD78();
  [a2 appendItem_];
  [a3 appendItem_];
}

id sub_2172AB42C(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithUnpersonalizedRequest:a1 unpersonalizedContentDescriptors:a2 representedObjects:a3];

  return v6;
}

uint64_t *sub_2172AB494(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_217718250(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_217718254(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2172AB524(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12)
{
  v19 = MEMORY[0x21CEA3980]();
  sub_2172AB5E4(a4, a1, a2, a5, a6, a7, a8, a9, a10, a11, a12);

  objc_autoreleasePoolPop(v19);
}

uint64_t sub_2172AB5E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11)
{
  v190 = a8;
  v177 = a6;
  v178 = a7;
  v180 = a4;
  v181 = a5;
  v169 = a3;
  v192 = a10;
  v189 = type metadata accessor for _MusicLibraryMapping.MappedItem();
  v188 = *(v189 - 8);
  v13 = *(v188 + 64);
  MEMORY[0x28223BE20](v189, v14);
  v186 = &v142 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v187 = &v142 - v18;
  v19 = sub_217751968();
  v170 = *(v19 - 8);
  v171 = v19;
  v20 = *(v170 + 64);
  MEMORY[0x28223BE20](v19, v21);
  v175 = &v142 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_2177528F8();
  v191 = *(v185 - 8);
  v23 = *(v191 + 64);
  MEMORY[0x28223BE20](v185, v24);
  v176 = &v142 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v172 = &v142 - v28;
  MEMORY[0x28223BE20](v29, v30);
  v179 = &v142 - v31;
  MEMORY[0x28223BE20](v32, v33);
  v167 = &v142 - v34;
  MEMORY[0x28223BE20](v35, v36);
  v166 = &v142 - v37;
  MEMORY[0x28223BE20](v38, v39);
  v232 = &v142 - v40;
  v41 = type metadata accessor for _MusicLibraryMapping.Item.Source();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41, v44);
  v46 = &v142 - v45;
  v193 = *(a9 - 8);
  v47 = *(v193 + 64);
  MEMORY[0x28223BE20](v48, v49);
  v183 = &v142 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51, v52);
  v164 = &v142 - v53;
  v56 = MEMORY[0x28223BE20](v54, v55);
  v184 = &v142 - v57;
  v174 = a1;
  v58 = [a1 representedObjectResults];
  v173 = a2;
  v59 = sub_217751938();
  v60 = [v58 itemAtIndexPath_];

  v182 = a11;
  type metadata accessor for _MusicLibraryMapping.Item();
  v192 = swift_dynamicCastClass();
  if (v192)
  {
    (*(v42 + 16))(v46, &v192[*(*v192 + 120)], v41);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v61 = v193;
      v62 = v184;
      v63 = a9;
      (*(v193 + 32))(v184, v46, a9);
LABEL_23:
      v137 = v183;
      (*(v61 + 16))(v183, v62, v63);
      v138 = v187;
      _MusicLibraryMapping.MappedItem.init(item:mappingItem:)(v137, v192, v187);
      v139 = v188;
      v140 = v189;
      (*(v188 + 16))(v186, v138, v189);
      sub_217752418();
      sub_2177523C8();
      (*(v139 + 8))(v138, v140);
      return (*(v61 + 8))(v62, v63);
    }

    v165 = *v46;
    v64 = v185;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v66 = v191;
    v67 = v232;
    (*(v191 + 32))(v232, &v46[*(TupleTypeMetadata2 + 48)], v64);
    v68 = v66 + 16;
    v69 = *(v66 + 16);
    v70 = v166;
    v69(v166, v67, v64);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v70, 1, a9);
    v72 = v193;
    if (EnumTagSinglePayload == 1)
    {
      (*(v66 + 8))(v70, v64);
      v73 = 2;
    }

    else
    {
      v74 = v164;
      (*(v193 + 32))(v164, v70, a9);
      MusicItem.identifierSet.getter(a9, v182, v226);
      (*(v72 + 8))(v74, a9);
      memcpy(v227, v226, sizeof(v227));
      sub_217269F50(v227);
      if (v227[272])
      {
        v73 = 2;
      }

      else
      {
        v73 = 0;
      }
    }

    LODWORD(v166) = v73;
    v75 = v167;
    v69(v167, v232, v64);
    v76 = __swift_getEnumTagSinglePayload(v75, 1, a9);
    v168 = a9;
    if (v76 == 1)
    {
      (*(v66 + 8))(v75, v64);
      v226[0] = v165;
      _MusicLibraryMapping.ItemKind.convertToPublicInnerItemTypeValue()(v227);
      v77 = *v227;
      v78 = *&v227[8];
      v79 = *&v227[16];
      v80 = *&v227[24];
    }

    else
    {
      MusicItem.identifierSet.getter(a9, v182, v227);
      (*(v72 + 8))(v75, a9);
      v77 = *&v227[288];
      v81 = *&v227[296];
      v82 = *&v227[304];
      v83 = *&v227[312];
      sub_217751DE8();
      sub_217269F50(v227);
      v80 = v83;
      v79 = v82;
      v78 = v81;
    }

    v84 = v179;
    v167 = v78;
    if (v77)
    {
      v228 = v77;
      v229 = v78;
      v85 = v80;
      v86 = v79;
      v87 = v78;
      v88 = v77;
      v230 = v79;
      v231 = v80;
    }

    else
    {
      v89 = v79;
      v90 = v68;
      v91 = v80;
      (*(v181 + 8))(&v228);
      v80 = v91;
      v68 = v90;
      v79 = v89;
      v84 = v179;
      v77 = 0;
      v88 = v228;
      v87 = v229;
      v86 = v230;
      v85 = v231;
    }

    *v226 = v88;
    *&v226[8] = v87;
    *&v226[16] = v86;
    *&v226[24] = v85;
    v225[0] = &unk_28295E548;
    LOBYTE(v199) = v166;
    v179 = v77;
    v166 = v79;
    v164 = v80;
    sub_2172AC64C(v77);
    v92 = swift_unknownObjectRetain();
    sub_2172B6904(v92, v226, v225, &v199, v227);
    v169 = v68;
    v163 = v69;
    v69(v84, v232, v64);
    v93 = v168;
    if (__swift_getEnumTagSinglePayload(v84, 1, v168) == 1)
    {
      (*(v191 + 8))(v84, v64);
      v161 = v227[352];
      v159 = *&v227[336];
      v156 = *&v227[288];
      v157 = *&v227[320];
      v158 = *&v227[304];
      v162 = *&v227[312];
      v160 = *&v227[280];
      v94 = v227[272];
      v95 = *&v227[264];
      v154 = *&v227[232];
      v155 = *&v227[248];
      v152 = *&v227[200];
      v153 = *&v227[216];
      v150 = *&v227[168];
      v151 = *&v227[184];
      v148 = *&v227[136];
      v149 = *&v227[152];
      v146 = *&v227[104];
      v147 = *&v227[120];
      v144 = *&v227[72];
      v145 = *&v227[88];
      v142 = *&v227[40];
      v143 = *&v227[56];
      v96 = *&v227[16];
      v97 = *&v227[24];
      v98 = v227[32];
      v99 = *v227;
      v100 = *&v227[8];
      sub_217269EF4(v227, v226);
      v101 = v98;
      v102 = v99;
      v104 = v142;
      v103 = v143;
      v106 = v144;
      v105 = v145;
      v108 = v146;
      v107 = v147;
      v110 = v148;
      v109 = v149;
      v112 = v150;
      v111 = v151;
      v114 = v152;
      v113 = v153;
      v116 = v154;
      v115 = v155;
      v117 = v160;
      v118 = v162;
      v119 = v156;
      v120 = v157;
      v121 = v158;
      v122 = v159;
      v123 = v161;
    }

    else
    {
      MusicItem.identifierSet.getter(v93, v182, v225);
      (*(v193 + 8))(v84, v93);
      memcpy(v198, v227, 0x161uLL);
      memcpy(v197, v225, 0x161uLL);
      v194 = v225[2];
      v195 = v225[3];
      v196 = v225[4];
      sub_217269EF4(v227, v226);
      sub_217751DE8();
      sub_2174FC7B8();

      memcpy(v226, v198, sizeof(v226));
      sub_217269F50(v226);
      sub_217269F50(v225);
      v100 = *(&v199 + 1);
      v102 = v199;
      v97 = *(&v200 + 1);
      v96 = v200;
      v101 = v201;
      v103 = v203;
      v104 = v202;
      v105 = v205;
      v106 = v204;
      v107 = v207;
      v108 = v206;
      v109 = v209;
      v110 = v208;
      v111 = v211;
      v112 = v210;
      v113 = v213;
      v114 = v212;
      v115 = v215;
      v116 = v214;
      v95 = v216;
      v94 = v217;
      v119 = v219;
      v117 = v218;
      v121 = v220;
      v118 = v221;
      v120 = v222;
      v122 = v223;
      v123 = v224;
    }

    *v226 = v102;
    *&v226[8] = v100;
    *&v226[16] = v96;
    *&v226[24] = v97;
    v226[32] = v101;
    *&v226[40] = v104;
    *&v226[56] = v103;
    *&v226[72] = v106;
    *&v226[88] = v105;
    *&v226[104] = v108;
    *&v226[120] = v107;
    *&v226[136] = v110;
    *&v226[152] = v109;
    *&v226[168] = v112;
    *&v226[184] = v111;
    *&v226[200] = v114;
    *&v226[216] = v113;
    *&v226[232] = v116;
    *&v226[248] = v115;
    *&v226[264] = v95;
    v226[272] = v94;
    *&v226[288] = v119;
    *&v226[280] = v117;
    *&v226[304] = v121;
    *&v226[312] = v118;
    *&v226[320] = v120;
    *&v226[336] = v122;
    v226[352] = v123;
    memcpy(v225, v226, 0x161uLL);
    (*(v170 + 16))(v175, v173, v171);
    sub_217269EF4(v226, &v199);
    v124 = [v174 results];
    v125 = [v124 itemAtIndexPathBlock];

    *(swift_allocObject() + 16) = v125;
    v126 = v172;
    v127 = v185;
    v163(v172, v232, v185);
    v63 = v168;
    if (__swift_getEnumTagSinglePayload(v126, 1, v168) == 1)
    {
      (*(v191 + 8))(v126, v127);
      v201 = 0;
      v199 = 0u;
      v200 = 0u;
    }

    else
    {
      *(&v200 + 1) = v63;
      v201 = v182;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v199);
      (*(v193 + 32))(boxed_opaque_existential_0, v126, v63);
    }

    (*(v181 + 8))(v198);
    v197[0] = v198[0];
    v197[1] = v198[1];
    LOBYTE(v194) = 2;
    v129 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
    v130 = *(v129 + 48);
    v131 = *(v129 + 52);
    swift_allocObject();
    LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
    v201 = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
    *(&v200 + 1) = v129;
    *&v199 = v132;
    LOBYTE(v225[0]) = v165;
    _MusicLibraryMapping.ItemKind.convertToUnderlyingLegacyModelType()();
    v133 = v177;
    v134 = v178;
    v135 = *(v178 + 24);
    v225[3] = v177;
    v225[4] = v178;
    __swift_allocate_boxed_opaque_existential_0(v225);

    v135(&v199, v198, v133, v134);
    sub_2171FF30C(v225, &v199);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
    v136 = v176;
    if (swift_dynamicCast())
    {
      sub_2172AC65C(v179);
      sub_217269F50(v227);
      sub_217269F50(v226);

      (*(v191 + 8))(v232, v127);
      __swift_storeEnumTagSinglePayload(v136, 0, 1, v63);
      v61 = v193;
      v62 = v184;
      (*(v193 + 32))(v184, v136, v63);
      __swift_destroy_boxed_opaque_existential_1(v225);
      goto LABEL_23;
    }

    __swift_storeEnumTagSinglePayload(v136, 1, 1, v63);
    (*(v191 + 8))(v136, v127);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  result = sub_217752D08();
  __break(1u);
  return result;
}

unint64_t sub_2172AC53C()
{
  result = qword_280BE2220;
  if (!qword_280BE2220)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BE2220);
  }

  return result;
}

uint64_t block_destroy_helper_5(uint64_t a1)
{
  v1 = *(a1 + 40);
}

{
  v1 = *(a1 + 40);
}

uint64_t sub_2172AC5F8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2172AC64C(uint64_t result)
{
  if (result)
  {
    return sub_217751DE8();
  }

  return result;
}

uint64_t sub_2172AC65C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t dispatch thunk of ExtendedPlaylistEntryMapping.performExtendedPlaylistEntryMapping<A>(scope:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_2172AC7B0;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_2172AC7B0()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_2172AC89C(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v4 + 384) = a3;
  *(v4 + 392) = v3;
  *(v4 + 376) = a1;
  v7 = sub_2177528F8();
  *(v4 + 400) = v7;
  v8 = *(v7 - 8);
  *(v4 + 408) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 416) = swift_task_alloc();
  *(v4 + 424) = swift_task_alloc();
  v10 = *(a3 - 8);
  *(v4 + 432) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 440) = swift_task_alloc();
  *(v4 + 73) = *a2;
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2172ACDA4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  v7 = *(v4 + 480);
  *v6 = *v2;
  *(v5 + 488) = v1;

  v8 = *(v4 + 472);

  if (!v1)
  {
    *(v5 + 496) = a1;
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2172ACEDC()
{
  v1 = v0[61];
  v2 = v0[58];
  v3 = v0[52];
  v4 = v0[48];
  v0[45] = v0[62];
  *(swift_task_alloc() + 16) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D30, &qword_217759C48);
  sub_2172AD8B0();
  v5 = sub_217752148();

  v0[46] = v5;
  sub_217752418();
  swift_getWitnessTable();
  sub_217752728();

  sub_21729C7F8((v0 + 2));

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v4);
  v8 = v0[56];
  v7 = v0[57];
  if (EnumTagSinglePayload == 1)
  {
    v9 = v0[52];
    v10 = v0[48];
    v8(v0[47], v0[55], v10);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
    {
      (*(v0[51] + 8))(v0[52], v0[50]);
    }
  }

  else
  {
    v11 = v0[52];
    v13 = v0[47];
    v12 = v0[48];
    (*(v0[54] + 8))(v0[55], v12);
    v8(v13, v11, v12);
  }

  v14 = v0[55];
  v15 = v0[52];
  v16 = v0[53];

  OUTLINED_FUNCTION_0_2();

  return v17();
}

uint64_t sub_2172AD0E0()
{
  v1 = v0[58];
  v3 = v0[54];
  v2 = v0[55];
  v5 = v0[52];
  v4 = v0[53];
  v6 = v0[48];

  sub_21729C7F8((v0 + 2));
  (*(v3 + 8))(v2, v6);

  v7 = v0[1];
  v8 = v0[61];

  return v7();
}

uint64_t sub_2172AD198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21729C79C(a1, v9);
  sub_217275858(*(a1 + 64) + 32, &v8);
  Playlist.Entry.init(item:existingEntry:)();
  v6 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a3, v6 ^ 1u, 1, a2);
}

uint64_t sub_2172AD230(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v4 + 536) = v3;
  *(v4 + 528) = a3;
  *(v4 + 520) = a1;
  v6 = sub_2177528F8();
  *(v4 + 544) = v6;
  v7 = *(v6 - 8);
  *(v4 + 552) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 560) = swift_task_alloc();
  *(v4 + 457) = *a2;
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2172AD304()
{
  v1 = *(v0 + 457);
  v2 = *(v0 + 536);
  v3 = sub_217554FF4();
  *(v0 + 568) = v3;
  sub_217751DE8();
  v4 = swift_task_alloc();
  *(v0 + 576) = v4;
  *v4 = v0;
  v4[1] = sub_2172AD3D8;

  return sub_217604A68(v1, v3);
}

uint64_t sub_2172AD3D8()
{
  v2 = *v1;
  v3 = *(*v1 + 576);
  v4 = *(*v1 + 568);
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  v2[73] = v7;

  if (v0)
  {
    v8 = v2[71];
    v9 = v2[70];

    v10 = *(v5 + 8);

    return v10();
  }

  else
  {
    OUTLINED_FUNCTION_35_1();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }
}

uint64_t sub_2172AD548()
{
  v1 = v0[73];
  v2 = *(v1 + 16);
  if (v2)
  {
    v19 = MEMORY[0x277D84F90];
    sub_217275DB0();
    v3 = v1 + 32;
    do
    {
      sub_217202078(v3, (v0 + 41), &unk_27CB2ADA0, &unk_21775A060);
      sub_21729C79C((v0 + 41), (v0 + 50));
      sub_217275858(v0[49] + 32, (v0 + 58));
      Playlist.Entry.init(item:existingEntry:)();
      sub_2171F06D8((v0 + 41), &unk_27CB2ADA0, &unk_21775A060);
      v4 = *(v19 + 16);
      if (v4 >= *(v19 + 24) >> 1)
      {
        sub_217275DB0();
      }

      *(v19 + 16) = v4 + 1;
      v5 = v19 + 56 * v4;
      *(v5 + 80) = v23;
      *(v5 + 48) = v21;
      *(v5 + 64) = v22;
      *(v5 + 32) = v20;
      v3 += 72;
      --v2;
    }

    while (v2);
  }

  v6 = v0[73];

  v7 = v0[70];
  v8 = v0[66];
  sub_217202078(v0[67], (v0 + 15), &unk_27CB2ACA0, &unk_217759C60);
  sub_217751DE8();
  sub_217555BC8();
  sub_217202078((v0 + 2), (v0 + 28), &unk_27CB2ACA0, &unk_217759C60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2ACA0, &unk_217759C60);
  if (swift_dynamicCast())
  {
    v9 = v0[71];
    v10 = v0[70];
    v11 = v0[66];
    v12 = v0[65];
    sub_2171F06D8((v0 + 2), &unk_27CB2ACA0, &unk_217759C60);

    __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
    (*(*(v11 - 8) + 32))(v12, v10, v11);

    OUTLINED_FUNCTION_0_2();

    return v13();
  }

  else
  {
    v15 = v0[70];
    v16 = v0[69];
    v17 = v0[68];
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v0[66]);
    (*(v16 + 8))(v15, v17);
    OUTLINED_FUNCTION_4_24();
    OUTLINED_FUNCTION_2_21();
    v18 = sub_217753348();
    MEMORY[0x21CEA23B0](v18);

    return OUTLINED_FUNCTION_5_14();
  }
}

unint64_t sub_2172AD8B0()
{
  result = qword_27CB24D38;
  if (!qword_27CB24D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24D30, &qword_217759C48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24D38);
  }

  return result;
}

uint64_t CloudPivotMetadata.title.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return v1;
}

uint64_t CloudPivotMetadata.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_217751DE8();
  return v1;
}

uint64_t static CloudPivotMetadata.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8)
    {
      v10 = v4 == v7 && v5 == v8;
      if (v10 || (sub_217753058() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_2172ADA1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
  {

    return 1;
  }

  else
  {
    v7 = sub_217753058();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2172ADAE4(char a1)
{
  sub_2177531E8();
  MEMORY[0x21CEA3550](a1 & 1);
  return sub_217753238();
}

uint64_t sub_2172ADB2C(char a1)
{
  if (a1)
  {
    return 0x7470697263736564;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_2172ADB70()
{
  v1 = *v0;
  sub_2177531E8();
  sub_217230408(v3, v1);
  return sub_217753238();
}

uint64_t sub_2172ADBBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2172ADA1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2172ADBE4(uint64_t a1)
{
  v2 = sub_2172ADDCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2172ADC20(uint64_t a1)
{
  v2 = sub_2172ADDCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CloudPivotMetadata.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D40, &qword_217759C70);
  v5 = OUTLINED_FUNCTION_0_0(v4);
  v18 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5, v9);
  v11 = v17 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = v1[2];
  v17[1] = v1[3];
  v17[2] = v14;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2172ADDCC();
  sub_2177532F8();
  v20 = 0;
  sub_217752EF8();
  if (!v2)
  {
    v19 = 1;
    sub_217752EF8();
  }

  return (*(v18 + 8))(v11, v4);
}

unint64_t sub_2172ADDCC()
{
  result = qword_27CB24D48;
  if (!qword_27CB24D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24D48);
  }

  return result;
}

uint64_t CloudPivotMetadata.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  if (!v0[1])
  {
    sub_217753208();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_217753208();
  }

  v3 = *v0;
  sub_217753208();
  sub_217751FF8();
  if (!v2)
  {
    return sub_217753208();
  }

LABEL_3:
  sub_217753208();

  return sub_217751FF8();
}

uint64_t CloudPivotMetadata.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_2177531E8();
  sub_217753208();
  if (v2)
  {
    sub_217751FF8();
  }

  sub_217753208();
  if (v4)
  {
    sub_217751FF8();
  }

  return sub_217753238();
}

uint64_t CloudPivotMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D50, &qword_217759C78);
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  v13 = &v23 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2172ADDCC();
  sub_2177532C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = 0;
  v15 = sub_217752E18();
  v17 = v16;
  v25 = 1;
  v18 = sub_217752E18();
  v20 = v19;
  v21 = *(v8 + 8);
  v24 = v18;
  v21(v13, v5);
  *a2 = v15;
  a2[1] = v17;
  a2[2] = v24;
  a2[3] = v20;
  sub_217751DE8();
  sub_217751DE8();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2172AE1B0()
{
  v2 = *v0;
  v3 = v0[1];
  sub_2177531E8();
  CloudPivotMetadata.hash(into:)();
  return sub_217753238();
}

unint64_t sub_2172AE1FC()
{
  result = qword_27CB24D58;
  if (!qword_27CB24D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24D58);
  }

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

uint64_t sub_2172AE25C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2172AE2B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudPivotMetadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2172AE3F4()
{
  result = qword_27CB24D60;
  if (!qword_27CB24D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24D60);
  }

  return result;
}

unint64_t sub_2172AE44C()
{
  result = qword_27CB24D68;
  if (!qword_27CB24D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24D68);
  }

  return result;
}

unint64_t sub_2172AE4A4()
{
  result = qword_27CB24D70;
  if (!qword_27CB24D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24D70);
  }

  return result;
}

uint64_t BatchNotificationCoalescer.__allocating_init(notifications:batchSize:debounceInterval:)(unint64_t a1, uint64_t a2, double a3)
{
  v6 = swift_allocObject();
  BatchNotificationCoalescer.init(notifications:batchSize:debounceInterval:)(a1, a2, a3);
  return v6;
}

uint64_t sub_2172AE558()
{
  OUTLINED_FUNCTION_10();
  *(v0 + 40) = *(v0 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_2172AE5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D78, &qword_217759EA0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v25 - v10;
  sub_2171F5110(a3, v25 - v10, &qword_27CB24D78, &qword_217759EA0);
  v12 = sub_217752538();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_2171F0738(v11, &qword_27CB24D78, &qword_217759EA0);
  }

  else
  {
    sub_217752528();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_217752498();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_217751FB8() + 32;
      OUTLINED_FUNCTION_28_6();
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_28_6();
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t BatchNotificationCoalescer.deinit()
{
  OUTLINED_FUNCTION_126();
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 32);
    sub_217751DE8();
    v4 = 32;
    do
    {
      v5 = *(v1 + v4);

      sub_217752558();

      v4 += 8;
      --v2;
    }

    while (v2);
  }

  v6 = *(v0 + 24);

  v7 = *(v0 + 32);

  v8 = *(v0 + 40);

  v9 = *(v0 + 48);

  return v0;
}

uint64_t BatchNotificationCoalescer.__deallocating_deinit()
{
  BatchNotificationCoalescer.deinit();

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

void sub_2172AE9A0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v42 = a1;
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  if (!v6)
  {
    return;
  }

  v7 = v5 + 32;
  sub_217751DE8();
  v8 = 0;
  v9 = 0;
  v39 = v5;
  v37 = v5 + 32;
  while (1)
  {
    v10 = *(v5 + 16);
    if (v6 == v10)
    {
      v11 = *(v5 + 16);
    }

    else
    {
      v11 = v9;
    }

    v9 = v11 - 1;
    if (__OFSUB__(v11, 1))
    {
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      sub_217503624(v7);
      v7 = v36;
      *(v42 + 40) = v36;
LABEL_41:
      if (v9 >= *(v7 + 16))
      {
        __break(1u);
      }

      else
      {
        v27 = *(v7 + 32 + 8 * v9);
        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        *(v7 + 32 + 8 * v9) = v27;
        if (!isUniquelyReferenced_nonNull_bridgeObject || v27 < 0 || (v27 & 0x4000000000000000) != 0)
        {
          v27 = sub_217504020(v27);
          *(v7 + 32 + 8 * v9) = v27;
        }

        if ((v2 & 0x8000000000000000) == 0)
        {
          if (v2 < *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v29 = (v27 & 0xFFFFFFFFFFFFFF8) + 8 * v2;
            v30 = *(v29 + 0x20);
            *(v29 + 32) = v8;
            *(v42 + 40) = v7;
            swift_endAccess();

            goto LABEL_51;
          }

          goto LABEL_67;
        }
      }

      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
      return;
    }

    if (v6 > v10)
    {
      goto LABEL_63;
    }

    --v6;
    v12 = *(v7 + 8 * v6);
    v13 = sub_2171F63F0(v12);
    if (v13)
    {
      break;
    }

LABEL_38:
    if (!v6)
    {

      goto LABEL_51;
    }
  }

  v14 = v13;
  v38 = v6;
  v41 = sub_2171F63F0(v12);
  v40 = sub_2171F63F0(v12);
  swift_bridgeObjectRetain_n();
  v2 = 0;
  while (1)
  {
    v7 = v14 - 1;
    if (__OFSUB__(v14, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    if (v41 == v14)
    {
      if (v12 >> 62)
      {
        v2 = sub_217752D38();
      }

      else
      {
        v2 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    if (__OFSUB__(v2--, 1))
    {
      goto LABEL_55;
    }

    if (v7 < 0 || v7 >= v40)
    {
      goto LABEL_56;
    }

    if ((v12 & 0xC000000000000001) == 0)
    {
      break;
    }

    v16 = MEMORY[0x21CEA2E30](v14 - 1, v12);
    if (!v8)
    {
      goto LABEL_22;
    }

LABEL_26:
    if (sub_2177517F8())
    {
      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_57;
      }

      v22 = *(v42 + 40);
      if (v9 >= *(v22 + 16))
      {
        goto LABEL_58;
      }

      v23 = *(v22 + 8 * v9 + 32);
      v24 = v23 >> 62 ? sub_217752D38() : *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v2 < v24)
      {

        swift_bridgeObjectRelease_n();
        swift_beginAccess();
        v7 = *(v42 + 40);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v42 + 40) = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_64;
        }

        goto LABEL_41;
      }
    }

    v14 = v7;
    if (!v7)
    {
      swift_bridgeObjectRelease_n();
      v5 = v39;
      v6 = v38;
      v7 = v37;
      goto LABEL_38;
    }
  }

  if (v7 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_59;
  }

  v16 = *(v12 + 32 + 8 * v7);

  if (v8)
  {
    goto LABEL_26;
  }

LABEL_22:
  v17 = a2;
  swift_retain_n();
  sub_217751DE8();
  v8 = sub_2172AEE70(1, v12);
  swift_beginAccess();
  v18 = *(v42 + 40);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  *(v42 + 40) = v18;
  if (v19)
  {
    if ((v9 & 0x8000000000000000) != 0)
    {
      goto LABEL_60;
    }
  }

  else
  {
    sub_217503624(v18);
    v18 = v25;
    *(v42 + 40) = v25;
    if ((v9 & 0x8000000000000000) != 0)
    {
      goto LABEL_60;
    }
  }

  if (v9 >= *(v18 + 16))
  {
    goto LABEL_61;
  }

  v20 = v18 + 8 * v9;
  v21 = *(v20 + 32);
  *(v20 + 32) = v8;
  *(v42 + 40) = v18;
  swift_endAccess();

  a2 = v17;
  LOBYTE(v21) = sub_2177517F8();

  v8 = v16;
  if ((v21 & 1) == 0)
  {
    goto LABEL_26;
  }

  swift_bridgeObjectRelease_n();

  v31 = *(v42 + 40);
  if (v9 >= *(v31 + 16))
  {
    goto LABEL_68;
  }

  if (!sub_217204DD0(*(v31 + 8 * v9 + 32)))
  {
    v32 = *(v42 + 40);
    sub_217751DE8();
    sub_2172AF0BC(1, v32);
    v34 = v33;

    v35 = *(v42 + 40);
    *(v42 + 40) = v34;

    return;
  }

LABEL_51:
}

uint64_t sub_2172AEE70(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (a1)
  {
    v23 = MEMORY[0x277D84F90];
    v24 = MEMORY[0x277D84F90];
    v4 = sub_2171F63F0(a2);
    v22 = 0;
    v5 = 0;
    while (1)
    {
      if (v4 == v5)
      {

        v15 = v24;

        return v15;
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x21CEA2E30](v5, a2);
      }

      else
      {
        if (v5 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v6 = *(a2 + 8 * v5 + 32);
      }

      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v8 = v23;
      v9 = *(v23 + 16);
      if (v9 >= a1)
      {
        if (v22 >= v9)
        {
          goto LABEL_27;
        }

        v21 = *(v23 + 8 * v22 + 32);

        sub_217752BC8();
        v11 = *(v24 + 16);
        sub_217752C08();
        sub_217752C18();
        sub_217752BD8();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2174923D8(v23);
          v23 = v8;
        }

        if (v22 >= *(v8 + 16))
        {
          goto LABEL_28;
        }

        v12 = v8 + 8 * v22;
        v13 = *(v12 + 32);
        *(v12 + 32) = v6;

        sub_217752BD8();
        if ((v22 + 1) < a1)
        {
          v14 = v22 + 1;
        }

        else
        {
          v14 = 0;
        }

        v22 = v14;
        v5 = v7;
      }

      else
      {
        sub_217752BC8();
        v10 = *(v23 + 16);
        sub_217752C08();
        sub_217752C18();
        sub_217752BD8();
        ++v5;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!(a2 >> 62))
  {
    return a2 & 0xFFFFFFFFFFFFFF8;
  }

LABEL_29:
  v17 = sub_217752D38();
  if (!v17)
  {
LABEL_32:

    return MEMORY[0x277D84F90];
  }

  v18 = v17;
  v15 = sub_2176F7A10();
  sub_217545B8C();
  v20 = v19;

  if (v20 != v18)
  {
    __break(1u);
    goto LABEL_32;
  }

  return v15;
}

void sub_2172AF0BC(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    if (!a1)
    {
      return;
    }

    v4 = 0;
    v5 = 0;
    v6 = *(a2 + 16);
    v7 = MEMORY[0x277D84F90];
    v22 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v6 == v5)
      {

        return;
      }

      if (v5 >= *(a2 + 16))
      {
        break;
      }

      v8 = a2 + 8 * v5;
      v9 = *(v8 + 32);
      v10 = *(v7 + 16);
      if (v10 >= a1)
      {
        if (v4 >= v10)
        {
          goto LABEL_27;
        }

        v13 = *(v7 + 8 * v4 + 32);
        sub_217751DE8();
        v14 = v13;
        sub_217751DE8();
        v15 = v22;
        v21 = v4;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = *(v22 + 16);
          sub_2172768C8();
          v15 = v22;
        }

        v17 = *(v15 + 16);
        if (v17 >= *(v15 + 24) >> 1)
        {
          sub_2172768C8();
          v15 = v22;
        }

        *(v15 + 16) = v17 + 1;
        v22 = v15;
        *(v15 + 8 * v17 + 32) = v14;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2174923C0(v7);
          v7 = v18;
        }

        if (v21 >= *(v7 + 16))
        {
          goto LABEL_28;
        }

        ++v5;
        v19 = v7 + 8 * v21;
        v20 = *(v19 + 32);
        *(v19 + 32) = v9;

        if ((v21 + 1) < a1)
        {
          v4 = v21 + 1;
        }

        else
        {
          v4 = 0;
        }
      }

      else
      {
        v11 = *(v8 + 32);
        sub_217751DE8();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2172768C8();
        }

        v12 = *(v7 + 16);
        if (v12 >= *(v7 + 24) >> 1)
        {
          sub_2172768C8();
        }

        *(v7 + 16) = v12 + 1;
        *(v7 + 8 * v12 + 32) = v9;
        ++v5;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_2172AF2F0(uint64_t a1, uint64_t a2)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D78, &qword_217759EA0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v10[-v4 - 8];
  v6 = sub_217752538();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  sub_2171F5110(a2, v10, &qword_27CB24DB0, &qword_217759FE0);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_21721E6D0(v10, v7 + 32);
  sub_21765A6D8(0, 0, v5, &unk_217759FF0, v7);
}

uint64_t sub_2172AF410()
{
  OUTLINED_FUNCTION_10();
  v1 = v0[2];
  Strong = swift_weakLoadStrong();
  v0[3] = Strong;
  if (Strong)
  {
    sub_217752518();

    v0[4] = sub_217752508();
    v4 = sub_217752498();

    return MEMORY[0x2822009F8](sub_2172AF4E8, v4, v3);
  }

  else
  {
    OUTLINED_FUNCTION_20_0();

    return v5();
  }
}

uint64_t sub_2172AF4E8()
{
  OUTLINED_FUNCTION_10();
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  sub_2172AF5B0();

  return MEMORY[0x2822009F8](sub_2172AF558, 0, 0);
}

uint64_t sub_2172AF558()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_20_0();

  return v2();
}

uint64_t sub_2172AF5B0()
{
  [*(v0 + 56) invalidate];
  v1 = *(v0 + 56);
  *(v0 + 56) = 0;

  v2 = *(v0 + 48);
  v3 = *(v2 + 16);

  os_unfair_lock_lock(v3);
  OUTLINED_FUNCTION_126();
  v4 = *(v0 + 40);
  v5 = *(v2 + 16);
  sub_217751DE8();
  os_unfair_lock_unlock(v5);

  sub_2172AF658(v4);
}

void sub_2172AF658(uint64_t a1)
{
  v3 = sub_217751C58();
  v4 = OUTLINED_FUNCTION_0_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4, v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_217751C88();
  v13 = OUTLINED_FUNCTION_0_0(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v41 = v1;
    v42 = v18;
    v43 = v17;
    v44 = v6;
    v21 = *(a1 + 32);
    v22 = sub_2171F63F0(v21);
    if (v22)
    {
      v23 = v22;
      if (v22 < 1)
      {
        __break(1u);
        goto LABEL_26;
      }

      v40 = v3;
      sub_217751DE8();
      for (i = 0; i != v23; ++i)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x21CEA2E30](i, v21);
        }

        else
        {
          v25 = *(v21 + 8 * i + 32);
        }

        swift_beginAccess();
        v26 = *(v25 + 16);
        if (v26)
        {
          v27 = *(v25 + 24);

          v26(v28);
          sub_2172202A4(v26);
        }
      }

      v3 = v40;
    }

    sub_217751DE8();
    v1 = sub_217285890(1, a1);
    a1 = v29;
    v21 = v30;
    v23 = v31;
    if ((v31 & 1) == 0)
    {
LABEL_13:
      sub_2172C9160(v1, a1, v21, v23);
      v33 = v32;
      goto LABEL_20;
    }

    sub_217753138();
    swift_unknownObjectRetain_n();
    v34 = swift_dynamicCastClass();
    if (!v34)
    {
      swift_unknownObjectRelease();
      v34 = MEMORY[0x277D84F90];
    }

    v35 = *(v34 + 16);

    if (!__OFSUB__(v23 >> 1, v21))
    {
      if (v35 == (v23 >> 1) - v21)
      {
        v33 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v33)
        {
          goto LABEL_21;
        }

        v33 = MEMORY[0x277D84F90];
LABEL_20:
        swift_unknownObjectRelease();
LABEL_21:
        if (*(v33 + 16))
        {
          v36 = MEMORY[0x277D84F90];
          sub_2172B38C0();
          v37 = sub_217752838();
          OUTLINED_FUNCTION_28_6();
          v38 = swift_allocObject();
          *(v38 + 16) = v41;
          *(v38 + 24) = v33;
          aBlock[4] = sub_2172B3904;
          aBlock[5] = v38;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_2172B5448;
          aBlock[3] = &block_descriptor_1;
          v39 = _Block_copy(aBlock);

          sub_217751C78();
          aBlock[0] = v36;
          sub_2171FC248(&qword_280BE99E8, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24DA8, &qword_217768C60);
          sub_2172B3934();
          sub_217752A08();
          MEMORY[0x21CEA2BA0](0, v20, v11, v39);
          _Block_release(v39);

          (*(v44 + 8))(v11, v3);
          (*(v42 + 8))(v20, v43);
        }

        else
        {
        }

        return;
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    swift_unknownObjectRelease();
    goto LABEL_13;
  }
}

uint64_t BatchNotificationCoalescer.Observer.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  sub_217751808();
  return v3;
}

uint64_t BatchNotificationCoalescer.Observer.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  sub_217751808();
  return v0;
}

uint64_t sub_2172AFB14@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  result = sub_2172AFC64();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_2172B3A60;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_2172AFBAC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2172B3A38;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_21722063C(v3);
  return sub_2171FF0E4(v6, v5);
}

uint64_t sub_2172AFC64()
{
  OUTLINED_FUNCTION_126();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_21722063C(v1);
  return v1;
}

uint64_t BatchNotificationCoalescer.Observer.deinit()
{
  v1 = *(v0 + 24);
  sub_2172202A4(*(v0 + 16));
  v2 = OBJC_IVAR____TtCC8MusicKit26BatchNotificationCoalescer8Observer_id;
  v3 = sub_217751818();
  OUTLINED_FUNCTION_43(v3);
  (*(v4 + 8))(v0 + v2);
  return v0;
}

uint64_t BatchNotificationCoalescer.Observer.__deallocating_deinit()
{
  v1 = v0[3];
  sub_2172202A4(v0[2]);
  v2 = OBJC_IVAR____TtCC8MusicKit26BatchNotificationCoalescer8Observer_id;
  v3 = sub_217751818();
  OUTLINED_FUNCTION_43(v3);
  (*(v4 + 8))(v0 + v2);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_2172AFDF4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return static BatchNotificationCoalescer.Observer.== infix(_:_:)() & 1;
}

uint64_t sub_2172AFE20()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;

  OUTLINED_FUNCTION_20_0();

  return v5();
}

void sub_2172AFF5C()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24420, &qword_217758700);
      v8 = OUTLINED_FUNCTION_34_3();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_217500044(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_12_9();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B0010()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24EE0, &unk_21775A230);
      v8 = OUTLINED_FUNCTION_184();
      OUTLINED_FUNCTION_1_14(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_21750400C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AF10, &unk_217787490);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B0100()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24EF0, &qword_21775A258);
      v8 = OUTLINED_FUNCTION_184();
      OUTLINED_FUNCTION_1_14(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_21750400C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AEA0, &unk_21775A260);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B01B4()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB246B8, &qword_217758C28);
      v8 = OUTLINED_FUNCTION_25_4();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_21750402C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AF80, &qword_217758C30);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B0270()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB249E0, &qword_217758F88);
      v8 = OUTLINED_FUNCTION_25_4();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_21750402C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB28A90, &qword_217758F90);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B032C()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244E8, &qword_21775A0B0);
      v8 = OUTLINED_FUNCTION_25_4();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_21750402C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275E0, &qword_2177589D0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B03E8()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24F10, &qword_21775A308);
      v8 = OUTLINED_FUNCTION_184();
      OUTLINED_FUNCTION_1_14(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_21750400C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CDA0, &qword_21775A310);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B049C()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24528, &unk_217758A20);
      v8 = OUTLINED_FUNCTION_25_4();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_21750402C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277F0, &unk_21775A2B0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B0558()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24548, &qword_217758A50);
      v8 = OUTLINED_FUNCTION_25_4();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_21750402C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24550, &qword_217758A58);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B0614()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB245D8, &unk_217758B00);
      v8 = OUTLINED_FUNCTION_25_4();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_21750402C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CD90, &unk_21775A2C0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B06D0()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24698, &qword_217758BF8);
      v8 = OUTLINED_FUNCTION_25_4();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_21750402C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AF60, &qword_217758C00);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B078C()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24670, &qword_217758BC8);
      v8 = OUTLINED_FUNCTION_25_4();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_21750402C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24678, &qword_217758BD0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B0848()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB246E0, &unk_217758C60);
      v8 = OUTLINED_FUNCTION_25_4();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_21750402C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB246E8, &qword_21776C140);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B0904()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24650, &unk_217758BA0);
      v8 = OUTLINED_FUNCTION_184();
      OUTLINED_FUNCTION_1_14(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_21750400C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB28AA0, &qword_21775A020);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B09B8()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB245F8, &unk_217758B30);
      v8 = OUTLINED_FUNCTION_25_4();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_21750402C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27760, &unk_21775A2D0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B0A74()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24588, &qword_217758AA0);
      v8 = OUTLINED_FUNCTION_25_4();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_21750402C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2ACC0, &qword_217758AA8);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B0B30()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24DC8, &qword_21775A008);
      v8 = OUTLINED_FUNCTION_34_3();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_21750009C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD10, &unk_21775A010);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B0BF0()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24DE8, &qword_21775A058);
      v8 = OUTLINED_FUNCTION_34_3();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_217504030(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2ADA0, &unk_21775A060);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B0CB0()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24E00, &unk_21775A090);
      v8 = OUTLINED_FUNCTION_34_3();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_217504030(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24E08, &qword_2177872B0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B0D70()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24E58, &qword_21775A128);
      v8 = OUTLINED_FUNCTION_34_3();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_217504030(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24E60, &qword_21775A130);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B0E60()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24DE0, &unk_21775A040);
      v8 = OUTLINED_FUNCTION_184();
      OUTLINED_FUNCTION_1_14(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_21750400C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD90, &unk_217771C70);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B0F44()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24E80, &qword_21775A170);
      v8 = OUTLINED_FUNCTION_184();
      OUTLINED_FUNCTION_1_14(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_21750400C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24E88, &qword_21775A178);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B1028()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24E68, &qword_21775A138);
      v8 = OUTLINED_FUNCTION_184();
      OUTLINED_FUNCTION_1_14(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_21750400C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AF40, &unk_21775A140);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B110C()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24DF8, &unk_21775A080);
      v8 = OUTLINED_FUNCTION_184();
      OUTLINED_FUNCTION_1_14(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_21750400C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2ADF0, &qword_217787260);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B11F0()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24E28, &unk_21775A0D0);
      v8 = OUTLINED_FUNCTION_184();
      OUTLINED_FUNCTION_1_14(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_21750400C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AE80, &qword_217787390);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B12D4()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24EA0, &unk_21775A1A0);
      v8 = OUTLINED_FUNCTION_184();
      OUTLINED_FUNCTION_1_14(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_21750400C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AFB0, &unk_217771CF0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B13B8()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24E10, &unk_21775A0A0);
      v8 = OUTLINED_FUNCTION_184();
      OUTLINED_FUNCTION_1_14(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_21750400C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AE40, &qword_217787300);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B149C()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24DB8, &qword_217759FF8);
      v8 = OUTLINED_FUNCTION_184();
      OUTLINED_FUNCTION_1_14(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_21750400C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24DC0, &qword_21775A000);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B1550()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24E30, &unk_21775A0E0);
      v8 = OUTLINED_FUNCTION_34_3();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_217504030(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24E38, &unk_217771D50);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B1650()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24E18, &qword_21775A0B8);
      v8 = OUTLINED_FUNCTION_184();
      OUTLINED_FUNCTION_1_14(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_21750400C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24E20, &unk_21775A0C0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B1704()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24E50, &qword_21775A118);
      v8 = OUTLINED_FUNCTION_34_3();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_217504030(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AEF0, &qword_21775A120);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B17C4()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24E40, &qword_21775A0F0);
      v8 = OUTLINED_FUNCTION_34_3();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_217504030(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24E48, &qword_21775A0F8);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B1884()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24F30, &qword_21775A388);
      v8 = OUTLINED_FUNCTION_34_3();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_217504038(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24408, &qword_21775A390);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B199C()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
      v8 = OUTLINED_FUNCTION_34_3();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_2175000D8(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_12_9();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B1AF0()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24910, &unk_217758EA0);
      v8 = OUTLINED_FUNCTION_34_3();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_217504034(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24918, &unk_217768490);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B1BD8()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24900, &unk_217758E90);
      v8 = OUTLINED_FUNCTION_34_3();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_217504034(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24908, &unk_21775A360);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B1C98()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB248F0, &unk_217758E80);
      v8 = OUTLINED_FUNCTION_34_3();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_217504034(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB248F8, &unk_21775A370);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B1D58()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB248E0, &unk_217758E70);
      v8 = OUTLINED_FUNCTION_34_3();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_217504034(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB248E8, &qword_21775A380);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B1F7C()
{
  OUTLINED_FUNCTION_20_12();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v8 == v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_102_0(v7);
    if (v4)
    {
      OUTLINED_FUNCTION_179_0(v10, v11, v12, v13, v14, v15);
      v16 = OUTLINED_FUNCTION_187();
      OUTLINED_FUNCTION_225(v16);
      OUTLINED_FUNCTION_83_0();
      *(v4 + 16) = v3;
      *(v4 + 24) = v17;
      if (v2)
      {
LABEL_9:
        v18 = OUTLINED_FUNCTION_104_1();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_82_1();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v8)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B2028()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D80, &unk_217759FA0);
      v8 = OUTLINED_FUNCTION_34_3();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_2172268D4(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_12_9();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B2118()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24960, &qword_217758EF0);
      v8 = swift_allocObject();
      OUTLINED_FUNCTION_13_7(v8);
      OUTLINED_FUNCTION_7_9(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_9_0();
        sub_217500190(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244A8, &unk_217758980);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B2338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, void *))
{
  OUTLINED_FUNCTION_38_2();
  if ((v12 & 1) == 0)
  {
    v16 = v11;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v17 == v18)
  {
LABEL_7:
    v19 = *(v7 + 16);
    if (v16 <= v19)
    {
      v20 = *(v7 + 16);
    }

    else
    {
      v20 = v16;
    }

    if (v20)
    {
      OUTLINED_FUNCTION_179_0(v10, v11, v12, v13, v14, v15);
      v21 = OUTLINED_FUNCTION_187();
      _swift_stdlib_malloc_size(v21);
      OUTLINED_FUNCTION_83_0();
      v21[2] = v19;
      v21[3] = v22;
      if (v8)
      {
LABEL_12:
        a7(v7 + 32, v19, v21 + 4);
        *(v7 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v21 = MEMORY[0x277D84F90];
      if (v8)
      {
        goto LABEL_12;
      }
    }

    memcpy(v21 + 4, (v7 + 32), 16 * v19);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v17)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B240C()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24848, &qword_21776E1A0);
      v8 = OUTLINED_FUNCTION_34_3();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_217504038(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24850, &qword_217758DE0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B24CC()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24DA0, &unk_217759FD0);
      v8 = OUTLINED_FUNCTION_34_3();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_217500374(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_12_9();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B26A4()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB245B0, &qword_217758AD8);
      v8 = OUTLINED_FUNCTION_184();
      OUTLINED_FUNCTION_1_14(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_21750400C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB245B8, &qword_217758AE0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B2758()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24DF0, &qword_21775A070);
      v8 = OUTLINED_FUNCTION_34_3();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_217504030(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2ADC0, &qword_21775A078);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B28A8()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24E90, &unk_21775A190);
      v8 = OUTLINED_FUNCTION_184();
      OUTLINED_FUNCTION_1_14(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_21750400C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24E98, &qword_217787540);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}