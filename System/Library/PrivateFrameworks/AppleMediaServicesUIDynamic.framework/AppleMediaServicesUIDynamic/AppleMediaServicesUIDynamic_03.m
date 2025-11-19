unint64_t sub_1CA12C9D4()
{
  result = qword_1EC4335F8;
  if (!qword_1EC4335F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4335F8);
  }

  return result;
}

unint64_t sub_1CA12CA28()
{
  result = qword_1EE03C170;
  if (!qword_1EE03C170)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE03C170);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ColorFactory.ColorType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ColorFactory.StaticNamedColor(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
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

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ColorFactory.StaticNamedColor(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ColorFactory.SemanticNamedColor(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ColorFactory.SemanticNamedColor(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1CA12CE14()
{
  result = qword_1EC433600;
  if (!qword_1EC433600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433600);
  }

  return result;
}

unint64_t sub_1CA12CE6C()
{
  result = qword_1EC433608;
  if (!qword_1EC433608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433608);
  }

  return result;
}

unint64_t sub_1CA12CEC4()
{
  result = qword_1EC433610;
  if (!qword_1EC433610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433610);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_19()
{

  return swift_allocError();
}

uint64_t sub_1CA12CF30(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1CA0F2ACC(a3, v5 + 16);
  *(v5 + 56) = a4;
  *(v5 + 64) = a5;
  v11 = objc_opt_self();

  v12 = [v11 defaultCenter];
  __swift_project_boxed_opaque_existential_2(a2, a2[3]);

  v13 = a1;
  [v12 addObserver:v5 selector:sel_networkStateDidChange_ name:v13 object:sub_1CA19CAE8()];

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_2(a3);
  __swift_destroy_boxed_opaque_existential_2(a2);
  return v5;
}

uint64_t sub_1CA12D058()
{
  sub_1CA12D084();
  __swift_destroy_boxed_opaque_existential_2(v0 + 16);

  return v0;
}

void sub_1CA12D084()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];
}

uint64_t sub_1CA12D0E8()
{
  sub_1CA12D058();

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

uint64_t sub_1CA12D11C()
{
  v1 = *v0;
  sub_1CA19AC18();
  if (v9[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433618);
    if (swift_dynamicCast())
    {
      if (*(&v11 + 1))
      {
        sub_1CA0EBE94(&v10, v13);
        __swift_project_boxed_opaque_existential_2(v0 + 2, v0[5]);
        v3 = v0[7];
        v2 = v0[8];
        sub_1CA0F2ACC(v13, &v10);
        v4 = swift_allocObject();
        *(v4 + 16) = v3;
        *(v4 + 24) = v2;
        sub_1CA0EBE94(&v10, v4 + 32);

        sub_1CA19B6F8();

        return __swift_destroy_boxed_opaque_existential_2(v13);
      }
    }

    else
    {
      v12 = 0;
      v10 = 0u;
      v11 = 0u;
    }
  }

  else
  {
    sub_1CA0F54A0(v9, &qword_1EC433830);
    v10 = 0u;
    v11 = 0u;
    v12 = 0;
  }

  sub_1CA0F54A0(&v10, &qword_1EC4345B0);
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v6 = sub_1CA19AFF8();
  __swift_project_value_buffer(v6, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
  v13[3] = v1;
  v13[0] = v0;

  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v13);
  sub_1CA19AF18();
  sub_1CA19AFB8();
}

void ComponentCell.apply(contentsOf:with:asPartOf:)()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_3_13(v0, v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433700);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_10_7(v4, v18);
  v5 = OUTLINED_FUNCTION_7_8();
  OUTLINED_FUNCTION_14_3(v5);
  sub_1CA19BFC8();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_18();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_8();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433620);
  sub_1CA19B658();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433628);
  OUTLINED_FUNCTION_8_8();
  v9 = OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_12_5(v9);
  v10 = OUTLINED_FUNCTION_2_14();
  v11(v10);
  OUTLINED_FUNCTION_13_3();
  sub_1CA19BFD8();
  v12 = OUTLINED_FUNCTION_4_12();
  v13(v12);
  v14 = OUTLINED_FUNCTION_16_3();
  v15(v14);
  v16 = OUTLINED_FUNCTION_15_2();
  v17(v16);
  OUTLINED_FUNCTION_20_0();
}

void ComponentCell.didSelect(contentsOf:with:asPartOf:)()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_3_13(v0, v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433630);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_10_7(v4, v18);
  v5 = OUTLINED_FUNCTION_7_8();
  OUTLINED_FUNCTION_14_3(v5);
  sub_1CA19B8C8();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_18();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_8();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433620);
  sub_1CA19B658();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433628);
  OUTLINED_FUNCTION_8_8();
  v9 = OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_12_5(v9);
  v10 = OUTLINED_FUNCTION_2_14();
  v11(v10);
  OUTLINED_FUNCTION_13_3();
  sub_1CA19B8D8();
  v12 = OUTLINED_FUNCTION_4_12();
  v13(v12);
  v14 = OUTLINED_FUNCTION_16_3();
  v15(v14);
  v16 = OUTLINED_FUNCTION_15_2();
  v17(v16);
  OUTLINED_FUNCTION_20_0();
}

{
  OUTLINED_FUNCTION_19_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for ResultingActionDispatcher.MetricsBehavior();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CA19BA68();
  OUTLINED_FUNCTION_1_0();
  v20 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v4;
  v22 = v2;
  swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  sub_1CA19B688();
  sub_1CA19B638();

  if (*(&v24 + 1))
  {
    sub_1CA0EBE94(&v23, v26);
    type metadata accessor for ResultingActionDispatcher();
    sub_1CA19B7D8();
    sub_1CA19BE18();
    v19[1] = v23;
    v19[2] = v6;
    sub_1CA19BE18();
    if (qword_1EE03B230 != -1)
    {
      swift_once();
    }

    v15 = sub_1CA19AFF8();
    v19[0] = __swift_project_value_buffer(v15, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    sub_1CA19AF88();
    *(swift_allocObject() + 16) = xmmword_1CA1A0930;
    *(&v24 + 1) = v4;
    *&v23 = v0;
    v16 = v0;
    sub_1CA19AF38();
    sub_1CA10BDC8(&v23, &qword_1EC433830);
    sub_1CA19AF18();
    *(&v24 + 1) = MEMORY[0x1E69E69B8];
    *&v23 = swift_allocObject();
    sub_1CA19B648();
    sub_1CA19AF38();
    sub_1CA10BDC8(&v23, &qword_1EC433830);
    sub_1CA19AFC8();

    v17 = v20;
    (*(v20 + 16))(v9, v14, v10);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4339E0);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v18);
    v23 = 0u;
    v24 = 0u;
    v25 = -1;
    ResultingActionDispatcher.perform(_:withMetrics:asPartOf:previousActionOutcome:)();

    sub_1CA10BDC8(&v23, &unk_1EC433740);
    sub_1CA12E180(v9);
    (*(v17 + 8))(v14, v10);
    __swift_destroy_boxed_opaque_existential_2(v26);
  }

  else
  {
    sub_1CA10BDC8(&v23, &unk_1EC433730);
  }

  OUTLINED_FUNCTION_20_0();
}

void ComponentCell.shouldSelect(contentsOf:with:asPartOf:)()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_3_13(v0, v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433700);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_10_7(v4, v18);
  v5 = OUTLINED_FUNCTION_7_8();
  OUTLINED_FUNCTION_14_3(v5);
  sub_1CA19BFC8();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_18();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_8();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433620);
  sub_1CA19B658();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433628);
  OUTLINED_FUNCTION_8_8();
  v9 = OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_12_5(v9);
  v10 = OUTLINED_FUNCTION_2_14();
  v11(v10);
  OUTLINED_FUNCTION_13_3();
  sub_1CA19BFD8();
  v12 = OUTLINED_FUNCTION_4_12();
  v13(v12);
  v14 = OUTLINED_FUNCTION_16_3();
  v15(v14);
  v16 = OUTLINED_FUNCTION_15_2();
  v17(v16);
  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1CA12E034()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1CA19B718();
}

BOOL ComponentCell.shouldSelect(contentsOf:with:asPartOf:)()
{
  swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  sub_1CA19B688();
  sub_1CA19B638();

  v0 = v3 != 0;
  sub_1CA10BDC8(v2, &unk_1EC433730);
  return v0;
}

uint64_t sub_1CA12E180(uint64_t a1)
{
  v2 = type metadata accessor for ResultingActionDispatcher.MetricsBehavior();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_1_18()
{

  return swift_getAssociatedTypeWitness();
}

void OUTLINED_FUNCTION_3_13(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 - 136) = a3;
  *(v4 - 128) = v3;
  *(v4 - 144) = a2;
}

uint64_t OUTLINED_FUNCTION_7_8()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_8_8()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_9_8()
{

  return sub_1CA19B688();
}

uint64_t OUTLINED_FUNCTION_11_6()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_12_5(uint64_t a1)
{

  return MEMORY[0x1EEE162E8](v2, v1, a1);
}

void sub_1CA12E35C()
{
  OUTLINED_FUNCTION_19_0();
  v3 = v2;
  v4 = sub_1CA19B148();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC432CB0);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_12_6();
  OUTLINED_FUNCTION_9_9(*(v9 + 24));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1CA19B0E8();
    OUTLINED_FUNCTION_0_4();
    (*(v10 + 32))(v3, v1);
  }

  else
  {
    sub_1CA19C4C8();
    v11 = sub_1CA19B238();
    OUTLINED_FUNCTION_10_8();

    sub_1CA19B138();
    swift_getAtKeyPath();

    (*(v6 + 8))(v0, v4);
  }

  OUTLINED_FUNCTION_20_0();
}

void sub_1CA12E4F8()
{
  OUTLINED_FUNCTION_19_0();
  v3 = v2;
  v4 = sub_1CA19B148();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC432CB8);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_12_6();
  OUTLINED_FUNCTION_9_9(*(v9 + 28));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1CA12F3F0(v1, v3);
  }

  else
  {
    sub_1CA19C4C8();
    v10 = sub_1CA19B238();
    OUTLINED_FUNCTION_10_8();

    sub_1CA19B138();
    swift_getAtKeyPath();

    (*(v6 + 8))(v0, v4);
  }

  OUTLINED_FUNCTION_20_0();
}

id sub_1CA12E66C()
{
  v1 = type metadata accessor for ComponentCellWrapper(0);
  v2 = OUTLINED_FUNCTION_12_4(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_3();
  v5 = v4 - v3;
  sub_1CA12F460(v0, v4 - v3);
  v6 = type metadata accessor for ComponentCellWrapper.ComponentCellWrapperCoordinator(0);
  v7 = objc_allocWithZone(v6);
  sub_1CA12F460(v5, v7 + OBJC_IVAR____TtCV27AppleMediaServicesUIDynamic20ComponentCellWrapper31ComponentCellWrapperCoordinator_parent);
  v11.receiver = v7;
  v11.super_class = v6;
  v8 = objc_msgSendSuper2(&v11, sel_init);
  OUTLINED_FUNCTION_3_14();
  sub_1CA12F6B0(v5, v9);
  return v8;
}

uint64_t sub_1CA12E72C()
{
  v2 = type metadata accessor for ResultingActionDispatcher.MetricsBehavior();
  v3 = OUTLINED_FUNCTION_12_4(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7_9();
  v4 = sub_1CA19BA68();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_3();
  v10 = v9 - v8;
  __swift_project_boxed_opaque_existential_2((v0 + OBJC_IVAR____TtCV27AppleMediaServicesUIDynamic20ComponentCellWrapper31ComponentCellWrapperCoordinator_parent + 24), *(v0 + OBJC_IVAR____TtCV27AppleMediaServicesUIDynamic20ComponentCellWrapper31ComponentCellWrapperCoordinator_parent + 48));
  sub_1CA19B718();
  if (!*(&v14 + 1))
  {
    return sub_1CA10BDC8(&v13, &unk_1EC433730);
  }

  sub_1CA0EBE94(&v13, v16);
  type metadata accessor for ResultingActionDispatcher();
  sub_1CA19B7D8();
  sub_1CA19BE18();
  sub_1CA19BE18();
  (*(v6 + 16))(v1, v10, v4);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4339E0);
  OUTLINED_FUNCTION_11_7(v11);
  v13 = 0u;
  v14 = 0u;
  v15 = -1;
  ResultingActionDispatcher.perform(_:withMetrics:asPartOf:previousActionOutcome:)();

  sub_1CA10BDC8(&v13, &unk_1EC433740);
  sub_1CA12F6B0(v1, type metadata accessor for ResultingActionDispatcher.MetricsBehavior);
  (*(v6 + 8))(v10, v4);
  return __swift_destroy_boxed_opaque_existential_2(v16);
}

id sub_1CA12EA00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ComponentCellWrapper.ComponentCellWrapperCoordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CA12EA88()
{
  result = type metadata accessor for ComponentCellWrapper(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CA12EB38(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CA12EB98()
{
  sub_1CA19B7D8();
  if (v0 <= 0x3F)
  {
    sub_1CA12EC3C();
    if (v1 <= 0x3F)
    {
      sub_1CA12EC94();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1CA12EC3C()
{
  if (!qword_1EC4336D0)
  {
    sub_1CA19B0E8();
    v0 = sub_1CA19B0D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC4336D0);
    }
  }
}

void sub_1CA12EC94()
{
  if (!qword_1EC4336D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4336E0);
    v0 = sub_1CA19B0D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC4336D8);
    }
  }
}

void sub_1CA12ECF8()
{
  OUTLINED_FUNCTION_19_0();
  v25 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4336F8);
  OUTLINED_FUNCTION_12_4(v2);
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433700);
  OUTLINED_FUNCTION_1_0();
  v23 = v5;
  v24 = v4;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433620);
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  v15 = v0[1];
  v14 = v0[2];
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
  sub_1CA0F2ACC((v0 + 3), v26);
  sub_1CA19B678();
  v26[0] = 0;
  sub_1CA19BFE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433710);
  swift_allocObject();
  v26[0] = sub_1CA19B9A8();
  sub_1CA12F4C4();
  sub_1CA19BFB8();
  (*(v14 + 16))(v13, v8, *v0, v15, v14);
  (*(v23 + 8))(v8, v24);
  (*(v10 + 8))(v13, v22);
  v26[3] = type metadata accessor for ComponentCellWrapper.ComponentCellWrapperCoordinator(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433720);
  sub_1CA19B228();
  v17 = objc_allocWithZone(MEMORY[0x1E69DD060]);
  v18 = sub_1CA12F528(v26, sel_performTap);
  sub_1CA19B228();
  v19 = v26[0];
  [v18 setDelegate_];

  v20 = v16;
  [v20 addGestureRecognizer_];

  OUTLINED_FUNCTION_20_0();
}

void sub_1CA12F018()
{
  OUTLINED_FUNCTION_19_0();
  v1 = v0;
  v19 = v2;
  v18 = v3;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4336E0);
  OUTLINED_FUNCTION_12_4(v8);
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1CA19B0C8();
  OUTLINED_FUNCTION_0_4();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_3();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4336F0);
  OUTLINED_FUNCTION_12_4(v11);
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_7_9();
  sub_1CA12E35C();
  v13 = sub_1CA19B0E8();
  OUTLINED_FUNCTION_11_7(v13);
  sub_1CA19C638();
  sub_1CA19C688();
  OUTLINED_FUNCTION_6_8();
  sub_1CA19B0B8();
  sub_1CA19C698();
  sub_1CA12E4F8();
  sub_1CA19C628();
  sub_1CA19C688();
  OUTLINED_FUNCTION_6_8();
  sub_1CA19B0A8();
  sub_1CA19C698();
  [v1 updateTraitsIfNeeded];
  v15 = v7;
  v16 = *(MEMORY[0x1E69DE090] + 8);
  if (v5)
  {
    v15 = *MEMORY[0x1E69DE090];
  }

  v17 = v18;
  if (v19)
  {
    v17 = *(MEMORY[0x1E69DE090] + 8);
  }

  LODWORD(v16) = 1148846080;
  LODWORD(v14) = 1112014848;
  [v1 systemLayoutSizeFittingSize:v15 withHorizontalFittingPriority:v17 verticalFittingPriority:{v16, v14, *&v18}];
  [v1 sizeThatFits_];
  OUTLINED_FUNCTION_20_0();
}

id sub_1CA12F21C@<X0>(void *a1@<X8>)
{
  result = sub_1CA12E66C();
  *a1 = result;
  return result;
}

uint64_t sub_1CA12F278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA12F66C(&qword_1EC433728);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1CA12F2F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA12F66C(&qword_1EC433728);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1CA12F378()
{
  sub_1CA12F66C(&qword_1EC433728);
  sub_1CA19B1F8();
  __break(1u);
}

uint64_t sub_1CA12F3F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4336E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA12F460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComponentCellWrapper(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CA12F4C4()
{
  result = qword_1EC433718;
  if (!qword_1EC433718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC433710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433718);
  }

  return result;
}

id sub_1CA12F528(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = __swift_project_boxed_opaque_existential_2(a1, a1[3]);
    v7 = *(v4 - 8);
    MEMORY[0x1EEE9AC00](v6);
    v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = sub_1CA19CAE8();
    (*(v7 + 8))(v9, v4);
    __swift_destroy_boxed_opaque_existential_2(a1);
  }

  else
  {
    v10 = 0;
  }

  v11 = [v2 initWithTarget:v10 action:a2];
  swift_unknownObjectRelease();
  return v11;
}

uint64_t sub_1CA12F66C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ComponentCellWrapper(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CA12F6B0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_9_9@<X0>(uint64_t a1@<X8>)
{

  return sub_1CA10BC7C(v1 + a1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_10_8()
{

  return sub_1CA19B058();
}

uint64_t OUTLINED_FUNCTION_11_7(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

uint64_t OUTLINED_FUNCTION_12_6()
{

  return type metadata accessor for ComponentCellWrapper(0);
}

uint64_t ComponentDefinition.init(id:model:component:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = a6;
  a8[1] = a7;
  a8[2] = result;
  a8[3] = a2;
  a8[4] = a3;
  a8[5] = a4;
  a8[6] = a5;
  return result;
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

uint64_t sub_1CA12F7F0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1CA12F830(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t ComponentLoaderError.hashValue.getter()
{
  sub_1CA19CBD8();
  MEMORY[0x1CCA9A240](0);
  return sub_1CA19CC18();
}

uint64_t sub_1CA12F908()
{
  sub_1CA19CBD8();
  ComponentLoaderError.hash(into:)();
  return sub_1CA19CC18();
}

uint64_t ComponentLoader.componentDefinition(withLocation:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = sub_1CA12FA64(a1, a2);
  v9 = v8 + 48;
  v10 = *(v8 + 16) + 1;
  while (1)
  {
    if (!--v10)
    {

      sub_1CA12FD84();
      swift_allocError();
      return swift_willThrow();
    }

    v11 = *v9;
    v12 = *(v9 + 8);
    v15 = *(v9 + 24);
    v16 = v12;
    v17 = *(v9 - 16);
    if (*v9 == a3 && v12 == a4)
    {
      break;
    }

    v9 += 56;
    if (sub_1CA19CAF8())
    {
      goto LABEL_11;
    }
  }

  v11 = a3;
LABEL_11:

  *a5 = v17;
  *(a5 + 16) = v11;
  *(a5 + 24) = v16;
  *(a5 + 40) = v15;
  return result;
}

uint64_t sub_1CA12FA64(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  swift_beginAccess();
  v7 = v2[3];
  if (*(v7 + 16) && (v8 = sub_1CA184158(a1, a2), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v11 = sub_1CA174720(a1, a2);
    if (dynamic_cast_existential_1_conditional(v11))
    {
      v10 = (*(v16 + 8))();
      swift_beginAccess();

      swift_isUniquelyReferenced_nonNull_native();
      v18 = v3[3];
      sub_1CA17AB0C();
      v3[3] = v18;
      swift_endAccess();
    }

    else
    {
      if (qword_1EE03B230 != -1)
      {
        swift_once();
      }

      v12 = sub_1CA19AFF8();
      __swift_project_value_buffer(v12, qword_1EE040B90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
      sub_1CA19AF88();
      *(swift_allocObject() + 16) = xmmword_1CA1A0930;
      v20 = v6;
      v19[0] = v3;

      v13 = AMSLogKey();
      if (v13)
      {
        v14 = v13;
        sub_1CA19C118();
      }

      sub_1CA19AF58();

      __swift_destroy_boxed_opaque_existential_2(v19);
      sub_1CA19AF18();
      v20 = MEMORY[0x1E69E6158];
      v19[0] = a1;
      v19[1] = a2;

      sub_1CA19AF38();
      sub_1CA0F0440(v19);
      sub_1CA19AFB8();

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v10;
}

unint64_t sub_1CA12FD84()
{
  result = qword_1EC433750;
  if (!qword_1EC433750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433750);
  }

  return result;
}

uint64_t ComponentLoader.deinit()
{

  return v0;
}

uint64_t ComponentLoader.__deallocating_deinit()
{
  ComponentLoader.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

unint64_t sub_1CA12FE38()
{
  result = qword_1EC433758;
  if (!qword_1EC433758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433758);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ComponentLoaderError(_BYTE *result, int a2, int a3)
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

id sub_1CA12FF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  ObjectType = swift_getObjectType();
  v22 = &v10[qword_1EE03BF10];
  *v22 = a1;
  *(v22 + 1) = a2;
  v23 = &v10[qword_1EE03BEF0];
  *v23 = a3;
  *(v23 + 1) = a4;
  v24 = &v10[qword_1EE03BF08];
  *v24 = a5;
  *(v24 + 1) = a6;
  v25 = &v10[qword_1EE03BF00];
  *v25 = a9;
  v25[1] = a10;
  v26 = &v10[qword_1EE03BEF8];
  *v26 = a7;
  *(v26 + 1) = a8;
  v28.receiver = v10;
  v28.super_class = ObjectType;
  return objc_msgSendSuper2(&v28, sel_init);
}

void sub_1CA130044()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1CA19AEF8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1CA19AFF8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v3, qword_1EE040B90);
  v35 = v6;
  v36 = v4;
  v8 = *(v4 + 16);
  v37 = v3;
  v8(v6, v7, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  v9 = *(*(sub_1CA19AF88() - 8) + 72);
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  v41 = ObjectType;
  aBlock = v0;
  v10 = v0;
  v11 = AMSLogKey();
  if (v11)
  {
    v12 = v11;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(&aBlock);
  v34[2] = v9;
  sub_1CA19AF68();
  sub_1CA19AEE8();
  sub_1CA19AED8();
  v13 = *&v10[qword_1EE03BF10];
  v14 = *&v10[qword_1EE03BF10 + 8];
  v15 = MEMORY[0x1E69E6158];
  v41 = MEMORY[0x1E69E6158];
  v34[1] = v13;
  aBlock = v13;
  v39 = v14;

  sub_1CA19AEB8();
  sub_1CA0F54A0(&aBlock, &qword_1EC433830);
  sub_1CA19AED8();
  v16 = *&v10[qword_1EE03BEF0];
  v17 = *&v10[qword_1EE03BEF0 + 8];
  v41 = v15;
  aBlock = v16;
  v39 = v17;

  sub_1CA19AEB8();
  sub_1CA0F54A0(&aBlock, &qword_1EC433830);
  sub_1CA19AED8();
  v18 = *&v10[qword_1EE03BEF8];
  v19 = *&v10[qword_1EE03BEF8 + 8];
  v34[0] = v18;
  if (v19)
  {
    v20 = MEMORY[0x1E69E6158];
    v21 = v19;
  }

  else
  {
    v21 = 0;
    v18 = 0;
    v20 = 0;
    v40 = 0;
  }

  aBlock = v18;
  v39 = v21;
  v41 = v20;

  sub_1CA19AEB8();
  sub_1CA0F54A0(&aBlock, &qword_1EC433830);
  sub_1CA19AED8();
  sub_1CA19AF08();
  v22 = v35;
  sub_1CA19AFC8();

  (*(v36 + 8))(v22, v37);
  v23 = objc_allocWithZone(MEMORY[0x1E698C8D8]);
  v24 = [v23 init];
  v25 = sub_1CA19C0E8();
  v26 = sub_1CA19C0E8();
  if (v19)
  {
    v19 = sub_1CA19C0E8();
  }

  v27 = [v24 contentInfoForApp:v25 cacheKey:v26 version:v19];

  v28 = swift_allocObject();
  *(v28 + 16) = v10;
  v42 = sub_1CA131D28;
  v43 = v28;
  aBlock = MEMORY[0x1E69E9820];
  v39 = 1107296256;
  v40 = sub_1CA1314FC;
  v41 = &block_descriptor_8;
  v29 = _Block_copy(&aBlock);
  v30 = v10;

  [v27 addSuccessBlock_];
  _Block_release(v29);
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  v42 = sub_1CA131D48;
  v43 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v39 = 1107296256;
  v40 = sub_1CA12FF5C;
  v41 = &block_descriptor_8_0;
  v32 = _Block_copy(&aBlock);
  v33 = v30;

  [v27 addErrorBlock_];
  _Block_release(v32);
}

void sub_1CA130648(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_1CA19AEF8();
  MEMORY[0x1EEE9AC00](v6 - 8);
  if ([a2 isCancelled])
  {
    return;
  }

  v7 = [a1 allKeys];
  if (!v7)
  {
    __break(1u);
    return;
  }

  v8 = v7;
  v52 = sub_1CA131334;
  v53 = 0;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v51 = sub_1CA131338;
  *(&v51 + 1) = &block_descriptor_11_1;
  v9 = _Block_copy(&aBlock);

  v10 = [v8 sortedArrayUsingComparator_];
  _Block_release(v9);
  if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
  {
    v11 = sub_1CA19C2B8();

    sub_1CA181FE8(v11, &aBlock);

    if (*(&v51 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_16;
      }

      v12 = [a1 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v12)
      {
        sub_1CA19C768();
        swift_unknownObjectRelease();
      }

      else
      {
        v48 = 0u;
        v49 = 0u;
      }

      aBlock = v48;
      v51 = v49;
      if (*(&v49 + 1))
      {
        sub_1CA0F2110(0, &qword_1EE03BD80);
        if (swift_dynamicCast())
        {
          a1 = v47;
          v13 = sub_1CA131D50(v47);
          if (v14)
          {
            v2 = v14;
            v44 = v13;
            if (qword_1EE03B230 == -1)
            {
              goto LABEL_13;
            }

            goto LABEL_35;
          }
        }

LABEL_16:
        sub_1CA10BD74();
        v19 = swift_allocError();
        *v20 = xmmword_1CA1A26C0;
        *(v20 + 16) = 3;
        sub_1CA17D778(v19, 1);

        v21 = v19;
LABEL_17:

        return;
      }
    }

    sub_1CA0F54A0(&aBlock, &qword_1EC433830);
    goto LABEL_16;
  }

  __break(1u);
LABEL_35:
  swift_once();
LABEL_13:
  v15 = sub_1CA19AFF8();
  __swift_project_value_buffer(v15, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  *(&v51 + 1) = ObjectType;
  *&aBlock = a2;
  v16 = a2;
  v17 = AMSLogKey();
  if (v17)
  {
    v18 = v17;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(&aBlock);
  sub_1CA19AF68();
  sub_1CA19AEE8();
  sub_1CA19AED8();
  *(&v51 + 1) = MEMORY[0x1E69E6158];
  *&aBlock = v44;
  *(&aBlock + 1) = v2;

  sub_1CA19AEB8();
  sub_1CA0F54A0(&aBlock, &qword_1EC433830);
  sub_1CA19AED8();
  sub_1CA19AF08();
  sub_1CA19AFC8();

  sub_1CA0F2110(0, &qword_1EE03C168);
  v45 = sub_1CA157B88();
  if (!v45)
  {
    *(swift_allocObject() + 16) = xmmword_1CA1A0930;
    *(&v51 + 1) = ObjectType;
    *&aBlock = v16;
    v16;
    v27 = AMSLogKey();
    if (v27)
    {
      v28 = v27;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(&aBlock);
    sub_1CA19AF68();
    sub_1CA19AF18();
    sub_1CA19AFB8();

    sub_1CA10BD74();
    v40 = swift_allocError();
    *v41 = xmmword_1CA1A26C0;
    *(v41 + 16) = 3;
    sub_1CA17D778(v40, 1);

    v21 = v40;
    goto LABEL_17;
  }

  v22 = *&v16[qword_1EE03BF00];
  v23 = *&v16[qword_1EE03BF00 + 8];
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  *(&v51 + 1) = ObjectType;
  *&aBlock = v16;
  v24 = v16;
  v25 = AMSLogKey();
  if (v25)
  {
    v26 = v25;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(&aBlock);
  sub_1CA19AF68();
  sub_1CA19AEE8();
  sub_1CA19AED8();
  v30 = *&v24[qword_1EE03BF08];
  v29 = *&v24[qword_1EE03BF08 + 8];
  *(&v51 + 1) = &type metadata for Artwork.Crop;
  *&aBlock = v30;
  *(&aBlock + 1) = v29;

  sub_1CA19AEB8();
  sub_1CA0F54A0(&aBlock, &qword_1EC433830);
  sub_1CA19AED8();
  type metadata accessor for CGSize(0);
  *(&v51 + 1) = v31;
  *&aBlock = v22;
  *(&aBlock + 1) = v23;
  sub_1CA19AEB8();
  sub_1CA0F54A0(&aBlock, &qword_1EC433830);
  sub_1CA19AED8();
  sub_1CA19AF08();
  sub_1CA19AFC8();

  v32 = sub_1CA1313C8(v45);
  v34 = v33;
  if (v33)
  {
    *(swift_allocObject() + 16) = xmmword_1CA1A0930;
    *(&v51 + 1) = ObjectType;
    *&aBlock = v24;
    v24;
    sub_1CA10B888(v32);
    v35 = AMSLogKey();
    if (v35)
    {
      v36 = v35;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(&aBlock);
    sub_1CA19AF68();
    sub_1CA19AEE8();
    sub_1CA19AED8();
    swift_getErrorValue();
    *(&v51 + 1) = v46;
    boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(&aBlock);
    (*(*(v46 - 8) + 16))(boxed_opaque_existential_2Tm);
    sub_1CA19AEB8();
    sub_1CA0F54A0(&aBlock, &qword_1EC433830);
    sub_1CA19AED8();
    sub_1CA19AF08();
    sub_1CA19AFB8();

    sub_1CA10B868(v32);
    v43 = a1;
  }

  else
  {
    *(swift_allocObject() + 16) = xmmword_1CA1A0930;
    *(&v51 + 1) = ObjectType;
    *&aBlock = v24;
    v37 = v24;
    v38 = AMSLogKey();
    if (v38)
    {
      v39 = v38;
      sub_1CA19C118();
    }

    v43 = a1;
    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(&aBlock);
    sub_1CA19AF68();
    sub_1CA19AF18();
    sub_1CA19AFC8();
  }

  sub_1CA17D778(v32, v34 & 1);

  sub_1CA10B868(v32);
}

uint64_t sub_1CA1311BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433760);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  sub_1CA0F1200(a1, v16);
  swift_dynamicCast();
  v12 = v14;
  v13 = v15;
  sub_1CA0F1200(a2, v11);
  swift_dynamicCast();
  v10[0] = v10[2];
  v10[1] = v10[3];
  v7 = sub_1CA19AEA8();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  sub_1CA0FB77C();
  v8 = sub_1CA19C758();
  sub_1CA0F54A0(v6, &qword_1EC433760);

  return v8;
}

uint64_t sub_1CA131338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v9[3] = swift_getObjectType();
  v9[0] = a2;
  v8[3] = swift_getObjectType();
  v8[0] = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = v5(v9, v8);
  __swift_destroy_boxed_opaque_existential_2(v8);
  __swift_destroy_boxed_opaque_existential_2(v9);
  return v6;
}

id sub_1CA1313C8(void *a1)
{
  v4 = *(v1 + qword_1EE03BF08);
  v3 = *(v1 + qword_1EE03BF08 + 8);
  v5 = v4 == 26479 && v3 == 0xE200000000000000;
  if (v5 || (sub_1CA19CAF8() & 1) != 0)
  {
    return sub_1CA1318B4(a1);
  }

  v9 = v4 == 26223 && v3 == 0xE200000000000000;
  if (v9 || (sub_1CA19CAF8() & 1) != 0)
  {
    return sub_1CA131984(a1);
  }

  v10 = v4 == 29299 && v3 == 0xE200000000000000;
  if (!v10 && (sub_1CA19CAF8() & 1) == 0)
  {
    sub_1CA10BD74();
    v7 = swift_allocError();
    *v11 = v4;
    *(v11 + 8) = v3;
    *(v11 + 16) = 2;

    return v7;
  }

  return sub_1CA131A54(a1);
}

void sub_1CA131504(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1CA131570(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1CA19AEF8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v6 = sub_1CA19AFF8();
  __swift_project_value_buffer(v6, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  v13 = ObjectType;
  v12[0] = a2;
  a2;
  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v12);
  v13 = MEMORY[0x1E69E6158];
  v12[0] = 0x29286E69616DLL;
  v12[1] = 0xE600000000000000;
  sub_1CA19AF38();
  sub_1CA0F54A0(v12, &qword_1EC433830);
  sub_1CA19AEE8();
  sub_1CA19AED8();
  swift_getErrorValue();
  v13 = v11;
  boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(v12);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_2Tm);
  sub_1CA19AEB8();
  sub_1CA0F54A0(v12, &qword_1EC433830);
  sub_1CA19AED8();
  sub_1CA19AF08();
  sub_1CA19AFB8();

  return sub_1CA17D778(a1, 1);
}

void sub_1CA13186C(void *a1)
{
  v1 = a1;
  sub_1CA130044();
}

uint64_t sub_1CA1318B4(void *a1)
{
  [a1 size];
  v4 = [a1 ams:0.0 imageCroppedTo:{344.0, v3, v2 + -344.0 + -772.0}];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1CA131A54(v4);
  }

  else
  {
    sub_1CA10BD74();
    v6 = swift_allocError();
    *v7 = xmmword_1CA1A3570;
    *(v7 + 16) = 3;
  }

  return v6;
}

uint64_t sub_1CA131984(void *a1)
{
  [a1 size];
  v4 = [a1 ams:0.0 imageCroppedTo:{296.0, v3, v2 + -296.0 + -1602.0}];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1CA131A54(v4);
  }

  else
  {
    sub_1CA10BD74();
    v6 = swift_allocError();
    *v7 = xmmword_1CA1A3570;
    *(v7 + 16) = 3;
  }

  return v6;
}

id sub_1CA131A54(void *a1)
{
  [a1 size];
  v3 = *(v1 + qword_1EE03BF00);
  v4 = *(v1 + qword_1EE03BF00 + 8);
  v6 = v5 / v3;
  v8 = v7 / v4;
  if (v8 < v6)
  {
    v6 = v8;
  }

  v9 = [a1 ams:v6 imageScaledTo:?];
  [v9 size];
  v12 = [v9 ams:(v10 - v3) * 0.5 imageCroppedTo:{(v11 - v4) * 0.5, v3, v4}];
  if (!v12)
  {
    sub_1CA10BD74();
    v12 = swift_allocError();
    *v13 = xmmword_1CA1A3570;
    *(v13 + 16) = 3;
  }

  return v12;
}

uint64_t sub_1CA131B9C()
{
  OUTLINED_FUNCTION_0_20(qword_1EE03BF10);

  OUTLINED_FUNCTION_0_20(qword_1EE03BEF0);

  OUTLINED_FUNCTION_0_20(qword_1EE03BF08);

  OUTLINED_FUNCTION_0_20(qword_1EE03BEF8);
}

uint64_t sub_1CA131BFC()
{
}

uint64_t type metadata accessor for ContentImageFetchOperation()
{
  result = qword_1EE03BEE0;
  if (!qword_1EE03BEE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1CA131D50(void *a1)
{
  v1 = [a1 path];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CA19C118();

  return v3;
}

uint64_t sub_1CA131DD0(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v39 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  for (i = 0; v6; result = sub_1CA132B60(v17, &qword_1EC433830))
  {
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (i << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_1CA132AF0(*(a1 + 56) + 32 * v12, v38);
    *&v37 = v15;
    *(&v37 + 1) = v14;
    v34 = v37;
    v35 = v38[0];
    v36 = v38[1];
    sub_1CA132AF0(&v35, &v28);
    if (v29)
    {
      sub_1CA0F11E8(&v28, v33);
      v31 = v34;
      v32[0] = v35;
      v32[1] = v36;
      sub_1CA0F11E8(v33, v30);
      v16 = *(v2 + 16);
      if (*(v2 + 24) <= v16)
      {

        sub_1CA175C7C(v16 + 1, 1);
        v2 = v39;
      }

      else
      {
      }

      v18 = v31;
      sub_1CA19CBD8();
      sub_1CA19C198();
      result = sub_1CA19CC18();
      v19 = v2 + 64;
      v20 = -1 << *(v2 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v2 + 64 + 8 * (v21 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v20) >> 6;
        while (++v22 != v25 || (v24 & 1) == 0)
        {
          v26 = v22 == v25;
          if (v22 == v25)
          {
            v22 = 0;
          }

          v24 |= v26;
          v27 = *(v19 + 8 * v22);
          if (v27 != -1)
          {
            v23 = __clz(__rbit64(~v27)) + (v22 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_28;
      }

      v23 = __clz(__rbit64((-1 << v21) & ~*(v2 + 64 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
      *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      *(*(v2 + 48) + 16 * v23) = v18;
      sub_1CA0F11E8(v30, (*(v2 + 56) + 32 * v23));
      ++*(v2 + 16);
      v17 = v32;
    }

    else
    {

      sub_1CA132B60(&v34, &qword_1EC433790);
      v17 = &v28;
    }
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++i;
    if (v6)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1CA132098()
{
  if (v0[8])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_1CA1320AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433788);
  inited = swift_initStackObject();
  v2 = inited;
  *(inited + 16) = xmmword_1CA1A19C0;
  *(inited + 32) = 1701080931;
  *(inited + 40) = 0xE400000000000000;
  v3 = *v0;
  if (*(v0 + 8))
  {
    v3 = 0;
  }

  v4 = MEMORY[0x1E69E6530];
  *(inited + 48) = v3;
  *(inited + 72) = v4;
  *(inited + 80) = 0x7470697263736564;
  *(inited + 88) = 0xEB000000006E6F69;
  v5 = MEMORY[0x1E69E6158];
  if (v0[3])
  {
    v6 = v0[2];
    v7 = MEMORY[0x1E69E6158];
    v8 = v0[3];
  }

  else
  {
    v6 = 0;
    v8 = 0;
    v7 = 0;
    *(inited + 112) = 0;
  }

  *(inited + 96) = v6;
  *(inited + 104) = v8;
  *(inited + 120) = v7;
  *(inited + 128) = 0x6E69616D6F64;
  *(inited + 136) = 0xE600000000000000;
  v10 = v0[4];
  v9 = v0[5];
  *(inited + 168) = v5;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v10 = qword_1EC433768;
  }

  v2[18] = v10;
  v2[19] = v11;
  v2[22] = 0x6F666E4972657375;
  v2[23] = 0xE800000000000000;
  v12 = v0[6];
  if (v12)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433588);
  }

  else
  {
    v13 = 0;
    v2[25] = 0;
    v2[26] = 0;
  }

  v2[24] = v12;
  v2[27] = v13;
  v2[28] = 0x65756C6176;
  v2[29] = 0xE500000000000000;
  sub_1CA132AF0((v0 + 7), (v2 + 30));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433830);
  v14 = sub_1CA19C038();
  v15 = sub_1CA131DD0(v14);

  return v15;
}

uint64_t sub_1CA1322A0()
{
  v0 = qword_1EC433768;

  return v0;
}

uint64_t sub_1CA1322E0(uint64_t a1)
{
  v2 = sub_1CA132BB4();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1CA13231C(uint64_t a1)
{
  v2 = sub_1CA132BB4();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

double sub_1CA132358@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a2;
  v6 = sub_1CA19B4D8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_1_19();
  v10 = sub_1CA161EA4();
  if (v3)
  {

    v10 = 0;
  }

  *a3 = v10;
  *(a3 + 8) = v3 != 0;
  *(a3 + 16) = sub_1CA161FD8();
  *(a3 + 24) = v11;
  *(a3 + 32) = sub_1CA161FD8();
  *(a3 + 40) = v12;
  *(a3 + 48) = sub_1CA1326D8(0x6F666E4972657375, 0xE800000000000000, &type metadata for DecodedJSError);
  OUTLINED_FUNCTION_1_19();
  sub_1CA19B4E8();
  if (sub_1CA19B498())
  {
    goto LABEL_7;
  }

  sub_1CA19B4B8();
  if (!v23)
  {
    sub_1CA132B60(&v22, &qword_1EC433830);
LABEL_7:
    v15 = sub_1CA19BFA8();
    sub_1CA12C890();
    v16 = swift_allocError();
    *v17 = 1701080931;
    v17[1] = 0xE400000000000000;
    v17[2] = &type metadata for DecodedJSError;
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69AB690], v15);
    swift_willThrow();
    sub_1CA19B5C8();
    OUTLINED_FUNCTION_4_6();
    (*(v18 + 8))(v26);
    v19 = *(v7 + 8);
    v19(a1, v6);
    v19(v9, v6);

    v24 = 0u;
    v25 = 0u;
    goto LABEL_8;
  }

  sub_1CA19B5C8();
  OUTLINED_FUNCTION_4_6();
  (*(v13 + 8))(v26);
  v14 = *(v7 + 8);
  v14(a1, v6);
  v14(v9, v6);
  sub_1CA0F11E8(&v22, &v24);
LABEL_8:
  result = *&v24;
  v21 = v25;
  *(a3 + 56) = v24;
  *(a3 + 72) = v21;
  return result;
}

uint64_t sub_1CA1326D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA19B4D8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA19B4E8();
  if ((sub_1CA19B498() & 1) != 0 || (v10 = sub_1CA132894()) == 0)
  {
    v11 = sub_1CA19BFA8();
    sub_1CA12C890();
    swift_allocError();
    *v12 = a1;
    v12[1] = a2;
    v12[2] = a3;
    (*(*(v11 - 8) + 104))(v12, *MEMORY[0x1E69AB690], v11);
    swift_willThrow();
    v13 = *(v7 + 8);

    v13(v9, v6);
  }

  else
  {
    v11 = v10;
    (*(v7 + 8))(v9, v6);
  }

  return v11;
}

uint64_t sub_1CA132894()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433778);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  sub_1CA19B408();
  v3 = sub_1CA19B758();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_1CA132B60(v2, &qword_1EC433778);
    return 0;
  }

  else
  {
    v4 = sub_1CA19B748();
    (*(*(v3 - 8) + 8))(v2, v3);
  }

  return v4;
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1CA1329CC(uint64_t a1, unsigned int a2)
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

uint64_t sub_1CA132A20(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CA132A9C()
{
  result = qword_1EC433780;
  if (!qword_1EC433780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433780);
  }

  return result;
}

uint64_t sub_1CA132AF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA132B60(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_4_6();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1CA132BB4()
{
  result = qword_1EC433798;
  if (!qword_1EC433798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433798);
  }

  return result;
}

uint64_t DefaultLayoutSpacingModel.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  sub_1CA19B5C8();
  OUTLINED_FUNCTION_4_6();
  (*(v4 + 8))(a2);
  sub_1CA19B4D8();
  OUTLINED_FUNCTION_4_6();
  return (*(v5 + 8))(a1);
}

uint64_t type metadata accessor for DeferredPageDestination()
{
  result = qword_1EC4337A0;
  if (!qword_1EC4337A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CA132D70()
{
  result = type metadata accessor for JSServiceRequest();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CA132DDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v37 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4337B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v36 = (&v33 - v5);
  v38 = sub_1CA19B4D8();
  v6 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_1_3();
  v9 = v8 - v7;
  v10 = type metadata accessor for JSServiceRequest();
  OUTLINED_FUNCTION_0_4();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_3();
  v34 = v13 - v12;
  v14 = type metadata accessor for DeferredPageDestination();
  OUTLINED_FUNCTION_0_4();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1_3();
  v18 = v17 - v16;
  v19 = a1;
  sub_1CA19B4E8();
  v20 = sub_1CA19B498();
  v21 = v37;
  if (v20)
  {
    goto LABEL_4;
  }

  v22 = v38;
  v33 = v19;
  v23 = v36;
  sub_1CA1331A0(v9, v37, v36);
  if (__swift_getEnumTagSinglePayload(v23, 1, v10) == 1)
  {
    sub_1CA13336C(v23);
    v19 = v33;
LABEL_4:
    v24 = sub_1CA19BFA8();
    sub_1CA12C890();
    swift_allocError();
    strcpy(v25, "serviceRequest");
    v25[15] = -18;
    *(v25 + 2) = v14;
    (*(*(v24 - 8) + 104))(v25, *MEMORY[0x1E69AB690], v24);
    swift_willThrow();
    v26 = *(v6 + 8);
    v27 = v38;
    v26(v19, v38);
    v26(v9, v27);
    sub_1CA19B5C8();
    OUTLINED_FUNCTION_0_4();
    return (*(v28 + 8))(v21);
  }

  v30 = *(v6 + 8);
  v30(v33, v22);
  v30(v9, v22);
  v31 = v34;
  sub_1CA1333D4(v23, v34, type metadata accessor for JSServiceRequest);
  sub_1CA1333D4(v31, v18, type metadata accessor for JSServiceRequest);
  sub_1CA1333D4(v18, v35, type metadata accessor for DeferredPageDestination);
  sub_1CA19B5C8();
  OUTLINED_FUNCTION_0_4();
  return (*(v32 + 8))(v21);
}

uint64_t sub_1CA1331A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1CA19B5C8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1CA19B4D8();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v13 + 16))(v12, a1);
  (*(v7 + 16))(v9, a2, v6);
  JSServiceRequest.init(deserializing:using:)(v12, v9, a3);
  v14 = type metadata accessor for JSServiceRequest();
  return __swift_storeEnumTagSinglePayload(a3, 0, 1, v14);
}

uint64_t sub_1CA13336C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4337B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CA1333D4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0_4();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1CA133434()
{
  v0 = sub_1CA19B298();
  __swift_allocate_value_buffer(v0, qword_1EC4337C0);
  *__swift_project_value_buffer(v0, qword_1EC4337C0) = 2;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

BOOL sub_1CA1334C4()
{
  v1 = [v0 navigationController];
  v2 = v1;
  if (v1)
  {
  }

  return v2 == 0;
}

id sub_1CA13350C(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic26DeferredPageViewController_child] = 0;
  sub_1CA13556C(a1, &v2[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic26DeferredPageViewController_destination]);
  *&v2[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic26DeferredPageViewController_objectGraph] = a2;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for DeferredPageViewController();
  v5 = objc_msgSendSuper2(&v8, sel_init);
  OUTLINED_FUNCTION_2_15();
  sub_1CA135688(a1, v6);
  return v5;
}

void sub_1CA133598()
{
  *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic26DeferredPageViewController_child) = 0;
  sub_1CA19C9F8();
  __break(1u);
}

id sub_1CA13365C()
{
  v1 = [v0 parentViewController];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass() || sub_1CA1334C4())
    {
      v3 = [v2 navigationItem];

      return v3;
    }
  }

  v6.receiver = v0;
  v6.super_class = type metadata accessor for DeferredPageViewController();
  v5 = objc_msgSendSuper2(&v6, sel_navigationItem);

  return v5;
}

void sub_1CA13372C()
{
  v1 = v0;
  v2 = sub_1CA19B018();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_3();
  v8 = v7 - v6;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for DeferredPageViewController();
  objc_msgSendSuper2(&v13, sel_loadView);
  v9 = [v1 view];
  if (_UISolariumEnabled() && ((*(v4 + 104))(v8, *MEMORY[0x1E698C478], v2), v10 = sub_1CA19B008(), (*(v4 + 8))(v8, v2), (v10 & 1) != 0))
  {
    v11 = &selRef_ams_defaultPlatformBackgroundColor;
  }

  else
  {
    v11 = &selRef_ams_primaryGroupedBackground;
  }

  v12 = [objc_opt_self() *v11];
  [v9 setBackgroundColor_];
}

uint64_t sub_1CA1338EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeferredPageViewController();
  objc_msgSendSuper2(&v2, sel_viewDidLoad);
  return sub_1CA133A9C();
}

void sub_1CA133970()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for DeferredPageViewController();
  objc_msgSendSuper2(&v13, sel_viewWillLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic26DeferredPageViewController_child];
  if (v1)
  {
    v2 = [v1 view];
    if (v2)
    {
      v3 = v2;
      v4 = [v0 view];
      [v4 bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      [v3 setFrame_];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1CA133A9C()
{
  sub_1CA19B2D8();
  OUTLINED_FUNCTION_1_0();
  v46 = v2;
  v47 = v1;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_3();
  v45 = v4 - v3;
  sub_1CA19B318();
  OUTLINED_FUNCTION_1_0();
  v43 = v6;
  v44 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_3();
  v42 = v8 - v7;
  v41 = sub_1CA19B348();
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v38 - v15;
  v17 = objc_allocWithZone(type metadata accessor for LoadingViewController());
  v18 = sub_1CA165E94(0);
  sub_1CA134BCC(v18);

  sub_1CA13425C();
  OUTLINED_FUNCTION_14_2();
  *(swift_allocObject() + 16) = v0;
  v49 = sub_1CA19B8B8();
  v50 = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_2Tm(aBlock);
  v19 = v0;
  sub_1CA19B8A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433838);
  v20 = sub_1CA19BE58();

  __swift_destroy_boxed_opaque_existential_2(aBlock);
  OUTLINED_FUNCTION_14_2();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_8_4();
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1CA135708;
  *(v22 + 24) = v21;
  OUTLINED_FUNCTION_14_2();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = sub_1CA0F2110(0, &qword_1EE03C230);

  v24 = sub_1CA19C598();
  v49 = v23;
  v50 = MEMORY[0x1E69AB720];
  aBlock[0] = v24;
  v25 = v20;
  sub_1CA19BE68();

  __swift_destroy_boxed_opaque_existential_2(aBlock);

  v40 = sub_1CA19C598();
  sub_1CA19B338();
  if (qword_1EC432C50 != -1)
  {
    swift_once();
  }

  v26 = sub_1CA19B298();
  v27 = __swift_project_value_buffer(v26, qword_1EC4337C0);
  v28 = v16;
  MEMORY[0x1CCA989F0](v14, v27);
  v39 = *(v10 + 8);
  v29 = v41;
  v39(v14, v41);
  OUTLINED_FUNCTION_14_2();
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_8_4();
  v31 = swift_allocObject();
  *(v31 + 16) = v25;
  *(v31 + 24) = v30;
  v50 = sub_1CA135720;
  v51 = v31;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CA0F4068;
  v49 = &block_descriptor_9;
  v32 = _Block_copy(aBlock);

  v33 = v42;
  sub_1CA19B2F8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1CA0F7938();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C70);
  sub_1CA0F40C4();
  v34 = v45;
  v35 = v47;
  sub_1CA19C788();
  v36 = v40;
  MEMORY[0x1CCA99BC0](v28, v33, v34, v32);
  _Block_release(v32);

  (*(v46 + 8))(v34, v35);
  (*(v43 + 8))(v33, v44);
  return (v39)(v28, v29);
}

uint64_t sub_1CA134030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433838) + 48);
  v7 = sub_1CA19B4D8();
  (*(*(v7 - 8) + 16))(a3, a1, v7);
  *(a3 + v6) = *(a2 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic26DeferredPageViewController_objectGraph);
}

void sub_1CA1340D8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1CA1347E4(a1);
  }
}

void sub_1CA1341A0(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1CA134A98(a1);
  }
}

void sub_1CA1341FC()
{
  if ((sub_1CA19BE28() & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v1 = Strong;
      sub_1CA134E54();
    }
  }
}

uint64_t sub_1CA13425C()
{
  v1 = type metadata accessor for DeferredPageDestination();
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_1_3();
  v4 = v3 - v2;
  sub_1CA19B7D8();
  sub_1CA19BE18();
  sub_1CA13556C(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic26DeferredPageViewController_destination, v4);
  v5 = JSService.perform(request:)();
  sub_1CA135688(v4, type metadata accessor for JSServiceRequest);
  OUTLINED_FUNCTION_14_2();
  *(swift_allocObject() + 16) = v0;
  OUTLINED_FUNCTION_14_2();
  *(swift_allocObject() + 16) = v0;
  v6 = sub_1CA0F2110(0, &qword_1EE03C230);
  v7 = v0;
  v8 = sub_1CA19C598();
  v10[3] = v6;
  v10[4] = MEMORY[0x1E69AB720];
  v10[0] = v8;
  sub_1CA19BE68();

  __swift_destroy_boxed_opaque_existential_2(v10);
  return v5;
}

uint64_t sub_1CA134404(uint64_t a1, void *a2)
{
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v3 = sub_1CA19AFF8();
  __swift_project_value_buffer(v3, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
  v8[3] = type metadata accessor for DeferredPageViewController();
  v8[0] = a2;
  v4 = a2;
  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v8);
  sub_1CA19AF18();
  sub_1CA19AFC8();
}

uint64_t sub_1CA1345B4(uint64_t a1, void *a2)
{
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v3 = sub_1CA19AFF8();
  __swift_project_value_buffer(v3, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  v11 = type metadata accessor for DeferredPageViewController();
  v10[0] = a2;
  v4 = a2;
  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v10);
  sub_1CA19AF18();
  swift_getErrorValue();
  v11 = v9;
  boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(v10);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_2Tm);
  sub_1CA19AF38();
  sub_1CA132B60(v10, &qword_1EC433830);
  sub_1CA19AFB8();
}

void sub_1CA1347E4(uint64_t a1)
{
  sub_1CA1355D8();
  sub_1CA19BE08();
  v2 = sub_1CA192E7C(a1, v17[0]);
  if (v2)
  {
    v3 = v2;
    v16 = v2;
    sub_1CA0F2110(0, &unk_1EE03C240);
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433820);
    if (swift_dynamicCast())
    {
      sub_1CA0EBE94(&v13, v17);
      v5 = v18;
      v6 = v19;
      __swift_project_boxed_opaque_existential_2(v17, v18);
      (*(v6 + 8))(v5, v6);
      OUTLINED_FUNCTION_14_2();
      v7 = swift_allocObject();
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_8_4();
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      *(v8 + 24) = v4;
      v9 = sub_1CA0F2110(0, &qword_1EE03C230);
      v10 = v4;
      v11 = sub_1CA19C598();
      *(&v14 + 1) = v9;
      v15 = MEMORY[0x1E69AB720];
      *&v13 = v11;
      sub_1CA19BE98();

      __swift_destroy_boxed_opaque_existential_2(&v13);
      __swift_destroy_boxed_opaque_existential_2(v17);
    }

    else
    {
      v15 = 0;
      v13 = 0u;
      v14 = 0u;
      sub_1CA132B60(&v13, &qword_1EC433828);
      sub_1CA134BCC(v4);
    }
  }

  else
  {
    sub_1CA13562C();
    v12 = swift_allocError();
    sub_1CA134A98(v12);
  }
}

void sub_1CA134A3C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1CA134BCC(a3);
  }
}

void sub_1CA134A98(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic26DeferredPageViewController_objectGraph);

  v4 = sub_1CA1334C4();
  OUTLINED_FUNCTION_14_2();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = objc_allocWithZone(type metadata accessor for ErrorViewController());
  v7 = a1;
  v8 = sub_1CA15499C(a1, v3, v4, sub_1CA1355D0, v5);
  sub_1CA134BCC(v8);
  sub_1CA134E54();
}

void sub_1CA134B78()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1CA133A9C();
  }
}

id sub_1CA134BCC(void *a1)
{
  sub_1CA134CB4();
  v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic26DeferredPageViewController_child;
  if (*&v1[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic26DeferredPageViewController_child])
  {
    [v1 unsetChildViewController_];
    v4 = *&v1[v3];
  }

  else
  {
    v4 = 0;
  }

  *&v1[v3] = a1;
  v5 = a1;

  return [v1 setChildViewController_];
}

void sub_1CA134CB4()
{
  if (sub_1CA134D68())
  {
    v1 = [v0 navigationItem];
    v2 = MEMORY[0x1E69E7CC0];
    sub_1CA1535E0(MEMORY[0x1E69E7CC0], v1);

    v3 = [v0 navigationItem];
    sub_1CA1535EC(v2, v3);
  }
}

uint64_t sub_1CA134D68()
{
  v1 = [v0 navigationController];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 viewControllers];
  sub_1CA0F2110(0, &unk_1EE03C240);
  v4 = sub_1CA19C2B8();

  v5 = sub_1CA0F04EC(v4);

  if (v5 >= 2)
  {
    v7 = [v0 navigationItem];
    v6 = [v7 hidesBackButton];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

void sub_1CA134E54()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433D90);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v37 - v3;
  v5 = sub_1CA19BDA8();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_3();
  v11 = v10 - v9;
  v12 = sub_1CA19B018();
  OUTLINED_FUNCTION_1_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1_3();
  v18 = v17 - v16;
  if (sub_1CA134D68())
  {
    v19 = [v0 navigationItem];
    sub_1CA1535EC(MEMORY[0x1E69E7CC0], v19);

    if (_UISolariumEnabled() && ((*(v14 + 104))(v18, *MEMORY[0x1E698C478], v12), v20 = sub_1CA19B008(), (*(v14 + 8))(v18, v12), (v20 & 1) != 0))
    {
      v38 = type metadata accessor for DeferredPageViewController();
      v37 = v1;
      objc_allocWithZone(MEMORY[0x1E69DC708]);
      v21 = v1;
      sub_1CA1530E0();
      v23 = v22;
      v24 = [v21 navigationController];
      if (v24 && (v25 = v24, v26 = [v24 navigationBar], v25, v27 = objc_msgSend(v26, sel_backItem), v26, v27) && (v27, v28 = objc_msgSend(v21, sel_traitCollection), v29 = objc_msgSend(v28, sel_userInterfaceIdiom), v28, v29 != 5))
      {
        v30 = [v21 navigationItem];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433810);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_1CA1A0C40;
        *(v36 + 32) = v23;
        sub_1CA1535E0(v36, v30);
      }

      else
      {
        v30 = [v21 navigationItem];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433810);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1CA1A0C40;
        *(v31 + 32) = v23;
        sub_1CA1535EC(v31, v30);
      }
    }

    else
    {
      sub_1CA19B7D8();
      sub_1CA19BE18();
      type metadata accessor for Localizations();
      (*(v7 + 16))(v4, v11, v5);
      __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
      sub_1CA166B54(0x415F4C45434E4143, 0xED00004E4F495443, v4);
      sub_1CA132B60(v4, &qword_1EC433D90);
      v32 = [v1 navigationItem];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433810);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1CA1A0C40;
      v38 = type metadata accessor for DeferredPageViewController();
      v37 = v1;
      objc_allocWithZone(MEMORY[0x1E69DC708]);
      v34 = v1;
      sub_1CA153220();
      *(v33 + 32) = v35;
      sub_1CA1535E0(v33, v32);

      (*(v7 + 8))(v11, v5);
    }
  }
}

id sub_1CA1353D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeferredPageViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DeferredPageViewController()
{
  result = qword_1EC4337F8;
  if (!qword_1EC4337F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CA1354C4()
{
  result = type metadata accessor for JSServiceRequest();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CA13556C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeferredPageDestination();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CA1355D8()
{
  result = qword_1EE03CEC0[0];
  if (!qword_1EE03CEC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE03CEC0);
  }

  return result;
}

unint64_t sub_1CA13562C()
{
  result = qword_1EC433818;
  if (!qword_1EC433818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433818);
  }

  return result;
}

uint64_t sub_1CA135688(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_BYTE *storeEnumTagSinglePayload for DeferredPageViewController.PresentationError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1CA1357F0()
{
  result = qword_1EC433848;
  if (!qword_1EC433848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433848);
  }

  return result;
}

uint64_t sub_1CA13585C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC432CA8);
  swift_allocObject();
  *(v1 + 16) = sub_1CA19B3F8();
  *(v1 + 24) = xmmword_1CA1A1A30;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v1;
}

void DelegateController.didFinishCarrierLinking(withResult:error:)()
{
  OUTLINED_FUNCTION_19_0();
  v38 = v0;
  v39 = v1;
  sub_1CA19B2D8();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_12_7(v3);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_3();
  v6 = OUTLINED_FUNCTION_13_4(v5);
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_3();
  v12 = v11 - v10;
  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  __swift_project_value_buffer(v6, qword_1EE040B90);
  v13 = OUTLINED_FUNCTION_15_3();
  v14(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  OUTLINED_FUNCTION_10_6();
  v15 = sub_1CA19AF88();
  OUTLINED_FUNCTION_7_3(v15);
  OUTLINED_FUNCTION_4_8();
  *(OUTLINED_FUNCTION_22_2() + 16) = xmmword_1CA1A19C0;
  v16 = type metadata accessor for DelegateController();
  OUTLINED_FUNCTION_21_1(v16);
  v17 = AMSLogKey();
  if (v17)
  {
    v18 = v17;
    sub_1CA19C118();
  }

  OUTLINED_FUNCTION_11_8();

  __swift_destroy_boxed_opaque_existential_2(&v41);
  sub_1CA19AF18();
  v19 = v38;
  if (v38)
  {
    v20 = sub_1CA0F2110(0, &qword_1EC433850);
    v21 = v38;
  }

  else
  {
    v20 = OUTLINED_FUNCTION_16_4();
  }

  *&v41 = v21;
  *(&v42 + 1) = v20;
  v22 = v38;
  sub_1CA19AF38();
  sub_1CA0F0440(&v41);
  OUTLINED_FUNCTION_8_9();
  if (v39)
  {
    swift_getErrorValue();
    *(&v42 + 1) = v40;
    boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(&v41);
    v19 = v38;
    (*(*(v40 - 8) + 16))(boxed_opaque_existential_2Tm);
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
  }

  sub_1CA19AF38();
  sub_1CA0F0440(&v41);
  sub_1CA19AFC8();

  (*(v8 + 8))(v12, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    sub_1CA0F2110(0, &qword_1EE03C230);
    v26 = sub_1CA19C598();
    v27 = swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_10_9();
    v28 = swift_allocObject();
    v28[2] = v27;
    v28[3] = v25;
    v28[4] = v19;
    v28[5] = v39;
    v43 = sub_1CA137FF8;
    v44 = v28;
    *&v41 = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_3_15(COERCE_DOUBLE(1107296256));
    *&v42 = v29;
    *(&v42 + 1) = &block_descriptor_10;
    v30 = _Block_copy(&v41);
    v31 = v22;
    v32 = v25;
    v33 = v39;

    sub_1CA19B2F8();
    *&v41 = MEMORY[0x1E69E7CC0];
    sub_1CA0F7938();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C70);
    sub_1CA0F40C4();
    OUTLINED_FUNCTION_9_10();
    OUTLINED_FUNCTION_23_2();
    _Block_release(v30);

    v34 = OUTLINED_FUNCTION_25_1();
    v35(v34);
    v36 = OUTLINED_FUNCTION_24_2();
    v37(v36);
  }

  OUTLINED_FUNCTION_20_0();
}

void DelegateController.didFinishPurchase(withResult:error:)()
{
  OUTLINED_FUNCTION_19_0();
  v1 = v0;
  v44 = v3;
  v45 = v2;
  sub_1CA19B2D8();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_12_7(v5);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_3();
  v8 = OUTLINED_FUNCTION_13_4(v7);
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_3();
  v14 = v13 - v12;
  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  __swift_project_value_buffer(v8, qword_1EE040B90);
  v15 = OUTLINED_FUNCTION_15_3();
  v16(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  OUTLINED_FUNCTION_10_6();
  v17 = sub_1CA19AF88();
  OUTLINED_FUNCTION_7_3(v17);
  OUTLINED_FUNCTION_4_8();
  *(OUTLINED_FUNCTION_22_2() + 16) = xmmword_1CA1A19C0;
  v18 = type metadata accessor for DelegateController();
  OUTLINED_FUNCTION_21_1(v18);
  v19 = AMSLogKey();
  if (v19)
  {
    v20 = v19;
    sub_1CA19C118();
  }

  OUTLINED_FUNCTION_11_8();

  __swift_destroy_boxed_opaque_existential_2(&v47);
  sub_1CA19AF18();
  v21 = v44;
  if (v45)
  {
    v22 = sub_1CA0F2110(0, &qword_1EC433858);
    v23 = v45;
  }

  else
  {
    v22 = OUTLINED_FUNCTION_16_4();
  }

  *&v47 = v23;
  *(&v48 + 1) = v22;
  v24 = v45;
  sub_1CA19AF38();
  sub_1CA0F0440(&v47);
  OUTLINED_FUNCTION_8_9();
  if (v44)
  {
    swift_getErrorValue();
    *(&v48 + 1) = v46;
    boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(&v47);
    v21 = v44;
    (*(*(v46 - 8) + 16))(boxed_opaque_existential_2Tm);
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
  }

  sub_1CA19AF38();
  sub_1CA0F0440(&v47);
  sub_1CA19AFC8();

  (*(v10 + 8))(v14, v8);
  v26 = *(v1 + 24);
  v27 = *(v1 + 32);
  *(v1 + 24) = v21;
  *(v1 + 32) = v45;
  v28 = v24;
  v29 = v21;
  sub_1CA138038(v26, v27);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    sub_1CA0F2110(0, &qword_1EE03C230);
    v32 = sub_1CA19C598();
    v33 = swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_10_9();
    v34 = swift_allocObject();
    v34[2] = v33;
    v34[3] = v31;
    v34[4] = v45;
    v34[5] = v21;
    v49 = sub_1CA1380C8;
    v50 = v34;
    *&v47 = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_3_15(COERCE_DOUBLE(1107296256));
    *&v48 = v35;
    *(&v48 + 1) = &block_descriptor_6;
    v36 = _Block_copy(&v47);
    v37 = v28;
    v38 = v21;
    v39 = v31;

    sub_1CA19B2F8();
    *&v47 = MEMORY[0x1E69E7CC0];
    sub_1CA0F7938();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C70);
    sub_1CA0F40C4();
    OUTLINED_FUNCTION_9_10();
    OUTLINED_FUNCTION_23_2();
    _Block_release(v36);

    v40 = OUTLINED_FUNCTION_25_1();
    v41(v40);
    v42 = OUTLINED_FUNCTION_24_2();
    v43(v42);
  }

  OUTLINED_FUNCTION_20_0();
}

void sub_1CA1362A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  if (a1 && ([a1 respondsToSelector_] & 1) != 0)
  {
    swift_unknownObjectRetain();
    if (a4)
    {
      v10 = sub_1CA19AD18();
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    [a1 *a5];
    swift_unknownObjectRelease();
  }
}

void DelegateController.didResolve(withResult:error:)()
{
  OUTLINED_FUNCTION_19_0();
  v39 = v1;
  OUTLINED_FUNCTION_10_6();
  sub_1CA19B2D8();
  OUTLINED_FUNCTION_1_0();
  v37 = v3;
  v38 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_3();
  v36 = OUTLINED_FUNCTION_12_7(v4);
  OUTLINED_FUNCTION_1_0();
  v34 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_3();
  v8 = OUTLINED_FUNCTION_13_4(v7);
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_3();
  v14 = v13 - v12;
  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v40 = v0;
  __swift_project_value_buffer(v8, qword_1EE040B90);
  v15 = OUTLINED_FUNCTION_15_3();
  v16(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  OUTLINED_FUNCTION_10_6();
  v17 = sub_1CA19AF88();
  OUTLINED_FUNCTION_7_3(v17);
  OUTLINED_FUNCTION_4_8();
  *(OUTLINED_FUNCTION_22_2() + 16) = xmmword_1CA1A19C0;
  v18 = type metadata accessor for DelegateController();
  OUTLINED_FUNCTION_21_1(v18);
  v19 = AMSLogKey();
  if (v19)
  {
    v20 = v19;
    sub_1CA19C118();
  }

  OUTLINED_FUNCTION_11_8();

  __swift_destroy_boxed_opaque_existential_2(&v42);
  sub_1CA19AF18();
  if (v0)
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433588);
    v22 = v0;
  }

  else
  {
    v21 = OUTLINED_FUNCTION_16_4();
  }

  *&v42 = v22;
  *(&v43 + 1) = v21;

  sub_1CA19AF38();
  sub_1CA0F0440(&v42);
  OUTLINED_FUNCTION_8_9();
  if (v39)
  {
    swift_getErrorValue();
    *(&v43 + 1) = v41;
    boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(&v42);
    (*(*(v41 - 8) + 16))(boxed_opaque_existential_2Tm);
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  sub_1CA19AF38();
  sub_1CA0F0440(&v42);
  sub_1CA19AFC8();

  (*(v10 + 8))(v14, v8);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    sub_1CA0F2110(0, &qword_1EE03C230);
    v26 = sub_1CA19C598();
    v27 = swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_10_9();
    v28 = swift_allocObject();
    v28[2] = v27;
    v28[3] = v25;
    v28[4] = v40;
    v28[5] = v39;
    v44 = sub_1CA1380F0;
    v45 = v28;
    *&v42 = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_3_15(COERCE_DOUBLE(1107296256));
    *&v43 = v29;
    *(&v43 + 1) = &block_descriptor_12_0;
    v30 = _Block_copy(&v42);

    v31 = v25;
    v32 = v39;

    sub_1CA19B2F8();
    *&v42 = MEMORY[0x1E69E7CC0];
    sub_1CA0F7938();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C70);
    sub_1CA0F40C4();
    sub_1CA19C788();
    MEMORY[0x1CCA99C20](0, v33, v35, v30);
    _Block_release(v30);

    (*(v37 + 8))(v35, v38);
    (*(v34 + 8))(v33, v36);
  }

  OUTLINED_FUNCTION_20_0();
}

void sub_1CA13687C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (!a1 || ([a1 respondsToSelector_] & 1) == 0)
  {
    return;
  }

  if (!a3)
  {
    swift_unknownObjectRetain();
    if (a4)
    {
      goto LABEL_5;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  swift_unknownObjectRetain();
  a3 = sub_1CA19C008();
  if (!a4)
  {
    goto LABEL_8;
  }

LABEL_5:
  v8 = sub_1CA19AD18();
LABEL_9:
  v9 = v8;
  [a1 dynamicViewController:a2 didResolveWithResult:a3 error:?];
  swift_unknownObjectRelease();
}

id DelegateController.handleDelegateAction(with:completionHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v5 = sub_1CA19AFF8();
  __swift_project_value_buffer(v5, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  v6 = sub_1CA19AF88();
  OUTLINED_FUNCTION_7_3(v6);
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  v30 = type metadata accessor for DelegateController();
  aBlock = v3;

  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(&aBlock);
  sub_1CA19AF18();
  v9 = [a1 identifier];
  v10 = sub_1CA19C118();
  v12 = v11;

  v30 = MEMORY[0x1E69E6158];
  aBlock = v10;
  v28 = v12;
  sub_1CA19AF38();
  sub_1CA0F0440(&aBlock);
  sub_1CA19AFC8();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v16 = v15;
      if ([v15 respondsToSelector_])
      {
        v31 = a2;
        v32 = a3;
        aBlock = MEMORY[0x1E69E9820];
        v28 = 1107296256;
        v29 = sub_1CA136DE8;
        v30 = &block_descriptor_15_1;
        v17 = _Block_copy(&aBlock);

        v18 = [v16 dynamicViewController:v14 handleDelegateAction:a1 completionHandler:v17];
        swift_unknownObjectRelease();
        _Block_release(v17);

        *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
        OUTLINED_FUNCTION_31_1();
        v19 = AMSLogKey();
        if (v19)
        {
          v20 = v19;
          sub_1CA19C118();
        }

        sub_1CA19AF58();

        __swift_destroy_boxed_opaque_existential_2(&aBlock);
        sub_1CA19AF18();
        sub_1CA19AFC8();

        goto LABEL_15;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  v21 = swift_allocObject();
  OUTLINED_FUNCTION_20_1(v21, xmmword_1CA1A0B80);
  OUTLINED_FUNCTION_31_1();
  v22 = AMSLogKey();
  if (v22)
  {
    v23 = v22;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(&aBlock);
  sub_1CA19AF18();
  sub_1CA19AFB8();
  v18 = 0;
LABEL_15:

  return v18;
}

uint64_t sub_1CA136DE8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a2;
    sub_1CA0F11E8(&v8, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  swift_unknownObjectRetain();
  v6 = a3;
  v5(v10, a3);

  return sub_1CA0F0440(v10);
}

Swift::Bool __swiftcall DelegateController.shouldDismiss()()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = OUTLINED_FUNCTION_35_1();
    if (v1)
    {
      if ([v1 respondsToSelector_])
      {
        v2 = OUTLINED_FUNCTION_26_1();
        v4 = [v2 v3];
        swift_unknownObjectRelease();
        if (qword_1EE03B230 != -1)
        {
          OUTLINED_FUNCTION_0_2();
        }

        v5 = sub_1CA19AFF8();
        __swift_project_value_buffer(v5, qword_1EE040B90);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
        v6 = OUTLINED_FUNCTION_12_3();
        OUTLINED_FUNCTION_7_3(v6);
        OUTLINED_FUNCTION_4_8();
        *(OUTLINED_FUNCTION_11_3() + 16) = xmmword_1CA1A0930;
        type metadata accessor for DelegateController();
        OUTLINED_FUNCTION_6_9();
        v7 = AMSLogKey();
        if (v7)
        {
          v8 = v7;
          sub_1CA19C118();
        }

        OUTLINED_FUNCTION_14_4();

        __swift_destroy_boxed_opaque_existential_2(v13);
        OUTLINED_FUNCTION_17_2();
        sub_1CA19AF18();
        v14 = MEMORY[0x1E69E6370];
        v13[0] = v4;
        sub_1CA19AF38();
        sub_1CA0F0440(v13);
        sub_1CA19AFC8();

        goto LABEL_16;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v9 = sub_1CA19AFF8();
  __swift_project_value_buffer(v9, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  v10 = OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_7_3(v10);
  OUTLINED_FUNCTION_4_8();
  v11 = OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_20_1(v11, xmmword_1CA1A0B80);
  type metadata accessor for DelegateController();
  OUTLINED_FUNCTION_6_9();
  if (AMSLogKey())
  {
    sub_1CA19C118();
    OUTLINED_FUNCTION_33_0();
  }

  else
  {
    OUTLINED_FUNCTION_28_1();
  }

  OUTLINED_FUNCTION_7_10();

  __swift_destroy_boxed_opaque_existential_2(v13);
  sub_1CA19AF18();
  OUTLINED_FUNCTION_34_0();
  v4 = 1;
LABEL_16:

  return v4;
}

uint64_t DelegateController.asyncViewController(withContent:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = OUTLINED_FUNCTION_35_1();
    if (v6)
    {
      if ([v6 respondsToSelector_])
      {
        v7 = sub_1CA19C008();
        v15[4] = a2;
        v15[5] = a3;
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 1107296256;
        v15[2] = sub_1CA1231B4;
        v15[3] = &block_descriptor_18;
        v8 = _Block_copy(v15);

        v9 = OUTLINED_FUNCTION_26_1();
        [v9 v10];
        swift_unknownObjectRelease();

        _Block_release(v8);
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v12 = sub_1CA19AFF8();
  __swift_project_value_buffer(v12, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  v13 = OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_7_3(v13);
  OUTLINED_FUNCTION_4_8();
  v14 = OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_20_1(v14, xmmword_1CA1A0B80);
  type metadata accessor for DelegateController();
  OUTLINED_FUNCTION_6_9();
  if (AMSLogKey())
  {
    sub_1CA19C118();
    OUTLINED_FUNCTION_33_0();
  }

  else
  {
    OUTLINED_FUNCTION_28_1();
  }

  OUTLINED_FUNCTION_7_10();

  __swift_destroy_boxed_opaque_existential_2(v15);
  sub_1CA19AF18();
  OUTLINED_FUNCTION_34_0();
}

void __swiftcall DelegateController.viewController(withContent:)(UIViewController_optional *__return_ptr retstr, Swift::OpaquePointer withContent)
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_11;
  }

  v3 = OUTLINED_FUNCTION_35_1();
  if (v3)
  {
    if (([v3 respondsToSelector_] & 1) == 0)
    {

      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    v4 = sub_1CA19C008();
    v5 = OUTLINED_FUNCTION_26_1();
    v7 = [v5 v6];
    swift_unknownObjectRelease();

    if (v7)
    {
      if (qword_1EE03B230 != -1)
      {
        OUTLINED_FUNCTION_0_2();
      }

      v8 = sub_1CA19AFF8();
      __swift_project_value_buffer(v8, qword_1EE040B90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
      v9 = OUTLINED_FUNCTION_12_3();
      OUTLINED_FUNCTION_7_3(v9);
      OUTLINED_FUNCTION_4_8();
      *(OUTLINED_FUNCTION_11_3() + 16) = xmmword_1CA1A0B80;
      type metadata accessor for DelegateController();
      OUTLINED_FUNCTION_6_9();
      v10 = AMSLogKey();
      if (v10)
      {
        v11 = v10;
        sub_1CA19C118();
      }

      OUTLINED_FUNCTION_14_4();

      __swift_destroy_boxed_opaque_existential_2(v15);
      OUTLINED_FUNCTION_17_2();
      sub_1CA19AF18();
      sub_1CA19AFC8();

      goto LABEL_17;
    }
  }

LABEL_11:
  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v12 = sub_1CA19AFF8();
  __swift_project_value_buffer(v12, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  v13 = OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_7_3(v13);
  OUTLINED_FUNCTION_4_8();
  v14 = OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_20_1(v14, xmmword_1CA1A0B80);
  type metadata accessor for DelegateController();
  OUTLINED_FUNCTION_6_9();
  if (AMSLogKey())
  {
    sub_1CA19C118();
    OUTLINED_FUNCTION_33_0();
  }

  else
  {
    OUTLINED_FUNCTION_28_1();
  }

  OUTLINED_FUNCTION_7_10();

  __swift_destroy_boxed_opaque_existential_2(v15);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_34_0();
LABEL_17:
}

id DelegateController.view(withContent:frame:)(double a1, double a2, double a3, double a4)
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_11;
  }

  v9 = OUTLINED_FUNCTION_35_1();
  if (v9)
  {
    if (([v9 respondsToSelector_] & 1) == 0)
    {

      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    v10 = sub_1CA19C008();
    v11 = OUTLINED_FUNCTION_26_1();
    v13 = [v11 v12];
    swift_unknownObjectRelease();

    if (v13)
    {
      if (qword_1EE03B230 != -1)
      {
        OUTLINED_FUNCTION_0_2();
      }

      v14 = sub_1CA19AFF8();
      __swift_project_value_buffer(v14, qword_1EE040B90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
      v15 = OUTLINED_FUNCTION_12_3();
      OUTLINED_FUNCTION_7_3(v15);
      OUTLINED_FUNCTION_4_8();
      *(OUTLINED_FUNCTION_11_3() + 16) = xmmword_1CA1A0B80;
      type metadata accessor for DelegateController();
      OUTLINED_FUNCTION_6_9();
      v16 = AMSLogKey();
      if (v16)
      {
        v17 = v16;
        sub_1CA19C118();
      }

      OUTLINED_FUNCTION_14_4();

      __swift_destroy_boxed_opaque_existential_2(v22);
      OUTLINED_FUNCTION_17_2();
      sub_1CA19AF18();
      sub_1CA19AFC8();

      goto LABEL_17;
    }
  }

LABEL_11:
  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v18 = sub_1CA19AFF8();
  __swift_project_value_buffer(v18, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  v19 = OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_7_3(v19);
  OUTLINED_FUNCTION_4_8();
  v20 = OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_20_1(v20, xmmword_1CA1A0B80);
  type metadata accessor for DelegateController();
  OUTLINED_FUNCTION_6_9();
  if (AMSLogKey())
  {
    sub_1CA19C118();
    OUTLINED_FUNCTION_33_0();
  }

  else
  {
    OUTLINED_FUNCTION_28_1();
  }

  OUTLINED_FUNCTION_7_10();

  __swift_destroy_boxed_opaque_existential_2(v22);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_34_0();
  v13 = 0;
LABEL_17:

  return v13;
}

void sub_1CA137A44()
{
  OUTLINED_FUNCTION_19_0();
  v1 = v0;
  sub_1CA19B2D8();
  OUTLINED_FUNCTION_1_0();
  v27 = v3;
  v28 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_3();
  v6 = v5 - v4;
  sub_1CA19B318();
  OUTLINED_FUNCTION_1_0();
  v25 = v8;
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_3();
  v11 = v10 - v9;
  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v12 = sub_1CA19AFF8();
  __swift_project_value_buffer(v12, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  v13 = OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_7_3(v13);
  OUTLINED_FUNCTION_4_8();
  *(OUTLINED_FUNCTION_11_3() + 16) = xmmword_1CA1A0B80;
  v30 = type metadata accessor for DelegateController();
  v29[0] = v0;

  v14 = AMSLogKey();
  if (v14)
  {
    v15 = v14;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v29);
  sub_1CA19AF18();
  sub_1CA19AFC8();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    sub_1CA0F2110(0, &qword_1EE03C230);
    v18 = sub_1CA19C598();
    v19 = swift_unknownObjectWeakLoadStrong();
    v20 = *(v1 + 24);
    v21 = *(v1 + 32);
    OUTLINED_FUNCTION_10_9();
    v22 = swift_allocObject();
    v22[2] = v20;
    v22[3] = v21;
    v22[4] = v19;
    v22[5] = v17;
    v31 = sub_1CA1381B0;
    v32 = v22;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 1107296256;
    v29[2] = sub_1CA0F4068;
    v30 = &block_descriptor_34_0;
    v23 = _Block_copy(v29);
    sub_1CA1381BC(v20, v21);
    v24 = v17;

    sub_1CA19B2F8();
    v29[0] = MEMORY[0x1E69E7CC0];
    sub_1CA0F7938();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C70);
    sub_1CA0F40C4();
    sub_1CA19C788();
    MEMORY[0x1CCA99C20](0, v11, v6, v23);
    _Block_release(v23);

    (*(v27 + 8))(v6, v28);
    (*(v25 + 8))(v11, v26);
  }

  OUTLINED_FUNCTION_20_0();
}

void sub_1CA137E20(uint64_t a1, uint64_t a2, id a3, uint64_t a4)
{
  if (a1 == 1 || !a2)
  {
    v7 = AMSError();
    if (a3)
    {
      v9 = v7;
      if ([a3 respondsToSelector_])
      {
        swift_unknownObjectRetain();
        v8 = v9;
        v9 = sub_1CA19AD18();
        [a3 dynamicViewController:a4 didFinishWithPurchaseResult:0 error:v9];
        swift_unknownObjectRelease();
      }

      v7 = v9;
    }
  }

  else if (a3 && ([a3 respondsToSelector_] & 1) != 0)
  {

    [a3 dynamicViewController:a4 didFinishWithPurchaseResult:a2 error:0];
  }
}

uint64_t DelegateController.deinit()
{

  sub_1CA138038(*(v0 + 24), *(v0 + 32));
  sub_1CA118DD4(v0 + 40);
  MEMORY[0x1CCA9AE80](v0 + 48);
  return v0;
}

uint64_t DelegateController.__deallocating_deinit()
{
  DelegateController.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1CA138038(void *a1, void *a2)
{
  if (a1 != 1)
  {
  }
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_10_9();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1CA1380FC(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1CA138150(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

id sub_1CA1381BC(id result, void *a2)
{
  if (result != 1)
  {
    v3 = result;

    return a2;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_9()
{
}

uint64_t OUTLINED_FUNCTION_7_10()
{

  return sub_1CA19AF58();
}

uint64_t OUTLINED_FUNCTION_8_9()
{

  return sub_1CA19AF18();
}

uint64_t OUTLINED_FUNCTION_9_10()
{

  return sub_1CA19C788();
}

uint64_t OUTLINED_FUNCTION_11_8()
{

  return sub_1CA19AF58();
}

uint64_t OUTLINED_FUNCTION_12_7@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 208) = v1 - a1;

  return sub_1CA19B318();
}

uint64_t OUTLINED_FUNCTION_13_4@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 224) = v1 - a1;

  return sub_1CA19AFF8();
}

uint64_t OUTLINED_FUNCTION_14_4()
{

  return sub_1CA19AF58();
}

uint64_t OUTLINED_FUNCTION_16_4()
{
  result = 0;
  *(v0 - 120) = 0;
  *(v0 - 112) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_21_1(uint64_t a1)
{
  *(v2 - 104) = a1;
  *(v2 - 128) = v1;
}

uint64_t OUTLINED_FUNCTION_22_2()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_23_2()
{

  JUMPOUT(0x1CCA99C20);
}

uint64_t OUTLINED_FUNCTION_31_1()
{
}

uint64_t OUTLINED_FUNCTION_32_1()
{

  return sub_1CA19AF18();
}

void OUTLINED_FUNCTION_33_0()
{
}

uint64_t OUTLINED_FUNCTION_34_0()
{

  return sub_1CA19AFB8();
}

uint64_t OUTLINED_FUNCTION_35_1()
{

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1CA1384C0()
{
  v1 = v0;
  v2 = sub_1CA19B298();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x1E69E7F48])
  {
    v7 = OUTLINED_FUNCTION_0_21();
    v8(v7);
    if (*v5 == 1)
    {
      v28 = 1;
      v9 = sub_1CA19CAB8();
      v11 = OUTLINED_FUNCTION_1_20(v9, v10) & 0xFFFFFFFFFFFFLL | 0x64000000000000;
      v12 = 0xE700000000000000;
    }

    else
    {
      v28 = *v5;
      v14 = sub_1CA19CAB8();
      v11 = OUTLINED_FUNCTION_1_20(v14, v15) & 0xFFFFFFFFFFFFLL | 0x7364000000000000;
      v12 = 0xE800000000000000;
    }

    goto LABEL_14;
  }

  if (v6 == *MEMORY[0x1E69E7F38])
  {
    v13 = 0x696C6C696D20;
LABEL_9:
    v16 = v13 & 0xFFFFFFFFFFFFLL | 0x6573000000000000;
    v17 = OUTLINED_FUNCTION_0_21();
    v18(v17);
    if (*v5 != 1)
    {
      v28 = *v5;
      v29 = sub_1CA19CAB8();
      v30 = v21;
      v12 = 0xED000073646E6F63;
      goto LABEL_13;
    }

    v28 = 1;
    v29 = sub_1CA19CAB8();
    v30 = v19;
    v20 = 1684959075;
LABEL_11:
    v12 = v20 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
LABEL_13:
    v11 = v16;
LABEL_14:
    MEMORY[0x1CCA99820](v11, v12);
    return v29;
  }

  if (v6 == *MEMORY[0x1E69E7F30])
  {
    v13 = 0x6F7263696D20;
    goto LABEL_9;
  }

  if (v6 == *MEMORY[0x1E69E7F28])
  {
    v16 = 0x6365736F6E616E20;
    v23 = OUTLINED_FUNCTION_0_21();
    v24(v23);
    if (*v5 == 1)
    {
      v28 = 1;
      v29 = sub_1CA19CAB8();
      v30 = v25;
      v12 = 0xEB00000000646E6FLL;
      goto LABEL_13;
    }

    v28 = *v5;
    v29 = sub_1CA19CAB8();
    v30 = v26;
    v20 = 1935961711;
    goto LABEL_11;
  }

  if (v6 == *MEMORY[0x1E69E7F40])
  {
    return 0x726576656ELL;
  }

  (*(v3 + 8))(v5, v2);
  return 0x6E776F6E6B6E75;
}

uint64_t OUTLINED_FUNCTION_1_20(uint64_t a1, uint64_t a2)
{
  *(v2 - 48) = a1;
  *(v2 - 40) = a2;
  return 0x6E6F63657320;
}

uint64_t DynamicAccountsStore.__allocating_init(accountStore:account:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  DynamicAccountsStore.init(accountStore:account:)(a1, a2);
  return v4;
}

void *DynamicAccountsStore.account.getter()
{
  v1 = sub_1CA19AFF8();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v14 = OUTLINED_FUNCTION_1_21();
  [v14 lock];
  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v5 = __swift_project_value_buffer(v1, qword_1EE040B90);
  (*(v3 + 16))(v0, v5, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A1A40;
  v16 = type metadata accessor for DynamicAccountsStore();
  v15[0] = v0;

  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v15);
  v16 = MEMORY[0x1E69E6878];
  v15[0] = v0;
  sub_1CA19AF38();
  sub_1CA0F0440(v15);
  sub_1CA19AF18();
  v8 = *(v0 + 24);
  if (v8)
  {
    v9 = sub_1CA139070();
  }

  else
  {
    v9 = 0;
    v15[1] = 0;
    v15[2] = 0;
  }

  v15[0] = v8;
  v16 = v9;
  v10 = v8;
  sub_1CA19AF38();
  sub_1CA0F0440(v15);
  sub_1CA19AFA8();

  (*(v3 + 8))(v0, v1);
  v11 = *(v0 + 24);
  v12 = v11;
  [v14 unlock];
  return v11;
}

void DynamicAccountsStore.account.setter(void *a1)
{
  v2 = v1;
  v4 = sub_1CA19AFF8();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v16 = OUTLINED_FUNCTION_1_21();
  [v16 lock];
  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EE040B90);
  (*(v6 + 16))(v1, v8, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A1A40;
  v18 = type metadata accessor for DynamicAccountsStore();
  v17[0] = v1;

  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v17);
  v18 = MEMORY[0x1E69E6878];
  v17[0] = v1;
  sub_1CA19AF38();
  sub_1CA0F0440(v17);
  sub_1CA19AF18();
  if (a1)
  {
    v11 = sub_1CA139070();
    v12 = a1;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v17[1] = 0;
    v17[2] = 0;
  }

  v17[0] = v12;
  v18 = v11;
  v13 = a1;
  sub_1CA19AF38();
  sub_1CA0F0440(v17);
  sub_1CA19AFA8();

  (*(v6 + 8))(v1, v4);
  v14 = *(v1 + 24);
  *(v2 + 24) = a1;
  v15 = v13;

  [v16 unlock];
}

void (*DynamicAccountsStore.account.modify(void **a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = DynamicAccountsStore.account.getter();
  return sub_1CA138E60;
}

void sub_1CA138E60(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    DynamicAccountsStore.account.setter(v2);
  }

  else
  {
    DynamicAccountsStore.account.setter(*a1);
  }
}

uint64_t DynamicAccountsStore.accountStore.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

void *DynamicAccountsStore.init(accountStore:account:)(uint64_t a1, uint64_t a2)
{
  v2[2] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v2[3] = a2;
  v2[4] = a1;
  return v2;
}

uint64_t DynamicAccountsStore.__deallocating_deinit()
{
  DynamicAccountsStore.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

unint64_t sub_1CA139070()
{
  result = qword_1EE03C130;
  if (!qword_1EE03C130)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE03C130);
  }

  return result;
}

uint64_t DynamicArtwork.__allocating_init(darkArtwork:lightArtwork:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t DynamicArtwork.init(darkArtwork:lightArtwork:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t DynamicArtwork.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1CA0FEE40();
  if (v2)
  {

    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  MEMORY[0x1EEE9AC00](v5);
  v7 = sub_1CA0FEE40();
  sub_1CA19B4D8();
  OUTLINED_FUNCTION_4_6();
  (*(v8 + 8))(a1);
  sub_1CA19B5C8();
  OUTLINED_FUNCTION_4_6();
  (*(v9 + 8))(a2);
  type metadata accessor for DynamicArtwork();
  result = swift_allocObject();
  *(result + 16) = v6;
  *(result + 24) = v7;
  return result;
}

uint64_t DynamicArtwork.deinit()
{

  return v0;
}

uint64_t DynamicArtwork.__deallocating_deinit()
{
  DynamicArtwork.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1CA13936C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = DynamicArtwork.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1CA139398@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1CA193904(a1, *(v2 + 16));
  *a2 = result;
  return result;
}

id sub_1CA1393EC(char a1)
{
  v1 = MEMORY[0x1E69DDCF8];
  switch(a1)
  {
    case 1:
      v1 = MEMORY[0x1E69DDD00];
      break;
    case 2:
      v1 = MEMORY[0x1E69DDD08];
      break;
    case 3:
      v1 = MEMORY[0x1E69DDD10];
      break;
    case 4:
      v1 = MEMORY[0x1E69DDD28];
      break;
    case 5:
      v1 = MEMORY[0x1E69DDD40];
      break;
    case 6:
      v1 = MEMORY[0x1E69DDD80];
      break;
    case 7:
      sub_1CA139F08();
      v2 = static UIApplication.isCompact()();
      v1 = MEMORY[0x1E69DDD58];
      if (v2)
      {
        v1 = MEMORY[0x1E69DDDB8];
      }

      break;
    case 8:
      v1 = MEMORY[0x1E69DDDB8];
      break;
    case 9:
      v1 = MEMORY[0x1E69DDDC0];
      break;
    case 10:
      v1 = MEMORY[0x1E69DDDC8];
      break;
    default:
      break;
  }

  v3 = *v1;

  return v3;
}

AppleMediaServicesUIDynamic::DynamicFont::Style_optional __swiftcall DynamicFont.Style.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_1CA19CA48();

  if (v1 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v1;
  }
}

uint64_t DynamicFont.Style.rawValue.getter(char a1)
{
  result = 2036625250;
  switch(a1)
  {
    case 1:
      result = 0x74756F6C6C6163;
      break;
    case 2:
      result = 0x316E6F6974706163;
      break;
    case 3:
      result = 0x326E6F6974706163;
      break;
    case 4:
      result = 0x65746F6E746F6F66;
      break;
    case 5:
      result = 0x656E696C64616568;
      break;
    case 6:
      result = 0x6C64616568627573;
      break;
    case 7:
      result = 0x30656C746974;
      break;
    case 8:
      result = 0x31656C746974;
      break;
    case 9:
      result = 0x32656C746974;
      break;
    case 10:
      result = 0x33656C746974;
      break;
    default:
      return result;
  }

  return result;
}

AppleMediaServicesUIDynamic::DynamicFont::Style_optional sub_1CA139668@<W0>(Swift::String *a1@<X0>, AppleMediaServicesUIDynamic::DynamicFont::Style_optional *a2@<X8>)
{
  result.value = DynamicFont.Style.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1CA139698@<X0>(uint64_t *a1@<X8>)
{
  result = DynamicFont.Style.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

AppleMediaServicesUIDynamic::DynamicFont::Weight_optional __swiftcall DynamicFont.Weight.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_1CA19CA48();

  if (v1 >= 9)
  {
    return 9;
  }

  else
  {
    return v1;
  }
}

uint64_t DynamicFont.Weight.rawValue.getter(char a1)
{
  result = 1684828002;
  switch(a1)
  {
    case 1:
      result = 0x6B63616C62;
      break;
    case 2:
      result = 0x7976616568;
      break;
    case 3:
      result = 0x746867696CLL;
      break;
    case 4:
      result = 0x6D756964656DLL;
      break;
    case 5:
      result = 0x72616C75676572;
      break;
    case 6:
      result = 0x646C6F62696D6573;
      break;
    case 7:
      result = 1852401780;
      break;
    case 8:
      result = 0x67694C6172746C75;
      break;
    default:
      return result;
  }

  return result;
}

AppleMediaServicesUIDynamic::DynamicFont::Weight_optional sub_1CA139828@<W0>(Swift::String *a1@<X0>, AppleMediaServicesUIDynamic::DynamicFont::Weight_optional *a2@<X8>)
{
  result.value = DynamicFont.Weight.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1CA139858@<X0>(uint64_t *a1@<X8>)
{
  result = DynamicFont.Weight.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t DynamicFont.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  sub_1CA0FC3DC();
  if (v2)
  {
    sub_1CA19B5C8();
    OUTLINED_FUNCTION_4_6();
    (*(v7 + 8))(a2);
    sub_1CA19B4D8();
    OUTLINED_FUNCTION_4_6();
    (*(v8 + 8))(a1);
  }

  else
  {
    v9 = v6;
    sub_1CA0FC534();
    v11 = v10;
    sub_1CA19B5C8();
    OUTLINED_FUNCTION_4_6();
    (*(v12 + 8))(a2);
    sub_1CA19B4D8();
    OUTLINED_FUNCTION_4_6();
    (*(v13 + 8))(a1);
    return v9 | (v11 << 8);
  }

  return v3;
}

unint64_t sub_1CA1399F0()
{
  result = qword_1EC433860;
  if (!qword_1EC433860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433860);
  }

  return result;
}

unint64_t sub_1CA139A48()
{
  result = qword_1EC433868;
  if (!qword_1EC433868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433868);
  }

  return result;
}

uint64_t sub_1CA139A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _WORD *a3@<X8>)
{
  result = DynamicFont.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DynamicFont(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 65289 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65289 < 0xFF0000)
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
        goto LABEL_15;
      }
    }

    else
    {
      if (v3 == 2)
      {
        v4 = a1[1];
        if (!a1[1])
        {
          goto LABEL_17;
        }

LABEL_15:
        v5 = (*a1 | (v4 << 16)) - 65290;
        return (v5 + 1);
      }

      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 <= 9)
  {
    v7 = 9;
  }

  else
  {
    v7 = *(a1 + 1);
  }

  v8 = v7 - 10;
  if (v6 < 9)
  {
    v5 = -1;
  }

  else
  {
    v5 = v8;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DynamicFont(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65289 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65289 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 16) + 1;
    *result = a2 - 247;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *(result + 1) = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DynamicFont.Style(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for DynamicFont.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DynamicFont.Weight(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DynamicFont.Weight(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1CA139F08()
{
  result = qword_1EE03C270;
  if (!qword_1EE03C270)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE03C270);
  }

  return result;
}

uint64_t DynamicFontFactory.font(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1CA19B5C8();
  OUTLINED_FUNCTION_1_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA19B4D8();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, a1);
  (*(v9 + 16))(v12, a2, v7);
  result = DynamicFont.init(deserializing:using:)(v15, v12);
  if (!v3)
  {
    v18 = BYTE1(result);
    v19 = sub_1CA1393EC(result);
    if (v18 == 9)
    {
      v20 = sub_1CA19B068();
      v21 = MEMORY[0x1E69AB870];
      a3[3] = v20;
      a3[4] = v21;
      boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(a3);
      *boxed_opaque_existential_2Tm = v19;
      return (*(*(v20 - 8) + 104))(boxed_opaque_existential_2Tm, *MEMORY[0x1E69AB868], v20);
    }

    else
    {
      v23 = sub_1CA1396C4(v18);
      v24 = sub_1CA19B068();
      v25 = MEMORY[0x1E69AB870];
      a3[3] = v24;
      a3[4] = v25;
      v26 = __swift_allocate_boxed_opaque_existential_2Tm(a3);
      *v26 = v19;
      *(v26 + 1) = v23;
      v27 = *MEMORY[0x1E69AB8C8];
      v28 = sub_1CA19B088();
      (*(*(v28 - 8) + 104))(v26, v27, v28);
      return (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69AB860], v24);
    }
  }

  return result;
}

uint64_t sub_1CA13A248(double a1)
{
  if (a1 < 320.0)
  {
    return 0;
  }

  v2 = 0;
  v3 = a1 >= 1501.0;
  v4 = a1 >= 2500.0;
  if (a1 >= 2500.0)
  {
    v3 = 0;
  }

  if (a1 >= 1.79769313e308)
  {
    v4 = 0;
  }

  v5 = a1 >= 1195.0;
  if (a1 >= 1500.0)
  {
    v5 = 0;
  }

  v6 = a1 >= 982.0;
  if (a1 >= 1194.0)
  {
    v6 = 0;
  }

  v7 = a1 >= 727.0;
  if (a1 >= 981.0)
  {
    v7 = 0;
  }

  v8 = a1 >= 501.0;
  if (a1 >= 726.0)
  {
    v8 = 0;
  }

  v9 = a1 >= 375.0;
  if (a1 >= 500.0)
  {
    v9 = 0;
  }

  result = byte_1F49CBE10;
  while (v2 != 8)
  {
    switch(byte_1F49CBE10[v2 + 32])
    {
      case 1:
        if (!v9)
        {
          goto LABEL_38;
        }

        return 1;
      case 2:
        if (!v8)
        {
          goto LABEL_38;
        }

        return 2;
      case 3:
        if (!v7)
        {
          goto LABEL_38;
        }

        return 3;
      case 4:
        if (!v6)
        {
          goto LABEL_38;
        }

        return 4;
      case 5:
        if (!v5)
        {
          goto LABEL_38;
        }

        return 5;
      case 6:
        if (!v3)
        {
          goto LABEL_38;
        }

        return 6;
      case 7:
        v10 = v2 == 7 || v4;
        if ((v10 & 1) == 0)
        {
          goto LABEL_39;
        }

        return 7;
      default:
        if (a1 < 374.0)
        {
          return 0;
        }

LABEL_38:
        if (v2 == 7)
        {
          return 7;
        }

LABEL_39:
        ++v2;
        break;
    }
  }

  __break(1u);
  return result;
}

uint64_t DynamicGridLayout.gridType.setter(char a1)
{
  result = OUTLINED_FUNCTION_3_16();
  *(v1 + 16) = a1;
  return result;
}

uint64_t DynamicGridLayout.layoutMode.setter(char a1)
{
  result = OUTLINED_FUNCTION_3_16();
  *(v1 + 17) = a1 & 1;
  return result;
}

uint64_t DynamicGridLayout.sizeClass.setter(char a1)
{
  result = OUTLINED_FUNCTION_3_16();
  *(v1 + 18) = a1;
  return result;
}

uint64_t DynamicGridLayout.viewWidth.setter(double a1)
{
  result = OUTLINED_FUNCTION_3_16();
  *(v1 + 24) = a1;
  return result;
}

uint64_t DynamicGridLayout.overrideColumnCount.setter()
{
  OUTLINED_FUNCTION_8_10();
  result = OUTLINED_FUNCTION_3_16();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0 & 1;
  return result;
}

uint64_t DynamicGridLayout.overrideGutter.setter()
{
  OUTLINED_FUNCTION_8_10();
  result = OUTLINED_FUNCTION_3_16();
  *(v1 + 48) = v2;
  *(v1 + 56) = v0 & 1;
  return result;
}

uint64_t DynamicGridLayout.overrideMargin.setter()
{
  OUTLINED_FUNCTION_8_10();
  result = OUTLINED_FUNCTION_3_16();
  *(v1 + 64) = v2;
  *(v1 + 72) = v0 & 1;
  return result;
}

uint64_t DynamicGridLayout.overridePeek.setter()
{
  OUTLINED_FUNCTION_8_10();
  result = OUTLINED_FUNCTION_3_16();
  *(v1 + 80) = v2;
  *(v1 + 88) = v0 & 1;
  return result;
}

uint64_t DynamicGridLayout.__allocating_init(viewWidth:layoutMode:gridType:)(char a1, char a2, double a3)
{
  v6 = swift_allocObject();
  DynamicGridLayout.init(viewWidth:layoutMode:gridType:)(a1 & 1, a2, a3);
  return v6;
}

uint64_t DynamicGridLayout.init(viewWidth:layoutMode:gridType:)(char a1, char a2, double a3)
{
  *(v3 + 32) = 0;
  *(v3 + 40) = 1;
  *(v3 + 48) = 0;
  *(v3 + 56) = 1;
  *(v3 + 64) = 0;
  *(v3 + 72) = 1;
  *(v3 + 80) = 0;
  *(v3 + 88) = 1;
  *(v3 + 16) = a2;
  *(v3 + 17) = a1 & 1;
  *(v3 + 18) = sub_1CA13A248(a3);
  *(v3 + 24) = a3;
  return v3;
}

uint64_t DynamicGridLayout.columnCount.getter()
{
  OUTLINED_FUNCTION_4_5();
  if (*(v0 + 40) != 1)
  {
    return *(v0 + 32);
  }

  OUTLINED_FUNCTION_4_5();
  switch(*(v0 + 18))
  {
    case 1:
      OUTLINED_FUNCTION_0_22();
      result = 1;
      switch(*(v0 + 16))
      {
        case 1:
          goto LABEL_12;
        case 2:
          result = 3;
          break;
        case 3:
          OUTLINED_FUNCTION_2_16();
          OUTLINED_FUNCTION_7_11();
          v5 = 4;
          goto LABEL_24;
        default:
          return result;
      }

      return result;
    case 2:
      OUTLINED_FUNCTION_0_22();
      result = 3;
      switch(*(v0 + 16))
      {
        case 1:
          return result;
        case 2:
          result = 4;
          break;
        case 3:
LABEL_12:
          result = 2;
          break;
        default:
          OUTLINED_FUNCTION_2_16();
          OUTLINED_FUNCTION_7_11();
          v5 = 3;
LABEL_24:
          if (v4)
          {
            result = v5;
          }

          else
          {
            result = 1;
          }

          break;
      }

      return result;
    case 3:
      OUTLINED_FUNCTION_0_22();
      v1 = *(v0 + 16);
      v2 = &unk_1CA1A3F88;
      goto LABEL_15;
    case 4:
      OUTLINED_FUNCTION_0_22();
      v1 = *(v0 + 16);
      v2 = &unk_1CA1A3FA8;
      goto LABEL_15;
    case 5:
      OUTLINED_FUNCTION_0_22();
      v1 = *(v0 + 16);
      v2 = &unk_1CA1A3FC8;
      goto LABEL_15;
    case 6:
      OUTLINED_FUNCTION_0_22();
      v1 = *(v0 + 16);
      v2 = &unk_1CA1A3FE8;
      goto LABEL_15;
    case 7:
      OUTLINED_FUNCTION_0_22();
      result = 5;
      switch(*(v0 + 16))
      {
        case 1:
          result = 10;
          break;
        case 2:
          result = 12;
          break;
        case 3:
          OUTLINED_FUNCTION_2_16();
          OUTLINED_FUNCTION_7_11();
          if (v4)
          {
            result = 8;
          }

          else
          {
            result = 7;
          }

          break;
        default:
          return result;
      }

      return result;
    default:
      OUTLINED_FUNCTION_0_22();
      v1 = *(v0 + 16);
      v2 = &unk_1CA1A3F68;
LABEL_15:
      result = v2[v1];
      break;
  }

  return result;
}

uint64_t DynamicGridLayout.columnSpan.getter()
{
  OUTLINED_FUNCTION_4_5();
  v1 = v0[18];
  if (v1 != 2)
  {
    if (v1 == 1)
    {
      OUTLINED_FUNCTION_4_5();
      if ((v0[17] & 1) == 0)
      {
        OUTLINED_FUNCTION_1_22();
        if (v0[16] == 3)
        {
          return 3;
        }
      }
    }

    return 1;
  }

  OUTLINED_FUNCTION_4_5();
  if (v0[17])
  {
    return 1;
  }

  OUTLINED_FUNCTION_1_22();
  if (v0[16])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

double DynamicGridLayout.columnWidth.getter()
{
  v0 = DynamicGridLayout.contentWidth.getter();
  v1 = DynamicGridLayout.gutter.getter();
  v2 = DynamicGridLayout.columnCount.getter();
  v3 = v0 - v1 * (v2 - DynamicGridLayout.columnSpan.getter());
  v4 = v3 / DynamicGridLayout.columnCount.getter();
  return v4 * DynamicGridLayout.columnSpan.getter();
}

double DynamicGridLayout.contentWidth.getter()
{
  OUTLINED_FUNCTION_4_5();
  if (*(v0 + 17))
  {
    OUTLINED_FUNCTION_2_16();
    v1 = *(v0 + 24);
    v2 = DynamicGridLayout.margin.getter();
    v3 = v2 + v2;
  }

  else
  {
    OUTLINED_FUNCTION_2_16();
    v4 = *(v0 + 24);
    v1 = v4 - DynamicGridLayout.margin.getter();
    v3 = DynamicGridLayout.gutter.getter();
  }

  return v1 - v3 - DynamicGridLayout.peek.getter();
}

double DynamicGridLayout.gutter.getter()
{
  v1 = v0 + 48;
  OUTLINED_FUNCTION_4_5();
  if (v0[56] == 1)
  {
    OUTLINED_FUNCTION_2_16();
    v1 = &unk_1CA1A4008 + 8 * v0[18];
  }

  return *v1;
}

double DynamicGridLayout.margin.getter()
{
  v1 = v0 + 64;
  OUTLINED_FUNCTION_4_5();
  if (v0[72] == 1)
  {
    OUTLINED_FUNCTION_2_16();
    v1 = &unk_1CA1A4048 + 8 * v0[18];
  }

  return *v1;
}

double DynamicGridLayout.peek.getter()
{
  OUTLINED_FUNCTION_4_5();
  if ((*(v0 + 88) & 1) == 0)
  {
    return *(v0 + 80);
  }

  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_7_11();
  result = 36.0;
  if (!v2)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1CA13AF18(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1CA19CBD8();
  a4(v8, v6);
  return sub_1CA19CC18();
}

uint64_t DynamicGridLayoutMode.hashValue.getter(char a1)
{
  sub_1CA19CBD8();
  MEMORY[0x1CCA9A240](a1 & 1);
  return sub_1CA19CC18();
}

uint64_t sub_1CA13AFF0()
{
  v1 = *v0;
  sub_1CA19CBD8();
  DynamicGridLayoutMode.hash(into:)(v3, v1);
  return sub_1CA19CC18();
}

unint64_t sub_1CA13B038()
{
  result = qword_1EC433870;
  if (!qword_1EC433870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433870);
  }

  return result;
}

unint64_t sub_1CA13B090()
{
  result = qword_1EC433878;
  if (!qword_1EC433878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC433880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433878);
  }

  return result;
}

unint64_t sub_1CA13B0F8()
{
  result = qword_1EC433888;
  if (!qword_1EC433888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433888);
  }

  return result;
}

unint64_t sub_1CA13B150()
{
  result = qword_1EC433890;
  if (!qword_1EC433890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433890);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DynamicGridSizeClass(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DynamicGridSizeClass(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DynamicGridType(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DynamicGridLayoutMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_0_22()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_1_22()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_16()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_16()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_13()
{

  return swift_beginAccess();
}

AppleMediaServicesUIDynamic::DynamicHorizontalAlignment_optional __swiftcall DynamicHorizontalAlignment.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_1CA19CA48();

  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

uint64_t DynamicHorizontalAlignment.rawValue.getter(char a1)
{
  result = 0x7265746E6563;
  switch(a1)
  {
    case 1:
      result = 1952867692;
      break;
    case 2:
      result = 0x7468676972;
      break;
    case 3:
      result = 0x6C61727574616ELL;
      break;
    default:
      return result;
  }

  return result;
}

AppleMediaServicesUIDynamic::DynamicHorizontalAlignment_optional sub_1CA13B680@<W0>(Swift::String *a1@<X0>, AppleMediaServicesUIDynamic::DynamicHorizontalAlignment_optional *a2@<X8>)
{
  result.value = DynamicHorizontalAlignment.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1CA13B6B0@<X0>(uint64_t *a1@<X8>)
{
  result = DynamicHorizontalAlignment.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1CA13B6DC(char a1, void *a2)
{
  switch(a1)
  {
    case 1:

      result = 1;
      break;
    case 2:

      result = 2;
      break;
    case 3:
      v4 = sub_1CA19C5F8();

      if (v4)
      {
        result = 2;
      }

      else
      {
        result = 1;
      }

      break;
    default:

      result = 0;
      break;
  }

  return result;
}

uint64_t CGRect.ResolvedHorizontalAlignment.hashValue.getter(unsigned __int8 a1)
{
  sub_1CA19CBD8();
  MEMORY[0x1CCA9A240](a1);
  return sub_1CA19CC18();
}

uint64_t sub_1CA13B7F8()
{
  v1 = *v0;
  sub_1CA19CBD8();
  CGRect.ResolvedHorizontalAlignment.hash(into:)(v3, v1);
  return sub_1CA19CC18();
}

__C::CGRect __swiftcall CGRect.alignedFrame(for:horizontalAlignment:traitCollection:)(CGSize a1, AppleMediaServicesUIDynamic::DynamicHorizontalAlignment horizontalAlignment, UITraitCollection traitCollection)
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  height = a1.height;
  width = a1.width;
  v13 = sub_1CA13B6DC(horizontalAlignment, traitCollection.super.isa);

  v14 = CGRect.alignedFrame(for:resolvedHorizontalAlignment:)(v13, width, height, v10, v9, v8, v7);
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

double CGRect.alignedFrame(for:resolvedHorizontalAlignment:)(char a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v12 = a4;
  if (a1)
  {
    if (a1 == 1)
    {
      MinX = CGRectGetMinX(*&v12);
    }

    else
    {
      MinX = CGRectGetMaxX(*&v12) - a2;
    }
  }

  else
  {
    MinX = CGRectGetMidX(*&v12) + a2 * -0.5;
  }

  v18.origin.x = a4;
  v18.origin.y = a5;
  v18.size.width = a6;
  v18.size.height = a7;
  CGRectGetMinY(v18);
  return MinX;
}

unint64_t sub_1CA13B980()
{
  result = qword_1EC433898;
  if (!qword_1EC433898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433898);
  }

  return result;
}

unint64_t sub_1CA13B9D8()
{
  result = qword_1EC4338A0;
  if (!qword_1EC4338A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4338A0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DynamicHorizontalAlignment(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s27ResolvedHorizontalAlignmentOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

id DynamicImpressionItem.__allocating_init(frame:impressionMetrics:)(uint64_t a1)
{
  OUTLINED_FUNCTION_12_0();
  v7 = objc_allocWithZone(v1);
  return DynamicImpressionItem.init(frame:impressionMetrics:)(a1, v5, v4, v3, v2);
}

id DynamicImpressionItem.init(frame:impressionMetrics:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = &v5[OBJC_IVAR___AMSUIDDynamicImpressionItem_frame];
  *v6 = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
  *&v5[OBJC_IVAR___AMSUIDDynamicImpressionItem_impressionMetrics] = a1;
  v8.receiver = v5;
  v8.super_class = type metadata accessor for DynamicImpressionItem();
  return objc_msgSendSuper2(&v8, sel_init);
}

double DynamicImpressionItem.frame.getter()
{
  v1 = v0 + OBJC_IVAR___AMSUIDDynamicImpressionItem_frame;
  swift_beginAccess();
  return *v1;
}

uint64_t DynamicImpressionItem.frame.setter()
{
  OUTLINED_FUNCTION_12_0();
  v5 = (v0 + OBJC_IVAR___AMSUIDDynamicImpressionItem_frame);
  result = swift_beginAccess();
  *v5 = v4;
  v5[1] = v3;
  v5[2] = v2;
  v5[3] = v1;
  return result;
}

id DynamicImpressionItem.impressionMetrics.getter()
{
  v1 = OBJC_IVAR___AMSUIDDynamicImpressionItem_impressionMetrics;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DynamicImpressionItem.impressionMetrics.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AMSUIDDynamicImpressionItem_impressionMetrics;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id DynamicImpressionItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DynamicImpressionItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicImpressionItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_1_23()
{

  return swift_beginAccess();
}

id DynamicImpressionMetrics.init(identifier:fields:custom:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR___AMSUIDDynamicImpressionMetrics_identifier] = a1;
  *&v3[OBJC_IVAR___AMSUIDDynamicImpressionMetrics_fields] = a2;
  *&v3[OBJC_IVAR___AMSUIDDynamicImpressionMetrics_custom] = a3;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for DynamicImpressionMetrics();
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_1CA13C330(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_1CA19C008();

  return v3;
}

uint64_t sub_1CA13C468(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  OUTLINED_FUNCTION_13();
  *(v2 + v4) = a1;
}

id DynamicImpressionMetrics.identifier.getter()
{
  v1 = OBJC_IVAR___AMSUIDDynamicImpressionMetrics_identifier;
  OUTLINED_FUNCTION_1_5();
  v2 = *(v0 + v1);

  return v2;
}

void DynamicImpressionMetrics.identifier.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AMSUIDDynamicImpressionMetrics_identifier;
  OUTLINED_FUNCTION_13();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id DynamicImpressionMetrics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DynamicImpressionMetrics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicImpressionMetrics();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id DynamicImpressionMetricsIdentifier.init(parent:element:index:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = &v5[OBJC_IVAR___AMSUIDDynamicImpressionMetricsIdentifier_parent];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v5[OBJC_IVAR___AMSUIDDynamicImpressionMetricsIdentifier_element];
  *v9 = a3;
  *(v9 + 1) = a4;
  *&v5[OBJC_IVAR___AMSUIDDynamicImpressionMetricsIdentifier_index] = a5;
  swift_beginAccess();
  *v8 = a1;
  *(v8 + 1) = a2;
  v11.receiver = v5;
  v11.super_class = type metadata accessor for DynamicImpressionMetricsIdentifier();
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t DynamicImpressionMetricsIdentifier.element.getter()
{
  OUTLINED_FUNCTION_1_24();
  v1 = *v0;

  return v1;
}

uint64_t DynamicImpressionMetricsIdentifier.element.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_17();
  *v2 = a1;
  v2[1] = a2;
}

uint64_t DynamicImpressionMetricsIdentifier.index.getter()
{
  v1 = OBJC_IVAR___AMSUIDDynamicImpressionMetricsIdentifier_index;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DynamicImpressionMetricsIdentifier.index.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AMSUIDDynamicImpressionMetricsIdentifier_index;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DynamicImpressionMetricsIdentifier.parent.getter()
{
  OUTLINED_FUNCTION_1_24();
  v1 = *v0;

  return v1;
}

uint64_t DynamicImpressionMetricsIdentifier.parent.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_17();
  *v2 = a1;
  v2[1] = a2;
}

id DynamicImpressionMetricsIdentifier.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DynamicImpressionMetricsIdentifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicImpressionMetricsIdentifier();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_1_24()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_17()
{

  return swift_beginAccess();
}

uint64_t sub_1CA13CEC4(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC8];
  v34 = MEMORY[0x1E69E7CC8];
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_5:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v9 >= v6)
    {

      return v1;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
  }

  while (!v5);
  v8 = v9;
  while (1)
  {
LABEL_9:
    v10 = __clz(__rbit64(v5)) | (v8 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    v14 = *(a1 + 56) + 24 * v10;
    v15 = *v14;
    v32 = *(v14 + 8);
    v16 = *(v14 + 16);
    v17 = *(v1 + 16);
    v33 = v16;
    if (*(v1 + 24) <= v17)
    {
      v19 = v16;

      sub_1CA176458(v17 + 1, 1);
      v1 = v34;
    }

    else
    {
      v18 = v16;
    }

    sub_1CA19CBD8();
    sub_1CA19C198();
    result = sub_1CA19CC18();
    v20 = v1 + 64;
    v21 = -1 << *(v1 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v1 + 64 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v1 + 64 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v20 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v1 + 48) + 16 * v24);
    *v29 = v12;
    v29[1] = v13;
    v30 = *(v1 + 56) + 24 * v24;
    *v30 = v32;
    *(v30 + 8) = v15;
    *(v30 + 16) = v33;
    ++*(v1 + 16);
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v20 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_21;
    }
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t DynamicLabel.centerText.getter()
{
  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_centerText;
  OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_6_10();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DynamicLabel.centerText.setter(char a1)
{
  v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_centerText;
  result = OUTLINED_FUNCTION_13();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DynamicLabel.defaultAlignment.getter()
{
  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_defaultAlignment;
  OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_6_10();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DynamicLabel.defaultAlignment.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_defaultAlignment;
  OUTLINED_FUNCTION_13();
  *(v1 + v3) = a1;
  return sub_1CA13FBFC();
}

uint64_t DynamicLabel.defaultAlignment.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_24_3(a1);
  OUTLINED_FUNCTION_1_23();
  return OUTLINED_FUNCTION_18_2();
}

id DynamicLabel.defaultColor.getter()
{
  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_defaultColor;
  OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_6_10();
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DynamicLabel.defaultColor.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_defaultColor;
  OUTLINED_FUNCTION_13();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_1CA13FBFC();
}

uint64_t DynamicLabel.defaultColor.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_24_3(a1);
  OUTLINED_FUNCTION_1_23();
  return OUTLINED_FUNCTION_18_2();
}

uint64_t sub_1CA13D3A4()
{
  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_defaultCustomTextStyle;
  OUTLINED_FUNCTION_6_10();
  swift_beginAccess();
  sub_1CA0F2ACC(v0 + v1, v5);
  __swift_project_boxed_opaque_existential_2(v5, v5[3]);
  v2 = [v0 traitCollection];
  v3 = sub_1CA19B098();

  __swift_destroy_boxed_opaque_existential_2(v5);
  return v3;
}

uint64_t DynamicLabel.defaultCustomTextStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_defaultCustomTextStyle;
  OUTLINED_FUNCTION_10_10();
  OUTLINED_FUNCTION_6_10();
  swift_beginAccess();
  return sub_1CA0F2ACC(v1 + v3, a1);
}

uint64_t DynamicLabel.defaultCustomTextStyle.setter(uint64_t *a1)
{
  v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_defaultCustomTextStyle;
  OUTLINED_FUNCTION_10_10();
  OUTLINED_FUNCTION_14_5();
  __swift_assign_boxed_opaque_existential_1((v1 + v3), a1);
  swift_endAccess();
  sub_1CA13FBFC();
  return __swift_destroy_boxed_opaque_existential_2(a1);
}

uint64_t DynamicLabel.defaultCustomTextStyle.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_24_3(a1);
  OUTLINED_FUNCTION_1_23();
  return OUTLINED_FUNCTION_18_2();
}

uint64_t DynamicLabel.dynamicText.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_dynamicText;
  OUTLINED_FUNCTION_10_10();
  OUTLINED_FUNCTION_6_10();
  swift_beginAccess();
  return sub_1CA10BC7C(v1 + v3, a1, &qword_1EC433918);
}

uint64_t sub_1CA13D5F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_dynamicText;
  OUTLINED_FUNCTION_10_10();
  OUTLINED_FUNCTION_14_5();
  sub_1CA14461C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t DynamicLabel.shrinkToFit.getter()
{
  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_shrinkToFit;
  OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_6_10();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DynamicLabel.shrinkToFit.setter(char a1)
{
  v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_shrinkToFit;
  OUTLINED_FUNCTION_13();
  *(v1 + v3) = a1;
  return sub_1CA13FBFC();
}

uint64_t DynamicLabel.shrinkToFit.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_24_3(a1);
  OUTLINED_FUNCTION_1_23();
  return OUTLINED_FUNCTION_18_2();
}

uint64_t sub_1CA13D71C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1CA13FBFC();
  }

  return result;
}

id DynamicLabel.__allocating_init(alignment:color:font:)(uint64_t a1, void *a2, void *a3)
{
  v6 = objc_allocWithZone(v3);
  v7 = OUTLINED_FUNCTION_22_3();
  return DynamicLabel.init(alignment:color:font:)(v7, a2, a3);
}

id DynamicLabel.init(alignment:color:font:)(uint64_t a1, void *a2, void *a3)
{
  OUTLINED_FUNCTION_19_1(OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_dynamicText);
  v3[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_shrinkToFit] = 0;
  v3[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_didShrinkFontForPreferredLineCount] = 0;
  v7 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_label;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x1E698CCA0]) init];
  *&v3[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_objectGraph] = 0;
  *&v3[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_defaultAlignment] = a1;
  *&v3[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_defaultColor] = a2;
  v8 = &v3[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_defaultCustomTextStyle];
  *&v3[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_defaultCustomTextStyle + 24] = &type metadata for DynamicLabel.StaticCustomTextStyle;
  v8[4] = sub_1CA140044();
  *v8 = a3;
  v3[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_centerText] = 1;
  v20.receiver = v3;
  v20.super_class = type metadata accessor for DynamicLabel();
  v9 = a2;
  v10 = a3;
  v18 = OUTLINED_FUNCTION_11_9(v10, v11, v12, v13, v14, v15, v16, v17, v20);
  sub_1CA1400BC();
  sub_1CA14010C();

  return v18;
}

id DynamicLabel.init(alignment:color:font:centerText:)(uint64_t a1, void *a2, void *a3, char a4)
{
  OUTLINED_FUNCTION_19_1(OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_dynamicText);
  v4[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_shrinkToFit] = 0;
  v4[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_didShrinkFontForPreferredLineCount] = 0;
  v9 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_label;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x1E698CCA0]) init];
  *&v4[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_objectGraph] = 0;
  *&v4[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_defaultAlignment] = a1;
  *&v4[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_defaultColor] = a2;
  v10 = &v4[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_defaultCustomTextStyle];
  *&v4[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_defaultCustomTextStyle + 24] = &type metadata for DynamicLabel.StaticCustomTextStyle;
  v10[4] = sub_1CA140044();
  *v10 = a3;
  v4[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_centerText] = a4;
  v22.receiver = v4;
  v22.super_class = type metadata accessor for DynamicLabel();
  v11 = a2;
  v12 = a3;
  v20 = OUTLINED_FUNCTION_11_9(v12, v13, v14, v15, v16, v17, v18, v19, v22);
  sub_1CA1400BC();
  sub_1CA14010C();

  return v20;
}

uint64_t sub_1CA13DA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = *(a3 + 24);
  v12 = *(a3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a3, v11);
  OUTLINED_FUNCTION_0_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_3();
  v16 = v15 - v14;
  (*(v17 + 16))(v15 - v14);
  v18 = a5(a1, a2, v16, a4, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_2(a3);
  return v18;
}

void sub_1CA13DB8C()
{
  OUTLINED_FUNCTION_19_1(OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_dynamicText);
  *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_shrinkToFit) = 0;
  *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_didShrinkFontForPreferredLineCount) = 0;
  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_label;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E698CCA0]) init];
  *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_objectGraph) = 0;
  sub_1CA19C9F8();
  __break(1u);
}

void sub_1CA13DC64()
{
  v1 = v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_dynamicText;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_shrinkToFit) = 0;
  *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_didShrinkFontForPreferredLineCount) = 0;
  v2 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_label;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E698CCA0]) init];
  *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_objectGraph) = 0;
  sub_1CA19C9F8();
  __break(1u);
}

Swift::Void __swiftcall DynamicLabel.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  v2 = v1;
  isa = a1.value.super.isa;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for DynamicLabel();
  objc_msgSendSuper2(&v7, sel_traitCollectionDidChange_, isa);
  if (isa)
  {
    v4 = isa;
    v5 = [v2 traitCollection];
    v6 = sub_1CA13DE40();

    if (!v6)
    {
      sub_1CA13FBFC();
    }
  }
}

BOOL sub_1CA13DE40()
{
  v2 = v1;
  OUTLINED_FUNCTION_10_6();
  sub_1CA19AE98();
  OUTLINED_FUNCTION_1_0();
  v57 = v4;
  v58 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_3();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433A10);
  OUTLINED_FUNCTION_0_4();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v54 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433A18);
  v13 = OUTLINED_FUNCTION_12_4(v12);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = v54 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = v54 - v20;
  v22 = [v1 accessibilityContrast];
  if (v22 != [v0 accessibilityContrast])
  {
    return 0;
  }

  v23 = [v2 activeAppearance];
  if (v23 != [v0 activeAppearance])
  {
    return 0;
  }

  v24 = [v2 displayGamut];
  if (v24 != [v0 displayGamut])
  {
    return 0;
  }

  [v2 displayScale];
  v26 = v25;
  [v0 displayScale];
  if (v26 != v27)
  {
    return 0;
  }

  v28 = [v2 forceTouchCapability];
  if (v28 != [v0 forceTouchCapability])
  {
    return 0;
  }

  v29 = [v2 horizontalSizeClass];
  if (v29 != [v0 horizontalSizeClass])
  {
    return 0;
  }

  v30 = [v2 imageDynamicRange];
  if (v30 != [v0 imageDynamicRange])
  {
    return 0;
  }

  v31 = [v2 layoutDirection];
  if (v31 != [v0 layoutDirection])
  {
    return 0;
  }

  v32 = [v2 listEnvironment];
  if (v32 != [v0 listEnvironment])
  {
    return 0;
  }

  v33 = [v2 legibilityWeight];
  if (v33 != [v0 legibilityWeight])
  {
    return 0;
  }

  v34 = [v2 preferredContentSizeCategory];
  v35 = [v0 preferredContentSizeCategory];
  v55 = v34;
  v54[0] = sub_1CA19C118();
  v37 = v36;
  v56 = v35;
  v38 = sub_1CA19C118();
  v54[1] = v37;
  if (v54[0] == v38 && v37 == v39)
  {
  }

  else
  {
    LODWORD(v54[0]) = sub_1CA19CAF8();

    if ((v54[0] & 1) == 0)
    {
      return 0;
    }
  }

  v41 = [v2 sceneCaptureState];
  if (v41 != [v0 sceneCaptureState])
  {
    return 0;
  }

  v42 = [v2 toolbarItemPresentationSize];
  if (v42 != [v0 toolbarItemPresentationSize])
  {
    return 0;
  }

  v43 = MEMORY[0x1CCA99C70]();
  MEMORY[0x1CCA99C70](v43);
  v44 = *(v8 + 48);
  sub_1CA10BC7C(v21, v11, &qword_1EC433A18);
  v56 = v44;
  sub_1CA10BC7C(v19, &v44[v11], &qword_1EC433A18);
  v45 = v58;
  if (__swift_getEnumTagSinglePayload(v11, 1, v58) != 1)
  {
    sub_1CA10BC7C(v11, v16, &qword_1EC433A18);
    v46 = v56;
    if (__swift_getEnumTagSinglePayload(&v56[v11], 1, v45) != 1)
    {
      v47 = v57;
      (*(v57 + 32))(v7, &v46[v11], v45);
      sub_1CA144A24();
      LODWORD(v56) = sub_1CA19C0D8();
      v48 = *(v47 + 8);
      v48(v7, v45);
      sub_1CA10BDC8(v19, &qword_1EC433A18);
      sub_1CA10BDC8(v21, &qword_1EC433A18);
      v48(v16, v45);
      sub_1CA10BDC8(v11, &qword_1EC433A18);
      if ((v56 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_27;
    }

    sub_1CA10BDC8(v19, &qword_1EC433A18);
    sub_1CA10BDC8(v21, &qword_1EC433A18);
    (*(v57 + 8))(v16, v45);
LABEL_25:
    sub_1CA10BDC8(v11, &qword_1EC433A10);
    return 0;
  }

  sub_1CA10BDC8(v19, &qword_1EC433A18);
  sub_1CA10BDC8(v21, &qword_1EC433A18);
  if (__swift_getEnumTagSinglePayload(&v56[v11], 1, v45) != 1)
  {
    goto LABEL_25;
  }

  sub_1CA10BDC8(v11, &qword_1EC433A18);
LABEL_27:
  v49 = [v2 userInterfaceIdiom];
  if (v49 == [v0 userInterfaceIdiom])
  {
    v50 = [v2 userInterfaceLevel];
    if (v50 == [v0 userInterfaceLevel])
    {
      v51 = [v2 userInterfaceStyle];
      if (v51 == [v0 userInterfaceStyle])
      {
        v52 = [v2 verticalSizeClass];
        return v52 == [v0 verticalSizeClass];
      }
    }
  }

  return 0;
}

id DynamicLabel.maximumContentSizeCategory.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_label) maximumContentSizeCategory];

  return v1;
}

void DynamicLabel.maximumContentSizeCategory.setter(void *a1)
{
  [*(v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_label) setMaximumContentSizeCategory_];
}

Swift::Bool __swiftcall DynamicLabel.point(inside:with:)(CGPoint inside, UIEvent_optional with)
{
  isa = with.value.super.isa;
  OUTLINED_FUNCTION_23_3();
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v22 = type metadata accessor for DynamicLabel();
    v4 = OUTLINED_FUNCTION_17_3();
    v7 = objc_msgSendSuper2(v5, v6, isa, v4, v2, v22);
    goto LABEL_12;
  }

  v8 = *&v2[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_label];
  v9 = OUTLINED_FUNCTION_17_3();
  v12 = [v10 v11];
  if (!v12)
  {
LABEL_9:
    v7 = 0;
    goto LABEL_12;
  }

  v13 = v12;
  v14 = [objc_msgSend(v8 tokenizer)];
  OUTLINED_FUNCTION_22_3();
  swift_unknownObjectRelease();
  if (!v2)
  {

    goto LABEL_9;
  }

  v15 = [v8 beginningOfDocument];
  v16 = [v2 start];
  v17 = [v8 offsetFromPosition:v15 toPosition:v16];

  v18 = [v8 attributedText];
  if (!v18)
  {
    __break(1u);
    return v18;
  }

  v19 = v18;
  v20 = [v18 attribute:*MEMORY[0x1E69DB670] atIndex:v17 effectiveRange:0];

  v7 = v20 != 0;
  if (v20)
  {
    sub_1CA19C768();

    swift_unknownObjectRelease();
  }

  else
  {

    memset(v23, 0, sizeof(v23));
  }

  sub_1CA10BDC8(v23, &qword_1EC433830);
LABEL_12:
  LOBYTE(v18) = v7;
  return v18;
}

CGSize __swiftcall DynamicLabel.sizeThatFits(_:)(CGSize a1)
{
  sub_1CA13EA24(&selRef_sizeThatFits_);
  result.height = v2;
  result.width = v1;
  return result;
}

CGSize __swiftcall DynamicLabel.systemLayoutSizeFitting(_:)(CGSize a1)
{
  sub_1CA13EA24(&selRef_systemLayoutSizeFittingSize_);
  result.height = v2;
  result.width = v1;
  return result;
}

Swift::Void __swiftcall DynamicLabel.setContentHuggingPriority(_:for:)(UILayoutPriority _, UILayoutConstraintAxis a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for DynamicLabel();
  *&v5 = _;
  objc_msgSendSuper2(&v7, sel_setContentHuggingPriority_forAxis_, a2, v5);
  *&v6 = _;
  [*&v2[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_label] setContentHuggingPriority:a2 forAxis:v6];
}

void DynamicLabel.apply(text:asPartOf:)(void *a1, void *a2)
{
  v3 = v2;
  sub_1CA0F2ACC(a1, __dst);
  v6 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_dynamicText;
  OUTLINED_FUNCTION_14_5();
  sub_1CA14461C(__dst, &v3[v6]);
  swift_endAccess();
  *&v3[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_objectGraph] = a2;

  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_2(a1, v7);
  if (((*(v8 + 40))(v7, v8) & 1) == 0)
  {
    sub_1CA0F2ACC(a1, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433950);
    if (swift_dynamicCast())
    {
      memcpy(__dst, __src, sizeof(__dst));
      sub_1CA13F0AC(__dst, a2);
      sub_1CA1446E0(__dst);
      goto LABEL_6;
    }

    bzero(__src, 0xC0uLL);
    sub_1CA10BDC8(__src, &qword_1EC433968);
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_23();
      swift_once();
    }

    v21 = sub_1CA19AFF8();
    __swift_project_value_buffer(v21, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    v22 = sub_1CA19AF88();
    OUTLINED_FUNCTION_7_3(v22);
    OUTLINED_FUNCTION_4_8();
    *(OUTLINED_FUNCTION_27_1() + 16) = xmmword_1CA1A0B80;
    __dst[3] = type metadata accessor for DynamicLabel();
    __dst[0] = v3;
    v23 = v3;
    v20 = AMSLogKey();
    if (!v20)
    {
LABEL_17:
      OUTLINED_FUNCTION_28_2();

      __swift_destroy_boxed_opaque_existential_2(__dst);
      sub_1CA19AF18();
      sub_1CA19AFB8();

      return;
    }

LABEL_16:
    v24 = v20;
    sub_1CA19C118();

    goto LABEL_17;
  }

  sub_1CA0F2ACC(a1, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433950);
  if (!swift_dynamicCast())
  {
    bzero(__src, 0x88uLL);
    sub_1CA10BDC8(__src, &qword_1EC433958);
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_23();
      swift_once();
    }

    v17 = sub_1CA19AFF8();
    __swift_project_value_buffer(v17, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    v18 = sub_1CA19AF88();
    OUTLINED_FUNCTION_7_3(v18);
    OUTLINED_FUNCTION_4_8();
    *(OUTLINED_FUNCTION_27_1() + 16) = xmmword_1CA1A0B80;
    __dst[3] = type metadata accessor for DynamicLabel();
    __dst[0] = v3;
    v19 = v3;
    v20 = AMSLogKey();
    if (!v20)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  memcpy(__dst, __src, 0x88uLL);
  sub_1CA13F83C(__dst);
  sub_1CA14468C(__dst);
LABEL_6:
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_2(a1, a1[3]);
  v10 = OUTLINED_FUNCTION_22_3();
  v12 = v11(v10, v9);
  if (!v13)
  {
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_2(a1, a1[3]);
    v15 = OUTLINED_FUNCTION_22_3();
    v12 = v16(v15, v14);
  }

  sub_1CA1442BC(v12, v13, v3);
}

Swift::Void __swiftcall DynamicLabel.removeText()()
{
  *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_objectGraph) = 0;

  v4 = 0;
  memset(v3, 0, sizeof(v3));
  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_dynamicText;
  OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_14_5();
  sub_1CA14461C(v3, v0 + v1);
  swift_endAccess();
  v2 = *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_label);
  [v2 setText_];
  [v2 setAttributedText_];
}

uint64_t sub_1CA13F0AC(unsigned __int8 *a1, void *a2)
{
  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_23();
    swift_once();
  }

  v4 = sub_1CA19AFF8();
  __swift_project_value_buffer(v4, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  OUTLINED_FUNCTION_10_6();
  v5 = sub_1CA19AF88();
  OUTLINED_FUNCTION_7_3(v5);
  OUTLINED_FUNCTION_4_8();
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  v64 = type metadata accessor for DynamicLabel();
  v63[0] = v2;
  v6 = v2;
  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    sub_1CA19C118();
  }

  OUTLINED_FUNCTION_20_2();

  __swift_destroy_boxed_opaque_existential_2(v63);
  OUTLINED_FUNCTION_17_2();
  sub_1CA19AF18();
  v64 = &type metadata for DynamicMarkdownText;
  v63[0] = swift_allocObject();
  sub_1CA1448BC(a1, v63[0] + 16);
  sub_1CA19AF38();
  sub_1CA10BDC8(v63, &qword_1EC433830);
  sub_1CA19AFA8();

  v9 = [v6 traitCollection];
  v10 = DynamicMarkdownText.font(compatibleWith:)(v9);

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = sub_1CA13D3A4();
  }

  v12 = *(a1 + 8);
  if (v12)
  {
    v59 = *(a1 + 8);
  }

  else
  {
    v13 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_defaultColor;
    OUTLINED_FUNCTION_6_10();
    swift_beginAccess();
    v59 = *&v6[v13];
  }

  v14 = a1[32];
  v52 = a1[32];
  if (v14 == 5)
  {
    v15 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_defaultAlignment;
    OUTLINED_FUNCTION_6_10();
    swift_beginAccess();
    v16 = *&v6[v15];
  }

  else
  {
    v16 = DynamicTextAlignment.textAlignment.getter(v14);
  }

  v50 = v10;
  v49 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433A08);
  sub_1CA19C038();
  sub_1CA19C038();
  sub_1CA0F2110(0, &qword_1EE03C250);
  v17 = v11;
  v58 = sub_1CA170454();

  v57 = sub_1CA170460();
  v60 = v17;

  v18 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v18 setAlignment_];
  v19 = *(a1 + 3);
  v20 = v18;
  v56 = v19;

  v21 = *(a1 + 21);
  v22 = *(a1 + 5);
  v23 = v21;
  v54 = sub_1CA13CEC4(v22);

  v55 = v20;
  [v20 mutableCopy];
  sub_1CA19C768();
  swift_unknownObjectRelease();
  sub_1CA0F2110(0, &qword_1EE03B1F8);
  if (swift_dynamicCast())
  {
    v24 = v62[0];
  }

  else
  {
    v24 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  }

  v25 = v49;
  if ((a1[56] & 1) == 0)
  {
    v26 = *(a1 + 6);
    [(ValueMetadata *)v60 ascender];
    v28 = v26 - v27;
    [(ValueMetadata *)v60 descender];
    [v24 setLineSpacing_];
  }

  if ((a1[128] & 1) == 0)
  {
    [v24 setLineBreakStrategy_];
  }

  v30 = *&v6[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_label];
  if (!v12)
  {
    v31 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_defaultColor;
    OUTLINED_FUNCTION_6_10();
    swift_beginAccess();
    v25 = *&v6[v31];
  }

  [v30 setTextColor_];

  v32 = v50;
  if (!v10)
  {
    v32 = sub_1CA13D3A4();
  }

  v51 = v50;
  [v30 setFont_];

  v6[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_didShrinkFontForPreferredLineCount] = 0;
  v33 = *(a1 + 22);
  v34 = *(a1 + 23);
  v63[0] = v56;
  v63[1] = v54;
  v63[2] = v59;
  v64 = v60;
  v65 = 161644770;
  v66 = 0xA400000000000000;
  v67 = v58;
  v68 = 10;
  v69 = 0xE100000000000000;
  v70 = a2;
  v71 = 606245;
  v72 = 0xE300000000000000;
  v73 = v57;
  v74 = v24;
  v53 = v21;
  v75 = v21;
  v35 = objc_allocWithZone(type metadata accessor for MarkdownStringGenerator());

  sub_1CA144918(v63, v62);
  v36 = sub_1CA16791C(v33, v34, v63);
  v37 = sub_1CA167AC8();
  [v30 setAttributedText_];
  if (v52 == 5)
  {
    v38 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_defaultAlignment;
    OUTLINED_FUNCTION_6_10();
    swift_beginAccess();
    v39 = *&v6[v38];
  }

  else
  {
    v39 = DynamicTextAlignment.textAlignment.getter(v52);
  }

  [v30 setTextAlignment_];
  v40 = [v6 traitCollection];
  v41 = sub_1CA17EBD8();

  if (v41)
  {
    v42 = a1[113];
    if (v42 != 5)
    {
      [v30 setTextAlignment_];
    }
  }

  v43 = [v6 traitCollection];
  v44 = sub_1CA19C608();

  if (v44)
  {
    v45 = *a1;
    if (v45 == 5)
    {
      v46 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_defaultAlignment;
      OUTLINED_FUNCTION_6_10();
      swift_beginAccess();
      v47 = *&v6[v46];
    }

    else
    {
      v47 = DynamicTextAlignment.textAlignment.getter(v45);
    }

    [v30 setTextAlignment_];
  }

  v62[0] = v56;
  v62[1] = v54;
  v62[2] = v59;
  v62[3] = v60;
  v62[4] = 161644770;
  v62[5] = 0xA400000000000000;
  v62[6] = v58;
  v62[7] = 10;
  v62[8] = 0xE100000000000000;
  v62[9] = a2;
  v62[10] = 606245;
  v62[11] = 0xE300000000000000;
  v62[12] = v57;
  v62[13] = v24;
  v62[14] = v53;
  return sub_1CA144974(v62);
}

void sub_1CA13F83C(unsigned __int8 *a1)
{
  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_23();
    swift_once();
  }

  v3 = sub_1CA19AFF8();
  __swift_project_value_buffer(v3, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  v4 = sub_1CA19AF88();
  OUTLINED_FUNCTION_7_3(v4);
  OUTLINED_FUNCTION_4_8();
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  v28 = type metadata accessor for DynamicLabel();
  v27[0] = v1;
  v5 = v1;
  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    sub_1CA19C118();
  }

  OUTLINED_FUNCTION_20_2();

  __swift_destroy_boxed_opaque_existential_2(v27);
  OUTLINED_FUNCTION_17_2();
  sub_1CA19AF18();
  v28 = &type metadata for DynamicPlainText;
  v27[0] = swift_allocObject();
  sub_1CA1449C8(a1, v27[0] + 16);
  sub_1CA19AF38();
  sub_1CA10BDC8(v27, &qword_1EC433830);
  sub_1CA19AFA8();

  v8 = *&v5[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_label];
  v9 = sub_1CA19C0E8();
  [v8 setText_];

  v10 = a1[24];
  if (v10 == 5)
  {
    v11 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_defaultAlignment;
    OUTLINED_FUNCTION_6_10();
    swift_beginAccess();
    v12 = *&v5[v11];
  }

  else
  {
    v12 = DynamicTextAlignment.textAlignment.getter(v10);
  }

  [v8 setTextAlignment_];
  v13 = [v5 traitCollection];
  v14 = sub_1CA17EBD8();

  if (v14)
  {
    v15 = a1[81];
    if (v15 != 5)
    {
      [v8 setTextAlignment_];
    }
  }

  v16 = [v5 traitCollection];
  v17 = sub_1CA19C608();

  if (v17)
  {
    v18 = *a1;
    if (v18 == 5)
    {
      v19 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_defaultAlignment;
      OUTLINED_FUNCTION_6_10();
      swift_beginAccess();
      v20 = *&v5[v19];
    }

    else
    {
      v20 = DynamicTextAlignment.textAlignment.getter(v18);
    }

    [v8 setTextAlignment_];
  }

  v21 = *(a1 + 4);
  if (v21)
  {
    v22 = *(a1 + 4);
  }

  else
  {
    v23 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_defaultColor;
    OUTLINED_FUNCTION_6_10();
    swift_beginAccess();
    v22 = *&v5[v23];
    v21 = 0;
  }

  v24 = v21;
  [v8 setTextColor_];

  v25 = [v5 traitCollection];
  v26 = DynamicPlainText.font(compatibleWith:)(v25);

  if (!v26)
  {
    v26 = sub_1CA13D3A4();
  }

  [v8 setFont_];

  v5[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_didShrinkFontForPreferredLineCount] = 0;
}

uint64_t sub_1CA13FBFC()
{
  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_dynamicText;
  OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_6_10();
  swift_beginAccess();
  sub_1CA10BC7C(&v0[v1], &v9, &qword_1EC433918);
  if (!v10)
  {
    return sub_1CA10BDC8(&v9, &qword_1EC433918);
  }

  sub_1CA0EBE94(&v9, v11);
  v2 = *&v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_objectGraph];
  if (v2)
  {
    v3 = qword_1EE03B230;

    if (v3 != -1)
    {
      OUTLINED_FUNCTION_0_23();
      swift_once();
    }

    v4 = sub_1CA19AFF8();
    __swift_project_value_buffer(v4, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    v5 = sub_1CA19AF88();
    OUTLINED_FUNCTION_7_3(v5);
    OUTLINED_FUNCTION_4_8();
    *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
    v10 = type metadata accessor for DynamicLabel();
    *&v9 = v0;
    v0;
    v6 = AMSLogKey();
    if (v6)
    {
      v7 = v6;
      sub_1CA19C118();
    }

    OUTLINED_FUNCTION_20_2();

    __swift_destroy_boxed_opaque_existential_2(&v9);
    OUTLINED_FUNCTION_17_2();
    sub_1CA19AF18();
    sub_1CA19AFA8();

    DynamicLabel.apply(text:asPartOf:)(v11, v2);
  }

  return __swift_destroy_boxed_opaque_existential_2(v11);
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result[3];
    v5 = a2[3];
    if (v4 == v5)
    {
      v10 = *(v4 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;

        *v3 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v5;
      result[4] = a2[4];
      v6 = *(v4 - 8);
      v7 = *(v5 - 8);
      v8 = v7;
      v9 = *(v7 + 80);
      if ((*(v6 + 82) & 2) != 0)
      {
        if ((v9 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v7 + 16))(result, a2, v5);
        }
      }

      else
      {
        (*(v6 + 32))(v13, result, v4);
        if ((v9 & 0x20000) != 0)
        {
          *v3 = *a2;
        }

        else
        {
          (*(v8 + 16))(v3, a2, v5);
        }

        return (*(v6 + 8))(v13, v4);
      }
    }
  }

  return result;
}

unint64_t sub_1CA140044()
{
  result = qword_1EC433940;
  if (!qword_1EC433940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433940);
  }

  return result;
}

id sub_1CA1400BC()
{
  [v0 setIsAccessibilityElement_];
  v1 = *MEMORY[0x1E69DDA18];

  return [v0 setAccessibilityTraits_];
}

void sub_1CA14010C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_label];
  v3 = [objc_opt_self() clearColor];
  [v2 setBackgroundColor_];

  v4 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_centerText;
  OUTLINED_FUNCTION_6_10();
  swift_beginAccess();
  OUTLINED_FUNCTION_21_2([v2 setCenterText_], sel_setClipsToBounds_);
  OUTLINED_FUNCTION_21_2([v2 setDelegate_], sel_setEditable_);
  [v2 setSelectable_];
  [v2 setText_];
  v5 = OUTLINED_FUNCTION_5_11();
  [v6 v7];
  v8 = [v2 textContainer];
  if (v8)
  {
    v9 = v8;
    [v8 setLineBreakMode_];
  }

  v10 = [v2 textContainer];
  if (v10)
  {
    v11 = v10;
    [v10 setLineFragmentPadding_];
  }

  v12 = [v2 textContainer];
  if (v12)
  {
    v13 = v12;
    [v12 setMaximumNumberOfLines_];
  }

  [v2 setAdjustsFontForContentSizeCategory_];
  v14 = OUTLINED_FUNCTION_5_11();
  v17 = OUTLINED_FUNCTION_21_2([v15 v16], sel_setScrollEnabled_);
  v18 = OUTLINED_FUNCTION_21_2(v17, sel_setShowsHorizontalScrollIndicator_);
  OUTLINED_FUNCTION_21_2(v18, sel_setShowsVerticalScrollIndicator_);
  v19 = OUTLINED_FUNCTION_5_11();
  [v20 v21];
  [v1 addSubview_];
  v22 = OUTLINED_FUNCTION_5_11();
  sub_1CA19280C(0, v22, v23, v24, v25);
}

void sub_1CA140350()
{
  v3 = v0;
  OUTLINED_FUNCTION_23_3();
  v4 = sub_1CA19AEF8();
  v5 = OUTLINED_FUNCTION_12_4(v4);
  v6 = MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v89 - v7;
  v97 = sub_1CA19AFF8();
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_3();
  v14 = v13 - v12;
  v98 = *&v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_label];
  v15 = [v98 font];
  if (!v15)
  {
LABEL_47:
    OUTLINED_FUNCTION_29_1();
    return;
  }

  if (v1 > 0.0)
  {
    v90 = v15;
    v16 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_dynamicText;
    OUTLINED_FUNCTION_6_10();
    swift_beginAccess();
    v93 = v16;
    sub_1CA10BC7C(v3 + v16, &v99, &qword_1EC433918);
    v17 = v102;
    v18 = &unk_1CA1A0000;
    if (v102)
    {
      *&v95 = v8;
      v96 = v10;
      v19 = v103;
      __swift_project_boxed_opaque_existential_2(&v99, v102);
      OUTLINED_FUNCTION_0_11();
      v21 = v20;
      MEMORY[0x1EEE9AC00](v22);
      OUTLINED_FUNCTION_1_3();
      v25 = v24 - v23;
      (*(v21 + 16))(v24 - v23);
      v26 = v90;
      sub_1CA10BDC8(&v99, &qword_1EC433918);
      *&v27 = COERCE_DOUBLE((*(v19 + 64))(v17, v19));
      LOBYTE(v19) = v28;
      (*(v21 + 8))(v25, v17);
      if (v19)
      {
        v29 = *&v26;
        v18 = &unk_1CA1A0000;
      }

      else
      {
        v29 = *&v26;
        v18 = &unk_1CA1A0000;
        if (v27 >= 1)
        {
          v30 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_didShrinkFontForPreferredLineCount;
          if ((*(v3 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_didShrinkFontForPreferredLineCount) & 1) == 0)
          {
            v31 = [v3 traitCollection];
            v32 = sub_1CA19C608();

            if ((v32 & 1) == 0)
            {
              sub_1CA0F2110(0, &qword_1EE03C270);
              if ((static UIApplication.isCompact()() & 1) == 0)
              {
                sub_1CA14117C();
                if (v27 < v33)
                {
                  if (qword_1EE03B230 != -1)
                  {
                    OUTLINED_FUNCTION_0_23();
                    swift_once();
                  }

                  v34 = v97;
                  v35 = __swift_project_value_buffer(v97, qword_1EE040B90);
                  (*(v96 + 2))(v14, v35, v34);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
                  v36 = sub_1CA19AF88();
                  OUTLINED_FUNCTION_7_3(v36);
                  OUTLINED_FUNCTION_4_8();
                  v39 = v38 & ~v37;
                  v91 = v40;
                  v41 = swift_allocObject();
                  *(v41 + 16) = xmmword_1CA1A0B80;
                  v89[2] = v41;
                  v94 = v41 + v39;
                  v102 = type metadata accessor for DynamicLabel();
                  v99 = *&v3;
                  v89[1] = v3;
                  v42 = AMSLogKey();
                  if (v42)
                  {
                    v43 = v42;
                    sub_1CA19C118();
                  }

                  sub_1CA19AF58();

                  __swift_destroy_boxed_opaque_existential_2(&v99);
                  sub_1CA19AEE8();
                  OUTLINED_FUNCTION_13_5();
                  sub_1CA19AED8();
                  v86 = DynamicLabel.font.getter();
                  v87 = *&v86;
                  if (v86)
                  {
                    v86 = sub_1CA0F2110(0, &qword_1EE03C180);
                  }

                  else
                  {
                    v100 = 0.0;
                    v101 = 0;
                  }

                  v99 = v87;
                  v102 = v86;
                  sub_1CA19AEB8();
                  sub_1CA10BDC8(&v99, &qword_1EC433830);
                  sub_1CA19AED8();
                  v102 = MEMORY[0x1E69E6530];
                  v99 = *&v27;
                  sub_1CA19AEB8();
                  sub_1CA10BDC8(&v99, &qword_1EC433830);
                  sub_1CA19AED8();
                  sub_1CA19AF08();
                  sub_1CA19AFA8();

                  (*(v96 + 1))(v14, v97);
                  sub_1CA0F2110(0, &qword_1EE03C180);
                  v88 = sub_1CA161504(v26);

                  *(v3 + v30) = 1;
                  v29 = *&v88;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v29 = COERCE_DOUBLE(v90);
      sub_1CA10BDC8(&v99, &qword_1EC433918);
    }

    v96 = " not been implemented";
    v91 = "Shrinking font (";
    v95 = v18[184];
    for (i = v3; ; v3 = i)
    {
      sub_1CA10BC7C(v3 + v93, &v99, &qword_1EC433918);
      v46 = v102;
      if (!v102)
      {
        break;
      }

      v47 = v103;
      __swift_project_boxed_opaque_existential_2(&v99, v102);
      OUTLINED_FUNCTION_0_11();
      v49 = v48;
      MEMORY[0x1EEE9AC00](v50);
      OUTLINED_FUNCTION_1_3();
      v53 = v52 - v51;
      (*(v49 + 16))(v52 - v51);
      sub_1CA10BDC8(&v99, &qword_1EC433918);
      *&v54 = COERCE_DOUBLE((*(v47 + 56))(v46, v47));
      v56 = v55;
      (*(v49 + 8))(v53, v46);
      if (v56)
      {
        goto LABEL_35;
      }

      if (v54 < 1)
      {
        goto LABEL_35;
      }

      v57 = [v3 traitCollection];
      v58 = sub_1CA19C608();

      if (v58)
      {
        goto LABEL_35;
      }

      [*&v29 pointSize];
      v60 = v59;
      [objc_opt_self() smallSystemFontSize];
      if (v61 >= v60)
      {
        goto LABEL_35;
      }

      v62 = [v98 attributedText];
      if (!v62)
      {
        goto LABEL_35;
      }

      v63 = v62;
      v64 = sub_1CA1412B4(*&v29);

      OUTLINED_FUNCTION_17_3();
      v65 = sub_1CA141340();
      if ((v66 & 1) != 0 || v54 >= v65)
      {

        goto LABEL_35;
      }

      if (qword_1EE03B230 != -1)
      {
        OUTLINED_FUNCTION_0_23();
        swift_once();
      }

      v94 = __swift_project_value_buffer(v97, qword_1EE040B90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
      v67 = sub_1CA19AF88();
      OUTLINED_FUNCTION_7_3(v67);
      OUTLINED_FUNCTION_4_8();
      *(swift_allocObject() + 16) = v95;
      v102 = type metadata accessor for DynamicLabel();
      v99 = *&i;
      v68 = i;
      v69 = AMSLogKey();
      if (v69)
      {
        v70 = v69;
        sub_1CA19C118();
      }

      sub_1CA19AF58();

      __swift_destroy_boxed_opaque_existential_2(&v99);
      sub_1CA19AEE8();
      OUTLINED_FUNCTION_13_5();
      sub_1CA19AED8();
      v102 = sub_1CA0F2110(0, &qword_1EE03C180);
      v99 = v29;
      v71 = *&v29;
      sub_1CA19AEB8();
      sub_1CA10BDC8(&v99, &qword_1EC433830);
      sub_1CA19AED8();
      v102 = MEMORY[0x1E69E6530];
      v99 = *&v54;
      sub_1CA19AEB8();
      sub_1CA10BDC8(&v99, &qword_1EC433830);
      sub_1CA19AED8();
      sub_1CA19AF08();
      sub_1CA19AFA8();

      [v71 pointSize];
      v29 = COERCE_DOUBLE([v71 fontWithSize_]);
    }

    sub_1CA10BDC8(&v99, &qword_1EC433918);
LABEL_35:
    v73 = sub_1CA0F2110(0, &qword_1EE03C180);
    v74 = COERCE_DOUBLE(*&v29);
    v93 = v73;
    LOBYTE(v73) = sub_1CA19C6D8();

    if ((v73 & 1) == 0)
    {
      [v98 setFont_];
    }

    v94 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_shrinkToFit;
    OUTLINED_FUNCTION_6_10();
    swift_beginAccess();
    while (*(v3 + v94) == 1)
    {
      [*&v74 pointSize];
      v76 = v75;
      [objc_opt_self() smallSystemFontSize];
      if (v77 >= v76)
      {
        break;
      }

      [v98 sizeThatFits_];
      if (v78 <= v1)
      {
        break;
      }

      if (qword_1EE03B230 != -1)
      {
        OUTLINED_FUNCTION_0_23();
        swift_once();
      }

      __swift_project_value_buffer(v97, qword_1EE040B90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
      v79 = sub_1CA19AF88();
      OUTLINED_FUNCTION_7_3(v79);
      OUTLINED_FUNCTION_4_8();
      *(swift_allocObject() + 16) = v95;
      v102 = type metadata accessor for DynamicLabel();
      v99 = *&v3;
      v80 = v3;
      v81 = AMSLogKey();
      if (v81)
      {
        v82 = v81;
        sub_1CA19C118();
      }

      sub_1CA19AF58();

      __swift_destroy_boxed_opaque_existential_2(&v99);
      sub_1CA19AEE8();
      OUTLINED_FUNCTION_13_5();
      sub_1CA19AED8();
      v102 = v93;
      v99 = v74;
      v83 = *&v74;
      sub_1CA19AEB8();
      sub_1CA10BDC8(&v99, &qword_1EC433830);
      sub_1CA19AED8();
      type metadata accessor for CGSize(0);
      v102 = v84;
      v99 = v2;
      v100 = v1;
      sub_1CA19AEB8();
      sub_1CA10BDC8(&v99, &qword_1EC433830);
      sub_1CA19AED8();
      sub_1CA19AF08();
      sub_1CA19AFA8();

      [v83 pointSize];
      v74 = COERCE_DOUBLE([v83 fontWithSize_]);

      [v98 setFont_];
    }

    goto LABEL_47;
  }

  OUTLINED_FUNCTION_29_1();
}

void sub_1CA14117C()
{
  v1 = [v0 textContainer];
  [v1 size];
  v3 = v2;

  [v0 sizeThatFits_];
  v5 = v4;
  v6 = [v0 font];
  if (v6)
  {
    v7 = v6;
    [v6 lineHeight];
    v9 = v8;
  }

  else
  {
    v9 = 1.0;
  }

  v10 = v5 / v9;
  if (COERCE__INT64(fabs(v5 / v9)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
  }
}

id DynamicLabel.font.getter()
{
  result = [*(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_label) font];
  if (!result)
  {
    return sub_1CA13D3A4();
  }

  return result;
}

id sub_1CA1412B4(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  v4 = *MEMORY[0x1E69DB648];
  v5 = v3;
  [v5 addAttribute:v4 value:a1 range:{0, objc_msgSend(v5, sel_length)}];

  return v5;
}

uint64_t sub_1CA141340()
{
  OUTLINED_FUNCTION_23_3();
  v2 = v1;
  v19 = *MEMORY[0x1E69E9840];
  v3 = [*(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_label) textContainer];
  if (!v3)
  {
    return 0;
  }

  v4 = objc_allocWithZone(MEMORY[0x1E69DB800]);
  v5 = OUTLINED_FUNCTION_17_3();
  v8 = [v6 v7];
  [v8 setLineBreakMode_];
  [v3 lineFragmentPadding];
  [v8 setLineFragmentPadding_];
  [v8 setMaximumNumberOfLines_];
  v9 = [objc_allocWithZone(MEMORY[0x1E69DB7C0]) init];
  [v9 addTextContainer_];
  v10 = [objc_allocWithZone(MEMORY[0x1E69DB850]) initWithAttributedString_];
  [v9 setTextStorage_];
  v11 = [v9 numberOfGlyphs];
  if (v11 < 1)
  {

    v15 = 0;
  }

  else
  {
    v12 = v11;
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
      }

      v17 = 0;
      v18 = 0;
      [v9 lineFragmentRectForGlyphAtIndex:v14 effectiveRange:&v17];
      v14 = v18 + v17;
      ++v13;
    }

    while (v18 + v17 < v12);
  }

  return v15;
}

id DynamicLabel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DynamicLabel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicLabel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CA141728(uint64_t a1)
{
  v2 = sub_1CA19ADC8();
  if (!v3)
  {
    return 0;
  }

  v4 = v2;
  v5 = v3;
  v6 = v2 == 0x6E6F69746361 && v3 == 0xE600000000000000;
  if (v6 || (sub_1CA19CAF8() & 1) != 0)
  {

    return sub_1CA14196C(a1);
  }

  v8 = v4 == 1886680168 && v5 == 0xE400000000000000;
  if (v8 || (sub_1CA19CAF8() & 1) != 0 || (v4 == 0x7370747468 ? (v9 = v5 == 0xE500000000000000) : (v9 = 0), v9))
  {
  }

  else
  {
    v10 = sub_1CA19CAF8();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  return sub_1CA1426B4(a1);
}

uint64_t sub_1CA14196C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ResultingActionDispatcher.MetricsBehavior();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CA19BA68();
  v60 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4339D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v54 - v11;
  v13 = sub_1CA19ACB8();
  v61 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_dynamicText;
  swift_beginAccess();
  sub_1CA10BC7C(&v2[v16], &v62, &qword_1EC433918);
  if (!*(&v63 + 1))
  {
    sub_1CA10BDC8(&v62, &qword_1EC433918);
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433950);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    bzero(v65, 0xC0uLL);
    goto LABEL_12;
  }

  if (!v65[3])
  {
LABEL_12:
    sub_1CA10BDC8(v65, &qword_1EC433968);
LABEL_13:
    if (qword_1EE03B230 != -1)
    {
      swift_once();
    }

    v21 = sub_1CA19AFF8();
    __swift_project_value_buffer(v21, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    sub_1CA19AF88();
    *(swift_allocObject() + 16) = xmmword_1CA1A0930;
    v66[3] = type metadata accessor for DynamicLabel();
    v66[0] = v2;
    v22 = v2;
    v23 = AMSLogKey();
    if (v23)
    {
      v24 = v23;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(v66);
    sub_1CA19AF18();
    v25 = sub_1CA19ADF8();
    v66[3] = v25;
    boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(v66);
    (*(*(v25 - 8) + 16))(boxed_opaque_existential_2Tm, a1, v25);
    sub_1CA19AF38();
    sub_1CA10BDC8(v66, &qword_1EC433830);
    sub_1CA19AFB8();

    return 0;
  }

  memcpy(v66, v65, 0xC0uLL);
  if (!*&v2[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_objectGraph])
  {
    sub_1CA1446E0(v66);
    goto LABEL_13;
  }

  v59 = *&v2[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_objectGraph];

  sub_1CA19AC88();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1CA10BDC8(v12, &unk_1EC4339D0);
    if (qword_1EE03B230 != -1)
    {
      swift_once();
    }

    v17 = sub_1CA19AFF8();
    __swift_project_value_buffer(v17, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    sub_1CA19AF88();
    *(swift_allocObject() + 16) = xmmword_1CA1A0930;
    v65[3] = type metadata accessor for DynamicLabel();
    v65[0] = v2;
    v18 = v2;
    v19 = AMSLogKey();
    if (v19)
    {
      v20 = v19;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(v65);
    sub_1CA19AF18();
    v38 = sub_1CA19ADF8();
    v65[3] = v38;
    v39 = __swift_allocate_boxed_opaque_existential_2Tm(v65);
    (*(*(v38 - 8) + 16))(v39, a1, v38);
    sub_1CA19AF38();
    sub_1CA10BDC8(v65, &qword_1EC433830);
    sub_1CA19AFB8();

LABEL_34:
    sub_1CA1446E0(v66);
    return 0;
  }

  (*(v61 + 32))(v15, v12, v13);
  sub_1CA19AC98();
  v29 = sub_1CA19ACA8();
  if (!v30)
  {
LABEL_29:
    if (qword_1EE03B230 != -1)
    {
      swift_once();
    }

    v40 = sub_1CA19AFF8();
    v60 = __swift_project_value_buffer(v40, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    sub_1CA19AF88();
    *(swift_allocObject() + 16) = xmmword_1CA1A0930;
    v65[3] = type metadata accessor for DynamicLabel();
    v65[0] = v2;
    v41 = v2;
    v42 = AMSLogKey();
    if (v42)
    {
      v43 = v42;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(v65);
    sub_1CA19AF18();
    v44 = sub_1CA19ADF8();
    v65[3] = v44;
    v45 = __swift_allocate_boxed_opaque_existential_2Tm(v65);
    (*(*(v44 - 8) + 16))(v45, a1, v44);
    sub_1CA19AF38();
    sub_1CA10BDC8(v65, &qword_1EC433830);
    sub_1CA19AFB8();

    (*(v61 + 8))(v15, v13);
    goto LABEL_34;
  }

  sub_1CA181E90(v29, v30, v66[3], &v62);

  if (!*(&v63 + 1))
  {
    sub_1CA10BDC8(&v62, &unk_1EC433730);
    goto LABEL_29;
  }

  sub_1CA0EBE94(&v62, v65);
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v31 = sub_1CA19AFF8();
  v58 = __swift_project_value_buffer(v31, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  v32 = *(sub_1CA19AF88() - 8);
  v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v56 = *(v32 + 72);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1CA1A19C0;
  v57 = v34;
  v55 = v34 + v33;
  *(&v63 + 1) = type metadata accessor for DynamicLabel();
  *&v62 = v2;
  v35 = v2;
  v36 = AMSLogKey();
  if (v36)
  {
    v37 = v36;
    sub_1CA19C118();
  }

  v46 = v55;
  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(&v62);
  v47 = v56;
  sub_1CA19AF18();
  v54[1] = v46 + 2 * v47;
  v48 = sub_1CA19ADF8();
  *(&v63 + 1) = v48;
  v49 = __swift_allocate_boxed_opaque_existential_2Tm(&v62);
  (*(*(v48 - 8) + 16))(v49, a1, v48);
  sub_1CA19AF38();
  sub_1CA10BDC8(&v62, &qword_1EC433830);
  sub_1CA19AF18();
  v50 = v65[3];
  v51 = __swift_project_boxed_opaque_existential_2(v65, v65[3]);
  *(&v63 + 1) = v50;
  v52 = __swift_allocate_boxed_opaque_existential_2Tm(&v62);
  (*(*(v50 - 8) + 16))(v52, v51, v50);
  sub_1CA19AF38();
  sub_1CA10BDC8(&v62, &qword_1EC433830);
  sub_1CA19AFC8();

  type metadata accessor for ResultingActionDispatcher();
  sub_1CA19B7D8();
  sub_1CA19BE18();
  sub_1CA19BE18();
  (*(v60 + 16))(v6, v9, v7);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4339E0);
  v27 = 1;
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v53);
  v62 = 0u;
  v63 = 0u;
  v64 = -1;
  ResultingActionDispatcher.perform(_:withMetrics:asPartOf:previousActionOutcome:)();

  sub_1CA10BDC8(&v62, &unk_1EC433740);
  sub_1CA12E180(v6);
  (*(v60 + 8))(v9, v7);
  (*(v61 + 8))(v15, v13);
  sub_1CA1446E0(v66);
  __swift_destroy_boxed_opaque_existential_2(v65);
  return v27;
}