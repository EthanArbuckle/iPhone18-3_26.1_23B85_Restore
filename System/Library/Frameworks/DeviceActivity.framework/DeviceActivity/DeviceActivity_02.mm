uint64_t sub_237FCADF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237FD4C48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237FCAE28(uint64_t a1)
{
  v2 = sub_237FA3634();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237FCAE64(uint64_t a1)
{
  v2 = sub_237FA3634();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t _DeviceActivityData.ActivitySegment.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51F8, &qword_238034418);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237FA3634();
  sub_238032614();
  v11 = v3[1];
  v21 = *v3;
  v22 = v11;
  v23 = 0;
  sub_237FC75C8(v21, v11);
  sub_237FC7910();
  sub_238032454();
  if (v2)
  {
    sub_237FA38D0(v21, v22);
  }

  else
  {
    sub_237FA38D0(v21, v22);
    v12 = v3[2];
    v13 = v3[3];
    LOBYTE(v21) = 1;
    sub_238032464();
    v14 = type metadata accessor for _DeviceActivityData.ActivitySegment(0);
    v15 = v14[6];
    LOBYTE(v21) = 2;
    sub_238031654();
    sub_237FA38E4(&qword_280C35078, MEMORY[0x277CC88A8]);
    sub_2380324A4();
    v16 = v14[7];
    LOBYTE(v21) = 3;
    sub_238032454();
    v17 = v14[8];
    LOBYTE(v21) = 4;
    sub_238031A64();
    sub_237FA38E4(&qword_280C35030, MEMORY[0x277CC9578]);
    sub_238032454();
    v18 = *(v3 + v14[9]);
    LOBYTE(v21) = 5;
    sub_238032484();
    v19 = *(v3 + v14[10]);
    LOBYTE(v21) = 6;
    sub_238032494();
    v21 = *(v3 + v14[11]);
    v23 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5200, &qword_238034420);
    sub_237FA3A24(&qword_280C34A78, &qword_280C34FB8);
    sub_2380324A4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t _DeviceActivityData.ActivitySegment.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_238031A64();
  v32 = *(v4 - 8);
  v33 = v4;
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v4);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v30 - v9;
  v11 = sub_238031654();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50C8, &qword_2380357C0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v30 - v18;
  if (v1[1] >> 60 == 15)
  {
    sub_2380325D4();
  }

  else
  {
    v20 = *v1;
    sub_2380325D4();
    sub_2380319B4();
  }

  v21 = v1[2];
  v22 = v1[3];
  sub_238031ED4();
  v23 = type metadata accessor for _DeviceActivityData.ActivitySegment(0);
  v24 = v23[6];
  sub_237FA38E4(&qword_27DEE51E8, MEMORY[0x277CC88A8]);
  sub_238031E34();
  sub_237FA90E4(v2 + v23[7], v19, &qword_27DEE50C8, &qword_2380357C0);
  if ((*(v12 + 48))(v19, 1, v11) == 1)
  {
    sub_2380325D4();
  }

  else
  {
    (*(v12 + 32))(v15, v19, v11);
    sub_2380325D4();
    sub_238031E34();
    (*(v12 + 8))(v15, v11);
  }

  sub_237FA90E4(v2 + v23[8], v10, &qword_27DEE51E0, &qword_2380365F0);
  v26 = v32;
  v25 = v33;
  if ((*(v32 + 48))(v10, 1, v33) == 1)
  {
    sub_2380325D4();
  }

  else
  {
    v27 = v31;
    (*(v26 + 32))(v31, v10, v25);
    sub_2380325D4();
    sub_237FA38E4(&qword_27DEE5118, MEMORY[0x277CC9578]);
    sub_238031E34();
    (*(v26 + 8))(v27, v25);
  }

  v28 = *(v2 + v23[9]);
  if (v28 == 0.0)
  {
    v28 = 0.0;
  }

  MEMORY[0x2383E5750](*&v28);
  MEMORY[0x2383E5730](*(v2 + v23[10]));
  return sub_237FD19B4(a1, *(v2 + v23[11]));
}

uint64_t sub_237FCB6BC(void (*a1)(_BYTE *))
{
  sub_2380325B4();
  a1(v3);
  return sub_2380325F4();
}

uint64_t sub_237FCB734(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_2380325B4();
  a3(v5);
  return sub_2380325F4();
}

uint64_t sub_237FCB798(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_2380325B4();
  a4(v6);
  return sub_2380325F4();
}

uint64_t DeviceActivityData.ActivitySegment.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5210, &qword_238034430);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v43 - v5;
  v52 = type metadata accessor for DeviceActivityData.CategoryActivity(0);
  v50 = *(v52 - 8);
  v7 = *(v50 + 64);
  MEMORY[0x28223BE20](v52);
  v51 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for _DeviceActivityData.CategoryActivity(0);
  v44 = *(v9 - 8);
  v10 = *(v44 + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = (&v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - v14;
  v16 = type metadata accessor for DeviceActivityData.ActivitySegment(0);
  v46 = *(v16 - 1);
  v17 = *(v46 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v18 + 24);
  v48 = v21;
  v22 = sub_238031654();
  v23 = *(v22 - 8);
  (*(v23 + 56))(&v20[v21], 1, 1, v22);
  v24 = v16[7];
  v25 = sub_238031A64();
  (*(*(v25 - 8) + 56))(&v20[v24], 1, 1, v25);
  v26 = type metadata accessor for _DeviceActivityData.ActivitySegment(0);
  (*(v23 + 16))(v20, a1 + v26[6], v22);
  *&v20[v16[5]] = *(a1 + v26[9]);
  sub_237FD3ACC(a1 + v26[7], &v20[v48], &qword_27DEE50C8, &qword_2380357C0);
  sub_237FD3ACC(a1 + v26[8], &v20[v24], &qword_27DEE51E0, &qword_2380365F0);
  v27 = *(a1 + v26[10]);
  v47 = v16;
  v48 = a1;
  v28 = v16[8];
  v45 = v20;
  *&v20[v28] = v27;
  v29 = *(a1 + v26[11]);
  v30 = *(v29 + 16);
  if (v30)
  {
    v31 = v29 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
    v32 = *(v44 + 72);
    v33 = (v50 + 48);
    v34 = MEMORY[0x277D84F90];
    do
    {
      sub_237FA4CFC(v31, v15, type metadata accessor for _DeviceActivityData.CategoryActivity);
      sub_237FA4CFC(v15, v13, type metadata accessor for _DeviceActivityData.CategoryActivity);
      DeviceActivityData.CategoryActivity.init(_:)(v13, v6);
      sub_237FA4DCC(v15, type metadata accessor for _DeviceActivityData.CategoryActivity);
      if ((*v33)(v6, 1, v52) == 1)
      {
        sub_237FA5750(v6, &qword_27DEE5210, &qword_238034430);
      }

      else
      {
        sub_237FA9354(v6, v51, type metadata accessor for DeviceActivityData.CategoryActivity);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_237FB5DB8(0, v34[2] + 1, 1, v34);
        }

        v36 = v34[2];
        v35 = v34[3];
        v37 = v50;
        if (v36 >= v35 >> 1)
        {
          v38 = sub_237FB5DB8(v35 > 1, v36 + 1, 1, v34);
          v37 = v50;
          v34 = v38;
        }

        v34[2] = v36 + 1;
        sub_237FA9354(v51, v34 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v36, type metadata accessor for DeviceActivityData.CategoryActivity);
      }

      v31 += v32;
      --v30;
    }

    while (v30);
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
  }

  sub_237FA4DCC(v48, type metadata accessor for _DeviceActivityData.ActivitySegment);
  v39 = v47;
  v40 = v45;
  *&v45[v47[9]] = v34;
  v41 = v49;
  sub_237FA4CFC(v40, v49, type metadata accessor for DeviceActivityData.ActivitySegment);
  (*(v46 + 56))(v41, 0, 1, v39);
  return sub_237FA4DCC(v40, type metadata accessor for DeviceActivityData.ActivitySegment);
}

uint64_t sub_237FCBD6C(void **a1)
{
  v2 = *(type metadata accessor for _DeviceActivityData.CategoryActivity(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_238010D58(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_237FCEFBC(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_237FCBE14@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
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
    v10 = sub_238031664();
    if (v10)
    {
      v11 = sub_238031684();
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
      result = sub_238031674();
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
  v10 = sub_238031664();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_238031684();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_238031674();
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

uint64_t sub_237FCC044(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
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
    v10 = sub_237FD275C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_237FA5048(a3, a4);
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
  sub_237FCBE14(v14, a3, a4, &v13);
  v10 = v4;
  sub_237FA5048(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

void *sub_237FCC224(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50A8, &qword_238033C90);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

size_t sub_237FCC2D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_237FCC3CC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_238032184();

  return sub_237FCDE84(a1, v5);
}

unint64_t sub_237FCC410(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_238032234();

  return sub_237FCDF48(a1, v5);
}

uint64_t sub_237FCC454(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5308, &unk_238034780);
  v39 = a2;
  result = sub_238032394();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_2380325B4();
      sub_238031ED4();
      result = sub_2380325F4();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_237FCC6F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50E8, &qword_238033EB8);
  v39 = a2;
  result = sub_238032394();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_2380325B4();
      sub_238031ED4();
      result = sub_2380325F4();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_237FCC99C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE52E8, &qword_238034768);
  v42 = a2;
  result = sub_238032394();
  v13 = result;
  if (*(v10 + 16))
  {
    v40 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = v22 | (v14 << 6);
      v26 = *(*(v10 + 48) + 8 * v25);
      v27 = *(v41 + 72);
      v28 = *(v10 + 56) + v27 * v25;
      if (v42)
      {
        sub_237FA9354(v28, v9, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      }

      else
      {
        sub_237FA4CFC(v28, v9, type metadata accessor for _DeviceActivityData.WebDomainActivity);
        v29 = v26;
      }

      v30 = *(v13 + 40);
      result = sub_238032184();
      v31 = -1 << *(v13 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v13 + 48) + 8 * v21) = v26;
      result = sub_237FA9354(v9, *(v13 + 56) + v27 * v21, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero((v10 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_237FCCCE4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE52E0, &qword_238034760);
  v42 = a2;
  result = sub_238032394();
  v13 = result;
  if (*(v10 + 16))
  {
    v40 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = v22 | (v14 << 6);
      v26 = *(*(v10 + 48) + 8 * v25);
      v27 = *(v41 + 72);
      v28 = *(v10 + 56) + v27 * v25;
      if (v42)
      {
        sub_237FA9354(v28, v9, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      }

      else
      {
        sub_237FA4CFC(v28, v9, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        v29 = v26;
      }

      v30 = *(v13 + 40);
      result = sub_238032184();
      v31 = -1 << *(v13 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v13 + 48) + 8 * v21) = v26;
      result = sub_237FA9354(v9, *(v13 + 56) + v27 * v21, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero((v10 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_237FCD02C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for _DeviceActivityData.CategoryActivity(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE52F8, &qword_238034770);
  v44 = a2;
  result = sub_238032394();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_237FA9354(v31, v45, type metadata accessor for _DeviceActivityData.CategoryActivity);
      }

      else
      {
        sub_237FA4CFC(v31, v45, type metadata accessor for _DeviceActivityData.CategoryActivity);
      }

      v32 = *(v12 + 40);
      sub_2380325B4();
      sub_238031ED4();
      result = sub_2380325F4();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_237FA9354(v45, *(v12 + 56) + v30 * v20, type metadata accessor for _DeviceActivityData.CategoryActivity);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_237FCD3CC(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_238032394();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_2380325B4();
      sub_238031ED4();
      result = sub_2380325F4();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_237FCD66C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5288, &qword_238034720);
  v40 = a2;
  result = sub_238032394();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_2380325B4();
      sub_238031ED4();
      result = sub_2380325F4();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_237FCD92C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5260, &qword_238034700);
  v38 = a2;
  result = sub_238032394();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v25 = *(*(v5 + 56) + 4 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_2380325B4();
      sub_238031ED4();
      result = sub_2380325F4();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 4 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_237FCDBCC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5250, &qword_2380346F0);
  result = sub_238032394();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_237FC156C((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_237FD4F00(v24, &v38);
        sub_237FD4FB0(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_238032234();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_237FC156C(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
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
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

unint64_t sub_237FCDE84(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_237FD5060();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_238032194();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_237FCDF48(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_237FD4F00(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2383E53B0](v9, a1);
      sub_237FD4F5C(v9);
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

id sub_237FCE010()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5308, &unk_238034780);
  v2 = *v0;
  v3 = sub_238032384();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

id sub_237FCE17C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50E8, &qword_238033EB8);
  v2 = *v0;
  v3 = sub_238032384();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

id sub_237FCE2E8()
{
  v1 = v0;
  v2 = type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE52E8, &qword_238034768);
  v6 = *v0;
  v7 = sub_238032384();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        v23 = *(v25 + 72) * v21;
        sub_237FA4CFC(*(v6 + 56) + v23, v5, type metadata accessor for _DeviceActivityData.WebDomainActivity);
        *(*(v8 + 48) + 8 * v21) = v22;
        sub_237FA9354(v5, *(v8 + 56) + v23, type metadata accessor for _DeviceActivityData.WebDomainActivity);
        result = v22;
      }

      while (v16);
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

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
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

id sub_237FCE520()
{
  v1 = v0;
  v2 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE52E0, &qword_238034760);
  v6 = *v0;
  v7 = sub_238032384();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        v23 = *(v25 + 72) * v21;
        sub_237FA4CFC(*(v6 + 56) + v23, v5, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        *(*(v8 + 48) + 8 * v21) = v22;
        sub_237FA9354(v5, *(v8 + 56) + v23, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        result = v22;
      }

      while (v16);
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

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
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

void *sub_237FCE758()
{
  v1 = v0;
  v2 = type metadata accessor for _DeviceActivityData.CategoryActivity(0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE52F8, &qword_238034770);
  v5 = *v0;
  v6 = sub_238032384();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_237FA4CFC(*(v5 + 56) + v27, v31, type metadata accessor for _DeviceActivityData.CategoryActivity);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_237FA9354(v26, *(v28 + 56) + v27, type metadata accessor for _DeviceActivityData.CategoryActivity);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_237FCE9D8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_238032384();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
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
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_237FCEB38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5288, &qword_238034720);
  v2 = *v0;
  v3 = sub_238032384();
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

void *sub_237FCECB0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5260, &qword_238034700);
  v2 = *v0;
  v3 = sub_238032384();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LODWORD(v18) = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v18;
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

void *sub_237FCEE18()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5250, &qword_2380346F0);
  v2 = *v0;
  v3 = sub_238032384();
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
        v18 = 40 * v17;
        sub_237FD4F00(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_237FD4FB0(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_237FC156C(v22, (*(v4 + 56) + v17));
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

uint64_t sub_237FCEFBC(uint64_t *a1)
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
        type metadata accessor for _DeviceActivityData.CategoryActivity(0);
        v6 = sub_238031FD4();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for _DeviceActivityData.CategoryActivity(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_237FCFAA0(v8, v9, a1, v4, type metadata accessor for _DeviceActivityData.CategoryActivity, type metadata accessor for _DeviceActivityData.CategoryActivity, type metadata accessor for _DeviceActivityData.CategoryActivity, type metadata accessor for _DeviceActivityData.CategoryActivity, sub_237FDC8B0);
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
    return sub_237FAD5CC(0, v2, 1, a1, type metadata accessor for _DeviceActivityData.CategoryActivity, type metadata accessor for _DeviceActivityData.CategoryActivity, type metadata accessor for _DeviceActivityData.CategoryActivity);
  }

  return result;
}

uint64_t sub_237FCF178(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v111 = a1;
  v9 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  v119 = *(v9 - 8);
  v10 = *(v119 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v114 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v122 = &v108 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v123 = &v108 - v16;
  result = MEMORY[0x28223BE20](v15);
  v19 = &v108 - v18;
  v121 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_96:
    v5 = *v111;
    if (!*v111)
    {
      goto LABEL_135;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_129:
      result = sub_238010D30(a4);
    }

    v125 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v121)
      {
        v104 = *(result + 16 * a4);
        v105 = result;
        v106 = *(result + 16 * (a4 - 1) + 40);
        sub_237FD03AC(*v121 + *(v119 + 72) * v104, *v121 + *(v119 + 72) * *(result + 16 * (a4 - 1) + 32), *v121 + *(v119 + 72) * v106, v5);
        if (v6)
        {
        }

        if (v106 < v104)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_238010D30(v105);
        }

        if (a4 - 2 >= *(v105 + 2))
        {
          goto LABEL_123;
        }

        v107 = &v105[16 * a4];
        *v107 = v104;
        *(v107 + 1) = v106;
        v125 = v105;
        sub_238010CA4(a4 - 1);
        result = v125;
        a4 = *(v125 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v21 = 0;
  v22 = MEMORY[0x277D84F90];
  v110 = a4;
  v124 = v9;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v115 = v22;
    if (v21 + 1 >= v20)
    {
      v20 = v21 + 1;
    }

    else
    {
      v25 = *(v119 + 72);
      v5 = *v121 + v25 * v24;
      v118 = *v121;
      v26 = v118;
      sub_237FA4CFC(v118 + v25 * v24, v19, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      v27 = v26 + v25 * v23;
      v28 = v23;
      v29 = v123;
      sub_237FA4CFC(v27, v123, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      v30 = *(v9 + 28);
      v31 = *&v19[v30];
      v32 = *(v29 + v30);
      sub_237FA4DCC(v29, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      result = sub_237FA4DCC(v19, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      v109 = v28;
      v33 = v28 + 2;
      v120 = v25;
      v34 = v118 + v25 * (v28 + 2);
      while (v20 != v33)
      {
        sub_237FA4CFC(v34, v19, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        v35 = v123;
        sub_237FA4CFC(v5, v123, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        v36 = *(v124 + 28);
        v37 = *&v19[v36];
        v38 = *(v35 + v36);
        sub_237FA4DCC(v35, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        result = sub_237FA4DCC(v19, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        ++v33;
        v34 += v120;
        v5 += v120;
        if (v32 < v31 == v38 >= v37)
        {
          v20 = v33 - 1;
          break;
        }
      }

      v23 = v109;
      a4 = v110;
      v9 = v124;
      if (v32 < v31)
      {
        if (v20 < v109)
        {
          goto LABEL_126;
        }

        if (v109 < v20)
        {
          v108 = v6;
          v39 = v120 * (v20 - 1);
          v40 = v20 * v120;
          v41 = v20;
          v42 = v20;
          v43 = v109;
          v44 = v109 * v120;
          do
          {
            if (v43 != --v42)
            {
              v45 = *v121;
              if (!*v121)
              {
                goto LABEL_132;
              }

              v5 = v45 + v44;
              sub_237FA9354(v45 + v44, v114, type metadata accessor for _DeviceActivityData.ApplicationActivity);
              if (v44 < v39 || v5 >= v45 + v40)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v44 != v39)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_237FA9354(v114, v45 + v39, type metadata accessor for _DeviceActivityData.ApplicationActivity);
            }

            ++v43;
            v39 -= v120;
            v40 -= v120;
            v44 += v120;
          }

          while (v43 < v42);
          v6 = v108;
          v23 = v109;
          a4 = v110;
          v9 = v124;
          v20 = v41;
        }
      }
    }

    v46 = v121[1];
    if (v20 < v46)
    {
      if (__OFSUB__(v20, v23))
      {
        goto LABEL_125;
      }

      if (v20 - v23 < a4)
      {
        if (__OFADD__(v23, a4))
        {
          goto LABEL_127;
        }

        if ((v23 + a4) >= v46)
        {
          v47 = v121[1];
        }

        else
        {
          v47 = v23 + a4;
        }

        if (v47 < v23)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v20 != v47)
        {
          break;
        }
      }
    }

    v21 = v20;
    if (v20 < v23)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v115;
    }

    else
    {
      result = sub_237FB5990(0, *(v115 + 2) + 1, 1, v115);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v48 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v48 >> 1)
    {
      result = sub_237FB5990((v48 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v49 = &v22[16 * a4];
    *(v49 + 4) = v23;
    *(v49 + 5) = v21;
    v50 = *v111;
    if (!*v111)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (1)
      {
        v51 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v52 = *(v22 + 4);
          v53 = *(v22 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_52:
          if (v55)
          {
            goto LABEL_113;
          }

          v68 = &v22[16 * v5];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_116;
          }

          v74 = &v22[16 * v51 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_120;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v78 = &v22[16 * v5];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_66:
        if (v73)
        {
          goto LABEL_115;
        }

        v81 = &v22[16 * v51];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_118;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v51 - 1;
        if (v51 - 1 >= v5)
        {
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
          goto LABEL_128;
        }

        if (!*v121)
        {
          goto LABEL_131;
        }

        v89 = v22;
        v90 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v51 + 40];
        sub_237FD03AC(*v121 + *(v119 + 72) * v90, *v121 + *(v119 + 72) * *&v22[16 * v51 + 32], *v121 + *(v119 + 72) * v5, v50);
        if (v6)
        {
        }

        if (v5 < v90)
        {
          goto LABEL_109;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v91 = v89;
        }

        else
        {
          v91 = sub_238010D30(v89);
        }

        v9 = v124;
        if (a4 >= *(v91 + 2))
        {
          goto LABEL_110;
        }

        v92 = &v91[16 * a4];
        *(v92 + 4) = v90;
        *(v92 + 5) = v5;
        v125 = v91;
        result = sub_238010CA4(v51);
        v22 = v125;
        v5 = *(v125 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v22[16 * v5 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_111;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_112;
      }

      v63 = &v22[16 * v5];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_114;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_117;
      }

      if (v67 >= v59)
      {
        v85 = &v22[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_121;
        }

        if (v54 < v88)
        {
          v51 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = v121[1];
    a4 = v110;
    if (v21 >= v20)
    {
      goto LABEL_96;
    }
  }

  v108 = v6;
  v109 = v23;
  a4 = *v121;
  v93 = *(v119 + 72);
  v94 = *v121 + v93 * (v20 - 1);
  v95 = -v93;
  v96 = v23 - v20;
  v112 = v93;
  v113 = v47;
  v5 = a4 + v20 * v93;
LABEL_86:
  v120 = v20;
  v116 = v5;
  v117 = v96;
  v118 = v94;
  v97 = v124;
  while (1)
  {
    sub_237FA4CFC(v5, v19, type metadata accessor for _DeviceActivityData.ApplicationActivity);
    v98 = v123;
    sub_237FA4CFC(v94, v123, type metadata accessor for _DeviceActivityData.ApplicationActivity);
    v99 = *(v97 + 28);
    v100 = *&v19[v99];
    v101 = *(v98 + v99);
    sub_237FA4DCC(v98, type metadata accessor for _DeviceActivityData.ApplicationActivity);
    result = sub_237FA4DCC(v19, type metadata accessor for _DeviceActivityData.ApplicationActivity);
    if (v101 >= v100)
    {
LABEL_85:
      v20 = v120 + 1;
      v21 = v113;
      v94 = v118 + v112;
      v96 = v117 - 1;
      v5 = v116 + v112;
      if (v120 + 1 != v113)
      {
        goto LABEL_86;
      }

      v6 = v108;
      v23 = v109;
      v9 = v124;
      if (v113 < v109)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (!a4)
    {
      break;
    }

    v102 = v122;
    sub_237FA9354(v5, v122, type metadata accessor for _DeviceActivityData.ApplicationActivity);
    v97 = v124;
    swift_arrayInitWithTakeFrontToBack();
    sub_237FA9354(v102, v94, type metadata accessor for _DeviceActivityData.ApplicationActivity);
    v94 += v95;
    v5 += v95;
    if (__CFADD__(v96++, 1))
    {
      goto LABEL_85;
    }
  }

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
  return result;
}

uint64_t sub_237FCFAA0(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t (*a8)(void), void (*a9)(unint64_t *, unint64_t *, unint64_t *))
{
  v124 = a8;
  v129 = a7;
  v114 = a1;
  v123 = a9;
  v12 = a5(0);
  v125 = *(v12 - 8);
  v13 = *(v125 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v118 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v128 = &v111 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v130 = &v111 - v19;
  result = MEMORY[0x28223BE20](v18);
  v22 = &v111 - v21;
  v127 = a3;
  v23 = *(a3 + 8);
  if (v23 < 1)
  {
    v25 = MEMORY[0x277D84F90];
LABEL_97:
    a3 = *v114;
    if (!*v114)
    {
      goto LABEL_136;
    }

    a4 = v25;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = v115;
    if (isUniquelyReferenced_nonNull_native)
    {
      result = a4;
    }

    else
    {
LABEL_130:
      result = sub_238010D30(a4);
    }

    v132 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v127)
      {
        v107 = *(result + 16 * a4);
        v108 = result;
        v109 = *(result + 16 * (a4 - 1) + 40);
        sub_237FD087C(*v127 + *(v125 + 72) * v107, *v127 + *(v125 + 72) * *(result + 16 * (a4 - 1) + 32), *v127 + *(v125 + 72) * v109, a3, v124, a6, v123);
        if (v41)
        {
        }

        if (v109 < v107)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = sub_238010D30(v108);
        }

        if (a4 - 2 >= *(v108 + 2))
        {
          goto LABEL_124;
        }

        v110 = &v108[16 * a4];
        *v110 = v107;
        *(v110 + 1) = v109;
        v132 = v108;
        sub_238010CA4(a4 - 1);
        result = v132;
        a4 = *(v132 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v24 = 0;
  v25 = MEMORY[0x277D84F90];
  v113 = a4;
  v131 = v12;
  while (1)
  {
    v26 = v24;
    v27 = v24 + 1;
    v119 = v25;
    if (v24 + 1 >= v23)
    {
      v40 = v24 + 1;
      v41 = v115;
    }

    else
    {
      v28 = *v127;
      v29 = *(v125 + 72);
      a3 = *v127 + v29 * v27;
      sub_237FA4CFC(a3, v22, a6);
      v30 = v130;
      sub_237FA4CFC(v28 + v29 * v26, v130, a6);
      v31 = *(v12 + 24);
      v32 = *&v22[v31];
      v33 = *(v30 + v31);
      sub_237FA4DCC(v30, a6);
      result = sub_237FA4DCC(v22, a6);
      v112 = v26;
      v34 = v26 + 2;
      v126 = v29;
      v35 = v28 + v29 * (v26 + 2);
      while (v23 != v34)
      {
        sub_237FA4CFC(v35, v22, a6);
        v36 = v130;
        sub_237FA4CFC(a3, v130, a6);
        v37 = *(v12 + 24);
        v38 = *&v22[v37];
        v39 = *(v36 + v37);
        sub_237FA4DCC(v36, a6);
        result = sub_237FA4DCC(v22, a6);
        ++v34;
        v35 += v126;
        a3 += v126;
        if (v33 < v32 == v39 >= v38)
        {
          v40 = v34 - 1;
          goto LABEL_11;
        }
      }

      v40 = v23;
LABEL_11:
      a4 = v113;
      v26 = v112;
      v41 = v115;
      if (v33 < v32)
      {
        if (v40 < v112)
        {
          goto LABEL_127;
        }

        if (v112 < v40)
        {
          v42 = v126 * (v40 - 1);
          v43 = v40 * v126;
          v122 = v40;
          v44 = v40;
          v45 = v112;
          v46 = v112 * v126;
          do
          {
            if (v45 != --v44)
            {
              a3 = *v127;
              if (!*v127)
              {
                goto LABEL_133;
              }

              sub_237FA9354(a3 + v46, v118, v129);
              if (v46 < v42 || a3 + v46 >= a3 + v43)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v46 != v42)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_237FA9354(v118, a3 + v42, v129);
            }

            ++v45;
            v42 -= v126;
            v43 -= v126;
            v46 += v126;
          }

          while (v45 < v44);
          v41 = v115;
          a4 = v113;
          v12 = v131;
          v26 = v112;
          v40 = v122;
        }
      }
    }

    v47 = v127[1];
    if (v40 < v47)
    {
      if (__OFSUB__(v40, v26))
      {
        goto LABEL_126;
      }

      if (v40 - v26 < a4)
      {
        if (__OFADD__(v26, a4))
        {
          goto LABEL_128;
        }

        if ((v26 + a4) >= v47)
        {
          v48 = v127[1];
        }

        else
        {
          v48 = v26 + a4;
        }

        if (v48 < v26)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v40 != v48)
        {
          break;
        }
      }
    }

    v24 = v40;
    if (v40 < v26)
    {
      goto LABEL_125;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v25 = v119;
    }

    else
    {
      result = sub_237FB5990(0, *(v119 + 2) + 1, 1, v119);
      v25 = result;
    }

    a4 = *(v25 + 2);
    v49 = *(v25 + 3);
    a3 = a4 + 1;
    if (a4 >= v49 >> 1)
    {
      result = sub_237FB5990((v49 > 1), a4 + 1, 1, v25);
      v25 = result;
    }

    *(v25 + 2) = a3;
    v50 = &v25[16 * a4];
    *(v50 + 4) = v26;
    *(v50 + 5) = v24;
    v126 = *v114;
    if (!v126)
    {
      goto LABEL_135;
    }

    if (a4)
    {
      while (1)
      {
        v51 = a3 - 1;
        if (a3 >= 4)
        {
          break;
        }

        if (a3 == 3)
        {
          v52 = *(v25 + 4);
          v53 = *(v25 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_54:
          if (v55)
          {
            goto LABEL_114;
          }

          v68 = &v25[16 * a3];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_117;
          }

          v74 = &v25[16 * v51 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_121;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = a3 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v78 = &v25[16 * a3];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_68:
        if (v73)
        {
          goto LABEL_116;
        }

        v81 = &v25[16 * v51];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_119;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_75:
        a4 = v51 - 1;
        if (v51 - 1 >= a3)
        {
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
          goto LABEL_129;
        }

        if (!*v127)
        {
          goto LABEL_132;
        }

        v89 = v25;
        a3 = *&v25[16 * a4 + 32];
        v90 = *&v25[16 * v51 + 40];
        sub_237FD087C(*v127 + *(v125 + 72) * a3, *v127 + *(v125 + 72) * *&v25[16 * v51 + 32], *v127 + *(v125 + 72) * v90, v126, v124, a6, v123);
        if (v41)
        {
        }

        if (v90 < a3)
        {
          goto LABEL_110;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v91 = v89;
        }

        else
        {
          v91 = sub_238010D30(v89);
        }

        v12 = v131;
        if (a4 >= *(v91 + 2))
        {
          goto LABEL_111;
        }

        v92 = &v91[16 * a4];
        *(v92 + 4) = a3;
        *(v92 + 5) = v90;
        v132 = v91;
        a4 = &v132;
        result = sub_238010CA4(v51);
        v25 = v132;
        a3 = *(v132 + 16);
        if (a3 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v25[16 * a3 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_112;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_113;
      }

      v63 = &v25[16 * a3];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_115;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_118;
      }

      if (v67 >= v59)
      {
        v85 = &v25[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_122;
        }

        if (v54 < v88)
        {
          v51 = a3 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v115 = v41;
    v23 = v127[1];
    a4 = v113;
    if (v24 >= v23)
    {
      goto LABEL_97;
    }
  }

  v115 = v41;
  a4 = *v127;
  v93 = *(v125 + 72);
  v94 = *v127 + v93 * (v40 - 1);
  v95 = -v93;
  v112 = v26;
  v96 = v26 - v40;
  v122 = v40;
  v116 = v93;
  v117 = v48;
  a3 = a4 + v40 * v93;
LABEL_87:
  v120 = a3;
  v121 = v96;
  v126 = v94;
  v97 = v94;
  while (1)
  {
    sub_237FA4CFC(a3, v22, a6);
    v98 = v130;
    sub_237FA4CFC(v97, v130, a6);
    v99 = *(v12 + 24);
    v100 = *&v22[v99];
    v101 = *(v98 + v99);
    sub_237FA4DCC(v98, a6);
    result = sub_237FA4DCC(v22, a6);
    if (v101 >= v100)
    {
LABEL_86:
      v24 = v117;
      v94 = v126 + v116;
      v96 = v121 - 1;
      a3 = v120 + v116;
      if (++v122 != v117)
      {
        goto LABEL_87;
      }

      v41 = v115;
      v26 = v112;
      if (v117 < v112)
      {
        goto LABEL_125;
      }

      goto LABEL_35;
    }

    if (!a4)
    {
      break;
    }

    v102 = v128;
    v103 = v129;
    sub_237FA9354(a3, v128, v129);
    swift_arrayInitWithTakeFrontToBack();
    v104 = v103;
    v12 = v131;
    sub_237FA9354(v102, v97, v104);
    v97 += v95;
    a3 += v95;
    if (__CFADD__(v96++, 1))
    {
      goto LABEL_86;
    }
  }

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
  return result;
}

uint64_t sub_237FD03AC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = a3;
  v48 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  v8 = *(*(v48 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v48);
  v47 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v13 = v43 - v12;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v16 = v49 - a2;
  if (v49 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v17 = (a2 - a1) / v15;
  v52 = a1;
  v51 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v43[1] = v4;
    v26 = a4 + v19;
    if (v19 < 1)
    {
      v29 = a4 + v19;
    }

    else
    {
      v27 = -v15;
      v28 = a4 + v19;
      v29 = v26;
      v45 = v27;
      v46 = a4;
      do
      {
        v43[0] = v29;
        v30 = a2;
        v31 = a2 + v27;
        while (1)
        {
          v33 = v49;
          if (v30 <= a1)
          {
            v52 = v30;
            v50 = v43[0];
            goto LABEL_59;
          }

          v44 = v29;
          v49 += v27;
          v34 = v28 + v27;
          sub_237FA4CFC(v34, v13, type metadata accessor for _DeviceActivityData.ApplicationActivity);
          v35 = v31;
          v36 = v31;
          v37 = v13;
          v38 = v47;
          sub_237FA4CFC(v36, v47, type metadata accessor for _DeviceActivityData.ApplicationActivity);
          v39 = *(v48 + 28);
          v40 = *(v37 + v39);
          v41 = *(v38 + v39);
          v42 = v38;
          v13 = v37;
          sub_237FA4DCC(v42, type metadata accessor for _DeviceActivityData.ApplicationActivity);
          sub_237FA4DCC(v37, type metadata accessor for _DeviceActivityData.ApplicationActivity);
          if (v41 < v40)
          {
            break;
          }

          v29 = v34;
          if (v33 < v28 || v49 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v35;
          }

          else
          {
            v31 = v35;
            if (v33 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v34;
          v32 = v34 > v46;
          v27 = v45;
          if (!v32)
          {
            a2 = v30;
            goto LABEL_58;
          }
        }

        if (v33 < v30 || v49 >= v30)
        {
          a2 = v35;
          swift_arrayInitWithTakeFrontToBack();
          v29 = v44;
          v27 = v45;
        }

        else
        {
          v29 = v44;
          v27 = v45;
          a2 = v35;
          if (v33 != v30)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v28 > v46);
    }

LABEL_58:
    v52 = a2;
    v50 = v29;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v20 = a4 + v18;
    v50 = a4 + v18;
    if (v18 >= 1 && a2 < v49)
    {
      do
      {
        sub_237FA4CFC(a2, v13, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        v22 = v47;
        sub_237FA4CFC(a4, v47, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        v23 = *(v48 + 28);
        v24 = *&v13[v23];
        v25 = *(v22 + v23);
        sub_237FA4DCC(v22, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        sub_237FA4DCC(v13, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        if (v25 >= v24)
        {
          if (a1 < a4 || a1 >= a4 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v51 = a4 + v15;
          a4 += v15;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v15;
        }

        a1 += v15;
        v52 = a1;
      }

      while (a4 < v20 && a2 < v49);
    }
  }

LABEL_59:
  sub_237FDC7B0(&v52, &v51, &v50);
  return 1;
}

uint64_t sub_237FD087C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), void (*a7)(unint64_t *, unint64_t *, unint64_t *))
{
  v52 = a6;
  v55 = a3;
  v54 = a5(0);
  v11 = *(*(v54 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v54);
  v53 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v16 = &v47 - v15;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_60;
  }

  v19 = v55 - a2;
  if (v55 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_61;
  }

  v48 = a7;
  v20 = (a2 - a1) / v18;
  v58 = a1;
  v57 = a4;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || a2 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v30 = a4 + v22;
    if (v22 >= 1)
    {
      v31 = -v18;
      v32 = a4 + v22;
      v50 = v31;
      v51 = a4;
      v33 = v52;
      do
      {
        v47 = v30;
        v34 = a2;
        v35 = a2 + v31;
        while (1)
        {
          v37 = v55;
          if (v34 <= a1)
          {
            v58 = v34;
            v56 = v47;
            goto LABEL_58;
          }

          v49 = v30;
          v55 += v31;
          v38 = v32 + v31;
          sub_237FA4CFC(v38, v16, v33);
          v39 = v35;
          v40 = v35;
          v41 = v16;
          v42 = v53;
          sub_237FA4CFC(v40, v53, v33);
          v43 = *(v54 + 24);
          v44 = *(v41 + v43);
          v45 = *(v42 + v43);
          v46 = v42;
          v16 = v41;
          sub_237FA4DCC(v46, v33);
          sub_237FA4DCC(v41, v33);
          if (v45 < v44)
          {
            break;
          }

          v30 = v38;
          if (v37 < v32 || v55 >= v32)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v38;
            v35 = v39;
          }

          else
          {
            v35 = v39;
            if (v37 != v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v30 = v38;
            }
          }

          v32 = v30;
          v36 = v38 > v51;
          v31 = v50;
          if (!v36)
          {
            a2 = v34;
            goto LABEL_57;
          }
        }

        if (v37 < v34 || v55 >= v34)
        {
          a2 = v39;
          swift_arrayInitWithTakeFrontToBack();
          v31 = v50;
        }

        else
        {
          a2 = v39;
          v31 = v50;
          if (v37 != v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v30 = v49;
      }

      while (v32 > v51);
    }

LABEL_57:
    v58 = a2;
    v56 = v30;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v21;
    v56 = a4 + v21;
    if (v21 >= 1 && a2 < v55)
    {
      do
      {
        v25 = v52;
        sub_237FA4CFC(a2, v16, v52);
        v26 = v53;
        sub_237FA4CFC(a4, v53, v25);
        v27 = *(v54 + 24);
        v28 = *&v16[v27];
        v29 = *(v26 + v27);
        sub_237FA4DCC(v26, v25);
        sub_237FA4DCC(v16, v25);
        if (v29 >= v28)
        {
          if (a1 < a4 || a1 >= a4 + v18)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v57 = a4 + v18;
          a4 += v18;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v18)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v18;
        }

        a1 += v18;
        v58 = a1;
      }

      while (a4 < v23 && a2 < v55);
    }
  }

LABEL_58:
  v48(&v58, &v57, &v56);
  return 1;
}

uint64_t sub_237FD0DC4(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v41 = a6;
  v42 = a7;
  v11 = a5(0);
  v40 = *(v11 - 8);
  v12 = *(v40 + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v39 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = a4 + 8;
  v19 = -1 << *(a4 + 32);
  if (-v19 < 64)
  {
    v20 = ~(-1 << -v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & a4[8];
  if (!a2)
  {
LABEL_18:
    v22 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v18;
    a1[2] = ~v19;
    a1[3] = v22;
    a1[4] = v21;
    return a3;
  }

  if (!a3)
  {
    v22 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v37 = a1;
    v38 = a3;
    result = 0;
    v22 = 0;
    v36 = v19;
    v23 = (63 - v19) >> 6;
    v24 = 1;
    while (v21)
    {
LABEL_14:
      v27 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      a1 = a4;
      v28 = a4[7];
      v29 = v39;
      v30 = *(v40 + 72);
      sub_237FA4CFC(v28 + v30 * (v27 | (v22 << 6)), v39, v41);
      v31 = v29;
      v32 = v42;
      sub_237FA9354(v31, v17, v42);
      sub_237FA9354(v17, a2, v32);
      if (v24 == v38)
      {
        a4 = a1;
        a1 = v37;
        a3 = v38;
        goto LABEL_23;
      }

      a2 += v30;
      result = v24;
      v33 = __OFADD__(v24++, 1);
      a4 = a1;
      if (v33)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v25 = v22;
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v26 >= v23)
      {
        break;
      }

      v21 = v18[v26];
      ++v25;
      if (v21)
      {
        v22 = v26;
        goto LABEL_14;
      }
    }

    v21 = 0;
    if (v23 <= v22 + 1)
    {
      v34 = v22 + 1;
    }

    else
    {
      v34 = v23;
    }

    v22 = v34 - 1;
    a3 = result;
    a1 = v37;
LABEL_23:
    v19 = v36;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_237FD1008(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_237FD1160(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DeviceActivityData.WebDomainActivity(0);
  v39 = *(v3 - 8);
  v40 = v3;
  v4 = *(v39 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DeviceActivityData.ApplicationActivity(0);
  v37 = *(v7 - 8);
  v38 = v7;
  v8 = *(v37 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DeviceActivityData.CategoryActivity(0);
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 16);
  result = MEMORY[0x2383E5730](v16);
  v46 = v16;
  if (v16)
  {
    v18 = 0;
    v19 = v11[5];
    v44 = v11[6];
    v45 = v19;
    v20 = v11[7];
    v42 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v43 = v20;
    v41 = *(v12 + 72);
    v48 = v15;
    do
    {
      v47 = v18;
      sub_237FA4CFC(v42 + v41 * v18, v15, type metadata accessor for DeviceActivityData.CategoryActivity);
      sub_238031C44();
      sub_237FA38E4(&qword_280C34B20, MEMORY[0x277CD4AD0]);
      sub_238031E34();
      v21 = *&v15[v45];
      if (v21 == 0.0)
      {
        v21 = 0.0;
      }

      MEMORY[0x2383E5750](*&v21);
      v22 = *&v15[v44];
      MEMORY[0x2383E5730](*(v22 + 16));
      v23 = *(v22 + 16);
      if (v23)
      {
        v24 = v38[5];
        v51 = v38[6];
        v52 = v24;
        v25 = v38[7];
        v49 = v38[8];
        v50 = v25;
        v26 = v22 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
        v27 = *(v37 + 72);
        do
        {
          sub_237FA4CFC(v26, v10, type metadata accessor for DeviceActivityData.ApplicationActivity);
          sub_238031BE4();
          sub_237FA38E4(&qword_280C34B28, MEMORY[0x277CD4AB0]);
          sub_238031E34();
          v28 = *&v10[v52];
          if (v28 == 0.0)
          {
            v28 = 0.0;
          }

          MEMORY[0x2383E5750](*&v28);
          MEMORY[0x2383E5730](*&v10[v51]);
          MEMORY[0x2383E5730](*&v10[v50]);
          v29 = v10[v49];
          sub_2380325D4();
          sub_237FA4DCC(v10, type metadata accessor for DeviceActivityData.ApplicationActivity);
          v26 += v27;
          --v23;
        }

        while (v23);
      }

      v30 = *&v48[v43];
      MEMORY[0x2383E5730](*(v30 + 16));
      v31 = *(v30 + 16);
      if (v31)
      {
        v32 = *(v40 + 20);
        v51 = *(v40 + 24);
        v52 = v32;
        v33 = v30 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
        v34 = *(v39 + 72);
        do
        {
          sub_237FA4CFC(v33, v6, type metadata accessor for DeviceActivityData.WebDomainActivity);
          sub_238031CC4();
          sub_237FA38E4(&qword_280C34AD0, MEMORY[0x277CD4B20]);
          sub_238031E34();
          v35 = *&v6[v52];
          if (v35 == 0.0)
          {
            v35 = 0.0;
          }

          MEMORY[0x2383E5750](*&v35);
          v36 = v6[v51];
          sub_2380325D4();
          sub_237FA4DCC(v6, type metadata accessor for DeviceActivityData.WebDomainActivity);
          v33 += v34;
          --v31;
        }

        while (v31);
      }

      v15 = v48;
      v18 = v47 + 1;
      result = sub_237FA4DCC(v48, type metadata accessor for DeviceActivityData.CategoryActivity);
    }

    while (v18 != v46);
  }

  return result;
}

uint64_t sub_237FD1640(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DeviceActivityData.WebDomainActivity(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x2383E5730](v8);
  if (v8)
  {
    v10 = *(v3 + 20);
    v11 = *(v3 + 24);
    v12 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v13 = *(v4 + 72);
    do
    {
      sub_237FA4CFC(v12, v7, type metadata accessor for DeviceActivityData.WebDomainActivity);
      sub_238031CC4();
      sub_237FA38E4(&qword_280C34AD0, MEMORY[0x277CD4B20]);
      sub_238031E34();
      v14 = *&v7[v10];
      if (v14 == 0.0)
      {
        v14 = 0.0;
      }

      MEMORY[0x2383E5750](*&v14);
      v15 = v7[v11];
      sub_2380325D4();
      result = sub_237FA4DCC(v7, type metadata accessor for DeviceActivityData.WebDomainActivity);
      v12 += v13;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_237FD17E8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DeviceActivityData.ApplicationActivity(0);
  v4 = *(v3 - 1);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x2383E5730](v8);
  if (v8)
  {
    v10 = v3[5];
    v17 = v3[6];
    v18 = v10;
    v11 = v3[7];
    v12 = v3[8];
    v13 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v14 = *(v4 + 72);
    do
    {
      sub_237FA4CFC(v13, v7, type metadata accessor for DeviceActivityData.ApplicationActivity);
      sub_238031BE4();
      sub_237FA38E4(&qword_280C34B28, MEMORY[0x277CD4AB0]);
      sub_238031E34();
      v15 = *&v7[v18];
      if (v15 == 0.0)
      {
        v15 = 0.0;
      }

      MEMORY[0x2383E5750](*&v15);
      MEMORY[0x2383E5730](*&v7[v17]);
      MEMORY[0x2383E5730](*&v7[v11]);
      v16 = v7[v12];
      sub_2380325D4();
      result = sub_237FA4DCC(v7, type metadata accessor for DeviceActivityData.ApplicationActivity);
      v13 += v14;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_237FD19B4(uint64_t a1, uint64_t a2)
{
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE8, &unk_238035410);
  v74 = *(v72 - 8);
  v4 = *(v74 + 64);
  MEMORY[0x28223BE20](v72);
  v69 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51B0, &qword_2380343D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v48 - v8;
  v53 = type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
  v52 = *(v53 - 1);
  v10 = *(v52 + 64);
  MEMORY[0x28223BE20](v53);
  v12 = (&v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF0, &unk_238033980);
  v73 = *(v13 - 8);
  v14 = *(v73 + 64);
  MEMORY[0x28223BE20](v13);
  v51 = &v48 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51D0, &qword_238034400);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v48 - v18;
  v20 = type metadata accessor for _DeviceActivityData.CategoryActivity(0);
  v70 = *(v20 - 1);
  v21 = *(v70 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = (&v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = a2;
  v25 = *(a2 + 16);
  result = MEMORY[0x2383E5730](v25);
  v63 = v25;
  if (v25)
  {
    v27 = 0;
    v60 = v24 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
    v59 = (v73 + 48);
    v50 = (v73 + 32);
    v28 = v20[5];
    v57 = v20[6];
    v58 = v28;
    v49 = (v73 + 8);
    v71 = (v74 + 48);
    v68 = (v74 + 32);
    v29 = v20[8];
    v56 = v20[7];
    v55 = v29;
    v54 = *(v70 + 72);
    v66 = v12;
    v67 = (v74 + 8);
    v61 = v19;
    v62 = v13;
    v64 = v23;
    do
    {
      v65 = v27;
      sub_237FA4CFC(v60 + v54 * v27, v23, type metadata accessor for _DeviceActivityData.CategoryActivity);
      v30 = *v23;
      v31 = v23[1];
      sub_238031ED4();
      sub_237FA90E4(v23 + v58, v19, &qword_27DEE51D0, &qword_238034400);
      if ((*v59)(v19, 1, v13) == 1)
      {
        sub_2380325D4();
      }

      else
      {
        v32 = v51;
        (*v50)(v51, v19, v13);
        sub_2380325D4();
        sub_237FD500C(&qword_280C34AF8, &qword_27DEE4FF0, &unk_238033980);
        sub_238031E34();
        v33 = v32;
        v23 = v64;
        (*v49)(v33, v13);
      }

      v34 = *(v23 + v57);
      if (v34 == 0.0)
      {
        v34 = 0.0;
      }

      MEMORY[0x2383E5750](*&v34);
      sub_237FD23C0(a1, *(v23 + v56));
      v35 = *(v23 + v55);
      MEMORY[0x2383E5730](*(v35 + 16));
      v36 = *(v35 + 16);
      if (v36)
      {
        v38 = v53[5];
        v37 = v53[6];
        v73 = v53[7];
        v74 = v37;
        v39 = v35 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
        v40 = *(v52 + 72);
        v70 = v38;
        do
        {
          sub_237FA4CFC(v39, v12, type metadata accessor for _DeviceActivityData.WebDomainActivity);
          v45 = *v12;
          v46 = v12[1];
          sub_238031ED4();
          sub_237FA90E4(v12 + v38, v9, &qword_27DEE51B0, &qword_2380343D0);
          v47 = v72;
          if ((*v71)(v9, 1, v72) == 1)
          {
            sub_2380325D4();
          }

          else
          {
            v41 = v69;
            (*v68)(v69, v9, v47);
            sub_2380325D4();
            sub_237FD500C(&qword_280C34AE0, &qword_27DEE4FE8, &unk_238035410);
            sub_238031E34();
            v12 = v66;
            v42 = v41;
            v38 = v70;
            (*v67)(v42, v47);
          }

          v43 = *(v12 + v74);
          if (v43 == 0.0)
          {
            v43 = 0.0;
          }

          MEMORY[0x2383E5750](*&v43);
          v44 = *(v12 + v73);
          sub_2380325D4();
          sub_237FA4DCC(v12, type metadata accessor for _DeviceActivityData.WebDomainActivity);
          v39 += v40;
          --v36;
        }

        while (v36);
      }

      v23 = v64;
      v27 = v65 + 1;
      result = sub_237FA4DCC(v64, type metadata accessor for _DeviceActivityData.CategoryActivity);
      v13 = v62;
      v19 = v61;
    }

    while (v27 != v63);
  }

  return result;
}

uint64_t sub_237FD2088(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE8, &unk_238035410);
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51B0, &qword_2380343D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(a2 + 16);
  result = MEMORY[0x2383E5730](v16);
  if (v16)
  {
    v18 = v11[5];
    v32 = v11[6];
    v33 = v18;
    v19 = v11[7];
    v20 = v12;
    v21 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v22 = (v29 + 48);
    v30 = (v29 + 32);
    v31 = v19;
    v29 += 8;
    v23 = *(v20 + 72);
    do
    {
      sub_237FA4CFC(v21, v15, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      v26 = *v15;
      v27 = v15[1];
      sub_238031ED4();
      sub_237FA90E4(v15 + v33, v10, &qword_27DEE51B0, &qword_2380343D0);
      if ((*v22)(v10, 1, v3) == 1)
      {
        sub_2380325D4();
      }

      else
      {
        (*v30)(v6, v10, v3);
        sub_2380325D4();
        sub_237FD500C(&qword_280C34AE0, &qword_27DEE4FE8, &unk_238035410);
        sub_238031E34();
        (*v29)(v6, v3);
      }

      v24 = *(v15 + v32);
      if (v24 == 0.0)
      {
        v24 = 0.0;
      }

      MEMORY[0x2383E5750](*&v24);
      v25 = *(v15 + v31);
      sub_2380325D4();
      result = sub_237FA4DCC(v15, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      v21 += v23;
      --v16;
    }

    while (v16);
  }

  return result;
}

uint64_t sub_237FD23C0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF8, &unk_2380343E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v31 = &v29 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51C0, &unk_238034790);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(a2 + 16);
  result = MEMORY[0x2383E5730](v16);
  if (v16)
  {
    v18 = v11[5];
    v37 = (v15 + v11[6]);
    v38 = v18;
    v19 = v11[7];
    v35 = v11[8];
    v36 = v19;
    v20 = v11[9];
    v33 = v11[10];
    v34 = v20;
    v21 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v22 = (v4 + 48);
    v29 = (v4 + 8);
    v30 = (v4 + 32);
    v32 = *(v12 + 72);
    do
    {
      sub_237FA4CFC(v21, v15, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      v26 = *v15;
      v27 = v15[1];
      sub_238031ED4();
      sub_237FA90E4(v15 + v38, v10, &qword_27DEE51C0, &unk_238034790);
      if ((*v22)(v10, 1, v3) == 1)
      {
        sub_2380325D4();
      }

      else
      {
        v28 = v31;
        (*v30)(v31, v10, v3);
        sub_2380325D4();
        sub_237FD500C(&qword_280C34B10, &qword_27DEE4FF8, &unk_2380343E0);
        sub_238031E34();
        (*v29)(v28, v3);
      }

      if (v37[1])
      {
        v23 = *v37;
        sub_2380325D4();
        sub_238031ED4();
      }

      else
      {
        sub_2380325D4();
      }

      v24 = *(v15 + v36);
      if (v24 == 0.0)
      {
        v24 = 0.0;
      }

      MEMORY[0x2383E5750](*&v24);
      MEMORY[0x2383E5730](*(v15 + v35));
      MEMORY[0x2383E5730](*(v15 + v34));
      v25 = *(v15 + v33);
      sub_2380325D4();
      result = sub_237FA4DCC(v15, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      v21 += v32;
      --v16;
    }

    while (v16);
  }

  return result;
}

uint64_t sub_237FD275C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_238031664();
  v11 = result;
  if (result)
  {
    result = sub_238031684();
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

  sub_238031674();
  sub_237FCBE14(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_237FD2814(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_237FBC9FC(a3, a4);
          return sub_237FCC044(v13, a2, a3, a4) & 1;
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

uint64_t _s14DeviceActivity0aB4DataV0B7SegmentV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_238031A64();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v52 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v53 = &v48 - v10;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE52C0, &qword_238034750);
  v11 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v55 = &v48 - v12;
  v13 = sub_238031654();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50C8, &qword_2380357C0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v48 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE52C8, &qword_238034758);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v48 - v24;
  if ((sub_2380315E4() & 1) == 0)
  {
    goto LABEL_17;
  }

  v26 = type metadata accessor for DeviceActivityData.ActivitySegment(0);
  if (*(a1 + *(v26 + 20)) != *(a2 + *(v26 + 20)))
  {
    goto LABEL_17;
  }

  v48 = v5;
  v49 = v4;
  v27 = *(v26 + 24);
  v28 = *(v22 + 48);
  v50 = a1;
  v51 = v26;
  sub_237FA90E4(a1 + v27, v25, &qword_27DEE50C8, &qword_2380357C0);
  v29 = a2 + v27;
  v30 = a2;
  sub_237FA90E4(v29, &v25[v28], &qword_27DEE50C8, &qword_2380357C0);
  v31 = *(v14 + 48);
  if (v31(v25, 1, v13) == 1)
  {
    if (v31(&v25[v28], 1, v13) == 1)
    {
      sub_237FA5750(v25, &qword_27DEE50C8, &qword_2380357C0);
      goto LABEL_10;
    }

LABEL_8:
    v32 = &qword_27DEE52C8;
    v33 = &qword_238034758;
LABEL_16:
    sub_237FA5750(v25, v32, v33);
    goto LABEL_17;
  }

  sub_237FA90E4(v25, v21, &qword_27DEE50C8, &qword_2380357C0);
  if (v31(&v25[v28], 1, v13) == 1)
  {
    (*(v14 + 8))(v21, v13);
    goto LABEL_8;
  }

  (*(v14 + 32))(v17, &v25[v28], v13);
  sub_237FA38E4(&qword_27DEE52D8, MEMORY[0x277CC88A8]);
  v34 = sub_238031E64();
  v35 = *(v14 + 8);
  v35(v17, v13);
  v35(v21, v13);
  sub_237FA5750(v25, &qword_27DEE50C8, &qword_2380357C0);
  if ((v34 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  v36 = v50;
  v37 = v51[7];
  v25 = v55;
  v38 = *(v54 + 48);
  sub_237FA90E4(v50 + v37, v55, &qword_27DEE51E0, &qword_2380365F0);
  sub_237FA90E4(v30 + v37, &v25[v38], &qword_27DEE51E0, &qword_2380365F0);
  v40 = v48;
  v39 = v49;
  v41 = *(v48 + 48);
  if (v41(v25, 1, v49) != 1)
  {
    v42 = v53;
    sub_237FA90E4(v25, v53, &qword_27DEE51E0, &qword_2380365F0);
    if (v41(&v25[v38], 1, v39) != 1)
    {
      v45 = v52;
      (*(v40 + 32))(v52, &v25[v38], v39);
      sub_237FA38E4(&qword_27DEE52D0, MEMORY[0x277CC9578]);
      v46 = sub_238031E64();
      v47 = *(v40 + 8);
      v47(v45, v39);
      v47(v42, v39);
      sub_237FA5750(v25, &qword_27DEE51E0, &qword_2380365F0);
      if ((v46 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }

    (*(v40 + 8))(v42, v39);
    goto LABEL_15;
  }

  if (v41(&v25[v38], 1, v39) != 1)
  {
LABEL_15:
    v32 = &qword_27DEE52C0;
    v33 = &qword_238034750;
    goto LABEL_16;
  }

  sub_237FA5750(v25, &qword_27DEE51E0, &qword_2380365F0);
LABEL_20:
  if (*(v36 + v51[8]) == *(v30 + v51[8]))
  {
    v43 = sub_237FC1FBC(*(v36 + v51[9]), *(v30 + v51[9]));
    return v43 & 1;
  }

LABEL_17:
  v43 = 0;
  return v43 & 1;
}

uint64_t _s14DeviceActivity01_aB4DataV0B7SegmentV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_238031A64();
  v66 = *(v4 - 8);
  v67 = v4;
  v5 = *(v66 + 64);
  MEMORY[0x28223BE20](v4);
  v61 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v62 = &v60 - v9;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE52C0, &qword_238034750);
  v10 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v65 = &v60 - v11;
  v12 = sub_238031654();
  v68 = *(v12 - 8);
  v69 = v12;
  v13 = *(v68 + 64);
  MEMORY[0x28223BE20](v12);
  v63 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50C8, &qword_2380357C0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v60 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE52C8, &qword_238034758);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v60 - v21;
  v23 = *a1;
  v24 = a1[1];
  v25 = a1;
  v27 = *a2;
  v26 = a2[1];
  v28 = a2;
  if (v24 >> 60 == 15)
  {
    if (v26 >> 60 == 15)
    {
      sub_237FC75C8(v23, v24);
      sub_237FC75C8(v27, v26);
      sub_237FA38D0(v23, v24);
      goto LABEL_7;
    }

LABEL_5:
    sub_237FC75C8(v23, v24);
    sub_237FC75C8(v27, v26);
    sub_237FA38D0(v23, v24);
    sub_237FA38D0(v27, v26);
    goto LABEL_25;
  }

  if (v26 >> 60 == 15)
  {
    goto LABEL_5;
  }

  sub_237FC75C8(v23, v24);
  sub_237FC75C8(v27, v26);
  v29 = sub_237FD2814(v23, v24, v27, v26);
  sub_237FA38D0(v27, v26);
  sub_237FA38D0(v23, v24);
  if ((v29 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_7:
  v30 = v25;
  v31 = v28;
  if ((v25[2] != v28[2] || v25[3] != v28[3]) && (sub_2380324E4() & 1) == 0)
  {
    goto LABEL_25;
  }

  v32 = type metadata accessor for _DeviceActivityData.ActivitySegment(0);
  v33 = v32[6];
  if ((sub_2380315E4() & 1) == 0)
  {
    goto LABEL_25;
  }

  v34 = v32[7];
  v35 = *(v19 + 48);
  sub_237FA90E4(v25 + v34, v22, &qword_27DEE50C8, &qword_2380357C0);
  sub_237FA90E4(v31 + v34, &v22[v35], &qword_27DEE50C8, &qword_2380357C0);
  v37 = v68;
  v36 = v69;
  v38 = *(v68 + 48);
  if (v38(v22, 1, v69) == 1)
  {
    if (v38(&v22[v35], 1, v36) == 1)
    {
      sub_237FA5750(v22, &qword_27DEE50C8, &qword_2380357C0);
      goto LABEL_18;
    }

LABEL_16:
    v39 = &qword_27DEE52C8;
    v40 = &qword_238034758;
    v41 = v22;
LABEL_24:
    sub_237FA5750(v41, v39, v40);
    goto LABEL_25;
  }

  sub_237FA90E4(v22, v18, &qword_27DEE50C8, &qword_2380357C0);
  if (v38(&v22[v35], 1, v36) == 1)
  {
    (*(v37 + 8))(v18, v36);
    goto LABEL_16;
  }

  v42 = &v22[v35];
  v43 = v63;
  (*(v37 + 32))(v63, v42, v36);
  sub_237FA38E4(&qword_27DEE52D8, MEMORY[0x277CC88A8]);
  v44 = sub_238031E64();
  v45 = *(v37 + 8);
  v45(v43, v36);
  v45(v18, v36);
  sub_237FA5750(v22, &qword_27DEE50C8, &qword_2380357C0);
  if ((v44 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_18:
  v46 = v32;
  v47 = v32[8];
  v48 = v65;
  v49 = *(v64 + 48);
  sub_237FA90E4(v30 + v47, v65, &qword_27DEE51E0, &qword_2380365F0);
  sub_237FA90E4(v31 + v47, v48 + v49, &qword_27DEE51E0, &qword_2380365F0);
  v51 = v66;
  v50 = v67;
  v52 = *(v66 + 48);
  if (v52(v48, 1, v67) != 1)
  {
    v53 = v62;
    sub_237FA90E4(v48, v62, &qword_27DEE51E0, &qword_2380365F0);
    if (v52(v48 + v49, 1, v50) != 1)
    {
      v56 = v48 + v49;
      v57 = v61;
      (*(v51 + 32))(v61, v56, v50);
      sub_237FA38E4(&qword_27DEE52D0, MEMORY[0x277CC9578]);
      v58 = sub_238031E64();
      v59 = *(v51 + 8);
      v59(v57, v50);
      v59(v53, v50);
      sub_237FA5750(v48, &qword_27DEE51E0, &qword_2380365F0);
      if ((v58 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_28;
    }

    (*(v51 + 8))(v53, v50);
    goto LABEL_23;
  }

  if (v52(v48 + v49, 1, v50) != 1)
  {
LABEL_23:
    v39 = &qword_27DEE52C0;
    v40 = &qword_238034750;
    v41 = v48;
    goto LABEL_24;
  }

  sub_237FA5750(v48, &qword_27DEE51E0, &qword_2380365F0);
LABEL_28:
  if (*(v30 + v46[9]) == *(v31 + v46[9]) && *(v30 + v46[10]) == *(v31 + v46[10]))
  {
    v54 = sub_237FC286C(*(v30 + v46[11]), *(v31 + v46[11]));
    return v54 & 1;
  }

LABEL_25:
  v54 = 0;
  return v54 & 1;
}

unint64_t sub_237FD37A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5288, &qword_238034720);
    v3 = sub_2380323A4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_237FA4EA4(v5, v6, sub_237FA4F28);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_237FD38D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5300, &qword_238034778);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE52F8, &qword_238034770);
    v8 = sub_2380323A4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_237FA90E4(v10, v6, &qword_27DEE5300, &qword_238034778);
      v12 = *v6;
      v13 = v6[1];
      result = sub_237FA4EA4(*v6, v13, sub_237FA4F28);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for _DeviceActivityData.CategoryActivity(0);
      result = sub_237FA9354(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for _DeviceActivityData.CategoryActivity);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_237FD3ACC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_237FD3B34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _DeviceActivityData.CategoryActivity(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_237FD3C50()
{
  sub_238031654();
  if (v0 <= 0x3F)
  {
    sub_237FD3F70(319, &qword_280C35360, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_237FD3F70(319, &qword_280C35340, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_237FD3F70(319, &qword_27DEE5238, type metadata accessor for DeviceActivityData.CategoryActivity, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_237FD3DA4()
{
  sub_237FD3F20();
  if (v0 <= 0x3F)
  {
    sub_238031654();
    if (v1 <= 0x3F)
    {
      sub_237FD3F70(319, &qword_280C35360, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_237FD3F70(319, &qword_280C35340, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_237FD3F70(319, &qword_280C350D8, type metadata accessor for _DeviceActivityData.CategoryActivity, MEMORY[0x277D83940]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_237FD3F20()
{
  if (!qword_280C356C0)
  {
    v0 = sub_2380321B4();
    if (!v1)
    {
      atomic_store(v0, &qword_280C356C0);
    }
  }
}

void sub_237FD3F70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_237FD3FE8()
{
  result = qword_27DEE5240;
  if (!qword_27DEE5240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE5240);
  }

  return result;
}

unint64_t sub_237FD4040()
{
  result = qword_280C34F68;
  if (!qword_280C34F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C34F68);
  }

  return result;
}

unint64_t sub_237FD4098()
{
  result = qword_280C34F70;
  if (!qword_280C34F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C34F70);
  }

  return result;
}

unint64_t sub_237FD40EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE52B8, &qword_238034748);
    v3 = sub_2380323A4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_237FA4EA4(v5, v6, sub_237FA4F28);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_237FD4204(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE52A8, &qword_238034738);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE52B0, &qword_238034740);
    v8 = sub_2380323A4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_237FA90E4(v10, v6, &qword_27DEE52A8, &qword_238034738);
      v12 = *v6;
      v13 = v6[1];
      result = sub_237FA4EA4(*v6, v13, sub_237FA4F28);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for _DeviceActivityData.Metadata(0);
      result = sub_237FA9354(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for _DeviceActivityData.Metadata);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_237FD4400(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5298, &qword_238035C20);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE52A0, &qword_238034730);
    v8 = sub_2380323A4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_237FA90E4(v10, v6, &qword_27DEE5298, &qword_238035C20);
      v12 = *v6;
      v13 = v6[1];
      result = sub_237FA4EA4(*v6, v13, sub_237FA4F28);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for _DeviceActivityData.ActivitySegment(0);
      result = sub_237FA9354(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for _DeviceActivityData.ActivitySegment);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_237FD45FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5278, &qword_238035BF0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5280, &qword_238034718);
    v8 = sub_2380323A4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_237FA90E4(v10, v6, &qword_27DEE5278, &qword_238035BF0);
      v12 = *v6;
      v13 = v6[1];
      result = sub_237FA4EA4(*v6, v13, sub_237FA4F28);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_238031A64();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_237FD47FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5248, &qword_2380346E8);
    v3 = sub_2380323A4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_237FA4EA4(v5, v6, sub_237FA4F28);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_237FD490C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5268, &qword_238034708);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5270, &qword_238034710);
    v8 = sub_2380323A4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_237FA90E4(v10, v6, &qword_27DEE5268, &qword_238034708);
      v12 = *v6;
      v13 = v6[1];
      result = sub_237FA4EA4(*v6, v13, sub_237FA4F28);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_238031B94();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_237FD4B0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5250, &qword_2380346F0);
    v3 = sub_2380323A4();
    v4 = a1 + 32;

    while (1)
    {
      sub_237FA90E4(v4, v13, &qword_27DEE5258, &qword_2380346F8);
      result = sub_237FCC410(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_237FC156C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_237FD4C48(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x8000000238036D60 == a2 || (sub_2380324E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F5A64726F636572 && a2 == 0xEE00656D614E656ELL || (sub_2380324E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65746E4965746164 && a2 == 0xEC0000006C617672 || (sub_2380324E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x41747365676E6F6CLL && a2 == 0xEF79746976697463 || (sub_2380324E4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6369507473726966 && a2 == 0xEB0000000070756BLL || (sub_2380324E4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000238036DA0 == a2 || (sub_2380324E4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000026 && 0x8000000238036DC0 == a2 || (sub_2380324E4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000238036DF0 == a2)
  {

    return 7;
  }

  else
  {
    v5 = sub_2380324E4();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_237FD4FB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_237FD500C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_237FD5060()
{
  result = qword_27DEE52F0;
  if (!qword_27DEE52F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DEE52F0);
  }

  return result;
}

uint64_t DeviceActivityData.ApplicationActivity.application.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238031BE4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DeviceActivityData.ApplicationActivity.application.setter(uint64_t a1)
{
  v3 = sub_238031BE4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t DeviceActivityData.ApplicationActivity.totalActivityDuration.setter(double a1)
{
  result = type metadata accessor for DeviceActivityData.ApplicationActivity(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t DeviceActivityData.ApplicationActivity.numberOfPickups.setter(uint64_t a1)
{
  result = type metadata accessor for DeviceActivityData.ApplicationActivity(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t DeviceActivityData.ApplicationActivity.numberOfNotifications.setter(uint64_t a1)
{
  result = type metadata accessor for DeviceActivityData.ApplicationActivity(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t DeviceActivityData.ApplicationActivity.isTrusted.setter(char a1)
{
  result = type metadata accessor for DeviceActivityData.ApplicationActivity(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

int *DeviceActivityData.ApplicationActivity.init(_:totalActivityDuration:numberOfPickups:numberOfNotifications:isTrusted:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v12 = sub_238031BE4();
  (*(*(v12 - 8) + 32))(a5, a1, v12);
  result = type metadata accessor for DeviceActivityData.ApplicationActivity(0);
  *(a5 + result[5]) = a6;
  *(a5 + result[6]) = a2;
  *(a5 + result[7]) = a3;
  *(a5 + result[8]) = a4;
  return result;
}

uint64_t DeviceActivityData.ApplicationActivity.hash(into:)()
{
  sub_238031BE4();
  sub_237FD6950(&qword_280C34B28, MEMORY[0x277CD4AB0]);
  sub_238031E34();
  v1 = type metadata accessor for DeviceActivityData.ApplicationActivity(0);
  v2 = *(v0 + v1[5]);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x2383E5750](*&v2);
  MEMORY[0x2383E5730](*(v0 + v1[6]));
  MEMORY[0x2383E5730](*(v0 + v1[7]));
  v3 = *(v0 + v1[8]);
  return sub_2380325D4();
}

uint64_t _DeviceActivityData.ApplicationActivity.bundleIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t _DeviceActivityData.ApplicationActivity.bundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t _DeviceActivityData.ApplicationActivity.token.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for _DeviceActivityData.ApplicationActivity(0) + 20);

  return sub_237FD64D4(v3, a1);
}

uint64_t _DeviceActivityData.ApplicationActivity.token.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for _DeviceActivityData.ApplicationActivity(0) + 20);

  return sub_237FA4A1C(a1, v3);
}

uint64_t _DeviceActivityData.ApplicationActivity.localizedDisplayName.getter()
{
  v1 = (v0 + *(type metadata accessor for _DeviceActivityData.ApplicationActivity(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t _DeviceActivityData.ApplicationActivity.localizedDisplayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for _DeviceActivityData.ApplicationActivity(0) + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t _DeviceActivityData.ApplicationActivity.totalActivityDuration.setter(double a1)
{
  result = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t _DeviceActivityData.ApplicationActivity.numberOfPickups.setter(uint64_t a1)
{
  result = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t _DeviceActivityData.ApplicationActivity.numberOfNotifications.setter(uint64_t a1)
{
  result = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t _DeviceActivityData.ApplicationActivity.isTrusted.setter(char a1)
{
  result = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t _DeviceActivityData.ApplicationActivity.init(bundleIdentifier:token:localizedDisplayName:totalActivityDuration:numberOfPickups:numberOfNotifications:isTrusted:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, char *a9@<X8>, double a10@<D0>)
{
  v18 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  v19 = v18[5];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF8, &unk_2380343E0);
  (*(*(v20 - 8) + 56))(&a9[v19], 1, 1, v20);
  v21 = &a9[v18[6]];
  *a9 = a1;
  *(a9 + 1) = a2;
  result = sub_237FA4A1C(a3, &a9[v19]);
  *v21 = a4;
  *(v21 + 1) = a5;
  *&a9[v18[7]] = a10;
  *&a9[v18[8]] = a6;
  *&a9[v18[9]] = a7;
  a9[v18[10]] = a8;
  return result;
}

int *_DeviceActivityData.ApplicationActivity.update(using:)(uint64_t a1)
{
  result = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  *(v1 + result[7]) = *(a1 + result[7]) + *(v1 + result[7]);
  v4 = result[8];
  v5 = *(a1 + v4);
  v6 = *(v1 + v4);
  v7 = __OFADD__(v6, v5);
  v8 = v6 + v5;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(v1 + v4) = v8;
    v9 = result[9];
    v10 = *(a1 + v9);
    v11 = *(v1 + v9);
    v7 = __OFADD__(v11, v10);
    v12 = v11 + v10;
    if (!v7)
    {
      *(v1 + v9) = v12;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237FD5C20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237FD6DD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237FD5C54(uint64_t a1)
{
  v2 = sub_237FA47D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237FD5C90(uint64_t a1)
{
  v2 = sub_237FA47D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t _DeviceActivityData.ApplicationActivity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5310, &qword_2380347A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237FA47D8();
  sub_238032614();
  v11 = *v3;
  v12 = v3[1];
  v23[15] = 0;
  sub_238032464();
  if (!v2)
  {
    v13 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
    v14 = v13[5];
    v23[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF8, &unk_2380343E0);
    sub_237FA49CC(&qword_280C34B18);
    sub_238032454();
    v15 = (v3 + v13[6]);
    v16 = *v15;
    v17 = v15[1];
    v23[13] = 2;
    sub_238032444();
    v18 = *(v3 + v13[7]);
    v23[12] = 3;
    sub_238032484();
    v19 = *(v3 + v13[8]);
    v23[11] = 4;
    sub_238032494();
    v20 = *(v3 + v13[9]);
    v23[10] = 5;
    sub_238032494();
    v21 = *(v3 + v13[10]);
    v23[9] = 6;
    sub_238032474();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t _DeviceActivityData.ApplicationActivity.hash(into:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF8, &unk_2380343E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51C0, &unk_238034790);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = *v1;
  v12 = v1[1];
  sub_238031ED4();
  v13 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  sub_237FD64D4(v1 + v13[5], v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_2380325D4();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_2380325D4();
    sub_237FA49CC(&qword_280C34B10);
    sub_238031E34();
    (*(v3 + 8))(v6, v2);
  }

  v14 = (v1 + v13[6]);
  if (v14[1])
  {
    v15 = *v14;
    sub_2380325D4();
    sub_238031ED4();
  }

  else
  {
    sub_2380325D4();
  }

  v16 = *(v1 + v13[7]);
  if (v16 == 0.0)
  {
    v16 = 0.0;
  }

  MEMORY[0x2383E5750](*&v16);
  MEMORY[0x2383E5730](*(v1 + v13[8]));
  MEMORY[0x2383E5730](*(v1 + v13[9]));
  v17 = *(v1 + v13[10]);
  return sub_2380325D4();
}

uint64_t sub_237FD61E0(void (*a1)(_BYTE *))
{
  sub_2380325B4();
  a1(v3);
  return sub_2380325F4();
}

uint64_t sub_237FD6258(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_2380325B4();
  a3(v5);
  return sub_2380325F4();
}

uint64_t sub_237FD62BC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_2380325B4();
  a4(v6);
  return sub_2380325F4();
}

uint64_t DeviceActivityData.ApplicationActivity.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51C0, &unk_238034790);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  v8 = *a1;
  v9 = a1[1];
  v10 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  sub_237FD64D4(a1 + v10[5], v7);
  v11 = (a1 + v10[6]);
  v12 = *v11;
  v13 = v11[1];

  sub_238031BB4();
  v14 = *(a1 + v10[7]);
  v15 = type metadata accessor for DeviceActivityData.ApplicationActivity(0);
  *(a2 + v15[5]) = v14;
  *(a2 + v15[6]) = *(a1 + v10[8]);
  *(a2 + v15[7]) = *(a1 + v10[9]);
  LOBYTE(v8) = *(a1 + v10[10]);
  result = sub_237FA4B3C(a1);
  *(a2 + v15[8]) = v8;
  return result;
}

uint64_t _s14DeviceActivity0aB4DataV011ApplicationB0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x2383E4D40]() & 1) != 0 && (v4 = type metadata accessor for DeviceActivityData.ApplicationActivity(0), *(a1 + v4[5]) == *(a2 + v4[5])) && *(a1 + v4[6]) == *(a2 + v4[6]) && *(a1 + v4[7]) == *(a2 + v4[7]))
  {
    v5 = *(a1 + v4[8]) ^ *(a2 + v4[8]) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_237FD64D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51C0, &unk_238034790);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s14DeviceActivity01_aB4DataV011ApplicationB0V2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF8, &unk_2380343E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51C0, &unk_238034790);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51C8, &unk_2380343F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_2380324E4() & 1) == 0)
  {
    goto LABEL_10;
  }

  v31 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  v17 = *(v31 + 20);
  v18 = *(v13 + 48);
  sub_237FD64D4(a1 + v17, v16);
  sub_237FD64D4(a2 + v17, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_237FD64D4(v16, v12);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v18], v4);
      sub_237FA49CC(&qword_27DEE50A0);
      v22 = sub_238031E64();
      v23 = *(v5 + 8);
      v23(v8, v4);
      v23(v12, v4);
      sub_237FA5750(v16, &qword_27DEE51C0, &unk_238034790);
      if ((v22 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    (*(v5 + 8))(v12, v4);
LABEL_9:
    sub_237FA5750(v16, &qword_27DEE51C8, &unk_2380343F0);
    goto LABEL_10;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_237FA5750(v16, &qword_27DEE51C0, &unk_238034790);
LABEL_13:
  v24 = v31;
  v25 = *(v31 + 24);
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = v28[1];
  if (v27)
  {
    if (!v29 || (*v26 != *v28 || v27 != v29) && (sub_2380324E4() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v29)
  {
    goto LABEL_10;
  }

  if (*(a1 + v24[7]) == *(a2 + v24[7]) && *(a1 + v24[8]) == *(a2 + v24[8]) && *(a1 + v24[9]) == *(a2 + v24[9]))
  {
    v20 = *(a1 + v24[10]) ^ *(a2 + v24[10]) ^ 1;
    return v20 & 1;
  }

LABEL_10:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_237FD6950(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_237FD6A08()
{
  result = sub_238031BE4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_237FD6AC0()
{
  sub_237FD6B78();
  if (v0 <= 0x3F)
  {
    sub_237FD6BDC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_237FD6B78()
{
  if (!qword_280C35108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEE4FF8, &unk_2380343E0);
    v0 = sub_2380321B4();
    if (!v1)
    {
      atomic_store(v0, &qword_280C35108);
    }
  }
}

void sub_237FD6BDC()
{
  if (!qword_280C35380)
  {
    v0 = sub_2380321B4();
    if (!v1)
    {
      atomic_store(v0, &qword_280C35380);
    }
  }
}

uint64_t _s19ApplicationActivityV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_237FD6CD0()
{
  result = qword_27DEE5340;
  if (!qword_27DEE5340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE5340);
  }

  return result;
}

unint64_t sub_237FD6D28()
{
  result = qword_280C34FE8;
  if (!qword_280C34FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C34FE8);
  }

  return result;
}

unint64_t sub_237FD6D80()
{
  result = qword_280C34FF0;
  if (!qword_280C34FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C34FF0);
  }

  return result;
}

uint64_t sub_237FD6DD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000010 && 0x8000000238036E10 == a2;
  if (v4 || (sub_2380324E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000 || (sub_2380324E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000238036E30 == a2 || (sub_2380324E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000238036DA0 == a2 || (sub_2380324E4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x664F7265626D756ELL && a2 == 0xEF7370756B636950 || (sub_2380324E4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000238036E50 == a2 || (sub_2380324E4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6574737572547369 && a2 == 0xE900000000000064)
  {

    return 6;
  }

  else
  {
    v6 = sub_2380324E4();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t _DeviceActivityData.CategoryActivity.init(identifier:token:totalActivityDuration:applicationActivities:webDomainActivities:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>, double a7@<D0>)
{
  v14 = type metadata accessor for _DeviceActivityData.CategoryActivity(0);
  v15 = v14[5];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF0, &unk_238033980);
  (*(*(v16 - 8) + 56))(&a6[v15], 1, 1, v16);
  *a6 = a1;
  *(a6 + 1) = a2;
  sub_237FAA864(a3, &a6[v15]);
  *&a6[v14[6]] = a7;
  v18 = a4;

  sub_237FAA8D4(&v18);

  *&a6[v14[7]] = v18;
  v18 = a5;

  sub_237FAAF84(&v18);

  result = sub_237FA5750(a3, &qword_27DEE51D0, &qword_238034400);
  *&a6[v14[8]] = v18;
  return result;
}

uint64_t _DeviceActivityData.CategoryActivity.update(using:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51B0, &qword_2380343D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v186 = &v181 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5348, &unk_238034A58);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v197 = &v181 - v8;
  v9 = type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
  v202 = *(v9 - 8);
  v10 = *(v202 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v196 = &v181 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v195 = (&v181 - v14);
  v15 = MEMORY[0x28223BE20](v13);
  v206 = (&v181 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v199 = (&v181 - v18);
  MEMORY[0x28223BE20](v17);
  v198 = (&v181 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51C0, &unk_238034790);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v188 = &v181 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5350, &qword_238034A68);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v201 = (&v181 - v25);
  v26 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  v27 = *(v26 - 1);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v200 = &v181 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = (&v181 - v32);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = (&v181 - v35);
  v37 = MEMORY[0x28223BE20](v34);
  v207 = &v181 - v38;
  MEMORY[0x28223BE20](v37);
  v40 = (&v181 - v39);
  v41 = type metadata accessor for _DeviceActivityData.CategoryActivity(0);
  v42 = *(v41 + 24);
  v184 = a1;
  *(v1 + v42) = *(a1 + v42) + *(v1 + v42);
  v185 = v41;
  v43 = *(v41 + 28);
  v183 = v1;
  v44 = *(v1 + v43);
  v45 = *(v44 + 16);
  v203 = v27;
  v204 = v36;
  v208 = v9;
  v209 = v26;
  v205 = v45;
  v182 = v43;
  v193 = v44;
  if (v45)
  {
    v46 = 0;
    v194 = v26[10];
    v192 = (v44 + ((*(v27 + 80) + 32) & ~*(v27 + 80)));
    v47 = MEMORY[0x277D84F98];
    while (v46 < *(v44 + 16))
    {
      v48 = *(v27 + 72);
      sub_237FA4C34(v192 + v48 * v46, v40, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      v49 = *v40;
      v50 = v40[1];
      v51 = *(v40 + v194);
      v52 = objc_allocWithZone(MEMORY[0x277D77B40]);
      v53 = sub_238031E74();
      v54 = [v52 initWithIdentifier:v53 trusted:v51];

      sub_237FA4C34(v40, v207, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v210 = v47;
      v57 = sub_237FCC3CC(v54);
      v58 = v47[2];
      v59 = (v56 & 1) == 0;
      v60 = v58 + v59;
      if (__OFADD__(v58, v59))
      {
        goto LABEL_86;
      }

      v61 = v56;
      if (v47[3] >= v60)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_237FCE520();
        }
      }

      else
      {
        sub_237FCCCE4(v60, isUniquelyReferenced_nonNull_native);
        v62 = sub_237FCC3CC(v54);
        if ((v61 & 1) != (v63 & 1))
        {
          goto LABEL_100;
        }

        v57 = v62;
      }

      v36 = v204;
      v47 = v210;
      if (v61)
      {
        sub_237FDC930(v207, v210[7] + v57 * v48, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      }

      else
      {
        v210[(v57 >> 6) + 8] |= 1 << v57;
        *(v47[6] + 8 * v57) = v54;
        sub_237FDC8C8(v207, v47[7] + v57 * v48, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        v64 = v47[2];
        v65 = __OFADD__(v64, 1);
        v66 = v64 + 1;
        if (v65)
        {
          goto LABEL_95;
        }

        v47[2] = v66;
      }

      ++v46;
      sub_237FA4C9C(v40, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      v44 = v193;
      v27 = v203;
      v26 = v209;
      if (v205 == v46)
      {
        v43 = *(v185 + 28);
        v9 = v208;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v47 = MEMORY[0x277D84F98];
LABEL_17:
  v67 = *(v184 + v43);
  v192 = *(v67 + 16);
  if (v192)
  {
    v68 = 0;
    v190 = v67 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v191 = (v27 + 56);
    v187 = (v27 + 48);
    v189 = v67;
    while (v68 < *(v67 + 16))
    {
      v205 = *(v27 + 72);
      sub_237FA4C34(v190 + v205 * v68, v36, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      v69 = *v36;
      v70 = v36[1];
      v71 = *(v36 + v26[10]);
      v72 = objc_allocWithZone(MEMORY[0x277D77B40]);
      v73 = sub_238031E74();
      v74 = [v72 initWithIdentifier:v73 trusted:v71];

      v75 = v47[2];
      v207 = v74;
      if (v75 && (v76 = sub_237FCC3CC(v74), (v77 & 1) != 0))
      {
        v78 = v201;
        sub_237FA4C34(v47[7] + v76 * v205, v201, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        (*v191)(v78, 0, 1, v26);
        sub_237FDC8C8(v78, v33, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      }

      else
      {
        (*v191)(v201, 1, 1, v26);
        v79 = [v74 identifier];
        v194 = sub_238031EA4();
        v81 = v80;

        v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF8, &unk_2380343E0);
        v83 = v74;
        v84 = *(*(v82 - 8) + 56);
        v85 = v188;
        v84(v188, 1, 1, v82);
        v86 = [v83 trusted];
        v87 = v209[5];
        v84(v33 + v87, 1, 1, v82);
        v88 = (v33 + v209[6]);
        *v33 = v194;
        v33[1] = v81;
        sub_237FA39BC(v85, v33 + v87, &qword_27DEE51C0, &unk_238034790);
        *v88 = 0;
        v88[1] = 0;
        *(v33 + v209[7]) = 0;
        *(v33 + v209[8]) = 0;
        *(v33 + v209[9]) = 0;
        *(v33 + v209[10]) = v86;
        v26 = v209;
        if ((*v187)(v201, 1, v209) != 1)
        {
          sub_237FA5750(v201, &qword_27DEE5350, &qword_238034A68);
        }
      }

      v36 = v204;
      *(v33 + v26[7]) = *(v204 + v26[7]) + *(v33 + v26[7]);
      v89 = v26[8];
      v90 = *(v36 + v89);
      v91 = *(v33 + v89);
      v65 = __OFADD__(v91, v90);
      v92 = v91 + v90;
      if (v65)
      {
        goto LABEL_88;
      }

      *(v33 + v89) = v92;
      v93 = v26[9];
      v94 = *(v36 + v93);
      v95 = *(v33 + v93);
      v65 = __OFADD__(v95, v94);
      v96 = v95 + v94;
      if (v65)
      {
        goto LABEL_89;
      }

      *(v33 + v93) = v96;
      sub_237FA4C34(v33, v200, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      v97 = swift_isUniquelyReferenced_nonNull_native();
      v210 = v47;
      v98 = v207;
      v99 = sub_237FCC3CC(v207);
      v101 = v47[2];
      v102 = (v100 & 1) == 0;
      v65 = __OFADD__(v101, v102);
      v103 = v101 + v102;
      if (v65)
      {
        goto LABEL_90;
      }

      v104 = v100;
      if (v47[3] >= v103)
      {
        v9 = v208;
        if ((v97 & 1) == 0)
        {
          v108 = v99;
          sub_237FCE520();
          v99 = v108;
          v9 = v208;
        }
      }

      else
      {
        sub_237FCCCE4(v103, v97);
        v99 = sub_237FCC3CC(v98);
        v9 = v208;
        if ((v104 & 1) != (v105 & 1))
        {
          goto LABEL_100;
        }
      }

      v27 = v203;
      v47 = v210;
      if (v104)
      {
        sub_237FDC930(v200, v210[7] + v99 * v205, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      }

      else
      {
        v210[(v99 >> 6) + 8] |= 1 << v99;
        *(v47[6] + 8 * v99) = v207;
        sub_237FDC8C8(v200, v47[7] + v99 * v205, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        v106 = v47[2];
        v65 = __OFADD__(v106, 1);
        v107 = v106 + 1;
        if (v65)
        {
          goto LABEL_96;
        }

        v47[2] = v107;
      }

      ++v68;
      sub_237FA4C9C(v36, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      sub_237FA4C9C(v33, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      v67 = v189;
      if (v192 == v68)
      {
        goto LABEL_38;
      }
    }

LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
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
    goto LABEL_99;
  }

LABEL_38:
  v109 = v47[2];
  if (v109)
  {
    v110 = sub_237FCC1FC(v47[2], 0);
    v111 = sub_237FD0D84(&v210, v110 + ((*(v27 + 80) + 32) & ~*(v27 + 80)), v109, v47);
    swift_bridgeObjectRetain_n();
    sub_237FBDBF0();
    if (v111 != v109)
    {
LABEL_99:
      __break(1u);
LABEL_100:
      sub_237FD5060();
      sub_238032534();
      __break(1u);
      v180 = *(v179 - 256);
      goto LABEL_102;
    }

    v9 = v208;
  }

  else
  {

    v110 = MEMORY[0x277D84F90];
  }

  v210 = v110;
  sub_237FDA4C4(&v210);
  v192 = 0;

  v194 = v47;

  v112 = v183;
  *(v183 + v182) = v210;
  v113 = *(v185 + 32);
  v114 = *(v112 + v113);
  v209 = *(v114 + 16);
  v193 = v113;
  v205 = v114;
  if (v209)
  {
    v115 = 0;
    v207 = *(v9 + 28);
    v204 = (v114 + ((*(v202 + 80) + 32) & ~*(v202 + 80)));
    v116 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v115 >= *(v114 + 16))
      {
        goto LABEL_91;
      }

      v117 = v9;
      v118 = *(v202 + 72);
      v119 = v198;
      sub_237FA4C34(v204 + v118 * v115, v198, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      v120 = *v119;
      v121 = v119[1];
      v122 = *(v119 + v207);
      v123 = objc_allocWithZone(MEMORY[0x277D77B40]);
      v124 = sub_238031E74();
      v125 = [v123 initWithIdentifier:v124 trusted:v122];

      sub_237FA4C34(v119, v199, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      v126 = swift_isUniquelyReferenced_nonNull_native();
      v210 = v116;
      v127 = sub_237FCC3CC(v125);
      v129 = v116[2];
      v130 = (v128 & 1) == 0;
      v65 = __OFADD__(v129, v130);
      v131 = v129 + v130;
      if (v65)
      {
        goto LABEL_92;
      }

      v132 = v128;
      if (v116[3] < v131)
      {
        break;
      }

      if (v126)
      {
        goto LABEL_52;
      }

      v136 = v127;
      sub_237FCE2E8();
      v127 = v136;
      v116 = v210;
      if ((v132 & 1) == 0)
      {
LABEL_53:
        v116[(v127 >> 6) + 8] |= 1 << v127;
        *(v116[6] + 8 * v127) = v125;
        sub_237FDC8C8(v199, v116[7] + v127 * v118, type metadata accessor for _DeviceActivityData.WebDomainActivity);
        v134 = v116[2];
        v65 = __OFADD__(v134, 1);
        v135 = v134 + 1;
        if (v65)
        {
          goto LABEL_97;
        }

        v116[2] = v135;
        goto LABEL_45;
      }

LABEL_44:
      sub_237FDC930(v199, v116[7] + v127 * v118, type metadata accessor for _DeviceActivityData.WebDomainActivity);

LABEL_45:
      v115 = (v115 + 1);
      sub_237FA4C9C(v198, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      v9 = v117;
      v114 = v205;
      if (v209 == v115)
      {
        v113 = *(v185 + 32);
        goto LABEL_59;
      }
    }

    sub_237FCC99C(v131, v126);
    v127 = sub_237FCC3CC(v125);
    if ((v132 & 1) != (v133 & 1))
    {
      goto LABEL_100;
    }

LABEL_52:
    v116 = v210;
    if ((v132 & 1) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_44;
  }

  v116 = MEMORY[0x277D84F98];
LABEL_59:
  v137 = *(v184 + v113);
  v204 = *(v137 + 16);
  if (v204)
  {
    v138 = 0;
    v203 = v137 + ((*(v202 + 80) + 32) & ~*(v202 + 80));
    v200 = v137;
    v201 = (v202 + 56);
    v199 = (v202 + 48);
    while (1)
    {
      if (v138 >= *(v137 + 16))
      {
        goto LABEL_93;
      }

      v139 = *(v202 + 72);
      v140 = v206;
      sub_237FA4C34(v203 + v139 * v138, v206, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      v141 = *v140;
      v142 = v140[1];
      v143 = *(v140 + *(v9 + 28));
      v144 = objc_allocWithZone(MEMORY[0x277D77B40]);
      v145 = sub_238031E74();
      v146 = [v144 initWithIdentifier:v145 trusted:v143];

      if (v116[2] && (v147 = sub_237FCC3CC(v146), (v148 & 1) != 0))
      {
        v149 = v197;
        sub_237FA4C34(v116[7] + v147 * v139, v197, type metadata accessor for _DeviceActivityData.WebDomainActivity);
        (*v201)(v149, 0, 1, v208);
        v9 = v208;
        v150 = v195;
        sub_237FDC8C8(v149, v195, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      }

      else
      {
        (*v201)(v197, 1, 1, v9);
        v151 = [v146 identifier];
        v209 = sub_238031EA4();
        v207 = v152;

        v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE8, &unk_238035410);
        v154 = *(*(v153 - 8) + 56);
        v155 = v186;
        v154(v186, 1, 1, v153);
        v156 = v139;
        v157 = [v146 trusted];
        v158 = v146;
        v159 = *(v208 + 20);
        v160 = v153;
        v150 = v195;
        v154(v195 + v159, 1, 1, v160);
        v9 = v208;
        v161 = v207;
        *v150 = v209;
        v150[1] = v161;
        v162 = v150 + v159;
        v146 = v158;
        sub_237FA39BC(v155, v162, &qword_27DEE51B0, &qword_2380343D0);
        *(v150 + *(v9 + 24)) = 0;
        *(v150 + *(v9 + 28)) = v157;
        v139 = v156;
        if ((*v199)(v197, 1, v9) != 1)
        {
          sub_237FA5750(v197, &qword_27DEE5348, &unk_238034A58);
        }
      }

      *(v150 + *(v9 + 24)) = *(v206 + *(v9 + 24)) + *(v150 + *(v9 + 24));
      sub_237FA4C34(v150, v196, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      v163 = swift_isUniquelyReferenced_nonNull_native();
      v210 = v116;
      v164 = sub_237FCC3CC(v146);
      v166 = v116[2];
      v167 = (v165 & 1) == 0;
      v65 = __OFADD__(v166, v167);
      v168 = v166 + v167;
      if (v65)
      {
        goto LABEL_94;
      }

      v169 = v165;
      if (v116[3] < v168)
      {
        break;
      }

      if (v163)
      {
        goto LABEL_74;
      }

      v173 = v164;
      sub_237FCE2E8();
      v164 = v173;
      v116 = v210;
      if (v169)
      {
LABEL_61:
        sub_237FDC930(v196, v116[7] + v164 * v139, type metadata accessor for _DeviceActivityData.WebDomainActivity);

        goto LABEL_62;
      }

LABEL_75:
      v116[(v164 >> 6) + 8] |= 1 << v164;
      *(v116[6] + 8 * v164) = v146;
      sub_237FDC8C8(v196, v116[7] + v164 * v139, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      v171 = v116[2];
      v65 = __OFADD__(v171, 1);
      v172 = v171 + 1;
      if (v65)
      {
        goto LABEL_98;
      }

      v116[2] = v172;
LABEL_62:
      ++v138;
      sub_237FA4C9C(v206, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      sub_237FA4C9C(v195, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      v137 = v200;
      if (v204 == v138)
      {
        goto LABEL_79;
      }
    }

    sub_237FCC99C(v168, v163);
    v164 = sub_237FCC3CC(v146);
    if ((v169 & 1) != (v170 & 1))
    {
      goto LABEL_100;
    }

LABEL_74:
    v116 = v210;
    if (v169)
    {
      goto LABEL_61;
    }

    goto LABEL_75;
  }

LABEL_79:
  v174 = v116[2];
  if (!v174)
  {
    goto LABEL_82;
  }

  v175 = sub_237FCC1D4(v116[2], 0);
  v176 = sub_237FD0D44(&v210, v175 + ((*(v202 + 80) + 32) & ~*(v202 + 80)), v174, v116);
  swift_bridgeObjectRetain_n();
  sub_237FBDBF0();
  if (v176 != v174)
  {
    __break(1u);
LABEL_82:

    v175 = MEMORY[0x277D84F90];
  }

  v210 = v175;
  v177 = v192;
  sub_237FDA3E0(&v210);
  if (!v177)
  {

    result = swift_bridgeObjectRelease_n();
    *(v183 + v193) = v210;
    return result;
  }

  v180 = v177;
LABEL_102:

  __break(1u);
  return result;
}

uint64_t DeviceActivityData.CategoryActivity.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51B0, &qword_2380343D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v121 = &v100 - v5;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE8, &unk_238035410);
  v101 = *(v120 - 8);
  v6 = *(v101 + 64);
  v7 = MEMORY[0x28223BE20](v120 - 8);
  v110 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v109 = &v100 - v9;
  v10 = type metadata accessor for DeviceActivityData.WebDomainActivity(0);
  v118 = *(v10 - 8);
  v119 = v10;
  v11 = *(v118 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v102 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v128 = &v100 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51C0, &unk_238034790);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v117 = (&v100 - v17);
  v18 = type metadata accessor for DeviceActivityData.ApplicationActivity(0);
  v115 = *(v18 - 8);
  v116 = v18;
  v19 = *(v115 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
  v100 = *(v127 - 8);
  v22 = *(v100 + 64);
  v23 = MEMORY[0x28223BE20](v127);
  v122 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v126 = &v100 - v25;
  v114 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  v125 = *(v114 - 8);
  v26 = *(v125 + 64);
  v27 = MEMORY[0x28223BE20](v114);
  v113 = &v100 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v112 = &v100 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51D0, &qword_238034400);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = &v100 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF0, &unk_238033980);
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v100 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v41 = &v100 - v40;
  v108 = type metadata accessor for DeviceActivityData.CategoryActivity(0);
  v42 = *(v108 - 1);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v108);
  v45 = &v100 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for _DeviceActivityData.CategoryActivity(0);
  sub_237FA90E4(a1 + v105[5], v33, &qword_27DEE51D0, &qword_238034400);
  v46 = v34;
  v47 = (*(v35 + 48))(v33, 1, v34);
  v107 = a1;
  v103 = v42;
  if (v47 == 1)
  {
    sub_237FA5750(v33, &qword_27DEE51D0, &qword_238034400);
    v48 = *a1;
    v49 = a1[1];

    v50 = sub_238031E74();
    v51 = [objc_opt_self() shortLocalizedNameForIdentifier_];
    sub_238031EA4();

    sub_238031BF4();
  }

  else
  {
    (*(v35 + 32))(v41, v33, v34);
    v52 = *a1;
    v124 = a1[1];
    (*(v35 + 16))(v39, v41, v46);

    v53 = sub_238031E74();
    v54 = [objc_opt_self() shortLocalizedNameForIdentifier_];
    sub_238031EA4();
    v123 = v55;

    a1 = v107;
    sub_238031C04();
    (*(v35 + 8))(v41, v46);
  }

  v56 = v105;
  v57 = *(a1 + v105[6]);
  v58 = v108[5];
  v106 = v45;
  *&v45[v58] = v57;
  v59 = *(a1 + v56[7]);
  v60 = *(v59 + 16);
  if (v60)
  {
    v61 = v59 + ((*(v125 + 80) + 32) & ~*(v125 + 80));
    v111 = *(v125 + 72);
    v62 = MEMORY[0x277D84F90];
    v63 = v113;
    do
    {
      v123 = v62;
      v124 = v61;
      v125 = v60;
      v64 = v112;
      sub_237FA4C34(v61, v112, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      sub_237FA4C34(v64, v63, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      v66 = *v63;
      v65 = v63[1];
      v67 = v114;
      v68 = v21;
      sub_237FA90E4(v63 + *(v114 + 20), v117, &qword_27DEE51C0, &unk_238034790);
      v69 = (v63 + v67[6]);
      v71 = *v69;
      v70 = v69[1];

      sub_238031BB4();
      sub_237FA4C9C(v64, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      v72 = v116;
      *(v68 + v116[5]) = *(v63 + v67[7]);
      *(v68 + v72[6]) = *(v63 + v67[8]);
      *(v68 + v72[7]) = *(v63 + v67[9]);
      v73 = v67[10];
      v62 = v123;
      LOBYTE(v70) = *(v63 + v73);
      sub_237FA4C9C(v63, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      v74 = v72[8];
      v21 = v68;
      *(v68 + v74) = v70;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_237FB5E08(0, v62[2] + 1, 1, v62);
      }

      v76 = v62[2];
      v75 = v62[3];
      v77 = v122;
      if (v76 >= v75 >> 1)
      {
        v62 = sub_237FB5E08(v75 > 1, v76 + 1, 1, v62);
      }

      v62[2] = v76 + 1;
      sub_237FDC8C8(v68, v62 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v76, type metadata accessor for DeviceActivityData.ApplicationActivity);
      v61 = v124 + v111;
      v60 = v125 - 1;
    }

    while (v125 != 1);
  }

  else
  {
    v62 = MEMORY[0x277D84F90];
    v77 = v122;
  }

  *&v106[v108[6]] = v62;
  v78 = *(v107 + v105[8]);
  v79 = *(v78 + 16);
  if (v79)
  {
    v80 = v78 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
    v125 = *(v100 + 72);
    v123 = (v101 + 32);
    v124 = (v101 + 48);
    v116 = (v101 + 8);
    v117 = (v101 + 16);
    v81 = MEMORY[0x277D84F90];
    v82 = v102;
    v83 = v120;
    do
    {
      v84 = v126;
      sub_237FA4C34(v80, v126, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      sub_237FA4C34(v84, v77, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      v85 = v121;
      sub_237FA90E4(v77 + *(v127 + 20), v121, &qword_27DEE51B0, &qword_2380343D0);
      if ((*v124)(v85, 1, v83) == 1)
      {
        sub_237FA5750(v85, &qword_27DEE51B0, &qword_2380343D0);
        v86 = *v77;
        v87 = v77[1];

        sub_238031C94();
      }

      else
      {
        v88 = v109;
        (*v123)(v109, v85, v83);
        v89 = *v77;
        v90 = v77[1];
        (*v117)(v110, v88, v83);

        v77 = v122;
        sub_238031C84();
        (*v116)(v88, v83);
      }

      sub_237FA4C9C(v126, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      v91 = v127;
      v92 = v119;
      *(v82 + *(v119 + 20)) = *(v77 + *(v127 + 24));
      v93 = *(v77 + *(v91 + 28));
      sub_237FA4C9C(v77, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      *(v82 + *(v92 + 24)) = v93;
      sub_237FDC8C8(v82, v128, type metadata accessor for DeviceActivityData.WebDomainActivity);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v81 = sub_237FB5DE0(0, v81[2] + 1, 1, v81);
      }

      v95 = v81[2];
      v94 = v81[3];
      if (v95 >= v94 >> 1)
      {
        v81 = sub_237FB5DE0(v94 > 1, v95 + 1, 1, v81);
      }

      v81[2] = v95 + 1;
      sub_237FDC8C8(v128, v81 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v95, type metadata accessor for DeviceActivityData.WebDomainActivity);
      v80 += v125;
      --v79;
    }

    while (v79);
  }

  else
  {
    v81 = MEMORY[0x277D84F90];
  }

  sub_237FA4C9C(v107, type metadata accessor for _DeviceActivityData.CategoryActivity);
  v96 = v108;
  v97 = v106;
  *&v106[v108[7]] = v81;
  v98 = v104;
  sub_237FDC8C8(v97, v104, type metadata accessor for DeviceActivityData.CategoryActivity);
  return (*(v103 + 56))(v98, 0, 1, v96);
}

uint64_t DeviceActivityData.CategoryActivity.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238031C44();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DeviceActivityData.CategoryActivity.category.setter(uint64_t a1)
{
  v3 = sub_238031C44();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t DeviceActivityData.CategoryActivity.totalActivityDuration.setter(double a1)
{
  result = type metadata accessor for DeviceActivityData.CategoryActivity(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t DeviceActivityData.CategoryActivity.applicationActivities.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeviceActivityData.CategoryActivity(0) + 24));
}

uint64_t DeviceActivityData.CategoryActivity.applicationActivities.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DeviceActivityData.CategoryActivity(0) + 24);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

int *DeviceActivityData.CategoryActivity.init(_:totalActivityDuration:applicationActivities:webDomainActivities:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = sub_238031C44();
  (*(*(v10 - 8) + 32))(a4, a1, v10);
  result = type metadata accessor for DeviceActivityData.CategoryActivity(0);
  *(a4 + result[5]) = a5;
  *(a4 + result[6]) = a2;
  *(a4 + result[7]) = a3;
  return result;
}

uint64_t DeviceActivityData.CategoryActivity.hash(into:)(uint64_t a1)
{
  sub_238031C44();
  sub_237FDCDF0(&qword_280C34B20, MEMORY[0x277CD4AD0]);
  sub_238031E34();
  v3 = type metadata accessor for DeviceActivityData.CategoryActivity(0);
  v4 = *(v1 + v3[5]);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x2383E5750](*&v4);
  sub_237FD17E8(a1, *(v1 + v3[6]));
  v5 = *(v1 + v3[7]);

  return sub_237FD1640(a1, v5);
}

uint64_t DeviceActivityData.CategoryActivity.hashValue.getter()
{
  sub_2380325B4();
  sub_238031C44();
  sub_237FDCDF0(&qword_280C34B20, MEMORY[0x277CD4AD0]);
  sub_238031E34();
  v1 = type metadata accessor for DeviceActivityData.CategoryActivity(0);
  v2 = *(v0 + v1[5]);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x2383E5750](*&v2);
  sub_237FD17E8(v4, *(v0 + v1[6]));
  sub_237FD1640(v4, *(v0 + v1[7]));
  return sub_2380325F4();
}

uint64_t sub_237FD979C(uint64_t a1, int *a2)
{
  sub_238031C44();
  sub_237FDCDF0(&qword_280C34B20, MEMORY[0x277CD4AD0]);
  sub_238031E34();
  v5 = *(v2 + a2[5]);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x2383E5750](*&v5);
  sub_237FD17E8(a1, *(v2 + a2[6]));
  v6 = *(v2 + a2[7]);

  return sub_237FD1640(a1, v6);
}

uint64_t sub_237FD9870(uint64_t a1, int *a2)
{
  sub_2380325B4();
  sub_238031C44();
  sub_237FDCDF0(&qword_280C34B20, MEMORY[0x277CD4AD0]);
  sub_238031E34();
  v4 = *(v2 + a2[5]);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x2383E5750](*&v4);
  sub_237FD17E8(v6, *(v2 + a2[6]));
  sub_237FD1640(v6, *(v2 + a2[7]));
  return sub_2380325F4();
}

uint64_t _DeviceActivityData.CategoryActivity.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t _DeviceActivityData.CategoryActivity.localizedDisplayName.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_238031E74();
  v4 = [objc_opt_self() shortLocalizedNameForIdentifier_];
  v5 = sub_238031EA4();

  return v5;
}

uint64_t _DeviceActivityData.CategoryActivity.totalActivityDuration.setter(double a1)
{
  result = type metadata accessor for _DeviceActivityData.CategoryActivity(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_237FD9B7C(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 28));
}

uint64_t sub_237FD9BD0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t _DeviceActivityData.CategoryActivity.webDomainActivities.getter()
{
  v1 = *(v0 + *(type metadata accessor for _DeviceActivityData.CategoryActivity(0) + 32));
}

uint64_t _DeviceActivityData.CategoryActivity.webDomainActivities.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _DeviceActivityData.CategoryActivity(0) + 32);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_237FD9D1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237FDD2B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237FD9D50(uint64_t a1)
{
  v2 = sub_237FA4018();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237FD9D8C(uint64_t a1)
{
  v2 = sub_237FA4018();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t _DeviceActivityData.CategoryActivity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5358, &qword_238034A70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237FA4018();
  sub_238032614();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v18) = 0;
  sub_238032464();
  if (!v2)
  {
    v13 = type metadata accessor for _DeviceActivityData.CategoryActivity(0);
    v14 = v13[5];
    LOBYTE(v18) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF0, &unk_238033980);
    sub_237FA41C0(&qword_280C34B00);
    sub_238032454();
    v15 = *(v3 + v13[6]);
    LOBYTE(v18) = 2;
    sub_238032484();
    v18 = *(v3 + v13[7]);
    HIBYTE(v17) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5360, &qword_238034A78);
    sub_237FA4210(&qword_280C34A88, &qword_280C34FE0);
    sub_2380324A4();
    v18 = *(v3 + v13[8]);
    HIBYTE(v17) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5368, &qword_238034A80);
    sub_237FA4B98(&qword_280C34A68, &qword_280C34F90);
    sub_2380324A4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t _DeviceActivityData.CategoryActivity.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF0, &unk_238033980);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51D0, &qword_238034400);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  v13 = *v2;
  v14 = v2[1];
  sub_238031ED4();
  v15 = type metadata accessor for _DeviceActivityData.CategoryActivity(0);
  sub_237FA90E4(v2 + v15[5], v12, &qword_27DEE51D0, &qword_238034400);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_2380325D4();
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_2380325D4();
    sub_237FA41C0(&qword_280C34AF8);
    sub_238031E34();
    (*(v5 + 8))(v8, v4);
  }

  v16 = *(v2 + v15[6]);
  if (v16 == 0.0)
  {
    v16 = 0.0;
  }

  MEMORY[0x2383E5750](*&v16);
  sub_237FD23C0(a1, *(v2 + v15[7]));
  return sub_237FD2088(a1, *(v2 + v15[8]));
}

uint64_t _DeviceActivityData.CategoryActivity.hashValue.getter()
{
  sub_2380325B4();
  _DeviceActivityData.CategoryActivity.hash(into:)(v1);
  return sub_2380325F4();
}

uint64_t sub_237FDA35C()
{
  sub_2380325B4();
  _DeviceActivityData.CategoryActivity.hash(into:)(v1);
  return sub_2380325F4();
}

uint64_t sub_237FDA3A0()
{
  sub_2380325B4();
  _DeviceActivityData.CategoryActivity.hash(into:)(v1);
  return sub_2380325F4();
}

uint64_t sub_237FDA3E0(void **a1)
{
  v2 = *(type metadata accessor for _DeviceActivityData.WebDomainActivity(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_237FAAFD8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_237FDA5A8(v6, type metadata accessor for _DeviceActivityData.WebDomainActivity, sub_237FDAB80, sub_237FDA6F8);
  *a1 = v3;
  return result;
}

uint64_t sub_237FDA4C4(void **a1)
{
  v2 = *(type metadata accessor for _DeviceActivityData.ApplicationActivity(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_237FAABC8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_237FDA5A8(v6, type metadata accessor for _DeviceActivityData.ApplicationActivity, sub_237FDB4A8, sub_237FDA93C);
  *a1 = v3;
  return result;
}

uint64_t sub_237FDA5A8(uint64_t a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = sub_2380324B4();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x277D84F90];
      }

      else
      {
        a2(0);
        v12 = sub_238031FD4();
        *(v12 + 16) = v11;
      }

      v13 = *((a2)(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

uint64_t sub_237FDA6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
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
      sub_237FA4C34(v25, v19, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      sub_237FA4C34(v22, v15, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      v26 = *(v8 + 24);
      v27 = *&v19[v26];
      v28 = *&v15[v26];
      sub_237FA4C9C(v15, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      result = sub_237FA4C9C(v19, type metadata accessor for _DeviceActivityData.WebDomainActivity);
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

      sub_237FDC8C8(v25, v12, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_237FDC8C8(v12, v22, type metadata accessor for _DeviceActivityData.WebDomainActivity);
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

uint64_t sub_237FDA93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      sub_237FA4C34(v25, v19, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      sub_237FA4C34(v22, v15, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      v26 = *(v8 + 28);
      v27 = *&v19[v26];
      v28 = *&v15[v26];
      sub_237FA4C9C(v15, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      result = sub_237FA4C9C(v19, type metadata accessor for _DeviceActivityData.ApplicationActivity);
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

      sub_237FDC8C8(v25, v12, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_237FDC8C8(v12, v22, type metadata accessor for _DeviceActivityData.ApplicationActivity);
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

uint64_t sub_237FDAB80(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v111 = a1;
  v9 = type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
  v119 = *(v9 - 8);
  v10 = *(v119 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v114 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v122 = &v108 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v123 = &v108 - v16;
  result = MEMORY[0x28223BE20](v15);
  v19 = &v108 - v18;
  v121 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_96:
    v5 = *v111;
    if (!*v111)
    {
      goto LABEL_135;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_129:
      result = sub_238010D30(a4);
    }

    v125 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v121)
      {
        v104 = *(result + 16 * a4);
        v105 = result;
        v106 = *(result + 16 * (a4 - 1) + 40);
        sub_237FDBDD0(*v121 + *(v119 + 72) * v104, *v121 + *(v119 + 72) * *(result + 16 * (a4 - 1) + 32), *v121 + *(v119 + 72) * v106, v5);
        if (v6)
        {
        }

        if (v106 < v104)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_238010D30(v105);
        }

        if (a4 - 2 >= *(v105 + 2))
        {
          goto LABEL_123;
        }

        v107 = &v105[16 * a4];
        *v107 = v104;
        *(v107 + 1) = v106;
        v125 = v105;
        sub_238010CA4(a4 - 1);
        result = v125;
        a4 = *(v125 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v21 = 0;
  v22 = MEMORY[0x277D84F90];
  v110 = a4;
  v124 = v9;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v115 = v22;
    if (v21 + 1 >= v20)
    {
      v20 = v21 + 1;
    }

    else
    {
      v25 = *(v119 + 72);
      v5 = *v121 + v25 * v24;
      v118 = *v121;
      v26 = v118;
      sub_237FA4C34(v118 + v25 * v24, v19, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      v27 = v26 + v25 * v23;
      v28 = v23;
      v29 = v123;
      sub_237FA4C34(v27, v123, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      v30 = *(v9 + 24);
      v31 = *&v19[v30];
      v32 = *(v29 + v30);
      sub_237FA4C9C(v29, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      result = sub_237FA4C9C(v19, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      v109 = v28;
      v33 = v28 + 2;
      v120 = v25;
      v34 = v118 + v25 * (v28 + 2);
      while (v20 != v33)
      {
        sub_237FA4C34(v34, v19, type metadata accessor for _DeviceActivityData.WebDomainActivity);
        v35 = v123;
        sub_237FA4C34(v5, v123, type metadata accessor for _DeviceActivityData.WebDomainActivity);
        v36 = *(v124 + 24);
        v37 = *&v19[v36];
        v38 = *(v35 + v36);
        sub_237FA4C9C(v35, type metadata accessor for _DeviceActivityData.WebDomainActivity);
        result = sub_237FA4C9C(v19, type metadata accessor for _DeviceActivityData.WebDomainActivity);
        ++v33;
        v34 += v120;
        v5 += v120;
        if (v32 < v31 == v38 >= v37)
        {
          v20 = v33 - 1;
          break;
        }
      }

      v23 = v109;
      a4 = v110;
      v9 = v124;
      if (v32 < v31)
      {
        if (v20 < v109)
        {
          goto LABEL_126;
        }

        if (v109 < v20)
        {
          v108 = v6;
          v39 = v120 * (v20 - 1);
          v40 = v20 * v120;
          v41 = v20;
          v42 = v20;
          v43 = v109;
          v44 = v109 * v120;
          do
          {
            if (v43 != --v42)
            {
              v45 = *v121;
              if (!*v121)
              {
                goto LABEL_132;
              }

              v5 = v45 + v44;
              sub_237FDC8C8(v45 + v44, v114, type metadata accessor for _DeviceActivityData.WebDomainActivity);
              if (v44 < v39 || v5 >= v45 + v40)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v44 != v39)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_237FDC8C8(v114, v45 + v39, type metadata accessor for _DeviceActivityData.WebDomainActivity);
            }

            ++v43;
            v39 -= v120;
            v40 -= v120;
            v44 += v120;
          }

          while (v43 < v42);
          v6 = v108;
          v23 = v109;
          a4 = v110;
          v9 = v124;
          v20 = v41;
        }
      }
    }

    v46 = v121[1];
    if (v20 < v46)
    {
      if (__OFSUB__(v20, v23))
      {
        goto LABEL_125;
      }

      if (v20 - v23 < a4)
      {
        if (__OFADD__(v23, a4))
        {
          goto LABEL_127;
        }

        if ((v23 + a4) >= v46)
        {
          v47 = v121[1];
        }

        else
        {
          v47 = v23 + a4;
        }

        if (v47 < v23)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v20 != v47)
        {
          break;
        }
      }
    }

    v21 = v20;
    if (v20 < v23)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v115;
    }

    else
    {
      result = sub_237FB5990(0, *(v115 + 2) + 1, 1, v115);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v48 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v48 >> 1)
    {
      result = sub_237FB5990((v48 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v49 = &v22[16 * a4];
    *(v49 + 4) = v23;
    *(v49 + 5) = v21;
    v50 = *v111;
    if (!*v111)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (1)
      {
        v51 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v52 = *(v22 + 4);
          v53 = *(v22 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_52:
          if (v55)
          {
            goto LABEL_113;
          }

          v68 = &v22[16 * v5];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_116;
          }

          v74 = &v22[16 * v51 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_120;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v78 = &v22[16 * v5];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_66:
        if (v73)
        {
          goto LABEL_115;
        }

        v81 = &v22[16 * v51];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_118;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v51 - 1;
        if (v51 - 1 >= v5)
        {
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
          goto LABEL_128;
        }

        if (!*v121)
        {
          goto LABEL_131;
        }

        v89 = v22;
        v90 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v51 + 40];
        sub_237FDBDD0(*v121 + *(v119 + 72) * v90, *v121 + *(v119 + 72) * *&v22[16 * v51 + 32], *v121 + *(v119 + 72) * v5, v50);
        if (v6)
        {
        }

        if (v5 < v90)
        {
          goto LABEL_109;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v91 = v89;
        }

        else
        {
          v91 = sub_238010D30(v89);
        }

        v9 = v124;
        if (a4 >= *(v91 + 2))
        {
          goto LABEL_110;
        }

        v92 = &v91[16 * a4];
        *(v92 + 4) = v90;
        *(v92 + 5) = v5;
        v125 = v91;
        result = sub_238010CA4(v51);
        v22 = v125;
        v5 = *(v125 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v22[16 * v5 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_111;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_112;
      }

      v63 = &v22[16 * v5];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_114;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_117;
      }

      if (v67 >= v59)
      {
        v85 = &v22[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_121;
        }

        if (v54 < v88)
        {
          v51 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = v121[1];
    a4 = v110;
    if (v21 >= v20)
    {
      goto LABEL_96;
    }
  }

  v108 = v6;
  v109 = v23;
  a4 = *v121;
  v93 = *(v119 + 72);
  v94 = *v121 + v93 * (v20 - 1);
  v95 = -v93;
  v96 = v23 - v20;
  v112 = v93;
  v113 = v47;
  v5 = a4 + v20 * v93;
LABEL_86:
  v120 = v20;
  v116 = v5;
  v117 = v96;
  v118 = v94;
  v97 = v124;
  while (1)
  {
    sub_237FA4C34(v5, v19, type metadata accessor for _DeviceActivityData.WebDomainActivity);
    v98 = v123;
    sub_237FA4C34(v94, v123, type metadata accessor for _DeviceActivityData.WebDomainActivity);
    v99 = *(v97 + 24);
    v100 = *&v19[v99];
    v101 = *(v98 + v99);
    sub_237FA4C9C(v98, type metadata accessor for _DeviceActivityData.WebDomainActivity);
    result = sub_237FA4C9C(v19, type metadata accessor for _DeviceActivityData.WebDomainActivity);
    if (v101 >= v100)
    {
LABEL_85:
      v20 = v120 + 1;
      v21 = v113;
      v94 = v118 + v112;
      v96 = v117 - 1;
      v5 = v116 + v112;
      if (v120 + 1 != v113)
      {
        goto LABEL_86;
      }

      v6 = v108;
      v23 = v109;
      v9 = v124;
      if (v113 < v109)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (!a4)
    {
      break;
    }

    v102 = v122;
    sub_237FDC8C8(v5, v122, type metadata accessor for _DeviceActivityData.WebDomainActivity);
    v97 = v124;
    swift_arrayInitWithTakeFrontToBack();
    sub_237FDC8C8(v102, v94, type metadata accessor for _DeviceActivityData.WebDomainActivity);
    v94 += v95;
    v5 += v95;
    if (__CFADD__(v96++, 1))
    {
      goto LABEL_85;
    }
  }

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
  return result;
}

uint64_t sub_237FDB4A8(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v111 = a1;
  v9 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  v119 = *(v9 - 8);
  v10 = *(v119 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v114 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v122 = &v108 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v123 = &v108 - v16;
  result = MEMORY[0x28223BE20](v15);
  v19 = &v108 - v18;
  v121 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_96:
    v5 = *v111;
    if (!*v111)
    {
      goto LABEL_135;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_129:
      result = sub_238010D30(a4);
    }

    v125 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v121)
      {
        v104 = *(result + 16 * a4);
        v105 = result;
        v106 = *(result + 16 * (a4 - 1) + 40);
        sub_237FDC2B4(*v121 + *(v119 + 72) * v104, *v121 + *(v119 + 72) * *(result + 16 * (a4 - 1) + 32), *v121 + *(v119 + 72) * v106, v5);
        if (v6)
        {
        }

        if (v106 < v104)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_238010D30(v105);
        }

        if (a4 - 2 >= *(v105 + 2))
        {
          goto LABEL_123;
        }

        v107 = &v105[16 * a4];
        *v107 = v104;
        *(v107 + 1) = v106;
        v125 = v105;
        sub_238010CA4(a4 - 1);
        result = v125;
        a4 = *(v125 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v21 = 0;
  v22 = MEMORY[0x277D84F90];
  v110 = a4;
  v124 = v9;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v115 = v22;
    if (v21 + 1 >= v20)
    {
      v20 = v21 + 1;
    }

    else
    {
      v25 = *(v119 + 72);
      v5 = *v121 + v25 * v24;
      v118 = *v121;
      v26 = v118;
      sub_237FA4C34(v118 + v25 * v24, v19, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      v27 = v26 + v25 * v23;
      v28 = v23;
      v29 = v123;
      sub_237FA4C34(v27, v123, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      v30 = *(v9 + 28);
      v31 = *&v19[v30];
      v32 = *(v29 + v30);
      sub_237FA4C9C(v29, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      result = sub_237FA4C9C(v19, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      v109 = v28;
      v33 = v28 + 2;
      v120 = v25;
      v34 = v118 + v25 * (v28 + 2);
      while (v20 != v33)
      {
        sub_237FA4C34(v34, v19, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        v35 = v123;
        sub_237FA4C34(v5, v123, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        v36 = *(v124 + 28);
        v37 = *&v19[v36];
        v38 = *(v35 + v36);
        sub_237FA4C9C(v35, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        result = sub_237FA4C9C(v19, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        ++v33;
        v34 += v120;
        v5 += v120;
        if (v32 < v31 == v38 >= v37)
        {
          v20 = v33 - 1;
          break;
        }
      }

      v23 = v109;
      a4 = v110;
      v9 = v124;
      if (v32 < v31)
      {
        if (v20 < v109)
        {
          goto LABEL_126;
        }

        if (v109 < v20)
        {
          v108 = v6;
          v39 = v120 * (v20 - 1);
          v40 = v20 * v120;
          v41 = v20;
          v42 = v20;
          v43 = v109;
          v44 = v109 * v120;
          do
          {
            if (v43 != --v42)
            {
              v45 = *v121;
              if (!*v121)
              {
                goto LABEL_132;
              }

              v5 = v45 + v44;
              sub_237FDC8C8(v45 + v44, v114, type metadata accessor for _DeviceActivityData.ApplicationActivity);
              if (v44 < v39 || v5 >= v45 + v40)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v44 != v39)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_237FDC8C8(v114, v45 + v39, type metadata accessor for _DeviceActivityData.ApplicationActivity);
            }

            ++v43;
            v39 -= v120;
            v40 -= v120;
            v44 += v120;
          }

          while (v43 < v42);
          v6 = v108;
          v23 = v109;
          a4 = v110;
          v9 = v124;
          v20 = v41;
        }
      }
    }

    v46 = v121[1];
    if (v20 < v46)
    {
      if (__OFSUB__(v20, v23))
      {
        goto LABEL_125;
      }

      if (v20 - v23 < a4)
      {
        if (__OFADD__(v23, a4))
        {
          goto LABEL_127;
        }

        if ((v23 + a4) >= v46)
        {
          v47 = v121[1];
        }

        else
        {
          v47 = v23 + a4;
        }

        if (v47 < v23)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v20 != v47)
        {
          break;
        }
      }
    }

    v21 = v20;
    if (v20 < v23)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v115;
    }

    else
    {
      result = sub_237FB5990(0, *(v115 + 2) + 1, 1, v115);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v48 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v48 >> 1)
    {
      result = sub_237FB5990((v48 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v49 = &v22[16 * a4];
    *(v49 + 4) = v23;
    *(v49 + 5) = v21;
    v50 = *v111;
    if (!*v111)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (1)
      {
        v51 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v52 = *(v22 + 4);
          v53 = *(v22 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_52:
          if (v55)
          {
            goto LABEL_113;
          }

          v68 = &v22[16 * v5];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_116;
          }

          v74 = &v22[16 * v51 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_120;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v78 = &v22[16 * v5];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_66:
        if (v73)
        {
          goto LABEL_115;
        }

        v81 = &v22[16 * v51];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_118;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v51 - 1;
        if (v51 - 1 >= v5)
        {
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
          goto LABEL_128;
        }

        if (!*v121)
        {
          goto LABEL_131;
        }

        v89 = v22;
        v90 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v51 + 40];
        sub_237FDC2B4(*v121 + *(v119 + 72) * v90, *v121 + *(v119 + 72) * *&v22[16 * v51 + 32], *v121 + *(v119 + 72) * v5, v50);
        if (v6)
        {
        }

        if (v5 < v90)
        {
          goto LABEL_109;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v91 = v89;
        }

        else
        {
          v91 = sub_238010D30(v89);
        }

        v9 = v124;
        if (a4 >= *(v91 + 2))
        {
          goto LABEL_110;
        }

        v92 = &v91[16 * a4];
        *(v92 + 4) = v90;
        *(v92 + 5) = v5;
        v125 = v91;
        result = sub_238010CA4(v51);
        v22 = v125;
        v5 = *(v125 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v22[16 * v5 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_111;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_112;
      }

      v63 = &v22[16 * v5];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_114;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_117;
      }

      if (v67 >= v59)
      {
        v85 = &v22[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_121;
        }

        if (v54 < v88)
        {
          v51 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = v121[1];
    a4 = v110;
    if (v21 >= v20)
    {
      goto LABEL_96;
    }
  }

  v108 = v6;
  v109 = v23;
  a4 = *v121;
  v93 = *(v119 + 72);
  v94 = *v121 + v93 * (v20 - 1);
  v95 = -v93;
  v96 = v23 - v20;
  v112 = v93;
  v113 = v47;
  v5 = a4 + v20 * v93;
LABEL_86:
  v120 = v20;
  v116 = v5;
  v117 = v96;
  v118 = v94;
  v97 = v124;
  while (1)
  {
    sub_237FA4C34(v5, v19, type metadata accessor for _DeviceActivityData.ApplicationActivity);
    v98 = v123;
    sub_237FA4C34(v94, v123, type metadata accessor for _DeviceActivityData.ApplicationActivity);
    v99 = *(v97 + 28);
    v100 = *&v19[v99];
    v101 = *(v98 + v99);
    sub_237FA4C9C(v98, type metadata accessor for _DeviceActivityData.ApplicationActivity);
    result = sub_237FA4C9C(v19, type metadata accessor for _DeviceActivityData.ApplicationActivity);
    if (v101 >= v100)
    {
LABEL_85:
      v20 = v120 + 1;
      v21 = v113;
      v94 = v118 + v112;
      v96 = v117 - 1;
      v5 = v116 + v112;
      if (v120 + 1 != v113)
      {
        goto LABEL_86;
      }

      v6 = v108;
      v23 = v109;
      v9 = v124;
      if (v113 < v109)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (!a4)
    {
      break;
    }

    v102 = v122;
    sub_237FDC8C8(v5, v122, type metadata accessor for _DeviceActivityData.ApplicationActivity);
    v97 = v124;
    swift_arrayInitWithTakeFrontToBack();
    sub_237FDC8C8(v102, v94, type metadata accessor for _DeviceActivityData.ApplicationActivity);
    v94 += v95;
    v5 += v95;
    if (__CFADD__(v96++, 1))
    {
      goto LABEL_85;
    }
  }

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
  return result;
}