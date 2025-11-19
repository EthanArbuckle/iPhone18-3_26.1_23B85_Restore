uint64_t sub_23844C544(uint64_t a1)
{
  v24[1] = a1;
  v25 = sub_23875BC40();
  v1 = *(v25 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v25);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[0] = sub_23875B650();
  v5 = *(v24[0] - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v24[0]);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23875BE20();
  v26 = *(v9 - 8);
  v27 = v9;
  v10 = *(v26 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875BDB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09770, &qword_2387776B0);
  v13 = sub_23875BE00();
  v14 = *(v13 - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2387632F0;
  (*(v14 + 104))(v17 + v16, *MEMORY[0x277CC9968], v13);
  sub_23844C224(v17);
  swift_setDeallocating();
  (*(v14 + 8))(v17 + v16, v13);
  swift_deallocClassInstance();
  sub_23875BBF0();
  sub_23875BD80();

  (*(v1 + 8))(v4, v25);
  v18 = sub_23875B5A0();
  LOBYTE(v1) = v19;
  (*(v5 + 8))(v8, v24[0]);
  if (v1)
  {
    v20 = 0;
  }

  else
  {
    v20 = v18;
  }

  if (v20 < 10001)
  {
    v29 = v20;
    v22 = sub_23875F600();
  }

  else
  {
    v28 = 10000;
    v29 = sub_23875F600();
    v30 = v21;
    MEMORY[0x23EE63650](43, 0xE100000000000000);
    v22 = v29;
  }

  (*(v26 + 8))(v12, v27);
  return v22;
}

uint64_t sub_23844C8EC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_23844C940(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23844C954(a1, a2);
  }

  return a1;
}

uint64_t sub_23844C954(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_23844C9EC()
{
  result = qword_27DF09798;
  if (!qword_27DF09798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09798);
  }

  return result;
}

uint64_t sub_23844CA40()
{
  v0 = sub_23875F640();

  if (v0 >= 0x20)
  {
    return 32;
  }

  else
  {
    return v0;
  }
}

void sub_23844CAA0(uint64_t a1, char a2, uint64_t a3, uint64_t *a4)
{
  v7 = *a4;
  v8 = sub_23875EA80();
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763B60;
  v12 = *MEMORY[0x277D383D8];
  *(inited + 32) = *MEMORY[0x277D383D8];
  *(inited + 40) = v8;
  *(inited + 48) = v10;
  v13 = *MEMORY[0x277D384B8];
  *(inited + 56) = *MEMORY[0x277D384B8];
  *(inited + 64) = sub_238449A8C(a2);
  *(inited + 72) = v14;
  v15 = v12;
  v16 = v13;
  v17 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v17;
  sub_2385C3214(a3, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v21);

  v19 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_23844D7E8(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v20 = sub_23875E910();

  [v19 subject:a1 sendEvent:v20];
}

uint64_t sub_23844CC84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000016 && 0x8000000238785D30 == a2;
  if (v4 || (sub_23875F630() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000238785D50 == a2 || (sub_23875F630() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000022 && 0x8000000238785D70 == a2 || (sub_23875F630() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000238785DA0 == a2 || (sub_23875F630() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000238785DC0 == a2 || (sub_23875F630() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C7070612E6D6F63 && a2 == 0xEE007370614D2E65)
  {

    return 5;
  }

  else
  {
    v6 = sub_23875F630();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_23844CE88(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_23875F3A0();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF097A8, &qword_238763D78);
      result = sub_23875F450();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_23875F3A0();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v22 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  v21 = v1;
  while (v22)
  {
    result = MEMORY[0x23EE63F70](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    v10 = *(v3 + 40);
    sub_23875C220();
    sub_23844D7E8(&qword_27DF097B0, MEMORY[0x277CBCDA8]);
    result = sub_23875E950();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *(v7 + 8 * (v12 >> 6));
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_23844D7E8(&qword_27DF097B8, MEMORY[0x277CBCDA8]);
      do
      {
        v23 = *(*(v3 + 48) + 8 * v12);
        result = sub_23875E9E0();
        if (result)
        {

          v1 = v21;
          goto LABEL_11;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v7 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v1 = v21;
    }

    *(v7 + 8 * v13) = v15 | v14;
    *(*(v3 + 48) + 8 * v12) = v8;
    v17 = *(v3 + 16);
    v9 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v18;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_23844D11C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF097C0, &qword_238763D80);
    v3 = sub_23875F450();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_23875EA80();
      sub_23875F700();
      v29 = v7;
      sub_23875EB30();
      v9 = sub_23875F760();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_23875EA80();
        v20 = v19;
        if (v18 == sub_23875EA80() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_23875F630();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_23844D310(uint64_t a1)
{
  v2 = sub_23875CF40();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF097C8, &qword_238763D88);
    v10 = sub_23875F450();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_23844D7E8(&qword_27DF097D0, MEMORY[0x277CDDE90]);
      v18 = sub_23875E950();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v6, *(v10 + 48) + v20 * v15, v2);
          sub_23844D7E8(&qword_27DF097D8, MEMORY[0x277CDDE90]);
          v25 = sub_23875E9E0();
          v26 = *v16;
          (*v16)(v6, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_23844D630(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23844D6E8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_23875B580();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_23875B540();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_23875B970();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_23844D764(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_23875B580();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_23875B540();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_23844D7E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23844D868(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_23875E550();
}

uint64_t sub_23844DA38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[0] = a1;
  v24 = a2;
  v23 = sub_23875CF90();
  v2 = *(v23 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v23);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09880, &qword_238763E20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DF097E0, &qword_238763D90);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v22 - v12;
  sub_23875E0D0();
  v14 = *MEMORY[0x277CE1020];
  v15 = sub_23875E120();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v9, v14, v15);
  (*(v16 + 56))(v9, 0, 1, v15);
  v17 = sub_23875E110();

  sub_238439884(v9, &qword_27DF09880, &qword_238763E20);
  v18 = sub_23875DFC0();
  KeyPath = swift_getKeyPath();
  v20 = 0.0;
  if (*(v22[1] + *(v22[0] + 36)))
  {
    v20 = 1.0;
  }

  v25 = v17;
  v26 = KeyPath;
  v27 = v18;
  v28 = v20;
  sub_23875CF80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09878, &qword_23876AEA0);
  sub_23844E928();
  sub_23875DDE0();
  (*(v2 + 8))(v5, v23);

  sub_23875C8B0();
  return sub_238439884(v13, qword_27DF097E0, &qword_238763D90);
}

uint64_t AccountTimeSharingRow.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v27 = a1;
  v32 = a2;
  v3 = sub_23875D590();
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v28 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DF097E0, &qword_238763D90);
  v26 = *(a1 + 16);
  swift_getTupleTypeMetadata3();
  sub_23875E540();
  swift_getWitnessTable();
  v6 = sub_23875E260();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  WitnessTable = swift_getWitnessTable();
  v36 = v6;
  v37 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = *(OpaqueTypeMetadata2 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v25 - v18;
  sub_23875CE60();
  v20 = *(v27 + 24);
  v33 = v26;
  v34 = v20;
  v35 = v29;
  sub_23875E250();
  v21 = v28;
  sub_23875D580();
  sub_23875DD60();
  (*(v30 + 8))(v21, v31);
  (*(v7 + 8))(v10, v6);
  v22 = v13[2];
  v22(v19, v17, OpaqueTypeMetadata2);
  v23 = v13[1];
  v23(v17, OpaqueTypeMetadata2);
  v22(v32, v19, OpaqueTypeMetadata2);
  return (v23)(v19, OpaqueTypeMetadata2);
}

uint64_t sub_23844E0CC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a3;
  v28 = a4;
  v25 = a1;
  v5 = *(a2 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DF097E0, &qword_238763D90);
  v12 = *(*(v24 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v24);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - v16;
  sub_23875ED50();
  v26 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = v27;
  v19 = type metadata accessor for AccountTimeSharingRow();
  v20 = v25;
  sub_23844DA38(v19, v17);
  v21 = v5[2];
  v21(v11, v20, a2);
  sub_23844E82C(v17, v15);
  v35[0] = v15;
  v21(v9, v11, a2);
  v33 = 0;
  v34 = 1;
  v35[1] = v9;
  v35[2] = &v33;
  v32[0] = v24;
  v32[1] = a2;
  v32[2] = MEMORY[0x277CE1180];
  v29 = sub_23844E89C();
  v30 = v18;
  v31 = MEMORY[0x277CE1170];
  sub_23844D868(v35, 3uLL, v32);
  v22 = v5[1];
  v22(v11, a2);
  sub_238439884(v17, qword_27DF097E0, &qword_238763D90);
  v22(v9, a2);
  sub_238439884(v15, qword_27DF097E0, &qword_238763D90);
}

uint64_t sub_23844E3FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23844E474(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        if (v9 > 2)
        {
          if (v9 == 3)
          {
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        else if (v9 == 1)
        {
          LODWORD(v9) = *a1;
        }

        else
        {
          LODWORD(v9) = *a1;
        }
      }

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

unsigned int *sub_23844E5E8(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
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
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t sub_23844E82C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DF097E0, &qword_238763D90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23844E89C()
{
  result = qword_27DF09868;
  if (!qword_27DF09868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DF097E0, &qword_238763D90);
    sub_23844E928();
    sub_23844E9B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09868);
  }

  return result;
}

unint64_t sub_23844E928()
{
  result = qword_27DF09870;
  if (!qword_27DF09870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09878, &qword_23876AEA0);
    sub_238448F8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09870);
  }

  return result;
}

unint64_t sub_23844E9B4()
{
  result = qword_27DF09330;
  if (!qword_27DF09330)
  {
    sub_23875D6E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09330);
  }

  return result;
}

uint64_t sub_23844EA10()
{
  v0 = sub_23875BE40();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_23875BE20();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_23875BD20();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_2387595E0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_23875A130();
  __swift_allocate_value_buffer(v8, qword_27DF2F628);
  __swift_project_value_buffer(v8, qword_27DF2F628);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  return sub_23875A110();
}

uint64_t sub_23844EBB4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_23875F600();
  }

  v5 = sub_23875F600();
  MEMORY[0x23EE63650](95, 0xE100000000000000);
  v4 = sub_23875F600();
  MEMORY[0x23EE63650](v4);

  return v5;
}

uint64_t sub_23844EC6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v24 = a2;
  v25 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF099A0, &qword_2387640F8);
  v7 = *(v6 - 8);
  v26 = v6;
  v27 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF099A8, &qword_238764100);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF099B0, qword_238764108);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - v19;
  v21 = *a1;
  sub_23843A3E8(&qword_27DF099B8, &qword_27DF099A8, &qword_238764100);
  sub_23875B700();
  swift_getKeyPath();
  sub_23875B6E0();

  (*(v12 + 8))(v15, v11);
  v28 = v24;
  v29 = v25;
  sub_23875B6F0();
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF099C0, &qword_238764148);
  a4[4] = sub_238453A78();
  __swift_allocate_boxed_opaque_existential_1(a4);
  sub_23843A3E8(&qword_27DF099E8, &qword_27DF099B0, qword_238764108);
  sub_23843A3E8(&qword_27DF099F0, &qword_27DF099A0, &qword_2387640F8);
  v22 = v26;
  sub_23875B6D0();
  (*(v27 + 8))(v10, v22);
  return (*(v17 + 8))(v20, v16);
}

void sub_23844EFD8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 monthAndYear];
  v4 = sub_23875EA80();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_23844F030@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v24 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF099F8, &qword_238764150);
  v6 = *(v5 - 8);
  v25 = v5;
  v26 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF099A8, &qword_238764100);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A00, &unk_238764158);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v23[-v18];
  v20 = *a1;
  sub_23843A3E8(&qword_27DF099B8, &qword_27DF099A8, &qword_238764100);
  sub_23875B700();
  swift_getKeyPath();
  sub_23875B6E0();

  (*(v11 + 8))(v14, v10);
  v27 = v24;
  sub_23875B6F0();
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A08, &unk_238764190);
  a3[4] = sub_238453BAC();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_23843A3E8(&qword_27DF09A28, &qword_27DF09A00, &unk_238764158);
  sub_23843A3E8(&qword_27DF09A30, &qword_27DF099F8, &qword_238764150);
  v21 = v25;
  sub_23875B6D0();
  (*(v26 + 8))(v9, v21);
  return (*(v16 + 8))(v19, v15);
}

id sub_23844F39C@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 year];
  *a2 = result;
  return result;
}

uint64_t sub_23844F3E4(uint64_t a1, uint64_t a2, char a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09990, &qword_2387640F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_238763E60;
  v8 = sub_23875A230();
  result = MEMORY[0x23EE5ECD0]();
  *(v7 + 32) = result;
  if ((a3 & 1) == 0)
  {
    if (qword_27DF08C90 == -1)
    {
LABEL_6:
      v10 = sub_23875A130();
      __swift_project_value_buffer(v10, qword_27DF2F628);
      v11 = sub_23875A120();
      v13 = v12;
      MEMORY[0x28223BE20](v11);
      *(&v18 - 2) = v14;
      *(&v18 - 1) = v13;
      v19 = v8;
      sub_23875BE70();

      goto LABEL_7;
    }

LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  if (a1 < -32768)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (a1 >= 0x8000)
  {
    __break(1u);
    return result;
  }

  MEMORY[0x28223BE20](result);
  *(&v18 - 8) = a1;
  v19 = v8;
  sub_23875BE70();
LABEL_7:
  sub_238449184(0, &qword_27DF130B0, 0x277CCAC30);
  v15 = sub_23875EF90();
  if (!v15)
  {
    v15 = [objc_opt_self() predicateWithValue_];
  }

  *(v7 + 40) = v15;
  v16 = sub_23875EC60();

  v17 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v17;
}

uint64_t sub_23844F680()
{
  v0 = sub_23875BD30();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23875BE20();
  __swift_allocate_value_buffer(v5, qword_27DF098C0);
  __swift_project_value_buffer(v5, qword_27DF098C0);
  (*(v1 + 104))(v4, *MEMORY[0x277CC9810], v0);
  sub_23875BD40();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_23844F7A0()
{
  v0 = sub_23875BE40();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_23875BE20();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_23875BD20();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_23875B7F0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09980, &unk_2387640E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09988, &unk_2387675D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v20 - v14;
  v16 = sub_23875BAD0();
  __swift_allocate_value_buffer(v16, qword_27DF098D8);
  __swift_project_value_buffer(v16, qword_27DF098D8);
  v17 = sub_23875BA40();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v18 = sub_23875BA10();
  (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  sub_23875B7D0();
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  return sub_23875BA50();
}

uint64_t sub_23844FA6C(uint64_t a1, uint64_t a2, int a3)
{
  v69 = a3;
  v67 = a2;
  v68 = a1;
  v3 = sub_23875BA90();
  v65 = *(v3 - 8);
  v66 = v3;
  v4 = *(v65 + 64);
  MEMORY[0x28223BE20](v3);
  v61 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875BAB0();
  v57 = *(v6 - 8);
  v58 = v6;
  v7 = *(v57 + 64);
  MEMORY[0x28223BE20](v6);
  v55 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23875BAD0();
  v62 = *(v9 - 8);
  v10 = *(v62 + 64);
  MEMORY[0x28223BE20](v9);
  v56 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v63 = &v55 - v13;
  MEMORY[0x28223BE20](v14);
  v64 = &v55 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v55 - v18;
  v20 = sub_23875BC40();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v70 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09968, &unk_2387640D0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v55 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09970, &qword_2387648B0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v55 - v30;
  v32 = sub_23875B650();
  v59 = *(v32 - 8);
  v60 = v32;
  v33 = *(v59 + 64);
  MEMORY[0x28223BE20](v32);
  v35 = &v55 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DF08C98 != -1)
  {
    swift_once();
  }

  v36 = sub_23875BE20();
  v37 = __swift_project_value_buffer(v36, qword_27DF098C0);
  v38 = *(v36 - 8);
  (*(v38 + 16))(v31, v37, v36);
  (*(v38 + 56))(v31, 0, 1, v36);
  v39 = sub_23875BE40();
  (*(*(v39 - 8) + 56))(v27, 1, 1, v39);
  v40 = v69;
  sub_23875B620();
  sub_23875B5C0();
  result = (*(v21 + 48))(v19, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v21 + 32))(v70, v19, v20);
    v42 = v64;
    v43 = v62;
    if (qword_27DF08CA0 != -1)
    {
      swift_once();
    }

    v44 = __swift_project_value_buffer(v9, qword_27DF098D8);
    (*(v43 + 16))(v42, v44, v9);
    if (v40)
    {
      v45 = v61;
      sub_23875BA80();
      v46 = v63;
      sub_23875BA60();
      (*(v65 + 8))(v45, v66);
      sub_238453D6C(&qword_27DF09978, MEMORY[0x277CC9428]);
      v47 = v70;
      sub_23875BC20();
      v48 = *(v43 + 8);
      v48(v46, v9);
      v48(v42, v9);
      (*(v21 + 8))(v47, v20);
    }

    else
    {
      v49 = v55;
      sub_23875BAA0();
      v50 = v56;
      sub_23875BA70();
      (*(v57 + 8))(v49, v58);
      v51 = v61;
      sub_23875BA80();
      v52 = v63;
      sub_23875BA60();
      (*(v65 + 8))(v51, v66);
      v53 = *(v43 + 8);
      v53(v50, v9);
      sub_238453D6C(&qword_27DF09978, MEMORY[0x277CC9428]);
      v54 = v70;
      sub_23875BC20();
      v53(v52, v9);
      v53(v42, v9);
      (*(v21 + 8))(v54, v20);
    }

    (*(v59 + 8))(v35, v60);
    return v71;
  }

  return result;
}

uint64_t sub_23845027C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_23875F700();
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    MEMORY[0x23EE641F0](0);
    v4 = v1;
    v1 = v2;
  }

  MEMORY[0x23EE641F0](v4);
  MEMORY[0x23EE641F0](v1);
  return sub_23875F760();
}

uint64_t sub_2384502F8()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    v2 = 1;
  }

  else
  {
    v3 = *(v0 + 8);
    MEMORY[0x23EE641F0](0);
    v2 = v1;
    v1 = v3;
  }

  MEMORY[0x23EE641F0](v2);
  return MEMORY[0x23EE641F0](v1);
}

uint64_t sub_238450358()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_23875F700();
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    MEMORY[0x23EE641F0](0);
    v4 = v1;
    v1 = v2;
  }

  MEMORY[0x23EE641F0](v4);
  MEMORY[0x23EE641F0](v1);
  return sub_23875F760();
}

uint64_t sub_2384503D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (a1[2])
  {
    if (v2 == v3)
    {
      return *(a2 + 16);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v5 = (v2 == v3) & ~*(a2 + 16);
    if (a1[1] == a2[1])
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_238450410()
{
  swift_getKeyPath();
  sub_238453D6C(&qword_27DF09938, type metadata accessor for GroupedTransactionsViewDataProvider);
  sub_23875BE90();

  v1 = *(v0 + 32);
}

uint64_t sub_2384504B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_238453D6C(&qword_27DF09938, type metadata accessor for GroupedTransactionsViewDataProvider);
  sub_23875BE90();

  *a2 = *(v3 + 32);
}

uint64_t sub_238450560(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_23845058C(v4);
}

uint64_t sub_23845058C(uint64_t a1)
{
  v3 = *(v1 + 32);

  v5 = sub_238519C6C(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 32);
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_238453D6C(&qword_27DF09938, type metadata accessor for GroupedTransactionsViewDataProvider);
    sub_23875BE80();
  }
}

uint64_t sub_2384506E0()
{
  swift_getKeyPath();
  sub_238453D6C(&qword_27DF09938, type metadata accessor for GroupedTransactionsViewDataProvider);
  sub_23875BE90();

  v1 = *(v0 + 40);
}

uint64_t sub_238450784@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_238453D6C(&qword_27DF09938, type metadata accessor for GroupedTransactionsViewDataProvider);
  sub_23875BE90();

  *a2 = *(v3 + 40);
}

uint64_t sub_238450830(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_23845085C(v4);
}

uint64_t sub_23845085C(uint64_t a1)
{
  if (sub_238519EAC(*(v1 + 40), a1))
  {
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_238453D6C(&qword_27DF09938, type metadata accessor for GroupedTransactionsViewDataProvider);
    sub_23875BE80();
  }
}

uint64_t sub_2384509A0()
{
  swift_getKeyPath();
  sub_238453D6C(&qword_27DF09938, type metadata accessor for GroupedTransactionsViewDataProvider);
  sub_23875BE90();

  v1 = *(v0 + 48);
}

uint64_t sub_238450A44@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_238453D6C(&qword_27DF09938, type metadata accessor for GroupedTransactionsViewDataProvider);
  sub_23875BE90();

  *a2 = *(v3 + 48);
}

uint64_t sub_238450AF0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_238450B1C(v4);
}

uint64_t sub_238450B1C(uint64_t a1)
{
  if (sub_238519EAC(*(v1 + 48), a1))
  {
    *(v1 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_238453D6C(&qword_27DF09938, type metadata accessor for GroupedTransactionsViewDataProvider);
    sub_23875BE80();
  }
}

id sub_238450C60()
{
  v66[1] = *MEMORY[0x277D85DE8];
  v1 = sub_23875C1E0();
  v64 = *(v1 - 8);
  v65 = v1;
  v2 = *(v64 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23875BE00();
  v61 = *(v5 - 8);
  v6 = *(v61 + 64);
  MEMORY[0x28223BE20](v5);
  v59 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_23875BE20();
  v58 = *(v60 - 8);
  v8 = *(v58 + 64);
  MEMORY[0x28223BE20](v60);
  v56 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_238758F50();
  v55 = *(v10 - 8);
  v11 = *(v55 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v53 - v16;
  v57 = sub_23875BC40();
  v63 = *(v57 - 8);
  v18 = *(v63 + 64);
  MEMORY[0x28223BE20](v57);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v0[2];
  v22 = [objc_opt_self() currentQueryGenerationToken];
  v66[0] = 0;
  v23 = [v21 setQueryGenerationFromToken:v22 error:v66];

  if (v23)
  {
    v62 = v0;
    v24 = v66[0];
    v25 = sub_238452DA8(v21);
    v54 = v5;
    v26 = v62;
    sub_23845058C(v25);
    swift_getKeyPath();
    v66[0] = v26;
    sub_238453D6C(&qword_27DF09938, type metadata accessor for GroupedTransactionsViewDataProvider);
    sub_23875BE90();

    v27 = v26[4];
    if (*(v27 + 16))
    {
      v28 = v55;
      (*(v55 + 16))(v13, v27 + ((*(v28 + 80) + 32) & ~*(v28 + 80)), v10);
      sub_238758E80();
      (*(v28 + 8))(v13, v10);
      v29 = v63;
      v30 = v57;
      (*(v63 + 56))(v17, 0, 1, v57);
      (*(v29 + 32))(v20, v17, v30);
      v31 = v54;
    }

    else
    {
      v34 = v63;
      v30 = v57;
      (*(v63 + 56))(v17, 1, 1, v57);
      sub_23875BBF0();
      v35 = (*(v34 + 48))(v17, 1, v30);
      v31 = v54;
      if (v35 != 1)
      {
        sub_238439884(v17, &qword_27DF12E00, &unk_238763FC0);
      }
    }

    v36 = v56;
    sub_23875BDB0();
    v37 = v61;
    v38 = v59;
    (*(v61 + 104))(v59, *MEMORY[0x277CC9988], v31);
    v39 = sub_23875BE10();
    (*(v37 + 8))(v38, v31);
    (*(v58 + 8))(v36, v60);
    v40 = sub_238453170();
    v49 = v62;
    sub_23845085C(v40);
    v50 = sub_238453698(v39, v21);
    v51 = (v63 + 8);
    sub_238450B1C(v50);
    (*v51)(v20, v30);
    result = sub_2384514F0(v49);
  }

  else
  {
    v32 = v66[0];
    v33 = sub_23875B730();

    swift_willThrow();
    sub_23875C120();
    v41 = v33;
    v42 = sub_23875C1B0();
    v43 = sub_23875EFE0();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      v46 = v33;
      v47 = _swift_stdlib_bridgeErrorToNSError();
      *(v44 + 4) = v47;
      *v45 = v47;
      _os_log_impl(&dword_2383F8000, v42, v43, "Failed to fetch latest transactions: %@.", v44, 0xCu);
      sub_238439884(v45, &qword_27DF09930, &unk_2387638C0);
      MEMORY[0x23EE64DF0](v45, -1, -1);
      MEMORY[0x23EE64DF0](v44, -1, -1);
    }

    else
    {
    }

    result = (*(v64 + 8))(v4, v65);
  }

  v48 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_2384514F0(uint64_t a1)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v2 = sub_23875C1E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v23[0] = 0;
  v8 = [v7 setQueryGenerationFromToken:0 error:v23];
  v9 = v23[0];
  if (v8)
  {
    v10 = *MEMORY[0x277D85DE8];

    return v9;
  }

  else
  {
    v22 = v23[0];
    v12 = v23[0];
    v13 = sub_23875B730();

    swift_willThrow();
    sub_23875C120();
    v14 = v13;
    v15 = sub_23875C1B0();
    v16 = sub_23875EFE0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = v13;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      sub_238439884(v18, &qword_27DF09930, &unk_2387638C0);
      MEMORY[0x23EE64DF0](v18, -1, -1);
      MEMORY[0x23EE64DF0](v17, -1, -1);
    }

    else
    {
    }

    result = (*(v3 + 8))(v6, v2);
    v21 = *MEMORY[0x277D85DE8];
  }

  return result;
}

uint64_t sub_238451770()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = OBJC_IVAR____TtC12FinanceKitUI35GroupedTransactionsViewDataProvider___observationRegistrar;
  v6 = sub_23875BED0();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GroupedTransactionsViewDataProvider()
{
  result = qword_27DF09900;
  if (!qword_27DF09900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_238451888()
{
  result = sub_23875BED0();
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

uint64_t getEnumTagSinglePayload for TransactionGroupUnit(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TransactionGroupUnit(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_238451A08()
{
  result = qword_27DF09918;
  if (!qword_27DF09918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09918);
  }

  return result;
}

uint64_t sub_238451A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_23875ED50();
  *(v4 + 24) = sub_23875ED40();
  v6 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_238451AF4, v6, v5);
}

uint64_t sub_238451AF4()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_238450C60();
  v3 = v0[1];

  return v3();
}

uint64_t sub_238451B58()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  v6 = sub_23875ED80();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_23875ED50();

  v7 = sub_23875ED40();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v1;
  sub_2386C3BA4(0, 0, v5, &unk_238763FB8, v8);
}

uint64_t sub_238451C7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2384494A4;

  return sub_238451A5C(a1, v4, v5, v6);
}

void sub_238451D30(id *a1)
{
  v1 = [*a1 transactionDate];
  sub_23875BBE0();
}

uint64_t sub_238451D90(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v12 = MEMORY[0x277D84F90];
  sub_2385FE76C(0, v3 & ~(v3 >> 63), 0);
  v4 = v12;
  if (!v2)
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return v4;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23EE63F70](i, a1);
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v6 = *(a1 + 8 * i + 32);
        swift_unknownObjectRetain();
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v3 = sub_23875F3A0();
          goto LABEL_3;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09940, &qword_238764028);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09948, &qword_238764030);
      if ((swift_dynamicCast() & 1) == 0)
      {

        return 0;
      }

      v9 = *(v12 + 16);
      v8 = *(v12 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_2385FE76C((v8 > 1), v9 + 1, 1);
      }

      *(v12 + 16) = v9 + 1;
      *(v12 + 8 * v9 + 32) = v11;
      if (v7 == v2)
      {
        return v4;
      }
    }
  }

  v2 = sub_23875F3A0();
  if (v2)
  {
    goto LABEL_7;
  }

  return v4;
}

uint64_t sub_238451F44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A50, &qword_2387641A8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v23[-v4 - 8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A58, &unk_2387641B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v11);
  v22 = &v23[-v12 - 8];
  v13 = *(a1 + 16);
  v24 = MEMORY[0x277D84F90];
  sub_2385FE940(0, v13, 0);
  v14 = v24;
  if (v13)
  {
    v15 = a1 + 32;
    v16 = (v7 + 56);
    while (1)
    {
      sub_238453DB4(v15, v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A40, &qword_238777390);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v17 = v6;
      (*v16)(v5, 0, 1, v6);
      v18 = v22;
      sub_238453E10(v5, v22);
      sub_238453E10(v18, v10);
      v24 = v14;
      v20 = *(v14 + 16);
      v19 = *(v14 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_2385FE940(v19 > 1, v20 + 1, 1);
        v14 = v24;
      }

      *(v14 + 16) = v20 + 1;
      sub_238453E10(v10, v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v20);
      v15 += 32;
      --v13;
      v6 = v17;
      if (!v13)
      {
        return v14;
      }
    }

    (*v16)(v5, 1, 1, v6);
    sub_238439884(v5, &qword_27DF09A50, &qword_2387641A8);
    return 0;
  }

  return v14;
}

uint64_t sub_2384521E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v13 = MEMORY[0x277D84F90];
  sub_2385FE9A0(0, v2, 0);
  v3 = v13;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_238453DB4(i, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A40, &qword_238777390);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A48, &qword_2387641A0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v5 = v11;
      v13 = v3;
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_2385FE9A0((v6 > 1), v7 + 1, 1);
        v5 = v11;
        v3 = v13;
      }

      *(v3 + 16) = v7 + 1;
      v8 = v3 + 24 * v7;
      *(v8 + 32) = v10;
      *(v8 + 40) = v5;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void *sub_238452334(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09950, qword_238764060);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_2384523A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_23875EBF0();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_238452934();
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
      result = sub_23875F4B0();
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

uint64_t sub_238452934()
{
  v0 = sub_23875EC00();
  v4 = sub_2384529B4(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_2384529B4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_23875EB20();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_23875F200();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_238452334(v9, 0);
  v12 = sub_238452B0C(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_23875EB20();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_23875F4B0();
LABEL_4:

  return sub_23875EB20();
}

unint64_t sub_238452B0C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_238452D2C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_23875EBB0();
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
          result = sub_23875F4B0();
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

    result = sub_238452D2C(v12, a6, a7);
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

    result = sub_23875EB90();
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

uint64_t sub_238452D2C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_23875EBC0();
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
    v5 = MEMORY[0x23EE63680](15, a1 >> 16);
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

size_t sub_238452DA8(uint64_t a1)
{
  v30 = a1;
  v1 = sub_238758F50();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - v7;
  sub_23875A230();
  v9 = MEMORY[0x23EE5ECD0]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_238763E70;
  sub_238449184(0, &qword_27DF09960, 0x277CCAC98);
  swift_getKeyPath();
  *(v10 + 32) = sub_23875F040();
  v11 = sub_23875A0C0();
  [v11 setPredicate_];
  v12 = v11;
  v13 = sub_23875EC60();

  [v12 setSortDescriptors_];

  [v12 setFetchLimit_];
  v14 = v30;
  v15 = v31;
  v16 = sub_23875F140();
  if (v15)
  {

    return v14;
  }

  v31 = v16;
  if (!(v16 >> 62))
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_5;
    }

LABEL_18:

    return MEMORY[0x277D84F90];
  }

  v17 = sub_23875F3A0();
  if (!v17)
  {
    goto LABEL_18;
  }

LABEL_5:
  v30 = 0;
  v32 = MEMORY[0x277D84F90];
  result = sub_2385FE728(0, v17 & ~(v17 >> 63), 0);
  if ((v17 & 0x8000000000000000) == 0)
  {
    v28 = v12;
    v29 = v9;
    v14 = v32;
    v19 = v31;
    v20 = v1;
    if ((v31 & 0xC000000000000001) != 0)
    {
      v21 = 0;
      do
      {
        MEMORY[0x23EE63F70](v21, v19);
        sub_238758F60();
        v32 = v14;
        v23 = *(v14 + 16);
        v22 = *(v14 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_2385FE728(v22 > 1, v23 + 1, 1);
          v14 = v32;
        }

        ++v21;
        *(v14 + 16) = v23 + 1;
        (*(v2 + 32))(v14 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v23, v8, v20);
        v19 = v31;
      }

      while (v17 != v21);
    }

    else
    {
      v24 = 32;
      do
      {
        v25 = *(v19 + v24);
        sub_238758F60();
        v32 = v14;
        v27 = *(v14 + 16);
        v26 = *(v14 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_2385FE728(v26 > 1, v27 + 1, 1);
          v14 = v32;
        }

        *(v14 + 16) = v27 + 1;
        (*(v2 + 32))(v14 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v27, v6, v20);
        v24 += 8;
        --v17;
        v19 = v31;
      }

      while (v17);
    }

    return v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_238453170()
{
  sub_23875A230();
  v2 = sub_23875A1A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09940, &qword_238764028);
  v3 = sub_23875F140();
  if (!v0)
  {
    v4 = sub_238451D90(v3);

    v1 = MEMORY[0x277D84F90];
    if (!v4)
    {
      v4 = MEMORY[0x277D84F90];
    }

    v6 = *(v4 + 16);
    if (!v6)
    {
LABEL_88:

      return v1;
    }

    v7 = 0;
    v47 = v46 + 1;
LABEL_7:
    v43 = v1;
    while (1)
    {
      if (v7 >= *(v4 + 16))
      {
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
        return result;
      }

      v8 = *(v4 + 32 + 8 * v7++);
      if (!*(v8 + 16))
      {
        goto LABEL_10;
      }

      v9 = sub_23853B46C(0x646E4168746E6F6DLL, 0xEC00000072616559);
      if ((v10 & 1) == 0)
      {
        goto LABEL_9;
      }

      sub_238453DB4(*(v8 + 56) + 32 * v9, v46);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_9;
      }

      result = v45;
      v11 = HIBYTE(v45) & 0xF;
      v12 = v44 & 0xFFFFFFFFFFFFLL;
      if ((v45 & 0x2000000000000000) != 0)
      {
        v13 = HIBYTE(v45) & 0xF;
      }

      else
      {
        v13 = v44 & 0xFFFFFFFFFFFFLL;
      }

      if (!v13)
      {

LABEL_9:

        goto LABEL_10;
      }

      if ((v45 & 0x1000000000000000) == 0)
      {
        break;
      }

      v17 = sub_2384523A8(v44, v45, 10);
      v42 = v37;

      if ((v42 & 1) == 0)
      {
LABEL_81:
        v1 = v43;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_238497FC0(0, *(v43 + 16) + 1, 1, v43);
          v1 = result;
        }

        v39 = *(v1 + 16);
        v38 = *(v1 + 24);
        v40 = v39 + 1;
        if (v39 >= v38 >> 1)
        {
          result = sub_238497FC0((v38 > 1), v39 + 1, 1, v1);
          v40 = v39 + 1;
          v1 = result;
        }

        *(v1 + 16) = v40;
        v41 = v1 + 24 * v39;
        *(v41 + 32) = v17 / 100;
        *(v41 + 40) = v17 % 100;
        *(v41 + 48) = 0;
        if (v7 == v6)
        {
          goto LABEL_88;
        }

        goto LABEL_7;
      }

LABEL_10:
      if (v7 == v6)
      {
        v1 = v43;
        goto LABEL_88;
      }
    }

    if ((v45 & 0x2000000000000000) != 0)
    {
      v46[0] = v44;
      v46[1] = v45 & 0xFFFFFFFFFFFFFFLL;
      if (v44 == 43)
      {
        if (!v11)
        {
          goto LABEL_93;
        }

        v14 = (v11 - 1);
        if (v11 != 1)
        {
          v17 = 0;
          v28 = v47;
          while (1)
          {
            v29 = *v28 - 48;
            if (v29 > 9)
            {
              break;
            }

            v30 = 10 * v17;
            if ((v17 * 10) >> 64 != (10 * v17) >> 63)
            {
              break;
            }

            v17 = v30 + v29;
            if (__OFADD__(v30, v29))
            {
              break;
            }

            ++v28;
            if (!--v14)
            {
              goto LABEL_76;
            }
          }
        }
      }

      else if (v44 == 45)
      {
        if (!v11)
        {
          goto LABEL_91;
        }

        v14 = (v11 - 1);
        if (v11 != 1)
        {
          v17 = 0;
          v21 = v47;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v17;
            if ((v17 * 10) >> 64 != (10 * v17) >> 63)
            {
              break;
            }

            v17 = v23 - v22;
            if (__OFSUB__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v14)
            {
              goto LABEL_76;
            }
          }
        }
      }

      else if (v11)
      {
        v17 = 0;
        v33 = v46;
        while (1)
        {
          v34 = *v33 - 48;
          if (v34 > 9)
          {
            break;
          }

          v35 = 10 * v17;
          if ((v17 * 10) >> 64 != (10 * v17) >> 63)
          {
            break;
          }

          v17 = v35 + v34;
          if (__OFADD__(v35, v34))
          {
            break;
          }

          ++v33;
          if (!--v11)
          {
LABEL_74:
            LOBYTE(v14) = 0;
            goto LABEL_76;
          }
        }
      }
    }

    else
    {
      if ((v44 & 0x1000000000000000) != 0)
      {
        v14 = ((v45 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v14 = sub_23875F4B0();
        result = v45;
      }

      v15 = *v14;
      if (v15 == 43)
      {
        if (v12 < 1)
        {
          goto LABEL_94;
        }

        v24 = v12 - 1;
        if (v12 != 1)
        {
          v17 = 0;
          if (!v14)
          {
            goto LABEL_76;
          }

          v25 = v14 + 1;
          while (1)
          {
            v26 = *v25 - 48;
            if (v26 > 9)
            {
              break;
            }

            v27 = 10 * v17;
            if ((v17 * 10) >> 64 != (10 * v17) >> 63)
            {
              break;
            }

            v17 = v27 + v26;
            if (__OFADD__(v27, v26))
            {
              break;
            }

            ++v25;
            if (!--v24)
            {
              goto LABEL_74;
            }
          }
        }
      }

      else if (v15 == 45)
      {
        if (v12 < 1)
        {
          goto LABEL_92;
        }

        v16 = v12 - 1;
        if (v12 != 1)
        {
          v17 = 0;
          if (!v14)
          {
            goto LABEL_76;
          }

          v18 = v14 + 1;
          while (1)
          {
            v19 = *v18 - 48;
            if (v19 > 9)
            {
              break;
            }

            v20 = 10 * v17;
            if ((v17 * 10) >> 64 != (10 * v17) >> 63)
            {
              break;
            }

            v17 = v20 - v19;
            if (__OFSUB__(v20, v19))
            {
              break;
            }

            ++v18;
            if (!--v16)
            {
              goto LABEL_74;
            }
          }
        }
      }

      else if (v12)
      {
        v17 = 0;
        if (!v14)
        {
          goto LABEL_76;
        }

        while (1)
        {
          v31 = *v14 - 48;
          if (v31 > 9)
          {
            break;
          }

          v32 = 10 * v17;
          if ((v17 * 10) >> 64 != (10 * v17) >> 63)
          {
            break;
          }

          v17 = v32 + v31;
          if (__OFADD__(v32, v31))
          {
            break;
          }

          ++v14;
          if (!--v12)
          {
            goto LABEL_74;
          }
        }
      }
    }

    v17 = 0;
    LOBYTE(v14) = 1;
LABEL_76:
    LOBYTE(v44) = v14;
    v36 = v14;

    if ((v36 & 1) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_10;
  }

  return v1;
}

uint64_t sub_238453698(uint64_t a1, uint64_t a2)
{
  sub_23875A230();
  v4 = sub_23875A190();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09940, &qword_238764028);
  v5 = sub_23875F140();
  if (!v2)
  {
    v6 = sub_238451D90(v5);

    a2 = MEMORY[0x277D84F90];
    if (!v6)
    {
      v6 = MEMORY[0x277D84F90];
    }

    v8 = *(v6 + 16);
    if (!v8)
    {
LABEL_19:

      return a2;
    }

    v9 = 0;
LABEL_7:
    v10 = v9;
    while (1)
    {
      if (v10 >= *(v6 + 16))
      {
        __break(1u);
        return result;
      }

      v11 = *(v6 + 32 + 8 * v10);
      if (*(v11 + 16))
      {
        v12 = *(v6 + 32 + 8 * v10);

        v13 = sub_23853B46C(1918985593, 0xE400000000000000);
        if (v14)
        {
          sub_238453DB4(*(v11 + 56) + 32 * v13, v20);

          result = swift_dynamicCast();
          if (result)
          {
            v19 = v21;
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_238497FC0(0, *(a2 + 16) + 1, 1, a2);
              a2 = result;
            }

            v16 = *(a2 + 16);
            v15 = *(a2 + 24);
            v17 = v16 + 1;
            if (v16 >= v15 >> 1)
            {
              result = sub_238497FC0((v15 > 1), v16 + 1, 1, a2);
              v17 = v16 + 1;
              a2 = result;
            }

            v9 = v10 + 1;
            *(a2 + 16) = v17;
            v18 = a2 + 24 * v16;
            *(v18 + 32) = v19;
            *(v18 + 40) = 0;
            *(v18 + 48) = 1;
            if (v8 - 1 == v10)
            {
              goto LABEL_19;
            }

            goto LABEL_7;
          }
        }

        else
        {
        }
      }

      if (v8 == ++v10)
      {
        goto LABEL_19;
      }
    }
  }

  return a2;
}

uint64_t sub_2384538BC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 48);
  *(v1 + 48) = *(v0 + 24);
}

uint64_t keypath_setTm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_23845392C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 40);
  *(v1 + 40) = *(v0 + 24);
}

uint64_t sub_23845396C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 32);
  *(v1 + 32) = *(v0 + 24);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_238453A78()
{
  result = qword_27DF099C8;
  if (!qword_27DF099C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF099C0, &qword_238764148);
    sub_238453C50(&qword_27DF099D0, &qword_27DF099B0, qword_238764108);
    sub_238453B1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF099C8);
  }

  return result;
}

unint64_t sub_238453B1C()
{
  result = qword_27DF099E0;
  if (!qword_27DF099E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF099A0, &qword_2387640F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF099E0);
  }

  return result;
}

unint64_t sub_238453BAC()
{
  result = qword_27DF09A10;
  if (!qword_27DF09A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09A08, &unk_238764190);
    sub_238453C50(&qword_27DF09A18, &qword_27DF09A00, &unk_238764158);
    sub_238453CE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09A10);
  }

  return result;
}

uint64_t sub_238453C50(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_23843A3E8(&qword_27DF099D8, &qword_27DF099A8, &qword_238764100);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_238453CE8()
{
  result = qword_27DF09A20;
  if (!qword_27DF09A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF099F8, &qword_238764150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09A20);
  }

  return result;
}

uint64_t sub_238453D6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_238453DB4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_238453E10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A58, &unk_2387641B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ContinuousGroupBoxStyle.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for ContinuousGroupBoxStyle();
  *(a1 + *(result + 20)) = 0x403A000000000000;
  return result;
}

uint64_t ContinuousGroupBoxStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A60, &qword_2387641F8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A68, &qword_238764200);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A70, &qword_238764208);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  *v6 = sub_23875D030();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A78, &qword_238764210);
  sub_23845425C(&v6[*(v15 + 44)]);
  v16 = *(v1 + *(type metadata accessor for ContinuousGroupBoxStyle() + 20));
  sub_23875E4A0();
  sub_23875C9C0();
  sub_2384396E4(v6, v10, &qword_27DF09A60, &qword_2387641F8);
  v17 = &v10[*(v7 + 36)];
  v18 = v35;
  *(v17 + 4) = v34;
  *(v17 + 5) = v18;
  *(v17 + 6) = v36;
  v19 = v31;
  *v17 = v30;
  *(v17 + 1) = v19;
  v20 = v33;
  *(v17 + 2) = v32;
  *(v17 + 3) = v20;
  v21 = [objc_opt_self() secondarySystemBackgroundColor];
  v22 = sub_23875DFB0();
  LOBYTE(v6) = sub_23875D780();
  sub_2384396E4(v10, v14, &qword_27DF09A68, &qword_238764200);
  v23 = &v14[*(v11 + 36)];
  *v23 = v22;
  v23[8] = v6;
  v24 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A80, &qword_238764218) + 36));
  v25 = *(sub_23875C980() + 20);
  v26 = *MEMORY[0x277CE0118];
  v27 = sub_23875CF50();
  (*(*(v27 - 8) + 104))(&v24[v25], v26, v27);
  *v24 = v16;
  *(v24 + 1) = v16;
  *&v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A88, &qword_238764220) + 36)] = 256;
  return sub_2384396E4(v14, a1, &qword_27DF09A70, &qword_238764208);
}

uint64_t sub_23845425C@<X0>(char *a1@<X8>)
{
  v31 = a1;
  v29 = sub_23875D5C0();
  v1 = *(v29 - 8);
  v2 = v1[8];
  v3 = MEMORY[0x28223BE20](v29);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - v6;
  v8 = sub_23875D5A0();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  sub_23875ED50();
  v30 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v28 = v15;
  sub_23875D5B0();
  sub_23875D5D0();
  v16 = v9[2];
  v16(v13, v15, v8);
  v27 = v7;
  v17 = v8;
  v18 = v1[2];
  v19 = v29;
  v18(v5, v7, v29);
  v26 = v5;
  v20 = v31;
  v16(v31, v13, v17);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09AD8, &unk_238764280);
  v22 = v26;
  v18(&v20[*(v21 + 48)], v26, v19);
  v23 = v1[1];
  v23(v27, v19);
  v24 = v9[1];
  v24(v28, v17);
  v23(v22, v19);
  v24(v13, v17);
}

uint64_t sub_238454578(uint64_t a1)
{
  v2 = sub_23875C450();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_23875CA20();
}

uint64_t type metadata accessor for ContinuousGroupBoxStyle()
{
  result = qword_27DF09A90;
  if (!qword_27DF09A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2384546D0()
{
  sub_238438628();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_238454744()
{
  result = qword_27DF09AA0;
  if (!qword_27DF09AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09A80, &qword_238764218);
    sub_2384547FC();
    sub_23843A3E8(&qword_27DF09AD0, &qword_27DF09A88, &qword_238764220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09AA0);
  }

  return result;
}

unint64_t sub_2384547FC()
{
  result = qword_27DF09AA8;
  if (!qword_27DF09AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09A70, &qword_238764208);
    sub_2384548B4();
    sub_23843A3E8(&qword_27DF09AC0, &qword_27DF09AC8, &unk_23876A000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09AA8);
  }

  return result;
}

unint64_t sub_2384548B4()
{
  result = qword_27DF09AB0;
  if (!qword_27DF09AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09A68, &qword_238764200);
    sub_23843A3E8(&qword_27DF09AB8, &qword_27DF09A60, &qword_2387641F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09AB0);
  }

  return result;
}

uint64_t sub_23845496C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_23875C1E0();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  sub_23875ED50();
  v5[8] = sub_23875ED40();
  v10 = sub_23875ECE0();
  v5[9] = v10;
  v5[10] = v9;

  return MEMORY[0x2822009F8](sub_238454A60, v10, v9);
}

uint64_t sub_238454A60()
{
  v1 = v0[4];
  v0[2] = v0[3];
  v2 = *(v1 + 16);
  v3 = swift_allocObject();
  v0[11] = v3;
  *(v3 + 16) = v2;
  v4 = *(MEMORY[0x277CC6540] + 4);

  v5 = swift_task_alloc();
  v0[12] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09AE8, &unk_238764340);
  v7 = sub_238455BF0();
  *v5 = v0;
  v5[1] = sub_238454B80;
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282116CB8](v7, &unk_238764368, v3, v6, v8, v7);
}

uint64_t sub_238454B80()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_238454D04;
  }

  else
  {
    v7 = v2[11];

    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_238454C9C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_238454C9C()
{
  v1 = v0[8];

  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_238454D04()
{
  v27 = v0;
  v1 = v0[13];
  v2 = v0[11];
  v4 = v0[7];
  v3 = v0[8];

  sub_23875C120();
  v5 = v1;
  v6 = sub_23875C1B0();
  v7 = sub_23875EFE0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[13];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2383F8000, v6, v7, "Failed to kick off authorization. Error: %@", v9, 0xCu);
    sub_238455DD4(v10);
    MEMORY[0x23EE64DF0](v10, -1, -1);
    MEMORY[0x23EE64DF0](v9, -1, -1);
  }

  v14 = v0[6];
  v13 = v0[7];
  v16 = v0[4];
  v15 = v0[5];

  (*(v14 + 8))(v13, v15);
  v17 = *(v16 + 24);
  v18 = v0[13];
  if (v17)
  {
    v19 = *(v16 + 32);
    v25 = v0[13];
    v26 = 1;

    v17(&v25);
    sub_2384348A8(v17);
  }

  v20 = *(v16 + 24);
  v21 = *(v16 + 32);
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  sub_2384348A8(v20);
  v22 = v0[7];

  v23 = v0[1];

  return v23();
}

uint64_t sub_238454ED4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *(v3 + 32) = a3;
  *(v3 + 40) = v4;
  return MEMORY[0x2822009F8](sub_238454EF8, 0, 0);
}

uint64_t sub_238454EF8()
{
  receiver = v0[2].receiver;
  super_class = v0[2].super_class;
  v3 = type metadata accessor for XPCFinancialConnectionExtensionAuthorizationParams();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC12FinanceKitUI50XPCFinancialConnectionExtensionAuthorizationParams_value] = receiver;
  v0[1].receiver = v4;
  v0[1].super_class = v3;

  v5 = objc_msgSendSuper2(v0 + 1, sel_init);
  [(objc_class *)super_class authorizeWithParams:v5];

  v6 = v0->super_class;

  return v6();
}

uint64_t sub_238454FC4()
{
  v1 = v0[2];

  v2 = v0[4];
  sub_2384348A8(v0[3]);
  v3 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t sub_238455030@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_23875C260();
  *a1 = result;
  return result;
}

uint64_t sub_238455080(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v15 = v1;

  sub_23875A480();
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09AE8, &unk_238764340);
  sub_238455BF0();
  sub_238757720();
  v8 = *(v1 + 40);
  *(v1 + 40) = a1;

  v9 = sub_23875ED80();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  sub_23875ED50();
  swift_retain_n();

  v10 = sub_23875ED40();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = a1;
  v11[5] = v2;
  sub_2386C3BA4(0, 0, v7, &unk_238764358, v11);
}

uint64_t sub_238455214(uint64_t a1)
{
  v2 = v1;
  v4 = (v1 + 24);
  v3 = *(v1 + 24);
  if (v3)
  {
    v5 = *(v1 + 32);
    v9 = a1;
    v10 = 1;

    v3(&v9);
    sub_2384348A8(v3);
    v6 = *(v2 + 24);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v2 + 32);
  *v4 = 0;
  v4[1] = 0;

  return sub_2384348A8(v6);
}

void *sub_2384552A4(void *result)
{
  if (result)
  {
    v2 = v1;
    v4 = (v1 + 24);
    v3 = *(v1 + 24);
    if (v3)
    {
      v5 = *(v1 + 32);
      v10 = result;
      v11 = 1;
      v6 = result;
      v7 = result;
      sub_238455C54(v3);
      v3(&v10);
      sub_2384348A8(v3);

      v8 = *(v2 + 24);
    }

    else
    {
      v8 = 0;
    }

    v9 = *(v2 + 32);
    *v4 = 0;
    v4[1] = 0;

    return sub_2384348A8(v8);
  }

  return result;
}

uint64_t sub_23845536C()
{
  if (*(v0 + 40))
  {
    v3 = *(v0 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09AE8, &unk_238764340);
    sub_238455BF0();
    sub_238757710();
    v1 = *(v0 + 40);
  }

  *(v0 + 40) = 0;
}

uint64_t sub_238455478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_23875C1E0();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  sub_23875ED50();
  v5[7] = sub_23875ED40();
  v10 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_23845556C, v10, v9);
}

uint64_t sub_23845556C()
{
  v24 = v0;
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[3];

  sub_23875C120();
  v4 = v3;
  v5 = sub_23875C1B0();
  v6 = sub_23875EFC0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&dword_2383F8000, v5, v6, "Extension Host: Result: %@", v8, 0xCu);
    sub_238455DD4(v9);
    MEMORY[0x23EE64DF0](v9, -1, -1);
    MEMORY[0x23EE64DF0](v8, -1, -1);
  }

  v12 = v0[5];
  v11 = v0[6];
  v13 = v0[4];
  v14 = v0[2];

  (*(v12 + 8))(v11, v13);
  v15 = *(v14 + 24);
  if (v15)
  {
    v16 = *(v14 + 32);
    v22 = *(v0[3] + OBJC_IVAR___XPCFinancialConnectionExtensionAuthorizationResult_value);
    v23 = 0;

    sub_238455C54(v15);
    v15(&v22);
    sub_2384348A8(v15);

    v17 = *(v14 + 24);
  }

  else
  {
    v17 = 0;
  }

  v18 = v0[6];
  v19 = *(v14 + 32);
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  sub_2384348A8(v17);

  v20 = v0[1];

  return v20();
}

uint64_t sub_238455768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_23875C1E0();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  sub_23875ED50();
  v5[7] = sub_23875ED40();
  v10 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_23845585C, v10, v9);
}

uint64_t sub_23845585C()
{
  v25 = v0;
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[3];

  sub_23875C120();
  v4 = v3;
  v5 = sub_23875C1B0();
  v6 = sub_23875EFE0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2383F8000, v5, v6, "Extension Host: Error: %@", v8, 0xCu);
    sub_238455DD4(v9);
    MEMORY[0x23EE64DF0](v9, -1, -1);
    MEMORY[0x23EE64DF0](v8, -1, -1);
  }

  v13 = v0[5];
  v12 = v0[6];
  v14 = v0[4];
  v15 = v0[2];

  (*(v13 + 8))(v12, v14);
  v16 = *(v15 + 24);
  if (v16)
  {
    v17 = *(v15 + 32);
    v23 = v0[3];
    v24 = 1;

    v16(&v23);
    sub_2384348A8(v16);
    v18 = *(v15 + 24);
  }

  else
  {
    v18 = 0;
  }

  v19 = v0[6];
  v20 = *(v15 + 32);
  *(v15 + 24) = 0;
  *(v15 + 32) = 0;
  sub_2384348A8(v18);

  v21 = v0[1];

  return v21();
}

uint64_t sub_238455A48(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - v10;
  v12 = sub_23875ED80();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_23875ED50();
  v13 = a3;
  swift_retain_n();
  v14 = v13;
  v15 = sub_23875ED40();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = a1;
  v16[5] = v14;
  sub_2386C3BA4(0, 0, v11, a5, v16);
}

unint64_t sub_238455B9C()
{
  result = qword_27DF09AE0;
  if (!qword_27DF09AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09AE0);
  }

  return result;
}

unint64_t sub_238455BF0()
{
  result = qword_27DF09AF0;
  if (!qword_27DF09AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09AE8, &unk_238764340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09AF0);
  }

  return result;
}

uint64_t sub_238455C54(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_238455C64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2384494A4;

  return sub_23845496C(a1, v4, v5, v7, v6);
}

uint64_t sub_238455D24(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2384494A4;

  return sub_238454ED4(a1, a2, v6);
}

uint64_t sub_238455DD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09930, &unk_2387638C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_0(void (*a1)(void))
{
  v3 = v1[2];
  swift_unknownObjectRelease();
  v4 = v1[4];

  a1(v1[5]);

  return MEMORY[0x2821FE8E8](v1, 48, 7);
}

uint64_t sub_238455E94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_238449A7C;

  return sub_238455768(a1, v4, v5, v7, v6);
}

uint64_t sub_238455F54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_238449A7C;

  return sub_238455478(a1, v4, v5, v7, v6);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_238456034(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23845607C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

void sub_238456124()
{
  sub_2384561E8();
  if (v0 <= 0x3F)
  {
    sub_2384563F8(319, &qword_27DF09B10, MEMORY[0x277CC6C90], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2384561E8()
{
  if (!qword_2814F08C0)
  {
    v0 = sub_23875F1F0();
    if (!v1)
    {
      atomic_store(v0, &qword_2814F08C0);
    }
  }
}

void sub_238456280()
{
  sub_2384561E8();
  if (v0 <= 0x3F)
  {
    sub_2384563A4(319, &qword_27DF09B28, &qword_27DF09B30, &unk_238764470);
    if (v1 <= 0x3F)
    {
      sub_2384563A4(319, &qword_27DF09B38, &qword_27DF09B40, &qword_238769520);
      if (v2 <= 0x3F)
      {
        sub_2384563F8(319, &qword_2814F09B0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2384563A4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_23875E1E0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2384563F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_238456480()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09C00, &qword_238764638);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09C08, &qword_238764640);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v27 - v9;
  *v6 = sub_23875D020();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09C10, &qword_238764648);
  sub_238456748(v1, &v6[*(v11 + 44)]);
  v12 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09C18, &unk_238764650) + 36)];
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09C20, &qword_2387711C0) + 28);
  v14 = sub_23875DA40();
  (*(*(v14 - 8) + 56))(v12 + v13, 1, 1, v14);
  *v12 = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  v16 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09C28, &qword_2387646C0) + 36)];
  *v16 = KeyPath;
  v16[8] = 1;
  LOBYTE(KeyPath) = sub_23875D7A0();
  sub_23875C3D0();
  v17 = &v6[*(v3 + 44)];
  *v17 = KeyPath;
  *(v17 + 1) = v18;
  *(v17 + 2) = v19;
  *(v17 + 3) = v20;
  *(v17 + 4) = v21;
  v17[40] = 0;
  sub_23875E4A0();
  sub_23875C9C0();
  sub_23845B480(v6, v10);
  v22 = &v10[*(v7 + 36)];
  v23 = v27[5];
  *(v22 + 4) = v27[4];
  *(v22 + 5) = v23;
  *(v22 + 6) = v27[6];
  v24 = v27[1];
  *v22 = v27[0];
  *(v22 + 1) = v24;
  v25 = v27[3];
  *(v22 + 2) = v27[2];
  *(v22 + 3) = v25;
  sub_23845B4F0();
  sub_23875DE00();
  return sub_238439884(v10, &qword_27DF09C08, &qword_238764640);
}

uint64_t sub_238456748@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v132 = a2;
  v3 = sub_23875BE40();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v122 = v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875BE20();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v120 = v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23875BD20();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v118 = v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = _s18OrderDateFormatterVMa(0);
  v12 = *(*(v121 - 8) + 64);
  MEMORY[0x28223BE20](v121);
  v119 = v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09AF8, &qword_238764438);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v125 = v116 - v16;
  *&v134 = sub_238757F50();
  *&v133 = *(v134 - 8);
  v17 = *(v133 + 64);
  v18 = MEMORY[0x28223BE20](v134);
  v117 = v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v129 = v116 - v20;
  v128 = sub_23875DFD0();
  v21 = *(v128 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v128);
  v24 = v116 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09C70, &unk_238769510);
  v25 = *(*(v127 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v127);
  v131 = v116 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = v116 - v28;
  sub_23875ED50();
  v130 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v31 = *a1;
  v30 = a1[1];
  v32 = a1[2];
  v33 = a1[3];
  v135 = 0;
  LOBYTE(v136) = -1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09B30, &unk_238764470);
  sub_23875E1A0();
  v34 = BYTE8(v140);
  v35 = v141;
  *(v29 + 4) = v140;
  v29[40] = v34;
  *(v29 + 6) = v35;
  v135 = 0;
  LOBYTE(v136) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09B40, &qword_238769520);
  sub_23875E1A0();
  v36 = BYTE8(v140);
  v37 = v141;
  *(v29 + 7) = v140;
  v29[64] = v36;
  *(v29 + 9) = v37;
  v38 = *(type metadata accessor for ExtractedOrderMerchantIcon(0) + 32);
  *&v29[v38] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  v123 = a1;
  swift_storeEnumTagMultiPayload();
  *v29 = v31;
  *(v29 + 1) = v30;
  *(v29 + 2) = v32;
  *(v29 + 3) = v33;
  (*(v21 + 104))(v24, *MEMORY[0x277CE0EE0], v128);

  v39 = sub_23875E090();
  KeyPath = swift_getKeyPath();
  v41 = &v29[*(v127 + 36)];
  v42 = type metadata accessor for OrderImageStyleModifier();
  *&v41[*(v42 + 36)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *&v41[*(v42 + 40)] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v41 = xmmword_2387643A0;
  *(v41 + 2) = 0;
  v41[24] = 1;
  *(v41 + 4) = v39;
  v41[40] = 0;
  *&v140 = v31;
  *(&v140 + 1) = v30;
  v116[1] = sub_2384397A8();
  v43 = sub_23875DAA0();
  v45 = v44;
  v47 = v46;
  sub_23875D830();
  v48 = sub_23875DA60();
  v50 = v49;
  LOBYTE(v31) = v51;

  sub_2384397FC(v43, v45, v47 & 1);

  sub_23875D890();
  v52 = sub_23875D9E0();
  v54 = v53;
  LOBYTE(v43) = v55;
  sub_2384397FC(v48, v50, v31 & 1);

  sub_23875E070();
  v127 = sub_23875DA10();
  v126 = v56;
  v124 = v57;
  v128 = v58;

  sub_2384397FC(v52, v54, v43 & 1);

  v59 = type metadata accessor for ExtractedOrderDetailsHeaderView.ViewModel(0);
  v60 = v125;
  sub_23843981C(v123 + *(v59 + 24), v125, &qword_27DF09AF8, &qword_238764438);
  v61 = v133;
  v62 = v134;
  if ((*(v133 + 48))(v60, 1, v134) == 1)
  {
    sub_238439884(v60, &qword_27DF09AF8, &qword_238764438);
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v63 = qword_2814F1B90;
    v64 = sub_23875EA50();
    v65 = sub_23875EA50();
    v66 = sub_23875EA50();
    v67 = [v63 localizedStringForKey:v64 value:v65 table:v66];

    v68 = sub_23875EA80();
    v70 = v69;

    *&v140 = v68;
    *(&v140 + 1) = v70;
    v71 = sub_23875DAA0();
    v73 = v72;
    LOBYTE(v70) = v74;
    sub_23875D7F0();
    v75 = sub_23875DA60();
    v77 = v76;
    v79 = v78;

    sub_2384397FC(v71, v73, v70 & 1);

    sub_23875E080();
    v80 = sub_23875DA10();
    v82 = v81;
    LOBYTE(v66) = v83;
    v85 = v84;

    sub_2384397FC(v75, v77, v79 & 1);

    v135 = v80;
    v136 = v82;
    v137 = v66 & 1;
    v138 = v85;
    v139 = 1;
    sub_23875D1B0();
  }

  else
  {
    v86 = v129;
    (*(v61 + 32))(v129, v60, v62);
    (*(v61 + 16))(v117, v86, v62);
    sub_23875BCC0();
    sub_23875BDB0();
    sub_23875BE30();
    sub_2387595B0();
    sub_23845AFB4(&qword_27DF09C80, _s18OrderDateFormatterVMa);
    sub_23845AFB4(&qword_27DF09BD8, MEMORY[0x277CC6C90]);
    v87 = sub_23875DA80();
    v89 = v88;
    v91 = v90;
    sub_23875D7F0();
    v92 = sub_23875DA60();
    v94 = v93;
    v96 = v95;

    sub_2384397FC(v87, v89, v91 & 1);

    sub_23875E080();
    v97 = sub_23875DA10();
    v99 = v98;
    LOBYTE(v86) = v100;
    v102 = v101;

    sub_2384397FC(v92, v94, v96 & 1);

    v135 = v97;
    v136 = v99;
    v137 = v86 & 1;
    v138 = v102;
    v139 = 0;
    sub_23875D1B0();
    (*(v133 + 8))(v129, v134);
  }

  v133 = v140;
  v134 = v141;
  v103 = v142;
  v104 = v131;
  sub_23843981C(v29, v131, &qword_27DF09C70, &unk_238769510);
  v105 = v132;
  sub_23843981C(v104, v132, &qword_27DF09C70, &unk_238769510);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09C78, &qword_238764748);
  v107 = v105 + *(v106 + 48);
  v108 = v127;
  v109 = v126;
  *v107 = v127;
  *(v107 + 8) = v109;
  v110 = v124 & 1;
  *(v107 + 16) = v124 & 1;
  v129 = v29;
  *(v107 + 24) = v128;
  v111 = v105 + *(v106 + 64);
  v112 = v134;
  *v111 = v133;
  *(v111 + 16) = v112;
  *(v111 + 32) = v103;
  sub_23843980C(v108, v109, v110);

  v113 = v133;
  v114 = v134;
  sub_23845B7C4(v133, *(&v133 + 1), v134);
  sub_238439884(v129, &qword_27DF09C70, &unk_238769510);
  sub_23845B800(v113, *(&v113 + 1), v114);
  sub_2384397FC(v108, v109, v110);

  sub_238439884(v104, &qword_27DF09C70, &unk_238769510);
}

id sub_238457438@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v109 = a1;
  v99 = sub_23875D990();
  v97 = *(v99 - 8);
  v3 = *(v97 + 64);
  MEMORY[0x28223BE20](v99);
  KeyPath = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_23875C450();
  v95 = *(v96 - 8);
  v5 = *(v95 + 64);
  v6 = MEMORY[0x28223BE20](v96);
  v8 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v90 - v9;
  v108 = type metadata accessor for MonogramView();
  v11 = *(*(v108 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v108);
  v14 = (&v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v100 = &v90 - v15;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09B48, &qword_238764518);
  v16 = *(*(v106 - 8) + 64);
  MEMORY[0x28223BE20](v106);
  v107 = &v90 - v17;
  v18 = type metadata accessor for ExtractedOrderMerchantIcon(0);
  v101 = *(v18 - 8);
  v19 = *(v101 + 64);
  MEMORY[0x28223BE20](v18);
  v20 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09B50, &qword_238764520);
  v21 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105);
  v23 = (&v90 - v22);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09B58, &qword_238764528);
  v24 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102);
  v103 = (&v90 - v25);
  v94 = sub_23875E0E0();
  v93 = *(v94 - 8);
  v26 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v92 = &v90 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_23875E0F0();
  v90 = *(v91 - 8);
  v28 = *(v90 + 64);
  MEMORY[0x28223BE20](v91);
  v30 = &v90 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09B60, &qword_238764530);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31);
  v104 = &v90 - v34;
  v35 = *(v2 + 24);
  if (v35)
  {
    v100 = v33;
    v36 = *(v2 + 16);
    v37 = *(v2 + 40);
    v38 = *(v2 + 48);
    v112 = *(v2 + 32);
    v113 = v37;
    v114 = v38;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09BB8, &qword_238764560);
    sub_23875E1B0();
    v39 = v111;
    if (v111 == 255)
    {
LABEL_5:
      v99 = sub_23875E020();
      KeyPath = swift_getKeyPath();
      sub_23845AFFC(v2, &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ExtractedOrderMerchantIcon);
      v43 = (*(v101 + 80) + 16) & ~*(v101 + 80);
      v44 = swift_allocObject();
      v101 = v36;
      v45 = v44;
      sub_23845B070(v20, v44 + v43, type metadata accessor for ExtractedOrderMerchantIcon);
      sub_23845AFFC(v2, v20, type metadata accessor for ExtractedOrderMerchantIcon);
      v46 = swift_allocObject();
      sub_23845B070(v20, v46 + v43, type metadata accessor for ExtractedOrderMerchantIcon);
      v47 = (v46 + ((v43 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v47 = v101;
      v47[1] = v35;
      v48 = (v23 + *(v105 + 36));
      v49 = v48 + *(sub_23875C6E0() + 20);
      sub_23875ED60();
      *v48 = &unk_2387645A8;
      v48[1] = v46;
      v50 = v99;
      *v23 = KeyPath;
      v23[1] = v50;
      v23[2] = sub_23845817C;
      v23[3] = 0;
      v23[4] = sub_23845B0D8;
      v23[5] = v45;
      sub_23843981C(v23, v103, &qword_27DF09B50, &qword_238764520);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09B80, &qword_238764538);
      sub_23845ADC4();
      sub_23845AE40();
      v51 = v104;
      sub_23875D1B0();
      sub_238439884(v23, &qword_27DF09B50, &qword_238764520);
LABEL_14:
      sub_23843981C(v51, v107, &qword_27DF09B60, &qword_238764530);
      swift_storeEnumTagMultiPayload();
      sub_23845AD38();
      sub_23845AFB4(&qword_27DF09BB0, type metadata accessor for MonogramView);
      sub_23875D1B0();
      return sub_238439884(v51, &qword_27DF09B60, &qword_238764530);
    }

    v40 = v110;
    v41 = *(v2 + 64);
    v42 = *(v2 + 72);
    v112 = *(v2 + 56);
    v113 = v41;
    v114 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09BC0, &qword_2387645B0);
    sub_23875E1B0();
    if (v111)
    {
      sub_23845B254(v40, v39);
      goto LABEL_5;
    }

    if ((v39 & 1) == 0)
    {

      sub_23845B26C(v40, 0);
      sub_23875E0C0();
      v82 = v90;
      v83 = v91;
      (*(v90 + 104))(v30, *MEMORY[0x277CE1000], v91);
      sub_23875E100();

      (*(v82 + 8))(v30, v83);
      v84 = v93;
      v85 = v92;
      v86 = v94;
      (*(v93 + 104))(v92, *MEMORY[0x277CE0FE0], v94);
      v87 = sub_23875E150();

      (*(v84 + 8))(v85, v86);
      v110 = v87;
      v111 = 0;
      goto LABEL_13;
    }

    sub_2387588A0();
    result = PKMapsIconForMerchantCategory();
    if (result)
    {

      sub_23875E0C0();
      v76 = v90;
      v77 = v91;
      (*(v90 + 104))(v30, *MEMORY[0x277CE1000], v91);
      sub_23875E100();

      (*(v76 + 8))(v30, v77);
      v78 = v93;
      v79 = v92;
      v80 = v94;
      (*(v93 + 104))(v92, *MEMORY[0x277CE0FE0], v94);
      v81 = sub_23875E150();

      (*(v78 + 8))(v79, v80);
      v110 = v81;
      v111 = 1;
LABEL_13:
      sub_23875D1B0();
      v88 = v113;
      v89 = v103;
      *v103 = v112;
      *(v89 + 8) = v88;
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09B80, &qword_238764538);
      sub_23845ADC4();
      sub_23845AE40();
      v51 = v104;
      sub_23875D1B0();
      sub_23845B254(v40, v39);

      goto LABEL_14;
    }

    __break(1u);
  }

  else
  {
    v52 = v2 + *(v18 + 32);
    sub_2384D4E38(v10);
    v53 = v95;
    v54 = v96;
    (*(v95 + 104))(v8, *MEMORY[0x277CDF3D0], v96);
    LOBYTE(v52) = sub_23875C440();
    v55 = *(v53 + 8);
    v55(v8, v54);
    v55(v10, v54);
    v56 = objc_opt_self();
    v57 = &selRef_systemGray4Color;
    if ((v52 & 1) == 0)
    {
      v57 = &selRef_systemGray2Color;
    }

    v58 = [v56 *v57];
    v59 = sub_23875DFB0();
    v61 = *v2;
    v60 = *(v2 + 8);
    v62 = sub_23875E040();
    v63 = *(v108 + 36);
    v112 = 0x404C000000000000;
    (*(v97 + 104))(KeyPath, *MEMORY[0x277CE0A68], v99);
    sub_23845A940();
    sub_23875C540();
    *v14 = v59;
    v14[1] = v62;
    v14[3] = v61;
    v14[4] = v60;
    v14[2] = 0x3FC999999999999ALL;
    sub_23875EAF0();

    v64 = sub_2384F565C(1);
    v66 = v65;
    v68 = v67;
    v70 = v69;

    v71 = MEMORY[0x23EE635F0](v64, v66, v68, v70);
    v73 = v72;

    v14[5] = v71;
    v14[6] = v73;
    v74 = v100;
    sub_23845B070(v14, v100, type metadata accessor for MonogramView);
    sub_23845AFFC(v74, v107, type metadata accessor for MonogramView);
    swift_storeEnumTagMultiPayload();
    sub_23845AD38();
    sub_23845AFB4(&qword_27DF09BB0, type metadata accessor for MonogramView);
    sub_23875D1B0();
    return sub_23845BC48(v74, type metadata accessor for MonogramView);
  }

  return result;
}

uint64_t sub_23845817C@<X0>(void *a1@<X8>)
{
  v2 = sub_23875D2F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875D4B0();
  sub_23875C640();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = (*(v3 + 8))(v6, v2);
  *a1 = v8;
  a1[1] = v10;
  a1[2] = v12;
  a1[3] = v14;
  return result;
}

uint64_t sub_238458288(CGFloat *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = *(a2 + 56);
  v8 = *(a2 + 64);
  v9 = *(a2 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09BC0, &qword_2387645B0);
  sub_23875E1B0();
  v14.origin.x = v3;
  v14.origin.y = v4;
  v14.size.width = v5;
  v14.size.height = v6;
  Width = CGRectGetWidth(v14);
  if ((v13 & 1) != 0 || v12 != Width)
  {
    v15.origin.x = v3;
    v15.origin.y = v4;
    v15.size.width = v5;
    v15.size.height = v6;
    CGRectGetWidth(v15);
    sub_23875E1C0();
  }
}

uint64_t sub_2384583E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = sub_23875ED50();
  v3[6] = sub_23875ED40();
  v3[7] = sub_23875ED40();
  v6 = swift_task_alloc();
  v3[8] = v6;
  *v6 = v3;
  v6[1] = sub_2384584B4;

  return sub_238458A9C(a2, a3);
}

uint64_t sub_2384584B4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 40);
  v9 = *v1;
  v2[9] = a1;

  v7 = sub_23875ECE0();
  v2[10] = v7;
  v2[11] = v6;

  return MEMORY[0x2822009F8](sub_238458600, v7, v6);
}

uint64_t sub_238458600()
{
  if (v0[9])
  {
    v1 = v0[7];

    v0[14] = v0[9];
    v2 = v0[5];
    v3 = v0[6];
    v5 = sub_23875ECE0();

    return MEMORY[0x2822009F8](sub_2384588B0, v5, v4);
  }

  else
  {
    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    v6[1] = sub_238458700;
    v8 = v0[3];
    v7 = v0[4];
    v9 = v0[2];

    return sub_238458F94(v8, v7);
  }
}

uint64_t sub_238458700(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = a1;

  v4 = *(v2 + 88);
  v5 = *(v2 + 80);

  return MEMORY[0x2822009F8](sub_238458828, v5, v4);
}

uint64_t sub_238458828()
{
  v1 = v0[7];

  v0[14] = v0[13];
  v2 = v0[5];
  v3 = v0[6];
  v5 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_2384588B0, v5, v4);
}

uint64_t sub_2384588B0()
{
  v1 = v0[14];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[2];

  LOBYTE(v2) = v2 == 0;
  v5 = swift_task_alloc();
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;
  *(v5 + 32) = v2;
  sub_23875E500();
  sub_23875C6F0();

  sub_23845B064(v1, v2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_238458998(uint64_t a1, void *a2, char a3)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  sub_23845B26C(a2, a3 & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09BB8, &qword_238764560);
  sub_23875E1C0();
}

uint64_t sub_238458A9C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_23875ED50();
  v2[4] = sub_23875ED40();
  v4 = sub_23875ECE0();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_238458B34, v4, v3);
}

uint64_t sub_238458B34()
{
  sub_2387579D0();
  v0[7] = sub_2387579A0();
  v1 = *(MEMORY[0x277CC6718] + 4);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_238458BE8;
  v4 = v0[2];
  v3 = v0[3];

  return MEMORY[0x282116E08](v4, v3, 1);
}

uint64_t sub_238458BE8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 64);
  v11 = *v3;
  v4[9] = a1;
  v4[10] = a2;
  v4[11] = v2;

  if (v2)
  {
    v6 = v4[5];
    v7 = v4[6];
    v8 = sub_238458DD8;
  }

  else
  {
    v9 = v4[7];

    v6 = v4[5];
    v7 = v4[6];
    v8 = sub_238458D08;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_238458D08()
{
  v1 = v0[10];
  v2 = v0[4];

  if (v1 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = v0[9];
    v5 = v0[10];
    v6 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v7 = sub_23875B980();
    v8 = [v6 initWithData_];

    sub_23844C940(v4, v5);
    v3 = v8;
  }

  v9 = v0[1];

  return v9(v3);
}

uint64_t sub_238458DD8()
{
  v1 = v0[7];
  v2 = v0[4];

  if (qword_27DF08CD8 != -1)
  {
    swift_once();
  }

  v3 = v0[11];
  v4 = sub_23875C1E0();
  __swift_project_value_buffer(v4, qword_27DF2F690);
  v5 = v3;
  v6 = sub_23875C1B0();
  v7 = sub_23875EFE0();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[11];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_2383F8000, v6, v7, "Could not fetch icon: %@", v10, 0xCu);
    sub_238439884(v11, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v11, -1, -1);
    MEMORY[0x23EE64DF0](v10, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14(0);
}

uint64_t sub_238458F94(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v2[5] = sub_23875ED50();
  v2[6] = sub_23875ED40();
  v4 = sub_23875ECE0();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_238459030, v4, v3);
}

uint64_t sub_238459030()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = objc_allocWithZone(MEMORY[0x277D07080]);
  v4 = sub_23875EA50();
  v5 = [v3 initWithString_];

  if (v5 && (v6 = [v5 highLevelDomain], v5, v6))
  {
    v7 = v0[5];
    v8 = sub_23875EA80();
    v10 = v9;

    v0[9] = v10;
    v11 = [objc_allocWithZone(MEMORY[0x277D81650]) init];
    v0[10] = v11;
    v12 = sub_23875ED40();
    v0[11] = v12;
    v13 = swift_task_alloc();
    v0[12] = v13;
    v13[2] = v11;
    v13[3] = v8;
    v13[4] = v10;
    v14 = *(MEMORY[0x277D85A40] + 4);
    v15 = swift_task_alloc();
    v0[13] = v15;
    type metadata accessor for PKMerchantCategory(0);
    *v15 = v0;
    v15[1] = sub_23845922C;
    v17 = MEMORY[0x277D85700];

    return MEMORY[0x2822008A0](v0 + 2, v12, v17, 0xD000000000000019, 0x80000002387860E0, sub_23845B298, v13, v16);
  }

  else
  {
    v18 = v0[6];

    v19 = v0[1];

    return v19(0);
  }
}

uint64_t sub_23845922C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v11 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_2384593D4;
  }

  else
  {
    v8 = v2[11];
    v7 = v2[12];
    v9 = v2[9];

    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_238459364;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_238459364()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 16);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_2384593D4()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[6];

  if (qword_27DF08CD8 != -1)
  {
    swift_once();
  }

  v6 = v0[14];
  v7 = sub_23875C1E0();
  __swift_project_value_buffer(v7, qword_27DF2F690);
  v8 = v6;
  v9 = sub_23875C1B0();
  v10 = sub_23875EFE0();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[14];
  if (v11)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = v12;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_2383F8000, v9, v10, "Could not fetch icon: %@", v13, 0xCu);
    sub_238439884(v14, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v14, -1, -1);
    MEMORY[0x23EE64DF0](v13, -1, -1);
  }

  else
  {
  }

  v17 = v0[1];

  return v17(0);
}

void sub_2384595A8(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09BC8, &unk_2387645D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = sub_23875EA50();
  (*(v4 + 16))(v7, a1, v3);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  (*(v4 + 32))(v10 + v9, v7, v3);
  aBlock[4] = sub_23845B2A4;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23848C708;
  aBlock[3] = &block_descriptor;
  v11 = _Block_copy(aBlock);

  [v13 getPKCategoryForDomain:v8 completion:v11];
  _Block_release(v11);
}

uint64_t sub_2384597E0(int a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09BC8, &unk_2387645D0);
    return sub_23875ED00();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09BC8, &unk_2387645D0);
    return sub_23875ED10();
  }
}

uint64_t sub_238459864(uint64_t a1, uint64_t a2)
{
  v68 = a1;
  v63 = a2;
  v62 = sub_2387595E0();
  v60 = *(v62 - 8);
  v2 = *(v60 + 64);
  MEMORY[0x28223BE20](v62);
  v58 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_238759290();
  v59 = *(v61 - 8);
  v4 = *(v59 + 64);
  MEMORY[0x28223BE20](v61);
  v57 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v69 = &v54 - v8;
  v9 = sub_23875BC40();
  v70 = *(v9 - 8);
  v71 = v9;
  v10 = *(v70 + 64);
  MEMORY[0x28223BE20](v9);
  v56 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_238757F50();
  v13 = *(v12 - 8);
  v65 = v12;
  v66 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09968, &unk_2387640D0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v54 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09970, &qword_2387648B0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v54 - v23;
  v25 = sub_23875B650();
  v54 = *(v25 - 8);
  v55 = v25;
  v26 = *(v54 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_23875BE20();
  v64 = *(*(v29 - 8) + 56);
  v64(v24, 1, 1, v29);
  v30 = sub_23875BE40();
  v31 = *(*(v30 - 8) + 56);
  v31(v20, 1, 1, v30);
  sub_23875B620();
  v32 = v67;
  sub_2387595D0();
  v31(v20, 0, 1, v30);
  v33 = v32;
  v34 = v65;
  sub_23875B640();
  sub_2387595C0();
  v64(v24, 0, 1, v29);
  sub_23875B630();
  v35 = v66;
  (*(v66 + 16))(v16, v68, v34);
  v36 = (*(v35 + 88))(v16, v34);
  if (v36 == *MEMORY[0x277CC6C88])
  {
    (*(v35 + 96))(v16, v34);
    v37 = *v16;
    v38 = *(v16 + 1);
    v39 = *(v16 + 2);
    sub_23875B5E0();
    sub_23875B5F0();
    sub_23875B5B0();
    sub_23875B5D0();
    sub_23875B600();
  }

  else
  {
    if (v36 != *MEMORY[0x277CC6C80])
    {
      goto LABEL_8;
    }

    (*(v35 + 96))(v16, v34);
    v40 = *v16;
    v41 = *(v16 + 1);
    v42 = *(v16 + 2);
    v43 = *(v16 + 3);
    v44 = *(v16 + 4);
    v45 = *(v16 + 5);
    v46 = v16[48];
    sub_23875B5E0();
    sub_23875B5F0();
    sub_23875B5B0();
    sub_23875B5D0();
    sub_23875B600();
  }

  sub_23875B610();
  v47 = v69;
  sub_23875B5C0();
  v49 = v70;
  v48 = v71;
  if ((*(v70 + 48))(v47, 1, v71) != 1)
  {
    v50 = v56;
    (*(v49 + 32))(v56, v47, v48);
    (*(v60 + 16))(v58, v33, v62);
    v51 = v57;
    sub_238759270();
    v52 = sub_238759280();
    (*(v59 + 8))(v51, v61);
    (*(v49 + 8))(v50, v48);
    (*(v54 + 8))(v28, v55);
    return v52;
  }

  __break(1u);
LABEL_8:
  result = sub_23875F520();
  __break(1u);
  return result;
}

uint64_t sub_23845A00C()
{
  sub_23875F700();
  MEMORY[0x23EE641F0](0);
  return sub_23875F760();
}

uint64_t sub_23845A050()
{
  sub_23875F700();
  MEMORY[0x23EE641F0](0);
  return sub_23875F760();
}

uint64_t sub_23845A0B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23875F630();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23845A150(uint64_t a1)
{
  v2 = sub_23845BBF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23845A18C(uint64_t a1)
{
  v2 = sub_23845BBF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23845A1C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_2387595E0();
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09CD0, &qword_2387648B8);
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = sub_23875BE40();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_23875BE20();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_23875BD20();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = _s18OrderDateFormatterVMa(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23845BBF4();
  v22 = v29;
  sub_23875F780();
  if (!v22)
  {
    v23 = v27;
    sub_23845AFB4(&qword_27DF09CE0, MEMORY[0x277CC7968]);
    sub_23875F5B0();
    (*(v28 + 8))(v10, v7);
    (*(v23 + 40))(v20, v6, v3);
    sub_23845AFFC(v20, v26, _s18OrderDateFormatterVMa);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23845BC48(v20, _s18OrderDateFormatterVMa);
}

uint64_t sub_23845A570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_238459864(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_23845A598()
{
  sub_23845AFB4(&qword_27DF09CC8, _s18OrderDateFormatterVMa);

  return sub_238759950();
}

uint64_t sub_23845A634(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09CE8, &qword_2387648C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23845BBF4();
  sub_23875F790();
  sub_2387595E0();
  sub_23845AFB4(&qword_27DF09CF0, MEMORY[0x277CC7968]);
  sub_23875F5C0();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_23845A7AC()
{
  sub_23875F700();
  sub_2387595E0();
  sub_23845AFB4(&qword_27DF09CF8, MEMORY[0x277CC7968]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_23845A834()
{
  sub_2387595E0();
  sub_23845AFB4(&qword_27DF09CF8, MEMORY[0x277CC7968]);

  return sub_23875E960();
}

uint64_t sub_23845A8B8()
{
  sub_23875F700();
  sub_2387595E0();
  sub_23845AFB4(&qword_27DF09CF8, MEMORY[0x277CC7968]);
  sub_23875E960();
  return sub_23875F760();
}

unint64_t sub_23845A940()
{
  result = qword_27DF09B68;
  if (!qword_27DF09B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09B68);
  }

  return result;
}

BOOL sub_23845A994(void *a1, void *a2)
{
  v4 = sub_238757F50();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09AF8, &qword_238764438);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09BD0, &qword_2387695A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_23875F630() & 1) == 0)
  {
    return 0;
  }

  v17 = a1[3];
  v18 = a2[3];
  if (v17)
  {
    if (!v18 || (a1[2] != a2[2] || v17 != v18) && (sub_23875F630() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v27 = v8;
  v19 = *(type metadata accessor for ExtractedOrderDetailsHeaderView.ViewModel(0) + 24);
  v20 = *(v13 + 48);
  sub_23843981C(a1 + v19, v16, &qword_27DF09AF8, &qword_238764438);
  sub_23843981C(a2 + v19, &v16[v20], &qword_27DF09AF8, &qword_238764438);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) == 1)
  {
    if (v21(&v16[v20], 1, v4) == 1)
    {
      sub_238439884(v16, &qword_27DF09AF8, &qword_238764438);
      return 1;
    }

    goto LABEL_16;
  }

  sub_23843981C(v16, v12, &qword_27DF09AF8, &qword_238764438);
  if (v21(&v16[v20], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_16:
    sub_238439884(v16, &qword_27DF09BD0, &qword_2387695A0);
    return 0;
  }

  v23 = v27;
  (*(v5 + 32))(v27, &v16[v20], v4);
  sub_23845AFB4(&qword_27DF09BD8, MEMORY[0x277CC6C90]);
  v24 = sub_23875E9E0();
  v25 = *(v5 + 8);
  v25(v23, v4);
  v25(v12, v4);
  sub_238439884(v16, &qword_27DF09AF8, &qword_238764438);
  return (v24 & 1) != 0;
}

unint64_t sub_23845AD38()
{
  result = qword_27DF09B70;
  if (!qword_27DF09B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09B60, &qword_238764530);
    sub_23845ADC4();
    sub_23845AE40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09B70);
  }

  return result;
}

unint64_t sub_23845ADC4()
{
  result = qword_27DF09B78;
  if (!qword_27DF09B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09B80, &qword_238764538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09B78);
  }

  return result;
}

unint64_t sub_23845AE40()
{
  result = qword_27DF09B88;
  if (!qword_27DF09B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09B50, &qword_238764520);
    sub_23845AEFC();
    sub_23845AFB4(&qword_27DF08DC8, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09B88);
  }

  return result;
}

unint64_t sub_23845AEFC()
{
  result = qword_27DF09B90;
  if (!qword_27DF09B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09B98, &unk_238764540);
    sub_2384497EC();
    sub_23843A3E8(&qword_27DF09BA0, &qword_27DF09BA8, &qword_238764558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09B90);
  }

  return result;
}

uint64_t sub_23845AFB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23845AFFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_23845B064(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }
}

uint64_t sub_23845B070(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23845B0D8(CGFloat *a1)
{
  v3 = *(type metadata accessor for ExtractedOrderMerchantIcon(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_238458288(a1, v4);
}

uint64_t sub_23845B148()
{
  v2 = *(type metadata accessor for ExtractedOrderMerchantIcon(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2384494A4;

  return sub_2384583E0(v0 + v3, v5, v6);
}

void sub_23845B254(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_23845B064(a1, a2 & 1);
  }
}

id sub_23845B26C(id result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return result;
  }

  return result;
}

void sub_23845B298(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_2384595A8(a1, *(v1 + 16));
}

uint64_t sub_23845B2A4(int a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09BC8, &unk_2387645D0) - 8) + 80);

  return sub_2384597E0(a1, a2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23845B3A8()
{
  result = qword_27DF09BF0;
  if (!qword_27DF09BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09BF8, qword_2387645E0);
    sub_23845AD38();
    sub_23845AFB4(&qword_27DF09BB0, type metadata accessor for MonogramView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09BF0);
  }

  return result;
}

uint64_t sub_23845B480(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09C00, &qword_238764638);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23845B4F0()
{
  result = qword_27DF09C30;
  if (!qword_27DF09C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09C08, &qword_238764640);
    sub_23845B57C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09C30);
  }

  return result;
}

unint64_t sub_23845B57C()
{
  result = qword_27DF09C38;
  if (!qword_27DF09C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09C00, &qword_238764638);
    sub_23845B608();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09C38);
  }

  return result;
}

unint64_t sub_23845B608()
{
  result = qword_27DF09C40;
  if (!qword_27DF09C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09C28, &qword_2387646C0);
    sub_23845B6C0();
    sub_23843A3E8(&qword_27DF09C68, &unk_27DF12EF0, &unk_2387646D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09C40);
  }

  return result;
}

unint64_t sub_23845B6C0()
{
  result = qword_27DF09C48;
  if (!qword_27DF09C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09C18, &unk_238764650);
    sub_23843A3E8(&qword_27DF09C50, &qword_27DF09C58, &qword_2387646C8);
    sub_23843A3E8(&qword_27DF09C60, &qword_27DF09C20, &qword_2387711C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09C48);
  }

  return result;
}

uint64_t sub_23845B7C4(uint64_t a1, uint64_t a2, char a3)
{
  sub_23843980C(a1, a2, a3 & 1);
}

uint64_t sub_23845B800(uint64_t a1, uint64_t a2, char a3)
{
  sub_2384397FC(a1, a2, a3 & 1);
}

uint64_t __swift_get_extra_inhabitant_index_34Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_35Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_23845B960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_23845B9D0()
{
  result = qword_27DF09C98;
  if (!qword_27DF09C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09CA0, &qword_238764768);
    sub_23845B4F0();
    sub_23845AFB4(&qword_27DF09330, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09C98);
  }

  return result;
}

unint64_t sub_23845BBF4()
{
  result = qword_27DF09CD8;
  if (!qword_27DF09CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09CD8);
  }

  return result;
}

uint64_t sub_23845BC48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23845BCBC()
{
  result = qword_27DF09D00;
  if (!qword_27DF09D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09D00);
  }

  return result;
}

unint64_t sub_23845BD14()
{
  result = qword_27DF09D08;
  if (!qword_27DF09D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09D08);
  }

  return result;
}

unint64_t sub_23845BD6C()
{
  result = qword_27DF09D10;
  if (!qword_27DF09D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09D10);
  }

  return result;
}

uint64_t sub_23845BDC0()
{
  v0 = type metadata accessor for ConsentManagementView(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23875A9F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_23875A9D0();
  objc_allocWithZone(type metadata accessor for BankConnectAccountConsentManagementViewController(0));
  (*(v5 + 16))(v3, v8, v4);
  v9 = sub_23875D080();
  (*(v5 + 8))(v8, v4);
  return v9;
}

id BankConnectAccountConsentManagementViewControllerProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BankConnectAccountConsentManagementViewControllerProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BankConnectAccountConsentManagementViewControllerProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_23845C348()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_23875F520();
  __break(1u);
  return result;
}

id sub_23845C47C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_23845C4BC()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 1;
}

uint64_t sub_23845C56C()
{
  result = sub_23875A9F0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23845C5F4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875A9F0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v20[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v1);
  sub_23845C7DC(v6, a1);
  KeyPath = swift_getKeyPath();
  v9 = sub_238758890();
  v10 = sub_238758880();
  v20[3] = v9;
  v20[4] = MEMORY[0x277CC70D0];
  v20[0] = v10;
  v11 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DB8, &qword_238764B20) + 36));
  sub_23845C998(v20, (v11 + 1));
  *v11 = KeyPath;
  __swift_destroy_boxed_opaque_existential_1(v20);
  v12 = swift_getKeyPath();
  v20[0] = sub_238758880();
  v13 = sub_238758A30();

  v14 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DC0, &qword_238764B58) + 36));
  *v14 = v12;
  v14[1] = v13;
  v15 = swift_getKeyPath();
  v16 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DC8, &qword_238764B88) + 36));
  v17 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD0, qword_238764B90) + 28);
  result = sub_23875C120();
  *v16 = v15;
  return result;
}

uint64_t sub_23845C7DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for AccountConsentManagementViewFetchingWrapper(0) + 20);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  swift_storeEnumTagMultiPayload();
  sub_238759780();
  v5 = sub_238759710();
  v6 = MEMORY[0x23EE5E1A0](a1);
  [v5 setPredicate_];

  [v5 setFetchBatchSize_];
  [v5 setReturnsObjectsAsFaults_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_238763E70;
  sub_23845CA1C();
  swift_getKeyPath();
  *(v7 + 32) = sub_23875F040();
  v8 = sub_23875EC60();

  [v5 setSortDescriptors_];

  sub_23875C4F0();
  v9 = sub_23875A9F0();
  v10 = *(*(v9 - 8) + 8);

  return v10(a1, v9);
}

uint64_t sub_23845C998(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_23845CA1C()
{
  result = qword_27DF09960;
  if (!qword_27DF09960)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF09960);
  }

  return result;
}

void sub_23845CA9C()
{
  sub_23845CB80(319, &qword_27DF09E18, MEMORY[0x277CC7A70], MEMORY[0x277CDD7C8]);
  if (v0 <= 0x3F)
  {
    sub_23845CB80(319, &qword_27DF09E20, MEMORY[0x277D85B28], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23845CB80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_23845CBE4()
{
  result = qword_27DF09E30;
  if (!qword_27DF09E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09DC8, &qword_238764B88);
    sub_23845CC9C();
    sub_23843A3E8(&qword_27DF09E70, &qword_27DF09DD0, qword_238764B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09E30);
  }

  return result;
}

unint64_t sub_23845CC9C()
{
  result = qword_27DF09E38;
  if (!qword_27DF09E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09DC0, &qword_238764B58);
    sub_23845CD54();
    sub_23843A3E8(&qword_2814F0920, &qword_27DF09E68, &unk_23876A070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09E38);
  }

  return result;
}

unint64_t sub_23845CD54()
{
  result = qword_27DF09E40;
  if (!qword_27DF09E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09DB8, &qword_238764B20);
    sub_23845D50C(&qword_27DF09E48, type metadata accessor for AccountConsentManagementViewFetchingWrapper);
    sub_23843A3E8(&qword_27DF09E50, &unk_27DF09E58, &unk_238764C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09E40);
  }

  return result;
}

uint64_t sub_23845CE58@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = type metadata accessor for AccountConsentManagementViewFetchingWrapper(0);
  v28 = *(v2 - 8);
  v3 = *(v28 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v29 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09E78, &unk_238764C70);
  v4 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v6 = (&v27 - v5);
  v7 = sub_238758680();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for AccountConsentManagementView();
  v11 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v30 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09E80, &unk_2387686A0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  sub_23875C500();
  sub_23843A3E8(&qword_27DF09E88, &qword_27DF09E80, &unk_2387686A0);
  sub_23875EED0();
  sub_23875EF00();
  if (v36 == v34[0])
  {
    (*(v14 + 8))(v17, v13);
    v18 = v29;
    sub_23845D634(v1, v29, type metadata accessor for AccountConsentManagementViewFetchingWrapper);
    v19 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v20 = swift_allocObject();
    sub_23845D69C(v18, v20 + v19);
    *v6 = sub_23845D700;
    v6[1] = v20;
    v6[2] = 0;
    v6[3] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09E90, &qword_238764C80);
    sub_23845D50C(&qword_27DF09E98, type metadata accessor for AccountConsentManagementView);
    sub_23845D554();
    return sub_23875D1B0();
  }

  else
  {
    v22 = sub_23875EF20();
    v24 = *v23;
    v22(v34, 0);
    (*(v14 + 8))(v17, v13);
    v25 = v24;
    sub_238758690();
    LOBYTE(v36) = 1;
    sub_23875E330();
    v26 = v30;
    AccountConsentManagementView.init(account:dismissedMismatchedAccountSettingsTile:)(v10, v34[0], v34[1], v35, v30);
    sub_23845D634(v26, v6, type metadata accessor for AccountConsentManagementView);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09E90, &qword_238764C80);
    sub_23845D50C(&qword_27DF09E98, type metadata accessor for AccountConsentManagementView);
    sub_23845D554();
    sub_23875D1B0();

    return sub_23845D5D8(v26);
  }
}

uint64_t sub_23845D350(uint64_t a1)
{
  v2 = sub_23875C1E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a1 + *(type metadata accessor for AccountConsentManagementViewFetchingWrapper(0) + 20);
  sub_2384D5160(v6);
  v8 = sub_23875C1B0();
  v9 = sub_23875EFE0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2383F8000, v8, v9, "Selected account was not found in the store.", v10, 2u);
    MEMORY[0x23EE64DF0](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
}

uint64_t sub_23845D50C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23845D554()
{
  result = qword_27DF09EA0;
  if (!qword_27DF09EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09E90, &qword_238764C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09EA0);
  }

  return result;
}

uint64_t sub_23845D5D8(uint64_t a1)
{
  v2 = type metadata accessor for AccountConsentManagementView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23845D634(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23845D69C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountConsentManagementViewFetchingWrapper(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23845D700()
{
  v1 = *(type metadata accessor for AccountConsentManagementViewFetchingWrapper(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_23845D350(v2);
}

unint64_t sub_23845D760()
{
  result = qword_27DF09EA8;
  if (!qword_27DF09EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF09EB0, &qword_238764C88);
    sub_23845D50C(&qword_27DF09E98, type metadata accessor for AccountConsentManagementView);
    sub_23845D554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09EA8);
  }

  return result;
}

id sub_23845D87C()
{
  sub_238758890();
  sub_238758880();
  v0 = sub_238758870();

  Controller = type metadata accessor for ApplePayOrderFetchController();
  v2 = objc_allocWithZone(Controller);
  *&v2[OBJC_IVAR____TtC12FinanceKitUI28ApplePayOrderFetchController_store] = v0;
  v4.receiver = v2;
  v4.super_class = Controller;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_23845D998(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_23875C1E0();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23845DA68, 0, 0);
}

uint64_t sub_23845DA68()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = v0[5];
    v3 = v0[3];
    v4 = *(v2 + OBJC_IVAR____TtC12FinanceKitUI28ApplePayOrderFetchController_store);
    v5 = sub_238757FF0();
    v6 = [v5 viewContext];

    v7 = swift_task_alloc();
    v7[2] = v3;
    v7[3] = v1;
    v7[4] = v6;
    v7[5] = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09EC8, &qword_238764C98);
    sub_23875F120();

    v16 = v0[2];
  }

  else
  {
    v8 = v0[9];
    sub_23875C180();
    v9 = sub_23875C1B0();
    v10 = sub_23875EFE0();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[9];
    v13 = v0[6];
    v14 = v0[7];
    if (v11)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2383F8000, v9, v10, "TransactionId does not exist for this transaction", v15, 2u);
      MEMORY[0x23EE64DF0](v15, -1, -1);
    }

    (*(v14 + 8))(v12, v13);
    v16 = 0;
  }

  v18 = v0[8];
  v17 = v0[9];

  v19 = v0[1];

  return v19(v16);
}

void sub_23845DD68(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_238757DF0();
  v7 = sub_238757D70();
  if (!v3)
  {
    if (v7 >> 62)
    {
      v15 = v7;
      v16 = sub_23875F3A0();
      v7 = v15;
      if (v16)
      {
        goto LABEL_4;
      }
    }

    else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if ((v7 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x23EE63F70](0);
      }

      else
      {
        if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v8 = *(v7 + 32);
      }

      v9 = v8;

      v10 = [v9 ecommerceOrderContent];
      if (v10)
      {
        v11 = v10;
        v12 = sub_238462008(v9, v10);
        v13 = sub_2384622F4(v9, v11, a1, a2);
        v14 = [objc_allocWithZone(FKApplePayRowViewModelCollection) initWithOrderRowViewModel:v12 barcodeRowViewModel:0 receiptRowViewModel:v13];
      }

      else
      {
        v14 = [objc_allocWithZone(FKApplePayRowViewModelCollection) init];
      }

      goto LABEL_12;
    }

    v14 = [objc_allocWithZone(FKApplePayRowViewModelCollection) init];
LABEL_12:
    *a3 = v14;
  }
}

uint64_t sub_23845E0C0(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = sub_23875EA80();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v3[4] = v7;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_23845E1A4;

  return sub_23845D998(a1, v7);
}

uint64_t sub_23845E1A4(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 32);
  v10 = *(v5 + 24);

  if (v3)
  {
    v11 = sub_23875B720();

    (v10)[2](v10, 0, v11);
    _Block_release(v10);
  }

  else
  {
    (v10)[2](v10, a1, 0);
    _Block_release(v10);
  }

  v12 = *(v8 + 8);

  return v12();
}

uint64_t sub_23845E35C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a1;
  v5 = sub_23875BC40();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F38, &qword_238764DC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = (&v44 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F40, &qword_238764DC8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v44 - v13;
  v15 = sub_23875D990();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ApplePayOrderRow(0);
  v21 = v20[5];
  v22 = sub_23875B0A0();
  v23 = *(v22 - 8);
  v48 = *(v23 + 56);
  v49 = v21;
  v46 = v22;
  v47 = v23 + 56;
  v48(a3 + v21, 1, 1);
  v24 = v20[7];
  v51 = 0x4046800000000000;
  (*(v16 + 104))(v19, *MEMORY[0x277CE0A68], v15);
  sub_23845A940();
  sub_23875C540();
  v25 = v20[8];
  *(a3 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  v26 = sub_23875A4F0();
  v27 = *(v26 + 16);
  if (!v27)
  {

    a2;
    sub_238759060();
    v36 = sub_23875A5A0();
    if (v36 >> 62)
    {
      v37 = sub_23875F3A0();
    }

    else
    {
      v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(a3 + v20[6]) = v37;
    v38 = sub_2387598F0();
    (*(*(v38 - 8) + 56))(v10, 1, 1, v38);
    goto LABEL_9;
  }

  v45 = a2;
  v28 = *(v26 + 32);
  v29 = (v28 & 0x7FFFFFFFFFFFFFFFLL);

  if (v27 == 1)
  {
    sub_238759910();
    v30 = [v45 createdDate];
    sub_23875BBE0();

    sub_2387590A0();
    v31 = sub_238759910();
    if (v31 >> 62)
    {
      v32 = sub_23875F3A0();
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(a3 + v20[6]) = v32;
    *v10 = v28;
    v33 = *MEMORY[0x277CC7B30];
    v34 = sub_2387598F0();
    v35 = *(v34 - 8);
    (*(v35 + 104))(v10, v33, v34);
    (*(v35 + 56))(v10, 0, 1, v34);
LABEL_9:
    sub_23875B080();
    (v48)(v14, 0, 1, v46);
    return sub_2384628F8(v14, a3 + v49);
  }

  v40 = v45;
  sub_238759060();
  v41 = sub_23875A5A0();
  if (v41 >> 62)
  {
    v42 = sub_23875F3A0();
  }

  else
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(a3 + v20[6]) = v42;
  v43 = v49;
  sub_238439884(a3 + v49, &qword_27DF09F40, &qword_238764DC8);
  return (v48)(a3 + v43, 1, 1, v46);
}

uint64_t sub_23845E8C4()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  v2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F20, &qword_238764DB8);
  v2[4] = sub_23843A3E8(&qword_27DF09F28, &qword_27DF09F20, &qword_238764DB8);
  __swift_allocate_boxed_opaque_existential_1(v2);
  type metadata accessor for ApplePayOrderRow(0);
  sub_2384627BC(&qword_27DF09F30, type metadata accessor for ApplePayOrderRow);
  sub_23875D450();
  MEMORY[0x23EE63B10](v2);
}

uint64_t sub_23845EA5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238462CEC(a1, a2, type metadata accessor for ApplePayOrderRow);
}

uint64_t sub_23845EB1C()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  v2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09EF8, &qword_238764DB0);
  v2[4] = sub_23843A3E8(&qword_27DF09F00, &qword_27DF09EF8, &qword_238764DB0);
  __swift_allocate_boxed_opaque_existential_1(v2);
  type metadata accessor for ApplePayReceiptRow(0);
  sub_2384627BC(&qword_27DF09F08, type metadata accessor for ApplePayReceiptRow);
  sub_23875D450();
  MEMORY[0x23EE63B10](v2);
}

uint64_t sub_23845ECCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = sub_23875A710();
  (*(*(v8 - 8) + 16))(a4, a1, v8);
  v9 = type metadata accessor for ApplePayReceiptRow(0);
  v10 = (a4 + *(v9 + 20));
  *v10 = a2;
  v10[1] = a3;
  v11 = (a4 + *(v9 + 24));
  type metadata accessor for ApplePayReceiptRowModel(0);
  sub_2384627BC(&qword_27DF09F10, type metadata accessor for ApplePayReceiptRowModel);

  v12 = sub_23875C7A0();
  v14 = v13;

  *v11 = v12;
  v11[1] = v14;
  return result;
}

uint64_t sub_23845EE38()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23875C2E0();
}

id ApplePayOrderFetchController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ApplePayOrderFetchController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23845EEF0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  return v1;
}

uint64_t sub_23845EF64()
{
  v1 = OBJC_IVAR____TtC12FinanceKitUIP33_A0204AFFABB04678ACF84C566797848323ApplePayReceiptRowModel__isReceiptPresented;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09EF0, &qword_2387663B0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_23845F00C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ApplePayReceiptRowModel(0);
  result = sub_23875C260();
  *a1 = result;
  return result;
}

uint64_t sub_23845F04C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v22 = a1;
  v3 = type metadata accessor for ApplePayReceiptRow(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_23845F390(v23);
  v19 = v23[1];
  v20 = v23[0];
  v18 = v24;
  v21 = v25;
  v7 = (v1 + *(v4 + 32));
  v8 = *v7;
  v9 = v7[1];
  type metadata accessor for ApplePayReceiptRowModel(0);
  sub_2384627BC(&qword_27DF09F10, type metadata accessor for ApplePayReceiptRowModel);
  sub_23875C7B0();
  swift_getKeyPath();
  sub_23875C7C0();

  sub_238462CEC(v1, &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ApplePayReceiptRow);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_238462D54(&v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10, type metadata accessor for ApplePayReceiptRow);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F80, &qword_238764EE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F88, &qword_238764EF0);
  sub_238462E2C();
  sub_23843A3E8(&qword_27DF09F98, &qword_27DF09F88, &qword_238764EF0);
  v12 = v22;
  sub_23875DED0();

  sub_2384397FC(v20, v19, v18);

  v13 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09FA0, &qword_238764EF8) + 36);
  v14 = sub_23875A710();
  (*(*(v14 - 8) + 16))(v13, v2, v14);
  v15 = v13 + *(type metadata accessor for ManagedOrderResourceLoaderModifier(0) + 20);
  result = swift_getKeyPath();
  *v15 = result;
  *(v15 + 8) = 0;
  return result;
}

uint64_t sub_23845F390@<X0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v2 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_23875EA80();
  sub_2384397A8();
  v7 = sub_23875DAA0();
  v9 = v8;
  LOBYTE(v4) = v10;
  sub_23875DFC0();
  v11 = sub_23875DA10();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_2384397FC(v7, v9, v4 & 1);

  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v17;
  return result;
}

uint64_t sub_23845F594@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  *a2 = v5;
  return result;
}

uint64_t sub_23845F614(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23875C2E0();
}

uint64_t sub_23845F688()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  sub_238462EB0();
  sub_23875C790();
}

uint64_t sub_23845F774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = (a1 + *(type metadata accessor for ApplePayReceiptRow(0) + 20));
  v5 = v4[1];
  *a2 = *v4;
  *(a2 + 8) = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09FB0, &qword_238766040);
  sub_23875E1A0();
  *(a2 + 16) = v7;
  *(a2 + 32) = swift_getKeyPath();
  *(a2 + 72) = 0;
}

uint64_t sub_23845F874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a1;
  v117 = a2;
  v100 = sub_23875B1B0();
  v99 = *(v100 - 8);
  v2 = *(v99 + 64);
  MEMORY[0x28223BE20](v100);
  v98 = &v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F40, &qword_238764DC8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v113 = &v97 - v6;
  v7 = sub_23875DA00();
  v111 = *(v7 - 8);
  v112 = v7;
  v8 = *(v111 + 64);
  MEMORY[0x28223BE20](v7);
  v109 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23875C880();
  v107 = *(v10 - 8);
  v108 = v10;
  v11 = *(v107 + 64);
  MEMORY[0x28223BE20](v10);
  v106 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23875BE40();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23875BE20();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v120 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_23875BD20();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v119 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2387595E0();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v118 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2387590C0();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v28 = sub_2387590B0();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v97 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A028, &qword_238764FC0);
  v33 = *(*(v105 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v105);
  v116 = &v97 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v97 - v37;
  MEMORY[0x28223BE20](v36);
  v114 = &v97 - v39;
  sub_23875ED50();
  v115 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v40 = v110;
  (*(v29 + 16))(v32, v110, v28);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  sub_238759020();
  sub_2384627BC(&qword_27DF0A030, MEMORY[0x277CC7708]);
  sub_2384627BC(&qword_27DF0A038, MEMORY[0x277CC76F0]);
  v41 = sub_23875DA80();
  v43 = v42;
  v97 = v16;
  v45 = v44;
  sub_23875D820();
  v103 = sub_23875DA60();
  v102 = v46;
  v101 = v47;
  v104 = v48;

  sub_2384397FC(v41, v43, v45 & 1);

  v49 = type metadata accessor for ApplePayOrderRow(0);
  v50 = v40 + v49[8];
  v51 = v106;
  sub_2384D5138(v106);
  LOBYTE(v50) = sub_23875C860();
  (*(v107 + 8))(v51, v108);
  if (v50)
  {
    v52 = 3;
  }

  else
  {
    v52 = 2;
  }

  KeyPath = swift_getKeyPath();
  v55 = v111;
  v54 = v112;
  if (*(v40 + v49[6]) <= 1)
  {
    v56 = MEMORY[0x277CE0B28];
  }

  else
  {
    v56 = MEMORY[0x277CE0B30];
  }

  v57 = v109;
  (*(v111 + 104))(v109, *v56, v112);
  v58 = swift_getKeyPath();
  v59 = &v38[*(v105 + 36)];
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A040, &qword_238765ED0);
  (*(v55 + 32))(v59 + *(v60 + 28), v57, v54);
  *v59 = v58;
  v61 = v102;
  *v38 = v103;
  *(v38 + 1) = v61;
  v38[16] = v101 & 1;
  *(v38 + 3) = v104;
  *(v38 + 4) = KeyPath;
  *(v38 + 5) = v52;
  v38[48] = 0;
  v62 = v114;
  sub_238462F04(v38, v114);
  v63 = v113;
  sub_23843981C(v40 + v49[5], v113, &qword_27DF09F40, &qword_238764DC8);
  v64 = sub_23875B0A0();
  v65 = *(v64 - 8);
  if ((*(v65 + 48))(v63, 1, v64) == 1)
  {
    sub_238439884(v63, &qword_27DF09F40, &qword_238764DC8);
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v66 = qword_2814F1B90;
    v67 = sub_23875EA50();
    v68 = sub_23875EA50();
    v69 = sub_23875EA50();
    v70 = [v66 localizedStringForKey:v67 value:v68 table:v69];

    v71 = sub_23875EA80();
    v73 = v72;
  }

  else
  {
    sub_23875BCC0();
    sub_23875BDB0();
    sub_23875BE30();
    sub_2387595B0();
    v74 = v98;
    sub_23875B1A0();
    sub_2384627BC(&qword_27DF0A050, MEMORY[0x277CC8560]);
    v75 = v100;
    sub_23875B090();
    (*(v99 + 8))(v74, v75);
    (*(v65 + 8))(v63, v64);
    v71 = v121;
    v73 = v122;
  }

  v121 = v71;
  v122 = v73;
  sub_2384397A8();
  v76 = sub_23875DAA0();
  v78 = v77;
  v80 = v79;
  sub_23875D7F0();
  v81 = sub_23875DA60();
  v83 = v82;
  v85 = v84;

  sub_2384397FC(v76, v78, v80 & 1);

  LODWORD(v121) = sub_23875D440();
  v86 = sub_23875DA20();
  v88 = v87;
  v90 = v89;
  v92 = v91;
  sub_2384397FC(v81, v83, v85 & 1);

  v93 = v116;
  sub_23843981C(v62, v116, &qword_27DF0A028, &qword_238764FC0);
  v94 = v117;
  sub_23843981C(v93, v117, &qword_27DF0A028, &qword_238764FC0);
  v95 = v94 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A048, &qword_238765030) + 48);
  *v95 = v86;
  *(v95 + 8) = v88;
  v90 &= 1u;
  *(v95 + 16) = v90;
  *(v95 + 24) = v92;
  sub_23843980C(v86, v88, v90);

  sub_238439884(v62, &qword_27DF0A028, &qword_238764FC0);
  sub_2384397FC(v86, v88, v90);

  sub_238439884(v93, &qword_27DF0A028, &qword_238764FC0);
}

uint64_t sub_2384603E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v92 = sub_23875D2C0();
  v90 = *(v92 - 8);
  v3 = *(v90 + 64);
  v4 = MEMORY[0x28223BE20](v92);
  v97 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v96 = &v78 - v6;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09FC8, &qword_238764F68);
  v7 = *(*(v95 - 8) + 64);
  MEMORY[0x28223BE20](v95);
  v9 = &v78 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09FD0, &qword_238764F70);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v87 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v88 = (&v78 - v14);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09FD8, &qword_238764F78);
  v15 = *(*(v85 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v85);
  v86 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v78 - v18;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09FE0, &qword_238764F80);
  v20 = *(*(v89 - 8) + 64);
  MEMORY[0x28223BE20](v89);
  v22 = &v78 - v21;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09FE8, &qword_238764F88);
  v23 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91);
  v25 = &v78 - v24;
  v26 = sub_23875C880();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v78 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09FF0, &unk_238764F90);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v94 = &v78 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v99 = &v78 - v35;
  sub_23875ED50();
  v93 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v36 = type metadata accessor for ApplePayOrderRow(0);
  v37 = a1 + *(v36 + 32);
  sub_2384D5138(v30);
  LOBYTE(v37) = sub_23875C860();
  (*(v27 + 8))(v30, v26);
  if (v37)
  {
    *v25 = sub_23875D030();
    *(v25 + 1) = 0;
    v25[16] = 1;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A020, &qword_238764FB8);
    sub_238460E3C(a1, &v25[*(v38 + 44)]);
    sub_23843981C(v25, v22, &qword_27DF09FE8, &qword_238764F88);
    swift_storeEnumTagMultiPayload();
    sub_23843A3E8(&qword_27DF0A008, &qword_27DF09FE8, &qword_238764F88);
    sub_23843A3E8(&qword_27DF0A010, &qword_27DF09FC8, &qword_238764F68);
    v39 = v99;
    sub_23875D1B0();
    v40 = v25;
    v41 = &qword_27DF09FE8;
    v42 = &qword_238764F88;
  }

  else
  {
    v83 = sub_23875E0D0();
    v82 = sub_23875E040();
    v43 = *(v36 + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F18, &unk_2387756C0);
    sub_23875C550();
    sub_23875C550();
    sub_23875E4A0();
    sub_23875C5C0();
    v44 = v104;
    v79 = v106;
    v81 = v108;
    v80 = v109;
    v101 = v105;
    v100 = v107;
    v78 = sub_23875E010();
    v45 = sub_23875D780();
    v84 = v22;
    v46 = v101;
    v47 = v9;
    v48 = v100;
    v49 = &v19[*(v85 + 36)];
    v50 = *(sub_23875C980() + 20);
    v51 = *MEMORY[0x277CE0118];
    v52 = sub_23875CF50();
    (*(*(v52 - 8) + 104))(&v49[v50], v51, v52);
    __asm { FMOV            V0.2D, #4.0 }

    *v49 = _Q0;
    *&v49[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A88, &qword_238764220) + 36)] = 256;
    v58 = v82;
    *v19 = v83;
    *(v19 + 1) = v58;
    *(v19 + 2) = v44;
    v19[24] = v46;
    *(v19 + 25) = v103[0];
    *(v19 + 7) = *(v103 + 3);
    *(v19 + 4) = v79;
    v19[40] = v48;
    *(v19 + 41) = *v102;
    *(v19 + 11) = *&v102[3];
    v59 = v80;
    *(v19 + 6) = v81;
    *(v19 + 7) = v59;
    *(v19 + 8) = v78;
    v19[72] = v45;
    v60 = sub_23875D030();
    v61 = v88;
    *v88 = v60;
    *(v61 + 8) = 0;
    *(v61 + 16) = 1;
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09FF8, &qword_238764FA0);
    sub_23845F874(a1, v61 + *(v62 + 44));
    v63 = v86;
    sub_23843981C(v19, v86, &qword_27DF09FD8, &qword_238764F78);
    v64 = v87;
    sub_23843981C(v61, v87, &qword_27DF09FD0, &qword_238764F70);
    sub_23843981C(v63, v47, &qword_27DF09FD8, &qword_238764F78);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A000, &qword_238764FA8);
    sub_23843981C(v64, v47 + *(v65 + 48), &qword_27DF09FD0, &qword_238764F70);
    sub_238439884(v64, &qword_27DF09FD0, &qword_238764F70);
    sub_238439884(v63, &qword_27DF09FD8, &qword_238764F78);
    sub_23843981C(v47, v84, &qword_27DF09FC8, &qword_238764F68);
    swift_storeEnumTagMultiPayload();
    sub_23843A3E8(&qword_27DF0A008, &qword_27DF09FE8, &qword_238764F88);
    sub_23843A3E8(&qword_27DF0A010, &qword_27DF09FC8, &qword_238764F68);
    v39 = v99;
    sub_23875D1B0();
    sub_238439884(v47, &qword_27DF09FC8, &qword_238764F68);
    sub_238439884(v61, &qword_27DF09FD0, &qword_238764F70);
    v40 = v19;
    v41 = &qword_27DF09FD8;
    v42 = &qword_238764F78;
  }

  sub_238439884(v40, v41, v42);
  v66 = v96;
  sub_23875D2B0();
  v67 = v94;
  sub_23843981C(v39, v94, &qword_27DF09FF0, &unk_238764F90);
  LOBYTE(v103[0]) = 1;
  v68 = v90;
  v69 = *(v90 + 16);
  v70 = v97;
  v71 = v92;
  v69(v97, v66, v92);
  v72 = v98;
  sub_23843981C(v67, v98, &qword_27DF09FF0, &unk_238764F90);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A018, &qword_238764FB0);
  v74 = v72 + *(v73 + 48);
  v75 = v103[0];
  *v74 = 0;
  *(v74 + 8) = v75;
  v69((v72 + *(v73 + 64)), v70, v71);
  v76 = *(v68 + 8);
  v76(v66, v71);
  sub_238439884(v99, &qword_27DF09FF0, &unk_238764F90);
  v76(v70, v71);
  sub_238439884(v67, &qword_27DF09FF0, &unk_238764F90);
}

uint64_t sub_238460E3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09FD0, &qword_238764F70);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09FD8, &qword_238764F78);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v45 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - v13;
  sub_23875ED50();
  v44 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v43 = sub_23875E0D0();
  v42 = sub_23875E040();
  v15 = *(type metadata accessor for ApplePayOrderRow(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F18, &unk_2387756C0);
  sub_23875C550();
  sub_23875C550();
  sub_23875E4A0();
  sub_23875C5C0();
  v41 = a1;
  v16 = v52;
  v40 = v56;
  v38 = v54;
  v39 = v57;
  v49 = v53;
  v48 = v55;
  v17 = sub_23875E010();
  v18 = sub_23875D780();
  v19 = v49;
  v20 = v48;
  v21 = &v14[*(v9 + 36)];
  v22 = *(sub_23875C980() + 20);
  v23 = *MEMORY[0x277CE0118];
  v24 = sub_23875CF50();
  (*(*(v24 - 8) + 104))(&v21[v22], v23, v24);
  __asm { FMOV            V0.2D, #4.0 }

  *v21 = _Q0;
  *&v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A88, &qword_238764220) + 36)] = 256;
  v30 = v42;
  *v14 = v43;
  *(v14 + 1) = v30;
  *(v14 + 2) = v16;
  v14[24] = v19;
  *(v14 + 25) = *v51;
  *(v14 + 7) = *&v51[3];
  *(v14 + 4) = v38;
  v14[40] = v20;
  *(v14 + 41) = *v50;
  *(v14 + 11) = *&v50[3];
  v31 = v39;
  *(v14 + 6) = v40;
  *(v14 + 7) = v31;
  *(v14 + 8) = v17;
  v14[72] = v18;
  *v8 = sub_23875D030();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09FF8, &qword_238764FA0);
  sub_23845F874(v41, &v8[*(v32 + 44)]);
  v33 = v45;
  sub_23843981C(v14, v45, &qword_27DF09FD8, &qword_238764F78);
  v34 = v47;
  sub_23843981C(v8, v47, &qword_27DF09FD0, &qword_238764F70);
  v35 = v46;
  sub_23843981C(v33, v46, &qword_27DF09FD8, &qword_238764F78);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A000, &qword_238764FA8);
  sub_23843981C(v34, v35 + *(v36 + 48), &qword_27DF09FD0, &qword_238764F70);
  sub_238439884(v8, &qword_27DF09FD0, &qword_238764F70);
  sub_238439884(v14, &qword_27DF09FD8, &qword_238764F78);
  sub_238439884(v34, &qword_27DF09FD0, &qword_238764F70);
  sub_238439884(v33, &qword_27DF09FD8, &qword_238764F78);
}

uint64_t sub_23846128C@<X0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a1 = sub_23875CE60();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09FB8, &qword_238764F58);
  sub_2384603E8(v1, a1 + *(v3 + 44));

  v4 = sub_23875D000();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09FC0, &qword_238764F60);
  v6 = (a1 + *(result + 36));
  *v6 = v4;
  v6[1] = sub_23843480C;
  v6[2] = 0;
  return result;
}

void sub_238461390(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_2384613F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_23875EA50();

  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_238461390;
  aBlock[3] = &block_descriptor_0;
  v12 = _Block_copy(aBlock);
  v16[4] = a5;
  v16[5] = a6;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_238461548;
  v16[3] = &block_descriptor_31;
  v13 = _Block_copy(v16);
  v14 = [v6 initWithReceiptName:v11 cellConfigurationHandler:v12 cellSelectionHandler:v13];
  _Block_release(v12);

  _Block_release(v13);

  return v14;
}

uint64_t sub_238461548(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_23846158C(void *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  sub_23845DD68(v1[2], v1[3], a1);
}

uint64_t sub_2384615AC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_238461BA0(v11, 0, 0, 1, a1, a2);
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
    sub_238453DB4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t dispatch thunk of ApplePayOrderFetchController.fetchAllRowViewModelsForTransaction(withIdentifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x68);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2384617DC;

  return v10(a1, a2);
}

uint64_t sub_2384617DC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

void sub_238461900()
{
  sub_238461990();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_238461990()
{
  if (!qword_27DF09EE8)
  {
    v0 = sub_23875C2F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF09EE8);
    }
  }
}

uint64_t sub_2384619E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2384494A4;

  return sub_23845E0C0(v2, v3, v4);
}

uint64_t objectdestroy_18Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_238461AD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_238449A7C;

  return sub_2386E64F0(a1, v4, v5, v7);
}

unint64_t sub_238461BA0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_238461CAC(a5, a6);
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
    result = sub_23875F4B0();
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

uint64_t sub_238461CAC(uint64_t a1, unint64_t a2)
{
  v4 = sub_238461CF8(a1, a2);
  sub_238461E28(&unk_284B24AA0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_238461CF8(uint64_t a1, unint64_t a2)
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

  v6 = sub_238452334(v5, 0);
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

  result = sub_23875F4B0();
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
        v10 = sub_23875EB80();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_238452334(v10, 0);
        result = sub_23875F460();
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

uint64_t sub_238461E28(uint64_t result)
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

  result = sub_238461F14(result, v12, 1, v3);
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

char *sub_238461F14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09950, qword_238764060);
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

id sub_238462008(void *a1, void *a2)
{
  v4 = type metadata accessor for ApplePayOrderRow(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v11 = sub_23875A710();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238757D40();
  sub_23845E35C(a1, a2, v10);
  sub_23875A6F0();
  sub_23875A6D0();
  sub_238462CEC(v10, v8, type metadata accessor for ApplePayOrderRow);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_238462D54(v8, v16 + v15, type metadata accessor for ApplePayOrderRow);
  v17 = objc_allocWithZone(FKApplePayOrderRowViewModel);
  v18 = sub_23875EA50();

  v19 = sub_23875EA50();

  aBlock[4] = sub_238462824;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_238461390;
  aBlock[3] = &block_descriptor_37;
  v20 = _Block_copy(aBlock);
  v21 = [v17 initWithOrderTypeIdentifier:v18 orderIdentifier:v19 fulfillmentIdentifier:0 cellConfigurationHandler:v20];

  _Block_release(v20);
  sub_238462894(v10);
  (*(v23 + 8))(v14, v24);

  return v21;
}

id sub_2384622F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v6 = sub_23875A710();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - v10;
  result = [a2 payment];
  if (result)
  {
    v13 = result;
    v46 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v47 = v7;
    v14 = sub_238758FC0();

    v48 = v6;
    v49 = v11;
    v44 = a1;
    v45 = v8;
    if (v14 >> 62)
    {
LABEL_19:
      v15 = sub_23875F3A0();
      if (v15)
      {
LABEL_4:
        v16 = 0;
        while (1)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v17 = MEMORY[0x23EE63F70](v16, v14);
          }

          else
          {
            if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_18;
            }

            v17 = *(v14 + 8 * v16 + 32);
          }

          v18 = v17;
          v19 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
LABEL_18:
            __break(1u);
            goto LABEL_19;
          }

          v20 = [v17 applePayTransactionIdentifier];
          if (v20)
          {
            v21 = v20;
            v22 = sub_23875EA80();
            v24 = v23;

            v54 = v22;
            v55 = v24;
            v52 = v50;
            v53 = v51;
            sub_2384397A8();
            v25 = sub_23875F270();

            if (!v25)
            {
              break;
            }
          }

          ++v16;
          if (v19 == v15)
          {
            goto LABEL_20;
          }
        }

        v26 = [v18 receiptName];
        if (v26)
        {
          v27 = v26;
          v51 = sub_23875EA80();
          v29 = v28;

          v30 = v49;
          sub_238757D40();
          v31 = type metadata accessor for ApplePayReceiptRowModel(0);
          v32 = *(v31 + 48);
          v33 = *(v31 + 52);
          v34 = swift_allocObject();
          LOBYTE(v54) = 0;
          sub_23875C290();
          v35 = v46;
          v36 = v47;
          v37 = v48;
          (*(v47 + 16))(v46, v30, v48);
          v38 = (*(v36 + 80) + 16) & ~*(v36 + 80);
          v39 = (v45 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
          v40 = swift_allocObject();
          (*(v36 + 32))(v40 + v38, v35, v37);
          v41 = (v40 + v39);
          v42 = v51;
          *v41 = v51;
          v41[1] = v29;
          *(v40 + ((v39 + 23) & 0xFFFFFFFFFFFFFFF8)) = v34;
          objc_allocWithZone(FKApplePayReceiptRowViewModel);

          v43 = sub_2384613F8(v42, v29, sub_2384626C4, v40, sub_238462770, v34);

          (*(v36 + 8))(v49, v37);
          return v43;
        }

        return 0;
      }
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
        goto LABEL_4;
      }
    }

LABEL_20:

    return 0;
  }

  return result;
}

uint64_t sub_2384626C4()
{
  v1 = *(sub_23875A710() - 8);
  v2 = (*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = (v2 + 23) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v0 + v2);
  v5 = *(v0 + v3);
  v6 = *v4;
  v7 = v4[1];

  return sub_23845EB1C();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2384627BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_238462824()
{
  v0 = *(*(type metadata accessor for ApplePayOrderRow(0) - 8) + 80);

  return sub_23845E8C4();
}

uint64_t sub_238462894(uint64_t a1)
{
  v2 = type metadata accessor for ApplePayOrderRow(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2384628F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F40, &qword_238764DC8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_238462990()
{
  sub_2387590B0();
  if (v0 <= 0x3F)
  {
    sub_238462B08(319, &qword_27DF09F58, MEMORY[0x277CC8540], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_238462AAC();
      if (v2 <= 0x3F)
      {
        sub_238462B08(319, &qword_2814F09A8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_238462AAC()
{
  if (!qword_27DF09F60)
  {
    sub_23845A940();
    v0 = sub_23875C560();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF09F60);
    }
  }
}

void sub_238462B08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_238462B94()
{
  sub_23875A710();
  if (v0 <= 0x3F)
  {
    sub_238462C20();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_238462C20()
{
  if (!qword_27DF09F78)
  {
    type metadata accessor for ApplePayReceiptRowModel(255);
    sub_2384627BC(&qword_27DF09F10, type metadata accessor for ApplePayReceiptRowModel);
    v0 = sub_23875C7D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF09F78);
    }
  }
}

uint64_t sub_238462CEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_238462D54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_238462DBC()
{
  v0 = *(*(type metadata accessor for ApplePayReceiptRow(0) - 8) + 80);

  return sub_23845F688();
}

unint64_t sub_238462E2C()
{
  result = qword_27DF09F90;
  if (!qword_27DF09F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09F80, &qword_238764EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09F90);
  }

  return result;
}

unint64_t sub_238462EB0()
{
  result = qword_27DF09FA8;
  if (!qword_27DF09FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09FA8);
  }

  return result;
}

uint64_t sub_238462F04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A028, &qword_238764FC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_238462F74()
{
  result = qword_27DF0A058;
  if (!qword_27DF0A058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09FA0, &qword_238764EF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09F80, &qword_238764EE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09F88, &qword_238764EF0);
    sub_238462E2C();
    sub_23843A3E8(&qword_27DF09F98, &qword_27DF09F88, &qword_238764EF0);
    swift_getOpaqueTypeConformance2();
    sub_2384627BC(&qword_27DF0A060, type metadata accessor for ManagedOrderResourceLoaderModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A058);
  }

  return result;
}

unint64_t sub_2384630CC()
{
  result = qword_27DF0A068;
  if (!qword_27DF0A068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09FC0, &qword_238764F60);
    sub_238463158();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A068);
  }

  return result;
}

unint64_t sub_238463158()
{
  result = qword_27DF0A070;
  if (!qword_27DF0A070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A078, &qword_238765038);
    sub_23843A3E8(&qword_27DF0A080, &qword_27DF0A088, &qword_238765040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A070);
  }

  return result;
}

uint64_t type metadata accessor for AccountLogo()
{
  result = qword_27DF0A098;
  if (!qword_27DF0A098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23846328C()
{
  sub_238758A00();
  if (v0 <= 0x3F)
  {
    sub_2384633E8(319, &qword_27DF0A0A8, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_2384633E8(319, &qword_27DF0A0B0, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_2384563A4(319, &qword_27DF0A0B8, &qword_27DF0A0C0, &qword_238771EF0);
        if (v3 <= 0x3F)
        {
          sub_2384563A4(319, &qword_27DF0A0C8, &qword_27DF09540, &unk_238763800);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2384633E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

double sub_238463454()
{
  v1 = sub_23875CDB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for AccountLogo() + 28));
  v7 = *v6;
  if (v6[8] == 1)
  {
    return *v6;
  }

  sub_23875EFF0();
  v9 = sub_23875D730();
  sub_23875C110();

  sub_23875CDA0();
  swift_getAtKeyPath();
  sub_2384348B8(v7, 0);
  (*(v2 + 8))(v5, v1);
  return *&v10[1];
}

id sub_2384635B0()
{
  v1 = v0;
  v2 = sub_23875B940();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_238758A00();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v1, v7);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == *MEMORY[0x277CC7158])
  {
    return 0;
  }

  if (v12 == *MEMORY[0x277CC7170] || v12 == *MEMORY[0x277CC7178] || v12 == *MEMORY[0x277CC7168])
  {
    result = PKPassKitUIBundle();
    if (result)
    {
      v14 = result;
      v15 = sub_23875EA50();

      v16 = sub_23875EA50();
      v17 = [v14 URLForResource:v15 withExtension:v16];

      if (v17)
      {
        sub_23875B8B0();

        v18 = sub_23875B860();
        (*(v3 + 8))(v6, v2);
      }

      else
      {
        v18 = 0;
      }

      v19 = PKUIImageFromPDF();

      return v19;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (v12 == *MEMORY[0x277CC7160])
    {
      return 0;
    }

    (*(v8 + 8))(v11, v7);
    return 0;
  }

  return result;
}

uint64_t sub_2384638EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A0D0, &qword_2387650B8);
  v3 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v5 = &v45 - v4;
  v6 = type metadata accessor for AccountLogo();
  v46 = *(v6 - 1);
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v6);
  v48 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A0D8, &qword_2387650C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v45 - v10;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A0E0, &qword_2387650C8);
  v12 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v14 = &v45 - v13;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A0E8, &qword_2387650D0);
  v15 = *(*(v49 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v49);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v47 = &v45 - v19;
  v20 = sub_238758A00();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v24, v2, v20);
  v25 = (*(v21 + 88))(v24, v20);
  if (v25 == *MEMORY[0x277CC7158])
  {
    goto LABEL_2;
  }

  if (v25 != *MEMORY[0x277CC7170] && v25 != *MEMORY[0x277CC7178] && v25 != *MEMORY[0x277CC7168])
  {
    if (v25 != *MEMORY[0x277CC7160])
    {
      (*(v21 + 8))(v24, v20);
    }

LABEL_2:
    v26 = (v2 + v6[5]);
    v28 = *v26;
    v27 = v26[1];
    v29 = *(v2 + v6[6]);
    KeyPath = swift_getKeyPath();
    v54 = 0;
    v52 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09540, &unk_238763800);
    sub_23875E1A0();
    v31 = v53;
    v32 = v54;
    *v5 = v28;
    *(v5 + 1) = v27;
    v5[16] = v29;
    *(v5 + 3) = 0x3FB999999999999ALL;
    *(v5 + 4) = KeyPath;
    v5[40] = v32;
    *(v5 + 3) = v31;
    swift_storeEnumTagMultiPayload();
    sub_238464754();
    sub_2384648F0();
    return sub_23875D1B0();
  }

  *v11 = sub_23875D020();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A110, &qword_238765108);
  sub_238463EF0(v2, &v11[*(v34 + 44)]);
  v35 = v2 + v6[8];
  v36 = *v35;
  v37 = *(v35 + 8);
  LOBYTE(v53) = v36;
  *(&v53 + 1) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1B0();
  if (v52)
  {
    v38 = 1.0;
  }

  else
  {
    v38 = 0.0;
  }

  sub_2384396E4(v11, v14, &qword_27DF0A0D8, &qword_2387650C0);
  *&v14[*(v45 + 36)] = v38;
  v39 = v48;
  sub_238464944(v2, v48);
  v40 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v41 = swift_allocObject();
  sub_238464CAC(v39, v41 + v40, type metadata accessor for AccountLogo);
  v42 = &v18[*(v49 + 36)];
  v43 = &v42[*(sub_23875C6E0() + 20)];
  sub_23875ED60();
  *v42 = &unk_238765118;
  *(v42 + 1) = v41;
  sub_2384396E4(v14, v18, &qword_27DF0A0E0, &qword_2387650C8);
  v44 = v47;
  sub_2384396E4(v18, v47, &qword_27DF0A0E8, &qword_2387650D0);
  sub_23843981C(v44, v5, &qword_27DF0A0E8, &qword_2387650D0);
  swift_storeEnumTagMultiPayload();
  sub_238464754();
  sub_2384648F0();
  sub_23875D1B0();
  return sub_238439884(v44, &qword_27DF0A0E8, &qword_2387650D0);
}

uint64_t sub_238463EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v43 = a2;
  v38 = sub_23875C980();
  v2 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23875E0E0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A128, &qword_2387660A0);
  v10 = *(*(v42 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v42);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v37 = &v34 - v14;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A130, &qword_238765120);
  v15 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v17 = &v34 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A138, &qword_238765128);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v34 - v20;
  sub_23875ED50();
  v41 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22 = type metadata accessor for AccountLogo();
  v23 = v39;
  v46 = *(v39 + *(v22 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A120, &qword_2387758B0);
  sub_23875E1B0();
  if (v45)
  {
    v36 = v45;
    sub_23875E0C0();
    (*(v6 + 104))(v9, *MEMORY[0x277CE0FE0], v5);
    v35 = sub_23875E150();

    (*(v6 + 8))(v9, v5);
    v24 = *(v23 + *(v22 + 24));
    v25 = qword_238765138[v24];
    sub_23875E4A0();
    sub_23875C5C0();
    LOBYTE(v45) = 1;
    *&v44[6] = v46;
    *&v44[22] = v47;
    *&v44[38] = v48;
    v26 = qword_238765168[v24];
    v27 = *(v38 + 20);
    v28 = *MEMORY[0x277CE0118];
    v29 = sub_23875CF50();
    (*(*(v29 - 8) + 104))(&v4[v27], v28, v29);
    *v4 = v26;
    *(v4 + 1) = v26;
    v30 = &v13[*(v42 + 36)];
    sub_238464CAC(v4, v30, MEMORY[0x277CDFC08]);
    *(v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A88, &qword_238764220) + 36)) = 256;
    v31 = *&v44[16];
    *(v13 + 18) = *v44;
    *v13 = v35;
    *(v13 + 1) = 0;
    *(v13 + 8) = 1;
    *(v13 + 34) = v31;
    *(v13 + 50) = *&v44[32];
    *(v13 + 8) = *&v44[46];
    v32 = v37;
    sub_2384396E4(v13, v37, &qword_27DF0A128, &qword_2387660A0);
    sub_23843981C(v32, v17, &qword_27DF0A128, &qword_2387660A0);
    swift_storeEnumTagMultiPayload();
    sub_238464A90();
    sub_238464C58();
    sub_23875D1B0();

    sub_238439884(v32, &qword_27DF0A128, &qword_2387660A0);
  }

  else
  {
    *v17 = *(v23 + *(v22 + 24));
    swift_storeEnumTagMultiPayload();
    sub_238464A90();
    sub_238464C58();
    sub_23875D1B0();
  }

  sub_2384396E4(v21, v43, &qword_27DF0A138, &qword_238765128);
}

uint64_t sub_238464490(uint64_t a1)
{
  *(v1 + 40) = a1;
  sub_23875ED50();
  *(v1 + 48) = sub_23875ED40();
  v3 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_238464528, v3, v2);
}

uint64_t sub_238464528()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);

  v3 = type metadata accessor for AccountLogo();
  v4 = qword_238765198[*(v2 + *(v3 + 24))];
  v5 = *(v0 + 40);
  sub_238463454();
  v6 = sub_2384635B0();
  *(v0 + 16) = *(v5 + *(v3 + 40));
  *(v0 + 32) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A120, &qword_2387758B0);
  sub_23875E1C0();
  *(swift_task_alloc() + 16) = v5;
  sub_23875E500();
  sub_23875C6F0();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_238464660(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (a1 + *(type metadata accessor for AccountLogo() + 32));
  v4 = *v2;
  v5 = *(v2 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1C0();
}

unint64_t sub_238464754()
{
  result = qword_27DF0A0F0;
  if (!qword_27DF0A0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A0E8, &qword_2387650D0);
    sub_2384647E0();
    sub_238464898();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A0F0);
  }

  return result;
}

unint64_t sub_2384647E0()
{
  result = qword_27DF0A0F8;
  if (!qword_27DF0A0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A0E0, &qword_2387650C8);
    sub_23843A3E8(&qword_27DF0A100, &qword_27DF0A0D8, &qword_2387650C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A0F8);
  }

  return result;
}

unint64_t sub_238464898()
{
  result = qword_27DF08DC8;
  if (!qword_27DF08DC8)
  {
    sub_23875C6E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF08DC8);
  }

  return result;
}

unint64_t sub_2384648F0()
{
  result = qword_27DF0A108;
  if (!qword_27DF0A108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A108);
  }

  return result;
}

uint64_t sub_238464944(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountLogo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2384649A8()
{
  v2 = *(type metadata accessor for AccountLogo() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2384494A4;

  return sub_238464490(v0 + v3);
}

unint64_t sub_238464A90()
{
  result = qword_27DF0A140;
  if (!qword_27DF0A140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A128, &qword_2387660A0);
    sub_238464B48();
    sub_23843A3E8(&qword_27DF09AD0, &qword_27DF09A88, &qword_238764220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A140);
  }

  return result;
}

unint64_t sub_238464B48()
{
  result = qword_27DF0A148;
  if (!qword_27DF0A148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A150, &unk_238766130);
    sub_238464BD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A148);
  }

  return result;
}

unint64_t sub_238464BD4()
{
  result = qword_27DF0A158;
  if (!qword_27DF0A158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A160, &unk_23876F200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A158);
  }

  return result;
}

unint64_t sub_238464C58()
{
  result = qword_27DF0A168;
  if (!qword_27DF0A168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A168);
  }

  return result;
}

uint64_t sub_238464CAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_238464D14()
{
  result = qword_27DF0A170;
  if (!qword_27DF0A170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A178, &qword_238765130);
    sub_238464754();
    sub_2384648F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A170);
  }

  return result;
}

uint64_t type metadata accessor for AccountConsentManagementBalanceHistoryView()
{
  result = qword_27DF0A188;
  if (!qword_27DF0A188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_238464E14()
{
  sub_238464EC8();
  if (v0 <= 0x3F)
  {
    sub_238464F2C();
    if (v1 <= 0x3F)
    {
      sub_238757AD0();
      if (v2 <= 0x3F)
      {
        sub_238759550();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_238464EC8()
{
  if (!qword_27DF0A198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A1A0, &qword_238765210);
    v0 = sub_23875C470();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0A198);
    }
  }
}

void sub_238464F2C()
{
  if (!qword_27DF0A1A8)
  {
    sub_23875A7A0();
    v0 = sub_23875C520();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0A1A8);
    }
  }
}

uint64_t sub_238464FA0@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A1B0, &qword_238765268);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A1B8, &qword_238765270);
  v27 = *(v7 - 8);
  v28 = v7;
  v8 = *(v27 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v30 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A1C0, &qword_238765278);
  sub_238466FF4();
  sub_23875D9C0();
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v11 = qword_2814F1B90;
  v12 = sub_23875EA50();
  v13 = sub_23875EA50();
  v14 = sub_23875EA50();
  v15 = [v11 localizedStringForKey:v12 value:v13 table:v14];

  v16 = sub_23875EA80();
  v18 = v17;

  v31 = v16;
  v32 = v18;
  sub_2384397A8();
  v19 = sub_23875DAA0();
  v21 = v20;
  LOBYTE(v14) = v22;
  v23 = sub_23843A3E8(&qword_27DF0A1E0, &qword_27DF0A1B0, &qword_238765268);
  sub_23875DC60();
  sub_2384397FC(v19, v21, v14 & 1);

  (*(v3 + 8))(v6, v2);
  v31 = v2;
  v32 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v28;
  sub_23875DE00();
  return (*(v27 + 8))(v10, v24);
}

uint64_t sub_238465324(uint64_t a1)
{
  v2 = type metadata accessor for AccountConsentManagementBalanceHistoryView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A1E8, &qword_238765288);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v16 - v8;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *(v2 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A180, &unk_2387651D0);
  sub_23875C500();
  v11 = sub_23852F140(v9);
  sub_238439884(v9, &qword_27DF0A1E8, &qword_238765288);
  v16[1] = v11;
  swift_getKeyPath();
  sub_2384670A4(a1, v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_238467108(v5, v13 + v12);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_23846716C;
  *(v14 + 24) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A1F0, &qword_2387652C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A1D8, &qword_238765280);
  sub_23843A3E8(&qword_27DF0A1F8, &qword_27DF0A1F0, &qword_2387652C8);
  sub_2384673C0(&qword_27DF0A200, MEMORY[0x277CC95F0]);
  sub_23843A3E8(&qword_27DF0A1D0, &qword_27DF0A1D8, &qword_238765280);
  sub_23875E370();
}

uint64_t sub_238465668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v133 = a3;
  v134 = a1;
  v151 = a4;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A208, &unk_2387652D0);
  v152 = *(v156 - 8);
  v5 = *(v152 + 64);
  MEMORY[0x28223BE20](v156);
  v135 = v126 - v6;
  v7 = sub_238757AD0();
  v131 = *(v7 - 8);
  v132 = v7;
  v8 = *(v131 + 64);
  MEMORY[0x28223BE20](v7);
  v130 = v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v129 = v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v126 - v14;
  v16 = sub_23875BC40();
  v140 = *(v16 - 8);
  v141 = v16;
  v17 = *(v140 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v137 = v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v136 = v126 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A210, &unk_2387652E0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v145 = v126 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = v126 - v25;
  v27 = sub_2387591B0();
  v153 = *(v27 - 8);
  v154 = v27;
  v28 = *(v153 + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v139 = v126 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v138 = v126 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v144 = v126 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = v126 - v36;
  v157 = sub_238758090();
  v38 = *(v157 - 8);
  v39 = *(v38 + 64);
  v40 = MEMORY[0x28223BE20](v157);
  v143 = v126 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v142 = v126 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A218, &qword_2387652F0);
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x28223BE20](v43 - 8);
  v150 = v126 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v149 = v126 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v147 = v126 - v50;
  MEMORY[0x28223BE20](v49);
  v155 = v126 - v51;
  sub_23875ED50();
  v148 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875A740();
  v52 = *(v38 + 48);
  v53 = v157;
  v54 = v52(v37, 1, v157);
  v146 = v38;
  if (v54 == 1)
  {
    sub_238439884(v37, &unk_27DF0B080, &unk_2387662A0);
    v55 = v156;
LABEL_10:
    v66 = *(v152 + 56);
    v67 = v155;
    v66(v155, 1, 1, v55);
    v68 = v144;
    v69 = v145;
    goto LABEL_11;
  }

  v128 = v52;
  v56 = v142;
  (*(v38 + 32))(v142, v37, v53);
  sub_23875A790();
  v57 = v153;
  v58 = v154;
  if ((*(v153 + 48))(v26, 1, v154) == 1)
  {
    (*(v38 + 8))(v56, v53);
    v59 = &qword_27DF0A210;
    v60 = &unk_2387652E0;
    v61 = v26;
LABEL_9:
    sub_238439884(v61, v59, v60);
    v55 = v156;
    v52 = v128;
    goto LABEL_10;
  }

  v62 = v138;
  (*(v57 + 32))(v138, v26, v58);
  v63 = v57;
  sub_23875A760();
  v65 = v140;
  v64 = v141;
  if ((*(v140 + 48))(v15, 1, v141) == 1)
  {
    (*(v63 + 8))(v62, v58);
    (*(v146 + 8))(v142, v157);
    v59 = &qword_27DF12E00;
    v60 = &unk_238763FC0;
    v61 = v15;
    goto LABEL_9;
  }

  v126[1] = a2;
  (*(v65 + 32))(v136, v15, v64);
  v127 = type metadata accessor for AccountConsentManagementBalanceHistoryView();
  v89 = *(v127 + 24);
  v91 = v130;
  v90 = v131;
  v92 = v132;
  (*(v131 + 104))(v130, *MEMORY[0x277CC6B50], v132);
  sub_2384673C0(&qword_27DF0A228, MEMORY[0x277CC6B60]);
  v93 = v133;
  sub_23875EC40();
  sub_23875EC40();
  (*(v90 + 8))(v91, v92);
  v94 = *(v93 + *(v127 + 28));
  sub_238759530();
  v127 = v95;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v96 = qword_2814F1B90;
  v97 = sub_23875EA50();

  v98 = sub_23875EA50();
  v99 = sub_23875EA50();
  v100 = [v96 localizedStringForKey:v97 value:v98 table:v99];

  v101 = sub_23875EA80();
  v103 = v102;

  v104 = sub_23875D030();
  LOBYTE(v159) = 1;
  sub_238466AC8(v101, v103, &v181);
  v169 = v187;
  v170 = v188;
  v165 = v183;
  v166 = v184;
  v167 = v185;
  v168 = v186;
  v163 = v181;
  v164 = v182;
  v178 = v187;
  v179 = v188;
  v174 = v183;
  v175 = v184;
  v176 = v185;
  v177 = v186;
  v171 = v189;
  v180 = v189;
  v172 = v181;
  v173 = v182;
  sub_23843981C(&v163, &v160, &qword_27DF0A230, &qword_238765300);
  sub_238439884(&v172, &qword_27DF0A230, &qword_238765300);

  *(&v158[6] + 7) = v169;
  *(&v158[5] + 7) = v168;
  *(&v158[2] + 7) = v165;
  *(&v158[1] + 7) = v164;
  *(&v158[7] + 7) = v170;
  *(&v158[8] + 7) = v171;
  *(&v158[3] + 7) = v166;
  *(&v158[4] + 7) = v167;
  *(v158 + 7) = v163;
  *(&v161[5] + 1) = v158[5];
  *(&v161[6] + 1) = v158[6];
  *(&v161[7] + 1) = v158[7];
  v161[8] = *(&v158[7] + 15);
  *(&v161[1] + 1) = v158[1];
  *(&v161[2] + 1) = v158[2];
  *(&v161[3] + 1) = v158[3];
  *(&v161[4] + 1) = v158[4];
  v160 = v104;
  LOBYTE(v161[0]) = v159;
  *(v161 + 1) = v158[0];
  *&v181 = 0;
  *(&v181 + 1) = 0xE000000000000000;
  sub_23875F470();

  *&v181 = 0xD00000000000001ELL;
  *(&v181 + 1) = 0x80000002387866A0;
  v159 = v134;
  v105 = sub_23875F600();
  MEMORY[0x23EE63650](v105);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A238, &qword_238765308);
  sub_23843A3E8(&qword_27DF0A240, &qword_27DF0A238, &qword_238765308);
  v106 = v135;
  sub_23875DE00();

  v187 = v161[5];
  v188 = v161[6];
  v189 = v161[7];
  v190 = v161[8];
  v183 = v161[1];
  v184 = v161[2];
  v185 = v161[3];
  v186 = v161[4];
  v181 = v160;
  v182 = v161[0];
  sub_238439884(&v181, &qword_27DF0A238, &qword_238765308);
  (*(v153 + 8))(v138, v154);
  (*(v146 + 8))(v142, v157);
  (*(v140 + 8))(v136, v141);
  v107 = v106;
  v67 = v155;
  sub_238467224(v107, v155);
  v66 = *(v152 + 56);
  v66(v67, 0, 1, v156);
  v68 = v144;
  v69 = v145;
  v52 = v128;
LABEL_11:
  sub_23875A720();
  v70 = v157;
  if (v52(v68, 1, v157) == 1)
  {
    sub_238439884(v68, &unk_27DF0B080, &unk_2387662A0);
LABEL_18:
    v83 = v147;
    v66(v147, 1, 1, v156);
    goto LABEL_19;
  }

  v145 = v66;
  v71 = v146;
  v72 = v143;
  (*(v146 + 32))(v143, v68, v70);
  v73 = v70;
  sub_23875A780();
  v74 = v153;
  v75 = v69;
  v76 = v69;
  v77 = v154;
  if ((*(v153 + 48))(v75, 1, v154) == 1)
  {
    (*(v71 + 8))(v72, v73);
    sub_238439884(v76, &qword_27DF0A210, &unk_2387652E0);
LABEL_17:
    v66 = v145;
    goto LABEL_18;
  }

  v78 = v139;
  (*(v74 + 32))(v139, v76, v77);
  v79 = v129;
  v80 = v74;
  sub_23875A750();
  v82 = v140;
  v81 = v141;
  if ((*(v140 + 48))(v79, 1, v141) == 1)
  {
    (*(v80 + 8))(v78, v77);
    (*(v146 + 8))(v143, v157);
    sub_238439884(v79, &qword_27DF12E00, &unk_238763FC0);
    v67 = v155;
    goto LABEL_17;
  }

  (*(v82 + 32))(v137, v79, v81);
  v108 = type metadata accessor for AccountConsentManagementBalanceHistoryView();
  v109 = *(v108 + 24);
  v110 = v130;
  v111 = v131;
  v112 = v132;
  (*(v131 + 104))(v130, *MEMORY[0x277CC6B50], v132);
  sub_2384673C0(&qword_27DF0A228, MEMORY[0x277CC6B60]);
  v113 = v133;
  sub_23875EC40();
  sub_23875EC40();
  (*(v111 + 8))(v110, v112);
  v114 = *(v113 + *(v108 + 28));
  sub_238759520();
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v115 = qword_2814F1B90;
  v116 = sub_23875EA50();

  v117 = sub_23875EA50();
  v118 = sub_23875EA50();
  v119 = [v115 localizedStringForKey:v116 value:v117 table:v118];

  v120 = sub_23875EA80();
  v122 = v121;

  v123 = sub_23875D030();
  LOBYTE(v159) = 1;
  sub_238466AC8(v120, v122, &v181);
  v169 = v187;
  v170 = v188;
  v165 = v183;
  v166 = v184;
  v167 = v185;
  v168 = v186;
  v163 = v181;
  v164 = v182;
  v178 = v187;
  v179 = v188;
  v174 = v183;
  v175 = v184;
  v176 = v185;
  v177 = v186;
  v171 = v189;
  v180 = v189;
  v172 = v181;
  v173 = v182;
  sub_23843981C(&v163, &v160, &qword_27DF0A230, &qword_238765300);
  sub_238439884(&v172, &qword_27DF0A230, &qword_238765300);

  *(&v162[6] + 7) = v169;
  *(&v162[5] + 7) = v168;
  *(&v162[2] + 7) = v165;
  *(&v162[1] + 7) = v164;
  *(&v162[7] + 7) = v170;
  *(&v162[8] + 7) = v171;
  *(&v162[3] + 7) = v166;
  *(&v162[4] + 7) = v167;
  *(v162 + 7) = v163;
  *(&v161[5] + 1) = v162[5];
  *(&v161[6] + 1) = v162[6];
  *(&v161[7] + 1) = v162[7];
  v161[8] = *(&v162[7] + 15);
  *(&v161[1] + 1) = v162[1];
  *(&v161[2] + 1) = v162[2];
  *(&v161[3] + 1) = v162[3];
  *(&v161[4] + 1) = v162[4];
  v160 = v123;
  LOBYTE(v161[0]) = v159;
  *(v161 + 1) = v162[0];
  *&v181 = 0;
  *(&v181 + 1) = 0xE000000000000000;
  sub_23875F470();

  *&v181 = 0xD00000000000001BLL;
  *(&v181 + 1) = 0x80000002387865F0;
  v159 = v134;
  v124 = sub_23875F600();
  MEMORY[0x23EE63650](v124);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A238, &qword_238765308);
  sub_23843A3E8(&qword_27DF0A240, &qword_27DF0A238, &qword_238765308);
  v125 = v135;
  sub_23875DE00();

  v187 = v161[5];
  v188 = v161[6];
  v189 = v161[7];
  v190 = v161[8];
  v183 = v161[1];
  v184 = v161[2];
  v185 = v161[3];
  v186 = v161[4];
  v181 = v160;
  v182 = v161[0];
  sub_238439884(&v181, &qword_27DF0A238, &qword_238765308);
  (*(v153 + 8))(v139, v154);
  (*(v146 + 8))(v143, v157);
  (*(v140 + 8))(v137, v141);
  v83 = v147;
  sub_238467224(v125, v147);
  (v145)(v83, 0, 1, v156);
  v67 = v155;
LABEL_19:
  v84 = v149;
  sub_23843981C(v67, v149, &qword_27DF0A218, &qword_2387652F0);
  v85 = v150;
  sub_23843981C(v83, v150, &qword_27DF0A218, &qword_2387652F0);
  v86 = v151;
  sub_23843981C(v84, v151, &qword_27DF0A218, &qword_2387652F0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A220, &qword_2387652F8);
  sub_23843981C(v85, v86 + *(v87 + 48), &qword_27DF0A218, &qword_2387652F0);
  sub_238439884(v83, &qword_27DF0A218, &qword_2387652F0);
  sub_238439884(v67, &qword_27DF0A218, &qword_2387652F0);
  sub_238439884(v85, &qword_27DF0A218, &qword_2387652F0);
  sub_238439884(v84, &qword_27DF0A218, &qword_2387652F0);
}