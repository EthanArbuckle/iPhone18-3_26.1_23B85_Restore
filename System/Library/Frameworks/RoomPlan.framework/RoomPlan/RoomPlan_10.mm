uint64_t sub_23A96BD54()
{
  *v0;
  *v0;
  sub_23AA0D1D4();
}

void sub_23A96BE60(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x6F52676E6976696CLL;
  v4 = 0xE700000000000000;
  v5 = 0x6E65686374696BLL;
  v6 = 0x6F52676E696E6964;
  v7 = 0xEC00000064656966;
  if (v2 == 4)
  {
    v7 = 0xEA00000000006D6FLL;
  }

  else
  {
    v6 = 0x69746E6564696E75;
  }

  if (v2 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE700000000000000;
  v9 = 0x6D6F6F72646562;
  if (v2 != 1)
  {
    v9 = 0x6D6F6F7268746162;
    v8 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0xEA00000000006D6FLL;
  }

  if (*v1 <= 2u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (*v1 <= 2u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  *a1 = v10;
  a1[1] = v11;
}

uint64_t sub_23A96BFE8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x7265746E6563;
  if (v2 != 1)
  {
    v4 = 0x79726F7473;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6C6562616CLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x7265746E6563;
  if (*a2 != 1)
  {
    v8 = 0x79726F7473;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C6562616CLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23AA0DBD4();
  }

  return v11 & 1;
}

uint64_t sub_23A96C0D8()
{
  v1 = *v0;
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

uint64_t sub_23A96C170()
{
  *v0;
  *v0;
  sub_23AA0D1D4();
}

uint64_t sub_23A96C1F4()
{
  v1 = *v0;
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

uint64_t sub_23A96C288@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23A97D8C4();
  *a2 = result;
  return result;
}

void sub_23A96C2B8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x7265746E6563;
  if (v2 != 1)
  {
    v5 = 0x79726F7473;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C6562616CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_23A96C30C()
{
  v1 = 0x7265746E6563;
  if (*v0 != 1)
  {
    v1 = 0x79726F7473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_23A96C35C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23A97D8C4();
  *a1 = result;
  return result;
}

uint64_t sub_23A96C384(uint64_t a1)
{
  v2 = sub_23A978374();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A96C3C0(uint64_t a1)
{
  v2 = sub_23A978374();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CapturedRoom.Section.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFD58, &qword_23AA15CE8);
  v5 = *(v22 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v22);
  v8 = &v20 - v7;
  v45 = 1;
  v44 = 1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A978374();
  sub_23AA0DD74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v5;
  v21 = a2;
  LOBYTE(v23) = 0;
  sub_23A9783C8();
  v11 = v22;
  sub_23AA0DAF4();
  v46 = LOBYTE(v33[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0940, &qword_23AA15CF0);
  LOBYTE(v23) = 1;
  sub_23A97E420(&qword_27DFAFD70, &qword_27DFB0940, &qword_23AA15CF0);
  sub_23AA0DAF4();
  v12 = v46;
  v20 = v33[0];
  v47 = 2;
  v13 = sub_23AA0DAE4();
  (*(v10 + 8))(v8, v11);
  LOBYTE(v10) = v12;
  LOBYTE(v23) = v12;
  v24 = v20;
  *&v25 = v13;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  LOBYTE(v30) = 1;
  v31 = 0uLL;
  *(&v30 + 1) = 0;
  LOBYTE(v11) = v44;
  v32 = v44;
  v14 = v21;
  *(v21 + 144) = v44;
  v15 = v28;
  v14[4] = v27;
  v14[5] = v15;
  v16 = v26;
  v14[2] = v25;
  v14[3] = v16;
  v17 = v30;
  v14[6] = v29;
  v14[7] = v17;
  v14[8] = v31;
  v18 = v24;
  *v14 = v23;
  v14[1] = v18;
  sub_23A93010C(&v23, v33);
  __swift_destroy_boxed_opaque_existential_1(a1);
  LOBYTE(v33[0]) = v10;
  v33[1] = v20;
  v34 = v13;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 1;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v43 = v11;
  return sub_23A930168(v33);
}

uint64_t CapturedRoom.Section.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFD78, &qword_23AA15CF8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v13 = *(v1 + 1);
  v12[1] = *(v1 + 4);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A978374();
  sub_23AA0DD84();
  LOBYTE(v14) = v9;
  v15 = 0;
  sub_23A97841C();
  sub_23AA0DB74();
  if (!v2)
  {
    v14 = v13;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0940, &qword_23AA15CF0);
    sub_23A97E420(&qword_27DFAFD88, &qword_27DFB0940, &qword_23AA15CF0);
    sub_23AA0DB74();
    LOBYTE(v14) = 2;
    sub_23AA0DB64();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t CapturedRoom.Surface.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CapturedRoom.Surface(0) + 44);
  v4 = sub_23AA0C0E4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CapturedRoom.Surface.polygonCorners.getter()
{
  v1 = *(v0 + *(type metadata accessor for CapturedRoom.Surface(0) + 60));
}

unint64_t sub_23A96CAC4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000010;
    v6 = 0x79726F7473;
    if (a1 != 8)
    {
      v6 = 0x436E6F67796C6F70;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x696669746E656469;
    if (a1 != 5)
    {
      v7 = 0x6576727563;
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
    v1 = 0x79726F6765746163;
    v2 = 0x6574656C706D6F63;
    v3 = 0x6F69736E656D6964;
    if (a1 != 3)
    {
      v3 = 0x726F66736E617274;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6E656469666E6F63;
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

uint64_t sub_23A96CC44(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_23AA0DBD4();
  }

  return v12 & 1;
}

uint64_t sub_23A96CCF0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  sub_23AA0DD14();
  a3(v5);
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

uint64_t sub_23A96CD74(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  sub_23AA0D1D4();
}

uint64_t sub_23A96CDE4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  sub_23AA0DD14();
  a4(v6);
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

uint64_t sub_23A96CE4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23A97D910();
  *a2 = result;
  return result;
}

unint64_t sub_23A96CE7C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_23A96CAC4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_23A96CEC4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23A97D910();
  *a1 = result;
  return result;
}

uint64_t sub_23A96CEF8(uint64_t a1)
{
  v2 = sub_23A978490();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A96CF34(uint64_t a1)
{
  v2 = sub_23A978490();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CapturedRoom.Surface.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = sub_23AA0D904();
  v82 = *(v3 - 8);
  v83 = v3;
  v4 = *(v82 + 64);
  MEMORY[0x28223BE20](v3);
  v84 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  v6 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85);
  v86.i64[0] = &v75 - v7;
  v87.i64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  v8 = *(*(v87.i64[0] - 8) + 64);
  MEMORY[0x28223BE20](v87.i64[0]);
  v88 = &v75 - v9;
  v10 = sub_23AA0C0E4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFD90, &qword_23AA15D00);
  v89 = *(v15 - 8);
  v16 = *(v89 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v75 - v17;
  v19 = type metadata accessor for CapturedRoom.Surface(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = (&v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(v23 + 52);
  v25 = type metadata accessor for CapturedRoom.Surface.Curve(0);
  v26 = *(*(v25 - 8) + 56);
  v95 = v24;
  v26(v22 + v24, 1, 1, v25);
  v27 = *(v11 + 56);
  v93 = *(v19 + 56);
  v27(v22 + v93, 1, 1, v10);
  v90 = v19;
  v28 = *(v19 + 72);
  v94 = v22;
  *(v22->i32 + v28) = 0;
  v29 = a1[3];
  v30 = a1[4];
  v92 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_23A978490();
  v31 = v91;
  sub_23AA0DD74();
  if (v31)
  {
    v34 = v94;
    __swift_destroy_boxed_opaque_existential_1(v92);
    v35 = 0;
  }

  else
  {
    v32 = v88;
    v80 = v11;
    v91 = v10;
    v97 = 0;
    sub_23A93A654();
    sub_23AA0DAF4();
    v33 = v18;
    v40 = v94;
    v94->i8[0] = v96[0];
    v97 = 1;
    sub_23A9784E4();
    sub_23AA0DAF4();
    v40->i8[1] = v96[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFDA8, &qword_23AA15D08);
    v97 = 2;
    sub_23A978538(&qword_27DFAFDB0, sub_23A9785B0);
    sub_23AA0DAF4();
    v40->i64[1] = v96[0];
    v79 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0940, &qword_23AA15CF0);
    v97 = 3;
    sub_23A97E420(&qword_27DFAFD70, &qword_27DFB0940, &qword_23AA15CF0);
    sub_23AA0DAF4();
    v40[1] = *v96;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0900, &qword_23AA15C70);
    v97 = 4;
    sub_23A9781B8(&qword_27DFAFCA0);
    sub_23AA0DAF4();
    sub_23A969E20(v96[0]);
    v78 = v42;
    v77 = v43;
    v76 = v44;
    v75 = v45;

    v46 = v77;
    v40[2] = v78;
    v40[3] = v46;
    v47 = v75;
    v40[4] = v76;
    v40[5] = v47;
    LOBYTE(v96[0]) = 5;
    sub_23A969670(&qword_27DFAFDC0, MEMORY[0x277CC95F0]);
    v48 = v91;
    sub_23AA0DAF4();
    (*(v80 + 32))(v40 + v90[11], v14, v48);
    LOBYTE(v96[0]) = 6;
    sub_23A978604();
    sub_23AA0DAF4();
    sub_23A8D5068(v32, v40 + v95, &qword_27DFAEB38, &unk_23AA11B60);
    LOBYTE(v96[0]) = 7;
    sub_23A9786B8();
    v49 = v86.i64[0];
    sub_23AA0DAF4();
    sub_23A8D5068(v49, v40 + v93, &unk_27DFB0970, &qword_23AA14E00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFDE0, &qword_23AA15D10);
    v97 = 9;
    sub_23A97876C(&unk_27DFB0930, &qword_27DFAFD70);
    sub_23AA0DAF4();
    v50 = MEMORY[0x277D84F90];
    v88 = 0;
    v51 = v96[0];
    *(v40->i64 + v90[15]) = v96[0];
    v52 = v51[2];
    v53 = MEMORY[0x277D84F90];
    if (v52)
    {
      v96[0] = MEMORY[0x277D84F90];

      sub_23A975DC0(0, v52, 0);
      v53 = v96[0];
      v55 = *(v96[0] + 2);
      v56 = 4;
      v57 = v78;
      v58 = v77;
      v59 = v76;
      v60 = v75;
      do
      {
        v61 = *&v51[v56];
        v96[0] = v53;
        v62 = v53[3];
        if (v55 >= v62 >> 1)
        {
          v86 = v61;
          v87 = v54;
          sub_23A975DC0((v62 > 1), v55 + 1, 1);
          v61 = v86;
          v54.i32[3] = v87.i32[3];
          v60 = v75;
          v59 = v76;
          v58 = v77;
          v57 = v78;
          v53 = v96[0];
        }

        v63 = vaddq_f32(v60, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v57, v61.f32[0]), v58, *v61.f32, 1), v59, v61, 2));
        v63.i32[3] = v54.i32[3];
        v53[2] = v55 + 1;
        *&v53[2 * v55 + 4] = v63;
        v56 += 2;
        ++v55;
        v54 = v63;
        --v52;
      }

      while (v52);
    }

    v64 = v88;
    v65 = v90;
    v34 = v94;
    *(v94->i64 + v90[16]) = v53;
    v66 = v65[12];
    LOBYTE(v96[0]) = 8;
    v67 = sub_23AA0DAE4();
    if (!v64)
    {
      *(v34 + v66) = v67;
      goto LABEL_19;
    }

    v96[0] = v64;
    v68 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0C50, &unk_23AA1C9F0);
    v70 = v83;
    v69 = v84;
    if (swift_dynamicCast())
    {
      if ((*(v82 + 88))(v69, v70) == *MEMORY[0x277D84158])
      {

        v71 = v84;
        (*(v82 + 96))(v84, v83);
        v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF2D0, &unk_23AA13060) + 48);
        v34 = v94;
        *(v94->i64 + v66) = 0;
        v73 = sub_23AA0D8F4();
        (*(*(v73 - 8) + 8))(v71 + v72, v73);
        __swift_destroy_boxed_opaque_existential_1(v71);

        v65 = v90;
LABEL_19:
        *(v34 + 96) = 0u;
        *(v34 + 112) = 0u;
        *(v34 + v65[17]) = v50;
        (*(v89 + 8))(v79, v15);
        *(v34 + v65[19]) = v50;
        sub_23A969D58(v34, v81, type metadata accessor for CapturedRoom.Surface);
        __swift_destroy_boxed_opaque_existential_1(v92);
        return sub_23A969DC0(v34, type metadata accessor for CapturedRoom.Surface);
      }

      (*(v89 + 8))(v79, v15);
      (*(v82 + 8))(v84, v83);

      v35 = 1;
      v74 = v80;
      v34 = v94;
    }

    else
    {
      (*(v89 + 8))(v79, v15);

      v35 = 1;
      v74 = v80;
    }

    __swift_destroy_boxed_opaque_existential_1(v92);
    v41 = *(v34 + 8);

    (*(v74 + 8))(v34 + v90[11], v91);
  }

  sub_23A8D50D0(v34 + v95, &qword_27DFAEB38, &unk_23AA11B60);
  result = sub_23A8D50D0(v34 + v93, &unk_27DFB0970, &qword_23AA14E00);
  if (v35)
  {
    v37 = v90;
    v38 = *(v34 + v90[15]);

    v39 = *(v34 + v37[16]);
  }

  return result;
}

uint64_t CapturedRoom.Surface.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFDE8, &qword_23AA15D18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A978490();
  sub_23AA0DD84();
  LOBYTE(v17) = *v3;
  v18 = 0;
  sub_23A93A5AC();
  sub_23AA0DB74();
  if (!v2)
  {
    LOBYTE(v17) = *(v3 + 1);
    v18 = 1;
    sub_23A978804();
    sub_23AA0DB74();
    *&v17 = *(v3 + 8);
    v18 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFDA8, &qword_23AA15D08);
    sub_23A978538(&qword_27DFAFDF8, sub_23A978858);
    sub_23AA0DB74();
    v17 = *(v3 + 16);
    v18 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0940, &qword_23AA15CF0);
    sub_23A97E420(&qword_27DFAFD88, &qword_27DFB0940, &qword_23AA15CF0);
    sub_23AA0DB74();
    *&v17 = sub_23A96AC78(*(v3 + 32), *(v3 + 48), *(v3 + 64), *(v3 + 80));
    v18 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0900, &qword_23AA15C70);
    sub_23A9781B8(&qword_27DFAFCE8);
    sub_23AA0DB74();

    v12 = type metadata accessor for CapturedRoom.Surface(0);
    v13 = v12[11];
    LOBYTE(v17) = 5;
    sub_23AA0C0E4();
    sub_23A969670(&qword_27DFAF240, MEMORY[0x277CC95F0]);
    sub_23AA0DB74();
    v14 = v12[13];
    LOBYTE(v17) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
    sub_23A9788AC();
    sub_23AA0DB74();
    v15 = v12[14];
    LOBYTE(v17) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
    sub_23A978960();
    sub_23AA0DB74();
    v16 = *(v3 + v12[12]);
    LOBYTE(v17) = 8;
    sub_23AA0DB64();
    *&v17 = *(v3 + v12[15]);
    v18 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFDE0, &qword_23AA15D10);
    sub_23A97876C(&unk_27DFB0A40, &qword_27DFAFD88);
    sub_23AA0DB74();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_23A96E15C()
{
  v1 = *v0;
  v2 = 1819042167;
  v3 = 0x776F646E6977;
  v4 = 1919905636;
  if (v1 != 3)
  {
    v4 = 0x726F6F6C66;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x676E696E65706FLL;
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

uint64_t sub_23A96E1E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23A97DABC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23A96E214(uint64_t a1)
{
  v2 = sub_23A978A14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A96E250(uint64_t a1)
{
  v2 = sub_23A978A14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A96E2A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E65704F7369 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23AA0DBD4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23A96E324(uint64_t a1)
{
  v2 = sub_23A978ABC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A96E360(uint64_t a1)
{
  v2 = sub_23A978ABC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A96E39C(uint64_t a1)
{
  v2 = sub_23A978A68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A96E3D8(uint64_t a1)
{
  v2 = sub_23A978A68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A96E414(uint64_t a1)
{
  v2 = sub_23A978B64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A96E450(uint64_t a1)
{
  v2 = sub_23A978B64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A96E48C(uint64_t a1)
{
  v2 = sub_23A978BB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A96E4C8(uint64_t a1)
{
  v2 = sub_23A978BB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A96E504(uint64_t a1)
{
  v2 = sub_23A978B10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A96E540(uint64_t a1)
{
  v2 = sub_23A978B10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CapturedRoom.Surface.Category.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFE20, &qword_23AA15D20);
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = *(v46 + 64);
  MEMORY[0x28223BE20](v3);
  v43 = &v35 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFE28, &qword_23AA15D28);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v42 = &v35 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFE30, &qword_23AA15D30);
  v40 = *(v9 - 8);
  v41 = v9;
  v10 = *(v40 + 64);
  MEMORY[0x28223BE20](v9);
  v39 = &v35 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFE38, &qword_23AA15D38);
  v37 = *(v12 - 8);
  v38 = v12;
  v13 = *(v37 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFE40, &qword_23AA15D40);
  v36 = *(v16 - 8);
  v17 = *(v36 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v35 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFE48, &qword_23AA15D48);
  v48 = *(v20 - 8);
  v49 = v20;
  v21 = *(v48 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v35 - v22;
  v24 = *v1;
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A978A14();
  sub_23AA0DD84();
  if (v24 > 3)
  {
    if (v24 == 4)
    {
      v52 = 2;
      sub_23A978B10();
      v27 = v39;
      v26 = v49;
      sub_23AA0DB24();
      v29 = v40;
      v28 = v41;
    }

    else
    {
      if (v24 != 5)
      {
        goto LABEL_8;
      }

      v54 = 4;
      sub_23A978A68();
      v27 = v43;
      v26 = v49;
      sub_23AA0DB24();
      v29 = v46;
      v28 = v47;
    }

    (*(v29 + 8))(v27, v28);
    return (*(v48 + 8))(v23, v26);
  }

  if (v24 == 2)
  {
    v50 = 0;
    sub_23A978BB8();
    v34 = v49;
    sub_23AA0DB24();
    (*(v36 + 8))(v19, v16);
    return (*(v48 + 8))(v23, v34);
  }

  if (v24 != 3)
  {
LABEL_8:
    v53 = 3;
    sub_23A978ABC();
    v30 = v42;
    v31 = v49;
    sub_23AA0DB24();
    v32 = v45;
    sub_23AA0DB44();
    (*(v44 + 8))(v30, v32);
    return (*(v48 + 8))(v23, v31);
  }

  v51 = 1;
  sub_23A978B64();
  v26 = v49;
  sub_23AA0DB24();
  (*(v37 + 8))(v15, v38);
  return (*(v48 + 8))(v23, v26);
}

uint64_t CapturedRoom.Surface.Category.hash(into:)()
{
  v1 = *v0;
  if (v1 > 3)
  {
    if (v1 == 4)
    {
      v2 = 2;
      return MEMORY[0x23EE907C0](v2);
    }

    if (v1 == 5)
    {
      v2 = 4;
      return MEMORY[0x23EE907C0](v2);
    }

LABEL_8:
    MEMORY[0x23EE907C0](3);
    return sub_23AA0DD34();
  }

  if (v1 == 2)
  {
    v2 = 0;
    return MEMORY[0x23EE907C0](v2);
  }

  if (v1 != 3)
  {
    goto LABEL_8;
  }

  v2 = 1;
  return MEMORY[0x23EE907C0](v2);
}

uint64_t CapturedRoom.Surface.Category.hashValue.getter()
{
  v1 = *v0;
  sub_23AA0DD14();
  if (v1 > 3)
  {
    if (v1 == 4)
    {
      v2 = 2;
      goto LABEL_11;
    }

    if (v1 == 5)
    {
      v2 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (v1 == 2)
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 1;
LABEL_11:
      MEMORY[0x23EE907C0](v2);
      return sub_23AA0DD54();
    }
  }

  MEMORY[0x23EE907C0](3);
  sub_23AA0DD34();
  return sub_23AA0DD54();
}

uint64_t CapturedRoom.Surface.Category.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFE80, &qword_23AA15D50);
  v62 = *(v3 - 8);
  v63 = v3;
  v4 = *(v62 + 64);
  MEMORY[0x28223BE20](v3);
  v65 = &v54 - v5;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFE88, &qword_23AA15D58);
  v64 = *(v60 - 8);
  v6 = *(v64 + 64);
  MEMORY[0x28223BE20](v60);
  v67 = &v54 - v7;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFE90, &qword_23AA15D60);
  v61 = *(v59 - 8);
  v8 = *(v61 + 64);
  MEMORY[0x28223BE20](v59);
  v66 = &v54 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFE98, &qword_23AA15D68);
  v11 = *(v10 - 8);
  v57 = v10;
  v58 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v54 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFEA0, &qword_23AA15D70);
  v56 = *(v15 - 8);
  v16 = *(v56 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v54 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFEA8, &unk_23AA15D78);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v54 - v22;
  v24 = a1[3];
  v25 = a1[4];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_23A978A14();
  v26 = v70;
  sub_23AA0DD74();
  if (v26)
  {
    goto LABEL_9;
  }

  v27 = v18;
  v55 = v15;
  v28 = v66;
  v29 = v67;
  v70 = v20;
  v30 = v68;
  v31 = sub_23AA0DB14();
  v32 = (2 * *(v31 + 16)) | 1;
  v71 = v31;
  v72 = v31 + 32;
  v73 = 0;
  v74 = v32;
  v33 = sub_23A935814();
  if (v33 == 5 || v73 != v74 >> 1)
  {
    v38 = sub_23AA0D904();
    swift_allocError();
    v40 = v39;
    v41 = v23;
    v42 = v19;
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF3A8, &qword_23AA132C0) + 48);
    *v40 = &type metadata for CapturedRoom.Surface.Category;
    sub_23AA0DA84();
    sub_23AA0D8E4();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D84160], v38);
    swift_willThrow();
    (*(v70 + 8))(v41, v42);
    swift_unknownObjectRelease();
LABEL_9:
    v53 = v69;
    return __swift_destroy_boxed_opaque_existential_1(v53);
  }

  if (v33 <= 1u)
  {
    if (v33)
    {
      v75 = 1;
      sub_23A978B64();
      sub_23AA0DA74();
      v50 = v70;
      (*(v58 + 8))(v14, v57);
      (*(v50 + 8))(v23, v19);
      swift_unknownObjectRelease();
      v52 = 3;
    }

    else
    {
      v75 = 0;
      sub_23A978BB8();
      v45 = v27;
      sub_23AA0DA74();
      v46 = v70;
      (*(v56 + 8))(v45, v55);
      (*(v46 + 8))(v23, v19);
      swift_unknownObjectRelease();
      v52 = 2;
    }

    v53 = v69;
  }

  else if (v33 == 2)
  {
    v75 = 2;
    sub_23A978B10();
    sub_23AA0DA74();
    (*(v61 + 8))(v28, v59);
    (*(v70 + 8))(v23, v19);
    swift_unknownObjectRelease();
    v52 = 4;
    v53 = v69;
  }

  else if (v33 == 3)
  {
    v75 = 3;
    sub_23A978ABC();
    v34 = v29;
    sub_23AA0DA74();
    v35 = v70;
    v36 = v30;
    v37 = v60;
    v51 = sub_23AA0DAB4();
    (*(v64 + 8))(v34, v37);
    (*(v35 + 8))(v23, v19);
    swift_unknownObjectRelease();
    v52 = v51 & 1;
    v53 = v69;
    v30 = v36;
  }

  else
  {
    v47 = v30;
    v75 = 4;
    sub_23A978A68();
    v48 = v65;
    sub_23AA0DA74();
    v49 = v70;
    (*(v62 + 8))(v48, v63);
    (*(v49 + 8))(v23, v19);
    swift_unknownObjectRelease();
    v52 = 5;
    v53 = v69;
    v30 = v47;
  }

  *v30 = v52;
  return __swift_destroy_boxed_opaque_existential_1(v53);
}

BOOL sub_23A96F4A8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 > 3)
  {
    if (v2 != 4)
    {
      if (v2 == 5)
      {
        return v3 == 5;
      }

LABEL_10:
      if ((v3 - 2) >= 4u)
      {
        return (v3 ^ v2 ^ 1) & 1;
      }

      return 0;
    }

    if (v3 == 4)
    {
      return 1;
    }
  }

  else
  {
    if (v2 != 2)
    {
      if (v2 == 3)
      {
        return v3 == 3;
      }

      goto LABEL_10;
    }

    if (v3 == 2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_23A96F538()
{
  v1 = *v0;
  if (v1 > 3)
  {
    if (v1 == 4)
    {
      v2 = 2;
      return MEMORY[0x23EE907C0](v2);
    }

    if (v1 == 5)
    {
      v2 = 4;
      return MEMORY[0x23EE907C0](v2);
    }

LABEL_8:
    MEMORY[0x23EE907C0](3);
    return sub_23AA0DD34();
  }

  if (v1 == 2)
  {
    v2 = 0;
    return MEMORY[0x23EE907C0](v2);
  }

  if (v1 != 3)
  {
    goto LABEL_8;
  }

  v2 = 1;
  return MEMORY[0x23EE907C0](v2);
}

uint64_t sub_23A96F5BC()
{
  v1 = *v0;
  sub_23AA0DD14();
  if (v1 > 3)
  {
    if (v1 == 4)
    {
      v2 = 2;
      goto LABEL_11;
    }

    if (v1 == 5)
    {
      v2 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (v1 == 2)
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 1;
LABEL_11:
      MEMORY[0x23EE907C0](v2);
      return sub_23AA0DD54();
    }
  }

  MEMORY[0x23EE907C0](3);
  sub_23AA0DD34();
  return sub_23AA0DD54();
}

uint64_t CapturedRoom.Surface.Curve.startAngle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CapturedRoom.Surface.Curve(0) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0A20, &unk_23AA122D0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CapturedRoom.Surface.Curve.endAngle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CapturedRoom.Surface.Curve(0) + 28);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0A20, &unk_23AA122D0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_23A96F788()
{
  v1 = 0x7265746E6563;
  v2 = 0x676E417472617473;
  if (*v0 != 2)
  {
    v2 = 0x656C676E41646E65;
  }

  if (*v0)
  {
    v1 = 0x737569646172;
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

uint64_t sub_23A96F800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23A97DC64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23A96F828(uint64_t a1)
{
  v2 = sub_23A978C0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A96F864(uint64_t a1)
{
  v2 = sub_23A978C0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CapturedRoom.Surface.Curve.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFEB0, &qword_23AA15D88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A978C0C();
  sub_23AA0DD84();
  v20 = *v3;
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14C0, &qword_23AA15D90);
  sub_23A97E420(&qword_27DFAFEC0, &unk_27DFB14C0, &qword_23AA15D90);
  sub_23AA0DB74();
  if (!v2)
  {
    v12 = *(v3 + 2);
    v18 = 1;
    sub_23AA0DB54();
    v15 = type metadata accessor for CapturedRoom.Surface.Curve(0);
    v13 = *(v15 + 24);
    v17 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0A20, &unk_23AA122D0);
    sub_23A97E420(&qword_27DFAFEC8, &unk_27DFB0A20, &unk_23AA122D0);
    sub_23AA0DB74();
    v14 = *(v15 + 28);
    v16 = 3;
    sub_23AA0DB74();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t CapturedRoom.Surface.Curve.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0A20, &unk_23AA122D0);
  v40 = *(v3 - 8);
  v4 = *(v40 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFED0, &qword_23AA15D98);
  v11 = *(v10 - 8);
  v41 = v10;
  v42 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v36 - v13;
  v15 = type metadata accessor for CapturedRoom.Surface.Curve(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[3];
  v19 = a1[4];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_23A978C0C();
  v43 = v14;
  v21 = v44;
  sub_23AA0DD74();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(v45);
  }

  v44 = v9;
  v37 = v6;
  v38 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14C0, &qword_23AA15D90);
  v49 = 0;
  sub_23A97E420(&qword_27DFAFED8, &unk_27DFB14C0, &qword_23AA15D90);
  v22 = v41;
  sub_23AA0DAF4();
  v23 = v38;
  *v38 = v50;
  v48 = 1;
  sub_23AA0DAD4();
  v24 = v42;
  *(v23 + 2) = v25;
  v47 = 2;
  v26 = sub_23A97E420(&qword_27DFAFEE0, &unk_27DFB0A20, &unk_23AA122D0);
  v27 = v44;
  v28 = v3;
  v36[1] = v26;
  sub_23AA0DAF4();
  v29 = *(v40 + 32);
  v36[0] = *(v15 + 24);
  v44 = v29;
  v29(v23 + v36[0], v27, v3);
  v46 = 3;
  v30 = v22;
  v31 = v24;
  v32 = v37;
  v33 = v43;
  sub_23AA0DAF4();
  (*(v31 + 8))(v33, v30);
  v34 = v38;
  v44(v38 + *(v15 + 28), v32, v28);
  sub_23A969D58(v34, v39, type metadata accessor for CapturedRoom.Surface.Curve);
  __swift_destroy_boxed_opaque_existential_1(v45);
  return sub_23A969DC0(v34, type metadata accessor for CapturedRoom.Surface.Curve);
}

uint64_t sub_23A97001C(uint64_t a1)
{
  v2 = sub_23A978D08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A970058(uint64_t a1)
{
  v2 = sub_23A978D08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A970094()
{
  v1 = 7368564;
  v2 = 0x6D6F74746F62;
  if (*v0 != 2)
  {
    v2 = 1952867692;
  }

  if (*v0)
  {
    v1 = 0x7468676972;
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

uint64_t sub_23A9700F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23A97DDC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23A97012C(uint64_t a1)
{
  v2 = sub_23A978C60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A970168(uint64_t a1)
{
  v2 = sub_23A978C60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A9701A4(uint64_t a1)
{
  v2 = sub_23A978CB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A9701E0(uint64_t a1)
{
  v2 = sub_23A978CB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A97021C(uint64_t a1)
{
  v2 = sub_23A978D5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A970258(uint64_t a1)
{
  v2 = sub_23A978D5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A970294(uint64_t a1)
{
  v2 = sub_23A978DB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A9702D0(uint64_t a1)
{
  v2 = sub_23A978DB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CapturedRoom.Surface.Edge.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFEE8, &qword_23AA15DA0);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v3);
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFEF0, &qword_23AA15DA8);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFEF8, &qword_23AA15DB0);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](v9);
  v30 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFF00, &qword_23AA15DB8);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFF08, &qword_23AA15DC0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A978C60();
  sub_23AA0DD84();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      sub_23A978D08();
      v24 = v33;
      sub_23AA0DB24();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      sub_23A978CB4();
      v24 = v36;
      sub_23AA0DB24();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    sub_23A978D5C();
    v24 = v30;
    sub_23AA0DB24();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  sub_23A978DB0();
  sub_23AA0DB24();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

uint64_t CapturedRoom.Surface.Edge.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFF38, &qword_23AA15DC8);
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v48);
  v51 = &v41 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFF40, &qword_23AA15DD0);
  v45 = *(v49 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v49);
  v50 = &v41 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFF48, &qword_23AA15DD8);
  v43 = *(v47 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v47);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFF50, &qword_23AA15DE0);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFF58, &qword_23AA15DE8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_23A978C60();
  v21 = v53;
  sub_23AA0DD74();
  if (!v21)
  {
    v22 = v13;
    v41 = v10;
    v42 = 0;
    v23 = v9;
    v24 = v50;
    v25 = v51;
    v53 = v15;
    v26 = v52;
    v27 = v18;
    v28 = sub_23AA0DB14();
    v29 = (2 * *(v28 + 16)) | 1;
    v55 = v28;
    v56 = v28 + 32;
    v57 = 0;
    v58 = v29;
    v30 = sub_23A935848();
    if (v30 == 4 || v57 != v58 >> 1)
    {
      v32 = sub_23AA0D904();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF3A8, &qword_23AA132C0) + 48);
      *v34 = &type metadata for CapturedRoom.Surface.Edge;
      sub_23AA0DA84();
      sub_23AA0D8E4();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
      swift_willThrow();
LABEL_9:
      (*(v53 + 8))(v18, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v54);
    }

    v59 = v30;
    if (v30 <= 1u)
    {
      if (v30)
      {
        v60 = 1;
        sub_23A978D5C();
        v39 = v42;
        sub_23AA0DA74();
        if (!v39)
        {
          (*(v43 + 8))(v23, v47);
          goto LABEL_17;
        }
      }

      else
      {
        v60 = 0;
        sub_23A978DB0();
        v31 = v42;
        sub_23AA0DA74();
        if (!v31)
        {
          (*(v44 + 8))(v22, v41);
LABEL_17:
          (*(v53 + 8))(v18, v14);
LABEL_22:
          swift_unknownObjectRelease();
          *v26 = v59;
          return __swift_destroy_boxed_opaque_existential_1(v54);
        }
      }

      goto LABEL_9;
    }

    v37 = v53;
    if (v30 == 2)
    {
      v60 = 2;
      sub_23A978D08();
      v38 = v42;
      sub_23AA0DA74();
      if (!v38)
      {
        (*(v45 + 8))(v24, v49);
LABEL_21:
        (*(v37 + 8))(v27, v14);
        goto LABEL_22;
      }
    }

    else
    {
      v60 = 3;
      sub_23A978CB4();
      v40 = v42;
      sub_23AA0DA74();
      if (!v40)
      {
        (*(v46 + 8))(v25, v48);
        goto LABEL_21;
      }
    }

    (*(v37 + 8))(v27, v14);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v54);
}

__n128 CapturedRoom.Object.transform.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 48);
  v3 = *(v0 + 64);
  v4 = *(v0 + 80);
  return result;
}

uint64_t CapturedRoom.Object.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CapturedRoom.Object(0) + 32);
  v4 = sub_23AA0C0E4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CapturedRoom.Object.attributes.getter()
{
  v1 = *(v0 + *(type metadata accessor for CapturedRoom.Object(0) + 36));
}

uint64_t sub_23A970F80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23A97D82C();
  *a2 = result;
  return result;
}

unint64_t sub_23A970FB0@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x79726F6765746163;
  v5 = 0xEA00000000007365;
  v6 = 0x7475626972747461;
  if (v2 != 6)
  {
    v6 = 0x79726F7473;
    v5 = 0xE500000000000000;
  }

  v7 = 0xEA00000000007265;
  v8 = 0x696669746E656469;
  result = 0xD000000000000010;
  if (v2 != 4)
  {
    v8 = 0xD000000000000010;
    v7 = 0x800000023AA1CCE0;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v10 = 0xEA0000000000736ELL;
  v11 = 0x6F69736E656D6964;
  if (v2 != 2)
  {
    v11 = 0x726F66736E617274;
    v10 = 0xE90000000000006DLL;
  }

  if (*v1)
  {
    v4 = 0x6E656469666E6F63;
    v3 = 0xEA00000000006563;
  }

  if (*v1 > 1u)
  {
    v4 = v11;
    v3 = v10;
  }

  v14 = __OFSUB__(v2, 3);
  v12 = v2 == 3;
  v13 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v15 = v4;
  }

  else
  {
    v15 = v6;
  }

  if (!(v13 ^ v14 | v12))
  {
    v3 = v5;
  }

  *a1 = v15;
  a1[1] = v3;
  return result;
}

uint64_t sub_23A9710C0()
{
  v1 = *v0;
  v2 = 0x79726F6765746163;
  v3 = 0x7475626972747461;
  if (v1 != 6)
  {
    v3 = 0x79726F7473;
  }

  v4 = 0x696669746E656469;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6F69736E656D6964;
  if (v1 != 2)
  {
    v5 = 0x726F66736E617274;
  }

  if (*v0)
  {
    v2 = 0x6E656469666E6F63;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23A9711CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23A97D82C();
  *a1 = result;
  return result;
}

uint64_t sub_23A971200(uint64_t a1)
{
  v2 = sub_23A978E04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A97123C(uint64_t a1)
{
  v2 = sub_23A978E04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CapturedRoom.Object.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v66 = sub_23AA0D904();
  v62 = *(v66 - 8);
  v3 = *(v62 + 64);
  MEMORY[0x28223BE20](v66);
  v60 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v61 = &v51 - v6;
  MEMORY[0x28223BE20](v7);
  v63 = &v51 - v8;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  v9 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v59 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v64 = &v51 - v12;
  v13 = sub_23AA0C0E4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v67 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFF60, &qword_23AA15DF0);
  v69 = *(v17 - 8);
  v18 = *(v69 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v51 - v19;
  v21 = type metadata accessor for CapturedRoom.Object(0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v26 = *(v25 + 44);
  v68 = v14;
  v29 = *(v14 + 56);
  v27 = v14 + 56;
  v28 = v29;
  v71 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v26;
  v29(&v71[v26], 1, 1, v13, v23);
  v31 = a1[3];
  v30 = a1[4];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  sub_23A978E04();
  v32 = v70;
  sub_23AA0DD74();
  if (v32)
  {
    v34 = v71;
    __swift_destroy_boxed_opaque_existential_1(v73);
    return sub_23A8D50D0(&v34[v72], &unk_27DFB0970, &qword_23AA14E00);
  }

  else
  {
    v56 = v28;
    v57 = v27;
    v70 = v21;
    v33 = v68;
    v75 = 0;
    sub_23A93A600();
    sub_23AA0DAF4();
    v35 = v71;
    *v71 = v74;
    v75 = 1;
    sub_23A9784E4();
    sub_23AA0DAF4();
    *(v35 + 1) = v74;
    v55 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0940, &qword_23AA15CF0);
    v75 = 2;
    sub_23A97E420(&qword_27DFAFD70, &qword_27DFB0940, &qword_23AA15CF0);
    sub_23AA0DAF4();
    *(v35 + 16) = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0900, &qword_23AA15C70);
    v75 = 3;
    sub_23A9781B8(&qword_27DFAFCA0);
    sub_23AA0DAF4();
    sub_23A969E20(v74);
    v54 = v36;
    v53 = v37;
    v52 = v38;
    v51 = v39;

    v40 = v53;
    *(v35 + 32) = v54;
    *(v35 + 48) = v40;
    v41 = v51;
    *(v35 + 64) = v52;
    *(v35 + 80) = v41;
    LOBYTE(v74) = 4;
    sub_23A969670(&qword_27DFAFDC0, MEMORY[0x277CC95F0]);
    v42 = v67;
    sub_23AA0DAF4();
    v43 = v70;
    (*(v33 + 32))(v35 + v70[8], v42, v13);
    LOBYTE(v74) = 5;
    sub_23A9786B8();
    v44 = v64;
    v67 = v20;
    sub_23AA0DAF4();
    sub_23A8D5068(v44, v35 + v72, &unk_27DFB0970, &qword_23AA14E00);
    v45 = (v35 + v43[13]);
    *v45 = 0;
    v45[1] = 0;
    *(v35 + v43[12]) = 255;
    v75 = 6;
    sub_23A978E58();
    sub_23AA0DAF4();
    *(v35 + v43[9]) = v74;
    v46 = v43[10];
    LOBYTE(v74) = 7;
    v47 = v55;
    v48 = v67;
    v49 = sub_23AA0DAE4();
    (*(v69 + 8))(v48, v47);
    *(v35 + v46) = v49;
    sub_23A969D58(v35, v58, type metadata accessor for CapturedRoom.Object);
    __swift_destroy_boxed_opaque_existential_1(v73);
    return sub_23A969DC0(v35, type metadata accessor for CapturedRoom.Object);
  }
}

uint64_t CapturedRoom.Object.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFF78, &qword_23AA15DF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A978E04();
  sub_23AA0DD84();
  LOBYTE(v16) = *v3;
  v17 = 0;
  sub_23A93A504();
  sub_23AA0DB74();
  if (!v2)
  {
    LOBYTE(v16) = *(v3 + 1);
    v17 = 1;
    sub_23A978804();
    sub_23AA0DB74();
    v16 = *(v3 + 16);
    v17 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0940, &qword_23AA15CF0);
    sub_23A97E420(&qword_27DFAFD88, &qword_27DFB0940, &qword_23AA15CF0);
    sub_23AA0DB74();
    *&v16 = sub_23A96AC78(*(v3 + 32), *(v3 + 48), *(v3 + 64), *(v3 + 80));
    v17 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0900, &qword_23AA15C70);
    sub_23A9781B8(&qword_27DFAFCE8);
    sub_23AA0DB74();

    v12 = type metadata accessor for CapturedRoom.Object(0);
    v13 = v12[8];
    LOBYTE(v16) = 4;
    sub_23AA0C0E4();
    sub_23A969670(&qword_27DFAF240, MEMORY[0x277CC95F0]);
    sub_23AA0DB74();
    v14 = v12[11];
    LOBYTE(v16) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
    sub_23A978960();
    sub_23AA0DB74();
    *&v16 = *(v3 + v12[9]);
    v17 = 6;
    sub_23A978EAC();
    sub_23AA0DB74();
    v15 = *(v3 + v12[10]);
    LOBYTE(v16) = 7;
    sub_23AA0DB64();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_23A97234C(char a1)
{
  result = 0x656761726F7473;
  switch(a1)
  {
    case 1:
      result = 0x7265676972666572;
      break;
    case 2:
      result = 0x65766F7473;
      break;
    case 3:
      result = 6579554;
      break;
    case 4:
      result = 1802398067;
      break;
    case 5:
      result = 0x7244726568736177;
      break;
    case 6:
      result = 0x74656C696F74;
      break;
    case 7:
      result = 0x62757468746162;
      break;
    case 8:
      result = 1852143215;
      break;
    case 9:
      result = 0x6873617768736964;
      break;
    case 10:
      result = 0x656C626174;
      break;
    case 11:
      result = 1634103155;
      break;
    case 12:
      result = 0x7269616863;
      break;
    case 13:
      result = 0x63616C7065726966;
      break;
    case 14:
      result = 0x69736976656C6574;
      break;
    case 15:
      result = 0x737269617473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23A972518(uint64_t a1)
{
  v2 = sub_23A9791F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A972554(uint64_t a1)
{
  v2 = sub_23A9791F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A972590(uint64_t a1)
{
  v2 = sub_23A979344();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A9725CC(uint64_t a1)
{
  v2 = sub_23A979344();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A972608(uint64_t a1)
{
  v2 = sub_23A979050();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A972644(uint64_t a1)
{
  v2 = sub_23A979050();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A972688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23A97DF24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23A9726BC(uint64_t a1)
{
  v2 = sub_23A978F00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A9726F8(uint64_t a1)
{
  v2 = sub_23A978F00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A972734(uint64_t a1)
{
  v2 = sub_23A97914C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A972770(uint64_t a1)
{
  v2 = sub_23A97914C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A9727AC(uint64_t a1)
{
  v2 = sub_23A978FFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A9727E8(uint64_t a1)
{
  v2 = sub_23A978FFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A972824(uint64_t a1)
{
  v2 = sub_23A9791A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A972860(uint64_t a1)
{
  v2 = sub_23A9791A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A97289C(uint64_t a1)
{
  v2 = sub_23A9793EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A9728D8(uint64_t a1)
{
  v2 = sub_23A9793EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A972914(uint64_t a1)
{
  v2 = sub_23A9792F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A972950(uint64_t a1)
{
  v2 = sub_23A9792F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A97298C(uint64_t a1)
{
  v2 = sub_23A9790A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A9729C8(uint64_t a1)
{
  v2 = sub_23A9790A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A972A04(uint64_t a1)
{
  v2 = sub_23A978F54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A972A40(uint64_t a1)
{
  v2 = sub_23A978F54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A972A7C(uint64_t a1)
{
  v2 = sub_23A979440();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A972AB8(uint64_t a1)
{
  v2 = sub_23A979440();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A972AF4(uint64_t a1)
{
  v2 = sub_23A979398();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A972B30(uint64_t a1)
{
  v2 = sub_23A979398();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A972B6C(uint64_t a1)
{
  v2 = sub_23A9790F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A972BA8(uint64_t a1)
{
  v2 = sub_23A9790F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A972BE4(uint64_t a1)
{
  v2 = sub_23A978FA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A972C20(uint64_t a1)
{
  v2 = sub_23A978FA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A972C5C(uint64_t a1)
{
  v2 = sub_23A979248();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A972C98(uint64_t a1)
{
  v2 = sub_23A979248();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A972CD4(uint64_t a1)
{
  v2 = sub_23A97929C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A972D10(uint64_t a1)
{
  v2 = sub_23A97929C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CapturedRoom.Object.Category.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFF88, &qword_23AA15E00);
  v112 = *(v4 - 8);
  v113 = v4;
  v5 = *(v112 + 64);
  MEMORY[0x28223BE20](v4);
  v111 = &v68 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFF90, &qword_23AA15E08);
  v109 = *(v7 - 8);
  v110 = v7;
  v8 = *(v109 + 64);
  MEMORY[0x28223BE20](v7);
  v108 = &v68 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFF98, &qword_23AA15E10);
  v106 = *(v10 - 8);
  v107 = v10;
  v11 = *(v106 + 64);
  MEMORY[0x28223BE20](v10);
  v105 = &v68 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFFA0, &qword_23AA15E18);
  v103 = *(v13 - 8);
  v104 = v13;
  v14 = *(v103 + 64);
  MEMORY[0x28223BE20](v13);
  v102 = &v68 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFFA8, &qword_23AA15E20);
  v100 = *(v16 - 8);
  v101 = v16;
  v17 = *(v100 + 64);
  MEMORY[0x28223BE20](v16);
  v99 = &v68 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFFB0, &qword_23AA15E28);
  v97 = *(v19 - 8);
  v98 = v19;
  v20 = *(v97 + 64);
  MEMORY[0x28223BE20](v19);
  v96 = &v68 - v21;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFFB8, &qword_23AA15E30);
  v94 = *(v95 - 8);
  v22 = *(v94 + 64);
  MEMORY[0x28223BE20](v95);
  v93 = &v68 - v23;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFFC0, &qword_23AA15E38);
  v91 = *(v92 - 8);
  v24 = *(v91 + 64);
  MEMORY[0x28223BE20](v92);
  v90 = &v68 - v25;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFFC8, &qword_23AA15E40);
  v88 = *(v89 - 8);
  v26 = *(v88 + 64);
  MEMORY[0x28223BE20](v89);
  v87 = &v68 - v27;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFFD0, &qword_23AA15E48);
  v85 = *(v86 - 8);
  v28 = *(v85 + 64);
  MEMORY[0x28223BE20](v86);
  v84 = &v68 - v29;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFFD8, &qword_23AA15E50);
  v82 = *(v83 - 8);
  v30 = *(v82 + 64);
  MEMORY[0x28223BE20](v83);
  v81 = &v68 - v31;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFFE0, &qword_23AA15E58);
  v79 = *(v80 - 8);
  v32 = *(v79 + 64);
  MEMORY[0x28223BE20](v80);
  v78 = &v68 - v33;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFFE8, &qword_23AA15E60);
  v76 = *(v77 - 8);
  v34 = *(v76 + 64);
  MEMORY[0x28223BE20](v77);
  v75 = &v68 - v35;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFFF0, &qword_23AA15E68);
  v73 = *(v74 - 8);
  v36 = *(v73 + 64);
  MEMORY[0x28223BE20](v74);
  v72 = &v68 - v37;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFFF8, &qword_23AA15E70);
  v70 = *(v71 - 8);
  v38 = *(v70 + 64);
  MEMORY[0x28223BE20](v71);
  v40 = &v68 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0000, &qword_23AA15E78);
  v69 = *(v41 - 8);
  v42 = *(v69 + 64);
  MEMORY[0x28223BE20](v41);
  v44 = &v68 - v43;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0008, &qword_23AA15E80);
  v45 = *(v115 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v115);
  v48 = &v68 - v47;
  v49 = *v2;
  v50 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A978F00();
  v114 = v48;
  sub_23AA0DD84();
  switch(v49)
  {
    case 1:
      v117 = 1;
      sub_23A9793EC();
      v51 = v114;
      v52 = v115;
      sub_23AA0DB24();
      v57 = *(v70 + 8);
      v58 = v40;
      v59 = &v103;
      goto LABEL_19;
    case 2:
      v117 = 2;
      sub_23A979398();
      v61 = v72;
      v51 = v114;
      v52 = v115;
      sub_23AA0DB24();
      v57 = *(v73 + 8);
      v58 = v61;
      v59 = &v106;
      goto LABEL_19;
    case 3:
      v117 = 3;
      sub_23A979344();
      v62 = v75;
      v51 = v114;
      v52 = v115;
      sub_23AA0DB24();
      v57 = *(v76 + 8);
      v58 = v62;
      v59 = &v109;
      goto LABEL_19;
    case 4:
      v117 = 4;
      sub_23A9792F0();
      v56 = v78;
      v51 = v114;
      v52 = v115;
      sub_23AA0DB24();
      v57 = *(v79 + 8);
      v58 = v56;
      v59 = &v112;
      goto LABEL_19;
    case 5:
      v117 = 5;
      sub_23A97929C();
      v64 = v81;
      v51 = v114;
      v52 = v115;
      sub_23AA0DB24();
      v57 = *(v82 + 8);
      v58 = v64;
      v59 = &v115;
      goto LABEL_19;
    case 6:
      v117 = 6;
      sub_23A979248();
      v65 = v84;
      v51 = v114;
      v52 = v115;
      sub_23AA0DB24();
      v57 = *(v85 + 8);
      v58 = v65;
      v59 = &v116;
      goto LABEL_19;
    case 7:
      v117 = 7;
      sub_23A9791F4();
      v63 = v87;
      v51 = v114;
      v52 = v115;
      sub_23AA0DB24();
      v57 = *(v88 + 8);
      v58 = v63;
      v59 = &v118;
      goto LABEL_19;
    case 8:
      v117 = 8;
      sub_23A9791A0();
      v66 = v90;
      v51 = v114;
      v52 = v115;
      sub_23AA0DB24();
      v57 = *(v91 + 8);
      v58 = v66;
      v59 = &v119;
      goto LABEL_19;
    case 9:
      v117 = 9;
      sub_23A97914C();
      v60 = v93;
      v51 = v114;
      v52 = v115;
      sub_23AA0DB24();
      v57 = *(v94 + 8);
      v58 = v60;
      v59 = &v120;
LABEL_19:
      v57(v58, *(v59 - 32));
      return (*(v45 + 8))(v51, v52);
    case 10:
      v117 = 10;
      sub_23A9790F8();
      v53 = v96;
      v51 = v114;
      v52 = v115;
      sub_23AA0DB24();
      v55 = v97;
      v54 = v98;
      goto LABEL_17;
    case 11:
      v117 = 11;
      sub_23A9790A4();
      v53 = v99;
      v51 = v114;
      v52 = v115;
      sub_23AA0DB24();
      v55 = v100;
      v54 = v101;
      goto LABEL_17;
    case 12:
      v117 = 12;
      sub_23A979050();
      v53 = v102;
      v51 = v114;
      v52 = v115;
      sub_23AA0DB24();
      v55 = v103;
      v54 = v104;
      goto LABEL_17;
    case 13:
      v117 = 13;
      sub_23A978FFC();
      v53 = v105;
      v51 = v114;
      v52 = v115;
      sub_23AA0DB24();
      v55 = v106;
      v54 = v107;
      goto LABEL_17;
    case 14:
      v117 = 14;
      sub_23A978FA8();
      v53 = v108;
      v51 = v114;
      v52 = v115;
      sub_23AA0DB24();
      v55 = v109;
      v54 = v110;
      goto LABEL_17;
    case 15:
      v117 = 15;
      sub_23A978F54();
      v53 = v111;
      v51 = v114;
      v52 = v115;
      sub_23AA0DB24();
      v55 = v112;
      v54 = v113;
LABEL_17:
      (*(v55 + 8))(v53, v54);
      break;
    default:
      v117 = 0;
      sub_23A979440();
      v51 = v114;
      v52 = v115;
      sub_23AA0DB24();
      (*(v69 + 8))(v44, v41);
      break;
  }

  return (*(v45 + 8))(v51, v52);
}

uint64_t CapturedRoom.Object.Category.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v146 = a2;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0098, &qword_23AA15E88);
  v130 = *(v145 - 8);
  v3 = *(v130 + 64);
  MEMORY[0x28223BE20](v145);
  v141 = v97 - v4;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB00A0, &qword_23AA15E90);
  v128 = *(v129 - 8);
  v5 = *(v128 + 64);
  MEMORY[0x28223BE20](v129);
  v140 = v97 - v6;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB00A8, &qword_23AA15E98);
  v126 = *(v127 - 8);
  v7 = *(v126 + 64);
  MEMORY[0x28223BE20](v127);
  v139 = v97 - v8;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB00B0, &qword_23AA15EA0);
  v124 = *(v125 - 8);
  v9 = *(v124 + 64);
  MEMORY[0x28223BE20](v125);
  v138 = v97 - v10;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB00B8, &qword_23AA15EA8);
  v122 = *(v123 - 8);
  v11 = *(v122 + 64);
  MEMORY[0x28223BE20](v123);
  v137 = v97 - v12;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB00C0, &qword_23AA15EB0);
  v120 = *(v121 - 8);
  v13 = *(v120 + 64);
  MEMORY[0x28223BE20](v121);
  v136 = v97 - v14;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB00C8, &qword_23AA15EB8);
  v118 = *(v119 - 8);
  v15 = *(v118 + 64);
  MEMORY[0x28223BE20](v119);
  v135 = v97 - v16;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB00D0, &qword_23AA15EC0);
  v116 = *(v117 - 8);
  v17 = *(v116 + 64);
  MEMORY[0x28223BE20](v117);
  v134 = v97 - v18;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB00D8, &qword_23AA15EC8);
  v114 = *(v115 - 8);
  v19 = *(v114 + 64);
  MEMORY[0x28223BE20](v115);
  v144 = v97 - v20;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB00E0, &qword_23AA15ED0);
  v112 = *(v113 - 8);
  v21 = *(v112 + 64);
  MEMORY[0x28223BE20](v113);
  v143 = v97 - v22;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB00E8, &qword_23AA15ED8);
  v110 = *(v111 - 8);
  v23 = *(v110 + 64);
  MEMORY[0x28223BE20](v111);
  v142 = v97 - v24;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB00F0, &qword_23AA15EE0);
  v108 = *(v109 - 8);
  v25 = *(v108 + 64);
  MEMORY[0x28223BE20](v109);
  v133 = v97 - v26;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB00F8, &qword_23AA15EE8);
  v106 = *(v107 - 8);
  v27 = *(v106 + 64);
  MEMORY[0x28223BE20](v107);
  v132 = v97 - v28;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0100, &qword_23AA15EF0);
  v104 = *(v105 - 8);
  v29 = *(v104 + 64);
  MEMORY[0x28223BE20](v105);
  v131 = v97 - v30;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0108, &qword_23AA15EF8);
  v102 = *(v103 - 8);
  v31 = *(v102 + 64);
  MEMORY[0x28223BE20](v103);
  v33 = v97 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0110, &qword_23AA15F00);
  v101 = *(v34 - 8);
  v35 = *(v101 + 64);
  MEMORY[0x28223BE20](v34);
  v37 = v97 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0118, &unk_23AA15F08);
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v42 = v97 - v41;
  v44 = a1[3];
  v43 = a1[4];
  v147 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v44);
  sub_23A978F00();
  v45 = v148;
  sub_23AA0DD74();
  v148 = v45;
  if (v45)
  {
LABEL_8:
    v67 = v147;
    return __swift_destroy_boxed_opaque_existential_1(v67);
  }

  v98 = v37;
  v97[1] = v34;
  v99 = v33;
  v46 = v142;
  v47 = v143;
  v49 = v144;
  v48 = v145;
  v100 = v39;
  v50 = v146;
  v51 = sub_23AA0DB14();
  v52 = (2 * *(v51 + 16)) | 1;
  v149[0] = v51;
  v149[1] = v51 + 32;
  v150 = 0;
  v151 = v52;
  v53 = sub_23A93587C();
  v54 = v42;
  if (v150 != v151 >> 1)
  {
LABEL_6:
    v61 = sub_23AA0D904();
    v62 = swift_allocError();
    v64 = v63;
    v65 = v38;
    v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF3A8, &qword_23AA132C0) + 48);
    *v64 = &type metadata for CapturedRoom.Object.Category;
    sub_23AA0DA84();
    sub_23AA0D8E4();
    (*(*(v61 - 8) + 104))(v64, *MEMORY[0x277D84160], v61);
    v148 = v62;
    swift_willThrow();
    (*(v100 + 8))(v54, v65);
LABEL_7:
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v55 = v53;
  switch(v53)
  {
    case 0:
      v154 = 0;
      sub_23A979440();
      v56 = v98;
      v57 = v148;
      sub_23AA0DA74();
      v148 = v57;
      if (v57)
      {
        goto LABEL_39;
      }

      v58 = *(v101 + 8);
      v59 = v56;
      v60 = &v129;
      goto LABEL_41;
    case 1:
      v154 = 1;
      sub_23A9793EC();
      v87 = v99;
      v88 = v148;
      sub_23AA0DA74();
      v148 = v88;
      if (v88)
      {
        goto LABEL_39;
      }

      v58 = *(v102 + 8);
      v59 = v87;
      v60 = &v135;
      goto LABEL_41;
    case 2:
      v154 = 2;
      sub_23A979398();
      v79 = v131;
      v80 = v148;
      sub_23AA0DA74();
      v148 = v80;
      if (v80)
      {
        goto LABEL_39;
      }

      v58 = *(v104 + 8);
      v59 = v79;
      v60 = &v137;
      goto LABEL_41;
    case 3:
      v154 = 3;
      sub_23A979344();
      v84 = v132;
      v85 = v148;
      sub_23AA0DA74();
      v148 = v85;
      if (v85)
      {
        goto LABEL_39;
      }

      v58 = *(v106 + 8);
      v59 = v84;
      v60 = &v139;
      goto LABEL_41;
    case 4:
      v154 = 4;
      sub_23A9792F0();
      v73 = v133;
      v74 = v148;
      sub_23AA0DA74();
      v148 = v74;
      if (v74)
      {
        goto LABEL_39;
      }

      v58 = *(v108 + 8);
      v59 = v73;
      v60 = &v141;
      goto LABEL_41;
    case 5:
      v154 = 5;
      sub_23A97929C();
      v89 = v148;
      sub_23AA0DA74();
      v148 = v89;
      if (v89)
      {
        goto LABEL_39;
      }

      v58 = *(v110 + 8);
      v59 = v46;
      v60 = &v143;
      goto LABEL_41;
    case 6:
      v154 = 6;
      sub_23A979248();
      v92 = v148;
      sub_23AA0DA74();
      v148 = v92;
      if (v92)
      {
        goto LABEL_39;
      }

      v58 = *(v112 + 8);
      v59 = v47;
      v60 = &v145;
      goto LABEL_41;
    case 7:
      v154 = 7;
      sub_23A9791F4();
      v86 = v148;
      sub_23AA0DA74();
      v148 = v86;
      if (v86)
      {
        goto LABEL_39;
      }

      v58 = *(v114 + 8);
      v59 = v49;
      v60 = &v147;
      goto LABEL_41;
    case 8:
      v154 = 8;
      sub_23A9791A0();
      v95 = v134;
      v96 = v148;
      sub_23AA0DA74();
      v148 = v96;
      if (v96)
      {
        goto LABEL_39;
      }

      v58 = *(v116 + 8);
      v59 = v95;
      v60 = v149;
      goto LABEL_41;
    case 9:
      v154 = 9;
      sub_23A97914C();
      v77 = v135;
      v78 = v148;
      sub_23AA0DA74();
      v148 = v78;
      if (v78)
      {
        goto LABEL_39;
      }

      v58 = *(v118 + 8);
      v59 = v77;
      v60 = &v150;
      goto LABEL_41;
    case 10:
      v154 = 10;
      sub_23A9790F8();
      v93 = v136;
      v94 = v148;
      sub_23AA0DA74();
      v148 = v94;
      if (v94)
      {
        goto LABEL_39;
      }

      v58 = *(v120 + 8);
      v59 = v93;
      v60 = &v152;
      goto LABEL_41;
    case 11:
      v154 = 11;
      sub_23A9790A4();
      v71 = v137;
      v72 = v148;
      sub_23AA0DA74();
      v148 = v72;
      if (v72)
      {
        goto LABEL_39;
      }

      v58 = *(v122 + 8);
      v59 = v71;
      v60 = &v153;
      goto LABEL_41;
    case 12:
      v154 = 12;
      sub_23A979050();
      v75 = v138;
      v76 = v148;
      sub_23AA0DA74();
      v148 = v76;
      if (v76)
      {
        goto LABEL_39;
      }

      v58 = *(v124 + 8);
      v59 = v75;
      v60 = &v155;
      goto LABEL_41;
    case 13:
      v154 = 13;
      sub_23A978FFC();
      v90 = v139;
      v91 = v148;
      sub_23AA0DA74();
      v148 = v91;
      if (v91)
      {
        goto LABEL_39;
      }

      v58 = *(v126 + 8);
      v59 = v90;
      v60 = &v156;
      goto LABEL_41;
    case 14:
      v154 = 14;
      sub_23A978FA8();
      v69 = v140;
      v70 = v148;
      sub_23AA0DA74();
      v148 = v70;
      if (v70)
      {
        goto LABEL_39;
      }

      v58 = *(v128 + 8);
      v59 = v69;
      v60 = &v157;
LABEL_41:
      v58(v59, *(v60 - 32));
      goto LABEL_42;
    case 15:
      v81 = v48;
      v154 = 15;
      sub_23A978F54();
      v82 = v141;
      v83 = v148;
      sub_23AA0DA74();
      v148 = v83;
      if (v83)
      {
LABEL_39:
        (*(v100 + 8))(v54, v38);
        goto LABEL_7;
      }

      (*(v130 + 8))(v82, v81);
LABEL_42:
      (*(v100 + 8))(v54, v38);
      swift_unknownObjectRelease();
      v67 = v147;
      *v50 = v55;
      break;
    default:
      goto LABEL_6;
  }

  return __swift_destroy_boxed_opaque_existential_1(v67);
}

uint64_t CapturedRoom.Object.attribute<A>(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = type metadata accessor for CapturedRoom.Object(0);
  v8 = *(v3 + *(result + 36));
  v9 = *(v8 + 16);
  if (!v9)
  {
    return (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
  }

  v10 = 0;
  v11 = v8 + 32;
  while (v10 < *(v8 + 16))
  {
    sub_23A8CA9D8(v11, &v13);
    __swift_project_boxed_opaque_existential_1(&v13, v14);
    if (swift_getDynamicType() == a1)
    {
      sub_23A8CAA3C(&v13, v15);
      sub_23A8CAA3C(v15, v16);
      sub_23A8CAA3C(v16, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF688, &qword_23AA14420);
      v12 = swift_dynamicCast();
      return (*(*(a2 - 8) + 56))(a3, v12 ^ 1u, 1, a2);
    }

    ++v10;
    result = __swift_destroy_boxed_opaque_existential_1(&v13);
    v11 += 40;
    if (v9 == v10)
    {
      return (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_23A974EE4(int a1)
{
  if (a1 == 255)
  {
    return 0xD000000000000015;
  }

  v1 = a1;
  if (!a1)
  {
    return 0xD000000000000013;
  }

  if ((a1 & 1) == 0)
  {
    v3 = MEMORY[0x277D84F90];
    if ((a1 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v3 = sub_23A9388F4(0, 1, 1, MEMORY[0x277D84F90]);
  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  v6 = v5 + 1;
  if (v5 >= v4 >> 1)
  {
    v36 = sub_23A9388F4((v4 > 1), v5 + 1, 1, v3);
    v6 = v5 + 1;
    v3 = v36;
  }

  *(v3 + 2) = v6;
  v7 = &v3[16 * v5];
  *(v7 + 4) = 0xD000000000000010;
  *(v7 + 5) = 0x800000023AA20B20;
  if ((v1 & 2) != 0)
  {
LABEL_11:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_23A9388F4(0, *(v3 + 2) + 1, 1, v3);
    }

    v9 = *(v3 + 2);
    v8 = *(v3 + 3);
    v10 = v9 + 1;
    if (v9 >= v8 >> 1)
    {
      v37 = sub_23A9388F4((v8 > 1), v9 + 1, 1, v3);
      v10 = v9 + 1;
      v3 = v37;
    }

    *(v3 + 2) = v10;
    v11 = &v3[16 * v9];
    *(v11 + 4) = 0xD000000000000011;
    *(v11 + 5) = 0x800000023AA20B00;
  }

LABEL_16:
  if ((v1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_23A9388F4(0, *(v3 + 2) + 1, 1, v3);
    }

    v13 = *(v3 + 2);
    v12 = *(v3 + 3);
    v14 = v13 + 1;
    if (v13 >= v12 >> 1)
    {
      v38 = sub_23A9388F4((v12 > 1), v13 + 1, 1, v3);
      v14 = v13 + 1;
      v3 = v38;
    }

    *(v3 + 2) = v14;
    v15 = &v3[16 * v13];
    *(v15 + 4) = 0xD000000000000010;
    *(v15 + 5) = 0x800000023AA20AE0;
  }

  if ((v1 & 8) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_23A9388F4(0, *(v3 + 2) + 1, 1, v3);
    }

    v16 = *(v3 + 2);
    v17 = *(v3 + 3);
    v18 = v16 + 1;
    if (v16 >= v17 >> 1)
    {
      v51 = v16 + 1;
      v39 = v3;
      v40 = *(v3 + 2);
      v41 = sub_23A9388F4((v17 > 1), v16 + 1, 1, v39);
      v16 = v40;
      v18 = v51;
      v3 = v41;
    }

    *(v3 + 2) = v18;
    v19 = &v3[16 * v16];
    *(v19 + 4) = 0x776F6C206B636162;
    *(v19 + 5) = 0xEF7466656C207265;
    if ((v1 & 0x10) == 0)
    {
LABEL_24:
      if ((v1 & 0x20) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_38;
    }
  }

  else if ((v1 & 0x10) == 0)
  {
    goto LABEL_24;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_23A9388F4(0, *(v3 + 2) + 1, 1, v3);
  }

  v20 = *(v3 + 2);
  v21 = *(v3 + 3);
  v22 = v20 + 1;
  if (v20 >= v21 >> 1)
  {
    v52 = v20 + 1;
    v42 = v3;
    v43 = *(v3 + 2);
    v44 = sub_23A9388F4((v21 > 1), v20 + 1, 1, v42);
    v20 = v43;
    v22 = v52;
    v3 = v44;
  }

  *(v3 + 2) = v22;
  v23 = &v3[16 * v20];
  *(v23 + 4) = 0xD000000000000010;
  *(v23 + 5) = 0x800000023AA20AC0;
  if ((v1 & 0x20) == 0)
  {
LABEL_25:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_26;
    }

LABEL_43:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_23A9388F4(0, *(v3 + 2) + 1, 1, v3);
    }

    v28 = *(v3 + 2);
    v29 = *(v3 + 3);
    v30 = v28 + 1;
    if (v28 >= v29 >> 1)
    {
      v54 = v28 + 1;
      v48 = v3;
      v49 = *(v3 + 2);
      v50 = sub_23A9388F4((v29 > 1), v28 + 1, 1, v48);
      v28 = v49;
      v30 = v54;
      v3 = v50;
    }

    *(v3 + 2) = v30;
    v31 = &v3[16 * v28];
    *(v31 + 4) = 0xD000000000000010;
    *(v31 + 5) = 0x800000023AA20A80;
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_48;
  }

LABEL_38:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_23A9388F4(0, *(v3 + 2) + 1, 1, v3);
  }

  v24 = *(v3 + 2);
  v25 = *(v3 + 3);
  v26 = v24 + 1;
  if (v24 >= v25 >> 1)
  {
    v53 = v24 + 1;
    v45 = v3;
    v46 = *(v3 + 2);
    v47 = sub_23A9388F4((v25 > 1), v24 + 1, 1, v45);
    v24 = v46;
    v26 = v53;
    v3 = v47;
  }

  *(v3 + 2) = v26;
  v27 = &v3[16 * v24];
  *(v27 + 4) = 0xD000000000000011;
  *(v27 + 5) = 0x800000023AA20AA0;
  if ((v1 & 0x40) != 0)
  {
    goto LABEL_43;
  }

LABEL_26:
  if (v1 < 0)
  {
LABEL_48:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_23A9388F4(0, *(v3 + 2) + 1, 1, v3);
    }

    v33 = *(v3 + 2);
    v32 = *(v3 + 3);
    if (v33 >= v32 >> 1)
    {
      v3 = sub_23A9388F4((v32 > 1), v33 + 1, 1, v3);
    }

    *(v3 + 2) = v33 + 1;
    v34 = &v3[16 * v33];
    *(v34 + 4) = 0x707075206B636162;
    *(v34 + 5) = 0xEF7466656C207265;
  }

LABEL_53:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF1E0, &qword_23AA12EC0);
  sub_23A97E420(&qword_27DFAF1E8, &qword_27DFAF1E0, &qword_23AA12EC0);
  v35 = sub_23AA0D074();

  return v35;
}

char *sub_23A9754F0(float32x4_t *a1)
{
  v21 = *(v1 + 64);
  v2 = v21;
  v2.i32[3] = 0;
  v17 = v2;
  v20 = *(v1 + 32);
  v3 = v20;
  v3.i32[3] = 0;
  v18 = v3;
  v4 = a1[4];
  v4.i32[3] = 0;
  v19 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF5B8, &qword_23AA18B70);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_23AA11C20;
  *(v5 + 32) = v17;
  HIDWORD(v6) = 0;
  *&v7 = vsubq_f32(0, v21).u64[0];
  *(&v7 + 2) = 0.0 - v21.f32[2];
  HIDWORD(v7) = 0;
  *(v5 + 48) = 0;
  *(v5 + 64) = v7;
  *(v5 + 80) = 2;
  *(v5 + 96) = v18;
  *(v5 + 112) = 3;
  *&v6 = vsubq_f32(0, v20).u64[0];
  *(&v6 + 2) = 0.0 - v20.f32[2];
  *(v5 + 128) = v6;
  *(v5 + 144) = 1;
  v22 = v5;
  sub_23A96634C(&v22, v19);
  result = v22;
  if (!*(v22 + 2))
  {
    __break(1u);
    return result;
  }

  v9 = v22[48];

  if (v9 > 1)
  {
    if (v9 == 2)
    {
      *(v1 + 28) = 0;
      *(v1 + 32) = vnegq_f32(v20);
      *(v1 + 64) = vnegq_f32(v21);
      result = type metadata accessor for CapturedRoom.Object(0);
      v11 = *(result + 12);
      v14 = *(v1 + v11);
      if ((v14 & 8) != 0)
      {
        if ((v14 & 4) != 0)
        {
          v13 = 3;
          if ((v14 & 0x80) == 0)
          {
LABEL_65:
            if ((v14 & 0x40) == 0 || (v13 & 0x10) != 0)
            {
LABEL_68:
              if ((v14 & 1) == 0 || (v13 & 4) != 0)
              {
LABEL_71:
                if ((v14 & 2) == 0 || (v13 & 8) != 0)
                {
                  goto LABEL_74;
                }

LABEL_73:
                v13 |= 8u;
LABEL_74:
                if ((v14 & 0x10) != 0)
                {
                  v13 |= 0x40u;
                }

                if ((v14 & 0x20) != 0)
                {
                  v13 |= 0x80u;
                }

                goto LABEL_94;
              }

LABEL_70:
              v13 |= 4u;
              goto LABEL_71;
            }

LABEL_67:
            v13 |= 0x10u;
            goto LABEL_68;
          }
        }

        else
        {
          v13 = 2;
          if ((v14 & 0x80) == 0)
          {
            goto LABEL_28;
          }
        }
      }

      else if ((v14 & 4) != 0)
      {
        v13 = 1;
        if ((v14 & 0x80) == 0)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v13 = 0;
        if ((v14 & 0x80) == 0)
        {
LABEL_28:
          if ((v14 & 0x40) == 0)
          {
            if ((v14 & 1) == 0)
            {
              if ((v14 & 2) == 0)
              {
                goto LABEL_74;
              }

              goto LABEL_73;
            }

            goto LABEL_70;
          }

          goto LABEL_67;
        }
      }

      v13 |= 0x20u;
      goto LABEL_65;
    }

    v15 = vrev64q_s32(vextq_s8(0, *(v1 + 16), 0xCuLL));
    *(v1 + 16) = vextq_s8(v15, v15, 8uLL);
    *(v1 + 32) = vnegq_f32(v21);
    *(v1 + 64) = v20;
    result = type metadata accessor for CapturedRoom.Object(0);
    v11 = *(result + 12);
    v16 = *(v1 + v11);
    if ((v16 & 8) != 0)
    {
      if ((v16 & 4) != 0)
      {
        v13 = 6;
        if ((v16 & 0x80) == 0)
        {
LABEL_80:
          if ((v16 & 0x40) == 0 || (v13 & 0x20) != 0)
          {
LABEL_83:
            if ((v16 & 1) == 0 || (v13 & 8) != 0)
            {
LABEL_86:
              if (v16 & 2) == 0 || (v13)
              {
LABEL_89:
                if ((v16 & 0x10) == 0)
                {
LABEL_91:
                  if ((v16 & 0x20) == 0 || (v13 & 0x10) != 0)
                  {
                    goto LABEL_94;
                  }

LABEL_93:
                  v13 |= 0x10u;
                  goto LABEL_94;
                }

LABEL_90:
                v13 |= 0x80u;
                goto LABEL_91;
              }

LABEL_88:
              v13 |= 1u;
              goto LABEL_89;
            }

LABEL_85:
            v13 |= 8u;
            goto LABEL_86;
          }

LABEL_82:
          v13 |= 0x20u;
          goto LABEL_83;
        }

        goto LABEL_79;
      }

      v13 = 4;
      if ((v16 & 0x80) != 0)
      {
        goto LABEL_79;
      }
    }

    else
    {
      if ((v16 & 4) != 0)
      {
        v13 = 2;
        if ((v16 & 0x80) == 0)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      }

      v13 = 0;
      if ((v16 & 0x80) != 0)
      {
LABEL_79:
        v13 |= 0x40u;
        goto LABEL_80;
      }
    }

    if ((v16 & 0x40) == 0)
    {
      if ((v16 & 1) == 0)
      {
        if ((v16 & 2) == 0)
        {
          if ((v16 & 0x10) == 0)
          {
            if ((v16 & 0x20) == 0)
            {
              goto LABEL_94;
            }

            goto LABEL_93;
          }

          goto LABEL_90;
        }

        goto LABEL_88;
      }

      goto LABEL_85;
    }

    goto LABEL_82;
  }

  if (!v9)
  {
    return result;
  }

  v10 = vrev64q_s32(vextq_s8(0, *(v1 + 16), 0xCuLL));
  *(v1 + 16) = vextq_s8(v10, v10, 8uLL);
  *(v1 + 32) = v21;
  *(v1 + 64) = vnegq_f32(v20);
  result = type metadata accessor for CapturedRoom.Object(0);
  v11 = *(result + 12);
  v12 = *(v1 + v11);
  if ((v12 & 8) != 0)
  {
    if ((v12 & 4) != 0)
    {
      v13 = 9;
      if ((v12 & 0x80) == 0)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v13 = 1;
      if ((v12 & 0x80) == 0)
      {
        if ((v12 & 0x40) != 0)
        {
          goto LABEL_51;
        }

        goto LABEL_21;
      }
    }

    goto LABEL_47;
  }

  if ((v12 & 4) == 0)
  {
    v13 = 0;
    if ((v12 & 0x80) == 0)
    {
      if ((v12 & 0x40) != 0)
      {
LABEL_51:
        v13 |= 0x80u;
        if ((v12 & 1) == 0)
        {
          goto LABEL_54;
        }

        goto LABEL_52;
      }

LABEL_21:
      if ((v12 & 1) == 0)
      {
        if ((v12 & 2) == 0)
        {
          if ((v12 & 0x10) == 0)
          {
            if ((v12 & 0x20) == 0)
            {
              goto LABEL_94;
            }

            goto LABEL_62;
          }

          goto LABEL_59;
        }

        goto LABEL_56;
      }

      goto LABEL_53;
    }

    goto LABEL_47;
  }

  v13 = 8;
  if ((v12 & 0x80) != 0)
  {
LABEL_47:
    v13 |= 0x10u;
  }

LABEL_48:
  if ((v12 & 0x40) != 0)
  {
    goto LABEL_51;
  }

  if ((v12 & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_52:
  if ((v13 & 2) == 0)
  {
LABEL_53:
    v13 |= 2u;
  }

LABEL_54:
  if ((v12 & 2) != 0 && (v13 & 4) == 0)
  {
LABEL_56:
    v13 |= 4u;
  }

  if ((v12 & 0x10) != 0 && (v13 & 0x20) == 0)
  {
LABEL_59:
    v13 |= 0x20u;
  }

  if ((v12 & 0x20) == 0 || (v13 & 0x40) != 0)
  {
    goto LABEL_94;
  }

LABEL_62:
  v13 |= 0x40u;
LABEL_94:
  *(v1 + v11) = v13;
  return result;
}

uint64_t sub_23A975910@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(result + 16);
  switch(v2)
  {
    case 0uLL:
      goto LABEL_11;
    case 1uLL:
      goto LABEL_12;
    case 2uLL:
      goto LABEL_13;
  }

  if (v2 < 4)
  {
    goto LABEL_11;
  }

  if (v2 == 4)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v2 < 6)
  {
    goto LABEL_13;
  }

  if (v2 == 6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v2 < 8)
  {
    goto LABEL_12;
  }

  if (v2 != 8)
  {
    v3 = *(result + 52);
    *&v4 = *(result + 56);
    *(&v4 + 1) = *(result + 64);
    *&v5 = *(result + 44);
    *(&v5 + 1) = v3;
    *&v6 = *(result + 32);
    v7 = *(result + 40);
    *(&v6 + 1) = v7;
    *a2 = v6;
    a2[1] = v5;
    a2[2] = v4;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_23A9759B8()
{
  v1 = *v0;
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

uint64_t sub_23A975A58()
{
  *v0;
  *v0;
  *v0;
  sub_23AA0D1D4();
}

uint64_t sub_23A975AE4()
{
  v1 = *v0;
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

uint64_t sub_23A975B80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23A97D878();
  *a2 = result;
  return result;
}

void sub_23A975BB0(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 12402;
  v4 = 808989042;
  if (*v1 != 2)
  {
    v4 = 808923762;
  }

  if (*v1)
  {
    v3 = 3160434;
    v2 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE400000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_23A975D28(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_23AA0D7F4();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_23AA0D8D4();
}

char *sub_23A975DA0(char *a1, int64_t a2, char a3)
{
  result = sub_23A976170(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23A975DC0(char *a1, int64_t a2, char a3)
{
  result = sub_23A976954(a1, a2, a3, *v3, &qword_27DFAEB58, &unk_23AA11BF0);
  *v3 = result;
  return result;
}

char *sub_23A975DF0(char *a1, int64_t a2, char a3)
{
  result = sub_23A976274(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_23A975E10(size_t a1, int64_t a2, char a3)
{
  result = sub_23A976778(a1, a2, a3, *v3, &qword_27DFAF5F0, &qword_23AA14380, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

char *sub_23A975E54(char *a1, int64_t a2, char a3)
{
  result = sub_23A976C80(a1, a2, a3, *v3, &qword_27DFAED48, &qword_23AA19520);
  *v3 = result;
  return result;
}

char *sub_23A975E84(char *a1, int64_t a2, char a3)
{
  result = sub_23A97647C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23A975EA4(char *a1, int64_t a2, char a3)
{
  result = sub_23A976378(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23A975EC4(char *a1, int64_t a2, char a3)
{
  result = sub_23A976580(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23A975EE4(char *a1, int64_t a2, char a3)
{
  result = sub_23A976674(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23A975F04(char *a1, int64_t a2, char a3)
{
  result = sub_23A976FD0(a1, a2, a3, *v3, &qword_27DFB0550, &unk_23AA18BC0);
  *v3 = result;
  return result;
}

char *sub_23A975F34(char *a1, int64_t a2, char a3)
{
  result = sub_23A976954(a1, a2, a3, *v3, &qword_27DFAF630, &qword_23AA18BA0);
  *v3 = result;
  return result;
}

char *sub_23A975F64(char *a1, int64_t a2, char a3)
{
  result = sub_23A976A50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_23A975F84(size_t a1, int64_t a2, char a3)
{
  result = sub_23A976778(a1, a2, a3, *v3, &qword_27DFAF5E8, &unk_23AA18B80, type metadata accessor for LineAnimation);
  *v3 = result;
  return result;
}

void *sub_23A975FC8(void *a1, int64_t a2, char a3)
{
  result = sub_23A976B4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23A975FE8(char *a1, int64_t a2, char a3)
{
  result = sub_23A976C80(a1, a2, a3, *v3, &qword_27DFAF638, &qword_23AA143D0);
  *v3 = result;
  return result;
}

size_t sub_23A976018(size_t a1, int64_t a2, char a3)
{
  result = sub_23A976778(a1, a2, a3, *v3, &qword_27DFAF5C0, &qword_23AA14340, type metadata accessor for CapturedRoom.Surface);
  *v3 = result;
  return result;
}

char *sub_23A97605C(char *a1, int64_t a2, char a3)
{
  result = sub_23A976D7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23A97607C(void *a1, int64_t a2, char a3)
{
  result = sub_23A976E9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23A97609C(char *a1, int64_t a2, char a3)
{
  result = sub_23A976FD0(a1, a2, a3, *v3, &qword_27DFB0540, &qword_23AA18BA8);
  *v3 = result;
  return result;
}

size_t sub_23A9760CC(size_t a1, int64_t a2, char a3)
{
  result = sub_23A976778(a1, a2, a3, *v3, &qword_27DFAF5D0, &qword_23AA14358, type metadata accessor for CapturedRoom.Object);
  *v3 = result;
  return result;
}

size_t sub_23A976110(size_t a1, int64_t a2, char a3)
{
  result = sub_23A9770BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23A976130(void *a1, int64_t a2, char a3)
{
  result = sub_23A9772AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23A976150(char *a1, int64_t a2, char a3)
{
  result = sub_23A9773E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23A976170(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0530, &qword_23AA18B90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_23A976274(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF5E0, &unk_23AA14370);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_23A976378(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAED50, &unk_23AA122F0);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_23A97647C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF618, &qword_23AA143B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_23A976580(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0538, &qword_23AA18B98);
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

char *sub_23A976674(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF8E8, &qword_23AA15030);
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
    v10 = MEMORY[0x277D84F90];
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

size_t sub_23A976778(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
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

char *sub_23A976954(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

char *sub_23A976A50(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF118, &unk_23AA14320);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

void *sub_23A976B4C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0510, &qword_23AA18B48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0518, &unk_23AA18B50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23A976C80(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[4 * v10])
    {
      memmove(v15, v16, 4 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 4 * v10);
  }

  return v12;
}

char *sub_23A976D7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0560, &qword_23AA18BD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_23A976E9C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0568, &qword_23AA18BD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB14D0, &unk_23AA18BE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23A976FD0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

size_t sub_23A9770BC(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0548, &unk_23AA18BB0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF228, &qword_23AA12F00) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF228, &qword_23AA12F00) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_23A9772AC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0520, &unk_23AA18B60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF308, &qword_23AA13088);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23A9773E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF598, &qword_23AA18B40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_23A9774EC(uint64_t result, float32x4_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v93 = result;
  v8 = a4[1];
  v94 = a2;
  if (v8 < 1)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_91:
    v6 = *v93;
    if (!*v93)
    {
      goto LABEL_129;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_123:
      result = sub_23A977E20(v11);
      v11 = result;
    }

    v87 = *(v11 + 2);
    v88 = v94;
    if (v87 >= 2)
    {
      while (*a4)
      {
        v89 = *&v11[16 * v87];
        v90 = *&v11[16 * v87 + 24];
        sub_23A977B24((*a4 + 32 * v89), (*a4 + 32 * *&v11[16 * v87 + 16]), (*a4 + 32 * v90), v6, v88);
        if (v5)
        {
        }

        if (v90 < v89)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_23A977E20(v11);
        }

        if (v87 - 2 >= *(v11 + 2))
        {
          goto LABEL_117;
        }

        v91 = &v11[16 * v87];
        *v91 = v89;
        *(v91 + 1) = v90;
        result = sub_23A977D94(v87 - 1);
        v87 = *(v11 + 2);
        v88 = v94;
        if (v87 <= 1)
        {
        }
      }

      goto LABEL_127;
    }
  }

  v9 = a5;
  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = v10++;
    if (v10 < v8)
    {
      v13 = 32 * v12;
      v14 = vmulq_f32(*(*a4 + 32 * v10), a2);
      v15 = vmulq_f32(*(*a4 + 32 * v12), a2);
      v16 = vadd_f32(vzip1_s32(*&vextq_s8(v15, v15, 8uLL), *&vextq_s8(v14, v14, 8uLL)), vadd_f32(vzip1_s32(*v15.i8, *v14.i8), vzip2_s32(*v15.i8, *v14.i8)));
      v17 = vcgt_f32(vdup_lane_s32(v16, 1), v16);
      v10 = v12 + 2;
      if (v12 + 2 < v8)
      {
        v18 = (*a4 + 32 * v12 + 64);
        while (1)
        {
          v19 = vmulq_f32(*v18, a2);
          v20 = vmulq_f32(v18[-2], a2);
          *v19.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v20, v20, 8uLL), *&vextq_s8(v19, v19, 8uLL)), vadd_f32(vzip1_s32(*v20.i8, *v19.i8), vzip2_s32(*v20.i8, *v19.i8)));
          if ((vmvn_s8(veor_s8(vcgt_f32(vdup_lane_s32(*v19.i8, 1), *v19.i8), v17)).u8[0] & 1) == 0)
          {
            break;
          }

          ++v10;
          v18 += 2;
          if (v8 == v10)
          {
            v10 = v8;
            break;
          }
        }
      }

      if (v17.i8[0])
      {
        if (v10 < v12)
        {
          goto LABEL_120;
        }

        if (v12 < v10)
        {
          v21 = 32 * v10 - 32;
          v22 = v10;
          v23 = v12;
          do
          {
            if (v23 != --v22)
            {
              v26 = *a4;
              if (!*a4)
              {
                goto LABEL_126;
              }

              v27 = (v26 + v13);
              v28 = (v26 + v21);
              v29 = *(v26 + v13);
              v30 = *(v26 + v13 + 16);
              if (v13 != v21 || v27 >= v28 + 2)
              {
                v24 = v28[1];
                *v27 = *v28;
                v27[1] = v24;
              }

              v25 = v26 + v21;
              *v25 = v29;
              *(v25 + 16) = v30;
            }

            ++v23;
            v21 -= 32;
            v13 += 32;
          }

          while (v23 < v22);
          v8 = a4[1];
        }
      }
    }

    if (v10 < v8)
    {
      if (__OFSUB__(v10, v12))
      {
        goto LABEL_119;
      }

      if (v10 - v12 < v9)
      {
        if (__OFADD__(v12, v9))
        {
          goto LABEL_121;
        }

        if (v12 + v9 < v8)
        {
          v8 = v12 + v9;
        }

        if (v8 < v12)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (v10 != v8)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v10 < v12)
    {
      goto LABEL_118;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23A938B2C(0, *(v11 + 2) + 1, 1, v11);
      v11 = result;
    }

    v6 = *(v11 + 2);
    v42 = *(v11 + 3);
    v43 = v6 + 1;
    a2 = v94;
    if (v6 >= v42 >> 1)
    {
      result = sub_23A938B2C((v42 > 1), v6 + 1, 1, v11);
      a2 = v94;
      v11 = result;
    }

    *(v11 + 2) = v43;
    v44 = &v11[16 * v6];
    *(v44 + 4) = v12;
    *(v44 + 5) = v10;
    v45 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    if (v6)
    {
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = *(v11 + 4);
          v48 = *(v11 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_60:
          if (v50)
          {
            goto LABEL_107;
          }

          v63 = &v11[16 * v43];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_110;
          }

          v69 = &v11[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_113;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_114;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        v73 = &v11[16 * v43];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_74:
        if (v68)
        {
          goto LABEL_109;
        }

        v76 = &v11[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_112;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_81:
        v84 = v46 - 1;
        if (v46 - 1 >= v43)
        {
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (!*a4)
        {
          goto LABEL_125;
        }

        v85 = *&v11[16 * v84 + 32];
        v6 = *&v11[16 * v46 + 40];
        sub_23A977B24((*a4 + 32 * v85), (*a4 + 32 * *&v11[16 * v46 + 32]), (*a4 + 32 * v6), v45, a2);
        if (v5)
        {
        }

        if (v6 < v85)
        {
          goto LABEL_103;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_23A977E20(v11);
        }

        if (v84 >= *(v11 + 2))
        {
          goto LABEL_104;
        }

        v86 = &v11[16 * v84];
        *(v86 + 4) = v85;
        *(v86 + 5) = v6;
        result = sub_23A977D94(v46);
        v43 = *(v11 + 2);
        a2 = v94;
        if (v43 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = &v11[16 * v43 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_105;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_106;
      }

      v58 = &v11[16 * v43];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_108;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_111;
      }

      if (v62 >= v54)
      {
        v80 = &v11[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_115;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_60;
    }

LABEL_3:
    v8 = a4[1];
    v9 = a5;
    if (v10 >= v8)
    {
      goto LABEL_91;
    }
  }

  v31 = *a4;
  v32 = *a4 + 32 * v10 - 32;
  v33 = v12 - v10;
LABEL_33:
  v34 = v33;
  v35 = v32;
  while (1)
  {
    v36 = *(v35 + 32);
    v37 = vmulq_f32(v36, a2);
    v38 = vmulq_f32(*v35, a2);
    *v38.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v38, v38, 8uLL), *&vextq_s8(v37, v37, 8uLL)), vadd_f32(vzip1_s32(*v38.i8, *v37.i8), vzip2_s32(*v38.i8, *v37.i8)));
    if ((vcgt_f32(vdup_lane_s32(*v38.i8, 1), *v38.i8).u8[0] & 1) == 0)
    {
LABEL_32:
      ++v10;
      v32 += 32;
      --v33;
      if (v10 != v8)
      {
        goto LABEL_33;
      }

      v10 = v8;
      goto LABEL_40;
    }

    if (!v31)
    {
      break;
    }

    v39 = *(v35 + 48);
    v40 = *(v35 + 16);
    *(v35 + 32) = *v35;
    *(v35 + 48) = v40;
    *v35 = v36;
    *(v35 + 16) = v39;
    v35 -= 32;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
  return result;
}

uint64_t sub_23A977B24(float32x4_t *__dst, float32x4_t *__src, float32x4_t *a3, float32x4_t *a4, float32x4_t a5)
{
  v5 = a4;
  v6 = a3;
  v7 = a5;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 5;
  v13 = a3 - __src;
  v14 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 5;
  if (v12 < v15)
  {
    v16 = 2 * v12;
    if (a4 != __dst || &__dst[v16] <= a4)
    {
      memmove(a4, __dst, v16 * 16);
      v7 = a5;
    }

    v17 = &v5[v16];
    if (v10 < 32)
    {
LABEL_10:
      v8 = v9;
      goto LABEL_35;
    }

    while (1)
    {
      if (v8 >= v6)
      {
        goto LABEL_10;
      }

      v21 = vmulq_f32(*v8, v7);
      v22 = vmulq_f32(*v5, v7);
      *v21.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v22, v22, 8uLL), *&vextq_s8(v21, v21, 8uLL)), vadd_f32(vzip1_s32(*v22.i8, *v21.i8), vzip2_s32(*v22.i8, *v21.i8)));
      if (vcgt_f32(vdup_lane_s32(*v21.i8, 1), *v21.i8).u32[0])
      {
        break;
      }

      v18 = v5;
      v19 = v9 == v5;
      v5 += 2;
      if (!v19)
      {
        goto LABEL_12;
      }

LABEL_13:
      v9 += 2;
      if (v5 >= v17)
      {
        goto LABEL_10;
      }
    }

    v18 = v8;
    v19 = v9 == v8;
    v8 += 2;
    if (v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    v20 = v18[1];
    *v9 = *v18;
    v9[1] = v20;
    goto LABEL_13;
  }

  v23 = 2 * v15;
  if (a4 != __src || &__src[v23] <= a4)
  {
    memmove(a4, __src, 32 * v15);
    v7 = a5;
  }

  v17 = &v5[v23];
  if (v13 >= 32 && v8 > v9)
  {
LABEL_24:
    v24 = v8 - 2;
    v6 -= 2;
    v25 = v17;
    do
    {
      v26 = v6 + 2;
      v27 = v25[-2];
      v25 -= 2;
      v28 = vmulq_f32(v27, v7);
      v29 = vmulq_f32(*v24, v7);
      *v28.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v29, v29, 8uLL), *&vextq_s8(v28, v28, 8uLL)), vadd_f32(vzip1_s32(*v29.i8, *v28.i8), vzip2_s32(*v29.i8, *v28.i8)));
      if (vcgt_f32(vdup_lane_s32(*v28.i8, 1), *v28.i8).u32[0])
      {
        if (v26 != v8)
        {
          v31 = v8[-1];
          *v6 = *v24;
          v6[1] = v31;
        }

        if (v17 <= v5 || (v8 -= 2, v24 <= v9))
        {
          v8 = v24;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v26 != v17)
      {
        v30 = v25[1];
        *v6 = *v25;
        v6[1] = v30;
      }

      v6 -= 2;
      v17 = v25;
    }

    while (v25 > v5);
    v17 = v25;
  }

LABEL_35:
  v32 = (v17 - v5 + (v17 - v5 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0;
  if (v8 != v5 || v8 >= (v5 + v32))
  {
    memmove(v8, v5, v32);
  }

  return 1;
}

uint64_t sub_23A977D94(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23A977E20(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_23A977ED0()
{
  result = qword_27DFAFCB0;
  if (!qword_27DFAFCB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFAFC40, &unk_23AA15C40);
    sub_23A969670(&qword_27DFB0BA0, type metadata accessor for CapturedRoom);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFCB0);
  }

  return result;
}

unint64_t sub_23A977F84()
{
  result = qword_27DFAFCB8;
  if (!qword_27DFAFCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFAFC58, &qword_23AA15C50);
    sub_23A969670(&qword_27DFAFCC0, type metadata accessor for CapturedRoom.Surface);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFCB8);
  }

  return result;
}

unint64_t sub_23A978038()
{
  result = qword_27DFAFCC8;
  if (!qword_27DFAFCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFAFC70, &qword_23AA15C58);
    sub_23A969670(&qword_27DFAFCD0, type metadata accessor for CapturedRoom.Object);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFCC8);
  }

  return result;
}

uint64_t sub_23A9780EC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFAFC88, &unk_23AA15C60);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23A978164()
{
  result = qword_27DFAFCE0;
  if (!qword_27DFAFCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFCE0);
  }

  return result;
}

uint64_t sub_23A9781B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DFB0900, &qword_23AA15C70);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23A978224()
{
  result = qword_27DFAFD18;
  if (!qword_27DFAFD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFD18);
  }

  return result;
}

unint64_t sub_23A978278()
{
  result = qword_27DFAFD20;
  if (!qword_27DFAFD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFD20);
  }

  return result;
}

unint64_t sub_23A9782CC()
{
  result = qword_27DFAFD28;
  if (!qword_27DFAFD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFD28);
  }

  return result;
}

unint64_t sub_23A978320()
{
  result = qword_27DFAFD30;
  if (!qword_27DFAFD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFD30);
  }

  return result;
}

unint64_t sub_23A978374()
{
  result = qword_27DFAFD60;
  if (!qword_27DFAFD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFD60);
  }

  return result;
}

unint64_t sub_23A9783C8()
{
  result = qword_27DFAFD68;
  if (!qword_27DFAFD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFD68);
  }

  return result;
}

unint64_t sub_23A97841C()
{
  result = qword_27DFAFD80;
  if (!qword_27DFAFD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFD80);
  }

  return result;
}

unint64_t sub_23A978490()
{
  result = qword_27DFAFD98;
  if (!qword_27DFAFD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFD98);
  }

  return result;
}

unint64_t sub_23A9784E4()
{
  result = qword_27DFAFDA0;
  if (!qword_27DFAFDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFDA0);
  }

  return result;
}

uint64_t sub_23A978538(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFAFDA8, &qword_23AA15D08);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23A9785B0()
{
  result = qword_27DFAFDB8;
  if (!qword_27DFAFDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFDB8);
  }

  return result;
}

unint64_t sub_23A978604()
{
  result = qword_27DFAFDC8;
  if (!qword_27DFAFDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFAEB38, &unk_23AA11B60);
    sub_23A969670(&qword_27DFAFDD0, type metadata accessor for CapturedRoom.Surface.Curve);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFDC8);
  }

  return result;
}

unint64_t sub_23A9786B8()
{
  result = qword_27DFAFDD8;
  if (!qword_27DFAFDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DFB0970, &qword_23AA14E00);
    sub_23A969670(&qword_27DFAFDC0, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFDD8);
  }

  return result;
}

uint64_t sub_23A97876C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFAFDE0, &qword_23AA15D10);
    sub_23A97E420(a2, &qword_27DFB0940, &qword_23AA15CF0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23A978804()
{
  result = qword_27DFAFDF0;
  if (!qword_27DFAFDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFDF0);
  }

  return result;
}

unint64_t sub_23A978858()
{
  result = qword_27DFAFE00;
  if (!qword_27DFAFE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFE00);
  }

  return result;
}

unint64_t sub_23A9788AC()
{
  result = qword_27DFAFE08;
  if (!qword_27DFAFE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFAEB38, &unk_23AA11B60);
    sub_23A969670(&qword_27DFAFE10, type metadata accessor for CapturedRoom.Surface.Curve);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFE08);
  }

  return result;
}

unint64_t sub_23A978960()
{
  result = qword_27DFAFE18;
  if (!qword_27DFAFE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DFB0970, &qword_23AA14E00);
    sub_23A969670(&qword_27DFAF240, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFE18);
  }

  return result;
}

unint64_t sub_23A978A14()
{
  result = qword_27DFAFE50;
  if (!qword_27DFAFE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFE50);
  }

  return result;
}

unint64_t sub_23A978A68()
{
  result = qword_27DFAFE58;
  if (!qword_27DFAFE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFE58);
  }

  return result;
}

unint64_t sub_23A978ABC()
{
  result = qword_27DFAFE60;
  if (!qword_27DFAFE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFE60);
  }

  return result;
}

unint64_t sub_23A978B10()
{
  result = qword_27DFAFE68;
  if (!qword_27DFAFE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFE68);
  }

  return result;
}

unint64_t sub_23A978B64()
{
  result = qword_27DFAFE70;
  if (!qword_27DFAFE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFE70);
  }

  return result;
}

unint64_t sub_23A978BB8()
{
  result = qword_27DFAFE78;
  if (!qword_27DFAFE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFE78);
  }

  return result;
}

unint64_t sub_23A978C0C()
{
  result = qword_27DFAFEB8;
  if (!qword_27DFAFEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFEB8);
  }

  return result;
}

unint64_t sub_23A978C60()
{
  result = qword_27DFAFF10;
  if (!qword_27DFAFF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFF10);
  }

  return result;
}

unint64_t sub_23A978CB4()
{
  result = qword_27DFAFF18;
  if (!qword_27DFAFF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFF18);
  }

  return result;
}

unint64_t sub_23A978D08()
{
  result = qword_27DFAFF20;
  if (!qword_27DFAFF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFF20);
  }

  return result;
}

unint64_t sub_23A978D5C()
{
  result = qword_27DFAFF28;
  if (!qword_27DFAFF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFF28);
  }

  return result;
}

unint64_t sub_23A978DB0()
{
  result = qword_27DFAFF30;
  if (!qword_27DFAFF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFF30);
  }

  return result;
}

unint64_t sub_23A978E04()
{
  result = qword_27DFAFF68;
  if (!qword_27DFAFF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFF68);
  }

  return result;
}

unint64_t sub_23A978E58()
{
  result = qword_27DFAFF70;
  if (!qword_27DFAFF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFF70);
  }

  return result;
}

unint64_t sub_23A978EAC()
{
  result = qword_27DFAFF80;
  if (!qword_27DFAFF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFF80);
  }

  return result;
}

unint64_t sub_23A978F00()
{
  result = qword_27DFB0010;
  if (!qword_27DFB0010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0010);
  }

  return result;
}

unint64_t sub_23A978F54()
{
  result = qword_27DFB0018;
  if (!qword_27DFB0018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0018);
  }

  return result;
}

unint64_t sub_23A978FA8()
{
  result = qword_27DFB0020;
  if (!qword_27DFB0020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0020);
  }

  return result;
}

unint64_t sub_23A978FFC()
{
  result = qword_27DFB0028;
  if (!qword_27DFB0028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0028);
  }

  return result;
}

unint64_t sub_23A979050()
{
  result = qword_27DFB0030;
  if (!qword_27DFB0030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0030);
  }

  return result;
}

unint64_t sub_23A9790A4()
{
  result = qword_27DFB0038;
  if (!qword_27DFB0038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0038);
  }

  return result;
}

unint64_t sub_23A9790F8()
{
  result = qword_27DFB0040;
  if (!qword_27DFB0040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0040);
  }

  return result;
}

unint64_t sub_23A97914C()
{
  result = qword_27DFB0048;
  if (!qword_27DFB0048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0048);
  }

  return result;
}

unint64_t sub_23A9791A0()
{
  result = qword_27DFB0050;
  if (!qword_27DFB0050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0050);
  }

  return result;
}

unint64_t sub_23A9791F4()
{
  result = qword_27DFB0058;
  if (!qword_27DFB0058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0058);
  }

  return result;
}

unint64_t sub_23A979248()
{
  result = qword_27DFB0060;
  if (!qword_27DFB0060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0060);
  }

  return result;
}

unint64_t sub_23A97929C()
{
  result = qword_27DFB0068;
  if (!qword_27DFB0068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0068);
  }

  return result;
}

unint64_t sub_23A9792F0()
{
  result = qword_27DFB0070;
  if (!qword_27DFB0070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0070);
  }

  return result;
}

unint64_t sub_23A979344()
{
  result = qword_27DFB0078;
  if (!qword_27DFB0078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0078);
  }

  return result;
}

unint64_t sub_23A979398()
{
  result = qword_27DFB0080;
  if (!qword_27DFB0080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0080);
  }

  return result;
}

unint64_t sub_23A9793EC()
{
  result = qword_27DFB0088;
  if (!qword_27DFB0088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0088);
  }

  return result;
}

unint64_t sub_23A979440()
{
  result = qword_27DFB0090;
  if (!qword_27DFB0090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0090);
  }

  return result;
}

uint64_t sub_23A979494(uint64_t a1)
{
  *(a1 + 8) = sub_23A969670(&qword_27DFB0120, type metadata accessor for CapturedStructure);
  result = sub_23A969670(&qword_27DFB0128, type metadata accessor for CapturedStructure);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23A97951C()
{
  result = qword_27DFB0130;
  if (!qword_27DFB0130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0130);
  }

  return result;
}

unint64_t sub_23A979574()
{
  result = qword_27DFB0138;
  if (!qword_27DFB0138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0138);
  }

  return result;
}

unint64_t sub_23A9795CC()
{
  result = qword_27DFB0140;
  if (!qword_27DFB0140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0140);
  }

  return result;
}

unint64_t sub_23A979624()
{
  result = qword_27DFB0148;
  if (!qword_27DFB0148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0148);
  }

  return result;
}

unint64_t sub_23A97967C()
{
  result = qword_27DFB0150;
  if (!qword_27DFB0150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0150);
  }

  return result;
}

unint64_t sub_23A9796D4()
{
  result = qword_27DFB0158;
  if (!qword_27DFB0158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0158);
  }

  return result;
}

unint64_t sub_23A979770()
{
  result = qword_27DFB0170;
  if (!qword_27DFB0170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0170);
  }

  return result;
}

unint64_t sub_23A97980C()
{
  result = qword_27DFB0188;
  if (!qword_27DFB0188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0188);
  }

  return result;
}

unint64_t sub_23A979864()
{
  result = qword_27DFB0190;
  if (!qword_27DFB0190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0190);
  }

  return result;
}

unint64_t sub_23A9798BC()
{
  result = qword_27DFB0198;
  if (!qword_27DFB0198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0198);
  }

  return result;
}

unint64_t sub_23A979914()
{
  result = qword_27DFB01A0;
  if (!qword_27DFB01A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB01A0);
  }

  return result;
}

uint64_t sub_23A979968(uint64_t a1)
{
  *(a1 + 8) = sub_23A969670(&qword_27DFAFC50, type metadata accessor for CapturedRoom);
  result = sub_23A969670(&qword_27DFB0BA0, type metadata accessor for CapturedRoom);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23A979ADC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_23AA0C0E4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

void *sub_23A979B9C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_23AA0C0E4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23A979C40()
{
  sub_23A979DBC(319, &qword_27DFB01B8, type metadata accessor for CapturedRoom, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23A979DBC(319, &qword_27DFB01C0, type metadata accessor for CapturedRoom.Surface, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_23A979DBC(319, &qword_27DFB01C8, type metadata accessor for CapturedRoom.Object, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_23A97A8AC(319, &qword_27DFB01D0);
        if (v3 <= 0x3F)
        {
          sub_23AA0C0E4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23A979DBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_23A979E34(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_23AA0C0E4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_23A979EF4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_23AA0C0E4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23A979F98()
{
  sub_23A979DBC(319, &qword_27DFB01C0, type metadata accessor for CapturedRoom.Surface, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23A979DBC(319, &qword_27DFB01C8, type metadata accessor for CapturedRoom.Object, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_23AA0C0E4();
      if (v2 <= 0x3F)
      {
        sub_23A97A8AC(319, &qword_27DFB01D0);
        if (v3 <= 0x3F)
        {
          sub_23A97B1AC(319, &qword_27DFB01E8, &unk_27DFB0B00, &unk_23AA15C90, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for simd_float4x4(319);
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

__n128 __swift_memcpy145_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_23A97A190(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 145))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 120);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_23A97A1EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 145) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 145) = 0;
    }

    if (a2)
    {
      *(result + 120) = a2;
    }
  }

  return result;
}

uint64_t sub_23A97A29C(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_23AA0C0E4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[11];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[13];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[14];

  return v15(v16, a2, v14);
}

uint64_t sub_23A97A434(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_23AA0C0E4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[11];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[13];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[14];

  return v15(v16, a2, a2, v14);
}

void sub_23A97A5B8()
{
  sub_23A97ACA8(319, &qword_27DFB0200, sub_23A97A858, &type metadata for CapturedRoom.Surface.Edge, MEMORY[0x277D83B48]);
  if (v0 <= 0x3F)
  {
    sub_23A97ACA8(319, &qword_27DFAED18, sub_23A8E996C, MEMORY[0x277D83A90], MEMORY[0x277D84AE8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for simd_float4x4(319);
      if (v2 <= 0x3F)
      {
        sub_23AA0C0E4();
        if (v3 <= 0x3F)
        {
          sub_23A979DBC(319, &qword_27DFAEC08, type metadata accessor for CapturedRoom.Surface.Curve, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_23A979DBC(319, &qword_27DFAEC00, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_23A97B1AC(319, &qword_27DFAED20, &qword_27DFB0940, &qword_23AA15CF0, MEMORY[0x277D83940]);
              if (v6 <= 0x3F)
              {
                sub_23A97A8AC(319, &qword_27DFB0210);
                if (v7 <= 0x3F)
                {
                  sub_23A979DBC(319, &qword_27DFB0218, MEMORY[0x277CC95F0], MEMORY[0x277D83940]);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

unint64_t sub_23A97A858()
{
  result = qword_27DFB0208;
  if (!qword_27DFB0208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0208);
  }

  return result;
}

void sub_23A97A8AC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_23AA0D344();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for CapturedRoom.Surface.Category(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_19;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_19:
  v7 = *a1;
  if (*a1 < 2u)
  {
    return 0;
  }

  v8 = (v7 & 0xFE) + 2147483646;
  if ((v8 & 0x7FFFFFFEu) <= 3)
  {
    return 0;
  }

  return (v8 & 0x7FFFFFFE | v7 & 1u) - 3;
}

uint64_t storeEnumTagSinglePayload for CapturedRoom.Surface.Category(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_23A97AA68(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_23A97AA84(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_23A97AAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0A20, &unk_23AA122D0);
  v7 = *(*(v6 - 8) + 48);
  v8 = a1 + *(a3 + 24);

  return v7(v8, a2, v6);
}

uint64_t sub_23A97AB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0A20, &unk_23AA122D0);
  v8 = *(*(v7 - 8) + 56);
  v9 = a1 + *(a4 + 24);

  return v8(v9, a2, a2, v7);
}

void sub_23A97ABE8()
{
  sub_23A97ACA8(319, &qword_27DFAEC90, sub_23A8E996C, MEMORY[0x277D83A90], MEMORY[0x277D84AC8]);
  if (v0 <= 0x3F)
  {
    sub_23A97AD10();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23A97ACA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_23A97AD10()
{
  if (!qword_27DFB0230)
  {
    sub_23A8D6C58(255, &qword_27DFAEB50, 0x277CCADA8);
    v0 = sub_23AA0BC94();
    if (!v1)
    {
      atomic_store(v0, &qword_27DFB0230);
    }
  }
}

uint64_t sub_23A97AD9C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_23AA0C0E4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[8];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[9]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[11];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_23A97AEE4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_23AA0C0E4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[8];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[9]) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[11];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_23A97B018()
{
  sub_23A97ACA8(319, &qword_27DFAED18, sub_23A8E996C, MEMORY[0x277D83A90], MEMORY[0x277D84AE8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for simd_float4x4(319);
    if (v1 <= 0x3F)
    {
      sub_23AA0C0E4();
      if (v2 <= 0x3F)
      {
        sub_23A97B1AC(319, &qword_27DFB0248, &qword_27DFAF688, &qword_23AA14420, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_23A979DBC(319, &qword_27DFAEC00, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23A97B1AC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for CapturedRoom.USDExportOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CapturedRoom.USDExportOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_23A97B298(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_23A97B32C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CapturedRoom.Object.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CapturedRoom.Object.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for MeshResourceType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MeshResourceType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CapturedVolumeCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CapturedVolumeCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23A97B9F0()
{
  result = qword_27DFB0250;
  if (!qword_27DFB0250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0250);
  }

  return result;
}

unint64_t sub_23A97BA48()
{
  result = qword_27DFB0258;
  if (!qword_27DFB0258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0258);
  }

  return result;
}

unint64_t sub_23A97BAA0()
{
  result = qword_27DFB0260;
  if (!qword_27DFB0260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0260);
  }

  return result;
}

unint64_t sub_23A97BAF8()
{
  result = qword_27DFB0268;
  if (!qword_27DFB0268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0268);
  }

  return result;
}

unint64_t sub_23A97BB50()
{
  result = qword_27DFB0270;
  if (!qword_27DFB0270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0270);
  }

  return result;
}

unint64_t sub_23A97BBA8()
{
  result = qword_27DFB0278;
  if (!qword_27DFB0278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0278);
  }

  return result;
}

unint64_t sub_23A97BC00()
{
  result = qword_27DFB0280;
  if (!qword_27DFB0280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0280);
  }

  return result;
}

unint64_t sub_23A97BC58()
{
  result = qword_27DFB0288;
  if (!qword_27DFB0288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0288);
  }

  return result;
}

unint64_t sub_23A97BCB0()
{
  result = qword_27DFB0290;
  if (!qword_27DFB0290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0290);
  }

  return result;
}

unint64_t sub_23A97BD08()
{
  result = qword_27DFB0298;
  if (!qword_27DFB0298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0298);
  }

  return result;
}

unint64_t sub_23A97BD60()
{
  result = qword_27DFB02A0;
  if (!qword_27DFB02A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB02A0);
  }

  return result;
}

unint64_t sub_23A97BDB8()
{
  result = qword_27DFB02A8;
  if (!qword_27DFB02A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB02A8);
  }

  return result;
}

unint64_t sub_23A97BE10()
{
  result = qword_27DFB02B0;
  if (!qword_27DFB02B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB02B0);
  }

  return result;
}

unint64_t sub_23A97BE68()
{
  result = qword_27DFB02B8;
  if (!qword_27DFB02B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB02B8);
  }

  return result;
}

unint64_t sub_23A97BEC0()
{
  result = qword_27DFB02C0;
  if (!qword_27DFB02C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB02C0);
  }

  return result;
}

unint64_t sub_23A97BF18()
{
  result = qword_27DFB02C8;
  if (!qword_27DFB02C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB02C8);
  }

  return result;
}

unint64_t sub_23A97BF70()
{
  result = qword_27DFB02D0;
  if (!qword_27DFB02D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB02D0);
  }

  return result;
}

unint64_t sub_23A97BFC8()
{
  result = qword_27DFB02D8;
  if (!qword_27DFB02D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB02D8);
  }

  return result;
}

unint64_t sub_23A97C020()
{
  result = qword_27DFB02E0;
  if (!qword_27DFB02E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB02E0);
  }

  return result;
}

unint64_t sub_23A97C078()
{
  result = qword_27DFB02E8;
  if (!qword_27DFB02E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB02E8);
  }

  return result;
}

unint64_t sub_23A97C0D0()
{
  result = qword_27DFB02F0;
  if (!qword_27DFB02F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB02F0);
  }

  return result;
}

unint64_t sub_23A97C128()
{
  result = qword_27DFB02F8;
  if (!qword_27DFB02F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB02F8);
  }

  return result;
}

unint64_t sub_23A97C180()
{
  result = qword_27DFB0300;
  if (!qword_27DFB0300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0300);
  }

  return result;
}

unint64_t sub_23A97C1D8()
{
  result = qword_27DFB0308;
  if (!qword_27DFB0308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0308);
  }

  return result;
}

unint64_t sub_23A97C230()
{
  result = qword_27DFB0310;
  if (!qword_27DFB0310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0310);
  }

  return result;
}

unint64_t sub_23A97C288()
{
  result = qword_27DFB0318;
  if (!qword_27DFB0318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0318);
  }

  return result;
}

unint64_t sub_23A97C2E0()
{
  result = qword_27DFB0320;
  if (!qword_27DFB0320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0320);
  }

  return result;
}

unint64_t sub_23A97C338()
{
  result = qword_27DFB0328;
  if (!qword_27DFB0328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0328);
  }

  return result;
}

unint64_t sub_23A97C390()
{
  result = qword_27DFB0330;
  if (!qword_27DFB0330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0330);
  }

  return result;
}

unint64_t sub_23A97C3E8()
{
  result = qword_27DFB0338;
  if (!qword_27DFB0338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0338);
  }

  return result;
}

unint64_t sub_23A97C440()
{
  result = qword_27DFB0340;
  if (!qword_27DFB0340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0340);
  }

  return result;
}

unint64_t sub_23A97C498()
{
  result = qword_27DFB0348;
  if (!qword_27DFB0348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0348);
  }

  return result;
}

unint64_t sub_23A97C4F0()
{
  result = qword_27DFB0350;
  if (!qword_27DFB0350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0350);
  }

  return result;
}

unint64_t sub_23A97C548()
{
  result = qword_27DFB0358;
  if (!qword_27DFB0358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0358);
  }

  return result;
}

unint64_t sub_23A97C5A0()
{
  result = qword_27DFB0360;
  if (!qword_27DFB0360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0360);
  }

  return result;
}

unint64_t sub_23A97C5F8()
{
  result = qword_27DFB0368;
  if (!qword_27DFB0368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0368);
  }

  return result;
}

unint64_t sub_23A97C650()
{
  result = qword_27DFB0370;
  if (!qword_27DFB0370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0370);
  }

  return result;
}

unint64_t sub_23A97C6A8()
{
  result = qword_27DFB0378;
  if (!qword_27DFB0378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0378);
  }

  return result;
}

unint64_t sub_23A97C700()
{
  result = qword_27DFB0380;
  if (!qword_27DFB0380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0380);
  }

  return result;
}

unint64_t sub_23A97C758()
{
  result = qword_27DFB0388;
  if (!qword_27DFB0388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0388);
  }

  return result;
}

unint64_t sub_23A97C7B0()
{
  result = qword_27DFB0390;
  if (!qword_27DFB0390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0390);
  }

  return result;
}

unint64_t sub_23A97C808()
{
  result = qword_27DFB0398;
  if (!qword_27DFB0398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0398);
  }

  return result;
}

unint64_t sub_23A97C860()
{
  result = qword_27DFB03A0;
  if (!qword_27DFB03A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB03A0);
  }

  return result;
}

unint64_t sub_23A97C8B8()
{
  result = qword_27DFB03A8;
  if (!qword_27DFB03A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB03A8);
  }

  return result;
}

unint64_t sub_23A97C910()
{
  result = qword_27DFB03B0;
  if (!qword_27DFB03B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB03B0);
  }

  return result;
}

unint64_t sub_23A97C968()
{
  result = qword_27DFB03B8;
  if (!qword_27DFB03B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB03B8);
  }

  return result;
}

unint64_t sub_23A97C9C0()
{
  result = qword_27DFB03C0;
  if (!qword_27DFB03C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB03C0);
  }

  return result;
}

unint64_t sub_23A97CA18()
{
  result = qword_27DFB03C8;
  if (!qword_27DFB03C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB03C8);
  }

  return result;
}

unint64_t sub_23A97CA70()
{
  result = qword_27DFB03D0;
  if (!qword_27DFB03D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB03D0);
  }

  return result;
}

unint64_t sub_23A97CAC8()
{
  result = qword_27DFB03D8;
  if (!qword_27DFB03D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB03D8);
  }

  return result;
}

unint64_t sub_23A97CB20()
{
  result = qword_27DFB03E0;
  if (!qword_27DFB03E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB03E0);
  }

  return result;
}

unint64_t sub_23A97CB78()
{
  result = qword_27DFB03E8;
  if (!qword_27DFB03E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB03E8);
  }

  return result;
}

unint64_t sub_23A97CBD0()
{
  result = qword_27DFB03F0;
  if (!qword_27DFB03F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB03F0);
  }

  return result;
}

unint64_t sub_23A97CC28()
{
  result = qword_27DFB03F8;
  if (!qword_27DFB03F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB03F8);
  }

  return result;
}

unint64_t sub_23A97CC80()
{
  result = qword_27DFB0400;
  if (!qword_27DFB0400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0400);
  }

  return result;
}

unint64_t sub_23A97CCD8()
{
  result = qword_27DFB0408;
  if (!qword_27DFB0408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0408);
  }

  return result;
}

unint64_t sub_23A97CD30()
{
  result = qword_27DFB0410;
  if (!qword_27DFB0410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0410);
  }

  return result;
}

unint64_t sub_23A97CD88()
{
  result = qword_27DFB0418;
  if (!qword_27DFB0418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0418);
  }

  return result;
}

unint64_t sub_23A97CDE0()
{
  result = qword_27DFB0420;
  if (!qword_27DFB0420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0420);
  }

  return result;
}

unint64_t sub_23A97CE38()
{
  result = qword_27DFB0428;
  if (!qword_27DFB0428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0428);
  }

  return result;
}

unint64_t sub_23A97CE90()
{
  result = qword_27DFB0430;
  if (!qword_27DFB0430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0430);
  }

  return result;
}

unint64_t sub_23A97CEE8()
{
  result = qword_27DFB0438;
  if (!qword_27DFB0438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0438);
  }

  return result;
}

unint64_t sub_23A97CF40()
{
  result = qword_27DFB0440;
  if (!qword_27DFB0440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0440);
  }

  return result;
}

unint64_t sub_23A97CF98()
{
  result = qword_27DFB0448;
  if (!qword_27DFB0448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0448);
  }

  return result;
}

unint64_t sub_23A97CFF0()
{
  result = qword_27DFB0450;
  if (!qword_27DFB0450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0450);
  }

  return result;
}

unint64_t sub_23A97D048()
{
  result = qword_27DFB0458;
  if (!qword_27DFB0458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0458);
  }

  return result;
}

unint64_t sub_23A97D0A0()
{
  result = qword_27DFB0460;
  if (!qword_27DFB0460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0460);
  }

  return result;
}

unint64_t sub_23A97D0F8()
{
  result = qword_27DFB0468;
  if (!qword_27DFB0468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0468);
  }

  return result;
}

unint64_t sub_23A97D150()
{
  result = qword_27DFB0470;
  if (!qword_27DFB0470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0470);
  }

  return result;
}

unint64_t sub_23A97D1A8()
{
  result = qword_27DFB0478;
  if (!qword_27DFB0478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0478);
  }

  return result;
}

unint64_t sub_23A97D200()
{
  result = qword_27DFB0480;
  if (!qword_27DFB0480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0480);
  }

  return result;
}

unint64_t sub_23A97D258()
{
  result = qword_27DFB0488;
  if (!qword_27DFB0488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0488);
  }

  return result;
}

unint64_t sub_23A97D2B0()
{
  result = qword_27DFB0490;
  if (!qword_27DFB0490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0490);
  }

  return result;
}

unint64_t sub_23A97D308()
{
  result = qword_27DFB0498;
  if (!qword_27DFB0498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0498);
  }

  return result;
}

unint64_t sub_23A97D360()
{
  result = qword_27DFB04A0;
  if (!qword_27DFB04A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB04A0);
  }

  return result;
}

unint64_t sub_23A97D3B8()
{
  result = qword_27DFB04A8;
  if (!qword_27DFB04A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB04A8);
  }

  return result;
}

unint64_t sub_23A97D410()
{
  result = qword_27DFB04B0;
  if (!qword_27DFB04B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB04B0);
  }

  return result;
}

unint64_t sub_23A97D468()
{
  result = qword_27DFB04B8;
  if (!qword_27DFB04B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB04B8);
  }

  return result;
}

unint64_t sub_23A97D4C0()
{
  result = qword_27DFB04C0;
  if (!qword_27DFB04C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB04C0);
  }

  return result;
}

unint64_t sub_23A97D518()
{
  result = qword_27DFB04C8;
  if (!qword_27DFB04C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB04C8);
  }

  return result;
}

unint64_t sub_23A97D570()
{
  result = qword_27DFB04D0;
  if (!qword_27DFB04D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB04D0);
  }

  return result;
}

unint64_t sub_23A97D5C8()
{
  result = qword_27DFB04D8;
  if (!qword_27DFB04D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB04D8);
  }

  return result;
}

unint64_t sub_23A97D620()
{
  result = qword_27DFB04E0;
  if (!qword_27DFB04E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB04E0);
  }

  return result;
}

unint64_t sub_23A97D678()
{
  result = qword_27DFB04E8;
  if (!qword_27DFB04E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB04E8);
  }

  return result;
}

unint64_t sub_23A97D6D0()
{
  result = qword_27DFB04F0;
  if (!qword_27DFB04F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB04F0);
  }

  return result;
}

unint64_t sub_23A97D728()
{
  result = qword_27DFB04F8;
  if (!qword_27DFB04F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB04F8);
  }

  return result;
}

unint64_t sub_23A97D780()
{
  result = qword_27DFB0500;
  if (!qword_27DFB0500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0500);
  }

  return result;
}

unint64_t sub_23A97D7D8()
{
  result = qword_27DFB0508;
  if (!qword_27DFB0508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0508);
  }

  return result;
}

uint64_t sub_23A97D82C()
{
  v0 = sub_23AA0DA64();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_23A97D878()
{
  v0 = sub_23AA0DA64();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_23A97D8C4()
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

uint64_t sub_23A97D910()
{
  v0 = sub_23AA0DA64();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_23A97D95C()
{
  v0 = sub_23AA0DA64();

  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_23A97D9A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1751607656 && a2 == 0xE400000000000000;
  if (v3 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D756964656DLL && a2 == 0xE600000000000000 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7827308 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_23AA0DBD4();

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

uint64_t sub_23A97DABC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1819042167 && a2 == 0xE400000000000000;
  if (v3 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696E65706FLL && a2 == 0xE700000000000000 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x776F646E6977 && a2 == 0xE600000000000000 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1919905636 && a2 == 0xE400000000000000 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F6F6C66 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_23AA0DBD4();

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

uint64_t sub_23A97DC64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265746E6563 && a2 == 0xE600000000000000;
  if (v4 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737569646172 && a2 == 0xE600000000000000 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E417472617473 && a2 == 0xEA0000000000656CLL || (sub_23AA0DBD4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C676E41646E65 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_23AA0DBD4();

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