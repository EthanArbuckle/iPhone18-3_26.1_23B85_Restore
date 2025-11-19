unint64_t sub_237FA2D38()
{
  result = qword_280C34AA0;
  if (!qword_280C34AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEE55C8, &qword_238035C28);
    sub_238011FC8(&qword_280C34F58, type metadata accessor for _DeviceActivityData.ActivitySegment);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C34AA0);
  }

  return result;
}

uint64_t _DeviceActivityData.ActivitySegment.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v43 = &v41 - v4;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50C8, &qword_2380357C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v45 = &v41 - v6;
  v7 = sub_238031654();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5208, &qword_238034428);
  v44 = *(v49 - 8);
  v12 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = &v41 - v13;
  v15 = type metadata accessor for _DeviceActivityData.ActivitySegment(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20]();
  v19 = (&v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v19 = xmmword_238033ED0;
  v20 = *(v17 + 28);
  v46 = v8;
  v21 = *(v8 + 56);
  v51 = v20;
  v48 = v7;
  v21(v19 + v20, 1, 1, v7);
  v47 = v15;
  v22 = *(v15 + 32);
  v23 = sub_238031A64();
  v24 = v22;
  (*(*(v23 - 8) + 56))(v19 + v22, 1, 1, v23);
  v26 = a1[3];
  v25 = a1[4];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_237FA3634();
  v27 = v50;
  sub_238032604();
  if (v27)
  {
    v28 = v51;
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    sub_237FA38D0(*v19, v19[1]);
    sub_237FA5750(v19 + v28, &qword_27DEE50C8, &qword_2380357C0);
    return sub_237FA5750(v19 + v24, &qword_27DEE51E0, &qword_2380365F0);
  }

  else
  {
    v41 = v23;
    v50 = v11;
    v30 = v44;
    v29 = v45;
    v55 = 0;
    sub_237FA3688();
    sub_2380323E4();
    v31 = v24;
    v32 = v53;
    v33 = v54;
    sub_237FA38D0(*v19, v19[1]);
    *v19 = v32;
    v19[1] = v33;
    LOBYTE(v53) = 1;
    v19[2] = sub_2380323F4();
    v19[3] = v35;
    LOBYTE(v53) = 2;
    sub_237FA38E4(&qword_280C35070, MEMORY[0x277CC88A8]);
    v36 = v50;
    v37 = v48;
    sub_238032434();
    (*(v46 + 32))(v19 + v47[6], v36, v37);
    LOBYTE(v53) = 3;
    sub_2380323E4();
    sub_237FA39BC(v29, v19 + v51, &qword_27DEE50C8, &qword_2380357C0);
    LOBYTE(v53) = 4;
    sub_237FA38E4(&qword_280C35348, MEMORY[0x277CC9578]);
    v38 = v43;
    sub_2380323E4();
    sub_237FA39BC(v38, v19 + v31, &qword_27DEE51E0, &qword_2380365F0);
    LOBYTE(v53) = 5;
    sub_238032414();
    v39 = v47;
    *(v19 + v47[9]) = v40;
    LOBYTE(v53) = 6;
    *(v19 + v39[10]) = sub_238032424();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5200, &qword_238034420);
    v55 = 7;
    sub_237FA3A24(&qword_280C34A70, &qword_280C34FB0);
    sub_238032434();
    (*(v30 + 8))(v14, v49);
    *(v19 + v47[11]) = v53;
    sub_237FA4CFC(v19, v42, type metadata accessor for _DeviceActivityData.ActivitySegment);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    return sub_237FA4DCC(v19, type metadata accessor for _DeviceActivityData.ActivitySegment);
  }
}

uint64_t sub_237FA35B8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
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

unint64_t sub_237FA3634()
{
  result = qword_280C34F78;
  if (!qword_280C34F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C34F78);
  }

  return result;
}

unint64_t sub_237FA3688()
{
  result = qword_280C35350;
  if (!qword_280C35350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C35350);
  }

  return result;
}

uint64_t sub_237FA36E8()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000026;
    if (v1 != 6)
    {
      v5 = 0xD000000000000012;
    }

    v6 = 0xD000000000000015;
    if (v1 == 4)
    {
      v6 = 0x6369507473726966;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x6F5A64726F636572;
    v3 = 0x65746E4965746164;
    if (v1 != 2)
    {
      v3 = 0x41747365676E6F6CLL;
    }

    if (!*v0)
    {
      v2 = 0xD000000000000012;
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
}

uint64_t _s15ActivitySegmentV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_237FA38D0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_237FA5048(a1, a2);
  }

  return a1;
}

uint64_t sub_237FA38E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s15ActivitySegmentV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_237FA39BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_237FA3A24(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEE5200, &qword_238034420);
    sub_237FA38E4(a2, type metadata accessor for _DeviceActivityData.CategoryActivity);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _DeviceActivityData.CategoryActivity.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51D0, &qword_238034400) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v24 = &v22 - v4;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5370, &qword_238034A88);
  v25 = *(v27 - 8);
  v5 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v22 - v6;
  v8 = type metadata accessor for _DeviceActivityData.CategoryActivity(0);
  v9 = *(*(v8 - 1) + 64);
  v10 = MEMORY[0x28223BE20]();
  v12 = (&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v10 + 20);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF0, &unk_238033980);
  (*(*(v14 - 8) + 56))(v12 + v13, 1, 1, v14);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237FA4018();
  v26 = v7;
  v16 = v28;
  sub_238032604();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_237FA5750(v12 + v13, &qword_27DEE51D0, &qword_238034400);
  }

  else
  {
    v17 = v24;
    LOBYTE(v30) = 0;
    *v12 = sub_2380323F4();
    v12[1] = v18;
    v28 = v18;
    LOBYTE(v30) = 1;
    sub_237FA41C0(&qword_280C34AF0);
    sub_2380323E4();
    sub_237FA39BC(v17, v12 + v13, &qword_27DEE51D0, &qword_238034400);
    LOBYTE(v30) = 2;
    sub_238032414();
    *(v12 + v8[6]) = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5360, &qword_238034A78);
    v29 = 3;
    sub_237FA4210(&qword_280C34A80, &qword_280C34FD8);
    sub_238032434();
    v20 = v25;
    *(v12 + v8[7]) = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5368, &qword_238034A80);
    v29 = 4;
    sub_237FA4B98(&qword_280C34A60, &qword_280C34F88);
    sub_238032434();
    (*(v20 + 8))(v26, v27);
    *(v12 + v8[8]) = v30;
    sub_237FA4C34(v12, v23, type metadata accessor for _DeviceActivityData.CategoryActivity);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_237FA4C9C(v12, type metadata accessor for _DeviceActivityData.CategoryActivity);
  }
}

unint64_t sub_237FA4018()
{
  result = qword_280C34FD0;
  if (!qword_280C34FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C34FD0);
  }

  return result;
}

unint64_t sub_237FA406C()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0xD000000000000015;
  v4 = 0xD000000000000015;
  if (v1 != 3)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E656B6F74;
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

uint64_t storeEnumTagSinglePayload for DeviceActivityCenter.MonitoringError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_237FA41C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEE4FF0, &unk_238033980);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_237FA4210(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEE5360, &qword_238034A78);
    sub_237FDCDF0(a2, type metadata accessor for _DeviceActivityData.ApplicationActivity);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceActivityCenter.MonitoringError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _DeviceActivityData.ApplicationActivity.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51C0, &unk_238034790) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5318, &qword_2380347A8);
  v37 = *(v6 - 8);
  v38 = v6;
  v7 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v35 - v8;
  v10 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20]();
  v14 = (&v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v12 + 20);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF8, &unk_2380343E0);
  v17 = *(*(v16 - 8) + 56);
  v41 = v15;
  v18 = v14;
  v17(v14 + v15, 1, 1, v16);
  v19 = a1[3];
  v20 = a1[4];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_237FA47D8();
  v39 = v9;
  v21 = v40;
  sub_238032604();
  if (v21)
  {
    v24 = v41;
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    sub_237FA5750(v18 + v24, &qword_27DEE51C0, &unk_238034790);
  }

  else
  {
    v40 = v10;
    v23 = v37;
    v22 = v38;
    v49 = 0;
    *v18 = sub_2380323F4();
    v18[1] = v25;
    v48 = 1;
    sub_237FA49CC(&qword_280C34B08);
    sub_2380323E4();
    sub_237FA4A1C(v5, v18 + v41);
    v47 = 2;
    v26 = sub_2380323D4();
    v27 = v23;
    v28 = v40;
    v29 = (v18 + v40[6]);
    *v29 = v26;
    v29[1] = v30;
    v46 = 3;
    sub_238032414();
    *(v18 + v28[7]) = v31;
    v45 = 4;
    *(v18 + v28[8]) = sub_238032424();
    v44 = 5;
    *(v18 + v28[9]) = sub_238032424();
    v43 = 6;
    v32 = v39;
    v33 = sub_238032404();
    (*(v27 + 8))(v32, v22);
    *(v18 + v28[10]) = v33 & 1;
    sub_237FA4A8C(v18, v36);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    return sub_237FA4B3C(v18);
  }
}

unint64_t sub_237FA47D8()
{
  result = qword_280C34FF8;
  if (!qword_280C34FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C34FF8);
  }

  return result;
}

unint64_t sub_237FA482C()
{
  v1 = *v0;
  v2 = 0x6E656B6F74;
  v3 = 0xD000000000000015;
  if (v1 != 5)
  {
    v3 = 0x6574737572547369;
  }

  v4 = 0x664F7265626D756ELL;
  if (v1 == 3)
  {
    v4 = 0xD000000000000015;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000014;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t _s19ApplicationActivityV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_237FA49CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEE4FF8, &unk_2380343E0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_237FA4A1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51C0, &unk_238034790);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_237FA4A8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_237FA4B3C(uint64_t a1)
{
  v2 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237FA4B98(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEE5368, &qword_238034A80);
    sub_237FDCDF0(a2, type metadata accessor for _DeviceActivityData.WebDomainActivity);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_237FA4C34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_237FA4C9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_237FA4CFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_237FA4D64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_237FA4DCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_237FA4E2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_237FA4EA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(v3 + 40);
  sub_2380325B4();
  sub_238031ED4();
  v7 = sub_2380325F4();

  return a3(a1, a2, v7);
}

unint64_t sub_237FA4F28(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2380324E4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_237FA4FE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_237FA5048(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_237FA509C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_237FA5104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v26 = a8;
  v9 = v8;
  v24 = a6;
  v25 = a7;
  v22 = a3;
  v23 = a4;
  v13 = sub_238031994();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20]();
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a5;
  v20 = v9[3];
  v19 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v20);
  v27 = v18;
  (*(v19 + 128))(a1, a2, v22, v23, &v27, v24, v25, v20, v19);
  sub_238000CE8(v17, type metadata accessor for _DeviceActivityData.ActivitySegment, sub_23800CC10, type metadata accessor for _DeviceActivityData.ActivitySegment, v26);
  return (*(v14 + 8))(v17, v13);
}

uint64_t DeviceActivityDataSource.fetchCodableActivitySegment(userAltDSID:deviceIdentifier:segmentInterval:recordName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v59 = a1;
  v9 = v8;
  v55 = a6;
  v56 = a7;
  v57 = a3;
  v58 = a4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54A8, &qword_2380359E0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v54 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v51 - v18;
  MEMORY[0x28223BE20](v17);
  v51 = &v51 - v20;
  v21 = type metadata accessor for _DeviceActivityData.User(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = (&v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = *a5;
  v25 = type metadata accessor for _DeviceActivityData.ActivitySegment(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v28 = 1;
  v61 = a8;
  v62 = v25;
  v52 = v27;
  v53 = v26 + 56;
  (v27)(a8, 1, 1);
  if (a2)
  {
    sub_237FAB488(v24);
    v30 = *v24;
    v29 = v24[1];

    sub_237FAB7D4(v24, type metadata accessor for _DeviceActivityData.User);
    if (v29)
    {
      if (v30 == v59 && v29 == a2)
      {
        v28 = 1;
      }

      else
      {
        v28 = sub_2380324E4();
      }
    }

    else
    {
      v28 = 0;
    }
  }

  v33 = v9[15];
  v32 = v9[16];
  __swift_project_boxed_opaque_existential_1(v9 + 12, v33);
  v34 = v60;
  v35 = (*(v32 + 120))(v33, v32);
  if (v34)
  {

    v37 = v61;
    goto LABEL_21;
  }

  v38 = v35 == v57 && v36 == v58;
  v37 = v61;
  if (v38)
  {

    if ((v28 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v39 = sub_2380324E4();

  if (v28 & v39)
  {
LABEL_20:
    v40 = v9[15];
    v41 = v9[16];
    __swift_project_boxed_opaque_existential_1(v9 + 12, v40);
    v64 = v63;
    (*(v41 + 72))(&v64, v55, v56, v40, v41);
    sub_237FA5750(v37, &qword_27DEE54A8, &qword_2380359E0);
    v42 = v51;
    v52(v51, 0, 1, v62);
    sub_237FA5AE0(v42, v37, &qword_27DEE54A8, &qword_2380359E0);
  }

LABEL_21:
  sub_237FA90E4(v37, v19, &qword_27DEE54A8, &qword_2380359E0);
  v43 = (*(v26 + 48))(v19, 1, v62);
  result = sub_237FA5750(v19, &qword_27DEE54A8, &qword_2380359E0);
  if (v43 == 1 && a2 != 0)
  {
    v46 = v9[15];
    v47 = v9[16];
    __swift_project_boxed_opaque_existential_1(v9 + 12, v46);
    v65 = v63;
    v48 = *(v47 + 88);
    v50 = v47;
    v49 = v54;
    v48(v59, a2, v57, v58, &v65, v55, v56, v46, v50);
    sub_237FA5750(v37, &qword_27DEE54A8, &qword_2380359E0);
    v52(v49, 0, 1, v62);
    return sub_237FA5AE0(v49, v37, &qword_27DEE54A8, &qword_2380359E0);
  }

  return result;
}

uint64_t sub_237FA5750(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_237FA57C4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_238031654();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50C8, &qword_2380357C0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_237FA595C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = sub_238031654();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50C8, &qword_2380357C0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_237FA5AE0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t _DeviceActivityResults.next()@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54A8, &qword_2380359E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = (&v48 - v8);
  v10 = type metadata accessor for _DeviceActivityData.ActivitySegment(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v13 = MEMORY[0x28223BE20](v12);
  v17 = *v2;
  v18 = v2[6];
  if (*v2 >= *(v18 + 16))
  {
    result = (*(*(a1[2] - 8) + 56))(a2, 1, 1);
    v39 = *v2 + 1;
    if (!__OFADD__(*v2, 1))
    {
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_9;
  }

  if ((v17 & 0x8000000000000000) == 0)
  {
    v51 = v16;
    v52 = v13;
    v48 = v15;
    v49 = &v48 - v14;
    v56 = a1;
    v57 = a2;
    v19 = v18 + 16 * v17;
    v20 = *(v19 + 40);
    v55 = *(v19 + 32);
    v21 = v2[10];
    v22 = v2[11];
    v23 = __swift_project_boxed_opaque_existential_1(v2 + 7, v21);
    v24 = v2[1];
    v25 = v2[2];
    v27 = v2[3];
    v26 = v2[4];
    v58 = v2;
    LOBYTE(v60[0]) = *(v2 + 40);
    v53 = *(v22 + 8);
    v54 = v23;

    v47 = v22;
    v50 = v9;
    a1 = 0;
    v53(v24, v25, v27, v26, v60, v55, v20, v21, v47);
LABEL_9:

    v30 = v50;
    v3 = v52;
    if ((*(v51 + 48))(v50, 1, v52) != 1)
    {
      goto LABEL_17;
    }

    sub_237FA5750(v30, &qword_27DEE54A8, &qword_2380359E0);
    result = (*(*(v56[2] - 8) + 56))(v57, 1, 1);
    v2 = v58;
    v39 = *v58 + 1;
    if (!__OFADD__(*v58, 1))
    {
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_13;
  }

  __break(1u);
  swift_once();
  v28 = sub_238031DB4();
  __swift_project_value_buffer(v28, qword_280C36C50);
  v29 = a1;
  v30 = sub_238031D94();
  v31 = sub_2380320F4();

  v32 = os_log_type_enabled(v30, v31);
  v2 = v58;
  if (!v32)
  {
LABEL_13:

    goto LABEL_14;
  }

  v3 = swift_slowAlloc();
  v33 = swift_slowAlloc();
  v59 = a1;
  v60[0] = v33;
  *v3 = 136446210;
  v34 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50E0, &qword_238033EB0);
  v35 = sub_238031EB4();
  v37 = sub_237FDF8EC(v35, v36, v60);

  *(v3 + 4) = v37;
  _os_log_impl(&dword_237FA1000, v30, v31, "Failed to fetch codable activity segment: %{public}s", v3, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  MEMORY[0x2383E5E30](v33, -1, -1);
  MEMORY[0x2383E5E30](v3, -1, -1);

LABEL_14:
  result = (*(*(v56[2] - 8) + 56))(v57, 1, 1);
  v39 = *v2 + 1;
  if (!__OFADD__(*v2, 1))
  {
    goto LABEL_18;
  }

  __break(1u);
LABEL_17:
  v40 = v49;
  sub_237FA608C(v30, v49, type metadata accessor for _DeviceActivityData.ActivitySegment);
  v41 = *(v3 + 44);
  v42 = v56;
  v2 = v58;
  v43 = Array<A>.filterCategoryActivities(with:)(v58 + *(v56 + 12), *(v40 + v41));

  *(v40 + v41) = v43;
  sub_237FAB208(v40, v48, type metadata accessor for _DeviceActivityData.ActivitySegment);
  v44 = v42[2];
  v45 = v57;
  v46 = swift_dynamicCast();
  (*(*(v44 - 8) + 56))(v45, v46 ^ 1u, 1, v44);
  result = sub_237FAB270(v40);
  v39 = *v2 + 1;
  if (!__OFADD__(*v2, 1))
  {
LABEL_18:
    *v2 = v39;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_237FA608C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *Array<A>.filterCategoryActivities(with:)(int64_t a1, uint64_t a2)
{
  v140 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51D0, &qword_238034400);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v142 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v122 = &v120 - v8;
  MEMORY[0x28223BE20](v7);
  v155 = &v120 - v9;
  v127 = type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
  v126 = *(v127 - 8);
  v10 = *(v126 + 64);
  MEMORY[0x28223BE20](v127);
  v12 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  v124 = *(v125 - 8);
  v13 = *(v124 + 64);
  MEMORY[0x28223BE20](v125);
  v15 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for _DeviceActivityData.CategoryActivity(0);
  v137 = *(v149 - 8);
  v16 = *(v137 + 64);
  v17 = MEMORY[0x28223BE20](v149);
  v136 = &v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v141 = &v120 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v120 - v21;
  v133 = sub_238031C44();
  v145 = *(v133 - 8);
  v23 = *(v145 + 64);
  MEMORY[0x28223BE20](v133);
  v144 = &v120 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE53F0, &qword_2380350C8);
  v25 = *(v135 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v135);
  v132 = &v120 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v120 - v29;
  swift_beginAccess();
  v31 = qword_27DEE4D00;

  if (v31 != -1)
  {
    goto LABEL_66;
  }

  while (1)
  {
    v138 = v22;
    v32 = sub_238031CE4();
    v33 = __swift_project_value_buffer(v32, qword_27DEE9550);
    v159 = v32;
    v160 = MEMORY[0x277D265B0];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v158);
    v35 = *(v32 - 8);
    v36 = *(v35 + 16);
    v130 = v33;
    v131 = v32;
    v129 = v36;
    v128 = v35 + 16;
    v36(boxed_opaque_existential_1, v33, v32);
    v37 = sub_238031D34();
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_allocObject();
    v148 = sub_238031CF4();
    v143 = type metadata accessor for DeviceActivityFilter(0);
    v40 = sub_237FA74E0(*(a1 + v143[11]), &qword_27DEE4FF0, &unk_238033980);
    v42 = MEMORY[0x277D84FA0];
    v157 = MEMORY[0x277D84FA0];
    v43 = *(v40 + 16);
    v44 = &off_238033000;
    v151 = a1;
    v45 = v135;
    v139 = v40;
    v147 = v25;
    v154 = v43;
    if (!v43)
    {
      break;
    }

    v22 = v40;
    v46 = 0;
    v152 = (v25 + 8);
    v153 = v25 + 16;
    *&v41 = 136446210;
    v146 = v41;
    v150 = v30;
    while (v46 < *(v22 + 2))
    {
      (*(v25 + 16))(v30, &v22[((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v46], v45);
      v48 = sub_238031D14();
      sub_237FB5F68(&v158, v48, v47);

      ++v46;
      (*v152)(v30, v45);
      if (v154 == v46)
      {
        v42 = v157;
        v44 = &off_238033000;
        goto LABEL_8;
      }
    }

LABEL_65:
    __break(1u);
LABEL_66:
    swift_once();
  }

LABEL_8:
  v157 = v42;
  v49 = *(a1 + v143[16]);
  v22 = (v49 + 56);
  v50 = 1 << *(v49 + 32);
  v51 = -1;
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  v30 = v51 & *(v49 + 56);
  a1 = (v50 + 63) >> 6;
  v152 = (v145 + 8);
  v153 = v145 + 16;
  v154 = v49;

  v52 = 0;
  *&v146 = MEMORY[0x277D84F90];
  if (!v30)
  {
    goto LABEL_13;
  }

  do
  {
LABEL_11:
    while (1)
    {
      v53 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v25 = v145;
      v54 = v144;
      v55 = v133;
      (*(v145 + 16))(v144, *(v154 + 48) + *(v145 + 72) * (v53 | (v52 << 6)), v133);
      v150 = sub_238031C24();
      v56 = v54;
      v58 = v57;
      (*(v25 + 8))(v56, v55);
      v44 = &off_238033000;
      if (v58)
      {
        break;
      }

      if (!v30)
      {
        goto LABEL_13;
      }
    }

    v25 = v150;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      *&v146 = sub_237FB5A94(0, *(v146 + 16) + 1, 1, v146);
    }

    v61 = *(v146 + 16);
    v60 = *(v146 + 24);
    v62 = v61 + 1;
    if (v61 >= v60 >> 1)
    {
      v150 = v61 + 1;
      v134 = v61;
      v65 = sub_237FB5A94((v60 > 1), v61 + 1, 1, v146);
      v62 = v150;
      v61 = v134;
      *&v146 = v65;
    }

    v63 = v146;
    *(v146 + 16) = v62;
    v64 = v63 + 16 * v61;
    *(v64 + 32) = v25;
    *(v64 + 40) = v58;
  }

  while (v30);
  while (1)
  {
LABEL_13:
    v59 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      __break(1u);
      goto LABEL_65;
    }

    if (v59 >= a1)
    {
      break;
    }

    v30 = *&v22[8 * v59];
    ++v52;
    if (v30)
    {
      v52 = v59;
      goto LABEL_11;
    }
  }

  sub_237FA78D4(v146);

  *&v146 = *(v140 + 16);
  if (v146)
  {
    v67 = 0;
    LODWORD(v154) = *(v151 + v143[19]);
    v134 = (*(v137 + 80) + 32) & ~*(v137 + 80);
    v145 = v140 + v134;
    v68 = MEMORY[0x277D84F90];
    v153 = *(v137 + 72);
    v137 = *MEMORY[0x277CF9618];
    v121 = (v147 + 8);
    *&v66 = *(v44 + 417);
    v120 = v66;
    v69 = v149;
    v70 = v138;
    while (1)
    {
      v71 = sub_237FA4D64(v145 + v153 * v67, v70, type metadata accessor for _DeviceActivityData.CategoryActivity);
      if ((v154 & 1) == 0)
      {
        v87 = *v70;
        v88 = v70[1];
        if (v87 == sub_238031EA4() && v88 == v89)
        {

          goto LABEL_26;
        }

        v91 = sub_2380324E4();

        if (v91)
        {
          goto LABEL_26;
        }
      }

      v150 = v68;
      MEMORY[0x28223BE20](v71);
      *(&v120 - 2) = v70;
      v73 = sub_237FA7944(sub_237FE006C, (&v120 - 2), v72);
      v156 = 0.0;
      v74 = v151;
      v75 = sub_237FA7A9C(v151, v73 & 1, &v156, *(v70 + v69[7]));
      v76 = sub_237FA9424(v74, v73 & 1, &v156, *(v70 + v69[8]));
      v152 = v75;
      v77 = v75[2];
      v78 = v76[2];
      if ((v73 & 1) != 0 || (!v77 ? (v79 = v78 == 0) : (v79 = 0), !v79 || DeviceActivityFilter.includesAllActivity.getter()))
      {
        v80 = v156;
        v81 = *(v70 + *(v149 + 24));
        v147 = v76;
        if (v156 > 0.0)
        {
          if (v77)
          {
            v82 = *(v125 + 28);
            v83 = v152 + ((*(v124 + 80) + 32) & ~*(v124 + 80));
            v84 = *(v124 + 72);
            v85 = 0.0;
            do
            {
              sub_237FA4D64(v83, v15, type metadata accessor for _DeviceActivityData.ApplicationActivity);
              v86 = *&v15[v82];
              sub_237FA4E2C(v15, type metadata accessor for _DeviceActivityData.ApplicationActivity);
              v85 = v85 + v86;
              v83 += v84;
              v77 = (v77 - 1);
            }

            while (v77);
            if (!v78)
            {
LABEL_51:
              v96 = v81 - v80;
              if (v85 > v81 - v80)
              {
                v96 = v85;
              }

              if (v81 >= v96)
              {
                v81 = v96;
              }

              goto LABEL_55;
            }
          }

          else
          {
            v85 = 0.0;
            if (!v78)
            {
              goto LABEL_51;
            }
          }

          v92 = *(v127 + 24);
          v93 = v147 + ((*(v126 + 80) + 32) & ~*(v126 + 80));
          v94 = *(v126 + 72);
          do
          {
            sub_237FA4D64(v93, v12, type metadata accessor for _DeviceActivityData.WebDomainActivity);
            v95 = *&v12[v92];
            sub_237FA4E2C(v12, type metadata accessor for _DeviceActivityData.WebDomainActivity);
            v85 = v85 + v95;
            v93 += v94;
            --v78;
          }

          while (v78);
          goto LABEL_51;
        }

LABEL_55:
        v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF0, &unk_238033980);
        v98 = *(v97 - 8);
        v144 = *(v98 + 56);
        v143 = (v98 + 56);
        (v144)(v155, 1, 1, v97);
        v140 = v97;
        if ((v154 & 1) == 0)
        {
          v99 = v131;
          v159 = v131;
          v160 = MEMORY[0x277D265B0];
          v100 = __swift_allocate_boxed_opaque_existential_1(&v158);
          v129(v100, v130, v99);
          v101 = sub_238031D84();
          v102 = *(v101 + 48);
          v103 = *(v101 + 52);
          swift_allocObject();

          v104 = sub_238031D44();
          v105 = *v70;
          v106 = v70[1];
          v107 = v132;
          sub_238031D64();
          v123 = v104;
          v108 = v135;
          sub_238031C54();
          v109 = v122;
          sub_238031C64();

          (*v121)(v107, v108);
          v110 = v155;
          sub_237FA5750(v155, &qword_27DEE51D0, &qword_238034400);
          (v144)(v109, 0, 1, v97);
          sub_237FA5AE0(v109, v110, &qword_27DEE51D0, &qword_238034400);
        }

        v111 = *v70;
        v112 = v70[1];
        v113 = v142;
        sub_237FA90E4(v155, v142, &qword_27DEE51D0, &qword_238034400);
        v69 = v149;
        v114 = *(v149 + 20);
        v115 = v136;
        (v144)(&v136[v114], 1, 1, v140);
        *v115 = v111;
        v115[1] = v112;

        sub_237FAA864(v113, v115 + v114);
        *(v115 + v69[6]) = v81;
        v158 = v152;

        sub_237FAA8D4(&v158);

        *(v115 + v69[7]) = v158;
        v158 = v147;

        sub_237FAAF84(&v158);
        v68 = v150;

        sub_237FA5750(v142, &qword_27DEE51D0, &qword_238034400);
        *(v115 + v69[8]) = v158;
        sub_237FA93BC(v115, v141, type metadata accessor for _DeviceActivityData.CategoryActivity);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v70 = v138;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v68 = sub_237FAB1E0(0, v68[2] + 1, 1, v68);
        }

        v118 = v68[2];
        v117 = v68[3];
        if (v118 >= v117 >> 1)
        {
          v68 = sub_237FAB1E0(v117 > 1, v118 + 1, 1, v68);
        }

        sub_237FA5750(v155, &qword_27DEE51D0, &qword_238034400);
        v68[2] = v118 + 1;
        sub_237FA93BC(v141, v68 + v134 + v118 * v153, type metadata accessor for _DeviceActivityData.CategoryActivity);
        goto LABEL_26;
      }

      v69 = v149;
      v68 = v150;
LABEL_26:
      ++v67;
      sub_237FA4E2C(v70, type metadata accessor for _DeviceActivityData.CategoryActivity);
      if (v67 == v146)
      {
        goto LABEL_63;
      }
    }
  }

  v68 = MEMORY[0x277D84F90];
LABEL_63:

  return v68;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_237FA74E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = *(v47 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v46 = v36 - v7;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE53F0, &qword_2380350C8);
  v8 = *(v45 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v36 - v10;
  v12 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v12)
  {
    v43 = v11;
    v36[1] = v3;
    v51 = MEMORY[0x277D84F90];
    sub_23800F134(0, v12, 0);
    v14 = -1 << *(a1 + 32);
    v49 = a1 + 56;
    v50 = v51;
    result = sub_2380321F4();
    v15 = result;
    v16 = v8;
    v17 = 0;
    v41 = v5 + 8;
    v42 = v5 + 16;
    v44 = v16;
    v39 = v5;
    v40 = v16 + 32;
    v37 = a1 + 64;
    v38 = v12;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a1 + 32))
    {
      v20 = v15 >> 6;
      if ((*(v49 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_22;
      }

      v48 = *(a1 + 36);
      v22 = v46;
      v21 = v47;
      (*(v5 + 16))(v46, *(a1 + 48) + *(v5 + 72) * v15, v47);
      sub_238031C54();
      v23 = a1;
      v24 = v43;
      sub_238031C64();
      (*(v5 + 8))(v22, v21);
      v25 = v50;
      v51 = v50;
      v27 = *(v50 + 16);
      v26 = *(v50 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_23800F134(v26 > 1, v27 + 1, 1);
        v25 = v51;
      }

      *(v25 + 16) = v27 + 1;
      v28 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v50 = v25;
      result = (*(v44 + 32))(v25 + v28 + *(v44 + 72) * v27, v24, v45);
      v18 = 1 << *(v23 + 32);
      if (v15 >= v18)
      {
        goto LABEL_23;
      }

      v29 = *(v49 + 8 * v20);
      if ((v29 & (1 << v15)) == 0)
      {
        goto LABEL_24;
      }

      a1 = v23;
      if (v48 != *(v23 + 36))
      {
        goto LABEL_25;
      }

      v30 = v29 & (-2 << (v15 & 0x3F));
      if (v30)
      {
        v18 = __clz(__rbit64(v30)) | v15 & 0x7FFFFFFFFFFFFFC0;
        v19 = v38;
      }

      else
      {
        v31 = v20 << 6;
        v32 = v20 + 1;
        v19 = v38;
        v33 = (v37 + 8 * v20);
        while (v32 < (v18 + 63) >> 6)
        {
          v35 = *v33++;
          v34 = v35;
          v31 += 64;
          ++v32;
          if (v35)
          {
            result = sub_237FC1560(v15, v48, 0);
            v18 = __clz(__rbit64(v34)) + v31;
            goto LABEL_4;
          }
        }

        result = sub_237FC1560(v15, v48, 0);
      }

LABEL_4:
      ++v17;
      v15 = v18;
      v5 = v39;
      if (v17 == v19)
      {
        return v50;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_237FA78D4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_237FB5F68(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_237FA7944(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = (*(a3 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v8)))));
      v14 = v13[1];
      v18[0] = *v13;
      v18[1] = v14;

      v15 = v19(v18);
      if (v3)
      {

        return v17 & 1;
      }

      v16 = v15;

      if (v16)
      {
        break;
      }

      v8 &= v8 - 1;
      v11 = v12;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v17 = 1;
    return v17 & 1;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        v17 = 0;
        return v17 & 1;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_237FA7A9C(uint64_t a1, int a2, double *a3, void (**a4)(char *, uint64_t))
{
  v152 = a4;
  v153 = a3;
  LODWORD(v4) = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51C0, &unk_238034790) - 8) + 64);
  v7 = (MEMORY[0x28223BE20])();
  v165 = &v151 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v161 = &v151 - v9;
  v178 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  *&v151 = *(v178 - 1);
  v10 = *(v151 + 64);
  v11 = MEMORY[0x28223BE20](v178);
  v173 = (&v151 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v181 = &v151 - v13;
  v164 = sub_238031BE4();
  v179 = *(v164 - 8);
  v14 = v179[8];
  v15 = MEMORY[0x28223BE20](v164);
  v170 = &v151 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v172 = &v151 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE53F0, &qword_2380350C8);
  v182 = *(v18 - 8);
  v19 = *(v182 + 8);
  v20 = MEMORY[0x28223BE20](v18);
  v158 = &v151 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v174 = &v151 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = (&v151 - v24);
  swift_beginAccess();
  v26 = qword_27DEE4D00;

  if (v26 != -1)
  {
    goto LABEL_98;
  }

  while (1)
  {
    v27 = sub_238031CE4();
    v28 = __swift_project_value_buffer(v27, qword_27DEE9550);
    v184 = v27;
    v185 = MEMORY[0x277D265B0];
    v29 = __swift_allocate_boxed_opaque_existential_1(&v183);
    v30 = *(v27 - 8);
    v31 = *(v30 + 16);
    v156 = v28;
    v157 = v27;
    v155 = v31;
    v154 = v30 + 16;
    v31(v29, v28, v27);
    v32 = sub_238031D34();
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    v35 = sub_238031CF4();
    v169 = type metadata accessor for DeviceActivityFilter(0);
    v163 = *(a1 + v169[9]);
    v36 = 0;
    v37 = sub_237FA74E0(v163, &qword_27DEE4FF8, &unk_2380343E0);
    v39 = MEMORY[0x277D84FA0];
    v188 = MEMORY[0x277D84FA0];
    v40 = *(v37 + 16);
    v162 = v4;
    v166 = a1;
    v168 = v18;
    v167 = v35;
    v175 = v37;
    if (v40)
    {
      v41 = v37;
      v4 = v40;
      v42 = 0;
      i = v182 + 16;
      v43 = (v182 + 8);
      *&v38 = 136446210;
      v176 = v38;
      v177 = v40;
      while (v42 < *(v41 + 16))
      {
        (*(v182 + 2))(v25, v41 + ((*(v182 + 80) + 32) & ~*(v182 + 80)) + *(v182 + 9) * v42, v18);
        v45 = sub_238031D04();
        sub_237FB5F68(&v183, v45, v44);

        ++v42;
        (*v43)(v25, v18);
        if (v4 == v42)
        {
          v39 = v188;
          a1 = v166;
          goto LABEL_8;
        }
      }

LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

LABEL_8:
    v188 = v39;
    v46 = *(a1 + v169[14]);
    v47 = v46 + 56;
    v48 = 1 << *(v46 + 32);
    v49 = -1;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    v50 = v49 & *(v46 + 56);
    v51 = (v48 + 63) >> 6;
    v177 = (v179 + 2);
    *&v176 = v179 + 1;
    v160 = v46;

    v18 = 0;
    for (i = MEMORY[0x277D84F90]; v50; *(v61 + 5) = v25)
    {
LABEL_11:
      while (1)
      {
        v52 = __clz(__rbit64(v50));
        v50 &= v50 - 1;
        v53 = v179;
        v54 = v172;
        v55 = v164;
        (v179[2])(v172, *(v160 + 48) + v179[9] * (v52 | (v18 << 6)), v164);
        a1 = sub_238031BC4();
        v25 = v56;
        (v53[1])(v54, v55);
        if (v25)
        {
          break;
        }

        if (!v50)
        {
          goto LABEL_13;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        i = sub_237FB5A94(0, *(i + 2) + 1, 1, i);
      }

      v59 = *(i + 2);
      v58 = *(i + 3);
      if (v59 >= v58 >> 1)
      {
        i = sub_237FB5A94((v58 > 1), v59 + 1, 1, i);
      }

      v60 = i;
      *(i + 2) = v59 + 1;
      v61 = &v60[16 * v59];
      *(v61 + 4) = a1;
    }

LABEL_13:
    v4 = v166;
    while (1)
    {
      v57 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      if (v57 >= v51)
      {
        break;
      }

      v50 = *(v47 + 8 * v57);
      ++v18;
      if (v50)
      {
        v18 = v57;
        goto LABEL_11;
      }
    }

    sub_237FA78D4(i);

    v25 = sub_237FA74E0(*(v4 + v169[10]), &qword_27DEE4FF8, &unk_2380343E0);
    v63 = MEMORY[0x277D84FA0];
    v187 = MEMORY[0x277D84FA0];
    v172 = *(v25 + 2);
    if (!v172)
    {
      break;
    }

    v64 = 0;
    i = v182 + 16;
    v65 = (v182 + 8);
    *&v62 = 136446210;
    v171 = v62;
    v18 = v168;
    v66 = v174;
    v4 = v172;
    while (v64 < *(v25 + 2))
    {
      (*(v182 + 2))(v66, v25 + ((*(v182 + 80) + 32) & ~*(v182 + 80)) + *(v182 + 9) * v64, v18);
      v68 = sub_238031D04();
      sub_237FB5F68(&v183, v68, v67);

      ++v64;
      (*v65)(v66, v18);
      if (v4 == v64)
      {
        v63 = v187;
        v4 = v166;
        goto LABEL_30;
      }
    }

LABEL_97:
    __break(1u);
LABEL_98:
    swift_once();
  }

LABEL_30:

  v187 = v63;
  v69 = *(v4 + v169[15]);
  v72 = *(v69 + 56);
  v71 = v69 + 56;
  v70 = v72;
  v73 = 1 << *(*(v4 + v169[15]) + 32);
  v74 = -1;
  if (v73 < 64)
  {
    v74 = ~(-1 << v73);
  }

  v75 = v74 & v70;
  v76 = (v73 + 63) >> 6;
  i = *(v4 + v169[15]);

  a1 = 0;
  v175 = MEMORY[0x277D84F90];
  while (v75)
  {
    v4 = v36;
LABEL_40:
    v78 = __clz(__rbit64(v75));
    v75 &= v75 - 1;
    v79 = v179;
    v80 = v170;
    v81 = v164;
    (v179[2])(v170, *(i + 6) + v179[9] * (v78 | (a1 << 6)), v164);
    v18 = sub_238031BC4();
    v83 = v82;
    (v79[1])(v80, v81);
    v36 = v4;
    if (v83)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v175 = sub_237FB5A94(0, *(v175 + 2) + 1, 1, v175);
      }

      v4 = *(v175 + 2);
      v84 = *(v175 + 3);
      if (v4 >= v84 >> 1)
      {
        v175 = sub_237FB5A94((v84 > 1), v4 + 1, 1, v175);
      }

      v85 = v175;
      *(v175 + 2) = v4 + 1;
      v86 = &v85[16 * v4];
      *(v86 + 4) = v18;
      *(v86 + 5) = v83;
    }
  }

  v25 = &off_238033000;
  while (1)
  {
    v77 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      goto LABEL_95;
    }

    if (v77 >= v76)
    {
      break;
    }

    v75 = *(v71 + 8 * v77);
    ++a1;
    if (v75)
    {
      v4 = v36;
      a1 = v77;
      goto LABEL_40;
    }
  }

  sub_237FA78D4(v175);

  v177 = v152[2];
  if (v177)
  {
    v88 = 0;
    v159 = (*(v151 + 80) + 32) & ~*(v151 + 80);
    *&v176 = v152 + v159;
    v179 = MEMORY[0x277D84F90];
    v152 = (v182 + 8);
    i = *(v151 + 72);
    *&v87 = 136446210;
    v151 = v87;
    v89 = v162;
    v90 = v166;
    v91 = v161;
    v92 = v181;
    do
    {
      v93 = sub_237FA4D64(v176 + i * v88, v92, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      if (v89 & 1) != 0 || !*(v163 + 16) && !*(v160 + 16) && !*(*(v90 + v169[11]) + 16) && !*(*(v90 + v169[16]) + 16) && !*(*(v90 + v169[12]) + 16) && !*(*(v90 + v169[17]) + 16) || (MEMORY[0x28223BE20](v93), *(&v151 - 2) = v92, (sub_237FA7944(sub_237FDFF78, (&v151 - 2), v94)))
      {
        v95 = v187;
        v97 = *v92;
        v96 = v92[1];
        v98 = *(v187 + 16);
        v182 = v88;
        if (v98 && (v99 = *(v187 + 40), sub_2380325B4(), sub_238031ED4(), v100 = sub_2380325F4(), v101 = -1 << *(v95 + 32), v102 = v100 & ~v101, ((*(v95 + 56 + ((v102 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v102) & 1) != 0))
        {
          v103 = ~v101;
          while (1)
          {
            v104 = (*(v95 + 48) + 16 * v102);
            v105 = *v104 == v97 && v104[1] == v96;
            if (v105 || (sub_2380324E4() & 1) != 0)
            {
              break;
            }

            v102 = (v102 + 1) & v103;
            if (((*(v95 + 56 + ((v102 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v102) & 1) == 0)
            {
              goto LABEL_67;
            }
          }

          v92 = v181;
          v88 = v182;
          *v153 = *&v181[v178[7]] + *v153;
        }

        else
        {
LABEL_67:
          v106 = *(v90 + v169[19]);
          v92 = v181;
          if (v106 & 1) == 0 && ((v107 = &v181[v178[6]], (v108 = *(v107 + 1)) == 0) || (*v107 == v97 ? (v109 = v108 == v96) : (v109 = 0), v109 || (sub_2380324E4())) && *(v92 + v178[7]) <= 0.0)
          {
            v88 = v182;
          }

          else
          {
            v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF8, &unk_2380343E0);
            v111 = *(v110 - 8);
            v175 = *(v111 + 56);
            v174 = (v111 + 56);
            (v175)(v91, 1, 1, v110);
            if (v106)
            {
              v112 = v91;
              v113 = v110;
              v172 = v36;
            }

            else
            {
              v114 = v157;
              v184 = v157;
              v185 = MEMORY[0x277D265B0];
              v115 = __swift_allocate_boxed_opaque_existential_1(&v183);
              v155(v115, v156, v114);
              v116 = sub_238031D84();
              v117 = *(v116 + 48);
              v118 = *(v116 + 52);
              swift_allocObject();

              v119 = sub_238031D44();
              v120 = v158;
              sub_238031D54();
              if (v36)
              {
                v112 = v91;
                if (qword_280C353A0 != -1)
                {
                  swift_once();
                }

                v113 = v110;
                v121 = sub_238031DB4();
                __swift_project_value_buffer(v121, qword_280C36C80);
                v122 = v36;
                v123 = sub_238031D94();
                v124 = sub_2380320F4();

                if (os_log_type_enabled(v123, v124))
                {
                  v125 = swift_slowAlloc();
                  v172 = v119;
                  v126 = v125;
                  *&v171 = swift_slowAlloc();
                  v183 = v171;
                  *v126 = v151;
                  v186 = v36;
                  v127 = v36;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50E0, &qword_238033EB0);
                  v128 = sub_238031EB4();
                  v130 = sub_237FDF8EC(v128, v129, &v183);

                  *(v126 + 4) = v130;
                  _os_log_impl(&dword_237FA1000, v123, v124, "Failed to encode application: %{public}s", v126, 0xCu);
                  v131 = v171;
                  __swift_destroy_boxed_opaque_existential_1Tm(v171);
                  MEMORY[0x2383E5E30](v131, -1, -1);
                  MEMORY[0x2383E5E30](v126, -1, -1);
                }

                else
                {
                }

                v172 = 0;
              }

              else
              {
                v172 = 0;
                v132 = v168;
                sub_238031C54();
                v133 = v165;
                sub_238031C64();

                (*v152)(v120, v132);
                sub_237FA5750(v91, &qword_27DEE51C0, &unk_238034790);
                v134 = v91;
                v113 = v110;
                (v175)(v133, 0, 1, v110);
                v112 = v134;
                sub_237FA5AE0(v133, v134, &qword_27DEE51C0, &unk_238034790);
              }

              v92 = v181;
            }

            v135 = v112;
            v136 = v165;
            sub_237FA90E4(v135, v165, &qword_27DEE51C0, &unk_238034790);
            v137 = v178;
            v138 = v178[5];
            v139 = (v92 + v178[6]);
            *&v171 = *v139;
            v140 = v92;
            v141 = v139[1];
            v142 = *(v140 + v178[7]);
            v143 = *(v140 + v178[8]);
            v144 = *(v140 + v178[9]);
            LODWORD(v170) = *(v140 + v178[10]);
            v145 = v173;
            (v175)(v173 + v138, 1, 1, v113);
            v146 = (v145 + v137[6]);
            *v145 = v97;
            v145[1] = v96;

            sub_237FA39BC(v136, v145 + v138, &qword_27DEE51C0, &unk_238034790);
            *v146 = v171;
            v146[1] = v141;
            *(v145 + v137[7]) = v142;
            *(v145 + v137[8]) = v143;
            *(v145 + v137[9]) = v144;
            *(v145 + v137[10]) = v170;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v179 = sub_237FA914C(0, v179[2] + 1, 1, v179);
            }

            v89 = v162;
            v88 = v182;
            v148 = v179[2];
            v147 = v179[3];
            v90 = v166;
            v91 = v161;
            v36 = v172;
            if (v148 >= v147 >> 1)
            {
              v179 = sub_237FA914C(v147 > 1, v148 + 1, 1, v179);
            }

            sub_237FA5750(v91, &qword_27DEE51C0, &unk_238034790);
            v149 = v179;
            v179[2] = v148 + 1;
            sub_237FA93BC(v173, v149 + v159 + v148 * i, type metadata accessor for _DeviceActivityData.ApplicationActivity);
            v92 = v181;
          }
        }
      }

      v88 = (v88 + 1);
      sub_237FA4E2C(v92, type metadata accessor for _DeviceActivityData.ApplicationActivity);
    }

    while (v88 != v177);
  }

  else
  {
    v179 = MEMORY[0x277D84F90];
  }

  return v179;
}

uint64_t sub_237FA90E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

size_t sub_237FA9174(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t sub_237FA9354(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_237FA93BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_237FA9424(int64_t a1, int a2, double *a3, uint64_t a4)
{
  v124 = a4;
  v130 = a3;
  v132 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51B0, &qword_2380343D0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v133 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v147 = &v121 - v9;
  v141 = type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
  v123 = *(v141 - 1);
  v10 = *(v123 + 64);
  v11 = MEMORY[0x28223BE20](v141);
  v140 = (&v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v136 = (&v121 - v13);
  v144 = sub_238031CC4();
  v145 = *(v144 - 8);
  v14 = *(v145 + 8);
  v15 = MEMORY[0x28223BE20](v144);
  *&v131 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  *&v135 = &v121 - v17;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE53F0, &qword_2380350C8);
  v18 = *(v148 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v148);
  v129 = &v121 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = (&v121 - v23);
  MEMORY[0x28223BE20](v22);
  v26 = &v121 - v25;
  swift_beginAccess();
  v27 = qword_27DEE4D00;

  if (v27 != -1)
  {
    goto LABEL_72;
  }

  while (1)
  {
    v28 = sub_238031CE4();
    v29 = __swift_project_value_buffer(v28, qword_27DEE9550);
    v156 = v28;
    v157 = MEMORY[0x277D265B0];
    v30 = __swift_allocate_boxed_opaque_existential_1(&v155);
    v31 = *(v28 - 8);
    v32 = *(v31 + 16);
    v127 = v29;
    v128 = v28;
    v126 = v32;
    v125 = v31 + 16;
    v32(v30, v29, v28);
    v33 = sub_238031D34();
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    swift_allocObject();
    v36 = sub_238031CF4();
    v37 = type metadata accessor for DeviceActivityFilter(0);
    v38 = *(v37 + 48);
    v138 = a1;
    v122 = *(a1 + v38);
    v39 = sub_237FA74E0(v122, &qword_27DEE4FE8, &unk_238035410);
    v154 = MEMORY[0x277D84FA0];
    v41 = *(v39 + 16);
    v149 = v36;
    v150 = v18;
    v146 = v37;
    v137 = v24;
    v139 = v39;
    v152 = v41;
    if (v41)
    {
      v42 = v39;
      v43 = 0;
      v151 = (v18 + 16);
      *&v40 = 136446210;
      v143 = v40;
      a1 = v148;
      while (v43 < *(v42 + 16))
      {
        (*(v18 + 16))(v26, v42 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v43, a1);
        v45 = sub_238031D24();
        sub_237FB5F68(&v155, v45, v44);

        ++v43;
        (*(v18 + 8))(v26, a1);
        if (v152 == v43)
        {
          v46 = v154;
          v37 = v146;
          goto LABEL_9;
        }
      }

LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v46 = MEMORY[0x277D84FA0];
LABEL_9:
    v154 = v46;
    v47 = *(v138 + *(v37 + 68));
    v48 = v47 + 56;
    v49 = 1 << *(v47 + 32);
    v50 = -1;
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    v51 = v50 & *(v47 + 56);
    a1 = (v49 + 63) >> 6;
    *&v143 = v145 + 16;
    v142 = v145 + 8;
    v134 = v47;

    v52 = 0;
    v152 = MEMORY[0x277D84F90];
    if (!v51)
    {
      goto LABEL_14;
    }

    do
    {
LABEL_12:
      while (1)
      {
        v53 = __clz(__rbit64(v51));
        v51 &= v51 - 1;
        v24 = v145;
        v54 = v135;
        v55 = v144;
        (*(v145 + 2))(v135, *(v134 + 48) + *(v145 + 9) * (v53 | (v52 << 6)), v144);
        v56 = sub_238031CA4();
        v26 = v57;
        v24[1](v54, v55);
        v18 = v150;
        if (v26)
        {
          break;
        }

        if (!v51)
        {
          goto LABEL_14;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v152 = sub_237FB5A94(0, *(v152 + 2) + 1, 1, v152);
      }

      v60 = *(v152 + 2);
      v59 = *(v152 + 3);
      if (v60 >= v59 >> 1)
      {
        v152 = sub_237FB5A94((v59 > 1), v60 + 1, 1, v152);
      }

      v61 = v152;
      *(v152 + 2) = v60 + 1;
      v62 = &v61[16 * v60];
      *(v62 + 4) = v56;
      *(v62 + 5) = v26;
      v18 = v150;
    }

    while (v51);
    while (1)
    {
LABEL_14:
      v58 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      if (v58 >= a1)
      {
        break;
      }

      v51 = *(v48 + 8 * v58);
      ++v52;
      if (v51)
      {
        v52 = v58;
        goto LABEL_12;
      }
    }

    sub_237FA78D4(v152);

    v63 = v146;
    v26 = sub_237FA74E0(*(v138 + v146[13]), &qword_27DEE4FE8, &unk_238035410);
    v65 = MEMORY[0x277D84FA0];
    v153 = MEMORY[0x277D84FA0];
    v152 = *(v26 + 16);
    if (!v152)
    {
      break;
    }

    v66 = 0;
    v151 = (v18 + 16);
    *&v64 = 136446210;
    v135 = v64;
    a1 = v148;
    v67 = v137;
    while (v66 < *(v26 + 16))
    {
      (*(v18 + 16))(v67, v26 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v66, a1);
      v69 = sub_238031D24();
      sub_237FB5F68(&v155, v69, v68);

      ++v66;
      (*(v18 + 8))(v67, a1);
      if (v152 == v66)
      {
        v65 = v153;
        v63 = v146;
        goto LABEL_30;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    swift_once();
  }

LABEL_30:

  v153 = v65;
  v70 = *(v138 + v63[18]);
  v72 = *(v70 + 56);
  a1 = v70 + 56;
  v71 = v72;
  v73 = 1 << *(*(v138 + v63[18]) + 32);
  v74 = -1;
  if (v73 < 64)
  {
    v74 = ~(-1 << v73);
  }

  v18 = v74 & v71;
  v75 = (v73 + 63) >> 6;
  v152 = *(v138 + v63[18]);

  v26 = 0;
  v151 = MEMORY[0x277D84F90];
  if (!v18)
  {
    goto LABEL_35;
  }

  do
  {
LABEL_33:
    while (1)
    {
      v76 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v24 = v145;
      v77 = v131;
      v78 = v144;
      (*(v145 + 2))(v131, *(v152 + 6) + *(v145 + 9) * (v76 | (v26 << 6)), v144);
      v79 = sub_238031CA4();
      v81 = v80;
      v24[1](v77, v78);
      if (v81)
      {
        break;
      }

      if (!v18)
      {
        goto LABEL_35;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v151 = sub_237FB5A94(0, *(v151 + 2) + 1, 1, v151);
    }

    v84 = *(v151 + 2);
    v83 = *(v151 + 3);
    if (v84 >= v83 >> 1)
    {
      v151 = sub_237FB5A94((v83 > 1), v84 + 1, 1, v151);
    }

    v85 = v151;
    *(v151 + 2) = v84 + 1;
    v86 = &v85[16 * v84];
    *(v86 + 4) = v79;
    *(v86 + 5) = v81;
  }

  while (v18);
  while (1)
  {
LABEL_35:
    v82 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      goto LABEL_69;
    }

    if (v82 >= v75)
    {
      break;
    }

    v18 = *(a1 + 8 * v82);
    ++v26;
    if (v18)
    {
      v26 = v82;
      goto LABEL_33;
    }
  }

  sub_237FA78D4(v151);

  v88 = *(v124 + 16);
  if (v88)
  {
    v137 = (*(v123 + 80) + 32) & ~*(v123 + 80);
    v89 = v124 + v137;
    v152 = *(v123 + 72);
    v90 = MEMORY[0x277D84F90];
    *&v135 = v150 + 8;
    *&v87 = 136446210;
    v131 = v87;
    v91 = v132;
    v92 = v138;
    v93 = v136;
    v151 = "mber";
    do
    {
      sub_237FA4D64(v89, v93, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      v95 = *v93;
      v94 = v93[1];
      v96 = sub_238031F04();
      if ((v96 & 1) == 0)
      {
        if (v91 & 1) != 0 || !*(*(v92 + v146[9]) + 16) && !*(*(v92 + v146[14]) + 16) && !*(*(v92 + v146[11]) + 16) && !*(*(v92 + v146[16]) + 16) && !*(v122 + 16) && !*(v134 + 16) || (MEMORY[0x28223BE20](v96), *(&v121 - 2) = v93, v96 = sub_237FA7944(sub_237FE0050, (&v121 - 4), v97), (v96))
        {
          MEMORY[0x28223BE20](v96);
          *(&v121 - 2) = v93;
          if (sub_237FA7944(sub_237FDFF1C, (&v121 - 4), v98))
          {
            *v130 = *(v93 + v141[6]) + *v130;
          }

          else
          {
            v99 = v92;
            v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE8, &unk_238035410);
            v101 = *(v100 - 8);
            v150 = *(v101 + 56);
            v145 = (v101 + 56);
            v150(v147, 1, 1, v100);
            v102 = *(v99 + v146[19]);
            *&v143 = v90;
            v142 = v95;
            v139 = v100;
            if ((v102 & 1) == 0)
            {
              v103 = v128;
              v156 = v128;
              v157 = MEMORY[0x277D265B0];
              v104 = __swift_allocate_boxed_opaque_existential_1(&v155);
              v126(v104, v127, v103);
              v105 = sub_238031D84();
              v106 = *(v105 + 48);
              v107 = *(v105 + 52);
              swift_allocObject();

              sub_238031D44();
              v108 = v129;
              sub_238031D74();
              v109 = v148;
              sub_238031C54();
              v110 = v133;
              sub_238031C64();

              (*v135)(v108, v109);
              v111 = v147;
              sub_237FA5750(v147, &qword_27DEE51B0, &qword_2380343D0);
              v150(v110, 0, 1, v100);
              sub_237FA5AE0(v110, v111, &qword_27DEE51B0, &qword_2380343D0);
              v93 = v136;
            }

            v112 = v133;
            sub_237FA90E4(v147, v133, &qword_27DEE51B0, &qword_2380343D0);
            v113 = v141;
            v114 = v141[5];
            v115 = *(v93 + v141[6]);
            v116 = *(v93 + v141[7]);
            v117 = v140;
            v150(v140 + v114, 1, 1, v139);
            *v117 = v142;
            v117[1] = v94;

            sub_237FA39BC(v112, v117 + v114, &qword_27DEE51B0, &qword_2380343D0);
            *(v117 + v113[6]) = v115;
            *(v117 + v113[7]) = v116;
            v90 = v143;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v90 = sub_237FAD5A4(0, v90[2] + 1, 1, v90);
            }

            v91 = v132;
            v92 = v138;
            v119 = v90[2];
            v118 = v90[3];
            if (v119 >= v118 >> 1)
            {
              v90 = sub_237FAD5A4(v118 > 1, v119 + 1, 1, v90);
            }

            sub_237FA5750(v147, &qword_27DEE51B0, &qword_2380343D0);
            v90[2] = v119 + 1;
            sub_237FA93BC(v140, v90 + v137 + v119 * v152, type metadata accessor for _DeviceActivityData.WebDomainActivity);
            v93 = v136;
          }
        }
      }

      sub_237FA4E2C(v93, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      v89 += v152;
      --v88;
    }

    while (v88);
  }

  else
  {
    v90 = MEMORY[0x277D84F90];
  }

  return v90;
}

uint64_t sub_237FAA864(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51D0, &qword_238034400);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_237FAA928(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t), uint64_t (*a4)(void *))
{
  v7 = *(a2(0) - 8);
  v8 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = a3(v8);
  }

  v9 = *(v8 + 16);
  v11[0] = v8 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v11[1] = v9;
  result = a4(v11);
  *a1 = v8;
  return result;
}

size_t sub_237FAA9EC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t sub_237FAAC14(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_2380324B4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
        v6 = sub_238031FD4();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for _DeviceActivityData.ApplicationActivity(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_237FCF178(v8, v9, a1, v4);
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
    return sub_237FAAD40(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_237FAAD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v30 - v14;
  result = MEMORY[0x28223BE20](v13);
  v19 = &v30 - v18;
  v32 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v17 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v23 = -v21;
    v24 = a1 - a3;
    v37 = v20;
    v31 = v21;
    v25 = v20 + v21 * a3;
LABEL_5:
    v35 = v22;
    v36 = a3;
    v33 = v25;
    v34 = v24;
    while (1)
    {
      sub_237FA4CFC(v25, v19, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      sub_237FA4CFC(v22, v15, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      v26 = *(v8 + 28);
      v27 = *&v19[v26];
      v28 = *&v15[v26];
      sub_237FA4DCC(v15, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      result = sub_237FA4DCC(v19, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      if (v28 >= v27)
      {
LABEL_4:
        a3 = v36 + 1;
        v22 = v35 + v31;
        v24 = v34 - 1;
        v25 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      sub_237FA9354(v25, v12, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_237FA9354(v12, v22, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      v22 += v23;
      v25 += v23;
      if (__CFADD__(v24++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_237FAB024(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2380324B4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
        v6 = sub_238031FD4();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for _DeviceActivityData.WebDomainActivity(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_237FCFAA0(v8, v9, a1, v4, type metadata accessor for _DeviceActivityData.WebDomainActivity, type metadata accessor for _DeviceActivityData.WebDomainActivity, type metadata accessor for _DeviceActivityData.WebDomainActivity, type metadata accessor for _DeviceActivityData.WebDomainActivity, sub_237FDC798);
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
    return sub_237FAD5CC(0, v2, 1, a1, type metadata accessor for _DeviceActivityData.WebDomainActivity, type metadata accessor for _DeviceActivityData.WebDomainActivity, type metadata accessor for _DeviceActivityData.WebDomainActivity);
  }

  return result;
}

uint64_t sub_237FAB208(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_237FAB270(uint64_t a1)
{
  v2 = type metadata accessor for _DeviceActivityData.ActivitySegment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _DeviceActivityData.ActivitySegment.dateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _DeviceActivityData.ActivitySegment(0) + 24);
  v4 = sub_238031654();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t _DeviceActivityData.ActivitySegment.categoryActivities.getter()
{
  v1 = *(v0 + *(type metadata accessor for _DeviceActivityData.ActivitySegment(0) + 44));
}

uint64_t _DeviceActivityData.CategoryActivity.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_237FAB488@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54E8, &qword_2380358A0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15[-v8];
  if (qword_280C35270 != -1)
  {
    v14 = v7;
    swift_once();
    v7 = v14;
  }

  v10 = __swift_project_value_buffer(v7, qword_280C35278);
  swift_beginAccess();
  sub_237FA90E4(v10, v9, &qword_27DEE54E8, &qword_2380358A0);
  v11 = type metadata accessor for _DeviceActivityData.User(0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return sub_237FAB70C(v9, a1, type metadata accessor for _DeviceActivityData.User);
  }

  sub_237FA5750(v9, &qword_27DEE54E8, &qword_2380358A0);
  DeviceActivityDataSource.localUser.getter(a1);
  sub_237FFD060(a1, v6, type metadata accessor for _DeviceActivityData.User);
  (*(v12 + 56))(v6, 0, 1, v11);
  swift_beginAccess();
  sub_237FA39BC(v6, v10, &qword_27DEE54E8, &qword_2380358A0);
  return swift_endAccess();
}

uint64_t sub_237FAB70C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_237FAB774(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_237FAB7D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DeviceActivityDataStore.localDeviceIdentifier()()
{
  v2 = sub_238031AB4();
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_238031994();
  v6 = *(v30 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v30);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v0[8];
  [v31 lock];
  v10 = v0[3];
  v11 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v10);
  (*(v11 + 16))(v10, v11);
  v12 = sub_237FABF30(v9);
  if (!v1)
  {
    v11 = v12;
    v10 = v13;
    goto LABEL_9;
  }

  v33 = v1;
  v14 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50E0, &qword_238033EB0);
  if (!swift_dynamicCast() || v32)
  {
LABEL_19:
    (*(v6 + 8))(v9, v30);

    [v31 unlock];
    goto LABEL_20;
  }

  if (qword_280C353A8 != -1)
  {
    swift_once();
  }

  if (![swift_getObjCClassFromMetadata() isAuthorized])
  {
    if (qword_280C353A0 != -1)
    {
      swift_once();
    }

    v21 = sub_238031DB4();
    __swift_project_value_buffer(v21, qword_280C36C80);
    v22 = sub_238031D94();
    v23 = sub_2380320F4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_237FA1000, v22, v23, "Failed to generate a new identifier because DeviceActivity is unavailable", v24, 2u);
      MEMORY[0x2383E5E30](v24, -1, -1);
    }

    sub_237FAC9F0();
    swift_allocError();
    *v25 = 1;
    swift_willThrow();
    goto LABEL_19;
  }

  sub_238031AA4();
  v11 = sub_238031A74();
  v10 = v15;
  (*(v29 + 8))(v5, v2);

  sub_23800217C(v11, v10, v9);

LABEL_9:
  if (qword_280C353A0 != -1)
  {
    swift_once();
  }

  v16 = sub_238031DB4();
  __swift_project_value_buffer(v16, qword_280C36C80);

  v17 = sub_238031D94();
  v18 = sub_2380320E4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v33 = v20;
    *v19 = 136446210;
    *(v19 + 4) = sub_237FDF8EC(v11, v10, &v33);
    _os_log_impl(&dword_237FA1000, v17, v18, "Local device identifier is %{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x2383E5E30](v20, -1, -1);
    MEMORY[0x2383E5E30](v19, -1, -1);
  }

  (*(v6 + 8))(v9, v30);
  [v31 unlock];
LABEL_20:
  v26 = v11;
  v27 = v10;
  result._object = v27;
  result._countAndFlagsBits = v26;
  return result;
}

uint64_t sub_237FABD7C()
{
  v0 = sub_238031994();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  if (qword_280C353B8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_280C353C0);
  sub_238031904();
  sub_2380318F4();
  v8 = *(v1 + 8);
  v8(v5, v0);
  sub_2380318F4();
  return (v8)(v7, v0);
}

id sub_237FABF30(uint64_t a1)
{
  v3 = v2;
  v5 = sub_238031994();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v1;
  v10 = *(v1 + 64);
  [v10 lock];
  if (qword_280C353A0 != -1)
  {
    swift_once();
  }

  v11 = sub_238031DB4();
  __swift_project_value_buffer(v11, qword_280C36C80);
  v12 = *(v6 + 16);
  v35 = a1;
  v12(v9, a1, v5);
  v13 = sub_238031D94();
  v14 = sub_2380320E4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v33 = v10;
    v16 = v15;
    v32 = swift_slowAlloc();
    v36 = v32;
    *v16 = 136446210;
    sub_238011FC8(&qword_280C35040, MEMORY[0x277CC9260]);
    v17 = sub_2380324C4();
    v19 = v18;
    (*(v6 + 8))(v9, v5);
    v20 = sub_237FDF8EC(v17, v19, &v36);
    v3 = v2;

    *(v16 + 4) = v20;
    _os_log_impl(&dword_237FA1000, v13, v14, "Reading object from URL %{public}s", v16, 0xCu);
    v21 = v32;
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x2383E5E30](v21, -1, -1);
    v22 = v16;
    v10 = v33;
    MEMORY[0x2383E5E30](v22, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  v23 = *(v34 + 56);
  sub_238031964();
  v24 = sub_238031E74();

  v25 = [v23 fileExistsAtPath_];

  if (!v25)
  {
    sub_237FAC9F0();
    swift_allocError();
    *v30 = 0;
    swift_willThrow();
    goto LABEL_10;
  }

  v26 = sub_2380319A4();
  if (v3)
  {
LABEL_10:
    [v10 unlock];
    return v25;
  }

  v28 = v26;
  v29 = v27;
  v25 = sub_237FAC2C0(v26, v27);
  sub_237FA5048(v28, v29);
  [v10 unlock];
  return v25;
}

uint64_t sub_237FAC2C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_238031774();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_238031764();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE55F0, &qword_238035C58);
  sub_237FAC418(&qword_280C350F0);
  sub_238031754();
  if (v2)
  {
    goto LABEL_6;
  }

  if (!*(v13 + 16) || (v7 = sub_237FA4E8C(0x65756C6176, 0xE500000000000000), (v8 & 1) == 0))
  {

    sub_237FAC9F0();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
LABEL_6:

    return a2;
  }

  v9 = (*(v13 + 56) + 16 * v7);
  a2 = *v9;
  v10 = v9[1];

  return a2;
}

uint64_t sub_237FAC418(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEE55F0, &qword_238035C58);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_237FAC484@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18 = a4;
  v5 = v4;
  v9 = sub_238031994();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = v5[3];
  v16 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v15);
  v19 = v14;
  (*(v16 + 72))(&v19, a2, a3, v15, v16);
  sub_238000CE8(v13, type metadata accessor for _DeviceActivityData.ActivitySegment, sub_23800CC10, type metadata accessor for _DeviceActivityData.ActivitySegment, v18);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_237FAC614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_238031994();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - v11;
  sub_237FAC7A4();
  sub_2380318F4();
  v13 = *(v6 + 8);
  v13(v10, v5);
  v15[0] = a2;
  v15[1] = a3;

  MEMORY[0x2383E5050](0x7473696C702ELL, 0xE600000000000000);
  sub_2380318F4();

  return (v13)(v12, v5);
}

uint64_t sub_237FAC7A4()
{
  v0 = sub_238031994();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  if (qword_280C353B8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_280C353C0);
  sub_238031904();
  sub_2380318F4();
  v11 = *(v1 + 8);
  v11(v5, v0);
  sub_2380318F4();
  v11(v8, v0);
  sub_2380318F4();

  return (v11)(v10, v0);
}

unint64_t sub_237FAC9F0()
{
  result = qword_280C353B0;
  if (!qword_280C353B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C353B0);
  }

  return result;
}

uint64_t sub_237FACA4C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v7 = sub_238031994();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v20 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v20 - v16;
  sub_237FACC88(a1, a2, v12);
  sub_2380318F4();

  v18 = *(v8 + 8);
  v18(v12, v7);
  sub_2380318F4();
  v18(v15, v7);
  v24 = v21;
  v25 = v22;

  MEMORY[0x2383E5050](0x7473696C702ELL, 0xE600000000000000);
  sub_2380318F4();

  return (v18)(v17, v7);
}

uint64_t sub_237FACC88@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v19[2] = a1;
  v19[3] = a2;
  v19[1] = a3;
  v3 = sub_238031994();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v19 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v19 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v19 - v15;
  if (qword_280C353B8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v3, qword_280C353C0);
  sub_238031904();
  sub_2380318F4();
  v17 = *(v4 + 8);
  v17(v8, v3);
  sub_2380318F4();
  v17(v11, v3);
  sub_2380318F4();
  v17(v14, v3);
  sub_2380318F4();
  return (v17)(v16, v3);
}

uint64_t _DeviceActivityData.WebDomainActivity.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51B0, &qword_2380343D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5458, &qword_238035428);
  v28 = *(v7 - 8);
  v29 = v7;
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v13 + 20);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE8, &unk_238035410);
  v18 = *(*(v17 - 8) + 56);
  v31 = v16;
  v18(v15 + v16, 1, 1, v17);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237FAD2A4();
  v20 = v30;
  sub_238032604();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_237FA5750(v15 + v31, &qword_27DEE51B0, &qword_2380343D0);
  }

  else
  {
    v21 = v28;
    v35 = 0;
    *v15 = sub_2380323F4();
    v15[1] = v22;
    v30 = v22;
    v34 = 1;
    sub_237FAD424(&qword_280C34AD8);
    sub_2380323E4();
    sub_237FAD474(v6, v15 + v31);
    v33 = 2;
    sub_238032414();
    *(v15 + *(v11 + 24)) = v23;
    v32 = 3;
    v24 = sub_238032404();
    (*(v21 + 8))(v10, v29);
    *(v15 + *(v11 + 28)) = v24 & 1;
    sub_237FAD4E4(v15, v27);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_237FAD548(v15);
  }
}

unint64_t sub_237FAD2A4()
{
  result = qword_280C34FA8;
  if (!qword_280C34FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C34FA8);
  }

  return result;
}

unint64_t sub_237FAD2F8()
{
  v1 = 0x6E69616D6F64;
  v2 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v2 = 0x6574737572547369;
  }

  if (*v0)
  {
    v1 = 0x6E656B6F74;
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

uint64_t _s6DeviceV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_237FAD424(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEE4FE8, &unk_238035410);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_237FAD474(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51B0, &qword_2380343D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_237FAD4E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237FAD548(uint64_t a1)
{
  v2 = type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237FAD5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v45 = a7;
  v12 = a5(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v44 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v35 - v17;
  result = MEMORY[0x28223BE20](v16);
  v22 = &v35 - v21;
  v37 = a2;
  if (a3 != a2)
  {
    v23 = *a4;
    v24 = *(v20 + 72);
    v25 = *a4 + v24 * (a3 - 1);
    v42 = -v24;
    v43 = v23;
    v26 = a1 - a3;
    v36 = v24;
    v27 = v23 + v24 * a3;
LABEL_5:
    v40 = v25;
    v41 = a3;
    v38 = v27;
    v39 = v26;
    v28 = v26;
    while (1)
    {
      sub_237FA4CFC(v27, v22, a6);
      sub_237FA4CFC(v25, v18, a6);
      v29 = *(v12 + 24);
      v30 = *&v22[v29];
      v31 = *&v18[v29];
      sub_237FA4DCC(v18, a6);
      result = sub_237FA4DCC(v22, a6);
      if (v31 >= v30)
      {
LABEL_4:
        a3 = v41 + 1;
        v25 = v40 + v36;
        v26 = v39 - 1;
        v27 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v32 = v44;
      v33 = v45;
      sub_237FA9354(v27, v44, v45);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_237FA9354(v32, v25, v33);
      v25 += v42;
      v27 += v42;
      if (__CFADD__(v28++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

_DWORD *sub_237FAD828@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_237FAD84C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_238031EA4();
  *a1 = result;
  a1[1] = v5;
  return result;
}

void *sub_237FAD8C0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_237FAD8CC@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_237FAD8E0()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_238031ED4();
}

uint64_t sub_237FAD8EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_237FB1680();
  return sub_238032194() & 1;
}

id sub_237FAD940@<X0>(_BYTE *a1@<X8>)
{
  result = _s14DeviceActivity0aB13AuthorizationC12isOverriddenSbvgZ_0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_237FAD974()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_237FAD9B0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_237FAD9E8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  v5 = *(v0 + 96);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_237FADA84()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_237FADABC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_237FADB28(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for DeviceActivityData.User(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for DeviceActivityFilter.SegmentInterval(0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = sub_238031A64();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_237FADCA0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for DeviceActivityData.User(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for DeviceActivityFilter.SegmentInterval(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = sub_238031A64();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_237FADE18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for _DeviceActivityData.Metadata(0);
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

uint64_t sub_237FADED4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for _DeviceActivityData.Metadata(0);
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

uint64_t sub_237FADF8C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for _DeviceActivityData.User(0);
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
      v13 = sub_238031A64();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_237FAE0B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for _DeviceActivityData.User(0);
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
      v13 = sub_238031A64();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_237FAE1D4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_238031654();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50C8, &qword_2380357C0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[9]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_237FAE340(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_238031654();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50C8, &qword_2380357C0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[9]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_237FAE4A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238031BE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
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

uint64_t sub_237FAE574(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_238031BE4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2 + 1;
  }

  return result;
}

uint64_t sub_237FAE62C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51C0, &unk_238034790);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_237FAE6E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51C0, &unk_238034790);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_237FAE798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238031C44();
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

uint64_t sub_237FAE854(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_238031C44();
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

uint64_t sub_237FAE90C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51D0, &qword_238034400);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_237FAE9C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51D0, &qword_238034400);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_237FAEA78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238031CC4();
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

uint64_t sub_237FAEB44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_238031CC4();
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

uint64_t sub_237FAEBFC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51B0, &qword_2380343D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_237FAECB8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51B0, &qword_2380343D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_237FAED68()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_237FAEDB8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_237FAEDF0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_237FAEE28()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54E0, &qword_238035898);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_237FAEED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DeviceActivityFilter.SegmentInterval(0);
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

uint64_t sub_237FAEF94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DeviceActivityFilter.SegmentInterval(0);
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

uint64_t sub_237FAF04C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 19);
  v1 = v0[25];

  return MEMORY[0x2821FE8E8](v0, 208, 7);
}

uint64_t sub_237FAF0A4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for DeviceActivityFilter(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_237FAF150(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DeviceActivityFilter(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_237FAF1F4(void *a1, id a2)
{
  v3 = [a2 identifier];
  sub_238024F48(a1, v3);
}

uint64_t sub_237FAF260()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_237FAF298()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_237FAF320()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_237FAF3CC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = a2;
  LOBYTE(a3) = v6(a2, a3);

  return a3 & 1;
}

uint64_t sub_237FAF428(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_238031654();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_238031B94();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_237FAF54C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_238031654();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_238031B94();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_237FAF670(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_238031994();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_238031654();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_238031B94();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_237FAF7E8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_238031994();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_238031654();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v15 = sub_238031B94();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_237FAF960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
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
    v9 = sub_238031A64();
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
      v14 = sub_238031B94();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_237FAFA90(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v8 = sub_238031A64();
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
      v13 = sub_238031B94();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_237FAFBB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238031A64();
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
    v11 = sub_238031B94();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_237FAFCDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_238031A64();
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
    v11 = sub_238031B94();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_237FAFE04()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_237FAFE54@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27DEE58A0;
  return result;
}

uint64_t sub_237FAFEA0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27DEE58A0 = v1;
  return result;
}

uint64_t sub_237FAFEE8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27DEE58A1;
  return result;
}

uint64_t sub_237FAFF34(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27DEE58A1 = v1;
  return result;
}

uint64_t sub_237FAFF7C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27DEE58A2;
  return result;
}

uint64_t sub_237FAFFC8(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27DEE58A2 = v1;
  return result;
}

uint64_t sub_237FB0034(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id sub_237FB004C@<X0>(void *a1@<X8>)
{
  result = [*v1 aa_primaryAppleAccount];
  v4 = result;
  if (result)
  {
    result = sub_237FB0D3C();
    v5 = &off_284AE4A38;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

uint64_t sub_237FB00EC(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_238031EA4();

  return v6;
}

uint64_t sub_237FB0220(uint64_t a1)
{
  v2 = sub_237FB0A38(&qword_27DEE4F38, type metadata accessor for USError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_237FB028C(uint64_t a1)
{
  v2 = sub_237FB0A38(&qword_27DEE4F38, type metadata accessor for USError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_237FB02FC(uint64_t a1)
{
  v2 = sub_237FB0A38(&qword_27DEE4F70, type metadata accessor for USError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_237FB0370(uint64_t a1, id *a2)
{
  result = sub_238031E84();
  *a2 = 0;
  return result;
}

uint64_t sub_237FB03E8(uint64_t a1, id *a2)
{
  v3 = sub_238031E94();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_237FB0468@<X0>(uint64_t *a1@<X8>)
{
  sub_238031EA4();
  v2 = sub_238031E74();

  *a1 = v2;
  return result;
}

uint64_t sub_237FB04AC()
{
  v1 = *v0;
  v2 = sub_238031EA4();
  v3 = MEMORY[0x2383E5080](v2);

  return v3;
}

uint64_t sub_237FB04E8()
{
  v1 = *v0;
  sub_238031EA4();
  sub_238031ED4();
}

uint64_t sub_237FB053C()
{
  v1 = *v0;
  sub_238031EA4();
  sub_2380325B4();
  sub_238031ED4();
  v2 = sub_2380325F4();

  return v2;
}

uint64_t sub_237FB05D4(uint64_t a1)
{
  v2 = sub_237FB0A38(&qword_27DEE4F70, type metadata accessor for USError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_237FB0640(uint64_t a1)
{
  v2 = sub_237FB0A38(&qword_27DEE4F70, type metadata accessor for USError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_237FB06AC(void *a1, uint64_t a2)
{
  v4 = sub_237FB0A38(&qword_27DEE4F70, type metadata accessor for USError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_237FB0760(uint64_t a1, uint64_t a2)
{
  v4 = sub_237FB0A38(&qword_27DEE4F70, type metadata accessor for USError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_237FB07DC()
{
  v2 = *v0;
  sub_2380325B4();
  sub_238031E34();
  return sub_2380325F4();
}

void *sub_237FB083C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_237FB0864(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_238031EA4();
  v6 = v5;
  if (v4 == sub_238031EA4() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2380324E4();
  }

  return v9 & 1;
}

uint64_t sub_237FB08EC(uint64_t a1)
{
  v2 = sub_237FB0A38(&qword_27DEE4DE0, type metadata accessor for Identifier);
  v3 = sub_237FB0A38(&unk_27DEE4DE8, type metadata accessor for Identifier);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_237FB0A38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_237FB0A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_237FB0A38(&qword_27DEE4F70, type metadata accessor for USError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_237FB0B18@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_238031E74();

  *a2 = v5;
  return result;
}

uint64_t sub_237FB0B60(uint64_t a1)
{
  v2 = sub_237FB0A38(&qword_27DEE4DD0, type metadata accessor for URLResourceKey);
  v3 = sub_237FB0A38(&qword_27DEE4DD8, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

unint64_t sub_237FB0D3C()
{
  result = qword_280C350B0;
  if (!qword_280C350B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C350B0);
  }

  return result;
}

void sub_237FB0F2C(uint64_t a1, unint64_t *a2)
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

unint64_t sub_237FB0FC4()
{
  result = qword_27DEE4F60;
  if (!qword_27DEE4F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE4F60);
  }

  return result;
}

uint64_t DeviceActivityName.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DeviceActivityName.rawValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DeviceActivitySchedule.init(intervalStart:intervalEnd:repeats:warningTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v29 = a3;
  v31 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE0, &unk_238033970);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v28[-v10];
  v12 = sub_2380316C4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v28[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v19 = &v28[-v18];
  v20 = *(v13 + 16);
  v30 = a1;
  v20(&v28[-v18], a1, v12);
  v20(v17, a2, v12);
  sub_237FB1448(a4, v11);
  v21 = sub_238031694();
  v22 = sub_238031694();
  v23 = 0;
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    v23 = sub_238031694();
    (*(v13 + 8))(v11, v12);
  }

  v24 = objc_allocWithZone(MEMORY[0x277D77B20]);
  v25 = [v24 initWithIntervalStart:v21 intervalEnd:v22 repeats:v29 & 1 warningTime:v23];

  sub_237FB14B8(a4);
  v26 = *(v13 + 8);
  v26(a2, v12);
  v26(v30, v12);
  v26(v17, v12);
  result = (v26)(v19, v12);
  *v31 = v25;
  return result;
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

uint64_t sub_237FB1448(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE0, &unk_238033970);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237FB14B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE0, &unk_238033970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237FB15C4@<X0>(SEL *a1@<X0>, void (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = [*v4 *a1];
  if (v8)
  {
    v9 = v8;
    a2();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a3(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a4, v10, 1, v11);
}

unint64_t sub_237FB1680()
{
  result = qword_280C349F0;
  if (!qword_280C349F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C349F0);
  }

  return result;
}

uint64_t sub_237FB16EC(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2380324E4();
  }
}

uint64_t sub_237FB171C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2380325B4();
  sub_238031ED4();
  return sub_2380325F4();
}

uint64_t sub_237FB1768()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2380325B4();
  sub_238031ED4();
  return sub_2380325F4();
}

uint64_t DeviceActivityEvent.init(applications:categories:webDomains:threshold:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v80 = a5;
  v81 = a4;
  v93 = a3;
  v94 = a2;
  v6 = sub_2380316C4();
  v78 = *(v6 - 8);
  v79 = v6;
  v7 = *(v78 + 64);
  MEMORY[0x28223BE20](v6);
  v77 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE8, &unk_238035410);
  v90 = *(v83 - 8);
  v9 = *(v90 + 64);
  MEMORY[0x28223BE20](v83);
  v82 = &v77 - v10;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF0, &unk_238033980);
  v91 = *(v85 - 8);
  v11 = *(v91 + 64);
  MEMORY[0x28223BE20](v85);
  v84 = &v77 - v12;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF8, &unk_2380343E0);
  v13 = *(v89 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v89);
  v88 = &v77 - v15;
  v16 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a1 + 56);
  v20 = (v17 + 63) >> 6;
  v86 = v13 + 8;
  v87 = v13 + 16;
  v92 = a1;

  v22 = 0;
  v23 = MEMORY[0x277D84F90];
  if (v19)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v24 >= v20)
    {
      break;
    }

    v19 = *(v16 + 8 * v24);
    ++v22;
    if (v19)
    {
      v22 = v24;
      do
      {
LABEL_8:
        v26 = v88;
        v25 = v89;
        (*(v13 + 16))(v88, *(v92 + 48) + *(v13 + 72) * (__clz(__rbit64(v19)) | (v22 << 6)), v89);
        v27 = sub_238031C54();
        v29 = v28;
        (*(v13 + 8))(v26, v25);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_237FB5BA0(0, *(v23 + 16) + 1, 1, v23);
          v23 = result;
        }

        v31 = *(v23 + 16);
        v30 = *(v23 + 24);
        if (v31 >= v30 >> 1)
        {
          result = sub_237FB5BA0((v30 > 1), v31 + 1, 1, v23);
          v23 = result;
        }

        v19 &= v19 - 1;
        *(v23 + 16) = v31 + 1;
        v32 = v23 + 16 * v31;
        *(v32 + 32) = v27;
        *(v32 + 40) = v29;
      }

      while (v19);
    }
  }

  v88 = sub_237FBC874(v23);

  v33 = v94 + 56;
  v34 = 1 << *(v94 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v94 + 56);
  v37 = (v34 + 63) >> 6;
  v92 = v91 + 16;
  v89 = v91 + 8;

  v38 = 0;
  v39 = MEMORY[0x277D84F90];
  if (v36)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v40 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v40 >= v37)
    {

      v91 = sub_237FBC874(v39);

      v50 = v93 + 56;
      v51 = 1 << *(v93 + 32);
      v52 = -1;
      if (v51 < 64)
      {
        v52 = ~(-1 << v51);
      }

      v53 = v52 & *(v93 + 56);
      v54 = (v51 + 63) >> 6;
      v94 = v90 + 16;
      v92 = v90 + 8;

      v55 = 0;
      v56 = MEMORY[0x277D84F90];
      if (v53)
      {
        goto LABEL_34;
      }

      while (1)
      {
        v57 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          break;
        }

        if (v57 >= v54)
        {

          sub_237FBC874(v56);

          v67 = v77;
          v68 = v78;
          v69 = v79;
          (*(v78 + 16))(v77, v81, v79);
          v70 = objc_allocWithZone(MEMORY[0x277D77B18]);
          sub_237FBC910();
          v71 = sub_238032064();

          v72 = sub_238032064();

          v73 = sub_238032064();

          v74 = sub_238031694();
          v75 = [v70 initWithApplicationTokens:v71 categoryTokens:v72 webDomainTokens:v73 threshold:v74 includesPastActivity:0];

          v76 = *(v68 + 8);
          v76(v81, v69);
          result = (v76)(v67, v69);
          *v80 = v75;
          return result;
        }

        v53 = *(v50 + 8 * v57);
        ++v55;
        if (v53)
        {
          v55 = v57;
          do
          {
LABEL_34:
            v58 = v90;
            v59 = v82;
            v60 = v83;
            (*(v90 + 16))(v82, *(v93 + 48) + *(v90 + 72) * (__clz(__rbit64(v53)) | (v55 << 6)), v83);
            v61 = sub_238031C54();
            v63 = v62;
            (*(v58 + 8))(v59, v60);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_237FB5BA0(0, *(v56 + 16) + 1, 1, v56);
              v56 = result;
            }

            v65 = *(v56 + 16);
            v64 = *(v56 + 24);
            if (v65 >= v64 >> 1)
            {
              result = sub_237FB5BA0((v64 > 1), v65 + 1, 1, v56);
              v56 = result;
            }

            v53 &= v53 - 1;
            *(v56 + 16) = v65 + 1;
            v66 = v56 + 16 * v65;
            *(v66 + 32) = v61;
            *(v66 + 40) = v63;
          }

          while (v53);
        }
      }

      goto LABEL_43;
    }

    v36 = *(v33 + 8 * v40);
    ++v38;
    if (v36)
    {
      v38 = v40;
      do
      {
LABEL_21:
        v41 = v91;
        v42 = v84;
        v43 = v85;
        (*(v91 + 16))(v84, *(v94 + 48) + *(v91 + 72) * (__clz(__rbit64(v36)) | (v38 << 6)), v85);
        v44 = sub_238031C54();
        v46 = v45;
        (*(v41 + 8))(v42, v43);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_237FB5BA0(0, *(v39 + 16) + 1, 1, v39);
          v39 = result;
        }

        v48 = *(v39 + 16);
        v47 = *(v39 + 24);
        if (v48 >= v47 >> 1)
        {
          result = sub_237FB5BA0((v47 > 1), v48 + 1, 1, v39);
          v39 = result;
        }

        v36 &= v36 - 1;
        *(v39 + 16) = v48 + 1;
        v49 = v39 + 16 * v48;
        *(v49 + 32) = v44;
        *(v49 + 40) = v46;
      }

      while (v36);
    }
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t DeviceActivityEvent.init(applications:categories:webDomains:threshold:includesPastActivity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, void *a6@<X8>)
{
  v79 = a5;
  v83 = a6;
  v84 = a4;
  v96 = a3;
  v97 = a2;
  v7 = sub_2380316C4();
  v81 = *(v7 - 8);
  v82 = v7;
  v8 = *(v81 + 64);
  MEMORY[0x28223BE20](v7);
  v80 = &v78[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE8, &unk_238035410);
  v93 = *(v86 - 8);
  v10 = *(v93 + 64);
  MEMORY[0x28223BE20](v86);
  v85 = &v78[-v11];
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF0, &unk_238033980);
  v94 = *(v88 - 8);
  v12 = *(v94 + 64);
  MEMORY[0x28223BE20](v88);
  v87 = &v78[-v13];
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF8, &unk_2380343E0);
  v14 = *(v92 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v92);
  v91 = &v78[-v16];
  v17 = a1 + 56;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a1 + 56);
  v21 = (v18 + 63) >> 6;
  v89 = v14 + 8;
  v90 = v14 + 16;
  v95 = a1;

  v23 = 0;
  v24 = MEMORY[0x277D84F90];
  if (v20)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v25 >= v21)
    {
      break;
    }

    v20 = *(v17 + 8 * v25);
    ++v23;
    if (v20)
    {
      v23 = v25;
      do
      {
LABEL_8:
        v26 = v91;
        v27 = v92;
        (*(v14 + 16))(v91, *(v95 + 48) + *(v14 + 72) * (__clz(__rbit64(v20)) | (v23 << 6)), v92);
        v28 = sub_238031C54();
        v30 = v29;
        (*(v14 + 8))(v26, v27);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_237FB5BA0(0, *(v24 + 16) + 1, 1, v24);
          v24 = result;
        }

        v32 = *(v24 + 16);
        v31 = *(v24 + 24);
        if (v32 >= v31 >> 1)
        {
          result = sub_237FB5BA0((v31 > 1), v32 + 1, 1, v24);
          v24 = result;
        }

        v20 &= v20 - 1;
        *(v24 + 16) = v32 + 1;
        v33 = v24 + 16 * v32;
        *(v33 + 32) = v28;
        *(v33 + 40) = v30;
      }

      while (v20);
    }
  }

  v91 = sub_237FBC874(v24);

  v34 = v97 + 56;
  v35 = 1 << *(v97 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v97 + 56);
  v38 = (v35 + 63) >> 6;
  v95 = v94 + 16;
  v92 = v94 + 8;

  v39 = 0;
  v40 = MEMORY[0x277D84F90];
  if (v37)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v41 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v41 >= v38)
    {

      v94 = sub_237FBC874(v40);

      v51 = v96 + 56;
      v52 = 1 << *(v96 + 32);
      v53 = -1;
      if (v52 < 64)
      {
        v53 = ~(-1 << v52);
      }

      v54 = v53 & *(v96 + 56);
      v55 = (v52 + 63) >> 6;
      v97 = v93 + 16;
      v95 = v93 + 8;

      v56 = 0;
      v57 = MEMORY[0x277D84F90];
      if (v54)
      {
        goto LABEL_34;
      }

      while (1)
      {
        v58 = v56 + 1;
        if (__OFADD__(v56, 1))
        {
          break;
        }

        if (v58 >= v55)
        {

          sub_237FBC874(v57);

          v68 = v80;
          v69 = v81;
          v70 = v82;
          (*(v81 + 16))(v80, v84, v82);
          v71 = objc_allocWithZone(MEMORY[0x277D77B18]);
          sub_237FBC910();
          v72 = sub_238032064();

          v73 = sub_238032064();

          v74 = sub_238032064();

          v75 = sub_238031694();
          v76 = [v71 initWithApplicationTokens:v72 categoryTokens:v73 webDomainTokens:v74 threshold:v75 includesPastActivity:v79 & 1];

          v77 = *(v69 + 8);
          v77(v84, v70);
          result = (v77)(v68, v70);
          *v83 = v76;
          return result;
        }

        v54 = *(v51 + 8 * v58);
        ++v56;
        if (v54)
        {
          v56 = v58;
          do
          {
LABEL_34:
            v59 = v93;
            v60 = v85;
            v61 = v86;
            (*(v93 + 16))(v85, *(v96 + 48) + *(v93 + 72) * (__clz(__rbit64(v54)) | (v56 << 6)), v86);
            v62 = sub_238031C54();
            v64 = v63;
            (*(v59 + 8))(v60, v61);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_237FB5BA0(0, *(v57 + 16) + 1, 1, v57);
              v57 = result;
            }

            v66 = *(v57 + 16);
            v65 = *(v57 + 24);
            if (v66 >= v65 >> 1)
            {
              result = sub_237FB5BA0((v65 > 1), v66 + 1, 1, v57);
              v57 = result;
            }

            v54 &= v54 - 1;
            *(v57 + 16) = v66 + 1;
            v67 = v57 + 16 * v66;
            *(v67 + 32) = v62;
            *(v67 + 40) = v64;
          }

          while (v54);
        }
      }

      goto LABEL_43;
    }

    v37 = *(v34 + 8 * v41);
    ++v39;
    if (v37)
    {
      v39 = v41;
      do
      {
LABEL_21:
        v42 = v94;
        v43 = v87;
        v44 = v88;
        (*(v94 + 16))(v87, *(v97 + 48) + *(v94 + 72) * (__clz(__rbit64(v37)) | (v39 << 6)), v88);
        v45 = sub_238031C54();
        v47 = v46;
        (*(v42 + 8))(v43, v44);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_237FB5BA0(0, *(v40 + 16) + 1, 1, v40);
          v40 = result;
        }

        v49 = *(v40 + 16);
        v48 = *(v40 + 24);
        if (v49 >= v48 >> 1)
        {
          result = sub_237FB5BA0((v48 > 1), v49 + 1, 1, v40);
          v40 = result;
        }

        v37 &= v37 - 1;
        *(v40 + 16) = v49 + 1;
        v50 = v40 + 16 * v49;
        *(v50 + 32) = v45;
        *(v50 + 40) = v47;
      }

      while (v37);
    }
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t DeviceActivityEvent.init(applications:exemptApplications:categories:webDomains:threshold:includesPastActivity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, void *a7@<X8>)
{
  v100 = a6;
  v104 = a7;
  v105 = a5;
  v115 = a4;
  v116 = a3;
  v117 = a2;
  v8 = sub_2380316C4();
  v102 = *(v8 - 8);
  v103 = v8;
  v9 = *(v102 + 64);
  MEMORY[0x28223BE20](v8);
  v101 = &v99[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE8, &unk_238035410);
  v112 = *(v107 - 8);
  v11 = v112[8];
  MEMORY[0x28223BE20](v107);
  v106 = &v99[-v12];
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF0, &unk_238033980);
  v113 = *(v109 - 8);
  v13 = v113[8];
  MEMORY[0x28223BE20](v109);
  v108 = &v99[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF8, &unk_2380343E0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v110 = &v99[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v21 = &v99[-v20];
  v22 = a1 + 56;
  v23 = 1 << *(a1 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(a1 + 56);
  v26 = (v23 + 63) >> 6;
  v119 = v19 + 16;
  v120 = v19;
  v118 = (v19 + 8);
  v114 = a1;

  v28 = 0;
  v29 = MEMORY[0x277D84F90];
  v111 = v15;
  if (v25)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_55;
    }

    if (v30 >= v26)
    {
      break;
    }

    v25 = *(v22 + 8 * v30);
    ++v28;
    if (v25)
    {
      v28 = v30;
      do
      {
LABEL_8:
        v31 = v120;
        (v120[2])(v21, *(v114 + 48) + v120[9] * (__clz(__rbit64(v25)) | (v28 << 6)), v15);
        v32 = sub_238031C54();
        v34 = v33;
        v31[1](v21, v15);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_237FB5BA0(0, *(v29 + 16) + 1, 1, v29);
          v29 = result;
        }

        v36 = *(v29 + 16);
        v35 = *(v29 + 24);
        if (v36 >= v35 >> 1)
        {
          result = sub_237FB5BA0((v35 > 1), v36 + 1, 1, v29);
          v29 = result;
        }

        v25 &= v25 - 1;
        *(v29 + 16) = v36 + 1;
        v37 = v29 + 16 * v36;
        *(v37 + 32) = v32;
        *(v37 + 40) = v34;
        v15 = v111;
      }

      while (v25);
    }
  }

  v114 = sub_237FBC874(v29);

  v38 = v117 + 56;
  v39 = 1 << *(v117 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & *(v117 + 56);
  v42 = (v39 + 63) >> 6;

  v43 = 0;
  v44 = MEMORY[0x277D84F90];
  if (v41)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v45 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v45 >= v42)
    {

      v118 = sub_237FBC874(v44);

      v54 = v116 + 56;
      v55 = 1 << *(v116 + 32);
      v56 = -1;
      if (v55 < 64)
      {
        v56 = ~(-1 << v55);
      }

      v57 = v56 & *(v116 + 56);
      v58 = (v55 + 63) >> 6;
      v119 = v113 + 1;
      v120 = (v113 + 2);

      v59 = 0;
      v60 = MEMORY[0x277D84F90];
      if (v57)
      {
        goto LABEL_34;
      }

      while (1)
      {
        v61 = v59 + 1;
        if (__OFADD__(v59, 1))
        {
          goto LABEL_56;
        }

        if (v61 >= v58)
        {

          v117 = sub_237FBC874(v60);

          v71 = v115 + 56;
          v72 = 1 << *(v115 + 32);
          v73 = -1;
          if (v72 < 64)
          {
            v73 = ~(-1 << v72);
          }

          v74 = v73 & *(v115 + 56);
          v75 = (v72 + 63) >> 6;
          v119 = v112 + 1;
          v120 = (v112 + 2);

          v76 = 0;
          v77 = MEMORY[0x277D84F90];
          if (v74)
          {
            goto LABEL_47;
          }

          while (1)
          {
            v78 = v76 + 1;
            if (__OFADD__(v76, 1))
            {
              break;
            }

            if (v78 >= v75)
            {

              sub_237FBC874(v77);

              v88 = v101;
              v89 = v102;
              v90 = v103;
              (*(v102 + 16))(v101, v105, v103);
              v120 = objc_allocWithZone(MEMORY[0x277D77B18]);
              sub_237FBC910();
              v91 = sub_238032064();

              v92 = sub_238032064();

              v93 = sub_238032064();

              v94 = sub_238032064();

              v95 = v88;
              v96 = sub_238031694();
              v97 = [v120 initWithApplicationTokens:v91 exemptApplicationTokens:v92 categoryTokens:v93 webDomainTokens:v94 threshold:v96 includesPastActivity:v100 & 1];

              v98 = *(v89 + 8);
              v98(v105, v90);
              result = (v98)(v95, v90);
              *v104 = v97;
              return result;
            }

            v74 = *(v71 + 8 * v78);
            ++v76;
            if (v74)
            {
              v76 = v78;
              do
              {
LABEL_47:
                v79 = v112;
                v80 = v106;
                v81 = v107;
                (v112[2])(v106, *(v115 + 48) + v112[9] * (__clz(__rbit64(v74)) | (v76 << 6)), v107);
                v82 = sub_238031C54();
                v84 = v83;
                (v79[1])(v80, v81);
                result = swift_isUniquelyReferenced_nonNull_native();
                if ((result & 1) == 0)
                {
                  result = sub_237FB5BA0(0, *(v77 + 16) + 1, 1, v77);
                  v77 = result;
                }

                v86 = *(v77 + 16);
                v85 = *(v77 + 24);
                if (v86 >= v85 >> 1)
                {
                  result = sub_237FB5BA0((v85 > 1), v86 + 1, 1, v77);
                  v77 = result;
                }

                v74 &= v74 - 1;
                *(v77 + 16) = v86 + 1;
                v87 = v77 + 16 * v86;
                *(v87 + 32) = v82;
                *(v87 + 40) = v84;
              }

              while (v74);
            }
          }

          goto LABEL_57;
        }

        v57 = *(v54 + 8 * v61);
        ++v59;
        if (v57)
        {
          v59 = v61;
          do
          {
LABEL_34:
            v62 = v113;
            v63 = v108;
            v64 = v109;
            (v113[2])(v108, *(v116 + 48) + v113[9] * (__clz(__rbit64(v57)) | (v59 << 6)), v109);
            v65 = sub_238031C54();
            v67 = v66;
            (v62[1])(v63, v64);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_237FB5BA0(0, *(v60 + 16) + 1, 1, v60);
              v60 = result;
            }

            v69 = *(v60 + 16);
            v68 = *(v60 + 24);
            if (v69 >= v68 >> 1)
            {
              result = sub_237FB5BA0((v68 > 1), v69 + 1, 1, v60);
              v60 = result;
            }

            v57 &= v57 - 1;
            *(v60 + 16) = v69 + 1;
            v70 = v60 + 16 * v69;
            *(v70 + 32) = v65;
            *(v70 + 40) = v67;
          }

          while (v57);
        }
      }
    }

    v41 = *(v38 + 8 * v45);
    ++v43;
    if (v41)
    {
      v43 = v45;
      do
      {
LABEL_21:
        v46 = v120;
        v47 = v110;
        (v120[2])(v110, *(v117 + 48) + v120[9] * (__clz(__rbit64(v41)) | (v43 << 6)), v15);
        v48 = sub_238031C54();
        v50 = v49;
        (v46)[1](v47, v15);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_237FB5BA0(0, *(v44 + 16) + 1, 1, v44);
          v44 = result;
        }

        v52 = *(v44 + 16);
        v51 = *(v44 + 24);
        if (v52 >= v51 >> 1)
        {
          result = sub_237FB5BA0((v51 > 1), v52 + 1, 1, v44);
          v44 = result;
        }

        v41 &= v41 - 1;
        *(v44 + 16) = v52 + 1;
        v53 = v44 + 16 * v52;
        *(v53 + 32) = v48;
        *(v53 + 40) = v50;
      }

      while (v41);
    }
  }

LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

uint64_t DeviceActivityEvent.init(untokenizedApplications:untokenizedCategories:untokenizedWebDomains:threshold:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v90 = a4;
  v99 = a3;
  v87 = a5;
  v88 = a2;
  v6 = sub_2380316C4();
  v85 = *(v6 - 8);
  v86 = v6;
  v7 = *(v85 + 64);
  MEMORY[0x28223BE20](v6);
  v84 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_238031CC4();
  v97 = *(v92 - 8);
  v9 = *(v97 + 64);
  MEMORY[0x28223BE20](v92);
  v91 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_238031C44();
  v11 = *(v94 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v94);
  v93 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_238031BE4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1 + 56;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(a1 + 56);
  v23 = (v20 + 63) >> 6;
  v95 = (v15 + 8);
  v96 = (v15 + 16);
  v98 = a1;

  v25 = 0;
  v89 = MEMORY[0x277D84F90];
  if (!v22)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v26 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      (*(v15 + 16))(v18, *(v98 + 48) + *(v15 + 72) * (v26 | (v25 << 6)), v14);
      v27 = sub_238031BC4();
      v29 = v28;
      result = (*(v15 + 8))(v18, v14);
      if (v29)
      {
        break;
      }

      if (!v22)
      {
        goto LABEL_6;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_237FB5A94(0, *(v89 + 2) + 1, 1, v89);
      v89 = result;
    }

    v32 = *(v89 + 2);
    v31 = *(v89 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      v82 = *(v89 + 2);
      v83 = v32 + 1;
      result = sub_237FB5A94((v31 > 1), v32 + 1, 1, v89);
      v32 = v82;
      v33 = v83;
      v89 = result;
    }

    v34 = v89;
    *(v89 + 2) = v33;
    v35 = &v34[16 * v32];
    *(v35 + 4) = v27;
    *(v35 + 5) = v29;
  }

  while (v22);
  while (1)
  {
LABEL_6:
    v30 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v30 >= v23)
    {
      break;
    }

    v22 = *(v19 + 8 * v30);
    ++v25;
    if (v22)
    {
      v25 = v30;
      goto LABEL_4;
    }
  }

  v83 = sub_237FBC964(v89);

  v36 = v88;
  v37 = v88 + 56;
  v38 = 1 << *(v88 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & *(v88 + 56);
  v41 = (v38 + 63) >> 6;
  v98 = v11 + 16;
  v96 = (v11 + 8);

  v42 = 0;
  v95 = MEMORY[0x277D84F90];
  v43 = v94;
  if (!v40)
  {
    goto LABEL_21;
  }

  do
  {
LABEL_19:
    while (1)
    {
      v44 = __clz(__rbit64(v40));
      v40 &= v40 - 1;
      v45 = v93;
      (*(v11 + 16))(v93, *(v36 + 48) + *(v11 + 72) * (v44 | (v42 << 6)), v43);
      v46 = sub_238031C24();
      v48 = v47;
      result = (*(v11 + 8))(v45, v43);
      if (v48)
      {
        break;
      }

      if (!v40)
      {
        goto LABEL_21;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_237FB5A94(0, *(v95 + 2) + 1, 1, v95);
      v95 = result;
    }

    v51 = *(v95 + 2);
    v50 = *(v95 + 3);
    if (v51 >= v50 >> 1)
    {
      result = sub_237FB5A94((v50 > 1), v51 + 1, 1, v95);
      v95 = result;
    }

    v52 = v95;
    *(v95 + 2) = v51 + 1;
    v53 = &v52[16 * v51];
    *(v53 + 4) = v46;
    *(v53 + 5) = v48;
    v36 = v88;
  }

  while (v40);
LABEL_21:
  while (1)
  {
    v49 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v49 >= v41)
    {

      v94 = sub_237FBC964(v95);

      v54 = v99 + 56;
      v55 = 1 << *(v99 + 32);
      v56 = -1;
      if (v55 < 64)
      {
        v56 = ~(-1 << v55);
      }

      v57 = v56 & *(v99 + 56);
      v58 = (v55 + 63) >> 6;
      v98 = v97 + 16;

      v59 = 0;
      v96 = MEMORY[0x277D84F90];
      if (!v57)
      {
        goto LABEL_36;
      }

      do
      {
LABEL_34:
        while (1)
        {
          v60 = __clz(__rbit64(v57));
          v57 &= v57 - 1;
          v61 = v97;
          v62 = v91;
          v63 = v92;
          (*(v97 + 16))(v91, *(v99 + 48) + *(v97 + 72) * (v60 | (v59 << 6)), v92);
          v64 = sub_238031CA4();
          v66 = v65;
          result = (*(v61 + 8))(v62, v63);
          if (v66)
          {
            break;
          }

          if (!v57)
          {
            goto LABEL_36;
          }
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_237FB5A94(0, *(v96 + 2) + 1, 1, v96);
          v96 = result;
        }

        v69 = *(v96 + 2);
        v68 = *(v96 + 3);
        if (v69 >= v68 >> 1)
        {
          result = sub_237FB5A94((v68 > 1), v69 + 1, 1, v96);
          v96 = result;
        }

        v70 = v96;
        *(v96 + 2) = v69 + 1;
        v71 = &v70[16 * v69];
        *(v71 + 4) = v64;
        *(v71 + 5) = v66;
      }

      while (v57);
LABEL_36:
      while (1)
      {
        v67 = v59 + 1;
        if (__OFADD__(v59, 1))
        {
          goto LABEL_49;
        }

        if (v67 >= v58)
        {

          sub_237FBC964(v96);

          v72 = v84;
          v73 = v85;
          v74 = v86;
          (*(v85 + 16))(v84, v90, v86);
          v75 = objc_allocWithZone(MEMORY[0x277D77B18]);
          v76 = sub_238032064();

          v77 = sub_238032064();

          v78 = sub_238032064();

          v79 = sub_238031694();
          v80 = [v75 initWithBundleIdentifiers:v76 categoryIdentifiers:v77 webDomains:v78 threshold:v79 includesPastActivity:0];

          v81 = *(v73 + 8);
          v81(v90, v74);
          result = (v81)(v72, v74);
          *v87 = v80;
          return result;
        }

        v57 = *(v54 + 8 * v67);
        ++v59;
        if (v57)
        {
          v59 = v67;
          goto LABEL_34;
        }
      }
    }

    v40 = *(v37 + 8 * v49);
    ++v42;
    if (v40)
    {
      v42 = v49;
      goto LABEL_19;
    }
  }

LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t DeviceActivityEvent.init(untokenizedApplications:untokenizedCategories:untokenizedWebDomains:threshold:includesPastActivity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, void *a6@<X8>)
{
  v85 = a5;
  v92 = a4;
  v101 = a3;
  v89 = a6;
  v90 = a2;
  v7 = sub_2380316C4();
  v87 = *(v7 - 8);
  v88 = v7;
  v8 = *(v87 + 64);
  MEMORY[0x28223BE20](v7);
  v86 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_238031CC4();
  v99 = *(v94 - 8);
  v10 = *(v99 + 64);
  MEMORY[0x28223BE20](v94);
  v93 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_238031C44();
  v12 = *(v96 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v96);
  v95 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_238031BE4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1 + 56;
  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a1 + 56);
  v24 = (v21 + 63) >> 6;
  v97 = (v16 + 8);
  v98 = (v16 + 16);
  v100 = a1;

  v26 = 0;
  v91 = MEMORY[0x277D84F90];
  if (!v23)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      (*(v16 + 16))(v19, *(v100 + 48) + *(v16 + 72) * (v27 | (v26 << 6)), v15);
      v28 = sub_238031BC4();
      v30 = v29;
      result = (*(v16 + 8))(v19, v15);
      if (v30)
      {
        break;
      }

      if (!v23)
      {
        goto LABEL_6;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_237FB5A94(0, *(v91 + 2) + 1, 1, v91);
      v91 = result;
    }

    v33 = *(v91 + 2);
    v32 = *(v91 + 3);
    v34 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      v83 = *(v91 + 2);
      v84 = v33 + 1;
      result = sub_237FB5A94((v32 > 1), v33 + 1, 1, v91);
      v33 = v83;
      v34 = v84;
      v91 = result;
    }

    v35 = v91;
    *(v91 + 2) = v34;
    v36 = &v35[16 * v33];
    *(v36 + 4) = v28;
    *(v36 + 5) = v30;
  }

  while (v23);
  while (1)
  {
LABEL_6:
    v31 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v31 >= v24)
    {
      break;
    }

    v23 = *(v20 + 8 * v31);
    ++v26;
    if (v23)
    {
      v26 = v31;
      goto LABEL_4;
    }
  }

  v84 = sub_237FBC964(v91);

  v37 = v90;
  v38 = v90 + 56;
  v39 = 1 << *(v90 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & *(v90 + 56);
  v42 = (v39 + 63) >> 6;
  v100 = v12 + 16;
  v98 = (v12 + 8);

  v43 = 0;
  v97 = MEMORY[0x277D84F90];
  v44 = v96;
  if (!v41)
  {
    goto LABEL_21;
  }

  do
  {
LABEL_19:
    while (1)
    {
      v45 = __clz(__rbit64(v41));
      v41 &= v41 - 1;
      v46 = v95;
      (*(v12 + 16))(v95, *(v37 + 48) + *(v12 + 72) * (v45 | (v43 << 6)), v44);
      v47 = sub_238031C24();
      v49 = v48;
      result = (*(v12 + 8))(v46, v44);
      if (v49)
      {
        break;
      }

      if (!v41)
      {
        goto LABEL_21;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_237FB5A94(0, *(v97 + 2) + 1, 1, v97);
      v97 = result;
    }

    v52 = *(v97 + 2);
    v51 = *(v97 + 3);
    if (v52 >= v51 >> 1)
    {
      result = sub_237FB5A94((v51 > 1), v52 + 1, 1, v97);
      v97 = result;
    }

    v53 = v97;
    *(v97 + 2) = v52 + 1;
    v54 = &v53[16 * v52];
    *(v54 + 4) = v47;
    *(v54 + 5) = v49;
    v37 = v90;
  }

  while (v41);
LABEL_21:
  while (1)
  {
    v50 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v50 >= v42)
    {

      v96 = sub_237FBC964(v97);

      v55 = v101 + 56;
      v56 = 1 << *(v101 + 32);
      v57 = -1;
      if (v56 < 64)
      {
        v57 = ~(-1 << v56);
      }

      v58 = v57 & *(v101 + 56);
      v59 = (v56 + 63) >> 6;
      v100 = v99 + 16;

      v60 = 0;
      v98 = MEMORY[0x277D84F90];
      if (!v58)
      {
        goto LABEL_36;
      }

      do
      {
LABEL_34:
        while (1)
        {
          v61 = __clz(__rbit64(v58));
          v58 &= v58 - 1;
          v62 = v99;
          v64 = v93;
          v63 = v94;
          (*(v99 + 16))(v93, *(v101 + 48) + *(v99 + 72) * (v61 | (v60 << 6)), v94);
          v65 = sub_238031CA4();
          v67 = v66;
          result = (*(v62 + 8))(v64, v63);
          if (v67)
          {
            break;
          }

          if (!v58)
          {
            goto LABEL_36;
          }
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_237FB5A94(0, *(v98 + 2) + 1, 1, v98);
          v98 = result;
        }

        v70 = *(v98 + 2);
        v69 = *(v98 + 3);
        if (v70 >= v69 >> 1)
        {
          result = sub_237FB5A94((v69 > 1), v70 + 1, 1, v98);
          v98 = result;
        }

        v71 = v98;
        *(v98 + 2) = v70 + 1;
        v72 = &v71[16 * v70];
        *(v72 + 4) = v65;
        *(v72 + 5) = v67;
      }

      while (v58);
LABEL_36:
      while (1)
      {
        v68 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
          goto LABEL_49;
        }

        if (v68 >= v59)
        {

          sub_237FBC964(v98);

          v73 = v86;
          v74 = v87;
          v75 = v88;
          (*(v87 + 16))(v86, v92, v88);
          v76 = objc_allocWithZone(MEMORY[0x277D77B18]);
          v77 = sub_238032064();

          v78 = sub_238032064();

          v79 = sub_238032064();

          v80 = sub_238031694();
          v81 = [v76 initWithBundleIdentifiers:v77 categoryIdentifiers:v78 webDomains:v79 threshold:v80 includesPastActivity:v85 & 1];

          v82 = *(v74 + 8);
          v82(v92, v75);
          result = (v82)(v73, v75);
          *v89 = v81;
          return result;
        }

        v58 = *(v55 + 8 * v68);
        ++v60;
        if (v58)
        {
          v60 = v68;
          goto LABEL_34;
        }
      }
    }

    v41 = *(v38 + 8 * v50);
    ++v43;
    if (v41)
    {
      v43 = v50;
      goto LABEL_19;
    }
  }

LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t DeviceActivityEvent.init(untokenizedApplications:untokenizedExemptApplications:untokenizedCategories:untokenizedWebDomains:threshold:includesPastActivity:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, void *a7@<X8>)
{
  v108 = a6;
  v115 = a5;
  v123 = a4;
  v124 = a2;
  v112 = a7;
  v113 = a3;
  v8 = sub_2380316C4();
  v110 = *(v8 - 8);
  v111 = v8;
  v9 = *(v110 + 64);
  MEMORY[0x28223BE20](v8);
  v109 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_238031CC4();
  v120 = *(v117 - 8);
  v11 = v120[8];
  MEMORY[0x28223BE20](v117);
  v116 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_238031C44();
  v121 = *(v119 - 8);
  v13 = *(v121 + 64);
  MEMORY[0x28223BE20](v119);
  v118 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_238031BE4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v106 - v21;
  v23 = a1 + 56;
  v24 = 1 << *(a1 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(a1 + 56);
  v27 = (v24 + 63) >> 6;
  v125 = (v16 + 8);
  v126 = (v16 + 16);
  v122 = a1;

  v29 = 0;
  v114 = MEMORY[0x277D84F90];
  if (!v26)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v30 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      (*(v16 + 16))(v22, *(v122 + 48) + *(v16 + 72) * (v30 | (v29 << 6)), v15);
      v31 = sub_238031BC4();
      v33 = v32;
      result = (*(v16 + 8))(v22, v15);
      if (v33)
      {
        break;
      }

      if (!v26)
      {
        goto LABEL_6;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_237FB5A94(0, *(v114 + 2) + 1, 1, v114);
      v114 = result;
    }

    v36 = *(v114 + 2);
    v35 = *(v114 + 3);
    v37 = v36 + 1;
    if (v36 >= v35 >> 1)
    {
      v106 = *(v114 + 2);
      v107 = v36 + 1;
      result = sub_237FB5A94((v35 > 1), v36 + 1, 1, v114);
      v36 = v106;
      v37 = v107;
      v114 = result;
    }

    v38 = v114;
    *(v114 + 2) = v37;
    v39 = &v38[16 * v36];
    *(v39 + 4) = v31;
    *(v39 + 5) = v33;
  }

  while (v26);
  while (1)
  {
LABEL_6:
    v34 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_63;
    }

    if (v34 >= v27)
    {
      break;
    }

    v26 = *(v23 + 8 * v34);
    ++v29;
    if (v26)
    {
      v29 = v34;
      goto LABEL_4;
    }
  }

  v122 = sub_237FBC964(v114);

  v40 = v124 + 56;
  v41 = 1 << v124[32];
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & *(v124 + 7);
  v44 = (v41 + 63) >> 6;

  v45 = 0;
  v46 = MEMORY[0x277D84F90];
  if (!v43)
  {
    goto LABEL_21;
  }

  do
  {
LABEL_19:
    while (1)
    {
      v47 = __clz(__rbit64(v43));
      v43 &= v43 - 1;
      (*(v16 + 16))(v20, *(v124 + 6) + *(v16 + 72) * (v47 | (v45 << 6)), v15);
      v48 = sub_238031BC4();
      v50 = v49;
      result = (*(v16 + 8))(v20, v15);
      if (v50)
      {
        break;
      }

      if (!v43)
      {
        goto LABEL_21;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_237FB5A94(0, *(v46 + 16) + 1, 1, v46);
      v46 = result;
    }

    v53 = *(v46 + 16);
    v52 = *(v46 + 24);
    v54 = (v53 + 1);
    if (v53 >= v52 >> 1)
    {
      v114 = (v53 + 1);
      v56 = v46;
      v57 = v53;
      result = sub_237FB5A94((v52 > 1), v53 + 1, 1, v56);
      v54 = v114;
      v53 = v57;
      v46 = result;
    }

    *(v46 + 16) = v54;
    v55 = v46 + 16 * v53;
    *(v55 + 32) = v48;
    *(v55 + 40) = v50;
  }

  while (v43);
LABEL_21:
  while (1)
  {
    v51 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    if (v51 >= v44)
    {

      v114 = sub_237FBC964(v46);

      v58 = v113;
      v59 = v113 + 56;
      v60 = 1 << *(v113 + 32);
      v61 = -1;
      if (v60 < 64)
      {
        v61 = ~(-1 << v60);
      }

      v62 = v61 & *(v113 + 56);
      v63 = (v60 + 63) >> 6;
      v125 = (v121 + 8);
      v126 = (v121 + 16);

      v64 = 0;
      v124 = MEMORY[0x277D84F90];
      v65 = v121;
      if (!v62)
      {
        goto LABEL_36;
      }

      do
      {
LABEL_34:
        while (1)
        {
          v66 = __clz(__rbit64(v62));
          v62 &= v62 - 1;
          v67 = v118;
          v68 = v119;
          (*(v65 + 16))(v118, *(v58 + 48) + *(v65 + 72) * (v66 | (v64 << 6)), v119);
          v69 = sub_238031C24();
          v71 = v70;
          result = (*(v65 + 8))(v67, v68);
          if (v71)
          {
            break;
          }

          if (!v62)
          {
            goto LABEL_36;
          }
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_237FB5A94(0, *(v124 + 2) + 1, 1, v124);
          v124 = result;
        }

        v74 = *(v124 + 2);
        v73 = *(v124 + 3);
        if (v74 >= v73 >> 1)
        {
          result = sub_237FB5A94((v73 > 1), v74 + 1, 1, v124);
          v124 = result;
        }

        v75 = v124;
        *(v124 + 2) = v74 + 1;
        v76 = &v75[16 * v74];
        *(v76 + 4) = v69;
        *(v76 + 5) = v71;
        v58 = v113;
      }

      while (v62);
LABEL_36:
      while (1)
      {
        v72 = v64 + 1;
        if (__OFADD__(v64, 1))
        {
          goto LABEL_64;
        }

        if (v72 >= v63)
        {

          v121 = sub_237FBC964(v124);

          v77 = v123 + 56;
          v78 = 1 << *(v123 + 32);
          v79 = -1;
          if (v78 < 64)
          {
            v79 = ~(-1 << v78);
          }

          v80 = v79 & *(v123 + 56);
          v81 = (v78 + 63) >> 6;
          v126 = v120 + 2;

          v82 = 0;
          v125 = MEMORY[0x277D84F90];
          if (!v80)
          {
            goto LABEL_51;
          }

          do
          {
LABEL_49:
            while (1)
            {
              v83 = __clz(__rbit64(v80));
              v80 &= v80 - 1;
              v84 = v120;
              v86 = v116;
              v85 = v117;
              (v120[2])(v116, *(v123 + 48) + v120[9] * (v83 | (v82 << 6)), v117);
              v87 = sub_238031CA4();
              v89 = v88;
              result = (v84[1])(v86, v85);
              if (v89)
              {
                break;
              }

              if (!v80)
              {
                goto LABEL_51;
              }
            }

            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_237FB5A94(0, *(v125 + 2) + 1, 1, v125);
              v125 = result;
            }

            v92 = *(v125 + 2);
            v91 = *(v125 + 3);
            if (v92 >= v91 >> 1)
            {
              result = sub_237FB5A94((v91 > 1), v92 + 1, 1, v125);
              v125 = result;
            }

            v93 = v125;
            *(v125 + 2) = v92 + 1;
            v94 = &v93[16 * v92];
            *(v94 + 4) = v87;
            *(v94 + 5) = v89;
          }

          while (v80);
LABEL_51:
          while (1)
          {
            v90 = v82 + 1;
            if (__OFADD__(v82, 1))
            {
              goto LABEL_65;
            }

            if (v90 >= v81)
            {

              sub_237FBC964(v125);

              v95 = v109;
              v96 = v110;
              v97 = v111;
              (*(v110 + 16))(v109, v115, v111);
              v126 = objc_allocWithZone(MEMORY[0x277D77B18]);
              v98 = sub_238032064();

              v99 = sub_238032064();

              v100 = sub_238032064();

              v101 = sub_238032064();

              v102 = v95;
              v103 = sub_238031694();
              v104 = [v126 initWithBundleIdentifiers:v98 exemptBundleIdentifiers:v99 categoryIdentifiers:v100 webDomains:v101 threshold:v103 includesPastActivity:v108 & 1];

              v105 = *(v96 + 8);
              v105(v115, v97);
              result = (v105)(v102, v97);
              *v112 = v104;
              return result;
            }

            v80 = *(v77 + 8 * v90);
            ++v82;
            if (v80)
            {
              v82 = v90;
              goto LABEL_49;
            }
          }
        }

        v62 = *(v59 + 8 * v72);
        ++v64;
        if (v62)
        {
          v64 = v72;
          goto LABEL_34;
        }
      }
    }

    v43 = *&v40[8 * v51];
    ++v45;
    if (v43)
    {
      v45 = v51;
      goto LABEL_19;
    }
  }

LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}

uint64_t DeviceActivityEvent.applications.getter()
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF8, &unk_2380343E0);
  v1 = *(v27 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v27);
  v26 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v25 = &v24 - v5;
  v6 = [*v0 applicationTokens];
  sub_237FBC910();
  v7 = sub_238032074();

  v9 = v7 + 56;
  v8 = *(v7 + 56);
  v28 = v7;
  v29 = MEMORY[0x277D84FA0];
  v10 = 1 << *(v7 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v8;
  v13 = (v10 + 63) >> 6;
  v14 = (v1 + 8);

  for (i = 0; v12; result = (*v14)(v23, v27))
  {
    v17 = i;
LABEL_9:
    v18 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v19 = (*(v28 + 48) + ((v17 << 10) | (16 * v18)));
    v20 = *v19;
    v21 = v19[1];
    sub_237FBC9FC(*v19, v21);
    sub_237FBC9FC(v20, v21);
    sub_238031BE4();
    v22 = v26;
    sub_238031C64();
    v23 = v25;
    sub_237FB6540(v25, v22);
    sub_237FA5048(v20, v21);
  }

  while (1)
  {
    v17 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v17 >= v13)
    {

      return v29;
    }

    v12 = *(v9 + 8 * v17);
    ++i;
    if (v12)
    {
      i = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t DeviceActivityEvent.categories.getter()
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF0, &unk_238033980);
  v1 = *(v27 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v27);
  v26 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v25 = &v24 - v5;
  v6 = [*v0 categoryTokens];
  sub_237FBC910();
  v7 = sub_238032074();

  v9 = v7 + 56;
  v8 = *(v7 + 56);
  v28 = v7;
  v29 = MEMORY[0x277D84FA0];
  v10 = 1 << *(v7 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v8;
  v13 = (v10 + 63) >> 6;
  v14 = (v1 + 8);

  for (i = 0; v12; result = (*v14)(v23, v27))
  {
    v17 = i;
LABEL_9:
    v18 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v19 = (*(v28 + 48) + ((v17 << 10) | (16 * v18)));
    v20 = *v19;
    v21 = v19[1];
    sub_237FBC9FC(*v19, v21);
    sub_237FBC9FC(v20, v21);
    sub_238031C44();
    v22 = v26;
    sub_238031C64();
    v23 = v25;
    sub_237FB6824(v25, v22);
    sub_237FA5048(v20, v21);
  }

  while (1)
  {
    v17 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v17 >= v13)
    {

      return v29;
    }

    v12 = *(v9 + 8 * v17);
    ++i;
    if (v12)
    {
      i = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t DeviceActivityEvent.webDomains.getter()
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE8, &unk_238035410);
  v1 = *(v27 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v27);
  v26 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v25 = &v24 - v5;
  v6 = [*v0 webDomainTokens];
  sub_237FBC910();
  v7 = sub_238032074();

  v9 = v7 + 56;
  v8 = *(v7 + 56);
  v28 = v7;
  v29 = MEMORY[0x277D84FA0];
  v10 = 1 << *(v7 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v8;
  v13 = (v10 + 63) >> 6;
  v14 = (v1 + 8);

  for (i = 0; v12; result = (*v14)(v23, v27))
  {
    v17 = i;
LABEL_9:
    v18 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v19 = (*(v28 + 48) + ((v17 << 10) | (16 * v18)));
    v20 = *v19;
    v21 = v19[1];
    sub_237FBC9FC(*v19, v21);
    sub_237FBC9FC(v20, v21);
    sub_238031CC4();
    v22 = v26;
    sub_238031C64();
    v23 = v25;
    sub_237FB6B08(v25, v22);
    sub_237FA5048(v20, v21);
  }

  while (1)
  {
    v17 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v17 >= v13)
    {

      return v29;
    }

    v12 = *(v9 + 8 * v17);
    ++i;
    if (v12)
    {
      i = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t DeviceActivityEvent.untokenizedCategories.getter()
{
  v26 = sub_238031C44();
  v1 = *(v26 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v26);
  v25 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v24 = &v23 - v5;
  v6 = [*v0 categoryIdentifiers];
  type metadata accessor for Identifier(0);
  sub_237FBCC60(&qword_27DEE4DE0, type metadata accessor for Identifier);
  v7 = sub_238032074();

  v9 = v7 + 56;
  v8 = *(v7 + 56);
  v27 = v7;
  v28 = MEMORY[0x277D84FA0];
  v10 = 1 << *(v7 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v8;
  v13 = (v10 + 63) >> 6;
  v14 = (v1 + 8);

  for (i = 0; v12; result = (*v14)(v22, v26))
  {
    v17 = i;
LABEL_9:
    v18 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v19 = *(*(v27 + 48) + ((v17 << 9) | (8 * v18)));
    sub_238031EA4();
    v20 = v19;
    v21 = v25;
    sub_238031C14();
    v22 = v24;
    sub_237FB70CC(v24, v21);
  }

  while (1)
  {
    v17 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v17 >= v13)
    {

      return v28;
    }

    v12 = *(v9 + 8 * v17);
    ++i;
    if (v12)
    {
      i = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237FB5660(uint64_t (*a1)(void), SEL *a2, void (*a3)(uint64_t, uint64_t), void (*a4)(char *, char *))
{
  v29 = a3;
  v30 = a4;
  v28 = a1(0);
  v6 = *(v28 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v28);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  v13 = [*v4 *a2];
  v14 = sub_238032074();

  v15 = *(v14 + 56);
  v31 = MEMORY[0x277D84FA0];
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v20 = (v6 + 8);

  for (i = 0; v18; result = (*v20)(v12, v28))
  {
    v23 = i;
LABEL_9:
    v24 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v25 = (*(v14 + 48) + ((v23 << 10) | (16 * v24)));
    v26 = *v25;
    v27 = v25[1];
    swift_bridgeObjectRetain_n();
    v29(v26, v27);
    v30(v12, v10);
  }

  while (1)
  {
    v23 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v23 >= v19)
    {

      return v31;
    }

    v18 = *(v14 + 56 + 8 * v23);
    ++i;
    if (v18)
    {
      i = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_237FB58EC(SEL *a1)
{
  v2 = [*v1 *a1];
  sub_2380316A4();
}

uint64_t static DeviceActivityEvent.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_237FB1680();
  return sub_238032194() & 1;
}

char *sub_237FB5990(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5028, &qword_238033C10);
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

char *sub_237FB5A94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50A8, &qword_238033C90);
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

char *sub_237FB5BA0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50B8, &unk_238033CA0);
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

char *sub_237FB5CAC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5068, &unk_238035CA0);
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

char *sub_237FB5E58(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5018, &qword_238033C00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_237FB5F68(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2380325B4();
  sub_238031ED4();
  v9 = sub_2380325F4();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_2380324E4() & 1) != 0)
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

    sub_237FB95BC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_237FB60B8(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = *v3;
  v7 = *(*v3 + 40);
  sub_2380325B4();
  sub_2380319B4();
  v8 = sub_2380325F4();
  v9 = v6 + 56;
  v10 = -1 << *(v6 + 32);
  v11 = v8 & ~v10;
  if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_62:
    v36 = *v43;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v53 = *v43;
    sub_237FBC9FC(a2, a3);
    sub_237FB973C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v43 = *v53;
    *a1 = a2;
    a1[1] = a3;
    result = 1;
    goto LABEL_64;
  }

  v12 = ~v10;
  if (a2)
  {
    v13 = 0;
  }

  else
  {
    v13 = a3 == 0xC000000000000000;
  }

  v14 = !v13;
  v51 = v14;
  v15 = a3 >> 62;
  v16 = __OFSUB__(HIDWORD(a2), a2);
  v48 = v16;
  v47 = a3;
  v49 = v12;
  v50 = BYTE6(a3);
  v45 = v6 + 56;
  v46 = v6;
  while (1)
  {
    v17 = (*(v6 + 48) + 16 * v11);
    v19 = *v17;
    v18 = v17[1];
    v20 = v18 >> 62;
    if (v18 >> 62 == 3)
    {
      if (v19)
      {
        v21 = 0;
      }

      else
      {
        v21 = v18 == 0xC000000000000000;
      }

      v23 = !v21 || v15 < 3;
      if (((v23 | v51) & 1) == 0)
      {
        v39 = 0;
        v40 = 0xC000000000000000;
        goto LABEL_63;
      }

LABEL_36:
      v24 = 0;
      if (v15 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v20 > 1)
    {
      if (v20 != 2)
      {
        goto LABEL_36;
      }

      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      v27 = __OFSUB__(v25, v26);
      v24 = v25 - v26;
      if (v27)
      {
        goto LABEL_66;
      }

      if (v15 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v20)
    {
      LODWORD(v24) = HIDWORD(v19) - v19;
      if (__OFSUB__(HIDWORD(v19), v19))
      {
        goto LABEL_67;
      }

      v24 = v24;
      if (v15 <= 1)
      {
LABEL_33:
        v28 = v50;
        if (v15)
        {
          v28 = HIDWORD(a2) - a2;
          if (v48)
          {
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
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v24 = BYTE6(v18);
      if (v15 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v15 != 2)
    {
      if (!v24)
      {
        goto LABEL_61;
      }

      goto LABEL_13;
    }

    v30 = *(a2 + 16);
    v29 = *(a2 + 24);
    v27 = __OFSUB__(v29, v30);
    v28 = v29 - v30;
    if (v27)
    {
      goto LABEL_65;
    }

LABEL_39:
    if (v24 != v28)
    {
      goto LABEL_13;
    }

    if (v24 < 1)
    {
      goto LABEL_61;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        *v53 = v19;
        *&v53[8] = v18;
        v53[10] = BYTE2(v18);
        v53[11] = BYTE3(v18);
        v53[12] = BYTE4(v18);
        v53[13] = BYTE5(v18);
        sub_237FBC9FC(v19, v18);
        v12 = v49;
        goto LABEL_60;
      }

      if (v19 >> 32 < v19)
      {
        goto LABEL_68;
      }

      sub_237FBC9FC(v19, v18);
      v33 = sub_238031664();
      if (v33)
      {
        v35 = sub_238031684();
        if (__OFSUB__(v19, v35))
        {
          goto LABEL_71;
        }

        v33 += v19 - v35;
      }

      goto LABEL_57;
    }

    if (v20 != 2)
    {
      break;
    }

    v32 = *(v19 + 16);
    v31 = *(v19 + 24);
    sub_237FBC9FC(v19, v18);
    v33 = sub_238031664();
    if (v33)
    {
      v34 = sub_238031684();
      if (__OFSUB__(v32, v34))
      {
        goto LABEL_70;
      }

      v33 += v32 - v34;
    }

    if (__OFSUB__(v31, v32))
    {
      goto LABEL_69;
    }

LABEL_57:
    sub_238031674();
    a3 = v47;
    sub_237FCBE14(v33, a2, v47, v53);
    sub_237FA5048(v19, v18);
    v9 = v45;
    v6 = v46;
    v12 = v49;
    if (v53[0])
    {
      goto LABEL_61;
    }

LABEL_13:
    v11 = (v11 + 1) & v12;
    if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  *&v53[6] = 0;
  *v53 = 0;
  sub_237FBC9FC(v19, v18);
LABEL_60:
  sub_237FCBE14(v53, a2, a3, &v52);
  sub_237FA5048(v19, v18);
  if (!v52)
  {
    goto LABEL_13;
  }

LABEL_61:
  v39 = a2;
  v40 = a3;
LABEL_63:
  sub_237FA5048(v39, v40);
  v41 = *(*(v6 + 48) + 16 * v11);
  *a1 = v41;
  sub_237FBC9FC(v41, *(&v41 + 1));
  result = 0;
LABEL_64:
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237FB6540(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF8, &unk_2380343E0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v27 - v9;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_237FBCCF0(&qword_280C34B10, &qword_27DEE4FF8, &unk_2380343E0);
  v34 = a2;
  v13 = sub_238031E24();
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v13 & ~v14;
  if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v17 = v7 + 16;
    v16 = *(v7 + 16);
    v18 = (v7 + 8);
    v19 = *(v17 + 56);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_237FBCCF0(&qword_27DEE50A0, &qword_27DEE4FF8, &unk_2380343E0);
      v21 = sub_238031E64();
      v22 = *v18;
      (*v18)(v10, v6);
      if (v21)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v20;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v22(v34, v6);
    v20(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    v23 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_237FB9BB4(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_237FB6824(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF0, &unk_238033980);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v27 - v9;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_237FBCCF0(&qword_280C34AF8, &qword_27DEE4FF0, &unk_238033980);
  v34 = a2;
  v13 = sub_238031E24();
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v13 & ~v14;
  if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v17 = v7 + 16;
    v16 = *(v7 + 16);
    v18 = (v7 + 8);
    v19 = *(v17 + 56);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_237FBCCF0(&qword_27DEE5098, &qword_27DEE4FF0, &unk_238033980);
      v21 = sub_238031E64();
      v22 = *v18;
      (*v18)(v10, v6);
      if (v21)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v20;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v22(v34, v6);
    v20(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    v23 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_237FB9E58(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_237FB6B08(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE8, &unk_238035410);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v27 - v9;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_237FBCCF0(&qword_280C34AE0, &qword_27DEE4FE8, &unk_238035410);
  v34 = a2;
  v13 = sub_238031E24();
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v13 & ~v14;
  if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v17 = v7 + 16;
    v16 = *(v7 + 16);
    v18 = (v7 + 8);
    v19 = *(v17 + 56);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_237FBCCF0(&qword_27DEE5090, &qword_27DEE4FE8, &unk_238035410);
      v21 = sub_238031E64();
      v22 = *v18;
      (*v18)(v10, v6);
      if (v21)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v20;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v22(v34, v6);
    v20(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    v23 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_237FBA0FC(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_237FB6DEC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_238031BE4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_237FBCC60(&qword_280C34B28, MEMORY[0x277CD4AB0]);
  v36 = a2;
  v13 = sub_238031E24();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_237FBCC60(&qword_27DEE5088, MEMORY[0x277CD4AB0]);
      v23 = sub_238031E64();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_237FBA3A0(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_237FB70CC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_238031C44();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_237FBCC60(&qword_280C34B20, MEMORY[0x277CD4AD0]);
  v36 = a2;
  v13 = sub_238031E24();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_237FBCC60(&qword_27DEE5078, MEMORY[0x277CD4AD0]);
      v23 = sub_238031E64();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_237FBA644(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_237FB73AC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_238031CC4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_237FBCC60(&qword_280C34AD0, MEMORY[0x277CD4B20]);
  v36 = a2;
  v13 = sub_238031E24();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_237FBCC60(&qword_27DEE5070, MEMORY[0x277CD4B20]);
      v23 = sub_238031E64();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_237FBA8E8(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_237FB768C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_238031994();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_237FBCC60(&qword_280C35050, MEMORY[0x277CC9260]);
  v36 = a2;
  v13 = sub_238031E24();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_237FBCC60(&qword_280C35048, MEMORY[0x277CC9260]);
      v23 = sub_238031E64();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_237FBAB8C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_237FB796C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEE5760, &unk_238036530);
  result = sub_238032274();
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
      sub_2380325B4();
      sub_238031ED4();
      result = sub_2380325F4();
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

uint64_t sub_237FB7BCC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50B0, &qword_238033C98);
  result = sub_238032274();
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
      sub_2380325B4();
      sub_2380319B4();
      result = sub_2380325F4();
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