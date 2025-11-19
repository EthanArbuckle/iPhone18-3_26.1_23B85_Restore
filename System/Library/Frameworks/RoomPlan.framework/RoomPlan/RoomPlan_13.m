unint64_t sub_23A995A94()
{
  result = qword_27DFB0650;
  if (!qword_27DFB0650)
  {
    type metadata accessor for CDTTriangle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0650);
  }

  return result;
}

uint64_t sub_23A995AEC(unint64_t a1, char **a2, char **a3)
{
  v6 = *a3;

  v7 = *a2;

  v9 = MEMORY[0x277D84F90];
  v43 = a2;
  *a2 = MEMORY[0x277D84F90];
  v40 = a3;
  *a3 = v9;
  if (a1 >> 62)
  {
    goto LABEL_49;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10)
  {
    do
    {
      v11 = 0;
      v42 = a1 & 0xC000000000000001;
      v37 = a1 + 32;
      v38 = a1 & 0xFFFFFFFFFFFFFF8;
      v12 = MEMORY[0x277D84F90];
      v13 = MEMORY[0x277D84F98];
      v14 = MEMORY[0x277D84F90];
      v39 = a1;
      v41 = v10;
      while (1)
      {
        if (v42)
        {
          MEMORY[0x23EE90360](v11, a1);
          v15 = __OFADD__(v11++, 1);
          if (v15)
          {
            break;
          }

          goto LABEL_11;
        }

        if (v11 >= *(v38 + 16))
        {
          goto LABEL_48;
        }

        v16 = *(v37 + 8 * v11);

        v15 = __OFADD__(v11++, 1);
        if (v15)
        {
          break;
        }

LABEL_11:
        v17 = sub_23A9C3768();
        v44 = *(v17 + 16);
        if (v44)
        {
          a1 = 0;
          while (1)
          {
            if (a1 >= *(v17 + 16))
            {
              __break(1u);
LABEL_44:
              __break(1u);
LABEL_45:
              __break(1u);
LABEL_46:
              __break(1u);
              goto LABEL_47;
            }

            v18 = *(v17 + 8 * a1 + 32);
            if (v13[2] && (v19 = sub_23A9EDEEC(*(v17 + 8 * a1 + 32)), (v20 & 1) != 0))
            {
              LODWORD(v21) = *(v13[7] + 4 * v19);
            }

            else
            {
              v21 = *(v12 + 2);
              if (HIDWORD(v21))
              {
                goto LABEL_44;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v12 = sub_23A938A28(0, v21 + 1, 1, v12);
              }

              v23 = *(v12 + 2);
              v22 = *(v12 + 3);
              if (v23 >= v22 >> 1)
              {
                v12 = sub_23A938A28((v22 > 1), v23 + 1, 1, v12);
              }

              *(v12 + 2) = v23 + 1;
              *&v12[8 * v23 + 32] = v18;
              *v43 = v12;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v26 = sub_23A9EDEEC(v18);
              v27 = v13[2];
              v28 = (v25 & 1) == 0;
              v29 = v27 + v28;
              if (__OFADD__(v27, v28))
              {
                goto LABEL_45;
              }

              v30 = v25;
              if (v13[3] >= v29)
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  if (v25)
                  {
                    goto LABEL_29;
                  }
                }

                else
                {
                  sub_23A90D728();
                  if (v30)
                  {
                    goto LABEL_29;
                  }
                }
              }

              else
              {
                sub_23A9076C4(v29, isUniquelyReferenced_nonNull_native);
                v31 = sub_23A9EDEEC(v18);
                if ((v30 & 1) != (v32 & 1))
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14C0, &qword_23AA15D90);
                  result = sub_23AA0DC24();
                  __break(1u);
                  return result;
                }

                v26 = v31;
                if (v30)
                {
LABEL_29:
                  *(v13[7] + 4 * v26) = v21;
                  goto LABEL_33;
                }
              }

              v13[(v26 >> 6) + 8] |= 1 << v26;
              *(v13[6] + 8 * v26) = v18;
              *(v13[7] + 4 * v26) = v21;
              v33 = v13[2];
              v15 = __OFADD__(v33, 1);
              v34 = v33 + 1;
              if (v15)
              {
                goto LABEL_46;
              }

              v13[2] = v34;
            }

LABEL_33:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v14 = sub_23A9388BC(0, *(v14 + 2) + 1, 1, v14);
            }

            v36 = *(v14 + 2);
            v35 = *(v14 + 3);
            if (v36 >= v35 >> 1)
            {
              v14 = sub_23A9388BC((v35 > 1), v36 + 1, 1, v14);
            }

            ++a1;
            *(v14 + 2) = v36 + 1;
            *&v14[4 * v36 + 32] = v21;
            if (v44 == a1)
            {

              a1 = v39;
              *v40 = v14;
              goto LABEL_4;
            }
          }
        }

LABEL_4:
        if (v11 == v41)
        {
        }
      }

LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      result = sub_23AA0D7F4();
      v10 = result;
    }

    while (result);
  }

  return result;
}

unint64_t sub_23A995F04()
{
  result = qword_27DFB0670;
  if (!qword_27DFB0670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0670);
  }

  return result;
}

uint64_t sub_23A995F58()
{
  v0 = sub_23AA0DA64();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_23A995FA8()
{
  if (*v0)
  {
    result = 0xD000000000000043;
  }

  else
  {
    result = 0xD000000000000044;
  }

  *v0;
  return result;
}

double sub_23A995FE0()
{
  type metadata accessor for MeshLoader();
  v0 = swift_allocObject();
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  v0[5] = 0u;
  v0[6] = 0u;
  qword_27DFC07E0 = v0;
  return result;
}

uint64_t sub_23A99601C()
{
  swift_beginAccess();
  sub_23A8D5194(v0 + 16, &v6, &unk_27DFB10C0, &unk_23AA19560);
  if (*(&v7 + 1))
  {
    sub_23A8CA9D8(&v6, v4);
    sub_23A8D50D0(&v6, &unk_27DFB10C0, &unk_23AA19560);
    __swift_project_boxed_opaque_existential_1(v4, v5);
    sub_23AA0CEA4();
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    sub_23A8D50D0(&v6, &unk_27DFB10C0, &unk_23AA19560);
  }

  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  swift_beginAccess();
  sub_23A999018(&v6, v0 + 16);
  swift_endAccess();
  v1 = *(v0 + 56);
  *(v0 + 56) = 0;

  swift_beginAccess();
  sub_23A8D5194(v0 + 64, &v6, &unk_27DFB10C0, &unk_23AA19560);
  if (*(&v7 + 1))
  {
    sub_23A8CA9D8(&v6, v4);
    sub_23A8D50D0(&v6, &unk_27DFB10C0, &unk_23AA19560);
    __swift_project_boxed_opaque_existential_1(v4, v5);
    sub_23AA0CEA4();
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    sub_23A8D50D0(&v6, &unk_27DFB10C0, &unk_23AA19560);
  }

  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  swift_beginAccess();
  sub_23A999018(&v6, v0 + 64);
  swift_endAccess();
  v2 = *(v0 + 104);
  *(v0 + 104) = 0;
}

uint64_t sub_23A99620C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_23AA0C364();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB06C0, &unk_23AA1BB10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - v12;
  v14 = *a1;
  sub_23AA0CAE4();
  v15 = sub_23AA0C4A4();
  if ((*(*(v15 - 8) + 48))(v13, 1, v15))
  {
    sub_23A8D50D0(v13, &qword_27DFB06C0, &unk_23AA1BB10);
    sub_23A998FC4();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    sub_23AA0C484();
    sub_23A8D50D0(v13, &qword_27DFB06C0, &unk_23AA1BB10);
    sub_23A996444(a3, v9);
    sub_23AA0C324();
    (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_23A996444@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v52 = a1;
  v61 = a2;
  v54 = sub_23AA0CDF4();
  v56 = *(v54 - 8);
  v2 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23AA0CE04();
  *&v62 = *(v5 - 8);
  v6 = *(v62 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0698, &qword_23AA19540);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v48 - v17;
  v19 = sub_23AA0C314();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v50 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v58 = &v48 - v24;
  v25 = sub_23AA0C364();
  v59 = *(v25 - 8);
  v60 = v25;
  v26 = *(v59 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23AA0C374();
  v57 = v28;
  sub_23AA0C334();
  v29 = *(v62 + 16);
  v55 = v11;
  v29(v8, v11, v5);
  sub_23A998F7C(&qword_27DFB06A0, MEMORY[0x277CDB438]);
  v51 = v8;
  v53 = v5;
  sub_23AA0D264();
  sub_23A998F7C(&qword_27DFB06A8, MEMORY[0x277CDB428]);
  v30 = v4;
  v31 = v54;
  sub_23AA0D674();
  v32 = *(v20 + 48);
  if (v32(v15, 1, v19) == 1)
  {
    (*(v56 + 8))(v30, v31);
    (*(v62 + 8))(v55, v53);
    v33 = 1;
  }

  else
  {
    v48 = v32;
    v49 = v18;
    v34 = v56;
    v35 = v31;
    v36 = *(v20 + 32);
    v37 = v50;
    v36(v50, v15, v19);
    (*(v34 + 8))(v30, v35);
    v32 = v48;
    v18 = v49;
    (*(v62 + 8))(v55, v53);
    v36(v18, v37, v19);
    v33 = 0;
  }

  (*(v20 + 56))(v18, v33, 1, v19);
  if (v32(v18, 1, v19) == 1)
  {
    sub_23A8D50D0(v18, &qword_27DFB0698, &qword_23AA19540);
    v38 = v57;
  }

  else
  {
    (*(v20 + 32))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB06B0, &qword_23AA19548);
    v39 = *(v20 + 72);
    v40 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v41 = swift_allocObject();
    v62 = xmmword_23AA10FC0;
    *(v41 + 16) = xmmword_23AA10FC0;
    sub_23AA0C304();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB06B8, &unk_23AA19550);
    v42 = sub_23AA0C2E4();
    v43 = *(v42 - 8);
    v44 = *(v43 + 72);
    v45 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v46 = swift_allocObject();
    *(v46 + 16) = v62;
    (*(v43 + 16))(v46 + v45, v52, v42);
    sub_23AA0C2F4();
    sub_23AA0CDE4();
    v38 = v57;
    sub_23AA0C344();
    (*(v20 + 8))(v58, v19);
  }

  return (*(v59 + 32))(v61, v38, v60);
}

uint64_t sub_23A996AE0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0680, &unk_23AA19510);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0690, &qword_23AA19538);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF000, &qword_23AA128F0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = *(a1[2] + 16);
  if (v14)
  {
    v21 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0940, &qword_23AA15CF0);
    v15 = sub_23AA0D324();
    *(v15 + 16) = v14;
    bzero((v15 + 32), 16 * v14);
    sub_23AA0C2D4();
    sub_23AA0CB74();
    sub_23AA0C2E4();
    sub_23AA0CDD4();
    v16 = a1[3];

    sub_23AA0CB74();
    (*(v11 + 56))(v9, 0, 1, v21);
    sub_23AA0CDB4();
    v17 = a1[4];

    sub_23AA0CB84();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0688, &unk_23AA19528);
    (*(*(v18 - 8) + 56))(v5, 0, 1, v18);
    return sub_23AA0C2C4();
  }

  else
  {

    return sub_23AA0C2D4();
  }
}

void *sub_23A996EFC(unsigned __int8 a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float32x4_t *a7, uint64_t a8, int8x16_t a9, float a10, unsigned __int8 a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v97 = a8;
  v100 = a7;
  v101 = a6;
  *&v109 = a5;
  v105 = a4;
  v106 = a3;
  v110 = a9;
  v108 = a2;
  v95[1] = a15;
  v107 = a14;
  v99 = a13;
  v98 = a12;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF020, &unk_23AA12300);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v102 = v95 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = v95 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = v95 - v28;
  v30 = type metadata accessor for CapturedRoom.Surface.Curve(0);
  v103 = *(v30 - 8);
  v31 = *(v103 + 64);
  MEMORY[0x28223BE20](v30);
  v33 = v95 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = v95 - v35;
  *&v38 = MEMORY[0x28223BE20](v37);
  v40 = v95 - v39;
  v41 = 0;
  v96 = a11;
  if (a11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAED50, &unk_23AA122F0);
    v41 = swift_allocObject();
    v38 = xmmword_23AA11C20;
    *(v41 + 16) = xmmword_23AA11C20;
    v42 = v110.n128_u64[0];
    *&v43 = -0.5 * v110.n128_f32[0];
    *&v44 = -0.5 * v110.n128_f32[0];
    HIDWORD(v44) = vmuls_lane_f32(-0.5, v110.n128_u64[0], 1);
    *&v45 = 0.5 * v110.n128_f32[0];
    *&v46 = 0.5 * v110.n128_f32[0];
    HIDWORD(v46) = HIDWORD(v44);
    *(v41 + 32) = v44;
    *(v41 + 40) = v46;
    HIDWORD(v45) = vmuls_lane_f32(0.5, v42, 1);
    HIDWORD(v43) = HIDWORD(v45);
    *(v41 + 48) = v45;
    *(v41 + 56) = v43;
  }

  *&v38 = a10 + a10;
  if (a1 > 4u)
  {
    if (a1 <= 6u)
    {
      v104 = v38;
      if (a1 == 5)
      {

        *&v62 = sub_23A998F08(v108, v110);
        v64 = v63;
LABEL_37:
        v76 = vadd_f32(v110.n128_u64[0], vdup_lane_s32(*&v104, 0));
        v77 = type metadata accessor for ScanItemStrut();
        v54 = v102;
        (*(*(v77 - 8) + 56))(v102, 1, 1, v77);
        v78.n128_u64[0] = v76;
        v79 = v109;
        v80 = v54;
        v81 = v107;
        v82 = *&v64;
        v83 = *&v62;
        goto LABEL_38;
      }

      *&v62 = sub_23A998F08(v108, v110);
      v64 = v75;
      sub_23A8D5194(v106, v26, &qword_27DFAEB38, &unk_23AA11B60);
      if ((*(v103 + 48))(v26, 1, v30) != 1)
      {
        sub_23A8D5130(v26, v36);
        v88 = v110;
        v88.n128_u32[0] = v110.n128_u32[1];
        v89.n128_u32[0] = v64;
        v90.n128_u32[0] = v62;
        v55 = sub_23A8FA5A0(v36, v101, v88, v89, v90, v99, v107, 0xFuLL, 0);
        sub_23A94E4FC(v36);
        return v55;
      }

      v68 = v26;
    }

    else
    {
      if (a1 != 7)
      {
        if (a1 != 8)
        {

          v70 = v105;
          v71 = v108;
          if (qword_27DFAE518 != -1)
          {
            swift_once();
          }

          v72 = off_27DFB17B0;
          swift_beginAccess();
          v73 = v97;
          if (v72[40])
          {
            if (v72[40] == 1)
            {
              inited = sub_23AA080A0(v97, v71);
            }

            else
            {
              inited = sub_23AA08220(v97, v71);
            }
          }

          else
          {
            type metadata accessor for RoomCaptureMeshDimensionsRestriction();
            inited = swift_initStaticObject();
          }

          HIBYTE(v94) = v98 & 1;
          LOBYTE(v94) = v96 & 1;
          v55 = sub_23A996EFC(0, v71, v106, v70, v109, v101, v100, v73, v110, a10, v94, v99, v107, inited);
          goto LABEL_51;
        }

        v104 = v38;
        v49 = sub_23A998F08(v108, v110);
        v51 = v50;
        v52 = v105;
        if (*(v105 + 16))
        {
          type metadata accessor for RoomCaptureGeometryManager();
          swift_initStaticObject();
          v53 = type metadata accessor for ScanItemStrut();
          v54 = v102;
          (*(*(v53 - 8) + 56))(v102, 1, 1, v53);
          v55 = sub_23A8F0290(v52, v109, v41, v98 & 1, v54, v107, v110, v51, v49, a10);

LABEL_39:
          sub_23A8D50D0(v54, &unk_27DFAF020, &unk_23AA12300);
          return v55;
        }

        v92 = vadd_f32(v110.n128_u64[0], vdup_lane_s32(*&v104, 0));
        v93 = type metadata accessor for ScanItemStrut();
        v54 = v102;
        (*(*(v93 - 8) + 56))(v102, 1, 1, v93);
        v78.n128_u64[0] = v92;
        v79 = v109;
        v80 = v54;
        v81 = v107;
        v82 = v51;
        v83 = v49;
LABEL_38:
        v55 = sub_23A8F89D0(v79, v80, v81, v78, v82, v83);
        goto LABEL_39;
      }

      v104 = v38;

      *&v62 = sub_23A998F08(v108, v110);
      v64 = v67;
      sub_23A8D5194(v106, v23, &qword_27DFAEB38, &unk_23AA11B60);
      if ((*(v103 + 48))(v23, 1, v30) != 1)
      {
        sub_23A8D5130(v23, v33);
        v85 = v110;
        v85.n128_u32[0] = v110.n128_u32[1];
        v86.n128_u32[0] = v64;
        v87.n128_u32[0] = v62;
        v55 = sub_23A8FA5A0(v33, v101, v85, v86, v87, v99, v107, 0x3D567750uLL, 1);
        sub_23A94E4FC(v33);
        return v55;
      }

      v68 = v23;
    }

    sub_23A8D50D0(v68, &qword_27DFAEB38, &unk_23AA11B60);
    goto LABEL_37;
  }

  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        v47 = v105;
        if (*(v105 + 16))
        {
          type metadata accessor for RoomCaptureGeometryManager();
          swift_initStaticObject();
          v112[0] = 0;
          v111 = MEMORY[0x277D84F90];
          v48 = v47;
LABEL_22:
          v65 = sub_23A8F5768(v48, a10);
          if (v41)
          {
            type metadata accessor for CDTPolygon();
            swift_allocObject();
            v66 = sub_23A99A810(v41);
          }

          else
          {
            v66 = 0;
          }

          v55 = sub_23A8EFAA8(v65, v109, v66, v112, &v111);

LABEL_51:

          return v55;
        }

        v104 = v38;
        goto LABEL_46;
      }

      v104 = v38;

      v69.i64[0] = vaddq_f32(vdupq_lane_s32(*&v104, 0), v110).u64[0];
      v69.f32[2] = v110.n128_f32[2] + *&v104;
      v69.i32[3] = 0;

      return sub_23A998DDC(v69, 0.0);
    }

    sub_23A8D5194(v106, v29, &qword_27DFAEB38, &unk_23AA11B60);
    if ((*(v103 + 48))(v29, 1, v30) == 1)
    {
      sub_23A8D50D0(v29, &qword_27DFAEB38, &unk_23AA11B60);
      type metadata accessor for RoomCaptureGeometryManager();
      swift_initStaticObject();
      v112[0] = 0;
      v111 = MEMORY[0x277D84F90];
      v48 = v105;
      goto LABEL_22;
    }

    sub_23A8D5130(v29, v40);
    v84 = v110;
    v84.n128_u32[0] = v110.n128_u32[1];
    v55 = sub_23A8F4B4C(v40, v101, 0xFuLL, 0, v84);
    sub_23A94E4FC(v40);
    return v55;
  }

  v104 = v38;
  if (a1)
  {
LABEL_46:

    v91 = sub_23A8F3F24(v109, vadd_f32(v110.n128_u64[0], vdup_lane_s32(*&v104, 0)), 0.0);
    v55 = sub_23A982850(v91);

    return v55;
  }

  v56 = sub_23A8EAD88(v110);
  *&v57 = vaddq_f32(vdupq_lane_s32(*&v104, 0), v56).u64[0];
  *(&v57 + 2) = *&v104 + v56.f32[2];
  HIDWORD(v57) = 0;
  v109 = v57;
  v58.n128_f64[0] = sub_23A8EAE38(0.0, v110.n128_f64[0]);
  v59 = v109;
  v60 = v100;

  return sub_23A8F2D70(v60, v58, v59, 0.0001);
}

uint64_t sub_23A997994@<X0>(uint64_t a1@<X8>, float32x4_t a2@<Q0>, float a3@<S1>)
{
  v122 = a2;
  v109 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0680, &unk_23AA19510);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v105 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0690, &qword_23AA19538);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v105 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF000, &qword_23AA128F0);
  v107 = *(v12 - 8);
  v108 = v12;
  v13 = *(v107 + 64);
  MEMORY[0x28223BE20](v12);
  v106 = &v105 - v14;
  v15 = sub_23A8F29A8(v122, 0);
  v16 = v15[2];
  v17 = v16[1].i64[0];
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v125 = MEMORY[0x277D84F90];
    sub_23A975DC0(0, v17, 0);
    v19 = v122;
    v20 = vmuls_lane_f32(0.5, v122, 2);
    v18 = v125;
    v21 = v16 + 2;
    v22 = *(v125 + 16);
    do
    {
      v23 = *v21;
      v125 = v18;
      v24 = *(v18 + 24);
      v25 = v22 + 1;
      if (v22 >= v24 >> 1)
      {
        v121 = v23;
        sub_23A975DC0((v24 > 1), v22 + 1, 1);
        v23 = v121;
        v19 = v122;
        v18 = v125;
      }

      HIDWORD(v26) = 0;
      *&v26 = v23.i64[0];
      *(&v26 + 2) = v23.f32[2] - v20;
      *(v18 + 16) = v25;
      *(v18 + 16 * v22 + 32) = v26;
      ++v21;
      ++v22;
      --v17;
    }

    while (v17);
  }

  else
  {
    v25 = *(MEMORY[0x277D84F90] + 16);
    v19 = v122;
  }

  v125 = v18;
  v27 = v15[3];
  v123 = v15[4];
  if (HIDWORD(v25))
  {
    __break(1u);
  }

  else
  {
    v28 = vdupq_lane_s32(0, 0);
    *&v29 = -v19.f32[0];
    v30 = v19;
    v30.f32[0] = -v19.f32[0];
    v30.i32[3] = 0;
    v28.i32[0] = v19.i32[0];
    v31 = v19;
    v31.i32[3] = v28.i32[3];
    v116 = v30;
    v117 = v31;
    v119 = COERCE_UNSIGNED_INT(-v19.f32[0]);
    v120 = v28;
    v32 = v28;
    *&v32.i32[1] = -v19.f32[1];
    v113 = v32;
    v32.i32[2] = v19.i32[2];
    *(&v29 + 1) = -v19.f32[1];
    v112 = v29;
    *(&v29 + 1) = v19.u32[2];
    v114 = v29;
    v115 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB58, &unk_23AA11BF0);
    v33 = swift_allocObject();
    v34 = v116;
    *(v33 + 16) = xmmword_23AA11C20;
    *(v33 + 32) = v34;
    v35 = v115;
    *(v33 + 48) = v114;
    *(v33 + 64) = v35;
    *(v33 + 80) = v117;

    sub_23A9119A0(v33);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_10;
    }
  }

  v27 = sub_23A9388A8(0, *(v27 + 2) + 1, 1, v27);
LABEL_10:
  v37 = *(v27 + 2);
  v36 = *(v27 + 3);
  v38 = v36 >> 1;
  v39 = v37 + 1;
  if (v36 >> 1 <= v37)
  {
    v27 = sub_23A9388A8((v36 > 1), v37 + 1, 1, v27);
    v36 = *(v27 + 3);
    v38 = v36 >> 1;
  }

  *(v27 + 2) = v39;
  v40 = xmmword_23AA12240;
  *&v27[16 * v37 + 32] = xmmword_23AA12240;
  v41 = v37 + 2;
  if (v38 < (v37 + 2))
  {
    v121 = xmmword_23AA12240;
    v102 = sub_23A9388A8((v36 > 1), v37 + 2, 1, v27);
    v40 = v121;
    v27 = v102;
  }

  *(v27 + 2) = v41;
  *&v27[16 * v39 + 32] = v40;
  v42 = *(v27 + 3);
  v43 = v37 + 3;
  if ((v37 + 3) > (v42 >> 1))
  {
    v121 = v40;
    v103 = sub_23A9388A8((v42 > 1), v37 + 3, 1, v27);
    v40 = v121;
    v27 = v103;
  }

  *(v27 + 2) = v43;
  *&v27[16 * v41 + 32] = v40;
  v44 = *(v27 + 3);
  if ((v37 + 4) > (v44 >> 1))
  {
    v121 = v40;
    v104 = sub_23A9388A8((v44 > 1), v37 + 4, 1, v27);
    v40 = v121;
    v27 = v104;
  }

  *(v27 + 2) = v37 + 4;
  *&v27[16 * v43 + 32] = v40;
  v124 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAED48, &qword_23AA19520);
  result = swift_initStackObject();
  *(result + 16) = xmmword_23AA12260;
  *(result + 32) = v25;
  if (v25 == -1)
  {
    __break(1u);
    goto LABEL_37;
  }

  *(result + 36) = v25 + 1;
  v46 = v25 + 2;
  if (v25 >= 0xFFFFFFFE)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  *(result + 40) = v46;
  *(result + 44) = v25;
  *(result + 48) = v46;
  if (v25 >= 0xFFFFFFFD)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  *(result + 52) = v25 + 3;
  result = sub_23A911A8C(result);
  v47 = __CFADD__(v25, 4);
  v48 = v25 + 4;
  if (v47)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v49 = v122;
  v50 = v122.f32[2];
  v51 = v119;
  v51.i32[1] = v122.i32[1];
  v119 = v51;
  v52 = v120;
  v52.i32[1] = v122.i32[1];
  v49.f32[0] = v122.f32[2] + a3;
  v120 = v52;
  v121 = v49;
  v52.i64[0] = 0;
  v52.i32[3] = 0;
  v52.f32[2] = v122.f32[2] + a3;
  v118 = v52;
  v53 = swift_allocObject();
  v122 = xmmword_23AA15450;
  v54 = v116;
  v55 = v117;
  v53[1] = xmmword_23AA15450;
  v53[2] = v54;
  v56 = v118;
  v53[3] = v55;
  v53[4] = v56;
  sub_23A9119A0(v53);
  v58 = v120;
  v57 = v121;
  v57.f32[0] = v50 - v121.f32[0];
  v59 = v119;
  v59.f32[2] = v50 - v121.f32[0];
  v121 = v57;
  v58.i32[2] = v57.i32[0];
  v105 = v59;
  v110 = v58;
  v60 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v58, v58), v58, 0xCuLL), vnegq_f32(v59)), v58, vextq_s8(vuzp1q_s32(v59, v59), v59, 0xCuLL));
  v61 = vextq_s8(vuzp1q_s32(v60, v60), v60, 0xCuLL);
  v62 = vmulq_f32(v60, v60);
  v59.f32[0] = v62.f32[1] + (v62.f32[2] + v62.f32[0]);
  *v62.f32 = vrsqrte_f32(v59.u32[0]);
  *v62.f32 = vmul_f32(*v62.f32, vrsqrts_f32(v59.u32[0], vmul_f32(*v62.f32, *v62.f32)));
  v111 = vmulq_n_f32(v61, vmul_f32(*v62.f32, vrsqrts_f32(v59.u32[0], vmul_f32(*v62.f32, *v62.f32))).f32[0]);
  v63 = swift_allocObject();
  v64 = v111;
  *(v63 + 16) = v122;
  *(v63 + 32) = v64;
  *(v63 + 48) = v64;
  *(v63 + 64) = v64;
  sub_23A9119A0(v63);
  result = swift_initStackObject();
  *(result + 16) = v122;
  *(result + 32) = v48;
  if (v48 == -1)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  *(result + 36) = v48 + 1;
  if (v48 >= 0xFFFFFFFE)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  *(result + 40) = v48 + 2;
  result = sub_23A911A8C(result);
  v47 = __CFADD__(v48, 3);
  v65 = v48 + 3;
  if (v47)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v66 = v121;
  *(v66.i64 + 4) = v120.i64[0];
  v120 = v66;
  v67 = swift_allocObject();
  v68 = v117;
  *(v67 + 16) = v122;
  *(v67 + 32) = v68;
  v69 = v118;
  *(v67 + 48) = v115;
  *(v67 + 64) = v69;
  sub_23A9119A0(v67);
  v70 = v113;
  v70.i32[2] = v121.i32[0];
  v117 = v70;
  v71 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v70, v70), v70, 0xCuLL), vnegq_f32(v110)), v70, v120);
  v72 = vextq_s8(vuzp1q_s32(v71, v71), v71, 0xCuLL);
  v73 = vmulq_f32(v71, v71);
  v70.f32[0] = v73.f32[1] + (v73.f32[2] + v73.f32[0]);
  *v73.f32 = vrsqrte_f32(v70.u32[0]);
  *v73.f32 = vmul_f32(*v73.f32, vrsqrts_f32(v70.u32[0], vmul_f32(*v73.f32, *v73.f32)));
  v120 = vmulq_n_f32(v72, vmul_f32(*v73.f32, vrsqrts_f32(v70.u32[0], vmul_f32(*v73.f32, *v73.f32))).f32[0]);
  v74 = swift_allocObject();
  v75 = v120;
  *(v74 + 16) = v122;
  *(v74 + 32) = v75;
  *(v74 + 48) = v75;
  *(v74 + 64) = v75;
  sub_23A9119A0(v74);
  result = swift_initStackObject();
  *(result + 16) = v122;
  *(result + 32) = v65;
  if (v65 == -1)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  *(result + 36) = v65 + 1;
  if (v65 >= 0xFFFFFFFE)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  *(result + 40) = v65 + 2;
  result = sub_23A911A8C(result);
  v47 = __CFADD__(v65, 3);
  v76 = v65 + 3;
  if (v47)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v77 = v121;
  *(v77.i64 + 4) = v113.i64[0];
  v120 = v77;
  v78 = swift_allocObject();
  v80 = v114;
  v79 = v115;
  *(v78 + 16) = v122;
  *(v78 + 32) = v79;
  v81 = v118;
  *(v78 + 48) = v80;
  *(v78 + 64) = v81;
  sub_23A9119A0(v78);
  v82 = v112;
  v82.i32[2] = v121.i32[0];
  v83 = vmulq_f32(vextq_s8(vuzp1q_s32(v82, v82), v82, 0xCuLL), vnegq_f32(v117));
  v117 = v82;
  v84 = vmlaq_f32(v83, v82, v120);
  v85 = vextq_s8(vuzp1q_s32(v84, v84), v84, 0xCuLL);
  v86 = vmulq_f32(v84, v84);
  v82.f32[0] = v86.f32[1] + (v86.f32[2] + v86.f32[0]);
  *v86.f32 = vrsqrte_f32(v82.u32[0]);
  *v86.f32 = vmul_f32(*v86.f32, vrsqrts_f32(v82.u32[0], vmul_f32(*v86.f32, *v86.f32)));
  v120 = vmulq_n_f32(v85, vmul_f32(*v86.f32, vrsqrts_f32(v82.u32[0], vmul_f32(*v86.f32, *v86.f32))).f32[0]);
  v87 = swift_allocObject();
  v88 = v120;
  *(v87 + 16) = v122;
  *(v87 + 32) = v88;
  *(v87 + 48) = v88;
  *(v87 + 64) = v88;
  sub_23A9119A0(v87);
  result = swift_initStackObject();
  *(result + 16) = v122;
  *(result + 32) = v76;
  if (v76 == -1)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  *(result + 36) = v76 + 1;
  if (v76 >= 0xFFFFFFFE)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  *(result + 40) = v76 + 2;
  result = sub_23A911A8C(result);
  v47 = __CFADD__(v76, 3);
  v89 = v76 + 3;
  if (v47)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v90 = v121;
  v91 = v121;
  *(v91.i64 + 4) = v119.i64[0];
  *(v90.i64 + 4) = v112.i64[0];
  v120 = v91;
  v121 = v90;
  v92 = swift_allocObject();
  v93 = v114;
  *(v92 + 16) = v122;
  *(v92 + 32) = v93;
  v94 = v118;
  *(v92 + 48) = v116;
  *(v92 + 64) = v94;
  sub_23A9119A0(v92);
  v95 = vmlaq_f32(vmulq_f32(v120, vnegq_f32(v117)), v105, v121);
  v96 = vextq_s8(vuzp1q_s32(v95, v95), v95, 0xCuLL);
  v97 = vmulq_f32(v95, v95);
  *&v98 = v97.f32[1] + (v97.f32[2] + v97.f32[0]);
  *v97.f32 = vrsqrte_f32(v98);
  *v97.f32 = vmul_f32(*v97.f32, vrsqrts_f32(v98, vmul_f32(*v97.f32, *v97.f32)));
  v121 = vmulq_n_f32(v96, vmul_f32(*v97.f32, vrsqrts_f32(v98, vmul_f32(*v97.f32, *v97.f32))).f32[0]);
  v99 = swift_allocObject();
  v100 = v121;
  *(v99 + 16) = v122;
  *(v99 + 32) = v100;
  *(v99 + 48) = v100;
  *(v99 + 64) = v100;
  sub_23A9119A0(v99);
  result = swift_initStackObject();
  *(result + 16) = v122;
  *(result + 32) = v89;
  if (v89 == -1)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  *(result + 36) = v89 + 1;
  if (v89 < 0xFFFFFFFE)
  {
    *(result + 40) = v89 + 2;
    sub_23A911A8C(result);
    sub_23AA0C2D4();
    sub_23AA0CB74();
    sub_23AA0C2E4();
    sub_23AA0CDD4();
    sub_23AA0CB74();
    (*(v107 + 56))(v11, 0, 1, v108);
    sub_23AA0CDB4();
    sub_23AA0CB84();
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0688, &unk_23AA19528);
    (*(*(v101 - 8) + 56))(v7, 0, 1, v101);
    sub_23AA0C2C4();
  }

LABEL_50:
  __break(1u);
  return result;
}

void sub_23A998434(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0680, &unk_23AA19510);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v34 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF000, &qword_23AA128F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = *(type metadata accessor for LineAnimation() - 8);
    v11 = *(v10 + 72);
    v12 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + 112;
    while (1)
    {
      v14 = *(*v12 + 16);
      if (v14 <= 2)
      {
        v13 = __OFADD__(v9, v14);
        v9 += v14;
        if (v13)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if ((v14 + 0x3FFFFFFFFFFFFFFELL) < 0)
        {
          goto LABEL_39;
        }

        v15 = 2 * v14 - 4;
        v13 = __OFADD__(v15, 2);
        v16 = v15 + 2;
        if (v13)
        {
          goto LABEL_40;
        }

        v13 = __OFADD__(v9, v16);
        v9 += v16;
        if (v13)
        {
          __break(1u);
LABEL_11:
          if (v9 + 0x4000000000000000 >= 0)
          {
            if ((v9 & 0x8000000000000000) == 0)
            {
              if (v9)
              {
                v8 = 2 * v9;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0940, &qword_23AA15CF0);
                v17 = sub_23AA0D324();
                *(v17 + 16) = 2 * v9;
                bzero((v17 + 32), 32 * v9);
              }

              else
              {
                v8 = 0;
              }

              break;
            }

LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
            goto LABEL_44;
          }

LABEL_41:
          __break(1u);
          goto LABEL_42;
        }
      }

      v12 += v11;
      if (!--v8)
      {
        goto LABEL_11;
      }
    }
  }

  v18 = v8 >> 2;
  v19 = 6 * (v8 >> 2);
  if (((v8 >> 2) * 6) >> 64 != v19 >> 63)
  {
    goto LABEL_43;
  }

  v20 = sub_23A9388BC(0, v19, 0, MEMORY[0x277D84F90]);
  if (v8 >> 34)
  {
LABEL_44:
    __break(1u);
  }

  else
  {
    v21 = v20;
    if (v8 >= 4)
    {
      v23 = 0;
      v24 = 0x40000000;
      v37 = xmmword_23AA12260;
      v36 = xmmword_23AA19420;
      while (v18)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAED48, &qword_23AA19520);
        inited = swift_initStackObject();
        *(inited + 16) = v37;
        if (!v24)
        {
          goto LABEL_34;
        }

        *(inited + 32) = v23;
        *(inited + 36) = vorrq_s8(vdupq_n_s32(v23), v36);
        *(inited + 52) = v23;
        v26 = *(v21 + 2);
        v27 = v26 + 6;
        if (__OFADD__(v26, 6))
        {
          goto LABEL_35;
        }

        v28 = *(v21 + 3) >> 1;
        if (v28 < v27)
        {
          if (v26 <= v27)
          {
            v33 = v26 + 6;
          }

          else
          {
            v33 = *(v21 + 2);
          }

          v35 = inited;
          v21 = sub_23A9388BC(1, v33, 1, v21);
          inited = v35;
          v26 = *(v21 + 2);
          v28 = *(v21 + 3) >> 1;
        }

        if ((v28 - v26) < 6)
        {
          goto LABEL_36;
        }

        v29 = *(inited + 32);
        v30 = &v21[4 * v26];
        *(v30 + 6) = *(inited + 48);
        *(v30 + 2) = v29;

        v31 = *(v21 + 2);
        v13 = __OFADD__(v31, 6);
        v32 = v31 + 6;
        if (v13)
        {
          goto LABEL_37;
        }

        *(v21 + 2) = v32;
        --v24;
        v23 += 4;
        LODWORD(v18) = v18 - 1;
        if (!v18)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

LABEL_19:
    sub_23AA0C2D4();
    sub_23AA0CB74();
    sub_23AA0C2E4();
    sub_23AA0CDD4();
    sub_23AA0CB84();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0688, &unk_23AA19528);
    (*(*(v22 - 8) + 56))(v5, 0, 1, v22);
    sub_23AA0C2C4();
  }
}

uint64_t sub_23A998848()
{
  sub_23A8D50D0(v0 + 16, &unk_27DFB10C0, &unk_23AA19560);
  v1 = *(v0 + 56);

  sub_23A8D50D0(v0 + 64, &unk_27DFB10C0, &unk_23AA19560);
  v2 = *(v0 + 104);

  return swift_deallocClassInstance();
}

unint64_t sub_23A998900()
{
  result = qword_27DFB0678;
  if (!qword_27DFB0678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0678);
  }

  return result;
}

uint64_t sub_23A998954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v31[1] = a2;
  v32 = a4;
  v31[0] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB06C0, &unk_23AA1BB10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v33 = v31 - v6;
  v7 = sub_23AA0CE04();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v40 = sub_23AA0C364();
  v9 = *(v40 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v40);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23AA0C354();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB06B0, &qword_23AA19548);
  v13 = *(sub_23AA0C314() - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  v34 = xmmword_23AA10FC0;
  *(v16 + 16) = xmmword_23AA10FC0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB06B8, &unk_23AA19550);
  v17 = sub_23AA0C2E4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v34;
  (*(v18 + 16))(v21 + v20, v35, v17);
  sub_23AA0C2F4();
  sub_23AA0CDE4();
  sub_23AA0C344();
  sub_23AA0C3F4();
  v22 = v36;
  sub_23AA0C384();
  if (!v22)
  {
    v23 = v31[0];
    sub_23A8D5194(v32, &v37, &qword_27DFAF780, &qword_23AA14670);
    if (v38)
    {
      sub_23A8CAA3C(&v37, v39);
      sub_23A8CA9D8(v39, &v37);
      v24 = sub_23A9388D0(0, 1, 1, MEMORY[0x277D84F90]);
      v26 = v24[2];
      v25 = v24[3];
      if (v26 >= v25 >> 1)
      {
        v24 = sub_23A9388D0((v25 > 1), v26 + 1, 1, v24);
      }

      __swift_destroy_boxed_opaque_existential_1(v39);
      v24[2] = v26 + 1;
      sub_23A8CAA3C(&v37, &v24[5 * v26 + 4]);
    }

    else
    {
      sub_23A8D50D0(&v37, &qword_27DFAF780, &qword_23AA14670);
    }

    v27 = *v23;

    v28 = v33;
    sub_23AA0C474();
    v29 = sub_23AA0C4A4();
    (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
    sub_23AA0CAF4();
  }

  return (*(v9 + 8))(v12, v40);
}

void *sub_23A998DDC(float32x4_t a1, float a2)
{
  v10 = a1.f32[0];
  *&v13 = 0.5 * a1.f32[0];
  v2 = a1.f32[2];
  v12 = vmuls_lane_f32(0.5, a1, 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB58, &unk_23AA11BF0);
  v3 = swift_allocObject();
  HIDWORD(v4) = 0;
  *&v4 = -(v10 * 0.5);
  HIDWORD(v5) = 0;
  *(&v4 + 1) = a2;
  *&v5 = __PAIR64__(LODWORD(a2), v13);
  v6 = v4;
  *(&v6 + 2) = v12;
  v7 = __PAIR64__(LODWORD(a2), v13);
  *(&v7 + 2) = v12;
  *(&v5 + 2) = -(v2 * 0.5);
  v3[1] = xmmword_23AA11C20;
  v3[2] = v6;
  v3[3] = v7;
  v3[4] = v5;
  *(&v4 + 2) = *(&v5 + 2);
  v3[5] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0940, &qword_23AA15CF0);
  v8 = sub_23AA0D324();
  *(v8 + 16) = 4;
  *(v8 + 32) = xmmword_23AA12220;
  *(v8 + 48) = xmmword_23AA12220;
  *(v8 + 64) = xmmword_23AA12220;
  *(v8 + 80) = xmmword_23AA12220;
  type metadata accessor for RoomCaptureMesh();
  result = swift_allocObject();
  result[2] = v3;
  result[3] = v8;
  result[4] = &unk_284D7FB20;
  return result;
}

float sub_23A998F08(unsigned __int8 a1, __n128 a2)
{
  if (a1 > 5u)
  {
    return 0.08;
  }

  if (a2.n128_f32[2] > 0.0)
  {
    return a2.n128_f32[2] * 0.5;
  }

  if (((0x30100040205uLL >> (8 * (a1 & 0x1Fu))) - 2) > 3u)
  {
    return 0.08;
  }

  else
  {
    return flt_23AA11F40[((0x30100040205uLL >> (8 * (a1 & 0x1Fu))) - 2)];
  }
}

uint64_t sub_23A998F7C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23A998FC4()
{
  result = qword_27DFB06C8;
  if (!qword_27DFB06C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB06C8);
  }

  return result;
}

uint64_t sub_23A999018(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB10C0, &unk_23AA19560);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *sub_23A999088(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[1].i64[0];
  v3 = &unk_23AA19000;
  v4 = &unk_23AA19000;
  if (v2)
  {
    v5 = a1;
    v6 = *(type metadata accessor for LineAnimation() - 8);
    v7 = (v6[80] + 32) & ~v6[80];
    if (qword_27DFAE518 != -1)
    {
      goto LABEL_32;
    }

    while (1)
    {
      v8 = v5 + v7;
      v36 = (off_27DFB17B0 + 36);
      swift_beginAccess();
      v9 = 0;
      v10 = v3[67];
      v11 = v4[68];
      v12 = *(v6 + 9);
      v6 = MEMORY[0x277D84F90];
      while (v9 != v2)
      {
        v13 = &v8[v12 * v9];
        v3 = *(v13 + 14);
        v4 = v3[1].i64[0];
        if (v4)
        {
          v43 = v11;
          v46 = v10;
          v37 = *v36 * *(v13 + 25);
          v38 = *(v13 + 24) * *v36;

          v15 = v43;
          v14 = v46;
          v5 = 0;
          while (1)
          {
            v44 = v15;
            v47 = v14;
            v39 = v15.i32[3];
            v40 = v14.i32[3];
            v41 = v3[v5 + 2];
            if (v5)
            {
              v18 = v3[1].i64[0] - 1;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if (v5 != v18)
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v6 = sub_23A9390AC(0, *(v6 + 2) + 1, 1, v6);
                }

                v28 = *(v6 + 2);
                v27 = *(v6 + 3);
                v29 = v27 >> 1;
                v7 = v28 + 1;
                v23 = v44;
                v22 = v47;
                v24 = v41;
                if (v27 >> 1 <= v28)
                {
                  v32 = sub_23A9390AC((v27 > 1), v28 + 1, 1, v6);
                  v24 = v41;
                  v23 = v44;
                  v22 = v47;
                  v6 = v32;
                  v27 = *(v32 + 3);
                  v29 = v27 >> 1;
                }

                v16 = v24;
                v16.i32[3] = 1.0;
                *(v6 + 2) = v7;
                *&v6[16 * v28 + 32] = v16;
                v21 = v28 + 2;
                if (v29 < v21)
                {
                  v34 = v16;
                  v30 = sub_23A9390AC((v27 > 1), v21, 1, v6);
                  v16 = v34;
                  v24 = v41;
                  v23 = v44;
                  v22 = v47;
                  v6 = v30;
                }

                goto LABEL_11;
              }

              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v6 = sub_23A9390AC(0, *(v6 + 2) + 1, 1, v6);
              }

              v7 = *(v6 + 2);
              v20 = *(v6 + 3);
              v21 = v7 + 1;
              v23 = v44;
              v22 = v47;
              v24 = v41;
              if (v7 >= v20 >> 1)
              {
                v31 = sub_23A9390AC((v20 > 1), v7 + 1, 1, v6);
                v24 = v41;
                v23 = v44;
                v22 = v47;
                v6 = v31;
              }

              v16 = v24;
              v17 = v37;
            }

            else
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v6 = sub_23A9390AC(0, *(v6 + 2) + 1, 1, v6);
              }

              v7 = *(v6 + 2);
              v25 = *(v6 + 3);
              v21 = v7 + 1;
              v23 = v44;
              v22 = v47;
              v24 = v41;
              if (v7 >= v25 >> 1)
              {
                v26 = sub_23A9390AC((v25 > 1), v7 + 1, 1, v6);
                v24 = v41;
                v23 = v44;
                v22 = v47;
                v6 = v26;
              }

              v16 = v24;
              v17 = v38;
            }

            v16.f32[3] = v17;
LABEL_11:
            v5 = (v5 + 1);
            *(v6 + 2) = v21;
            v23.i32[3] = 0;
            *&v6[16 * v7 + 32] = v16;
            v24.i32[3] = 0;
            v15 = vminnmq_f32(v23, v24);
            v15.i32[3] = v39;
            v22.i32[3] = 0;
            v14 = vmaxnmq_f32(v22, v24);
            v14.i32[3] = v40;
            if (v4 == v5)
            {
              v42 = v15;
              v45 = v14;

              v11 = v42;
              v10 = v45;
              break;
            }
          }
        }

        if (++v9 == v2)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_32:
      swift_once();
    }
  }

  v10 = xmmword_23AA19430;
  v11 = xmmword_23AA19440;
  v6 = MEMORY[0x277D84F90];
LABEL_30:
  *a2 = vabdq_f32(v10, v11);
  return v6;
}

unint64_t sub_23A999444()
{
  result = qword_27DFB06D0;
  if (!qword_27DFB06D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB06D0);
  }

  return result;
}

uint64_t sub_23A999498(void *a1, uint64_t a2)
{
  v3 = v2;
  v36[1] = *MEMORY[0x277D85DE8];
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  type metadata accessor for MetalConstants();
  swift_initStaticObject();
  swift_unknownObjectRetain();
  v6 = sub_23A93C058();
  v7 = [objc_allocWithZone(MEMORY[0x277CD6F78]) init];
  v8 = sub_23AA0D104();
  v9 = [v6 newFunctionWithName_];

  [v7 setVertexFunction_];
  swift_unknownObjectRelease();
  v10 = sub_23AA0D104();
  v11 = [v6 newFunctionWithName_];

  [v7 setFragmentFunction_];
  swift_unknownObjectRelease();
  v12 = [v7 colorAttachments];
  v13 = [v12 objectAtIndexedSubscript_];

  if (!v13)
  {
    __break(1u);
    goto LABEL_18;
  }

  [v13 setBlendingEnabled_];

  v14 = [v7 colorAttachments];
  v15 = [v14 objectAtIndexedSubscript_];

  if (!v15)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v15 setRgbBlendOperation_];

  v16 = [v7 colorAttachments];
  v17 = [v16 objectAtIndexedSubscript_];

  if (!v17)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v17 setAlphaBlendOperation_];

  v18 = [v7 colorAttachments];
  v19 = [v18 objectAtIndexedSubscript_];

  if (!v19)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v19 setSourceRGBBlendFactor_];

  v20 = [v7 colorAttachments];
  v21 = [v20 objectAtIndexedSubscript_];

  if (!v21)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v21 setSourceAlphaBlendFactor_];

  v22 = [v7 colorAttachments];
  v23 = [v22 objectAtIndexedSubscript_];

  if (!v23)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v23 setDestinationRGBBlendFactor_];

  v24 = [v7 colorAttachments];
  v25 = [v24 objectAtIndexedSubscript_];

  if (!v25)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  [v25 setDestinationAlphaBlendFactor_];

  v26 = [v7 colorAttachments];
  v27 = [v26 objectAtIndexedSubscript_];

  if (!v27)
  {
    goto LABEL_24;
  }

  [v27 setPixelFormat_];

  v28 = 8;
  if (([a1 supportsTextureSampleCount_] & 1) == 0)
  {
    if ([a1 supportsTextureSampleCount_])
    {
      v28 = 4;
    }

    else
    {
      v28 = 1;
    }
  }

  [v7 setRasterSampleCount_];
  v36[0] = 0;
  v29 = [a1 newRenderPipelineStateWithDescriptor:v7 error:v36];
  if (v29)
  {
    v30 = v29;
    v31 = v36[0];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    *(v3 + 32) = v30;
  }

  else
  {
    v32 = v36[0];
    sub_23AA0BE74();

    swift_willThrow();
    swift_unknownObjectRelease();

    swift_willThrow();
    swift_unknownObjectRelease();
    v33 = *(v3 + 16);
    swift_unknownObjectRelease();
    type metadata accessor for DotsRenderer();
    swift_deallocPartialClassInstance();
  }

  v34 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_23A9999B4(void *a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, float a6, float a7)
{
  v36 = *MEMORY[0x277D85DE8];
  [a1 setRenderPipelineState_];
  v35[0] = a2;
  v35[1] = a3;
  v35[2] = a4;
  v35[3] = a5;
  v11 = *(v7 + 16);
  v12 = [v11 newBufferWithBytes:v35 length:64 options:0];
  if (!v12)
  {
    __break(1u);
    goto LABEL_8;
  }

  [a1 setVertexBuffer:v12 offset:0 atIndex:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB06D8, qword_23AA196F0);
  v13 = swift_allocObject();
  *(v13 + 32) = xmmword_23AA19670;
  *(v13 + 48) = 0;
  *(v13 + 64) = xmmword_23AA19680;
  *(v13 + 80) = 1065353216;
  *(v13 + 96) = xmmword_23AA19690;
  *(v13 + 112) = 0x3F80000000000000;
  *(v13 + 128) = xmmword_23AA196A0;
  __asm { FMOV            V0.2S, #1.0 }

  *(v13 + 144) = _D0;
  v19 = [v11 newBufferWithBytes:v13 + 32 length:128 options:0];
  if (!v19)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v20 = v19;
  swift_setDeallocating();
  swift_deallocClassInstance();
  [a1 setVertexBuffer:v20 offset:0 atIndex:1];
  v21 = cosf(a7);
  HIDWORD(v22) = 1056964608;
  *&v22 = (v21 + 1.0) * 0.5;
  v23 = 0.0;
  if (a6 > 0.0)
  {
    v23 = a6;
  }

  v31 = 0x4160000041200000;
  v32 = 1048576000;
  v33 = v23;
  v34 = v22;
  v24 = [v11 newBufferWithBytes:&v31 length:24 options:0];
  if (!v24)
  {
LABEL_9:
    __break(1u);
  }

  [a1 setFragmentBuffer:v24 offset:0 atIndex:0];
  [a1 drawPrimitives:4 vertexStart:0 vertexCount:4];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23A999C28()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_23A999CA0()
{
  type metadata accessor for ARFrameLogManager();
  v0 = swift_allocObject();
  result = sub_23A99A5D8();
  qword_27DFC07E8 = v0;
  return result;
}

uint64_t sub_23A999CDC(uint64_t result, uint64_t a2, double a3)
{
  v3 = *(result + 48);
  if (v3 <= a3)
  {
    if (v3 <= 0.0 || 1.5 / a2 >= a3 - v3)
    {
      goto LABEL_9;
    }

    v4 = (result + 56);
    v8 = *(result + 56);
    v6 = __OFADD__(v8, 1);
    v7 = v8 + 1;
    if (v6)
    {
      __break(1u);
      goto LABEL_9;
    }

LABEL_3:
    *v4 = v7;
LABEL_9:
    *(result + 48) = a3;
    *(result + 144) = a2;
    return result;
  }

  v4 = (result + 64);
  v5 = *(result + 64);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (!v6)
  {
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t sub_23A999D44(uint64_t result, double a2)
{
  v2 = *(result + 80);
  if (v2 <= a2)
  {
    if (v2 <= 0.0 || 1.5 / *(result + 144) >= a2 - v2)
    {
      goto LABEL_9;
    }

    v3 = (result + 88);
    v7 = *(result + 88);
    v5 = __OFADD__(v7, 1);
    v6 = v7 + 1;
    if (v5)
    {
      __break(1u);
      goto LABEL_9;
    }

LABEL_3:
    *v3 = v6;
LABEL_9:
    *(result + 80) = a2;
    return result;
  }

  v3 = (result + 96);
  v4 = *(result + 96);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (!v5)
  {
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t sub_23A999DAC(uint64_t result, double a2)
{
  v3 = *(result + 80);
  v4 = *(result + 112);
  if (v4 <= a2)
  {
    if (v4 <= 0.0 || 1.5 / *(result + 144) >= a2 - v4)
    {
      goto LABEL_9;
    }

    v5 = (result + 120);
    v9 = *(result + 120);
    v7 = __OFADD__(v9, 1);
    v8 = v9 + 1;
    if (v7)
    {
      __break(1u);
      goto LABEL_9;
    }
  }

  else
  {
    v5 = (result + 128);
    v6 = *(result + 128);
    v7 = __OFADD__(v6, 1);
    v8 = v6 + 1;
    if (v7)
    {
      __break(1u);
      goto LABEL_14;
    }
  }

  *v5 = v8;
LABEL_9:
  v10 = *(result + 136);
  if (v3 == a2)
  {
LABEL_12:
    *(result + 112) = a2;
    return sub_23A999E7C(*(result + 56), *(result + 64), *(result + 72), *(result + 88), *(result + 96), *(result + 104), *(result + 120), *(result + 128), *(result + 48), v3, a2, v10);
  }

  v7 = __OFADD__(v10++, 1);
  if (!v7)
  {
    *(result + 136) = v10;
    goto LABEL_12;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_23A999E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, uint64_t a12)
{
  v37 = a8;
  v34 = a6;
  v35 = a12;
  v36 = a7;
  v20 = sub_23AA0BDE4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v34 - v26;
  sub_23A99A158(a1, a2, a3, 0x74694B5241, 0xE500000000000000, 0, &v34 - v26, a9);
  sub_23AA0BDA4();
  sub_23AA0BDC4();
  v28 = *(v21 + 8);
  v28(v24, v20);
  sub_23A99A158(a4, a5, v34, 0x6568636143, 0xE500000000000000, 0, v24, a10);
  sub_23AA0BDC4();
  v28(v24, v20);
  sub_23AA0BDA4();
  sub_23AA0BDC4();
  v28(v24, v20);
  sub_23A99A158(v36, v37, v35, 0x2E646E6552, 0xE500000000000000, 1, v24, a11);
  sub_23AA0BDC4();
  v28(v24, v20);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v30 = Strong + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_debugDelegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v31 = *(v30 + 8);
      ObjectType = swift_getObjectType();
      (*(v31 + 24))(v27, ObjectType, v31);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  return (v28)(v27, v20);
}

uint64_t sub_23A99A158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v41 = a6;
  v39 = a2;
  v40 = a3;
  v45 = a7;
  v12 = sub_23AA0BE34();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_23AA0BDE4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v44 = &v39 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v39 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v39 - v25;
  v47 = a4;
  v48 = a5;

  MEMORY[0x23EE8FCA0](0x666C332E253ALL, 0xE600000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1430, &unk_23AA12E20);
  v27 = swift_allocObject();
  v28 = MEMORY[0x277D839F8];
  *(v27 + 16) = xmmword_23AA10FC0;
  v29 = MEMORY[0x277D83A80];
  *(v27 + 56) = v28;
  *(v27 + 64) = v29;
  *(v27 + 32) = a8;
  v30 = sub_23AA0D164();
  v42 = v31;
  v43 = v30;

  v47 = 40;
  v48 = 0xE100000000000000;
  v46 = a1;
  v32 = sub_23AA0DBB4();
  MEMORY[0x23EE8FCA0](v32);

  MEMORY[0x23EE8FCA0](41, 0xE100000000000000);
  sub_23AA0BE24();
  sub_23AA0BDF4();
  v33 = objc_opt_self();
  v47 = [v33 systemRedColor];
  sub_23A9633E8();
  sub_23AA0BE04();
  v47 = 40;
  v48 = 0xE100000000000000;
  if (v41)
  {
    v34 = v40;
  }

  else
  {
    v34 = v39;
  }

  v46 = v34;
  v35 = sub_23AA0DBB4();
  MEMORY[0x23EE8FCA0](v35);

  MEMORY[0x23EE8FCA0](41, 0xE100000000000000);
  sub_23AA0BE24();
  sub_23AA0BDF4();
  v47 = [v33 systemOrangeColor];
  sub_23AA0BE04();
  sub_23AA0BE24();
  sub_23AA0BDF4();
  v36 = v44;
  sub_23AA0BDB4();
  v37 = *(v15 + 8);
  v37(v18, v14);
  sub_23AA0BDB4();
  v37(v36, v14);
  v37(v23, v14);
  return (v37)(v26, v14);
}

uint64_t sub_23A99A564()
{
  sub_23A8E9694(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_23A99A5D8()
{
  v10[0] = sub_23AA0D524();
  v1 = *(v10[0] - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v10[0]);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23AA0D504();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_23AA0CF24();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = 0;
  sub_23A9164A0();
  sub_23AA0CEE4();
  v10[1] = MEMORY[0x277D84F90];
  sub_23A9164EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF830, &qword_23AA14A40);
  sub_23A916544();
  sub_23AA0D764();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v10[0]);
  *(v0 + 40) = sub_23AA0D554();
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 60;
  return v0;
}

uint64_t sub_23A99A810(uint64_t result)
{
  v2 = v1;
  v3 = result;
  v4 = *(result + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = 0;
    v7 = result + 32;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v4 - 1 == v6 ? 0 : v6 + 1;
      if (v9 >= *(v3 + 16))
      {
        break;
      }

      v10 = *(v7 + 8 * v6);
      v11 = vsub_f32(v10, *(v7 + 8 * v9));
      v12 = fabsf(v11.f32[0]);
      v13 = fabsf(v11.f32[1]);
      if (v12 >= 0.00000011921 || v13 >= 0.00000011921)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_23A938A28(0, *(v8 + 16) + 1, 1, v8);
          v8 = result;
        }

        v16 = *(v8 + 16);
        v15 = *(v8 + 24);
        if (v16 >= v15 >> 1)
        {
          result = sub_23A938A28((v15 > 1), v16 + 1, 1, v8);
          v8 = result;
        }

        *(v8 + 16) = v16 + 1;
        *(v8 + 8 * v16 + 32) = v10;
      }

      if (v4 == ++v6)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

  v8 = MEMORY[0x277D84F90];
LABEL_18:

  *(v2 + 16) = v8;
  v17 = *(v8 + 16);
  if (v17)
  {
    v24 = v5;
    swift_bridgeObjectRetain_n();
    result = sub_23AA0D964();
    v18 = 4;
    while (1)
    {
      v19 = *(v8 + 16);
      if (!v19)
      {
        break;
      }

      v20 = *(v8 + 8 * v18);
      v21 = *(v8 + 32 + 8 * ((v18 - 3) % v19));
      type metadata accessor for CDTEdge();
      swift_allocObject();
      sub_23A947224(v20, v21);
      sub_23AA0D944();
      v22 = *(v24 + 16);
      sub_23AA0D974();
      sub_23AA0D984();
      result = sub_23AA0D954();
      if (++v18 - v17 == 4)
      {

        v23 = v24;
        goto LABEL_24;
      }
    }

LABEL_26:
    __break(1u);
    return result;
  }

  v23 = MEMORY[0x277D84F90];
LABEL_24:
  *(v2 + 24) = v23;

  return v2;
}

uint64_t sub_23A99AA3C()
{
  v1 = *(*(v0 + 16) + 16);
  if (v1 < 3)
  {
    return 0;
  }

  if (v1 != 3)
  {
    v3 = *(v0 + 24);
    if (v3 >> 62)
    {
LABEL_40:
      v4 = sub_23AA0D7F4();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = 0;
    v6 = v3 & 0xC000000000000001;
    LOBYTE(v7) = 3;
LABEL_8:
    v18 = v7;
    v8 = v5;
    while (v4 != v8)
    {
      if (v6)
      {
        v15 = MEMORY[0x23EE90360](v8, v3);
        v5 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v8 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v15 = *(v3 + 8 * v8 + 32);

        v5 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }
      }

      if (v3 >> 62)
      {
        v16 = sub_23AA0D7F4();
      }

      else
      {
        v16 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v16)
      {
        goto LABEL_36;
      }

      if (v5 == 0x8000000000000000 && v16 == -1)
      {
        goto LABEL_37;
      }

      v17 = v5 % v16;
      if (v6)
      {
        v9 = MEMORY[0x23EE90360](v17, v3);
      }

      else
      {
        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        if (v17 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v9 = *(v3 + 32 + 8 * v17);
      }

      v10 = *(v15 + 16);
      v11 = *(v15 + 24);
      v12 = *(v9 + 24);

      v13 = vmul_f32(vsub_f32(v11, v10), vrev64_s32(vsub_f32(v12, v10)));
      LODWORD(v14) = vsub_f32(v13, vdup_lane_s32(v13, 1)).u32[0];
      ++v8;
      if (fabsf(v14) >= 1.4211e-14)
      {
        if (v14 <= 0.0)
        {
          v7 = 1;
        }

        else
        {
          v7 = 2;
        }

        if (v18 == 3)
        {
          goto LABEL_8;
        }

        result = 0;
        if (v7 == v18)
        {
          goto LABEL_8;
        }

        return result;
      }
    }
  }

  return 1;
}

void sub_23A99AC40()
{
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    v2 = sub_23AA0D7F4();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = 0;
    v4 = 0.0;
    do
    {
      v5 = MEMORY[0x23EE90360](v3++, v1);
      v7 = *(v5 + 16);
      v6 = *(v5 + 24);
      swift_unknownObjectRelease();
      v4 = v4 + vmul_lane_f32(vsub_f32(v6, v7), vadd_f32(v6, v7), 1).f32[0];
    }

    while (v2 != v3);
  }

  else
  {
    v8 = (v1 + 32);
    v9 = 0.0;
    do
    {
      v10 = *v8++;
      v9 = v9 + vmul_lane_f32(vsub_f32(v10[3], v10[2]), vadd_f32(v10[3], v10[2]), 1).f32[0];
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_23A99AD2C(float32x2_t *a1)
{
  v5 = v1;
  v6 = a1;
  v7 = MEMORY[0x277D84F90];
  v61 = MEMORY[0x277D84F90];
  v8 = a1[2];
  v54 = v5;
  LOBYTE(v9) = sub_23A8EDA7C(v5, 0.00000011921, v8);
  v10 = &off_23AA10000;
  if ((v9 & 1) == 0)
  {
    v13 = -1;
    v11 = v7;
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAED50, &unk_23AA122F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_23AA10FC0;
  *(v2 + 32) = v8;
  v11 = sub_23A939860(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = v11[2];
  v12 = v11[3];
  v3 = v4 + 1;
  if (v4 >= v12 >> 1)
  {
    goto LABEL_103;
  }

LABEL_3:
  v13 = 0;
  v11[2] = v3;
  v11[v4 + 4] = v2;
  v61 = v11;
LABEL_5:
  v60 = v7;
  v14 = *(v54 + 24);
  if (!(v14 >> 62))
  {
    v12 = v14 & 0xFFFFFFFFFFFFFF8;
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

  while (1)
  {
    v2 = v14;
    v15 = sub_23AA0D7F4();
    v14 = v2;
    if (v15)
    {
LABEL_7:
      if (v15 >= 1)
      {
        v7 = 0;
        v58 = v14 & 0xC000000000000001;
        v4 = MEMORY[0x277D84F90];
        v56 = v14;
        v57 = v13;
        v55 = v15;
        while (1)
        {
          if (v58)
          {
            v10 = MEMORY[0x23EE90360](v7);
          }

          else
          {
            v10 = *(v14 + 8 * v7 + 32);
          }

          v18 = sub_23A946DC8(v10, 0, 0.0001, v16, v17);
          v19 = *(v18 + 16);
          v3 = *(v4 + 16);
          v13 = v3 + v19;
          if (__OFADD__(v3, v19))
          {
            goto LABEL_93;
          }

          v20 = v18;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || (v22 = *(v4 + 24) >> 1, v22 < v13))
          {
            if (v3 <= v13)
            {
              v23 = v3 + v19;
            }

            else
            {
              v23 = v3;
            }

            v4 = sub_23A938A28(isUniquelyReferenced_nonNull_native, v23, 1, v4);
            v22 = *(v4 + 24) >> 1;
          }

          v13 = v57;
          if (*(v20 + 16))
          {
            v24 = *(v4 + 16);
            if (v22 - v24 < v19)
            {
              goto LABEL_95;
            }

            memcpy((v4 + 8 * v24 + 32), (v20 + 32), 8 * v19);

            if (v19)
            {
              v25 = *(v4 + 16);
              v26 = __OFADD__(v25, v19);
              v27 = v25 + v19;
              if (v26)
              {
                goto LABEL_99;
              }

              *(v4 + 16) = v27;
            }
          }

          else
          {

            if (v19)
            {
              goto LABEL_94;
            }
          }

          ++v7;

          v14 = v56;
          if (v55 == v7)
          {
            v60 = v4;
            v10 = &off_23AA10000;
            goto LABEL_27;
          }
        }
      }

      __break(1u);
LABEL_103:
      v11 = sub_23A939860((v12 > 1), v3, 1, v11);
      goto LABEL_3;
    }

LABEL_27:

    sub_23A99B59C(&v60, v6);

    v28 = v60;
    v29 = *(v60 + 2);
    if (v29)
    {
      v3 = 32;
      v59 = *v10[504].f32;
      do
      {
        v32 = *&v28[v3];
        if (v9)
        {
          if ((v13 & 0x8000000000000000) != 0)
          {
            goto LABEL_96;
          }

          if (v13 >= v11[2])
          {
            goto LABEL_98;
          }

          v4 = v11[v13 + 4];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_23A938A28(0, *(v4 + 16) + 1, 1, v4);
          }

          v7 = *(v4 + 16);
          v33 = *(v4 + 24);
          v10 = (v7 + 1);
          if (v7 >= v33 >> 1)
          {
            v4 = sub_23A938A28((v33 > 1), v7 + 1, 1, v4);
          }

          *(v4 + 16) = v10;
          *(v4 + 8 * v7 + 32) = v32;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_23A975D00(v11);
          }

          v30 = &v11[v13];
          v31 = v30[4];
          v30[4] = v4;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAED50, &unk_23AA122F0);
          v4 = swift_allocObject();
          *(v4 + 16) = v59;
          *(v4 + 32) = v32;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_23A939860(0, v11[2] + 1, 1, v11);
          }

          v7 = v11[2];
          v34 = v11[3];
          v10 = (v7 + 1);
          if (v7 >= v34 >> 1)
          {
            v11 = sub_23A939860((v34 > 1), v7 + 1, 1, v11);
          }

          v11[2] = v10;
          v11[v7 + 4] = v4;
          v26 = __OFADD__(v13++, 1);
          if (v26)
          {
            goto LABEL_97;
          }
        }

        LOBYTE(v9) = v9 ^ 1;
        v3 += 8;
        --v29;
      }

      while (v29);

      v61 = v11;
      if (!v11[2])
      {
LABEL_57:

        return MEMORY[0x277D84F90];
      }
    }

    else
    {

      if (!v11[2])
      {
        goto LABEL_57;
      }
    }

    v35 = v6[3];
    if (sub_23A8EDA7C(v54, 0.00000011921, v35))
    {
      if ((v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_105:
        __break(1u);
      }

      else if (v13 < v11[2])
      {
        v6 = v11[v13 + 4];

        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_52:
          v37 = v6[2];
          v36 = v6[3];
          if (v37 >= v36 >> 1)
          {
            v6 = sub_23A938A28((v36 > 1), v37 + 1, 1, v6);
          }

          v6[2] = (v37 + 1);
          v6[v37 + 4] = v35;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_23A975D00(v11);
          }

          goto LABEL_68;
        }

LABEL_108:
        v6 = sub_23A938A28(0, *&v6[2] + 1, 1, v6);
        goto LABEL_52;
      }

      __break(1u);
LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

    if ((v13 & 0x8000000000000000) != 0)
    {
      goto LABEL_105;
    }

    if (v13 >= v11[2])
    {
      goto LABEL_107;
    }

    v6 = v11[v13 + 4];
    if (*&v6[2] != 1)
    {
      goto LABEL_69;
    }

    v38 = v11[v13 + 4];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_23A938A28(0, 2, 1, v6);
    }

    v40 = v6[2];
    v39 = v6[3];
    if (v40 >= v39 >> 1)
    {
      v6 = sub_23A938A28((v39 > 1), v40 + 1, 1, v6);
    }

    v6[2] = (v40 + 1);
    v6[v40 + 4] = v35;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23A975D00(v11);
      v11 = result;
    }

    if (v13 >= v11[2])
    {
      __break(1u);
      return result;
    }

LABEL_68:
    v42 = &v11[v13];
    v43 = v42[4];
    v42[4] = v6;

    v61 = v11;
LABEL_69:
    v9 = v11[2];
    if (!v9)
    {
      return v11;
    }

    v44 = v9 - 1;
    v45 = v11[v9 + 3];

    v6 = sub_23A9BB0CC(v45, 0.0001);

    if (*&v6[2] >= 2uLL)
    {
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v47 = v11;
      if ((v46 & 1) == 0)
      {
        v47 = sub_23A939860(0, v11[2] + 1, 1, v11);
      }

      v49 = v47[2];
      v48 = v47[3];
      if (v49 >= v48 >> 1)
      {
        v47 = sub_23A939860((v48 > 1), v49 + 1, 1, v47);
      }

      v47[2] = v49 + 1;
      v47[v49 + 4] = v6;
      v61 = v47;
    }

    else
    {

      v6 = &v61;
      sub_23A9854F8(v9 - 1);
    }

    if (v9 == 1)
    {
      break;
    }

    v3 = &v11[v9 + 2];
    v7 = 953267991;
    while (1)
    {
      v13 = v44 - 1;
      if (__OFSUB__(v44, 1))
      {
        break;
      }

      if (v44 > v11[2])
      {
        goto LABEL_92;
      }

      v50 = *v3;

      v6 = sub_23A9BB0CC(v51, 0.0001);

      if (*&v6[2] <= 1uLL)
      {

        v6 = &v61;
        sub_23A9854F8(v13);
      }

      else
      {
        v52 = v61;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = sub_23A939860(0, v52[2] + 1, 1, v52);
        }

        v4 = v52[2];
        v53 = v52[3];
        v9 = v4 + 1;
        if (v4 >= v53 >> 1)
        {
          v52 = sub_23A939860((v53 > 1), v4 + 1, 1, v52);
        }

        v52[2] = v9;
        v52[v4 + 4] = v6;
        v61 = v52;
      }

      v3 -= 8;
      v44 = v13;
      if (!v13)
      {
        goto LABEL_89;
      }
    }

    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
  }

LABEL_89:

  return v61;
}

uint64_t sub_23A99B538()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_23A99B59C(char **a1, float32x2_t *a2)
{
  v4 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_23A975C20(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;

  sub_23A994C74(v7, a2);

  *a1 = v4;
}

uint64_t sub_23A99B644(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_23AA0D1E4();
  return sub_23AA0D244();
}

uint64_t sub_23A99B6C4(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return MEMORY[0x2821FBE70](a1);
  }

LABEL_5:
  a1 = sub_23AA0D1E4();

  return MEMORY[0x2821FBE70](a1);
}

void sub_23A99B72C()
{
  v0 = sub_23AA0D104();
  v1 = sub_23A99B784(v0);
  v3 = v2;

  qword_27DFB06E0 = v1;
  qword_27DFB06E8 = v3;
}

CFTypeRef sub_23A99B784(const __CFString *a1)
{
  v2 = sub_23AA0D184();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = *MEMORY[0x277CD2898];
  v5 = IOServiceMatching("IOPlatformExpertDevice");
  MatchingService = IOServiceGetMatchingService(v4, v5);
  result = IORegistryEntryCreateCFProperty(MatchingService, a1, *MEMORY[0x277CBECE8], 0);
  if (!result)
  {
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = swift_unknownObjectRetain_n();
  v10 = CFGetTypeID(v9);
  if (v10 != CFStringGetTypeID())
  {
    v11 = CFGetTypeID(v8);
    swift_unknownObjectRelease();
    if (v11 != CFDataGetTypeID() || (swift_unknownObjectRetain(), !swift_dynamicCast()))
    {
      swift_unknownObjectRelease();
      return 0;
    }

    v12 = v21;
    sub_23AA0D174();
    v13 = sub_23AA0D154();
    v22 = v13;
    if (!v14)
    {
      v19 = v13;
      swift_unknownObjectRelease();
      sub_23A8EFA00(v12, v23);
      return v19;
    }

    v15 = v13;
    v16 = sub_23A99B644(v13, v14);
    if (v17)
    {
      if (!v16 && v17 == 0xE100000000000000)
      {

LABEL_18:
        sub_23A99B6C4(v18);
        swift_unknownObjectRelease();
        sub_23A8EFA00(v12, v23);

        return v22;
      }

      v20 = sub_23AA0DBD4();

      if (v20)
      {
        goto LABEL_18;
      }
    }

    swift_unknownObjectRelease();
    sub_23A8EFA00(v12, v23);
    return v15;
  }

  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    return v21;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23A99B9F8()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_23A99BA54@<X0>(char *a1@<X8>)
{
  v2 = *MEMORY[0x277D46CC8];
  v3 = sub_23AA0D134();
  v5 = v4;
  if (v3 == sub_23AA0D134() && v5 == v6)
  {
    goto LABEL_16;
  }

  v8 = sub_23AA0DBD4();

  if (v8)
  {
LABEL_6:
    v10 = 0;
    goto LABEL_18;
  }

  v11 = *MEMORY[0x277D46CF0];
  v12 = sub_23AA0D134();
  v14 = v13;
  if (v12 == sub_23AA0D134() && v14 == v15)
  {
    v10 = 1;
LABEL_17:

    goto LABEL_18;
  }

  v17 = sub_23AA0DBD4();

  if (v17)
  {
    v10 = 1;
    goto LABEL_18;
  }

  v18 = *MEMORY[0x277D46D00];
  v19 = sub_23AA0D134();
  v21 = v20;
  if (v19 == sub_23AA0D134() && v21 == v22)
  {
LABEL_16:
    v10 = 0;
    goto LABEL_17;
  }

  v23 = sub_23AA0DBD4();

  if (v23)
  {
    goto LABEL_6;
  }

  v24 = *MEMORY[0x277D46D20];
  v25 = sub_23AA0D134();
  v27 = v26;
  if (v25 == sub_23AA0D134() && v27 == v28)
  {
    v10 = 2;
    goto LABEL_17;
  }

  v29 = sub_23AA0DBD4();

  if (v29)
  {
    v10 = 2;
    goto LABEL_18;
  }

  v30 = *MEMORY[0x277D46CC0];
  v31 = sub_23AA0D134();
  v33 = v32;
  if (v31 == sub_23AA0D134() && v33 == v34)
  {
    v10 = 3;
    goto LABEL_17;
  }

  v35 = sub_23AA0DBD4();

  if (v35)
  {
    v10 = 3;
    goto LABEL_18;
  }

  v36 = *MEMORY[0x277D46D08];
  v37 = sub_23AA0D134();
  v39 = v38;
  if (v37 == sub_23AA0D134() && v39 == v40)
  {
    v10 = 4;
    goto LABEL_17;
  }

  v41 = sub_23AA0DBD4();

  if (v41)
  {
    v10 = 4;
    goto LABEL_18;
  }

  v42 = *MEMORY[0x277D46D38];
  v43 = sub_23AA0D134();
  v45 = v44;
  if (v43 == sub_23AA0D134() && v45 == v46)
  {
    v10 = 5;
    goto LABEL_17;
  }

  v47 = sub_23AA0DBD4();

  if (v47)
  {
    v10 = 5;
    goto LABEL_18;
  }

  v48 = *MEMORY[0x277D46D30];
  v49 = sub_23AA0D134();
  v51 = v50;
  if (v49 == sub_23AA0D134() && v51 == v52)
  {
    v10 = 6;
    goto LABEL_17;
  }

  v53 = sub_23AA0DBD4();

  if (v53)
  {
    v10 = 6;
    goto LABEL_18;
  }

  v54 = *MEMORY[0x277D46CB8];
  v55 = sub_23AA0D134();
  v57 = v56;
  if (v55 == sub_23AA0D134() && v57 == v58)
  {
    v10 = 7;
    goto LABEL_17;
  }

  v59 = sub_23AA0DBD4();

  if (v59)
  {
    v10 = 7;
    goto LABEL_18;
  }

  v60 = *MEMORY[0x277D46CE8];
  v61 = sub_23AA0D134();
  v63 = v62;
  if (v61 == sub_23AA0D134() && v63 == v64)
  {
    v10 = 8;
    goto LABEL_17;
  }

  v65 = sub_23AA0DBD4();

  if (v65)
  {
    v10 = 8;
    goto LABEL_18;
  }

  v66 = *MEMORY[0x277D46CD8];
  v67 = sub_23AA0D134();
  v69 = v68;
  if (v67 == sub_23AA0D134() && v69 == v70)
  {
    v10 = 9;
    goto LABEL_17;
  }

  v71 = sub_23AA0DBD4();

  if (v71)
  {
    v10 = 9;
    goto LABEL_18;
  }

  v72 = *MEMORY[0x277D46D28];
  v73 = sub_23AA0D134();
  v75 = v74;
  if (v73 == sub_23AA0D134() && v75 == v76)
  {
    v10 = 10;
    goto LABEL_17;
  }

  v77 = sub_23AA0DBD4();

  if (v77)
  {
    v10 = 10;
    goto LABEL_18;
  }

  v78 = *MEMORY[0x277D46D10];
  v79 = sub_23AA0D134();
  v81 = v80;
  if (v79 == sub_23AA0D134() && v81 == v82)
  {
    v10 = 11;
    goto LABEL_17;
  }

  v83 = sub_23AA0DBD4();

  if (v83)
  {
    v10 = 11;
    goto LABEL_18;
  }

  v84 = *MEMORY[0x277D46CD0];
  v85 = sub_23AA0D134();
  v87 = v86;
  if (v85 == sub_23AA0D134() && v87 == v88)
  {
    v10 = 12;
    goto LABEL_17;
  }

  v89 = sub_23AA0DBD4();

  if (v89)
  {
    v10 = 12;
    goto LABEL_18;
  }

  v90 = *MEMORY[0x277D46CE0];
  v91 = sub_23AA0D134();
  v93 = v92;
  if (v91 == sub_23AA0D134() && v93 == v94)
  {
    v10 = 13;
    goto LABEL_17;
  }

  v95 = sub_23AA0DBD4();

  if (v95)
  {
    v10 = 13;
    goto LABEL_18;
  }

  v96 = *MEMORY[0x277D46CF8];
  v97 = sub_23AA0D134();
  v99 = v98;
  if (v97 == sub_23AA0D134() && v99 == v100)
  {
    v10 = 14;
    goto LABEL_17;
  }

  v101 = sub_23AA0DBD4();

  if (v101)
  {
    v10 = 14;
    goto LABEL_18;
  }

  v102 = *MEMORY[0x277D46D18];
  v103 = sub_23AA0D134();
  v105 = v104;
  if (v103 == sub_23AA0D134() && v105 == v106)
  {
    v10 = 15;
    goto LABEL_17;
  }

  v107 = sub_23AA0DBD4();

  if (v107)
  {
    v10 = 15;
  }

  else
  {
    v10 = 0;
  }

LABEL_18:
  *a1 = v10;
  return result;
}

void sub_23A99C238(void *a1@<X8>)
{
  [*(v1 + OBJC_IVAR____TtC8RoomPlan16RoomScanKeyframe_coreKeyframe) copy];
  sub_23AA0D704();
  swift_unknownObjectRelease();
  sub_23A8D6C58(0, &unk_27DFB1420, 0x277CE5380);
  if (swift_dynamicCast())
  {
    v3 = type metadata accessor for RoomScanKeyframe(0);
    v4 = objc_allocWithZone(v3);
    v5 = v7;
    v6 = sub_23A9A6F68(v5);

    a1[3] = v3;
    *a1 = v6;
  }

  else
  {
    sub_23AA0D9E4();
    __break(1u);
  }
}

void sub_23A99C5B8()
{
  if (!qword_27DFAEC00)
  {
    sub_23AA0C0E4();
    v0 = sub_23AA0D664();
    if (!v1)
    {
      atomic_store(v0, &qword_27DFAEC00);
    }
  }
}

void sub_23A99C610(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB08D0, &qword_23AA19B70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  *(v1 + 24) = 0;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A9A62B8();
  sub_23AA0DD74();
  if (v2)
  {

    type metadata accessor for RoomScanKeyframeWrapper();
    swift_deallocPartialClassInstance();
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return;
  }

  sub_23A9347CC();
  sub_23AA0DAF4();
  v11 = v20[0];
  v12 = v20[1];
  sub_23A8D6C58(0, &qword_27DFAF298, 0x277CCAAC8);
  sub_23AA0D4F4();
  v16 = v11;
  sub_23A8D5194(v20, &v17, &unk_27DFB08E0, &qword_23AA13038);
  if (v18)
  {
    sub_23A8EF9F0(&v17, &v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF2B0, &unk_23AA13040);
    swift_dynamicCast();
    v13 = sub_23AA0D024();

    v14 = RSKeyframeFromDictionary();

    if (v14)
    {
      sub_23A8EFA00(v16, v12);
      sub_23A8D50D0(v20, &unk_27DFB08E0, &qword_23AA13038);
      (*(v6 + 8))(v9, v5);
      *(v3 + 16) = v14;
      goto LABEL_4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_23A99C900(void *a1)
{
  v2 = v1;
  v25[2] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0A50, &unk_23AA19C00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25[-1] - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A9A62B8();
  sub_23AA0DD84();
  v10 = *(v2 + 16);
  v11 = RSKeyframeToDictionary();
  if (v11)
  {
    v12 = v11;
    v13 = sub_23AA0D034();
  }

  else
  {
    v13 = 0;
  }

  v14 = objc_opt_self();
  v25[0] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF308, &qword_23AA13088);
  v15 = sub_23AA0D654();

  v25[0] = 0;
  v16 = [v14 archivedDataWithRootObject:v15 requiringSecureCoding:1 error:v25];
  swift_unknownObjectRelease();
  v17 = v25[0];
  if (v16)
  {
    v18 = sub_23AA0BFE4();
    v20 = v19;

    v25[0] = v18;
    v25[1] = v20;
    sub_23A9348E4();
    sub_23AA0DB74();
    (*(v5 + 8))(v8, v4);
    result = sub_23A8EFA00(v18, v20);
  }

  else
  {
    v22 = v17;
    sub_23AA0BE74();

    swift_willThrow();
    result = (*(v5 + 8))(v8, v4);
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23A99CC14@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_23AA0DA64();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_23A99CC6C(uint64_t a1)
{
  v2 = sub_23A9A62B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A99CCA8(uint64_t a1)
{
  v2 = sub_23A9A62B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A99CCE4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_23A99CE38(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  v9 = *a3;
  swift_beginAccess();
  sub_23A8D5194(a1 + v9, v8, &unk_27DFB0970, &qword_23AA14E00);
  v10 = sub_23AA0C0E4();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v8, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    v14 = sub_23AA0C084();
    (*(v11 + 8))(v8, v10);
    v13 = v14;
  }

  return v13;
}

void sub_23A99CF98(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - v9;
  if (a3)
  {
    sub_23AA0C0A4();
    v11 = sub_23AA0C0E4();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v12 = sub_23AA0C0E4();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  v13 = *a4;
  swift_beginAccess();
  v14 = a1;
  sub_23A8D5068(v10, a1 + v13, &unk_27DFB0970, &qword_23AA14E00);
  swift_endAccess();
}

id sub_23A99D240(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_23A99D310()
{
  sub_23A99C5B8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_23A99D3D8(void *a1)
{
  v2 = v1;
  v4 = sub_23AA0D604();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 transform];
  v10 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_23AA12200, v9.f32[0]), xmmword_23AA12250, *v9.f32, 1), xmmword_23AA12210, v9, 2), xmmword_23AA11AE0, v9, 3);
  v12 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_23AA12200, v11.f32[0]), xmmword_23AA12250, *v11.f32, 1), xmmword_23AA12210, v11, 2), xmmword_23AA11AE0, v11, 3);
  v14 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_23AA12200, v13.f32[0]), xmmword_23AA12250, *v13.f32, 1), xmmword_23AA12210, v13, 2), xmmword_23AA11AE0, v13, 3);
  v16 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_23AA12200, v15.f32[0]), xmmword_23AA12250, *v15.f32, 1), xmmword_23AA12210, v15, 2), xmmword_23AA11AE0, v15, 3);
  v17 = vmulq_f32(v10, 0);
  __asm { FMOV            V6.4S, #-1.0 }

  v23 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v17, _Q6, v12), 0, v14), 0, v16);
  v24 = vmlaq_f32(v17, 0, v12);
  *(v2 + 80) = vmlaq_f32(vmlaq_f32(vmlaq_f32(v10, 0, v12), 0, v14), 0, v16);
  *(v2 + 96) = v23;
  *(v2 + 112) = vmlaq_f32(vmlaq_f32(v24, _Q6, v14), 0, v16);
  *(v2 + 128) = vaddq_f32(v16, vmlaq_f32(v24, 0, v14));
  [a1 intrinsics];
  *(v2 + 144) = v25;
  *(v2 + 160) = v26;
  *(v2 + 176) = v27;
  [a1 imageResolution];
  *(v2 + 192) = v28;
  *(v2 + 200) = v29;
  [a1 transform];
  *(v2 + 16) = v30;
  *(v2 + 32) = v31;
  *(v2 + 48) = v32;
  *(v2 + 64) = v33;
  sub_23AA0D614();

  v34 = sub_23AA0D5F4();
  v35 = (*(*(v34 - 8) + 48))(v8, 2, v34);
  if (v35)
  {
    if (v35 == 1)
    {
      *(v2 + 208) = 0;
    }

    else
    {
      *(v2 + 208) = 2;
    }
  }

  else
  {
    *(v2 + 208) = 1;
    sub_23A9A7D00(v8, MEMORY[0x277D82DB0]);
  }

  return v2;
}

_OWORD *sub_23A99D5D4(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB08F0, &unk_23AA19B78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A9A630C();
  sub_23AA0DD74();
  if (v2)
  {
    type metadata accessor for RSCamera();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0900, &qword_23AA15C70);
    v35 = 0;
    sub_23A9A6360();
    sub_23AA0DAF4();
    v28 = v6;
    sub_23A969E20(v33);
    v31 = v12;
    v32 = v11;
    v29 = v14;
    v30 = v13;

    v15 = v28;
    v16 = v31;
    v1[1] = v32;
    v1[2] = v16;
    v17 = v29;
    v1[3] = v30;
    v1[4] = v17;
    v35 = 1;
    sub_23AA0DAF4();
    sub_23A969E20(v33);
    v31 = v19;
    v32 = v18;
    v29 = v21;
    v30 = v20;

    v22 = v31;
    v1[5] = v32;
    v1[6] = v22;
    v23 = v29;
    v1[7] = v30;
    v1[8] = v23;
    v35 = 2;
    sub_23AA0DAF4();
    sub_23A975910(v33, v34);

    v24 = v34[1];
    v1[9] = v34[0];
    v1[10] = v24;
    v1[11] = v34[2];
    type metadata accessor for CGSize(0);
    v35 = 3;
    sub_23A9A64D8(&qword_27DFB0910, 255, type metadata accessor for CGSize);
    sub_23AA0DAF4();
    v1[12] = v33;
    LOBYTE(v33) = 4;
    v25 = sub_23AA0DAE4();
    (*(v15 + 8))(v9, v5);
    *(v3 + 26) = v25;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_23A99D9D8()
{
  v1 = *v0;
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

uint64_t sub_23A99DAD4()
{
  *v0;
  *v0;
  *v0;
  sub_23AA0D1D4();
}

uint64_t sub_23A99DBBC()
{
  v1 = *v0;
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

uint64_t sub_23A99DCB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23A9A6F1C();
  *a2 = result;
  return result;
}

void sub_23A99DCE4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE90000000000006DLL;
  v4 = 0x726F66736E617274;
  v5 = 0xEA00000000007363;
  v6 = 0x69736E6972746E69;
  v7 = 0xEF6E6F6974756C6FLL;
  v8 = 0x7365526567616D69;
  if (v2 != 3)
  {
    v8 = 0x676E696B63617274;
    v7 = 0xED00006574617453;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1702063984;
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

uint64_t sub_23A99DD9C()
{
  v1 = *v0;
  v2 = 0x726F66736E617274;
  v3 = 0x69736E6972746E69;
  v4 = 0x7365526567616D69;
  if (v1 != 3)
  {
    v4 = 0x676E696B63617274;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1702063984;
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

uint64_t sub_23A99DE50@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23A9A6F1C();
  *a1 = result;
  return result;
}

uint64_t sub_23A99DE78(uint64_t a1)
{
  v2 = sub_23A9A630C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A99DEB4(uint64_t a1)
{
  v2 = sub_23A9A630C();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_23A99E018(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0918, &qword_23AA19B88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v1[3] = 0;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A9A63DC();
  sub_23AA0DD74();
  if (v2)
  {
    type metadata accessor for RSRawPointCloud();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFDE0, &qword_23AA15D10);
    sub_23A9A7B58(&unk_27DFB0930, &qword_27DFAFD70);
    sub_23AA0DAF4();
    v12 = v15;
    v3[4] = v15;
    v3[2] = *(v12 + 16);
    v13 = *(v6 + 8);

    v13(v9, v5);
    v3[3] = v12 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_23A99E22C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0A38, &qword_23AA19BF8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A9A63DC();
  sub_23AA0DD84();
  v11[1] = *(v2 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFDE0, &qword_23AA15D10);
  sub_23A9A7B58(&unk_27DFB0A40, &qword_27DFAFD88);
  sub_23AA0DB74();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_23A99E3E8()
{
  sub_23AA0DD14();
  sub_23AA0D1D4();
  return sub_23AA0DD54();
}

uint64_t sub_23A99E480()
{
  sub_23AA0DD14();
  sub_23AA0D1D4();
  return sub_23AA0DD54();
}

uint64_t sub_23A99E4D8@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23AA0DA64();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_23A99E574@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_23AA0DA64();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_23A99E5CC(uint64_t a1)
{
  v2 = sub_23A9A63DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A99E608(uint64_t a1)
{
  v2 = sub_23A9A63DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A99E644()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_23A99E960(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0948, &qword_23AA19B90);
  v46 = *(v5 - 8);
  v6 = *(v46 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - v7;
  v47 = v3;
  v48 = a1;
  *(v3 + 16) = 0;
  v9 = v3 + 16;
  *(v9 + 24) = 0u;
  *(v9 + 144) = 0;
  *(v9 + 8) = 0;
  *(v9 + 40) = 0u;
  *(v9 + 56) = 0;
  *(v9 + 152) = 0;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A9A6430();
  sub_23AA0DD74();
  if (v2)
  {
    v15 = v47;
    v11 = *(v47 + 16);
    swift_unknownObjectRelease();
    v12 = *(v15 + 24);
    swift_unknownObjectRelease();

    v13 = *(v15 + 160);
    swift_unknownObjectRelease();

    type metadata accessor for RSFrame();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v44 = (v9 + 24);
    *&v45 = v9;
    LOBYTE(v50) = 0;
    sub_23AA0DAC4();
    v15 = v47;
    *(v47 + 32) = v16;
    type metadata accessor for RSCamera();
    v17 = v8;
    v49 = 1;
    v19 = sub_23A9A64D8(&qword_27DFB0958, v18, type metadata accessor for RSCamera);
    sub_23AA0DAF4();
    v43 = v19;
    v20 = *(v15 + 24);
    *(v15 + 24) = v50;
    swift_unknownObjectRelease();
    v49 = 2;
    v21 = sub_23A9A6484();
    v22 = v17;
    sub_23AA0DAF4();
    v23 = *v44;
    *v44 = v50;

    v49 = 3;
    sub_23AA0DAF4();
    v24 = *(v15 + 48);
    *(v15 + 48) = v50;

    v49 = 4;
    sub_23AA0DAF4();
    v25 = *(v15 + 56);
    *(v15 + 56) = v50;

    v49 = 5;
    sub_23AA0DAF4();
    v26 = *(v15 + 64);
    *(v15 + 64) = v50;

    v49 = 6;
    sub_23AA0DAF4();
    v27 = *(v15 + 72);
    *(v15 + 72) = v50;

    v44 = v21;
    LOBYTE(v50) = 7;
    *(v15 + 80) = sub_23AA0DAE4();
    type metadata accessor for RSRawPointCloud();
    v49 = 8;
    sub_23A9A64D8(&qword_27DFB0968, v28, type metadata accessor for RSRawPointCloud);
    sub_23AA0DAF4();
    v29 = *v45;
    *v45 = v50;
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0900, &qword_23AA15C70);
    v49 = 9;
    sub_23A9A6360();
    sub_23AA0DAF4();
    sub_23A969E20(v50);
    v45 = v30;
    v41 = v32;
    v42 = v31;
    v40 = v33;

    v35 = v41;
    v34 = v42;
    *(v15 + 96) = v45;
    *(v15 + 112) = v34;
    v36 = v40;
    *(v15 + 128) = v35;
    *(v15 + 144) = v36;
    v49 = 10;
    sub_23AA0DAF4();
    v37 = *(v9 + 144);
    *(v9 + 144) = v50;
    swift_unknownObjectRelease();
    v49 = 11;
    sub_23AA0DAF4();
    v38 = *(v15 + 168);
    *(v15 + 168) = v50;

    LOBYTE(v50) = 12;
    v39 = sub_23AA0DAE4();
    (*(v46 + 8))(v22, v5);
    *(v15 + 176) = v39;
  }

  __swift_destroy_boxed_opaque_existential_1(v48);
  return v15;
}

uint64_t sub_23A99F10C(char a1)
{
  result = 0x6D617473656D6974;
  switch(a1)
  {
    case 1:
      result = 0x6172656D6163;
      break;
    case 2:
      v3 = 0x42726F6C6F63;
      goto LABEL_8;
    case 3:
      v3 = 0x426874706564;
LABEL_8:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6675000000000000;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
    case 9:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x6D6143656E656373;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23A99F2B8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_23A99F10C(*a1);
  v5 = v4;
  if (v3 == sub_23A99F10C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_23AA0DBD4();
  }

  return v8 & 1;
}

uint64_t sub_23A99F340()
{
  v1 = *v0;
  sub_23AA0DD14();
  sub_23A99F10C(v1);
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

uint64_t sub_23A99F3A4()
{
  sub_23A99F10C(*v0);
  sub_23AA0D1D4();
}

uint64_t sub_23A99F3F8()
{
  v1 = *v0;
  sub_23AA0DD14();
  sub_23A99F10C(v1);
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

uint64_t sub_23A99F458@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23A9A6ED0();
  *a2 = result;
  return result;
}

uint64_t sub_23A99F488@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23A99F10C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_23A99F4D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23A9A6ED0();
  *a1 = result;
  return result;
}

uint64_t sub_23A99F504(uint64_t a1)
{
  v2 = sub_23A9A6430();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A99F540(uint64_t a1)
{
  v2 = sub_23A9A6430();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A99F57C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  v3 = *(v0 + 160);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_23A99F5DC()
{
  sub_23A99F57C();

  return swift_deallocClassInstance();
}

uint64_t sub_23A99F67C@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X6>, uint64_t *a4@<X8>)
{
  a2();
  v8 = swift_allocObject();
  result = a3(a1);
  if (!v4)
  {
    *a4 = v8;
  }

  return result;
}

uint64_t sub_23A99F720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  *(a1 + 16) = a3;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

uint64_t sub_23A99F790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 24);
  *(a1 + 24) = a3;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

void sub_23A99F9B8(void *a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  [a1 timestamp];
  *(v1 + 32) = v4;
  *(v1 + 160) = [a1 deviceOrientation];
  [a1 referenceOriginTransform];
  *(v1 + 48) = v5;
  *(v1 + 64) = v6;
  *(v1 + 80) = v7;
  *(v1 + 96) = v8;
  v9 = [a1 camera];
  type metadata accessor for OUCamera();
  swift_allocObject();
  v10 = sub_23A9A74C8(v9);

  v11 = v2[2];
  v2[2] = v10;
  swift_unknownObjectRelease();
  v12 = [a1 rawSceneUnderstandingData];
  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = [a1 rawSceneUnderstandingData];
  if (!v13)
  {
    __break(1u);
    goto LABEL_28;
  }

  v14 = v13;
  v15 = [v13 wideCamera];

  if (!v15)
  {
LABEL_7:
    v19 = 0;
    goto LABEL_8;
  }

  v16 = [a1 rawSceneUnderstandingData];
  if (!v16)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v17 = v16;
  v18 = [v16 wideCamera];

  if (!v18)
  {
LABEL_29:
    __break(1u);
    return;
  }

  swift_allocObject();
  v19 = sub_23A9A74C8(v18);

LABEL_8:
  v20 = v2[3];
  v2[3] = v19;
  swift_unknownObjectRelease();
  v21 = [a1 capturedImage];
  v22 = v2[14];
  v2[14] = v21;

  v23 = [a1 rawSceneUnderstandingData];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 capturedImage];
  }

  else
  {
    v25 = 0;
  }

  v26 = v2[15];
  v2[15] = v25;

  v27 = [a1 rawSceneUnderstandingData];
  if (v27)
  {
    v28 = v27;
    v29 = [v27 depthBuffer];
  }

  else
  {
    v29 = 0;
  }

  v30 = v2[16];
  v2[16] = v29;

  v31 = [a1 rawSceneUnderstandingData];
  if (v31)
  {
    v32 = v31;
    v33 = [v31 depthConfidenceBuffer];
  }

  else
  {
    v33 = 0;
  }

  v34 = v2[17];
  v2[17] = v33;

  v35 = [a1 rawSceneUnderstandingData];
  if (v35)
  {
    v36 = v35;
    v37 = [v35 semanticSegmentationBufferSampledForDepth];
  }

  else
  {
    v37 = 0;
  }

  v38 = v2[18];
  v2[18] = v37;

  v39 = [a1 rawSceneUnderstandingData];
  if (v39)
  {
    v40 = v39;
    v41 = [v39 semanticSegmentationConfidenceBufferSampledForDepth];
  }

  else
  {
    v41 = 0;
  }

  v42 = v2[19];
  v2[19] = v41;

  v43 = [a1 worldTrackingState];
  if (v43)
  {
    v44 = v43;
    v45 = [v43 vioTrackingState];
  }

  else
  {
    v45 = 0;
  }

  v2[21] = v45;
}

uint64_t sub_23A99FD50()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_23A99FDA8()
{
  sub_23A99FD50();

  return swift_deallocClassInstance();
}

uint64_t sub_23A99FE00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB09B8, &qword_23AA19BC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23AA12950;
  *(inited + 32) = 0x79745F7269616863;
  *(inited + 40) = 0xEA00000000006570;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB09C0, &qword_23AA19BC8);
  v1 = swift_initStackObject();
  *(v1 + 32) = 0x676E696E6964;
  *(v1 + 16) = xmmword_23AA11C20;
  *(v1 + 40) = 0xE600000000000000;
  *(v1 + 72) = &type metadata for ChairType;
  v2 = sub_23A9668A0();
  *(v1 + 48) = 0;
  *(v1 + 80) = v2;
  *(v1 + 88) = 0x6C6F6F7473;
  *(v1 + 96) = 0xE500000000000000;
  *(v1 + 128) = &type metadata for ChairType;
  *(v1 + 136) = v2;
  *(v1 + 104) = 1;
  *(v1 + 144) = 0x6C6576697773;
  *(v1 + 152) = 0xE600000000000000;
  *(v1 + 184) = &type metadata for ChairType;
  *(v1 + 192) = v2;
  *(v1 + 160) = 2;
  *(v1 + 200) = 0x726568746FLL;
  *(v1 + 208) = 0xE500000000000000;
  *(v1 + 240) = &type metadata for ChairType;
  *(v1 + 248) = v2;
  *(v1 + 216) = 3;
  v3 = sub_23A9DCEC8(v1);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB09D0, &qword_23AA19BD0);
  swift_arrayDestroy();
  *(inited + 48) = v3;
  strcpy((inited + 56), "chair_leg_type");
  *(inited + 71) = -18;
  v4 = swift_initStackObject();
  *(v4 + 32) = 1920298854;
  *(v4 + 16) = xmmword_23AA15450;
  *(v4 + 40) = 0xE400000000000000;
  *(v4 + 72) = &type metadata for ChairLegType;
  v5 = sub_23A966948();
  *(v4 + 48) = 0;
  *(v4 + 80) = v5;
  *(v4 + 88) = 1918989427;
  *(v4 + 96) = 0xE400000000000000;
  *(v4 + 128) = &type metadata for ChairLegType;
  *(v4 + 136) = v5;
  *(v4 + 104) = 1;
  *(v4 + 144) = 0x726568746FLL;
  *(v4 + 152) = 0xE500000000000000;
  *(v4 + 184) = &type metadata for ChairLegType;
  *(v4 + 192) = v5;
  *(v4 + 160) = 2;
  v6 = sub_23A9DCEC8(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(inited + 72) = v6;
  strcpy((inited + 80), "chair_arm_type");
  *(inited + 95) = -18;
  v7 = swift_initStackObject();
  *(v7 + 32) = 0x676E697373696DLL;
  *(v7 + 16) = xmmword_23AA11C10;
  *(v7 + 40) = 0xE700000000000000;
  *(v7 + 72) = &type metadata for ChairArmType;
  v8 = sub_23A96699C();
  *(v7 + 48) = 1;
  *(v7 + 80) = v8;
  *(v7 + 88) = 0x676E697473697865;
  *(v7 + 96) = 0xE800000000000000;
  *(v7 + 128) = &type metadata for ChairArmType;
  *(v7 + 136) = v8;
  *(v7 + 104) = 0;
  v9 = sub_23A9DCEC8(v7);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(inited + 96) = v9;
  *(inited + 104) = 0x61625F7269616863;
  *(inited + 112) = 0xEF657079745F6B63;
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_23AA11C10;
  *(v10 + 32) = 0x676E697373696DLL;
  *(v10 + 40) = 0xE700000000000000;
  *(v10 + 72) = &type metadata for ChairBackType;
  v11 = sub_23A9668F4();
  *(v10 + 48) = 1;
  *(v10 + 80) = v11;
  *(v10 + 88) = 0x676E697473697865;
  *(v10 + 96) = 0xE800000000000000;
  *(v10 + 128) = &type metadata for ChairBackType;
  *(v10 + 136) = v11;
  *(v10 + 104) = 0;
  v12 = sub_23A9DCEC8(v10);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(inited + 120) = v12;
  *(inited + 128) = 0x7079745F61666F73;
  *(inited + 136) = 0xE900000000000065;
  v13 = swift_allocObject();
  *(v13 + 32) = 0x75676E6174636572;
  *(v13 + 16) = xmmword_23AA19830;
  *(v13 + 40) = 0xEB0000000072616CLL;
  *(v13 + 72) = &type metadata for SofaType;
  v14 = sub_23A96684C();
  *(v13 + 48) = 0;
  *(v13 + 80) = v14;
  *(v13 + 88) = 0x6465706168536CLL;
  *(v13 + 96) = 0xE700000000000000;
  *(v13 + 128) = &type metadata for SofaType;
  *(v13 + 136) = v14;
  *(v13 + 104) = 1;
  *(v13 + 144) = 0xD000000000000010;
  *(v13 + 152) = 0x800000023AA1CFD0;
  *(v13 + 184) = &type metadata for SofaType;
  *(v13 + 192) = v14;
  *(v13 + 160) = 2;
  *(v13 + 200) = 0x6553656C676E6973;
  *(v13 + 208) = 0xEA00000000007461;
  *(v13 + 240) = &type metadata for SofaType;
  *(v13 + 248) = v14;
  *(v13 + 216) = 3;
  *(v13 + 256) = 0x726568746FLL;
  *(v13 + 264) = 0xE500000000000000;
  *(v13 + 296) = &type metadata for SofaType;
  *(v13 + 304) = v14;
  *(v13 + 272) = 4;
  v15 = sub_23A9DCEC8(v13);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(inited + 144) = v15;
  *(inited + 152) = 0x79745F656C626174;
  *(inited + 160) = 0xEA00000000006570;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_23AA15450;
  *(v16 + 32) = 0x656566666F63;
  *(v16 + 40) = 0xE600000000000000;
  *(v16 + 72) = &type metadata for TableType;
  v17 = sub_23A9667A4();
  *(v16 + 48) = 0;
  *(v16 + 80) = v17;
  *(v16 + 88) = 0x676E696E6964;
  *(v16 + 96) = 0xE600000000000000;
  *(v16 + 128) = &type metadata for TableType;
  *(v16 + 136) = v17;
  *(v16 + 104) = 1;
  *(v16 + 144) = 0x726568746FLL;
  *(v16 + 152) = 0xE500000000000000;
  *(v16 + 184) = &type metadata for TableType;
  *(v16 + 192) = v17;
  *(v16 + 160) = 2;
  v18 = sub_23A9DCEC8(v16);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(inited + 168) = v18;
  *(inited + 176) = 0x68735F656C626174;
  *(inited + 184) = 0xEB00000000657061;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_23AA11C20;
  *(v19 + 32) = 0x75676E6174636572;
  *(v19 + 40) = 0xEB0000000072616CLL;
  *(v19 + 72) = &type metadata for TableShapeType;
  v20 = sub_23A9667F8();
  *(v19 + 48) = 0;
  *(v19 + 80) = v20;
  *(v19 + 88) = 0x6465706168536CLL;
  *(v19 + 96) = 0xE700000000000000;
  *(v19 + 128) = &type metadata for TableShapeType;
  *(v19 + 136) = v20;
  *(v19 + 104) = 2;
  *(v19 + 144) = 0xD000000000000010;
  *(v19 + 152) = 0x800000023AA1CE10;
  *(v19 + 184) = &type metadata for TableShapeType;
  *(v19 + 192) = v20;
  *(v19 + 160) = 1;
  *(v19 + 200) = 0x726568746FLL;
  *(v19 + 208) = 0xE500000000000000;
  *(v19 + 240) = &type metadata for TableShapeType;
  *(v19 + 248) = v20;
  *(v19 + 216) = 3;
  v21 = sub_23A9DCEC8(v19);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(inited + 192) = v21;
  strcpy((inited + 200), "storage_type");
  *(inited + 213) = 0;
  *(inited + 214) = -5120;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_23AA11C10;
  *(v22 + 32) = 0x74656E69626163;
  *(v22 + 40) = 0xE700000000000000;
  *(v22 + 72) = &type metadata for StorageType;
  v23 = sub_23A966750();
  *(v22 + 48) = 0;
  *(v22 + 80) = v23;
  *(v22 + 88) = 0x666C656873;
  *(v22 + 96) = 0xE500000000000000;
  *(v22 + 128) = &type metadata for StorageType;
  *(v22 + 136) = v23;
  *(v22 + 104) = 1;
  v24 = sub_23A9DCEC8(v22);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(inited + 216) = v24;
  v25 = sub_23A9DCFFC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0A10, &qword_23AA19BD8);
  result = swift_arrayDestroy();
  off_27DFB06F0 = v25;
  return result;
}

uint64_t sub_23A9A05DC()
{
  v0 = sub_23AA0CE84();
  __swift_allocate_value_buffer(v0, qword_27DFB06F8);
  __swift_project_value_buffer(v0, qword_27DFB06F8);
  if (qword_27DFAE3A0 != -1)
  {
    swift_once();
  }

  return sub_23AA0CE64();
}

uint64_t sub_23A9A0698@<X0>(void *a1@<X0>, float32x4_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v123 = &v116 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v116 - v9;
  v11 = sub_23AA0C0E4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 type];
  DirectionalAxis = RS3DSurfaceTypeGetDirectionalAxis();
  [a1 dimensions];
  v153 = v18;
  [a1 transform];
  if (DirectionalAxis == 1)
  {
    v23 = xmmword_23AA11AE0;
    v24 = xmmword_23AA12220;
    v25 = xmmword_23AA12240;
    v26 = xmmword_23AA12200;
    v27 = v153.i32[2];
  }

  else
  {
    v27 = v153.i32[1];
    v26 = *MEMORY[0x277D860B8];
    v25 = *(MEMORY[0x277D860B8] + 16);
    v24 = *(MEMORY[0x277D860B8] + 32);
    v23 = *(MEMORY[0x277D860B8] + 48);
  }

  v122 = v10;
  v28 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, COERCE_FLOAT(*MEMORY[0x277D46D70])), v20, *MEMORY[0x277D46D70], 1), v21, *MEMORY[0x277D46D70], 2), v22, *MEMORY[0x277D46D70], 3);
  v29 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, COERCE_FLOAT(*(MEMORY[0x277D46D70] + 16))), v20, *(MEMORY[0x277D46D70] + 16), 1), v21, *(MEMORY[0x277D46D70] + 16), 2), v22, *(MEMORY[0x277D46D70] + 16), 3);
  v30 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, COERCE_FLOAT(*(MEMORY[0x277D46D70] + 32))), v20, *(MEMORY[0x277D46D70] + 32), 1), v21, *(MEMORY[0x277D46D70] + 32), 2), v22, *(MEMORY[0x277D46D70] + 32), 3);
  v31 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, COERCE_FLOAT(*(MEMORY[0x277D46D70] + 48))), v20, *(MEMORY[0x277D46D70] + 48), 1), v21, *(MEMORY[0x277D46D70] + 48), 2), v22, *(MEMORY[0x277D46D70] + 48), 3);
  v32 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v28, v26.f32[0]), v29, *v26.f32, 1), v30, v26, 2);
  v33 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v28, v25.f32[0]), v29, *v25.f32, 1), v30, v25, 2);
  v34 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v28, v24.f32[0]), v29, *v24.f32, 1), v30, v24, 2);
  v35 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v28, v23.f32[0]), v29, *v23.f32, 1), v30, v23, 2);
  if (qword_27DFAE4C0 != -1)
  {
    v151 = v33;
    v152 = v32;
    v149 = v34;
    v150 = v35;
    v153 = v23;
    v147 = v25;
    v148 = v24;
    v146 = v26;
    v145 = v31;
    swift_once();
    v31 = v145;
    v26 = v146;
    v25 = v147;
    v24 = v148;
    v34 = v149;
    v32 = v152;
    v23 = v153;
    v35 = v150;
    v33 = v151;
  }

  v36 = vmlaq_laneq_f32(v32, v31, v26, 3);
  v37 = vmlaq_laneq_f32(v33, v31, v25, 3);
  v38 = vmlaq_laneq_f32(v34, v31, v24, 3);
  v39 = vmlaq_laneq_f32(v35, v31, v23, 3);
  v41 = xmmword_27DFC0830;
  v40 = unk_27DFC0840;
  v43 = xmmword_27DFC0850;
  v42 = unk_27DFC0860;
  v151 = v37;
  v152 = v36;
  v149 = v38;
  v150 = v39;
  v143 = unk_27DFC0860;
  v142 = xmmword_27DFC0850;
  if (qword_27DFAE4B8 != -1)
  {
    v153 = unk_27DFC0840;
    v148 = xmmword_27DFC0830;
    swift_once();
    v41 = v148;
    v38.i32[0] = v149.i32[0];
    v36.i32[0] = v152.i32[0];
    v40 = v153;
    v43 = v142;
    v42 = v143;
    v39.i32[0] = v150;
    v37.i32[0] = v151.i32[0];
  }

  v145 = xmmword_27DFC07F0;
  v44 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v41, *&xmmword_27DFC07F0), v40, *&xmmword_27DFC07F0, 1), v43, xmmword_27DFC07F0, 2), v42, xmmword_27DFC07F0, 3);
  v144 = qword_27DFC0800;
  v141 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v41, *qword_27DFC0800.i32), v40, *qword_27DFC0800.i8, 1), v43, qword_27DFC0800, 2), v42, qword_27DFC0800, 3);
  v146 = xmmword_27DFC0810;
  v147 = qword_27DFC0820;
  v148 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v41, *&xmmword_27DFC0810), v40, *&xmmword_27DFC0810, 1), v43, xmmword_27DFC0810, 2);
  v153 = vmlaq_lane_f32(vmulq_n_f32(v41, qword_27DFC0820.f32[0]), v40, *qword_27DFC0820.f32, 1);
  v126 = vmulq_n_f32(v44, v36.f32[0]);
  v125 = vmulq_n_f32(v44, v37.f32[0]);
  v127 = vmulq_n_f32(v44, v38.f32[0]);
  v124 = vmulq_n_f32(v44, v39.f32[0]);
  v155 = MEMORY[0x277D84FA0];
  if (![a1 edgeStates])
  {
    sub_23A9EFAF4(&v154, 0);
  }

  v148 = vmlaq_laneq_f32(v148, v143, v146, 3);
  v153 = vmlaq_laneq_f32(v153, v142, v147, 2);
  v127 = vmlaq_lane_f32(v127, v141, *v149.f32, 1);
  v126 = vmlaq_lane_f32(v126, v141, *v152.f32, 1);
  v125 = vmlaq_lane_f32(v125, v141, *v151.f32, 1);
  v124 = vmlaq_lane_f32(v124, v141, *&v150, 1);
  if (([a1 edgeStates] & 0xFF00) == 0)
  {
    sub_23A9EFAF4(&v154, 1);
  }

  v153 = vmlaq_laneq_f32(v153, v143, v147, 3);
  v127 = vmlaq_laneq_f32(v127, v148, v149, 2);
  v126 = vmlaq_laneq_f32(v126, v148, v152, 2);
  v125 = vmlaq_laneq_f32(v125, v148, v151, 2);
  v124 = vmlaq_laneq_f32(v124, v148, v150, 2);
  if (([a1 edgeStates] & 0xFF0000) == 0)
  {
    sub_23A9EFAF4(&v154, 2);
  }

  v127 = vmlaq_laneq_f32(v127, v153, v149, 3);
  v126 = vmlaq_laneq_f32(v126, v153, v152, 3);
  v125 = vmlaq_laneq_f32(v125, v153, v151, 3);
  v124 = vmlaq_laneq_f32(v124, v153, v150, 3);
  if (!([a1 edgeStates] >> 24))
  {
    sub_23A9EFAF4(&v154, 3);
  }

  v156.columns[0] = v126;
  v156.columns[1] = v125;
  v156.columns[2] = v127;
  v156.columns[3] = v124;
  v157 = __invert_f4(v156);
  v143 = v157.columns[0];
  v142 = v157.columns[1];
  v141 = v157.columns[2];
  v140 = v157.columns[3];
  v45 = [a1 polygonSize];
  v120 = v11;
  v119 = v12;
  v121 = v16;
  v117 = a2;
  v118 = DirectionalAxis;
  if (v45 < 1)
  {
    v50 = MEMORY[0x277D84F90];
    v49 = MEMORY[0x277D84F90];
  }

  else
  {
    result = [a1 polygonSize];
    if (result < 0)
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v47 = result;
    if (result)
    {
      v48 = 0;
      v139 = vdupq_lane_s32(*v145.i8, 1);
      v138 = vdupq_laneq_s32(v145, 2);
      v137 = vdupq_laneq_s32(v145, 3);
      v136 = vdupq_lane_s32(*v144.i8, 1);
      v135 = vdupq_laneq_s32(v144, 2);
      v134 = vdupq_laneq_s32(v144, 3);
      v133 = vdupq_lane_s32(*&v146, 1);
      v132 = vdupq_laneq_s32(v146, 2);
      v131 = vdupq_laneq_s32(v146, 3);
      v130 = vdupq_lane_s32(*v147.f32, 1);
      v129 = vdupq_laneq_s32(v147, 2);
      v49 = MEMORY[0x277D84F90];
      v50 = MEMORY[0x277D84F90];
      v128 = vdupq_laneq_s32(v147, 3);
      while (1)
      {
        result = [a1 polygon];
        if (!result)
        {
          goto LABEL_59;
        }

        v51 = *(result + 16 * v48);
        v148 = xmmword_27DFC0830;
        v149 = unk_27DFC0840;
        v150 = xmmword_27DFC0850;
        v151 = unk_27DFC0860;
        v152 = v51;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = sub_23A9388A8(0, *(v50 + 2) + 1, 1, v50);
        }

        v53 = *(v50 + 2);
        v52 = *(v50 + 3);
        v54 = v153.i32[3];
        if (v53 >= v52 >> 1)
        {
          v63 = sub_23A9388A8((v52 > 1), v53 + 1, 1, v50);
          v54 = v153.i32[3];
          v50 = v63;
        }

        v55 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v143, v148.f32[0]), v142, *v148.f32, 1), v141, v148, 2), v140, v148, 3);
        v56 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v143, v149.f32[0]), v142, *v149.f32, 1), v141, v149, 2), v140, v149, 3);
        v57 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v143, *&v150), v142, *&v150, 1), v141, v150, 2), v140, v150, 3);
        v58 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v143, v151.f32[0]), v142, *v151.f32, 1), v141, v151, 2), v140, v151, 3);
        v59 = vaddq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v55, v147.f32[0]), v130, v56), v129, v57), v128, v58), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v55, *v145.i32), v139, v56), v138, v57), v137, v58), v152.f32[0]), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v55, *v144.i32), v136, v56), v135, v57), v134, v58), *v152.f32, 1), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v55, *&v146), v133, v56), v132, v57), v131, v58), v152, 2));
        v59.i32[3] = v54;
        *(v50 + 2) = v53 + 1;
        v153 = v59;
        *&v50[16 * v53 + 32] = v59;
        result = [a1 polygonEdgeSides];
        if (!result)
        {
          goto LABEL_60;
        }

        if (*(result + v48) >= 4u)
        {
          v60 = 0;
        }

        else
        {
          v60 = *(result + v48);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_23A93A078(0, *(v49 + 2) + 1, 1, v49);
        }

        v62 = *(v49 + 2);
        v61 = *(v49 + 3);
        if (v62 >= v61 >> 1)
        {
          v49 = sub_23A93A078((v61 > 1), v62 + 1, 1, v49);
        }

        ++v48;
        *(v49 + 2) = v62 + 1;
        v49[v62 + 32] = v60;
        if (v47 == v48)
        {
          goto LABEL_37;
        }
      }
    }

    v50 = MEMORY[0x277D84F90];
    v49 = MEMORY[0x277D84F90];
  }

LABEL_37:
  [a1 dimensions];
  v152 = v64;
  if (v118 != 1)
  {
    [a1 dimensions];
    v153 = v65;
    [a1 dimensions];
    v66 = v152;
    v66.i32[1] = v153.i32[2];
    v66.i32[2] = v67;
    v152 = v66;
  }

  [a1 confidence];
  v68 = v123;
  if (v69 <= 0.9)
  {
    [a1 confidence];
    if (v71 > 0.5)
    {
      v70 = 1;
    }

    else
    {
      v70 = 2;
    }
  }

  else
  {
    v70 = 0;
  }

  v72 = [a1 type];
  if (v72 >= 6)
  {
    v73 = 2;
  }

  else
  {
    v73 = 0x50103000402uLL >> (8 * v72);
  }

  v74 = v155;

  [a1 color];
  v151 = v75;
  result = [a1 identifier];
  if (!result)
  {
LABEL_61:
    __break(1u);
    return result;
  }

  v76 = result;
  v77.i64[1] = v127.i64[1];
  *v77.f32 = vneg_f32(*v127.f32);
  v153 = v77;
  v148.i64[0] = v74;

  sub_23AA0C0A4();

  v78 = type metadata accessor for CapturedRoom.Surface.Curve(0);
  v79 = *(v78 - 8);
  v80 = 1;
  *&v146 = *(v79 + 56);
  v145.i64[0] = v79 + 56;
  (v146)(v122, 1, 1, v78);
  v81 = [a1 parentIdentifier];
  v149.i32[0] = v70;
  v147.i32[0] = v73;
  if (v81)
  {
    v82 = v81;
    sub_23AA0C0A4();

    v80 = 0;
  }

  v83 = v119;
  v84 = *(v119 + 56);
  v85 = v120;
  v84(v68, v80, 1, v120);
  v86 = vnegq_f32(v127);
  v87.i64[0] = v153.i64[0];
  v87.i64[1] = vextq_s8(v86, v86, 8uLL).u64[0];
  v153 = v87;
  *&v150 = [a1 storyLevel];
  v88 = type metadata accessor for CapturedRoom.Surface(0);
  v89 = v88[13];
  v90 = v117;
  (v146)(v117 + v89, 1, 1, v78);
  v91 = v88[14];
  v84(v90 + v91, 1, 1, v85);
  v90->i8[0] = v147.i8[0];
  v90->i8[1] = v149.i8[0];
  v90->i64[1] = v148.i64[0];
  v92 = v126;
  v90[1] = v152;
  v90[2] = v92;
  v93 = v127;
  v90[3] = v125;
  v90[4] = v93;
  v94 = v153;
  v90[5] = v124;
  v90[6] = v94;
  v90[7] = v151;
  v95 = v121;
  v96 = v85;
  v97 = v88;
  (*(v83 + 16))(v90 + v88[11], v121, v96);
  v98 = v122;
  sub_23A8DE238(v122, v90 + v89, &qword_27DFAEB38, &unk_23AA11B60);
  v99 = v90 + v91;
  v100 = v123;
  sub_23A8DE238(v123, v99, &unk_27DFB0970, &qword_23AA14E00);
  *(v90->i64 + v88[15]) = v50;
  v101 = *(v50 + 2);
  if (v101)
  {
    v102 = MEMORY[0x277D84F90];
    v154 = MEMORY[0x277D84F90];

    sub_23A975DC0(0, v101, 0);
    v104 = v154;
    v105 = *(v154 + 16);
    v106 = 32;
    v107 = v126;
    v108 = v125;
    v109 = v127;
    v110 = v124;
    do
    {
      v111 = *&v50[v106];
      v154 = v104;
      v112 = *(v104 + 24);
      if (v105 >= v112 >> 1)
      {
        v152 = v111;
        v153 = v103;
        sub_23A975DC0((v112 > 1), v105 + 1, 1);
        v111 = v152;
        v103.i32[3] = v153.i32[3];
        v110 = v124;
        v109 = v127;
        v108 = v125;
        v107 = v126;
        v104 = v154;
      }

      v113 = vaddq_f32(v110, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v107, v111.f32[0]), v108, *v111.f32, 1), v109, v111, 2));
      v113.i32[3] = v103.i32[3];
      *(v104 + 16) = v105 + 1;
      *(v104 + 16 * v105 + 32) = v113;
      v106 += 16;
      ++v105;
      v103 = v113;
      --v101;
    }

    while (v101);

    sub_23A8D50D0(v123, &unk_27DFB0970, &qword_23AA14E00);
    sub_23A8D50D0(v122, &qword_27DFAEB38, &unk_23AA11B60);
    result = (*(v119 + 8))(v121, v120);
  }

  else
  {
    sub_23A8D50D0(v100, &unk_27DFB0970, &qword_23AA14E00);
    sub_23A8D50D0(v98, &qword_27DFAEB38, &unk_23AA11B60);
    result = (*(v119 + 8))(v95, v120);
    v104 = MEMORY[0x277D84F90];
    v102 = MEMORY[0x277D84F90];
  }

  v114 = v97[12];
  v115 = v97[18];
  *(v90->i64 + v97[16]) = v104;
  *(v90->i64 + v97[17]) = v49;
  *(v90->i32 + v115) = v27;
  *(v90->i64 + v114) = v150;
  *(v90->i64 + v97[19]) = v102;
  return result;
}

uint64_t sub_23A9A15CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v116 = &v104 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v125 = &v104 - v8;
  v9 = sub_23AA0C0E4();
  v124 = *(v9 - 8);
  v10 = *(v124 + 64);
  MEMORY[0x28223BE20](v9);
  v126 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CapturedRoom.Surface.Curve(0);
  v115 = *(v12 - 8);
  v13 = *(v115 + 64);
  MEMORY[0x28223BE20](v12);
  v120 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0A20, &unk_23AA122D0);
  v121 = *(v15 - 8);
  v122 = v15;
  v16 = v121[8];
  MEMORY[0x28223BE20](v15);
  v18 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v104 - v20;
  v123 = type metadata accessor for CapturedRoom.Surface(0);
  v22 = *(*(v123 - 1) + 64);
  MEMORY[0x28223BE20](v123);
  v24 = (&v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23A9A0698(a1, v24);
  [a1 startOrientation];
  [a1 endOrientation];
  [a1 transform];
  v26 = v25;
  [a1 transform];
  atan2(v26, v27);
  v28 = v24[2];
  v29 = v24[3];
  v30 = v24[4];
  v31 = v24[5];
  v117 = v24;
  v118 = v31;
  v129 = vmlaq_f32(vmlaq_f32(vnegq_f32(v28), 0, v29), 0, v30);
  v32 = vmulq_f32(v28, 0);
  v128 = vmlaq_f32(vaddq_f32(v29, v32), 0, v30);
  v33 = vmlaq_f32(v32, 0, v29);
  __asm { FMOV            V4.4S, #-1.0 }

  v127 = vmlaq_f32(v33, _Q4, v30);
  v114 = vmlaq_f32(v33, 0, v30);
  v39 = objc_opt_self();
  v40 = [v39 degrees];
  sub_23A8D6C58(0, &qword_27DFAEB50, 0x277CCADA8);
  sub_23AA0BC64();
  v41 = [v39 degrees];
  sub_23AA0BC64();
  [a1 circleCenter];
  v113 = v42;
  [a1 circleCenter];
  v44.i64[0] = v43;
  if (qword_27DFAE4C0 != -1)
  {
    v112 = v44;
    swift_once();
    v44 = v112;
  }

  v49.columns[0] = vmlaq_f32(v129, 0, v118);
  v49.columns[1] = vmlaq_f32(v128, 0, v118);
  v49.columns[3] = vaddq_f32(v118, v114);
  v46 = xmmword_27DFC0830;
  v45 = unk_27DFC0840;
  v48 = xmmword_27DFC0850;
  v47 = unk_27DFC0860;
  v49.columns[2] = vmlaq_f32(v127, 0, v118);
  v128 = v49.columns[1];
  v129 = v49.columns[0];
  v127 = v49.columns[2];
  v118 = v49.columns[3];
  if (qword_27DFAE4B8 != -1)
  {
    v112 = v44;
    v114 = unk_27DFC0860;
    v111 = xmmword_27DFC0850;
    v110 = unk_27DFC0840;
    v109 = xmmword_27DFC0830;
    swift_once();
    v46 = v109;
    v45 = v110;
    v48 = v111;
    v47 = v114;
    v44.i64[0] = v112.i64[0];
    v49.columns[3] = v118;
    v49.columns[2] = v127;
    v49.columns[1] = v128;
    v49.columns[0] = v129;
  }

  v114 = vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v46, qword_27DFC0820.f32[0]), v45, *qword_27DFC0820.f32, 1), v48, qword_27DFC0820, 2), v47, qword_27DFC0820, 3), vmlaq_f32(vmlaq_lane_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v46, *&xmmword_27DFC07F0), v45, *&xmmword_27DFC07F0, 1), v48, xmmword_27DFC07F0, 2), v47, xmmword_27DFC07F0, 3), *&v113), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v46, *qword_27DFC0800.i32), v45, *qword_27DFC0800.i8, 1), v48, qword_27DFC0800, 2), v47, qword_27DFC0800, 3), *v44.f32, 1), 0, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v46, *&xmmword_27DFC0810), v45, *&xmmword_27DFC0810, 1), v48, xmmword_27DFC0810, 2), v47, xmmword_27DFC0810, 3)));
  v131 = __invert_f4(v49);
  v131.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v131.columns[0], v114.f32[0]), v131.columns[1], *v114.f32, 1), v131.columns[2], v114, 2), v131.columns[3], v114, 3);
  v50 = vzip1_s32(*v131.columns[0].f32, *&vextq_s8(v131.columns[0], v131.columns[0], 8uLL));
  [a1 radius];
  v52 = v51;
  v53 = v120;
  v54 = v121[2];
  v55 = v120 + *(v12 + 24);
  v114.i64[0] = v21;
  v56 = v21;
  v57 = v122;
  v54(v55, v56, v122);
  v54(v53 + *(v12 + 28), v18, v57);
  *v53 = v50;
  *(v53 + 8) = v52;
  v58 = v117;
  LODWORD(v111) = v117->u16[0];
  *&v109 = v117->i64[1];
  v110 = v117[1];
  v112 = v117[6];

  [a1 color];
  v108 = v59;
  v60 = v123;
  v61 = v123[11];
  v107 = *(v124 + 16);
  v105 = v9;
  v107(v126, v58 + v61, v9);
  v62 = v125;
  sub_23A9A7C30(v53, v125, type metadata accessor for CapturedRoom.Surface.Curve);
  v63 = *(v115 + 56);
  v63(v62, 0, 1, v12);
  v64 = v116;
  sub_23A8D5194(v58 + v60[14], v116, &unk_27DFB0970, &qword_23AA14E00);
  v106 = *(v58->i64 + v60[15]);
  v65 = *(v58->i64 + v60[17]);
  *&v113 = v18;
  v66 = v60[13];
  v67 = v119;
  v68 = v12;
  v69 = v105;
  v63(v119 + v66, 1, 1, v68);
  v70 = v60[14];
  (*(v124 + 56))(v67 + v70, 1, 1, v69);
  *v67 = v111;
  *(v67 + 8) = v109;
  v72 = v128;
  v71 = v129;
  *(v67 + 16) = v110;
  *(v67 + 32) = v71;
  v73 = v127;
  *(v67 + 48) = v72;
  *(v67 + 64) = v73;
  v74 = v112;
  *(v67 + 80) = v118;
  *(v67 + 96) = v74;
  *(v67 + 112) = v108;
  v107((v67 + v60[11]), v126, v69);
  v115 = v65;

  sub_23A8DE238(v125, v67 + v66, &qword_27DFAEB38, &unk_23AA11B60);
  v75 = v64;
  v76 = v64;
  v77 = v106;
  sub_23A8DE238(v76, v67 + v70, &unk_27DFB0970, &qword_23AA14E00);
  *(v67 + v60[15]) = v77;
  v78 = v77[1].i64[0];
  v79 = MEMORY[0x277D84F90];
  if (v78)
  {
    v80 = v124;
    v130 = MEMORY[0x277D84F90];

    sub_23A975DC0(0, v78, 0);
    v82 = v130;
    v83 = v77 + 2;
    v84 = *(v130 + 16);
    v85 = v69;
    v86 = v125;
    v87 = v114.i64[0];
    v89 = v128;
    v88 = v129;
    v90 = v127;
    v91 = v118;
    do
    {
      v92 = *v83;
      v130 = v82;
      v93 = *(v82 + 24);
      if (v84 >= v93 >> 1)
      {
        v112 = v81;
        v111 = v92;
        sub_23A975DC0((v93 > 1), v84 + 1, 1);
        v92 = v111;
        v81.i32[3] = v112.i32[3];
        v91 = v118;
        v90 = v127;
        v89 = v128;
        v88 = v129;
        v75 = v116;
        v82 = v130;
      }

      v94 = vaddq_f32(v91, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v88, v92.f32[0]), v89, *v92.f32, 1), v90, v92, 2));
      v94.i32[3] = v81.i32[3];
      *(v82 + 16) = v84 + 1;
      *(v82 + 16 * v84 + 32) = v94;
      ++v83;
      ++v84;
      v81 = v94;
      --v78;
    }

    while (v78);
    sub_23A8D50D0(v75, &unk_27DFB0970, &qword_23AA14E00);
    sub_23A8D50D0(v86, &qword_27DFAEB38, &unk_23AA11B60);
    (*(v80 + 8))(v126, v85);
    sub_23A9A7D00(v120, type metadata accessor for CapturedRoom.Surface.Curve);
    v95 = v122;
    v96 = v121[1];
    v96(v113, v122);
    v96(v87, v95);
    result = sub_23A9A7D00(v117, type metadata accessor for CapturedRoom.Surface);
    v79 = MEMORY[0x277D84F90];
  }

  else
  {

    sub_23A8D50D0(v75, &unk_27DFB0970, &qword_23AA14E00);
    sub_23A8D50D0(v125, &qword_27DFAEB38, &unk_23AA11B60);
    (*(v124 + 8))(v126, v69);
    sub_23A9A7D00(v120, type metadata accessor for CapturedRoom.Surface.Curve);
    v98 = v122;
    v99 = v121[1];
    v99(v113, v122);
    v99(v114.i64[0], v98);
    result = sub_23A9A7D00(v58, type metadata accessor for CapturedRoom.Surface);
    v82 = MEMORY[0x277D84F90];
  }

  v100 = v123;
  v101 = v123[12];
  v102 = v123[18];
  v103 = v119;
  *(v119 + v123[16]) = v82;
  *(v103 + v100[17]) = v115;
  *(v103 + v102) = 0;
  *(v103 + v101) = 0;
  *(v103 + v100[19]) = v79;
  return result;
}

uint64_t sub_23A9A21A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v83 = &v82 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v82 - v8;
  v10 = sub_23AA0C0E4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 quad];
  v98 = v16;
  v97 = v17;
  v96 = v18;
  v99 = v19;
  if (qword_27DFAE4C0 != -1)
  {
    swift_once();
  }

  v20 = MEMORY[0x277D860B8];
  v21 = MEMORY[0x277D46D70];
  v23 = xmmword_27DFC0830;
  v22 = unk_27DFC0840;
  v25 = xmmword_27DFC0850;
  v24 = unk_27DFC0860;
  v95 = unk_27DFC0860;
  v94 = xmmword_27DFC0850;
  v93 = unk_27DFC0840;
  v92 = xmmword_27DFC0830;
  if (qword_27DFAE4B8 != -1)
  {
    swift_once();
    v23 = xmmword_27DFC0830;
    v22 = unk_27DFC0840;
    v25 = xmmword_27DFC0850;
    v24 = unk_27DFC0860;
  }

  v85 = v23;
  v86 = v22;
  v87 = v25;
  v89 = v24;
  v26 = *v20;
  v101 = v20[1];
  v102 = v26;
  v100 = v20[2];
  v27 = v21[1];
  v103 = *v21;
  v104 = v27;
  v28 = v21[3];
  v105 = v21[2];
  v106 = v28;
  v84 = xmmword_27DFC07F0;
  v88 = qword_27DFC0800;
  v90 = xmmword_27DFC0810;
  v91 = qword_27DFC0820;
  v108 = sub_23A9A79F8(&unk_284D81650);
  [a1 score];
  if (v31 <= 0.9)
  {
    [a1 score];
    if (v32 > 0.5)
    {
      v33 = 1;
    }

    else
    {
      v33 = 2;
    }

    v107 = v33;
  }

  else
  {
    v107 = 0;
  }

  *v29.f32 = vsub_f32(*&v97, *&v98);
  v29.f32[2] = *(&v97 + 2) - *(&v98 + 2);
  v34 = vmulq_f32(v29, v29);
  *v30.f32 = vsub_f32(*&v97, *&v96);
  v30.f32[2] = *(&v97 + 2) - *(&v96 + 2);
  v35 = vmulq_f32(v30, v30);
  v36 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v92, v84.f32[0]), v93, *v84.f32, 1), v94, v84, 2), v95, v84, 3);
  v37 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v92, v88.f32[0]), v93, *v88.f32, 1), v94, v88, 2), v95, v88, 3);
  v38 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v92, v90.f32[0]), v93, *v90.f32, 1), v94, v90, 2), v95, v90, 3);
  v39 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v92, v91.f32[0]), v93, *v91.f32, 1), v94, v91, 2), v95, v91, 3);
  __asm { FMOV            V19.2S, #0.25 }

  *v45.f32 = vmul_f32(vadd_f32(*v99.f32, vadd_f32(*&v96, vadd_f32(*&v97, vadd_f32(*&v98, 0)))), _D19);
  v45.i64[1] = __PAIR64__(1.0, (v99.f32[2] + (*(&v96 + 2) + (*(&v97 + 2) + (*(&v98 + 2) + 0.0)))) * 0.25);
  v46 = vmlaq_f32(vmlaq_f32(vmulq_f32(v102, 0), 0, v101), 0, v100);
  *v35.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v34, v34, 8uLL), *&vextq_s8(v35, v35, 8uLL)), vadd_f32(vzip1_s32(*v34.i8, *v35.i8), vzip2_s32(*v34.i8, *v35.i8)));
  v47 = v35.u32[1];
  v48 = vaddq_f32(v45, v46);
  *v46.f32 = vsqrt_f32(*v35.i8);
  v99 = v46;
  *v46.f32 = vrsqrte_f32(v35.u32[0]);
  *v46.f32 = vmul_f32(*v46.f32, vrsqrts_f32(v35.u32[0], vmul_f32(*v46.f32, *v46.f32)));
  v49 = vmulq_n_f32(v29, vmul_f32(*v46.f32, vrsqrts_f32(v35.u32[0], vmul_f32(*v46.f32, *v46.f32))).f32[0]);
  *v35.i8 = vrsqrte_f32(v35.u32[1]);
  *v35.i8 = vmul_f32(*v35.i8, vrsqrts_f32(v47, vmul_f32(*v35.i8, *v35.i8)));
  v50 = vmulq_n_f32(v30, vmul_f32(*v35.i8, vrsqrts_f32(v47, vmul_f32(*v35.i8, *v35.i8))).f32[0]);
  v51 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL), vnegq_f32(v49)), v50, vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL));
  v52 = vmulq_f32(v51, v51);
  *&v53 = v52.f32[1] + (v52.f32[2] + v52.f32[0]);
  v54 = vextq_s8(vuzp1q_s32(v51, v51), v51, 0xCuLL);
  *v51.f32 = vrsqrte_f32(v53);
  *v51.f32 = vmul_f32(*v51.f32, vrsqrts_f32(v53, vmul_f32(*v51.f32, *v51.f32)));
  v55 = vmulq_n_f32(v54, vmul_f32(*v51.f32, vrsqrts_f32(v53, vmul_f32(*v51.f32, *v51.f32))).f32[0]);
  v55.f32[0] = 0.0 - v55.f32[0];
  v56 = vmlaq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v102, v49.f32[0]), v101, *v49.f32, 1), v100, v49, 2), 0, v45);
  v57 = vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v102, v55.f32[0]), v101, 0.0 - v55.f32[1]), v100, 0.0 - v55.f32[2]), 0, v45);
  v58 = vmlaq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v102, v50.f32[0]), v101, *v50.f32, 1), v100, v50, 2), 0, v45);
  v59 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v56, v103.f32[0]), v57, *v103.f32, 1), v58, v103, 2), v48, v103, 3);
  v60 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v56, v104.f32[0]), v57, *v104.f32, 1), v58, v104, 2), v48, v104, 3);
  v61 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v56, v105.f32[0]), v57, *v105.f32, 1), v58, v105, 2), v48, v105, 3);
  v62 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v56, v106.f32[0]), v57, *v106.f32, 1), v58, v106, 2), v48, v106, 3);
  v106 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v36, v59.f32[0]), v37, *v59.f32, 1), v38, v59, 2), v39, v59, 3);
  v105 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v36, v60.f32[0]), v37, *v60.f32, 1), v38, v60, 2), v39, v60, 3);
  v103 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v36, v62.f32[0]), v37, *v62.f32, 1), v38, v62, 2), v39, v62, 3);
  v104 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v36, v61.f32[0]), v37, *v61.f32, 1), v38, v61, 2), v39, v61, 3);
  __asm { FMOV            V0.4S, #-1.0 }

  v101 = vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v85, v84.f32[0]), v86, *v84.f32, 1), v87, v84, 2), v89, v84, 3), 0.0 - v55.f32[0]), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v85, v88.f32[0]), v86, *v88.f32, 1), v87, v88, 2), v89, v88, 3), 0.0 - (0.0 - v55.f32[1])), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v85, v90.f32[0]), v86, *v90.f32, 1), v87, v90, 2), v89, v90, 3), 0.0 - (0.0 - v55.f32[2])), _Q0, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v85, v91.f32[0]), v86, *v91.f32, 1), v87, v91, 2), v89, v91, 3));
  sub_23AA0C0D4();
  v64 = type metadata accessor for CapturedRoom.Surface.Curve(0);
  v100.i64[0] = v15;
  v65 = v64;
  *&v98 = *(*(v64 - 8) + 56);
  v82 = v9;
  (v98)(v9, 1, 1, v64);
  v66 = v83;
  sub_23AA0C0C4();
  v67 = *(v11 + 56);
  v67(v66, 0, 1, v10);
  v68 = type metadata accessor for CapturedRoom.Surface(0);
  v69 = v68[13];
  v102.i64[0] = v68[12];
  v70 = v109;
  (v98)(v109 + v69, 1, 1, v65);
  v71 = v68[14];
  v67(v70 + v71, 1, 1, v10);
  *&v98 = v68[18];
  *v70 = 2;
  *(v70 + 1) = v107;
  *(v70 + 8) = v108;
  v73 = v105;
  v72 = v106;
  *(v70 + 16) = v99;
  *(v70 + 32) = v72;
  v75 = v103;
  v74 = v104;
  *(v70 + 48) = v73;
  *(v70 + 64) = v74;
  v76 = v101;
  *(v70 + 80) = v75;
  *(v70 + 96) = v76;
  *(v70 + 112) = 0u;
  v77 = v100.i64[0];
  (*(v11 + 16))(v70 + v68[11], v100.i64[0], v10);
  v78 = v70 + v69;
  v79 = v82;
  sub_23A8DE238(v82, v78, &qword_27DFAEB38, &unk_23AA11B60);
  sub_23A8DE238(v66, v70 + v71, &unk_27DFB0970, &qword_23AA14E00);
  v80 = MEMORY[0x277D84F90];
  *(v70 + v68[15]) = MEMORY[0x277D84F90];
  sub_23A8D50D0(v66, &unk_27DFB0970, &qword_23AA14E00);
  sub_23A8D50D0(v79, &qword_27DFAEB38, &unk_23AA11B60);
  result = (*(v11 + 8))(v77, v10);
  *(v70 + v68[16]) = v80;
  *(v70 + v68[17]) = v80;
  *(v70 + v98) = 0;
  *(v70 + v102.i64[0]) = 0;
  *(v70 + v68[19]) = v80;
  return result;
}

id sub_23A9A2A3C@<X0>(void *a1@<X0>, int64_t a2@<X8>)
{
  v131[5] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v94 - v6;
  v8 = sub_23AA0C0E4();
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23AA0CE84();
  v118.i64[0] = *(v13 - 8);
  v14 = *(v118.i64[0] + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(MEMORY[0x277D860B8] + 16);
  v18 = *(MEMORY[0x277D860B8] + 32);
  v19 = *(MEMORY[0x277D860B8] + 48);
  v124 = *MEMORY[0x277D860B8];
  v125 = v17;
  v126 = v18;
  v127 = v19;
  v128 = xmmword_23AA19840;
  if (qword_27DFAE4E0 != -1)
  {
    goto LABEL_83;
  }

  while (1)
  {
    v20 = [a1 getDimension:qword_27DFC0890 dim:&v128];
    v21 = [a1 getTransform:qword_27DFC0890 transform:&v124];
    if (!v20 || (v21 & 1) == 0)
    {
      v30 = type metadata accessor for CapturedRoom.Object(0);
      result = (*(*(v30 - 8) + 56))(a2, 1, 1, v30);
LABEL_78:
      v93 = *MEMORY[0x277D85DE8];
      return result;
    }

    v103 = v124;
    v105 = v125;
    v107 = v126;
    v110 = v127;
    if (qword_27DFAE4C0 != -1)
    {
      swift_once();
    }

    v122 = v12;
    v108 = xmmword_27DFC0830;
    v109 = unk_27DFC0840;
    v111 = xmmword_27DFC0850;
    v113 = unk_27DFC0860;
    if (qword_27DFAE4B8 != -1)
    {
      swift_once();
    }

    v101 = xmmword_27DFC07F0;
    v102 = qword_27DFC0800;
    v104 = xmmword_27DFC0810;
    v106 = qword_27DFC0820;
    v112 = v128;
    v12 = &selRef_initWithDevice_;
    v22 = [a1 corners_status];
    v119.i64[0] = v13;
    v99 = v16;
    v116 = a2;
    v117 = v7;
    v115 = v8;
    v114 = v9;
    if (!v22)
    {
      break;
    }

    result = [a1 corners_status];
    if (!result)
    {
      goto LABEL_89;
    }

    v24 = result;
    v13 = sub_23A8D6C58(0, &qword_27DFAFB60, 0x277CCABB0);
    v25 = sub_23AA0D2F4();

    if (v25 >> 62)
    {
      v16 = sub_23AA0D7F4();

      if ((v16 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_86:
        __break(1u);
      }
    }

    else
    {
      v16 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v16)
    {
      break;
    }

    a2 = 0;
    v123 = 0;
    v9 = 1;
    while (a2 < v16)
    {
      v7 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        goto LABEL_80;
      }

      v26 = [a1 corners_status];
      if (!v26)
      {
        goto LABEL_86;
      }

      v8 = v26;
      v27 = sub_23AA0D2F4();

      if ((v27 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x23EE90360](a2, v27);
      }

      else
      {
        if (a2 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_81;
        }

        v28 = *(v27 + 8 * a2 + 32);
      }

      v8 = v28;

      v29 = [v8 BOOLValue];

      if (a2 <= 31 && (v29 & 1) != 0 && ((1 << a2) & v123) == 0)
      {
        v123 |= 1 << a2++;
      }

      else
      {
        ++a2;
      }

      if (v7 == v16)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    swift_once();
  }

  v123 = 0;
LABEL_30:
  [a1 confidence];
  if (v31 <= 0.9)
  {
    [a1 confidence];
    if (v32 > 0.5)
    {
      v33 = 1;
    }

    else
    {
      v33 = 2;
    }

    v100 = v33;
  }

  else
  {
    v100 = 0;
  }

  v34 = qword_27DFAE4D0;
  v35 = qword_27DFC0890;
  if (v34 != -1)
  {
    swift_once();
  }

  v36 = sub_23AA0D134();
  v38 = v37;
  v39 = sub_23AA0D134();
  v13 = v40;
  v41 = v117;
  if (v36 == v39 && v38 == v40)
  {

    goto LABEL_42;
  }

  v42 = sub_23AA0DBD4();

  if (v42)
  {
LABEL_42:
    v43 = [a1 beautified_parts];
  }

  else
  {
    v43 = [a1 parts];
  }

  v44 = v43;
  v16 = v119.i64[0];
  if (v44)
  {
    v45 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB09A0, &qword_23AA19BB8);
    v46 = sub_23AA0D034();

    v47 = MEMORY[0x277D84F90];
    if ((byte_27DFC0888 & 1) == 0)
    {
      if (v46)
      {

        v7 = sub_23A9A38A4(v48);

        if (v7)
        {
          v94[1] = v46;
          v50 = 0;
          v8 = v7 + 64;
          v51 = 1 << v7[32];
          v52 = -1;
          if (v51 < 64)
          {
            v52 = ~(-1 << v51);
          }

          v12 = v52 & *(v7 + 8);
          a2 = (v51 + 63) >> 6;
          v120 = MEMORY[0x277D84F90];
          v118.i64[0] += 8;
          *&v49 = 136315138;
          v95 = v49;
          v96 = v7;
          v98 = v7 + 64;
          v97 = a2;
LABEL_51:
          v53 = v50;
          while (v12)
          {
            v50 = v53;
LABEL_59:
            v54 = __clz(__rbit64(v12));
            v12 &= v12 - 1;
            v55 = (*(v7 + 6) + ((v50 << 10) | (16 * v54)));
            v13 = *v55;
            v56 = v55[1];

            sub_23A9A3AF0(v13, v56, &v129);
            if (v130)
            {

              sub_23A8CAA3C(&v129, v131);
              sub_23A8CA9D8(v131, &v129);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v120 = sub_23A939BE4(0, v120[2] + 1, 1, v120);
              }

              v64 = v120[2];
              v63 = v120[3];
              v9 = v64 + 1;
              if (v64 >= v63 >> 1)
              {
                v120 = sub_23A939BE4((v63 > 1), v64 + 1, 1, v120);
              }

              __swift_destroy_boxed_opaque_existential_1(v131);
              v65 = v120;
              v120[2] = v9;
              sub_23A8CAA3C(&v129, &v65[5 * v64 + 4]);
              goto LABEL_51;
            }

            sub_23A8D50D0(&v129, &qword_27DFB0998, &qword_23AA19BB0);
            v57 = v99;
            sub_23AA0CE74();

            v9 = sub_23AA0CE54();
            v58 = sub_23AA0D494();

            if (os_log_type_enabled(v9, v58))
            {
              v59 = swift_slowAlloc();
              v60 = swift_slowAlloc();
              v131[0] = v60;
              *v59 = v95;
              v13 = sub_23A9A65A4(v13, v56, v131);

              *(v59 + 4) = v13;
              _os_log_impl(&dword_23A8B4000, v9, v58, "Error: Unable to convert object attribute: %s", v59, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v60);
              v61 = v60;
              v16 = v119.i64[0];
              MEMORY[0x23EE91710](v61, -1, -1);
              v62 = v59;
              v7 = v96;
              MEMORY[0x23EE91710](v62, -1, -1);
            }

            else
            {
            }

            (*v118.i64[0])(v57, v16);
            v53 = v50;
            v8 = v98;
            a2 = v97;
          }

          while (1)
          {
            v50 = v53 + 1;
            if (__OFADD__(v53, 1))
            {
              goto LABEL_82;
            }

            if (v50 >= a2)
            {
              break;
            }

            v12 = v8[v50];
            ++v53;
            if (v12)
            {
              goto LABEL_59;
            }
          }

          v41 = v117;
          v47 = v120;
        }
      }
    }
  }

  else
  {
    v47 = MEMORY[0x277D84F90];
  }

  result = [a1 type];
  if (result)
  {
    v66 = result;
    sub_23A99BA54(v131);

    v67 = LOBYTE(v131[0]);
    if (v47[2] && !CapturedRoom.Object.Category.supportsCombination(_:)(v47))
    {

      v47 = MEMORY[0x277D84F90];
    }

    result = [a1 identifier];
    if (result)
    {
      v68 = result;
      v69 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v103, COERCE_FLOAT(*MEMORY[0x277D46D70])), v105, *MEMORY[0x277D46D70], 1), v107, *MEMORY[0x277D46D70], 2), v110, *MEMORY[0x277D46D70], 3);
      v70 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v103, COERCE_FLOAT(*(MEMORY[0x277D46D70] + 16))), v105, *(MEMORY[0x277D46D70] + 16), 1), v107, *(MEMORY[0x277D46D70] + 16), 2), v110, *(MEMORY[0x277D46D70] + 16), 3);
      v71 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v103, COERCE_FLOAT(*(MEMORY[0x277D46D70] + 32))), v105, *(MEMORY[0x277D46D70] + 32), 1), v107, *(MEMORY[0x277D46D70] + 32), 2), v110, *(MEMORY[0x277D46D70] + 32), 3);
      v72 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v103, COERCE_FLOAT(*(MEMORY[0x277D46D70] + 48))), v105, *(MEMORY[0x277D46D70] + 48), 1), v107, *(MEMORY[0x277D46D70] + 48), 2), v110, *(MEMORY[0x277D46D70] + 48), 3);
      v73 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v108, v101.f32[0]), v109, *v101.f32, 1), v111, v101, 2), v113, v101, 3);
      v74 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v108, v102.f32[0]), v109, *v102.f32, 1), v111, v102, 2), v113, v102, 3);
      v75 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v108, v104.f32[0]), v109, *v104.f32, 1), v111, v104, 2), v113, v104, 3);
      v76 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v108, v106.f32[0]), v109, *v106.f32, 1), v111, v106, 2), v113, v106, 3);
      v119 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v73, v69.f32[0]), v74, *v69.f32, 1), v75, v69, 2), v76, v69, 3);
      v118 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v73, v70.f32[0]), v74, *v70.f32, 1), v75, v70, 2), v76, v70, 3);
      v113 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v73, v71.f32[0]), v74, *v71.f32, 1), v75, v71, 2), v76, v71, 3);
      v111 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v73, v72.f32[0]), v74, *v72.f32, 1), v75, v72, 2), v76, v72, 3);
      v112 = vuzp1q_s32(v112, vrev64q_s32(v112));

      sub_23AA0C0A4();

      v77 = [a1 parent_id];
      v120 = v47;
      v121 = v67;
      if (v77)
      {
        v78 = v77;
        sub_23AA0C0A4();

        v79 = 0;
      }

      else
      {
        v79 = 1;
      }

      v80 = v114;
      v81 = *(v114 + 56);
      v82 = v41;
      v83 = v41;
      v84 = v115;
      v81(v82, v79, 1, v115);
      [a1 color];
      v110 = v85;
      v86 = [a1 storyLevel];
      v87 = type metadata accessor for CapturedRoom.Object(0);
      v88 = v87[10];
      v89 = v87[11];
      v90 = v116;
      v81(v116 + v89, 1, 1, v84);
      *v90 = v121;
      *(v90 + 1) = v100;
      v91 = v119;
      *(v90 + 16) = v112;
      *(v90 + 32) = v91;
      v92 = v113;
      *(v90 + 48) = v118;
      *(v90 + 64) = v92;
      *(v90 + 80) = v111;
      (*(v80 + 32))(v90 + v87[8], v122, v84);
      sub_23A8D5068(v83, v90 + v89, &unk_27DFB0970, &qword_23AA14E00);
      *(v90 + v87[12]) = v123;
      *(v90 + v87[13]) = v110;
      *(v90 + v87[9]) = v120;
      *(v90 + v88) = v86;
      result = (*(*(v87 - 1) + 56))(v90, 0, 1, v87);
      goto LABEL_78;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_89:
  __break(1u);
  return result;
}

unint64_t sub_23A9A38A4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0A18, &unk_23AA19BE0);
    v2 = sub_23AA0DA44();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v14 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v14);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v5)) | (v14 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v25 = *(*(a1 + 56) + 8 * v15);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB09A0, &qword_23AA19BB8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0900, &qword_23AA15C70);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_23A9EDDFC(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = v2[7];
          v13 = *(v12 + 8 * v11);
          *(v12 + 8 * v11) = v24;

          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          *(v2[7] + 8 * result) = v24;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_24;
          }

          v2[2] = v23;
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v14 = v8;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

double sub_23A9A3AF0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v33[0] = a1;
  *(&v33[0] + 1) = a2;
  sub_23A92F104();
  v8 = sub_23AA0D6F4();
  if (v8[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = v8;
  v3 = v8[8];
  v10 = v8[9];
  v11 = v8[10];
  v6 = v8[11];

  v5 = MEMORY[0x23EE8FC60](v3, v10, v11, v6);
  v4 = v12;

  if (v9[2] < 3uLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = v9[12];
  v14 = v9[13];
  v15 = v9[14];
  v16 = v9[15];

  v6 = MEMORY[0x23EE8FC60](v13, v14, v15, v16);
  v3 = v17;

  if (qword_27DFAE4A8 != -1)
  {
LABEL_20:
    swift_once();
  }

  v18 = off_27DFB06F0;
  if (!*(off_27DFB06F0 + 2) || (v19 = sub_23A9EDDFC(v5, v4), (v20 & 1) == 0) || (v21 = *(v18[7] + 8 * v19), !*(v21 + 16)))
  {
LABEL_11:
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    if (!v18[2])
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v22 = *(v18[7] + 8 * v19);

  v23 = sub_23A9EDDFC(v6, v3);
  if ((v24 & 1) == 0)
  {

    goto LABEL_11;
  }

  sub_23A8CA9D8(*(v21 + 56) + 40 * v23, v33);

  if (!v18[2])
  {
LABEL_9:

    goto LABEL_16;
  }

LABEL_12:
  v25 = sub_23A9EDDFC(v5, v4);
  v27 = v26;

  if (v27)
  {
    v28 = *(v18[7] + 8 * v25);
    if (*(v28 + 16))
    {

      v29 = sub_23A9EDDFC(v6, v3);
      v31 = v30;

      if (v31)
      {
        sub_23A8CA9D8(*(v28 + 56) + 40 * v29, a3);
        sub_23A8D50D0(v33, &qword_27DFB0998, &qword_23AA19BB0);

        return result;
      }
    }
  }

LABEL_16:

  sub_23A8D50D0(v33, &qword_27DFB0998, &qword_23AA19BB0);
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0;
  return result;
}

void sub_23A9A3D80(void *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = [a1 polygon];
  v8 = [v7 count];

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_58:
    v147 = v15;
    v151 = v14;
    v141 = v17;
    v144 = v16;
    v135 = v10;
    v138 = v9;
    v129 = v12;
    v132 = v11;
    v127 = v13;
    swift_once();
    v13 = v127;
    v12 = v129;
    v11 = v132;
    v10 = v135;
    v9 = v138;
    v17 = v141;
    v16 = v144;
    v15 = v147;
    v14 = v151;
    goto LABEL_43;
  }

  v2 = &selRef_initWithDevice_;
  if (v8)
  {
    v18 = 0;
    v19 = MEMORY[0x277D84F90];
    do
    {
      v20 = [a1 polygon];
      v21 = [v20 points];

      v22 = v21[v18];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_23A938A28(0, *(v19 + 2) + 1, 1, v19);
      }

      v24 = *(v19 + 2);
      v23 = *(v19 + 3);
      if (v24 >= v23 >> 1)
      {
        v19 = sub_23A938A28((v23 > 1), v24 + 1, 1, v19);
      }

      v18 = v18 + 1;
      *(v19 + 2) = v24 + 1;
      *&v19[8 * v24 + 32] = v22;
    }

    while (v8 != v18);
  }

  v25 = [a1 label];
  v26 = *MEMORY[0x277D46D60];
  v27 = sub_23AA0D134();
  v29 = v28;
  if (v27 == sub_23AA0D134() && v29 == v30)
  {

    v109 = 0;
  }

  else
  {
    v32 = sub_23AA0DBD4();

    if (v32)
    {

      v109 = 0;
    }

    else
    {
      v33 = *MEMORY[0x277D46D48];
      v34 = sub_23AA0D134();
      v36 = v35;
      if (v34 == sub_23AA0D134() && v36 == v37)
      {

        v38 = 1;
      }

      else
      {
        v39 = sub_23AA0DBD4();

        if (v39)
        {

          v38 = 1;
        }

        else
        {
          v40 = *MEMORY[0x277D46D40];
          v41 = sub_23AA0D134();
          v43 = v42;
          if (v41 == sub_23AA0D134() && v43 == v44)
          {

            v38 = 2;
          }

          else
          {
            v45 = sub_23AA0DBD4();

            if (v45)
            {

              v38 = 2;
            }

            else
            {
              v46 = *MEMORY[0x277D46D58];
              v47 = sub_23AA0D134();
              v49 = v48;
              if (v47 == sub_23AA0D134() && v49 == v50)
              {

                v38 = 3;
              }

              else
              {
                v51 = sub_23AA0DBD4();

                if (v51)
                {

                  v38 = 3;
                }

                else
                {
                  v52 = *MEMORY[0x277D46D50];
                  v53 = sub_23AA0D134();
                  v55 = v54;
                  if (v53 == sub_23AA0D134() && v55 == v56)
                  {

                    v38 = 4;
                  }

                  else
                  {
                    v57 = sub_23AA0DBD4();

                    if (v57)
                    {

                      v38 = 4;
                    }

                    else
                    {
                      v58 = *MEMORY[0x277D46D68];
                      v59 = sub_23AA0D134();
                      v61 = v60;
                      if (v59 != sub_23AA0D134() || v61 != v62)
                      {
                        sub_23AA0DBD4();
                      }

                      v38 = 5;
                    }
                  }
                }
              }
            }
          }
        }
      }

      v109 = v38;
    }
  }

  [a1 dimensions];
  v108 = v63;
  [a1 ceilingHeight];
  v3 = v64;
  [a1 floorHeight];
  v4 = v65;
  [a1 dimensions];
  v107 = v66;
  [a1 transform];
  v13 = *MEMORY[0x277D46D70];
  v12 = *(MEMORY[0x277D46D70] + 16);
  v11 = *(MEMORY[0x277D46D70] + 32);
  v10 = *(MEMORY[0x277D46D70] + 48);
  v17 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v67, COERCE_FLOAT(*MEMORY[0x277D46D70])), v68, *MEMORY[0x277D46D70], 1), v69, *MEMORY[0x277D46D70], 2);
  v16 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v67, v12.f32[0]), v68, *v12.f32, 1), v69, v12, 2);
  v15 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v67, v11.f32[0]), v68, *v11.f32, 1), v69, v11, 2);
  v14 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v67, v10.f32[0]), v68, *v10.f32, 1), v69, v10, 2);
  if (qword_27DFAE4C0 != -1)
  {
    goto LABEL_58;
  }

LABEL_43:
  v70 = vmlaq_laneq_f32(v17, v9, v13, 3);
  v71 = vmlaq_laneq_f32(v16, v9, v12, 3);
  v72 = vmlaq_laneq_f32(v15, v9, v11, 3);
  v73 = vmlaq_laneq_f32(v14, v9, v10, 3);
  v74 = xmmword_27DFC0830;
  v75 = unk_27DFC0840;
  v77 = xmmword_27DFC0850;
  v76 = unk_27DFC0860;
  if (qword_27DFAE4B8 != -1)
  {
    v148 = v72;
    v152 = v73;
    v142 = v70;
    v145 = v71;
    v136 = xmmword_27DFC0850;
    v139 = unk_27DFC0860;
    v130 = xmmword_27DFC0830;
    v133 = unk_27DFC0840;
    swift_once();
    v74 = v130;
    v75 = v133;
    v77 = v136;
    v76 = v139;
    v70 = v142;
    v71 = v145;
    v72 = v148;
    v73 = v152;
  }

  v131 = qword_27DFC0800;
  v134 = xmmword_27DFC07F0;
  v78 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v74, *&xmmword_27DFC07F0), v75, *&xmmword_27DFC07F0, 1), v77, xmmword_27DFC07F0, 2), v76, xmmword_27DFC07F0, 3);
  v79 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v74, *qword_27DFC0800.i32), v75, *qword_27DFC0800.i8, 1), v77, qword_27DFC0800, 2), v76, qword_27DFC0800, 3);
  v126 = qword_27DFC0820;
  v128 = xmmword_27DFC0810;
  v80 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v74, *&xmmword_27DFC0810), v75, *&xmmword_27DFC0810, 1), v77, xmmword_27DFC0810, 2), v76, xmmword_27DFC0810, 3);
  v81 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v74, qword_27DFC0820.f32[0]), v75, *qword_27DFC0820.f32, 1), v77, qword_27DFC0820, 2), v76, qword_27DFC0820, 3);
  v163.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v78, v70.f32[0]), v79, *v70.f32, 1), v80, v70, 2), v81, v70, 3);
  v163.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v78, v71.f32[0]), v79, *v71.f32, 1), v80, v71, 2), v81, v71, 3);
  v163.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v78, v72.f32[0]), v79, *v72.f32, 1), v80, v72, 2), v81, v72, 3);
  v163.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v78, v73.f32[0]), v79, *v73.f32, 1), v80, v73, 2), v81, v73, 3);
  v103 = v163.columns[1];
  v105 = v163.columns[0];
  v99 = v163.columns[3];
  v101 = v163.columns[2];
  v164 = __invert_f4(v163);
  v124 = v164.columns[1];
  v125 = v164.columns[0];
  v122 = v164.columns[3];
  v123 = v164.columns[2];
  v82 = [a1 polygon];
  v83 = [v82 count];

  if (v83 < 1)
  {
    goto LABEL_55;
  }

  v84 = [a1 polygon];
  v85 = [v84 count];

  if ((v85 & 0x8000000000000000) == 0)
  {
    if (v85)
    {
      v86 = 0;
      v120 = vdupq_laneq_s32(v134, 2);
      v121 = vdupq_lane_s32(*v134.i8, 1);
      v118 = vdupq_lane_s32(*v131.i8, 1);
      v119 = vdupq_laneq_s32(v134, 3);
      v116 = vdupq_laneq_s32(v131, 3);
      v117 = vdupq_laneq_s32(v131, 2);
      v114 = vdupq_laneq_s32(v128, 2);
      v115 = vdupq_lane_s32(*v128.i8, 1);
      v112 = vdupq_lane_s32(*v126.i8, 1);
      v113 = vdupq_laneq_s32(v128, 3);
      v110 = vdupq_laneq_s32(v126, 3);
      v111 = vdupq_laneq_s32(v126, 2);
      v87 = MEMORY[0x277D84F90];
      do
      {
        v88 = [a1 polygon];
        v89 = [v88 v2[133]];

        v149 = *&v89[8 * v86];
        v137 = xmmword_27DFC0830;
        v140 = unk_27DFC0840;
        v143 = xmmword_27DFC0850;
        v146 = unk_27DFC0860;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v87 = sub_23A938A28(0, *(v87 + 2) + 1, 1, v87);
        }

        v91 = *(v87 + 2);
        v90 = *(v87 + 3);
        if (v91 >= v90 >> 1)
        {
          v87 = sub_23A938A28((v90 > 1), v91 + 1, 1, v87);
        }

        v86 = v86 + 1;
        v92 = vaddq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v137, *v126.i32), v112, v140), v111, v143), v110, v146), vmlaq_f32(vmlaq_lane_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v137, *v134.i32), v121, v140), v120, v143), v119, v146), v149.f32[0]), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v137, *v131.i32), v118, v140), v117, v143), v116, v146), v149, 1), 0, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v137, *v128.i32), v115, v140), v114, v143), v113, v146)));
        *(v87 + 2) = v91 + 1;
        *&v87[8 * v91 + 32] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v125, v92.f32[0]), v124, *v92.f32, 1), v123, v92, 2), v122, v92, 3).u64[0];
      }

      while (v85 != v86);
      goto LABEL_56;
    }

LABEL_55:
    v87 = MEMORY[0x277D84F90];
LABEL_56:
    LODWORD(v93) = v108;
    *(&v93 + 1) = v3 - v4;
    *(&v93 + 1) = v107;
    v150 = v93;
    v94 = [a1 storyLevel];
    LOBYTE(v153) = v109;
    v154 = v100;
    *&v155 = v94;
    v156 = v106;
    v157 = v104;
    v158 = v102;
    v159 = v100;
    LOBYTE(v160) = 0;
    *(&v160 + 1) = v87;
    v161 = v150;
    v162 = 0;
    nullsub_1(&v153);
    v95 = v160;
    *(a2 + 96) = v159;
    *(a2 + 112) = v95;
    *(a2 + 128) = v161;
    *(a2 + 144) = v162;
    v96 = v156;
    *(a2 + 32) = v155;
    *(a2 + 48) = v96;
    v97 = v158;
    *(a2 + 64) = v157;
    *(a2 + 80) = v97;
    v98 = v154;
    *a2 = v153;
    *(a2 + 16) = v98;
    return;
  }

  __break(1u);
}

uint64_t sub_23A9A46EC(uint64_t a1, unint64_t a2)
{
  v3 = type metadata accessor for CapturedRoom.Surface(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v8);
  v12 = (&v31 - v11);
  if (v9 >> 62)
  {
    v23 = v9;
    result = sub_23AA0D7F4();
    v9 = v23;
    v31 = v7;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_15:
    v15 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v31 = v7;
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (result < 1)
  {
    __break(1u);
    goto LABEL_32;
  }

  v14 = 0;
  v32 = v9 & 0xC000000000000001;
  v15 = MEMORY[0x277D84F90];
  v16 = a2;
  v17 = v9;
  do
  {
    v18 = result;
    if (v32)
    {
      v19 = MEMORY[0x23EE90360](v14, v10);
    }

    else
    {
      v19 = *(v9 + 8 * v14 + 32);
    }

    v20 = v19;
    sub_23A9A0698(v19, v12);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_23A938A00(0, v15[2] + 1, 1, v15);
    }

    v22 = v15[2];
    v21 = v15[3];
    if (v22 >= v21 >> 1)
    {
      v15 = sub_23A938A00(v21 > 1, v22 + 1, 1, v15);
    }

    ++v14;

    v15[2] = v22 + 1;
    sub_23A9A7C98(v12, v15 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v22, type metadata accessor for CapturedRoom.Surface);
    result = v18;
    a2 = v16;
    v9 = v17;
  }

  while (v18 != v14);
LABEL_16:
  if (!(a2 >> 62))
  {
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v31;
    if (v24)
    {
      goto LABEL_18;
    }

    return v15;
  }

  result = sub_23AA0D7F4();
  v24 = result;
  v25 = v31;
  if (!result)
  {
    return v15;
  }

LABEL_18:
  if (v24 >= 1)
  {
    v26 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x23EE90360](v26, a2);
      }

      else
      {
        v27 = *(a2 + 8 * v26 + 32);
      }

      v28 = v27;
      sub_23A9A15CC(v27, v25);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_23A938A00(0, v15[2] + 1, 1, v15);
      }

      v30 = v15[2];
      v29 = v15[3];
      if (v30 >= v29 >> 1)
      {
        v15 = sub_23A938A00(v29 > 1, v30 + 1, 1, v15);
      }

      ++v26;

      v15[2] = v30 + 1;
      sub_23A9A7C98(v25, v15 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v30, type metadata accessor for CapturedRoom.Surface);
    }

    while (v24 != v26);
    return v15;
  }

LABEL_32:
  __break(1u);
  return result;
}

void sub_23A9A4A38(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0990, &qword_23AA12EE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for CapturedRoom.Object(0);
  v24 = *(v6 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x28223BE20](v6);
  v26 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v9);
  v12 = &v21 - v11;
  if (a1 >> 62)
  {
    v13 = sub_23AA0D7F4();
    if (!v13)
    {
      return;
    }
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      return;
    }
  }

  if (v13 < 1)
  {
    __break(1u);
  }

  else
  {
    v14 = 0;
    v25 = a1 & 0xC000000000000001;
    v15 = (v24 + 48);
    v16 = MEMORY[0x277D84F90];
    v22 = v6;
    v23 = a1;
    do
    {
      if (v25)
      {
        v17 = MEMORY[0x23EE90360](v14, a1, v10);
      }

      else
      {
        v17 = *(a1 + 8 * v14 + 32);
      }

      v18 = v17;
      sub_23A9A2A3C(v17, v5);
      if ((*v15)(v5, 1, v6) == 1)
      {

        sub_23A8D50D0(v5, &qword_27DFB0990, &qword_23AA12EE0);
      }

      else
      {
        sub_23A9A7C98(v5, v12, type metadata accessor for CapturedRoom.Object);
        sub_23A9A7C30(v12, v26, type metadata accessor for CapturedRoom.Object);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_23A93A178(0, v16[2] + 1, 1, v16);
        }

        v20 = v16[2];
        v19 = v16[3];
        if (v20 >= v19 >> 1)
        {
          v16 = sub_23A93A178(v19 > 1, v20 + 1, 1, v16);
        }

        sub_23A9A7D00(v12, type metadata accessor for CapturedRoom.Object);
        v16[2] = v20 + 1;
        sub_23A9A7C98(v26, v16 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v20, type metadata accessor for CapturedRoom.Object);
        v6 = v22;
        a1 = v23;
      }

      ++v14;
    }

    while (v13 != v14);
  }
}

unint64_t sub_23A9A4D4C(unint64_t result)
{
  v1 = result;
  if (!(result >> 62))
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  result = sub_23AA0D7F4();
  v2 = result;
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x23EE90360](v3, v1);
      }

      else
      {
        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      sub_23A9A3D80(v5, v17);
      v25 = v17[6];
      v26 = v17[7];
      v27 = v17[8];
      v28 = v18;
      v21 = v17[2];
      v22 = v17[3];
      v23 = v17[4];
      v24 = v17[5];
      v19 = v17[0];
      v20 = v17[1];
      if (sub_23A9A7B34(&v19) == 1)
      {
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_23A9399B8(0, *(v4 + 2) + 1, 1, v4);
        }

        v8 = *(v4 + 2);
        v7 = *(v4 + 3);
        if (v8 >= v7 >> 1)
        {
          v4 = sub_23A9399B8((v7 > 1), v8 + 1, 1, v4);
        }

        *(v4 + 2) = v8 + 1;
        v9 = &v4[160 * v8];
        v10 = v20;
        *(v9 + 2) = v19;
        *(v9 + 3) = v10;
        v11 = v21;
        v12 = v22;
        v13 = v24;
        *(v9 + 6) = v23;
        *(v9 + 7) = v13;
        *(v9 + 4) = v11;
        *(v9 + 5) = v12;
        v14 = v25;
        v15 = v26;
        v16 = v27;
        v9[176] = v28;
        *(v9 + 9) = v15;
        *(v9 + 10) = v16;
        *(v9 + 8) = v14;
      }

      ++v3;
    }

    while (v2 != v3);
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_23A9A4F08@<X0>(void *a1@<X0>, void *a2@<X2>, void *a3@<X8>, __int128 a4@<Q0>, __n128 a5@<Q1>, __int128 a6@<Q2>, __n128 a7@<Q3>)
{
  v114 = a2;
  v122 = a6;
  v123 = a7;
  v120 = a4;
  v121 = a5;
  v105 = a1;
  v113 = type metadata accessor for CapturedRoom(0);
  v112 = *(v113 - 8);
  v8 = *(v112 + 64);
  MEMORY[0x28223BE20](v113);
  v10 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f64[0] = MEMORY[0x28223BE20](v11);
  v15 = (&v105 - v14);
  if (v12 >> 62)
  {
    v104 = v12;
    result = sub_23AA0D7F4();
    v12 = v104;
  }

  else
  {
    result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = MEMORY[0x277D84F90];
  v106 = a3;
  if (result)
  {
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v18 = 0;
    v108 = v12 & 0xC000000000000001;
    v107 = MEMORY[0x277D84F90] >> 62;
    v19 = MEMORY[0x277D84F90];
    v111 = v12;
    v110 = v10;
    v109 = result;
    do
    {
      if (v108)
      {
        v20 = MEMORY[0x23EE90360](v18, v13);
      }

      else
      {
        v20 = *(v12 + 8 * v18 + 32);
      }

      v21 = v20;
      if (qword_27DFAE4C0 != -1)
      {
        swift_once();
      }

      xmmword_27DFC0830 = v120;
      unk_27DFC0840 = v121;
      xmmword_27DFC0850 = v122;
      unk_27DFC0860 = v123;
      byte_27DFC0888 = 0;
      if (qword_27DFAE4E0 != -1)
      {
        swift_once();
      }

      v118 = v18;
      v119 = v19;
      v22 = qword_27DFC0890;
      qword_27DFC0890 = v114;
      v23 = v114;

      if (!v107 || (v24 = v17, sub_23AA0D7F4() <= 0))
      {
        v25 = [v21 objects];
        sub_23A8D6C58(0, &unk_27DFB0A60, 0x277D46C60);
        v24 = sub_23AA0D2F4();
      }

      v26 = [v21 doors];
      sub_23A8D6C58(0, &qword_27DFB13E0, 0x277D46C68);
      v27 = sub_23AA0D2F4();

      v125 = v27;
      v28 = [v21 opendoors];
      v29 = sub_23AA0D2F4();

      sub_23A912898(v29);
      v30 = [v21 walls];
      v31 = sub_23AA0D2F4();

      v32 = [v21 curvedWalls];
      sub_23A8D6C58(0, &qword_27DFB0A70, 0x277D46C50);
      v33 = sub_23AA0D2F4();

      v117 = sub_23A9A46EC(v31, v33);

      v34 = v125;
      v35 = [v21 curvedDoors];
      v36 = sub_23AA0D2F4();

      v116 = sub_23A9A46EC(v34, v36);

      v37 = [v21 windows];
      v38 = sub_23AA0D2F4();

      v39 = [v21 curvedWindows];
      v40 = sub_23AA0D2F4();

      v115 = sub_23A9A46EC(v38, v40);

      v41 = [v21 openings];
      v42 = sub_23AA0D2F4();

      v43 = sub_23A9A46EC(v42, v17);

      v44 = [v21 floors];
      v45 = sub_23AA0D2F4();

      v46 = sub_23A9A46EC(v45, v17);

      sub_23A9A4A38(v24);
      v48 = v47;

      v49 = [v21 roomTypes];
      sub_23A8D6C58(0, &qword_27DFB0A78, 0x277D46CA0);
      v50 = sub_23AA0D2F4();

      v51 = sub_23A9A4D4C(v50);

      v52 = [v21 storyLevel];
      v53 = v113;
      v54 = v17;
      v55 = *(v113 + 48);
      *(v15 + *(v113 + 52)) = 2;
      v56 = (v15 + v53[15]);
      *v56 = 0u;
      v56[1] = 0u;
      v57 = v116;
      *v15 = v117;
      v15[1] = v57;
      v15[2] = v115;
      v15[3] = v43;
      v15[4] = v46;
      v15[5] = v48;
      v58 = v54;
      *(v15 + v53[14]) = v54;
      v59 = v15 + v53[10];
      sub_23AA0C0D4();
      *(v15 + v53[11]) = v51;
      *(v15 + v55) = v52;
      v60 = (v15 + v53[16]);
      v61 = v121;
      *v60 = v120;
      v60[1] = v61;
      v62 = v123;
      v60[2] = v122;
      v60[3] = v62;
      v124[3] = sub_23A8D6C58(0, &unk_27DFB0A80, 0x277D46C88);
      v124[0] = v21;
      v63 = v21;
      sub_23A8D5068(v124, v56, &unk_27DFB1140, &qword_23AA19C10);
      v64 = v110;
      sub_23A9A7C30(v15, v110, type metadata accessor for CapturedRoom);
      v19 = v119;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_23A93A1A0(0, v19[2] + 1, 1, v19);
      }

      v65 = v118;
      v67 = v19[2];
      v66 = v19[3];
      v17 = v58;
      if (v67 >= v66 >> 1)
      {
        v19 = sub_23A93A1A0(v66 > 1, v67 + 1, 1, v19);
      }

      v18 = v65 + 1;

      v19[2] = v67 + 1;
      sub_23A9A7C98(v64, v19 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v67, type metadata accessor for CapturedRoom);
      sub_23A9A7D00(v15, type metadata accessor for CapturedRoom);
      v12 = v111;
    }

    while (v109 != v18);
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  v119 = v19;
  if (qword_27DFAE4C0 != -1)
  {
    swift_once();
  }

  xmmword_27DFC0830 = v120;
  unk_27DFC0840 = v121;
  xmmword_27DFC0850 = v122;
  unk_27DFC0860 = v123;
  v68 = v105;
  v69 = [v105 walls];
  sub_23A8D6C58(0, &qword_27DFB13E0, 0x277D46C68);
  v70 = sub_23AA0D2F4();

  v71 = [v68 curvedWalls];
  sub_23A8D6C58(0, &qword_27DFB0A70, 0x277D46C50);
  v72 = sub_23AA0D2F4();

  v73 = sub_23A9A46EC(v70, v72);

  v74 = [v68 doors];
  v75 = sub_23AA0D2F4();

  v76 = [v68 opendoors];
  v77 = sub_23AA0D2F4();

  v124[0] = v75;
  sub_23A912898(v77);
  v78 = v124[0];
  v79 = [v68 curvedDoors];
  v80 = sub_23AA0D2F4();

  v81 = sub_23A9A46EC(v78, v80);

  v82 = [v68 windows];
  v83 = sub_23AA0D2F4();

  v84 = [v68 curvedWindows];
  v85 = sub_23AA0D2F4();

  v86 = sub_23A9A46EC(v83, v85);

  v87 = [v68 openings];
  v88 = sub_23AA0D2F4();

  v89 = MEMORY[0x277D84F90];
  v90 = sub_23A9A46EC(v88, MEMORY[0x277D84F90]);

  v91 = [v68 objects];
  sub_23A8D6C58(0, &unk_27DFB0A60, 0x277D46C60);
  v92 = sub_23AA0D2F4();

  sub_23A9A4A38(v92);
  v94 = v93;

  v95 = [v68 floors];
  v96 = sub_23AA0D2F4();

  v97 = sub_23A9A46EC(v96, v89);

  v98 = [v68 roomTypes];
  sub_23A8D6C58(0, &qword_27DFB0A78, 0x277D46CA0);
  v99 = sub_23AA0D2F4();

  v100 = sub_23A9A4D4C(v99);

  v101 = type metadata accessor for CapturedStructure(0);
  v102 = v106;
  *(v106 + *(v101 + 52)) = 2;
  *v102 = v119;
  v102[1] = v73;
  v102[2] = v81;
  v102[3] = v86;
  v102[4] = v90;
  v102[5] = v94;
  v103 = v102 + *(v101 + 48);
  result = sub_23AA0C0D4();
  v102[6] = v97;
  v102[7] = v100;
  return result;
}

uint64_t sub_23A9A5A40()
{
  result = ARVisionToRenderingCoordinateTransform();
  xmmword_27DFC07F0 = v1;
  unk_27DFC0800 = v2;
  xmmword_27DFC0810 = v3;
  unk_27DFC0820 = v4;
  return result;
}

__n128 sub_23A9A5A68()
{
  result = *MEMORY[0x277D860B8];
  v1 = *(MEMORY[0x277D860B8] + 16);
  v2 = *(MEMORY[0x277D860B8] + 32);
  v3 = *(MEMORY[0x277D860B8] + 48);
  xmmword_27DFC0830 = *MEMORY[0x277D860B8];
  unk_27DFC0840 = v1;
  xmmword_27DFC0850 = v2;
  unk_27DFC0860 = v3;
  return result;
}

id sub_23A9A5AD4()
{
  if (qword_27DFAE4C8 != -1)
  {
    swift_once();
  }

  v1 = qword_27DFC0870;
  qword_27DFC0890 = qword_27DFC0870;

  return v1;
}

void sub_23A9A5B38(uint64_t a1@<X0>, char *a2@<X8>)
{
  if (a1 <= -1003)
  {
    if (a1 > -2004)
    {
      switch(a1)
      {
        case -2003:
          if (qword_27DFAE4B0 != -1)
          {
            swift_once();
          }

          v13 = sub_23AA0CE84();
          __swift_project_value_buffer(v13, qword_27DFB06F8);
          v4 = sub_23AA0CE54();
          v5 = sub_23AA0D494();
          if (!os_log_type_enabled(v4, v5))
          {
            goto LABEL_56;
          }

          v6 = swift_slowAlloc();
          *v6 = 0;
          v7 = "Unable to create a Metal command buffer";
          break;
        case -2002:
          if (qword_27DFAE4B0 != -1)
          {
            swift_once();
          }

          v16 = sub_23AA0CE84();
          __swift_project_value_buffer(v16, qword_27DFB06F8);
          v4 = sub_23AA0CE54();
          v5 = sub_23AA0D494();
          if (!os_log_type_enabled(v4, v5))
          {
            goto LABEL_56;
          }

          v6 = swift_slowAlloc();
          *v6 = 0;
          v7 = "Unable to create a Metal command queue";
          break;
        case -2001:
          if (qword_27DFAE4B0 != -1)
          {
            swift_once();
          }

          v9 = sub_23AA0CE84();
          __swift_project_value_buffer(v9, qword_27DFB06F8);
          v4 = sub_23AA0CE54();
          v5 = sub_23AA0D494();
          if (!os_log_type_enabled(v4, v5))
          {
            goto LABEL_56;
          }

          v6 = swift_slowAlloc();
          *v6 = 0;
          v7 = "Unable to create a Metal device";
          break;
        default:
          goto LABEL_59;
      }
    }

    else
    {
      switch(a1)
      {
        case -2006:
          if (qword_27DFAE4B0 != -1)
          {
            swift_once();
          }

          v11 = sub_23AA0CE84();
          __swift_project_value_buffer(v11, qword_27DFB06F8);
          v4 = sub_23AA0CE54();
          v5 = sub_23AA0D494();
          if (!os_log_type_enabled(v4, v5))
          {
            goto LABEL_56;
          }

          v6 = swift_slowAlloc();
          *v6 = 0;
          v7 = "Unable to create a Metal texture";
          break;
        case -2005:
          if (qword_27DFAE4B0 != -1)
          {
            swift_once();
          }

          v14 = sub_23AA0CE84();
          __swift_project_value_buffer(v14, qword_27DFB06F8);
          v4 = sub_23AA0CE54();
          v5 = sub_23AA0D494();
          if (!os_log_type_enabled(v4, v5))
          {
            goto LABEL_56;
          }

          v6 = swift_slowAlloc();
          *v6 = 0;
          v7 = "Unable to create a Metal texture descriptor";
          break;
        case -2004:
          if (qword_27DFAE4B0 != -1)
          {
            swift_once();
          }

          v3 = sub_23AA0CE84();
          __swift_project_value_buffer(v3, qword_27DFB06F8);
          v4 = sub_23AA0CE54();
          v5 = sub_23AA0D494();
          if (!os_log_type_enabled(v4, v5))
          {
            goto LABEL_56;
          }

          v6 = swift_slowAlloc();
          *v6 = 0;
          v7 = "Unable to create a Metal function";
          break;
        default:
LABEL_59:
          v23[0] = 0;
          v23[1] = 0xE000000000000000;
          type metadata accessor for RSError(0);
          sub_23AA0D994();
          if (qword_27DFAE4B0 != -1)
          {
            swift_once();
          }

          v18 = sub_23AA0CE84();
          __swift_project_value_buffer(v18, qword_27DFB06F8);

          v4 = sub_23AA0CE54();
          v19 = sub_23AA0D494();

          if (!os_log_type_enabled(v4, v19))
          {

            goto LABEL_56;
          }

          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v23[0] = v21;
          *v20 = 136315138;
          v22 = sub_23A9A65A4(0, 0xE000000000000000, v23);

          *(v20 + 4) = v22;
          _os_log_impl(&dword_23A8B4000, v4, v19, "Unknown error %s", v20, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v21);
          MEMORY[0x23EE91710](v21, -1, -1);
          v17 = v20;
LABEL_55:
          MEMORY[0x23EE91710](v17, -1, -1);
LABEL_56:

          v10 = 5;
          goto LABEL_57;
      }
    }

LABEL_54:
    _os_log_impl(&dword_23A8B4000, v4, v5, v7, v6, 2u);
    v17 = v6;
    goto LABEL_55;
  }

  if (a1 <= -4)
  {
    switch(a1)
    {
      case -1002:
        if (qword_27DFAE4B0 != -1)
        {
          swift_once();
        }

        v12 = sub_23AA0CE84();
        __swift_project_value_buffer(v12, qword_27DFB06F8);
        v4 = sub_23AA0CE54();
        v5 = sub_23AA0D494();
        if (!os_log_type_enabled(v4, v5))
        {
          goto LABEL_56;
        }

        v6 = swift_slowAlloc();
        *v6 = 0;
        v7 = "Insufficient input for multi room";
        break;
      case -1001:
        if (qword_27DFAE4B0 != -1)
        {
          swift_once();
        }

        v15 = sub_23AA0CE84();
        __swift_project_value_buffer(v15, qword_27DFB06F8);
        v4 = sub_23AA0CE54();
        v5 = sub_23AA0D494();
        if (!os_log_type_enabled(v4, v5))
        {
          goto LABEL_56;
        }

        v6 = swift_slowAlloc();
        *v6 = 0;
        v7 = "Invalid room location for multiroom relocalization";
        break;
      case -4:
        if (qword_27DFAE4B0 != -1)
        {
          swift_once();
        }

        v8 = sub_23AA0CE84();
        __swift_project_value_buffer(v8, qword_27DFB06F8);
        v4 = sub_23AA0CE54();
        v5 = sub_23AA0D494();
        if (!os_log_type_enabled(v4, v5))
        {
          goto LABEL_56;
        }

        v6 = swift_slowAlloc();
        *v6 = 0;
        v7 = "Invalid argument";
        break;
      default:
        goto LABEL_59;
    }

    goto LABEL_54;
  }

  switch(a1)
  {
    case -3:
      v10 = 3;
      break;
    case -1:
      v10 = 0;
      break;
    case -2:
      v10 = 1;
      break;
    default:
      goto LABEL_59;
  }

LABEL_57:
  *a2 = v10;
}

unint64_t sub_23A9A62B8()
{
  result = qword_27DFB08D8;
  if (!qword_27DFB08D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB08D8);
  }

  return result;
}

unint64_t sub_23A9A630C()
{
  result = qword_27DFB08F8;
  if (!qword_27DFB08F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB08F8);
  }

  return result;
}

unint64_t sub_23A9A6360()
{
  result = qword_27DFAFCA0;
  if (!qword_27DFAFCA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DFB0900, &qword_23AA15C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFCA0);
  }

  return result;
}

unint64_t sub_23A9A63DC()
{
  result = qword_27DFB0920;
  if (!qword_27DFB0920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0920);
  }

  return result;
}

unint64_t sub_23A9A6430()
{
  result = qword_27DFB0950;
  if (!qword_27DFB0950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0950);
  }

  return result;
}

unint64_t sub_23A9A6484()
{
  result = qword_27DFB0960;
  if (!qword_27DFB0960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0960);
  }

  return result;
}

uint64_t sub_23A9A64D8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_23A9A6548(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_23A9A65A4(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_23A9A65A4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23A9A6670(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_23A9100C4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_23A9A6670(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23A9A677C(a5, a6);
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
    result = sub_23AA0D934();
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

uint64_t sub_23A9A677C(uint64_t a1, unint64_t a2)
{
  v4 = sub_23A9A67C8(a1, a2);
  sub_23A9A68F8(&unk_284D7F9A0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23A9A67C8(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23A9A69E4(v5, 0);
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

  result = sub_23AA0D934();
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
        v10 = sub_23AA0D224();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23A9A69E4(v10, 0);
        result = sub_23AA0D894();
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

uint64_t sub_23A9A68F8(uint64_t result)
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

  result = sub_23A9A6A58(result, v12, 1, v3);
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

void *sub_23A9A69E4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF340, &unk_23AA19BA0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23A9A6A58(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF340, &unk_23AA19BA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

unint64_t sub_23A9A6B4C(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_23AA0D7F4();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0A30, &qword_23AA19BF0);
      result = sub_23AA0D884();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!v2)
  {
LABEL_4:
    v5 = *(v4 + 16);
    if (!v5)
    {
      return v3;
    }

    goto LABEL_9;
  }

LABEL_8:
  result = sub_23AA0D7F4();
  v5 = result;
  if (!result)
  {
    return v3;
  }

LABEL_9:
  v6 = v3 + 56;
  v37 = v5;
  v7 = 0;
  if ((v1 & 0xC000000000000001) == 0)
  {
    v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      if (v7 == v36)
      {
        goto LABEL_39;
      }

      v24 = *(v1 + 32 + 8 * v7);
      v25 = *(v3 + 40);
      sub_23AA0DD14();

      sub_23AA0C0B4();
      result = sub_23AA0DD54();
      v26 = -1 << *(v3 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      v29 = *(v6 + 8 * (v27 >> 6));
      v30 = 1 << v27;
      if (((1 << v27) & v29) == 0)
      {
LABEL_25:
        *(v6 + 8 * v28) = v29 | v30;
        *(*(v3 + 48) + 8 * v27) = v24;
        v22 = *(v3 + 16);
        v8 = __OFADD__(v22, 1);
        v23 = v22 + 1;
        if (!v8)
        {
          *(v3 + 16) = v23;
          goto LABEL_27;
        }

        goto LABEL_40;
      }

      v31 = ~v26;
      v32 = OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type;
      while (1)
      {
        v33 = *(*(v3 + 48) + 8 * v27);

        if (sub_23AA0C094())
        {
          break;
        }

LABEL_32:
        v27 = (v27 + 1) & v31;
        v28 = v27 >> 6;
        v29 = *(v6 + 8 * (v27 >> 6));
        v30 = 1 << v27;
        if ((v29 & (1 << v27)) == 0)
        {
          v5 = v37;
          goto LABEL_25;
        }
      }

      v34 = *(v33 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);

      if (v34 != *(v24 + v32))
      {
        goto LABEL_32;
      }

      v5 = v37;
LABEL_27:
      if (++v7 == v5)
      {
        return v3;
      }
    }
  }

  v35 = v1;
  while (1)
  {
    result = MEMORY[0x23EE90360](v7, v1);
    v8 = __OFADD__(v7++, 1);
    if (v8)
    {
      break;
    }

    v9 = result;
    v10 = *(v3 + 40);
    sub_23AA0DD14();
    sub_23AA0C0B4();
    result = sub_23AA0DD54();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *(v6 + 8 * (v12 >> 6));
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      v17 = OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type;
      do
      {
        v18 = *(*(v3 + 48) + 8 * v12);

        if (sub_23AA0C094())
        {
          v19 = *(v18 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);

          if (v19 == *(v9 + v17))
          {
            swift_unknownObjectRelease();
            v1 = v35;
            v5 = v37;
            goto LABEL_11;
          }
        }

        else
        {
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v6 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while ((v14 & (1 << v12)) != 0);
      v1 = v35;
      v5 = v37;
    }

    *(v6 + 8 * v13) = v14 | v15;
    *(*(v3 + 48) + 8 * v12) = v9;
    v20 = *(v3 + 16);
    v8 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (v8)
    {
      goto LABEL_38;
    }

    *(v3 + 16) = v21;
LABEL_11:
    if (v7 == v5)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_23A9A6ED0()
{
  v0 = sub_23AA0DA64();

  if (v0 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_23A9A6F1C()
{
  v0 = sub_23AA0DA64();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

id sub_23A9A6F68(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v26 - v5;
  v7 = OBJC_IVAR____TtC8RoomPlan16RoomScanKeyframe_identifier;
  v8 = sub_23AA0C0E4();
  v9 = *(*(v8 - 8) + 56);
  v9(&v1[v7], 1, 1, v8);
  v10 = OBJC_IVAR____TtC8RoomPlan16RoomScanKeyframe_points;
  *&v1[OBJC_IVAR____TtC8RoomPlan16RoomScanKeyframe_points] = 0;
  v11 = OBJC_IVAR____TtC8RoomPlan16RoomScanKeyframe_pointsToWorld;
  *&v1[OBJC_IVAR____TtC8RoomPlan16RoomScanKeyframe_pointsToWorld] = 0;
  v26 = OBJC_IVAR____TtC8RoomPlan16RoomScanKeyframe_semanticLabels;
  *&v1[OBJC_IVAR____TtC8RoomPlan16RoomScanKeyframe_semanticLabels] = 0;
  v27 = OBJC_IVAR____TtC8RoomPlan16RoomScanKeyframe_semanticVotes;
  *&v1[OBJC_IVAR____TtC8RoomPlan16RoomScanKeyframe_semanticVotes] = 0;
  v28 = OBJC_IVAR____TtC8RoomPlan16RoomScanKeyframe_colors;
  *&v1[OBJC_IVAR____TtC8RoomPlan16RoomScanKeyframe_colors] = 0;
  *&v1[OBJC_IVAR____TtC8RoomPlan16RoomScanKeyframe_coreKeyframe] = a1;
  v12 = a1;
  v13 = [v12 identifier];
  sub_23AA0C0A4();

  v9(v6, 0, 1, v8);
  swift_beginAccess();
  sub_23A8D5068(v6, &v1[v7], &unk_27DFB0970, &qword_23AA14E00);
  swift_endAccess();
  [v12 cameraPose];
  v14 = &v1[OBJC_IVAR____TtC8RoomPlan16RoomScanKeyframe_cameraPose];
  *v14 = v15;
  *(v14 + 1) = v16;
  *(v14 + 2) = v17;
  *(v14 + 3) = v18;
  v19 = [v12 count];
  *&v1[OBJC_IVAR____TtC8RoomPlan16RoomScanKeyframe_count] = v19;
  *&v1[v10] = [v12 points];
  *&v1[v11] = [v12 pointsToWorld];
  v20 = [v12 semanticLabels];
  *&v1[v26] = v20;
  v21 = [v12 semanticVotes];
  *&v1[v27] = v21;
  v22 = [v12 colors];
  *&v1[v28] = v22;
  [v12 timestamp];
  *&v1[OBJC_IVAR____TtC8RoomPlan16RoomScanKeyframe_timestamp] = v23;
  v24 = type metadata accessor for RoomScanKeyframe(0);
  v29.receiver = v1;
  v29.super_class = v24;
  return objc_msgSendSuper2(&v29, sel_init);
}

id sub_23A9A7204(void *a1, void *a2)
{
  v36 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v32 - v6;
  v8 = OBJC_IVAR____TtC8RoomPlan17ObjectKitKeyframe_identifier;
  v9 = sub_23AA0C0E4();
  v10 = *(*(v9 - 8) + 56);
  v11 = 1;
  v10(&v2[v8], 1, 1, v9);
  v12 = OBJC_IVAR____TtC8RoomPlan17ObjectKitKeyframe_points;
  *&v2[OBJC_IVAR____TtC8RoomPlan17ObjectKitKeyframe_points] = 0;
  v32 = OBJC_IVAR____TtC8RoomPlan17ObjectKitKeyframe_pointsToWorld;
  *&v2[OBJC_IVAR____TtC8RoomPlan17ObjectKitKeyframe_pointsToWorld] = 0;
  v33 = OBJC_IVAR____TtC8RoomPlan17ObjectKitKeyframe_semanticLabels;
  *&v2[OBJC_IVAR____TtC8RoomPlan17ObjectKitKeyframe_semanticLabels] = 0;
  v34 = OBJC_IVAR____TtC8RoomPlan17ObjectKitKeyframe_semanticVotes;
  *&v2[OBJC_IVAR____TtC8RoomPlan17ObjectKitKeyframe_semanticVotes] = 0;
  v35 = OBJC_IVAR____TtC8RoomPlan17ObjectKitKeyframe_colors;
  *&v2[OBJC_IVAR____TtC8RoomPlan17ObjectKitKeyframe_colors] = 0;
  v13 = OBJC_IVAR____TtC8RoomPlan17ObjectKitKeyframe_coreKeyframe;
  *&v2[OBJC_IVAR____TtC8RoomPlan17ObjectKitKeyframe_coreKeyframe] = 0;
  v14 = [a1 identifier];
  if (v14)
  {
    v15 = v14;
    sub_23AA0C0A4();

    v11 = 0;
  }

  v10(v7, v11, 1, v9);
  swift_beginAccess();
  sub_23A8D5068(v7, &v2[v8], &unk_27DFB0970, &qword_23AA14E00);
  swift_endAccess();
  [a1 cameraPose];
  v16 = &v2[OBJC_IVAR____TtC8RoomPlan17ObjectKitKeyframe_cameraPose];
  *v16 = v17;
  *(v16 + 1) = v18;
  *(v16 + 2) = v19;
  *(v16 + 3) = v20;
  v21 = [a1 count];
  *&v2[OBJC_IVAR____TtC8RoomPlan17ObjectKitKeyframe_count] = v21;
  *&v2[v12] = [a1 points];
  v22 = [a1 pointsToWorld];
  *&v2[v32] = v22;
  v23 = [a1 semanticLabels];
  *&v2[v33] = v23;
  v24 = [a1 semanticVotes];
  *&v2[v34] = v24;
  v25 = [a1 colors];
  *&v2[v35] = v25;
  [a1 timestamp];
  *&v2[OBJC_IVAR____TtC8RoomPlan17ObjectKitKeyframe_timestamp] = v26;
  v27 = *&v2[v13];
  v28 = v36;
  *&v2[v13] = v36;
  v29 = v28;

  v30 = type metadata accessor for ObjectKitKeyframe(0);
  v37.receiver = v2;
  v37.super_class = v30;
  return objc_msgSendSuper2(&v37, sel_init);
}

uint64_t sub_23A9A74C8(void *a1)
{
  [a1 transform];
  v4 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_23AA12200, v3.f32[0]), xmmword_23AA12250, *v3.f32, 1), xmmword_23AA12210, v3, 2), xmmword_23AA11AE0, v3, 3);
  v6 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_23AA12200, v5.f32[0]), xmmword_23AA12250, *v5.f32, 1), xmmword_23AA12210, v5, 2), xmmword_23AA11AE0, v5, 3);
  v8 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_23AA12200, v7.f32[0]), xmmword_23AA12250, *v7.f32, 1), xmmword_23AA12210, v7, 2), xmmword_23AA11AE0, v7, 3);
  v10 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_23AA12200, v9.f32[0]), xmmword_23AA12250, *v9.f32, 1), xmmword_23AA12210, v9, 2), xmmword_23AA11AE0, v9, 3);
  v11 = vmulq_f32(v4, 0);
  __asm { FMOV            V6.4S, #-1.0 }

  v17 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v11, _Q6, v6), 0, v8), 0, v10);
  v18 = vmlaq_f32(v11, 0, v6);
  *(v1 + 80) = vmlaq_f32(vmlaq_f32(vmlaq_f32(v4, 0, v6), 0, v8), 0, v10);
  *(v1 + 96) = v17;
  *(v1 + 112) = vmlaq_f32(vmlaq_f32(v18, _Q6, v8), 0, v10);
  *(v1 + 128) = vaddq_f32(v10, vmlaq_f32(v18, 0, v8));
  [a1 intrinsics];
  *(v1 + 144) = v19;
  *(v1 + 160) = v20;
  *(v1 + 176) = v21;
  [a1 imageResolution];
  *(v1 + 192) = v22;
  *(v1 + 200) = v23;
  [a1 transform];
  *(v1 + 16) = v24;
  *(v1 + 32) = v25;
  *(v1 + 48) = v26;
  *(v1 + 64) = v27;
  return v1;
}

void sub_23A9A75E8(void *a1)
{
  v2 = v1;
  *(v1 + 160) = 0;
  v4 = (v1 + 160);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0;
  *(v1 + 168) = 0;
  v5 = [a1 rawFeaturePoints];
  type metadata accessor for RSRawPointCloud();
  v6 = swift_allocObject();
  v6[3] = 0;
  if (v5)
  {
    v7 = sub_23AA0D454();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v6[4] = v7;
  v6[2] = *(v7 + 16);
  v6[3] = v7 + 32;
  v8 = *(v2 + 16);
  *(v2 + 16) = v6;
  swift_unknownObjectRelease();
  [a1 timestamp];
  *(v2 + 32) = v9;
  v10 = [a1 camera];
  type metadata accessor for RSCamera();
  v11 = swift_allocObject();
  sub_23A99D3D8(v10);
  v12 = *(v2 + 24);
  *(v2 + 24) = v11;
  swift_unknownObjectRelease();
  v13 = [a1 capturedImage];
  v14 = *(v2 + 40);
  *(v2 + 40) = v13;

  v15 = [a1 rawSceneUnderstandingData];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 depthBuffer];
  }

  else
  {
    v17 = 0;
  }

  v18 = *(v2 + 48);
  *(v2 + 48) = v17;

  v19 = [a1 rawSceneUnderstandingData];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 depthConfidenceBuffer];
  }

  else
  {
    v21 = 0;
  }

  v22 = *(v2 + 56);
  *(v2 + 56) = v21;

  v23 = [a1 rawSceneUnderstandingData];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 semanticSegmentationBufferSampledForDepth];
  }

  else
  {
    v25 = 0;
  }

  v26 = *(v2 + 64);
  *(v2 + 64) = v25;

  v27 = [a1 rawSceneUnderstandingData];
  if (v27)
  {
    v28 = v27;
    v29 = [v27 semanticSegmentationConfidenceBufferSampledForDepth];
  }

  else
  {
    v29 = 0;
  }

  v30 = *(v2 + 72);
  *(v2 + 72) = v29;

  v31 = [a1 worldTrackingState];
  if (v31)
  {
    v32 = v31;
    v33 = [v31 vioTrackingState];
  }

  else
  {
    v33 = 0;
  }

  *(v2 + 80) = v33;
  [a1 referenceOriginTransform];
  *(v2 + 96) = v34;
  *(v2 + 112) = v35;
  *(v2 + 128) = v36;
  *(v2 + 144) = v37;
  v38 = [a1 rawSceneUnderstandingData];
  if (!v38)
  {
    goto LABEL_25;
  }

  v39 = [a1 rawSceneUnderstandingData];
  if (!v39)
  {
    __break(1u);
    goto LABEL_31;
  }

  v40 = v39;
  v41 = [v39 wideCamera];

  if (!v41)
  {
LABEL_25:
    v45 = 0;
    goto LABEL_26;
  }

  v42 = [a1 rawSceneUnderstandingData];
  if (!v42)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v43 = v42;
  v44 = [v42 wideCamera];

  if (!v44)
  {
LABEL_32:
    __break(1u);
    return;
  }

  v45 = swift_allocObject();
  sub_23A99D3D8(v44);
LABEL_26:
  v46 = *v4;
  *v4 = v45;
  swift_unknownObjectRelease();
  v47 = [a1 rawSceneUnderstandingData];
  if (v47)
  {
    v48 = v47;
    v49 = [v47 capturedImage];
  }

  else
  {
    v49 = 0;
  }

  v50 = *(v2 + 168);
  *(v2 + 168) = v49;

  *(v2 + 176) = [a1 deviceOrientation];
}

uint64_t sub_23A9A79F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0980, &qword_23AA19B98);
    v3 = sub_23AA0D884();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      v11 = *(v3 + 40);
      sub_23AA0DD14();
      MEMORY[0x23EE907C0](v10);
      result = sub_23AA0DD54();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_23A9A7B34(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1 >= 0xFFFFFFFF)
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

uint64_t sub_23A9A7B58(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFAFDE0, &qword_23AA15D10);
    sub_23A9A7BE0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23A9A7BE0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFB0940, &qword_23AA15CF0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23A9A7C30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A9A7C98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A9A7D00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for RSFrame.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RSFrame.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23A9A7EE4()
{
  result = qword_27DFB0A90;
  if (!qword_27DFB0A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0A90);
  }

  return result;
}

unint64_t sub_23A9A7F3C()
{
  result = qword_27DFB0A98;
  if (!qword_27DFB0A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0A98);
  }

  return result;
}

unint64_t sub_23A9A7F94()
{
  result = qword_27DFB0AA0;
  if (!qword_27DFB0AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0AA0);
  }

  return result;
}

unint64_t sub_23A9A7FEC()
{
  result = qword_27DFB0AA8;
  if (!qword_27DFB0AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0AA8);
  }

  return result;
}

unint64_t sub_23A9A8044()
{
  result = qword_27DFB0AB0;
  if (!qword_27DFB0AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0AB0);
  }

  return result;
}

unint64_t sub_23A9A809C()
{
  result = qword_27DFB0AB8;
  if (!qword_27DFB0AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0AB8);
  }

  return result;
}

unint64_t sub_23A9A80F4()
{
  result = qword_27DFB0AC0;
  if (!qword_27DFB0AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0AC0);
  }

  return result;
}

unint64_t sub_23A9A814C()
{
  result = qword_27DFB0AC8;
  if (!qword_27DFB0AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0AC8);
  }

  return result;
}

unint64_t sub_23A9A81A4()
{
  result = qword_27DFB0AD0;
  if (!qword_27DFB0AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0AD0);
  }

  return result;
}

unint64_t sub_23A9A81FC()
{
  result = qword_27DFB0AD8;
  if (!qword_27DFB0AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0AD8);
  }

  return result;
}

unint64_t sub_23A9A8254()
{
  result = qword_27DFB0AE0;
  if (!qword_27DFB0AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0AE0);
  }

  return result;
}

unint64_t sub_23A9A82AC()
{
  result = qword_27DFB0AE8;
  if (!qword_27DFB0AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0AE8);
  }

  return result;
}

uint64_t StructureBuilder.__allocating_init(options:)(void *a1)
{
  result = swift_allocObject();
  *(result + 16) = *a1;
  *(result + 24) = 1;
  return result;
}

uint64_t StructureBuilder.init(options:)(void *a1)
{
  *(v1 + 16) = *a1;
  *(v1 + 24) = 1;
  return v1;
}

uint64_t sub_23A9A83C4(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = type metadata accessor for CapturedRoom(0);
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A9A8488, 0, 0);
}

uint64_t sub_23A9A8488()
{
  v1 = v0[9];
  v2 = sub_23A9A950C();
  if (v2)
  {

    if (qword_27DFAE470 != -1)
    {
      swift_once();
    }

    v3 = v0[8];
    sub_23A95ACDC();
    v4 = swift_allocObject();
    v0[13] = v4;
    v38 = v4;
    *(v4 + 16) = MEMORY[0x277D84F90];
    v5 = (v4 + 16);
    v6 = swift_allocObject();
    v0[14] = v6;
    v7 = *(MEMORY[0x277D860B8] + 16);
    v8 = *(MEMORY[0x277D860B8] + 32);
    v9 = *(MEMORY[0x277D860B8] + 48);
    v6[1] = *MEMORY[0x277D860B8];
    v6[2] = v7;
    v6[3] = v8;
    v6[4] = v9;
    v10 = *(v3 + 16);
    if (v10)
    {
      v12 = v0[10];
      v11 = v0[11];
      v13 = v0[8] + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v14 = *(v11 + 72);
      while (1)
      {
        v15 = v0[12];
        sub_23A9ACF14(v13, v15, type metadata accessor for CapturedRoom);
        v16 = (v15 + *(v12 + 64));
        v17 = v16[1];
        v18 = v16[2];
        v19 = v16[3];
        v6[1] = *v16;
        v6[2] = v17;
        v6[3] = v18;
        v6[4] = v19;
        sub_23A9A96B8(v15 + *(v12 + 60), (v0 + 2));
        if (!v0[5])
        {
          break;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0B00, &unk_23AA15C90);
        sub_23A8D6C58(0, &unk_27DFB0A80, 0x277D46C88);
        v20 = swift_dynamicCast();
        if ((v20 & 1) == 0)
        {
          goto LABEL_18;
        }

        v28 = v0[6];
        MEMORY[0x23EE8FD70]();
        if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23AA0D314();
        }

        v29 = v0[12];
        sub_23AA0D334();
        sub_23A9ACF7C(v29, type metadata accessor for CapturedRoom);
        v13 += v14;
        if (!--v10)
        {
          goto LABEL_11;
        }
      }

      v20 = sub_23A8D50D0((v0 + 2), &unk_27DFB1140, &qword_23AA19C10);
      __break(1u);
LABEL_18:
      __break(1u);
    }

    else
    {
LABEL_11:
      v30 = v0[9];
      v31 = swift_task_alloc();
      v0[15] = v31;
      v31[2] = v30;
      v31[3] = v38;
      v31[4] = v6;
      v32 = *(MEMORY[0x277D85A40] + 4);
      v33 = swift_task_alloc();
      v0[16] = v33;
      v27 = type metadata accessor for CapturedStructure(0);
      *v33 = v0;
      v33[1] = sub_23A9A8820;
      v20 = v0[7];
      v25 = sub_23A9A9728;
      v24 = 0x800000023AA21BB0;
      v21 = 0;
      v22 = 0;
      v23 = 0xD000000000000018;
      v26 = v31;
    }

    return MEMORY[0x2822008A0](v20, v21, v22, v23, v24, v25, v26, v27);
  }

  else
  {
    sub_23A9A961C();
    swift_allocError();
    *v34 = 5;
    swift_willThrow();
    v35 = v0[12];

    v36 = v0[1];

    return v36();
  }
}

uint64_t sub_23A9A8820()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_23A9A89B4;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_23A9A893C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23A9A893C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  v4 = v0[1];

  return v4();
}

uint64_t sub_23A9A89B4()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];

  v4 = v0[17];
  v5 = v0[12];

  v6 = v0[1];

  return v6();
}

void sub_23A9A8A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v20 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0C48, &unk_23AA1A650);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v22 = a2;
  v21 = sub_23A9A950C();
  if (v21)
  {
    swift_beginAccess();
    v11 = *(a3 + 16);
    sub_23A8D6C58(0, &unk_27DFB0A80, 0x277D46C88);

    v19 = sub_23AA0D2E4();

    sub_23A9DD100(MEMORY[0x277D84F90]);
    sub_23AA0C0E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0C40, &unk_23AA13050);
    sub_23A9AC9B4(&unk_27DFAF2C0, MEMORY[0x277CC95F0]);
    v12 = sub_23AA0D024();

    (*(v7 + 16))(v10, v20, v6);
    v13 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v14 = (v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    v15 = swift_allocObject();
    *(v15 + 16) = v22;
    (*(v7 + 32))(v15 + v13, v10, v6);
    *(v15 + v14) = a3;
    *(v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)) = v23;
    aBlock[4] = sub_23A9ACE4C;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A9A93A8;
    aBlock[3] = &block_descriptor_65;
    v16 = _Block_copy(aBlock);

    v17 = v21;
    v18 = v19;
    [v21 processMultiLevelWithMultiFloorPlan:v19 withKeyframes:v12 completionHandlerWithError:v16];
    _Block_release(v16);
  }

  else
  {
    __break(1u);
  }
}

void sub_23A9A8D40(void *a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v54 = a3;
  v11 = sub_23AA0CE84();
  *&v53 = *(v11 - 8);
  v12 = *(v53 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CapturedStructure(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v50.n128_u64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v21 = (v50.n128_u64 - v20);
  if (a2 && (v57 = a2, v22 = a2, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0C50, &unk_23AA1C9F0), sub_23A8D6C58(0, &qword_27DFB0C58, 0x277CCA9B8), (swift_dynamicCast() & 1) != 0))
  {
    v23 = v56;
    v55 = 5;
    if ([v56 code] == -1001)
    {
      v55 = 2;
    }

    else if ([v23 code] == -1002)
    {
      v55 = 0;
    }

    v52.n128_u64[0] = a4;
    sub_23A8D6C58(0, &qword_27DFAF770, 0x277D86200);
    if (qword_27DFAE3A0 != -1)
    {
      swift_once();
    }

    sub_23AA0D644();
    sub_23AA0CE94();
    v32 = v55;
    v33 = sub_23AA0CE54();
    v34 = sub_23AA0D494();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *&v51 = v23;
      v36 = v35;
      v37 = swift_slowAlloc();
      v57 = v37;
      *v36 = 136315138;
      LOBYTE(v56) = v32;
      sub_23A9A961C();
      v38 = sub_23AA0DC34();
      v40 = sub_23A9A65A4(v38, v39, &v57);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_23A8B4000, v33, v34, "Cannot process multiFloorPlan: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x23EE91710](v37, -1, -1);
      v41 = v36;
      v23 = v51;
      MEMORY[0x23EE91710](v41, -1, -1);
    }

    (*(v53 + 8))(v14, v11);
    v42 = v54;
    if (qword_27DFAE470 != -1)
    {
      swift_once();
    }

    *(v18 + *(v15 + 52)) = 2;
    v43 = MEMORY[0x277D84F90];
    *v18 = MEMORY[0x277D84F90];
    v18[1] = v43;
    v18[2] = v43;
    v18[3] = v43;
    v18[4] = v43;
    v18[5] = v43;
    v44 = v18 + *(v15 + 48);
    sub_23AA0C0D4();
    v18[6] = v43;
    v18[7] = v43;
    swift_beginAccess();
    LOBYTE(v56) = v55;
    v45 = sub_23AA0D1A4();
    sub_23A95AE00(v18, v45, v46, *(v42 + 16) & 1);

    sub_23A9ACF7C(v18, type metadata accessor for CapturedStructure);
    sub_23A95D31C();
    v47 = v55;
    sub_23A9A961C();
    v48 = swift_allocError();
    *v49 = v47;
    v56 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0C48, &unk_23AA1A650);
    sub_23AA0D364();
  }

  else
  {
    swift_beginAccess();
    v24 = *(a5 + 16);
    swift_beginAccess();
    v25 = *(a6 + 16);
    v52 = *(a6 + 32);
    v53 = v25;
    v26 = *(a6 + 48);
    v50 = *(a6 + 64);
    v51 = v26;
    v27 = v54;
    if (*(v54 + 16))
    {
      v30 = qword_27DFAE4D0;

      if (v30 != -1)
      {
        swift_once();
      }

      v29 = &qword_27DFC0878;
    }

    else
    {
      v28 = qword_27DFAE4D8;

      if (v28 != -1)
      {
        swift_once();
      }

      v29 = &qword_27DFC0880;
    }

    v31 = *v29;
    type metadata accessor for RSCoreAdaptor();
    sub_23A9A4F08(a1, v31, v21, v53, v52, v51, v50);

    if (qword_27DFAE470 != -1)
    {
      swift_once();
    }

    sub_23A95AE00(v21, 0x73736563637573, 0xE700000000000000, *(v27 + 16) & 1);
    sub_23A95D31C();
    sub_23A9ACF14(v21, v18, type metadata accessor for CapturedStructure);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0C48, &unk_23AA1A650);
    sub_23AA0D374();
    sub_23A9ACF7C(v21, type metadata accessor for CapturedStructure);
  }
}