uint64_t SnowfallAmount.hashValue.getter()
{
  sub_23B50D8C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_7_28(&qword_280B42BC8);
  sub_23B50D0E4();
  v1 = type metadata accessor for SnowfallAmount();
  v2 = v0 + v1[5];
  sub_23B50D0E4();
  v3 = v1[6];
  OUTLINED_FUNCTION_6_12();
  v4 = v1[7];
  OUTLINED_FUNCTION_6_12();
  v5 = v1[8];
  OUTLINED_FUNCTION_6_12();
  v6 = v1[9];
  OUTLINED_FUNCTION_6_12();
  return sub_23B50D914();
}

unint64_t sub_23B453C7C()
{
  result = qword_27E133610;
  if (!qword_27E133610)
  {
    type metadata accessor for SnowfallAmount();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133610);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SnowfallAmount.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B453DDC()
{
  result = qword_27E133618;
  if (!qword_27E133618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133618);
  }

  return result;
}

unint64_t sub_23B453E34()
{
  result = qword_27E133620;
  if (!qword_27E133620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133620);
  }

  return result;
}

unint64_t sub_23B453E8C()
{
  result = qword_27E133628;
  if (!qword_27E133628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133628);
  }

  return result;
}

uint64_t static TideEvent.mock()@<X0>(uint64_t a1@<X8>)
{
  sub_23B50B9D4();
  sub_23B50B994();
  v2 = [objc_opt_self() feet];
  v3 = type metadata accessor for TideEvent();
  v4 = *(v3 + 24);
  sub_23B3E3A54();
  result = sub_23B50A9B4();
  *(a1 + *(v3 + 20)) = 0;
  return result;
}

uint64_t MinuteCondition.init(date:expirationDate:shortDescription:longDescription:shift:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = type metadata accessor for MinuteCondition();
  v16 = v15[5];
  v17 = sub_23B50AD24();
  __swift_storeEnumTagSinglePayload(a8 + v16, 1, 1, v17);
  (*(*(v17 - 8) + 32))(a8, a1, v17);
  sub_23B3CF890(a2, a8 + v16);
  result = sub_23B454074(a7, a8 + v15[8]);
  v19 = (a8 + v15[6]);
  *v19 = a3;
  v19[1] = a4;
  v20 = (a8 + v15[7]);
  *v20 = a5;
  v20[1] = a6;
  return result;
}

uint64_t sub_23B454074(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrecipitationShift();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MinuteCondition.date.getter()
{
  v0 = sub_23B50AD24();
  OUTLINED_FUNCTION_6(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_65();

  return v4(v3);
}

uint64_t MinuteCondition.date.setter()
{
  OUTLINED_FUNCTION_19();
  v2 = sub_23B50AD24();
  v3 = OUTLINED_FUNCTION_6(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t MinuteCondition.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MinuteCondition() + 20);

  return sub_23B3C7DF4(v3, a1);
}

uint64_t MinuteCondition.expirationDate.setter()
{
  OUTLINED_FUNCTION_19();
  v2 = v1 + *(type metadata accessor for MinuteCondition() + 20);

  return sub_23B3CF890(v0, v2);
}

uint64_t MinuteCondition.expirationDate.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for MinuteCondition() + 20);
  return OUTLINED_FUNCTION_44();
}

uint64_t MinuteCondition.shortDescription.getter()
{
  v1 = (v0 + *(type metadata accessor for MinuteCondition() + 24));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_65();
}

uint64_t MinuteCondition.shortDescription.setter()
{
  OUTLINED_FUNCTION_8_14();
  v3 = (v1 + *(type metadata accessor for MinuteCondition() + 24));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MinuteCondition.shortDescription.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for MinuteCondition() + 24);
  return OUTLINED_FUNCTION_44();
}

uint64_t MinuteCondition.longDescription.getter()
{
  v1 = (v0 + *(type metadata accessor for MinuteCondition() + 28));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_65();
}

uint64_t MinuteCondition.longDescription.setter()
{
  OUTLINED_FUNCTION_8_14();
  v3 = (v1 + *(type metadata accessor for MinuteCondition() + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MinuteCondition.longDescription.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for MinuteCondition() + 28);
  return OUTLINED_FUNCTION_44();
}

uint64_t MinuteCondition.shift.setter()
{
  OUTLINED_FUNCTION_19();
  v2 = v1 + *(type metadata accessor for MinuteCondition() + 32);

  return sub_23B454478(v0, v2);
}

uint64_t sub_23B454478(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrecipitationShift();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MinuteCondition.shift.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for MinuteCondition() + 32);
  return OUTLINED_FUNCTION_44();
}

uint64_t sub_23B45451C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6974617269707865 && a2 == 0xEE00657461446E6FLL;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x800000023B535E20 == a2;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x63736544676E6F6CLL && a2 == 0xEF6E6F6974706972;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x7466696873 && a2 == 0xE500000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_23B50D834();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_23B4546D0(char a1)
{
  result = 1702125924;
  switch(a1)
  {
    case 1:
      result = 0x6974617269707865;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x63736544676E6F6CLL;
      break;
    case 4:
      result = 0x7466696873;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B454784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B45451C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4547AC(uint64_t a1)
{
  v2 = sub_23B455648();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4547E8(uint64_t a1)
{
  v2 = sub_23B455648();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static MinuteCondition.== infix(_:_:)()
{
  OUTLINED_FUNCTION_8_14();
  v2 = sub_23B50AD24();
  v3 = OUTLINED_FUNCTION_5(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_27();
  v10 = v9 - v8;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710) - 8) + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E20, &qword_23B51E340);
  OUTLINED_FUNCTION_6(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v18);
  v20 = &v37 - v19;
  if ((sub_23B50ACD4() & 1) == 0)
  {
    return 0;
  }

  v21 = type metadata accessor for MinuteCondition();
  v22 = v21[5];
  v23 = *(v15 + 48);
  sub_23B3C7DF4(v1 + v22, v20);
  sub_23B3C7DF4(v0 + v22, &v20[v23]);
  OUTLINED_FUNCTION_46(v20);
  if (!v24)
  {
    sub_23B3C7DF4(v20, v14);
    OUTLINED_FUNCTION_46(&v20[v23]);
    if (!v24)
    {
      (*(v5 + 32))(v10, &v20[v23], v2);
      OUTLINED_FUNCTION_0_33();
      sub_23B45579C(v27, v28);
      v29 = sub_23B50D134();
      v30 = *(v5 + 8);
      v30(v10, v2);
      v30(v14, v2);
      sub_23B398890(v20, &qword_27E131E18, &unk_23B50F710);
      if ((v29 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_14;
    }

    (*(v5 + 8))(v14, v2);
LABEL_10:
    sub_23B398890(v20, &qword_27E131E20, &qword_23B51E340);
    return 0;
  }

  OUTLINED_FUNCTION_46(&v20[v23]);
  if (!v24)
  {
    goto LABEL_10;
  }

  sub_23B398890(v20, &qword_27E131E18, &unk_23B50F710);
LABEL_14:
  OUTLINED_FUNCTION_12_1(v21[6]);
  if (v24)
  {
    v33 = v31 == v32;
  }

  else
  {
    v33 = 0;
  }

  if (v33 || (sub_23B50D834() & 1) != 0)
  {
    OUTLINED_FUNCTION_12_1(v21[7]);
    v36 = v24 && v34 == v35;
    if (v36 || (sub_23B50D834() & 1) != 0)
    {
      return static PrecipitationShift.== infix(_:_:)(v1 + v21[8], v0 + v21[8]);
    }
  }

  return 0;
}

uint64_t MinuteCondition.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133630, &qword_23B518438);
  OUTLINED_FUNCTION_5(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B455648();
  sub_23B50D974();
  v33 = 0;
  sub_23B50AD24();
  OUTLINED_FUNCTION_0_33();
  sub_23B45579C(v14, v15);
  OUTLINED_FUNCTION_5_2();
  sub_23B50D7F4();
  if (!v2)
  {
    v16 = type metadata accessor for MinuteCondition();
    v17 = v16[5];
    v32 = 1;
    OUTLINED_FUNCTION_5_2();
    sub_23B50D794();
    v18 = (v3 + v16[6]);
    v19 = *v18;
    v20 = v18[1];
    v31 = 2;
    OUTLINED_FUNCTION_5_2();
    sub_23B50D7A4();
    v21 = (v3 + v16[7]);
    v22 = *v21;
    v23 = v21[1];
    v30 = 3;
    OUTLINED_FUNCTION_5_2();
    sub_23B50D7A4();
    v24 = v16[8];
    v29 = 4;
    type metadata accessor for PrecipitationShift();
    OUTLINED_FUNCTION_4_18();
    sub_23B45579C(v25, v26);
    OUTLINED_FUNCTION_5_2();
    sub_23B50D7F4();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t MinuteCondition.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v54 = type metadata accessor for PrecipitationShift();
  v3 = OUTLINED_FUNCTION_6(v54);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_27();
  v8 = v7 - v6;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710) - 8) + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v53 - v11;
  v13 = sub_23B50AD24();
  v14 = OUTLINED_FUNCTION_5(v13);
  v55 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_27();
  v20 = v19 - v18;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133648, &qword_23B518440);
  OUTLINED_FUNCTION_5(v58);
  v56 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v24);
  v26 = &v53 - v25;
  v27 = type metadata accessor for MinuteCondition();
  v28 = OUTLINED_FUNCTION_6(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_27();
  v62 = v31;
  v60 = *(v31 + 20);
  v34 = v33 - v32;
  __swift_storeEnumTagSinglePayload(v33 - v32 + v60, 1, 1, v13);
  v36 = a1[3];
  v35 = a1[4];
  v61 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v36);
  sub_23B455648();
  v57 = v26;
  v37 = v59;
  sub_23B50D964();
  if (v37)
  {
    v40 = v60;
    __swift_destroy_boxed_opaque_existential_1(v61);
    return sub_23B398890(v34 + v40, &qword_27E131E18, &unk_23B50F710);
  }

  else
  {
    v59 = v8;
    v67 = 0;
    OUTLINED_FUNCTION_0_33();
    sub_23B45579C(v38, v39);
    OUTLINED_FUNCTION_16_9();
    sub_23B50D734();
    (*(v55 + 32))(v34, v20, v13);
    v66 = 1;
    OUTLINED_FUNCTION_16_9();
    sub_23B50D6D4();
    sub_23B3CF890(v12, v34 + v60);
    v65 = 2;
    v41 = sub_23B50D6E4();
    v42 = v62;
    v43 = (v34 + *(v62 + 24));
    *v43 = v41;
    v43[1] = v44;
    v64 = 3;
    v45 = sub_23B50D6E4();
    v46 = v56;
    v47 = (v34 + *(v42 + 28));
    *v47 = v45;
    v47[1] = v48;
    v63 = 4;
    OUTLINED_FUNCTION_4_18();
    sub_23B45579C(v49, v50);
    v51 = v59;
    sub_23B50D734();
    (*(v46 + 8))(v57, v58);
    sub_23B454074(v51, v34 + *(v42 + 32));
    sub_23B45569C(v34, v53, type metadata accessor for MinuteCondition);
    __swift_destroy_boxed_opaque_existential_1(v61);
    return sub_23B4556F8(v34);
  }
}

uint64_t MinuteCondition.hash(into:)()
{
  OUTLINED_FUNCTION_19();
  v1 = sub_23B50AD24();
  v2 = OUTLINED_FUNCTION_5(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_27();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v44 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v43 - v17;
  OUTLINED_FUNCTION_0_33();
  sub_23B45579C(v19, v20);
  sub_23B50D0E4();
  v21 = type metadata accessor for MinuteCondition();
  sub_23B3C7DF4(v0 + v21[5], v18);
  OUTLINED_FUNCTION_22_3(v18);
  if (v22)
  {
    sub_23B50D8E4();
  }

  else
  {
    v23 = OUTLINED_FUNCTION_7_29();
    v24(v23, v18, v1);
    sub_23B50D8E4();
    OUTLINED_FUNCTION_6_13();
    v25 = OUTLINED_FUNCTION_13_12();
    v26(v25);
  }

  v27 = (v0 + v21[6]);
  v28 = *v27;
  v29 = v27[1];
  sub_23B50D1C4();
  v30 = (v0 + v21[7]);
  v31 = *v30;
  v32 = v30[1];
  sub_23B50D1C4();
  v33 = v0 + v21[8];
  sub_23B3C7DF4(v33, v15);
  OUTLINED_FUNCTION_22_3(v15);
  if (v22)
  {
    sub_23B50D8E4();
  }

  else
  {
    v34 = OUTLINED_FUNCTION_7_29();
    v35(v34, v15, v1);
    sub_23B50D8E4();
    OUTLINED_FUNCTION_6_13();
    v36 = OUTLINED_FUNCTION_13_12();
    v37(v36);
  }

  v38 = type metadata accessor for PrecipitationShift();
  v39 = v44;
  sub_23B3C7DF4(v33 + *(v38 + 20), v44);
  OUTLINED_FUNCTION_22_3(v39);
  if (v22)
  {
    sub_23B50D8E4();
  }

  else
  {
    v40 = OUTLINED_FUNCTION_7_29();
    v41(v40, v39, v1);
    sub_23B50D8E4();
    OUTLINED_FUNCTION_6_13();
    (*(v4 + 8))(v9, v1);
  }

  return MEMORY[0x23EE9DB40](*(v33 + *(v38 + 24)));
}

uint64_t MinuteCondition.hashValue.getter()
{
  sub_23B50D8C4();
  MinuteCondition.hash(into:)();
  return sub_23B50D914();
}

uint64_t sub_23B45560C()
{
  sub_23B50D8C4();
  MinuteCondition.hash(into:)();
  return sub_23B50D914();
}

unint64_t sub_23B455648()
{
  result = qword_27E133638;
  if (!qword_27E133638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133638);
  }

  return result;
}

uint64_t sub_23B45569C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_6(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_65();
  v8(v7);
  return a2;
}

uint64_t sub_23B4556F8(uint64_t a1)
{
  v2 = type metadata accessor for MinuteCondition();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B45579C(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for MinuteCondition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B4558EC()
{
  result = qword_27E133660;
  if (!qword_27E133660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133660);
  }

  return result;
}

unint64_t sub_23B455944()
{
  result = qword_27E133668;
  if (!qword_27E133668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133668);
  }

  return result;
}

unint64_t sub_23B45599C()
{
  result = qword_27E133670[0];
  if (!qword_27E133670[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E133670);
  }

  return result;
}

uint64_t TrendBaseline.init(kind:value:startDate:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_23B50A9E4();
  OUTLINED_FUNCTION_6(v6);
  (*(v7 + 32))(a3, a1);
  v8 = *(type metadata accessor for TrendBaseline() + 32);
  v9 = sub_23B50AD24();
  OUTLINED_FUNCTION_6(v9);
  v11 = *(v10 + 32);

  return v11(a3 + v8, a2);
}

uint64_t sub_23B455AB4(uint64_t a1, uint64_t a2)
{
  if (a1 == 1851876717 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_23B50D834();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_23B455B54(uint64_t a1, uint64_t a2)
{
  sub_23B50D8C4();
  v3 = *(a2 + 16);
  sub_23B3DE120();
  return sub_23B50D914();
}

uint64_t sub_23B455BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = *(a3 + 16);
  result = sub_23B455AB4(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_23B455BF0@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_23B3E5F40();
  *a2 = result & 1;
  return result;
}

uint64_t sub_23B455C20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_23B455C74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_23B455CD0@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_23B3D27E4();
  *a2 = result & 1;
  return result;
}

uint64_t sub_23B455D00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_23B455D54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void TrendBaseline.Kind.encode(to:)()
{
  OUTLINED_FUNCTION_107();
  v1 = v0;
  v3 = *(v2 + 16);
  v19[1] = type metadata accessor for TrendBaseline.Kind.MeanCodingKeys();
  OUTLINED_FUNCTION_1_23();
  v19[2] = swift_getWitnessTable();
  v20 = sub_23B50D804();
  OUTLINED_FUNCTION_5(v20);
  v19[0] = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v7);
  v9 = v19 - v8;
  type metadata accessor for TrendBaseline.Kind.CodingKeys();
  OUTLINED_FUNCTION_2_25();
  swift_getWitnessTable();
  v10 = sub_23B50D804();
  OUTLINED_FUNCTION_5(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v15);
  v17 = v19 - v16;
  v18 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_23B50D974();
  sub_23B50D764();
  (*(v19[0] + 8))(v9, v20);
  (*(v12 + 8))(v17, v10);
  OUTLINED_FUNCTION_105();
}

uint64_t TrendBaseline.Kind.hashValue.getter()
{
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](0);
  return sub_23B50D914();
}

void TrendBaseline.Kind.init(from:)()
{
  OUTLINED_FUNCTION_107();
  v2 = v1;
  type metadata accessor for TrendBaseline.Kind.MeanCodingKeys();
  OUTLINED_FUNCTION_1_23();
  WitnessTable = swift_getWitnessTable();
  v3 = sub_23B50D754();
  v4 = OUTLINED_FUNCTION_5(v3);
  v35 = v5;
  v36 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  type metadata accessor for TrendBaseline.Kind.CodingKeys();
  OUTLINED_FUNCTION_2_25();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_30();
  v11 = sub_23B50D754();
  v38 = OUTLINED_FUNCTION_5(v11);
  v39 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - v16;
  v18 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_23B50D964();
  if (!v0)
  {
    v34 = v10;
    v19 = v38;
    *&v40 = sub_23B50D744();
    OUTLINED_FUNCTION_7_30();
    sub_23B50D304();
    OUTLINED_FUNCTION_6_14();
    swift_getWitnessTable();
    *&v42 = sub_23B50D554();
    *(&v42 + 1) = v20;
    *&v43 = v21;
    *(&v43 + 1) = v22;
    OUTLINED_FUNCTION_7_30();
    sub_23B50D544();
    swift_getWitnessTable();
    sub_23B50D3D4();
    v23 = v17;
    if ((v40 & 1) != 0 || (v33 = v42, v40 = v42, v41 = v43, (sub_23B50D454() & 1) == 0))
    {
      v25 = v19;
      v26 = v23;
      v27 = v2;
      v28 = sub_23B50D5F4();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1326A0, &qword_23B511CE0) + 48);
      *v30 = type metadata accessor for TrendBaseline.Kind();
      sub_23B50D684();
      sub_23B50D5E4();
      v32 = v30;
      v2 = v27;
      (*(*(v28 - 8) + 104))(v32, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v39 + 8))(v26, v25);
    }

    else
    {
      v24 = v34;
      sub_23B50D674();
      (*(v35 + 8))(v24, v36);
      (*(v39 + 8))(v23, v19);
    }

    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_105();
}

uint64_t sub_23B456440()
{
  sub_23B50D8C4();
  TrendBaseline.Kind.hash(into:)();
  return sub_23B50D914();
}

uint64_t TrendBaseline.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_23B50A9E4();
  v6 = OUTLINED_FUNCTION_6(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2, v6);
}

uint64_t TrendBaseline.startDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_23B50AD24();
  v6 = OUTLINED_FUNCTION_6(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

uint64_t static TrendBaseline.== infix(_:_:)()
{
  sub_23B50A9E4();
  OUTLINED_FUNCTION_6_14();
  swift_getWitnessTable();
  if ((sub_23B50D134() & 1) == 0)
  {
    return 0;
  }

  v0 = *(type metadata accessor for TrendBaseline() + 32);

  return sub_23B50ACD4();
}

uint64_t sub_23B4565FC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065)
    {

      return 2;
    }

    else
    {
      v8 = sub_23B50D834();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_23B456710(char a1)
{
  if (!a1)
  {
    return 1684957547;
  }

  if (a1 == 1)
  {
    return 0x65756C6176;
  }

  return 0x7461447472617473;
}

uint64_t sub_23B45676C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = *(a3 + 16);
  result = sub_23B4565FC(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_23B456798(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_23B4567EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void TrendBaseline.encode(to:)()
{
  OUTLINED_FUNCTION_107();
  v20 = v0;
  v21 = v1;
  v3 = v2;
  v19 = v4;
  v5 = *(v4 + 16);
  type metadata accessor for TrendBaseline.CodingKeys();
  OUTLINED_FUNCTION_3_31();
  swift_getWitnessTable();
  v6 = sub_23B50D804();
  OUTLINED_FUNCTION_5(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  v14 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_23B50D974();
  type metadata accessor for TrendBaseline.Kind();
  OUTLINED_FUNCTION_6_14();
  swift_getWitnessTable();
  v15 = v21;
  sub_23B50D7F4();
  if (!v15)
  {
    v16 = v19;
    sub_23B50A9E4();
    OUTLINED_FUNCTION_6_14();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_9_22();
    v17 = *(v16 + 32);
    sub_23B50AD24();
    sub_23B402DA8(&qword_280B42B50);
    OUTLINED_FUNCTION_9_22();
  }

  (*(v8 + 8))(v13, v6);
  OUTLINED_FUNCTION_105();
}

void TrendBaseline.init(from:)()
{
  OUTLINED_FUNCTION_107();
  v53 = v0;
  v2 = v1;
  v44 = v3;
  v45 = sub_23B50AD24();
  v4 = OUTLINED_FUNCTION_5(v45);
  v43 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v49 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_7_30();
  v51 = sub_23B50A9E4();
  OUTLINED_FUNCTION_5(v51);
  v48 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v12);
  v47 = &v40 - v13;
  type metadata accessor for TrendBaseline.CodingKeys();
  OUTLINED_FUNCTION_3_31();
  swift_getWitnessTable();
  v52 = sub_23B50D754();
  OUTLINED_FUNCTION_5(v52);
  v46 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v17);
  v19 = &v40 - v18;
  OUTLINED_FUNCTION_7_30();
  v20 = type metadata accessor for TrendBaseline();
  OUTLINED_FUNCTION_5(v20);
  v42 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v24);
  v26 = &v40 - v25;
  v27 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v50 = v19;
  v28 = v53;
  sub_23B50D964();
  if (v28)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v29 = v46;
    v30 = v47;
    v53 = v26;
    v41 = v20;
    v32 = v48;
    v31 = v49;
    v33 = v51;
    OUTLINED_FUNCTION_7_30();
    type metadata accessor for TrendBaseline.Kind();
    OUTLINED_FUNCTION_6_14();
    swift_getWitnessTable();
    v34 = v50;
    sub_23B50D734();
    swift_getWitnessTable();
    sub_23B50D734();
    v35 = *(v32 + 32);
    v36 = v53;
    v35(v53, v30, v33);
    sub_23B402DA8(&qword_27E132008);
    v37 = v45;
    sub_23B50D734();
    (*(v29 + 8))(v34, v52);
    v38 = v41;
    (*(v43 + 32))(&v36[*(v41 + 32)], v31, v37);
    v39 = v42;
    (*(v42 + 16))(v44, v36, v38);
    __swift_destroy_boxed_opaque_existential_1(v2);
    (*(v39 + 8))(v36, v38);
  }

  OUTLINED_FUNCTION_105();
}

uint64_t TrendBaseline.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x23EE9DB40](0);
  sub_23B50A9E4();
  swift_getWitnessTable();
  sub_23B50D0E4();
  v4 = *(a2 + 32);
  sub_23B50AD24();
  sub_23B402DA8(&qword_280B42B48);
  return sub_23B50D0E4();
}

uint64_t TrendBaseline.hashValue.getter(uint64_t a1)
{
  sub_23B50D8C4();
  TrendBaseline.hash(into:)(v3, a1);
  return sub_23B50D914();
}

uint64_t sub_23B457048(uint64_t a1, uint64_t a2)
{
  sub_23B50D8C4();
  TrendBaseline.hash(into:)(v4, a2);
  return sub_23B50D914();
}

_BYTE *sub_23B4570EC(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_23B4571B8(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t CLLocationCoordinate2D.SolarEvents.sunset.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CLLocationCoordinate2D.SolarEvents() + 20);

  return sub_23B3CF890(a1, v3);
}

uint64_t CLLocationCoordinate2D.SolarEvents.isDaylight.setter(char a1)
{
  result = type metadata accessor for CLLocationCoordinate2D.SolarEvents();
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t HourTide.init(date:height:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_23B50AD24();
  OUTLINED_FUNCTION_6(v6);
  (*(v7 + 32))(a3, a1);
  v8 = *(type metadata accessor for HourTide() + 20);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6(v9);
  v11 = *(v10 + 32);

  return v11(a3 + v8, a2);
}

uint64_t HourTide.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23B50AD24();
  v4 = OUTLINED_FUNCTION_6(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t HourTide.date.setter(uint64_t a1)
{
  v3 = sub_23B50AD24();
  v4 = OUTLINED_FUNCTION_6(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t HourTide.height.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HourTide() + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t HourTide.height.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HourTide() + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, a1);
}

uint64_t static HourTide.== infix(_:_:)()
{
  if ((sub_23B50ACD4() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v0 = *(type metadata accessor for HourTide() + 20);
  sub_23B3E38E8(&qword_280B42BC0);
  return sub_23B50D134() & 1;
}

uint64_t sub_23B457830(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_23B50D834();

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

uint64_t sub_23B4578F4(char a1)
{
  if (a1)
  {
    return 0x746867696568;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_23B457928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B457830(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B457950(uint64_t a1)
{
  v2 = sub_23B457B80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B45798C(uint64_t a1)
{
  v2 = sub_23B457B80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HourTide.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1337F8, &qword_23B518B48);
  v4 = OUTLINED_FUNCTION_5(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v14[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B457B80();
  sub_23B50D974();
  v14[15] = 0;
  sub_23B50AD24();
  sub_23B402DA8(&qword_280B42B50);
  OUTLINED_FUNCTION_40();
  if (!v1)
  {
    v12 = *(type metadata accessor for HourTide() + 20);
    v14[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
    sub_23B3E38E8(&qword_280B42BD0);
    OUTLINED_FUNCTION_40();
  }

  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_23B457B80()
{
  result = qword_27E133800;
  if (!qword_27E133800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133800);
  }

  return result;
}

uint64_t HourTide.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v4 = OUTLINED_FUNCTION_5(v40);
  v37 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v35 - v8;
  v43 = sub_23B50AD24();
  v10 = OUTLINED_FUNCTION_5(v43);
  v39 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v41 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133808, &qword_23B518B50);
  v15 = OUTLINED_FUNCTION_5(v44);
  v42 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = type metadata accessor for HourTide();
  v20 = OUTLINED_FUNCTION_6(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B457B80();
  sub_23B50D964();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v36 = v19;
  v26 = v24;
  v28 = v39;
  v27 = v40;
  v46 = 0;
  sub_23B402DA8(&qword_27E132008);
  v29 = v41;
  sub_23B50D734();
  v30 = *(v28 + 32);
  v35 = v26;
  v30(v26, v29, v43);
  v45 = 1;
  sub_23B3E38E8(&qword_27E131E60);
  sub_23B50D734();
  v31 = OUTLINED_FUNCTION_2_26();
  v32(v31);
  v33 = v35;
  (*(v37 + 32))(v35 + *(v36 + 20), v9, v27);
  sub_23B457F84(v33, v38);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23B457FE8(v33);
}

uint64_t sub_23B457F84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HourTide();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B457FE8(uint64_t a1)
{
  v2 = type metadata accessor for HourTide();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for HourTide.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B458180()
{
  result = qword_27E133810;
  if (!qword_27E133810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133810);
  }

  return result;
}

unint64_t sub_23B4581D8()
{
  result = qword_27E133818;
  if (!qword_27E133818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133818);
  }

  return result;
}

unint64_t sub_23B458230()
{
  result = qword_27E133820;
  if (!qword_27E133820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133820);
  }

  return result;
}

unint64_t Forecast.debugDescription.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133828, &qword_23B518D00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_12();
  v136 = v4;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_76();
  v144 = v6;
  v148 = type metadata accessor for DayWeather();
  v7 = OUTLINED_FUNCTION_6(v148);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12();
  v132 = v10;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_76();
  v137 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133830, &qword_23B518D08);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_12();
  v139 = v15;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_76();
  v146 = v17;
  v147 = type metadata accessor for HourWeather();
  v18 = OUTLINED_FUNCTION_6(v147);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_12();
  v133 = v21;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_76();
  v140 = v23;
  v24 = *(a1 + 16);
  v25 = sub_23B50D504();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_12();
  v135 = v28;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5_1();
  v143 = v30;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_5_1();
  v138 = v32;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_5_1();
  v145 = v34;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_5_1();
  v141 = v36;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v37);
  v39 = &v132 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133838, &qword_23B518D10);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v43 = &v132 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v46 = &v132 - v45;
  v47 = type metadata accessor for MinuteWeather();
  v48 = OUTLINED_FUNCTION_6(v47);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_12();
  v134 = v51;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_76();
  v142 = v53;
  WitnessTable = swift_getWitnessTable();
  sub_23B50D444();
  OUTLINED_FUNCTION_4_19(v39);
  v150 = v25;
  v151 = v26;
  if (v55)
  {
    (*(v26 + 8))(v39, v25);
    OUTLINED_FUNCTION_18_13(v46, 1);
LABEL_6:
    v43 = v46;
    goto LABEL_7;
  }

  v54 = OUTLINED_FUNCTION_14_20();
  OUTLINED_FUNCTION_18_13(v46, v54 ^ 1u);
  OUTLINED_FUNCTION_24_9(v46, 1);
  if (v55)
  {
    goto LABEL_6;
  }

  v71 = v142;
  sub_23B459140(v46, v142, type metadata accessor for MinuteWeather);
  OUTLINED_FUNCTION_0_35();
  swift_getWitnessTable();
  v72 = v141;
  sub_23B50D0F4();
  OUTLINED_FUNCTION_4_19(v72);
  if (v73)
  {
    OUTLINED_FUNCTION_9_23();
    (*(v151 + 8))(v72, v150);
    OUTLINED_FUNCTION_18_13(v43, 1);
  }

  else
  {
    v94 = OUTLINED_FUNCTION_14_20();
    OUTLINED_FUNCTION_18_13(v43, v94 ^ 1u);
    OUTLINED_FUNCTION_24_9(v43, 1);
    if (!v95)
    {
      v108 = v71;
      v109 = type metadata accessor for MinuteWeather;
      v110 = v43;
      v111 = v134;
      sub_23B459140(v110, v134, type metadata accessor for MinuteWeather);
      OUTLINED_FUNCTION_15_12();
      sub_23B50D5C4();
      MEMORY[0x23EE9D460](0x20736574756E696DLL, 0xEE003D746E756F63);
      OUTLINED_FUNCTION_11_13();
      v152 = sub_23B50D434();
      sub_23B50D824();
      OUTLINED_FUNCTION_16_10();

      OUTLINED_FUNCTION_2_27();
      sub_23B50AD24();
      sub_23B4590E8();
      OUTLINED_FUNCTION_17_11();
      OUTLINED_FUNCTION_20_12();

      OUTLINED_FUNCTION_22_10();
      OUTLINED_FUNCTION_17_11();
      OUTLINED_FUNCTION_16_10();

      MEMORY[0x23EE9D460](0xD000000000000012, 0x800000023B535E60);
      OUTLINED_FUNCTION_13_13(*(v108 + *(v47 + 20)));
      Precipitation.description.getter();
      OUTLINED_FUNCTION_16_10();

      MEMORY[0x23EE9D460](0xD000000000000012, 0x800000023B535EE0);
      v112 = *(v47 + 28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
      sub_23B4591FC(&qword_280B42BD8, &qword_27E131E10, &unk_23B5100F0);
      OUTLINED_FUNCTION_17_11();
      OUTLINED_FUNCTION_20_12();

      OUTLINED_FUNCTION_5_20();
      OUTLINED_FUNCTION_13_13(*(v111 + *(v47 + 20)));
      Precipitation.description.getter();
      OUTLINED_FUNCTION_20_12();

      OUTLINED_FUNCTION_5_20();
      v113 = v111 + *(v47 + 28);
      OUTLINED_FUNCTION_17_11();
      OUTLINED_FUNCTION_16_10();

      v89 = v153;
      v114 = v111;
LABEL_38:
      sub_23B4591A0(v114, v109);
      v122 = v108;
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_9_23();
  }

LABEL_7:
  sub_23B398890(v43, &qword_27E133838, &qword_23B518D10);
  v56 = v145;
  OUTLINED_FUNCTION_11_13();
  sub_23B50D444();
  OUTLINED_FUNCTION_4_19(v56);
  v57 = v147;
  if (v55)
  {
    v58 = v151;
    v59 = v56;
    v60 = v150;
    (*(v151 + 8))(v59, v150);
    v64 = v146;
    v61 = OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_18_13(v61, v62);
    v63 = v148;
    goto LABEL_19;
  }

  v64 = v146;
  OUTLINED_FUNCTION_14_20();
  v65 = OUTLINED_FUNCTION_10_17();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v57);
  v68 = OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_24_9(v68, v69);
  v63 = v148;
  v58 = v151;
  if (v70)
  {
    goto LABEL_12;
  }

  v74 = v140;
  sub_23B459140(v64, v140, type metadata accessor for HourWeather);
  OUTLINED_FUNCTION_0_35();
  swift_getWitnessTable();
  v75 = v138;
  sub_23B50D0F4();
  OUTLINED_FUNCTION_4_19(v75);
  if (!v76)
  {
    v64 = v139;
    OUTLINED_FUNCTION_14_20();
    v96 = OUTLINED_FUNCTION_10_17();
    __swift_storeEnumTagSinglePayload(v96, v97, v98, v57);
    v99 = OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_24_9(v99, v100);
    if (!v101)
    {
      v115 = v74;
      v109 = type metadata accessor for HourWeather;
      v116 = v133;
      sub_23B459140(v64, v133, type metadata accessor for HourWeather);
      OUTLINED_FUNCTION_15_12();
      sub_23B50D5C4();
      MEMORY[0x23EE9D460](0x6F63207372756F68, 0xEC0000003D746E75);
      OUTLINED_FUNCTION_11_13();
      v152 = sub_23B50D434();
      sub_23B50D824();
      OUTLINED_FUNCTION_16_10();

      OUTLINED_FUNCTION_2_27();
      sub_23B50AD24();
      sub_23B4590E8();
      v117 = OUTLINED_FUNCTION_17_11();
      MEMORY[0x23EE9D460](v117);

      OUTLINED_FUNCTION_22_10();
      OUTLINED_FUNCTION_17_11();
      OUTLINED_FUNCTION_16_10();

      MEMORY[0x23EE9D460](0xD000000000000012, 0x800000023B535E60);
      OUTLINED_FUNCTION_13_13(*(v115 + *(v57 + 40)));
      WeatherCondition.description.getter();
      OUTLINED_FUNCTION_16_10();

      MEMORY[0x23EE9D460](0xD000000000000014, 0x800000023B535EA0);
      v118 = *(v57 + 88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
      sub_23B4591FC(&qword_280B42B70, &qword_27E131E30, &qword_23B511AC0);
      v119 = OUTLINED_FUNCTION_17_11();
      MEMORY[0x23EE9D460](v119);

      OUTLINED_FUNCTION_5_20();
      OUTLINED_FUNCTION_13_13(*(v116 + *(v57 + 40)));
      v120 = WeatherCondition.description.getter();
      MEMORY[0x23EE9D460](v120);

      MEMORY[0x23EE9D460](0xD000000000000013, 0x800000023B535EC0);
      v121 = v116 + *(v57 + 88);
      OUTLINED_FUNCTION_17_11();
      OUTLINED_FUNCTION_16_10();

      v89 = v153;
      sub_23B4591A0(v116, type metadata accessor for HourWeather);
      v122 = v115;
LABEL_39:
      sub_23B4591A0(v122, v109);
      return v89;
    }

    OUTLINED_FUNCTION_7_31();
LABEL_12:
    v60 = v150;
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_7_31();
  v60 = v150;
  (*(v58 + 8))(v75, v150);
  v64 = v139;
  v77 = OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_18_13(v77, v78);
LABEL_19:
  sub_23B398890(v64, &qword_27E133830, &qword_23B518D08);
  v79 = v143;
  OUTLINED_FUNCTION_11_13();
  sub_23B50D444();
  OUTLINED_FUNCTION_4_19(v79);
  v80 = v144;
  if (v55)
  {
    (*(v58 + 8))(v79, v60);
LABEL_22:
    v81 = OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v81, v82, 1, v63);
    goto LABEL_24;
  }

  swift_dynamicCast();
  v83 = OUTLINED_FUNCTION_10_17();
  __swift_storeEnumTagSinglePayload(v83, v84, v85, v63);
  v86 = OUTLINED_FUNCTION_44_0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v86, v87, v63);
  if (EnumTagSinglePayload == 1)
  {
    goto LABEL_24;
  }

  v91 = v58;
  v92 = v137;
  sub_23B459140(v80, v137, type metadata accessor for DayWeather);
  OUTLINED_FUNCTION_0_35();
  swift_getWitnessTable();
  v93 = v135;
  sub_23B50D0F4();
  OUTLINED_FUNCTION_4_19(v93);
  if (v55)
  {
    OUTLINED_FUNCTION_8_15();
    (*(v91 + 8))(v93, v60);
    v80 = v136;
    goto LABEL_22;
  }

  v80 = v136;
  swift_dynamicCast();
  v102 = OUTLINED_FUNCTION_10_17();
  __swift_storeEnumTagSinglePayload(v102, v103, v104, v63);
  v105 = OUTLINED_FUNCTION_44_0();
  v107 = __swift_getEnumTagSinglePayload(v105, v106, v63);
  if (v107 != 1)
  {
    v109 = type metadata accessor for DayWeather;
    v123 = v132;
    sub_23B459140(v80, v132, type metadata accessor for DayWeather);
    OUTLINED_FUNCTION_15_12();
    sub_23B50D5C4();
    MEMORY[0x23EE9D460](0x756F632073796164, 0xEB000000003D746ELL);
    v152 = sub_23B50D434();
    v124 = sub_23B50D824();
    v108 = v92;
    MEMORY[0x23EE9D460](v124);

    OUTLINED_FUNCTION_2_27();
    sub_23B50AD24();
    sub_23B4590E8();
    OUTLINED_FUNCTION_21_9();
    OUTLINED_FUNCTION_20_12();

    OUTLINED_FUNCTION_22_10();
    v125 = OUTLINED_FUNCTION_21_9();
    MEMORY[0x23EE9D460](v125);

    MEMORY[0x23EE9D460](0xD000000000000012, 0x800000023B535E60);
    OUTLINED_FUNCTION_13_13(*(v92 + v63[5]));
    v126 = WeatherCondition.description.getter();
    MEMORY[0x23EE9D460](v126);

    MEMORY[0x23EE9D460](0x207473726966202CLL, 0xED00003D68676968);
    v127 = v63[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
    sub_23B4591FC(&qword_280B42B70, &qword_27E131E30, &qword_23B511AC0);
    v128 = OUTLINED_FUNCTION_21_9();
    MEMORY[0x23EE9D460](v128);

    MEMORY[0x23EE9D460](0x207473726966202CLL, 0xEC0000003D776F6CLL);
    v129 = v92 + v63[9];
    OUTLINED_FUNCTION_21_9();
    OUTLINED_FUNCTION_20_12();

    OUTLINED_FUNCTION_5_20();
    OUTLINED_FUNCTION_13_13(*(v123 + v63[5]));
    WeatherCondition.description.getter();
    OUTLINED_FUNCTION_20_12();

    MEMORY[0x23EE9D460](0x68207473616C202CLL, 0xEC0000003D686769);
    v130 = v123 + v63[7];
    OUTLINED_FUNCTION_21_9();
    OUTLINED_FUNCTION_20_12();

    MEMORY[0x23EE9D460](0x6C207473616C202CLL, 0xEB000000003D776FLL);
    v131 = v123 + v63[9];
    OUTLINED_FUNCTION_21_9();
    OUTLINED_FUNCTION_16_10();

    v89 = v153;
    v114 = v123;
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_8_15();
LABEL_24:
  sub_23B398890(v80, &qword_27E133828, &qword_23B518D00);
  return 0xD000000000000015;
}

unint64_t sub_23B4590E8()
{
  result = qword_280B42B40;
  if (!qword_280B42B40)
  {
    sub_23B50AD24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42B40);
  }

  return result;
}

uint64_t sub_23B459140(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_6(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_23B4591A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_23B4591FC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t WeatherServiceCacheObserverProduct.hashValue.getter()
{
  v1 = *v0;
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](v1);
  return sub_23B50D914();
}

uint64_t *WeatherServiceCacheObserverConfiguration.init(location:products:excludeLocalChanges:)@<X0>(uint64_t *result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v5 = *result;
  v6 = *(result + 8);
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  *(a3 + 25) = a2;
  return result;
}

double WeatherServiceCacheObservation.location.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t WeatherServiceCacheObservationToken.hash(into:)()
{
  sub_23B50AD64();
  OUTLINED_FUNCTION_0_36();
  sub_23B45952C(v0, v1);

  return sub_23B50D0E4();
}

uint64_t WeatherServiceCacheObservationToken.hashValue.getter()
{
  sub_23B50D8C4();
  sub_23B50AD64();
  OUTLINED_FUNCTION_0_36();
  sub_23B45952C(v0, v1);
  sub_23B50D0E4();
  return sub_23B50D914();
}

uint64_t sub_23B459408()
{
  sub_23B50D8C4();
  sub_23B50AD64();
  sub_23B45952C(&qword_27E132B48, MEMORY[0x277CC95F0]);
  sub_23B50D0E4();
  return sub_23B50D914();
}

unint64_t sub_23B459490()
{
  result = qword_27E133840;
  if (!qword_27E133840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133840);
  }

  return result;
}

uint64_t sub_23B45952C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for WeatherServiceCacheObservationToken()
{
  result = qword_27E133850;
  if (!qword_27E133850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherServiceCacheObserverProduct(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_23B4596D0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 26))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23B459710(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_23B459768(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_23B4597A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23B459820()
{
  result = sub_23B50AD64();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t WeatherMetadata.init(date:expirationDate:latitude:longitude:attribution:)(uint64_t a1, uint64_t a2, uint64_t *a3, double a4, double a5)
{
  v12 = OUTLINED_FUNCTION_8_16(a1, a2, a3);
  v13 = OUTLINED_FUNCTION_13_14(v12);
  OUTLINED_FUNCTION_6(v13);
  v15 = *(v14 + 32);
  v15(v6, v5, v13);
  v16 = OUTLINED_FUNCTION_10_18();
  (v15)(v16);
  *(v6 + *(v7 + 24)) = a4;
  *(v6 + *(v7 + 28)) = a5;
  v17 = *(v6 + v9);

  *(v6 + v9) = v8;
  return result;
}

uint64_t WeatherMetadata.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23B50AD24();
  v4 = OUTLINED_FUNCTION_6(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t WeatherMetadata.date.setter()
{
  OUTLINED_FUNCTION_19();
  v2 = sub_23B50AD24();
  v3 = OUTLINED_FUNCTION_6(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t WeatherMetadata.expirationDate.setter()
{
  OUTLINED_FUNCTION_19();
  v2 = *(type metadata accessor for WeatherMetadata() + 20);
  v3 = sub_23B50AD24();
  OUTLINED_FUNCTION_6(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t WeatherMetadata.expirationDate.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for WeatherMetadata() + 20);
  return OUTLINED_FUNCTION_44();
}

id WeatherMetadata.location.getter()
{
  v1 = type metadata accessor for WeatherMetadata();
  v2 = *(v0 + *(v1 + 24));
  v3 = *(v0 + *(v1 + 28));
  v4 = objc_allocWithZone(MEMORY[0x277CE41F8]);

  return [v4 initWithLatitude:v2 longitude:v3];
}

uint64_t WeatherMetadata.latitude.setter(double a1)
{
  result = type metadata accessor for WeatherMetadata();
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t WeatherMetadata.latitude.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for WeatherMetadata() + 24);
  return OUTLINED_FUNCTION_44();
}

uint64_t WeatherMetadata.longitude.setter(double a1)
{
  result = type metadata accessor for WeatherMetadata();
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t WeatherMetadata.longitude.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for WeatherMetadata() + 28);
  return OUTLINED_FUNCTION_44();
}

uint64_t WeatherMetadata.attribution.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for WeatherMetadata() + 32);
  v4 = *(v1 + v3);

  *(v1 + v3) = v2;
  return result;
}

uint64_t WeatherMetadata.attribution.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for WeatherMetadata() + 32);
  return OUTLINED_FUNCTION_44();
}

uint64_t WeatherMetadata.init(date:expirationDate:latitude:longitude:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v63 = a2;
  v64 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_12_0();
  v60 = v10 - v11;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_1();
  v58 = v13;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5_1();
  v61 = v15;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v16);
  v18 = v54 - v17;
  v19 = sub_23B50AB34();
  v20 = OUTLINED_FUNCTION_5(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_12_0();
  v57 = (v25 - v26);
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_5_1();
  v59 = v28;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5_1();
  v62 = v30;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v31);
  v33 = v54 - v32;
  v34 = type metadata accessor for WeatherMetadata();
  v56 = v34[8];
  *(a3 + v56) = 0;
  v35 = sub_23B50AD24();
  v36 = *(v35 - 8);
  v37 = *(v36 + 16);
  v37(a3, v64, v35);
  v37(a3 + v34[5], v63, v35);
  *(a3 + v34[6]) = a4;
  v38 = v34[7];
  v55 = a3;
  *(a3 + v38) = a5;
  sub_23B50AB04();
  result = OUTLINED_FUNCTION_4_20(v18);
  if (v40)
  {
    __break(1u);
    goto LABEL_7;
  }

  v41 = *(v22 + 32);
  v54[1] = v33;
  v41(v33, v18, v19);
  v42 = v61;
  sub_23B50AB04();
  result = OUTLINED_FUNCTION_4_20(v42);
  if (v40)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v41(v62, v42, v19);
  v43 = v58;
  sub_23B50AB04();
  result = OUTLINED_FUNCTION_4_20(v43);
  v44 = v60;
  if (v40)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v41(v59, v43, v19);
  sub_23B50AB04();
  result = OUTLINED_FUNCTION_4_20(v44);
  if (!v40)
  {
    v45 = *(v36 + 8);
    v45(v63, v35);
    v45(v64, v35);
    v41(v57, v44, v19);
    v46 = type metadata accessor for WeatherAttribution.Storage();
    v47 = *(v46 + 48);
    v48 = *(v46 + 52);
    swift_allocObject();
    sub_23B42E3E8();
    v50 = v49;
    v51 = v55;
    v52 = v56;
    v53 = *(v55 + v56);

    *(v51 + v52) = v50;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t WeatherMetadata.init(date:expirationDate:attribution:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v8 = OUTLINED_FUNCTION_8_16(a1, a2, a3);
  v9 = OUTLINED_FUNCTION_13_14(v8);
  OUTLINED_FUNCTION_6(v9);
  v11 = *(v10 + 32);
  v11(v4, v3, v9);
  v12 = OUTLINED_FUNCTION_10_18();
  (v11)(v12);
  *(v4 + *(v5 + 24)) = 0;
  *(v4 + *(v5 + 28)) = 0;
  v13 = *(v4 + v7);

  *(v4 + v7) = v6;
  return result;
}

uint64_t sub_23B45A180(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6974617269707865 && a2 == 0xEE00657461446E6FLL;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x7475626972747461 && a2 == 0xEB000000006E6F69)
        {

          return 4;
        }

        else
        {
          v10 = sub_23B50D834();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_23B45A334(char a1)
{
  result = 1702125924;
  switch(a1)
  {
    case 1:
      result = 0x6974617269707865;
      break;
    case 2:
      result = 0x656475746974616CLL;
      break;
    case 3:
      result = 0x64757469676E6F6CLL;
      break;
    case 4:
      result = 0x7475626972747461;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B45A3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B45A180(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B45A410(uint64_t a1)
{
  v2 = sub_23B45A7F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B45A44C(uint64_t a1)
{
  v2 = sub_23B45A7F0();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static WeatherMetadata.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_23B50ACD4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for WeatherMetadata();
  v5 = v4[5];
  if ((sub_23B50ACD4() & 1) == 0 || *(a1 + v4[6]) != *(a2 + v4[6]) || *(a1 + v4[7]) != *(a2 + v4[7]))
  {
    return 0;
  }

  v6 = v4[8];
  v7 = *(a2 + v6);
  if (*(a1 + v6))
  {
    if (v7)
    {
      type metadata accessor for WeatherAttribution.Storage();
      swift_retain_n();

      sub_23B42DD28();
      v9 = v8;

      return (v9 & 1) != 0;
    }

    v11 = *(a1 + v6);
  }

  else if (!v7)
  {
    return 1;
  }

  return 0;
}

uint64_t WeatherMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133860, &qword_23B519058);
  v6 = OUTLINED_FUNCTION_5(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = v21 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B45A7F0();
  sub_23B50D974();
  v26 = 0;
  sub_23B50AD24();
  OUTLINED_FUNCTION_0_37();
  sub_23B45AF50(v14, v15);
  OUTLINED_FUNCTION_5_2();
  sub_23B50D7F4();
  if (!v2)
  {
    v16 = type metadata accessor for WeatherMetadata();
    v17 = v16[5];
    v25 = 1;
    OUTLINED_FUNCTION_5_2();
    sub_23B50D7F4();
    v18 = *(v3 + v16[6]);
    v24 = 2;
    OUTLINED_FUNCTION_5_2();
    sub_23B50D7C4();
    v19 = *(v3 + v16[7]);
    v23 = 3;
    OUTLINED_FUNCTION_5_2();
    sub_23B50D7C4();
    v21[1] = *(v3 + v16[8]);
    v22 = 4;
    sub_23B45A844();

    OUTLINED_FUNCTION_5_2();
    sub_23B50D794();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_23B45A7F0()
{
  result = qword_280B426C0;
  if (!qword_280B426C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B426C0);
  }

  return result;
}

unint64_t sub_23B45A844()
{
  result = qword_280B428A0;
  if (!qword_280B428A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B428A0);
  }

  return result;
}

uint64_t WeatherMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_23B50AD24();
  v4 = OUTLINED_FUNCTION_5(v3);
  v45 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12_0();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v47 = &v43 - v12;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133868, &qword_23B519060);
  v13 = OUTLINED_FUNCTION_5(v48);
  v46 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v18 = &v43 - v17;
  v19 = type metadata accessor for WeatherMetadata();
  v20 = OUTLINED_FUNCTION_6(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v51 = *(v24 + 32);
  v25 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v25[v51] = 0;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B45A7F0();
  v49 = v18;
  v27 = v50;
  sub_23B50D964();
  if (v27)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v30 = *&v25[v51];
  }

  else
  {
    v50 = v19;
    v57 = 0;
    OUTLINED_FUNCTION_0_37();
    sub_23B45AF50(v28, v29);
    OUTLINED_FUNCTION_12_15();
    sub_23B50D734();
    v31 = v25;
    v32 = v47;
    v47 = *(v45 + 32);
    (v47)(v25, v32, v3);
    v56 = 1;
    v33 = v10;
    OUTLINED_FUNCTION_12_15();
    sub_23B50D734();
    v34 = v50;
    (v47)(v31 + *(v50 + 20), v33, v3);
    v55 = 2;
    v35 = v48;
    v47 = 0;
    sub_23B50D704();
    v36 = v46;
    *(v31 + *(v34 + 24)) = v37;
    v54 = 3;
    OUTLINED_FUNCTION_12_15();
    sub_23B50D704();
    *(v31 + *(v34 + 28)) = v38;
    v53 = 4;
    sub_23B45ACF4();
    OUTLINED_FUNCTION_12_15();
    sub_23B50D6D4();
    (*(v36 + 8))(v49, v35);
    v40 = v51;
    v39 = v52;
    v41 = *(v31 + v51);

    *(v31 + v40) = v39;
    sub_23B3CA078(v31, v44);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_23B3E79F4(v31);
  }
}

unint64_t sub_23B45ACF4()
{
  result = qword_27E133870;
  if (!qword_27E133870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133870);
  }

  return result;
}

void WeatherMetadata.hash(into:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_19();
  sub_23B50AD24();
  OUTLINED_FUNCTION_0_37();
  sub_23B45AF50(v2, v3);
  sub_23B50D0E4();
  v4 = type metadata accessor for WeatherMetadata();
  v5 = v0 + v4[5];
  sub_23B50D0E4();
  v6 = *(v1 + v4[6]);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x23EE9DB70](*&v6);
  v7 = *(v1 + v4[7]);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  MEMORY[0x23EE9DB70](*&v7);
  if (*(v1 + v4[8]))
  {
    sub_23B50D8E4();
    sub_23B42E190();
  }

  else
  {
    sub_23B50D8E4();
  }
}

uint64_t WeatherMetadata.hashValue.getter()
{
  sub_23B50D8C4();
  WeatherMetadata.hash(into:)();
  return sub_23B50D914();
}

uint64_t sub_23B45AECC()
{
  sub_23B50D8C4();
  WeatherMetadata.hash(into:)();
  return sub_23B50D914();
}

uint64_t sub_23B45AF50(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for WeatherMetadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B45B0A0()
{
  result = qword_27E133880;
  if (!qword_27E133880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133880);
  }

  return result;
}

unint64_t sub_23B45B0F8()
{
  result = qword_280B426B0;
  if (!qword_280B426B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B426B0);
  }

  return result;
}

unint64_t sub_23B45B150()
{
  result = qword_280B426B8;
  if (!qword_280B426B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B426B8);
  }

  return result;
}

void WeatherService.fetchWeather<A>(for:including:options:completion:)()
{
  OUTLINED_FUNCTION_21();
  v4 = v3;
  v57 = v5;
  v58 = v6;
  v59 = v7;
  v60 = v8;
  v10 = v9;
  v11 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_5(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18_14();
  v56 = sub_23B50AD24();
  v17 = OUTLINED_FUNCTION_5(v56);
  v54 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6_0();
  v52 = v21;
  OUTLINED_FUNCTION_24_0();
  v55 = sub_23B50AA24();
  v22 = OUTLINED_FUNCTION_5(v55);
  v53 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_0();
  v51 = v26;
  OUTLINED_FUNCTION_24_0();
  Options = type metadata accessor for InstantWeatherQueryOptions();
  v28 = OUTLINED_FUNCTION_6(Options);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_12_0();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_30_4();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F70, &unk_23B5192B0);
  OUTLINED_FUNCTION_3(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_20_0();
  sub_23B3E45D0(v10, v4, v2);
  v39 = OUTLINED_FUNCTION_172_0();
  OUTLINED_FUNCTION_51(v39, v40, Options);
  if (v41)
  {
    OUTLINED_FUNCTION_117_0();
    v42(v0, v10, v11);
    v63 = v4;
    sub_23B39C90C(v59, &v61, v60, v57, v58, 1, &v63, v43, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v0);
    (*(v13 + 8))(v0, v11);
  }

  else
  {
    sub_23B3B0A98();
    OUTLINED_FUNCTION_202();
    sub_23B477C04();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v45 = (v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F18, &qword_23B515838) + 48));
      v46 = *v45;
      v47 = *(v45 + 8);
      (*(v53 + 32))(v51, v33, v55);
      v61 = v46;
      v62 = v47;
      OUTLINED_FUNCTION_139_0();
      v48 = swift_allocObject();
      v48[2] = v4;
      v48[3] = v57;
      v48[4] = v58;

      WeatherService.fetchInstantWeather<A>(for:dataSet:spanning:stride:with:completion:)();

      (*(v53 + 8))(v51, v55);
    }

    else
    {
      (*(v54 + 32))(v52, v33, v56);
      OUTLINED_FUNCTION_139_0();
      v49 = swift_allocObject();
      v49[2] = v4;
      v49[3] = v57;
      v49[4] = v58;

      WeatherService.fetchInstantWeather<A>(for:dataSet:at:with:completion:)();

      (*(v54 + 8))(v52, v56);
    }

    sub_23B3A24BC(v1, type metadata accessor for InstantWeatherQueryOptions);
  }

  OUTLINED_FUNCTION_20();
}

void WeatherService.fetchInstantWeather<A>(for:dataSet:spanning:stride:with:completion:)()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v22 = v5;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for WeatherQuery();
  v11 = OUTLINED_FUNCTION_5(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_21_1();
  v23 = *v7;
  v24 = *(v7 + 8);
  OUTLINED_FUNCTION_169_0();
  OUTLINED_FUNCTION_200_0();
  v16();
  v17 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v2;
  (*(v13 + 32))(v19 + v17, v0, v10);
  *(v19 + v18) = v9;
  v20 = (v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v20 = v22;
  v20[1] = v4;
  v21 = v9;

  WeatherService.fetchInstantWeather(for:spanning:stride:with:completion:)();

  OUTLINED_FUNCTION_20();
}

void WeatherService.fetchInstantWeather<A>(for:dataSet:at:with:completion:)()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v20 = v5;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for WeatherQuery();
  v11 = OUTLINED_FUNCTION_5(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_23();
  (*(v13 + 16))(v0, v7, v10);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = (v15 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v2;
  (*(v13 + 32))(v18 + v16, v0, v10);
  *(v18 + v17) = v9;
  v19 = (v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v19 = v20;
  v19[1] = v4;
  v9;

  WeatherService.fetchInstantWeather(for:at:with:completion:)();

  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B45B8F8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

void WeatherService.fetchWeather<A, B, C>(for:including:_:_:options:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_21();
  v66 = v26;
  v67 = v22;
  v28 = v27;
  v64 = v29;
  v65 = v30;
  v62 = v32;
  v63 = v31;
  v60 = v33;
  v61 = v34;
  v35 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_5(v35);
  v37 = v36;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_15_13();
  OUTLINED_FUNCTION_63();
  v41 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_5(v41);
  v43 = v42;
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_127();
  v47 = OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_5(v47);
  v49 = v48;
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_88_0();
  v53(v23, v60, v47);
  v69 = v23;
  OUTLINED_FUNCTION_117_0();
  v54(v24, v61, v41);
  v70 = v24;
  OUTLINED_FUNCTION_141_0();
  v55(v25, v62, v35);
  v71 = v25;
  v68[2] = a22;
  sub_23B39C90C(v63, &v69, v64, v65, v66, 3, v68, v56, a21, v60, v61, a22, v62, v63, v64, v65, v66, v67, v28, a21);
  (*(v37 + 8))(v25, v35);
  (*(v43 + 8))(v24, v41);
  v57 = *(v49 + 8);
  v58 = OUTLINED_FUNCTION_270();
  v59(v58);
  OUTLINED_FUNCTION_20();
}

void WeatherService.fetchWeather<A, B, C, D>(for:including:_:_:_:options:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_21();
  a19 = v27;
  a20 = v28;
  v92 = v29;
  v90 = v30;
  v91 = v31;
  v88 = v33;
  v89 = v32;
  v86 = v34;
  v84 = v35;
  v82 = v36;
  v75 = a21;
  v37 = a22;
  v80 = a22;
  v38 = a23;
  v83 = a23;
  v87 = a24;
  v85 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_5(v85);
  v40 = v39;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_29_8(v44, v71);
  OUTLINED_FUNCTION_65_0();
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_177_0();
  OUTLINED_FUNCTION_2_28(v45, &a14);
  v47 = v46;
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_2_28(v51, &a16);
  v53 = v52;
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_63();
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_2_28(v57, &a17);
  v59 = v58;
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_170_0();
  v63(v38, v82);
  v94 = v38;
  OUTLINED_FUNCTION_86_0();
  v64(v24, v84, v37);
  v95 = v24;
  OUTLINED_FUNCTION_107_0();
  v65(v25, v86, v26);
  v96 = v25;
  v66 = v40;
  v67 = *(v40 + 16);
  v68 = v81;
  v69 = v85;
  v67(v81, v88, v85);
  v97 = v81;
  v93[0] = v75;
  v93[1] = v80;
  v93[2] = v83;
  v93[3] = v87;
  sub_23B39C90C(v89, &v94, v90, v91, v92, 4, v93, v70, v72, v73, v75, v76, v78, v80, v81, v82, v83, v84, v85, v86);
  (*(v66 + 8))(v68, v69);
  (*(v47 + 8))(v25, v74);
  (*(v53 + 8))(v24, v77);
  (*(v59 + 8))(v38, v79);
  OUTLINED_FUNCTION_20();
}

void WeatherService.fetchWeather<A, B, C, D, E>(for:including:_:_:_:_:options:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_21();
  a19 = v28;
  a20 = v29;
  v100 = v30;
  v99 = v31;
  v96 = v32;
  v93 = v33;
  v90 = v34;
  v35 = a22;
  v97 = v36;
  v98 = a21;
  v85 = a23;
  v37 = a24;
  v88 = a24;
  v92 = a25;
  v95 = a26;
  v94 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_5(v94);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v41);
  v42 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v42, &a13);
  v44 = v43;
  v79 = v43;
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_52();
  v101 = v48;
  OUTLINED_FUNCTION_24_0();
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_177_0();
  OUTLINED_FUNCTION_2_28(v49, &v107);
  v51 = v50;
  v82 = v50;
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_2_28(v55, &a9);
  v57 = v56;
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_84_0();
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_2_28(v61, &a11);
  v63 = v62;
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_86_0();
  OUTLINED_FUNCTION_238();
  v67();
  v103 = v35;
  OUTLINED_FUNCTION_169_0();
  OUTLINED_FUNCTION_245();
  v68();
  v104 = v26;
  (*(v51 + 16))(v37, v93, v27);
  v105 = v37;
  OUTLINED_FUNCTION_170_0();
  OUTLINED_FUNCTION_149_0();
  v69();
  v106 = v101;
  OUTLINED_FUNCTION_40_3(&a18);
  v70 = OUTLINED_FUNCTION_236_0();
  v71(v70, v96, v94);
  v107 = v101;
  OUTLINED_FUNCTION_111();
  v102[0] = v35;
  v102[1] = v72;
  OUTLINED_FUNCTION_207();
  v102[2] = v74;
  v102[3] = v73;
  v102[4] = v95;
  sub_23B39C90C(v97, &v103, v99, v100, v98, 5, v102, v75, v78, v79, v80, v82, v83, v85, v86, v88, v89, v90, v91, v92);
  (*(v51 + 24))(v101, v94);
  OUTLINED_FUNCTION_56_1(&v106);
  v76(v101, v44);
  OUTLINED_FUNCTION_56_1(&v108);
  v77(v37, v81);
  (*(v57 + 8))(v26, v84);
  (*(v63 + 8))(v35, v87);
  OUTLINED_FUNCTION_20();
}

void WeatherService.fetchWeather<A, B, C, D, E, F>(for:including:_:_:_:_:_:options:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_21();
  a19 = v30;
  a20 = v31;
  v109 = v32;
  v103 = v33;
  v108 = a21;
  v106 = v34;
  v107 = a22;
  v35 = a23;
  v92 = a23;
  v36 = a24;
  v97 = a24;
  v37 = a25;
  v100 = a25;
  v38 = a26;
  v102 = a26;
  v104 = a27;
  v105 = a28;
  v39 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v39, &a16);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v43);
  v44 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v44, &a9);
  v101 = v45;
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_52();
  v111 = v49;
  OUTLINED_FUNCTION_24_0();
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_2_28(v50, &v113);
  v52 = v51;
  v91 = v51;
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_52();
  v110 = v56;
  OUTLINED_FUNCTION_24_0();
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_2_28(v57, &v115);
  v59 = v58;
  v94 = v58;
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_15_13();
  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_2_28(v63, &v117);
  v65 = v64;
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_63();
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_2_28(v69, v119);
  v71 = v70;
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_141_0();
  v75(v35, v103);
  v116 = v35;
  OUTLINED_FUNCTION_88_0();
  OUTLINED_FUNCTION_280();
  v76();
  v117 = v28;
  v77 = *(v59 + 16);
  OUTLINED_FUNCTION_131_0(&a15);
  v78();
  v118 = v29;
  v79 = *(v52 + 16);
  OUTLINED_FUNCTION_234_0();
  OUTLINED_FUNCTION_213(&a17);
  v80();
  v119[0] = v36;
  OUTLINED_FUNCTION_56_2(&v120);
  OUTLINED_FUNCTION_166_0();
  v81();
  v119[1] = v111;
  OUTLINED_FUNCTION_170_0();
  OUTLINED_FUNCTION_195_0();
  OUTLINED_FUNCTION_224_0();
  v82();
  v120 = v29;
  OUTLINED_FUNCTION_120_0(&v118);
  v114[0] = v100;
  v114[1] = v102;
  v114[2] = v104;
  v115 = v105;
  sub_23B39C90C(v106, &v116, v109, v108, v107, 6, &v112, v83, v89, v91, v92, v29, v93, v94, v95, v97, v98, v100, v101, v102);
  v84 = OUTLINED_FUNCTION_283();
  v85(v84, v38);
  (*(v59 + 24))(v111, v37);
  OUTLINED_FUNCTION_56_1(v114);
  v86(v110, v90);
  OUTLINED_FUNCTION_56_1(&v116);
  v87 = OUTLINED_FUNCTION_213_0();
  v88(v87);
  (*(v65 + 8))(v28, v96);
  (*(v71 + 8))(v35, v99);
  OUTLINED_FUNCTION_20();
}

void WeatherService.fetchWeather<A, B, C, D, E, F, G, H>(for:including:_:_:_:_:_:_:_:options:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_21();
  a19 = v33;
  a20 = v34;
  v131 = v35;
  v135 = v36;
  OUTLINED_FUNCTION_114_0(a23);
  OUTLINED_FUNCTION_94_0(v37);
  OUTLINED_FUNCTION_93_0(v38);
  v39 = a25;
  v115 = a25;
  v40 = a26;
  v122 = a26;
  v127 = a27;
  v41 = a30;
  OUTLINED_FUNCTION_80_1(a32, &a10);
  v42 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v42, &v152);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v46);
  v47 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v47, &v147);
  v130 = v48;
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v52);
  v142 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_5(v142);
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_52();
  v139 = v56;
  OUTLINED_FUNCTION_24_0();
  v57 = type metadata accessor for WeatherQuery();
  v58 = OUTLINED_FUNCTION_5(v57);
  v140 = v59;
  v141 = v58;
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_29_8(v63, v115);
  OUTLINED_FUNCTION_65_0();
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_2_28(v64, &v133);
  v66 = v65;
  v119 = v65;
  v68 = *(v67 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v70);
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_2_28(v71, &v136);
  v73 = v72;
  v121 = v72;
  v75 = *(v74 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_63();
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_2_28(v77, &v140);
  v79 = v78;
  v126 = v78;
  v81 = *(v80 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_98_0();
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_2_28(v83, &v143);
  v85 = *(v84 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_15_13();
  OUTLINED_FUNCTION_170_0();
  OUTLINED_FUNCTION_146_0();
  v87();
  v147 = v39;
  v88 = *(v79 + 16);
  OUTLINED_FUNCTION_130_0(&v148);
  v89();
  v148 = v41;
  v90 = *(v73 + 16);
  OUTLINED_FUNCTION_167_0(v149);
  v91();
  v149[0] = v32;
  v92 = *(v66 + 16);
  OUTLINED_FUNCTION_160(&a18);
  OUTLINED_FUNCTION_213(v150);
  v93();
  v149[1] = v40;
  v94 = v138;
  (*(v140 + 16))(v138, v131, v141);
  v150[0] = v94;
  OUTLINED_FUNCTION_40_3(v145);
  v95 = v139;
  OUTLINED_FUNCTION_276();
  v96();
  v150[1] = v95;
  OUTLINED_FUNCTION_169_0();
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_280();
  OUTLINED_FUNCTION_166_0();
  v97();
  v151[0] = v95;
  OUTLINED_FUNCTION_56_2(v151);
  OUTLINED_FUNCTION_190_0();
  OUTLINED_FUNCTION_186_0();
  v98();
  v151[1] = v41;
  OUTLINED_FUNCTION_82_0(&v132);
  v143 = v100;
  v144 = v99;
  OUTLINED_FUNCTION_154_0(&v144);
  OUTLINED_FUNCTION_120_0(&v146);
  OUTLINED_FUNCTION_111();
  v145[4] = v102;
  v146 = v101;
  sub_23B39C90C(v135, &v147, v132, v134, v133, 8, &v143, v103, v116, v117, v119, v32, v120, v121, v122, v41, v124, v126, v127, v128);
  v104 = *(v73 + 24);
  v105 = OUTLINED_FUNCTION_195();
  v106(v105);
  v107 = *(v130 + 8);
  v108 = OUTLINED_FUNCTION_241_0();
  v109(v108);
  (*(v66 + 24))(v139, v142);
  (*(v140 + 8))(v138, v141);
  OUTLINED_FUNCTION_56_1(&v134);
  v110(v137, v118);
  OUTLINED_FUNCTION_56_1(&v137);
  OUTLINED_FUNCTION_159_0();
  v111();
  OUTLINED_FUNCTION_56_1(&v141);
  v112(v123, v125);
  v113 = OUTLINED_FUNCTION_283();
  v114(v113, v129);
  OUTLINED_FUNCTION_20();
}

void WeatherService.fetchWeather<A, B, C, D, E, F, G, H, I>(for:including:_:_:_:_:_:_:_:_:options:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_21();
  a19 = v36;
  a20 = v37;
  v139 = v38;
  v138 = v39;
  v144 = v40;
  OUTLINED_FUNCTION_114_0(a23);
  OUTLINED_FUNCTION_94_0(v41);
  OUTLINED_FUNCTION_93_0(v42);
  OUTLINED_FUNCTION_165_0(v43);
  v142 = v44;
  v151 = a26;
  v125 = a27;
  v134 = a28;
  v45 = a29;
  v46 = a32;
  OUTLINED_FUNCTION_80_1(a34, v162);
  v47 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v47, v161);
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v51);
  v52 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v52, &v156);
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v56);
  v57 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v57, &v151);
  v153 = v58;
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v62);
  v152 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_5(v152);
  v150[1] = v63;
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v67);
  v68 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v68, &a16);
  v148[1] = v69;
  v71 = *(v70 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v73);
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_2_28(v74, &v141);
  v76 = v75;
  v124 = v75;
  v78 = *(v77 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v80);
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_2_28(v81, &v144);
  v83 = v82;
  v129 = v82;
  v85 = *(v84 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_63();
  v87 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_28(v87, &v147);
  v89 = v88;
  v133 = v88;
  v91 = *(v90 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_15_13();
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_2_28(v93, &v149);
  v95 = v94;
  v97 = *(v96 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_18_14();
  OUTLINED_FUNCTION_117_0();
  OUTLINED_FUNCTION_187_0();
  v99();
  v160[0] = v34;
  (*(v89 + 16))(v46, v138, v87);
  v160[1] = v46;
  v100 = *(v83 + 16);
  OUTLINED_FUNCTION_131_0(&v157);
  v101();
  v161[0] = v35;
  v102 = *(v76 + 16);
  v103 = v146;
  OUTLINED_FUNCTION_213(&v158);
  v104();
  v161[1] = v103;
  OUTLINED_FUNCTION_50_1(&a15);
  OUTLINED_FUNCTION_269();
  OUTLINED_FUNCTION_215_0();
  v105();
  v161[2] = v103;
  OUTLINED_FUNCTION_50_1(&a18);
  v106 = OUTLINED_FUNCTION_269();
  v107(v106, v139, v152);
  v161[3] = v103;
  v108 = *(v153 + 16);
  OUTLINED_FUNCTION_269();
  OUTLINED_FUNCTION_272();
  v109();
  v162[0] = v103;
  OUTLINED_FUNCTION_40_3(&v155);
  OUTLINED_FUNCTION_149_0();
  v110();
  v162[1] = v137;
  OUTLINED_FUNCTION_77_1(&v159);
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_267();
  OUTLINED_FUNCTION_223_0();
  v111();
  v162[2] = v45;
  OUTLINED_FUNCTION_297(v143);
  OUTLINED_FUNCTION_204_0(v150);
  OUTLINED_FUNCTION_154_0(&v152);
  OUTLINED_FUNCTION_120_0(v160);
  v159 = v140;
  sub_23B39C90C(v144, v160, v143[1], v143[0], v142, 9, &v154, v112, v121, v122, v124, v125, v35, v127, v129, v46, v131, v133, v134, v135);
  v113 = *(v76 + 24);
  v114 = OUTLINED_FUNCTION_270();
  v115(v114);
  (*(v35 + 8))(v137, v89 + 16);
  (*(v153 + 8))(v150[0]);
  OUTLINED_FUNCTION_56_1(&a18);
  v116(v148[0], v152);
  OUTLINED_FUNCTION_56_1(&a15);
  OUTLINED_FUNCTION_194_0();
  v117();
  OUTLINED_FUNCTION_56_1(&v142);
  v118(v146, v123);
  OUTLINED_FUNCTION_56_1(&v145);
  v119(v126, v128);
  OUTLINED_FUNCTION_56_1(v148);
  v120(v130, v132);
  (*(v95 + 8))(v34, v136);
  OUTLINED_FUNCTION_20();
}

void WeatherService.fetchWeather<A, B, C, D, E, F, G, H, I, J, K>(for:including:_:_:_:_:_:_:_:_:_:_:options:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_21();
  a19 = v38;
  a20 = v39;
  v164[1] = v40;
  v161 = v41;
  v159 = v42;
  v170 = v43;
  OUTLINED_FUNCTION_147_0(a25);
  OUTLINED_FUNCTION_114_0(v44);
  OUTLINED_FUNCTION_115_0(v45);
  OUTLINED_FUNCTION_94_0(v46);
  OUTLINED_FUNCTION_93_0(v47);
  OUTLINED_FUNCTION_231_0(v48);
  OUTLINED_FUNCTION_193_0(v49);
  OUTLINED_FUNCTION_116_0(v50);
  OUTLINED_FUNCTION_113_0(a29);
  v153 = a30;
  v51 = a31;
  v52 = a32;
  v53 = a34;
  v54 = a35;
  v160 = a35;
  v55 = a36;
  v162 = a36;
  v56 = a37;
  v164[0] = a37;
  OUTLINED_FUNCTION_80_1(a38, v183);
  v57 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v57, v182);
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v61);
  v62 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v62, &v178);
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v66);
  v67 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v67, v175);
  v69 = *(v68 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v71);
  v72 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v72, &a16);
  v177[1] = v73;
  v75 = *(v74 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v77);
  v78 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v78, &a13);
  v176 = v79;
  v81 = *(v80 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v83);
  v84 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v84, &a11);
  v175[1] = v85;
  v87 = *(v86 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v89);
  v90 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v90, &v186);
  v172[2] = v91;
  v93 = *(v92 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_65_0();
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_2_28(v95, &v163);
  v97 = v96;
  v150 = v96;
  v99 = *(v98 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v101);
  v102 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_28(v102, &v165);
  v104 = v103;
  v152 = v103;
  v106 = *(v105 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_23();
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_2_28(v108, &v168);
  v110 = v109;
  v157 = v109;
  v112 = *(v111 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v113);
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_258();
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_2_28(v114, &v170);
  v116 = *(v115 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_121_0();
  v118(v55, v159);
  v183[0] = v55;
  v119 = *(v110 + 16);
  v110 += 16;
  OUTLINED_FUNCTION_252(&v176);
  v120();
  v183[1] = v52;
  (*(v104 + 16))(v54, v161, v102);
  v183[2] = v54;
  v121 = *(v97 + 16);
  v97 += 16;
  OUTLINED_FUNCTION_160(v184);
  OUTLINED_FUNCTION_213(&v179);
  v122();
  v183[3] = v54;
  OUTLINED_FUNCTION_50_1(v185);
  OUTLINED_FUNCTION_79_1();
  v123();
  v183[4] = v53;
  OUTLINED_FUNCTION_50_1(&a10);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_57_2();
  v124();
  v183[5] = v54;
  OUTLINED_FUNCTION_185_0();
  OUTLINED_FUNCTION_27_9(v125);
  OUTLINED_FUNCTION_136();
  v126();
  v183[6] = v54;
  OUTLINED_FUNCTION_50_1(&a15);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_215_0();
  v127();
  v184[0] = v54;
  OUTLINED_FUNCTION_56_2(&v174);
  OUTLINED_FUNCTION_197_0();
  OUTLINED_FUNCTION_166_0();
  v128();
  v184[1] = v110;
  OUTLINED_FUNCTION_53_1(v177);
  OUTLINED_FUNCTION_195_0();
  OUTLINED_FUNCTION_224_0();
  v129();
  v185[0] = v97;
  OUTLINED_FUNCTION_123_0(v181);
  OUTLINED_FUNCTION_199();
  OUTLINED_FUNCTION_146_0();
  OUTLINED_FUNCTION_183_0();
  v130();
  v185[1] = v104 + 16;
  OUTLINED_FUNCTION_62_1(&a17);
  OUTLINED_FUNCTION_205_0(v167);
  OUTLINED_FUNCTION_202_0(v172);
  OUTLINED_FUNCTION_203_0(&v173);
  v181[3] = v160;
  v182[0] = v162;
  v182[1] = v164[0];
  v182[2] = v167[1];
  sub_23B39C90C(v170, v183, v169[2], v169[1], v169[0], 11, &v180, v131, v147, v53, v148, v150, v54, v151, v152, v153, v52, v155, v157, v55);
  v132 = *(v55 + 8);
  v133 = OUTLINED_FUNCTION_99_0();
  v134(v133);
  (*(v54 + 8))(v97, v51);
  (*(v56 + 8))(v110, v52);
  OUTLINED_FUNCTION_56_1(&a15);
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_194_0();
  v135();
  OUTLINED_FUNCTION_56_1(&a12);
  v136 = OUTLINED_FUNCTION_128_0();
  v137(v136);
  OUTLINED_FUNCTION_56_1(&a10);
  v138 = OUTLINED_FUNCTION_55_2();
  v139(v138);
  OUTLINED_FUNCTION_56_1(v185);
  v140 = OUTLINED_FUNCTION_78_1();
  v141(v140);
  OUTLINED_FUNCTION_56_1(v164);
  v142(v172[0], v149);
  OUTLINED_FUNCTION_56_1(&v166);
  v143 = OUTLINED_FUNCTION_292();
  v144(v143);
  OUTLINED_FUNCTION_56_1(v169);
  v145(v154, v156);
  OUTLINED_FUNCTION_56_1(&v171);
  v146(v158);
  OUTLINED_FUNCTION_20();
}

void WeatherService.fetchWeather<A, B, C, D, E, F, G, H, I, J, K, L>(for:including:_:_:_:_:_:_:_:_:_:_:_:options:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  OUTLINED_FUNCTION_21();
  a19 = v42;
  a20 = v43;
  v187 = v44;
  v185 = v45;
  v184 = v46;
  v183 = v47;
  v194 = v48;
  OUTLINED_FUNCTION_193_0(a27);
  OUTLINED_FUNCTION_147_0(v49);
  OUTLINED_FUNCTION_165_0(v50);
  OUTLINED_FUNCTION_114_0(v51);
  OUTLINED_FUNCTION_115_0(v52);
  OUTLINED_FUNCTION_94_0(v53);
  OUTLINED_FUNCTION_93_0(v54);
  OUTLINED_FUNCTION_150_0(a29);
  OUTLINED_FUNCTION_158_0(a30);
  v200 = a31;
  v55 = a32;
  v180 = a32;
  v56 = a34;
  v57 = a38;
  v58 = a39;
  v188 = a39;
  OUTLINED_FUNCTION_80_1(a40, v205);
  v59 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v59, &v204);
  v186 = v60;
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v64);
  v65 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v65, &v201);
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v69);
  v70 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v70, &v196);
  v182 = v71;
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v75);
  v76 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v76, &a14);
  v202[2] = v77;
  v79 = *(v78 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v81);
  v82 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v82, &a11);
  v201 = v83;
  v85 = *(v84 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v87);
  v88 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v88, &v215);
  v198[1] = v89;
  v91 = *(v90 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v93);
  v94 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v94, &v213);
  v197 = v95;
  v97 = *(v96 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v99);
  v100 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v100, &v211);
  v195[4] = v101;
  v103 = *(v102 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v105);
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_2_28(v106, &v186);
  v108 = v107;
  v173 = v107;
  v110 = *(v109 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_257_0();
  OUTLINED_FUNCTION_177_0();
  OUTLINED_FUNCTION_2_28(v112, &v188);
  v114 = v113;
  v175 = v113;
  v116 = *(v115 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_15_13();
  OUTLINED_FUNCTION_256_0();
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_2_28(v118, &v190);
  v120 = v119;
  v179 = v119;
  v122 = *(v121 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v123);
  OUTLINED_FUNCTION_30_6();
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_2_28(v124, &v192);
  v126 = *(v125 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v127);
  v129 = OUTLINED_FUNCTION_20_13(v128, v40);
  v130(v129, v183);
  v206[0] = v41;
  v131 = *(v120 + 16);
  v120 += 16;
  OUTLINED_FUNCTION_167_0(&v197);
  v132();
  v206[1] = v57;
  (*(v114 + 16))(v56, v184, v58);
  v206[2] = v56;
  v133 = *(v108 + 16);
  OUTLINED_FUNCTION_130_0(&v200);
  v134();
  v207 = v40;
  OUTLINED_FUNCTION_50_1(&v210);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_135_0();
  v135();
  v208 = v55;
  v136 = OUTLINED_FUNCTION_33_4(&v212);
  v137(v136, v185, v198[0]);
  v209 = v55;
  OUTLINED_FUNCTION_50_1(v214);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_79_1();
  v138();
  v210 = v55;
  OUTLINED_FUNCTION_50_1(&a10);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_57_2();
  v139();
  v211 = v55;
  OUTLINED_FUNCTION_228_0();
  OUTLINED_FUNCTION_27_9(v140);
  OUTLINED_FUNCTION_262();
  v141();
  v212 = v55;
  OUTLINED_FUNCTION_169_0();
  OUTLINED_FUNCTION_190_0();
  OUTLINED_FUNCTION_149_0();
  v142();
  v213 = v120;
  OUTLINED_FUNCTION_44_3(&v199);
  OUTLINED_FUNCTION_195_0();
  OUTLINED_FUNCTION_187_0();
  OUTLINED_FUNCTION_183_0();
  v143();
  v214[0] = v56;
  OUTLINED_FUNCTION_77_1(v203);
  v144 = OUTLINED_FUNCTION_49_2();
  v145 = v189;
  v146(v144, v191[1], v189);
  v214[1] = v55;
  OUTLINED_FUNCTION_100(v202[4]);
  OUTLINED_FUNCTION_185_0();
  OUTLINED_FUNCTION_116_0(v147);
  OUTLINED_FUNCTION_62_1(&a9);
  OUTLINED_FUNCTION_205_0(&v194);
  OUTLINED_FUNCTION_202_0(v195);
  OUTLINED_FUNCTION_203_0(v198);
  OUTLINED_FUNCTION_82_0(v202);
  v205[2] = v149;
  v205[3] = v148;
  v205[4] = v191[0];
  sub_23B39C90C(v194, v206, v191[2], v193, v192, 12, v203, v150, v169, v171, v173, v56, v174, v175, v57, v177, v179, v180, v41, v181);
  (*(v58 + 8))(v55, v145);
  v151 = *(v108 + 24);
  v152 = OUTLINED_FUNCTION_171_0();
  v153(v152);
  (*(v182 + 8))(v120, v40);
  OUTLINED_FUNCTION_56_1(&a13);
  OUTLINED_FUNCTION_238();
  v154();
  OUTLINED_FUNCTION_56_1(&a10);
  v155 = OUTLINED_FUNCTION_55_2();
  v156(v155);
  OUTLINED_FUNCTION_56_1(v214);
  v157 = OUTLINED_FUNCTION_78_1();
  v158(v157);
  OUTLINED_FUNCTION_56_1(&v212);
  v159 = OUTLINED_FUNCTION_263();
  v160(v159);
  OUTLINED_FUNCTION_56_1(&v210);
  v161 = OUTLINED_FUNCTION_127_0();
  v162(v161);
  OUTLINED_FUNCTION_56_1(&v187);
  v163(v170, v172);
  OUTLINED_FUNCTION_56_1(&v189);
  v164 = OUTLINED_FUNCTION_287();
  v165(v164);
  OUTLINED_FUNCTION_56_1(v191);
  v166(v176, v178);
  OUTLINED_FUNCTION_56_1(&v193);
  v167 = OUTLINED_FUNCTION_292();
  v168(v167);
  OUTLINED_FUNCTION_20();
}

void WeatherService.fetchWeather<A, B, C, D, E, F, G, H, I, J, K, L, M>(for:including:_:_:_:_:_:_:_:_:_:_:_:_:options:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_21();
  a19 = v43;
  a20 = v44;
  v200 = v45;
  v197 = v46;
  v196 = v47;
  v195 = v48;
  v208 = v49;
  OUTLINED_FUNCTION_193_0(a27);
  OUTLINED_FUNCTION_147_0(v50);
  OUTLINED_FUNCTION_165_0(v51);
  OUTLINED_FUNCTION_114_0(v52);
  OUTLINED_FUNCTION_115_0(v53);
  OUTLINED_FUNCTION_94_0(v54);
  OUTLINED_FUNCTION_93_0(v55);
  v198 = v56;
  v206 = a29;
  OUTLINED_FUNCTION_145_0(a30);
  OUTLINED_FUNCTION_158_0(a31);
  v218 = a32;
  v57 = a33;
  v191 = a33;
  v58 = a35;
  v59 = a37;
  v60 = a38;
  v61 = a39;
  v62 = a40;
  v202 = a41;
  OUTLINED_FUNCTION_80_1(a42, v223);
  v63 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v63, &v222);
  v201 = v64;
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v68);
  v69 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v69, v217);
  v71 = *(v70 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v73);
  v74 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v74, &v211);
  v76 = *(v75 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v78);
  v79 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v79, &a11);
  v219 = v80;
  v82 = *(v81 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v84);
  v85 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v85, &v234);
  v217[2] = v86;
  v88 = *(v87 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v90);
  v91 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v91, &v232);
  v217[0] = v92;
  v94 = *(v93 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v96);
  v97 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v97, v230);
  v215 = v98;
  v100 = *(v99 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v102);
  v103 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v103, &v228);
  v214[0] = v104;
  v106 = *(v105 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v108);
  v109 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v109, v226);
  v211 = v110;
  v112 = *(v111 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v113);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v114);
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_2_28(v115, &v199);
  v117 = v116;
  v185 = v116;
  v119 = *(v118 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_257_0();
  OUTLINED_FUNCTION_174_0();
  OUTLINED_FUNCTION_2_28(v121, &v201);
  v123 = v122;
  v189 = v122;
  v125 = *(v124 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v126);
  OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_256_0();
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_2_28(v127, &v203);
  v129 = v128;
  v194 = v128;
  v131 = *(v130 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v132);
  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_259();
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_2_28(v133, &v205);
  v135 = *(v134 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v136);
  v138 = OUTLINED_FUNCTION_20_13(v137, v180);
  v139(v138, v195);
  v224[0] = v42;
  v140 = *(v129 + 16);
  OUTLINED_FUNCTION_130_0(&v212);
  v141();
  v224[1] = v61;
  v142 = *(v123 + 16);
  OUTLINED_FUNCTION_279(&v213);
  v143();
  v225 = v58;
  v144 = *(v117 + 16);
  v117 += 16;
  OUTLINED_FUNCTION_252(&v215);
  v145();
  v226[0] = v60;
  OUTLINED_FUNCTION_50_1(&v225);
  v146 = OUTLINED_FUNCTION_49_2();
  v147(v146, v196, v212);
  v226[1] = v62;
  OUTLINED_FUNCTION_50_1(&v227);
  v148 = OUTLINED_FUNCTION_49_2();
  v149(v148, v197, v214[1]);
  v227 = v62;
  OUTLINED_FUNCTION_50_1(&v229);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_135_0();
  v150();
  v228 = v62;
  OUTLINED_FUNCTION_50_1(&v231);
  v151 = OUTLINED_FUNCTION_49_2();
  v152(v151, v198, v217[1]);
  v229 = v62;
  OUTLINED_FUNCTION_33_4(&v233);
  OUTLINED_FUNCTION_79_1();
  v153();
  v230[0] = v62;
  OUTLINED_FUNCTION_50_1(&a10);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_57_2();
  v154();
  v230[1] = v62;
  OUTLINED_FUNCTION_40_3(&v210);
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_223_0();
  v155();
  v231 = v61;
  OUTLINED_FUNCTION_77_1(&v216);
  OUTLINED_FUNCTION_236_0();
  OUTLINED_FUNCTION_159_0();
  OUTLINED_FUNCTION_166_0();
  v156();
  v232 = v57;
  OUTLINED_FUNCTION_53_1(&v220);
  OUTLINED_FUNCTION_195_0();
  OUTLINED_FUNCTION_149_0();
  v157();
  v233 = v117;
  OUTLINED_FUNCTION_228_0();
  OUTLINED_FUNCTION_113_0(v158);
  OUTLINED_FUNCTION_185_0();
  OUTLINED_FUNCTION_150_0(v159);
  OUTLINED_FUNCTION_100(v218);
  OUTLINED_FUNCTION_116_0(v191);
  OUTLINED_FUNCTION_62_1(v207);
  OUTLINED_FUNCTION_205_0(&v208);
  OUTLINED_FUNCTION_202_0(&v209);
  OUTLINED_FUNCTION_199_0(v214);
  v223[7] = v160;
  v223[8] = v204[1];
  sub_23B39C90C(v208, v224, v207[1], v207[0], v206, 13, &v221, v161, v181, v60, v183, v185, v58, v187, v189, v61, v191, v192, v194, v42);
  (*(v62 + 8))(v117, v59);
  (*(v58 + 8))(v57, v60);
  v162 = *(v42 + 8);
  v163 = OUTLINED_FUNCTION_270();
  v164(v163);
  OUTLINED_FUNCTION_56_1(&a10);
  v165 = OUTLINED_FUNCTION_55_2();
  v166(v165);
  OUTLINED_FUNCTION_56_1(&v233);
  v167 = OUTLINED_FUNCTION_78_1();
  v168(v167);
  OUTLINED_FUNCTION_56_1(&v231);
  OUTLINED_FUNCTION_267();
  v169();
  OUTLINED_FUNCTION_56_1(&v229);
  v170 = OUTLINED_FUNCTION_127_0();
  v171(v170);
  OUTLINED_FUNCTION_56_1(&v227);
  v172 = OUTLINED_FUNCTION_213_0();
  v173(v172);
  OUTLINED_FUNCTION_56_1(&v225);
  OUTLINED_FUNCTION_146_0();
  v174();
  OUTLINED_FUNCTION_56_1(&v200);
  v175(v182, v184);
  OUTLINED_FUNCTION_56_1(&v202);
  v176(v186, v188);
  OUTLINED_FUNCTION_56_1(v204);
  v177(v190, v193);
  OUTLINED_FUNCTION_56_1(&v206);
  v178 = OUTLINED_FUNCTION_287();
  v179(v178);
  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B45F7AC(void *a1, void *a2, void (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5 == 1)
  {
    v10 = *(a6 & 0xFFFFFFFFFFFFFFFELL);
    swift_checkMetadataState();
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    v14 = &v40[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
    for (i = 0; v11 != i; ++i)
    {
      *&v14[8 * i] = *((v12 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    swift_getTupleTypeMetadata();
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v16 = sub_23B50D954();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v40[-v19];
  if (qword_280B43440 != -1)
  {
    swift_once();
  }

  v21 = sub_23B50CDF4();
  __swift_project_value_buffer(v21, qword_280B4E9D8);
  v22 = a1;
  v23 = a2;
  v24 = sub_23B50CDD4();
  v25 = sub_23B50D4B4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v45 = a4;
    v27 = v26;
    v28 = swift_slowAlloc();
    v43 = v28;
    v44 = swift_slowAlloc();
    v46 = v44;
    *v27 = 141558787;
    *(v27 + 4) = 1752392040;
    *(v27 + 12) = 2113;
    *(v27 + 14) = v23;
    *v28 = v23;
    *(v27 + 22) = 2082;
    swift_getErrorValue();
    v41 = v25;
    v42 = v24;
    v29 = v23;
    v30 = sub_23B50D874();
    v32 = sub_23B391F1C(v30, v31, &v46);

    *(v27 + 24) = v32;
    *(v27 + 32) = 2112;
    v33 = a1;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 34) = v34;
    v36 = v42;
    v35 = v43;
    v43[1] = v34;
    _os_log_impl(&dword_23B38D000, v36, v41, "Encountered an error when fetching weather data subset; location=%{private,mask.hash}@, error=%{public}s %@", v27, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D80, &qword_23B5192E0);
    swift_arrayDestroy();
    MEMORY[0x23EE9E260](v35, -1, -1);
    v37 = v44;
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x23EE9E260](v37, -1, -1);
    MEMORY[0x23EE9E260](v27, -1, -1);
  }

  else
  {
  }

  *v20 = a1;
  swift_storeEnumTagMultiPayload();
  v38 = a1;
  a3(v20);
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_23B45FB84(void *a1, char a2, uint64_t a3, void *a4, void (*a5)(void *), uint64_t a6, uint64_t a7)
{
  v81 = a6;
  v82 = a5;
  v78 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v83 = sub_23B50D954();
  v80 = *(v83 - 8);
  v11 = *(v80 + 64);
  MEMORY[0x28223BE20](v83);
  v79 = (&v76 - v12);
  v13 = type metadata accessor for WeatherProductsContainer();
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for WeatherQuery();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v76 - v20;
  v22 = *(*(a7 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_280B43440 != -1)
    {
      swift_once();
    }

    v27 = sub_23B50CDF4();
    __swift_project_value_buffer(v27, qword_280B4E9D8);
    sub_23B477C58(a1, 1);
    v28 = v78;
    v29 = sub_23B50CDD4();
    v30 = sub_23B50D4B4();

    sub_23B477C64(a1, 1);
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v86[0] = v33;
      *v31 = 141558787;
      *(v31 + 4) = 1752392040;
      *(v31 + 12) = 2113;
      *(v31 + 14) = v28;
      *v32 = v28;
      *(v31 + 22) = 2082;
      swift_getErrorValue();
      v34 = v28;
      v35 = sub_23B50D874();
      v37 = sub_23B391F1C(v35, v36, v86);

      *(v31 + 24) = v37;
      *(v31 + 32) = 2112;
      v38 = a1;
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 34) = v39;
      v32[1] = v39;
      _os_log_impl(&dword_23B38D000, v29, v30, "Encountered an error when fetching weather data subset; location=%{private,mask.hash}@,  error=%{public}s %@", v31, 0x2Au);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D80, &qword_23B5192E0);
      swift_arrayDestroy();
      MEMORY[0x23EE9E260](v32, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x23EE9E260](v33, -1, -1);
      MEMORY[0x23EE9E260](v31, -1, -1);
    }

    v40 = v79;
    *v79 = a1;
    v41 = v83;
    swift_storeEnumTagMultiPayload();
    v42 = a1;
    v82(v40);
    return (*(v80 + 8))(v40, v41);
  }

  else
  {
    v77 = v25;
    v86[0] = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    type metadata accessor for WeatherService();
    (*(v18 + 16))(v21, a3, v17);
    v85 = v21;
    v43 = v13[5];
    v44 = type metadata accessor for InstantWeather();
    __swift_storeEnumTagSinglePayload(&v16[v43], 1, 1, v44);
    v45 = type metadata accessor for CurrentWeather();
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v45);
    v46 = v13[7];
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0);
    __swift_storeEnumTagSinglePayload(&v16[v46], 1, 1, v47);
    v48 = v13[8];
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
    __swift_storeEnumTagSinglePayload(&v16[v48], 1, 1, v49);
    v50 = v13[9];
    v51 = type metadata accessor for PeriodicForecasts();
    __swift_storeEnumTagSinglePayload(&v16[v50], 1, 1, v51);
    v52 = v13[10];
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
    __swift_storeEnumTagSinglePayload(&v16[v52], 1, 1, v53);
    v54 = v13[11];
    v55 = type metadata accessor for AirQuality();
    __swift_storeEnumTagSinglePayload(&v16[v54], 1, 1, v55);
    v56 = v13[12];
    v57 = type metadata accessor for WeatherChanges();
    __swift_storeEnumTagSinglePayload(&v16[v56], 1, 1, v57);
    v58 = v13[18];
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EC0, &qword_23B50F1B8);
    __swift_storeEnumTagSinglePayload(&v16[v58], 1, 1, v59);
    v60 = v13[20];
    v61 = type metadata accessor for TideEvents();
    __swift_storeEnumTagSinglePayload(&v16[v60], 1, 1, v61);
    v62 = v13[21];
    v63 = type metadata accessor for HistoricalComparisons();
    __swift_storeEnumTagSinglePayload(&v16[v62], 1, 1, v63);
    v64 = v13[23];
    v65 = type metadata accessor for LocationInfo();
    __swift_storeEnumTagSinglePayload(&v16[v64], 1, 1, v65);
    *&v16[v13[6]] = a1;
    *&v16[v13[13]] = 0;
    v66 = &v16[v13[14]];
    v66[2] = 0;
    *v66 = 4;
    v16[v13[15]] = 4;
    v16[v13[16]] = 4;
    v16[v13[17]] = 4;
    *&v16[v13[19]] = 0;
    *&v16[v13[22]] = 0;

    v84 = a7;
    sub_23B3CE19C(&v85, v16, 1, &v84, v86);
    sub_23B3A24BC(v16, type metadata accessor for WeatherProductsContainer);
    (*(v18 + 8))(v21, v17);
    if (qword_280B43440 != -1)
    {
      swift_once();
    }

    v68 = sub_23B50CDF4();
    __swift_project_value_buffer(v68, qword_280B4E9D8);
    v69 = v78;
    v70 = sub_23B50CDD4();
    v71 = sub_23B50D4C4();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *v72 = 141558275;
      *(v72 + 4) = 1752392040;
      *(v72 + 12) = 2113;
      *(v72 + 14) = v69;
      *v73 = v69;
      v74 = v69;
      _os_log_impl(&dword_23B38D000, v70, v71, "Successfully created product tuple; location=%{private,mask.hash}@", v72, 0x16u);
      sub_23B398890(v73, &qword_27E132D80, &qword_23B5192E0);
      MEMORY[0x23EE9E260](v73, -1, -1);
      MEMORY[0x23EE9E260](v72, -1, -1);
    }

    v75 = v79;
    sub_23B3CE3F4(v26, a7, v79);
    v82(v75);
    (*(v80 + 8))(v75, v83);
    return (*(v77 + 8))(v26, a7);
  }
}

uint64_t sub_23B460630(void *a1, char a2)
{
  v5 = *(v2 + 16);
  OUTLINED_FUNCTION_69_2();
  v6 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_28_0(v6);
  v8 = v7;
  v10 = v9;
  v11 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v12 = *(v10 + 64);
  OUTLINED_FUNCTION_43_5();
  OUTLINED_FUNCTION_240_0();

  return sub_23B45FB84(a1, a2 & 1, v2 + v16, v13, v14, v15, v5);
}

void WeatherService.fetchInstantWeather(for:spanning:stride:with:completion:)()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v31 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v33 = *v0;
  v11 = sub_23B50B7F4();
  v32 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_27_3();
  v14 = sub_23B50B7B4();
  v15 = OUTLINED_FUNCTION_5(v14);
  v34 = v16;
  v35 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_27();
  v21 = v20 - v19;
  v22 = *v8;
  LODWORD(v8) = *(v8 + 8);
  sub_23B461B10(v6, v20 - v19);
  v23 = *(v12 + 104);
  v24 = MEMORY[0x277D7AC80];
  *v1 = v22;
  if (!v8)
  {
    v24 = MEMORY[0x277D7AC78];
  }

  v23(v1, *v24, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133888, &qword_23B5192C0);
  sub_23B50B0C4();
  OUTLINED_FUNCTION_139_0();
  v25 = swift_allocObject();
  v25[2] = v10;
  v25[3] = v31;
  v25[4] = v3;
  v26 = v10;

  v27 = sub_23B50B034();
  OUTLINED_FUNCTION_152_0();
  sub_23B50B074();

  OUTLINED_FUNCTION_139_0();
  v28 = swift_allocObject();
  v28[2] = v26;
  v28[3] = v31;
  v28[4] = v3;
  v29 = v26;

  v30 = sub_23B50B034();
  sub_23B50B084();

  (*(v12 + 8))(v1, v32);
  (*(v34 + 8))(v21, v35);
  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B4609C8(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void *), uint64_t a5, uint64_t a6)
{
  v91 = a5;
  v92 = a4;
  v89 = a3;
  v84 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v7 = sub_23B50D954();
  v93 = *(v7 - 8);
  v94 = v7;
  v8 = *(v93 + 64);
  MEMORY[0x28223BE20](v7);
  v90 = (&v83 - v9);
  v10 = type metadata accessor for WeatherProductsContainer();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for WeatherQuery();
  v86 = *(v87 - 8);
  v14 = *(v86 + 64);
  MEMORY[0x28223BE20](v87);
  v88 = &v83 - v15;
  v85 = a6;
  v83 = *(a6 - 8);
  v16 = *(v83 + 64);
  MEMORY[0x28223BE20](v17);
  v19 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for InstantWeather();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133948, &qword_23B5194F8);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = (&v83 - v26);
  sub_23B3A23E0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v27;
    if (qword_280B43440 != -1)
    {
      swift_once();
    }

    v29 = sub_23B50CDF4();
    __swift_project_value_buffer(v29, qword_280B4E9D8);
    v30 = v89;
    v31 = v28;
    v32 = sub_23B50CDD4();
    v33 = sub_23B50D4B4();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v97[0] = v36;
      *v34 = 141558787;
      *(v34 + 4) = 1752392040;
      *(v34 + 12) = 2113;
      *(v34 + 14) = v30;
      *v35 = v30;
      *(v34 + 22) = 2082;
      swift_getErrorValue();
      v37 = v30;
      v38 = sub_23B50D874();
      v40 = sub_23B391F1C(v38, v39, v97);

      *(v34 + 24) = v40;
      *(v34 + 32) = 2112;
      v41 = v28;
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 34) = v42;
      v35[1] = v42;
      _os_log_impl(&dword_23B38D000, v32, v33, "Encountered an error when fetching weather data subset; location=%{private,mask.hash}@,  error=%{public}s %@", v34, 0x2Au);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D80, &qword_23B5192E0);
      swift_arrayDestroy();
      MEMORY[0x23EE9E260](v35, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x23EE9E260](v36, -1, -1);
      MEMORY[0x23EE9E260](v34, -1, -1);
    }

    v43 = v90;
    *v90 = v28;
    v44 = v94;
    swift_storeEnumTagMultiPayload();
    v45 = v28;
    v92(v43);

    return (*(v93 + 8))(v43, v44);
  }

  else
  {
    sub_23B3B0A98();
    v47 = v19;
    v97[0] = v19;
    type metadata accessor for WeatherService();
    v48 = v86;
    v50 = v87;
    v49 = v88;
    (*(v86 + 16))(v88, v84, v87);
    v96 = v49;
    v51 = v10[5];
    sub_23B477C04();
    __swift_storeEnumTagSinglePayload(&v13[v51], 0, 1, v20);
    v52 = type metadata accessor for CurrentWeather();
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v52);
    v53 = v10[7];
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0);
    __swift_storeEnumTagSinglePayload(&v13[v53], 1, 1, v54);
    v55 = v10[8];
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
    __swift_storeEnumTagSinglePayload(&v13[v55], 1, 1, v56);
    v57 = v10[9];
    v58 = type metadata accessor for PeriodicForecasts();
    __swift_storeEnumTagSinglePayload(&v13[v57], 1, 1, v58);
    v59 = v10[10];
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
    __swift_storeEnumTagSinglePayload(&v13[v59], 1, 1, v60);
    v61 = v10[11];
    v62 = type metadata accessor for AirQuality();
    __swift_storeEnumTagSinglePayload(&v13[v61], 1, 1, v62);
    v63 = v10[12];
    v64 = type metadata accessor for WeatherChanges();
    __swift_storeEnumTagSinglePayload(&v13[v63], 1, 1, v64);
    v65 = v10[18];
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EC0, &qword_23B50F1B8);
    __swift_storeEnumTagSinglePayload(&v13[v65], 1, 1, v66);
    v67 = v10[20];
    v68 = type metadata accessor for TideEvents();
    __swift_storeEnumTagSinglePayload(&v13[v67], 1, 1, v68);
    v69 = v10[21];
    v70 = type metadata accessor for HistoricalComparisons();
    __swift_storeEnumTagSinglePayload(&v13[v69], 1, 1, v70);
    v71 = v10[23];
    v72 = type metadata accessor for LocationInfo();
    __swift_storeEnumTagSinglePayload(&v13[v71], 1, 1, v72);
    *&v13[v10[6]] = 0;
    *&v13[v10[13]] = 0;
    v73 = &v13[v10[14]];
    v73[2] = 0;
    *v73 = 4;
    v13[v10[15]] = 4;
    v13[v10[16]] = 4;
    v13[v10[17]] = 4;
    *&v13[v10[19]] = 0;
    *&v13[v10[22]] = 0;
    v74 = v85;
    v95 = v85;
    sub_23B3CE19C(&v96, v13, 1, &v95, v97);
    v84 = v23;
    sub_23B3A24BC(v13, type metadata accessor for WeatherProductsContainer);
    (*(v48 + 8))(v88, v50);
    if (qword_280B43440 != -1)
    {
      swift_once();
    }

    v75 = sub_23B50CDF4();
    __swift_project_value_buffer(v75, qword_280B4E9D8);
    v76 = v89;
    v77 = sub_23B50CDD4();
    v78 = sub_23B50D4C4();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *v79 = 141558275;
      *(v79 + 4) = 1752392040;
      *(v79 + 12) = 2113;
      *(v79 + 14) = v76;
      *v80 = v76;
      v81 = v76;
      _os_log_impl(&dword_23B38D000, v77, v78, "Successfully created product tuple; location=%{private,mask.hash}@", v79, 0x16u);
      sub_23B398890(v80, &qword_27E132D80, &qword_23B5192E0);
      MEMORY[0x23EE9E260](v80, -1, -1);
      MEMORY[0x23EE9E260](v79, -1, -1);
    }

    v82 = v90;
    sub_23B3CE3F4(v47, v74, v90);
    v92(v82);
    (*(v93 + 8))(v82, v94);
    sub_23B3A24BC(v84, type metadata accessor for InstantWeather);
    return (*(v83 + 8))(v47, v74);
  }
}

uint64_t objectdestroy_5Tm()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 16);
  v2 = type metadata accessor for WeatherQuery();
  v3 = (*(*(v2 - 1) + 80) + 24) & ~*(*(v2 - 1) + 80);
  v4 = *(*(v2 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_23B50AA24();
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v6))
  {
    OUTLINED_FUNCTION_48(v6);
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = v2[7];
  if (!__swift_getEnumTagSinglePayload(v5 + v8, 1, v6))
  {
    OUTLINED_FUNCTION_48(v6);
    (*(v9 + 8))(v5 + v8, v6);
  }

  v10 = v2[11];
  Options = type metadata accessor for InstantWeatherQueryOptions();
  if (!__swift_getEnumTagSinglePayload(v5 + v10, 1, Options))
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v6 = sub_23B50AD24();
    }

    OUTLINED_FUNCTION_48(v6);
    (*(v12 + 8))(v5 + v10, v6);
  }

  v13 = v5 + v2[12];
  PeriodicRelativeRange = type metadata accessor for WeatherQueryPeriodicRelativeRange();
  if (!__swift_getEnumTagSinglePayload(v13, 1, PeriodicRelativeRange))
  {
    v15 = sub_23B50AD24();
    OUTLINED_FUNCTION_6(v15);
    v17 = *(v16 + 8);
    v18 = OUTLINED_FUNCTION_241_0();
    v17(v18);
    (v17)(v13 + *(PeriodicRelativeRange + 20), v15);
    v19 = *(v13 + *(PeriodicRelativeRange + 24));
  }

  v20 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;

  v22 = *(v0 + v21 + 8);

  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_23B46185C(uint64_t a1)
{
  v3 = *(v1 + 16);
  OUTLINED_FUNCTION_65_0();
  v4 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_28_0(v4);
  v6 = v5;
  v8 = v7;
  v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v10 = *(v8 + 64);
  OUTLINED_FUNCTION_43_5();
  v13 = *(v1 + v12);
  v14 = v1 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = *v14;
  v16 = *(v14 + 8);

  return sub_23B4609C8(a1, v1 + v11, v13, v15, v16, v3);
}

void WeatherService.fetchInstantWeather(for:at:with:completion:)()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *v0;
  v22 = sub_23B50B7B4();
  v11 = OUTLINED_FUNCTION_5(v22);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_35_3();
  sub_23B461B10(v7, v1);
  sub_23B50B4B4();
  sub_23B50B0C4();
  OUTLINED_FUNCTION_139_0();
  v16 = swift_allocObject();
  v16[2] = v9;
  v16[3] = v5;
  v16[4] = v3;
  v17 = v9;

  v18 = sub_23B50B034();
  OUTLINED_FUNCTION_152_0();
  sub_23B50B074();

  OUTLINED_FUNCTION_139_0();
  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = v5;
  v19[4] = v3;
  v20 = v17;

  v21 = sub_23B50B034();
  sub_23B50B084();

  (*(v13 + 8))(v1, v22);
  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B461B10@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v3 = sub_23B50CB54();
  v82 = *(v3 - 8);
  v83 = v3;
  v4 = *(v82 + 64);
  MEMORY[0x28223BE20](v3);
  v84 = v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1321E8, &qword_23B5101C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v80[1] = v80 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338B0, &unk_23B519390);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v80 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D20, &qword_23B515138);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v81 = v80 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D28, &unk_23B5193A0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v93 = v80 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D30, &qword_23B515140);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v92 = v80 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D38, &unk_23B5193B0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v91 = v80 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D40, &unk_23B5193C0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v90 = v80 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F00, &unk_23B5257B0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v89 = v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v88 = v80 - v32;
  v33 = sub_23B50B7E4();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v87 = v80 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_23B50B604();
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v86 = v80 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D48, &unk_23B5193D0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v43 = v80 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44 - 8);
  v46 = sub_23B50AD84();
  v80[4] = v47;
  v80[5] = v46;
  Options = type metadata accessor for WeatherServiceFetchOptions();
  v49 = Options[5];
  sub_23B3A23E0();
  v50 = a1[1];
  v80[3] = *a1;
  v51 = a1 + Options[6];
  v52 = *(v51 + 4);
  v80[2] = v50;
  if ((v52 & 0xFF00) == 0x300)
  {
    v53 = sub_23B50B834();
    __swift_storeEnumTagSinglePayload(v43, 1, 1, v53);
  }

  else
  {
    v54 = *v51;

    sub_23B50B824();
    v55 = sub_23B50B834();
    __swift_storeEnumTagSinglePayload(v43, 0, 1, v55);
  }

  v94 = *(a1 + Options[7]);
  sub_23B3A1C3C();
  v56 = a1 + Options[13];
  v57 = *(v56 + 6) | ((*(v56 + 14) | (v56[30] << 16)) << 32);
  if ((*(v56 + 6) & 0xFF00) == 0x200)
  {
    (*(v34 + 104))(v87, *MEMORY[0x277D7AC70], v33);
  }

  else
  {
    v58 = *(v56 + 2);
    v59 = *(v56 + 2);
    v60 = *v56;
    v102 = v59 & 1;
    v101 = v57 & 1;
    v61 = vdupq_n_s64(v57);
    v94 = v60;
    v95 = v59 & 1;
    v96 = v58;
    v97 = v57 & 1;
    *v61.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v61, xmmword_23B5192A0), vshlq_u64(v61, xmmword_23B519290))), 0x1000100010001);
    v98 = vuzp1_s8(*v61.i8, *v61.i8).u32[0];
    v99 = BYTE5(v57) & 1;
    v100 = BYTE6(v57) & 1;
    v62 = v87;
    sub_23B3A205C();
    (*(v34 + 104))(v62, *MEMORY[0x277D7AC68], v33);
  }

  v63 = *(a1 + Options[8]);
  v64 = sub_23B50AA24();
  __swift_storeEnumTagSinglePayload(v88, 1, 1, v64);
  __swift_storeEnumTagSinglePayload(v89, 1, 1, v64);
  v65 = sub_23B50B894();
  __swift_storeEnumTagSinglePayload(v90, 1, 1, v65);
  v66 = sub_23B50B864();
  __swift_storeEnumTagSinglePayload(v91, 1, 1, v66);
  v67 = sub_23B50B874();
  __swift_storeEnumTagSinglePayload(v92, 1, 1, v67);
  v68 = sub_23B50B8A4();
  __swift_storeEnumTagSinglePayload(v93, 1, 1, v68);
  v69 = Options[9];
  sub_23B3A23E0();
  v70 = type metadata accessor for WeatherNetworkActivity();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v70);
  v72 = v81;
  if (EnumTagSinglePayload == 1)
  {

    sub_23B398890(v12, &qword_27E1338B0, &unk_23B519390);
    v73 = 1;
  }

  else
  {
    *v12;
    v74 = v12[1];
    v75 = &v12[*(v70 + 28)];
    sub_23B3A23E0();

    sub_23B50C824();
    sub_23B3A24BC(v12, type metadata accessor for WeatherNetworkActivity);
    v73 = 0;
  }

  v76 = sub_23B50C834();
  __swift_storeEnumTagSinglePayload(v72, v73, 1, v76);
  v77 = *(a1 + Options[10]);
  sub_23B50AD94();
  v78 = *(a1 + Options[15]);
  (*(v82 + 104))(v84, *MEMORY[0x277D7B100], v83);
  return sub_23B50B784();
}

uint64_t sub_23B462410(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
  [a4 coordinate];
  return sub_23B50B684();
}

uint64_t sub_23B46249C()
{
  v1 = OUTLINED_FUNCTION_196_0();
  v2 = *(v0 + 48);
  return sub_23B462410(v1, v3, v4, v5);
}

void sub_23B4624BC(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void, __n128), uint64_t a5)
{
  v31[1] = a5;
  v32 = a4;
  v42 = a2;
  v43 = a3;
  v7 = type metadata accessor for InstantWeather();
  v36 = *(v7 - 8);
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v41 = v31 - v12;
  MEMORY[0x28223BE20](v13);
  v34 = v31 - v14;
  v15 = sub_23B50B4B4();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = 0;
  v21 = *a1;
  v44 = *(*a1 + 16);
  v37 = v22 + 16;
  v38 = OBJC_IVAR____TtC10WeatherKit14WeatherService_modelFactory;
  v39 = (v22 + 8);
  v40 = v22;
  v23 = MEMORY[0x277D84F90];
  v35 = v10;
  for (i = v21; ; v21 = i)
  {
    if (v44 == v20)
    {
      v32(v23, 0, v17);
LABEL_12:

      return;
    }

    if (v20 >= *(v21 + 16))
    {
      break;
    }

    (*(v40 + 16))(v19, v21 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v20, v15, v17);
    v24 = *(v42 + v38);
    sub_23B3F7984(v41);
    if (v5)
    {
      (*v39)(v19, v15);
      goto LABEL_12;
    }

    (*v39)(v19, v15);
    sub_23B3B0A98();
    sub_23B3B0A98();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23B4F598C(0, *(v23 + 16) + 1, 1, v23);
      v23 = v29;
    }

    v26 = *(v23 + 16);
    v25 = *(v23 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_23B4F598C(v25 > 1, v26 + 1, 1, v23);
      v23 = v30;
    }

    *(v23 + 16) = v26 + 1;
    v27 = v23 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
    v28 = *(v36 + 72);
    sub_23B3B0A98();
    ++v20;
  }

  __break(1u);
}

uint64_t sub_23B46285C(void *a1, void *a2, uint64_t (*a3)(void *, uint64_t))
{
  if (qword_280B43440 != -1)
  {
    swift_once();
  }

  v6 = sub_23B50CDF4();
  __swift_project_value_buffer(v6, qword_280B4E9D8);
  v7 = a1;
  v8 = a2;
  v9 = sub_23B50CDD4();
  v10 = sub_23B50D4B4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v11 = 141558787;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2113;
    *(v11 + 14) = v8;
    *v12 = v8;
    *(v11 + 22) = 2082;
    swift_getErrorValue();
    v20 = v10;
    v13 = v8;
    v14 = sub_23B50D874();
    v16 = sub_23B391F1C(v14, v15, &v22);

    *(v11 + 24) = v16;
    *(v11 + 32) = 2112;
    v17 = a1;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 34) = v18;
    v12[1] = v18;
    _os_log_impl(&dword_23B38D000, v9, v20, "Encountered an error when fetching instant weather; location=%{private,mask.hash}@,  error=%{public}s %@", v11, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D80, &qword_23B5192E0);
    swift_arrayDestroy();
    MEMORY[0x23EE9E260](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x23EE9E260](v21, -1, -1);
    MEMORY[0x23EE9E260](v11, -1, -1);
  }

  return a3(a1, 1);
}

uint64_t sub_23B462ABC(void *a1, uint64_t a2, void *a3)
{
  v4 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
  [a3 coordinate];
  return sub_23B50B674();
}

uint64_t sub_23B462B5C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v17 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133948, &qword_23B5194F8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for InstantWeather();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + OBJC_IVAR____TtC10WeatherKit14WeatherService_modelFactory);
  result = sub_23B3F7984(v13);
  if (!v4)
  {
    sub_23B477C04();
    swift_storeEnumTagMultiPayload();
    v17(v9);
    sub_23B398890(v9, &qword_27E133948, &qword_23B5194F8);
    return sub_23B3A24BC(v13, type metadata accessor for InstantWeather);
  }

  return result;
}

void WeatherService.cachedWeather<each A>(for:including:options:)()
{
  OUTLINED_FUNCTION_21();
  v4 = v3;
  v6 = v5;
  v42 = v7;
  v43 = v1;
  v44 = v8;
  v46 = v2;
  if (v3 == 1)
  {
    OUTLINED_FUNCTION_230_0((v2 & 0xFFFFFFFFFFFFFFFELL));
    TupleTypeMetadata = type metadata accessor for WeatherQuery();
  }

  else
  {
    MEMORY[0x28223BE20](v1);
    OUTLINED_FUNCTION_247_0();
    v10 = 0;
    v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
    while (v4 != v10)
    {
      v13 = *(v12 + 8 * v10);
      v0[v10++] = type metadata accessor for WeatherQuery();
    }

    OUTLINED_FUNCTION_74_1();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v45 = TupleTypeMetadata;
  v14 = OUTLINED_FUNCTION_5(TupleTypeMetadata);
  v41 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_27();
  v20 = v19 - v18;
  OUTLINED_FUNCTION_289(v21, v22, v23, v24, v25, v26, v27, v28, v40);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_247_0();
  if (v4)
  {
    v30 = (v46 & 0xFFFFFFFFFFFFFFFELL);
    v31 = (v45 + 32);
    v32 = v0;
    v33 = v4;
    do
    {
      if (v4 == 1)
      {
        v34 = 0;
      }

      else
      {
        v34 = *v31;
      }

      v35 = *v30++;
      v36 = v20 + v34;
      v37 = *v6++;
      v38 = type metadata accessor for WeatherQuery();
      OUTLINED_FUNCTION_2(v38);
      (*(v39 + 16))(v36, v37);
      *v32++ = v36;
      v31 += 4;
      --v33;
    }

    while (v33);
  }

  sub_23B462F30(v43, v0, v44, v4, v46, v42);
  (*(v41 + 8))(v20, v45);
  OUTLINED_FUNCTION_175_0();
  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B462F30@<X0>(uint64_t TupleTypeMetadata@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v180 = a2;
  v8 = *v6;
  v169 = 8 * a4;
  v165 = a6;
  v147 = v8;
  v171 = v6;
  v151 = TupleTypeMetadata;
  v150 = a3;
  if (a4 == 1)
  {
    v9 = *(a5 & 0xFFFFFFFFFFFFFFFELL);
    v10 = 1;
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    for (i = 0; v11 != i; ++i)
    {
      *(&(&v143)[i] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0)) = *((a5 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    v10 = v11;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v9 = TupleTypeMetadata;
  }

  v14 = *(v9 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v17 = &v143 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = &v143;
  MEMORY[0x28223BE20](v18);
  v20 = &v143 - v19;
  v21 = type metadata accessor for WeatherProductsContainer();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v166 = &v143 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EA8, &qword_23B5194F0);
  v25 = (*(*(v24 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24 - 8);
  v168 = &v143 - v26;
  v173 = sub_23B50AD24();
  v176 = *(v173 - 8);
  v27 = *(v176 + 64);
  MEMORY[0x28223BE20](v173);
  v149 = &v143 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v181 = &v143 - v30;
  v159 = &v143;
  MEMORY[0x28223BE20](v31);
  v172 = &v143 - v32;
  v33 = sub_23B50B7B4();
  v158 = &v143;
  v153 = v33;
  v152 = *(v33 - 8);
  v34 = *(v152 + 64);
  MEMORY[0x28223BE20](v33);
  v170 = &v143 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = v10;
  v163 = &v143;
  v167 = v9;
  v162 = &v143;
  v161 = &v143;
  v160 = &v143;
  v145 = v14;
  v148 = v20;
  v144 = v17;
  v175 = a5;
  if (v10 == 1)
  {
    v37 = *(a5 & 0xFFFFFFFFFFFFFFFELL);
    v38 = type metadata accessor for WeatherQuery();
  }

  else
  {
    MEMORY[0x28223BE20](v35);
    v40 = &v143 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (j = 0; v10 != j; ++j)
    {
      v42 = *((a5 & 0xFFFFFFFFFFFFFFFELL) + 8 * j);
      v43 = type metadata accessor for WeatherQuery();
      v10 = v182;
      *&v40[8 * j] = v43;
    }

    v38 = swift_getTupleTypeMetadata();
  }

  v157 = &v143;
  v174 = v38;
  v177 = *(v38 - 8);
  v44 = *(v177 + 64);
  MEMORY[0x28223BE20](v38);
  v179 = &v143 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = &v143;
  MEMORY[0x28223BE20](v46);
  v48 = &v143 - v47;
  v49 = _s21WeatherServiceRequestVMa();
  v155 = &v143;
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v178 = (&v143 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  v154 = &v143;
  MEMORY[0x28223BE20](v52);
  v54 = (&v143 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = v10;
  v56 = v181;
  if (v10)
  {
    v57 = (v175 & 0xFFFFFFFFFFFFFFFELL);
    v58 = (v174 + 32);
    v59 = v180;
    v60 = (&v143 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
    v61 = v10;
    do
    {
      if (v55 == 1)
      {
        v62 = 0;
      }

      else
      {
        v62 = *v58;
      }

      v63 = *v57++;
      v64 = &v48[v62];
      v65 = *v59++;
      v66 = type metadata accessor for WeatherQuery();
      (*(*(v66 - 8) + 16))(v64, v65, v66);
      *v60++ = v64;
      v58 += 4;
      --v61;
      v56 = v181;
      v55 = v182;
    }

    while (v61);
  }

  v67 = v178;
  v68 = v151;
  v69 = v54;
  v70 = v150;
  sub_23B3ADF24(v69, v150, v55, v175, v178);
  v71 = *(v177 + 8);
  v177 += 8;
  v146 = v71;
  v71(v48, v174);
  v72 = v170;
  sub_23B3A0F38(v70, v67 + *(v49 + 20), v73, v74, v75, v76, v77, v78, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154);
  v79 = v172;
  sub_23B50AD14();
  if (qword_280B43440 != -1)
  {
    swift_once();
  }

  v80 = sub_23B50CDF4();
  v81 = __swift_project_value_buffer(v80, qword_280B4E9D8);
  v82 = v176;
  v83 = *(v176 + 16);
  v84 = v173;
  v83(v56, v79, v173);
  v85 = v68;
  v151 = v81;
  v86 = sub_23B50CDD4();
  v87 = sub_23B50D4C4();

  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v143 = v89;
    v150 = swift_slowAlloc();
    v183 = v150;
    *v88 = 141558531;
    *(v88 + 4) = 1752392040;
    *(v88 + 12) = 2113;
    *(v88 + 14) = v85;
    *v89 = v85;
    *(v88 + 22) = 2082;
    v83(v149, v56, v84);
    v90 = v85;
    v91 = sub_23B50D1A4();
    v93 = v92;
    v181 = *(v82 + 8);
    (v181)(v56, v84);
    v94 = sub_23B391F1C(v91, v93, &v183);

    *(v88 + 24) = v94;
    _os_log_impl(&dword_23B38D000, v86, v87, "About to fetch cached weather data; location=%{private,mask.hash}@, startTime=%{public}s", v88, 0x20u);
    v95 = v143;
    sub_23B398890(v143, &qword_27E132D80, &qword_23B5192E0);
    MEMORY[0x23EE9E260](v95, -1, -1);
    v96 = v150;
    __swift_destroy_boxed_opaque_existential_1(v150);
    v97 = v170;
    MEMORY[0x23EE9E260](v96, -1, -1);
    MEMORY[0x23EE9E260](v88, -1, -1);

    v98 = v166;
  }

  else
  {

    v181 = *(v82 + 8);
    (v181)(v56, v84);
    v98 = v166;
    v97 = v72;
  }

  v99 = v171[6];
  __swift_project_boxed_opaque_existential_1(v171 + 2, v171[5]);
  v100 = v178;
  v101 = *v178;
  [v85 coordinate];
  v102 = sub_23B50B724();
  if (v102)
  {
    v103 = v102;
    v104 = v85;
    v105 = v168;
    sub_23B42CD1C(v102, v104, v97, v168);
    sub_23B3A8A0C(v103, v104, v105, v98);

    MEMORY[0x28223BE20](v108);
    v111 = &v143 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
    v112 = v182;
    if (v182)
    {
      v113 = 0;
      v114 = (v167 + 32);
      v115 = v148;
      do
      {
        if (v112 == 1)
        {
          v116 = 0;
        }

        else
        {
          v116 = *v114;
        }

        *&v111[8 * v113++] = v115 + v116;
        v114 += 4;
      }

      while (v112 != v113);
      MEMORY[0x28223BE20](v109);
      v118 = &v143 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
      v119 = 0;
      v121 = v120 & 0xFFFFFFFFFFFFFFFELL;
      v123 = (v122 + 32);
      do
      {
        if (v112 == 1)
        {
          v124 = 0;
        }

        else
        {
          v124 = *v123;
        }

        v125 = *(v121 + 8 * v119);
        v126 = &v179[v124];
        v127 = v180[v119];
        v128 = type metadata accessor for WeatherQuery();
        (*(*(v128 - 8) + 16))(v126, v127, v128);
        *&v118[8 * v119++] = v126;
        v123 += 4;
        v112 = v182;
      }

      while (v182 != v119);
      v129 = v104;
      v97 = v170;
      v98 = v166;
    }

    else
    {
      v129 = v104;
      v118 = &v184;
    }

    sub_23B3CE19C(v118, v98, v112, v175, v111);
    v146(v179, v174);
    v130 = v129;
    v131 = sub_23B50CDD4();
    v132 = sub_23B50D4C4();

    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      *v133 = 141558275;
      *(v133 + 4) = 1752392040;
      *(v133 + 12) = 2113;
      *(v133 + 14) = v130;
      *v134 = v130;
      v135 = v130;
      _os_log_impl(&dword_23B38D000, v131, v132, "Successfully created product tuple; location=%{private,mask.hash}@", v133, 0x16u);
      sub_23B398890(v134, &qword_27E132D80, &qword_23B5192E0);
      MEMORY[0x23EE9E260](v134, -1, -1);
      MEMORY[0x23EE9E260](v133, -1, -1);
    }

    sub_23B3A24BC(v98, type metadata accessor for WeatherProductsContainer);
    sub_23B398890(v168, &qword_27E131EA8, &qword_23B5194F0);
    (v181)(v172, v173);
    (*(v152 + 8))(v97, v153);
    v136 = v145;
    v137 = v144;
    v138 = v148;
    v139 = v167;
    (*(v145 + 16))(v144, v148, v167);
    v140 = v165;
    sub_23B3CE3F4(v137, v139, v165);
    v141 = *(v136 + 8);
    v141(v137, v139);
    sub_23B3A24BC(v178, _s21WeatherServiceRequestVMa);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
    v142 = sub_23B50D954();
    __swift_storeEnumTagSinglePayload(v140, 0, 1, v142);
    return (v141)(v138, v139);
  }

  else
  {
    (v181)(v172, v173);
    (*(v152 + 8))(v97, v153);
    sub_23B3A24BC(v100, _s21WeatherServiceRequestVMa);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
    v106 = sub_23B50D954();
    return __swift_storeEnumTagSinglePayload(v165, 1, 1, v106);
  }
}

void WeatherService.cachedWeather<A>(for:including:options:)()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_5(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15_13();
  OUTLINED_FUNCTION_170_0();
  v15(v0, v6, v11);
  v18 = v2;
  v19 = v0;
  sub_23B462F30(v8, &v19, v4, 1, &v18, v10);
  v16 = OUTLINED_FUNCTION_283();
  v17(v16, v11);
  OUTLINED_FUNCTION_20();
}

void WeatherService.cachedWeather<A, B>(for:including:_:options:)()
{
  OUTLINED_FUNCTION_21();
  v29 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v27 = v12;
  v28 = v11;
  v13 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_5(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_15_13();
  v19 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_5(v19);
  v21 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_88_0();
  v25(v0, v10, v19);
  v31 = v0;
  OUTLINED_FUNCTION_107_0();
  v26(v1, v8, v13);
  v32 = v1;
  v30[0] = v6;
  v30[1] = v4;
  sub_23B462F30(v28, &v31, v29, 2, v30, v27);
  (*(v15 + 8))(v1, v13);
  (*(v21 + 8))(v0, v19);
  OUTLINED_FUNCTION_20();
}

void WeatherService.cachedWeather<A, B, C>(for:including:_:_:options:)()
{
  OUTLINED_FUNCTION_21();
  v41 = v2;
  v37 = v4;
  v38 = v3;
  v6 = v5;
  v34 = v5;
  v35 = v7;
  v9 = v8;
  v36 = v10;
  v39 = v12;
  v40 = v11;
  v13 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_5(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_63();
  v19 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_5(v19);
  v21 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_127();
  v25 = OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_5(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_86_0();
  v31(v6, v35, v25);
  v43 = v6;
  OUTLINED_FUNCTION_141_0();
  v32(v0, v36, v19);
  v44 = v0;
  OUTLINED_FUNCTION_153_0();
  v33(v1, v38, v13);
  v45 = v1;
  v42[0] = v9;
  v42[1] = v34;
  v42[2] = v37;
  sub_23B462F30(v40, &v43, v41, 3, v42, v39);
  (*(v15 + 8))(v1, v13);
  (*(v21 + 8))(v0, v19);
  (*(v27 + 8))(v6, v25);
  OUTLINED_FUNCTION_20();
}

void WeatherService.cachedWeather<A, B, C, D>(for:including:_:_:_:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_21();
  a19 = v26;
  a20 = v27;
  v65 = v28;
  v64 = v29;
  v75 = v30;
  v76 = v31;
  v73 = v32;
  v74 = v33;
  v69 = v34;
  v70 = v35;
  v36 = a21;
  v67 = v37;
  v68 = a21;
  v72 = a22;
  v71 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_5(v71);
  v39 = v38;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_52();
  v66 = v43;
  OUTLINED_FUNCTION_24_0();
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_2_28(v44, &a15);
  v46 = v45;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_18_14();
  OUTLINED_FUNCTION_65_0();
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_177_0();
  OUTLINED_FUNCTION_2_28(v50, &a17);
  v52 = v51;
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_63();
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_2_28(v56, &a18);
  v58 = v57;
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_15_13();
  OUTLINED_FUNCTION_88_0();
  v62(v25, v67);
  v78 = v25;
  OUTLINED_FUNCTION_169_0();
  v63(v23, v69, v24);
  v79 = v23;
  (*(v46 + 16))(v22, v70, v36);
  v80 = v22;
  (*(v39 + 16))(v66, v73, v71);
  v81 = v66;
  v77[0] = v64;
  v77[1] = v65;
  v77[2] = v68;
  v77[3] = v72;
  sub_23B462F30(v75, &v78, v76, 4, v77, v74);
  (*(v39 + 8))(v66, v71);
  (*(v46 + 8))(v22);
  (*(v52 + 8))(v23);
  (*(v58 + 8))(v25);
  OUTLINED_FUNCTION_20();
}

void WeatherService.cachedWeather<A, B, C, D, E>(for:including:_:_:_:_:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_21();
  a19 = v27;
  a20 = v28;
  v93 = v29;
  v31 = v30;
  v90 = v32;
  v87 = v33;
  v85 = v34;
  v91 = v36;
  v92 = v35;
  v84 = a21;
  v37 = a22;
  v89 = a24;
  v88 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_5(v88);
  v86 = v38;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v42);
  v43 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v43, &a14);
  v45 = v44;
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_52();
  v94 = v49;
  OUTLINED_FUNCTION_24_0();
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_177_0();
  OUTLINED_FUNCTION_2_28(v50, &v101);
  v52 = v51;
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_23();
  v56 = OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_2_28(v56, &a10);
  v58 = v57;
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_65_0();
  v62 = v31;
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_2_28(v63, &a12);
  v65 = v64;
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_18_14();
  OUTLINED_FUNCTION_169_0();
  OUTLINED_FUNCTION_268();
  v70(v69);
  v96 = v24;
  OUTLINED_FUNCTION_86_0();
  v71(v26, v85, v56);
  v97 = v26;
  (*(v52 + 16))(v37, v87, v25);
  v98 = v37;
  v72 = *(v45 + 16);
  OUTLINED_FUNCTION_166_0();
  v74(v73);
  v99 = v94;
  OUTLINED_FUNCTION_88_0();
  v75 = OUTLINED_FUNCTION_190_0();
  v76(v75, v90, v88);
  v100 = v94;
  v95[0] = v62;
  v95[1] = v84;
  OUTLINED_FUNCTION_184_0();
  v95[2] = v78;
  v95[3] = v77;
  v95[4] = v89;
  sub_23B462F30(v92, &v96, v93, 5, v95, v91);
  v79 = *(v86 + 8);
  v80 = OUTLINED_FUNCTION_195();
  v81(v80);
  OUTLINED_FUNCTION_56_1(&v100);
  v82(v94, v45);
  OUTLINED_FUNCTION_56_1(&a9);
  v83(v37);
  (*(v58 + 8))(v26);
  (*(v65 + 8))(v24);
  OUTLINED_FUNCTION_20();
}

void WeatherService.cachedWeather<A, B, C, D, E, F>(for:including:_:_:_:_:_:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_21();
  a19 = v28;
  a20 = v29;
  v91 = v30;
  v87 = v31;
  v85 = v32;
  v89 = v34;
  v90 = v33;
  v35 = a21;
  v36 = a22;
  v37 = a23;
  v38 = a24;
  v86 = a25;
  v88 = a26;
  v39 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v39, &a17);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v43);
  v92 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_5(v92);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v47);
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_174_0();
  OUTLINED_FUNCTION_2_28(v48, &v94);
  v50 = v49;
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_24_0();
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_2_28(v54, &v96);
  v56 = v55;
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_2_28(v60, &v98);
  v62 = v61;
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_18_14();
  OUTLINED_FUNCTION_63();
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_2_28(v66, v100);
  v68 = v67;
  v70 = *(v69 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_153_0();
  v72(v35, v85);
  v96 = v35;
  OUTLINED_FUNCTION_88_0();
  OUTLINED_FUNCTION_280();
  v73();
  v97 = v37;
  v74 = *(v56 + 16);
  OUTLINED_FUNCTION_131_0(&a16);
  v75();
  v98 = v26;
  v76 = *(v50 + 16);
  v50 += 16;
  OUTLINED_FUNCTION_234_0();
  OUTLINED_FUNCTION_279(&a18);
  v77();
  v99 = v36;
  OUTLINED_FUNCTION_39_6(&a9);
  v78 = OUTLINED_FUNCTION_197_0();
  v79(v78, v87, v92);
  v100[0] = v27;
  OUTLINED_FUNCTION_44_3(&a15);
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_186_0();
  v80();
  v100[1] = v50;
  OUTLINED_FUNCTION_120_0(&v99);
  OUTLINED_FUNCTION_111();
  v94 = v82;
  v95[0] = v81;
  v95[1] = v86;
  v95[2] = v88;
  sub_23B462F30(v90, &v96, v91, 6, &v93, v89);
  (*(v38 + 8))(v50, v26);
  (*(v56 + 24))(v27, v92);
  OUTLINED_FUNCTION_56_1(v95);
  OUTLINED_FUNCTION_146_0();
  v83();
  OUTLINED_FUNCTION_56_1(&v97);
  v84(v26);
  (*(v62 + 8))(v37);
  (*(v68 + 8))(v35);
  OUTLINED_FUNCTION_20();
}

void WeatherService.cachedWeather<A, B, C, D, E, F, G>(for:including:_:_:_:_:_:_:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_21();
  a19 = v30;
  a20 = v31;
  v101 = v32;
  OUTLINED_FUNCTION_73_1(v33);
  v100 = a21;
  v34 = a24;
  OUTLINED_FUNCTION_80_1(a28, &a16);
  v35 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v35, &a13);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v39);
  v40 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v40, &v117);
  v105 = v41;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v45);
  v46 = type metadata accessor for WeatherQuery();
  v47 = OUTLINED_FUNCTION_5(v46);
  v103 = v48;
  v104 = v47;
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_52();
  v102 = v52;
  OUTLINED_FUNCTION_24_0();
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_2_28(v53, &v102);
  v55 = v54;
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v59);
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_2_28(v60, &v106);
  v62 = v61;
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_2_28(v66, &v109);
  v68 = v67;
  v70 = *(v69 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_30_6();
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_2_28(v72, &v111);
  v74 = v73;
  v76 = *(v75 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_272();
  v78();
  v112 = v29;
  v79 = *(v68 + 16);
  OUTLINED_FUNCTION_167_0(&v118);
  v80();
  v113 = v34;
  v81 = *(v62 + 16);
  OUTLINED_FUNCTION_252(&a9);
  v82();
  v114 = v28;
  v83 = *(v55 + 16);
  OUTLINED_FUNCTION_131_0(&a12);
  v84();
  v115 = v97;
  v85 = v102;
  v86 = *(v103 + 16);
  OUTLINED_FUNCTION_238();
  v87();
  v116 = v85;
  v88 = *(v105 + 16);
  OUTLINED_FUNCTION_268();
  OUTLINED_FUNCTION_223_0();
  v89();
  v117 = v98;
  OUTLINED_FUNCTION_39_6(&a11);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_245();
  OUTLINED_FUNCTION_149_0();
  v90();
  v118 = v85;
  OUTLINED_FUNCTION_154_0(&v108);
  OUTLINED_FUNCTION_120_0(&v113);
  OUTLINED_FUNCTION_111();
  v109 = v92;
  v110 = v91;
  OUTLINED_FUNCTION_207();
  v111 = v93;
  sub_23B462F30(v101, &v112, v100, 7, &v106, v99);
  (*(v68 + 24))(v85, v28);
  (*(v105 + 8))(v98, v62 + 16);
  (*(v103 + 8))(v102, v104);
  OUTLINED_FUNCTION_56_1(&v103);
  OUTLINED_FUNCTION_187_0();
  v94();
  OUTLINED_FUNCTION_56_1(&v107);
  v95(v28);
  OUTLINED_FUNCTION_56_1(&v110);
  OUTLINED_FUNCTION_146_0();
  v96();
  (*(v74 + 8))(v29);
  OUTLINED_FUNCTION_20();
}

void WeatherService.cachedWeather<A, B, C, D, E, F, G, H>(for:including:_:_:_:_:_:_:_:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_21();
  a19 = v31;
  a20 = v32;
  v106 = v33;
  v105 = v34;
  v110 = v35;
  OUTLINED_FUNCTION_94_0(v36);
  OUTLINED_FUNCTION_93_0(v37);
  OUTLINED_FUNCTION_158_0(v38);
  v39 = a23;
  v40 = a25;
  v41 = a26;
  v42 = a28;
  v104 = a29;
  OUTLINED_FUNCTION_80_1(a30, &a11);
  v43 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v43, &a9);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v47);
  v48 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v48, &v123);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v52);
  v116 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_5(v116);
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_52();
  v114 = v56;
  OUTLINED_FUNCTION_24_0();
  v115 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_5(v115);
  v113 = v57;
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_29_8(v61, v103);
  OUTLINED_FUNCTION_69_2();
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_2_28(v62, &v109);
  v64 = v63;
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v68);
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_2_28(v69, &v111);
  v71 = v70;
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_2_28(v75, &v115);
  v77 = v76;
  v79 = *(v78 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_15_13();
  OUTLINED_FUNCTION_63();
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_2_28(v81, &v118);
  v83 = v82;
  v85 = *(v84 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_170_0();
  OUTLINED_FUNCTION_146_0();
  v87();
  v122 = v39;
  v88 = *(v77 + 16);
  v77 += 16;
  OUTLINED_FUNCTION_167_0(&v124);
  v89();
  v123 = v30;
  v90 = *(v71 + 16);
  OUTLINED_FUNCTION_213(v125);
  v91();
  v124 = v42;
  v92 = *(v64 + 16);
  v93 = v111;
  OUTLINED_FUNCTION_131_0(v126);
  v94();
  v125[0] = v93;
  v95 = v112;
  (*(v113 + 16))(v112, v105, v115);
  v125[1] = v95;
  OUTLINED_FUNCTION_40_3(v120);
  v96 = v114;
  v97(v114, v106, v116);
  v126[0] = v96;
  OUTLINED_FUNCTION_123_0(&v121);
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_186_0();
  v98();
  v126[1] = v40;
  OUTLINED_FUNCTION_39_6(&v127);
  OUTLINED_FUNCTION_236_0();
  OUTLINED_FUNCTION_280();
  OUTLINED_FUNCTION_166_0();
  v99();
  v127 = v77;
  OUTLINED_FUNCTION_204_0(&v113);
  OUTLINED_FUNCTION_144_0(&v119);
  OUTLINED_FUNCTION_120_0(&v122);
  v120[3] = v104;
  v121 = v107;
  sub_23B462F30(v110, &v122, v109, 8, &v117, v108);
  (*(v30 + 8))(v77, v41);
  (*(v42 + 8))(v40, v71 + 16);
  (*(v64 + 24))(v114, v116);
  (*(v113 + 8))(v112, v115);
  OUTLINED_FUNCTION_56_1(&v110);
  v100(v111);
  OUTLINED_FUNCTION_56_1(&v112);
  OUTLINED_FUNCTION_262();
  v101();
  OUTLINED_FUNCTION_56_1(&v116);
  OUTLINED_FUNCTION_187_0();
  v102();
  (*(v83 + 8))(v39);
  OUTLINED_FUNCTION_20();
}

void WeatherService.cachedWeather<A, B, C, D, E, F, G, H, I>(for:including:_:_:_:_:_:_:_:_:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_21();
  a19 = v33;
  a20 = v34;
  v128 = v35;
  v126 = v36;
  v125 = v37;
  v124 = v38;
  v132 = v39;
  OUTLINED_FUNCTION_94_0(v40);
  OUTLINED_FUNCTION_93_0(v41);
  OUTLINED_FUNCTION_115_0(v42);
  v130 = v43;
  v44 = a25;
  v140 = a24;
  v45 = a26;
  v46 = a28;
  v47 = a31;
  OUTLINED_FUNCTION_80_1(a32, &v152);
  v48 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v48, v151);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v52);
  v53 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v53, &v146);
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v57);
  v58 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v58, &v142);
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v62);
  v141 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_5(v141);
  v139 = v63;
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v67);
  v68 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v68, &a17);
  v70 = v69;
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v74);
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_2_28(v75, &v128);
  v77 = v76;
  v79 = *(v78 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v81);
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_2_28(v82, &v131);
  v84 = v83;
  v86 = *(v85 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_98_0();
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_2_28(v88, &v134);
  v90 = v89;
  v92 = *(v91 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_192_0(&v133);
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_2_28(v94, &v137);
  v96 = *(v95 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_15_13();
  OUTLINED_FUNCTION_121_0();
  v98(v44, v124);
  v148[0] = v44;
  v99 = *(v90 + 16);
  OUTLINED_FUNCTION_130_0(&v145);
  v100();
  v148[1] = v46;
  v101 = *(v84 + 16);
  OUTLINED_FUNCTION_213(&v147);
  v102();
  v149[0] = v32;
  v103 = *(v77 + 16);
  v77 += 16;
  OUTLINED_FUNCTION_160(&a14);
  OUTLINED_FUNCTION_252(v148);
  v104();
  v149[1] = v47;
  v105 = *(v70 + 16);
  v106 = OUTLINED_FUNCTION_160(&a15);
  v107(v106, v125, v137);
  v150 = v47;
  v108 = *(v139 + 16);
  v109 = OUTLINED_FUNCTION_49_2();
  v110(v109, v126, v141);
  v151[0] = v47;
  OUTLINED_FUNCTION_44_3(&v141);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_224_0();
  v111();
  v151[1] = v47;
  OUTLINED_FUNCTION_40_3(&v144);
  OUTLINED_FUNCTION_199();
  OUTLINED_FUNCTION_267();
  OUTLINED_FUNCTION_149_0();
  v112();
  v151[2] = v77;
  OUTLINED_FUNCTION_53_1(v149);
  OUTLINED_FUNCTION_190_0();
  OUTLINED_FUNCTION_276();
  v113();
  v151[3] = v46;
  OUTLINED_FUNCTION_297(&v130);
  OUTLINED_FUNCTION_82_0(&v136);
  v143[1] = v115;
  v143[2] = v114;
  OUTLINED_FUNCTION_144_0(v143);
  OUTLINED_FUNCTION_120_0(&v150);
  v147 = v129;
  sub_23B462F30(v132, v148, v130, 9, &v142, v131);
  v116 = *(v47 + 8);
  v117 = OUTLINED_FUNCTION_243_0();
  v118(v117);
  (*(v32 + 8))(v77, v84 + 16);
  (*(v70 + 24))(v138, v45);
  (*(v139 + 8))(v136, v141);
  OUTLINED_FUNCTION_56_1(&v127);
  OUTLINED_FUNCTION_245();
  v119();
  OUTLINED_FUNCTION_56_1(&v129);
  v120(v134);
  OUTLINED_FUNCTION_56_1(&v132);
  v121(v32);
  OUTLINED_FUNCTION_56_1(&v135);
  v122();
  OUTLINED_FUNCTION_56_1(&v138);
  OUTLINED_FUNCTION_159_0();
  v123();
  OUTLINED_FUNCTION_20();
}

void WeatherService.cachedWeather<A, B, C, D, E, F, G, H, I, J>(for:including:_:_:_:_:_:_:_:_:_:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_21();
  a19 = v37;
  a20 = v38;
  v138 = v39;
  v142 = v40;
  OUTLINED_FUNCTION_114_0(v41);
  OUTLINED_FUNCTION_115_0(v42);
  OUTLINED_FUNCTION_94_0(v43);
  OUTLINED_FUNCTION_93_0(v44);
  OUTLINED_FUNCTION_165_0(v45);
  OUTLINED_FUNCTION_73_1(v46);
  OUTLINED_FUNCTION_100(a26);
  v47 = a27;
  v48 = a28;
  v49 = a30;
  v50 = a32;
  OUTLINED_FUNCTION_80_1(a34, v162);
  v51 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v51, &v158);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v55);
  v56 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v56, &v153);
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v60);
  v149 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_5(v149);
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v64);
  v65 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v65, &a17);
  v135 = v66;
  v68 = *(v67 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v70);
  v71 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v71, &a15);
  v145[3] = v72;
  v74 = *(v73 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v76);
  v77 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v77, &a13);
  v145[0] = v78;
  v80 = *(v79 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_69_2();
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_2_28(v82, &v136);
  v84 = v83;
  v86 = *(v85 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v88);
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_2_28(v89, &v139);
  v91 = v90;
  v93 = *(v92 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_192_0(&v138);
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_174_0();
  OUTLINED_FUNCTION_2_28(v95, &v141);
  v97 = v96;
  v99 = *(v98 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_18_14();
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_2_28(v101, &v143);
  v103 = *(v102 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_20_13(v105, v134);
  OUTLINED_FUNCTION_262();
  v106();
  v157 = v36;
  v107 = *(v97 + 16);
  OUTLINED_FUNCTION_279(&v150);
  v108();
  v158 = v34;
  v109 = *(v91 + 16);
  OUTLINED_FUNCTION_130_0(&v152);
  v110();
  v159 = v35;
  v111 = *(v84 + 16);
  v84 += 16;
  OUTLINED_FUNCTION_160(&a9);
  OUTLINED_FUNCTION_131_0(&v155);
  v112();
  v160 = v47;
  OUTLINED_FUNCTION_50_1(&a11);
  OUTLINED_FUNCTION_136();
  v113();
  v161 = v49;
  OUTLINED_FUNCTION_50_1(&a14);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_146_0();
  v114();
  v162[0] = v47;
  OUTLINED_FUNCTION_169_0();
  v115 = OUTLINED_FUNCTION_49_2();
  v116(v115, v138, v148);
  v162[1] = v47;
  OUTLINED_FUNCTION_44_3(&v147);
  v117 = OUTLINED_FUNCTION_199();
  v118(v117, v137, v149);
  v162[2] = v84;
  OUTLINED_FUNCTION_53_1(&v151);
  OUTLINED_FUNCTION_197_0();
  OUTLINED_FUNCTION_183_0();
  v119();
  v162[3] = v50;
  OUTLINED_FUNCTION_39_6(&v156);
  OUTLINED_FUNCTION_236_0();
  OUTLINED_FUNCTION_272();
  OUTLINED_FUNCTION_223_0();
  v120();
  v163 = v34;
  OUTLINED_FUNCTION_207();
  v150 = v122;
  v151 = v121;
  OUTLINED_FUNCTION_297(v145);
  OUTLINED_FUNCTION_204_0(&v146);
  OUTLINED_FUNCTION_154_0(&v154);
  OUTLINED_FUNCTION_120_0(v162);
  sub_23B462F30(v142, &v157, v141, 10, &v150, v140[2]);
  (*(v91 + 24))(v34, v35);
  v123 = *(v47 + 8);
  v124 = OUTLINED_FUNCTION_243();
  v125(v124);
  (*(v48 + 8))(v84, v149);
  (*(v135 + 8))(v145[1], v148);
  OUTLINED_FUNCTION_56_1(&a14);
  OUTLINED_FUNCTION_268();
  v126();
  OUTLINED_FUNCTION_56_1(&a11);
  v127 = OUTLINED_FUNCTION_128_0();
  v128(v127);
  OUTLINED_FUNCTION_56_1(&v137);
  v129 = OUTLINED_FUNCTION_277();
  v130(v129);
  OUTLINED_FUNCTION_56_1(v140);
  v131();
  OUTLINED_FUNCTION_56_1(&v142);
  v132(v34);
  OUTLINED_FUNCTION_56_1(&v144);
  v133(v36);
  OUTLINED_FUNCTION_20();
}

void WeatherService.cachedWeather<A, B, C, D, E, F, G, H, I, J, K>(for:including:_:_:_:_:_:_:_:_:_:_:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_21();
  a19 = v37;
  a20 = v38;
  v161 = v39;
  v158 = v40;
  v157 = v41;
  v167 = v42;
  OUTLINED_FUNCTION_114_0(v43);
  OUTLINED_FUNCTION_115_0(v44);
  OUTLINED_FUNCTION_94_0(v45);
  OUTLINED_FUNCTION_93_0(v46);
  OUTLINED_FUNCTION_165_0(v47);
  OUTLINED_FUNCTION_147_0(v48);
  OUTLINED_FUNCTION_116_0(v49);
  OUTLINED_FUNCTION_113_0(a27);
  v50 = a29;
  v51 = a30;
  v52 = a31;
  v53 = a34;
  v160 = a35;
  OUTLINED_FUNCTION_80_1(a36, &v182);
  v54 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v54, v180);
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v58);
  v59 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v59, &v177);
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v63);
  v64 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v64, &v173);
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v68);
  v69 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v69, &a16);
  v175 = v70;
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v74);
  v75 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v75, &a13);
  v174 = v76;
  v78 = *(v77 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v80);
  v81 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v81, &a11);
  v173 = v82;
  v84 = *(v83 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v86);
  v87 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v87, &v191);
  v170[1] = v88;
  v90 = *(v89 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_63();
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_2_28(v92, &v159);
  v94 = v93;
  v96 = *(v95 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v98);
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_2_28(v99, &v162);
  v101 = v100;
  v103 = *(v102 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_192_0(&v161);
  v105 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_28(v105, &v165);
  v107 = v106;
  v109 = *(v108 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_258();
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_2_28(v111, &v168);
  v113 = *(v112 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_18_14();
  OUTLINED_FUNCTION_121_0();
  v115(v53, v157);
  v181 = v53;
  v116 = *(v107 + 16);
  v107 += 16;
  v116(v51, v158, v105);
  v182 = v51;
  v117 = *(v101 + 16);
  OUTLINED_FUNCTION_213(&v175);
  v119(v118);
  v183 = v36;
  v120 = *(v94 + 16);
  v121 = v169;
  OUTLINED_FUNCTION_130_0(v178);
  v123(v122);
  v184 = v121;
  OUTLINED_FUNCTION_50_1(v190);
  OUTLINED_FUNCTION_79_1();
  v125(v124);
  v185 = v52;
  OUTLINED_FUNCTION_50_1(&a10);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_57_2();
  v127(v126);
  v186 = v50;
  OUTLINED_FUNCTION_185_0();
  OUTLINED_FUNCTION_27_9(v128);
  OUTLINED_FUNCTION_136();
  v130(v129);
  v187 = v50;
  OUTLINED_FUNCTION_50_1(&a15);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_215_0();
  v132(v131);
  v188 = v50;
  OUTLINED_FUNCTION_39_6(&v172);
  OUTLINED_FUNCTION_197_0();
  OUTLINED_FUNCTION_186_0();
  v134(v133);
  v189 = v107;
  OUTLINED_FUNCTION_44_3(&v176);
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_223_0();
  v136(v135);
  v190[0] = v121;
  OUTLINED_FUNCTION_56_2(v179);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_183_0();
  v138(v137);
  v190[1] = v50;
  OUTLINED_FUNCTION_62_1(&a17);
  OUTLINED_FUNCTION_205_0(v164);
  OUTLINED_FUNCTION_202_0(v170);
  OUTLINED_FUNCTION_203_0(&v171);
  OUTLINED_FUNCTION_82_0(&v174);
  v179[2] = v140;
  v179[3] = v139;
  v180[0] = v160;
  v180[1] = v164[1];
  sub_23B462F30(v167, &v181, v166[0], 11, v178, v166[1]);
  (*(v53 + 8))(v50, v105);
  v141 = *(v51 + 8);
  v142 = OUTLINED_FUNCTION_270();
  v143(v142);
  (*(v101 + 24))(v107, v94 + 16);
  OUTLINED_FUNCTION_56_1(&a15);
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_194_0();
  v145(v144);
  OUTLINED_FUNCTION_56_1(&a12);
  v146 = OUTLINED_FUNCTION_128_0();
  v147(v146);
  OUTLINED_FUNCTION_56_1(&a10);
  v148 = OUTLINED_FUNCTION_55_2();
  v149(v148);
  OUTLINED_FUNCTION_56_1(v190);
  v150 = OUTLINED_FUNCTION_78_1();
  v151(v150);
  OUTLINED_FUNCTION_56_1(&v160);
  v152(v169);
  OUTLINED_FUNCTION_56_1(&v163);
  v153 = OUTLINED_FUNCTION_291();
  v154(v153);
  OUTLINED_FUNCTION_56_1(v166);
  v155(v51);
  OUTLINED_FUNCTION_56_1(&v169);
  v156(v53);
  OUTLINED_FUNCTION_20();
}

void WeatherService.cachedWeather<A, B, C, D, E, F, G, H, I, J, K, L>(for:including:_:_:_:_:_:_:_:_:_:_:_:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_21();
  a19 = v39;
  a20 = v40;
  v171 = v41;
  v169 = v42;
  v168 = v43;
  v178 = v44;
  OUTLINED_FUNCTION_147_0(v45);
  OUTLINED_FUNCTION_165_0(v46);
  OUTLINED_FUNCTION_114_0(v47);
  OUTLINED_FUNCTION_115_0(v48);
  OUTLINED_FUNCTION_94_0(v49);
  OUTLINED_FUNCTION_93_0(v50);
  OUTLINED_FUNCTION_231_0(v51);
  OUTLINED_FUNCTION_150_0(v52);
  OUTLINED_FUNCTION_145_0(a28);
  v186 = a29;
  v53 = a32;
  v54 = a33;
  v55 = a35;
  v56 = a36;
  v57 = a37;
  v173 = a37;
  OUTLINED_FUNCTION_80_1(a38, v192);
  v58 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v58, &v191);
  v172[0] = v59;
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v63);
  v64 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v64, v188);
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v68);
  v69 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v69, &v183);
  v71 = *(v70 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v73);
  v74 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v74, &a14);
  v188[1] = v75;
  v77 = *(v76 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v79);
  v80 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v80, &a11);
  v187 = v81;
  v83 = *(v82 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v85);
  v86 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v86, &v199);
  v184[1] = v87;
  v89 = *(v88 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v91);
  v92 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v92, &v197);
  v183 = v93;
  v95 = *(v94 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v97);
  v98 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v98, &v195);
  v182 = v99;
  v101 = *(v100 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v103);
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_2_28(v104, &v171);
  v106 = v105;
  v108 = *(v107 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v109);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_257_0();
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_2_28(v110, &v173);
  v112 = v111;
  v114 = *(v113 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_259();
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_2_28(v116, &v175);
  v118 = v117;
  v120 = *(v119 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v121);
  OUTLINED_FUNCTION_18_14();
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_2_28(v122, &v177);
  v124 = *(v123 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v125);
  v127 = OUTLINED_FUNCTION_20_13(v126, v167);
  v128(v127, v168);
  v193[0] = v38;
  v129 = *(v118 + 16);
  OUTLINED_FUNCTION_130_0(v184);
  v130();
  v193[1] = v56;
  v131 = *(v112 + 16);
  OUTLINED_FUNCTION_213(&v185);
  v132();
  v193[2] = v53;
  v133 = *(v106 + 16);
  OUTLINED_FUNCTION_131_0(&v187);
  v134();
  v193[3] = v55;
  OUTLINED_FUNCTION_50_1(&v194);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_135_0();
  v135();
  v193[4] = v57;
  v136 = OUTLINED_FUNCTION_33_4(&v196);
  v137(v136, v169, v184[0]);
  v193[5] = v57;
  OUTLINED_FUNCTION_50_1(v198);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_79_1();
  v138();
  v194 = v57;
  OUTLINED_FUNCTION_50_1(&a10);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_57_2();
  v139();
  v195 = v57;
  OUTLINED_FUNCTION_185_0();
  v141 = OUTLINED_FUNCTION_27_9(v140);
  v142(v141, v172[1], v188[3]);
  v196 = v57;
  OUTLINED_FUNCTION_123_0(&v182);
  OUTLINED_FUNCTION_236_0();
  OUTLINED_FUNCTION_187_0();
  OUTLINED_FUNCTION_149_0();
  v143();
  v197 = v56;
  OUTLINED_FUNCTION_77_1(&v186);
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_183_0();
  v144();
  v198[0] = v54;
  OUTLINED_FUNCTION_53_1(&v190);
  v145 = v174;
  v146(v170, v176[1], v174);
  v198[1] = v170;
  OUTLINED_FUNCTION_100(v188[4]);
  OUTLINED_FUNCTION_228_0();
  OUTLINED_FUNCTION_116_0(v147);
  OUTLINED_FUNCTION_62_1(&a9);
  OUTLINED_FUNCTION_205_0(&v179);
  OUTLINED_FUNCTION_202_0(&v180);
  OUTLINED_FUNCTION_199_0(&v181);
  v192[1] = v148;
  v192[2] = v173;
  v192[3] = v176[0];
  sub_23B462F30(v178, v193, v177, 12, &v189, v176[2]);
  (*(v57 + 8))(v170, v145);
  v149 = *(v53 + 8);
  v150 = OUTLINED_FUNCTION_227_0();
  v151(v150);
  (*(v118 + 24))(v56, v106 + 16);
  OUTLINED_FUNCTION_56_1(&a12);
  OUTLINED_FUNCTION_238();
  v152();
  OUTLINED_FUNCTION_56_1(&a10);
  v153 = OUTLINED_FUNCTION_55_2();
  v154(v153);
  OUTLINED_FUNCTION_56_1(v198);
  v155 = OUTLINED_FUNCTION_78_1();
  v156(v155);
  OUTLINED_FUNCTION_56_1(&v196);
  v157 = OUTLINED_FUNCTION_263();
  v158(v157);
  OUTLINED_FUNCTION_56_1(&v194);
  v159 = OUTLINED_FUNCTION_127_0();
  v160(v159);
  OUTLINED_FUNCTION_56_1(v172);
  v161(v55);
  OUTLINED_FUNCTION_56_1(&v174);
  v162 = OUTLINED_FUNCTION_286();
  v163(v162);
  OUTLINED_FUNCTION_56_1(v176);
  v164(v56);
  OUTLINED_FUNCTION_56_1(&v178);
  v165 = OUTLINED_FUNCTION_291();
  v166(v165);
  OUTLINED_FUNCTION_20();
}

void WeatherService.cachedWeather<A, B, C, D, E, F, G, H, I, J, K, L, M>(for:including:_:_:_:_:_:_:_:_:_:_:_:_:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  OUTLINED_FUNCTION_21();
  a19 = v41;
  a20 = v42;
  v185[0] = v43;
  v182 = v44;
  v181 = v45;
  v180 = v46;
  v193 = v47;
  OUTLINED_FUNCTION_147_0(v48);
  OUTLINED_FUNCTION_165_0(v49);
  OUTLINED_FUNCTION_114_0(v50);
  OUTLINED_FUNCTION_115_0(v51);
  OUTLINED_FUNCTION_94_0(v52);
  OUTLINED_FUNCTION_93_0(v53);
  OUTLINED_FUNCTION_231_0(v54);
  OUTLINED_FUNCTION_193_0(v55);
  OUTLINED_FUNCTION_145_0(v56);
  OUTLINED_FUNCTION_158_0(a29);
  v202[0] = a30;
  v57 = a31;
  v179 = a31;
  v58 = a33;
  v59 = a34;
  v60 = a35;
  v61 = a38;
  v187 = a39;
  OUTLINED_FUNCTION_80_1(a40, v206);
  v62 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v62, &v205);
  v186 = v63;
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v67);
  v68 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v68, &v201);
  v70 = *(v69 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v72);
  v73 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v73, &v198);
  v75 = *(v74 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v77);
  v78 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v78, &a11);
  v202[3] = v79;
  v81 = *(v80 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v83);
  v84 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v84, &a9);
  v202[1] = v85;
  v87 = *(v86 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v89);
  v90 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v90, v216);
  v200[2] = v91;
  v93 = *(v92 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v95);
  v96 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v96, v214);
  v199[2] = v97;
  v99 = *(v98 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v101);
  v102 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v102, &v212);
  v199[0] = v103;
  v105 = *(v104 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v107);
  v108 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v108, v210);
  v196 = v109;
  v111 = *(v110 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v113);
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_2_28(v114, &v184);
  v116 = v115;
  v118 = *(v117 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_61_1();
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_2_28(v120, &v186);
  v122 = v121;
  v124 = *(v123 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v125);
  OUTLINED_FUNCTION_15_13();
  OUTLINED_FUNCTION_256_0();
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_2_28(v126, &v188);
  v128 = v127;
  v130 = *(v129 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v131);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_259();
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_2_28(v132, &v190);
  v134 = *(v133 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v135);
  OUTLINED_FUNCTION_18_14();
  OUTLINED_FUNCTION_121_0();
  v136(v60, v180);
  v207 = v60;
  v137 = *(v128 + 16);
  OUTLINED_FUNCTION_167_0(&v197);
  v138();
  v208 = v40;
  v139 = *(v122 + 16);
  OUTLINED_FUNCTION_131_0(v199);
  v140();
  v209 = v58;
  v141 = *(v116 + 16);
  OUTLINED_FUNCTION_130_0(v200);
  v142();
  v210[0] = v59;
  OUTLINED_FUNCTION_50_1(&v209);
  v143 = OUTLINED_FUNCTION_49_2();
  v144(v143, v181, v197);
  v210[1] = v57;
  OUTLINED_FUNCTION_50_1(&v211);
  v145 = OUTLINED_FUNCTION_49_2();
  v146(v145, v182, v199[1]);
  v211 = v57;
  OUTLINED_FUNCTION_50_1(&v213);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_135_0();
  v147();
  v212 = v57;
  OUTLINED_FUNCTION_50_1(&v215);
  v148 = OUTLINED_FUNCTION_49_2();
  v149(v148, v183, v201);
  v213 = v57;
  v150 = OUTLINED_FUNCTION_33_4(&v217);
  v151(v150, v185[1], v202[2]);
  v214[0] = v57;
  OUTLINED_FUNCTION_50_1(&a10);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_57_2();
  v152();
  v214[1] = v57;
  OUTLINED_FUNCTION_40_3(&v196);
  OUTLINED_FUNCTION_190_0();
  OUTLINED_FUNCTION_159_0();
  v153();
  v215 = v122 + 16;
  OUTLINED_FUNCTION_170_0();
  OUTLINED_FUNCTION_195_0();
  OUTLINED_FUNCTION_262();
  OUTLINED_FUNCTION_186_0();
  v154();
  v216[0] = v58;
  OUTLINED_FUNCTION_44_3(&v203);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_224_0();
  v155();
  v216[1] = v57;
  OUTLINED_FUNCTION_228_0();
  OUTLINED_FUNCTION_113_0(v156);
  OUTLINED_FUNCTION_185_0();
  OUTLINED_FUNCTION_150_0(v157);
  OUTLINED_FUNCTION_100(v202[0]);
  OUTLINED_FUNCTION_116_0(v179);
  OUTLINED_FUNCTION_62_1(&v192);
  OUTLINED_FUNCTION_205_0(&v194);
  OUTLINED_FUNCTION_202_0(&v195);
  OUTLINED_FUNCTION_203_0(v202);
  OUTLINED_FUNCTION_82_0(v204);
  v206[6] = v159;
  v206[7] = v158;
  sub_23B462F30(v193, &v207, v191, 13, v204, v192);
  (*(v61 + 8))(v57, v116 + 16);
  v160 = OUTLINED_FUNCTION_283();
  v161(v160, v128 + 16);
  v162 = *(v40 + 8);
  v163 = OUTLINED_FUNCTION_243_0();
  v164(v163);
  OUTLINED_FUNCTION_56_1(&a10);
  v165 = OUTLINED_FUNCTION_55_2();
  v166(v165);
  OUTLINED_FUNCTION_56_1(&v217);
  OUTLINED_FUNCTION_276();
  v167();
  OUTLINED_FUNCTION_56_1(&v215);
  OUTLINED_FUNCTION_267();
  v168();
  OUTLINED_FUNCTION_56_1(&v213);
  v169 = OUTLINED_FUNCTION_127_0();
  v170(v169);
  OUTLINED_FUNCTION_56_1(&v211);
  v171 = OUTLINED_FUNCTION_213_0();
  v172(v171);
  OUTLINED_FUNCTION_56_1(&v209);
  OUTLINED_FUNCTION_146_0();
  v173();
  OUTLINED_FUNCTION_56_1(v185);
  v174(v59);
  OUTLINED_FUNCTION_56_1(&v187);
  v175(v58);
  OUTLINED_FUNCTION_56_1(&v189);
  v176(v40);
  OUTLINED_FUNCTION_56_1(&v191);
  v177 = OUTLINED_FUNCTION_286();
  v178(v177);
  OUTLINED_FUNCTION_20();
}

void WeatherService.addCacheObserver(configuration:observer:)()
{
  OUTLINED_FUNCTION_25();
  v28 = v1;
  v29 = v2;
  v4 = v3;
  v31 = sub_23B50CA64();
  v5 = OUTLINED_FUNCTION_5(v31);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_27();
  v12 = v11 - v10;
  v30 = sub_23B50C8A4();
  v13 = OUTLINED_FUNCTION_5(v30);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_27();
  v20 = v19 - v18;
  v21 = *v4;
  v22 = v4[1];
  v23 = v4[2];
  v24 = *(v4 + 24);
  v25 = *(v4 + 25);
  v27 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_23B468E24(v12);
  v26 = swift_allocObject();
  *(v26 + 16) = v28;
  *(v26 + 24) = v29;

  sub_23B50B6D4();

  (*(v7 + 8))(v12, v31);
  sub_23B50C884();
  (*(v15 + 8))(v20, v30);
  OUTLINED_FUNCTION_26_3();
}

uint64_t sub_23B468E24@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23B50BA54();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v57 - v9;
  v11 = sub_23B50CAA4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v79 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v76 = (&v57 - v17);
  v20 = MEMORY[0x28223BE20](v18);
  v78 = &v57 - v21;
  v22 = *v1;
  v23 = v1[1];
  v24 = v1[2];
  v25 = *(v1 + 24);
  v77 = *(v1 + 25);
  v26 = *(v24 + 16);
  v27 = MEMORY[0x277D84F90];
  if (v25)
  {
    if (v26)
    {
      v58 = v19;
      v73 = v12;
      v74 = v11;
      v75 = a1;
      v82 = MEMORY[0x277D84F90];
      sub_23B41B438(0, v26, 0);
      v27 = v82;
      v28 = (v24 + 32);
      LODWORD(v76) = *MEMORY[0x277D7AD48];
      v80 = *(v4 + 104);
      v29 = *MEMORY[0x277D7AD68];
      v71 = *MEMORY[0x277D7AD50];
      v72 = v29;
      v30 = *MEMORY[0x277D7AD08];
      v69 = *MEMORY[0x277D7AD40];
      v70 = v30;
      v31 = *MEMORY[0x277D7AD28];
      v67 = *MEMORY[0x277D7AD20];
      v68 = v31;
      v32 = *MEMORY[0x277D7AD70];
      v65 = *MEMORY[0x277D7AD38];
      v66 = v32;
      v33 = *MEMORY[0x277D7AD10];
      v63 = *MEMORY[0x277D7AD60];
      v64 = v33;
      v34 = *MEMORY[0x277D7AD58];
      v61 = *MEMORY[0x277D7AD30];
      v62 = v34;
      v35 = *MEMORY[0x277D7AD18];
      v59 = *MEMORY[0x277D7ACF8];
      v60 = v35;
      v81 = v4 + 104;
      v36 = *MEMORY[0x277D7AD00];
      do
      {
        v37 = *v28++;
        v38 = v36;
        switch(v37)
        {
          case 1:
            v38 = v59;
            break;
          case 2:
            v38 = v60;
            break;
          case 3:
            v38 = v61;
            break;
          case 4:
            v38 = v62;
            break;
          case 5:
            v38 = v63;
            break;
          case 6:
            v38 = v64;
            break;
          case 7:
            v38 = v65;
            break;
          case 8:
            v38 = v66;
            break;
          case 9:
            v38 = v67;
            break;
          case 10:
            v38 = v68;
            break;
          case 11:
            v38 = v69;
            break;
          case 12:
            v38 = v70;
            break;
          case 13:
            v38 = v71;
            break;
          case 14:
            v38 = v72;
            break;
          case 15:
            v38 = v76;
            break;
          default:
            break;
        }

        v80(v7, v38, v3);
        v82 = v27;
        v40 = *(v27 + 16);
        v39 = *(v27 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_23B41B438(v39 > 1, v40 + 1, 1);
          v27 = v82;
        }

        *(v27 + 16) = v40 + 1;
        (*(v4 + 32))(v27 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v40, v7, v3);
        --v26;
      }

      while (v26);
      v11 = v74;
      v12 = v73;
      v19 = v58;
    }

    *v19 = v27;
    v53 = MEMORY[0x277D7B0D8];
    v54 = v19;
  }

  else
  {
    if (v26)
    {
      v73 = v12;
      v74 = v11;
      v75 = a1;
      v82 = MEMORY[0x277D84F90];
      sub_23B41B438(0, v26, 0);
      v27 = v82;
      v41 = (v24 + 32);
      v72 = *MEMORY[0x277D7AD48];
      v80 = *(v4 + 104);
      v42 = *MEMORY[0x277D7AD68];
      v70 = *MEMORY[0x277D7AD50];
      v71 = v42;
      v43 = *MEMORY[0x277D7AD08];
      v68 = *MEMORY[0x277D7AD40];
      v69 = v43;
      v44 = *MEMORY[0x277D7AD28];
      v66 = *MEMORY[0x277D7AD20];
      v67 = v44;
      v45 = *MEMORY[0x277D7AD70];
      v64 = *MEMORY[0x277D7AD38];
      v65 = v45;
      v46 = *MEMORY[0x277D7AD10];
      v62 = *MEMORY[0x277D7AD60];
      v63 = v46;
      v47 = *MEMORY[0x277D7AD58];
      v60 = *MEMORY[0x277D7AD30];
      v61 = v47;
      v59 = *MEMORY[0x277D7AD18];
      LODWORD(v58) = *MEMORY[0x277D7ACF8];
      v81 = v4 + 104;
      v48 = *MEMORY[0x277D7AD00];
      do
      {
        v49 = *v41++;
        v50 = v48;
        switch(v49)
        {
          case 1:
            v50 = v58;
            break;
          case 2:
            v50 = v59;
            break;
          case 3:
            v50 = v60;
            break;
          case 4:
            v50 = v61;
            break;
          case 5:
            v50 = v62;
            break;
          case 6:
            v50 = v63;
            break;
          case 7:
            v50 = v64;
            break;
          case 8:
            v50 = v65;
            break;
          case 9:
            v50 = v66;
            break;
          case 10:
            v50 = v67;
            break;
          case 11:
            v50 = v68;
            break;
          case 12:
            v50 = v69;
            break;
          case 13:
            v50 = v70;
            break;
          case 14:
            v50 = v71;
            break;
          case 15:
            v50 = v72;
            break;
          default:
            break;
        }

        v80(v10, v50, v3);
        v82 = v27;
        v52 = *(v27 + 16);
        v51 = *(v27 + 24);
        if (v52 >= v51 >> 1)
        {
          sub_23B41B438(v51 > 1, v52 + 1, 1);
          v27 = v82;
        }

        *(v27 + 16) = v52 + 1;
        (*(v4 + 32))(v27 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v52, v10, v3);
        --v26;
      }

      while (v26);
      v11 = v74;
      v12 = v73;
    }

    v54 = v76;
    *v76 = v27;
    v53 = MEMORY[0x277D7B0D0];
  }

  (*(v12 + 104))(v54, *v53, v11, v20);
  v55 = v78;
  (*(v12 + 32))(v78, v54, v11);
  (*(v12 + 16))(v79, v55, v11);
  sub_23B50CA54();
  return (*(v12 + 8))(v55, v11);
}

uint64_t sub_23B46957C(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v5 = sub_23B50BA54();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v62 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  sub_23B50C624();
  v13 = v12;
  v15 = v14;
  v16 = sub_23B50C634();
  v17 = *(v16 + 16);
  if (!v17)
  {

    v18 = MEMORY[0x277D84F90];
    goto LABEL_41;
  }

  v52 = a3;
  v53 = a2;
  v63[0] = MEMORY[0x277D84F90];
  sub_23B41B490(0, v17, 0);
  v18 = v63[0];
  v20 = *(v6 + 16);
  v19 = v6 + 16;
  v21 = (*(v19 + 64) + 32) & ~*(v19 + 64);
  v51 = v16;
  v22 = v16 + v21;
  v59 = *(v19 + 56);
  v60 = v20;
  v23 = (v19 + 16);
  v24 = (v19 + 72);
  v58 = *MEMORY[0x277D7AD00];
  v25 = *MEMORY[0x277D7ACF8];
  v56 = *MEMORY[0x277D7AD18];
  v57 = v25;
  v26 = *MEMORY[0x277D7AD30];
  v54 = *MEMORY[0x277D7AD58];
  v55 = v26;
  v27 = *MEMORY[0x277D7AD60];
  v49 = *MEMORY[0x277D7AD10];
  v50 = v27;
  v28 = *MEMORY[0x277D7AD38];
  v47 = *MEMORY[0x277D7AD70];
  v48 = v28;
  v29 = *MEMORY[0x277D7AD20];
  v45 = *MEMORY[0x277D7AD28];
  v46 = v29;
  v30 = *MEMORY[0x277D7AD40];
  v43 = *MEMORY[0x277D7AD08];
  v44 = v30;
  v31 = *MEMORY[0x277D7AD50];
  v41 = *MEMORY[0x277D7AD68];
  v42 = v31;
  v39 = (v19 - 8);
  v40 = *MEMORY[0x277D7AD48];
  v61 = v19;
  do
  {
    v60(v11, v22, v5);
    v32 = v62;
    (*v23)(v62, v11, v5);
    v33 = (*v24)(v32, v5);
    if (v33 == v58)
    {
      v34 = 0;
      goto LABEL_35;
    }

    if (v33 == v57)
    {
      goto LABEL_6;
    }

    if (v33 == v56)
    {
      v34 = 2;
    }

    else if (v33 == v55)
    {
      v34 = 3;
    }

    else if (v33 == v54)
    {
      v34 = 4;
    }

    else if (v33 == v50)
    {
      v34 = 5;
    }

    else if (v33 == v49)
    {
      v34 = 6;
    }

    else if (v33 == v48)
    {
      v34 = 7;
    }

    else if (v33 == v47)
    {
      v34 = 8;
    }

    else if (v33 == v46)
    {
      v34 = 9;
    }

    else if (v33 == v45)
    {
      v34 = 10;
    }

    else if (v33 == v44)
    {
      v34 = 11;
    }

    else if (v33 == v43)
    {
      v34 = 12;
    }

    else if (v33 == v42)
    {
      v34 = 13;
    }

    else if (v33 == v41)
    {
      v34 = 14;
    }

    else
    {
      if (v33 != v40)
      {
        (*v39)(v62, v5);
LABEL_6:
        v34 = 1;
        goto LABEL_35;
      }

      v34 = 15;
    }

LABEL_35:
    v63[0] = v18;
    v36 = *(v18 + 16);
    v35 = *(v18 + 24);
    if (v36 >= v35 >> 1)
    {
      sub_23B41B490(v35 > 1, v36 + 1, 1);
      v18 = v63[0];
    }

    *(v18 + 16) = v36 + 1;
    *(v18 + v36 + 32) = v34;
    v22 += v59;
    --v17;
  }

  while (v17);

  a2 = v53;
LABEL_41:
  v63[0] = v13;
  v63[1] = v15;
  v63[2] = v18;
  a2(v63);
}

void WeatherService.removeCacheObserver(token:)()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v4 = sub_23B50AD64();
  v5 = OUTLINED_FUNCTION_5(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_27_3();
  v10 = sub_23B50C8A4();
  v11 = OUTLINED_FUNCTION_5(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_27();
  v16 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  (*(v7 + 16))(v1, v3, v4);
  sub_23B50C894();
  OUTLINED_FUNCTION_195();
  sub_23B50B6F4();
  v17 = *(v13 + 8);
  v18 = OUTLINED_FUNCTION_243_0();
  v19(v18);
  OUTLINED_FUNCTION_20();
}

void WeatherService.removeCacheObservers(with:)()
{
  OUTLINED_FUNCTION_25();
  v3 = v2;
  v4 = sub_23B50CA64();
  v5 = OUTLINED_FUNCTION_5(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_27_3();
  v10 = *v3;
  v11 = v3[1];
  v12 = v3[2];
  v13 = *(v3 + 24);
  v14 = *(v3 + 25);
  v15 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_23B468E24(v1);
  sub_23B50B714();
  (*(v7 + 8))(v1, v4);
  OUTLINED_FUNCTION_26_3();
}

uint64_t sub_23B469C7C(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v49 = a6;
  v50 = a7;
  v40 = a5;
  v48 = a4;
  v44 = a3;
  v43 = a2;
  v42 = a1;
  v51 = *v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E132C40, &qword_23B514C28);
  v47 = *(v10 - 8);
  v46 = *(v47 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v45 = &v40 - v11;
  v12 = sub_23B50C964();
  v52 = *(v12 - 8);
  v53 = v12;
  v13 = *(v52 + 64);
  MEMORY[0x28223BE20](v12);
  v41 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B50C954();
  v64 = MEMORY[0x277D84F90];
  v15 = type metadata accessor for DayPrecipitationStatistics();
  v16 = sub_23B4778AC(&qword_280B42180, type metadata accessor for DayPrecipitationStatistics);
  v17 = sub_23B4778AC(qword_280B42190, type metadata accessor for DayPrecipitationStatistics);
  v18 = sub_23B4778AC(&qword_280B42188, type metadata accessor for DayPrecipitationStatistics);
  v19 = *a5;
  v60 = v15;
  v61 = v16;
  v62 = v17;
  v63 = v18;
  v20 = type metadata accessor for DailyWeatherStatisticsQuery();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v40 - v24;
  (*(v21 + 16))(&v40 - v24, v19, v20, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133890, &unk_23B5192C8);
  sub_23B46A690();
  sub_23B41F398();
  (*(v21 + 8))(v25, v20);
  v54 = v8;
  v55 = &v64;
  v26 = v42;
  v56 = v42;
  v57 = v43;
  v27 = v41;
  v58 = v44;
  v59 = v41;
  sub_23B50B184();
  sub_23B50B0C4();
  v28 = *v40;
  v60 = v15;
  v61 = v16;
  v62 = v17;
  v63 = v18;
  v29 = type metadata accessor for DailyWeatherStatisticsQuery();
  (*(*(v29 - 8) + 16))(v45, v28, v29);
  v30 = ((*(v47 + 80) + 16) & ~*(v47 + 80)) + v46;
  v31 = swift_allocObject();
  sub_23B3AF918();
  *(v31 + v30) = v48;
  v32 = v31 + (v30 & 0xFFFFFFFFFFFFFFF8);
  v34 = v49;
  v33 = v50;
  *(v32 + 8) = v49;
  *(v32 + 16) = v33;

  v35 = sub_23B50B034();
  sub_23B50B074();

  v36 = swift_allocObject();
  v36[2] = v26;
  v36[3] = v34;
  v36[4] = v33;

  v37 = v26;
  v38 = sub_23B50B034();
  sub_23B50B084();

  return (*(v52 + 8))(v27, v53);
}

void WeatherService.fetchDailyStatistics<each A>(for:start:end:shouldFilterOutLeapDay:including:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_21();
  a19 = v32;
  a20 = v34;
  v36 = v35;
  v111 = v37;
  v113 = v25;
  v114 = v33;
  v106 = *v25;
  v107 = a23;
  v108 = v38;
  v109 = v39;
  v115 = a22;
  v116 = a24;
  v117 = a21;
  v105 = v40;
  v119 = a23 & 0xFFFFFFFFFFFFFFFELL;
  v104[2] = v41;
  v104[0] = v42;
  if (v35 == 1)
  {
    OUTLINED_FUNCTION_32_5();
    v44 = *v43;
    OUTLINED_FUNCTION_176_0();
    OUTLINED_FUNCTION_7_32(v45);
    TupleTypeMetadata = type metadata accessor for DailyWeatherStatisticsQuery();
  }

  else
  {
    v25 = v104;
    MEMORY[0x28223BE20](v33);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_174();
    OUTLINED_FUNCTION_295();
    while (v36 != v26)
    {
      OUTLINED_FUNCTION_294();
      v47 = *(v119 + 8 * v26);
      v48 = v29[v26];
      OUTLINED_FUNCTION_13_15(v49);
      v50 = type metadata accessor for DailyWeatherStatisticsQuery();
      OUTLINED_FUNCTION_293(v50);
    }

    OUTLINED_FUNCTION_58_1();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v110 = TupleTypeMetadata;
  v51 = OUTLINED_FUNCTION_5(TupleTypeMetadata);
  v104[3] = v52;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_28_6();
  v118 = v55;
  OUTLINED_FUNCTION_24_0();
  sub_23B50C964();
  OUTLINED_FUNCTION_73_1(v104);
  v57 = OUTLINED_FUNCTION_2_0(v56, &a16);
  v104[4] = v58;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_6_0();
  v62 = OUTLINED_FUNCTION_182_0(v61);
  v120 = MEMORY[0x277D84F90];
  v112 = v36;
  if (v36)
  {
    OUTLINED_FUNCTION_163_0();
    do
    {
      v64 = *v29++;
      v63 = v64;
      v65 = *v24++;
      v66 = *v27++;
      v67 = *v30++;
      v68 = *v26++;
      OUTLINED_FUNCTION_7_32(v63);
      v36 = type metadata accessor for DailyWeatherStatisticsQuery();
      OUTLINED_FUNCTION_289(v36, v69, v70, v71, v72, v73, v74, v75, v104[0]);
      OUTLINED_FUNCTION_5(v76);
      v78 = v77;
      v80 = *(v79 + 64);
      OUTLINED_FUNCTION_2_1();
      MEMORY[0x28223BE20](v81);
      OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_86_0();
      OUTLINED_FUNCTION_200_0();
      v82();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133890, &unk_23B5192C8);
      sub_23B46A690();
      OUTLINED_FUNCTION_281();
      sub_23B41F398();
      v83 = *(v78 + 8);
      v31 = (v78 + 8);
      v83(v25, v36);
      OUTLINED_FUNCTION_212();
    }

    while (!v84);
  }

  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_46_2();
  OUTLINED_FUNCTION_221_0(v85);
  OUTLINED_FUNCTION_140_0(v86);
  sub_23B50B184();
  v87 = OUTLINED_FUNCTION_302();
  OUTLINED_FUNCTION_218_0(v87);
  if (v36)
  {
    OUTLINED_FUNCTION_122_0();
    v88 = v36;
    do
    {
      if (v36 == 1)
      {
        v89 = 0;
      }

      else
      {
        v89 = *v28;
      }

      OUTLINED_FUNCTION_83_1();
      v90 = *v31++;
      OUTLINED_FUNCTION_7_32(v91);
      v92 = type metadata accessor for DailyWeatherStatisticsQuery();
      OUTLINED_FUNCTION_2(v92);
      (*(v93 + 16))(v118 + v89, v90);
      v28 += 4;
      v119 = v25;
      --v88;
    }

    while (v88);
  }

  OUTLINED_FUNCTION_124_0();
  v94 = swift_allocObject();
  v26[3] = OUTLINED_FUNCTION_110_0(v94);
  OUTLINED_FUNCTION_171_0();
  v26[4] = swift_allocateWitnessTablePack();
  OUTLINED_FUNCTION_243();
  v26[5] = swift_allocateWitnessTablePack();
  OUTLINED_FUNCTION_99_0();
  WitnessTablePack = swift_allocateWitnessTablePack();
  v96 = OUTLINED_FUNCTION_81_1(WitnessTablePack);
  v97(v96);
  OUTLINED_FUNCTION_178_0();
  v98 = sub_23B50B034();
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_305();

  OUTLINED_FUNCTION_242_0();
  v99 = swift_allocObject();
  v26[3] = OUTLINED_FUNCTION_110_0(v99);
  OUTLINED_FUNCTION_171_0();
  v26[4] = swift_allocateWitnessTablePack();
  OUTLINED_FUNCTION_243();
  v26[5] = swift_allocateWitnessTablePack();
  OUTLINED_FUNCTION_99_0();
  v100 = swift_allocateWitnessTablePack();
  OUTLINED_FUNCTION_181_0(v100);
  v101 = v25;
  v102 = sub_23B50B034();
  OUTLINED_FUNCTION_198_0();

  OUTLINED_FUNCTION_56_1(&a15);
  OUTLINED_FUNCTION_194_0();
  v103();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_20();
}

unint64_t sub_23B46A690()
{
  result = qword_27E133898;
  if (!qword_27E133898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133890, &unk_23B5192C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133898);
  }

  return result;
}

uint64_t sub_23B46A720(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void (*a5)(uint64_t), uint64_t a6)
{
  v38 = a2;
  v32 = a6;
  v33 = a5;
  v37 = a4;
  v35 = a3;
  v36 = a1;
  v44 = sub_23B50B184();
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v44);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133920, &qword_23B5194B8);
  v10 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v31 = &v30 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132280, &qword_23B510278);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v30 - v14;
  v16 = type metadata accessor for DayPrecipitationStatistics();
  v17 = sub_23B4778AC(&qword_280B42180, type metadata accessor for DayPrecipitationStatistics);
  v18 = sub_23B4778AC(qword_280B42190, type metadata accessor for DayPrecipitationStatistics);
  v19 = sub_23B4778AC(&qword_280B42188, type metadata accessor for DayPrecipitationStatistics);
  v20 = OBJC_IVAR____TtC10WeatherKit14WeatherService_modelFactory;
  v40 = v16;
  v41 = v17;
  v42 = v18;
  v43 = v19;
  v21 = type metadata accessor for DailyWeatherStatisticsQuery();
  v34 = &v30;
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v30 - v25;
  (*(v22 + 16))(&v30 - v25, v35, v21, v24);
  sub_23B50B154();
  v27 = v39;
  sub_23B41F478(v9, *(v38 + v20), v21);
  (*(v6 + 8))(v9, v44);
  if (v27)
  {
    return (*(v22 + 8))(v26, v21);
  }

  (*(v22 + 8))(v26, v21);
  v29 = v31;
  sub_23B3A23E0();
  swift_storeEnumTagMultiPayload();
  v33(v29);
  sub_23B398890(v29, &qword_27E133920, &qword_23B5194B8);
  return sub_23B398890(v15, &qword_27E132280, &qword_23B510278);
}

uint64_t sub_23B46AAF4(uint64_t a1, uint64_t a2, int *a3, int a4, void (*a5)(char *), uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a8;
  v106 = a4;
  v104 = a1;
  v105 = a2;
  v12 = a11;
  v13 = (a10 & 0xFFFFFFFFFFFFFFFELL);
  v14 = 8 * a7;
  v118 = a7;
  v110 = a3;
  v94 = a5;
  v93 = a6;
  if (a7 == 1)
  {
    v15 = a3;
    v16 = *(a9 & 0xFFFFFFFFFFFFFFFELL);
    v17 = *v13;
    v18 = *(a11 & 0xFFFFFFFFFFFFFFFELL);
    v114 = *(a8 & 0xFFFFFFFFFFFFFFFELL);
    v115 = v16;
    v116 = v17;
    v117 = v18;
    v19 = 1;
    type metadata accessor for DailyWeatherStatistics();
    TupleTypeMetadata = swift_checkMetadataState();
  }

  else
  {
    v111 = &v89;
    MEMORY[0x28223BE20](a1);
    v22 = 0;
    v113 = v11;
    while (v21 != v22)
    {
      v23 = *((a9 & 0xFFFFFFFFFFFFFFFELL) + 8 * v22);
      v24 = v13[v22];
      v25 = *((a11 & 0xFFFFFFFFFFFFFFFELL) + 8 * v22);
      v114 = *((v11 & 0xFFFFFFFFFFFFFFFELL) + 8 * v22);
      v115 = v23;
      v116 = v24;
      v117 = v25;
      v26 = type metadata accessor for DailyWeatherStatistics();
      v21 = v118;
      *(&v89 + 8 * v22++ - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0)) = v26;
    }

    v19 = v21;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v15 = v110;
    v12 = a11;
    v11 = v113;
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v27 = sub_23B50D954();
  v98 = &v89;
  v92 = v27;
  v91 = *(v27 - 8);
  v28 = (*(v91 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v27);
  v90 = &v89 - v29;
  v30 = sub_23B50B184();
  v97 = &v89;
  v101 = v30;
  v109 = *(v30 - 8);
  v31 = *(v109 + 64);
  MEMORY[0x28223BE20](v30);
  v103 = &v89 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = &v89;
  v99 = TupleTypeMetadata;
  v89 = *(TupleTypeMetadata - 8);
  v33 = *(v89 + 64);
  MEMORY[0x28223BE20](v34);
  v111 = &v89 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = &v89;
  v38 = MEMORY[0x28223BE20](v36);
  v113 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = (v11 & 0xFFFFFFFFFFFFFFFELL);
  v40 = (a9 & 0xFFFFFFFFFFFFFFFELL);
  v41 = (v12 & 0xFFFFFFFFFFFFFFFELL);
  v42 = a10 & 0xFFFFFFFFFFFFFFFELL;
  v43 = v19;
  if (v19)
  {
    v44 = 0;
    do
    {
      if (v43 == 1)
      {
        v45 = *v40;
        v46 = *v13;
        v47 = *v41;
        v114 = *v39;
        v115 = v45;
        v116 = v46;
        v117 = v47;
        v48 = 1;
        v37 = type metadata accessor for DailyWeatherStatisticsQuery();
        v49 = 0;
      }

      else
      {
        MEMORY[0x28223BE20](v37);
        for (i = 0; v50 != i; ++i)
        {
          v52 = v40[i];
          v53 = *(v42 + 8 * i);
          v54 = v41[i];
          v114 = v39[i];
          v115 = v52;
          v116 = v53;
          v117 = v54;
          v55 = type metadata accessor for DailyWeatherStatisticsQuery();
          v50 = v118;
          *(&v89 + 8 * i - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0)) = v55;
        }

        v48 = v50;
        v37 = swift_getTupleTypeMetadata();
        v49 = *(v37 + 16 * v44 + 32);
        v13 = (a10 & 0xFFFFFFFFFFFFFFFELL);
        v15 = v110;
      }

      *&v113[8 * v44++] = v15 + v49;
      v43 = v48;
    }

    while (v44 != v48);
  }

  v56 = 0;
  v102 = OBJC_IVAR____TtC10WeatherKit14WeatherService_modelFactory;
  v100 = (v109 + 8);
  v57 = (v99 + 16);
  while (1)
  {
    v58 = v111;
    if (v43 == v56)
    {
      v71 = v89;
      v72 = v90;
      v73 = v99;
      (*(v89 + 16))(v90, v111, v99, v38);
      v74 = v92;
      swift_storeEnumTagMultiPayload();
      v94(v72);
      (*(v91 + 8))(v72, v74);
      return (*(v71 + 8))(v58, v73);
    }

    v110 = v57;
    v107 = v43 == 1 ? 0 : v57[4];
    v59 = v40[v56];
    v60 = v13[v56];
    v61 = v41[v56];
    v62 = *&v113[8 * v56];
    v114 = v39[v56];
    v115 = v59;
    v116 = v60;
    v117 = v61;
    v109 = v56;
    v63 = type metadata accessor for DailyWeatherStatisticsQuery();
    v108 = &v89;
    v64 = *(v63 - 8);
    v65 = *(v64 + 64);
    v66 = MEMORY[0x28223BE20](v63);
    v68 = &v89 - v67;
    (*(v64 + 16))(&v89 - v67, v62, v63, v66);
    v69 = v103;
    sub_23B50B154();
    v70 = v112;
    sub_23B41F478(v69, *(v105 + v102), v63);
    v112 = v70;
    if (v70)
    {
      break;
    }

    (*v100)(v69, v101);
    (*(v64 + 8))(v68, v63);
    v56 = v109 + 1;
    v57 = v110 + 4;
    v13 = (a10 & 0xFFFFFFFFFFFFFFFELL);
    v43 = v118;
  }

  (*v100)(v69, v101);
  result = (*(v64 + 8))(v68, v63);
  v76 = v109;
  v78 = v110;
  v77 = v111;
  if (v109)
  {
    v79 = v39 - 1;
    v80 = v40 - 1;
    v81 = v42 - 8;
    do
    {
      v82 = v76 - 1;
      v83 = v79[v76];
      v84 = v80[v76];
      v85 = *(v81 + 8 * v76);
      v86 = v41[v76 - 1];
      v87 = *v78;
      v78 -= 4;
      v114 = v83;
      v115 = v84;
      v116 = v85;
      v117 = v86;
      v88 = type metadata accessor for DailyWeatherStatistics();
      result = (*(*(v88 - 8) + 8))(&v77[v87], v88);
      v76 = v82;
    }

    while (v82);
  }

  return result;
}

uint64_t sub_23B46B2FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  v51 = a8;
  v67 = a7;
  v66 = a6;
  v60 = a5;
  v59 = a4;
  v58 = a3;
  v57 = a2;
  v75 = a1;
  v69 = a10;
  v68 = a9;
  v72 = *v10;
  v64 = sub_23B50AEF4();
  v74 = *(v64 - 8);
  v65 = *(v74 + 64);
  MEMORY[0x28223BE20](v64);
  v63 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_23B50AD24();
  v73 = *(v61 - 8);
  v62 = *(v73 + 64);
  MEMORY[0x28223BE20](v61);
  v56 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1331D0, &qword_23B5168C8);
  v55 = *(v14 - 8);
  v54 = *(v55 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v52 = &v51 - v15;
  v71 = sub_23B50C964();
  v70 = *(v71 - 8);
  v16 = *(v70 + 64);
  MEMORY[0x28223BE20](v71);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v18;
  sub_23B50C954();
  v89 = MEMORY[0x277D84F90];
  v19 = type metadata accessor for DayPrecipitationSummary();
  v20 = sub_23B4778AC(&qword_280B422D8, type metadata accessor for DayPrecipitationSummary);
  v21 = sub_23B4778AC(&qword_280B422E8, type metadata accessor for DayPrecipitationSummary);
  v22 = sub_23B4778AC(&qword_280B422E0, type metadata accessor for DayPrecipitationSummary);
  v23 = *a8;
  v85 = v19;
  v86 = v20;
  v87 = v21;
  v88 = v22;
  v24 = type metadata accessor for DailyWeatherSummaryQuery();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v51 - v28;
  (*(v25 + 16))(&v51 - v28, v23, v24, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133890, &unk_23B5192C8);
  sub_23B46A690();
  sub_23B4430B0();
  (*(v25 + 8))(v29, v24);
  v77 = v76;
  v78 = &v89;
  v79 = v75;
  v80 = v57;
  v81 = v58;
  v82 = v59;
  v83 = v60;
  v84 = v18;
  sub_23B50BE64();
  v60 = sub_23B50B0C4();
  v30 = *v51;
  v85 = v19;
  v86 = v20;
  v87 = v21;
  v88 = v22;
  v31 = type metadata accessor for DailyWeatherSummaryQuery();
  (*(*(v31 - 8) + 16))(v52, v30, v31);
  v32 = v73;
  v33 = v56;
  v34 = v61;
  (*(v73 + 16))(v56, v66, v61);
  v35 = v74;
  v36 = v63;
  v37 = v64;
  (*(v74 + 16))(v63, v67, v64);
  v38 = (v54 + *(v32 + 80) + ((*(v55 + 80) + 16) & ~*(v55 + 80))) & ~*(v32 + 80);
  v39 = (v62 + *(v35 + 80) + v38) & ~*(v35 + 80);
  v40 = (v65 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  sub_23B3AF918();
  (*(v73 + 32))(v41 + v38, v33, v34);
  (*(v74 + 32))(v41 + v39, v36, v37);
  v42 = (v41 + v40);
  v43 = v68;
  v44 = v69;
  *v42 = v68;
  v42[1] = v44;

  v45 = sub_23B50B034();
  sub_23B50B074();

  v46 = swift_allocObject();
  v47 = v75;
  v46[2] = v75;
  v46[3] = v43;
  v46[4] = v44;

  v48 = v47;
  v49 = sub_23B50B034();
  sub_23B50B084();

  return (*(v70 + 8))(v53, v71);
}

void WeatherService.fetchDailySummary<each A>(for:start:end:startDate:timeZone:including:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_21();
  a19 = v28;
  a20 = v29;
  v30 = v27;
  v160 = v31;
  v33 = v32;
  v35 = v34;
  v147 = v36;
  v146 = v37;
  v145 = v38;
  v144 = v39;
  v169 = v40;
  v42 = a26;
  v41 = a27;
  v43 = a24;
  v44 = a25;
  v45 = a23;
  v167 = v30;
  v46 = *v30;
  v166 = sub_23B50AEF4();
  v47 = OUTLINED_FUNCTION_5(v166);
  v156 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  v165 = &v141 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_24_0();
  v164 = sub_23B50AD24();
  v51 = OUTLINED_FUNCTION_5(v164);
  v153 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_28_6();
  v163 = v56;
  v170 = v41;
  v171 = v43;
  v168 = v42;
  v172 = v44;
  v157 = v46;
  v152 = v33;
  v151 = v35;
  v150 = v50;
  v159 = v42 & 0xFFFFFFFFFFFFFFFELL;
  if (v45 == 1)
  {
    v57 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
    v58 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
    v59 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
    OUTLINED_FUNCTION_7_32(*(v43 & 0xFFFFFFFFFFFFFFFELL));
    type metadata accessor for DailyWeatherSummaryQuery();
    v60 = 1;
  }

  else
  {
    v35 = &v141;
    MEMORY[0x28223BE20](v55);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_174();
    v61 = (v41 & 0xFFFFFFFFFFFFFFFELL);
    v60 = v45;
    v63 = v62;
    while (v60)
    {
      OUTLINED_FUNCTION_294();
      v64 = *v63;
      v65 = *v61;
      OUTLINED_FUNCTION_13_15(v66);
      v67 = type metadata accessor for DailyWeatherSummaryQuery();
      OUTLINED_FUNCTION_293(v67);
    }

    OUTLINED_FUNCTION_84_0();
    OUTLINED_FUNCTION_58_1();
    swift_getTupleTypeMetadata();
  }

  OUTLINED_FUNCTION_100(&v141);
  v69 = OUTLINED_FUNCTION_2_0(v68, &a18);
  v148 = v70;
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_28_6();
  v173 = v73;
  OUTLINED_FUNCTION_24_0();
  sub_23B50C964();
  OUTLINED_FUNCTION_113_0(&v141);
  v75 = OUTLINED_FUNCTION_2_0(v74, &a13);
  v154 = v76;
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_6_0();
  v162 = v79;
  v80 = sub_23B50C954();
  v175 = MEMORY[0x277D84F90];
  v161 = v60;
  if (v60)
  {
    v81 = (v171 & 0xFFFFFFFFFFFFFFFELL);
    v82 = (v172 & 0xFFFFFFFFFFFFFFFELL);
    v83 = (v170 & 0xFFFFFFFFFFFFFFFELL);
    v84 = v159;
    v85 = v160;
    v86 = v161;
    do
    {
      v88 = *v81++;
      v87 = v88;
      v89 = *v82++;
      v90 = *v84++;
      v91 = *v83++;
      v92 = *v85++;
      OUTLINED_FUNCTION_7_32(v87);
      v93 = type metadata accessor for DailyWeatherSummaryQuery();
      v174 = &v141;
      OUTLINED_FUNCTION_5(v93);
      v95 = v94;
      v97 = *(v96 + 64);
      OUTLINED_FUNCTION_2_1();
      MEMORY[0x28223BE20](v98);
      OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_153_0();
      v99 = OUTLINED_FUNCTION_25_4();
      v100(v99);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133890, &unk_23B5192C8);
      sub_23B46A690();
      OUTLINED_FUNCTION_281();
      sub_23B4430B0();
      v80 = (*(v95 + 8))(v35, v93);
      --v86;
    }

    while (v86);
  }

  v174 = a22;
  v142 = a21;
  MEMORY[0x28223BE20](v80);
  *(&v141 - 8) = v167;
  *(&v141 - 7) = &v175;
  v101 = v144;
  *(&v141 - 6) = v169;
  *(&v141 - 5) = v101;
  OUTLINED_FUNCTION_221_0(&v141);
  v102 = v162;
  *(v103 - 16) = v147;
  *(v103 - 8) = v102;
  sub_23B50BE64();
  v147 = OUTLINED_FUNCTION_302();
  v104 = v160;
  v105 = v161;
  v106 = v159;
  if (v161)
  {
    v107 = (v171 & 0xFFFFFFFFFFFFFFFELL);
    v108 = (v172 & 0xFFFFFFFFFFFFFFFELL);
    v109 = (v170 & 0xFFFFFFFFFFFFFFFELL);
    v110 = (v158 + 32);
    v111 = v161;
    do
    {
      if (v105 == 1)
      {
        v112 = 0;
      }

      else
      {
        v112 = *v110;
      }

      v114 = *v107++;
      v113 = v114;
      v115 = *v108++;
      v116 = *v106;
      v106 += 8;
      v117 = *v109++;
      v118 = *v104++;
      OUTLINED_FUNCTION_7_32(v113);
      v119 = type metadata accessor for DailyWeatherSummaryQuery();
      OUTLINED_FUNCTION_2(v119);
      (*(v120 + 16))(v173 + v112, v118);
      v110 += 4;
      --v111;
    }

    while (v111);
  }

  OUTLINED_FUNCTION_39_6(&a11);
  OUTLINED_FUNCTION_276();
  v121();
  OUTLINED_FUNCTION_44_3(&a15);
  v122(v165, v152, v166);
  v123 = v148;
  v124 = (*(v148 + 80) + 56) & ~*(v148 + 80);
  v125 = v105;
  v126 = (v143 + *(v106 + 80) + v124) & ~*(v106 + 80);
  v127 = (v149 + *(v104 + 80) + v126) & ~*(v104 + 80);
  OUTLINED_FUNCTION_208_0();
  v129 = v128 & 0xFFFFFFFFFFFFFFF8;
  v130 = swift_allocObject();
  *(v130 + 2) = v125;
  *(v130 + 3) = swift_allocateMetadataPack();
  *(v130 + 4) = swift_allocateWitnessTablePack();
  *(v130 + 5) = swift_allocateWitnessTablePack();
  OUTLINED_FUNCTION_175();
  *(v130 + 6) = swift_allocateWitnessTablePack();
  (*(v123 + 32))(&v130[v124], v173, v158);
  (*(v106 + 32))(&v130[v126], v163, v164);
  (v104[4])(&v130[v127], v165, v166);
  v131 = &v130[v129];
  v132 = v142;
  v133 = v174;
  *v131 = v142;
  *(v131 + 1) = v133;

  v134 = sub_23B50B034();
  OUTLINED_FUNCTION_152_0();
  sub_23B50B074();
  OUTLINED_FUNCTION_305();

  OUTLINED_FUNCTION_242_0();
  v135 = swift_allocObject();
  v135[2] = v125;
  v135[3] = swift_allocateMetadataPack();
  v135[4] = swift_allocateWitnessTablePack();
  v135[5] = swift_allocateWitnessTablePack();
  OUTLINED_FUNCTION_175();
  WitnessTablePack = swift_allocateWitnessTablePack();
  v137 = v169;
  v135[6] = WitnessTablePack;
  v135[7] = v137;
  v135[8] = v132;
  v135[9] = v133;

  v138 = v137;
  v139 = sub_23B50B034();
  OUTLINED_FUNCTION_198_0();

  OUTLINED_FUNCTION_56_1(&a12);
  v140(v162, v155);
  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_175_0();
  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B46C2B0(void *a1, uint64_t *a2, void *a3)
{
  v5 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
  v6 = *a2;

  [a3 coordinate];
  v7 = sub_23B50B6E4();

  return v7;
}

uint64_t sub_23B46C38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *), uint64_t a7)
{
  v29[1] = a7;
  v30 = a6;
  v32 = a4;
  v33 = a5;
  v31 = a1;
  v29[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338F8, &qword_23B519470);
  v9 = *(*(v29[0] - 8) + 64);
  MEMORY[0x28223BE20](v29[0]);
  v11 = v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132250, &unk_23B5164B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v29 - v14;
  v16 = type metadata accessor for DayPrecipitationSummary();
  v17 = sub_23B4778AC(&qword_280B422D8, type metadata accessor for DayPrecipitationSummary);
  v18 = sub_23B4778AC(&qword_280B422E8, type metadata accessor for DayPrecipitationSummary);
  v19 = sub_23B4778AC(&qword_280B422E0, type metadata accessor for DayPrecipitationSummary);
  v20 = OBJC_IVAR____TtC10WeatherKit14WeatherService_modelFactory;
  v34 = v16;
  v35 = v17;
  v36 = v18;
  v37 = v19;
  v21 = type metadata accessor for DailyWeatherSummaryQuery();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = v29 - v25;
  (*(v22 + 16))(v29 - v25, a3, v21, v24);
  v27 = v38;
  sub_23B44317C(v31, *(a2 + v20), v32, v33, v21, v15);
  if (v27)
  {
    return (*(v22 + 8))(v26, v21);
  }

  (*(v22 + 8))(v26, v21);
  sub_23B3A23E0();
  swift_storeEnumTagMultiPayload();
  v30(v11);
  sub_23B398890(v11, &qword_27E1338F8, &qword_23B519470);
  return sub_23B398890(v15, &qword_27E132250, &unk_23B5164B0);
}

uint64_t sub_23B46C69C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, void (*a6)(char *), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  v88 = a4;
  v89 = a5;
  v86 = a1;
  v87 = a2;
  v14 = a10;
  v15 = a12;
  v16 = (a11 & 0xFFFFFFFFFFFFFFFELL);
  v17 = 8 * a8;
  v79 = a7;
  v80 = a6;
  if (a8 == 1)
  {
    v18 = *(a10 & 0xFFFFFFFFFFFFFFFELL);
    v19 = *v16;
    v20 = *(a12 & 0xFFFFFFFFFFFFFFFELL);
    v96 = *(a9 & 0xFFFFFFFFFFFFFFFELL);
    v97 = v18;
    v98 = v19;
    v99 = v20;
    type metadata accessor for DailyWeatherSummary();
    TupleTypeMetadata = swift_checkMetadataState();
  }

  else
  {
    v91 = &v75;
    MEMORY[0x28223BE20](a1);
    v22 = 0;
    v92 = a10;
    v100 = a12;
    while (a8 != v22)
    {
      v23 = *((a10 & 0xFFFFFFFFFFFFFFFELL) + 8 * v22);
      v24 = v16[v22];
      v25 = *((a12 & 0xFFFFFFFFFFFFFFFELL) + 8 * v22);
      v96 = *((a9 & 0xFFFFFFFFFFFFFFFELL) + 8 * v22);
      v97 = v23;
      v98 = v24;
      v99 = v25;
      *(&v75 + 8 * v22++ - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0)) = type metadata accessor for DailyWeatherSummary();
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v14 = v92;
    v17 = v94;
    v15 = v100;
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v26 = sub_23B50D954();
  v83 = &v75;
  v78 = v26;
  v77 = *(v26 - 8);
  v27 = (*(v77 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26);
  v76 = &v75 - v28;
  v82 = &v75;
  v84 = TupleTypeMetadata;
  v75 = *(TupleTypeMetadata - 8);
  v29 = *(v75 + 64);
  MEMORY[0x28223BE20](v30);
  v90 = &v75 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = &v75;
  v34 = MEMORY[0x28223BE20](v32);
  v100 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = (a9 & 0xFFFFFFFFFFFFFFFELL);
  v36 = (v14 & 0xFFFFFFFFFFFFFFFELL);
  v37 = (v15 & 0xFFFFFFFFFFFFFFFELL);
  if (a8)
  {
    v38 = 0;
    v93 = a3;
    do
    {
      if (a8 == 1)
      {
        v39 = *v36;
        v40 = *v16;
        v41 = *v37;
        v96 = *v35;
        v97 = v39;
        v98 = v40;
        v99 = v41;
        v33 = type metadata accessor for DailyWeatherSummaryQuery();
        v42 = 0;
      }

      else
      {
        MEMORY[0x28223BE20](v33);
        v43 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
        for (i = 0; a8 != i; ++i)
        {
          v45 = v36[i];
          v46 = v16[i];
          v47 = v37[i];
          v96 = v35[i];
          v97 = v45;
          v98 = v46;
          v99 = v47;
          *&v43[8 * i] = type metadata accessor for DailyWeatherSummaryQuery();
        }

        v33 = swift_getTupleTypeMetadata();
        v42 = *(v33 + 16 * v38 + 32);
        a3 = v93;
        v17 = v94;
      }

      *&v100[8 * v38++] = a3 + v42;
    }

    while (v38 != a8);
  }

  v48 = 0;
  v85 = OBJC_IVAR____TtC10WeatherKit14WeatherService_modelFactory;
  for (j = v84; ; j = v94)
  {
    v50 = j + 4;
    if (a8 == v48)
    {
      v62 = v75;
      v63 = v76;
      v64 = v90;
      v65 = v84;
      (*(v75 + 16))(v76, v90, v84, v34);
      v66 = v78;
      swift_storeEnumTagMultiPayload();
      v80(v63);
      (*(v77 + 8))(v63, v66);
      return (*(v62 + 8))(v64, v65);
    }

    v94 = v50;
    v92 = a8 == 1 ? 0 : v50[4];
    v51 = v35[v48];
    v52 = v36[v48];
    v53 = v16[v48];
    v54 = v37[v48];
    v91 = *&v100[8 * v48];
    v96 = v51;
    v97 = v52;
    v98 = v53;
    v99 = v54;
    v55 = type metadata accessor for DailyWeatherSummaryQuery();
    v93 = &v75;
    v56 = *(v55 - 8);
    v57 = *(v56 + 64);
    v58 = MEMORY[0x28223BE20](v55);
    v60 = &v75 - v59;
    (*(v56 + 16))(&v75 - v59, v91, v55, v58);
    v61 = v95;
    sub_23B44317C(v86, *(v87 + v85), v88, v89, v55, &v90[v92]);
    v95 = v61;
    if (v61)
    {
      break;
    }

    (*(v56 + 8))(v60, v55);
    ++v48;
  }

  result = (*(v56 + 8))(v60, v55);
  v68 = v94;
  if (v48)
  {
    v69 = v35 - 1;
    do
    {
      v70 = v36[v48 - 1];
      v71 = v16[v48 - 1];
      v72 = v37[v48 - 1];
      v73 = *v68;
      v68 -= 4;
      v96 = v69[v48];
      v97 = v70;
      v98 = v71;
      v99 = v72;
      v74 = type metadata accessor for DailyWeatherSummary();
      result = (*(*(v74 - 8) + 8))(&v90[v73], v74);
      --v48;
    }

    while (v48);
  }

  return result;
}

uint64_t sub_23B46CD0C(uint64_t a1)
{
  v2 = v1[2];
  v53 = v1[5];
  v54 = v1[3];
  v3 = (v53 & 0xFFFFFFFFFFFFFFFELL);
  v52 = v1[4];
  if (v2 == 1)
  {
    v4 = *(v1[4] & 0xFFFFFFFFFFFFFFFELL);
    v5 = *v3;
    v6 = *(v1[6] & 0xFFFFFFFFFFFFFFFELL);
    OUTLINED_FUNCTION_54_1(*(v1[3] & 0xFFFFFFFFFFFFFFFELL));
    v8 = v7;
    TupleTypeMetadata = type metadata accessor for DailyWeatherSummaryQuery();
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    OUTLINED_FUNCTION_27();
    v12 = v11 - v10;
    v13 = 0;
    v15 = v14 & 0xFFFFFFFFFFFFFFFELL;
    v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
    v51 = v18;
    v19 = v18 & 0xFFFFFFFFFFFFFFFELL;
    while (v2 != v13)
    {
      v20 = *(v17 + 8 * v13);
      v21 = v3[v13];
      v22 = *(v19 + 8 * v13);
      OUTLINED_FUNCTION_54_1(*(v15 + 8 * v13));
      *(v12 + 8 * v13++) = type metadata accessor for DailyWeatherSummaryQuery();
    }

    OUTLINED_FUNCTION_69_2();
    OUTLINED_FUNCTION_74_1();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v8 = v51;
  }

  OUTLINED_FUNCTION_28_0(TupleTypeMetadata);
  v24 = (*(v23 + 80) + 56) & ~*(v23 + 80);
  v26 = *(v25 + 64);
  v27 = sub_23B50AD24();
  OUTLINED_FUNCTION_28_0(v27);
  v29 = (v24 + v26 + *(v28 + 80)) & ~*(v28 + 80);
  v31 = *(v30 + 64);
  v32 = sub_23B50AEF4();
  OUTLINED_FUNCTION_28_0(v32);
  v34 = v33;
  v36 = v35;
  v37 = (v29 + v31 + *(v34 + 80)) & ~*(v34 + 80);
  v38 = *(v36 + 64);
  OUTLINED_FUNCTION_43_5();
  v40 = (v1 + v39);
  v41 = *v40;
  v42 = v40[1];
  v43 = OUTLINED_FUNCTION_175();
  return sub_23B46C69C(v43, v44, v45, v46, v47, v48, v49, v2, v54, v52, v53, v8);
}

void sub_23B46CF6C()
{
  OUTLINED_FUNCTION_21();
  v31 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v13 = OUTLINED_FUNCTION_301(v10, v11, v8, v12, v6, v4);
  OUTLINED_FUNCTION_6(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_47_2();
  if (qword_280B43440 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v17 = sub_23B50CDF4();
  __swift_project_value_buffer(v17, qword_280B4E9D8);
  v18 = v0;
  v19 = v1;
  v20 = sub_23B50CDD4();
  v21 = sub_23B50D4B4();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_42_0();
    v29 = OUTLINED_FUNCTION_303();
    v30 = OUTLINED_FUNCTION_42_0();
    v32 = v30;
    OUTLINED_FUNCTION_191_0(7.2226e-34);
    *(v22 + 14) = v18;
    *v29 = v18;
    OUTLINED_FUNCTION_252_0();
    v28 = v20;
    v23 = v18;
    v24 = sub_23B50D874();
    v26 = sub_23B391F1C(v24, v25, &v32);

    *(v22 + 24) = v26;
    v20 = v28;
    _os_log_impl(&dword_23B38D000, v28, v21, v31, v22, 0x20u);
    sub_23B398890(v29, &qword_27E132D80, &qword_23B5192E0);
    OUTLINED_FUNCTION_38();
    __swift_destroy_boxed_opaque_existential_1(v30);
    OUTLINED_FUNCTION_109_0();
    OUTLINED_FUNCTION_38();
  }

  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  v27 = v1;
  v9(v2);
  sub_23B398890(v2, v7, v5);
  OUTLINED_FUNCTION_20();
}

void sub_23B46D198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (*a22)(uint64_t), const char *a23)
{
  OUTLINED_FUNCTION_21();
  v74 = v29;
  v30 = v25;
  v31 = v24;
  v33 = (v32 & 0xFFFFFFFFFFFFFFFELL);
  if (v26 == 1)
  {
    v34 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
    v35 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
    v36 = *v33;
    OUTLINED_FUNCTION_176_0();
    OUTLINED_FUNCTION_26_12(v37);
    a22(255);
    swift_checkMetadataState();
  }

  else
  {
    v38 = v26;
    v72 = v25;
    v39 = v24;
    MEMORY[0x28223BE20](v24);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_35_3();
    v40 = 0;
    v42 = v41 & 0xFFFFFFFFFFFFFFFELL;
    v44 = v43 & 0xFFFFFFFFFFFFFFFELL;
    v46 = v45 & 0xFFFFFFFFFFFFFFFELL;
    while (v38 != v40)
    {
      v47 = *(v44 + 8 * v40);
      v48 = v33[v40];
      v49 = *(v46 + 8 * v40);
      OUTLINED_FUNCTION_26_12(*(v42 + 8 * v40));
      *(v23 + 8 * v40++) = (a22)(255);
    }

    OUTLINED_FUNCTION_74_1();
    swift_getTupleTypeMetadata();
    v31 = v39;
    v30 = v72;
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  OUTLINED_FUNCTION_63();
  v50 = sub_23B50D954();
  OUTLINED_FUNCTION_5(v50);
  v52 = v51;
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_13();
  if (qword_280B43440 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v56 = sub_23B50CDF4();
  __swift_project_value_buffer(v56, qword_280B4E9D8);
  v57 = v30;
  v58 = v31;
  v59 = sub_23B50CDD4();
  v60 = sub_23B50D4B4();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = OUTLINED_FUNCTION_42_0();
    v70 = OUTLINED_FUNCTION_303();
    v71 = OUTLINED_FUNCTION_42_0();
    v75 = v71;
    *v61 = 141558531;
    *(v61 + 4) = 1752392040;
    *(v61 + 12) = 2113;
    *(v61 + 14) = v57;
    *v70 = v57;
    *(v61 + 22) = 2082;
    swift_getErrorValue();
    v73 = v52;
    v62 = v57;
    v63 = sub_23B50D874();
    v65 = sub_23B391F1C(v63, v64, &v75);

    *(v61 + 24) = v65;
    v52 = v73;
    _os_log_impl(&dword_23B38D000, v59, v60, a23, v61, 0x20u);
    sub_23B398890(v70, &qword_27E132D80, &qword_23B5192E0);
    OUTLINED_FUNCTION_109_0();
    __swift_destroy_boxed_opaque_existential_1(v71);
    OUTLINED_FUNCTION_109_0();
    OUTLINED_FUNCTION_38();
  }

  *v33 = v31;
  OUTLINED_FUNCTION_32();
  swift_storeEnumTagMultiPayload();
  v66 = v31;
  v74(v33);
  v67 = *(v52 + 8);
  v68 = OUTLINED_FUNCTION_32();
  v69(v68);
  OUTLINED_FUNCTION_20();
}