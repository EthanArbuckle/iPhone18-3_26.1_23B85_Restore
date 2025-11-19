uint64_t sub_23E8C7E1C(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(type metadata accessor for ContainerContent.Child() - 8);
    a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
    }
  }

  return v11;
}

uint64_t sub_23E8C7F00()
{
  v0 = sub_23E9006D4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  ContainerContent.Child.id.getter(&v11 - v6);
  ContainerContent.Child.id.getter(v5);
  v8 = sub_23E9006B4();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  return v8 & 1;
}

uint64_t sub_23E8C8024(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = a2;
  v56 = a4;
  v60 = a3;
  v69 = a1;
  v4 = sub_23E9006D4();
  v62 = *(v4 - 8);
  v63 = v4;
  v5 = *(v62 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v59 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v61 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F070, &qword_23E906130);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v58 = (&v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v14 = (&v55 - v13);
  v15 = type metadata accessor for RenderLayerAction();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v57 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v55 - v19;
  v21 = type metadata accessor for ContainerContent.Child();
  v22 = *(v21 - 8);
  v23 = *(v22 + 8);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v55 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F0A0, &qword_23E906150);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v32 = (&v55 - v31);
  sub_23E8C8928(v65, &v55 - v31);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v20 = v69;
    v65 = *v32;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F0C0, &unk_23E906160);
    v39 = v32 + *(v38 + 64);
    v40 = *v39;
    v41 = v39[8];
    sub_23E88A940(v32 + *(v38 + 48), v26);
    v42 = v26;
    if (v41 == 1)
    {
      (*(v22 + 7))(v14, 1, 1, v21);
      v43 = v61;
      goto LABEL_12;
    }

    if ((v40 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v40 < *(v60 + 16))
    {
      v14 = v58;
      sub_23E8C8998(v60 + ((v22[80] + 32) & ~v22[80]) + *(v22 + 9) * v40, v58, type metadata accessor for ContainerContent.Child);
      (*(v22 + 7))(v14, 0, 1, v21);
      v43 = v59;
LABEL_12:
      ContainerContent.Child.id.getter(v43);
      v44 = v64;
      v45 = sub_23E8F6C48(v14, v43);
      if (v44)
      {
        (*(v62 + 8))(v43, v63);
        sub_23E87E458(v14, &qword_27E35F070, &qword_23E906130);
        return sub_23E8C87D4(v42, type metadata accessor for ContainerContent.Child);
      }

      v47 = v45;
      v48 = v62;
      v49 = v43;
      v50 = v63;
      (*(v62 + 8))(v49, v63);
      sub_23E87E458(v14, &qword_27E35F070, &qword_23E906130);
      v22 = v20;
      sub_23E8EBFB4(v47);
      v20 = v57;
      (*(v48 + 16))(v57, v56, v50);
      v51 = &v20[*(v15 + 20)];
      v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E8D0, &qword_23E906270) + 48);
      ContainerContent.Child.id.getter(v51);
      *(v51 + v52) = v65;
      type metadata accessor for RenderLayerActionType();
      swift_storeEnumTagMultiPayload();
      v14 = *v22;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_15;
      }

      goto LABEL_21;
    }

    __break(1u);
LABEL_21:
    v14 = sub_23E889F50(0, v14[2] + 1, 1, v14);
LABEL_15:
    v36 = v14[2];
    v53 = v14[3];
    if (v36 >= v53 >> 1)
    {
      v14 = sub_23E889F50((v53 > 1), v36 + 1, 1, v14);
    }

    sub_23E8C87D4(v42, type metadata accessor for ContainerContent.Child);
    v67 = v15;
    v68 = sub_23E8C8834(&qword_27E35E848, type metadata accessor for RenderLayerAction);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v66);
    sub_23E8C8998(v20, boxed_opaque_existential_1, type metadata accessor for RenderLayerAction);
    v14[2] = v36 + 1;
    goto LABEL_18;
  }

  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F0C0, &unk_23E906160);
  sub_23E88A940(v32 + *(v33 + 48), v28);
  ContainerContent.Child.id.getter(v20);
  v34 = *(v15 + 20);
  type metadata accessor for RenderLayerActionType();
  swift_storeEnumTagMultiPayload();
  v22 = v69;
  v14 = *v69;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_23E889F50(0, v14[2] + 1, 1, v14);
  }

  v36 = v14[2];
  v35 = v14[3];
  if (v36 >= v35 >> 1)
  {
    v14 = sub_23E889F50((v35 > 1), v36 + 1, 1, v14);
  }

  sub_23E8C87D4(v28, type metadata accessor for ContainerContent.Child);
  v67 = v15;
  v68 = sub_23E8C8834(&qword_27E35E848, type metadata accessor for RenderLayerAction);
  v37 = __swift_allocate_boxed_opaque_existential_1(&v66);
  sub_23E8C8998(v20, v37, type metadata accessor for RenderLayerAction);
  v14[2] = v36 + 1;
LABEL_18:
  sub_23E881028(&v66, &v14[5 * v36 + 4]);
  result = sub_23E8C87D4(v20, type metadata accessor for RenderLayerAction);
  *v22 = v14;
  return result;
}

uint64_t sub_23E8C8758(__int128 *a1, uint64_t a2)
{
  v3 = v2[1];
  v6 = *v2;
  v5 = *a1;
  return sub_23E8C61DC(&v5, a2);
}

uint64_t sub_23E8C87D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23E8C8834(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23E8C887C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContainerContent.Child();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E8C88E0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_23E8C8928(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F0A0, &qword_23E906150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E8C8998(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
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

uint64_t sub_23E8C8A1C(uint64_t a1, int a2)
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

uint64_t sub_23E8C8A64(uint64_t result, int a2, int a3)
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

id sub_23E8C8AC0()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = *v0;
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  (*(v5 + 48))(v4, v5);
  v6 = sub_23E900854();

  v7 = sub_23E900854();
  v8 = 1;
  v9 = [v2 nodeWithIdentifier:v3 name:v6 type:1 value:v7];

  v10 = v1[5];
  v11 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v10);
  v12 = (*(v11 + 72))(v10, v11);
  sub_23E8C8C60(v12);

  v13 = sub_23E9009A4();

  [v9 setAttributes_];

  if (*(v1 + 8) == 1)
  {
    v14 = v1[5];
    v15 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v14);
    v8 = (*(v15 + 56))(v14, v15);
  }

  [v9 setChildNodeCount_];
  return v9;
}

char *sub_23E8C8C60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = sub_23E8CA0B4(*(a1 + 16), 0);
    v4 = sub_23E8CADD0(&v24, (v3 + 4), v1, a1);

    sub_23E8A237C();
    if (v4 == v1)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x277D84F90];
LABEL_5:
  v24 = v3;
  sub_23E8C8FE8(&v24);
  v5 = v24[2];
  if (v5)
  {
    v6 = v24 + 4;
    v7 = MEMORY[0x277D84F90];
    do
    {
      sub_23E8C9CA4(v6, &v24);
      sub_23E8C9CA4(&v24, v22);
      v8 = v22[0];
      v9 = v22[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_23E88A9A4(0, *(v7 + 2) + 1, 1, v7);
      }

      v11 = *(v7 + 2);
      v10 = *(v7 + 3);
      if (v11 >= v10 >> 1)
      {
        v7 = sub_23E88A9A4((v10 > 1), v11 + 1, 1, v7);
      }

      *(v7 + 2) = v11 + 1;
      v12 = &v7[16 * v11];
      *(v12 + 4) = v8;
      *(v12 + 5) = v9;
      sub_23E8A2384(&v23);
      sub_23E8C9CA4(&v24, v22);

      if (swift_dynamicCast())
      {
        v13 = v20;
        v14 = v21;
      }

      else
      {
        sub_23E8C9CA4(&v24, v22);

        v13 = sub_23E9008D4();
        v14 = v15;
      }

      v17 = *(v7 + 2);
      v16 = *(v7 + 3);
      if (v17 >= v16 >> 1)
      {
        v7 = sub_23E88A9A4((v16 > 1), v17 + 1, 1, v7);
      }

      sub_23E8C9D14(&v24);
      *(v7 + 2) = v17 + 1;
      v18 = &v7[16 * v17];
      *(v18 + 4) = v13;
      *(v18 + 5) = v14;
      v6 += 7;
      --v5;
    }

    while (v5);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v7;
}

id sub_23E8C8ECC()
{
  if (*(v0 + 8))
  {
    return 0;
  }

  v2 = *(v0 + 4);
  v3 = objc_opt_self();
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v4);
  (*(v5 + 48))(v4, v5);
  v6 = sub_23E900854();

  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v7);
  (*(v8 + 40))(v7, v8);
  v9 = sub_23E900854();

  v10 = [v3 nodeWithIdentifier:v2 name:v6 type:3 value:v9];

  return v10;
}

uint64_t sub_23E8C8FE8(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_23E8F2C5C(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_23E8C9054(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_23E8C9054(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23E900DC4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ED60, &qword_23E905168);
        v5 = sub_23E9009E4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_23E8C9290(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_23E8C915C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23E8C915C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 56 * a3;
    v8 = result - a3;
LABEL_6:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      sub_23E8C9CA4(v10, v21);
      v11 = v10 - 56;
      sub_23E8C9CA4(v10 - 56, v20);
      if (v21[0] == v20[0] && v21[1] == v20[1])
      {
        sub_23E8C9D14(v20);
        result = sub_23E8C9D14(v21);
LABEL_5:
        ++v4;
        v7 += 56;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v13 = sub_23E900E04();
      sub_23E8C9D14(v20);
      result = sub_23E8C9D14(v21);
      if ((v13 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *(v10 + 48);
      v16 = *(v10 + 16);
      v15 = *(v10 + 32);
      v17 = *v10;
      v18 = *(v10 - 40);
      *v10 = *v11;
      *(v10 + 16) = v18;
      *(v10 + 32) = *(v10 - 24);
      *(v10 + 48) = *(v10 - 8);
      *v11 = v17;
      *(v10 - 40) = v16;
      *(v10 - 24) = v15;
      v10 -= 56;
      *(v11 + 48) = v14;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23E8C9290(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v104 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_104:
    v7 = *v104;
    if (!*v104)
    {
      goto LABEL_142;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_106:
      v112 = v8;
      v95 = *(v8 + 2);
      if (v95 >= 2)
      {
        while (*a3)
        {
          v96 = *&v8[16 * v95];
          v97 = *&v8[16 * v95 + 24];
          sub_23E8C997C((*a3 + 56 * v96), (*a3 + 56 * *&v8[16 * v95 + 16]), *a3 + 56 * v97, v7);
          if (v5)
          {
          }

          if (v97 < v96)
          {
            goto LABEL_129;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_23E8F2A84(v8);
          }

          if (v95 - 2 >= *(v8 + 2))
          {
            goto LABEL_130;
          }

          v98 = &v8[16 * v95];
          *v98 = v96;
          *(v98 + 1) = v97;
          v112 = v8;
          result = sub_23E8F29F8(v95 - 1);
          v8 = v112;
          v95 = *(v112 + 2);
          if (v95 <= 1)
          {
          }
        }

        goto LABEL_140;
      }
    }

LABEL_136:
    result = sub_23E8F2A84(v8);
    v8 = result;
    goto LABEL_106;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *a3;
      sub_23E8C9CA4(*a3 + 56 * v7, &v110);
      sub_23E8C9CA4(v10 + 56 * v9, &v108);
      v11 = v110 == v108 && v111 == v109;
      v100 = v5;
      if (v11)
      {
        v105 = 0;
      }

      else
      {
        v105 = sub_23E900E04();
      }

      sub_23E8C9D14(&v108);
      result = sub_23E8C9D14(&v110);
      v12 = v9 + 2;
      v102 = v9;
      v5 = 56 * v9;
      v13 = v10 + 56 * v9 + 112;
      v14 = v5 + 56;
      do
      {
        v16 = v12;
        v17 = v7;
        v18 = v14;
        if (v12 >= v6)
        {
          break;
        }

        sub_23E8C9CA4(v13, &v110);
        sub_23E8C9CA4(v13 - 56, &v108);
        v19 = v110 == v108 && v111 == v109;
        v15 = v19 ? 0 : sub_23E900E04();
        sub_23E8C9D14(&v108);
        result = sub_23E8C9D14(&v110);
        v12 = (v16 + 1);
        v13 += 56;
        ++v7;
        v14 = v18 + 56;
      }

      while (((v105 ^ v15) & 1) == 0);
      if (v105)
      {
        v9 = v102;
        if (v16 < v102)
        {
          goto LABEL_133;
        }

        if (v102 < v16)
        {
          v20 = v102;
          do
          {
            if (v20 != v17)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_139;
              }

              v23 = (v22 + v5);
              v24 = *(v22 + v5 + 48);
              v25 = (v22 + v18);
              v27 = v23[1];
              v26 = v23[2];
              v28 = *v23;
              v30 = v25[1];
              v29 = v25[2];
              v31 = *v25;
              *(v23 + 6) = *(v25 + 6);
              v23[1] = v30;
              v23[2] = v29;
              *v23 = v31;
              *v25 = v28;
              v25[1] = v27;
              v25[2] = v26;
              *(v25 + 6) = v24;
            }

            ++v20;
            v18 -= 56;
            v5 += 56;
          }

          while (v20 < v17--);
        }

        v7 = v16;
        v5 = v100;
      }

      else
      {
        v7 = v16;
        v5 = v100;
        v9 = v102;
      }
    }

    v32 = a3[1];
    if (v7 < v32)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_132;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_53:
    if (v7 < v9)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23E88A1E0(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v49 = *(v8 + 2);
    v48 = *(v8 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      result = sub_23E88A1E0((v48 > 1), v49 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v50;
    v51 = &v8[16 * v49];
    *(v51 + 4) = v9;
    *(v51 + 5) = v7;
    v52 = *v104;
    if (!*v104)
    {
      goto LABEL_141;
    }

    if (v49)
    {
      while (1)
      {
        v53 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v54 = *(v8 + 4);
          v55 = *(v8 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_73:
          if (v57)
          {
            goto LABEL_120;
          }

          v70 = &v8[16 * v50];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_123;
          }

          v76 = &v8[16 * v53 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_127;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v53 = v50 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v80 = &v8[16 * v50];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_87:
        if (v75)
        {
          goto LABEL_122;
        }

        v83 = &v8[16 * v53];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_125;
        }

        if (v86 < v74)
        {
          goto LABEL_3;
        }

LABEL_94:
        v91 = v53 - 1;
        if (v53 - 1 >= v50)
        {
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
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
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
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*a3)
        {
          goto LABEL_138;
        }

        v92 = *&v8[16 * v91 + 32];
        v93 = *&v8[16 * v53 + 40];
        sub_23E8C997C((*a3 + 56 * v92), (*a3 + 56 * *&v8[16 * v53 + 32]), *a3 + 56 * v93, v52);
        if (v5)
        {
        }

        if (v93 < v92)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_23E8F2A84(v8);
        }

        if (v91 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v94 = &v8[16 * v91];
        *(v94 + 4) = v92;
        *(v94 + 5) = v93;
        v112 = v8;
        result = sub_23E8F29F8(v53);
        v8 = v112;
        v50 = *(v112 + 2);
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v58 = &v8[16 * v50 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_118;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_119;
      }

      v65 = &v8[16 * v50];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_121;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_124;
      }

      if (v69 >= v61)
      {
        v87 = &v8[16 * v53 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_128;
        }

        if (v56 < v90)
        {
          v53 = v50 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_104;
    }
  }

  v33 = (v9 + a4);
  if (__OFADD__(v9, a4))
  {
    goto LABEL_134;
  }

  if (v33 >= v32)
  {
    v33 = a3[1];
  }

  if (v33 < v9)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v7 == v33)
  {
    goto LABEL_53;
  }

  v101 = v5;
  v103 = v9;
  v34 = *a3;
  v35 = *a3 + 56 * v7;
  v36 = v9 - v7;
  v106 = v33;
LABEL_42:
  v37 = v36;
  v38 = v35;
  while (1)
  {
    sub_23E8C9CA4(v38, &v110);
    v39 = v38 - 56;
    sub_23E8C9CA4(v38 - 56, &v108);
    if (v110 == v108 && v111 == v109)
    {
      sub_23E8C9D14(&v108);
      sub_23E8C9D14(&v110);
LABEL_41:
      ++v7;
      v35 += 56;
      --v36;
      if (v7 == v106)
      {
        v7 = v106;
        v5 = v101;
        v9 = v103;
        goto LABEL_53;
      }

      goto LABEL_42;
    }

    v41 = sub_23E900E04();
    sub_23E8C9D14(&v108);
    result = sub_23E8C9D14(&v110);
    if ((v41 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (!v34)
    {
      break;
    }

    v42 = *(v38 + 48);
    v44 = *(v38 + 16);
    v43 = *(v38 + 32);
    v45 = *v38;
    v46 = *(v38 - 40);
    *v38 = *v39;
    *(v38 + 16) = v46;
    *(v38 + 32) = *(v38 - 24);
    *(v38 + 48) = *(v38 - 8);
    *v39 = v45;
    *(v38 - 40) = v44;
    *(v38 - 24) = v43;
    v38 -= 56;
    *(v39 + 48) = v42;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

uint64_t sub_23E8C997C(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 56;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 56;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[56 * v11] <= a4)
    {
      memmove(a4, __src, 56 * v11);
    }

    v12 = &v4[56 * v11];
    if (v10 < 56 || v6 <= v7)
    {
LABEL_43:
      v19 = v6;
    }

    else
    {
      do
      {
        v19 = v6 - 56;
        v20 = (v12 - 56);
        v5 -= 56;
        while (1)
        {
          sub_23E8C9CA4(v20, &v35);
          sub_23E8C9CA4((v6 - 56), &v33);
          v23 = v35 == v33 && v36 == v34;
          v24 = v23 ? 0 : sub_23E900E04();
          sub_23E8C9D14(&v33);
          sub_23E8C9D14(&v35);
          if (v24)
          {
            break;
          }

          if (v5 + 56 != v20 + 56)
          {
            v25 = *v20;
            v26 = *(v20 + 16);
            v27 = *(v20 + 32);
            *(v5 + 48) = *(v20 + 48);
            *(v5 + 16) = v26;
            *(v5 + 32) = v27;
            *v5 = v25;
          }

          v21 = v20 - 56;
          v5 -= 56;
          v22 = v20 > v4;
          v20 -= 56;
          if (!v22)
          {
            v12 = (v21 + 56);
            goto LABEL_43;
          }
        }

        if ((v5 + 56) != v6)
        {
          v28 = *v19;
          v29 = *(v6 - 40);
          v30 = *(v6 - 24);
          *(v5 + 48) = *(v6 - 1);
          *(v5 + 16) = v29;
          *(v5 + 32) = v30;
          *v5 = v28;
        }

        v12 = (v20 + 56);
        if (v20 + 56 <= v4)
        {
          break;
        }

        v6 -= 56;
      }

      while (v19 > v7);
      v12 = (v20 + 56);
    }
  }

  else
  {
    if (a4 != __dst || &__dst[56 * v9] <= a4)
    {
      memmove(a4, __dst, 56 * v9);
    }

    v12 = &v4[56 * v9];
    if (v8 >= 56 && v6 < v5)
    {
      while (1)
      {
        sub_23E8C9CA4(v6, &v35);
        sub_23E8C9CA4(v4, &v33);
        v13 = v35 == v33 && v36 == v34;
        if (v13)
        {
          break;
        }

        v14 = sub_23E900E04();
        sub_23E8C9D14(&v33);
        sub_23E8C9D14(&v35);
        if ((v14 & 1) == 0)
        {
          goto LABEL_16;
        }

        v15 = v6;
        v13 = v7 == v6;
        v6 += 56;
        if (!v13)
        {
          goto LABEL_17;
        }

LABEL_18:
        v7 += 56;
        if (v4 >= v12 || v6 >= v5)
        {
          goto LABEL_20;
        }
      }

      sub_23E8C9D14(&v33);
      sub_23E8C9D14(&v35);
LABEL_16:
      v15 = v4;
      v13 = v7 == v4;
      v4 += 56;
      if (v13)
      {
        goto LABEL_18;
      }

LABEL_17:
      v16 = *v15;
      v17 = *(v15 + 1);
      v18 = *(v15 + 2);
      *(v7 + 6) = *(v15 + 6);
      *(v7 + 1) = v17;
      *(v7 + 2) = v18;
      *v7 = v16;
      goto LABEL_18;
    }

LABEL_20:
    v19 = v7;
  }

  v31 = (v12 - v4) / 56;
  if (v19 != v4 || v19 >= &v4[56 * v31])
  {
    memmove(v19, v4, 56 * v31);
  }

  return 1;
}

uint64_t sub_23E8C9CA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ED60, &qword_23E905168);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E8C9D14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ED60, &qword_23E905168);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TextContent.color.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_23E8CA024(*(v1 + 16), 0);
  v4 = sub_23E8CAC60(&v11, (v3 + 32), v2, v1);

  sub_23E8A237C();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x277D84F90];
  }

  v11 = v3;
  sub_23E8CA14C(&v11);
  v5 = *(v11 + 2) + 1;
  v6 = v11;
  while (--v5)
  {
    v7 = v6 + 40;
    v8 = v6[52];
    v6 += 40;
    if (v8 == 5)
    {
      v9 = *(v7 - 1);
      sub_23E88FDE0(v9, *v7, *(v7 + 2), 5);

      return v9;
    }
  }

  return 0x3F8000003F800000;
}

uint64_t TextContent.font.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 40);
  v4 = *(v3 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = sub_23E8CA024(*(v3 + 16), 0);
  v6 = sub_23E8CAC60(&v15, (v5 + 32), v4, v3);

  sub_23E8A237C();
  if (v6 != v4)
  {
    __break(1u);
LABEL_4:
    v5 = MEMORY[0x277D84F90];
  }

  v15 = v5;
  sub_23E8CA14C(&v15);
  v7 = *(v15 + 2) + 1;
  v8 = v15;
  while (--v7)
  {
    v9 = v8 + 40;
    v10 = v8[52];
    v8 += 40;
    if (v10 == 4)
    {
      v11 = *(v9 - 1);
      v12 = *v9;
      v13 = *(v9 + 2);
      sub_23E88FDE0(v11, *v9, v13, 4);

      *a1 = v11;
      *(a1 + 8) = v12;
      *(a1 + 16) = v13;
      return result;
    }
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1096810496;
  return result;
}

void *sub_23E8CA024(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E860, &unk_23E905180);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_23E8CA0B4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ED58, &qword_23E905160);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4924924924924925) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

uint64_t sub_23E8CA14C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_23E8F2C48(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_23E8CA1B8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_23E8CA1B8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23E900DC4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_23E9009E4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_23E8CA374(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_23E8CA2B0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23E8CA2B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3 - 40;
    v6 = result - a3;
LABEL_5:
    v7 = v4 + 40 * a3;
    v8 = *(v7 + 24);
    v9 = *(v7 + 32);
    v10 = __OFSUB__(v9, v8);
    v11 = v6;
    v12 = v5;
    while (1)
    {
      result = *(v12 + 32);
      if (v8 >= result)
      {
LABEL_4:
        ++a3;
        v5 += 40;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (v10)
      {
        break;
      }

      v13 = *(v12 + 24);
      v14 = __OFSUB__(result, v13);
      result -= v13;
      if (v14)
      {
        goto LABEL_18;
      }

      if (result < v9 - v8)
      {
        if (!v4)
        {
          goto LABEL_19;
        }

        v15 = *(v12 + 40);
        v16 = *(v12 + 16);
        *(v12 + 40) = *v12;
        result = *(v12 + 56);
        v17 = *(v12 + 60);
        *(v12 + 56) = v16;
        *(v12 + 72) = *(v12 + 32);
        *v12 = v15;
        *(v12 + 16) = result;
        *(v12 + 20) = v17;
        *(v12 + 24) = v8;
        *(v12 + 32) = v9;
        v12 -= 40;
        if (!__CFADD__(v11++, 1))
        {
          continue;
        }
      }

      goto LABEL_4;
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_23E8CA374(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_103:
    v111 = *v6;
    if (!*v6)
    {
      goto LABEL_147;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_105:
      v103 = v10 + 16;
      v104 = *(v10 + 2);
      if (v104 >= 2)
      {
        while (*a3)
        {
          v105 = &v10[16 * v104];
          v106 = *v105;
          v107 = &v103[2 * v104];
          v108 = v107[1];
          sub_23E8CA9D0(*a3 + 40 * *v105, (*a3 + 40 * *v107), *a3 + 40 * v108, v111);
          if (v5)
          {
          }

          if (v108 < v106)
          {
            goto LABEL_131;
          }

          if (v104 - 2 >= *v103)
          {
            goto LABEL_132;
          }

          *v105 = v106;
          *(v105 + 1) = v108;
          v109 = *v103 - v104;
          if (*v103 < v104)
          {
            goto LABEL_133;
          }

          v104 = *v103 - 1;
          result = memmove(v107, v107 + 2, 16 * v109);
          *v103 = v104;
          if (v104 <= 1)
          {
          }
        }

        goto LABEL_145;
      }
    }

LABEL_141:
    result = sub_23E8F2A84(v10);
    v10 = result;
    goto LABEL_105;
  }

  v8 = a4;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  v111 = result;
  while (1)
  {
    v11 = v9++;
    if (v9 >= v7)
    {
      goto LABEL_29;
    }

    v12 = *a3 + 40 * v9;
    v15 = *(v12 + 24);
    v14 = v12 + 24;
    v13 = v15;
    v16 = *a3 + 40 * v11;
    v17 = *(v16 + 32);
    if (v15 >= v17)
    {
      v22 = 0;
    }

    else
    {
      v18 = *(v14 + 8);
      v72 = __OFSUB__(v18, v13);
      v19 = v18 - v13;
      if (v72)
      {
        goto LABEL_137;
      }

      v20 = *(v16 + 24);
      v72 = __OFSUB__(v17, v20);
      v21 = v17 - v20;
      if (v72)
      {
        goto LABEL_138;
      }

      v22 = v21 < v19;
    }

    v9 = v11 + 2;
    if (v11 + 2 >= v7)
    {
LABEL_18:
      if (!v22)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v23 = (*a3 + 40 * v11 + 112);
      do
      {
        v24 = *(v23 - 1);
        v25 = *(v23 - 5);
        if (v24 >= v25)
        {
          if (v22)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (__OFSUB__(*v23, v24))
          {
            goto LABEL_128;
          }

          v72 = __OFSUB__(v25, v13);
          v26 = v25 - v13;
          if (v72)
          {
            goto LABEL_129;
          }

          if (((v22 ^ (v26 >= *v23 - v24)) & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        ++v9;
        v23 += 5;
        v13 = v24;
      }

      while (v7 != v9);
      v9 = v7;
      if (!v22)
      {
        goto LABEL_29;
      }
    }

LABEL_21:
    if (v9 < v11)
    {
      goto LABEL_136;
    }

    if (v11 < v9)
    {
      v27 = 40 * v9 - 40;
      v28 = 40 * v11;
      v29 = v9;
      v30 = v11;
      do
      {
        if (v30 != --v29)
        {
          v31 = *a3;
          if (!*a3)
          {
            goto LABEL_144;
          }

          v32 = (v31 + v28);
          v33 = *(v31 + v28 + 16);
          v34 = (v31 + v27);
          v35 = *(v32 + 20);
          v36 = *(v32 + 24);
          v37 = *v32;
          v38 = *(v34 + 4);
          v39 = v34[1];
          *v32 = *v34;
          v32[1] = v39;
          *(v32 + 4) = v38;
          *v34 = v37;
          *(v34 + 4) = v33;
          *(v34 + 20) = v35;
          *(v34 + 24) = v36;
        }

        ++v30;
        v27 -= 40;
        v28 += 40;
      }

      while (v30 < v29);
      v7 = a3[1];
    }

LABEL_29:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_135;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_139;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
          goto LABEL_140;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_52:
    if (v9 < v11)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23E88A1E0(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v57 = *(v10 + 2);
    v56 = *(v10 + 3);
    v58 = v57 + 1;
    if (v57 >= v56 >> 1)
    {
      result = sub_23E88A1E0((v56 > 1), v57 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v58;
    v59 = &v10[16 * v57];
    *(v59 + 4) = v11;
    *(v59 + 5) = v9;
    v60 = *v6;
    if (!*v6)
    {
      goto LABEL_146;
    }

    if (v57)
    {
      while (1)
      {
        v61 = v58 - 1;
        if (v58 >= 4)
        {
          break;
        }

        if (v58 == 3)
        {
          v62 = *(v10 + 4);
          v63 = *(v10 + 5);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_72:
          if (v65)
          {
            goto LABEL_120;
          }

          v78 = &v10[16 * v58];
          v80 = *v78;
          v79 = *(v78 + 1);
          v81 = __OFSUB__(v79, v80);
          v82 = v79 - v80;
          v83 = v81;
          if (v81)
          {
            goto LABEL_123;
          }

          v84 = &v10[16 * v61 + 32];
          v86 = *v84;
          v85 = *(v84 + 1);
          v72 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v72)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v82, v87))
          {
            goto LABEL_127;
          }

          if (v82 + v87 >= v64)
          {
            if (v64 < v87)
            {
              v61 = v58 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v88 = &v10[16 * v58];
        v90 = *v88;
        v89 = *(v88 + 1);
        v72 = __OFSUB__(v89, v90);
        v82 = v89 - v90;
        v83 = v72;
LABEL_86:
        if (v83)
        {
          goto LABEL_122;
        }

        v91 = &v10[16 * v61];
        v93 = *(v91 + 4);
        v92 = *(v91 + 5);
        v72 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v72)
        {
          goto LABEL_125;
        }

        if (v94 < v82)
        {
          goto LABEL_3;
        }

LABEL_93:
        v99 = v61 - 1;
        if (v61 - 1 >= v58)
        {
          goto LABEL_115;
        }

        if (!*a3)
        {
          goto LABEL_143;
        }

        v100 = *&v10[16 * v99 + 32];
        v101 = *&v10[16 * v61 + 40];
        sub_23E8CA9D0(*a3 + 40 * v100, (*a3 + 40 * *&v10[16 * v61 + 32]), *a3 + 40 * v101, v60);
        if (v5)
        {
        }

        if (v101 < v100)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_23E8F2A84(v10);
        }

        if (v99 >= *(v10 + 2))
        {
          goto LABEL_117;
        }

        v102 = &v10[16 * v99];
        *(v102 + 4) = v100;
        *(v102 + 5) = v101;
        result = sub_23E8F29F8(v61);
        v58 = *(v10 + 2);
        if (v58 <= 1)
        {
          goto LABEL_3;
        }
      }

      v66 = &v10[16 * v58 + 32];
      v67 = *(v66 - 64);
      v68 = *(v66 - 56);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_118;
      }

      v71 = *(v66 - 48);
      v70 = *(v66 - 40);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_119;
      }

      v73 = &v10[16 * v58];
      v75 = *v73;
      v74 = *(v73 + 1);
      v72 = __OFSUB__(v74, v75);
      v76 = v74 - v75;
      if (v72)
      {
        goto LABEL_121;
      }

      v72 = __OFADD__(v64, v76);
      v77 = v64 + v76;
      if (v72)
      {
        goto LABEL_124;
      }

      if (v77 >= v69)
      {
        v95 = &v10[16 * v61 + 32];
        v97 = *v95;
        v96 = *(v95 + 1);
        v72 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v72)
        {
          goto LABEL_130;
        }

        if (v64 < v98)
        {
          v61 = v58 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v6 = v111;
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_103;
    }
  }

  v40 = *a3;
  v41 = *a3 + 40 * v9 - 40;
  v42 = v11 - v9;
LABEL_39:
  v43 = v40 + 40 * v9;
  v44 = *(v43 + 24);
  v45 = *(v43 + 32);
  v46 = __OFSUB__(v45, v44);
  v47 = v42;
  v48 = v41;
  while (1)
  {
    v49 = *(v48 + 32);
    if (v44 >= v49)
    {
LABEL_38:
      ++v9;
      v41 += 40;
      --v42;
      if (v9 != v7)
      {
        goto LABEL_39;
      }

      v9 = v7;
      goto LABEL_52;
    }

    if (v46)
    {
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
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
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
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
      goto LABEL_141;
    }

    result = *(v48 + 24);
    v72 = __OFSUB__(v49, result);
    v50 = v49 - result;
    if (v72)
    {
      goto LABEL_114;
    }

    if (v50 >= v45 - v44)
    {
      goto LABEL_38;
    }

    if (!v40)
    {
      break;
    }

    v51 = *(v48 + 40);
    v52 = *(v48 + 16);
    *(v48 + 40) = *v48;
    v53 = *(v48 + 56);
    v54 = *(v48 + 60);
    *(v48 + 56) = v52;
    *(v48 + 72) = *(v48 + 32);
    *v48 = v51;
    *(v48 + 16) = v53;
    *(v48 + 20) = v54;
    *(v48 + 24) = v44;
    *(v48 + 32) = v45;
    v48 -= 40;
    if (__CFADD__(v47++, 1))
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
  return result;
}

unint64_t sub_23E8CA9D0(unint64_t __dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = &__src[-__dst];
  v9 = &__src[-__dst] / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    if (a4 != __dst || __dst + 40 * v9 <= a4)
    {
      __dst = memmove(a4, __dst, 40 * v9);
    }

    v12 = &v4[40 * v9];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
LABEL_37:
      v36 = ((v12 - v4) * 0x6666666666666667) >> 64;
      v37 = (v36 >> 4) + (v36 >> 63);
      if (v6 != v4 || v6 >= &v4[40 * v37])
      {
        memmove(v6, v4, 40 * v37);
      }

      return 1;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v17 = *(v6 + 3);
      v18 = *(v4 + 4);
      if (v17 < v18)
      {
        v19 = *(v6 + 4);
        v20 = __OFSUB__(v19, v17);
        v21 = v19 - v17;
        if (v20)
        {
          __break(1u);
          goto LABEL_42;
        }

        v22 = *(v4 + 3);
        v20 = __OFSUB__(v18, v22);
        v23 = v18 - v22;
        if (v20)
        {
          goto LABEL_43;
        }

        if (v23 < v21)
        {
          break;
        }
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 40;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 40;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 40;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 1);
    *(v7 + 32) = *(v13 + 4);
    *v7 = v15;
    *(v7 + 16) = v16;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[40 * v11] <= a4)
  {
    __dst = memmove(a4, __src, 40 * v11);
  }

  v12 = &v4[40 * v11];
  if (v10 < 40 || v6 <= v7)
  {
    goto LABEL_37;
  }

LABEL_23:
  v5 -= 40;
  while (1)
  {
    v24 = *(v12 - 2);
    v25 = *(v6 - 1);
    if (v24 >= v25)
    {
      goto LABEL_29;
    }

    v26 = *(v12 - 1);
    v20 = __OFSUB__(v26, v24);
    v27 = v26 - v24;
    if (v20)
    {
      break;
    }

    v28 = *(v6 - 2);
    v20 = __OFSUB__(v25, v28);
    v29 = v25 - v28;
    if (v20)
    {
      goto LABEL_44;
    }

    if (v29 < v27)
    {
      v33 = v6 - 40;
      if ((v5 + 40) != v6)
      {
        v34 = *v33;
        v35 = *(v6 - 24);
        *(v5 + 32) = *(v6 - 1);
        *v5 = v34;
        *(v5 + 16) = v35;
      }

      if (v12 <= v4 || (v6 -= 40, v33 <= v7))
      {
        v6 = v33;
        goto LABEL_37;
      }

      goto LABEL_23;
    }

LABEL_29:
    v30 = v12 - 40;
    if ((v5 + 40) != v12)
    {
      v31 = *v30;
      v32 = *(v12 - 24);
      *(v5 + 32) = *(v12 - 1);
      *v5 = v31;
      *(v5 + 16) = v32;
    }

    v5 -= 40;
    v12 -= 40;
    if (v30 <= v4)
    {
      v12 = v30;
      goto LABEL_37;
    }
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return __dst;
}

void *sub_23E8CAC60(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + 40 * (v17 | (v12 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 20);
      v23 = *(v18 + 24);
      *v11 = *v18;
      *(v11 + 8) = v20;
      *(v11 + 16) = v21;
      *(v11 + 20) = v22;
      *(v11 + 24) = v23;
      if (v14 == v10)
      {
        sub_23E88FDE0(v19, v20, v21, v22);
        goto LABEL_24;
      }

      v11 += 40;
      sub_23E88FDE0(v19, v20, v21, v22);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v25 = v12 + 1;
    }

    else
    {
      v25 = (63 - v7) >> 6;
    }

    v12 = v25 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_23E8CADD0(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v10 = 0;
    v8 = 0;
LABEL_25:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v10;
    result[4] = v7;
    return v8;
  }

  v8 = a3;
  if (!a3)
  {
    v10 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v26 = result;
    v27 = -1 << *(a4 + 32);
    result = 0;
    v10 = 0;
    v11 = (63 - v5) >> 6;
    v12 = 1;
    while (v7)
    {
LABEL_14:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = v15 | (v10 << 6);
      v17 = a4;
      v18 = (*(a4 + 48) + 16 * v16);
      v19 = *v18;
      v20 = v18[1];
      sub_23E88FC10(*(a4 + 56) + 40 * v16, &v29);
      *&v28 = v19;
      *(&v28 + 1) = v20;
      v21 = v31;
      v35 = v31;
      v22 = v30;
      v23 = v29;
      v33 = v29;
      v34 = v30;
      v32 = v28;
      *v9 = v28;
      *(v9 + 16) = v23;
      *(v9 + 32) = v22;
      *(v9 + 48) = v21;
      if (v12 == v8)
      {

        v5 = v27;
        a4 = v17;
        goto LABEL_23;
      }

      v9 += 56;

      result = v12;
      v24 = __OFADD__(v12++, 1);
      a4 = v17;
      if (v24)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v13 = v10;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v14 >= v11)
      {
        break;
      }

      v7 = *(v4 + 8 * v14);
      ++v13;
      if (v7)
      {
        v10 = v14;
        goto LABEL_14;
      }
    }

    v7 = 0;
    if (v11 <= v10 + 1)
    {
      v25 = v10 + 1;
    }

    else
    {
      v25 = v11;
    }

    v10 = v25 - 1;
    v8 = result;
    v5 = v27;
LABEL_23:
    result = v26;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_23E8CAF84()
{
  v1 = v0;
  v2 = sub_23E9006D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RenderLayerType();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RenderLayerActionType();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E898E40(v1, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v17 = 0;
    if (EnumCaseMultiPayload == 2)
    {
      v18 = *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E8D0, &qword_23E906270) + 48)];
      (*(v3 + 32))(v6, v14, v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23E902EF0;
      strcpy((inited + 32), "uuidOfSubLayer");
      *(inited + 47) = -18;
      v22[0] = sub_23E9006A4();
      v22[1] = v20;
      sub_23E900C64();
      *(inited + 88) = 0x7865646E69;
      *(inited + 96) = 0xE500000000000000;
      v22[0] = v18;
      sub_23E900C64();
      v17 = sub_23E88F1F4(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E598, &unk_23E905080);
      swift_arrayDestroy();
      (*(v3 + 8))(v6, v2);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_23E893B20(v14, v10);
      v16 = sub_23E88ACD0();
    }

    else
    {
      sub_23E893B20(v14, v10);
      v16 = sub_23E88AF58();
    }

    v17 = v16;
    sub_23E8CBC54(v10, type metadata accessor for RenderLayerType);
  }

  return v17;
}

uint64_t sub_23E8CB28C(__int128 *a1)
{
  v3 = sub_23E9006D4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RenderLayerType();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RenderLayerActionType();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E898E40(v1, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v18 = *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E8D0, &qword_23E906270) + 48)];
      (*(v4 + 32))(v7, v15, v3);
      MEMORY[0x23EF17B90](2);
      sub_23E8CBBA4(&qword_27E35E5B8, MEMORY[0x277CC95F0]);
      sub_23E900824();
      MEMORY[0x23EF17B90](v18);
      return (*(v4 + 8))(v7, v3);
    }

    else
    {
      return MEMORY[0x23EF17B90](3);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_23E893B20(v15, v11);
      v17 = 1;
    }

    else
    {
      sub_23E893B20(v15, v11);
      v17 = 0;
    }

    MEMORY[0x23EF17B90](v17);
    sub_23E88B530(a1);
    return sub_23E8CBC54(v11, type metadata accessor for RenderLayerType);
  }
}

unint64_t sub_23E8CB518@<X0>(unint64_t *a1@<X8>)
{
  result = sub_23E8CAF84();
  *a1 = result;
  return result;
}

uint64_t sub_23E8CB540()
{
  sub_23E900EB4();
  sub_23E8CB28C(v1);
  return sub_23E900F14();
}

uint64_t sub_23E8CB584()
{
  sub_23E900EB4();
  sub_23E8CB28C(v1);
  return sub_23E900F14();
}

uint64_t type metadata accessor for RenderLayerActionType()
{
  result = qword_27E35F0E8;
  if (!qword_27E35F0E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23E8CB658(uint64_t a1)
{
  result = sub_23E8CBBA4(&qword_27E35F0D0, type metadata accessor for RenderLayerActionType);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23E8CB6B0(uint64_t a1)
{
  result = sub_23E8CBBA4(&qword_27E35F0D8, type metadata accessor for RenderLayerActionType);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23E8CB708(uint64_t a1, uint64_t a2)
{
  v4 = sub_23E9006D4();
  v45 = *(v4 - 8);
  v46 = v4;
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v4);
  v44 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RenderLayerType();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v43 - v12;
  v14 = type metadata accessor for RenderLayerActionType();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v43 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v43 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F0E0, &qword_23E906278);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v43 - v27;
  v29 = &v43 + *(v26 + 56) - v27;
  sub_23E898E40(a1, &v43 - v27);
  sub_23E898E40(a2, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_23E898E40(v28, v21);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v31 = v21;
        goto LABEL_15;
      }

      sub_23E893B20(v29, v11);
      v40 = sub_23E88EB14(v21, v11);
      sub_23E8CBC54(v11, type metadata accessor for RenderLayerType);
      v41 = v21;
    }

    else
    {
      sub_23E898E40(v28, v23);
      if (swift_getEnumCaseMultiPayload())
      {
        v31 = v23;
LABEL_15:
        sub_23E8CBC54(v31, type metadata accessor for RenderLayerType);
        goto LABEL_16;
      }

      sub_23E893B20(v29, v13);
      v40 = sub_23E88EB14(v23, v13);
      sub_23E8CBC54(v13, type metadata accessor for RenderLayerType);
      v41 = v23;
    }

    sub_23E8CBC54(v41, type metadata accessor for RenderLayerType);
LABEL_20:
    sub_23E8CBC54(v28, type metadata accessor for RenderLayerActionType);
    return v40 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_23E898E40(v28, v18);
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E8D0, &qword_23E906270) + 48);
    v33 = *&v18[v32];
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v34 = *&v29[v32];
      v36 = v44;
      v35 = v45;
      v37 = v46;
      (*(v45 + 32))(v44, v29, v46);
      v38 = sub_23E9006B4();
      v39 = *(v35 + 8);
      v39(v36, v37);
      v39(v18, v37);
      if ((v38 & 1) == 0)
      {
        sub_23E8CBC54(v28, type metadata accessor for RenderLayerActionType);
        goto LABEL_17;
      }

      v40 = v33 == v34;
      goto LABEL_20;
    }

    (*(v45 + 8))(v18, v46);
LABEL_16:
    sub_23E8CBBEC(v28);
LABEL_17:
    v40 = 0;
    return v40 & 1;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_16;
  }

  sub_23E8CBC54(v28, type metadata accessor for RenderLayerActionType);
  v40 = 1;
  return v40 & 1;
}

uint64_t sub_23E8CBBA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23E8CBBEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F0E0, &qword_23E906278);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23E8CBC54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_23E8CBCB4()
{
  type metadata accessor for RenderLayerType();
  if (v0 <= 0x3F)
  {
    sub_23E8CBD28();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_23E8CBD28()
{
  if (!qword_27E35F0F8)
  {
    sub_23E9006D4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27E35F0F8);
    }
  }
}

uint64_t sub_23E8CBD94()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F820, &qword_23E9064A0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v29 - v3;
  v5 = (v0 + *(type metadata accessor for RenderAssetAction() + 20));
  v6 = v5[4];
  v7 = v5[1];
  v40 = *v5;
  v41 = v7;
  v8 = v5[3];
  v42 = v5[2];
  v43 = v8;
  v44 = v6;
  v9 = v40;
  if ((*(&v6 + 1) & 0x2000000000000000) != 0)
  {
    v15 = BYTE8(v42);
    v16 = BYTE9(v42);
    v17 = v42;
    v29 = v41;
    *&v31 = v44;
    *(&v31 + 1) = *(&v6 + 1) & 0xDFFFFFFFFFFFFFFFLL;
    v30 = *(&v43 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6B8, &unk_23E9039B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23E902EF0;
    *(inited + 32) = 0x65707954656D696DLL;
    *(inited + 40) = 0xE800000000000000;
    v19 = 0x6E702F6567616D69;
    if (v16)
    {
      v19 = 0x504A2F6F65646976;
    }

    v20 = 0xE900000000000067;
    if (v16)
    {
      v20 = 0xEA00000000004745;
    }

    v35 = v19;
    v36 = v20;
    v37[3] = v43;
    v38 = v44;
    v37[1] = v41;
    v37[2] = v42;
    v37[0] = v40;
    v39 = *(&v44 + 1) & 0xDFFFFFFFFFFFFFFFLL;
    sub_23E8891B4(v37, &v32, &qword_27E35F110, &qword_23E906328);
    sub_23E900C64();
    *(inited + 88) = 0x657469727073;
    *(inited + 96) = 0xE600000000000000;
    v32 = v29;
    v33 = v17;
    v34 = v15 & 1;
    v21 = sub_23E8B42DC();
    if (v21)
    {
      *&v32 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E578, qword_23E904420);
      sub_23E8CC8CC(&qword_27E35E570, &qword_27E35E578, qword_23E904420);
      sub_23E900C64();
    }

    else
    {
      *(inited + 136) = 0;
      *(inited + 120) = 0u;
      *(inited + 104) = 0u;
    }

    v22 = sub_23E88FAD8(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6C0, &qword_23E906330);
    swift_arrayDestroy();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
    v23 = swift_initStackObject();
    *(v23 + 16) = xmmword_23E902EE0;
    *(v23 + 32) = 1701667182;
    *(v23 + 40) = 0xE400000000000000;
    v32 = v9;

    sub_23E900C64();
    *(v23 + 88) = 0x74736566696E616DLL;
    *(v23 + 96) = 0xE800000000000000;
    v24 = sub_23E88B1F4(v22);

    *&v32 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E578, qword_23E904420);
    sub_23E8CC8CC(&qword_27E35E570, &qword_27E35E578, qword_23E904420);
    sub_23E900C64();
    *(v23 + 144) = 1635017060;
    *(v23 + 152) = 0xE400000000000000;
    v25 = v31;
    v32 = v31;
    sub_23E8A78A8(v31, *(&v31 + 1));
    sub_23E8CC81C();
    sub_23E900C64();
    v26 = sub_23E88F1F4(v23);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E598, &unk_23E905080);
    swift_arrayDestroy();
    v27 = sub_23E9006D4();
    (*(*(v27 - 8) + 56))(v4, 1, 1, v27);
    v35 = v26;
    sub_23E900C64();
    v13 = sub_23E8991E4(0x7341657461657263, 0xEB00000000746573, v4, &v32);

    sub_23E8A7854(v25, *(&v25 + 1));
    v14 = &v32;
  }

  else
  {
    v10 = sub_23E9006D4();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F120, &qword_23E906338);
    v11 = swift_initStackObject();
    *(v11 + 16) = xmmword_23E903380;
    *(v11 + 32) = 1701667182;
    *(v11 + 40) = 0xE400000000000000;
    *(v11 + 48) = v9;
    sub_23E8CC870(&v40, v37);
    v12 = sub_23E88FCCC(v11);
    swift_setDeallocating();
    sub_23E87E458(v11 + 32, &qword_27E35F128, &qword_23E906340);
    *&v32 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F130, &qword_23E906348);
    sub_23E8CC8CC(&qword_27E35F138, &qword_27E35F130, &qword_23E906348);
    sub_23E900C64();
    v13 = sub_23E8991E4(0x734165766F6D6572, 0xEB00000000746573, v4, v37);
    v14 = v37;
  }

  sub_23E87E458(v14, &qword_27E35E6C8, &unk_23E9039A0);
  sub_23E87E458(v4, &unk_27E35F820, &qword_23E9064A0);
  return v13;
}

uint64_t sub_23E8CC3D8(uint64_t a1)
{
  sub_23E900EB4();
  sub_23E9006D4();
  sub_23E8CC934(&qword_27E35E5B8, MEMORY[0x277CC95F0]);
  sub_23E900824();
  v3 = (v1 + *(a1 + 20));
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v5 = *v3;
  v6 = v3[1];
  sub_23E8D1E60(v10);
  return sub_23E900F14();
}

uint64_t sub_23E8CC498(uint64_t a1, uint64_t a2)
{
  sub_23E9006D4();
  sub_23E8CC934(&qword_27E35E5B8, MEMORY[0x277CC95F0]);
  sub_23E900824();
  v5 = (v2 + *(a2 + 20));
  v9 = v5[2];
  v10 = v5[3];
  v11 = v5[4];
  v7 = *v5;
  v8 = v5[1];
  return sub_23E8D1E60(a1);
}

uint64_t sub_23E8CC548(uint64_t a1, uint64_t a2)
{
  sub_23E900EB4();
  sub_23E9006D4();
  sub_23E8CC934(&qword_27E35E5B8, MEMORY[0x277CC95F0]);
  sub_23E900824();
  v4 = (v2 + *(a2 + 20));
  v8 = v4[2];
  v9 = v4[3];
  v10 = v4[4];
  v6 = *v4;
  v7 = v4[1];
  sub_23E8D1E60(v11);
  return sub_23E900F14();
}

uint64_t type metadata accessor for RenderAssetAction()
{
  result = qword_27E35F140;
  if (!qword_27E35F140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23E8CC69C(uint64_t a1)
{
  result = sub_23E8CC934(&qword_27E35F108, type metadata accessor for RenderAssetAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23E8CC6F4(uint64_t a1, uint64_t a2)
{
  if (sub_23E9006B4())
  {
    v4 = type metadata accessor for RenderAssetAction();
    v5 = (a1 + *(v4 + 20));
    v6 = v5[1];
    v7 = v5[3];
    v29 = v5[2];
    v30 = v7;
    v8 = v5[3];
    v31 = v5[4];
    v9 = v5[1];
    v28[0] = *v5;
    v28[1] = v9;
    v25 = v29;
    v26 = v8;
    v27 = v5[4];
    v23 = v28[0];
    v24 = v6;
    v10 = (a2 + *(v4 + 20));
    v11 = v10[4];
    v12 = v10[1];
    v13 = v10[2];
    v33 = v10[3];
    v34 = v11;
    v14 = *v10;
    v15 = *v10;
    v32[1] = v10[1];
    v32[2] = v13;
    v32[0] = v14;
    v20 = v13;
    v21 = v33;
    v22 = v10[4];
    v18 = v15;
    v19 = v12;
    sub_23E8CC870(v28, v36);
    sub_23E8CC870(v32, v36);
    v16 = sub_23E8D26D4(&v23, &v18);
    v35[2] = v20;
    v35[3] = v21;
    v35[4] = v22;
    v35[0] = v18;
    v35[1] = v19;
    sub_23E8CC97C(v35);
    v36[2] = v25;
    v36[3] = v26;
    v36[4] = v27;
    v36[0] = v23;
    v36[1] = v24;
    sub_23E8CC97C(v36);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

unint64_t sub_23E8CC81C()
{
  result = qword_27E35F118;
  if (!qword_27E35F118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F118);
  }

  return result;
}

uint64_t sub_23E8CC8CC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_23E8CC934(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23E8CC9E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23E9006D4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 40);
    v11 = (v10 >> 2) & 0xFFFFFF80 | (v10 >> 1);
    if (v11 > 0x80000000)
    {
      return -v11;
    }

    else
    {
      return 0;
    }
  }
}

double sub_23E8CCABC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23E9006D4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = a1 + *(a4 + 20);
    result = 0.0;
    *v12 = 0u;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0;
    *(v12 + 40) = (4 * -a2) & 0x3FFFFFE00 | (2 * (-a2 & 0x7FLL));
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
  }

  return result;
}

uint64_t sub_23E8CCB90()
{
  result = sub_23E9006D4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23E8CCC04@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(*a1 + *MEMORY[0x277D84308] + 8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v13 - v9;
  (*(*(*v11 - 8) + 16))(a3, v3);
  (*(v7 + 16))(v10, a2, v6);
  return swift_setAtWritableKeyPath();
}

unint64_t sub_23E8CCD48()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  v4 = *(v0 + 20);
  v5 = v0[3];
  v6 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E903900;
  *(inited + 32) = 0x646E497472617473;
  *(inited + 40) = 0xEA00000000007865;
  sub_23E900C64();
  *(inited + 88) = 0x7865646E49646E65;
  *(inited + 96) = 0xE800000000000000;
  sub_23E900C64();
  *(inited + 144) = 1701667182;
  *(inited + 152) = 0xE400000000000000;
  sub_23E900C64();
  *(inited + 200) = 0x65756C6176;
  *(inited + 208) = 0xE500000000000000;
  sub_23E8CCFAC();
  v8 = sub_23E88F1F4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E598, &unk_23E905080);
  swift_arrayDestroy();
  return v8;
}

uint64_t sub_23E8CCFAC()
{
  v1 = *(v0 + 20);
  if (v1 <= 2)
  {
    if (*(v0 + 20))
    {
      return sub_23E900C64();
    }

    goto LABEL_8;
  }

  if (*(v0 + 20) > 4u)
  {
    if (v1 != 5)
    {
      return sub_23E900C64();
    }

LABEL_8:
    sub_23E8FE5C8(*v0, *(v0 + 8), *(v0 + 16));
    goto LABEL_9;
  }

  if (v1 != 3)
  {
    v3 = *v0;
    v4 = *(v0 + 8);
    v5 = *(v0 + 16);
    sub_23E8D758C();
LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5A0, &qword_23E902F38);
    sub_23E8819CC();
  }

  return sub_23E900C64();
}

unint64_t sub_23E8CD078@<X0>(unint64_t *a1@<X8>)
{
  result = sub_23E8CCD48();
  *a1 = result;
  return result;
}

unint64_t sub_23E8CD0A0(uint64_t a1)
{
  result = sub_23E8CD0C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8CD0C8()
{
  result = qword_27E35F150;
  if (!qword_27E35F150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F150);
  }

  return result;
}

unint64_t sub_23E8CD11C(uint64_t a1)
{
  result = sub_23E8CD144();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8CD144()
{
  result = qword_27E35F158;
  if (!qword_27E35F158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F158);
  }

  return result;
}

uint64_t sub_23E8CD198@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E902EF0;
  *(inited + 32) = 120;
  *(inited + 40) = 0xE100000000000000;
  sub_23E900C64();
  *(inited + 88) = 121;
  *(inited + 96) = 0xE100000000000000;
  sub_23E900C64();
  v6 = sub_23E88F1F4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E598, &unk_23E905080);
  result = swift_arrayDestroy();
  *a1 = v6;
  return result;
}

unint64_t sub_23E8CD2A0(uint64_t a1)
{
  result = sub_23E89C9BC();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23E8CD2C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F820, &qword_23E9064A0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v19 - v3;
  v5 = sub_23E9006D4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F170, &qword_23E9064A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E903380;
  *(inited + 32) = 0x6E6F6974636E7566;
  *(inited + 40) = 0xE900000000000073;
  v7 = *(v0 + *(type metadata accessor for RenderTransactionAction() + 20));
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + 32;
    v10 = MEMORY[0x277D84F90];
    do
    {
      sub_23E8810DC(v9, v20);
      v11 = v21;
      v12 = v22;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      v13 = (*(v12 + 24))(v11, v12);
      __swift_destroy_boxed_opaque_existential_1(v20);
      if (v13)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_23E88A418(0, v10[2] + 1, 1, v10);
        }

        v15 = v10[2];
        v14 = v10[3];
        if (v15 >= v14 >> 1)
        {
          v10 = sub_23E88A418((v14 > 1), v15 + 1, 1, v10);
        }

        v10[2] = v15 + 1;
        v10[v15 + 4] = v13;
      }

      v9 += 40;
      --v8;
    }

    while (v8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  *(inited + 48) = v10;
  v16 = sub_23E88FF10(inited);
  swift_setDeallocating();
  sub_23E87E458(inited + 32, &qword_27E35F178, &qword_23E9064B0);
  v19[1] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F180, &qword_23E9064B8);
  sub_23E8CD924();
  sub_23E900C64();
  v17 = sub_23E8991E4(0x746361736E617274, 0xEB000000006E6F69, v4, v20);
  sub_23E87E458(v20, &qword_27E35E6C8, &unk_23E9039A0);
  sub_23E87E458(v4, &unk_27E35F820, &qword_23E9064A0);
  return v17;
}

void sub_23E8CD5A0(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F5C0, &unk_23E905D80);

  JUMPOUT(0x23EF17690);
}

uint64_t sub_23E8CD5F0()
{
  sub_23E900EB4();
  v1 = *(v0 + *(type metadata accessor for RenderTransactionAction() + 20));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      sub_23E8810DC(v3, v7);
      v4 = v7[4];
      __swift_project_boxed_opaque_existential_1(v7, v7[3]);
      v5 = *(v4 + 8);
      sub_23E900824();
      __swift_destroy_boxed_opaque_existential_1(v7);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return sub_23E900F14();
}

uint64_t sub_23E8CD69C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + *(a2 + 20));
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    do
    {
      sub_23E8810DC(v5, v9);
      v6 = v9[4];
      __swift_project_boxed_opaque_existential_1(v9, v9[3]);
      v7 = *(v6 + 8);
      sub_23E900824();
      result = __swift_destroy_boxed_opaque_existential_1(v9);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_23E8CD72C(uint64_t a1, uint64_t a2)
{
  sub_23E900EB4();
  v4 = *(v2 + *(a2 + 20));
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    do
    {
      sub_23E8810DC(v6, v10);
      v7 = v10[4];
      __swift_project_boxed_opaque_existential_1(v10, v10[3]);
      v8 = *(v7 + 8);
      sub_23E900824();
      __swift_destroy_boxed_opaque_existential_1(v10);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return sub_23E900F14();
}

uint64_t type metadata accessor for RenderTransactionAction()
{
  result = qword_27E35F1A0;
  if (!qword_27E35F1A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23E8CD89C(uint64_t a1)
{
  result = sub_23E8CD8E0(&qword_27E35F168);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23E8CD8E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RenderTransactionAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23E8CD924()
{
  result = qword_27E35F188;
  if (!qword_27E35F188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35F180, &qword_23E9064B8);
    sub_23E8CD9A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F188);
  }

  return result;
}

unint64_t sub_23E8CD9A8()
{
  result = qword_27E35F190;
  if (!qword_27E35F190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35F198, &unk_23E9064C0);
    sub_23E881570();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F190);
  }

  return result;
}

uint64_t sub_23E8CDA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23E9006D4();
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

uint64_t sub_23E8CDB10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23E9006D4();
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

void sub_23E8CDBC8()
{
  sub_23E9006D4();
  if (v0 <= 0x3F)
  {
    sub_23E8CDC4C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23E8CDC4C()
{
  if (!qword_27E35F1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35F5C0, &unk_23E905D80);
    v0 = sub_23E900A04();
    if (!v1)
    {
      atomic_store(v0, &qword_27E35F1B0);
    }
  }
}

uint64_t sub_23E8CDCB0()
{
  MEMORY[0x23EF18560](*(v0 + 16), -1, -1);

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of AirPlayConnectionProtocol.send(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 64);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_23E888F34;

  return v11(a1, a2, a3);
}

unint64_t sub_23E8CDEC8()
{
  v1 = sub_23E9005E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v30[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for ImageContent.ContentType(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23E8D0D78(v0, v9, type metadata accessor for ImageContent.ContentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v16 = *v9;
      v17 = *(v9 + 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23E903380;
      *(inited + 32) = 0x614E6D6574737973;
      *(inited + 40) = 0xEB0000000064656DLL;
      v31 = v16;
      v32 = v17;
      sub_23E900C64();
      v15 = sub_23E88F1F4(inited);
      swift_setDeallocating();
      sub_23E87E458(inited + 32, &qword_27E35E598, &unk_23E905080);
    }

    else
    {
      (*(v2 + 32))(v5, v9, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
      v26 = swift_initStackObject();
      *(v26 + 16) = xmmword_23E903380;
      *(v26 + 32) = 7107189;
      *(v26 + 40) = 0xE300000000000000;
      v31 = sub_23E900584();
      v32 = v27;
      sub_23E900C64();
      v15 = sub_23E88F1F4(v26);
      swift_setDeallocating();
      sub_23E87E458(v26 + 32, &qword_27E35E598, &unk_23E905080);
      (*(v2 + 8))(v5, v1);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v20 = *v9;
      v19 = *(v9 + 1);
      v21 = *(v9 + 7);
      v22 = *(v9 + 8);
      v23 = v9[72];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6B8, &unk_23E9039B0);
      v24 = swift_initStackObject();
      *(v24 + 16) = xmmword_23E902EF0;
      *(v24 + 32) = 0x696669746E656469;
      *(v24 + 40) = 0xEA00000000007265;
      v31 = v20;
      v32 = v19;

      sub_23E900C64();
      *(v24 + 88) = 0x6F6974616D696E61;
      *(v24 + 96) = 0xEA0000000000736ELL;
      v31 = v22;
      LOBYTE(v32) = v23;
      v25 = sub_23E8CE5F0(&v31);

      if (v25)
      {
        v31 = v25;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F198, &unk_23E9064C0);
        sub_23E8CD9A8();
        sub_23E900C64();
      }

      else
      {
        *(v24 + 136) = 0;
        *(v24 + 120) = 0u;
        *(v24 + 104) = 0u;
      }

      v28 = sub_23E88FAD8(v24);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6C0, &qword_23E906330);
      swift_arrayDestroy();
      v15 = sub_23E88B1F4(v28);
    }

    else
    {
      v11 = *v9;
      v12 = *(v9 + 1);
      v13 = *(v9 + 7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_23E903380;
      *(v14 + 32) = 0x696669746E656469;
      *(v14 + 40) = 0xEA00000000007265;
      v31 = v11;
      v32 = v12;

      sub_23E900C64();
      v15 = sub_23E88F1F4(v14);
      swift_setDeallocating();
      sub_23E87E458(v14 + 32, &qword_27E35E598, &unk_23E905080);
    }
  }

  return v15;
}

uint64_t sub_23E8CE3CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6B8, &unk_23E9039B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E9051C0;
  *(inited + 32) = 0x6576727563;
  *(inited + 40) = 0xE500000000000000;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F1C8, &qword_23E906930);
  v3 = (v0 + v2[13]);
  v7 = *v3;
  v10 = *(v3 + 16);
  if (sub_23E8F34A0())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E578, qword_23E904420);
    sub_23E881570();
    sub_23E900C64();
  }

  else
  {
    *(inited + 80) = 0;
    *(inited + 48) = 0u;
    *(inited + 64) = 0u;
  }

  *(inited + 88) = 0x79616C6564;
  *(inited + 96) = 0xE500000000000000;
  v8 = *(v0 + v2[10]);
  sub_23E900C64();
  *(inited + 144) = 0x6E6F697461727564;
  *(inited + 152) = 0xE800000000000000;
  v9 = *(v0 + v2[9]);
  sub_23E900C64();
  *(inited + 200) = 0x65756C61566F74;
  *(inited + 208) = 0xE700000000000000;
  *(inited + 216) = 0u;
  *(inited + 232) = 0u;
  *(inited + 248) = 0;
  *(inited + 256) = 0x756C61566D6F7266;
  *(inited + 264) = 0xE900000000000065;
  *(inited + 272) = 0u;
  *(inited + 288) = 0u;
  *(inited + 304) = 0;
  v4 = sub_23E88FAD8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6C0, &qword_23E906330);
  swift_arrayDestroy();
  v5 = sub_23E88B1F4(v4);

  return v5;
}

uint64_t sub_23E8CE5F0(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F1C8, &qword_23E906930);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v176 = &v167 - v4;
  v5 = type metadata accessor for SpriteSheetAnimation();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = (&v167 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v7);
  v13 = (&v167 - v12);
  v14 = *a1;
  if (*(a1 + 8))
  {
    v15 = 0;
    if (*(a1 + 8) != 1)
    {
      return v15;
    }

    v171 = *(v14 + 16);
    if (v171)
    {
      v16 = 0;
      v172 = 0;
      v175 = *(v10 + 20);
      v17 = *(v11 + 80);
      v169 = *(v11 + 72);
      v170 = v14 + ((v17 + 32) & ~v17);
      v168 = 0x800000023E909100;
      v15 = MEMORY[0x277D84F90];
      v167 = xmmword_23E903380;
      v173 = v9;
      while (1)
      {
        v178 = v15;
        sub_23E8D0D78(v170 + v169 * v16, v9, type metadata accessor for SpriteSheetAnimation);
        v18 = sub_23E8CE3CC();
        v174 = v16;
        if (v18)
        {
          break;
        }

LABEL_41:
        v200 = 0x55557463656A626FLL;
        v201 = 0xEA00000000004449;
        v58 = v176;
        sub_23E8891B4(v9 + v175, v176, &qword_27E35F1C8, &qword_23E906930);
        v59 = sub_23E9006A4();
        v61 = v60;
        v62 = sub_23E9006D4();
        (*(*(v62 - 8) + 8))(v58, v62);
        v202 = v59;
        v203 = v61;
        strcpy(v204, "animationType");
        HIWORD(v204[1]) = -4864;
        v205 = 0x6E69746165706572;
        v206 = 0xE900000000000067;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6E8, &qword_23E903448);
        v63 = sub_23E900D64();

        v64 = v200;
        v65 = v201;
        v67 = v202;
        v66 = v203;

        v68 = sub_23E88CA70(v64, v65);
        if (v69)
        {
          goto LABEL_112;
        }

        *(v63 + ((v68 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v68;
        v70 = (v63[6] + 16 * v68);
        *v70 = v64;
        v70[1] = v65;
        v71 = (v63[7] + 16 * v68);
        *v71 = v67;
        v71[1] = v66;
        v72 = v63[2];
        v56 = __OFADD__(v72, 1);
        v73 = v72 + 1;
        if (v56)
        {
          goto LABEL_114;
        }

        v63[2] = v73;
        v74 = v204[0];
        v75 = v204[1];
        v77 = v205;
        v76 = v206;

        v78 = sub_23E88CA70(v74, v75);
        if (v79)
        {
          goto LABEL_112;
        }

        *(v63 + ((v78 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v78;
        v80 = (v63[6] + 16 * v78);
        *v80 = v74;
        v80[1] = v75;
        v81 = (v63[7] + 16 * v78);
        *v81 = v77;
        v81[1] = v76;
        v82 = v63[2];
        v56 = __OFADD__(v82, 1);
        v83 = v82 + 1;
        if (v56)
        {
          goto LABEL_114;
        }

        v63[2] = v83;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F128, &qword_23E906340);
        swift_arrayDestroy();
        if (v18)
        {
          v84 = sub_23E8CF5C4(v63);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v195 = v18;
          v86 = v172;
          sub_23E8A1DBC(v84, sub_23E8CF910, 0, isUniquelyReferenced_nonNull_native, &v195);

          v87 = v195;
          v9 = v173;
          if (v86)
          {
            goto LABEL_117;
          }

          sub_23E8D0D1C(v173);
          v88 = swift_isUniquelyReferenced_nonNull_native();
          v172 = 0;
          if (v88)
          {
            v15 = v178;
          }

          else
          {
            v15 = sub_23E88A418(0, v178[2] + 1, 1, v178);
          }

          v90 = v15[2];
          v89 = v15[3];
          if (v90 >= v89 >> 1)
          {
            v15 = sub_23E88A418((v89 > 1), v90 + 1, 1, v15);
          }

          v15[2] = v90 + 1;
          v15[v90 + 4] = v87;
        }

        else
        {
          v9 = v173;
          sub_23E8D0D1C(v173);

          v15 = v178;
        }

        v16 = v174 + 1;
        if (v174 + 1 == v171)
        {
          return v15;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
      inited = swift_initStackObject();
      *(inited + 32) = 0xD000000000000013;
      *(inited + 16) = v167;
      *(inited + 40) = v168;
      v20 = v9[1];
      *&v195 = *v9;
      *(&v195 + 1) = v20;

      sub_23E900C64();
      v21 = sub_23E88F1F4(inited);
      swift_setDeallocating();
      sub_23E87E458(inited + 32, &qword_27E35E598, &unk_23E905080);
      v22 = swift_isUniquelyReferenced_nonNull_native();
      v199 = v18;
      v23 = v21 + 64;
      v24 = 1 << *(v21 + 32);
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      else
      {
        v25 = -1;
      }

      v26 = v25 & *(v21 + 64);
      v177 = (v24 + 63) >> 6;
      v179 = v21;

      v27 = 0;
      for (i = v21 + 64; ; v23 = i)
      {
        v182 = v18;
        v181 = v22;
        if (!v26)
        {
          if (v177 <= v27 + 1)
          {
            v29 = v27 + 1;
          }

          else
          {
            v29 = v177;
          }

          v30 = v29 - 1;
          while (1)
          {
            v28 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v28 >= v177)
            {
              v35 = 0;
              v34 = 0;
              v36 = 0;
              v37 = 0;
              v39 = 0;
              v38 = 0;
              v40 = 0;
              v26 = 0;
              v27 = v30;
              goto LABEL_25;
            }

            v26 = *(v23 + 8 * v28);
            ++v27;
            if (v26)
            {
              v27 = v28;
              goto LABEL_24;
            }
          }

          __break(1u);
          goto LABEL_107;
        }

        v28 = v27;
LABEL_24:
        v31 = __clz(__rbit64(v26));
        v26 &= v26 - 1;
        v32 = v31 | (v28 << 6);
        v33 = (*(v179 + 48) + 16 * v32);
        v35 = *v33;
        v34 = v33[1];
        sub_23E88FC10(*(v179 + 56) + 40 * v32, &v190);
        v37 = *(&v190 + 1);
        v36 = v190;
        v38 = *(&v191 + 1);
        v39 = v191;
        v40 = v192;

LABEL_25:
        *&v190 = v35;
        *(&v190 + 1) = v34;
        *&v191 = v36;
        *(&v191 + 1) = v37;
        v192 = v39;
        v193 = v38;
        v194 = v40;
        if (!v34)
        {
          v198 = 0;
          v196 = 0u;
          v197 = 0u;
          v195 = 0u;
          v18 = v182;
LABEL_40:

          v9 = v173;
          goto LABEL_41;
        }

        sub_23E88FC10(&v191, &v196);
        *&v195 = v35;
        *(&v195 + 1) = v34;

        sub_23E87E458(&v190, &qword_27E35ED60, &qword_23E905168);
        v41 = *(&v195 + 1);
        v18 = v182;
        if (!*(&v195 + 1))
        {
          goto LABEL_40;
        }

        v42 = v195;
        v190 = v196;
        v191 = v197;
        v192 = v198;
        v44 = sub_23E88CA70(v195, *(&v195 + 1));
        v45 = v18[2];
        v46 = (v43 & 1) == 0;
        v47 = v45 + v46;
        if (__OFADD__(v45, v46))
        {
          goto LABEL_108;
        }

        v48 = v43;
        if (v18[3] >= v47)
        {
          if (v181)
          {
            v18 = v199;
            if (v43)
            {
              goto LABEL_12;
            }
          }

          else
          {
            sub_23E8CFC74();
            v18 = v199;
            if (v48)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
          sub_23E88D2B4(v47, v181 & 1);
          v49 = sub_23E88CA70(v42, v41);
          if ((v48 & 1) != (v50 & 1))
          {
            goto LABEL_116;
          }

          v44 = v49;
          v18 = v199;
          if (v48)
          {
LABEL_12:

            sub_23E8A23D8(&v190, v18[7] + 40 * v44);
            goto LABEL_13;
          }
        }

        v18[(v44 >> 6) + 8] |= 1 << v44;
        v51 = (v18[6] + 16 * v44);
        *v51 = v42;
        v51[1] = v41;
        v52 = v18[7] + 40 * v44;
        v53 = v190;
        v54 = v191;
        *(v52 + 32) = v192;
        *v52 = v53;
        *(v52 + 16) = v54;
        v55 = v18[2];
        v56 = __OFADD__(v55, 1);
        v57 = v55 + 1;
        if (v56)
        {
          goto LABEL_110;
        }

        v18[2] = v57;
LABEL_13:
        v22 = 1;
      }
    }

    return MEMORY[0x277D84F90];
  }

  v171 = *(v14 + 16);
  if (!v171)
  {
    return MEMORY[0x277D84F90];
  }

  v91 = 0;
  v172 = 0;
  v175 = *(v10 + 20);
  v92 = *(v11 + 80);
  v169 = *(v11 + 72);
  v170 = v14 + ((v92 + 32) & ~v92);
  v168 = 0x800000023E909100;
  v15 = MEMORY[0x277D84F90];
  v167 = xmmword_23E903380;
  v173 = (&v167 - v12);
  while (1)
  {
    v178 = v15;
    v174 = v91;
    sub_23E8D0D78(v170 + v169 * v91, v13, type metadata accessor for SpriteSheetAnimation);
    v93 = sub_23E8CE3CC();
    if (v93)
    {
      v94 = v93;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
      v95 = swift_initStackObject();
      *(v95 + 32) = 0xD000000000000013;
      *(v95 + 16) = v167;
      *(v95 + 40) = v168;
      v96 = v13[1];
      *&v195 = *v13;
      *(&v195 + 1) = v96;

      sub_23E900C64();
      v97 = sub_23E88F1F4(v95);
      swift_setDeallocating();
      sub_23E87E458(v95 + 32, &qword_27E35E598, &unk_23E905080);
      v98 = swift_isUniquelyReferenced_nonNull_native();
      v199 = v94;
      v99 = v97 + 64;
      v100 = 1 << *(v97 + 32);
      if (v100 < 64)
      {
        v101 = ~(-1 << v100);
      }

      else
      {
        v101 = -1;
      }

      v102 = v101 & *(v97 + 64);
      v177 = (v100 + 63) >> 6;
      v179 = v97;

      v103 = 0;
      for (i = v97 + 64; ; v99 = i)
      {
        v182 = v94;
        v181 = v98;
        if (!v102)
        {
          if (v177 <= v103 + 1)
          {
            v105 = v103 + 1;
          }

          else
          {
            v105 = v177;
          }

          v106 = v105 - 1;
          while (1)
          {
            v104 = v103 + 1;
            if (__OFADD__(v103, 1))
            {
              break;
            }

            if (v104 >= v177)
            {
              v116 = 0;
              v114 = 0;
              v115 = 0;
              v113 = 0;
              v112 = 0;
              v110 = 0;
              v111 = 0;
              v102 = 0;
              v103 = v106;
              goto LABEL_75;
            }

            v102 = *(v99 + 8 * v104);
            ++v103;
            if (v102)
            {
              v103 = v104;
              goto LABEL_74;
            }
          }

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
          goto LABEL_115;
        }

        v104 = v103;
LABEL_74:
        v107 = __clz(__rbit64(v102));
        v102 &= v102 - 1;
        v108 = v107 | (v104 << 6);
        v109 = (*(v179 + 48) + 16 * v108);
        v111 = *v109;
        v110 = v109[1];
        sub_23E88FC10(*(v179 + 56) + 40 * v108, &v190);
        v113 = *(&v190 + 1);
        v112 = v190;
        v114 = *(&v191 + 1);
        v115 = v191;
        v116 = v192;

LABEL_75:
        *&v190 = v111;
        *(&v190 + 1) = v110;
        *&v191 = v112;
        *(&v191 + 1) = v113;
        v192 = v115;
        v193 = v114;
        v194 = v116;
        if (!v110)
        {
          v198 = 0;
          v196 = 0u;
          v197 = 0u;
          v195 = 0u;
          v118 = v182;
LABEL_91:

          v13 = v173;
          goto LABEL_92;
        }

        sub_23E88FC10(&v191, &v196);
        *&v195 = v111;
        *(&v195 + 1) = v110;

        sub_23E87E458(&v190, &qword_27E35ED60, &qword_23E905168);
        v117 = *(&v195 + 1);
        v118 = v182;
        if (!*(&v195 + 1))
        {
          goto LABEL_91;
        }

        v119 = v195;
        v190 = v196;
        v191 = v197;
        v192 = v198;
        v121 = sub_23E88CA70(v195, *(&v195 + 1));
        v122 = v118[2];
        v123 = (v120 & 1) == 0;
        v124 = v122 + v123;
        if (__OFADD__(v122, v123))
        {
          goto LABEL_109;
        }

        v125 = v120;
        if (v118[3] >= v124)
        {
          if (v181)
          {
            v94 = v199;
            if (v120)
            {
              goto LABEL_62;
            }
          }

          else
          {
            sub_23E8CFC74();
            v94 = v199;
            if (v125)
            {
              goto LABEL_62;
            }
          }
        }

        else
        {
          sub_23E88D2B4(v124, v181 & 1);
          v126 = sub_23E88CA70(v119, v117);
          if ((v125 & 1) != (v127 & 1))
          {
            goto LABEL_116;
          }

          v121 = v126;
          v94 = v199;
          if (v125)
          {
LABEL_62:

            sub_23E8A23D8(&v190, v94[7] + 40 * v121);
            goto LABEL_63;
          }
        }

        v94[(v121 >> 6) + 8] |= 1 << v121;
        v128 = (v94[6] + 16 * v121);
        *v128 = v119;
        v128[1] = v117;
        v129 = v94[7] + 40 * v121;
        v130 = v190;
        v131 = v191;
        *(v129 + 32) = v192;
        *v129 = v130;
        *(v129 + 16) = v131;
        v132 = v94[2];
        v56 = __OFADD__(v132, 1);
        v133 = v132 + 1;
        if (v56)
        {
          goto LABEL_111;
        }

        v94[2] = v133;
LABEL_63:
        v98 = 1;
      }
    }

    v118 = 0;
LABEL_92:
    v183 = 0x55557463656A626FLL;
    v184 = 0xEA00000000004449;
    v134 = v176;
    sub_23E8891B4(v13 + v175, v176, &qword_27E35F1C8, &qword_23E906930);
    v135 = sub_23E9006A4();
    v137 = v136;
    v138 = sub_23E9006D4();
    (*(*(v138 - 8) + 8))(v134, v138);
    v185 = v135;
    v186 = v137;
    strcpy(v187, "animationType");
    HIWORD(v187[1]) = -4864;
    v188 = 1701015151;
    v189 = 0xE400000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6E8, &qword_23E903448);
    v139 = sub_23E900D64();

    v140 = v183;
    v141 = v184;
    v143 = v185;
    v142 = v186;

    v144 = sub_23E88CA70(v140, v141);
    if (v145)
    {
      goto LABEL_113;
    }

    *(v139 + ((v144 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v144;
    v146 = (v139[6] + 16 * v144);
    *v146 = v140;
    v146[1] = v141;
    v147 = (v139[7] + 16 * v144);
    *v147 = v143;
    v147[1] = v142;
    v148 = v139[2];
    v56 = __OFADD__(v148, 1);
    v149 = v148 + 1;
    if (v56)
    {
      break;
    }

    v139[2] = v149;
    v150 = v187[0];
    v151 = v187[1];
    v153 = v188;
    v152 = v189;

    v154 = sub_23E88CA70(v150, v151);
    if (v155)
    {
      goto LABEL_113;
    }

    *(v139 + ((v154 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v154;
    v156 = (v139[6] + 16 * v154);
    *v156 = v150;
    v156[1] = v151;
    v157 = (v139[7] + 16 * v154);
    *v157 = v153;
    v157[1] = v152;
    v158 = v139[2];
    v56 = __OFADD__(v158, 1);
    v159 = v158 + 1;
    if (v56)
    {
      break;
    }

    v139[2] = v159;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F128, &qword_23E906340);
    swift_arrayDestroy();
    if (v118)
    {
      v160 = sub_23E8CF5C4(v139);

      v161 = swift_isUniquelyReferenced_nonNull_native();
      *&v195 = v118;
      v162 = v172;
      sub_23E8A1DBC(v160, sub_23E8CF910, 0, v161, &v195);

      v163 = v195;
      v172 = v162;
      v13 = v173;
      if (v162)
      {
        goto LABEL_117;
      }

      sub_23E8D0D1C(v173);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v15 = v178;
      }

      else
      {
        v15 = sub_23E88A418(0, v178[2] + 1, 1, v178);
      }

      v165 = v15[2];
      v164 = v15[3];
      if (v165 >= v164 >> 1)
      {
        v15 = sub_23E88A418((v164 > 1), v165 + 1, 1, v15);
      }

      v15[2] = v165 + 1;
      v15[v165 + 4] = v163;
    }

    else
    {
      v13 = v173;
      sub_23E8D0D1C(v173);

      v15 = v178;
    }

    v91 = v174 + 1;
    if (v174 + 1 == v171)
    {
      return v15;
    }
  }

LABEL_115:
  __break(1u);
LABEL_116:
  sub_23E900E44();
  __break(1u);
LABEL_117:

  __break(1u);
  return result;
}

unint64_t sub_23E8CF5C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6D8, &qword_23E903438);
    v2 = sub_23E900D64();
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
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (v12 << 10) | (16 * v13);
        v15 = (*(a1 + 48) + v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = (*(a1 + 56) + v14);
        v27 = *v18;
        v28 = v18[1];

        swift_dynamicCast();
        v33 = v30;
        v34 = v31;
        v35 = v32;
        v29 = v30;
        v30 = v31;
        *&v31 = v32;
        result = sub_23E88CA70(v17, v16);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v17;
          v9[1] = v16;
          v11 = result;

          result = sub_23E8A23D8(&v29, v2[7] + 40 * v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v17;
          v20[1] = v16;
          v21 = v2[7] + 40 * result;
          v22 = v29;
          v23 = v30;
          *(v21 + 32) = v31;
          *v21 = v22;
          *(v21 + 16) = v23;
          v24 = v2[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_21;
          }

          v2[2] = v26;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_23E8CF81C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_23E8CDEC8();
  *a1 = result;
  return result;
}

uint64_t sub_23E8CF844(uint64_t a1)
{
  result = sub_23E8CF8CC(&qword_27E35F1B8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23E8CF888(uint64_t a1)
{
  result = sub_23E8CF8CC(&qword_27E35F1C0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23E8CF8CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ImageContent.ContentType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23E8CF910@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_23E88FC10((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

char *sub_23E8CF95C()
{
  v1 = v0;
  v2 = type metadata accessor for ContainerContent.Child();
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_23E9006D4();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E720, &qword_23E903478);
  v7 = *v0;
  v8 = sub_23E900D44();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v36;
        (*(v39 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        sub_23E8D0D78(*(v7 + 56) + v28, v37, type metadata accessor for ContainerContent.Child);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = sub_23E88A940(v27, *(v29 + 56) + v28);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_23E8CFC74()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6D8, &qword_23E903438);
  v2 = *v0;
  v3 = sub_23E900D44();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_23E88FC10(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_23E8CFE28()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E710, &qword_23E903468);
  v2 = *v0;
  v3 = sub_23E900D44();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 72;
        v22 = *(v2 + 56) + v17;
        v24 = *(v22 + 16);
        v23 = *(v22 + 32);
        v25 = *(v22 + 48);
        v36 = *(v22 + 64);
        v35 = v25;
        v32 = *v22;
        v33 = v24;
        v34 = v23;
        v26 = (*(v4 + 48) + v18);
        *v26 = v21;
        v26[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v32;
        v28 = v33;
        v29 = v34;
        v30 = v35;
        *(v27 + 64) = v36;
        *(v27 + 32) = v29;
        *(v27 + 48) = v30;
        *(v27 + 16) = v28;

        result = sub_23E88FEB4(&v32, v31);
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

void *sub_23E8CFFEC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6E8, &qword_23E903448);
  v2 = *v0;
  v3 = sub_23E900D44();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void *sub_23E8D0164()
{
  v1 = v0;
  v34 = sub_23E9006D4();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20]();
  v33 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E700, &qword_23E903460);
  v4 = *v0;
  v5 = sub_23E900D44();
  v6 = v5;
  if (*(v4 + 16))
  {
    v30 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v22 = v33;
        v23 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v19 *= 56;
        sub_23E88FE10(*(v4 + 56) + v19, v38);
        v24 = v35;
        result = (*(v20 + 32))(*(v35 + 48) + v21, v22, v23);
        v25 = *(v24 + 56) + v19;
        v26 = v39;
        v27 = v38[2];
        v28 = v38[1];
        *v25 = v38[0];
        *(v25 + 16) = v28;
        *(v25 + 32) = v27;
        *(v25 + 48) = v26;
        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_23E8D0400()
{
  v1 = v0;
  v30 = sub_23E9006D4();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E748, &qword_23E9034A0);
  v4 = *v0;
  v5 = sub_23E900D44();
  v6 = v5;
  if (*(v4 + 16))
  {
    v26 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v27 = v32 + 32;
    v28 = v32 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v33 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v32;
        v21 = *(v32 + 72) * v19;
        v22 = v29;
        v23 = v30;
        (*(v32 + 16))(v29, *(v4 + 48) + v21, v30);
        v19 *= 40;
        sub_23E8810DC(*(v4 + 56) + v19, v34);
        v24 = v31;
        (*(v20 + 32))(*(v31 + 48) + v21, v22, v23);
        result = sub_23E881028(v34, *(v24 + 56) + v19);
        v14 = v33;
      }

      while (v33);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v26;
        v6 = v31;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v33 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_23E8D0688()
{
  v1 = v0;
  v30 = sub_23E9006D4();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20]();
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E738, &qword_23E903490);
  v4 = *v0;
  v5 = sub_23E900D44();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; result = (*(v20 + 32))(*(v24 + 56) + v21, v23, v22))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(*(v4 + 48) + 4 * v18);
      v20 = v32;
      v21 = *(v32 + 72) * v18;
      v23 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 56) + v21, v30);
      v24 = v31;
      *(*(v31 + 48) + 4 * v18) = v19;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_23E8D08F0()
{
  v1 = v0;
  v35 = sub_23E9006D4();
  v39 = *(v35 - 8);
  v2 = v39[8];
  v3 = MEMORY[0x28223BE20](v35);
  v37 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v36 = &v31 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E730, &qword_23E903488);
  v6 = *v0;
  v7 = sub_23E900D44();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v38 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v33 = v39 + 4;
    v34 = v39 + 2;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v40 = (v16 - 1) & v16;
LABEL_14:
        v21 = v39;
        v22 = v39[9] * (v18 | (v12 << 6));
        v23 = v39[2];
        v25 = v35;
        v24 = v36;
        v23(v36, *(v6 + 48) + v22, v35);
        v26 = v37;
        v23(v37, *(v6 + 56) + v22, v25);
        v27 = v6;
        v28 = v38;
        v29 = v21[4];
        v29(*(v38 + 48) + v22, v24, v25);
        v30 = *(v28 + 56);
        v6 = v27;
        result = (v29)(v30 + v22, v26, v25);
        v16 = v40;
      }

      while (v40);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v31;
        v8 = v38;
        goto LABEL_18;
      }

      v20 = *(v32 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v40 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_23E8D0BB8@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v4 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_23E88FC10(*(v4 + 56) + 40 * v13, &v23);
    v21 = v24;
    v22 = v23;
    v17 = v25;
    *v1 = v4;
    v1[1] = v3;
    v1[2] = v6;
    v1[3] = v8;
    v1[4] = v12;

    if (v15)
    {
      v20 = v1[5];
      v19 = v1[6];
      *&v23 = v16;
      *(&v23 + 1) = v15;
      v25 = v21;
      v24 = v22;
      v26 = v17;
      v20(&v23);
      return sub_23E87E458(&v23, &qword_27E35ED60, &qword_23E905168);
    }

    else
    {
LABEL_13:
      *(a1 + 48) = 0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v1[3] = v11;
        v1[4] = 0;
        goto LABEL_13;
      }

      v7 = *(v3 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23E8D0D1C(uint64_t a1)
{
  v2 = type metadata accessor for SpriteSheetAnimation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23E8D0D78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_23E8D0DE0(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23E902EF0;
    *(inited + 32) = 1701274725;
    *(inited + 40) = 0xE400000000000000;
    v4 = inited;
    sub_23E900C64();
    *(v4 + 88) = 0x74657366666FLL;
    *(v4 + 96) = 0xE600000000000000;
    sub_23E900C64();
    sub_23E88F1F4(v4);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E598, &unk_23E905080);
    swift_arrayDestroy();
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_23E902EF0;
    *(v5 + 32) = 1701869940;
    *(v5 + 40) = 0xE400000000000000;
    sub_23E900C64();
    *(v5 + 88) = 0x65756C6176;
    *(v5 + 96) = 0xE500000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E578, qword_23E904420);
    sub_23E881570();
    sub_23E900C64();
    v6 = sub_23E88F1F4(v5);
    swift_setDeallocating();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
    v3 = swift_initStackObject();
    *(v3 + 16) = xmmword_23E902EF0;
    *(v3 + 32) = 1701869940;
    *(v3 + 40) = 0xE400000000000000;
    sub_23E900C64();
    *(v3 + 88) = 0x65756C6176;
    *(v3 + 96) = 0xE500000000000000;
    sub_23E900C64();
    v6 = sub_23E88F1F4(v3);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E598, &unk_23E905080);
  }

  swift_arrayDestroy();
  return v6;
}

unint64_t sub_23E8D11A0(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
    inited = swift_initStackObject();
    *(inited + 32) = 1701274725;
    *(inited + 16) = xmmword_23E902EF0;
    *(inited + 40) = 0xE400000000000000;
    sub_23E900C64();
    *(inited + 88) = 0x74657366666FLL;
    *(inited + 96) = 0xE600000000000000;
    sub_23E900C64();
    sub_23E88F1F4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E598, &unk_23E905080);
    swift_arrayDestroy();
    v3 = swift_initStackObject();
    *(v3 + 32) = 1701869940;
    *(v3 + 16) = xmmword_23E902EF0;
    *(v3 + 40) = 0xE400000000000000;
    sub_23E900C64();
    *(v3 + 88) = 0x65756C6176;
    *(v3 + 96) = 0xE500000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E578, qword_23E904420);
    sub_23E881570();
    sub_23E900C64();
    v4 = sub_23E88F1F4(v3);
    swift_setDeallocating();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_23E902EF0;
    *(v5 + 32) = 1701869940;
    *(v5 + 40) = 0xE400000000000000;
    sub_23E900C64();
    *(v5 + 88) = 0x65756C6176;
    *(v5 + 96) = 0xE500000000000000;
    sub_23E900C64();
    v4 = sub_23E88F1F4(v5);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E598, &unk_23E905080);
  }

  swift_arrayDestroy();
  return v4;
}

unint64_t sub_23E8D1524@<X0>(unint64_t *a1@<X8>)
{
  result = sub_23E8D0DE0(*v1, *(v1 + 8));
  *a1 = result;
  return result;
}

unint64_t sub_23E8D1554(uint64_t a1)
{
  result = sub_23E8D157C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8D157C()
{
  result = qword_27E35F1D0;
  if (!qword_27E35F1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F1D0);
  }

  return result;
}

unint64_t sub_23E8D15D0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_23E8D11A0(*v1, *(v1 + 8));
  *a1 = result;
  return result;
}

unint64_t sub_23E8D1600(uint64_t a1)
{
  result = sub_23E8D1628();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8D1628()
{
  result = qword_27E35F1D8;
  if (!qword_27E35F1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F1D8);
  }

  return result;
}

void sub_23E8D1680(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *&aLeft_4[8 * v2];
  v4 = qword_23E906620[v2];
  *a1 = v3;
  a1[1] = v4;
}

unint64_t sub_23E8D16A4(uint64_t a1)
{
  result = sub_23E8D16CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8D16CC()
{
  result = qword_27E35F1E0;
  if (!qword_27E35F1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F1E0);
  }

  return result;
}

unint64_t sub_23E8D1720(uint64_t a1)
{
  result = sub_23E8D1748();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8D1748()
{
  result = qword_27E35F1E8;
  if (!qword_27E35F1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F1E8);
  }

  return result;
}

uint64_t sub_23E8D179C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23E8D17D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v55 = sub_23E900BD4();
  v53 = *(v55 - 8);
  v7 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  v56 = &v45 - v8;
  v9 = a2;
  v10 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_23E900BD4();
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = *(v50 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v49 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v45 - v17;
  v58 = AssociatedTypeWitness;
  v57 = *(AssociatedTypeWitness - 8);
  v19 = *(v57 + 64);
  v20 = MEMORY[0x28223BE20](v16);
  v46 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v45 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6B8, &unk_23E9039B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E9051C0;
  *(inited + 32) = 0x6576727563;
  v54 = inited + 32;
  *(inited + 40) = 0xE500000000000000;
  v59 = a1;
  v25 = (v3 + *(a1 + 52));
  v26 = *(v25 + 16);
  v60 = *v25;
  v61 = v26;
  v27 = sub_23E8F34A0();
  if (v27)
  {
    *&v60 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E578, qword_23E904420);
    sub_23E881570();
    sub_23E900C64();
  }

  else
  {
    *(inited + 80) = 0;
    *(inited + 48) = 0u;
    *(inited + 64) = 0u;
  }

  *(inited + 88) = 0x79616C6564;
  *(inited + 96) = 0xE500000000000000;
  v28 = v59;
  *&v60 = *(v3 + *(v59 + 40));
  sub_23E900C64();
  *(inited + 144) = 0x6E6F697461727564;
  *(inited + 152) = 0xE800000000000000;
  *&v60 = *(v3 + *(v28 + 36));
  sub_23E900C64();
  *(inited + 200) = 0x65756C61566F74;
  *(inited + 208) = 0xE700000000000000;
  v29 = *(v28 + 48);
  v30 = *(v9 + 32);
  v52 = v3;
  v47 = v30;
  v30(v10, v9);
  v32 = v57;
  v31 = v58;
  v48 = *(v57 + 48);
  if (v48(v18, 1, v58) == 1)
  {
    (*(v50 + 8))(v18, v51);
    *(inited + 248) = 0;
    *(inited + 232) = 0u;
    *(inited + 216) = 0u;
  }

  else
  {
    (*(v32 + 32))(v23, v18, v31);
    swift_getAssociatedConformanceWitness();
    sub_23E900D94();
    (*(v32 + 8))(v23, v31);
  }

  v33 = v9;
  *(inited + 256) = 0x756C61566D6F7266;
  *(inited + 264) = 0xE900000000000065;
  v34 = v53;
  v35 = v55;
  v36 = v56;
  (*(v53 + 16))(v56, v52 + *(v59 + 44), v55);
  v37 = *(v10 - 8);
  if ((*(v37 + 48))(v36, 1, v10) == 1)
  {
    (*(v34 + 8))(v36, v35);
  }

  else
  {
    v38 = v49;
    v47(v10, v33);
    v39 = v58;
    (*(v37 + 8))(v36, v10);
    if (v48(v38, 1, v39) != 1)
    {
      v40 = v57;
      v41 = v46;
      (*(v57 + 32))(v46, v38, v39);
      swift_getAssociatedConformanceWitness();
      sub_23E900D94();
      (*(v40 + 8))(v41, v39);
      goto LABEL_13;
    }

    (*(v50 + 8))(v38, v51);
  }

  *(inited + 304) = 0;
  *(inited + 272) = 0u;
  *(inited + 288) = 0u;
LABEL_13:
  v42 = sub_23E88FAD8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6C0, &qword_23E906330);
  swift_arrayDestroy();
  v43 = sub_23E8CE3B4(v42);

  return v43;
}

uint64_t sub_23E8D1E60(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[9];
  if ((v5 & 0x2000000000000000) != 0)
  {
    v8 = v1[2];
    v7 = v1[3];
    v9 = v1[4];
    v12 = v1[8];
    v10 = *(v1 + 40);
    v11 = *(v1 + 41);
    MEMORY[0x23EF17B90](1);
    sub_23E900904();
    if (v10)
    {
      v9 = 0;
    }

    else
    {
      MEMORY[0x23EF17B90](1);
      sub_23E900EE4();
      sub_23E900EE4();
      sub_23E900EE4();
      sub_23E900EE4();
    }

    MEMORY[0x23EF17B90](v9);
    sub_23E900904();

    return MEMORY[0x28211D370](a1, v12, v5 & 0xDFFFFFFFFFFFFFFFLL);
  }

  else
  {
    MEMORY[0x23EF17B90](0);

    return sub_23E900904();
  }
}

uint64_t sub_23E8D2018()
{
  sub_23E900EB4();
  sub_23E8D1E60(v1);
  return sub_23E900F14();
}

uint64_t sub_23E8D205C()
{
  sub_23E900EB4();
  sub_23E8D1E60(v1);
  return sub_23E900F14();
}

unint64_t sub_23E8D20A0()
{
  result = qword_27E35F1F0;
  if (!qword_27E35F1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F1F0);
  }

  return result;
}

uint64_t sub_23E8D20F4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
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
    v10 = sub_23E900524();
    if (v10)
    {
      v11 = sub_23E900544();
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
      result = sub_23E900534();
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
  v10 = sub_23E900524();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_23E900544();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_23E900534();
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

uint64_t sub_23E8D2324(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
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
    v10 = sub_23E8D24B4(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_23E8A7854(a3, a4);
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
  sub_23E8D20F4(v14, a3, a4, &v13);
  v10 = v4;
  sub_23E8A7854(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_23E8D24B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_23E900524();
  v11 = result;
  if (result)
  {
    result = sub_23E900544();
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

  sub_23E900534();
  sub_23E8D20F4(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_23E8D256C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_23E8A78A8(a3, a4);
          return sub_23E8D2324(v13, a2, a3, a4) & 1;
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

uint64_t sub_23E8D26D4(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[1];
  *&v24[32] = a1[2];
  *&v24[48] = v2;
  v4 = a1[3];
  v25 = a1[4];
  v5 = a1[1];
  *v24 = *a1;
  *&v24[16] = v5;
  v6 = a2[3];
  v7 = a2[1];
  v28 = a2[2];
  v29 = v6;
  v8 = a2[3];
  v30 = a2[4];
  v9 = a2[1];
  v26 = *a2;
  v27 = v9;
  v31[2] = *&v24[32];
  v31[3] = v4;
  v31[0] = *v24;
  v31[1] = v3;
  v31[4] = a1[4];
  v31[5] = v26;
  v10 = a2[4];
  v31[8] = v8;
  v31[9] = v10;
  v31[6] = v7;
  v31[7] = v28;
  v11 = *(&v25 + 1);
  v12 = *(&v30 + 1);
  if ((*(&v25 + 1) & 0x2000000000000000) != 0)
  {
    if ((*(&v30 + 1) & 0x2000000000000000) != 0)
    {
      v15 = v25;
      v16 = v30;
      v18 = *v24;
      v19 = *&v24[8];
      v20 = *&v24[24];
      v21 = *&v24[40];
      v22 = *&v24[56];
      v17[0] = v26;
      v17[1] = v27;
      v17[2] = v28;
      v17[3] = v29;
      sub_23E8CC870(&v26, v23);
      sub_23E8CC870(v24, v23);
      if (_s10AirPlayKit11RenderAssetV2eeoiySbAC_ACtFZ_0(&v18, v17))
      {
        v13 = sub_23E8D256C(v15, v11 & 0xDFFFFFFFFFFFFFFFLL, v16, v12 & 0xDFFFFFFFFFFFFFFFLL);
        goto LABEL_8;
      }

      goto LABEL_7;
    }

LABEL_6:
    sub_23E8CC870(&v26, v23);
    sub_23E8CC870(v24, v23);
LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  if ((*(&v30 + 1) & 0x2000000000000000) != 0)
  {
    goto LABEL_6;
  }

  if (*v24 == v26)
  {
    sub_23E8CC870(&v26, v23);
    sub_23E8CC870(v24, v23);
    v13 = 1;
  }

  else
  {
    v13 = sub_23E900E04();
    sub_23E8CC870(&v26, v23);
    sub_23E8CC870(v24, v23);
  }

LABEL_8:
  sub_23E8D2884(v31);
  return v13 & 1;
}

uint64_t sub_23E8D2884(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F1F8, &qword_23E9066D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t sub_23E8D2914(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 40) >> 2) & 0xFFFFFF80 | (*(a1 + 40) >> 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_23E8D2968(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 80) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
      *(a1 + 40) = (4 * -a2) & 0x3FFFFFE00 | (2 * (-a2 & 0x7FLL));
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      return result;
    }

    *(a1 + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23E8D29E4(uint64_t result, char a2)
{
  v2 = *(result + 72) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 1) << 61);
  *(result + 40) &= 0x101uLL;
  *(result + 72) = v2;
  return result;
}

uint64_t dispatch thunk of AirPlayOvelayCoordinating.connect()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 48);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23E888F34;

  return v9(a1, a2);
}

unint64_t sub_23E8D2B70()
{
  if (*v0 >> 30 > 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
    inited = swift_initStackObject();
    *(inited + 32) = 2003790950;
    *(inited + 16) = xmmword_23E903380;
    *(inited + 40) = 0xE400000000000000;
    sub_23E900C64();
    v3 = sub_23E88F1F4(inited);
    swift_setDeallocating();
    sub_23E8D3054(inited + 32);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
    v1 = swift_initStackObject();
    *(v1 + 16) = xmmword_23E902EE0;
    *(v1 + 32) = 2003790950;
    *(v1 + 40) = 0xE400000000000000;
    sub_23E900C64();
    *(v1 + 88) = 0x6E656D6E67696C61;
    *(v1 + 96) = 0xE900000000000074;
    sub_23E900C64();
    *(v1 + 144) = 0x676E6963617073;
    *(v1 + 152) = 0xE700000000000000;
    sub_23E900C64();
    v3 = sub_23E88F1F4(v1);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E598, &unk_23E905080);
    swift_arrayDestroy();
  }

  return v3;
}

unint64_t sub_23E8D2F34@<X0>(unint64_t *a1@<X8>)
{
  result = sub_23E8D2B70();
  *a1 = result;
  return result;
}

unint64_t sub_23E8D2F5C(uint64_t a1)
{
  result = sub_23E8D2F84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8D2F84()
{
  result = qword_27E35F200;
  if (!qword_27E35F200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F200);
  }

  return result;
}

unint64_t sub_23E8D2FD8(uint64_t a1)
{
  result = sub_23E8D3000();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8D3000()
{
  result = qword_27E35F208;
  if (!qword_27E35F208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F208);
  }

  return result;
}

uint64_t sub_23E8D3054(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E598, &unk_23E905080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AirPlayOverlayAssetStoreError.hashValue.getter()
{
  v1 = *v0;
  sub_23E900EB4();
  MEMORY[0x23EF17B90](v1);
  return sub_23E900F14();
}

unint64_t sub_23E8D314C()
{
  result = qword_27E35F210;
  if (!qword_27E35F210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F210);
  }

  return result;
}

uint64_t SpriteSheetAnimation.fallback.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_23E895FE4(v7, &v6);
}

uint64_t SpriteSheetAnimation.animation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SpriteSheetAnimation() + 20);

  return sub_23E8D3280(v3, a1);
}

uint64_t type metadata accessor for SpriteSheetAnimation()
{
  result = qword_27E35F220;
  if (!qword_27E35F220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23E8D3280(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F1C8, &qword_23E906930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SpriteSheetAnimation.init(fallback:animation:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = a1[1];
  *a3 = *a1;
  a3[1] = v4;
  v5 = a1[3];
  a3[2] = a1[2];
  a3[3] = v5;
  v6 = a3 + *(type metadata accessor for SpriteSheetAnimation() + 20);

  return sub_23E8D3348(a2, v6);
}

uint64_t sub_23E8D3348(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F1C8, &qword_23E906930);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E8D33BC(uint64_t a1, uint64_t a2)
{
  if ((sub_23E9006B4() & 1) != 0 && (v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F1C8, &qword_23E906930), *(a1 + v4[9]) == *(a2 + v4[9])) && *(a1 + v4[10]) == *(a2 + v4[10]) && *(a1 + v4[11]) == *(a2 + v4[11]))
  {
    v7 = v4[13];
    v8 = *(a1 + v7 + 16);
    v13 = *(a1 + v7);
    v14 = v8;
    v9 = (a2 + v7);
    v10 = *(v9 + 16);
    v11 = *v9;
    v12 = v10;
    v5 = _s10AirPlayKit14AnimationCurveO2eeoiySbAC_ACtFZ_0(&v13, &v11);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t SpriteSheetAnimation.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  v5 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + 40);
  v8 = *(v1 + 41);
  sub_23E900904();
  if (v7)
  {
    v6 = 0;
  }

  else
  {
    MEMORY[0x23EF17B90](1);
    sub_23E900EE4();
    sub_23E900EE4();
    sub_23E900EE4();
    sub_23E900EE4();
  }

  MEMORY[0x23EF17B90](v6);
  sub_23E900904();

  v9 = v1 + *(type metadata accessor for SpriteSheetAnimation() + 20);
  return sub_23E8D3688();
}

uint64_t SpriteSheetAnimation.hashValue.getter()
{
  sub_23E900EB4();
  SpriteSheetAnimation.hash(into:)();
  return sub_23E900F14();
}

uint64_t sub_23E8D3604()
{
  sub_23E900EB4();
  SpriteSheetAnimation.hash(into:)();
  return sub_23E900F14();
}

uint64_t sub_23E8D3648()
{
  sub_23E900EB4();
  SpriteSheetAnimation.hash(into:)();
  return sub_23E900F14();
}

uint64_t sub_23E8D3688()
{
  sub_23E9006D4();
  sub_23E8D46FC(&qword_27E35E5B8, MEMORY[0x277CC95F0]);
  sub_23E900824();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F1C8, &qword_23E906930);
  v2 = *(v0 + v1[9]);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x23EF17BC0](*&v2);
  v3 = *(v0 + v1[10]);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x23EF17BC0](*&v3);
  v4 = *(v0 + v1[11]);
  sub_23E900ED4();
  v5 = v0 + v1[13];
  v7 = *v5;
  v6 = *(v5 + 8);
  v8 = *(v5 + 16);
  if (!v8)
  {
    v9 = 4;
    goto LABEL_9;
  }

  if (v8 == 1)
  {
    v9 = 5;
LABEL_9:
    MEMORY[0x23EF17B90](v9);
    sub_23E900EE4();
    sub_23E900EE4();
    sub_23E900EE4();
    return sub_23E900EE4();
  }

  if (v7 > 1)
  {
    if (v7 ^ 2 | v6)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }
  }

  else
  {
    v11 = (v7 | v6) != 0;
  }

  return MEMORY[0x23EF17B90](v11);
}

uint64_t sub_23E8D3854()
{
  sub_23E9006D4();
  sub_23E8D46FC(&qword_27E35E5B8, MEMORY[0x277CC95F0]);
  sub_23E900824();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F620, &qword_23E9050B0);
  v2 = *(v0 + v1[9]);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x23EF17BC0](*&v2);
  v3 = *(v0 + v1[10]);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x23EF17BC0](*&v3);
  v4 = (v0 + v1[11]);
  if (*(v4 + 4) == 1)
  {
    sub_23E900ED4();
  }

  else
  {
    v5 = *v4;
    sub_23E900ED4();
    sub_23E900EE4();
  }

  *(v0 + v1[12]);
  sub_23E900EE4();
  v6 = v0 + v1[13];
  v8 = *v6;
  v7 = *(v6 + 8);
  v9 = *(v6 + 16);
  if (!v9)
  {
    v10 = 4;
    goto LABEL_12;
  }

  if (v9 == 1)
  {
    v10 = 5;
LABEL_12:
    MEMORY[0x23EF17B90](v10);
    sub_23E900EE4();
    sub_23E900EE4();
    sub_23E900EE4();
    return sub_23E900EE4();
  }

  if (v8 > 1)
  {
    if (v8 ^ 2 | v7)
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }
  }

  else
  {
    v12 = (v8 | v7) != 0;
  }

  return MEMORY[0x23EF17B90](v12);
}

uint64_t sub_23E8D3A6C()
{
  sub_23E9006D4();
  sub_23E8D46FC(&qword_27E35E5B8, MEMORY[0x277CC95F0]);
  sub_23E900824();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F660, &unk_23E9069D0);
  v2 = *(v0 + v1[9]);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x23EF17BC0](*&v2);
  v3 = *(v0 + v1[10]);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x23EF17BC0](*&v3);
  v4 = (v0 + v1[11]);
  if (*(v4 + 24) == 1)
  {
    sub_23E900ED4();
  }

  else
  {
    v15 = *v4;
    v16 = v4[1];
    v17 = v4[2];
    sub_23E900ED4();
    Transform.hash(into:)();
  }

  v5 = (v0 + v1[12]);
  v13 = *v5;
  v14 = *(v5 + 2);
  Transform.hash(into:)();
  v6 = v0 + v1[13];
  v8 = *v6;
  v7 = *(v6 + 8);
  v9 = *(v6 + 16);
  if (!v9)
  {
    v10 = 4;
    goto LABEL_12;
  }

  if (v9 == 1)
  {
    v10 = 5;
LABEL_12:
    MEMORY[0x23EF17B90](v10);
    sub_23E900EE4();
    sub_23E900EE4();
    sub_23E900EE4();
    return sub_23E900EE4();
  }

  if (v8 > 1)
  {
    if (v8 ^ 2 | v7)
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }
  }

  else
  {
    v12 = (v8 | v7) != 0;
  }

  return MEMORY[0x23EF17B90](v12);
}

uint64_t sub_23E8D3CAC()
{
  sub_23E9006D4();
  sub_23E8D46FC(&qword_27E35E5B8, MEMORY[0x277CC95F0]);
  sub_23E900824();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F690, &unk_23E906F50);
  v2 = *(v0 + v1[9]);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x23EF17BC0](*&v2);
  v3 = *(v0 + v1[10]);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x23EF17BC0](*&v3);
  v4 = (v0 + v1[11]);
  if (*(v4 + 8) == 1)
  {
    sub_23E900ED4();
  }

  else
  {
    v5 = *v4;
    v6 = v4[1];
    sub_23E900ED4();
    Anchor.hash(into:)();
  }

  v7 = (v0 + v1[12]);
  v8 = *v7;
  v9 = v7[1];
  Anchor.hash(into:)();
  v10 = v0 + v1[13];
  v12 = *v10;
  v11 = *(v10 + 8);
  v13 = *(v10 + 16);
  if (!v13)
  {
    v14 = 4;
    goto LABEL_12;
  }

  if (v13 == 1)
  {
    v14 = 5;
LABEL_12:
    MEMORY[0x23EF17B90](v14);
    sub_23E900EE4();
    sub_23E900EE4();
    sub_23E900EE4();
    return sub_23E900EE4();
  }

  if (v12 > 1)
  {
    if (v12 ^ 2 | v11)
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }
  }

  else
  {
    v16 = (v12 | v11) != 0;
  }

  return MEMORY[0x23EF17B90](v16);
}

uint64_t sub_23E8D3EBC(uint64_t a1)
{
  v2 = v1;
  sub_23E9006D4();
  sub_23E8D46FC(&qword_27E35E5B8, MEMORY[0x277CC95F0]);
  sub_23E900824();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F6C0, &qword_23E9069E0);
  v5 = *(v1 + v4[9]);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x23EF17BC0](*&v5);
  v6 = *(v1 + v4[10]);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x23EF17BC0](*&v6);
  v7 = (v1 + v4[11]);
  v8 = *v7;
  if ((~*v7 & 0xFF00000000) != 0)
  {
    v9 = *(v7 + 2) | (*(v7 + 12) << 32);
    sub_23E900ED4();
    Dimension.hash(into:)(a1, v8 & 0xFFFFFFFFFFLL);
    Dimension.hash(into:)(a1, v9);
  }

  else
  {
    sub_23E900ED4();
  }

  v10 = (v1 + v4[12]);
  v11 = v10[2];
  v12 = *(v10 + 12);
  Dimension.hash(into:)(a1, *v10 | (*(v10 + 4) << 32));
  Dimension.hash(into:)(a1, v11 | (v12 << 32));
  v13 = v2 + v4[13];
  v15 = *v13;
  v14 = *(v13 + 8);
  v16 = *(v13 + 16);
  if (!v16)
  {
    v17 = 4;
    goto LABEL_12;
  }

  if (v16 == 1)
  {
    v17 = 5;
LABEL_12:
    MEMORY[0x23EF17B90](v17);
    sub_23E900EE4();
    sub_23E900EE4();
    sub_23E900EE4();
    return sub_23E900EE4();
  }

  if (v15 > 1)
  {
    if (v15 ^ 2 | v14)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }
  }

  else
  {
    v19 = (v15 | v14) != 0;
  }

  return MEMORY[0x23EF17B90](v19);
}

uint64_t sub_23E8D40FC(uint64_t a1)
{
  v2 = v1;
  sub_23E9006D4();
  sub_23E8D46FC(&qword_27E35E5B8, MEMORY[0x277CC95F0]);
  sub_23E900824();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F6F0, qword_23E903D18);
  v5 = *(v1 + v4[9]);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x23EF17BC0](*&v5);
  v6 = *(v1 + v4[10]);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x23EF17BC0](*&v6);
  v7 = v1 + v4[11];
  v8 = *(v7 + 8);
  if (*(v7 + 8) == 0xFF)
  {
    sub_23E900ED4();
  }

  else
  {
    v9 = *(v7 + 20);
    v10 = *v7;
    *(&v11 + 1) = *(v7 + 16);
    *&v11 = *(v7 + 8);
    sub_23E900ED4();
    HorizontalPosition.hash(into:)(a1, v10, v8);
    VerticalPosition.hash(into:)(a1, v11 >> 32, v9);
  }

  v12 = v1 + v4[12];
  v13 = *(v12 + 12);
  v14 = *(v12 + 20);
  HorizontalPosition.hash(into:)(a1, *v12, *(v12 + 8));
  VerticalPosition.hash(into:)(a1, v13, v14);
  v15 = v2 + v4[13];
  v17 = *v15;
  v16 = *(v15 + 8);
  v18 = *(v15 + 16);
  if (!v18)
  {
    v19 = 4;
    goto LABEL_12;
  }

  if (v18 == 1)
  {
    v19 = 5;
LABEL_12:
    MEMORY[0x23EF17B90](v19);
    sub_23E900EE4();
    sub_23E900EE4();
    sub_23E900EE4();
    return sub_23E900EE4();
  }

  if (v17 > 1)
  {
    if (v17 ^ 2 | v16)
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }
  }

  else
  {
    v21 = (v17 | v16) != 0;
  }

  return MEMORY[0x23EF17B90](v21);
}

uint64_t _s10AirPlayKit20SpriteSheetAnimationV2eeoiySbAC_ACtFZ_0(_OWORD *a1, __int128 *a2)
{
  v4 = a1[1];
  v28[0] = *a1;
  v28[1] = v4;
  v5 = a1[3];
  v7 = *a1;
  v6 = a1[1];
  v28[2] = a1[2];
  v28[3] = v5;
  v24 = v7;
  v25 = v6;
  v8 = a1[3];
  v26 = a1[2];
  v27 = v8;
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[3];
  v29[2] = a2[2];
  v29[3] = v11;
  v12 = a2[1];
  v13 = a2[2];
  v14 = *a2;
  v29[0] = v9;
  v29[1] = v12;
  v20 = v14;
  v21 = v10;
  v15 = a2[3];
  v22 = v13;
  v23 = v15;
  sub_23E895FE4(v28, v31);
  sub_23E895FE4(v29, v31);
  v16 = _s10AirPlayKit11RenderAssetV2eeoiySbAC_ACtFZ_0(&v24, &v20);
  v30[0] = v20;
  v30[1] = v21;
  v30[2] = v22;
  v30[3] = v23;
  sub_23E899A78(v30);
  v31[0] = v24;
  v31[1] = v25;
  v31[2] = v26;
  v31[3] = v27;
  sub_23E899A78(v31);
  if (v16)
  {
    v17 = type metadata accessor for SpriteSheetAnimation();
    v18 = sub_23E8D33BC(a1 + *(v17 + 20), a2 + *(v17 + 20));
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_23E8D44A4(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F1C8, &qword_23E906930);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23E8D4574(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F1C8, &qword_23E906930);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23E8D4624()
{
  sub_23E8D46A0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23E8D46A0()
{
  if (!qword_27E35F230)
  {
    sub_23E8A7A0C();
    v0 = type metadata accessor for Animation();
    if (!v1)
    {
      atomic_store(v0, &qword_27E35F230);
    }
  }
}

uint64_t sub_23E8D46FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23E8D4744(uint64_t a1)
{
  result = sub_23E8AC920();
  *(a1 + 16) = result;
  return result;
}

void *sub_23E8D476C(__int128 *a1, uint64_t a2)
{
  v151 = a2;
  v4 = sub_23E9006D4();
  v131 = *(v4 - 8);
  v132 = v4;
  v5 = *(v131 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F238, &qword_23E906A18);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v123 - v10;
  v12 = a1[1];
  v142 = *a1;
  v143 = v12;
  v144[0] = a1[2];
  *(v144 + 14) = *(a1 + 46);
  v14 = *(a1 + 2);
  v13 = *(a1 + 3);
  v15 = *(a1 + 3);
  v16 = *(a1 + 4);
  v17 = *(a1 + 40);
  v18 = *(a1 + 61);
  v19 = *v2;
  v20 = v2[1];
  v21 = v2[2];
  *&v146[30] = *(v2 + 46);
  *v146 = v20;
  *&v146[16] = v21;
  v145 = v19;
  v22 = v130;
  v23 = sub_23E891858(&v142, v151);
  if (v22)
  {
    return v15;
  }

  v124 = v15;
  v125 = v16;
  LODWORD(v126) = v17;
  v123 = v18;
  v127 = v7;
  v128 = v8;
  v129 = v11;
  v130 = 0;
  v24 = sub_23E8BCFA0(v23);

  v25 = v145;
  v26 = v132;
  if (BYTE13(v144[1]) != 2 && *&v145 == *&v142 && *(&v145 + 1) == *(&v142 + 1))
  {
    v27 = DWORD2(v144[1]) | (WORD6(v144[1]) << 32);
LABEL_15:
    v44 = HIDWORD(v145);
    v45 = DWORD2(v145);
    if (*(&v145 + 2) == v14 && *(&v145 + 3) == v13)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E548, &unk_23E907980);
  *(&v140 + 1) = v28;
  v29 = sub_23E880EFC(&unk_27E35F600, &qword_27E35E548, &unk_23E907980);
  v141 = v29;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v139);
  v31 = *(v131 + 16);
  v31(boxed_opaque_existential_1, v151, v26);
  *(boxed_opaque_existential_1 + *(v28 + 36)) = 13;
  *(boxed_opaque_existential_1 + *(v28 + 40)) = v25;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_23E88A098(0, v24[2] + 1, 1, v24);
  }

  v33 = v24[2];
  v32 = v24[3];
  v34 = v24;
  v35 = v33 + 1;
  if (v33 >= v32 >> 1)
  {
    v34 = sub_23E88A098((v32 > 1), v33 + 1, 1, v24);
  }

  v34[2] = v35;
  v36 = &v34[5 * v33];
  v37 = v139;
  v38 = v140;
  v36[8] = v141;
  *(v36 + 2) = v37;
  *(v36 + 3) = v38;
  *(&v140 + 1) = v28;
  v141 = v29;
  v39 = __swift_allocate_boxed_opaque_existential_1(&v139);
  v31(v39, v151, v132);
  *(v39 + *(v28 + 36)) = 14;
  *(v39 + *(v28 + 40)) = HIDWORD(v25);
  v40 = v34[3];
  if ((v33 + 2) > (v40 >> 1))
  {
    v24 = sub_23E88A098((v40 > 1), v33 + 2, 1, v34);
  }

  else
  {
    v24 = v34;
  }

  v24[2] = v33 + 2;
  v41 = &v24[5 * v35];
  v42 = v139;
  v43 = v140;
  v41[8] = v141;
  *(v41 + 2) = v42;
  *(v41 + 3) = v43;
  v26 = v132;
  if (BYTE13(v144[1]) != 2)
  {
    v27 = DWORD2(v144[1]) | (WORD6(v144[1]) << 32);
    v13 = *(&v142 + 3);
    v14 = *(&v142 + 2);
    goto LABEL_15;
  }

  v44 = HIDWORD(v145);
  v45 = DWORD2(v145);
LABEL_17:
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E548, &unk_23E907980);
  *(&v140 + 1) = v46;
  v47 = sub_23E880EFC(&unk_27E35F600, &qword_27E35E548, &unk_23E907980);
  v141 = v47;
  v48 = __swift_allocate_boxed_opaque_existential_1(&v139);
  v49 = *(v131 + 16);
  v49(v48, v151, v26);
  *(v48 + *(v46 + 36)) = 11;
  *(v48 + *(v46 + 40)) = v45;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_23E88A098(0, v24[2] + 1, 1, v24);
  }

  v51 = v24[2];
  v50 = v24[3];
  v52 = v51 + 1;
  if (v51 >= v50 >> 1)
  {
    v24 = sub_23E88A098((v50 > 1), v51 + 1, 1, v24);
  }

  v24[2] = v52;
  v53 = &v24[5 * v51];
  v54 = v139;
  v55 = v140;
  v53[8] = v141;
  *(v53 + 2) = v54;
  *(v53 + 3) = v55;
  *(&v140 + 1) = v46;
  v141 = v47;
  v56 = __swift_allocate_boxed_opaque_existential_1(&v139);
  v49(v56, v151, v132);
  *(v56 + *(v46 + 36)) = 12;
  *(v56 + *(v46 + 40)) = v44;
  v57 = v24[3];
  if ((v51 + 2) > (v57 >> 1))
  {
    v24 = sub_23E88A098((v57 > 1), v51 + 2, 1, v24);
  }

  v24[2] = v51 + 2;
  v58 = &v24[5 * v52];
  v59 = v139;
  v60 = v140;
  v58[8] = v141;
  *(v58 + 2) = v59;
  *(v58 + 3) = v60;
  v27 = DWORD2(v144[1]) | (WORD6(v144[1]) << 32);
  v26 = v132;
LABEL_24:
  v61 = *v146;
  if (BYTE5(v27) != 2 && *v146 == *&v143)
  {
    v62 = v126;
    v63 = v124;
    v64 = v125;
    goto LABEL_33;
  }

  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E548, &unk_23E907980);
  *(&v140 + 1) = v65;
  v141 = sub_23E880EFC(&unk_27E35F600, &qword_27E35E548, &unk_23E907980);
  v66 = __swift_allocate_boxed_opaque_existential_1(&v139);
  (*(v131 + 16))(v66, v151, v26);
  *(v66 + *(v65 + 36)) = 15;
  *(v66 + *(v65 + 40)) = v61;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_23E88A098(0, v24[2] + 1, 1, v24);
  }

  v68 = v24[2];
  v67 = v24[3];
  if (v68 >= v67 >> 1)
  {
    v24 = sub_23E88A098((v67 > 1), v68 + 1, 1, v24);
  }

  v24[2] = v68 + 1;
  v69 = &v24[5 * v68];
  v70 = v139;
  v71 = v140;
  v69[8] = v141;
  *(v69 + 2) = v70;
  *(v69 + 3) = v71;
  if (BYTE13(v144[1]) != 2)
  {
    v27 = DWORD2(v144[1]) | (WORD6(v144[1]) << 32);
    v62 = BYTE8(v144[0]);
    v63 = *(&v143 + 1);
    v64 = *&v144[0];
LABEL_33:
    if (_s10AirPlayKit5ColorO2eeoiySbAC_ACtFZ_0(*&v146[8], *&v146[16], v146[24], v63, v64, v62))
    {
      goto LABEL_39;
    }
  }

  v149 = *&v146[8];
  v150 = v146[24];
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E538, &unk_23E907970);
  *(&v140 + 1) = v72;
  v141 = sub_23E880EFC(&unk_27E35F5E0, &qword_27E35E538, &unk_23E907970);
  v73 = __swift_allocate_boxed_opaque_existential_1(&v139);
  (*(v131 + 16))(v73, v151, v26);
  *(v73 + *(v72 + 36)) = 16;
  v74 = v73 + *(v72 + 40);
  *v74 = v149;
  v74[16] = v150;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_23E88A098(0, v24[2] + 1, 1, v24);
  }

  v76 = v24[2];
  v75 = v24[3];
  if (v76 >= v75 >> 1)
  {
    v24 = sub_23E88A098((v75 > 1), v76 + 1, 1, v24);
  }

  v24[2] = v76 + 1;
  v77 = &v24[5 * v76];
  v78 = v139;
  v79 = v140;
  v77[8] = v141;
  *(v77 + 2) = v78;
  *(v77 + 3) = v79;
  v27 = DWORD2(v144[1]) | (WORD6(v144[1]) << 32);
LABEL_39:
  v80 = *&v146[28];
  v81 = *&v146[36];
  v82 = v146[44];
  if (BYTE5(v27) == 2 || (v147 = __PAIR64__(v27, DWORD1(v144[1])), v148 = WORD2(v27), (_s10AirPlayKit5ColorO2eeoiySbAC_ACtFZ_0(*&v146[28], *&v146[36], v146[44], *(v144 + 12), __SPAIR64__(v27, DWORD1(v144[1])), SBYTE4(v27)) & 1) == 0))
  {
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E538, &unk_23E907970);
    *(&v140 + 1) = v85;
    v141 = sub_23E880EFC(&unk_27E35F5E0, &qword_27E35E538, &unk_23E907970);
    v86 = __swift_allocate_boxed_opaque_existential_1(&v139);
    v26 = v132;
    v126 = *(v131 + 16);
    v126(v86, v151, v132);
    *(v86 + *(v85 + 36)) = 17;
    v87 = v86 + *(v85 + 40);
    *v87 = v80;
    *(v87 + 1) = v81;
    v87[16] = v82;
    v88 = v24;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v88 = sub_23E88A098(0, v24[2] + 1, 1, v24);
    }

    v90 = v88[2];
    v89 = v88[3];
    if (v90 >= v89 >> 1)
    {
      v88 = sub_23E88A098((v89 > 1), v90 + 1, 1, v88);
    }

    v88[2] = v90 + 1;
    v91 = &v88[5 * v90];
    v92 = v139;
    v93 = v140;
    v91[8] = v141;
    *(v91 + 2) = v92;
    *(v91 + 3) = v93;
    v83 = v146[45];
    v94 = DWORD2(v144[1]) | (WORD6(v144[1]) << 32);
    if ((v94 & 0xFF0000000000) == 0x20000000000)
    {
      if (v146[45])
      {
        v95 = 0x646E756F72;
      }

      else
      {
        v95 = 1701736302;
      }

      if (v146[45])
      {
        v96 = 0xE500000000000000;
      }

      else
      {
        v96 = 0xE400000000000000;
      }

      v97 = v127;
      v126(v127, v151, v26);
      goto LABEL_72;
    }

    v84 = (v94 >> 40) & 1;
    v24 = v88;
  }

  else
  {
    v83 = v146[45];
    LOBYTE(v84) = v123;
  }

  if (v83)
  {
    v95 = 0x646E756F72;
  }

  else
  {
    v95 = 1701736302;
  }

  if (v83)
  {
    v96 = 0xE500000000000000;
  }

  else
  {
    v96 = 0xE400000000000000;
  }

  if (v84)
  {
    v98 = 0x646E756F72;
  }

  else
  {
    v98 = 1701736302;
  }

  if (v84)
  {
    v99 = 0xE500000000000000;
  }

  else
  {
    v99 = 0xE400000000000000;
  }

  if (v95 == v98 && v96 == v99)
  {

    goto LABEL_77;
  }

  v100 = sub_23E900E04();

  if ((v100 & 1) == 0)
  {
    v88 = v24;
    v97 = v127;
    (*(v131 + 16))(v127, v151, v26);
LABEL_72:
    v101 = v129;
    (*(v131 + 32))(v129, v97, v26);
    v102 = v128;
    *(v101 + *(v128 + 36)) = 19;
    v103 = (v101 + *(v102 + 40));
    *v103 = v95;
    v103[1] = v96;
    *(&v140 + 1) = v102;
    v141 = sub_23E880EFC(&qword_27E35F240, &qword_27E35F238, &qword_23E906A18);
    v104 = __swift_allocate_boxed_opaque_existential_1(&v139);
    sub_23E8D5454(v101, v104);
    v24 = v88;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_23E88A098(0, v88[2] + 1, 1, v88);
    }

    v106 = v24[2];
    v105 = v24[3];
    if (v106 >= v105 >> 1)
    {
      v24 = sub_23E88A098((v105 > 1), v106 + 1, 1, v24);
    }

    v24[2] = v106 + 1;
    v107 = &v24[5 * v106];
    v108 = v139;
    v109 = v140;
    v107[8] = v141;
    *(v107 + 2) = v108;
    *(v107 + 3) = v109;
  }

LABEL_77:
  v110 = v24[2];
  if (v110)
  {
    v151 = v24;
    v111 = (v24 + 4);
    v15 = MEMORY[0x277D84F90];
    do
    {
      sub_23E880F50(v111, &v139);
      v133[0] = v139;
      v133[1] = v140;
      v134 = v141;
      if (*(&v140 + 1))
      {
        sub_23E881028(v133, v135);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v138 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v15 = sub_23E889F50(0, v15[2] + 1, 1, v15);
          v138 = v15;
        }

        v114 = v15[2];
        v113 = v15[3];
        if (v114 >= v113 >> 1)
        {
          v15 = sub_23E889F50((v113 > 1), v114 + 1, 1, v15);
          v138 = v15;
        }

        v115 = v136;
        v116 = v137;
        v117 = __swift_mutable_project_boxed_opaque_existential_1(v135, v136);
        v118 = *(*(v115 - 8) + 64);
        MEMORY[0x28223BE20](v117);
        v120 = &v123 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v121 + 16))(v120);
        sub_23E8F2C70(v114, v120, &v138, v115, v116);
        __swift_destroy_boxed_opaque_existential_1(v135);
      }

      else
      {
        sub_23E880FC0(v133);
      }

      v111 += 40;
      --v110;
    }

    while (v110);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v15;
}

uint64_t sub_23E8D5454(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F238, &qword_23E906A18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E8D54C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = v2 + *(a1 + 20);
  result = sub_23E8CE3CC();
  if (result)
  {
    v7 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23E903380;
    *(inited + 32) = 0xD000000000000013;
    *(inited + 40) = 0x800000023E909100;
    v9 = v3[1];
    v12[0] = *v3;
    v12[1] = v9;

    sub_23E900C64();
    v10 = sub_23E88F1F4(inited);
    swift_setDeallocating();
    sub_23E8D3054(inited + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12[0] = v7;
    sub_23E8D0D04(v10, sub_23E8CF910, 0, isUniquelyReferenced_nonNull_native, v12);

    result = v12[0];
  }

  *a2 = result;
  return result;
}

uint64_t sub_23E8D55FC(uint64_t a1)
{
  result = sub_23E8D5684(&qword_27E35F248);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23E8D5640(uint64_t a1)
{
  result = sub_23E8D5684(&qword_27E35F250);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23E8D5684(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SpriteSheetAnimation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t RenderAsset.MIMEType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x504A2F6F65646976;
  }

  else
  {
    result = 0x6E702F6567616D69;
  }

  *v0;
  return result;
}

AirPlayKit::RenderAsset::MIMEType_optional __swiftcall RenderAsset.MIMEType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23E900DA4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_23E8D5774(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x504A2F6F65646976;
  }

  else
  {
    v4 = 0x6E702F6567616D69;
  }

  if (v3)
  {
    v5 = 0xE900000000000067;
  }

  else
  {
    v5 = 0xEA00000000004745;
  }

  if (*a2)
  {
    v6 = 0x504A2F6F65646976;
  }

  else
  {
    v6 = 0x6E702F6567616D69;
  }

  if (*a2)
  {
    v7 = 0xEA00000000004745;
  }

  else
  {
    v7 = 0xE900000000000067;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_23E900E04();
  }

  return v9 & 1;
}

uint64_t sub_23E8D5824()
{
  v1 = *v0;
  sub_23E900EB4();
  sub_23E900904();

  return sub_23E900F14();
}

uint64_t sub_23E8D58B0()
{
  *v0;
  sub_23E900904();
}

uint64_t sub_23E8D5928()
{
  v1 = *v0;
  sub_23E900EB4();
  sub_23E900904();

  return sub_23E900F14();
}

uint64_t sub_23E8D59B0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23E900DA4();

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

void sub_23E8D5A10(uint64_t *a1@<X8>)
{
  v2 = 0x6E702F6567616D69;
  if (*v1)
  {
    v2 = 0x504A2F6F65646976;
  }

  v3 = 0xE900000000000067;
  if (*v1)
  {
    v3 = 0xEA00000000004745;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t RenderAsset.ImageType.hash(into:)()
{
  if (v0[3])
  {
    v1 = 0;
  }

  else
  {
    v1 = v0[2];
    v2 = *v0;
    v3 = HIDWORD(v0[1]);
    MEMORY[0x23EF17B90](1);
    sub_23E900EE4();
    sub_23E900EE4();
    sub_23E900EE4();
    sub_23E900EE4();
  }

  return MEMORY[0x23EF17B90](v1);
}

uint64_t RenderAsset.ImageType.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_23E900EB4();
  RenderAsset.ImageType.hash(into:)();
  return sub_23E900F14();
}

uint64_t sub_23E8D5B6C()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_23E900EB4();
  RenderAsset.ImageType.hash(into:)();
  return sub_23E900F14();
}

uint64_t sub_23E8D5BCC()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_23E900EB4();
  RenderAsset.ImageType.hash(into:)();
  return sub_23E900F14();
}

uint64_t RenderAsset.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

__n128 RenderAsset.type.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[2].n128_u64[0];
  v3 = v1[2].n128_u8[8];
  result = v1[1];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

__n128 RenderAsset.init(identifier:type:mime:serialized:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, unsigned __int8 *a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, __n128 *a7@<X8>)
{
  v7 = a3[1].n128_u64[0];
  v8 = a3[1].n128_u8[8];
  v9 = *a4;
  a7->n128_u64[0] = a1;
  a7->n128_u64[1] = a2;
  result = *a3;
  a7[1] = *a3;
  a7[2].n128_u64[0] = v7;
  a7[2].n128_u8[8] = v8;
  a7[2].n128_u8[9] = v9;
  a7[3].n128_u64[0] = a5;
  a7[3].n128_u64[1] = a6;
  return result;
}

uint64_t RenderAsset.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  v7 = *(v0 + 41);
  sub_23E900904();
  if (v6)
  {
    v5 = 0;
  }

  else
  {
    MEMORY[0x23EF17B90](1);
    sub_23E900EE4();
    sub_23E900EE4();
    sub_23E900EE4();
    sub_23E900EE4();
  }

  MEMORY[0x23EF17B90](v5);
  sub_23E900904();
}

uint64_t RenderAsset.hashValue.getter()
{
  sub_23E900EB4();
  RenderAsset.hash(into:)();
  return sub_23E900F14();
}

uint64_t sub_23E8D5E10()
{
  sub_23E900EB4();
  RenderAsset.hash(into:)();
  return sub_23E900F14();
}

uint64_t sub_23E8D5E54()
{
  sub_23E900EB4();
  RenderAsset.hash(into:)();
  return sub_23E900F14();
}

uint64_t _s10AirPlayKit11RenderAssetV9ImageTypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    return (*(a2 + 24) & 1) != 0;
  }

  if (*(a2 + 24))
  {
    return 0;
  }

  v4 = COERCE_FLOAT(HIDWORD(*a1)) == COERCE_FLOAT(HIDWORD(*a2)) && COERCE_FLOAT(*a1) == COERCE_FLOAT(*a2);
  v5 = v4 & (COERCE_FLOAT(*(a1 + 8)) == COERCE_FLOAT(*(a2 + 8)));
  if (COERCE_FLOAT(HIDWORD(*(a1 + 8))) != COERCE_FLOAT(HIDWORD(*(a2 + 8))))
  {
    v5 = 0;
  }

  if (*(a1 + 16) == *(a2 + 16))
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t _s10AirPlayKit11RenderAssetV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 41);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 41);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_23E900E04() & 1) == 0)
  {
    goto LABEL_21;
  }

  if ((v5 & 1) == 0)
  {
    if ((v10 & 1) == 0)
    {
      v12 = *&v2 == *&v8 && *(&v2 + 1) == *(&v8 + 1);
      v13 = v12 && *&v4 == *&v7;
      v14 = v13 && *(&v4 + 1) == *(&v7 + 1);
      if (v14 && v3 == v9)
      {
        goto LABEL_22;
      }
    }

LABEL_21:
    v16 = 0;
    return v16 & 1;
  }

  if ((v10 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_22:
  if (v6)
  {
    v17 = 0x504A2F6F65646976;
  }

  else
  {
    v17 = 0x6E702F6567616D69;
  }

  if (v6)
  {
    v18 = 0xEA00000000004745;
  }

  else
  {
    v18 = 0xE900000000000067;
  }

  if (v11)
  {
    v19 = 0x504A2F6F65646976;
  }

  else
  {
    v19 = 0x6E702F6567616D69;
  }

  if (v11)
  {
    v20 = 0xEA00000000004745;
  }

  else
  {
    v20 = 0xE900000000000067;
  }

  if (v17 == v19 && v18 == v20)
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_23E900E04();
  }

  return v16 & 1;
}

unint64_t sub_23E8D6094()
{
  result = qword_27E35F258;
  if (!qword_27E35F258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F258);
  }

  return result;
}

unint64_t sub_23E8D60EC()
{
  result = qword_27E35F260;
  if (!qword_27E35F260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F260);
  }

  return result;
}

unint64_t sub_23E8D6144()
{
  result = qword_27E35F268;
  if (!qword_27E35F268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F268);
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

uint64_t sub_23E8D61AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_23E8D61F4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t initializeBufferWithCopyOfBuffer for RenderAsset.ImageType(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for RenderAsset.ImageType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RenderAsset.ImageType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
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

  *(result + 25) = v3;
  return result;
}

uint64_t sub_23E8D62FC(uint64_t a1)
{
  if (*(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23E8D6318(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 24) = 1;
  }

  else
  {
    *(result + 24) = 0;
  }

  return result;
}

uint64_t sub_23E8D64D8(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_23E8D65A8;

  return sub_23E8D6D10();
}

uint64_t sub_23E8D65A8()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v2)
  {
    v8 = sub_23E900554();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F2D0, qword_23E906C78);
    v11 = sub_23E9009A4();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v3 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

uint64_t sub_23E8D68F8(void *a1, int a2, void *aBlock, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v6 = sub_23E900884();
  v8 = v7;
  v4[5] = v7;
  v9 = a1;

  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_23E8D69F0;

  return sub_23E8D7094(v6, v8);
}

uint64_t sub_23E8D69F0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = v3;
  v7 = *v4;
  v8 = *(*v4 + 48);
  v9 = *(*v4 + 40);
  v10 = *(*v4 + 24);
  v11 = *(*v4 + 16);
  v12 = *v4;

  v13 = *(v7 + 32);
  if (v3)
  {
    v14 = sub_23E900554();

    (v13)[2](v13, 0, 0, v14);
    _Block_release(v13);
  }

  else
  {
    v15 = sub_23E900854();
    (v13)[2](v13, v15, a3 & 1, 0);

    _Block_release(v13);
  }

  v16 = *(v12 + 8);

  return v16();
}

uint64_t sub_23E8D6C00()
{
  _Block_release(*(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23E8D6C50()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23E889AD8;

  return sub_23E8D68F8(v2, v3, v5, v4);
}

uint64_t sub_23E8D6D30()
{
  v1 = v0[2];
  v2 = *(v1 + 96);
  v0[3] = v2;
  v0[4] = *(v1 + 104);
  if (v2)
  {

    v8 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    v0[5] = v4;
    *v4 = v0;
    v4[1] = sub_23E8D6EA0;

    return v8();
  }

  else
  {
    sub_23E8A9420();
    swift_allocError();
    *v6 = 8;
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_23E8D6EA0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = sub_23E8D7030;
  }

  else
  {
    *(v4 + 56) = a1;
    v7 = sub_23E8D6FC8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_23E8D6FC8()
{
  v1 = v0[4];
  sub_23E882A30(v0[3]);
  v2 = v0[1];
  v3 = v0[7];

  return v2(v3);
}

uint64_t sub_23E8D7030()
{
  v1 = v0[4];
  sub_23E882A30(v0[3]);
  v2 = v0[6];
  v3 = v0[1];

  return v3();
}

uint64_t sub_23E8D7094(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_23E8D70B8, 0, 0);
}

uint64_t sub_23E8D70B8()
{
  v1 = v0[4];
  v2 = *(v1 + 112);
  v0[5] = v2;
  v0[6] = *(v1 + 120);
  if (v2)
  {

    v10 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    v4[1] = sub_23E8D7234;
    v6 = v0[2];
    v5 = v0[3];

    return v10(v6, v5);
  }

  else
  {
    sub_23E8A9420();
    swift_allocError();
    *v8 = 8;
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_23E8D7234(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 56);
  v8 = *v3;
  *(*v3 + 64) = v2;

  if (v2)
  {
    v9 = sub_23E8D7418;
  }

  else
  {
    *(v6 + 72) = a2;
    *(v6 + 80) = a1;
    v9 = sub_23E8D7368;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_23E8D7368()
{
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[5];
  v3 = v0[6];
  v5 = sub_23E900624();
  v7 = v6;
  sub_23E882A30(v4);
  sub_23E8A7854(v2, v1);
  v8 = v0[1];

  return v8(v5, v7, 1);
}

uint64_t sub_23E8D7418()
{
  v1 = v0[6];
  sub_23E882A30(v0[5]);
  v2 = v0[8];
  v3 = v0[1];

  return v3();
}

uint64_t sub_23E8D7480()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23E8D74C8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23E888F34;

  return sub_23E8D64D8(v2, v3, v4);
}

unint64_t sub_23E8D758C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E902EF0;
  *(inited + 32) = 1953394534;
  *(inited + 40) = 0xE400000000000000;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F2F8, qword_23E906CF0);
  sub_23E8D78CC();
  sub_23E900C64();
  *(inited + 88) = 0x657A6953746E6F66;
  *(inited + 96) = 0xE800000000000000;
  sub_23E900C64();
  v5 = sub_23E88F1F4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E598, &unk_23E905080);
  swift_arrayDestroy();
  return v5;
}

unint64_t sub_23E8D76D8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_23E8D758C();
  *a1 = result;
  return result;
}

unint64_t sub_23E8D7700(uint64_t a1)
{
  result = sub_23E8D7728();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8D7728()
{
  result = qword_27E35F2E0;
  if (!qword_27E35F2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F2E0);
  }

  return result;
}

unint64_t sub_23E8D777C(uint64_t a1)
{
  result = sub_23E8D77A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8D77A4()
{
  result = qword_27E35F2E8;
  if (!qword_27E35F2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F2E8);
  }

  return result;
}

uint64_t sub_23E8D77F8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  if (v2)
  {
    v3 = v1[1];
    *a1 = *v1;
    a1[1] = v2;
  }

  else
  {
    *a1 = 0x6D6574737973;
    a1[1] = 0xE600000000000000;
  }
}

unint64_t sub_23E8D7828(uint64_t a1)
{
  result = sub_23E8D7850();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8D7850()
{
  result = qword_27E35F2F0;
  if (!qword_27E35F2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F2F0);
  }

  return result;
}

unint64_t sub_23E8D78A4(uint64_t a1)
{
  result = sub_23E8A7FA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8D78CC()
{
  result = qword_27E35F300;
  if (!qword_27E35F300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35F2F8, qword_23E906CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F300);
  }

  return result;
}

unint64_t sub_23E8D7948()
{
  result = sub_23E8F5DB4();
  if (result)
  {
    if (sub_23E8F5DB4())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23E902EF0;
      *(inited + 32) = 0x6874646977;
      *(inited + 40) = 0xE500000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E578, qword_23E904420);
      sub_23E881570();
      sub_23E900C64();
      *(inited + 88) = 0x746867696568;
      *(inited + 96) = 0xE600000000000000;
      sub_23E900C64();
      v2 = sub_23E88F1F4(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E598, &unk_23E905080);
      swift_arrayDestroy();
      return v2;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

unint64_t sub_23E8D7A98@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1 | (*(v1 + 4) << 32);
  v4 = v1[2] | (*(v1 + 12) << 32);
  result = sub_23E8D7948();
  *a1 = result;
  return result;
}

unint64_t sub_23E8D7AD8(uint64_t a1)
{
  result = sub_23E89C968();
  *(a1 + 8) = result;
  return result;
}

void sub_23E8D7B00(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC10AirPlayKit19RunLoopWorkerThread_lock);
  swift_unknownObjectWeakInit();
  os_unfair_lock_lock(*(v5 + 16));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    v9 = OBJC_IVAR____TtC10AirPlayKit19RunLoopWorkerThread_pendingQueue;
    swift_beginAccess();
    v10 = *&v7[v9];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v7[v9] = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_23E88A2E4(0, v10[2] + 1, 1, v10);
      *&v7[v9] = v10;
    }

    v13 = v10[2];
    v12 = v10[3];
    if (v13 >= v12 >> 1)
    {
      v10 = sub_23E88A2E4((v12 > 1), v13 + 1, 1, v10);
    }

    v10[2] = v13 + 1;
    v14 = &v10[2 * v13];
    v14[4] = sub_23E888DC0;
    v14[5] = v8;
    *&v7[v9] = v10;
    swift_endAccess();
  }

  os_unfair_lock_unlock(*(v5 + 16));
  MEMORY[0x23EF18610](v19);
  v15 = *(v2 + OBJC_IVAR____TtC10AirPlayKit19RunLoopWorkerThread_runLoop);
  if (v15)
  {
    v16 = *(v2 + OBJC_IVAR____TtC10AirPlayKit19RunLoopWorkerThread_source);
    if (v16)
    {
      v17 = v16;
      v18 = v15;
      CFRunLoopSourceSignal(v17);
      CFRunLoopWakeUp(v18);
    }
  }
}

id sub_23E8D7CB4()
{
  ObjectType = swift_getObjectType();
  if (qword_27E35E188 != -1)
  {
    swift_once();
  }

  v2 = sub_23E900764();
  __swift_project_value_buffer(v2, qword_27E367168);
  sub_23E882260(0xD00000000000005BLL, 0x800000023E909230, 0x74696E696564, 0xE600000000000000);
  v3 = v0;
  [v3 cancel];

  v5.receiver = v3;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

void sub_23E8D7EDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F340, &qword_23E906D50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  v7 = [objc_allocWithZone(type metadata accessor for RunLoopWorkerThread()) init];
  (*(v3 + 16))(v6, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = (v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v8, v6, v2);
  *(v10 + v9) = v7;
  v11 = v7;
  sub_23E8D7B00(sub_23E8D8DD4, v10);

  [v11 start];
}

uint64_t sub_23E8D8064(uint64_t a1, void *a2)
{
  v2 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F340, &qword_23E906D50);
  return sub_23E900A54();
}

void sub_23E8D80B4(void *a1, char *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = CFRunLoopGetCurrent();
  context.version = 0;
  context.info = a1;
  memset(&context.retain, 0, 48);
  context.cancel = sub_23E8D85A0;
  context.perform = sub_23E8D85A4;
  if (qword_27E35E188 != -1)
  {
    swift_once();
  }

  v5 = sub_23E900764();
  __swift_project_value_buffer(v5, qword_27E367168);
  v6 = sub_23E900744();
  v7 = sub_23E900B14();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v42 = v9;
    *v8 = 136315138;
    swift_beginAccess();
    v41 = context;
    type metadata accessor for CFRunLoopSourceContext(0);
    v10 = sub_23E9008D4();
    v12 = v4;
    v13 = sub_23E887B9C(v10, v11, &v42);

    *(v8 + 4) = v13;
    v4 = v12;
    _os_log_impl(&dword_23E879000, v6, v7, "CFRunLoopSourceContext: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x23EF18560](v9, -1, -1);
    MEMORY[0x23EF18560](v8, -1, -1);
  }

  v14 = *MEMORY[0x277CBECE8];
  swift_beginAccess();
  v15 = CFRunLoopSourceCreate(v14, 0, &context);
  swift_endAccess();
  v16 = v15;
  v17 = v4;
  v18 = sub_23E900744();
  v19 = sub_23E900B14();

  v40 = v16;
  if (os_log_type_enabled(v18, v19))
  {
    v38 = v4;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v41.version = v21;
    *v20 = 136315394;
    v42 = v15;
    v22 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F328, &qword_23E906D38);
    v23 = sub_23E9008D4();
    v25 = sub_23E887B9C(v23, v24, &v41.version);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    v42 = v38;
    v26 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F330, &qword_23E906D40);
    v27 = sub_23E9008D4();
    v29 = sub_23E887B9C(v27, v28, &v41.version);

    *(v20 + 14) = v29;
    _os_log_impl(&dword_23E879000, v18, v19, "Adding %s to %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EF18560](v21, -1, -1);
    v30 = v20;
    v4 = v38;
    MEMORY[0x23EF18560](v30, -1, -1);
  }

  v31 = *MEMORY[0x277CBF058];
  CFRunLoopAddSource(v17, v16, *MEMORY[0x277CBF058]);
  v32 = *&a2[OBJC_IVAR____TtC10AirPlayKit19RunLoopWorkerThread_lock];
  swift_unknownObjectWeakInit();
  os_unfair_lock_lock(*(v32 + 16));
  sub_23E8D85F4(&v41, v4, v15);
  if (v39)
  {

    os_unfair_lock_unlock(*(v32 + 16));
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(*(v32 + 16));
    MEMORY[0x23EF18610](&v41);
    sub_23E8D8818();
    do
    {
      v33 = MEMORY[0x23EF17D10]();
      v34 = CFRunLoopRunInMode(v31, 1.0e10, 1u);
      objc_autoreleasePoolPop(v33);
    }

    while ((v34 - 1) >= 2 && ![a2 isCancelled]);
    swift_unknownObjectWeakInit();
    os_unfair_lock_lock(*(v32 + 16));
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v36 = Strong;
      sub_23E8D8900();
    }

    os_unfair_lock_unlock(*(v32 + 16));

    MEMORY[0x23EF18610](&v42);
    v37 = *MEMORY[0x277D85DE8];
  }
}

void sub_23E8D85A4(void *a1)
{
  if (a1)
  {
    v1 = a1;
    sub_23E8D8818();
  }
}

void sub_23E8D85F4(uint64_t a1, void *a2, void *a3)
{
  if (qword_27E35E188 != -1)
  {
    swift_once();
  }

  v6 = sub_23E900764();
  __swift_project_value_buffer(v6, qword_27E367168);
  v7 = sub_23E900744();
  v8 = sub_23E900B14();
  if (os_log_type_enabled(v7, v8))
  {
    v22[4] = v3;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22[0] = v10;
    *v9 = 136315138;
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F338, &qword_23E906D48);
    v11 = sub_23E9008D4();
    v13 = sub_23E887B9C(v11, v12, v22);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_23E879000, v7, v8, "%s has been activated!", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x23EF18560](v10, -1, -1);
    MEMORY[0x23EF18560](v9, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = *(Strong + OBJC_IVAR____TtC10AirPlayKit19RunLoopWorkerThread_runLoop);
    *(Strong + OBJC_IVAR____TtC10AirPlayKit19RunLoopWorkerThread_runLoop) = a2;
    v16 = Strong;
    v17 = a2;
  }

  swift_beginAccess();
  v18 = swift_unknownObjectWeakLoadStrong();
  if (v18)
  {
    v19 = *(v18 + OBJC_IVAR____TtC10AirPlayKit19RunLoopWorkerThread_source);
    *(v18 + OBJC_IVAR____TtC10AirPlayKit19RunLoopWorkerThread_source) = a3;
    v20 = v18;
    v21 = a3;
  }
}

void sub_23E8D8818()
{
  v1 = *(v0 + OBJC_IVAR____TtC10AirPlayKit19RunLoopWorkerThread_lock);
  swift_unknownObjectWeakInit();
  os_unfair_lock_lock(*(v1 + 16));
  sub_23E8D8A64(&v9);
  os_unfair_lock_unlock(*(v1 + 16));
  v2 = v9;
  MEMORY[0x23EF18610](v10);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = 0;
      v5 = (v2 + 40);
      while (v4 < *(v2 + 16))
      {
        ++v4;
        v7 = *(v5 - 1);
        v6 = *v5;

        v7(v8);

        v5 += 2;
        if (v3 == v4)
        {
          goto LABEL_6;
        }
      }

      __break(1u);

      os_unfair_lock_unlock(*(v2 + 16));
      __break(1u);
    }

    else
    {
LABEL_6:
    }
  }
}

uint64_t sub_23E8D8900()
{
  v1 = v0;
  if (qword_27E35E188 != -1)
  {
    swift_once();
  }

  v2 = sub_23E900764();
  __swift_project_value_buffer(v2, qword_27E367168);
  sub_23E882260(0xD00000000000005BLL, 0x800000023E909230, 0x2870556E61656C63, 0xE900000000000029);
  v3 = *(v0 + OBJC_IVAR____TtC10AirPlayKit19RunLoopWorkerThread_runLoop);
  *(v0 + OBJC_IVAR____TtC10AirPlayKit19RunLoopWorkerThread_runLoop) = 0;

  v4 = *(v0 + OBJC_IVAR____TtC10AirPlayKit19RunLoopWorkerThread_source);
  *(v0 + OBJC_IVAR____TtC10AirPlayKit19RunLoopWorkerThread_source) = 0;

  v5 = OBJC_IVAR____TtC10AirPlayKit19RunLoopWorkerThread_pendingQueue;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v1 + v5) = MEMORY[0x277D84F90];
}

uint64_t sub_23E8D8A64@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = OBJC_IVAR____TtC10AirPlayKit19RunLoopWorkerThread_pendingQueue;
    v4 = Strong;
    swift_beginAccess();
    v5 = *&v4[v3];
  }

  else
  {
    v5 = 0;
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = OBJC_IVAR____TtC10AirPlayKit19RunLoopWorkerThread_pendingQueue;
    v8 = result;
    swift_beginAccess();
    v9 = *&v8[v7];
    *&v8[v7] = MEMORY[0x277D84F90];
  }

  *a1 = v5;
  return result;
}

void sub_23E8D8C2C(char *a1)
{
  if (a1)
  {
    v1 = *&a1[OBJC_IVAR____TtC10AirPlayKit19RunLoopWorkerThread_runLoop];
    v2 = a1;
    if (v1)
    {
      v3 = *&v2[OBJC_IVAR____TtC10AirPlayKit19RunLoopWorkerThread_source];
      if (v3)
      {
        v8 = v2;
        v4 = v3;
        v5 = v1;
        [v8 cancel];
        v6 = *MEMORY[0x277CBF058];
        v7 = v5;
        CFRunLoopRemoveSource(v7, v4, v6);
        CFRunLoopStop(v7);

        v2 = v8;
      }
    }
  }
}

uint64_t sub_23E8D8CF4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}