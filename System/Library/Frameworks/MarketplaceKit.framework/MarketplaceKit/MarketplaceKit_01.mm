uint64_t objectdestroyTm_0(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t objectdestroy_33Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v7 + 8, v5 | 7);
}

uint64_t sub_1D95FF23C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1D95FF284(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1D95FF3EC()
{
  v1 = 0xD000000000000012;
  v2 = *v0;
  v3 = 0xD000000000000017;
  if (v2 != 5)
  {
    v3 = 0xD000000000000015;
  }

  v4 = 0xD000000000000016;
  if (v2 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0 <= 2u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

uint64_t sub_1D95FF4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9605938(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D95FF4E0(uint64_t a1)
{
  v2 = sub_1D96009CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95FF51C(uint64_t a1)
{
  v2 = sub_1D96009CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95FF558()
{
  if (*v0)
  {
    result = 0x7562697274736964;
  }

  else
  {
    result = 0x746E756F636361;
  }

  *v0;
  return result;
}

uint64_t sub_1D95FF5A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E756F636361 && a2 == 0xE700000000000000;
  if (v6 || (sub_1D966EFB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7562697274736964 && a2 == 0xED00004449726F74)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D966EFB8();

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

uint64_t sub_1D95FF684(uint64_t a1)
{
  v2 = sub_1D9600CE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95FF6C0(uint64_t a1)
{
  v2 = sub_1D9600CE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95FF6FC()
{
  v1 = 0x496E6F6973726576;
  if (*v0 != 1)
  {
    v1 = 0x7562697274736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x44496D657469;
  }
}

uint64_t sub_1D95FF764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9605B84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D95FF78C(uint64_t a1)
{
  v2 = sub_1D9600D8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95FF7C8(uint64_t a1)
{
  v2 = sub_1D9600D8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95FF804()
{
  if (*v0)
  {
    result = 0x7562697274736964;
  }

  else
  {
    result = 0x7972657571;
  }

  *v0;
  return result;
}

uint64_t sub_1D95FF848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D966EFB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7562697274736964 && a2 == 0xED00004449726F74)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D966EFB8();

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

uint64_t sub_1D95FF928(uint64_t a1)
{
  v2 = sub_1D9600D38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95FF964(uint64_t a1)
{
  v2 = sub_1D9600D38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95FF9B8(uint64_t a1)
{
  v2 = sub_1D9600C30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95FF9F4(uint64_t a1)
{
  v2 = sub_1D9600C30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95FFA30(uint64_t a1)
{
  v2 = sub_1D9600B40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95FFA6C(uint64_t a1)
{
  v2 = sub_1D9600B40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95FFAA8(uint64_t a1)
{
  v2 = sub_1D9600BDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95FFAE4(uint64_t a1)
{
  v2 = sub_1D9600BDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95FFB20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D966EFB8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D95FFBA8(uint64_t a1)
{
  v2 = sub_1D9600A84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95FFBE4(uint64_t a1)
{
  v2 = sub_1D9600A84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LaunchAngelXPCRequest.RequestType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20F70, &qword_1D9670FA0);
  v99 = *(v2 - 8);
  v100 = v2;
  v3 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v98 = &v79 - v4;
  v96 = type metadata accessor for ConfirmationSheetContext(0);
  v5 = *(*(v96 - 8) + 64);
  MEMORY[0x1EEE9AC00](v96);
  v97 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20F78, &qword_1D9670FA8);
  v94 = *(v7 - 8);
  v95 = v7;
  v8 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v93 = &v79 - v9;
  v91 = type metadata accessor for LicenseResolutionContext();
  v10 = *(*(v91 - 8) + 64);
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20F80, &qword_1D9670FB0);
  v89 = *(v90 - 8);
  v12 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v88 = &v79 - v13;
  v86 = type metadata accessor for OAuthAuthorizationContext();
  v14 = *(*(v86 - 8) + 64);
  MEMORY[0x1EEE9AC00](v86);
  v87 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20F88, &qword_1D9670FB8);
  v84 = *(v85 - 8);
  v16 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v83 = &v79 - v17;
  v80 = type metadata accessor for InstallSheetContext(0);
  v18 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80);
  v82 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20F90, &qword_1D9670FC0);
  v104 = *(v20 - 8);
  v105 = v20;
  v21 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v103 = &v79 - v22;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20F98, &qword_1D9670FC8);
  v81 = *(v102 - 8);
  v23 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v25 = &v79 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20FA0, &qword_1D9670FD0);
  v101 = *(v26 - 8);
  v27 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v79 - v28;
  v30 = type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v33 = (&v79 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20FA8, &qword_1D9670FD8);
  v108 = *(v110 - 8);
  v34 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v36 = &v79 - v35;
  v37 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D96009CC();
  v109 = v36;
  sub_1D966F118();
  sub_1D9600A20(v106, v33);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v45 = v29;
    v46 = v101;
    v47 = v102;
    v48 = v103;
    v49 = v104;
    v50 = v105;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v51 = *v33;
        v52 = v33[1];
        v54 = v33[2];
        v53 = v33[3];
        v117 = 1;
        sub_1D9600D38();
        v55 = v25;
        v57 = v109;
        v56 = v110;
        sub_1D966EED8();
        v116 = 0;
        v58 = v107;
        sub_1D966EF38();

        if (v58)
        {

          (*(v81 + 8))(v55, v47);
          return (*(v108 + 8))(v57, v56);
        }

        else
        {
          v115 = 1;
          sub_1D966EF38();
          v78 = v81;

          (*(v78 + 8))(v55, v47);
          return (*(v108 + 8))(v57, v110);
        }
      }

      v70 = *v33;
      v69 = v33[1];
      v71 = v33[3];
      v106 = v33[2];
      v120 = 2;
      sub_1D9600CE4();
      v72 = v109;
      v64 = v110;
      sub_1D966EED8();
      v119 = 0;
      v73 = v107;
      sub_1D966EF38();

      if (!v73)
      {
        v118 = 1;
        sub_1D966EF38();
      }

      (*(v49 + 8))(v48, v50);
      v67 = *(v108 + 8);
      v68 = v72;
    }

    else
    {
      v62 = *v33;
      v106 = v33[1];
      LODWORD(v105) = *(v33 + 16);
      v63 = v33[4];
      v104 = v33[3];
      v114 = 0;
      sub_1D9600D8C();
      v65 = v109;
      v64 = v110;
      sub_1D966EED8();
      v113 = 0;
      v66 = v107;
      sub_1D966EF88();
      if (v66)
      {

        (*(v46 + 8))(v45, v26);
        v67 = *(v108 + 8);
        v68 = v65;
      }

      else
      {
        v112 = 1;
        sub_1D966EF28();
        v111 = 2;
        sub_1D966EF38();

        (*(v46 + 8))(v45, v26);
        v68 = v109;
        v67 = *(v108 + 8);
      }
    }

    return v67(v68, v64);
  }

  if (EnumCaseMultiPayload > 4)
  {
    v39 = v109;
    if (EnumCaseMultiPayload == 5)
    {
      v40 = v92;
      sub_1D9600AD8(v33, v92, type metadata accessor for LicenseResolutionContext);
      v123 = 5;
      sub_1D9600B40();
      v60 = v93;
      v42 = v110;
      sub_1D966EED8();
      sub_1D9600B94(&qword_1ECB20FD0, type metadata accessor for LicenseResolutionContext);
      v61 = v95;
      sub_1D966EF68();
      (*(v94 + 8))(v60, v61);
      v44 = type metadata accessor for LicenseResolutionContext;
    }

    else
    {
      v40 = v97;
      sub_1D9600AD8(v33, v97, type metadata accessor for ConfirmationSheetContext);
      v124 = 6;
      sub_1D9600A84();
      v76 = v98;
      v42 = v110;
      sub_1D966EED8();
      sub_1D9600B94(&qword_1ECB20FC0, type metadata accessor for ConfirmationSheetContext);
      v77 = v100;
      sub_1D966EF68();
      (*(v99 + 8))(v76, v77);
      v44 = type metadata accessor for ConfirmationSheetContext;
    }
  }

  else
  {
    v39 = v109;
    if (EnumCaseMultiPayload == 3)
    {
      v40 = v82;
      sub_1D9600AD8(v33, v82, type metadata accessor for InstallSheetContext);
      v121 = 3;
      sub_1D9600C30();
      v41 = v83;
      v42 = v110;
      sub_1D966EED8();
      sub_1D9600B94(&qword_1ECB20FF0, type metadata accessor for InstallSheetContext);
      v43 = v85;
      sub_1D966EF68();
      (*(v84 + 8))(v41, v43);
      v44 = type metadata accessor for InstallSheetContext;
    }

    else
    {
      v40 = v87;
      sub_1D9600AD8(v33, v87, type metadata accessor for OAuthAuthorizationContext);
      v122 = 4;
      sub_1D9600BDC();
      v74 = v88;
      v42 = v110;
      sub_1D966EED8();
      sub_1D9600B94(&qword_1ECB20FE0, type metadata accessor for OAuthAuthorizationContext);
      v75 = v90;
      sub_1D966EF68();
      (*(v89 + 8))(v74, v75);
      v44 = type metadata accessor for OAuthAuthorizationContext;
    }
  }

  sub_1D9600C84(v40, v44);
  return (*(v108 + 8))(v39, v42);
}

unint64_t sub_1D96009CC()
{
  result = qword_1ECB20FB0;
  if (!qword_1ECB20FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20FB0);
  }

  return result;
}

uint64_t sub_1D9600A20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D9600A84()
{
  result = qword_1ECB20FB8;
  if (!qword_1ECB20FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20FB8);
  }

  return result;
}

uint64_t sub_1D9600AD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D9600B40()
{
  result = qword_1ECB20FC8;
  if (!qword_1ECB20FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20FC8);
  }

  return result;
}

uint64_t sub_1D9600B94(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D9600BDC()
{
  result = qword_1ECB20FD8;
  if (!qword_1ECB20FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20FD8);
  }

  return result;
}

unint64_t sub_1D9600C30()
{
  result = qword_1ECB20FE8;
  if (!qword_1ECB20FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20FE8);
  }

  return result;
}

uint64_t sub_1D9600C84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D9600CE4()
{
  result = qword_1ECB20FF8;
  if (!qword_1ECB20FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20FF8);
  }

  return result;
}

unint64_t sub_1D9600D38()
{
  result = qword_1ECB21000;
  if (!qword_1ECB21000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21000);
  }

  return result;
}

unint64_t sub_1D9600D8C()
{
  result = qword_1ECB21008;
  if (!qword_1ECB21008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21008);
  }

  return result;
}

uint64_t LaunchAngelXPCRequest.RequestType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v148 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21010, &qword_1D9670FE0);
  v4 = *(v3 - 8);
  v144 = v3;
  v145 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v156 = &v125 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21018, &qword_1D9670FE8);
  v142 = *(v7 - 8);
  v143 = v7;
  v8 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v155 = &v125 - v9;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21020, &qword_1D9670FF0);
  v140 = *(v141 - 8);
  v10 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v141);
  v151 = &v125 - v11;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21028, &qword_1D9670FF8);
  v139 = *(v138 - 8);
  v12 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v138);
  v150 = &v125 - v13;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21030, &qword_1D9671000);
  v136 = *(v135 - 8);
  v14 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v135);
  v154 = &v125 - v15;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21038, &qword_1D9671008);
  v134 = *(v137 - 8);
  v16 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v149 = &v125 - v17;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21040, &qword_1D9671010);
  v146 = *(v133 - 8);
  v18 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v153 = &v125 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21048, &qword_1D9671018);
  v157 = *(v20 - 8);
  v158 = v20;
  v21 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v125 - v22;
  v152 = type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  v24 = *(*(v152 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v152);
  v147 = &v125 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v132 = &v125 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v131 = &v125 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v125 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = &v125 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34);
  v39 = &v125 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37);
  v42 = (&v125 - v41);
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v125 - v43;
  v46 = a1[3];
  v45 = a1[4];
  v159 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v46);
  sub_1D96009CC();
  v47 = v160;
  sub_1D966F0F8();
  if (v47)
  {
    goto LABEL_12;
  }

  v126 = v39;
  v127 = v36;
  v125 = v42;
  v128 = v33;
  v48 = v153;
  v49 = v154;
  v130 = 0;
  v50 = v155;
  v51 = v156;
  v129 = v44;
  v160 = v23;
  v52 = sub_1D966EEB8();
  v53 = v52;
  if (*(v52 + 16) != 1 || (v54 = *(v52 + 32), v54 == 7))
  {
    v61 = sub_1D966ED58();
    swift_allocError();
    v63 = v62;
    v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21050, &qword_1D9671020) + 48);
    *v63 = v152;
    v65 = v158;
    v66 = v160;
    sub_1D966EDF8();
    sub_1D966ED48();
    (*(*(v61 - 8) + 104))(v63, *MEMORY[0x1E69E6AF8], v61);
    swift_willThrow();
    (*(v157 + 8))(v66, v65);
    goto LABEL_11;
  }

  if (*(v52 + 32) <= 2u)
  {
    if (*(v52 + 32))
    {
      v69 = v160;
      v70 = v130;
      if (v54 == 1)
      {
        v167 = 1;
        sub_1D9600D38();
        v71 = v149;
        v72 = v158;
        sub_1D966EDE8();
        if (!v70)
        {
          v166 = 0;
          v73 = v137;
          v74 = sub_1D966EE58();
          v97 = v96;
          v155 = v74;
          v156 = v53;
          v165 = 1;
          v98 = v71;
          v99 = (v157 + 8);
          v112 = sub_1D966EE58();
          v114 = v113;
          (*(v134 + 8))(v98, v73);
          (*v99)(v160, v158);
          swift_unknownObjectRelease();
          v115 = v126;
          *v126 = v155;
          v115[1] = v97;
          v115[2] = v112;
          v115[3] = v114;
          swift_storeEnumTagMultiPayload();
          v107 = v115;
          v105 = v159;
          goto LABEL_34;
        }
      }

      else
      {
        v170 = 2;
        sub_1D9600CE4();
        v72 = v158;
        sub_1D966EDE8();
        if (!v70)
        {
          v169 = 0;
          v89 = v135;
          v90 = sub_1D966EE58();
          v101 = v100;
          v155 = v90;
          v156 = v53;
          v168 = 1;
          v102 = sub_1D966EE58();
          v103 = (v157 + 8);
          v116 = v102;
          v118 = v117;
          (*(v136 + 8))(v49, v89);
          (*v103)(v160, v158);
          swift_unknownObjectRelease();
          v119 = v127;
          *v127 = v155;
          v119[1] = v101;
          v119[2] = v116;
          v119[3] = v118;
          swift_storeEnumTagMultiPayload();
          v107 = v119;
          v105 = v159;
          goto LABEL_34;
        }
      }

      (*(v157 + 8))(v69, v72);
      goto LABEL_11;
    }

    v164 = 0;
    sub_1D9600D8C();
    v81 = v158;
    v82 = v160;
    v83 = v130;
    sub_1D966EDE8();
    if (v83)
    {
      (*(v157 + 8))(v82, v81);
      goto LABEL_11;
    }

    v163 = 0;
    v84 = v133;
    v94 = sub_1D966EEA8();
    v162 = 1;
    v95 = sub_1D966EE48();
    LODWORD(v156) = v110;
    v111 = v48;
    v155 = v95;
    v161 = 2;
    v120 = sub_1D966EE58();
    v122 = v121;
    (*(v146 + 8))(v111, v84);
    (*(v157 + 8))(v160, v81);
    swift_unknownObjectRelease();
    v123 = v125;
    v124 = v155;
    *v125 = v94;
    v123[1] = v124;
    *(v123 + 16) = v156 & 1;
    v123[3] = v120;
    v123[4] = v122;
    swift_storeEnumTagMultiPayload();
    v107 = v123;
    v105 = v159;
LABEL_34:
    v109 = v148;
    v106 = v129;
LABEL_36:
    sub_1D9600AD8(v107, v106, type metadata accessor for LaunchAngelXPCRequest.RequestType);
    sub_1D9600AD8(v106, v109, type metadata accessor for LaunchAngelXPCRequest.RequestType);
    v67 = v105;
    return __swift_destroy_boxed_opaque_existential_1(v67);
  }

  if (*(v52 + 32) <= 4u)
  {
    v56 = v157;
    v55 = v158;
    if (v54 == 3)
    {
      v171 = 3;
      sub_1D9600C30();
      v57 = v150;
      v58 = v160;
      v59 = v130;
      sub_1D966EDE8();
      if (!v59)
      {
        type metadata accessor for InstallSheetContext(0);
        sub_1D9600B94(&qword_1ECB21070, type metadata accessor for InstallSheetContext);
        v60 = v138;
        sub_1D966EE88();
        (*(v139 + 8))(v57, v60);
        (*(v56 + 8))(v58, v55);
        swift_unknownObjectRelease();
        v104 = v128;
        swift_storeEnumTagMultiPayload();
        v105 = v159;
        v106 = v129;
        v107 = v104;
LABEL_35:
        v109 = v148;
        goto LABEL_36;
      }

      (*(v56 + 8))(v58, v55);
    }

    else
    {
      v172 = 4;
      sub_1D9600BDC();
      v85 = v160;
      v86 = v130;
      sub_1D966EDE8();
      v106 = v129;
      if (!v86)
      {
        type metadata accessor for OAuthAuthorizationContext();
        sub_1D9600B94(&qword_1ECB21068, type metadata accessor for OAuthAuthorizationContext);
        v91 = v131;
        v92 = v141;
        v93 = v151;
        sub_1D966EE88();
        (*(v140 + 8))(v93, v92);
        (*(v56 + 8))(v160, v55);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v107 = v91;
        v105 = v159;
        goto LABEL_35;
      }

      (*(v56 + 8))(v85, v55);
    }

    goto LABEL_11;
  }

  v76 = v157;
  v75 = v158;
  if (v54 == 5)
  {
    v173 = 5;
    sub_1D9600B40();
    v77 = v160;
    v78 = v130;
    sub_1D966EDE8();
    if (!v78)
    {
      type metadata accessor for LicenseResolutionContext();
      sub_1D9600B94(&qword_1ECB21060, type metadata accessor for LicenseResolutionContext);
      v79 = v132;
      v80 = v143;
      sub_1D966EE88();
      (*(v142 + 8))(v50, v80);
      (*(v76 + 8))(v77, v75);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v107 = v79;
LABEL_33:
      v105 = v159;
      goto LABEL_34;
    }
  }

  else
  {
    v174 = 6;
    sub_1D9600A84();
    v77 = v160;
    v87 = v130;
    sub_1D966EDE8();
    if (!v87)
    {
      type metadata accessor for ConfirmationSheetContext(0);
      sub_1D9600B94(&qword_1ECB21058, type metadata accessor for ConfirmationSheetContext);
      v88 = v144;
      sub_1D966EE88();
      (*(v145 + 8))(v51, v88);
      (*(v76 + 8))(v77, v75);
      swift_unknownObjectRelease();
      v108 = v147;
      swift_storeEnumTagMultiPayload();
      v107 = v108;
      goto LABEL_33;
    }
  }

  (*(v76 + 8))(v77, v75);
LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  v67 = v159;
  return __swift_destroy_boxed_opaque_existential_1(v67);
}

uint64_t sub_1D9601FF0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 10;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D9602024()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D9602058()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D960208C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 23;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D96020C0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D96020F4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D9602128()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1D960215C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_1D9602214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x5474736575716572 && a2 == 0xEB00000000657079)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D966EFB8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D96022A0(uint64_t a1)
{
  v2 = sub_1D9602490();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D96022DC(uint64_t a1)
{
  v2 = sub_1D9602490();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LaunchAngelXPCRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21078, &qword_1D9671028);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9602490();
  sub_1D966F118();
  type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  sub_1D9600B94(&qword_1ECB21088, type metadata accessor for LaunchAngelXPCRequest.RequestType);
  sub_1D966EF68();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1D9602490()
{
  result = qword_1ECB21080;
  if (!qword_1ECB21080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21080);
  }

  return result;
}

uint64_t LaunchAngelXPCRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21090, &qword_1D9671030);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for LaunchAngelXPCRequest(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9602490();
  sub_1D966F0F8();
  if (!v2)
  {
    v16 = v19;
    sub_1D9600B94(&qword_1ECB21098, type metadata accessor for LaunchAngelXPCRequest.RequestType);
    v17 = v21;
    sub_1D966EE88();
    (*(v20 + 8))(v10, v7);
    sub_1D9600AD8(v17, v14, type metadata accessor for LaunchAngelXPCRequest.RequestType);
    sub_1D9600AD8(v14, v16, type metadata accessor for LaunchAngelXPCRequest);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9602778(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D96027C8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21078, &qword_1D9671028);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9602490();
  sub_1D966F118();
  type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  sub_1D9600B94(&qword_1ECB21088, type metadata accessor for LaunchAngelXPCRequest.RequestType);
  sub_1D966EF68();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1D9602940()
{
  v1 = *v0;
  v2 = 0x6465726F6E6769;
  if (v1 == 2)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = 0xD000000000000018;
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

uint64_t sub_1D96029C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9605CA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D96029EC(uint64_t a1)
{
  v2 = sub_1D96032D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9602A28(uint64_t a1)
{
  v2 = sub_1D96032D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9602A80(uint64_t a1)
{
  v2 = sub_1D960332C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9602ABC(uint64_t a1)
{
  v2 = sub_1D960332C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9602B04(uint64_t a1)
{
  v2 = sub_1D9603428();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9602B40(uint64_t a1)
{
  v2 = sub_1D9603428();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9602B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656D7269666E6F63 && a2 == 0xE900000000000064)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D966EFB8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9602C0C(uint64_t a1)
{
  v2 = sub_1D96033D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9602C48(uint64_t a1)
{
  v2 = sub_1D96033D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9602C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D966EFB8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9602D24(uint64_t a1)
{
  v2 = sub_1D9603380();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9602D60(uint64_t a1)
{
  v2 = sub_1D9603380();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LaunchAngelXPCResponse.ResponseType.encode(to:)(void *a1)
{
  v2 = v1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB210A0, &qword_1D9671038);
  v34 = *(v36 - 8);
  v4 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v32 = &v28 - v5;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB210A8, &qword_1D9671040);
  v33 = *(v35 - 8);
  v6 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v31 = &v28 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB210B0, &qword_1D9671048);
  v30 = *(v8 - 8);
  v9 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB210B8, &qword_1D9671050);
  v29 = *(v12 - 8);
  v13 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB210C0, &qword_1D9671058);
  v38 = *(v16 - 8);
  v39 = v16;
  v17 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v28 - v18;
  v37 = *v2;
  v20 = *(v2 + 8);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D96032D8();
  sub_1D966F118();
  if (v20 <= 1)
  {
    if (!v20)
    {
      v42 = 1;
      sub_1D96033D4();
      v22 = v39;
      sub_1D966EED8();
      sub_1D966EF48();
      (*(v30 + 8))(v11, v8);
      return (*(v38 + 8))(v19, v22);
    }

    v43 = 2;
    sub_1D9603380();
    v23 = v31;
    v22 = v39;
    sub_1D966EED8();
    v40 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20BE8, &qword_1D9671060);
    sub_1D95EDFE4(&qword_1ECB20BF0);
    v24 = v35;
    sub_1D966EF68();
    v25 = v33;
LABEL_7:
    (*(v25 + 8))(v23, v24);
    return (*(v38 + 8))(v19, v22);
  }

  if (v20 == 2)
  {
    v44 = 3;
    sub_1D960332C();
    v23 = v32;
    v22 = v39;
    sub_1D966EED8();
    v24 = v36;
    sub_1D966EF48();
    v25 = v34;
    goto LABEL_7;
  }

  v41 = 0;
  sub_1D9603428();
  v27 = v39;
  sub_1D966EED8();
  (*(v29 + 8))(v15, v12);
  return (*(v38 + 8))(v19, v27);
}

unint64_t sub_1D96032D8()
{
  result = qword_1ECB210C8;
  if (!qword_1ECB210C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB210C8);
  }

  return result;
}

unint64_t sub_1D960332C()
{
  result = qword_1ECB210D0;
  if (!qword_1ECB210D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB210D0);
  }

  return result;
}

unint64_t sub_1D9603380()
{
  result = qword_1ECB210D8;
  if (!qword_1ECB210D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB210D8);
  }

  return result;
}

unint64_t sub_1D96033D4()
{
  result = qword_1ECB210E0;
  if (!qword_1ECB210E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB210E0);
  }

  return result;
}

unint64_t sub_1D9603428()
{
  result = qword_1ECB210E8;
  if (!qword_1ECB210E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB210E8);
  }

  return result;
}

uint64_t LaunchAngelXPCResponse.ResponseType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB210F0, &qword_1D9671068);
  v4 = *(v3 - 8);
  v59 = v3;
  v60 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v64 = &v52 - v6;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB210F8, &qword_1D9671070);
  v61 = *(v57 - 8);
  v7 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v63 = &v52 - v8;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21100, &qword_1D9671078);
  v58 = *(v55 - 8);
  v9 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v11 = &v52 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21108, &qword_1D9671080);
  v56 = *(v12 - 8);
  v13 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v52 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21110, &qword_1D9671088);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v52 - v19;
  v21 = a1[3];
  v22 = a1[4];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1D96032D8();
  v23 = v65;
  sub_1D966F0F8();
  if (!v23)
  {
    v24 = v15;
    v53 = v12;
    v54 = 0;
    v26 = v63;
    v25 = v64;
    v65 = v17;
    v27 = v20;
    v28 = sub_1D966EEB8();
    v29 = *(v28 + 16);
    if (!v29 || ((v30 = *(v28 + 32), v29 == 1) ? (v31 = v30 == 4) : (v31 = 1), v31))
    {
      v32 = sub_1D966ED58();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21050, &qword_1D9671020) + 48);
      *v34 = &type metadata for LaunchAngelXPCResponse.ResponseType;
      sub_1D966EDF8();
      sub_1D966ED48();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
      swift_willThrow();
      (*(v65 + 8))(v20, v16);
LABEL_22:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v66);
    }

    if (*(v28 + 32) <= 1u)
    {
      if (!*(v28 + 32))
      {
        v68 = 0;
        sub_1D9603428();
        v36 = v54;
        sub_1D966EDE8();
        if (v36)
        {
          (*(v65 + 8))(v20, v16);
          swift_unknownObjectRelease();
          return __swift_destroy_boxed_opaque_existential_1(v66);
        }

        (*(v56 + 8))(v24, v53);
        (*(v65 + 8))(v20, v16);
        swift_unknownObjectRelease();
        v48 = 0;
        v49 = 3;
        v50 = v62;
LABEL_27:
        *v50 = v48;
        *(v50 + 8) = v49;
        return __swift_destroy_boxed_opaque_existential_1(v66);
      }

      v69 = 1;
      sub_1D96033D4();
      v41 = v11;
      v42 = v54;
      sub_1D966EDE8();
      if (v42)
      {
        (*(v65 + 8))(v20, v16);
        goto LABEL_22;
      }

      v46 = v55;
      v47 = sub_1D966EE68();
      (*(v58 + 8))(v41, v46);
      (*(v65 + 8))(v20, v16);
      swift_unknownObjectRelease();
      v49 = 0;
      v48 = v47 & 1;
LABEL_26:
      v50 = v62;
      goto LABEL_27;
    }

    v37 = v65;
    if (v30 == 2)
    {
      v70 = 2;
      sub_1D9603380();
      v38 = v54;
      sub_1D966EDE8();
      v39 = v62;
      if (!v38)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20BE8, &qword_1D9671060);
        sub_1D95EDFE4(&qword_1ECB20C00);
        v40 = v57;
        sub_1D966EE88();
        (*(v61 + 8))(v26, v40);
        (*(v37 + 8))(v27, v16);
        swift_unknownObjectRelease();
        v48 = v67;
        v49 = 1;
        v50 = v39;
        goto LABEL_27;
      }
    }

    else
    {
      v71 = 3;
      sub_1D960332C();
      v43 = v54;
      sub_1D966EDE8();
      if (!v43)
      {
        v44 = v59;
        v51 = sub_1D966EE68();
        (*(v60 + 8))(v25, v44);
        (*(v37 + 8))(v27, v16);
        swift_unknownObjectRelease();
        v48 = v51 & 1;
        v49 = 2;
        goto LABEL_26;
      }
    }

    (*(v37 + 8))(v27, v16);
    goto LABEL_22;
  }

  return __swift_destroy_boxed_opaque_existential_1(v66);
}

uint64_t LaunchAngelXPCResponse.responseType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return sub_1D9603CCC(v2, v3);
}

uint64_t sub_1D9603CCC(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

uint64_t LaunchAngelXPCResponse.init(responseType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1D9603D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65736E6F70736572 && a2 == 0xEC00000065707954)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D966EFB8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9603DA0(uint64_t a1)
{
  v2 = sub_1D9603F88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9603DDC(uint64_t a1)
{
  v2 = sub_1D9603F88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LaunchAngelXPCResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21118, &qword_1D9671090);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = a1[4];
  v10 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9603CCC(v8, v10);
  sub_1D9603F88();
  sub_1D966F118();
  v12 = v8;
  v13 = v10;
  sub_1D9603FDC();
  sub_1D966EF68();
  sub_1D9604030(v12, v13);
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D9603F88()
{
  result = qword_1ECB21120;
  if (!qword_1ECB21120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21120);
  }

  return result;
}

unint64_t sub_1D9603FDC()
{
  result = qword_1ECB21128;
  if (!qword_1ECB21128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21128);
  }

  return result;
}

uint64_t sub_1D9604030(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

uint64_t LaunchAngelXPCResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21130, &qword_1D9671098);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9603F88();
  sub_1D966F0F8();
  if (!v2)
  {
    sub_1D96041BC();
    sub_1D966EE88();
    (*(v6 + 8))(v9, v5);
    v11 = v14;
    *a2 = v13;
    *(a2 + 8) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D96041BC()
{
  result = qword_1ECB21138;
  if (!qword_1ECB21138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21138);
  }

  return result;
}

uint64_t sub_1D9604268()
{
  result = type metadata accessor for LaunchAngelXPCRequest.RequestType(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D9604324()
{
  sub_1D960448C();
  if (v0 <= 0x3F)
  {
    sub_1D960450C(319, &qword_1ECB21170);
    if (v1 <= 0x3F)
    {
      sub_1D960450C(319, &qword_1ECB21178);
      if (v2 <= 0x3F)
      {
        sub_1D9604568(319, &qword_1ECB21180, type metadata accessor for InstallSheetContext);
        if (v3 <= 0x3F)
        {
          sub_1D9604568(319, &qword_1ECB21188, type metadata accessor for OAuthAuthorizationContext);
          if (v4 <= 0x3F)
          {
            sub_1D9604568(319, &qword_1ECB21190, type metadata accessor for LicenseResolutionContext);
            if (v5 <= 0x3F)
            {
              sub_1D9604568(319, &qword_1ECB21198, type metadata accessor for ConfirmationSheetContext);
              if (v6 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D960448C()
{
  if (!qword_1ECB21160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB21168, &qword_1D9671218);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ECB21160);
    }
  }
}

void sub_1D960450C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D9604568(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_14MarketplaceKit22LaunchAngelXPCResponseV12ResponseTypeO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1D96045F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D960463C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D9604680(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for LaunchAngelXPCRequest.RequestType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LaunchAngelXPCRequest.RequestType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LaunchAngelXPCRequest.RequestType.DisplayProductPageCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LaunchAngelXPCRequest.RequestType.DisplayProductPageCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D9604A1C()
{
  result = qword_1ECB211A0;
  if (!qword_1ECB211A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB211A0);
  }

  return result;
}

unint64_t sub_1D9604A74()
{
  result = qword_1ECB211A8;
  if (!qword_1ECB211A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB211A8);
  }

  return result;
}

unint64_t sub_1D9604ACC()
{
  result = qword_1ECB211B0;
  if (!qword_1ECB211B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB211B0);
  }

  return result;
}

unint64_t sub_1D9604B24()
{
  result = qword_1ECB211B8;
  if (!qword_1ECB211B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB211B8);
  }

  return result;
}

unint64_t sub_1D9604B7C()
{
  result = qword_1ECB211C0;
  if (!qword_1ECB211C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB211C0);
  }

  return result;
}

unint64_t sub_1D9604BD4()
{
  result = qword_1ECB211C8;
  if (!qword_1ECB211C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB211C8);
  }

  return result;
}

unint64_t sub_1D9604C2C()
{
  result = qword_1ECB211D0;
  if (!qword_1ECB211D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB211D0);
  }

  return result;
}

unint64_t sub_1D9604C84()
{
  result = qword_1ECB211D8;
  if (!qword_1ECB211D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB211D8);
  }

  return result;
}

unint64_t sub_1D9604CDC()
{
  result = qword_1ECB211E0;
  if (!qword_1ECB211E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB211E0);
  }

  return result;
}

unint64_t sub_1D9604D34()
{
  result = qword_1ECB211E8;
  if (!qword_1ECB211E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB211E8);
  }

  return result;
}

unint64_t sub_1D9604D8C()
{
  result = qword_1ECB211F0;
  if (!qword_1ECB211F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB211F0);
  }

  return result;
}

unint64_t sub_1D9604DE4()
{
  result = qword_1ECB211F8;
  if (!qword_1ECB211F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB211F8);
  }

  return result;
}

unint64_t sub_1D9604E3C()
{
  result = qword_1ECB21200;
  if (!qword_1ECB21200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21200);
  }

  return result;
}

unint64_t sub_1D9604E94()
{
  result = qword_1ECB21208;
  if (!qword_1ECB21208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21208);
  }

  return result;
}

unint64_t sub_1D9604EEC()
{
  result = qword_1ECB21210;
  if (!qword_1ECB21210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21210);
  }

  return result;
}

unint64_t sub_1D9604F44()
{
  result = qword_1ECB21218;
  if (!qword_1ECB21218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21218);
  }

  return result;
}

unint64_t sub_1D9604F9C()
{
  result = qword_1ECB21220;
  if (!qword_1ECB21220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21220);
  }

  return result;
}

unint64_t sub_1D9604FF4()
{
  result = qword_1ECB21228;
  if (!qword_1ECB21228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21228);
  }

  return result;
}

unint64_t sub_1D960504C()
{
  result = qword_1ECB21230;
  if (!qword_1ECB21230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21230);
  }

  return result;
}

unint64_t sub_1D96050A4()
{
  result = qword_1ECB21238;
  if (!qword_1ECB21238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21238);
  }

  return result;
}

unint64_t sub_1D96050FC()
{
  result = qword_1ECB21240;
  if (!qword_1ECB21240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21240);
  }

  return result;
}

unint64_t sub_1D9605154()
{
  result = qword_1ECB21248;
  if (!qword_1ECB21248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21248);
  }

  return result;
}

unint64_t sub_1D96051AC()
{
  result = qword_1ECB21250;
  if (!qword_1ECB21250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21250);
  }

  return result;
}

unint64_t sub_1D9605204()
{
  result = qword_1ECB21258;
  if (!qword_1ECB21258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21258);
  }

  return result;
}

unint64_t sub_1D960525C()
{
  result = qword_1ECB21260;
  if (!qword_1ECB21260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21260);
  }

  return result;
}

unint64_t sub_1D96052B4()
{
  result = qword_1ECB21268;
  if (!qword_1ECB21268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21268);
  }

  return result;
}

unint64_t sub_1D960530C()
{
  result = qword_1ECB21270;
  if (!qword_1ECB21270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21270);
  }

  return result;
}

unint64_t sub_1D9605364()
{
  result = qword_1ECB21278;
  if (!qword_1ECB21278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21278);
  }

  return result;
}

unint64_t sub_1D96053BC()
{
  result = qword_1ECB21280;
  if (!qword_1ECB21280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21280);
  }

  return result;
}

unint64_t sub_1D9605414()
{
  result = qword_1ECB21288;
  if (!qword_1ECB21288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21288);
  }

  return result;
}

unint64_t sub_1D960546C()
{
  result = qword_1ECB21290;
  if (!qword_1ECB21290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21290);
  }

  return result;
}

unint64_t sub_1D96054C4()
{
  result = qword_1ECB21298;
  if (!qword_1ECB21298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21298);
  }

  return result;
}

unint64_t sub_1D960551C()
{
  result = qword_1ECB212A0;
  if (!qword_1ECB212A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB212A0);
  }

  return result;
}

unint64_t sub_1D9605574()
{
  result = qword_1ECB212A8;
  if (!qword_1ECB212A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB212A8);
  }

  return result;
}

unint64_t sub_1D96055CC()
{
  result = qword_1ECB212B0;
  if (!qword_1ECB212B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB212B0);
  }

  return result;
}

unint64_t sub_1D9605624()
{
  result = qword_1ECB212B8;
  if (!qword_1ECB212B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB212B8);
  }

  return result;
}

unint64_t sub_1D960567C()
{
  result = qword_1ECB212C0;
  if (!qword_1ECB212C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB212C0);
  }

  return result;
}

unint64_t sub_1D96056D4()
{
  result = qword_1ECB212C8;
  if (!qword_1ECB212C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB212C8);
  }

  return result;
}

unint64_t sub_1D960572C()
{
  result = qword_1ECB212D0;
  if (!qword_1ECB212D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB212D0);
  }

  return result;
}

unint64_t sub_1D9605784()
{
  result = qword_1ECB212D8;
  if (!qword_1ECB212D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB212D8);
  }

  return result;
}

unint64_t sub_1D96057DC()
{
  result = qword_1ECB212E0;
  if (!qword_1ECB212E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB212E0);
  }

  return result;
}

unint64_t sub_1D9605834()
{
  result = qword_1ECB212E8;
  if (!qword_1ECB212E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB212E8);
  }

  return result;
}

unint64_t sub_1D960588C()
{
  result = qword_1ECB212F0;
  if (!qword_1ECB212F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB212F0);
  }

  return result;
}

unint64_t sub_1D96058E4()
{
  result = qword_1ECB212F8;
  if (!qword_1ECB212F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB212F8);
  }

  return result;
}

uint64_t sub_1D9605938(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001D9680860 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D9680880 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D96808A0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D96808C0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D96808E0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D9680900 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D9680920 == a2)
  {

    return 6;
  }

  else
  {
    v5 = sub_1D966EFB8();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1D9605B84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496D657469 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496E6F6973726576 && a2 == 0xE900000000000044 || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7562697274736964 && a2 == 0xED00004449726F74)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D966EFB8();

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

uint64_t sub_1D9605CA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465726F6E6769 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D9680940 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D96808E0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D9680960 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D966EFB8();

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

uint64_t sub_1D9605EC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OAuthAuthorizationContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OAuthAuthorizationRequest.run()()
{
  v1[4] = v0;
  v2 = *(*(type metadata accessor for LaunchAngelXPCRequest(0) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v3 = *(*(type metadata accessor for OAuthAuthorizationRequest() - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v4 = sub_1D966E8E8();
  v1[7] = v4;
  v5 = *(v4 - 8);
  v1[8] = v5;
  v6 = *(v5 + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9606040, 0, 0);
}

uint64_t sub_1D9606040()
{
  v21 = v0;
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[4];
  sub_1D966E898();
  sub_1D960656C(v3, v2, type metadata accessor for OAuthAuthorizationRequest);
  v4 = sub_1D966E8C8();
  v5 = sub_1D966EBB8();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  v8 = v0[9];
  v10 = v0[6];
  v9 = v0[7];
  if (v6)
  {
    v19 = v0[9];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    v13 = *v10;
    v14 = v10[1];

    sub_1D96065D4(v10, type metadata accessor for OAuthAuthorizationRequest);
    v15 = sub_1D9606634(v13, v14, &v20);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1D95E0000, v4, v5, "[%s] Requesting OAuth Authorization using Launch Angel...", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1DA734680](v12, -1, -1);
    MEMORY[0x1DA734680](v11, -1, -1);

    (*(v7 + 8))(v19, v9);
  }

  else
  {

    sub_1D96065D4(v10, type metadata accessor for OAuthAuthorizationRequest);
    (*(v7 + 8))(v8, v9);
  }

  sub_1D960656C(v0[4], v0[5], type metadata accessor for OAuthAuthorizationContext);
  type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  swift_storeEnumTagMultiPayload();
  v16 = swift_task_alloc();
  v0[10] = v16;
  *v16 = v0;
  v16[1] = sub_1D96062A0;
  v17 = v0[5];

  return static LaunchAngelConnectionUtilities.handleLaunchAngelRequest(_:)((v0 + 2), v17);
}

uint64_t sub_1D96062A0()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1D9606480;
  }

  else
  {
    v3 = sub_1D96063B4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D96063B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v2 != 1)
  {
    sub_1D9604030(*(v0 + 16), v2);
    v1 = sub_1D9606BDC(MEMORY[0x1E69E7CC0]);
  }

  v3 = *(v0 + 72);
  v4 = *(v0 + 48);
  sub_1D96065D4(*(v0 + 40), type metadata accessor for LaunchAngelXPCRequest);

  v5 = *(v0 + 8);

  return v5(v1);
}

uint64_t sub_1D9606480()
{
  v1 = v0[9];
  v2 = v0[6];
  sub_1D96065D4(v0[5], type metadata accessor for LaunchAngelXPCRequest);

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t type metadata accessor for OAuthAuthorizationRequest()
{
  result = qword_1ECB21300;
  if (!qword_1ECB21300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D960656C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D96065D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9606634(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D9606700(v11, 0, 0, 1, a1, a2);
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
    sub_1D95ED4F0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1D9606700(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1D960680C(a5, a6);
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
    result = sub_1D966ED68();
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

uint64_t sub_1D960680C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1D9606858(a1, a2);
  sub_1D9606988(&unk_1F54F2108);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1D9606858(uint64_t a1, unint64_t a2)
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

  v6 = sub_1D9606A74(v5, 0);
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

  result = sub_1D966ED68();
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
        v10 = sub_1D966E9F8();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1D9606A74(v10, 0);
        result = sub_1D966ED18();
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

uint64_t sub_1D9606988(uint64_t result)
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

  result = sub_1D9606AE8(result, v12, 1, v3);
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

void *sub_1D9606A74(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21328, &qword_1D9672458);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1D9606AE8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21328, &qword_1D9672458);
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

unint64_t sub_1D9606BDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20C08, &unk_1D9672460);
    v3 = sub_1D966EDC8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1D9654B30(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_1D9606D18()
{
  result = type metadata accessor for OAuthAuthorizationContext();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D9606D84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21318, &qword_1D9672448);
    v3 = sub_1D966EDC8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D9606F9C(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1D9654B30(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D960700C(&v15, (v3[7] + 32 * result));
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

void *sub_1D9606E94(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21310, &qword_1D9672440);
  v3 = sub_1D966EDC8();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_1D9654BA8(v4);
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

    v8 = sub_1D9654BA8(v4);
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

uint64_t sub_1D9606F9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21320, &qword_1D9672450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1D960700C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t ConfirmationSheetContext.symbolConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t ConfirmationSheetContext.title.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t ConfirmationSheetContext.subtitle.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t ConfirmationSheetContext.moreInformationLink.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[12];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1D96070A4(v2, v3);
}

uint64_t sub_1D96070A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t ConfirmationSheetContext.miniProductPageConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  v4 = *(v1 + 128);
  v5 = *(v1 + 136);
  v6 = *(v1 + 144);
  v7 = *(v1 + 152);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = *(v1 + 160);
  return sub_1D9607114(v2, v3);
}

uint64_t sub_1D9607114(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t ConfirmationSheetContext.primaryButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 176);
  v3 = *(v1 + 184);
  *a1 = *(v1 + 168);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t ConfirmationSheetContext.secondaryButtonText.getter()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  return v1;
}

uint64_t ConfirmationSheetContext.init(logKey:symbolConfiguration:title:subtitle:moreInformationLink:bulletPoints:miniProductPageConfiguration:primaryButton:secondaryButtonText:postPrimaryButtonAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v16 = *(a3 + 16);
  v17 = *(a11 + 48);
  v18 = *a12;
  v19 = a12[1];
  v20 = *(a12 + 16);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = *a3;
  *(a9 + 32) = v16;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  v21 = a8[1];
  *(a9 + 72) = *a8;
  *(a9 + 88) = v21;
  *(a9 + 104) = a10;
  v22 = *(a11 + 16);
  *(a9 + 112) = *a11;
  *(a9 + 128) = v22;
  *(a9 + 144) = *(a11 + 32);
  *(a9 + 160) = v17;
  *(a9 + 168) = v18;
  *(a9 + 176) = v19;
  *(a9 + 184) = v20;
  *(a9 + 192) = a13;
  *(a9 + 200) = a14;
  v23 = type metadata accessor for ConfirmationSheetContext(0);
  return sub_1D95FF284(a15, a9 + *(v23 + 52), &qword_1ECB21330, &qword_1D9672470);
}

unint64_t sub_1D96072BC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x427972616D697270;
    v6 = 0xD000000000000017;
    if (a1 == 8)
    {
      v6 = 0xD000000000000013;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD00000000000001CLL;
    if (a1 == 5)
    {
      v7 = 0x6F5074656C6C7562;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x79654B676F6CLL;
    v2 = 0x656C746974;
    v3 = 0x656C746974627573;
    if (a1 != 3)
    {
      v3 = 0xD000000000000013;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000013;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D9607418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D960EFE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9607440(uint64_t a1)
{
  v2 = sub_1D9607908();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D960747C(uint64_t a1)
{
  v2 = sub_1D9607908();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ConfirmationSheetContext.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21338, &qword_1D9672478);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v34 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9607908();
  sub_1D966F118();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v35) = 0;
  sub_1D966EF38();
  if (!v2)
  {
    v13 = v3[3];
    v14 = *(v3 + 32);
    v35 = v3[2];
    v36 = v13;
    LOBYTE(v37) = v14;
    v42 = 1;
    sub_1D960795C();

    sub_1D966EF18();

    v15 = v3[5];
    v16 = v3[6];
    LOBYTE(v35) = 2;
    sub_1D966EF38();
    v17 = v3[7];
    v18 = v3[8];
    LOBYTE(v35) = 3;
    sub_1D966EEE8();
    v19 = v3[10];
    v20 = v3[11];
    v21 = v3[12];
    v35 = v3[9];
    v36 = v19;
    v37 = v20;
    v38 = v21;
    v42 = 4;
    sub_1D96070A4(v35, v19);
    sub_1D96079B0();
    sub_1D966EF18();
    sub_1D9607A04(v35, v36);
    v35 = v3[13];
    v42 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21358, &qword_1D9672480);
    sub_1D9608384(&qword_1ECB21360, sub_1D9607A48);
    sub_1D966EF18();
    v22 = v3[15];
    v23 = v3[16];
    v24 = v3[17];
    v25 = v3[18];
    v26 = v3[19];
    v27 = *(v3 + 160);
    v35 = v3[14];
    v36 = v22;
    v37 = v23;
    v38 = v24;
    v39 = v25;
    v40 = v26;
    v41 = v27;
    v42 = 6;
    sub_1D9607114(v35, v22);
    sub_1D9607A9C();
    sub_1D966EF18();
    sub_1D9607AF0(v35, v36);
    v28 = v3[22];
    v29 = *(v3 + 184);
    v35 = v3[21];
    v36 = v28;
    LOBYTE(v37) = v29;
    v42 = 7;
    sub_1D9607B40();

    sub_1D966EF68();

    v30 = v3[24];
    v31 = v3[25];
    LOBYTE(v35) = 8;
    sub_1D966EEE8();
    v32 = *(type metadata accessor for ConfirmationSheetContext(0) + 52);
    LOBYTE(v35) = 9;
    type metadata accessor for ConfirmationSheetPostPrimaryButtonAction(0);
    sub_1D96084F8(&qword_1ECB21380, type metadata accessor for ConfirmationSheetPostPrimaryButtonAction);
    sub_1D966EF18();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D9607908()
{
  result = qword_1ECB21340;
  if (!qword_1ECB21340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21340);
  }

  return result;
}

unint64_t sub_1D960795C()
{
  result = qword_1ECB21348;
  if (!qword_1ECB21348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21348);
  }

  return result;
}

unint64_t sub_1D96079B0()
{
  result = qword_1ECB21350;
  if (!qword_1ECB21350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21350);
  }

  return result;
}

uint64_t sub_1D9607A04(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1D9607A48()
{
  result = qword_1ECB21368;
  if (!qword_1ECB21368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21368);
  }

  return result;
}

unint64_t sub_1D9607A9C()
{
  result = qword_1ECB21370;
  if (!qword_1ECB21370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21370);
  }

  return result;
}

uint64_t sub_1D9607AF0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1D9607B40()
{
  result = qword_1ECB21378;
  if (!qword_1ECB21378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21378);
  }

  return result;
}

uint64_t ConfirmationSheetContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21330, &qword_1D9672470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v33 - v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21388, &qword_1D9672488);
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v11 = &v33 - v10;
  v12 = type metadata accessor for ConfirmationSheetContext(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v17 = a1[4];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D9607908();
  v36 = v11;
  sub_1D966F0F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  v33 = v7;
  v34 = v15;
  v18 = v8;
  LOBYTE(v39) = 0;
  v19 = sub_1D966EE58();
  v20 = v34;
  *v34 = v19;
  v20[1] = v21;
  v43 = 1;
  sub_1D96082DC();
  sub_1D966EE38();
  v22 = v40;
  *(v20 + 1) = v39;
  *(v20 + 32) = v22;
  LOBYTE(v39) = 2;
  v20[5] = sub_1D966EE58();
  v20[6] = v23;
  LOBYTE(v39) = 3;
  v20[7] = sub_1D966EE08();
  v20[8] = v24;
  v43 = 4;
  sub_1D9608330();
  sub_1D966EE38();
  v25 = v40;
  *(v20 + 9) = v39;
  *(v20 + 11) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21358, &qword_1D9672480);
  v43 = 5;
  sub_1D9608384(&qword_1ECB213A0, sub_1D96083FC);
  sub_1D966EE38();
  v20[13] = v39;
  v43 = 6;
  sub_1D9608450();
  sub_1D966EE38();
  v26 = v42;
  v27 = v40;
  *(v20 + 7) = v39;
  *(v20 + 8) = v27;
  *(v20 + 9) = v41;
  *(v20 + 160) = v26;
  v43 = 7;
  sub_1D96084A4();
  sub_1D966EE88();
  v28 = *(&v39 + 1);
  v29 = v40;
  v20[21] = v39;
  v20[22] = v28;
  *(v20 + 184) = v29;
  LOBYTE(v39) = 8;
  v20[24] = sub_1D966EE08();
  v20[25] = v30;
  type metadata accessor for ConfirmationSheetPostPrimaryButtonAction(0);
  LOBYTE(v39) = 9;
  sub_1D96084F8(&qword_1ECB213C0, type metadata accessor for ConfirmationSheetPostPrimaryButtonAction);
  sub_1D966EE38();
  (*(v18 + 8))(v36, v37);
  v31 = v34;
  sub_1D95FF284(v33, v34 + *(v12 + 52), &qword_1ECB21330, &qword_1D9672470);
  sub_1D960A794(v31, v35, type metadata accessor for ConfirmationSheetContext);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return sub_1D960A7FC(v31, type metadata accessor for ConfirmationSheetContext);
}

unint64_t sub_1D96082DC()
{
  result = qword_1ECB21390;
  if (!qword_1ECB21390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21390);
  }

  return result;
}

unint64_t sub_1D9608330()
{
  result = qword_1ECB21398;
  if (!qword_1ECB21398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21398);
  }

  return result;
}

uint64_t sub_1D9608384(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB21358, &qword_1D9672480);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D96083FC()
{
  result = qword_1ECB213A8;
  if (!qword_1ECB213A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB213A8);
  }

  return result;
}

unint64_t sub_1D9608450()
{
  result = qword_1ECB213B0;
  if (!qword_1ECB213B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB213B0);
  }

  return result;
}

unint64_t sub_1D96084A4()
{
  result = qword_1ECB213B8;
  if (!qword_1ECB213B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB213B8);
  }

  return result;
}

uint64_t sub_1D96084F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ConfirmationSheetBulletPoint.icon.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ConfirmationSheetBulletPoint.header.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ConfirmationSheetBulletPoint.body.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void __swiftcall ConfirmationSheetBulletPoint.init(icon:header:body:)(MarketplaceKit::ConfirmationSheetBulletPoint *__return_ptr retstr, Swift::String icon, Swift::String header, Swift::String body)
{
  retstr->field1D9688664 = icon;
  retstr->field1D9688670 = header;
  retstr->field1D968867C = body;
}

uint64_t sub_1D9608610()
{
  v1 = 0x726564616568;
  if (*v0 != 1)
  {
    v1 = 2036625250;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1852793705;
  }
}

uint64_t sub_1D9608658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D960F318(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9608680(uint64_t a1)
{
  v2 = sub_1D96088BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D96086BC(uint64_t a1)
{
  v2 = sub_1D96088BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ConfirmationSheetBulletPoint.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB213C8, &qword_1D9672490);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[3] = v1[3];
  v15[4] = v10;
  v11 = v1[4];
  v15[1] = v1[5];
  v15[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D96088BC();
  sub_1D966F118();
  v18 = 0;
  v13 = v15[5];
  sub_1D966EF38();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v17 = 1;
  sub_1D966EF38();
  v16 = 2;
  sub_1D966EF38();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D96088BC()
{
  result = qword_1ECB213D0;
  if (!qword_1ECB213D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB213D0);
  }

  return result;
}

uint64_t ConfirmationSheetBulletPoint.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB213D8, &qword_1D9672498);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D96088BC();
  sub_1D966F0F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v11 = sub_1D966EE58();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = sub_1D966EE58();
  v23 = v14;
  v25 = 2;
  v15 = sub_1D966EE58();
  v17 = v16;
  v18 = v15;
  (*(v6 + 8))(v9, v5);
  v19 = v23;
  *a2 = v24;
  a2[1] = v13;
  a2[2] = v22;
  a2[3] = v19;
  a2[4] = v18;
  a2[5] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

MarketplaceKit::ConfirmationSheetSymbol __swiftcall ConfirmationSheetSymbol.init(symbolName:enableHeirarchicalColors:)(MarketplaceKit::ConfirmationSheetSymbol symbolName, Swift::Bool_optional enableHeirarchicalColors)
{
  *v2 = symbolName.field1D9688698;
  *(v2 + 16) = enableHeirarchicalColors;
  symbolName.field1D96886A4 = enableHeirarchicalColors;
  return symbolName;
}

unint64_t sub_1D9608BCC()
{
  if (*v0)
  {
    result = 0xD000000000000018;
  }

  else
  {
    result = 0x614E6C6F626D7973;
  }

  *v0;
  return result;
}

uint64_t sub_1D9608C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x614E6C6F626D7973 && a2 == 0xEA0000000000656DLL;
  if (v6 || (sub_1D966EFB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D9680A20 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D966EFB8();

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

uint64_t sub_1D9608CFC(uint64_t a1)
{
  v2 = sub_1D9608F08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9608D38(uint64_t a1)
{
  v2 = sub_1D9608F08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ConfirmationSheetSymbol.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB213E0, &qword_1D96724A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v14 = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9608F08();
  sub_1D966F118();
  v16 = 0;
  v11 = v13[1];
  sub_1D966EF38();
  if (!v11)
  {
    v15 = 1;
    sub_1D966EEF8();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D9608F08()
{
  result = qword_1ECB213E8;
  if (!qword_1ECB213E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB213E8);
  }

  return result;
}

uint64_t ConfirmationSheetSymbol.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB213F0, &qword_1D96724A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9608F08();
  sub_1D966F0F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v11 = sub_1D966EE58();
  v13 = v12;
  v14 = v11;
  v18 = 1;
  v15 = sub_1D966EE18();
  (*(v6 + 8))(v9, v5);
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ConfirmationSheetMoreInformationLink.label.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ConfirmationSheetMoreInformationLink.URL.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

MarketplaceKit::ConfirmationSheetMoreInformationLink __swiftcall ConfirmationSheetMoreInformationLink.init(label:URL:)(Swift::String label, Swift::String URL)
{
  *v2 = label;
  v2[1] = URL;
  result.field1D96886CC = URL;
  result.field1D96886C0 = label;
  return result;
}

uint64_t sub_1D96091D4()
{
  if (*v0)
  {
    result = 5001813;
  }

  else
  {
    result = 0x6C6562616CLL;
  }

  *v0;
  return result;
}

uint64_t sub_1D9609204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_1D966EFB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 5001813 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D966EFB8();

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

uint64_t sub_1D96092DC(uint64_t a1)
{
  v2 = sub_1D96094E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9609318(uint64_t a1)
{
  v2 = sub_1D96094E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ConfirmationSheetMoreInformationLink.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB213F8, &qword_1D96724B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D96094E8();
  sub_1D966F118();
  v16 = 0;
  v12 = v14[3];
  sub_1D966EF38();
  if (!v12)
  {
    v15 = 1;
    sub_1D966EF38();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D96094E8()
{
  result = qword_1ECB21400;
  if (!qword_1ECB21400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21400);
  }

  return result;
}

uint64_t ConfirmationSheetMoreInformationLink.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21408, &qword_1D96724B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D96094E8();
  sub_1D966F0F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v11 = sub_1D966EE58();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_1D966EE58();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ConfirmationSheetMiniProductPageConfiguration.itemID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ConfirmationSheetMiniProductPageConfiguration.versionID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ConfirmationSheetMiniProductPageConfiguration.distributorID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void __swiftcall ConfirmationSheetMiniProductPageConfiguration.init(itemID:versionID:distributorID:isForAppStore:)(MarketplaceKit::ConfirmationSheetMiniProductPageConfiguration *__return_ptr retstr, Swift::String itemID, Swift::String_optional versionID, Swift::String_optional distributorID, Swift::Bool_optional isForAppStore)
{
  retstr->field1D96886E8 = itemID;
  retstr->field1D96886F4 = versionID;
  retstr->field1D9688700 = distributorID;
  retstr->field1D968870C = isForAppStore;
}

uint64_t sub_1D9609818()
{
  v1 = 0x44496D657469;
  v2 = 0x7562697274736964;
  if (*v0 != 2)
  {
    v2 = 0x707041726F467369;
  }

  if (*v0)
  {
    v1 = 0x496E6F6973726576;
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

uint64_t sub_1D96098AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D960F42C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D96098D4(uint64_t a1)
{
  v2 = sub_1D9609B3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9609910(uint64_t a1)
{
  v2 = sub_1D9609B3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ConfirmationSheetMiniProductPageConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21410, &qword_1D96724C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[3] = v1[3];
  v15[4] = v10;
  v11 = v1[4];
  v15[1] = v1[5];
  v15[2] = v11;
  v16 = *(v1 + 48);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9609B3C();
  sub_1D966F118();
  v20 = 0;
  v13 = v15[5];
  sub_1D966EF38();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v19 = 1;
  sub_1D966EEE8();
  v18 = 2;
  sub_1D966EEE8();
  v17 = 3;
  sub_1D966EEF8();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D9609B3C()
{
  result = qword_1ECB21418;
  if (!qword_1ECB21418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21418);
  }

  return result;
}

uint64_t ConfirmationSheetMiniProductPageConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21420, &unk_1D96724C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9609B3C();
  sub_1D966F0F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = 0;
  v11 = sub_1D966EE58();
  v27 = v12;
  v30 = 1;
  v13 = sub_1D966EE08();
  v26 = v14;
  v24 = v13;
  v29 = 2;
  v23 = sub_1D966EE08();
  v25 = v15;
  v28 = 3;
  v17 = sub_1D966EE18();
  (*(v6 + 8))(v9, v5);
  v19 = v26;
  v18 = v27;
  *a2 = v11;
  *(a2 + 8) = v18;
  v20 = v23;
  *(a2 + 16) = v24;
  *(a2 + 24) = v19;
  v21 = v25;
  *(a2 + 32) = v20;
  *(a2 + 40) = v21;
  *(a2 + 48) = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ConfirmationSheetOsloSheetConfiguration.paymentSheetTitle.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ConfirmationSheetOsloSheetConfiguration.paymentSheetLabel.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ConfirmationSheetOsloSheetConfiguration.processingText.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ConfirmationSheetOsloSheetConfiguration.init(paymentSheetTitle:paymentSheetLabel:processingText:iconURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  v10 = type metadata accessor for ConfirmationSheetOsloSheetConfiguration(0);
  return sub_1D95FF284(a7, a8 + *(v10 + 28), &qword_1ECB20848, &qword_1D9670000);
}

unint64_t sub_1D9609FE8()
{
  v1 = 0x69737365636F7270;
  if (*v0 != 2)
  {
    v1 = 0x4C52556E6F6369;
  }

  *v0;
  if (*v0 <= 1u)
  {
    return 0xD000000000000011;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1D960A078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D960F5A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D960A0A0(uint64_t a1)
{
  v2 = sub_1D960A354();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D960A0DC(uint64_t a1)
{
  v2 = sub_1D960A354();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ConfirmationSheetOsloSheetConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21428, &qword_1D96724D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D960A354();
  sub_1D966F118();
  v11 = *v3;
  v12 = v3[1];
  v19[15] = 0;
  sub_1D966EF38();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v19[14] = 1;
    sub_1D966EF38();
    v15 = v3[4];
    v16 = v3[5];
    v19[13] = 2;
    sub_1D966EF38();
    v17 = *(type metadata accessor for ConfirmationSheetOsloSheetConfiguration(0) + 28);
    v19[12] = 3;
    sub_1D966E5B8();
    sub_1D96084F8(&qword_1ECB20860, MEMORY[0x1E6968FB0]);
    sub_1D966EF18();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D960A354()
{
  result = qword_1ECB21430;
  if (!qword_1ECB21430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21430);
  }

  return result;
}

uint64_t ConfirmationSheetOsloSheetConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20848, &qword_1D9670000);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21438, &qword_1D96724E0);
  v27 = *(v8 - 8);
  v28 = v8;
  v9 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v24 - v10;
  v12 = type metadata accessor for ConfirmationSheetOsloSheetConfiguration(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D960A354();
  sub_1D966F0F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v12;
  v17 = v7;
  v19 = v27;
  v18 = v28;
  v32 = 0;
  *v15 = sub_1D966EE58();
  v15[1] = v20;
  v31 = 1;
  v15[2] = sub_1D966EE58();
  v15[3] = v21;
  v30 = 2;
  v24[1] = 0;
  v15[4] = sub_1D966EE58();
  v15[5] = v22;
  sub_1D966E5B8();
  v29 = 3;
  sub_1D96084F8(&qword_1ECB20870, MEMORY[0x1E6968FB0]);
  sub_1D966EE38();
  (*(v19 + 8))(v11, v18);
  sub_1D95FF284(v17, v15 + *(v25 + 28), &qword_1ECB20848, &qword_1D9670000);
  sub_1D960A794(v15, v26, type metadata accessor for ConfirmationSheetOsloSheetConfiguration);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D960A7FC(v15, type metadata accessor for ConfirmationSheetOsloSheetConfiguration);
}

uint64_t sub_1D960A794(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D960A7FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ConfirmationSheetLAConfiguration.localizedReason.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ConfirmationSheetLAConfiguration.touchIDTitle.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ConfirmationSheetLAConfiguration.touchIDReason.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ConfirmationSheetLAConfiguration.passcodeTitle.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t ConfirmationSheetLAConfiguration.passcodeReason.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

void __swiftcall ConfirmationSheetLAConfiguration.init(localizedReason:touchIDTitle:touchIDReason:passcodeTitle:passcodeReason:)(MarketplaceKit::ConfirmationSheetLAConfiguration *__return_ptr retstr, Swift::String localizedReason, Swift::String touchIDTitle, Swift::String touchIDReason, Swift::String passcodeTitle, Swift::String passcodeReason)
{
  retstr->field1D9688768 = localizedReason;
  retstr->field1D9688774 = touchIDTitle;
  retstr->field1D9688780 = touchIDReason;
  retstr->field1D968878C = passcodeTitle;
  retstr->field1D9688798 = passcodeReason;
}

uint64_t sub_1D960A998()
{
  v1 = 0x657A696C61636F6CLL;
  v2 = 0x5244496863756F74;
  if (*v0 != 2)
  {
    v2 = 0x65646F6373736170;
  }

  if (*v0)
  {
    v1 = 0x5444496863756F74;
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

uint64_t sub_1D960AA6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D960F724(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D960AA94(uint64_t a1)
{
  v2 = sub_1D960AD30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D960AAD0(uint64_t a1)
{
  v2 = sub_1D960AD30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ConfirmationSheetLAConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21440, &qword_1D96724E8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v17 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v17[7] = v1[3];
  v17[8] = v10;
  v11 = v1[4];
  v17[5] = v1[5];
  v17[6] = v11;
  v12 = v1[6];
  v17[3] = v1[7];
  v17[4] = v12;
  v13 = v1[8];
  v17[1] = v1[9];
  v17[2] = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D960AD30();
  sub_1D966F118();
  v22 = 0;
  v15 = v17[9];
  sub_1D966EF38();
  if (v15)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v21 = 1;
  sub_1D966EF38();
  v20 = 2;
  sub_1D966EF38();
  v19 = 3;
  sub_1D966EF38();
  v18 = 4;
  sub_1D966EF38();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D960AD30()
{
  result = qword_1ECB21448;
  if (!qword_1ECB21448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21448);
  }

  return result;
}

uint64_t ConfirmationSheetLAConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21450, &qword_1D96724F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D960AD30();
  sub_1D966F0F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v38[0]) = 0;
  v11 = sub_1D966EE58();
  v32 = v12;
  LOBYTE(v38[0]) = 1;
  v13 = sub_1D966EE58();
  v31 = v14;
  v28 = v13;
  LOBYTE(v38[0]) = 2;
  v27 = sub_1D966EE58();
  v30 = v15;
  LOBYTE(v38[0]) = 3;
  v26 = sub_1D966EE58();
  v29 = v16;
  v39 = 4;
  v17 = sub_1D966EE58();
  v19 = v18;
  (*(v6 + 8))(v9, v5);
  *&v33 = v11;
  *(&v33 + 1) = v32;
  v20 = v31;
  *&v34 = v28;
  *(&v34 + 1) = v31;
  v21 = v30;
  *&v35 = v27;
  *(&v35 + 1) = v30;
  v22 = v29;
  *&v36 = v26;
  *(&v36 + 1) = v29;
  *&v37 = v17;
  *(&v37 + 1) = v19;
  v23 = v36;
  a2[2] = v35;
  a2[3] = v23;
  a2[4] = v37;
  v24 = v34;
  *a2 = v33;
  a2[1] = v24;
  sub_1D960B15C(&v33, v38);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v38[0] = v11;
  v38[1] = v32;
  v38[2] = v28;
  v38[3] = v20;
  v38[4] = v27;
  v38[5] = v21;
  v38[6] = v26;
  v38[7] = v22;
  v38[8] = v17;
  v38[9] = v19;
  return sub_1D960B194(v38);
}

uint64_t sub_1D960B20C(uint64_t a1)
{
  v2 = sub_1D960B7D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D960B248(uint64_t a1)
{
  v2 = sub_1D960B7D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D960B284()
{
  if (*v0)
  {
    result = 0x6574696877;
  }

  else
  {
    result = 1702194274;
  }

  *v0;
  return result;
}

uint64_t sub_1D960B2B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702194274 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D966EFB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574696877 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D966EFB8();

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

uint64_t sub_1D960B38C(uint64_t a1)
{
  v2 = sub_1D960B72C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D960B3C8(uint64_t a1)
{
  v2 = sub_1D960B72C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D960B404(uint64_t a1)
{
  v2 = sub_1D960B780();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D960B440(uint64_t a1)
{
  v2 = sub_1D960B780();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ConfirmationSheetButtonStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21458, &qword_1D96724F8);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21460, &qword_1D9672500);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21468, &qword_1D9672508);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D960B72C();
  sub_1D966F118();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1D960B780();
    v18 = v22;
    sub_1D966EED8();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1D960B7D4();
    sub_1D966EED8();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_1D960B72C()
{
  result = qword_1ECB21470;
  if (!qword_1ECB21470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21470);
  }

  return result;
}

unint64_t sub_1D960B780()
{
  result = qword_1ECB21478;
  if (!qword_1ECB21478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21478);
  }

  return result;
}

unint64_t sub_1D960B7D4()
{
  result = qword_1ECB21480;
  if (!qword_1ECB21480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21480);
  }

  return result;
}

uint64_t ConfirmationSheetButtonStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1D966F078();
  MEMORY[0x1DA733F80](v1);
  return sub_1D966F0C8();
}

uint64_t ConfirmationSheetButtonStyle.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21488, &qword_1D9672510);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21490, &qword_1D9672518);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21498, &unk_1D9672520);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D960B72C();
  v16 = v36;
  sub_1D966F0F8();
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
    v20 = sub_1D966EEB8();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1D9605E20();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_1D966ED58();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21050, &qword_1D9671020) + 48);
      *v26 = &type metadata for ConfirmationSheetButtonStyle;
      sub_1D966EDF8();
      sub_1D966ED48();
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
        sub_1D960B780();
        sub_1D966EDE8();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1D960B7D4();
        sub_1D966EDE8();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t ConfirmationSheetButton.text.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1D960BDD4()
{
  if (*v0)
  {
    result = 0x656C797473;
  }

  else
  {
    result = 1954047348;
  }

  *v0;
  return result;
}

uint64_t sub_1D960BE04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D966EFB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D966EFB8();

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

uint64_t sub_1D960BEDC(uint64_t a1)
{
  v2 = sub_1D960C0E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D960BF18(uint64_t a1)
{
  v2 = sub_1D960C0E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ConfirmationSheetButton.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB214A0, &qword_1D9672530);
  v13 = *(v4 - 8);
  v5 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v14 = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D960C0E8();
  sub_1D966F118();
  v17 = 0;
  sub_1D966EF38();
  if (!v2)
  {
    v16 = v14;
    v15 = 1;
    sub_1D960C13C();
    sub_1D966EF68();
  }

  return (*(v13 + 8))(v7, v4);
}

unint64_t sub_1D960C0E8()
{
  result = qword_1ECB214A8;
  if (!qword_1ECB214A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB214A8);
  }

  return result;
}

unint64_t sub_1D960C13C()
{
  result = qword_1ECB214B0;
  if (!qword_1ECB214B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB214B0);
  }

  return result;
}

uint64_t ConfirmationSheetButton.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB214B8, &qword_1D9672538);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D960C0E8();
  sub_1D966F0F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  v11 = sub_1D966EE58();
  v13 = v12;
  v14 = v11;
  v18 = 1;
  sub_1D960C384();
  sub_1D966EE88();
  (*(v6 + 8))(v9, v5);
  v15 = v19;
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D960C384()
{
  result = qword_1ECB214C0;
  if (!qword_1ECB214C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB214C0);
  }

  return result;
}

unint64_t sub_1D960C408()
{
  v1 = 0xD000000000000017;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t sub_1D960C45C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D960F8F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D960C484(uint64_t a1)
{
  v2 = sub_1D960CCF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D960C4C0(uint64_t a1)
{
  v2 = sub_1D960CCF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D960C508(uint64_t a1)
{
  v2 = sub_1D960CDA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D960C544(uint64_t a1)
{
  v2 = sub_1D960CDA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D960C580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D966EFB8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D960C600(uint64_t a1)
{
  v2 = sub_1D960CE48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D960C63C(uint64_t a1)
{
  v2 = sub_1D960CE48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D960C678(uint64_t a1)
{
  v2 = sub_1D960CD4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D960C6B4(uint64_t a1)
{
  v2 = sub_1D960CD4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ConfirmationSheetPostPrimaryButtonAction.encode(to:)(void *a1)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB214C8, &qword_1D9672540);
  v37 = *(v38 - 8);
  v2 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v36 = &v32 - v3;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB214D0, &qword_1D9672548);
  v40 = *(v41 - 8);
  v4 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v39 = &v32 - v5;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB214D8, &qword_1D9672550);
  v34 = *(v35 - 8);
  v6 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v8 = &v32 - v7;
  v33 = type metadata accessor for ConfirmationSheetOsloSheetConfiguration(0);
  v9 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ConfirmationSheetPostPrimaryButtonAction(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB214E0, &qword_1D9672558);
  v16 = *(v43 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v19 = &v32 - v18;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D960CCF8();
  sub_1D966F118();
  sub_1D960A794(v42, v15, type metadata accessor for ConfirmationSheetPostPrimaryButtonAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v22 = v15[3];
      v51 = v15[2];
      v52 = v22;
      v53 = v15[4];
      v23 = v15[1];
      v49 = *v15;
      v50 = v23;
      LOBYTE(v44) = 1;
      sub_1D960CDA0();
      v24 = v39;
      v25 = v43;
      sub_1D966EED8();
      v46 = v51;
      v47 = v52;
      v48 = v53;
      v44 = v49;
      v45 = v50;
      sub_1D960CDF4();
      v26 = v41;
      sub_1D966EF68();
      (*(v40 + 8))(v24, v26);
      (*(v16 + 8))(v19, v25);
      return sub_1D960B194(&v49);
    }

    else
    {
      LOBYTE(v49) = 2;
      sub_1D960CD4C();
      v30 = v36;
      v31 = v43;
      sub_1D966EED8();
      (*(v37 + 8))(v30, v38);
      return (*(v16 + 8))(v19, v31);
    }
  }

  else
  {
    sub_1D960D6A8(v15, v11, type metadata accessor for ConfirmationSheetOsloSheetConfiguration);
    LOBYTE(v49) = 0;
    sub_1D960CE48();
    v28 = v43;
    sub_1D966EED8();
    sub_1D96084F8(&qword_1ECB21510, type metadata accessor for ConfirmationSheetOsloSheetConfiguration);
    v29 = v35;
    sub_1D966EF68();
    (*(v34 + 8))(v8, v29);
    sub_1D960A7FC(v11, type metadata accessor for ConfirmationSheetOsloSheetConfiguration);
    return (*(v16 + 8))(v19, v28);
  }
}

unint64_t sub_1D960CCF8()
{
  result = qword_1ECB214E8;
  if (!qword_1ECB214E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB214E8);
  }

  return result;
}

unint64_t sub_1D960CD4C()
{
  result = qword_1ECB214F0;
  if (!qword_1ECB214F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB214F0);
  }

  return result;
}

unint64_t sub_1D960CDA0()
{
  result = qword_1ECB214F8;
  if (!qword_1ECB214F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB214F8);
  }

  return result;
}

unint64_t sub_1D960CDF4()
{
  result = qword_1ECB21500;
  if (!qword_1ECB21500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21500);
  }

  return result;
}

unint64_t sub_1D960CE48()
{
  result = qword_1ECB21508;
  if (!qword_1ECB21508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21508);
  }

  return result;
}

uint64_t ConfirmationSheetPostPrimaryButtonAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21518, &qword_1D9672560);
  v56 = *(v57 - 8);
  v3 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v61 = &v49 - v4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21520, &qword_1D9672568);
  v55 = *(v52 - 8);
  v5 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v60 = &v49 - v6;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21528, &qword_1D9672570);
  v53 = *(v54 - 8);
  v7 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v59 = &v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21530, &qword_1D9672578);
  v62 = *(v9 - 8);
  v10 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v49 - v11;
  v13 = type metadata accessor for ConfirmationSheetPostPrimaryButtonAction(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v49 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v49 - v21;
  v24 = a1[3];
  v23 = a1[4];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1D960CCF8();
  v25 = v63;
  sub_1D966F0F8();
  if (!v25)
  {
    v50 = v20;
    v49 = v17;
    v27 = v59;
    v26 = v60;
    v28 = v61;
    v51 = v22;
    v63 = v13;
    v29 = sub_1D966EEB8();
    v30 = (2 * *(v29 + 16)) | 1;
    v69 = v29;
    v70 = v29 + 32;
    v71 = 0;
    v72 = v30;
    v31 = sub_1D9605E2C();
    v32 = v9;
    if (v31 != 3 && v71 == v72 >> 1)
    {
      if (v31)
      {
        if (v31 != 1)
        {
          LOBYTE(v64) = 2;
          sub_1D960CD4C();
          sub_1D966EDE8();
          v42 = v58;
          v43 = v62;
          (*(v56 + 8))(v28, v57);
          (*(v43 + 8))(v12, v9);
          swift_unknownObjectRelease();
          v44 = v51;
          swift_storeEnumTagMultiPayload();
LABEL_12:
          sub_1D960D6A8(v44, v42, type metadata accessor for ConfirmationSheetPostPrimaryButtonAction);
          return __swift_destroy_boxed_opaque_existential_1(v73);
        }

        LOBYTE(v64) = 1;
        sub_1D960CDA0();
        sub_1D966EDE8();
        v33 = v62;
        sub_1D960D710();
        v34 = v52;
        sub_1D966EE88();
        (*(v55 + 8))(v26, v34);
        (*(v33 + 8))(v12, v9);
        swift_unknownObjectRelease();
        v45 = v67;
        v46 = v49;
        v49[2] = v66;
        v46[3] = v45;
        v46[4] = v68;
        v47 = v65;
        *v46 = v64;
        v46[1] = v47;
        swift_storeEnumTagMultiPayload();
        v48 = v46;
      }

      else
      {
        LOBYTE(v64) = 0;
        sub_1D960CE48();
        sub_1D966EDE8();
        type metadata accessor for ConfirmationSheetOsloSheetConfiguration(0);
        sub_1D96084F8(&qword_1ECB21540, type metadata accessor for ConfirmationSheetOsloSheetConfiguration);
        v40 = v50;
        v41 = v54;
        sub_1D966EE88();
        (*(v53 + 8))(v27, v41);
        (*(v62 + 8))(v12, v32);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v48 = v40;
      }

      v44 = v51;
      sub_1D960D6A8(v48, v51, type metadata accessor for ConfirmationSheetPostPrimaryButtonAction);
      v42 = v58;
      goto LABEL_12;
    }

    v35 = sub_1D966ED58();
    swift_allocError();
    v37 = v36;
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21050, &qword_1D9671020) + 48);
    *v37 = v63;
    sub_1D966EDF8();
    sub_1D966ED48();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
    swift_willThrow();
    (*(v62 + 8))(v12, v9);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v73);
}

uint64_t sub_1D960D6A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D960D710()
{
  result = qword_1ECB21538;
  if (!qword_1ECB21538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21538);
  }

  return result;
}

unint64_t sub_1D960D768()
{
  result = qword_1ECB21548;
  if (!qword_1ECB21548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21548);
  }

  return result;
}

void sub_1D960D814()
{
  sub_1D960D9D8(319, &qword_1ECB21560);
  if (v0 <= 0x3F)
  {
    sub_1D960D9D8(319, &qword_1EDCF6218);
    if (v1 <= 0x3F)
    {
      sub_1D960D9D8(319, &qword_1ECB21568);
      if (v2 <= 0x3F)
      {
        sub_1D960D974();
        if (v3 <= 0x3F)
        {
          sub_1D960D9D8(319, &qword_1ECB21578);
          if (v4 <= 0x3F)
          {
            sub_1D960DD14(319, &qword_1ECB21580, type metadata accessor for ConfirmationSheetPostPrimaryButtonAction);
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

void sub_1D960D974()
{
  if (!qword_1ECB21570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB21358, &qword_1D9672480);
    v0 = sub_1D966EC18();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECB21570);
    }
  }
}

void sub_1D960D9D8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D966EC18();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1D960DA38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1D960DA80(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
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

uint64_t sub_1D960DB0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D960DB54(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1D960DBA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1D960DBEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D960DC74()
{
  sub_1D960DD14(319, &qword_1EDCF6668, MEMORY[0x1E6968FB0]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D960DD14(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D966EC18();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
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

uint64_t sub_1D960DD84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1D960DDCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D960DE40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1D960DE88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D960DED8()
{
  result = type metadata accessor for ConfirmationSheetOsloSheetConfiguration(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConfirmationSheetContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConfirmationSheetContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D960E174()
{
  result = qword_1ECB215A8;
  if (!qword_1ECB215A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB215A8);
  }

  return result;
}

unint64_t sub_1D960E1CC()
{
  result = qword_1ECB215B0;
  if (!qword_1ECB215B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB215B0);
  }

  return result;
}

unint64_t sub_1D960E224()
{
  result = qword_1ECB215B8;
  if (!qword_1ECB215B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB215B8);
  }

  return result;
}

unint64_t sub_1D960E27C()
{
  result = qword_1ECB215C0;
  if (!qword_1ECB215C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB215C0);
  }

  return result;
}

unint64_t sub_1D960E2D4()
{
  result = qword_1ECB215C8;
  if (!qword_1ECB215C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB215C8);
  }

  return result;
}

unint64_t sub_1D960E32C()
{
  result = qword_1ECB215D0;
  if (!qword_1ECB215D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB215D0);
  }

  return result;
}

unint64_t sub_1D960E384()
{
  result = qword_1ECB215D8;
  if (!qword_1ECB215D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB215D8);
  }

  return result;
}

unint64_t sub_1D960E3DC()
{
  result = qword_1ECB215E0;
  if (!qword_1ECB215E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB215E0);
  }

  return result;
}

unint64_t sub_1D960E434()
{
  result = qword_1ECB215E8;
  if (!qword_1ECB215E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB215E8);
  }

  return result;
}

unint64_t sub_1D960E48C()
{
  result = qword_1ECB215F0;
  if (!qword_1ECB215F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB215F0);
  }

  return result;
}

unint64_t sub_1D960E4E4()
{
  result = qword_1ECB215F8;
  if (!qword_1ECB215F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB215F8);
  }

  return result;
}

unint64_t sub_1D960E53C()
{
  result = qword_1ECB21600;
  if (!qword_1ECB21600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21600);
  }

  return result;
}

unint64_t sub_1D960E594()
{
  result = qword_1ECB21608;
  if (!qword_1ECB21608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21608);
  }

  return result;
}

unint64_t sub_1D960E5EC()
{
  result = qword_1ECB21610;
  if (!qword_1ECB21610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21610);
  }

  return result;
}

unint64_t sub_1D960E644()
{
  result = qword_1ECB21618;
  if (!qword_1ECB21618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21618);
  }

  return result;
}

unint64_t sub_1D960E69C()
{
  result = qword_1ECB21620;
  if (!qword_1ECB21620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21620);
  }

  return result;
}

unint64_t sub_1D960E6F4()
{
  result = qword_1ECB21628;
  if (!qword_1ECB21628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21628);
  }

  return result;
}

unint64_t sub_1D960E74C()
{
  result = qword_1ECB21630;
  if (!qword_1ECB21630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21630);
  }

  return result;
}

unint64_t sub_1D960E7A4()
{
  result = qword_1ECB21638;
  if (!qword_1ECB21638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21638);
  }

  return result;
}

unint64_t sub_1D960E7FC()
{
  result = qword_1ECB21640;
  if (!qword_1ECB21640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21640);
  }

  return result;
}

unint64_t sub_1D960E854()
{
  result = qword_1ECB21648;
  if (!qword_1ECB21648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21648);
  }

  return result;
}

unint64_t sub_1D960E8AC()
{
  result = qword_1ECB21650;
  if (!qword_1ECB21650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21650);
  }

  return result;
}

unint64_t sub_1D960E904()
{
  result = qword_1ECB21658;
  if (!qword_1ECB21658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21658);
  }

  return result;
}

unint64_t sub_1D960E95C()
{
  result = qword_1ECB21660;
  if (!qword_1ECB21660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21660);
  }

  return result;
}

unint64_t sub_1D960E9B4()
{
  result = qword_1ECB21668;
  if (!qword_1ECB21668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21668);
  }

  return result;
}

unint64_t sub_1D960EA0C()
{
  result = qword_1ECB21670;
  if (!qword_1ECB21670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21670);
  }

  return result;
}

unint64_t sub_1D960EA64()
{
  result = qword_1ECB21678;
  if (!qword_1ECB21678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21678);
  }

  return result;
}

unint64_t sub_1D960EABC()
{
  result = qword_1ECB21680;
  if (!qword_1ECB21680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21680);
  }

  return result;
}

unint64_t sub_1D960EB14()
{
  result = qword_1ECB21688;
  if (!qword_1ECB21688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21688);
  }

  return result;
}

unint64_t sub_1D960EB6C()
{
  result = qword_1ECB21690;
  if (!qword_1ECB21690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21690);
  }

  return result;
}

unint64_t sub_1D960EBC4()
{
  result = qword_1ECB21698;
  if (!qword_1ECB21698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21698);
  }

  return result;
}

unint64_t sub_1D960EC1C()
{
  result = qword_1ECB216A0;
  if (!qword_1ECB216A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB216A0);
  }

  return result;
}

unint64_t sub_1D960EC74()
{
  result = qword_1ECB216A8;
  if (!qword_1ECB216A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB216A8);
  }

  return result;
}

unint64_t sub_1D960ECCC()
{
  result = qword_1ECB216B0;
  if (!qword_1ECB216B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB216B0);
  }

  return result;
}

unint64_t sub_1D960ED24()
{
  result = qword_1ECB216B8;
  if (!qword_1ECB216B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB216B8);
  }

  return result;
}

unint64_t sub_1D960ED7C()
{
  result = qword_1ECB216C0;
  if (!qword_1ECB216C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB216C0);
  }

  return result;
}

unint64_t sub_1D960EDD4()
{
  result = qword_1ECB216C8;
  if (!qword_1ECB216C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB216C8);
  }

  return result;
}

unint64_t sub_1D960EE2C()
{
  result = qword_1ECB216D0;
  if (!qword_1ECB216D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB216D0);
  }

  return result;
}

unint64_t sub_1D960EE84()
{
  result = qword_1ECB216D8;
  if (!qword_1ECB216D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB216D8);
  }

  return result;
}

unint64_t sub_1D960EEDC()
{
  result = qword_1ECB216E0;
  if (!qword_1ECB216E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB216E0);
  }

  return result;
}

unint64_t sub_1D960EF34()
{
  result = qword_1ECB216E8;
  if (!qword_1ECB216E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB216E8);
  }

  return result;
}

unint64_t sub_1D960EF8C()
{
  result = qword_1ECB216F0;
  if (!qword_1ECB216F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB216F0);
  }

  return result;
}

uint64_t sub_1D960EFE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D9680980 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1D966EFB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1D966EFB8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D96809A0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F5074656C6C7562 && a2 == 0xEC00000073746E69 || (sub_1D966EFB8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001D96809C0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x427972616D697270 && a2 == 0xED00006E6F747475 || (sub_1D966EFB8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D96809E0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D9680A00 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_1D966EFB8();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1D960F318(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1852793705 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726564616568 && a2 == 0xE600000000000000 || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D966EFB8();

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

uint64_t sub_1D960F42C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496D657469 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496E6F6973726576 && a2 == 0xE900000000000044 || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7562697274736964 && a2 == 0xED00004449726F74 || (sub_1D966EFB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x707041726F467369 && a2 == 0xED000065726F7453)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D966EFB8();

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

uint64_t sub_1D960F5A4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001D9680A40 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D9680A60 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69737365636F7270 && a2 == 0xEE0074786554676ELL || (sub_1D966EFB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4C52556E6F6369 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_1D966EFB8();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D960F724(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657A696C61636F6CLL && a2 == 0xEF6E6F7361655264;
  if (v4 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5444496863756F74 && a2 == 0xEC000000656C7469 || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5244496863756F74 && a2 == 0xED00006E6F736165 || (sub_1D966EFB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65646F6373736170 && a2 == 0xED0000656C746954 || (sub_1D966EFB8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65646F6373736170 && a2 == 0xEE006E6F73616552)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D966EFB8();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D960F8F8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001D9680A80 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D9680AA0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D9680AC0 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_1D966EFB8();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D960FA4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1D966EFB8();

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

uint64_t sub_1D960FB50(char a1)
{
  sub_1D966F078();
  MEMORY[0x1DA733F80](a1 & 1);
  return sub_1D966F0C8();
}

uint64_t sub_1D960FB98(char a1)
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

uint64_t sub_1D960FBC8(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D966EFB8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

BOOL sub_1D960FC38(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return sub_1D960FB18(*a1, *a2);
}

uint64_t sub_1D960FC50(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_1D960FB50(*v1);
}

uint64_t sub_1D960FC64(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  return sub_1D960FB28(a1, *v2);
}

uint64_t sub_1D960FC78(uint64_t a1, void *a2)
{
  sub_1D966F078();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  sub_1D960FB28(v8, *v2);
  return sub_1D966F0C8();
}

uint64_t sub_1D960FCC4(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_1D960FB98(*v1);
}

uint64_t sub_1D960FCD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_1D960FA4C(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1D960FD0C@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = sub_1D961130C();
  *a2 = result;
  return result;
}

uint64_t sub_1D960FD40(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D960FD94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D960FDE8@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = sub_1D95EE5AC();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1D960FE20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D960FE74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D960FEC8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D960FF1C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t MarketplaceKitServiceResult.encode(to:)(void *a1, void *a2)
{
  v5 = a2[2];
  v4 = a2[3];
  v6 = a2[4];
  v51 = type metadata accessor for MarketplaceKitServiceResult.FailureCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1D966EF98();
  v53 = *(v7 - 8);
  v54 = v7;
  v8 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v40 - v9;
  v48 = type metadata accessor for MarketplaceKitError();
  v10 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MarketplaceKitServiceResult.SuccessCodingKeys();
  v13 = swift_getWitnessTable();
  v44 = v12;
  v42 = v13;
  v14 = sub_1D966EF98();
  v46 = *(v14 - 8);
  v47 = v14;
  v15 = *(v46 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v43 = &v40 - v17;
  v45 = *(v5 - 8);
  v18 = *(v45 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v41 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a2 - 1);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v6;
  v56 = v5;
  type metadata accessor for MarketplaceKitServiceResult.CodingKeys();
  swift_getWitnessTable();
  v57 = sub_1D966EF98();
  v59 = *(v57 - 8);
  v25 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v27 = &v40 - v26;
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D966F118();
  (*(v21 + 16))(v24, v58, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = v24;
    v30 = v50;
    sub_1D95EA8F8(v29, v50);
    v61 = 1;
    v31 = v52;
    v32 = v57;
    sub_1D966EED8();
    sub_1D9610DA8(&qword_1ECB216F8);
    v33 = v54;
    sub_1D966EF68();
    (*(v53 + 8))(v31, v33);
    sub_1D961053C(v30);
  }

  else
  {
    v34 = v45;
    v35 = v41;
    v36 = v56;
    (*(v45 + 32))(v41, v24, v56);
    v60 = 0;
    v37 = v43;
    v32 = v57;
    sub_1D966EED8();
    v38 = v47;
    sub_1D966EF68();
    (*(v46 + 8))(v37, v38);
    (*(v34 + 8))(v35, v36);
  }

  return (*(v59 + 8))(v27, v32);
}

uint64_t sub_1D961053C(uint64_t a1)
{
  v2 = type metadata accessor for MarketplaceKitError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MarketplaceKitServiceResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v78 = a1;
  v56 = a4;
  v6 = type metadata accessor for MarketplaceKitServiceResult.FailureCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v66 = v6;
  v61 = sub_1D966EEC8();
  v60 = *(v61 - 8);
  v7 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v67 = &v53 - v8;
  v9 = type metadata accessor for MarketplaceKitServiceResult.SuccessCodingKeys();
  v62 = swift_getWitnessTable();
  v63 = v9;
  v58 = sub_1D966EEC8();
  v57 = *(v58 - 8);
  v10 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v64 = &v53 - v11;
  type metadata accessor for MarketplaceKitServiceResult.CodingKeys();
  swift_getWitnessTable();
  v70 = sub_1D966EEC8();
  v72 = *(v70 - 8);
  v12 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v14 = &v53 - v13;
  v59 = a2;
  v71 = a3;
  v15 = type metadata accessor for MarketplaceKitServiceResult();
  v68 = *(v15 - 8);
  v16 = *(v68 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v53 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v53 - v23;
  v25 = v78[4];
  __swift_project_boxed_opaque_existential_1(v78, v78[3]);
  v69 = v14;
  v26 = v73;
  sub_1D966F0F8();
  if (!v26)
  {
    v73 = v22;
    v55 = v19;
    v54 = v24;
    v27 = v70;
    v28 = v69;
    *&v74 = sub_1D966EEB8();
    sub_1D966EA68();
    swift_getWitnessTable();
    *&v76 = sub_1D966EC48();
    *(&v76 + 1) = v29;
    *&v77 = v30;
    *(&v77 + 1) = v31;
    sub_1D966EC38();
    swift_getWitnessTable();
    sub_1D966EB68();
    v32 = v74;
    if (v74 == 2 || (v53 = v76, v74 = v76, v75 = v77, (sub_1D966EB78() & 1) == 0))
    {
      v39 = sub_1D966ED58();
      swift_allocError();
      v41 = v40;
      v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21050, &qword_1D9671020) + 48);
      *v41 = v15;
      sub_1D966EDF8();
      sub_1D966ED48();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v39);
      swift_willThrow();
      (*(v72 + 8))(v28, v27);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v32)
      {
        LOBYTE(v74) = 1;
        v33 = v67;
        sub_1D966EDE8();
        v34 = v68;
        type metadata accessor for MarketplaceKitError();
        v35 = v33;
        sub_1D9610DA8(&qword_1ECB21700);
        v36 = v55;
        v37 = v61;
        sub_1D966EE88();
        v38 = v72;
        (*(v60 + 8))(v35, v37);
        (*(v38 + 8))(v28, v27);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v48 = v36;
        v49 = v56;
      }

      else
      {
        LOBYTE(v74) = 0;
        v43 = v64;
        sub_1D966EDE8();
        v34 = v68;
        v44 = v58;
        sub_1D966EE88();
        v45 = v43;
        v46 = v72;
        (*(v57 + 8))(v45, v44);
        (*(v46 + 8))(v28, v27);
        swift_unknownObjectRelease();
        v50 = v73;
        swift_storeEnumTagMultiPayload();
        v49 = v56;
        v48 = v50;
      }

      v51 = *(v34 + 32);
      v52 = v54;
      v51(v54, v48, v15);
      v51(v49, v52, v15);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v78);
}

uint64_t sub_1D9610DA8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MarketplaceKitError();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D9610E30(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for MarketplaceKitError();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D9610EA8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21708, &qword_1D967AC00) - 8) + 64);
  if (v6 <= 0x10)
  {
    v6 = 16;
  }

  if (v6 + 1 > v5)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_28;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 254) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v12 < 2)
    {
LABEL_28:
      v14 = *(a1 + v7);
      if (v14 >= 2)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_28;
  }

LABEL_17:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return (v8 | v13) + 255;
}

void sub_1D961101C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(*(a4 + 16) - 8) + 64);
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21708, &qword_1D967AC00) - 8) + 64);
  if (v8 <= 0x10)
  {
    v8 = 16;
  }

  if (v8 + 1 > v7)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = v7;
  }

  v10 = v9 + 1;
  if (a3 < 0xFF)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 + ~(-1 << (8 * v10)) - 254) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (a2 > 0xFE)
  {
    v12 = a2 - 255;
    if (v10 >= 4)
    {
      bzero(a1, v9 + 1);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v13 = (v12 >> (8 * v10)) + 1;
    if (v9 != -1)
    {
      v16 = v12 & ~(-1 << (8 * v10));
      bzero(a1, v10);
      if (v10 != 3)
      {
        if (v10 == 2)
        {
          *a1 = v16;
          if (v11 > 1)
          {
LABEL_42:
            if (v11 == 2)
            {
              *&a1[v10] = v13;
            }

            else
            {
              *&a1[v10] = v13;
            }

            return;
          }
        }

        else
        {
          *a1 = v12;
          if (v11 > 1)
          {
            goto LABEL_42;
          }
        }

LABEL_39:
        if (v11)
        {
          a1[v10] = v13;
        }

        return;
      }

      *a1 = v16;
      a1[2] = BYTE2(v16);
    }

    if (v11 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v11 <= 1)
  {
    if (v11)
    {
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

LABEL_28:
      a1[v9] = -a2;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v11 == 2)
  {
    *&a1[v10] = 0;
    goto LABEL_27;
  }

  *&a1[v10] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}

uint64_t sub_1D9611328(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InstallSheetContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9611394(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InstallSheetContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t InstallConfirmationRequest.run()()
{
  *(v1 + 32) = v0;
  v2 = *(*(type metadata accessor for LaunchAngelXPCRequest(0) - 8) + 64) + 15;
  *(v1 + 40) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9611488, 0, 0);
}

uint64_t sub_1D9611488()
{
  sub_1D9611328(v0[4], v0[5]);
  type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1D9611548;
  v2 = v0[5];

  return static LaunchAngelConnectionUtilities.handleLaunchAngelRequest(_:)((v0 + 2), v2);
}

uint64_t sub_1D9611548()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1D96116E4;
  }

  else
  {
    v3 = sub_1D961165C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D961165C()
{
  sub_1D9611758(*(v0 + 40));
  v1 = *(v0 + 16);
  if (*(v0 + 24))
  {
    sub_1D9604030(*(v0 + 16), *(v0 + 24));
    LOBYTE(v1) = 0;
  }

  v2 = *(v0 + 40);

  v3 = *(v0 + 8);

  return v3(v1 & 1);
}

uint64_t sub_1D96116E4()
{
  sub_1D9611758(v0[5]);

  v1 = v0[1];
  v2 = v0[7];

  return v1(0);
}

uint64_t sub_1D9611758(uint64_t a1)
{
  v2 = type metadata accessor for LaunchAngelXPCRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for InstallConfirmationRequest()
{
  result = qword_1EDCF62C8;
  if (!qword_1EDCF62C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9611828()
{
  result = type metadata accessor for InstallSheetContext(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t ManifestValidationRequest.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D966E5B8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ManifestValidationRequest.primaryProductVariant.getter()
{
  v1 = (v0 + *(type metadata accessor for ManifestValidationRequest() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for ManifestValidationRequest()
{
  result = qword_1ECB21730;
  if (!qword_1ECB21730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ManifestValidationRequest.compatibleProductVariants.getter()
{
  v1 = *(v0 + *(type metadata accessor for ManifestValidationRequest() + 24));
}

uint64_t ManifestValidationRequest.osVersion.getter()
{
  v1 = (v0 + *(type metadata accessor for ManifestValidationRequest() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

int *ManifestValidationRequest.init(url:primaryProductVariant:compatibleProductVariants:osVersion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_1D966E5B8();
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  result = type metadata accessor for ManifestValidationRequest();
  v16 = (a7 + result[5]);
  *v16 = a2;
  v16[1] = a3;
  *(a7 + result[6]) = a4;
  v17 = (a7 + result[7]);
  *v17 = a5;
  v17[1] = a6;
  return result;
}

uint64_t sub_1D9611AD0()
{
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1D9611BC8;
  v2 = *(v0 + 16);

  return sub_1D95EF380(v2, sub_1D9611CBC, 0);
}

uint64_t sub_1D9611BC8()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_1D9611CBC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D966E5D8();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D96587B0;
  v10[3] = &block_descriptor_1;
  v9 = _Block_copy(v10);

  [a1 runManifestValidation:v8 reply:v9];
  _Block_release(v9);
}

unint64_t sub_1D9611D98()
{
  v1 = 7107189;
  v2 = 0xD000000000000019;
  if (*v0 != 2)
  {
    v2 = 0x6F6973726556736FLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000015;
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

uint64_t sub_1D9611E1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D96129B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9611E44(uint64_t a1)
{
  v2 = sub_1D96125A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9611E80(uint64_t a1)
{
  v2 = sub_1D96125A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManifestValidationRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21710, &qword_1D9673F88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D96125A4();
  sub_1D966F118();
  v22 = 0;
  sub_1D966E5B8();
  sub_1D95E63E8(&qword_1ECB20860);
  sub_1D966EF68();
  if (!v2)
  {
    v11 = type metadata accessor for ManifestValidationRequest();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    v21 = 1;
    sub_1D966EEE8();
    v20 = *(v3 + v11[6]);
    v19[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21720, &qword_1D9673F90);
    sub_1D96125F8(&qword_1EDCF6200);
    sub_1D966EF18();
    v15 = (v3 + v11[7]);
    v16 = *v15;
    v17 = v15[1];
    v19[14] = 3;
    sub_1D966EEE8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ManifestValidationRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = sub_1D966E5B8();
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21728, &qword_1D9673F98);
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = type metadata accessor for ManifestValidationRequest();
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D96125A4();
  v35 = v10;
  sub_1D966F0F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v31;
  v40 = 0;
  sub_1D95E63E8(&qword_1ECB20870);
  v17 = v32;
  sub_1D966EE88();
  (*(v16 + 32))(v14, v17, v4);
  v39 = 1;
  v19 = sub_1D966EE08();
  v32 = 0;
  v21 = &v14[v11[5]];
  *v21 = v19;
  v21[1] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21720, &qword_1D9673F90);
  v38 = 2;
  sub_1D96125F8(&qword_1EDCF6670);
  v22 = v32;
  v23 = v32;
  sub_1D966EE38();
  if (v23)
  {
    (*(v33 + 8))(v35, v34);
    __swift_destroy_boxed_opaque_existential_1(a1);
    result = (*(v16 + 8))(v14, v4);
    if (!v22)
    {
      v24 = *&v14[v11[5] + 8];
    }
  }

  else
  {
    *&v14[v11[6]] = v36;
    v37 = 3;
    v25 = sub_1D966EE08();
    v27 = v26;
    (*(v33 + 8))(v35, v34);
    v28 = &v14[v11[7]];
    *v28 = v25;
    v28[1] = v27;
    sub_1D9612664(v14, v30);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1D96126C8(v14);
  }

  return result;
}

unint64_t sub_1D96125A4()
{
  result = qword_1ECB21718;
  if (!qword_1ECB21718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21718);
  }

  return result;
}

uint64_t sub_1D96125F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB21720, &qword_1D9673F90);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D9612664(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManifestValidationRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D96126C8(uint64_t a1)
{
  v2 = type metadata accessor for ManifestValidationRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D961274C()
{
  sub_1D966E5B8();
  if (v0 <= 0x3F)
  {
    sub_1D96127EC();
    if (v1 <= 0x3F)
    {
      sub_1D961283C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D96127EC()
{
  if (!qword_1EDCF6218)
  {
    v0 = sub_1D966EC18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCF6218);
    }
  }
}

void sub_1D961283C()
{
  if (!qword_1ECB21740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB21720, &qword_1D9673F90);
    v0 = sub_1D966EC18();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECB21740);
    }
  }
}

unint64_t sub_1D96128B4()
{
  result = qword_1ECB21748;
  if (!qword_1ECB21748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21748);
  }

  return result;
}

unint64_t sub_1D961290C()
{
  result = qword_1ECB21750;
  if (!qword_1ECB21750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21750);
  }

  return result;
}

unint64_t sub_1D9612964()
{
  result = qword_1ECB21758;
  if (!qword_1ECB21758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21758);
  }

  return result;
}

uint64_t sub_1D96129B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D9680AE0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D9680B00 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D966EFB8();

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

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t TransactionReporting.TokenType.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void *sub_1D9612BA8@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_1D9612BB4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t static TransactionReporting.token(for:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  *(v1 + 32) = v3;
  *(v1 + 40) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D9612C30, 0, 0);
}

uint64_t sub_1D9612C30()
{
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1D9612D34;
  v2 = v0[4];
  v3 = v0[5];

  return sub_1D95EF708((v0 + 2), v2, v3, 0, 0, sub_1D9612EAC, 0);
}

uint64_t sub_1D9612D34()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v6 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_1D9612E88;
  }

  else
  {
    v4 = sub_1D9612E6C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

MarketplaceKit::SKTransactionReportTokenRequest __swiftcall SKTransactionReportTokenRequest.init(tokenType:bundleIDOverride:)(Swift::String tokenType, Swift::String_optional bundleIDOverride)
{
  v2->value = tokenType;
  v2[1] = bundleIDOverride;
  result.field1D9688C68 = bundleIDOverride;
  result.field1D9688C5C = tokenType;
  return result;
}

void sub_1D9612EAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D966E5D8();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D96587B0;
  v10[3] = &block_descriptor_2;
  v9 = _Block_copy(v10);

  [a1 tokenForTokenType:v8 reply:v9];
  _Block_release(v9);
}

uint64_t SKTransactionReportTokenRequest.tokenType.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SKTransactionReportTokenRequest.bundleIDOverride.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

unint64_t sub_1D9612FE8()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x7079546E656B6F74;
  }

  *v0;
  return result;
}

uint64_t sub_1D961302C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7079546E656B6F74 && a2 == 0xE900000000000065;
  if (v6 || (sub_1D966EFB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D9680B20 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D966EFB8();

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

uint64_t sub_1D9613118(uint64_t a1)
{
  v2 = sub_1D9613A68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9613154(uint64_t a1)
{
  v2 = sub_1D9613A68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SKTransactionReportTokenRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21760, &qword_1D9674148);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9613A68();
  sub_1D966F118();
  v16 = 0;
  v12 = v14[3];
  sub_1D966EF38();
  if (!v12)
  {
    v15 = 1;
    sub_1D966EEE8();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t SKTransactionReportTokenRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21770, &qword_1D9674150);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9613A68();
  sub_1D966F0F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v11 = sub_1D966EE58();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_1D966EE08();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9613568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D966EFB8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D96135EC(uint64_t a1)
{
  v2 = sub_1D9613ABC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9613628(uint64_t a1)
{
  v2 = sub_1D9613ABC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SKTransactionReportTokenResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21778, &qword_1D9674158);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9613ABC();
  sub_1D966F118();
  sub_1D966EF38();
  return (*(v4 + 8))(v7, v3);
}

uint64_t SKTransactionReportTokenResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21788, &qword_1D9674160);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9613ABC();
  sub_1D966F0F8();
  if (!v2)
  {
    v11 = sub_1D966EE58();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D961392C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21778, &qword_1D9674158);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9613ABC();
  sub_1D966F118();
  sub_1D966EF38();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D9613A68()
{
  result = qword_1ECB21768;
  if (!qword_1ECB21768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21768);
  }

  return result;
}

unint64_t sub_1D9613ABC()
{
  result = qword_1ECB21780;
  if (!qword_1ECB21780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21780);
  }

  return result;
}

uint64_t sub_1D9613B40(uint64_t a1, int a2)
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

uint64_t sub_1D9613B88(uint64_t result, int a2, int a3)
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

unint64_t sub_1D9613BF8()
{
  result = qword_1ECB21790;
  if (!qword_1ECB21790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21790);
  }

  return result;
}

unint64_t sub_1D9613C50()
{
  result = qword_1ECB21798;
  if (!qword_1ECB21798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21798);
  }

  return result;
}

unint64_t sub_1D9613CA8()
{
  result = qword_1ECB217A0;
  if (!qword_1ECB217A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB217A0);
  }

  return result;
}

unint64_t sub_1D9613D00()
{
  result = qword_1ECB217A8;
  if (!qword_1ECB217A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB217A8);
  }

  return result;
}

unint64_t sub_1D9613D58()
{
  result = qword_1ECB217B0;
  if (!qword_1ECB217B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB217B0);
  }

  return result;
}

unint64_t sub_1D9613DB0()
{
  result = qword_1ECB217B8;
  if (!qword_1ECB217B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB217B8);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t ApprovedDeveloper.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ApprovedDeveloper.identifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ApprovedDeveloper.supportURL.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void __swiftcall ApprovedDeveloper.init(name:identifier:supportURL:)(MarketplaceKit::ApprovedDeveloper *__return_ptr retstr, Swift::String name, Swift::String identifier, Swift::String_optional supportURL)
{
  retstr->field1D9688CE4 = name;
  retstr->field1D9688CF0 = identifier;
  retstr->field1D9688CFC = supportURL;
}

uint64_t sub_1D9613ED0()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0x5574726F70707573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1D9613F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9614E90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9613F54(uint64_t a1)
{
  v2 = sub_1D9614C64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9613F90(uint64_t a1)
{
  v2 = sub_1D9614C64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ApprovedDeveloper.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB217C0, &qword_1D9674530);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[3] = v1[3];
  v15[4] = v10;
  v11 = v1[4];
  v15[1] = v1[5];
  v15[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9614C64();
  sub_1D966F118();
  v18 = 0;
  v13 = v15[5];
  sub_1D966EF38();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v17 = 1;
  sub_1D966EF38();
  v16 = 2;
  sub_1D966EEE8();
  return (*(v4 + 8))(v7, v3);
}

uint64_t ApprovedDeveloper.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1D966E9D8();
  sub_1D966E9D8();
  if (!v6)
  {
    return sub_1D966F098();
  }

  sub_1D966F098();

  return sub_1D966E9D8();
}

uint64_t ApprovedDeveloper.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1D966F078();
  sub_1D966E9D8();
  sub_1D966E9D8();
  sub_1D966F098();
  if (v6)
  {
    sub_1D966E9D8();
  }

  return sub_1D966F0C8();
}

uint64_t ApprovedDeveloper.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB217D0, &qword_1D9674538);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9614C64();
  sub_1D966F0F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v11 = sub_1D966EE58();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = sub_1D966EE58();
  v23 = v14;
  v25 = 2;
  v15 = sub_1D966EE08();
  v17 = v16;
  v18 = v15;
  (*(v6 + 8))(v9, v5);
  v19 = v23;
  *a2 = v24;
  a2[1] = v13;
  a2[2] = v22;
  a2[3] = v19;
  a2[4] = v18;
  a2[5] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9614580()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1D966F078();
  sub_1D966E9D8();
  sub_1D966E9D8();
  sub_1D966F098();
  if (v6)
  {
    sub_1D966E9D8();
  }

  return sub_1D966F0C8();
}

uint64_t sub_1D9614628()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1D966E9D8();
  sub_1D966E9D8();
  if (!v6)
  {
    return sub_1D966F098();
  }

  sub_1D966F098();

  return sub_1D966E9D8();
}

uint64_t sub_1D96146C4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1D966F078();
  sub_1D966E9D8();
  sub_1D966E9D8();
  sub_1D966F098();
  if (v6)
  {
    sub_1D966E9D8();
  }

  return sub_1D966F0C8();
}

uint64_t static AppDistributor.allApprovedDevelopers()()
{
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  v9 = 0x2000000000000000;
  v10 = 1;
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  sub_1D95EBB94(v7, sub_1D962B914, 0, &v5);
  result = v5;
  v1 = v6;
  if (v6)
  {
    v2 = *(&v5 + 1);
    v3 = v5;
    type metadata accessor for MarketplaceKitError();
    sub_1D9614CB8();
    v4 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D95FD1C4(v3, v2, v1);

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t static AppDistributor.revokeDeveloperApproval(_:removeInstalledApps:)(uint64_t a1, uint64_t a2, char a3)
{
  *&v5 = a1;
  *(&v5 + 1) = a2;
  v6 = a3 & 1;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 3;
  v3 = qword_1EDCF6860;

  if (v3 != -1)
  {
    swift_once();
  }

  sub_1D95EC0A0(&v5, sub_1D9614948, 0);
}

void sub_1D9614948(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D966E5D8();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D96587B0;
  v10[3] = &block_descriptor_3;
  v9 = _Block_copy(v10);

  [a1 setPrivateDataRequest:v8 reply:v9];
  _Block_release(v9);
}

uint64_t static AppDistributor.isDeveloperApproved(_:)(uint64_t a1, uint64_t a2)
{
  *&v10[0] = a1;
  *(&v10[0] + 1) = a2;
  memset(&v10[1], 0, 32);
  v11 = 0;
  v2 = qword_1EDCF6860;

  if (v2 != -1)
  {
    swift_once();
  }

  sub_1D95EBB94(v10, sub_1D962B914, 0, &v8);
  v4 = *(&v8 + 1);
  v3 = v8;
  v5 = v9;
  if (v9 == 1)
  {
    sub_1D95FD1C4(v8, *(&v8 + 1), 1u);
  }

  else
  {
    type metadata accessor for MarketplaceKitError();
    sub_1D9614CB8();
    v6 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D95FD1C4(v3, v4, v5);

    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

uint64_t _s14MarketplaceKit17ApprovedDeveloperV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  if (*a1 == *a2 && a1[1] == a2[1] || (sub_1D966EFB8()) && (v2 == v6 && v4 == v7 || (sub_1D966EFB8()))
  {
    if (v5)
    {
      if (v8 && (v3 == v9 && v5 == v8 || (sub_1D966EFB8() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}