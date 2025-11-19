uint64_t type metadata accessor for SerializationError()
{
  result = qword_280C8E648;
  if (!qword_280C8E648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237D4B4D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SerializationError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static SerializationError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_237EF5EF0();
  OUTLINED_FUNCTION_1();
  v38 = v5;
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  type metadata accessor for SerializationError();
  OUTLINED_FUNCTION_4_40();
  MEMORY[0x28223BE20](v11);
  v13 = (&v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB15A8);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v38 - v21;
  v24 = (&v38 + *(v23 + 56) - v21);
  sub_237D4B4D4(a1, &v38 - v21);
  sub_237D4B4D4(a2, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_237D4B4D4(v22, v19);
    if (!swift_getEnumCaseMultiPayload())
    {
      v35 = v38;
      v34 = v39;
      (*(v38 + 32))(v10, v24, v39);
      v28 = sub_237EF5EA0();
      v36 = *(v35 + 8);
      v36(v10, v34);
      v36(v19, v34);
      goto LABEL_20;
    }

    (*(v38 + 8))(v19, v39);
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_237D4B4D4(v22, v16);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v27 = v38;
      v26 = v39;
      (*(v38 + 32))(v7, v24, v39);
      v28 = sub_237EF5EA0();
      v29 = *(v27 + 8);
      v29(v7, v26);
      v29(v16, v26);
LABEL_20:
      sub_237D4B958(v22);
      return v28 & 1;
    }

    (*(v38 + 8))(v16, v39);
    goto LABEL_17;
  }

  sub_237D4B4D4(v22, v13);
  v31 = *v13;
  v30 = v13[1];
  if (swift_getEnumCaseMultiPayload() != 2)
  {

LABEL_17:
    sub_237D4B8F0(v22);
    goto LABEL_18;
  }

  if (v31 == *v24 && v30 == v24[1])
  {

    goto LABEL_22;
  }

  v33 = sub_237EF9D40();

  if (v33)
  {
LABEL_22:
    sub_237D4B958(v22);
    v28 = 1;
    return v28 & 1;
  }

  sub_237D4B958(v22);
LABEL_18:
  v28 = 0;
  return v28 & 1;
}

uint64_t sub_237D4B8F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB15A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237D4B958(uint64_t a1)
{
  v2 = type metadata accessor for SerializationError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237D4B9FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_237D4BA58()
{
  result = sub_237EF5EF0();
  if (v1 <= 0x3F)
  {
    result = sub_237D4BACC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_237D4BACC()
{
  result = qword_280C8E570;
  if (!qword_280C8E570)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_280C8E570);
  }

  return result;
}

uint64_t sub_237D4BB38(uint64_t a1)
{
  type metadata accessor for DataFrameRowFeatureProvider();
  v2 = swift_allocObject();
  v3 = sub_237EF8260();
  sub_237D4BC3C(v3, a1);
  return v2;
}

uint64_t sub_237D4BBE0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_237D4BC3C(uint64_t a1, uint64_t a2)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1678);
  MEMORY[0x28223BE20](v30);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v29 = v24 - v8;
  v2[2] = a1;
  v2[4] = a2;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v24[0] = v2;
    v31 = MEMORY[0x277D84F90];
    sub_237EF8260();
    sub_237C63804(0, v9, 0);
    v10 = v31;
    v28 = *(a1 + 16);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1670);
    v12 = result;
    v13 = 0;
    v14 = *(result - 8);
    v25 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v26 = v9;
    v24[1] = v14 + 32;
    v24[2] = v14 + 16;
    v27 = a1;
    while (v28 != v13)
    {
      if (v13 >= *(a1 + 16))
      {
        goto LABEL_11;
      }

      v16 = v29;
      v15 = v30;
      v17 = *(v30 + 48);
      (*(v14 + 16))(&v29[v17], v25 + *(v14 + 72) * v13, v12);
      *v6 = v13;
      (*(v14 + 32))(&v6[*(v15 + 48)], &v16[v17], v12);
      v18 = sub_237EF6240();
      v20 = v19;
      result = sub_237D4C40C(v6);
      v31 = v10;
      v22 = *(v10 + 16);
      v21 = *(v10 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_237C63804(v21 > 1, v22 + 1, 1);
        v10 = v31;
      }

      *(v10 + 16) = v22 + 1;
      v23 = (v10 + 24 * v22);
      v23[4] = v18;
      v23[5] = v20;
      v23[6] = v13++;
      a1 = v27;
      if (v26 == v13)
      {

        v2 = v24[0];
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
LABEL_9:
    v2[3] = sub_237D27C38(v10);
    return v2;
  }

  return result;
}

void sub_237D4BF28()
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1670);
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - v4;
  v6 = *(v0 + 16);
  KeyPath = swift_getKeyPath();
  v8 = *(v6 + 16);
  if (v8)
  {
    v28 = MEMORY[0x277D84F90];
    sub_237C62D90(0, v8, 0);
    v9 = v28;
    v11 = *(v2 + 16);
    v10 = v2 + 16;
    v12 = v6 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v23 = *(v10 + 56);
    v24 = v11;
    v22 = (v10 - 8);
    do
    {
      v13 = v25;
      v14 = v10;
      v24(v5, v12, v25);
      v15 = KeyPath;
      swift_getAtKeyPath();
      (*v22)(v5, v13);
      v16 = v26;
      v17 = v27;
      v28 = v9;
      v19 = *(v9 + 16);
      v18 = *(v9 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_237C62D90(v18 > 1, v19 + 1, 1);
        v9 = v28;
      }

      *(v9 + 16) = v19 + 1;
      v20 = v9 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
      v12 += v23;
      --v8;
      v10 = v14;
      KeyPath = v15;
    }

    while (v8);
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  sub_237CADF98(v9);
}

uint64_t sub_237D4C118@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1670);
  result = sub_237EF6240();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_237D4C158()
{
  sub_237EF8260();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1670);
  return sub_237EF6250();
}

unint64_t sub_237D4C1B0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1670);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = v13 - v6;
  v8 = *(v0 + 24);
  if (!*(v8 + 16))
  {
    return 0;
  }

  result = sub_237D2FC30();
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = *(*(v8 + 56) + 8 * result);
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v12 = *(v1 + 16);
    if (v11 < *(v12 + 16))
    {
      (*(v4 + 16))(v7, v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, v2);
      sub_237EF62A0();
      (*(v4 + 8))(v7, v2);
      return v13[1];
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237D4C38C()
{

  return v0;
}

uint64_t sub_237D4C3B4()
{
  sub_237D4C38C();

  return swift_deallocClassInstance();
}

uint64_t sub_237D4C40C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1678);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_237D4C494()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  OUTLINED_FUNCTION_3_49(v0, sel_addObject_);
}

void sub_237D4C4F0()
{
  OUTLINED_FUNCTION_0_42();
  v1 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  OUTLINED_FUNCTION_3_49(v1, sel_addObject_);
}

void sub_237D4C54C()
{
  OUTLINED_FUNCTION_0_42();
  v1 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithChar_];
  OUTLINED_FUNCTION_3_49(v1, sel_addObject_);
}

void sub_237D4C5A8()
{
  OUTLINED_FUNCTION_0_42();
  v1 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithShort_];
  OUTLINED_FUNCTION_3_49(v1, sel_addObject_);
}

void sub_237D4C604()
{
  OUTLINED_FUNCTION_0_42();
  v1 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedChar_];
  OUTLINED_FUNCTION_3_49(v1, sel_addObject_);
}

void sub_237D4C660()
{
  OUTLINED_FUNCTION_0_42();
  v1 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
  OUTLINED_FUNCTION_3_49(v1, sel_addObject_);
}

void sub_237D4C6BC(uint64_t a1, SEL *a2)
{
  v3 = *(v2 + 8);
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) *a2];
  [v3 addObject_];
}

void sub_237D4C728()
{
  v1 = *(v0 + 8);
  sub_237D4D3C8();
  sub_237EF8260();
  v2 = sub_237D6B380();
  [v1 addObject_];
}

uint64_t sub_237D4C7A4(float a1)
{
  v3 = *(v1 + 8);
  [v3 count];
  sub_237DA2564();
  OUTLINED_FUNCTION_1_49();
  sub_237D86C8C();
  OUTLINED_FUNCTION_5_39();
  OUTLINED_FUNCTION_2_48();
  swift_endAccess();
  v4 = sub_237D6B140(a1);
  [v3 addObject_];

  OUTLINED_FUNCTION_11_28();
  sub_237D6D14C(v6);
  __swift_destroy_boxed_opaque_existential_1(v6);
  return swift_endAccess();
}

uint64_t sub_237D4C880(double a1)
{
  v3 = *(v1 + 8);
  [v3 count];
  sub_237DA2564();
  OUTLINED_FUNCTION_1_49();
  sub_237D86C8C();
  OUTLINED_FUNCTION_5_39();
  OUTLINED_FUNCTION_2_48();
  swift_endAccess();
  v4 = sub_237D6B214(a1);
  [v3 addObject_];

  OUTLINED_FUNCTION_11_28();
  sub_237D6D14C(v6);
  __swift_destroy_boxed_opaque_existential_1(v6);
  return swift_endAccess();
}

uint64_t sub_237D4C95C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v20 = v3[1];
  [v20 count];
  v7 = sub_237DA2564();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  OUTLINED_FUNCTION_11_28();
  sub_237D86C8C();
  v14 = *(*(v6 + 120) + 16);
  sub_237D86D60(v14);
  sub_237D6D628(v14, v7, v9, v11, v13 & 1, (v6 + 120));
  swift_endAccess();
  v22[3] = a2;
  v22[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  v16 = v22[6];
  v17 = sub_237D6B2E8(v22);
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    v18 = v17;
    __swift_destroy_boxed_opaque_existential_1(v22);
    [v20 addObject_];
  }

  OUTLINED_FUNCTION_11_28();
  sub_237D6D14C(v22);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return swift_endAccess();
}

uint64_t sub_237D4CAD4()
{
  v1 = *(v0 + 8);
  [v1 count];
  v2 = sub_237DA2564();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_237D86C8C();
  v9 = *(*(v0 + 16) + 16);
  sub_237D86D60(v9);
  sub_237D6D628(v9, v2, v4, v6, v8 & 1, (v0 + 16));
  [v1 addObject_];
  sub_237E31298();
  v14[0] = v10;
  v14[1] = v11;
  v14[2] = v12;
  _s14KeyedContainerVMa_0();

  sub_237EF8260();
  swift_getWitnessTable();
  sub_237EF9A90();
  sub_237D6D14C(v14);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_237D4CC4C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = v1[1];
  [v4 count];
  v5 = sub_237DA2564();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_237D86C8C();
  v12 = *(v1[2] + 16);
  sub_237D86D60(v12);
  sub_237D6D628(v12, v5, v7, v9, v11 & 1, v1 + 2);
  v13 = v1[2];
  v14 = [objc_allocWithZone(MEMORY[0x277CBEB18]) init];
  [v4 addObject_];
  v15 = *v2;
  a1[3] = &_s16UnkeyedContainerVN;
  a1[4] = sub_237D4D374();
  *a1 = v15;
  a1[1] = v14;
  a1[2] = v13;

  sub_237EF8260();
  sub_237D6D14C(v17);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

unint64_t sub_237D4CD70@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);

  v5 = [v3 count];
  v6 = _s18ReferencingEncoderCMa();
  swift_allocObject();
  v7 = sub_237D4F80C(v4, v5, v3);
  a1[3] = v6;
  result = sub_237D4D31C();
  a1[4] = result;
  *a1 = v7;
  return result;
}

unint64_t sub_237D4D31C()
{
  result = qword_27DEB1680;
  if (!qword_27DEB1680)
  {
    _s18ReferencingEncoderCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB1680);
  }

  return result;
}

unint64_t sub_237D4D374()
{
  result = qword_280C8D838[0];
  if (!qword_280C8D838[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C8D838);
  }

  return result;
}

unint64_t sub_237D4D3C8()
{
  result = qword_280C8CCF0;
  if (!qword_280C8CCF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C8CCF0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_49()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_48()
{

  return sub_237D6D628(v5, v1, v2, v3, v4 & 1, (v0 + 120));
}

id OUTLINED_FUNCTION_3_49(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_5_39()
{
  v2 = *(*(v0 + 120) + 16);

  return sub_237D86D60(v2);
}

uint64_t sub_237D4D4AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v12 = MEMORY[0x277D84F90];
    sub_237C62DB0();
    v6 = 0;
    v5 = v12;
    v7 = (a1 + 32);
    while (v6 < *(a1 + 16))
    {
      v8 = *v7;
      v12 = v5;
      v9 = *(v5 + 16);
      if (v9 >= *(v5 + 24) >> 1)
      {
        sub_237C62DB0();
        v5 = v12;
      }

      ++v6;
      *(v5 + 16) = v9 + 1;
      *(v5 + 8 * v9 + 32) = v8;
      v7 += 2;
      if (v4 == v6)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    v10 = *(sub_237CAE03C(v5) + 16);

    if (v10 == v4)
    {
      v12 = a1;
      sub_237EF8260();
      sub_237D4ECA0(&v12);

      *a2 = v12;
      return result;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t BaseLogisticRegressionClassifierModel.coefficients.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t BaseLogisticRegressionClassifierModel.featureCount.getter()
{
  v1 = v0[1];
  v2 = *(*v0 + 16);
  if (v1 == 2)
  {
    return v2 - 1;
  }

  v3 = __OFSUB__(v1, 1);
  v4 = v1 - 1;
  if (v3)
  {
    __break(1u);
  }

  else if (v4)
  {
    v2 /= v4;
    return v2 - 1;
  }

  __break(1u);
  return result;
}

uint64_t BaseLogisticRegressionClassifierModel.init<A>(coefficients:classCount:)()
{
  OUTLINED_FUNCTION_6_32();
  v4 = v3;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v7);
  *(v4 + 73) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  (*(v6 + 16))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  v9 = sub_237EF8A90();
  result = (*(v6 + 8))(v2, v0);
  *v4 = v9;
  *(v4 + 8) = v1;
  return result;
}

double *sub_237D4D828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  if (a4[1] == 2)
  {
    return sub_237D4DDAC(a1, a2, a3, *a4 + 32, *(*a4 + 16), 1, a5);
  }

  else
  {
    return sub_237D4E168(*(*a4 + 16), a4, a1, a3, a5);
  }
}

uint64_t BaseLogisticRegressionClassifierModel.applied(features:eventHandler:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  memcpy(__dst, v2, 0x59uLL);
  sub_237D4D938(__dst, v9);
  sub_237C70604(a2);
  return sub_237CC8230(v4, v5, v6, v7, __dst, a2);
}

uint64_t BaseLogisticRegressionClassifierModel.mostLikelyIndices(for:)(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  memcpy(__dst, v2, 0x59uLL);
  sub_237D4D938(__dst, v8);
  return sub_237CC8304(v3, v4, v5, v6, __dst);
}

uint64_t sub_237D4D9F0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 89))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_237D4DA30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_237D4DA98(uint64_t a1)
{
  __dst[12] = *MEMORY[0x277D85DE8];
  memcpy(__dst, v1, 0x59uLL);
  v3 = *(a1 + 8);
  if (v3 < 0)
  {
    goto LABEL_33;
  }

  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
    return v4;
  }

  v32 = MEMORY[0x277D84F90];
  sub_237C62DB0();
  v6 = 0;
  v7 = 0;
  v4 = v32;
  v29 = *(a1 + 32);
  v28 = __dst[1];
  v8 = __dst[1] - 1;
  v9 = __OFSUB__(__dst[1], 1);
  v26 = v9;
  v10 = 8 * v8;
  v25 = 8 * v8;
  if ((8 * v8) <= 1)
  {
    v10 = 1;
  }

  v23[1] = v10;
  v24 = (__dst[1] + 0xFFFFFFFFFFFFFFFLL) >> 61;
  v27 = v3;
  while (1)
  {
    if (v29)
    {
      v11 = (*a1 + v6);
      v12 = *(a1 + 24);
      goto LABEL_13;
    }

    v13 = *(a1 + 24);
    if ((v7 * v13) >> 64 != (v7 * v13) >> 63)
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
    }

    v11 = (*a1 + 8 * v7 * v13);
    v12 = 1;
LABEL_13:
    if (v28 != 2)
    {
      break;
    }

    dot(_:_:)(v11, *(a1 + 16), v12, __dst[0] + 32, *(__dst[0] + 16), 1);
    v15 = exp(-v14);
    v16 = log1p(v15);
    v17 = exp(-v16) >= 0.5;
LABEL_21:
    v32 = v4;
    v20 = *(v4 + 16);
    if (v20 >= *(v4 + 24) >> 1)
    {
      sub_237C62DB0();
      v4 = v32;
    }

    ++v7;
    *(v4 + 16) = v20 + 1;
    *(v4 + 8 * v20 + 32) = v17;
    v6 += 8;
    if (v27 == v7)
    {
      return v4;
    }
  }

  if (v26)
  {
    goto LABEL_30;
  }

  if (v8 < 0)
  {
    goto LABEL_31;
  }

  if (v24)
  {
    goto LABEL_32;
  }

  if (v25 >= 1025)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v21 = swift_slowAlloc();
      OUTLINED_FUNCTION_4_41(v21, &v31);
      v19 = v11;
      if (v11)
      {
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_0_43();
      isStackAllocationSafe = MEMORY[0x2383E2DF0]();
      v17 = v31;
      goto LABEL_21;
    }
  }

  MEMORY[0x28223BE20](isStackAllocationSafe);
  OUTLINED_FUNCTION_4_41((v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0)), &v30);
  v19 = v11;
  if (!v11)
  {
    v17 = v30;
    goto LABEL_21;
  }

  swift_willThrow();

  __break(1u);
LABEL_35:

  OUTLINED_FUNCTION_0_43();
  result = MEMORY[0x2383E2DF0]();
  __break(1u);
  return result;
}

uint64_t sub_237D4DDAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  dot(_:_:)(a1, a2, a3, a4, a5, a6);
  v9 = exp(-v8);
  v10 = log1p(v9);
  v11 = exp(-v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD408);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_237F04760;
  *(v12 + 32) = 0;
  *(v12 + 40) = 1.0 - v11;
  *(v12 + 48) = 1;
  *(v12 + 56) = v11;

  return sub_237D4D4AC(v12, a7);
}

uint64_t sub_237D4DE4C()
{
  OUTLINED_FUNCTION_6_32();
  v2 = *(v1 + 8);
  sub_237D0B424();
  v9 = isStackAllocationSafe;
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
  }

  if (v2 >> 60)
  {
    goto LABEL_10;
  }

  if ((8 * v2) <= 1024 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), isStackAllocationSafe))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v5 = OUTLINED_FUNCTION_3_50(v4, v8);
    OUTLINED_FUNCTION_2_49(v5);
    if (!v0)
    {
      return v9;
    }

    swift_willThrow();

    __break(1u);
  }

  else
  {
    v7 = swift_slowAlloc();
    OUTLINED_FUNCTION_2_49(v7);
    if (!v0)
    {
      OUTLINED_FUNCTION_0_43();
      MEMORY[0x2383E2DF0]();
      return v9;
    }
  }

  OUTLINED_FUNCTION_0_43();
  result = MEMORY[0x2383E2DF0]();
  __break(1u);
  return result;
}

void sub_237D4DF94(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  if (!a1)
  {
    goto LABEL_13;
  }

  v9 = a1;
  if (a2 >= 1)
  {
    bzero(a1, 8 * a2);
  }

  UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();
  v10 = *(a3 + 8);
  if (v10 < 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  for (; v10; --v10)
  {
    v11 = exp(-*v9);
    v12 = log1p(v11);
    v13 = exp(-v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD408);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_237F04760;
    *(v14 + 32) = 0;
    *(v14 + 40) = 1.0 - v13;
    *(v14 + 48) = 1;
    *(v14 + 56) = v13;
    sub_237D4D4AC(v14, &v21);
    v15 = v21;
    v16 = *a7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a7 = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_237D0B424();
      v16 = v19;
      *a7 = v19;
    }

    v18 = *(v16 + 16);
    if (v18 >= *(v16 + 24) >> 1)
    {
      sub_237D0B424();
      v16 = v20;
      *a7 = v20;
    }

    *(v16 + 16) = v18 + 1;
    *(v16 + 8 * v18 + 32) = v15;
    ++v9;
  }
}

double *sub_237D4E168@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, void *a4@<X6>, void *a5@<X8>)
{
  v5 = *(a2 + 8);
  if (__OFSUB__(v5, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v5 == 1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a1 != 0x8000000000000000 || v5 != 0)
  {
    return sub_237D4E1E8(a3, a4, v5, a5);
  }

LABEL_10:
  __break(1u);
  return result;
}

double *sub_237D4E1E8@<X0>(uint64_t isStackAllocationSafe@<X0>, void *a2@<X2>, uint64_t a3@<X4>, void *a4@<X8>)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = a3 - 1;
  if (!__OFSUB__(a3, 1))
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!(v6 >> 60))
    {
      v4 = a2;
      if ((8 * v6) <= 1024)
      {
        goto LABEL_5;
      }

      goto LABEL_8;
    }

    __break(1u);
  }

  __break(1u);
LABEL_8:
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (!isStackAllocationSafe)
  {
    v10 = swift_slowAlloc();
    OUTLINED_FUNCTION_1_50(v10, a4);
    if (!v4)
    {
      OUTLINED_FUNCTION_0_43();

LABEL_17:
      JUMPOUT(0x2383E2DF0);
    }

LABEL_16:

    OUTLINED_FUNCTION_0_43();
    MEMORY[0x2383E2DF0]();
    __break(1u);
    goto LABEL_17;
  }

LABEL_5:
  MEMORY[0x28223BE20](isStackAllocationSafe);
  v8 = OUTLINED_FUNCTION_3_50(v7, v11);
  result = OUTLINED_FUNCTION_1_50(v8, v12);
  if (v4)
  {
    swift_willThrow();

    __break(1u);
    goto LABEL_16;
  }

  *a4 = v12[0];
  return result;
}

double *sub_237D4E388@<X0>(double *result@<X0>, uint64_t a2@<X1>, long double *a3@<X2>, unint64_t a4@<X6>, void *a5@<X8>)
{
  if (!result)
  {
    goto LABEL_25;
  }

  v9 = result;
  v11 = 8 * a2;
  if (a2 >= 1)
  {
    bzero(result, 8 * a2);
  }

  result = UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      a3 = v9;
      v12 = a2;
      do
      {
        *a3 = exp(*a3);
        ++a3;
        --v12;
      }

      while (v12);
      goto LABEL_8;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

LABEL_8:
  sub_237E96130(v9, a2, 1);
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v14 = v13 + 1.0;
      v15 = v9;
      v16 = a2;
      do
      {
        *v15 = *v15 / v14;
        ++v15;
        --v16;
      }

      while (v16);
    }

    sub_237D0C804();
    v18 = v17;
    v19 = 0.0;
    if (a2)
    {
      v20 = v11;
      v21 = v9;
      do
      {
        v22 = *v21++;
        v19 = v19 + v22;
        v20 -= 8;
      }

      while (v20);
    }

    v5 = 1.0 - v19;
    a4 = *(v17 + 16);
    a3 = (a4 + 1);
    if (a4 < *(v17 + 24) >> 1)
    {
      goto LABEL_16;
    }
  }

  sub_237D0C804();
  v18 = v31;
LABEL_16:
  *(v18 + 16) = a3;
  v23 = v18 + 16 * a4;
  *(v23 + 32) = 0;
  *(v23 + 40) = v5;
  if (a2)
  {
    v24 = a4 + 2;
    v25 = 16 * a4;
    v26 = 1;
    do
    {
      v27 = *v9;
      if (v24 - 1 >= *(v18 + 24) >> 1)
      {
        sub_237D0C804();
        v18 = v30;
      }

      v28 = v27;
      *(v18 + 16) = v24;
      v29 = v18 + v25;
      ++v9;
      *(v29 + 48) = v26;
      *(v29 + 56) = v28;
      ++v24;
      v25 += 16;
      ++v26;
      v11 -= 8;
    }

    while (v11);
  }

  return sub_237D4D4AC(v18, a5);
}

uint64_t sub_237D4E5AC(uint64_t isStackAllocationSafe, uint64_t a2, char *a3)
{
  v4 = a3 - 1;
  if (__OFSUB__(a3, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = *(isStackAllocationSafe + 8);
    v6 = v5 * v4;
    if ((v5 * v4) >> 64 == (v5 * v4) >> 63)
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (!(v6 >> 60))
      {
        v3 = a3;
        if ((8 * v6) <= 1024)
        {
          goto LABEL_6;
        }

        goto LABEL_11;
      }

      __break(1u);
    }
  }

  __break(1u);
LABEL_11:
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (!isStackAllocationSafe)
  {
    v10 = swift_slowAlloc();
    OUTLINED_FUNCTION_5_40(v10);
    if (!v3)
    {
      OUTLINED_FUNCTION_0_43();
      MEMORY[0x2383E2DF0]();
      return v12;
    }

    goto LABEL_17;
  }

LABEL_6:
  MEMORY[0x28223BE20](isStackAllocationSafe);
  v8 = OUTLINED_FUNCTION_3_50(v7, v11);
  OUTLINED_FUNCTION_5_40(v8);
  if (v3)
  {
    swift_willThrow();

    __break(1u);
LABEL_17:

    OUTLINED_FUNCTION_0_43();
    result = MEMORY[0x2383E2DF0]();
    __break(1u);
    return result;
  }

  return v12;
}

void sub_237D4E700(char *a1@<X0>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  if (!a1)
  {
    goto LABEL_23;
  }

  v6 = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
    goto LABEL_20;
  }

  v8 = a1;
  v9 = *(a3 + 8);
  v20[0] = a1;
  v20[1] = a2 - 1;
  v20[2] = v9;
  v20[3] = v9;
  v21 = 0;
  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (a2 != 1)
  {
    v11 = 0;
    while ((v11 * v9) >> 64 == (v11 * v9) >> 63)
    {
      if (v9)
      {
        if (v9 < 1)
        {
          goto LABEL_19;
        }

        bzero(v8, 8 * v9);
      }

      ++v11;
      v8 += 8 * v9;
      if (v6 == v11)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_11:
  UnsafeMutableMatrixPointer<A>.addProductDouble(_:transposed:_:transposed:scaledBy:)(a4, 0, a3, 1);
  if (v9 < 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v12 = MEMORY[0x277D84F90];
  if (v9)
  {
    v22 = MEMORY[0x277D84F90];
    sub_237C63824(0, v9, 0);
    v13 = 0;
    v12 = v22;
    do
    {
      v18 = v13;
      sub_237D4E8A4(&v18, v20, a2, &v19);
      v14 = v19;
      v22 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_237C63824(v15 > 1, v16 + 1, 1);
        v12 = v22;
      }

      ++v13;
      *(v12 + 16) = v16 + 1;
      *(v12 + 8 * v16 + 32) = v14;
    }

    while (v9 != v13);
  }

  *a5 = v12;
}

uint64_t *sub_237D4E8A4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v10 = *result;
  if (*(a2 + 32))
  {
    v11 = *(a2 + 24);
    if ((v10 * v11) >> 64 != (v10 * v11) >> 63)
    {
LABEL_36:
      __break(1u);
      return result;
    }

    v12 = *a2 + 8 * v10 * v11;
    v13 = 1;
  }

  else
  {
    v12 = *a2 + 8 * v10;
    v13 = *(a2 + 24);
  }

  i = *(a2 + 8);
  if (i)
  {
    if ((i & 0x8000000000000000) == 0)
    {
      v4 = 0;
      while (1)
      {
        v5 = v4 * v13;
        if ((v4 * v13) >> 64 != (v4 * v13) >> 63)
        {
          break;
        }

        ++v4;
        *(v12 + 8 * v5) = exp(*(v12 + 8 * v5));
        if (i == v4)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    __break(1u);
    goto LABEL_36;
  }

LABEL_10:
  sub_237E96130(v12, i, v13);
  if (i < 0)
  {
    goto LABEL_32;
  }

  if (i)
  {
    v16 = 0;
    v17 = v15 + 1.0;
    do
    {
      v18 = v16 * v13;
      if ((v16 * v13) >> 64 != (v16 * v13) >> 63)
      {
        goto LABEL_30;
      }

      ++v16;
      *(v12 + 8 * v18) = *(v12 + 8 * v18) / v17;
    }

    while (i != v16);
  }

  sub_237D0C804();
  v5 = i * v13;
  if ((i * v13) >> 64 != (i * v13) >> 63)
  {
    goto LABEL_33;
  }

  v20 = v19;
  v4 = 8 * v13;
  if (v5)
  {
    v21 = 0;
    v22 = 0.0;
    do
    {
      v22 = v22 + *(v12 + v21);
      v21 += v4;
    }

    while (8 * v13 * i != v21);
  }

  else
  {
    v22 = 0.0;
  }

  *&v7 = 1.0 - v22;
  v6 = *(v19 + 16);
  a3 = v6 + 1;
  if (v6 >= *(v19 + 24) >> 1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    *(v20 + 16) = a3;
    v23 = v20 + 16 * v6;
    *(v23 + 32) = 0;
    *(v23 + 40) = LODWORD(v7);
    if (!v5)
    {
      break;
    }

    v5 = 0;
    a3 = v6 + 2;
    v6 *= 16;
    v13 *= 8 * i;
    for (i = 1; ; ++i)
    {
      v7 = *(v12 + v5);
      if (a3 - 1 >= *(v20 + 24) >> 1)
      {
        sub_237D0C804();
        v20 = v26;
      }

      v24 = v7;
      *(v20 + 16) = a3;
      v25 = v20 + v6;
      *(v25 + 48) = i;
      *(v25 + 56) = v24;
      if (__OFADD__(i + 1, 1))
      {
        break;
      }

      ++a3;
      v6 += 16;
      v5 += v4;
      if (v13 == v5)
      {
        return sub_237D4D4AC(v20, a4);
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    sub_237D0C804();
    v20 = v27;
  }

  return sub_237D4D4AC(v20, a4);
}

void sub_237D4EB10(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (!a1)
  {
    goto LABEL_24;
  }

  v6 = a1;
  v8 = 8 * a2;
  if (a2 >= 1)
  {
    bzero(a1, 8 * a2);
  }

  v9 = *(a3 + 8);
  v10 = __OFSUB__(v9, 1);
  v11 = v9 - 1;
  if (v10)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (!v11)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();
  if (a2)
  {
    if (a2 < 0)
    {
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return;
    }

    v12 = v6;
    v13 = a2;
    do
    {
      *v12 = exp(*v12);
      ++v12;
      --v13;
    }

    while (v13);
  }

  sub_237E96130(v6, a2, 1);
  if (a2 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (a2)
  {
    v15 = v14 + 1.0;
    v16 = v6;
    v17 = a2;
    do
    {
      *v16 = *v16 / v15;
      ++v16;
      --v17;
    }

    while (v17);
  }

  sub_237E96130(v6, a2, 1);
  v19 = 0;
  if (a2)
  {
    v20 = 1.0 - v18;
    v21 = 1;
    do
    {
      v22 = *v6++;
      v23 = v22;
      if (v20 < v22)
      {
        v19 = v21;
        v20 = v23;
      }

      ++v21;
      v8 -= 8;
    }

    while (v8);
  }

  *a4 = v19;
}

uint64_t sub_237D4ECA0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237E643CC();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_237D4ED0C(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_237D4ED0C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_237EF9AA0();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1688);
        v6 = sub_237EF89B0();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_237D4EE7C(v7, v8, a1, v4);
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
    return sub_237D4EE10(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_237D4EE10(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = v6;
      v8 = v5;
      do
      {
        v9 = *(v8 + 8);
        if (*(v8 - 8) >= v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *v8;
        *v8 = *(v8 - 16);
        *(v8 - 8) = v9;
        *(v8 - 16) = v10;
        v8 -= 16;
      }

      while (!__CFADD__(v7++, 1));
      ++a3;
      v5 += 16;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_237D4EE7C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v84 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v79 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9 + 8);
        v11 = 16 * v7;
        v12 = *a3 + 16 * v7;
        v13 = *(v12 + 8);
        v14 = (v12 + 40);
        v15 = v7 + 2;
        while (1)
        {
          v16 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v17 = (v13 < v10) ^ (*(v14 - 4) >= *v14);
          v14 += 4;
          ++v15;
          if ((v17 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v13 < v10)
        {
          if (v9 < v7)
          {
            goto LABEL_114;
          }

          if (v7 < v9)
          {
            if (v6 >= v16)
            {
              v6 = v16;
            }

            v18 = 16 * v6 - 16;
            v19 = v9;
            v20 = v7;
            do
            {
              if (v20 != --v19)
              {
                v21 = *a3;
                if (!*a3)
                {
                  goto LABEL_119;
                }

                v22 = v21 + v11;
                v23 = v21 + v18;
                v24 = *v22;
                v25 = *(v22 + 8);
                v26 = v11 != v18 || v22 >= v23 + 16;
                if (v26)
                {
                  *v22 = *v23;
                }

                *v23 = v24;
                *(v23 + 8) = v25;
              }

              ++v20;
              v18 -= 16;
              v11 += 16;
            }

            while (v20 < v19);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_113;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_115;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v27 = *a3;
            v28 = *a3 + 16 * v9;
            v29 = v7 - v9;
            do
            {
              v30 = v29;
              v31 = v28;
              do
              {
                v32 = *(v31 + 8);
                if (*(v31 - 8) >= v32)
                {
                  break;
                }

                if (!v27)
                {
                  goto LABEL_117;
                }

                v33 = *v31;
                *v31 = *(v31 - 16);
                *(v31 - 8) = v32;
                *(v31 - 16) = v33;
                v31 -= 16;
                v26 = __CFADD__(v30++, 1);
              }

              while (!v26);
              ++v9;
              v28 += 16;
              --v29;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_112;
      }

      v81 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_237D0B510();
        v8 = v77;
      }

      v34 = v8[2];
      v35 = v34 + 1;
      if (v34 >= v8[3] >> 1)
      {
        sub_237D0B510();
        v8 = v78;
      }

      v8[2] = v35;
      v36 = v8 + 4;
      v37 = &v8[2 * v34 + 4];
      *v37 = v7;
      v37[1] = v9;
      v82 = *a1;
      if (!*a1)
      {
        goto LABEL_120;
      }

      if (v34)
      {
        while (1)
        {
          v38 = v35 - 1;
          v39 = &v36[2 * v35 - 2];
          v40 = &v8[2 * v35];
          if (v35 >= 4)
          {
            break;
          }

          if (v35 == 3)
          {
            v41 = v8[4];
            v42 = v8[5];
            v51 = __OFSUB__(v42, v41);
            v43 = v42 - v41;
            v44 = v51;
LABEL_62:
            if (v44)
            {
              goto LABEL_102;
            }

            v56 = *v40;
            v55 = v40[1];
            v57 = __OFSUB__(v55, v56);
            v58 = v55 - v56;
            v59 = v57;
            if (v57)
            {
              goto LABEL_105;
            }

            v60 = v39[1];
            v61 = v60 - *v39;
            if (__OFSUB__(v60, *v39))
            {
              goto LABEL_108;
            }

            if (__OFADD__(v58, v61))
            {
              goto LABEL_110;
            }

            if (v58 + v61 >= v43)
            {
              if (v43 < v61)
              {
                v38 = v35 - 2;
              }

              goto LABEL_84;
            }

            goto LABEL_77;
          }

          if (v35 < 2)
          {
            goto LABEL_104;
          }

          v63 = *v40;
          v62 = v40[1];
          v51 = __OFSUB__(v62, v63);
          v58 = v62 - v63;
          v59 = v51;
LABEL_77:
          if (v59)
          {
            goto LABEL_107;
          }

          v65 = *v39;
          v64 = v39[1];
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_109;
          }

          if (v66 < v58)
          {
            goto LABEL_91;
          }

LABEL_84:
          if (v38 - 1 >= v35)
          {
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
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
            goto LABEL_116;
          }

          if (!*a3)
          {
            goto LABEL_118;
          }

          v70 = &v36[2 * v38 - 2];
          v71 = *v70;
          v72 = &v36[2 * v38];
          v73 = v72[1];
          sub_237D4F49C((*a3 + 16 * *v70), (*a3 + 16 * *v72), (*a3 + 16 * v73), v82);
          if (v5)
          {
            goto LABEL_95;
          }

          if (v73 < v71)
          {
            goto LABEL_97;
          }

          v74 = v8;
          v75 = v8[2];
          if (v38 > v75)
          {
            goto LABEL_98;
          }

          *v70 = v71;
          v70[1] = v73;
          if (v38 >= v75)
          {
            goto LABEL_99;
          }

          v35 = v75 - 1;
          memmove(&v36[2 * v38], v72 + 2, 16 * (v75 - 1 - v38));
          v74[2] = v75 - 1;
          v76 = v75 > 2;
          v8 = v74;
          v5 = 0;
          if (!v76)
          {
            goto LABEL_91;
          }
        }

        v45 = &v36[2 * v35];
        v46 = *(v45 - 8);
        v47 = *(v45 - 7);
        v51 = __OFSUB__(v47, v46);
        v48 = v47 - v46;
        if (v51)
        {
          goto LABEL_100;
        }

        v50 = *(v45 - 6);
        v49 = *(v45 - 5);
        v51 = __OFSUB__(v49, v50);
        v43 = v49 - v50;
        v44 = v51;
        if (v51)
        {
          goto LABEL_101;
        }

        v52 = v40[1];
        v53 = v52 - *v40;
        if (__OFSUB__(v52, *v40))
        {
          goto LABEL_103;
        }

        v51 = __OFADD__(v43, v53);
        v54 = v43 + v53;
        if (v51)
        {
          goto LABEL_106;
        }

        if (v54 >= v48)
        {
          v68 = *v39;
          v67 = v39[1];
          v51 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v51)
          {
            goto LABEL_111;
          }

          if (v43 < v69)
          {
            v38 = v35 - 2;
          }

          goto LABEL_84;
        }

        goto LABEL_62;
      }

LABEL_91:
      v6 = a3[1];
      v7 = v81;
      a4 = v79;
      if (v81 >= v6)
      {
        v84 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_121;
  }

  sub_237D4F370(&v84, *a1, a3);
LABEL_95:
}

uint64_t sub_237D4F370(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_237D4F620(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_237D4F49C((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_237D4F49C(char *a1, char *a2, float *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_237D0D050(a1, (a2 - a1) / 16, a4);
    v10 = &v4[4 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (v4[2] >= v6[2])
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 4;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 4;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v12;
    goto LABEL_13;
  }

  sub_237D0D050(a2, (a3 - a2) / 16, a4);
  v10 = &v4[4 * v9];
LABEL_15:
  for (v5 -= 4; v10 > v4 && v6 > v7; v5 -= 4)
  {
    if (*(v6 - 2) < *(v10 - 2))
    {
      v15 = v6 - 4;
      v13 = v5 + 4 == v6;
      v6 -= 4;
      if (!v13)
      {
        *v5 = *v15;
        v6 = v15;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 4)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 4;
  }

LABEL_28:
  v16 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[4 * v16])
  {
    memmove(v6, v4, 16 * v16);
  }

  return 1;
}

char *sub_237D4F634(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0470);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

double *OUTLINED_FUNCTION_1_50@<X0>(double *a1@<X0>, void *a2@<X8>)
{

  return sub_237D4E388(a1, v4, v3, v2, a2);
}

void OUTLINED_FUNCTION_2_49(double *a1)
{

  sub_237D4DF94(a1, v5, v4, v3, v2, v1, (v6 - 80));
}

void OUTLINED_FUNCTION_4_41(double *a1@<X0>, uint64_t *a2@<X8>)
{

  sub_237D4EB10(a1, v2, v3 - 208, a2);
}

void OUTLINED_FUNCTION_5_40(char *a1)
{

  sub_237D4E700(a1, v3, v2, v1, (v4 - 64));
}

void *sub_237D4F80C(void *a1, uint64_t a2, void *a3)
{
  *(v3 + 128) = a1;
  *(v3 + 136) = a3;
  *(v3 + 144) = a2;
  *(v3 + 152) = 0;
  *(v3 + 160) = 0;
  OUTLINED_FUNCTION_0_44();
  memcpy(__dst, a1 + 3, sizeof(__dst));
  v6 = a1[14];
  OUTLINED_FUNCTION_0_44();
  v7 = sub_237D6B330(__dst, v6, a1[15]);

  v8 = a3;
  sub_237C9FEDC(__dst, &v18);
  sub_237EF8260();
  sub_237EF8260();

  v9 = sub_237DA2564();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  swift_beginAccess();
  sub_237D86C8C();
  v16 = *(v7[15] + 16);
  sub_237D86D60(v16);
  sub_237D6D628(v16, v9, v11, v13, v15 & 1, v7 + 15);
  swift_endAccess();

  return v7;
}

BOOL sub_237D4F964()
{
  OUTLINED_FUNCTION_0_44();
  v1 = sub_237D6DA5C(v0[2]);
  OUTLINED_FUNCTION_0_44();
  v2 = v0[15];
  v3 = v0[16];
  v4 = *(v2 + 16);
  OUTLINED_FUNCTION_0_44();
  return v1 == v4 + ~*(*(v3 + 120) + 16);
}

void sub_237D4F9E0()
{

  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);

  sub_237D4FD74(v1, v2, v3, v4);
}

uint64_t sub_237D4FA18()
{
  v1 = v0;
  OUTLINED_FUNCTION_0_44();
  v2 = sub_237D6DA5C(*(v0 + 16));
  if (v2 != 1)
  {
    if (!v2)
    {
      v4 = [objc_allocWithZone(MEMORY[0x277CBEAC0]) init];
      v5 = &qword_27DEAEDC8;
      goto LABEL_6;
    }

LABEL_11:
    result = sub_237EF9740();
    __break(1u);
    return result;
  }

  swift_beginAccess();
  v3 = sub_237D6B08C();
  if (!v3)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = v3;
  swift_endAccess();
  v5 = &qword_280C8E1F8;
LABEL_6:
  v6 = sub_237C75918(0, v5);
  v15 = v6;
  v14[0] = v4;
  v8 = *(v1 + 136);
  v7 = *(v1 + 144);
  v9 = *(v1 + 152);
  if (*(v1 + 160))
  {
    sub_237C75918(0, &qword_280C8CCF0);
    v10 = v8;
    sub_237EF8260();
    v11 = sub_237D6B380();
    __swift_project_boxed_opaque_existential_1(v14, v15);
    [v10 setObject:sub_237EF9D30() forKeyedSubscript:v11];

    swift_unknownObjectRelease();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v14, v6);
    [v8 insertObject:sub_237EF9D30() atIndex:v7];
    swift_unknownObjectRelease();
    sub_237D4FD74(v8, v7, v9, 0);
  }

  __swift_destroy_boxed_opaque_existential_1(v14);
  v12 = sub_237CB34AC();

  sub_237D4FD74(*(v12 + 136), *(v12 + 144), *(v12 + 152), *(v12 + 160));
  return v12;
}

uint64_t sub_237D4FC70()
{
  sub_237D4FA18();

  return swift_deallocClassInstance();
}

uint64_t sub_237D4FCD0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
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

uint64_t sub_237D4FD10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

void sub_237D4FD74(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }
}

uint64_t sub_237D4FDC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_237C531B8(&v12, v10 + 40 * a1 + 32);
}

void *sub_237D4FE58(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v22 - v17;
  (*(v12 + 32))(&v22 - v17, v16);
  v19 = swift_allocObject();
  (*(v12 + 16))(v14, v18, a6);
  v20 = sub_237D4FFCC(a1, v14, a3, a4, v19, a6, a7);
  (*(v12 + 8))(v18, a6);
  return v20;
}

void *sub_237D4FFCC(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v12 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v26 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v26 - v16;
  (*(v12 + 32))(&v26 - v16, v15);
  *(a5 + 128) = a1;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);

  v18 = a4;
  v19 = sub_237EFA1E0();
  *(a5 + 136) = v18;
  *(a5 + 144) = v19;
  *(a5 + 152) = v20;
  *(a5 + 160) = 1;
  swift_beginAccess();
  memcpy(__dst, a1 + 3, sizeof(__dst));
  v21 = a1[14];
  swift_beginAccess();
  v22 = sub_237D6B330(__dst, v21, a1[15]);
  swift_beginAccess();
  sub_237C9FEDC(__dst, v28);
  sub_237EF8260();
  sub_237EF8260();

  sub_237D86C8C();
  v23 = *(v22[15] + 16);
  sub_237D86D60(v23);
  v24 = v26;
  (*(v12 + 16))(v26, v17, a6);
  sub_237D4FDC0(v23, v24, v22 + 15, a6, v27);
  swift_endAccess();

  (*(v12 + 8))(v17, a6);

  return v22;
}

uint64_t OUTLINED_FUNCTION_0_44()
{

  return swift_beginAccess();
}

unint64_t AudioReaderError.errorDescription.getter()
{
  v1 = 0xD000000000000020;
  if (*v0 == 1)
  {
    v1 = 0xD00000000000006BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000006FLL;
  }
}

unint64_t AudioReaderError.debugDescription.getter()
{
  v1 = 0xD000000000000020;
  if (*v0 == 1)
  {
    v1 = 0xD00000000000006BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000006FLL;
  }
}

uint64_t AudioReaderError.hashValue.getter()
{
  v1 = *v0;
  sub_237EFA120();
  MEMORY[0x2383E2210](v1);
  return sub_237EFA170();
}

unint64_t sub_237D503AC()
{
  result = qword_27DEB1690;
  if (!qword_27DEB1690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB1690);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AudioReaderError(_BYTE *result, unsigned int a2, unsigned int a3)
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

float sub_237D504FC(float a1, float a2, float a3, float a4, float a5)
{
  result = (((a5 - a3) / (a4 - a2)) * a1) + (a3 - (((a5 - a3) / (a4 - a2)) * a2));
  if ((LODWORD(result) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    return (a3 + a5) * 0.5;
  }

  return result;
}

uint64_t sub_237D5053C(uint64_t a1)
{
  v1 = MEMORY[0x277D84F90];
  if (*(a1 + 16))
  {
    v6 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_10_31();
    v1 = v6;
    do
    {
      OUTLINED_FUNCTION_15_26();
      if (v2)
      {
        sub_237C63670();
        v1 = v6;
      }

      OUTLINED_FUNCTION_12_30();
    }

    while (!v3);
  }

  v4 = sub_237CB8628(v1);

  return v4 | ((HIDWORD(v4) & 1) << 32);
}

uint64_t sub_237D505F8(uint64_t a1)
{
  v1 = MEMORY[0x277D84F90];
  if (*(a1 + 16))
  {
    v6 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_10_31();
    v1 = v6;
    do
    {
      OUTLINED_FUNCTION_15_26();
      if (v2)
      {
        sub_237C63670();
        v1 = v6;
      }

      OUTLINED_FUNCTION_12_30();
    }

    while (!v3);
  }

  v4 = sub_237CB8628(v1);

  return v4 | ((HIDWORD(v4) & 1) << 32);
}

void sub_237D506B4()
{
  OUTLINED_FUNCTION_8_39();
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v18 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_10_31();
    v3 = v18;
    do
    {
      OUTLINED_FUNCTION_13_21();
      if (v4)
      {
        OUTLINED_FUNCTION_16_25();
        v3 = v18;
      }

      OUTLINED_FUNCTION_11_30();
    }

    while (!v5);
  }

  v6 = sub_237D60F80(v3);

  if ((v6 & 0x100000000) != 0)
  {
    goto LABEL_24;
  }

  if (v2)
  {
    v8 = *&v6;
    v9 = (v1 + 40);
    v10 = MEMORY[0x277D84F90];
    do
    {
      *&v7 = *(v9 - 1);
      if (*&v7 == v8)
      {
        v17 = v7;
        v11 = *v9;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_1_51(*(v10 + 16));
        }

        v13 = *(v10 + 16);
        v12 = *(v10 + 24);
        if (v13 >= v12 >> 1)
        {
          OUTLINED_FUNCTION_0_45(v12);
        }

        *(v10 + 16) = v13 + 1;
        v14 = v10 + 12 * v13;
        *(&v7 + 1) = *(&v17 + 1);
        *(v14 + 32) = v17;
        *(v14 + 40) = v11;
      }

      v9 += 3;
      --v2;
    }

    while (v2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v15 = *(v10 + 16);
  if (!v15)
  {

LABEL_24:
    OUTLINED_FUNCTION_7_34();
    goto LABEL_25;
  }

  if (v15 != 1)
  {
    do
    {
      OUTLINED_FUNCTION_3_51();
    }

    while (v16 != 1);
  }

  OUTLINED_FUNCTION_14_29();
LABEL_25:
  OUTLINED_FUNCTION_5_41();
  OUTLINED_FUNCTION_9_29();
}

void sub_237D50830()
{
  OUTLINED_FUNCTION_8_39();
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v18 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_10_31();
    v3 = v18;
    do
    {
      OUTLINED_FUNCTION_13_21();
      if (v4)
      {
        OUTLINED_FUNCTION_16_25();
        v3 = v18;
      }

      OUTLINED_FUNCTION_11_30();
    }

    while (!v5);
  }

  v6 = sub_237D60F80(v3);

  if ((v6 & 0x100000000) != 0)
  {
    goto LABEL_24;
  }

  if (v2)
  {
    v8 = *&v6;
    v9 = (v1 + 36);
    v10 = MEMORY[0x277D84F90];
    do
    {
      if (COERCE_FLOAT(*v9) == v8)
      {
        *&v7 = *v9;
        v17 = v7;
        v11 = *(v9 - 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_1_51(*(v10 + 16));
        }

        v13 = *(v10 + 16);
        v12 = *(v10 + 24);
        if (v13 >= v12 >> 1)
        {
          OUTLINED_FUNCTION_0_45(v12);
        }

        *(v10 + 16) = v13 + 1;
        v14 = v10 + 12 * v13;
        *(v14 + 32) = v11;
        *(&v7 + 1) = *(&v17 + 1);
        *(v14 + 36) = v17;
      }

      v9 = (v9 + 12);
      --v2;
    }

    while (v2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v15 = *(v10 + 16);
  if (!v15)
  {

LABEL_24:
    OUTLINED_FUNCTION_7_34();
    goto LABEL_25;
  }

  if (v15 != 1)
  {
    do
    {
      OUTLINED_FUNCTION_2_50();
    }

    while (v16 != 1);
  }

  OUTLINED_FUNCTION_14_29();
LABEL_25:
  OUTLINED_FUNCTION_5_41();
  OUTLINED_FUNCTION_9_29();
}

void sub_237D509AC(uint64_t a1)
{
  OUTLINED_FUNCTION_22_18();
  v5 = sub_237D505F8(v4);
  if ((v5 & 0x100000000) == 0 && v1 >= 0.0 && *&v5 >= v1)
  {
    v7 = sub_237D5053C(a1);
    if ((v7 & 0x100000000) == 0 && v2 >= 0.0 && *&v7 >= v2)
    {
      sub_237D506B4();
      if ((v10 & 0x100000000) == 0 && v9 <= v2)
      {
        OUTLINED_FUNCTION_4_42();
        sub_237D50A8C();
        if ((v11 & 0x100000000) != 0 && *(a1 + 16) >= 2uLL)
        {
          OUTLINED_FUNCTION_4_42();
          sub_237D50BB0();
        }
      }
    }
  }

  OUTLINED_FUNCTION_20_19();
}

void sub_237D50A8C()
{
  OUTLINED_FUNCTION_8_39();
  if (*(v2 + 16))
  {
    OUTLINED_FUNCTION_22_18();
    v4 = (v3 + 36);
    v5 = MEMORY[0x277D84F90];
    do
    {
      v6 = *(v4 - 1);
      if (v6 == v1 && COERCE_FLOAT(*v4) >= v0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_1_51(*(v5 + 16));
        }

        OUTLINED_FUNCTION_6_33();
        if (v9)
        {
          OUTLINED_FUNCTION_0_45(v8);
        }

        OUTLINED_FUNCTION_21_22();
        *(v10 + 32) = v6;
        *(v10 + 36) = v11;
      }

      OUTLINED_FUNCTION_17_24();
    }

    while (!v12);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v13 = *(v5 + 16);
  if (v13)
  {
    if (v13 != 1)
    {
      do
      {
        OUTLINED_FUNCTION_3_51();
      }

      while (v14 != 1);
    }

    OUTLINED_FUNCTION_18_24();
  }

  else
  {
  }

  OUTLINED_FUNCTION_9_29();
}

void sub_237D50BB0()
{
  OUTLINED_FUNCTION_24_14();
  OUTLINED_FUNCTION_19_24();
  if (v1)
  {
    v5 = (v0 + 40);
    v6 = MEMORY[0x277D84F90];
    v7 = v1;
    do
    {
      *&v4 = *(v5 - 1);
      if (*&v4 < v2)
      {
        v39 = v4;
        v8 = *v5;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_1_51(*(v6 + 16));
        }

        v10 = *(v6 + 16);
        v9 = *(v6 + 24);
        if (v10 >= v9 >> 1)
        {
          OUTLINED_FUNCTION_0_45(v9);
        }

        *(v6 + 16) = v10 + 1;
        v11 = v6 + 12 * v10;
        *(&v4 + 1) = *(&v39 + 1);
        *(v11 + 32) = v39;
        *(v11 + 40) = v8;
      }

      v5 += 3;
      --v7;
    }

    while (v7);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v12 = *(v6 + 16);
  if (!v12)
  {
    goto LABEL_44;
  }

  v13 = *(v6 + 32);
  v14 = *(v6 + 36);
  v15 = *(v6 + 40);
  if (v12 != 1)
  {
    do
    {
      OUTLINED_FUNCTION_3_51();
      if (v37)
      {
        v14 = v17;
        v15 = v18;
      }
    }

    while (v16 != 1);
  }

  if (v1)
  {
    v19 = (v0 + 40);
    v20 = MEMORY[0x277D84F90];
    do
    {
      if (COERCE_FLOAT(*(v19 - 1)) > v2)
      {
        v40 = *(v19 - 1);
        v21 = *v19;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_1_51(*(v20 + 16));
        }

        OUTLINED_FUNCTION_6_33();
        if (v23)
        {
          OUTLINED_FUNCTION_0_45(v22);
        }

        OUTLINED_FUNCTION_21_22();
        *(v24 + 32) = v40;
        *(v24 + 40) = v21;
      }

      OUTLINED_FUNCTION_17_24();
    }

    while (!v25);
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  v26 = *(v20 + 16);
  if (!v26)
  {
LABEL_44:

LABEL_45:
    OUTLINED_FUNCTION_7_34();
    goto LABEL_46;
  }

  v27 = *(v20 + 32);
  v28 = *(v20 + 36);
  v29 = *(v20 + 40);
  v30 = v26 - 1;
  if (v30)
  {
    v31 = (v20 + 52);
    v32 = *(v20 + 36);
    do
    {
      v33 = *(v31 - 2);
      v34 = *(v31 - 1);
      v35 = *v31;
      v31 += 3;
      v36 = v35;
      if (v34 < v32)
      {
        v27 = v33;
        v28 = v34;
        v29 = v36;
        v32 = v34;
      }

      --v30;
    }

    while (v30);
  }

  v37 = v14 < v3 && v28 < v3;
  if (v37)
  {
    goto LABEL_45;
  }

  sub_237D504FC(v2, v13, v15, v27, v29);
  v38 = (v2 - (v13 - (v14 * ((v27 - v13) / (v28 - v14))))) / ((v27 - v13) / (v28 - v14));
  if (COERCE_UNSIGNED_INT(fabs(v38)) >= 0x7F800000)
  {
    v38 = v14;
  }

  if (v38 < v3)
  {
    goto LABEL_45;
  }

LABEL_46:
  OUTLINED_FUNCTION_5_41();
  OUTLINED_FUNCTION_23_20();
}

void sub_237D50E04(uint64_t a1)
{
  OUTLINED_FUNCTION_22_18();
  v5 = sub_237D505F8(v4);
  if ((v5 & 0x100000000) == 0 && v2 >= 0.0 && *&v5 >= v2)
  {
    v7 = sub_237D5053C(a1);
    if ((v7 & 0x100000000) == 0 && v1 >= 0.0 && *&v7 >= v1)
    {
      sub_237D50830();
      if ((v10 & 0x100000000) == 0 && v9 <= v2)
      {
        OUTLINED_FUNCTION_4_42();
        sub_237D50EE4();
        if ((v11 & 0x100000000) != 0 && *(a1 + 16) >= 2uLL)
        {
          OUTLINED_FUNCTION_4_42();
          sub_237D51008();
        }
      }
    }
  }

  OUTLINED_FUNCTION_20_19();
}

void sub_237D50EE4()
{
  OUTLINED_FUNCTION_8_39();
  if (*(v2 + 16))
  {
    OUTLINED_FUNCTION_22_18();
    v4 = (v3 + 36);
    v5 = MEMORY[0x277D84F90];
    do
    {
      v6 = *(v4 - 1);
      if (COERCE_FLOAT(*v4) == v1 && v6 >= v0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_1_51(*(v5 + 16));
        }

        OUTLINED_FUNCTION_6_33();
        if (v9)
        {
          OUTLINED_FUNCTION_0_45(v8);
        }

        OUTLINED_FUNCTION_21_22();
        *(v10 + 32) = v6;
        *(v10 + 36) = v11;
      }

      OUTLINED_FUNCTION_17_24();
    }

    while (!v12);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v13 = *(v5 + 16);
  if (v13)
  {
    if (v13 != 1)
    {
      do
      {
        OUTLINED_FUNCTION_2_50();
      }

      while (v14 != 1);
    }

    OUTLINED_FUNCTION_18_24();
  }

  else
  {
  }

  OUTLINED_FUNCTION_9_29();
}

void sub_237D51008()
{
  OUTLINED_FUNCTION_24_14();
  OUTLINED_FUNCTION_19_24();
  if (v1)
  {
    v5 = (v0 + 36);
    v6 = MEMORY[0x277D84F90];
    v7 = v1;
    do
    {
      if (COERCE_FLOAT(*v5) < v2)
      {
        *&v4 = *v5;
        v38 = v4;
        v8 = *(v5 - 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_1_51(*(v6 + 16));
        }

        v10 = *(v6 + 16);
        v9 = *(v6 + 24);
        if (v10 >= v9 >> 1)
        {
          OUTLINED_FUNCTION_0_45(v9);
        }

        *(v6 + 16) = v10 + 1;
        v11 = v6 + 12 * v10;
        *(v11 + 32) = v8;
        *(&v4 + 1) = *(&v38 + 1);
        *(v11 + 36) = v38;
      }

      v5 = (v5 + 12);
      --v7;
    }

    while (v7);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v12 = *(v6 + 16);
  if (!v12)
  {
    goto LABEL_42;
  }

  v13 = *(v6 + 32);
  v14 = *(v6 + 36);
  v15 = *(v6 + 40);
  if (v12 != 1)
  {
    do
    {
      OUTLINED_FUNCTION_2_50();
      if (v37)
      {
        v14 = v17;
        v15 = v18;
      }
    }

    while (v16 != 1);
  }

  if (v1)
  {
    v19 = (v0 + 36);
    v20 = MEMORY[0x277D84F90];
    do
    {
      if (COERCE_FLOAT(*v19) > v2)
      {
        v39 = *v19;
        v21 = *(v19 - 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_1_51(*(v20 + 16));
        }

        OUTLINED_FUNCTION_6_33();
        if (v23)
        {
          OUTLINED_FUNCTION_0_45(v22);
        }

        OUTLINED_FUNCTION_21_22();
        *(v24 + 32) = v21;
        *(v24 + 36) = v39;
      }

      OUTLINED_FUNCTION_17_24();
    }

    while (!v25);
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  v26 = *(v20 + 16);
  if (!v26)
  {
LABEL_42:

LABEL_43:
    OUTLINED_FUNCTION_7_34();
    goto LABEL_44;
  }

  v27 = *(v20 + 32);
  v28 = *(v20 + 36);
  v29 = *(v20 + 40);
  v30 = v26 - 1;
  if (v30)
  {
    v31 = (v20 + 52);
    v32 = *(v20 + 32);
    do
    {
      v33 = *(v31 - 2);
      v34 = *(v31 - 1);
      v35 = *v31;
      v31 += 3;
      v36 = v35;
      if (v33 < v32)
      {
        v27 = v33;
        v28 = v34;
        v29 = v36;
        v32 = v33;
      }

      --v30;
    }

    while (v30);
  }

  v37 = v13 < v3 && v27 < v3;
  if (v37)
  {
    goto LABEL_43;
  }

  sub_237D504FC(v2, v14, v15, v28, v29);
  if (sub_237D504FC(v2, v14, v13, v28, v27) < v3)
  {
    goto LABEL_43;
  }

LABEL_44:
  OUTLINED_FUNCTION_5_41();
  OUTLINED_FUNCTION_23_20();
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PrecisionRecallCurve.Point(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PrecisionRecallCurve.Point(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 12) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_45@<X0>(unint64_t a1@<X8>)
{

  return sub_237C636E8(a1 > 1, v1, 1);
}

uint64_t OUTLINED_FUNCTION_1_51@<X0>(uint64_t a1@<X8>)
{

  return sub_237C636E8(0, a1 + 1, 1);
}

void OUTLINED_FUNCTION_10_31()
{

  sub_237C63670();
}

void OUTLINED_FUNCTION_16_25()
{

  sub_237C63670();
}

void TabularEstimator.write(_:to:overwrite:)()
{
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v2);
  v4 = OUTLINED_FUNCTION_0_4(v3, v9);
  v5(v4, v1);
  type metadata accessor for EstimatorPackageEncoder(0);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_7_1();
  if (!v0)
  {
    OUTLINED_FUNCTION_9_2(v6, &off_284AD6C18);
    v7 = OUTLINED_FUNCTION_2_4();
    v8(v7);
    sub_237C66728(v11, &v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEAD880);
    OUTLINED_FUNCTION_8_3();
    sub_237D8533C();
    sub_237D8508C();

    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  OUTLINED_FUNCTION_11_3();
}

void TabularEstimator.read(from:)()
{
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v2);
  v4 = OUTLINED_FUNCTION_0_4(v3, v9);
  v5(v4, v0);
  type metadata accessor for EstimatorPackageDecoder(0);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_10_4();
  if (!v1)
  {
    OUTLINED_FUNCTION_9_2(v6, &off_284AD6C00);
    v7 = OUTLINED_FUNCTION_4_3();
    v8(v7);
    __swift_destroy_boxed_opaque_existential_1(&v10);
  }

  OUTLINED_FUNCTION_11_3();
}

void SupervisedTabularEstimator.write(_:to:overwrite:)()
{
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v2);
  v4 = OUTLINED_FUNCTION_0_4(v3, v9);
  v5(v4, v1);
  type metadata accessor for EstimatorPackageEncoder(0);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_7_1();
  if (!v0)
  {
    OUTLINED_FUNCTION_9_2(v6, &off_284AD6C18);
    v7 = OUTLINED_FUNCTION_2_4();
    v8(v7);
    sub_237C66728(v11, &v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEAD880);
    OUTLINED_FUNCTION_8_3();
    sub_237D8533C();
    sub_237D8508C();

    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  OUTLINED_FUNCTION_11_3();
}

void SupervisedTabularEstimator.read(from:)()
{
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v2);
  v4 = OUTLINED_FUNCTION_0_4(v3, v9);
  v5(v4, v0);
  type metadata accessor for EstimatorPackageDecoder(0);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_10_4();
  if (!v1)
  {
    OUTLINED_FUNCTION_9_2(v6, &off_284AD6C00);
    v7 = OUTLINED_FUNCTION_4_3();
    v8(v7);
    __swift_destroy_boxed_opaque_existential_1(&v10);
  }

  OUTLINED_FUNCTION_11_3();
}

void UpdatableSupervisedTabularEstimator.writeWithOptimizer(_:to:overwrite:)()
{
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v2);
  v4 = OUTLINED_FUNCTION_0_4(v3, v9);
  v5(v4, v1);
  type metadata accessor for EstimatorPackageEncoder(0);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_7_1();
  if (!v0)
  {
    OUTLINED_FUNCTION_9_2(v6, &off_284AD6C18);
    v7 = OUTLINED_FUNCTION_2_4();
    v8(v7);
    sub_237C66728(v11, &v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEAD880);
    OUTLINED_FUNCTION_8_3();
    sub_237D8533C();
    sub_237D8508C();

    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  OUTLINED_FUNCTION_11_3();
}

void UpdatableSupervisedTabularEstimator.readWithOptimizer(from:)()
{
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v2);
  v4 = OUTLINED_FUNCTION_0_4(v3, v9);
  v5(v4, v0);
  type metadata accessor for EstimatorPackageDecoder(0);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_10_4();
  if (!v1)
  {
    OUTLINED_FUNCTION_9_2(v6, &off_284AD6C00);
    v7 = OUTLINED_FUNCTION_4_3();
    v8(v7);
    __swift_destroy_boxed_opaque_existential_1(&v10);
  }

  OUTLINED_FUNCTION_11_3();
}

void sub_237D51BD4()
{
  v1 = *(v0 + 40);
  os_unfair_lock_lock(v1);
  if (XGDMatrixSetDenseInfo())
  {
    if (XGBGetLastError())
    {
      v2 = sub_237EF8640();
      v4 = v3;
      sub_237D5206C();
      swift_allocError();
      *v5 = v2;
      v5[1] = v4;
      swift_willThrow();
      os_unfair_lock_unlock(v1);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    os_unfair_lock_unlock(v1);
  }
}

uint64_t sub_237D51C98(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[3];
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = v3;
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;
  *(v1 + 24) = nullsub_1;
  *(v1 + 32) = v6;
  if ((v3 | v2) < 0)
  {
    __break(1u);
  }

  result = XGDMatrixCreateFromMat();
  if (result)
  {
    result = XGBGetLastError();
    if (result)
    {
      v8 = sub_237EF8640();
      v10 = v9;
      sub_237D5206C();
      swift_allocError();
      *v11 = v8;
      v11[1] = v10;
      swift_willThrow();

      swift_deallocPartialClassInstance();
      return v1;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_237D51E3C(uint64_t a1)
{
  *(v1 + 24) = nullsub_1;
  *(v1 + 32) = a1;

  result = XGDMatrixCreateFromMat();
  if (result)
  {
    result = XGBGetLastError();
    if (result)
    {
      v3 = sub_237EF8640();
      v5 = v4;
      sub_237D5206C();
      swift_allocError();
      *v6 = v3;
      v6[1] = v5;
      swift_willThrow();

      swift_deallocPartialClassInstance();
      return v1;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_237D51FAC()
{
  XGDMatrixFree();
  v1 = *(v0 + 24);

  v1(v2);

  MEMORY[0x2383E2DF0](*(v0 + 40), -1, -1);

  return v0;
}

uint64_t sub_237D52014()
{
  sub_237D51FAC();

  return swift_deallocClassInstance();
}

unint64_t sub_237D5206C()
{
  result = qword_27DEB1698;
  if (!qword_27DEB1698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB1698);
  }

  return result;
}

uint64_t ColumnAggregator.columnSelection.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return sub_237D520D4(v2, v3);
}

uint64_t sub_237D520D4(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return sub_237EF8260();
  }

  return result;
}

uint64_t ColumnAggregator.columnSelection.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = sub_237D52128(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t sub_237D52128(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t ColumnAggregator.init(columnSelection:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

void ColumnAggregator.applied(to:eventHandler:)()
{
  OUTLINED_FUNCTION_13_4();
  v62 = v2;
  v65 = v3;
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v4);
  v61 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v6;
  v58 = *(v6 + 32);
  v7 = *(v58 + 8);
  v59 = v8;
  v60 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19();
  v56 = v10;
  v11 = sub_237EF6310();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_2();
  v64 = v15;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v16);
  v18 = &v55 - v17;
  v69 = sub_237EF61A0();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v0 + 8);
  v67 = *v0;
  v68 = v24;
  sub_237D520D4(v67, v24);
  v25 = sub_237CACD68(&v67);
  sub_237D52128(v67, v68);
  v67 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0);
  sub_237D5D274(&qword_27DEAEC30, &qword_27DEAEBD0);
  sub_237EF6180();

  v26 = sub_237EF6170();
  (*(v20 + 8))(v23, v69);
  v27 = 0;
  v28 = 0;
  v70 = *(v26 + 16);
  v66 = v13 + 16;
  v29 = (v13 + 8);
  while (v70 != v27)
  {
    if (v27 >= *(v26 + 16))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_53_6();
    v32 = (*(v13 + 16))(v18, v30 + v31 * v27, v11);
    sub_237D52688(v32, v33, v34, v35, v36, v37, v38, v39, v55, v56, AssociatedTypeWitness, v58, v59, v60, v61, v62, v63, v64, v65, v66);
    if (v1)
    {
      (*v29)(v18, v11);
      goto LABEL_14;
    }

    v41 = v40;
    ++v27;
    (*v29)(v18, v11);
    v42 = __OFADD__(v28, v41);
    v28 += v41;
    if (v42)
    {
      __break(1u);
      break;
    }
  }

  v43 = v59;
  v63 = *(v63 + 24);
  v55 = sub_237EF7E90();
  swift_getAssociatedConformanceWitness();
  sub_237EF9FA0();
  v44 = v43;
  sub_237EF9CE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_237F04760;
  *(v45 + 32) = sub_237EF6100();
  *(v45 + 40) = v28;
  OUTLINED_FUNCTION_0_18();
  swift_getWitnessTable();
  v46 = v44;
  sub_237EF7F80();
  v47 = 0;
  v67 = 0;
  v48 = v58;
  while (v70 != v47)
  {
    if (v47 >= *(v26 + 16))
    {
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_53_6();
    v51 = v64;
    (*(v13 + 16))(v64, v49 + v50 * v47, v11);
    sub_237D54820(v51, &v67, v65, v46, v63, v48, v52, v53, v55, v56, AssociatedTypeWitness, v58, v59, v60, v61, v62, v63, v64, v65, v66);
    if (v1)
    {
      (*v29)(v51, v11);

      OUTLINED_FUNCTION_22_3();
      (*(v54 + 8))(v65);
      goto LABEL_16;
    }

    ++v47;
    (*v29)(v51, v11);
  }

LABEL_14:

LABEL_16:
  OUTLINED_FUNCTION_12_6();
}

void sub_237D52688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_4();
  a19 = v22;
  a20 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB19D8);
  OUTLINED_FUNCTION_7_35(v24, &v324);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAA8);
  v28 = OUTLINED_FUNCTION_3_2(v27, v346);
  v304 = v29;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB19B8);
  OUTLINED_FUNCTION_7_35(v32, &v328);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17B0);
  OUTLINED_FUNCTION_18(v35);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAA0);
  v39 = OUTLINED_FUNCTION_7_35(v38, &v325);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA90);
  v44 = OUTLINED_FUNCTION_3_2(v43, v347);
  v308 = v45;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1990);
  OUTLINED_FUNCTION_7_35(v48, &v335);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17B8);
  OUTLINED_FUNCTION_18(v51);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600);
  v55 = OUTLINED_FUNCTION_7_35(v54, &v332);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA80);
  v60 = OUTLINED_FUNCTION_3_2(v59, &a11);
  v311 = v61;
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1960);
  OUTLINED_FUNCTION_7_35(v64, &v344);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_19();
  v330 = v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17C0);
  OUTLINED_FUNCTION_18(v67);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA78);
  v71 = OUTLINED_FUNCTION_7_35(v70, &v342);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v72);
  v329 = v301 - v73;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v75);
  v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA68);
  OUTLINED_FUNCTION_1();
  v321 = v76;
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_2_2();
  v345 = v78;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v80);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1938);
  OUTLINED_FUNCTION_7_35(v81, &a15);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_19();
  v338 = v83;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAE8);
  v85 = OUTLINED_FUNCTION_3_2(v84, &a13);
  v326 = v86;
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_22_1();
  v331 = v88;
  v344 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1918);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_19();
  v339 = v90;
  v343 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAD8);
  OUTLINED_FUNCTION_1();
  v334 = v91;
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_2_2();
  v333 = v93;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_22_1();
  v335 = v95;
  v342 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB18F8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_19();
  v340 = v97;
  v341 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAC8);
  OUTLINED_FUNCTION_1();
  v337 = v98;
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_2_2();
  v336 = v100;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v101);
  v103 = v301 - v102;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB18D8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v104);
  v106 = v301 - v105;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAB8);
  OUTLINED_FUNCTION_1();
  v109 = v108;
  MEMORY[0x28223BE20](v110);
  v112 = v301 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v113);
  v115 = v301 - v114;
  sub_237EF62F0();
  if (swift_dynamicCastMetatype())
  {
    goto LABEL_6;
  }

  v301[2] = v112;
  v302 = v106;
  v116 = v342;
  v301[4] = v115;
  v301[3] = v109;
  v301[1] = v103;
  v117 = v341;
  v118 = v343;
  v119 = v345;
  v301[5] = v20;
  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECA0);
  if (swift_dynamicCastMetatype())
  {
    sub_237EF62E0();
    v120 = sub_237CA2ED8();
    if (v120 >= 2)
    {
      v121 = *(v120 + 16);
      sub_237C583C0(v120);
    }

    else
    {
      v121 = 0;
    }

    OUTLINED_FUNCTION_31_10();
    v124 = OUTLINED_FUNCTION_31_0();
    v125(v124);
    OUTLINED_FUNCTION_2_51();
    sub_237D5D274(v126, &qword_27DEAEAB8);
    sub_237EF86F0();
    OUTLINED_FUNCTION_1_52();
    sub_237D5D274(v127, &qword_27DEAEAB8);
    while (1)
    {
      v128 = v302;
      OUTLINED_FUNCTION_23_12();
      sub_237EF8DE0();
      OUTLINED_FUNCTION_30_17();
      if (v185)
      {
        break;
      }

      v129 = sub_237EF8F00();
      v131 = *v130;
      sub_237EF8260();
      v132 = OUTLINED_FUNCTION_29_15();
      v129(v132);
      sub_237EF8DF0();
      if (v131)
      {
        v133 = *(v131 + 16);

        if (v133 != v121)
        {
          goto LABEL_20;
        }
      }

      else if (v121)
      {
LABEL_20:
        sub_237C65484(v302, &qword_27DEB18D8);
        OUTLINED_FUNCTION_41_5();
        sub_237EF6300();
        OUTLINED_FUNCTION_50_7();
        v134 = OUTLINED_FUNCTION_45_0();
        OUTLINED_FUNCTION_34_6(v134, v135);
        swift_willThrow();
        v136 = OUTLINED_FUNCTION_69_4();
        v137(v136);
        goto LABEL_6;
      }
    }

    sub_237C65484(v128, &qword_27DEB18D8);
    v138 = OUTLINED_FUNCTION_69_4();
    v139(v138);
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD350);
  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_31_10();
    sub_237EF62E0();
    v122 = sub_237CA2EF4();
    if (v122 >= 2)
    {
      v123 = *(v122 + 16);
      sub_237C583C0(v122);
    }

    else
    {
      v123 = 0;
    }

    (*(v337 + 16))(v336, v107, v117);
    OUTLINED_FUNCTION_2_51();
    OUTLINED_FUNCTION_57_6(v142);
    sub_237EF86F0();
    OUTLINED_FUNCTION_1_52();
    OUTLINED_FUNCTION_57_6(v143);
    while (1)
    {
      v144 = v340;
      OUTLINED_FUNCTION_24_8();
      sub_237EF8DE0();
      OUTLINED_FUNCTION_30_17();
      if (v185)
      {
        break;
      }

      OUTLINED_FUNCTION_39_8();
      OUTLINED_FUNCTION_54_4();
      v145 = OUTLINED_FUNCTION_29_15();
      v21(v145);
      OUTLINED_FUNCTION_58_4();
      if (&unk_237F06910)
      {

        if (v123 != 0xD0002778CLL)
        {
          goto LABEL_32;
        }
      }

      else if (v123)
      {
LABEL_32:
        sub_237C65484(v340, &qword_27DEB18F8);
        sub_237EF6300();
        OUTLINED_FUNCTION_50_7();
        v146 = OUTLINED_FUNCTION_45_0();
        OUTLINED_FUNCTION_34_6(v146, v147);
        swift_willThrow();
        v148 = OUTLINED_FUNCTION_67_2();
        v149(v148);
        goto LABEL_6;
      }
    }

    sub_237C65484(v144, &qword_27DEB18F8);
    v150 = OUTLINED_FUNCTION_67_2();
    v151(v150);
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3D8);
  if (OUTLINED_FUNCTION_35_8())
  {
    sub_237EF62E0();
    v140 = sub_237CA2FC0();
    if (v140 >= 2)
    {
      v141 = *(v140 + 16);
      sub_237C583C0(v140);
    }

    else
    {
      v141 = 0;
    }

    v154 = v334;
    v155 = OUTLINED_FUNCTION_51_6();
    v156(v155);
    OUTLINED_FUNCTION_2_51();
    OUTLINED_FUNCTION_57_6(v157);
    sub_237EF86F0();
    OUTLINED_FUNCTION_1_52();
    OUTLINED_FUNCTION_57_6(v158);
    while (1)
    {
      v159 = v339;
      OUTLINED_FUNCTION_24_8();
      sub_237EF8DE0();
      OUTLINED_FUNCTION_30_17();
      if (v185)
      {
        break;
      }

      OUTLINED_FUNCTION_39_8();
      OUTLINED_FUNCTION_54_4();
      v160 = OUTLINED_FUNCTION_29_15();
      v21(v160);
      OUTLINED_FUNCTION_58_4();
      if (&unk_237F0EF10)
      {

        if (v141 != 0x100001F15ELL)
        {
          goto LABEL_44;
        }
      }

      else if (v141)
      {
LABEL_44:
        sub_237C65484(v339, &qword_27DEB1918);
        sub_237EF6300();
        OUTLINED_FUNCTION_50_7();
        v161 = OUTLINED_FUNCTION_45_0();
        OUTLINED_FUNCTION_34_6(v161, v162);
        swift_willThrow();
        (*(v154 + 8))(v335, v118);
        goto LABEL_6;
      }
    }

    sub_237C65484(v159, &qword_27DEB1918);
    (*(v154 + 8))(v335, v118);
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECA8);
  OUTLINED_FUNCTION_31_0();
  if (!swift_dynamicCastMetatype())
  {
    v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA50);
    OUTLINED_FUNCTION_31_0();
    if (swift_dynamicCastMetatype())
    {
      OUTLINED_FUNCTION_24_15();
      sub_237EF62E0();
      v164 = v314;
      sub_237CA3018(v314);
      OUTLINED_FUNCTION_26_14(v164, 1, &v342);
      v344 = v163;
      if (v185)
      {
        sub_237C65484(v164, &qword_27DEB17C0);
        v165 = MEMORY[0x277D84F90];
      }

      else
      {
        OUTLINED_FUNCTION_37_8();
        sub_237CF9FF0(v180, v181, v182);
        v183 = OUTLINED_FUNCTION_23_0();
        OUTLINED_FUNCTION_28_1(v183, v184, v163);
        if (v185)
        {
          sub_237C65484(v313, &qword_27DEAEA78);
          v165 = MEMORY[0x277D84F90];
          v163 = v344;
        }

        else
        {
          v163 = v344;
          v165 = sub_237EF7E20();
          OUTLINED_FUNCTION_22_3();
          v186 = OUTLINED_FUNCTION_31_0();
          v187(v186);
        }
      }

      OUTLINED_FUNCTION_63_3();
      v188(v119, v327, v332);
      OUTLINED_FUNCTION_2_51();
      OUTLINED_FUNCTION_55_5(v189);
      v190 = v330;
      sub_237EF86F0();
      OUTLINED_FUNCTION_1_52();
      OUTLINED_FUNCTION_55_5(v191);
      v345 = v163 - 8;
      v343 = v165;
      while (1)
      {
        sub_237EF8DE0();
        OUTLINED_FUNCTION_30_17();
        if (v185)
        {
          break;
        }

        v192 = sub_237EF8F00();
        v193 = v329;
        sub_237C9E294(v194, v329, &qword_27DEAEA78);
        v195 = OUTLINED_FUNCTION_29_15();
        v192(v195);
        sub_237EF8DF0();
        OUTLINED_FUNCTION_65_3();
        sub_237C9E294(v196, v197, &qword_27DEAEA78);
        OUTLINED_FUNCTION_28_1(v193, 1, v344);
        if (v185)
        {
          OUTLINED_FUNCTION_36_10();
          sub_237C65484(v214, v215);
          OUTLINED_FUNCTION_36_10();
          sub_237C65484(v216, v217);
LABEL_89:

          v190 = v330;
          goto LABEL_90;
        }

        v198 = sub_237EF7E20();
        v199 = OUTLINED_FUNCTION_23_12();
        v200(v199);
        v201 = *(v198 + 16);
        if (v201 != *(v343 + 16))
        {
          sub_237C65484(v193, &qword_27DEAEA78);

          goto LABEL_89;
        }

        v190 = v330;
        if (v201 && v198 != v343)
        {
          v202 = 32;
          while (*(v198 + v202) == *(v343 + v202))
          {
            v202 += 8;
            if (!--v201)
            {
              goto LABEL_75;
            }
          }

          sub_237C65484(v193, &qword_27DEAEA78);

LABEL_90:
          sub_237C65484(v190, &qword_27DEB1960);
          OUTLINED_FUNCTION_41_5();
          sub_237EF6300();
          OUTLINED_FUNCTION_50_7();
          v218 = OUTLINED_FUNCTION_45_0();
          OUTLINED_FUNCTION_34_6(v218, v219);
LABEL_91:
          swift_willThrow();
          OUTLINED_FUNCTION_18_25();
          v221 = v327;
          v222 = v332;
          goto LABEL_141;
        }

LABEL_75:
        sub_237C65484(v193, &qword_27DEAEA78);
      }

      sub_237C65484(v190, &qword_27DEB1960);
      if (*(v343 + 16) > 1uLL)
      {

        sub_237D4A59C();
        OUTLINED_FUNCTION_45_0();
        *v213 = xmmword_237F07A60;
        goto LABEL_91;
      }

      sub_237CA2FF8(v343);
      OUTLINED_FUNCTION_56_7();
      OUTLINED_FUNCTION_18_25();
      v221 = v327;
      v222 = v332;
      goto LABEL_141;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
    OUTLINED_FUNCTION_9_11();
    v345 = v176;
    if (swift_dynamicCastMetatype())
    {
      OUTLINED_FUNCTION_31_10();
      OUTLINED_FUNCTION_70_3();
      OUTLINED_FUNCTION_32_12();
      sub_237CA3104(v177);
      OUTLINED_FUNCTION_26_14(v116, 1, &v332);
      if (v185)
      {
        v178 = &qword_27DEB17B8;
        v179 = &v338;
      }

      else
      {
        OUTLINED_FUNCTION_37_8();
        sub_237CF9FF0(v207, v208, v209);
        v210 = OUTLINED_FUNCTION_23_0();
        OUTLINED_FUNCTION_28_1(v210, v211, v345);
        if (!v212)
        {
          v344 = sub_237EF7E20();
          OUTLINED_FUNCTION_22_3();
          v223 = OUTLINED_FUNCTION_31_0();
          v224(v223);
          goto LABEL_92;
        }

        v178 = &qword_27DEAD600;
        v179 = &v333;
      }

      sub_237C65484(*(v179 - 32), v178);
      v344 = MEMORY[0x277D84F90];
LABEL_92:
      OUTLINED_FUNCTION_63_3();
      v225(v309, v315, v322);
      OUTLINED_FUNCTION_2_51();
      OUTLINED_FUNCTION_55_5(v226);
      v227 = v320;
      sub_237EF86F0();
      OUTLINED_FUNCTION_1_52();
      OUTLINED_FUNCTION_55_5(v228);
      OUTLINED_FUNCTION_66_2();
      while (1)
      {
        sub_237EF8DE0();
        OUTLINED_FUNCTION_30_17();
        if (v185)
        {
          break;
        }

        v229 = sub_237EF8F00();
        OUTLINED_FUNCTION_65_3();
        sub_237C9E294(v230, v231, &qword_27DEAD600);
        v232 = OUTLINED_FUNCTION_29_15();
        v229(v232);
        sub_237EF8DF0();
        OUTLINED_FUNCTION_65_3();
        sub_237C9E294(v233, v234, &qword_27DEAD600);
        OUTLINED_FUNCTION_28_1(&unk_237F068E0, 1, v345);
        if (v185)
        {
          OUTLINED_FUNCTION_36_10();
          sub_237C65484(v252, v253);
          OUTLINED_FUNCTION_36_10();
          sub_237C65484(v254, v255);
          goto LABEL_103;
        }

        v235 = sub_237EF7E20();
        v236 = OUTLINED_FUNCTION_23_12();
        v237(v236);
        v238 = *(v235 + 16);
        if (v238 != *(v344 + 16))
        {
          goto LABEL_102;
        }

        if (v238 && v235 != v344)
        {
          v239 = 32;
          while (*(v235 + v239) == *(v344 + v239))
          {
            v239 += 8;
            if (!--v238)
            {
              goto LABEL_101;
            }
          }

LABEL_102:
          sub_237C65484(v323, &qword_27DEAD600);

LABEL_103:

          sub_237C65484(v320, &qword_27DEB1990);
          OUTLINED_FUNCTION_41_5();
          sub_237EF6300();
          OUTLINED_FUNCTION_50_7();
          v240 = OUTLINED_FUNCTION_45_0();
          OUTLINED_FUNCTION_34_6(v240, v241);
LABEL_104:
          swift_willThrow();
          OUTLINED_FUNCTION_18_25();
          v221 = v315;
          v242 = &a11;
          goto LABEL_140;
        }

LABEL_101:
        sub_237C65484(v323, &qword_27DEAD600);

        v227 = v320;
      }

      sub_237C65484(v227, &qword_27DEB1990);
      if (*(v344 + 16) > 1uLL)
      {

        sub_237D4A59C();
        OUTLINED_FUNCTION_45_0();
        *v251 = xmmword_237F07A60;
        goto LABEL_104;
      }

      sub_237CA2FF8(v344);
      OUTLINED_FUNCTION_56_7();
      OUTLINED_FUNCTION_18_25();
      v221 = v315;
      v293 = &a11;
LABEL_148:
      v222 = *(v293 - 32);
LABEL_141:
      v220(v221, v222);
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60);
    OUTLINED_FUNCTION_9_11();
    v345 = v203;
    if (!swift_dynamicCastMetatype())
    {
      sub_237C75918(0, &qword_27DEAF160);
      OUTLINED_FUNCTION_31_0();
      if (!swift_dynamicCastMetatype())
      {
        goto LABEL_6;
      }

      OUTLINED_FUNCTION_24_15();
      sub_237EF62E0();
      v243 = sub_237CA32DC();
      if (v243 >= 2)
      {
        v277 = [v243 shape];
        v278 = OUTLINED_FUNCTION_62_3();
        sub_237D5CEDC(v278);
        sub_237C75918(0, &qword_280C8CCF8);
        OUTLINED_FUNCTION_9_11();
        v244 = sub_237EF8910();
      }

      else
      {
        v244 = MEMORY[0x277D84F90];
      }

      OUTLINED_FUNCTION_63_3();
      v279(v303, v307, v317);
      OUTLINED_FUNCTION_2_51();
      sub_237D5D274(v280, &qword_27DEAEAA8);
      sub_237EF86F0();
      OUTLINED_FUNCTION_1_52();
      sub_237D5D274(v281, &qword_27DEAEAA8);
      while (1)
      {
        v282 = v316;
        sub_237EF8DE0();
        OUTLINED_FUNCTION_30_17();
        if (v185)
        {
          break;
        }

        v283 = sub_237EF8F00();
        v285 = *v284;
        v286 = *v284;
        v287 = OUTLINED_FUNCTION_29_15();
        v283(v287);
        sub_237EF8DF0();
        if (v285)
        {
          v288 = [v286 shape];
          sub_237C75918(0, &qword_280C8CCF8);
          OUTLINED_FUNCTION_9_11();
          sub_237EF8910();

          sub_237EF8260();
          v289 = OUTLINED_FUNCTION_24_8();
          LOBYTE(v288) = sub_237C60FA4(v289, v290);

          if (v288)
          {
            continue;
          }
        }

        sub_237C65484(v316, &qword_27DEB19D8);
        OUTLINED_FUNCTION_41_5();
        sub_237EF6300();
        OUTLINED_FUNCTION_50_7();
        v291 = OUTLINED_FUNCTION_45_0();
        OUTLINED_FUNCTION_34_6(v291, v292);
        goto LABEL_139;
      }

      sub_237C65484(v316, &qword_27DEB19D8);
      if (sub_237D6DA5C(v244) <= 1)
      {
        sub_237CA338C(v244);
        OUTLINED_FUNCTION_62_3();

        if (v282)
        {
          [v282 integerValue];
        }

        OUTLINED_FUNCTION_18_25();
        v300(v307, v317);
        goto LABEL_6;
      }

      sub_237D4A59C();
      OUTLINED_FUNCTION_45_0();
      *v294 = xmmword_237F07A60;
LABEL_139:
      swift_willThrow();
      OUTLINED_FUNCTION_18_25();
      v221 = v307;
      v242 = v346;
LABEL_140:
      v222 = *(v242 - 32);
      goto LABEL_141;
    }

    OUTLINED_FUNCTION_31_10();
    OUTLINED_FUNCTION_70_3();
    OUTLINED_FUNCTION_32_12();
    sub_237CA31F0(v204);
    OUTLINED_FUNCTION_26_14(v116, 1, &v325);
    if (v185)
    {
      v205 = &qword_27DEB17B0;
      v206 = &v331;
    }

    else
    {
      OUTLINED_FUNCTION_37_8();
      sub_237CF9FF0(v245, v246, v247);
      v248 = OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_28_1(v248, v249, v345);
      if (!v250)
      {
        v256 = sub_237EF7E20();
        OUTLINED_FUNCTION_22_3();
        v257 = OUTLINED_FUNCTION_31_0();
        v258(v257);
        goto LABEL_116;
      }

      v205 = &qword_27DEAEAA0;
      v206 = &v326;
    }

    sub_237C65484(*(v206 - 32), v205);
    v256 = MEMORY[0x277D84F90];
LABEL_116:
    OUTLINED_FUNCTION_63_3();
    v259(v305, v310, v319);
    OUTLINED_FUNCTION_2_51();
    OUTLINED_FUNCTION_55_5(v260);
    sub_237EF86F0();
    v344 = *(v306 + 36);
    OUTLINED_FUNCTION_1_52();
    OUTLINED_FUNCTION_55_5(v261);
    OUTLINED_FUNCTION_66_2();
    while (1)
    {
      sub_237EF8DE0();
      OUTLINED_FUNCTION_30_17();
      if (v185)
      {
        break;
      }

      v262 = sub_237EF8F00();
      OUTLINED_FUNCTION_65_3();
      sub_237C9E294(v263, v264, &qword_27DEAEAA0);
      v265 = OUTLINED_FUNCTION_29_15();
      v262(v265);
      sub_237EF8DF0();
      OUTLINED_FUNCTION_37_8();
      sub_237C9E294(v266, v267, &qword_27DEAEAA0);
      v268 = OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_28_1(v268, v269, v345);
      if (v185)
      {
        OUTLINED_FUNCTION_36_10();
        sub_237C65484(v296, v297);
        OUTLINED_FUNCTION_36_10();
        sub_237C65484(v298, v299);
        goto LABEL_127;
      }

      v270 = sub_237EF7E20();
      v271 = OUTLINED_FUNCTION_23_12();
      v272(v271);
      v273 = *(v270 + 16);
      if (v273 != *(v256 + 16))
      {
        goto LABEL_126;
      }

      if (v273 && v270 != v256)
      {
        v274 = 32;
        while (*(v270 + v274) == *(v256 + v274))
        {
          v274 += 8;
          if (!--v273)
          {
            goto LABEL_125;
          }
        }

LABEL_126:
        sub_237C65484(v312, &qword_27DEAEAA0);

LABEL_127:

        sub_237C65484(v318, &qword_27DEB19B8);
        OUTLINED_FUNCTION_41_5();
        sub_237EF6300();
        OUTLINED_FUNCTION_50_7();
        v275 = OUTLINED_FUNCTION_45_0();
        OUTLINED_FUNCTION_34_6(v275, v276);
LABEL_128:
        swift_willThrow();
        OUTLINED_FUNCTION_18_25();
        v221 = v310;
        v242 = v347;
        goto LABEL_140;
      }

LABEL_125:
      sub_237C65484(v312, &qword_27DEAEAA0);
    }

    sub_237C65484(v318, &qword_27DEB19B8);
    if (*(v256 + 16) > 1uLL)
    {

      sub_237D4A59C();
      OUTLINED_FUNCTION_45_0();
      *v295 = xmmword_237F07A60;
      goto LABEL_128;
    }

    sub_237CA2FF8(v256);
    OUTLINED_FUNCTION_56_7();
    OUTLINED_FUNCTION_18_25();
    v221 = v310;
    v293 = v347;
    goto LABEL_148;
  }

  OUTLINED_FUNCTION_45_5();
  v152 = sub_237CA2FDC();
  if (v152 >= 2)
  {
    v153 = *(v152 + 16);
    sub_237C583C0(v152);
  }

  else
  {
    v153 = 0;
  }

  v166 = v324;
  v167 = v326;
  v168 = OUTLINED_FUNCTION_51_6();
  v169(v168);
  OUTLINED_FUNCTION_2_51();
  OUTLINED_FUNCTION_57_6(v170);
  sub_237EF86F0();
  OUTLINED_FUNCTION_1_52();
  OUTLINED_FUNCTION_57_6(v171);
  while (1)
  {
    v172 = v338;
    OUTLINED_FUNCTION_24_8();
    sub_237EF8DE0();
    OUTLINED_FUNCTION_30_17();
    if (v185)
    {
      break;
    }

    OUTLINED_FUNCTION_39_8();
    OUTLINED_FUNCTION_54_4();
    v173 = OUTLINED_FUNCTION_29_15();
    v21(v173);
    OUTLINED_FUNCTION_58_4();
    if (&qword_237F06920)
    {

      if (v153 != 0x6000277ACLL)
      {
        goto LABEL_57;
      }
    }

    else if (v153)
    {
LABEL_57:
      sub_237C65484(v338, &qword_27DEB1938);
      sub_237EF6300();
      OUTLINED_FUNCTION_50_7();
      v174 = OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_34_6(v174, v175);
      swift_willThrow();
      (*(v167 + 8))(v331, v166);
      goto LABEL_6;
    }
  }

  sub_237C65484(v172, &qword_27DEB1938);
  (*(v167 + 8))(v331, v166);
LABEL_6:
  OUTLINED_FUNCTION_12_6();
}

void sub_237D54820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_4();
  a19 = v21;
  a20 = v22;
  v318 = v23;
  v319 = v20;
  v317 = v24;
  v26 = v25;
  v28 = v27;
  v321 = v29;
  v31 = v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAA8);
  OUTLINED_FUNCTION_3_2(v32, &v294);
  v271 = v33;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17B0);
  OUTLINED_FUNCTION_18(v36);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAA0);
  OUTLINED_FUNCTION_7_35(v39, v296);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA90);
  OUTLINED_FUNCTION_3_2(v42, v297);
  v273 = v43;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17B8);
  OUTLINED_FUNCTION_18(v46);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600);
  OUTLINED_FUNCTION_7_35(v49, &v299);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA80);
  OUTLINED_FUNCTION_3_2(v52, &v301);
  v276 = v53;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17C0);
  OUTLINED_FUNCTION_18(v56);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA78);
  OUTLINED_FUNCTION_7_35(v59, &v307);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v61);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA68);
  OUTLINED_FUNCTION_3_2(v62, &v306);
  v279 = v63;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v65);
  v316 = v26;
  v66 = sub_237EF7E90();
  v67 = sub_237EF90F0();
  v68 = sub_237EF90F0();
  OUTLINED_FUNCTION_3_2(v68, &v310);
  v281 = v69;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v71);
  v288 = v67;
  v283 = *(v67 - 8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v73);
  v320 = v66;
  v74 = sub_237EF6290();
  OUTLINED_FUNCTION_3_2(v74, &v318);
  v286 = v75;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v77);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAE8);
  OUTLINED_FUNCTION_3_2(v78, &v320);
  v290 = v79;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v81);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAD8);
  OUTLINED_FUNCTION_3_2(v82, &a9);
  v293 = v83;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v85);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAC8);
  OUTLINED_FUNCTION_3_2(v86, &a13);
  v296[1] = v87;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v89);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAB8);
  OUTLINED_FUNCTION_3_2(v90, &a16);
  v298 = v91;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v93);
  v314 = sub_237EF8A60();
  sub_237EF6290();
  OUTLINED_FUNCTION_1();
  v301 = v95;
  v302 = v94;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v97);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF450);
  OUTLINED_FUNCTION_1();
  v303 = v99;
  v304 = v98;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_19();
  v313 = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17C8);
  OUTLINED_FUNCTION_1();
  v305 = v103;
  v306 = v102;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_19();
  v312 = v105;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17D0);
  OUTLINED_FUNCTION_1();
  v307 = v107;
  v308 = v106;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_19();
  v311 = v109;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17D8);
  OUTLINED_FUNCTION_1();
  v309 = v111;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v112);
  v114 = (&v268 - v113);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17E0);
  OUTLINED_FUNCTION_1();
  v310 = v116;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v117);
  v119 = &v268 - v118;
  v315 = sub_237EF6290();
  OUTLINED_FUNCTION_1();
  v121 = v120;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v122);
  v124 = &v268 - v123;
  sub_237EF62F0();
  if (!swift_dynamicCastMetatype())
  {
    v269 = v115;
    v268 = v110;
    v121 = v311;
    v130 = v312;
    v131 = v313;
    v315 = v31;
    v270 = v28;
    if (swift_dynamicCastMetatype())
    {
      v132 = v119;
      v133 = v315;
      sub_237EF62E0();
      OUTLINED_FUNCTION_27_17();
      MEMORY[0x28223BE20](v134);
      OUTLINED_FUNCTION_4_43();
      *(v135 - 32) = v136;
      *(v135 - 24) = v119;
      v137 = v321;
      *(v135 - 16) = v321;
      OUTLINED_FUNCTION_0_18();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_10_32();
      OUTLINED_FUNCTION_46_6();
      if (v20)
      {
        v138 = *(v310 + 8);
        v139 = v119;
        v140 = &v291;
        goto LABEL_13;
      }

      v146 = v269;
      v147 = v310;
      if (!__OFADD__(*v137, 1))
      {
        ++*v137;
        (*(v147 + 8))(v119, v146);
        goto LABEL_22;
      }

      __break(1u);
      goto LABEL_75;
    }

    if (swift_dynamicCastMetatype())
    {
      sub_237EF62E0();
      OUTLINED_FUNCTION_43_8();
      MEMORY[0x28223BE20](v141);
      OUTLINED_FUNCTION_4_43();
      *(v142 - 32) = v143;
      *(v142 - 24) = v114;
      v144 = v321;
      *(v142 - 16) = v321;
      OUTLINED_FUNCTION_0_18();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_10_32();
      OUTLINED_FUNCTION_52_7();
      if (!v20)
      {
        v145 = v268;
        v156 = v309;
        if (!__OFADD__(*v144, 1))
        {
          ++*v144;
          v138 = *(v156 + 8);
          v139 = v114;
          goto LABEL_21;
        }

        __break(1u);
        goto LABEL_88;
      }

      v138 = *(v309 + 8);
      v139 = v114;
      v140 = &v290;
LABEL_13:
      v145 = *(v140 - 32);
LABEL_21:
      v138(v139, v145);
      goto LABEL_22;
    }

    v148 = swift_dynamicCastMetatype();
    v114 = v315;
    if (v148)
    {
      v149 = v121;
      sub_237EF62E0();
      OUTLINED_FUNCTION_43_8();
      MEMORY[0x28223BE20](v150);
      OUTLINED_FUNCTION_4_43();
      *(v151 - 32) = v152;
      *(v151 - 24) = v121;
      v153 = v321;
      *(v151 - 16) = v321;
      OUTLINED_FUNCTION_0_18();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_10_32();
      OUTLINED_FUNCTION_52_7();
      if (v20)
      {
        v155 = v307;
        v154 = v308;
LABEL_34:
        (*(v155 + 8))(v149, v154);
        goto LABEL_22;
      }

      v160 = *v153 + 1;
      v155 = v307;
      v154 = v308;
      if (!__OFADD__(*v153, 1))
      {
        goto LABEL_33;
      }

      __break(1u);
    }

    else if (swift_dynamicCastMetatype())
    {
      v149 = v130;
      sub_237EF62E0();
      OUTLINED_FUNCTION_43_8();
      MEMORY[0x28223BE20](v157);
      OUTLINED_FUNCTION_4_43();
      *(v158 - 32) = v159;
      *(v158 - 24) = v130;
      v153 = v321;
      *(v158 - 16) = v321;
      OUTLINED_FUNCTION_0_18();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_16_26();
      OUTLINED_FUNCTION_36_10();
      v133 = v318;
      v20 = v319;
      sub_237D14EC8();
      OUTLINED_FUNCTION_52_7();
      if (v20)
      {
        v155 = v305;
        v154 = v306;
        goto LABEL_34;
      }

      v160 = *v153 + 1;
      v155 = v305;
      v154 = v306;
      if (__OFADD__(*v153, 1))
      {
        __break(1u);
        goto LABEL_108;
      }

LABEL_33:
      *v153 = v160;
      goto LABEL_34;
    }

    if (swift_dynamicCastMetatype())
    {
      sub_237EF62E0();
      OUTLINED_FUNCTION_43_8();
      MEMORY[0x28223BE20](v161);
      OUTLINED_FUNCTION_6_34(&v268);
      *(v162 - 32) = v163;
      *(v162 - 24) = v131;
      v164 = v321;
      *(v162 - 16) = v321;
      OUTLINED_FUNCTION_0_18();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_16_26();
      v20 = v319;
      sub_237D14EC8();
      OUTLINED_FUNCTION_52_7();
      if (v20)
      {
        v166 = v303;
        v165 = v304;
      }

      else
      {
        v166 = v303;
        v165 = v304;
        if (__OFADD__(*v164, 1))
        {
          __break(1u);
          goto LABEL_113;
        }

        ++*v164;
      }

      (*(v166 + 8))(v131, v165);
      goto LABEL_22;
    }

    if (swift_dynamicCastMetatype())
    {
      v167 = v300[1];
      sub_237EF62E0();
      OUTLINED_FUNCTION_1_22();
      swift_getWitnessTable();
      sub_237EF8E80();
      v168 = a10;
      if (a10 >= 2)
      {
        v172 = v270;
        v119 = sub_237EF8A00();
        sub_237C583C0(v168);
        v169 = v321;
        v171 = v316;
        v170 = v317;
      }

      else
      {
        v119 = 0;
        v169 = v321;
        v171 = v316;
        v170 = v317;
        v172 = v270;
      }

      OUTLINED_FUNCTION_43_8();
      MEMORY[0x28223BE20](v175);
      OUTLINED_FUNCTION_17_25();
      *(v176 - 48) = v172;
      *(v176 - 40) = v171;
      *(v176 - 32) = v170;
      *(v176 - 24) = v167;
      *(v176 - 16) = v169;
      OUTLINED_FUNCTION_0_18();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_16_26();
      v20 = v319;
      sub_237D14EC8();
      OUTLINED_FUNCTION_52_7();
      if (v20)
      {
        v177 = v301;
      }

      else
      {
        v177 = v301;
        if (__OFADD__(*v169, v119))
        {
          __break(1u);
          goto LABEL_128;
        }

        *v169 += v119;
      }

      (*(v177 + 8))(v167, v302);
      goto LABEL_22;
    }

    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECA0);
    if (swift_dynamicCastMetatype())
    {
      OUTLINED_FUNCTION_32_12();
      OUTLINED_FUNCTION_45_5();
      v173 = sub_237CA2ED8();
      if (v173 >= 2)
      {
        v174 = *(v173 + 16);
        sub_237C583C0(v173);
      }

      else
      {
        v174 = 0;
      }

      v179 = v321;
      OUTLINED_FUNCTION_27_17();
      MEMORY[0x28223BE20](v180);
      OUTLINED_FUNCTION_64_3();
      v181 = v300[0];
      *(v182 - 32) = v183;
      *(v182 - 24) = v181;
      *(v182 - 16) = v179;
      OUTLINED_FUNCTION_0_18();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_16_26();
      v20 = v319;
      sub_237D14EC8();
      OUTLINED_FUNCTION_46_6();
      if (v20)
      {
        v138 = *(v298 + 8);
        v139 = v181;
        v184 = &a16;
        goto LABEL_56;
      }

      v185 = __OFADD__(*v179, v174);
      v186 = *v179 + v174;
      v187 = v299;
      v188 = v298;
      if (!v185)
      {
        *v179 = v186;
        (*(v188 + 8))(v181, v187);
        goto LABEL_22;
      }

      __break(1u);
      goto LABEL_144;
    }

    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD350);
    if (swift_dynamicCastMetatype())
    {
      OUTLINED_FUNCTION_32_12();
      OUTLINED_FUNCTION_45_5();
      v178 = sub_237CA2EF4();
      if (v178 >= 2)
      {
        v119 = *(v178 + 16);
        sub_237C583C0(v178);
      }

      else
      {
        v119 = 0;
      }

      v190 = v321;
      v133 = v318;
      OUTLINED_FUNCTION_27_17();
      MEMORY[0x28223BE20](v191);
      OUTLINED_FUNCTION_64_3();
      v192 = v297[1];
      *(v193 - 32) = v194;
      *(v193 - 24) = v192;
      *(v193 - 16) = v190;
      OUTLINED_FUNCTION_0_18();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_16_26();
      v195 = v319;
      sub_237D14EC8();
      OUTLINED_FUNCTION_46_6();
      if (!v195)
      {
        if (__OFADD__(*v190, v119))
        {
          __break(1u);
          goto LABEL_154;
        }

        *v190 += v119;
      }

      OUTLINED_FUNCTION_18_25();
      v139 = v192;
      v140 = &a13;
      goto LABEL_13;
    }

    v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3D8);
    if (!swift_dynamicCastMetatype())
    {
      goto LABEL_68;
    }

    v119 = v296[0];
    sub_237EF62E0();
    v133 = v119;
    v189 = sub_237CA2FC0();
    if (v189 >= 2)
    {
      v132 = *(v189 + 16);
      sub_237C583C0(v189);
    }

    else
    {
      v132 = 0;
    }

    OUTLINED_FUNCTION_27_17();
    MEMORY[0x28223BE20](v197);
    OUTLINED_FUNCTION_4_43();
    *(v198 - 32) = v199;
    v200 = v296[0];
    v114 = v321;
    *(v198 - 24) = v296[0];
    *(v198 - 16) = v114;
    OUTLINED_FUNCTION_0_18();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_10_32();
    OUTLINED_FUNCTION_46_6();
    if (v20)
    {
      OUTLINED_FUNCTION_18_25();
      v139 = v200;
LABEL_77:
      v140 = &a9;
      goto LABEL_13;
    }

LABEL_75:
    if (!__OFADD__(*v114, v132))
    {
      OUTLINED_FUNCTION_38_6(*v114 + v132);
      OUTLINED_FUNCTION_18_25();
      v139 = v296[0];
      goto LABEL_77;
    }

LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

  v125 = sub_237EF62E0();
  v119 = &v268;
  MEMORY[0x28223BE20](v125);
  OUTLINED_FUNCTION_17_25();
  v127 = v316;
  v126 = v317;
  *(v128 - 48) = v28;
  *(v128 - 40) = v127;
  *(v128 - 32) = v126;
  *(v128 - 24) = v124;
  v129 = v321;
  *(v128 - 16) = v321;
  OUTLINED_FUNCTION_0_18();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_16_26();
  OUTLINED_FUNCTION_59_5();
  if (v20)
  {
    goto LABEL_9;
  }

  if (!__OFADD__(*v129, 1))
  {
    ++*v129;
LABEL_9:
    (v121)[1](v124, v315);
    goto LABEL_22;
  }

  __break(1u);
LABEL_68:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECA8);
  if (OUTLINED_FUNCTION_35_8())
  {
    v119 = v295;
    sub_237EF62E0();
    v133 = v119;
    v196 = sub_237CA2FDC();
    if (v196 >= 2)
    {
      sub_237C583C0(v196);
    }

    OUTLINED_FUNCTION_27_17();
    MEMORY[0x28223BE20](v201);
    OUTLINED_FUNCTION_4_43();
    *(v202 - 32) = v203;
    v204 = v321;
    *(v202 - 24) = v295;
    *(v202 - 16) = v204;
    OUTLINED_FUNCTION_0_18();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_10_32();
    OUTLINED_FUNCTION_46_6();
    if (v20)
    {
      goto LABEL_86;
    }

    OUTLINED_FUNCTION_19_25();
    if (!v185)
    {
      OUTLINED_FUNCTION_38_6(v205);
LABEL_86:
      OUTLINED_FUNCTION_18_25();
      v139 = v295;
      v140 = &v320;
      goto LABEL_13;
    }

    goto LABEL_155;
  }

  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_31_10();
    sub_237EF62E0();
    OUTLINED_FUNCTION_1_22();
    OUTLINED_FUNCTION_37_8();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_32_12();
    v133 = v121;
    sub_237EF8E80();
    OUTLINED_FUNCTION_26_14(v129, 1, &v316);
    if (v209)
    {
      (*(v281 + 8))(v289, v282);
      goto LABEL_109;
    }

    v119 = v285;
    (*(v283 + 32))(v285, v289, v288);
    OUTLINED_FUNCTION_28_1(v119, 1, v320);
    if (v209)
    {
      OUTLINED_FUNCTION_18_25();
      v210(v285, v288);
      goto LABEL_109;
    }

    v211 = v320;
    v133 = v285;
    v119 = sub_237EF7E20();
    OUTLINED_FUNCTION_22_3();
    (*(v212 + 8))(v133, v211);
LABEL_108:

LABEL_109:
    OUTLINED_FUNCTION_27_17();
    MEMORY[0x28223BE20](v222);
    OUTLINED_FUNCTION_4_43();
    *(v223 - 32) = v224;
    v225 = v321;
    *(v223 - 24) = v292;
    *(v223 - 16) = v225;
    OUTLINED_FUNCTION_0_18();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_10_32();
    OUTLINED_FUNCTION_46_6();
    if (!v20)
    {
      OUTLINED_FUNCTION_19_25();
      if (v185)
      {
LABEL_156:
        __break(1u);
        goto LABEL_157;
      }

      OUTLINED_FUNCTION_38_6(v226);
    }

    OUTLINED_FUNCTION_18_25();
    v139 = v292;
    v140 = &v318;
    goto LABEL_13;
  }

LABEL_88:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA50);
  if (OUTLINED_FUNCTION_35_8())
  {
    OUTLINED_FUNCTION_25_16();
    OUTLINED_FUNCTION_49_7();
    sub_237CA3018(v206);
    OUTLINED_FUNCTION_26_14(v114, 1, &v307);
    if (v209)
    {
      v207 = &qword_27DEB17C0;
      v208 = &v312;
    }

    else
    {
      v119 = v278;
      sub_237CF9FF0(v284, v278, &qword_27DEAEA78);
      OUTLINED_FUNCTION_28_1(v119, 1, v121);
      if (!v216)
      {
        v119 = v278;
        sub_237EF7E20();
        OUTLINED_FUNCTION_22_3();
        (*(v227 + 8))(v119, v121);
LABEL_113:

LABEL_103:
        OUTLINED_FUNCTION_27_17();
        MEMORY[0x28223BE20](v217);
        OUTLINED_FUNCTION_4_43();
        *(v218 - 32) = v219;
        v220 = v321;
        *(v218 - 24) = v287;
        *(v218 - 16) = v220;
        OUTLINED_FUNCTION_0_18();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_10_32();
        v133 = v20;
        if (!v20)
        {
          OUTLINED_FUNCTION_19_25();
          if (v185)
          {
LABEL_157:
            __break(1u);
            goto LABEL_158;
          }

          OUTLINED_FUNCTION_38_6(v221);
        }

        OUTLINED_FUNCTION_18_25();
        v139 = v287;
        v140 = &v306;
        goto LABEL_13;
      }

      v207 = &qword_27DEAEA78;
      v208 = &v304;
    }

    sub_237C65484(*(v208 - 32), v207);
    goto LABEL_103;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  if (OUTLINED_FUNCTION_35_8())
  {
    OUTLINED_FUNCTION_25_16();
    OUTLINED_FUNCTION_49_7();
    sub_237CA3104(v213);
    OUTLINED_FUNCTION_26_14(v114, 1, &v299);
    if (v209)
    {
      v214 = &qword_27DEB17B8;
      v215 = &v303;
    }

    else
    {
      OUTLINED_FUNCTION_37_8();
      sub_237CF9FF0(v231, v232, v233);
      v234 = OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_28_1(v234, v235, v121);
      if (!v236)
      {
        v119 = v275;
        sub_237EF7E20();
        OUTLINED_FUNCTION_22_3();
        (*(v244 + 8))(v119, v121);
LABEL_128:

LABEL_122:
        OUTLINED_FUNCTION_27_17();
        MEMORY[0x28223BE20](v237);
        OUTLINED_FUNCTION_17_25();
        OUTLINED_FUNCTION_6_34(v238);
        *(v239 - 32) = v240;
        v241 = v321;
        *(v239 - 24) = v280;
        *(v239 - 16) = v241;
        OUTLINED_FUNCTION_0_18();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_16_26();
        OUTLINED_FUNCTION_59_5();
        v133 = v20;
        if (!v20)
        {
          OUTLINED_FUNCTION_19_25();
          if (v185)
          {
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
            while (1)
            {
              __break(1u);
LABEL_161:
              MEMORY[0x2383E1490](0, v119);
LABEL_134:
              OUTLINED_FUNCTION_62_3();

              v119 = [v133 integerValue];

LABEL_149:
              OUTLINED_FUNCTION_43_8();
              MEMORY[0x28223BE20](v262);
              OUTLINED_FUNCTION_17_25();
              OUTLINED_FUNCTION_6_34(v263);
              *(v264 - 32) = v265;
              v266 = v321;
              *(v264 - 24) = v274;
              *(v264 - 16) = v266;
              OUTLINED_FUNCTION_0_18();
              swift_getWitnessTable();
              OUTLINED_FUNCTION_16_26();
              v267 = v319;
              sub_237D14EC8();
              v133 = v267;
              if (v267)
              {
                break;
              }

              if (!__OFADD__(*v321, v119))
              {
                OUTLINED_FUNCTION_38_6(*v321 + v119);
                break;
              }
            }

            v138 = *(v271 + 8);
            v139 = v274;
            v243 = &v294;
            goto LABEL_126;
          }

          OUTLINED_FUNCTION_38_6(v242);
        }

        v138 = *(v276 + 8);
        v139 = v280;
        v243 = &v301;
LABEL_126:
        v145 = *(v243 - 32);
        goto LABEL_21;
      }

      v214 = &qword_27DEAD600;
      v215 = v300;
    }

    sub_237C65484(*(v215 - 32), v214);
    goto LABEL_122;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60);
  if (OUTLINED_FUNCTION_35_8())
  {
    OUTLINED_FUNCTION_25_16();
    OUTLINED_FUNCTION_49_7();
    sub_237CA31F0(v228);
    OUTLINED_FUNCTION_26_14(v114, 1, v296);
    if (v209)
    {
      v229 = &qword_27DEB17B0;
      v230 = &v298;
    }

    else
    {
      OUTLINED_FUNCTION_37_8();
      sub_237CF9FF0(v249, v250, v251);
      v252 = OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_28_1(v252, v253, v121);
      if (!v254)
      {
        v119 = v272;
        sub_237EF7E20();
        OUTLINED_FUNCTION_22_3();
        (*(v261 + 8))(v119, v121);
LABEL_144:

        goto LABEL_139;
      }

      v229 = &qword_27DEAEAA0;
      v230 = &v295;
    }

    sub_237C65484(*(v230 - 32), v229);
LABEL_139:
    OUTLINED_FUNCTION_27_17();
    MEMORY[0x28223BE20](v255);
    OUTLINED_FUNCTION_17_25();
    OUTLINED_FUNCTION_6_34(v256);
    *(v257 - 32) = v258;
    v259 = v321;
    *(v257 - 24) = v277;
    *(v257 - 16) = v259;
    OUTLINED_FUNCTION_0_18();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_16_26();
    OUTLINED_FUNCTION_59_5();
    v133 = v20;
    if (!v20)
    {
      OUTLINED_FUNCTION_19_25();
      if (v185)
      {
        goto LABEL_159;
      }

      OUTLINED_FUNCTION_38_6(v260);
    }

    v138 = *(v273 + 8);
    v139 = v277;
    v184 = v297;
LABEL_56:
    v145 = *(v184 - 32);
    goto LABEL_21;
  }

  sub_237C75918(0, &qword_27DEAF160);
  OUTLINED_FUNCTION_31_0();
  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_24_15();
    sub_237EF62E0();
    v245 = sub_237CA32DC();
    if (v245 >= 2)
    {
      v246 = [v245 shape];
      v247 = OUTLINED_FUNCTION_62_3();
      sub_237D5CEDC(v247);
      sub_237C75918(0, &qword_280C8CCF8);
      OUTLINED_FUNCTION_9_11();
      v119 = sub_237EF8910();

      if (sub_237D6DA5C(v119))
      {
        v133 = (v119 & 0xC000000000000001);
        sub_237C85538(0, (v119 & 0xC000000000000001) == 0, v119);
        if ((v119 & 0xC000000000000001) != 0)
        {
          goto LABEL_161;
        }

        v248 = *(v119 + 32);
        goto LABEL_134;
      }
    }

    v119 = 0;
    goto LABEL_149;
  }

LABEL_22:
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D564E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v45 = a4;
  v46 = a6;
  v42 = a5;
  v44 = a1;
  v8 = sub_237EF90F0();
  v39 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v37[-v9];
  v11 = *(a7 - 8);
  MEMORY[0x28223BE20](v12);
  v43 = &v37[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v47 = v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = sub_237EF90F0();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v37[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAF7F8);
  v48 = v19;
  v20 = sub_237EF6290();
  v21 = sub_237CE32D8();
  WitnessTable = swift_getWitnessTable();
  v49 = v19;
  v50 = v20;
  v23 = v20;
  v51 = v21;
  v52 = WitnessTable;
  *&v40 = v21;
  v24 = WitnessTable;
  v41 = sub_237EF9380();
  MEMORY[0x28223BE20](v41);
  v49 = v48;
  v50 = v23;
  v51 = v21;
  v52 = v24;
  v53 = sub_237EF9370();
  v38 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v26 = &v37[-v25];
  v49 = 0;
  sub_237EFA000();
  v48 = v26;
  sub_237EF9350();
  v27 = (v39 + 32);
  v41 = v11 + 40;
  v42 = v11 + 32;
  v40 = xmmword_237F04760;
  while (1)
  {
    sub_237EF9360();
    if (__swift_getEnumTagSinglePayload(v18, 1, TupleTypeMetadata2) == 1)
    {
      return (*(v38 + 8))(v48, v53);
    }

    v28 = *v18;
    (*v27)(v10, &v18[*(TupleTypeMetadata2 + 48)], v47);
    if (__swift_getEnumTagSinglePayload(v10, 1, a7) == 1)
    {
      break;
    }

    v29 = TupleTypeMetadata2;
    v30 = v43;
    (*(v11 + 32))(v43, v10, a7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
    inited = swift_initStackObject();
    *(inited + 16) = v40;
    *(inited + 32) = v28;
    v32 = v45;
    *(inited + 40) = *v46;
    v33 = sub_237D166DC(inited, v32);
    swift_setDeallocating();
    v34 = v30;
    TupleTypeMetadata2 = v29;
    (*(v11 + 40))(v44 + *(v11 + 72) * v33, v34, a7);
  }

  (*(v39 + 8))(v10, v47);
  sub_237C84150();
  swift_allocError();
  *v36 = 0xD000000000000010;
  *(v36 + 8) = 0x8000000237F0ED70;
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  *(v36 + 32) = 0;
  swift_willThrow();
  return (*(v38 + 8))(v48, v53);
}

uint64_t sub_237D569E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v52 = a4;
  v53 = a6;
  v51 = a1;
  v55 = a7;
  v10 = *(a7 - 8);
  v49 = a9;
  MEMORY[0x28223BE20](a1);
  v48 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17E0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17E8);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v43 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17F0);
  v21 = v20 - 8;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v43 - v23;
  v25 = *(v17 + 60);
  (*(v13 + 16))(&v19[v25], a5, v12, v22);
  (*(v13 + 32))(v15, &v19[v25], v12);
  v26 = &v24[*(v21 + 60)];
  sub_237D5D274(&qword_27DEB17F8, &qword_27DEB17E0);
  sub_237EF86F0();
  v27 = *(v21 + 64);
  v45 = v24;
  v44 = v27;
  v24[v27] = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1800);
  v29 = 0;
  v30 = *(result + 36);
  v50 = v10;
  v47 = v10 + 40;
  v46 = xmmword_237F04760;
  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    sub_237D5D274(&qword_27DEB1808, &qword_27DEB17E0);
    sub_237EF8DE0();
    if (*&v26[v30] == v54[0])
    {
      v40 = v45;
      *v45 = v31;
      *(v40 + v44) = 1;
      return sub_237C65484(v40, &qword_27DEB17F0);
    }

    v32 = sub_237EF8F00();
    v34 = *v33;
    v35 = v33[1];
    v32(v54, 0);
    sub_237EF8DF0();
    if (v35)
    {
      v41 = v45;
      *v45 = v31;
      sub_237C84150();
      swift_allocError();
      *v42 = 0xD000000000000010;
      *(v42 + 8) = 0x8000000237F0ED70;
      *(v42 + 16) = 0;
      *(v42 + 24) = 0;
      *(v42 + 32) = 0;
      swift_willThrow();
      return sub_237C65484(v41, &qword_27DEB17F0);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
    inited = swift_initStackObject();
    *(inited + 16) = v46;
    *(inited + 32) = v29;
    *(inited + 40) = *v53;
    LOBYTE(v54[0]) = v34;
    sub_237D5D1B8();
    v37 = v48;
    v38 = v55;
    sub_237EF83B0();
    v39 = sub_237D166DC(inited, v52);
    swift_setDeallocating();
    result = (*(v50 + 40))(v51 + *(v50 + 72) * v39, v37, v38);
    ++v29;
  }

  __break(1u);
  return result;
}

uint64_t sub_237D56EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v52 = a4;
  v53 = a6;
  v51 = a1;
  v55 = a7;
  v10 = *(a7 - 8);
  v49 = a9;
  MEMORY[0x28223BE20](a1);
  v48 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17D8);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1818);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v43 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1820);
  v21 = v20 - 8;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v43 - v23;
  v25 = *(v17 + 60);
  (*(v13 + 16))(&v19[v25], a5, v12, v22);
  (*(v13 + 32))(v15, &v19[v25], v12);
  v26 = &v24[*(v21 + 60)];
  sub_237D5D274(&qword_27DEB1828, &qword_27DEB17D8);
  sub_237EF86F0();
  v27 = *(v21 + 64);
  v45 = v24;
  v44 = v27;
  v24[v27] = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1830);
  v29 = 0;
  v30 = *(result + 36);
  v50 = v10;
  v47 = v10 + 40;
  v46 = xmmword_237F04760;
  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    sub_237D5D274(&qword_27DEB1838, &qword_27DEB17D8);
    sub_237EF8DE0();
    if (*&v26[v30] == v54[0])
    {
      v40 = v45;
      *v45 = v31;
      *(v40 + v44) = 1;
      return sub_237C65484(v40, &qword_27DEB1820);
    }

    v32 = sub_237EF8F00();
    v34 = *v33;
    v35 = *(v33 + 4);
    v32(v54, 0);
    sub_237EF8DF0();
    if (v35)
    {
      v41 = v45;
      *v45 = v31;
      sub_237C84150();
      swift_allocError();
      *v42 = 0xD000000000000010;
      *(v42 + 8) = 0x8000000237F0ED70;
      *(v42 + 16) = 0;
      *(v42 + 24) = 0;
      *(v42 + 32) = 0;
      swift_willThrow();
      return sub_237C65484(v41, &qword_27DEB1820);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
    inited = swift_initStackObject();
    *(inited + 16) = v46;
    *(inited + 32) = v29;
    *(inited + 40) = *v53;
    LODWORD(v54[0]) = v34;
    sub_237D5D20C();
    v37 = v48;
    v38 = v55;
    sub_237EF83B0();
    v39 = sub_237D166DC(inited, v52);
    swift_setDeallocating();
    result = (*(v50 + 40))(v51 + *(v50 + 72) * v39, v37, v38);
    ++v29;
  }

  __break(1u);
  return result;
}

uint64_t sub_237D57388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v51 = a4;
  v52 = a6;
  v50 = a1;
  v54 = a7;
  v10 = *(a7 - 8);
  v48 = a9;
  MEMORY[0x28223BE20](a1);
  v47 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17D0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1848);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v42 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1850);
  v21 = v20 - 8;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v42 - v23;
  v25 = *(v17 + 60);
  (*(v13 + 16))(&v19[v25], a5, v12, v22);
  (*(v13 + 32))(v15, &v19[v25], v12);
  v26 = &v24[*(v21 + 60)];
  sub_237D5D274(&qword_27DEB1858, &qword_27DEB17D0);
  sub_237EF86F0();
  v27 = *(v21 + 64);
  v44 = v24;
  v43 = v27;
  v24[v27] = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1860);
  v29 = 0;
  v30 = *(result + 36);
  v49 = v10;
  v46 = v10 + 40;
  v45 = xmmword_237F04760;
  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    sub_237D5D274(&qword_27DEB1868, &qword_27DEB17D0);
    sub_237EF8DE0();
    if (*&v26[v30] == v53[0])
    {
      v39 = v44;
      *v44 = v31;
      *(v39 + v43) = 1;
      return sub_237C65484(v39, &qword_27DEB1850);
    }

    v32 = sub_237EF8F00();
    v34 = *(v33 + 8);
    v32(v53, 0);
    sub_237EF8DF0();
    if (v34)
    {
      v40 = v44;
      *v44 = v31;
      sub_237C84150();
      swift_allocError();
      *v41 = 0xD000000000000010;
      *(v41 + 8) = 0x8000000237F0ED70;
      *(v41 + 16) = 0;
      *(v41 + 24) = 0;
      *(v41 + 32) = 0;
      swift_willThrow();
      return sub_237C65484(v40, &qword_27DEB1850);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
    inited = swift_initStackObject();
    *(inited + 16) = v45;
    *(inited + 32) = v29;
    *(inited + 40) = *v52;
    v36 = v47;
    v37 = v54;
    sub_237EF83A0();
    v38 = sub_237D166DC(inited, v51);
    swift_setDeallocating();
    result = (*(v49 + 40))(v50 + *(v49 + 72) * v38, v36, v37);
    ++v29;
  }

  __break(1u);
  return result;
}

uint64_t sub_237D57840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v48 = a4;
  v49 = a6;
  v44 = a5;
  v47 = a1;
  v50 = *(a7 - 8);
  v46 = a9;
  MEMORY[0x28223BE20](a1);
  v45 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17C8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1870);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v40 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1878);
  v20 = v19 - 8;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v40 - v22;
  v24 = *(v16 + 60);
  (*(v12 + 16))(&v18[v24], v44, v11, v21);
  (*(v12 + 32))(v14, &v18[v24], v11);
  v25 = &v23[*(v20 + 60)];
  sub_237D5D274(&qword_27DEB1880, &qword_27DEB17C8);
  sub_237EF86F0();
  v26 = *(v20 + 64);
  v42 = v23;
  v41 = v26;
  v23[v26] = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1888);
  v28 = 0;
  v29 = *(result + 36);
  v44 = v50 + 40;
  v43 = xmmword_237F04760;
  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    sub_237D5D274(&qword_27DEB1890, &qword_27DEB17C8);
    sub_237EF8DE0();
    if (*&v25[v29] == v51[0])
    {
      v37 = v42;
      *v42 = v30;
      *(v37 + v41) = 1;
      return sub_237C65484(v37, &qword_27DEB1878);
    }

    v31 = sub_237EF8F00();
    v33 = *(v32 + 4);
    v31(v51, 0);
    sub_237EF8DF0();
    if (v33)
    {
      v38 = v42;
      *v42 = v30;
      sub_237C84150();
      swift_allocError();
      *v39 = 0xD000000000000010;
      *(v39 + 8) = 0x8000000237F0ED70;
      *(v39 + 16) = 0;
      *(v39 + 24) = 0;
      *(v39 + 32) = 0;
      swift_willThrow();
      return sub_237C65484(v38, &qword_27DEB1878);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
    inited = swift_initStackObject();
    *(inited + 16) = v43;
    *(inited + 32) = v28;
    *(inited + 40) = *v49;
    v35 = v45;
    sub_237EF81E0();
    v36 = sub_237D166DC(inited, v48);
    swift_setDeallocating();
    result = (*(v50 + 40))(v47 + *(v50 + 72) * v36, v35, a7);
    ++v28;
  }

  __break(1u);
  return result;
}

uint64_t sub_237D57D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v48 = a4;
  v49 = a6;
  v44 = a5;
  v47 = a1;
  v50 = *(a7 - 8);
  v46 = a9;
  MEMORY[0x28223BE20](a1);
  v45 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF450);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1898);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v40 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB18A0);
  v20 = v19 - 8;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v40 - v22;
  v24 = *(v16 + 60);
  (*(v12 + 16))(&v18[v24], v44, v11, v21);
  (*(v12 + 32))(v14, &v18[v24], v11);
  v25 = &v23[*(v20 + 60)];
  sub_237D5D274(&qword_27DEB18A8, &qword_27DEAF450);
  sub_237EF86F0();
  v26 = *(v20 + 64);
  v42 = v23;
  v41 = v26;
  v23[v26] = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB18B0);
  v28 = 0;
  v29 = *(result + 36);
  v44 = v50 + 40;
  v43 = xmmword_237F04760;
  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    sub_237D5D274(&qword_27DEB18B8, &qword_27DEAF450);
    sub_237EF8DE0();
    if (*&v25[v29] == v51[0])
    {
      v37 = v42;
      *v42 = v30;
      *(v37 + v41) = 1;
      return sub_237C65484(v37, &qword_27DEB18A0);
    }

    v31 = sub_237EF8F00();
    v33 = *(v32 + 8);
    v31(v51, 0);
    sub_237EF8DF0();
    if (v33)
    {
      v38 = v42;
      *v42 = v30;
      sub_237C84150();
      swift_allocError();
      *v39 = 0xD000000000000010;
      *(v39 + 8) = 0x8000000237F0ED70;
      *(v39 + 16) = 0;
      *(v39 + 24) = 0;
      *(v39 + 32) = 0;
      swift_willThrow();
      return sub_237C65484(v38, &qword_27DEB18A0);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
    inited = swift_initStackObject();
    *(inited + 16) = v43;
    *(inited + 32) = v28;
    *(inited + 40) = *v49;
    v35 = v45;
    sub_237EF81D0();
    v36 = sub_237D166DC(inited, v48);
    swift_setDeallocating();
    result = (*(v50 + 40))(v47 + *(v50 + 72) * v36, v35, a7);
    ++v28;
  }

  __break(1u);
  return result;
}

uint64_t sub_237D581C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6, uint64_t a7)
{
  v45 = a6;
  v58 = a5;
  v42 = a4;
  v41 = a1;
  v46 = *(a7 - 8);
  MEMORY[0x28223BE20](a1);
  v37 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = sub_237EF90F0();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v35 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAF7F8);
  v47 = sub_237EF8A60();
  v14 = sub_237EF6290();
  v15 = sub_237CE32D8();
  WitnessTable = swift_getWitnessTable();
  v54 = v13;
  v55 = v14;
  v56 = v15;
  v57 = WitnessTable;
  *&v43 = sub_237EF9380();
  MEMORY[0x28223BE20](v43);
  v54 = v13;
  v55 = v14;
  v56 = v15;
  v57 = WitnessTable;
  v39 = sub_237EF9370();
  v36 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v18 = &v35 - v17;
  v54 = 0;
  v48 = v13;
  v58 = v15;
  sub_237EFA000();
  v38 = v18;
  sub_237EF9350();
  v19 = (v46 + 32);
  v40 = v46 + 40;
  v20 = v37;
  v43 = xmmword_237F04760;
  v44 = a7;
LABEL_2:
  sub_237EF9360();
  v21 = v55;
  if (v55)
  {
    if (v55 == 1)
    {
      return (*(v36 + 8))(v38, v39);
    }

    else
    {
      v22 = v54;
      v54 = 0;
      v53 = v55;
      v23 = v47;
      v24 = swift_getWitnessTable();
      v25 = v48;
      sub_237EFA000();
      sub_237D5D260(v22, v21);
      v49 = v51;
      v50 = v52;
      v54 = v25;
      v55 = v23;
      v56 = v58;
      v57 = v24;
      sub_237EF9380();
      sub_237EF9350();
      while (1)
      {
        v54 = v48;
        v55 = v47;
        v56 = v58;
        v57 = v24;
        sub_237EF9370();
        sub_237EF9360();
        if (__swift_getEnumTagSinglePayload(v12, 1, TupleTypeMetadata2) == 1)
        {

          goto LABEL_2;
        }

        v26 = *v12;
        v27 = TupleTypeMetadata2;
        v28 = v12 + *(TupleTypeMetadata2 + 48);
        v29 = v20;
        v30 = v20;
        v31 = v44;
        (*v19)(v29, v28, v44);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
        result = swift_initStackObject();
        *(result + 16) = v43;
        *(result + 32) = v22;
        if (__OFADD__(*v45, v26))
        {
          break;
        }

        *(result + 40) = *v45 + v26;
        v33 = sub_237D166DC(result, v42);
        swift_setDeallocating();
        (*(v46 + 40))(v41 + *(v46 + 72) * v33, v30, v31);
        v20 = v30;
        TupleTypeMetadata2 = v27;
      }

      __break(1u);
    }
  }

  else
  {
    sub_237C84150();
    swift_allocError();
    *v34 = 0xD000000000000010;
    *(v34 + 8) = 0x8000000237F0ED70;
    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    *(v34 + 32) = 0;
    swift_willThrow();
    return (*(v36 + 8))(v38, v39);
  }

  return result;
}

uint64_t sub_237D58740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v60 = a6;
  v56 = a1;
  v57 = a4;
  v51 = a7;
  v10 = *(a7 - 8);
  v54 = a9;
  MEMORY[0x28223BE20](a1);
  v52 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAB8);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB18C0);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = v45 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB18C8);
  v21 = v20 - 8;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = v45 - v23;
  v25 = *(v17 + 60);
  (*(v13 + 16))(&v19[v25], a5, v12, v22);
  (*(v13 + 32))(v15, &v19[v25], v12);
  v26 = &v24[*(v21 + 60)];
  sub_237D5D274(&qword_27DEB18D0, &qword_27DEAEAB8);
  sub_237EF86F0();
  v27 = *(v21 + 64);
  v46 = v24;
  v45[0] = v27;
  v24[v27] = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB18D8);
  v29 = 0;
  v30 = *(result + 36);
  v55 = v10;
  v53 = v10 + 40;
  v58 = xmmword_237F04760;
  v49 = v12;
  v48 = v26;
  for (i = v30; ; v30 = i)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    sub_237D5D274(&qword_27DEAEAC0, &qword_27DEAEAB8);
    sub_237EF8DE0();
    if (*&v26[v30] == v59[0])
    {
      v42 = v46;
      *v46 = v31;
      *(v42 + v45[0]) = 1;
      return sub_237C65484(v42, &qword_27DEB18C8);
    }

    v32 = sub_237EF8F00();
    v34 = *v33;
    sub_237EF8260();
    v32(v59, 0);
    result = sub_237EF8DF0();
    if (!v34)
    {
      v43 = v46;
      *v46 = v31;
      sub_237C84150();
      swift_allocError();
      *v44 = 0xD000000000000010;
      *(v44 + 8) = 0x8000000237F0ED70;
      *(v44 + 16) = 0;
      *(v44 + 24) = 0;
      *(v44 + 32) = 0;
      swift_willThrow();
      return sub_237C65484(v43, &qword_27DEB18C8);
    }

    v50 = v29 + 1;
    v35 = *(v34 + 16);
    if (v35)
    {
      v36 = 0;
      while (v36 < *(v34 + 16))
      {
        v37 = *(v34 + 32 + v36);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
        result = swift_initStackObject();
        *(result + 16) = v58;
        *(result + 32) = v29;
        if (__OFADD__(*v60, v36))
        {
          goto LABEL_15;
        }

        v38 = result;
        *(result + 40) = *v60 + v36;
        LOBYTE(v59[0]) = v37;
        sub_237D5D1B8();
        v39 = v51;
        v40 = v52;
        sub_237EF83B0();
        v41 = sub_237D166DC(v38, v57);
        swift_setDeallocating();
        result = (*(v55 + 40))(v56 + *(v55 + 72) * v41, v40, v39);
        if (v35 == ++v36)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
      break;
    }

LABEL_10:

    v29 = v50;
    v26 = v48;
  }

  __break(1u);
  return result;
}

uint64_t sub_237D58CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v59 = a6;
  v55 = a1;
  v56 = a4;
  v50 = a7;
  v10 = *(a7 - 8);
  v53 = a9;
  MEMORY[0x28223BE20](a1);
  v51 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAC8);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB18E0);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = v44 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB18E8);
  v21 = v20 - 8;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = v44 - v23;
  v25 = *(v17 + 60);
  (*(v13 + 16))(&v19[v25], a5, v12, v22);
  (*(v13 + 32))(v15, &v19[v25], v12);
  v26 = &v24[*(v21 + 60)];
  sub_237D5D274(&qword_27DEB18F0, &qword_27DEAEAC8);
  sub_237EF86F0();
  v27 = *(v21 + 64);
  v45 = v24;
  v44[0] = v27;
  v24[v27] = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB18F8);
  v29 = 0;
  v30 = *(result + 36);
  v54 = v10;
  v52 = v10 + 40;
  v57 = xmmword_237F04760;
  v48 = v12;
  v47 = v26;
  for (i = v30; ; v30 = i)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    sub_237D5D274(&qword_27DEAEAD0, &qword_27DEAEAC8);
    sub_237EF8DE0();
    if (*&v26[v30] == v58[0])
    {
      v41 = v45;
      *v45 = v31;
      *(v41 + v44[0]) = 1;
      return sub_237C65484(v41, &qword_27DEB18E8);
    }

    v32 = sub_237EF8F00();
    v34 = *v33;
    sub_237EF8260();
    v32(v58, 0);
    result = sub_237EF8DF0();
    if (!v34)
    {
      v42 = v45;
      *v45 = v31;
      sub_237C84150();
      swift_allocError();
      *v43 = 0xD000000000000010;
      *(v43 + 8) = 0x8000000237F0ED70;
      *(v43 + 16) = 0;
      *(v43 + 24) = 0;
      *(v43 + 32) = 0;
      swift_willThrow();
      return sub_237C65484(v42, &qword_27DEB18E8);
    }

    v49 = v29 + 1;
    v35 = *(v34 + 16);
    if (v35)
    {
      v36 = 0;
      while (v36 < *(v34 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
        result = swift_initStackObject();
        *(result + 16) = v57;
        *(result + 32) = v29;
        if (__OFADD__(*v59, v36))
        {
          goto LABEL_15;
        }

        v37 = result;
        *(result + 40) = *v59 + v36;
        v38 = v50;
        v39 = v51;
        sub_237EF83A0();
        v40 = sub_237D166DC(v37, v56);
        swift_setDeallocating();
        result = (*(v54 + 40))(v55 + *(v54 + 72) * v40, v39, v38);
        if (v35 == ++v36)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
      break;
    }

LABEL_10:

    v29 = v49;
    v26 = v47;
  }

  __break(1u);
  return result;
}

uint64_t sub_237D591EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v53 = a4;
  *&v54 = a5;
  v52 = a1;
  v10 = *(a7 - 8);
  v55 = a6;
  v56 = v10;
  v51 = a9;
  MEMORY[0x28223BE20](a1);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAD8);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1900);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v43 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1908);
  v22 = v21 - 8;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v43 - v24;
  v26 = *(v18 + 60);
  (*(v14 + 16))(&v20[v26], v54, v13, v23);
  (*(v14 + 32))(v16, &v20[v26], v13);
  v27 = v13;
  v28 = &v25[*(v22 + 60)];
  sub_237D5D274(&qword_27DEB1910, &qword_27DEAEAD8);
  sub_237EF86F0();
  v29 = *(v22 + 64);
  v45 = v25;
  v44 = v29;
  v25[v29] = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1918);
  v31 = 0;
  v32 = *(result + 36);
  v50 = v56 + 40;
  v54 = xmmword_237F04760;
  v48 = v27;
  v47 = v28;
  v46 = v32;
  while (!__OFADD__(v31, 1))
  {
    sub_237D5D274(&qword_27DEAEAE0, &qword_27DEAEAD8);
    sub_237EF8DE0();
    if (*&v28[v32] == v57[0])
    {
      v40 = v45;
      *v45 = v31 + 1;
      *(v40 + v44) = 1;
      return sub_237C65484(v40, &qword_27DEB1908);
    }

    v49 = v31 + 1;
    v33 = sub_237EF8F00();
    v35 = *v34;
    sub_237EF8260();
    v33(v57, 0);
    result = sub_237EF8DF0();
    if (!v35)
    {
      v41 = v45;
      *v45 = v49;
      sub_237C84150();
      swift_allocError();
      *v42 = 0xD000000000000010;
      *(v42 + 8) = 0x8000000237F0ED70;
      *(v42 + 16) = 0;
      *(v42 + 24) = 0;
      *(v42 + 32) = 0;
      swift_willThrow();
      return sub_237C65484(v41, &qword_27DEB1908);
    }

    v36 = *(v35 + 16);
    if (v36)
    {
      v37 = 0;
      while (v37 < *(v35 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
        result = swift_initStackObject();
        *(result + 16) = v54;
        *(result + 32) = v31;
        if (__OFADD__(*v55, v37))
        {
          goto LABEL_14;
        }

        v38 = result;
        *(result + 40) = *v55 + v37;
        sub_237EF81E0();
        v39 = sub_237D166DC(v38, v53);
        swift_setDeallocating();
        result = (*(v56 + 40))(v52 + *(v56 + 72) * v39, v12, a7);
        if (v36 == ++v37)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
      break;
    }

LABEL_10:

    v31 = v49;
    v28 = v47;
    v32 = v46;
  }

  __break(1u);
  return result;
}

uint64_t sub_237D5972C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v53 = a4;
  *&v54 = a5;
  v52 = a1;
  v10 = *(a7 - 8);
  v55 = a6;
  v56 = v10;
  v51 = a9;
  MEMORY[0x28223BE20](a1);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAE8);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1920);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v43 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1928);
  v22 = v21 - 8;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v43 - v24;
  v26 = *(v18 + 60);
  (*(v14 + 16))(&v20[v26], v54, v13, v23);
  (*(v14 + 32))(v16, &v20[v26], v13);
  v27 = v13;
  v28 = &v25[*(v22 + 60)];
  sub_237D5D274(&qword_27DEB1930, &qword_27DEAEAE8);
  sub_237EF86F0();
  v29 = *(v22 + 64);
  v45 = v25;
  v44 = v29;
  v25[v29] = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1938);
  v31 = 0;
  v32 = *(result + 36);
  v50 = v56 + 40;
  v54 = xmmword_237F04760;
  v48 = v27;
  v47 = v28;
  v46 = v32;
  while (!__OFADD__(v31, 1))
  {
    sub_237D5D274(&qword_27DEAEAF0, &qword_27DEAEAE8);
    sub_237EF8DE0();
    if (*&v28[v32] == v57[0])
    {
      v40 = v45;
      *v45 = v31 + 1;
      *(v40 + v44) = 1;
      return sub_237C65484(v40, &qword_27DEB1928);
    }

    v49 = v31 + 1;
    v33 = sub_237EF8F00();
    v35 = *v34;
    sub_237EF8260();
    v33(v57, 0);
    result = sub_237EF8DF0();
    if (!v35)
    {
      v41 = v45;
      *v45 = v49;
      sub_237C84150();
      swift_allocError();
      *v42 = 0xD000000000000010;
      *(v42 + 8) = 0x8000000237F0ED70;
      *(v42 + 16) = 0;
      *(v42 + 24) = 0;
      *(v42 + 32) = 0;
      swift_willThrow();
      return sub_237C65484(v41, &qword_27DEB1928);
    }

    v36 = *(v35 + 16);
    if (v36)
    {
      v37 = 0;
      while (v37 < *(v35 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
        result = swift_initStackObject();
        *(result + 16) = v54;
        *(result + 32) = v31;
        if (__OFADD__(*v55, v37))
        {
          goto LABEL_14;
        }

        v38 = result;
        *(result + 40) = *v55 + v37;
        sub_237EF81D0();
        v39 = sub_237D166DC(v38, v53);
        swift_setDeallocating();
        result = (*(v56 + 40))(v52 + *(v56 + 72) * v39, v12, a7);
        if (v36 == ++v37)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
      break;
    }

LABEL_10:

    v31 = v49;
    v28 = v47;
    v32 = v46;
  }

  __break(1u);
  return result;
}

uint64_t sub_237D59C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v65 = a6;
  v78 = a5;
  v62 = a4;
  v61 = a1;
  v66 = *(a7 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v46[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = sub_237EF90F0();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v46[-v12];
  v14 = sub_237EF7E90();
  v15 = sub_237EF90F0();
  v48 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v52 = &v46[-v16];
  v56 = v14;
  v67 = *(v14 - 8);
  MEMORY[0x28223BE20](v17);
  v59 = &v46[-v18];
  v53 = v19;
  v55 = swift_getTupleTypeMetadata2();
  v20 = sub_237EF90F0();
  MEMORY[0x28223BE20](v20 - 8);
  v54 = &v46[-v21];
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAF7F8);
  v23 = sub_237EF6290();
  v24 = sub_237CE32D8();
  WitnessTable = swift_getWitnessTable();
  v74 = v22;
  v75 = v23;
  v76 = v24;
  v77 = WitnessTable;
  v26 = WitnessTable;
  v60 = WitnessTable;
  *&v63 = sub_237EF9380();
  MEMORY[0x28223BE20](v63);
  v74 = v22;
  v75 = v23;
  v76 = v24;
  v77 = v26;
  v58 = sub_237EF9370();
  v47 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v28 = &v46[-v27];
  v74 = 0;
  v78 = v22;
  v29 = v56;
  v68 = v24;
  sub_237EFA000();
  v57 = v28;
  sub_237EF9350();
  v51 = (v48 + 32);
  v50 = (v67 + 32);
  v30 = (v66 + 32);
  v60 = v66 + 40;
  v49 = (v67 + 8);
  v63 = xmmword_237F04760;
  v64 = v9;
LABEL_2:
  v31 = v54;
  sub_237EF9360();
  v32 = v55;
  if (__swift_getEnumTagSinglePayload(v31, 1, v55) == 1)
  {
    return (*(v47 + 8))(v57, v58);
  }

  v67 = *v31;
  v33 = v31 + *(v32 + 48);
  v34 = v52;
  (*v51)(v52, v33, v53);
  if (__swift_getEnumTagSinglePayload(v34, 1, v29) == 1)
  {
    (*(v48 + 8))(v34, v53);
    sub_237C84150();
    swift_allocError();
    *v45 = 0xD000000000000010;
    *(v45 + 8) = 0x8000000237F0ED70;
    *(v45 + 16) = 0;
    *(v45 + 24) = 0;
    *(v45 + 32) = 0;
    swift_willThrow();
    return (*(v47 + 8))(v57, v58);
  }

  else
  {
    (*v50)(v59, v34, v29);
    v74 = 0;
    swift_getWitnessTable();
    v73 = sub_237EF7F50();
    v35 = sub_237EF8A60();
    v36 = swift_getWitnessTable();
    v37 = v78;
    v38 = v68;
    sub_237EFA000();

    v69 = v71;
    v70 = v72;
    v74 = v37;
    v75 = v35;
    v76 = v38;
    v77 = v36;
    sub_237EF9380();
    sub_237EF9350();
    while (1)
    {
      v74 = v78;
      v75 = v35;
      v76 = v68;
      v77 = v36;
      sub_237EF9370();
      sub_237EF9360();
      if (__swift_getEnumTagSinglePayload(v13, 1, TupleTypeMetadata2) == 1)
      {

        v29 = v56;
        (*v49)(v59, v56);
        goto LABEL_2;
      }

      v39 = *v13;
      v40 = TupleTypeMetadata2;
      v41 = v13 + *(TupleTypeMetadata2 + 48);
      v42 = v64;
      (*v30)(v64, v41, a7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
      result = swift_initStackObject();
      *(result + 16) = v63;
      *(result + 32) = v67;
      if (__OFADD__(*v65, v39))
      {
        break;
      }

      *(result + 40) = *v65 + v39;
      v44 = sub_237D166DC(result, v62);
      swift_setDeallocating();
      (*(v66 + 40))(v61 + *(v66 + 72) * v44, v42, a7);
      TupleTypeMetadata2 = v40;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_237D5A4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v76 = a4;
  *&v77 = a5;
  v75 = a1;
  v10 = *(a7 - 8);
  v78 = a6;
  v79 = v10;
  v74 = a9;
  MEMORY[0x28223BE20](a1);
  v73 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA50);
  v81 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v71 = v56 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA78);
  MEMORY[0x28223BE20](v13 - 8);
  v66 = v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v65 = v56 - v16;
  MEMORY[0x28223BE20](v17);
  v64 = v56 - v18;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1940);
  MEMORY[0x28223BE20](v63);
  v62 = v56 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA68);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = v56 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1948);
  v25 = v24 - 8;
  MEMORY[0x28223BE20](v24);
  v27 = v56 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1950);
  v29 = v28 - 8;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = v56 - v31;
  v33 = *(v25 + 60);
  (*(v21 + 16))(&v27[v33], v77, v20, v30);
  (*(v21 + 32))(v23, &v27[v33], v20);
  v34 = v67;
  v35 = &v32[*(v29 + 60)];
  sub_237D5D274(&qword_27DEB1958, &qword_27DEAEA68);
  sub_237EF86F0();
  v36 = *(v29 + 64);
  v68 = v32;
  v56[0] = v36;
  v32[v36] = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1960);
  v38 = 0;
  v39 = *(result + 36);
  v61 = (v81 + 32);
  v72 = v79 + 40;
  v57 = (v81 + 8);
  v77 = xmmword_237F04760;
  v60 = v20;
  v59 = v35;
  v58 = v39;
  while (!__OFADD__(v38, 1))
  {
    *v68 = v38 + 1;
    sub_237D5D274(&qword_27DEAEA70, &qword_27DEAEA68);
    sub_237EF8DE0();
    if (*&v35[v39] == v80)
    {
      v54 = v68;
      *(v68 + v56[0]) = 1;
      return sub_237C65484(v54, &qword_27DEB1950);
    }

    v69 = v38 + 1;
    v81 = v38;
    v70 = sub_237EF8F00();
    v40 = v65;
    sub_237C9E294(v41, v65, &qword_27DEAEA78);
    v70(&v80, 0);
    sub_237EF8DF0();
    v42 = v64;
    sub_237CF9FF0(v40, v64, &qword_27DEAEA78);
    v43 = *(v63 + 48);
    v44 = v62;
    sub_237CF9FF0(v42, &v62[v43], &qword_27DEAEA78);
    v45 = &v44[v43];
    v46 = v66;
    sub_237CF9FF0(v45, v66, &qword_27DEAEA78);
    if (__swift_getEnumTagSinglePayload(v46, 1, v34) == 1)
    {
      sub_237C65484(v46, &qword_27DEAEA78);
      sub_237C84150();
      swift_allocError();
      *v55 = 0xD000000000000010;
      *(v55 + 8) = 0x8000000237F0ED70;
      *(v55 + 16) = 0;
      *(v55 + 24) = 0;
      *(v55 + 32) = 0;
      swift_willThrow();
      return sub_237C65484(v68, &qword_27DEB1950);
    }

    (*v61)(v71, v46, v34);
    sub_237D5D274(&qword_27DEB1968, &qword_27DEAEA50);
    result = sub_237EF7F50();
    v47 = result;
    v48 = *(result + 16);
    if (v48)
    {
      v49 = 0;
      while (v49 < *(v47 + 16))
      {
        v50 = *(v47 + 32 + 4 * v49);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
        result = swift_initStackObject();
        *(result + 16) = v77;
        *(result + 32) = v81;
        if (__OFADD__(*v78, v49))
        {
          goto LABEL_15;
        }

        v51 = result;
        *(result + 40) = *v78 + v49;
        LODWORD(v80) = v50;
        sub_237D5D20C();
        v52 = v73;
        sub_237EF83B0();
        v53 = sub_237D166DC(v51, v76);
        swift_setDeallocating();
        result = (*(v79 + 40))(v75 + *(v79 + 72) * v53, v52, a7);
        if (v48 == ++v49)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
      break;
    }

LABEL_10:

    v34 = v67;
    result = (*v57)(v71, v67);
    v38 = v69;
    v35 = v59;
    v39 = v58;
  }

  __break(1u);
  return result;
}

uint64_t sub_237D5AD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v71 = a5;
  v73 = a1;
  v74 = a4;
  v10 = *(a7 - 8);
  v76 = a6;
  v77 = v10;
  v72 = a9;
  MEMORY[0x28223BE20](a1);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  *&v75 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = &v54 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600);
  MEMORY[0x28223BE20](v14 - 8);
  v64 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v70 = &v54 - v17;
  MEMORY[0x28223BE20](v18);
  v63 = &v54 - v19;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1970);
  MEMORY[0x28223BE20](v62);
  v61 = &v54 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA80);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v54 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1978);
  v26 = v25 - 8;
  MEMORY[0x28223BE20](v25);
  v28 = &v54 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1980);
  v30 = v29 - 8;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v54 - v32;
  v34 = *(v26 + 60);
  (*(v22 + 16))(&v28[v34], v71, v21, v31);
  (*(v22 + 32))(v24, &v28[v34], v21);
  v35 = &v33[*(v30 + 60)];
  sub_237D5D274(&qword_27DEB1988, &qword_27DEAEA80);
  sub_237EF86F0();
  v36 = *(v30 + 64);
  v65 = v33;
  v55 = v36;
  v33[v36] = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1990);
  v38 = 0;
  v39 = *(result + 36);
  v60 = (v75 + 32);
  v71 = v77 + 40;
  v56 = (v75 + 8);
  v75 = xmmword_237F04760;
  v59 = v21;
  v58 = v35;
  v57 = v39;
  while (!__OFADD__(v38, 1))
  {
    *v65 = v38 + 1;
    sub_237D5D274(&qword_27DEAEA88, &qword_27DEAEA80);
    sub_237EF8DE0();
    if (*&v35[v39] == v78)
    {
      v52 = v65;
      *(v65 + v55) = 1;
      return sub_237C65484(v52, &qword_27DEB1980);
    }

    v66 = v38 + 1;
    v67 = sub_237EF8F00();
    sub_237C9E294(v40, v70, &qword_27DEAD600);
    v67(&v78, 0);
    sub_237EF8DF0();
    v41 = v63;
    sub_237CF9FF0(v70, v63, &qword_27DEAD600);
    v42 = *(v62 + 48);
    v43 = v61;
    sub_237CF9FF0(v41, &v61[v42], &qword_27DEAD600);
    v44 = &v43[v42];
    v45 = v64;
    sub_237CF9FF0(v44, v64, &qword_27DEAD600);
    v46 = v69;
    if (__swift_getEnumTagSinglePayload(v45, 1, v69) == 1)
    {
      sub_237C65484(v45, &qword_27DEAD600);
      sub_237C84150();
      swift_allocError();
      *v53 = 0xD000000000000010;
      *(v53 + 8) = 0x8000000237F0ED70;
      *(v53 + 16) = 0;
      *(v53 + 24) = 0;
      *(v53 + 32) = 0;
      swift_willThrow();
      return sub_237C65484(v65, &qword_27DEB1980);
    }

    (*v60)(v68, v45, v46);
    sub_237D5D274(&qword_27DEAD2F8, &qword_27DEAD6A0);
    result = sub_237EF7F50();
    v47 = result;
    v48 = *(result + 16);
    if (v48)
    {
      v49 = 0;
      while (v49 < *(v47 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
        result = swift_initStackObject();
        *(result + 16) = v75;
        *(result + 32) = v38;
        if (__OFADD__(*v76, v49))
        {
          goto LABEL_14;
        }

        v50 = result;
        *(result + 40) = *v76 + v49;
        sub_237EF81E0();
        v51 = sub_237D166DC(v50, v74);
        swift_setDeallocating();
        result = (*(v77 + 40))(v73 + *(v77 + 72) * v51, v12, a7);
        if (v48 == ++v49)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
      break;
    }

LABEL_10:

    result = (*v56)(v68, v69);
    v38 = v66;
    v35 = v58;
    v39 = v57;
  }

  __break(1u);
  return result;
}

uint64_t sub_237D5B580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v71 = a5;
  v73 = a1;
  v74 = a4;
  v10 = *(a7 - 8);
  v76 = a6;
  v77 = v10;
  v72 = a9;
  MEMORY[0x28223BE20](a1);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60);
  *&v75 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = &v54 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAA0);
  MEMORY[0x28223BE20](v14 - 8);
  v64 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v70 = &v54 - v17;
  MEMORY[0x28223BE20](v18);
  v63 = &v54 - v19;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1998);
  MEMORY[0x28223BE20](v62);
  v61 = &v54 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA90);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v54 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB19A0);
  v26 = v25 - 8;
  MEMORY[0x28223BE20](v25);
  v28 = &v54 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB19A8);
  v30 = v29 - 8;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v54 - v32;
  v34 = *(v26 + 60);
  (*(v22 + 16))(&v28[v34], v71, v21, v31);
  (*(v22 + 32))(v24, &v28[v34], v21);
  v35 = &v33[*(v30 + 60)];
  sub_237D5D274(&qword_27DEB19B0, &qword_27DEAEA90);
  sub_237EF86F0();
  v36 = *(v30 + 64);
  v65 = v33;
  v55 = v36;
  v33[v36] = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB19B8);
  v38 = 0;
  v39 = *(result + 36);
  v60 = (v75 + 32);
  v71 = v77 + 40;
  v56 = (v75 + 8);
  v75 = xmmword_237F04760;
  v59 = v21;
  v58 = v35;
  v57 = v39;
  while (!__OFADD__(v38, 1))
  {
    *v65 = v38 + 1;
    sub_237D5D274(&qword_27DEAEA98, &qword_27DEAEA90);
    sub_237EF8DE0();
    if (*&v35[v39] == v78)
    {
      v52 = v65;
      *(v65 + v55) = 1;
      return sub_237C65484(v52, &qword_27DEB19A8);
    }

    v66 = v38 + 1;
    v67 = sub_237EF8F00();
    sub_237C9E294(v40, v70, &qword_27DEAEAA0);
    v67(&v78, 0);
    sub_237EF8DF0();
    v41 = v63;
    sub_237CF9FF0(v70, v63, &qword_27DEAEAA0);
    v42 = *(v62 + 48);
    v43 = v61;
    sub_237CF9FF0(v41, &v61[v42], &qword_27DEAEAA0);
    v44 = &v43[v42];
    v45 = v64;
    sub_237CF9FF0(v44, v64, &qword_27DEAEAA0);
    v46 = v69;
    if (__swift_getEnumTagSinglePayload(v45, 1, v69) == 1)
    {
      sub_237C65484(v45, &qword_27DEAEAA0);
      sub_237C84150();
      swift_allocError();
      *v53 = 0xD000000000000010;
      *(v53 + 8) = 0x8000000237F0ED70;
      *(v53 + 16) = 0;
      *(v53 + 24) = 0;
      *(v53 + 32) = 0;
      swift_willThrow();
      return sub_237C65484(v65, &qword_27DEB19A8);
    }

    (*v60)(v68, v45, v46);
    sub_237D5D274(qword_280C8CD78, &qword_27DEAEA60);
    result = sub_237EF7F50();
    v47 = result;
    v48 = *(result + 16);
    if (v48)
    {
      v49 = 0;
      while (v49 < *(v47 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
        result = swift_initStackObject();
        *(result + 16) = v75;
        *(result + 32) = v38;
        if (__OFADD__(*v76, v49))
        {
          goto LABEL_14;
        }

        v50 = result;
        *(result + 40) = *v76 + v49;
        sub_237EF81D0();
        v51 = sub_237D166DC(v50, v74);
        swift_setDeallocating();
        result = (*(v77 + 40))(v73 + *(v77 + 72) * v51, v12, a7);
        if (v48 == ++v49)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
      break;
    }

LABEL_10:

    result = (*v56)(v68, v69);
    v38 = v66;
    v35 = v58;
    v39 = v57;
  }

  __break(1u);
  return result;
}

uint64_t sub_237D5BDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v75 = a6;
  v87 = a5;
  v71 = a4;
  v70 = a1;
  v76 = *(a7 - 8);
  MEMORY[0x28223BE20](a1);
  v74 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = sub_237EF90F0();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (&v57 - v10);
  v63 = sub_237EF7E90();
  v77 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = &v57 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAA8);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v57 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB19C0);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v57 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB19C8);
  v22 = v21 - 8;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v57 - v24;
  v26 = *(v18 + 60);
  (*(v14 + 16))(&v20[v26], v87, v13, v23);
  v27 = &v20[v26];
  v28 = TupleTypeMetadata2;
  (*(v14 + 32))(v16, v27, v13);
  v29 = a7;
  v30 = &v25[*(v22 + 60)];
  sub_237D5D274(&qword_27DEB19D0, &qword_27DEAEAA8);
  v64 = v30;
  sub_237EF86F0();
  v31 = *(v22 + 64);
  v65 = v25;
  v58 = v31;
  v25[v31] = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB19D8);
  v33 = 0;
  v34 = *(result + 36);
  v61 = (v77 + 8);
  v73 = (v76 + 32);
  v69 = v76 + 40;
  v72 = xmmword_237F04760;
  v68 = v13;
  v60 = v34;
LABEL_2:
  if (__OFADD__(v33, 1))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  *v65 = v33 + 1;
  sub_237D5D274(&qword_27DEAEAB0, &qword_27DEAEAA8);
  v35 = v64;
  sub_237EF8DE0();
  if (*&v35[v34] == v83)
  {
    v55 = v65;
    *(v65 + v58) = 1;
    return sub_237C65484(v55, &qword_27DEB19C8);
  }

  v67 = v33 + 1;
  v77 = v33;
  v36 = sub_237EF8F00();
  v38 = *v37;
  v39 = *v37;
  v36(&v83, 0);
  sub_237EF8DF0();
  if (v38)
  {
    v83 = 0;
    v40 = v39;
    v41 = v63;
    swift_getWitnessTable();
    v42 = v62;
    v66 = v40;
    sub_237EF7F20();
    v43 = sub_237EF7F50();
    (*v61)(v42, v41);
    v82 = v43;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF7F8);
    v45 = sub_237EF8A60();
    v46 = sub_237CE32D8();
    WitnessTable = swift_getWitnessTable();
    sub_237EFA000();

    v78 = v80;
    v79 = v81;
    v87 = v44;
    v83 = v44;
    v84 = v45;
    v48 = v45;
    v85 = v46;
    v86 = WitnessTable;
    v49 = WitnessTable;
    sub_237EF9380();
    sub_237EF9350();
    while (1)
    {
      v83 = v87;
      v84 = v48;
      v85 = v46;
      v86 = v49;
      sub_237EF9370();
      sub_237EF9360();
      if (__swift_getEnumTagSinglePayload(v11, 1, v28) == 1)
      {

        v33 = v67;
        v34 = v60;
        goto LABEL_2;
      }

      v50 = *v11;
      v51 = v28;
      v52 = v11 + *(v28 + 48);
      v53 = v74;
      (*v73)(v74, v52, v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
      result = swift_initStackObject();
      *(result + 16) = v72;
      *(result + 32) = v77;
      if (__OFADD__(*v75, v50))
      {
        break;
      }

      *(result + 40) = *v75 + v50;
      v54 = sub_237D166DC(result, v71);
      swift_setDeallocating();
      (*(v76 + 40))(v70 + *(v76 + 72) * v54, v53, v29);
      v28 = v51;
    }

    __break(1u);
    goto LABEL_14;
  }

  sub_237C84150();
  swift_allocError();
  *v56 = 0xD000000000000010;
  *(v56 + 8) = 0x8000000237F0ED70;
  *(v56 + 16) = 0;
  *(v56 + 24) = 0;
  *(v56 + 32) = 0;
  swift_willThrow();
  return sub_237C65484(v65, &qword_27DEB19C8);
}

uint64_t sub_237D5C5D4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65536E6D756C6F63 && a2 == 0xEF6E6F697463656CLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_237EF9D40();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_237D5C6A4()
{
  sub_237EFA120();
  sub_237C55258();
  return sub_237EFA170();
}

uint64_t sub_237D5C6FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D5C5D4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_237D5C75C@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_31();
  *a1 = result & 1;
  return result;
}

uint64_t sub_237D5C794(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237D5C7E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_237D5C83C()
{
  ColumnAggregator.applied(to:eventHandler:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t ColumnAggregator.debugDescription.getter()
{
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD000000000000022, 0x8000000237EFE410);
  sub_237EF9670();
  MEMORY[0x2383E0710](62, 0xE100000000000000);
  return 0;
}

void ColumnAggregator<>.encode(to:)()
{
  OUTLINED_FUNCTION_13_4();
  v2 = v1;
  type metadata accessor for ColumnAggregator.CodingKeys();
  OUTLINED_FUNCTION_22_19();
  WitnessTable = swift_getWitnessTable();
  v3 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v11 = v4;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  v7 = &WitnessTable - v6;
  v8 = *v0;
  v9 = *(v0 + 8);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_237D520D4(v8, v9);
  sub_237EFA1B0();
  v12 = v8;
  v13 = v9;
  sub_237D5CCC4();
  sub_237EF9A70();
  sub_237D52128(v12, v13);
  (*(v11 + 8))(v7, v3);
  OUTLINED_FUNCTION_12_6();
}

void ColumnAggregator<>.init(from:)()
{
  OUTLINED_FUNCTION_13_4();
  v2 = v1;
  v13 = v3;
  type metadata accessor for ColumnAggregator.CodingKeys();
  OUTLINED_FUNCTION_22_19();
  swift_getWitnessTable();
  v4 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_237EFA190();
  if (!v0)
  {
    sub_237D5CD18();
    sub_237EF9970();
    (*(v6 + 8))(v9, v4);
    v10 = v12;
    *v13 = v11;
    *(v13 + 8) = v10;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_12_6();
}

unint64_t sub_237D5CCC4()
{
  result = qword_27DEB16A0;
  if (!qword_27DEB16A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB16A0);
  }

  return result;
}

unint64_t sub_237D5CD18()
{
  result = qword_27DEB16A8[0];
  if (!qword_27DEB16A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB16A8);
  }

  return result;
}

uint64_t sub_237D5CD6C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_237D5CDC0(_BYTE *result, int a2, int a3)
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

void sub_237D5CEDC(id a1)
{
  if (a1 != 1)
  {
  }
}

unint64_t sub_237D5D1B8()
{
  result = qword_27DEB1810;
  if (!qword_27DEB1810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB1810);
  }

  return result;
}

unint64_t sub_237D5D20C()
{
  result = qword_27DEB1840;
  if (!qword_27DEB1840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB1840);
  }

  return result;
}

uint64_t sub_237D5D260(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_237D5D274(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    OUTLINED_FUNCTION_9_11();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void OUTLINED_FUNCTION_6_34(uint64_t a1@<X8>)
{
  v2 = *(v1 - 136);
  *(a1 - 48) = *(v1 - 608);
  *(a1 - 40) = v2;
}

uint64_t OUTLINED_FUNCTION_10_32()
{

  return sub_237D14EC8();
}

uint64_t OUTLINED_FUNCTION_25_16()
{

  return sub_237EF62E0();
}

uint64_t OUTLINED_FUNCTION_35_8()
{

  return swift_dynamicCastMetatype();
}

uint64_t OUTLINED_FUNCTION_39_8()
{

  return sub_237EF8F00();
}

uint64_t OUTLINED_FUNCTION_45_5()
{

  return sub_237EF62E0();
}

unint64_t OUTLINED_FUNCTION_50_7()
{

  return sub_237D4A59C();
}

uint64_t OUTLINED_FUNCTION_54_4()
{

  return sub_237EF8260();
}

uint64_t OUTLINED_FUNCTION_55_5(unint64_t *a1)
{

  return sub_237D5D274(a1, v1);
}

uint64_t OUTLINED_FUNCTION_56_7()
{
}

uint64_t OUTLINED_FUNCTION_57_6(unint64_t *a1)
{

  return sub_237D5D274(a1, v1);
}

uint64_t OUTLINED_FUNCTION_58_4()
{

  return sub_237EF8DF0();
}

uint64_t OUTLINED_FUNCTION_59_5()
{

  return sub_237D14EC8();
}

uint64_t OUTLINED_FUNCTION_70_3()
{

  return sub_237EF62E0();
}

uint64_t TemporalFeature.init(id:feature:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 32);
  *a4 = *a1;
  *(a4 + 8) = v7;
  *(a4 + 16) = *(a1 + 16);
  *(a4 + 32) = v8;
  v9 = type metadata accessor for TemporalFeature();
  v10 = *(*(a3 - 8) + 32);
  v11 = a4 + *(v9 + 28);

  return v10(v11, a2, a3);
}

uint64_t TemporalFeature.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = v3;
  return sub_237EF8260();
}

__n128 TemporalFeature.id.setter(__int128 *a1)
{
  v4 = a1[1];
  v5 = *a1;
  v2 = *(a1 + 4);

  result = v4;
  *v1 = v5;
  *(v1 + 16) = v4;
  *(v1 + 32) = v2;
  return result;
}

uint64_t sub_237D5D840(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65727574616566 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_237EF9D40();

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

uint64_t sub_237D5D900(char a1)
{
  if (a1)
  {
    return 0x65727574616566;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_237D5D93C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D5D840(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D5D968(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237D5D9BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t static TemporalFeature<A>.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_237EF9D40() & 1) == 0)
  {
    return 0;
  }

  v9 = v2 == v6 && v4 == v5;
  if (!v9 || v3 != v7)
  {
    return 0;
  }

  type metadata accessor for TemporalFeature();
  return sub_237EF8520() & 1;
}

uint64_t TemporalFeature<A>.hash(into:)()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  sub_237EF8610();
  MEMORY[0x2383E2210](v2);
  MEMORY[0x2383E2210](v3);
  MEMORY[0x2383E2210](v4);
  return sub_237EF83E0();
}

uint64_t TemporalFeature<A>.hashValue.getter()
{
  sub_237EFA120();
  TemporalFeature<A>.hash(into:)();
  return sub_237EFA170();
}

uint64_t sub_237D5DBCC()
{
  sub_237EFA120();
  TemporalFeature<A>.hash(into:)();
  return sub_237EFA170();
}

uint64_t TemporalFeature<A>.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v16[3] = a3;
  v4 = v3;
  v16[1] = a2;
  v16[2] = *(a2 + 16);
  type metadata accessor for TemporalFeature.CodingKeys();
  OUTLINED_FUNCTION_0_46();
  swift_getWitnessTable();
  v6 = sub_237EF9A80();
  OUTLINED_FUNCTION_1_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = v16 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA1B0();
  v12 = v4[1];
  v13 = v4[4];
  v17 = *v4;
  v18 = v12;
  v19 = *(v4 + 1);
  v20 = v13;
  v21 = 0;
  sub_237D5DE0C();
  sub_237EF8260();
  v14 = v16[4];
  sub_237EF9A70();

  if (!v14)
  {
    LOBYTE(v17) = 1;
    sub_237EF9A70();
  }

  return (*(v8 + 8))(v11, v6);
}

unint64_t sub_237D5DE0C()
{
  result = qword_27DEB19E0;
  if (!qword_27DEB19E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB19E0);
  }

  return result;
}

uint64_t TemporalFeature<A>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a3;
  v29 = a4;
  OUTLINED_FUNCTION_1_1();
  v28 = v6;
  MEMORY[0x28223BE20](v7);
  v31 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TemporalFeature.CodingKeys();
  OUTLINED_FUNCTION_0_46();
  swift_getWitnessTable();
  v33 = sub_237EF99A0();
  OUTLINED_FUNCTION_1_1();
  v30 = v9;
  MEMORY[0x28223BE20](v10);
  v11 = type metadata accessor for TemporalFeature();
  OUTLINED_FUNCTION_1_1();
  v27 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = v34;
  sub_237EFA190();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v15;
  v34 = v11;
  v18 = v31;
  v39 = 0;
  sub_237D5E1D0();
  sub_237EF9970();
  v19 = v36;
  v20 = v38;
  *v17 = v35;
  *(v17 + 1) = v19;
  *(v17 + 1) = v37;
  *(v17 + 4) = v20;
  LOBYTE(v35) = 1;
  sub_237EF9970();
  v21 = OUTLINED_FUNCTION_2_52();
  v22(v21);
  v23 = v34;
  (*(v28 + 32))(&v17[*(v34 + 28)], v18, a2);
  v24 = v27;
  (*(v27 + 16))(v29, v17, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v24 + 8))(v17, v23);
}

unint64_t sub_237D5E1D0()
{
  result = qword_27DEB19E8;
  if (!qword_27DEB19E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB19E8);
  }

  return result;
}

unint64_t sub_237D5E228()
{
  result = qword_27DEB19F0[0];
  if (!qword_27DEB19F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB19F0);
  }

  return result;
}

uint64_t sub_237D5E318()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_237D5E398(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 40) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 40) & ~v7, v6, v4);
      }

      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_237D5E518(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 40) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v21 = &a1[v10 + 40] & ~v10;

            __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *(a1 + 8) = 0u;
            *(a1 + 24) = 0u;
            *a1 = a2 & 0x7FFFFFFF;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_237D5E770(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t LinearRegressorModel.coefficients.getter()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB02F8);
  sub_237C96710(&qword_280C8CCD8, &qword_27DEB02F8);
  sub_237C9339C();
  v1 = v0;

  return v1;
}

double LinearRegressorModel.init<A>(coefficients:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a5;
  v13[6] = a6;
  v11 = sub_237C8FFEC(sub_237D5EBC4, v13, a3, MEMORY[0x277D839F8], MEMORY[0x277D84A98], a6, MEMORY[0x277D84AC0], a7);
  (*(*(a3 - 8) + 8))(a1, a3);
  *a8 = v11;
  result = 0.0;
  *(a8 + 8) = 0u;
  *(a8 + 24) = 0u;
  *(a8 + 40) = 0u;
  *(a8 + 56) = 0u;
  *(a8 + 65) = 0u;
  return result;
}

uint64_t sub_237D5EAD0(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  sub_237C65348();
  return sub_237EF8190();
}

uint64_t LinearRegressorModel.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[17] = a4;
  v6[18] = a5;
  v6[15] = a2;
  v6[16] = a3;
  v6[14] = a1;
  v7 = *(a5 + 16);
  v6[19] = v7;
  v6[20] = *(v7 - 8);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  memcpy(v6 + 2, v5, 0x51uLL);

  return MEMORY[0x2822009F8](sub_237D5ED00, 0, 0);
}

void sub_237D5ED00()
{
  v28 = v0;
  v27 = *MEMORY[0x277D85DE8];
  sub_237EF7E90();
  v1 = *(sub_237EF7E20() + 16);

  v2 = sub_237EF7E20();
  v3 = v2;
  if (v1 == 1)
  {
    if (!*(v2 + 16))
    {

      __break(1u);
      JUMPOUT(0x2383E2DF0);
    }

    v4 = *(v2 + 32);

    v6 = v0[2];
    v7 = *(v6 + 16);
    if (v4 == v7 - 1)
    {
      if (v7 >> 60)
      {
        __break(1u);
      }

      else
      {
        if ((8 * v7) <= 1024 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), isStackAllocationSafe))
        {
          MEMORY[0x28223BE20](isStackAllocationSafe);
          sub_237D5F180(&v24 - v8, v7, v9, v0 + 2);
          v19 = v0[22];
          v20 = v0[19];
          v21 = v0[14];
          v22 = *(v0[20] + 32);
          v22(v19, v0[21], v20);
          v22(v21, v19, v20);
LABEL_13:

LABEL_10:
          OUTLINED_FUNCTION_45();

          __asm { BRAA            X1, X16 }
        }

        v23 = v0[15];
        v3 = swift_slowAlloc();
        sub_237D5F180(v3, v7, v23, v0 + 2);
      }

      MEMORY[0x2383E2DF0](v3, -1, -1);
      goto LABEL_13;
    }

    v3 = sub_237EF7E20();
    sub_237EF9330();

    v25 = 0xD00000000000001ELL;
    v26 = 0x8000000237EFD610;
    v0[13] = *(v6 + 16) - 1;
    v12 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v12);

    MEMORY[0x2383E0710](0x6F6720747562205DLL, 0xEA00000000002074);
    sub_237EF7E20();
    v13 = MEMORY[0x2383E0A10]();
    v15 = v14;

    MEMORY[0x2383E0710](v13, v15);

    MEMORY[0x2383E0710](46, 0xE100000000000000);
    v11 = v25;
    v10 = v26;
  }

  else
  {
    v10 = 0x8000000237EFD5E0;
    v11 = 0xD000000000000024;
  }

  sub_237C84150();
  swift_allocError();
  *v16 = v3;
  *(v16 + 8) = v11;
  *(v16 + 16) = v10;
  *(v16 + 24) = 0;
  *(v16 + 32) = 6;
  swift_willThrow();

  goto LABEL_10;
}

uint64_t sub_237D5F180(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_237EF7E90();
  swift_getWitnessTable();
  v14[0] = sub_237EF7F50();
  sub_237EF8A60();
  swift_getWitnessTable();
  sub_237C9339C();
  v8 = v7;

  sub_237DBD8DC(v8, a1, a2);

  if (__OFSUB__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    *(a1 + a2 - 1) = 0x3FF0000000000000;
    if (a1)
    {
      v10 = *a4;
      v11 = *(*a4 + 16);
      v12 = type metadata accessor for LinearRegressorModel();
      v13 = *(v12 - 8);
      (*(v13 + 16))(v14, a4, v12);
      dot(_:_:)(a1, a2, 1, v10 + 32, v11, 1);
      (*(v13 + 8))(a4, v12);
      return sub_237EF81D0();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237D5F3A8(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  sub_237C65348();
  return sub_237EF8190();
}

void sub_237D5F49C()
{
  OUTLINED_FUNCTION_13_4();
  v1 = v0;
  v3 = v2[3];
  v25[3] = v2[2];
  v26 = v4;
  v25[1] = v2[4];
  v25[2] = v3;
  v25[0] = type metadata accessor for LinearRegressorModel.Storage();
  OUTLINED_FUNCTION_1();
  v28 = v5;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60);
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v25 - v16;
  v29 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_237F03530;
  *(v18 + 32) = *(v29 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB02F8);
  v19 = v25[0];
  sub_237C96710(&qword_280C8CCE0, &qword_27DEB02F8);
  sub_237EF7E40();
  v20 = *(v11 + 16);
  v27 = v9;
  v20(v14, v17, v9);
  sub_237D5F774(v14, v8);
  v21 = *(v26 + 24);
  v22 = *(v26 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v26, v21);
  v23 = *(v22 + 8);
  WitnessTable = swift_getWitnessTable();
  v23(v8, v19, WitnessTable, v21, v22);
  (*(v28 + 8))(v8, v19);
  (*(v11 + 8))(v17, v27);
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D5F774@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for LinearRegressorModel.Storage();
  *a2 = 0;
  *(a2 + 1) = 0;
  v5 = *(v4 + 44);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60);
  v7 = *(*(v6 - 8) + 32);

  return v7(&a2[v5], a1, v6);
}

void sub_237D5F804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_4();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v49 = v28;
  v50 = v27;
  v51 = v29;
  v30 = type metadata accessor for LinearRegressorModel.Storage();
  OUTLINED_FUNCTION_1();
  v48 = v31;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v32);
  v34 = v47 - v33;
  v36 = *(v26 + 24);
  v35 = *(v26 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v26, v36);
  v37 = *(v35 + 8);
  WitnessTable = swift_getWitnessTable();
  v37(v30, v30, WitnessTable, v36, v35);
  if (!v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60);
    sub_237C96710(qword_280C8CD78, &qword_27DEAEA60);
    v47[0] = sub_237EF7F50();
    v47[1] = v47;
    a10 = v47[0];
    MEMORY[0x28223BE20](v47[0]);
    v40 = v50;
    v39 = v51;
    v47[-4] = v24;
    v47[-3] = v39;
    v47[-2] = v40;
    v47[-1] = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECA8);
    sub_237C96710(qword_27DEB1B78, &qword_27DEAECA8);
    sub_237C9339C();
    v42 = v41;

    a10 = v42;
    v43 = sub_237EF8A60();
    v44 = swift_getWitnessTable();
    v46 = LinearRegressorModel.init<A>(coefficients:)(&a10, v24, v43, v51, v40, v44, v45, v49);
    (*(v48 + 8))(v34, v30, v46);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D5FABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_237C5FFA4;

  return LinearRegressorModel.applied(to:eventHandler:)(a1, a2, a3, a4, a5);
}

void sub_237D5FB84()
{
  OUTLINED_FUNCTION_13_4();
  v11 = v0;
  v12 = v1;
  v3 = v2;
  type metadata accessor for LinearRegressorModel.Storage.CodingKeys();
  OUTLINED_FUNCTION_1_53();
  swift_getWitnessTable();
  v4 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_237EFA1B0();
  v10 = v12;
  sub_237EF99D0();
  if (!v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60);
    sub_237D0A15C(&qword_280C8CD70);
    sub_237EF9A70();
  }

  (*(v6 + 8))(v9, v4);
  OUTLINED_FUNCTION_12_6();
}

void sub_237D5FD38()
{
  OUTLINED_FUNCTION_13_4();
  v33 = v0;
  v2 = v1;
  v28 = v3;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60);
  OUTLINED_FUNCTION_1();
  v27 = v4;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  v30 = &v25 - v6;
  type metadata accessor for LinearRegressorModel.Storage.CodingKeys();
  OUTLINED_FUNCTION_1_53();
  swift_getWitnessTable();
  v32 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v29 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for LinearRegressorModel.Storage();
  OUTLINED_FUNCTION_1();
  v26 = v10;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  v13 = (&v25 - v12);
  v14 = v2[3];
  v34 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v14);
  v15 = v33;
  sub_237EFA190();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    v16 = v30;
    v17 = v31;
    *v13 = sub_237EF98D0();
    v13[1] = v18;
    v33 = v13;
    sub_237D0A15C(&qword_280C8CD68);
    v19 = v17;
    sub_237EF9970();
    v20 = OUTLINED_FUNCTION_3_52();
    v21(v20);
    v22 = v9;
    v23 = v33;
    (*(v27 + 32))(v33 + *(v9 + 44), v16, v19);
    v24 = v26;
    (*(v26 + 16))(v28, v23, v22);
    __swift_destroy_boxed_opaque_existential_1(v34);
    (*(v24 + 8))(v23, v22);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D600A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D09370(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D600D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237D60128(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_237D601C4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237D60200()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237D60244(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 81))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_237D60284(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}