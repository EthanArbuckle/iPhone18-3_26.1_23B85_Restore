unint64_t sub_237AA42EC()
{
  result = qword_27DE9A7D0;
  if (!qword_27DE9A7D0)
  {
    type metadata accessor for ProgressUserInfoKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9A7D0);
  }

  return result;
}

CreateML::MLProgress::Metric_optional __swiftcall MLProgress.Metric.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_237C0916C();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t MLProgress.Metric.rawValue.getter()
{
  result = 1936945004;
  switch(*v0)
  {
    case 1:
      result = 0x4C746E65746E6F63;
      break;
    case 2:
      result = 0x736F4C656C797473;
      break;
    case 3:
      result = 0x7963617275636361;
      break;
    case 4:
      result = 0x69746164696C6176;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0x456D756D6978616DLL;
      break;
    case 9:
      result = 0xD00000000000001ELL;
      break;
    case 0xA:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_237AA4554@<X0>(unint64_t *a1@<X8>)
{
  result = MLProgress.Metric.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_237AA462C(uint64_t a1, uint64_t a2)
{
  v5 = a1 == OUTLINED_FUNCTION_6_30() && a2 == v4;
  if (v5 || (OUTLINED_FUNCTION_8_20() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v7 = a1 == 0x6573616870 && a2 == 0xE500000000000000;
    if (v7 || (OUTLINED_FUNCTION_8_20() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = a1 == OUTLINED_FUNCTION_4_34() && a2 == v8;
      if (v9 || (OUTLINED_FUNCTION_8_20() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7363697274656DLL && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v11 = OUTLINED_FUNCTION_8_20();

        if (v11)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_237AA4728()
{
  result = OUTLINED_FUNCTION_6_30();
  switch(v1)
  {
    case 1:
      result = 0x6573616870;
      break;
    case 2:
      result = OUTLINED_FUNCTION_4_34();
      break;
    case 3:
      result = 0x7363697274656DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237AA47E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237AA462C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237AA481C(uint64_t a1)
{
  v2 = sub_237AA5374();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237AA4858(uint64_t a1)
{
  v2 = sub_237AA5374();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLProgress.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C4E8, &qword_237C10228);
  v5 = OUTLINED_FUNCTION_0(v18);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v18 - v10;
  sub_237A84BFC();
  sub_237C085AC();
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237AA5374();
  sub_237C0946C();
  if (!v2)
  {
    v23 = 0;
    sub_237C0919C();
    v14 = v13;
    v21 = 1;
    sub_237A84B54();
    sub_237C091BC();
    v15 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BF20, &qword_237C0F060);
    v19 = 3;
    sub_237A85304(&qword_27DE9BF28, sub_237A84BA8);
    sub_237C091BC();
    v17 = sub_237A82D88(v20);

    (*(v7 + 8))(v11, v18);

    *a2 = v14;
    *(a2 + 8) = v15;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 1;
    *(a2 + 40) = v17;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MLProgress.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C4F8, &qword_237C10230);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v16 - v10;
  v12 = *v1;
  v17 = *(v1 + 8);
  v13 = v1[5];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237AA5374();
  sub_237C0949C();
  v22 = 0;
  sub_237C091FC();
  if (v2)
  {
    return (*(v7 + 8))(v11, v4);
  }

  v21 = v17;
  v20 = 1;
  sub_237A852B0();
  sub_237C0921C();
  v19 = sub_237AA349C(v13);
  v18 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BF20, &qword_237C0F060);
  sub_237A85304(&qword_27DE9BF78, sub_237A85388);
  sub_237C0921C();
  (*(v7 + 8))(v11, v4);
}

uint64_t sub_237AA4E10()
{
  result = sub_237C086BC();
  qword_27DE9C468 = result;
  return result;
}

uint64_t sub_237AA4E70()
{
  result = sub_237C086BC();
  qword_27DE9C470 = result;
  return result;
}

uint64_t sub_237AA4EC4()
{
  result = sub_237C086BC();
  qword_27DE9C478 = result;
  return result;
}

uint64_t sub_237AA4F20()
{
  result = OUTLINED_FUNCTION_9_24();
  qword_27DE9C480 = result;
  return result;
}

uint64_t sub_237AA4F6C()
{
  result = sub_237C086BC();
  qword_27DE9C488 = result;
  return result;
}

uint64_t sub_237AA4FBC()
{
  result = sub_237C086BC();
  qword_27DE9C490 = result;
  return result;
}

uint64_t sub_237AA501C()
{
  result = sub_237C086BC();
  qword_27DE9C498 = result;
  return result;
}

uint64_t sub_237AA5078()
{
  result = sub_237C086BC();
  qword_27DE9C4A0 = result;
  return result;
}

uint64_t sub_237AA50D0()
{
  OUTLINED_FUNCTION_3_38();
  result = sub_237C086BC();
  qword_27DE9C4A8 = result;
  return result;
}

uint64_t sub_237AA5124()
{
  result = sub_237C086BC();
  qword_27DE9C4B0 = result;
  return result;
}

uint64_t sub_237AA5180()
{
  result = sub_237C086BC();
  qword_27DE9C4B8 = result;
  return result;
}

uint64_t sub_237AA51E4()
{
  result = sub_237C086BC();
  qword_27DE9C4C0 = result;
  return result;
}

uint64_t sub_237AA5234()
{
  result = sub_237C086BC();
  qword_27DE9C4C8 = result;
  return result;
}

uint64_t sub_237AA5288()
{
  OUTLINED_FUNCTION_3_38();
  result = sub_237C086BC();
  qword_27DE9C4D0 = result;
  return result;
}

uint64_t sub_237AA52DC()
{
  result = OUTLINED_FUNCTION_9_24();
  qword_27DE9C4D8 = result;
  return result;
}

id sub_237AA5328(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;

  return v3;
}

unint64_t sub_237AA5374()
{
  result = qword_27DE9C4F0;
  if (!qword_27DE9C4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C4F0);
  }

  return result;
}

unint64_t sub_237AA53CC()
{
  result = qword_27DE9C500;
  if (!qword_27DE9C500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C500);
  }

  return result;
}

unint64_t sub_237AA5424()
{
  result = qword_27DE9C508;
  if (!qword_27DE9C508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9C510, &qword_237C10328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C508);
  }

  return result;
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

uint64_t sub_237AA549C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_237AA54DC(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for MLProgress.Metric(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MLProgress.Metric(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
        JUMPOUT(0x237AA5688);
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLDataTable.JoinType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_237AA5744(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x237AA5810);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_237AA5848()
{
  result = qword_27DE9C518;
  if (!qword_27DE9C518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C518);
  }

  return result;
}

unint64_t sub_237AA58A0()
{
  result = qword_27DE9C520;
  if (!qword_27DE9C520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C520);
  }

  return result;
}

unint64_t sub_237AA58F8()
{
  result = qword_27DE9C528;
  if (!qword_27DE9C528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C528);
  }

  return result;
}

unint64_t sub_237AA594C()
{
  result = qword_27DE9C530;
  if (!qword_27DE9C530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C530);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_37()
{

  return sub_237C0857C();
}

id OUTLINED_FUNCTION_7_25()
{

  return [v0 (v1 + 3576)];
}

uint64_t OUTLINED_FUNCTION_9_24()
{

  return sub_237C086BC();
}

double OUTLINED_FUNCTION_10_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int128 a20)
{

  return sub_237AC9BBC(a1, v20, &a20);
}

_BYTE *_s10__DefaultsVwst(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x237AA5B98);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237AA5BD0(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v77 = a7;
  v70 = a5;
  v71 = a6;
  v73 = a3;
  v10 = sub_237C07AAC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v67 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_237C076AC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v65 = (&v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = _s12CausalConv1DVMa(0);
  v16 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v18 = (&v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = sub_237C0798C();
  v19 = *(v72 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v72);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_237C07A8C();
  v75 = *(v23 - 8);
  v76 = v23;
  v24 = *(v75 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v68 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v66 = &v60 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v60 - v29;
  v78 = a1;
  v79 = a2;

  MEMORY[0x2383DC360](1684107359, 0xE400000000000000);
  v63 = v79;
  v64 = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
  v31 = swift_allocObject();
  v74 = xmmword_237C0B660;
  *(v31 + 16) = xmmword_237C0B660;
  *(v31 + 32) = v73;
  *(v31 + 40) = a4;
  v32 = swift_allocObject();
  *(v32 + 16) = v74;
  v73 = a1;
  v78 = a1;
  v79 = a2;

  MEMORY[0x2383DC360](0x74756F5F6461705FLL, 0xE800000000000000);
  v33 = v79;
  *(v32 + 32) = v78;
  *(v32 + 40) = v33;
  sub_237AA8EEC(v77, v18, _s12CausalConv1DVMa);
  sub_237C0769C();
  v34 = *v18;
  sub_237C07A9C();
  sub_237C076BC();
  v62 = v18;
  sub_237AA8F54(v18, _s12CausalConv1DVMa);
  v35 = *MEMORY[0x277D251B0];
  v36 = *(v19 + 104);
  v67 = (v19 + 104);
  v61 = v36;
  v36(v22, v35, v72);
  sub_237C079BC();
  sub_237BC108C();
  v38 = v37;
  v39 = *(v37 + 16);
  if (v39 >= *(v37 + 24) >> 1)
  {
    sub_237BC108C();
    v38 = v57;
  }

  *(v38 + 16) = v39 + 1;
  v40 = *(v75 + 32);
  v64 = (*(v75 + 80) + 32) & ~*(v75 + 80);
  v65 = v40;
  v63 = *(v75 + 72);
  v75 += 32;
  v40(v38 + v64 + v63 * v39, v30, v76);
  v41 = v73;
  v78 = v73;
  v79 = a2;

  MEMORY[0x2383DC360](0x6431766E6F635FLL, 0xE700000000000000);
  v42 = swift_allocObject();
  *(v42 + 16) = v74;
  v78 = v41;
  v79 = a2;

  MEMORY[0x2383DC360](0x74756F5F6461705FLL, 0xE800000000000000);
  v43 = v79;
  *(v42 + 32) = v78;
  *(v42 + 40) = v43;
  v44 = swift_allocObject();
  *(v44 + 16) = v74;
  v78 = v41;
  v79 = a2;

  MEMORY[0x2383DC360](0x756F5F766E6F635FLL, 0xE900000000000074);
  v45 = v79;
  *(v44 + 32) = v78;
  *(v44 + 40) = v45;
  v46 = v62;
  sub_237AA8EEC(v77, v62, _s12CausalConv1DVMa);
  sub_237B8A228(v46);
  v61(v22, *MEMORY[0x277D25198], v72);
  v47 = v66;
  sub_237C079BC();
  v48 = *(v38 + 16);
  if (v48 >= *(v38 + 24) >> 1)
  {
    sub_237BC108C();
    v38 = v58;
  }

  *(v38 + 16) = v48 + 1;
  v50 = v63;
  v49 = v64;
  v51 = v65;
  v65(v38 + v64 + v48 * v63, v47, v76);
  v52 = v73;
  v78 = v73;
  v79 = a2;

  MEMORY[0x2383DC360](0x746176697463615FLL, 0xEB000000006E6F69);
  v78 = v52;
  v79 = a2;

  MEMORY[0x2383DC360](0x756F5F766E6F635FLL, 0xE900000000000074);
  v53 = v68;
  v54 = *(v77 + *(v69 + 24));
  sub_237C07A5C();

  v55 = *(v38 + 16);
  if (v55 >= *(v38 + 24) >> 1)
  {
    sub_237BC108C();
    v38 = v59;
  }

  *(v38 + 16) = v55 + 1;
  v51(v38 + v49 + v55 * v50, v53, v76);
  return v38;
}

uint64_t sub_237AA62D4(uint64_t a1)
{
  v3 = sub_237C0638C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v115 = v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_237C0775C();
  v106 = *(v7 - 8);
  v107 = v7;
  v8 = *(v106 + 64);
  MEMORY[0x28223BE20](v7);
  v105 = v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = _s11LeakyConv2DVMa(0);
  v10 = *(*(v110 - 8) + 64);
  MEMORY[0x28223BE20](v110);
  v12 = v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_237C0798C();
  v14 = *(v13 - 8);
  v117 = v13;
  v118 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v116 = v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_237C07A8C();
  v122 = *(v119 - 8);
  v17 = *(v122 + 64);
  v18 = MEMORY[0x28223BE20](v119);
  v109 = v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v108 = v99 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v114 = v99 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v113 = v99 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v104 = v99 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v111 = v99 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = v99 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = v99 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = v99 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = v99 - v39;
  v41 = sub_237A9AB60(a1);
  if (v42)
  {
    sub_2379E8AF0();
    swift_allocError();
    *v43 = 0xD00000000000002CLL;
    *(v43 + 8) = 0x8000000237C1A460;
    *(v43 + 16) = 0u;
    *(v43 + 32) = 0u;
    *(v43 + 48) = 2;
    swift_willThrow();
    return v3;
  }

  v101 = v41;
  v99[0] = v4;
  v103 = v3;
  v99[1] = v1;
  sub_237C0777C();
  sub_237BC108C();
  v45 = v44;
  v47 = *(v44 + 2);
  v46 = *(v44 + 3);
  v100 = v32;
  if (v47 >= v46 >> 1)
  {
    sub_237BC108C();
    v45 = v87;
  }

  *(v45 + 2) = v47 + 1;
  v48 = *(v122 + 32);
  v120 = (*(v122 + 80) + 32) & ~*(v122 + 80);
  v121 = v48;
  v49 = *(v122 + 72);
  v122 += 32;
  v48(&v45[v120 + v49 * v47], v40, v119);
  sub_237C07A7C();
  v50 = *(v45 + 2);
  if (v50 >= *(v45 + 3) >> 1)
  {
    sub_237BC108C();
    v45 = v88;
  }

  v51 = v100;
  *(v45 + 2) = v50 + 1;
  v121(&v45[v120 + v50 * v49], v38, v119);
  v52 = v112;
  sub_237AA8EEC(v112, v12, _s11LeakyConv2DVMa);
  v53 = v116;
  sub_237B8A804(v12, v116);
  v54 = *MEMORY[0x277D25198];
  v55 = *(v118 + 104);
  v118 += 104;
  v102 = v55;
  v55(v53, v54, v117);
  sub_237C079BC();
  v56 = *(v45 + 2);
  if (v56 >= *(v45 + 3) >> 1)
  {
    sub_237BC108C();
    v45 = v89;
  }

  *(v45 + 2) = v56 + 1;
  v121(&v45[v120 + v56 * v49], v35, v119);
  v57 = *(v52 + *(v110 + 20));
  sub_237C07A5C();
  v58 = *(v45 + 2);
  if (v58 >= *(v45 + 3) >> 1)
  {
    sub_237BC108C();
    v45 = v90;
  }

  *(v45 + 2) = v58 + 1;
  v59 = v51;
  v60 = v119;
  v121(&v45[v120 + v58 * v49], v59, v119);
  v61 = v111;
  sub_237C07A7C();
  v62 = *(v45 + 2);
  if (v62 >= *(v45 + 3) >> 1)
  {
    sub_237BC108C();
    v45 = v91;
  }

  *(v45 + 2) = v62 + 1;
  v121(&v45[v120 + v62 * v49], v61, v60);
  v123 = v45;
  v63 = _s20ConvolutionalNetworkVMa(0);
  v64 = sub_237AA5BD0(0x3163uLL, 0xE200000000000000, 0x6E69646465626D65uLL, 0xE900000000000067, 12643, 0xE200000000000000, v52 + v63[5]);
  sub_237A96B2C(v64);
  v65 = sub_237AA5BD0(0x3263uLL, 0xE200000000000000, 0x3163uLL, 0xE200000000000000, 12899, 0xE200000000000000, v52 + v63[6]);
  sub_237A96B2C(v65);
  v66 = sub_237AA5BD0(0x3363uLL, 0xE200000000000000, 0x3263uLL, 0xE200000000000000, 13155, 0xE200000000000000, v52 + v63[7]);
  sub_237A96B2C(v66);
  v67 = sub_237AA5BD0(0x3463uLL, 0xE200000000000000, 0x3363uLL, 0xE200000000000000, 13411, 0xE200000000000000, v52 + v63[8]);
  sub_237A96B2C(v67);
  v3 = v101 - 1;
  if (__OFSUB__(v101, 1))
  {
    __break(1u);
    goto LABEL_28;
  }

  v69 = v105;
  v68 = v106;
  v70 = v107;
  (*(v106 + 104))(v105, *MEMORY[0x277D25180], v107);
  v45 = v104;
  sub_237C079FC();
  (*(v68 + 8))(v69, v70);
  v3 = v123;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_28:
    v92 = *(v3 + 16);
    sub_237BC108C();
    v3 = v93;
  }

  v71 = *(v3 + 16);
  if (v71 >= *(v3 + 24) >> 1)
  {
    sub_237BC108C();
    v3 = v94;
  }

  *(v3 + 16) = v71 + 1;
  v121((v3 + v120 + v71 * v49), v45, v60);
  v72 = v52 + *(_s18TemporalClassifierVMa(0) + 20);
  v73 = *(v99[0] + 16);
  v74 = v115;
  v73(v115, v72, v103);
  v75 = v116;
  sub_237A28768(v74, v116);
  v76 = *MEMORY[0x277D251A0];
  v102(v75, v76, v117);
  sub_237C079BC();
  v77 = *(v3 + 16);
  if (v77 >= *(v3 + 24) >> 1)
  {
    sub_237BC108C();
    v3 = v95;
  }

  *(v3 + 16) = v77 + 1;
  v121((v3 + v120 + v77 * v49), v113, v60);
  sub_237C079EC();
  v78 = *(v3 + 16);
  if (v78 >= *(v3 + 24) >> 1)
  {
    sub_237BC108C();
    v3 = v96;
  }

  *(v3 + 16) = v78 + 1;
  v121((v3 + v120 + v78 * v49), v114, v60);
  v79 = v72 + *(_s3MLPVMa(0) + 20);
  v80 = v115;
  v73(v115, v79, v103);
  v81 = v116;
  sub_237A28768(v80, v116);
  v102(v81, v76, v117);
  v82 = v108;
  sub_237C079BC();
  v83 = *(v3 + 16);
  if (v83 >= *(v3 + 24) >> 1)
  {
    sub_237BC108C();
    v3 = v97;
  }

  v84 = v109;
  *(v3 + 16) = v83 + 1;
  v121((v3 + v120 + v83 * v49), v82, v60);
  sub_237C07A2C();
  v85 = *(v3 + 16);
  if (v85 >= *(v3 + 24) >> 1)
  {
    sub_237BC108C();
    v3 = v98;
  }

  *(v3 + 16) = v85 + 1;
  v121((v3 + v120 + v85 * v49), v84, v60);
  return v3;
}

uint64_t sub_237AA6FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v106 = a4;
  v108 = a3;
  v100 = a2;
  v105 = a5;
  v6 = sub_237C0818C();
  v102 = *(v6 - 8);
  v103 = v6;
  v7 = *(v102 + 64);
  MEMORY[0x28223BE20](v6);
  v101 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_237C07BEC();
  v98 = *(v9 - 8);
  v99 = v9;
  v10 = *(v98 + 64);
  MEMORY[0x28223BE20](v9);
  v97 = (&v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_237C0761C();
  v92 = *(v12 - 8);
  v93 = v12;
  v13 = *(v92 + 64);
  MEMORY[0x28223BE20](v12);
  v91 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_237C07C5C();
  v95 = *(v15 - 8);
  v96 = v15;
  v16 = *(v95 + 64);
  MEMORY[0x28223BE20](v15);
  v94 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_237C0757C();
  v88 = *(v90 - 8);
  v18 = *(v88 + 64);
  MEMORY[0x28223BE20](v90);
  v86 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_237C075DC();
  v87 = *(v89 - 8);
  v20 = *(v87 + 64);
  MEMORY[0x28223BE20](v89);
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C538, &qword_237C10558);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v85 = &v75 - v25;
  v26 = sub_237C07A8C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v84 = &v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_237C07B1C();
  v104 = *(v30 - 8);
  v31 = *(v104 + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v75 - v35;
  v37 = a1;
  v38 = sub_237AA7BC0(a1, v106);
  v39 = v107;
  sub_237AA62D4(v108);
  if (v39)
  {
  }

  v106 = v26;
  v78 = v22;
  v79 = v37;
  v80 = 0;
  sub_237C07AEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C540, &qword_237C10560);
  v41 = v38;
  v42 = *(v27 + 72);
  v77 = v27;
  v43 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v44 = swift_allocObject();
  v107 = xmmword_237C0B670;
  *(v44 + 16) = xmmword_237C0B670;
  v75 = v43;
  sub_237C07A4C();
  v76 = v42;
  sub_237C0764C();
  sub_237C07AEC();
  v45 = v85;
  (*(v104 + 16))(v85, v34, v30);
  __swift_storeEnumTagSinglePayload(v45, 0, 1, v30);
  v46 = v84;
  sub_237C07A0C();
  sub_237AA8E84(v45);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v83 = v30;
  v82 = v34;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v72 = *(v41 + 16);
    sub_237BC108C();
    v41 = v73;
  }

  v48 = v88;
  v49 = v86;
  v51 = *(v41 + 16);
  v50 = *(v41 + 24);
  v52 = v106;
  v53 = v77;
  v81 = v36;
  if (v51 >= v50 >> 1)
  {
    sub_237BC108C();
    v41 = v74;
  }

  v88 = v41;
  *(v41 + 16) = v51 + 1;
  v53[4](v41 + v75 + v51 * v76, v46, v52);
  sub_237C07F0C();
  sub_237C07E0C();
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD48, &qword_237C0BBD0);
  v54 = sub_237C07B9C();
  v55 = *(v54 - 8);
  v106 = *(v55 + 72);
  v56 = (*(v55 + 80) + 32) & ~*(v55 + 80);
  v84 = (v56 + 2 * v106);
  v85 = v56;
  v57 = swift_allocObject();
  *(v57 + 16) = v107;
  (*(v55 + 16))(v57 + v56, v79, v54);
  LODWORD(v79) = *MEMORY[0x277D25100];
  v77 = *(v48 + 104);
  v58 = v48;
  v59 = v90;
  (v77)(v49);
  v60 = v49;
  v61 = v78;
  sub_237C0750C();
  v108 = *(v58 + 8);
  v108(v60, v59);
  sub_237C07B3C();
  sub_237C07E9C();
  *(swift_allocObject() + 16) = v107;
  (v77)(v60, v79, v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_237C0B680;
  *(v62 + 32) = vdupq_n_s64(1uLL);
  v63 = v100;
  *(v62 + 48) = *(v100 + 16);
  sub_237C0750C();

  v108(v60, v59);
  sub_237C07B3C();
  sub_237C0756C();
  (*(v87 + 104))(v61, *MEMORY[0x277D25130], v89);
  sub_237C07B3C();
  sub_237C07ECC();
  sub_237C07DEC();
  sub_237C07E2C();
  v64 = v94;
  sub_237C07C3C();
  (*(v92 + 104))(v91, *MEMORY[0x277D25168], v93);
  sub_237C07C1C();
  sub_237C07C2C();
  v66 = v97;
  v65 = v98;
  *v97 = v63;
  (*(v65 + 104))(v66, *MEMORY[0x277D251E8], v99);

  sub_237C07BFC();
  v68 = v95;
  v67 = v96;
  v69 = v101;
  (*(v95 + 16))(v101, v64, v96);
  (*(v102 + 104))(v69, *MEMORY[0x277D25398], v103);
  sub_237C07E4C();
  (*(v68 + 8))(v64, v67);
  v70 = *(v104 + 8);
  v71 = v83;
  v70(v82, v83);
  return (v70)(v81, v71);
}

uint64_t sub_237AA7BC0(uint64_t a1, uint64_t a2)
{
  v42[1] = a2;
  v2 = sub_237C07A8C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v44 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v46 = v42 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v43 = v42 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v42 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v42 - v14;
  sub_237C07B4C();
  sub_237C0777C();

  sub_237BC108C();
  v17 = v16;
  v18 = *(v16 + 16);
  if (v18 >= *(v16 + 24) >> 1)
  {
    sub_237BC108C();
    v17 = v37;
  }

  *(v17 + 16) = v18 + 1;
  v20 = *(v3 + 32);
  v19 = v3 + 32;
  v21 = (*(v19 + 48) + 32) & ~*(v19 + 48);
  v45 = *(v19 + 40);
  v22 = v15;
  v23 = v20;
  v20(v17 + v21 + v45 * v18, v22, v2);
  sub_237C07A4C();
  v24 = *(v17 + 16);
  if (v24 >= *(v17 + 24) >> 1)
  {
    sub_237BC108C();
    v17 = v38;
  }

  *(v17 + 16) = v24 + 1;
  v25 = v2;
  v26 = v2;
  v27 = v23;
  v23(v17 + v21 + v24 * v45, v13, v26);
  v28 = v43;
  sub_237C07A4C();
  v29 = *(v17 + 16);
  if (v29 >= *(v17 + 24) >> 1)
  {
    sub_237BC108C();
    v17 = v39;
  }

  *(v17 + 16) = v29 + 1;
  v30 = v21;
  v31 = v17 + v21;
  v32 = v45;
  v23(v31 + v29 * v45, v28, v25);
  sub_237C0776C();
  v33 = *(v17 + 16);
  if (v33 >= *(v17 + 24) >> 1)
  {
    sub_237BC108C();
    v17 = v40;
  }

  *(v17 + 16) = v33 + 1;
  v23(v17 + v30 + v33 * v32, v46, v25);
  v34 = v44;
  sub_237C0789C();
  v35 = *(v17 + 16);
  if (v35 >= *(v17 + 24) >> 1)
  {
    sub_237BC108C();
    v17 = v41;
  }

  *(v17 + 16) = v35 + 1;
  v27(v17 + v30 + v35 * v32, v34, v25);
  return v17;
}

uint64_t sub_237AA8074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v95 = a1;
  v96 = a4;
  v103 = a3;
  v85 = a5;
  v102 = sub_237C0818C();
  v6 = OUTLINED_FUNCTION_0(v102);
  v107 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v101 = v11 - v10;
  v12 = sub_237C07F1C();
  v13 = OUTLINED_FUNCTION_0(v12);
  v98 = v14;
  v99 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_14_0();
  v100 = v17;
  MEMORY[0x28223BE20](v18);
  v108 = &v79 - v19;
  v20 = sub_237C0757C();
  v21 = OUTLINED_FUNCTION_0(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_0();
  v28 = v27 - v26;
  v29 = sub_237C075DC();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  OUTLINED_FUNCTION_2_0();
  v33 = v32 - v31;
  v106 = sub_237C07B9C();
  v34 = *(v106 - 8);
  v93 = v106 - 8;
  *&v94 = v34;
  v104 = v34;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v106 - 8);
  OUTLINED_FUNCTION_14_0();
  v105 = v36;
  MEMORY[0x28223BE20](v37);
  v109 = &v79 - v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_237C0B680;
  *(v39 + 32) = vdupq_n_s64(1uLL);
  *(v39 + 48) = a2;
  v41 = *(v23 + 104);
  v90 = *MEMORY[0x277D25100];
  v40 = v90;
  v41(v28, v90, v20);
  v91 = v41;
  v92 = v23 + 104;
  v42 = v33;
  sub_237C0750C();

  v43 = *(v23 + 8);
  v43(v28, v20);
  v88 = v43;
  v89 = v23 + 8;
  sub_237C07B3C();
  v87 = v20;
  v41(v28, v40, v20);
  v86 = v42;
  sub_237C0750C();
  v43(v28, v20);
  sub_237C07B3C();
  sub_237C07F0C();
  sub_237C07E0C();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD48, &qword_237C0BBD0);
  v45 = *(v94 + 72);
  v46 = v104;
  v47 = *(v104 + 80);
  v48 = (v47 + 32) & ~v47;
  v49 = swift_allocObject();
  v81 = xmmword_237C0B660;
  *(v49 + 16) = xmmword_237C0B660;
  v50 = *(v46 + 16);
  v80 = v50;
  v51 = v106;
  v50(v49 + v48, v109, v106);
  sub_237C07E9C();
  v83 = v47;
  v93 = v44;
  v52 = swift_allocObject();
  v94 = xmmword_237C0B670;
  *(v52 + 16) = xmmword_237C0B670;
  v84 = v48;
  v53 = v105;
  v82 = v46 + 16;
  v50(v52 + v48, v105, v51);
  v54 = v87;
  v91(v28, v90, v87);
  v55 = v108;
  sub_237C0750C();
  v88(v28, v54);
  sub_237C07B3C();
  sub_237C07ECC();
  sub_237C07C6C();
  sub_237C085AC();
  v56 = v101;
  sub_237C07C7C();
  v57 = *MEMORY[0x277D253A8];
  v58 = *(v107 + 104);
  v107 += 104;
  (v58)(v56, v57, v102);
  v59 = v55;
  sub_237C07E4C();
  v60 = v97;
  sub_237AA6FF0(v53, v95, v103, v96, v100);
  if (v60)
  {
    (*(v98 + 8))(v55, v99);
    v61 = *(v104 + 8);
    v62 = v106;
    v61(v53, v106);
    return (v61)(v109, v62);
  }

  else
  {
    v103 = v58;
    sub_237C07F0C();
    sub_237C07E0C();
    v64 = v84;
    v65 = swift_allocObject();
    *(v65 + 16) = v81;
    v80(v65 + v64, v109, v106);
    sub_237C07E9C();
    sub_237C07EBC();
    sub_237C07ECC();
    sub_237C07DEC();
    sub_237C07E2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BB70, &qword_237C0E778);
    v66 = v98;
    v67 = *(v98 + 72);
    v68 = (*(v98 + 80) + 32) & ~*(v98 + 80);
    v69 = swift_allocObject();
    *(v69 + 16) = v94;
    v70 = v69 + v68;
    v71 = *(v66 + 16);
    v72 = v59;
    v73 = v99;
    v71(v70, v72, v99);
    v74 = v100;
    v71(v70 + v67, v100, v73);
    v75 = v101;
    sub_237C07BAC();
    (v103)(v75, *MEMORY[0x277D253D0], v102);
    sub_237C07E4C();
    v76 = *(v66 + 8);
    v76(v74, v73);
    v76(v108, v73);
    v77 = *(v104 + 8);
    v78 = v106;
    v77(v105, v106);
    return (v77)(v109, v78);
  }
}

void MLFewShotSoundClassifier.write(to:)()
{
  v1 = _s18TemporalClassifierVMa(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_2_0();
  v5 = v4 - v3;
  v6 = sub_237C07F1C();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  v15 = sub_237C05ADC();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_0();
  v23 = v22 - v21;
  sub_2379F25FC();
  if (!v0)
  {
    v49 = v14;
    v50 = v9;
    v54 = v5;
    v55 = v23;
    v51 = v6;
    v24 = type metadata accessor for MLFewShotSoundClassifier();
    v25 = *(v58 + v24[12]);
    v26 = [v25 trainingDataEmbeddings];
    sub_2379E8EE0(0, &qword_27DE9ACF8, 0x277CBFF48);
    v27 = sub_237C0893C();

    if (!sub_237A254D8(v27))
    {

      sub_2379E8AF0();
      swift_allocError();
      *v35 = 0xD000000000000037;
      *(v35 + 8) = 0x8000000237C1A3B0;
      *(v35 + 16) = 0u;
      *(v35 + 32) = 0u;
      *(v35 + 48) = 2;
      swift_willThrow();
      (*(v18 + 8))(v55, v15);
      return;
    }

    v53 = v18;
    sub_237A254DC(0, (v27 & 0xC000000000000001) == 0, v27);
    v52 = v15;
    if ((v27 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x2383DCAF0](0, v27);
    }

    else
    {
      v28 = *(v27 + 32);
    }

    v29 = v28;

    v30 = [v29 shape];

    sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
    v31 = sub_237C0893C();

    v32 = [v25 exemplar];
    v34 = v18;
    v33 = sub_237C0868C();
    v37 = sub_2379E0124(v33, v36);
    sub_237AA8EEC(v58 + v24[10], v54, _s18TemporalClassifierVMa);
    v38 = *(v58 + v24[8]);
    [v25 inferenceWindowSize];
    v59 = v56;
    v39 = sub_237A254D8(v31);
    if (!v39)
    {

      v42 = MEMORY[0x277D84F90];
LABEL_18:
      sub_237AA8074(v38, v59, v42, v37, v49);
      OUTLINED_FUNCTION_2_41();

      sub_237C07E5C();
      (*(v50 + 8))(v49, v51);
      (*(v34 + 8))(v55, v52);
      return;
    }

    v40 = v39;
    v47 = v38;
    v48 = v37;
    v57 = MEMORY[0x277D84F90];
    sub_237AC8A34();
    if ((v40 & 0x8000000000000000) == 0)
    {
      v41 = 0;
      v42 = v57;
      do
      {
        if ((v31 & 0xC000000000000001) != 0)
        {
          v43 = MEMORY[0x2383DCAF0](v41, v31);
        }

        else
        {
          v43 = *(v31 + 8 * v41 + 32);
        }

        v44 = v43;
        v45 = [v43 integerValue];

        v46 = *(v57 + 16);
        if (v46 >= *(v57 + 24) >> 1)
        {
          sub_237AC8A34();
        }

        ++v41;
        *(v57 + 16) = v46 + 1;
        *(v57 + 8 * v46 + 32) = v45;
      }

      while (v40 != v41);

      v34 = v53;
      v38 = v47;
      v37 = v48;
      goto LABEL_18;
    }

    __break(1u);
  }
}

uint64_t sub_237AA8E84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C538, &qword_237C10558);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237AA8EEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_237AA8F54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t OUTLINED_FUNCTION_2_41()
{

  return sub_237AA8F54(v0, _s18TemporalClassifierVMa);
}

unint64_t sub_237AA8FDC(uint64_t a1)
{
  result = sub_237A21670();
  *(a1 + 8) = result;
  return result;
}

uint64_t MLImageClassifier.evaluation(on:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  v27 = *(v4 - 8);
  v28 = v4;
  v5 = *(v27 + 64);
  MEMORY[0x28223BE20](v4);
  v26 = &v26 - v6;
  v7 = type metadata accessor for MLImageClassifier();
  v8 = OUTLINED_FUNCTION_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = type metadata accessor for MLImageClassifier.DataSource();
  v14 = OUTLINED_FUNCTION_1(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  sub_237AA9AA4(a1, &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MLImageClassifier.DataSource);
  sub_237AA9AA4(v2, &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MLImageClassifier);
  v19 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v20 = (v18 + *(v10 + 80) + v19) & ~*(v10 + 80);
  v21 = swift_allocObject();
  sub_237AA9F54(&v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v19, type metadata accessor for MLImageClassifier.DataSource);
  sub_237AA9F54(&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for MLImageClassifier);
  sub_2379DDABC();
  v23 = v22;

  v30 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABE0, &qword_237C0B948);
  sub_237AAA1DC();
  v24 = v26;
  sub_237C06FCC();
  (*(v27 + 32))(v29, v24, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for MLClassifierMetrics.Contents(0);
  return swift_storeEnumTagMultiPayload();
}

{
  v4 = type metadata accessor for MLImageClassifier.DataSource();
  v5 = OUTLINED_FUNCTION_12_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = a1;
  swift_storeEnumTagMultiPayload();

  MLImageClassifier.evaluation(on:)(v9, a2);
  return sub_2379FD128(v9);
}

uint64_t sub_237AA9340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v4 = *(type metadata accessor for MLImageClassifier() - 8);
  v3[4] = v4;
  v3[5] = *(v4 + 64);
  v3[6] = swift_task_alloc();
  v5 = swift_task_alloc();
  v3[7] = v5;
  *v5 = v3;
  v5[1] = sub_237AA9434;

  return sub_237B8B31C();
}

uint64_t sub_237AA9434(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v5 = *v2;
  v3[8] = a1;
  v3[9] = v1;

  if (v1)
  {
    v6 = v3[6];

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_237AA9584, 0, 0);
  }
}

void sub_237AA9584()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[4];
  sub_237AA9AA4(v0[3], v2, type metadata accessor for MLImageClassifier);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v65 = swift_allocObject();
  sub_237AA9F54(v2, v65 + v4, type metadata accessor for MLImageClassifier);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C550, &qword_237C105D8);
  v5 = sub_237C0910C();
  v6 = 0;
  v7 = v1 + 64;
  v64 = v1;
  v8 = 1 << *(v1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v1 + 64);
  v11 = (v8 + 63) >> 6;
  v67 = v5 + 64;
  v61 = v0;
  v12 = v0[9];
  v13 = v5;
  if (v10)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v10));
      v68 = (v10 - 1) & v10;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = (*(v64 + 48) + 16 * v17);
      v19 = *v18;
      v20 = v18[1];
      v21 = *(*(v64 + 56) + 8 * v17);

      v23 = sub_237AAA640(v22);
      if (v12)
      {
        break;
      }

      v24 = v23;

      *(v67 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v25 = (*(v13 + 48) + 16 * v17);
      *v25 = v19;
      v25[1] = v20;
      *(*(v13 + 56) + 8 * v17) = v24;
      v26 = *(v13 + 16);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_48;
      }

      v12 = 0;
      *(v13 + 16) = v28;
      v10 = v68;
      if (!v68)
      {
        goto LABEL_5;
      }
    }

    v58 = v61[8];

    v59 = v61[6];

    v57 = v61[1];
LABEL_41:

    v57();
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v68 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    v29 = v61[8];

    v30 = -1;
    v31 = -1 << *(v13 + 32);
    if (-v31 < 64)
    {
      v30 = ~(-1 << -v31);
    }

    v32 = v30 & *(v13 + 64);
    v60 = (63 - v31) >> 6;

    v33 = 0;
    v34 = MEMORY[0x277D84F90];
    v66 = v13;
    v35 = v67;
    while (v32)
    {
LABEL_22:
      v37 = __clz(__rbit64(v32)) | (v33 << 6);
      v38 = *(*(v13 + 56) + 8 * v37);
      v39 = *(v38 + 16);
      if (v39)
      {
        v62 = v32;
        v63 = v34;
        v40 = (*(v13 + 48) + 16 * v37);
        v41 = v40[1];
        v69 = *v40;
        v70 = MEMORY[0x277D84F90];

        sub_237AC8E74();
        v42 = v70;
        v43 = *(v70 + 16);
        v44 = 32 * v43 + 56;
        v45 = (v38 + 40);
        do
        {
          v46 = *(v45 - 1);
          v47 = *v45;
          v48 = *(v70 + 24);

          if (v43 >= v48 >> 1)
          {
            sub_237AC8E74();
          }

          *(v70 + 16) = v43 + 1;
          v49 = (v70 + v44);
          *(v49 - 3) = v46;
          *(v49 - 2) = v47;
          v44 += 32;
          v45 += 2;
          ++v43;
          *(v49 - 1) = v69;
          *v49 = v41;
          --v39;
        }

        while (v39);

        v35 = v67;
        v34 = v63;
        v32 = v62;
      }

      else
      {
        v42 = MEMORY[0x277D84F90];
      }

      v50 = *(v42 + 16);
      v51 = *(v34 + 16);
      if (__OFADD__(v51, v50))
      {
        goto LABEL_47;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v51 + v50 > *(v34 + 24) >> 1)
      {
        sub_237BC1BB0();
        v34 = v52;
      }

      v13 = v66;
      v32 &= v32 - 1;
      if (*(v42 + 16))
      {
        if ((*(v34 + 24) >> 1) - *(v34 + 16) < v50)
        {
          goto LABEL_49;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B308, &qword_237C0CBB8);
        v13 = v66;
        swift_arrayInitWithCopy();

        if (v50)
        {
          v53 = *(v34 + 16);
          v27 = __OFADD__(v53, v50);
          v54 = v53 + v50;
          if (v27)
          {
            goto LABEL_50;
          }

          *(v34 + 16) = v54;
        }
      }

      else
      {

        if (v50)
        {
          __break(1u);
LABEL_40:
          v55 = v61[6];
          v56 = v61[2];

          *v56 = v34;

          v57 = v61[1];
          goto LABEL_41;
        }
      }
    }

    while (1)
    {
      v36 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v36 >= v60)
      {
        goto LABEL_40;
      }

      v32 = *(v35 + 8 * v36);
      ++v33;
      if (v32)
      {
        v33 = v36;
        goto LABEL_22;
      }
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
  }
}

uint64_t sub_237AA9AA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_237AA9B04()
{
  v1 = type metadata accessor for MLImageClassifier.DataSource();
  OUTLINED_FUNCTION_88_0(v1);
  v52 = *(v2 + 80);
  v3 = (v52 + 16) & ~v52;
  v5 = *(v4 + 64);
  v6 = type metadata accessor for MLImageClassifier();
  OUTLINED_FUNCTION_88_0(v6);
  v8 = *(v7 + 80);
  v9 = (v3 + v5 + v8) & ~v8;
  v11 = *(v10 + 64);
  v53 = v0;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v15 = *(v0 + v3);
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    v13 = sub_237C05ADC();
    OUTLINED_FUNCTION_12_0(v13);
    (*(v14 + 8))(v0 + v3);
  }

  v16 = (v0 + v9);

  if (*(v0 + v9 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1(v16 + 3);
  }

  if (v16[10])
  {
    __swift_destroy_boxed_opaque_existential_1(v16 + 7);
  }

  v17 = (v16 + *(v6 + 24));
  type metadata accessor for MLClassifierMetrics.Contents(0);
  v18 = swift_getEnumCaseMultiPayload();
  switch(v18)
  {
    case 2:

      break;
    case 1:
      v50 = v9;
      v21 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v22 = *(v21 + 20);
      v49 = v8;
      v23 = sub_237C05DBC();
      v24 = v11;
      v25 = *(*(v23 - 8) + 8);
      v25(v17 + v22, v23);
      v26 = v17 + *(v21 + 24);
      v27 = v23;
      v8 = v49;
      v9 = v50;
      v25(v26, v27);
      v11 = v24;
      break;
    case 0:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
      if (OUTLINED_FUNCTION_5_30() == 1)
      {
        v19 = &qword_27DE9AA00;
        v20 = &qword_237C0B6F0;
      }

      else
      {
        v19 = &qword_27DE9A9C8;
        v20 = &qword_237C0B6A0;
      }

      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
      OUTLINED_FUNCTION_12_0(v28);
      (*(v29 + 8))(v17);
      break;
  }

  v30 = OUTLINED_FUNCTION_4_35();
  switch(v30)
  {
    case 2:

      break;
    case 1:
      v33 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v34 = v8;
      v35 = *(v33 + 20);
      v51 = v9;
      v36 = sub_237C05DBC();
      v37 = v11;
      v38 = *(*(v36 - 8) + 8);
      v39 = v17 + v35;
      v8 = v34;
      v38(v39, v36);
      v40 = v36;
      v9 = v51;
      v38(v17 + *(v33 + 24), v40);
      v11 = v37;
      break;
    case 0:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
      if (OUTLINED_FUNCTION_5_30() == 1)
      {
        v31 = &qword_27DE9AA00;
        v32 = &qword_237C0B6F0;
      }

      else
      {
        v31 = &qword_27DE9A9C8;
        v32 = &qword_237C0B6A0;
      }

      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(v31, v32);
      OUTLINED_FUNCTION_12_0(v41);
      (*(v42 + 8))(v17);
      break;
  }

  v43 = *(v6 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v44 = &qword_27DE9A780;
    v45 = &unk_237C0A700;
  }

  else
  {
    v44 = &qword_27DE9A788;
    v45 = &unk_237C13D50;
  }

  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(v44, v45);
  OUTLINED_FUNCTION_12_0(v46);
  (*(v47 + 8))(v16 + v43);

  return MEMORY[0x2821FE8E8](v53, v9 + v11, v52 | v8 | 7);
}

uint64_t sub_237AA9F54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_237AA9FB4(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for MLImageClassifier.DataSource();
  OUTLINED_FUNCTION_1(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = *(type metadata accessor for MLImageClassifier() - 8);
  v11 = (v7 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_237AAA0E8;

  return sub_237AA9340(a1, v1 + v7, v1 + v11);
}

uint64_t sub_237AAA0E8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_237AAA1DC()
{
  result = qword_27DE9C548;
  if (!qword_27DE9C548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9ABE0, &qword_237C0B948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C548);
  }

  return result;
}

uint64_t sub_237AAA2DC()
{
  v1 = type metadata accessor for MLImageClassifier();
  OUTLINED_FUNCTION_88_0(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v37 = (v3 + 16) & ~v3;
  v38 = v0;
  v6 = (v0 + v37);

  if (*(v0 + v37 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1(v6 + 3);
  }

  if (v6[10])
  {
    __swift_destroy_boxed_opaque_existential_1(v6 + 7);
  }

  v7 = (v6 + *(v1 + 24));
  type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      break;
    case 1:
      v11 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v36 = v3;
      v12 = v5;
      v13 = *(v11 + 20);
      v14 = sub_237C05DBC();
      OUTLINED_FUNCTION_4(v14);
      v16 = *(v15 + 8);
      v17 = v7 + v13;
      v5 = v12;
      v3 = v36;
      v16(v17, v14);
      v16(v7 + *(v11 + 24), v14);
      break;
    case 0:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
      if (OUTLINED_FUNCTION_5_30() == 1)
      {
        v9 = &qword_27DE9AA00;
        v10 = &qword_237C0B6F0;
      }

      else
      {
        v9 = &qword_27DE9A9C8;
        v10 = &qword_237C0B6A0;
      }

      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
      OUTLINED_FUNCTION_12_0(v18);
      (*(v19 + 8))(v7);
      break;
  }

  v20 = OUTLINED_FUNCTION_4_35();
  switch(v20)
  {
    case 2:

      break;
    case 1:
      v23 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v24 = *(v23 + 20);
      v25 = sub_237C05DBC();
      OUTLINED_FUNCTION_4(v25);
      v27 = *(v26 + 8);
      v27(v7 + v24, v25);
      v27(v7 + *(v23 + 24), v25);
      break;
    case 0:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
      if (OUTLINED_FUNCTION_5_30() == 1)
      {
        v21 = &qword_27DE9AA00;
        v22 = &qword_237C0B6F0;
      }

      else
      {
        v21 = &qword_27DE9A9C8;
        v22 = &qword_237C0B6A0;
      }

      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
      OUTLINED_FUNCTION_12_0(v28);
      (*(v29 + 8))(v7);
      break;
  }

  v30 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = &qword_27DE9A780;
    v32 = &unk_237C0A700;
  }

  else
  {
    v31 = &qword_27DE9A788;
    v32 = &unk_237C13D50;
  }

  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(v31, v32);
  OUTLINED_FUNCTION_12_0(v33);
  (*(v34 + 8))(v6 + v30);

  return MEMORY[0x2821FE8E8](v38, v37 + v5, v3 | 7);
}

id sub_237AAA640(uint64_t a1)
{
  v3 = *(type metadata accessor for MLImageClassifier() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return sub_237ADA570(a1);
}

uint64_t OUTLINED_FUNCTION_4_35()
{
  v3 = v1 + *(v0 + 28);

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_5_30()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_237AAA700(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_237C0707C();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_237AAA79C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_237C0707C();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t _s5ModelVMa_2()
{
  result = qword_27DE9C558;
  if (!qword_27DE9C558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237AAA868()
{
  sub_237A93888();
  if (v0 <= 0x3F)
  {
    sub_237C0707C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_237AAA8FC(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB88, &qword_237C0B8F0);
  v6 = OUTLINED_FUNCTION_0(v5);
  v32 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B220, &qword_237C0CAF8);
  v13 = OUTLINED_FUNCTION_0(v12);
  v30 = v14;
  v31 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v18 = &v29 - v17;
  if (v1[2])
  {
    v19 = v1[3];
    v20 = v1[4];
    sub_237A0D2FC();
    if (!v2)
    {
      v21 = v1 + *(_s5ModelVMa_2() + 24);
      v22 = sub_237C0706C();
      v23 = *v3;
      v24 = v3[1];
      v33 = v22;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B828, &qword_237C0DFE8);
      v29 = a1;
      sub_2379D9224(qword_27DE9C570, &qword_27DE9B828, &qword_237C0DFE8);
      sub_237C05EEC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABA0, &unk_237C0E0F0);
      v25 = *(sub_237C0602C() - 8);
      v26 = *(v25 + 72);
      v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_237C0B660;
      sub_237C05EBC();
      v33 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABA8, &unk_237C0B910);
      sub_2379D9224(&qword_27DE9ABB0, &qword_27DE9ABA8, &unk_237C0B910);
      sub_237C05D7C();
      (*(v32 + 8))(v11, v5);
      (*(v30 + 8))(v18, v31);
    }
  }

  else
  {
    sub_237C090DC();
    __break(1u);
  }
}

uint64_t sub_237AAAC8C(uint64_t a1)
{
  sub_237AAA8FC(a1);
  v2 = *(v1 + 8);

  return v2();
}

unint64_t sub_237AAAD18()
{
  result = qword_27DE9C568;
  if (!qword_27DE9C568)
  {
    _s5ModelVMa_2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C568);
  }

  return result;
}

uint64_t sub_237AAAD78(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_237AAADF4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_22:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_22;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    switch(v4)
    {
      case 2:
        LODWORD(v4) = *a1;
        break;
      case 3:
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v4) = *a1;
        break;
      default:
        LODWORD(v4) = *a1;
        break;
    }
  }

  return (v4 | v9) + 255;
}

void sub_237AAAF38(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        JUMPOUT(0x237AAB10CLL);
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

void sub_237AAB14C(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = sub_237C05ADC();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  sub_2379F25FC();
  if (!v4)
  {
    memcpy(__dst, a4, sizeof(__dst));
    sub_237AABA30(v14, __dst);
    (*(v9 + 8))(v14, v6);
  }
}

uint64_t sub_237AAB274(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v11 = sub_237C05ADC();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v19 = v18 - v17;
  result = sub_2379F29AC(a1, a2, a3, a4);
  if (!v5)
  {
    sub_237AAB14C(v19, a3, a4, a5);
    return (*(v14 + 8))(v19, v11);
  }

  return result;
}

uint64_t sub_237AAB394()
{
  v63[1] = *MEMORY[0x277D85DE8];
  v0 = sub_237C05C2C();
  v1 = OUTLINED_FUNCTION_0(v0);
  v58 = v2;
  v59 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  v8 = sub_237C05ADC();
  v9 = OUTLINED_FUNCTION_0(v8);
  v61 = v10;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v9);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v55 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v55 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v55 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v55 - v25;
  v27 = [objc_opt_self() defaultManager];
  v28 = v62;
  sub_2379F364C();
  if (v28)
  {
  }

  else
  {
    v55 = 0;
    v56 = v15;
    v57 = v18;
    sub_2379F3528();
    sub_237C05C1C();
    sub_237C05C0C();
    v62 = v8;
    (*(v58 + 8))(v7, v59);
    sub_237C05A2C();
    v29 = v62;

    sub_237C05A3C();
    v30 = v61 + 8;
    v31 = *(v61 + 8);
    v31(v21, v29);
    v32 = sub_237C059EC();
    v33 = sub_237C085AC();
    v63[0] = 0;
    v34 = sub_237AABE70(v32, v33, v63, v60);

    v35 = v63[0];
    v36 = v24;
    if (v34)
    {
      v59 = v30;
      v60 = v31;
      v37 = v27;
      v38 = objc_opt_self();
      v39 = v35;
      v40 = sub_237C059EC();
      v63[0] = 0;
      v41 = [v38 compileModelAtURL:v40 error:v63];

      v42 = v63[0];
      if (v41)
      {
        v43 = v57;
        sub_237C05A7C();
        v44 = v42;

        sub_2379E8EE0(0, &qword_27DE9AA38, 0x277CBFF20);
        v45 = v62;
        v7 = v56;
        (*(v61 + 16))(v56, v43, v62);
        v46 = v55;
        v47 = sub_237AAB8D8(v7);
        v48 = v37;
        v49 = v60;
        if (!v46)
        {
          v7 = v47;
        }

        v60(v43, v45);
        sub_237A70570(v48);

        v49(v36, v45);
        v49(v26, v45);
      }

      else
      {
        v51 = v63[0];
        sub_237C0593C();

        swift_willThrow();
        sub_237A70570(v27);

        v7 = v62;
        v52 = v60;
        v60(v36, v62);
        v52(v26, v7);
      }
    }

    else
    {
      v50 = v63[0];
      v7 = sub_237C0593C();

      swift_willThrow();
      v31(v24, v29);
      v31(v26, v29);
    }
  }

  v53 = *MEMORY[0x277D85DE8];
  return v7;
}

id sub_237AAB8D8(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = sub_237C059EC();
  v12[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v2 error:v12];

  v4 = v12[0];
  if (v3)
  {
    v5 = sub_237C05ADC();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v12[0];
    sub_237C0593C();

    swift_willThrow();
    v9 = sub_237C05ADC();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

id sub_237AABA30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 8);
  if (v4)
  {
    v6 = *a2;
    sub_2379E8EE0(0, &qword_27DE9C5F8, 0x277CD89D0);
    v14[0] = v6;
    v14[1] = v4;
    v7 = *(a2 + 32);
    v15 = *(a2 + 16);
    v16 = v7;
    v17 = *(a2 + 48);
    v18 = *(a2 + 64);
    v4 = sub_237AABB9C(v14);
  }

  v8 = sub_237C059EC();
  if (v4)
  {
    v9 = sub_237C0855C();
  }

  else
  {
    v9 = 0;
  }

  v14[0] = 0;
  v10 = [v3 writeMLModelToURL:v8 options:v9 error:v14];

  if (v10)
  {
    result = v14[0];
  }

  else
  {
    v12 = v14[0];
    sub_237C0593C();

    result = swift_willThrow();
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237AABB9C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[5];
  v21 = a1[4];
  v7 = a1[6];
  v6 = a1[7];
  v8 = a1[8];
  v9 = *MEMORY[0x277CBFE98];
  sub_237C086EC();

  v10 = MEMORY[0x277D837D0];
  sub_237C08E7C();
  v24 = v10;
  *&v23 = v4;
  *(&v23 + 1) = v3;
  sub_2379DAD24(&v23, v22);
  v11 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  sub_237B4160C(v22, v25);
  sub_2379E8F7C(v25);
  v12 = *MEMORY[0x277CBFEA8];
  *&v23 = sub_237C086EC();
  *(&v23 + 1) = v13;
  sub_237C08E7C();
  v24 = v10;
  *&v23 = v7;
  *(&v23 + 1) = v6;
  sub_2379DAD24(&v23, v22);
  swift_isUniquelyReferenced_nonNull_native();
  sub_237B4160C(v22, v25);
  sub_2379E8F7C(v25);
  v14 = *MEMORY[0x277CBFE88];
  *&v23 = sub_237C086EC();
  *(&v23 + 1) = v15;
  sub_237C08E7C();
  v24 = v10;
  *&v23 = v2;
  *(&v23 + 1) = v1;
  sub_2379DAD24(&v23, v22);
  swift_isUniquelyReferenced_nonNull_native();
  sub_237B4160C(v22, v25);
  sub_2379E8F7C(v25);
  if (v5)
  {
    v16 = *MEMORY[0x277CBFEA0];
    *&v23 = sub_237C086EC();
    *(&v23 + 1) = v17;
    sub_237C08E7C();
    v24 = v10;
    *&v23 = v21;
    *(&v23 + 1) = v5;
    sub_2379DAD24(&v23, v22);
    swift_isUniquelyReferenced_nonNull_native();
    sub_237B4160C(v22, v25);
    sub_2379E8F7C(v25);
  }

  if (v8)
  {
    v18 = *MEMORY[0x277CBFE90];
    *&v23 = sub_237C086EC();
    *(&v23 + 1) = v19;

    sub_237C08E7C();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BCE8, &qword_237C0EC40);
    *&v23 = v8;
    sub_2379DAD24(&v23, v22);
    swift_isUniquelyReferenced_nonNull_native();
    sub_237B4160C(v22, v25);
    sub_2379E8F7C(v25);
  }

  return v11;
}

id sub_237AABE70(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_237C0855C();

  v8 = [a4 writeMLModelToURL:a1 options:v7 error:a3];

  return v8;
}

uint64_t MLRandomForestClassifier.ModelParameters.validationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  result = sub_2379D8FF4(v1, &v11, &qword_27DE9A998, &unk_237C0C100);
  if (v12)
  {
    sub_2379DAD24(&v11, &v13);
    swift_dynamicCast();
    sub_237A64DF0(a1);
    return sub_237AAC1FC(v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237AABFDC@<X0>(uint64_t a1@<X8>)
{
  result = MLRandomForestClassifier.ModelParameters.validationData.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_237AAC020(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  sub_2379DBCDC(v3, v1);
  return MLRandomForestClassifier.ModelParameters.validationData.setter(&v3);
}

uint64_t MLRandomForestClassifier.ModelParameters.validationData.setter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = *a1;
  v12 = *(a1 + 8);
  v16[3] = v13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
  if (v12 == 255)
  {
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 256;
  }

  else if (MLDataTable.size.getter())
  {
    *v10 = v11;
    *(v10 + 8) = v12 & 1;
  }

  else
  {
    sub_2379DBC84(v11, v12);
  }

  swift_storeEnumTagMultiPayload();
  sub_237AAC258(v10, boxed_opaque_existential_0);
  return sub_2379DAE54(v16, v2);
}

uint64_t MLRandomForestClassifier.ModelParameters.validation.getter()
{
  result = sub_2379D8FF4(v0, &v2, &qword_27DE9A998, &unk_237C0C100);
  if (v3)
  {
    sub_2379DAD24(&v2, &v4);
    type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData();
    return swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237AAC1FC(uint64_t a1)
{
  v2 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237AAC258(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void (*MLRandomForestClassifier.ModelParameters.validationData.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  MLRandomForestClassifier.ModelParameters.validationData.getter(a1);
  return sub_237AAC304;
}

void sub_237AAC304(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2)
  {
    v5 = *a1;
    v6 = v3;
    sub_2379DBCDC(v2, v3);
    MLRandomForestClassifier.ModelParameters.validationData.setter(&v5);

    sub_2379DBC84(v2, v3);
  }

  else
  {
    v5 = *a1;
    v6 = v3;
    MLRandomForestClassifier.ModelParameters.validationData.setter(&v5);
  }
}

uint64_t sub_237AAC398(uint64_t a1)
{
  v2 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237A654DC(a1, v5);
  return MLRandomForestClassifier.ModelParameters.validation.setter(v5);
}

uint64_t MLRandomForestClassifier.ModelParameters.validation.setter(uint64_t a1)
{
  v5[3] = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v5);
  sub_237AAC258(a1, boxed_opaque_existential_0);
  return sub_2379DAE54(v5, v1);
}

void (*MLRandomForestClassifier.ModelParameters.validation.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = __swift_coroFrameAllocStub(0xA0uLL);
  *a1 = v4;
  v4[16] = v2;
  v5 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData();
  v4[17] = v5;
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 64);
  v4[18] = __swift_coroFrameAllocStub(v7);
  v4[19] = __swift_coroFrameAllocStub(v7);
  result = sub_2379D8FF4(v2, (v4 + 4), &qword_27DE9A998, &unk_237C0C100);
  if (v4[7])
  {
    sub_2379DAD24(v4 + 2, v4);
    swift_dynamicCast();
    return sub_237AAC574;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_237AAC574(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[18];
  v4 = (*a1)[19];
  v5 = (*a1)[16];
  v6 = (*a1)[17];
  if (a2)
  {
    sub_237A654DC((*a1)[19], v3);
    v2[11] = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 8);
    sub_237AAC258(v3, boxed_opaque_existential_0);
    sub_2379DAE54((v2 + 8), v5);
    sub_237AAC1FC(v4);
  }

  else
  {
    v2[15] = v6;
    v8 = __swift_allocate_boxed_opaque_existential_0(v2 + 12);
    sub_237AAC258(v4, v8);
    sub_2379DAE54((v2 + 12), v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t MLRandomForestClassifier.ModelParameters.init(validation:maxDepth:maxIterations:minLossReduction:minChildWeight:randomSeed:rowSubsample:columnSubsample:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  v18 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData();
  v19 = OUTLINED_FUNCTION_4(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_0();
  v24 = v23 - v22;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = a2;
  *(a5 + 40) = a3;
  *(a5 + 48) = a6;
  *(a5 + 56) = a7;
  *(a5 + 64) = a4;
  *(a5 + 72) = a8;
  *(a5 + 80) = a9;
  sub_237A654DC(a1, v23 - v22);
  v27[3] = v18;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v27);
  sub_237AAC258(v24, boxed_opaque_existential_0);
  sub_237AAC1FC(a1);
  return sub_2379DAE54(v27, a5);
}

uint64_t MLRandomForestClassifier.ModelParameters.init(validationData:maxDepth:maxIterations:minLossReduction:minChildWeight:randomSeed:rowSubsample:columnSubsample:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  v9 = *a1;
  v10 = *(a1 + 8);
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = a2;
  *(a5 + 40) = a3;
  *(a5 + 48) = a6;
  *(a5 + 56) = a7;
  *(a5 + 64) = a4;
  *(a5 + 72) = a8;
  *(a5 + 80) = a9;
  v12 = v9;
  v13 = v10;
  return MLRandomForestClassifier.ModelParameters.validationData.setter(&v12);
}

uint64_t sub_237AAC8D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_237C05DBC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C600, &qword_237C10750);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v36 - v18;
  v20 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData();
  v21 = OUTLINED_FUNCTION_4(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_0();
  v26 = v25 - v24;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = sub_237C070EC();
  *(a3 + 40) = sub_237C0714C();
  sub_237C0718C();
  *(a3 + 48) = v27;
  sub_237C0716C();
  *(a3 + 56) = v28;
  *(a3 + 64) = sub_237C070AC();
  sub_237C0710C();
  *(a3 + 72) = v29;
  sub_237C0712C();
  *(a3 + 80) = v30;
  v37 = a2;
  sub_2379D8FF4(a2, v15, &qword_27DE9A9A0, &qword_237C0BF60);
  v31 = 1;
  if (__swift_getEnumTagSinglePayload(v15, 1, v6) != 1)
  {
    (*(v7 + 32))(v11, v15, v6);
    (*(v7 + 16))(v19, v11, v6);
    swift_storeEnumTagMultiPayload();
    (*(v7 + 8))(v11, v6);
    v31 = 0;
  }

  __swift_storeEnumTagSinglePayload(v19, v31, 1, v20);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (__swift_getEnumTagSinglePayload(v19, 1, v20) != 1)
    {
      sub_2379D9054(v19, &qword_27DE9C600, &qword_237C10750);
    }
  }

  else
  {
    sub_237AAC258(v19, v26);
  }

  v38[3] = v20;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v38);
  sub_237AAC258(v26, boxed_opaque_existential_0);
  sub_2379D9054(v37, &qword_27DE9A9A0, &qword_237C0BF60);
  v33 = sub_237C071DC();
  OUTLINED_FUNCTION_4(v33);
  (*(v34 + 8))(a1);
  return sub_2379DAE54(v38, a3);
}

uint64_t MLRandomForestClassifier.ModelParameters.description.getter()
{
  v10[2] = 0x747065442078614DLL;
  v10[3] = 0xEB00000000203A68;
  v10[0] = v0[4];
  v1 = sub_237C0924C();
  MEMORY[0x2383DC360](v1);

  MEMORY[0x2383DC360](10, 0xE100000000000000);
  OUTLINED_FUNCTION_3_16();
  sub_237C08EDC();

  v10[0] = 0xD000000000000010;
  v10[1] = 0x8000000237C16E00;
  v2 = v0[5];
  v3 = OUTLINED_FUNCTION_7_11();
  MEMORY[0x2383DC360](v3);

  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0xD000000000000010, 0x8000000237C16E00);

  OUTLINED_FUNCTION_3_16();
  sub_237C08EDC();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x2383DC360](0xD000000000000014, 0x8000000237C16E20);
  v4 = v0[6];
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0xD000000000000010, 0x8000000237C16E00);

  OUTLINED_FUNCTION_3_16();
  sub_237C08EDC();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0xD000000000000010, 0x8000000237C16E00);

  OUTLINED_FUNCTION_3_16();
  sub_237C08EDC();

  strcpy(v10, "Random Seed: ");
  HIWORD(v10[1]) = -4864;
  v5 = v0[8];
  v6 = OUTLINED_FUNCTION_7_11();
  MEMORY[0x2383DC360](v6);

  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](v10[0], v10[1]);

  OUTLINED_FUNCTION_3_16();
  sub_237C08EDC();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x2383DC360](0x7362755320776F52, 0xEF203A656C706D61);
  v7 = v0[9];
  sub_237C08A8C();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](v10[0], v10[1]);

  OUTLINED_FUNCTION_3_16();
  sub_237C08EDC();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_0();
  v8 = v0[10];
  sub_237C08A8C();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](v10[0], v10[1]);

  return 0x747065442078614DLL;
}

uint64_t MLRandomForestClassifier.ModelParameters.playgroundDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  result = MLRandomForestClassifier.ModelParameters.description.getter();
  a1[3] = MEMORY[0x277D837D0];
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_237AACFA0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 88))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_237AACFF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_237AAD14C()
{
  result = _s20ConvolutionalNetworkVMa(319);
  if (v1 <= 0x3F)
  {
    result = _s3MLPVMa(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_237AAD228()
{
  result = sub_237C0638C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v9 = OUTLINED_FUNCTION_5_31();
  v11 = v10(v9);
  if (*(*(v11 - 8) + 84) == v5)
  {
    v12 = v11;
    v13 = v6;
  }

  else
  {
    v12 = a5(0);
    v13 = v6 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v13, v5, v12);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v11 = OUTLINED_FUNCTION_5_31();
  v13 = v12(v11);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v14 = v13;
    v15 = v7;
  }

  else
  {
    v14 = a6(0);
    v15 = v7 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v15, v6, v6, v14);
}

uint64_t sub_237AAD4A4()
{
  result = _s11LeakyConv2DVMa(319);
  if (v1 <= 0x3F)
  {
    result = _s12CausalConv1DVMa(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_237AAD540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_237C064FC();

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_237AAD5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_237C064FC();

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_237AAD600()
{
  result = sub_237C064FC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_237AAD6A8()
{
  OUTLINED_FUNCTION_5_31();
  v2 = sub_237C065CC();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_237AAD6FC()
{
  OUTLINED_FUNCTION_5_31();
  sub_237C065CC();
  v0 = OUTLINED_FUNCTION_24_15();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_237AAD734()
{
  result = sub_237C065CC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_237AAD7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71 = a2;
  v73 = a3;
  v74 = a1;
  v4 = _s11LeakyConv2DVMa(0);
  v5 = *(v4 - 8);
  v72 = v4 - 8;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_2_0();
  v70 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC8, &qword_237C10CF0);
  v10 = OUTLINED_FUNCTION_20(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v69 - v13;
  sub_237C0623C();
  v15 = sub_237C0616C();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
  OUTLINED_FUNCTION_15_17();
  sub_237C061FC();
  sub_2379D9054(v14, &qword_27DE9ACC8, &qword_237C10CF0);
  sub_237C0622C();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v15);
  OUTLINED_FUNCTION_15_17();
  v69 = sub_237C0620C();
  sub_2379D9054(v14, &qword_27DE9ACC8, &qword_237C10CF0);
  sub_237C0622C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C710, &qword_237C10CF8);
  v22 = (_s12CausalConv1DVMa(0) - 8);
  v23 = *(*v22 + 72);
  v24 = (*(*v22 + 80) + 32) & ~*(*v22 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_237C0BC00;
  v26 = (v25 + v24);

  *v26 = sub_237C069DC();
  v26[1] = v27;
  v28 = v22[7];
  swift_retain_n();

  OUTLINED_FUNCTION_6_31();
  OUTLINED_FUNCTION_29_8(v29, v30, v31, v32, 1, v33, v34);
  sub_237C0698C();
  OUTLINED_FUNCTION_16_14();

  *(v26 + v22[8]) = v3;
  v35 = (v26 + v23);

  *v35 = sub_237C069DC();
  v35[1] = v36;
  v37 = v22[7];

  OUTLINED_FUNCTION_6_31();
  OUTLINED_FUNCTION_29_8(v38, v39, v40, v41, 2, v42, v43);
  sub_237C0698C();
  OUTLINED_FUNCTION_16_14();

  *(v35 + v22[8]) = v3;
  v44 = (v26 + 2 * v23);

  *v44 = sub_237C069DC();
  v44[1] = v45;
  v46 = v22[7];

  OUTLINED_FUNCTION_6_31();
  OUTLINED_FUNCTION_29_8(v47, v48, v49, v50, 4, v51, v52);
  sub_237C0698C();
  OUTLINED_FUNCTION_16_14();

  *(v44 + v22[8]) = v3;
  v53 = (v26 + 3 * v23);

  *v53 = sub_237C069DC();
  v53[1] = v54;
  v55 = v22[7];

  OUTLINED_FUNCTION_6_31();
  OUTLINED_FUNCTION_29_8(v56, v57, v58, v59, 8, v60, v61);
  sub_237C0698C();
  OUTLINED_FUNCTION_16_14();

  *(v53 + v22[8]) = v3;

  sub_237C0622C();
  v62 = v70;
  sub_237C0652C();
  sub_237C0698C();
  v63 = v62;
  *(v62 + *(v72 + 28)) = v64;
  v65 = v73;
  sub_237AAEA90(v25, v63, v73);
  v66 = v65 + *(_s18TemporalClassifierVMa(0) + 20);
  swift_retain_n();

  sub_237C0636C();
  v67 = v66 + *(_s3MLPVMa(0) + 20);
  sub_237C0636C();
}

uint64_t sub_237AADC8C()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_237AADC44();
}

uint64_t sub_237AADC94()
{
  sub_237AB02F0();

  return sub_237C0642C();
}

uint64_t sub_237AADCE0()
{
  sub_237AB02F0();

  return sub_237C0643C();
}

void sub_237AADD34()
{
  OUTLINED_FUNCTION_153();
  v1 = sub_237C0683C();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18_0();
  v9 = (v7 - v8);
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  v13 = OUTLINED_FUNCTION_25_13();
  v14 = _s12CausalConv1DVMa(v13);
  v15 = *(v14 + 20);
  v18 = *(v0 + *(v14 + 24));
  v17 = *v0;
  sub_237AB02F0();
  sub_237C063CC();
  sub_237C064FC();
  sub_237C063CC();
  v16 = *(v4 + 8);
  v16(v9, v1);
  sub_237C063CC();
  v16(v12, v1);
  OUTLINED_FUNCTION_150();
}

uint64_t sub_237AADEA4()
{
  sub_237AAE820(&qword_27DE9C700, _s12CausalConv1DVMa);

  return sub_237C0642C();
}

uint64_t sub_237AADF20()
{
  sub_237AAE820(&qword_27DE9C700, _s12CausalConv1DVMa);

  return sub_237C0643C();
}

void sub_237AADFA4()
{
  OUTLINED_FUNCTION_153();
  v20[1] = v0;
  v1 = sub_237C0683C();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18_0();
  v9 = (v7 - v8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v20 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v20 - v14;
  v16 = OUTLINED_FUNCTION_25_13();
  v20[0] = *(_s3MLPVMa(v16) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B518, &qword_237C0D640);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_237C0B680;
  *(v17 + 32) = 0u;
  *(v17 + 48) = 0u;
  *(v17 + 64) = 0u;
  *(v17 + 80) = 0u;
  *(v17 + 96) = 0u;
  v18 = MEMORY[0x277D2CF50];
  *(v17 + 136) = MEMORY[0x277D83B88];
  *(v17 + 144) = v18;
  *(v17 + 112) = -1;
  sub_237C0684C();

  sub_237C0638C();
  sub_237C063CC();
  v19 = *(v4 + 8);
  v19(v9, v1);
  sub_237C062FC();
  v19(v13, v1);
  sub_237C063CC();
  v19(v15, v1);
  OUTLINED_FUNCTION_150();
}

uint64_t sub_237AAE190()
{
  sub_237AAE820(&qword_27DE9C6F0, _s3MLPVMa);

  return sub_237C0642C();
}

uint64_t sub_237AAE20C()
{
  sub_237AAE820(&qword_27DE9C6F0, _s3MLPVMa);

  return sub_237C0643C();
}

void sub_237AAE290()
{
  OUTLINED_FUNCTION_153();
  v43 = v0;
  v45 = v1;
  v42 = sub_237C0683C();
  v2 = OUTLINED_FUNCTION_0(v42);
  v44 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18_0();
  v39 = v6 - v7;
  v9 = MEMORY[0x28223BE20](v8);
  v41 = &v35 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v35 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - v14;
  v16 = sub_237C0610C();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_0();
  v24 = v23 - v22;
  sub_237C0679C();
  v25 = sub_237C0612C();
  v26 = *(v19 + 8);
  v26(v24, v16);
  sub_237C0679C();
  v37 = sub_237C0612C();
  v26(v24, v16);
  sub_237C0679C();
  v27 = sub_237C0612C();
  v46 = v16;
  v47 = v26;
  v26(v24, v16);
  sub_237C065EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_237C0BC00;
  v40 = v25;
  v38 = v27;
  if ((v25 * v27) >> 64 == (v25 * v27) >> 63)
  {
    *(v28 + 32) = v25 * v27;
    *(v28 + 40) = 1;
    *(v28 + 48) = v37;
    *(v28 + 56) = 1;
    sub_237C0611C();
    OUTLINED_FUNCTION_11_25();
    v36 = v15;
    sub_237C0681C();
    v47(v24, v46);
    v48 = *(v43 + *(_s11LeakyConv2DVMa(0) + 20));
    sub_237C065CC();
    v29 = v39;
    sub_237C063CC();
    v30 = v41;
    sub_237C063CC();
    v31 = v42;
    v37 = v13;
    v32 = *(v44 + 8);
    v32(v29, v42);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_237C0B680;
    v34 = v38;
    *(v33 + 32) = v40;
    *(v33 + 40) = v34;
    *(v33 + 48) = MEMORY[0x2383DA0D0]();
    sub_237C0611C();
    sub_237C0681C();
    v47(v24, v46);
    sub_237C065EC();
    v32(v29, v31);
    v32(v30, v31);
    v32(v37, v31);
    v32(v36, v31);
    OUTLINED_FUNCTION_150();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_237AAE690()
{
  sub_237AAE820(&qword_27DE9C6F8, _s11LeakyConv2DVMa);

  return sub_237C0642C();
}

uint64_t sub_237AAE70C()
{
  sub_237AAE820(&qword_27DE9C6F8, _s11LeakyConv2DVMa);

  return sub_237C0643C();
}

uint64_t sub_237AAE820(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_237AAE8B4()
{
  result = qword_27DE9C670;
  if (!qword_27DE9C670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C670);
  }

  return result;
}

unint64_t sub_237AAE90C()
{
  result = qword_27DE9C678;
  if (!qword_27DE9C678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C678);
  }

  return result;
}

unint64_t sub_237AAE964()
{
  result = qword_27DE9C680;
  if (!qword_27DE9C680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C680);
  }

  return result;
}

uint64_t sub_237AAEA90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = _s20ConvolutionalNetworkVMa(0);
  v7 = *(a1 + 16);
  if (!v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = result;
  v9 = *(result + 20);
  v10 = _s12CausalConv1DVMa(0);
  OUTLINED_FUNCTION_20(v10);
  v12 = v11;
  v13 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  result = sub_237AB0344(v13, a3 + v9);
  if (v7 == 1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v14 = *(v12 + 72);
  result = sub_237AB0344(v13 + v14, a3 + v8[6]);
  if (v7 < 3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_237AB0344(v13 + 2 * v14, a3 + v8[7]);
  if (v7 == 3)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_237AB0344(v13 + 3 * v14, a3 + v8[8]);

  return sub_237AB03A8(a2, a3);
}

void sub_237AAEBB0()
{
  OUTLINED_FUNCTION_153();
  v1 = v0;
  v3 = v2;
  v4 = sub_237C0683C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v22 = v6;
  v23 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  v12 = OUTLINED_FUNCTION_25_13();
  _s11LeakyConv2DVMa(v12);
  sub_237AAE820(&qword_27DE9C6F8, _s11LeakyConv2DVMa);
  sub_237C063CC();
  v13 = _s20ConvolutionalNetworkVMa(0);
  v14 = v13[5];
  _s12CausalConv1DVMa(0);
  sub_237AAE820(&qword_27DE9C700, _s12CausalConv1DVMa);
  OUTLINED_FUNCTION_28_9();
  v15 = v13[6];
  v16 = _s20ConvolutionalNetworkV6OutputVMa(0);
  v17 = v16[5];
  OUTLINED_FUNCTION_28_9();
  v18 = v16[6];
  v19 = v1 + v13[7];
  OUTLINED_FUNCTION_28_9();
  v20 = v3 + v16[7];
  v21 = v1 + v13[8];
  OUTLINED_FUNCTION_28_9();
  (*(v22 + 8))(v11, v23);
  OUTLINED_FUNCTION_150();
}

uint64_t sub_237AAED78()
{
  sub_237AAE820(&qword_27DE9C6E8, _s20ConvolutionalNetworkVMa);

  return sub_237C0642C();
}

uint64_t sub_237AAEDF4()
{
  sub_237AAE820(&qword_27DE9C6E8, _s20ConvolutionalNetworkVMa);

  return sub_237C0643C();
}

uint64_t sub_237AAF028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v226 = a1;
  v231 = a3;
  v230 = _s11LeakyConv2DVMa(0);
  v4 = OUTLINED_FUNCTION_4(v230);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v225 = v8 - v7;
  v9 = sub_237C060DC();
  v228 = OUTLINED_FUNCTION_0(v9);
  v229 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v228);
  OUTLINED_FUNCTION_2_0();
  v227 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B410, &qword_237C0CCC8);
  v16 = OUTLINED_FUNCTION_20(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18_0();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v197 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC8, &qword_237C10CF0);
  v26 = OUTLINED_FUNCTION_20(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v197 - v29;
  v31 = sub_237C0610C();
  v32 = OUTLINED_FUNCTION_20(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2_0();
  v37 = v36 - v35;
  OUTLINED_FUNCTION_25_13();
  v38 = sub_237C0683C();
  v39 = OUTLINED_FUNCTION_0(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_18_0();
  v46 = v44 - v45;
  MEMORY[0x28223BE20](v47);
  v49 = &v197 - v48;
  v50 = v237;
  v51 = sub_237A2B584(0);
  if (v50)
  {
    return sub_237A2C4F4(a2);
  }

  v218 = v46;
  v219 = v21;
  v220 = v41;
  v221 = v30;
  v237 = v51;
  v223 = v37;
  v224 = v49;
  v53 = v230;
  v54 = v231;
  v222 = v24;
  v55 = sub_237A2B584(1uLL);
  v56 = sub_237A2B584(2uLL);
  v57 = sub_237A2B584(3uLL);
  v58 = sub_237A2B584(4uLL);
  v217 = v56;
  v59 = sub_237A2B584(5uLL);
  v60 = sub_237A2B584(6uLL);
  v199 = v59;
  v200 = v60;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C710, &qword_237C10CF8);
  v61 = _s12CausalConv1DVMa(0);
  v62 = *(v61 - 8);
  v212 = v61 - 8;
  v211 = *(v62 + 72);
  v63 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  v64 = swift_allocObject();
  v203 = xmmword_237C0BC00;
  *(v64 + 16) = xmmword_237C0BC00;
  v198 = v64;
  v208 = (v64 + v63);
  v206 = v57;
  sub_237C0611C();
  v232 = sub_237ADBD4C(200, v55);
  v233 = v65;
  v234 = v66;
  v235 = v67;
  v215 = sub_237C0616C();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C718, &unk_237C10D00);
  v204 = sub_2379D9224(&qword_27DE9C720, &qword_27DE9C718, &unk_237C10D00);
  sub_237C0678C();
  sub_237C0611C();
  v214 = *MEMORY[0x277D2CCC8];
  v213 = *(v229 + 104);
  v229 += 104;
  (v213)(v227);
  OUTLINED_FUNCTION_4_36();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, *(v72 - 256));
  v202 = v58;
  v76 = v222;
  sub_237C067BC();
  v77 = v38;
  v216 = v38;
  __swift_storeEnumTagSinglePayload(v76, 0, 1, v38);
  v78 = sub_237C069DC();
  v79 = v208;
  *v208 = v78;
  v79[1] = v80;
  v81 = v220;
  v82 = *(v220 + 16);
  v209 = v220 + 16;
  v210 = v82;
  v82(v218, v224, v77);
  sub_237A7FA40(v76, v219);
  v83 = v212;
  v84 = v79 + *(v212 + 28);
  OUTLINED_FUNCTION_10_25();
  sub_237C064CC();
  sub_237C0698C();
  v86 = v85;
  sub_2379D9054(v222, &qword_27DE9B410, &qword_237C0CCC8);
  v87 = *(v81 + 8);
  v81 += 8;
  v207 = v87;
  v220 = v81;
  v87(v224, v216);
  *(v79 + *(v83 + 32)) = v86;
  v201 = (v211 + v79);
  sub_237C0611C();
  v232 = sub_237ADBD4C(160, v217);
  v233 = v88;
  v234 = v89;
  v235 = v90;
  OUTLINED_FUNCTION_4_36();
  OUTLINED_FUNCTION_27_7(v91, v92, v93, v94);
  OUTLINED_FUNCTION_26_12();
  sub_237C0611C();
  OUTLINED_FUNCTION_12_22();
  v213();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v95, v96, v97, v81);
  v98 = v222;
  sub_237C067BC();
  v99 = OUTLINED_FUNCTION_2_42();
  OUTLINED_FUNCTION_27_7(v99, v100, v101, v102);
  v103 = sub_237C069DC();
  v104 = v201;
  *v201 = v103;
  v104[1] = v105;
  OUTLINED_FUNCTION_9_25();
  v106();
  v107 = v98;
  sub_237A7FA40(v98, v219);
  v108 = v212;
  v109 = v104 + *(v212 + 28);
  OUTLINED_FUNCTION_10_25();
  sub_237C064CC();
  sub_237C0698C();
  v111 = v110;
  sub_2379D9054(v107, &qword_27DE9B410, &qword_237C0CCC8);
  OUTLINED_FUNCTION_14_19();
  v112();
  *(v104 + *(v108 + 32)) = v111;
  v201 = (v208 + 2 * v211);
  sub_237C0611C();
  OUTLINED_FUNCTION_22_13(&v236);
  v113 = OUTLINED_FUNCTION_1_38();
  v114 = v215;
  __swift_storeEnumTagSinglePayload(v113, v115, v116, v215);
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEA8, &unk_237C0C200);
  v206 = sub_2379D9224(&qword_27DE9C728, &qword_27DE9AEA8, &unk_237C0C200);
  sub_237C0678C();
  sub_237C0611C();
  OUTLINED_FUNCTION_12_22();
  v213();
  v117 = OUTLINED_FUNCTION_1_38();
  v118 = v114;
  v119 = v222;
  __swift_storeEnumTagSinglePayload(v117, v120, v121, v118);
  OUTLINED_FUNCTION_11_25();
  sub_237C067BC();
  v122 = OUTLINED_FUNCTION_2_42();
  __swift_storeEnumTagSinglePayload(v122, v124, v125, *(v123 - 256));
  v126 = sub_237C069DC();
  v127 = v201;
  *v201 = v126;
  v127[1] = v128;
  v129 = v218;
  OUTLINED_FUNCTION_9_25();
  v130();
  sub_237A7FA40(v119, v219);
  v131 = v212;
  v132 = v127 + *(v212 + 28);
  OUTLINED_FUNCTION_10_25();
  sub_237C064CC();
  sub_237C0698C();
  v133 = OUTLINED_FUNCTION_16_14();
  sub_2379D9054(v133, &qword_27DE9B410, &qword_237C0CCC8);
  OUTLINED_FUNCTION_14_19();
  v134();
  *(v127 + *(v131 + 32)) = v111;
  v211 = (v208 + 3 * v211);
  sub_237C0611C();
  OUTLINED_FUNCTION_22_13(&v232);
  OUTLINED_FUNCTION_4_36();
  OUTLINED_FUNCTION_27_7(v135, v136, v137, v138);
  OUTLINED_FUNCTION_11_25();
  OUTLINED_FUNCTION_18_21();
  sub_237C0611C();
  OUTLINED_FUNCTION_12_22();
  OUTLINED_FUNCTION_23_17();
  v139();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v140, v141, v142, v129);
  v143 = v222;
  OUTLINED_FUNCTION_11_25();
  sub_237C067BC();
  OUTLINED_FUNCTION_27_7(v143, 0, 1, &v238);
  v144 = sub_237C069DC();
  v145 = v211;
  *v211 = v144;
  v145[1] = v146;
  OUTLINED_FUNCTION_9_25();
  v147();
  sub_237A7FA40(v143, v219);
  v148 = v145 + *(v212 + 28);
  OUTLINED_FUNCTION_10_25();
  sub_237C064CC();
  sub_237C0698C();
  v150 = v149;
  sub_2379D9054(v143, &qword_27DE9B410, &qword_237C0CCC8);
  OUTLINED_FUNCTION_14_19();
  v151();
  *(v145 + *(v212 + 32)) = v150;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
  v152 = swift_allocObject();
  *(v152 + 16) = v203;
  *(v152 + 32) = xmmword_237C10760;
  v153 = v226;
  *(v152 + 48) = v226;
  *(v152 + 56) = 1;
  sub_237C0611C();
  result = 10 * v153;
  if ((v153 * 10) >> 64 == (10 * v153) >> 63)
  {
    v232 = sub_237ADBD4C(result, v237);
    v233 = v154;
    v234 = v155;
    v235 = v156;
    v157 = OUTLINED_FUNCTION_1_38();
    v158 = v215;
    __swift_storeEnumTagSinglePayload(v157, v159, v160, v215);
    OUTLINED_FUNCTION_26_12();
    sub_237C0611C();
    OUTLINED_FUNCTION_12_22();
    OUTLINED_FUNCTION_23_17();
    v161();
    v162 = OUTLINED_FUNCTION_1_38();
    __swift_storeEnumTagSinglePayload(v162, v163, v164, v158);
    OUTLINED_FUNCTION_11_25();
    sub_237C067BC();
    v165 = OUTLINED_FUNCTION_2_42();
    __swift_storeEnumTagSinglePayload(v165, v167, v168, *(v166 - 256));
    v169 = v225;
    sub_237C0657C();
    sub_237C0698C();
    *(v169 + *(v53 + 20)) = v170;
    sub_237AAEA90(v198, v169, v54);
    sub_237C0611C();
    OUTLINED_FUNCTION_22_13(&v229);
    v171 = OUTLINED_FUNCTION_1_38();
    v172 = v215;
    __swift_storeEnumTagSinglePayload(v171, v173, v174, v215);
    OUTLINED_FUNCTION_18_21();
    sub_237C0611C();
    OUTLINED_FUNCTION_12_22();
    OUTLINED_FUNCTION_23_17();
    v175();
    v176 = OUTLINED_FUNCTION_1_38();
    v177 = v172;
    __swift_storeEnumTagSinglePayload(v176, v178, v179, v172);
    OUTLINED_FUNCTION_11_25();
    sub_237C067BC();
    v180 = OUTLINED_FUNCTION_2_42();
    __swift_storeEnumTagSinglePayload(v180, v182, v183, *(v181 - 256));
    v184 = v54 + *(_s18TemporalClassifierVMa(0) + 20);
    sub_237C0633C();
    sub_237C0611C();
    OUTLINED_FUNCTION_22_13(&v230);
    v185 = OUTLINED_FUNCTION_1_38();
    __swift_storeEnumTagSinglePayload(v185, v186, v187, v177);
    OUTLINED_FUNCTION_18_21();
    sub_237C0611C();
    OUTLINED_FUNCTION_12_22();
    OUTLINED_FUNCTION_23_17();
    v188();
    v189 = OUTLINED_FUNCTION_1_38();
    __swift_storeEnumTagSinglePayload(v189, v190, v191, v177);
    OUTLINED_FUNCTION_11_25();
    sub_237C067BC();
    v192 = OUTLINED_FUNCTION_2_42();
    __swift_storeEnumTagSinglePayload(v192, v194, v195, *(v193 - 256));
    v196 = v184 + *(_s3MLPVMa(0) + 20);
    sub_237C0633C();
    return sub_237A2C4F4(a2);
  }

  __break(1u);
  return result;
}

void sub_237AAFEB4()
{
  OUTLINED_FUNCTION_153();
  v1 = v0;
  v2 = _s20ConvolutionalNetworkV6OutputVMa(0);
  v3 = (v2 - 8);
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  _s20ConvolutionalNetworkVMa(0);
  sub_237AAE820(&qword_27DE9C6E8, _s20ConvolutionalNetworkVMa);
  sub_237C063CC();
  v8 = *(_s18TemporalClassifierVMa(0) + 20);
  v9 = v3[9];
  v10 = _s18TemporalClassifierV6OutputVMa(0);
  v11 = v10[7];
  _s3MLPVMa(0);
  sub_237AAE820(&qword_27DE9C6F0, _s3MLPVMa);
  sub_237C063CC();
  v12 = sub_237C0683C();
  OUTLINED_FUNCTION_4(v12);
  v14 = *(v13 + 16);
  v14(v1, v7, v12);
  v14(v1 + v10[5], v7 + v3[7], v12);
  v14(v1 + v10[6], v7 + v3[8], v12);
  sub_237AB0294(v7);
  OUTLINED_FUNCTION_150();
}

uint64_t sub_237AB007C()
{
  sub_237AAE820(&qword_27DE9B3D8, _s18TemporalClassifierVMa);

  return sub_237C0642C();
}

uint64_t sub_237AB00F8()
{
  sub_237AAE820(&qword_27DE9B3D8, _s18TemporalClassifierVMa);

  return sub_237C0643C();
}

uint64_t sub_237AB0294(uint64_t a1)
{
  v2 = _s20ConvolutionalNetworkV6OutputVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_237AB02F0()
{
  result = qword_27DE9C708;
  if (!qword_27DE9C708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C708);
  }

  return result;
}

uint64_t sub_237AB0344(uint64_t a1, uint64_t a2)
{
  v4 = _s12CausalConv1DVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237AB03A8(uint64_t a1, uint64_t a2)
{
  v4 = _s11LeakyConv2DVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t __swift_get_extra_inhabitant_index_8Tm()
{
  v2 = OUTLINED_FUNCTION_5_31();
  v4 = v3(v2);

  return __swift_getEnumTagSinglePayload(v1, v0, v4);
}

uint64_t __swift_store_extra_inhabitant_index_9Tm()
{
  v0 = OUTLINED_FUNCTION_5_31();
  v1(v0);
  v2 = OUTLINED_FUNCTION_24_15();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_237AB0510()
{
  result = sub_237C0683C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_18_21()
{
  v2 = *(v0 - 256);
  v3 = *(v0 - 344);

  return sub_237C0678C();
}

uint64_t OUTLINED_FUNCTION_21_16()
{

  return sub_237A2C4F4(v0);
}

uint64_t OUTLINED_FUNCTION_26_12()
{
  v2 = *(v0 - 352);
  v3 = *(v0 - 360);

  return sub_237C0678C();
}

uint64_t OUTLINED_FUNCTION_27_7@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a4 - 256);

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v5);
}

uint64_t OUTLINED_FUNCTION_28_9()
{

  return sub_237C063CC();
}

uint64_t OUTLINED_FUNCTION_29_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return MEMORY[0x28218B918](a1, a2, a3, a4, a5, 1, a7, v7);
}

_BYTE *_s10__DefaultsVwst_0(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x237AB0874);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

void sub_237AB08AC(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v5 = OUTLINED_FUNCTION_117_0();
    sub_2379DBCF4(v5, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    v7 = sub_237C0925C();
    if (v7)
    {
      v8 = v7;
      v9 = OUTLINED_FUNCTION_117_0();
      sub_2379DBC9C(v9, v14);
    }

    else
    {
      OUTLINED_FUNCTION_50();
      v8 = swift_allocError();
      *v15 = a1;
    }

    v16 = 1;
    goto LABEL_7;
  }

  v10 = *(*(a1 + 16) + 16);
  v11 = OUTLINED_FUNCTION_85();
  sub_2379DBCF4(v11, v12);
  v13 = sub_237B0E0C8(v10);
  v17 = v13;
  if (v13)
  {
    type metadata accessor for CMLColumn();
    OUTLINED_FUNCTION_103();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    v19 = OUTLINED_FUNCTION_85();
    sub_2379DBC9C(v19, v20);
    type metadata accessor for _UntypedColumn();
    OUTLINED_FUNCTION_103();
    v8 = swift_allocObject();
    v16 = 0;
    *(v8 + 16) = v18;
LABEL_7:
    *a3 = v8;
    *(a3 + 8) = v16;
    return;
  }

  __break(1u);
}

void sub_237AB0A6C()
{
  OUTLINED_FUNCTION_74();
  v34 = v0;
  v2 = v1;
  v39[3] = *MEMORY[0x277D85DE8];
  v38 = sub_237C05ADC();
  v3 = *(v38 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v38);
  v5 = *(v3 + 16);
  v5(v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  type metadata accessor for VNImageOption(0);
  sub_237AB6760(&qword_27DE9A7C0, type metadata accessor for VNImageOption);
  v6 = MEMORY[0x277D84F90];
  sub_237C085AC();
  v7 = objc_allocWithZone(MEMORY[0x277CE2D50]);
  v37 = sub_237ADAA08(v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  OUTLINED_FUNCTION_103();
  v8 = swift_allocObject();
  v36 = v8;
  *(v8 + 16) = v6;
  v33[1] = v8 + 16;
  OUTLINED_FUNCTION_103();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v35 = (v9 + 16);
  OUTLINED_FUNCTION_103();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = v2;
  v12 = v38;
  (v5)(v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v38);
  v13 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v14 = (v4 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = v9;
  v16 = v12;
  v17 = v36;
  (*(v3 + 32))(v15 + v13, v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
  v18 = v37;
  *(v15 + v14) = v10;
  *(v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)) = v17;
  v19 = objc_allocWithZone(MEMORY[0x277CE2C98]);

  v20 = sub_237AB6280(sub_237AB6944, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACE8, &unk_237C0BAA0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_237C10D30;
  *(v21 + 32) = v20;
  sub_2379E8EE0(0, &qword_27DE9C768, 0x277CE2DF0);
  v22 = v20;
  OUTLINED_FUNCTION_38_6();
  v23 = sub_237C0892C();

  v39[0] = 0;
  LODWORD(v14) = [v18 performRequests:v23 error:v39];

  v24 = v39[0];
  if (v14)
  {
    v25 = v35;
    OUTLINED_FUNCTION_31_11();
    v26 = *v25;
    if (!v26)
    {
      v31 = v24;

      OUTLINED_FUNCTION_31_11();
      v32 = *(v17 + 16);

      goto LABEL_6;
    }

    swift_willThrow();
    v27 = v24;
    v28 = v26;
  }

  else
  {
    v29 = v39[0];
    sub_237C0593C();

    swift_willThrow();
  }

LABEL_6:
  v30 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_73();
}

uint64_t sub_237AB0E94(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3;
  v10 = a1;
  v11 = sub_237A254D8(a1);
  if (!a2)
  {
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  if (v11 == 0x8000000000000000 && a2 == -1)
  {
    goto LABEL_89;
  }

  v13 = v11 / a2;
  if (v11 / a2 < 0)
  {
    goto LABEL_86;
  }

  v58 = v3;
  v59 = v11;
  v4 = MEMORY[0x277D84F90];
  v63 = v10 >> 62;
  if (!v13)
  {
LABEL_56:
    v35 = v59 - v13 * a2;
    if (v35 < 1)
    {
      return v4;
    }

    v6 = v4;
    v4 = v13 * a2;
    v5 = v58;
    if ((v13 * a2) >> 64 == (v13 * a2) >> 63)
    {
      v7 = a2 - v35;
      if (!__OFSUB__(a2, v35))
      {
        v66 = MEMORY[0x277D84F90];
        sub_237C08FCC();
        v36 = 0x277CCA000uLL;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_237C08F8C();
        OUTLINED_FUNCTION_30_12();
        sub_237C08FFC();
        sub_237C08F9C();
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_237C08F8C();
        OUTLINED_FUNCTION_30_12();
        sub_237C08FFC();
        sub_237C08F9C();
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_237C08F8C();
        OUTLINED_FUNCTION_30_12();
        sub_237C08FFC();
        sub_237C08F9C();
        v37 = objc_allocWithZone(MEMORY[0x277CBFF48]);
        v38 = sub_237AC8938(v66, 65600);
        if (!v58)
        {
          v7 = v38;
          sub_237AB4E38(v38, 0.0);
          v5 = v59;
          if (v59 >= v4)
          {
            sub_237AB63F8(v4, v10);
            sub_237AB63F8(v59, v10);
            if ((v10 & 0xC000000000000001) == 0 || v4 == v59)
            {
            }

            else
            {
              if (v4 >= v59)
              {
                __break(1u);
                goto LABEL_105;
              }

              sub_2379E8EE0(0, &qword_27DE9ACF8, 0x277CBFF48);
              OUTLINED_FUNCTION_38_6();

              v40 = v4;
              do
              {
                v41 = v40 + 1;
                sub_237C08F3C();
                v40 = v41;
              }

              while (v59 != v41);
            }

            if (!v63)
            {
              if (v59 < 0)
              {
                __break(1u);
                goto LABEL_104;
              }

              v42 = (v10 & 0xFFFFFFFFFFFFFF8) + 32;
              v36 = (2 * v59) | 1;
              v10 = v4;
              goto LABEL_92;
            }

LABEL_91:

            sub_237C090FC();
            v42 = v46;
            v10 = v47;
            v36 = v48;
            if ((v48 & 1) == 0)
            {
LABEL_75:
              v43 = OUTLINED_FUNCTION_36_4();
              sub_237A55DCC(v43, v44, v10, v36);
              v42 = v45;
              goto LABEL_98;
            }

LABEL_92:
            sub_237C092CC();
            swift_unknownObjectRetain_n();
            v49 = swift_dynamicCastClass();
            if (!v49)
            {
              swift_unknownObjectRelease();
              v49 = MEMORY[0x277D84F90];
            }

            v50 = *(v49 + 16);

            if (!__OFSUB__(v36 >> 1, v10))
            {
              if (v50 == (v36 >> 1) - v10)
              {
                swift_dynamicCastClass();
                OUTLINED_FUNCTION_36_8();
                swift_unknownObjectRelease();
                v5 = v59;
                if (v42)
                {
                  goto LABEL_99;
                }

                v42 = MEMORY[0x277D84F90];
LABEL_98:
                swift_unknownObjectRelease();
LABEL_99:
                sub_2379E8EE0(0, &qword_27DE9ACF8, 0x277CBFF48);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACE8, &unk_237C0BAA0);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_237C10D30;
                *(inited + 32) = v7;
                v7 = v7;
                sub_237A96944(inited);
                v37 = sub_2379EB400(v42, 0, 65600);
                if (swift_isUniquelyReferenced_nonNull_native())
                {
LABEL_100:
                  v53 = *(v6 + 16);
                  v52 = *(v6 + 24);
                  if (v53 >= v52 >> 1)
                  {
                    OUTLINED_FUNCTION_106(v52);
                    sub_237BC13C0();
                    v6 = v57;
                  }

                  *(v6 + 16) = v53 + 1;
                  v54 = (v6 + 24 * v53);
                  v54[4] = v37;
                  v54[5] = v4;
                  v4 = v6;
                  v54[6] = v5;
                  return v4;
                }

LABEL_104:
                v55 = *(v6 + 16);
                sub_237BC13C0();
                v6 = v56;
                goto LABEL_100;
              }

              goto LABEL_106;
            }

LABEL_105:
            __break(1u);
LABEL_106:
            swift_unknownObjectRelease();
            v5 = v59;
            goto LABEL_75;
          }

LABEL_90:
          __break(1u);
          goto LABEL_91;
        }

        return v4;
      }

      goto LABEL_88;
    }

LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  sub_2379E8EE0(0, &qword_27DE9ACF8, 0x277CBFF48);
  v5 = 0;
  v62 = a2;
  v61 = v13;
  while (1)
  {
    v7 = v5 * a2;
    if ((v5 * a2) >> 64 != (v5 * a2) >> 63)
    {
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v6 = v7 + a2;
    if (__OFADD__(v7, a2))
    {
      goto LABEL_77;
    }

    if (v6 < v7)
    {
      goto LABEL_78;
    }

    if (v63)
    {
      v14 = sub_237C090EC();
    }

    else
    {
      v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v14 < v7)
    {
      goto LABEL_79;
    }

    if (v7 < 0)
    {
      goto LABEL_80;
    }

    if (v63)
    {
      v15 = sub_237C090EC();
    }

    else
    {
      v15 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v15 < v6)
    {
      goto LABEL_81;
    }

    if ((v10 & 0xC000000000000001) == 0 || v7 == v6)
    {

      if (!v63)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v7 >= v6)
      {
        goto LABEL_83;
      }

      v16 = v5 * a2;
      do
      {
        v17 = v16 + 1;
        sub_237C08F3C();
        v16 = v17;
        --a2;
      }

      while (a2);
      if (!v63)
      {
LABEL_27:
        v18 = v7;
        v19 = (2 * v6) | 1;
        goto LABEL_30;
      }
    }

    sub_237C090FC();
LABEL_30:
    v64 = v5;
    v65 = v6;
    v20 = v19 >> 1;
    if ((v19 & 1) == 0)
    {
      v6 = v18;
      v5 = v19 >> 1;
      v21 = __OFSUB__(v20, v18);
      v22 = v20 - v18;
      v23 = v21;
      swift_unknownObjectRetain();
      if (v23)
      {
        goto LABEL_82;
      }

      if (v22)
      {
        goto LABEL_36;
      }

LABEL_48:
      swift_unknownObjectRelease();
      v24 = MEMORY[0x277D84F90];
LABEL_49:
      v27 = v64;
      v6 = v65;
LABEL_50:
      swift_unknownObjectRelease();
      goto LABEL_51;
    }

    v6 = v18;
    v60 = v4;
    sub_237C092CC();
    swift_unknownObjectRetain_n();
    v26 = swift_dynamicCastClass();
    if (!v26)
    {
      swift_unknownObjectRelease();
      v26 = MEMORY[0x277D84F90];
    }

    v4 = *(v26 + 16);

    v5 = v20;
    v21 = __OFSUB__(v20, v6);
    v22 = v20 - v6;
    if (v21)
    {
      goto LABEL_84;
    }

    if (v4 != v22)
    {
      break;
    }

    v24 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    v4 = v60;
    v27 = v64;
    v6 = v65;
    if (!v24)
    {
      v24 = MEMORY[0x277D84F90];
      goto LABEL_50;
    }

LABEL_51:
    v28 = sub_2379EB400(v24, 0, 65600);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = *(v4 + 16);
      sub_237BC13C0();
      v4 = v33;
    }

    v30 = *(v4 + 16);
    v29 = *(v4 + 24);
    if (v30 >= v29 >> 1)
    {
      OUTLINED_FUNCTION_106(v29);
      sub_237BC13C0();
      v4 = v34;
    }

    v5 = v27 + 1;
    *(v4 + 16) = v30 + 1;
    v31 = (v4 + 24 * v30);
    v31[4] = v28;
    v31[5] = v7;
    v31[6] = v6;
    v13 = v61;
    a2 = v62;
    if (v5 == v61)
    {
      goto LABEL_56;
    }
  }

  swift_unknownObjectRelease();
  v4 = v60;
  if (!v22)
  {
    goto LABEL_48;
  }

LABEL_36:
  if (v22 < 1)
  {
    v24 = MEMORY[0x277D84F90];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACE8, &unk_237C0BAA0);
    v24 = swift_allocObject();
    v25 = _swift_stdlib_malloc_size(v24);
    v24[2] = v22;
    v24[3] = (2 * ((v25 - 32) / 8)) | 1;
  }

  swift_unknownObjectRelease();
  if (v6 != v5)
  {
    swift_arrayInitWithCopy();
    goto LABEL_49;
  }

  result = swift_unknownObjectRelease();
  __break(1u);
  return result;
}

void sub_237AB166C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  MLDataTable.subscript.getter();
  if (v55)
  {
    v10 = OUTLINED_FUNCTION_117_0();
    sub_2379DBC9C(v10, v11);
LABEL_17:
    v44 = *(a1 + 8);
    v54 = *a1;
    v43 = v54;
    LOBYTE(v55) = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237C0B660;
    *(inited + 32) = a2;
    *(inited + 40) = a3;
    LOBYTE(v56) = 5;

    sub_2379DBCF4(v43, v44);
    sub_2379F21A4(&v54, inited, &v56);
    sub_2379DBC9C(v54, v55);
    swift_setDeallocating();
    sub_237B9082C();
    return;
  }

  v12 = OUTLINED_FUNCTION_85();
  sub_2379DBCF4(v12, v13);
  sub_237A60248(&v56);
  v14 = OUTLINED_FUNCTION_85();
  sub_2379DBC9C(v14, v15);
  v16 = OUTLINED_FUNCTION_85();
  sub_2379DBC9C(v16, v17);
  if (v56 != 3)
  {
    goto LABEL_17;
  }

  MLDataTable.subscript.getter();
  v18 = v56;
  v19 = v57;
  OUTLINED_FUNCTION_103();
  v20 = swift_allocObject();
  *(v20 + 16) = a4;

  sub_237AC3F10(1, sub_237AB63F0, v20, v18, v19, &v54);

  v21 = OUTLINED_FUNCTION_37_0();
  sub_2379DBC9C(v21, v22);
  v58 = v54;
  v53 = v55;
  MLDataTable.subscript.getter();
  v23 = v54;
  v24 = v55;
  if (v55)
  {
    v25 = -1;
  }

  else
  {
    v26 = *(v54 + 2);

    v25 = sub_237A2F128();
    v27 = OUTLINED_FUNCTION_88();
    sub_2379DBC9C(v27, v28);
  }

  sub_2379DBC9C(v23, v24);
  sub_237AB08AC(v58, v53, &v56);
  v29 = v56;
  v30 = v57;
  if (v57)
  {
    v31 = -1;
  }

  else
  {
    v32 = v56[2];
    v33 = OUTLINED_FUNCTION_88();
    sub_2379DBCF4(v33, v34);
    v31 = sub_237A2F128();
    v35 = OUTLINED_FUNCTION_88();
    sub_2379DBC9C(v35, v36);
  }

  sub_2379DBC9C(v29, v30);
  if (__OFSUB__(v25, v31))
  {
    __break(1u);
LABEL_21:
    v38 = MEMORY[0x2383DCAF0](1, a4);
    goto LABEL_14;
  }

  if (v25 == v31)
  {

    sub_237AB09D4(v58, v53, a2, a3);
    goto LABEL_17;
  }

  v54 = 0;
  v55 = 0xE000000000000000;
  sub_237C08EDC();
  OUTLINED_FUNCTION_28_10();
  MEMORY[0x2383DC360]();
  v56 = (v25 - v31);
  v37 = sub_237C0924C();
  MEMORY[0x2383DC360](v37);

  OUTLINED_FUNCTION_28_10();
  MEMORY[0x2383DC360]();
  v5 = a4 & 0xC000000000000001;
  sub_237A254DC(1, (a4 & 0xC000000000000001) == 0, a4);
  if ((a4 & 0xC000000000000001) != 0)
  {
    goto LABEL_21;
  }

  v38 = *(a4 + 40);
LABEL_14:
  v39 = v38;
  v40 = [v38 integerValue];

  v56 = v40;
  v41 = sub_237C0924C();
  MEMORY[0x2383DC360](v41);

  MEMORY[0x2383DC360](8236, 0xE200000000000000);
  sub_237A254DC(2, v5 == 0, a4);
  if (v5)
  {
    v42 = MEMORY[0x2383DCAF0](2, a4);
  }

  else
  {
    v42 = *(a4 + 48);
  }

  v46 = v42;
  v47 = [v42 integerValue];

  v56 = v47;
  v48 = sub_237C0924C();
  MEMORY[0x2383DC360](v48);

  OUTLINED_FUNCTION_28_10();
  MEMORY[0x2383DC360](0xD00000000000003CLL);
  v49 = v54;
  v50 = v55;
  sub_2379E8AF0();
  OUTLINED_FUNCTION_50();
  v51 = swift_allocError();
  *v52 = v49;
  v52[1] = v50;
  OUTLINED_FUNCTION_23_3(v51, v52);
  swift_willThrow();
  sub_2379DBC9C(v58, v53);
}

uint64_t sub_237AB1AE0()
{
  sub_2379F3408();
  v0 = sub_237C08D8C();
  v1 = v0;
  v2 = v0[2];
  if (v2 == 3)
  {
    v13 = v0[4];
    v14 = v0[5];

    result = sub_237AB553C(v13, v14);
    if (v15)
    {
      goto LABEL_13;
    }

    if (v1[2] >= 2uLL)
    {
      v16 = v1[6];
      v17 = v1[7];

      result = sub_237AB553C(v16, v17);
      if (v18)
      {
        goto LABEL_13;
      }

      if (v1[2] >= 3uLL)
      {
        v24 = v1[8];
        v25 = v1[9];

        result = sub_237AB553C(v24, v25);
        if (v26)
        {
          goto LABEL_14;
        }

        return result;
      }

LABEL_20:
      __break(1u);
      return result;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v2 != 2)
  {
    if (v2 == 1)
    {
      v3 = v0[4];
      v4 = v0[5];

      result = sub_237AB553C(v3, v4);
      if ((v6 & 1) == 0)
      {
        return result;
      }

LABEL_14:
      sub_237C08EDC();
      OUTLINED_FUNCTION_28_10();
      MEMORY[0x2383DC360](0xD00000000000001FLL);
      v19 = OUTLINED_FUNCTION_13_20();
      MEMORY[0x2383DC360](v19);
      OUTLINED_FUNCTION_28_10();
      MEMORY[0x2383DC360](v20, v21);
      sub_2379E8AF0();
      OUTLINED_FUNCTION_50();
      v22 = swift_allocError();
      *v23 = 0;
      v23[1] = 0xE000000000000000;
      OUTLINED_FUNCTION_23_3(v22, v23);
      return swift_willThrow();
    }

LABEL_13:

    goto LABEL_14;
  }

  v7 = v0[4];
  v8 = v0[5];

  result = sub_237AB553C(v7, v8);
  if (v9)
  {
    goto LABEL_13;
  }

  if (v1[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = v1[6];
  v11 = v1[7];

  result = sub_237AB553C(v10, v11);
  if (v12)
  {
    goto LABEL_14;
  }

  return result;
}

void *sub_237AB1D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v56 = a6;
  v57 = a7;
  v54 = a4;
  v55 = a5;
  v53 = a3;
  v52 = a2;
  v61 = a1;
  v65[6] = *MEMORY[0x277D85DE8];
  v10 = sub_237C05ADC();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_2379E8EE0(0, &qword_27DE9C750, 0x277CE2E30);
  v16 = *(v13 + 16);
  v16(v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v60 = sub_237AB4EE0(v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  OUTLINED_FUNCTION_103();
  v17 = swift_allocObject();
  v58 = v17;
  *(v17 + 16) = MEMORY[0x277D84F90];
  v49[0] = v17 + 16;
  OUTLINED_FUNCTION_103();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v51 = (v18 + 16);
  OUTLINED_FUNCTION_103();
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v50 = (v19 + 16);
  v16(v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v61, v10);
  v20 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v21 = (v15 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = v18;
  (*(v13 + 32))(v22 + v20, v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  *(v22 + v21) = v19;
  v23 = v58;
  *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = v58;
  objc_allocWithZone(MEMORY[0x277CE2C98]);

  v59 = v19;

  v24 = sub_237AB6280(sub_237AB6628, v22);
  if (a8 < 0.01)
  {
    v65[0] = 0;
    v65[1] = 0xE000000000000000;
    sub_237C08EDC();
    OUTLINED_FUNCTION_41_8();
    sub_237C08A8C();
    MEMORY[0x2383DC360](0xD000000000000010, 0x8000000237C1A5A0);
    a8 = 30.0;
    sub_237C08A8C();
    MEMORY[0x2383DC360](0x776F6E2073706620, 0xE90000000000002ELL);
    sub_237C08C4C();
    v25 = OUTLINED_FUNCTION_36_4();
    sub_237BABE74(v25, v26);
  }

  v27 = [objc_allocWithZone(MEMORY[0x277CE2E38]) init];
  v28 = [objc_allocWithZone(MEMORY[0x277CE2E40]) initWithTimeInterval_];
  [v27 setCadence_];

  v65[0] = 0;
  v29 = v60;
  v30 = [v60 addRequest:v24 processingOptions:v27 error:v65];
  v31 = v65[0];
  if (v30 && (v32 = v65[0], sub_237C08BCC(), v63 = 0, v33 = [v29 analyzeTimeRange:v65 error:&v63], v31 = v63, v33))
  {
    v34 = v50;
    OUTLINED_FUNCTION_31_11();
    if (*v34 < 1)
    {
      v44 = v31;
    }

    else
    {
      v63 = 0;
      v64 = 0xE000000000000000;
      v35 = v31;
      sub_237C08EDC();

      v63 = 0x206F65646956;
      v64 = 0xE600000000000000;
      v36 = sub_237C05A9C();
      MEMORY[0x2383DC360](v36);

      MEMORY[0x2383DC360](0x2073616820, 0xE500000000000000);
      v62 = *v34;
      v37 = sub_237C0924C();
      MEMORY[0x2383DC360](v37);

      OUTLINED_FUNCTION_41_8();
      v38 = v63;
      v39 = v64;
      sub_237C08C1C();
      sub_237BABE74(v38, v39);
    }

    v45 = v51;
    OUTLINED_FUNCTION_31_11();
    v46 = *v45;
    if (!*v45)
    {

      OUTLINED_FUNCTION_31_11();
      v41 = *(v23 + 16);

      goto LABEL_9;
    }

    v47 = *v45;
    swift_willThrow();
    v48 = v46;
    v41 = v27;
  }

  else
  {
    v40 = v31;
    sub_237C0593C();

    swift_willThrow();
    v41 = v24;
    v24 = v29;
    v29 = v27;
  }

LABEL_9:
  v42 = *MEMORY[0x277D85DE8];
  return v41;
}

BOOL sub_237AB2370(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 < 0x21 && ((0x100003E01uLL >> v3) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_237C08ECC();
    if (!v2)
    {
      return v7;
    }

    return v5;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v4 = _swift_stdlib_strtod_clocale();
  if (!v4)
  {
    return 0;
  }

  return *v4 == 0;
}

void sub_237AB2468()
{
  OUTLINED_FUNCTION_74();
  v1 = v0;
  v43 = v2;
  v53 = sub_237C05ADC();
  v3 = OUTLINED_FUNCTION_0(v53);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v52 = v9 - v8;
  v10 = MEMORY[0x277D84F90];
  v57 = MEMORY[0x277D84F90];
  v56 = MEMORY[0x277D84F90];
  v11 = sub_237BA2F3C(v1);
  v12 = v11;
  v48 = *(v11 + 16);
  if (v48)
  {
    v13 = 0;
    v47 = v11 + 32;
    v51 = (v5 + 8);
    v46 = v1;
    v45 = v5;
    v44 = v11;
    while (v13 < *(v12 + 16))
    {
      v14 = (v47 + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      v17 = *(v1 + 16);

      v50 = v15;
      v55 = v16;
      if (v17 && (v18 = sub_237ACAC78(v16, v15), (v19 & 1) != 0))
      {
        v20 = *(*(v1 + 56) + 8 * v18);
      }

      else
      {
        v20 = v10;
      }

      v21 = *(v20 + 16);
      if (v21)
      {
        v49 = v13;
        sub_237AC8A74();
        v22 = v10;
        v23 = v20 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
        v54 = *(v5 + 72);
        v24 = *(v5 + 16);
        do
        {
          v24(v52, v23, v53);
          v25 = sub_237C05A9C();
          v27 = v26;
          (*v51)(v52, v53);
          v29 = *(v22 + 16);
          v28 = *(v22 + 24);
          if (v29 >= v28 >> 1)
          {
            OUTLINED_FUNCTION_106(v28);
            sub_237AC8A74();
          }

          *(v22 + 16) = v29 + 1;
          v30 = v22 + 16 * v29;
          *(v30 + 32) = v25;
          *(v30 + 40) = v27;
          v23 += v54;
          --v21;
        }

        while (v21);

        v1 = v46;
        v5 = v45;
        v10 = MEMORY[0x277D84F90];
        v12 = v44;
        v13 = v49;
      }

      else
      {

        v22 = v10;
      }

      v31 = *(v22 + 16);
      if (v31)
      {
        v32 = *(v22 + 16);
        v33 = sub_237C0898C();
        *(v33 + 16) = v31;
        v34 = v31 - 1;
        for (i = 32; ; i += 16)
        {
          v36 = (v33 + i);
          *v36 = v55;
          v36[1] = v50;
          if (!v34)
          {
            break;
          }

          --v34;
        }
      }

      else
      {

        v33 = v10;
      }

      ++v13;
      sub_237A96708(v33);
      sub_237A96708(v22);
      if (v13 == v48)
      {

        v37 = v57;
        v38 = v56;
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {

    v38 = MEMORY[0x277D84F90];
    v37 = MEMORY[0x277D84F90];
LABEL_23:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B520, &qword_237C0D648);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237C0B670;
    *(inited + 32) = 0x6C6562616CLL;
    *(inited + 40) = 0xE500000000000000;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
    *(inited + 72) = v40;
    v41 = sub_237AB66E4();
    *(inited + 48) = v37;
    *(inited + 80) = v41;
    *(inited + 88) = 0x7461506F65646976;
    *(inited + 128) = v40;
    *(inited + 136) = v41;
    *(inited + 96) = 0xE900000000000068;
    *(inited + 104) = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B540, &qword_237C14AD0);
    v42 = sub_237C085AC();
    MLDataTable.init(dictionary:)(v42, v43);
    OUTLINED_FUNCTION_73();
  }
}

uint64_t sub_237AB28BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = *a1;
  v15 = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B660;
  *(inited + 32) = a2;
  *(inited + 40) = a3;

  OUTLINED_FUNCTION_45_4();
  if (v9)
  {
    goto LABEL_3;
  }

  swift_setDeallocating();
  sub_237B9082C();
  v17 = swift_initStackObject();
  OUTLINED_FUNCTION_5_32(v17, v18, v19, v20, v21, v22, v23, v24, v71, a6, a7, a8, a4, v14, v25);
  v26 = v87;
  *(v27 + 32) = v87;
  *(v27 + 40) = a5;

  OUTLINED_FUNCTION_45_4();
  swift_setDeallocating();
  sub_237B9082C();
  v28 = swift_initStackObject();
  OUTLINED_FUNCTION_5_32(v28, v29, v30, v31, v32, v33, v34, v35, v72, v75, v79, v83, v87, v90, v36);
  *(v37 + 32) = a2;
  *(v37 + 40) = a3;

  OUTLINED_FUNCTION_42_5();
  swift_setDeallocating();
  sub_237B9082C();
  v38 = swift_initStackObject();
  OUTLINED_FUNCTION_5_32(v38, v39, v40, v41, v42, v43, v44, v45, v73, v76, v80, v84, v88, v91, v46);
  *(v47 + 32) = v26;
  *(v47 + 40) = a5;

  OUTLINED_FUNCTION_42_5();
  swift_setDeallocating();
  result = sub_237B9082C();
  v49 = v81;
  if (v81)
  {
    v50 = swift_initStackObject();
    OUTLINED_FUNCTION_5_32(v50, v51, v52, v53, v54, v55, v56, v57, v74, v77, v81, v85, v89, v92, v58);
    *(v59 + 32) = v77;
    *(v59 + 40) = v49;

    OUTLINED_FUNCTION_45_4();
    v60 = v85;
    swift_setDeallocating();
    result = sub_237B9082C();
  }

  else
  {
    v60 = v85;
  }

  if (a9)
  {
    v61 = swift_initStackObject();
    OUTLINED_FUNCTION_5_32(v61, v62, v63, v64, v65, v66, v67, v68, v74, v77, v81, v85, v89, v92, v69);
    *(v70 + 32) = v60;
    *(v70 + 40) = a9;

    OUTLINED_FUNCTION_45_4();
LABEL_3:
    swift_setDeallocating();
    return sub_237B9082C();
  }

  return result;
}

void sub_237AB2B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  a19 = v21;
  a20 = v22;
  a10 = v20;
  v24 = v23;
  v352 = v25;
  v351 = sub_237C05DBC();
  v26 = OUTLINED_FUNCTION_0(v351);
  v350 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_18_0();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  v346 = &v340 - v34;
  v349 = sub_237C0825C();
  v35 = OUTLINED_FUNCTION_0(v349);
  v348 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v39);
  v353 = sub_237C05ADC();
  v40 = OUTLINED_FUNCTION_0(v353);
  v354 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_4_4();
  v45 = MEMORY[0x28223BE20](v44);
  v47 = &v340 - v46;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_4_4();
  v50 = MEMORY[0x28223BE20](v49);
  v52 = &v340 - v51;
  MEMORY[0x28223BE20](v50);
  v54 = &v340 - v53;
  v55 = type metadata accessor for MLHandActionClassifier.DataSource();
  v56 = OUTLINED_FUNCTION_39_5(v55);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_2_0();
  v61 = v60 - v59;
  sub_237AB6644(v24, v60 - v59);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v354 + 32))(v52, v61, v353);
      sub_237C0822C();
      v117 = a10;
      sub_237A5C58C();
      if (!v117)
      {
        v193 = v118;
        OUTLINED_FUNCTION_36_3(v383);
        OUTLINED_FUNCTION_34_7();
        v194();
        sub_237AB2468();

        OUTLINED_FUNCTION_21_17();
        v220 = *(v219 - 256);
        v382 = v193;
        v383[0] = v220;
        v355 = v193;
        LOBYTE(v356) = v220;
        v221 = OUTLINED_FUNCTION_37_0();
        v223 = sub_2379DBCF4(v221, v222);
        OUTLINED_FUNCTION_6_32(v223, v224, v225, v226, v227, v228, v229, v230, v340);
        OUTLINED_FUNCTION_35_8();
        v231 = OUTLINED_FUNCTION_37_0();
        sub_2379DBC9C(v231, v271);
        v272 = OUTLINED_FUNCTION_10_26();
        v273(v272);
        goto LABEL_52;
      }

      OUTLINED_FUNCTION_36_3(v383);
      OUTLINED_FUNCTION_34_7();
      v119();
      v120 = OUTLINED_FUNCTION_10_26();
      v121(v120);
      goto LABEL_53;
    case 2u:
      v112 = v354;
      v113 = v353;
      (*(v354 + 32))(v54, v61, v353);
      sub_237C0822C();
      v114 = a10;
      sub_237A5D608();
      if (!v114)
      {
        v175 = v115;
        OUTLINED_FUNCTION_36_3(v383);
        OUTLINED_FUNCTION_34_7();
        v176();
        sub_237AB2468();

        OUTLINED_FUNCTION_21_17();
        v207 = *(v206 - 256);
        v382 = v175;
        v383[0] = v207;
        v355 = v175;
        LOBYTE(v356) = v207;
        v208 = OUTLINED_FUNCTION_37_0();
        v210 = sub_2379DBCF4(v208, v209);
        OUTLINED_FUNCTION_6_32(v210, v211, v212, v213, v214, v215, v216, v217, v340);
        OUTLINED_FUNCTION_35_8();
        v218 = OUTLINED_FUNCTION_37_0();
        sub_2379DBC9C(v218, v268);
        v269 = OUTLINED_FUNCTION_4_37();
        v270(v269);
        goto LABEL_52;
      }

      OUTLINED_FUNCTION_36_3(v383);
      OUTLINED_FUNCTION_34_7();
      v116();
      (*(v112 + 8))(v54, v113);
      goto LABEL_53;
    case 3u:
      sub_237A28130(v61);
      goto LABEL_12;
    case 4u:
      v87 = *v61;
      v88 = *(v61 + 8);
      v89 = *(v61 + 16);
      v353 = *(v61 + 24);
      v90 = *(v61 + 32);
      v91 = *(v61 + 40);
      v92 = *(v61 + 48);
      v354 = *(v61 + 56);
      v93 = *(v61 + 64);
      v94 = *(v61 + 72);
      v382 = v87;
      v383[0] = v88;
      v355 = v87;
      LOBYTE(v356) = v88;
      v95 = OUTLINED_FUNCTION_16_15();
      sub_2379DBCF4(v95, v96);
      v97 = OUTLINED_FUNCTION_16_15();
      sub_2379DBCF4(v97, v98);
      v351 = v89;
      v350 = v90;
      v99 = v90;
      v100 = v91;
      v101 = v91;
      v102 = v92;
      v103 = v92;
      v104 = v354;
      v105 = a10;
      sub_237AB28BC(&v355, v89, v353, v99, v101, v103, v354, v93, v94);
      a10 = v105;
      if (v105)
      {

        v106 = OUTLINED_FUNCTION_16_15();
        sub_2379DBC9C(v106, v107);
        v108 = OUTLINED_FUNCTION_16_15();
        sub_2379DBC9C(v108, v109);
        v110 = OUTLINED_FUNCTION_16_15();
        sub_2379DBC9C(v110, v111);
        goto LABEL_53;
      }

      v346 = v102;
      v347 = v93;
      v348 = v100;
      v143 = v350;
      v349 = v87;
      v144 = OUTLINED_FUNCTION_16_15();
      sub_2379DBC9C(v144, v145);
      if (v104)
      {
        sub_237B6C670(v146, v147, v148, v149, v150, v151, v152, v153, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359);
        OUTLINED_FUNCTION_20_13();
        sub_237B6DAB4();
        if ((v383[0] & 1) == 0)
        {
          v154 = OUTLINED_FUNCTION_85();
          sub_2379DBCF4(v154, v155);
          sub_237B6C588();
          v156 = OUTLINED_FUNCTION_85();
          sub_2379DBC9C(v156, v157);
        }
      }

      if (v94)
      {
        sub_237B6C670(v146, v147, v148, v149, v150, v151, v152, v153, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359);
        OUTLINED_FUNCTION_29_9();
        if ((v383[0] & 1) == 0)
        {
          v158 = OUTLINED_FUNCTION_85();
          sub_2379DBCF4(v158, v159);
          sub_237B6C588();
          v160 = OUTLINED_FUNCTION_85();
          sub_2379DBC9C(v160, v161);
        }
      }

      sub_237B6C670(v146, v147, v148, v149, v150, v151, v152, v153, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359);
      OUTLINED_FUNCTION_9_26();
      sub_237B6DAB4();

      if ((v383[0] & 1) == 0)
      {
        v170 = OUTLINED_FUNCTION_85();
        sub_2379DBCF4(v170, v171);
        sub_237B6C588();
        v172 = OUTLINED_FUNCTION_85();
        sub_2379DBC9C(v172, v173);
      }

      sub_237B6C670(v162, v163, v164, v165, v166, v167, v168, v169, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359);
      OUTLINED_FUNCTION_19_17();
      sub_237B6DAB4();

      OUTLINED_FUNCTION_32_8();
      if (v143)
      {
        v174 = &v382;
      }

      else
      {
        v203 = OUTLINED_FUNCTION_85();
        sub_2379DBCF4(v203, v204);
        sub_237B6C588();
      }

      v205 = v349;

      sub_2379DBC9C(v205, v88);
      goto LABEL_51;
    case 5u:
      v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
      v123 = *(v61 + v122[12] + 8);

      v124 = *(v61 + v122[16] + 8);

      v125 = *(v61 + v122[20] + 8);

      OUTLINED_FUNCTION_36_3(&a9);
      v126(v61, v351);
LABEL_12:
      v127 = MEMORY[0x2383DDC00](0);
      if (!v127)
      {
        __break(1u);
        JUMPOUT(0x237AB406CLL);
      }

      v128 = v127;
      type metadata accessor for CMLTable();
      OUTLINED_FUNCTION_103();
      v129 = swift_allocObject();
      *(v129 + 16) = v128;
      type metadata accessor for _DataTable();
      swift_allocObject();
      v382 = sub_237B6C578(v129);
      v383[0] = 0;
      sub_237C08C1C();
      sub_237BABE74(0xD0000000000000A7, 0x8000000237C1A6B0);
      goto LABEL_52;
    case 6u:
      v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F0, &unk_237C0B6E0);
      v131 = (v61 + v130[12]);
      v132 = v131[1];
      v354 = *v131;
      v133 = (v61 + v130[16]);
      v134 = v133[1];
      v353 = *v133;
      v135 = (v61 + v130[20]);
      v136 = v135[1];
      v349 = *v135;
      v137 = (v61 + v130[24]);
      v138 = v137[1];
      v348 = *v137;
      v139 = v350;
      v140 = v346;
      v141 = v351;
      (*(v350 + 32))(v346, v61, v351);
      (*(v139 + 16))(v32, v140, v141);
      v142 = a10;
      sub_237A70684(v32, 0, &v355);
      if (v142)
      {
        (*(v139 + 8))(v140, v141);

        goto LABEL_53;
      }

      v195 = v355;
      v196 = v356;
      v382 = v355;
      v383[0] = v356;
      sub_2379DBCF4(v355, v356);
      sub_237AB28BC(&v355, v354, v132, v353, v134, v349, v136, v348, v138);
      OUTLINED_FUNCTION_35_8();
      a10 = v132;
      sub_2379DBC9C(v195, v196);
      if (v136)
      {
        sub_237B6C670(v232, v233, v234, v235, v236, v237, v238, v239, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357);
        OUTLINED_FUNCTION_20_13();
        sub_237B6DAB4();
        if ((v383[0] & 1) == 0)
        {
          v240 = OUTLINED_FUNCTION_85();
          sub_2379DBCF4(v240, v241);
          sub_237B6C588();
          v242 = OUTLINED_FUNCTION_85();
          sub_2379DBC9C(v242, v243);
        }
      }

      v244 = v350;
      if (v138)
      {
        sub_237B6C670(v232, v233, v234, v235, v236, v237, v238, v239, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357);
        OUTLINED_FUNCTION_29_9();
        if ((v383[0] & 1) == 0)
        {
          v245 = OUTLINED_FUNCTION_85();
          sub_2379DBCF4(v245, v246);
          sub_237B6C588();
          v247 = OUTLINED_FUNCTION_85();
          sub_2379DBC9C(v247, v248);
        }
      }

      sub_237B6C670(v232, v233, v234, v235, v236, v237, v238, v239, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357);
      OUTLINED_FUNCTION_9_26();
      sub_237B6DAB4();

      if ((v383[0] & 1) == 0)
      {
        v257 = OUTLINED_FUNCTION_85();
        sub_2379DBCF4(v257, v258);
        sub_237B6C588();
        v259 = OUTLINED_FUNCTION_85();
        sub_2379DBC9C(v259, v260);
      }

      sub_237B6C670(v249, v250, v251, v252, v253, v254, v255, v256, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357);
      OUTLINED_FUNCTION_19_17();
      sub_237B6DAB4();

      OUTLINED_FUNCTION_32_8();
      if (v136)
      {
        v261 = &v382;
      }

      else
      {
        v262 = OUTLINED_FUNCTION_85();
        sub_2379DBCF4(v262, v263);
        sub_237B6C588();
      }

      (*(v244 + 8))(v346, v351);
LABEL_51:
      v264 = OUTLINED_FUNCTION_30();
      sub_2379DBC9C(v264, v265);
      goto LABEL_52;
    default:
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9E8, &unk_237C0F370);
      v63 = v62[12];
      v64 = (v61 + v62[16]);
      v66 = *v64;
      v65 = v64[1];
      v348 = v66;
      v351 = v65;
      v67 = (v61 + v62[20]);
      v68 = v67[1];
      v346 = *v67;
      v69 = (v61 + v62[24]);
      v71 = *v69;
      v70 = v69[1];
      v342 = v71;
      v350 = v70;
      v72 = v61 + v62[28];
      v74 = *v72;
      v73 = *(v72 + 8);
      v343 = v74;
      v349 = v73;
      v75 = v354;
      v76 = *(v354 + 32);
      v77 = v347;
      v78 = v353;
      v76(v347, v61, v353);
      v79 = v61 + v63;
      v80 = v345;
      v76(v345, v79, v78);
      v81 = v78;
      v82 = v75;
      (*(v75 + 16))(v47, v80, v81);
      LOBYTE(v355) = 1;
      *(&v355 + 1) = *v381;
      HIDWORD(v355) = *&v381[3];
      v356 = 44;
      v357 = 0xE100000000000000;
      v358 = 0;
      v359 = 0xE000000000000000;
      v360 = 92;
      v361 = 0xE100000000000000;
      v362 = 1;
      *v363 = *v380;
      *&v363[3] = *&v380[3];
      v364 = 34;
      v365 = 0xE100000000000000;
      v366 = 1;
      *v367 = *v379;
      *&v367[3] = *&v379[3];
      v368 = &unk_284ABEBF0;
      v369 = 10;
      v370 = 0xE100000000000000;
      v371 = 0;
      v372 = 0;
      v373 = 1;
      *v374 = *v378;
      *&v374[3] = *&v378[3];
      v375 = 0;
      v83 = a10;
      MLDataTable.init(contentsOf:options:)(v47, &v355, &v376);
      if (v83)
      {
        v84 = *(v75 + 8);
        v85 = OUTLINED_FUNCTION_36_4();
        v84(v85);

        v86 = v77;
LABEL_36:
        (v84)(v86, v81);
        goto LABEL_53;
      }

      v341 = v68;
      v177 = v349;
      v178 = v350;
      v382 = v376;
      v383[0] = v377;
      v179 = v348;
      v180 = v351;
      MLDataTable.subscript.getter();
      v181 = v355;
      v182 = v356;
      if ((v356 & 1) != 0 || (v183 = OUTLINED_FUNCTION_85(), sub_2379DBCF4(v183, v184), a10 = v181, sub_237A60248(&v376), v185 = OUTLINED_FUNCTION_85(), sub_2379DBC9C(v185, v186), v376 != 2))
      {

        v197 = OUTLINED_FUNCTION_30();
        sub_2379DBC9C(v197, v198);
        v355 = 0;
        v356 = 0xE000000000000000;
        sub_237C08EDC();

        v355 = 0x206E6D756C6F43;
        v356 = 0xE700000000000000;
        MEMORY[0x2383DC360](v179, v180);

        MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C1A760);
        OUTLINED_FUNCTION_21_17();
        v200 = *(v199 - 256);
        sub_2379E8AF0();
        OUTLINED_FUNCTION_50();
        v201 = swift_allocError();
        *v202 = v182;
        v202[1] = v200;
        OUTLINED_FUNCTION_23_3(v201, v202);
        swift_willThrow();
        v84 = *(v82 + 8);
        (v84)(v345, v81);
        sub_2379DBC9C(v382, v383[0]);
        v86 = v347;
        goto LABEL_36;
      }

      v187 = OUTLINED_FUNCTION_85();
      sub_2379DBCF4(v187, v188);
      sub_237A607E0(0, &v355);
      sub_2379DBC9C(a10, 0);
      v189 = v355;
      v190 = v356;
      if (v357 != 2)
      {
        sub_2379E8CE8(v355, v356, v357);
        v189 = 0;
        v190 = 0xE000000000000000;
      }

      v355 = v189;
      v356 = v190;
      sub_237C0883C();
      sub_237C059BC();

      v191 = [objc_opt_self() defaultManager];
      sub_237C05A9C();
      sub_237C086BC();
      OUTLINED_FUNCTION_36_8();

      v192 = [v191 fileExistsAtPath_];

      if (v192)
      {
        OUTLINED_FUNCTION_32_8();
      }

      else
      {
        v274 = OUTLINED_FUNCTION_88();
        sub_2379DBCF4(v274, v275);
        v276 = OUTLINED_FUNCTION_88();
        v278 = sub_2379DFC10(v276, v277);
        MEMORY[0x28223BE20](v278);
        v279 = sub_2379E1FAC(sub_237AB66A8, (&v340 - 4), v278);

        v355 = v279;
        MEMORY[0x28223BE20](v280);
        v338 = &v355;
        v281 = sub_237BBDC94(sub_2379F5678);
        v283 = v282;

        sub_237B6C670(v284, v285, v286, v287, v288, v289, v290, v291, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359);
        v355 = v281;
        LOBYTE(v356) = v283 & 1;
        sub_237B6CF70(&v355);
        sub_2379DBC9C(v355, v356);
        v192 = v382;
        if (v383[0])
        {
          LOBYTE(v191) = 1;
        }

        else
        {
          v292 = OUTLINED_FUNCTION_85();
          sub_2379DBCF4(v292, v293);
          sub_237B6C588();
          v294 = OUTLINED_FUNCTION_85();
          sub_2379DBC9C(v294, v295);
          LOBYTE(v191) = 0;
        }

        v82 = v354;
      }

      v355 = v192;
      LOBYTE(v356) = v191;
      v296 = OUTLINED_FUNCTION_30();
      sub_2379DBCF4(v296, v297);
      sub_237AB28BC(&v355, v179, v180, v346, v341, v342, v178, v343, v177);
      OUTLINED_FUNCTION_35_8();
      v298 = OUTLINED_FUNCTION_30();
      sub_2379DBC9C(v298, v299);
      if (v178)
      {
        sub_237B6C670(v300, v301, v302, v303, v304, v305, v306, v307, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357);
        OUTLINED_FUNCTION_20_13();
        sub_237B6DAB4();
        if ((v383[0] & 1) == 0)
        {
          v308 = OUTLINED_FUNCTION_85();
          sub_2379DBCF4(v308, v309);
          sub_237B6C588();
          v310 = OUTLINED_FUNCTION_85();
          sub_2379DBC9C(v310, v311);
        }
      }

      v312 = v346;
      if (v177)
      {
        sub_237B6C670(v300, v301, v302, v303, v304, v305, v306, v307, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357);
        OUTLINED_FUNCTION_29_9();
        if ((v383[0] & 1) == 0)
        {
          v313 = OUTLINED_FUNCTION_85();
          sub_2379DBCF4(v313, v314);
          sub_237B6C588();
          v315 = OUTLINED_FUNCTION_85();
          sub_2379DBC9C(v315, v316);
        }
      }

      sub_237B6C670(v300, v301, v302, v303, v304, v305, v306, v307, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357);
      OUTLINED_FUNCTION_9_26();
      sub_237B6DAB4();

      if ((v383[0] & 1) == 0)
      {
        v325 = OUTLINED_FUNCTION_85();
        sub_2379DBCF4(v325, v326);
        sub_237B6C588();
        v327 = OUTLINED_FUNCTION_85();
        sub_2379DBC9C(v327, v328);
      }

      v329 = v82;
      sub_237B6C670(v317, v318, v319, v320, v321, v322, v323, v324, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357);
      OUTLINED_FUNCTION_19_17();
      sub_237B6DAB4();

      OUTLINED_FUNCTION_32_8();
      if (v312)
      {
        v330 = &v382;
      }

      else
      {
        v331 = OUTLINED_FUNCTION_85();
        sub_2379DBCF4(v331, v332);
        sub_237B6C588();
      }

      v333 = v347;
      v334 = v353;

      sub_2379DBC9C(a10, 0);
      v335 = *(v329 + 8);
      v335(v344, v334);
      v335(v345, v334);
      v336 = OUTLINED_FUNCTION_30();
      sub_2379DBC9C(v336, v337);
      v335(v333, v334);
LABEL_52:
      v266 = v383[0];
      v267 = v352;
      *v352 = v382;
      *(v267 + 8) = v266;
LABEL_53:
      OUTLINED_FUNCTION_73();
      return;
  }
}

uint64_t sub_237AB4088@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_237C05ADC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  sub_237C05A2C();
  v11 = sub_237C05A9C();
  v13 = v12;
  result = (*(v5 + 8))(v8, v4);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

void sub_237AB4184()
{
  OUTLINED_FUNCTION_74();
  v2 = v1;
  v104 = sub_237C05ADC();
  v3 = OUTLINED_FUNCTION_0(v104);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = type metadata accessor for MLHandActionClassifier.DataSource();
  v12 = OUTLINED_FUNCTION_39_5(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v17 = (v16 - v15);
  sub_237AB6644(v2, v16 - v15);
  v77 = v17;
  if (swift_getEnumCaseMultiPayload() == 3)
  {
LABEL_31:
    sub_237A28130(v77);
    goto LABEL_32;
  }

  sub_237AB2B70(v2, v18, v19, v20, v21, v22, v23, v24, v76, v17, v78, v79, v81, v83, v85, v87, v88, v90, v92, v94);
  if (v0)
  {
    sub_237A28130(v77);
LABEL_32:
    OUTLINED_FUNCTION_73();
    return;
  }

  OUTLINED_FUNCTION_45_3();
  v25 = v98;
  v96 = BYTE8(v98);
  sub_2379DF938(v98, SBYTE8(v98), &v102);
  v26 = OUTLINED_FUNCTION_37_0();
  sub_2379DFAE0(v26, v27, v28);
  v29 = OUTLINED_FUNCTION_37_0();
  sub_2379DBC9C(v29, v30);
  v31 = sub_2379DFC10(v98, SBYTE8(v98));
  v86 = *(v31 + 16);
  if (!v86)
  {

LABEL_30:
    sub_2379DBC9C(v25, v96);
    goto LABEL_31;
  }

  v32 = 0;
  v84 = v31 + 32;
  v33 = MEMORY[0x277D84F98];
  v80 = v31;
  v82 = v98;
  while (v32 < *(v31 + 16))
  {
    v97 = *(v84 + 16 * v32);
    v93 = v32;
    v95 = v33;
    if (v96)
    {
      swift_willThrow();

      *&v98 = 0;
      *(&v98 + 1) = 0xE000000000000000;
      sub_237C08EDC();

      *&v98 = 0xD00000000000001FLL;
      *(&v98 + 1) = 0x8000000237C199C0;
      v35 = OUTLINED_FUNCTION_45_3();
      MEMORY[0x2383DC360](v35, 0xE500000000000000);
      MEMORY[0x2383DC360](34, 0xE100000000000000);
      v36 = v98;
      sub_2379E8AF0();
      OUTLINED_FUNCTION_50();
      v37 = swift_allocError();
      *v38 = v36;
      *(v38 + 16) = 0u;
      *(v38 + 32) = 0u;
      *(v38 + 48) = 1;
      *&v98 = v37;

      sub_2379DBCF4(v37, 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
      v39 = sub_237C0925C();
      if (v39)
      {
        v74 = v39;
        sub_2379DBC9C(v37, 1);
      }

      else
      {
        OUTLINED_FUNCTION_50();
        v74 = swift_allocError();
        *v40 = v37;
      }

      v75 = 1;
      sub_2379DBC9C(v37, 1);
    }

    else
    {
      v34 = v25[2];
      swift_retain_n();

      OUTLINED_FUNCTION_45_3();
      v53 = sub_237B6ACC0();

      type metadata accessor for _UntypedColumn();
      OUTLINED_FUNCTION_103();
      v54 = swift_allocObject();
      *(v54 + 16) = v53;
      v98 = v97;
      v99 = 2;
      swift_bridgeObjectRetain_n();
      v74 = sub_237A60280(4, v54, &v98);
      OUTLINED_FUNCTION_33_9();
      v75 = 0;
    }

    *&v98 = v25;
    BYTE8(v98) = v96;
    v100 = v74;
    v101 = v75;
    MLDataTable.subscript.getter(&v100, &v102);
    sub_2379DBC9C(v100, v101);
    v41 = v102;
    v89 = v103;
    sub_2379DF938(v102, v103, &v98);
    v42 = v98;
    v91 = v41;
    if (BYTE8(v98))
    {
      v102 = v98;
      v43 = OUTLINED_FUNCTION_117_0();
      sub_2379DBCF4(v43, v44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
      v45 = sub_237C0925C();
      if (v45)
      {
        v46 = v45;
        v47 = OUTLINED_FUNCTION_117_0();
        sub_2379DBC9C(v47, v48);
      }

      else
      {
        OUTLINED_FUNCTION_50();
        v46 = swift_allocError();
        *v55 = v42;
      }

      v56 = 1;
      v57 = OUTLINED_FUNCTION_117_0();
      sub_2379DBC9C(v57, v58);
    }

    else
    {
      v49 = *(*(v98 + 16) + 16);
      v50 = OUTLINED_FUNCTION_85();
      sub_2379DBCF4(v50, v51);
      v52 = sub_237B0E068(v49);
      v59 = v52;
      if (!v52)
      {
        goto LABEL_34;
      }

      type metadata accessor for CMLColumn();
      OUTLINED_FUNCTION_103();
      v60 = swift_allocObject();
      *(v60 + 16) = v59;
      v61 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v61, v62);
      type metadata accessor for _UntypedColumn();
      OUTLINED_FUNCTION_103();
      v46 = swift_allocObject();
      *(v46 + 16) = v60;
      v63 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v63, v64);
      v56 = 0;
    }

    v65 = sub_2379DFC10(v46, v56);
    v66 = *(v65 + 16);
    if (v66)
    {
      *&v98 = MEMORY[0x277D84F90];
      sub_237AC8AF4(0, v66, 0);
      v67 = v98;
      v68 = (v65 + 40);
      do
      {
        v70 = *(v68 - 1);
        v69 = *v68;

        sub_237C059BC();

        *&v98 = v67;
        v72 = *(v67 + 16);
        v71 = *(v67 + 24);
        if (v72 >= v71 >> 1)
        {
          v73 = OUTLINED_FUNCTION_106(v71);
          sub_237AC8AF4(v73, v72 + 1, 1);
          v67 = v98;
        }

        *(v67 + 16) = v72 + 1;
        (*(v5 + 32))(v67 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v72, v10, v104);
        v68 += 2;
        --v66;
      }

      while (v66);
    }

    v32 = v93 + 1;
    swift_isUniquelyReferenced_nonNull_native();
    *&v98 = v95;
    sub_237B40B0C();
    sub_2379DBC9C(v91, v89);

    v33 = v98;
    v31 = v80;
    v25 = v82;
    if (v93 + 1 == v86)
    {

      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_237AB4868(uint64_t result, uint64_t a2, double a3)
{
  if (result)
  {
    if (a2 < 0)
    {
      __break(1u);
    }

    else if (a2)
    {
      v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
      v4 = vdupq_n_s64(a2 - 1);
      v5 = xmmword_237C10D40;
      v6 = (result + 8);
      v7 = vdupq_n_s64(2uLL);
      do
      {
        v8 = vmovn_s64(vcgeq_u64(v4, v5));
        if (v8.i8[0])
        {
          *(v6 - 1) = a3;
        }

        if (v8.i8[4])
        {
          *v6 = a3;
        }

        v5 = vaddq_s64(v5, v7);
        v6 += 2;
        v3 -= 2;
      }

      while (v3);
    }
  }

  return result;
}

id sub_237AB48D0(unint64_t a1)
{
  v63[1] = *MEMORY[0x277D85DE8];
  if (sub_237A254D8(a1) < 1)
  {
    v63[0] = MEMORY[0x277D84F90];
    sub_237C08FCC();
    [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v19 = sub_237C08F8C();
    OUTLINED_FUNCTION_15_18(v19, v20, v21, v22, v23, v24, v25, v26, v55, v59, v63[0]);
    OUTLINED_FUNCTION_13_20();
    sub_237C08FFC();
    sub_237C08F9C();
    [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v27 = sub_237C08F8C();
    OUTLINED_FUNCTION_15_18(v27, v28, v29, v30, v31, v32, v33, v34, v57, v61, v63[0]);
    OUTLINED_FUNCTION_13_20();
    sub_237C08FFC();
    sub_237C08F9C();
    v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v35 = sub_237C08F8C();
    OUTLINED_FUNCTION_15_18(v35, v36, v37, v38, v39, v40, v41, v42, v58, v62, v63[0]);
    OUTLINED_FUNCTION_13_20();
    sub_237C08FFC();
    sub_237C08F9C();
    v43 = objc_allocWithZone(MEMORY[0x277CBFF48]);
    v44 = sub_237AC8938(v63[0], 65600);
    if (!v1)
    {
      v2 = v44;
      v45 = sub_237C08D4C();
      sub_237AB4868(v45, v46, 0.0);
    }
  }

  else
  {
    v4 = sub_237AB4CDC(a1);
    if (!v1)
    {
      v5 = v4;
      if (v4)
      {
        v63[0] = 0;
        v6 = [v4 keypointsMultiArrayAndReturnError_];
        if (v6)
        {
          v2 = v6;
          v7 = v63[0];
          v8 = [v2 shape];
          sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
          v9 = sub_237C0893C();

          v10 = sub_237A254D8(v9);
          if (v10)
          {
            v11 = v10;
            v56 = v5;
            v60 = v2;
            v63[0] = MEMORY[0x277D84F90];
            sub_237AC8A34();
            if (v11 < 0)
            {
              __break(1u);
            }

            v12 = 0;
            v13 = v63[0];
            do
            {
              if ((v9 & 0xC000000000000001) != 0)
              {
                v14 = MEMORY[0x2383DCAF0](v12, v9);
              }

              else
              {
                v14 = *(v9 + 8 * v12 + 32);
              }

              v15 = v14;
              v16 = [v14 integerValue];

              v63[0] = v13;
              v18 = v13[2];
              v17 = v13[3];
              if (v18 >= v17 >> 1)
              {
                OUTLINED_FUNCTION_106(v17);
                sub_237AC8A34();
                v13 = v63[0];
              }

              ++v12;
              v13[2] = v18 + 1;
              v13[v18 + 4] = v16;
            }

            while (v11 != v12);

            v5 = v56;
            v2 = v60;
          }

          else
          {

            v13 = MEMORY[0x277D84F90];
          }

          v50 = sub_237AC6FE0(v13, &unk_284AC0A78);

          if (v50)
          {
          }

          else
          {
            sub_2379E8AF0();
            OUTLINED_FUNCTION_50();
            v51 = swift_allocError();
            *v52 = 0xD00000000000002FLL;
            v52[1] = 0x8000000237C1A680;
            OUTLINED_FUNCTION_23_3(v51, v52);
            swift_willThrow();
          }
        }

        else
        {
          v49 = v63[0];
          OUTLINED_FUNCTION_36_8();
          sub_237C0593C();

          swift_willThrow();
        }
      }

      else
      {
        sub_2379E8AF0();
        OUTLINED_FUNCTION_50();
        v47 = swift_allocError();
        *v48 = 0xD00000000000002CLL;
        v48[1] = 0x8000000237C1A650;
        OUTLINED_FUNCTION_23_3(v47, v48);
        swift_willThrow();
      }
    }
  }

  v53 = *MEMORY[0x277D85DE8];
  return v2;
}

void *sub_237AB4CDC(unint64_t a1)
{
  v2 = v1;
  if (!(a1 >> 62))
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

LABEL_17:
  v4 = sub_237C090EC();
  if (!v4)
  {
    return 0;
  }

LABEL_3:
  v5 = a1 & 0xC000000000000001;
  sub_237A254DC(0, (a1 & 0xC000000000000001) == 0, a1);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x2383DCAF0](0, a1);
  }

  else
  {
    v6 = *(a1 + 32);
  }

  v7 = v6;
  v8 = 1;
  while (v4 != v8)
  {
    sub_237A254DC(v8, v5 == 0, a1);
    if (v5)
    {
      v9 = MEMORY[0x2383DCAF0](v8, a1);
    }

    else
    {
      v9 = *(a1 + 8 * v8 + 32);
    }

    v10 = v9;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    sub_237AB51F4(v7);
    if (v2)
    {

      return v7;
    }

    v12 = v11;
    sub_237AB51F4(v10);
    v2 = 0;
    if (v12 < v13)
    {

      ++v8;
      v7 = v10;
    }

    else
    {

      ++v8;
    }
  }

  return v7;
}

uint64_t sub_237AB4E38(void *a1, double a2)
{
  v4 = a1;
  result = sub_237C08D4C();
  if (!v2 && result)
  {
    if (v6 < 0)
    {
      __break(1u);
    }

    else if (v6)
    {
      v7 = (v6 + 1) & 0xFFFFFFFFFFFFFFFELL;
      v8 = vdupq_n_s64(v6 - 1);
      v9 = xmmword_237C10D40;
      v10 = (result + 8);
      v11 = vdupq_n_s64(2uLL);
      do
      {
        v12 = vmovn_s64(vcgeq_u64(v8, v9));
        if (v12.i8[0])
        {
          *(v10 - 1) = a2;
        }

        if (v12.i8[4])
        {
          *v10 = a2;
        }

        v9 = vaddq_s64(v9, v11);
        v10 += 2;
        v7 -= 2;
      }

      while (v7);
    }
  }

  return result;
}

id sub_237AB4EE0(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_237C059EC();
  v4 = [v2 initWithURL_];

  v5 = sub_237C05ADC();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

void sub_237AB4F7C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    OUTLINED_FUNCTION_44_7();
    v9 = *(a3 + 16);
    *(a3 + 16) = a2;
    v10 = a2;
    v11 = v9;
  }

  else
  {
    v14 = sub_237AB6530(a1);
    if (v14)
    {
      sub_237B1ED84(v14);
      OUTLINED_FUNCTION_38_6();

      if (v6)
      {
        if (!sub_237A254D8(v6))
        {
          swift_beginAccess();
          v15 = *(a5 + 16);
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            __break(1u);
            return;
          }

          *(a5 + 16) = v17;
        }

        v21 = sub_237AB48D0(v6);

        v22 = v21;
        MLDataValue.MultiArrayType.init(_:)(v22);
        swift_beginAccess();
        sub_237A9D17C();
        v23 = *(*(a6 + 16) + 16);
        sub_237A9D238(v23);
        v24 = *(a6 + 16);
        *(v24 + 16) = v23 + 1;
        *(v24 + 8 * v23 + 32) = v25;
        *(a6 + 16) = v24;
        swift_endAccess();

        return;
      }
    }

    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD00000000000003BLL, 0x8000000237C1A5E0);
    sub_237C05ADC();
    sub_237AB6760(&qword_27DE9B3B8, MEMORY[0x277CC9260]);
    v18 = sub_237C0924C();
    MEMORY[0x2383DC360](v18);

    MEMORY[0x2383DC360](46, 0xE100000000000000);
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v19 = swift_allocError();
    *v20 = 0;
    v20[1] = 0xE000000000000000;
    OUTLINED_FUNCTION_23_3(v19, v20);
    OUTLINED_FUNCTION_44_7();
    v11 = *(a3 + 16);
    *(a3 + 16) = v19;
  }
}

uint64_t sub_237AB51F4(void *a1)
{
  v40[1] = *MEMORY[0x277D85DE8];
  v2 = sub_237C086BC();
  v40[0] = 0;
  v3 = [a1 recognizedPointsForGroupKey:v2 error:v40];

  v4 = v40[0];
  if (v3)
  {
    type metadata accessor for VNRecognizedPointKey(0);
    sub_2379E8EE0(0, &qword_27DE9C758, 0x277CE2DC0);
    sub_237AB6760(&qword_27DE9A910, type metadata accessor for VNRecognizedPointKey);
    v5 = sub_237C0857C();
    v6 = v4;

    v9 = 0;
    v10 = 1 << *(v5 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    *&v7 = -1.0;
    v36 = v7;
    *&v7 = 0x408F400000000000;
    *&v8 = -1.0;
    v38 = v8;
    v39 = v7;
    v37 = v7;
    while (1)
    {
      v14 = v9;
      if (!v12)
      {
        break;
      }

LABEL_9:
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v16 = *(*(v5 + 56) + ((v9 << 9) | (8 * v15)));
      [v16 confidence];
      if (v17 > 0.2)
      {
        v18 = v16;
        [v18 location];
        v20 = v37;
        if (*&v37 >= v19)
        {
          *&v20 = v19;
        }

        v37 = v20;
        [v18 location];
        v22 = v39;
        if (*&v39 >= v21)
        {
          *&v22 = v21;
        }

        v39 = v22;
        [v18 location];
        v24 = v38;
        if (v23 > *&v38)
        {
          *&v24 = v23;
        }

        v38 = v24;
        [v18 location];
        v26 = v25;

        *(&v27 + 1) = *(&v36 + 1);
        if (v26 > *&v36)
        {
          *&v27 = v26;
          v36 = v27;
        }
      }

      else
      {
      }
    }

    while (1)
    {
      v9 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
      }

      if (v9 >= v13)
      {
        break;
      }

      v12 = *(v5 + 64 + 8 * v9);
      ++v14;
      if (v12)
      {
        goto LABEL_9;
      }
    }

    __asm { FMOV            V2.2D, #1.0 }
  }

  else
  {
    v34 = v40[0];
    sub_237C0593C();

    result = swift_willThrow();
  }

  v35 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237AB553C(uint64_t a1, uint64_t a2)
{
  sub_237AB2370(a1, a2);

  return 0;
}

void sub_237AB559C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a1 + 16) == 3)
  {
    v5 = *(a1 + 8);
    v7 = *a1;
    v6 = v7;

    sub_237AB5614(&v7, a2, a3);
    sub_2379E8CE8(v6, v5, 3);
  }

  else
  {
    *a3 = 0;
  }
}

void sub_237AB5614(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v7 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  OUTLINED_FUNCTION_38_6();

  v9 = sub_237AC8938(v8, 65600);
  if (!v9)
  {
    goto LABEL_62;
  }

  v10 = v9;
  v11 = sub_237C08D4C();
  sub_237A2E9F4();
  if (sub_237A01878() != 1)
  {

LABEL_62:
    *a3 = 0;
    return;
  }

  v132 = 0;
  v133 = 0;
  v131 = v6;

  v123 = v11;
  while (1)
  {
    sub_237BABD8C(&v128);
    v12 = *(&v128 + 1);
    *v124 = v128;
    if (v130 != 3)
    {
      if (v130 == 255)
      {

        MLDataValue.MultiArrayType.init(_:)(v10);
        *a3 = v128;
        return;
      }

      sub_2379E9268(v128, *(&v128 + 1), v129, v130);

      goto LABEL_69;
    }

    v13 = OUTLINED_FUNCTION_37_6();
    v119 = v14;
    sub_2379E9288(v13, v14, 3);
    sub_237A2E9F4();
    v118 = v12;
    v15 = sub_237A01878();
    sub_237A254DC(1, v11, a2);
    if (v3)
    {
      v16 = MEMORY[0x2383DCAF0](1, a2);
    }

    else
    {
      v16 = *(a2 + 40);
    }

    v17 = v16;
    v18 = [v16 integerValue];

    if (v15 != v18)
    {

      OUTLINED_FUNCTION_1_39();
      sub_2379E9268(v106, v107, v108, v109);
      OUTLINED_FUNCTION_1_39();
      sub_2379E9268(v110, v111, v112, v113);
      goto LABEL_62;
    }

    sub_2379E9288(v118, v119, 3);
    v116 = a2;
    v117 = a3;
    v121 = v10;
LABEL_9:
    sub_237BABD8C(&v128);
    v19 = *(&v128 + 1);
    *v125 = v128;
    v20 = v130;
    if (v130 == 3)
    {
      break;
    }

    if (v130 != 255)
    {
      v97 = v129;
      sub_2379E9268(v124[0], v118, v119, 3);
      sub_2379E9268(v124[0], v118, v119, 3);
      v98 = v125[0];
      v99 = v19;
      v100 = v97;
      v101 = v20;
LABEL_68:
      sub_2379E9268(v98, v99, v100, v101);

LABEL_69:

      goto LABEL_62;
    }

    v11 = *v124;
    OUTLINED_FUNCTION_1_39();
    sub_2379E9268(v81, v82, v83, v84);
    OUTLINED_FUNCTION_1_39();
    sub_2379E9268(v85, v86, v87, v88);
  }

  v21 = OUTLINED_FUNCTION_37_6();
  v120 = v22;
  sub_2379E9288(v21, v22, 3);
  sub_237A2E9F4();
  v126 = v19;
  v23 = sub_237A01878();
  sub_237A254DC(2, v18, a2);
  if (v3)
  {
    v24 = MEMORY[0x2383DCAF0](2, a2);
  }

  else
  {
    v24 = *(a2 + 48);
  }

  v25 = v24;
  v26 = [v24 integerValue];

  if (v23 != v26)
  {
    sub_2379E9268(v125[0], v126, v120, 3);
    OUTLINED_FUNCTION_1_39();
    sub_2379E9268(v102, v103, v104, v105);
    sub_2379E9268(v125[0], v126, v120, 3);
    OUTLINED_FUNCTION_1_39();
    goto LABEL_68;
  }

  v18 = v126;
  sub_2379E9288(v126, v120, 3);
  v27 = 0;
  while (1)
  {
    while (1)
    {
      if (v27 == sub_237A2E9F4())
      {
        v77 = OUTLINED_FUNCTION_36_4();
        sub_2379E9268(v77, v78, v120, 3);
        v79 = OUTLINED_FUNCTION_36_4();
        sub_2379E9268(v79, v80, v120, 3);

        a2 = v116;
        a3 = v117;
        goto LABEL_9;
      }

      v28 = sub_237A2E9C8(v27);
      switch(sub_237A2E910())
      {
        case 1u:
          v55 = *(v28 + 16);

          sub_237B0E848();
          v57 = v56;

          v31 = 0;
          v30 = v57;
          v32 = 1;
          goto LABEL_35;
        case 2u:

          v30 = sub_237A2DE60();
          v31 = v53;
          v32 = 2;

          goto LABEL_35;
        case 3u:
          v54 = sub_237B0DD68(*(v28 + 16));
          if (!v54)
          {
            goto LABEL_84;
          }

          type metadata accessor for CMLSequence();
          v30 = swift_allocObject();
          v31 = 0;
          *(v30 + 16) = v54;
          *(v30 + 24) = 1;
          v32 = 3;
          goto LABEL_35;
        case 4u:
          v33 = sub_237B0DDC8(*(v28 + 16));
          if (!v33)
          {
            goto LABEL_83;
          }

          type metadata accessor for CMLDictionary();
          *(swift_initStackObject() + 16) = v33;
          v30 = MEMORY[0x277D84F98];
          v127 = MEMORY[0x277D84F98];
          swift_retain_n();
          v34 = 0;
          break;
        case 5u:

          v30 = 0;
          v31 = 0;
          v32 = 6;
          goto LABEL_35;
        case 6u:

          sub_237AC8278(v58, &v128);
          v30 = v128;
          if (!v128)
          {
            goto LABEL_85;
          }

          v31 = 0;
          v32 = 5;
          goto LABEL_35;
        default:
          v29 = *(v28 + 16);

          v30 = sub_237B0ECCC(v29);

          v31 = 0;
          v32 = 0;
          goto LABEL_35;
      }

      while (v34 != sub_237A2EAA4())
      {
        sub_237A2EB64(v34);
        v34 = sub_237B6A974(v34);
        v35 = sub_237A2DE60();
        v37 = v36;

        sub_237AFC548(v38, &v128);

        v39 = v128;
        v122 = v129;
        *&v128 = v35;
        *(&v128 + 1) = v37;
        LOBYTE(v129) = 2;
        v40 = sub_237ACB180(v35, v37, 2);
        v42 = *(v30 + 16);
        v43 = (v41 & 1) == 0;
        v44 = __OFADD__(v42, v43);
        v45 = v42 + v43;
        if (v44)
        {
          goto LABEL_81;
        }

        v46 = v41;
        if (*(v30 + 24) < v45)
        {
          sub_237ABF994(v45, 1);
          v30 = v127;
          v40 = sub_237ACB180(v128, *(&v128 + 1), v129);
          if ((v46 & 1) != (v47 & 1))
          {
            sub_237C0932C();
            __break(1u);
LABEL_88:
            OUTLINED_FUNCTION_50();
            v114 = swift_allocError();
            swift_willThrow();

            v115 = v114;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
            if (swift_dynamicCast())
            {
              sub_237C08EDC();
              MEMORY[0x2383DC360](0xD00000000000001BLL, 0x8000000237C17280);
              sub_237C0907C();
              MEMORY[0x2383DC360](39, 0xE100000000000000);
              sub_237C090DC();
              __break(1u);
            }

            sub_2379E8CE8(v39, *(&v39 + 1), v122);

            sub_2379E8CE8(v128, *(&v128 + 1), v129);

            goto LABEL_86;
          }
        }

        if (v46)
        {
          goto LABEL_88;
        }

        *(v30 + 8 * (v40 >> 6) + 64) |= 1 << v40;
        v48 = *(v30 + 48) + 24 * v40;
        v49 = v129;
        *v48 = v128;
        *(v48 + 16) = v49;
        v50 = *(v30 + 56) + 24 * v40;
        *v50 = v39;
        *(v50 + 16) = v122;
        v51 = *(v30 + 16);
        v44 = __OFADD__(v51, 1);
        v52 = v51 + 1;
        if (v44)
        {
          goto LABEL_82;
        }

        *(v30 + 16) = v52;
      }

      v32 = 4;

      v31 = 0;
      v10 = v121;
LABEL_35:
      if (v27 >= sub_237A2E9F4())
      {
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);

        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);

        __break(1u);

        __break(1u);

        __break(1u);

        __break(1u);
        while (1)
        {
LABEL_86:
          swift_unexpectedError();
          __break(1u);
        }
      }

      v59 = [v10 strides];
      sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
      v60 = sub_237C0893C();

      if ((v60 & 0xC000000000000001) != 0)
      {
        v61 = MEMORY[0x2383DCAF0](0, v60);
      }

      else
      {
        if (!*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_74;
        }

        v61 = *(v60 + 32);
      }

      v62 = v61;

      v63 = [v62 integerValue];

      v64 = *v124 * v63;
      if ((*v124 * v63) >> 64 != (*v124 * v63) >> 63)
      {
        goto LABEL_73;
      }

      v65 = [v10 strides];
      v66 = sub_237C0893C();

      if ((v66 & 0xC000000000000001) != 0)
      {
        v67 = MEMORY[0x2383DCAF0](1, v66);
      }

      else
      {
        if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
          goto LABEL_76;
        }

        v67 = *(v66 + 40);
      }

      v68 = v67;

      v69 = [v68 integerValue];

      v70 = *v125 * v69;
      if ((*v125 * v69) >> 64 != (*v125 * v69) >> 63)
      {
        goto LABEL_75;
      }

      v3 = v64 + v70;
      if (__OFADD__(v64, v70))
      {
        goto LABEL_77;
      }

      v71 = [v10 strides];
      v72 = sub_237C0893C();

      if ((v72 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2383DCAF0](2, v72);
      }

      else
      {
        if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
        {
          goto LABEL_79;
        }

        v73 = *(v72 + 48);
      }

      OUTLINED_FUNCTION_36_8();

      v74 = [v71 integerValue];

      v75 = v27 * v74;
      if ((v27 * v74) >> 64 != (v27 * v74) >> 63)
      {
        goto LABEL_78;
      }

      v44 = __OFADD__(v3, v75);
      v76 = v3 + v75;
      if (v44)
      {
        goto LABEL_80;
      }

      ++v27;
      if (v32)
      {
        break;
      }

      *(v123 + 8 * v76) = v30;
      v18 = v126;
    }

    v18 = v126;
    if (v32 != 1)
    {
      break;
    }

    *(v123 + 8 * v76) = v30;
  }

  sub_2379E8CE8(v30, v31, v32);
  sub_2379E9268(v125[0], v126, v120, 3);
  OUTLINED_FUNCTION_1_39();
  sub_2379E9268(v89, v90, v91, v92);
  sub_2379E9268(v125[0], v126, v120, 3);
  OUTLINED_FUNCTION_1_39();
  sub_2379E9268(v93, v94, v95, v96);

  *v117 = 0;
}

id sub_237AB6280(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v6[4] = a1;
    v6[5] = a2;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_237AB6330;
    v6[3] = &block_descriptor_6;
    v3 = _Block_copy(v6);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithCompletionHandler_];
  _Block_release(v3);
  return v4;
}

void sub_237AB6330(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

uint64_t sub_237AB63BC()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_103();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_237AB63F8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_237C090EC();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

_BYTE *sub_237AB6450@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

unsigned __int8 *sub_237AB64BC@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[16];
  if (v3 == 255)
  {
    __break(1u);
  }

  else
  {
    v5 = *(result + 3);
    v4 = *(result + 4);
    v7 = *result;
    v6 = *(result + 1);
    *a2 = *result;
    *(a2 + 8) = v6;
    *(a2 + 16) = v3;
    *(a2 + 24) = v5;
    *(a2 + 32) = v4;
    v8 = result[40];
    *(a2 + 40) = v8;
    sub_2379E9288(v7, v6, v3);

    return sub_2379E9288(v5, v4, v8);
  }

  return result;
}

uint64_t sub_237AB6530(void *a1)
{
  v1 = [a1 results];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_2379E8EE0(0, &qword_27DE9C760, 0x277CE2D70);
  v3 = sub_237C0893C();

  return v3;
}

unsigned __int8 *sub_237AB65A0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v4 = *a1;
  v5[0] = v2;
  *(v5 + 9) = *(a1 + 25);
  return sub_237AB64BC(&v4, a2);
}

uint64_t sub_237AB65D4()
{
  OUTLINED_FUNCTION_103();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_237AB6644(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLHandActionClassifier.DataSource();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_237AB66E4()
{
  result = qword_27DE9B528;
  if (!qword_27DE9B528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9AE60, &qword_237C0D000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B528);
  }

  return result;
}

uint64_t sub_237AB6760(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_11Tm()
{
  v1 = sub_237C05ADC();
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);
  v10 = *(v0 + v7);

  v11 = *(v0 + v8);

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v4 | 7);
}

void sub_237AB688C(void *a1, void *a2)
{
  v5 = *(sub_237C05ADC() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_237AB4F7C(a1, a2, *(v2 + 16), v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

__n128 OUTLINED_FUNCTION_5_32(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a15)
{
  result = a15;
  a1[1] = a15;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_237AB28BC(v9 - 296, 0x7461506F65646976, 0xE900000000000068, 0x6C6562616CLL, 0xE500000000000000, 0, 0, 0, a9);
}

uint64_t OUTLINED_FUNCTION_15_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *(a11 + 16);

  return sub_237C08FEC();
}

void OUTLINED_FUNCTION_29_9()
{

  sub_237B6DAB4();
}

uint64_t OUTLINED_FUNCTION_30_12()
{
  v2 = *(*(v0 - 72) + 16);

  return sub_237C08FEC();
}

uint64_t OUTLINED_FUNCTION_31_11()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_33_9()
{
  sub_2379E8CE8(*(v1 - 144), *(v1 - 136), *(v1 - 128));
  sub_2379DBC9C(v0, 0);
  v2 = *(v1 - 160);
}

void OUTLINED_FUNCTION_41_8()
{

  JUMPOUT(0x2383DC360);
}

uint64_t OUTLINED_FUNCTION_42_5()
{

  return sub_2379F21A4(v1 - 152, v0, (v1 - 65));
}

uint64_t OUTLINED_FUNCTION_44_7()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_45_4()
{

  sub_2379F2B84();
}

uint64_t sub_237AB6BD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a2;
  v66 = a3;
  v5 = sub_237C0926C();
  v6 = OUTLINED_FUNCTION_0(v5);
  v59 = v7;
  v60 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v57[3] = v11 - v10;
  v58 = sub_237C060DC();
  v12 = OUTLINED_FUNCTION_0(v58);
  v57[2] = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v57[1] = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC8, &qword_237C10CF0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  OUTLINED_FUNCTION_66_1();
  v20 = sub_237C0683C();
  v21 = OUTLINED_FUNCTION_0(v20);
  v62 = v22;
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v21);
  v64 = v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = v57 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v63 = v57 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = v57 - v32;
  v35 = *a1;
  v34 = a1[1];
  v36 = sub_237C0616C();
  OUTLINED_FUNCTION_4(v36);
  v38 = *(v37 + 16);
  v39 = OUTLINED_FUNCTION_4_38();
  v38(v39);
  v40 = OUTLINED_FUNCTION_1_40();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
  v65 = v33;
  sub_237C0663C();
  v44 = sub_237AC934C(0x10020);
  v45 = OUTLINED_FUNCTION_4_38();
  v38(v45);
  v46 = OUTLINED_FUNCTION_1_40();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
  v50 = v44;
  sub_237B699C8(v50, v3, v29);
  v51 = v63;
  sub_237C0666C();
  v52 = v62;
  v53 = *(v62 + 8);
  v53(v29, v20);
  v54 = *(v52 + 16);
  v54(v29, v51, v20);
  v55 = v65;
  v54(v64, v65, v20);
  sub_237C0607C();

  v53(v51, v20);
  return (v53)(v55, v20);
}

uint64_t sub_237AB70FC(id *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC8, &qword_237C10CF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  [*a1 integerValue];
  v10 = *(*(a2 + *(type metadata accessor for MLFewShotSoundClassifier() + 32)) + 16);
  v11 = sub_237C0616C();
  OUTLINED_FUNCTION_4(v11);
  (*(v12 + 16))(v9, a3, v11);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  return sub_237C0663C();
}

uint64_t sub_237AB7228@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_237C0926C();
  v7 = OUTLINED_FUNCTION_0(v6);
  v46 = v8;
  v47 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  v45 = sub_237C060DC();
  v14 = OUTLINED_FUNCTION_0(v45);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC8, &qword_237C10CF0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  OUTLINED_FUNCTION_66_1();
  v44 = sub_237C0683C();
  v24 = OUTLINED_FUNCTION_0(v44);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2_0();
  v31 = v30 - v29;
  v32 = *a1;
  v33 = sub_237AC934C(0x10020);
  if (v3)
  {

    v34 = sub_237C0616C();
    OUTLINED_FUNCTION_4(v34);
    (*(v35 + 16))(v4, a2, v34);
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v34);
    sub_237B699C8(v32, v4, v31);
    (*(v16 + 104))(v21, *MEMORY[0x277D2CCC8], v45);
    (*(v46 + 104))(v13, *MEMORY[0x277D84660], v47);
    sub_237C0675C();
    (*(v46 + 8))(v13, v47);
    (*(v16 + 8))(v21, v45);
    return (*(v26 + 8))(v31, v44);
  }

  else
  {
    v37 = v33;
    v38 = sub_237C0616C();
    OUTLINED_FUNCTION_4(v38);
    (*(v39 + 16))(v4, a2, v38);
    v40 = OUTLINED_FUNCTION_1_40();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
    return sub_237B699C8(v37, v4, a3);
  }
}

uint64_t sub_237AB75B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_237C06DCC();
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_237AB764C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_237C06DCC();
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AnyTreeClassifier()
{
  result = qword_27DE9C770;
  if (!qword_27DE9C770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237AB7718()
{
  sub_2379FC328();
  if (v0 <= 0x3F)
  {
    sub_237A0C8CC();
    if (v1 <= 0x3F)
    {
      sub_237C06DCC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_237AB7814@<X0>(char *a1@<X8>)
{
  v3 = sub_237C0704C();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  v13 = *v1;
  v12 = v1[1];
  v14 = v1[3];
  v20 = *(v1 + 32);
  v15 = *(v14 + 16);
  v16 = *(type metadata accessor for AnyTreeClassifier() + 32);

  sub_237C06D8C();
  *a1 = v13;
  *(a1 + 1) = v12;
  v17 = type metadata accessor for AnyTreeClassifierModel();
  *(a1 + 3) = 0;
  *(a1 + 4) = 0;
  *(a1 + 2) = 0;
  (*(v6 + 32))(&a1[*(v17 + 24)], v11, v3);
  v18 = &a1[*(v17 + 28)];
  *v18 = v14;
  v18[8] = v20;
}

uint64_t sub_237AB7980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B040, &unk_237C0DFD0);
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF88, &unk_237C0C700);
  OUTLINED_FUNCTION_20(v9);
  v11 = *(v10 + 64) + 15;
  v5[10] = swift_task_alloc();
  v12 = sub_237C0602C();
  v5[11] = v12;
  v13 = *(v12 - 8);
  v5[12] = v13;
  v14 = *(v13 + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237AB7AF0, 0, 0);
}

uint64_t sub_237AB7AF0()
{
  v1 = v0[2];
  if (v1[2])
  {
    v2 = v1[3];
    v3 = v1[4];
  }

  else
  {
    v25 = v0[3];
    v26 = *(v0[6] + 16);
    v27 = swift_task_alloc();
    *(v27 + 16) = v25;
    v39 = sub_2379E22EC(sub_237A1DC7C, v27, v26);

    v1[2] = v39;
    v1[3] = 0xD000000000000013;
    v1[4] = 0x8000000237C17BE0;
    v1 = v0[2];
  }

  v4 = type metadata accessor for AnyTreeClassifierModel();
  v5 = v1 + *(v4 + 28);
  v6 = *v5;
  if (*(*v5 + 16))
  {
    v7 = v5[8];
  }

  else
  {
    v28 = v0[14];
    v30 = v0[10];
    v29 = v0[11];
    v31 = v0[6];
    v32 = v0[3];
    v33 = *v31;
    v34 = v31[1];
    sub_237C05DFC();
    __swift_storeEnumTagSinglePayload(v30, 1, 1, v29);
    v35 = sub_237B89590(v28, v30);
    v48 = v0[14];
    v36 = v0[11];
    v37 = v0[12];
    v7 = v40;
    v41 = v35;
    sub_2379F6DD8(v0[10], &qword_27DE9AF88, &unk_237C0C700);
    (*(v37 + 8))(v48, v36);

    *v5 = v41;
    v5[8] = v7 & 1;
    v6 = v41;
  }

  v8 = v0[9];
  v9 = v0[3];
  sub_237A0D2E0();
  v10 = v0[12];
  v11 = v0[13];
  v12 = v0[8];
  v13 = v0[6];
  v46 = v0[9];
  v47 = v0[7];
  v44 = v0[4];
  v45 = v0[5];
  v14 = v0[3];
  v42 = v0[11];
  v43 = v0[2];
  v15 = *v13;
  v16 = v13[1];
  sub_237C05DFC();
  sub_237B89BDC(v11, v6, v7 & 1);
  (*(v10 + 8))(v11, v42);
  v17 = type metadata accessor for AnyTreeClassifier();
  v18 = *(v4 + 24);
  v19 = v13 + *(v17 + 32);
  sub_237C06DBC();
  (*(v12 + 8))(v46, v47);

  v21 = v0[13];
  v20 = v0[14];
  v23 = v0[9];
  v22 = v0[10];

  v24 = v0[1];

  return v24();
}

uint64_t sub_237AB7E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v106 = a6;
  v109 = a2;
  v112 = a1;
  v11 = sub_237C071DC();
  v12 = OUTLINED_FUNCTION_0(v11);
  v104 = v13;
  v105 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v102 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  v19 = OUTLINED_FUNCTION_0(v18);
  v98 = v20;
  v99 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v23);
  v97 = v93 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C798, &qword_237C10E70);
  OUTLINED_FUNCTION_20(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v28);
  v96 = v93 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF88, &unk_237C0C700);
  v31 = OUTLINED_FUNCTION_20(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_18_0();
  v94 = v34 - v35;
  MEMORY[0x28223BE20](v36);
  v38 = v93 - v37;
  v108 = sub_237C0602C();
  v39 = OUTLINED_FUNCTION_0(v108);
  v103 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_18_0();
  v45 = (v43 - v44);
  MEMORY[0x28223BE20](v46);
  v95 = v93 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_0(v48);
  v107 = v49;
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v52);
  v54 = v93 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA88, &unk_237C0B800);
  OUTLINED_FUNCTION_20(v55);
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v58);
  *a7 = a3;
  a7[1] = a4;
  v59 = a4;
  a7[2] = a5;
  a7[5] = a5;
  a7[6] = 0xD000000000000013;
  v100 = a7;
  a7[7] = 0x8000000237C17BE0;

  v60 = v112;
  sub_237C05FFC();
  v101 = swift_dynamicCastMetatype();
  if (v101)
  {
    OUTLINED_FUNCTION_9_27();
    v110 = 0;
    v111 = 0xE000000000000000;
    OUTLINED_FUNCTION_3_39(&qword_27DE9B910, &qword_27DE9ACA0, &unk_237C0E0E0);
    OUTLINED_FUNCTION_8_25();
    v62 = v107 + 8;
    v61 = *(v107 + 8);
    v61(v54, v48);
    v63 = sub_237B43058();
    sub_237A7B7A0(v109, v38, &qword_27DE9AF88, &unk_237C0C700);
    v64 = v108;
    if (__swift_getEnumTagSinglePayload(v38, 1, v108) == 1)
    {
      sub_2379F6DD8(v38, &qword_27DE9AF88, &unk_237C0C700);
      v65 = v64;
      v66 = v103;
    }

    else
    {
      v74 = *(v103 + 32);
      v107 = v62;
      v75 = v38;
      v66 = v103;
      v74(v95, v75, v64);
      OUTLINED_FUNCTION_9_27();
      v110 = 0;
      v111 = 0xE000000000000000;
      OUTLINED_FUNCTION_8_25();
      v61(v54, v48);
      v76 = sub_237B43058();
      sub_237AB8620(v76, v63);
      v77 = OUTLINED_FUNCTION_12_23();
      v65 = v108;
      v78(v77, v108);
    }

    sub_237B98EF8();
    v80 = v79;
    v60 = v112;
    v71 = v109;
  }

  else
  {
    v95 = v45;
    v67 = v97;
    v107 = v59;
    v68 = v98;
    v69 = v99;
    if (!swift_dynamicCastMetatype())
    {
      sub_2379E8AF0();
      swift_allocError();
      *v81 = 0xD000000000000025;
      *(v81 + 8) = 0x8000000237C1A840;
      *(v81 + 16) = 0u;
      *(v81 + 32) = 0u;
      *(v81 + 48) = 1;
      swift_willThrow();
      (*(v104 + 8))(v106, v105);
      sub_2379F6DD8(v109, &qword_27DE9AF88, &unk_237C0C700);
      (*(v103 + 8))(v60, v108);
      swift_bridgeObjectRelease_n();
    }

    OUTLINED_FUNCTION_9_27();
    v110 = 0;
    v70 = v69;
    v93[1] = OUTLINED_FUNCTION_3_39(&qword_27DE9C7A0, &qword_27DE9AB98, &unk_237C0B900);
    sub_237C05EAC();
    v98 = v68[1];
    (v98)(v67, v69);
    v107 = sub_237B4351C();
    v71 = v109;
    v72 = v94;
    sub_237A7B7A0(v109, v94, &qword_27DE9AF88, &unk_237C0C700);
    v65 = v108;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v72, 1, v108);
    v66 = v103;
    if (EnumTagSinglePayload == 1)
    {
      sub_2379F6DD8(v72, &qword_27DE9AF88, &unk_237C0C700);
    }

    else
    {
      (*(v103 + 32))();
      sub_237C05FEC();
      v110 = 0;
      sub_237C05EAC();
      (v98)(v67, v70);
      v83 = sub_237B4351C();
      sub_237AB8710(v83, v107);
      v84 = OUTLINED_FUNCTION_12_23();
      v60 = v112;
      v85(v84, v65);
    }

    sub_237B98E78();
    v80 = v86;
  }

  v87 = v101 != 0;

  v88 = v100;
  v100[3] = v80;
  *(v88 + 32) = v87;
  v90 = v104;
  v89 = v105;
  v91 = v106;
  (*(v104 + 16))(v102, v106, v105);
  v92 = v88 + *(type metadata accessor for AnyTreeClassifier() + 32);
  sub_237C06D7C();
  (*(v90 + 8))(v91, v89);
  sub_2379F6DD8(v71, &qword_27DE9AF88, &unk_237C0C700);
  return (*(v66 + 8))(v60, v65);
}

void sub_237AB8620(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v17[2] = a2;
  v5 = a1 + 56;
  v4 = *(a1 + 56);
  v6 = *(a1 + 32);
  OUTLINED_FUNCTION_5_33();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  if ((v8 & v7) != 0)
  {
    do
    {
      v12 = v3;
LABEL_7:
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
      v15 = *v14;
      v16 = v14[1];

      sub_237B4694C(v17, v15, v16);
    }

    while (v9);
  }

  while (1)
  {
    v12 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      return;
    }

    v9 = *(v5 + 8 * v12);
    ++v3;
    if (v9)
    {
      v3 = v12;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_237AB8710(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v14[1] = a2;
  v5 = a1 + 56;
  v4 = *(a1 + 56);
  v6 = *(a1 + 32);
  OUTLINED_FUNCTION_5_33();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  if ((v8 & v7) != 0)
  {
    do
    {
      v12 = v3;
LABEL_7:
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_237B46EB4(v14, *(*(a1 + 48) + ((v12 << 9) | (8 * v13))));
    }

    while (v9);
  }

  while (1)
  {
    v12 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      return;
    }

    v9 = *(v5 + 8 * v12);
    ++v3;
    if (v9)
    {
      v3 = v12;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_237AB87DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v105 = a3;
  v106 = a4;
  v108 = a2;
  v103 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  OUTLINED_FUNCTION_20(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v109 = &v86 - v11;
  v112 = sub_237C05DBC();
  v12 = OUTLINED_FUNCTION_0(v112);
  v107 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v113 = v17 - v16;
  v100 = sub_237C0704C();
  v18 = OUTLINED_FUNCTION_0(v100);
  v102 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18_0();
  v104 = v22 - v23;
  v25 = MEMORY[0x28223BE20](v24);
  v99 = &v86 - v26;
  MEMORY[0x28223BE20](v25);
  v101 = &v86 - v27;
  v28 = sub_237C0602C();
  v29 = OUTLINED_FUNCTION_0(v28);
  v111 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2_0();
  v35 = v34 - v33;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B040, &unk_237C0DFD0);
  v37 = OUTLINED_FUNCTION_0(v36);
  v110 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_18_0();
  v43 = v41 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = &v86 - v45;
  v47 = *(v5 + 5);
  v48 = *(v5 + 6);
  v49 = *(v5 + 7);
  v115 = a1;
  v50 = v116;
  result = sub_2379E22EC(sub_237A20D00, v114, v47);
  if (!v50)
  {
    v98 = v35;
    v116 = v28;
    v95 = v43;
    v96 = v5;
    v97 = v36;
    v53 = v112;
    v52 = v113;
    v54 = result;

    sub_237A0D2E0();
    v91 = v48;
    v92 = v46;
    v93 = v54;
    v94 = v49;
    v55 = v96;
    v56 = *(v96 + 3);
    v57 = *(v96 + 32);
    v58 = *(v96 + 1);
    v59 = v98;
    v88 = *v96;
    v89 = v58;
    sub_237C05DFC();
    v60 = sub_237B89BDC(v59, v56, v57);
    v61 = v111 + 8;
    v87 = *(v111 + 8);
    v87(v59, v116);
    v62 = v109;
    sub_237A7B7A0(v108, v109, &qword_27DE9A9A0, &qword_237C0BF60);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v62, 1, v53);
    v90 = v57;
    if (EnumTagSinglePayload == 1)
    {
      sub_2379F6DD8(v62, &qword_27DE9A9A0, &qword_237C0BF60);
      v64 = *(v56 + 16);
      v65 = v55 + *(type metadata accessor for AnyTreeClassifier() + 32);
      v66 = v104;
      v67 = v92;
      sub_237C06DAC();
      (*(v110 + 8))(v67, v97);
      v108 = v56;

      v68 = v66;
    }

    else
    {
      v108 = v56;
      v104 = v60;
      v111 = v61;
      (*(v107 + 32))(v52, v62, v53);
      sub_237A0D2E0();
      v69 = v98;
      sub_237C05DFC();
      v70 = v108;
      sub_237B89BDC(v69, v108, v90);
      v87(v69, v116);
      v71 = *(v70 + 16);
      v72 = v55 + *(type metadata accessor for AnyTreeClassifier() + 32);
      v68 = v99;
      sub_237C06D9C();
      v73 = v97;

      v74 = OUTLINED_FUNCTION_11_26();
      v55(v74);
      v75 = OUTLINED_FUNCTION_10_27();
      v76(v75);
      (v55)(v92, v73);
    }

    v77 = v90;
    v78 = v101;
    v79 = *(v102 + 32);
    v80 = v100;
    v79(v101, v68, v100);
    v81 = type metadata accessor for AnyTreeClassifierModel();
    v82 = v103;
    v79(v103 + *(v81 + 24), v78, v80);
    v83 = v89;
    *v82 = v88;
    v82[1] = v83;
    v84 = v91;
    v82[2] = v93;
    v82[3] = v84;
    v82[4] = v94;
    v85 = v82 + *(v81 + 28);
    *v85 = v108;
    v85[8] = v77;
  }

  return result;
}

uint64_t sub_237AB8F68(uint64_t a1, uint64_t a2)
{
  v10 = *(a1 + 16);
  v11 = *(a1 + 32);
  v4 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B020, &qword_237C10E50);
  sub_237A0DF54();
  result = sub_237C06CAC();
  if (!v2)
  {
    v6 = *(type metadata accessor for AnyTreeClassifierModel() + 24);
    v7 = *(a2 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24));
    sub_237C0704C();
    OUTLINED_FUNCTION_2_43();
    sub_237AB95C8(v8, v9);
    return sub_237C06CAC();
  }

  return result;
}

uint64_t sub_237AB9088@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_237C0704C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v22 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v28 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B008, &qword_237C0C9B8);
  v11 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_2379D9224(&qword_27DE9B010, &qword_27DE9B008, &qword_237C0C9B8);
  result = sub_237C06C9C();
  if (!v2)
  {
    v13 = *(a1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    OUTLINED_FUNCTION_2_43();
    sub_237AB95C8(v14, v15);
    sub_237C06C9C();
    v17 = *v24;
    v16 = v24[1];
    v18 = type metadata accessor for AnyTreeClassifierModel();
    (*(v22 + 32))(&a2[*(v18 + 24)], v28, v4);
    v19 = v24[3];
    v20 = *(v24 + 32);
    *a2 = v17;
    *(a2 + 1) = v16;
    *(a2 + 2) = v25;
    *(a2 + 3) = v26;
    *(a2 + 4) = v27;
    v21 = &a2[*(v18 + 28)];
    *v21 = v19;
    v21[8] = v20;
  }

  return result;
}

void (*sub_237AB92B4(void *a1))(uint64_t ***a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C1D0, &unk_237C10E60);
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v3[4] = __swift_coroFrameAllocStub(v6);
  v7 = *v1;
  v3[5] = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C1D8, &unk_237C0FBF8);

  sub_237C05FCC();
  return sub_237A0D94C;
}

uint64_t sub_237AB93D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_237AB87DC(a2, a3, a4, a5, a1);
  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_237AB94DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_237AAA0E8;

  return sub_237AB7980(a1, a2, a3, a4);
}

uint64_t sub_237AB95C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_3_39(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_2379D9224(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_8_25()
{

  return sub_237C05EAC();
}

uint64_t OUTLINED_FUNCTION_9_27()
{

  return sub_237C05FEC();
}

uint64_t type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData()
{
  result = qword_27DE9C7A8;
  if (!qword_27DE9C7A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237AB9730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a3;
  v61 = a2;
  v59 = a1;
  v60 = sub_237C05DBC();
  v4 = OUTLINED_FUNCTION_0(v60);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v11 = (v10 - v9);
  v12 = sub_237C05D1C();
  v13 = OUTLINED_FUNCTION_0(v12);
  v56 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18_0();
  v55 = (v17 - v18);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v54 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v54 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC0, &qword_237C0BA28);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  OUTLINED_FUNCTION_18_0();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3_3();
  v31 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_0();
  v35 = (v34 - v33);
  sub_237A36A14(v57, v34 - v33);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v46 = *v35;
      v47 = *(v35 + 8);
      v48 = OUTLINED_FUNCTION_4_2();
      v42 = v60;
      v49(v48);
      *&v62 = v46;
      BYTE8(v62) = v47;
      v41 = v61;
      sub_237A70ED4(&v62, v61);
      goto LABEL_10;
    case 2u:
      v43 = *(v6 + 32);
      v42 = v60;
      v43(v11, v35, v60);
      if (sub_237C05C5C())
      {
        (*(v6 + 8))(v11, v42);
        v44 = OUTLINED_FUNCTION_4_2();
LABEL_7:
        v45(v44);
        v40 = 1;
        v41 = v61;
      }

      else
      {
        v50 = OUTLINED_FUNCTION_4_2();
        v51(v50);
        v41 = v61;
        v43(v61, v11, v42);
LABEL_10:
        v40 = 0;
      }

      return __swift_storeEnumTagSinglePayload(v41, v40, 1, v42);
    case 3u:
      v44 = OUTLINED_FUNCTION_4_2();
      v42 = v60;
      goto LABEL_7;
    default:
      v36 = *(v35 + 16);
      v37 = *(v35 + 17);
      v62 = *v35;
      v63 = v36;
      v64 = v37;
      sub_237A70BAC(v3, v24, &v62);
      v38 = v56;
      v39 = *(v56 + 16);
      v39(v22, v24, v12);
      sub_237C05DCC();
      sub_2379EA894(v3, v29);
      if (__swift_getEnumTagSinglePayload(v29, 1, v12) == 1)
      {
        (*(v38 + 8))(v24, v12);
        sub_2379EA904(v3);
        v40 = 1;
        v42 = v60;
        v41 = v61;
      }

      else
      {
        (*(v38 + 32))(v22, v29, v12);
        v39(v55, v22, v12);
        v41 = v61;
        sub_237C05DCC();
        v52 = *(v38 + 8);
        v52(v22, v12);
        v52(v24, v12);
        sub_2379EA904(v3);
        v40 = 0;
        v42 = v60;
      }

      return __swift_storeEnumTagSinglePayload(v41, v40, 1, v42);
  }
}

uint64_t sub_237AB9BB8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_237C05DBC();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18_0();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_3();
  v15 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v19 = (v18 - v17);
  sub_237A36A14(v3, v18 - v17);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      v21 = *v19;
      v22 = *(v19 + 8);
      goto LABEL_7;
    case 2:
      (*(v8 + 32))(v2, v19, v5);
      (*(v8 + 16))(v13, v2, v5);
      sub_237A70684(v13, 1, &v26);
      result = (*(v8 + 8))(v2, v5);
      v21 = v26;
      v22 = v27;
LABEL_7:
      *a1 = v21;
      *(a1 + 8) = v22;
      break;
    case 3:
      v23 = MEMORY[0x2383DDC00](0);
      if (!v23)
      {
        __break(1u);
        JUMPOUT(0x237AB9E0CLL);
      }

      v24 = v23;
      type metadata accessor for CMLTable();
      v25 = swift_allocObject();
      *(v25 + 16) = v24;
      type metadata accessor for _DataTable();
      swift_allocObject();
      result = sub_237B6C578(v25);
      *a1 = result;
      *(a1 + 8) = 0;
      break;
    default:
      *a1 = 0;
      *(a1 + 8) = -1;
      break;
  }

  return result;
}

uint64_t sub_237AB9E1C(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  result = sub_237A254D8(a3);
  v7 = result;
  for (i = 0; ; ++i)
  {
    if (v7 == i)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x2383DCAF0](i, a3);
      v9 = result;
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v9 = *(a3 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v11 = v9;
    v10 = a1(&v11);
    if (v3)
    {

      return v9;
    }

    if (v10)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_237AB9F14(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v151 = a5;
  v141 = a4;
  v135 = a1;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7C8, &qword_237C10EB0);
  v132 = *(v157 - 8);
  v9 = *(v132 + 64);
  v10 = MEMORY[0x28223BE20](v157);
  v137 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v138 = &v131 - v13;
  MEMORY[0x28223BE20](v12);
  v136 = &v131 - v14;
  v163 = sub_237C0610C();
  v168 = *(v163 - 8);
  v15 = *(v168 + 64);
  v16 = MEMORY[0x28223BE20](v163);
  v156 = &v131 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v150 = &v131 - v18;
  v162 = sub_237C0683C();
  v167 = *(v162 - 8);
  v19 = *(v167 + 64);
  v20 = MEMORY[0x28223BE20](v162);
  v155 = &v131 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v149 = &v131 - v22;
  v154 = sub_237C069CC();
  v166 = *(v154 - 8);
  v23 = *(v166 + 64);
  MEMORY[0x28223BE20](v154);
  v158 = &v131 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7D0, &qword_237C10EB8);
  v160 = *(v25 - 8);
  v161 = v160;
  v26 = *(v160 + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v147 = &v131 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v153 = (&v131 - v30);
  MEMORY[0x28223BE20](v29);
  v152 = (&v131 - v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7D8, &qword_237C10EC0);
  inited = swift_initStackObject();
  v169 = xmmword_237C0B660;
  *(inited + 16) = xmmword_237C0B660;
  v170 = a2;
  v171 = a3;

  MEMORY[0x2383DC360](0x75746E656D6F6D2ELL, 0xE90000000000006DLL);
  v33 = v171;
  *(inited + 32) = v170;
  *(inited + 40) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA50, &qword_237C0B7E8);
  v34 = swift_allocObject();
  *(v34 + 16) = v169;
  sub_237C0696C();
  *(v34 + 32) = v35;
  *(inited + 48) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACF0, &unk_237C14060);
  v36 = sub_237C085AC();
  v164 = a2;
  v165 = a3;
  v170 = a2;
  v171 = a3;

  MEMORY[0x2383DC360](0x6E6F6C697370652ELL, 0xE800000000000000);
  v37 = swift_allocObject();
  *(v37 + 16) = v169;
  sub_237C0694C();
  *(v37 + 32) = v38;
  swift_isUniquelyReferenced_nonNull_native();
  v170 = v36;
  sub_237B40F54();

  *&v169 = v170;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7E0, &qword_237C10EC8);
  v39 = *(v160 + 72);
  v40 = v154;
  v41 = (*(v161 + 80) + 32) & ~*(v161 + 80);
  v42 = swift_allocObject();
  v131 = xmmword_237C0B670;
  *(v42 + 16) = xmmword_237C0B670;
  v134 = v42;
  v43 = (v42 + v41);
  v44 = *(v25 + 48);
  *v43 = 0x74657366666FLL;
  v43[1] = 0xE600000000000000;
  sub_237C0693C();
  v145 = v39;
  v144 = v43;
  v45 = (v43 + v39);
  v46 = *(v25 + 48);
  *v45 = 0x656C616373;
  v45[1] = 0xE500000000000000;
  v133 = v6;
  v47 = v158;
  sub_237C0691C();
  v48 = v153;
  v49 = 0;
  v50 = 0;
  v148 = v25;
  v143 = v152 + *(v25 + 48);
  v142 = v166 + 32;
  v161 = v168 + 8;
  v160 = v167 + 8;
  v146 = (v166 + 8);
  v51 = (v166 + 32);
  do
  {
    LODWORD(v166) = v49;
    v52 = v152;
    sub_2379D8FF4(v144 + v50 * v145, v152, &qword_27DE9C7D0, &qword_237C10EB8);
    v53 = v40;
    v55 = *v52;
    v54 = v52[1];
    v56 = v148;
    v57 = *(v148 + 48);
    *v48 = v55;
    v48[1] = v54;
    v167 = *v51;
    (v167)(v48 + v57, v143, v53);
    v170 = v164;
    v171 = v165;

    v58 = v48;
    MEMORY[0x2383DC360](46, 0xE100000000000000);
    v140 = v55;
    v139 = v54;
    MEMORY[0x2383DC360](v55, v54);
    v59 = v171;
    v168 = v170;
    v60 = v147;
    sub_2379D8FF4(v58, v147, &qword_27DE9C7D0, &qword_237C10EB8);
    v61 = *(v60 + 8);

    (v167)(v47, v60 + *(v56 + 48), v53);
    v62 = sub_237C0699C();
    v63 = v149;
    MEMORY[0x2383DA550]();
    v64 = v150;
    sub_237C0679C();
    v65 = sub_237C060FC();
    v167 = *v161;
    v66 = (v167)(v64, v163);
    MEMORY[0x28223BE20](v66);
    *(&v131 - 2) = v63;
    v67 = v172;
    sub_237B64FE0(v65, sub_237AC1620);
    v68 = v63;
    v69 = v168;
    v159 = *v160;
    v159(v68, v162);
    v70 = v169;
    swift_isUniquelyReferenced_nonNull_native();
    v170 = v70;
    sub_237B40F54();
    v71 = v170;
    if (v151 && (v72 = sub_237ACDA80(v62, v151)) != 0)
    {
      v73 = v72;
    }

    else
    {
      _s13GraphCNNModelVMa(0);
      sub_237AC167C(&qword_27DE9C7E8, _s13GraphCNNModelVMa);
      v74 = v135;
      v75 = sub_237C063DC();
      MEMORY[0x28223BE20](v75);
      v76 = v158;
      *(&v131 - 2) = v74;
      *(&v131 - 1) = v76;
      v73 = sub_237AB9E1C(sub_237AC165C, (&v131 - 2), v75);

      if (!v73)
      {

        swift_setDeallocating();
        sub_237B908E0();
        v170 = 0;
        v171 = 0xE000000000000000;
        sub_237C08EDC();
        MEMORY[0x2383DC360](0xD00000000000001BLL, 0x8000000237C1A870);
        MEMORY[0x2383DC360](v164, v165);
        MEMORY[0x2383DC360](0x697373696D202C60, 0xEC0000006020676ELL);
        MEMORY[0x2383DC360](v140, v139);
        MEMORY[0x2383DC360](0x61702079656B2060, 0xEB000000002E6874);
        v127 = v170;
        v128 = v171;
        sub_2379E8AF0();
        swift_allocError();
        *v129 = v127;
        *(v129 + 8) = v128;
        *(v129 + 16) = 0u;
        *(v129 + 32) = 0u;
        *(v129 + 48) = 2;
        swift_willThrow();
        (*v146)(v158, v154);
        sub_2379D9054(v153, &qword_27DE9C7D0, &qword_237C10EB8);
        return v169;
      }
    }

    v40 = v154;
    v77 = sub_237ABEE14(v73, v69, v59);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v170 = v71;
    sub_237ABF6E0(v77, sub_237AC151C, 0, isUniquelyReferenced_nonNull_native, &v170);
    v172 = v67;
    v47 = v158;
    (*v146)(v158, v40);

    *&v169 = v170;
    v48 = v153;
    sub_2379D9054(v153, &qword_27DE9C7D0, &qword_237C10EB8);
    v49 = 1;
    v50 = 1;
  }

  while ((v166 & 1) == 0);
  swift_setDeallocating();
  sub_237B908E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7F0, &qword_237C10ED0);
  v79 = *(v132 + 72);
  v80 = (*(v132 + 80) + 32) & ~*(v132 + 80);
  v81 = swift_allocObject();
  *(v81 + 16) = v131;
  v153 = v81;
  v82 = (v81 + v80);
  v83 = v157;
  v84 = *(v157 + 48);
  *v82 = 0x4D676E696E6E7572;
  *(v82 + 1) = 0xEB000000006E6165;
  sub_237C068CC();
  v166 = v79;
  v158 = v82;
  v85 = &v82[v79];
  v86 = *(v83 + 48);
  *v85 = 0x56676E696E6E7572;
  *(v85 + 1) = 0xEF65636E61697261;
  sub_237C068EC();
  v87 = 0;
  v88 = 0;
  v154 = *(v83 + 48);
  v89 = v138;
  while (1)
  {
    LODWORD(v168) = v87;
    v90 = v136;
    sub_2379D8FF4(&v158[v88 * v166], v136, &qword_27DE9C7C8, &qword_237C10EB0);
    v91 = *v90;
    v92 = *(v90 + 1);
    v93 = *(v157 + 48);
    *v89 = *v90;
    *(v89 + 1) = v92;
    v94 = sub_237C060BC();
    v95 = *(v94 - 8);
    (*(v95 + 32))(&v89[v93], &v90[v154], v94);
    v170 = v164;
    v171 = v165;

    MEMORY[0x2383DC360](46, 0xE100000000000000);
    MEMORY[0x2383DC360](v91, v92);
    v96 = v170;
    v97 = v171;
    v98 = v89;
    v99 = v137;
    sub_2379D8FF4(v98, v137, &qword_27DE9C7C8, &qword_237C10EB0);
    v100 = *(v99 + 8);

    v102 = *(v157 + 48);
    MEMORY[0x2383D9C40](v101);
    (*(v95 + 8))(v99 + v102, v94);
    sub_237C0679C();
    v103 = sub_237C060EC();
    v104 = *(v103 + 16);
    if (v104)
    {
      break;
    }

    v108 = 1;
    v89 = v138;
LABEL_14:
    (v167)(v156, v163);

    MEMORY[0x28223BE20](v109);
    v110 = v155;
    *(&v131 - 2) = v155;
    v111 = v172;
    v112 = sub_237B64FE0(v108, sub_237AC1708);
    v172 = v111;
    v159(v110, v162);
    v113 = v169;
    swift_isUniquelyReferenced_nonNull_native();
    v170 = v113;
    v114 = sub_237ACAC78(v96, v97);
    if (__OFADD__(*(v113 + 16), (v115 & 1) == 0))
    {
      goto LABEL_27;
    }

    v116 = v114;
    v117 = v115;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7F8, &qword_237C15340);
    if (sub_237C090AC())
    {
      v118 = sub_237ACAC78(v96, v97);
      if ((v117 & 1) != (v119 & 1))
      {
        goto LABEL_29;
      }

      v116 = v118;
    }

    *&v169 = v170;
    if (v117)
    {
      v120 = *(v169 + 56);
      v121 = *(v120 + 8 * v116);
      *(v120 + 8 * v116) = v112;
    }

    else
    {
      v122 = v169;
      *(v169 + 8 * (v116 >> 6) + 64) |= 1 << v116;
      v123 = (v122[6] + 16 * v116);
      *v123 = v96;
      v123[1] = v97;
      *(v122[7] + 8 * v116) = v112;
      v124 = v122[2];
      v125 = __OFADD__(v124, 1);
      v126 = v124 + 1;
      if (v125)
      {
        goto LABEL_28;
      }

      *(v169 + 16) = v126;
    }

    sub_2379D9054(v89, &qword_27DE9C7C8, &qword_237C10EB0);
    v87 = 1;
    v88 = 1;
    if (v168)
    {
      swift_setDeallocating();
      sub_237B908F4();
      return v169;
    }
  }

  v105 = (v103 + 32);
  v106 = 1;
  v89 = v138;
  while (1)
  {
    v107 = *v105++;
    v108 = v106 * v107;
    if ((v106 * v107) >> 64 != (v106 * v107) >> 63)
    {
      break;
    }

    v106 = v108;
    if (!--v104)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_237C0932C();
  __break(1u);
  return result;
}