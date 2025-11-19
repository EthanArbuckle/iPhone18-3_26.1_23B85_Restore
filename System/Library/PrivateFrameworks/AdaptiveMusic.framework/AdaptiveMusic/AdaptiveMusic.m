unint64_t sub_23E791C44()
{
  v1 = 0xD000000000000010;
  v2 = *v0;
  v3 = 0xD000000000000016;
  v4 = 0xD000000000000020;
  if (v2 != 4)
  {
    v4 = 0xD00000000000001ELL;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  if (v2 != 1)
  {
    v1 = 0xD000000000000018;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000015;
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

uint64_t sub_23E791CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23E793F80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23E791D34(uint64_t a1)
{
  v2 = sub_23E792730();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E791D70(uint64_t a1)
{
  v2 = sub_23E792730();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23E791DB8@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_23E791DF4(uint64_t a1)
{
  v2 = sub_23E792928();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E791E30(uint64_t a1)
{
  v2 = sub_23E792928();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23E791E6C(uint64_t a1)
{
  v2 = sub_23E7927D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E791EA8(uint64_t a1)
{
  v2 = sub_23E7927D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23E791EE4(uint64_t a1)
{
  v2 = sub_23E79282C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E791F20(uint64_t a1)
{
  v2 = sub_23E79282C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23E791F5C(uint64_t a1)
{
  v2 = sub_23E792880();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E791F98(uint64_t a1)
{
  v2 = sub_23E792880();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23E791FD4(uint64_t a1)
{
  v2 = sub_23E7928D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E792010(uint64_t a1)
{
  v2 = sub_23E7928D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23E79204C(uint64_t a1)
{
  v2 = sub_23E792784();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E792088(uint64_t a1)
{
  v2 = sub_23E792784();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdaptiveMusicError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FB60, &qword_23E7E0860);
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v47 = &v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FB68, &qword_23E7E0868);
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v44 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FB70, &qword_23E7E0870);
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v41 = &v34 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FB78, &qword_23E7E0878);
  v39 = *(v12 - 8);
  v40 = v12;
  v13 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v38 = &v34 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FB80, &qword_23E7E0880);
  v36 = *(v15 - 8);
  v37 = v15;
  v16 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v35 = &v34 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FB88, &qword_23E7E0888);
  v34 = *(v18 - 8);
  v19 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v21 = &v34 - v20;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FB90, &qword_23E7E0890);
  v22 = *(v50 - 8);
  v23 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v25 = &v34 - v24;
  v26 = *v1;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E792730();
  sub_23E7DDA08();
  v28 = (v22 + 8);
  if (v26 > 2)
  {
    if (v26 == 3)
    {
      v54 = 3;
      sub_23E79282C();
      v29 = v41;
      v30 = v50;
      sub_23E7DD878();
      v32 = v42;
      v31 = v43;
    }

    else if (v26 == 4)
    {
      v55 = 4;
      sub_23E7927D8();
      v29 = v44;
      v30 = v50;
      sub_23E7DD878();
      v32 = v45;
      v31 = v46;
    }

    else
    {
      v56 = 5;
      sub_23E792784();
      v29 = v47;
      v30 = v50;
      sub_23E7DD878();
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
      sub_23E7928D4();
      v29 = v35;
      v30 = v50;
      sub_23E7DD878();
      v32 = v36;
      v31 = v37;
    }

    else
    {
      v53 = 2;
      sub_23E792880();
      v29 = v38;
      v30 = v50;
      sub_23E7DD878();
      v32 = v39;
      v31 = v40;
    }

LABEL_12:
    (*(v32 + 8))(v29, v31);
    return (*v28)(v25, v30);
  }

  v51 = 0;
  sub_23E792928();
  v30 = v50;
  sub_23E7DD878();
  (*(v34 + 8))(v21, v18);
  return (*v28)(v25, v30);
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_23E792730()
{
  result = qword_27E34FB98;
  if (!qword_27E34FB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FB98);
  }

  return result;
}

unint64_t sub_23E792784()
{
  result = qword_27E34FBA0;
  if (!qword_27E34FBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FBA0);
  }

  return result;
}

unint64_t sub_23E7927D8()
{
  result = qword_27E34FBA8;
  if (!qword_27E34FBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FBA8);
  }

  return result;
}

unint64_t sub_23E79282C()
{
  result = qword_27E34FBB0;
  if (!qword_27E34FBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FBB0);
  }

  return result;
}

unint64_t sub_23E792880()
{
  result = qword_27E34FBB8;
  if (!qword_27E34FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FBB8);
  }

  return result;
}

unint64_t sub_23E7928D4()
{
  result = qword_27E34FBC0;
  if (!qword_27E34FBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FBC0);
  }

  return result;
}

unint64_t sub_23E792928()
{
  result = qword_27E34FBC8;
  if (!qword_27E34FBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FBC8);
  }

  return result;
}

uint64_t AdaptiveMusicError.hashValue.getter()
{
  v1 = *v0;
  sub_23E7DD9A8();
  MEMORY[0x23EF13410](v1);
  return sub_23E7DD9C8();
}

uint64_t AdaptiveMusicError.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FBD0, &qword_23E7E0898);
  v64 = *(v3 - 8);
  v65 = v3;
  v4 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v67 = &v52[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FBD8, &qword_23E7E08A0);
  v7 = *(v6 - 8);
  v62 = v6;
  v63 = v7;
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v66 = &v52[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FBE0, &qword_23E7E08A8);
  v11 = *(v10 - 8);
  v60 = v10;
  v61 = v11;
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v70 = &v52[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FBE8, &qword_23E7E08B0);
  v58 = *(v14 - 8);
  v59 = v14;
  v15 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v69 = &v52[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FBF0, &qword_23E7E08B8);
  v56 = *(v17 - 8);
  v57 = v17;
  v18 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v20 = &v52[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FBF8, &qword_23E7E08C0);
  v55 = *(v21 - 8);
  v22 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v24 = &v52[-v23];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FC00, &qword_23E7E08C8);
  v26 = *(v25 - 8);
  v27 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v29 = &v52[-v28];
  v30 = a1[3];
  v31 = a1[4];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  sub_23E792730();
  v32 = v71;
  sub_23E7DD9E8();
  if (!v32)
  {
    v54 = v21;
    v33 = v20;
    v35 = v69;
    v34 = v70;
    v71 = v26;
    v36 = v29;
    v37 = sub_23E7DD858();
    if (*(v37 + 16) != 1 || (v38 = *(v37 + 32), v38 == 6))
    {
      v41 = sub_23E7DD768();
      swift_allocError();
      v43 = v42;
      v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FC08, &qword_23E7E08D0) + 48);
      *v43 = &type metadata for AdaptiveMusicError;
      sub_23E7DD808();
      sub_23E7DD758();
      (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D84160], v41);
      swift_willThrow();
      (*(v71 + 8))(v36, v25);
      swift_unknownObjectRelease();
    }

    else
    {
      v53 = *(v37 + 32);
      if (v38 > 2)
      {
        if (v38 == 3)
        {
          v48 = v68;
          v76 = 3;
          sub_23E79282C();
          sub_23E7DD7F8();
          v49 = v71;
          (*(v61 + 8))(v34, v60);
          (*(v49 + 8))(v29, v25);
          swift_unknownObjectRelease();
          v45 = v48;
        }

        else
        {
          v45 = v68;
          v46 = v71;
          if (v38 == 4)
          {
            v77 = 4;
            sub_23E7927D8();
            v47 = v66;
            sub_23E7DD7F8();
            (*(v63 + 8))(v47, v62);
          }

          else
          {
            v78 = 5;
            sub_23E792784();
            v50 = v67;
            sub_23E7DD7F8();
            (*(v64 + 8))(v50, v65);
          }

          (*(v46 + 8))(v29, v25);
          swift_unknownObjectRelease();
        }
      }

      else
      {
        if (v38)
        {
          if (v38 == 1)
          {
            v74 = 1;
            sub_23E7928D4();
            v39 = v33;
            sub_23E7DD7F8();
            v40 = v71;
            (*(v56 + 8))(v39, v57);
          }

          else
          {
            v75 = 2;
            sub_23E792880();
            sub_23E7DD7F8();
            v40 = v71;
            (*(v58 + 8))(v35, v59);
          }
        }

        else
        {
          v73 = 0;
          sub_23E792928();
          sub_23E7DD7F8();
          (*(v55 + 8))(v24, v54);
          v40 = v71;
        }

        (*(v40 + 8))(v29, v25);
        swift_unknownObjectRelease();
        v45 = v68;
      }

      *v45 = v53;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v72);
}

uint64_t sub_23E793234()
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

uint64_t sub_23E793268()
{
  v1 = *v0;
  sub_23E7DD9A8();
  MEMORY[0x23EF13410](v1);
  return sub_23E7DD9C8();
}

uint64_t sub_23E7932B0()
{
  v1 = *v0;
  sub_23E7DD9A8();
  MEMORY[0x23EF13410](v1);
  return sub_23E7DD9C8();
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_23E793344()
{
  result = qword_27E34FC10;
  if (!qword_27E34FC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FC10);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ManifestResources.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ManifestResources.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23E7935DC()
{
  result = qword_27E34FC20;
  if (!qword_27E34FC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FC20);
  }

  return result;
}

unint64_t sub_23E793634()
{
  result = qword_27E34FC28;
  if (!qword_27E34FC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FC28);
  }

  return result;
}

unint64_t sub_23E79368C()
{
  result = qword_27E34FC30;
  if (!qword_27E34FC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FC30);
  }

  return result;
}

unint64_t sub_23E7936E4()
{
  result = qword_27E34FC38;
  if (!qword_27E34FC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FC38);
  }

  return result;
}

unint64_t sub_23E79373C()
{
  result = qword_27E34FC40;
  if (!qword_27E34FC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FC40);
  }

  return result;
}

unint64_t sub_23E793794()
{
  result = qword_27E34FC48;
  if (!qword_27E34FC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FC48);
  }

  return result;
}

unint64_t sub_23E7937EC()
{
  result = qword_27E34FC50;
  if (!qword_27E34FC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FC50);
  }

  return result;
}

unint64_t sub_23E793844()
{
  result = qword_27E34FC58;
  if (!qword_27E34FC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FC58);
  }

  return result;
}

unint64_t sub_23E79389C()
{
  result = qword_27E34FC60;
  if (!qword_27E34FC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FC60);
  }

  return result;
}

unint64_t sub_23E7938F4()
{
  result = qword_27E34FC68;
  if (!qword_27E34FC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FC68);
  }

  return result;
}

unint64_t sub_23E79394C()
{
  result = qword_27E34FC70;
  if (!qword_27E34FC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FC70);
  }

  return result;
}

unint64_t sub_23E7939A4()
{
  result = qword_27E34FC78;
  if (!qword_27E34FC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FC78);
  }

  return result;
}

unint64_t sub_23E7939FC()
{
  result = qword_27E34FC80;
  if (!qword_27E34FC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FC80);
  }

  return result;
}

unint64_t sub_23E793A54()
{
  result = qword_27E34FC88;
  if (!qword_27E34FC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FC88);
  }

  return result;
}

unint64_t sub_23E793AAC()
{
  result = qword_27E34FC90;
  if (!qword_27E34FC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FC90);
  }

  return result;
}

uint64_t sub_23E793B20(uint64_t a1)
{
  v2 = sub_23E794290(&qword_27E34FCB0, type metadata accessor for ICError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_23E793B8C(uint64_t a1)
{
  v2 = sub_23E794290(&qword_27E34FCB0, type metadata accessor for ICError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_23E793BF8(void *a1, uint64_t a2)
{
  v4 = sub_23E794290(&qword_27E34FCB0, type metadata accessor for ICError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_23E793CAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23E794290(&qword_27E34FCB0, type metadata accessor for ICError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_23E793D28()
{
  v2 = *v0;
  sub_23E7DD9A8();
  sub_23E7DD2C8();
  return sub_23E7DD9C8();
}

void *sub_23E793D88@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_23E793DB8(uint64_t a1)
{
  v2 = sub_23E794290(&qword_27E34FCB8, type metadata accessor for ICError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_23E793E24(uint64_t a1)
{
  v2 = sub_23E794290(&qword_27E34FCB8, type metadata accessor for ICError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_23E793E90(uint64_t a1)
{
  v2 = sub_23E794290(&qword_27E34FCB0, type metadata accessor for ICError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_23E793EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23E794290(&qword_27E34FCB0, type metadata accessor for ICError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_23E793F80(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x800000023E7DE440 == a2 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023E7DE460 == a2 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x800000023E7DE480 == a2 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x800000023E7DE4A0 == a2 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000020 && 0x800000023E7DE4C0 == a2 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000023E7DE4F0 == a2)
  {

    return 5;
  }

  else
  {
    v5 = sub_23E7DD8E8();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_23E794190(uint64_t a1, int a2)
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

uint64_t sub_23E7941B0(uint64_t result, int a2, int a3)
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

uint64_t sub_23E794290(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_23E7942EC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_23E7944A4()
{
  result = qword_27E34FCE0;
  if (!qword_27E34FCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FCE0);
  }

  return result;
}

AdaptiveMusic::Mood::ID_optional __swiftcall Mood.ID.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23E7DD7E8();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Mood.ID.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x69746375646F7270;
  v3 = 0x7065656C73;
  v4 = 0x6E6965626C6C6577;
  if (v1 != 3)
  {
    v4 = 0x6D6F74737563;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C6C696863;
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

uint64_t sub_23E7946BC()
{
  v1 = *v0;
  sub_23E7DD9A8();
  sub_23E7DD398();

  return sub_23E7DD9C8();
}

uint64_t sub_23E7947A0()
{
  *v0;
  *v0;
  *v0;
  sub_23E7DD398();
}

uint64_t sub_23E794870()
{
  v1 = *v0;
  sub_23E7DD9A8();
  sub_23E7DD398();

  return sub_23E7DD9C8();
}

void sub_23E79495C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000079746976;
  v4 = 0x69746375646F7270;
  v5 = 0xE500000000000000;
  v6 = 0x7065656C73;
  v7 = 0xE900000000000067;
  v8 = 0x6E6965626C6C6577;
  if (v2 != 3)
  {
    v8 = 0x6D6F74737563;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6C6C696863;
    v3 = 0xE500000000000000;
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

uint64_t Mood.name.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_23E7DC9D8();
  return v1;
}

uint64_t Mood.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Mood.defaultPlaylist.getter@<X0>(__int128 *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32);
    while (1)
    {
      v5 = *v4;
      v6 = v4[1];
      v7 = v4[2];
      *&v12[11] = *(v4 + 43);
      v11[1] = v6;
      *v12 = v7;
      v11[0] = v5;
      if (v12[26])
      {
        break;
      }

      v4 += 4;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    v8 = v4[1];
    *a1 = *v4;
    a1[1] = v8;
    a1[2] = v4[2];
    *(a1 + 43) = *(v4 + 43);
    return sub_23E794BD8(v11, &v10);
  }

  else
  {
LABEL_5:
    *(a1 + 43) = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  return result;
}

uint64_t sub_23E794C34()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0x7473696C79616C70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_23E794C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23E795AF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23E794CB4(uint64_t a1)
{
  v2 = sub_23E794F7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E794CF0(uint64_t a1)
{
  v2 = sub_23E794F7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Mood.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FD00, &qword_23E7E12F0);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = v14 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v14[1] = *(v1 + 2);
  v14[2] = v10;
  v14[0] = *(v1 + 3);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E794F7C();
  sub_23E7DDA08();
  v18 = v9;
  v17 = 0;
  sub_23E794FD0();
  sub_23E7DD8B8();
  if (!v2)
  {
    v13 = v14[0];
    v16 = 1;
    sub_23E7DD898();
    v14[3] = v13;
    v15 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FD18, qword_23E7E5670);
    sub_23E7953AC(&qword_27E34FD20, sub_23E79506C);
    sub_23E7DD8B8();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_23E794F7C()
{
  result = qword_27E34FD08;
  if (!qword_27E34FD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FD08);
  }

  return result;
}

unint64_t sub_23E794FD0()
{
  result = qword_27E34FD10;
  if (!qword_27E34FD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FD10);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_23E79506C()
{
  result = qword_27E34FD28;
  if (!qword_27E34FD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FD28);
  }

  return result;
}

uint64_t Mood.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FD30, &qword_23E7E12F8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E794F7C();
  sub_23E7DD9E8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  sub_23E795358();
  sub_23E7DD848();
  v11 = v22;
  v20 = 1;
  v12 = sub_23E7DD828();
  v14 = v13;
  v18[0] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FD18, qword_23E7E5670);
  v19 = 2;
  sub_23E7953AC(&qword_27E34FD40, sub_23E795424);
  sub_23E7DD848();
  (*(v6 + 8))(v9, v5);
  v15 = v18[0];
  v16 = v18[1];
  *a2 = v11;
  *(a2 + 8) = v15;
  *(a2 + 16) = v14;
  *(a2 + 24) = v16;
  sub_23E7DC9D8();
  sub_23E7DC9D8();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_23E795358()
{
  result = qword_27E34FD38;
  if (!qword_27E34FD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FD38);
  }

  return result;
}

uint64_t sub_23E7953AC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E34FD18, qword_23E7E5670);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23E795424()
{
  result = qword_27E34FD48;
  if (!qword_27E34FD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FD48);
  }

  return result;
}

uint64_t sub_23E795500(uint64_t a1)
{
  v2 = sub_23E79618C();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_23E795550(uint64_t a1)
{
  v2 = sub_23E7960E8();

  return MEMORY[0x28210C300](a1, v2);
}

AdaptiveMusic::Mood::ContentType_optional __swiftcall Mood.ContentType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23E7DD7E8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Mood.ContentType.rawValue.getter()
{
  v1 = 0x646564616F6C7075;
  if (*v0 != 1)
  {
    v1 = 0x7262694C72657375;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73754D656C707061;
  }
}

uint64_t sub_23E79567C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x646564616F6C7075;
  v4 = 0xED00006F69647541;
  if (v2 != 1)
  {
    v3 = 0x7262694C72657375;
    v4 = 0xEB00000000797261;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x73754D656C707061;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA00000000006369;
  }

  v7 = 0x646564616F6C7075;
  v8 = 0xED00006F69647541;
  if (*a2 != 1)
  {
    v7 = 0x7262694C72657375;
    v8 = 0xEB00000000797261;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x73754D656C707061;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA00000000006369;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23E7DD8E8();
  }

  return v11 & 1;
}

uint64_t sub_23E7957A8()
{
  v1 = *v0;
  sub_23E7DD9A8();
  sub_23E7DD398();

  return sub_23E7DD9C8();
}

uint64_t sub_23E795864()
{
  *v0;
  *v0;
  sub_23E7DD398();
}

uint64_t sub_23E79590C()
{
  v1 = *v0;
  sub_23E7DD9A8();
  sub_23E7DD398();

  return sub_23E7DD9C8();
}

void sub_23E795A80(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006369;
  v4 = 0xED00006F69647541;
  v5 = 0x646564616F6C7075;
  if (v2 != 1)
  {
    v5 = 0x7262694C72657375;
    v4 = 0xEB00000000797261;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x73754D656C707061;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_23E795AF8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7473696C79616C70 && a2 == 0xE900000000000073)
  {

    return 2;
  }

  else
  {
    v6 = sub_23E7DD8E8();

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

unint64_t _s13AdaptiveMusic4MoodV2IDO26caseDisplayRepresentationsSDyAE10AppIntents0F14RepresentationVGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FDE8, &qword_23E7E18E8);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FDF0, &qword_23E7E18F0);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_23E7E12E0;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_23E7DC968();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_23E7DC968();
  v7 = *(v0 + 48);
  v4[2 * v1] = 2;
  sub_23E7DC968();
  v8 = *(v0 + 48);
  v4[3 * v1] = 3;
  sub_23E7DC968();
  v9 = *(v0 + 48);
  v4[4 * v1] = 4;
  sub_23E7DC968();
  v10 = sub_23E7ACAD4(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v10;
}

unint64_t sub_23E795E20()
{
  result = qword_27E34FD50;
  if (!qword_27E34FD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FD50);
  }

  return result;
}

unint64_t sub_23E795E74()
{
  result = qword_27E34FD58;
  if (!qword_27E34FD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FD58);
  }

  return result;
}

unint64_t sub_23E795ECC()
{
  result = qword_27E34FD60;
  if (!qword_27E34FD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FD60);
  }

  return result;
}

unint64_t sub_23E795F24()
{
  result = qword_27E34FD68;
  if (!qword_27E34FD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FD68);
  }

  return result;
}

unint64_t sub_23E795F7C()
{
  result = qword_27E34FD70;
  if (!qword_27E34FD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FD70);
  }

  return result;
}

unint64_t sub_23E795FE0()
{
  result = qword_27E34FD78;
  if (!qword_27E34FD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FD78);
  }

  return result;
}

unint64_t sub_23E796038()
{
  result = qword_27E34FD80;
  if (!qword_27E34FD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FD80);
  }

  return result;
}

unint64_t sub_23E796090()
{
  result = qword_27E34FD88;
  if (!qword_27E34FD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FD88);
  }

  return result;
}

unint64_t sub_23E7960E8()
{
  result = qword_27E34FD90;
  if (!qword_27E34FD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FD90);
  }

  return result;
}

unint64_t sub_23E79618C()
{
  result = qword_27E34FD98;
  if (!qword_27E34FD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FD98);
  }

  return result;
}

unint64_t sub_23E7961E4()
{
  result = qword_27E34FDA0;
  if (!qword_27E34FDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FDA0);
  }

  return result;
}

unint64_t sub_23E79623C()
{
  result = qword_27E34FDA8;
  if (!qword_27E34FDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FDA8);
  }

  return result;
}

unint64_t sub_23E796298()
{
  result = qword_27E34FDB0;
  if (!qword_27E34FDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E34FDB8, &qword_23E7E1630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FDB0);
  }

  return result;
}

unint64_t sub_23E796300()
{
  result = qword_27E34FDC0;
  if (!qword_27E34FDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FDC0);
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

uint64_t sub_23E796360(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23E7963A8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for Mood.ID(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Mood.ID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23E79655C(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_23E7965F0(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23E7966B4()
{
  result = qword_27E34FDC8;
  if (!qword_27E34FDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FDC8);
  }

  return result;
}

unint64_t sub_23E79670C()
{
  result = qword_27E34FDD0;
  if (!qword_27E34FDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FDD0);
  }

  return result;
}

unint64_t sub_23E796764()
{
  result = qword_27E34FDD8;
  if (!qword_27E34FDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FDD8);
  }

  return result;
}

unint64_t sub_23E7967B8()
{
  result = qword_27E34FDE0;
  if (!qword_27E34FDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FDE0);
  }

  return result;
}

uint64_t sub_23E796820(uint64_t a1)
{
  *(v1 + 120) = a1;
  v2 = swift_task_alloc();
  *(v1 + 128) = v2;
  *v2 = v1;
  v2[1] = sub_23E7968C4;

  return sub_23E7B92D8();
}

uint64_t sub_23E7968C4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v6 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = a2;

  return MEMORY[0x2822009F8](sub_23E7969C4, 0, 0);
}

uint64_t sub_23E7969C4()
{
  v1 = sub_23E7DD318();
  v2 = sub_23E7DD318();
  v3 = [objc_opt_self() bagForProfile:v1 profileVersion:v2];

  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_23E796AE8;
  v5 = v0[17];
  v6 = v0[18];

  return sub_23E7C9100((v0 + 2), v3, v5, v6);
}

uint64_t sub_23E796AE8()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 160) = v4;
  *v4 = v3;
  v4[1] = sub_23E796C30;
  v5 = *(v1 + 120);

  return sub_23E796E4C(v5);
}

uint64_t sub_23E796C30()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_23E796DC8;
  }

  else
  {
    v3 = sub_23E796D44;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E796D44()
{
  *(v0 + 88) = *(v0 + 24);
  sub_23E799510(v0 + 88);
  *(v0 + 104) = *(v0 + 40);
  sub_23E799510(v0 + 104);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23E796DC8()
{
  *(v0 + 56) = *(v0 + 24);
  sub_23E799510(v0 + 56);
  *(v0 + 72) = *(v0 + 40);
  sub_23E799510(v0 + 72);
  v1 = *(v0 + 8);
  v2 = *(v0 + 168);

  return v1();
}

uint64_t sub_23E796E4C(uint64_t a1)
{
  v1[20] = a1;
  v2 = sub_23E7DCAD8();
  v1[21] = v2;
  v3 = *(v2 - 8);
  v1[22] = v3;
  v4 = *(v3 + 64) + 15;
  v1[23] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FE88, &qword_23E7E1D10) - 8) + 64) + 15;
  v6 = swift_task_alloc();
  v1[24] = v6;
  v7 = sub_23E7DCCF8();
  v1[25] = v7;
  v8 = *(v7 - 8);
  v1[26] = v8;
  v9 = *(v8 + 64) + 15;
  v1[27] = swift_task_alloc();
  v10 = swift_task_alloc();
  v1[28] = v10;
  *v10 = v1;
  v10[1] = sub_23E796FDC;

  return sub_23E7C83E8(v6);
}

uint64_t sub_23E796FDC()
{
  v1 = *(*v0 + 224);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23E7970D8, 0, 0);
}

uint64_t sub_23E7970D8()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_23E7996FC(v3, &qword_27E34FE88, &qword_23E7E1D10);
    sub_23E799564();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();
    v5 = v0[27];
    v7 = v0[23];
    v6 = v0[24];

    v8 = v0[1];

    return v8();
  }

  else
  {
    (*(v2 + 32))(v0[27], v3, v1);
    type metadata accessor for NetworkRunner();
    inited = swift_initStackObject();
    v0[29] = inited;
    *(inited + 24) = 0;
    v11 = [objc_opt_self() defaultSessionConfiguration];
    v12 = [objc_allocWithZone(MEMORY[0x277CEE6F0]) initWithConfiguration_];

    *(inited + 16) = v12;
    v13 = swift_task_alloc();
    v0[30] = v13;
    *v13 = v0;
    v13[1] = sub_23E7972BC;
    v14 = v0[27];

    return sub_23E7C95E4(v14);
  }
}

uint64_t sub_23E7972BC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v7 = *(*v4 + 240);
  v11 = *v4;
  v6[31] = a1;
  v6[32] = a2;
  v6[33] = v3;

  if (v3)
  {
    v8 = sub_23E797630;
  }

  else
  {
    v9 = v6[29];
    swift_setDeallocating();

    v8 = sub_23E797400;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_23E797400()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 248);
  v5 = *(v0 + 176);
  v4 = *(v0 + 184);
  v6 = *(v0 + 168);
  v7 = sub_23E7DCB18();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_23E7995B8(v3, v1);
  sub_23E7DCB08();
  (*(v5 + 104))(v4, *MEMORY[0x277CC86D0], v6);
  sub_23E7DCAE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FE98, &qword_23E7E1AA0);
  sub_23E79960C();
  sub_23E7DCAF8();
  *(v0 + 272) = v2;
  v11 = *(v0 + 248);
  v10 = *(v0 + 256);
  if (v2)
  {
    v13 = *(v0 + 208);
    v12 = *(v0 + 216);
    v14 = *(v0 + 200);

    sub_23E799670(v11, v10);
    sub_23E799670(v11, v10);
    (*(v13 + 8))(v12, v14);
    v15 = *(v0 + 216);
    v16 = *(v0 + 184);
    v17 = *(v0 + 192);

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {

    sub_23E799670(v11, v10);
    v20 = *(v0 + 88);
    *(v0 + 16) = *(v0 + 72);
    *(v0 + 32) = v20;
    *(v0 + 48) = *(v0 + 104);
    *(v0 + 64) = *(v0 + 120);
    v21 = swift_task_alloc();
    *(v0 + 280) = v21;
    *v21 = v0;
    v21[1] = sub_23E7976EC;

    return sub_23E7988F4();
  }
}

uint64_t sub_23E797630()
{
  v1 = v0[29];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  swift_setDeallocating();

  (*(v3 + 8))(v2, v4);
  v5 = v0[33];
  v6 = v0[27];
  v8 = v0[23];
  v7 = v0[24];

  v9 = v0[1];

  return v9();
}

uint64_t sub_23E7976EC(char a1)
{
  v2 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = a1;

  return MEMORY[0x2822009F8](sub_23E7977EC, 0, 0);
}

uint64_t sub_23E7977EC()
{
  v15 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 160);
  v14[0] = (*(v0 + 288) & 1) == 0;
  sub_23E7BFC30(v14, v2);
  v3 = *(v0 + 248);
  v4 = *(v0 + 256);
  v5 = *(v0 + 208);
  if (v1)
  {
    (*(v5 + 8))(*(v0 + 216), *(v0 + 200));
    sub_23E799670(v3, v4);
    sub_23E7996FC(v0 + 16, &qword_27E34FE98, &qword_23E7E1AA0);
    v6 = *(v0 + 216);
    v7 = *(v0 + 184);
    v8 = *(v0 + 192);
  }

  else
  {
    v11 = *(v0 + 184);
    v10 = *(v0 + 192);
    v12 = *(v0 + 216);
    (*(v5 + 8))();
    sub_23E799670(v3, v4);
    sub_23E7996FC(v0 + 16, &qword_27E34FE98, &qword_23E7E1AA0);
  }

  v9 = *(v0 + 8);

  return v9();
}

unint64_t sub_23E797940()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x73754D656C707061;
  if (v1 != 3)
  {
    v3 = 0xD000000000000012;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_23E7979E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23E799354(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23E797A14(uint64_t a1)
{
  v2 = sub_23E797D48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E797A50(uint64_t a1)
{
  v2 = sub_23E797D48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Manifest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FDF8, &qword_23E7E1900);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E797D48();
  sub_23E7DDA08();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v17) = 0;
  sub_23E7DD898();
  if (!v2)
  {
    v13 = type metadata accessor for Manifest();
    v14 = v13[5];
    LOBYTE(v17) = 1;
    sub_23E7DCCF8();
    sub_23E798324(&qword_27E34FE08);
    sub_23E7DD8B8();
    LOBYTE(v17) = *(v3 + v13[6]);
    v18 = 2;
    sub_23E797DE8();
    sub_23E7DD8B8();
    v17 = *(v3 + v13[7]);
    v18 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FE18, &qword_23E7E1908);
    sub_23E7983BC(&qword_27E34FE20, sub_23E797E3C);
    sub_23E7DD8B8();
    v17 = *(v3 + v13[8]);
    v18 = 4;
    sub_23E7DD8B8();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_23E797D48()
{
  result = qword_27E34FE00;
  if (!qword_27E34FE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FE00);
  }

  return result;
}

uint64_t type metadata accessor for Manifest()
{
  result = qword_27E34FE58;
  if (!qword_27E34FE58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_23E797DE8()
{
  result = qword_27E34FE10;
  if (!qword_27E34FE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FE10);
  }

  return result;
}

unint64_t sub_23E797E3C()
{
  result = qword_27E34FE28;
  if (!qword_27E34FE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FE28);
  }

  return result;
}

uint64_t Manifest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_23E7DCCF8();
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20]();
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FE30, &qword_23E7E1910);
  v22 = *(v24 - 8);
  v7 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = v19 - v8;
  v10 = type metadata accessor for Manifest();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20]();
  v13 = (v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E797D48();
  v23 = v9;
  v15 = v25;
  sub_23E7DD9E8();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v22;
  LOBYTE(v26) = 0;
  *v13 = sub_23E7DD828();
  v13[1] = v17;
  v25 = v17;
  LOBYTE(v26) = 1;
  sub_23E798324(&qword_27E34FE38);
  sub_23E7DD848();
  (*(v21 + 32))(v13 + v10[5], v6, v3);
  v27 = 2;
  sub_23E798368();
  v19[2] = 0;
  sub_23E7DD848();
  *(v13 + v10[6]) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FE18, &qword_23E7E1908);
  v27 = 3;
  v19[1] = sub_23E7983BC(&qword_27E34FE48, sub_23E798434);
  sub_23E7DD848();
  *(v13 + v10[7]) = v26;
  v27 = 4;
  sub_23E7DD848();
  (*(v16 + 8))(v23, v24);
  *(v13 + v10[8]) = v26;
  sub_23E798488(v13, v20);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23E7984EC(v13);
}

uint64_t sub_23E798324(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_23E7DCCF8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23E798368()
{
  result = qword_27E34FE40;
  if (!qword_27E34FE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FE40);
  }

  return result;
}

uint64_t sub_23E7983BC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E34FE18, &qword_23E7E1908);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23E798434()
{
  result = qword_27E34FE50;
  if (!qword_27E34FE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FE50);
  }

  return result;
}

uint64_t sub_23E798488(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Manifest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E7984EC(uint64_t a1)
{
  v2 = type metadata accessor for Manifest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23E79858C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_23E7DCCF8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23E79864C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_23E7DCCF8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23E7986F0()
{
  sub_23E7DCCF8();
  if (v0 <= 0x3F)
  {
    sub_23E79878C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23E79878C()
{
  if (!qword_27E34FE68)
  {
    v0 = sub_23E7DD4F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27E34FE68);
    }
  }
}

unint64_t sub_23E7987F0()
{
  result = qword_27E34FE70;
  if (!qword_27E34FE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FE70);
  }

  return result;
}

unint64_t sub_23E798848()
{
  result = qword_27E34FE78;
  if (!qword_27E34FE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FE78);
  }

  return result;
}

unint64_t sub_23E7988A0()
{
  result = qword_27E34FE80;
  if (!qword_27E34FE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FE80);
  }

  return result;
}

uint64_t sub_23E7988F4()
{
  v1 = sub_23E7DCF48();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = sub_23E7DCF88();
  v0[5] = v4;
  v5 = *(v4 - 8);
  v0[6] = v5;
  v6 = *(v5 + 64) + 15;
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E798A18, 0, 0);
}

uint64_t sub_23E798A18()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (!v2)
  {
LABEL_7:
    v8 = *(MEMORY[0x277CD7BD8] + 4);
    v9 = swift_task_alloc();
    v0[11] = v9;
    *v9 = v0;
    v9[1] = sub_23E798E18;
    v10 = v0[7];

    return MEMORY[0x282124400](v10);
  }

  v3 = sub_23E7DD328();
  v5 = v4;

  if (v3 == 0xD00000000000002FLL && 0x800000023E7DE590 == v5)
  {
  }

  else
  {
    v7 = sub_23E7DD8E8();

    if ((v7 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  (*(v0[3] + 104))(v0[4], *MEMORY[0x277D2AE30], v0[2]);
  v11 = *(MEMORY[0x277D2AE38] + 4);
  v12 = swift_task_alloc();
  v0[9] = v12;
  *v12 = v0;
  v12[1] = sub_23E798C00;
  v13 = v0[8];
  v14 = v0[4];

  return MEMORY[0x28218A460](v13, v14);
}

uint64_t sub_23E798C00()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v8 = *v1;
  *(*v1 + 80) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_23E798FD4;
  }

  else
  {
    v6 = sub_23E798D70;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_23E798D70()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = sub_23E7DCF68();
  (*(v3 + 8))(v1, v2);
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[4];

  v8 = v0[1];

  return v8(v4 & 1);
}

uint64_t sub_23E798E18()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_23E799194;
  }

  else
  {
    v3 = sub_23E798F2C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E798F2C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = sub_23E7DCF68();
  (*(v2 + 8))(v1, v3);
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[4];

  v8 = v0[1];

  return v8(v4 & 1);
}

uint64_t sub_23E798FD4()
{
  v1 = v0[10];
  if (qword_27E34FB58 != -1)
  {
    swift_once();
  }

  v2 = sub_23E7DCE88();
  __swift_project_value_buffer(v2, qword_27E35A110);
  v3 = v1;
  v4 = sub_23E7DCE68();
  v5 = sub_23E7DD5D8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_23E790000, v4, v5, "Failed to check subscription status: %@.", v6, 0xCu);
    sub_23E7996FC(v7, qword_27E34FEA8, &unk_23E7E1AB0);
    MEMORY[0x23EF13B60](v7, -1, -1);
    MEMORY[0x23EF13B60](v6, -1, -1);
  }

  else
  {
  }

  v11 = v0[7];
  v10 = v0[8];
  v12 = v0[4];

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_23E799194()
{
  v1 = v0[12];
  if (qword_27E34FB58 != -1)
  {
    swift_once();
  }

  v2 = sub_23E7DCE88();
  __swift_project_value_buffer(v2, qword_27E35A110);
  v3 = v1;
  v4 = sub_23E7DCE68();
  v5 = sub_23E7DD5D8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_23E790000, v4, v5, "Failed to check subscription status: %@.", v6, 0xCu);
    sub_23E7996FC(v7, qword_27E34FEA8, &unk_23E7E1AB0);
    MEMORY[0x23EF13B60](v7, -1, -1);
    MEMORY[0x23EF13B60](v6, -1, -1);
  }

  else
  {
  }

  v11 = v0[7];
  v10 = v0[8];
  v12 = v0[4];

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_23E799354(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000023E7DE530 == a2 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023E7DE550 == a2 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73754D656C707061 && a2 == 0xEF73646F6F4D6369 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000023E7DE570 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_23E7DD8E8();

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

unint64_t sub_23E799564()
{
  result = qword_27E34FE90;
  if (!qword_27E34FE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FE90);
  }

  return result;
}

uint64_t sub_23E7995B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }

    sub_23E7DC9E8();
  }

  return sub_23E7DC9E8();
}

unint64_t sub_23E79960C()
{
  result = qword_27E34FEA0;
  if (!qword_27E34FEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E34FE98, &qword_23E7E1AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FEA0);
  }

  return result;
}

uint64_t sub_23E799670(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_23E7996FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for AdaptiveMusicAppIntentsPackage(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AdaptiveMusicAppIntentsPackage(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void sub_23E799848(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_23E799C0C();
    if (v3 <= 0x3F)
    {
      sub_23E799CD8();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23E7998E8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_23E799A2C(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

void sub_23E799C0C()
{
  if (!qword_27E34FF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E34FF38, qword_23E7E1B50);
    sub_23E799C84();
    v0 = sub_23E7DD2B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27E34FF30);
    }
  }
}

unint64_t sub_23E799C84()
{
  result = qword_27E34FF40;
  if (!qword_27E34FF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FF40);
  }

  return result;
}

void sub_23E799CD8()
{
  if (!qword_27E34FF48)
  {
    sub_23E799D30();
    v0 = sub_23E7DD658();
    if (!v1)
    {
      atomic_store(v0, &qword_27E34FF48);
    }
  }
}

unint64_t sub_23E799D30()
{
  result = qword_27E34FF50;
  if (!qword_27E34FF50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E34FF50);
  }

  return result;
}

uint64_t sub_23E799D80@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = sub_23E7DCDD8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF60, &unk_23E7E1B70);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FE88, &qword_23E7E1D10);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v29 - v16;
  v31 = v1;
  sub_23E7DCE18();
  v18 = sub_23E7DCDF8();
  v19 = *(v18 - 8);
  v30 = *(v19 + 48);
  v20 = v30(v13, 1, v18);
  v29 = v3;
  if (v20 == 1)
  {
    sub_23E7996FC(v13, &qword_27E34FF60, &unk_23E7E1B70);
    v21 = sub_23E7DCCF8();
    (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
  }

  else
  {
    (*(v3 + 104))(v6, *MEMORY[0x277D2A938], v2);
    sub_23E7DCDE8();
    (*(v3 + 8))(v6, v2);
    (*(v19 + 8))(v13, v18);
    v22 = sub_23E7DCCF8();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v17, 1, v22) != 1)
    {
      v28 = v32;
      (*(v23 + 32))(v32, v17, v22);
      return (*(v23 + 56))(v28, 0, 1, v22);
    }
  }

  sub_23E7DCE18();
  if (v30(v11, 1, v18) == 1)
  {
    sub_23E7996FC(v11, &qword_27E34FF60, &unk_23E7E1B70);
    v24 = sub_23E7DCCF8();
    (*(*(v24 - 8) + 56))(v32, 1, 1, v24);
  }

  else
  {
    v25 = v29;
    (*(v29 + 104))(v6, *MEMORY[0x277D2A940], v2);
    sub_23E7DCDE8();
    (*(v25 + 8))(v6, v2);
    (*(v19 + 8))(v11, v18);
  }

  v26 = sub_23E7DCCF8();
  result = (*(*(v26 - 8) + 48))(v17, 1, v26);
  if (result != 1)
  {
    return sub_23E7996FC(v17, &qword_27E34FE88, &qword_23E7E1D10);
  }

  return result;
}

uint64_t sub_23E79A22C()
{
  result = sub_23E7DCE48();
  if (!v1)
  {
    return 0;
  }

  v2 = HIBYTE(v1) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((v1 & 0x1000000000000000) == 0)
  {
    if ((v1 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = v1 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_61;
            }
          }
        }

        goto LABEL_62;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (v1 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_23E7DD778();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_62;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_62;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_62;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_63;
                }
              }
            }

            goto LABEL_61;
          }

          goto LABEL_62;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_62;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_62;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_62;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_62:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_63;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_62;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_62;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_62;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_63;
              }
            }
          }

LABEL_61:
          LOBYTE(v3) = 0;
LABEL_63:
          v28 = v3;
          v24 = v3;
          goto LABEL_64;
        }

        goto LABEL_62;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v6 = sub_23E79A5A8(result, v1, 10);
  v24 = v25;
LABEL_64:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

void *sub_23E79A534(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF58, &qword_23E7E1B68);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_23E79A5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;
  sub_23E7DC9D8();
  result = sub_23E7DD418();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_23E79AB34();
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
      result = sub_23E7DD778();
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

uint64_t sub_23E79AB34()
{
  v0 = sub_23E7DD428();
  v4 = sub_23E79ABB4(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_23E79ABB4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_23E7DD388();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_23E7DD668();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_23E79A534(v9, 0);
  v12 = sub_23E79AD0C(v15, (v11 + 4), v10, a1, a2, a3, a4);
  sub_23E7DC9D8();

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_23E7DD388();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_23E7DD778();
LABEL_4:

  return sub_23E7DD388();
}

unint64_t sub_23E79AD0C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_23E79AF2C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_23E7DD3F8();
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
          result = sub_23E7DD778();
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

    result = sub_23E79AF2C(v12, a6, a7);
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

    result = sub_23E7DD3D8();
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

uint64_t sub_23E79AF2C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_23E7DD408();
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
    v5 = MEMORY[0x23EF12E40](15, a1 >> 16);
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

uint64_t sub_23E79AFDC()
{
  v1 = v0;
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFD0, &qword_23E7E1D98) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = v24 - v3;
  v5 = sub_23E7DD208();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350000, &qword_23E7E1DC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E7E1B80;
  *(inited + 32) = 0;
  v11 = sub_23E7DCE28();
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350008, &qword_23E7E1DD0);
  *(inited + 64) = v14;
  *(inited + 40) = v11;
  *(inited + 48) = v13;
  *(inited + 72) = 1;
  v15 = sub_23E7DCE08();
  *(inited + 104) = v14;
  *(inited + 80) = v15;
  *(inited + 88) = v16;
  *(inited + 112) = 3;
  v17 = sub_23E79A22C();
  LOBYTE(v13) = v18;
  *(inited + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350010, &qword_23E7E1DD8);
  *(inited + 120) = v17;
  *(inited + 128) = v13 & 1;
  v19 = sub_23E7ACEBC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350018, &qword_23E7E1DE0);
  swift_arrayDestroy();
  v25 = v19;
  sub_23E7DCE38();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_23E7996FC(v4, &qword_27E34FFD0, &qword_23E7E1D98);
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    v24[3] = v5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v24);
    (*(v6 + 16))(boxed_opaque_existential_0, v9, v5);
    sub_23E79BD88(v24, 2);
    (*(v6 + 8))(v9, v5);
    v19 = v25;
  }

  v21 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF90, &qword_23E7E1CC0) + 36));
  sub_23E7DC9D8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24[0] = v21;
  sub_23E7A59C4(v19, sub_23E7A3BC4, 0, isUniquelyReferenced_nonNull_native, v24);

  return v24[0];
}

uint64_t sub_23E79B314(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF90, &qword_23E7E1CC0);
  v110 = *(v2 - 8);
  v109 = *(v110 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v112 = &v102 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFB8, &qword_23E7E1D58);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v111 = &v102 - v6;
  v7 = sub_23E7ADB64(MEMORY[0x277D84F90]);
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;
  v107 = *MEMORY[0x277D27CC8];
  v106 = *MEMORY[0x277D27CD0];
  v114 = *MEMORY[0x277CD56E8];
  v113 = *MEMORY[0x277CD58B8];
  sub_23E7DC9D8();
  v13 = 0;
  v115 = a1;
  while (v11)
  {
LABEL_11:
    v15 = __clz(__rbit64(v11)) | (v13 << 6);
    v16 = *(*(a1 + 48) + v15);
    sub_23E7A6134(*(a1 + 56) + 32 * v15, &v123);
    v122[0] = v16;
    sub_23E7A6710(v122, &v118, &qword_27E34FFC0, &unk_23E7E1D60);
    v17 = v118;
    sub_23E7A6190((&v118 + 8), &v120);
    if (v17 <= 1)
    {
      if (v17)
      {
        v50 = sub_23E7DD328();
        v52 = v51;
        v53 = v121;
        v54 = __swift_project_boxed_opaque_existential_1(&v120, v121);
        v119 = v53;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v118);
        (*(*(v53 - 8) + 16))(boxed_opaque_existential_0, v54, v53);
        sub_23E7A6190(&v118, v117);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v116 = v7;
        v25 = sub_23E7A352C(v50, v52);
        v58 = v7[2];
        v59 = (v57 & 1) == 0;
        v29 = __OFADD__(v58, v59);
        v60 = v58 + v59;
        if (v29)
        {
          goto LABEL_63;
        }

        v61 = v57;
        if (v7[3] < v60)
        {
          sub_23E7A3F30(v60, isUniquelyReferenced_nonNull_native);
          v25 = sub_23E7A352C(v50, v52);
          if ((v61 & 1) != (v62 & 1))
          {
            goto LABEL_73;
          }

          goto LABEL_35;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_35:
          a1 = v115;
          if (v61)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v71 = v25;
          sub_23E7A4364();
          v25 = v71;
          a1 = v115;
          if (v61)
          {
LABEL_36:
            v66 = v25;
LABEL_37:

            v7 = v116;
            v67 = (v116[7] + 32 * v66);
            __swift_destroy_boxed_opaque_existential_1(v67);
            sub_23E7A6190(v117, v67);
LABEL_4:
            sub_23E7996FC(v122, &qword_27E34FFC0, &unk_23E7E1D60);
            goto LABEL_5;
          }
        }

        v7 = v116;
        v116[(v25 >> 6) + 8] |= 1 << v25;
        v72 = (v7[6] + 16 * v25);
        *v72 = v50;
        v72[1] = v52;
        sub_23E7A6190(v117, (v7[7] + 32 * v25));
        sub_23E7996FC(v122, &qword_27E34FFC0, &unk_23E7E1D60);
        v73 = v7[2];
        v29 = __OFADD__(v73, 1);
        v65 = v73 + 1;
        if (v29)
        {
          goto LABEL_66;
        }

        goto LABEL_60;
      }

      v18 = sub_23E7DD328();
      v20 = v19;
      v21 = v121;
      v22 = __swift_project_boxed_opaque_existential_1(&v120, v121);
      v119 = v21;
      v23 = __swift_allocate_boxed_opaque_existential_0(&v118);
      (*(*(v21 - 8) + 16))(v23, v22, v21);
      sub_23E7A6190(&v118, v117);
      v24 = swift_isUniquelyReferenced_nonNull_native();
      v116 = v7;
      v25 = sub_23E7A352C(v18, v20);
      v27 = v7[2];
      v28 = (v26 & 1) == 0;
      v29 = __OFADD__(v27, v28);
      v30 = v27 + v28;
      if (v29)
      {
        goto LABEL_64;
      }

      v31 = v26;
      if (v7[3] < v30)
      {
        sub_23E7A3F30(v30, v24);
        v25 = sub_23E7A352C(v18, v20);
        if ((v31 & 1) != (v32 & 1))
        {
          goto LABEL_73;
        }

        goto LABEL_30;
      }

      if (v24)
      {
LABEL_30:
        a1 = v115;
        if (v31)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v70 = v25;
        sub_23E7A4364();
        v25 = v70;
        a1 = v115;
        if (v31)
        {
          goto LABEL_36;
        }
      }

      v7 = v116;
      v116[(v25 >> 6) + 8] |= 1 << v25;
      v63 = (v7[6] + 16 * v25);
      *v63 = v18;
      v63[1] = v20;
      sub_23E7A6190(v117, (v7[7] + 32 * v25));
      sub_23E7996FC(v122, &qword_27E34FFC0, &unk_23E7E1D60);
      v64 = v7[2];
      v29 = __OFADD__(v64, 1);
      v65 = v64 + 1;
      if (v29)
      {
        goto LABEL_67;
      }

      goto LABEL_60;
    }

    if (v17 == 2)
    {
      goto LABEL_4;
    }

    sub_23E7A6134(&v120, &v118);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF38, qword_23E7E1B50);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_4;
    }

    if (!v107)
    {
      goto LABEL_71;
    }

    v33 = *&v117[0];
    v34 = sub_23E7DD328();
    v36 = v35;
    v37 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v104 = v33;
    v38 = [v37 initWithLongLong_];
    v103 = sub_23E7A68E0(0, &qword_27E34FFC8, 0x277CCABB0);
    v119 = v103;
    *&v118 = v38;
    sub_23E7A6190(&v118, v117);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v116 = v7;
    v105 = v34;
    v40 = v36;
    v42 = sub_23E7A352C(v34, v36);
    v43 = v7[2];
    v44 = (v41 & 1) == 0;
    v45 = v43 + v44;
    if (__OFADD__(v43, v44))
    {
      goto LABEL_65;
    }

    v46 = v41;
    if (v7[3] >= v45)
    {
      v49 = v106;
      if (v39)
      {
        if (v41)
        {
          goto LABEL_40;
        }
      }

      else
      {
        sub_23E7A4364();
        if (v46)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      sub_23E7A3F30(v45, v39);
      v47 = sub_23E7A352C(v105, v40);
      v49 = v106;
      if ((v46 & 1) != (v48 & 1))
      {
        goto LABEL_73;
      }

      v42 = v47;
      if (v46)
      {
LABEL_40:

        v68 = v116;
        v69 = (v116[7] + 32 * v42);
        __swift_destroy_boxed_opaque_existential_1(v69);
        sub_23E7A6190(v117, v69);
        goto LABEL_50;
      }
    }

    v68 = v116;
    v116[(v42 >> 6) + 8] |= 1 << v42;
    v74 = (v68[6] + 16 * v42);
    *v74 = v105;
    v74[1] = v40;
    sub_23E7A6190(v117, (v68[7] + 32 * v42));
    v75 = v68[2];
    v29 = __OFADD__(v75, 1);
    v76 = v75 + 1;
    if (v29)
    {
      goto LABEL_69;
    }

    v68[2] = v76;
LABEL_50:
    if (!v49)
    {
      goto LABEL_72;
    }

    v77 = sub_23E7DD328();
    v79 = v78;
    v80 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v81 = [v80 initWithLongLong_];
    v119 = v103;
    *&v118 = v81;
    sub_23E7A6190(&v118, v117);
    v82 = swift_isUniquelyReferenced_nonNull_native();
    v116 = v68;
    v83 = sub_23E7A352C(v77, v79);
    v85 = v68[2];
    v86 = (v84 & 1) == 0;
    v29 = __OFADD__(v85, v86);
    v87 = v85 + v86;
    if (v29)
    {
      goto LABEL_68;
    }

    v88 = v84;
    if (v68[3] >= v87)
    {
      if ((v82 & 1) == 0)
      {
        v90 = v83;
        sub_23E7A4364();
        v83 = v90;
        a1 = v115;
        if (v88)
        {
LABEL_57:
          v66 = v83;
          goto LABEL_37;
        }

        goto LABEL_59;
      }
    }

    else
    {
      sub_23E7A3F30(v87, v82);
      v83 = sub_23E7A352C(v77, v79);
      if ((v88 & 1) != (v89 & 1))
      {
        goto LABEL_73;
      }
    }

    a1 = v115;
    if (v88)
    {
      goto LABEL_57;
    }

LABEL_59:
    v7 = v116;
    v116[(v83 >> 6) + 8] |= 1 << v83;
    v91 = (v7[6] + 16 * v83);
    *v91 = v77;
    v91[1] = v79;
    sub_23E7A6190(v117, (v7[7] + 32 * v83));
    sub_23E7996FC(v122, &qword_27E34FFC0, &unk_23E7E1D60);
    v92 = v7[2];
    v29 = __OFADD__(v92, 1);
    v65 = v92 + 1;
    if (v29)
    {
      goto LABEL_70;
    }

LABEL_60:
    v7[2] = v65;
LABEL_5:
    v11 &= v11 - 1;
    __swift_destroy_boxed_opaque_existential_1(&v120);
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {

      v93 = sub_23E7DD558();
      v94 = v111;
      (*(*(v93 - 8) + 56))(v111, 1, 1, v93);
      v95 = v112;
      sub_23E7A6710(v108, v112, &qword_27E34FF90, &qword_23E7E1CC0);
      sub_23E7DD538();
      sub_23E7DC9D8();
      v96 = sub_23E7DD528();
      v97 = (*(v110 + 80) + 32) & ~*(v110 + 80);
      v98 = (v109 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
      v99 = swift_allocObject();
      v100 = MEMORY[0x277D85700];
      *(v99 + 16) = v96;
      *(v99 + 24) = v100;
      sub_23E7A6054(v95, v99 + v97);
      *(v99 + v98) = v7;
      *(v99 + ((v98 + 15) & 0xFFFFFFFFFFFFFFF8)) = a1;
      sub_23E79CE30(0, 0, v94, &unk_23E7E1D78, v99);
    }

    v11 = *(v8 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  result = sub_23E7DD938();
  __break(1u);
  return result;
}

_OWORD *sub_23E79BD88(uint64_t a1, char a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_23E7A6190(a1, v17);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = sub_23E7A4718(v17, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    sub_23E7996FC(a1, &qword_27E350020, &qword_23E7E1DE8);
    v8 = *v2;
    v9 = sub_23E7A35A4(a2);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_23E7A41E8();
        v14 = v16;
      }

      sub_23E7A6190((*(v14 + 56) + 32 * v11), v17);
      sub_23E7A4508(v11, v14);
      *v3 = v14;
    }

    else
    {
      memset(v17, 0, sizeof(v17));
    }

    return sub_23E7996FC(v17, &qword_27E350020, &qword_23E7E1DE8);
  }

  return result;
}

uint64_t sub_23E79BE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[22] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFD0, &qword_23E7E1D98) - 8) + 64) + 15;
  v6[25] = swift_task_alloc();
  v8 = sub_23E7DD208();
  v6[26] = v8;
  v9 = *(v8 - 8);
  v6[27] = v9;
  v10 = *(v9 + 64) + 15;
  v6[28] = swift_task_alloc();
  sub_23E7DD538();
  v6[29] = sub_23E7DD528();
  v12 = sub_23E7DD518();
  v6[30] = v12;
  v6[31] = v11;

  return MEMORY[0x2822009F8](sub_23E79BFBC, v12, v11);
}

uint64_t sub_23E79BFBC()
{
  v1 = v0[22];
  v2 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF90, &qword_23E7E1CC0) + 40));
  v0[32] = v2;
  if (v2)
  {
    v3 = v0[23];
    v4 = sub_23E7DD298();
    [v2 setNowPlayingInfo_];
  }

  if (!*(v0[24] + 16) || (v5 = sub_23E7A35A4(2u), (v6 & 1) == 0))
  {
    v12 = v0[29];
    v13 = v0[26];
    v14 = v0[27];
    v15 = v0[25];

    (*(v14 + 56))(v15, 1, 1, v13);
    goto LABEL_8;
  }

  v7 = v0[26];
  v8 = v0[27];
  v9 = v0[25];
  sub_23E7A6134(*(v0[24] + 56) + 32 * v5, (v0 + 18));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF38, qword_23E7E1B50);
  v10 = swift_dynamicCast();
  (*(v8 + 56))(v9, v10 ^ 1u, 1, v7);
  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    v11 = v0[29];

LABEL_8:
    sub_23E7996FC(v0[25], &qword_27E34FFD0, &qword_23E7E1D98);
    v16 = v0[28];
    v17 = v0[25];

    v18 = v0[1];

    return v18();
  }

  (*(v0[27] + 32))(v0[28], v0[25], v0[26]);
  v20 = swift_task_alloc();
  v0[33] = v20;
  *v20 = v0;
  v20[1] = sub_23E79C22C;
  v21 = v0[28];
  v22 = v0[22];

  return sub_23E79C698(v21, 600.0, 600.0);
}

uint64_t sub_23E79C22C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v7 = *v1;
  *(*v1 + 272) = a1;

  v4 = *(v2 + 248);
  v5 = *(v2 + 240);

  return MEMORY[0x2822009F8](sub_23E79C354, v5, v4);
}

uint64_t sub_23E79C354()
{
  v26 = v0;
  v1 = v0[34];
  v2 = v0[29];

  if (v1)
  {
    v3 = v0[34];
    v4 = v0[23];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFD8, &qword_23E7E1DA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23E7E1B90;
    v6 = *MEMORY[0x277CD56F8];
    *(inited + 32) = sub_23E7DD328();
    *(inited + 40) = v7;
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    v9 = objc_allocWithZone(MEMORY[0x277CD5DE8]);
    v0[16] = sub_23E7A65A0;
    v0[17] = v8;
    v0[12] = MEMORY[0x277D85DD0];
    v0[13] = 1107296256;
    v0[14] = sub_23E7A309C;
    v0[15] = &block_descriptor_39;
    v10 = _Block_copy(v0 + 12);
    sub_23E7DC9D8();
    v11 = v3;
    v12 = [v9 initWithBoundsSize:v10 requestHandler:{600.0, 600.0}];
    _Block_release(v10);
    v13 = v0[17];

    *(inited + 72) = sub_23E7A68E0(0, &qword_27E34FFE0, 0x277CD5DE8);
    *(inited + 48) = v12;
    v14 = sub_23E7ADB64(inited);
    swift_setDeallocating();
    sub_23E7996FC(inited + 32, &qword_27E34FFE8, &qword_23E7E1DB0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v4;
    sub_23E7A5CD0(v14, sub_23E7A3BE8, 0, isUniquelyReferenced_nonNull_native, &v25);

    v16 = v0[32];
    v18 = v0[27];
    v17 = v0[28];
    v19 = v0[26];
    if (v16)
    {
      v20 = sub_23E7DD298();

      [v16 setNowPlayingInfo_];

      (*(v18 + 8))(v17, v19);
    }

    else
    {
      (*(v18 + 8))(v0[28], v0[26]);
    }
  }

  else
  {
    (*(v0[27] + 8))(v0[28], v0[26]);
  }

  v21 = v0[28];
  v22 = v0[25];

  v23 = v0[1];

  return v23();
}

uint64_t sub_23E79C698(uint64_t a1, double a2, double a3)
{
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  *(v3 + 16) = a1;
  v4 = sub_23E7DD1C8();
  *(v3 + 40) = v4;
  v5 = *(v4 - 8);
  *(v3 + 48) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 56) = swift_task_alloc();
  v7 = sub_23E7DD1F8();
  *(v3 + 64) = v7;
  v8 = *(v7 - 8);
  *(v3 + 72) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 80) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FE88, &qword_23E7E1D10) - 8) + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  v11 = sub_23E7DCCF8();
  *(v3 + 96) = v11;
  v12 = *(v11 - 8);
  *(v3 + 104) = v12;
  v13 = *(v12 + 64) + 15;
  *(v3 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E79C84C, 0, 0);
}

uint64_t sub_23E79C84C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  if (v3 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = *(v2 + 32);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(v2 + 32) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_16;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    return MEMORY[0x28211ED00](a1, a2);
  }

  v5 = *(v2 + 104);
  v22 = *(v2 + 96);
  v7 = *(v2 + 80);
  v6 = *(v2 + 88);
  v8 = *(v2 + 72);
  v21 = *(v2 + 64);
  v10 = *(v2 + 48);
  v9 = *(v2 + 56);
  v11 = *(v2 + 40);
  v12 = *(v2 + 16);
  sub_23E7DD1E8();
  (*(v10 + 104))(v9, *MEMORY[0x277D2B208], v11);
  sub_23E7DD1D8();
  (*(v10 + 8))(v9, v11);
  (*(v8 + 8))(v7, v21);
  if ((*(v5 + 48))(v6, 1, v22) != 1)
  {
    (*(*(v2 + 104) + 32))(*(v2 + 112), *(v2 + 88), *(v2 + 96));
    *(v2 + 120) = [objc_opt_self() sharedSession];
    v19 = *(MEMORY[0x277CC9D20] + 4);
    v20 = swift_task_alloc();
    *(v2 + 128) = v20;
    *v20 = v2;
    v20[1] = sub_23E79CB1C;
    a1 = *(v2 + 112);
    a2 = 0;

    return MEMORY[0x28211ED00](a1, a2);
  }

  sub_23E7996FC(*(v2 + 88), &qword_27E34FE88, &qword_23E7E1D10);
  v13 = *(v2 + 112);
  v14 = *(v2 + 80);
  v15 = *(v2 + 88);
  v16 = *(v2 + 56);

  v17 = *(v2 + 8);

  return v17(0);
}

uint64_t sub_23E79CB1C(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *v4;
  v9 = *(*v4 + 128);
  v10 = *(*v4 + 120);
  v11 = *v4;
  *(*v4 + 136) = v3;

  if (v3)
  {
    v12 = sub_23E79CD80;
  }

  else
  {

    *(v8 + 144) = a2;
    *(v8 + 152) = a1;
    v12 = sub_23E79CC78;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_23E79CC78()
{
  v1 = v0[18];
  v2 = v0[19];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  v6 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v7 = sub_23E7DCD08();
  v8 = [v6 initWithData_];

  sub_23E799670(v2, v1);
  (*(v4 + 8))(v3, v5);
  v9 = v0[14];
  v10 = v0[10];
  v11 = v0[11];
  v12 = v0[7];

  v13 = v0[1];

  return v13(v8);
}

uint64_t sub_23E79CD80()
{
  v1 = v0[17];
  (*(v0[13] + 8))(v0[14], v0[12]);

  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[7];

  v6 = v0[1];

  return v6(0);
}

uint64_t sub_23E79CE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFB8, &qword_23E7E1D58);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_23E7A6710(a3, v27 - v11, &qword_27E34FFB8, &qword_23E7E1D58);
  v13 = sub_23E7DD558();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);
  sub_23E7DC9E8();
  if (v15 == 1)
  {
    sub_23E7996FC(v12, &qword_27E34FFB8, &qword_23E7E1D58);
  }

  else
  {
    sub_23E7DD548();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_23E7DD518();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_23E7DD378() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;
      sub_23E7DC9E8();
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

      sub_23E7996FC(a3, &qword_27E34FFB8, &qword_23E7E1D58);

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

  sub_23E7996FC(a3, &qword_27E34FFB8, &qword_23E7E1D58);
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

uint64_t sub_23E79D130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFB8, &qword_23E7E1D58);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_23E7A6710(a3, v27 - v11, &qword_27E34FFB8, &qword_23E7E1D58);
  v13 = sub_23E7DD558();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);
  sub_23E7DC9E8();
  if (v15 == 1)
  {
    sub_23E7996FC(v12, &qword_27E34FFB8, &qword_23E7E1D58);
  }

  else
  {
    sub_23E7DD548();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_23E7DD518();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_23E7DD378() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;
      sub_23E7DC9E8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350060, &qword_23E7E1E38);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_23E7996FC(a3, &qword_27E34FFB8, &qword_23E7E1D58);

      return v24;
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

  sub_23E7996FC(a3, &qword_27E34FFB8, &qword_23E7E1D58);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350060, &qword_23E7E1E38);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void *sub_23E79D444()
{
  swift_getKeyPath();
  sub_23E7A600C(&qword_27E34FF80, type metadata accessor for QueuePlayer);
  sub_23E7DCDA8();

  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

id sub_23E79D4EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23E7A600C(&qword_27E34FF80, type metadata accessor for QueuePlayer);
  sub_23E7DCDA8();

  v4 = *(v3 + 64);
  *a2 = v4;

  return v4;
}

void sub_23E79D5A4(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 64);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23E7A600C(&qword_27E34FF80, type metadata accessor for QueuePlayer);
    sub_23E7DCD98();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFA0, &qword_23E7E1CF8);
  v5 = v4;
  v6 = a1;
  v7 = sub_23E7DD628();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 64);
LABEL_8:
  *(v2 + 64) = a1;
}

void sub_23E79D730(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_23E7A600C(&qword_27E34FF80, type metadata accessor for QueuePlayer);
  sub_23E7DCDA8();

  v3 = *(v1 + 72);
  os_unfair_lock_lock((v3 + 20));
  *a1 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 20));
}

void sub_23E79D7EC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23E7A600C(&qword_27E34FF80, type metadata accessor for QueuePlayer);
  sub_23E7DCDA8();

  v4 = *(v3 + 72);
  os_unfair_lock_lock((v4 + 20));
  v5 = *(v4 + 16);
  os_unfair_lock_unlock((v4 + 20));
  *a2 = v5;
}

uint64_t sub_23E79D8A8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_23E7A600C(&qword_27E34FF80, type metadata accessor for QueuePlayer);
  sub_23E7DCD98();
}

void sub_23E79D978(uint64_t *a1@<X8>)
{
  v3 = [*(v1 + 48) currentItem];
  if (v3)
  {
    v4 = v3;
    swift_getKeyPath();
    sub_23E7A600C(&qword_27E34FF80, type metadata accessor for QueuePlayer);
    sub_23E7DCDA8();

    v5 = *(v1 + 64);
    if (v5)
    {
      v6 = v5;
      sub_23E79DB0C(v4, a1);
    }

    else
    {

      v9 = type metadata accessor for PlaybackInfo.PlaybackItemInfo(0);
      (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
    }
  }

  else
  {
    v7 = type metadata accessor for PlaybackInfo.PlaybackItemInfo(0);
    v8 = *(*(v7 - 8) + 56);

    v8(a1, 1, 1, v7);
  }
}

uint64_t sub_23E79DB0C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v54 = a2;
  v55 = a1;
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFD0, &qword_23E7E1D98) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v51 = &v51 - v4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF90, &qword_23E7E1CC0);
  v5 = *(v56 - 8);
  v6 = *(v5 + 64);
  v7 = (MEMORY[0x28223BE20])();
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v52 = &v51 - v11;
  MEMORY[0x28223BE20](v10);
  v53 = &v51 - v12;
  v13 = *(v2 + qword_27E350DE8);
  v14 = *(v13 + 16);
  if (!v14)
  {
LABEL_16:
    v33 = type metadata accessor for PlaybackInfo.PlaybackItemInfo(0);
    return (*(*(v33 - 8) + 56))(v54, 1, 1, v33);
  }

  v15 = 0;
  while (1)
  {
    if (v15 >= *(v13 + 16))
    {
      __break(1u);
      goto LABEL_23;
    }

    sub_23E7A6710(v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v15, v9, &qword_27E34FF90, &qword_23E7E1CC0);
    v16 = *&v9[*(v56 + 40)];
    if (v16)
    {
      sub_23E7A68E0(0, &qword_27E34FF50, 0x277CE65B0);
      v17 = v16;
      v18 = v55;
      v19 = sub_23E7DD628();

      if (v19)
      {
        break;
      }
    }

    ++v15;
    sub_23E7996FC(v9, &qword_27E34FF90, &qword_23E7E1CC0);
    if (v14 == v15)
    {
      goto LABEL_16;
    }
  }

  v20 = v52;
  sub_23E7A6054(v9, v52);
  v5 = v53;
  sub_23E7A6054(v20, v53);
  v21 = sub_23E79AFDC();
  if (!*(v21 + 16) || (v22 = sub_23E7A35A4(0), (v23 & 1) == 0))
  {
LABEL_17:

    sub_23E7996FC(v5, &qword_27E34FF90, &qword_23E7E1CC0);
LABEL_18:
    v35 = v54;
    v36 = type metadata accessor for PlaybackInfo.PlaybackItemInfo(0);
    return (*(*(v36 - 8) + 56))(v35, 1, 1, v36);
  }

  sub_23E7A6134(*(v21 + 56) + 32 * v22, &v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF38, qword_23E7E1B50);
  if (!swift_dynamicCast())
  {
    sub_23E7996FC(v5, &qword_27E34FF90, &qword_23E7E1CC0);
LABEL_20:

    goto LABEL_18;
  }

  v24 = v58;
  if (!*(v21 + 16) || (v25 = v57, v26 = sub_23E7A35A4(1u), (v27 & 1) == 0))
  {

    goto LABEL_17;
  }

  sub_23E7A6134(*(v21 + 56) + 32 * v26, &v59);
  if (!swift_dynamicCast())
  {
LABEL_23:
    sub_23E7996FC(v5, &qword_27E34FF90, &qword_23E7E1CC0);

    goto LABEL_20;
  }

  v55 = v57;
  v56 = v25;
  v52 = v58;
  if (*(v21 + 16) && (v28 = sub_23E7A35A4(2u), (v29 & 1) != 0))
  {
    sub_23E7A6134(*(v21 + 56) + 32 * v28, &v59);

    v30 = sub_23E7DD208();
    v31 = v51;
    v32 = swift_dynamicCast();
    (*(*(v30 - 8) + 56))(v31, v32 ^ 1u, 1, v30);
  }

  else
  {

    v37 = sub_23E7DD208();
    (*(*(v37 - 8) + 56))(v51, 1, 1, v37);
  }

  [v18 currentTime];
  sub_23E7DD618();
  if ((v38 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    [v18 currentTime];
    sub_23E7DD618();
  }

  [v18 duration];
  sub_23E7DD618();
  if ((v39 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    [v18 duration];
    sub_23E7DD618();
  }

  v40 = sub_23E7DDA48();
  v42 = v41;
  v43 = sub_23E7DDA48();
  v45 = v44;
  sub_23E7996FC(v5, &qword_27E34FF90, &qword_23E7E1CC0);
  v46 = type metadata accessor for PlaybackInfo.PlaybackItemInfo(0);
  v47 = v54;
  v48 = v51;
  sub_23E7A6710(v51, v54 + *(v46 + 32), &qword_27E34FFD0, &qword_23E7E1D98);
  v49 = v55;
  *v47 = v56;
  v47[1] = v24;
  v50 = v52;
  v47[2] = v49;
  v47[3] = v50;
  v47[4] = v40;
  v47[5] = v42;
  v47[6] = v43;
  v47[7] = v45;
  (*(*(v46 - 8) + 56))(v47, 0, 1, v46);
  return sub_23E7996FC(v48, &qword_27E34FFD0, &qword_23E7E1D98);
}

uint64_t (*sub_23E79E174())(unsigned __int8 *a1)
{
  v1 = v0;
  *(v0 + 16) = [objc_allocWithZone(type metadata accessor for AudioSessionManager()) init];
  *(v0 + 32) = &unk_285111878;
  *(v0 + 40) = 1;
  *(v0 + 48) = [objc_allocWithZone(MEMORY[0x277CE65F8]) init];
  *(v0 + 64) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350088, &qword_23E7E5900);
  v2 = swift_allocObject();
  *(v2 + 20) = 0;
  *(v2 + 16) = 0;
  *(v0 + 72) = v2;
  sub_23E7DCDB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF98, &qword_23E7E1CF0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_23E7E1BA0;
  v4 = *(v0 + 48);
  *(v3 + 32) = v4;
  v5 = objc_allocWithZone(MEMORY[0x277CD5FF8]);
  sub_23E7A68E0(0, &qword_27E350090, 0x277CE6598);
  v6 = v4;
  v7 = sub_23E7DD488();

  v8 = [v5 initWithPlayers_];

  *(v1 + 3) = v8;
  [v8 setAutomaticallyPublishesNowPlayingInfo_];
  v9 = *(v1 + 6);
  v10 = type metadata accessor for QueuePlayerObserver();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC13AdaptiveMusic19QueuePlayerObserver_rateObservation] = 0;
  *&v11[OBJC_IVAR____TtC13AdaptiveMusic19QueuePlayerObserver_itemObservation] = 0;
  v12 = &v11[OBJC_IVAR____TtC13AdaptiveMusic19QueuePlayerObserver_onPlaybackChange];
  *v12 = nullsub_1;
  *(v12 + 1) = 0;
  v13 = &v11[OBJC_IVAR____TtC13AdaptiveMusic19QueuePlayerObserver_onItemChange];
  *v13 = nullsub_1;
  *(v13 + 1) = 0;
  *&v11[OBJC_IVAR____TtC13AdaptiveMusic19QueuePlayerObserver_player] = v9;
  v30.receiver = v11;
  v30.super_class = v10;
  v14 = v9;
  v15 = objc_msgSendSuper2(&v30, sel_init);
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  v16 = v15;
  v17 = sub_23E7DCCC8();

  v18 = *&v16[OBJC_IVAR____TtC13AdaptiveMusic19QueuePlayerObserver_rateObservation];
  *&v16[OBJC_IVAR____TtC13AdaptiveMusic19QueuePlayerObserver_rateObservation] = v17;

  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  v19 = sub_23E7DCCC8();

  v20 = *&v16[OBJC_IVAR____TtC13AdaptiveMusic19QueuePlayerObserver_itemObservation];
  *&v16[OBJC_IVAR____TtC13AdaptiveMusic19QueuePlayerObserver_itemObservation] = v19;

  *(v1 + 7) = v16;
  v21 = &v16[OBJC_IVAR____TtC13AdaptiveMusic19QueuePlayerObserver_onPlaybackChange];
  v22 = *&v16[OBJC_IVAR____TtC13AdaptiveMusic19QueuePlayerObserver_onPlaybackChange + 8];
  *v21 = sub_23E7A6A0C;
  v21[1] = v1;
  v23 = v16;
  sub_23E7DC9E8();

  v24 = (*(v1 + 7) + OBJC_IVAR____TtC13AdaptiveMusic19QueuePlayerObserver_onItemChange);
  v25 = v24[1];
  *v24 = sub_23E7A6A14;
  v24[1] = v1;
  sub_23E7DC9E8();

  v26 = *(v1 + 2);
  swift_allocObject();
  swift_weakInit();
  v27 = *&v26[OBJC_IVAR____TtC13AdaptiveMusic19AudioSessionManager_interruptionHandler];
  v28 = v26;
  sub_23E7DC9E8();
  os_unfair_lock_lock((v27 + 32));
  sub_23E7A6A5C((v27 + 16));
  os_unfair_lock_unlock((v27 + 32));

  return v1;
}

uint64_t sub_23E79E5E4(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  if (qword_27E34FB58 != -1)
  {
    swift_once();
  }

  v4 = sub_23E7DCE88();
  __swift_project_value_buffer(v4, qword_27E35A110);
  v5 = sub_23E7DCE68();
  v6 = sub_23E7DD5E8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    v9 = 0xE400000000000000;
    *v7 = 136315138;
    v10 = 1701602409;
    v11 = 0xE600000000000000;
    v12 = 0x646573756170;
    if (v3 != 2)
    {
      v12 = 0x676E6979616C70;
      v11 = 0xE700000000000000;
    }

    if (v3)
    {
      v10 = 0x676E6964616F6CLL;
      v9 = 0xE700000000000000;
    }

    if (v3 <= 1)
    {
      v13 = v10;
    }

    else
    {
      v13 = v12;
    }

    if (v3 <= 1)
    {
      v14 = v9;
    }

    else
    {
      v14 = v11;
    }

    v15 = sub_23E7D2CA4(v13, v14, &v20);

    *(v7 + 4) = v15;
    _os_log_impl(&dword_23E790000, v5, v6, "QueuePlayer playback changed to %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x23EF13B60](v8, -1, -1);
    MEMORY[0x23EF13B60](v7, -1, -1);
  }

  swift_getKeyPath();
  v20 = a2;
  sub_23E7A600C(&qword_27E34FF80, type metadata accessor for QueuePlayer);
  sub_23E7DCDA8();

  v16 = *(a2 + 72);
  os_unfair_lock_lock((v16 + 20));
  v17 = *(v16 + 16);
  os_unfair_lock_unlock((v16 + 20));
  result = sub_23E7A70AC(v17, v3);
  if ((result & 1) == 0)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v20 = a2;
    sub_23E7DCD98();
  }

  return result;
}

void sub_23E79E8AC(void *a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    swift_getKeyPath();
    sub_23E7A600C(&qword_27E34FF80, type metadata accessor for QueuePlayer);
    sub_23E7DCDA8();

    v19 = a3[9];
    os_unfair_lock_lock((v19 + 20));
    v20 = *(v19 + 16);
    os_unfair_lock_unlock((v19 + 20));
    if (v20 <= 1 && v20)
    {
    }

    else
    {
      v21 = sub_23E7DD8E8();

      if ((v21 & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    if (qword_27E34FB58 != -1)
    {
      swift_once();
    }

    v22 = sub_23E7DCE88();
    __swift_project_value_buffer(v22, qword_27E35A110);
    v23 = sub_23E7DCE68();
    v24 = sub_23E7DD5C8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_23E790000, v23, v24, "QueuePlayer ignoring item update to nil while loading", v25, 2u);
      MEMORY[0x23EF13B60](v25, -1, -1);
    }

    return;
  }

LABEL_2:
  swift_getKeyPath();
  sub_23E7A600C(&qword_27E34FF80, type metadata accessor for QueuePlayer);
  sub_23E7DCDA8();

  v6 = a3[9];
  os_unfair_lock_lock((v6 + 20));
  v7 = *(v6 + 16);
  os_unfair_lock_unlock((v6 + 20));
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_23E7DCD98();

  if (!a2)
  {
    swift_getKeyPath();
    sub_23E7DCDA8();

    v9 = a3[8];
    if (v9)
    {
      v10 = v9;
      v11 = sub_23E79ED34();
      if (v11 >> 62)
      {
        v26 = v11;
        v12 = sub_23E7DD798();
        v11 = v26;
        if (v12)
        {
LABEL_6:
          v13 = __OFSUB__(v12, 1);
          v14 = v12 - 1;
          if (v13)
          {
            __break(1u);
          }

          else if ((v11 & 0xC000000000000001) == 0)
          {
            if ((v14 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v14 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v15 = *(v11 + 8 * v14 + 32);
              goto LABEL_11;
            }

            __break(1u);
            return;
          }

          v15 = MEMORY[0x23EF131A0](v14);
LABEL_11:
          v16 = v15;

          if (a1)
          {
            sub_23E7A68E0(0, &qword_27E34FF50, 0x277CE65B0);
            v17 = a1;
            v18 = sub_23E7DD628();

            if (v18)
            {
              goto LABEL_29;
            }
          }

          else
          {
          }

          goto LABEL_28;
        }
      }

      else
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v12)
        {
          goto LABEL_6;
        }
      }

      if (!a1)
      {
LABEL_29:
        v27 = a3[6];
        v28 = sub_23E79ED34();
        sub_23E79EEE4(v28);

        return;
      }

LABEL_28:
    }
  }
}

uint64_t sub_23E79ED34()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF90, &qword_23E7E1CC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  result = MEMORY[0x28223BE20](v1);
  v6 = &v12 - v5;
  v7 = 0;
  v8 = *(v0 + qword_27E350DE8);
  v12 = MEMORY[0x277D84F90];
  v13 = MEMORY[0x277D84F90];
  v9 = *(v8 + 16);
  while (1)
  {
    if (v9 == v7)
    {
      return v12;
    }

    if (v7 >= *(v8 + 16))
    {
      break;
    }

    sub_23E7A6710(v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v7++, v6, &qword_27E34FF90, &qword_23E7E1CC0);
    v10 = *&v6[*(v1 + 40)];
    v11 = v10;
    result = sub_23E7996FC(v6, &qword_27E34FF90, &qword_23E7E1CC0);
    if (v10)
    {
      MEMORY[0x23EF12ED0](result);
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_23E7DD4B8();
      }

      result = sub_23E7DD4D8();
      v12 = v13;
    }
  }

  __break(1u);
  return result;
}

id sub_23E79EEE4(unint64_t a1)
{
  v3 = [v1 items];
  sub_23E7A68E0(0, &qword_27E34FF50, 0x277CE65B0);
  v4 = sub_23E7DD498();

  if (v4 >> 62)
  {
    v5 = sub_23E7DD798();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    result = [v1 removeAllItems];
  }

  if (a1 >> 62)
  {
    result = sub_23E7DD798();
    v7 = result;
    if (!result)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v7; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x23EF131A0](i, a1);
    }

    else
    {
      v9 = *(a1 + 8 * i + 32);
    }

    v10 = v9;
    [v1 insertItem:v9 afterItem:0];
  }

LABEL_15:
  v11 = [v1 currentItem];
  if (v11)
  {
    v12 = v11;
    [v11 currentTime];
    v13 = *MEMORY[0x277CC08F0];
    v14 = *(MEMORY[0x277CC08F0] + 8);
    v15 = *(MEMORY[0x277CC08F0] + 12);
    v16 = *(MEMORY[0x277CC08F0] + 16);
    if (sub_23E7DD5F8())
    {
      v17 = v13;
      v18 = v14;
      v19 = v15;
      v20 = v16;
      [v1 seekToTime_];
    }
  }

  return [v1 play];
}

void sub_23E79F0D4(uint64_t a1, char a2, uint64_t a3)
{
  v22[4] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFB8, &qword_23E7E1D58);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22[-1] - v8;
  if (!a1)
  {
    if (a2)
    {
      v11 = sub_23E7DD558();
      (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
      v12 = swift_allocObject();
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = a3;
      sub_23E7DC9E8();
      sub_23E79F778(0, 0, v9, &unk_23E7E1F10, v12);

      goto LABEL_12;
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      goto LABEL_12;
    }

    v14 = Strong;
    [*(Strong + 48) removeAllItems];
    [*(v14 + 48) pause];
    v15 = [objc_opt_self() sharedInstance];
    v22[0] = 0;
    v16 = [v15 setActive:0 withOptions:0 error:v22];

    if (!v16)
    {
      v18 = v22[0];
      v19 = sub_23E7DCC78();

      swift_willThrow();

      goto LABEL_12;
    }

    v17 = v22[0];
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    swift_beginAccess();
    v10 = swift_weakLoadStrong();
    if (v10)
    {
      [*(v10 + 48) pause];
LABEL_5:
    }
  }

LABEL_12:
  v20 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23E79F33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_23E79F35C, 0, 0);
}

uint64_t sub_23E79F35C()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_23E79F450;

    return sub_23E79F5FC();
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_23E79F450()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_23E79F598;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_23E79F56C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23E79F598()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_23E79F61C()
{
  v1 = *(v0[3] + 48);
  v2 = [v1 currentItem];
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = v2;
  v4 = [v2 status];

  if (v4 != 2)
  {
    goto LABEL_5;
  }

  v5 = v0[3];
  swift_getKeyPath();
  v0[2] = v5;
  sub_23E7A600C(&qword_27E34FF80, type metadata accessor for QueuePlayer);
  sub_23E7DCDA8();

  v6 = *(v5 + 64);
  if (v6)
  {
    v7 = v6;
    v8 = sub_23E79ED34();
    sub_23E79EEE4(v8);
  }

  else
  {
LABEL_5:
    [v1 play];
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_23E79F778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFB8, &qword_23E7E1D58);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_23E7A6710(a3, v24 - v10, &qword_27E34FFB8, &qword_23E7E1D58);
  v12 = sub_23E7DD558();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_23E7DC9E8();
  if (v14 == 1)
  {
    sub_23E7996FC(v11, &qword_27E34FFB8, &qword_23E7E1D58);
  }

  else
  {
    sub_23E7DD548();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_23E7DD518();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_23E7DD378() + 32;
      sub_23E7DC9E8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350098, &qword_23E7E1F18);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_23E7996FC(a3, &qword_27E34FFB8, &qword_23E7E1D58);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23E7996FC(a3, &qword_27E34FFB8, &qword_23E7E1D58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350098, &qword_23E7E1F18);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

void sub_23E79FA34()
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 48);
  [v1 removeAllItems];
  [v1 pause];
  v2 = [objc_opt_self() sharedInstance];
  v10[0] = 0;
  v3 = [v2 setActive:0 withOptions:0 error:v10];

  v4 = v10[0];
  if (v3)
  {
    v5 = *MEMORY[0x277D85DE8];

    v6 = v4;
  }

  else
  {
    v7 = v10[0];
    v8 = sub_23E7DCC78();

    swift_willThrow();
    v9 = *MEMORY[0x277D85DE8];
  }
}

uint64_t sub_23E79FB68(_OWORD *a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  *(v3 + 528) = v2;
  *(v3 + 520) = a2;
  v5 = sub_23E7DCCF8();
  *(v3 + 536) = v5;
  v6 = *(v5 - 8);
  *(v3 + 544) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 552) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FE88, &qword_23E7E1D10) - 8) + 64) + 15;
  *(v3 + 560) = swift_task_alloc();
  *(v3 + 568) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF90, &qword_23E7E1CC0);
  *(v3 + 576) = v9;
  v10 = *(v9 - 8);
  *(v3 + 584) = v10;
  v11 = *(v10 + 64) + 15;
  *(v3 + 592) = swift_task_alloc();
  *(v3 + 600) = swift_task_alloc();
  v12 = sub_23E7DCE58();
  *(v3 + 608) = v12;
  v13 = *(v12 - 8);
  *(v3 + 616) = v13;
  v14 = *(v13 + 64) + 15;
  *(v3 + 624) = swift_task_alloc();
  *(v3 + 632) = swift_task_alloc();
  v15 = a1[1];
  *(v3 + 272) = *a1;
  *(v3 + 288) = v15;
  *(v3 + 304) = a1[2];
  *(v3 + 315) = *(a1 + 43);
  v16 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_23E79FDA0, 0, 0);
}

uint64_t sub_23E79FDA0()
{
  v24 = *MEMORY[0x277D85DE8];
  if (*(v0 + 329) && *(v0 + 329) == 1)
  {
  }

  else
  {
    v1 = sub_23E7DD8E8();

    if ((v1 & 1) == 0)
    {
      result = sub_23E7DD788();
      v22 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  v2 = *(v0 + 528);
  sub_23E7A16EC();
  v3 = objc_opt_self();
  v4 = [v3 sharedInstance];
  v5 = *MEMORY[0x277CB8030];
  *(v0 + 480) = 0;
  v6 = [v4 setCategory:v5 error:v0 + 480];

  v7 = *(v0 + 480);
  if (v6)
  {
    v8 = v7;
    v9 = [v3 sharedInstance];
    *(v0 + 640) = v9;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 331;
    *(v0 + 24) = sub_23E7A0150;
    v10 = swift_continuation_init();
    *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFA8, &qword_23E7E1D18);
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_23E7A2FD0;
    *(v0 + 168) = &block_descriptor_10;
    *(v0 + 176) = v10;
    [v9 activateWithOptions:0 completionHandler:v0 + 144];
    v11 = *MEMORY[0x277D85DE8];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v12 = v7;
    sub_23E7DCC78();

    swift_willThrow();
    v13 = *(v0 + 632);
    v14 = *(v0 + 624);
    v15 = *(v0 + 600);
    v16 = *(v0 + 592);
    v17 = *(v0 + 568);
    v18 = *(v0 + 560);
    v19 = *(v0 + 552);

    v20 = *(v0 + 8);
    v21 = *MEMORY[0x277D85DE8];

    return v20();
  }
}

uint64_t sub_23E7A0150()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 648) = v2;
  if (v2)
  {
    v3 = sub_23E7A07BC;
  }

  else
  {
    v3 = sub_23E7A028C;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E7A028C()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 528);

  v2 = *(v1 + 24);
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 395;
  *(v0 + 88) = sub_23E7A03E8;
  v3 = swift_continuation_init();
  *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF88, &qword_23E7E1CB8);
  *(v0 + 208) = MEMORY[0x277D85DD0];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_23E7A1B60;
  *(v0 + 232) = &block_descriptor_13;
  *(v0 + 240) = v3;
  [v2 becomeActiveIfPossibleWithCompletion_];
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200938](v0 + 80);
}

uint64_t sub_23E7A03E8()
{
  v1 = *v0;
  v5 = *v0;
  v2 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_23E7A04F4, 0, 0);
}

uint64_t sub_23E7A04F4()
{
  v13 = v0;
  v12[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 528);
  swift_getKeyPath();
  v2 = swift_task_alloc();
  *(v2 + 16) = v1;
  *(v2 + 24) = 1;
  *(v0 + 656) = OBJC_IVAR____TtC13AdaptiveMusic11QueuePlayer___observationRegistrar;
  *(v0 + 488) = v1;
  *(v0 + 664) = sub_23E7A600C(&qword_27E34FF80, type metadata accessor for QueuePlayer);
  sub_23E7DCD98();

  if (qword_27E34FB58 != -1)
  {
    swift_once();
  }

  v3 = sub_23E7DCE88();
  *(v0 + 672) = __swift_project_value_buffer(v3, qword_27E35A110);
  sub_23E794BD8(v0 + 272, v0 + 336);
  v4 = sub_23E7DCE68();
  v5 = sub_23E7DD5E8();
  sub_23E7A4C68(v0 + 272);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_23E7D2CA4(*(v0 + 288), *(v0 + 296), v12);
    _os_log_impl(&dword_23E790000, v4, v5, "QueuePlayer playing playlist %s.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x23EF13B60](v7, -1, -1);
    MEMORY[0x23EF13B60](v6, -1, -1);
  }

  v8 = *(v0 + 288);
  *(v0 + 400) = *(v0 + 272);
  *(v0 + 416) = v8;
  *(v0 + 432) = *(v0 + 304);
  *(v0 + 443) = *(v0 + 315);
  v9 = swift_task_alloc();
  *(v0 + 680) = v9;
  *v9 = v0;
  v9[1] = sub_23E7A08BC;
  v10 = *MEMORY[0x277D85DE8];

  return sub_23E7BA450(v0 + 400);
}

uint64_t sub_23E7A07BC()
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = v0[81];
  v2 = v0[80];
  swift_willThrow();

  v3 = v0[81];
  v4 = v0[79];
  v5 = v0[78];
  v6 = v0[75];
  v7 = v0[74];
  v8 = v0[71];
  v9 = v0[70];
  v10 = v0[69];

  v11 = v0[1];
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_23E7A08BC(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *(*v2 + 680);
  v9 = *v2;
  *(v3 + 688) = a1;
  *(v3 + 696) = v1;

  if (v1)
  {
    v5 = sub_23E7A0CE4;
  }

  else
  {
    v5 = sub_23E7A0A00;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23E7A0A00()
{
  v31 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 688);
  v2 = *(v1 + 16);
  *(v0 + 704) = v2;
  if (v2)
  {
    v3 = *(v0 + 616);
    *(v0 + 712) = sub_23E7DD538();
    v4 = *(v3 + 16);
    v3 += 16;
    v5 = *(v3 + 64);
    *(v0 + 332) = v5;
    *(v0 + 720) = *(v3 + 56);
    *(v0 + 728) = v4;
    *(v0 + 736) = *MEMORY[0x277CEFE38];
    *(v0 + 752) = MEMORY[0x277D84F90];
    *(v0 + 744) = 0;
    v6 = *(v0 + 632);
    v7 = *(v0 + 624);
    v8 = *(v0 + 608);
    v9 = *(v0 + 520);
    *(v0 + 760) = v3 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v4(v6, v1 + ((v5 + 32) & ~v5), v8);
    v4(v7, v6, v8);
    sub_23E7DC9D8();
    *(v0 + 768) = sub_23E7DD528();
    v10 = sub_23E7DD518();
    v12 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_23E7A1114, v10, v11);
  }

  else
  {

    v13 = *(v0 + 632);
    v14 = *(v0 + 624);
    v15 = *(v0 + 600);
    v16 = *(v0 + 592);
    v17 = *(v0 + 568);
    v28 = *(v0 + 560);
    v29 = *(v0 + 552);
    v18 = *(v0 + 528);
    v30 = MEMORY[0x277D84F90];
    sub_23E7A48AC();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFA0, &qword_23E7E1CF8);
    v20 = objc_allocWithZone(v19);
    *&v20[qword_27E350DE8] = v30;
    *(v0 + 464) = v20;
    *(v0 + 472) = v19;
    v21 = objc_msgSendSuper2((v0 + 464), sel_init);
    v22 = v21;
    sub_23E79D5A4(v21);
    v23 = *(v18 + 48);
    v24 = sub_23E79ED34();
    sub_23E79EEE4(v24);

    v25 = *(v0 + 8);
    v26 = *MEMORY[0x277D85DE8];

    return v25();
  }
}

uint64_t sub_23E7A0CE4()
{
  v39 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 696);
  type metadata accessor for Code(0);
  *(v0 + 496) = -7007;
  v2 = v1;
  sub_23E7A600C(&qword_27E34FCD0, type metadata accessor for Code);
  v3 = sub_23E7DCBA8();

  if (v3)
  {
    v4 = *(v0 + 672);
    v5 = *(v0 + 664);
    v6 = *(v0 + 656);
    v7 = *(v0 + 528);

    swift_getKeyPath();
    v8 = swift_task_alloc();
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    *(v0 + 512) = v7;
    sub_23E7DCD98();

    v9 = sub_23E7DCE68();
    v10 = sub_23E7DD5D8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_23E790000, v9, v10, "QueuePlayer got privacy acknowledgement error", v11, 2u);
      MEMORY[0x23EF13B60](v11, -1, -1);
    }

    sub_23E799564();
    swift_allocError();
    *v12 = 5;
    swift_willThrow();
  }

  else
  {
    v13 = *(v0 + 696);
    v14 = *(v0 + 672);
    v15 = v13;
    v16 = sub_23E7DCE68();
    v17 = sub_23E7DD5D8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(v0 + 696);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = v18;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_23E790000, v16, v17, "QueuePlayer failed to fetch playback items %@", v19, 0xCu);
      sub_23E7996FC(v20, qword_27E34FEA8, &unk_23E7E1AB0);
      MEMORY[0x23EF13B60](v20, -1, -1);
      MEMORY[0x23EF13B60](v19, -1, -1);
    }

    v23 = *(v0 + 696);
    v24 = *(v0 + 664);
    v25 = *(v0 + 656);
    v26 = *(v0 + 528);

    swift_getKeyPath();
    v27 = swift_task_alloc();
    *(v27 + 16) = v26;
    *(v27 + 24) = 0;
    *(v0 + 504) = v26;
    sub_23E7DCD98();

    sub_23E799564();
    swift_allocError();
    *v28 = 2;
    swift_willThrow();
  }

  v29 = *(v0 + 632);
  v30 = *(v0 + 624);
  v31 = *(v0 + 600);
  v32 = *(v0 + 592);
  v33 = *(v0 + 568);
  v34 = *(v0 + 560);
  v35 = *(v0 + 552);

  v36 = *(v0 + 8);
  v37 = *MEMORY[0x277D85DE8];

  return v36();
}

uint64_t sub_23E7A1114()
{
  v34 = *MEMORY[0x277D85DE8];
  v1 = v0[96];
  v2 = v0[91];
  v3 = v0[78];
  v4 = v0[76];
  v5 = v0[74];
  v6 = v0[72];
  v7 = v0[71];
  v8 = v0[70];
  v9 = v0[68];
  v32 = v0[95];
  v33 = v0[67];
  v10 = v0[65];

  v2(v5, v3, v4);
  *(v5 + *(v6 + 36)) = v10;
  sub_23E799D80(v7);
  sub_23E7A6710(v7, v8, &qword_27E34FE88, &qword_23E7E1D10);
  if ((*(v9 + 48))(v8, 1, v33) == 1)
  {
    sub_23E7996FC(v0[71], &qword_27E34FE88, &qword_23E7E1D10);
    v11 = 0;
  }

  else
  {
    v12 = v0[92];
    (*(v0[68] + 32))(v0[69], v0[70], v0[67]);
    v13 = objc_allocWithZone(MEMORY[0x277CE65B0]);
    v14 = sub_23E7DCCD8();
    v11 = [v13 initWithURL_];

    if (!v12)
    {
      __break(1u);
      return MEMORY[0x2822009F8](v15, v16, v17);
    }

    v18 = v0[71];
    v19 = v0[69];
    v20 = v0[68];
    v21 = v0[67];
    [v11 setMediaKind_];
    (*(v20 + 8))(v19, v21);
    sub_23E7996FC(v18, &qword_27E34FE88, &qword_23E7E1D10);
  }

  v22 = v0[79];
  v23 = v0[78];
  v24 = v0[77];
  v25 = v0[76];
  v26 = v0[75];
  v27 = v0[74];
  *(v27 + *(v0[72] + 40)) = v11;
  v28 = sub_23E79AFDC();
  sub_23E79B314(v28);

  v29 = *(v24 + 8);
  v29(v23, v25);
  sub_23E7A6054(v27, v26);
  v29(v22, v25);
  v30 = *MEMORY[0x277D85DE8];
  v15 = sub_23E7A13A4;
  v16 = 0;
  v17 = 0;

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_23E7A13A4()
{
  v40 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 752);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 752);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_23E7D28D8(0, v3[2] + 1, 1, *(v0 + 752));
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_23E7D28D8(v4 > 1, v5 + 1, 1, v3);
  }

  v6 = *(v0 + 704);
  v7 = *(v0 + 600);
  v8 = *(v0 + 584);
  v9 = *(v0 + 744) + 1;
  v3[2] = v5 + 1;
  sub_23E7A6054(v7, v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v5);
  if (v9 == v6)
  {
    v10 = *(v0 + 688);

    v11 = *(v0 + 632);
    v12 = *(v0 + 624);
    v13 = *(v0 + 600);
    v14 = *(v0 + 592);
    v15 = *(v0 + 568);
    v38 = *(v0 + 560);
    v39 = *(v0 + 552);
    v16 = *(v0 + 528);
    sub_23E7A48AC();
    v17 = v3;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFA0, &qword_23E7E1CF8);
    v19 = objc_allocWithZone(v18);
    *&v19[qword_27E350DE8] = v17;
    *(v0 + 464) = v19;
    *(v0 + 472) = v18;
    v20 = objc_msgSendSuper2((v0 + 464), sel_init);
    v21 = v20;
    sub_23E79D5A4(v20);
    v22 = *(v16 + 48);
    v23 = sub_23E79ED34();
    sub_23E79EEE4(v23);

    v24 = *(v0 + 8);
    v25 = *MEMORY[0x277D85DE8];

    return v24();
  }

  else
  {
    v27 = *(v0 + 744) + 1;
    *(v0 + 752) = v3;
    *(v0 + 744) = v27;
    v28 = *(v0 + 728);
    v29 = *(v0 + 712);
    v30 = *(v0 + 632);
    v31 = *(v0 + 624);
    v32 = *(v0 + 608);
    v33 = *(v0 + 520);
    v34 = *(v0 + 688) + ((*(v0 + 332) + 32) & ~*(v0 + 332)) + *(v0 + 720) * v27;
    *(v0 + 760) = (*(v0 + 616) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v28(v30, v34, v32);
    v28(v31, v30, v32);
    sub_23E7DC9D8();
    *(v0 + 768) = sub_23E7DD528();
    v35 = sub_23E7DD518();
    v37 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_23E7A1114, v35, v36);
  }
}

uint64_t sub_23E7A16EC()
{
  v1 = [*(v0 + 24) remoteCommandCenter];
  v2 = [v1 playCommand];
  v22 = sub_23E7A65C8;
  v23 = v0;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_23E7A29BC;
  v21 = &block_descriptor_44;
  v3 = _Block_copy(&v18);
  sub_23E7DC9E8();

  v4 = [v2 addTargetWithHandler_];
  _Block_release(v3);

  sub_23E7DD6A8();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&v18);
  v5 = [v1 pauseCommand];
  v22 = sub_23E7A65F0;
  v23 = v0;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_23E7A29BC;
  v21 = &block_descriptor_47;
  v6 = _Block_copy(&v18);
  sub_23E7DC9E8();

  v7 = [v5 addTargetWithHandler_];
  _Block_release(v6);

  sub_23E7DD6A8();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&v18);
  v8 = [v1 nextTrackCommand];
  v22 = sub_23E7A6618;
  v23 = v0;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_23E7A29BC;
  v21 = &block_descriptor_50;
  v9 = _Block_copy(&v18);
  sub_23E7DC9E8();

  v10 = [v8 addTargetWithHandler_];
  _Block_release(v9);

  sub_23E7DD6A8();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&v18);
  v11 = [v1 previousTrackCommand];
  v22 = sub_23E7A6640;
  v23 = v0;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_23E7A29BC;
  v21 = &block_descriptor_53;
  v12 = _Block_copy(&v18);
  sub_23E7DC9E8();

  v13 = [v11 addTargetWithHandler_];
  _Block_release(v12);

  sub_23E7DD6A8();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&v18);
  v14 = [v1 changePlaybackPositionCommand];
  v22 = sub_23E7A6648;
  v23 = v0;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_23E7A29BC;
  v21 = &block_descriptor_56;
  v15 = _Block_copy(&v18);
  sub_23E7DC9E8();

  v16 = [v14 addTargetWithHandler_];
  _Block_release(v15);

  sub_23E7DD6A8();
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(&v18);
}

uint64_t sub_23E7A1B60(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x282200948]();
}

id sub_23E7A1BBC()
{
  v2 = v1;
  v3 = v0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF90, &qword_23E7E1CC0);
  v30 = *(v32 - 8);
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v32);
  v6 = &v26 - v5;
  swift_getKeyPath();
  v7 = OBJC_IVAR____TtC13AdaptiveMusic11QueuePlayer___observationRegistrar;
  v31[0] = v0;
  sub_23E7A600C(&qword_27E34FF80, type metadata accessor for QueuePlayer);
  sub_23E7DCDA8();

  v8 = v0[8];
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = v8;
  v10 = sub_23E79ED34();

  if (v10 >> 62)
  {
    result = sub_23E7DD798();
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_9:

LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

LABEL_4:
  if ((v10 & 0xC000000000000001) != 0)
  {
    goto LABEL_33;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return result;
  }

  for (i = *(v10 + 32); ; i = MEMORY[0x23EF131A0](0, v10))
  {
    v13 = i;

LABEL_11:
    v28 = v3[6];
    v14 = [v28 currentItem];
    v15 = v14;
    if (!v13)
    {
      if (!v14)
      {
LABEL_16:
        v17 = *(MEMORY[0x277CC08F0] + 16);
        v31[0] = *MEMORY[0x277CC08F0];
        v31[1] = *(MEMORY[0x277CC08F0] + 8);
        v31[2] = v17;
        return [v28 seekToTime_];
      }

      goto LABEL_18;
    }

    if (!v14)
    {
      v15 = v13;
LABEL_18:

      goto LABEL_19;
    }

    sub_23E7A68E0(0, &qword_27E34FF50, 0x277CE65B0);
    v16 = sub_23E7DD628();

    if (v16)
    {
      goto LABEL_16;
    }

LABEL_19:
    v29 = [v28 currentItem];
    if (!v29)
    {
      goto LABEL_31;
    }

    swift_getKeyPath();
    v31[0] = v3;
    v10 = v7 + v3;
    sub_23E7DCDA8();

    v18 = v3[8];
    if (!v18)
    {
      goto LABEL_30;
    }

    v26 = v2;
    v19 = *&v18[qword_27E350DE8];
    v2 = *(v19 + 16);
    v27 = v18;
    if (!v2)
    {
      break;
    }

    v20 = 0;
    v3 = &qword_23E7E1CC0;
    while (v20 < *(v19 + 16))
    {
      sub_23E7A6710(v19 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v20, v6, &qword_27E34FF90, &qword_23E7E1CC0);
      v21 = *&v6[*(v32 + 40)];
      if (v21)
      {
        sub_23E7A68E0(0, &qword_27E34FF50, 0x277CE65B0);
        v7 = v21;
        v22 = v29;
        v10 = sub_23E7DD628();

        sub_23E7996FC(v6, &qword_27E34FF90, &qword_23E7E1CC0);
        if (v10)
        {
          v23 = v27;
          v24 = sub_23E7A2D7C(v20 - 1);

          sub_23E79EEE4(v24);
        }
      }

      else
      {
        sub_23E7996FC(v6, &qword_27E34FF90, &qword_23E7E1CC0);
      }

      if (v2 == ++v20)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_33:
    ;
  }

LABEL_29:

LABEL_30:
LABEL_31:
  sub_23E799564();
  swift_allocError();
  *v25 = 3;
  return swift_willThrow();
}

uint64_t sub_23E7A2000()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 72);

  v3 = OBJC_IVAR____TtC13AdaptiveMusic11QueuePlayer___observationRegistrar;
  v4 = sub_23E7DCDC8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_23E7A2098()
{
  sub_23E7A2000();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for QueuePlayer()
{
  result = qword_27E34FF70;
  if (!qword_27E34FF70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23E7A2144()
{
  result = sub_23E7DCDC8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_23E7A2224(_BYTE *a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_23E7A600C(&qword_27E34FF80, type metadata accessor for QueuePlayer);
  sub_23E7DCDA8();

  v4 = *(v3 + 72);
  os_unfair_lock_lock((v4 + 20));
  *a1 = *(v4 + 16);
  os_unfair_lock_unlock((v4 + 20));
}

uint64_t sub_23E7A2304(_OWORD *a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23E7A23AC;

  return sub_23E79FB68(a1, a2);
}

uint64_t sub_23E7A23AC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23E7A24B4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23E7A6BDC;

  return sub_23E79F5FC();
}

uint64_t sub_23E7A2568()
{
  [*(*(v0 + 16) + 48) advanceToNextItem];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23E7A25D8()
{
  v2 = *v0;
  sub_23E7A1BBC();
  v3 = *(v1 + 8);

  return v3();
}

id sub_23E7A2654()
{
  v1 = *(*v0 + 48);
  v2 = *(MEMORY[0x277CC08F0] + 16);
  v4[0] = *MEMORY[0x277CC08F0];
  v4[1] = *(MEMORY[0x277CC08F0] + 8);
  v4[2] = v2;
  return [v1 seekToTime_];
}

uint64_t sub_23E7A26CC(double a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = *v1;
  return MEMORY[0x2822009F8](sub_23E7A26F4, 0, 0);
}

uint64_t sub_23E7A26F4()
{
  v1 = v0 + 2;
  v2 = v0[18];
  v3 = *(v0[19] + 48);
  v4 = sub_23E7DD608();
  v6 = v5;
  v8 = v7;
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_23E7A2840;
  v9 = swift_continuation_init();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF88, &qword_23E7E1CB8);
  v0[20] = v4;
  v11 = v0 + 20;
  *(v11 - 3) = v10;
  *(v11 - 10) = MEMORY[0x277D85DD0];
  *(v11 - 9) = 1107296256;
  *(v11 - 8) = sub_23E7A1B60;
  *(v11 - 7) = &block_descriptor;
  *(v11 - 6) = v9;
  v11[1] = v6;
  v11[2] = v8;
  [v3 seekToTime:v11 completionHandler:?];

  return MEMORY[0x282200938](v1);
}

uint64_t sub_23E7A2840()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23E7A2920, 0, 0);
}

uint64_t sub_23E7A2938(uint64_t a1)
{
  result = sub_23E7A600C(&qword_27E34FF80, type metadata accessor for QueuePlayer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23E7A29BC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_23E7DC9E8();
  v5 = a2;
  v6 = v4();

  return v6;
}

uint64_t sub_23E7A2A14(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350038, &qword_23E7E1E00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (v21 - v5);
  v7 = type metadata accessor for PlaybackInfo.PlaybackItemInfo(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 48);
  v13 = [v12 currentItem];
  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = v13;
  swift_getKeyPath();
  v21[0] = a2;
  sub_23E7A600C(&qword_27E34FF80, type metadata accessor for QueuePlayer);
  sub_23E7DCDA8();

  v15 = *(a2 + 64);
  if (!v15)
  {

LABEL_7:
    (*(v8 + 56))(v6, 1, 1, v7);
    goto LABEL_8;
  }

  v16 = v15;
  sub_23E79DB0C(v14, v6);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
LABEL_8:
    sub_23E7996FC(v6, &qword_27E350038, &qword_23E7E1E00);
LABEL_9:
    sub_23E7A1BBC();
    return 0;
  }

  sub_23E7A6650(v6, v11);
  v17 = *(v11 + 4);
  v18 = *(v11 + 5);
  if ((sub_23E7DDA18() & 1) == 0)
  {
    sub_23E7A66B4(v11);
    goto LABEL_9;
  }

  v19 = *(MEMORY[0x277CC08F0] + 16);
  v21[0] = *MEMORY[0x277CC08F0];
  v21[1] = *(MEMORY[0x277CC08F0] + 8);
  v21[2] = v19;
  [v12 seekToTime_];
  sub_23E7A66B4(v11);
  return 0;
}

uint64_t sub_23E7A2CCC(void *a1, uint64_t a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    return 200;
  }

  v5 = v4;
  v6 = *(a2 + 48);
  v7 = a1;
  [v5 positionTime];
  v12 = sub_23E7DD608();
  v13 = v8;
  v14 = v9;
  v15 = v10;
  [v6 seekToTime_];

  return 0;
}

uint64_t sub_23E7A2D7C(int64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    v3 = sub_23E79ED34();
    v4 = v3;
    v5 = v3 >> 62;
    if (v3 >> 62)
    {
      v6 = sub_23E7DD798();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v6 >= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = v6;
    }

    if (v6 < 0)
    {
      v7 = a1;
    }

    if (a1)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    if (v6 < v8)
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    if (v5)
    {
      if (v4 < 0)
      {
        v1 = v4;
      }

      else
      {
        v1 = v4 & 0xFFFFFFFFFFFFFF8;
      }

      if (sub_23E7DD798() < v8)
      {
        goto LABEL_46;
      }

      v9 = sub_23E7DD798();
    }

    else
    {
      v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 < v8)
      {
        goto LABEL_46;
      }
    }

    if (v9 < v6)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (v6 < 0)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    if ((v4 & 0xC000000000000001) == 0 || v8 == v6)
    {
      sub_23E7DC9D8();
    }

    else
    {
      if (v8 >= v6)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      sub_23E7A68E0(0, &qword_27E34FF50, 0x277CE65B0);
      sub_23E7DC9D8();
      v11 = v8;
      do
      {
        v12 = v11 + 1;
        sub_23E7DD738();
        v11 = v12;
      }

      while (v6 != v12);
    }

    if (v5)
    {
      v1 = sub_23E7DD7A8();
      v5 = v13;
      v8 = v14;
      v6 = v15;

      if (v6)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v1 = v4 & 0xFFFFFFFFFFFFFF8;
      v5 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
      v6 = (2 * v6) | 1;
      if (v6)
      {
LABEL_36:
        sub_23E7DD918();
        swift_unknownObjectRetain_n();
        v17 = swift_dynamicCastClass();
        if (!v17)
        {
          swift_unknownObjectRelease();
          v17 = MEMORY[0x277D84F90];
        }

        v18 = *(v17 + 16);

        if (!__OFSUB__(v6 >> 1, v8))
        {
          if (v18 == (v6 >> 1) - v8)
          {
            v10 = swift_dynamicCastClass();
            swift_unknownObjectRelease();
            if (!v10)
            {
              swift_unknownObjectRelease();
              v10 = MEMORY[0x277D84F90];
            }

            goto LABEL_42;
          }

          goto LABEL_51;
        }

LABEL_50:
        __break(1u);
LABEL_51:
        swift_unknownObjectRelease_n();
      }
    }

    sub_23E7A4B1C(v1, v5, v8, v6);
    v10 = v16;
LABEL_42:
    swift_unknownObjectRelease();
    return v10;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_23E7A2FD0(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350030, &qword_23E7E26F0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

id sub_23E7A309C(uint64_t a1, double a2, double a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = sub_23E7DC9E8();
  v8 = v5(v7, a2, a3);

  return v8;
}

void sub_23E7A3108(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_23E79D5A4(v2);
}

uint64_t sub_23E7A3138(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E7A6BEC;

  return v7(a1);
}

uint64_t sub_23E7A3230(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E7A3328;

  return v7(a1);
}

uint64_t sub_23E7A3328()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_23E7A3420(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_23E7DD9A8();
  sub_23E7DD398();

  v4 = sub_23E7DD9C8();

  return sub_23E7A36C4(a1, v4);
}

unint64_t sub_23E7A352C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_23E7DD9A8();
  sub_23E7DD398();
  v6 = sub_23E7DD9C8();

  return sub_23E7A38AC(a1, a2, v6);
}

unint64_t sub_23E7A35A4(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_23E7DD9A8();
  sub_23E7DD398();

  v4 = sub_23E7DD9C8();

  return sub_23E7A3964(a1, v4);
}

unint64_t sub_23E7A3680(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_23E7DD6C8();

  return sub_23E7A3AFC(a1, v5);
}

unint64_t sub_23E7A36C4(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = 0xE900000000000067;
    v6 = 0xE500000000000000;
    v7 = a1;
    while (1)
    {
      v8 = *(*(v19 + 48) + v4);
      if (v8 <= 1)
      {
        if (*(*(v19 + 48) + v4))
        {
          v9 = 0x6C6C696863;
        }

        else
        {
          v9 = 0x69746375646F7270;
        }

        if (*(*(v19 + 48) + v4))
        {
          v10 = 0xE500000000000000;
        }

        else
        {
          v10 = 0xEC00000079746976;
        }
      }

      else if (v8 == 2)
      {
        v10 = 0xE500000000000000;
        v9 = 0x7065656C73;
      }

      else
      {
        if (v8 == 3)
        {
          v9 = 0x6E6965626C6C6577;
        }

        else
        {
          v9 = 0x6D6F74737563;
        }

        if (v8 == 3)
        {
          v10 = 0xE900000000000067;
        }

        else
        {
          v10 = 0xE600000000000000;
        }
      }

      if (v7 == 3)
      {
        v11 = 0x6E6965626C6C6577;
      }

      else
      {
        v11 = 0x6D6F74737563;
      }

      if (v7 != 3)
      {
        v5 = 0xE600000000000000;
      }

      if (v7 == 2)
      {
        v11 = 0x7065656C73;
        v5 = 0xE500000000000000;
      }

      if (v7)
      {
        v12 = 0x6C6C696863;
      }

      else
      {
        v12 = 0x69746375646F7270;
      }

      if (!v7)
      {
        v6 = 0xEC00000079746976;
      }

      v13 = v7 <= 1 ? v12 : v11;
      v14 = v7 <= 1 ? v6 : v5;
      if (v9 == v13 && v10 == v14)
      {
        break;
      }

      v15 = sub_23E7DD8E8();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        v5 = 0xE900000000000067;
        v6 = 0xE500000000000000;
        if ((*(v18 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_23E7A38AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_23E7DD8E8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_23E7A3964(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v23 + 48) + v4);
      v7 = v6 == 2 ? 0x6B726F77747261 : 0x44496D616461;
      v8 = v6 == 2 ? 0xE700000000000000 : 0xE600000000000000;
      v9 = *(*(v23 + 48) + v4) ? 0x747369747261 : 0x656C746974;
      v10 = *(*(v23 + 48) + v4) ? 0xE600000000000000 : 0xE500000000000000;
      v11 = *(*(v23 + 48) + v4) <= 1u ? v9 : v7;
      v12 = *(*(v23 + 48) + v4) <= 1u ? v10 : v8;
      v13 = v5 == 2 ? 0x6B726F77747261 : 0x44496D616461;
      v14 = v5 == 2 ? 0xE700000000000000 : 0xE600000000000000;
      v15 = v5 ? 0x747369747261 : 0x656C746974;
      v16 = v5 ? 0xE600000000000000 : 0xE500000000000000;
      v17 = v5 <= 1 ? v15 : v13;
      v18 = v5 <= 1 ? v16 : v14;
      if (v11 == v17 && v12 == v18)
      {
        break;
      }

      v19 = sub_23E7DD8E8();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
        if ((*(v22 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_23E7A3AFC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_23E7A6778(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x23EF13130](v9, a1);
      sub_23E7A67D4(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_23E7A3BE8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_23E7A6134((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;

  return sub_23E7DC9D8();
}

uint64_t sub_23E7A3C34(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350028, &unk_23E7E1DF0);
  result = sub_23E7DD7C8();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_18:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = (*(v5 + 56) + 32 * v23);
      if (a2)
      {
        sub_23E7A6190(v25, v33);
      }

      else
      {
        sub_23E7A6134(v25, v33);
      }

      v26 = *(v8 + 40);
      sub_23E7DD9A8();
      sub_23E7DD398();

      result = sub_23E7DD9C8();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v16) >> 6;
        while (++v18 != v28 || (v27 & 1) == 0)
        {
          v29 = v18 == v28;
          if (v18 == v28)
          {
            v18 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v18);
          if (v30 != -1)
          {
            v19 = __clz(__rbit64(~v30)) + (v18 << 6);
            goto LABEL_10;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v24;
      result = sub_23E7A6190(v33, (*(v8 + 56) + 32 * v19));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_23E7A3F30(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFF8, &qword_23E7E1DC0);
  v36 = a2;
  result = sub_23E7DD7C8();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_23E7A6190(v25, v37);
      }

      else
      {
        sub_23E7A6134(v25, v37);
        sub_23E7DC9D8();
      }

      v26 = *(v8 + 40);
      sub_23E7DD9A8();
      sub_23E7DD398();
      result = sub_23E7DD9C8();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_23E7A6190(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

void *sub_23E7A41E8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350028, &unk_23E7E1DF0);
  v2 = *v0;
  v3 = sub_23E7DD7B8();
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
        v18 = *(*(v2 + 48) + v17);
        sub_23E7A6134(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_23E7A6190(v19, (*(v4 + 56) + 32 * v17));
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

void *sub_23E7A4364()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFF8, &qword_23E7E1DC0);
  v2 = *v0;
  v3 = sub_23E7DD7B8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v22 = 32 * v17;
        sub_23E7A6134(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_23E7A6190(v25, (*(v4 + 56) + v22));
        result = sub_23E7DC9D8();
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

        v1 = v24;
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

uint64_t sub_23E7A4508(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23E7DD6B8() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + v6);
      sub_23E7DD9A8();
      sub_23E7DD398();

      result = sub_23E7DD9C8();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + v3);
        v15 = (v13 + v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 32 * v3);
        v18 = (v16 + 32 * v6);
        if (v3 != v6 || v17 >= v18 + 2)
        {
          v9 = v18[1];
          *v17 = *v18;
          v17[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_23E7A4718(_OWORD *a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_23E7A35A4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_23E7A41E8();
      v9 = v17;
      goto LABEL_8;
    }

    sub_23E7A3C34(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_23E7A35A4(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_23E7DD938();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = (v20[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_1(v21);

    return sub_23E7A6190(a1, v21);
  }

  else
  {

    return sub_23E7A4844(v9, a2, a1, v20);
  }
}

_OWORD *sub_23E7A4844(unint64_t a1, char a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_23E7A6190(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_23E7A48AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF90, &qword_23E7E1CC0);
  v24 = *(v1 - 8);
  v2 = *(v24 + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v3);
  v27 = &v21 - v7;
  v23 = v0;
  v8 = *v0;
  v9 = *(*v0 + 16);
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    v11 = 0;
    v22 = v9 - 2;
    while (1)
    {
      v28 = 0;
      result = MEMORY[0x23EF13B80](&v28, 8);
      v13 = (v28 * v9) >> 64;
      if (v9 > v28 * v9)
      {
        v14 = -v9 % v9;
        if (v14 > v28 * v9)
        {
          do
          {
            v28 = 0;
            result = MEMORY[0x23EF13B80](&v28, 8);
          }

          while (v14 > v28 * v9);
          v13 = (v28 * v9) >> 64;
        }
      }

      v15 = v11 + v13;
      if (__OFADD__(v11, v13))
      {
        break;
      }

      if (v11 != v15)
      {
        v16 = v8[2];
        if (v11 >= v16)
        {
          goto LABEL_19;
        }

        v17 = v8;
        v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
        v18 = v8 + v26;
        v19 = *(v24 + 72);
        v25 = v19 * v11;
        result = sub_23E7A6710(&v18[v19 * v11], v27, &qword_27E34FF90, &qword_23E7E1CC0);
        if (v15 >= v16)
        {
          goto LABEL_20;
        }

        sub_23E7A6710(&v18[v19 * v15], v5, &qword_27E34FF90, &qword_23E7E1CC0);
        result = swift_isUniquelyReferenced_nonNull_native();
        v8 = v17;
        if ((result & 1) == 0)
        {
          result = sub_23E7A59B0(v17);
          v8 = result;
        }

        if (v11 >= v8[2])
        {
          goto LABEL_21;
        }

        v20 = v8 + v26;
        result = sub_23E7A60C4(v5, v8 + v26 + v25);
        if (v15 >= v8[2])
        {
          goto LABEL_22;
        }

        result = sub_23E7A60C4(v27, &v20[v19 * v15]);
        v10 = v22;
        *v23 = v8;
      }

      --v9;
      if (v11++ == v10)
      {
        return result;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

void sub_23E7A4B1C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_23E7A68E0(0, &qword_27E34FF50, 0x277CE65B0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF98, &qword_23E7E1CF0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_23E7A4C10()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 64);
  *(v1 + 64) = v2;
  v4 = v2;
}

size_t sub_23E7A4CBC(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350058, &qword_23E7E1E20);
  v10 = *(type metadata accessor for Manifest() - 8);
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
  v15 = *(type metadata accessor for Manifest() - 8);
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

char *sub_23E7A4E94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350070, &qword_23E7E1E50);
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

size_t sub_23E7A4FA0(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFB0, &qword_23E7E1D50);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF90, &qword_23E7E1CC0) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF90, &qword_23E7E1CC0) - 8);
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